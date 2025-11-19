unsigned __int16 *silk_stereo_MS_to_LR(unsigned __int16 *result, _DWORD *a2, _DWORD *a3, int *a4, int a5, int a6)
{
  *a2 = *(result + 1);
  *a3 = *(result + 2);
  v6 = 2 * a6;
  *(result + 1) = *(a2 + v6);
  *(result + 2) = *(a3 + v6);
  v7 = 8 * a5;
  v8 = *a4;
  v9 = a4[1];
  if (a5 >= 1)
  {
    v10 = *result;
    v11 = result[1];
    v12 = (0x10000 / v7);
    v13 = (((v12 * (v8 - v10)) >> 15) + 1) >> 1;
    v14 = (((v12 * (v9 - v11)) >> 15) + 1) >> 1;
    v15 = (a2 + 1);
    v16 = a3 + 1;
    v17 = (v14 + v11) << 16;
    v18 = v14 << 16;
    v19 = (v13 + v10) << 16;
    v20 = v13 << 16;
    v21 = (8 * a5);
    do
    {
      v22 = *(v15 - 1);
      v23 = (v22 << 10) + ((*v15 + *(v15 - 2)) << 9);
      v24 = ((((v22 >> 5) * (v17 >> 16) + (*v16 << 8) + ((((v22 & 0x1F) << 11) * (v17 >> 16)) >> 16) + (v23 >> 16) * (v19 >> 16) + (((v23 & 0xFE00) * (v19 >> 16)) >> 16)) >> 7) + 1) >> 1;
      if (v24 <= -32768)
      {
        v24 = -32768;
      }

      if (v24 >= 0x7FFF)
      {
        LOWORD(v24) = 0x7FFF;
      }

      *v16++ = v24;
      ++v15;
      v17 += v18;
      v19 += v20;
      --v21;
    }

    while (v21);
  }

  if (v7 < a6)
  {
    v25 = 2 * v7 + 2;
    v26 = (a3 + v25);
    v27 = (a2 + v25);
    v28 = a6 - v7;
    v29 = (a2 + v25);
    do
    {
      v30 = v29[1];
      ++v29;
      v31 = v30 + *(v27 - 1);
      v32 = *v27;
      v33 = ((((v32 >> 5) * v9 + (*v26 << 8) + ((((v32 & 0x1F) << 11) * v9) >> 16) + (((v32 << 10) + (v31 << 9)) >> 16) * v8 + (((((v32 << 10) + (v31 << 9)) & 0xFE00) * v8) >> 16)) >> 7) + 1) >> 1;
      if (v33 <= -32768)
      {
        v33 = -32768;
      }

      if (v33 >= 0x7FFF)
      {
        LOWORD(v33) = 0x7FFF;
      }

      *v26++ = v33;
      v27 = v29;
      --v28;
    }

    while (v28);
  }

  *result = v8;
  result[1] = v9;
  if (a6 >= 1)
  {
    v34 = a3 + 1;
    v35 = a2 + 1;
    v36 = a6;
    do
    {
      v37 = *v35;
      v38 = *v34;
      v39 = v37 + v38;
      if (v37 + v38 >= 0x7FFF)
      {
        v39 = 0x7FFF;
      }

      if (v39 <= -32768)
      {
        LOWORD(v39) = 0x8000;
      }

      *v35++ = v39;
      v40 = v37 - v38;
      if (v40 >= 0x7FFF)
      {
        v40 = 0x7FFF;
      }

      if (v40 <= -32768)
      {
        LOWORD(v40) = 0x8000;
      }

      *v34++ = v40;
      --v36;
    }

    while (v36);
  }

  return result;
}

uint64_t silk_VAD_Init(uint64_t a1)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 92) = xmmword_26ED6CF10;
  v1 = (a1 + 92);
  v2 = 4;
  do
  {
    v3 = 100 * *v1;
    *(v1 - 8) = v3;
    *(v1 - 4) = 0x7FFFFFFF / v3;
    ++v1;
    --v2;
  }

  while (v2);
  *(a1 + 108) = 15;
  memset_pattern16((a1 + 40), &unk_26ED6CF20, 0x10uLL);
  return 0;
}

uint64_t silk_VAD_GetSA_Q8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v96 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4608);
  v5 = (v4 >> 3) + (v4 >> 2);
  v94[0] = 0;
  v94[1] = v5;
  v6 = v5 + (v4 >> 3);
  v7 = v6 + (v4 >> 2);
  v94[2] = v6;
  v94[3] = v7;
  v8 = 2 * (v7 + (v4 >> 1));
  v9 = (v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v9, v8);
  silk_ana_filt_bank_1(a2, (v3 + 32), v9, &v9[v7], v4);
  silk_ana_filt_bank_1(v9, (v3 + 40), v9, &v9[v6], v4 >> 1);
  silk_ana_filt_bank_1(v9, (v3 + 48), v9, &v9[v5], v4 >> 2);
  v10 = ((v4 >> 3) - 1);
  v11 = v9[v10] >> 1;
  v9[v10] = v9[v10] >> 1;
  if (v4 >> 3 >= 2)
  {
    v12 = &v9[v10];
    v15 = *v12;
    v13 = v12 - 1;
    v14 = v15;
    v16 = v10 + 1;
    do
    {
      v17 = v14 - (*v13 >> 1);
      v18 = *v13 >> 1;
      *v13 >>= 1;
      v13[1] = v17;
      --v16;
      --v13;
      v14 = v18;
    }

    while (v16 > 1);
  }

  v19 = 0;
  v20 = v3 + 56;
  *v9 -= *(v3 + 88);
  *(v3 + 88) = v11;
  do
  {
    v21 = 0;
    v22 = 0;
    v23 = 4 - v19;
    if ((4 - v19) >= 3)
    {
      v23 = 3;
    }

    v24 = (*(v3 + 4608) >> v23 >> 2);
    v25 = *(v20 + 4 * v19);
    while (1)
    {
      if (v24 < 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = 0;
        v27 = v94[v19] + v21;
        v28 = v24;
        do
        {
          v29 = v9[v27] >> 3;
          v26 += v29 * v29;
          ++v27;
          --v28;
        }

        while (v28);
      }

      if (v22 == 3)
      {
        break;
      }

      v30 = __OFADD__(v25, v26);
      v25 += v26;
      if (v25 < 0 != v30)
      {
        v25 = 0x7FFFFFFF;
      }

      ++v22;
      v21 += v24;
    }

    v31 = v25 + (v26 >> 1);
    if (v31 < 0)
    {
      v31 = 0x7FFFFFFF;
    }

    v95.i32[v19] = v31;
    *(v20 + 4 * v19++) = v26;
  }

  while (v19 != 4);
  v32 = *(v3 + 140);
  if (v32 > 999)
  {
    v33 = 0;
  }

  else
  {
    v33 = 0x7FFF / ((v32 >> 4) + 1);
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = *(v3 + 92);
  v38 = *(v3 + 108);
  v39 = vaddq_s32(*(v3 + 124), v95);
  v40 = vcgezq_s32(v39);
  v41 = vorrq_s8(vandq_s8(v39, v40), (*&vmvnq_s8(v40) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)));
  v42 = vcgtq_s32(v41, vshlq_n_s32(v37, 3uLL));
  v43 = vcgtq_s32(v37, v41);
  v41.i32[0] = 0x7FFFFFFFu / v41.i32[0];
  v41.i32[1] = 0x7FFFFFFFu / v41.i32[1];
  v41.i32[2] = 0x7FFFFFFFu / v41.i32[2];
  v41.i32[3] = 0x7FFFFFFFu / v41.i32[3];
  v44 = vshrq_n_s32(vshlq_n_s32(v37, 0x10uLL), 0x10uLL);
  v45.i64[0] = 0xFFFF0000FFFFLL;
  v45.i64[1] = 0xFFFF0000FFFFLL;
  v46.i64[0] = 0x100000001;
  v46.i64[1] = 0x100000001;
  v47 = vsraq_n_s32(vmlaq_s32(vmulq_s32(v41, vhaddq_s32(vshrq_n_s32(v37, 0xFuLL), v46)), vshrq_n_u32(v41, 0x10uLL), v44), vmulq_s32(vandq_s8(v41, v45), v44), 0x10uLL);
  v44.i64[0] = 0x700000007;
  v44.i64[1] = 0x700000007;
  v48.i64[0] = 0x40000000400;
  v48.i64[1] = 0x40000000400;
  v49 = vbslq_s8(v43, v48, vbslq_s8(v44, vshrq_n_s32(v47, 5uLL), vshrq_n_u32(v47, 5uLL)));
  v43.i64[0] = 0x8000000080;
  v43.i64[1] = 0x8000000080;
  v50 = vmaxq_s32(vbslq_s8(v42, v43, v49), vdupq_n_s32(v33));
  v51 = vsubq_s32(v41, v38);
  v52 = vshrq_n_s32(vshlq_n_s32(v50, 0x10uLL), 0x10uLL);
  v53 = vsraq_n_s32(vmlaq_s32(v38, vshrq_n_s32(v51, 0x10uLL), v52), vmulq_s32(vandq_s8(v51, v45), v52), 0x10uLL);
  v52.i32[0] = 0x7FFFFFFF / v53.i32[0];
  v52.i32[1] = 0x7FFFFFFF / v53.i32[1];
  v52.i32[2] = 0x7FFFFFFF / v53.i32[2];
  v52.i32[3] = 0x7FFFFFFF / v53.i32[3];
  v51.i64[0] = 0xFFFFFF00FFFFFFLL;
  v51.i64[1] = 0xFFFFFF00FFFFFFLL;
  v54 = *(v3 + 140) + 1;
  *(v3 + 92) = vminq_s32(v52, v51);
  *(v3 + 108) = v53;
  *(v3 + 140) = v54;
  do
  {
    v55 = v95.i32[v34];
    v56 = *(v3 + 92 + v34 * 4);
    v57 = v55 - v56;
    if (v55 - v56 < 1)
    {
      v94[v34 + 4] = 256;
    }

    else
    {
      if (v55 < 0x800000)
      {
        v55 <<= 8;
      }

      else
      {
        v56 >>= 8;
      }

      v58 = v55 / (v56 + 1);
      v94[v34 + 4] = v58;
      v59 = (silk_lin2log(v58) - 1024);
      v60 = v59;
      if (!(v57 >> 20))
      {
        v61 = __clz(v57);
        v62 = v57 >> (24 - v61);
        LOBYTE(v63) = v57;
        v64 = v57 << (v61 - 24);
        if (v61 != 24)
        {
          v63 = (v57 << (v61 + 8)) | v62;
          if (v57 <= 0x7F)
          {
            LOBYTE(v63) = (v57 >> (56 - v61)) | v64;
          }
        }

        v65 = v63 & 0x7F;
        if (v61)
        {
          v66 = 0x8000;
        }

        else
        {
          v66 = 46214;
        }

        v67 = v66 >> (v61 >> 1);
        v68 = ((v67 + ((213 * v67 * v65) >> 16)) >> 10) * v59;
        v69 = (v57 << (v61 + 8)) | v62;
        v70 = (v57 >> (56 - v61)) | v64;
        if (v57 <= 0x7F)
        {
          LOBYTE(v69) = v70;
        }

        if (v61 == 24)
        {
          v71 = v57;
        }

        else
        {
          v71 = v69;
        }

        v60 = ((((v67 + ((213 * v67 * (v71 & 0x7F)) >> 16)) & 0x3FF) << 6) * v59 + (v68 << 16)) >> 16;
      }

      v35 += v59 * v59;
      v36 += (tiltWeights[v34] >> 16) * v60 + ((tiltWeights[v34] * v60) >> 16);
    }

    ++v34;
  }

  while (v34 != 4);
  v72 = v35 + 3;
  if (v35 >= 0)
  {
    v72 = v35;
  }

  if (v35 >= 4)
  {
    v74 = v72 >> 2;
    v75 = __clz(v72 >> 2);
    if (v75 != 24)
    {
      if (v74 <= 0x7F)
      {
        LOBYTE(v74) = (v74 >> (56 - v75)) | (v74 << (v75 - 24));
      }

      else
      {
        LOBYTE(v74) = (v74 << (v75 + 8)) | (v74 >> (24 - v75));
      }
    }

    v76 = v74 & 0x7F;
    if (v75)
    {
      v77 = 0x8000;
    }

    else
    {
      v77 = 46214;
    }

    v73 = ((45000 * (3 * ((v77 >> (v75 >> 1)) + ((213 * (v77 >> (v75 >> 1)) * v76) >> 16)))) >> 16) - 128;
  }

  else
  {
    v73 = -128;
  }

  v78 = silk_sigm_Q15(v73);
  *(v3 + 4760) = 2 * silk_sigm_Q15(v36) - 0x8000;
  v79 = vaddvq_s32(vmulq_s32(vshrq_n_s32(vsubq_s32(v95, *(v3 + 92)), 4uLL), xmmword_26ECDAC80));
  v80 = *(v3 + 4608);
  if (v79 <= 0)
  {
    v78 >>= 1;
  }

  else if (!(v79 >> 15))
  {
    if (v80 == 10 * *(v3 + 4600))
    {
      v81 = 16;
    }

    else
    {
      v81 = 15;
    }

    v82 = v79 << v81;
    v83 = __clz(v82);
    v84 = __ROR4__(v82, 24 - v83) & 0x7F;
    if (v83)
    {
      v85 = 0x8000;
    }

    else
    {
      v85 = 46214;
    }

    v86 = (v85 >> (v83 >> 1)) + ((213 * (v85 >> (v83 >> 1)) * v84) >> 16) + 0x8000;
    v78 = HIWORD(v86) * v78 + ((v86 * v78) >> 16);
  }

  v87 = 0;
  v88 = v78 >> 7;
  if (v78 >> 7 >= 255)
  {
    v88 = 255;
  }

  *(v3 + 4556) = v88;
  if (v80 == 10 * *(v3 + 4600))
  {
    v89 = 21;
  }

  else
  {
    v89 = 20;
  }

  v90 = (v78 * v78 + ((v78 * HIWORD(v78)) << 16)) >> v89;
  do
  {
    v91 = *(v3 + 72) + ((v94[v87 + 4] - *(v3 + 72)) >> 16) * v90 + (((LOWORD(v94[v87 + 4]) - *(v3 + 72)) * v90) >> 16);
    *(v3 + 72) = v91;
    v92 = silk_lin2log(v91);
    *(v3 + 4744) = silk_sigm_Q15((3 * v92 - 5120) >> 4);
    v3 += 4;
    ++v87;
  }

  while (v87 != 4);
  return 0;
}

