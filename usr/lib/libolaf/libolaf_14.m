char **NMEA_Encode_PDBGN(char **a1, uint64_t a2, unsigned __int16 *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = (*a1)++;
  *v5 = 36;
  v6 = *a1;
  if (*a1 >= a1[3])
  {
    v6 = a1[2];
  }

  v7 = 80;
  v8 = 1u;
  v9 = v6;
  do
  {
    *a1 = v9 + 1;
    *v9 = v7;
    v9 = *a1;
    if (*a1 >= a1[3])
    {
      v9 = a1[2];
      *a1 = v9;
    }

    v7 = aPdbgn[v8++];
  }

  while (v8 != 7);
  sprintf_HHMMSS(a1, a2);
  sprintf1da(a1, a3[1046], v18, 0, 0);
  v10 = (*a1)++;
  *v10 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, a3[1047], v18, 0, 0);
  v11 = (*a1)++;
  *v11 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, a3[1048], v18, 0, 0);
  v12 = (*a1)++;
  *v12 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, a3[1049], v18, 0, 0);
  v13 = (*a1)++;
  *v13 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, a3[1050], v18, 0, 0);
  v14 = (*a1)++;
  *v14 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, a3[1051], v18, 0, 0);
  v15 = (*a1)++;
  *v15 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, a3[1052], v18, 0, 0);
  v16 = *MEMORY[0x29EDCA608];

  return NMEA_Add_checksum(a1, v6);
}

uint64_t sprintf_LatLon(char **a1, double a2, double a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = a2;
  v7 = fabs((a2 - a2) * 60.0);
  if (v6 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = -v6;
  }

  v9 = v7 * 1000000.0;
  v10 = -0.5;
  if (v9 > 0.0)
  {
    v10 = 0.5;
  }

  v11 = v9 + v10;
  if (v11 > 2147483650.0)
  {
    sprintf_02d(a1, v8);
    v12 = 0x7FFFFFFF;
    goto LABEL_13;
  }

  if (v11 >= -2147483650.0)
  {
    v12 = v11;
    sprintf_02d(a1, v8);
    if (v12 >= 10000000)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sprintf_02d(a1, v8);
    v12 = 0x80000000;
  }

  v13 = (*a1)++;
  *v13 = 48;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

LABEL_13:
  sprintf_7f(a1, v12, 7);
  v14 = ",N,";
  if (a2 < 0.0)
  {
    v14 = ",S,";
  }

  v15 = *v14;
  if (*v14)
  {
    v16 = *a1;
    v17 = (v14 + 1);
    do
    {
      *a1 = v16 + 1;
      *v16 = v15;
      v16 = *a1;
      if (*a1 >= a1[3])
      {
        v16 = a1[2];
        *a1 = v16;
      }

      v18 = *v17++;
      v15 = v18;
    }

    while (v18);
  }

  v19 = fabs((a3 - a3) * 60.0);
  if (a3 >= 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = -a3;
  }

  v21 = v19 * 1000000.0;
  v22 = -0.5;
  if (v21 > 0.0)
  {
    v22 = 0.5;
  }

  v23 = v21 + v22;
  if (v23 > 2147483650.0)
  {
    sprintf_03d(a1, v20);
    v24 = 0x7FFFFFFF;
    goto LABEL_32;
  }

  if (v23 >= -2147483650.0)
  {
    v24 = v23;
    sprintf_03d(a1, v20);
    if (v24 >= 10000000)
    {
      goto LABEL_32;
    }
  }

  else
  {
    sprintf_03d(a1, v20);
    v24 = 0x80000000;
  }

  v25 = (*a1)++;
  *v25 = 48;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

LABEL_32:
  result = sprintf_7f(a1, v24, 7);
  v27 = ",E,";
  if (a3 < 0.0)
  {
    v27 = ",W,";
  }

  v28 = *v27;
  if (*v27)
  {
    v29 = *a1;
    v30 = (v27 + 1);
    do
    {
      *a1 = v29 + 1;
      *v29 = v28;
      v29 = *a1;
      if (*a1 >= a1[3])
      {
        v29 = a1[2];
        *a1 = v29;
      }

      v31 = *v30++;
      v28 = v31;
    }

    while (v31);
  }

  v32 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf_HHMMSS(void *result, uint64_t a2)
{
  v2 = result;
  v7 = *MEMORY[0x29EDCA608];
  if (*(a2 + 8) == 1)
  {
    sprintf_02d(result, *(a2 + 16));
    sprintf_02d(v2, *(a2 + 18));
    sprintf_02d(v2, *(a2 + 20));
    v4 = (*v2)++;
    *v4 = 46;
    if (*v2 >= v2[3])
    {
      *v2 = v2[2];
    }

    result = sprintf_03d(v2, *(a2 + 22));
  }

  v5 = (*v2)++;
  *v5 = 44;
  if (*v2 >= v2[3])
  {
    *v2 = v2[2];
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

char **NMEA_Add_checksum(uint64_t a1, _BYTE *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  if (*a1 == a2)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *a2;
      if (v5 == 32)
      {
        LOBYTE(v5) = 48;
        *a2 = 48;
      }

      if (++a2 >= *(a1 + 24))
      {
        a2 = *(a1 + 16);
      }

      v4 ^= v5;
      v3 = *a1;
    }

    while (a2 != *a1);
    v6 = v4;
  }

  *a1 = v3 + 1;
  *v3 = 42;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  result = sprintf_02x(a1, v6);
  v8 = (*a1)++;
  *v8 = 10;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_DOP(uint64_t result, double a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2 >= 99.0)
  {
    v6 = *MEMORY[0x29EDCA608];
    v7 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v2 = a2 * 100.0;
    v3 = -0.5;
    if (v2 > 0.0)
    {
      v3 = 0.5;
    }

    v4 = v2 + v3;
    if (v4 <= 2147483650.0)
    {
      if (v4 >= -2147483650.0)
      {
        v5 = v4;
      }

      else
      {
        v5 = 0x80000000;
      }
    }

    else
    {
      v5 = 0x7FFFFFFF;
    }

    v8 = *MEMORY[0x29EDCA608];
    v9 = *MEMORY[0x29EDCA608];

    return sprintf_3f(result, v5, 3);
  }

  return result;
}

void *sprintf_AccEst(void *result, double a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a2 >= 99999.0)
  {
LABEL_9:
    v5 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (a2 > 9.9)
  {
    v2 = a2 + 0.5;
    if (v2 >= 2147483650.0)
    {
      v2 = 2147483650.0;
    }

    v3 = v2;
    if (v2 >= 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = -v3;
    }

    result = sprintf1da(result, v4, v21, 0, v3 >> 31);
    goto LABEL_9;
  }

  if (a2 <= 0.99)
  {
    if (a2 <= 0.099)
    {
      v14 = a2 * 1000.0;
      v15 = -0.5;
      if (v14 > 0.0)
      {
        v15 = 0.5;
      }

      v16 = v14 + v15;
      if (v16 <= 2147483650.0)
      {
        if (v16 >= -2147483650.0)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0x80000000;
        }
      }

      else
      {
        v17 = 0x7FFFFFFF;
      }

      v20 = *MEMORY[0x29EDCA608];

      return sprintf_4f(result, v17, 4);
    }

    else
    {
      v10 = a2 * 100.0;
      v11 = -0.5;
      if (v10 > 0.0)
      {
        v11 = 0.5;
      }

      v12 = v10 + v11;
      if (v12 <= 2147483650.0)
      {
        if (v12 >= -2147483650.0)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0x80000000;
        }
      }

      else
      {
        v13 = 0x7FFFFFFF;
      }

      v19 = *MEMORY[0x29EDCA608];

      return sprintf_3f(result, v13, 3);
    }
  }

  else
  {
    v6 = a2 * 10.0;
    v7 = -0.5;
    if (v6 > 0.0)
    {
      v7 = 0.5;
    }

    v8 = v6 + v7;
    if (v8 <= 2147483650.0)
    {
      if (v8 >= -2147483650.0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x80000000;
      }
    }

    else
    {
      v9 = 0x7FFFFFFF;
    }

    v18 = *MEMORY[0x29EDCA608];

    return sprintf_2f(result, v9);
  }
}

void ECEF2Geo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = *a1;
  if (*a2)
  {
    v6 = v5 + *(a2 + 48);
    v7 = *(a1 + 8);
    v8 = vaddq_f64(v7, *(a2 + 56));
    if (*(a2 + 2) == 1)
    {
      v9 = 0;
      v10 = (a2 + 88);
      do
      {
        v11 = v7.f64[0] * *(v10 - 1) + *(v10 - 2) * v5;
        v12 = *v10;
        v10 += 3;
        *(&v24 + v9) = v11 + v12 * v7.f64[1];
        v9 += 8;
      }

      while (v9 != 24);
      v5 = v6 + v24;
      v8 = vaddq_f64(v8, v25);
    }

    else
    {
      v5 = v5 + *(a2 + 48);
    }
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v13 = vmulq_f64(v8, v8).f64[0] + v5 * v5;
  v14 = *(a2 + 24);
  v15 = 1.0 / *(a2 + 16);
  v16 = v13 * v15;
  v17 = v8.f64[1];
  v18 = vmuld_lane_f64(v8.f64[1], v8, 1) * v15;
  v21 = 3;
  do
  {
    v19 = *(a2 + 32);
    v20 = *(a2 + 40) * v18;
    v14 = v14 - ((v20 + v20) * (v14 * (v14 * v14)) + v20 * (v14 * v14) * (v14 * v14) + (v16 + v20 - v19) * (v14 * v14) + v19 * -2.0 * v14 - v19) / (v19 * -2.0 + (v20 + v20) * 3.0 * (v14 * v14) + v20 * 4.0 * (v14 * (v14 * v14)) + (v16 + v20 - v19 + v16 + v20 - v19) * v14);
    --v21;
  }

  while (v21);
  v22 = v14 + 1.0;
  if (fabs(v5) >= 0.001 || fabs(v8.f64[0]) >= 0.001)
  {
    *(a3 + 8) = atan2(v8.f64[0], v5);
  }

  else
  {
    *(a3 + 8) = 0;
    v8.f64[0] = 0.0;
    if (fabs(v8.f64[1]) < 0.001)
    {
      goto LABEL_16;
    }
  }

  v8.f64[0] = atan2(v17 * v22, sqrt(v13));
LABEL_16:
  *a3 = v8.f64[0];
  *(a3 + 16) = *(a2 + 8) * (sqrt(v18 + v16 / (v22 * v22)) * (1.0 - v14 * *(a2 + 40) / *(a2 + 24)));
  v23 = *MEMORY[0x29EDCA608];
}

BOOL NK_Body_Frame_Meas(unsigned int a1, double *a2, const double *a3, const double (*a4)[3], double a5, unsigned int a6, double *a7)
{
  v30[33] = *MEMORY[0x29EDCA608];
  v12 = &v28[2];
  ECEF2FSD_RotM(a4, a5, v28);
  v13 = 0;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  do
  {
    v17 = *(v12 - 1) * v15 + *(v12 - 2) * v14;
    v18 = *v12;
    v12 += 3;
    v28[v13 + 9] = v17 + v18 * v16;
    ++v13;
  }

  while (v13 != 3);
  v19 = 0;
  v25 = 0.0;
  v20 = &v28[2];
  do
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    v21 = *(v20 - 1);
    *(v26 + a1) = *(v20 - 2);
    *(v26 + a1 + 1) = v21;
    v22 = *v20;
    v20 += 3;
    *(&v26[1] + a1) = v22;
    *(v26 + a6) = v28[v19 + 9];
    result = umeas(a7, a6, a3[v19++], v26, v30, v29, &v25, 1.0e20);
  }

  while (v19 != 3);
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Static_Filter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v129[3] = *MEMORY[0x29EDCA608];
  v7 = a1 + 0x2000;
  v116 = *(a1 + 11032);
  if (v116 <= *(a1 + 16) && *(a2 + 968) == 1)
  {
    v8 = *(a1 + 140);
    if (v8 >= *(a1 + 144))
    {
      v8 = *(a1 + 144);
    }

    if (v8 >= *(a1 + 148))
    {
      v8 = *(a1 + 148);
    }

    v9 = v8 < 0xB;
  }

  else
  {
    v9 = 1;
  }

  v117 = v9;
  memcpy(__dst, (a1 + 872), sizeof(__dst));
  v10 = 0;
  v11 = *(a2 + 688) - *&__dst[37];
  v12 = *(a2 + 696) - *(&__dst[37] + 1);
  v13 = *(a2 + 704) - *&__dst[38];
  v14 = (a2 + 848);
  do
  {
    v15 = v12 * *(v14 - 1) + *(v14 - 2) * v11;
    v16 = *v14;
    v14 += 3;
    *&v129[v10++] = v15 + v16 * v13;
  }

  while (v10 != 3);
  v18 = *v129;
  v17 = *&v129[1];
  v19 = sqrt(v17 * v17 + v18 * v18);
  v20 = *(a2 + 24200);
  v21 = *(a2 + 24208);
  *(a1 + 11128) = v19;
  *(a1 + 11152) = *(a1 + 11152) * 0.6 + v19 * 0.4;
  v22 = 4.0;
  if (v19 < 8.0)
  {
    v22 = 2.0;
    if (v19 >= 6.0)
    {
      v22 = 3.0;
    }
  }

  v23 = v20 + v21;
  v24 = *(a1 + 11144);
  if (*(a1 + 11028) < 3u || (v19 > v24 ? (v25 = v22 * v22 <= v23) : (v25 = 1), v25 || (*(a1 + 233) & 1) != 0))
  {
    v26 = 6.0;
    if (v19 <= 6.0 || v24 >= 6.0)
    {
      if (*(a1 + 11116) == 3)
      {
        v30 = v24 + -0.003;
        v26 = v19;
        if (v19 > v24 + -0.003)
        {
          goto LABEL_38;
        }

        v31 = 0.003;
      }

      else
      {
        v30 = v24 + -0.01;
        v26 = v19;
        if (v19 > v24 + -0.01)
        {
          goto LABEL_38;
        }

        v31 = 0.01;
      }

      v25 = v24 <= v31;
      v26 = *(a1 + 11144);
      if (!v25)
      {
        v26 = v30;
      }
    }
  }

  else
  {
    v26 = 10.0;
    if (v19 <= 10.0)
    {
      v27 = v24 + 0.5;
      if (v19 > v27 && v19 < 8.0)
      {
        v26 = v27;
      }

      else
      {
        v26 = v19;
      }
    }
  }

LABEL_38:
  *(a1 + 11144) = v26;
  v32 = *(a2 + 22736);
  if (v32 == 1 && *(a2 + 22732) != 1)
  {
    v33 = *(v7 + 2970);
  }

  else
  {
    *(v7 + 2969) = v26 <= 4.0;
    v33 = v26 > 4.0;
    *(v7 + 2970) = v26 > 4.0;
    if (v32 != 1)
    {
      if (v26 > 4.0)
      {
        v34 = 8;
      }

      else
      {
        v34 = 4;
      }

      *(a2 + 22732) = v34;
      *(a2 + 22736) = 0;
    }
  }

  if (v33)
  {
    v35 = 0.3;
  }

  else
  {
    v35 = 0.1;
  }

  if (*(a2 + 22724) == 1)
  {
    v36 = *(a2 + 22756);
  }

  else
  {
    v36 = 0;
  }

  v37 = *(a1 + 11268);
  v115 = v33;
  if (v37 == 20)
  {
    v37 = 19;
  }

  else if (!v37)
  {
    v38 = a3;
    *(a1 + 11400) = 0u;
    *(a1 + 11416) = 0u;
    *(a1 + 11368) = 0u;
    *(a1 + 11384) = 0u;
    *(a1 + 11336) = 0u;
    *(a1 + 11352) = 0u;
    *(a1 + 11304) = 0u;
    *(a1 + 11320) = 0u;
    *(a1 + 11272) = 0u;
    *(a1 + 11288) = 0u;
    goto LABEL_57;
  }

  v38 = a3;
  memmove((a1 + 11280), (a1 + 11272), 8 * v37);
LABEL_57:
  v39 = (a1 + 11272);
  *(a1 + 11272) = *(a2 + 944);
  v40 = v37 + 1;
  *(a1 + 11268) = v37 + 1;
  v41 = *(a1 + 11384);
  v127[6] = *(a1 + 11368);
  v127[7] = v41;
  v42 = *(a1 + 11416);
  v127[8] = *(a1 + 11400);
  v127[9] = v42;
  v43 = *(a1 + 11320);
  v127[2] = *(a1 + 11304);
  v127[3] = v43;
  v44 = *(a1 + 11352);
  v127[4] = *(a1 + 11336);
  v127[5] = v44;
  v45 = *(a1 + 11288);
  v127[0] = *(a1 + 11272);
  v127[1] = v45;
  result = VecSortAscR8(v127, 0, v37);
  v47 = (v37 + 1) >> 1;
  if (v37)
  {
    if (v37 == -1)
    {
      v49 = 0.0;
      goto LABEL_71;
    }

    v48 = (*(v127 + v47 - 1) + *(v127 + v47)) * 0.5;
  }

  else
  {
    v48 = *(v127 + v47);
  }

  v49 = 0.0;
  v50 = v37 + 1;
  do
  {
    v51 = *v39++;
    v52 = v51;
    if (v51 > v48 * 4.3512 && v48 > 1.0 && v40 == 20)
    {
      v52 = v48;
    }

    v49 = v49 + v52;
    --v50;
  }

  while (v50);
LABEL_71:
  v55 = v35 * 1.5;
  *(a1 + 11432) = v49 / v40;
  if (v19 >= 3.0 || v23 >= v55 * 3.0 * (v55 * 3.0))
  {
    *(v7 + 2972) = 0;
    v57 = v38;
    v58 = a2 + 20480;
    v59 = v117;
    goto LABEL_134;
  }

  v56 = *(v7 + 2972);
  v57 = v38;
  if (v56 == 5)
  {
    v61 = 4;
    *(v7 + 2972) = 4;
    v58 = a2 + 20480;
    v59 = v117;
    goto LABEL_80;
  }

  v58 = a2 + 20480;
  v59 = v117;
  if (!*(v7 + 2972))
  {
    v60 = 0;
    *(a1 + 11168) = 0u;
    *(a1 + 11184) = 0;
    goto LABEL_82;
  }

  v61 = *(v7 + 2972);
  if (v56 >= 1)
  {
LABEL_80:
    v60 = 0;
    v56 = 0;
    v62 = v61 + 1;
    v63 = (a1 + 2 * v61 + 11174);
    do
    {
      v64 = *(v63 - 5);
      *(v63 - 4) = *(v63 - 5);
      v65 = *v63;
      v63[1] = *v63;
      v56 += v64;
      v60 += v65;
      --v62;
      --v63;
    }

    while (v62 > 1);
    goto LABEL_82;
  }

  v56 = 0;
  v60 = 0;
LABEL_82:
  v66 = -0.5;
  if (v18 * 1000.0 <= 0.0)
  {
    v67 = -0.5;
  }

  else
  {
    v67 = 0.5;
  }

  v68 = v18 * 1000.0 + v67;
  if (v68 <= 2147483650.0)
  {
    if (v68 >= -2147483650.0)
    {
      v69 = v68;
    }

    else
    {
      LOWORD(v69) = 0;
    }
  }

  else
  {
    LOWORD(v69) = -1;
  }

  *(v7 + 2974) = v69;
  if (v17 * 1000.0 > 0.0)
  {
    v66 = 0.5;
  }

  v70 = v17 * 1000.0 + v66;
  if (v70 <= 2147483650.0)
  {
    if (v70 >= -2147483650.0)
    {
      v71 = v70;
    }

    else
    {
      LOWORD(v71) = 0;
    }
  }

  else
  {
    LOWORD(v71) = -1;
  }

  *(v7 + 2984) = v71;
  v72 = *(v7 + 2972) + 1;
  *(v7 + 2972) = v72;
  if ((v36 & 1) == 0)
  {
    v73 = ((v56 + v69) * (v56 + v69) + (v60 + v71) * (v60 + v71)) / (v72 * v72);
    if (v72 < 5)
    {
      v76 = v115;
      if (v72 < 3)
      {
        v79 = 0;
LABEL_124:
        v86 = 0.01;
        if (v76)
        {
          v86 = 0.09;
        }

        v36 = v19 * v19 <= v23 * 9.0 && (v23 * 9.0 + v19 * v19 < v86 || v79);
        goto LABEL_129;
      }
    }

    else
    {
      v74 = -0.5;
      if (v55 * 1000.0 > 0.0)
      {
        v74 = 0.5;
      }

      v75 = v55 * 1000.0 + v74;
      v76 = v115;
      if (v75 <= 2147483650.0)
      {
        v80 = -2147483650.0;
        if (v75 > -2147483650.0)
        {
          v80 = v75;
        }

        v77 = v80;
        if (v75 < -2147483650.0)
        {
          v78 = 0x80000000;
        }

        else
        {
          v78 = v75;
        }
      }

      else
      {
        v77 = 0x7FFFFFFF;
        v78 = 0x7FFFFFFF;
      }

      if (v73 < v78 * v77)
      {
        v79 = 1;
        goto LABEL_124;
      }
    }

    v81 = -0.5;
    if (v35 * 1000.0 > 0.0)
    {
      v81 = 0.5;
    }

    v82 = v35 * 1000.0 + v81;
    if (v82 <= 2147483650.0)
    {
      v85 = -2147483650.0;
      if (v82 > -2147483650.0)
      {
        v85 = v35 * 1000.0 + v81;
      }

      v83 = v85;
      if (v82 < -2147483650.0)
      {
        v84 = 0x80000000;
      }

      else
      {
        v84 = v82;
      }
    }

    else
    {
      v83 = 0x7FFFFFFF;
      v84 = 0x7FFFFFFF;
    }

    v79 = v73 < v84 * v83;
    goto LABEL_124;
  }

  v36 = 1;
LABEL_129:
  if (*(v58 + 2244) != 1)
  {
    if (v36)
    {
      v87 = 2;
    }

    else
    {
      v87 = 3;
    }

    *(v58 + 2240) = v87;
    *(v58 + 2244) = 0;
  }

LABEL_134:
  v88 = (v7 + 2924);
  v89 = *(v7 + 2924);
  if (v89 > 1)
  {
    if (v89 != 3)
    {
      if (v89 == 2)
      {
        v91 = v116 != 0;
        goto LABEL_144;
      }

LABEL_148:
      result = gn_report_assertion_failure("switch/case error NK_Static_Filter.c");
      goto LABEL_163;
    }

    if (v116 || v19 > 3.0)
    {
LABEL_159:
      *(a1 + 11116) = 0;
      goto LABEL_163;
    }

    if (v19 <= v55 && v36 & 1 | (v19 <= v35))
    {
LABEL_158:
      *(a1 + 11136) = *a2;
      goto LABEL_163;
    }

    v93 = 2;
LABEL_162:
    *v88 = v93;
    goto LABEL_163;
  }

  if (!v89)
  {
    if (v19 > 2.0)
    {
      v92 = 1;
    }

    else
    {
      v92 = v59;
    }

    if (v92)
    {
      goto LABEL_163;
    }

    v93 = 1;
    goto LABEL_162;
  }

  if (v89 != 1)
  {
    goto LABEL_148;
  }

  v90 = *(a1 + 11120);
  *(a1 + 11120) = v90 + 1;
  if (!v116 && v19 <= 3.0)
  {
    if (v90 < 1)
    {
      goto LABEL_163;
    }

    v91 = 0;
    *v88 = 2;
LABEL_144:
    if (v19 <= 3.0 && !v91)
    {
      if (!(v36 & 1 | (v19 <= v35)))
      {
        goto LABEL_163;
      }

      *(a1 + 11116) = 3;
      goto LABEL_158;
    }

    goto LABEL_159;
  }

  *v88 = 0;
LABEL_163:
  if (((*(v7 + 2969) | v36) & 1) != 0 || *(v7 + 2970) == 1 && v19 < 3.0 && v23 < 4.0 && *(a1 + 11028) >= 3u)
  {
    LOBYTE(v120.f64[0]) = 0;
    LODWORD(v122) = 0;
    LOBYTE(v118) = 0;
    if (Core_Get_Static_Status(&v118) && !(v36 & 1 | (v118 < 0xAu)))
    {
      EvLog_nd("NKSF:  Static override", 2, v94, v118, *(a1 + 11116));
      *(a1 + 11116) = 3;
      *(a1 + 11136) = *a2;
    }

    result = Core_Get_Ped_Status(&v122, &v120);
    if (result)
    {
      v96 = v118;
      if (LODWORD(v122) == 2 && v118 > 2u)
      {
LABEL_170:
        if (*(v7 + 2970) == 1)
        {
          *(v7 + 2969) = 1;
          *(a1 + 11144) = v19;
          *(a1 + 20) = 2;
          result = EvLog_nd("NKSF:  PED_STOPPED:  Car -> Ped override", 2, v95, v96, LOBYTE(v120.f64[0]));
        }

        *(a1 + 11116) = 3;
        *(a1 + 11136) = *a2;
        goto LABEL_190;
      }

      if (SLODWORD(v122) <= 1)
      {
        if (!LODWORD(v122))
        {
          goto LABEL_190;
        }

        if (LODWORD(v122) == 1)
        {
          goto LABEL_170;
        }

LABEL_186:
        result = EvCrt_Illegal_Default("NK_Static_Filter", 0x240u);
        goto LABEL_190;
      }

      if (LODWORD(v122) == 2)
      {
        if (*(v7 + 2970) == 1)
        {
          *(v7 + 2969) = 1;
          *(a1 + 11144) = v19;
          *(a1 + 20) = 2;
          result = EvLog_nd("NKSF:  PED_WALKING:  Car -> Ped override", 2, v95, v96, LOBYTE(v120.f64[0]));
        }

        *v88 = 2;
      }

      else
      {
        if (LODWORD(v122) != 3)
        {
          goto LABEL_186;
        }

        if (*(v7 + 2969) == 1)
        {
          result = EvLog_nd("NKSF:  PED_NOT_PED:  Ped -> Car indication", 2, v95, v118, LOBYTE(v120.f64[0]));
        }
      }
    }
  }

