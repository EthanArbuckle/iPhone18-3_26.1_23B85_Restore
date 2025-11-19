uint64_t rrl_process_measure_response_stand_alone(unsigned __int16 *a1, _BYTE *a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  v6 = *(a3 + 8);
  if (v6)
  {
    free(v6);
    *(a3 + 8) = 0;
  }

  *a3 = 0;
  memset_s(__s, 0x70uLL, 0, 0x70uLL);
  if (GetStaticLpPrivate()[1344] && *(GetStaticLpPrivate() + 337) == 1)
  {
    v7 = *a1;
    if (v7 == 1 || v7 == 5)
    {
      v8 = 0;
      __s[0] = 2;
    }

    else if (v7 == 4)
    {
      __s[0] = 8;
      v8 = 2;
    }

    else
    {
      rrl_free_asn_pdu();
      GetStaticLpPrivate()[16] = 1;
      StaticLpPrivate = GetStaticLpPrivate();
      *a2 = rrl_encode_measure_response_location_info(a1, (StaticLpPrivate + 24), a3);
      rrl_free_asn_pdu();
      if (*a2)
      {
        v8 = 0;
        goto LABEL_12;
      }

      __s[0] = 0;
      v8 = 1;
    }

    *a2 = rrl_encode_measure_response_error(__s, a3);
LABEL_12:
    v9 = GetStaticLpPrivate();
    memset_s(v9 + 1344, 0x1CuLL, 0, 0x1CuLL);
    goto LABEL_13;
  }

  ms_report_exception(2, 24582, 1223, "rrl_process_measure_response_stand_alone");
  v8 = 1;
LABEL_13:
  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t rrl_process_assistance_data_request(uint64_t a1, char a2, _BYTE *a3, uint64_t a4)
{
  v21 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  v8 = *(a4 + 8);
  if (v8)
  {
    free(v8);
    *(a4 + 8) = 0;
  }

  *a4 = 0;
  if (GetStaticLpPrivate()[1344])
  {
    rrl_free_asn_pdu();
    GetStaticLpPrivate()[16] = 1;
    v9 = *(GetStaticLpPrivate() + 339);
    *(GetStaticLpPrivate() + 6) = v9;
    *(GetStaticLpPrivate() + 8) = 1;
    if (GetStaticLpPrivate()[1360] == 1)
    {
      GetStaticLpPrivate()[584] = 1;
      GetStaticLpPrivate()[536] = 1;
      v10 = GetStaticLpPrivate() + 1364;
      *(GetStaticLpPrivate() + 66) = *v10;
    }

    StaticLpPrivate = GetStaticLpPrivate();
    StaticLpPrivate[384] = 1;
    *(StaticLpPrivate + 68) = 0;
    if (a1 && (a2 & 1) != 0)
    {
      v12 = StaticLpPrivate;
      if (GetStaticLpPrivate()[1352] != 1)
      {
        ms_report_exception(2, 24589, 1319, "rrl_process_assistance_data_request");
      }

      *(v12 + 68) = 6;
      if (rrl_init_bits_enc())
      {
        v13 = *(a1 + 12);
        rrl_bits_append(8, *(a1 + 12));
        rrl_bits_append(8, (v13 >> 8) & 1);
        if ((v13 & 8) != 0)
        {
          rrl_bits_append(2, *(a1 + 15));
          rrl_bits_append(6, 0);
          rrl_bits_append(8, *(a1 + 14));
          rrl_bits_append(8, *(a1 + 16));
          rrl_bits_append(4, *(a1 + 17));
          rrl_bits_append(4, *(a1 + 18));
          if (*(a1 + 17))
          {
            v14 = 0;
            do
            {
              rrl_bits_append(2, 0);
              rrl_bits_append(6, *(a1 + v14 + 27));
              rrl_bits_append(8, *(a1 + v14++ + 43));
            }

            while (v14 < *(a1 + 17));
          }
        }

        if (rrl_finish_bits_enc(v12 + 36, v12 + 70))
        {
          v12[284] = 1;
          v12[376] = 1;
          v12[296] = 1;
        }
      }
    }

    v15 = GetStaticLpPrivate();
    v16 = rrl_encode_air_message(a4, (v15 + 24));
    *a3 = v16;
    v17 = v16 ^ 1u;
    rrl_free_asn_pdu();
    v18 = GetStaticLpPrivate();
    memset_s(v18 + 1344, 0x1CuLL, 0, 0x1CuLL);
  }

  else
  {
    ms_report_exception(2, 24582, 1291, "rrl_process_assistance_data_request");
    v17 = 1;
  }

  v19 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t GN_Sen_Set_Defin(uint64_t a1, int *a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = qword_2A1926970;
  if (a1)
  {
    if (*(a1 + 16) > 2)
    {
      goto LABEL_9;
    }

    *qword_2A1926970 = *a1;
    v4 = *(a1 + 16);
    v5 = *(a1 + 32);
    v6 = *(a1 + 64);
    v3[3] = *(a1 + 48);
    v3[4] = v6;
    v3[1] = v4;
    v3[2] = v5;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

  if (a2[4] <= 2)
  {
    v3[5] = *a2;
    v7 = *(a2 + 1);
    v8 = *(a2 + 2);
    v9 = *(a2 + 4);
    v3[8] = *(a2 + 3);
    v3[9] = v9;
    v3[6] = v7;
    v3[7] = v8;
LABEL_7:
    if (a3)
    {
      if (*(a3 + 16) > 2)
      {
        goto LABEL_9;
      }

      v3[10] = *a3;
      v11 = *(a3 + 16);
      v12 = *(a3 + 32);
      v13 = *(a3 + 64);
      v3[13] = *(a3 + 48);
      v3[14] = v13;
      v3[11] = v11;
      v3[12] = v12;
    }

    result = 1;
    goto LABEL_12;
  }

LABEL_9:
  result = 0;
LABEL_12:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_Sen_Set_Accl(unsigned int a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1 <= 0x2BC)
  {
    if (a1)
    {
      v5 = 0;
      v6 = 0;
      v7 = a1;
      v8 = a2;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          if (fabs(*(v8 + 8 * i)) > 312.970646)
          {
            EvCrt_v("GN_Sen_Set_Accl: FAILED: Accl[%d].XYZ[%d] = %f <-32g or >+32g, Out of range!", v5, i, *(v8 + 8 * i));
            v6 = 1;
          }
        }

        ++v5;
        v8 += 32;
      }

      while (v5 != a1);
      v10 = qword_2A1926970;
      v11 = a2;
      do
      {
        Cyc_Record_Write(v10 + 240, v11);
        v11 += 32;
        --v7;
      }

      while (v7);
      v2 = v6 ^ 1;
    }

    else
    {
      v2 = 1;
    }

    Sen_Log_3AxesData_UU(114, a1, a2, 20000.0);
  }

  else
  {
    v2 = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v2 & 1;
}

void Sen_Log_3AxesData_UU(char a1, int a2, uint64_t a3, double a4)
{
  v28 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v7 = xmmword_2A1926A80;
    GNB_Debug_Flush_Check();
    v8 = 0;
    v9 = 1;
    do
    {
      memset(v27, 0, sizeof(v27));
      v10 = *(a3 + 32 * v8 + 24);
      v11 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      *v27 = v11;
      v27[2] = v11 >> 16;
      v27[3] = v11 >> 24;
      if (a2 - v8 >= 30)
      {
        v12 = 30;
      }

      else
      {
        v12 = a2 - v8;
      }

      v27[4] = v12;
      v26 = &v27[5];
      if (a2 - v8 >= 1)
      {
        v13 = 0;
        if (v12 <= 1)
        {
          v12 = 1;
        }

        v14 = 13 * v12;
        v15 = a3 + 16 + 32 * v8;
        do
        {
          v16 = v10;
          if (v13)
          {
            v16 = *(v15 + 8) - v10;
          }

          v17 = *(v15 - 8);
          v18 = (*(v15 - 16) * a4);
          v19 = &v27[v13 + 5];
          *v19 = v16;
          *(v19 + 2) = v18;
          v19[6] = BYTE2(v18);
          v20 = (v17 * a4);
          *(v19 + 7) = v20;
          v19[9] = BYTE2(v20);
          v21 = *v15;
          v15 += 32;
          v22 = (v21 * a4);
          *(v19 + 5) = v22;
          v19[12] = BYTE2(v22);
          v13 += 13;
          ++v8;
        }

        while (v14 != v13);
        v26 = &v27[v13 + 5];
      }

      STEU_Encode_X(v7, a1, v27, &v26);
      GNB_Debug_Flush_Check();
    }

    while (v9++ != (a2 - 1) / 30 + 1);
  }

  v24 = *MEMORY[0x29EDCA608];
}

uint64_t GN_Sen_Set_Gyro(unsigned int a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1 <= 0x2BC)
  {
    if (a1)
    {
      v5 = 0;
      v6 = 0;
      v7 = a1;
      v8 = a2;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          if (fabs(*(v8 + 8 * i)) > 34.9)
          {
            EvCrt_v("GN_Sen_Set_Gyro: FAILED: Gyro[%d].XYZ[%d] = %f <-20rads/s or >+20rads/s, Out of range!", v5, i, *(v8 + 8 * i));
            v6 = 1;
          }
        }

        ++v5;
        v8 += 32;
      }

      while (v5 != a1);
      v10 = qword_2A1926970;
      v11 = a2;
      do
      {
        Cyc_Record_Write(v10 + 336, v11);
        v11 += 32;
        --v7;
      }

      while (v7);
      v2 = v6 ^ 1;
    }

    else
    {
      v2 = 1;
    }

    Sen_Log_3AxesData_UU(103, a1, a2, 200000.0);
  }

  else
  {
    v2 = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v2 & 1;
}

uint64_t GN_Sen_Set_Baro(unsigned int a1, double *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a1 <= 0x32)
  {
    if (a1)
    {
      v5 = 0;
      v6 = 0;
      v7 = a1;
      v8 = a2;
      do
      {
        if (*v8 < 500.0 || *v8 > 1500.0)
        {
          EvCrt_v("GN_Sen_Set_Baro: FAILED: Baro[%d].Press = %f <+500hPa or >+1500hPa, Out of range!", v5, *v8);
          v6 = 1;
        }

        ++v5;
        v8 += 3;
      }

      while (a1 != v5);
      v9 = qword_2A1926970;
      v10 = a2;
      do
      {
        Cyc_Record_Write(v9 + 432, v10);
        v10 += 3;
        --v7;
      }

      while (v7);
      v2 = v6 ^ 1;
    }

    else
    {
      v2 = 1;
    }

    if (g_Enable_GNB_Debug)
    {
      v27 = v2;
      v11 = xmmword_2A1926A80;
      GNB_Debug_Flush_Check();
      v12 = 0;
      v13 = 1;
      do
      {
        memset(v29, 0, sizeof(v29));
        v14 = LODWORD(a2[3 * v12 + 2]);
        v15 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        *v29 = v15;
        v29[2] = v15 >> 16;
        v29[3] = v15 >> 24;
        if ((a1 - v12) >= 30)
        {
          v16 = 30;
        }

        else
        {
          v16 = a1 - v12;
        }

        v29[4] = v16;
        v28 = &v29[5];
        if ((a1 - v12) >= 1)
        {
          v17 = 0;
          if (v16 <= 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v16;
          }

          v19 = &a2[3 * v12 + 2];
          v20 = 7 * v18;
          do
          {
            v21 = v14;
            if (v17)
            {
              v21 = *v19 - v14;
            }

            v22 = &v29[v17 + 5];
            *v22 = v21;
            v23 = ((*(v19 - 2) + -1000.0) * 50000.0);
            *(v22 + 2) = v23;
            v22[6] = BYTE2(v23);
            v17 += 7;
            ++v12;
            v19 += 3;
          }

          while (v20 != v17);
          v28 = &v29[v17 + 5];
        }

        STEU_Encode_X(v11, 98, v29, &v28);
        GNB_Debug_Flush_Check();
      }

      while (v13++ != (a1 - 1) / 30 + 1);
      v2 = v27;
    }
  }

  else
  {
    v2 = 0;
  }

  v25 = *MEMORY[0x29EDCA608];
  return v2 & 1;
}