uint64_t silk_decode_pitch(uint64_t result, int a2, int *a3, int a4, int a5)
{
  v5 = 3;
  if (a5 == 4)
  {
    v5 = 11;
  }

  v6 = &silk_CB_lags_stage2_10_ms;
  if (a5 == 4)
  {
    v6 = &silk_CB_lags_stage2;
  }

  v7 = 12;
  if (a5 == 4)
  {
    v7 = 34;
    v8 = &silk_CB_lags_stage3;
  }

  else
  {
    v8 = &silk_CB_lags_stage3_10_ms;
  }

  if (a4 == 8)
  {
    v8 = v6;
  }

  else
  {
    v5 = v7;
  }

  if (a5 >= 1)
  {
    v9 = 2 * a4;
    v10 = 18 * a4;
    v12 = a5;
    v13 = &v8[a2];
    if (v9 <= v10)
    {
      v14 = 18 * a4;
    }

    else
    {
      v14 = 2 * a4;
    }

    if (v9 >= v10)
    {
      v9 = 18 * a4;
    }

    do
    {
      v11 = result + 2 * a4;
      v15 = v11 + *v13;
      if (v15 <= v9)
      {
        v16 = v9;
      }

      else
      {
        v16 = v11 + *v13;
      }

      if (v15 <= v14)
      {
        v17 = v16;
      }

      else
      {
        v17 = v14;
      }

      *a3++ = v17;
      v13 += v5;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t silk_decoder_set_fs(uint64_t a1, int a2, unsigned int a3)
{
  v6 = a2;
  *(a1 + 2332) = 5 * a2;
  v7 = *(a1 + 2324) * (5 * a2);
  if (*(a1 + 2316) == a2 && *(a1 + 2320) == a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = silk_resampler_init(a1 + 2448, 1000 * a2, a3, 0);
    v9 = 0;
    *(a1 + 2320) = a3;
    if (*(a1 + 2316) != a2)
    {
      goto LABEL_7;
    }
  }

  if (v7 != *(a1 + 2328))
  {
    v9 = 1;
LABEL_7:
    v10 = *(a1 + 2324);
    v11 = v10 == 4;
    if (v10 == 4)
    {
      v12 = &silk_pitch_contour_NB_iCDF;
    }

    else
    {
      v12 = &silk_pitch_contour_10_ms_NB_iCDF;
    }

    v13 = &silk_pitch_contour_10_ms_iCDF;
    if (v11)
    {
      v13 = &silk_pitch_contour_iCDF;
    }

    if (a2 != 8)
    {
      v12 = v13;
    }

    *(a1 + 2392) = v12;
    if (v9)
    {
      goto LABEL_26;
    }

    *(a1 + 2336) = 20 * v6;
    if ((a2 | 4) == 0xC)
    {
      v14 = &silk_NLSF_CB_NB_MB;
      v15 = 10;
    }

    else
    {
      v14 = &silk_NLSF_CB_WB;
      v15 = 16;
    }

    *(a1 + 2340) = v15;
    *(a1 + 2752) = v14;
    switch(a2)
    {
      case 16:
        v16 = silk_uniform8_iCDF;
        break;
      case 12:
        v16 = &silk_uniform6_iCDF;
        break;
      case 8:
        v16 = silk_uniform4_iCDF;
        break;
      default:
LABEL_25:
        *(a1 + 2376) = 1;
        *(a1 + 2308) = 100;
        *(a1 + 2312) = 10;
        *(a1 + 4188) = 0;
        bzero((a1 + 1348), 0x3C0uLL);
        *(a1 + 1316) = 0u;
        *(a1 + 1332) = 0u;
        *(a1 + 1284) = 0u;
        *(a1 + 1300) = 0u;
LABEL_26:
        *(a1 + 2316) = a2;
        *(a1 + 2328) = v7;
        return v8;
    }

    *(a1 + 2384) = v16;
    goto LABEL_25;
  }

  return v8;
}

uint64_t *silk_encode_pulses(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v66 = a3;
  v68 = a2;
  v72 = *MEMORY[0x277D85DE8];
  memset(v71, 0, sizeof(v71));
  v8 = a5 >> 4;
  if ((a5 & 0xF) != 0)
  {
    ++v8;
    v9 = (a4 + a5);
    *v9 = 0;
    v9[1] = 0;
  }

  v10 = 16 * v8;
  v11 = &v64 - 4 * v10;
  bzero(v11, 4 * v10);
  if (v8 >= 1)
  {
    v13 = 0;
    v14 = (&v64 - 4 * v10);
    do
    {
      v12.i32[0] = *(a4 + v13);
      v12 = vmovl_u16(vabs_s16(*&vmovl_s8(*v12.i8)));
      *v14++ = v12;
      v13 += 4;
    }

    while (v13 < v10);
  }

  v65 = a5;
  v15 = (4 * v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  bzero(&v64 - v15, 4 * v8);
  v16 = &v64 - v15;
  bzero(&v64 - v15, 4 * v8);
  if (v8 >= 1)
  {
    v17 = 0;
    v18 = v11 + 4;
    v19 = v11;
    do
    {
      v20 = 0;
      *&v16[4 * v17] = 0;
      while (1)
      {
        v21 = 0;
        v22 = v18;
        while (1)
        {
          v23 = *v22 + *(v22 - 1);
          if (v23 > silk_max_pulses_table)
          {
            break;
          }

          v22 += 8;
          *(v71 + v21) = v23;
          v21 += 4;
          if (v21 == 32)
          {
            v24 = 0;
            goto LABEL_14;
          }
        }

        v24 = 1;
LABEL_14:
        v25 = 0;
        v26 = v71;
        while (1)
        {
          v27 = *(v71 + v25 + 4) + *(v71 + v25);
          if (v27 > 10)
          {
            break;
          }

          *v26++ = v27;
          v25 += 8;
          if (v25 == 32)
          {
            v28 = 0;
            goto LABEL_19;
          }
        }

        v28 = 1;
LABEL_19:
        v29 = 0;
        v30 = v28 + v24;
        v31 = v71;
        while (1)
        {
          v32 = *(v71 + v29 + 4) + *(v71 + v29);
          if (v32 > 12)
          {
            break;
          }

          *v31++ = v32;
          v29 += 8;
          if (v29 == 16)
          {
            v33 = 0;
            goto LABEL_24;
          }
        }

        v33 = 1;
LABEL_24:
        if (DWORD1(v71[0]) + LODWORD(v71[0]) <= 16)
        {
          v34 = 0;
          *(&v64 + 4 * v17 - v15) = DWORD1(v71[0]) + LODWORD(v71[0]);
        }

        else
        {
          v34 = 1;
        }

        if (!(v34 | (v30 + v33)))
        {
          break;
        }

        v35 = 0;
        *&v16[4 * v17] = ++v20;
        do
        {
          *&v19[v35] = vshrq_n_s32(*&v19[v35], 1uLL);
          v35 += 16;
        }

        while (v35 != 64);
      }

      v19 += 64;
      ++v17;
      v18 += 64;
    }

    while (v17 != v8);
  }

  v69 = a4;
  v36 = 0;
  v37 = 0;
  v38 = v8;
  v39 = 0x7FFFFFFF;
  v40 = 9 * (v68 >> 1);
  do
  {
    v41 = silk_rate_levels_BITS_Q5[v40 + v36];
    if (v8 >= 1)
    {
      v42 = &silk_pulses_per_block_BITS_Q5 + 18 * v36;
      v43 = v8;
      v44 = (&v64 - v15);
      v45 = (&v64 - v15);
      do
      {
        v46 = *v44++;
        v47 = v42 + 17;
        if (v46 <= 0)
        {
          v47 = &v42[*v45];
        }

        v41 += *v47;
        ++v45;
        --v43;
      }

      while (v43);
    }

    if (v41 < v39)
    {
      v37 = v36;
      v39 = v41;
    }

    ++v36;
  }

  while (v36 != 9);
  v67 = (&v64 - v15);
  ec_enc_icdf(a1, v37, &silk_rate_levels_iCDF[v40], 8);
  if (v8 >= 1)
  {
    v48 = 0;
    v49 = &silk_pulses_per_block_iCDF + 18 * v37;
    v50 = v67;
    do
    {
      v51 = *&v16[4 * v48];
      v52 = v49;
      if (v51)
      {
        ec_enc_icdf(a1, 17, v49, 8);
        if (v51 < 2)
        {
          v52 = &unk_26ED6BC48;
        }

        else
        {
          v53 = v51 - 1;
          do
          {
            v52 = &unk_26ED6BC48;
            ec_enc_icdf(a1, 17, &unk_26ED6BC48, 8);
            --v53;
          }

          while (v53);
        }
      }

      ec_enc_icdf(a1, v50[v48++], v52, 8);
    }

    while (v48 != v38);
    v54 = v38;
    do
    {
      v55 = *v50++;
      if (v55 >= 1)
      {
        silk_shell_encoder(a1, v11);
      }

      v11 += 64;
      --v54;
    }

    while (v54);
    v56 = 0;
    v70 = v38;
    do
    {
      v57 = *&v16[4 * v56];
      if (v57 >= 1)
      {
        v58 = 0;
        v59 = v69 + 16 * v56;
        do
        {
          v60 = *(v59 + v58);
          if (v60 < 0)
          {
            v60 = -v60;
          }

          v61 = v60;
          if (v57 != 1)
          {
            v62 = v57 + 1;
            do
            {
              ec_enc_icdf(a1, (v61 >> (v62-- - 2)) & 1, silk_lsb_iCDF, 8);
            }

            while (v62 > 2);
          }

          ec_enc_icdf(a1, v61 & 1, silk_lsb_iCDF, 8);
          ++v58;
        }

        while (v58 != 16);
      }

      ++v56;
    }

    while (v56 != v70);
  }

  return silk_encode_signs(a1, v69, v65, v68, v66, v67);
}

uint64_t silk_inner_prod_aligned_scale(__int16 *a1, __int16 *a2, char a3, int a4)
{
  if (a4 < 1)
  {
    return 0;
  }

  LODWORD(v4) = 0;
  v5 = a4;
  do
  {
    v7 = *a1++;
    v6 = v7;
    v8 = *a2++;
    v4 = (((v8 * v6) >> a3) + v4);
    --v5;
  }

  while (v5);
  return v4;
}

uint64_t silk_init_decoder(_DWORD *a1)
{
  bzero(a1, 0x10C0uLL);
  a1[594] = 1;
  *a1 = 0x10000;
  silk_CNG_Reset(a1);
  silk_PLC_Reset(a1);
  return 0;
}

unsigned int *silk_sum_sqr_shift(unsigned int *result, int *a2, uint64_t a3, int a4)
{
  v4 = a4 - 1;
  if (a4 < 2)
  {
    v5 = 0;
    v8 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = (a3 + 2);
    while (1)
    {
      v6 += *(v7 - 1) * *(v7 - 1) + *v7 * *v7;
      if ((v6 & 0x80000000) != 0)
      {
        break;
      }

      v7 += 2;
      v5 += 2;
      if (v4 <= v5)
      {
        v8 = 0;
        goto LABEL_8;
      }
    }

    v6 >>= 2;
    v8 = 2;
  }

LABEL_8:
  if (v5 < v4)
  {
    v9 = (a3 + 2 * v5 + 2);
    do
    {
      v6 += (*(v9 - 1) * *(v9 - 1) + *v9 * *v9) >> v8;
      if ((v6 & 0x80000000) != 0)
      {
        v8 += 2;
        v6 >>= 2;
      }

      v9 += 2;
      v5 += 2;
    }

    while (v4 > v5);
  }

  if (v5 == v4)
  {
    v10 = *(a3 + 2 * v4);
    v6 += (v10 * v10) >> v8;
  }

  v11 = v6 >> 2;
  v12 = v8 + 2;
  if (!(v6 >> 30))
  {
    v12 = v8;
    v11 = v6;
  }

  *a2 = v12;
  *result = v11;
  return result;
}

uint64_t silk_pitch_analysis_core(__int16 *a1, void *a2, _WORD *a3, _BYTE *a4, __int16 *a5, int a6, int a7, int a8, int a9, int a10, unsigned int a11)
{
  v247 = a8;
  v238 = a7;
  v248 = a6;
  v249 = a5;
  v241 = a4;
  v240 = a3;
  v243 = a2;
  v12 = a9;
  v262 = *MEMORY[0x277D85DE8];
  v258[0] = 0;
  v257 = 0;
  v252 = a11;
  v13 = 5 * a11;
  v14 = 4 * (5 * a11 + 20);
  v15 = 8 * (5 * a11 + 20);
  v16 = (5 * a11 + 20) * a9;
  v17 = &v233[-2 * v15];
  bzero(v17, 2 * v15);
  v239 = a1;
  v237 = v16;
  if (a9 == 16)
  {
    v260.n128_u64[0] = 0;
    silk_resampler_down2(&v260, &v233[-2 * v15], a1, v16);
  }

  else if (a9 == 12)
  {
    v260 = 0uLL;
    v261 = 0;
    silk_resampler_down2_3(&v260, &v233[-2 * v15], a1, v16);
  }

  else
  {
    memcpy(&v233[-2 * v15], a1, 2 * v15);
  }

  v260.n128_u64[0] = 0;
  v18 = 2 * v14;
  v19 = &v233[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v19, v18);
  silk_resampler_down2(&v260, v19, &v233[-2 * v15], 8 * (v13 + 20));
  if (v252 >= -3)
  {
    v20 = 4 * v13 + 81;
    v21 = &v19[v14 - 2];
    v22 = &v19[4 * v13 + 76 + 3];
    do
    {
      v23 = *v21--;
      v24 = *v22 + v23;
      if (v24 >= 0x7FFF)
      {
        v24 = 0x7FFF;
      }

      if (v24 <= -32768)
      {
        LOWORD(v24) = 0x8000;
      }

      *v22-- = v24;
      --v20;
    }

    while (v20 > 2);
  }

  v250 = (8 * (v13 + 20));
  silk_sum_sqr_shift(v258, &v257, v19, 4 * (v13 + 20));
  v25 = v252;
  if (v257 >= 1)
  {
    v26 = v257 >> 1;
    v257 >>= 1;
    if (v252 >= -3)
    {
      if (v14 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v14;
      }

      v28 = v19;
      do
      {
        *v28++ >>= v26;
        --v27;
      }

      while (v27);
    }
  }

  v29 = a10;
  v30 = -75497472;
  v31 = 264 * v25;
  v32 = &v233[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = v25;
  bzero(v32, v31);
  *&v233[-16] = 0;
  *&v233[-48] = 0u;
  *&v233[-32] = 0u;
  *&v233[-80] = 0u;
  *&v233[-64] = 0u;
  *&v233[-112] = 0u;
  *&v233[-96] = 0u;
  *&v233[-144] = 0u;
  *&v233[-128] = 0u;
  *&v233[-176] = 0u;
  *&v233[-160] = 0u;
  *&v233[-208] = 0u;
  *&v233[-192] = 0u;
  *&v233[-240] = 0u;
  *&v233[-224] = 0u;
  *&v233[-256] = 0u;
  *&v233[-272] = 0u;
  bzero(v32, 130 * (v33 >> 1));
  v251 = (v33 >> 1);
  v244 = v12;
  v242 = a10;
  if (v33 >> 1 < 1)
  {
    goto LABEL_60;
  }

  v245 = v31;
  v246 = v17;
  v34 = 0;
  v35 = v19 + 80;
  v36 = (v19 + 71);
  v37 = 0x100000000;
  do
  {
    v253 = v37;
    v254 = v36;
    v256 = v34;
    v38 = v35 - 8;
    celt_pitch_xcorr_c(v35, (v35 - 72), &v233[-272], 40, 65);
    v39 = *&v233[-16];
    v255 = v35;
    v40 = silk_inner_prod_aligned(v35, v35, 40);
    v41 = silk_inner_prod_aligned(v38, v38, 40);
    v42 = v253;
    v43 = v254;
    v44 = v256;
    v45 = v40 + v41 + 160000;
    if (v39 >= 0)
    {
      v46 = v39;
    }

    else
    {
      v46 = -v39;
    }

    v47 = __clz(v46);
    v48 = -160000 - (v40 + v41);
    if (v45 >= 0)
    {
      v48 = v40 + v41 + 160000;
    }

    v49 = __clz(v48);
    v50 = v45 << (v49 - 1);
    v51 = 0x1FFFFFFF / (v50 >> 16);
    v52 = v51 * (v39 << (v47 - 1) >> 16) + ((v51 * (v39 << (v47 - 1))) >> 16);
    v53 = (v39 << (v47 - 1)) - (((v52 * v50) >> 29) & 0xFFFFFFF8);
    v54 = v52 + (v53 >> 16) * v51 + ((v53 * v51) >> 16);
    v55 = v47 - v49;
    if ((v55 + 29) >= 0x2E)
    {
      v56 = 0;
    }

    else
    {
      v56 = v54 >> (v55 + 15);
    }

    v57 = 0x80000000 >> (-15 - v55);
    if (v54 > v57)
    {
      v57 = v54;
    }

    if (v54 <= (0x7FFFFFFFu >> (-15 - v55)))
    {
      v58 = v57;
    }

    else
    {
      v58 = 0x7FFFFFFFu >> (-15 - v55);
    }

    v59 = v58 << (-15 - v55);
    if (v55 <= -16)
    {
      v60 = v59;
    }

    else
    {
      v60 = v56;
    }

    v32[65 * v256] = v60;
    v61 = v43;
    v62 = 252;
    v63 = v42;
    do
    {
      v64 = *&v233[v62 - 272];
      v45 += (*(v61 + 40) + *v61) * (*v61 - *(v61 + 40));
      if (v64 >= 0)
      {
        v65 = *&v233[v62 - 272];
      }

      else
      {
        v65 = -v64;
      }

      v66 = __clz(v65);
      if (v45 >= 0)
      {
        v67 = v45;
      }

      else
      {
        v67 = -v45;
      }

      v68 = __clz(v67);
      v69 = v64 << (v66 - 1);
      v70 = v45 << (v68 - 1);
      v71 = 0x1FFFFFFF / (v70 >> 16);
      v72 = v71 * (v69 >> 16) + ((v71 * v69) >> 16);
      v73 = v69 - (((v70 * v72) >> 29) & 0xFFFFFFF8);
      v74 = v72 + (v73 >> 16) * v71 + ((v73 * v71) >> 16);
      v75 = v66 - v68;
      v76 = v74 >> (v75 + 15);
      if ((v75 + 29) >= 0x2E)
      {
        LOWORD(v76) = 0;
      }

      v77 = 0x80000000 >> (-15 - v75);
      v62 -= 4;
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
      v61 -= 2;
      if (v75 > -16)
      {
        LOWORD(v79) = v76;
      }

      *(v32 + (v63 >> 31)) = v79;
      v63 += 0x100000000;
    }

    while (v62 != -4);
    v35 = (v255 + 80);
    v34 = v44 + 1;
    v37 = v42 + 0x4100000000;
    v36 = v43 + 80;
  }

  while (v34 != v251);
  v12 = v244;
  v29 = v242;
  v17 = v246;
  v31 = v245;
  v30 = -75497472;
  if (v252 == 4)
  {
    v80 = v32 + 129;
    for (i = 73; i > 8; --i)
    {
      v82 = *v80 + *(v80 - 65);
      *(v80 - 65) = v82 + HIWORD(v82) * HIWORD(v30) + (((*v80 + *(v80 - 65)) * (v30 >> 16)) >> 16);
      v30 += 0x100000;
      --v80;
    }

    v83 = 1;
  }

  else
  {
LABEL_60:
    v84 = v32 + 64;
    for (j = 73; j > 8; --j)
    {
      *v84 = (*v84 >> 15) * HIWORD(v30) + 2 * *v84 + ((2 * (*v84 & 0x7FFFu) * (v30 >> 16)) >> 16);
      --v84;
      v30 += 0x100000;
    }

    v83 = 0;
  }

  v86 = (2 * v29 + 4);
  silk_insertion_sort_decreasing_int16(v32, v259, 65, 2 * v29 + 4);
  v87 = *v32;
  if (v87 <= 3276)
  {
    v88 = 4 * v252;
LABEL_171:
    bzero(v243, v88);
    v171 = 0;
    *v249 = 0;
    *v240 = 0;
    result = 1;
    v173 = v241;
    goto LABEL_172;
  }

  v235 = 5 * v12;
  if (2 * v29 <= -4)
  {
    v91 = &v233[-272];
    *&v233[-20] = 0u;
    v92 = &v233[-298];
    *&v233[-48] = 0u;
    *&v233[-32] = 0u;
    *&v233[-80] = 0u;
    *&v233[-64] = 0u;
    *&v233[-112] = 0u;
    *&v233[-96] = 0u;
    *&v233[-144] = 0u;
    *&v233[-128] = 0u;
    *&v233[-176] = 0u;
    *&v233[-160] = 0u;
    *&v233[-208] = 0u;
    *&v233[-192] = 0u;
    *&v233[-240] = 0u;
    *&v233[-224] = 0u;
    *&v233[-256] = 0u;
    *&v233[-272] = 0u;
  }

  else
  {
    v89 = 0;
    v90 = (v238 >> 16) * v87 + ((v238 * v87) >> 16);
    while (v90 < v32[v89])
    {
      v259[v89] = 2 * v259[v89] + 16;
      if (v86 == ++v89)
      {
        goto LABEL_72;
      }
    }

    LODWORD(v86) = v89;
LABEL_72:
    v91 = &v233[-272];
    *&v233[-20] = 0u;
    v92 = &v233[-298];
    *&v233[-48] = 0u;
    *&v233[-32] = 0u;
    *&v233[-80] = 0u;
    *&v233[-64] = 0u;
    *&v233[-112] = 0u;
    *&v233[-96] = 0u;
    *&v233[-144] = 0u;
    *&v233[-128] = 0u;
    *&v233[-176] = 0u;
    *&v233[-160] = 0u;
    *&v233[-208] = 0u;
    *&v233[-192] = 0u;
    *&v233[-240] = 0u;
    *&v233[-224] = 0u;
    *&v233[-256] = 0u;
    *&v233[-272] = 0u;
    if (v86 >= 1)
    {
      v93 = v86;
      v94 = v259;
      do
      {
        v95 = *v94++;
        *&v92[2 * v95] = 1;
        --v93;
      }

      while (v93);
    }
  }

  v238 = 2 * v12;
  v234 = 18 * v12 - 1;
  v96 = v91 + 266;
  v97 = 147;
  v98 = v91 + 266;
  do
  {
    v99 = *--v98;
    *v96 += *(v96 - 2) + v99;
    --v97;
    v96 = v98;
  }

  while (v97 > 0x10);
  v100 = 0;
  v101 = 0;
  do
  {
    if (*&v91[2 * v100 + 8] >= 1)
    {
      v259[v101++] = v100 + 16;
    }

    ++v100;
  }

  while (v100 != 128);
  v102 = (v91 + 260);
  for (k = 147; k > 0x10; --k)
  {
    v102->i16[3] = vaddv_s16(*v102);
    v102 = (v102 - 2);
  }

  v104 = 0;
  for (m = 16; m != 147; ++m)
  {
    if (*&v92[2 * m] >= 1)
    {
      *&v91[2 * v104++] = m - 2;
    }
  }

  silk_sum_sqr_shift(v258, &v257, v17, v250);
  LODWORD(v253) = 18 * v12;
  v236 = v83;
  if (v257 >= 1)
  {
    v106 = v257 >> 1;
    v257 >>= 1;
    if (v252 <= -4)
    {
      bzero(v32, v31);
      v136 = 0;
      v109 = v252;
      goto LABEL_119;
    }

    if (v250 <= 1)
    {
      v107 = 1;
    }

    else
    {
      v107 = v250;
    }

    v108 = v17;
    do
    {
      *v108++ >>= v106;
      --v107;
    }

    while (v107);
  }

  bzero(v32, v31);
  v109 = v252;
  if (v252 < 1)
  {
    v136 = 0;
  }

  else
  {
    LODWORD(v250) = v101;
    v255 = v91;
    v110 = 0;
    v111 = v17 + 160;
    LODWORD(v254) = -14;
    v251 = v104;
    LODWORD(v256) = v104;
    do
    {
      v112 = silk_inner_prod_aligned(v111, v111, 40);
      if (v104 >= 1)
      {
        v113 = v112 + 1;
        v114 = v254 + 132 * v110;
        v115 = v251;
        v116 = v255;
        do
        {
          v118 = *v116++;
          v117 = v118;
          v119 = &v111[-v118];
          v120 = silk_inner_prod_aligned(v111, v119, 40);
          if (v120 < 1)
          {
            LOWORD(v135) = 0;
          }

          else
          {
            v121 = v120;
            v122 = v113 + silk_inner_prod_aligned(v119, v119, 40);
            v123 = __clz(v121);
            if (v122 >= 0)
            {
              v124 = v122;
            }

            else
            {
              v124 = -v122;
            }

            v125 = __clz(v124);
            v126 = v122 << (v125 - 1);
            v127 = 0x1FFFFFFF / (v126 >> 16);
            v128 = v127 * ((v121 << (v123 - 1)) >> 16) + ((v127 * (v121 << (v123 - 1))) >> 16);
            v129 = (v121 << (v123 - 1)) - (((v128 * v126) >> 29) & 0xFFFFFFF8);
            v130 = v128 + (v129 >> 16) * v127 + ((v129 * v127) >> 16);
            v131 = v123 - v125;
            if ((v131 + 29) >= 0x2E)
            {
              v132 = 0;
            }

            else
            {
              v132 = v130 >> (v131 + 15);
            }

            v133 = 0x80000000 >> (-15 - v131);
            if (v130 > v133)
            {
              v133 = v130;
            }

            if (v130 <= (0x7FFFFFFFu >> (-15 - v131)))
            {
              v134 = v133;
            }

            else
            {
              v134 = 0x7FFFFFFFu >> (-15 - v131);
            }

            v135 = v134 << (-15 - v131);
            if (v131 > -16)
            {
              LOWORD(v135) = v132;
            }
          }

          v32[v114 + v117] = v135;
          --v115;
        }

        while (v115);
      }

      v111 += 40;
      ++v110;
      v109 = v252;
      v104 = v256;
    }

    while (v110 != v252);
    v136 = 1;
    v12 = v244;
    v83 = v236;
    v101 = v250;
  }

LABEL_119:
  if (v248 < 1)
  {
    LODWORD(v254) = 0;
    v248 = 0;
  }

  else
  {
    if (v12 == 12)
    {
      v137 = 2 * v248 / 3;
    }

    else
    {
      v137 = v248 >> (v12 == 16);
    }

    v138 = silk_lin2log(v137);
    v109 = v252;
    v248 = v138;
    LODWORD(v254) = v137 > 0;
  }

  v139 = &silk_CB_lags_stage2_10_ms;
  if (v83)
  {
    v139 = silk_CB_lags_stage2;
  }

  v255 = v139;
  if (v101 < 1)
  {
    goto LABEL_170;
  }

  v140 = 0;
  LODWORD(v245) = 0;
  v141 = v12 != 8 || v242 <= 0;
  v142 = !v141;
  v143 = (1638 * v109);
  LODWORD(v251) = v109 * v247;
  v144 = v83 ? 11 : 3;
  v250 = v101;
  v145 = (v83 & v142) != 0 ? 11 : 3;
  v247 = -1;
  LODWORD(v256) = 0x80000000;
  LODWORD(v246) = 0x80000000;
  do
  {
    v146 = 0;
    v147 = v259[v140];
    v148 = v255;
    do
    {
      v258[v146 + 1] = 0;
      if (v136)
      {
        v149 = 0;
        v150 = v109;
        v151 = v148;
        v152 = v147 - 14;
        do
        {
          v149 += v32[v152 + *v151];
          v152 += 132;
          v151 += v144;
          --v150;
        }

        while (v150);
        v258[v146 + 1] = v149;
      }

      ++v146;
      ++v148;
    }

    while (v146 != v145);
    v153 = 0;
    v154 = 0;
    v155 = 0x80000000;
    do
    {
      if (v258[v153 + 1] > v155)
      {
        v154 = v153;
        v155 = v258[v153 + 1];
      }

      ++v153;
    }

    while (v145 != v153);
    v156 = silk_lin2log(v147);
    v157 = v155 - ((v156 * v143) >> 7);
    if (v254)
    {
      v158 = ((v156 - v248) * (v156 - v248)) >> 7;
      v157 -= (((*v249 * v143) >> 15) * v158) / (v158 + 64);
    }

    v159 = v157 <= v256 || v155 <= v251;
    v109 = v252;
    if (!v159 && silk_CB_lags_stage2[v154] <= 16)
    {
      LODWORD(v245) = v154;
      v247 = v147;
      LODWORD(v246) = v155;
      LODWORD(v256) = v157;
    }

    ++v140;
  }

  while (v140 != v250);
  v160 = v247;
  v161 = v244;
  if (v247 == -1)
  {
LABEL_170:
    v88 = 4 * v109;
    goto LABEL_171;
  }

  *v249 = 4 * (v246 / v252);
  if (v161 <= 8)
  {
    v174 = v243;
    v171 = v245;
    if (v136)
    {
      v175 = (v255 + v245);
      do
      {
        v176 = v160 + *v175;
        if (v176 <= 16)
        {
          v176 = 16;
        }

        if (v176 >= 144)
        {
          v176 = 144;
        }

        *v174++ = v176;
        v175 += v144;
        --v109;
      }

      while (v109);
    }

    v177 = v160 - 16;
  }

  else
  {
    v162 = v239;
    v163 = v237;
    silk_sum_sqr_shift(v258, &v257, v239, v237);
    v164 = v257;
    if (v257 <= 0)
    {
      v165 = 0;
    }

    else
    {
      v165 = v163;
    }

    v166 = 2 * v165;
    v167 = &v233[-((v166 + 15) & 0xFFFFFFFFFFFFFFF0)];
    bzero(v167, v166);
    if (v164 < 1)
    {
      v168 = v243;
      v169 = v252;
    }

    else
    {
      v257 = v164 >> 1;
      v168 = v243;
      v169 = v252;
      if (v163 >= 1)
      {
        v170 = 0;
        do
        {
          *&v167[v170] = *(v162 + v170) >> (v164 >> 1);
          v170 += 2;
        }

        while (2 * v163 != v170);
      }

      v162 = v167;
    }

    v178 = 3 * v160;
    if (v244 == 16)
    {
      v178 = 2 * v160;
    }

    if (v244 == 12)
    {
      v178 = (v160 >> 1) + v160;
    }

    if (v178 <= v238)
    {
      v179 = v238;
    }

    else
    {
      v179 = v178;
    }

    if (v178 >= v253)
    {
      v180 = v234;
    }

    else
    {
      v180 = v179;
    }

    if (v180 - 2 <= v238)
    {
      v181 = v238;
    }

    else
    {
      v181 = v180 - 2;
    }

    if (v180 + 2 >= v234)
    {
      v182 = v234;
    }

    else
    {
      v182 = v180 + 2;
    }

    if (v136)
    {
      v183 = &silk_CB_lags_stage2[v245];
      v184 = v169;
      v185 = v168;
      do
      {
        v186 = *v183;
        v183 += 11;
        *v185++ = v180 + 2 * v186;
        --v184;
      }

      while (v184);
    }

    v239 = v162;
    if (v236)
    {
      v187 = v242;
      v188 = silk_nb_cbk_searchs_stage3[v242];
      v254 = silk_CB_lags_stage3;
      v255 = 34;
    }

    else
    {
      v254 = &silk_CB_lags_stage3_10_ms;
      v188 = 12;
      v255 = 12;
      v187 = v242;
    }

    v251 = v188;
    v189 = 20 * v188 * v169;
    v190 = &v233[-((v189 + 15) & 0xFFFFFFFFFFFFFFF0)];
    bzero(v190, v189);
    v191 = v190;
    bzero(v190, v189);
    v192 = v239;
    v193 = v235;
    silk_P_Ana_calc_corr_st3(v190, v239, v181, v235, v169, v187);
    silk_P_Ana_calc_energy_st3(v190, v192, v181, v193, v169, v187);
    v194 = silk_inner_prod_aligned((v192 + 2 * (4 * v193)), (v192 + 2 * (4 * v193)), v193 * v169);
    if (v181 <= v182)
    {
      v198 = 0;
      v199 = v182;
      v195 = 0;
      v200 = (1638 / v180) << 16;
      v201 = v251;
      v256 = (v199 - v181 + 1);
      v202 = 0x80000000;
      v196 = v252;
      v197 = v253;
      do
      {
        v203 = v201;
        if (v201 >= 1)
        {
          v204 = 0;
          v205 = v191;
          v206 = v190;
          do
          {
            if (!v136)
            {
              goto LABEL_227;
            }

            v207 = 0;
            v208 = 0;
            v209 = v196;
            v210 = v194 + 1;
            do
            {
              v208 += *&v205[v207];
              v210 += *&v206[v207];
              v207 += 20 * v251;
              --v209;
            }

            while (v209);
            if (v208 >= 1)
            {
              v211 = __clz(v208);
              v212 = v208 << (v211 - 1);
              if (v210 >= 0)
              {
                v213 = v210;
              }

              else
              {
                v213 = -v210;
              }

              v214 = __clz(v213);
              v215 = v210 << (v214 - 1);
              v216 = 0x1FFFFFFF / (v215 >> 16);
              v217 = v216 * (v212 >> 16) + ((v216 * v212) >> 16);
              v196 = v252;
              v218 = v212 - (((v217 * v215) >> 29) & 0xFFFFFFF8);
              v219 = v217 + (v218 >> 16) * v216 + ((v218 * v216) >> 16);
              v220 = v211 - v214;
              if (v211 - v214 + 29 >= 0x2E)
              {
                v221 = 0;
              }

              else
              {
                v221 = v219 >> (v220 + 15);
              }

              v222 = 0x80000000 >> (-15 - v220);
              if (v219 > v222)
              {
                v222 = v219;
              }

              if (v219 <= (0x7FFFFFFFu >> (-15 - v220)))
              {
                v223 = v222;
              }

              else
              {
                v223 = 0x7FFFFFFFu >> (-15 - v220);
              }

              v197 = v253;
              v224 = v223 << (-15 - v220);
              if (v220 > -16)
              {
                v224 = v221;
              }

              v225 = (v224 >> 16) * ((2147418112 - v200 * v204) >> 16) + ((v224 * ((2147418112 - v200 * v204) >> 16)) >> 16);
            }

            else
            {
LABEL_227:
              v225 = 0;
            }

            if (v225 > v202 && v181 + silk_CB_lags_stage3[v204] < v197)
            {
              v195 = v204;
              v180 = v181;
              v202 = v225;
            }

            ++v204;
            v206 += 20;
            v205 += 20;
          }

          while (v204 != v251);
        }

        ++v198;
        ++v181;
        v190 += 4;
        v191 += 4;
        v201 = v203;
      }

      while (v198 != v256);
    }

    else
    {
      v195 = 0;
      v196 = v252;
      v197 = v253;
    }

    v226 = v243;
    v227 = v238;
    v171 = v195;
    v228 = v255;
    if (v136)
    {
      v229 = &v254[v195];
      do
      {
        v230 = v180 + *v229;
        if (v230 <= v227)
        {
          v231 = v227;
        }

        else
        {
          v231 = v180 + *v229;
        }

        if (v230 <= v197)
        {
          v232 = v231;
        }

        else
        {
          v232 = v197;
        }

        *v226++ = v232;
        v229 += v228;
        --v196;
      }

      while (v196);
    }

    v177 = v180 - v227;
  }

  v173 = v241;
  result = 0;
  *v240 = v177;
LABEL_172:
  *v173 = v171;
  return result;
}

uint64_t silk_P_Ana_calc_corr_st3(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, int a6)
{
  v35 = a4;
  v30 = result;
  v36 = *MEMORY[0x277D85DE8];
  if (a5 == 4)
  {
    v34 = &silk_Lag_range_stage3 + 8 * a6;
    v6 = silk_nb_cbk_searchs_stage3[a6];
    v7 = &silk_CB_lags_stage3;
    v8 = 34;
  }

  else
  {
    v7 = &silk_CB_lags_stage3_10_ms;
    v34 = &silk_Lag_range_stage3_10_ms;
    v6 = 12;
    v8 = 12;
  }

  v33 = v8;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  if (a5 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = (a2 + 8 * v35);
    v31 = v35;
    v32 = -a3;
    v12 = a5;
    v29 = v6;
    do
    {
      v13 = &v34[2 * v9];
      v14 = *v13;
      v15 = v13[1];
      result = celt_pitch_xcorr_c(v11, &v11[v32 - v13[1]], v25, v35, v15 - v14 + 1);
      if (v15 >= v14)
      {
        v16 = (v15 - v14 + 1);
        v17 = &v25[4 * v15 + -4 * v14];
        v18 = v27;
        do
        {
          v19 = *v17--;
          *v18++ = v19;
          --v16;
        }

        while (v16);
      }

      if (v6 >= 1)
      {
        v20 = v29;
        v21 = v30 + 20 * v10;
        v22 = v7;
        do
        {
          v23 = *v22++;
          v24 = &v27[v23 - v14];
          *v21 = *v24;
          *(v21 + 16) = v24[4];
          v21 += 20;
          --v20;
        }

        while (v20);
      }

      v11 += v31;
      ++v9;
      v10 += v6;
      v7 += v33;
    }

    while (v9 != v12);
  }

  return result;
}

uint64_t silk_P_Ana_calc_energy_st3(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, int a6)
{
  v45 = a4;
  v44 = a3;
  v39 = result;
  v46 = *MEMORY[0x277D85DE8];
  if (a5 == 4)
  {
    v43 = &silk_Lag_range_stage3 + 8 * a6;
    v6 = silk_nb_cbk_searchs_stage3[a6];
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v42 = 34;
    v7 = &silk_CB_lags_stage3;
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    if (a5 < 1)
    {
      return result;
    }

    v42 = 12;
    v43 = &silk_Lag_range_stage3_10_ms;
    v7 = &silk_CB_lags_stage3_10_ms;
    v6 = 12;
  }

  v8 = 0;
  v9 = 0;
  v10 = a2 + 8 * v45;
  v41 = 2 * v45;
  v37 = &v31 + 4;
  v38 = v41 - 2;
  v40 = a5;
  v11 = v6;
  do
  {
    v12 = &v43[2 * v9];
    v13 = *v12;
    v14 = v13 + v44;
    result = silk_inner_prod_aligned((v10 - 2 * v14), (v10 - 2 * v14), v45);
    LODWORD(v31) = result;
    v15 = v12[1];
    v16 = __OFSUB__(v15, v13);
    v17 = v15 - v13;
    if (!((v17 < 0) ^ v16 | (v17 == 0)))
    {
      v18 = (v17 + 1);
      v19 = (2 * v14) ^ 0xFFFFFFFFFFFFFFFELL;
      v20 = v38 - 2 * v14;
      v21 = v18 - 1;
      v22 = v37;
      do
      {
        v23 = result - *(v10 + v20) * *(v10 + v20);
        v24 = v23 + *(v10 + v19) * *(v10 + v19);
        if (v24 >= 0x7FFFFFFF)
        {
          v25 = 0x7FFFFFFF;
        }

        else
        {
          v25 = v23 + *(v10 + v19) * *(v10 + v19);
        }

        if (v23 >= 0)
        {
          result = v25;
        }

        else
        {
          result = v24;
        }

        *v22++ = result;
        v19 -= 2;
        v20 -= 2;
        --v21;
      }

      while (v21);
    }

    if (v11 >= 1)
    {
      v26 = v39 + 20 * v8;
      v27 = v11;
      v28 = v7;
      do
      {
        v29 = *v28++;
        v30 = &v31 + 4 * (v29 - v13);
        *v26 = *v30;
        *(v26 + 16) = *(v30 + 4);
        v26 += 20;
        --v27;
      }

      while (v27);
    }

    v10 += v41;
    ++v9;
    v8 += v11;
    v7 += v42;
  }

  while (v9 != v40);
  return result;
}

uint64_t silk_noise_shape_analysis_FIX(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v306 = a5;
  v8 = a1;
  v337 = *MEMORY[0x277D85DE8];
  v9 = a1 + 1024;
  v330 = 0;
  v10 = a1[1156];
  v11 = a1[1191];
  *(a2 + 480) = (a1[1187] + a1[1186]) >> 2;
  v12 = silk_sigm_Q15((((v11 - 2560) >> 3) + 1) >> 1) >> 1;
  v314 = a2;
  *(a2 + 484) = v12;
  if (!v8[1177])
  {
    v13 = -8 * (((-*(v8 + 4556) << 8) * (256 - *(v8 + 2278)) + (((256 - v8[1139]) * ((256 - v8[1139]) >> 8)) << 16)) >> 16);
    v14 = ((*(v314 + 480) + 0x4000) * v12 + ((v12 * ((*(v314 + 480) + 0x4000) >> 16)) << 16)) >> 16;
    v11 += (v13 >> 16) * v14 + (((v13 & 0xFFF8) * v14) >> 16);
  }

  v329 = 0;
  v15 = *(v9 + 717);
  v305 = v9;
  if (v15 == 2)
  {
    v304 = v11 + (v8[2449] << 16 >> 23);
    *(v9 + 718) = 0;
    v16 = v314;
    *(v314 + 488) = 0;
  }

  else
  {
    v17 = (0x4000 - *(v314 + 480));
    v18 = ((((26214 * v8[1191]) >> 16) - 2 * v8[1191] + 3072) >> 16) * v17;
    v19 = ((((26214 * v8[1191]) >> 16) - 2 * v8[1191] + 3072) * v17) >> 16;
    if (*(v8 + 2302) < 1)
    {
      v28 = -640;
    }

    else
    {
      v326 = ((((26214 * v8[1191]) >> 16) - 2 * v8[1191] + 3072) >> 16) * v17;
      v327 = v10;
      v328 = a4;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = v8;
      v24 = 2 * v8[1150];
      do
      {
        silk_sum_sqr_shift(&v329, &v330, a3, v24);
        v329 += v24 >> v330;
        v25 = silk_lin2log(v329);
        v26 = v25 - v22;
        if (v25 - v22 < 0)
        {
          v26 = v22 - v25;
        }

        v27 = v26 + v21;
        if (v20)
        {
          v21 = v27;
        }

        ++v20;
        a3 += 2 * v24;
        v22 = v25;
      }

      while (v20 < 5 * *(v23 + 2302) / 2);
      v28 = v21 - 640;
      v8 = v23;
      v9 = v305;
      v10 = v327;
      a4 = v328;
      v18 = v326;
    }

    v29 = silk_sigm_Q15(6554 * (v28 >> 16) + ((6554 * v28) >> 16)) >> 7;
    v16 = v314;
    *(v314 + 488) = v29;
    *(v9 + 718) = v29 < 193;
    v304 = v18 + v11 + v19 + (v29 - 128);
  }

  v30 = 66 * (*(v16 + 492) >> 16) + ((66 * *(v16 + 492)) >> 16);
  v31 = v30 * (v30 >> 16) + ((v30 * (66 * HIWORD(*(v16 + 492)) + ((66 * *(v16 + 492)) >> 16))) >> 16) + (((v30 >> 15) + 1) >> 1) * v30;
  v33 = v31 + 0x10000;
  v32 = v31 + 0x10000 < 0;
  v34 = -65536 - v31;
  if (!v32)
  {
    v34 = v33;
  }

  v35 = __clz(v34);
  v36 = v33 << (v35 - 1);
  v37 = 0x1FFFFFFF / (v36 >> 16);
  v38 = 31129 * v37 + (v37 >> 1);
  v39 = 2040102912 - (((v36 * v38) >> 29) & 0xFFFFFFF8);
  v40 = v38 + (v39 >> 16) * v37 + (((v39 & 0xFFF8) * v37) >> 16);
  v41 = v40 >> (29 - v35);
  v42 = v35 - 29;
  v43 = 0x80000000 >> v42;
  if (v40 > 0x80000000 >> v42)
  {
    v43 = v40;
  }

  if (v40 <= (0x7FFFFFFFu >> v42))
  {
    v44 = v43;
  }

  else
  {
    v44 = 0x7FFFFFFFu >> v42;
  }

  v45 = v44 << v42;
  if (v34 <= 3)
  {
    v46 = v45;
  }

  else
  {
    v46 = v41;
  }

  v47 = *(v16 + 484);
  v48 = v8[1176];
  if (v48 < 1)
  {
    v309 = 0;
  }

  else
  {
    v309 = v48 + 2621 * (*(v16 + 484) >> 16) + ((2621 * *(v16 + 484)) >> 16);
  }

  v49 = 2 * v8[1157];
  v313 = &v303 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v313, v49);
  if (v8[1151] >= 1)
  {
    v50 = 0;
    v51 = 655 * ((-3 * v47 + 0x10000) >> 16) + ((655 * (-3 * v47)) >> 16);
    v52 = a4 - 2 * v10;
    v311 = ((v46 - v51) << 14) / ((v51 + v46) >> 2);
    v312 = v51 + v46;
    v53 = v309;
    v54 = v53 * (-v309 >> 16) + ((v53 * -v309) >> 16);
    v308 = &v330;
    v55 = -v309;
    v310 = v314 + 412;
    v56 = v54 + 0x10000;
    v32 = v54 + 0x10000 < 0;
    v57 = -65536 - v54;
    if (!v32)
    {
      v57 = v56;
    }

    v58 = __clz(v57);
    v59 = v56 << (v58 - 1);
    v326 = v59 >> 16;
    LODWORD(v327) = v59;
    v324 = v58 + 4;
    v325 = v59;
    v319 = &v332;
    v320 = &v334;
    v307 = v314 + 268;
    v315 = v8;
    do
    {
      v318 = v50;
      v60 = 3 * v8[1150];
      v61 = (v8[1157] - v60) >> 1;
      v62 = v313;
      v63 = v52;
      silk_apply_sine_window(v313, v52, 1, v61);
      memcpy(&v62[2 * v61], (v63 + 2 * v61), 2 * v60);
      v317 = v63;
      v64 = v63 + 2 * (v60 + v61);
      v8 = v315;
      silk_apply_sine_window(&v62[2 * v60 + 2 * v61], v64, 2, v61);
      v316 = v8[1153];
      v65 = v8[1165];
      if (v8[1176] < 1)
      {
        silk_autocorr(v336, &v330, v62, v8[1157], v65 + 1);
      }

      else
      {
        silk_warped_autocorrelation_FIX(v336, &v330, v62, v309, v8[1157], v65);
      }

      v66 = 52 * (v336[0] >> 20) + ((52 * (v336[0] >> 4)) >> 16);
      if (v66 <= 1)
      {
        v66 = 1;
      }

      v336[0] += v66;
      v329 = silk_schur64(v335, v336, v8[1165]);
      silk_k2a_Q16(&v331, v335, v8[1165]);
      v67 = -v330;
      v68 = v318;
      if (-v330)
      {
        v67 = ~v330;
        v69 = v329 >> 1;
        v329 >>= 1;
      }

      else
      {
        v69 = v329;
      }

      v70 = v314;
      if (v69 < 1)
      {
        v74 = 0;
      }

      else
      {
        v71 = __clz(v69);
        if (v71 != 24)
        {
          if (v69 <= 0x7F)
          {
            LOBYTE(v69) = (v69 >> (56 - v71)) | (v69 << (v71 - 24));
          }

          else
          {
            LOBYTE(v69) = (v69 << (v71 + 8)) | (v69 >> (24 - v71));
          }
        }

        v72 = v69 & 0x7F;
        if (v71)
        {
          v73 = 0x8000;
        }

        else
        {
          v73 = 46214;
        }

        v74 = (v73 >> (v71 >> 1)) + ((213 * (v73 >> (v71 >> 1)) * v72) >> 16);
      }

      v75 = 16 - (v67 >> 1);
      if (v74 >= 0x7FFFFFFFu >> v75)
      {
        v74 = 0x7FFFFFFFu >> v75;
      }

      v76 = v74 << v75;
      *(v314 + 4 * v318) = v76;
      if (v8[1176] >= 1)
      {
        v77 = v8[1165];
        v78 = v308[v77];
        v79 = __OFSUB__(v77, 2);
        v80 = v77 - 2;
        if (v80 < 0 == v79)
        {
          v81 = 4 * v80;
          do
          {
            v78 = *(&v331 + v81) + (v78 >> 16) * v55 + ((v78 * v55) >> 16);
            v81 -= 4;
          }

          while (v81 != -4);
        }

        v82 = (v78 >> 16) * v53 + ((v78 * v53) >> 16);
        v83 = v82 + 0x1000000;
        v32 = v82 + 0x1000000 < 0;
        v84 = -16777216 - v82;
        if (!v32)
        {
          v84 = v83;
        }

        v85 = __clz(v84);
        v86 = v83 << (v85 - 1);
        v87 = 0x1FFFFFFF / (v86 >> 16);
        v88 = (v86 >> 16) * v87 + ((v86 * v87) >> 16);
        v89 = (v87 << 16) - 8 * v88 * (((v87 >> 15) + 1) >> 1) + ((-8 * v88) >> 16) * v87 + ((((-8 * v88) & 0xFFF8) * v87) >> 16);
        v90 = v89 >> (22 - v85);
        v91 = v85 - 22;
        v92 = 0x80000000 >> v91;
        if (v89 > 0x80000000 >> v91)
        {
          v92 = v89;
        }

        if (v89 <= (0x7FFFFFFFu >> v91))
        {
          v93 = v92;
        }

        else
        {
          v93 = 0x7FFFFFFFu >> v91;
        }

        v94 = v93 << v91;
        if (v84 > 0x3FF)
        {
          v94 = v90;
        }

        v95 = v94;
        v96 = ((v94 >> 15) + 1) >> 1;
        if (v95 * (((v76 & 1) + (v76 >> 1)) >> 16) + ((v95 * ((v76 & 1) + (v76 >> 1))) >> 16) + v96 * ((v76 & 1) + (v76 >> 1)) <= 1073741822)
        {
          v97 = v95 * (v76 >> 16) + ((v95 * v76) >> 16) + v96 * v76;
        }

        else
        {
          v97 = 0x7FFFFFFF;
        }

        *(v70 + 4 * v68) = v97;
      }

      silk_bwexpander_32(&v331, v8[1165], v312);
      v98 = v8[1165];
      __memcpy_chk();
      silk_bwexpander_32(&v333, v98, v311);
      v99 = silk_LPC_inverse_pred_gain_Q24(&v331, v8[1165]);
      v100 = silk_LPC_inverse_pred_gain_Q24(&v333, v8[1165]);
      v329 = v100;
      v101 = 22938 * v99;
      v102 = 2 * (22938 * (v99 >> 16) + HIWORD(v101));
      if (((22938 * (v99 >> 16) + HIWORD(v101)) & 0x40000000) != 0)
      {
        v103 = -2 * (22938 * (v99 >> 16) + HIWORD(v101));
      }

      else
      {
        v103 = 2 * (22938 * (v99 >> 16) + HIWORD(v101));
      }

      v104 = __clz(v103);
      v105 = v102 << (v104 - 1);
      if (v100 >= 0)
      {
        v106 = v100;
      }

      else
      {
        v106 = -v100;
      }

      v107 = __clz(v106);
      v108 = v100 << (v107 - 1);
      v109 = 0x1FFFFFFF / (v108 >> 16);
      v110 = (v105 >> 16) * v109 + (((v105 & 0xFFFE) * v109) >> 16);
      v111 = v105 - (((v110 * v108) >> 29) & 0xFFFFFFF8);
      v112 = v110 + (v111 >> 16) * v109 + (((v111 & 0xFFFE) * v109) >> 16);
      v113 = v104 - v107;
      if ((v113 + 15) >= 0x20)
      {
        v114 = 0;
      }

      else
      {
        v114 = v112 >> (v113 + 15);
      }

      v115 = 0x80000000 >> (-15 - v113);
      if (v112 > v115)
      {
        v115 = v112;
      }

      if (v112 <= (0x7FFFFFFFu >> (-15 - v113)))
      {
        v116 = v115;
      }

      else
      {
        v116 = 0x7FFFFFFFu >> (-15 - v113);
      }

      v117 = v116 << (-15 - v113);
      if (v113 > -16)
      {
        v117 = v114;
      }

      *(v310 + 4 * v68) = v117 + 4915;
      v118 = v8[1165];
      v323 = (v118 - 1);
      if (v118 >= 2)
      {
        v119 = *(&v331 + v323);
        v120 = *(&v333 + v323);
        v121 = v323 - 1;
        do
        {
          v119 = *(&v331 + v121) + (v119 >> 16) * v55 + ((v119 * v55) >> 16);
          *(&v331 + v121) = v119;
          v120 = *(&v333 + v121) + (v120 >> 16) * v55 + ((v120 * v55) >> 16);
          *(&v333 + v121) = v120;
          v122 = v121-- + 1;
        }

        while (v122 > 1);
      }

      v123 = (v331 >> 16) * v53 + ((v331 * v53) >> 16);
      v124 = v123 + 0x1000000;
      v32 = v123 + 0x1000000 < 0;
      v125 = -16777216 - v123;
      if (!v32)
      {
        v125 = v124;
      }

      v126 = __clz(v125);
      v127 = v124 << (v126 - 1);
      v128 = 0x1FFFFFFF / (v127 >> 16);
      v129 = v128 * v326 + ((v128 * v325) >> 16);
      v130 = v327 - (((v127 * v129) >> 29) & 0xFFFFFFF8);
      v131 = v129 + (v130 >> 16) * v128 + ((v130 * v128) >> 16);
      v132 = v324 - v126;
      if ((v132 + 1) >= 0x20)
      {
        v133 = 0;
      }

      else
      {
        v133 = v131 >> (v132 + 1);
      }

      v134 = 0x80000000 >> ~v132;
      if (v131 > v134)
      {
        v134 = v131;
      }

      if (v131 <= (0x7FFFFFFFu >> ~v132))
      {
        v135 = v134;
      }

      else
      {
        v135 = 0x7FFFFFFFu >> ~v132;
      }

      v136 = v135 << ~v132;
      if (v132 <= -2)
      {
        v137 = v136;
      }

      else
      {
        v137 = v133;
      }

      v138 = (v333 >> 16) * v53 + ((v333 * v53) >> 16);
      v139 = v138 + 0x1000000;
      v32 = v138 + 0x1000000 < 0;
      v140 = -16777216 - v138;
      if (!v32)
      {
        v140 = v139;
      }

      v141 = __clz(v140);
      v142 = v139 << (v141 - 1);
      v143 = 0x1FFFFFFF / (v142 >> 16);
      v144 = v143 * v326 + ((v143 * v325) >> 16);
      v145 = v327 - (((v142 * v144) >> 29) & 0xFFFFFFF8);
      v146 = v144 + (v145 >> 16) * v143 + ((v145 * v143) >> 16);
      v147 = v324 - v141;
      if ((v147 + 1) >= 0x20)
      {
        v148 = 0;
      }

      else
      {
        v148 = v146 >> (v147 + 1);
      }

      v149 = 0x80000000 >> ~v147;
      if (v146 > v149)
      {
        v149 = v146;
      }

      if (v146 <= (0x7FFFFFFFu >> ~v147))
      {
        v150 = v149;
      }

      else
      {
        v150 = 0x7FFFFFFFu >> ~v147;
      }

      v151 = v150 << ~v147;
      if (v147 <= -2)
      {
        v152 = v151;
      }

      else
      {
        v152 = v148;
      }

      if (v118 >= 1)
      {
        v153 = 0;
        v154 = 4 * v118;
        v155 = (v307 + 32 * (v68 & 0xFFFFFFF));
        do
        {
          *(&v331 + v153) = *(&v331 + v153) * (v137 >> 16) + ((*(&v331 + v153) * v137) >> 16) + (((*(&v331 + v153) >> 15) + 1) >> 1) * v137;
          *(&v333 + v153) = *(&v333 + v153) * (v152 >> 16) + ((*(&v333 + v153) * v152) >> 16) + (((*(&v333 + v153) >> 15) + 1) >> 1) * v152;
          v153 += 4;
        }

        while (v154 != v153);
        v156 = 0;
        v157 = 0;
        v321 = v323 - 1;
        v322 = v118 - 1;
        do
        {
          v158 = 0;
          v159 = -1;
          do
          {
            v160 = *(&v331 + v158);
            if (v160 < 0)
            {
              v160 = -v160;
            }

            v161 = *(&v333 + v158);
            if (v161 < 0)
            {
              v161 = -v161;
            }

            if (v160 <= v161)
            {
              v160 = v161;
            }

            if (v160 > v159)
            {
              v156 = v158;
              v159 = v160;
            }

            ++v158;
          }

          while (v118 != v158);
          if (v159 < 0x3FFBE78)
          {
            break;
          }

          if (v118 >= 2)
          {
            v162 = v331;
            v163 = v333;
            v164 = v319;
            v165 = v320;
            v166 = v322;
            do
            {
              v167 = *v164;
              v168 = v162 + (*v164 >> 16) * v53 + ((*v164 * v53) >> 16);
              v169 = *v165;
              *(v165 - 1) = v163 + (*v165 >> 16) * v53 + ((*v165 * v53) >> 16);
              ++v165;
              *(v164++ - 1) = v168;
              v163 = v169;
              v162 = v167;
              --v166;
            }

            while (v166);
          }

          v170 = 0;
          if (v137 >= 0)
          {
            v171 = v137;
          }

          else
          {
            v171 = -v137;
          }

          v172 = __clz(v171);
          v173 = v137 << (v172 - 1);
          v174 = 0x1FFFFFFF / (v173 >> 16);
          v175 = v174 * (v173 >> 16) + ((v174 * v173) >> 16);
          v176 = (v174 << 16) - 8 * v175 * (((v174 >> 15) + 1) >> 1) + ((-8 * v175) >> 16) * v174 + ((((-8 * v175) & 0xFFF8) * v174) >> 16);
          v177 = v176 >> (30 - v172);
          v178 = v172 - 30;
          v179 = 0x80000000 >> v178;
          if (v176 > 0x80000000 >> v178)
          {
            v179 = v176;
          }

          if (v176 <= (0x7FFFFFFFu >> v178))
          {
            v180 = v179;
          }

          else
          {
            v180 = 0x7FFFFFFFu >> v178;
          }

          v181 = v180 << v178;
          if (v171 > 3)
          {
            v181 = v177;
          }

          if (v152 >= 0)
          {
            v182 = v152;
          }

          else
          {
            v182 = -v152;
          }

          v183 = __clz(v182);
          v184 = v152 << (v183 - 1);
          v185 = 0x1FFFFFFF / (v184 >> 16);
          v186 = v185 * (v184 >> 16) + ((v185 * v184) >> 16);
          v187 = (v185 << 16) - 8 * v186 * (((v185 >> 15) + 1) >> 1) + ((-8 * v186) >> 16) * v185 + ((((-8 * v186) & 0xFFF8) * v185) >> 16);
          v188 = v187 >> (30 - v183);
          v189 = v183 - 30;
          v190 = 0x80000000 >> v189;
          if (v187 > 0x80000000 >> v189)
          {
            v190 = v187;
          }

          if (v187 <= (0x7FFFFFFFu >> v189))
          {
            v191 = v190;
          }

          else
          {
            v191 = 0x7FFFFFFFu >> v189;
          }

          v192 = v191 << v189;
          if (v182 > 3)
          {
            v192 = v188;
          }

          do
          {
            *(&v331 + v170) = *(&v331 + v170) * (v181 >> 16) + ((*(&v331 + v170) * v181) >> 16) + (((*(&v331 + v170) >> 15) + 1) >> 1) * v181;
            *(&v333 + v170) = *(&v333 + v170) * (v192 >> 16) + ((*(&v333 + v170) * v192) >> 16) + (((*(&v333 + v170) >> 15) + 1) >> 1) * v192;
            v170 += 4;
          }

          while (v154 != v170);
          LODWORD(v328) = v157;
          v193 = ((v159 - 67092087) >> 16) * (102 * v157 + 819) + (((v159 + 16777) * (102 * v157 + 819)) >> 16);
          v194 = v159 + v159 * v156;
          v195 = __clz(v193);
          v196 = v193 << (v195 - 1);
          if (v194 >= 0)
          {
            v197 = v194;
          }

          else
          {
            v197 = -v194;
          }

          v198 = __clz(v197);
          v199 = v194 << (v198 - 1);
          v200 = 0x1FFFFFFF / (v199 >> 16);
          v201 = v200 * (v196 >> 16) + ((v200 * v196) >> 16);
          v202 = v196 - (((v201 * v199) >> 29) & 0xFFFFFFF8);
          v203 = v201 + (v202 >> 16) * v200 + ((v202 * v200) >> 16);
          v204 = v195 - v198;
          if (v195 - v198 + 7 >= 0x20)
          {
            v205 = 0;
          }

          else
          {
            v205 = v203 >> (v204 + 7);
          }

          v206 = 0x80000000 >> (-7 - v204);
          if (v203 > v206)
          {
            v206 = v203;
          }

          if (v203 <= (0x7FFFFFFFu >> (-7 - v204)))
          {
            v207 = v206;
          }

          else
          {
            v207 = 0x7FFFFFFFu >> (-7 - v204);
          }

          v208 = v207 << (-7 - v204);
          if (v204 > -8)
          {
            v208 = v205;
          }

          v209 = 64881 - v208;
          silk_bwexpander_32(&v331, v118, 64881 - v208);
          silk_bwexpander_32(&v333, v118, v209);
          if (v118 >= 2)
          {
            v210 = *(&v331 + v323);
            v211 = *(&v333 + v323);
            v212 = v321;
            do
            {
              v210 = *(&v331 + v212) + (v210 >> 16) * v55 + ((v210 * v55) >> 16);
              *(&v331 + v212) = v210;
              v211 = *(&v333 + v212) + (v211 >> 16) * v55 + ((v211 * v55) >> 16);
              *(&v333 + v212) = v211;
              v213 = v212-- + 1;
            }

            while (v213 > 1);
          }

          v214 = (v331 >> 16) * v53 + ((v331 * v53) >> 16);
          v215 = v214 + 0x1000000;
          v32 = v214 + 0x1000000 < 0;
          v216 = -16777216 - v214;
          if (!v32)
          {
            v216 = v215;
          }

          v217 = __clz(v216);
          v218 = v215 << (v217 - 1);
          v219 = 0x1FFFFFFF / (v218 >> 16);
          v220 = v219 * v326 + ((v219 * v325) >> 16);
          v221 = v327 - (((v218 * v220) >> 29) & 0xFFFFFFF8);
          v222 = v220 + (v221 >> 16) * v219 + ((v221 * v219) >> 16);
          v223 = v324 - v217;
          if ((v223 + 1) >= 0x20)
          {
            v224 = 0;
          }

          else
          {
            v224 = v222 >> (v223 + 1);
          }

          v225 = 0x80000000 >> ~v223;
          if (v222 > v225)
          {
            v225 = v222;
          }

          if (v222 <= (0x7FFFFFFFu >> ~v223))
          {
            v226 = v225;
          }

          else
          {
            v226 = 0x7FFFFFFFu >> ~v223;
          }

          v227 = v226 << ~v223;
          if (v223 <= -2)
          {
            v137 = v227;
          }

          else
          {
            v137 = v224;
          }

          v228 = (v333 >> 16) * v53 + ((v333 * v53) >> 16);
          v229 = v228 + 0x1000000;
          v32 = v228 + 0x1000000 < 0;
          v230 = -16777216 - v228;
          if (!v32)
          {
            v230 = v229;
          }

          v231 = __clz(v230);
          v232 = v229 << (v231 - 1);
          v233 = 0x1FFFFFFF / (v232 >> 16);
          v234 = v233 * v326 + ((v233 * v325) >> 16);
          v235 = v327 - (((v232 * v234) >> 29) & 0xFFFFFFF8);
          v236 = v234 + (v235 >> 16) * v233 + ((v235 * v233) >> 16);
          v237 = v324 - v231;
          if ((v237 + 1) >= 0x20)
          {
            v238 = 0;
          }

          else
          {
            v238 = v236 >> (v237 + 1);
          }

          v239 = 0x80000000 >> ~v237;
          if (v236 > v239)
          {
            v239 = v236;
          }

          v240 = v236 <= (0x7FFFFFFFu >> ~v237) ? v239 : 0x7FFFFFFFu >> ~v237;
          v241 = v240 << ~v237;
          v152 = v237 <= -2 ? v241 : v238;
          v242 = &v333;
          v243 = &v331;
          v244 = v118;
          do
          {
            *v243 = *v243 * (v137 >> 16) + ((*v243 * v137) >> 16) + (((*v243 >> 15) + 1) >> 1) * v137;
            ++v243;
            *v242 = *v242 * (v152 >> 16) + ((*v242 * v152) >> 16) + (((*v242 >> 15) + 1) >> 1) * v152;
            ++v242;
            --v244;
          }

          while (v244);
          v157 = v328 + 1;
        }

        while (v328 != 9);
        v8 = v315;
        v245 = v315[1165];
        v68 = v318;
        if (v245 >= 1)
        {
          v246 = &v331;
          v247 = &v333;
          do
          {
            v248 = *v247++;
            v249 = ((v248 >> 10) + 1) >> 1;
            if (v249 <= -32768)
            {
              v249 = -32768;
            }

            if (v249 >= 0x7FFF)
            {
              LOWORD(v249) = 0x7FFF;
            }

            *(v155 - 64) = v249;
            v250 = *v246++;
            v251 = ((v250 >> 10) + 1) >> 1;
            if (v251 <= -32768)
            {
              v251 = -32768;
            }

            if (v251 >= 0x7FFF)
            {
              LOWORD(v251) = 0x7FFF;
            }

            *v155++ = v251;
            --v245;
          }

          while (v245);
        }
      }

      v52 = v317 + 2 * v316;
      v50 = v68 + 1;
    }

    while (v50 < v8[1151]);
  }

  v252 = silk_log2lin(-10486 * (v304 >> 16) - ((10486 * v304) >> 16) + 2048);
  v253 = silk_log2lin(0x828u);
  if (v8[1151] < 1)
  {
    v263 = 0;
    v258 = v305;
    v255 = v314;
  }

  else
  {
    v254 = 0;
    v255 = v314;
    do
    {
      v256 = v253 + v255[v254] * (((v252 >> 15) + 1) >> 1) + (v255[v254] >> 16) * v252 + ((v255[v254] * v252) >> 16);
      if (v256 < 0)
      {
        v256 = 0x7FFFFFFF;
      }

      v255[v254++] = v256;
      v257 = v8[1151];
    }

    while (v254 < v257);
    v258 = v305;
    if (v257 < 1)
    {
      v263 = 0;
    }

    else
    {
      v259 = 0;
      v260 = (((((410 * v255[121] + 3355443) >> 9) + 1) >> 1) + 0x10000) >> 16;
      v261 = ((((410 * v255[121] + 3355443) >> 9) + 1) >> 1);
      do
      {
        v255[v259 + 103] = SLOWORD(v255[v259 + 103]) * v260 + ((SLOWORD(v255[v259 + 103]) * v261) >> 16);
        ++v259;
        v262 = v8[1151];
      }

      while (v259 < v262);
      v263 = v262 > 0;
    }
  }

  v264 = v8[1139];
  v265 = (((v8[1186] << 16 >> 14) & 0xFFFFFFC0 ^ 0xFFFE0000) + 0x40000) * v264;
  v266 = *(v258 + 717);
  v267 = v8[1150];
  if (v266 == 2)
  {
    if (v263)
    {
      v268 = 0;
      v269 = v265 >> 24;
      v270 = (v265 >> 8);
      v271 = v269 + 1;
      v272 = v255;
      v273 = 3277 / v267;
      do
      {
        v272[99] = (49152 / v272[31] + v273 - 0x4000) - (((49152 / v272[31] + v273) * v270 + (((49152 / v272[31] + v273) * v271) << 16)) & 0xFFFF0000) + 0x40000000;
        ++v268;
        ++v272;
      }

      while (v268 < v8[1151]);
      v264 = v8[1139];
    }

    v274 = -16384 - ((49152 * ((5832704 * v264 + 39322 * v264) >> 16)) >> 16);
  }

  else
  {
    v275 = (21299 / v267 - 0x4000) - ((((39322 * (21299 / v267)) >> 16) * (v265 >> 8) + ((21299 / v267 + ((39322 * (21299 / v267)) >> 16) * (v265 >> 24)) << 16)) & 0xFFFF0000) + 0x40000000;
    v255[99] = v275;
    if (v8[1151] >= 2)
    {
      v276 = v255 + 100;
      v277 = 1;
      do
      {
        *v276++ = v275;
        ++v277;
      }

      while (v277 < v8[1151]);
    }

    v274 = -16384;
  }

  v278 = v255[121];
  v279 = v8[2449];
  v280 = (((0x20000 - 8 * v278) >> 16) * v279 + ((((0x20000 - 8 * v278) & 0xFFF8) * v279) >> 16)) >> 16;
  v281 = (6554 * (((0x20000 - 8 * v278) >> 16) * v279 + ((((0x20000 - 8 * v278) & 0xFFF8u) * v279) >> 16))) >> 16;
  v282 = v255[120];
  if (v266 == 2)
  {
    v283 = 0x10000 - (v282 * ((0x40000 - 16 * v278) >> 16) + ((v282 * ((0x40000 - 16 * v278) & 0xFFF0)) >> 16));
    v284 = 2 * (13107 * (v283 >> 16) + ((13107 * v283) >> 16)) + 39322;
    v285 = v279 << 15;
    v286 = __clz(v285);
    if (v286)
    {
      v287 = 0x8000;
    }

    else
    {
      v287 = 46214;
    }

    v288 = (((213 * ((v285 >> (24 - v286)) & 0x7F)) | 0x10000) * (v287 >> (v286 >> 1))) >> 16;
    v289 = v285 < 1;
    if (v285 >= 1)
    {
      v290 = (v284 >> 16) * v288;
    }

    else
    {
      v290 = 0;
    }

    if (v289)
    {
      v291 = 0;
    }

    else
    {
      v291 = v288;
    }

    v292 = v290 + ((v291 * (v284 & 0xFFFE)) >> 16);
  }

  else
  {
    v292 = 0;
  }

  v293 = (v258 + 783);
  v294 = 6554 * (v280 + ((0x10000 - 4 * v282) >> 16));
  v295 = v281 + ((6554 * (-4 * v282)) >> 16);
  v296 = v255 + 115;
  v297 = 4;
  v298 = vdup_n_s32(0x6666u);
  do
  {
    v299.i32[0] = v295 - *v293 + v294;
    v299.i32[1] = v292 - HIDWORD(*v293);
    v300 = vsra_n_u32(vmla_s32(*v293, vshr_n_s32(v299, 0x10uLL), v298), vmul_s32(vand_s8(v299, 0xFFFF0000FFFFLL), v298), 0x10uLL);
    *v293 = v300;
    v301 = v8[1809];
    result = ((v274 - v301) >> 16);
    v8[1809] = v301 + 26214 * result + ((26214 * (v274 - v301)) >> 16);
    *(v296 - 8) = ((v300.i32[0] >> 1) + 1) >> 1;
    *v296 = ((v8[1808] >> 1) + 1) >> 1;
    *(v296 - 4) = ((v8[1809] >> 1) + 1) >> 1;
    ++v296;
    --v297;
  }

  while (v297);
  return result;
}

uint64_t silk_corrVector_FIX(uint64_t result, __int16 *a2, int a3, int a4, _DWORD *a5, int a6)
{
  v6 = a5;
  v9 = (result + 2 * a4 - 2);
  if (a6 <= 0)
  {
    if (a4 >= 1)
    {
      v13 = a4;
      do
      {
        result = silk_inner_prod_aligned(v9, a2, a3);
        *v6++ = result;
        --v9;
        --v13;
      }

      while (v13);
    }
  }

  else if (a4 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      if (a3 < 1)
      {
        v12 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v12 += (a2[v11] * v9[v11]) >> a6;
          ++v11;
        }

        while (a3 != v11);
      }

      a5[i] = v12;
      --v9;
    }
  }

  return result;
}

uint64_t silk_corrMatrix_FIX(uint64_t a1, int a2, unsigned int a3, int a4, int *a5, int *a6)
{
  v59 = 0;
  v12 = a3 - 1;
  result = silk_sum_sqr_shift(&v59, &v59 + 1, a1, v12 + a2);
  v14 = __clz(v59);
  v15 = __OFSUB__(a4, v14);
  v16 = a4 - v14;
  if ((v16 < 0) ^ v15 | (v16 == 0))
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  v18 = v59 >> v17;
  v19 = v17 + HIDWORD(v59);
  HIDWORD(v59) += v17;
  if (a3 >= 2)
  {
    v20 = v12;
    v21 = a1;
    do
    {
      v22 = *v21++;
      v18 -= (v22 * v22) >> v19;
      --v20;
    }

    while (v20);
  }

  v23 = *a6;
  if (*a6 > v19)
  {
    v18 >>= *a6 - v19;
    HIDWORD(v59) = *a6;
    v19 = v23;
  }

  *a5 = v18;
  if (a3 >= 2)
  {
    v24 = (a1 + 2 * v12);
    v25 = a2;
    v26 = v24 - 1;
    v27 = a3 - 1;
    v28 = a3 + 1;
    v29 = v24 - 1;
    do
    {
      v18 = ((*v29 * *v29) >> v19) + v18 - ((v29[a2] * v29[a2]) >> v19);
      a5[v28] = v18;
      --v29;
      v28 += a3 + 1;
      --v27;
    }

    while (v27);
    LODWORD(v59) = v18;
    v30 = a1 + 2 * a3;
    v31 = (v30 - 4);
    if (v19 <= 0)
    {
      v55 = a2;
      v53 = a6;
      v43 = &a5[a3 + 2];
      v56 = a5;
      v54 = a5 + 1;
      v44 = 2 * a3;
      v45 = v30 - 6;
      v46 = &v26[a2];
      v47 = 1;
      v48 = v30 - 6 + 2 * v25;
      do
      {
        v57 = v47;
        v58 = v44;
        result = silk_inner_prod_aligned(v24, v31, v55);
        LODWORD(v59) = result;
        v56[v57 * a3] = result;
        v56[v57] = result;
        if (v57 < a3 - 1)
        {
          v49 = 0;
          v50 = v58;
          v51 = v54;
          v52 = v43;
          do
          {
            result = (result - *(v48 + v49 * 2) * v46[v49] + *(v45 + v49 * 2) * v26[v49]);
            v51[v50] = result;
            *v52 = result;
            v52 += a3 + 1;
            ++v51;
            v50 += a3;
            --v49;
          }

          while (2 * v12 - 2 + v49 * 2);
          LODWORD(v59) = result;
        }

        --v31;
        v47 = v57 + 1;
        LODWORD(v12) = v12 - 1;
        v43 += 4;
        v44 = v58 + a3;
        v45 -= 2;
        v48 -= 2;
      }

      while (v57 + 1 != a3);
      v19 = HIDWORD(v59);
      a6 = v53;
    }

    else
    {
      v32 = &a5[a3 + 2];
      v33 = 2 * a3;
      v34 = v30 - 6;
      v35 = 1;
      v36 = v12;
      v37 = v34 + 2 * a2;
      do
      {
        if (a2 < 1)
        {
          result = 0;
        }

        else
        {
          v38 = 0;
          LODWORD(result) = 0;
          do
          {
            result = (((v31[v38] * v24[v38]) >> v19) + result);
            ++v38;
          }

          while (a2 != v38);
        }

        a5[v35 * a3] = result;
        a5[v35] = result;
        if (v35 < a3 - 1)
        {
          v39 = 0;
          v40 = v33;
          v41 = a5 + 1;
          v42 = v32;
          do
          {
            result = (((*(v34 + v39 * 2) * v26[v39]) >> v19) + result - ((*(v37 + v39 * 2) * v26[a2 + v39]) >> v19));
            v41[v40] = result;
            *v42 = result;
            v42 += a3 + 1;
            ++v41;
            v40 += a3;
            --v39;
          }

          while (2 * v36 - 2 + v39 * 2);
        }

        --v31;
        ++v35;
        --v36;
        v32 += 4;
        v33 += a3;
        v34 -= 2;
        v37 -= 2;
      }

      while (v35 != a3);
    }
  }

  *a6 = v19;
  return result;
}

uint64_t silk_schur64(char *a1, const float *a2, int a3)
{
  v33[16] = *MEMORY[0x277D85DE8];
  if (*a2 < 1)
  {
    bzero(a1, 4 * a3);
    return 0;
  }

  else
  {
    if (a3 < 0)
    {
      goto LABEL_23;
    }

    v3 = (a3 + 1);
    v4 = v31;
    do
    {
      v5 = vld1_dup_f32(a2++);
      *v4++ = v5;
      --v3;
    }

    while (v3);
    if (!a3)
    {
LABEL_23:
      LODWORD(v7) = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = a3;
      while (1)
      {
        v9 = v7++;
        v10 = *&v31[8 * v7];
        v11 = v10 >= 0 ? *&v31[8 * v7] : -v10;
        if (v11 >= v32)
        {
          break;
        }

        v12 = __clz(v11);
        v13 = -v10 << (v12 - 1);
        v14 = __clz(v32);
        v15 = v32 << (v14 - 1);
        v16 = 0x1FFFFFFF / (v15 >> 16);
        v17 = v16 * (v13 >> 16) + ((v16 * v13) >> 16);
        v18 = v13 - (((v17 * v15) >> 29) & 0xFFFFFFF8);
        v19 = v17 + (v18 >> 16) * v16 + ((v18 * v16) >> 16);
        v20 = v12 - v14;
        v21 = v19 >> (v12 - v14 - 2);
        v22 = 0x80000000 >> (2 - v20);
        if (v19 > v22)
        {
          v22 = v19;
        }

        if (v19 <= (0x7FFFFFFFu >> (2 - v20)))
        {
          v23 = v22;
        }

        else
        {
          v23 = 0x7FFFFFFFu >> (2 - v20);
        }

        v24 = v23 << (2 - v20);
        if (v20 > 1)
        {
          v24 = v21;
        }

        *&a1[4 * v9] = ((v24 >> 14) + 1) >> 1;
        if (v9 < a3)
        {
          v25 = v8;
          v26 = v33;
          do
          {
            v27 = v26[v6];
            v28 = *(v26 - 1);
            LODWORD(v26[v6]) = v27 + ((v24 * (2 * v28)) >> 32);
            *(v26++ - 1) = v28 + ((v24 * (2 * v27)) >> 32);
            --v25;
          }

          while (v25);
        }

        --v8;
        ++v6;
        if (v7 == a3)
        {
          goto LABEL_31;
        }
      }

      if (v10 > 0)
      {
        v30 = -64881;
      }

      else
      {
        v30 = 64881;
      }

      *&a1[4 * v9] = v30;
    }

    if (v7 < a3)
    {
      bzero(&a1[4 * v7], 4 * (~v7 + a3) + 4);
    }

LABEL_31:
    if (v32 <= 1)
    {
      return 1;
    }

    else
    {
      return v32;
    }
  }
}

uint64_t silk_LTP_scale_ctrl_FIX(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = 51 * (((*(result + 5792) + *(result + 4640)) * *(a2 + 496)) >> 16) + ((51 * ((*(result + 5792) + *(result + 4640)) * *(a2 + 496))) >> 16);
    v3 = v4 & ~(v4 >> 31);
    if (v3 >= 2)
    {
      LOBYTE(v3) = 2;
    }
  }

  *(result + 4817) = v3;
  *(a2 + 120) = silk_LTPScales_table_Q14[v3];
  return result;
}

void silk_burg_modified(_DWORD *a1, _DWORD *a2, _DWORD *a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v211 = *MEMORY[0x277D85DE8];
  v198 = 0;
  silk_sum_sqr_shift(&v198, &v198 + 1, a4, a7 * a6);
  if (SHIDWORD(v198) < 8)
  {
    v12 = 3 - __clz(v198);
    v13 = -16 - HIDWORD(v198);
    if (v12 > -16 - HIDWORD(v198))
    {
      v13 = v12;
    }

    if (v12 >= 7 - HIDWORD(v198))
    {
      v12 = 7 - HIDWORD(v198);
    }

    v14 = v198 >> v12;
    if (!(v198 >> 29))
    {
      v14 = v198 << -v13;
      v12 = v13;
    }

    LODWORD(v198) = v14;
    v11 = v12 + HIDWORD(v198);
  }

  else
  {
    LODWORD(v198) = v198 << (BYTE4(v198) - 7);
    v11 = 7;
  }

  v196 = a4;
  v191 = a8;
  HIDWORD(v198) = v11;
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  if (v11 <= 0)
  {
    if (a7 >= 1)
    {
      v22 = 0;
      v23 = a6 - v191;
      v24 = (v191 + 1);
      v25 = a4;
      do
      {
        celt_pitch_xcorr_c((a4 + 2 * v22 * a6), a4 + 2 * v22 * a6 + 2, v199, v23, v191);
        if (v191 >= 1)
        {
          v26 = -1;
          v27 = v191 - 1;
          v28 = 1;
          v29 = a6 - v191 + 1;
          do
          {
            if (v23 + v28 >= a6)
            {
              v30 = 0;
            }

            else
            {
              v30 = 0;
              v31 = (v25 + 2 * (v26 + v29));
              v32 = (v25 + 2 * v29);
              v33 = v27;
              do
              {
                v35 = *v32++;
                v34 = v35;
                v36 = *v31++;
                v30 += v36 * v34;
                --v33;
              }

              while (v33);
            }

            v199[v28++ - 1] += v30;
            ++v29;
            --v26;
            --v27;
          }

          while (v28 != v24);
          v37 = -HIDWORD(v198);
          v38 = v199;
          v39 = &v207;
          v40 = v24 - 1;
          do
          {
            v41 = *v38++;
            *v39 += v41 << v37;
            v39 = (v39 + 4);
            --v40;
          }

          while (v40);
        }

        ++v22;
        v25 += 2 * a6;
      }

      while (v22 != a7);
    }
  }

  else if (a7 >= 1)
  {
    v15 = 0;
    v16 = v196 + 1;
    v193 = (a8 + 1) - 1;
    do
    {
      if (v191 >= 1)
      {
        v17 = &v207;
        v18 = v193;
        v19 = v16;
        v20 = a6 - 1;
        do
        {
          v21 = silk_inner_prod16_aligned_64(&v196[v15 * a6], v19, v20);
          *v17 += v21 >> SBYTE4(v198);
          v17 = (v17 + 4);
          --v20;
          ++v19;
          --v18;
        }

        while (v18);
      }

      ++v15;
      v16 += a6;
    }

    while (v15 != a7);
  }

  v205[0] = v207;
  v205[1] = v208;
  v205[2] = v209;
  v206 = v210;
  v42 = (42950 * v198) >> 32;
  v43 = ((0x10000A7C6 * v198) >> 32) + 1;
  v202[0] = v43;
  v200[0] = v43;
  if (v191 < 1)
  {
    v159 = 0x10000;
LABEL_111:
    LODWORD(v167) = v43 + -v159 * (v42 >> 16) + ((-v159 * v42) >> 16) + (((-v159 >> 15) + 1) >> 1) * v42;
    v168 = HIDWORD(v198);
  }

  else
  {
    v176 = (42950 * v198) >> 32;
    v177 = v198;
    v44 = 0;
    v45 = HIDWORD(v198);
    v194 = -HIDWORD(v198);
    v46 = ~BYTE4(v198);
    v192 = 16 - BYTE4(v198);
    v195 = 7 - BYTE4(v198);
    if (a5 >= 0)
    {
      v47 = a5;
    }

    else
    {
      v47 = -a5;
    }

    v181 = __clz(v47);
    v197 = a6;
    v48 = 2 * a6;
    v49 = v196;
    v188 = v196 - 1;
    v189 = &v196[v48 / 2];
    v50 = &v201;
    v51 = -4;
    v187 = v196;
    v52 = 1;
    v53 = 2;
    v54 = 0x40000000;
    v55 = a7;
    v182 = HIDWORD(v198);
    while (1)
    {
      v185 = v54;
      v186 = v51;
      v184 = v50;
      if (v45 <= -2)
      {
        if (a7 >= 1)
        {
          v81 = 0;
          v82 = v187;
          v83 = v188;
          v84 = v189;
          do
          {
            v85 = &v49[v81 * v197];
            v86 = v85[v44];
            v87 = v85[v197 - v44 - 1];
            v88 = v86 << 17;
            v89 = v87 << 17;
            if (v44)
            {
              v90 = 0;
              v91 = v86 << v194;
              v92 = v87 << v194;
              v93 = v83;
              do
              {
                v94 = *v93--;
                *(&v207 + v90) -= v91 * v94;
                v95 = v84[v90];
                *(v205 + v90) -= v92 * v95;
                v96 = ((v204[v90] >> 7) + 1) >> 1;
                v88 += v96 * v94;
                v89 += v96 * v95;
                ++v90;
              }

              while (v44 != v90);
            }

            v97 = 0;
            v98 = -v88;
            v99 = v82;
            do
            {
              v100 = *v99--;
              v202[v97] += (v100 << v46) * (v98 >> 16) + (((v100 << v46) * v98) >> 16) + (((v100 << v46 >> 15) + 1) >> 1) * v98;
              v101 = v84[v97 - 1] << v46;
              v200[v97++] += v101 * (-v89 >> 16) + ((v101 * -v89) >> 16) + (((v101 >> 15) + 1) >> 1) * -v89;
            }

            while (v52 != v97);
            ++v81;
            v84 = (v84 + v48);
            v83 = (v83 + v48);
            v82 = (v82 + v48);
          }

          while (v81 != a7);
        }
      }

      else if (a7 >= 1)
      {
        v56 = 0;
        v58 = v187;
        v57 = v188;
        v59 = v189;
        do
        {
          v60 = &v49[v56 * v197];
          v61 = v60[v44];
          v62 = v60[v197 - v44 - 1];
          v63 = v61 << 9;
          v64 = v62 << 9;
          if (v44)
          {
            v65 = 0;
            v66 = -(v62 << v192);
            v67 = -(v61 << v192);
            v68 = v67 >> 16;
            v69 = v67;
            v70 = v66 >> 16;
            v71 = v66;
            v72 = v57;
            do
            {
              v73 = *v72--;
              *(&v207 + v65) += v68 * v73 + ((v69 * v73) >> 16);
              v74 = v59[v65];
              *(v205 + v65) += v70 * v74 + ((v71 * v74) >> 16);
              v75 = v204[v65] >> 16;
              v76 = v204[v65];
              v63 += v75 * v73 + ((v76 * v73) >> 16);
              v64 += v75 * v74 + ((v76 * v74) >> 16);
              ++v65;
            }

            while (v44 != v65);
          }

          v77 = 0;
          v78 = v58;
          do
          {
            v79 = *v78--;
            v202[v77] += (-v63 << v195 >> 16) * v79 + (((-v63 << v195) * v79) >> 16);
            v80 = v59[v77 - 1];
            v200[v77++] += (-v64 << v195 >> 16) * v80 + (((-v64 << v195) * v80) >> 16);
          }

          while (v52 != v77);
          ++v56;
          v59 = (v59 + v48);
          v57 = (v57 + v48);
          v58 = (v58 + v48);
          v49 = v196;
        }

        while (v56 != a7);
      }

      v102 = *(&v207 + v44);
      v103 = *(v205 + v44);
      v104 = v202[0] + v200[0];
      v105 = 0;
      if (v44)
      {
        v106 = v204;
        v107 = 1;
        v108 = v44;
        do
        {
          v110 = *v106++;
          v109 = v110;
          if (v110 >= 0)
          {
            v111 = v109;
          }

          else
          {
            v111 = -v109;
          }

          v112 = __clz(v111 | 0x800000);
          v113 = v109 << (v112 - 1);
          v112 = 8 - v112;
          v102 += (v204[v108 + 15] * v113) >> 32 << v112;
          v103 += (*(&v206 + v108 + 3) * v113) >> 32 << v112;
          v105 += (v200[v108] * v113) >> 32 << v112;
          v104 += ((v202[v107] + v200[v107]) * v113) >> 32 << v112;
          ++v107;
          --v108;
        }

        while (v108);
      }

      v114 = v44 + 1;
      v202[v44 + 1] = v102;
      v200[v44 + 1] = v103;
      v115 = -2 * (v103 + v105);
      v116 = v115 < 0 ? 2 * (v103 + v105) : -2 * (v103 + v105);
      if (v116 >= v104)
      {
        v128 = v115 > 0 ? 0x7FFFFFFF : 0x80000000;
      }

      else
      {
        v117 = __clz(v116);
        v118 = __clz(v104);
        v119 = v104 << (v118 - 1);
        v120 = 0x1FFFFFFF / (v119 >> 16);
        v121 = v120 * (v115 << (v117 - 1) >> 16) + ((v120 * ((v115 << (v117 - 1)) & 0xFFFE)) >> 16);
        v122 = (v115 << (v117 - 1)) - (((v121 * v119) >> 29) & 0xFFFFFFF8);
        v123 = v121 + (v122 >> 16) * v120 + (((v122 & 0xFFFE) * v120) >> 16);
        v124 = v117 - v118;
        if (v124 > 1)
        {
          v128 = v123 >> (v124 - 2);
        }

        else
        {
          v125 = 2 - v124;
          v126 = 0x80000000 >> v125;
          if (v123 > 0x80000000 >> v125)
          {
            v126 = v123;
          }

          v127 = v123 <= (0x7FFFFFFFu >> v125) ? v126 : 0x7FFFFFFFu >> v125;
          v128 = v127 << v125;
        }
      }

      v129 = (((0x40000000 - ((v128 * v128) >> 32)) * v185) >> 30) & 0xFFFFFFFC;
      v130 = v129;
      if (v129 <= a5)
      {
        if (v185 >= 0)
        {
          v131 = v185;
        }

        else
        {
          v131 = -v185;
        }

        v132 = __clz(v131);
        v133 = v185 << (v132 - 1);
        v134 = 0x1FFFFFFF / (v133 >> 16);
        v135 = v134 * (a5 << (v181 - 1) >> 16) + ((v134 * (a5 << (v181 - 1))) >> 16);
        v136 = (a5 << (v181 - 1)) - (((v135 * v133) >> 29) & 0xFFFFFFF8);
        v137 = v135 + (v136 >> 16) * v134 + ((v136 * v134) >> 16);
        v138 = v181 - v132;
        v139 = v137 >> (v138 - 1);
        v140 = 0x80000000 >> (1 - v138);
        if (v137 > v140)
        {
          v140 = v137;
        }

        if (v137 <= (0x7FFFFFFFu >> (1 - v138)))
        {
          v141 = v140;
        }

        else
        {
          v141 = 0x7FFFFFFFu >> (1 - v138);
        }

        v142 = v141 << (1 - v138);
        if (v138 > 0)
        {
          v142 = v139;
        }

        v143 = 0x40000000 - v142;
        if (v142 <= 0x3FFFFFFF)
        {
          v145 = __clz(v143);
          v146 = v143;
          if (v145 != 24)
          {
            if (v143 <= 0x7F)
            {
              v146 = (v143 >> (56 - v145)) | (v143 << (v145 - 24));
            }

            else
            {
              v146 = (v143 << (v145 + 8)) | (v143 >> (24 - v145));
            }
          }

          if (v145)
          {
            v147 = 0x8000;
          }

          else
          {
            v147 = 46214;
          }

          v144 = (v147 >> (v145 >> 1)) + ((213 * (v147 >> (v145 >> 1)) * (v146 & 0x7F)) >> 16);
        }

        else
        {
          v144 = 0;
        }

        v148 = ((v143 / v144 + v144) << 15) & 0xFFFF0000;
        if (v115 >= 0)
        {
          v128 = v148;
        }

        else
        {
          v128 = -v148;
        }

        v130 = a5;
      }

      if (v44)
      {
        v149 = 0;
        v150 = v186;
        do
        {
          v151 = v204[v149];
          v152 = *(v204 + v150);
          v204[v149] = (((v152 * v128) >> 31) & 0xFFFFFFFE) + v151;
          *(v204 + v150) = (((v151 * v128) >> 31) & 0xFFFFFFFE) + v152;
          ++v149;
          v150 -= 4;
        }

        while (v149 < v114 >> 1);
      }

      v204[v44] = v128 >> 6;
      if (v129 <= a5)
      {
        break;
      }

      v153 = 0;
      v154 = v184;
      v155 = v191;
      do
      {
        v156 = v202[v153];
        v157 = *v154;
        v202[v153] = (((*v154 * v128) >> 31) & 0xFFFFFFFE) + v156;
        *v154-- = (((v156 * v128) >> 31) & 0xFFFFFFFE) + v157;
        ++v153;
      }

      while (v53 != v153);
      ++v52;
      ++v53;
      ++v188;
      --v189;
      ++v187;
      v51 = v186 + 4;
      v50 = v184 + 1;
      ++v44;
      v54 = v130;
      v45 = v182;
      if (v114 == v191)
      {
        v43 = v202[0];
        v158 = &v203;
        v159 = 0x10000;
        v160 = v204;
        v161 = a3;
        LODWORD(v42) = v176;
        do
        {
          v162 = *v160++;
          v163 = (v162 >> 8) + 1;
          v164 = *v158++;
          v165 = (v163 >> 1);
          v166 = ((v163 >> 16) + 1) >> 1;
          v43 += v165 * (v164 >> 16) + v166 * v164 + ((v165 * v164) >> 16);
          v159 += v165 * (v163 >> 17) + v166 * (v163 >> 1) + ((v165 * (v163 >> 1)) >> 16);
          *v161++ = -(v163 >> 1);
          --v155;
        }

        while (v155);
        goto LABEL_111;
      }
    }

    v169 = v191;
    if (v114 < v191)
    {
      bzero(&v204[v44 + 1], 4 * (v191 - v44 - 2) + 4);
    }

    v170 = v204;
    v172 = v177;
    v171 = a3;
    do
    {
      v173 = *v170++;
      *v171++ = -(((v173 >> 8) + 1) >> 1);
      --v169;
    }

    while (v169);
    v168 = v182;
    if (v182 <= 0)
    {
      if (a7 >= 1)
      {
        do
        {
          v175 = silk_inner_prod_aligned(v49, v49, v191);
          v168 = HIDWORD(v198);
          v172 = v198 - (v175 << -BYTE4(v198));
          LODWORD(v198) = v172;
          v49 += v197;
          --v55;
        }

        while (v55);
      }
    }

    else if (a7 >= 1)
    {
      do
      {
        v174 = silk_inner_prod16_aligned_64(v49, v49, v191);
        v168 = HIDWORD(v198);
        v172 = v198 - (v174 >> SBYTE4(v198));
        LODWORD(v198) = v172;
        v49 += v197;
        --v55;
      }

      while (v55);
    }

    v167 = ((v172 * v130) >> 30) & 0xFFFFFFFC;
  }

  *a1 = v167;
  *a2 = -v168;
}

_WORD *silk_scale_copy_vector16(_WORD *result, __int16 *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    do
    {
      v5 = *a2++;
      *result++ = HIWORD(a3) * v5 + ((a3 * v5) >> 16);
      --v4;
    }

    while (v4);
  }

  return result;
}