LABEL_190:
  if (!((*(v57 + 66) != 4) | v59 & 1) && (*v88 == 3 || *v88 == 2 && *(v7 + 2970) == 1))
  {
    LOWORD(v120.f64[0]) = 0;
    v124[0] = 0;
    v123 = 0;
    memset(&v124[4], 0, 32);
    v125 = 0u;
    v126 = 0;
    *&v124[8] = *(a2 + 816);
    *&v124[16] = 0x4010000000000000;
    HIDWORD(v122) = 2;
    LOBYTE(v122) = 1;
    *(&v125 + 4) = 0x412E848000000000;
    result = Vert_Meas_Update(5u, (a2 + 832), 0xBu, &v122, __dst, &v120, *&v124[8]);
    v97 = *(a1 + 11248);
    if (v97 && *(v7 + 2970) == 1 && *(a1 + 11028))
    {
      v97 += *(a2 + 8);
      *(a1 + 11248) = v97;
    }

    if ((*(v58 + 2276) & 1) == 0)
    {
      v122 = 0.0;
      v123 = 0;
      *v124 = 0;
      __asm { FMOV            V0.2D, #4.0 }

      v118 = _Q0;
      v119 = 0x4010000000000000;
      if (v97 && *a2 - v97 <= 30000)
      {
        v101 = (a1 + 11240);
        v102 = 1;
        v103 = a4;
      }

      else
      {
        v103 = a4;
        if (*(a1 + 11188) < 2 || *a2 - *(a1 + 11208) > 30000)
        {
          v102 = 0;
          v101 = (a2 + 952);
        }

        else
        {
          v101 = (a1 + 11192);
          v102 = 1;
        }
      }

      v104 = 0;
      v105 = *v101;
      *(v7 + 2968) = v102;
      v106 = *(a2 + 688);
      v120 = vsubq_f64(v106, __dst[37]);
      v107 = *(a2 + 704);
      v121 = v107 - *&__dst[38];
      do
      {
        *&v124[8 * v104] = *(&v120 + v104 + 2) - *(v103 + 112 + 8 * v104);
        v108 = v104 + 3;
        --v104;
      }

      while (v108 > 1);
      v109 = 0;
      v120 = v106;
      v121 = v107;
      do
      {
        *&v124[8 * v109] = *(&v120 + v109 + 2) - *(v103 + 112 + 8 * v109);
        v110 = v109 + 3;
        --v109;
      }

      while (v110 > 1);
      result = NK_Body_Frame_Meas(8u, &v122, &v118, (a2 + 832), v105 * 0.0174532925, 0xBu, __dst);
    }

    *(a1 + 1480) = *&__dst[38];
    v111 = __dst[36];
    *(a1 + 1432) = __dst[35];
    *(a1 + 1448) = v111;
    *(a1 + 1464) = __dst[37];
    v112 = __dst[34];
    *(a1 + 1400) = __dst[33];
    *(a1 + 1416) = v112;
  }

  else
  {
    *(v7 + 2968) = 0;
  }

  v113 = *MEMORY[0x29EDCA608];
  return result;
}

double *Comp_GSpeed_Partial(double a1, double a2, double *result, double *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (fabs(a1) > 0.0001 || fabs(a2) > 0.0001)
  {
    v10 = 1.0 / sqrt(a1 * a1 + a2 * a2);
    *a4 = v10 * (*result * a1 + result[3] * a2);
    a4[1] = v10 * (result[1] * a1 + result[4] * a2);
    v9 = v10 * (result[2] * a1);
  }

  else
  {
    __asm { FMOV            V0.2D, #1.0 }

    *a4 = _Q0;
    v9 = 1.0;
  }

  a4[2] = v9;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void AzEl_RadDeg(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = asin(*(a2 + 8));
  *(a2 + 24) = v4;
  *(a2 + 32) = v4 * 57.2957795;
  *a2 = (v4 * 57.2957795 + 0.5) - (v4 * 57.2957795 < -0.5);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (fabs(v5) > 0.00001 || fabs(v6) > 0.00001)
  {
    v8 = atan2(v5, v6);
    v9 = v8 * 57.2957795;
    if (v8 * 57.2957795 < 0.0)
    {
      v9 = v8 * 57.2957795 + 360.0;
    }

    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    v7 = (v9 + 0.5);
    if (v7 == 360)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  *a1 = v7;
  v10 = *MEMORY[0x29EDCA608];
}

uint64_t MGen_Init(int64x2_t *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  InitIMUGen(a1);
  a1[59].i64[1] = 0xFFEFFFFFFFFFFFFFLL;
  a1[60] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v2 = 0.0;
  Set_Mat_Const(3, 1u, 3, a1[61].i32, 0.0);
  MotionCtxGen_Init(a1[63].i64);
  a1[93].i8[12] = 0;
  a1[93].i32[2] = 0;
  a1[107].i32[2] = 0;
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v3 = mach_continuous_time();
    if (g_TCU)
    {
      v2 = *(g_TCU + 8);
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %s", "MGen_Init", 61, (*&g_MacClockTicksToMsRelation * v3), v2, "MeasGen Init process done ");
  }

  v4 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t MGen_generateMeas(const char *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = *MEMORY[0x29EDCA608];
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v12 = *(g_TCU + 8);
    }

    else
    {
      v12 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %s", "MGen_generateMeas", 82, v11, v12, "generate measurements");
  }

  GnssGen_run(a4 + 1496, a3, a2, a5, a1, a6);
  MotionCtxGen_Run(a4 + 1008, a3, a2, a5, a1);
  v13 = IMUGen_run(a4, a3, a2, a5, a1, a4 + 1008);
  DEMGen_run((a4 + 952), a3, a2, a5, a1);
  MAPGen_run((a4 + 960), a3, a2, a5, a1);
  POSGen_run(a4 + 968, a3, a2, a5, a1);
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v15 = *(g_TCU + 8);
    }

    else
    {
      v15 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %s", "MGen_generateMeas", 124, v14, v15, "generate measurements done");
  }

  v16 = *MEMORY[0x29EDCA608];
  return v13;
}

void Hal02_RouteZxPkt(unsigned __int8 *a1, size_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      goto LABEL_17;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
LABEL_16:
    LbsOsaTrace_WriteLog(0xDu, __str, v6, 0, 1);
    goto LABEL_17;
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      goto LABEL_17;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len\n");
    goto LABEL_16;
  }

  v4 = a1[2];
  if (v4 > 0x4E)
  {
    if (a1[2] > 0x55u)
    {
      if (v4 == 86 || v4 == 88)
      {
        goto LABEL_29;
      }
    }

    else if (v4 == 79)
    {
      if ((a1[3] | 4) != 0x54)
      {
        goto LABEL_17;
      }
    }

    else if (v4 == 84)
    {
      goto LABEL_29;
    }

    goto LABEL_32;
  }

  if (a1[2] > 0x48u)
  {
    if (v4 == 73)
    {
      v11 = *MEMORY[0x29EDCA608];

      Hal29_HandleCpAgentResponse(a1, a2);
      return;
    }

LABEL_32:
    v9 = qword_2A1939590;
    if (qword_2A1939590)
    {
LABEL_33:
      v10 = *MEMORY[0x29EDCA608];

      v9(a2, a1);
      return;
    }

LABEL_17:
    v7 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v4 != 66)
  {
    if (v4 == 68)
    {
      v5 = a1[3];
      if ((dword_2A191DCD0 - 2472) < 2 || dword_2A191DCD0 == 1107)
      {
        if (v5 != 77 && v5 != 70)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (dword_2A191DCD4 != 4 || dword_2A191DCD0 != 3431 || xmmword_2A191DCC0 != 0x100000002)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v14 = mach_continuous_time();
            v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssHw\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 87, "Hal02_CheckDebugConfigMsg", 515);
            LbsOsaTrace_WriteLog(0xDu, __str, v15, 2, 1);
          }

          goto LABEL_50;
        }

        v13 = v5 - 68;
        if (v13 > 8 || ((1 << v13) & 0x121) == 0)
        {
LABEL_50:
          if (dword_2A191DCD4 == 4 && dword_2A191DCD0 == 3431 && xmmword_2A191DCC0 == 0x100000002 && (v16 = a1[3] - 67, v16 <= 0x17) && ((1 << v16) & 0x812021) != 0)
          {
            v17 = (a2 - 2);
          }

          else
          {
            v17 = a2;
          }

          GnssDbgMgr_WriteLog(v17, a1);
          goto LABEL_17;
        }
      }

LABEL_29:
      v9 = g_CbList;
      if (!g_CbList)
      {
        goto LABEL_17;
      }

      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v8 = a1[3];
  if (v8 == 83)
  {
    goto LABEL_32;
  }

  if (v8 == 66)
  {
    goto LABEL_29;
  }

  v12 = *MEMORY[0x29EDCA608];

  Hal02_HandleResp(a1, a2);
}

uint64_t Hal02_07ChipRead(void)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: transPrep success\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 68, "Hal02_07ChipRead");
    LbsOsaTrace_WriteLog(0xDu, __str, v1, 5, 1);
  }

  if ((*(*gp_Comm + 48))(gp_Comm))
  {
    do
    {
      Data = Hal_CommsItfReadData(g_ReadBuffer, 0x1800u);
      if (Data)
      {
        v4 = Data;
        if ((Data & 0x80000000) != 0)
        {
          goto LABEL_14;
        }

        if (Data > 0x1800)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v5 = mach_continuous_time();
            v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NumOfBytesRead,%u,Maxbufsize,%u\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 69, "Hal02_07ChipRead", 772, v4, 6144);
            LbsOsaTrace_WriteLog(0xDu, __str, v6, 0, 1);
          }

          memset_s(g_ReadBuffer, 0x1800uLL, 0, 0x1800uLL);
        }

        else
        {
          Hal02_06ParsezxPacket(g_ReadBuffer, Data, v3);
        }
      }
    }

    while (((*(*gp_Comm + 48))(gp_Comm) & 1) != 0);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 69, "Hal02_07ChipRead", 1281);
    LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
  }

LABEL_14:
  result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RdrThrd exit\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 73, "Hal02_07ChipRead");
    result = LbsOsaTrace_WriteLog(0xDu, __str, v11, 4, 1);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

char *Hal02_06ParsezxPacket(char *result, size_t a2, uint8x8_t a3)
{
  v39 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_58;
    }

    bzero(__n_4, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
LABEL_9:
    result = LbsOsaTrace_WriteLog(0xDu, __n_4, v6, 0, 1);
    goto LABEL_58;
  }

  if (!a2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_58;
    }

    bzero(__n_4, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx len\n");
    goto LABEL_9;
  }

  v4 = result;
  if (_MergedGlobals_4)
  {
    memcpy_s("Hal02_06ParsezxPacket", 355, &g_ProccessBuff, 0x2000u, &unk_2A19717A8, _MergedGlobals_4);
    result = memcpy_s("Hal02_06ParsezxPacket", 356, &g_ProccessBuff + _MergedGlobals_4, 0x2000 - _MergedGlobals_4, v4, a2);
    v5 = _MergedGlobals_4;
    v4 = &g_ProccessBuff;
  }

  else
  {
    v5 = 0;
  }

  __n = v5 + a2;
  _MergedGlobals_4 = 0;
  __n_2 = 0;
  if (v5 + a2)
  {
    v7 = &unk_2A1971000;
    while (1)
    {
      v8 = &v4[__n_2];
      if (__n <= 7u)
      {
        result = memcpy_s("Hal02_06ParsezxPacket", 375, &unk_2A19717A8, 0x800u, v8, __n);
        _MergedGlobals_4 = __n;
        goto LABEL_58;
      }

      if (*v8 != 122 || v8[1] != 120)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0);
        if (result)
        {
          bzero(__n_4, 0x410uLL);
          v14 = mach_continuous_time();
          v15 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: 0x%02x,0x%02x\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 68, "Hal02_06ParsezxPacket", *v8, v8[1]);
          result = LbsOsaTrace_WriteLog(0xDu, __n_4, v15, 5, 1);
        }

        ++__n_2;
        --__n;
        ++dword_2A19717A4;
        HIDWORD(v16) = 652835029 * dword_2A19717A4;
        LODWORD(v16) = 652835029 * dword_2A19717A4;
        if ((v16 >> 3) <= 0x418937)
        {
          result = LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0);
          if (result)
          {
            bzero(__n_4, 0x410uLL);
            v17 = mach_continuous_time();
            v18 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx Err,%u\n", (*&g_MacClockTicksToMsRelation * v17), "HAL", 87, "Hal02_06ParsezxPacket", 770, dword_2A19717A4);
            result = LbsOsaTrace_WriteLog(0xDu, __n_4, v18, 2, 1);
          }
        }

        goto LABEL_29;
      }

      a3.i32[0] = *(v8 + 2);
      v9 = vmovl_u8(a3).u64[0];
      v10 = v8[6];
      if (v8[7] != (vaddv_s16(v9) + v10))
      {
        break;
      }

      v11 = v9.u16[3] | (v10 << 8);
      if (v11 >= 0x7F8)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0);
        if (result)
        {
          bzero(__n_4, 0x410uLL);
          v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          ++v7[488];
          v13 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx len,%u,Pktloss,%u\n", v12);
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      v21 = v11 + 9;
      if (((v11 + 9) & 3) != 0)
      {
        v22 = 4 - ((v11 + 9) & 3);
      }

      else
      {
        v22 = 0;
      }

      if (v22 + v21 > __n)
      {
        result = memcpy_s("Hal02_06ParsezxPacket", 431, &unk_2A19717A8, 0x800u, &v4[__n_2], __n);
        _MergedGlobals_4 = __n;
        goto LABEL_58;
      }

      if (v4[v11 + 8 + __n_2] == 10)
      {
        if (dword_2A19717A4)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
          {
            bzero(__n_4, 0x410uLL);
            v23 = mach_continuous_time();
            v24 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: zx pkt recd ,prev invalid data,%u\n", (*&g_MacClockTicksToMsRelation * v23), "HAL", 68, "Hal02_06ParsezxPacket", dword_2A19717A4);
            LbsOsaTrace_WriteLog(0xDu, __n_4, v24, 5, 1);
          }

          dword_2A19717A4 = 0;
        }

        if (g_RouteZxData)
        {
          result = g_RouteZxData(&v4[__n_2], v21);
        }

        else
        {
          result = LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0);
          if (result)
          {
            bzero(__n_4, 0x410uLL);
            v29 = mach_continuous_time();
            v30 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: RouteZxData is NULL\n", (*&g_MacClockTicksToMsRelation * v29), "HAL", 87, "Hal02_06ParsezxPacket");
            result = LbsOsaTrace_WriteLog(0xDu, __n_4, v30, 2, 1);
          }
        }

        if (((v11 + 9) & 3) != 0)
        {
          v31 = (4 - ((v11 + 9) & 3));
          v32 = &v4[v21];
          v7 = &unk_2A1971000;
          while (v32[__n_2] != 122)
          {
            ++v32;
            if (!--v31)
            {
              goto LABEL_56;
            }
          }

          result = LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0);
          if (result)
          {
            bzero(__n_4, 0x410uLL);
            v33 = mach_continuous_time();
            v34 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: Msg not 4byte aligned zx%c%c%c\n", (*&g_MacClockTicksToMsRelation * v33), "HAL", 87, "Hal02_06ParsezxPacket", v4[__n_2], v4[__n_2 + 1], v4[__n_2 + 2]);
            result = LbsOsaTrace_WriteLog(0xDu, __n_4, v34, 2, 1);
          }

          LOBYTE(v22) = 0;
        }

        else
        {
          LOBYTE(v22) = 0;
          v7 = &unk_2A1971000;
        }

LABEL_56:
        __n = __n - (v11 + v22) - 9;
        __n_2 += v21 + v22;
      }

      else
      {
        result = LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0);
        v7 = &unk_2A1971000;
        if (result)
        {
          bzero(__n_4, 0x410uLL);
          v25 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          v26 = v4[__n_2 + 2];
          v27 = v4[__n_2 + 3];
          v28 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,Pktloss,%u\n", v25, "HAL", 87, "Hal02_06ParsezxPacket", 782, v26, v27, ++dword_2A19717A0);
          result = LbsOsaTrace_WriteLog(0xDu, __n_4, v28, 2, 1);
        }

        ++__n_2;
        --__n;
      }

LABEL_29:
      if (!__n)
      {
        goto LABEL_58;
      }
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0);
    if (result)
    {
      bzero(__n_4, 0x410uLL);
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v20 = v8[7];
      ++v7[488];
      v13 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx rcvd,0x%02x,computed,0x%02x,Pktloss,%u\n", v19, "HAL");
LABEL_27:
      result = LbsOsaTrace_WriteLog(0xDu, __n_4, v13, 2, 1);
    }

LABEL_28:
    ++__n_2;
    --__n;
    goto LABEL_29;
  }

LABEL_58:
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

void Hal02_AsyncReadCb(char *a1, size_t a2, uint8x8_t a3)
{
  v3 = a2;
  v4 = a1;
  v9 = *MEMORY[0x29EDCA608];
  if (a2 > 0x1800)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx v_RxBufferSize %u,processing %u bytes\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 87, "Hal02_AsyncReadCb", 772, v3, 6144);
      LbsOsaTrace_WriteLog(0xDu, __str, v6, 2, 1);
    }

    a1 = v4;
    a2 = 6144;
  }

  else
  {
    a2 = a2;
  }

  Hal02_06ParsezxPacket(a1, a2, a3);
  if (v4)
  {
    free(v4);
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t Hal02_DeInitParser(void)
{
  v2 = *MEMORY[0x29EDCA608];
  result = memset_s(&unk_2A19717A8, 0x800uLL, 0, 0x800uLL);
  _MergedGlobals_4 = 0;
  g_RouteZxData = Hal02_RouteZxPkt;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void Hal02_SetProdRouteZxData(void)
{
  v1 = *MEMORY[0x29EDCA608];
  g_RouteZxData = Hal02_RouteZxPktProd;
  v0 = *MEMORY[0x29EDCA608];
}

void Hal02_RouteZxPktProd(unsigned __int8 *a1, size_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2 > 7)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Data,MC,%c,MID,%c,MIDX,%c\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 68, "Hal02_RouteZxPktProd", a1[2], a1[3], a1[4]);
        LbsOsaTrace_WriteLog(0xDu, __str, v6, 5, 1);
      }

      v7 = a1[2];
      if (v7 == 73)
      {
        Hal29_HandleCpAgentResponse(a1, a2);
      }

      else if (v7 == 66)
      {
        Hal02_HandleResp(a1, a2);
      }

      else if (g_CbList)
      {
        g_CbList(a2, a1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len\n");
LABEL_7:
      LbsOsaTrace_WriteLog(0xDu, __str, v3, 0, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
    goto LABEL_7;
  }

  v8 = *MEMORY[0x29EDCA608];
}

void Hal02_HandleResp(unsigned __int8 *a1, size_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (Hal11_HandleEvent(a1[3], a1, a2))
  {
    goto LABEL_2;
  }

  if (g_HalState <= 8)
  {
    if ((g_HalState - 4) < 5)
    {
      v6 = *MEMORY[0x29EDCA608];

      Hal19_HandlePatchResp(a1, a2);
      return;
    }

    if (g_HalState >= 2)
    {
      if ((g_HalState - 2) >= 2)
      {
        goto LABEL_39;
      }

      v7 = *MEMORY[0x29EDCA608];

      Hal17_HandleReset(a1, a2);
      return;
    }

    goto LABEL_2;
  }

  if (g_HalState <= 12)
  {
    if ((g_HalState - 9) < 2)
    {
      v9 = *MEMORY[0x29EDCA608];

      Hal15_HandleRevResp(a1, a2);
    }

    else if (g_HalState == 11)
    {
      v12 = *MEMORY[0x29EDCA608];

      Hal18_HandleBaudResp(a1, a2);
    }

    else
    {
      if (g_HalState != 12)
      {
        goto LABEL_39;
      }

      v8 = *MEMORY[0x29EDCA608];

      Hal19_HandleBufferResp(a1, a2);
    }

    return;
  }

  if (g_HalState < 16)
  {
LABEL_2:
    v4 = *MEMORY[0x29EDCA608];
    return;
  }

  switch(g_HalState)
  {
    case 18:
      v11 = *MEMORY[0x29EDCA608];

      Hal32_HandlPowerReportRsp(a1, a2);
      break;
    case 17:
      v10 = *MEMORY[0x29EDCA608];

      Hal26_HandleConfigureUartLpRes(a1, a2);
      break;
    case 16:
      v5 = *MEMORY[0x29EDCA608];

      Hal29_HandleCpAgentResponse(a1, a2);
      return;
    default:
LABEL_39:
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%u,MC,%c,MID,%c,MIDE,%c\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 87, "Hal02_HandleResp", 262, g_HalState, a1[2], a1[3], a1[4]);
        LbsOsaTrace_WriteLog(0xDu, __str, v14, 2, 1);
      }

      goto LABEL_2;
  }
}

uint64_t GN_AGLON_Set_Eph_El(char *a1)
{
  v78 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGLON_Set_Eph_El");
  if (result)
  {
    if (g_Enable_Event_Log >= 5u)
    {
      EvLog_v("GN_AGLON_Set_Eph_El: %2d %2d %2d %4d %d %2d  %2d %d %d %d  %9d %9d %9d  %8d %8d %8d  %3d %3d %3d  %3d %8d %5d  %d", *a1, a1[1], a1[2], *(a1 + 2), a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], *(a1 + 3), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 8), a1[36], a1[37], a1[38], a1[39], *(a1 + 10), *(a1 + 22), a1[46]);
    }

    v3 = *a1;
    if ((*a1 - 25) <= 0xE7u)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloN = %d <%d or >%d, Out of range!");