unint64_t Gnm53_11GetCurrentReferenceTime(void)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_GnmLtlRefTime)
  {
    v0 = g_GnmLtlRefTime;
    v1 = g_GnmLtlRefTime + (((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v0) * 0.001);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:GPSTime,%llus\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm53_11GetCurrentReferenceTime", v1);
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
    }
  }

  else
  {
    v1 = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t Gnm53_12GetBirthTime(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:BirthGPSTime,%llus\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 73, "Gnm53_12GetBirthTime", g_GnmLtlRefTime);
    LbsOsaTrace_WriteLog(0xBu, __str, v1, 4, 1);
  }

  result = g_GnmLtlRefTime;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t Gnm53_13SetReferenceTime(unint64_t result, unsigned int a2, int a3, int a4)
{
  v9 = *MEMORY[0x29EDCA608];
  if ((a4 != 2 || g_GnmLtlRefTime != 1) && g_GnmLtlRefTime < result && g_GnmLtlRefTime != 0 && a2 >> 4 <= 0x270 && g_GnmLtlRefTime < result)
  {
    g_GnmLtlRefTime = result;
    g_GnmLtlRefTime = a3;
    g_GnmLtlRefTime = a4;
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:GPSTime,%llus,OsTime,%ums,Src,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm53_13SetReferenceTime", g_GnmLtlRefTime, g_GnmLtlRefTime, g_GnmLtlRefTime);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm53_14HandleOSRefTime(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_REF_OS_TIME_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm53_14HandleOSRefTime");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = ((*(a1 + 12) + 604800000 * *(a1 + 16)) * 0.001);
    v5 = *(a1 + 18);
    v6 = mach_continuous_time();
    Gnm53_13SetReferenceTime(v4, v5, (*&g_MacClockTicksToMsRelation * v6), 1);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm53_14HandleOSRefTime", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 0, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm53_15InitLtlRefTime(uint64_t result)
{
  v5 = *MEMORY[0x29EDCA608];
  if (!g_GnmLtlRefTime)
  {
    g_GnmLtlRefTime = result;
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:BirthGPSTime,%llus\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 73, "Gnm53_15InitLtlRefTime", g_GnmLtlRefTime);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v2, 4, 1);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm53_24ComputeDefaultVarMENv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x29EDCA608];
  v12 = 0;
  v11 = 0;
  v13 = 0;
  v14 = 0;
  *&v15[0] = 0;
  v15[1] = 0u;
  *v16 = 0;
  v17 = 0;
  *(v15 + 6) = xmmword_29972AD00;
  *&v16[6] = __const__ZL26Gnm53_07GetDefaultXoParamsP22s_LsimMsg_XoInitCalInd_a_CorrFactor;
  v18 = -2132380128;
  Gnm53_23ComputeVarMENv(&v11, a2, a3, a4, a5, a6);
  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Default XOCoef,ADC,CurCorrFact\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm53_24ComputeDefaultVarMENv");
    result = LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm53_23ComputeVarMENv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v43 = *MEMORY[0x29EDCA608];
  bzero(v31, 0x11C6uLL);
  v7 = 0;
  v8 = vrev64q_s32(*(v6 + 28));
  v29 = vextq_s8(v8, v8, 8uLL);
  v30 = *(v6 + 24);
  do
  {
    v9 = &v42[v7];
    *v9 = 0;
    *(v9 + 2) = 0;
    v7 += 8;
  }

  while (v7 != 2008);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(v41, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(v41, 0x40FuLL, "%10u %s%c %s: LTL:Compute S Curves using Coefficients\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm53_21ComputeLTLTable");
    LbsOsaTrace_WriteLog(0xBu, v41, v11, 4, 1);
  }

  v12 = v42;
  ltl_least_squares_set(v42, 251, v29.i32, 5u);
  v14 = 8;
  v15.i32[0] = 963912704;
  do
  {
    v16 = *v12;
    v12 += 2;
    *v13.i32 = v16 * 0.00023283;
    v13 = vuzp1_s8(vmovn_s32(vshlq_u32(vdupq_lane_s32(v13, 0), xmmword_29972AD10)), v15);
    *&v31[v14] = v13.i32[0];
    v14 += 4;
  }

  while (v14 != 1012);
  for (i = 0; i != 502; i += 2)
  {
    *&v35[i + 1004] = 40;
  }

  CurrentReferenceTime = Gnm53_11GetCurrentReferenceTime();
  Gnm55_46SetGenMasterLTLTime(v31, 0x11C6u);
  v36 = Gnm53_11GetCurrentReferenceTime();
  Gnm55_47SetNVDataCS(v35, 0x11C6u, 0x5FAu);
  v28 = 0;
  v41[0] = 0;
  if (Gnm05_57GenerateInitCLT((v6 + 56), 8u, 1.125, v41, &v28))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(v42, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(v42, 0x40FuLL, "%10u %s%c %s: LTL:Compute CLT using Correction Factors\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 73, "Gnm53_22ComputeCLTTable");
      LbsOsaTrace_WriteLog(0xBu, v42, v19, 4, 1);
    }

    v20 = v28;
    v21 = v41[0];
    if (v28)
    {
      v22 = 0;
      v23 = v39;
      while (v22 != 763)
      {
        v24 = vcvtd_n_u64_f64(v21[v22], 0xFuLL);
        *(v23 - 1) = v24;
        *v23 = BYTE2(v24);
        v23 += 3;
        if (v20 == ++v22)
        {
          goto LABEL_19;
        }
      }
    }

    if (v21)
    {
LABEL_19:
      free(v21);
    }

    v25 = 27;
  }

  else
  {
    v25 = 19;
  }

  *&v39[766] = *(v6 + 74);
  Gnm55_47SetNVDataCS(v38, 0x11C6u, 0x5D4u);
  memcpy_s("Gnm53_23ComputeVarMENv", 826, v40, 0x5EAu, v35, 0x5EAuLL);
  Gnm55_47SetNVDataCS(v40, 0x11C6u, 0x5EAu);
  *v31 = 3;
  v32 = v25;
  v33 = 0;
  v34 = Gnm27_04ComputeCS(v31, 6u);
  result = Gnm55_13WriteMENv(v31, 0x11C6u);
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm53_25ComputeCalibVarMENv(void)
{
  v18 = *MEMORY[0x29EDCA608];
  v12 = 0;
  v11 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  if (Gnm55_14ReadXOCal(&v11) && Gnm53_20ValidateXOCal(&v11))
  {
    Gnm53_23ComputeVarMENv(&v11, v0, v1, v2, v3, v4);
    result = 1;
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:ME Coefficient Data not present\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm53_25ComputeCalibVarMENv");
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
      result = 0;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Gnm53_20ValidateXOCal(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v18 = xmmword_29972AD20;
  v19 = -84;
  v16 = xmmword_29972AD30;
  v17 = 127;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Calibrated,%d,Coeff C0,%d,C1,%d,C2,%d,C3,%d,C4,%d\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm53_20ValidateXOCal", *(a1 + 16), *(a1 + 40), *(a1 + 36), *(a1 + 32), *(a1 + 28), *(a1 + 24));
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  v4 = *(a1 + 28);
  v5 = vrev64q_s32(v4);
  v20 = vextq_s8(v5, v5, 8uLL);
  v21 = *(a1 + 24);
  if (v4.i32[3] >= -2111062272 && v4.i32[3] <= v16)
  {
    v8 = 0;
    while (v8 != 4)
    {
      v9 = v8;
      v10 = v20.i32[v8 + 1];
      if (v10 >= *(&v18 + v8 + 1))
      {
        ++v8;
        if (v10 <= *(&v16 + v9 + 1))
        {
          continue;
        }
      }

      v7 = v9 > 3;
      goto LABEL_13;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
LABEL_13:
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:Incorrect Modem XO Initial values\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm53_20ValidateXOCal", 772);
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 2, 1);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t Gnm53_26ClearVarMENv(void)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Clearing ME NV file\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 77, "Gnm53_26ClearVarMENv");
    LbsOsaTrace_WriteLog(0xBu, __str, v1, 3, 1);
  }

  v2 = gnssOsa_clearNV(1);
  if ((v2 & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xBu, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ME NV File\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 65, "Gnm53_26ClearVarMENv", 1573);
    LbsOsaTrace_WriteLog(0xBu, __str, v4, 1, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t Gnm53_27InitializeVarMENv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v32 = *MEMORY[0x29EDCA608];
  v26 = 0;
  v25 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  if (Gnm55_14ReadXOCal(&v25) && Gnm53_20ValidateXOCal(&v25))
  {
    bzero(v23, 0x11C6uLL);
    MENv = Gnm55_12ReadMENv(v23, 4550);
    v7 = v24;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:NVDataType,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm53_27InitializeVarMENv", v7);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
    }

    if ((~v7 & 0xB) != 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = MENv;
    }

    if (v10 == 1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:VarMENvData present\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm53_27InitializeVarMENv");
        result = LbsOsaTrace_WriteLog(0xBu, __str, v13, 4, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 1, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:VarMENvData not present\n", (*&g_MacClockTicksToMsRelation * v20), "GNM", 65, "Gnm53_27InitializeVarMENv");
        LbsOsaTrace_WriteLog(0xBu, __str, v21, 1, 1);
      }

      result = Gnm53_23ComputeVarMENv(&v25, v15, v16, v17, v18, v19);
    }
  }

  else
  {
    result = Gnm53_31SendCalibReq();
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *Gnm53_31SendCalibReq(void)
{
  v10 = *MEMORY[0x29EDCA608];
  result = gnssOsa_Calloc("Gnm53_31SendCalibReq", 983, 1, 0x10uLL);
  if (result)
  {
    v1 = result;
    if (g_XOTimerStatus == 1)
    {
      if (AgpsFsmStopTimer(8399622) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v2 = mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm53_31SendCalibReq", 1545);
        LbsOsaTrace_WriteLog(0xBu, __str, v3, 2, 1);
      }

      g_XOTimerStatus = 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_INIT_CALIB_REQ =>LSIM\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm53_31SendCalibReq");
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(128, 131, 8604416, v1);
    result = AgpsFsmStartTimer(0x802B06u, 0xFAu);
    if (result)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm53_31SendCalibReq", 1544);
        result = LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
      }
    }

    else
    {
      g_XOTimerStatus = 1;
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm53_33HandleCalibInd(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_CALIB_RSP\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm53_33HandleCalibInd");
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
  }

  if (g_XOTimerStatus == 1)
  {
    if (AgpsFsmStopTimer(8399622) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm53_33HandleCalibInd", 1545);
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 2, 1);
    }

    g_XOTimerStatus = 0;
  }

  if (a1)
  {
    Gnm53_32HandleCalibRsp(a1, v2, v3, v4, v5, v6);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm53_33HandleCalibInd", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v12, 0, 1);
  }

  v13 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm53_32HandleCalibRsp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = *MEMORY[0x29EDCA608];
  if (a1 && (v6 = a1, *(a1 + 12) == 1) && (a1 = Gnm53_20ValidateXOCal(a1), a1))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Modem XOCalibdata available\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm53_32HandleCalibRsp");
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
    }

    if ((Gnm55_15WriteXOCal(v6) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:Modem XO Initial values into NV\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 87, "Gnm53_32HandleCalibRsp", 1570);
      LbsOsaTrace_WriteLog(0xBu, __str, v15, 2, 1);
    }

    Gnm53_23ComputeVarMENv(v6, v9, v10, v11, v12, v13);
    if ((g_NmeaMask & 0x200) != 0 || LbsOsaTrace_IsLoggingAllowed(1u, 4, 0, 0))
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      *__str = 0u;
      v24 = 0u;
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x200uLL, "$PDXCL,%u,%u,%u,%u,%d,%d,%d,%d,%d,%d,%u,%u,%u", (*&g_MacClockTicksToMsRelation * v16), *(v6 + 12), *(v6 + 16), *(v6 + 18), *(v6 + 20), *(v6 + 24), *(v6 + 28), *(v6 + 32), *(v6 + 36), *(v6 + 40), *(v6 + 44), *(v6 + 48), *(v6 + 52));
      if ((v17 & 0x80000000) == 0)
      {
        Gnm53_82UpdateLtlNmeaData(__str, v17);
      }
    }

    if ((g_NmeaMask & 0x200) != 0 || (result = LbsOsaTrace_IsLoggingAllowed(1u, 4, 0, 0), result))
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      *__str = 0u;
      v24 = 0u;
      v19 = mach_continuous_time();
      result = snprintf(__str, 0x200uLL, "$PDXCA,%u,%d,%d,%d,%d,%d,%d,%d,%d,%u,%u,%u,%u", (*&g_MacClockTicksToMsRelation * v19), *(v6 + 56), *(v6 + 58), *(v6 + 60), *(v6 + 62), *(v6 + 64), *(v6 + 66), *(v6 + 68), *(v6 + 70), *(v6 + 72), *(v6 + 73), *(v6 + 74), *(v6 + 76));
      if ((result & 0x80000000) == 0)
      {
        result = Gnm53_82UpdateLtlNmeaData(__str, result);
      }
    }
  }

  else if (dword_2A19397C6 == 1)
  {
    result = Gnm53_24ComputeDefaultVarMENv(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:XOCalibdata not available retry\n", (*&g_MacClockTicksToMsRelation * v20), "GNM", 73, "Gnm53_32HandleCalibRsp");
      result = LbsOsaTrace_WriteLog(0xBu, __str, v21, 4, 1);
    }
  }

  if (dword_2A19397C6 == 1)
  {
    result = Gnm29_01RestoreVarMENv(0);
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm53_34HandleCalibReqTimeout(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_XO_REQUEST_TIMER\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm53_34HandleCalibReqTimeout");
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
  }

  if (a1)
  {
    g_XOTimerStatus = 0;
    Gnm53_32HandleCalibRsp(0, v2, v3, v4, v5, v6);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm53_34HandleCalibReqTimeout", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v10, 0, 1);
  }

  v11 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm53_43ComposeMeWakeMsg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v6;
  v127 = *MEMORY[0x29EDCA608];
  result = Gnm55_12ReadMENv(v118, 4550);
  if (!result)
  {
    goto LABEL_49;
  }

  v15 = v119;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(v125, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(v125, 0x40FuLL, "%10u %s%c %s: LTL:NVDataType,%u\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm53_43ComposeMeWakeMsg", v15);
    LbsOsaTrace_WriteLog(0xBu, v125, v17, 4, 1);
  }

  if ((~v15 & 0x1B) == 0)
  {
    if (v8)
    {
LABEL_6:
      BYTE8(v124[0]) = 0;
      *&v124[0] = 0;
      HIDWORD(v124[0]) = 0;
      LOBYTE(v124[1]) = 0;
      *(&v124[1] + 2) = 0u;
      *(&v124[2] + 2) = 0u;
      *(&v124[3] + 2) = 0u;
      *(&v124[3] + 14) = 0u;
      if ((Gnm55_14ReadXOCal(v124) & 1) != 0 && Gnm53_20ValidateXOCal(v124))
      {
        v18 = vrev64q_s32(*(&v124[1] + 12));
        __src = vextq_s8(v18, v18, 8uLL);
        v117 = DWORD2(v124[1]);
      }

      else
      {
        for (i = 0; i != 5; ++i)
        {
          __src.i32[i] = vcvts_n_s32_f32(*&dword_29972AD80[i], 0xEuLL);
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(v125, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(v125, 0x40FuLL, "%10u %s%c %s: LTL:S-Curve Coeff C0,%d,C1,%d,C2,%d,C3,%d C4,%d\n", (*&g_MacClockTicksToMsRelation * v22), "GNM", 73, "Gnm53_42GetInitialLTL", __src.i32[0], __src.i32[1], __src.i32[2], __src.i32[3], v117);
        LbsOsaTrace_WriteLog(0xBu, v125, v23, 4, 1);
      }

      v24 = &v121[1];
      v25 = 251;
      do
      {
        *(v24 - 1) = 40;
        v24 += 2;
        --v25;
      }

      while (v25);
      v26 = v122;
LABEL_18:
      Gnm53_06PrintLTLData(v26, 0x3ECuLL, v121, 0x1F6uLL);
      *v10 = 2;
      if (Gnm55_16GetVarNvData(v118, 0x11C6u, 1012, v13, v12, v10, 2))
      {
        if ((g_NmeaMask & 0x200) != 0 || LbsOsaTrace_IsLoggingAllowed(1u, 4, 0, 0))
        {
          v113 = v15;
          *v115 = v12;
          v27 = v124;
          memset(v124, 0, 502);
          memcpy_s("Gnm53_86GenerateXOInitialConfNmea", 2477, v124, 0x1F6u, v121, 0x1F6uLL);
          v28 = 0;
          v29 = 251;
          do
          {
            memset(v125, 0, 512);
            v30 = mach_continuous_time();
            v31 = snprintf(v125, 0x200uLL, "$PDXLC,%u,%u,%u,%u", (*&g_MacClockTicksToMsRelation * v30), 8, (v28 >> 5) + 1, 251);
            if (v31 < 0)
            {
              break;
            }

            v32 = v31;
            for (j = 0; j != 32; ++j)
            {
              if (v29 == j)
              {
                break;
              }

              v34 = v32;
              if (v32 > 0x1FFu)
              {
                break;
              }

              v35 = snprintf(&v125[v32], 512 - v32, ",%u", *(v27 + j));
              if (v35 < 0)
              {
                goto LABEL_30;
              }

              v32 = v35 + v34;
            }

            Gnm53_82UpdateLtlNmeaData(v125, v32);
            v29 -= 32;
            v27 += 4;
            v36 = v28 >= 0xDB;
            v28 += 32;
          }

          while (!v36);
LABEL_30:
          v37 = 2;
          v12 = *v115;
          if ((v113 & 4) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_33;
        }

        v37 = 2;
        if ((v15 & 4) == 0)
        {
LABEL_35:
          if (Gnm55_16GetVarNvData(v118, 0x11C6u, 2260, v13, v12, v10, 8))
          {
            v38 = v37 | 8;
          }

          else
          {
            v38 = v37;
          }

          if (Gnm55_16GetVarNvData(v118, 0x11C6u, 3028, v13, v12, v10, 16))
          {
            v39 = v38 | 0x10;
          }

          else
          {
            v39 = v38;
          }

          Gnm53_09PrintKfCltAdc(v118);
          v40 = *v10;
          if ((v40 + 24) + 2 <= v12)
          {
            v13[v40] = 24;
            v13[*v10 + 1] = 0;
            memcpy_s("Gnm53_43ComposeMeWakeMsg", 1340, &v13[*v10 + 2], v12 - *v10 - 2, &__src, 0x14uLL);
            *v10 += 26;
            v39 |= 0x20u;
            if ((g_NmeaMask & 0x200) != 0 || LbsOsaTrace_IsLoggingAllowed(1u, 4, 0, 0))
            {
              memset(v125, 0, 512);
              v41 = mach_continuous_time();
              v42 = snprintf(v125, 0x200uLL, "$PDXIC,%u,%d,%d,%d,%d,%d,%d", (*&g_MacClockTicksToMsRelation * v41), 0, v117, __src.i32[3], __src.i32[2], __src.i32[1], __src.i32[0]);
              if ((v42 & 0x80000000) == 0)
              {
                Gnm53_82UpdateLtlNmeaData(v125, v42);
              }
            }
          }

          *v13 = v39;
          v13[1] = 0;
          if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
          {
            bzero(v125, 0x410uLL);
            v43 = mach_continuous_time();
            v44 = snprintf(v125, 0x40FuLL, "%10u %s%c %s: LTL:MENvType,%u\n", (*&g_MacClockTicksToMsRelation * v43), "GNM", 73, "Gnm53_43ComposeMeWakeMsg", v39);
            LbsOsaTrace_WriteLog(0xBu, v125, v44, 4, 1);
          }

          result = 1;
          goto LABEL_49;
        }
      }

      else
      {
        v37 = 0;
        if ((v15 & 4) == 0)
        {
          goto LABEL_35;
        }
      }

LABEL_33:
      if (Gnm55_16GetVarNvData(v118, 0x11C6u, 1540, v13, v12, v10, 4))
      {
        v37 |= 4u;
      }

      goto LABEL_35;
    }

    v46 = v119;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5, 0, 0))
    {
      bzero(v125, 0x410uLL);
      v47 = mach_continuous_time();
      v48 = snprintf(v125, 0x40FuLL, "%10u %s%c %s: LTL:NVDataType,%u\n", (*&g_MacClockTicksToMsRelation * v47), "GNM", 68, "Gnm53_08IsMasterLTLLearnt", v46);
      LbsOsaTrace_WriteLog(0xBu, v125, v48, 5, 1);
    }

    if ((~v46 & 3) != 0)
    {
LABEL_59:
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(v125, 0x410uLL);
        v51 = mach_continuous_time();
        v52 = snprintf(v125, 0x40FuLL, "%10u %s%c %s: LTL:Master LTL Is Not Learnt\n", (*&g_MacClockTicksToMsRelation * v51), "GNM", 73, "Gnm53_08IsMasterLTLLearnt");
        LbsOsaTrace_WriteLog(0xBu, v125, v52, 4, 1);
      }

      goto LABEL_6;
    }

    v49 = 1004;
    bzero(v125, 0x3ECuLL);
    memcpy(v126, v121, 0x1F6uLL);
    do
    {
      if (*&v125[v49] >= 0x29u)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
        {
          goto LABEL_68;
        }

        bzero(v124, 0x410uLL);
        v54 = mach_continuous_time();
        v55 = snprintf(v124, 0x40FuLL, "%10u %s%c %s: LTL:Master LTL Is Learnt\n", (*&g_MacClockTicksToMsRelation * v54), "GNM", 73, "Gnm53_08IsMasterLTLLearnt");
        v56 = v124;
        goto LABEL_67;
      }

      v49 += 2;
    }

    while (v49 != 1506);
    memcpy(v125, v120, sizeof(v125));
    memset(&v124[62] + 12, 0, 480);
    memset(&v124[92] + 12, 0, 22);
    memcpy(v124, v122, 0x3ECuLL);
    v50 = 0;
    while (vabds_f32(*&v125[v50], *(v124 + v50)) <= 0.002)
    {
      v50 += 4;
      if (v50 == 1004)
      {
        goto LABEL_59;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(v123, 0x410uLL);
      v57 = mach_continuous_time();
      v55 = snprintf(v123, 0x40FuLL, "%10u %s%c %s: LTL:Master LTL Is Learnt\n", (*&g_MacClockTicksToMsRelation * v57), "GNM", 73, "Gnm53_08IsMasterLTLLearnt");
      v56 = v123;
LABEL_67:
      LbsOsaTrace_WriteLog(0xBu, v56, v55, 4, 1);
    }

LABEL_68:
    for (k = 0; k != 2008; k += 8)
    {
      v59 = &v125[k];
      *v59 = 0;
      *(v59 + 2) = 0;
    }

    for (m = 0; m != 2008; m += 8)
    {
      v61 = v124 + m;
      *v61 = 0;
      *(v61 + 2) = 0;
    }

    v62 = &v125[4];
    v63 = &v121[1];
    for (n = 8; n != 1012; n += 4)
    {
      v53.i32[0] = *&v118[n];
      v65 = vshlq_u32(vmovl_u16(*&vmovl_u8(v53)), xmmword_29972AD40);
      v53 = vorr_s8(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
      *(v62 - 1) = vcvtms_s32_f32((COERCE_FLOAT(v53.i32[0] | v53.i32[1]) * 4295.0) + 0.5);
      *v62 = *(v63 - 1);
      v62 += 4;
      v63 += 2;
    }

    ltl_least_squares_polynom(v125, 251, &__src, 5);
    ltl_least_squares_set(v124, 251, __src.i32, 5u);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(v123, 0x410uLL);
      v68 = mach_continuous_time();
      v69 = snprintf(v123, 0x40FuLL, "%10u %s%c %s: LTL:S-Curve Coeff C0,%d,C1,%d,C2,%d,C3,%d,C4,%d\n", (*&g_MacClockTicksToMsRelation * v68), "GNM", 73, "Gnm53_41PerformLTLPolyfit", __src.i32[0], __src.i32[1], __src.i32[2], __src.i32[3], v117);
      LbsOsaTrace_WriteLog(0xBu, v123, v69, 4, 1);
    }

    v70 = v124;
    v71 = 8;
    v66.i32[0] = 963912704;
    do
    {
      v72 = *v70;
      v70 += 2;
      *v67.i32 = v72 * 0.00023283;
      v67 = vuzp1_s8(vmovn_s32(vshlq_u32(vdupq_lane_s32(v67, 0), xmmword_29972AD10)), v66);
      *&v118[v71] = v67.i32[0];
      v71 += 4;
    }

    while (v71 != 1012);
    v114 = v15;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(v123, 0x410uLL);
      v73 = mach_continuous_time();
      v74 = snprintf(v123, 0x40FuLL, "%10u %s%c %s: LTL:Polyfit performed on Master ME NV\n", (*&g_MacClockTicksToMsRelation * v73), "GNM", 73, "Gnm53_41PerformLTLPolyfit");
      LbsOsaTrace_WriteLog(0xBu, v123, v74, 4, 1);
    }

    memcpy(v126, v121, 0x1F6uLL);
    v75 = 0;
    v76 = 0;
    do
    {
      v77 = v126[v75];
      if (v77 >= 0x29)
      {
        v78 = 0;
        v79 = vcvts_n_f32_u32(v75, 1uLL) + -30.0;
        v80 = __src.i32[0] + ((v79 + -30.0) * __src.i32[1]);
        v81 = v79 + -30.0;
        do
        {
          v81 = (v79 + -30.0) * v81;
          v80 = v80 + (v81 * __src.i32[v78 + 2]);
          ++v78;
        }

        while (v78 != 3);
        v82 = 0;
        v83 = v80 / 70369000.0;
        v84 = (v79 + -0.25) + -30.0;
        v85 = __src.i32[0] + (v84 * __src.i32[1]);
        v86 = v84;
        do
        {
          v86 = v84 * v86;
          v85 = v85 + (v86 * __src.i32[v82 + 2]);
          ++v82;
        }

        while (v82 != 3);
        v87 = 0;
        v88 = (v83 * 1000.0);
        v89 = ((v85 / 70369000.0) * 1000.0);
        v90 = k_UncertainityPPB;
        while (k_CountRange[v87] > v77)
        {
          ++v87;
          ++v90;
          if (v87 == 5)
          {
            v91 = 0;
            v90 = &Gnm53_66GetUncertfromTempRange(unsigned short)::a_UncertainityPPB;
            while (Gnm53_66GetUncertfromTempRange(unsigned short)::a_TempRange[v91] > v75)
            {
              ++v91;
              ++v90;
              if (v91 == 4)
              {
                v92 = 7500;
                goto LABEL_94;
              }
            }

            break;
          }
        }

        v92 = *v90;
LABEL_94:
        v93 = v88 - v89;
        if (v88 - v89 < 0)
        {
          v93 = v89 - v88;
        }

        if (v92 < v93)
        {
          v94 = 0;
          while (k_UncertainityPPB[v94] < v93)
          {
            if (++v94 == 5)
            {
              v95 = 40;
              goto LABEL_102;
            }
          }

          v95 = k_CountRange[v94];
LABEL_102:
          v126[v75] = v95;
          if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
          {
            bzero(v124, 0x410uLL);
            v96 = mach_continuous_time();
            v97 = snprintf(v124, 0x40FuLL, "%10u %s%c %s: LTL:Polyfit LTL Count Modified for Temp,%f,Count,%u\n", (*&g_MacClockTicksToMsRelation * v96), "GNM", 73, "Gnm53_69EvaluatePolyfitLTL", v79, v95);
            v76 = 1;
            LbsOsaTrace_WriteLog(0xBu, v124, v97, 4, 1);
          }

          else
          {
            v76 = 1;
          }
        }
      }

      ++v75;
    }

    while (v75 != 251);
    if (v76)
    {
      memcpy(v121, v126, 0x1F6uLL);
    }

    LOBYTE(v15) = v114;
    if ((dword_2A192081C & 0x8000) == 0)
    {
LABEL_141:
      v26 = v120;
      goto LABEL_18;
    }

    CurrentReferenceTime = Gnm53_11GetCurrentReferenceTime();
    if (!CurrentReferenceTime || (v99 = CurrentReferenceTime, AgeingTime = Gnm55_34GetAgeingTime(v118), GenMasterLTLTime = Gnm55_35GetGenMasterLTLTime(v118), v102 = v99 - GenMasterLTLTime, v99 - GenMasterLTLTime < 0x127501))
    {
      v103 = 60;
      goto LABEL_128;
    }

    if (v102 - 2678401 > 0xCC587F)
    {
      if (v102 - 16070401 >= 0xF53700)
      {
        if (2678400 * (v102 % 6) <= v99 - AgeingTime)
        {
          v103 = 100;
        }

        else
        {
          v103 = 0;
        }

LABEL_128:
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
        {
          bzero(v125, 0x410uLL);
          v106 = mach_continuous_time();
          v107 = snprintf(v125, 0x40FuLL, "%10u %s%c %s: LTL:MaxCountLevel,%u\n", (*&g_MacClockTicksToMsRelation * v106), "GNM", 73, "Gnm53_53HandleLTLAgeing", v103);
          LbsOsaTrace_WriteLog(0xBu, v125, v107, 4, 1);
        }

        if (v103)
        {
          bzero(v125, 0x3ECuLL);
          memcpy(v126, v121, 0x1F6uLL);
          v108 = 0;
          v109 = 0;
LABEL_132:
          v110 = v108 + 502;
          do
          {
            if (*&v125[2 * v110] > v103)
            {
              *&v125[2 * v110] = v103;
              v108 = v110 - 501;
              v109 = 1;
              if (v110 != 752)
              {
                goto LABEL_132;
              }

              goto LABEL_139;
            }

            ++v110;
          }

          while (v110 != 753);
          if ((v109 & 1) == 0)
          {
            goto LABEL_141;
          }

LABEL_139:
          memcpy(v121, v126, 0x1F6uLL);
          g_AgeingTimeGpsSeconds = Gnm53_11GetCurrentReferenceTime();
          if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
          {
            bzero(v124, 0x410uLL);
            v111 = mach_continuous_time();
            v112 = snprintf(v124, 0x40FuLL, "%10u %s%c %s: LTL:ME LTL Ageing Done\n", (*&g_MacClockTicksToMsRelation * v111), "GNM", 73, "Gnm53_52PerformLTLAgeing");
            LbsOsaTrace_WriteLog(0xBu, v124, v112, 4, 1);
          }
        }

        goto LABEL_141;
      }

      v104 = (AgeingTime - GenMasterLTLTime) < 0xF53701 || AgeingTime == 0;
      v105 = 1000;
    }

    else
    {
      v104 = (AgeingTime - GenMasterLTLTime) < 0x127501 || AgeingTime == 0;
      v105 = 100;
    }

    if (v104)
    {
      v103 = v105;
    }

    else
    {
      v103 = 0;
    }

    goto LABEL_128;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 1, 0, 0);
  if (result)
  {
    bzero(v125, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(v125, 0x40FuLL, "%10u %s%c %s: LTL:Mandatory ME NV Data not preset\n", (*&g_MacClockTicksToMsRelation * v19), "GNM", 65, "Gnm53_43ComposeMeWakeMsg");
    LbsOsaTrace_WriteLog(0xBu, v125, v20, 1, 1);
    result = 0;
  }

LABEL_49:
  v45 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm53_06PrintLTLData(const void *a1, size_t a2, const void *a3, size_t a4)
{
  v27[125] = *MEMORY[0x29EDCA608];
  bzero(&__dst, 0x3ECuLL);
  memset(v25, 0, 502);
  memcpy_s("Gnm53_06PrintLTLData", 329, &__dst, 0x3ECu, a1, a2);
  memcpy_s("Gnm53_06PrintLTLData", 335, v25, 0x1F6u, a3, a4);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Temp FreqOffset Count\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm53_06PrintLTLData");
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:%5.1f %6d %5u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm53_06PrintLTLData", -30.0, (__dst * 1000.0), v25[0]);
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (result)
  {
    bzero(v23, 0x258uLL);
    v13 = &v25[1];
    v14 = v27;
    v15 = 1;
    do
    {
      v16 = 0;
      for (i = 0; i < 0x258; i = (v18 + i))
      {
        v18 = snprintf(&v23[i], 600 - i, "%5.1f %6d %5u ", (vcvts_n_f32_u32(v15 + v16, 1uLL) + -30.0), (*(v14 + v16) * 1000.0), v13[v16]);
        if (v16 > 0x17)
        {
          break;
        }

        ++v16;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:%s\n", (*&g_MacClockTicksToMsRelation * v19), "GNM", 73, "Gnm53_06PrintLTLData", v23);
        result = LbsOsaTrace_WriteLog(0xBu, __str, v20, 4, 1);
      }

      v13 += 25;
      v14 = (v14 + 100);
      v21 = v15 >= 0xE2;
      v15 += 25;
    }

    while (!v21);
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm53_09PrintKfCltAdc(unsigned __int8 *a1)
{
  v34 = *MEMORY[0x29EDCA608];
  bzero(v33, 0x258uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Index KFValue\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 73, "Gnm53_09PrintKfCltAdc");
    LbsOsaTrace_WriteLog(0xBu, __str, v2, 4, 1);
  }

  v3 = 0;
  v4 = a1 + 1540;
  do
  {
    v5 = 0;
    for (i = 0; i < 0x258; i = (v7 + i))
    {
      v7 = snprintf(&v33[i], 600 - i, "%u %u,", v3 + v5, v4[v5]);
      if (v5 > 0x12)
      {
        break;
      }

      ++v5;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:%s\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm53_09PrintKfCltAdc", v33);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
    }

    v4 += 20;
    v10 = v3 >= 0x2BC;
    v3 += 20;
  }

  while (!v10);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Index CLTValue\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm53_09PrintKfCltAdc");
    LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
  }

  v13 = 0;
  v14 = 0;
  v15 = a1 + 2262;
  do
  {
    v16 = 0;
    v17 = 0;
    v18 = v13;
    v19 = v15;
    do
    {
      v20 = snprintf(&v33[v17], 600 - v17, "%u %u,", v18, *(v19 - 1) | (*v19 << 16));
      if (v16 > 0x2C)
      {
        break;
      }

      v16 += 3;
      v17 = (v20 + v17);
      v19 += 3;
      ++v18;
    }

    while (v17 < 0x258);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:%s\n", (*&g_MacClockTicksToMsRelation * v21), "GNM", 73, "Gnm53_09PrintKfCltAdc", v33);
      LbsOsaTrace_WriteLog(0xBu, __str, v22, 4, 1);
    }

    v15 += 48;
    v13 += 16;
    v10 = v14 >= 0x2D0;
    v14 += 48;
  }

  while (!v10);
  v23 = a1[3028];
  v24 = a1[3029];
  v25 = a1[3030];
  v26 = a1[3031];
  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:AdcGain,%u,AdcOffset,%u\n", (*&g_MacClockTicksToMsRelation * v28), "GNM", 73, "Gnm53_09PrintKfCltAdc", v23 | (v24 << 8), v25 | (v26 << 8));
    result = LbsOsaTrace_WriteLog(0xBu, __str, v29, 4, 1);
  }

  v30 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm53_44BackupLearntMENv(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v9 = v8;
  v74 = *MEMORY[0x29EDCA608];
  v37 = 2;
  if (v8 <= 1)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:Learnt ME NV Data LengRec,%u,LengCalc,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm53_44BackupLearntMENv", 770, v9, 2);
      v14 = __str;
LABEL_26:
      LbsOsaTrace_WriteLog(0xBu, v14, v13, 2, 1);
      result = 0;
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v15 = v7;
  v16 = v6;
  bzero(__str, 0x11C6uLL);
  Gnm55_12ReadMENv(__str, 4550);
  v17 = v71;
  if ((LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0) & 1) == 0)
  {
    if ((v15 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    if (Gnm55_17GetMENvData(v16, v9, &v37, __str, 0x11C6u, 1540, 4))
    {
      LOWORD(v17) = v17 | 4;
    }

    if ((v15 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  bzero(v38, 0x410uLL);
  v18 = mach_continuous_time();
  v19 = snprintf(v38, 0x40FuLL, "%10u %s%c %s: LTL:MENvType,%u,NVDataType,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 73, "Gnm53_44BackupLearntMENv", v15, v17);
  LbsOsaTrace_WriteLog(0xBu, v38, v19, 4, 1);
  if ((v15 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ((v15 & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  if (v37 + 2 <= v9)
  {
    v20 = v16[v37 + 1];
    v21 = v16[v37];
    if ((dword_2A192081C & 0x20000) != 0)
    {
      if (Gnm55_17GetMENvData(v16, v9, &v37, __str, 0x11C6u, 2260, 8))
      {
        LOWORD(v17) = v17 | 8;
      }
    }

    else
    {
      v37 += (v21 | (v20 << 8)) + 2;
    }

    if ((v21 | (v20 << 8)) == 0x300)
    {
      v22 = v37;
      if (v37 <= v9 && ((g_NmeaMask & 0x200) != 0 || LbsOsaTrace_IsLoggingAllowed(1u, 4, 0, 0)))
      {
        v27 = 0;
        v28 = &v16[v22 - ((v20 << 8) + v21) + 1];
        v29 = 0uLL;
        v30 = byte_2A1939000;
        do
        {
          v68 = v29;
          v69 = v29;
          v66 = v29;
          v67 = v29;
          v64 = v29;
          v65 = v29;
          v62 = v29;
          v63 = v29;
          v60 = v29;
          v61 = v29;
          v58 = v29;
          v59 = v29;
          v56 = v29;
          v57 = v29;
          v54 = v29;
          v55 = v29;
          v52 = v29;
          v53 = v29;
          v50 = v29;
          v51 = v29;
          v48 = v29;
          v49 = v29;
          v46 = v29;
          v47 = v29;
          v44 = v29;
          v45 = v29;
          v42 = v29;
          v43 = v29;
          v40 = v29;
          v41 = v29;
          *v38 = v29;
          v39 = v29;
          v31 = mach_continuous_time();
          v32 = snprintf(v38, 0x200uLL, "$PDXCD,%u,%u,%u,%u", (*(v30 + 200) * v31), 8, v27 / 0x60u + 1, 256);
          if (v32 < 0)
          {
            break;
          }

          v33 = v32;
          v34 = 0;
          do
          {
            if (v27 + v34 > 0x2FD || v33 > 0x1FFu)
            {
              break;
            }

            v35 = snprintf(&v38[v33], (512 - v33), ",%u", *(v28 + v34 - 1) | (*(v28 + v34 + 1) << 16));
            if (v35 < 0)
            {
              goto LABEL_19;
            }

            v33 += v35;
            v36 = v34 >= 0x5D;
            v34 += 3;
          }

          while (!v36);
          Gnm53_82UpdateLtlNmeaData(v38, v33);
          v28 += 96;
          v36 = v27 >= 0x2A0;
          v27 += 96;
          v29 = 0uLL;
          v30 = byte_2A1939000;
        }

        while (!v36);
      }
    }
  }

LABEL_19:
  if ((v15 & 0x10) != 0 && Gnm55_17GetMENvData(v16, v9, &v37, __str, 0x11C6u, 3028, 16))
  {
    LOWORD(v17) = v17 | 0x10;
  }

  Gnm53_09PrintKfCltAdc(__str);
  Gnm55_47SetNVDataCS(v73, 0xBC2u, 0x5D4u);
  v23 = v37;
  if (v37 == v9)
  {
    v71 = v17;
    v72 = Gnm27_04ComputeCS(__str, 6u);
    result = Gnm55_13WriteMENv(__str, 0x11C6u);
  }

  else
  {
    v24 = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    result = 0;
    if (v24)
    {
      bzero(v38, 0x410uLL);
      v25 = mach_continuous_time();
      v13 = snprintf(v38, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:Learnt ME NV Data LenRec,%u,LenCalc,%u\n", (*&g_MacClockTicksToMsRelation * v25), "GNM", 87, "Gnm53_44BackupLearntMENv", 770, v9, v23);
      v14 = v38;
      goto LABEL_26;
    }
  }

LABEL_27:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm53_56SetStlDivInd(void)
{
  v5 = *MEMORY[0x29EDCA608];
  g_StlDivergenceIndicator = 1;
  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:STL Divergence Bit Set\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 87, "Gnm53_56SetStlDivInd");
    result = LbsOsaTrace_WriteLog(0xBu, __str, v2, 2, 1);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm53_58SetLtlExtHWClk(void)
{
  v5 = *MEMORY[0x29EDCA608];
  g_IsExtClock = 1;
  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:ExtHW Clk Set\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 73, "Gnm53_58SetLtlExtHWClk");
    result = LbsOsaTrace_WriteLog(0xBu, __str, v2, 4, 1);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm53_63UpdateMasterLTLNv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v64 = *MEMORY[0x29EDCA608];
  bzero(v53, 0x11C6uLL);
  Gnm55_12ReadMENv(v53, 4550);
  if (!word_2A193BC20)
  {
    goto LABEL_38;
  }

  v6 = v54;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(v62, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(v62, 0x40FuLL, "%10u %s%c %s: LTL:MELearnings Present\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm53_63UpdateMasterLTLNv");
    LbsOsaTrace_WriteLog(0xBu, v62, v8, 4, 1);
  }

  v9 = g_PrevUsedLtl;
  if ((v6 & 1) == 0 || g_PrevUsedLtl != 1)
  {
LABEL_59:
    memcpy(v56, &g_LTLDataPPM, sizeof(v56));
    memcpy(v57, &word_2A193BC20, sizeof(v57));
    if ((v6 & 1) == 0 || v9 == 1)
    {
      p_CurrentReferenceTime = &v58;
      CurrentReferenceTime = Gnm53_11GetCurrentReferenceTime();
      Gnm55_46SetGenMasterLTLTime(v53, 0x11C6u);
      v43 = Gnm53_11GetCurrentReferenceTime();
    }

    else
    {
      v43 = g_AgeingTimeGpsSeconds;
      if (!g_AgeingTimeGpsSeconds)
      {
LABEL_65:
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
        {
          bzero(v62, 0x410uLL);
          v45 = mach_continuous_time();
          v46 = snprintf(v62, 0x40FuLL, "%10u %s%c %s: LTL:NVDataType,%u\n", (*&g_MacClockTicksToMsRelation * v45), "GNM", 73, "Gnm53_63UpdateMasterLTLNv", v6 | 3);
          LbsOsaTrace_WriteLog(0xBu, v62, v46, 4, 1);
        }

        v54 = v6 | 3;
        v55 = Gnm27_04ComputeCS(v53, 6u);
        bzero(&g_LTLDataPPM, 0x5E2uLL);
        g_AgeingTimeGpsSeconds = 0;
        Gnm55_47SetNVDataCS(v56, 0x11C6u, 0x5FAu);
        Gnm55_13WriteMENv(v53, 0x11C6u);
        result = gnssOsa_flushNv();
        goto LABEL_68;
      }

      p_CurrentReferenceTime = &CurrentReferenceTime;
    }

    *p_CurrentReferenceTime = v43;
    goto LABEL_65;
  }

  memset(v61, 0, 502);
  memcpy(v62, v56, sizeof(v62));
  memcpy(v63, v57, 0x1F6uLL);
  v12 = 0;
  v13 = 0;
  do
  {
    if (*(&g_LTLDataPPM + v12 + 1004) > 0x28u)
    {
      ++v13;
    }

    v12 += 2;
  }

  while (v12 != 502);
  if (!v13)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  do
  {
    v17 = 0;
    v18 = *(&g_LTLDataPPM + v14 + 502);
    v19 = k_UncertainityPPB;
    while (k_CountRange[v17] > v18)
    {
      ++v17;
      ++v19;
      if (v17 == 5)
      {
        v20 = 0;
        v19 = &Gnm53_66GetUncertfromTempRange(unsigned short)::a_UncertainityPPB;
        while (Gnm53_66GetUncertfromTempRange(unsigned short)::a_TempRange[v20] > v14)
        {
          ++v20;
          ++v19;
          if (v20 == 4)
          {
            v21 = 7500.0;
            goto LABEL_20;
          }
        }

        break;
      }
    }

    LOWORD(v10) = *v19;
    v21 = *&v10;
LABEL_20:
    v22 = 0;
    v23 = *&v63[2 * v14];
    v24 = k_UncertainityPPB;
    while (k_CountRange[v22] > v23)
    {
      ++v22;
      ++v24;
      if (v22 == 5)
      {
        v25 = 0;
        v24 = &Gnm53_66GetUncertfromTempRange(unsigned short)::a_UncertainityPPB;
        while (Gnm53_66GetUncertfromTempRange(unsigned short)::a_TempRange[v25] > v14)
        {
          ++v25;
          ++v24;
          if (v25 == 4)
          {
            v26 = 7500.0;
            goto LABEL_28;
          }
        }

        break;
      }
    }

    LOWORD(v11) = *v24;
    v26 = *&v11;
LABEL_28:
    v10 = v26 * v26 + v21 * v21;
    v27 = ((*(&g_LTLDataPPM + v14) - *&v62[v14]) * 1000.0);
    v11 = v27 * v27;
    if (v11 > v10 * 0.433333333 * 0.433333333)
    {
      v10 = sqrt(v10);
      v61[v14] = v10;
      if (v23 > 0x28)
      {
        ++v16;
      }

      if (v18 > 0x28)
      {
        ++v15;
      }
    }

    ++v14;
  }

  while (v14 != 251);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(v60, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = v15;
    v30 = snprintf(v60, 0x40FuLL, "%10u %s%c %s: LTL:LearnedBins,%u,EffectiveBins,%u\n", (*&g_MacClockTicksToMsRelation * v28), "GNM", 73, "Gnm53_62EvaluateMasterLTL", v13, v15);
    LbsOsaTrace_WriteLog(0xBu, v60, v30, 4, 1);
  }

  else
  {
    v29 = v15;
  }

  if (v13 <= (2 * v29))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(v60, 0x410uLL);
      v41 = mach_continuous_time();
      v42 = snprintf(v60, 0x40FuLL, "%10u %s%c %s: LTL:Use Learnt Initial LTL Table + Default Count\n", (*&g_MacClockTicksToMsRelation * v41), "GNM", 73, "Gnm53_62EvaluateMasterLTL");
      LbsOsaTrace_WriteLog(0xBu, v60, v42, 4, 1);
    }

    memset_pattern16(&word_2A193BC20, asc_29972AD50, 0x1F6uLL);
    goto LABEL_58;
  }

  if (v15 | v16)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(v60, 0x410uLL);
      v36 = mach_continuous_time();
      v37 = snprintf(v60, 0x40FuLL, "%10u %s%c %s: LTL:Use Master LTL Table + Effective Uncertainty\n", (*&g_MacClockTicksToMsRelation * v36), "GNM", 73, "Gnm53_62EvaluateMasterLTL");
      LbsOsaTrace_WriteLog(0xBu, v60, v37, 4, 1);
    }

    memcpy(&g_LTLDataPPM, v62, 0x3ECuLL);
    memcpy(&word_2A193BC20, v63, 0x1F6uLL);
    for (i = 0; i != 251; ++i)
    {
      if (v61[i])
      {
        v39 = 0;
        while (k_UncertainityPPB[v39] < v61[i])
        {
          if (++v39 == 5)
          {
            v40 = 40;
            goto LABEL_52;
          }
        }

        v40 = k_CountRange[v39];
LABEL_52:
        *(&g_LTLDataPPM + i + 502) = v40;
      }
    }

    goto LABEL_58;
  }

  v48 = 0;
  v49 = 0;
  do
  {
    if (*&v63[v48] > 0x28u)
    {
      ++v49;
    }

    v48 += 2;
  }

  while (v48 != 502);
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (v13 > v49)
  {
    if (IsLoggingAllowed)
    {
      bzero(v60, 0x410uLL);
      v51 = mach_continuous_time();
      v52 = snprintf(v60, 0x40FuLL, "%10u %s%c %s: LTL:Use Learnt Initial LTL Table\n", (*&g_MacClockTicksToMsRelation * v51), "GNM", 73, "Gnm53_62EvaluateMasterLTL");
      LbsOsaTrace_WriteLog(0xBu, v60, v52, 4, 1);
    }

LABEL_58:
    v9 = g_PrevUsedLtl;
    goto LABEL_59;
  }

  if (IsLoggingAllowed)
  {
LABEL_37:
    bzero(v60, 0x410uLL);
    v31 = mach_continuous_time();
    v32 = snprintf(v60, 0x40FuLL, "%10u %s%c %s: LTL:Retain Master LTL Table\n", (*&g_MacClockTicksToMsRelation * v31), "GNM", 73, "Gnm53_62EvaluateMasterLTL");
    LbsOsaTrace_WriteLog(0xBu, v60, v32, 4, 1);
  }

LABEL_38:
  bzero(&g_LTLDataPPM, 0x5E2uLL);
  g_AgeingTimeGpsSeconds = 0;
  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (result)
  {
    bzero(v62, 0x410uLL);
    v34 = mach_continuous_time();
    v35 = snprintf(v62, 0x40FuLL, "%10u %s%c %s: LTL:Update, Ageing Not Required\n", (*&g_MacClockTicksToMsRelation * v34), "GNM", 73, "Gnm53_63UpdateMasterLTLNv");
    result = LbsOsaTrace_WriteLog(0xBu, v62, v35, 4, 1);
  }

LABEL_68:
  v47 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Gnm53_64CopyLearntLTL(unsigned __int8 *a1, unsigned int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (a2 > 0x5E5)
  {
    __n_2 = 0;
    memcpy_s("Gnm53_64CopyLearntLTL", 1975, &__n_2, 2u, a1, 2uLL);
    if (__n_2 == 1004)
    {
      __n = 0;
      memcpy_s("Gnm53_64CopyLearntLTL", 1985, &__n, 2u, a1 + 1006, 2uLL);
      v2 = __n == 502;
      if (__n == 502)
      {
        v5 = &g_LTLDataPPM;
        memcpy_s("Gnm53_64CopyLearntLTL", 1997, &g_LTLDataPPM, __n_2, a1 + 2, __n_2);
        v6 = &word_2A193BC20;
        v22 = &a1[(__n_2 + 4)];
        memcpy_s("Gnm53_64CopyLearntLTL", 2004, &word_2A193BC20, __n, v22, __n);
        if ((g_NmeaMask & 0x200) != 0 || LbsOsaTrace_IsLoggingAllowed(1u, 4, 0, 0))
        {
          v7 = 0;
          v8 = 251;
          do
          {
            memset(__n_4, 0, 512);
            v9 = mach_continuous_time();
            v10 = snprintf(__n_4, 0x200uLL, "$PDXLL,%u,%u,%u,%u", (*&g_MacClockTicksToMsRelation * v9), 13, v7 / 0x14u + 1, 251);
            if (v10 < 0)
            {
              break;
            }

            v11 = v10;
            for (i = 0; i != 20; ++i)
            {
              if (v8 == i)
              {
                break;
              }

              v13 = v11;
              if (v11 > 0x1FFu)
              {
                break;
              }

              v14 = snprintf(__n_4 + v11, 512 - v11, ",%0.1f,%d,%u", (vcvts_n_f32_u32(v7 + i, 1uLL) + -30.0), (v5[i] * 1000.0), v6[i]);
              if (v14 < 0)
              {
                goto LABEL_18;
              }

              v11 = v14 + v13;
            }

            Gnm53_82UpdateLtlNmeaData(__n_4, v11);
            v8 -= 20;
            v6 += 20;
            v5 += 20;
            v15 = v7 >= 0xE7;
            v7 += 20;
          }

          while (!v15);
        }

LABEL_18:
        Gnm53_06PrintLTLData(a1 + 2, __n_2, v22, __n);
        v2 = 1;
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__n_4, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:Learnt ME Confidence Data\n", (*&g_MacClockTicksToMsRelation * v19), "GNM", 87, "Gnm53_64CopyLearntLTL", 770);
        LbsOsaTrace_WriteLog(0xBu, __n_4, v20, 2, 1);
      }
    }

    else
    {
      v2 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__n_4, 0x410uLL);
        mach_continuous_time();
        v3 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:Learnt ME Frequency Offsets\n");
        goto LABEL_21;
      }
    }
  }

  else
  {
    v2 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__n_4, 0x410uLL);
      v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:Learnt ME LTL Data LenRecv,%u\n", v21);
LABEL_21:
      LbsOsaTrace_WriteLog(0xBu, __n_4, v3, 2, 1);
      v2 = 0;
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return v2;
}

void Gnm53_71DeInitializeXOParams(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (g_XOTimerStatus == 1)
  {
    if (AgpsFsmStopTimer(8399622) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 87, "Gnm53_71DeInitializeXOParams", 1545);
      LbsOsaTrace_WriteLog(0xBu, __str, v1, 2, 1);
    }

    g_XOTimerStatus = 0;
  }

  g_PrevUsedLtl = 0;
  bzero(&g_LTLDataPPM, 0x5E2uLL);
  g_AgeingTimeGpsSeconds = 0;
  v2 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm53_82UpdateLtlNmeaData(char *a1, unsigned __int16 a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v9 = a2;
  if (!HswUtil_AddNmeaCS(a1, 0x200u, &v9))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BytesWritten,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm53_82UpdateLtlNmeaData", 772, v9);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v7, 0, 1);
    }

    goto LABEL_10;
  }

  result = LbsOsaTrace_IsLoggingAllowed(1u, 4, 0, 0);
  if (result)
  {
    result = LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, a1, v9);
  }

  if ((g_NmeaMask & 0x200) == 0)
  {
LABEL_10:
    v8 = *MEMORY[0x29EDCA608];
    return result;
  }

  v4 = v9;
  v5 = *MEMORY[0x29EDCA608];

  return Gnm15_09UpdateNmeaData(a1, v4);
}

uint64_t Gnm52_11HandleStartTimeMarkRsp(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(a1 + 12))
      {
        v3 = 84;
      }

      else
      {
        v3 = 70;
      }

      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_START_TIMEMARK_RSP Success,%c\n", v2, "GNM", 73, "Gnm52_11HandleStartTimeMarkRsp", v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v4, 4, 1);
    }

    if (*(a1 + 12) == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }

    Gnm11_00ApiStatusCB(v5, 0, 0, 18);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm52_11HandleStartTimeMarkRsp", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 0, 1);
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm52_13HandleTimeMarkEvent(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm52_13HandleTimeMarkEvent", 517);
    v8 = 0;
LABEL_12:
    LbsOsaTrace_WriteLog(0xBu, __str, v7, v8, 1);
    goto LABEL_13;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_EVENT_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm52_13HandleTimeMarkEvent");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GpsWk,%d,GpsTOW,%.9fms,GpsTimeUnc,%.9fms,UtcCorr,%f,BBTick,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm52_13HandleTimeMarkEvent", *(a1 + 18), *(a1 + 24), *(a1 + 32), *(a1 + 48), *(a1 + 56));
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if (!off_2A19268E8)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm52_13HandleTimeMarkEvent", 258);
    v8 = 2;
    goto LABEL_12;
  }

  off_2A19268E8(0, a1 + 16);
LABEL_13:
  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm52_22HandleStartTimeMarkReq(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_START_TIMEMARK_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm52_22HandleStartTimeMarkReq");
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
    }

    off_2A19268E8 = *(a1 + 16);
    v4 = gnssOsa_Calloc("Gnm52_22HandleStartTimeMarkReq", 114, 1, 0xCuLL);
    if (v4)
    {
      v5 = v4;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_START_TIMEMARK_REQ =>GNC\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm52_22HandleStartTimeMarkReq");
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
      }

      AgpsSendFsmMsg(128, 134, 8390912, v5);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm52_22HandleStartTimeMarkReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 0, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm_StartTimeMarkSesion(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_StartTimeMarkSesion");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = gnssOsa_Calloc("Gnm_StartTimeMarkSesion", 156, 1, 0x18uLL);
    if (v4)
    {
      v4[2] = a1;
      AgpsSendFsmMsg(128, 128, 8405248, v4);
      v5 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm_StartTimeMarkSesion");
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
        v5 = 0;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm_StartTimeMarkSesion");
        LbsOsaTrace_WriteLog(0xBu, __str, v13, 4, 1);
      }

      v5 = 5;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm_StartTimeMarkSesion", 258);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm_StartTimeMarkSesion");
      v5 = 1;
      LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
    }

    else
    {
      v5 = 1;
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return v5;
}

void Gnm03_51StartHalConnTimer(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((g_HalStatusInfo & 1) == 0)
  {
    if (AgpsFsmStartTimer(0x803006u, 0x3A98u))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v0 = mach_continuous_time();
        v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 87, "Gnm03_51StartHalConnTimer", 1544);
        LbsOsaTrace_WriteLog(0xBu, __str, v1, 2, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v2 = mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DurMs,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_51StartHalConnTimer", 15000);
        LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
      }

      LOBYTE(g_HalStatusInfo) = 1;
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm03_64GetPlcGnssHw(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (SHIDWORD(g_HWStatus) <= 2471)
  {
    if (HIDWORD(g_HWStatus) == 848)
    {
      result = 5;
      goto LABEL_14;
    }

    if (HIDWORD(g_HWStatus) == 1107)
    {
      result = 2;
      goto LABEL_14;
    }
  }

  else
  {
    switch(HIDWORD(g_HWStatus))
    {
      case 0x9A8:
        result = 3;
        goto LABEL_14;
      case 0x9A9:
        result = 4;
        goto LABEL_14;
      case 0xD67:
        result = 1;
        goto LABEL_14;
    }
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ProdId,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm03_64GetPlcGnssHw", 770, HIDWORD(g_HWStatus));
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 2, 1);
    result = 0;
  }

LABEL_14:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm03_11SetHWRev(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HAL_HW_REV_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_11SetHWRev");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    g_HWStatus[0] = 1;
    memcpy_s("Gnm03_11SetHWRev", 359, &qword_2A1920A8C, 0xB4u, (a1 + 12), 0xB4uLL);
    if (g_HWStatus[0] != 1)
    {
      goto LABEL_18;
    }

    if (qword_2A1920A8C <= 2471)
    {
      if (qword_2A1920A8C != 848 && qword_2A1920A8C != 1107)
      {
LABEL_16:
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ProdId,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm03_07ValidateHWSupport", 264, qword_2A1920A8C);
          LbsOsaTrace_WriteLog(0xBu, __str, v9, 0, 1);
        }

LABEL_18:
        Hal_StopConn(Gnm_HalStopCnf);
        Gnm03_52StartHalDisConnTimer();
        snprintf(v12, 0x400uLL, "ASSERT: %s %d HWS : HW not supported by stack", "Gnm03_11SetHWRev", 367);
        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v10), "OSA", 69, "Gnm03_11SetHWRev", v12);
          LbsOsaTrace_WriteLog(0xEu, __str, v11, 0, 1);
        }

        gnssOsa_FlushLog();
        __assert_rtn("Gnm03_11SetHWRev", "gnm03HwStatus.cpp", 368, "false && HW not supported by stack");
      }
    }

    else if ((qword_2A1920A8C - 2472) >= 2 && qword_2A1920A8C != 3431)
    {
      goto LABEL_16;
    }

    if ((*(a1 + 192) & 1) == 0)
    {
      Gnm31_06SendUserCfgLsim();
      Gnm32_11SendPltCfgLsim();
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm03_11SetHWRev", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

void Gnm03_52StartHalDisConnTimer(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((g_HalStatusInfo & 0x100) == 0)
  {
    if (AgpsFsmStartTimer(0x803106u, 0x3A98u))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v0 = mach_continuous_time();
        v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 87, "Gnm03_52StartHalDisConnTimer", 1544);
        LbsOsaTrace_WriteLog(0xBu, __str, v1, 2, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v2 = mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DurMs,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_52StartHalDisConnTimer", 15000);
        LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
      }

      BYTE1(g_HalStatusInfo) = 1;
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void *Gnm03_12HalStartCnf(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HAL_START_CNF\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_12HalStartCnf");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (g_HalStatusInfo != 1)
    {
      goto LABEL_15;
    }

    if (AgpsFsmStopTimer(8400902))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm03_53StopHalConnTimer", 1545);
        v6 = 2;
LABEL_13:
        LbsOsaTrace_WriteLog(0xBu, __str, v5, v6, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm03_53StopHalConnTimer");
      v6 = 4;
      goto LABEL_13;
    }

    LOBYTE(g_HalStatusInfo) = 0;
LABEL_15:
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 1, 0, 0))
    {
LABEL_31:
      Gnm03_19HwStartCnf();
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmState,Active\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 77, "Gnm03_12HalStartCnf", 261);
        LbsOsaTrace_WriteLog(0xBu, __str, v18, 3, 1);
      }

      result = &a_GnmActiveState;
      goto LABEL_34;
    }

    bzero(v20, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = qword_2A1920A8C;
    if (qword_2A1920A8C <= 2471)
    {
      if (qword_2A1920A8C == 848)
      {
        v13 = "Autumn";
        goto LABEL_30;
      }

      if (qword_2A1920A8C == 1107)
      {
        v13 = "Compact";
        goto LABEL_30;
      }
    }

    else
    {
      switch(qword_2A1920A8C)
      {
        case 0x9A8:
          v13 = "Sunshine";
          goto LABEL_30;
        case 0x9A9:
          v13 = "Spring";
          goto LABEL_30;
        case 0xD67:
          v13 = "Bright";
LABEL_30:
          v16 = snprintf(v20, 0x40FuLL, "%10u %s%c %s: HW,%s,Maj,%u,Min,%u\n", v11, "GNM", 65, "Gnm03_12HalStartCnf", v13, HIDWORD(qword_2A1920A8C), dword_2A1920A94);
          LbsOsaTrace_WriteLog(0xBu, v20, v16, 1, 1);
          goto LABEL_31;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ProdType,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 87, "Gnm03_03GetGnssHwStr", 770, v12);
      LbsOsaTrace_WriteLog(0xBu, __str, v15, 2, 1);
    }

    v13 = "Unknown";
    goto LABEL_30;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm03_12HalStartCnf", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 0, 1);
  }

  result = 0;