int *silk_scale_vector32_Q26_lshift_18(int *result, int a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      *result = (*result * a2) >> 8;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t silk_inner_prod_aligned(__int16 *a1, __int16 *a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v4 = a3;
  do
  {
    v6 = *a1++;
    v5 = v6;
    v7 = *a2++;
    v3 = (v3 + v7 * v5);
    --v4;
  }

  while (v4);
  return v3;
}

uint64_t silk_inner_prod16_aligned_64(__int16 *a1, __int16 *a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = a3;
  do
  {
    v6 = *a1++;
    v5 = v6;
    v7 = *a2++;
    v3 += v7 * v5;
    --v4;
  }

  while (v4);
  return v3;
}

uint64_t silk_residual_energy16_covar_FIX(__int16 *a1, int *a2, int *a3, int a4, unsigned int a5, int a6)
{
  *&v47[60] = *MEMORY[0x277D85DE8];
  v6 = 16 - a6;
  v7 = a5;
  if (a5 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = a5;
    v10 = a1;
    do
    {
      v12 = *v10++;
      v11 = v12;
      if (v12 < 0)
      {
        v11 = -v11;
      }

      if (v8 <= v11)
      {
        v8 = v11;
      }

      --v9;
    }

    while (v9);
  }

  v13 = __clz(v8) - 17;
  if (v6 < v13)
  {
    v13 = 16 - a6;
  }

  v14 = *a2;
  if (*a2 <= a2[a5 * a5 - 1])
  {
    v14 = a2[a5 * a5 - 1];
  }

  v15 = __clz((((v14 >> 16) * v8 + ((v14 * v8) >> 16)) >> 4) * a5) - 5;
  if (v13 < v15)
  {
    v15 = v13;
  }

  v16 = v15 & ~(v15 >> 31);
  if (a5 <= 0)
  {
    LODWORD(v22) = 0;
    v20 = v6 - v16;
    v27 = v20 + 1;
    v28 = a4 >> (v20 + 1);
  }

  else
  {
    v17 = v46;
    v18 = a5;
    do
    {
      v19 = *a1++;
      *v17 = v19 << v16;
      v17 += 2;
      --v18;
    }

    while (v18);
    v20 = v6 - v16;
    v21 = v46;
    v22 = a5;
    do
    {
      v24 = *a3++;
      v23 = v24;
      v25 = *v21;
      v21 += 2;
      LODWORD(v18) = v18 + v25 * (v23 >> 16) + ((v25 * v23) >> 16);
      --v22;
    }

    while (v22);
    v26 = 0;
    v27 = v20 + 1;
    v28 = (a4 >> (v20 + 1)) - v18;
    v29 = v47;
    v30 = a2 + 1;
    v31 = a5 - 1;
    do
    {
      v32 = v26 + 1;
      if (v26 + 1 >= v7)
      {
        v33 = 0;
      }

      else
      {
        v33 = 0;
        v34 = v31;
        v35 = v30;
        v36 = v29;
        do
        {
          v38 = *v35++;
          v37 = v38;
          v39 = *v36;
          v36 += 2;
          v33 += v39 * (v37 >> 16) + ((v39 * v37) >> 16);
          --v34;
        }

        while (v34);
      }

      v40 = a2[v26 * v7 + v26];
      v41 = v46[2 * v26];
      v42 = v33 + v41 * (v40 >> 17) + ((v41 * (v40 >> 1)) >> 16);
      LODWORD(v22) = v22 + (v42 >> 16) * v41 + ((v42 * v41) >> 16);
      v29 += 2;
      v30 += v7 + 1;
      --v31;
      v26 = v32;
    }

    while (v32 != v7);
  }

  v43 = (v22 << v20) + v28;
  if (v43 < 1)
  {
    return 1;
  }

  v44 = v43 << v27;
  if (v43 <= 0x7FFFFFFFu >> (v20 + 2))
  {
    return v44;
  }

  else
  {
    return 0x3FFFFFFFLL;
  }
}

void *silk_k2a(void *__src, __int16 *a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 >= 1)
  {
    v4 = __src;
    v5 = 0;
    v6 = 0;
    v7 = a3;
    do
    {
      if (v6)
      {
        __src = memcpy(__dst, v4, 4 * v6);
        v8 = a2[v6];
        v9 = v5;
        v10 = v4;
        do
        {
          *v10++ += (*&v11[v9] >> 15) * v8 + ((2 * (*&v11[v9] & 0x7FFF) * v8) >> 16);
          v9 -= 4;
        }

        while (v9);
      }

      else
      {
        v8 = *a2;
      }

      *(v4 + v6++) = -512 * v8;
      v5 += 4;
    }

    while (v6 != v7);
  }

  return __src;
}