LABEL_44:
      result = 0;
      goto LABEL_45;
    }

    v4 = a1[2];
    if (v4 - 96 <= 0xFFFFFFA0)
    {
      v26 = a1[2];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloTb = %d <1 or >95, Out of range!");
      goto LABEL_44;
    }

    v5 = *(a1 + 2);
    if (v5 >= 0x5B6)
    {
      v27 = *(a1 + 2);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloNT = %d >%d, Out of range!");
      goto LABEL_44;
    }

    v6 = a1[6];
    if (v6 >= 2)
    {
      v28 = a1[6];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloLn = %d >1, Out of range!");
      goto LABEL_44;
    }

    v7 = a1[7];
    if (v7 >= 0x10)
    {
      v29 = a1[7];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloFT = %d >15, Out of range!");
      goto LABEL_44;
    }

    v8 = a1[8];
    if (v8 >= 0x20)
    {
      v30 = a1[8];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloEn = %d >31, Out of range!");
      goto LABEL_44;
    }

    v9 = a1[9];
    if (v9 >= 4)
    {
      v31 = a1[9];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloP1 = %d <0 or >3, Out of range!");
      goto LABEL_44;
    }

    v10 = a1[11];
    if (v10 >= 4)
    {
      v32 = a1[11];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloM = %d <0 or >3, Out of range!");
      goto LABEL_44;
    }

    v11 = *(a1 + 3);
    if ((v11 - 0x4000000) >> 27 != 31)
    {
      v33 = *(a1 + 3);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloX = %d <-2^26 or >=2^26, Out of range!");
      goto LABEL_44;
    }

    v12 = *(a1 + 4);
    if ((v12 - 0x4000000) >> 27 != 31)
    {
      v34 = *(a1 + 4);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloY = %d <-2^26 or >=2^26, Out of range!");
      goto LABEL_44;
    }

    v13 = *(a1 + 5);
    if ((v13 - 0x4000000) >> 27 != 31)
    {
      v35 = *(a1 + 5);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloZ = %d <-2^26 or >=2^26, Out of range!");
      goto LABEL_44;
    }

    v14 = *(a1 + 6);
    if ((v14 - 0x800000) >> 24 != 255)
    {
      v36 = *(a1 + 6);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloXdot = %d <-2^23 or >=2^23, Out of range!");
      goto LABEL_44;
    }

    v15 = *(a1 + 7);
    if ((v15 - 0x800000) >> 24 != 255)
    {
      v37 = *(a1 + 7);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloYdot = %d <-2^23 or >=2^23, Out of range!");
      goto LABEL_44;
    }

    v16 = *(a1 + 8);
    if ((v16 - 0x800000) >> 24 != 255)
    {
      v38 = *(a1 + 8);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloZdot = %d <-2^23 or >=2^23, Out of range!");
      goto LABEL_44;
    }

    v17 = a1[36];
    if ((v17 - 16) <= 0xDFu)
    {
      v39 = a1[36];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloXdotdot = %d <-2^4 or >=2^4, Out of range!");
      goto LABEL_44;
    }

    v18 = a1[37];
    if ((v18 - 16) <= 0xDFu)
    {
      v40 = a1[37];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloYdotdot = %d <-2^4 or >=2^4, Out of range!");
      goto LABEL_44;
    }

    v19 = a1[38];
    if ((v19 - 16) <= 0xDFu)
    {
      v41 = a1[38];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloZdotdot = %d <-2^4 or >=2^4, Out of range!");
      goto LABEL_44;
    }

    v20 = a1[39];
    if ((v20 - 16) <= 0xDFu)
    {
      v42 = a1[39];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloDeltaTau = %d <-2^4 or >=2^4, Out of range!");
      goto LABEL_44;
    }

    v21 = *(a1 + 10);
    if ((v21 - 0x200000) >> 22 != 1023)
    {
      v43 = *(a1 + 10);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloDeltaTau = %d <-2^21 or >=2^21, Out of range!");
      goto LABEL_44;
    }

    v22 = *(a1 + 22);
    if (((v22 - 1024) >> 11) <= 0x1Eu)
    {
      v44 = *(a1 + 22);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloGamma = %d <-2^10 or >=2^10, Out of range!");
      goto LABEL_44;
    }

    v24 = a1[1];
    if ((a1[1] - 7) < 0xF2u)
    {
      v24 = 2139062143;
    }

    v47 = v24;
    if (a1[46])
    {
      v25 = 5;
    }

    else
    {
      v25 = 3;
    }

    v45 = 0;
    v46 = v25;
    v48 = v3;
    v49 = v4;
    v51 = v5;
    v54 = v6;
    v56 = v7;
    v57 = v8;
    v58 = v9;
    v59 = a1[10];
    v60 = v10;
    v61 = v11;
    v62 = v12;
    v63 = v13;
    v64 = v14;
    v65 = v15;
    v66 = v16;
    v67 = v17;
    v68 = v18;
    v69 = v19;
    v70 = v20;
    v71 = v21;
    v72 = v22;
    v53 = 0;
    v55 = 0;
    v52 = v6;
    v50 = 1500 * (v4 & 3) + 10000 * (v4 >> 2);
    memset(v77, 0, 62);
    GLON_EphInt2Bin(&v45, v77);
    v73 = 0;
    *&v76[4] = 0u;
    BYTE4(v73) = BYTE8(v77[0]);
    v74 = *(v77 + 12);
    v75 = *(&v77[1] + 12);
    *v76 = *(&v77[2] + 12);
    v76[16] = v46 == 5;
    result = GN_AGLON_Set_Eph(*a1, &v73);
  }

LABEL_45:
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

const char *TCU_UpdateTime(const char *result, unsigned int a2, unsigned int a3, char a4, int a5, unsigned int a6, double a7)
{
  v14 = result;
  v15 = a6;
  v59 = *MEMORY[0x29EDCA608];
  v16 = *(result + 19);
  v17 = a6 + v16 * 4294967300.0 - *(result + 4);
  if (v17 < 0.0 && v17 + 4294967300.0 < 1500.0)
  {
    *(result + 19) = v16 + 1;
    v18 = g_FPE_LogSeverity;
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v20 = *(g_TCU + 8);
      }

      else
      {
        v20 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f TTick wraparound", "TCU_WrapDetectAndFix", 96, v19, v20);
      v18 = g_FPE_LogSeverity;
    }

    if ((v18 & 0x200) != 0)
    {
      result = LC_LOG_NMEA_GENERIC("%s,CLKWt", "$PFPEX");
    }
  }

  LODWORD(v7) = *(v14 + 19);
  if (a3 == 11)
  {
    v21 = a7 - v14[1];
    if (v21 < 0.0)
    {
      v22 = g_FPE_LogSeverity;
      if (v21 + 604800.0 >= 1.5)
      {
        if ((g_FPE_LogSeverity & 2) != 0)
        {
          v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v26 = *(g_TCU + 8);
          }

          else
          {
            v26 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f CLK_CHK: setting time in the past TOW = %f, prevTOW = %f", "TCU_CheckInputs", 438, v25, v26, a7, v14[1]);
        }
      }

      else
      {
        if ((g_FPE_LogSeverity & 4) != 0)
        {
          v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v24 = *(g_TCU + 8);
          }

          else
          {
            v24 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f CLK_CHK: TOW wraparound: %f --> %f", "TCU_CheckInputs", 433, v23, v24, v14[1], a7);
          v22 = g_FPE_LogSeverity;
        }

        if ((v22 & 0x200) != 0)
        {
          result = LC_LOG_NMEA_GENERIC("%s,CLKW2,%d,%d", "$PFPEX", a6, a2);
        }
      }
    }
  }

  v27 = v14[4];
  if (v15 - v27 >= 0.0)
  {
    if (v27 > 0.0 && v15 - v27 > 1500.0)
    {
      v30 = g_FPE_LogSeverity;
      if ((g_FPE_LogSeverity & 4) != 0)
      {
        v31 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v32 = *(g_TCU + 8);
        }

        else
        {
          v32 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f CLK_CHK: TTICK jumped by more than 1500ms: %0.0f --> %d", "TCU_CheckInputs", 451, v31, v32, v14[4], a6);
        v30 = g_FPE_LogSeverity;
      }

      if ((v30 & 0x200) != 0)
      {
        result = LC_LOG_NMEA_GENERIC("%s,CLKW4,%.1f,%.3f", "$PFPEX", v15 - v14[4], a7);
      }
    }
  }

  else if ((g_FPE_LogSeverity & 4) != 0)
  {
    v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v29 = *(g_TCU + 8);
    }

    else
    {
      v29 = 0.0;
    }

    result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f CLK_CHK: TTICK in the past: %d prevTTICK = %f (TOW = %0.0f)", "TCU_CheckInputs", 447, v28, v29, a6, v14[4], a7);
  }

  v33 = a2 - *v14;
  if (v33 >= 0.0)
  {
    if (*v14 && v33 > 1500.0)
    {
      v35 = v33 * 0.001;
      v36 = g_FPE_LogSeverity;
      if ((g_FPE_LogSeverity & 4) != 0)
      {
        v37 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v38 = *(g_TCU + 8);
        }

        else
        {
          v38 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f CLK_CHK: OS time jumped by more than 1500ms: %d --> %d (%0.0f) (TOW = %0.0f)", "TCU_CheckInputs", 465, v37, v38, *v14, a2, v35, a7);
        v36 = g_FPE_LogSeverity;
      }

      if ((v36 & 0x200) != 0)
      {
        result = LC_LOG_NMEA_GENERIC("%s,CLKW6,%.1f,%.3f", "$PFPEX", v33, a7);
      }

      if (v35 > 86400.0 && (g_FPE_LogSeverity & 2) != 0)
      {
        mach_continuous_time();
        if (g_TCU)
        {
          v49 = *(g_TCU + 8);
        }

        result = LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f CLK_CHK: OS time jumped by more 1day: %0.0f (TOW = %0.0f)");
      }
    }
  }

  else if ((g_FPE_LogSeverity & 2) != 0)
  {
    mach_continuous_time();
    if (g_TCU)
    {
      v34 = *(g_TCU + 8);
    }

    v58 = *v14;
    result = LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f CLK_CHK: OS time in the past: %d prevOS = %d (TOW = %0.0f)");
  }

  v39 = v15 + v7 * 4294967300.0;
  if (a3 == 11 && v14[1] > a7)
  {
    ++*(v14 + 18);
  }

  v14[5] = v39 * 0.001;
  v40 = v14[7];
  v41 = (a6 - a2) - v40;
  v42 = *(v14 + 22);
  v43 = v41;
  if (v42)
  {
    v43 = v14[12];
  }

  if (v43 >= v41)
  {
    v41 = v43;
  }

  v14[12] = v41;
  if (v42 < 0x32)
  {
    v48 = v42 + 1;
  }

  else
  {
    v44 = v14[12];
    if (v44 >= 2.0)
    {
      v44 = 2.0;
    }

    if (v44 > -2.0)
    {
      v45 = v44;
    }

    else
    {
      v45 = -2.0;
    }

    v14[7] = v40 + v45;
    if (v45 != 0.0 && (g_FPE_LogSeverity & 8) != 0)
    {
      v46 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v47 = *(g_TCU + 8);
      }

      else
      {
        v47 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f OS to TTICK fixed by %ff ms", "TCU_SetOsToTtick", 315, v46, v47, v45);
    }

    v48 = 0;
  }

  *(v14 + 22) = v48;
  if (v40 != v14[7])
  {
    v50 = g_FPE_LogSeverity;
    if ((g_FPE_LogSeverity & 4) != 0)
    {
      v51 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v52 = *(g_TCU + 8);
      }

      else
      {
        v52 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f CLK_CHK', 'OS2TTICK_ms changed by %f ms", "TCU_SetOsToTtick", 326, v51, v52, v14[7] - v40);
      v50 = g_FPE_LogSeverity;
    }

    if ((v50 & 0x200) != 0)
    {
      result = LC_LOG_NMEA_GENERIC("%s,CLKW3,%.1f,%.3f", "$PFPEX", v14[7] - v40, v14[1]);
    }
  }

  v53 = *(v14 + 18);
  v54 = *(v14 + 24);
  if (a3 == 11 || (v14[3] & 1) == 0)
  {
    *(v14 + 13) = a5;
    v14[6] = (604800 * v53) + a7 - a2 * 0.001;
    v14[8] = -(a7 - v39 * 0.001);
  }

  *v14 = a2;
  v14[4] = v39;
  v14[1] = a7;
  *(v14 + 5) = a3;
  *(v14 + 16) = a4;
  *(v14 + 24) = v54 | (a3 == 11);
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v55 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v56 = *(g_TCU + 8);
    }

    else
    {
      v56 = 0.0;
    }

    result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: TCU = {gpsWeekNo:%d, gpsTOW:%f, OsTime:%d, gpsTOW_stat:%d, OsToGps:%f, gpsWeekFromInit:%u, ttickMs:%f, OsTimeMs:%u, OsToTtickMs:%f}", "TCU_UpdateTime", 189, v55, v56, a5, a7, a2, a3, v14[6], *(v14 + 18), v39, a2, v14[7]);
  }

  v57 = *MEMORY[0x29EDCA608];
  return result;
}

const char *TCU_ConvertOStimeToTTICKtime(const char *result, unsigned int a2, double *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = (*(result + 7) + a2) * 0.001;
  *a3 = v4;
  v5 = v4 - *(result + 5);
  if (v5 > 2147483.65)
  {
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v6 = result;
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v8 = *(g_TCU + 8);
      }

      else
      {
        v8 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f CLOCK:OS time wraparround fix1: %0.3f --> %0.3f ", "TCU_ConvertOStimeToTTICKtime", 215, v7, v8, *(v6 + 7) * 0.001, (*(v6 + 7) + -4294967300.0) * 0.001);
      v4 = *a3;
    }

    v11 = -4294967.3;
LABEL_15:
    *a3 = v4 + v11;
    goto LABEL_16;
  }

  if (v5 < -2147483.65)
  {
    if ((g_FPE_LogSeverity & 4) != 0)
    {
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v10 = *(g_TCU + 8);
      }

      else
      {
        v10 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f CLOCK:OS time conversion fix2", "TCU_ConvertOStimeToTTICKtime", 220, v9, v10);
      v4 = *a3;
    }

    v11 = 4294967.3;
    goto LABEL_15;
  }

LABEL_16:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

const char *TCU_GetOutTime(const char *result, double *a2)
{
  v3 = result;
  v21 = *MEMORY[0x29EDCA608];
  v4 = *(result + 5);
  *a2 = v4;
  v5 = *(result + 10);
  v6 = v4 - v5;
  if (v5 <= 0.0 || v6 <= 1.5)
  {
    goto LABEL_6;
  }

  v9 = *(result + 8);
  v10 = v4 - v9;
  v11 = *(result + 13);
  v12 = 604800.0;
  if (v10 >= 604800.0)
  {
    v13 = 1;
    v14 = -604800.0;
    goto LABEL_11;
  }

  if (v10 < 0.0)
  {
    v13 = -1;
    v14 = 604800.0;
LABEL_11:
    v10 = v10 + v14;
    v15 = v13 + v11;
    goto LABEL_13;
  }

  v15 = *(result + 13);
LABEL_13:
  v16 = v5 - v9;
  if (v5 - v9 >= 604800.0)
  {
    v17 = 1;
    v12 = -604800.0;
    goto LABEL_17;
  }

  if (v16 < 0.0)
  {
    v17 = -1;
LABEL_17:
    v16 = v16 + v12;
    v11 += v17;
  }

  v18 = g_FPE_LogSeverity;
  if ((g_FPE_LogSeverity & 4) != 0)
  {
    v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v20 = *(g_TCU + 8);
    }

    else
    {
      v20 = 0.0;
    }

    result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f %0.1f seconds passed from last output. TOW: %0.3f --> %0.3f, WeekNo: %d --> %d", "TCU_GetOutTime", 408, v19, v20, v6, v16, v10, v11, v15);
    v18 = g_FPE_LogSeverity;
  }

  if ((v18 & 0x200) != 0)
  {
    result = LC_LOG_NMEA_GENERIC("%s,CLKW1,%.1f,%.1f,%.1f", "$PFPEX", v6, v16, v10);
  }

LABEL_6:
  *(v3 + 10) = *a2;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

double BDS_AlmInt2Real(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 12) = *(a1 + 11) << 12;
  v2 = *(a1 + 12);
  v3.i64[0] = v2;
  v3.i64[1] = HIDWORD(v2);
  v4 = vmulq_f64(vcvtq_f64_u64(v3), xmmword_29972B380);
  v5 = *(a1 + 20);
  v3.i64[0] = v5;
  v3.i64[1] = SHIDWORD(v5);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 10) = *(a1 + 42);
  *(a2 + 11) = *(a1 + 10);
  *(a2 + 16) = v4;
  *(a2 + 32) = vmulq_f64(vcvtq_f64_s64(v3), vdupq_n_s64(0x3E9921FB54442D28uLL));
  v4.f64[0] = *(a1 + 28);
  v3.i64[0] = SLODWORD(v4.f64[0]);
  v3.i64[1] = SHIDWORD(v4.f64[0]);
  *(a2 + 48) = vmulq_f64(vcvtq_f64_s64(v3), xmmword_29972B390);
  v6 = vcvtd_n_f64_s32(*(a1 + 38), 0x14uLL);
  *(a2 + 64) = *(a1 + 36) * 0.00000599211245;
  *(a2 + 72) = v6;
  result = *(a1 + 40) * 3.63797881e-12;
  *(a2 + 80) = result;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void SuplState::SuplState(SuplState *this)
{
  v8 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F88788;
  *(this + 1) = 0;
  *(this + 8) = 255;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 24) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  Instance = SuplVersionNegotiation::GetInstance(this);
  v3 = atomic_load((Instance + 1));
  v4 = v3 == 255;
  v5 = 1;
  if (v4)
  {
    v5 = 2;
  }

  v6 = atomic_load((Instance + v5));
  *(this + 16) = -1;
  *(this + 26) = v6;
  *(this + 27) = 0;
  *(this + 5) = 0;
  ASN1T_SessionID::ASN1T_SessionID((this + 48));
  v7 = *MEMORY[0x29EDCA608];
}

void SuplState::~SuplState(SuplState *this)
{
  v7 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F88788;
  *(this + 1) = 0;
  v2 = *(this + 42);
  if (v2)
  {
    *(this + 43) = v2;
    operator delete(v2);
  }

  v3 = *(this + 39);
  if (v3)
  {
    *(this + 40) = v3;
    operator delete(v3);
  }

  v4 = *(this + 36);
  if (v4)
  {
    *(this + 37) = v4;
    operator delete(v4);
  }

  v5 = *(this + 31);
  if (v5)
  {
    *(this + 32) = v5;
    operator delete(v5);
  }

  ASN1T_SETId::U::~U((this + 72));
  ASN1T_UlpMessage::~ASN1T_UlpMessage((this + 32));
  v6 = *MEMORY[0x29EDCA608];
}

uint64_t SuplState::UpdateState(uint64_t a1, int a2, uint64_t a3)
{
  v32 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 3, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Current State,%u -> New State,%u\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 77, "UpdateState", *(a1 + 16), a2);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v8, 3, 1);
    }

    if (*(a1 + 16) != a2)
    {
      if (a2 > 4)
      {
        switch(a2)
        {
          case 5:
            v22 = operator new(0x170uLL, MEMORY[0x29EDC9418]);
            if (v22)
            {
              v10 = v22;
              SuplPosRecd::SuplPosRecd(v22);
              LcsTimer::Stop((a3 + 392));
              v23 = *(a3 + 424);
              if (v23)
              {
                (*(*v23 + 8))(v23);
              }

              goto LABEL_40;
            }

            result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
            if (!result)
            {
              goto LABEL_15;
            }

            goto LABEL_52;
          case 6:
            v26 = operator new(0x170uLL, MEMORY[0x29EDC9418]);
            if (v26)
            {
              v10 = v26;
              SuplState::SuplState(v26);
              *v10 = &unk_2A1F8AB30;
              *(v10 + 16) = 4;
              *(v10 + 360) = 0;
              SuplSession::UpdateTimer(a3, 6);
              v27 = *(a3 + 424);
              if (v27)
              {
                (*(*v27 + 8))(v27);
              }

              goto LABEL_40;
            }

            result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
            if (!result)
            {
              goto LABEL_15;
            }

            goto LABEL_52;
          case 7:
            v15 = operator new(0x190uLL, MEMORY[0x29EDC9418]);
            if (v15)
            {
              v10 = v15;
              SuplEndRecd::SuplEndRecd(v15);
              LcsTimer::Stop((a3 + 392));
              v16 = *(a3 + 424);
              if (v16)
              {
                (*(*v16 + 8))(v16);
              }

              goto LABEL_40;
            }

            result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
            if (!result)
            {
              goto LABEL_15;
            }

            goto LABEL_52;
        }

        goto LABEL_31;
      }

      if (a2)
      {
        if (a2 == 2)
        {
          v24 = operator new(0x178uLL, MEMORY[0x29EDC9418]);
          if (v24)
          {
            v10 = v24;
            SuplResponseRecd::SuplResponseRecd(v24);
            LcsTimer::Stop((a3 + 392));
            v25 = *(a3 + 424);
            if (v25)
            {
              (*(*v25 + 8))(v25);
            }

            goto LABEL_40;
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
          if (!result)
          {
            goto LABEL_15;
          }

LABEL_52:
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v29), "SPL", 69, "UpdateState", 1537);
          result = LbsOsaTrace_WriteLog(0x12u, __str, v30, 0, 1);
          goto LABEL_15;
        }

        if (a2 == 4)
        {
          v9 = operator new(0x170uLL, MEMORY[0x29EDC9418]);
          if (v9)
          {
            v10 = v9;
            SuplState::SuplState(v9);
            *v10 = &unk_2A1F8AB30;
            *(v10 + 16) = 4;
            *(v10 + 360) = 0;
            SuplSession::UpdateTimer(a3, 4);
            v11 = *(a3 + 424);
            if (v11)
            {
              (*(*v11 + 8))(v11);
            }

LABEL_40:
            v28 = *(a3 + 416);
            *(a3 + 416) = v10;
            *(a3 + 424) = v28;
            *(v10 + 1) = a3;
            result = (*(*v10 + 24))(v10);
            goto LABEL_15;
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
          if (!result)
          {
            goto LABEL_15;
          }

          goto LABEL_52;
        }

LABEL_31:
        result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
        if (!result)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v17 = operator new(0x168uLL, MEMORY[0x29EDC9418]);
      if (!v17)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
        if (!result)
        {
          goto LABEL_15;
        }

        goto LABEL_52;
      }

      v18 = v17;
      SuplState::SuplState(v17);
      v19 = &unk_2A1F88940;
      *v18 = &unk_2A1F88940;
      v20 = *(a3 + 424);
      if (v20)
      {
        (*(*v20 + 8))(v20);
        v19 = *v18;
      }

      v21 = *(a3 + 416);
      *(a3 + 416) = v18;
      *(a3 + 424) = v21;
      *(v18 + 1) = a3;
      result = (v19)[3](v18);
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
LABEL_14:
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "UpdateState", 515);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v13, 0, 1);
    }
  }

LABEL_15:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplState::ProcessSuplMessage(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  __p = 0;
  v8 = 0;
  v9 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  v10[0] = &__p;
  v10[1] = 0;
  v11 = 0;
  v6[0] = v10;
  v6[1] = a1 + 24;
  v3 = SuplMessage::Decode(v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2995CF1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SuplState::SendSuplMessage(SuplProvider *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a1 + 1))
  {
    Instance = SuplProvider::GetInstance(a1);
    v5 = *(*(a1 + 1) + 376);
    v6 = *a2;
    v7 = *MEMORY[0x29EDCA608];

    return SuplProvider::SendSuplPdu(Instance, v5);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "SendSuplMessage", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v10, 0, 1);
    }

    v11 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

const char *LVLR_Init(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  *a1 = 0x4014000000000000;
  *(a1 + 20) = 0;
  Set_Mat_Const(3, 1u, 3, (a1 + 24), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 56), 0.0);
  *(a1 + 16) = 0;
  *(a1 + 8) = 0xC08F380000000000;
  *(a1 + 352) = 0xC08F380000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 312) = 0x3F847AE147AE147BLL;
  *(a1 + 104) = 0x3FCA5373D0C8EF30;
  Set_Mat_Const(3, 1u, 3, (a1 + 112), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 144), 0.0);
  *(a1 + 176) = 0;
  Set_Mat_Const(3, 1u, 3, (a1 + 184), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 216), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 248), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 280), 0.0);
  *(a1 + 320) = xmmword_29972B3C0;
  *(a1 + 336) = 0x4014000000000000;
  *(a1 + 344) = (5.0 / *(a1 + 312));
  Set_Mat_Const(3, 1u, 3, (a1 + 360), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 392), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 424), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 456), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 488), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 520), 0.0);
  Set_Mat_Const(3, 1u, 3, (a1 + 552), 0.0);
  v2 = *MEMORY[0x29EDCA608];

  return Set_Mat_Const(3, 1u, 3, (a1 + 584), 0.0);
}

void LVLR_GetLevelerOutputs(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(a1 + 176) >= *(a1 + 344))
  {
    Add_Mat(3, (a1 + 184), 3, (a1 + 216), 3, a2);
    Mult_Mat_scalar(0.5, 3, a2, 3, a2);
    Add_Mat(3, (a1 + 248), 3, (a1 + 280), 3, (a2 + 32));
    Mult_Mat_scalar(0.5, 3, (a2 + 32), 3, (a2 + 32));
    *(a2 + 64) = 1;
    memset(v6, 0, sizeof(v6));
    Sub_Mat(3, (a1 + 216), 3, (a1 + 184), 3, v6);
    Max_Mat_Scalar(*(a1 + 320), 3, v6, 3, v6);
    memset(v5, 0, sizeof(v5));
    Sub_Mat(3, (a1 + 280), 3, (a1 + 248), 3, v5);
    Max_Mat_Scalar(*(a1 + 328), 3, v5, 3, v5);
    Mult_Mat_scalar(0.5, 3, v6, 3, (a2 + 72));
    ElMult_Mat_Mat(3, (a2 + 72), 3, (a2 + 72), 3, (a2 + 72));
    ElMult_Mat_Mat(3, v5, 3, v5, 3, (a2 + 104));
  }

  else
  {
    Set_Mat_Const(3, 1u, 3, a2, 0.0);
    *(a2 + 64) = 0;
    Set_Mat_Const(3, 1u, 3, (a2 + 32), 0.0);
    Set_Mat_Const(3, 1u, 3, (a2 + 72), -999.0);
    Set_Mat_Const(3, 1u, 3, (a2 + 104), -999.0);
  }

  *(a2 + 136) = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
  v4 = *MEMORY[0x29EDCA608];
}