LABEL_34:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm03_19HwStartCnf(void)
{
  v0 = 0;
  v27 = *MEMORY[0x29EDCA608];
  byte_2A1920B40 = 0;
  while (1)
  {
    v1 = v0;
    v2 = *(pg_AgpsFsmTable + 168 * v0 + 4);
    if (!*(pg_AgpsFsmTable + 168 * v0 + 4))
    {
      break;
    }

    ++v0;
    if (v2 == 128)
    {
      v3 = *(pg_AgpsFsmTable + 168 * v1 + 96);
      if (v3 == &a_GnmInitState || v3 == &a_GnmResetState)
      {
        g_HalStatusInfo = 0;
        if (v3 == &a_GnmInitState)
        {
          v5 = gnssOsa_Calloc("Gnm03_63SendHwTypeGnc", 166, 1, 0x10uLL);
          if (v5)
          {
            v6 = v5;
            v5[3] = qword_2A1920A8C;
            if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v7 = mach_continuous_time();
              v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_HW_TYPE_IND =>GNC HwType,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm03_63SendHwTypeGnc", v6[3]);
              LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
            }

            AgpsSendFsmMsg(128, 134, 8788224, v6);
          }
        }

        Gnm_03_05UpdtHWStatusGnc(1);
        if (g_BootMode == 2)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xBu, 1, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v15 = mach_continuous_time();
            v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ProductionMode\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 65, "Gnm03_19HwStartCnf");
            LbsOsaTrace_WriteLog(0xBu, __str, v16, 1, 1);
          }

          Gnm10_29SendFwActivity(2, 1);
        }

        else
        {
          Gnm35_12SendDbgCfg(v9, v10, v11, v12, v13, v14);
          if (v3 == &a_GnmInitState)
          {
            Gnm28_21InitRestorePeNv();
            Gnm31_05SendUserCfgGnc();
            Gnm32_10SendPltCfgGnc();
          }

          if (v3 == &a_GnmResetState)
          {
            *__str = qword_2A193B7D6;
            *&__str[5] = *(&qword_2A193B7D6 + 5);
            Gnm10_29SendFwActivity(3, 1);
            v17 = Gnm38_12SendSBCfg(236, 83, __str);
          }

          Gnm53_27InitializeVarMENv(v17, v18, v19, v20, v21, v22);
        }

        if (v3 == &a_GnmInitState)
        {
          Gnm03_04SendHWStatus(*(&g_GnmCBs + 1), 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 1, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v23 = mach_continuous_time();
          v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Completed\n", (*&g_MacClockTicksToMsRelation * v23), "GNM", 65, "Gnm03_19HwStartCnf", 1292);
          LbsOsaTrace_WriteLog(0xBu, __str, v24, 1, 1);
        }
      }

      break;
    }
  }

  v25 = *MEMORY[0x29EDCA608];
}

void *Gnm03_14HalStopCnf(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(&__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HAL_STOP_CNF\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_14HalStopCnf");
    LbsOsaTrace_WriteLog(0xBu, &__str, v3, 4, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(&__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm03_14HalStopCnf", 517);
      LbsOsaTrace_WriteLog(0xBu, &__str, v8, 0, 1);
    }

    goto LABEL_29;
  }

  if (*(a1 + 12) == 1)
  {
    if (BYTE1(g_HalStatusInfo) != 1)
    {
LABEL_23:
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(&__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: HALStop success,starting again\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 73, "Gnm03_14HalStopCnf");
        LbsOsaTrace_WriteLog(0xBu, &__str, v18, 4, 1);
      }

      ++BYTE2(g_HalStatusInfo);
      LOBYTE(__str) = 0;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0;
      Gnm32_21GetHwConfig(&__str);
      Hal_SetConfigurations(&__str);
      if (((g_GnssHw - 1) & 0xFC) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = (g_GnssHw - 1) + 1;
      }

      Hal_StartConn(v19, g_BootMode == 2, Gnm_HalStartCnf);
      Gnm03_51StartHalConnTimer();
LABEL_29:
      result = 0;
      goto LABEL_30;
    }

    if (AgpsFsmStopTimer(8401158))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(&__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm03_54StopHalDisConnTimer", 1545);
        v6 = 2;
LABEL_21:
        LbsOsaTrace_WriteLog(0xBu, &__str, v5, v6, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(&__str, 0x410uLL);
      v16 = mach_continuous_time();
      v5 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: Success\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm03_54StopHalDisConnTimer");
      v6 = 4;
      goto LABEL_21;
    }

    BYTE1(g_HalStatusInfo) = 0;
    goto LABEL_23;
  }

  v9 = HIBYTE(g_HalStatusInfo);
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0);
  if (v9 <= 4)
  {
    if (IsLoggingAllowed)
    {
      bzero(&__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx HALStop fail Attempt,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm03_14HalStopCnf", 1296, HIBYTE(g_HalStatusInfo));
      LbsOsaTrace_WriteLog(0xBu, &__str, v12, 0, 1);
    }

    ++HIBYTE(g_HalStatusInfo);
    Hal_StopConn(Gnm_HalStopCnf);
    Gnm03_52StartHalDisConnTimer();
    goto LABEL_29;
  }

  if (IsLoggingAllowed)
  {
    bzero(&__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx HALStop fail Attempt,%u,GNSS service stopping\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 69, "Gnm03_14HalStopCnf", 1296, HIBYTE(g_HalStatusInfo));
    LbsOsaTrace_WriteLog(0xBu, &__str, v14, 0, 1);
  }

  Gnm_03_05UpdtHWStatusGnc(0);
  if (g_GnssHw - 1 >= 3)
  {
    snprintf(v23, 0x400uLL, "ASSERT: %s %d HWD : HW deinit failed max attempts", "Gnm03_14HalStopCnf", 475);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(&__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v21), "OSA", 69, "Gnm03_14HalStopCnf", v23);
      LbsOsaTrace_WriteLog(0xEu, &__str, v22, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Gnm03_14HalStopCnf", "gnm03HwStatus.cpp", 476, "false && HW deinit failed max attempts");
  }

  Gnm03_60BaseBandResetReq(1);
  result = &a_GnmResetState;
LABEL_30:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm_03_05UpdtHWStatusGnc(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm_03_05UpdtHWStatusGnc", 249, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v2[12] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_HW_STATUS_IND =>GNC HwStatus,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_03_05UpdtHWStatusGnc", a1);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(128, 134, 8391939, v3);
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm03_60BaseBandResetReq(uint64_t result)
{
  v6 = *MEMORY[0x29EDCA608];
  if (off_2A19268F8)
  {
    v1 = result;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Reason,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 69, "Gnm03_60BaseBandResetReq", v1);
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 0, 1);
    }

    result = off_2A19268F8(v1);
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void *Gnm03_15HandleHwStatus(uint64_t a1)
{
  v38 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HW_STATUS_IND\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm03_15HandleHwStatus");
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
LABEL_27:
      result = 0;
      goto LABEL_33;
    }

    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 69, "Gnm03_15HandleHwStatus", 517);
    v16 = 0;
LABEL_26:
    LbsOsaTrace_WriteLog(0xBu, __str, v15, v16, 1);
    goto LABEL_27;
  }

  v10 = *(a1 + 12);
  if (v10 <= 9)
  {
    if (v10 != 8)
    {
      if (v10 == 9)
      {
        if (g_GnssHw - 1 >= 3)
        {
          snprintf(v36, 0x400uLL, "ASSERT: %s %d TRW : Transport write failed after max retries", "Gnm03_15HandleHwStatus", 522);
          if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v34 = mach_continuous_time();
            v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v34), "OSA", 69, "Gnm03_15HandleHwStatus", v36);
            LbsOsaTrace_WriteLog(0xEu, __str, v35, 0, 1);
          }

          gnssOsa_FlushLog();
          __assert_rtn("Gnm03_15HandleHwStatus", "gnm03HwStatus.cpp", 523, "false && Transport write failed after max retries");
        }

        v13 = 8;
        goto LABEL_17;
      }

LABEL_28:
      v23 = LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0);
      if (v23)
      {
        bzero(__str, 0x410uLL);
        v29 = mach_continuous_time();
        v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HWStatus,%u\n", (*&g_MacClockTicksToMsRelation * v29), "GNM", 69, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
        v23 = LbsOsaTrace_WriteLog(0xBu, __str, v30, 0, 1);
      }

      Gnm53_63UpdateMasterLTLNv(v23, v24, v25, v26, v27, v28);
      Gnm03_06InitHWReset();
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v31 = mach_continuous_time();
        v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmState,Active->Reset\n", (*&g_MacClockTicksToMsRelation * v31), "GNM", 77, "Gnm03_15HandleHwStatus", 261);
        LbsOsaTrace_WriteLog(0xBu, __str, v32, 3, 1);
      }

      goto LABEL_32;
    }

    Gnm53_63UpdateMasterLTLNv(IsLoggingAllowed, v3, v4, v5, v6, v7);
    if ((LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0) & 1) == 0)
    {
      goto LABEL_27;
    }

    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HWStatus,%u\n", (*&g_MacClockTicksToMsRelation * v22), "GNM", 73, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
    v16 = 4;
    goto LABEL_26;
  }

  if (v10 == 10)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HWStatus,%u Soft Reset Triggered\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 87, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
      LbsOsaTrace_WriteLog(0xBu, __str, v18, 2, 1);
    }

    Gnm03_06InitHWReset();
    goto LABEL_32;
  }

  if (v10 != 11)
  {
    if (v10 == 12)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HWStatus,%u Soft Reset Failure\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
        LbsOsaTrace_WriteLog(0xBu, __str, v12, 0, 1);
      }

      v13 = 9;
LABEL_17:
      Gnm03_60BaseBandResetReq(v13);
LABEL_32:
      result = &a_GnmResetState;
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HWStatus,%u Soft Reset Successful\n", (*&g_MacClockTicksToMsRelation * v19), "GNM", 65, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
    LbsOsaTrace_WriteLog(0xBu, __str, v20, 1, 1);
  }

  Gnm03_19HwStartCnf();
  result = &a_GnmActiveState;
LABEL_33:
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm03_06InitHWReset(void)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Initializing HW Reset\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 65, "Gnm03_06InitHWReset");
    LbsOsaTrace_WriteLog(0xBu, __str, v1, 1, 1);
  }

  if (BYTE1(dword_2A19397C6) == 1)
  {
    if (AgpsFsmStopTimer(8400390) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm03_06InitHWReset", 1545);
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 2, 1);
    }

    BYTE1(dword_2A19397C6) = 0;
    if (HIBYTE(dword_2A19397C6) == 1)
    {
      byte_2A19397CA = 11;
    }

    Gnm10_31SendMEWakeRsp(0);
    Gnm10_29SendFwActivity(1, 0);
  }

  if (off_2A19268F0)
  {
    off_2A19268F0(1, 0, 0);
  }

  if (g_HWStatus[0] == 1)
  {
    v4 = qword_2A1920A8C;
    if (qword_2A1920A8C == 3431 && HIDWORD(qword_2A1920A8C) == 2 && dword_2A1920A94 == 1)
    {
      goto LABEL_27;
    }

    v7 = g_GnssHw;
  }

  else
  {
    v7 = g_GnssHw;
    if (!g_GnssHw)
    {
LABEL_27:
      g_HalStatusInfo = 0x1000000;
      Hal_StopConn(Gnm_HalStopCnf);
      Gnm03_52StartHalDisConnTimer();
      goto LABEL_28;
    }

    v4 = qword_2A1920A8C;
  }

  v8 = v4 == 848;
  v9 = v7 == 4;
  if (g_HWStatus[0])
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    goto LABEL_27;
  }

LABEL_28:
  Gnm_03_05UpdtHWStatusGnc(2);
  v11 = *MEMORY[0x29EDCA608];
}

void *Gnm03_16HandleHWInitFail(uint64_t a1)
{
  v36 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(&__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HAL_INIT_FAIL\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_16HandleHWInitFail");
    LbsOsaTrace_WriteLog(0xBu, &__str, v3, 4, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(&__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm03_16HandleHWInitFail", 517);
      LbsOsaTrace_WriteLog(0xBu, &__str, v10, 0, 1);
    }

    goto LABEL_15;
  }

  Hal_StopConn(0);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(&__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm03_16HandleHWInitFail", 1294);
    LbsOsaTrace_WriteLog(0xBu, &__str, v5, 4, 1);
  }

  if (BYTE2(g_HalStatusInfo) <= 4u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 1, 0, 0))
    {
      bzero(&__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx WaitBeforeStart,%ums\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 65, "Gnm03_16HandleHWInitFail", 1291, 1000);
      LbsOsaTrace_WriteLog(0xBu, &__str, v7, 1, 1);
    }

    usleep(0xF4240u);
    ++BYTE2(g_HalStatusInfo);
    LOBYTE(__str) = 0;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    Gnm32_21GetHwConfig(&__str);
    Hal_SetConfigurations(&__str);
    if (((g_GnssHw - 1) & 0xFC) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = (g_GnssHw - 1) + 1;
    }

    Hal_StartConn(v8, g_BootMode == 2, Gnm_HalStartCnf);
    Gnm03_51StartHalConnTimer();
LABEL_15:
    result = 0;
    goto LABEL_20;
  }

  v12 = *(a1 + 12);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(&__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx Err,%hhu\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 69, "Gnm03_20HwStartFailure", 1293, v12);
    LbsOsaTrace_WriteLog(0xBu, &__str, v14, 0, 1);
  }

  byte_2A1920B40 = v12;
  Gnm_03_05UpdtHWStatusGnc(0);
  Gnm03_04SendHWStatus(*(&g_GnmCBs + 1), 0, 0);
  if (g_GnssHw - 1 >= 3)
  {
    snprintf(v18, 0x400uLL, "ASSERT: %s %d HWI : HW init failed max attempts", "Gnm03_16HandleHWInitFail", 624);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(&__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v16), "OSA", 69, "Gnm03_16HandleHWInitFail", v18);
      LbsOsaTrace_WriteLog(0xEu, &__str, v17, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Gnm03_16HandleHWInitFail", "gnm03HwStatus.cpp", 625, "false && HW init failed max attempts");
  }

  Gnm03_60BaseBandResetReq(0);
  result = &a_GnmResetState;
LABEL_20:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm03_17HandleGetHwInitStatus(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HW_INIT_STATUS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_17HandleGetHwInitStatus");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm03_04SendHWStatus(*(a1 + 16), *(a1 + 12), 0);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm03_17HandleGetHwInitStatus", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm03_04SendHWStatus(uint64_t (*a1)(void, uint64_t, _OWORD *), uint64_t a2, char a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = 0u;
  memset(v21, 0, 26);
  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  if (a1)
  {
    v5 = 0;
    BYTE1(v17[0]) = byte_2A1920B40;
    while (1)
    {
      v6 = v5;
      v7 = *(pg_AgpsFsmTable + 168 * v5 + 4);
      if (!*(pg_AgpsFsmTable + 168 * v5 + 4))
      {
        break;
      }

      ++v5;
      if (v7 == 128)
      {
        v8 = *(pg_AgpsFsmTable + 168 * v6 + 96);
        if (a3)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    v8 = 0;
    if (a3)
    {
LABEL_12:
      LOBYTE(v17[0]) = 1;
      WORD1(v17[0]) = qword_2A1920A8C;
      v12 = vmovn_s32(*(&qword_2A1920A8C + 4));
      DWORD1(v17[0]) = vuzp1_s8(v12, v12).u32[0];
      *(&v17[1] + 12) = *algn_2A1920AB4;
      v18 = unk_2A1920AC8;
      LODWORD(v19[0]) = dword_2A1920AD8;
      DWORD1(v19[1]) = dword_2A1920AEC;
      *(v19 + 4) = xmmword_2A1920ADC;
      *(&v19[1] + 8) = *algn_2A1920AF0;
      DWORD2(v19[2]) = dword_2A1920B00;
      HIDWORD(v19[3]) = dword_2A1920B14;
      *(&v19[2] + 12) = *algn_2A1920B04;
      v20 = unk_2A1920B18;
      *(v21 + 4) = xmmword_2A1920B2C;
      LODWORD(v21[0]) = dword_2A1920B28;
      DWORD1(v21[1]) = dword_2A1920B3C;
      HIDWORD(v17[2]) = dword_2A1920AC4;
      DWORD2(v17[1]) = dword_2A1920AB0;
      *(v17 + 8) = unk_2A1920AA0;
      BYTE8(v21[1]) = 2;
      goto LABEL_13;
    }

LABEL_10:
    if (v8 != &a_GnmInitState && v8 != &a_GnmResetState)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HwStatusCB called\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 73, "Gnm03_04SendHWStatus");
      LbsOsaTrace_WriteLog(0xBu, __str, v14, 4, 1);
    }

    result = a1(0, a2, v17);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm03_04SendHWStatus", 258);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm03_18InitializeHw(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(&__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HW_INIT\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_18InitializeHw");
    LbsOsaTrace_WriteLog(0xBu, &__str, v3, 4, 1);
  }

  if (a1)
  {
    if (g_IsHwInit == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
      {
        bzero(&__str, 0x410uLL);
        v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v10 = *(a1 + 12);
        v11 = *(a1 + 13);
        v5 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx ExistingHw,%hhu,ExitingBootMode,%hhu,ReqHw,%hhu,ReqBootMode,%hhu\n", v4, "GNM");
LABEL_9:
        LbsOsaTrace_WriteLog(0xBu, &__str, v5, 0, 1);
      }
    }

    else
    {
      g_GnssHw = *(a1 + 12);
      g_BootMode = *(a1 + 13);
      g_IsHwInit = 1;
      v6 = *(a1 + 24);
      *(&g_GnmCBs + 1) = *(a1 + 16);
      off_2A19268F8 = v6;
      g_HalCallbacks = Gnm_HardwareStatusNotif;
      LOBYTE(__str) = 0;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0;
      Gnm32_21GetHwConfig(&__str);
      Hal_SetConfigurations(&__str);
      if (((g_GnssHw - 1) & 0xFC) != 0)
      {
        v7 = 0;
      }

      else
      {
        v7 = (g_GnssHw - 1) + 1;
      }

      Hal_StartConn(v7, g_BootMode == 2, Gnm_HalStartCnf);
      Gnm03_51StartHalConnTimer();
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(&__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(&__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_9;
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm03_40DiscardResetReqGnc(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_HW_RESET_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm03_40DiscardResetReqGnc");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 2, 1);
  }

  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm03_40DiscardResetReqGnc", 1028);
      v6 = 2;
LABEL_8:
      LbsOsaTrace_WriteLog(0xBu, __str, v5, v6, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm03_40DiscardResetReqGnc", 517);
    v6 = 0;
    goto LABEL_8;
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

void *Gnm03_41HandleResetReqGnc(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_HW_RESET_REQ\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm03_41HandleResetReqGnc");
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

  if (a1)
  {
    Gnm53_63UpdateMasterLTLNv(IsLoggingAllowed, v3, v4, v5, v6, v7);
    if (g_HWStatus[0] == 1)
    {
      v10 = qword_2A1920A8C;
      if (qword_2A1920A8C == 3431 && HIDWORD(qword_2A1920A8C) == 2 && dword_2A1920A94 == 1)
      {
        goto LABEL_22;
      }

      v13 = g_GnssHw;
    }

    else
    {
      v13 = g_GnssHw;
      if (!g_GnssHw)
      {
        goto LABEL_22;
      }

      v10 = qword_2A1920A8C;
    }

    v17 = v10 == 848;
    v18 = v13 == 4;
    if (g_HWStatus[0])
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    if (!v19)
    {
      Gnm03_60BaseBandResetReq(9);
LABEL_25:
      result = &a_GnmResetState;
      goto LABEL_26;
    }

LABEL_22:
    Gnm03_06InitHWReset();
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmState,Active->Reset\n", (*&g_MacClockTicksToMsRelation * v20), "GNM", 77, "Gnm03_41HandleResetReqGnc", 261);
      LbsOsaTrace_WriteLog(0xBu, __str, v21, 3, 1);
    }

    goto LABEL_25;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 69, "Gnm03_41HandleResetReqGnc", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v15, 0, 1);
  }

  result = 0;
LABEL_26:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm03_42HandleMEWakeReq(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_42HandleMEWakeReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm10_29SendFwActivity(1, 1);
    bzero(&g_LTLDataPPM, 0x5E2uLL);
    g_AgeingTimeGpsSeconds = 0;
    g_IsExtClock = BYTE1(dword_2A1920828);
    g_StlDivergenceIndicator = 0;
    HIWORD(dword_2A19397C6) = 0;
    LOBYTE(dword_2A19397C6) = 1;
    Gnm29_01RestoreVarMENv(*(a1 + 12));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm03_42HandleMEWakeReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm03_43RejectMEWakeReq(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_43RejectMEWakeReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm10_31SendMEWakeRsp(0);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm03_43RejectMEWakeReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

void *Gnm03_55HandleHalConnTimeout(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HAL_CONN_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_55HandleHalConnTimeout");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if ((g_HalStatusInfo & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Timer not running\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm03_55HandleHalConnTimeout");
      v9 = 4;
LABEL_13:
      LbsOsaTrace_WriteLog(0xBu, __str, v8, v9, 1);
    }

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  LOBYTE(g_HalStatusInfo) = 0;
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 69, "Gnm03_55HandleHalConnTimeout", 517);
      v9 = 0;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HAL Conn TO\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm03_55HandleHalConnTimeout");
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
  }

  if (g_GnssHw - 1 >= 3)
  {
    snprintf(v14, 0x400uLL, "ASSERT: %s %d HWI : HAL connection timeout", "Gnm03_55HandleHalConnTimeout", 1131);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v12), "OSA", 69, "Gnm03_55HandleHalConnTimeout", v14);
      LbsOsaTrace_WriteLog(0xEu, __str, v13, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Gnm03_55HandleHalConnTimeout", "gnm03HwStatus.cpp", 1132, "false && HAL connection Timeout");
  }

  Gnm03_60BaseBandResetReq(2);
  result = &a_GnmResetState;
LABEL_15:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void *Gnm03_56HandleHalDisconnTimeout(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HAL_DISCONN_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_56HandleHalDisconnTimeout");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if ((g_HalStatusInfo & 0x100) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Timer not running\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm03_56HandleHalDisconnTimeout");
      v9 = 4;
LABEL_13:
      LbsOsaTrace_WriteLog(0xBu, __str, v8, v9, 1);
    }

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  BYTE1(g_HalStatusInfo) = 0;
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 69, "Gnm03_56HandleHalDisconnTimeout", 517);
      v9 = 0;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HAL Disconn TO\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm03_56HandleHalDisconnTimeout");
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
  }

  if (g_GnssHw - 1 >= 3)
  {
    snprintf(v14, 0x400uLL, "ASSERT: %s %d HWI : HAL disconnection timeout", "Gnm03_56HandleHalDisconnTimeout", 1169);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v12), "OSA", 69, "Gnm03_56HandleHalDisconnTimeout", v14);
      LbsOsaTrace_WriteLog(0xEu, __str, v13, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Gnm03_56HandleHalDisconnTimeout", "gnm03HwStatus.cpp", 1170, "false && HAL disconnection Timeout");
  }

  Gnm03_60BaseBandResetReq(3);
  result = &a_GnmResetState;
LABEL_15:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNSS_Nav_Debug_Ctl(uint64_t result)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!g_Enable_Nav_Debug)
  {
    goto LABEL_14;
  }

  v1 = result;
  v3 = *result;
  v2 = *(result + 8);
  v4 = *result;
  if (v2 > *result)
  {
    v4 = *(result + 24);
  }

  v5 = v4 - v2;
  if (v4 == v2)
  {
    if (v2 >= *(result + 24))
    {
      v2 = *(result + 16);
      *(result + 8) = v2;
LABEL_10:
      v6 = v3 - v2;
      if (v6)
      {
        result = GN_GPS_Write_Nav_Debug(v6, v2);
        v2 = &v1[1][result];
        v1[1] = v2;
      }
    }
  }

  else
  {
    result = GN_GPS_Write_Nav_Debug((v4 - v2), v2);
    v2 = &v1[1][result];
    v1[1] = v2;
    if (v2 >= v1[3])
    {
      v2 = v1[2];
      v1[1] = v2;
      if (result == v5)
      {
        v3 = *v1;
        goto LABEL_10;
      }
    }
  }

  if (v2 == *v1)
  {
    v7 = v1[2];
    *v1 = v7;
    v1[1] = v7;
  }

LABEL_14:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void *GNSS_Nav_Debug_Screens(void *result)
{
  v6 = *MEMORY[0x29EDCA608];
  if (result && (v1 = result, (v2 = result[46]) != 0))
  {
    ds_NK_Summary(result);
    if (g_GN_GNSS_Nav_Debug_Port == 1)
    {
      g_GN_GNSS_Nav_Debug_Port = 0;
    }

    else
    {
      ds_NK_Crude_Apx_Pos(v2, v1[29], v1[22]);
    }

    ds_Intermittent(v2, *v1, v1[9]);
    v5 = *MEMORY[0x29EDCA608];

    return GNSS_Nav_Debug_Ctl(v2);
  }

  else
  {
    v3 = *MEMORY[0x29EDCA608];
    v4 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t GNSS_Nav_Debug_InitWrite(uint64_t result)
{
  v4 = *MEMORY[0x29EDCA608];
  if (g_Enable_Nav_Debug)
  {
    v1 = *(result + 368);
    if (g_GN_GNSS_Nav_Debug_Port == 1)
    {
      ds_Config(*(result + 368), *(result + 72), *(result + 48), *(result + 176));
    }

    v2 = *MEMORY[0x29EDCA608];

    return ds_NK_Summary_FirstLine(v1);
  }

  else
  {
    v3 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t GNSS_Nav_Debug_Flush_Check(uint64_t result)
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = *(result + 8) - *result;
  if (v1 <= 0)
  {
    v1 += *(result + 24) - *(result + 16);
  }

  if (v1 > 0x2FF)
  {
    v4 = *MEMORY[0x29EDCA608];
    v5 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v2 = *MEMORY[0x29EDCA608];
    v3 = *MEMORY[0x29EDCA608];

    return GNSS_Nav_Debug_Ctl(result);
  }

  return result;
}

uint64_t *mapu(double *a1, int a2, unsigned int a3, uint64_t a4, const double *a5, unsigned int a6, double *a7, int a8, double *a9, double *a10)
{
  v15 = a9;
  v46 = *MEMORY[0x29EDCA608];
  v16 = *a9;
  result = phiu(a1, a2, a3, a4, a5, a6, a7, a8);
  if (a6)
  {
    v18 = 0;
    if (a6 + 1 > 2)
    {
      v19 = a6 + 1;
    }

    else
    {
      v19 = 2;
    }

    v20 = 1;
    v21 = a9;
    do
    {
      v18 += v20;
      *v21++ = a5[v18 - 1];
      ++v20;
    }

    while (v19 != v20);
  }

  if (a3 >= 2)
  {
    v22 = a10 - 1;
    v23 = (a3 + a3 * a3) >> 1;
    if (a6 + 1 > 2)
    {
      v24 = a6 + 1;
    }

    else
    {
      v24 = 2;
    }

    v25 = a3;
    v26 = v24 - 1;
    v27 = a3 - 1;
    v28 = v24 - 1;
    do
    {
      v29 = v25 - 1;
      v30 = 0.0;
      if (a6)
      {
        v31 = a9;
        v32 = v26;
        LODWORD(result) = v25 - 1;
        do
        {
          v33 = *v31++;
          v34 = a7[result];
          v30 = v30 + v34 * (v33 * v34);
          a7[result] = v33 * v34;
          result = (result + a8);
          --v32;
        }

        while (v32);
      }

      if (v16 >= 0.0)
      {
        v22[v23--] = v30;
        LODWORD(v35) = 1;
        do
        {
          if (a6)
          {
            v36 = ~v35 + v25;
            v37 = 0.0;
            LODWORD(result) = v28;
            v38 = v27;
            do
            {
              v37 = v37 + a7[v36] * a7[v38];
              v36 += a8;
              v38 += a8;
              result = (result - 1);
            }

            while (result);
          }

          else
          {
            v37 = 0.0;
          }

          v22[v23] = v37;
          v35 = (v35 + 1);
          --v23;
        }

        while (v25 != v35);
      }

      else
      {
        v22[v25] = sqrt(v30);
      }

      --v27;
      --v25;
    }

    while (v29 > 1);
  }

  if (a6)
  {
    v39 = 0;
    if (a6 + 1 > 2)
    {
      v40 = a6 + 1;
    }

    else
    {
      v40 = 2;
    }

    v41 = v40 - 1;
    v42 = 0.0;
    do
    {
      v43 = *v15++;
      v42 = v42 + v43 * a7[v39] * a7[v39];
      v39 += a8;
      --v41;
    }

    while (v41);
  }

  else
  {
    v42 = 0.0;
  }

  v44 = sqrt(v42);
  if (v16 < 0.0)
  {
    v42 = v44;
  }

  *a10 = v42;
  v45 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal32_SetPowerReport(int a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v21[0] = 0;
  qmemcpy(v19, "Bg ", sizeof(v19));
  v23 = 3;
  v24 = 0;
  plc00_10EncodeHdrPlCs(v19, v22, 12, 1u, 1, v21);
  v2 = v21[0];
  if (v21[0])
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Hdrerr,%u\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 69, "Hal32_SetPowerReport", 775, v2);
      LbsOsaTrace_WriteLog(0xDu, __str, v4, 0, 1);
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
    v25 = a1;
    v26 = a1;
    v27 = 2560;
    g_HalState = 18;
    if (Hal22_ZxSendToChip(v22, 0xCuLL) <= 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 69, "Hal32_SetPowerReport", 1282);
        LbsOsaTrace_WriteLog(0xDu, __str, v9, 0, 1);
      }

      result = 4294967289;
    }

    else
    {
      v7 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x1C2u);
      if (v7 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          v11 = "Dis";
          if (a1)
          {
            v11 = "En";
          }

          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx status,%s\n", v10, "HAL", 69, "Hal32_SetPowerReport", 1543, v11);
          LbsOsaTrace_WriteLog(0xDu, __str, v12, 0, 1);
        }

        result = 4294967287;
      }

      else if (v7)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          v14 = "Dis";
          if (a1)
          {
            v14 = "En";
          }

          v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx status,%s\n", v13, "HAL", 69, "Hal32_SetPowerReport", 1541, v14);
          LbsOsaTrace_WriteLog(0xDu, __str, v15, 0, 1);
        }

        result = 4294967285;
      }

      else if (g_PowerReportStatus == 32)
      {
        result = 0;
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          v17 = "Dis";
          if (a1)
          {
            v17 = "En";
          }

          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx status,%s err,%x\n", v16, "HAL", 69, "Hal32_SetPowerReport", 770, v17, g_PowerReportStatus);
          LbsOsaTrace_WriteLog(0xDu, __str, v18, 0, 1);
        }

        result = 4294967288;
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal32_HandlPowerReportRsp(unsigned __int8 *a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2 > 0xC)
    {
      if (a1[2] == 66 && a1[3] == 71)
      {
        g_PowerReportStatus = a1[8];
        result = gnssOsa_SemRelease(g_HandleAckSem);
        if ((result & 1) == 0)
        {
          result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v11 = 1542;
            v12 = *__error();
            v10 = v6;
            v4 = "%10u %s%c %s: #%04hx HandleAckSem err,%d\n";
            goto LABEL_14;
          }
        }
      }

      else
      {
        result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v13 = a1[3];
          v14 = a1[4];
          v11 = 770;
          v12 = a1[2];
          v4 = "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDEx,%u\n";
          v10 = v7;
          goto LABEL_14;
        }
      }
    }

    else
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v11 = 515;
        v12 = a2;
        v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v4 = "%10u %s%c %s: #%04hx len,%u\n";
LABEL_14:
        v8 = snprintf(__str, 0x40FuLL, v4, v10, "HAL", 69, "Hal32_HandlPowerReportRsp", v11, v12, v13, v14);
        result = LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
      }
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = 513;
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v4 = "%10u %s%c %s: #%04hx data\n";
      goto LABEL_14;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Sen_Aug_FPE_Update_Wrapper(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  GNSS_Validate_p_list(a1, "Sen_Aug_FPE_Update_Wrapper: Entry");
  Sen_Aug_FPE_Update(*(a1 + 112), *(a1 + 120), *(a1 + 136), *(a1 + 128), *(a1 + 208), *(a1 + 264), *(a1 + 392), *(a1 + 152), *(a1 + 144));
  v2 = *MEMORY[0x29EDCA608];

  return GNSS_Validate_p_list(a1, "Sen_Aug_FPE_Kalman_Wrapper: Exit");
}

void *gnssOsa_Calloc(const char *a1, int a2, int a3, size_t size)
{
  v17 = *MEMORY[0x29EDCA608];
  v7 = a3;
  result = malloc_type_calloc(a3, size, 0xC725420DuLL);
  if (!result)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = v7 * size;
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Size,%lu,Fn,%s,Line,%d\n", (*&g_MacClockTicksToMsRelation * v10), "OSA", 69, "gnssOsa_Calloc", 1537, v11, a1, a2);
      LbsOsaTrace_WriteLog(0xEu, __str, v12, 0, 1);
    }

    else
    {
      v11 = v7 * size;
    }

    snprintf(v15, 0x400uLL, "Size,%lu,Fn,%s,Line,%d", v11, a1, a2);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v13), "OSA", 69, "gnssOsa_Calloc", v15);
      LbsOsaTrace_WriteLog(0xEu, __str, v14, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_Calloc", "agpsmacosa.cpp", 68, "false && Memory allocation failure");
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssOsa_FlushLog(void)
{
  v5 = *MEMORY[0x29EDCA608];
  result = gp_Logger;
  if (gp_Logger)
  {
    v1 = *(*gp_Logger + 48);
    v2 = *MEMORY[0x29EDCA608];
    v3 = *MEMORY[0x29EDCA608];

    return v1();
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
  }

  return result;
}

BOOL gnssOsa_SemAcquire(dispatch_semaphore_t dsema)
{
  v7 = *MEMORY[0x29EDCA608];
  if (dsema)
  {
    dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "gnssOsa_SemAcquire", 1541);
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 0, 1);
  }

  result = dsema != 0;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssOsa_SemWaitTimeOut(NSObject *a1, unsigned int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v3 = dispatch_time(0, 1000000 * a2);
    result = dispatch_semaphore_wait(a1, v3) != 0;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "OSA", 69, "gnssOsa_SemWaitTimeOut", 1543);
      LbsOsaTrace_WriteLog(0xEu, __str, v6, 0, 1);
    }

    result = 2;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssOsa_ReleaseOSTimer(void)
{
  v2 = *MEMORY[0x29EDCA608];
  gnssOsa_MacEnterCriticalSection("gnssOsa_ReleaseOSTimer", 120, &g_MacTimerCriticSection);
  if (g_curTimeState == 1)
  {
    dispatch_suspend(g_timerHandler);
  }

  g_curTimeState = 0;
  v0 = *MEMORY[0x29EDCA608];

  return gnssOsa_MacExitCriticalSection("gnssOsa_ReleaseOSTimer", 132, &g_MacTimerCriticSection);
}