void silk_find_LPC_FIX(uint64_t a1, __int16 *a2, uint64_t a3, int a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v8 = *(a1 + 4664);
  v9 = v8 + *(a1 + 4612);
  *(a1 + 4815) = 4;
  silk_burg_modified(&v22, &v20, v30, a3, a4, v9, *(a1 + 4604), v8);
  if (*(a1 + 4656) && !*(a1 + 4696) && *(a1 + 4604) == 4)
  {
    silk_burg_modified(&v21, &v19, v29, a3 + 4 * v9, a4, v9, 2, *(a1 + 4664));
    v10 = v19 - v20;
    if (v19 - v20 < 0)
    {
      v22 = (v22 >> (v20 - v19)) - v21;
      v20 = v19;
    }

    else if (v10 <= 0x1F)
    {
      v22 -= v21 >> v10;
    }

    silk_A2NLSF(a2, v29, *(a1 + 4664));
    v11 = &v19 - ((4 * v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v11, 4 * v9);
    for (i = 3; i != -1; --i)
    {
      silk_interpolate(v27, (a1 + 4524), a2, i, *(a1 + 4664));
      silk_NLSF2A(v28, v27, *(a1 + 4664));
      silk_LPC_analysis_filter(&v19 - ((4 * v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v28, 2 * v9, *(a1 + 4664));
      silk_sum_sqr_shift(&v26, &v24, &v11[2 * *(a1 + 4664)], v9 - *(a1 + 4664));
      silk_sum_sqr_shift(&v25, &v23, &v11[2 * v9 + 2 * *(a1 + 4664)], v9 - *(a1 + 4664));
      v13 = v24;
      if (v24 - v23 < 0)
      {
        v15 = v26 >> (v23 - v24);
        v26 = v15;
        v14 = v25;
        v13 = v23;
      }

      else
      {
        v14 = v25 >> (v24 - v23);
        v25 = v14;
        v15 = v26;
      }

      v16 = -v13;
      v17 = v14 + v15;
      v18 = v16 - v20;
      if (v16 - v20 < 0)
      {
        if (v18 < 0xFFFFFFE1 || v17 >= v22 >> (v20 - v16))
        {
          continue;
        }
      }

      else if (v17 >> v18 >= v22)
      {
        continue;
      }

      v22 = v17;
      v20 = v16;
      *(a1 + 4815) = i;
    }
  }

  if (*(a1 + 4815) == 4)
  {
    silk_A2NLSF(a2, v30, *(a1 + 4664));
  }
}

void silk_solve_LDL_FIX(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = *MEMORY[0x277D85DE8];
  v8 = 4 * (a2 * a2);
  v85 = &v78 - ((v8 + 15) & 0x3FFFFFFF0);
  bzero(v85, v8);
  v9 = *a1;
  v10 = a1[a2 * a2 - 1];
  if (v10 + *a1 < 0)
  {
    if ((v10 | v9) < 0)
    {
      v11 = v10 + *a1;
    }

    else
    {
      v11 = 0x7FFFFFFF;
    }
  }

  else if ((v10 & v9) < 0 != __OFADD__(v10, v9))
  {
    v11 = 0x80000000;
  }

  else
  {
    v11 = v10 + *a1;
  }

  v12 = (21475 * v11) >> 32;
  if (v12 <= 512)
  {
    v13 = 512;
  }

  else
  {
    v13 = v12;
  }

  if (a2 > 0)
  {
    v79 = a3;
    v80 = a2;
    v84 = 0;
    v14 = v85;
    v15 = a2 + 1;
    v16 = 4 * a2;
    v17 = a2;
    v81 = a4;
    v82 = &v85[v16];
    v83 = a2;
    do
    {
      v18 = 0;
      v19 = v82;
      v20 = v14;
      v21 = 1;
      while (1)
      {
        if (v18)
        {
          v22 = 0;
          v23 = 0;
          do
          {
            v24 = *&v20[4 * v22];
            v25 = v24;
            v26 = ((v24 >> 15) + 1) >> 1;
            v27 = v25 * (*&v87[4 * v22 + 124] >> 16) + ((v25 * *&v87[4 * v22 + 124]) >> 16) + v26 * *&v87[4 * v22 + 124];
            v88[v22] = v27;
            v23 += v27 * v26 + (v27 >> 16) * v25 + ((v27 * v25) >> 16);
            ++v22;
          }

          while (v18 != v22);
        }

        else
        {
          v23 = 0;
        }

        v28 = v18 * v17 + v18;
        v29 = a1[v28] - v23;
        if (v29 < v13)
        {
          break;
        }

        *&v87[4 * v18 + 124] = v29;
        if (v29 >= 0)
        {
          v30 = v29;
        }

        else
        {
          v30 = -v29;
        }

        v31 = __clz(v30);
        v32 = v29 << (v31 - 1);
        v33 = 0x1FFFFFFF / (v32 >> 16);
        v34 = v33 * (v32 >> 16) + ((v33 * v32) >> 16);
        v35 = (v33 << 16) - 8 * v34 * (((v33 >> 15) + 1) >> 1) + ((-8 * v34) >> 16) * v33 + ((((-8 * v34) & 0xFFF8) * v33) >> 16);
        v36 = v35 >> (26 - v31);
        v37 = v31 - 26;
        v38 = 0x80000000 >> v37;
        if (v35 > 0x80000000 >> v37)
        {
          v38 = v35;
        }

        if (v35 <= (0x7FFFFFFFu >> v37))
        {
          v39 = v38;
        }

        else
        {
          v39 = 0x7FFFFFFFu >> v37;
        }

        v40 = v39 << v37;
        if (v30 <= 0x3F)
        {
          v41 = v40;
        }

        else
        {
          v41 = v36;
        }

        v42 = (16 * v41);
        v43 = (((16 * v41) >> 15) + 1) >> 1;
        v44 = 0x1000000 - (v42 * (v29 >> 16) + v43 * v29 + ((v42 * v29) >> 16));
        v45 = v44 * v43 + (v44 >> 16) * v42 + ((-(v42 * HIWORD(v29) + v43 * v29 + ((v42 * v29) >> 16)) * v42) >> 16);
        v46 = &v86[8 * v18];
        *v46 = v41;
        v46[1] = v45;
        *&v14[4 * v28] = 0x10000;
        v47 = v18 + 1;
        if (v18 + 1 < v17)
        {
          v48 = &a1[v18 * v17];
          v49 = v45;
          v50 = v41;
          v51 = ((v41 >> 15) + 1) >> 1;
          v52 = v19;
          v53 = v21;
          v54 = &v85[4 * v18];
          do
          {
            if (v18)
            {
              v55 = 0;
              v56 = 0;
              do
              {
                v56 += *&v52[4 * v55] * (v88[v55] >> 16) + ((*&v52[4 * v55] * v88[v55]) >> 16) + (((*&v52[4 * v55] >> 15) + 1) >> 1) * v88[v55];
                ++v55;
              }

              while (v18 != v55);
            }

            else
            {
              v56 = 0;
            }

            v57 = v48[v53] - v56;
            *&v54[4 * v53 * v17] = ((v57 * v49) >> 32) + ((v57 * v51 + (v57 >> 16) * v50 + (((LOWORD(v48[v53]) - v56) * v50) >> 16)) >> 4);
            ++v53;
            v52 += v16;
          }

          while (v53 != v17);
        }

        ++v21;
        v20 += v16;
        v19 += v16;
        ++v18;
        if (v47 == v17)
        {
          goto LABEL_43;
        }
      }

      v58 = 0;
      v59 = (v84 + 1) * v13 - v29;
      v60 = v17;
      do
      {
        a1[v58] += v59;
        v58 += v15;
        --v60;
      }

      while (v60);
LABEL_43:
      v61 = v83;
      ++v84;
    }

    while (v84 < v83 && v29 < v13);
    v62 = 0;
    v63 = v81;
    v64 = v80;
    v65 = v79;
    do
    {
      if (v62)
      {
        v66 = 0;
        v67 = 0;
        do
        {
          v67 += v88[v66] * (*&v14[4 * v66] >> 16) + ((v88[v66] * *&v14[4 * v66]) >> 16) + (((v88[v66] >> 15) + 1) >> 1) * *&v14[4 * v66];
          ++v66;
        }

        while (v62 != v66);
      }

      else
      {
        v67 = 0;
      }

      v88[v62] = *(v65 + 4 * v62) - v67;
      ++v62;
      v14 += 4 * v17;
    }

    while (v62 != v17);
    v68 = v87;
    v69 = v88;
    v70 = v17;
    do
    {
      *v69 = ((*v69 * *v68) >> 32) + (((*v69 >> 16) * *(v68 - 1) + (((*(v68 - 1) >> 15) + 1) >> 1) * *v69 + ((*v69 * *(v68 - 1)) >> 16)) >> 4);
      ++v69;
      v68 += 2;
      --v70;
    }

    while (v70);
    v71 = v17 - 1;
    v72 = (v61 - 1);
    do
    {
      if (v72 >= (v61 - 1))
      {
        v73 = 0;
      }

      else
      {
        v73 = 0;
        v74 = (v61 << 16) - 0x10000;
        v75 = v71;
        do
        {
          v76 = *&v85[4 * v72 + 4 * (v74 >> 16) * v64];
          v73 += *(v63 + 4 * v75) * (v76 >> 16) + ((*(v63 + 4 * v75) * v76) >> 16) + (((*(v63 + 4 * v75) >> 15) + 1) >> 1) * v76;
          --v75;
          v74 -= 0x10000;
        }

        while (v72 < v75);
      }

      *(v63 + 4 * v72) = v88[v72] - v73;
    }

    while (v72-- > 0);
  }
}

unsigned int *silk_residual_energy_FIX(unsigned int *result, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int *a5, int a6, int a7, int a8)
{
  v32 = a5;
  v36 = a4;
  v9 = result;
  v40 = *MEMORY[0x277D85DE8];
  v38 = a8;
  v10 = a8 + a6;
  v11 = 2 * (a8 + a6);
  v12 = 2 * v11;
  v37 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a7;
  v35 = (a7 >> 1);
  if (v35 >= 1)
  {
    v15 = v11;
    v39 = 0;
    v16 = v37;
    bzero(v37, v12);
    v17 = 0;
    v18 = 2 * v10;
    v33 = &v16[2 * v38];
    v34 = v15;
    do
    {
      silk_LPC_analysis_filter(v37, a3, v36 + 32 * v17, v15, v38);
      v19 = 0;
      v20 = 2 * v17;
      v21 = 1;
      v22 = v33;
      do
      {
        v23 = v21;
        v24 = v19 | v20;
        result = silk_sum_sqr_shift(&v9[v19 | v20], &v39, v22, a6);
        v21 = 0;
        a2[v24] = -v39;
        v22 += v18;
        v19 = 1;
      }

      while ((v23 & 1) != 0);
      LODWORD(v15) = v34;
      a3 += 2 * v34;
      ++v17;
    }

    while (v17 != v35);
  }

  v25 = v32;
  if (v31 >= 1)
  {
    v26 = v31;
    do
    {
      v27 = __clz(*v9);
      v28 = *v25++;
      v29 = __clz(v28) - 1;
      *v9 = ((((v28 << v29) * (v28 << v29)) >> 32) * (*v9 << (v27 - 1))) >> 32;
      ++v9;
      *a2 = v27 + *a2 + 2 * v29 - 65;
      ++a2;
      --v26;
    }

    while (v26);
  }

  return result;
}

double silk_find_pred_coefs_FIX(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v71 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 4604);
  if (v10 >= 1)
  {
    v11 = 0x1FFFFFF;
    v12 = *(a1 + 4604);
    v13 = a2;
    do
    {
      v15 = *v13++;
      v14 = v15;
      if (v11 >= v15)
      {
        v11 = v14;
      }

      --v12;
    }

    while (v12);
    if (v11 >= 0)
    {
      v16 = v11;
    }

    else
    {
      v16 = -v11;
    }

    v17 = __clz(v16);
    v18 = v11 << (v17 - 1);
    v19 = v69;
    v20 = v68;
    v21 = v70;
    v22 = *(a1 + 4604);
    v23 = a2;
    do
    {
      v25 = *v23++;
      v24 = v25;
      if (v25 >= 0)
      {
        v26 = v24;
      }

      else
      {
        v26 = -v24;
      }

      v27 = __clz(v26);
      v28 = v24 << (v27 - 1);
      v29 = 0x1FFFFFFF / (v28 >> 16);
      v30 = v29 * (v18 >> 16) + ((v29 * v18) >> 16);
      v31 = v18 - (((v30 * v28) >> 29) & 0xFFFFFFF8);
      v32 = v30 + (v31 >> 16) * v29 + ((v31 * v29) >> 16);
      v33 = v17 - v27;
      v34 = v32 >> (v33 + 15);
      v35 = 0x80000000 >> (-15 - v33);
      if ((v33 + 29) >= 0x2E)
      {
        v34 = 0;
      }

      if (v32 > v35)
      {
        v35 = v32;
      }

      if (v32 <= (0x7FFFFFFFu >> (-15 - v33)))
      {
        v36 = v35;
      }

      else
      {
        v36 = 0x7FFFFFFFu >> (-15 - v33);
      }

      v37 = v36 << (-15 - v33);
      if (v33 > -16)
      {
        v37 = v34;
      }

      if (v37 <= 363)
      {
        v37 = 363;
      }

      *v21++ = v37;
      *v20 = (v37 * HIWORD(v37) + ((v37 * v37) >> 16)) >> 1;
      v20 += 2;
      *v19++ = 0x10000u / v37;
      --v22;
    }

    while (v22);
  }

  v38 = *(a1 + 4664);
  v39 = 2 * (*(a1 + 4608) + v38 * v10);
  v40 = &v66[-2] - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v40, v39);
  if (*(a1 + 4813) == 2)
  {
    v41 = 100 * v10;
    v42 = (&v66[-2] - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v42, v41);
    silk_find_LTP_FIX(a2 + 80, v42, (a2 + 496), a3, a2 + 124, v68, *(a1 + 4612), v10, *(a1 + 4616), v66);
    silk_quant_LTP_gains(a2 + 80, (a1 + 4788), (a1 + 4816), (a1 + 4688), v42, *(a1 + 4684), *(a1 + 4680), *(a1 + 4604));
    silk_LTP_scale_ctrl_FIX(a1, a2, a5);
    silk_LTP_analysis_filter_FIX(v40, a4 - 2 * *(a1 + 4664), a2 + 80, a2 + 124, v70, *(a1 + 4612), *(a1 + 4604), *(a1 + 4664));
  }

  else
  {
    if (v10 >= 1)
    {
      v43 = 0;
      v44 = (a4 - 2 * v38);
      LODWORD(v45) = *(a1 + 4612);
      v46 = v40;
      do
      {
        silk_scale_copy_vector16(v46, v44, v70[v43], v38 + v45);
        v45 = *(a1 + 4612);
        v38 = *(a1 + 4664);
        v46 += v38 + v45;
        v44 += v45;
        ++v43;
      }

      while (v43 < *(a1 + 4604));
      v10 = *(a1 + 4604);
    }

    bzero((a2 + 80), 10 * v10);
    *(a2 + 496) = 0;
    *(a1 + 4688) = 0;
  }

  if (*(a1 + 4696))
  {
    v47 = 10737418;
  }

  else
  {
    v48 = silk_log2lin(21845 * (*(a2 + 496) >> 16) + ((21845 * *(a2 + 496)) >> 16) + 2048);
    v49 = 10000 * ((((3 * *(a2 + 484) + 0x10000) >> 15) + 1) >> 1) + ((10000 * (3 * *(a2 + 484))) >> 16);
    if (v48 >= 0)
    {
      v50 = v48;
    }

    else
    {
      v50 = -v48;
    }

    v51 = __clz(v50);
    if (v49 >= 0)
    {
      v52 = 10000 * ((((3 * *(a2 + 484) + 0x10000) >> 15) + 1) >> 1) + ((10000 * (3 * *(a2 + 484))) >> 16);
    }

    else
    {
      v52 = -v49;
    }

    v53 = __clz(v52);
    v54 = v49 << (v53 - 1);
    v55 = 0x1FFFFFFF / (v54 >> 16);
    v56 = (v48 << (v51 - 1) >> 16) * v55 + (((v48 << (v51 - 1)) * v55) >> 16);
    v57 = (v48 << (v51 - 1)) - (((v54 * v56) >> 29) & 0xFFFFFFF8);
    v58 = v56 + (v57 >> 16) * v55 + ((v57 * v55) >> 16);
    v59 = v51 - v53;
    if (v59 > -16)
    {
      v47 = v58 >> (v59 + 15);
    }

    else
    {
      v60 = -15 - v59;
      v61 = 0x80000000 >> v60;
      if (v58 > 0x80000000 >> v60)
      {
        v61 = v58;
      }

      if (v58 <= (0x7FFFFFFFu >> v60))
      {
        v62 = v61;
      }

      else
      {
        v62 = 0x7FFFFFFFu >> v60;
      }

      v47 = v62 << v60;
    }
  }

  silk_find_LPC_FIX(a1, v67, v40, v47);
  silk_process_NLSFs(a1, (a2 + 16), v67, (a1 + 4524));
  silk_residual_energy_FIX((a2 + 500), (a2 + 516), v40, a2 + 16, v69, *(a1 + 4612), *(a1 + 4604), *(a1 + 4664));
  result = *v67;
  v64 = v67[1];
  *(a1 + 4524) = v67[0];
  *(a1 + 4540) = v64;
  return result;
}

int32x2_t silk_process_gains_FIX(uint64_t a1, int32x2_t *a2, int a3)
{
  v6 = (a1 + 4096);
  if (*(a1 + 4813) == 2)
  {
    v7 = silk_sigm_Q15((((a2[62].i32[0] - 1536) >> 3) + 1) >> 1);
    if (*(a1 + 4604) >= 1)
    {
      v8 = 0;
      do
      {
        a2->i32[v8] += (a2->i32[v8] >> 16) * -v7 + ((a2->i32[v8] * -v7) >> 16);
        ++v8;
      }

      while (v8 < *(a1 + 4604));
    }
  }

  v9 = silk_log2lin(21627 * ((8894 - *(a1 + 4764)) >> 16) + ((21627 * (8894 - *(a1 + 4764))) >> 16));
  v10 = *(a1 + 4604);
  if (v10 > 0)
  {
    v11 = 0;
    v12 = v9 / *(a1 + 4612);
    v13 = v12;
    v14 = ((v12 >> 15) + 1) >> 1;
    v15 = a2;
    do
    {
      v16 = v15[62].i32[1] * v14 + (v15[62].i32[1] >> 16) * v13 + ((v15[62].i32[1] * v13) >> 16);
      v17 = v15[64].i32[1];
      v18 = v16 << -v17;
      if (v16 >= (0x7FFFFFFFu >> -v17))
      {
        v18 = 0x7FFFFFFF;
      }

      v19 = ((v16 >> (v17 - 1)) + 1) >> 1;
      v20 = (v16 & 1) + (v16 >> 1);
      if (v17 != 1)
      {
        v20 = v19;
      }

      if (v17 >= 1)
      {
        v21 = v20;
      }

      else
      {
        v21 = v18;
      }

      v22 = v15->i32[0];
      v23 = v21 + ((v22 * v22) >> 32);
      if (v23 >= 0x7FFFFFFF)
      {
        v24 = 0x7FFFFFFF;
      }

      else
      {
        v24 = v21 + ((v22 * v22) >> 32);
      }

      if (v21 >= 0)
      {
        v23 = v24;
      }

      if (v23 > 32766)
      {
        v30 = __clz(v23);
        v31 = __ROR4__(v23, 24 - v30) & 0x7F;
        if (v30)
        {
          v32 = 0x8000;
        }

        else
        {
          v32 = 46214;
        }

        v33 = (v32 >> (v30 >> 1)) + ((213 * (v32 >> (v30 >> 1)) * v31) >> 16);
        if (v33 >= 0x7FFF)
        {
          v33 = 0x7FFF;
        }

        v29 = v33 << 16;
      }

      else
      {
        v25 = v22 * (v22 >> 16) + (v21 << 16) + ((v22 * v22) >> 16) + (((v22 >> 15) + 1) >> 1) * v22;
        if (v25 < 1)
        {
          v29 = 0;
        }

        else
        {
          v26 = __clz(v25);
          if (v26 != 24)
          {
            if (v25 <= 0x7F)
            {
              LOBYTE(v25) = (v25 >> (56 - v26)) | (v25 << (v26 - 24));
            }

            else
            {
              LOBYTE(v25) = (v25 << (v26 + 8)) | (v25 >> (24 - v26));
            }
          }

          v27 = v25 & 0x7F;
          if (v26)
          {
            v28 = 0x8000;
          }

          else
          {
            v28 = 46214;
          }

          v29 = ((v28 >> (v26 >> 1)) + ((213 * (v28 >> (v26 >> 1)) * v27) >> 16)) << 8;
        }
      }

      v15->i32[0] = v29;
      v15 = (v15 + 4);
      ++v11;
      v10 = *(a1 + 4604);
    }

    while (v11 < v10);
  }

  memcpy(&a2[66] + 4, a2, 4 * v10);
  a2[68].i8[4] = v6[3128];
  silk_gains_quant(a1 + 4784, a2, (a1 + 7224), a3 == 2, *(a1 + 4604));
  v34 = v6[717];
  if (v34 == 2)
  {
    if (a2[62].i32[0] + (*(a1 + 4760) >> 8) < 129)
    {
      v35 = 1;
      v6[718] = 1;
    }

    else
    {
      v35 = 0;
      v6[718] = 0;
    }
  }

  else
  {
    v35 = v6[718];
  }

  result = vshr_n_s32(vshl_n_s32(a2[60], 0x10uLL), 0x10uLL);
  v37 = vshr_n_s32(vmul_s32(result, 0xFCCE0000FE67), 0x10uLL);
  a2[59].i32[1] = -50 * *(a1 + 4652) + ((52429 * silk_Quantization_Offsets_Q10[2 * (v34 >> 1) + v35]) >> 16) + ((13108 * *(a1 + 4556)) >> 16) - (*(a1 + 4556) + result.i32[0] + result.i32[1]) + v37.i32[0] + v37.i32[1] + 1229;
  return result;
}

uint64_t silk_encode_do_VAD_FIX(uint64_t a1)
{
  result = silk_VAD_GetSA_Q8(a1, a1 + 5146);
  if (*(a1 + 4556) > 12)
  {
    *(a1 + 6132) = 0;
    v4 = 1;
    *(a1 + 4813) = 1;
  }

  else
  {
    *(a1 + 4813) = 0;
    v3 = *(a1 + 6136);
    *(a1 + 6136) = v3 + 1;
    if (v3 >= 9)
    {
      if (v3 < 0x1E)
      {
        v4 = 0;
        goto LABEL_7;
      }

      *(a1 + 6136) = 10;
    }

    v4 = 0;
    *(a1 + 6132) = 0;
  }

LABEL_7:
  *(a1 + *(a1 + 5796) + 4768) = v4;
  return result;
}

uint64_t silk_encode_frame_FIX(int32x2_t *a1, int *a2, uint64_t *a3, int a4, signed int a5, int a6)
{
  v72 = a6;
  v85 = a5;
  v74 = a4;
  v76 = a3;
  v63 = a2;
  v104 = *MEMORY[0x277D85DE8];
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  memset(v93, 0, sizeof(v93));
  memset(v92, 0, sizeof(v92));
  v91 = 0u;
  memset(v103, 0, 28);
  v102 = 0;
  v101 = 0uLL;
  memset(v86, 0, 512);
  v7 = a1[580].i32[1];
  a1[580].i32[1] = v7 + 1;
  v82 = a1 + 512;
  a1[602].i8[2] = v7 & 3;
  v8 = a1[577].i32[0];
  v62 = &a1[1044] + 4;
  v9 = &a1[1044] + 2 * v8 + 4;
  silk_LP_variable_cutoff(&a1[2], &a1[643] + 2, a1[576].i32[0]);
  memcpy((v9 + 10 * a1[575].i32[0]), &a1[643] + 2, 2 * a1[576].i32[0]);
  if (!a1[589].i32[0])
  {
    v80 = a1 + 598;
    v11 = a1[577].i32[0];
    v12 = 2 * (a1[576].i32[0] + a1[577].i32[1] + v11);
    v13 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    bzero(v13, v12);
    silk_find_pitch_lags_FIX(a1, &v91, v13, v9);
    silk_noise_shape_analysis_FIX(a1, &v91, &v13[2 * v11], v9, a1[642].i32[1]);
    LODWORD(v11) = v74;
    silk_find_pred_coefs_FIX(a1, &v91, v13, v9, v74);
    silk_process_gains_FIX(a1, &v91, v11);
    v14 = 4 * a1[576].i32[0];
    v15 = &v58[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
    bzero(v15, v14);
    v71 = v15;
    silk_prefilter_FIX(a1, &v91, v15, v9);
    if (a1[768].i32[0] && a1[569].i32[1] >= 78)
    {
      v16 = a1[724].i32[1];
      v17 = &a1[769] + 36 * v16;
      a1[596].i32[v16 + 1] = 1;
      memcpy(v100, &a1[18], sizeof(v100));
      v19 = *v80->i8;
      v18 = *v80[2].i8;
      *(v17 + 32) = v80[4].i32[0];
      *v17 = v19;
      *(v17 + 16) = v18;
      v20 = a1[575].i32[1];
      __memcpy_chk();
      v21 = a1[724].i32[1];
      if (!v21 || !a1[596].i32[v21])
      {
        v82[58].i8[4] = v82[391].i8[0];
        v22 = (*v17 + a1[768].i8[4]);
        if (v22 >= 63)
        {
          LOBYTE(v22) = 63;
        }

        *v17 = v22;
        v20 = a1[575].i32[1];
      }

      silk_gains_dequant(&v91, v17, &a1[570] + 4, v74 == 2, v20);
      if (a1[581].i32[1] <= 1 && a1[588].i32[0] < 1)
      {
        silk_NSQ(a1, v100, v17, v71, &a1[40 * a1[724].i32[1] + 782] + 4, v92, v93, &v93[11] + 12, &v95 + 12, &v94 + 12, &v93[19] + 12, &v91, &v93[2] + 12, SWORD6(v96), SHIWORD(v96), SWORD4(v93[2]));
      }

      else
      {
        silk_NSQ_del_dec(a1, v100, v17, v71, &a1[40 * a1[724].i32[1] + 782] + 4, v92, v93, &v93[11] + 12, &v95 + 12, &v94 + 12, &v93[19] + 12, &v91, &v93[2] + 3, SHIDWORD(v96), SWORD4(v93[2]));
      }

      __memcpy_chk();
    }

    v90 = 0;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v23 = silk_gains_ID(v80, a1[575].i32[1]);
    v24 = *(v76 + 1);
    v87 = *v76;
    v88 = v24;
    v89 = *(v76 + 2);
    v90 = v76[6];
    memcpy(v100, &a1[18], sizeof(v100));
    v25 = v82[90].u8[2];
    v60 = a1[727].u16[2];
    v61 = v25;
    v59 = a1[727].i32[0];
    v66 = &v58[-1280];
    bzero(&v58[-1280], 0x4FBuLL);
    v65 = 0;
    v81 = 0;
    v26 = 0;
    v27 = 0;
    v84 = 0;
    v28 = 0;
    v79 = 0;
    v64 = 0;
    v69 = &v94 + 12;
    v70 = &v95 + 12;
    v67 = &v93[2] + 3;
    v68 = &v93[19] + 12;
    v75 = v85 - 5;
    LOWORD(v29) = 256;
    v83 = -1;
    v77 = v74 == 2;
    v78 = -1;
    while (1)
    {
      v30 = v84;
      if (v23 != v83)
      {
        v30 = v81;
        if (v23 != v78)
        {
          v31 = v26;
          if (v27)
          {
            v32 = v88;
            v33 = v76;
            *v76 = v87;
            *(v33 + 1) = v32;
            *(v33 + 2) = v89;
            v33[6] = v90;
            memcpy(&a1[18], v100, 0x111CuLL);
            v82[90].i8[2] = v61;
            v34 = v59;
            a1[727].i16[2] = v60;
            a1[727].i32[0] = v34;
          }

          v73 = v28;
          if (a1[581].i32[1] <= 1 && a1[588].i32[0] < 1)
          {
            silk_NSQ(a1, a1 + 18, v80, v71, &a1[602] + 4, v92, v93, &v93[11] + 12, v70, v69, v68, &v91, v67, SWORD6(v96), SHIWORD(v96), SWORD4(v93[2]));
          }

          else
          {
            silk_NSQ_del_dec(a1, &a1[18], v80, v71, &a1[602] + 4, v92, v93, &v93[11] + 12, v70, v69, v68, &v91, v67, SHIDWORD(v96), SWORD4(v93[2]));
          }

          v35 = v76;
          silk_encode_indices(a1, v76, a1[724].i32[1], 0, v74);
          silk_encode_pulses(v35, v82[89].i8[5], v82[89].i8[6], &a1[602] + 4, a1[576].i32[0]);
          v30 = *(v35 + 6) + __clz(*(v35 + 8)) - 32;
          if (v27 | v72)
          {
            v28 = v73;
            v26 = v31;
          }

          else
          {
            v28 = v73;
            v26 = v31;
            if (v30 <= v85)
            {
              goto LABEL_2;
            }
          }
        }
      }

      if (v27 == 6)
      {
        break;
      }

      if (v30 <= v85)
      {
        if (v30 >= v75)
        {
          goto LABEL_2;
        }

        v28 = v29;
        if (v23 != v83)
        {
          v103[0] = *v76;
          *(v103 + 12) = *(v76 + 12);
          v37 = *(v76 + 7);
          v101 = *(v76 + 2);
          v102 = v76[6];
          v65 = v37;
          __memcpy_chk();
          memcpy(v86, &a1[18], 0x111CuLL);
          v64 = v82[391].u8[0];
        }

        v26 = 1;
        v83 = v23;
        v84 = v30;
        v36 = HIDWORD(v81);
      }

      else if (v26 || v27 < 2)
      {
        v78 = v23;
        v79 = v29;
        v36 = 1;
        LODWORD(v81) = v30;
      }

      else
      {
        v36 = 0;
        v26 = 0;
        HIDWORD(v96) += SHIDWORD(v96) >> 1;
        v78 = -1;
      }

      HIDWORD(v81) = v36;
      v38 = v26;
      if ((v26 & v36) != 0)
      {
        v39 = ((v79 - v28) * (v85 - v84) / (v81 - v84) + v28);
        v29 = v28 + ((v79 - v28) >> 2);
        if (v39 <= v29)
        {
          if (v39 >= v79 - ((v79 - v28) >> 2))
          {
            LOWORD(v29) = (v79 - v28) * (v85 - v84) / (v81 - v84) + v28;
          }

          else
          {
            LOWORD(v29) = v79 - ((v79 - v28) >> 2);
          }
        }
      }

      else
      {
        v40 = v85;
        v41 = silk_log2lin(((v30 - v85) << 7) / a1[576].i32[0] + 2048);
        if (v41 >= 0x20000)
        {
          v42 = 0x20000;
        }

        else
        {
          v42 = v41;
        }

        if (v42 <= 85197)
        {
          v43 = 85197;
        }

        else
        {
          v43 = v42;
        }

        if (v30 > v40)
        {
          v42 = v43;
        }

        v29 = HIWORD(v42) * v29 + ((v42 * v29) >> 16);
      }

      v44 = a1[575].i32[1];
      if (v44 >= 1)
      {
        v45 = &v91;
        v46 = a1[575].u32[1];
        do
        {
          v47 = (v45[133] >> 16) * v29 + ((v45[133] * v29) >> 16);
          v48 = v47 << 8;
          if (v47 < -8388608)
          {
            v48 = 0x80000000;
          }

          if (v47 < 0x800000)
          {
            v49 = v48;
          }

          else
          {
            v49 = 2147483392;
          }

          *v45++ = v49;
          --v46;
        }

        while (v46);
      }

      v50 = v82;
      v82[391].i8[0] = v99;
      v51 = v80;
      silk_gains_quant(v80, &v91, &v50[391], v77, v44);
      v23 = silk_gains_ID(v51, a1[575].i32[1]);
      ++v27;
      v26 = v38;
    }

    v54 = v23 == v83 || v30 > v85;
    if (v26 && v54)
    {
      v55 = v76;
      *v76 = v103[0];
      *(v55 + 12) = *(v103 + 12);
      v57 = v65;
      v56 = v66;
      *(v55 + 7) = v65;
      *(v55 + 2) = v101;
      v55[6] = v102;
      memcpy(*v55, v56, v57);
      memcpy(&a1[18], v86, 0x111CuLL);
      v82[391].i8[0] = v64;
    }
  }

LABEL_2:
  memmove(v62, &v62[2 * a1[576].i32[0]], 2 * (5 * a1[575].i32[0] + a1[577].i32[0]));
  if (a1[589].i32[0])
  {
    v10 = 0;
  }

  else
  {
    a1[571].i32[0] = *(&v93[2] + a1[575].i32[1] + 2);
    v82[58].i8[5] = v82[89].i8[5];
    a1[587].i32[0] = 0;
    v10 = (*(v76 + 6) + __clz(*(v76 + 8)) - 25) >> 3;
  }

  *v63 = v10;
  return 0;
}

uint64_t silk_LTP_analysis_filter_FIX(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  if (a7 >= 1)
  {
    v8 = 0;
    v9 = (a8 + a6);
    v10 = 2 * a6;
    v11 = a7;
    do
    {
      if (v9 >= 1)
      {
        v12 = 0;
        v13 = (a3 + 10 * v8);
        v14 = *(v13 + 1);
        v15 = *v13;
        v16 = HIWORD(*(a5 + 4 * v8));
        v17 = *(a5 + 4 * v8);
        v18 = vmovl_s16(v14);
        v19 = -2 * *(a4 + 4 * v8);
        do
        {
          v20 = *(a2 + 2 * v12);
          *(result + 2 * v12) = v20;
          v21 = v20 - (((vaddvq_s32(vmlaq_s32((v15 * *(a2 + v19 + 4)), v18, vmovl_s16(vrev64_s16(*(a2 + v19 - 4))))) >> 13) + 1) >> 1);
          if (v21 <= -32768)
          {
            v21 = -32768;
          }

          if (v21 >= 0x7FFF)
          {
            v21 = 0x7FFF;
          }

          *(result + 2 * v12++) = v21 * v16 + ((v21 * v17) >> 16);
          v19 += 2;
        }

        while (v9 != v12);
      }

      ++v8;
      result += 2 * v9;
      a2 += v10;
    }

    while (v8 != v11);
  }

  return result;
}

uint64_t silk_regularize_correlations_FIX(uint64_t result, _DWORD *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = a4;
    do
    {
      *(result + 4 * v4) += a3;
      v4 += a4 + 1;
      --v5;
    }

    while (v5);
  }

  *a2 += a3;
  return result;
}

uint64_t silk_autocorr(unsigned int *a1, _DWORD *a2, char *a3, int a4, int a5)
{
  if (a4 >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = a4;
  }

  result = _celt_autocorr(a3, a1, 0, 0, v6 - 1, a4);
  *a2 = result;
  return result;
}

uint64_t silk_find_LTP_FIX(uint64_t result, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, __int16 *a6, int a7, int a8, int a9, int *a10)
{
  v10 = a3;
  v11 = result;
  v12 = a10;
  v166 = *MEMORY[0x277D85DE8];
  v159 = 0;
  if (a8 < 1)
  {
    v47 = 0;
    if (!a3)
    {
      goto LABEL_65;
    }

    goto LABEL_43;
  }

  v14 = 0;
  v15 = (a4 + 2 * a9);
  v153 = 655 * (a7 >> 16) + ((655 * a7) >> 16);
  v152 = a7;
  v16 = result;
  v151 = a8;
  v154 = a8;
  do
  {
    v17 = *(a5 + 4 * v14);
    v18 = &v160[v14];
    silk_sum_sqr_shift(v18, &v159, v15, a7);
    v19 = *v18;
    v157 = v18;
    if (*v18 >> 30)
    {
      v20 = __clz(v19);
      v21 = v19 >> 1;
      v22 = (*v18 & 1) + (*v18 >> 1);
      v23 = (v21 + 1) >> 1;
      if (v20 != 1)
      {
        v22 = v23;
      }

      *v18 = v22;
      v24 = v159 - v20 + 2;
      v159 = v24;
    }

    else
    {
      v24 = v159;
    }

    v25 = &v15[-2 - v17];
    v26 = v14;
    v27 = &v12[v14];
    *v27 = v24;
    silk_corrMatrix_FIX(v25, a7, 5u, 2, a2, v27);
    silk_corrVector_FIX(v25, v15, a7, 5, v161, *v27);
    v28 = v160[v26];
    if (*v27 > v159)
    {
      v28 >>= *v27 - v159;
      *v157 = v28;
    }

    silk_regularize_correlations_FIX(a2, v157, ((1092 * v28) >> 16) + ((1092 * *a2) >> 16) + ((1092 * a2[24]) >> 16) + 1092 * ((*a2 >> 16) + (v28 >> 16) + (a2[24] >> 16)) + 1, 5);
    silk_solve_LDL_FIX(a2, 5, v161, v165);
    for (i = 0; i != 5; ++i)
    {
      v30 = ((v165[i] >> 1) + 1) >> 1;
      if (v30 <= -32768)
      {
        v30 = -32768;
      }

      if (v30 >= 0x7FFF)
      {
        LOWORD(v30) = 0x7FFF;
      }

      v16[i] = v30;
    }

    v31 = silk_residual_energy16_covar_FIX(v16, a2, v161, v160[v26], 5u, 14);
    v32 = 0;
    v33 = 0;
    v163[v26] = v31;
    if (*v27 >= 2)
    {
      LOBYTE(v34) = 2;
    }

    else
    {
      v34 = *v27;
    }

    v35 = v34 + 1;
    v36 = *&a6[2 * v26];
    v37 = v36 * (v31 >> 16) + ((v36 * v31) >> 16);
    v38 = v36 << 16;
    if (v37 <= 0x80000000 >> (v34 + 1))
    {
      v39 = 0x80000000 >> (v34 + 1);
    }

    else
    {
      v39 = v36 * (v31 >> 16) + ((v36 * v31) >> 16);
    }

    if (v37 > (0x7FFFFFFFu >> (v34 + 1)))
    {
      v39 = 0x7FFFFFFFu >> (v34 + 1);
    }

    v40 = *v27 - v34;
    v41 = (v39 << v35) + (v153 >> v40);
    if (v41 <= 1)
    {
      v41 = 1;
    }

    v42 = v40 + 5;
    do
    {
      if (a2[v32] > v33)
      {
        v33 = a2[v32];
      }

      ++v32;
    }

    while (v32 != 25);
    v43 = (v38 / v41) >> v42;
    v44 = 16 << __clz(v33);
    if (v43 < v44)
    {
      v44 = v43;
    }

    if (v33 <= 0x1F)
    {
      v45 = v43;
    }

    else
    {
      v45 = v44;
    }

    result = silk_scale_vector32_Q26_lshift_18(a2, v45, 25);
    v162[v26] = a2[12];
    v15 += v152;
    v16 += 5;
    a2 += 25;
    v14 = v26 + 1;
    v46 = v154;
    v12 = a10;
  }

  while (v26 + 1 != v154);
  v47 = 0;
  v48 = a10;
  a8 = v151;
  v10 = a3;
  do
  {
    v50 = *v48++;
    v49 = v50;
    if (v50 > v47)
    {
      v47 = v49;
    }

    --v46;
  }

  while (v46);
  if (a3)
  {
LABEL_43:
    if (a8 < 1)
    {
      v56 = a8;
      v52 = 0;
      v51 = 0;
    }

    else
    {
      v51 = 0;
      v52 = 0;
      v53 = v163;
      v54 = v160;
      v55 = v12;
      v56 = a8;
      v57 = a8;
      v58 = a6;
      do
      {
        v60 = *v54++;
        v59 = v60;
        v61 = v60 >> 16;
        v63 = *v58;
        v58 += 2;
        v62 = v63;
        v64 = v63 * v61 + ((v63 * v59) >> 16) + 1;
        v65 = *v55++;
        LOBYTE(v61) = v47 - v65 + 1;
        v52 += v64 >> v61;
        v66 = *v53++;
        v51 += ((v66 >> 16) * v62 + ((v66 * v62) >> 16) + 1) >> v61;
        --v57;
      }

      while (v57);
    }

    if (v51 <= 1)
    {
      v51 = 1;
    }

    if (v52 >= 0)
    {
      v67 = v52;
    }

    else
    {
      v67 = -v52;
    }

    v68 = __clz(v67);
    v69 = v52 << (v68 - 1);
    v70 = __clz(v51);
    v71 = v51 << (v70 - 1);
    v72 = 0x1FFFFFFF / (v71 >> 16);
    v73 = v72 * (v69 >> 16) + ((v72 * v69) >> 16);
    v74 = v69 - (((v73 * v71) >> 29) & 0xFFFFFFF8);
    v75 = v73 + (v74 >> 16) * v72 + ((v74 * v72) >> 16);
    v76 = v68 - v70;
    if (v68 - v70 + 13 >= 0x20)
    {
      v77 = 0;
    }

    else
    {
      v77 = v75 >> (v76 + 13);
    }

    v78 = 0x80000000 >> (-13 - v76);
    if (v75 > v78)
    {
      v78 = v75;
    }

    if (v75 <= (0x7FFFFFFFu >> (-13 - v76)))
    {
      v79 = v78;
    }

    else
    {
      v79 = 0x7FFFFFFFu >> (-13 - v76);
    }

    v80 = v79 << (-13 - v76);
    if (v76 <= -14)
    {
      v81 = v80;
    }

    else
    {
      v81 = v77;
    }

    result = silk_lin2log(v81);
    *v10 = ((result - 2048) << 16 >> 15) + (result - 2048);
    a8 = v56;
  }

LABEL_65:
  if (a8 < 1)
  {
    v88 = 0;
    v98 = -11;
  }

  else
  {
    v82 = 0;
    v83 = v11;
    v84 = a8;
    do
    {
      v85 = 0;
      v86 = 0;
      do
      {
        v86 += *(v83 + v85);
        v85 += 2;
      }

      while (v85 != 10);
      v164[v82] = v86;
      v83 += 10;
      ++v82;
    }

    while (v82 != a8);
    v87 = 0;
    v88 = 0;
    v89 = v162;
    v90 = v164;
    v91 = v12;
    do
    {
      v93 = *v90++;
      v92 = v93;
      if (v93 < 0)
      {
        v92 = -v92;
      }

      if (v88 <= v92)
      {
        v88 = v92;
      }

      v94 = *v89++;
      v95 = __clz(v94);
      v96 = *v91++;
      v97 = v96 - v47 - v95 + 32;
      if (v87 <= v97)
      {
        v87 = v97;
      }

      --v84;
    }

    while (v84);
    v98 = v87 - 11;
  }

  v99 = v47 + __clz(v88);
  v100 = ((v98 - v99) & ~((v98 - v99) >> 31)) + v47;
  v101 = (0x106u >> (((v98 - v99) & ~((v98 - v99) >> 31)) + v47)) + 1;
  if (a8 < 1)
  {
    v102 = 0;
  }

  else
  {
    v102 = 0;
    v103 = v164;
    v104 = v162;
    v105 = v12;
    v106 = a8;
    do
    {
      v108 = *v104++;
      v107 = v108;
      v109 = *v105++;
      v110 = v107 >> (v100 - v109);
      v101 += v110;
      v111 = *v103++;
      result = v110 * v111;
      v102 += 4 * ((v110 >> 16) * v111 + (result >> 16) + (((v111 >> 15) + 1) >> 1) * v110);
      --v106;
    }

    while (v106);
  }

  if (v102 >= 0)
  {
    v112 = v102;
  }

  else
  {
    v112 = -v102;
  }

  v113 = __clz(v112);
  v114 = v102 << (v113 - 1);
  if (v101 >= 0)
  {
    v115 = v101;
  }

  else
  {
    v115 = -v101;
  }

  v116 = __clz(v115);
  v117 = v101 << (v116 - 1);
  v118 = 0x1FFFFFFF / (v117 >> 16);
  v119 = v118 * (v114 >> 16) + ((v118 * (v114 & 0xFFFC)) >> 16);
  v120 = v114 - (((v119 * v117) >> 29) & 0xFFFFFFF8);
  v121 = v119 + (v120 >> 16) * v118 + (((v120 & 0xFFFC) * v118) >> 16);
  v122 = v113 - v116;
  if ((v122 + 17) >= 0x20)
  {
    v123 = 0;
  }

  else
  {
    v123 = v121 >> (v122 + 17);
  }

  v124 = 0x80000000 >> (-17 - v122);
  if (v121 > v124)
  {
    v124 = v121;
  }

  if (v121 <= (0x7FFFFFFFu >> (-17 - v122)))
  {
    v125 = v124;
  }

  else
  {
    v125 = 0x7FFFFFFFu >> (-17 - v122);
  }

  v126 = v125 << (-17 - v122);
  if (v122 <= -18)
  {
    v127 = v126;
  }

  else
  {
    v127 = v123;
  }

  if (a8 >= 1)
  {
    v128 = 0;
    result = 0x7FFFFFFLL;
    v129 = a8;
    do
    {
      v130 = v12[v128];
      if (v130 > 1)
      {
        v132 = v130 - 2;
        v133 = 0x80000000 >> v132;
        v134 = v162[v128];
        if (v134 > 0x80000000 >> v132)
        {
          v133 = v162[v128];
        }

        if (v134 > (0x7FFFFFFFu >> v132))
        {
          v133 = 0x7FFFFFFFu >> v132;
        }

        v131 = v133 << v132;
      }

      else
      {
        v131 = v162[v128] >> (2 - v130);
      }

      v135 = v164[v128] >> 2;
      v136 = v127 - v135;
      if (v127 - v135 < 0)
      {
        v139 = __OFSUB__(v136, -134217728);
        if (v136 <= 0xF8000000)
        {
          v136 = -134217728;
        }

        if ((v135 & ~v127) < 0 != v139)
        {
          v138 = 0x7FFFFFF;
        }

        else
        {
          v138 = v136;
        }
      }

      else
      {
        v137 = __OFSUB__(v136, 0x7FFFFFF);
        if (v136 >= 0x7FFFFFF)
        {
          v136 = 0x7FFFFFF;
        }

        if ((v127 & ~v135) < 0 != v137)
        {
          v138 = -134217728;
        }

        else
        {
          v138 = v136;
        }
      }

      v140 = 0;
      v141 = 0;
      v142 = 16 * (6710887 / (v131 + 6553));
      do
      {
        v143 = *(v11 + 2 * v140);
        if (v143 <= 1638)
        {
          v143 = 1638;
        }

        v164[v140 + 4] = v143;
        v141 += v143;
        ++v140;
      }

      while (v140 != 5);
      v144 = 0;
      v145 = v142 * v138 / v141;
      if (v145 <= -134217728)
      {
        v145 = -134217728;
      }

      if (v145 >= 0x7FFFFFF)
      {
        v146 = 0x7FFFFFF;
      }

      else
      {
        v146 = v145;
      }

      v147 = v146 >> 12;
      v148 = 16 * (v146 & 0xFFF);
      do
      {
        v149 = *(v11 + 2 * v144) + SLOWORD(v164[v144 + 4]) * v147 + ((SLOWORD(v164[v144 + 4]) * v148) >> 16);
        if (v149 <= -16000)
        {
          v149 = -16000;
        }

        if (v149 >= 28000)
        {
          LOWORD(v149) = 28000;
        }

        *(v11 + 2 * v144++) = v149;
      }

      while (v144 != 5);
      v11 += 10;
      ++v128;
    }

    while (v128 != v129);
  }

  return result;
}

uint64_t silk_fit_LTP(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 5; ++i)
  {
    v3 = ((*(result + 4 * i) >> 1) + 1) >> 1;
    if (v3 <= -32768)
    {
      v3 = -32768;
    }

    if (v3 >= 0x7FFF)
    {
      LOWORD(v3) = 0x7FFF;
    }

    *(a2 + 2 * i) = v3;
  }

  return result;
}