void LVLR_Run(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x29EDCA608];
  if (*(a2 + 8) == 6)
  {
    *(a1 + 352) = *a2;
  }

  else
  {
    v4 = *(a1 + 352);
    v5 = *a2;
    ++*(a1 + 20);
    Add_Mat(3, (a1 + 24), 3, (a2 + 16), 3, (a1 + 24));
    Add_Mat(3, (a1 + 56), 3, (a2 + 48), 3, (a1 + 56));
    v32 = 0u;
    *v33 = 0u;
    Mult_Mat_scalar(1.0 / *(a1 + 20), 3, (a1 + 24), 3, &v32);
    v7 = v33[1];
    v6 = v33[0];
    v8 = sqrt(v33[1] * v33[1] + v33[0] * v33[0]);
    if (fabs(v8) <= 1.0e-30)
    {
      if (g_FPE_LogSeverity)
      {
        v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v10 = *(g_TCU + 8);
        }

        else
        {
          v10 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "LVLR_calcRollPitch", 118, v9, v10, v8, 1.0e-30);
        v7 = v33[1];
        v6 = v33[0];
      }

      g_FPE_AssertFlag = 1;
      v8 = 1.0;
    }

    *(a1 + 88) = atan(*(&v32 + 1) / v8);
    *(a1 + 96) = atan2(-v6, -v7);
    v11 = *(a1 + 8);
    if (v11 == -999.0)
    {
      *(a1 + 8) = v5 + -0.01;
      Copy_Mat(3, (a2 + 48), 3, (a1 + 184));
      Copy_Mat(3, (a2 + 48), 3, (a1 + 216));
      Copy_Mat(3, (a2 + 48), 3, (a1 + 112));
      Copy_Mat(3, (a2 + 16), 3, (a1 + 248));
      Copy_Mat(3, (a2 + 16), 3, (a1 + 280));
      Copy_Mat(3, (a2 + 16), 3, (a1 + 144));
      v11 = *(a1 + 8);
    }

    v12 = v5 - v11;
    v32 = 0u;
    *v33 = 0u;
    Abs_Mat(3, (a2 + 48), 3, &v32);
    if (Any_Mat_Greater_Than(0.7, 3, &v32))
    {
      LVLR_resetFilters(a1);
      LODWORD(v30) = 0;
      Max_Vec(3, &v32, &v30);
      if ((g_FPE_LogSeverity & 4) != 0)
      {
        v14 = v13;
        v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v16 = *(g_TCU + 8);
        }

        else
        {
          v16 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Resetting Leveler due to large movement on Gyro # %d, Mag = %3.1f, seconds since leveler started =  %6.2f", "LVLR_Run", 221, v15, v16, v30 + 1, v14, v12);
      }
    }

    else
    {
      ++*(a1 + 176);
      Set_Mat_Const(3, 1u, 3, (a1 + 112), 0.0);
      Add_Mat_ScalarMult(1.97881827, 3, (a1 + 112), 3, (a1 + 488), 3, (a1 + 112));
      Add_Mat_ScalarMult(-0.979519649, 3, (a1 + 112), 3, (a1 + 520), 3, (a1 + 112));
      Add_Mat_ScalarMult(1.27485269, 3, (a1 + 112), 3, (a2 + 48), 3, (a1 + 112));
      Add_Mat_ScalarMult(-2.0, 3, (a1 + 112), 3, (a1 + 360), 3, (a1 + 112));
      Add_Mat_ScalarMult(1.13919655, 3, (a1 + 112), 3, (a1 + 392), 3, (a1 + 112));
      Set_Mat_Const(3, 1u, 3, (a1 + 144), 0.0);
      Add_Mat_ScalarMult(1.97881827, 3, (a1 + 144), 3, (a1 + 552), 3, (a1 + 144));
      Add_Mat_ScalarMult(-0.979519649, 3, (a1 + 144), 3, (a1 + 584), 3, (a1 + 144));
      Add_Mat_ScalarMult(1.27485269, 3, (a1 + 144), 3, (a2 + 16), 3, (a1 + 144));
      Add_Mat_ScalarMult(-2.0, 3, (a1 + 144), 3, (a1 + 424), 3, (a1 + 144));
      Add_Mat_ScalarMult(1.13919655, 3, (a1 + 144), 3, (a1 + 456), 3, (a1 + 144));
      if (*(a1 + 20) >= 0xC8u)
      {
        v30 = 0u;
        v31 = 0u;
        Mult_Mat_scalar(0.00169824365, 3, (a1 + 112), 3, &v30);
        memset(v29, 0, sizeof(v29));
        Mult_Mat_scalar(0.00169824365, 3, (a1 + 144), 3, v29);
        Min_Mat_Mat(3, &v30, 3, (a1 + 184), 3, (a1 + 184));
        Min_Mat_Mat(3, v29, 3, (a1 + 248), 3, (a1 + 248));
        Max_Mat_Mat(3, &v30, 3, (a1 + 216), 3, (a1 + 216));
        Max_Mat_Mat(3, v29, 3, (a1 + 280), 3, (a1 + 280));
      }

      v17 = v4 + 0.51;
      v30 = 0u;
      v31 = 0u;
      Sub_Mat(3, (a1 + 216), 3, (a1 + 184), 3, &v30);
      if (Any_Mat_Greater_Than(*(a1 + 320), 3, &v30))
      {
        if (v17 < v5 && v5 - *(a1 + 8) > 5.0)
        {
          LVLR_resetFilters(a1);
          *(a1 + 320) = fmin(*(a1 + 320) * 1.05, 0.05);
          if ((g_FPE_LogSeverity & 4) != 0)
          {
            v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v19 = *(g_TCU + 8);
            }

            else
            {
              v19 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Resetting Leveler due to Gyro violation Min/Max bounds, seconds since leveler started =  %6.2f", "LVLR_Run", 285, v18, v19, v12);
          }
        }
      }

      Sub_Mat(3, (a1 + 280), 3, (a1 + 248), 3, &v30);
      if (Any_Mat_Greater_Than(*(a1 + 328), 3, &v30))
      {
        if (v17 < v5 && v5 - *(a1 + 8) > 5.0)
        {
          LVLR_resetFilters(a1);
          *(a1 + 328) = fmin(*(a1 + 328) * 1.05, 1.0);
          if ((g_FPE_LogSeverity & 4) != 0)
          {
            v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v21 = *(g_TCU + 8);
            }

            else
            {
              v21 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Resetting Leveler due to Accel violation of Min/Max bounds, seconds since leveler started =  %6.2f", "LVLR_Run", 296, v20, v21, v12);
          }
        }
      }

      if ((*(a1 + 176) >= *(a1 + 344) || v5 - *(a1 + 8) > 600.0) && (*(a1 + 16) & 1) == 0)
      {
        if (v17 < v5)
        {
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            mach_continuous_time();
            if (g_TCU)
            {
              v23 = *(g_TCU + 8);
            }

            v25 = v5 - *(a1 + 8);
            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f leveling ready due to threshold after %f seconds");
          }
        }

        else if ((g_FPE_LogSeverity & 8) != 0)
        {
          mach_continuous_time();
          if (g_TCU)
          {
            v22 = *(g_TCU + 8);
          }

          v24 = v5 - *(a1 + 8);
          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f leveling ready due to stop after %f seconds");
        }

        if (v5 - *(a1 + 8) > 600.0 && (g_FPE_LogSeverity & 4) != 0)
        {
          v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v27 = *(g_TCU + 8);
          }

          else
          {
            v27 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Leveler worked for %f sec and could not finish successfully. Giving up and trying to work as is", "LVLR_Run", 325, v26, v27, v5 - *(a1 + 8));
        }

        *(a1 + 16) = 1;
      }
    }

    Copy_Mat(3, (a1 + 360), 3, (a1 + 392));
    Copy_Mat(3, (a1 + 424), 3, (a1 + 456));
    Copy_Mat(3, (a2 + 48), 3, (a1 + 360));
    Copy_Mat(3, (a2 + 16), 3, (a1 + 424));
    Copy_Mat(3, (a1 + 488), 3, (a1 + 520));
    Copy_Mat(3, (a1 + 552), 3, (a1 + 584));
    Copy_Mat(3, (a1 + 112), 3, (a1 + 488));
    Copy_Mat(3, (a1 + 144), 3, (a1 + 552));
  }

  v28 = *MEMORY[0x29EDCA608];
}

void LVLR_resetFilters(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  Set_Mat_Const(3, 1u, 3, (a1 + 24), 0.0);
  *(a1 + 20) = 1;
  *(a1 + 176) = 0;
  Mult_Mat_scalar(0.00169824365, 3, (a1 + 112), 3, (a1 + 184));
  Mult_Mat_scalar(0.00169824365, 3, (a1 + 112), 3, (a1 + 216));
  Mult_Mat_scalar(0.00169824365, 3, (a1 + 144), 3, (a1 + 248));
  Mult_Mat_scalar(0.00169824365, 3, (a1 + 144), 3, (a1 + 280));
  *(a1 + 16) = 0;
  v2 = *MEMORY[0x29EDCA608];
}

uint64_t gn_report_assertion_failure(const char *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
  v2 = *(&xmmword_2A1926A70 + 1);
  v3 = (**(&xmmword_2A1926A70 + 1))++;
  *v3 = 10;
  if (*v2 >= v2[3])
  {
    *v2 = v2[2];
  }

  EvCrt_v(" ***** ASSERT FAILED ***** %s", a1);
  v4 = *(&xmmword_2A1926A70 + 1);
  v5 = (**(&xmmword_2A1926A70 + 1))++;
  *v5 = 10;
  if (*v4 >= v4[3])
  {
    *v4 = v4[2];
  }

  v6 = *(&xmmword_2A1926A70 + 1);
  v7 = *MEMORY[0x29EDCA608];

  return GNSS_Event_Log_Ctl(v6);
}

uint64_t NK_SV_Meas_Update(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float64x2_t *a6, int a7, float64x2_t *a8, double a9, uint64_t a10)
{
  v13 = result;
  v14 = 0;
  v110 = *MEMORY[0x29EDCA608];
  v15 = a5 + 152;
  v87 = a5 + 248;
  v80 = a5 + 3608;
  v84 = a5 + 2024;
  v85 = a5 + 200;
  v83 = a5 + 4040;
  v75 = (a10 + 16);
  v76 = (a10 + 24);
  v16 = 1;
  v64 = result;
  v65 = a5 + 152;
  do
  {
    v17 = 0;
    v81 = 0;
    v82 = 0;
    v18 = v16;
    v68 = v14;
    do
    {
      if (*(v15 + v17) != 1)
      {
        goto LABEL_73;
      }

      if ((v18 & 1) != 0 && (v19 = *(v87 + 4 * v17), (v19 - 1) >= 0x1D))
      {
        if (!v19)
        {
          goto LABEL_8;
        }

        result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
        if ((v14 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      else if ((v14 & 1) == 0)
      {
        goto LABEL_73;
      }

      v20 = *(v87 + 4 * v17);
      if ((v20 - 1) < 0x1D)
      {
        goto LABEL_8;
      }

      if (v20)
      {
        EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
LABEL_8:
        v95 = 0u;
        memset(v94, 0, sizeof(v94));
        memset(v93, 0, sizeof(v93));
        v92 = 0;
        memset(v91, 0, sizeof(v91));
        v88 = 0.0;
        bzero(__dst, 0x270uLL);
        v21 = 0;
        v22 = 1.0;
        v23 = 1;
        while (2)
        {
          if (v18 & 1) != 0 || (v21)
          {
            v24 = *(a5 + 8);
          }

          else
          {
            v24 = 1.0e20;
          }

          NK_Obs_Equ_SV(v13, *(v85 + v17), *(a2 + 4 * v17), a3 + 56 * v17, v94, a9);
          if (a7)
          {
            NK_SV_Meas_Innov_Sat(v94, v17, v13, a5, a6->f64, v24);
            v22 = *(v80 + 8 * v17);
          }

          *(&v95 + 1) = *(v84 + 8 * v17);
          if (v23)
          {
            memcpy(__dst, a6, sizeof(__dst));
          }

          result = umeas(a6, 0xBu, v22 * *(v83 + 8 * v17), v94, v93, v91, &v88, v24);
          if (v18 & 1) != 0 || (v21)
          {
            if (v88 >= 0.0)
            {
              v82 += *(a4 + v17);
            }

            else
            {
              ++v81;
              --*(a5 + 3);
              ++*(a5 + 4);
              if ((v21 & 1) == 0)
              {
                *(v87 + 4 * v17) = 21;
LABEL_27:
                if (v21)
                {
                  v21 = 0;
                }

                goto LABEL_29;
              }

              *(v87 + 4 * v17) = 22;
              memcpy(a6, __dst, 0x270uLL);
              result = EvLog_v("NK_SV_Meas_Update: Speed constraint edit info: Chan num: %d, Obs Type: %d", v17, v13);
            }

LABEL_26:
            v25 = *(v87 + 4 * v17);
            if ((v25 - 1) < 0x1D)
            {
              goto LABEL_27;
            }

            if (v25)
            {
              result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
              goto LABEL_27;
            }
          }

          else
          {
            *(v87 + 4 * v17) = 0;
            if (v88 < 0.0)
            {
              result = gn_report_assertion_failure("NK_SV_Meas_Update:  Edit add-back failed !");
              goto LABEL_26;
            }
          }

          if (*a10 != 1 || (v21 & 1) != 0)
          {
            goto LABEL_27;
          }

          v77 = vsubq_f64(*a8, a6[37]);
          v108 = v77;
          v27 = a8[1].f64[0] - a6[38].f64[0];
          v109 = v27;
          v28 = 0.0;
          v29 = 2;
          do
          {
            v28 = v28 + v108.f64[v29] * v108.f64[v29];
            v30 = v29-- + 1;
          }

          while (v30 > 1);
          v31 = sqrt(v28);
          v32 = *v76;
          v33 = *v75;
          v34 = *v75 - v31;
          if (v34 <= 0.001)
          {
            if (v31 - *v76 <= 0.001)
            {
              v21 = 0;
              goto LABEL_29;
            }

            v35 = -v34;
            v34 = v31 - *v76;
          }

          else
          {
            v35 = v31 - *v76;
          }

          v74 = v31 - *v76;
          switch(v13)
          {
            case 3:
              ++*(a10 + 33);
              break;
            case 2:
              ++*(a10 + 34);
              break;
            case 1:
              ++*(a10 + 32);
              break;
          }

          *&v107 = 1.0;
          v106 = xmmword_29972B408;
          v73 = (v32 - v33) / v34;
          ud2var(a6, 0xBu, 9, 3u, &v106);
          v36 = *(&v106 + 1);
          v72 = *&v106;
          v71 = *&v107;
          v104 = 0;
          v37 = &v108;
          v38 = 8;
          memset(v103, 0, sizeof(v103));
          do
          {
            v39 = *v37++;
            *(v103 + v38++) = v39 / v31;
          }

          while (v38 != 11);
          v40 = vmuld_lane_f64(v77.f64[1], v77, 1) * v36;
          *&v70 = *&vmulq_f64(v77, v77);
          v105 = v35;
          bzero(v102, 0x210uLL);
          ud2cov(a6->f64, v102, 0xBu);
          v41 = 0;
          v101 = 0.0;
          v100 = 0u;
          memset(v99, 0, sizeof(v99));
          do
          {
            v42 = 0;
            v43 = *(v99 + v41);
            v44 = v41 + 1;
            do
            {
              v45 = v42 + 1;
              v46 = *(v103 + v42);
              if (v42 < v41)
              {
                v47 = v42 + (((v41 + 1) * v41) >> 1);
              }

              else
              {
                v45 = v42 + 1;
                v47 = v41 + (((v42 + 1) * v42) >> 1);
              }

              v43 = v43 + v102[v47] * v46;
              v42 = v45;
            }

            while (v45 != 11);
            *(v99 + v41++) = v43;
          }

          while (v44 != 11);
          v48 = 0;
          v49 = 0.0;
          do
          {
            v49 = v49 + *(v103 + v48) * *(v99 + v48);
            v48 += 8;
          }

          while (v48 != 88);
          v50 = v73 * ((v40 + v70 * v72 + v27 * v27 * v71) / (v31 * v31));
          v51 = v35 * v35 * (*(&v100 + 1) * *(&v100 + 1) + *&v100 * *&v100 + v101 * v101);
          v52 = v35 * ((v77.f64[1] * *(&v100 + 1) + *&v100 * v77.f64[0] + v101 * v27) * -2.0);
          v53 = (a10 + 24);
          if (v74 <= 0.001)
          {
            v53 = (a10 + 16);
          }

          v54 = (v31 * v31 - *v53 * *v53) * (v51 * -4.0) + v52 * v52;
          if (v54 >= 0.0)
          {
            v55 = sqrt(v54);
            v56 = 0.0;
            v57 = v51 + v51;
            v58 = 0.0;
            if (vabdd_f64(v55, v52) > 0.01)
            {
              v58 = v57 / (v55 - v52);
            }

            v59 = -v52;
            if (vabdd_f64(v59, v55) > 0.01)
            {
              v56 = v57 / (v59 - v55);
            }

            if (v58 <= v56)
            {
              v60 = v56;
            }

            else
            {
              v60 = v58;
            }

            v61 = v60 <= v49;
            v78 = v60 > v49;
            v62 = v60 - v49;
            if (!v61)
            {
              v50 = v62;
            }
          }

          else
          {
            v78 = 0;
          }

          memcpy(a6, __dst, 0x270uLL);
          v89 = 0.0;
          memset(v98, 0, sizeof(v98));
          v97 = 0;
          memset(v96, 0, sizeof(v96));
          umeas(a6, 0xBu, v50, v103, v98, v96, &v89, 1.0e20);
          v21 = 1;
          *(a10 + 1) = 1;
          result = EvLog_v("NK_Apply_Speed_Constraint: Speed_C applied, Upper_Limit = %g, Lower_Limit = %g, PreconstrainedSpeed = %g, Optimal constraint applied? = %d", *(a10 + 24), *(a10 + 16), v31, v78);
LABEL_29:
          v26 = v23 & v21;
          v23 = 0;
          if ((v26 & 1) == 0)
          {
            v15 = v65;
            v14 = v68;
            break;
          }

          continue;
        }
      }

LABEL_73:
      ++v17;
    }

    while (v17 != 48);
    if (!v81 || v82 >= 5 && (v81 == 1 || v82 != 5))
    {
      break;
    }

    result = EvLog_v("NK_SV_Meas_Update: Edits unreliable-repeating to add back edits, Obs Type = %d , Num Eph Added = %d, Num rejected = %d", v64, v82, v81);
    v16 = 0;
    v14 = 1;
  }

  while ((v18 & 1) != 0);
  v63 = *MEMORY[0x29EDCA608];
  return result;
}

char *NK_Reduce_Num_SV(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = result;
  v5 = 0;
  v77 = *MEMORY[0x29EDCA608];
  v6 = (a3 + 13963);
  v7 = (a3 + 8387);
  v8 = vdupq_n_s16(0x630u);
  v9 = a3 + 504;
  v10.i64[0] = 0x6000600060006;
  v10.i64[1] = 0x6000600060006;
  v11 = vdupq_n_s16(0xCCCDu);
  memset(v76, 0, 192);
  v12.i64[0] = 0x32003200320032;
  v12.i64[1] = 0x32003200320032;
  v13 = vdupq_n_s16(0x3B6u);
  do
  {
    v14 = *(v9 + v5 * 16);
    v15 = vcgtq_u16(v14, v8);
    v16 = vmulq_s16(v14, v10);
    *(&v76[v5 + 12] + 8) = vbslq_s8(v15, v13, vmaxq_u16(vshrq_n_u16(vuzp2q_s16(vmull_u16(*v16.i8, *v11.i8), vmull_high_u16(v16, v11)), 3uLL), v12));
    ++v5;
  }

  while (v5 != 6);
  v17 = result + 1132;
  if (!*(a3 + 968))
  {
    for (i = 0; i != 48; ++i)
    {
      result = Is_Legal(*&v17[4 * i - 1056]);
      if (result)
      {
        v42 = *(v76 + i);
        if ((v42 - 1) >= 0x1D)
        {
          if (v42)
          {
            result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
          }

          else if (*&v17[2 * i] > *(&v76[12] + i + 4))
          {
            *(v76 + i) = 5;
          }
        }
      }
    }

LABEL_34:
    if (*(a3 + 968) == 1)
    {
      if (*(a2 + 11162) == 1)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = a3 + 2960;
        v38 = v73 + 604;
        do
        {
          if (*(v37 + v32) == 1)
          {
            v39 = *(v76 + v32);
            if ((v39 - 1) >= 0x1D)
            {
              if (v39)
              {
                v68 = v33;
                v70 = v35;
                result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
                v33 = v68;
                v35 = v70;
              }

              else
              {
                ++v36;
                v40 = v38[v32];
                if (v40 < 0xD)
                {
                  ++v35;
                }

                if (v40 > 0xE)
                {
                  ++v34;
                }

                if (v40 > 0x11)
                {
                  ++v33;
                }
              }
            }
          }

          ++v32;
        }

        while (v32 != 48);
        if (v35 && (v36 < 3 || v36 - v35 >= 5 && (v34 > 1 || v33)))
        {
          for (j = 0; j != 48; ++j)
          {
            if (*(v37 + j) == 1 && v38[j] <= 0xCu)
            {
              *(v76 + j) = 7;
            }
          }
        }
      }

      if (*(a3 + 968) == 1)
      {
        v44 = 0;
        v45 = 0;
        v46 = (v73 + 604);
        v47 = (a2 + 7744);
        v48 = (v73 + 844);
        v74 = v73 + 604;
        v49 = (a3 + 2960);
        do
        {
          v50 = *v49++;
          if (v50 == 1)
          {
            v51 = *(v76 + v44);
            if ((v51 - 1) >= 0x1D)
            {
              if (v51)
              {
                v72 = v45;
                result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
                v45 = v72;
              }

              else if (*v47 && *v48 >= 0xC8u && v48[48] >= 0xC8u && *v46 - v46[96] > 2)
              {
                ++v45;
              }
            }
          }

          v44 += 4;
          ++v48;
          ++v47;
          ++v46;
        }

        while (v44 != 192);
        if (v45 <= 2)
        {
          v52 = 0;
          v53 = 0;
          do
          {
            if (*(a3 + 2960 + v52) == 1)
            {
              v54 = *(v76 + v52);
              if ((v54 - 1) >= 0x1D)
              {
                if (v54)
                {
                  result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
                }

                else
                {
                  if (v74[v52] > 0xDu || v53 > 1)
                  {
                    goto LABEL_104;
                  }

                  v75[v53++] = v52;
                }
              }
            }

            ++v52;
          }

          while (v52 != 48);
          if (v53 >= 1)
          {
            if (v53 >= 2)
            {
              v56 = 2;
            }

            else
            {
              v56 = v53;
            }

            v57 = v75;
            do
            {
              v58 = *v57++;
              *(v76 + v58) = 9;
              --v56;
            }

            while (v56);
          }
        }
      }
    }

    goto LABEL_104;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = a3 + 2960;
  v23 = a2 + 7744;
  do
  {
    if (*(v22 + v18) == 1)
    {
      v24 = *(v76 + v18);
      if ((v24 - 1) >= 0x1D)
      {
        if (v24)
        {
          v69 = a4;
          v65 = v20;
          v67 = v21;
          v66 = v23;
          result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
          v23 = v66;
          v21 = v67;
          v20 = v65;
          a4 = v69;
        }

        else if (*&v17[2 * v18] >= *(&v76[12] + v18 + 4))
        {
          ++v20;
        }

        else
        {
          ++v19;
          if (*(v23 + 2 * v18))
          {
            ++v21;
          }
        }
      }
    }

    ++v18;
  }

  while (v18 != 48);
  if (v21 <= 3 && v20)
  {
    for (k = 0; k != 48; ++k)
    {
      if (*(v22 + k) == 1 && *&v17[2 * k] > *(&v76[12] + k + 4))
      {
        *(v76 + k) = 6;
      }
    }
  }

  if (v19 || !v20)
  {
    goto LABEL_34;
  }

  if (*(a3 + 968) == 1)
  {
    if (*(a2 + 11162) == 1)
    {
      v26 = 0;
      v27 = 0;
      v28 = a4 + 365;
      v29 = a4 + 416;
      while (1)
      {
        result = Is_Legal(*&v73[v26 + 76]);
        if (result)
        {
          v30 = &v73[2 * v27];
          if (*(v9 + 2 * v27) >= 0x28Bu)
          {
            v31 = *(&v76[12] + v27 + 4);
LABEL_32:
            *(v28 + v27) |= 1u;
            *(v29 + 4 * v27) = *a3;
            result = EvLog_v("ChanReset %d : NKRNSV %d %d   %x %d   %d > %d ", v27, v73[v26 + 78], v73[v26 + 76], *(v30 + 158), v73[v27 + 604], *(v30 + 566), v31);
            goto LABEL_33;
          }

          v31 = *(&v76[12] + v27 + 4);
          if (*(v30 + 566) > v31)
          {
            goto LABEL_32;
          }
        }

LABEL_33:
        ++v27;
        v26 += 4;
        if (v27 == 48)
        {
          goto LABEL_34;
        }
      }
    }

    goto LABEL_34;
  }

LABEL_104:
  v59 = 0;
  v60 = a3 + 8536;
  v61 = (a3 + 8632);
  v62 = a3 + 14112;
  do
  {
    v63 = *(v76 + v59);
    if ((v63 - 1) >= 0x1D)
    {
      if (!v63)
      {
        goto LABEL_112;
      }

      result = EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
    }

    if (*(a3 + v59 + 2960) == 1)
    {
      *(a3 + v59 + 2960) = 0;
      --*(a3 + 2811);
      ++*(a3 + 2812);
      *(a3 + 4 * v59 + 3056) = v63;
    }

    if (*(v60 + v59) == 1)
    {
      *(v60 + v59) = 0;
      --*v7;
      ++v7[1];
      *v61 = v63;
    }

    if (*(v62 + v59) == 1)
    {
      *(v62 + v59) = 0;
      --*v6;
      ++v6[1];
      v61[1394] = v63;
    }

LABEL_112:
    ++v59;
    ++v61;
  }

  while (v59 != 48);
  v64 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int16 *plc01_01DecHeader(unsigned __int16 *result, _BYTE *a2, unsigned __int16 *a3, uint64_t a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if (result[5] > 7u)
  {
    v6 = result;
    v7 = *result;
    *a2 = *(*result + 2);
    a2[1] = v7[3];
    a2[2] = v7[4];
    result = memcpy_s("plc01_01DecHeader", 85, a3, 2u, v7 + 5, 2uLL);
    v9 = *a3;
    if (v9 >= 0x7F8)
    {
      *a4 = 7;
      if (*(a4 + 144) == 1)
      {
        result = snprintf((a4 + 16), 0x80uLL, "D HDR PL %d > %d", v9, 2039);
      }
    }

    v8.i32[0] = *(*v6 + 2);
    if (*(*v6 + 7) != (vaddv_s16(*&vmovl_u8(v8)) + *(*v6 + 6)))
    {
      *a4 = 3;
    }

    v6[4] = 8;
  }

  else
  {
    *a4 = 6;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void *plc01_02PutUInt32(unsigned int a1, int *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  __src = a1;
  *a4 = 0;
  result = memcpy_s("plc01_02PutUInt32", 134, (*a3 + *(a3 + 8)), *(a3 + 10) - *(a3 + 8), &__src, 4uLL);
  *(a3 + 8) += 4;
  v9 = *a2;
  if (*a2 > a1 || a2[1] < a1)
  {
    *a4 = 24;
    if (*(a4 + 144) == 1)
    {
      result = snprintf((a4 + 16), 0x80uLL, "P INT B 4 [%d %d] V %d", v9, a2[1], a1);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim22_02HandleEaApiStatus(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim22_02HandleEaApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("lsim22_02HandleEaApiStatus", 56, 1, 0xCuLL);
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (v4)
  {
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EAAPI_IND\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim22_02HandleEaApiStatus");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }

    if (g_GnsEaCallback)
    {
      *v4 = *(a1 + 12);
      v4[2] = *(a1 + 20);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>EaCB,Api,%u,Id,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim22_02HandleEaApiStatus", v4[1], *v4, v4[2]);
        LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
      }

      g_GnsEaCallback(0, 12, v4);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 68, "lsim22_02HandleEaApiStatus", 258);
      LbsOsaTrace_WriteLog(0xCu, __str, v11, 5, 1);
    }

    free(v4);
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  }

  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim22_02HandleEaApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
  }

  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim22_03EaCbInit(uint64_t result)
{
  v1 = result;
  v8 = *MEMORY[0x29EDCA608];
  if (result)
  {
LABEL_2:
    g_GnsEaCallback = v1;
    goto LABEL_3;
  }

  if (g_GnsEaCallback)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim22_03EaCbInit", 513);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

    goto LABEL_2;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim22_03EaCbInit", 513);
    result = LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

LABEL_3:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_EaInitialize(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GNS_EaInitialize", 116, 1, 0x18uLL);
  if (v2)
  {
    v2[3] = 7;
    *(v2 + 2) = a1;
    AgpsSendFsmMsg(131, 131, 8635139, v2);
    result = 1;
  }

  else
  {
    result = 6;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_EaWgs84RefPos(int a1, __int128 *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaWgs84RefPos");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Wgs84RefPos\n");
    goto LABEL_17;
  }

  if ((*(a2 + 17) - 5) >= 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Source,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "GNS_EaWgs84RefPos", 515, *(a2 + 17));
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (*(a2 + 16) >= 5u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v31 = *(a2 + 16);
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Trust,%u\n", (*&g_MacClockTicksToMsRelation * v10));
    goto LABEL_17;
  }

  if (fabs(*(a2 + 1)) > 90.0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = *(a2 + 1);
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Latitude,%f\n");
    goto LABEL_17;
  }

  if (fabs(*(a2 + 2)) > 180.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v16 = *(a2 + 2);
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Longitude,%f\n");
LABEL_17:
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 2, 1);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (*(a2 + 42) == 1 && fabs(*(a2 + 6)) > 100000.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v17 = *(a2 + 6);
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Height,%f\n");
      goto LABEL_17;
    }

LABEL_18:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
LABEL_20:
      v13 = 2;
      goto LABEL_21;
    }

LABEL_19:
    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v11, "LSM", 73, "GNS_EaWgs84RefPos");
    LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
    goto LABEL_20;
  }

  if (*(a2 + 20) - 181 <= 0xFE96)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v32 = *(a2 + 20);
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:RmsSemiMajBrg,%d\n", (*&g_MacClockTicksToMsRelation * v18));
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v19 = gnssOsa_Calloc("GNS_EaWgs84RefPos", 246, 1, 0x70uLL);
  if (v19)
  {
    v20 = v19;
    *(v19 + 3) = a1;
    *(v19 + 4) = 1;
    v21 = *a2;
    *(v19 + 40) = a2[1];
    *(v19 + 24) = v21;
    v22 = a2[2];
    v23 = a2[3];
    v24 = a2[4];
    *(v19 + 26) = *(a2 + 20);
    *(v19 + 88) = v24;
    *(v19 + 72) = v23;
    *(v19 + 56) = v22;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v25), "LSM", 73, "GNS_EaWgs84RefPos", *(v20 + 4), *(v20 + 3));
      LbsOsaTrace_WriteLog(0xCu, __str, v26, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8781827, v20);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 73, "GNS_EaWgs84RefPos");
      v13 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v28, 4, 1);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "LSM", 73, "GNS_EaWgs84RefPos");
      LbsOsaTrace_WriteLog(0xCu, __str, v30, 4, 1);
    }

    v13 = 6;
  }