uint64_t gnssOsa_MacEnterCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTE invalid input");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v11, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(v11, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "gnssOsa_MacEnterCriticalSection", __str);
      LbsOsaTrace_WriteLog(0xEu, v11, v8, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacEnterCriticalSection", "agpsmacosa.cpp", 749, "false && CRTE invalid input");
  }

  if (pthread_mutex_lock(a3))
  {
    snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTE OS API Failed");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v11, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(v11, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "gnssOsa_MacEnterCriticalSection", __str);
      LbsOsaTrace_WriteLog(0xEu, v11, v10, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacEnterCriticalSection", "agpsmacosa.cpp", 754, "false && CRTE OS API Failed");
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t gnssOsa_MacExitCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTX invalid input");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v11, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(v11, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "gnssOsa_MacExitCriticalSection", __str);
      LbsOsaTrace_WriteLog(0xEu, v11, v8, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacExitCriticalSection", "agpsmacosa.cpp", 764, "false && CRTX invalid input");
  }

  if (pthread_mutex_unlock(a3))
  {
    snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTX OS API Failed");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v11, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(v11, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "gnssOsa_MacExitCriticalSection", __str);
      LbsOsaTrace_WriteLog(0xEu, v11, v10, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacExitCriticalSection", "agpsmacosa.cpp", 768, "false && CRTX OS API Failed");
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t gnssOsa_OSTimerInit(void)
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 1uLL, g_TimerQueue);
  g_timerHandler = v0;
  if (!v0)
  {
    snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", "gnssOsa_OSTimerInit", 144, "TIMC TimerHandler");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v5, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(v5, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "gnssOsa_OSTimerInit", __str);
      LbsOsaTrace_WriteLog(0xEu, v5, v4, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_OSTimerInit", "agpsmacosa.cpp", 144, "false && TIMC TimerHandler");
  }

  dispatch_source_set_event_handler_f(v0, gnssOsa_TimerExpiryHandler);
  v1 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t gnssOsa_TimerExpiryHandler(void *a1)
{
  v1 = 0;
  v16 = *MEMORY[0x29EDCA608];
  do
  {
    v2 = &__str[v1 + 1040];
    *v2 = 0;
    *(v2 + 1) = -1;
    *(v2 + 2) = 0;
    *(v2 + 6) = -1;
    v1 += 32;
    v2[28] = 0;
  }

  while (v1 != 640);
  gnssOsa_MacEnterCriticalSection("gnssOsa_TimerExpiryHandler", 250, &g_MacTimerContextCriticSection);
  v3 = 0;
  v4 = 0;
  v5 = vcvtad_u64_f64(*&g_MacClockTicksToNs * mach_continuous_time());
  do
  {
    v6 = &g_MacOsaTimers[4 * v4];
    if (*(v6 + 28) == 1 && v6[1] <= v5)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerExpired Handle,%u,ExpiryNs,%llu\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 68, "gnssOsa_TimerExpiryHandler", *(v6 + 6), v6[1]);
        LbsOsaTrace_WriteLog(0xEu, __str, v8, 5, 1);
      }

      if (*v6)
      {
        v9 = &__str[32 * v3 + 1040];
        *v9 = *v6;
        *(v9 + 2) = v6[2];
        ++v3;
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 21) = 0;
        v6[2] = 0;
        v4 = -1;
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MacTimer\n", (*&g_MacClockTicksToMsRelation * v10), "OSA", 69, "gnssOsa_TimerExpiryHandler", 770);
        LbsOsaTrace_WriteLog(0xEu, __str, v11, 0, 1);
      }
    }

    ++v4;
  }

  while (v4 < 0x14u);
  gnssOsa_TimerHandler();
  result = gnssOsa_MacExitCriticalSection("gnssOsa_TimerExpiryHandler", 282, &g_MacTimerContextCriticSection);
  if (v3)
  {
    v13 = 0;
    do
    {
      result = (*&__str[32 * v13 + 1040])(*&__str[32 * v13 + 1056]);
      ++v13;
    }

    while (v3 > v13);
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssOsa_OSTimerDeInit(void)
{
  v3 = *MEMORY[0x29EDCA608];
  gnssOsa_MacEnterCriticalSection("gnssOsa_OSTimerDeInit", 152, &g_MacTimerCriticSection);
  v0 = g_timerHandler;
  if (!dispatch_source_testcancel(g_timerHandler))
  {
    dispatch_source_cancel(v0);
    v0 = g_timerHandler;
  }

  if ((g_curTimeState & 1) == 0)
  {
    dispatch_resume(v0);
    v0 = g_timerHandler;
  }

  dispatch_release(v0);
  g_timerHandler = 0;
  g_curTimeState = 0;
  gnssOsa_MacExitCriticalSection("gnssOsa_OSTimerDeInit", 174, &g_MacTimerCriticSection);
  v1 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t gnssOsa_TriggerOSTimer(int64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  gnssOsa_MacEnterCriticalSection("gnssOsa_TriggerOSTimer", 185, &g_MacTimerCriticSection);
  v2 = g_timerHandler;
  v3 = dispatch_time(0, a1);
  dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  if ((g_curTimeState & 1) == 0)
  {
    dispatch_resume(g_timerHandler);
  }

  g_curTimeState = 1;
  gnssOsa_MacExitCriticalSection("gnssOsa_TriggerOSTimer", 199, &g_MacTimerCriticSection);
  v4 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t gnssOsa_TimerHandler(void)
{
  v11 = *MEMORY[0x29EDCA608];
  v0 = -1;
  v1 = &byte_2A191FD34;
  v2 = 20;
  do
  {
    if (*v1 == 1 && *(v1 - 20) < v0)
    {
      v0 = *(v1 - 20);
    }

    v1 += 32;
    --v2;
  }

  while (v2);
  if (v0 == -1)
  {
    v9 = *MEMORY[0x29EDCA608];
    v10 = *MEMORY[0x29EDCA608];

    return gnssOsa_ReleaseOSTimer();
  }

  else
  {
    v3 = vcvtad_u64_f64(*&g_MacClockTicksToNs * mach_continuous_time());
    v4 = v0 >= v3;
    v5 = v0 - v3;
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = *MEMORY[0x29EDCA608];

    return gnssOsa_TriggerOSTimer(v6);
  }
}

BOOL gnssOsa_Init(void)
{
  v12 = *MEMORY[0x29EDCA608];
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  v2 = v0 / v1;
  *&g_MacClockTicksToMsRelation = v2 * 0.000001;
  g_MacClockTicksToNs = *&v2;
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -7);
  if (!v3 && LbsOsaTrace_IsLoggingAllowed(0xEu, 2, 0, 0))
  {
    bzero(&info, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(&info, 0x40FuLL, "%10u %s%c %s: #%04hx timer queueAttr\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 87, "gnssOsa_Init", 513);
    LbsOsaTrace_WriteLog(0xEu, &info, v5, 2, 1);
  }

  v6 = dispatch_queue_create("TimerQueue", v3);
  g_TimerQueue = v6;
  if (v6)
  {
    gnssOsa_InitCriticalSection("gnssOsa_Init", 328, &g_MacTimerCriticSection);
    gnssOsa_InitCriticalSection("gnssOsa_Init", 329, &g_MacTimerContextCriticSection);
    gnssOsa_OSTimerInit();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(&info, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(&info, 0x40FuLL, "%10u %s%c %s: #%04hx Queue creation failed\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "gnssOsa_Init", 513);
    LbsOsaTrace_WriteLog(0xEu, &info, v8, 0, 1);
  }

  result = v6 != 0;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssOsa_InitCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTC invalid input");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v11, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(v11, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "gnssOsa_InitCriticalSection", __str);
      LbsOsaTrace_WriteLog(0xEu, v11, v8, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_InitCriticalSection", "agpsmacosa.cpp", 778, "false && CRTC invalid input");
  }

  if (pthread_mutex_init(a3, 0))
  {
    snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTC OS API Failed");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v11, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(v11, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "gnssOsa_InitCriticalSection", __str);
      LbsOsaTrace_WriteLog(0xEu, v11, v10, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_InitCriticalSection", "agpsmacosa.cpp", 782, "false && CRTC OS API Failed");
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

void gnssOsa_Deinit(void)
{
  v1 = *MEMORY[0x29EDCA608];
  gnssOsa_StopAllTimers();
  gnssOsa_OSTimerDeInit();
  gnssOsa_MacDeinitCriticalSection("gnssOsa_Deinit", 338, &g_MacTimerCriticSection);
  gnssOsa_MacDeinitCriticalSection("gnssOsa_Deinit", 339, &g_MacTimerContextCriticSection);
  if (g_TimerQueue)
  {
    dispatch_release(g_TimerQueue);
    g_TimerQueue = 0;
  }

  gp_Logger = 0;
  v0 = *MEMORY[0x29EDCA608];
}

uint64_t gnssOsa_StopAllTimers(void)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerStopAll\n", (*&g_MacClockTicksToMsRelation * v0), "OSA", 68, "gnssOsa_StopAllTimers");
    LbsOsaTrace_WriteLog(0xEu, __str, v1, 5, 1);
  }

  gnssOsa_MacEnterCriticalSection("gnssOsa_StopAllTimers", 445, &g_MacTimerContextCriticSection);
  for (i = 0; i != 80; i += 4)
  {
    v3 = &g_MacOsaTimers[i];
    *v3 = 0;
    v3[1] = 0;
    *(v3 + 21) = 0;
    v3[2] = 0;
  }

  gnssOsa_TimerHandler();
  gnssOsa_MacExitCriticalSection("gnssOsa_StopAllTimers", 458, &g_MacTimerContextCriticSection);
  v4 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t gnssOsa_MacDeinitCriticalSection(const char *a1, int a2, _opaque_pthread_mutex_t *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    snprintf(v13, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "CRTD invalid input");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v10), "OSA", 69, "gnssOsa_MacDeinitCriticalSection", v13);
      LbsOsaTrace_WriteLog(0xEu, __str, v11, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("gnssOsa_MacDeinitCriticalSection", "agpsmacosa.cpp", 792, "false && CRTD invalid input");
  }

  result = pthread_mutex_destroy(a3);
  if (result)
  {
    v6 = result;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DeInit CriticalSec,errno,%d,%s,%d\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 73, "gnssOsa_MacDeinitCriticalSection", v6, a1, a2);
      LbsOsaTrace_WriteLog(0xEu, __str, v8, 4, 1);
    }

    result = 0xFFFFFFFFLL;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssOsa_StartTimer(const char *a1, int a2, unsigned int *a3, void (*a4)(void *), void *a5, unsigned int a6)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v7)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v27, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(v27, 0x40FuLL, "%10u %s%c %s: #%04hx MacTimer,ReqDurationMs,%u,%s,%d\n", (*&g_MacClockTicksToMsRelation * v18), "OSA", 69, "gnssOsa_StartTimer", 513, a6, a1, a2);
      LbsOsaTrace_WriteLog(0xEu, v27, v19, 0, 1);
    }
  }

  else
  {
    gnssOsa_MacEnterCriticalSection("gnssOsa_StartTimer", 359, &g_MacTimerContextCriticSection);
    v12 = &byte_2A191FD34;
    v13 = 20;
    while (*v12 == 1)
    {
      v12 += 32;
      if (!--v13)
      {
        gnssOsa_MacExitCriticalSection("gnssOsa_StartTimer", 372, &g_MacTimerContextCriticSection);
        snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", "gnssOsa_StartTimer", 377, "Timer not started as max timer count hit");
        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(v27, 0x410uLL);
          v14 = mach_continuous_time();
          v15 = snprintf(v27, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v14), "OSA", 69, "gnssOsa_StartTimer", __str);
          LbsOsaTrace_WriteLog(0xEu, v27, v15, 0, 1);
        }

        gnssOsa_FlushLog();
        __assert_rtn("gnssOsa_StartTimer", "agpsmacosa.cpp", 377, "false && Timer not started as max timer count hit");
      }
    }

    v20 = vcvtad_u64_f64(*&g_MacClockTicksToNs * mach_continuous_time());
    v21 = ++g_MacOsaTimerCount;
    *(v12 - 28) = a4;
    *(v12 - 12) = a5;
    *(v12 - 20) = v20 + 1000000 * a6;
    *(v12 - 1) = v21;
    *v12 = 1;
    *a3 = v21;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
    {
      bzero(v27, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(v27, 0x40FuLL, "%10u %s%c %s: TimerStarted,Handle,%u,DurationMs,%u,CurrNs,%llu,ExpiryNs,%llu\n", (*&g_MacClockTicksToMsRelation * v22), "OSA", 68, "gnssOsa_StartTimer", *(v12 - 1), a6, v20, *(v12 - 20));
      LbsOsaTrace_WriteLog(0xEu, v27, v23, 5, 1);
    }

    gnssOsa_TimerHandler();
    gnssOsa_MacExitCriticalSection("gnssOsa_StartTimer", 401, &g_MacTimerContextCriticSection);
  }

  v24 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t gnssOsa_StopTimer(const char *a1, unsigned int a2, int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  gnssOsa_MacEnterCriticalSection("gnssOsa_StopTimer", 414, &g_MacTimerContextCriticSection);
  v4 = &g_MacOsaTimers;
  v5 = 20;
  while (*(v4 + 6) != a3)
  {
    v4 += 4;
    if (!--v5)
    {
      goto LABEL_8;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerStopped,Handle,%u\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 68, "gnssOsa_StopTimer", a3);
    LbsOsaTrace_WriteLog(0xEu, __str, v7, 5, 1);
  }

  *v4 = 0;
  v4[1] = 0;
  *(v4 + 21) = 0;
  v4[2] = 0;
LABEL_8:
  gnssOsa_TimerHandler();
  gnssOsa_MacExitCriticalSection("gnssOsa_StopTimer", 432, &g_MacTimerContextCriticSection);
  v8 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL AgpsInitMsgQueue(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  gnssOsa_InitCriticalSection("AgpsInitMsgQueue", 486, (a1 + 24));
  v2 = gnssOsa_SemInit((a1 + 88), 0);
  if (v2)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InitMsgQ\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "AgpsInitMsgQueue", 1539);
    LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

BOOL gnssOsa_SemInit(dispatch_semaphore_s **a1, intptr_t value)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = dispatch_semaphore_create(value);
  *a1 = v3;
  if (!v3 && LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 69, "gnssOsa_SemInit", 1539);
    LbsOsaTrace_WriteLog(0xEu, __str, v5, 0, 1);
  }

  result = v3 != 0;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AgpsDeinitMsgQueue(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 68, "AgpsDeinitMsgQueue");
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 5, 1);
  }

  gnssOsa_MacEnterCriticalSection("AgpsDeinitMsgQueue", 512, (a1 + 24));
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    v5 = i + 1;
    v6 = i[1];
    if (!v6)
    {
      v5 = (a1 + 16);
    }

    *v5 = 0;
    *(a1 + 8) = v6;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Event dropped Src,%u,Dest,%u,Event,%u\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 87, "AgpsDeinitMsgQueue", 770, **i, *(*i + 1), *(*i + 1));
      LbsOsaTrace_WriteLog(0xEu, __str, v8, 2, 1);
    }

    if (*i)
    {
      free(*i);
    }

    free(i);
  }

  gnssOsa_MacExitCriticalSection("AgpsDeinitMsgQueue", 549, (a1 + 24));
  if (gnssOsa_MacDeinitCriticalSection("AgpsDeinitMsgQueue", 556, (a1 + 24)) && LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "AgpsDeinitMsgQueue", 1553);
    LbsOsaTrace_WriteLog(0xEu, __str, v10, 0, 1);
  }

  if (!gnssOsa_DeinitCountingSem((a1 + 88)) && LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "OSA", 69, "AgpsDeinitMsgQueue", 1540);
    LbsOsaTrace_WriteLog(0xEu, __str, v12, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "OSA", 68, "AgpsDeinitMsgQueue");
    result = LbsOsaTrace_WriteLog(0xEu, __str, v15, 5, 1);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL gnssOsa_DeinitCountingSem(dispatch_object_t *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1)
  {
    dispatch_release(*a1);
    *a1 = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "gnssOsa_DeinitCountingSem", 1540);
    LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
  }

  result = v1 != 0;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AgpsEnQueueFsmMsg(uint64_t result, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v3 = result;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Src,%x,Dest,%x,EnQEvent,%x\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 68, "AgpsEnQueueFsmMsg", *v3, v3[1], *(v3 + 1));
      LbsOsaTrace_WriteLog(0xEu, __str, v5, 5, 1);
    }

    v6 = gnssOsa_Calloc("AgpsEnQueueFsmMsg", 582, 1, 0x10uLL);
    *v6 = v3;
    gnssOsa_MacEnterCriticalSection("AgpsEnQueueFsmMsg", 593, (a2 + 24));
    v7 = *(a2 + 16);
    if (v7)
    {
      *(v7 + 8) = v6;
      *(a2 + 16) = v6;
      v6[1] = 0;
      if (!gnssOsa_SemRelease(*(a2 + 88)))
      {
        *(v7 + 8) = 0;
        goto LABEL_8;
      }
    }

    else
    {
      *(a2 + 8) = v6;
      *(a2 + 16) = v6;
      v6[1] = 0;
      if (!gnssOsa_SemRelease(*(a2 + 88)))
      {
LABEL_8:
        *(a2 + 16) = v7;
        free(v6);
        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Msg,%x,ProcessId,%u\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "AgpsEnQueueFsmMsg", 1548, *(v3 + 1), *(a2 + 4));
          LbsOsaTrace_WriteLog(0xEu, __str, v9, 0, 1);
        }
      }
    }

    result = gnssOsa_MacExitCriticalSection("AgpsEnQueueFsmMsg", 638, (a2 + 24));
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL gnssOsa_SemRelease(dispatch_semaphore_t dsema)
{
  v7 = *MEMORY[0x29EDCA608];
  if (dsema)
  {
    dispatch_semaphore_signal(dsema);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "gnssOsa_SemRelease", 1542);
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 0, 1);
  }

  result = dsema != 0;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int8 *AgpsDeQueueFsmMsg(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!gnssOsa_SemAcquire(*(a1 + 88)) && LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "AgpsDeQueueFsmMsg", 1541);
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 0, 1);
  }

  gnssOsa_MacEnterCriticalSection("AgpsDeQueueFsmMsg", 659, (a1 + 24));
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4 + 1;
    v6 = v4[1];
    if (!v6)
    {
      v5 = (a1 + 16);
    }

    *v5 = 0;
    *(a1 + 8) = v6;
    gnssOsa_MacExitCriticalSection("AgpsDeQueueFsmMsg", 684, (a1 + 24));
    v7 = *v4;
    free(v4);
    if (v7 && LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Src,%x,Dest,%x,DeQEvent,%x\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 68, "AgpsDeQueueFsmMsg", *v7, v7[1], *(v7 + 1));
      LbsOsaTrace_WriteLog(0xEu, __str, v9, 5, 1);
    }
  }

  else
  {
    gnssOsa_MacExitCriticalSection("AgpsDeQueueFsmMsg", 684, (a1 + 24));
    v7 = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t gnssOsa_MarkFsmMsgInvalid(int a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    gnssOsa_MacEnterCriticalSection("gnssOsa_MarkFsmMsgInvalid", 715, (a2 + 24));
    v4 = *(a2 + 8);
    if (v4)
    {
      while (*(*v4 + 4) != a1)
      {
        v4 = v4[1];
        if (!v4)
        {
          goto LABEL_10;
        }
      }

      *(*v4 + 8) = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 73, "gnssOsa_MarkFsmMsgInvalid", a1);
        LbsOsaTrace_WriteLog(0xEu, __str, v9, 4, 1);
      }
    }

LABEL_10:
    result = gnssOsa_MacExitCriticalSection("gnssOsa_MarkFsmMsgInvalid", 737, (a2 + 24));
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xEu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FsmCtxt\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 87, "gnssOsa_MarkFsmMsgInvalid", 513);
      result = LbsOsaTrace_WriteLog(0xEu, __str, v7, 2, 1);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void *memcpy_s(const char *a1, int a2, void *__dst, unsigned int a4, const void *__src, size_t __n)
{
  v15 = *MEMORY[0x29EDCA608];
  if (!__dst || !__src)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Caller,%s,line,%d\n", v10, "OSA", 69, "memcpy_s", 513, a1, a2);
      goto LABEL_8;
    }

LABEL_9:
    v11 = *MEMORY[0x29EDCA608];
    return 0;
  }

  if (a4 < __n)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Caller,%s,line,%d\n", v8, "OSA", 69, "memcpy_s", 515, a1, a2);
LABEL_8:
      LbsOsaTrace_WriteLog(0xEu, __str, v9, 0, 1);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v13 = *MEMORY[0x29EDCA608];

  return memcpy(__dst, __src, __n);
}

char *strncpy_s(char *a1, unsigned int a2, const char *__src, size_t __n)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a1 || !__src)
  {
    goto LABEL_6;
  }

  if (a2 < __n)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 69, "strncpy_s", 515);
      LbsOsaTrace_WriteLog(0xEu, __str, v5, 0, 1);
    }

LABEL_6:
    v6 = *MEMORY[0x29EDCA608];
    return 0;
  }

  v8 = *MEMORY[0x29EDCA608];

  return strncpy(a1, __src, __n);
}