_DWORD *silk_warped_LPC_analysis_filter_FIX(_DWORD *result, uint64_t a2, __int16 *a3, uint64_t a4, int a5, int a6, int a7)
{
  if (a6 >= 1)
  {
    v7 = 0;
    v8 = &a3[a7];
    v11 = *a3;
    v9 = a3 + 2;
    v10 = v11;
    v12 = *(v8 - 1);
    v13 = a6;
    do
    {
      v14 = result[1];
      v15 = *result + (v14 >> 16) * a5 + ((v14 * a5) >> 16);
      v16 = *(a4 + 2 * v7);
      v17 = result[2];
      v18 = v14 + ((v17 - v15) >> 16) * a5 + (((v17 - v15) * a5) >> 16);
      *result = v16 << 14;
      result[1] = v15;
      v19 = (a7 >> 1) + (v15 >> 16) * v10 + ((v15 * v10) >> 16);
      if (a7 >= 3)
      {
        v20 = v9;
        v21 = result + 4;
        v22 = 2;
        do
        {
          v23 = *(v21 - 1);
          v24 = v17 + ((v23 - v18) >> 16) * a5 + (((v23 - v18) * a5) >> 16);
          v25 = v18 >> 16;
          v26 = *(v20 - 1);
          v17 = *v21;
          v27 = v18 * v26;
          v22 += 2;
          *(v21 - 2) = v18;
          *(v21 - 1) = v24;
          v18 = v23 + ((v17 - v24) >> 16) * a5 + (((v17 - v24) * a5) >> 16);
          v19 += v25 * v26 + (v27 >> 16) + (v24 >> 16) * *v20 + ((v24 * *v20) >> 16);
          v21 += 2;
          v20 += 2;
        }

        while (v22 < a7);
      }

      result[a7] = v18;
      *(a2 + 4 * v7++) = 4 * v16 - ((((v19 + (v18 >> 16) * v12 + ((v18 * v12) >> 16)) >> 8) + 1) >> 1);
    }

    while (v7 != v13);
  }

  return result;
}