LABEL_21:
  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t GNS_EaDevMovState(int a1, uint64_t *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaDevMovState");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:DMS\n");
    goto LABEL_19;
  }

  if (*(a2 + 1) >= 4u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:MovState,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "GNS_EaDevMovState", 515, *(a2 + 1));
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (*(a2 + 2) >= 4u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v24 = *(a2 + 2);
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:MovReliab,%u\n", (*&g_MacClockTicksToMsRelation * v17));
LABEL_19:
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
LABEL_20:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
LABEL_22:
      v13 = 2;
      goto LABEL_23;
    }

LABEL_21:
    bzero(__str, 0x410uLL);
    v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v18, "LSM", 73, "GNS_EaDevMovState");
    LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
    goto LABEL_22;
  }

  v6 = gnssOsa_Calloc("GNS_EaDevMovState", 336, 1, 0x70uLL);
  if (v6)
  {
    v7 = v6;
    v6[3] = a1;
    v6[4] = 2;
    v8 = *a2;
    v6[8] = *(a2 + 2);
    *(v6 + 3) = v8;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "GNS_EaDevMovState", v7[4], v7[3]);
      LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8781827, v7);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_EaDevMovState");
      v13 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "GNS_EaDevMovState");
      LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
    }

    v13 = 6;
  }

LABEL_23:
  v20 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t GNS_EaSpeedConstraint(int a1, __int128 *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaSpeedConstraint");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a2)
  {
    v6 = gnssOsa_Calloc("GNS_EaSpeedConstraint", 393, 1, 0x70uLL);
    if (v6)
    {
      v7 = v6;
      *(v6 + 3) = a1;
      *(v6 + 4) = 8;
      v8 = *a2;
      *(v6 + 5) = *(a2 + 2);
      *(v6 + 24) = v8;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "GNS_EaSpeedConstraint", *(v7 + 4), *(v7 + 3));
        LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
      }

      AgpsSendFsmMsg(131, 134, 8781827, v7);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_EaSpeedConstraint");
        v13 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 73, "GNS_EaSpeedConstraint");
        LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
      }

      v13 = 6;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:SpdC\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "GNS_EaSpeedConstraint", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GNS_EaSpeedConstraint");
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }

    v13 = 2;
  }

  v20 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t GNS_EaAlongTrackVel(int a1, __int128 *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaAlongTrackVel");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a2)
  {
    v6 = gnssOsa_Calloc("GNS_EaAlongTrackVel", 449, 1, 0x70uLL);
    if (v6)
    {
      v7 = v6;
      *(v6 + 3) = a1;
      *(v6 + 4) = 9;
      v8 = *a2;
      *(v6 + 5) = *(a2 + 2);
      *(v6 + 24) = v8;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "GNS_EaAlongTrackVel", *(v7 + 4), *(v7 + 3));
        LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
      }

      AgpsSendFsmMsg(131, 134, 8781827, v7);
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        v12 = 1;
        goto LABEL_16;
      }

      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = 1;
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_EaAlongTrackVel");
      v14 = 4;
      goto LABEL_11;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GNS_EaAlongTrackVel");
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }

    v12 = 6;
  }

  else
  {
    v12 = 2;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:AlongTrackVel\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "GNS_EaAlongTrackVel", 513);
      v14 = 2;
LABEL_11:
      LbsOsaTrace_WriteLog(0xCu, __str, v13, v14, 1);
    }
  }

LABEL_16:
  v18 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t GNS_EaUsrActCtxt(int a1, uint64_t *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaUsrActCtxt");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:UAC\n");
    goto LABEL_19;
  }

  if (*(a2 + 1) >= 0xCu)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Ctxt,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "GNS_EaUsrActCtxt", 515, *(a2 + 1));
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (*(a2 + 2) >= 4u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v24 = *(a2 + 2);
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Reliab,%u\n", (*&g_MacClockTicksToMsRelation * v17));
LABEL_19:
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
LABEL_20:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
LABEL_22:
      v13 = 2;
      goto LABEL_23;
    }

LABEL_21:
    bzero(__str, 0x410uLL);
    v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v18, "LSM", 73, "GNS_EaUsrActCtxt");
    LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
    goto LABEL_22;
  }

  v6 = gnssOsa_Calloc("GNS_EaUsrActCtxt", 672, 1, 0x70uLL);
  if (v6)
  {
    v7 = v6;
    v6[3] = a1;
    v6[4] = 3;
    v8 = *a2;
    v6[8] = *(a2 + 2);
    *(v6 + 3) = v8;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "GNS_EaUsrActCtxt", v7[4], v7[3]);
      LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8781827, v7);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_EaUsrActCtxt");
      v13 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "GNS_EaUsrActCtxt");
      LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
    }

    v13 = 6;
  }

LABEL_23:
  v20 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t GNS_EaFixedInVehicle(int a1, uint64_t *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaFixedInVehicle");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:FIV\n");
    goto LABEL_19;
  }

  if (*(a2 + 1) >= 4u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:FivInd,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "GNS_EaFixedInVehicle", 515, *(a2 + 1));
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (*(a2 + 2) >= 4u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v24 = *(a2 + 2);
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:FIVReliab,%u\n", (*&g_MacClockTicksToMsRelation * v17));
LABEL_19:
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
LABEL_20:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
LABEL_22:
      v13 = 2;
      goto LABEL_23;
    }

LABEL_21:
    bzero(__str, 0x410uLL);
    v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v18, "LSM", 73, "GNS_EaFixedInVehicle");
    LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
    goto LABEL_22;
  }

  v6 = gnssOsa_Calloc("GNS_EaFixedInVehicle", 761, 1, 0x70uLL);
  if (v6)
  {
    v7 = v6;
    v6[3] = a1;
    v6[4] = 4;
    v8 = *a2;
    v6[8] = *(a2 + 2);
    *(v6 + 3) = v8;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "GNS_EaFixedInVehicle", v7[4], v7[3]);
      LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8781827, v7);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_EaFixedInVehicle");
      v13 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "GNS_EaFixedInVehicle");
      LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
    }

    v13 = 6;
  }

LABEL_23:
  v20 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t GNS_EaSigEnvSev(int a1, unsigned int a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaSigEnvSev");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a2 >= 8)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:SES,%u\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 87, "GNS_EaSigEnvSev", 515, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "GNS_EaSigEnvSev");
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
    }

    v12 = 2;
  }

  else
  {
    v6 = gnssOsa_Calloc("GNS_EaSigEnvSev", 831, 1, 0x70uLL);
    if (v6)
    {
      v7 = v6;
      v6[3] = a1;
      v6[4] = 5;
      v6[6] = a2;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_EaSigEnvSev", v7[4], v7[3]);
        LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
      }

      AgpsSendFsmMsg(131, 134, 8781827, v7);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "GNS_EaSigEnvSev");
        v12 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "GNS_EaSigEnvSev");
        LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
      }

      v12 = 6;
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t GNS_EaAltitude(int a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaAltitude");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Alt\n");
    goto LABEL_12;
  }

  if (fabs(*(a2 + 1)) > 100000.0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = *(a2 + 1);
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Altitude,%f\n");
    goto LABEL_12;
  }

  if (*(a2 + 2) > 100000.0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v8 = *(a2 + 2);
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:RMSAltitude,%f\n");
LABEL_12:
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 2, 1);
LABEL_13:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
LABEL_15:
      v11 = 2;
      goto LABEL_16;
    }

LABEL_14:
    bzero(__str, 0x410uLL);
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v9, "LSM", 73, "GNS_EaAltitude");
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
    goto LABEL_15;
  }

  if (*(a2 + 6) >= 5u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Trust,%u\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 87, "GNS_EaAltitude", 515, *(a2 + 6));
      LbsOsaTrace_WriteLog(0xCu, __str, v22, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v14 = gnssOsa_Calloc("GNS_EaAltitude", 927, 1, 0x70uLL);
  if (v14)
  {
    v15 = v14;
    *(v14 + 3) = a1;
    *(v14 + 4) = 6;
    v16 = *a2;
    *(v14 + 36) = *(a2 + 12);
    *(v14 + 24) = v16;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "GNS_EaAltitude", *(v15 + 4), *(v15 + 3));
      LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8781827, v15);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "GNS_EaAltitude");
      v11 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "GNS_EaAltitude");
      LbsOsaTrace_WriteLog(0xCu, __str, v24, 4, 1);
    }

    v11 = 6;
  }

LABEL_16:
  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t GNS_EaMapVectorSeg(int a1, uint64_t a2)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_EaMapVectorSeg");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:MapVecSeg\n");
      goto LABEL_25;
    }

LABEL_26:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "GNS_EaMapVectorSeg");
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
    }

    v15 = 2;
    goto LABEL_29;
  }

  if (fabs(*(a2 + 8)) > 90.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v6 = *(a2 + 8);
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Latitude,%f\n");
LABEL_25:
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 2, 1);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (fabs(*(a2 + 16)) > 180.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v8 = *(a2 + 16);
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Longitude,%f\n");
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (*(a2 + 32) == 1 && fabs(*(a2 + 24)) > 100000.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v9 = *(a2 + 24);
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Altitude,%f\n");
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (*(a2 + 40) > 360.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v10 = *(a2 + 40);
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Direction,%f\n");
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (*(a2 + 48) > 100000.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v11 = *(a2 + 48);
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Length,%f\n");
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (*(a2 + 56) > 100000.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v12 = *(a2 + 56);
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Width,%f\n");
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v18 = gnssOsa_Calloc("GNS_EaMapVectorSeg", 1045, 1, 0x70uLL);
  if (v18)
  {
    v19 = v18;
    *(v18 + 3) = a1;
    *(v18 + 4) = 7;
    *(v18 + 24) = *a2;
    v20 = *(a2 + 16);
    v21 = *(a2 + 32);
    v22 = *(a2 + 48);
    *(v18 + 85) = *(a2 + 61);
    *(v18 + 72) = v22;
    *(v18 + 56) = v21;
    *(v18 + 40) = v20;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "GNS_EaMapVectorSeg", *(v19 + 4), *(v19 + 3));
      LbsOsaTrace_WriteLog(0xCu, __str, v24, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8781827, v19);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "LSM", 73, "GNS_EaMapVectorSeg");
      v15 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v26, 4, 1);
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 73, "GNS_EaMapVectorSeg");
      LbsOsaTrace_WriteLog(0xCu, __str, v28, 4, 1);
    }

    v15 = 6;
  }

LABEL_29:
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t lsim09_04SendConnApiStatus(int a1, int a2, int a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim09_04SendConnApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = gnssOsa_Calloc("lsim09_04SendConnApiStatus", 190, 1, 0x118uLL);
  if (v8)
  {
    v9 = v8;
    v8[1] = a3;
    v8[2] = a2;
    *v8 = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>DcCB,Api,%u,Status,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim09_04SendConnApiStatus", a3, a2, a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
    }

    GNS_ExecuteDcCb(3, 280, v9);
    free(v9);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "lsim09_04SendConnApiStatus");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_ExecuteDcCb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_ExecuteDcCb");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (g_GnsDcCallback)
  {
    g_GnsDcCallback(a1, a2, a3);
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "GNS_ExecuteDcCb");
      v11 = 4;
LABEL_8:
      result = LbsOsaTrace_WriteLog(0xCu, __str, v10, v11, 1);
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataConn\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 87, "GNS_ExecuteDcCb", 258);
      v11 = 2;
      goto LABEL_8;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim09_21TcpIpConnectCnf(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim09_21TcpIpConnectCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (g_GnsDcCallback)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_TCPIP_CONNECT_CNF,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim09_21TcpIpConnectCnf", *(a1 + 12));
        LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
      }

      v6 = 0;
      v7 = 1;
      v8 = &qword_2A191FFA8 + 1;
      do
      {
        if (*(v8 - 16) == 1 && *(v8 - 1) == 0x7FFF && *v8 == 1)
        {
          break;
        }

        v7 = v6 < 4;
        v8 += 6;
        ++v6;
      }

      while (v6 != 5);
      if (v7 && (lsim12_02StopTimer(0x7FFF, 1) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ConnectTimerStopFailed\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 87, "lsim09_21TcpIpConnectCnf");
        LbsOsaTrace_WriteLog(0xCu, __str, v10, 2, 1);
      }

      v11 = 0;
      v12 = 1;
      while (1)
      {
        v13 = v12;
        v14 = &g_SuplInstance + 296 * v11;
        v16 = *(v14 + 2);
        v15 = v14 + 8;
        if (v16 == 2)
        {
          break;
        }

        v12 = 0;
        v11 = 1;
        if ((v13 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v19 = (&g_SuplInstance + 296 * v11);
      if (*(v19 + 281) != 1)
      {
LABEL_27:
        lsim09_04SendConnApiStatus(*(a1 + 12), 4, 2);
        lsim09_02TcpIpDisconnectReq(*(a1 + 12));
        goto LABEL_31;
      }

      if (GN_SUPL_Connect_Ind_In(*v19, 6))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v20 = mach_continuous_time();
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Connect_Ind_In successful,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 68, "lsim09_21TcpIpConnectCnf", *v19);
          LbsOsaTrace_WriteLog(0xCu, __str, v21, 5, 1);
        }

        GN_SUPL_Handler();
        v22 = 1;
      }

      else
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
        v22 = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Connect_Ind_In failed,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 87, "lsim09_21TcpIpConnectCnf", *v19);
          LbsOsaTrace_WriteLog(0xCu, __str, v25, 2, 1);
          v22 = 0;
        }
      }

      *v15 = 3;
      lsim09_04SendConnApiStatus(*(a1 + 12), v22, 2);
LABEL_31:
      v26 = 0;
      v27 = 1;
      while (1)
      {
        v28 = v27;
        if (*(&g_SuplInstance + 74 * v26 + 2) == 1)
        {
          break;
        }

        v27 = 0;
        v26 = 1;
        if ((v28 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v29 = &g_SuplInstance + 296 * v26;
      if (v29[281] == 1 && strnlen(v29 + 13, 0x100uLL))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v30 = mach_continuous_time();
          v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PendingConn Found,SuplHandle,%u,SuplInstanceIndex,%u\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 73, "lsim09_21TcpIpConnectCnf", *v29, v26);
          LbsOsaTrace_WriteLog(0xCu, __str, v31, 4, 1);
        }

        lsim09_11EstablishTcpIpSession(v26);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataConn,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 87, "lsim09_21TcpIpConnectCnf", 258, *(a1 + 12));
      LbsOsaTrace_WriteLog(0xCu, __str, v18, 2, 1);
    }
  }

LABEL_40:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "LSM", 73, "lsim09_21TcpIpConnectCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v33, 4, 1);
  }

  v34 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim09_02TcpIpDisconnectReq(int a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim09_02TcpIpDisconnectReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  memset_s(__s, 0x118uLL, 0, 0x118uLL);
  __s[0] = 1;
  __s[1] = a1;
  __s[2] = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LINK_REQ =>DcCB,CLOSE,SuplHandle,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim09_02TcpIpDisconnectReq", a1, 0);
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  GNS_ExecuteDcCb(0, 280, __s);
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim09_02TcpIpDisconnectReq");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void lsim09_11EstablishTcpIpSession(unsigned int a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("lsim09_11EstablishTcpIpSession", 263, 1, 0x114uLL);
  if (v2)
  {
    v3 = v2;
    v4 = &g_SuplInstance + 296 * a1;
    *v2 = *v4;
    *(v2 + 1) = (dword_2A18CCEB4 >> 13) & 1;
    v2[8] = v4[12];
    *(v2 + 137) = *(v4 + 139);
    *(v2 + 67) = *(v4 + 68);
    v2[272] = strnlen(v4 + 13, 0x100uLL);
    strncpy(v3 + 9, v4 + 13, 0x100uLL);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%p,SuplInstanceIndex,%u,Secure,%u,AddrType,%u,Port,%d,Addr,%s\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 73, "lsim09_11EstablishTcpIpSession", &g_SuplInstance + 296 * a1, a1, *(v3 + 1), *(v3 + 67), *(v3 + 137), v3 + 9);
      LbsOsaTrace_WriteLog(0xCu, __str, v6, 4, 1);
    }

    *(v4 + 2) = 2;
    v7 = *v4;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim09_01TcpIpConnectReq");
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
    }

    memset_s(&__s, 0x118uLL, 0, 0x118uLL);
    __s = 0;
    v18[0] = v7;
    memcpy_s("lsim09_01TcpIpConnectReq", 122, v18, 0x114u, v3, 0x114uLL);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LINK_REQ =>DcCB,OPEN,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim09_01TcpIpConnectReq", v7);
      LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
    }

    GNS_ExecuteDcCb(0, 280, &__s);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim09_01TcpIpConnectReq");
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
    }

    if ((lsim12_01StartTimer(lsim09_26HandleConnectTimerExpiry, 0x7FFF, 0x7530u, 1) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConnTmr,SuplHandle,%u,SuplSessionIndex,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "lsim09_11EstablishTcpIpSession", 1544, *v4, a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
    }

    free(v3);
  }

  v16 = *MEMORY[0x29EDCA608];
}

uint64_t lsim09_22TcpIpConnectErr(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim09_22TcpIpConnectErr");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    goto LABEL_39;
  }

  if (!g_GnsDcCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataConn,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "lsim09_22TcpIpConnectErr", 258, *(a1 + 12));
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
    }

    goto LABEL_39;
  }

  v4 = 0;
  v5 = 1;
  v6 = &qword_2A191FFA8 + 1;
  do
  {
    if (*(v6 - 16) == 1 && *(v6 - 1) == 0x7FFF && *v6 == 1)
    {
      break;
    }

    v5 = v4 < 4;
    v6 += 6;
    ++v4;
  }

  while (v4 != 5);
  if (v5 && (lsim12_02StopTimer(0x7FFF, 1) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ConnectTimerStopFailed\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 87, "lsim09_22TcpIpConnectErr");
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_TCPIP_CONNECT_ERR,ErrorType,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim09_22TcpIpConnectErr", *(a1 + 16), *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
  }

  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = v12;
    v14 = &g_SuplInstance + 296 * v11;
    v16 = *(v14 + 2);
    v15 = v14 + 8;
    if (v16 == 2)
    {
      break;
    }

    v12 = 0;
    v11 = 1;
    if ((v13 & 1) == 0)
    {
      v17 = 4;
      goto LABEL_30;
    }
  }

  if (*(&g_SuplInstance + 296 * v11 + 281) != 1)
  {
    goto LABEL_29;
  }

  PpduCodeFromDcStatus = lsim09_05GetPpduCodeFromDcStatus(*(a1 + 16));
  *v15 = 0;
  v21 = (&g_SuplInstance + 296 * v11);
  if (!GN_SUPL_Connect_Ind_In(*v21, PpduCodeFromDcStatus))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Connect_Ind_In failed,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 87, "lsim09_22TcpIpConnectErr", *v21);
      LbsOsaTrace_WriteLog(0xCu, __str, v25, 2, 1);
    }

LABEL_29:
    v17 = 0;
    goto LABEL_30;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Connect_Ind_In successful,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 68, "lsim09_22TcpIpConnectErr", *v21);
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 5, 1);
  }

  GN_SUPL_Handler();
  v17 = 1;
LABEL_30:
  lsim09_04SendConnApiStatus(*(a1 + 12), v17, 2);
  v26 = 0;
  v27 = 1;
  while (1)
  {
    v28 = v27;
    if (*(&g_SuplInstance + 74 * v26 + 2) == 1)
    {
      break;
    }

    v27 = 0;
    v26 = 1;
    if ((v28 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v29 = &g_SuplInstance + 296 * v26;
  if (v29[281] == 1 && strnlen(v29 + 13, 0x100uLL))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PendingConn Found,SuplHandle,%u,SuplInstanceIndex,%u\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 73, "lsim09_22TcpIpConnectErr", *v29, v26);
      LbsOsaTrace_WriteLog(0xCu, __str, v31, 4, 1);
    }

    lsim09_11EstablishTcpIpSession(v26);
  }