BOOL gnssOsa_CreateThread(const char *a1, int a2, _opaque_pthread_t **a3, unsigned int a4, void *(__cdecl *a5)(void *), void *a6, unsigned int a7, void *a8, int a9)
{
  v38 = *MEMORY[0x29EDCA608];
  memset(&v37, 0, sizeof(v37));
  if (a3)
  {
    if (a4)
    {
      if (pthread_attr_init(&v37))
      {
        snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Init failed");
        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(v36, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(v36, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v29), "OSA", 69, "gnssOsa_CreateThread", __str);
          LbsOsaTrace_WriteLog(0xEu, v36, v30, 0, 1);
        }

        gnssOsa_FlushLog();
        __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1026, "false && THRD Init failed");
      }

      v15 = &v37;
      if (pthread_attr_setstacksize(&v37, a4))
      {
        snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Stack Size");
        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(v36, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(v36, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v16), "OSA", 69, "gnssOsa_CreateThread", __str);
          LbsOsaTrace_WriteLog(0xEu, v36, v17, 0, 1);
        }

        gnssOsa_FlushLog();
        __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1030, "false && THRD Stack Size");
      }
    }

    else
    {
      v15 = 0;
    }

    if (pthread_create(a3, v15, a5, a6))
    {
      snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Create failed");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(v36, 0x410uLL);
        v27 = mach_continuous_time();
        v28 = snprintf(v36, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v27), "OSA", 69, "gnssOsa_CreateThread", __str);
        LbsOsaTrace_WriteLog(0xEu, v36, v28, 0, 1);
      }

      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1037, "false && THRD Create failed");
    }

    v33 = 0;
    v34 = 0;
    if (pthread_getschedparam(*a3, &v33, &v34))
    {
      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1044, "false && THRD pthread_getschedparam failed");
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
    {
      bzero(v36, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(v36, 0x40FuLL, "%10u %s%c %s: #%04hx Requester,%s,Handle,%p,Prio,%d,DesiredPrio,%d,Policy,%d\n", (*&g_MacClockTicksToMsRelation * v20), "OSA", 73, "gnssOsa_CreateThread", 1569, a1, a3, v34.sched_priority, v33, a9);
      LbsOsaTrace_WriteLog(0xEu, v36, v21, 4, 1);
    }

    if (a9 == 99)
    {
      v33 = 4;
      priority_max = sched_get_priority_max(4);
    }

    else
    {
      if (a9 != 1)
      {
LABEL_23:
        if (a4 && pthread_attr_destroy(v15))
        {
          snprintf(__str, 0x400uLL, "ASSERT:%s,%d,%s", a1, a2, "THRD Destroy failed");
          if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
          {
            bzero(v36, 0x410uLL);
            v31 = mach_continuous_time();
            v32 = snprintf(v36, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v31), "OSA", 69, "gnssOsa_CreateThread", __str);
            LbsOsaTrace_WriteLog(0xEu, v36, v32, 0, 1);
          }

          gnssOsa_FlushLog();
          __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1074, "false && THRD Destroy failed");
        }

        goto LABEL_25;
      }

      priority_max = sched_get_priority_min(v33);
    }

    if (priority_max == -1)
    {
      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1061, "false && sched_get_priority failed");
    }

    v34.sched_priority = priority_max;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
    {
      bzero(v36, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(v36, 0x40FuLL, "%10u %s%c %s: #%04hx Updated Prio,%d,Policy,%d\n", (*&g_MacClockTicksToMsRelation * v23), "OSA", 73, "gnssOsa_CreateThread", 1569, v34.sched_priority, v33);
      LbsOsaTrace_WriteLog(0xEu, v36, v24, 4, 1);
    }

    if (pthread_setschedparam(*a3, v33, &v34))
    {
      gnssOsa_FlushLog();
      __assert_rtn("gnssOsa_CreateThread", "agpsmacosa.cpp", 1067, "false && pthread_setschedparam failed");
    }

    goto LABEL_23;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(v36, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(v36, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "OSA", 69, "gnssOsa_CreateThread", 513);
    LbsOsaTrace_WriteLog(0xEu, v36, v19, 0, 1);
  }

LABEL_25:
  result = a3 != 0;
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssOsaSetConfigLogLevel(int a1, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  dword_2A19396BC = (a1 - 3) < 0xFFFFFFFE;
  if (a1 > 3)
  {
    if ((a1 - 4) < 2)
    {
      LbsOsaTrace_UpdateModuleConfig(0, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(1u, 1, 4);
      LbsOsaTrace_UpdateModuleConfig(2u, 1, 4);
      LbsOsaTrace_UpdateModuleConfig(3u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(4u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(5u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(6u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(7u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(8u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(0xBu, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(0xCu, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(0xDu, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(0xEu, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(0x12u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(0x13u, 1, 7);
      LbsOsaTrace_UpdateModuleConfig(0x14u, 1, 7);
      v2 = 7;
      goto LABEL_8;
    }

    if (a1 == 6)
    {
      LbsOsaTrace_UpdateModuleConfig(0, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(1u, 1, 4);
      LbsOsaTrace_UpdateModuleConfig(2u, 1, 12);
      LbsOsaTrace_UpdateModuleConfig(3u, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(4u, 1, 15);
      if (a2)
      {
        v10 = 3;
      }

      else
      {
        v10 = 15;
      }

      LbsOsaTrace_UpdateModuleConfig(5u, 1, v10);
      LbsOsaTrace_UpdateModuleConfig(6u, 1, v10);
      LbsOsaTrace_UpdateModuleConfig(7u, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(8u, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0xBu, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0xCu, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0xDu, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0xEu, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0x12u, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0x13u, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0x14u, 1, 15);
      LbsOsaTrace_UpdateModuleConfig(0x18u, 1, 15);
      v3 = 1;
      v4 = 8;
      goto LABEL_9;
    }
  }

  else
  {
    if ((a1 - 1) < 2)
    {
      LbsOsaTrace_UpdateModuleConfig(0, 0, 0);
      LbsOsaTrace_UpdateModuleConfig(1u, 0, 0);
      LbsOsaTrace_UpdateModuleConfig(2u, 0, 0);
      LbsOsaTrace_UpdateModuleConfig(3u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(4u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(5u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(6u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(7u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(8u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(0xBu, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(0xCu, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(0xDu, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(0xEu, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(0x12u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(0x13u, 1, 1);
      LbsOsaTrace_UpdateModuleConfig(0x14u, 1, 1);
      v2 = 1;
LABEL_8:
      LbsOsaTrace_UpdateModuleConfig(0x18u, 1, v2);
      v3 = 0;
      v4 = 0;
LABEL_9:
      LbsOsaTrace_UpdateModuleConfig(0x19u, v3, v4);
      v5 = *MEMORY[0x29EDCA608];
      v6 = 1;
      v7 = 1;
      goto LABEL_10;
    }

    if (a1 == 3)
    {
      LbsOsaTrace_UpdateModuleConfig(0, 0, 0);
      LbsOsaTrace_UpdateModuleConfig(1u, 1, 2);
      LbsOsaTrace_UpdateModuleConfig(2u, 0, 0);
      LbsOsaTrace_UpdateModuleConfig(3u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(4u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(5u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(6u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(7u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(8u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(0xBu, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(0xCu, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(0xDu, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(0xEu, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(0x12u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(0x13u, 1, 3);
      LbsOsaTrace_UpdateModuleConfig(0x14u, 1, 3);
      v2 = 3;
      goto LABEL_8;
    }
  }

  LbsOsaTrace_UpdateModuleConfig(0, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(1u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(2u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(3u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(4u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(5u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(6u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(7u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(8u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0xBu, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0xCu, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0xDu, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0xEu, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0x12u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0x13u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0x14u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0x18u, 0, 0);
  LbsOsaTrace_UpdateModuleConfig(0x19u, 0, 0);
  v11 = *MEMORY[0x29EDCA608];
  v6 = 0;
  v7 = 0;
LABEL_10:

  return LbsOsaTrace_UpdateModuleConfig(0x17u, v6, v7);
}

void gnssOsa_ReportExcp(const char *a1, unsigned __int8 *a2, unsigned int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1 && a2 && a3)
  {
    v6 = strlen(a1);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v13 = v6;
    if (v6)
    {
      memcpy(&__dst, a1, v6);
    }

    *(&__dst + v7) = 0;
    __p = 0;
    v10 = 0;
    v11 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a2, &a2[a3], a3);
    if (gp_Logger)
    {
      (*(*gp_Logger + 40))(gp_Logger, &__dst, &__p);
    }

    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    if (v13 < 0)
    {
      operator delete(__dst);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_2995B51DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void gnssOsa_PrintLog(char *__s, int a2, int a3, unsigned int a4)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = gp_Logger;
  if (!gp_Logger)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    v8 = strlen(__s);
    if (!v8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v8 = a4;
    if (!a4)
    {
LABEL_26:
      v12 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  v9 = 6;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v9 = 2;
      if (!a3)
      {
        goto LABEL_20;
      }

LABEL_17:
      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      v14 = v8;
      memcpy(&__p, __s, v8);
      *(&__p + v8) = 0;
      (*(*v4 + 16))(v4, v9, &__p);
      if (v14 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_26;
    }

    if (a2 != 1)
    {
      goto LABEL_20;
    }

LABEL_14:
    v9 = 4;
    goto LABEL_20;
  }

  switch(a2)
  {
    case 4:
      v9 = 5;
      break;
    case 3:
      goto LABEL_14;
    case 2:
      v9 = 3;
      if (a3)
      {
        goto LABEL_17;
      }

      break;
  }

LABEL_20:
  v10 = *(*gp_Logger + 32);
  v11 = *MEMORY[0x29EDCA608];

  v10(v4, v9, __s, v8);
}

void sub_2995B542C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void lpm_utils_linkedlist_destroy(void *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v1 = *MEMORY[0x29EDCA608];

    free(a1);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx linklist is NULL\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 69, "lpm_utils_linkedlist_destroy", 1537);
      LbsOsaTrace_WriteLog(0x13u, __str, v3, 0, 1);
    }

    v4 = *MEMORY[0x29EDCA608];
  }
}

uint64_t lpp_fill_in_bitstr_from_byte(_BYTE *a1, size_t size, unsigned int a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (size)
  {
    v4 = size;
    *a1 = size;
    a1[4] = 1;
    v6 = gnssOsa_Calloc("posp_alloc", 18, 1, size);
    v7 = 0;
    *(a1 + 1) = v6;
    v8 = -v4;
    v9 = v4 - 1;
    do
    {
      *(*(a1 + 1) + v7++) = (a3 >> v9--) & 1;
    }

    while (!__CFADD__(v8++, 1));
    result = 1;
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lpp_fill_in_bitstr_from_ulong(unsigned int a1, size_t size, uint64_t a3)
{
  v4 = size;
  v14 = *MEMORY[0x29EDCA608];
  v6 = size;
  v7 = 1;
  v8 = gnssOsa_Calloc("posp_alloc", 18, 1, size);
  *(a3 + 8) = v8;
  if (v8)
  {
    *a3 = v4;
    *(a3 + 4) = 1;
    if (v4)
    {
      v9 = -v6;
      v10 = v4 - 1;
      do
      {
        *(*(a3 + 8) + v10) = a1 & 1;
        a1 >>= 1;
        --v10;
      }

      while (!__CFADD__(v9++, 1));
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v7;
}

double GAL_I_EphBin2Int(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  *(a2 + 16) = *(a1 + 8) & 0x3FF;
  *(a2 + 18) = *(a1 + 10) >> 2;
  v2 = *(a1 + 14);
  v3 = (*(a1 + 10) << 30) | (*(a1 + 12) << 14) | (v2 >> 2);
  v4 = *(a1 + 18);
  v5 = (v2 << 30) | (*(a1 + 16) << 14) | (v4 >> 2);
  *(a2 + 20) = v3;
  *(a2 + 24) = v5;
  v6 = *(a1 + 28) | (*(a1 + 26) << 16);
  *(a2 + 28) = (v4 << 30) | (*(a1 + 20) << 14) | (*(a1 + 22) >> 2);
  *(a2 + 32) = v6;
  v7 = *(a1 + 36) | (*(a1 + 34) << 16);
  *(a2 + 36) = *(a1 + 32) | (*(a1 + 30) << 16);
  *(a2 + 40) = v7;
  *(a2 + 48) = *(a1 + 38) >> 2;
  v8 = *(a1 + 44);
  *(a2 + 44) = (v8 | (*(a1 + 42) << 16)) >> 8;
  HIDWORD(v9) = v8;
  LODWORD(v9) = *(a1 + 46) << 16;
  *(a2 + 50) = v9 >> 24;
  HIDWORD(v9) = *(a1 + 46);
  LODWORD(v9) = *(a1 + 48) << 16;
  *(a2 + 52) = v9 >> 24;
  HIDWORD(v9) = *(a1 + 48);
  LODWORD(v9) = *(a1 + 50) << 16;
  *(a2 + 54) = v9 >> 24;
  HIDWORD(v9) = *(a1 + 50);
  LODWORD(v9) = *(a1 + 52) << 16;
  *(a2 + 56) = v9 >> 24;
  HIDWORD(v9) = *(a1 + 52);
  LODWORD(v9) = *(a1 + 54) << 16;
  *(a2 + 58) = v9 >> 24;
  *(a2 + 15) = *(a1 + 54);
  v10 = *(a1 + 58);
  *(a2 + 14) = v10 >> 10;
  HIDWORD(v9) = v10;
  LODWORD(v9) = *(a1 + 60) << 16;
  *(a2 + 60) = v9 >> 26;
  HIDWORD(v9) = *(a1 + 60);
  LODWORD(v9) = *(a1 + 62) << 16;
  *(a2 + 62) = v9 >> 26;
  *(a2 + 74) = (*(a1 + 64) >> 12) & 0xC00F | (16 * (*(a1 + 62) & 0x3FF));
  v11 = *(a1 + 68);
  v12 = *(a1 + 70);
  *(a2 + 64) = (2 * ((8 * *(a1 + 66)) | (*(a1 + 64) << 19) | (v11 >> 13))) >> 1;
  *(a2 + 68) = ((8 * v12) | (v11 << 19)) >> 11;
  *(a2 + 72) = v12 >> 2;
  *(a2 + 78) = ((*(a1 + 78) << 15) | (*(a1 + 76) << 31)) >> 22;
  *(a2 + 76) = ((*(a1 + 80) << 9) | (*(a1 + 78) << 25)) >> 22;
  v13 = *(a1 + 80);
  *(a2 + 85) = (v13 >> 11) & 3;
  *(a2 + 86) = (v13 >> 9) & 3;
  *(a2 + 82) = BYTE1(v13) & 1;
  *(a2 + 83) = (v13 & 0x80) != 0;
  *(a2 + 12) = (*(a1 + 82) >> 11) & 0xF01F | (32 * (v13 & 0x7F));
  *(a2 + 8) = (*(a1 + 84) >> 7) & 0xFFF001FF | ((*(a1 + 82) & 0x7FF) << 9);
  result = *a1;
  *a2 = *a1;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

const char *DEMGen_inpDEM2mST(uint64_t a1, uint64_t a2, double *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  *(a3 + 2) = 11;
  TCU_ConvertOStimeToTTICKtime(a2, *a1, a3);
  Set_Mat_Const(1, 1u, 6, a3 + 4, *(a1 + 8));
  result = Set_Mat_Const(1, 1u, 6, a3 + 18, *(a1 + 16));
  v7 = g_FPE_LogSeverity;
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v9 = *(g_TCU + 8);
    }

    else
    {
      v9 = 0.0;
    }

    result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f -DEM: t=%0.3f,Alt=%0.1f,RMS_Alt=%0.1f", "DEMGen_inpDEM2mST", 85, v8, v9, *a3, *(a1 + 8), *(a1 + 16));
    v7 = g_FPE_LogSeverity;
  }

  if ((v7 & 0x200) != 0)
  {
    result = LC_LOG_NMEA_GENERIC("%s,DEM,%.3f,%.1f,%.1f,%.3f", "$PFPEX", *a3, *(a1 + 8), *(a1 + 16), *(a2 + 40) - *a3);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DEMGen_run(double *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x29EDCA608];
  v8 = *(a3 + 87776);
  v9 = *(a4 + 128040);
  memset(__dst, 0, sizeof(__dst));
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v10 = *(a5 + 40);
  result = Cyc_Record_Count_Free(v9, 1u);
  if (!result)
  {
    goto LABEL_22;
  }

  while (1)
  {
    result = Cyc_Record_IsEmpty(v8, a2);
    if (result)
    {
      break;
    }

    Cyc_Record_Read(v8, a2, __dst);
    DEMGen_inpDEM2mST(__dst, a5, &v20);
    v12 = *&v20;
    v13 = *a1;
    if (*&v20 < *a1)
    {
      if (*&v20 < v13 + -6.0)
      {
        if ((g_FPE_LogSeverity & 4) != 0)
        {
          v14 = mach_continuous_time();
          if (g_TCU)
          {
            v15 = *(g_TCU + 8);
          }

          else
          {
            v15 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f DEM: ignoring measurement in the past! meas.time=%0.3f, prevTime=%0.3f (diff=%0.3f)", "DEMGen_run", 149, (*&g_MacClockTicksToMsRelation * v14), v15, *&v20, *a1, *a1 - *&v20);
        }

        goto LABEL_18;
      }

      if (*&v20 < v13 + -0.05 && (g_FPE_LogSeverity & 4) != 0)
      {
        v16 = mach_continuous_time();
        if (g_TCU)
        {
          v17 = *(g_TCU + 8);
        }

        else
        {
          v17 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f DEM: using measurement %0.3f sec in the past. meas.time=%0.3f, prevTime=%0.3f", "DEMGen_run", 161, (*&g_MacClockTicksToMsRelation * v16), v17, *a1 - *&v20, *&v20, *a1);
        v13 = *a1;
      }

      v12 = v13 + 0.001;
      *&v20 = v13 + 0.001;
    }

    *a1 = v12;
    Cyc_Record_Write(v9, &v20);
LABEL_18:
    result = Cyc_Record_Count_Free(v9, 1u);
    if (!result)
    {
      goto LABEL_22;
    }
  }

  DWORD2(v20) = 12;
  *&v20 = v10 + 0.001;
  *&v21 = 0x3FF0000000000000;
  if (v10 + 0.001 > *a1)
  {
    *a1 = v10 + 0.001;
    result = Cyc_Record_Write(v9, &v20);
  }

LABEL_22:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofSvcs02_02Crc32(uint64_t result, unsigned __int8 *a2, unsigned int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if ((g_Crc32Table_Computed & 1) == 0)
  {
    for (i = 0; i != 256; ++i)
    {
      v4 = 0;
      v5 = i;
      do
      {
        if (v5)
        {
          v5 = (v5 >> 1) ^ 0xEDB88320;
        }

        else
        {
          v5 >>= 1;
        }
      }

      while (v4++ < 7);
      g_Crc32_RemTable[i] = v5;
    }

    g_Crc32Table_Computed = 1;
  }

  if (a3)
  {
    v7 = ~result;
    v8 = a3;
    do
    {
      v9 = *a2++;
      v7 = g_Crc32_RemTable[v7 ^ v9] ^ (v7 >> 8);
      --v8;
    }

    while (v8);
    result = ~v7;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xofSvcs02_03EndianConvert(unsigned __int8 *a1, unsigned int a2, signed __int8 *a3, unsigned int a4)
{
  v26 = *MEMORY[0x29EDCA608];
  if (a4 && a2 && a1 && a3)
  {
    if (a2 < 2)
    {
LABEL_12:
      result = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = a2 - 1;
      while (1)
      {
        v9 += a1[v8];
        if (v9 >= a4)
        {
          result = LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0);
          if (!result)
          {
            goto LABEL_23;
          }

          bzero(__str, 0x410uLL);
          v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx OffSet,%u,DataSize,%u\n", v18);
          goto LABEL_21;
        }

        v11 = a1[v8 + 1];
        if ((v11 - 9) < 0xFFFFFFF8)
        {
          break;
        }

        v12 = __src;
        v13 = a1[v8 + 1];
        do
        {
          *v12++ = a3[v9 - 1 + v13--];
        }

        while (v13);
        memcpy_s("xofSvcs02_04SingleEnConvert", 82, &a3[v9], v11, __src, v11);
        if (++v8 == v10)
        {
          goto LABEL_12;
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Data,Size,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 69, "xofSvcs02_04SingleEnConvert", 513, v11);
        LbsOsaTrace_WriteLog(8u, __str, v21, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Endian conversion,MapIndex,%u,OffSet,%u\n", v22);
LABEL_21:
        v16 = v19;
        v17 = 5;
        goto LABEL_22;
      }
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Data,StructSizeMap,MapSize,%u,DataSize,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 69, "xofSvcs02_03EndianConvert", 515, a2, a4);
      v17 = 0;
LABEL_22:
      LbsOsaTrace_WriteLog(8u, __str, v16, v17, 1);
      result = 0;
    }
  }

LABEL_23:
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xofSvcs02_04GetStartSv(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) >= 6)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    LOBYTE(v1) = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstellType,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "xofSvcs02_04GetStartSv", 515, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
      LOBYTE(v1) = 0;
    }
  }

  else
  {
    v1 = 0x10101C17801uLL >> (8 * (a1 - 1));
  }

  v6 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t DD_GLON_Alm_Set_Health_Frq(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v15 = 0;
  v16 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v19 = 0;
  result = GLON_AlmBin2Int(a1, &v15);
  v4 = BYTE3(v16) - 32;
  if (BYTE3(v16) <= 0x18u)
  {
    v4 = 2139062143;
  }

  if (BYTE3(v16) >= 7u)
  {
    v5 = v4;
  }

  else
  {
    v5 = BYTE3(v16);
  }

  v6 = BYTE2(v16);
  v7 = BYTE2(v16) - 1;
  if (v7 <= 0x17)
  {
    if (BYTE6(v18) == 1)
    {
      if (g_Enable_Event_Log > 1u)
      {
        v8 = *(a2 + v7 + 4084);
        if (v8 != 2139062143 && v8 != v5)
        {
          result = EvCrt_v("DD_GLON_Alm_Set_Health_Frq:  Error:  Ignoring apparent change of Frq Id of Slot %d from %d to %d %d %d", BYTE2(v16), v8, v5, 1, v19);
        }
      }

      if (*(a2 + v7 + 4084) == 2139062143 && v5 != 2139062143)
      {
        *(a2 + v7 + 4084) = v5;
      }

      v11 = a2[1401];
      if ((*(v11 + v7) & 1) == 0 && (*(a2[2034] + v7) & 1) == 0)
      {
        *(v11 + v7) = 1;
        result = EvLog_v("DD_GLON_Alm_Set_Health_Frq:  Health U->H Alm:  Slot %d  FrqId %d", BYTE2(v16), v5);
        *(a2[1402] + 20 * v7 + 4) = 1;
      }
    }

    else
    {
      v12 = a2[1401];
      if (*(v12 + v7) == 1)
      {
        *(v12 + v7) = 0;
        result = EvLog_v("DD_GLON_Alm_Set_Health_Frq:  Health H->U Alm:  Slot %d  FrqId %d", v6, v5);
        *(a2[1402] + 20 * v7 + 4) = 2;
      }

      if (*(a2 + v7 + 4084) == 2139062143 && v5 <= 6)
      {
        *(a2 + v7 + 4084) = v5;
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void *DD_Proc_GLON_Data(void *result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v146 = *MEMORY[0x29EDCA608];
  v8 = a2 + 16;
  v7 = *(a2 + 16);
  if ((v7 & 0x80000000) == 0)
  {
    v10 = result;
    v11 = *(a2 + 58) + 7;
    v12 = a6 + 16432;
    v13 = *(a6 + 16432 + 4 * v11);
    v14 = v13;
    v15 = v13 - 1;
    v16 = v7 >> 27;
    *(a2 + 59) = v16;
    if (!v16)
    {
      goto LABEL_3;
    }

    if (*(a4 + 60) >= 7)
    {
      v20 = *(a6 + 8444);
      if ((v20 - 2) < 5 || (v20 - 1) <= 5 && *(a4 + 64) == 1)
      {
        v21 = (*(a2 + 60) % 30);
        v22 = ((*(a2 + 60) % 30 + (((*(a2 + 60) % 30) & 0x80u) >> 7)) << 24) >> 25;
        if ((v21 + 1) < 3)
        {
          v22 = 15;
        }

        if (v22 != v7 >> 27 && !*a3 && (*(*(a6 + 48) + *(a2 + 8)) & 1) == 0 && ((v22 - 2) > 3u || v16 + 1 != v22))
        {
          if (g_Enable_Event_Log >= 2u)
          {
            v138 = a5;
            v24 = a6;
            result = EvCrt_nd("DD_Proc_GLON_Data:  Decoded Str No error", 3, a3, v16, v22, v21);
            a6 = v24;
            a5 = v138;
          }

          *(a2 + 59) = 0;
LABEL_3:
          v17 = *(a2 + 59);
          if ((v17 - 1) > 4)
          {
            if ((v17 - 6) <= 9)
            {
              if (v17)
              {
                v34 = v10 + 6005;
                v35 = 14;
                do
                {
                  v36 = *v34;
                  if (v36 != v17 && v36 != 0)
                  {
                    *v34 = 0;
                  }

                  if (*(v34 - 1))
                  {
                    v38 = v17 - 1 == *(v34 - 1);
                  }

                  else
                  {
                    v38 = 1;
                  }

                  if (!v38)
                  {
                    *(v34 - 1) = 0;
                  }

                  v34 += 2;
                  --v35;
                }

                while (v35);
              }

              else
              {
                v25 = v10 + 6005;
                v26 = 14;
                do
                {
                  v27 = *(v25 - 1);
                  if (v27 != v17 && v27 != 0)
                  {
                    *(v25 - 1) = 0;
                  }

                  *v25 = 0;
                  v25 += 2;
                  --v26;
                }

                while (v26);
                *(v10 + 6397) = 0;
              }
            }
          }

          else
          {
            *(v10 + 1507) = 0;
            *(v10 + 6020) = 0;
            *(v10 + 6004) = 0u;
            *(v10 + 6398) = 0;
            *(v10 + 3198) = 0;
          }

          v39 = *(a2 + 59);
          if ((v39 - 1) < 4)
          {
            if (v14 != 2139062143)
            {
              v40 = a6 + 11224 + (v15 << 6);
              if (*(v40 + 60) != 4095 && *(*(a6 + 11208) + v15) == 1 && *(*(a6 + 16272) + v15) == 1 && *(a2 + 60) % 1800 >= 30)
              {
                v41 = v8;
                v42 = a5;
                v140 = a6;
                DD_Proc_Glon_Eph_Bit_Validation(v14, v39, v41, a6);
                v43 = *(v40 + 60);
                result = DD_Proc_Glon_Eph_String(v10, a2, a4, v42);
                a6 = v140;
                if (v43 == 4095)
                {
                  v44 = *v42;
                  *v40 = *v42;
                  *(v40 + 4) = 4;
                  *(*(v140 + 16304) + v15) = 1;
                  if (*(v10 + v11 + 5508) >= 2u)
                  {
                    v45 = *(v140 + 16328);
                    *v45 = 0;
                    v45[1] = 0;
                    v45[2] = 0;
                  }

                  if (v44 >= 1)
                  {
                    v46 = 0;
                    LODWORD(v47) = 0;
                    v48 = p_NV + 72 * v14;
                    v49 = *v40;
                    v50 = *(v40 + 16);
                    v51 = *(v40 + 32);
                    *(v48 + 20376) = *(v40 + 48);
                    *(v48 + 20360) = v51;
                    *(v48 + 20344) = v50;
                    *(v48 + 20328) = v49;
                    v52 = 55665;
                    do
                    {
                      v53 = *(v48 + 20328 + v46) ^ BYTE1(v52);
                      v52 = 52845 * (v52 + v53) + 22719;
                      v47 = (v47 + v53);
                      ++v46;
                    }

                    while (v46 != 64);
                    *(v48 + 20320) = v47;
                  }
                }

                goto LABEL_96;
              }
            }

            v54 = a6;
            result = DD_Proc_Glon_Eph_String(v10, a2, a4, a5);
            goto LABEL_95;
          }

          if (v39 != 5)
          {
            if (!*(a2 + 59))
            {
              v54 = a6;
              result = EvLog_d("DD_Proc_GLON_Data:  Bad string", *(a2 + 9));
LABEL_95:
              a6 = v54;
              goto LABEL_96;
            }

            if (*(a4 + 60) < 3)
            {
              goto LABEL_96;
            }

            v71 = *(a2 + 16);
            v72 = (*(a2 + 60) - 2 * ((v71 >> 27) & 0xF) + 15) / 30 % 5 + 1;
            if (((((*(a2 + 60) - 2 * ((v71 >> 27) & 0xF) + 15) / 30 % 5) + 1) & 0x100) != 0)
            {
              goto LABEL_96;
            }

            v73 = (v71 >> 27) & 0xF;
            v74 = *(a2 + 58) + 7;
            if ((v71 >> 27))
            {
              v103 = v10 + 2 * v74 + 6004;
              if (*v103 + 1 == v73 && *(v10 + v74 + 5972) == 1)
              {
                v104 = &v10[3 * v74];
                v105 = *(v8 + 8);
                *(v104 + 6044) = *v8;
                *(v104 + 1513) = v105;
                if (!*(v10 + 1500))
                {
                  v106 = *(a2 + 60);
                  if (v106 >= 1)
                  {
                    *(v10 + 1500) = v106;
                  }
                }

                v103[1] = v73;
                *(v10 + v74 + 5986) = v72;
                v107 = v10 + 2 * v74 + 6368;
                v107[1] = *(a2 + 15);
                ++*(v10 + 6397);
                *(v10 + v74 + 1600) = *a5;
                if (!*v107 && !*(v10 + 2 * v74 + 6369))
                {
                  ++*(v10 + 6398);
                }
              }

              else
              {
                if (g_Enable_Event_Log >= 6u)
                {
                  v108 = a6;
                  if (*(v10 + v74 + 5972) == 1)
                  {
                    v137 = LODWORD(v10[3 * v74 + 754]);
                    result = EvLog_v("DD_Proc_Glon_Alm_String:  String numbers not consecutive, 1stStrId %d  2ndStrId %d  FrqId %d  FrmId %d  StrId %d  glonALM_Str1:  0x%x ");
                  }

                  else
                  {
                    result = EvLog_v("DD_Proc_Glon_Alm_String:  Clk1 not Ready, FrqId %d  FrmId %d  StrId %d  Clk1_Ready %d ");
                  }

                  a6 = v108;
                }

                if (*v103)
                {
                  *v103 = 0;
                }
              }

              goto LABEL_96;
            }

            if (v73 == 14 && ((*(a2 + 60) - 2 * ((v71 >> 27) & 0xF) + 15) / 30 % 5 + 1) == 5)
            {
              v75 = *(v12 + 4 * v74);
              if (v75 == 2139062143 || (*(*(a6 + 11208) + v75 - 1) & 1) == 0)
              {
                if (g_Enable_Event_Log >= 2u)
                {
                  v54 = a6;
                  result = EvLog_v("DD_Proc_Glon_Alm_String:  Rejected:  Clk2 String,  SlotNum %d  FrqId %d  FrmId %d  StrId %d  glonALM_Str1:  0x%x ", v75, *(a2 + 58), 5, 14, LODWORD(v10[3 * v74 + 754]));
                  goto LABEL_95;
                }

LABEL_96:
                v63 = 0;
                LODWORD(v64) = 0;
                v65 = *(a6 + 11208);
                v66 = p_NV;
                v67 = *(v65 + 16);
                *(p_NV + 19172) = *v65;
                *(v66 + 19188) = v67;
                v68 = 55665;
                do
                {
                  v69 = *(v66 + 19168 + v63) ^ BYTE1(v68);
                  v68 = 52845 * (v68 + v69) + 22719;
                  v64 = (v64 + v69);
                  ++v63;
                }

                while (v63 != 32);
                *(v66 + 19160) = v64;
                goto LABEL_99;
              }

LABEL_178:
              v112 = &v10[3 * v74];
              v113 = *v8;
              *(v112 + 1510) = *(v8 + 8);
              v112[754] = v113;
              if (!*(v10 + 1500))
              {
                v114 = *(a2 + 60);
                if (v114 >= 1)
                {
                  *(v10 + 1500) = v114;
                }
              }

              v115 = v10 + 2 * v74;
              v115[6004] = v73;
              v115[6368] = *(a2 + 15);
              ++*(v10 + 6396);
              *(v10 + v74 + 1600) = *a5;
              goto LABEL_96;
            }

            if (((v71 >> 19) & 0x1F) - 25 >= 0xFFFFFFE8)
            {
              v74 = v74;
              goto LABEL_178;
            }

            if (g_Enable_Event_Log < 2u)
            {
              goto LABEL_96;
            }

            v132 = (v71 >> 27) & 0xF;
            v135 = *(a2 + 16);
            v128 = *(a2 + 58);
            v129 = ((*(a2 + 60) - 2 * ((v71 >> 27) & 0xF) + 15) / 30 % 5 + 1);
            v126 = (v71 >> 19) & 0x1F;
            v62 = "DD_Proc_Glon_Alm_String:  Rejected:  Invalid Slot %d  FrqId %d  FrmId %d  StrId %d  Word[0]: 0x%x ";
LABEL_94:
            v54 = a6;
            result = EvCrt_v(v62, v126, v128, v129, v132, v135);
            goto LABEL_95;
          }

          v55 = *(a2 + 20);
          v56 = *(a2 + 24);
          HIDWORD(v58) = *(a2 + 16);
          LODWORD(v58) = v55;
          v57 = v58 >> 16;
          v59 = HIWORD(HIDWORD(v58)) & 0x7FF;
          v60 = (v58 >> 16) & 0x7FFFFFFF;
          if (v57 < 0)
          {
            v57 = -v60;
          }

          if ((v55 & 0x200) != 0)
          {
            v61 = -((__PAIR64__(v55, v56) >> 20) & 0x1FFFFF);
          }

          else
          {
            v61 = (__PAIR64__(v55, v56) >> 20) & 0x3FFFFF;
          }

          if ((v59 - 1462) < 0xFFFFFA4B)
          {
            v126 = *(a2 + 58);
            v128 = HIWORD(*(a2 + 16)) & 0x7FF;
            v62 = "DD_Proc_Glon_Clk1_String:  Rejected:  FrqId %d  NA = %d  - Out of range [1..1461]";
            goto LABEL_94;
          }

          v76 = 0;
          v77 = a6 + 12288;
          v78 = *a5;
          v79 = (v55 >> 10) & 0x1F;
          v80 = (v56 >> 19) & 1;
          v81 = v10 + 5580;
          result = v10 + 700;
          v82 = 1;
          while (1)
          {
            if (v57 == *(result - 2) && v61 == *result && v79 - 2 < *(result - 4))
            {
              v83 = *(result - 6);
              v84 = __OFSUB__(v59, v83);
              v85 = v59 - v83;
              a3 = (v85 + 1461);
              if (v85 < 0 != v84)
              {
                v85 += 1461;
              }

              if (v85 <= 3)
              {
                break;
              }
            }

            v82 = v76 < 0xD;
            result = (result + 28);
            if (++v76 == 14)
            {
              v82 = 0;
              v86 = *(a2 + 58) + 7;
              v87 = &v81[28 * v86];
              *v87 = v78;
              *(v87 + 1) = 0;
              *(v87 + 4) = v59;
              *(v87 + 3) = v57;
              v87[16] = v79;
              *(v87 + 5) = v61;
              v87[24] = v80;
              v88 = *(a2 + 15) == 0;
              goto LABEL_118;
            }
          }

          v86 = *(a2 + 58) + 7;
          v87 = &v81[28 * v86];
          *v87 = v78;
          *(v87 + 1) = 0;
          *(v87 + 4) = v59;
          *(v87 + 3) = v57;
          v87[16] = v79;
          *(v87 + 5) = v61;
          v87[24] = v80;
          v88 = 1;
LABEL_118:
          *(v10 + v86 + 5972) = v88;
          if ((*(a6 + 16296) & 1) != 0 || !v88)
          {
            if (!v82)
            {
              goto LABEL_149;
            }

            if (*(a6 + 16296))
            {
              if (*(a6 + 16232) >= v79)
              {
                goto LABEL_133;
              }

              v92 = *(a4 + 66) - v79;
              if (v92 < 0)
              {
                v92 = v79 - *(a4 + 66);
              }

              if (v92 >= 2)
              {
LABEL_133:
                if (*(a6 + 16224) > v59)
                {
                  goto LABEL_149;
                }

                v93 = *(a4 + 68) - v59;
                if (v93 < 0)
                {
                  v93 = v59 - *(a4 + 68);
                }

                if (v93 > 1)
                {
LABEL_149:
                  if (g_Enable_Event_Log >= 6u)
                  {
                    v54 = a6;
                    result = EvLog_nd("DD_Proc_Glon_Clk1_String:  Rejected: ", 6, a3, *(a6 + 16232), *(a6 + 16224), v79, v59, *(a4 + 66), *(a4 + 68));
                    goto LABEL_95;
                  }

                  goto LABEL_96;
                }
              }
            }

            v94 = *v87;
            *(a6 + 16228) = *(v87 + 12);
            *(a6 + 16216) = v94;
            *(a6 + 16216) = *a5;
            *(a6 + 16220) = 4;
          }

          else
          {
            v89 = *v87;
            *(a6 + 16228) = *(v87 + 12);
            *(a6 + 16216) = v89;
            *(a6 + 16216) = *a5;
            *(a6 + 16220) = 4;
            v90 = *(a6 + 16228);
            if (v90 < 0)
            {
              v90 = -v90;
            }

            if (v90 > 0x864)
            {
              goto LABEL_96;
            }

            v91 = *(a6 + 16236);
            if (v91 < 0)
            {
              v91 = -v91;
            }

            if (v91 >= 0x433)
            {
              goto LABEL_96;
            }
          }

          *(a6 + 16296) = 1;
          v95 = *(a4 + 68);
          v96 = (a6 + 16216);
          v97 = v95 - *(a6 + 16224);
          v98 = v97 + 1461;
          if (v97 >= -730)
          {
            v98 = v95 - *(a6 + 16224);
          }

          if (v97 <= 729)
          {
            v99 = v98;
          }

          else
          {
            v99 = v97 - 1461;
          }

          v100 = *(a4 + 64);
          if (v99 >= 0)
          {
            v101 = v99;
          }

          else
          {
            v101 = -v99;
          }

          v102 = *(a6 + 16232);
          if (v100 == 1 && v101 >= 2)
          {
            *(a4 + 66) = *(a6 + 16232);
            *(a4 + 64) = 0;
            goto LABEL_197;
          }

          if (v100)
          {
            v109 = *(a4 + 66);
            if (v102 != v109)
            {
              v110 = a6;
              v111 = a5;
              if (v109 + 1 == v102 && v95 == 1461)
              {
                result = EvLog_nd("DD_Proc_Glon_Clk1_String:  4yrBlockNo roll-over ", 2, a3, byte_2A1939000, *(a4 + 66), v102);
                *(a4 + 68) = 1;
              }

              else
              {
                result = EvCrt_nd("DD_Proc_Glon_Clk1_String:  WARNING:  4yrBlockNo miss-match ", 2, a3, byte_2A1939000, *(a4 + 66), v102);
              }

              *(a4 + 66) = *(v77 + 3944);
              a5 = v111;
              a6 = v110;
              if ((*(a4 + 64) & 1) == 0)
              {
                goto LABEL_197;
              }
            }
          }

          else
          {
            *(a4 + 66) = v102;
            if (v95 < 1)
            {
LABEL_197:
              v120 = 0;
              LODWORD(v121) = 0;
              *(a6 + 16216) = *a5;
              *(a6 + 16220) = 4;
              v122 = p_NV;
              v123 = *(v96 + 12);
              *(p_NV + 19208) = *v96;
              *(v122 + 19220) = v123;
              v124 = 55665;
              do
              {
                v125 = *(v122 + 19208 + v120) ^ BYTE1(v124);
                v124 = 52845 * (v124 + v125) + 22719;
                v121 = (v121 + v125);
                ++v120;
              }

              while (v120 != 32);
              *(v122 + 19200) = v121;
              goto LABEL_96;
            }

            *(a4 + 64) = 1;
          }

          if (*(a4 + 5) != 1 || !*a4)
          {
            v116 = a6;
            *v141 = 0;
            *v145 = 0;
            v144 = 0.0;
            v117 = a5;
            API_Get_UTC_Cor(1, v141);
            Glon_To_GPS_Time(*(a4 + 66), *(a4 + 68), *(a4 + 72), *v141, &v145[1], v145, &v144);
            result = DD_Submit_WeekNum(*(a2 + 58), v145[1], SLOWORD(v145[0]), a4, v144);
            a5 = v117;
            if (!*v117)
            {
              v118 = *(p_api + 48);
              if (*(v118 + 5) == 1 && *v118 >= 3)
              {
                v119 = *(v118 + 24) + 604800 * *(v118 + 16);
              }

              else
              {
                v119 = 0;
              }

              *v117 = v119;
            }

            a6 = v116;
          }

          goto LABEL_197;
        }
      }
    }

    if (v16 == 2)
    {
      if ((v7 & 0x4000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (v16 == 3)
    {
      if ((v7 & 0x800) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v16 < 5 || ((v7 >> 27) & 1) == 0)
      {
        goto LABEL_3;
      }

      if ((*(a2 + 26) & 8) == 0)
      {
LABEL_38:
        if (v14 == 2139062143)
        {
          goto LABEL_3;
        }

        *(result + v11 + 4706) = 0;
        if ((*(*(a6 + 11208) + v15) & 1) != 0 || *(*(a6 + 16288) + v15) != 1)
        {
          goto LABEL_3;
        }

        v139 = a5;
        memset(v141, 0, sizeof(v141));
        v142 = 0;
        v143 = 0;
        v29 = a6;
        result = GLON_AlmBin2Int(a6 + 36 * v15 + 15352, v141);
        if (BYTE6(v142) == 1)
        {
          *(*(v29 + 11208) + v15) = 1;
          result = EvLog_v("DD_Proc_GLON_Data:  Health U->H Imm:  Slot %d  FrqId %d", v14, *(a2 + 59));
          *(*(v29 + 11216) + 20 * v15 + 4) = 1;
        }

        else
        {
          a6 = v29;
          if (g_Enable_Event_Log < 4u)
          {
LABEL_162:
            a5 = v139;
            goto LABEL_3;
          }

          result = EvLog_v("DD_Proc_GLON_Data:  Health U->U Imm:  Slot %d  FrqId %d", v14, *(a2 + 59));
        }

        a6 = v29;
        goto LABEL_162;
      }
    }

    if (!*(a2 + 15))
    {
      ++*(result + v11 + 4706);
    }

    if (v14 == 2139062143)
    {
      v30 = *(a2 + 58);
      v130 = *(a2 + 15);
      v133 = *(result + v11 + 4706);
      v127 = *(a2 + 59);
      result = EvLog_v("DD_Proc_GLON_Data:  Health H->U Imm:  Slot ?  FrqId %d  String %d  Suspect_Bits %d  Bad_Cnt %d   (Ignored, no Slot)");
    }

    else
    {
      if (!*(a2 + 15) && *(result + v11 + 4706) >= 2u)
      {
        v31 = *(a6 + 11208);
        if (*(v31 + v15) == 1)
        {
          *(v31 + v15) = 0;
          v32 = a6;
          result = EvLog_v("DD_Proc_GLON_Data:  Health H->U Imm:  Slot %d  FrqId %d  String %d  Suspect_Bits %d  Bad_Cnt %d", v14, *(a2 + 58), *(a2 + 59), 0, *(result + v11 + 4706));
          a6 = v32;
          *(*(v32 + 11216) + 20 * v15) = 2;
        }
      }

      if (*(*(a6 + 11208) + v15) == 1)
      {
        v33 = *(a2 + 58);
        v134 = *(a2 + 15);
        v136 = *(v10 + v11 + 4706);
        v131 = *(a2 + 59);
        result = EvLog_v("DD_Proc_GLON_Data:  Health H->U Imm:  Slot %d  FrqId %d  String %d  Suspect_Bits %d  Bad_Cnt %d  (Waiting Confirmation)");
      }
    }

    goto LABEL_99;
  }

  if (g_Enable_Event_Log < 2u)
  {
LABEL_99:
    v70 = *MEMORY[0x29EDCA608];
    return result;
  }

  v18 = *(a2 + 59);
  v19 = *MEMORY[0x29EDCA608];

  return EvLog_d("DD_Proc_GLON_Data:  GLON MSB Zero test fail", v18);
}

char *DD_Proc_Glon_Eph_Bit_Validation(char *result, int a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = (result - 1);
  v5 = a2 - 1;
  if (v4 <= 0x17 && v5 <= 3)
  {
    v10 = result;
    v11 = 0;
    v12 = a4 + (v4 << 6) + 11224;
    v13 = 3 * v5;
    v15 = &MaskToStrCheck + 12 * v5;
    v16 = 3 * a2 - 3;
    do
    {
      v17 = *(v12 + 60);
      if (((v17 >> (v16 + v11)) & 1) == 0)
      {
        v18 = *(a3 + 4 * v11);
        v19 = *&v15[4 * v11];
        v14 = v12 + 4 * v13 + 12;
        if (((*(v14 + 4 * v11) ^ v18) & v19) != 0)
        {
          if (g_Enable_Event_Log >= 2u)
          {
            result = EvCrt_v("DD_Proc_Glon_Eph_Bit_Validation:  Fail SV %d  St %d  Wd %d  0x%x 0x%x 0x%x", v10, a2, v11, v18, *(v14 + 4 * v11), v19);
          }
        }

        else
        {
          *(v12 + 60) = v17 | (1 << (v13 + v11));
        }
      }

      ++v11;
    }

    while (v11 != 3);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

char *DD_Proc_Glon_Eph_String(char *result, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = result;
  v38[1] = *MEMORY[0x29EDCA608];
  v8 = (*(a2 + 58) + 7);
  v9 = &result[4 * v8 + 4724];
  v10 = (*(a2 + 59) - 1);
  v11 = &v9[v10];
  if (v9[v10] && ((*&result[48 * (*(a2 + 58) + 7) + 4780 + 12 * (*(a2 + 59) - 1)] ^ *(a2 + 16)) & MaskToStrCheck[3 * *(a2 + 59) - 3]) == 0)
  {
    v13 = 0;
    do
    {
      v14 = v13;
      if (v13 == 2)
      {
        break;
      }

      v15 = MaskToStrCheck[3 * *(a2 + 59) - 2 + v13];
      v16 = *&result[48 * (*(a2 + 58) + 7) + 4784 + 12 * (*(a2 + 59) - 1) + 4 * v13] ^ *(a2 + 20 + 4 * v13);
      ++v13;
    }

    while ((v16 & v15) == 0);
    v12 = v14 > 1;
  }

  else
  {
    v12 = 0;
  }

  v17 = &result[48 * (*(a2 + 58) + 7) + 4780 + 12 * (*(a2 + 59) - 1)];
  v18 = *(a2 + 16);
  *(v17 + 8) = *(a2 + 24);
  *v17 = v18;
  v19 = &result[4 * v8];
  v19[v10 + 5452] = *(a2 + 15);
  *(v19 + 1381) = *a4;
  if (v12)
  {
    v20 = *v11 + 1;
  }

  else
  {
    v20 = 1;
  }

  *v11 = v20;
  if (!*(result + 1180))
  {
    v21 = *(a2 + 60);
    if (v21 >= 1)
    {
      *(result + 1180) = v21;
    }
  }

  v22 = *(a2 + 59);
  if (v22 == 1)
  {
    if ((*&result[48 * v8 + 4782] & 0x180) == 0)
    {
      goto LABEL_42;
    }

    *v9 = 1;
    v22 = *(a2 + 59);
  }

  if (v22 != 4)
  {
    goto LABEL_42;
  }

  v23 = result[4 * v8 + 4727];
  if (result[4 * v8 + 4727])
  {
    v24 = (*&result[48 * v8 + 4824] >> 21) & 0x1F;
    if ((v24 - 25) <= 0xFFFFFFE7)
    {
      *v9 = 0;
      result = EvCrt_v("DD_Proc_Glon_Eph_String:  WARNING:  FrqId %d  Illegal SlotId %d !", *(a2 + 58), v24);
      if (*(a2 + 59) != 4)
      {
        goto LABEL_42;
      }

      v23 = v9[3];
    }

    v26 = (a3 + 64);
    v25 = *(a3 + 64);
    if (v23 > 1)
    {
      goto LABEL_28;
    }

    if (*(a3 + 64))
    {
      goto LABEL_42;
    }
  }

  else
  {
    v26 = (a3 + 64);
    if (*(a3 + 64))
    {
      goto LABEL_42;
    }
  }

  if (*(a2 + 15))
  {
    goto LABEL_42;
  }

  v25 = 0;
LABEL_28:
  v27 = *(a3 + 68);
  HIDWORD(v28) = *&v7[48 * v8 + 4820];
  LODWORD(v28) = *&v7[48 * v8 + 4824];
  v29 = (v28 >> 26) & 0x7FF;
  *(a3 + 68) = v29;
  if (v25)
  {
    if (v27 != v29)
    {
      *v26 = 0;
      result = EvCrt_nd("DD_Proc_Glon_Eph_String:  WARNING:  DayNo miss-match", 3, a3, v29, v27, *(a2 + 58));
    }
  }

  else if (*(a3 + 66) >= 1)
  {
    *v26 = 1;
    result = EvLog_nd("DD_Proc_Glon_Eph_String:  New DayNo ", 2, a3, v29, *(a2 + 58));
  }

  if (*v26 == 1 && (*(a3 + 5) != 1 || !*a3))
  {
    *v37 = 0;
    v38[0] = 0.0;
    v36 = 0.0;
    API_Get_UTC_Cor(1, v38);
    Glon_To_GPS_Time(*(a3 + 66), *(a3 + 68), *(a3 + 72), v38[0], &v37[1], v37, &v36);
    result = DD_Submit_WeekNum(*(a2 + 58), v37[1], SLOWORD(v37[0]), a3, v36);
    if (!*a4)
    {
      v30 = *(p_api + 48);
      if (*(v30 + 5) == 1 && *v30 >= 3)
      {
        v31 = *(v30 + 24) + 604800 * *(v30 + 16);
      }

      else
      {
        v31 = 0;
      }

      *a4 = v31;
    }
  }

LABEL_42:
  v32 = *v9;
  if (*v9 && v9[1] && v9[2] && v9[3])
  {
    v33 = 0;
    v7[v8 + 5508] = v32;
    do
    {
      v34 = v19[v33 + 4725];
      if (v34 < v32)
      {
        v7[v8 + 5508] = v34;
        v32 = v34;
      }

      ++v33;
    }

    while (v33 != 3);
  }

  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Save_New_GLON_Alm(uint64_t result, void *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v113 = *MEMORY[0x29EDCA608];
  v4 = a3 + 4096;
  if (a3[6397] <= 1u && !a3[6398])
  {
    goto LABEL_98;
  }

  v5 = 0;
  memset(v108, 0, sizeof(v108));
  v109 = 0;
  memset(v110, 0, 14);
  memset(v107, 0, 14);
  *&v6 = 0x7F7F7F7F7F7F7F7FLL;
  *(&v6 + 1) = 0x7F7F7F7F7F7F7F7FLL;
  v103 = a3 + 6004;
  v111[0] = v6;
  v111[1] = v6;
  v7 = a3 + 6005;
  v112 = 0x7F7F7F7F7F7F7F7FLL;
  v8 = 2139062143;
  v111[2] = v6;
  do
  {
    v9 = *(v7 - 1);
    if ((v9 - 6) <= 8 && *v7 == v9 + 1 && a3[v5 + 5972] == 1)
    {
      if (v8 == 2139062143)
      {
        v8 = v5;
      }

      else
      {
        v8 = v8;
      }

      v110[v5] = 1;
    }

    ++v5;
    v7 += 2;
  }

  while (v5 != 14);
  v10 = byte_2A1939000;
  if (v8 == 2139062143)
  {
    if (g_Enable_Event_Log >= 6u)
    {
      result = EvLog("DD_Check_GLON_Alm: No any valid Freq Id Channels for Cross-Checking Almanacs");
    }

    goto LABEL_95;
  }

  v93 = result;
  v11 = 0;
  v12 = 0;
  *(v108 + v8) = 1;
  v13 = a3 + 5986;
  v100 = a3 + 6032;
  v97 = a3 + 4096;
  v98 = a3 + 6368;
  v96 = a3 + 6068;
  v95 = a3 + 6056;
  v14 = &unk_2A1928000;
  v15 = 1;
  v16 = &MaskToAlmCheck;
  while (v8 >= 13)
  {
    v40 = v15 - 1;
    LOBYTE(v20) = 1;
    v22 = v8;
    v17 = v8;
LABEL_42:
    if (v13[v17] != 5 || v103[2 * v17] != 14)
    {
      v41 = &v98[2 * v17];
      if (!*v41 && !v41[1])
      {
        if (v4[2301] == v20)
        {
          goto LABEL_72;
        }

        v42 = (*&v100[24 * v17] >> 19) & 0x1F;
        if ((v42 - 1) <= 0x17 && (*(a2[2036] + v42 - 1) & 1) == 0)
        {
LABEL_40:
          v107[v40] = 1;
        }
      }
    }

    if (v107[v40] == 1)
    {
      *(v111 + v40) = v8;
      ++v11;
    }

    if (v22 != v8)
    {
      v12 += v20;
      *(v108 + v22) = ++v15;
      v8 = v22;
      if (v12 <= v4[2301])
      {
        continue;
      }
    }

    v3 = a2;
    v10 = byte_2A1939000;
    if (v11 >= 1)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = a3;
      v48 = a3 + 5580;
      v49 = v93;
      do
      {
        if (v107[v43] == 1)
        {
          v50 = *(v111 + v43);
          result = *&v48[28 * v50 + 8];
          if (v45)
          {
            v51 = result - v46 + 1461;
            if (result - v46 >= -730)
            {
              v51 = result - v46;
            }

            if (result - v46 <= 730)
            {
              v52 = v51;
            }

            else
            {
              v52 = result - v46 - 1461;
            }

            if (v52 <= 0)
            {
              v50 = v44;
            }

            else
            {
              v50 = v50;
            }

            if (v52 > 0)
            {
              v46 = result;
            }
          }

          else
          {
            v45 = v43 + 1;
            v46 = *&v48[28 * v50 + 8];
          }
        }

        else
        {
          v50 = v44;
        }

        ++v43;
        v44 = v50;
      }

      while ((v15 + 1) - 1 != v43);
      goto LABEL_73;
    }

    goto LABEL_95;
  }

  v101 = v12;
  v102 = v11;
  v17 = v8;
  v18 = &v103[2 * v8];
  v99 = &v100[24 * v8];
  v104 = v8;
  v105 = v8 + 65;
  v19 = &v96[24 * v8];
  v20 = 1;
  v21 = v8;
  v22 = v8;
  v23 = &v95[24 * v8];
  do
  {
    v24 = v21++;
    if (v110[v21] == 1 && *(v108 + v21) <= 0)
    {
      if (v13[v17] == 5 && *v18 == 14 && v13[v21] == 5 && v103[2 * v21] == 14)
      {
        if (((*&v100[24 * v21] ^ *v99) & 0x78000030) == 0)
        {
LABEL_36:
          *(v108 + v21) = v15;
          v20 = (v20 + 1);
          goto LABEL_20;
        }
      }

      else
      {
        v31 = v23;
        v32 = v16;
        v33 = v19;
        v34 = 3;
        v35 = v16;
        v36 = v23;
        while (1)
        {
          v38 = *v35++;
          v37 = v38;
          v39 = *v36++;
          result = v39;
          if (((v39 ^ *(v33 - 9)) & v37) != 0 || ((*(v31 + 3) ^ *(v33 - 6)) & v32[3]) != 0)
          {
            break;
          }

          v33 += 4;
          v31 = v36;
          v32 = v35;
          if (!--v34)
          {
            goto LABEL_36;
          }
        }
      }

      if (v22 == v8)
      {
        v22 = v21;
      }

      else
      {
        v22 = v22;
      }

      if (v14[547] >= 6u)
      {
        v91 = v13[v17];
        v25 = v14;
        v26 = v16;
        v106 = v22;
        v8 = v17;
        v27 = v20;
        v28 = v19;
        v29 = v15;
        v30 = v18;
        result = EvLog_v("DD_Check_GLON_Alm:  Different Almanacs, FrqId_1 %d  FrqId_2 %d  FramId %d  StrId %d ", v105, v24 + 66, v91, *v18);
        v18 = v30;
        v15 = v29;
        v19 = v28;
        v20 = v27;
        v17 = v8;
        LODWORD(v8) = v104;
        v22 = v106;
        v16 = v26;
        v14 = v25;
      }
    }

LABEL_20:
    v23 += 24;
  }

  while (v21 != 13);
  v40 = v15 - 1;
  if (v20 < 2u)
  {
    v4 = v97;
    v12 = v101;
    v11 = v102;
    goto LABEL_42;
  }

  v4 = v97;
  v12 = v101;
  v11 = v102;
  if (v97[2301] != v20)
  {
    goto LABEL_40;
  }

LABEL_72:
  LODWORD(v50) = v8;
  v3 = a2;
  v10 = byte_2A1939000;
  v49 = v93;
  v47 = a3;
LABEL_73:
  v53 = v50;
  v54 = v13[v50];
  if (v54 == 5 && v103[2 * v50] == 14)
  {
    goto LABEL_77;
  }

  v55 = &v100[24 * v50];
  v56 = (*v55 >> 19) & 0x1F;
  if ((v56 - 25) <= 0xFFFFFFE7)
  {
    result = EvCrt_v("DD_Validate_GLON_Alm:  Rejected:  FrqCh %d   Slot Number %d - Out of range", v50 - 7, v56);
    goto LABEL_77;
  }

  v57 = (v56 - 1);
  v58 = v3[2036];
  if (*(v58 + v57) == 1)
  {
    v59 = *&v47[28 * v50 + 5588] - *(v3 + 18 * v57 + 7680);
    v60 = v59 - 1461;
    if (v59 <= 730)
    {
      v60 = *&v47[28 * v50 + 5588] - *(v3 + 18 * v57 + 7680);
    }

    v61 = v59 >= -730 ? v60 : v59 + 1461;
    if (v61 <= 0)
    {
      if (v49 >= 1 && !v61 && (v54 != 5 || v103[2 * v50] != 14 && v57 <= 0x17))
      {
        v81 = v3 + 36 * v57 + 15352;
        LODWORD(v82) = *v81;
        if (!*v81)
        {
          v83 = 0;
          *v81 = v49;
          *(v81 + 4) = 4;
          v84 = *(v10 + 183) + 48 * v56;
          v85 = (v84 + 19192);
          v86 = *(v81 + 32);
          v87 = *v81;
          *(v84 + 19216) = *(v81 + 16);
          *(v84 + 19200) = v87;
          *(v84 + 19232) = v86;
          v88 = v84 + 19200;
          v89 = 55665;
          do
          {
            v90 = *(v88 + v83) ^ BYTE1(v89);
            v89 = 52845 * (v89 + v90) + 22719;
            v82 = (v82 + v90);
            ++v83;
          }

          while (v83 != 40);
          *v85 = v82;
        }
      }

LABEL_77:
      if (v4[2301] == v4[2300])
      {
        goto LABEL_94;
      }

      goto LABEL_95;
    }
  }

  if (v54 != 5 || v103[2 * v50] != 14)
  {
    v62 = v3 + 36 * v57 + 15352;
    v63 = *v55;
    *(v62 + 28) = *(v55 + 2);
    *(v62 + 12) = v63;
    if (v14[547] >= 6u)
    {
      EvLog_v("DD_Save_New_GLON_Alm:  New Alm  Slot %d  FrqId %d  FramId %d  StrId %d  Suspect_Bits %d %d  Word[0] 0x%x  NA_Clk1 %d  NA_DBnmAlm  %d ", v56, v50 + 65, v13[v50], v103[2 * v50], v98[2 * v50], v98[2 * v50 + 1], *v55, *&v47[28 * v50 + 5588], *(v3 + 18 * v57 + 7680));
      v58 = v3[2036];
    }

    *(v3 + 18 * v57 + 7680) = *&v47[28 * v53 + 5588];
    *v62 = v49;
    *(v3 + 9 * v57 + 3839) = 4;
    *(v3[2032] + v57) = 1;
    *(v58 + v57) = 1;
    result = DD_GLON_Alm_Set_Health_Frq(v3 + 36 * v57 + 15352, v3);
    if (v49 >= 1)
    {
      v64 = 0;
      LODWORD(v65) = 0;
      v66 = *(v10 + 183) + 48 * v56;
      v67 = (v66 + 19192);
      v68 = *(v3 + 9 * v57 + 3846);
      v69 = *v62;
      *(v66 + 19216) = *(v3 + 36 * v57 + 15368);
      *(v66 + 19200) = v69;
      *(v66 + 19232) = v68;
      v70 = v66 + 19200;
      v71 = 55665;
      do
      {
        v72 = *(v70 + v64) ^ BYTE1(v71);
        v71 = 52845 * (v71 + v72) + 22719;
        v65 = (v65 + v72);
        ++v64;
      }

      while (v64 != 40);
      *v67 = v65;
    }
  }

LABEL_94:
  *v103 = 0;
  *(v103 + 1) = 0;
  *(v103 + 6) = 0;
  *(v103 + 2) = 0;
  v4[2302] = 0;
  *(v4 + 1150) = 0;
LABEL_95:
  v73 = 0;
  LODWORD(v74) = 0;
  v75 = v3[1401];
  v76 = *(v10 + 183);
  v77 = *(v75 + 16);
  *(v76 + 19172) = *v75;
  *(v76 + 19188) = v77;
  v78 = 55665;
  do
  {
    v79 = *(v76 + 19168 + v73) ^ BYTE1(v78);
    v78 = 52845 * (v78 + v79) + 22719;
    v74 = (v74 + v79);
    ++v73;
  }

  while (v73 != 32);
  *(v76 + 19160) = v74;
LABEL_98:
  v80 = *MEMORY[0x29EDCA608];
  return result;
}

void DD_Save_New_GLON_Eph(int a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v115 = *MEMORY[0x29EDCA608];
  if (a1 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = (a1 + 10800) / 0x15180u;
    v11 = ((22967 * (v10 - 5839)) >> 25) + ((22967 * (v10 - 5839)) >> 31);
    v12 = v10 - 1461 * v11 - 5838;
    v13 = v11 + 1;
    v14 = 20400;
    do
    {
      if (*(*(a4 + 16272) + v8) == 1)
      {
        v15 = *(a4 + 16304);
        if ((*(v15 + v8) & 1) == 0)
        {
          v16 = 0;
          LODWORD(v17) = 0;
          v18 = a4 + 11224 + (v8 << 6);
          HIDWORD(v20) = *(v18 + 52);
          LODWORD(v20) = *(v18 + 56);
          v19 = v20 >> 26;
          if (!v7)
          {
            v6 = v12;
            v9 = (a1 + 10800) % 0x15180u;
          }

          v21 = v19 & 0x7FF;
          *(v15 + v8) = 1;
          if (v21 - v6 > 730)
          {
            v6 += 1461;
          }

          v22 = v9 - 900 * (*(v18 + 26) & 0x7F) + 86400 * (v6 - v21);
          *v18 = a1 - (v22 & ~(v22 >> 31));
          *(v18 + 4) = 4;
          v23 = p_NV;
          v24 = *v18;
          v25 = *(v18 + 16);
          v26 = *(v18 + 32);
          v27 = p_NV + 72 * v8;
          *(v27 + 20448) = *(v18 + 48);
          *(v27 + 20432) = v26;
          *(v27 + 20416) = v25;
          *(v27 + 20400) = v24;
          v28 = v23 + v14;
          v29 = 55665;
          do
          {
            v30 = *(v28 + v16) ^ BYTE1(v29);
            v29 = 52845 * (v29 + v30) + 22719;
            v17 = (v17 + v30);
            ++v16;
          }

          while (v16 != 64);
          if (!v7)
          {
            v7 = v13;
          }

          *(v27 + 20392) = v17;
        }
      }

      ++v8;
      v14 += 72;
    }

    while (v8 != 24);
  }

  v31 = 0;
  v32 = a5 + 5508;
  v103 = a5 + 4780;
  v102 = a5 + 5452;
  v104 = a4 + 16432;
  v101 = a4 + 16336;
  v100 = a4 + 16488;
  v95 = ((2 * (a3 / 1800)) | 1);
  v94 = a4 + 11224;
  v33 = a5 + 5453;
  v97 = vdupq_n_s64(0x3FDF400000000000uLL);
  v96 = vdupq_n_s64(0x3F4F400000000000uLL);
  do
  {
    if (!*(v32 + v31))
    {
      goto LABEL_60;
    }

    memset(&v109[1], 0, 46);
    v109[0] = 0u;
    v34 = (v103 + 48 * v31);
    v35 = v34[1];
    *(v109 + 12) = *v34;
    v106 = 0u;
    memset(v107, 0, 30);
    v105 = 0u;
    *(&v109[1] + 12) = v35;
    *(&v109[2] + 12) = v34[2];
    v36 = GLON_EphBin2Int(v109, &v105, *(&v109[2] + 12));
    v37 = 0;
    v38 = SBYTE12(v105);
    v39 = (v102 + 4 * v31);
    LOBYTE(v40) = *v39;
    do
    {
      if (*(v33 + v37) <= v40)
      {
        v40 = v40;
      }

      else
      {
        v40 = *(v33 + v37);
      }

      ++v37;
    }

    while (v37 != 3);
    v41 = (v38 - 1);
    if (*(v32 + v31) >= 2u)
    {
      goto LABEL_23;
    }

    if ((*(*(a4 + 16280) + v41) & 1) != 0 || (*(*(a4 + 16272) + v41) & 1) != 0 || v40)
    {
      if ((*(v104 + 4 * v31) == 2139062143 || *(v101 + 4 * v41) == 2139062143) && !v39[3])
      {
        *(v101 + 4 * v41) = v31 - 7;
        *(v104 + 4 * v31) = v38;
        *(v100 + 4 * v31) = 2;
      }

      goto LABEL_59;
    }

    if (*(v104 + 4 * v31) == 2139062143 || *(v101 + 4 * v41) == 2139062143)
    {
LABEL_23:
      *(v101 + 4 * v41) = v31 - 7;
      *(v104 + 4 * v31) = v38;
    }

    *(v100 + 4 * v31) = 2;
    if ((v38 - 25) <= 0xE7u)
    {
      if (g_Enable_Event_Log >= 2u)
      {
        EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  Invalid Out-of-range GLON Slot Num %d", v36);
      }

      goto LABEL_59;
    }

    if (a2 >= 4 && (*(a4 + 8444) - 1) <= 5 && v95 != BYTE13(v105))
    {
      if (g_Enable_Event_Log >= 2u)
      {
        EvCrt_v("DD_Validate_GLON_Eph:  FAIL:  Tb check, R %d  est %d  dec %d", v36);
      }

      goto LABEL_59;
    }

    v42.i64[0] = SHIDWORD(v106);
    v42.i64[1] = v107[0];
    v113 = vmulq_f64(vcvtq_f64_s64(v42), v97);
    v114 = v107[1] * 0.48828125;
    v43 = 0.0;
    v44 = 2;
    do
    {
      v43 = v43 + v113.f64[v44] * v113.f64[v44];
      v45 = v44-- + 1;
    }

    while (v45 > 1);
    v46 = sqrt(v43);
    if (v46 < 25200000.0 || v46 > 25800000.0)
    {
      if (g_Enable_Event_Log >= 2u)
      {
        EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  SV Pos check, R %d  Mag_Pos %g");
      }
    }

    else
    {
      v47.i64[0] = v107[2];
      v47.i64[1] = v107[3];
      v111 = vmulq_f64(vcvtq_f64_s64(v47), v96);
      v112 = v107[4] * 0.000953674316;
      v48 = 0.0;
      v49 = 2;
      do
      {
        v48 = v48 + v111.f64[v49] * v111.f64[v49];
        v50 = v49-- + 1;
      }

      while (v50 > 1);
      v51 = sqrt(v48);
      if (v51 >= 2720.0 && v51 <= 4000.0)
      {
        v110[0] = SLOBYTE(v107[5]) * 0.000000931322575;
        v110[1] = SBYTE1(v107[5]) * 0.000000931322575;
        v110[2] = SBYTE2(v107[5]) * 0.000000931322575;
        v52 = 0.0;
        v53 = 2;
        do
        {
          v52 = v52 + v110[v53] * v110[v53];
          v54 = v53-- + 1;
        }

        while (v54 > 1);
        v55 = sqrt(v52);
        if (v55 > 0.000009)
        {
          if (g_Enable_Event_Log >= 2u)
          {
            EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  SV Acc check, R %d  Mag_Acc %g", v38, v55);
          }

          v56 = 0;
          *(*(a4 + 16328) + (v38 - 1)) = 1;
          goto LABEL_68;
        }

        if (v106 - 1462 <= 0xFFFFFA4A)
        {
          if (g_Enable_Event_Log >= 2u)
          {
            EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  Eph Nt check, R %d  Nt %d", v38, v106);
          }

          v56 = 0;
          goto LABEL_68;
        }

        if (*(*(a4 + 16272) + (v38 - 1)) != 1)
        {
          goto LABEL_81;
        }

        memset(v108, 0, 62);
        v92 = v94 + ((v38 - 1) << 6);
        GLON_EphBin2Int(v92, v108, 0);
        if (BYTE13(v105) != BYTE13(v108[0]) && g_Enable_Event_Log >= 6u)
        {
          EvLog_v("DD_Validate_GLON_Eph:  New Eph SV %d %d %d", SBYTE12(v105), BYTE13(v105), BYTE13(v108[0]));
          v56 = 0;
          goto LABEL_82;
        }

        if (BYTE13(v105) == BYTE13(v108[0]))
        {
          v66 = *(v92 + 60);
          if (v66 == 4095)
          {
            v56 = 1;
            goto LABEL_68;
          }

          if (g_Enable_Event_Log >= 2u)
          {
            EvLog_v("DD_Validate_GLON_Eph:  (Adopted) Eph Binary difference with same tb SV %d tb %d checked 0x%x", SBYTE12(v105), BYTE13(v105), v66);
          }

          v56 = 1;
        }

        else
        {
LABEL_81:
          v56 = 0;
        }

LABEL_82:
        v67 = (v94 + (v41 << 6));
        v68 = *v34;
        v69 = v34[1];
        *(v67 + 44) = v34[2];
        *(v67 + 28) = v69;
        *(v67 + 12) = v68;
        *v67 = a1;
        *(v67 + 1) = 4;
        if (*(v32 + v31) <= 1u)
        {
          v70 = 0;
        }

        else
        {
          v70 = 4095;
        }

        *(v67 + 30) = v70;
        *(*(a4 + 16272) + v41) = 1;
        *(*(a4 + 16320) + v41) = 0;
        *(v67 + 2) = v31 - 7;
        v71 = *(a4 + 11208);
        v72 = BYTE5(v106);
        if (*(v71 + v41) == 1)
        {
          v73 = "DD_GLON_Alm_Set_Health_Frq:  Health H->U Eph:  Slot %d  FrqId %d ";
          if ((BYTE5(v106) & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        else
        {
          if (BYTE5(v106))
          {
            v72 = 1;
LABEL_92:
            *(v71 + v41) = v72 ^ 1;
            if (v72)
            {
              v74 = 2;
            }

            else
            {
              v74 = 1;
            }

            *(*(a4 + 11216) + 20 * v41) = v74;
            if (a1 < 1)
            {
              goto LABEL_59;
            }

            v75 = 0;
            LODWORD(v76) = 0;
            *(*(a4 + 16304) + v41) = 1;
            v77 = p_NV + 72 * v38;
            v78 = *v67;
            v79 = v67[1];
            v80 = v67[2];
            *(v77 + 20376) = v67[3];
            *(v77 + 20360) = v80;
            *(v77 + 20344) = v79;
            *(v77 + 20328) = v78;
            v81 = 55665;
            do
            {
              v82 = *(v77 + 20328 + v75) ^ BYTE1(v81);
              v81 = 52845 * (v81 + v82) + 22719;
              v76 = (v76 + v82);
              ++v75;
            }

            while (v75 != 64);
            *(v77 + 20320) = v76;
LABEL_68:
            if (a1 >= 1)
            {
              if (v56)
              {
                v57 = (v94 + (v41 << 6));
                LODWORD(v58) = *v57;
                if (!*v57)
                {
                  v59 = 0;
                  *(*(a4 + 16304) + v41) = 1;
                  *v57 = a1;
                  *(v57 + 1) = 4;
                  v60 = p_NV + 72 * v38;
                  v61 = *v57;
                  v62 = v57[1];
                  v63 = v57[2];
                  *(v60 + 20376) = v57[3];
                  *(v60 + 20360) = v63;
                  *(v60 + 20344) = v62;
                  *(v60 + 20328) = v61;
                  v64 = 55665;
                  do
                  {
                    v65 = *(v60 + 20328 + v59) ^ BYTE1(v64);
                    v64 = 52845 * (v64 + v65) + 22719;
                    v58 = (v58 + v65);
                    ++v59;
                  }

                  while (v59 != 64);
                  *(v60 + 20320) = v58;
                }
              }
            }

            goto LABEL_59;
          }

          v73 = "DD_GLON_Alm_Set_Health_Frq:  Health U->H Eph:  Slot %d  FrqId %d ";
        }

        v93 = v56;
        EvLog_v(v73, v38);
        v67 = (v94 + (v41 << 6));
        v56 = v93;
        v72 = BYTE5(v106);
        v71 = *(a4 + 11208);
        goto LABEL_92;
      }

      if (g_Enable_Event_Log >= 2u)
      {
        EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  SV Vel check, R %d  Vel_Mag %g");
      }
    }

    *(*(a4 + 16328) + (v38 - 1)) = 1;
LABEL_59:
    *(v32 + v31) = 0;
LABEL_60:
    ++v31;
    v33 += 4;
  }

  while (v31 != 14);
  v83 = 0;
  LODWORD(v84) = 0;
  v85 = *(a4 + 11208);
  v86 = p_NV;
  v87 = p_NV + 19172;
  v88 = *(v85 + 16);
  *(p_NV + 19172) = *v85;
  *(v87 + 16) = v88;
  v89 = 55665;
  do
  {
    v90 = *(v86 + 19168 + v83) ^ BYTE1(v89);
    v89 = 52845 * (v89 + v90) + 22719;
    v84 = (v84 + v90);
    ++v83;
  }

  while (v83 != 32);
  *(v86 + 19160) = v84;
  v91 = *MEMORY[0x29EDCA608];
}

int *DD_Check_Age_GLON_Data(int *result, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  if (*(result + 64) == 1)
  {
    v3 = result;
    if (result[15] >= 2)
    {
      v5 = 0;
      v6 = (a2 + 1920);
      v7 = a2 + 1410;
      v8 = 19248;
      do
      {
        v9 = a2[2034];
        if (*(v9 + v5) == 1)
        {
          HIDWORD(v10) = *(v7 - 1);
          LODWORD(v10) = *v7;
          LODWORD(v11) = *(v3 + 9) - 900 * (*(v7 - 15) & 0x7F);
          v12 = (v10 >> 26) & 0x7FF;
          if (((v10 >> 26) & 0x7FF) != 0)
          {
            LODWORD(v11) = v11 + 86400 * (*(v3 + 34) - v12);
            if (v11 > 63115200)
            {
              LODWORD(v11) = v11 - 126230400;
            }

            if (v11 >= -63115200)
            {
              v11 = v11;
            }

            else
            {
              v11 = (v11 + 126230400);
            }
          }

          else
          {
            if (v11 < -43200)
            {
              LODWORD(v11) = v11 + 86400;
            }

            if (v11 <= 43199)
            {
              v11 = v11;
            }

            else
            {
              v11 = (v11 - 86400);
            }
          }

          if (v11 >= 0)
          {
            v13 = v11;
          }

          else
          {
            v13 = -v11;
          }

          if (v13 >= 0x26AD)
          {
            v14 = v7 - 14;
            *(v9 + v5) = 0;
            *(a2[2040] + v5) = 0;
            *(v14 + 46) = 0u;
            v14[1] = 0u;
            v14[2] = 0u;
            *v14 = 0u;
            *(a2[2033] + v5) = 1;
            *(a2[2041] + v5) = 0;
            if (g_Enable_Event_Log >= 2u)
            {
              result = EvLog_nd("DD_Check_Age_GLON_Data:  Delete ", 2, a3, v5 + 1, v11);
            }
          }
        }

        v15 = a2[2036];
        if (*(v15 + v5) == 1)
        {
          v16 = *(v3 + 34) - *v6;
          v17 = v16 + 1461;
          if (v16 >= -730)
          {
            v17 = *(v3 + 34) - *v6;
          }

          if (v16 <= 729)
          {
            v18 = v17;
          }

          else
          {
            v18 = v16 - 1461;
          }

          if ((v18 - 183) <= 0xFFFFFF3A)
          {
            *(a2[2032] + v5) = 0;
            *(v15 + v5) = 0;
            *(v6 + 6) = 0;
            *(v6 - 4) = 0u;
            *(v6 + 4) = 0u;
            *(a2[2040] + v5) = 0;
            *(a2[2041] + v5) = 0;
            v19 = p_NV + v8;
            *(v19 - 8) = 0xFFFFFFFFLL;
            *v19 = 0u;
            *(v19 + 16) = 0u;
            *(v19 + 32) = 0;
            if (v18 <= 182)
            {
              result = EvLog_v("DD_Check_Age_GLON_Data:  Future Almanac deleted,  SV %d age %d");
            }

            else
            {
              result = EvLog_v("DD_Check_Age_GLON_Data:  Old Almanac deleted,  SV %d age %d");
            }
          }
        }

        ++v5;
        v8 += 48;
        v6 += 18;
        v7 += 16;
      }

      while (v5 != 24);
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Check_GLON_Strings(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (result >= 3 && (*(a4 + 8444) - 1) <= 5)
  {
    if ((a2 % 30 + 1) >= 3)
    {
      v4 = ((a2 % 30 + (((a2 % 30) & 0x80u) >> 7)) << 24) >> 25;
    }

    else
    {
      v4 = 15;
    }

    v5 = *(a3 + 6000);
    v6 = a2 - v5;
    if (a2 < v5)
    {
      v6 = a2 - v5 + 86400;
    }

    v7 = v6 > 24;
    v8 = v5 >= 1 && v7;
    if (a2 < 1)
    {
      v8 = 0;
    }

    if (v4 == 2 && result != 3 || v8)
    {
      *(a3 + 6000) = 0u;
      *(a3 + 6016) = 0u;
    }

    if (a2 >= 1 && (v11 = *(a3 + 4720), v11 >= 1) && (v11 + 10) / 0x708u != (a2 + 10) / 0x708u || (a2 % 1800 >= 1771 ? (v12 = v4 == 10) : (v12 = 0), v12))
    {
      *(a3 + 5514) = 0;
      *(a3 + 5508) = 0;
      *(a3 + 4720) = 0u;
      *(a3 + 4736) = 0u;
      *(a3 + 4752) = 0u;
      *(a3 + 4764) = 0u;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

char *DD_LS_Delete_EphAlm_Str(char *result, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (result >= 1 && *(a2 + 5) == 1 && *a2 >= 1)
  {
    v3 = result;
    v4 = *(a2 + 24);
    v5 = -0.5;
    if (v4 > 0.0)
    {
      v5 = 0.5;
    }

    v6 = v4 + v5;
    if (v6 <= 2147483650.0)
    {
      if (v6 >= -2147483650.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFF;
    }

    if ((result - 604800 * *(a2 + 16) - v7) >= 0xFFFFF1F1)
    {
      v8 = 0;
      v9 = a3 + 5524;
      v10 = a3 + 4724;
      v11 = a3 + 5508;
      v12 = a3 + 6400;
      v13 = a3 + 6032;
      v14 = a3 + 6004;
      v15 = (a3 + 6397);
      do
      {
        v16 = *(v9 + 4 * v8);
        if (v16 >= 1 && v16 <= v3)
        {
          *(v10 + 4 * v8) = 0;
          *(v11 + v8) = 0;
          *(v9 + 4 * v8) = 0;
          result = EvLog_v("DD_LS_Delete_EphAlm_Str:  Del Eph , Frq %2d ", v8 + 1);
        }

        v18 = *(v12 + 4 * v8);
        if (v18 >= 1 && v18 <= v3)
        {
          v20 = (v13 + 24 * v8);
          *v20 = 0;
          v20[1] = 0;
          v20[2] = 0;
          *(v14 + 2 * v8) = 0;
          *v15 = 0;
          *(v12 + 4 * v8++) = 0;
          result = EvLog_v("DD_LS_Delete_EphAlm_Str:  Del Alm , Frq %2d ", v8);
        }

        else
        {
          ++v8;
        }
      }

      while (v8 != 14);
    }
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

void *DD_Delete_Bad_GLON_Data(uint64_t a1, void *a2)
{
  v2 = 0;
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1 + 4724;
  v4 = a1 + 4780;
  v5 = a1 + 5452;
  v6 = a1 + 5508;
  v7 = a2 + 1403;
  v8 = 20400;
  result = &unk_2A1939000;
  do
  {
    v10 = a2[2033];
    if (*(v10 + v2) == 1)
    {
      v11 = *(a2 + v2 + 4084) + 7;
      if (v11 <= 0xD)
      {
        *(v3 + 4 * v11) = 0;
        v12 = (v4 + 48 * v11);
        *v12 = 0uLL;
        v12[1] = 0uLL;
        v12[2] = 0uLL;
        *(v5 + 4 * v11) = 0;
        *(v6 + v11) = 0;
        v10 = a2[2033];
      }

      *(v10 + v2) = 0;
      *(a2[2031] + v2) = 0;
      *(a2[2034] + v2) = 0;
      *(v7 + 46) = 0uLL;
      v7[1] = 0uLL;
      v7[2] = 0uLL;
      *v7 = 0uLL;
      *(a2[2041] + v2) = 0;
      *(a2[2038] + v2) = 1;
      v13 = (p_NV + v8);
      *(v13 - 1) = 0xFFFFFFFFLL;
      *v13 = 0uLL;
      v13[1] = 0uLL;
      v13[2] = 0uLL;
      *(v13 + 46) = 0uLL;
    }

    ++v2;
    v8 += 72;
    v7 += 4;
  }

  while (v2 != 24);
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Delete_Inhib_GLON_Data(uint64_t result, uint64_t a2, void *a3)
{
  v3 = 0;
  v19 = *MEMORY[0x29EDCA608];
  v4 = a2 + 4724;
  v5 = a2 + 4780;
  v6 = a2 + 5452;
  v7 = a2 + 5508;
  v8 = a3 + 1403;
  v9 = a3 + 1595;
  v10 = a3 + 1919;
  v11 = 20400;
  v12 = 19248;
  do
  {
    if (*(result + v3) == 1)
    {
      v13 = *(a3 + v3 + 4084) + 7;
      if (v13 <= 0xD)
      {
        *(v4 + 4 * v13) = 0;
        v14 = (v5 + 48 * v13);
        *v14 = 0uLL;
        v14[1] = 0uLL;
        v14[2] = 0uLL;
        *(v6 + 4 * v13) = 0;
        *(v7 + v13) = 0;
      }

      *(a3[2033] + v3) = 0;
      *(a3[2031] + v3) = 0;
      *(a3[2034] + v3) = 0;
      *(v8 + 46) = 0uLL;
      v8[1] = 0uLL;
      v8[2] = 0uLL;
      *v8 = 0uLL;
      *(a3[2035] + v3) = 0;
      *(v9 + 92) = 0uLL;
      v9[4] = 0uLL;
      v9[5] = 0uLL;
      v9[2] = 0uLL;
      v9[3] = 0uLL;
      *v9 = 0uLL;
      v9[1] = 0uLL;
      *(a3[2041] + v3) = 0;
      *(a3[2038] + v3) = 1;
      v15 = p_NV;
      v16 = (p_NV + v11);
      *v16 = 0uLL;
      v16[1] = 0uLL;
      v16[2] = 0uLL;
      *(v16 + 46) = 0uLL;
      *(a3[2032] + v3) = 0;
      *(v16 - 1) = 0xFFFFFFFFLL;
      *(a3[2036] + v3) = 0;
      *(v10 + 8) = 0;
      *v10 = 0uLL;
      *(v10 + 1) = 0uLL;
      v17 = v15 + v12;
      *(v17 - 8) = 0xFFFFFFFFLL;
      *v17 = 0uLL;
      *(v17 + 16) = 0uLL;
      *(v17 + 32) = 0;
    }

    ++v3;
    v11 += 72;
    v12 += 48;
    v10 = (v10 + 36);
    v9 = (v9 + 108);
    v8 += 4;
  }

  while (v3 != 24);
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *DD_Submit_WeekNum(_BYTE *result, __int16 a2, uint64_t a3, int *a4, double a5)
{
  v21 = *MEMORY[0x29EDCA608];
  if (*(a4 + 5))
  {
    goto LABEL_30;
  }

  v7 = result;
  if (*a4)
  {
    v8 = a5;
    v9 = *(a4 + 3);
    v10 = v8 - v9;
    v11 = v10 + 604800;
    if (v10 <= -302401)
    {
      v12 = a3 - 1;
    }

    else
    {
      v12 = a3;
    }

    if (v10 > -302401)
    {
      v11 = v8 - v9;
    }

    if (v10 >= 302400)
    {
      v13 = a3 + 1;
    }

    else
    {
      v13 = v12;
    }

    if (v10 >= 302400)
    {
      v14 = v10 - 604800;
    }

    else
    {
      v14 = v11;
    }

    if ((v14 + 129599) >= 0x2A2FF)
    {
      v15 = ((v14 + 43200) / 86400);
      v16 = v9 + (86400 * v15);
      *(a4 + 3) = v16;
      if (g_Enable_Event_Log >= 2u)
      {
        result = EvLog_nd("DD_Submit_WeekNum(R): Day number set ", 3, a3, v15, v16, v8);
      }
    }

    v17 = v13 + (a2 << 10);
  }

  else
  {
    *(a4 + 3) = a5;
    v18 = a4[15];
    if (!v18 || (v18 >= 3 ? (v19 = 3) : (v19 = a4[15]), *a4 = v19, v18 <= 2))
    {
      if (a5 < 86370.0 || a5 >= 518370.0)
      {
        goto LABEL_27;
      }
    }

    v17 = a3 + (a2 << 10);
  }

  *(a4 + 8) = v17;
  *(a4 + 5) = 1;
LABEL_27:
  if (g_Enable_Event_Log >= 2u && *(a4 + 8))
  {
    result = EvLog_nd("DD_Submit_WeekNum(R): GPS Week No set from Glon SV", 4, a3, v7, *(a4 + 8), *(a4 + 3), *a4);
  }

LABEL_30:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Inc_CA_Chips(uint64_t result, int *a2, int *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *a2 + result;
  for (*a2 = v3; *a2 > 1534499; v3 = *a2)
  {
    *a2 = v3 - 1534500;
    if (*a3 <= 403198)
    {
      v4 = 1;
    }

    else
    {
      v4 = -403199;
    }

    *a3 += v4;
  }

  if (v3 < 0)
  {
    do
    {
      *a2 = v3 + 1534500;
      if (*a3 < 1)
      {
        v5 = 403199;
      }

      else
      {
        v5 = -1;
      }

      *a3 += v5;
      v3 = *a2;
    }

    while (*a2 < 0);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Nav_Kalman_Update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v358 = v15;
  v360 = v14;
  v361 = v16;
  v351 = v17;
  v352 = v18;
  v20 = v19;
  v21 = v13;
  v396 = *MEMORY[0x29EDCA608];
  v22 = *(v13 + 128);
  v357 = (v13 + 128);
  v23 = v19 + 5689;
  *(v13 + 169) = 0;
  v342 = v13 + 169;
  *(v13 + 173) = 0;
  v344 = v24;
  if (v22 == 1)
  {
    *a11 = 0;
  }

  else if (*a11 == 1)
  {
    *a11 = 0;
    *(v13 + 128) = 1;
    *(v13 + 132) = 77;
  }

  if (*(a10 + 65) >= 5u)
  {
    *(a10 + 65) = 0;
  }

  v394 = 0u;
  memset(v395, 0, sizeof(v395));
  memset(v393, 0, 491);
  memset(&v392[2188], 0, 25);
  memset(&v392[2060], 0, 119);
  memset(&v392[1868], 0, 179);
  memset(&v392[1740], 0, 113);
  bzero(v392, 0x6CBuLL);
  bzero(v391, 0x15C8uLL);
  bzero(v390, 0x15C8uLL);
  bzero(v389, 0x2258uLL);
  memset(v388, 0, sizeof(v388));
  LOWORD(v387) = 0;
  BYTE2(v387) = 0;
  memset(v386, 0, sizeof(v386));
  LOWORD(v385) = 0;
  BYTE2(v385) = 0;
  memset(v384, 0, 56);
  BYTE2(v383) = 0;
  LOWORD(v383) = 0;
  memset(v382, 0, 56);
  BYTE2(v381) = 0;
  LOWORD(v381) = 0;
  memset(v380, 0, sizeof(v380));
  BYTE2(v379) = 0;
  LOWORD(v379) = 0;
  memset(v378, 0, 56);
  BYTE2(v377) = 0;
  LOWORD(v377) = 0;
  memset(&v376[15], 0, 104);
  memset(&v376[14] + 4, 0, 12);
  memset(&v376[10], 0, 53);
  memset(&v376[9] + 4, 0, 12);
  memset(&v376[5], 0, 53);
  memset(&v376[4] + 4, 0, 12);
  memset(v376, 0, 61);
  BYTE2(v375) = 0;
  LOWORD(v375) = 0;
  memset(v374, 0, 56);
  BYTE2(v373) = 0;
  LOWORD(v373) = 0;
  memset(&v372[7], 0, 56);
  memset(&v372[6] + 4, 0, 12);
  memset(&v372[2], 0, 61);
  memset(v372, 0, 31);
  v371 = 0u;
  v370 = 0u;
  v369 = 0u;
  BYTE2(v368) = 0;
  LOWORD(v368) = 0;
  memset(&v367[37], 0, 112);
  memset(&v367[36] + 4, 0, 12);
  memset(&v367[29], 0, 102);
  memset(v367, 0, 455);
  memset(&v366[183], 0, 12);
  memset(&v366[103], 0, 311);
  memset(v366, 0, 409);
  memset(v363, 0, 294);
  *(__src + 3) = 0;
  LODWORD(__src[0]) = 0;
  v394 = 0uLL;
  *v395 = 0;
  memset(&v395[8], 0, 73);
  *(&v393[29] + 11) = 0u;
  *(&v393[29] + 2) = 0u;
  *(&v393[28] + 2) = 0u;
  *(&v393[27] + 2) = 0u;
  *(&v393[26] + 2) = 0u;
  *(&v393[25] + 2) = 0u;
  *(&v393[24] + 2) = 0u;
  *(&v393[23] + 2) = 0u;
  *(&v393[22] + 2) = 0u;
  *(&v393[21] + 2) = 0u;
  *(&v393[20] + 2) = 0u;
  *(&v393[19] + 2) = 0u;
  *(&v393[18] + 2) = 0u;
  *(&v393[17] + 2) = 0u;
  *(&v393[16] + 2) = 0u;
  *(&v393[15] + 2) = 0u;
  *(&v393[14] + 2) = 0u;
  *(&v393[13] + 2) = 0u;
  *(&v393[12] + 2) = 0u;
  *(&v393[11] + 2) = 0u;
  *(&v393[10] + 2) = 0u;
  *(&v393[9] + 2) = 0u;
  *(&v393[8] + 2) = 0u;
  *(&v393[7] + 2) = 0u;
  *(&v393[6] + 2) = 0u;
  *(&v393[5] + 2) = 0u;
  *(&v393[4] + 2) = 0u;
  *(&v393[3] + 2) = 0u;
  *(&v393[2] + 2) = 0u;
  *(&v393[1] + 2) = 0u;
  *(v393 + 2) = 0u;
  memset(&v392[2192], 0, 21);
  memset(&v392[2064], 0, 115);
  *(&v387 + 3) = 0;
  *(&v387 + 1) = 0;
  *(&v385 + 3) = 0;
  *(&v385 + 1) = 0;
  *(&v383 + 3) = 0;
  *(&v383 + 1) = 0;
  *(&v381 + 1) = 0;
  *(&v381 + 3) = 0;
  *(&v379 + 1) = 0;
  *(&v379 + 3) = 0;
  *(&v377 + 3) = 0;
  *(&v377 + 1) = 0;
  *(&v375 + 3) = 0;
  *(&v375 + 1) = 0;
  *(&v373 + 1) = 0;
  *(&v373 + 3) = 0;
  *(&v368 + 3) = 0;
  *(&v368 + 1) = 0;
  *(&v363[76] + 2) = 0u;
  *(&v363[73] + 2) = 0u;
  memset(&v392[1870], 0, 177);
  memset(&v392[1743], 0, 110);
  bzero(&v392[6], 0x6C5uLL);
  bzero(v391 + 3, 0x15C5uLL);
  bzero(v390 + 3, 0x15C5uLL);
  bzero(&v389[3], 0x2255uLL);
  v364 = 0uLL;
  v365 = 0;
  bzero(__src + 7, 0x1491uLL);
  v25 = *&v395[64];
  *(v20 + 4) = *&v395[48];
  *(v20 + 5) = v25;
  v20[24] = *&v395[80];
  v26 = *v395;
  *v20 = v394;
  *(v20 + 1) = v26;
  v27 = *&v395[32];
  *(v20 + 2) = *&v395[16];
  *(v20 + 3) = v27;
  *(v20 + 25) = 0;
  *(v20 + 54) = 0;
  memcpy(v20 + 110, v393, 0x1EBuLL);
  *(v20 + 601) = 0;
  v20[151] = 0;
  *(v20 + 76) = 0;
  v20[154] = -1;
  *(v20 + 155) = *&v392[2188];
  *(v20 + 629) = *&v392[2197];
  *(v20 + 645) = 0;
  *(v20 + 323) = 0;
  v20[162] = 0;
  v28 = *&v392[2060];
  v29 = *&v392[2076];
  v30 = *&v392[2108];
  *(v20 + 171) = *&v392[2092];
  *(v20 + 175) = v30;
  *(v20 + 163) = v28;
  *(v20 + 167) = v29;
  v31 = *&v392[2124];
  v32 = *&v392[2140];
  v33 = *&v392[2156];
  *(v20 + 763) = *&v392[2171];
  *(v20 + 183) = v32;
  *(v20 + 187) = v33;
  *(v20 + 179) = v31;
  *(v20 + 778) = 0;
  *(v20 + 771) = 0;
  v34 = *&v392[1868];
  v35 = *&v392[1884];
  v36 = *&v392[1916];
  *(v20 + 814) = *&v392[1900];
  *(v20 + 830) = v36;
  *(v20 + 782) = v34;
  *(v20 + 798) = v35;
  v37 = *&v392[1932];
  v38 = *&v392[1948];
  v39 = *&v392[1980];
  *(v20 + 878) = *&v392[1964];
  *(v20 + 894) = v39;
  *(v20 + 846) = v37;
  *(v20 + 862) = v38;
  v40 = *&v392[1996];
  v41 = *&v392[2012];
  v42 = *&v392[2028];
  *(v20 + 957) = *&v392[2043];
  *(v20 + 926) = v41;
  *(v20 + 942) = v42;
  *(v20 + 910) = v40;
  v43 = *&v392[1820];
  *(v20 + 1025) = *&v392[1804];
  *(v20 + 1041) = v43;
  *(v20 + 1057) = *&v392[1836];
  *(v20 + 1073) = v392[1852];
  v44 = *&v392[1756];
  *(v20 + 961) = *&v392[1740];
  *(v20 + 977) = v44;
  v45 = *&v392[1788];
  *(v20 + 993) = *&v392[1772];
  *(v20 + 1009) = v45;
  memcpy(v20 + 1074, v392, 0x6CBuLL);
  memcpy(v20 + 2813, v391, 0x15C8uLL);
  memcpy(v20 + 8389, v390, 0x15C8uLL);
  memcpy(v20 + 13965, v389, 0x2258uLL);
  *(v20 + 22757) = *v388;
  *(v20 + 22773) = *&v388[16];
  *(v20 + 22777) = v387;
  v46 = *&v386[16];
  *(v20 + 22793) = *v386;
  *(v20 + 22809) = v46;
  *(v20 + 22825) = *&v386[32];
  *(v20 + 22841) = *&v386[48];
  *(v20 + 22849) = v385;
  v47 = v384[0];
  v48 = v384[1];
  v49 = v384[2];
  *(v20 + 22913) = *&v384[3];
  *(v20 + 22881) = v48;
  *(v20 + 22897) = v49;
  *(v20 + 22865) = v47;
  *(v20 + 22921) = v383;
  *(v20 + 22985) = *&v382[3];
  v50 = v382[2];
  v51 = v382[0];
  *(v20 + 22953) = v382[1];
  *(v20 + 22969) = v50;
  *(v20 + 22937) = v51;
  *(v20 + 22993) = v381;
  v52 = v380[1];
  *(v20 + 23009) = v380[0];
  *(v20 + 23025) = v52;
  v53 = v380[2];
  v54 = v380[3];
  v55 = v380[6];
  v56 = v380[4];
  *(v20 + 23089) = v380[5];
  *(v20 + 23105) = v55;
  *(v20 + 23057) = v54;
  *(v20 + 23073) = v56;
  *(v20 + 23041) = v53;
  *(v20 + 23121) = v379;
  v57 = v378[0];
  v58 = v378[1];
  v59 = v378[2];
  *(v20 + 23185) = *&v378[3];
  *(v20 + 23153) = v58;
  *(v20 + 23169) = v59;
  *(v20 + 23137) = v57;
  *(v20 + 23193) = v377;
  v60 = v376[18];
  v61 = v376[19];
  v62 = v376[20];
  *(v20 + 23257) = *&v376[21];
  *(v20 + 23225) = v61;
  *(v20 + 23241) = v62;
  *(v20 + 23209) = v60;
  *(v20 + 23267) = 0;
  *(v20 + 23265) = 0;
  v23[128] = 0;
  *(v23 + 516) = 0;
  v63 = *(&v376[16] + 8);
  *(v20 + 23289) = *(&v376[17] + 1);
  *(v20 + 23273) = v63;
  v64 = v376[15];
  *(v20 + 23313) = *&v376[16];
  *(v20 + 23297) = v64;
  v65 = *(&v376[14] + 4);
  *(v20 + 23329) = HIDWORD(v376[14]);
  *(v20 + 23321) = v65;
  *(v20 + 23335) = 0;
  *(v20 + 23333) = 0;
  v23[145] = 0;
  v66 = v376[10];
  v67 = v376[11];
  v68 = v376[12];
  *(v20 + 23385) = *(&v376[12] + 13);
  *(v20 + 5839) = v67;
  *(v20 + 5843) = v68;
  *(v20 + 5835) = v66;
  v69 = *(&v376[9] + 4);
  *(v20 + 23401) = HIDWORD(v376[9]);
  *(v20 + 23393) = v69;
  *(v20 + 23407) = 0;
  *(v20 + 23405) = 0;
  v23[163] = 0;
  v70 = v376[5];
  v71 = v376[6];
  v72 = v376[7];
  *(v20 + 23457) = *(&v376[7] + 13);
  *(v20 + 5857) = v71;
  *(v20 + 5861) = v72;
  *(v20 + 5853) = v70;
  v73 = *(&v376[4] + 4);
  *(v20 + 23473) = HIDWORD(v376[4]);
  *(v20 + 23465) = v73;
  *(v20 + 23479) = 0;
  *(v20 + 23477) = 0;
  v23[181] = 0;
  v74 = v376[0];
  v75 = v376[1];
  v76 = v376[2];
  *(v20 + 23529) = *(&v376[2] + 13);
  *(v20 + 5875) = v75;
  *(v20 + 5879) = v76;
  *(v20 + 5871) = v74;
  *(v20 + 23545) = v375;
  v77 = v374[0];
  v78 = v374[1];
  v79 = v374[2];
  *(v20 + 23609) = *&v374[3];
  *(v20 + 23577) = v78;
  *(v20 + 23593) = v79;
  *(v20 + 23617) = v373;
  *(v20 + 23561) = v77;
  v80 = v372[7];
  v81 = v372[8];
  v82 = v372[9];
  *(v20 + 23681) = *&v372[10];
  *(v20 + 23649) = v81;
  *(v20 + 23665) = v82;
  *(v20 + 23633) = v80;
  v83 = *(&v372[6] + 4);
  *(v20 + 23697) = HIDWORD(v372[6]);
  *(v20 + 23689) = v83;
  *(v20 + 23703) = 0;
  *(v20 + 23701) = 0;
  v23[237] = 0;
  v84 = v372[2];
  v85 = v372[3];
  v86 = v372[4];
  *(v20 + 23753) = *(&v372[4] + 13);
  *(v20 + 5931) = v85;
  *(v20 + 5935) = v86;
  *(v20 + 5927) = v84;
  v87 = v369;
  v88 = v370;
  *(v20 + 5958) = *(v372 + 15);
  v89 = v372[0];
  *(v20 + 23801) = v371;
  *(v20 + 23817) = v89;
  *(v20 + 23769) = v87;
  *(v20 + 23785) = v88;
  *(v23 + 1092) = 0;
  *(v20 + 23849) = v368;
  v90 = v367[38];
  *(v20 + 23865) = v367[37];
  *(v20 + 23881) = v90;
  v91 = v367[39];
  v92 = v367[40];
  v93 = v367[43];
  v94 = v367[41];
  *(v20 + 23945) = v367[42];
  *(v20 + 23961) = v93;
  *(v20 + 23913) = v92;
  *(v20 + 23929) = v94;
  *(v20 + 23897) = v91;
  v95 = *(&v367[36] + 4);
  *(v20 + 23985) = HIDWORD(v367[36]);
  *(v20 + 23977) = v95;
  *(v20 + 23991) = 0;
  *(v20 + 23989) = 0;
  v23[309] = 0;
  v96 = v367[30];
  *(v20 + 5999) = v367[29];
  *(v20 + 6003) = v96;
  v97 = v367[31];
  v98 = v367[32];
  v99 = v367[33];
  v100 = v367[34];
  *(v20 + 24090) = *(&v367[34] + 14);
  *(v20 + 6015) = v99;
  *(v20 + 6019) = v100;
  *(v20 + 6007) = v97;
  *(v20 + 6011) = v98;
  *(v20 + 24130) = 0;
  *(v20 + 24098) = 0u;
  *(v20 + 24114) = 0u;
  memcpy(v20 + 24131, v367, 0x1C7uLL);
  *(v20 + 24586) = *&v366[183];
  *(v20 + 24594) = v366[185];
  v101 = *&v366[175];
  *(v20 + 24758) = *&v366[171];
  *(v20 + 24774) = v101;
  *(v20 + 24789) = *(&v366[178] + 3);
  v102 = *&v366[159];
  *(v20 + 24694) = *&v366[155];
  *(v20 + 24710) = v102;
  v103 = *&v366[167];
  *(v20 + 24726) = *&v366[163];
  *(v20 + 24742) = v103;
  v104 = *&v366[143];
  *(v20 + 24630) = *&v366[139];
  *(v20 + 24646) = v104;
  v105 = *&v366[151];
  *(v20 + 24662) = *&v366[147];
  *(v20 + 24678) = v105;
  v106 = *&v366[135];
  *(v20 + 24598) = *&v366[131];
  *(v20 + 24614) = v106;
  v107 = *&v366[116];
  v108 = *&v366[124];
  *(v20 + 24829) = *&v366[120];
  *(v20 + 24845) = v108;
  *(v20 + 24857) = *&v366[127];
  *(v20 + 24797) = *&v366[112];
  *(v20 + 24813) = v107;
  *(v20 + 24873) = 0;
  *(v20 + 24875) = 0;
  *(v23 + 2120) = 0;
  *(v20 + 24877) = 0;
  *(v20 + 24879) = 0;
  v23[531] = 0;
  *(v23 + 2128) = 0;
  *(v20 + 24885) = 0;
  *(v20 + 24887) = 0;
  v23[533] = 0;
  *(v23 + 2136) = 0;
  *(v20 + 24893) = 0;
  *(v20 + 24895) = 0;
  v23[535] = 0;
  *(v23 + 2144) = 0;
  *(v20 + 24901) = 0;
  *(v20 + 24903) = 0;
  v23[537] = 0;
  *(v23 + 2152) = 0;
  *(v20 + 24911) = 0;
  *(v20 + 24909) = 0;
  v23[539] = 0;
  *(v23 + 2160) = 0;
  *(v20 + 24919) = 0;
  *(v20 + 24917) = 0;
  v23[541] = 0;
  *(v23 + 2168) = 0;
  *(v20 + 24927) = 0;
  *(v20 + 24925) = 0;
  v23[543] = 0;
  *(v23 + 2176) = 0;
  *(v20 + 24935) = 0;
  *(v20 + 24933) = 0;
  v23[545] = 0;
  *(v23 + 2184) = 0;
  *(v20 + 24943) = 0;
  *(v20 + 24941) = 0;
  v23[547] = 0;
  *(v23 + 2192) = 0;
  *(v20 + 24951) = 0;
  *(v20 + 24949) = 0;
  v23[549] = 0;
  *(v23 + 2200) = 0;
  *(v20 + 24959) = 0;
  *(v20 + 24957) = 0;
  v23[551] = 0;
  *(v23 + 2208) = 0;
  *(v20 + 24967) = 0;
  *(v20 + 24965) = 0;
  v23[553] = 0;
  *(v23 + 2216) = 0;
  *(v20 + 24975) = 0;
  *(v20 + 24973) = 0;
  v23[555] = 0;
  *(v23 + 2224) = 0;
  *(v20 + 24983) = 0;
  *(v20 + 24981) = 0;
  v23[557] = 0;
  *(v23 + 2232) = 0;
  *(v20 + 24991) = 0;
  *(v20 + 24989) = 0;
  v23[559] = 0;
  *(v23 + 2240) = 0;
  *(v20 + 24999) = 0;
  *(v20 + 24997) = 0;
  v23[561] = 0;
  *(v23 + 2248) = 0;
  *(v20 + 25007) = 0;
  *(v20 + 25005) = 0;
  v23[563] = 0;
  *(v23 + 2256) = 0;
  *(v20 + 25015) = 0;
  *(v20 + 25013) = 0;
  v23[565] = 0;
  *(v23 + 2264) = 0;
  *(v20 + 25023) = 0;
  *(v20 + 25021) = 0;
  v23[567] = 0;
  *(v23 + 2272) = 0;
  *(v20 + 25031) = 0;
  *(v20 + 25029) = 0;
  v23[569] = 0;
  *(v23 + 2280) = 0;
  *(v20 + 25039) = 0;
  *(v20 + 25037) = 0;
  v23[571] = 0;
  *(v23 + 2288) = 0;
  *(v20 + 25047) = 0;
  *(v20 + 25045) = 0;
  v23[573] = 0;
  *(v23 + 2296) = 0;
  *(v20 + 25055) = 0;
  *(v20 + 25053) = 0;
  v23[575] = 0;
  *(v23 + 2304) = 0;
  *(v20 + 25063) = 0;
  *(v20 + 25061) = 0;
  v23[577] = 0;
  *(v23 + 2312) = 0;
  *(v20 + 25071) = 0;
  *(v20 + 25069) = 0;
  v23[579] = 0;
  *(v23 + 2320) = 0;
  *(v20 + 25079) = 0;
  *(v20 + 25077) = 0;
  v23[581] = 0;
  *(v23 + 2328) = 0;
  *(v20 + 25087) = 0;
  *(v20 + 25085) = 0;
  v23[583] = 0;
  *(v23 + 2336) = 0;
  *(v20 + 25095) = 0;
  *(v20 + 25093) = 0;
  v23[585] = 0;
  *(v23 + 2344) = 0;
  *(v20 + 25103) = 0;
  *(v20 + 25101) = 0;
  v23[587] = 0;
  *(v23 + 2352) = 0;
  *(v20 + 25111) = 0;
  *(v20 + 25109) = 0;
  v23[589] = 0;
  *(v23 + 2360) = 0;
  *(v20 + 25119) = 0;
  *(v20 + 25117) = 0;
  v23[591] = 0;
  *(v23 + 2368) = 0;
  *(v20 + 25127) = 0;
  *(v20 + 25125) = 0;
  v23[593] = 0;
  *(v23 + 2376) = 0;
  *(v20 + 25135) = 0;
  *(v20 + 25133) = 0;
  v23[595] = 0;
  *(v23 + 2384) = 0;
  v109 = *&v366[103];
  v110 = *&v366[107];
  *(v20 + 25173) = v366[111];
  *(v20 + 25141) = v109;
  *(v20 + 25157) = v110;
  memcpy(v20 + 25177, v366, 0x199uLL);
  *(v20 + 25586) = 0;
  *(v20 + 12795) = 0;
  *(v20 + 3199) = 0;
  *(v20 + 1600) = v364;
  *(v20 + 12808) = v365;
  memcpy(v20 + 25618, v363, 0x142uLL);
  v23[796] = 0;
  *(v20 + 6494) = 0u;
  *(v20 + 6498) = 0u;
  *(v20 + 26008) = 0;
  *(v20 + 6486) = 0u;
  *(v20 + 6490) = 0u;
  *(v20 + 26009) = 0;
  v20[6503] = 0;
  *(v20 + 3252) = 0;
  *(v23 + 3268) = 0;
  v20[6507] = 0;
  *(v20 + 26025) = 0;
  *(v20 + 3254) = 0;
  *(v20 + 26104) = 0;
  *(v20 + 6518) = 0u;
  *(v20 + 6522) = 0u;
  *(v20 + 6510) = 0u;
  *(v20 + 6514) = 0u;
  v20[6527] = 0;
  *(v20 + 26105) = 0;
  *(v20 + 3264) = 0;
  *(v23 + 3364) = 0;
  memcpy(v20 + 26121, __src, 0x1498uLL);
  *(v20 + 31393) = 0;
  v20[7849] = 0;
  *(v20 + 3925) = 0;
  *(v20 + 1963) = vdupq_n_s64(0x4066800000000000uLL);
  *(v20 + 3928) = 0x3FF0000000000000;
  *(v20 + 3929) = 0;
  v23[597] = 0;
  *(v23 + 589) = 0u;
  *(v23 + 593) = 0u;
  *(v23 + 581) = 0u;
  *(v23 + 585) = 0u;
  *(v23 + 573) = 0u;
  *(v23 + 577) = 0u;
  *(v23 + 565) = 0u;
  *(v23 + 569) = 0u;
  *(v23 + 557) = 0u;
  *(v23 + 561) = 0u;
  *(v23 + 549) = 0u;
  *(v23 + 553) = 0u;
  *(v23 + 541) = 0u;
  *(v23 + 545) = 0u;
  *(v23 + 533) = 0u;
  *(v23 + 537) = 0u;
  *(v23 + 525) = 0u;
  *(v23 + 529) = 0u;
  *(v23 + 517) = 0u;
  *(v23 + 521) = 0u;
  *(v23 + 509) = 0u;
  *(v23 + 513) = 0u;
  v349 = (v23 + 505);
  *(v23 + 505) = 0u;
  *(v23 + 2020) = NK_Sample_Track_Meas(v360, (v21 + 7348), (v21 + 7352), v20, 0.0, v111, v112, v113);
  *(v360 + 40) = 0;
  *(v360 + 2848) = 0u;
  *(v360 + 2832) = 0u;
  *(v360 + 2816) = 0u;
  *(v360 + 2800) = 0u;
  *(v360 + 2784) = 0u;
  *(v360 + 2768) = 0u;
  memcpy(v20 + 156, (a9 + 32), 0x150uLL);
  v114 = *(a9 + 800);
  v115 = *(a9 + 816);
  v116 = *(a9 + 832);
  *(v20 + 1544) = *(a9 + 848);
  *(v20 + 1543) = v116;
  *(v20 + 1542) = v115;
  *(v20 + 1541) = v114;
  v117 = *(a9 + 864);
  v118 = *(a9 + 880);
  v119 = *(a9 + 896);
  *(v20 + 3096) = *(a9 + 912);
  *(v20 + 1547) = v119;
  *(v20 + 1546) = v118;
  *(v20 + 1545) = v117;
  *(v20 + 960) = *(a9 + 19);
  v20[241] = *(a9 + 12);
  v120 = *(a10 + 1320);
  *(v20 + 2840) = *(a10 + 1312);
  v20[5682] = v120;
  v121 = *(a10 + 1332);
  *(v20 + 5683) = *(a10 + 1324);
  v20[5685] = v121;
  v122 = *(a10 + 1344);
  *(v20 + 2843) = *(a10 + 1336);
  v20[5688] = v122;
  NK_Get_Ext_CTXT(v20[1], v20, v21, a10);
  v20[242] = *a10;
  v123 = *(a10 + 52);
  if (v123 == 2)
  {
    v124 = *(v21 + 20);
    v125 = v357;
    if (v124 - 2 <= 2)
    {
      if (*(v20 + 960) == 1)
      {
        if (v124 > 3 || v20[241] >= 2)
        {
          goto LABEL_27;
        }
      }

      else if (v124 > 3)
      {
        goto LABEL_27;
      }

      v126 = 4;
      goto LABEL_25;
    }

LABEL_20:
    if (v123 == v124)
    {
      goto LABEL_27;
    }

    *(v21 + 20) = v123;
    v127 = *(a10 + 56);
    *(v21 + 24) = v127;
    *v389 = v123;
    *&v389[4] = v127;
    goto LABEL_26;
  }

  v124 = *(v21 + 20);
  v125 = v357;
  if ((v123 - 5) > 3 || v124 - 5 > 3)
  {
    goto LABEL_20;
  }

  if (*(v20 + 960) != 1 || v20[241] <= 1)
  {
    if (v124 == 5)
    {
      v126 = 6;
    }

    else
    {
      if (v124 != 6)
      {
        goto LABEL_27;
      }

      v126 = 7;
    }

LABEL_25:
    *(v21 + 20) = v126;
    v128 = *(v21 + 24);
    *v389 = v126;
    *&v389[4] = v128;
LABEL_26:
    NK_Set_Dynamics(v389, v21 + 32);
  }

LABEL_27:
  v129 = *(a9 + 168);
  NK_Set_XO_PN(a10, v21 + 32);
  if (!*(a9 + 48))
  {
    *(v21 + 128) = 1;
    *(v21 + 132) = 20;
  }

  if (*(v21 + 7) == 1)
  {
    *(v21 + 7) = 0;
    *(v21 + 128) = 1;
    v130 = 33;
LABEL_33:
    *(v21 + 132) = v130;
    goto LABEL_34;
  }

  if (*(v21 + 132) == 33)
  {
    v130 = 34;
    goto LABEL_33;
  }

LABEL_34:
  v131 = (v125 + 26864);
  NK_Check_TOW_Adjust(v21, v20);
  v132 = *(a10 + 948);
  v133 = *(v21 + 18);
  if (v132 * *(v21 + 11032) > (1000 * v133) && *(a9 + 344) > 0.0)
  {
    NK_Decay_Speed(v133, v132, (v20 + 156), v21);
  }

  NK_Predict_State(v20, v20 + 156);
  v134 = *(a9 + 208);
  if (fabs(v134) < 1.48352986)
  {
    v135 = __sincos_stret(v134);
    v136 = 1.0 / sqrt(v135.__sinval * v135.__sinval * -0.00669437999 + 1.0);
    v137 = v135.__cosval * (*(a9 + 224) + v136 * 6378137.0);
    if (v137 < 1.0)
    {
      v137 = 1.0;
    }

    *(v21 + 27080) = v137;
    *(v21 + 27072) = *(a9 + 224) + v136 * (v136 * v136) * 6335439.33;
  }

  v138 = *v20;
  v20[157] = v20[1];
  if ((*v131 & 1) == 0)
  {
    *v131 = 1;
    *(v125 + 26868) = v138;
  }

  NK_Get_Ext_Meas(v138, v20[2], a10, v20, v21);
  v139 = *(v23 + 236);
  v356 = (v23 + 59);
  v347 = v139 == 1 && v23[61] - 3 < 2;
  if (*(v21 + 20) <= 4u && (*(v21 + 233) != 1 || (v139 & 1) != 0 && *(v23 + 364) == 1 && v20[3] >= 4 && *(v20 + 2880) <= 6250000.0 && *(v20 + 2894) <= 250000.0))
  {
    *(v20 + 976) = 1;
  }

  v355 = (v125 + 8144);
  v140 = (v20 + 6164);
  if ((*(v20 + 960) != 1 || (*(v125 + 26960) & 1) != 0 || (v20[241] < 2 || *(v20 + 3086) > 30000.0 || !*(v21 + 11048)) && ((v347 & v139) != 1 || *(v20 + 2880) > 900000000.0)) && *(v20 + 17) == 1 && v20[3] >= 1)
  {
    NK_Crude_Apx_Pos(v360, v352, v21, v20, v361);
  }

  v341 = v125 + 26864;
  NK_Transform_State((v20 + 156));
  v141 = *(v20 + 960);
  *v389 = *(v21 + 20);
  if ((NK_Init_Cov_Mat(v141, v389, v20[3], v356, v21 + 344, v125, v21 + 11440, v21 + 11536, *(a10 + 1000), v140, (v20 + 6124)) & 1) == 0)
  {
    NK_Prop_Cov_Mat(*(v20 + 82), (v21 + 344));
    NK_Add_Nominal_PN(v21, (v20 + 156), *(v20 + 600), v21 + 32, (v21 + 344), v125, v20 + 3062);
    if (*(v21 + 128) == 1)
    {
      v142 = *(v20 + 960);
      *v389 = *(v21 + 20);
      NK_Init_Cov_Mat(v142, v389, v20[3], v356, v21 + 344, v125, v21 + 11440, v21 + 11536, *(a10 + 1000), v140, (v20 + 6124));
    }
  }

  v350 = (v20 + 6124);
  v348 = (v20 + 156);
  bzero(v20 + 270, 0x6C0uLL);
  NK_Comp_DR_Meas(0x30u, v20[11], (v360 + 1036), (v360 + 2384), (v360 + 1616), (v360 + 316), (v360 + 412), (v21 + 8312), *(v20 + 82), (v21 + 10424), v20 + 15, v20 + 14016);
  *v389 = *(v21 + 20);
  *(v23 + 1841) = NK_PrePro_SV_Meas(v389, v361 + 33605, v360, v352, v358, a10, v351, a11, v361, v21, v20);
  NK_Set_Environ_Severity(v360, a10, v21, v20);
  v143 = (v360 + 76);
  LOBYTE(v339) = *(a10 + 65);
  NK_Set_PR_Meas_Var(v360 + 76, (v20 + 716), v360 + 604, v360 + 700, v360 + 796, v360 + 844, v360 + 940, *(v20 + 118), v360 + 1036, v360 + 1132, v20 + 978, (v21 + 2088), v339, *(a10 + 60), 48, (v20 + 824));
  NK_Set_DO_Meas_Var((v360 + 76), (v20 + 2110), v360 + 604, v360 + 700, v360 + 796, v360 + 940, v360 + 1036, v360 + 412, v360 + 1132, v360 + 316, v20 + 978, 48, (v20 + 2218));
  NK_Set_DR_Meas_Var((v360 + 76), v20 + 14016, (v360 + 604), (v360 + 796), (v360 + 1036), 48, (v20 + 3612));
  if (*(v125 + 10960) == 1 && *(v21 + 11040) <= 1u)
  {
    v144 = 0;
    v145 = (v20 + 826);
    v146 = (v360 + 76);
    do
    {
      if (*(v20 + v144 + 2864) == 1)
      {
        v147 = *v145;
        if (*v145 >= dbl_29972AEB0[*v146 == 2])
        {
          v147 = dbl_29972AEB0[*v146 == 2];
        }

        *v145 = v147;
      }

      ++v144;
      v145 += 3;
      v146 += 4;
    }

    while (v144 != 48);
  }

  v148 = v20[11];
  v149 = *(v21 + 10472) + v148 * 299792.458;
  *(v21 + 10472) = v149;
  v150 = *(v21 + 8280) + v148 * 299792.458;
  *(v21 + 8280) = v150;
  v151 = *(v21 + 8296) + v148 * 299792.458;
  *(v21 + 8296) = v151;
  v359 = (v360 + 76);
  v346 = v21 + 10480;
  Corr_Old_PR_Est(v143, *(v125 + 8144), *(v125 + 8146), *(v125 + 8160), *(v125 + 8145), 0x30u, (v21 + 7888), (v21 + 10480), *(v21 + 8304), v149, v150, v151, (v21 + 8696), (v21 + 9848), (v21 + 10040));
  NK_Comp_PR_DO_Res(v360, v352, v361, a10, v351, v21, v20);
  v152 = a9;
  if (*(v20 + 768) != 1 || *(v20 + 769) != 1 || (*(v20 + 770) & 1) == 0)
  {
    NK_Set_Constell_Clock_Bias(v143, v20, v361, *(v21 + 233), v21 + 344);
  }

  NK_Comp_DR_Res(v360, v21, v20);
  if ((*(v21 + 128) & 1) == 0)
  {
    NK_Add_SV_ARes_PN_ClkDrift(v21, v20, *(a10 + 120));
  }

  v353 = (v21 + 11032);
  v354 = (v20 + 2096);
  NK_Reflection_Rejection_Ped(a10, v360, v21, v20);
  NK_Reduce_Num_SV(v360, v21, v20, a11);
  NK_Dopp_Outlier(v360, v21, v20);
  NK_SV_Res_RTests_FDist(*(a10 + 60), v21, v20);
  v153 = *(a10 + 60);
  *v389 = 0;
  *&v389[3472] = 0;
  v389[3480] = 0;
  memset(&v389[3400], 0, 65);
  *&v389[3568] = 0;
  v389[3576] = 0;
  *&v389[3488] = 0;
  memset(&v389[3496], 0, 65);
  bzero(&v389[8], 0xD3CuLL);
  memset(&v389[3584], 0, 24);
  v154 = *(v20 + 976);
  NK_Least_Squares_Check();
  NK_Least_Squares_Publish_Soln((v20 + 6404), v389);
  memcpy((v344 + 2432), &v389[8], 0x180uLL);
  memcpy((v344 + 2816), &v389[408], 0x180uLL);
  NK_Least_Squares_Cross_Check(v143, v21, v20, v389);
  if (*(v20 + 31344) == 1 && (*(v20 + 768) != 1 || *(v20 + 769) != 1 || (*(v20 + 770) & 1) == 0))
  {
    NK_Set_Constell_Clock_Bias(v143, v20, v361, *(v21 + 233), v21 + 344);
  }

  NK_Least_Squares_Check();
  NK_Least_Squares_Publish_Soln(v344 + 288, v389);
  NK_Least_Squares_Check();
  NK_Least_Squares_Publish_Soln(v344 + 824, v389);
  NK_Least_Squares_Check();
  NK_Least_Squares_Publish_Soln(v344 + 1360, v389);
  NK_Least_Squares_Check();
  NK_Least_Squares_Publish_Soln(v344 + 1896, v389);
  NK_SV_Meas_IVar(1, v143, (v20 + 5008), (v21 + 344), (v20 + 702), *(v20 + 82));
  NK_SV_Meas_IVar(2, v143, (v20 + 5008), (v21 + 344), v354, *(v20 + 82));
  NK_SV_Meas_IVar(3, v143, (v20 + 5008), (v21 + 344), (v20 + 3490), *(v20 + 82));
  NK_Bit_Sync_Check(v360, v21, v20, a11);
  NK_Range_Chip_Check(v360, v21, v20, a11);
  v155 = 0;
  v156 = v20 + 740;
  do
  {
    v157 = v20 + v155;
    if (*(v20 + v155 + 2960) == 1 && (v157[49] & 1) == 0)
    {
      v157[2960] = 0;
      --*(v20 + 2811);
    }

    ++v155;
  }

  while (v155 != 48);
  v159 = *(v21 + 20);
  v158 = *(v21 + 24);
  if (v159 == v158)
  {
    goto LABEL_118;
  }

  if (v159 > 2)
  {
    if (v159 > 4)
    {
      if (v159 == 5)
      {
        if ((v158 & 0xFFFFFFFE) != 6)
        {
          goto LABEL_118;
        }
      }

      else if (v159 != 6 || v158 != 7)
      {
        goto LABEL_118;
      }
    }

    else if (v159 == 3)
    {
      if (v158 <= 2)
      {
        goto LABEL_118;
      }
    }

    else if (v158 - 5 >= 3)
    {
      goto LABEL_118;
    }

LABEL_111:
    if (*(v21 + 11032) <= *(v21 + 16) && v20[242] == 1)
    {
      v160 = *(v21 + 140);
      if (v160 >= *(v21 + 144))
      {
        v160 = *(v21 + 144);
      }

      if (v160 >= *(v21 + 148))
      {
        v160 = *(v21 + 148);
      }

      if (v160 > 0xA)
      {
        goto LABEL_119;
      }
    }

    goto LABEL_118;
  }

  if (!v159)
  {
    goto LABEL_111;
  }

  if (v159 != 1)
  {
    if (v159 != 2 || v158 <= 1)
    {
      goto LABEL_118;
    }

    goto LABEL_111;
  }

  if (v158)
  {
    goto LABEL_111;
  }

LABEL_118:
  NK_SV_Res_RTests(v360, v21, v20, a11);
LABEL_119:
  NK_SV_Res_RTests_Riskier_SVs(v360, v20);
  v161 = *(v20 + 960);
  *v389 = *(v21 + 20);
  NK_Check_Num_SV_Res(v161, v389, *(v21 + 2), *(v23 + 236), v23[61], *(v21 + 11048), (v20 + 702), (v20 + 3490), *(v20 + 2880), v354);
  v162 = 764;
  v163 = 4500;
  v164 = 14112;
  do
  {
    if (*(v20 + v164) != 1)
    {
      goto LABEL_123;
    }

    v165 = v20[v162];
    if (v165 - 1 < 0x1D)
    {
      goto LABEL_122;
    }

    if (v165)
    {
      EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
LABEL_122:
      *&v20[v163] = *&v20[v163] + 1.0;
      *(v20 + v164 + 3840) = 1;
    }

LABEL_123:
    ++v162;
    v163 += 2;
    ++v164;
  }

  while (v162 != 812);
  v166 = v360;
  v167 = a10;
  if (*v357 & 1) != 0 || (NK_Add_SV_ARes_PN(*(a9 + 4), *(a9 + 17), v360, v21, v20, *(a10 + 60)), (*(v21 + 128)))
  {
    v168 = *(v20 + 960);
    *v389 = *(v21 + 20);
    NK_Init_Cov_Mat(v168, v389, v20[3], v356, v21 + 344, v357, v21 + 11440, v21 + 11536, *(a10 + 1000), v20 + 1541, v350);
  }

  if ((*(v21 + 6) & 1) == 0 && *(v20 + 2811) >= 6u && (*(v21 + 233) & 1) == 0 && v20[3] - 3 <= 2)
  {
    v169 = *(v20 + 3066) * 25.0;
    *(v20 + 3066) = v169;
    *(v21 + 456) = v169;
    EvLog("Nav_Kalman_Update: Freeing-up dT Synch ");
    v170 = *(v20 + 3062) * 25.0;
    *(v20 + 3062) = v170;
    *(v21 + 344) = v170;
    v171 = *(v20 + 3063) * 25.0;
    *(v20 + 3063) = v171;
    *(v21 + 360) = v171;
    v172 = *(v20 + 3064) * 25.0;
    *(v20 + 3064) = v172;
    *(v21 + 384) = v172;
  }

  NK_Get_Ext_Time(*v20, v20, v21);
  NK_DeCor_Ext_Meas(v21, v20);
  v345 = NK_Tunnel_Assist(v21, v20);
  memcpy((v21 + 872), (v21 + 344), 0x210uLL);
  v173 = v21 + 1400;
  *(v21 + 1400) = 0u;
  *(v21 + 1416) = 0u;
  *(v21 + 1432) = 0u;
  *(v21 + 1448) = 0u;
  *(v21 + 1464) = 0u;
  *(v21 + 1480) = 0u;
  if (*(v23 + 20) == 1 && KFSt_Meas_Update(4u, 0xBu, (v23 + 5), (v21 + 872), (v21 + 10988), *(v20 + 99)))
  {
    v23[511] = v23[6];
  }

  v174 = *(v20 + 3066);
  if (v174 > 0.000000001 && (*(v20 + 3067) < 1600000000.0 && *(v20 + 3068) < 1600000000.0 && *(v20 + 3069) < 1600000000.0 || *v356 == 1 && *(v20 + 2880) < 1600000000.0) && ((v175 = 0.0001, *(v20 + 48) == 2) || (v20[4] & 1) != 0 || *(v23 + 20) == 1 && v23[6] == 1 && *(v20 + 2852) < 0.00000004) || *(v20 + 48) && v174 > 0.9 && (v175 = 1.0, (v20[240] & 1) != 0))
  {
    v176 = *(v20 + 99);
    __src[0] = 0.0;
    memset(&v391[6], 0, 168);
    memset(&v391[3], 0, 40);
    memset(v391, 0, 32);
    v391[2] = 0x3FF0000000000000uLL;
    *(&v391[5] + 1) = v176;
    umeas(v21 + 872, 0xBu, v175, v391, v389, v390, __src, 1.0e20);
    v23[511] = 2;
  }

  if (*(v23 + 92) != 1)
  {
    goto LABEL_170;
  }

  v340 = (v23 + 23);
  v343 = v21 + 1400;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v180 = 0;
  v181 = (v360 + 76);
  while (2)
  {
    if (*(v156 + v177) == 1)
    {
      v182 = *v181;
      if (v182 > 6)
      {
        goto LABEL_164;
      }

      if (((1 << v182) & 0x5A) != 0)
      {
        ++v178;
        goto LABEL_159;
      }

      if (v182 == 2)
      {
        v179 = (v179 + 1);
      }

      else
      {
        if (v182 == 5)
        {
          v180 = (v180 + 1);
          goto LABEL_159;
        }

LABEL_164:
        v183 = v21;
        v184 = v180;
        v185 = v156;
        v186 = v23;
        v187 = v179;
        EvCrt_Illegal_Default("Nav_Kalman_Update", 0x4BBu);
        v179 = v187;
        v23 = v186;
        v156 = v185;
        v180 = v184;
        v21 = v183;
      }
    }

LABEL_159:
    ++v177;
    v181 += 4;
    if (v177 != 48)
    {
      continue;
    }

    break;
  }

  if (!v178 && v179 | v180)
  {
    v166 = v360;
    v167 = a10;
    v173 = v343;
    if (v179)
    {
      v152 = a9;
      if ((KFSt_Meas_Update(1u, 0xBu, v340, (v21 + 872), (v21 + 10990), *(v20 + 93) * 299792458.0) & 1) == 0)
      {
        goto LABEL_170;
      }
    }

    else
    {
      v152 = a9;
      if (!v180 || !KFSt_Meas_Update(2u, 0xBu, v340, (v21 + 872), (v21 + 10990), *(v20 + 94) * 299792458.0))
      {
        goto LABEL_170;
      }
    }

LABEL_169:
    v23[512] = v23[24];
    goto LABEL_170;
  }

  v166 = v360;
  v152 = a9;
  v167 = a10;
  v173 = v343;
  if (KFSt_Meas_Update(0, 0xBu, v340, (v21 + 872), (v21 + 10990), *(v20 + 92) * 299792458.0))
  {
    goto LABEL_169;
  }

LABEL_170:
  if (*(v20 + 2811))
  {
    v188 = *v350;
    v189 = *v350 < 90000.0 && *(v20 + 3063) < 90000.0;
    v190 = !*(v21 + 11048) && (v199 = *(v23 + 2818), v199 >= 1) && (v200 = *(v23 + 2817), v200 >= 1) && v200 + v199 < 6;
    if (v189 || v190)
    {
      *(v23 + 508) = 2;
      v23[128] = 1;
      NK_IntConstel_TO_IntMeas(v21, v20, v361);
      v188 = *(v20 + 3062);
    }

    v191 = v188 < 90000.0 && *(v20 + 3064) < 90000.0;
    v192 = !*(v21 + 11048) && (v201 = *(v23 + 2820), v201 >= 1) && (v202 = *(v23 + 2817), v202 >= 1) && v202 + v201 < 6;
    if (v191 || v192)
    {
      *(v23 + 508) = 4;
      v23[128] = 4;
      NK_IntConstel_TO_IntMeas(v21, v20, v361);
    }

    if (*(v20 + 3063) < 90000.0 && *(v20 + 3064) < 90000.0)
    {
      *(v23 + 508) = 4;
      v23[128] = 5;
      NK_IntConstel_TO_IntMeas(v21, v20, v361);
    }
  }

  if (*(v23 + 164) == 1)
  {
    v193 = *(v20 + 95) * 299792458.0;
    v194 = *(v20 + 3065);
    if (v194 <= 80.8879661)
    {
      *(v23 + 164) = 0;
      *(v23 + 180) = 1;
      v195 = *(v20 + 2868);
      v196 = v194 + *(v20 + 2869);
      if ((v195 - v193) * (v195 - v193) > v196 * 9.0)
      {
        EvLog_v("Nav_Kalman_Update: WARNING: Ext ClkD %g incompatible with NK ClkD %g Unc %g", v195, v193, sqrt(v196));
      }
    }

    else if (KFSt_Meas_Update(3u, 0xBu, (v23 + 41), (v21 + 872), (v21 + 10998), v193))
    {
      v23[515] = v23[42];
    }
  }

  *(v23 + 1012) = NK_Map_Vector(v20, v21, v152);
  if (*(v23 + 236) == 1)
  {
    if (Horz_Meas_Update(5u, v20 + 100, v20 + 104, 0xBu, v356, v21 + 872, (v21 + 11000)))
    {
      v23[517] = v23[60];
      if (*(v23 + 2264) == 1 && *(v20 + 2880) < 160000.0)
      {
        *(v23 + 2272) = 1;
      }

      if (*(v23 + 2296) == 1 && *(v20 + 2880) < 160000.0)
      {
        *(v23 + 2304) = 1;
      }
    }

    else
    {
      v23[567] = 3;
      if (*(v23 + 2296) == 1)
      {
        v23[575] = 3;
      }

      if (v23[61] - 3 <= 1)
      {
        *(p_NA + 696) = 2;
      }

      v197 = *(v20 + 2886) * *(v20 + 2886) + *(v20 + 2885) * *(v20 + 2885);
      if (v197 > *(v20 + 2883))
      {
        v198 = p_NA;
        *(p_NA + 640) = v197;
        *(v198 + 648) = v197;
      }
    }
  }

  if (*(v23 + 364) == 1)
  {
    if (Vert_Meas_Update(5u, v20 + 104, 0xBu, (v23 + 91), (v21 + 872), (v21 + 11002), *(v20 + 102)))
    {
      v23[518] = v23[92];
      if ((v23[564] & 1) == 0 && *(v23 + 2280) == 1 && *(v20 + 2894) < 160000.0)
      {
        *(v23 + 2288) = 1;
      }
    }

    else if (*(v23 + 2256) == 1)
    {
      *(v23 + 2256) = 0;
      v23[563] = 3;
    }

    else if (v23[92] == 1)
    {
      v23[571] = 3;
    }
  }

  if (*v23 == 1)
  {
    *(v23 + 564) = 1;
    v23[142] = 1;
    v23[145] = *v20;
    *(v20 + 1459) = xmmword_29972AEC0;
    *(v20 + 2922) = 0x4022000000000000;
LABEL_227:
    if (Speed_Meas_Update(8u, v20 + 86, 0xBu, (v23 + 141), (v21 + 872), (v21 + 11010), 1.0))
    {
      v23[522] = v23[142];
    }
  }

  else if (v23[141])
  {
    goto LABEL_227;
  }

  if (*(v23 + 636) == 1 && *(v21 + 11116) != 3)
  {
    v203 = *(v20 + 3092);
    v204 = (v21 + 10496);
    v205 = 0.0;
    for (i = 4; i > 1; --i)
    {
      v207 = *v204--;
      v205 = v205 + v207 * v207;
    }

    if (v203 < 45.0 && *(v20 + 2927) > 0.75)
    {
      v208 = *(v20 + 118);
      if (v208 > 0.75 && *(v20 + 3226) > 0.75 && sqrt(v205) > 0.5)
      {
        v209 = cos(v203 * 0.0174532925);
        if (GSpeed_Meas_Update(8, v20 + 104, 0xBu, (v23 + 159), v21 + 872, (v21 + 11014), v208, *(v21 + 11192), 1.0, 1.0 / v209))
        {
          v23[524] = v23[160];
        }

        else if (*(v23 + 2336) == 1)
        {
          *(v23 + 2336) = 0;
          v23[583] = 3;
        }
      }
    }
  }

  if (*(v23 + 436) == 1)
  {
    if (Vert_Meas_Update(8u, v20 + 104, 0xBu, (v23 + 109), (v21 + 872), (v21 + 11004), -*(v20 + 116)))
    {
      v23[519] = v23[110];
    }

    else if (*(v23 + 2352) == 1)
    {
      *(v23 + 2352) = 0;
      v23[587] = 3;
    }
  }

  if (*(v23 + 708) == 1)
  {
    v210 = *(v20 + 119);
    *(v20 + 2938) = v210;
    if (Track_Meas_Update(8, v20 + 104, 0xBu, v23 + 708, v21 + 872, (v21 + 11018), v210, *(v20 + 118), 1.0))
    {
      v23[526] = v23[178];
    }

    else if (*(v23 + 2368) == 1)
    {
      *(v23 + 2368) = 0;
      v23[591] = 3;
    }
  }

  v212 = *(v21 + 20);
  v211 = *(v21 + 24);
  if (v212 != v211)
  {
    if (v212 <= 2)
    {
      if (!v212)
      {
        goto LABEL_278;
      }

      if (v212 == 1)
      {
        if (v211)
        {
          goto LABEL_278;
        }
      }

      else if (v212 == 2 && v211 > 1)
      {
        goto LABEL_278;
      }
    }

    else if (v212 > 4)
    {
      if (v212 == 5)
      {
        if ((v211 & 0xFFFFFFFE) != 6)
        {
          goto LABEL_279;
        }

        goto LABEL_278;
      }

      if (v212 == 6 && v211 == 7)
      {
        goto LABEL_278;
      }
    }

    else
    {
      if (v212 == 3)
      {
        if (v211 <= 2)
        {
          goto LABEL_279;
        }
      }

      else if (v211 - 5 >= 3)
      {
        goto LABEL_279;
      }

LABEL_278:
      NK_Define_Meas_Innov_Sat_Thresh(v20, v21, v348);
    }
  }

LABEL_279:
  if (*v23 == 1 && v20[242] == 1)
  {
    v213 = 0x3FFFFFFFFFFFFFA0;
    v214 = 2864;
    v215 = 8440;
    v216 = 14016;
    do
    {
      if (*(v20 + v214) == 1)
      {
        v217 = &v20[v213];
        v218 = *&v20[v213 + 1304];
        if (fabs(v218) < 300.0)
        {
          v219 = v218 * 0.5 * (v218 * 0.5);
          if (*(v217 + 904) > v219)
          {
            v219 = *(v217 + 904);
          }

          *(v217 + 904) = v219;
        }
      }

      if (*(v20 + v216) == 1)
      {
        v220 = &v20[v213];
        v221 = *&v20[v213 + 4092];
        if (fabs(v221) < 20.0)
        {
          v222 = v221 * 0.5 * (v221 * 0.5);
          if (*(v220 + 2298) > v222)
          {
            v222 = *(v220 + 2298);
          }

          *(v220 + 2298) = v222;
        }
      }

      if (*(v20 + v215) == 1)
      {
        v223 = &v20[v213];
        v224 = *&v20[v213 + 2698];
        if (fabs(v224) < 20.0)
        {
          v225 = v224 * 0.5 * (v224 * 0.5);
          if (*(v223 + 1601) > v225)
          {
            v225 = *(v223 + 1601);
          }

          *(v223 + 1601) = v225;
        }
      }

      ++v215;
      ++v216;
      ++v214;
      v213 += 2;
    }

    while (v213 * 4);
  }

  v227 = *(v21 + 20);
  v226 = *(v21 + 24);
  if (v227 != v226)
  {
    if (v227 <= 2)
    {
      if (v227)
      {
        if (v227 == 1)
        {
          if (!v226)
          {
            goto LABEL_327;
          }
        }

        else if (v227 != 2 || v226 <= 1)
        {
          goto LABEL_327;
        }
      }

      goto LABEL_318;
    }

    if (v227 > 4)
    {
      if (v227 != 5)
      {
        if (v227 != 6 || v226 != 7)
        {
          goto LABEL_327;
        }

        goto LABEL_318;
      }

      if ((v226 & 0xFFFFFFFE) == 6)
      {
        goto LABEL_318;
      }
    }

    else if (v227 == 3)
    {
      if (v226 > 2)
      {
        goto LABEL_318;
      }
    }

    else
    {
      if (v226 - 5 >= 3)
      {
        goto LABEL_327;
      }

LABEL_318:
      memset_pattern16(v20 + 2998, &unk_29972AEE0, 0x180uLL);
      memset_pattern16(v20 + 4392, &unk_29972AEE0, 0x180uLL);
      if ((*(v21 + 233) & 1) == 0 && *(v21 + 11032) <= *(v21 + 16) && v20[242] == 1)
      {
        v228 = *(v21 + 140);
        if (v228 >= *(v21 + 144))
        {
          v228 = *(v21 + 144);
        }

        if (v228 >= *(v21 + 148))
        {
          v228 = *(v21 + 148);
        }

        if (v228 >= 0xB)
        {
          NK_Meas_Outlier_Check(2, *(v20 + 48), 0, v354, (v20 + 3490));
          NK_Meas_ARP_Check(2u, v359, v354, v350, (v21 + 11536));
        }
      }
    }
  }

LABEL_327:
  if (*(v21 + 11032) > *(v21 + 16) || v20[242] != 1)
  {
    goto LABEL_335;
  }

  v229 = *(v21 + 140);
  if (v229 >= *(v21 + 144))
  {
    v229 = *(v21 + 144);
  }

  if (v229 >= *(v21 + 148))
  {
    v229 = *(v21 + 148);
  }

  if (v229 < 0xB || (v231 = *(v21 + 20), v230 = *(v21 + 24), v231 == v230))
  {
LABEL_335:
    v232 = 0;
    goto LABEL_336;
  }

  if (v231 <= 2)
  {
    if (v231)
    {
      if (v231 != 1)
      {
        if (v231 != 2)
        {
          goto LABEL_335;
        }

        v318 = v230 > 1;
        goto LABEL_643;
      }

      v232 = v230 != 0;
    }

    else
    {
      v232 = 1;
    }
  }

  else if (v231 > 4)
  {
    if (v231 == 5)
    {
      v321 = (v230 & 0xFFFFFFFE) == 6;
    }

    else
    {
      if (v231 != 6)
      {
        goto LABEL_335;
      }

      v321 = v230 == 7;
    }

    v232 = v321;
  }

  else
  {
    if (v231 != 3)
    {
      v232 = v230 - 5 < 3;
      goto LABEL_336;
    }

    v318 = v230 > 2;
LABEL_643:
    v232 = v318;
  }

LABEL_336:
  NK_SV_Meas_Update(2, v359, (v20 + 5008), v20 + 49, v354, (v21 + 872), v232, v20 + 43, *(v20 + 82), (v20 + 6024));
  v234 = *(v21 + 20);
  v233 = *(v21 + 24);
  if (v234 != v233)
  {
    if (v234 <= 2)
    {
      if (v234)
      {
        if (v234 == 1)
        {
          if (!v233)
          {
            goto LABEL_369;
          }
        }

        else if (v234 != 2 || v233 <= 1)
        {
          goto LABEL_369;
        }
      }

      goto LABEL_360;
    }

    if (v234 > 4)
    {
      if (v234 != 5)
      {
        if (v234 != 6 || v233 != 7)
        {
          goto LABEL_369;
        }

        goto LABEL_360;
      }

      if ((v233 & 0xFFFFFFFE) == 6)
      {
        goto LABEL_360;
      }
    }

    else if (v234 == 3)
    {
      if (v233 > 2)
      {
        goto LABEL_360;
      }
    }

    else
    {
      if (v233 - 5 >= 3)
      {
        goto LABEL_369;
      }

LABEL_360:
      if ((*(v21 + 233) & 1) == 0 && *(v21 + 11032) <= *(v21 + 16) && v20[242] == 1)
      {
        v235 = *(v21 + 140);
        if (v235 >= *(v21 + 144))
        {
          v235 = *(v21 + 144);
        }

        if (v235 >= *(v21 + 148))
        {
          v235 = *(v21 + 148);
        }

        if (v235 >= 0xB)
        {
          NK_Meas_ARP_Check(3u, v359, (v20 + 3490), v350, (v21 + 11536));
        }
      }
    }
  }

LABEL_369:
  if (*(v21 + 11032) > *(v21 + 16) || v20[242] != 1)
  {
    goto LABEL_377;
  }

  v236 = *(v21 + 140);
  if (v236 >= *(v21 + 144))
  {
    v236 = *(v21 + 144);
  }

  if (v236 >= *(v21 + 148))
  {
    v236 = *(v21 + 148);
  }

  if (v236 < 0xB || (v238 = *(v21 + 20), v237 = *(v21 + 24), v238 == v237))
  {
LABEL_377:
    v239 = 0;
    goto LABEL_378;
  }

  if (v238 <= 2)
  {
    if (v238)
    {
      if (v238 != 1)
      {
        if (v238 != 2)
        {
          goto LABEL_377;
        }

        v319 = v237 > 1;
        goto LABEL_647;
      }

      v239 = v237 != 0;
    }

    else
    {
      v239 = 1;
    }
  }

  else if (v238 > 4)
  {
    if (v238 == 5)
    {
      v322 = (v237 & 0xFFFFFFFE) == 6;
    }

    else
    {
      if (v238 != 6)
      {
        goto LABEL_377;
      }

      v322 = v237 == 7;
    }

    v239 = v322;
  }

  else
  {
    if (v238 != 3)
    {
      v239 = v237 - 5 < 3;
      goto LABEL_378;
    }

    v319 = v237 > 2;
LABEL_647:
    v239 = v319;
  }

LABEL_378:
  NK_SV_Meas_Update(3, v359, (v20 + 5008), v20 + 49, (v20 + 3490), (v21 + 872), v239, v20 + 43, *(v20 + 82), (v20 + 6024));
  NK_Update_Intermediate_Residual(1, v359, v21, v20);
  v241 = *(v21 + 20);
  v240 = *(v21 + 24);
  if (v241 != v240)
  {
    if (v241 <= 2)
    {
      if (v241)
      {
        if (v241 == 1)
        {
          if (!v240)
          {
            goto LABEL_411;
          }
        }

        else if (v241 != 2 || v240 <= 1)
        {
          goto LABEL_411;
        }
      }

      goto LABEL_402;
    }

    if (v241 > 4)
    {
      if (v241 != 5)
      {
        if (v241 != 6 || v240 != 7)
        {
          goto LABEL_411;
        }

        goto LABEL_402;
      }

      if ((v240 & 0xFFFFFFFE) == 6)
      {
        goto LABEL_402;
      }
    }

    else if (v241 == 3)
    {
      if (v240 > 2)
      {
        goto LABEL_402;
      }
    }

    else
    {
      if (v240 - 5 >= 3)
      {
        goto LABEL_411;
      }

LABEL_402:
      memset_pattern16(v20 + 1604, &unk_29972AEE0, 0x180uLL);
      if ((*(v21 + 233) & 1) == 0 && *(v21 + 11032) <= *(v21 + 16) && v20[242] == 1)
      {
        v242 = *(v21 + 140);
        if (v242 >= *(v21 + 144))
        {
          v242 = *(v21 + 144);
        }

        if (v242 >= *(v21 + 148))
        {
          v242 = *(v21 + 148);
        }

        if (v242 >= 0xB)
        {
          NK_Meas_Outlier_Check(1, *(v20 + 48), (v20 + 702), 0, 0);
          NK_Meas_ARP_Check(1u, v359, (v20 + 702), v350, (v21 + 11440));
        }
      }
    }
  }

LABEL_411:
  if (*(v21 + 11032) > *(v21 + 16) || v20[242] != 1)
  {
    goto LABEL_419;
  }

  v243 = *(v21 + 140);
  if (v243 >= *(v21 + 144))
  {
    v243 = *(v21 + 144);
  }

  if (v243 >= *(v21 + 148))
  {
    v243 = *(v21 + 148);
  }

  if (v243 < 0xB || (v245 = *(v21 + 20), v244 = *(v21 + 24), v245 == v244))
  {
LABEL_419:
    v246 = 0;
    goto LABEL_420;
  }

  if (v245 <= 2)
  {
    if (v245)
    {
      if (v245 != 1)
      {
        if (v245 != 2)
        {
          goto LABEL_419;
        }

        v320 = v244 > 1;
        goto LABEL_651;
      }

      v246 = v244 != 0;
    }

    else
    {
      v246 = 1;
    }
  }

  else if (v245 > 4)
  {
    if (v245 == 5)
    {
      v323 = (v244 & 0xFFFFFFFE) == 6;
    }

    else
    {
      if (v245 != 6)
      {
        goto LABEL_419;
      }

      v323 = v244 == 7;
    }

    v246 = v323;
  }

  else
  {
    if (v245 != 3)
    {
      v246 = v244 - 5 < 3;
      goto LABEL_420;
    }

    v320 = v244 > 2;
LABEL_651:
    v246 = v320;
  }

LABEL_420:
  NK_SV_Meas_Update(1, v359, (v20 + 5008), v20 + 49, (v20 + 702), (v21 + 872), v246, v20 + 43, 0.0, (v20 + 6024));
  *(v23 + 2384) = *(v23 + 1341);
  NK_Reject_DO_For_Rejected_PR((v20 + 5008), v359, v21, v20);
  *(v20 + 1251) = 0u;
  v248 = *(v21 + 20);
  v247 = *(v21 + 24);
  if (v248 == v247)
  {
    goto LABEL_451;
  }

  if (v248 <= 2)
  {
    if (!v248)
    {
      goto LABEL_444;
    }

    if (v248 == 1)
    {
      if (!v247)
      {
        goto LABEL_451;
      }

      goto LABEL_444;
    }

    if (v248 == 2 && v247 > 1)
    {
      goto LABEL_444;
    }

    goto LABEL_451;
  }

  if (v248 > 4)
  {
    if (v248 == 5)
    {
      if ((v247 & 0xFFFFFFFE) == 6)
      {
        goto LABEL_444;
      }
    }

    else if (v248 == 6 && v247 == 7)
    {
      goto LABEL_444;
    }

    goto LABEL_451;
  }

  if (v248 == 3)
  {
    if (v247 > 2)
    {
      goto LABEL_444;
    }

    goto LABEL_451;
  }

  if (v247 - 5 >= 3)
  {
    goto LABEL_451;
  }

LABEL_444:
  if (*(v21 + 11032) > *(v21 + 16) || v20[242] != 1)
  {
    goto LABEL_451;
  }

  v249 = *(v21 + 140);
  if (v249 >= *(v21 + 144))
  {
    v249 = *(v21 + 144);
  }

  if (v249 >= *(v21 + 148))
  {
    v249 = *(v21 + 148);
  }

  if (v249 <= 0xA)
  {
LABEL_451:
    NK_SV_Meas_Check(v166, v21, v20);
  }

  v250 = NK_SV_Meas_AP_Stats(1, v359, v21, v20);
  *(v23 + 2021) = v250;
  *(v23 + 2022) = 0;
  if (v250)
  {
    *(v23 + 2022) = v250 - 1;
    if (*(v23 + 2027) && *(v23 + 2032) && !v23[513])
    {
      *(v23 + 2022) = v250 - 2;
    }

    if ((*(v21 + 6) & 1) == 0)
    {
      *(v21 + 6) = 1;
    }
  }

  v251 = v345 | v347;
  if (*(v20 + 355) > 10000.0 && *v356 == 1 && v23[60] == 1 && !((*(v20 + 2883) >= 900000000.0) | v251 & 1))
  {
    *(v20 + 2883) = 0x41E2A05F20000000;
    v252 = vdupq_n_s64(0x41E2A05F20000000uLL);
    *(v20 + 1440) = v252;
    *(v20 + 2884) = 0x41E2A05F20000000;
    v253 = p_NA;
    *(p_NA + 640) = v252;
    if (*(v23 + 364) == 1)
    {
      v254 = dbl_29972AED0[*(v21 + 20) < 5u];
      if (*(v20 + 2895) < v254)
      {
        *(v20 + 2894) = v254;
        *(v20 + 2895) = v254;
        *(v253 + 688) = v254;
      }
    }

    if (v20[241] >= 2)
    {
      v20[241] = 1;
    }

    *(v21 + 128) = 1;
    *(v21 + 132) = 38;
  }

  if (v250 >= 3 && *v353 >= 0x1F && *(v20 + 977) >= 0x1Bu && !(v251 & 1 | ((*v356 & 1) == 0)) && v23[60] == 1)
  {
    *(p_NA + 10) = 0;
    *(v23 + 236) = 0;
    v23[567] = 20;
    *(v23 + 364) = 0;
    v23[571] = 20;
    if (v20[241] >= 2)
    {
      v20[241] = 1;
    }

    *(v21 + 128) = 1;
    *(v21 + 132) = 39;
  }

  v255 = NK_SV_Meas_AP_Stats(2, v359, v21, v20);
  *(v23 + 2023) = v255;
  *(v23 + 2025) = v255;
  v256 = NK_SV_Meas_AP_Stats(3, v359, v21, v20);
  *(v23 + 2024) = v256;
  *(v23 + 2025) = *(v23 + 2023) + v256;
  *(v23 + 2030) = *(v23 + 2029) + *(v23 + 2028);
  *(v23 + 2035) = *(v23 + 2034) + *(v23 + 2033);
  *(v23 + 2040) = *(v23 + 2039) + *(v23 + 2038);
  v257 = NK_VVel_Aiding_Required(v21, v20, (v23 + 197));
  *(v23 + 788) = v257;
  if (v257 && Vert_Meas_Update(8u, v20 + 104, 0xBu, (v23 + 197), (v21 + 872), (v21 + 11004), -*(v20 + 116)))
  {
    v23[519] = v23[198];
  }

  v258 = NK_AltP_Aiding_Required(v21, v20, (v23 + 215));
  *(v23 + 860) = v258;
  if (v258 && Vert_Meas_Update(5u, v20 + 104, 0xBu, (v23 + 215), (v21 + 872), (v21 + 11002), *(v20 + 102)))
  {
    v23[518] = v23[216];
  }

  *(v23 + 932) = 0;
  NK_Comp_DOPS(v21, v20);
  v259 = *v173;
  *(v20 + 1575) = *(v173 + 16);
  *(v20 + 1574) = v259;
  v260 = *(v173 + 32);
  v261 = *(v173 + 48);
  v262 = *(v173 + 64);
  *(v20 + 3158) = *(v173 + 80);
  *(v20 + 1578) = v262;
  *(v20 + 1577) = v261;
  *(v20 + 1576) = v260;
  NK_Comp_Sol_Acc(v21, v20);
  NK_Static_Filter(v21, v20, v167, v152);
  v263 = *v173;
  *(v20 + 1575) = *(v173 + 16);
  *(v20 + 1574) = v263;
  v264 = *(v173 + 32);
  v265 = *(v173 + 48);
  v266 = *(v173 + 64);
  *(v20 + 3158) = *(v173 + 80);
  *(v20 + 1578) = v266;
  *(v20 + 1577) = v265;
  *(v20 + 1576) = v264;
  *(v173 + 32) = 0u;
  *(v173 + 48) = 0u;
  *(v173 + 64) = 0u;
  *(v173 + 80) = 0;
  *v173 = 0u;
  *(v173 + 16) = 0u;
  *v389 = *(v21 + 20);
  NK_Validate_Cor(v349, v20 + 3017, v350, (v20 + 208), v389, *v20, (v21 + 233), v20 + 960, v357, (v21 + 236), a11, (v20 + 6296), v20 + 3039, v20 + 3028, v23 + 2410, (v20 + 6318), v20 + 6340, v23 + 652, v20 + 6342, v20 + 6343, v23 + 655, v21 + 6696);
  NK_ARP_Kalman(v359, v20, v21);
  if (*(v20 + 3017) > 1000000000.0)
  {
    *(v20 + 3148) = 0;
    *(v23 + 2410) = 0;
  }

  if (!*(v23 + 2032) && !v23[512] && *(v23 + 508) == 2 && !v23[128] || *(v20 + 3018) > 1000000000.0)
  {
    *(v20 + 3149) = 0;
    *(v23 + 2411) = 0;
  }

  if (!*(v23 + 2037) && !v23[512] && *(v23 + 508) == 4 && !v23[128] || *(v20 + 3019) > 1000000000.0)
  {
    *(v20 + 3150) = 0;
    *(v23 + 2412) = 0;
  }

  *v355 = *(v23 + 2410);
  v355[2] = *(v23 + 2411);
  v355[16] = *(v23 + 2412);
  v355[1] = *(v23 + 2415);
  *(v21 + 10472) = *(v20 + 3148);
  *(v21 + 8280) = *(v20 + 3149);
  *(v21 + 8296) = *(v20 + 3150);
  v267 = *(v20 + 6306);
  *(v346 + 16) = *(v20 + 3155);
  *v346 = v267;
  NK_Correct_State(v20 + 3148, v23 + 2410, v348);
  NK_Transform_State(v348);
  NK_Heading(v21, v20, *(a10 + 60));
  NK_DT_Synch_ProcNoise(v21, v20);
  v268 = *(v20 + 99);
  v269 = -0.5;
  if (v268 > 0.0)
  {
    v269 = 0.5;
  }

  v270 = v268 + v269;
  if (v270 > 2147483650.0)
  {
    v271 = 0x7FFFFFFF;
    goto LABEL_504;
  }

  if (v270 < -2147483650.0)
  {
    v271 = 0x80000000;
    goto LABEL_504;
  }

  v271 = v270;
  if (v270)
  {
LABEL_504:
    v272 = v271;
    v273 = v271 * 0.001;
    Inc_GPS_TOW(v273, v20 + 79, v20 + 323);
    *v389 = 0;
    if (!R8_EQ(v20 + 92, v389))
    {
      *(v20 + 92) = *(v20 + 92) + *(v20 + 95) * v273;
    }

    *v389 = 0;
    if (!R8_EQ(v20 + 93, v389))
    {
      *(v20 + 93) = *(v20 + 93) + *(v20 + 95) * v273;
    }

    *v389 = 0;
    if (!R8_EQ(v20 + 94, v389))
    {
      *(v20 + 94) = *(v20 + 94) + *(v20 + 95) * v273;
    }

    *(v20 + 99) = *(v20 + 99) - v272;
  }

  v274 = *(a10 + 948);
  v275 = v23[652];
  v276 = v23[655];
  *v389 = *(v21 + 20);
  v277 = (v21 + 11028);
  NK_Set_Fix_Type(v23 + 2410, v20 + 3028, v349, v357, v274, v275, v276, v389, *(v20 + 2880), *(v20 + 2894), *(v21 + 16), (v345 | v347) & 1, *(v21 + 11048), v20[3], (v21 + 233), (v21 + 11028), v353, (v21 + 11024), v20 + 6147, v20 + 6148);
  NK_Set_TTFF(v21, v20);
  NK_Check_State(v360 + 604, v21, v20);
  v278 = *(a10 + 1000);
  *v389 = *(a10 + 52);
  NK_Limited_Reset(v21, v20, v389, v278);
  if (*(v20 + 768) == 1)
  {
    v279 = a9;
  }

  else
  {
    v279 = a9;
    if (*(v23 + 2027) && (*v389 = 0, !R8_EQ(v20 + 3148, v389)))
    {
      *(v20 + 768) = 1;
    }

    else
    {
      *v389 = 0;
      if (R8_EQ(v20 + 3148, v389))
      {
        *&v391[0] = 0;
        if (!R8_EQ(v20 + 92, v391))
        {
          *(v20 + 92) = 0;
        }
      }
    }
  }

  if (*(v20 + 769) != 1)
  {
    if (*(v23 + 2032) && (*v389 = 0, !R8_EQ(v20 + 3149, v389)))
    {
      *(v20 + 769) = 1;
    }

    else
    {
      *v389 = 0;
      if (R8_EQ(v20 + 3149, v389))
      {
        *&v391[0] = 0;
        if (!R8_EQ(v20 + 93, v391))
        {
          *(v20 + 93) = 0;
        }
      }
    }
  }

  if (*(v20 + 770) != 1)
  {
    if (*(v23 + 2037) && (*v389 = 0, !R8_EQ(v20 + 3150, v389)))
    {
      *(v20 + 770) = 1;
    }

    else
    {
      *v389 = 0;
      if (R8_EQ(v20 + 3150, v389))
      {
        *&v391[0] = 0;
        if (!R8_EQ(v20 + 94, v391))
        {
          *(v20 + 94) = 0;
        }
      }
    }
  }

  *v389 = *(a10 + 52);
  NK_Final_Check(v21, v20, a10, a11, v360, v389, *(a10 + 992), *(a10 + 1000));
  NK_Set_Accuracy(*(a10 + 1064), v360 + 604, v21, v20);
  NK_Set_TOW_Status(v21, v20);
  if (*(v20 + 644) == 1)
  {
    v280 = v20[160];
    if (v280 >= 3 && (!R8_EQ(v20 + 79, v20 + 3) || v280 != v20[3]))
    {
      LODWORD(v391[0]) = 0;
      LODWORD(v390[0]) = 0;
      *v389 = 0;
      API_Get_UTC_Cor(1, v389);
      GPS_To_Glon_Time(0, *(v20 + 9), *(v20 + 79), *v389, v390, v391, v20 + 98);
      *(v20 + 389) = LOWORD(v390[0]);
      *(v20 + 390) = v391[0];
      *(v20 + 776) = 1;
      v281 = v20[160];
      if (v20[193] < v281 && (*(v361 + 8444) - 2) <= 4)
      {
        v20[193] = v281;
      }
    }
  }

  NK_Publish_Nav_Soln(v360, v20, v21, v279);
  if (*(v20 + 960) == 1)
  {
    *(v21 + 28) = 1;
  }

  NK_Validate_Fix(v21, v20, a10);
  *v279 = *(v23 + 1828);
  v282 = *(v23 + 1829);
  *(v279 + 1) = v282;
  *(v279 + 18) = *(v21 + 30);
  if (v282 == 1)
  {
    *(v21 + 11256) = *(v279 + 352);
    *(v21 + 11264) = *v20;
  }

  if (*v353)
  {
    v283 = *(v23 + 2393);
    v284 = a12;
    if (v283 <= 2)
    {
      ++*(v21 + 11036);
    }
  }

  else
  {
    *(v21 + 11036) = 0;
    v284 = a12;
  }

  if (*(v21 + 11256) < 10.0 || *(v21 + 11036) < 4u)
  {
    if (*v277 >= 0x10u)
    {
      v355[2816] = 0;
      *(v21 + 11092) = *v20;
      *(v21 + 11096) = *(v20 + 95) * 299792458.0;
      *(v21 + 11104) = *(v20 + 118);
    }
  }

  else
  {
    v355[2816] = 1;
  }

  v285 = v20[243];
  if (v285 && !*(a11 + 4))
  {
    *(a11 + 4) = v285;
  }

  *(v284 + 8) = *(v279 + 32);
  *(v284 + 16) = *(v279 + 54);
  *(v284 + 5) = *(v279 + 52);
  *(v284 + 24) = *(v279 + 40);
  *v284 = *(v279 + 48);
  v286 = *(v20 + 3017);
  v287 = *(v20 + 3018);
  v288 = v286 <= v287;
  v289 = v286 > v287;
  if (v286 > v287)
  {
    v286 = *(v20 + 3018);
  }

  v290 = v286 <= *(v20 + 3019);
  v321 = !v289 || !v290;
  v291 = 160;
  if (!v321)
  {
    v291 = 152;
  }

  v321 = !v290 || !v288;
  v292 = 144;
  if (v321)
  {
    v292 = v291;
  }

  *(v284 + 32) = *(v279 + v292);
  *(v284 + 66) = *(v279 + 186);
  *(v284 + 68) = *(v279 + 188);
  *(v284 + 64) = *(v279 + 184);
  *(v284 + 72) = *(v279 + 192);
  *(v284 + 60) = *(v279 + 180);
  *(v284 + 40) = *(v279 + 168);
  *(v284 + 4) = *(v20 + 16);
  v293 = *(v20 + 3088);
  if (v293 >= 9999000.0)
  {
    v295 = v20[3];
    if (v295 >= 0xC)
    {
      __assert_rtn("Generate_DollarG_Message", "Nav_Kalman_Update.cpp", 3126, "FALSE");
    }

    v294 = dword_29972AEF0[v295];
  }

  else
  {
    v294 = fmin(v293 * 0.00000333564095, 999999999.0);
  }

  v296 = g_CB_GDbg;
  v297 = 36;
  v298 = 1u;
  do
  {
    g_CB_GDbg = (v296 + 1);
    *v296 = v297;
    v296 = g_CB_GDbg;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      v296 = qword_2A1938EF0;
      g_CB_GDbg = qword_2A1938EF0;
    }

    v297 = aG_0[v298++];
  }

  while (v298 != 4);
  sprintf_2d(&g_CB_GDbg, ((*(v20 + 79) + 0.0005) * 1000.0));
  v299 = g_CB_GDbg++;
  *v299 = 32;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    g_CB_GDbg = qword_2A1938EF0;
  }

  sprintf_1u(&g_CB_GDbg, v20[1]);
  v300 = g_CB_GDbg++;
  *v300 = 32;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    g_CB_GDbg = qword_2A1938EF0;
  }

  sprintf_2d(&g_CB_GDbg, v294);
  v301 = g_CB_GDbg++;
  *v301 = 32;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    g_CB_GDbg = qword_2A1938EF0;
  }

  sprintf_1u(&g_CB_GDbg, *v20);
  v302 = g_CB_GDbg++;
  *v302 = 10;
  v303 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v303 = qword_2A1938EF0;
    g_CB_GDbg = qword_2A1938EF0;
  }

  *v303 = 0;
  GNB_Debug_Flush_Check();
  if (!*(v21 + 144))
  {
    *(v21 + 175) = *v342;
    *(v21 + 179) = *(v342 + 4);
  }

  v304 = NK_Set_Aid_Data(v21, v20, v21 + 272);
  v305 = v20[160];
  if (v305 >= 1)
  {
    v304 = Core_Save_ApxTime(*(v20 + 644), v305, *(v20 + 323), v20[157], *(v20 + 79));
    v306 = *(v361 + 8444);
    if (v306 != 3 && (v306 - 7) >= 0xFFFFFFFB)
    {
      v307 = 0;
      LODWORD(v308) = 0;
      v309 = p_NV;
      v310 = *(v361 + 8456);
      v311 = p_NV + 160;
      *(p_NV + 160) = *(v361 + 8440);
      *(v309 + 176) = v310;
      v312 = 55665;
      do
      {
        v313 = *(v311 + v307) ^ BYTE1(v312);
        v312 = 52845 * (v312 + v313) + 22719;
        v308 = (v308 + v313);
        ++v307;
      }

      while (v307 != 24);
      *(v309 + 152) = v308;
    }
  }

  if (*(v284 + 5) == 1 && *(v284 + 16) >= 1717 && v20[160] >= 9 && *v20 != *(v341 + 4))
  {
    v314 = *(v20 + 79) * 1000.0;
    v315 = -0.5;
    if (v314 > 0.0)
    {
      v315 = 0.5;
    }

    v316 = v314 + v315;
    if (v316 <= 2147483650.0)
    {
      if (v316 >= -2147483650.0)
      {
        v317 = v316;
      }

      else
      {
        v317 = 0x80000000;
      }
    }

    else
    {
      v317 = 0x7FFFFFFF;
    }

    v324 = 0;
    LODWORD(v325) = 0;
    v326 = v317 - *v20;
    v327 = p_NV;
    v328 = p_NV + 22856;
    *(p_NV + 22856) = v326;
    *(v327 + 22860) = *v348;
    v329 = 55665;
    do
    {
      v330 = *(v328 + v324) ^ BYTE1(v329);
      v329 = 52845 * (v329 + v330) + 22719;
      v325 = (v325 + v330);
      ++v324;
    }

    while (v324 != 16);
    *(v327 + 22848) = v325;
  }

  v331 = v20[241];
  if (v331 == 3)
  {
    if (*v277 && v20[160] >= 3)
    {
      if (*(v20 + 3093) < 10.0)
      {
        v304 = Core_Save_Clk_Drift(1, *(v20 + 79) + 604800 * *(v20 + 323), *(v20 + 95));
        *(a10 + 992) = *(v20 + 95);
        v332 = *(a10 + 248) * 0.000000001;
        if (!*(a10 + 248))
        {
          v332 = 0.0000001;
        }

        *(a10 + 1000) = v332;
      }

      if (*(v20 + 3086) < 400.0)
      {
        *(v21 + 11056) = v20[156];
        v333 = *(v20 + 102);
        *(v21 + 11064) = *(v20 + 50);
        *(v21 + 11080) = v333;
      }
    }
  }

  else if (v331 <= 1)
  {
    if (*(a10 + 248))
    {
      *(a10 + 1000) = *(a10 + 248) * 0.000000001;
    }

    else if (*v353 >= 0x385)
    {
      *(a10 + 1000) = 0x3EA0C6F7A0B5ED8ELL;
    }
  }

  v334 = *(v20 + 2840);
  *(a10 + 1320) = v20[5682];
  *(a10 + 1312) = v334;
  v335 = *(v20 + 5683);
  *(a10 + 1332) = v20[5685];
  *(a10 + 1324) = v335;
  v336 = *(v20 + 2843);
  *(a10 + 1344) = v20[5688];
  *(a10 + 1336) = v336;
  result = gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v304);
  if (result)
  {
    result = NK_Set_Sens_Aug_GNSS_Input(v20, v21, a10, v360, v352, v351, v279, a13);
  }

  v338 = *MEMORY[0x29EDCA608];
  return result;
}