void silk_prefilter_FIX(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8352);
  v9 = *(a1 + 4612);
  v10 = &v46 - ((4 * v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, 4 * v9);
  bzero(v10, 4 * v9);
  LODWORD(v11) = *(a1 + 4604);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = a1 + 7240;
    v56 = a2 + 460;
    v57 = v10 - 4;
    v54 = (&v46 - ((4 * v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v55 = a2 + 428;
    v52 = a2 + 396;
    v53 = a2 + 444;
    v51 = a2 + 140;
    v58 = v54;
    v59 = a2;
    v49 = a2 + 124;
    v50 = a2 + 412;
    v47 = v10 + 4;
    v48 = v10 + 4;
    LODWORD(v14) = v9;
    v15 = a4;
    do
    {
      v63 = a3;
      if (*(a1 + 4813) == 2)
      {
        v8 = *(v49 + 4 * v12);
      }

      v16 = v55;
      v17 = (0x4000 - *(v55 + 4 * v12));
      v18 = v17 * (*(v56 + 4 * v12) >> 16);
      v19 = v17 * *(v56 + 4 * v12);
      v20 = *(v53 + 4 * v12);
      v21 = v18 + (v19 >> 16);
      v60 = *(v52 + 4 * v12);
      v61 = v20;
      v22 = *(a1 + 4704);
      v23 = *(a1 + 4660);
      v24 = v58;
      v62 = v15;
      silk_warped_LPC_analysis_filter_FIX((a1 + 8264), v58, (v51 + 32 * v12), v15, v22, v14, v23);
      v25 = -*(v50 + 4 * v12);
      v26 = (((((410 * *(v59 + 484) + *(v16 + 4 * v12) * v21 + 3355443) >> 16) * v25 + (((410 * *(v59 + 484) + *(v16 + 4 * v12) * v21 + 13107) * v25) >> 16)) >> 13) + 1) >> 1;
      if (v26 <= -32768)
      {
        v26 = -32768;
      }

      if (v26 >= 0x7FFF)
      {
        v26 = 0x7FFF;
      }

      v27 = ((*(v50 + 4 * v12) << 12) + 0x8000) >> 16;
      v28 = v54;
      *v54 = *v24 * v27 + v26 * *(a1 + 8344);
      v14 = *(a1 + 4612);
      if (v14 > 1)
      {
        v29 = v14 - 1;
        v30 = v47;
        v31 = v48;
        do
        {
          *v31 = *v30 * v27 + *(v30 - 1) * v26;
          v31 += 4;
          v30 += 4;
          --v29;
        }

        while (v29);
      }

      v32 = v14;
      *(a1 + 8344) = *&v57[4 * v14];
      v33 = *(a1 + 8332);
      v34 = *(a1 + 8336);
      v35 = *(a1 + 8340);
      v36 = v63;
      if (v14 >= 1)
      {
        v37 = v61;
        v38 = v60 >> 16;
        v39 = v60;
        v40 = v28;
        v41 = v63;
        do
        {
          if (v8 < 1)
          {
            v42 = 0;
          }

          else
          {
            v42 = (((v21 >> 2) | (v21 << 15)) >> 16) * *(v13 + 2 * ((v33 + v8 - 1) & 0x1FF)) + (*(v13 + 2 * ((v33 + v8) & 0x1FF)) + *(v13 + 2 * ((v33 + v8 + 510) & 0x1FF))) * (v21 >> 2);
          }

          v43 = (v34 >> 16) * v38 + (v35 >> 16) * v39 + ((v34 * v38) >> 16) + ((v35 * v39) >> 16);
          v44 = *v40++;
          v34 = v44 - 4 * ((v34 >> 16) * v37 + ((v34 * v37) >> 16));
          v35 = v34 - 4 * v43;
          v33 = (v33 - 1) & 0x1FF;
          v45 = ((v35 >> 11) + 1) >> 1;
          if (v45 <= -32768)
          {
            v45 = -32768;
          }

          if (v45 >= 0x7FFF)
          {
            LOWORD(v45) = 0x7FFF;
          }

          *(v13 + 2 * v33) = v45;
          *v41++ = (((v35 - v42) >> 8) + 1) >> 1;
          --v14;
        }

        while (v14);
        LODWORD(v14) = *(a1 + 4612);
        v32 = v14;
      }

      *(a1 + 8336) = v34;
      *(a1 + 8340) = v35;
      *(a1 + 8332) = v33;
      v15 = v62 + 2 * v32;
      a3 = &v36[v32];
      ++v12;
      v11 = *(a1 + 4604);
    }

    while (v12 < v11);
    a2 = v59;
  }

  *(a1 + 8352) = *(a2 + 4 * v11 + 120);
}

uint64_t silk_apply_sine_window(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = freq_table_Q16[(a4 >> 2) - 4];
  v5 = (v4 >> 16) * -v4 + ((v4 * -v4) >> 16);
  v6 = (a4 >> 4) + (v5 >> 1) + 0x10000;
  if (a3 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x10000;
  }

  if (a3 == 1)
  {
    v6 = v4 + (a4 >> 3);
  }

  if (a4 >= 1)
  {
    v8 = 0;
    v9 = (a2 + 4);
    v10 = (result + 4);
    do
    {
      *(v10 - 2) = (__PAIR32__((v6 + v7) >> 17, (v6 + v7) >> 1) * *(v9 - 2)) >> 16;
      *(v10 - 1) = (v6 * *(v9 - 1)) >> 16;
      v11 = (v6 >> 16) * v5 - v7 + 2 * v6 + ((v6 * v5) >> 16);
      if (v11 >= 0xFFFF)
      {
        v11 = 0xFFFF;
      }

      v7 = v11 + 1;
      *v10 = (__PAIR32__((v7 + v6) >> 17, (v7 + v6) >> 1) * *v9) >> 16;
      v10[1] = (v7 * v9[1]) >> 16;
      result = v7 * v5;
      v6 = (v7 >> 16) * v5 - v6 + 2 * v7 + (result >> 16);
      if (v6 >= 0x10000)
      {
        v6 = 0x10000;
      }

      v8 += 4;
      v9 += 4;
      v10 += 4;
    }

    while (v8 < a4);
  }

  return result;
}

void *silk_k2a_Q16(void *__src, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3 >= 1)
  {
    v4 = __src;
    v5 = 0;
    v6 = 0;
    v7 = a3;
    do
    {
      if (v6)
      {
        __src = memcpy(__dst, v4, 4 * v6);
        v8 = v5;
        v9 = v4;
        do
        {
          *v9++ += *(a2 + 4 * v6) * (*&v10[v8] >> 16) + ((*(a2 + 4 * v6) * *&v10[v8]) >> 16) + (((*(a2 + 4 * v6) >> 15) + 1) >> 1) * *&v10[v8];
          v8 -= 4;
        }

        while (v8);
      }

      *(v4 + v6) = -256 * *(a2 + 4 * v6);
      ++v6;
      v5 += 4;
    }

    while (v6 != v7);
  }

  return __src;
}

uint64_t silk_schur(uint64_t a1, unsigned int *a2, int a3)
{
  v30[16] = *MEMORY[0x277D85DE8];
  if (*a2 >> 30)
  {
    if ((a3 & 0x80000000) == 0)
    {
      v3 = (a3 + 1);
      v4 = v28;
      do
      {
        v5 = *a2++;
        *v4++ = vdup_n_s32(v5 >> 1);
        --v3;
      }

      while (v3);
      goto LABEL_14;
    }

LABEL_32:
    LODWORD(v14) = 0;
    goto LABEL_37;
  }

  v6 = __clz(*a2) - 2;
  if (v6)
  {
    if (a3 < 0)
    {
      goto LABEL_32;
    }

    v10 = (a3 + 1);
    v11 = v28;
    do
    {
      v12 = *a2++;
      *v11++ = vdup_n_s32(v12 << v6);
      --v10;
    }

    while (v10);
  }

  else
  {
    if (a3 < 0)
    {
      goto LABEL_32;
    }

    v7 = (a3 + 1);
    v8 = v28;
    do
    {
      v9 = vld1_dup_f32(a2++);
      *v8++ = v9;
      --v7;
    }

    while (v7);
  }

LABEL_14:
  if (a3 < 1)
  {
    goto LABEL_32;
  }

  v13 = 0;
  v14 = 0;
  v15 = a3;
  while (1)
  {
    v16 = v14++;
    v17 = *&v28[8 * v14];
    v18 = v17 >= 0 ? *&v28[8 * v14] : -v17;
    if (v18 >= v29)
    {
      break;
    }

    v19 = v29 >> 15;
    if (v29 >> 15 <= 1)
    {
      v19 = 1;
    }

    v20 = v17 / v19;
    if (-v20 < -32768 || v20 == 0x8000)
    {
      v21 = -32768;
    }

    else
    {
      v21 = -v20;
    }

    if (v21 >= 0x7FFF)
    {
      v21 = 0x7FFF;
    }

    *(a1 + 2 * v16) = v21;
    if (v16 < a3)
    {
      v22 = v15;
      v23 = v30;
      do
      {
        v24 = v23[v13];
        v25 = *(v23 - 1);
        LODWORD(v23[v13]) = v24 + (v25 >> 15) * v21 + ((2 * (v25 & 0x7FFF) * v21) >> 16);
        *(v23++ - 1) = v25 + (v24 >> 15) * v21 + ((2 * (v24 & 0x7FFF) * v21) >> 16);
        --v22;
      }

      while (v22);
    }

    --v15;
    ++v13;
    if (v14 == a3)
    {
      goto LABEL_39;
    }
  }

  if (v17 > 0)
  {
    v26 = -32440;
  }

  else
  {
    v26 = 32440;
  }

  *(a1 + 2 * v16) = v26;
LABEL_37:
  if (v14 < a3)
  {
    bzero((a1 + 2 * v14), 2 * (~v14 + a3) + 2);
  }

LABEL_39:
  if (v29 <= 1)
  {
    return 1;
  }

  else
  {
    return v29;
  }
}

void silk_find_pitch_lags_FIX(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  v43 = a3;
  v50 = *MEMORY[0x277D85DE8];
  v44 = a1 + 4096;
  v45 = 0;
  v6 = *(a1 + 4620);
  v7 = *(a1 + 4616);
  v8 = *(a1 + 4608) + v6 + v7;
  v9 = a4 - 2 * v7;
  v10 = *(a1 + 4572);
  v11 = &v42 - ((2 * v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, 2 * v10);
  v12 = v9 + 2 * v8 - 2 * v10;
  silk_apply_sine_window(v11, v12, 1, v6);
  v13 = *(a1 + 4620);
  v14 = (v12 + 2 * v13);
  v15 = *(a1 + 4572) - 2 * v13;
  memcpy(&v11[2 * v13], v14, 2 * v15);
  silk_apply_sine_window(&v11[2 * v13 + 2 * v15], v14 + 2 * v15, 2, v13);
  silk_autocorr(v49, &v45, v11, *(a1 + 4572), *(a1 + 4672) + 1);
  v49[0] += 66 * (v49[0] >> 16) + ((66 * LOWORD(v49[0])) >> 16) + 1;
  v16 = silk_schur(v48, v49, *(a1 + 4672));
  if (v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  if ((v49[0] & 0x80000000) == 0)
  {
    v18 = v49[0];
  }

  else
  {
    v18 = -v49[0];
  }

  v19 = __clz(v18);
  v20 = __clz(v17);
  v21 = v17 << (v20 - 1);
  v22 = 0x1FFFFFFF / (v21 >> 16);
  v23 = ((v49[0] << (v19 - 1)) >> 16) * v22 + (((v49[0] << (v19 - 1)) * v22) >> 16);
  v24 = (v49[0] << (v19 - 1)) - (((v23 * v21) >> 29) & 0xFFFFFFF8);
  v25 = v23 + (v24 >> 16) * v22 + ((v24 * v22) >> 16);
  v26 = v19 - v20;
  if (v19 - v20 + 29 >= 0x30)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25 >> (v26 + 13);
  }

  v28 = 0x80000000 >> (-13 - v26);
  if (v25 > v28)
  {
    v28 = v25;
  }

  if (v25 <= (0x7FFFFFFFu >> (-13 - v26)))
  {
    v29 = v28;
  }

  else
  {
    v29 = 0x7FFFFFFFu >> (-13 - v26);
  }

  v30 = v29 << (-13 - v26);
  if (v26 > -14)
  {
    v30 = v27;
  }

  *(a2 + 492) = v30;
  silk_k2a(__src, v48, *(a1 + 4672));
  v31 = *(a1 + 4672);
  if (v31 >= 1)
  {
    v32 = v46;
    v33 = __src;
    v34 = *(a1 + 4672);
    do
    {
      v35 = *v33++;
      v36 = v35 >> 12;
      if (v35 >> 12 <= -32768)
      {
        v36 = -32768;
      }

      if (v36 >= 0x7FFF)
      {
        LOWORD(v36) = 0x7FFF;
      }

      *v32++ = v36;
      --v34;
    }

    while (v34);
  }

  silk_bwexpander(v46, v31, 64881);
  v37 = v43;
  silk_LPC_analysis_filter(v43, v9, v46, v8, *(a1 + 4672));
  v38 = v44;
  if (*(v44 + 717) && !*(a1 + 4696))
  {
    v39 = -1228 * (*(v44 + 469) >> 1) - (((*(a1 + 4672) << 16) >> 11) + 4 * *(a1 + 4556)) + ((52430 * *(a1 + 4556)) >> 16) - *(a1 + 4760) + ((63899 * *(a1 + 4760)) >> 16) + 4915;
    if (v39 <= -32768)
    {
      v39 = -32768;
    }

    if (v39 >= 0x7FFF)
    {
      v40 = 0x7FFF;
    }

    else
    {
      v40 = v39;
    }

    if (silk_pitch_analysis_core(v37, (a2 + 124), (a1 + 4810), (a1 + 4812), (a1 + 9796), *(a1 + 4568), *(a1 + 4676), v40, *(a1 + 4600), *(a1 + 4668), *(a1 + 4604)))
    {
      v41 = 1;
    }

    else
    {
      v41 = 2;
    }

    *(v38 + 717) = v41;
  }

  else
  {
    *(a2 + 132) = 0;
    *(a2 + 124) = 0;
    *(a1 + 4810) = 0;
    *(v38 + 716) = 0;
    *(a1 + 9796) = 0;
  }
}

_DWORD *silk_warped_autocorrelation_FIX(_DWORD *result, _DWORD *a2, uint64_t a3, __int16 a4, int a5, int a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  if (a5 < 1)
  {
    v19 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = a4;
    v9 = a5;
    do
    {
      v10 = *(a3 + 2 * v7) << 14;
      if (a6 >= 1)
      {
        v11 = 0;
        v12 = v34 + 1;
        v13 = v32 + 1;
        do
        {
          v14 = *v12;
          v15 = v6 + ((*v12 - v10) >> 16) * v8 + (((*v12 - v10) * v8) >> 16);
          *(v12 - 1) = v10;
          v16 = v34[0];
          v17 = *v13;
          v18 = *(v13 - 1) + ((SLODWORD(v34[0]) * v10) >> 18);
          v6 = v12[1];
          v10 = v14 + ((v6 - v15) >> 16) * v8 + (((v6 - v15) * v8) >> 16);
          v11 += 2;
          *v12 = v15;
          v12 += 2;
          *(v13 - 1) = v18;
          *v13 = v17 + ((v16 * v15) >> 18);
          v13 += 2;
        }

        while (v11 < a6);
      }

      *(v34 + a6) = v10;
      v6 = v34[0];
      *(v32 + a6) += (SLODWORD(v34[0]) * v10) >> 18;
      ++v7;
    }

    while (v7 != v9);
    v19 = *&v32[0];
  }

  v20 = __clz(v19) + 32;
  v21 = HIDWORD(v19);
  v22 = __clz(v21);
  if (v21)
  {
    v20 = v22;
  }

  if (v20 <= 0xD)
  {
    v23 = 13;
  }

  else
  {
    v23 = v20;
  }

  if (v23 >= 0x37)
  {
    v23 = 55;
  }

  *a2 = 25 - v23;
  if (v20 <= 0x22)
  {
    if ((a6 & 0x80000000) == 0)
    {
      v28 = 35 - v23;
      v29 = (a6 + 1);
      v30 = v32;
      do
      {
        v31 = *v30++;
        *result++ = v31 >> v28;
        --v29;
      }

      while (v29);
    }
  }

  else if ((a6 & 0x80000000) == 0)
  {
    v24 = v23 - 35;
    v25 = (a6 + 1);
    v26 = v32;
    do
    {
      v27 = *v26++;
      *result++ = v27 << v24;
      --v25;
    }

    while (v25);
  }

  return result;
}

void *BET3FLT__DeInitTreeSet(void *result, char *__b)
{
  if (__b)
  {
    v3 = result;
    for (i = 104; i != 184; i += 8)
    {
      v5 = *&__b[i];
      if (v5)
      {
        heap_Free(*(v3 + 8), v5);
      }
    }

    return cstdlib_memset(__b, 0, 0xD0uLL);
  }

  return result;
}

uint64_t BET3FLT__LoadTreesFile(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v29 = 0;
  v9 = *a4;
  if (a4[4] - v9 >= 8 && *(*(a4 + 1) + v9) == 48)
  {
    *a4 = v9 + 2;
    v12 = a2 + 2 * a3;
    v13 = a3;
    if (BET3FLT__xfread_BET3((v12 + 184), 2u, 1, a4) == 1 && BET3FLT__xfread_BET3(&v29, 2u, 1, a4) == 1 && BET3FLT__xfread_BET3((a2 + 2 * v13), 2u, 1, a4) == 1)
    {
      v14 = BET3FLT__xfread2ptr_BET3((a2 + 8 * v13 + 24), 1u, v29, a4);
      if (v14 == v29)
      {
        if (*a4)
        {
          ++*a4;
        }

        v15 = heap_Calloc(*(v8 + 8), 16, *(v12 + 184));
        v21 = a2 + 104;
        *(a2 + 104 + 8 * v13) = v15;
        if (!v15)
        {
          BET3FLT__log_select_Error(v8, 55000, "LoadTreesFile : out of memory for type %s\n", v16, v17, v18, v19, v20);
          return 2229280778;
        }

        if (!*(v12 + 184))
        {
          return 0;
        }

        v22 = 0;
        v23 = 0;
        while (BET3FLT__xfread_BET3((v15 + v22), 2u, 1, a4) == 1)
        {
          if (BET3FLT__xfread_BET3((*(v21 + 8 * v13) + v22 + 2), 2u, 1, a4) != 1)
          {
            break;
          }

          v24 = BET3FLT__xfread2ptr_BET3((*(v21 + 8 * v13) + v22 + 8), 2u, 3 * *(*(v21 + 8 * v13) + v22 + 2), a4);
          v15 = *(v21 + 8 * v13);
          if (v24 != 3 * *(v15 + v22 + 2))
          {
            break;
          }

          v25 = 0;
          ++v23;
          v22 += 16;
          if (v23 >= *(v12 + 184))
          {
            return v25;
          }
        }

        v25 = 2229280772;
        v26 = "LoadTreesFile : corrupt tree nodes for type %s, state %u\n";
        a1 = v8;
        v27 = 55015;
      }

      else
      {
        v25 = 2229280772;
        v26 = "LoadTreesFile : corrupt tree questions for type %s\n";
        a1 = v8;
        v27 = 55013;
      }
    }

    else
    {
      v25 = 2229280772;
      v26 = "LoadTreesFile : corrupt tree header for type %s\n";
      a1 = v8;
      v27 = 55012;
    }
  }

  else
  {
    v25 = 2229280772;
    v26 = "LoadTreesFile : invalid tree data version for type %s\n";
    v27 = 55011;
  }

  BET3FLT__log_select_Error(a1, v27, v26, a4, a5, a6, a7, a8);
  return v25;
}

uint64_t BET3FLT__TreeSearch(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  LOWORD(v5) = 0;
  v6 = a3 + 8 * a4;
  v7 = *(v6 + 24);
  v8 = *(*(v6 + 104) + 16 * a5 + 8);
  v9 = a2 + 2;
  v10 = a2 + 1;
  do
  {
    v11 = (v8 + 6 * -v5);
    v12 = (v7 + *v11);
    v13 = *v12;
    v14 = v12[1];
    v5 = v11[1];
    if (v13 <= 0xFC)
    {
      if (v13 == 3)
      {
        v16 = *(*(a1 + 1784) + 2 * a2);
        v17 = v16 > 0x19;
        v15 = 10 * v16;
        if (v17)
        {
          v15 = -1;
        }

        if (!v12[1])
        {
          continue;
        }

        goto LABEL_27;
      }

      if (v13 != 252)
      {
        v18 = *(a1 + 16 + 8 * *v12);
        if (!v18)
        {
          continue;
        }

        v15 = *(v18 + a2);
        if (!v12[1])
        {
          continue;
        }

        goto LABEL_27;
      }

      if (a2 < 2)
      {
LABEL_19:
        v15 = -1;
        if (!v12[1])
        {
          continue;
        }

        goto LABEL_27;
      }

      v15 = *(*(a1 + 32) + a2 - 2);
      if (!v12[1])
      {
        continue;
      }
    }

    else if (v13 == 253)
    {
      if (a2 < 1)
      {
        goto LABEL_19;
      }

      v15 = *(*(a1 + 32) + a2 - 1);
      if (!v12[1])
      {
        continue;
      }
    }

    else if (v13 == 254)
    {
      if (v10 >= *(a1 + 10))
      {
        goto LABEL_19;
      }

      v15 = *(*(a1 + 32) + v10);
      if (!v12[1])
      {
        continue;
      }
    }

    else
    {
      if (v9 >= *(a1 + 10))
      {
        goto LABEL_19;
      }

      v15 = *(*(a1 + 32) + v9);
      if (!v12[1])
      {
        continue;
      }
    }

LABEL_27:
    v19 = v12 + 2;
    if (v14 == 255)
    {
      if (*v19 <= v15 && v12[3] >= v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v20 = v14 - 1;
      if (v14 != 1)
      {
        v21 = 0;
        while (1)
        {
          v22 = (v20 + v21) / 2;
          v23 = v19[v22];
          if (v23 == v15)
          {
            break;
          }

          if (v15 < v23)
          {
            v20 = v22 - 1;
          }

          else
          {
            v21 = v22 + 1;
          }

          if (v21 > v20)
          {
            goto LABEL_40;
          }
        }

LABEL_33:
        v5 = v11[2];
        continue;
      }

      if (*v19 == v15)
      {
        goto LABEL_33;
      }
    }

LABEL_40:
    ;
  }

  while ((v5 & 0x8000) != 0);
  return v5;
}

uint64_t BET3FLT__select_bet3_FeatureExtractObjOpen(_WORD *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = 0;
  *a5 = 0;
  inited = InitRsrcFunction(a1, a2, &v16);
  if ((inited & 0x80000000) == 0)
  {
    v9 = heap_Calloc(*(v16 + 8), 1, 24);
    if (v9)
    {
      *v9 = v16;
      v9[1] = a3;
      v9[2] = a4;
      *a5 = v9;
    }

    else
    {
      log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, 0, v10, v11, v12, v13, v15);
      return 2229280778;
    }
  }

  return inited;
}

uint64_t BET3FLT__select_bet3_FeatureExtractObjClose(uint64_t a1)
{
  if (a1)
  {
    heap_Free(*(*a1 + 8), a1);
  }

  return 0;
}

uint64_t BET3FLT__select_bet3_FeatureExtractProcessStart(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__b, _DWORD *a6)
{
  __s1 = 0;
  cstdlib_memset(__b, 0, 0xE48uLL);
  *__b = a2;
  if ((paramc_ParamGetStr(*(*a1 + 40), "voicemodel", &__s1) & 0x80000000) == 0 && !cstdlib_strcmp(__s1, "bet3"))
  {
    (*(a1[2] + 272))(a3, a4, 128, 3, 0, 0);
  }

  return usextract_ProcessStart(*a1, "SELECT_BET3", a1[2], a3, a4, __b, a6);
}

uint64_t BET3FLT__select_bet3_FeatureExtractProcess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9, uint64_t a10, uint64_t *a11, _DWORD *a12)
{
  v111 = *MEMORY[0x277D85DE8];
  v16 = *a1;
  if (a11)
  {
    v17 = a12 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  v106 = v18;
  if (!v17)
  {
    *a11 = 0;
    *a12 = 0;
  }

  v19 = 0;
  v20 = 0;
  v21 = *(a10 + 10);
  do
  {
    if (*(*a10 + 2748 + v19) == 1)
    {
      ++v20;
    }

    ++v19;
  }

  while (v19 != 218);
  v22 = heap_Calloc(*(v16 + 8), (v20 * v21), 1);
  if (!v22)
  {
    goto LABEL_128;
  }

  v27 = v22;
  v103 = a2;
  v107 = a3;
  v28 = 0;
  v104 = a10 + 16;
  do
  {
    v29 = *a10;
    v30 = *(*a10 + v28 + 2748);
    if (!*(*a10 + v28 + 2748))
    {
      goto LABEL_20;
    }

    if (v30 == 2)
    {
      v31 = heap_Calloc(*(v16 + 8), v21, 2);
      *(a10 + 8 * v28 + 1760) = v31;
      if (!v31)
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (v30 == 1)
      {
        *(a10 + 8 * v28 + 16) = v27;
        v27 += v21;
        goto LABEL_20;
      }

      if (v28 <= 0x33u)
      {
        switch(v28)
        {
          case 0x18u:
            v38 = heap_Calloc(*(v16 + 8), v21, 8);
            *(a10 + 3552) = v38;
            if (!v38)
            {
              goto LABEL_129;
            }

            break;
          case 0x2Eu:
            v43 = heap_Calloc(*(v16 + 8), v21, 9);
            *(a10 + 3560) = v43;
            if (!v43)
            {
              goto LABEL_129;
            }

            break;
          case 0x33u:
            v34 = *(v29 + 2966);
            if (v34)
            {
              v35 = heap_Calloc(*(v16 + 8), (v34 * v21), 4);
              *(a10 + 3568) = v35;
              if (!v35)
              {
                goto LABEL_129;
              }
            }

            break;
          default:
            goto LABEL_42;
        }
      }

      else if (v28 > 0x35u)
      {
        if (v28 == 54)
        {
          v41 = *(v29 + 3360);
          if (v41)
          {
            v42 = heap_Calloc(*(v16 + 8), (v41 * v21), 4);
            *(a10 + 3592) = v42;
            if (!v42)
            {
              goto LABEL_129;
            }
          }
        }

        else
        {
          if (v28 != 56)
          {
LABEL_42:
            log_OutPublic(*(*a1 + 32), "SELECT_BET3", 55007, "%s%u", v23, v24, v25, v26, "feature");
            goto LABEL_20;
          }

          v36 = *(v29 + 2966);
          if (v36)
          {
            v37 = heap_Calloc(*(v16 + 8), (v36 * v21), 1);
            *(a10 + 3600) = v37;
            if (!v37)
            {
              goto LABEL_129;
            }
          }
        }
      }

      else if (v28 == 52)
      {
        v39 = *(v29 + 2966);
        if (v39)
        {
          v40 = heap_Calloc(*(v16 + 8), (v39 * v21), 4);
          *(a10 + 3576) = v40;
          if (!v40)
          {
            goto LABEL_129;
          }
        }
      }

      else
      {
        if (v28 != 53)
        {
          goto LABEL_42;
        }

        v32 = *(v29 + 3360);
        if (v32)
        {
          v33 = heap_Calloc(*(v16 + 8), (v32 * v21), 4);
          *(a10 + 3584) = v33;
          if (!v33)
          {
            goto LABEL_129;
          }
        }
      }
    }

LABEL_20:
    ++v28;
  }

  while (v28 != 218);
  v44 = *(*a10 + 3578);
  if (v44 >= 4)
  {
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, "Invalid number of states per phoneme", v23, v24, v25, v26, "%s%u");
    v45 = -2065686513;
    goto LABEL_130;
  }

  v46 = heap_Calloc(*(v16 + 8), v44 * v21, 4);
  *(a10 + 3608) = v46;
  if (!v46)
  {
LABEL_129:
    v45 = -2065686518;
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, 0, v23, v24, v25, v26, v100);
    goto LABEL_130;
  }

  if (*(*a10 + 3578) * v21)
  {
    memset(v46, 255, 4 * *(*a10 + 3578) * v21);
  }

  GenericFeatureLayers = usextract_allocateGenericFeatureLayers(*a1, "SELECT_BET3", a10, v21);
  if (GenericFeatureLayers < 0)
  {
    v45 = GenericFeatureLayers;
    goto LABEL_131;
  }

  v45 = usextract_Process(*a1, "SELECT_BET3", a1[2], a3, a4, a10, v48, v49);
  if ((v45 & 0x80000000) == 0)
  {
    v102 = a4;
    if (*(a10 + 3504))
    {
      v50 = **(*a10 + 3336);
      if (v50)
      {
        v51 = 0;
        v52 = 1;
        do
        {
          v53 = cstdlib_strncmp(v50, "INNO_", 5uLL);
          v54 = *a10;
          if (v53)
          {
            v55 = *(*(v54 + 3344) + 8 * v51);
            v56 = cstdlib_strlen("FEATIDX");
            Index = usextract_getIndex(v55, "FEATIDX", &aFeatidx[v56]);
            if (Index == -1)
            {
              if (cstdlib_strcmp(*(*(*a10 + 3336) + 8 * v51), "POS"))
              {
                if (!cstdlib_strcmp(*(*(*a10 + 3336) + 8 * v51), "PHR"))
                {
                  *(a10 + 512) = *(*(a10 + 3504) + 8 * v51);
                }
              }

              else
              {
                *(a10 + 504) = *(*(a10 + 3504) + 8 * v51);
              }
            }

            else
            {
              *(v104 + 8 * *(*(*(*a10 + 3352) + 8 * v51) + Index)) = *(*(a10 + 3504) + 8 * v51);
            }
          }

          else
          {
            v58 = cstdlib_atoi((*(*(v54 + 3336) + 8 * v51) + 5)) + 79;
            if (v58 <= 0x5E)
            {
              *(v104 + 8 * v58) = *(*(a10 + 3504) + 8 * v51);
            }
          }

          v51 = v52;
          v50 = *(*(*a10 + 3336) + 8 * v52++);
        }

        while (v50);
      }
    }

    v101 = *(a10 + 10);
    v59 = v101 & ~(v101 >> 31);
    if (BET3FLT__log_select_GetLogLevel(*(v16 + 32)) >= 6)
    {
      LH_itoa(0x4Eu, v110, 0xAu);
      for (i = 0; i != 218; ++i)
      {
        if (i > 3u)
        {
          if (i == 4)
          {
            v61 = "application/x-realspeak-usplosives;version=4.0";
LABEL_82:
            v62 = *(*a10 + i + 2748);
            if (v62 == 2)
            {
              log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v110, v61, *(a10 + 8 * i + 1760), 2 * v59, 0);
            }

            else if (v62 == 1)
            {
              log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v110, v61, *(a10 + 8 * i + 16), v59, 0);
            }

            continue;
          }

          if (i == 5)
          {
            v61 = "application/x-realspeak-usmarkers-u16;version=4.0";
            goto LABEL_82;
          }
        }

        else if (i == 2)
        {
          v109 = 5;
          v108 = 0;
          log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v110, "text/x-realspeak-usphonemes;charset=tts", &v109, 1u, 0);
          log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v110, "text/x-realspeak-usphonemes;charset=tts", *(a10 + 8 * i + 16), v59, 0);
          log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v110, "text/x-realspeak-usphonemes;charset=tts", &v108, 1u, 0);
        }

        else if (i == 3)
        {
          v61 = "application/x-realspeak-usdurs;version=4.0";
          goto LABEL_82;
        }
      }
    }

    v105 = v101 & ~(v101 >> 31);
    v63 = *(a10 + 3520);
    if (v63)
    {
      v64 = 0;
      for (j = 0; j < v63; ++j)
      {
        if (*(*(a10 + 3512) + v64) == 25)
        {
          v110[0] = 0;
          paramc_ParamGetUInt(*(v16 + 40), "finalsentencefound", v110);
          v66 = *(*(a10 + 3512) + v64 + 24);
          *a9 = v66;
          v45 = paramc_ParamSetInt(*(v16 + 40), "waitfactor", v66);
          if (v45 < 0)
          {
            log_OutPublic(*(v16 + 32), "SELECT_BET3", 55009, "%s%s%s%d%s%x", v67, v68, v69, v70, "parameter");
LABEL_145:
            a4 = v102;
LABEL_130:
            a3 = v107;
            goto LABEL_131;
          }

          v63 = *(a10 + 3520);
        }

        v64 += 32;
      }
    }

    featextract_adjustSilAudioOrder(a10);
    a3 = v107;
    if (!v106)
    {
      goto LABEL_108;
    }

    v71 = *(a10 + 3520);
    v72 = v71 + v105;
    *a12 = v72;
    if (!(v71 + v105))
    {
      goto LABEL_108;
    }

    v73 = heap_Calloc(*(v16 + 8), v72, 32);
    *a11 = v73;
    a4 = v102;
    if (v73)
    {
      v74 = heap_Calloc(*(v16 + 8), *(a10 + 10), 2);
      if (v74)
      {
        v75 = v74;
        cstdlib_memcpy(v74, *(a10 + 1800), 2 * *(a10 + 10));
        if (*a12)
        {
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          while (v79 < *(a10 + 3520))
          {
            if (v78 >= v105)
            {
              v85 = (*a11 + v76);
              v86 = (*(a10 + 3512) + 32 * v79);
              v87 = v86[1];
              *v85 = *v86;
              v85[1] = v87;
              ++v79;
              goto LABEL_106;
            }

            v80 = v78;
            if (!*(v75 + 2 * v78))
            {
              goto LABEL_104;
            }

            v81 = (*a11 + v76);
            v82 = (*(a10 + 3512) + 32 * v79);
            v83 = v82[1];
            *v81 = *v82;
            v81[1] = v83;
            ++v79;
            --*(v75 + 2 * v78);
LABEL_106:
            ++v77;
            v76 += 32;
            if (v77 >= *a12)
            {
              goto LABEL_107;
            }
          }

          v80 = v78;
LABEL_104:
          v84 = (*a11 + v76);
          *v84 = 33;
          v84[6] = *(*(a10 + 32) + v80);
          ++v78;
          goto LABEL_106;
        }

LABEL_107:
        heap_Free(*(v16 + 8), v75);
LABEL_108:
        if (v101 >= 1)
        {
          v88 = 0;
          v89 = v103 + 7356;
          v90 = v105 - 1;
          while (1)
          {
            v91 = *(a10 + 248);
            if (!*(v91 + v88))
            {
              *(v91 + v88) = -1;
            }

            v92 = *(a10 + 192);
            if (*(*(a10 + 32) + v88) == 35)
            {
              v93 = 1;
            }

            else
            {
              v93 = 2 * *(v92 + v88);
            }

            *(v92 + v88) = v93;
            v94 = *(a10 + 32);
            v95 = *(v94 + v88);
            if (v90 == v88)
            {
              if (v95 == 35)
              {
                v110[0] = 0;
                paramc_ParamGetUInt(*(v16 + 40), "finalsentencefound", v110);
                v96 = 0;
                v97 = *(a10 + 1784);
                if (v110[0] != 1)
                {
                  v96 = *(v97 + 2 * v88) + 200 * *a9;
                }

                if (v96 <= 1)
                {
                  v96 = 1;
                }

                if (v96 >= 0xFFFF)
                {
                  LOWORD(v96) = -1;
                }

                *(v97 + 2 * v88) = v96;
                v94 = *(a10 + 32);
              }

              *(v94 + v88) = *(v89 + *(v94 + v88));
              if (v90 == v88)
              {
                goto LABEL_145;
              }
            }

            else
            {
              *(v94 + v88) = *(v89 + v95);
            }

            ++v88;
          }
        }

        a4 = v102;
        goto LABEL_131;
      }
    }