LABEL_39:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "LSM", 73, "lsim09_22TcpIpConnectErr");
    LbsOsaTrace_WriteLog(0xCu, __str, v33, 4, 1);
  }

  v34 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim09_05GetPpduCodeFromDcStatus(unsigned int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 >= 0x10)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DcErr,%u\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 87, "lsim09_05GetPpduCodeFromDcStatus", 515, a1);
      v2 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v4, 2, 1);
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = dword_29972B420[a1];
  }

  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t lsim09_23TcpIpDisconnectInd(uint64_t a1)
{
  v31 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim09_23TcpIpDisconnectInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (g_GnsDcCallback)
    {
      v4 = 0;
      v5 = 1;
      while (1)
      {
        v6 = v5;
        if (*(&g_SuplInstance + 74 * v4) == *(a1 + 12))
        {
          break;
        }

        v5 = 0;
        v4 = 1;
        if ((v6 & 1) == 0)
        {
          LOBYTE(v4) = -1;
          break;
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_TCPIP_DISCONNECT_IND,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim09_23TcpIpDisconnectInd", *(a1 + 12));
        LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
      }

      v11 = 0;
      v12 = 1;
      v13 = &qword_2A191FFA8 + 1;
      do
      {
        if (*(v13 - 16) == 1 && *(v13 - 1) == 0xFFFF && *v13 == 2)
        {
          break;
        }

        v12 = v11 < 4;
        v13 += 6;
        ++v11;
      }

      while (v11 != 5);
      if (v12 && (lsim12_02StopTimer(0xFFFF, 2) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DisconnectTimerStopFailed\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "lsim09_23TcpIpDisconnectInd");
        LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
      }

      v16 = *(a1 + 12);
      if (v4 == 0xFF)
      {
        v23 = 4;
      }

      else
      {
        v17 = (&g_SuplInstance + 296 * v4);
        if (*v17 == v16 && *(v17 + 281) == 1 && ((v18 = v17[2], v18 != 5) ? (v19 = v18 == 3) : (v19 = 1), v19))
        {
          PpduCodeFromDcStatus = lsim09_05GetPpduCodeFromDcStatus(*(a1 + 16));
          if (GN_SUPL_Disconnect_Ind_In(*v17, PpduCodeFromDcStatus))
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v21 = mach_continuous_time();
              v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Disconnect_Ind_In successful,SuplHandle,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 68, "lsim09_23TcpIpDisconnectInd", *v17, PpduCodeFromDcStatus);
              LbsOsaTrace_WriteLog(0xCu, __str, v22, 5, 1);
            }

            GN_SUPL_Handler();
            v23 = 1;
          }

          else
          {
            v23 = 0;
            if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v28 = mach_continuous_time();
              v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Disconnect_Ind_In failed,SuplHandle,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v28), "LSM", 87, "lsim09_23TcpIpDisconnectInd", *v17, PpduCodeFromDcStatus);
              LbsOsaTrace_WriteLog(0xCu, __str, v29, 2, 1);
              v23 = 0;
            }
          }

          lsim05_34DeleteSuplContext(v4);
          v16 = *(a1 + 12);
        }

        else
        {
          v23 = 14;
        }

        v17[2] = 0;
      }

      lsim09_04SendConnApiStatus(v16, v23, 2);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataConn,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 87, "lsim09_23TcpIpDisconnectInd", 258, *(a1 + 12));
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 2, 1);
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v24 = mach_continuous_time();
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 73, "lsim09_23TcpIpDisconnectInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
  }

  v26 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim09_26HandleConnectTimerExpiry(int a1, int a2)
{
  v35 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim09_26HandleConnectTimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a1 != 0x7FFF || a2 != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_36;
    }

    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Unexpected TimerId,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 87, "lsim09_26HandleConnectTimerExpiry", a1, a2);
    v11 = 2;
    goto LABEL_35;
  }

  v6 = 0;
  v7 = 1;
  while (*(&g_SuplInstance + 74 * v6 + 2) != 2)
  {
    v8 = v7;
    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim09_13HandleTcpConnectionFailure");
    LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
  }

  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = v15;
    v17 = &g_SuplInstance + 296 * v14;
    v19 = *(v17 + 2);
    v18 = v17 + 8;
    if (v19 == 2)
    {
      break;
    }

    v15 = 0;
    v14 = 1;
    if ((v16 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v20 = (&g_SuplInstance + 296 * v14);
  if (GN_SUPL_Connect_Ind_In(*v20, 17))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Connect_Ind_In successful,SuplHandle,%u,PendIndex,%u\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 68, "lsim09_13HandleTcpConnectionFailure", *v20, v14);
      LbsOsaTrace_WriteLog(0xCu, __str, v22, 5, 1);
    }

    GN_SUPL_Handler();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Connect_Ind_In failed,SuplHandle,%u,PendIndex,%hhu\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 87, "lsim09_13HandleTcpConnectionFailure", *v20, v14);
    LbsOsaTrace_WriteLog(0xCu, __str, v24, 2, 1);
  }

  if (*(&g_SuplInstance + 74 * v14 + 71) == 2)
  {
    lsim05_34DeleteSuplContext(v14);
  }

  *v18 = 0;
LABEL_26:
  v25 = 0;
  v26 = 1;
  while (1)
  {
    v27 = v26;
    if (*(&g_SuplInstance + 74 * v25 + 2) == 1)
    {
      break;
    }

    v26 = 0;
    v25 = 1;
    if ((v27 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v28 = &g_SuplInstance + 296 * v25;
  if (v28[281] == 1 && strnlen(v28 + 13, 0x100uLL))
  {
    lsim09_11EstablishTcpIpSession(v25);
  }

LABEL_33:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v29 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "LSM", 73, "lsim09_13HandleTcpConnectionFailure");
    v11 = 4;
LABEL_35:
    LbsOsaTrace_WriteLog(0xCu, __str, v10, v11, 1);
  }

LABEL_36:
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v31 = mach_continuous_time();
    v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v31), "LSM", 73, "lsim09_26HandleConnectTimerExpiry");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v32, 4, 1);
  }

  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim09_27HandleDisconnectTimerExpiry(int a1, int a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim09_27HandleDisconnectTimerExpiry");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a1 == 0xFFFF && a2 == 2)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = v7;
      if (*(&g_SuplInstance + 74 * v6 + 2) == 5)
      {
        break;
      }

      v7 = 0;
      v6 = 1;
      if ((v8 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v11 = (&g_SuplInstance + 296 * v6);
    if (*(v11 + 281) == 1)
    {
      if (GN_SUPL_Disconnect_Ind_In(*v11, 17))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Disconnect_Ind_In Successful,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 68, "lsim09_12TcpIpDisconnectProcess", *v11);
          LbsOsaTrace_WriteLog(0xCu, __str, v13, 5, 1);
        }

        GN_SUPL_Handler();
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Disconnect_Ind_In failed,SuplHandle,%u,SuplInstanceIndex,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "lsim09_12TcpIpDisconnectProcess", *v11, v6);
        LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
      }

      lsim09_02TcpIpDisconnectReq(*v11);
      lsim05_34DeleteSuplContext(v6);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Unexpected TimerId,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 87, "lsim09_27HandleDisconnectTimerExpiry", a1, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 2, 1);
  }

LABEL_19:
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "lsim09_27HandleDisconnectTimerExpiry");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim09_31DisconnectSuplSession(int a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1 <= 1 && (v1 = (&g_SuplInstance + 296 * a1), (*(v1 + 281) & 1) != 0))
  {
    lsim09_02TcpIpDisconnectReq(*v1);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim09_31DisconnectSuplSession", *v1);
      LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
    }

    v1[2] = 5;
    result = lsim12_01StartTimer(lsim09_27HandleDisconnectTimerExpiry, 0xFFFF, 0x7D0u, 2);
    if ((result & 1) == 0)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v9 = *v1;
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DisConnTmr,SuplHandle,%u,SuplSessionIndex,%u\n", v5);
LABEL_10:
        result = LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
      }
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplInstanceIndex,%u\n", v8);
      goto LABEL_10;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void lsim09_32ConnectSUPLSession(unsigned int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = (&g_SuplInstance + 296 * a1);
  if (v2[2] != 3)
  {
    v6 = 0;
    v7 = 1;
    while (*(&g_SuplInstance + 74 * v6 + 2) != 2)
    {
      v8 = v7;
      v7 = 0;
      v6 = 1;
      if ((v8 & 1) == 0)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v9 = mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim09_32ConnectSUPLSession", *v2);
          LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
        }

        lsim09_11EstablishTcpIpSession(a1);
        goto LABEL_13;
      }
    }

    v2[2] = 1;
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Waiting for pending connections\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim09_32ConnectSUPLSession");
    v5 = 4;
    goto LABEL_12;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SuplInstanceIndex,%d\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 87, "lsim09_32ConnectSUPLSession", 2053, a1);
    v5 = 2;
LABEL_12:
    LbsOsaTrace_WriteLog(0xCu, __str, v4, v5, 1);
  }

LABEL_13:
  v12 = *MEMORY[0x29EDCA608];
}