LABEL_128:
    v45 = -2065686518;
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, 0, v23, v24, v25, v26, v100);
  }

LABEL_131:
  if (a12 && a11 && v45 < 0 && *a11)
  {
    heap_Free(*(v16 + 8), *a11);
    *a11 = 0;
    *a12 = 0;
  }

  LODWORD(result) = (*(a1[2] + 64))(a3, a4);
  if (result >= 0 || v45 <= -1)
  {
    return v45;
  }

  else
  {
    return result;
  }
}

uint64_t BET3FLT__select_bet3_FeatureExtractProcessEnd(uint64_t *a1, void *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = *a1;
  v5 = usextract_ProcessEnd(*a1, "SELECT_BET3", a2);
  usextract_freeGenericFeatureLayers(*a1, "SELECT_BET3", a2);
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = *(*a2 + v10 + 2748);
    if (!*(*a2 + v10 + 2748))
    {
      goto LABEL_12;
    }

    if (v12 == 2)
    {
      v14 = a2[v10 + 220];
      if (!v14)
      {
        goto LABEL_12;
      }

LABEL_11:
      heap_Free(*(v4 + 8), v14);
      goto LABEL_12;
    }

    if (v12 == 1)
    {
      if (v11)
      {
        v13 = a2[v10 + 2];
        if (v13)
        {
          heap_Free(*(v4 + 8), v13);
        }

        v11 = 0;
      }
    }

    else if (v10 <= 0x33u)
    {
      switch(v10)
      {
        case 0x18u:
          v14 = a2[444];
          if (v14)
          {
            goto LABEL_11;
          }

          break;
        case 0x2Eu:
          v14 = a2[445];
          if (v14)
          {
            goto LABEL_11;
          }

          break;
        case 0x33u:
          v14 = a2[446];
          if (v14)
          {
            goto LABEL_11;
          }

          break;
        default:
          goto LABEL_31;
      }
    }

    else if (v10 > 0x35u)
    {
      if (v10 == 54)
      {
        v14 = a2[449];
        if (v14)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v10 != 56)
        {
LABEL_31:
          log_OutPublic(*(*a1 + 32), "SELECT_BET3", 55010, "%s%u", v6, v7, v8, v9, "feature");
          goto LABEL_12;
        }

        v14 = a2[450];
        if (v14)
        {
          goto LABEL_11;
        }
      }
    }

    else if (v10 == 52)
    {
      v14 = a2[447];
      if (v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v10 != 53)
      {
        goto LABEL_31;
      }

      v14 = a2[448];
      if (v14)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    ++v10;
  }

  while (v10 != 218);
  v15 = a2[451];
  if (v15)
  {
    heap_Free(*(v4 + 8), v15);
  }

  cstdlib_memset(a2, 0, 8uLL);
  return v5;
}

uint64_t BET3FLT__LoadModelFile(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = a3;
  if (a2[a3 + 84])
  {
    v9 = a2 + 32;
    v10 = heap_Calloc(*(a1 + 8), a2[a3 + 32], 8);
    *(a2 + 21) = v10;
    if (!v10)
    {
      return 2229280778;
    }

    if (v9[v8] >= 1)
    {
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = (a4 + 24 * v11);
        if (BET3FLT__xfread_BET3(a2, 4u, 1, v13) != 1 || (*a2 & 0x80000000) != 0)
        {
          v61 = "LoadModelFile: the number of HMM states is illegal for %s %d\n";
          v62 = v7;
          v63 = 55020;
          goto LABEL_68;
        }

        if (BET3FLT__xfread_BET3(a2 + 11, 4u, 1, v13) != 1 || (v19 = a2[11], v19 < 0))
        {
          v61 = "LoadModelFile: the number of PDFs is illegal for %s %d\n";
          v62 = v7;
          v63 = 55021;
          goto LABEL_68;
        }

        if (!v12)
        {
          v20 = heap_Calloc(*(v7 + 8), v9[v8] * v19, 8);
          if (!v20)
          {
            return 2229280778;
          }

          v12 = v20;
          v19 = a2[11];
        }

        v21 = a5;
        *(*(a2 + 21) + 8 * v11) = v12 + 8 * v19 * v11;
        *(*(a2 + 21) + 8 * v11) -= 8;
        if (v19 >= 1)
        {
          break;
        }

LABEL_16:
        ++v11;
        a5 = v21;
        if (v11 >= v9[v8])
        {
          goto LABEL_17;
        }
      }

      v22 = 0;
      v23 = *a2;
      v24 = 8;
      while (1)
      {
        v25 = BET3FLT__xfread2ptr_BET3((*(*(a2 + 21) + 8 * v11) + v24), 4u, (2 * v23), v13);
        v23 = *a2;
        if (v25 != 2 * *a2)
        {
          break;
        }

        v26 = *(*(a2 + 21) + 8 * v11) + 8 * v22;
        *(v26 + 8) -= 8;
        ++v22;
        v24 += 8;
        if (v22 >= a2[11])
        {
          goto LABEL_16;
        }
      }

      v61 = "LoadModelFile: PDF read failed for %s %d\n";
      v62 = v7;
      v63 = 55022;
      goto LABEL_68;
    }
  }

LABEL_17:
  v27 = &a2[v8];
  if (v27[94])
  {
    v28 = a2 + 32;
    v29 = heap_Calloc(*(v7 + 8), a2[v8 + 32], 8);
    v30 = a2 + 44;
    *&a2[2 * v8 + 44] = v29;
    v31 = 2229280778;
    if (!v29)
    {
      return v31;
    }

    v67 = heap_Calloc(*(v7 + 8), *a2 * v28[v8], 8);
    if (!v67)
    {
      return v31;
    }

    if (v28[v8] >= 1)
    {
      v32 = 0;
      v33 = &a2[2 * v8];
      v65 = v7;
      while (1)
      {
        v34 = (a4 + 24 * v32);
        if (BET3FLT__xfread_BET3(v27 + 1, 4u, 1, v34) != 1 || (v27[1] & 0x80000000) != 0)
        {
          v61 = "LoadModelFile: the vector size is illegal for %s %d\n";
          v62 = v7;
          v63 = 55023;
          goto LABEL_68;
        }

        v35 = BET3FLT__xfread2ptr_BET3(v33 + 6, 4u, *a2, v34);
        if (v35 != *a2)
        {
          v61 = "LoadModelFile: reading the number of PDFs failed for %s %d\n";
          v62 = v7;
          v63 = 55024;
          goto LABEL_68;
        }

        v36 = *(v33 + 6);
        *(v33 + 6) = v36 - 2;
        if (v35 > 0)
        {
          break;
        }

        *(*&v30[2 * v8] + 8 * v32) = v67 + 8 * v35 * v32;
        *(*&v30[2 * v8] + 8 * v32) -= 16;
LABEL_34:
        ++v32;
        v7 = v65;
        if (v32 >= v28[v8])
        {
          goto LABEL_35;
        }
      }

      v37 = 2;
      do
      {
        v38 = *v36++;
        if (v38 < 0)
        {
          v61 = "LoadModelFile: the number of PDFs for %s at state %d is illegal\n";
          v62 = v7;
          v63 = 55025;
          goto LABEL_68;
        }

        ++v37;
      }

      while (v35 + 2 != v37);
      *(*&v30[2 * v8] + 8 * v32) = v67 + 8 * v35 * v32;
      *(*&v30[2 * v8] + 8 * v32) -= 16;
      v39 = *(v33 + 6);
      v40 = v27[1];
      v41 = 16;
      v42 = 2;
      while (1)
      {
        v43 = BET3FLT__xfread2ptr_BET3((*(*&v30[2 * v8] + 8 * v32) + v41), 4u, 2 * *(v39 + 4 * v42) * v40, v34);
        v39 = *(v33 + 6);
        v40 = v27[1];
        if (v43 != 2 * *(v39 + 4 * v42) * v40)
        {
          break;
        }

        v41 += 8;
        v44 = v42++ <= *a2;
        if (!v44)
        {
          goto LABEL_34;
        }
      }

      v62 = v65;
      v61 = "LoadModelFile: PDF read failed for %s %d\n";
      v63 = 55026;
      goto LABEL_68;
    }
  }

LABEL_35:
  if (!v27[104])
  {
    return 0;
  }

  v45 = a2 + 32;
  v46 = heap_Calloc(*(v7 + 8), a2[v8 + 32], 8);
  v47 = a2 + 64;
  *&a2[2 * v8 + 64] = v46;
  v31 = 2229280778;
  if (v46)
  {
    v48 = heap_Calloc(*(v7 + 8), *a2 * v45[v8], 8);
    if (v48)
    {
      if (v45[v8] >= 1)
      {
        v66 = v7;
        v68 = v48;
        v49 = 0;
        v50 = &a2[2 * v8];
        while (1)
        {
          v51 = (a4 + 24 * v49);
          if (BET3FLT__xfread_BET3(v27 + 1, 4u, 1, v51) != 1 || (v27[1] & 0x80000000) != 0)
          {
            v61 = "LoadModelFile: the vector size is illegal for %s %d\n";
            v62 = v7;
            v63 = 55027;
            goto LABEL_68;
          }

          v52 = BET3FLT__xfread2ptr_BET3(v50 + 6, 4u, *a2, v51);
          if (v52 != *a2)
          {
            v61 = "LoadModelFile: reading the number of PDFs failed for %s %d\n";
            v62 = v7;
            v63 = 55028;
            goto LABEL_68;
          }

          v53 = *(v50 + 6);
          *(v50 + 6) = v53 - 2;
          if (v52 > 0)
          {
            break;
          }

          *(*&v47[2 * v8] + 8 * v49) = v68 + 8 * v52 * v49;
          *(*&v47[2 * v8] + 8 * v49) -= 16;
LABEL_52:
          v31 = 0;
          ++v49;
          v7 = v66;
          if (v49 >= v45[v8])
          {
            return v31;
          }
        }

        v54 = 2;
        do
        {
          v55 = *v53++;
          if (v55 < 0)
          {
            v61 = "LoadModelFile: the number of PDFs for %s at state %d is illegal\n";
            v62 = v7;
            v63 = 55029;
            goto LABEL_68;
          }

          ++v54;
        }

        while (v52 + 2 != v54);
        *(*&v47[2 * v8] + 8 * v49) = v68 + 8 * v52 * v49;
        *(*&v47[2 * v8] + 8 * v49) -= 16;
        v56 = *(v50 + 6);
        v57 = v27[1];
        v58 = 16;
        v59 = 2;
        while (1)
        {
          v60 = BET3FLT__xfread2ptr_BET3((*(*&v47[2 * v8] + 8 * v49) + v58), 4u, 4 * *(v56 + 4 * v59) * v57, v51);
          v56 = *(v50 + 6);
          v57 = v27[1];
          if (v60 != 4 * *(v56 + 4 * v59) * v57)
          {
            break;
          }

          v58 += 8;
          v44 = v59++ <= *a2;
          if (!v44)
          {
            goto LABEL_52;
          }
        }

        v62 = v66;
        v61 = "LoadModelFile: PDF read failed for %s %d\n";
        v63 = 55030;
LABEL_68:
        BET3FLT__log_select_Error(v62, v63, v61, v14, v15, v16, v17, v18);
        return 2229280772;
      }

      return 0;
    }
  }

  return v31;
}

uint64_t BET3FLT__FindDurPDF(int32x2_t *a1, int *a2, int a3, int a4, int a5, float a6)
{
  v6 = a1[1].i32[0];
  a1[3] = 0;
  LODWORD(v7) = *a2;
  if (*a2 >= 1)
  {
    v14 = 2;
    __asm { FMOV            V0.2D, #0.5 }

    v30 = _Q0;
    v20 = 0.0;
    do
    {
      v21 = *(*(*(a2 + 21) + 8 * a4) + 8 * v6);
      v22 = *(v21 + 4 * v14);
      v23 = *(v21 + 4 * (v14 + v7));
      if (a5)
      {
        v23 = BET3FLT__bet3_finv(v23);
      }

      v24 = v22 + (v23 * a6);
      if (v24 < 0.0)
      {
        v24 = 0.0;
      }

      if (a2[115])
      {
        if (v24 > 4000.0)
        {
          v24 = 4000.0;
        }
      }

      else if (v24 > 4000.0)
      {
        v24 = v20 * 0.5;
      }

      v25.f64[0] = (v24 + a3);
      v26 = a1[2];
      v25.f64[1] = sqrt(v23);
      v27 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(v25, v30)));
      *(*&v26 + 4 * v14) = v27.i32[0];
      a1[3] = vadd_s32(a1[3], v27);
      a3 += (v24 - *(*&v26 + 4 * v14));
      v7 = *a2;
      v20 = v24;
    }

    while (v14++ <= v7);
  }

  return 0;
}

uint64_t BET3FLT__FindContPDF(int a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (a3 + 8 * a1);
  v6 = *(a4 + 4 * a1 + 4);
  v7 = *(*(*(a4 + 8 * a1 + 176) + 8 * a5) + 8 * a2) + 4 * (2 * *(v5[9] + 4 * a2) - 2) * v6;
  *(v5[19] + 8 * a2) = v7;
  *(v5[29] + 8 * a2) = v7 + 4 * v6;
  return 0;
}

uint64_t BET3FLT__FindMsdPDF(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a4 + 4;
  v7 = *(a4 + 4 + 4 * a1);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = a1;
    v10 = a2;
    v11 = *(*(*(a4 + 8 * a1 + 256) + 8 * a6) + 8 * a2) + 4 * (4 * *(*(a3 + 8 * a1 + 72) + 4 * a2) - 4) * v7;
    v12 = a5 + 224;
    v13 = 1;
    do
    {
      v14 = v11 + 4 * v8;
      v15 = *(*(a3 + 152 + 8 * v9) + 8 * v10);
      *(v15 + 4 * v13) = *v14;
      v16 = *(v14 + 4);
      *(*(*(a3 + 232 + 8 * v9) + 8 * v10) + 4 * v13) = v16;
      v17 = *(a5 + 44);
      if (v17 != 0.0 && *(v12 + 4 * v9) == 2)
      {
        *(v15 + 4 * v13) = *(v15 + 4 * v13) + (v16 * v17);
      }

      if (v13 == 1)
      {
        v18 = *(v12 + 4 * v9);
        v19 = *(v14 + 8);
        if (v18 == 2)
        {
          *(*(a3 + 320) + 4 * v10) = v19;
        }

        v20 = 1 << v18;
        v21 = *(a3 + 312);
        if (v19 <= *(a5 + 2104 + 4 * v9))
        {
          v22 = *(v21 + v10) & ~v20;
        }

        else
        {
          v22 = *(v21 + v10) | v20;
        }

        *(v21 + v10) = v22;
      }

      v8 += 4;
    }

    while (v13++ < *(v6 + 4 * v9));
  }

  return 0;
}

uint64_t BET3FLT__FindDurPDF_PerStateRho(uint64_t a1, int *a2, float *a3, int a4, int a5, int a6)
{
  v6 = *(a1 + 8);
  *(a1 + 24) = 0;
  LODWORD(v7) = *a2;
  if (*a2 >= 1)
  {
    v14 = 2;
    v15 = 0.0;
    do
    {
      v16 = *(*(*(a2 + 21) + 8 * a5) + 8 * v6);
      v17 = *(v16 + 4 * v14);
      v18 = *a3;
      v19 = *(v16 + 4 * (v14 + v7));
      if (a6)
      {
        v19 = BET3FLT__bet3_finv(v19);
      }

      v20 = sqrt(v19);
      v21 = v20;
      v22 = v17 + (v18 * v21);
      if (v22 < 0.0)
      {
        v22 = 0.0;
      }

      if (a2[115])
      {
        if (v22 > 4000.0)
        {
          v22 = 4000.0;
        }
      }

      else if (v22 > 4000.0)
      {
        v22 = v15 * 0.5;
      }

      v23 = ((v22 + a4) + 0.5);
      v24 = *(a1 + 16);
      if (v23 <= 1)
      {
        v23 = 1;
      }

      *(v24 + 4 * v14) = v23;
      v25 = *(a1 + 28) + (v20 + 0.5);
      *(a1 + 24) += v23;
      *(a1 + 28) = v25;
      a4 += (v22 - *(v24 + 4 * v14));
      v7 = *a2;
      ++a3;
      v15 = v22;
    }

    while (v14++ <= v7);
  }

  return 0;
}

uint64_t BET3FLT__FindLF0PDF_PerStateRho(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, float a8)
{
  v8 = a4 + 4;
  v9 = *(a4 + 4 + 4 * a1);
  if (v9 >= 1)
  {
    v12 = a1;
    v13 = a2;
    v14 = *(*(*(a4 + 8 * a1 + 256) + 8 * a6) + 8 * a2) + 4 * (4 * *(*(a3 + 8 * a1 + 72) + 4 * a2) - 4) * v9;
    v15 = a3 + 152;
    v16 = a3 + 232;
    v17 = a8;
    v31 = a5 + 2104;
    v18 = a5 + 224;
    v19 = 1;
    do
    {
      v20 = v14 + 4 * (4 * v19 - 4);
      v21 = (*(*(v15 + 8 * v12) + 8 * v13) + 4 * v19);
      *v21 = *v20;
      v22 = *(v20 + 4);
      *(*(*(v16 + 8 * v12) + 8 * v13) + 4 * v19) = v22;
      if (a8 != 0.0)
      {
        if (a7)
        {
          v23 = sqrt(BET3FLT__bet3_finv(v22));
          v21 = (*(*(v15 + 8 * v12) + 8 * v13) + 4 * v19);
        }

        else
        {
          v23 = sqrt(v22);
        }

        v24 = v23 * v17;
        *v21 = *v21 + v24;
      }

      if (v19 == 1)
      {
        v25 = *(v20 + 8);
        *(*(a3 + 320) + 4 * v13) = v25;
        v26 = 1 << *(v18 + 4 * v12);
        v27 = *(a3 + 312);
        if (v25 <= *(v31 + 4 * v12))
        {
          v28 = *(v27 + v13) & ~v26;
        }

        else
        {
          v28 = *(v27 + v13) | v26;
        }

        *(v27 + v13) = v28;
      }
    }

    while (v19++ < *(v8 + 4 * v12));
  }

  return 0;
}

void *BET3FLT__DeInitModelSet(uint64_t a1, char *__b)
{
  if (*(__b + 114) >= 1)
  {
    v4 = 0;
    v5 = __b + 336;
    v6 = (__b + 176);
    v7 = __b + 336;
    do
    {
      v8 = *v7;
      v7 += 4;
      if (v8)
      {
        v9 = *(__b + 21);
        if (v9)
        {
          if (*v9)
          {
            *v9 += 8;
            heap_Free(*(a1 + 8), **(__b + 21));
            v9 = *(__b + 21);
          }

          heap_Free(*(a1 + 8), v9);
          *(__b + 21) = 0;
        }
      }

      if (*(v5 + 10))
      {
        v10 = *v6;
        if (*v6)
        {
          if (*v10)
          {
            *v10 += 16;
            heap_Free(*(a1 + 8), **v6);
            v10 = *v6;
          }

          heap_Free(*(a1 + 8), v10);
        }
      }

      if (*(v5 + 20))
      {
        v11 = v6[10];
        if (v11)
        {
          if (*v11)
          {
            *v11 += 16;
            heap_Free(*(a1 + 8), *v6[10]);
            v11 = v6[10];
          }

          heap_Free(*(a1 + 8), v11);
        }
      }

      ++v4;
      ++v6;
      v5 = v7;
    }

    while (v4 < *(__b + 114));
  }

  return cstdlib_memset(__b, 0, 0x1D0uLL);
}

uint64_t BET3FLT__InitUttModel(uint64_t a1, char *__b, int *a3, unsigned int a4)
{
  v8 = 2229280778;
  cstdlib_memset(__b, 0, 0x240uLL);
  *__b = a1;
  *(__b + 1) = a3;
  *(__b + 138) = a4;
  *(__b + 141) = *a3 * a4;
  v9 = heap_Calloc(*(a1 + 8), a4, 528);
  *(__b + 68) = v9;
  if (v9)
  {
    v10 = heap_Calloc(*(a1 + 8), (*a3 * *(__b + 138)), 4);
    *(__b + 4) = v10;
    if (v10)
    {
      v11 = heap_Calloc(*(a1 + 8), (*a3 * *(__b + 138)), 1);
      *(__b + 41) = v11;
      if (v11)
      {
        v12 = heap_Calloc(*(a1 + 8), (*a3 * *(__b + 138)), 4);
        *(__b + 42) = v12;
        if (v12)
        {
          v13 = a3[114];
          if (v13 >= 1)
          {
            v14 = 0;
            v15 = __b + 168;
            v16 = a3;
            do
            {
              if (!v16[84])
              {
                v17 = heap_Calloc(*(a1 + 8), (*a3 * *(__b + 138)), 4);
                *(v15 - 10) = v17;
                if (!v17)
                {
                  return v8;
                }

                v18 = *(a1 + 8);
                v19 = *(__b + 138);
                v20 = v16[104] ? BET3FLT__int32_ccalloc(v18, 2 * v19 * *a3, v16[1] + 1) : heap_Calloc(v18, (2 * v19 * *a3), 8);
                *v15 = v20;
                if (!v20)
                {
                  return v8;
                }

                v15[10] = &v20[*a3 * *(__b + 138)];
                v13 = a3[114];
              }

              ++v14;
              ++v15;
              ++v16;
            }

            while (v14 < v13);
          }

          v21 = *(__b + 138);
          if (v21 >= 1)
          {
            v22 = 0;
            v23 = *a3;
            v24 = 152;
            do
            {
              v25 = *(__b + 68);
              v26 = v25 + 528 * v22;
              *v26 = v22;
              v27 = v22 * v23;
              v28 = *(__b + 41) + v22 * v23;
              v29 = *(__b + 42) + 4 * v22 * v23;
              *(v26 + 16) = *(__b + 4) + 4 * v22 * v23 - 8;
              *(v26 + 312) = v28 - 2;
              *(v26 + 320) = v29 - 8;
              if (v13 >= 1)
              {
                v30 = (v25 + v24);
                v31 = __b + 168;
                v32 = a3 + 84;
                v33 = v13;
                do
                {
                  if (!*v32++)
                  {
                    v35 = *(v31 - 10) + 4 * v27;
                    *(v30 - 10) = v35;
                    v36 = *v31 + 8 * v27;
                    *v30 = v36;
                    v37 = v31[10] + 8 * v27;
                    *(v30 - 10) = v35 - 8;
                    *v30 = v36 - 16;
                    v30[10] = v37 - 16;
                  }

                  ++v30;
                  ++v31;
                  --v33;
                }

                while (v33);
              }

              ++v22;
              v24 += 528;
            }

            while (v22 != v21);
          }

          return 0;
        }
      }
    }
  }

  return v8;
}

void *BET3FLT__DeInitUttModel(void *result)
{
  v1 = result;
  if (*result && result[68])
  {
    v2 = result[1];
    v3 = result[4];
    if (v3)
    {
      heap_Free(*(*result + 8), v3);
      v1[4] = 0;
    }

    v4 = v1[41];
    if (v4)
    {
      heap_Free(*(*v1 + 8), v4);
      v1[41] = 0;
    }

    v5 = v1[42];
    if (v5)
    {
      heap_Free(*(*v1 + 8), v5);
      v1[42] = 0;
    }

    if (*(v2 + 456) >= 1)
    {
      v6 = 0;
      do
      {
        if (!*(v2 + 336 + 4 * v6))
        {
          v7 = &v1[v6];
          v8 = v7[11];
          if (v8)
          {
            heap_Free(*(*v1 + 8), v8);
            v7[11] = 0;
          }

          v9 = v7[21];
          if (v9)
          {
            heap_Free(*(*v1 + 8), v9);
            v7[21] = 0;
          }
        }

        ++v6;
      }

      while (v6 < *(v2 + 456));
    }

    result = heap_Free(*(*v1 + 8), v1[68]);
  }

  v1[68] = 0;
  *(v1 + 138) = 0;
  *v1 = 0;
  return result;
}

void *BET3FLT__DeInitMSDUttModel(void *result, int a2)
{
  v2 = result[1];
  if (!*(v2 + 4 * a2 + 336))
  {
    v3 = result;
    v4 = a2;
    v5 = result + 11;
    v6 = result[a2 + 11];
    if (v6)
    {
      result = heap_Free(*(*result + 8), v6);
      v5[v4] = 0;
    }

    v7 = v3 + 21;
    v8 = v3[v4 + 21];
    if (v8)
    {
      if (*(v2 + 4 * v4 + 416))
      {
        *v8 += 4;
        result = BET3FLT__int32_free(*(*v3 + 8), v7[v4]);
      }

      else
      {
        result = heap_Free(*(*v3 + 8), v8);
      }

      v7[v4] = 0;
    }
  }

  return result;
}

uint64_t BET3FLT__InitModelSet(int a1, char *__b, uint64_t a3)
{
  cstdlib_memset(__b, 0, 0x1D0uLL);
  v5 = *(a3 + 132);
  *(__b + 114) = v5;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = __b + 376;
    do
    {
      v8 = a3 + 4 * v6;
      *(v7 - 62) = *(v8 + 344);
      v9 = __b + 336;
      if (v6)
      {
        if (*(v8 + 2144))
        {
          v9 = &__b[4 * v6 + 416];
        }

        else
        {
          v9 = v7;
        }
      }

      *v9 = 1;
      ++v6;
      v7 += 4;
    }

    while (v6 < *(__b + 114));
  }

  return 0;
}

uint64_t BET3FLT__meancpy(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = *(result + 20);
    do
    {
      if (v3 >= 1)
      {
        v4 = *(result + 72);
        v5 = *(result + 40);
        v6 = v3;
        do
        {
          v7 = *v4++;
          v8 = *(v7 + 4 * v2);
          v9 = *v5++;
          *(v9 + 4 * v2) = v8;
          --v6;
        }

        while (v6);
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return result;
}

float BET3FLT__ConstW_Calc_R_and_r(uint64_t a1, int a2)
{
  v3 = *(a1 + 96);
  v2 = *(a1 + 104);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  v8 = a2;
  v9 = *v5;
  v10 = v5[1];
  v11 = *(*v5 + 4 * a2);
  v12 = *v4;
  v13 = v4[1];
  v14 = v11 * *(*v4 + 4 * a2);
  *v2 = v14;
  v15 = *(v10 + 4 * (v6 + a2));
  v16 = v6 + a2;
  v17 = v14 + ((v15 * -0.5) * *(v13 + 4 * v16));
  *v2 = v17;
  v18 = a2 + 2 * v6;
  v19 = *(v9 + 4 * v18);
  v20 = v17 + ((v19 * -2.0) * *(v12 + 4 * v18));
  *v2 = v20;
  v21 = *(v10 + 4 * v18);
  *v2 = v20 + (v21 * *(v13 + 4 * v18));
  v22 = *v3;
  *v22 = v11 + (((v19 * 4.0) + (v15 * 0.25)) + v21);
  v22[1] = (v19 * -2.0) + (v21 * -2.0);
  v22[2] = v21 + (v15 * -0.25);
  if (v7 < 3)
  {
    LODWORD(v23) = 1;
  }

  else
  {
    v23 = (v7 - 1);
    v24 = v3 + 1;
    v25 = v2 + 1;
    v26 = v5 + 2;
    v27 = v4 + 2;
    v28 = v23 - 1;
    do
    {
      v29 = *(v10 + 4 * v8);
      v30 = v29 * *(v13 + 4 * v8);
      *v25 = v30;
      v31 = *(v26 - 2);
      v32 = *(v31 + 4 * v16);
      v33 = *(v27 - 2);
      v34 = v30 + ((v32 * 0.5) * *(v33 + 4 * v16));
      *v25 = v34;
      v36 = *v26++;
      v35 = v36;
      v37 = *(v36 + 4 * v16);
      v39 = *v27++;
      v38 = v39;
      v40 = v34 + ((v37 * -0.5) * *(v39 + 4 * v16));
      *v25 = v40;
      v41 = *(v31 + 4 * v18);
      v42 = v40 + (v41 * *(v33 + 4 * v18));
      *v25 = v42;
      v43 = *(v10 + 4 * v18);
      v44 = v42 + ((v43 * -2.0) * *(v13 + 4 * v18));
      *v25 = v44;
      v45 = *(v35 + 4 * v18);
      *v25++ = v44 + (v45 * *(v39 + 4 * v18));
      v46 = *v24++;
      *v46 = ((((v29 + (v32 * 0.25)) + (v37 * 0.25)) + v41) + v45) + (v43 * 4.0);
      v46[1] = (v45 * -2.0) + (v43 * -2.0);
      v46[2] = v45 + (v37 * -0.25);
      v13 = v38;
      v10 = v35;
      --v28;
    }

    while (v28);
  }

  v47 = v5[v23];
  v48 = *(v47 + 4 * v8);
  v49 = v4[v23];
  v50 = v48 * *(v49 + 4 * v8);
  v2[v23] = v50;
  v51 = 8 * v23 - 8;
  v52 = *(v5 + v51);
  v53 = *(v52 + 4 * v16);
  v54 = *(v4 + v51);
  v55 = v50 + ((v53 * 0.5) * *(v54 + 4 * v16));
  v2[v23] = v55;
  v56 = *(v52 + 4 * v18);
  v57 = v55 + (v56 * *(v54 + 4 * v18));
  v2[v23] = v57;
  v58 = *(v47 + 4 * v18);
  v2[v23] = v57 + ((v58 * -2.0) * *(v49 + 4 * v18));
  v59 = v3[v23];
  result = v48 + ((v56 + (v53 * 0.25)) + (v58 * 4.0));
  *v59 = result;
  v59[1] = 0.0;
  v59[2] = 0.0;
  return result;
}

float BET3FLT__ConstW_Cholesky(uint64_t a1, double a2)
{
  v2 = *(a1 + 96);
  v3 = *v2;
  v4 = *(v2 + 8);
  LODWORD(a2) = **v2;
  v5 = vdiv_f32(*(*v2 + 4), vdup_lane_s32(*&a2, 0));
  *(v3 + 1) = v5;
  v6 = v4[1];
  v7 = *v4 + ((-v5.f32[0] * v5.f32[0]) * *&a2);
  *v4 = v7;
  v5.f32[0] = (v6 + (-(*(v3 + 1) * *(v3 + 2)) * *v3)) / v7;
  *&a2 = v4[2] / v7;
  v4[1] = v5.f32[0];
  v4[2] = *&a2;
  v8 = *(a1 + 20);
  if (v8 >= 3)
  {
    v9 = (v2 + 16);
    v10 = v8 - 2;
    do
    {
      v12 = *(v9 - 2);
      v11 = *(v9 - 1);
      v13 = *v9++;
      v14 = v13[1];
      v15 = *v13 + (-(v11[1] * v11[1]) * *v11);
      *v13 = v15;
      v16 = v15 + (-(v12[2] * v12[2]) * *v12);
      *v13 = v16;
      v17 = (v14 + (-(v11[1] * v11[2]) * *v11)) / v16;
      *&a2 = v13[2] / v16;
      v13[1] = v17;
      v13[2] = *&a2;
      --v10;
    }

    while (v10);
  }

  return *&a2;
}

float BET3FLT__ConstW_Cholesky_forward(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 104);
  v3 = *(a1 + 88);
  v4 = *v2;
  *v3 = *v2;
  v5 = *v1;
  result = v2[1] - (*(*v1 + 4) * v4);
  v3[1] = result;
  v7 = *(a1 + 20);
  if (v7 >= 3)
  {
    v8 = v3 + 2;
    v9 = v1 + 1;
    v10 = v2 + 2;
    v11 = v7 - 2;
    do
    {
      v12 = *v10++;
      v13 = v12;
      v14 = *(v5 + 8);
      v15 = *v9++;
      v5 = v15;
      result = v13 - ((v14 * *(v8 - 2)) + (*(v15 + 4) * result));
      *v8++ = result;
      --v11;
    }

    while (v11);
  }

  return result;
}

float BET3FLT__ConstW_Cholesky_backward(uint64_t a1, int a2)
{
  v2 = *(a1 + 20);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 40);
  v6 = *(v3 + 4 * (v2 - 1)) / **(v4 + 8 * (v2 - 1));
  *(*(v5 + 8 * (v2 - 1)) + 4 * a2) = v6;
  v7 = *(v4 + 8 * (v2 - 2));
  result = (*(v3 + 4 * (v2 - 2)) / *v7) - (v7[1] * v6);
  *(*(v5 + 8 * (v2 - 2)) + 4 * a2) = result;
  v9 = __OFSUB__(v2, 3);
  v10 = (v2 - 3);
  if (v10 < 0 == v9)
  {
    v11 = (v5 + 8 * v10 + 16);
    v12 = v11;
    do
    {
      v13 = *--v12;
      result = ((*(v3 + 4 * v10) / **(v4 + 8 * v10)) - (*(*(v4 + 8 * v10) + 4) * *(v13 + 4 * a2))) - (*(*(v4 + 8 * v10) + 8) * *(*v11 + 4 * a2));
      *(*(v11 - 2) + 4 * a2) = result;
      --v10;
      v11 = v12;
    }

    while (v10 != -1);
  }

  return result;
}

void BET3FLT__mlpg2(uint64_t a1, int a2)
{
  if (*(a1 + 20) < 2)
  {

    BET3FLT__meancpy(a1);
  }

  else
  {
    *&v4 = BET3FLT__ConstW_Calc_R_and_r(a1, a2);
    BET3FLT__ConstW_Cholesky(a1, v4);
    BET3FLT__ConstW_Cholesky_forward(a1);

    BET3FLT__ConstW_Cholesky_backward(a1, a2);
  }
}

char *BET3FLT__heap_StrDup(void *a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = cstdlib_strlen(__s);
  v5 = heap_Calloc(a1, (v4 + 1), 1);
  v6 = v5;
  if (v5)
  {
    cstdlib_strcpy(v5, __s);
  }

  return v6;
}

uint64_t BET3FLT__xfread_BET3(void *a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v5 = a3;
  v6 = *a4;
  v7 = a4[4];
  if (v6 + a3 * a2 > v7)
  {
    v5 = (v7 - v6) / a2;
  }

  if (v5)
  {
    v8 = v5 * a2;
    cstdlib_memcpy(a1, (*(a4 + 1) + v6), v8);
    *a4 += v8;
  }

  return v5;
}

uint64_t BET3FLT__xfread2ptr_BET3(void *a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v4 = *a4;
  if (a2 >= 2 && v4 % a2)
  {
    return 0;
  }

  v5 = a4[4];
  if (v4 + a3 * a2 > v5)
  {
    a3 = (v5 - v4) / a2;
  }

  if (a3)
  {
    *a1 = *(a4 + 1) + v4;
    *a4 = v4 + a3 * a2;
  }

  return a3;
}

uint64_t BET3FLT__log_out_Event(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = a3 - 1;
  do
  {
    v10 = *++v9;
  }

  while (v10 == 10);
  return log_VOutEvent(*(a1 + 32), a2, v9, &a9);
}

uint64_t BET3FLT__log_select_Diag(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3 - 1;
  do
  {
    v4 = *++v3;
  }

  while (v4 == 10);
  return log_VOutText(*(a1 + 32), "SELECT_BET3", (a2 + 2), 0, v3);
}

uint64_t BET3FLT__log_select_GetLogLevel(uint64_t a1)
{
  LogLevel = log_GetLogLevel(a1);
  if (LogLevel >= 3)
  {
    return LogLevel - 2;
  }

  else
  {
    return 0;
  }
}

float BET3FLT__bet3_finv(float a1)
{
  v1 = 0.0;
  if (fabsf(a1) < 1.0e19)
  {
    if (a1 > 1.0e-19 || a1 < 0.0)
    {
      if (a1 < -1.0e-19 || a1 >= 0.0)
      {
        return 1.0 / a1;
      }

      else
      {
        return -1.0e38;
      }
    }

    else
    {
      return 1.0e38;
    }
  }

  return v1;
}

void *BET3FLT__ddcalloc(void *a1, unsigned int a2, int a3)
{
  v3 = 0;
  if (a2 >= 1 && a3 >= 1)
  {
    v7 = a2;
    v3 = heap_Calloc(a1, a2, 8);
    if (v3)
    {
      v8 = heap_Calloc(a1, a3 * a2, 4);
      *v3 = v8;
      if (v8)
      {
        if (a2 >= 2)
        {
          v9 = 1;
          v10 = v8 + 4 * a3;
          do
          {
            v3[v9] = v10;
            v10 += 4 * a3;
            ++v9;
          }

          while (v7 != v9);
        }
      }

      else
      {
        heap_Free(a1, v3);
        return 0;
      }
    }
  }

  return v3;
}

void *BET3FLT__ddcalloc_64(void *a1, unsigned int a2, int a3)
{
  v3 = 0;
  if (a2 >= 1 && a3 >= 1)
  {
    v7 = a2;
    v3 = heap_Calloc(a1, a2, 8);
    if (v3)
    {
      v8 = heap_Calloc(a1, a3 * a2, 4);
      *v3 = v8;
      if (v8)
      {
        if (a2 >= 2)
        {
          v9 = 1;
          v10 = v8 + 4 * a3;
          do
          {
            v3[v9] = v10;
            v10 += 4 * a3;
            ++v9;
          }

          while (v7 != v9);
        }
      }

      else
      {
        heap_Free(a1, v3);
        return 0;
      }
    }
  }

  return v3;
}

void *BET3FLT__dd_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

void *BET3FLT__dd_free_64(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

void *BET3FLT__ffcalloc(void *a1, unsigned int a2, int a3)
{
  v3 = 0;
  if (a2 >= 1 && a3 >= 1)
  {
    v7 = a2;
    v3 = heap_Calloc(a1, a2, 8);
    if (v3)
    {
      v8 = heap_Calloc(a1, a3 * a2, 4);
      *v3 = v8;
      if (v8)
      {
        if (a2 >= 2)
        {
          v9 = 1;
          v10 = v8 + 4 * a3;
          do
          {
            v3[v9] = v10;
            v10 += 4 * a3;
            ++v9;
          }

          while (v7 != v9);
        }
      }

      else
      {
        heap_Free(a1, v3);
        return 0;
      }
    }
  }

  return v3;
}