uint64_t lsim09_33SendDataReq(int a1, unsigned __int8 *a2, int a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim09_33SendDataReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  memset_s(&__s, 0x118uLL, 0, 0x118uLL);
  __s = a1;
  v15 = a2;
  v16 = a3;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:SEND_DATA =>DcCB,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim09_33SendDataReq", a1);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  GNS_ExecuteDcCb(1, 24, &__s);
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim09_33SendDataReq");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void lsim09_34SendClientSlpInfo(void)
{
  v16 = *MEMORY[0x29EDCA608];
  *(&__src[60] + 1) = 0u;
  *(&__src[56] + 1) = 0u;
  *(&__src[52] + 1) = 0u;
  *(&__src[48] + 1) = 0u;
  *(&__src[44] + 1) = 0u;
  *(&__src[40] + 1) = 0u;
  *(&__src[36] + 1) = 0u;
  *(&__src[32] + 1) = 0u;
  *(&__src[28] + 1) = 0u;
  *(&__src[24] + 1) = 0u;
  *(&__src[20] + 1) = 0u;
  *(&__src[16] + 1) = 0u;
  *(&__src[12] + 1) = 0u;
  *(&__src[8] + 1) = 0u;
  *(&__src[4] + 1) = 0u;
  *(__src + 1) = 0u;
  if (byte_2A1920A81)
  {
    if (byte_2A1920A82)
    {
      v0 = 0;
      v1 = byte_2A1920A85;
      v2 = 1;
      while (1)
      {
        v3 = &g_LsimUserConfig + 268 * v0;
        if (*v3 == byte_2A1920A85)
        {
          break;
        }

        v4 = v2;
        v2 = 0;
        v0 = 1;
        if ((v4 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v7 = strnlen(v3 + 8, 0x100uLL);
      if (v7 >= 0x100)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
        {
          goto LABEL_10;
        }

        bzero(__str, 0x410uLL);
        v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SimSlpAddrLen,%u\n", v12);
        goto LABEL_9;
      }

      v8 = *(v3 + 1);
      if (v7)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        LOBYTE(__src[0]) = v1;
        __src[65] = v8;
        LOBYTE(__src[66]) = v7;
        HIWORD(__src[66]) = *(v3 + 132);
        strncpy_s(__src + 1, 0x100u, v3 + 8, v7);
        memset_s(__s, 0x118uLL, 0, 0x118uLL);
        memcpy(__s, __src, 0x10CuLL);
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:SLP_INFO =>DcCB,Addr,%s,Port,%d\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim09_34SendClientSlpInfo", __src + 1, HIWORD(__src[66]));
          LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
        }

        GNS_ExecuteDcCb(2, 268, __s);
      }
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SimsInfo\n");
LABEL_9:
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 2, 1);
  }

LABEL_10:
  v6 = *MEMORY[0x29EDCA608];
}

uint64_t lsim09_41DcCbInit(uint64_t result)
{
  v1 = result;
  v8 = *MEMORY[0x29EDCA608];
  if (result)
  {
LABEL_2:
    g_GnsDcCallback = v1;
    goto LABEL_3;
  }

  if (g_GnsDcCallback)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim09_41DcCbInit", 513);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

    goto LABEL_2;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim09_41DcCbInit", 513);
    result = LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

LABEL_3:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void lsim09_50ConnMgmtDeInit(void)
{
  v0 = 0;
  v12 = *MEMORY[0x29EDCA608];
  v1 = 1;
  v2 = &qword_2A191FFA8 + 1;
  do
  {
    if (*(v2 - 16) == 1 && *(v2 - 1) == 0x7FFF && *v2 == 1)
    {
      break;
    }

    v1 = v0 < 4;
    v2 += 6;
    ++v0;
  }

  while (v0 != 5);
  if (v1 && (lsim12_02StopTimer(0x7FFF, 1) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ConnectTimerStopFailed\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 87, "lsim09_50ConnMgmtDeInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v4, 2, 1);
  }

  v5 = 0;
  v6 = 1;
  v7 = &qword_2A191FFA8 + 1;
  do
  {
    if (*(v7 - 16) == 1 && *(v7 - 1) == 0xFFFF && *v7 == 2)
    {
      break;
    }

    v6 = v5 < 4;
    v7 += 6;
    ++v5;
  }

  while (v5 != 5);
  if (v6 && (lsim12_02StopTimer(0xFFFF, 2) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DisconnectTimerStopFailed\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "lsim09_50ConnMgmtDeInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
}

BOOL GNS_DcInitialize(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_DcInitialize");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("GNS_DcInitialize", 999, 1, 0x18uLL);
  v5 = v4;
  if (v4)
  {
    v4[3] = 6;
    *(v4 + 2) = a1;
    AgpsSendFsmMsg(131, 131, 8635139, v4);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_DcInitialize");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }
  }

  result = v5 != 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_DcSuplInit(unsigned __int8 *a1, size_t a2, char a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_DcSuplInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (a1 && (a2 - 0x10000) > 0xFFFF0000)
  {
    v8 = gnssOsa_Calloc("GNS_DcSuplInit", 1044, 1, 0x20uLL);
    if (v8)
    {
      v9 = v8;
      v10 = gnssOsa_Calloc("GNS_DcSuplInit", 1053, 1, a2);
      v9[2] = v10;
      if (v10)
      {
        memcpy_s("GNS_DcSuplInit", 1064, v10, a2, a1, a2);
        *(v9 + 3) = a2;
        *(v9 + 24) = a3;
        AgpsSendFsmMsg(131, 131, 8621827, v9);
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_DcSuplInit");
          v13 = 1;
          LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
        }

        else
        {
          v13 = 1;
        }

        goto LABEL_19;
      }

      free(v9);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 73, "GNS_DcSuplInit");
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
    }

    v13 = 6;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pdu,Length,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "GNS_DcSuplInit", 513, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GNS_DcSuplInit");
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }

    v13 = 2;
  }

LABEL_19:
  v20 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t GNS_DcSuplPdu(int a1, unsigned __int8 *a2, size_t a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_DcSuplPdu");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (a2 && (a3 - 0x10000) > 0xFFFF0000)
  {
    v8 = gnssOsa_Calloc("GNS_DcSuplPdu", 1103, 1, 0x20uLL);
    if (v8)
    {
      v9 = v8;
      v8[3] = a1;
      v10 = gnssOsa_Calloc("GNS_DcSuplPdu", 1112, 1, a3);
      *(v9 + 3) = v10;
      if (v10)
      {
        memcpy_s("GNS_DcSuplPdu", 1124, v10, a3, a2, a3);
        v9[4] = a3;
        AgpsSendFsmMsg(131, 131, 8622595, v9);
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_DcSuplPdu");
          v13 = 1;
          LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
        }

        else
        {
          v13 = 1;
        }

        goto LABEL_20;
      }

      free(v9);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        goto LABEL_17;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
LABEL_17:
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v18, "LSM", 73, "GNS_DcSuplPdu");
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
    }

    v13 = 6;
    goto LABEL_20;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pdu,Length,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "GNS_DcSuplPdu", 513, a3, a1);
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GNS_DcSuplPdu");
    LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
  }

  v13 = 2;
LABEL_20:
  v20 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t GNS_DcLinkRsp(int a1, int a2, int a3)
{
  v27 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_DcLinkRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,RespType,%u,ErrType,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_DcLinkRsp", a2, a1, a3);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if ((a1 - 2) < 3)
  {
    v10 = gnssOsa_Calloc("GNS_DcLinkRsp", 1202, 1, 0x14uLL);
    v11 = v10;
    if (v10)
    {
      *(v10 + 3) = a2;
      *(v10 + 4) = a3;
      v12 = 8622339;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (a1 == 1)
  {
    v14 = gnssOsa_Calloc("GNS_DcLinkRsp", 1181, 1, 0x14uLL);
    v11 = v14;
    if (v14)
    {
      *(v14 + 3) = a2;
      *(v14 + 4) = a3;
      v12 = 8622082;
LABEL_14:
      AgpsSendFsmMsg(131, 131, v12, v11);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "GNS_DcLinkRsp");
        v17 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
      }

      else
      {
        v17 = 1;
      }

      goto LABEL_25;
    }

LABEL_16:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, v11))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 73, "GNS_DcLinkRsp");
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
    }

    v17 = 6;
    goto LABEL_25;
  }

  if (!a1)
  {
    v13 = gnssOsa_Calloc("GNS_DcLinkRsp", 1162, 1, 0x10uLL);
    v11 = v13;
    if (v13)
    {
      *(v13 + 3) = a2;
      v12 = 8622081;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespType,%u,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 87, "GNS_DcLinkRsp", 515, a1, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v21, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "GNS_DcLinkRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
  }

  v17 = 2;
LABEL_25:
  v24 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t CUCFGetNumOfDigits(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    if (a1 >= 0x64)
    {
      if (a1 >= 0x3E8)
      {
        if (a1 >> 4 >= 0x271)
        {
          if (a1 >> 5 >= 0xC35)
          {
            if (a1 >= 0xF4240)
            {
              if (a1 >= 0x989680)
              {
                if (a1 >= 0x5F5E100)
                {
                  if (a1 < 0x3B9ACA00)
                  {
                    v1 = 9;
                  }

                  else
                  {
                    v1 = 10;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t CUCFGetOpenTypeObject(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4)
{
  v48 = *MEMORY[0x29EDCA608];
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = a2;
  do
  {
    do
    {
      v9 = *(v9 + 3);
      v10 = *v9;
    }

    while (v10 == 96);
  }

  while (v10 == 128 || v10 == 160);
  v11 = v10 & 0x1F;
  if (v11 <= 3)
  {
    switch(v11)
    {
      case 1:
        if (!v8)
        {
          goto LABEL_36;
        }

        v25 = *(a2 + 5);
        while (*(v7 + 16) != *a3)
        {
          v7 += 32;
          if (!--v25)
          {
            goto LABEL_36;
          }
        }

        break;
      case 2:
        v28 = *(*(v9 + 1) + 8);
        if (!v8)
        {
          goto LABEL_36;
        }

        v25 = *(a2 + 5);
        while (*a3 != *(v7 + 16))
        {
          v7 += 32;
          if (!--v25)
          {
            goto LABEL_36;
          }
        }

        break;
      case 3:
        v47 = a4;
        if (v8)
        {
          v14 = *(a3 + 1);
          v15 = *a3;
          do
          {
            v16 = *(v7 + 16);
            if (v16)
            {
              v17 = strnlen(*(v7 + 16), 0x400uLL);
              if (v15 == v17)
              {
                if (!v17)
                {
                  goto LABEL_94;
                }

                if (v15)
                {
                  v18 = MMSAlloc(a1, v15);
                  memcpy_s("posp_memcpy", 29, v18, v15, v16, v15);
                  for (i = 0; i != v15; ++i)
                  {
                    *(v18 + i) -= 48;
                  }

                  if (v14 && v18)
                  {
                    v20 = memcmp(v18, v14, v15);
                    MMSFree(a1, v18, v15);
                    if (!v20)
                    {
                      goto LABEL_94;
                    }
                  }

                  else
                  {
                    MMSFree(a1, v18, v15);
                  }
                }
              }
            }

            v7 += 32;
            --v8;
          }

          while (v8);
        }

        goto LABEL_35;
      default:
        goto LABEL_48;
    }

LABEL_63:
    v29 = *(a2 + 5);
    v8 = v25;
    goto LABEL_64;
  }

  if (v11 <= 0x1A)
  {
    if (((1 << v11) & 0x5CC0000) != 0)
    {
      v12 = *a3;
      v47 = a4;
      if (!*a3)
      {
        v13 = -2;
        if (v8)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      v13 = strnlen(v12, 0x400uLL) - 1;
      if (!v8)
      {
LABEL_35:
        v8 = *(a2 + 5);
        a4 = v47;
LABEL_36:
        *a4 = v8;
LABEL_37:
        v7 = 0;
        goto LABEL_38;
      }

LABEL_30:
      while (1)
      {
        v21 = *(v7 + 16);
        if (v21)
        {
          v22 = strnlen(*(v7 + 16), 0x400uLL);
          if (v13 == v22 && (!v22 || !memcmp(v21, v12 + 1, v22)))
          {
            break;
          }
        }

        v7 += 32;
        if (!--v8)
        {
          goto LABEL_35;
        }
      }

LABEL_94:
      a4 = v47;
LABEL_95:
      *a4 = *(a2 + 5) - v8;
      if (v8)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (v11 == 6)
    {
      if (!v8)
      {
        goto LABEL_36;
      }

      v47 = a4;
      while (1)
      {
        v30 = (*(v7 + 16))(a1);
        v31 = CUCFEqualObjectOBJECT_IDENTIFIER(v30, a3);
        CUCFFreeObject(a1, v9, v30);
        if (v31)
        {
          break;
        }

        v7 += 32;
        if (!--v8)
        {
          goto LABEL_35;
        }
      }

      v29 = *(a2 + 5);
      a4 = v47;
LABEL_64:
      *a4 = v29 - v8;
      goto LABEL_38;
    }

    if (v11 == 10)
    {
      if (!v8)
      {
        goto LABEL_36;
      }

      v25 = *(a2 + 5);
      while (*(v7 + 16) != *a3)
      {
        v7 += 32;
        if (!--v25)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_63;
    }
  }

  if (v11 == 4)
  {
    v47 = a4;
    if (!v8)
    {
      goto LABEL_35;
    }

    __s2 = *(a3 + 1);
    v32 = *a3;
    while (1)
    {
      v33 = *(v7 + 16);
      if (!v33)
      {
        if (!v32)
        {
          goto LABEL_94;
        }

        goto LABEL_92;
      }

      v34 = strnlen(*(v7 + 16), 0x400uLL) + 1;
      if (v32 == v34 >> 1)
      {
        if (v34 < 2)
        {
          goto LABEL_94;
        }

        if (v32)
        {
          v35 = MMSAlloc(a1, v32);
          v36 = v35;
          v37 = 0;
          v38 = v35;
          do
          {
            v39 = *(v33 + v37);
            if (v39 >= 0x41)
            {
              v40 = 9;
            }

            else
            {
              v40 = 0;
            }

            v41 = v40 + v39;
            *v38 = 16 * v41;
            v42 = *(v33 + v37 + 1);
            if (v42 >= 0x41)
            {
              v43 = -55;
            }

            else
            {
              v43 = -48;
            }

            *v38++ = (v43 + v42) | (16 * v41);
            v37 += 2;
          }

          while (v37 < 2 * v32);
          if (__s2 && v35)
          {
            v45 = v35;
            v44 = memcmp(v35, __s2, v32);
            MMSFree(a1, v45, v32);
            if (!v44)
            {
              goto LABEL_94;
            }

            goto LABEL_92;
          }
        }

        else
        {
          v36 = 0;
        }

        MMSFree(a1, v36, v32);
      }

LABEL_92:
      v7 += 32;
      if (!--v8)
      {
        goto LABEL_35;
      }
    }
  }

  if (v11 == 5)
  {
    goto LABEL_95;
  }

LABEL_48:
  if (!v8)
  {
    goto LABEL_36;
  }

  v47 = a4;
  while (1)
  {
    v26 = (*(v7 + 16))(a1);
    v27 = CUCFEqualObject(a1, v9, v26, a3);
    CUCFFreeObject(a1, v9, v26);
    if (v27)
    {
      break;
    }

    v7 += 32;
    if (!--v8)
    {
      goto LABEL_35;
    }
  }

  *v47 = *(a2 + 5) - v8;
LABEL_38:
  v23 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t CUCFEqualObjectOBJECT_IDENTIFIER(void *a1, uint64_t ***a2)
{
  v2 = a1[1];
  v3 = *(a2 + 4);
  if (v2 == v3)
  {
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = v7;
        v9 = *a2;
        if (*a2)
        {
          while (--v8)
          {
            v9 = *v9;
            if (!v9)
            {
              goto LABEL_9;
            }
          }

          v6 = *(v9 + 2);
        }

LABEL_9:
        if (*(*a1 + 8 * v5) != v6)
        {
          break;
        }

        ++v5;
        ++v7;
        v4 = v5 >= v2;
      }

      while (v5 != v2);
      result = v4;
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x29EDCA608];
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void CUCFFreeObject(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a1;
  v18 = *MEMORY[0x29EDCA608];
  while (1)
  {
    v5 = *a2;
    if (v5 <= 0x70)
    {
      if (*a2 > 0x59u)
      {
        if (v5 == 96)
        {
          goto LABEL_8;
        }

        if (v5 != 90)
        {
          if (v5 == 112)
          {
            goto LABEL_27;
          }

LABEL_38:
          v13 = *MEMORY[0x29EDCA608];

          CUCFErrorHandler(a1, 16);
          return;
        }

        goto LABEL_30;
      }

      if (*a2 <= 0x30u)
      {
        switch(*a2)
        {
          case 1:
            v17 = *MEMORY[0x29EDCA608];
            v10 = a3;
            v11 = 1;
            goto LABEL_33;
          case 2:
            goto LABEL_36;
          case 3:
          case 4:
          case 0x12:
          case 0x13:
          case 0x16:
          case 0x17:
          case 0x18:
          case 0x1A:
            goto LABEL_30;
          case 5:
            v16 = *MEMORY[0x29EDCA608];
            break;
          case 6:
            MMSFree(a1, *a3, (8 * *(a3 + 8)));
            goto LABEL_45;
          case 7:
          case 8:
          case 9:
          case 0xB:
          case 0xC:
          case 0xD:
          case 0xE:
          case 0xF:
          case 0x14:
          case 0x15:
          case 0x19:
          case 0x1B:
          case 0x1C:
          case 0x1D:
          case 0x1E:
          case 0x1F:
            goto LABEL_38;
          case 0xA:
            v14 = *MEMORY[0x29EDCA608];
            v10 = a3;
            v11 = 8;
            goto LABEL_33;
          case 0x10:
          case 0x11:
            v6 = *MEMORY[0x29EDCA608];

            CUCFFreeObjectStruct(a1, a2, a3);
            break;
          case 0x20:
            goto LABEL_18;
          default:
            if (v5 != 48)
            {
              goto LABEL_38;
            }

            goto LABEL_27;
        }

        return;
      }

      if (*a2 > 0x43u)
      {
        if (v5 - 82 >= 2 && v5 != 68 && v5 != 86)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (*a2 <= 0x41u)
        {
          if (v5 == 49)
          {
            goto LABEL_27;
          }

          if (v5 != 64)
          {
            goto LABEL_38;
          }

LABEL_18:
          v7 = *a3;
          CUCFFreeObject(a1, *(a2[4] + 32 * *(a3 + 8)));
LABEL_45:
          v15 = *MEMORY[0x29EDCA608];
          a1 = v4;
          v10 = a3;
          v11 = 16;
LABEL_33:

          MMSFree(a1, v10, v11);
          return;
        }

        if (v5 == 66)
        {
LABEL_36:
          v12 = *MEMORY[0x29EDCA608];
          v10 = a3;
          v11 = 4;
          goto LABEL_33;
        }
      }

LABEL_30:
      if (!*(a3 + 16))
      {
        MMSFree(a1, *a3, *(a3 + 8));
      }

      v9 = *MEMORY[0x29EDCA608];
      a1 = v4;
      v10 = a3;
      v11 = 24;
      goto LABEL_33;
    }

    if (v5 != 128 && v5 != 160)
    {
      break;
    }

LABEL_8:
    a2 = a2[3];
  }

  if (v5 != 113)
  {
    goto LABEL_38;
  }

LABEL_27:
  v8 = *MEMORY[0x29EDCA608];

  CUCFFreeObjectSEQUENCE_OF(a1, a2, a3);
}

uint64_t CUCFEqualObject(uint64_t a1, unsigned __int8 *a2, uint64_t **a3, uint64_t ***a4)
{
  v7 = a1;
  v59[1] = *MEMORY[0x29EDCA608];
  v8 = *a2;
  if (v8 <= 0x2F)
  {
    switch(*a2)
    {
      case 1u:
        v23 = *a4;
        v24 = *a3;
        goto LABEL_85;
      case 2u:
        goto LABEL_56;
      case 3u:
      case 4u:
        goto LABEL_36;
      case 5u:
        goto LABEL_113;
      case 6u:
        result = CUCFEqualObjectOBJECT_IDENTIFIER(a3, a4);
        if (result)
        {
          goto LABEL_113;
        }

        goto LABEL_136;
      case 0xAu:
        if (*a3 != *a4)
        {
          goto LABEL_135;
        }

        goto LABEL_113;
      case 0x10u:
      case 0x11u:
        v59[0] = *a3;
        if (*(a2 + 7) && !CUCFEqualObjectStructComps(a1, a2, 1, v59, a4) || *(a2 + 8) && !CUCFEqualObjectStructComps(v7, a2, 2, v59, a4) || *(a2 + 9) && !CUCFEqualObjectStructComps(v7, a2, 3, v59, a4))
        {
          goto LABEL_135;
        }

        goto LABEL_113;
      case 0x12u:
      case 0x13u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x1Au:
        goto LABEL_3;
      case 0x20u:
        v40 = *(a2 + 1);
        v41 = *(v40 + 40);
        if (v41 > 3)
        {
          goto LABEL_114;
        }

        if (v41 == 1)
        {
          v42 = *a4;
        }

        else if (v41 == 2)
        {
          v42 = *a4;
        }

        else
        {
LABEL_114:
          v42 = *a4;
        }

        v51 = *(a2 + 5);
        if (!v51)
        {
          goto LABEL_135;
        }

        v52 = v42;
        v53 = (*(a2 + 4) + 24);
        break;
      default:
        goto LABEL_95;
    }

    while (*(v53 - 8) == 5 || *v53 != v52)
    {
      result = 0;
      v53 += 4;
      if (!--v51)
      {
        goto LABEL_136;
      }
    }

    if (a3[1] == v52)
    {
      v54 = *(v40 + 36);
      v21 = *(v53 - 3);
LABEL_134:
      v57 = *a3;
      a1 = v7;
LABEL_47:
      result = CUCFEqualObject(a1, v21);
      if (!result)
      {
        goto LABEL_136;
      }

      goto LABEL_113;
    }

    goto LABEL_135;
  }

  if (*a2 > 0x52u)
  {
    if (*a2 <= 0x6Fu)
    {
      if (*a2 <= 0x59u)
      {
        if (v8 != 83 && v8 != 86)
        {
          goto LABEL_95;
        }

        goto LABEL_3;
      }

      if (v8 != 90)
      {
        if (v8 != 96)
        {
          goto LABEL_95;
        }

LABEL_46:
        v21 = *(a2 + 3);
        goto LABEL_47;
      }

LABEL_3:
      v9 = *a3;
      v10 = a3[1];
      v11 = *a4;
      if (*a4)
      {
        v12 = strnlen(*a4, 0x400uLL) - 1;
        if (!v9)
        {
          goto LABEL_135;
        }
      }

      else
      {
        v12 = -2;
        if (!v9)
        {
          goto LABEL_135;
        }
      }

      if (memcmp(v9, v11 + 1, v12) || v10 != v12)
      {
        goto LABEL_135;
      }

      goto LABEL_113;
    }

    if (*a2 > 0x7Fu)
    {
      if (v8 != 128 && v8 != 160)
      {
        goto LABEL_95;
      }

      goto LABEL_46;
    }

    if (v8 != 112)
    {
      if (v8 != 113)
      {
        goto LABEL_95;
      }

LABEL_57:
      v25 = *(a4 + 4);
      if (a3[1] != v25)
      {
        goto LABEL_135;
      }

      v26 = MMSAlloc(a1, *(a4 + 4));
      memset_s(v26, v25, 0, v25);
      if (v25)
      {
        v27 = 0;
        for (i = 0; i != v25; ++i)
        {
          v29 = *a4;
          if (*a4)
          {
            v30 = 0;
            while (1)
            {
              v31 = v29[1];
              if (v31 >= 1)
              {
                break;
              }

LABEL_67:
              v29 = *v29;
              if (!v29)
              {
                goto LABEL_70;
              }
            }

            v32 = v31 + v30;
            v33 = v27 + v30;
            while (v33)
            {
              ++v33;
              if (!--v31)
              {
                v30 = v32;
                goto LABEL_67;
              }
            }

            v34 = v29 + *(*(a2 + 1) + 36);
          }

LABEL_70:
          v35 = 0;
          while (1)
          {
            if (!*(v26 + v35))
            {
              v36 = (*a3)[v35];
              if (CUCFEqualObject(v7, *(a2 + 3)))
              {
                break;
              }
            }

            if (v25 == ++v35)
            {
              goto LABEL_76;
            }
          }

          *(v26 + v35) = 1;
LABEL_76:
          --v27;
        }

        v37 = 0;
        while (*(v26 + v37))
        {
          if (v25 == ++v37)
          {
            goto LABEL_80;
          }
        }

        MMSFree(v7, v26, v25);
        goto LABEL_135;
      }

LABEL_80:
      MMSFree(v7, v26, v25);
      goto LABEL_113;
    }

    goto LABEL_81;
  }

  if (*a2 > 0x41u)
  {
    if (*a2 <= 0x43u)
    {
      if (v8 == 66)
      {
LABEL_56:
        v22 = *(*(a2 + 1) + 8);
        v23 = *a4;
        v24 = *a3;
LABEL_85:
        if (v24 != v23)
        {
          goto LABEL_135;
        }

        goto LABEL_113;
      }

LABEL_36:
      v18 = a3[1];
      if (v18 != *a4)
      {
        goto LABEL_135;
      }

      result = 0;
      v20 = a4[1];
      if (v20 && *a3)
      {
        if (memcmp(*a3, v20, v18))
        {
          goto LABEL_135;
        }

        goto LABEL_113;
      }

      goto LABEL_136;
    }

    if (v8 == 68)
    {
      goto LABEL_36;
    }

    if (v8 == 82)
    {
      goto LABEL_3;
    }

LABEL_95:
    CUCFErrorHandler(a1, 16);
    goto LABEL_113;
  }

  if (v8 != 48)
  {
    if (v8 == 49)
    {
      goto LABEL_57;
    }

    if (v8 != 64)
    {
      goto LABEL_95;
    }

    v14 = *(a2 + 1);
    v15 = *(a2 + 5);
    v16 = *(v14 + 40);
    if (v16 > 3)
    {
      goto LABEL_115;
    }

    if (v16 == 1)
    {
      v17 = *a4;
      goto LABEL_127;
    }

    if (v16 == 2)
    {
      v17 = *a4;
    }

    else
    {
LABEL_115:
      v17 = *a4;
    }

LABEL_127:
    if (v15)
    {
      v55 = *(a2 + 4);
      while (v55[3] != v17)
      {
        result = 0;
        v55 += 4;
        if (!--v15)
        {
          goto LABEL_136;
        }
      }

      if (a3[1] == v17)
      {
        v56 = *(v14 + 36);
        v21 = *v55;
        goto LABEL_134;
      }
    }

LABEL_135:
    result = 0;
    goto LABEL_136;
  }

LABEL_81:
  v38 = **(a2 + 1);
  if (v38 == 181)
  {
    v39 = *(a4 + 4);
  }

  else
  {
    if (v38 != 182)
    {
      CUCFErrorHandler(a1, 15);
      if (a3[1])
      {
        goto LABEL_135;
      }

      goto LABEL_113;
    }

    v39 = *a4;
  }

  if (a3[1] != v39)
  {
    goto LABEL_135;
  }

  if (!v39)
  {
LABEL_113:
    result = 1;
    goto LABEL_136;
  }

  v43 = 0;
  v44 = 1;
  while (1)
  {
    v45 = *(a2 + 1);
    if (*v45 == 182)
    {
      v48 = a4 + *(v45 + 36) + v43 * *(*(v45 + 24) + 8);
    }

    else if (*v45 == 181)
    {
      v46 = *a4;
      v47 = v44;
      if (*a4)
      {
        while (--v47)
        {
          v46 = *v46;
          if (!v46)
          {
            goto LABEL_108;
          }
        }

        v50 = v46 + *(v45 + 36);
      }
    }

    else
    {
      CUCFErrorHandler(v7, 15);
    }

LABEL_108:
    v49 = (*a3)[v43];
    result = CUCFEqualObject(v7, *(a2 + 3));
    if (!result)
    {
      break;
    }

    v43 = (v43 + 1);
    ++v44;
    if (v43 == v39)
    {
      goto LABEL_113;
    }
  }

LABEL_136:
  v58 = *MEMORY[0x29EDCA608];
  return result;
}

void SDLFinalizeValue(uint64_t a1, unsigned __int8 *a2, int *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  while (1)
  {
    while (1)
    {
      v6 = *a2;
      if (v6 <= 0x70)
      {
        break;
      }

      if (v6 != 128 && v6 != 160)
      {
        if (v6 == 113)
        {
          goto LABEL_49;
        }

        goto LABEL_72;
      }

LABEL_8:
      a2 = *(a2 + 3);
    }

    if (*a2 <= 0x3Fu)
    {
      break;
    }

    if (v6 == 96)
    {
      goto LABEL_8;
    }

    if (v6 != 64)
    {
      if (v6 != 112)
      {
        goto LABEL_72;
      }

LABEL_53:
      v23 = **(a2 + 1);
      if (v23 == 181)
      {
        v24 = a3[4];
        if (!a3[4])
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (v23 != 182)
        {
          CUCFErrorHandler(a1, 15);
          goto LABEL_72;
        }

        v24 = *a3;
        if (!*a3)
        {
          goto LABEL_72;
        }
      }

      v25 = 0;
      v26 = 1;
      while (2)
      {
        v27 = *(a2 + 1);
        if (*v27 == 182)
        {
          v30 = a3 + *(v27 + 36) + v25 * *(*(v27 + 24) + 8);
          goto LABEL_68;
        }

        if (*v27 == 181)
        {
          v28 = *a3;
          v29 = v26;
          if (*a3)
          {
            while (--v29)
            {
              v28 = *v28;
              if (!v28)
              {
                goto LABEL_67;
              }
            }

            v30 = v28 + *(v27 + 36);
LABEL_68:
            SDLFinalizeValue(a1, *(a2 + 3), v30);
            ++v25;
            ++v26;
            if (v25 == v24)
            {
              goto LABEL_72;
            }

            continue;
          }
        }

        else
        {
          CUCFErrorHandler(a1, 15);
        }

        break;
      }

LABEL_67:
      v30 = 0;
      goto LABEL_68;
    }

    v7 = *(a2 + 1);
    v10 = *(v7 + 40);
    if (v10 > 3)
    {
      goto LABEL_22;
    }

    if (v10 == 1)
    {
      v11 = *a3;
      goto LABEL_31;
    }

    if (v10 == 2)
    {
      v11 = *a3;
    }

    else
    {
LABEL_22:
      v11 = *a3;
    }

LABEL_31:
    v14 = *(a2 + 5);
    if (!v14)
    {
      goto LABEL_72;
    }

    v13 = *(a2 + 4);
    while (v13[3] != v11)
    {
      v13 += 4;
      if (!--v14)
      {
        goto LABEL_72;
      }
    }

LABEL_36:
    a3 = (a3 + *(v7 + 36));
    a2 = *v13;
  }

  if (*a2 <= 0x2Fu)
  {
    if (v6 - 16 < 2)
    {
      v15 = *(a2 + 7);
      if (v15)
      {
        SDLFinalizeValueStructComps(a1, a2, *(a2 + 3), v15, a3, 1);
      }

      v16 = *(a2 + 8);
      if (v16)
      {
        SDLFinalizeValueStructComps(a1, a2, *(a2 + 4), v16, a3, 0);
      }

      v17 = *(a2 + 9);
      if (!v17)
      {
        goto LABEL_72;
      }

      v18 = *(a2 + 5);
      v19 = *MEMORY[0x29EDCA608];

      SDLFinalizeValueStructComps(a1, a2, v18, v17, a3, 1);
      return;
    }

    if (v6 != 32)
    {
      goto LABEL_72;
    }

    v7 = *(a2 + 1);
    v8 = *(v7 + 40);
    if (v8 > 3)
    {
      goto LABEL_21;
    }

    if (v8 == 1)
    {
      v9 = *a3;
      goto LABEL_24;
    }

    if (v8 == 2)
    {
      v9 = *a3;
    }

    else
    {
LABEL_21:
      v9 = *a3;
    }

LABEL_24:
    v12 = *(a2 + 5);
    if (!v12)
    {
      goto LABEL_72;
    }

    v13 = *(a2 + 4);
    while (*(v13 + 16) == 5 || v13[3] != v9)
    {
      v13 += 4;
      if (!--v12)
      {
        goto LABEL_72;
      }
    }

    goto LABEL_36;
  }

  if (v6 == 48)
  {
    goto LABEL_53;
  }

  if (v6 == 49)
  {
LABEL_49:
    v20 = *a3;
    v21 = *(a2 + 1);
    memset_s(a3, 0x18uLL, 0, 0x18uLL);
    *(a3 + 20) = 8;
    if (v20)
    {
      do
      {
        SDLFinalizeValue(a1, *(a2 + 3), v20 + 2);
        GenBag_Incl2(v20 + 2, a3, v21);
        GenericFreeSort(v20 + 16, *(v21 + 24));
        v22 = *v20;
        free(v20);
        v20 = v22;
      }

      while (v22);
    }
  }

LABEL_72:
  v31 = *MEMORY[0x29EDCA608];
}

uint64_t SDLFinalizeValueStructComps(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = result;
  v16 = *MEMORY[0x29EDCA608];
  v11 = (a3 + 24);
  do
  {
    v12 = *(v11 - 8);
    if (v12 < 2)
    {
      if (a6)
      {
        v14 = *(*(a2 + 8) + 24) + 24 * *v11;
      }

      else
      {
LABEL_11:
        if (!a5)
        {
          goto LABEL_14;
        }

LABEL_12:
        v14 = *(*(a2 + 8) + 24) + 24 * *v11;
        if (*(a5 + **(v14 + 16)) != 1)
        {
          goto LABEL_14;
        }
      }

      result = SDLFinalizeValue(v10, *(v11 - 3), a5 + *(v14 + 8));
      goto LABEL_14;
    }

    if (v12 == 2)
    {
      goto LABEL_11;
    }

    if (v12 == 3 && a5 != 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v11 += 4;
    --a4;
  }

  while (a4);
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void CUCFFreeObjectStruct(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = a2[3];
  v7 = *a3;
  v8 = a2[7];
  if (v8)
  {
    for (i = 0; i < v8; ++i)
    {
      if (*v7)
      {
        CUCFFreeObject(a1, *v6);
        v8 = a2[7];
      }

      v6 += 4;
      ++v7;
    }
  }

  v10 = a2[8];
  if (v10)
  {
    v11 = 0;
    v12 = (a2[4] + 16);
    do
    {
      if (*v7)
      {
        CUCFFreeObject(a1, *(v12 - 2));
        v10 = a2[8];
      }

      v13 = *v12;
      v12 += 32;
      v7 += v13 != 4;
      ++v11;
    }

    while (v11 < v10);
  }

  else if (!v6)
  {
    goto LABEL_18;
  }

  v14 = a2[9];
  if (v14)
  {
    v15 = 0;
    v16 = a2[5];
    do
    {
      if (v7[v15])
      {
        CUCFFreeObject(a1, *v16);
        v14 = a2[9];
      }

      v16 += 4;
      ++v15;
    }

    while (v15 < v14);
  }

LABEL_18:
  MMSFree(a1, *a3, (8 * *(a3 + 8)));
  v17 = *MEMORY[0x29EDCA608];

  MMSFree(a1, a3, 0x10);
}

void CUCFFreeObjectSEQUENCE_OF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a3 + 8))
  {
    v6 = 0;
    do
    {
      v7 = *(*a3 + 8 * v6);
      CUCFFreeObject(a1, *(a2 + 24));
      ++v6;
      v8 = *(a3 + 8);
    }

    while (v6 < v8);
    v9 = (8 * v8);
  }

  else
  {
    v9 = 0;
  }

  MMSFree(a1, *a3, v9);
  v10 = *MEMORY[0x29EDCA608];

  MMSFree(a1, a3, 0x10);
}

uint64_t CUCFEqualObjectStructComps(uint64_t a1, uint64_t a2, int a3, uint64_t **a4, uint64_t a5)
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = 56;
  v6 = 24;
  v7 = 72;
  v8 = 40;
  if (a3 == 2)
  {
    v8 = 32;
    v7 = 64;
  }

  if (a3 != 1)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = *(a2 + v5);
  if (!v9)
  {
    result = 1;
    goto LABEL_24;
  }

  v15 = 0;
  v16 = (*(a2 + v6) + 24);
  v17 = 1;
  v18 = *(a2 + v5);
  do
  {
    v19 = *(v16 - 8);
    if (v19 < 2)
    {
      if (a3 != 2)
      {
        v24 = *(*(*(a2 + 8) + 24) + 24 * *v16 + 8);
        v23 = *(v16 - 3);
        v25 = **a4;
        goto LABEL_20;
      }
    }

    else if (v19 != 2)
    {
      if (v19 != 3)
      {
        goto LABEL_21;
      }

      if (!a5)
      {
LABEL_11:
        v20 = *a4;
LABEL_17:
        if (*v20)
        {
          break;
        }

        goto LABEL_21;
      }

      goto LABEL_14;
    }

    if (!a5)
    {
      goto LABEL_11;
    }

LABEL_14:
    v21 = *(*(a2 + 8) + 24) + 24 * *v16;
    v20 = *a4;
    if (*(a5 + **(v21 + 16)) != 1)
    {
      goto LABEL_17;
    }

    if (!*v20)
    {
      break;
    }

    v22 = *(v21 + 8);
    v23 = *(v16 - 3);
LABEL_20:
    if (!CUCFEqualObject(a1, v23))
    {
      break;
    }

LABEL_21:
    ++*a4;
    v15 = v17 >= v9;
    v16 += 4;
    ++v17;
    --v18;
  }

  while (v18);
  result = v15;
LABEL_24:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BDS_EphReal2Kep(uint64_t result, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  *a2 = *result;
  v2 = *(result + 40);
  *(a2 + 160) = *(result + 24);
  *(a2 + 168) = v2;
  v3 = *(result + 48);
  *(a2 + 176) = v3;
  v4 = *(result + 32);
  *(a2 + 192) = *(result + 64);
  *(a2 + 200) = v4;
  *(a2 + 208) = *(result + 80);
  *(a2 + 32) = *(result + 144);
  v5 = *(result + 168) * 0.000000001;
  *(a2 + 48) = *(result + 160);
  *(a2 + 56) = v5;
  *(a2 + 64) = *(result + 176) * 0.000000001;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = *(result + 88);
  *(a2 + 120) = *(result + 96);
  *(a2 + 136) = *(result + 128);
  *(a2 + 104) = *(result + 112);
  *(a2 + 152) = *(result + 72);
  v7 = *(result + 16);
  v6 = *(result + 20);
  v8 = v6 + 14;
  *(a2 + 20) = v6 + 14;
  *(a2 + 24) = v7 + 14;
  v9 = *(result + 8);
  *(a2 + 18) = v9 + 1356;
  if (v7 + 14 <= 604799)
  {
    if (v8 <= 604800)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(a2 + 24) = v7 - 604786;
    if (v8 <= 604799)
    {
      goto LABEL_6;
    }
  }

  *(a2 + 20) = v6 - 604786;
LABEL_6:
  *(a2 + 18) = v9 + 1357;
LABEL_7:
  *(a2 + 176) = *&v3 + 0.0010208961;
  *(a2 + 16) = v6 / 0xE10 + 1;
  *(a2 + 14) = 0;
  v10 = *(result + 11);
  if (v10 == 15)
  {
    LOBYTE(v10) = 14;
  }

  *(a2 + 15) = v10;
  *(a2 + 8) = 4;
  *(a2 + 12) = *(result + 10);
  *(a2 + 13) = *(result + 12);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

double *rnk1_core(double *result, unsigned int a2, double a3, double *a4, int *a5)
{
  v27 = *MEMORY[0x29EDCA608];
  *a5 = 0;
  if (a2 < 2)
  {
LABEL_15:
    *result = *result + a3 * *a4 * *a4;
    goto LABEL_16;
  }

  v5 = result - 1;
  v6 = (a2 + a2 * a2) >> 1;
  v7 = a2;
  v8 = v6 - a2 + 1;
  v9 = 1 - a2;
  v10 = a2 - 1;
  while (1)
  {
    v11 = a4[v7 - 1];
    v12 = v5[v6];
    v13 = v12 + a3 * v11 * v11;
    if (v13 <= 6.0e-38)
    {
      break;
    }

    v14 = a3 * v11 / v13;
    v15 = v12 / v13;
    v5[v6] = v13;
    v16 = -v11;
    v17 = v8;
    v18 = a4;
    v19 = v10;
    v20 = v8;
    v21 = a4;
    v22 = v10;
    if (v12 / v13 >= 0.0625)
    {
      do
      {
        v25 = *v18 + v16 * v5[v17];
        *v18++ = v25;
        v5[v17] = v5[v17] + v14 * v25;
        ++v17;
        --v19;
      }

      while (v19);
    }

    else
    {
      do
      {
        v23 = v5[v20];
        v24 = *v21 + v16 * v23;
        v5[v20] = v14 * *v21 + v23 * v15;
        *v21++ = v24;
        ++v20;
        --v22;
      }

      while (v22);
    }

    a3 = a3 * v15;
    v6 -= v7--;
    v8 += v9++;
    --v10;
    if ((v7 & 0xFFFFFFFE) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v13 >= 0.0)
  {
    *a5 = -1;
    v7 = v7;
    if (v7 <= 1uLL)
    {
      v7 = 1;
    }

    do
    {
      v5[v8++] = 0.0;
      --v7;
    }

    while (v7);
    goto LABEL_15;
  }

  *a5 = v7;
LABEL_16:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NK_PrePro_SV_Meas(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, int *a11)
{
  v192[3] = *MEMORY[0x29EDCA608];
  v169 = a11 + 3490;
  v171 = a11 + 2096;
  memset(v191, 0, sizeof(v191));
  v174 = a10[233];
  v164 = (v174 & 1) == 0 && a10[8273] == 1 && a10[8272] == 1 && !*(a10 + 118) && *(a11 + 16) == 1 && a11[2] < *(a10 + 4) && *a1 < 6;
  v16 = 0;
  v17 = (a3 + 76);
  v18 = a3 + 316;
  do
  {
    if (*(v18 + 4 * v16 - 240))
    {
      v19 = *(v18 + 2 * v16);
      if (v19 >= 0x1000)
      {
        v20 = 1 << ((v19 >> 12) - 1);
        if (v20 >= 0x800)
        {
          v20 = 2048;
        }

        if ((v19 & 0x300) != 0)
        {
          v21 = v20 >> 2;
        }

        else
        {
          v21 = 0;
        }

        *(a11 + v16 + 252) = v21 + v20;
      }
    }

    ++v16;
  }

  while (v16 != 48);
  v177 = a10 + 7172;
  v181 = a11 + 5748;
  if (*(a11 + 22992) != 1)
  {
LABEL_26:
    v175 = 0;
    goto LABEL_27;
  }

  if ((a11[5750] - 3) >= 2)
  {
    if (a11[5749] == 1)
    {
      v22 = *(a11 + 2877);
      v23 = *(a11 + 2878);
      v188 = v22;
      v189 = v23;
      v24 = 0;
      if (*(a11 + 23120) == 1)
      {
        v24 = *(a11 + 2893);
      }

      v190 = v24;
      Geo2ECEF(&v188, &WGS84_Datum, v192);
      v25 = __sincos_stret(v22);
      v26 = __sincos_stret(v23);
      v175 = 0;
      v13 = -v25.__sinval;
      v11 = -(v25.__cosval * v26.__cosval);
      v12 = -(v25.__cosval * v26.__sinval);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v175 = 1;
LABEL_27:
  v27 = 0;
  v176 = 0;
  v28 = a11 + 6345;
  v29 = a11 + 6369;
  v30 = a3 + 412;
  v172 = a3 + 604;
  v179 = (a4 + 26872);
  v31 = 0.0;
  v170 = a4;
  v178 = a7;
  v183 = a11 + 6369;
  do
  {
    *(v28 + v27) = -1;
    *(v29 + v27) = -1;
    v32 = &v17[v27];
    v33 = *v32;
    if (!Is_Legal(*v32))
    {
      goto LABEL_40;
    }

    if (v33 != 6)
    {
      *(v191 + v27) = 1;
      *(v28 + v27) = GNSS_Id_To_Num_Prn_Idx(v33);
      *(v183 + v27) = GNSS_Id_To_Num_Pos_Idx(*v32);
      goto LABEL_40;
    }

    *(v28 + v27) = GNSS_Id_To_Num_Prn_Idx(v33);
    v34 = v179;
    v35 = 139;
    while (1)
    {
      *(v183 + v27) = v35;
      if (*v34 == 1 && *(v34 - 4) == v32[2])
      {
        break;
      }

      ++v35;
      v34 += 48;
      if (v35 == 149)
      {
        if (!*(v191 + v27) || *(v30 + 4 * v27) > 9)
        {
          goto LABEL_40;
        }

LABEL_39:
        *(v191 + v27) = 0;
        goto LABEL_40;
      }
    }

    *(v191 + v27) = 1;
    if (*(v30 + 4 * v27) < 10)
    {
      goto LABEL_39;
    }

    if (v35 >= 0x95u)
    {
      gn_report_assertion_failure("NKPP: SVindexST");
    }

LABEL_40:
    v36 = *v32;
    if (Is_Legal(*v32))
    {
      v29 = a11 + 6369;
      if (*(v30 + 4 * v27) >= 10)
      {
        v37 = *(v183 + v27);
        if ((v37 & 0x80000000) == 0 && *(v191 + v27) == 1)
        {
          v38 = a4 + 192 * v37;
          if (*v181 == 1)
          {
            v39 = v175;
            if (a11[5749] != 1)
            {
              v39 = 1;
            }

            if ((v39 & 1) == 0 && v36 == 1)
            {
              v40 = *(v172 + v27);
              if (v40 >= 0x1A && *(a3 + 700 + v27) + 3 <= v40 && *(v38 + 184) >= 1)
              {
                for (i = 0; i != 3; ++i)
                {
                  *(&v188 + i * 8) = *(v38 + i * 8) - v192[i];
                }

                v42 = 0.0;
                v43 = 2;
                do
                {
                  v42 = v42 + *(&v188 + v43) * *(&v188 + v43);
                  v44 = v43-- + 1;
                }

                while (v44 > 1);
                v45 = 0;
                v46 = 1.0 / sqrt(v42);
                do
                {
                  *(&v185 + v45) = v46 * *(&v188 + v45);
                  v45 += 8;
                }

                while (v45 != 24);
                if (v31 > -(v12 * v186 + v185 * v11 + v187 * v13))
                {
                  v31 = -(v12 * v186 + v185 * v11 + v187 * v13);
                }
              }
            }
          }

          v47 = *(v28 + v27);
          ++*(a11 + 25148);
          ++*(a11 + *v32 + 25151);
          v49 = *(v38 + 184);
          v48 = (v38 + 184);
          if (v49 == 1)
          {
            ++*(a11 + 25150);
            ++*(a11 + *v32 + 25158);
          }

          v50 = *(a7 + v47);
          if (v50 != -99)
          {
            v51 = &a10[40 * v27 + 2088];
            if (*v51 != v50)
            {
              *v51 = v50;
              v52 = v50 * 0.0174532925;
              *(v51 + 24) = v52;
              *(v51 + 32) = v50;
              v53 = __sincos_stret(v52);
              v29 = a11 + 6369;
              *(v51 + 8) = v53;
            }
          }

          if (*v48)
          {
            v54 = v50 == -99;
          }

          else
          {
            v54 = 1;
          }

          v55 = !v54 && v50 < -5;
          v56 = v55;
          v57 = v176;
          if (v55)
          {
            v57 = v176 + 1;
          }

          v176 = v57;
          v174 |= v56;
          if (a10[3] + 4 <= *(v172 + v27))
          {
            ++*(a11 + 25149);
          }

          a4 = v170;
          a7 = v178;
        }
      }
    }

    else
    {
      v29 = a11 + 6369;
    }

    ++v27;
  }

  while (v27 != 48);
  if (*v181 == 1)
  {
    v58 = v175;
    if (a11[5749] != 1)
    {
      v58 = 1;
    }

    if ((v58 & 1) == 0 && v31 < -0.258819045)
    {
      *(p_NA + 10) = 0;
      *v181 = 0;
      a11[6256] = 25;
      *(a11 + 23120) = 0;
      a11[6260] = 25;
      EvLog_v("NK_PrePro_SV: Tracked SV Elev too negative, Clearing Not Trusted Ext Ref Pos");
      v59 = *(p_api + 48);
      if (*(v59 + 5) != 1)
      {
        v65 = 0;
        v61 = 0;
        v62 = 1;
        v66 = a10;
        v60 = a9;
        goto LABEL_98;
      }

      v60 = a9;
      if (*v59 < 3)
      {
        v65 = 0;
        v61 = 0;
      }

      else
      {
        v61 = *(v59 + 24) + 604800 * *(v59 + 16);
        if (v61)
        {
          v62 = 0;
          v63 = v61 + 10800;
          v64 = v63 / 86400;
          v61 = v63 % 86400;
          v65 = v64 - 1461 * (((22967 * (v64 - 5839)) >> 25) + ((22967 * (v64 - 5839)) >> 31)) - 5838;
LABEL_97:
          v66 = a10;
LABEL_98:
          v67 = 0;
          v188 = 0.0;
          v189 = 0.0;
          v190 = 0;
          v68 = v60 + 16432;
          v69 = (v60 + 11280);
          do
          {
            if ((v62 & 1) != 0 || *(*(v60 + 16272) + v67) != 1)
            {
              v73 = *(v60 + 16336 + 4 * v67);
              if (v73 != 2139062143)
              {
                v74 = v73 + 7;
                v75 = *(v68 + 4 * v74);
                if (v75 != 2139062143 && (*(&v188 + v75 - 1) & 1) == 0)
                {
                  *(v68 + 4 * v74) = 2139062143;
                  *(v60 + 16488 + 4 * v74) = 0;
                }
              }
            }

            else
            {
              HIDWORD(v70) = *(v69 - 1);
              LODWORD(v70) = *v69;
              v71 = (v70 >> 26) & 0x7FF;
              if ((v71 - v65) > 730)
              {
                v65 += 1461;
              }

              v72 = v61 - 900 * (*(v69 - 15) & 0x7F) + 86400 * (v65 - v71);
              if (v72 < 0)
              {
                v72 = -v72;
              }

              if (v72 <= 0x707)
              {
                *(&v188 + v67) = 1;
              }
            }

            ++v67;
            v69 += 16;
          }

          while (v67 != 24);
          if ((v66[128] & 1) == 0)
          {
            a10[128] = 1;
            *(a10 + 33) = 92;
            *(a11 + 960) = 0;
            a10[233] = 1;
            *(a7 + 535) = 1;
          }

          goto LABEL_114;
        }

        v65 = 0;
      }

      v62 = 1;
      goto LABEL_97;
    }
  }

LABEL_114:
  if (v176 && *(a11 + 960) == 1)
  {
    if (*v181 == 1 && a11[5749] == 1)
    {
      v76 = a11;
      v77 = Horiz_Diff_Sqd(a11 + 100, a11 + 2877);
      v78 = a10;
      if (v77 <= 2500000000.0)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v78 = a10;
      v76 = a11;
      if (v176 == 1)
      {
LABEL_119:
        v79 = 0;
        v80 = 0;
        v81 = v78 + 6696;
        do
        {
          v82 = *(a3 + v79 + 76);
          if (Is_Legal(v82))
          {
            v83 = GNSS_Id_To_Num_Prn_Idx(v82);
            v84 = *(a7 + v83);
            v85 = a3 + 4 * v80;
            if (*(v85 + 412) >= 10 && v84 <= -6 && v84 != -99)
            {
              v81[v80] = 0;
              if ((v175 & 1) != 0 || *(v172 + v80) <= 0x18u)
              {
                *(a8 + v80 + 365) |= 1u;
                *(a8 + 416 + 4 * v80) = *a11;
                EvCrt_v("ChanReset %d : NKPrePro1  SV %2d %d %2d  QI %2d  Elev%2d", v80, *(a3 + v79 + 78), *(a3 + v79 + 76), v83, *(v85 + 412), v84);
              }
            }
          }

          ++v80;
          v79 += 4;
        }

        while (v80 != 48);
        goto LABEL_134;
      }
    }

    v78[128] = 1;
    *(v78 + 33) = 97;
    *(v76 + 960) = 0;
    v78[233] = 1;
    *(a7 + 535) = 1;
  }

LABEL_134:
  v87 = 0;
  v88 = a10 + 7360;
  v89 = a11 + 716;
  v90 = (a3 + 1036);
  v182 = a11 + 3504;
  v91 = 25380;
  v92 = 844;
  v180 = a11 + 2110;
  do
  {
    v93 = a3 + 4 * v87;
    v94 = *(v93 + 76);
    if (Is_Legal(v94) && (v95 = GNSS_Id_To_Num_Prn_Idx(v94), (*(a6 + 253 + v95) & 1) == 0))
    {
      v96 = *(a2 + v95) ^ 1;
    }

    else
    {
      v96 = 1;
    }

    v97 = a11 + 2110;
    v98 = &v88[v87];
    if (*(v93 + 76) == *&v88[4 * v87])
    {
      *(a11 + v87 + 3248) = v98[2536];
      *(v180 + v87 + 384) = v98[2584];
      v99 = v98[2632];
      v100 = (a11 + 3600);
    }

    else
    {
      v99 = 0;
      v98[2536] = 0;
      v98[2584] = 0;
      v100 = a10 + 9992;
    }

    v100[v87] = v99;
    v101 = *(v93 + 412);
    if (v101 < 11 || (v102 = *(a3 + v87 + 604), v102 < a10[3]))
    {
      *(a11 + v87 + 2864) = 0;
LABEL_145:
      *(v180 + v87) = 0;
      goto LABEL_146;
    }

    v103 = (*(a3 + v92) < *(a10 + 5)) | v96;
    if ((v103 | v174))
    {
      *(a11 + v87 + 2864) = (v103 & 1) == 0;
      if (v103)
      {
        goto LABEL_145;
      }
    }

    else if (v102 > 0x23 || (v104 = *(v178 + *(a11 + v91)), v104 == -99))
    {
      *(a11 + v87 + 2864) = 1;
    }

    else
    {
      v107 = *a10;
      *(a11 + v87 + 2864) = v104 >= v107;
      if (v104 < v107)
      {
        goto LABEL_145;
      }
    }

    ++*(a11 + 2808);
    if (*(a11 + v87 + 1176) == 1)
    {
      ++*(a11 + 2809);
    }

    v105 = !v164;
    if (v101 < 0xF)
    {
      v105 = 1;
    }

    if (v105)
    {
      if (v101 >= 0xD)
      {
LABEL_171:
        if (*(a3 + v92 + 96) >= *(a10 + 6))
        {
          *(v180 + v87) = 1;
          ++*v171;
          if (*(a11 + v87 + 1224) == 1)
          {
            ++*(a11 + 8385);
          }
        }
      }

LABEL_146:
      *(v182 + v87) = 0;
      goto LABEL_147;
    }

    if (*(a3 + v87 + 604) < a10[4])
    {
      goto LABEL_171;
    }

    if (*(a3 + v92 + 192) < *(a10 + 7))
    {
      goto LABEL_171;
    }

    if (v88[v87 + 480] != 1)
    {
      goto LABEL_171;
    }

    if (v88[v87 + 3064] != 1)
    {
      goto LABEL_171;
    }

    if (*(v93 + 76) != *&v88[4 * v87])
    {
      goto LABEL_171;
    }

    v106 = v170 + 192 * *(a11 + v91 + 96);
    if (*(v106 + 166) != *&v88[2 * v87 + 384] || *(v106 + 184) != 1 || *(v182 + v87) != 1)
    {
      goto LABEL_171;
    }

    *(v182 + v87) = 1;
    ++*v169;
    if (*(a11 + v87 + 1224) == 1)
    {
      ++*(a11 + 13961);
    }

LABEL_147:
    ++v87;
    v91 += 2;
    v92 += 2;
  }

  while (v87 != 48);
  v108 = a11 + 3490;
  v109 = a10;
  v110 = a11 + 306;
  if (*a1 >= 2)
  {
    if (*(a11 + 2809) <= 3u && *(a11 + 2808) >= 4u)
    {
      *(a11 + 2809) = 0;
      *(a11 + 294) = 0u;
      *(a11 + 298) = 0u;
      *(a11 + 302) = 0u;
    }

    if (*(a11 + 13961) + *(a11 + 8385) <= 3 && *v169 + *v171 >= 4)
    {
      *(a11 + 8385) = 0;
      *(a11 + 13961) = 0;
      *(a11 + 306) = 0u;
      *(a11 + 310) = 0u;
      *(a11 + 314) = 0u;
    }
  }

  if (*(a10 + 118) && *v171)
  {
    --*(a10 + 118);
  }

  v111 = a10[2];
  if (a10[2])
  {
    if (*(a11 + 2809) >= v111)
    {
      if (g_Enable_Event_Log >= 2u)
      {
        EvLog_v("NK_PrePro_SV_Meas: Setting ranges without diff corrn unavailable");
        v97 = a11 + 2110;
      }

      v112 = (a3 + 78);
      v113 = 2864;
      v114 = a11;
      do
      {
        if ((v114[294] & 1) == 0)
        {
          *(v114 + 2864) = 0;
          if (g_Enable_Event_Log >= 4u)
          {
            EvLog_v("NK_PrePro_SV_Meas: Remove %d %d %d", v113 - 2864, *(v112 - 2), *v112);
            v97 = a11 + 2110;
          }
        }

        v114 = (v114 + 1);
        ++v113;
        v112 += 4;
      }

      while (v113 != 2912);
      v109 = a10;
      v111 = a10[2];
      v108 = a11 + 3490;
      v110 = a11 + 306;
    }

    if (*(v108 + 1) + *(a11 + 8385) >= v111)
    {
      for (j = 0; j != 48; ++j)
      {
        if ((*(v110 + j) & 1) == 0)
        {
          *(v97 + j) = 0;
          *(v182 + j) = 0;
        }
      }
    }
  }

  v116 = v109[1];
  if (v116 <= 0x2F)
  {
    if (g_Enable_Event_Log >= 2u)
    {
      EvLog_v("NK_PrePro_SV_Meas:  Decimating range avail %d %d", v109[1], 48);
      v116 = v109[1];
    }

    v117 = *(a11 + 2808);
    if (v117 > v116)
    {
      do
      {
        v118 = 0;
        v119 = 0;
        v120 = 91;
        do
        {
          if (*(v89 + v118) == 1)
          {
            v121 = *(v178 + *(v28 + v118));
            v122 = v120 <= v121;
            if (v120 >= v121)
            {
              v120 = *(v178 + *(v28 + v118));
            }

            if (!v122)
            {
              v119 = v118;
            }
          }

          ++v118;
        }

        while (v118 != 48);
        v123 = v119;
        if (g_Enable_Event_Log >= 2u)
        {
          EvLog_v("NK_PrePro_SV_Meas:  Low Elev %d %d %d", v119, *(a3 + 78 + 4 * v119), v120);
          v117 = *(a11 + 2808);
          LOBYTE(v116) = v109[1];
        }

        *(v89 + v123) = 0;
        *(a11 + 2808) = --v117;
      }

      while (v117 > v116);
    }
  }

  v124 = 0;
  v125 = a11 + 3504;
  do
  {
    v126 = v17[v124];
    if (Is_Legal(v126))
    {
      v127 = *(a5 + 3996 + GNSS_Id_To_Num_Prn_Idx(v126));
      if ((v127 & 0x8000000000000000) == 0)
      {
        v128 = a5 + 60 + 48 * v127;
        if (*(v128 + 4) == 1 && *(v125 + v124) == 1 && fabs(*&a11[2 * v124 + 30] / (*(a11 + 82) * 0.190293673) + *(v128 + 22)) > 15.0)
        {
          *(v125 + v124) = 0;
          *(v180 + v124) = 1;
        }
      }
    }

    ++v124;
  }

  while (v124 != 48);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  *(a11 + 1404) = 0;
  *v171 = 0;
  *v169 = 0;
  *(a11 + 977) = 0;
  while (2)
  {
    if (*(a11 + v136 + 2864) != 1)
    {
      *(v180 + v136) = 0;
      *(v182 + v136) = 0;
LABEL_240:
      v137 = v129;
      goto LABEL_241;
    }

    *(a11 + 2808) = ++v135;
    if (*(a11 + v136 + 1176) == 1)
    {
      *(a11 + 2809) = ++v134;
    }

    if (*(v180 + v136) == 1)
    {
      *v171 = ++v131;
      if (*(a11 + v136 + 1224) == 1)
      {
        *(a11 + 8385) = ++v130;
      }
    }

    else if (*(v182 + v136) == 1)
    {
      *v169 = ++v133;
      if (*(a11 + v136 + 1224) == 1)
      {
        *(a11 + 13961) = ++v132;
      }
    }

    v137 = *(a3 + v136 + 604);
    if (v137 <= v129)
    {
      goto LABEL_240;
    }

    *(a11 + 977) = v137;
    if (v137 >= *v177 && (*v90 > 0x64u || *(v90 - 48) >= 0x259u) && *(a3 + v136 + 700) + 6 <= *(a3 + v136 + 604))
    {
      *v177 = v137;
      *(a10 + 1792) = *a11;
    }

LABEL_241:
    ++v136;
    ++v90;
    v129 = v137;
    if (v136 != 48)
    {
      continue;
    }

    break;
  }

  v138 = *v177;
  if (v138 >= 0x13)
  {
    v139 = *a11;
    if (*a11 - *(a10 + 1792) >= 20001)
    {
      LOBYTE(v138) = v138 - 1;
      *v177 = v138;
      *(a10 + 1792) = v139;
    }
  }

  v140 = 0;
  v141 = (v138 - 10);
  if (v141 <= 0x22)
  {
    v141 = 34;
  }

  do
  {
    v142 = *(v172 + 4 * v140 - 192) >= 10 && *(v172 + v140) >= v141;
    *(a11 + v140++ + 1026) = v142;
  }

  while (v140 != 48);
  v143 = 0;
  v144 = v17;
  do
  {
    v145 = *v144;
    v55 = v145 > 5;
    v146 = (1 << v145) & 0x3A;
    if (!v55 && v146 != 0)
    {
      v148 = *(v178 + GNSS_Id_To_Num_Prn_Idx(*v144));
      v149 = *v177;
      if ((v148 - 48) >= 0xCAu)
      {
        v149 -= (50 - v148) / 3u;
        if (v149 <= 2)
        {
          LOBYTE(v149) = 2;
        }
      }

      *(a11 + v143 + 978) = v149 - 2;
    }

    ++v143;
    ++v144;
  }

  while (v143 != 48);
  v150 = 0;
  *(a11 + 25575) = 0;
  a11[6393] = 0;
  do
  {
    if (*(v89 + v150) == 1 && (*(v183 + v150) & 0x8000000000000000) == 0 && *(v170 + 192 * *(v183 + v150) + 184) == 1)
    {
      ++*(a11 + *v17 + 25572);
    }

    ++v150;
    ++v17;
  }

  while (v150 != 48);
  v151 = 0x4415AF1D78B58C40;
  if ((a10[233] & 1) == 0)
  {
    v153 = *a1;
    v152 = a1[1];
    if (*a1 == v152)
    {
      goto LABEL_269;
    }

    if (v153 <= 2)
    {
      if (!v153)
      {
        goto LABEL_270;
      }

      if (v153 == 1)
      {
        if (v152)
        {
          goto LABEL_270;
        }

        goto LABEL_269;
      }

      if (v153 != 2 || v152 <= 1)
      {
        goto LABEL_269;
      }
    }

    else if (v153 > 4)
    {
      if (v153 == 5)
      {
        if ((v152 & 0xFFFFFFFE) != 6)
        {
          goto LABEL_269;
        }
      }

      else if (v153 != 6 || v152 != 7)
      {
        goto LABEL_269;
      }
    }

    else
    {
      if (v153 != 3)
      {
        if (v152 - 5 < 3)
        {
          goto LABEL_270;
        }

LABEL_269:
        v151 = 0x4042000000000000;
        goto LABEL_270;
      }

      if (v152 <= 2)
      {
        goto LABEL_269;
      }
    }
  }

LABEL_270:
  *(a11 + 352) = v151;
  *(a11 + 1049) = v151;
  *(a11 + 1746) = v151;
  v154 = *(a10 + 1361);
  if (v154 < 1.0)
  {
    v155 = 0x3FF0000000000000;
    goto LABEL_274;
  }

  if (v154 <= 10.0)
  {
    *(a11 + 357) = v154;
  }

  else
  {
    v155 = 0x4024000000000000;
LABEL_274:
    *(a11 + 357) = v155;
  }

  v156 = *(a10 + 1364);
  if (v156 < 1.0)
  {
    v157 = 0x3FF0000000000000;
    goto LABEL_285;
  }

  if (v156 <= 10.0)
  {
    *(a11 + 1054) = v156;
  }

  else
  {
    v157 = 0x4024000000000000;
LABEL_285:
    *(a11 + 1054) = v157;
  }

  v158 = *(a10 + 1367);
  if (v158 < 1.0)
  {
    v159 = 0x3FF0000000000000;
    goto LABEL_291;
  }

  if (v158 <= 10.0)
  {
    *(a11 + 1751) = v158;
  }

  else
  {
    v159 = 0x4024000000000000;
LABEL_291:
    *(a11 + 1751) = v159;
  }

  if (*(a11 + 2808))
  {
    v160 = 0;
    goto LABEL_297;
  }

  v161 = *(a10 + 38);
  if ((v161 & 0x80000000) == 0)
  {
    v160 = v161 + 1;
LABEL_297:
    *(a10 + 38) = v160;
  }

  result = *(a11 + 2809) != 0;
  v163 = *MEMORY[0x29EDCA608];
  return result;
}