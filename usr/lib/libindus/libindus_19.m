BOOL Is_GPS_BinEph_Real(uint64_t a1)
{
  result = *(a1 + 12) || *(a1 + 16) || *(a1 + 20) || *(a1 + 24) || *(a1 + 34) || *(a1 + 40) || *(a1 + 45) || *(a1 + 53) || *(a1 + 61) || *(a1 + 73) || *(a1 + 81) || *(a1 + 89) || *(a1 + 96) || (*(a1 + 100) & 0xFFFC) != 0;
  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void Hal_StoreCoExConfiguration(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  g_GNSSCoExConfigSWRequest = a1;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #CoexConfig bitmask 0x%llx\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 73, "Hal_StoreCoExConfiguration", g_GNSSCoExConfigSWRequest);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v2 = *MEMORY[0x29EDCA608];
}

uint64_t Hal_SetCoexConfig(void)
{
  v0 = 0;
  v18 = *MEMORY[0x29EDCA608];
  memset(v17 + 1, 0, 40);
  *v16 = 0x1900284D6242787ALL;
  LOBYTE(v17[0]) = 71;
  for (i = 8; i != 46; ++i)
  {
    v0 += v16[i];
  }

  v17[19] = v0;
  LOBYTE(v17[20]) = 10;
  g_HalState = 7;
  qword_2A145C630 = 0;
  if (Hal22_ZxSendToChip(v16, 0x31uLL) <= 0)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_27;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_24;
  }

  v2 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0xC8u);
  if (v2 == 1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v2)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_27;
    }

LABEL_23:
    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx err\n");
LABEL_24:
    gnssOsa_PrintLog(__str, 1, 1, 0);
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_27;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Get Coex config failed\n");
LABEL_26:
    gnssOsa_PrintLog(__str, 1, 1, 0);
    goto LABEL_27;
  }

  if (_MergedGlobals_6 != 32)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_27;
    }

    bzero(__str, 0x3C6uLL);
    v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx err,%u\n", v13);
    goto LABEL_24;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 73, "Hal_GetCoexConfiguration");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  memset(&v17[1], 0, 39);
  *v16 = 0x1900284D6242787ALL;
  v17[0] = 339;
  HIBYTE(v17[1]) = g_GNSSCoExConfigSWRequest & 1;
  HIBYTE(v17[2]) = (g_GNSSCoExConfigSWRequest & 4) != 0;
  HIBYTE(v17[3]) = (g_GNSSCoExConfigSWRequest & 8) != 0;
  HIBYTE(v17[4]) = (g_GNSSCoExConfigSWRequest & 2) != 0;
  HIBYTE(v17[5]) = (g_GNSSCoExConfigSWRequest & 0x10) != 0;
  HIBYTE(v17[6]) = (g_GNSSCoExConfigSWRequest & 0x20) != 0;
  Hal_PrintCoExConfig("Setting CoEx Config", g_GNSSCoExConfigSWRequest);
  v4 = 0;
  qword_2A145C630 = 0;
  for (j = 8; j != 46; ++j)
  {
    v4 += v16[j];
  }

  v17[19] = v4;
  LOBYTE(v17[20]) = 10;
  g_HalState = 6;
  if (Hal22_ZxSendToChip(v16, 0x31uLL) <= 0)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_27;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_26;
  }

  v6 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0xC8u);
  if (v6 == 1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

  if (v6)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_27;
    }

LABEL_36:
    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx err\n");
    goto LABEL_26;
  }

  if (_MergedGlobals_6 == 83)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SetCoex,session ongoing\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 87, "Hal_SetCoexConfig");
      v8 = 1;
      v9 = 2;
      goto LABEL_39;
    }

LABEL_40:
    v8 = 1;
    goto LABEL_28;
  }

  if (_MergedGlobals_6 == 32)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 73, "Hal_SetCoexConfig");
      v8 = 1;
      v9 = 4;
LABEL_39:
      gnssOsa_PrintLog(__str, v9, 1, 0);
      goto LABEL_28;
    }

    goto LABEL_40;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx err,%u\n", v14);
    goto LABEL_26;
  }

LABEL_27:
  v8 = 0;
LABEL_28:
  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

void Hal_PrintCoExConfig(const char *a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s: 2G,%u, NR,%u, LTEB13,%u, LTEB14,%u, EAssist,%u, STW,%u\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "Hal_PrintCoExConfig", a1, a2 & 1, (a2 >> 1) & 1, (a2 >> 2) & 1, (a2 >> 3) & 1, (a2 >> 4) & 1, (a2 >> 5) & 1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void Hal_CoexConfigRespone(unsigned __int8 *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a1[2] == 66 && a1[3] == 66)
    {
      _MergedGlobals_6 = a1[8];
      v2 = qword_2A145C630 | a1[11] | (2 * a1[17]) | (4 * a1[13]) | (8 * a1[15]) | (16 * a1[19]) | (32 * a1[21]);
      qword_2A145C630 |= a1[11] | (2 * a1[17]) | (4 * a1[13]) | (8 * a1[15]) | (16 * a1[19]) | (32 * a1[21]);
      if (g_HalState == 6)
      {
        Hal_PrintCoExConfig("FWCoEx Set Response", v2);
        if (g_GNSSCoExConfigSWRequest != qword_2A145C630)
        {
          _MergedGlobals_6 = 71;
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v5 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config mismatch SW,0x%llx,FW,0x%llx\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 87, "Hal_CoexConfigRespone", g_GNSSCoExConfigSWRequest, qword_2A145C630);
            gnssOsa_PrintLog(__str, 2, 1, 0);
          }
        }
      }

      else if (g_HalState == 7)
      {
        Hal_PrintCoExConfig("FWCoEx Get Response", v2);
      }

      if (!gnssOsa_SemRelease(g_HandleAckSem) && g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v9 = 1542;
        v10 = *__error();
        v8 = v6;
        v4 = "%10u %s%c %s: #%04hx HandleAckSem err,%d\n";
        goto LABEL_17;
      }
    }

    else if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = a1[3];
      v13 = a1[4];
      v11 = a1[2];
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDEx,%u\n", v3, "HAL");
LABEL_18:
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v9 = 513;
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = "%10u %s%c %s: #%04hx data\n";
LABEL_17:
    snprintf(__str, 0x3C5uLL, v4, v8, "HAL", 69, "Hal_CoexConfigRespone", v9, v10);
    goto LABEL_18;
  }

  v7 = *MEMORY[0x29EDCA608];
}

BOOL Is_NVIC_IntEph_Real(uint64_t a1)
{
  result = *(a1 + 60) || *(a1 + 30) || *(a1 + 56) || *(a1 + 64) || *(a1 + 66) || *(a1 + 68) || *(a1 + 70) || *(a1 + 72) || *(a1 + 74) || *(a1 + 26) || *(a1 + 28) != 0;
  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void GNB_Debug_Flush_Check(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = qword_2A1453F98 - qword_2A1453F90;
  if (dword_2A1453F88 - g_CB_GDbg > 0)
  {
    v0 = 0;
  }

  if ((v0 + dword_2A1453F88 - g_CB_GDbg) > 0x1FF)
  {
    v3 = *MEMORY[0x29EDCA608];
    v4 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v1 = *MEMORY[0x29EDCA608];
    v2 = *MEMORY[0x29EDCA608];

    GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
  }
}

void GNB_Debug_BlockMove(char *__src, int a2)
{
  v29 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg >= 4)
  {
    v4 = a2;
    v6 = g_CB_GDbg;
    v7 = qword_2A1453F98;
    v8 = qword_2A1453F98 - qword_2A1453F90;
    if (dword_2A1453F88 - g_CB_GDbg > 0)
    {
      v8 = 0;
    }

    if (v8 + dword_2A1453F88 - g_CB_GDbg <= a2)
    {
      GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
      v13 = g_CB_GDbg;
      v14 = qword_2A1453F98;
      v15 = qword_2A1453F98 - qword_2A1453F90;
      if (dword_2A1453F88 - g_CB_GDbg > 0)
      {
        v15 = 0;
      }

      v16 = v15 + dword_2A1453F88 - g_CB_GDbg;
      if (v4 > 1023)
      {
        if (v16 == 1024)
        {
          do
          {
            v19 = 1023;
            do
            {
              v20 = v19;
              v21 = v19-- != 0;
            }

            while (v21 && __src[v20] != 10);
            v22 = v19 + 2;
            if (v20)
            {
              v23 = v22;
            }

            else
            {
              v23 = 1024;
            }

            v24 = GN_GPS_Write_GNB_Debug(v23, __src);
            if (!v24)
            {
              LbsOsaTrace_PrintAsciiBuf(0, 4u, 1, "<OVERFLOW>\n", 12);
              goto LABEL_13;
            }

            __src += v24;
            v4 -= v24;
          }

          while (v4 > 1023);
          if (v4 >= 1)
          {
            v25 = qword_2A1453F98;
            v26 = g_CB_GDbg;
            do
            {
              v27 = v25 - v26;
              if (v4 >= v27)
              {
                v28 = v27;
              }

              else
              {
                v28 = v4;
              }

              memcpy(v26, __src, v28);
              v26 = (g_CB_GDbg + v28);
              g_CB_GDbg = v26;
              v25 = qword_2A1453F98;
              if (v26 >= qword_2A1453F98)
              {
                v26 = qword_2A1453F90;
                g_CB_GDbg = qword_2A1453F90;
              }

              __src += v28;
              v11 = __OFSUB__(v4, v28);
              v4 -= v28;
            }

            while (!((v4 < 0) ^ v11 | (v4 == 0)));
          }
        }
      }

      else if (v16 > v4)
      {
        do
        {
          v17 = v14 - v13;
          if (v4 >= v17)
          {
            v18 = v17;
          }

          else
          {
            v18 = v4;
          }

          memcpy(v13, __src, v18);
          v13 = (g_CB_GDbg + v18);
          g_CB_GDbg = v13;
          v14 = qword_2A1453F98;
          if (v13 >= qword_2A1453F98)
          {
            v13 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          __src += v18;
          v11 = __OFSUB__(v4, v18);
          v4 -= v18;
        }

        while (!((v4 < 0) ^ v11 | (v4 == 0)));
      }
    }

    else
    {
      do
      {
        v9 = v7 - v6;
        if (v4 >= v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = v4;
        }

        memcpy(v6, __src, v10);
        v6 = (g_CB_GDbg + v10);
        g_CB_GDbg = v6;
        v7 = qword_2A1453F98;
        if (v6 >= qword_2A1453F98)
        {
          v6 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        __src += v10;
        v11 = __OFSUB__(v4, v10);
        v4 -= v10;
      }

      while (!((v4 < 0) ^ v11 | (v4 == 0)));
    }

LABEL_13:
    v12 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v2 = *MEMORY[0x29EDCA608];
    v3 = *MEMORY[0x29EDCA608];
  }
}

float64_t BDS_EphInt2Real(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 20) = vmul_s32(*(a1 + 20), vdup_n_s32(0x12Cu));
  *(a2 + 28) = 300 * *(a1 + 28);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4.i64[0] = v2;
  v4.i64[1] = SHIDWORD(v2);
  v5 = vmulq_f64(vcvtq_f64_s64(v4), xmmword_299054300);
  v4.i64[0] = v3;
  v4.i64[1] = SHIDWORD(v3);
  *(a2 + 32) = v5;
  *(a2 + 48) = vmulq_f64(vcvtq_f64_s64(v4), xmmword_299054310);
  v6 = *(a1 + 48);
  *&v7.f64[0] = *&vcvtq_f64_s64(v6);
  v7.f64[1] = vcvtq_f64_u64(*&v6).f64[1];
  v8 = vmulq_f64(vcvtq_f64_s64(*(a1 + 64)), vdupq_n_s64(0x3E0921FB54442D28uLL));
  *(a2 + 64) = vmulq_f64(v7, xmmword_299054320);
  *(a2 + 80) = v8;
  v6.f64[0] = *(a1 + 80);
  v6.f64[1] = *(a1 + 88);
  *(a2 + 96) = vmulq_f64(v6, xmmword_299054330);
  v8.f64[0] = vcvtd_n_f64_s32(*(a1 + 94), 0x1EuLL);
  v7.f64[0] = *(a1 + 96);
  v7.f64[1] = *(a1 + 100);
  *(a2 + 112) = *(a1 + 92) * 1.78578867e-13;
  *(a2 + 120) = v8.f64[0];
  v9 = vmulq_f64(v7, xmmword_299054340);
  v8.f64[0] = *(a1 + 104);
  v7.f64[0] = *(a1 + 112);
  v4.i64[0] = SLODWORD(v8.f64[0]);
  v4.i64[1] = SHIDWORD(v8.f64[0]);
  *(a2 + 128) = v9;
  *(a2 + 144) = vmulq_f64(vcvtq_f64_s64(v4), xmmword_299054350);
  v4.i64[0] = SLODWORD(v7.f64[0]);
  v4.i64[1] = SHIDWORD(v7.f64[0]);
  v8.f64[0] = *(a1 + 120);
  v8.f64[1] = *(a1 + 124);
  *(a2 + 160) = vmulq_f64(vcvtq_f64_s64(v4), xmmword_299054360);
  *(a2 + 176) = vmulq_f64(v8, xmmword_299054370);
  *(a2 + 192) = *(a1 + 126);
  *(a2 + 194) = *(a1 + 128);
  *(a2 + 200) = *(a1 + 132) * 5.82076609e-11;
  v9.f64[0] = *(a1 + 134) * 5.82076609e-11;
  v10 = *(a1 + 138);
  *(a2 + 216) = *(a1 + 136) * 5.82076609e-11;
  *(a2 + 224) = v10 * 5.82076609e-11;
  *(a2 + 232) = *(a1 + 140);
  *(a2 + 236) = *(a1 + 144);
  *(a2 + 237) = *(a1 + 145);
  result = v9.f64[0] + *(a1 + 147) * 2.32830644e-10;
  *(a2 + 208) = result;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

_WORD *GPS_To_UTC_Time(_WORD *result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7, __int16 a8, double a9, double a10)
{
  v30 = *MEMORY[0x29EDCA608];
  for (i = 0.0005 - a10 + a9; i >= 604800.0; ++a8)
  {
    i = i + -604800.0;
  }

  while (i < 0.0)
  {
    i = i + 604800.0;
    --a8;
  }

  v11 = i;
  v12 = (i - i) * 1000.0;
  v13 = v12;
  if (v12 < -2147483650.0)
  {
    LOWORD(v13) = 0;
  }

  if (v12 <= 2147483650.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1;
  }

  *a7 = v14;
  v15 = v11 / 86400;
  v16 = v11 % 86400;
  *a4 = v16 / 3600;
  v16 %= 3600;
  *a5 = v16 / 60;
  *a6 = v16 % 60;
  v17 = v15 - a8 + 8 * a8;
  v18 = v17 + 6;
  if (v17 < 1456)
  {
    LOWORD(v20) = 1980;
  }

  else
  {
    if (v18 >= 0xB6A)
    {
      v18 = 2922;
    }

    v19 = v17 - v18 + 1466;
    v18 = v17 - 1461 * (v19 / 0x5B5) - 1455;
    v20 = 4 * (v19 / 0x5B5) + 1984;
  }

  if (v18 >= 367)
  {
    do
    {
      if ((v20 & 3) != 0)
      {
        v21 = -365;
      }

      else
      {
        v21 = -366;
      }

      v18 += v21;
      LOWORD(v20) = v20 + 1;
    }

    while (v18 > 0x16E);
  }

  v22 = 0;
  if ((v20 & 3) != 0)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v20;
  }

  if ((v20 & 3) != 0)
  {
    v24 = 1;
  }

  else
  {
    v24 = 366;
  }

  if (v18 == 366)
  {
    LOWORD(v20) = v23;
  }

  else
  {
    v24 = v18;
  }

  *result = v20;
  while (1)
  {
    v25 = Days_in_Month[v22];
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if ((v27 < 0) ^ v26 | (v27 == 0))
    {
      *a3 = v24;
      v28 = v22 + 1;
      goto LABEL_40;
    }

    if (v22 == 1 && (v20 & 3) == 0)
    {
      break;
    }

LABEL_36:
    ++v22;
    v24 = v27;
    if (v22 == 12)
    {
      goto LABEL_41;
    }
  }

  if (v27 >= 2)
  {
    --v27;
    goto LABEL_36;
  }

  *a3 = 29;
  v28 = 2;
LABEL_40:
  *a2 = v28;
LABEL_41:
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

_WORD *GPS_To_UTC_DOY(int *a1, __int16 a2, double a3, double a4)
{
  v21 = *MEMORY[0x29EDCA608];
  *v20 = 0;
  v19 = 0;
  result = GPS_To_UTC_Time(&v20[1], v20, &v19, &v18, &v17, &v16, &v15, a2, a3, a4);
  HIDWORD(v7) = -1030792151 * v20[1];
  LODWORD(v7) = HIDWORD(v7);
  v6 = v7 >> 2;
  LODWORD(v7) = HIDWORD(v7);
  if ((v7 >> 4) < 0xA3D70B || v6 > 0x28F5C28)
  {
    v9 = 32;
  }

  else
  {
    v9 = 31;
  }

  if ((v20[1] & 3) != 0)
  {
    v10 = 31;
  }

  else
  {
    v10 = v9;
  }

  if (v20[0] - 13 >= 0xFFFFFFF4)
  {
    if (v20[0] > 6u)
    {
      if (v20[0] > 9u)
      {
        if (v20[0] == 10)
        {
          v13 = 242;
        }

        else if (v20[0] == 11)
        {
          v13 = 273;
        }

        else
        {
          v13 = 303;
        }
      }

      else if (v20[0] == 7)
      {
        v13 = 150;
      }

      else if (v20[0] == 8)
      {
        v13 = 181;
      }

      else
      {
        v13 = 212;
      }
    }

    else if (v20[0] > 3u)
    {
      if (v20[0] == 4)
      {
        v13 = 59;
      }

      else if (v20[0] == 5)
      {
        v13 = 89;
      }

      else
      {
        v13 = 120;
      }
    }

    else
    {
      if (v20[0] == 1)
      {
        v12 = 0;
        goto LABEL_36;
      }

      if (v20[0] == 2)
      {
        v12 = 31;
LABEL_36:
        v11 = v12 + v19;
        goto LABEL_37;
      }

      v13 = 28;
    }

    v12 = v13 + v10;
    goto LABEL_36;
  }

  v11 = -1;
LABEL_37:
  *a1 = v11;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

char **ds_NK_Crude_Apx_Pos(char **result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v92 = *MEMORY[0x29EDCA608];
  v5 = a3 + 68224;
  if (*(a3 + 68305) <= 2u && *(a3 + 68304) != 1)
  {
    goto LABEL_150;
  }

  v6 = *(a2 + 32) + 604800 * *(a2 + 26) - *(a3 + 272);
  v7 = v6 >= 0 ? *(a2 + 32) + 604800 * *(a2 + 26) - *(a3 + 272) : *(a3 + 272) - (*(a2 + 32) + 604800 * *(a2 + 26));
  v8 = *(a2 + 1864) == 1 && v7 >= 0xA;
  if (v8 && *(a3 + 68304) != 1)
  {
    goto LABEL_150;
  }

  v9 = (a3 + 20104);
  v10 = *result;
  if (g_Logging_Cfg >= 4)
  {
    v11 = 0;
    v12 = 67;
    do
    {
      *result = v10 + 1;
      *v10 = v12;
      v10 = *result;
      if (*result >= result[3])
      {
        v10 = result[2];
        *result = v10;
      }

      v12 = aCapSrch[++v11];
    }

    while (v11 != 8);
    sprintf_5d(result, gDebug);
    sprintf_5d(v4, DWORD1(gDebug));
    sprintf_5d(v4, xmmword_2A13EE5B8);
    sprintf_5d(v4, DWORD1(xmmword_2A13EE5B8));
    sprintf_5d(v4, DWORD2(xmmword_2A13EE5B8));
    v13 = 0;
    v14 = *v4;
    v15 = 32;
    do
    {
      *v4 = v14 + 1;
      *v14 = v15;
      v14 = *v4;
      if (*v4 >= v4[3])
      {
        v14 = v4[2];
        *v4 = v14;
      }

      v15 = aEll[++v13];
    }

    while (v13 != 4);
    sprintf_7f(v4, (*&xmmword_2A13EE590 * 180.0 * 100.0 / 3.14159265), 3);
    sprintf_7f(v4, (*(&xmmword_2A13EE590 + 1) * 180.0 * 100.0 / 3.14159265), 3);
    sprintf_7d(v4, (*&xmmword_2A13EE578 / 1000.0));
    sprintf_7d(v4, (*(&xmmword_2A13EE578 + 1) / 1000.0));
    sprintf_4d(v4, *&qword_2A13EE588);
    v16 = 0;
    v17 = *v4;
    v18 = 32;
    do
    {
      *v4 = v17 + 1;
      *v17 = v18;
      v17 = *v4;
      if (*v4 >= v4[3])
      {
        v17 = v4[2];
        *v4 = v17;
      }

      v18 = aLsq[++v16];
    }

    while (v16 != 4);
    sprintf_2d(v4, dword_2A13EE5A4);
    sprintf_2d(v4, dword_2A13EE5A0);
    sprintf_2d(v4, byte_2A13EE5B5);
    sprintf_2d(v4, byte_2A13EE5B6);
    v19 = *v4;
    v20 = 32;
    v21 = 1u;
    do
    {
      *v4 = v19 + 1;
      *v19 = v20;
      v19 = *v4;
      if (*v4 >= v4[3])
      {
        v19 = v4[2];
        *v4 = v19;
      }

      v20 = aIter[v21++];
    }

    while (v21 != 6);
    sprintf_3d(v4, byte_2A13EE5A8);
    sprintf_3d(v4, byte_2A13EE5A9);
    sprintf_3d(v4, byte_2A13EE5AA);
    v22 = *v4;
    v23 = 32;
    v24 = 1u;
    do
    {
      *v4 = v22 + 1;
      *v22 = v23;
      v22 = *v4;
      if (*v4 >= v4[3])
      {
        v22 = v4[2];
        *v4 = v22;
      }

      v23 = aSrchprls[v24++];
    }

    while (v24 != 10);
    sprintf_2d(v4, byte_2A13EE5AB);
    sprintf_4d(v4, byte_2A13EE5AC);
    sprintf_2d(v4, byte_2A13EE5B4);
    v25 = (*v4)++;
    *v25 = 32;
    if (*v4 >= v4[3])
    {
      *v4 = v4[2];
    }

    if (dword_2A13EE5B0 >= 0)
    {
      v26 = dword_2A13EE5B0;
    }

    else
    {
      v26 = -dword_2A13EE5B0;
    }

    sprintf1da(v4, v26, v91, 0, dword_2A13EE5B0 >> 31);
    v27 = (*v4)++;
    *v27 = 10;
    v28 = *v4;
    if (*v4 >= v4[3])
    {
      v28 = v4[2];
    }

    v29 = 67;
    v30 = 1u;
    do
    {
      *v4 = v28 + 1;
      *v28 = v29;
      v28 = *v4;
      if (*v4 >= v4[3])
      {
        v28 = v4[2];
        *v4 = v28;
      }

      v29 = aCapVv[v30++];
    }

    while (v30 != 7);
    v31 = dword_2A13EE5C8;
    if (dword_2A13EE5C8 >= 9999)
    {
      v31 = 9999;
    }

    if (v31 <= -9999)
    {
      v32 = -9999;
    }

    else
    {
      v32 = v31;
    }

    sprintf_5d(v4, v32);
    v33 = dword_2A13EE5D0;
    if (dword_2A13EE5D0 >= 9999)
    {
      v33 = 9999;
    }

    if (v33 <= -9999)
    {
      v34 = -9999;
    }

    else
    {
      v34 = v33;
    }

    sprintf_5d(v4, v34);
    v35 = *v4;
    v36 = 32;
    v37 = 1u;
    do
    {
      *v4 = v35 + 1;
      *v35 = v36;
      v35 = *v4;
      if (*v4 >= v4[3])
      {
        v35 = v4[2];
        *v4 = v35;
      }

      v36 = aHv[v37++];
    }

    while (v37 != 4);
    v38 = HIDWORD(xmmword_2A13EE5B8);
    if (SHIDWORD(xmmword_2A13EE5B8) >= 9999)
    {
      v38 = 9999;
    }

    if (v38 <= -9999)
    {
      v39 = -9999;
    }

    else
    {
      v39 = v38;
    }

    sprintf_5d(v4, v39);
    v40 = dword_2A13EE5CC;
    if (dword_2A13EE5CC >= 9999)
    {
      v40 = 9999;
    }

    if (v40 <= -9999)
    {
      v41 = -9999;
    }

    else
    {
      v41 = v40;
    }

    sprintf_5d(v4, v41);
    v42 = 0;
    v43 = *v4;
    v44 = 32;
    do
    {
      *v4 = v43 + 1;
      *v43 = v44;
      v43 = *v4;
      if (*v4 >= v4[3])
      {
        v43 = v4[2];
        *v4 = v43;
      }

      v44 = aA_0[++v42];
    }

    while (v42 != 2);
    v45 = dword_2A13EE5D4;
    if (dword_2A13EE5D4 >= 9999)
    {
      v45 = 9999;
    }

    if (v45 <= -9999)
    {
      v46 = -9999;
    }

    else
    {
      v46 = v45;
    }

    sprintf_5d(v4, v46);
    v47 = *v4;
    v48 = 32;
    v49 = 1u;
    do
    {
      *v4 = v47 + 1;
      *v47 = v48;
      v47 = *v4;
      if (*v4 >= v4[3])
      {
        v47 = v4[2];
        *v4 = v47;
      }

      v48 = aR2[v49++];
    }

    while (v49 != 4);
    v50 = dword_2A13EE570;
    if (dword_2A13EE570 >= 9999)
    {
      v50 = 9999;
    }

    if (v50 <= -9999)
    {
      v51 = -9999;
    }

    else
    {
      v51 = v50;
    }

    sprintf_5d(v4, v51);
    v52 = (*v4)++;
    *v52 = 10;
    if (*v4 >= v4[3])
    {
      *v4 = v4[2];
    }

    xmmword_2A13EE5B8 = 0u;
    *&dword_2A13EE5C8 = 0u;
    *(&xmmword_2A13EE590 + 8) = 0u;
    *&byte_2A13EE5A8 = 0u;
    xmmword_2A13EE578 = 0u;
    *&qword_2A13EE588 = 0u;
    gDebug = 0u;
    *algn_2A13EE568 = 0u;
    v10 = *v4;
    if (g_Logging_Cfg >= 4)
    {
      v53 = 67;
      v54 = 1u;
      do
      {
        *v4 = v10 + 1;
        *v10 = v53;
        v10 = *v4;
        if (*v4 >= v4[3])
        {
          v10 = v4[2];
          *v4 = v10;
        }

        v53 = aCapSv[v54++];
      }

      while (v54 != 7);
      sprintf_2d(v4, *(v5 + 84));
      sprintf_2d(v4, *(v5 + 85));
      sprintf_2d(v4, *(v5 + 86));
      sprintf_2d(v4, *(v5 + 87));
      v55 = (*v4)++;
      *v55 = 32;
      v56 = *v4;
      if (*v4 >= v4[3])
      {
        v56 = v4[2];
      }

      *v4 = v56 + 1;
      *v56 = 10;
      v10 = *v4;
      if (*v4 >= v4[3])
      {
        v10 = v4[2];
      }
    }
  }

  v57 = 0;
  v58 = 67;
  do
  {
    *v4 = v10 + 1;
    *v10 = v58;
    v10 = *v4;
    if (*v4 >= v4[3])
    {
      v10 = v4[2];
      *v4 = v10;
    }

    v58 = aCap[++v57];
  }

  while (v57 != 4);
  v59 = "fail";
  if (*(v5 + 96))
  {
    v59 = "pass";
  }

  v60 = *v59;
  if (*v59)
  {
    v61 = (v59 + 1);
    do
    {
      *v4 = v10 + 1;
      *v10 = v60;
      v10 = *v4;
      if (*v4 >= v4[3])
      {
        v10 = v4[2];
        *v4 = v10;
      }

      v62 = *v61++;
      v60 = v62;
    }

    while (v62);
  }

  v63 = 0;
  v64 = 32;
  do
  {
    *v4 = v10 + 1;
    *v10 = v64;
    v10 = *v4;
    if (*v4 >= v4[3])
    {
      v10 = v4[2];
      *v4 = v10;
    }

    v64 = aSv_0[++v63];
  }

  while (v63 != 4);
  sprintf_3d(v4, *(v5 + 81));
  v65 = *v4;
  v66 = 32;
  v67 = 1u;
  do
  {
    *v4 = v65 + 1;
    *v65 = v66;
    v65 = *v4;
    if (*v4 >= v4[3])
    {
      v65 = v4[2];
      *v4 = v65;
    }

    v66 = aMs[v67++];
  }

  while (v67 != 6);
  sprintf_5d(v4, *(v5 + 82));
  v69 = *(v5 + 88);
  v68 = *(v5 + 92);
  if (*(v5 + 88))
  {
    v71 = (5729 * v69) >> 15;
    v70 = (5729 * v68) >> 15;
    v72 = vcvtd_n_f64_s32(v68, 0xFuLL) - *v5;
    v73 = *(v5 + 48);
    v74 = __sincos_stret(vcvtd_n_f64_s32(v69, 0xFuLL));
    v75 = v74.__cosval * *(v5 + 56);
    v76 = cos(v72) * v75 + v73 * v74.__sinval;
    if (fabs(v76) < 1.0)
    {
      v77 = (acos(v76) * 6378.137);
      goto LABEL_121;
    }
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  v77 = 0;
LABEL_121:
  sprintf_7f(v4, v71, 3);
  sprintf_7f(v4, v70, 3);
  sprintf_6d(v4, v77);
  v78 = *v4;
  for (i = 5; i > 1; --i)
  {
    *v4 = v78 + 1;
    *v78 = 32;
    v78 = *v4;
    if (*v4 >= v4[3])
    {
      v78 = v4[2];
      *v4 = v78;
    }
  }

  if (*(a2 + 20) >= 4 && (v80 = *(v5 + 81), v80 >= 3))
  {
    v82 = "BAD ";
    if (v77 < 151)
    {
      v82 = "GOOD";
    }

    v83 = "bad ";
    if (v77 < 901)
    {
      v83 = "good";
    }

    if (v80 == 3)
    {
      v81 = v83;
    }

    else
    {
      v81 = v82;
    }

    if (*(v5 + 96) != 1)
    {
      v81 = "FAIL";
    }
  }

  else
  {
    v81 = "SKIP";
  }

  v84 = *v81;
  if (*v81)
  {
    v85 = (v81 + 1);
    do
    {
      *v4 = v78 + 1;
      *v78 = v84;
      v78 = *v4;
      if (*v4 >= v4[3])
      {
        v78 = v4[2];
        *v4 = v78;
      }

      v86 = *v85++;
      v84 = v86;
    }

    while (v86);
  }

  if (v6 >= 99)
  {
    v87 = 99;
  }

  else
  {
    v87 = v6;
  }

  if (v87 <= -99)
  {
    v88 = -99;
  }

  else
  {
    v88 = v87;
  }

  sprintf_5d(v4, v88);
  sprintf_3d(v4, *v9);
  result = sprintf1da(v4, v9[1], v91, 0, 0);
  v89 = (*v4)++;
  *v89 = 10;
  if (*v4 >= v4[3])
  {
    *v4 = v4[2];
  }

LABEL_150:
  v90 = *MEMORY[0x29EDCA608];
  return result;
}

void WGS84_ECEF2Geo(long double *a1, double *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = v3 * v3 + v4 * v4;
  v7 = v5 * v5 * 2.45817226e-14;
  v9 = 3;
  v10 = 0.00669437999;
  do
  {
    v8 = v7 * 0.99330562;
    v10 = v10 - (v10 * -0.0000896294469 + v10 * v10 * (v6 * 2.45817226e-14 + v7 * 0.99330562 + -0.0000448147235 + (v8 + v8) * v10 + v8 * (v10 * v10)) + -0.0000448147235) / ((v6 * 2.45817226e-14 + v7 * 0.99330562 + -0.0000448147235 + v6 * 2.45817226e-14 + v7 * 0.99330562 + -0.0000448147235) * v10 + v7 * 0.99330562 * 4.0 * (v10 * v10) * ((v8 + v8) * 3.0 + v10) + -0.0000896294469);
    --v9;
  }

  while (v9);
  v11 = v10 + 1.0;
  if (fabs(v4) >= 0.001 || fabs(v3) >= 0.001)
  {
    a2[1] = atan2(v3, v4);
  }

  else
  {
    a2[1] = 0.0;
    v12 = 0.0;
    if (fabs(v5) < 0.001)
    {
      goto LABEL_9;
    }
  }

  v12 = atan2(v5 * v11, sqrt(v6));
LABEL_9:
  *a2 = v12;
  a2[2] = (v10 * -148.379032 + 1.0) * sqrt(v7 + v6 * 2.45817226e-14 / (v11 * v11)) * 6378137.0;
  v13 = *MEMORY[0x29EDCA608];
}

uint64_t GncP11_01ConvertGnssID(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 > 3)
  {
    v1 = 4;
    if (a1 == 6)
    {
      v2 = 6;
    }

    else
    {
      v2 = 1;
    }

    if (a1 == 5)
    {
      v2 = 5;
    }

    v3 = a1 == 4;
    goto LABEL_13;
  }

  if (a1)
  {
    v1 = 2;
    if (a1 == 3)
    {
      v2 = 3;
    }

    else
    {
      v2 = 1;
    }

    v3 = a1 == 2;
LABEL_13:
    if (v3)
    {
      result = v1;
    }

    else
    {
      result = v2;
    }

    goto LABEL_16;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GNSSId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GncP11_01ConvertGnssID", 770, 0);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  result = 0;
LABEL_16:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP11_05ConvertGnssSignalID(int a1)
{
  if (a1 <= 50)
  {
    if (a1 == 50)
    {
      v3 = 50;
    }

    else
    {
      v3 = 17;
    }

    if (a1 == 49)
    {
      v3 = 49;
    }

    if (a1 == 36)
    {
      v3 = 36;
    }

    if (a1 == 35)
    {
      v12 = 35;
    }

    else
    {
      v12 = 17;
    }

    if (a1 == 34)
    {
      v12 = 34;
    }

    if (a1 <= 35)
    {
      v3 = v12;
    }

    if (a1 == 33)
    {
      v13 = 33;
    }

    else
    {
      v13 = 17;
    }

    if (a1 == 20)
    {
      v13 = 20;
    }

    if (a1 == 19)
    {
      v13 = 19;
    }

    if (a1 == 18)
    {
      v10 = 18;
    }

    else
    {
      v10 = 17;
    }

    if (!a1)
    {
      v10 = 0;
    }

    if (a1 > 18)
    {
      v10 = v13;
    }

    v11 = a1 <= 33;
  }

  else
  {
    if (a1 == 98)
    {
      v1 = 114;
    }

    else
    {
      v1 = 17;
    }

    if (a1 == 97)
    {
      v2 = 113;
    }

    else
    {
      v2 = v1;
    }

    if (a1 == 83)
    {
      v3 = 99;
    }

    else
    {
      v3 = v2;
    }

    if (a1 == 82)
    {
      v4 = 98;
    }

    else
    {
      v4 = 17;
    }

    if (a1 == 81)
    {
      v5 = 97;
    }

    else
    {
      v5 = v4;
    }

    if (a1 == 68)
    {
      v6 = 84;
    }

    else
    {
      v6 = v5;
    }

    if (a1 <= 82)
    {
      v3 = v6;
    }

    if (a1 == 67)
    {
      v7 = 83;
    }

    else
    {
      v7 = 17;
    }

    if (a1 == 66)
    {
      v8 = 82;
    }

    else
    {
      v8 = v7;
    }

    if (a1 == 65)
    {
      v9 = 81;
    }

    else
    {
      v9 = v8;
    }

    if (a1 == 52)
    {
      v10 = 52;
    }

    else
    {
      v10 = 17;
    }

    if (a1 == 51)
    {
      v10 = 51;
    }

    if (a1 > 64)
    {
      v10 = v9;
    }

    v11 = a1 <= 67;
  }

  if (v11)
  {
    result = v10;
  }

  else
  {
    result = v3;
  }

  v15 = *MEMORY[0x29EDCA608];
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP11_23ConvertUsrState(unsigned int a1)
{
  v1 = a1;
  v6 = *MEMORY[0x29EDCA608];
  if (a1 >= 6)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx UsrState,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP11_23ConvertUsrState", 770, v1);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    LOBYTE(v1) = 0;
  }

  v3 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t GncP11_24ConvertGnssContent(unsigned int a1)
{
  v1 = a1;
  v6 = *MEMORY[0x29EDCA608];
  if (a1 >= 5)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GnssCntnt,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP11_24ConvertGnssContent", 770, v1);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    LOBYTE(v1) = 0;
  }

  v3 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t GncP11_25ConvertReliab(unsigned int a1)
{
  v1 = a1;
  v6 = *MEMORY[0x29EDCA608];
  if (a1 >= 5)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Reliab,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP11_25ConvertReliab", 770, v1);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    LOBYTE(v1) = 0;
  }

  v3 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t GncP11_30CheckUtcValidity(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  v7 = 0;
  v14 = *MEMORY[0x29EDCA608];
  if (a3 && a4 <= 0x17 && a5 <= 0x3B && a6 <= 0x3C && a7 <= 0x3E7)
  {
    if (a2 <= 0xC)
    {
      if (((1 << a2) & 0x15AA) != 0)
      {
        if (a3 <= 0x1F)
        {
          goto LABEL_18;
        }

        goto LABEL_12;
      }

      if (((1 << a2) & 0xA50) != 0)
      {
        if (a3 > 0x1E)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }

      if (a2 == 2)
      {
        if ((a1 & 3) == 0)
        {
          HIDWORD(v9) = -1030792151 * a1;
          LODWORD(v9) = -1030792151 * a1;
          if ((v9 >> 2) > 0x28F5C28 || a1 == 400 * ((10737419 * a1) >> 32))
          {
            if (a3 <= 0x1D)
            {
              goto LABEL_18;
            }

            goto LABEL_12;
          }
        }

        if (a3 > 0x1C)
        {
LABEL_12:
          v7 = 0;
          goto LABEL_19;
        }

LABEL_18:
        v7 = 1;
        goto LABEL_19;
      }
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Month,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GncP11_30CheckUtcValidity", 770, a2);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    goto LABEL_12;
  }

LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t GncP11_32ConvertEstimatedTech(unsigned int a1)
{
  v1 = a1;
  v6 = *MEMORY[0x29EDCA608];
  if (a1 >= 4)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EstimTech,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP11_32ConvertEstimatedTech", 770, v1);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    LOBYTE(v1) = 0;
  }

  v3 = *MEMORY[0x29EDCA608];
  return v1;
}

double GLON_RealAlm2RefState(__int16 a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x29EDCA608];
  *(a5 + 175) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  if (a3 >= 1)
  {
    v10 = -1;
  }

  else
  {
    v10 = 86399;
  }

  *(a5 + 80) = 0uLL;
  *(a5 + 96) = 0uLL;
  *(a5 + 48) = 0uLL;
  *(a5 + 64) = 0uLL;
  *(a5 + 32) = 0uLL;
  *a5 = 0uLL;
  *(a5 + 16) = 0uLL;
  GLON_RealAlm2ECEF(v20, &v18, a4, v10 + a3, (a2 - (a3 < 1)));
  GLON_RealAlm2ECEF(a5, a5 + 24, a4, a3, a2);
  *(a5 + 48) = vsubq_f64(*(a5 + 24), v18);
  *(a5 + 64) = *(a5 + 40) - v19;
  *(a5 + 96) = -*(a4 + 72);
  *(a5 + 104) = 0;
  *(a5 + 168) = a3;
  *(a5 + 172) = a2;
  *(a5 + 174) = a1;
  v11 = *(a4 + 4);
  *(a5 + 176) = 2;
  *(a5 + 180) = v11;
  *(a5 + 166) = 123;
  *(a5 + 188) = *(a4 + 10);
  *(a5 + 184) = 2;
  v12 = a2 - *(a4 + 8);
  v13 = v12 + 1461;
  if (v12 >= -730)
  {
    v13 = a2 - *(a4 + 8);
  }

  if (v12 <= 730)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12 - 1461;
  }

  if (v14 < 0)
  {
    v14 = -v14;
  }

  if (v14 >= 0x281)
  {
    v15 = 65500;
  }

  else
  {
    v15 = 100 * v14 + 1500;
  }

  result = (v15 * v15);
  *(a5 + 112) = result;
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void DD_Assist_GPS_Data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = 0;
  v113 = *MEMORY[0x29EDCA608];
  v97 = a1 + 224;
  v96 = a1 + 192;
  v7 = a3 + 120;
  v95 = a2 - 241;
  v99 = a3 + 120;
  v100 = a3 + 7544;
  do
  {
    if (*(*(a3 + 64) + v6) != 1 || (v8 = (v7 + 116 * v6), v8[1] < 6) || (v95 - *v8) <= 0xFFFFF806)
    {
      v111 = 0u;
      memset(v112, 0, 19);
      v109 = 0u;
      v110 = 0u;
      memset(v108, 0, sizeof(v108));
      if (Core_Get_GPS_Eph((v6 + 1), v5, v108))
      {
        if ((v9 = *(a3 + 64), *(v9 + v6) != 1) || (v10 = (v7 + 116 * v6), v11 = v10[1], SDWORD1(v108[0]) > v11) || ((v28 = *v10, SLODWORD(v108[0]) > v28) ? (v29 = DWORD1(v108[0]) == v11) : (v29 = 0), v29 || v5 - v28 <= -1801))
        {
          v12 = v5;
          v13 = DWORD2(v108[0]);
          v14 = v112[12];
          v15 = v112[12] == 0;
          if (!*(v9 + v6))
          {
            goto LABEL_12;
          }

          v16 = (v99 + 116 * v6);
          if (LODWORD(v108[0]) - *v16 > 10799)
          {
            goto LABEL_12;
          }

          v94 = v112[12] == 0;
          v17 = *(a3 + 64);
          v18 = Is_GPS_BinEph_Real(v99 + 116 * v6);
          v9 = v17;
          v15 = v94;
          if (!v18)
          {
            goto LABEL_12;
          }

          v19 = Is_GPS_BinEph_Real(v108);
          v9 = v17;
          v15 = v94;
          if (!v19)
          {
            v5 = v12;
            *v16 = v12;
            v7 = v99;
          }

          else
          {
LABEL_12:
            v20 = 0xE4FE7F3uLL >> ((v13 >> 2) & 0x1F);
            v21 = v20 & 1;
            v22 = v14 == 0;
            v23 = *a3;
            if (*(*a3 + v6))
            {
              v5 = v12;
              v7 = v99;
            }

            else
            {
              v7 = v99;
              if ((v20 | v22))
              {
                v24 = *(a3 + 80);
                v5 = v12;
                if (*(v24 + v6) == 1)
                {
                  v25 = (v100 + 44 * v6);
                  v26 = 0xE4FE7F3uLL >> (v25[5] & 0x1F);
                  v27 = *v25;
                  if ((v26 & 1) != 0 || v27 + 3600 <= v12)
                  {
                    if (v27 + 100 < v12)
                    {
                      *(*(a3 + 40) + v6) = 0;
                      *(v24 + v6) = 0;
                      *(v96 + v6) = -1;
                      v9 = *(a3 + 64);
                      v23 = *a3;
                    }
                  }

                  else
                  {
                    v21 = 0;
                    v15 = 0;
                  }
                }
              }

              else
              {
                v5 = v12;
              }
            }

            v30 = v111;
            v31 = v7 + 116 * v6;
            *(v31 + 64) = v110;
            *(v31 + 80) = v30;
            *(v31 + 96) = *v112;
            *(v31 + 112) = *&v112[16];
            v32 = v108[1];
            *v31 = v108[0];
            *(v31 + 16) = v32;
            v33 = v109;
            *(v31 + 32) = v108[2];
            *(v31 + 48) = v33;
            *(*(a3 + 32) + v6) = 1;
            *(v9 + v6) = 1;
            v34 = v21 & 1;
            *(v23 + v6) = v34;
            if (v34)
            {
              v35 = 1;
            }

            else
            {
              v35 = 2;
            }

            v36 = *(a3 + 16);
            if (*(v31 + 4) == 5)
            {
              *(v36 + 20 * v6 + 8) = v35;
              *(*(a3 + 8) + v6) = v15;
              if (v15)
              {
                v37 = 1;
              }

              else
              {
                v37 = 2;
              }

              *(*(a3 + 24) + 20 * v6 + 8) = v37;
            }

            else
            {
              *(v36 + 20 * v6 + 12) = v35;
            }

            if (v5 >= 1)
            {
              *(*(a3 + 88) + v6) = 1;
              Core_Save_GPS_Eph((v6 + 1), 0, v31);
              v23 = *a3;
            }

            v38 = 0;
            LODWORD(v39) = 0;
            v40 = p_NV;
            v41 = v23[1];
            *(p_NV + 100) = *v23;
            *(v40 + 116) = v41;
            v42 = 55665;
            do
            {
              v43 = *(v40 + 96 + v38) ^ BYTE1(v42);
              v42 = 52845 * (v42 + v43) + 22719;
              v39 = (v39 + v43);
              ++v38;
            }

            while (v38 != 40);
            *(v40 + 88) = v39;
            v44 = a1 + 6 * v6;
            *v44 = 16777472;
            *(v44 + 4) = 256;
            *(v97 + 2 * v6) = 256;
          }
        }
      }
    }

    ++v6;
  }

  while (v6 != 32);
  v45 = a4;
  if (v5 >= 1)
  {
    v46 = 0;
    v47 = a3 + 3832;
    do
    {
      if (*(*a3 + v46) == 1 && (*(*(v45 + 1608) + v46) & 1) == 0 && (*(*(a3 + 72) + v46) != 1 || v5 - *(v47 + 116 * v46) >= 241))
      {
        v111 = 0u;
        memset(v112, 0, 19);
        v109 = 0u;
        v110 = 0u;
        memset(v108, 0, sizeof(v108));
        GPS_BinEph = EE_Get_GPS_BinEph((v46 + 1), v5, v108);
        v49 = *(a3 + 72);
        if (!GPS_BinEph || (v50 = v108[0], *(v49 + v46) == 1) && SLODWORD(v108[0]) <= *(v47 + 116 * v46))
        {
          *(v49 + v46) = 0;
        }

        else
        {
          v51 = v108[1];
          v52 = v47 + 116 * v46;
          *v52 = v108[0];
          *(v52 + 16) = v51;
          v53 = v109;
          *(v52 + 32) = v108[2];
          *(v52 + 48) = v53;
          *(v52 + 112) = *&v112[16];
          v54 = *v112;
          *(v52 + 80) = v111;
          *(v52 + 96) = v54;
          *(v52 + 64) = v110;
          *(*(a3 + 32) + v46) = 1;
          *(v49 + v46) = 1;
          v55 = a1 + 6 * v46;
          *v55 = 16777472;
          *(v55 + 4) = 256;
          *(v97 + 2 * v46) = 256;
          *v105 = 0u;
          v104 = 0u;
          v103 = 0u;
          v102 = 0u;
          v101[0] = v50;
          v101[1] = DWORD1(v108[0]);
          LOBYTE(v102) = BYTE8(v108[0]);
          v56 = 21;
          v57 = 11;
          v58 = &v108[1] + 8;
          *(&v102 + 1) = *(v108 + 9);
          do
          {
            v59 = v101 + v57;
            *v59 = *v58;
            *(v59 + 1) = *(v58 + 1);
            v58 += 4;
            --v56;
            v57 += 3;
          }

          while (v56 > 1);
          *&v105[15] = *&v112[12];
          v106 = *&v112[14];
          v107 = v112[18];
          Debug_Log_GPS_Eph(2, v46 + 1, v101);
        }

        v45 = a4;
      }

      ++v46;
    }

    while (v46 != 32);
  }

  v60 = 0;
  memset(v108, 0, 44);
  do
  {
    if (*(*(a3 + 80) + v60) == 1 && v5 - *(v100 + 44 * v60) < 1801)
    {
      goto LABEL_81;
    }

    *(v108 | 0xC) = 0u;
    *((v108 | 0xC) + 0x10) = 0u;
    if (!Core_Get_GPS_Alm((v60 + 1), v5, v108))
    {
      goto LABEL_81;
    }

    v61 = *(a3 + 80);
    if (*(v61 + v60) == 1 && SLODWORD(v108[0]) <= *(v100 + 44 * v60))
    {
      goto LABEL_81;
    }

    v62 = (0xE4FE7F3uLL >> (BYTE4(v108[1]) & 0x1F)) & 1;
    v63 = *a3;
    if ((*(*a3 + v60) & 1) == 0 && v62)
    {
      v64 = *(a3 + 64);
      if (*(v64 + v60) != 1)
      {
        goto LABEL_75;
      }

      v65 = (v99 + 116 * v60);
      v66 = 0xE4FE7F3uLL >> ((v65[2] >> 2) & 0x1F);
      v67 = *v65;
      if ((v66 & 1) != 0 || v67 + 3600 <= v5)
      {
        if (v67 + 100 < v5)
        {
          *(*(a3 + 32) + v60) = 0;
          *(v64 + v60) = 0;
          v68 = a1 + 6 * v60;
          *v68 = 16777472;
          *(v68 + 4) = 256;
          *(v97 + 2 * v60) = 256;
        }

LABEL_75:
        LOBYTE(v62) = 1;
        goto LABEL_76;
      }

      LOBYTE(v62) = 0;
    }

LABEL_76:
    v69 = (v100 + 44 * v60);
    v70 = v108[1];
    *v69 = v108[0];
    v69[1] = v70;
    *(v69 + 28) = *(&v108[1] + 12);
    *(*(a3 + 40) + v60) = 1;
    *(v61 + v60) = 1;
    *(v63 + v60) = v62;
    if (v5 >= 1)
    {
      Core_Save_GPS_Alm((v60 + 1), 0, v69);
      v63 = *a3;
    }

    v71 = 0;
    LODWORD(v72) = 0;
    v73 = p_NV;
    v74 = v63[1];
    *(p_NV + 100) = *v63;
    *(v73 + 116) = v74;
    v75 = 55665;
    do
    {
      v76 = *(v73 + 96 + v71) ^ BYTE1(v75);
      v75 = 52845 * (v75 + v76) + 22719;
      v72 = (v72 + v76);
      ++v71;
    }

    while (v71 != 40);
    *(v73 + 88) = v72;
    *(v96 + v60) = -1;
LABEL_81:
    ++v60;
  }

  while (v60 != 32);
  v108[0] = 0uLL;
  if ((*(a3 + 8956) - 4) > 2 || v5 - *(a3 + 8952) >= 1801)
  {
    GPS_Klob = Core_Get_GPS_Klob(v5, v108);
    v78 = *(a3 + 8956);
    if (GPS_Klob)
    {
      if ((v78 - 4) > 2 || SLODWORD(v108[0]) > *(a3 + 8952))
      {
        *(a3 + 8952) = v108[0];
        if (v5 >= 1 && *(a3 + 8956) != 3)
        {
          v79 = 0;
          LODWORD(v80) = 0;
          v81 = p_NV;
          v82 = p_NV + 144;
          *(p_NV + 144) = v108[0];
          v83 = 55665;
          do
          {
            v84 = *(v82 + v79) ^ BYTE1(v83);
            v83 = 52845 * (v83 + v84) + 22719;
            v80 = (v80 + v84);
            ++v79;
          }

          while (v79 != 16);
          *(v81 + 136) = v80;
        }
      }
    }

    else if (v5 >= 901 && !v78)
    {
      *(a3 + 8952) = v5 - 1209600;
      *(a3 + 8960) = 0xFAFF0427FFFF0205;
      *(a3 + 8956) = 1;
      EvLog("DD_Assist_GPS_Ion:  Iono Model missing, default used.");
    }
  }

  memset(v108, 0, 22);
  v85 = (a3 + 8968);
  if (((*(a3 + 8972) - 4) > 2 || v5 - *v85 >= 1801) && Core_Get_GPS_UTC(v5, v108) && ((*(a3 + 8972) - 4) > 2 || SLODWORD(v108[0]) > *v85))
  {
    *v85 = v108[0];
    *(a3 + 8984) = *&v108[1];
    if (v5 >= 1 && *(a3 + 8972) != 3)
    {
      v86 = 0;
      LODWORD(v87) = 0;
      v88 = p_NV;
      v89 = p_NV + 168;
      *(p_NV + 168) = v108[0];
      *(v88 + 184) = *&v108[1];
      v90 = 55665;
      do
      {
        v91 = *(v89 + v86) ^ BYTE1(v90);
        v90 = 52845 * (v90 + v91) + 22719;
        v87 = (v87 + v91);
        ++v86;
      }

      while (v86 != 24);
      *(v88 + 160) = v87;
    }
  }

  v92 = *MEMORY[0x29EDCA608];
}

uint64_t EE_Get_GPS_BinEph(XofSvcsIf *a1, int a2, uint64_t a3)
{
  v4 = a1;
  v33 = *MEMORY[0x29EDCA608];
  strcpy(v32, "GN_EE_Get_GPS_Eph_El: ");
  if ((a1 + 53) > 0xF5u || (a1 - 33) > 0xDFu)
  {
    result = GN_EE_Get_GPS_Eph_El(a1, (((1861606989 * a2) >> 50) + ((1861606989 * a2) >> 63)), a2 - 604800 * (((1861606989 * a2) >> 50) + ((1861606989 * a2) >> 63)), &v9);
    if (result)
    {
      v21[2] = v10;
      v22 = v11;
      v23 = v12;
      v24 = v13;
      v25 = v14;
      v26 = v15;
      v27 = v16;
      v28 = v17;
      v29 = v18;
      v30 = v19;
      v31 = v20;
      v6 = *(p_api + 48);
      if (*(v6 + 16) == 1 && *v6 >= 3)
      {
        v7 = *(v6 + 40) + 604800 * *(v6 + 32);
      }

      else
      {
        v7 = 0;
      }

      v21[0] = v7;
      v21[1] = 6;
      if (g_Logging_Cfg < 5)
      {
        EvLog_v("%s  %d", v32, v4);
      }

      else
      {
        EvLog_GPS_IntEph(v32, v4, v21);
      }

      result = Is_GPS_IntEph_Valid(v32, v4, v21);
      if (result)
      {
        GPS_EphInt2Bin(v21, a3);
        result = 1;
      }
    }
  }

  else
  {
    EvCrt_v("EE_Get_GLON_GPS_BinEph:  FAILED:  SV = %d, Out of range !", a1);
    result = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t EE_Get_GLON_GPS_BinEph(XofSvcsIf *a1, int a2, uint64_t a3)
{
  v3 = a1;
  v31 = *MEMORY[0x29EDCA608];
  v29 = 0;
  v28 = 0;
  strcpy(v30, "GN_EE_Get_GLON_GPS_Eph_El: ");
  if ((a1 - 25) > 0xE7u)
  {
    result = GN_EE_Get_GLON_GPS_Eph_El(a1, (((1861606989 * a2) >> 50) + ((1861606989 * a2) >> 63)), a2 - 604800 * (((1861606989 * a2) >> 50) + ((1861606989 * a2) >> 63)), &v9);
    if (result)
    {
      v19[2] = v10;
      v20 = v11;
      v21 = v12;
      v22 = v13;
      v23 = v14;
      v24 = v15;
      v25 = v16;
      v26 = v17;
      v27 = v18;
      v6 = *(p_api + 48);
      if (*(v6 + 16) == 1 && *v6 >= 3)
      {
        v7 = *(v6 + 40) + 604800 * *(v6 + 32);
      }

      else
      {
        v7 = 0;
      }

      v19[0] = v7;
      v19[1] = 6;
      if (g_Logging_Cfg < 5)
      {
        EvLog_v("%s  %d", v30, v3);
      }

      else
      {
        EvLog_GPS_IntEph(v30, v3, v19);
      }

      result = Is_GPS_IntEph_Valid(v30, v3, v19);
      if (result)
      {
        GPS_EphInt2Bin(v19, a3);
        result = 1;
      }
    }
  }

  else
  {
    EvCrt_v("EE_Get_GLON_GPS_BinEph:  FAILED:  SV = %d < %d || > %d, Out of range !", a1, 1, 24);
    result = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t EE_Get_GAL_IntEph(XofSvcsIf *a1, int a2, uint64_t a3)
{
  v3 = a1;
  v33 = *MEMORY[0x29EDCA608];
  if ((a1 - 37) <= 0xDBu)
  {
    EvCrt_v("EE_Get_GAL_IntEph:  FAILED:  SV = %d, Out of range !");
    goto LABEL_5;
  }

  if (a2 < 619315200)
  {
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  result = GN_EE_Get_GAL_Eph_El(a1, (a2 / 0x93A80u - 1024), a2 % 0x93A80u, &v19);
  if (!result)
  {
    goto LABEL_6;
  }

  if (g_Logging_Cfg < 5)
  {
    EvLog_d("GN_EE_Get_GAL_Eph_El: ", v3);
  }

  else
  {
    EvLog_nd("GN_EE_Get_GAL_Eph_El: ", 34, SHIWORD(v24), v19, WORD2(v19), BYTE6(v19), HIBYTE(v19), v20, HIWORD(v20), v21, DWORD1(v21), DWORD2(v21), HIDWORD(v21), v22, HIDWORD(v22), v23, v24, SWORD1(v24), SWORD2(v24), SWORD3(v24), SWORD4(v24), SWORD5(v24), SWORD6(v24), SHIWORD(v24), v27, v25, HIDWORD(v25), v26, v28, SHIWORD(v28), v29, BYTE1(v29), BYTE2(v29), HIBYTE(v29), v30, HIBYTE(v30), v31, v24, HIWORD(v20), v20, HIBYTE(v19), BYTE6(v19), WORD2(v19));
  }

  v7 = BYTE6(v19) - 37;
  v8 = v7 < 0xFFFFFFDC;
  if (v7 <= 0xFFFFFFDB)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  SVid = %d, Out of range !", BYTE6(v19));
  }

  if (v19 > 0x93A7F)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  WeekNo = %d >= 604800, Out of range !", v19);
    v8 = 1;
  }

  if (WORD2(v19) >= 0x1000u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  WeekNo = %d >= 4096, Out of range !", WORD2(v19));
    v8 = 1;
  }

  v9 = BYTE6(v19);
  if (BYTE6(v19) >= 0x41u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  SVid = %d > 2^6, Out of range !", BYTE6(v19));
    v9 = BYTE6(v19);
    v8 = 1;
  }

  if (v9 >= 0x25)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  SVid = %d > 36, Unrealistic value !", v9);
    v8 = 1;
  }

  if (v27 >> 5 >= 0x13Bu)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  toc = %d > 10079, Out of range !", v27);
    v8 = 1;
  }

  if (HIWORD(v20) >> 5 >= 0x13Bu)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  toe = %d > 10079, Out of range !", HIWORD(v20));
    v8 = 1;
  }

  if (v20 >= 0x400u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  IODnav = %d > 1023, Out of range !", v20);
    v8 = 1;
  }

  v10 = 0.03;
  v11 = 0.25;
  if (((BYTE6(v19) - 14) & 0xFB) == 0)
  {
    v10 = 0.25;
  }

  LODWORD(v11) = DWORD1(v21);
  v12 = v11 * 1.16415322e-10;
  if (v12 > v10)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  e = %g  > %g, Unrealistic value !", v12, v10);
    v8 = 1;
  }

  v13 = vcvtd_n_f64_u32(DWORD2(v21), 0x13uLL);
  if (v13 < 4800.0)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  sqrtA = %g  < %g, Unrealistic value !", v13, 4800.0);
    v8 = 1;
  }

  if (v13 > 5800.0)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  sqrtA = %g  > %g, Unrealistic value !", v13, 5800.0);
    v8 = 1;
  }

  if ((v23 - 0x800000) >> 24 == 255)
  {
    v14 = v23 * 3.57157734e-13;
    if (v14 >= -0.00000198862815)
    {
      if (v14 <= 0.0)
      {
        goto LABEL_42;
      }

      EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  OmegaDot = %e  > %e rad/s, Unrealistic value !");
    }

    else
    {
      EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  OmegaDot = %e  < %e rad/s, Unrealistic value !");
    }
  }

  else
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  OmegaDot = %d < -2^23 || >= 2^23, Out of range !");
  }

  v8 = 1;
LABEL_42:
  if (((v24 - 0x2000) >> 14) <= 2u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  IDOT = %d < -2^13 || >= 2^13, Out of range !", v24);
    v8 = 1;
  }

  if (v25 - 0x40000000 >= 0)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  af0 = %d < -2^30 || >= 2^30, Out of range !", v25);
    v8 = 1;
  }

  if ((HIDWORD(v25) - 0x100000) >> 21 != 2047)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  af1 = %d < -2^20 || >= 2^20, Out of range !", HIDWORD(v25));
    v8 = 1;
  }

  if (((v26 - 32) >> 6) <= 0x3FEu)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  af2 = %d < -2^5 || >= 2^5, Out of range !", v26);
    v8 = 1;
  }

  if (((v28 - 512) >> 10) <= 0x3Eu)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  bgdE1E5b = %d < -2^9 || >= 2^9, Out of range !", v28);
    v8 = 1;
  }

  if (((HIWORD(v28) - 512) >> 10) <= 0x3Eu)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  bgdE1E5a = %d < -2^9 || >= 2^9, Out of range !", SHIWORD(v28));
    v8 = 1;
  }

  if (v29 >= 2u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  Model_ID = %d < 0 || > 1, Out of range !", v29);
    v8 = 1;
  }

  if (BYTE1(v29) >= 2u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  E5a_Nav_DVS = %d < 0 || > 1, Out of range !", BYTE1(v29));
    v8 = 1;
  }

  if (BYTE2(v29) >= 2u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:   E5b_Nav_DVS = %d < 0 || > 1, Out of range !", BYTE2(v29));
    v8 = 1;
  }

  if (HIBYTE(v29) >= 2u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  E1B_Nav_DVS = %d < 0 || > 1, Out of range !", HIBYTE(v29));
    v8 = 1;
  }

  if (v30 >= 4u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  E5a_Sig_HS = %d < 0 || > 3, Out of range !", v30);
    v8 = 1;
  }

  if (HIBYTE(v30) >= 4u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  E5b_Sig_HS = %d < 0 || > 3, Out of range !", HIBYTE(v30));
    v8 = 1;
  }

  v15 = v31;
  if (v31 > 3u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  E1B_Sig_HS = %d < 0 || > 1, Out of range !", v31);
    if (v32 < 7u)
    {
      goto LABEL_5;
    }

LABEL_70:
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  Fit_hours = %d > 6, Out of range !");
    goto LABEL_5;
  }

  v16 = v32;
  if (v32 > 6u)
  {
    goto LABEL_70;
  }

  if (v8)
  {
    goto LABEL_5;
  }

  v17 = *(p_api + 48);
  if (*(v17 + 16) == 1 && *v17 >= 3)
  {
    v18 = 604800 * *(v17 + 32) + *(v17 + 40);
  }

  else
  {
    v18 = 0;
  }

  *a3 = v18;
  *(a3 + 4) = 6;
  *(a3 + 8) = v19;
  *(a3 + 16) = v20;
  *(a3 + 20) = v21;
  *(a3 + 36) = v22;
  *(a3 + 44) = v23;
  *(a3 + 48) = v24;
  *(a3 + 74) = v27;
  *(a3 + 64) = v25;
  *(a3 + 72) = v26;
  *(a3 + 76) = v28;
  *(a3 + 80) = v29;
  *(a3 + 84) = v30;
  *(a3 + 86) = v15;
  result = 1;
  *(a3 + 87) = v16;
LABEL_6:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t EE_Get_BDS_CNAV_IntEph(XofSvcsIf *a1, unsigned int a2, uint64_t a3)
{
  v3 = a1;
  v42 = *MEMORY[0x29EDCA608];
  if ((a1 - 64) <= 0xC0u)
  {
    EvCrt_v("EE_Get_BDS_CNAV_IntEph:  FAILED:  SV = %d, Out of range !");
LABEL_4:
    result = 0;
    goto LABEL_5;
  }

  if (a2 < 820713600)
  {
    goto LABEL_4;
  }

  v7 = a2 % 0x93A80;
  if (a2 % 0x93A80 >= 0xE)
  {
    v8 = -1356;
  }

  else
  {
    v7 = (a2 % 0x93A80) | 0x93A80;
    v8 = -1357;
  }

  result = GN_EE_Get_BDS_CNAV_Eph_El(a1, (v8 + a2 / 0x93A80), v7 - 14, &v19);
  if (!result)
  {
    goto LABEL_5;
  }

  if (g_Logging_Cfg < 5)
  {
    EvLog_d("GN_EE_Get_BDS_CNAV_Eph_El: ", v3);
  }

  else
  {
    EvLog_v("%s %2u %2u %1u %1u %6u  %4u %4u %4u %4u  %9d %8d  %6d %8d  %11D %11U %11D %11D %11D  %7d %6d  %6d %6d %8d %8d %8d %8d   %9d %8d %5d %5u  %2u %1u %1u %2u  %5d %5d %5d %5d  %1u %1u %1u %1u %1u %1u  %1d  %4d", "GN_EE_Get_BDS_CNAV_Eph_El: ", v19, BYTE1(v19), BYTE2(v19), HIBYTE(v19), v20, v21, v22, v23, v24, v25, DWORD1(v25), DWORD2(v25), HIDWORD(v25), v26, v27, v28, v29, v30, v31, SHIWORD(v31), v32, DWORD1(v32), DWORD2(v32), HIDWORD(v32), v33, HIDWORD(v33), v34, HIWORD(v34), v35, BYTE1(v35), BYTE2(v35), HIBYTE(v35), v36, SWORD1(v36), SWORD2(v36), SHIWORD(v36), v37, BYTE1(v37), BYTE2(v37), HIBYTE(v37), v38, v39, v40, v41, HIWORD(v34), v34, SHIWORD(v31), v31, v30, v28, v24, v23, v22, v21, HIBYTE(v19), BYTE2(v19), BYTE1(v19), v19);
  }

  v9 = v19 - 64;
  v10 = v9 < 0xFFFFFFC1;
  if (v9 <= 0xFFFFFFC0)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El:  FAILED:  SVid = %d, Out of range !", v19);
    if (v19 - 64 <= 0xFFFFFFC0)
    {
      EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: SVid = %d <1 or >%d, Out of range!", v19, 63);
    }
  }

  if (BYTE1(v19) >= 2u)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: SatH1 = %d >1, Out of range!", BYTE1(v19));
    v10 = 1;
  }

  if (BYTE2(v19) >= 4u)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: SV_type = %d >3, Out of range!", BYTE2(v19));
    v10 = 1;
  }

  if (HIBYTE(v19) >= 7u)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: Fit_hours = %d >6, Out of range!", HIBYTE(v19));
    v10 = 1;
  }

  if (v20 >> 7 >= 0x627)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: sSOW = %d >201599, Out of range!", v20);
    v10 = 1;
  }

  if (v21 >= 0x2000u)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: Week = %d >=8191, Out of range!", v21);
    v10 = 1;
  }

  if (v22 >= 0x83Bu)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: toe = %d >2106, Out of range!", v22);
    v10 = 1;
  }

  if (v23 >= 0x83Bu)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: toc = %d >2106, Out of range!", v23);
    v10 = 1;
  }

  if (v24 >= 0x83Bu)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: top = %d >2106, Out of range!", v24);
    v10 = 1;
  }

  if ((v25 - 0x2000000) >> 26 != 63)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: delta_A = %d <-2^25 or >=2^25, Out of range!", v25);
    v10 = 1;
  }

  if ((DWORD1(v25) - 0x1000000) >> 25 != 127)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: A_dot = %d <-2^24 or >=2^24, Out of range!", DWORD1(v25));
    v10 = 1;
  }

  if ((DWORD2(v25) - 0x2000000) >> 26 != 63)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: dN = %d <-2^25 or >=2^25, Out of range!", DWORD2(v25));
    v10 = 1;
  }

  if ((HIDWORD(v25) - 0x400000) >> 23 != 511)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: dN_dot = %d <-2^22 or >=2^22, Out of range!", HIDWORD(v25));
    v10 = 1;
  }

  if ((v26 - 0x100000000) <= 0xFFFFFFFDFFFFFFFFLL)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: M0 = %d <-2^32 or >=2^32, Out of range!", v26);
    v10 = 1;
  }

  if (*(&v26 + 1) >> 33)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: e = %d >=2^33, Out of range!");
  }

  else
  {
    if (vcvtd_n_f64_u64(*(&v26 + 1), 0x22uLL) <= dbl_2990504E0[v19 - 6 < 0x35])
    {
      goto LABEL_47;
    }

    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: e = %g > %g, Unrealistic value!");
  }

  v10 = 1;
LABEL_47:
  if ((v27 - 0x100000000) <= 0xFFFFFFFDFFFFFFFFLL)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: w = %d <-2^32 or >=2^32, Out of range!", v27);
    v10 = 1;
  }

  if ((*(&v27 + 1) - 0x100000000) <= 0xFFFFFFFDFFFFFFFFLL)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: Omega0 = %d <-2^32 or >=2^32, Out of range!", DWORD2(v27));
    v10 = 1;
  }

  if ((v28 - 0x100000000) <= 0xFFFFFFFDFFFFFFFFLL)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: i0 = %d <-2^32 or >=2^32, Out of range!", v28);
    v10 = 1;
  }

  if ((v29 - 0x40000) <= 0xFFF7FFFF)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: Omega_dot = %d <-2^18 or >=2^18, Out of range!");
LABEL_59:
    v10 = 1;
    goto LABEL_60;
  }

  v11 = v29 * 1.78578867e-13;
  if (v11 < -0.00000198862815)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: Omega_dot = %e < %e, Unrealistic value!");
    goto LABEL_59;
  }

  if (v11 > 0.000000314159265)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: Omega_dot = %e > %e, Unrealistic value!");
    goto LABEL_59;
  }

LABEL_60:
  if (((v30 - 0x4000) & 0x8000) == 0)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: i_dot = %d <-2^14 or >=2^14, Out of range!", v30);
    v10 = 1;
  }

  if ((v32 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: Crs = %d <-2^23 or >=2^23, Out of range!", v32);
    v10 = 1;
  }

  if ((DWORD1(v32) - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: Crc = %d <-2^23 or >=2^23, Out of range!", DWORD1(v32));
    v10 = 1;
  }

  if ((DWORD2(v32) - 0x100000) >> 21 != 2047)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: Cus = %d <-2^20 or >=2^20, Out of range!", DWORD2(v32));
    v10 = 1;
  }

  if ((HIDWORD(v32) - 0x100000) >> 21 != 2047)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: Cuc = %d <-2^20 or >=2^20, Out of range!", HIDWORD(v32));
    v10 = 1;
  }

  if ((v33 - 0x1000000) >> 25 != 127)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: af0 = %d <-2^24 or >=2^24, Out of range!", v33);
    v10 = 1;
  }

  if ((HIDWORD(v33) - 0x200000) >> 22 != 1023)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: af1 = %d <-2^21 or >=2^21, Out of range!", HIDWORD(v33));
    v10 = 1;
  }

  if (((v34 - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: af2 = %d <-2^10 or >=2^10, Out of range!", v34);
    v10 = 1;
  }

  if (v35 >= 0x20u)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: SISA_Ocb = %d >31, Out of range!", v35);
    v10 = 1;
  }

  if (BYTE1(v35) >= 8u)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: SISA_Oc1 = %d >7, Out of range!", BYTE1(v35));
    v10 = 1;
  }

  if (BYTE2(v35) >= 8u)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: SISA_Oc2 = %d >7, Out of range!", BYTE2(v35));
    v10 = 1;
  }

  if (HIBYTE(v35) >= 0x20u)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: SISA_Oce = %d >31, Out of range!", HIBYTE(v35));
    v10 = 1;
  }

  if (((v36 - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: TGD_B1C_p = %d <-2^10 or >=2^10, Out of range!", v36);
    v10 = 1;
  }

  if (((WORD1(v36) - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: TGD_B2a_p = %d <-2^10 or >=2^10, Out of range!", SWORD1(v36));
    v10 = 1;
  }

  if (((WORD2(v36) - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: ISC_B1C_d = %d <-2^10 or >=2^10, Out of range!", SWORD2(v36));
    v10 = 1;
  }

  if (((HIWORD(v36) - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: ISC_B2a_d = %d <-2^10 or >=2^10, Out of range!", SHIWORD(v36));
    v10 = 1;
  }

  if (v37 >= 2u)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: dif_B1C = %d >1, Out of range!", v37);
    v10 = 1;
  }

  if (BYTE1(v37) >= 2u)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: sif_B1C = %d >1, Out of range!", BYTE1(v37));
    v10 = 1;
  }

  if (BYTE2(v37) >= 2u)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: aif_B1C = %d >1, Out of range!", BYTE2(v37));
    v10 = 1;
  }

  if (HIBYTE(v37) >= 2u)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: dif_B2a = %d >1, Out of range!", HIBYTE(v37));
    v10 = 1;
  }

  if (v38 >= 2u)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: sif_B2a = %d >1, Out of range!", v38);
    v10 = 1;
  }

  v12 = v39;
  if (v39 > 1u)
  {
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: aif_B2a = %d >1, Out of range!", v39);
    if ((v40 - 16) > 0xDFu)
    {
      goto LABEL_4;
    }

LABEL_106:
    EvCrt_v("GN_EE_Get_BDS_CNAV_Eph_El: FAILED: URAI = %d <-16 or >15, Out of range!");
    goto LABEL_4;
  }

  v13 = v40;
  if ((v40 - 16) < 0xE0u)
  {
    goto LABEL_106;
  }

  if (v10)
  {
    goto LABEL_4;
  }

  v14 = *(p_api + 48);
  if (*(v14 + 16) == 1 && *v14 >= 3)
  {
    v15 = *(v14 + 40) + 604800 * *(v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  *a3 = v15;
  *(a3 + 4) = 6;
  v16 = v20;
  *(a3 + 8) = v19;
  *(a3 + 12) = v16;
  *(a3 + 16) = v21;
  v17 = v23;
  *(a3 + 20) = v22;
  *(a3 + 24) = v17;
  *(a3 + 28) = v24;
  v18 = v26;
  *(a3 + 32) = v25;
  *(a3 + 48) = v18;
  *(a3 + 64) = v27;
  *(a3 + 80) = v28;
  *(a3 + 88) = v29;
  *(a3 + 92) = v30;
  *(a3 + 94) = v31;
  *(a3 + 100) = v32;
  *(a3 + 116) = v33;
  *(a3 + 124) = v34;
  *(a3 + 128) = v35;
  *(a3 + 132) = v36;
  *(a3 + 140) = v37;
  *(a3 + 144) = v38;
  *(a3 + 145) = v12;
  *(a3 + 146) = v13;
  result = 1;
  *(a3 + 147) = v41;
LABEL_5:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t EE_Get_NVIC_IntEph(XofSvcsIf *a1, int a2, uint64_t a3)
{
  v3 = a1;
  v26 = *MEMORY[0x29EDCA608];
  if ((a1 - 15) <= 0xF1u)
  {
    EvCrt_v("EE_Get_NVIC_IntEph:  FAILED:  SV = %d, Out of range !");
    goto LABEL_5;
  }

  if (a2 < 619920000)
  {
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  result = GN_EE_Get_NVIC_Eph_El(a1, (a2 / 0x93A80u - 1024), a2 % 0x93A80u, &v16);
  if (!result)
  {
    goto LABEL_6;
  }

  if (g_Logging_Cfg < 5)
  {
    EvLog_d("GN_EE_Get_NVIC_Eph_El: ", v3);
  }

  else
  {
    EvLog_v("%s %2u %1u %1u %1u %3u %3d  %4u %5d %5d %8d %6d %4d  %1d  %6d  %5d %10u %10u %11d %11d %11d %11d %6d %8d  %6d %6d %6d %6d %6d %6d", "GN_EE_Get_NVIC_Eph_El:  ", v16, BYTE1(v16), BYTE2(v16), HIBYTE(v16), v17, SBYTE1(v17), WORD1(v17), WORD2(v17), HIWORD(v17), v18, SWORD2(v18), SBYTE6(v18), HIBYTE(v18), v19, SHIWORD(v19), v20, DWORD1(v20), DWORD2(v20), HIDWORD(v20), v21, HIDWORD(v21), v22, v23, v24, SWORD1(v24), SWORD2(v24), SHIWORD(v24), v25, SHIWORD(v25));
  }

  v7 = v16 - 15;
  v8 = v7 < 0xFFFFFFF2;
  if (v7 <= 0xFFFFFFF1)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El:  FAILED:  SVid = %d, Out of range !", v16);
  }

  if (BYTE1(v16) >= 2u)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El:  FAILED:  Alert_Flag = %d > 1, Out of range !", BYTE1(v16));
    v8 = 1;
  }

  if (BYTE2(v16) >= 2u)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El:  FAILED:  L5_Health_Flag = %d > 1, Out of range !", BYTE2(v16));
    v8 = 1;
  }

  if (HIBYTE(v16) >= 2u)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El:  FAILED:  S_Health_Flag = %d > 1, Out of range !", HIBYTE(v16));
    v8 = 1;
  }

  if ((BYTE1(v17) - 16) <= 0xE0u)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El:  FAILED:  URAI = %d > 1, Out of range !", SBYTE1(v17));
    v8 = 1;
  }

  if (WORD1(v17) >= 0x1000u)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El:  FAILED:  WeekNo = %d > 4095 Out of range !", WORD1(v17));
    v8 = 1;
  }

  if (WORD2(v17) >= 0x93A8u)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El:  FAILED:  toc = %d > 37799, Out of range !", WORD2(v17));
    v8 = 1;
  }

  if (HIWORD(v17) >= 0x93A8u)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El:  FAILED:  toe = %d > 37799, Out of range !", HIWORD(v17));
    v8 = 1;
  }

  if ((v18 - 0x2000000) >> 26 != 63)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El:  FAILED:  af0 = %d < -2^25 || >= 2^25, Out of range !", v18);
    v8 = 1;
  }

  if (HIBYTE(v18) >= 7u)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El:  FAILED:  Fit_hours = %d > 6, Out of range !", HIBYTE(v18));
    v8 = 1;
  }

  if (((HIWORD(v19) - 0x2000) >> 14) <= 2u)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El:  FAILED:  i_dot = %d < -2^13 || >= 2^13, Out of range !", SHIWORD(v19));
    v8 = 1;
  }

  if ((v22 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El:  FAILED:  delta_N = %d < -2^23 || >= 2^23, Out of range !", v22);
    v8 = 1;
  }

  if ((v23 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El:  FAILED:  Omega_dot = %d < -2^23 || >= 2^23, Out of range !", v23);
    v8 = 1;
  }

  v9 = vcvtd_n_f64_u32(v20, 0x13uLL);
  if (v9 >= *"")
  {
    if (v9 <= 6700.0)
    {
      goto LABEL_42;
    }

    EvCrt_v("GN_EE_Get_NVIC_Eph_El: FAILED: sqrt_A = %g > %g, Unrealistic value!");
  }

  else
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El: FAILED: sqrt_A = %g < %g, Unrealistic value!");
  }

  v8 = 1;
LABEL_42:
  LODWORD(v9) = DWORD1(v20);
  v10 = *&v9 * 1.16415322e-10;
  if (v10 > 0.03)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El: FAILED: e = %g > %g, Unrealistic value!", v10, 0.03);
    v8 = 1;
  }

  v11 = v23;
  v12 = v23 * 3.57157734e-13;
  if (v12 < -0.00000198862815)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El: FAILED: Omega_dot = %e < %e, Unrealistic value!");
    goto LABEL_5;
  }

  if (v12 > 0.000000314159265)
  {
    EvCrt_v("GN_EE_Get_NVIC_Eph_El: FAILED: Omega_dot = %e > %e, Unrealistic value!");
    goto LABEL_5;
  }

  if (v8)
  {
    goto LABEL_5;
  }

  v13 = *(p_api + 48);
  if (*(v13 + 16) == 1 && *v13 >= 3)
  {
    v14 = *(v13 + 40) + 604800 * *(v13 + 32);
  }

  else
  {
    v14 = 0;
  }

  *a3 = v14;
  *(a3 + 4) = 6;
  *(a3 + 8) = v16;
  v15 = v18;
  *(a3 + 12) = v17;
  *(a3 + 20) = v15;
  *(a3 + 28) = v19;
  *(a3 + 32) = v20;
  *(a3 + 48) = v21;
  *(a3 + 56) = v22;
  *(a3 + 60) = v11;
  *(a3 + 64) = v24;
  result = 1;
  *(a3 + 72) = v25;
LABEL_6:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_Initialize(void)
{
  v2 = *MEMORY[0x29EDCA608];
  if (g_GnsInit)
  {
    result = 1;
  }

  else
  {
    gnssDataMgt_Init();
    result = AgpsSpawnFsm(&g_AgpsFsmTable, 6);
    g_GnsInit = result;
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NK_Crude_Apx_Pos_Core(uint64_t a1)
{
  v4 = MEMORY[0x2A1C7C4A8](a1);
  v523 = v5;
  v7 = v6;
  v540 = v8;
  v559 = v9;
  v11 = v10;
  v525 = v12;
  v576 = v13;
  v530 = v4;
  v745 = *MEMORY[0x29EDCA608];
  v582 = 0uLL;
  *&v583 = 0.0;
  __x = 0uLL;
  v592 = 0.0;
  v590 = 0;
  v588 = 0u;
  v589 = 0u;
  v529 = 0u;
  v14 = &unk_2A13EC000;
  if (g_Logging_Cfg >= 4)
  {
    v529 = vdupq_n_s32((*&g_MacClockTicksToMsRelation * mach_continuous_time()));
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = &(*v530)[2];
  do
  {
    if (v11[v15] == 3)
    {
      ++v17;
    }

    if (*(v18 - 2) && *(v18 - 1) && *v18)
    {
      ++v16;
    }

    ++v15;
    v18 += 3;
  }

  while (v15 != 128);
  v522 = v16;
  v19 = Centroid_SV_Pos(v530, 0x80u, v596);
  if (v19)
  {
    *&v596[24] = 0;
    v597 = 0uLL;
    v593 = *v596;
    v594 = *&v596[16];
    v595 = 0uLL;
  }

  else
  {
    v594 = 0u;
    v595 = 0u;
    v593 = 0u;
  }

  v526 = v529;
  if (g_Logging_Cfg >= 5)
  {
    v20 = mach_continuous_time();
    v21 = v529;
    v21.i32[1] = (*&g_MacClockTicksToMsRelation * v20);
    v526 = v21;
  }

  v22 = 0uLL;
  xmmword_2A13EE5B8 = 0u;
  *&dword_2A13EE5C8 = 0u;
  *(&xmmword_2A13EE590 + 8) = 0u;
  *&byte_2A13EE5A8 = 0u;
  xmmword_2A13EE578 = 0u;
  *&qword_2A13EE588 = 0u;
  if (v17 > 2)
  {
    v23 = v19;
  }

  else
  {
    v23 = 0;
  }

  gDebug = 0uLL;
  *algn_2A13EE568 = 0uLL;
  v524 = v7;
  if (v23 != 1)
  {
    if (!v19)
    {
      v67 = 0;
      goto LABEL_222;
    }

    goto LABEL_139;
  }

  byte_2A13EE5B6 = 1;
  *v585 = *v596;
  v586 = *&v596[16];
  v587 = v597;
  bzero(v606, 0x1C00uLL);
  v25 = 0;
  v26 = 0;
  v684 = 0;
  memset(v680, 0, sizeof(v680));
  memset(v681, 0, 345);
  v686 = 0;
  v683 = 0;
  v685 = 0;
  v697 = 0u;
  v698 = 0u;
  v699 = 0u;
  v700 = 0u;
  v701 = 0u;
  v702 = 0u;
  v703 = 0u;
  v704 = 0u;
  v705 = 0u;
  v706 = 0u;
  v707 = 0u;
  v708 = 0u;
  v709 = 0u;
  v710 = 0u;
  v711 = 0u;
  v712 = 0u;
  v713 = 0u;
  v714 = 0u;
  v715 = 0u;
  v716 = 0u;
  v717 = 0u;
  v718 = 0u;
  v719 = 0u;
  v720 = 0u;
  v721 = 0u;
  v722 = 0u;
  v723 = 0u;
  v724 = 0u;
  v725 = 0u;
  v726 = 0u;
  v727 = 0u;
  v728 = 0u;
  v689 = 1;
  v691 = &v675;
  v690 = &v737;
  v692 = v736;
  v693 = &v665;
  v694 = &v650;
  v688 = 0xFFFFFFFF00000000;
  v695 = 0u;
  v696 = 0u;
  v687 = 1;
  v682 = 0;
  dword_2A13EE5A0 = 0;
  v737 = 0u;
  v738 = 0u;
  v739 = 0u;
  v740 = 0u;
  v741 = 0u;
  v742 = 0u;
  v743 = 0u;
  v744 = 0u;
  *&v732 = 0;
  v731 = 0u;
  v730 = 0u;
  v27 = &(*v530)[2];
  v28 = -1;
  v29 = 592;
  memset(v729, 0, sizeof(v729));
  do
  {
    v736[v25] = 1.0;
    if (v11[v25] == 3 && *(v27 - 2) && *(v27 - 1) && *v27)
    {
      v737.i8[v25] = 1;
      *(v680 + v29) = 1;
      ++v26;
      *(v576 + v25) = 1;
    }

    else if (v28 == -1)
    {
      HIDWORD(v688) = v25;
      v28 = v25;
    }

    ++v25;
    v29 += 4;
    v27 += 3;
  }

  while (v25 != 128);
  *(&v685 + 3) = -1;
  LODWORD(v685) = -16645888;
  v30 = 3;
  HIBYTE(v685) = 3;
  if (v26)
  {
    BYTE3(v685) = 3;
    v30 = 4;
    HIBYTE(v685) = 4;
  }

  LODWORD(v686) = 2;
  if (v26 < 3)
  {
LABEL_102:
    v82 = 0;
    goto LABEL_118;
  }

  v31 = 0;
  v32 = 0.0;
  while (2)
  {
    v33 = *v596;
    v34 = *&v596[8];
    v598[0] = *v596;
    v598[1] = *&v596[8];
    v35 = *&v596[16];
    v598[2] = *&v596[16];
    ECEF2Geo(v598, &WGS84_Datum, &v643);
    v36 = v643.f64[1];
    v37 = -6.28318531;
    if (v643.f64[1] >= 3.14159265 || (v37 = 6.28318531, v643.f64[1] < -3.14159265))
    {
      v36 = v643.f64[1] + v37;
      v643.f64[1] = v643.f64[1] + v37;
    }

    v38 = __sincos_stret(v643.f64[0]);
    v39 = __sincos_stret(v36);
    v40 = 0;
    *v729 = -(v38.__sinval * v39.__cosval);
    *(v729 + 1) = -(v38.__sinval * v39.__sinval);
    *&v729[1] = v38.__cosval;
    *(&v729[1] + 1) = -v39.__sinval;
    v730 = *&v39.__cosval;
    *&v731 = -(v38.__cosval * v39.__cosval);
    *(&v731 + 1) = -(v38.__cosval * v39.__sinval);
    *&v732 = -v38.__sinval;
    v42 = &(*v530)[2];
    v41 = &v606[2];
    do
    {
      if (v690->i8[v40] != 1)
      {
        goto LABEL_50;
      }

      v43 = *(v42 - 1);
      v44.i64[0] = v43;
      v44.i64[1] = SHIDWORD(v43);
      v637 = vcvtq_f64_s64(v44);
      v638 = *v42;
      v639.f64[0] = v33;
      v639.f64[1] = v34;
      v640 = v35;
      v45 = Comp_SVrange_Sag_Corr(&v641, v584, &v639, &v637);
      *(v41 - 1) = v641;
      *v41 = v642;
      v46 = *(v576 + v40);
      v47 = 0.0;
      if (v46 > 2)
      {
        if (v46 != 5)
        {
          if (v46 == 4)
          {
            LOBYTE(v48) = BYTE5(v685);
            if (SBYTE5(v685) < 1)
            {
              goto LABEL_49;
            }

LABEL_48:
            v47 = *&v596[8 * v48];
            goto LABEL_49;
          }

          if (v46 != 3)
          {
            goto LABEL_49;
          }
        }

LABEL_46:
        v48 = SBYTE3(v685);
        goto LABEL_47;
      }

      if (v46 == 1)
      {
        goto LABEL_46;
      }

      if (v46 != 2)
      {
        goto LABEL_49;
      }

      v48 = SBYTE4(v685);
LABEL_47:
      if (v48 > 0)
      {
        goto LABEL_48;
      }

LABEL_49:
      v691[v40] = v540[v40] - v45 - v47;
LABEL_50:
      ++v40;
      v41 += 7;
      v42 += 3;
    }

    while (v40 != 128);
    if (v26 > 4)
    {
      HIDWORD(v688) = -1;
    }

    else
    {
      v49 = SHIDWORD(v688);
      v690->i8[SHIDWORD(v688)] = 1;
      v50 = v691;
      LODWORD(v641.f64[0]) = 0;
      LODWORD(v639.f64[0]) = 0;
      LODWORD(v637.f64[0]) = 0;
      v584[0] = 0;
      v598[0] = v33;
      v598[1] = v34;
      v598[2] = v35;
      ECEF2Geo(v598, &WGS84_Datum, &v643);
      v52 = v643.f64[1];
      v53 = -6.28318531;
      if (v643.f64[1] >= 3.14159265 || (v53 = 6.28318531, v643.f64[1] < -3.14159265))
      {
        v52 = v643.f64[1] + v53;
        v643.f64[1] = v643.f64[1] + v53;
      }

      v54 = &v606[7 * v49];
      LODWORD(v51) = vcvtd_n_s64_f64(v643.f64[0], 0xFuLL);
      v55 = Taylor_sin_cos(v51, &v641, &v639);
      LODWORD(v55) = vcvtd_n_s64_f64(v52, 0xFuLL);
      Taylor_sin_cos(v55, &v637, v584);
      v56 = vcvtd_n_f64_s32(LODWORD(v637.f64[0]) * LODWORD(v639.f64[0]), 0x1EuLL);
      v57 = vcvtd_n_f64_s32(LODWORD(v641.f64[0]), 0xFuLL);
      *v54 = vcvtd_n_f64_s32(LODWORD(v639.f64[0]) * v584[0], 0x1EuLL);
      v54[1] = v56;
      v54[2] = v57;
      v50[v49] = v644;
      if (v26 == 4)
      {
        v692[SHIDWORD(v688)] = 1000000.0;
      }
    }

    v58 = NK_Least_Squares_Core(v606, v729, v30, 0, 0, v645, &v652, &v605, v680);
    v59 = 0;
    v60 = 0.0;
    do
    {
      v61 = *(&v685 + v59);
      if ((v61 & 0x8000000000000000) == 0)
      {
        v62 = *(v680 + v61);
        *&v596[8 * v61] = *&v596[8 * v61] + v62;
        v60 = v60 + v62 * v62;
      }

      ++v59;
    }

    while (v59 != 7);
    v63 = v60 - v32 <= 2500.0 || v31 == 0;
    v64 = v63;
    v65 = v64 & v58;
    ++byte_2A13EE5A8;
    if (v65 == 1)
    {
      v66 = v31 + 1;
      if (v31 > 8)
      {
        goto LABEL_78;
      }

      ++v31;
      v32 = v60;
      if (v60 <= 10000.0)
      {
        goto LABEL_78;
      }

      continue;
    }

    break;
  }

  v66 = v31;
LABEL_78:
  if (v66 > 9)
  {
    v68 = v65;
  }

  else
  {
    v68 = 0;
  }

  if (v60 > 90000.0)
  {
    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  v70 = v69 ^ 1;
  if ((v69 & 1) != 0 || v65 != 1)
  {
    if (v69)
    {
      v71 = 1;
    }

    else
    {
      v71 = 2;
    }

    dword_2A13EE5A0 = v71;
  }

  v72 = v65 & v70;
  if (SHIDWORD(v688) >= 1)
  {
    v737.i8[HIDWORD(v688)] = 0;
  }

  if (!v72)
  {
    goto LABEL_102;
  }

  v73 = 0;
  v74 = v685;
  v75 = &v596[8 * v685];
  while (1)
  {
    if (v737.i8[v73] == 1)
    {
      v76 = v530[v73];
      v77.i64[0] = *v76;
      v77.i64[1] = HIDWORD(*v76);
      v643 = vcvtq_f64_s64(v77);
      v644 = v76[2];
      v78 = 2;
      do
      {
        v598[v78] = v643.f64[v78] - v75->f64[v78];
        v79 = v78-- + 1;
      }

      while (v79 > 1);
      v80 = 0;
      v81 = 0.0;
      do
      {
        v81 = v81 + v75->f64[v80] * v598[v80];
        ++v80;
      }

      while (v80 != 3);
      if (v81 < 0.0)
      {
        v82 = 0;
        v85 = &unk_2A13EE000;
        v86 = 3;
        goto LABEL_117;
      }
    }

    if (v73 >= 0x7F)
    {
      break;
    }

    ++v73;
  }

  v83 = 0;
  v84 = 0.0;
  do
  {
    if (v737.i8[v83] == 1)
    {
      v84 = v84 + *&v665.i64[v83] * *&v665.i64[v83];
    }

    ++v83;
  }

  while (v83 != 128);
  if (v84 <= 225000000.0)
  {
    v643 = *v75;
    v87 = 8 * v74 + 16;
    v644 = *&v596[v87];
    ECEF2Geo(&v643, &WGS84_Datum, &__x);
    v88 = v592;
    dword_2A13EE5D4 = v592;
    v89 = __sincos_stret(*__x.i64);
    v90 = __sincos_stret(*&__x.i64[1]);
    v598[0] = -(v89.__sinval * v90.__cosval);
    v598[1] = -(v89.__sinval * v90.__sinval);
    v598[2] = v89.__cosval;
    v599 = -v90.__sinval;
    cosval = v90.__cosval;
    v601 = 0;
    v602 = -(v89.__cosval * v90.__cosval);
    v603 = -(v89.__cosval * v90.__sinval);
    v604 = -v89.__sinval;
    Comp_NEDvar_UDU(v681, HIBYTE(v685), v74, v598, &v680[3] + v74 + 1);
    v91 = *(&v680[3] + v87 + 8);
    if (v91 < 100000000.0)
    {
      v92 = U4sqrt(v91);
      if (-500 - 1000 * v92 < v88 && 1000 * v92 + 18000 > v88)
      {
        v82 = 1;
        goto LABEL_118;
      }
    }

    v82 = 0;
    v85 = &unk_2A13EE000;
    v86 = 5;
  }

  else
  {
    v82 = 0;
    v85 = &unk_2A13EE000;
    v86 = 4;
  }

LABEL_117:
  v85[360] = v86;
LABEL_118:
  if (g_Logging_Cfg >= 5)
  {
    v94 = mach_continuous_time();
    v95 = v526;
    v95.i32[2] = (*&g_MacClockTicksToMsRelation * v94);
    v526 = v95;
  }

  if (v82)
  {
    v96 = CompVelDoLs(v530, v525, v7, v596, &v588, v24);
  }

  else
  {
    v96 = 0;
  }

  if (g_Logging_Cfg >= 5)
  {
    v97 = mach_continuous_time();
    v98 = v526;
    v98.i32[3] = (*&g_MacClockTicksToMsRelation * v97);
    v526 = v98;
  }

  if (v96)
  {
    v99 = __sincos_stret(*__x.i64);
    v100 = __sincos_stret(*&__x.i64[1]);
    v101 = 0;
    v606[0] = -(v99.__sinval * v100.__cosval);
    v606[1] = -(v99.__sinval * v100.__sinval);
    v102 = &v606[2];
    v606[2] = v99.__cosval;
    v606[3] = -v100.__sinval;
    v607 = *&v100.__cosval;
    *&v608 = -(v99.__cosval * v100.__cosval);
    *(&v608 + 1) = -(v99.__cosval * v100.__sinval);
    *&v609 = -v99.__sinval;
    v103 = v588;
    v104 = *&v589;
    do
    {
      v105 = *(v102 - 1) * *(&v103 + 1) + *(v102 - 2) * *&v103;
      v106 = *v102;
      v102 += 3;
      *(v680 + v101) = v105 + v106 * v104;
      v101 += 8;
    }

    while (v101 != 24);
    v107 = *(v680 + 1) * *(v680 + 1) + *v680 * *v680;
    v108 = fabs(*&v680[1]);
    v109 = v108 < 10.0 && v107 < 4556.25;
    HIDWORD(xmmword_2A13EE5B8) = sqrt(v107);
    dword_2A13EE5C8 = v108;
    if (!v109)
    {
      dword_2A13EE5A0 = 6;
    }
  }

  else
  {
    v109 = 0;
  }

  if (g_Logging_Cfg >= 5)
  {
    v110 = mach_continuous_time();
    v111 = v529;
    v111.i32[0] = (*&g_MacClockTicksToMsRelation * v110);
    v529 = v111;
  }

  if (v109)
  {
    *v523 = __x;
    v112 = 1;
    byte_2A13EE5B5 = 1;
    goto LABEL_627;
  }

  *v596 = *v585;
  *&v596[16] = v586;
  v597 = v587;
  v22 = 0uLL;
  v588 = 0u;
  v589 = 0u;
  v590 = 0;
  v592 = 0.0;
  __x = 0uLL;
  dword_2A13EE5A4 = dword_2A13EE5A0;
LABEL_139:
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v661 = 0;
  v660 = v22;
  v659 = v22;
  v658 = v22;
  v657 = v22;
  v656 = v22;
  v655 = v22;
  v654 = v22;
  v663 = &v650;
  v664 = v645;
  v116 = &(*v525)[2];
  v662 = -1;
  v117 = &(*v530)[2];
  v653 = v22;
  v652 = v22;
  while (2)
  {
    v118 = *v117;
    if (*(v117 - 1))
    {
      v119 = *(v117 - 1);
LABEL_144:
      v120 = *(v117 - 2);
      v117 += 3;
      v121 = (v680 + v113 * 8);
      *v121 = v120;
      v121[1] = v119;
      v122 = v118;
      v121[2] = v118;
      v123 = *(v116 - 2);
      v736[v115] = v7[v115];
      v124 = v123;
      v125 = &v675.i64[v113];
      v126 = v119 * v119 + v120 * v120;
      v127 = *(v116 - 1);
      v128 = v126 + v122 * v122;
      v129 = *v116;
      *&v665.i64[v115++] = v128;
      *v125 = v124;
      v125[1] = v127;
      v125[2] = v129;
      v114 += 8;
      v113 += 3;
      v116 += 3;
      if (v115 == 128)
      {
        memset_pattern16(v645, &unk_299054450, 0x400uLL);
LABEL_146:
        v573 = 0;
        goto LABEL_147;
      }

      continue;
    }

    break;
  }

  v119 = 0.0;
  if (v118)
  {
    goto LABEL_144;
  }

  v573 = v115 == 0;
  if (!v115)
  {
    v662 = 0;
    goto LABEL_597;
  }

  memset_pattern16(v645, &unk_299054450, v114);
  if (v115 >= 0x80)
  {
    goto LABEL_146;
  }

  v662 = v115;
  if (v115 == 5)
  {
    v573 = 0;
    v649 = 0x3FF9000000000000;
    LODWORD(v115) = 5;
    goto LABEL_147;
  }

  if (v115 == 4)
  {
    v573 = 0;
    v648 = 0x3F647AE147AE147CLL;
    LODWORD(v115) = 4;
    goto LABEL_147;
  }

  if (v115 != 3)
  {
    if (v115 > 7)
    {
      v573 = 0;
      v495 = 0x4039000000000000;
      goto LABEL_598;
    }

LABEL_597:
    v495 = 0x4019000000000000;
LABEL_598:
    v645[v115] = v495;
    goto LABEL_147;
  }

  v573 = 0;
  v647 = 0x3F647AE147AE147CLL;
  LODWORD(v115) = 3;
LABEL_147:
  v729[0] = *v596;
  *&v729[1] = *&v596[16];
  WGS84_ECEF2Geo(v729, __x.i64);
  v130 = 0;
  *&v596[8] = __x;
  *v596 = 0x415854A640000000;
  *&v596[24] = 0;
  do
  {
    v131 = *v596;
    v132 = __sincos_stret(*&v596[8]);
    v133 = __sincos_stret(*&v596[16]);
    *v737.i64 = v132.__cosval * v133.__cosval;
    *&v737.i64[1] = v132.__cosval * v133.__sinval;
    v738.i64[0] = *&v132.__sinval;
    *&v738.i64[1] = -(v132.__sinval * v133.__cosval);
    *v739.i64 = -(v132.__sinval * v133.__sinval);
    v739.i64[1] = *&v132.__cosval;
    *v740.i64 = -(v132.__cosval * v133.__sinval);
    *&v740.i64[1] = v132.__cosval * v133.__cosval;
    v741.i64[0] = 0;
    if (!v573)
    {
      v134 = 0;
      v135 = -v131;
      v136 = v680;
      v137 = &v675;
      v138 = *&v596[24];
      do
      {
        v139 = 0;
        v140 = 0.0;
        v141 = &v738.i64[1];
        v142 = 0.0;
        v143 = 0.0;
        v144 = 0.0;
        v145 = 0.0;
        v146 = 0.0;
        v147 = 0.0;
        do
        {
          v148 = *(v141 - 3);
          v149 = *&v137->i64[v139];
          v147 = v147 + v148 * v149;
          v145 = v145 + *v141 * v149;
          v150 = v141[3];
          v143 = v143 + v150 * v149;
          v151 = *(v136 + v139);
          v146 = v146 + v148 * v151;
          v144 = v144 + *v141 * v151;
          v142 = v142 + v150 * v151;
          v140 = v140 + v151 * v149;
          ++v139;
          ++v141;
        }

        while (v139 != 3);
        v152 = *&v665.i64[v134] + v131 * v131 + v131 * -2.0 * v146;
        v153 = sqrt(v152);
        v154 = v152 * v153;
        v155 = 1.0 / v153;
        v156 = -(v140 - v147 * v131);
        v157 = v156 / v154;
        v158 = -((v131 - v146) * v157 + -v147 * v155);
        v159 = &v606[3 * v134];
        v160 = -(v157 * v131);
        *v159 = v158;
        v159[1] = -(v144 * v160 + v155 * v135 * v145);
        v159[2] = -(v142 * v160 + v155 * v135 * v143);
        v650.f64[v134] = v736[v134] - (v138 - v156 * v155);
        ++v134;
        v136 = (v136 + 24);
        v137 = (v137 + 24);
      }

      while (v134 != v115);
    }

    v161 = v662;
    if ((v662 & 0x80000000) == 0)
    {
      v162 = &v606[3 * v662];
      v162[1] = 0.0;
      v162[2] = 0.0;
      *v162 = -1.0;
      v650.f64[v161] = -(v131 + sqrt((v132.__cosval * v132.__cosval + v132.__sinval * v132.__sinval * 0.986656055) / (v132.__cosval * v132.__cosval + v132.__sinval * v132.__sinval * 0.99330562)) * -6378137.0);
    }

    v163 = CAP_LSQ4_Core(v606, v115, &v652);
    v164 = 0;
    ++byte_2A13EE5A9;
    v165 = 0.0;
    do
    {
      v166 = *&v652.i64[v164];
      v167 = *&v596[8 * v164] + v166;
      *&v596[8 * v164] = v167;
      if ((v164 - 1) > 1)
      {
        v165 = v165 + v166 * v166;
      }

      else
      {
        if (v167 > 3.14159265)
        {
          do
          {
            v167 = v167 + -6.28318531;
          }

          while (v167 > 3.14159265);
          *&v596[8 * v164] = v167;
        }

        if (v167 < -3.14159265)
        {
          do
          {
            v167 = v167 + 6.28318531;
          }

          while (v167 < -3.14159265);
          *&v596[8 * v164] = v167;
        }

        v165 = v165 + v166 * v166 * 1.0e10;
      }

      ++v164;
    }

    while (v164 != 4);
    if (v165 > 40000.0)
    {
      v168 = v163;
    }

    else
    {
      v168 = 0;
    }

    v169 = v168 != 1 || v130++ >= 0xE;
  }

  while (!v169);
  if (v163)
  {
    v170 = 0.0;
    v14 = &unk_2A13EC000;
    if (!v573)
    {
      v171 = &v650;
      v172 = v115;
      do
      {
        v173 = v171->f64[0];
        v171 = (v171 + 8);
        v170 = v170 + v173 * v173;
        --v172;
      }

      while (v172);
    }

    if (v170 / v115 > 10000.0)
    {
      v174 = 4;
      goto LABEL_181;
    }

    v175 = 1;
  }

  else
  {
    v174 = 2;
    v14 = &unk_2A13EC000;
LABEL_181:
    v175 = 0;
    dword_2A13EE5A0 = v174;
  }

  __x = *&v596[8];
  v592 = 0.0;
  Geo2ECEF(&__x, &WGS84_Datum, v729);
  *v596 = v729[0];
  *&v596[16] = *&v729[1];
  if (v115 && v175)
  {
    v176 = 0;
    v177 = v680;
    while (1)
    {
      v178 = 2;
      do
      {
        *&v737.i64[v178] = *(v177 + v178) - *&v596[8 * v178];
        v179 = v178-- + 1;
      }

      while (v179 > 1);
      v180 = 0;
      v181 = 0.0;
      do
      {
        v181 = v181 + *&v596[v180 * 8] * *&v737.i64[v180];
        ++v180;
      }

      while (v180 != 3);
      v182 = 0.0;
      v183 = &v596[16];
      for (i = 4; i > 1; --i)
      {
        v185 = *v183--;
        v182 = v182 + v185 * v185;
      }

      v186 = v181 / sqrt(v182);
      if (v186 < 0.0)
      {
        v187 = 0.0;
        v188 = 2;
        do
        {
          v187 = v187 + *&v737.i64[v188] * *&v737.i64[v188];
          v189 = v188-- + 1;
        }

        while (v189 > 1);
        if (v186 / sqrt(v187) < -0.087155743)
        {
          break;
        }
      }

      ++v176;
      v177 = (v177 + 24);
      if (v176 == v115)
      {
        goto LABEL_205;
      }
    }

    dword_2A13EE5A0 = 3;
LABEL_221:
    v67 = 0;
    __x = 0uLL;
    v1 = 0.0;
    v2 = 0.0;
    v3 = 0.0;
    v592 = 0.0;
  }

  else
  {
    if (!v175)
    {
      goto LABEL_221;
    }

LABEL_205:
    v190 = 1;
    v191 = 6;
    v192 = 2;
    v193 = 6;
    v194 = 1;
    do
    {
      v195 = v194 + v194 * v194;
      v196 = v194 + (v195 >> 1);
      v197 = v195 >> 1;
      v198 = v191;
      v199 = v193;
      v200 = v192;
      v201 = v190;
      v202 = v194;
      do
      {
        if (v194 == v202)
        {
          v203 = *&v654.i64[v196];
          v204 = (v202 + v202 * v202) >> 1;
        }

        else
        {
          v204 = (v202 + v202 * v202) >> 1;
          v205 = v194 + v204;
          if (v194 >= v202)
          {
            v205 = v197 + v202;
          }

          v203 = *&v654.i64[v202 + v204] * *&v654.i64[v205];
        }

        v206 = v202 - 1;
        v207 = v198;
        v208 = v199;
        v209 = v200;
        v210 = v201;
        do
        {
          v211 = v210 + 1;
          v212 = (v210 + 2) * (v210 + 1);
          v213 = *&v654.i64[v209 + (v207 >> 1)] * *&v654.i64[v194 + (v212 >> 1)];
          v214 = v202 + (v212 >> 1);
          if (v211 <= v202)
          {
            v214 = v211 + v204;
          }

          v203 = v203 + v213 * *&v654.i64[v214];
          ++v209;
          v207 += v208;
          v208 += 2;
          v210 = v211;
        }

        while (v211 < 3);
        *&v737.i64[2 * v194 - 2 + v206] = v203;
        *&v737.i64[2 * v206 - 1 + v194] = v203;
        ++v201;
        ++v200;
        v198 += v199;
        v199 += 2;
        v63 = v202 == 2;
        v202 = 2;
      }

      while (!v63);
      ++v192;
      ++v190;
      v191 += v193;
      v193 += 2;
      v194 = 2;
    }

    while (v192 != 4);
    v215 = cos(*__x.i64);
    v1 = *v737.i64 * 4.06806316e13;
    v2 = *&v738.i64[1] * (v215 * v215 * 4.06806316e13);
    v3 = fabs(v215) * 4.06806316e13 * *&v737.i64[1];
    v67 = 1;
  }

LABEL_222:
  if (g_Logging_Cfg >= 5)
  {
    v216 = mach_continuous_time();
    v217 = v529;
    v217.i32[1] = (v14[140] * v216);
    v529 = v217;
  }

  if (!v67)
  {
    *v596 = v593;
    *&v596[16] = v594;
    v597 = v595;
LABEL_274:
    v251 = 0;
    *v598 = xmmword_299054430;
    v252 = v596;
    do
    {
      v606[0] = 0.0;
      v253 = R8_EQ(v252, v606);
      if (v251 > 3)
      {
        break;
      }

      ++v251;
      ++v252;
    }

    while (v253);
    v254 = 0;
    v255 = 0;
    v256 = 0;
    v636 = 0u;
    v635 = 0u;
    v634 = 0u;
    v633 = 0u;
    v632 = 0u;
    v631 = 0u;
    v630 = 0u;
    v629 = 0u;
    v628 = 0u;
    v627 = 0u;
    v626 = 0u;
    v625 = 0u;
    v624 = 0u;
    v623 = 0u;
    v622 = 0u;
    v620 = 0u;
    v621 = 0u;
    v618 = 0u;
    v619 = 0u;
    v616 = 0u;
    v617 = 0u;
    v614 = 0u;
    v615 = 0u;
    v612 = 0u;
    v613 = 0u;
    v610 = 0u;
    v611 = 0u;
    v608 = 0u;
    v609 = 0u;
    v607 = 0u;
    memset(v606, 0, sizeof(v606));
    v645[1] = 0;
    v645[0] = 0;
    v646 = 0;
    memset(v729, 0, 20);
    v257 = v530;
    v258 = &(*v530)[2];
    do
    {
      if (*(v258 - 2) && *(v258 - 1) && *v258)
      {
        v259 = (v256 + 1);
        if (v256 <= 4)
        {
          v255 |= *(v576 + v254) == 2;
        }
      }

      else
      {
        v259 = v256;
      }

      ++v254;
      v258 += 3;
      v256 = v259;
    }

    while (v254 != 128);
    if (v259 < 1)
    {
      goto LABEL_311;
    }

    v260 = 0;
    v261 = 0;
    v575 = 0;
    v262 = 1;
    v263 = v259;
    while (1)
    {
      v264 = v11[v260];
      if (v264 == 1)
      {
        break;
      }

      if (v264 == 2)
      {
        v267 = *v11;
        if (v267 == 3)
        {
          goto LABEL_295;
        }

        if (v267 == 2)
        {
          v267 = 6;
LABEL_295:
          *(v606 + v260) = v267;
        }

        ++v261;
LABEL_304:
        if (v260 >= 5)
        {
          goto LABEL_309;
        }

LABEL_307:
        v266 = 5;
        v265 = 2;
LABEL_308:
        *(v645 + v260) = v265;
        v262 *= v266;
        goto LABEL_309;
      }

      if (v264 == 3)
      {
        ++v575;
        *(v606 + v260) = 0;
        if (v260 < 5)
        {
          v265 = 0;
          v266 = 1;
          goto LABEL_308;
        }
      }

      else
      {
        *(v606 + v260) = 22;
        if (v260 <= 4)
        {
          goto LABEL_307;
        }
      }

LABEL_309:
      if (v259 == ++v260)
      {
        if (v259 < 4)
        {
LABEL_311:
          v271 = 0;
          v272 = &unk_2A13EC000;
          goto LABEL_605;
        }

        if (v259 >= 5)
        {
          v273 = 5;
        }

        else
        {
          v273 = v259;
        }

        *v566 = v273;
        v274 = v575 + v261 >= v273 || v253;
        v551 = v259;
        v549 = v262;
        v545 = v255;
        if (v274)
        {
LABEL_319:
          v652 = 0uLL;
          v653.i32[0] = 0;
        }

        else
        {
          v428 = 0;
          *v675.i8 = vmovn_s64(vcvtq_s64_f64(*v596));
          v675.i32[2] = *&v596[16];
          do
          {
            *(v680 + v428 * 4) = v675.i32[v428] / 1000;
            ++v428;
          }

          while (v428 != 3);
          v429 = 0;
          v430 = 0;
          v431 = 1;
          v432 = v530;
          do
          {
            v433 = 0;
            v434 = 0;
            do
            {
              v435 = (*v432)[v433] / 1000 - *(v680 + v433 * 4);
              v434 += v435 * v435;
              ++v433;
            }

            while (v433 != 3);
            v436 = v540[v429] / -1000;
            v437 = U4sqrt(v434);
            if (!v429)
            {
              v652.i32[0] = 0;
              v430 = v436 + v437;
            }

            v438 = *(v606 + v429);
            if (v438 < 1)
            {
              v439 = 0;
            }

            else
            {
              v439 = (437 * (v436 + v437 - v430) + 65550) >> 17;
              if (v439 >= 0)
              {
                v440 = (437 * (v436 + v437 - v430) + 65550) >> 17;
              }

              else
              {
                v440 = -v439;
              }

              v431 &= v440 <= v438;
            }

            v652.i32[v429++] = v439;
            ++v432;
          }

          while (v429 != *v566);
          if ((v431 & 1) == 0)
          {
            v257 = v530;
            if (g_Logging_Cfg >= 5)
            {
              EvLog_VecI4("SearchPrLs: CheckFit   FAIL , Unused msCorr_Fit: ", v566[0], v652.i32);
            }

            goto LABEL_319;
          }

          v257 = v530;
          if (g_Logging_Cfg >= 5)
          {
            EvLog_VecI4("SearchPrLs: CheckFit    OK , msCorr_Fit: ", v566[0], v652.i32);
          }

          v441 = 0;
          v442 = 0;
          do
          {
            v443 = v652.i32[v441];
            if (v443 >= 0)
            {
              v444 = v652.i32[v441];
            }

            else
            {
              v444 = -v443;
            }

            v445 = *(v645 + v441);
            v446 = v444 + v445;
            v447 = *(v606 + v441);
            if (v446 > v447)
            {
              v448 = v445 - v447;
              v449 = v447 - v445;
              if (v443 > 0)
              {
                v448 = v449;
              }

              v652.i32[v441] = v448;
              v442 = 1;
            }

            ++v441;
          }

          while (*v566 != v441);
          if ((v442 & (g_Logging_Cfg > 4)) == 1)
          {
            EvLog_VecI4("SearchPrLs: CheckFit    OK ADJ , msCorr_Fit: ", v566[0], v652.i32);
          }
        }

        v564 = v566[0] - 1;
        v275 = v566[0];
        v276 = &v680[1];
        v277 = &(*v257)[2];
        do
        {
          v278 = *(v277 - 1);
          v279.i64[0] = v278;
          v279.i64[1] = SHIDWORD(v278);
          *(v276 - 1) = vcvtq_f64_s64(v279);
          v280 = *v277;
          v277 += 3;
          *v276 = v280;
          v276 += 3;
          --v275;
        }

        while (v275);
        v737 = 0uLL;
        v738.i32[0] = 0;
        if (v575 <= 0)
        {
          v287 = v575;
          v286 = v575;
          v281 = *v566;
        }

        else
        {
          v281 = *v566;
          if (v575 >= v566[0])
          {
            LODWORD(v282) = v566[0];
          }

          else
          {
            LODWORD(v282) = v575;
          }

          if (v282 <= 1)
          {
            v282 = 1;
          }

          else
          {
            v282 = v282;
          }

          v283 = v736;
          v284 = v540;
          do
          {
            v285 = *v284++;
            *v283++ = v285;
            --v282;
          }

          while (v282);
          v286 = v575;
          v287 = v575;
        }

        v581 = 0;
        v452 = 0;
        v558 = v281 - 1;
        v554 = &v736[127] + 4 * v281;
        v556 = v281 - v287;
        v552 = v645[0];
        v453 = *&v596[24];
        while (2)
        {
          v572 = v452;
          LODWORD(v643.f64[0]) = 0;
          LODWORD(v641.f64[0]) = 0;
          if (v286 < v281)
          {
            v454 = &v737.i32[v287];
            v455 = &v652.i32[v287];
            v456 = v729 + v287;
            v457 = &v540[v287];
            v458 = &v736[v287];
            v459 = v556;
            do
            {
              v461 = *v454++;
              v460 = v461;
              v462 = *v455++;
              v463 = v462 + v460;
              *v456++ = v463;
              v464 = *v457++;
              *v458++ = (v464 + 299792 * v463);
              --v459;
            }

            while (v459);
          }

          ++v581;
          v666.i64[1] = v453;
          v665 = *v596;
          v666.i64[0] = *&v596[16];
          if (!CompPr_LSQ4(v680, v736, v281, v665.i64, &v643, &v641, v650.f64))
          {
            v482 = 0;
            goto LABEL_564;
          }

          if (v259 >= 6)
          {
            v465 = 0;
            v466 = 0;
            v467 = *v665.i64;
            v585[0] = *v665.i64 / 1000;
            v585[1] = *&v665.i64[1] / 1000;
            v585[2] = *v666.i64 / 1000;
            do
            {
              v468 = (*v257)[v465] / 1000 - v585[v465];
              v466 += v468 * v468;
              ++v465;
            }

            while (v465 != 3);
            v469 = 0;
            v470 = *v540 / 1000 - U4sqrt(v466);
            do
            {
              v471 = 0;
              v472 = 0;
              v474 = *(v606 + v469);
              do
              {
                v475 = (*v257)[v471] / 1000 - v585[v471];
                v472 += v475 * v475;
                ++v471;
              }

              while (v471 != 3);
              v473 = v540[v469];
              v476 = v470 + v473 / -1000 + U4sqrt(v472);
              if (v476 < 0)
              {
                v476 = -v476;
              }

              if (v476 < 0x97)
              {
                v479 = 0;
              }

              else
              {
                v477 = v476 - 450;
                if (v476 < 0x1C2)
                {
                  v477 = 0;
                }

                v478 = (v477 + 299) / 0x12Cu;
                v476 = v476 - 300 * v478 - 300;
                v479 = v478 + 1;
              }

              if (v476 < 0)
              {
                v476 = -v476;
              }

              v481 = v479 > v474 || v476 > 0xF;
              if (++v469 >= v263)
              {
                break;
              }

              ++v257;
            }

            while (!v481);
            if (v481)
            {
              EvLog_v("SearchPrLs:  BAD %d %d %d  %g %g %g   ClkB %g   ResSq %d", v469, v581, v549, v650.f64[0] * 57.2957795, v650.f64[1] * 57.2957795, v651, v467, LODWORD(v641.f64[0]));
              v482 = 0;
              v257 = v530;
              LODWORD(v259) = v551;
              v286 = v575;
              goto LABEL_563;
            }

            LODWORD(v259) = v551;
            v286 = v575;
          }

          v483 = LODWORD(v641.f64[0]);
          if (LODWORD(v641.f64[0]) <= 0x57E3)
          {
            dword_2A13EE5B0 = LODWORD(v641.f64[0]);
            if (g_Logging_Cfg >= 5)
            {
              EvLog_v("SearchPrLs: GOOD %d %d %d  %g %g %g   ClkB %g  ResSq %d", v566[0], v581, v549, v650.f64[0] * 57.2957795, v650.f64[1] * 57.2957795, v651, *v665.i64, LODWORD(v641.f64[0]));
              EvLog_VecI4("SearchPrLs: GOOD msCorr", v566[0], v729);
            }

            __x = v650;
            v592 = v651;
            v482 = 1;
            v257 = v530;
LABEL_563:
            LODWORD(v281) = v566[0];
LABEL_564:
            v484 = LODWORD(v643.f64[0]);
            v737.i32[v564] = (v737.i32[v564] < 1) - v737.i32[v564];
            if (v564 > v286)
            {
              v485 = v558;
              v486 = v737.i32[v558];
              v487 = v554;
              do
              {
                if (v486 <= *(v645 + v485))
                {
                  break;
                }

                --v485;
                v486 = (*v487 < 1) - *v487;
                *v487-- = v486;
              }

              while (v485 > v287);
            }

            v452 = v484 + v572;
            if (v286)
            {
              if (v286 >= v281)
              {
                goto LABEL_587;
              }

              v488 = v737.i32[v287];
              v489 = *(v645 + v287);
            }

            else
            {
              v488 = v737.i32[0];
              v489 = v552;
            }

            if (v482 & 1 | (v488 > v489) || v452 > 149)
            {
LABEL_587:
              if (v482)
              {
                v271 = 1;
                v7 = v524;
                v272 = &unk_2A13EC000;
                v492 = v545;
              }

              else
              {
                if (v259 == 4)
                {
                  v493 = 22500;
                }

                else
                {
                  v493 = 250000 * v281;
                }

                dword_2A13EE5B0 = LODWORD(v598[0]);
                v7 = v524;
                v272 = &unk_2A13EC000;
                v492 = v545;
                if (LODWORD(v598[0]) >= v493)
                {
                  if (g_Logging_Cfg >= 5)
                  {
                    v496 = v452;
                    EvLog_v("SearchPrLs: FAIL %d %d %d", v581, v549, v452);
                    LOBYTE(v452) = v496;
                  }

                  v271 = 0;
                }

                else
                {
                  __x = v675;
                  v592 = v676[0];
                  if (g_Logging_Cfg >= 5)
                  {
                    v519 = v281;
                    v494 = v452;
                    EvLog_v("SearchPrLs:   OK %d %d %d  %g %g %g   ClkB %g  ResSq %d", v519, v581, v549, *__x.i64 * 57.2957795, *&__x.i64[1] * 57.2957795, v592, *v665.i64, LODWORD(v598[0]));
                    LOBYTE(v452) = v494;
                  }

                  v271 = 1;
                }
              }

              byte_2A13EE5B4 = v492 & 1;
              byte_2A13EE5AB = v271;
              byte_2A13EE5AC = v452;
              goto LABEL_605;
            }

            continue;
          }

          break;
        }

        if (LODWORD(v641.f64[0]) < LODWORD(v598[0]))
        {
          v490 = 0;
          goto LABEL_581;
        }

        if (LODWORD(v641.f64[0]) < HIDWORD(v598[0]))
        {
          v490 = 1;
          goto LABEL_581;
        }

        if (LODWORD(v641.f64[0]) >= LODWORD(v598[1]))
        {
          if (LODWORD(v641.f64[0]) < HIDWORD(v598[1]))
          {
            v490 = 3;
            goto LABEL_582;
          }
        }

        else
        {
          v490 = 2;
LABEL_581:
          memmove(&v676[3 * v490 + 1], &v675 + 24 * v490, 24 * (v490 ^ 3));
          memmove(((v598 | (4 * v490)) + 4), (v598 | (4 * v490)), 4 * (v490 ^ 3));
LABEL_582:
          v491 = &v675.i64[3 * v490];
          *v491 = v650;
          v491[2] = v651;
          *(v598 | (4 * v490)) = v483;
          if (g_Logging_Cfg >= 5)
          {
            LODWORD(v281) = v566[0];
            EvLog_v("SearchPrLs: WAIT %d %d %d  %g %g %g   ClkB %g  ResSq %d", v566[0], v581, v549, v650.f64[0] * 57.2957795, v650.f64[1] * 57.2957795, v651, *v665.i64, LODWORD(v598[0]));
            EvLog_VecI4("SearchPrLs: WAIT msCorr", v566[0], v729);
            v482 = 0;
            v257 = v530;
            goto LABEL_564;
          }
        }

        v482 = 0;
        v257 = v530;
        LODWORD(v281) = v566[0];
        goto LABEL_564;
      }
    }

    v268 = *v11;
    if (v268 == 2)
    {
      v269 = 14;
    }

    else
    {
      v269 = 22;
    }

    if (v268 == 3)
    {
      v270 = 11;
    }

    else
    {
      v270 = v269;
    }

    *(v606 + v260) = v270;
    goto LABEL_304;
  }

  Comp_ErrorEllipse(v1, v2, v3, &v582, &v582 + 1, &v583);
  xmmword_2A13EE590 = __x;
  if (v522 >= 5)
  {
    v218 = 5;
  }

  else
  {
    v218 = v522;
  }

  if (v218 <= 3)
  {
    v218 = 3;
  }

  v219 = vmulq_n_f64(v582, User_Velocity_Compensation[v218 - 3]);
  v582 = v219;
  v220 = 0.00000320473867 * v219.f64[0];
  v221 = v219.f64[1];
  v222 = vmuld_lane_f64(0.00000320473867 * v219.f64[0], v219, 1);
  if (v522 >= 8)
  {
    v223 = v222 * 0.0016;
    v224 = 2.0;
    if (v222 * 0.0016 <= 2500.0 && v223 * 4.0 >= 2500.0)
    {
      v224 = sqrt(2500.0 / v223);
    }

    v219.f64[0] = v219.f64[0] * v224;
    *&v582 = v219.f64[0];
    v225 = v219.f64[1] * v224;
    goto LABEL_238;
  }

  v225 = 200000.0;
  if (v219.f64[0] < 200000.0)
  {
    *&v582 = 0x41086A0000000000;
    v225 = 200000.0;
    v219.f64[0] = 200000.0;
    goto LABEL_238;
  }

  if (v219.f64[1] < 200000.0 && v222 < 1562500.0)
  {
    if (v220 * 200000.0 > 1562500.0)
    {
      v225 = 1562500.0 / v220;
    }

LABEL_238:
    *(&v582 + 1) = v225;
    v221 = v225;
  }

  if (v221 * (v219.f64[0] * 3.14159265) * 0.000001 > 1562500.0)
  {
    goto LABEL_274;
  }

  v569 = __x;
  v577 = v219.f64[0];
  memset(v598, 0, sizeof(v598));
  v226 = *&v583;
  bzero(&v675, 0x4A0uLL);
  v227 = 0;
  v735 = 0u;
  v734 = 0u;
  v733 = 0u;
  v732 = 0u;
  v731 = 0u;
  v730 = 0u;
  v228 = -83886080;
  memset(v729, 0, sizeof(v729));
  do
  {
    v229 = &v675.i8[v227];
    *v229 = 0;
    *(v229 + 2) = v228;
    *(v229 + 3) = v228;
    v227 += 148;
    v228 += 0x10000;
  }

  while (v227 != 1184);
  v230 = 0;
  v231 = 0;
  v232 = 0;
  v233 = 0;
  v234 = v606;
  v235 = v680;
  v236 = v530;
  do
  {
    v237 = v530[v230];
    if (*v237)
    {
      if (*(v237 + 4))
      {
        v237 = *(v237 + 8);
        if (v237)
        {
          for (j = 0; j != 3; ++j)
          {
            v239 = (*v236)[j];
            if (v239 > 0)
            {
              v240 = 500;
            }

            else
            {
              v240 = -500;
            }

            *(v235 + j) = (v240 + v239) / 1000;
            v234[j] = v239;
          }

          v241 = 274877907 * (v540[v230] + 500);
          *(v645 + v230) = (v241 >> 38) + (v241 >> 63);
          if (*(v559 + 4 * v230) == 1)
          {
            ++v232;
            v237 = 250000;
          }

          else
          {
            v237 = 2250000;
          }

          v231 += v237;
          ++v233;
        }
      }
    }

    ++v230;
    v234 += 3;
    v235 = (v235 + 12);
    ++v236;
  }

  while (v230 != 128);
  v242 = v226 * 0.0174532925;
  v574 = v233;
  if (v233 >= 1)
  {
    v243 = 0;
    while (1)
    {
      v244 = v11[v243];
      if (v244 == 1)
      {
        break;
      }

      if (v244 == 3)
      {
        v246 = 0;
        goto LABEL_267;
      }

      if (v244 != 2)
      {
        break;
      }

      v245 = *v11;
      if (v245 == 3)
      {
        v246 = 2;
        goto LABEL_267;
      }

      if (v245 == 2)
      {
        v246 = 4;
LABEL_267:
        *(v729 + v243) = v246;
      }

      if (v233 == ++v243)
      {
        goto LABEL_269;
      }
    }

    v246 = 22;
    goto LABEL_267;
  }

LABEL_269:
  v520 = v232;
  v521 = v231;
  *&v598[0] = vmovn_s64(vcvtq_n_s64_f64(v569, 0xFuLL));
  v247 = LODWORD(v598[0]);
  if (SLODWORD(v598[0]) < 0)
  {
    v247 = -LODWORD(v598[0]);
  }

  LODWORD(v237) = vcvtd_n_s64_f64(v242, 0xFuLL);
  LODWORD(v598[1]) = ((40839 * (v247 >> 1)) >> 14) + 6335439;
  HIDWORD(v598[1]) = v237;
  Taylor_sin_cos(v237, &v598[2], &v598[2] + 1);
  v248 = HIDWORD(v598[1]);
  v555 = v233;
  if (v242 < 0.785398163 || v242 > 2.35619449)
  {
    v249 = -v242;
    v248 = (HIDWORD(v598[1]) - 51472);
    v250 = v221;
  }

  else
  {
    v249 = 1.57079633 - v242;
    v250 = v577;
    v577 = v221;
  }

  Taylor_sin_cos(v248, &v598[2], &v598[2] + 1);
  v288 = v577 * v577 / (v250 * v250);
  v289 = tan(v249);
  v290 = v289 * v289 + v288;
  v291 = (v250 * sqrt(v290));
  *v292.i64 = cos(v249);
  if (v291 >= 1)
  {
    v294 = 0;
    v528 = (25000.0 / fabs(*v292.i64));
    v527 = v291 - v528;
    v534 = SLODWORD(v598[1]) >> 6;
    v535 = LODWORD(v598[2]);
    v532 = v233 - 1;
    v531 = v680 + 12 * v233 - 4;
    v295 = v577 * v577 * v290;
    v296 = HIDWORD(v598[2]);
    v533 = HIDWORD(v598[2]);
    v297 = v598[0];
    v548 = DWORD2(xmmword_2A13EE5B8);
    v550 = DWORD1(xmmword_2A13EE5B8);
    v546 = xmmword_2A13EE5B8;
    v543 = DWORD1(gDebug);
    v544 = 225 * v233;
    v570 = gDebug;
    v536 = v291;
    do
    {
      v298 = v294;
      v299 = v295 + -(v298 * v298) * v288;
      if (v299 < 0.0)
      {
        v299 = 0.0;
      }

      v300 = (v289 * (1.0 / v290) * v298);
      v301 = (1.0 / v290 * sqrt(v299));
      v538 = v294;
      v539 = -v294;
      v302 = 1;
      v537 = v301;
      while (1)
      {
        LODWORD(v641.f64[0]) = 0;
        LODWORD(v639.f64[0]) = 0;
        v542 = v302;
        if (v302 == 2)
        {
          v300 = -v300;
        }

        v303 = v301;
        v304 = v301 - v300;
        v305 = v300;
        v306 = v539;
        if (v302 != 2)
        {
          v306 = v294;
        }

        v307 = v304 >> 9;
        v308 = (v306 + (v289 * v304)) >> 9;
        v309 = LODWORD(v297) + 8 * ((v296 * (v304 >> 9) - v308 * v535) / v534);
        LODWORD(v310) = 102944 - v309;
        if (v309 <= 51472)
        {
          LODWORD(v310) = LODWORD(v297) + 8 * ((v296 * (v304 >> 9) - v308 * v535) / v534);
        }

        v310 = v309 >= -51472 ? v310 : (-102944 - v309);
        v311 = v310 >= 0 ? v310 : -v310;
        if (v311 >> 8 > 0xC8)
        {
          break;
        }

        v541 = v305;
        v312 = -v303 - v305;
        v578 = v306 + (v289 * v312);
        v547 = v310;
        Taylor_sin_cos(v310, &v641, &v639);
        v313 = LODWORD(v639.f64[0]);
        v557 = LODWORD(v639.f64[0]);
        if (SLODWORD(v639.f64[0]) < 0)
        {
          v313 = -LODWORD(v639.f64[0]);
        }

        v567 = ((99658 * v313) >> 15) * (((17965 * v311) >> 23) | 0x8000);
        v314 = 8 * ((v535 * v307 + v308 * v296) / (v567 >> 15));
        LODWORD(v315) = HIDWORD(v297) + v314;
        v316 = (v535 * (v312 >> 9) + (v578 >> 9) * v296) / (v567 >> 15);
        v317 = HIDWORD(v297) + 8 * v316;
        v318 = v314 <= 8 * v316;
        if (v314 <= 8 * v316)
        {
          v319 = HIDWORD(v297) + 8 * v316;
        }

        else
        {
          v319 = HIDWORD(v297) + v314;
        }

        if (v318)
        {
          v315 = v315;
        }

        else
        {
          v315 = v317;
        }

        v320 = 102944;
        v321 = 4294864352;
        v322 = v555;
        if (v319 - v315 <= 205887)
        {
          if (v315 >= -205887)
          {
            if (v319 <= 205886)
            {
              v320 = v319;
              v321 = v315;
            }

            else
            {
              v320 = v319 % 0x3243Fu;
              v321 = v315 - 205887 * (v319 / 0x3243Fu);
            }
          }

          else
          {
            v321 = 205887 * (-v315 / 0x3243Fu) + v315;
            v320 = v319 - v315 - -v315 % 0x3243Fu;
          }
        }

        v323 = LODWORD(v641.f64[0]);
        v324 = 0x18EA2312 / U4sqrt(~(4 * v323 * v323 / 0x95u));
        if (v555 >= 1)
        {
          v325 = ((v324 - ((112313 * v324 + 0x1000000) >> 24)) * v323) >> 15;
          v326 = v531;
          v327 = v532;
          do
          {
            v328 = *v326;
            v326 -= 3;
            v665.i32[v327] = (v328 - v325) * v323;
            *(v736 + v327) = (v328 - v325) * (v328 - v325);
            v329 = v327-- + 1;
          }

          while (v329 > 1);
        }

        if (v321 <= v320)
        {
          v562 = v309 - 51473;
          v553 = (v324 * v557 + 0x8000) >> 15;
          v561 = 0x30D40000 / (v567 >> 9);
          v560 = v320 - v561;
          v563 = v320;
          while (1)
          {
            v585[0] = 0;
            LODWORD(v643.f64[0]) = 0;
            v744 = 0u;
            v743 = 0u;
            v742 = 0u;
            v741 = 0u;
            v740 = 0u;
            v739 = 0u;
            v330 = 205887;
            v738 = 0u;
            v737 = 0u;
            if (v321 < -102944 || (v330 = -205887, v331 = v321, v321 > 102943))
            {
              v331 = (v330 + v321);
            }

            if (v562 < 0xFFFE6DDF)
            {
              if ((v331 & 0x80000000) != 0)
              {
                v331 = (v331 + 102944);
              }

              else
              {
                v331 = (v331 - 102944);
              }
            }

            v565 = v331;
            Taylor_sin_cos(v331, v585, &v643);
            if (v322 < 1)
            {
              v349 = 0;
              v350 = 0;
LABEL_397:
              v351 = v321;
              v352 = 0;
              v353 = 0;
              v354 = 1000000 * v349;
              v355 = v676;
              while (1)
              {
                v356 = HIBYTE(v675.i32[37 * v353 + 2]);
                if (v322 < 1 || v356 > 0xFA)
                {
                  break;
                }

                v357 = 0;
                do
                {
                  v358 = *(v355 + v357);
                  v359 = v737.u8[v357++];
                }

                while (v357 < v555 && v358 == v359);
                if (v358 == v359)
                {
                  goto LABEL_408;
                }

                ++v353;
                v355 = (v355 + 148);
                v352 += 148;
                if (v353 == 8)
                {
                  goto LABEL_417;
                }
              }

              if (v356 >= 0xFB)
              {
                goto LABEL_417;
              }

LABEL_408:
              if ((v353 & 0x80000000) == 0)
              {
                v360 = &v675.i8[148 * (v353 & 0x7FFFFFFF)];
                v361 = *(v360 + 2);
                if (v354 < v361)
                {
                  v361 = v354;
                }

                *(v360 + 2) = v361 >> 1;
                if (v353)
                {
                  v362 = &v675;
                  v363 = v563;
                  do
                  {
                    if (*(v360 + 2) < v362->i32[2])
                    {
                      v364 = *(v360 + 7);
                      v658 = *(v360 + 6);
                      v659 = v364;
                      v660 = *(v360 + 8);
                      LODWORD(v661) = *(v360 + 36);
                      v365 = *(v360 + 3);
                      v654 = *(v360 + 2);
                      v655 = v365;
                      v366 = *(v360 + 5);
                      v656 = *(v360 + 4);
                      v657 = v366;
                      v367 = *(v360 + 1);
                      v652 = *v360;
                      v653 = v367;
                      memmove(v362[9].i64 + 4, v362, v352);
                      v368 = v659;
                      v362[6] = v658;
                      v362[7] = v368;
                      v362[8] = v660;
                      v362[9].i32[0] = v661;
                      v369 = v655;
                      v362[2] = v654;
                      v362[3] = v369;
                      v370 = v657;
                      v362[4] = v656;
                      v362[5] = v370;
                      v292 = v652;
                      v293 = v653;
                      *v362 = v652;
                      v362[1] = v293;
                    }

                    v362 = (v362 + 148);
                    v352 -= 148;
                  }

                  while (v352);
                }

                else
                {
                  v363 = v563;
                }

                LODWORD(v321) = v351;
                goto LABEL_439;
              }

LABEL_417:
              v371 = 0;
              v372 = &v675;
              v373 = 1036;
              LODWORD(v321) = v351;
              while (v354 >= v372->i32[2])
              {
                v372 = (v372 + 148);
                ++v371;
                v373 -= 148;
                if (v371 == 8)
                {
                  goto LABEL_436;
                }
              }

              if (v373)
              {
                v374 = v350;
                memmove(v372[9].i64 + 4, v372, v373 & 0xFFFFFFFC);
                v350 = v374;
              }

              else
              {
                v371 = 7;
              }

              v378 = (&v675 + 148 * v371);
              v378->i32[0] = v547;
              v378->i32[1] = v565;
              v378->i32[2] = v354;
              v379 = v742;
              v378[5] = v741;
              v378[6] = v379;
              v380 = v744;
              v378[7] = v743;
              v378[8] = v380;
              v381 = v738;
              v378[1] = v737;
              v378[2] = v381;
              v292 = v739;
              v293 = v740;
              v378[3] = v739;
              v378[4] = v293;
              v378[9].i32[0] = v350;
LABEL_436:
              v363 = v563;
              goto LABEL_439;
            }

            v568 = v321;
            v332 = 0;
            v333 = 0;
            v334 = 0;
            v579 = (LODWORD(v643.f64[0]) * v553) >> 15;
            v335 = (v585[0] * v553) >> 15;
            v336 = (LODWORD(v643.f64[0]) * v557) >> 15;
            v337 = (v585[0] * v557) >> 15;
            v338 = v680 + 1;
            do
            {
              v339 = *(v338 - 1) - v579;
              v340 = *v338 - v335;
              v341 = v665.i32[v332] + v339 * v336 + v340 * v337;
              v342 = U4sqrt(v339 * v339 + v340 * v340 + *(v736 + v332));
              if (v341 < 0 && v341 / v342 <= -2857)
              {
                DWORD1(gDebug) = ++v543;
                v322 = v555;
                goto LABEL_425;
              }

              if (!v332)
              {
                v333 = LODWORD(v645[0]) - v342;
              }

              v343 = *(v645 + v332) - v342 - v333;
              v344 = *(v729 + v332);
              if (*(v729 + v332))
              {
                v345 = (437 * v343 + 65550) >> 17;
                if (v345 >= 0)
                {
                  v346 = (437 * v343 + 65550) >> 17;
                }

                else
                {
                  v346 = -v345;
                }

                v737.i8[v332] = v345;
                if (v346 > v344)
                {
                  DWORD2(xmmword_2A13EE5B8) = ++v548;
LABEL_424:
                  v322 = v555;
LABEL_425:
                  v363 = v563;
                  LODWORD(v321) = v568;
                  goto LABEL_439;
                }

                v343 -= (613975 * v345) >> 11;
              }

              *(v650.f64 + v332) = v343;
              if (v343 >= 0)
              {
                v347 = v343;
              }

              else
              {
                v347 = -v343;
              }

              if (v347 >= 0x1A)
              {
                DWORD1(xmmword_2A13EE5B8) = ++v550;
                goto LABEL_424;
              }

              v338 += 3;
              v334 += v343;
              ++v332;
            }

            while (v574 != v332);
            v322 = v555;
            if (v555 >= 15)
            {
              v348 = v334 / v555;
            }

            else
            {
              v348 = (v334 * num_SV_Div_Table[v555]) >> 15;
            }

            v349 = 0;
            v350 = v348 + v333;
            v375 = &v650;
            v376 = v574;
            v363 = v563;
            LODWORD(v321) = v568;
            do
            {
              v377 = LODWORD(v375->f64[0]);
              v375 = (v375 + 4);
              v349 += (v377 - v348) * (v377 - v348);
              if (v349 > v544)
              {
                LODWORD(xmmword_2A13EE5B8) = ++v546;
                goto LABEL_439;
              }

              --v376;
            }

            while (v376);
            if (v349 <= 0x1072)
            {
              goto LABEL_397;
            }

LABEL_439:
            ++v570;
            v382 = v560;
            if (v321 < v560)
            {
              v382 = v321;
            }

            if (v321 >= v363)
            {
              v382 = v321;
            }

            v321 = v382 + v561;
            if (v321 > v363)
            {
              LODWORD(gDebug) = v570;
              break;
            }
          }
        }

        v383 = v536;
        v301 = v537;
        v294 = v538;
        v296 = v533;
        if (v538)
        {
          v302 = v542 + 1;
          v300 = v541;
          if (v542 < 2)
          {
            continue;
          }
        }

        goto LABEL_449;
      }

      EvLog_d("SearchEllipse: Stop Candidate search near the poles - ", v310);
      v548 = DWORD2(xmmword_2A13EE5B8);
      v550 = DWORD1(xmmword_2A13EE5B8);
      v546 = xmmword_2A13EE5B8;
      v383 = v536;
      v294 = v536;
      v543 = DWORD1(gDebug);
      v570 = gDebug;
LABEL_449:
      v384 = v527;
      if (v294 < v527)
      {
        v384 = v294;
      }

      if (v294 >= v383)
      {
        v384 = v294;
      }

      v294 = v384 + v528;
    }

    while (v384 + v528 < v383);
  }

  if (v675.i32[2] < 0xFB000000)
  {
    v385 = 0;
    v386 = v676;
    v292 = vdupq_n_s64(0x3F00000000000000uLL);
    v571 = v292;
    do
    {
      v387 = &v675.i8[148 * v385];
      v388 = *(v387 + 2);
      if (v388 >= 0xFB000000)
      {
        break;
      }

      v585[0] = 0;
      v389.i64[0] = *v387;
      v389.i64[1] = HIDWORD(*v387);
      v580 = vcvtq_f64_s64(v389);
      v650 = vmulq_f64(v580, v571);
      v651 = 0.0;
      Geo2ECEF(&v650, &WGS84_Datum, v652.i64);
      v390 = 1000 * *(v387 + 36);
      v665 = v652;
      *&v666.i64[1] = v390;
      v666.i64[0] = v653.i64[0];
      EvLog_v("SearchEllipse: Best Points: %d  %g %g  %u", v555, 0.00174852843 * v580.f64[0], vmuld_lane_f64(0.00174852843, v580, 1), v388);
      if (v555 >= 1)
      {
        v391 = v736;
        v392 = v540;
        v393 = v386;
        v394 = v574;
        do
        {
          v396 = *v392++;
          v395 = v396;
          v397 = *v393;
          v393 = (v393 + 1);
          *v391++ = (v395 - 299792 * v397);
          --v394;
        }

        while (v394);
      }

      if (CompPr_LSQ4(v606, v736, v555, v665.i64, v737.i32, v585, v650.f64))
      {
        v398 = vmovn_s64(vcvtq_n_s64_f64(v650, 0xFuLL));
        *v387 = v398;
        v399 = v585[0];
        *(v387 + 2) = v585[0];
        EvLog_v("SearchEllipse: LSQ Upd %d %d   ResSq %d", v398.i32[0], v398.i32[1], v399);
      }

      else
      {
        *(v387 + 2) = -83886080;
        EvDbg_v("SearchEllipse: ERROR DID NOT CONVERGE!");
      }

      ++v385;
      v386 = (v386 + 148);
    }

    while (v385 != 8);
  }

  v400 = 0;
  v401 = &v679;
  v402 = -7;
  v7 = v524;
  v272 = &unk_2A13EC000;
  do
  {
    if (v400 > 6)
    {
      v405 = v400;
    }

    else
    {
      v403 = v401;
      v404 = v402;
      v405 = v400;
      do
      {
        v406 = *v403;
        v403 += 37;
        if (v406 < v675.i32[37 * v405 + 2])
        {
          v405 = v404 + 8;
        }

        v169 = __CFADD__(v404++, 1);
      }

      while (!v169);
    }

    if (v400 != v405)
    {
      v407 = &v675.i8[148 * v400];
      v408 = *(v407 + 7);
      v671 = *(v407 + 6);
      v672 = v408;
      v673 = *(v407 + 8);
      v674 = *(v407 + 36);
      v409 = *(v407 + 3);
      v667 = *(v407 + 2);
      v668 = v409;
      v410 = *(v407 + 5);
      v669 = *(v407 + 4);
      v670 = v410;
      v411 = *(v407 + 1);
      v665 = *v407;
      v666 = v411;
      v412 = &v675.i8[148 * v405];
      v413 = *(v412 + 1);
      *v407 = *v412;
      *(v407 + 1) = v413;
      v414 = *(v412 + 2);
      v415 = *(v412 + 3);
      v416 = *(v412 + 5);
      *(v407 + 4) = *(v412 + 4);
      *(v407 + 5) = v416;
      *(v407 + 2) = v414;
      *(v407 + 3) = v415;
      v417 = *(v412 + 6);
      v418 = *(v412 + 7);
      v419 = *(v412 + 8);
      *(v407 + 36) = *(v412 + 36);
      *(v407 + 7) = v418;
      *(v407 + 8) = v419;
      *(v407 + 6) = v417;
      v420 = v672;
      *(v412 + 6) = v671;
      *(v412 + 7) = v420;
      *(v412 + 8) = v673;
      *(v412 + 36) = v674;
      v421 = v668;
      *(v412 + 2) = v667;
      *(v412 + 3) = v421;
      v422 = v670;
      *(v412 + 4) = v669;
      *(v412 + 5) = v422;
      v292 = v665;
      v293 = v666;
      *v412 = v665;
      *(v412 + 1) = v293;
    }

    ++v400;
    ++v402;
    v401 += 37;
  }

  while (v400 != 8);
  for (k = 0; k != 296; k += 37)
  {
    if (v675.i32[k + 2] >= 0xFB000000)
    {
      break;
    }

    EvLog_v("SearchEllipse: Best Points Upd: %d  %g %g  %u", v555, v675.i32[k] * 0.00174852843, v675.i32[k + 1] * 0.00174852843, v675.i32[k + 2]);
  }

  v424 = v675.u32[2];
  if (v679 < 0xFB000000 && v555 <= 4)
  {
    v426 = v521;
    if (v555 == v520 && (v427 = 10000 * v555, v675.i32[2] < (10000 * v555)))
    {
      if (v675.i32[2] >= (1089 * v555))
      {
        v427 = 90000 * v555;
      }
    }

    else
    {
      v427 = 1000000 * v555;
    }

    if (v679 < v427 + v675.i32[2])
    {
      EvLog_v("Ellipse Candidate INVALID as not better than the next: 0 %g %g %d   %d %g %g  %d   %d", v675.i32[0] * 0.00174852843, v675.i32[1] * 0.00174852843, v675.i32[2], 1, v677 * 0.00174852843, v678 * 0.00174852843, v679, v555);
      v424 = -83886080;
    }
  }

  else
  {
    v426 = v521;
  }

  v450 = 16000000 * v555;
  if (v555 <= 5)
  {
    v450 = 0;
  }

  v292.i32[0] = v424;
  v293.i32[0] = v426 + v450;
  dword_2A13EE570 = v424 / v555;
  v451.i64[0] = v675.i32[0];
  v451.i64[1] = v675.i32[1];
  v271 = v424 < v426 + v450;
  __x = vandq_s8(vmulq_f64(vcvtq_f64_s64(v451), vdupq_n_s64(0x3F00000000000000uLL)), vdupq_lane_s32(*&vcgtq_u32(v293, v292), 0));
  v592 = 0.0;
LABEL_605:
  if (g_Logging_Cfg >= 5)
  {
    v497 = mach_continuous_time();
    v498 = v529;
    v498.i32[2] = (v272[140] * v497);
    v529 = v498;
  }

  if (v271)
  {
    Geo2ECEF(&__x, &WGS84_Datum, v680);
    *v596 = v680[0];
    *&v596[16] = *&v680[1];
    v500 = CompVelDoLs(v530, v525, v7, v596, &v588, v499);
  }

  else
  {
    v500 = 0;
  }

  if (g_Logging_Cfg >= 5)
  {
    v501 = mach_continuous_time();
    v502 = v529;
    v502.i32[3] = (v272[140] * v501);
    v529 = v502;
  }

  v503 = __x.i64[0];
  if (v500)
  {
    v504 = __sincos_stret(*__x.i64);
    v505 = __x.i64[1];
    v506 = __sincos_stret(*&__x.i64[1]);
    v507 = 0;
    v606[0] = -(v504.__sinval * v506.__cosval);
    v606[1] = -(v504.__sinval * v506.__sinval);
    v508 = &v606[2];
    v606[2] = v504.__cosval;
    v606[3] = -v506.__sinval;
    v607 = *&v506.__cosval;
    *&v608 = -(v504.__cosval * v506.__cosval);
    *(&v608 + 1) = -(v504.__cosval * v506.__sinval);
    *&v609 = -v504.__sinval;
    v509 = v588;
    v510 = *&v589;
    do
    {
      v511 = *(v508 - 1) * *(&v509 + 1) + *(v508 - 2) * *&v509;
      v512 = *v508;
      v508 += 3;
      *&v675.i64[v507++] = v511 + v512 * v510;
    }

    while (v507 != 3);
    v513 = *&v675.i64[1] * *&v675.i64[1] + *v675.i64 * *v675.i64;
    if (v522 >= 5)
    {
      v514 = 5;
    }

    else
    {
      v514 = v522;
    }

    if (v514 <= 3)
    {
      v514 = 3;
    }

    v515 = fabs(v676[0]);
    if (v515 < 10.0)
    {
      v516 = User_Velocity_Compensation[v514 - 3] * 1.5;
      v112 = v513 < v516 * v516;
    }

    else
    {
      v112 = 0;
    }

    dword_2A13EE5CC = sqrt(v513);
    dword_2A13EE5D0 = v515;
    if (!v112)
    {
      dword_2A13EE5A0 = 6;
    }
  }

  else
  {
    v112 = 0;
    v505 = __x.i64[1];
  }

  v523->i64[0] = v503;
  v523->i64[1] = v505;
  xmmword_2A13EE578 = v582;
  qword_2A13EE588 = v583;
LABEL_627:
  if (g_Logging_Cfg >= 5)
  {
    EvLog_v("CAP Time Waypoints %u %d %d %d %d %d %d %d", v526.i32[0], v526.i32[1] - v526.i32[0], v526.i32[2] - v526.i32[0], v526.i32[3] - v526.i32[0], v529.i32[0] - v526.i32[0], v529.i32[1] - v526.i32[0], v529.i32[2] - v526.i32[0], v529.i32[3] - v526.i32[0]);
  }

  v517 = *MEMORY[0x29EDCA608];
  return v112;
}

uint64_t CompVelDoLs(int (*a1)[3], __int16 (*a2)[3], __int16 *a3, double *a4, BOOL a5, double *a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1);
  v8 = v7;
  v10 = v9;
  v80 = v11;
  v13 = v12;
  v14 = v6;
  v146 = *MEMORY[0x29EDCA608];
  bzero(v142, 0x1C00uLL);
  v15 = 0;
  v16 = 0;
  v88 = 0;
  memset(v87, 0, 457);
  v90 = 0;
  v87[59] = 0;
  v89 = 0;
  v91 = 0;
  v92 = 0;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v93 = 2;
  v95 = &v86;
  v94 = v84;
  v96 = v85;
  v97 = &v83;
  v98 = &v82;
  v87[58] = 0;
  v87[54] = 0;
  v99 = 0u;
  v100 = 0u;
  dword_2A13EE5A0 = 0;
  memset(v84, 0, sizeof(v84));
  v136 = 0.0;
  v135 = 0u;
  v134 = 0u;
  v17 = (v14 + 8);
  v18 = -1;
  memset(v133, 0, sizeof(v133));
  do
  {
    v85[v15] = 0x3FF0000000000000;
    if (*(v17 - 2) && *(v17 - 1) && *v17)
    {
      v84[v15] = 1;
      ++v16;
    }

    else if (v18 == -1)
    {
      v18 = v15;
    }

    ++v15;
    v17 += 3;
  }

  while (v15 != 128);
  HIDWORD(v92) = v18;
  if (v16 >= 3)
  {
    if (v18 == -1)
    {
LABEL_18:
      v29 = 0;
      *(&v89 + 3) = -1;
      LODWORD(v89) = 50462976;
      HIBYTE(v89) = 4;
      LODWORD(v90) = 1;
      v30 = 0.0;
      do
      {
        v31 = v29;
        v32 = -7168;
        v33 = v95;
        v34 = (v14 + 4);
        v35 = (v13 + 4);
        v36 = v80;
        v37 = v95;
        do
        {
          v38 = *(v34 - 1);
          v39 = v34[1];
          if (*(v34 - 1))
          {
            v40 = *v34;
          }

          else
          {
            v40 = 0.0;
            if (!v39)
            {
              break;
            }
          }

          v34 += 3;
          v41 = v38 - *v10;
          v42 = v40 - v10[1];
          v43 = v39 - v10[2];
          v44 = 1.0 / sqrt(v42 * v42 + v41 * v41 + v43 * v43);
          v45 = *v36++;
          *v37++ = v45 * 0.190293673 - v44 * (v42 * -(v8[1] - *(v35 - 1) * 0.190293673) + v41 * -(*v8 - *(v35 - 2) * 0.190293673) + v43 * -(v8[2] - *v35 * 0.190293673)) - v8[3];
          *&v144[v32 / 4] = v41 * v44;
          v46 = &v142[v32 / 8];
          v46[897] = v42 * v44;
          v46[898] = v43 * v44;
          v35 += 3;
          v32 += 56;
        }

        while (v32);
        if (v16 <= 4)
        {
          v47 = 0;
          v48 = SHIDWORD(v92);
          v94[SHIDWORD(v92)] = 1;
          v49 = *v8;
          v50 = v8[1];
          v51 = v8[2];
          v52 = &v133[2];
          do
          {
            v53 = *(v52 - 1) * v50 + *(v52 - 2) * v49;
            v54 = *v52;
            v52 += 3;
            *&v144[v47] = v53 + v54 * v51;
            v47 += 2;
          }

          while (v47 != 6);
          v33[v48] = -v145;
        }

        v55 = NK_Least_Squares_Core(v142, v133, 4, 0, 0, &v140, &v138, &v137, v87);
        v56 = 0;
        v57 = 0.0;
        do
        {
          v58 = *(&v89 + v56);
          if ((v58 & 0x8000000000000000) == 0)
          {
            v59 = *&v87[v58];
            v8[v58] = v8[v58] + v59;
            v57 = v57 + v59 * v59;
          }

          ++v56;
        }

        while (v56 != 7);
        v61 = v57 <= v30 || v31 == 0;
        ++byte_2A13EE5AA;
        if (!v61 || !v55)
        {
          if (v31 > 9)
          {
            v78 = 1;
          }

          else
          {
            v78 = 2;
          }

          v62 = &unk_2A13EE000;
          goto LABEL_62;
        }

        if (v31 > 8)
        {
          break;
        }

        v29 = v31 + 1;
        v30 = v57;
      }

      while (v57 > 1.0);
      v62 = &unk_2A13EE000;
      if (v31 > 8)
      {
        v78 = 1;
      }

      else
      {
        v63 = 0;
        v64 = v95;
        v65 = &v143;
        v66 = (v14 + 8);
        v67 = (v13 + 4);
        do
        {
          v68 = *(v66 - 2);
          v69 = *v66;
          if (*(v66 - 1))
          {
            v70 = *(v66 - 1);
          }

          else
          {
            v70 = 0.0;
            if (!v69)
            {
              break;
            }
          }

          v66 += 3;
          v71 = v68 - *v10;
          v72 = v70 - v10[1];
          v73 = v69 - v10[2];
          v74 = 1.0 / sqrt(v72 * v72 + v71 * v71 + v73 * v73);
          v64[v63] = v80[v63] * 0.190293673 - v74 * (v72 * -(v8[1] - *(v67 - 1) * 0.190293673) + v71 * -(*v8 - *(v67 - 2) * 0.190293673) + v73 * -(v8[2] - *v67 * 0.190293673)) - v8[3];
          *(v65 - 2) = v71 * v74;
          *(v65 - 1) = v72 * v74;
          *v65 = v73 * v74;
          v65 += 7;
          ++v63;
          v67 += 3;
        }

        while (v63 != 128);
        v75 = 0;
        v76 = 0.0;
        do
        {
          if (v84[v75] == 1)
          {
            v76 = v76 + v64[v75] * v64[v75];
          }

          ++v75;
        }

        while (v75 != 128);
        v77 = v16 * 4.0;
        if (v16 >= 5)
        {
          v77 = 400.0;
        }

        if (v76 <= v77)
        {
          result = 1;
          goto LABEL_63;
        }

        v78 = 4;
      }

LABEL_62:
      result = 0;
      v62[360] = v78;
      goto LABEL_63;
    }

    v20 = &v142[7 * v18];
    v144[0] = 0;
    LODWORD(v137) = 0;
    *v81 = 0;
    v140 = *v10;
    v141 = *(v10 + 2);
    ECEF2Geo(&v140, &WGS84_Datum, &v138);
    v21 = v139;
    if (v139 >= 3.14159265)
    {
      v22 = -6.28318531;
    }

    else
    {
      if (v139 >= -3.14159265)
      {
LABEL_17:
        v23 = v138;
        v24 = __sincos_stret(v138);
        v25 = __sincos_stret(v21);
        v133[0] = -(v24.__sinval * v25.__cosval);
        v133[1] = -(v24.__sinval * v25.__sinval);
        v133[2] = v24.__cosval;
        v133[3] = -v25.__sinval;
        v134 = *&v25.__cosval;
        *&v135 = -(v24.__cosval * v25.__cosval);
        *(&v135 + 1) = -(v24.__cosval * v25.__sinval);
        v136 = -v24.__sinval;
        LODWORD(v26) = vcvtd_n_s64_f64(v23, 0xFuLL);
        v27 = Taylor_sin_cos(v26, v144, &v137);
        LODWORD(v27) = vcvtd_n_s64_f64(v21, 0xFuLL);
        Taylor_sin_cos(v27, &v81[1], v81);
        v28 = vcvtd_n_f64_s32(v81[1] * v137, 0x1EuLL);
        *v20 = vcvtd_n_f64_s32(v137 * v81[0], 0x1EuLL);
        v20[1] = v28;
        v20[2] = vcvtd_n_f64_s32(v144[0], 0xFuLL);
        goto LABEL_18;
      }

      v22 = 6.28318531;
    }

    v21 = v139 + v22;
    v139 = v139 + v22;
    goto LABEL_17;
  }

  result = 0;
LABEL_63:
  v79 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t CAP_LSQ4_Core(uint64_t a1, int a2, uint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  *(a3 + 32) = 0x426D1A94A2000000;
  v4 = a3 + 32;
  *(a3 + 40) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 48) = 0x426D1A94A2000000;
  *(a3 + 72) = 0x426D1A94A2000000;
  *(a3 + 104) = 0x426D1A94A2000000;
  v5 = a2 + (*(a3 + 152) >= 0);
  if (v5 >= 1)
  {
    v6 = 0;
    v16 = 0;
    v7 = (a1 + 16);
    do
    {
      if (v6 == *(a3 + 152))
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 1.0;
      }

      v20 = vnegq_f64(*(v7 - 2));
      v9 = *v7;
      v7 += 3;
      v21 = -v9;
      v22 = v8;
      v10 = *(a3 + 168);
      v23 = *(*(a3 + 160) + 8 * v6);
      umeas(v4, 4u, *(v10 + 8 * v6++), v20.f64, v19, v18, &v16, 1.0e20);
    }

    while (v5 != v6);
  }

  ud2var(v4, 4u, 1, 4u, v17);
  if (v17[0] <= 1000000000.0)
  {
    v12 = 1;
    while (v12 != 4)
    {
      v13 = v17[v12++];
      if (v13 > 1000000000.0)
      {
        if ((v12 - 2) < 3)
        {
          goto LABEL_8;
        }

        break;
      }
    }

    v14 = *(a3 + 128);
    *a3 = *(a3 + 112);
    *(a3 + 16) = v14;
    result = 1;
  }

  else
  {
LABEL_8:
    result = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t CompPr_LSQ4(double (*a1)[3], double *a2, int a3, double *a4, int *a5, unsigned int *a6, double *a7)
{
  v7 = MEMORY[0x2A1C7C4A8](a1);
  v96 = v9;
  v97 = v10;
  v98 = v11;
  v13 = v12;
  v14 = v8;
  v16 = v15;
  v17 = v7;
  v121 = *MEMORY[0x29EDCA608];
  v111 = 0;
  memset(v110, 0, sizeof(v110));
  memset(v109, 0, sizeof(v109));
  v113 = v108;
  v114 = __b;
  v112 = -1;
  dword_2A13EE5A0 = 0;
  memset(v115, 0, sizeof(v115));
  v116 = 0u;
  v117 = 0u;
  v18 = v8;
  v118 = 0.0;
  if (v8 < 1)
  {
    v21 = v8;
    __b[v8] = 5.0;
    v112 = v8;
  }

  else
  {
    memset_pattern16(__b, &unk_299051060, 8 * v8);
    v19 = 5.0;
    if (v14 < 5 || (v19 = 25.0, v14 < 9))
    {
      __b[v18] = v19;
      v112 = v14;
    }

    v20 = 0;
    v21 = v14;
    v22 = *v13;
    v23 = *(v13 + 16);
    v24 = *(v13 + 24);
    do
    {
      v25 = (v17 + 24 * v20);
      v26 = *v25;
      v27 = vsubq_f64(*v25, v22);
      *v106 = v27;
      v28 = v25[1].f64[0] - v23;
      *&v106[16] = v28;
      v29 = 0.0;
      v30 = 2;
      do
      {
        v29 = v29 + *&v106[8 * v30] * *&v106[8 * v30];
        v31 = v30-- + 1;
      }

      while (v31 > 1);
      v32 = 0;
      v33 = &v119[3 * v20];
      v34 = sqrt(v29);
      *v33 = vdivq_f64(v27, vdupq_lane_s64(*&v34, 0));
      v33[1].f64[0] = v28 / v34;
      v35 = vmulq_f64(v26, xmmword_299052690);
      *v120 = vextq_s8(v35, v35, 8uLL);
      *&v120[16] = 0;
      v36 = 0.0;
      do
      {
        v36 = v36 + *&v120[v32] * *&v106[v32];
        v32 += 8;
      }

      while (v32 != 24);
      v108[v20] = *(v16 + 8 * v20) - (v34 + v36 * -0.00000000333564095) - v24;
      ++v20;
    }

    while (v20 != v18);
  }

  v37 = 0;
  v102 = 0;
  v38 = v21 * 25.0;
  v39 = 0.0;
  v100 = vdupq_n_s64(0x4202A05F20000000uLL);
  v99 = v14;
  while (1)
  {
    v103 = v37;
    v40 = v112;
    if ((v112 & 0x80000000) == 0)
    {
      v41 = v113;
      *v104 = 0;
      *v105 = 0;
      *v106 = *v13;
      *&v106[16] = *(v13 + 16);
      ECEF2Geo(v106, &WGS84_Datum, v120);
      v43 = *&v120[8];
      v44 = -6.28318531;
      v101 = v41;
      if (*&v120[8] >= 3.14159265 || (v44 = 6.28318531, *&v120[8] < -3.14159265))
      {
        v43 = *&v120[8] + v44;
        *&v120[8] = *&v120[8] + v44;
      }

      v45 = &v119[3 * v40];
      LODWORD(v42) = vcvtd_n_s64_f64(*v120, 0xFuLL);
      v46 = Taylor_sin_cos(v42, &v105[1], v105);
      LODWORD(v46) = vcvtd_n_s64_f64(v43, 0xFuLL);
      Taylor_sin_cos(v46, &v104[1], v104);
      v47 = vcvtd_n_f64_s32(v104[1] * v105[0], 0x1EuLL);
      *v45 = vcvtd_n_f64_s32(v105[0] * v104[0], 0x1EuLL);
      v45[1] = v47;
      v45[2] = vcvtd_n_f64_s32(v105[1], 0xFuLL);
      v101[v40] = *&v120[16];
      v14 = v99;
    }

    if ((CAP_LSQ4_Core(v119, v14, v109) & 1) == 0)
    {
      result = 0;
      *v98 = v103 + 1;
      dword_2A13EE5A0 = 2;
      goto LABEL_84;
    }

    v48 = v109[0].f64[0];
    v49 = *(v109 + 8);
    v50.f64[0] = v109[1].f64[1];
    v50.f64[1] = v109[0].f64[0];
    if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_f64(v50, v100), vcgtq_f64(*(v109 + 8), v100)))))
    {
      EvLog_v("CompPR_LSQ4: StateVec Innovation Out Of Range! %f %f %f %f", v109[1].f64[1], v109[0].f64[0], v109[0].f64[1], v109[1].f64[0]);
      goto LABEL_83;
    }

    v51 = v109[1].f64[1] + *(v13 + 24);
    *(v13 + 24) = v51;
    v52 = v48 + *v13;
    *v13 = v52;
    v53 = vaddq_f64(v49, *(v13 + 8));
    *(v13 + 8) = v53;
    if (v14 < 1)
    {
      v67 = 0.0;
    }

    else
    {
      v54 = 0;
      do
      {
        v55 = v17 + 24 * v54;
        v56 = *v55;
        v57 = *v55 - v52;
        *v106 = v57;
        v58 = *(v55 + 8);
        v59 = vsubq_f64(v58, v53);
        *&v106[8] = v59;
        v60 = 0.0;
        v61 = 2;
        do
        {
          v60 = v60 + *&v106[8 * v61] * *&v106[8 * v61];
          v62 = v61-- + 1;
        }

        while (v62 > 1);
        v63 = 0;
        v64 = &v119[3 * v54];
        v65 = sqrt(v60);
        *v64 = v57 / v65;
        *(v64 + 1) = vdivq_f64(v59, vdupq_lane_s64(*&v65, 0));
        v58.f64[1] = v56;
        *v120 = vmulq_f64(v58, xmmword_299054440);
        *&v120[16] = 0;
        v66 = 0.0;
        do
        {
          v66 = v66 + *&v120[v63] * *&v106[v63];
          v63 += 8;
        }

        while (v63 != 24);
        v108[v54] = *(v16 + 8 * v54) - (v65 + v66 * -0.00000000333564095) - v51;
        ++v54;
      }

      while (v54 != v18);
      v67 = 0.0;
      v68 = v108;
      v69 = v18;
      do
      {
        v70 = *v68++;
        v67 = v67 + v70 * v70;
        --v69;
      }

      while (v69);
    }

    if (v103)
    {
      break;
    }

LABEL_43:
    v74 = v103 + 1;
    if (v103 <= 3)
    {
      v37 = v103 + 1;
      v39 = v67;
      if (v102 != 2)
      {
        continue;
      }
    }

    goto LABEL_48;
  }

  if (v67 >= v38 && v67 * 8.0 <= v39)
  {
    if (v67 * 128.0 > v39)
    {
      if (v102 == 1)
      {
        v72 = 2;
      }

      else
      {
        v72 = 1;
      }

      v102 = v72;
    }

    goto LABEL_43;
  }

  v74 = v103 + 1;
LABEL_48:
  *v98 = v74;
  *v120 = v52;
  *&v120[8] = v53;
  ECEF2Geo(v120, &WGS84_Datum, v97);
  v75 = v97[1];
  if (v75 >= 3.14159265)
  {
    v76 = -6.28318531;
LABEL_52:
    v75 = v75 + v76;
    v97[1] = v75;
  }

  else if (v75 < -3.14159265)
  {
    v76 = 6.28318531;
    goto LABEL_52;
  }

  v77 = __sincos_stret(*v97);
  v78 = __sincos_stret(v75);
  v115[0] = -(v77.__sinval * v78.__cosval);
  v115[1] = -(v77.__sinval * v78.__sinval);
  v115[2] = v77.__cosval;
  v115[3] = -v78.__sinval;
  v116 = *&v78.__cosval;
  *&v117 = -(v77.__cosval * v78.__cosval);
  *(&v117 + 1) = -(v77.__cosval * v78.__sinval);
  v118 = -v77.__sinval;
  if (v14 < 1)
  {
    v87 = 1;
  }

  else
  {
    v79 = 0;
    do
    {
      v80 = 2;
      do
      {
        *&v106[8 * v80] = *(v17 + 8 * v80) - *(v13 + 8 * v80);
        v81 = v80-- + 1;
      }

      while (v81 > 1);
      v82 = -(v77.__cosval * v78.__sinval) * *&v106[8] + -(v77.__cosval * v78.__cosval) * *v106 + -v77.__sinval * *&v106[16];
      if (v82 <= 0.0)
      {
        v87 = 1;
      }

      else
      {
        v83 = 0.0;
        v84 = &v106[16];
        for (i = 4; i > 1; --i)
        {
          v86 = *v84--;
          v83 = v83 + v86 * v86;
        }

        v87 = -v82 / sqrt(v83) >= -0.087155743;
      }

      ++v79;
      v17 += 24;
    }

    while (v87 && v79 < v18);
  }

  v89 = v67 <= 225000000.0 && v87;
  if (v14 <= 5 && v89)
  {
    Comp_NEDvar_UDU(v110, 4u, 0, v115, v106);
    if (*&v106[16] < 100000000.0)
    {
      v90 = v97[2];
      v91 = 1000 * U4sqrt(*&v106[16]);
      if (v91 <= 500)
      {
        v91 = 500;
      }

      v92 = -500 - v91;
      v93 = v91 + 18000;
      if (v92 < v90 && v93 > v90)
      {
        goto LABEL_81;
      }
    }
  }

  else if (v89)
  {
LABEL_81:
    *v96 = v67;
    result = 1;
    goto LABEL_84;
  }

LABEL_83:
  result = 0;
LABEL_84:
  v95 = *MEMORY[0x29EDCA608];
  return result;
}

void *GNSS_Init_p_list(void)
{
  v2 = *MEMORY[0x29EDCA608];
  g_GN_GPS_Data_p_list = 0u;
  xmmword_2A14541C8 = 0u;
  xmmword_2A14541E8 = 0u;
  *(&g_GN_GPS_Data_p_list + 1) = &g_DB_BB_TTick;
  qword_2A1454138 = &g_DB_Raw_Meas;
  qword_2A1454140 = &g_DB_SV_Subframes;
  unk_2A1454148 = &g_DB_SV_AzEl;
  qword_2A1454150 = &g_DB_Acq_Aid_Table;
  qword_2A1454158 = &g_DB_Time_Sync;
  qword_2A1454160 = &g_DB_SV_Nav_Mess;
  *&xmmword_2A1454168 = &g_DB_Chan_Reset;
  *(&xmmword_2A1454168 + 1) = &g_DB_Sys_Status;
  qword_2A1454178 = &g_DB_Nav_Soln;
  qword_2A1454180 = &g_DB_SV_State_Table;
  *&xmmword_2A1454188 = &g_DB_Track_Meas;
  *(&xmmword_2A1454188 + 1) = &g_DB_Sensor;
  unk_2A1454198 = &g_DB_ROF_Assist;
  qword_2A14541A0 = &g_G5K_ME_SD;
  unk_2A14541A8 = &g_SV_Gen_Meas_SD;
  qword_2A14541B0 = &g_Nav_Kalman_SD;
  unk_2A14541B8 = &g_SV_Data_Decode_SD;
  qword_2A14541C0 = &g_SV_State_Update_SD;
  *&xmmword_2A14541C8 = &g_Pre_Positioning_SD;
  qword_2A14541D8 = &g_Nav_Kalman_WD;
  unk_2A14541E0 = &g_SV_Data_Decode_WD;
  *&xmmword_2A14541E8 = &g_SV_State_Update_WD;
  qword_2A14541F8 = &g_GNSS_Debug_Data;
  qword_2A1454200 = &g_GN_GNSS_IntVersion;
  qword_2A1454208 = &g_GN_GNSS_Config;
  qword_2A1454210 = &g_GN_GNSS_Nav_Data;
  qword_2A1454218 = &g_GN_GNSS_Dbg_Data;
  qword_2A1454220 = &g_NV_Ram;
  qword_2A1453F30 = &g_CBuff_Meas;
  unk_2A1453F38 = &g_CBuff_Ctrl;
  g_CB_Meas = &g_CBuff_Meas;
  *algn_2A1453F28 = &g_CBuff_Meas;
  qword_2A1454228 = &g_NA_Ram;
  qword_2A1454230 = &g_CB_Meas;
  qword_2A1453F50 = &g_CBuff_Ctrl;
  unk_2A1453F58 = &g_CBuff_NMEA;
  g_CB_Ctrl = &g_CBuff_Ctrl;
  *algn_2A1453F48 = &g_CBuff_Ctrl;
  qword_2A1453F70 = &g_CBuff_NMEA;
  unk_2A1453F78 = &g_CBuff_NMEA + 14336;
  g_CB_NMEA = &g_CBuff_NMEA;
  *algn_2A1453F68 = &g_CBuff_NMEA;
  qword_2A1454238 = &g_CB_Ctrl;
  qword_2A1454240 = &g_CB_NMEA;
  qword_2A1454110 = &g_CBuff_NDbg;
  qword_2A1454118 = &g_CBuff_ELog;
  g_CB_NDbg = &g_CBuff_NDbg;
  *&dword_2A1454108 = &g_CBuff_NDbg;
  qword_2A14540F0 = &g_CBuff_ELog;
  qword_2A14540F8 = &g_CBuff_GDbg;
  g_CB_ELog = &g_CBuff_ELog;
  *&dword_2A14540E8 = &g_CBuff_ELog;
  qword_2A1454248 = &g_CB_NDbg;
  qword_2A1454250 = &g_CB_ELog;
  qword_2A1453F90 = &g_CBuff_GDbg;
  qword_2A1453F98 = &g_CB_Meas;
  g_CB_GDbg = &g_CBuff_GDbg;
  *&dword_2A1453F88 = &g_CBuff_GDbg;
  qword_2A1454258 = &g_CB_GDbg;
  LODWORD(g_GN_GPS_Data_p_list) = 2;
  p_api = &g_GN_GPS_Data_p_list;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;
  v0 = *MEMORY[0x29EDCA608];

  return memcpy(&GN_GPS_Data_p_list_reference, &g_GN_GPS_Data_p_list, 0x138uLL);
}

void *GNSS_Clear_DataAreas(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v206 = *MEMORY[0x29EDCA608];
  bzero(v205, 0x6E60uLL);
  v1 = -7168;
  do
  {
    v2 = v205 + v1;
    *(v2 + 967) = 0;
    *(v2 + 7748) = 0;
    *(v2 + 3872) = 0;
    *(v2 + 973) = 0;
    *(v2 + 485) = 0uLL;
    *(&v205[485] + v1 + 14) = 0;
    v1 += 56;
  }

  while (v1);
  v3 = &v205[485] + 8;
  v4 = 4608;
  do
  {
    *(v3 - 2) = 0;
    *(v3 - 3) = 0;
    *(v3 - 2) = 0;
    *(v3 - 4) = 0;
    *(v3 - 11) = 0;
    v3 += 36;
    v4 -= 36;
  }

  while (v4);
  v5 = -15872;
  do
  {
    v6 = (&v205[1763] + v5 + 8);
    *(v6 + 105) = 0uLL;
    v6[5] = 0uLL;
    v6[6] = 0uLL;
    v6[3] = 0uLL;
    v6[4] = 0uLL;
    v6[1] = 0uLL;
    v6[2] = 0uLL;
    *v6 = 0uLL;
    v5 += 124;
  }

  while (v5);
  *&v205[1765] = 0;
  DWORD2(v205[1765]) = 0;
  *(&v205[1763] + 8) = 0u;
  *(&v205[1764] + 6) = 0;
  memcpy(&g_G5K_ME_SD, v205, 0x6E5CuLL);
  qword_2A1424B40 = &g_G5K_ME_SD;
  bzero(&g_SV_Gen_Meas_SD, 0xC70uLL);
  bzero(v205, 0xCF84uLL);
  v7 = &v205[354] + 4;
  v8 = 392;
  do
  {
    *(v7 - 3) = 0;
    *(v7 - 8) = 0;
    *(v7 - 3) = 0;
    *(v7 - 8) = 0;
    *(v7 - 1) = 0;
    *v7 = 0;
    v7 += 28;
    v8 -= 28;
  }

  while (v8);
  *(&v205[402] + 15) = 0u;
  *(&v205[401] + 4) = 0u;
  *(&v205[402] + 4) = 0u;
  *(&v205[399] + 4) = 0u;
  *(&v205[400] + 4) = 0u;
  *(&v205[397] + 4) = 0u;
  *(&v205[398] + 4) = 0u;
  *(&v205[395] + 4) = 0u;
  *(&v205[396] + 4) = 0u;
  *(&v205[393] + 4) = 0u;
  *(&v205[394] + 4) = 0u;
  *(&v205[391] + 4) = 0u;
  *(&v205[392] + 4) = 0u;
  *(&v205[389] + 4) = 0u;
  *(&v205[390] + 4) = 0u;
  *(&v205[387] + 4) = 0u;
  *(&v205[388] + 4) = 0u;
  *(&v205[385] + 4) = 0u;
  *(&v205[386] + 4) = 0u;
  *(&v205[383] + 4) = 0u;
  *(&v205[384] + 4) = 0u;
  *(&v205[381] + 4) = 0u;
  *(&v205[382] + 4) = 0u;
  *(&v205[379] + 4) = 0u;
  *(&v205[380] + 4) = 0u;
  *(&v205[377] + 4) = 0u;
  *(&v205[378] + 4) = 0u;
  bzero(&v205[404], 0x1461uLL);
  bzero(&v205[730] + 2, 0xA1E0uLL);
  bzero(&v205[3320] + 4, 0x498uLL);
  memcpy(&g_SV_Data_Decode_SD, v205, 0xD41CuLL);
  bzero(v205, 0x10EF0uLL);
  s_Nav_Kalman_SD::s_Nav_Kalman_SD(v205);
  g_Nav_Kalman_SD = v205[0];
  dword_2A13C7AF8 = v205[1];
  unk_2A13C7AFC = *(&v205[1] + 4);
  memcpy(&unk_2A13C7B04, &v205[1] + 12, 0x10ED4uLL);
  g_SV_State_Update_SD = 0u;
  unk_2A14398BC = 0u;
  xmmword_2A14398CC = 0u;
  unk_2A14398DC = 0u;
  xmmword_2A14398EC = 0u;
  unk_2A14398FC = 0u;
  xmmword_2A143990C = 0u;
  unk_2A143991C = 0u;
  xmmword_2A143992C = 0u;
  unk_2A143993C = 0u;
  xmmword_2A143994C = 0u;
  unk_2A143995C = 0u;
  xmmword_2A143996C = 0u;
  unk_2A143997C = 0u;
  xmmword_2A143998C = 0u;
  unk_2A143999C = 0u;
  xmmword_2A14399AC = 0u;
  unk_2A14399BC = 0u;
  xmmword_2A14399CC = 0u;
  unk_2A14399DC = 0u;
  xmmword_2A14399EC = 0u;
  unk_2A14399FC = 0u;
  xmmword_2A1439A0C = 0u;
  unk_2A1439A1C = 0u;
  xmmword_2A1439A2C = 0u;
  *(&xmmword_2A1439A2C + 15) = 0;
  byte_2A1439A70 = 0;
  xmmword_2A1439A50 = 0u;
  unk_2A1439A60 = 0u;
  g_Pre_Positioning_SD = 0u;
  g_SV_Data_Decode_WD = 0u;
  unk_2A1439A88 = 0u;
  xmmword_2A1439A98 = 0u;
  unk_2A1439AA8 = 0u;
  xmmword_2A1439AB8 = 0u;
  unk_2A1439AC8 = 0u;
  xmmword_2A1439AD8 = 0u;
  unk_2A1439AE8 = 0u;
  xmmword_2A1439AF8 = 0u;
  unk_2A1439B08 = 0u;
  xmmword_2A1439B18 = 0u;
  unk_2A1439B28 = 0u;
  unk_2A1439B32 = 0u;
  memset(v204, 0, 28);
  v203 = 0u;
  v202 = 0u;
  v201 = 0u;
  v200 = 0u;
  v199 = 0u;
  v198 = 0u;
  v197 = 0u;
  v196 = 0u;
  v195 = 0u;
  v194 = 0u;
  bzero(v193, 0x50BuLL);
  memset(&v192[156], 0, 52);
  memset(&v192[120], 0, 135);
  memset(&v192[76], 0, 171);
  memset(v192, 0, 289);
  bzero(v191, 0x120BuLL);
  bzero(v190, 0x3A38uLL);
  bzero(v189, 0x3A38uLL);
  bzero(v205, 0x5B68uLL);
  memset(v188, 0, sizeof(v188));
  LOWORD(v187) = 0;
  BYTE2(v187) = 0;
  memset(v186, 0, 56);
  LOWORD(v185) = 0;
  BYTE2(v185) = 0;
  memset(v184, 0, 56);
  BYTE2(v183) = 0;
  LOWORD(v183) = 0;
  memset(v182, 0, 56);
  BYTE2(v181) = 0;
  LOWORD(v181) = 0;
  memset(v180, 0, sizeof(v180));
  BYTE2(v179) = 0;
  LOWORD(v179) = 0;
  memset(v178, 0, 56);
  BYTE2(v177) = 0;
  LOWORD(v177) = 0;
  memset(&v176[15], 0, 104);
  memset(&v176[14] + 4, 0, 12);
  memset(&v176[10], 0, 53);
  memset(&v176[9] + 4, 0, 12);
  memset(&v176[5], 0, 53);
  memset(&v176[4] + 4, 0, 12);
  memset(v176, 0, 61);
  BYTE2(v175) = 0;
  LOWORD(v175) = 0;
  memset(v174, 0, 56);
  BYTE2(v173) = 0;
  LOWORD(v173) = 0;
  memset(&v172[7], 0, 56);
  memset(&v172[6] + 4, 0, 12);
  memset(&v172[2], 0, 61);
  v172[0] = 0uLL;
  *(&v172[1] + 5) = 0;
  *&v172[1] = 0;
  memset(v171, 0, 36);
  BYTE2(v170) = 0;
  LOWORD(v170) = 0;
  memset(&v169[5], 0, 112);
  memset(&v169[4] + 4, 0, 12);
  memset(v169, 0, 53);
  BYTE2(v168) = 0;
  LOWORD(v168) = 0;
  memset(&v167[31], 0, 105);
  memset(v167, 0, 495);
  memset(&v166[2], 0, 229);
  memset(v159, 0, sizeof(v159));
  memset(&__src[3984], 0, 33);
  memset(&v192[121], 0, 131);
  *(&v187 + 1) = 0;
  *(&v187 + 3) = 0;
  *(&v185 + 1) = 0;
  *(&v185 + 3) = 0;
  *(&v183 + 1) = 0;
  *(&v183 + 3) = 0;
  *(&v181 + 1) = 0;
  *(&v181 + 3) = 0;
  *(&v179 + 1) = 0;
  *(&v179 + 3) = 0;
  *(&v177 + 1) = 0;
  *(&v177 + 3) = 0;
  *(&v175 + 1) = 0;
  *(&v175 + 3) = 0;
  *(&v173 + 1) = 0;
  *(&v173 + 3) = 0;
  *(&v170 + 1) = 0;
  *(&v170 + 3) = 0;
  *(&v168 + 1) = 0;
  *(&v168 + 3) = 0;
  memset(v166, 0, 27);
  v165 = 0u;
  v164 = 0u;
  v163 = 0u;
  v194 = 0uLL;
  DWORD2(v195) = 0;
  *&v195 = 0;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  memset(v204, 0, 25);
  bzero(&v193[2], 0x509uLL);
  memset(&v192[157] + 3, 0, 45);
  memset(&v192[76] + 2, 0, 160);
  *(&v192[114] + 3) = 0u;
  *(&v192[64] + 3) = 0u;
  *(&v192[68] + 1) = 0u;
  *(v192 + 3) = 0u;
  *(&v192[4] + 3) = 0u;
  *(&v192[8] + 3) = 0u;
  *(&v192[12] + 3) = 0u;
  *(&v192[16] + 3) = 0u;
  *(&v192[20] + 3) = 0u;
  *(&v192[24] + 3) = 0u;
  *(&v192[28] + 3) = 0u;
  *(&v192[32] + 3) = 0u;
  *(&v192[36] + 3) = 0u;
  *(&v192[40] + 3) = 0u;
  *(&v192[44] + 3) = 0u;
  *(&v192[48] + 3) = 0u;
  *(&v192[52] + 3) = 0u;
  *(&v192[56] + 3) = 0u;
  *(&v192[60] + 3) = 0u;
  bzero(&v191[6], 0x1205uLL);
  bzero(&v190[3], 0x3A35uLL);
  bzero(&v189[3], 0x3A35uLL);
  bzero(v205 + 3, 0x5B65uLL);
  memset(&v188[1], 0, 19);
  memset(v186 + 3, 0, 48);
  *&v186[3] = 0;
  memset(v184 + 3, 0, 48);
  *&v184[3] = 0;
  memset(v182 + 3, 0, 48);
  *&v182[3] = 0;
  memset(v180 + 3, 0, 96);
  v180[6] = 0u;
  memset(v178 + 3, 0, 53);
  memset(&v176[18] + 3, 0, 48);
  *&v176[21] = 0;
  memset(&v176[16] + 15, 0, 17);
  memset(&v176[15] + 7, 0, 17);
  memset(&v176[10] + 4, 0, 49);
  memset(&v176[5] + 4, 0, 49);
  memset(v176 + 4, 0, 57);
  memset(v174 + 3, 0, 53);
  memset(&v172[7] + 3, 0, 53);
  memset(&v172[2] + 4, 0, 57);
  *(v172 + 12) = 0uLL;
  *(v172 + 4) = 0;
  BYTE12(v172[1]) = 0;
  *(v171 + 7) = 0uLL;
  *(&v171[1] + 12) = 0;
  *(&v171[1] + 7) = 0;
  memset(&v169[5] + 3, 0, 109);
  memset(v169 + 4, 0, 49);
  memset(&v167[31] + 3, 0, 102);
  *(&v167[29] + 15) = 0u;
  *(&v167[29] + 5) = 0u;
  bzero(v162, 0x314uLL);
  v161 = 0;
  v160 = 0uLL;
  bzero(__src, 0x3E3DuLL);
  xmmword_2A13D8A58 = v202;
  unk_2A13D8A68 = v203;
  xmmword_2A13D8A78 = v204[0];
  *(&xmmword_2A13D8A78 + 12) = *(v204 + 12);
  xmmword_2A13D8A18 = v198;
  unk_2A13D8A28 = v199;
  xmmword_2A13D8A38 = v200;
  unk_2A13D8A48 = v201;
  g_Nav_Kalman_WD = v194;
  unk_2A13D89E8 = v195;
  xmmword_2A13D89F8 = v196;
  unk_2A13D8A08 = v197;
  word_2A13D8A9C = 0;
  unk_2A13D8A94 = 0;
  memcpy(&unk_2A13D8A9E, v193, 0x50BuLL);
  xmmword_2A13D8FA9 = *&v192[156];
  unk_2A13D8FB9 = *&v192[160];
  xmmword_2A13D8FC9 = *&v192[164];
  dword_2A13D8FD9 = v192[168];
  byte_2A13D8FDD = 0;
  word_2A13D8FDE = 0;
  dword_2A13D8FE0 = 0;
  xmmword_2A13D9044 = *&v192[144];
  unk_2A13D9054 = *&v192[148];
  unk_2A13D9063 = *(&v192[151] + 3);
  xmmword_2A13D9004 = *&v192[128];
  unk_2A13D9014 = *&v192[132];
  xmmword_2A13D9024 = *&v192[136];
  unk_2A13D9034 = *&v192[140];
  xmmword_2A13D8FE4 = *&v192[120];
  *algn_2A13D8FF4 = *&v192[124];
  *(&qword_2A13D906B + 7) = 0;
  qword_2A13D906B = 0;
  xmmword_2A13D90F6 = *&v192[108];
  unk_2A13D9106 = *&v192[112];
  unk_2A13D9111 = *(&v192[114] + 3);
  xmmword_2A13D90B6 = *&v192[92];
  unk_2A13D90C6 = *&v192[96];
  xmmword_2A13D90D6 = *&v192[100];
  unk_2A13D90E6 = *&v192[104];
  xmmword_2A13D9076 = *&v192[76];
  unk_2A13D9086 = *&v192[80];
  xmmword_2A13D9096 = *&v192[84];
  unk_2A13D90A6 = *&v192[88];
  memcpy(&unk_2A13D9121, v192, 0x121uLL);
  memcpy(&unk_2A13D9242, v191, 0x120BuLL);
  memcpy(&g_Nav_Kalman_WD + 6773, v190, 0x3A38uLL);
  memcpy(&g_Nav_Kalman_WD + 21677, v189, 0x3A38uLL);
  memcpy(&g_Nav_Kalman_WD + 36581, v205, 0x5B68uLL);
  v9 = &g_Nav_Kalman_WD + 59981;
  *v9 = *v188;
  *(v9 + 4) = *&v188[16];
  *(&g_Nav_Kalman_WD + 60001) = v187;
  v10 = &g_Nav_Kalman_WD + 60017;
  v11 = v186[1];
  *v10 = v186[0];
  *(v10 + 1) = v11;
  *(v10 + 2) = v186[2];
  *(v10 + 6) = *&v186[3];
  *(&g_Nav_Kalman_WD + 60073) = v185;
  v12 = &g_Nav_Kalman_WD + 60089;
  v13 = v184[0];
  v14 = v184[1];
  v15 = v184[2];
  *(v12 + 6) = *&v184[3];
  *(v12 + 1) = v14;
  *(v12 + 2) = v15;
  *v12 = v13;
  *(&g_Nav_Kalman_WD + 60145) = v183;
  v16 = &g_Nav_Kalman_WD + 60161;
  *(v16 + 6) = *&v182[3];
  v17 = v182[2];
  v18 = v182[0];
  *(v16 + 1) = v182[1];
  *(v16 + 2) = v17;
  *v16 = v18;
  *(&g_Nav_Kalman_WD + 60217) = v181;
  v19 = (&g_Nav_Kalman_WD + 60233);
  v20 = v180[1];
  *v19 = v180[0];
  v19[1] = v20;
  v21 = v180[2];
  v22 = v180[3];
  v23 = v180[6];
  v24 = v180[4];
  v19[5] = v180[5];
  v19[6] = v23;
  v19[3] = v22;
  v19[4] = v24;
  v19[2] = v21;
  *(&g_Nav_Kalman_WD + 60345) = v179;
  v25 = &g_Nav_Kalman_WD + 60361;
  v26 = v178[0];
  v27 = v178[1];
  v28 = v178[2];
  *(v25 + 6) = *&v178[3];
  *(v25 + 1) = v27;
  *(v25 + 2) = v28;
  *v25 = v26;
  *(&g_Nav_Kalman_WD + 60417) = v177;
  v29 = &g_Nav_Kalman_WD + 60433;
  v30 = v176[18];
  v31 = v176[19];
  v32 = v176[20];
  *(v29 + 6) = *&v176[21];
  *(v29 + 1) = v31;
  *(v29 + 2) = v32;
  *v29 = v30;
  v33 = &g_Nav_Kalman_WD + 60489;
  v33[2] = 0;
  *(&g_Nav_Kalman_WD + 15123) = 0;
  *v33 = 0;
  *(&g_Nav_Kalman_WD + 60496) = 0;
  v34 = &g_Nav_Kalman_WD + 60497;
  v35 = *(&v176[16] + 8);
  *(v34 + 2) = *(&v176[17] + 1);
  *v34 = v35;
  v36 = &g_Nav_Kalman_WD + 60521;
  v37 = v176[15];
  *(v36 + 2) = *&v176[16];
  *v36 = v37;
  v38 = &g_Nav_Kalman_WD + 60545;
  v39 = *(&v176[14] + 4);
  *(v38 + 2) = HIDWORD(v176[14]);
  *v38 = v39;
  v40 = &g_Nav_Kalman_WD + 60557;
  v40[2] = 0;
  *(&g_Nav_Kalman_WD + 15140) = 0;
  *v40 = 0;
  v41 = &g_Nav_Kalman_WD + 60564;
  v42 = v176[10];
  v43 = v176[11];
  v44 = v176[12];
  *(v41 + 45) = *(&v176[12] + 13);
  *(v41 + 1) = v43;
  *(v41 + 2) = v44;
  *v41 = v42;
  v45 = &g_Nav_Kalman_WD + 60617;
  v46 = *(&v176[9] + 4);
  *(v45 + 2) = HIDWORD(v176[9]);
  *v45 = v46;
  v47 = &g_Nav_Kalman_WD + 60629;
  v47[2] = 0;
  *v47 = 0;
  *(&g_Nav_Kalman_WD + 15158) = 0;
  v48 = &g_Nav_Kalman_WD + 60636;
  v49 = v176[5];
  v50 = v176[6];
  v51 = v176[7];
  *(v48 + 45) = *(&v176[7] + 13);
  *(v48 + 1) = v50;
  *(v48 + 2) = v51;
  *v48 = v49;
  v52 = &g_Nav_Kalman_WD + 60689;
  v53 = *(&v176[4] + 4);
  *(v52 + 2) = HIDWORD(v176[4]);
  *v52 = v53;
  v54 = &g_Nav_Kalman_WD + 60701;
  v54[2] = 0;
  *v54 = 0;
  *(&g_Nav_Kalman_WD + 15176) = 0;
  v55 = (&g_Nav_Kalman_WD + 60708);
  v56 = v176[0];
  v57 = v176[1];
  v58 = v176[2];
  *(v55 + 45) = *(&v176[2] + 13);
  v55[1] = v57;
  v55[2] = v58;
  *v55 = v56;
  *(&g_Nav_Kalman_WD + 60769) = v175;
  v59 = &g_Nav_Kalman_WD + 60785;
  v60 = v174[0];
  v61 = v174[1];
  v62 = v174[2];
  *(v59 + 6) = *&v174[3];
  *(v59 + 1) = v61;
  *(v59 + 2) = v62;
  *(&g_Nav_Kalman_WD + 60841) = v173;
  *v59 = v60;
  v63 = &g_Nav_Kalman_WD + 60857;
  v64 = v172[7];
  v65 = v172[8];
  v66 = v172[9];
  *(v63 + 6) = *&v172[10];
  *(v63 + 1) = v65;
  *(v63 + 2) = v66;
  *v63 = v64;
  v67 = &g_Nav_Kalman_WD + 60913;
  v68 = *(&v172[6] + 4);
  *(v67 + 2) = HIDWORD(v172[6]);
  *v67 = v68;
  v69 = &g_Nav_Kalman_WD + 60925;
  v69[2] = 0;
  *v69 = 0;
  *(&g_Nav_Kalman_WD + 15232) = 0;
  v70 = (&g_Nav_Kalman_WD + 60932);
  v71 = v172[2];
  v72 = v172[3];
  v73 = v172[4];
  *(v70 + 45) = *(&v172[4] + 13);
  v70[1] = v72;
  v70[2] = v73;
  *v70 = v71;
  v74 = (&g_Nav_Kalman_WD + 60993);
  *(v74 + 3) = 0;
  *v74 = 0;
  *(&g_Nav_Kalman_WD + 15250) = 0;
  v75 = (&g_Nav_Kalman_WD + 61004);
  v76 = v172[0];
  *(v75 + 13) = *(v172 + 13);
  *v75 = v76;
  v77 = &g_Nav_Kalman_WD + 61033;
  v78 = v171[0];
  v79 = v171[1];
  *(v77 + 8) = v171[2];
  *v77 = v78;
  *(v77 + 1) = v79;
  v80 = &g_Nav_Kalman_WD + 61069;
  v80[2] = 0;
  *v80 = 0;
  *(&g_Nav_Kalman_WD + 61072) = 0;
  *(&g_Nav_Kalman_WD + 61073) = v170;
  v81 = (&g_Nav_Kalman_WD + 61089);
  v82 = v169[6];
  *v81 = v169[5];
  v81[1] = v82;
  v83 = v169[7];
  v84 = v169[8];
  v85 = v169[11];
  v86 = v169[9];
  v81[5] = v169[10];
  v81[6] = v85;
  v81[3] = v84;
  v81[4] = v86;
  v81[2] = v83;
  v87 = &g_Nav_Kalman_WD + 61201;
  v88 = *(&v169[4] + 4);
  *(v87 + 2) = HIDWORD(v169[4]);
  *v87 = v88;
  v89 = &g_Nav_Kalman_WD + 61213;
  v89[2] = 0;
  *(&g_Nav_Kalman_WD + 15304) = 0;
  *v89 = 0;
  v90 = &g_Nav_Kalman_WD + 61220;
  v91 = v169[0];
  v92 = v169[1];
  v93 = v169[2];
  *(v90 + 45) = *(&v169[2] + 13);
  *(v90 + 1) = v92;
  *(v90 + 2) = v93;
  *v90 = v91;
  *(&g_Nav_Kalman_WD + 61273) = v168;
  v94 = (&g_Nav_Kalman_WD + 61289);
  v95 = v167[32];
  *v94 = v167[31];
  v94[1] = v95;
  v96 = v167[33];
  v97 = v167[34];
  *(v94 + 89) = *(&v167[36] + 9);
  v98 = v167[36];
  v94[4] = v167[35];
  v94[5] = v98;
  v94[2] = v96;
  v94[3] = v97;
  v99 = (&g_Nav_Kalman_WD + 61394);
  *(v99 + 6) = 0;
  *v99 = 0;
  *(&g_Nav_Kalman_WD + 61423) = 0;
  xmmword_2A13E79B8 = 0u;
  memcpy(&g_Nav_Kalman_WD + 61427, v167, 0x1EFuLL);
  v100 = &g_Nav_Kalman_WD + 61922;
  v101 = v166[15];
  *(v100 + 12) = v166[14];
  *(v100 + 13) = v101;
  *(v100 + 221) = *(&v166[15] + 13);
  v102 = v166[11];
  *(v100 + 8) = v166[10];
  *(v100 + 9) = v102;
  v103 = v166[13];
  *(v100 + 10) = v166[12];
  *(v100 + 11) = v103;
  v104 = v166[7];
  *(v100 + 4) = v166[6];
  *(v100 + 5) = v104;
  v105 = v166[9];
  *(v100 + 6) = v166[8];
  *(v100 + 7) = v105;
  v106 = v166[3];
  *v100 = v166[2];
  *(v100 + 1) = v106;
  v107 = v166[5];
  *(v100 + 2) = v166[4];
  *(v100 + 3) = v107;
  *(&g_Nav_Kalman_WD + 62151) = 0;
  v108 = (&g_Nav_Kalman_WD + 62152);
  v109 = v166[0];
  v108[2] = v165;
  v108[3] = v109;
  *(v108 + 59) = *(v166 + 11);
  v110 = v164;
  v111 = v163;
  *(&g_Nav_Kalman_WD + 62227) = 0;
  *v108 = v111;
  v108[1] = v110;
  v112 = &g_Nav_Kalman_WD + 62229;
  *v112 = 0;
  *(&g_Nav_Kalman_WD + 15558) = 0;
  *(&g_Nav_Kalman_WD + 62236) = 0;
  v112[2] = 0;
  v113 = &g_Nav_Kalman_WD + 62237;
  *v113 = 0;
  *(&g_Nav_Kalman_WD + 15560) = 0;
  *(&g_Nav_Kalman_WD + 62244) = 0;
  v113[2] = 0;
  v114 = &g_Nav_Kalman_WD + 62245;
  *v114 = 0;
  *(&g_Nav_Kalman_WD + 15562) = 0;
  *(&g_Nav_Kalman_WD + 62252) = 0;
  v114[2] = 0;
  v115 = &g_Nav_Kalman_WD + 62253;
  *v115 = 0;
  *(&g_Nav_Kalman_WD + 15564) = 0;
  *(&g_Nav_Kalman_WD + 62260) = 0;
  v115[2] = 0;
  v116 = &g_Nav_Kalman_WD + 62261;
  v116[2] = 0;
  *(&g_Nav_Kalman_WD + 15566) = 0;
  *(&g_Nav_Kalman_WD + 62268) = 0;
  *v116 = 0;
  v117 = &g_Nav_Kalman_WD + 62269;
  v117[2] = 0;
  *(&g_Nav_Kalman_WD + 15568) = 0;
  *(&g_Nav_Kalman_WD + 62276) = 0;
  *v117 = 0;
  v118 = &g_Nav_Kalman_WD + 62277;
  v118[2] = 0;
  *(&g_Nav_Kalman_WD + 15570) = 0;
  *(&g_Nav_Kalman_WD + 62284) = 0;
  *v118 = 0;
  v119 = &g_Nav_Kalman_WD + 62285;
  v119[2] = 0;
  *(&g_Nav_Kalman_WD + 15572) = 0;
  *(&g_Nav_Kalman_WD + 62292) = 0;
  *v119 = 0;
  v120 = &g_Nav_Kalman_WD + 62293;
  v120[2] = 0;
  *(&g_Nav_Kalman_WD + 15574) = 0;
  *(&g_Nav_Kalman_WD + 62300) = 0;
  *v120 = 0;
  v121 = &g_Nav_Kalman_WD + 62301;
  v121[2] = 0;
  *(&g_Nav_Kalman_WD + 15576) = 0;
  *(&g_Nav_Kalman_WD + 62308) = 0;
  *v121 = 0;
  v122 = &g_Nav_Kalman_WD + 62309;
  v122[2] = 0;
  *(&g_Nav_Kalman_WD + 15578) = 0;
  *(&g_Nav_Kalman_WD + 62316) = 0;
  *v122 = 0;
  v123 = &g_Nav_Kalman_WD + 62317;
  v123[2] = 0;
  *(&g_Nav_Kalman_WD + 15580) = 0;
  *(&g_Nav_Kalman_WD + 62324) = 0;
  *v123 = 0;
  v124 = &g_Nav_Kalman_WD + 62325;
  v124[2] = 0;
  *(&g_Nav_Kalman_WD + 15582) = 0;
  *(&g_Nav_Kalman_WD + 62332) = 0;
  *v124 = 0;
  v125 = &g_Nav_Kalman_WD + 62333;
  v125[2] = 0;
  *(&g_Nav_Kalman_WD + 15584) = 0;
  *(&g_Nav_Kalman_WD + 62340) = 0;
  *v125 = 0;
  v126 = &g_Nav_Kalman_WD + 62341;
  v126[2] = 0;
  *(&g_Nav_Kalman_WD + 15586) = 0;
  *(&g_Nav_Kalman_WD + 62348) = 0;
  *v126 = 0;
  v127 = &g_Nav_Kalman_WD + 62349;
  v127[2] = 0;
  *(&g_Nav_Kalman_WD + 15588) = 0;
  *(&g_Nav_Kalman_WD + 62356) = 0;
  *v127 = 0;
  v128 = &g_Nav_Kalman_WD + 62357;
  v128[2] = 0;
  *(&g_Nav_Kalman_WD + 15590) = 0;
  *(&g_Nav_Kalman_WD + 62364) = 0;
  *v128 = 0;
  v129 = &g_Nav_Kalman_WD + 62365;
  v129[2] = 0;
  *(&g_Nav_Kalman_WD + 15592) = 0;
  *(&g_Nav_Kalman_WD + 62372) = 0;
  *v129 = 0;
  v130 = &g_Nav_Kalman_WD + 62373;
  v130[2] = 0;
  *(&g_Nav_Kalman_WD + 15594) = 0;
  *(&g_Nav_Kalman_WD + 62380) = 0;
  *v130 = 0;
  v131 = &g_Nav_Kalman_WD + 62381;
  v131[2] = 0;
  *(&g_Nav_Kalman_WD + 15596) = 0;
  *(&g_Nav_Kalman_WD + 62388) = 0;
  *v131 = 0;
  v132 = &g_Nav_Kalman_WD + 62389;
  v132[2] = 0;
  *(&g_Nav_Kalman_WD + 15598) = 0;
  *(&g_Nav_Kalman_WD + 62396) = 0;
  *v132 = 0;
  v133 = &g_Nav_Kalman_WD + 62397;
  v133[2] = 0;
  *(&g_Nav_Kalman_WD + 15600) = 0;
  *(&g_Nav_Kalman_WD + 62404) = 0;
  *v133 = 0;
  v134 = &g_Nav_Kalman_WD + 62405;
  v134[2] = 0;
  *(&g_Nav_Kalman_WD + 15602) = 0;
  *(&g_Nav_Kalman_WD + 62412) = 0;
  *v134 = 0;
  v135 = &g_Nav_Kalman_WD + 62413;
  v135[2] = 0;
  *(&g_Nav_Kalman_WD + 15604) = 0;
  *(&g_Nav_Kalman_WD + 62420) = 0;
  *v135 = 0;
  v136 = &g_Nav_Kalman_WD + 62421;
  v136[2] = 0;
  *(&g_Nav_Kalman_WD + 15606) = 0;
  *(&g_Nav_Kalman_WD + 62428) = 0;
  *v136 = 0;
  v137 = &g_Nav_Kalman_WD + 62429;
  v137[2] = 0;
  *(&g_Nav_Kalman_WD + 15608) = 0;
  *(&g_Nav_Kalman_WD + 62436) = 0;
  *v137 = 0;
  v138 = &g_Nav_Kalman_WD + 62437;
  v138[2] = 0;
  *(&g_Nav_Kalman_WD + 15610) = 0;
  *(&g_Nav_Kalman_WD + 62444) = 0;
  *v138 = 0;
  v139 = &g_Nav_Kalman_WD + 62445;
  v139[2] = 0;
  *(&g_Nav_Kalman_WD + 15612) = 0;
  *(&g_Nav_Kalman_WD + 62452) = 0;
  *v139 = 0;
  v140 = &g_Nav_Kalman_WD + 62453;
  v140[2] = 0;
  *(&g_Nav_Kalman_WD + 15614) = 0;
  *(&g_Nav_Kalman_WD + 62460) = 0;
  *v140 = 0;
  v141 = &g_Nav_Kalman_WD + 62461;
  v141[2] = 0;
  *(&g_Nav_Kalman_WD + 15616) = 0;
  *(&g_Nav_Kalman_WD + 62468) = 0;
  *v141 = 0;
  v142 = &g_Nav_Kalman_WD + 62469;
  v142[2] = 0;
  *(&g_Nav_Kalman_WD + 15618) = 0;
  *(&g_Nav_Kalman_WD + 62476) = 0;
  *v142 = 0;
  v143 = &g_Nav_Kalman_WD + 62477;
  v143[2] = 0;
  *(&g_Nav_Kalman_WD + 15620) = 0;
  *(&g_Nav_Kalman_WD + 62484) = 0;
  *v143 = 0;
  v144 = &g_Nav_Kalman_WD + 62485;
  v144[2] = 0;
  *v144 = 0;
  *(&g_Nav_Kalman_WD + 15622) = 0;
  v145 = &g_Nav_Kalman_WD + 62493;
  v145[2] = 0;
  *v145 = 0;
  *(&g_Nav_Kalman_WD + 62492) = 0;
  *(&g_Nav_Kalman_WD + 7812) = 0;
  memcpy(&g_Nav_Kalman_WD + 62504, v162, 0x314uLL);
  v146 = &g_Nav_Kalman_WD + 63292;
  *v146 = 0;
  *(v146 + 2) = 0;
  v147 = &g_Nav_Kalman_WD + 63304;
  *v147 = v160;
  v147[16] = v161;
  v148 = (&g_Nav_Kalman_WD + 63321);
  *v148 = 0;
  *(v148 + 3) = 0;
  *(&g_Nav_Kalman_WD + 63328) = 0;
  *(&g_Nav_Kalman_WD + 63329) = 0;
  memcpy(&g_Nav_Kalman_WD + 63330, v159, 0x142uLL);
  *(&g_Nav_Kalman_WD + 15913) = 0;
  v149 = &g_Nav_Kalman_WD + 63656;
  *(v149 + 2) = 0u;
  *(v149 + 3) = 0u;
  v149[64] = 0;
  *v149 = 0u;
  *(v149 + 1) = 0u;
  v150 = (&g_Nav_Kalman_WD + 63721);
  *v150 = 0;
  *(v150 + 3) = 0;
  *(&g_Nav_Kalman_WD + 7966) = 0;
  *(&g_Nav_Kalman_WD + 63736) = 0;
  v151 = (&g_Nav_Kalman_WD + 63737);
  *(v151 + 3) = 0;
  *v151 = 0;
  *(&g_Nav_Kalman_WD + 7968) = 0;
  v152 = &g_Nav_Kalman_WD + 63752;
  v152[64] = 0;
  *(v152 + 2) = 0u;
  *(v152 + 3) = 0u;
  *v152 = 0u;
  *(v152 + 1) = 0u;
  v153 = (&g_Nav_Kalman_WD + 63817);
  *(v153 + 3) = 0;
  *v153 = 0;
  *(&g_Nav_Kalman_WD + 7978) = 0;
  *(&g_Nav_Kalman_WD + 63832) = 0;
  v154 = &g_Nav_Kalman_WD + 63833;
  v155 = *&__src[3988];
  *v154 = *&__src[3984];
  *(v154 + 1) = v155;
  v154[32] = __src[3992];
  *(&g_Nav_Kalman_WD + 31933) = 0;
  memcpy(&g_Nav_Kalman_WD + 63868, __src, 0x3E3DuLL);
  dword_2A13EC191 = 0;
  *(&dword_2A13EC191 + 3) = 0;
  *(&g_Nav_Kalman_WD + 4988) = xmmword_299051010;
  *(&g_Nav_Kalman_WD + 4989) = xmmword_299051020;
  *(&g_Nav_Kalman_WD + 9980) = 0;
  g_SV_State_Update_WD = 0;
  unk_2A1439B4C = 0;
  memset(&__src[256], 0, 400);
  *&v193[3] = 0;
  *v193 = 0;
  memset(v190, 0, 322);
  *v162 = 0;
  *&v162[3] = 0;
  memset(v189, 0, 322);
  LODWORD(v167[0]) = 0;
  *(v167 + 3) = 0;
  memset(v191, 0, 322);
  LODWORD(v205[0]) = 0;
  *(v205 + 3) = 0;
  bzero(__src, 0x402uLL);
  memset(&v193[7], 0, 26);
  memset(&v162[7], 0, 26);
  *(v167 + 7) = 0uLL;
  *(&v167[1] + 7) = 0;
  *(&v167[1] + 15) = 0;
  bzero(v205 + 7, 0x824uLL);
  memcpy(&g_GNSS_Debug_Data, __src, 0x590uLL);
  xmmword_2A143A0E8 = 0u;
  xmmword_2A143A0F8 = 0u;
  xmmword_2A143A108 = 0u;
  xmmword_2A143A118 = 0u;
  xmmword_2A143A128 = 0u;
  xmmword_2A143A138 = 0u;
  *(&xmmword_2A143A138 + 9) = 0u;
  xmmword_2A143A151 = *v193;
  unk_2A143A161 = *&v193[16];
  byte_2A143A171 = v193[32];
  memcpy(&unk_2A143A172, v190, 0x142uLL);
  xmmword_2A143A2B4 = 0u;
  unk_2A143A2C4 = 0u;
  xmmword_2A143A2D4 = 0u;
  unk_2A143A2E4 = 0u;
  xmmword_2A143A2F4 = 0u;
  unk_2A143A304 = 0u;
  xmmword_2A143A314 = 0u;
  unk_2A143A324 = 0u;
  xmmword_2A143A334 = 0u;
  unk_2A143A344 = 0u;
  xmmword_2A143A354 = 0u;
  *(&xmmword_2A143A354 + 13) = 0;
  xmmword_2A143A369 = *v162;
  unk_2A143A379 = *&v162[16];
  byte_2A143A389 = v162[32];
  memcpy(&unk_2A143A38A, v189, 0x142uLL);
  xmmword_2A143A4CC = 0u;
  unk_2A143A4DC = 0u;
  xmmword_2A143A4EC = 0u;
  unk_2A143A4FC = 0u;
  xmmword_2A143A50C = 0u;
  unk_2A143A51C = 0u;
  xmmword_2A143A52C = 0u;
  unk_2A143A53C = 0u;
  xmmword_2A143A54C = 0u;
  unk_2A143A55C = 0u;
  xmmword_2A143A56C = 0u;
  *(&xmmword_2A143A56C + 13) = 0;
  xmmword_2A143A581 = v167[0];
  unk_2A143A591 = v167[1];
  byte_2A143A5A1 = v167[2];
  memcpy(&unk_2A143A5A2, v191, 0x142uLL);
  xmmword_2A143A6E4 = 0u;
  unk_2A143A6F4 = 0u;
  xmmword_2A143A704 = 0u;
  unk_2A143A714 = 0u;
  xmmword_2A143A724 = 0u;
  unk_2A143A734 = 0u;
  xmmword_2A143A744 = 0u;
  unk_2A143A754 = 0u;
  xmmword_2A143A764 = 0u;
  unk_2A143A774 = 0u;
  xmmword_2A143A784 = 0u;
  *(&xmmword_2A143A784 + 13) = 0;
  result = memcpy(&unk_2A143A799, v205, 0x82BuLL);
  v157 = *MEMORY[0x29EDCA608];
  return result;
}

char *GNSS_Log_p_list_Ptr_Mismatch(char *result, const void *a2, const void *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a2 != a3)
  {
    v4 = v19;
    v17 = v19;
    v18 = &v20;
    v16[1] = v19;
    v5 = 69;
    v6 = 1u;
    do
    {
      v16[0] = v4 + 1;
      *v4 = v5;
      v4 = v16[0];
      if (v16[0] >= v18)
      {
        v4 = v17;
        v16[0] = v17;
      }

      v5 = aErrorPListCorr[v6++];
    }

    while (v6 != 30);
    v7 = *result;
    if (*result)
    {
      v8 = (result + 1);
      do
      {
        v16[0] = v4 + 1;
        *v4 = v7;
        v4 = v16[0];
        if (v16[0] >= v18)
        {
          v4 = v17;
          v16[0] = v17;
        }

        v9 = *v8++;
        v7 = v9;
      }

      while (v9);
    }

    v10 = 0;
    v11 = 58;
    do
    {
      v16[0] = v4 + 1;
      *v4 = v11;
      v4 = v16[0];
      if (v16[0] >= v18)
      {
        v4 = v17;
        v16[0] = v17;
      }

      v11 = asc_29907E747[++v10];
    }

    while (v10 != 2);
    sprintf_p(v16, a2);
    v12 = 0;
    v13 = 32;
    v14 = v16[0];
    do
    {
      v16[0] = v14 + 1;
      *v14 = v13;
      v14 = v16[0];
      if (v16[0] >= v18)
      {
        v14 = v17;
        v16[0] = v17;
      }

      v13 = asc_29907E74A[++v12];
    }

    while (v12 != 4);
    sprintf_p(v16, a3);
    *v16[0] = 0;
    result = EvCrt_v("%s", v19);
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

const void **GNSS_Validate_p_list(const void **result, const char *a2)
{
  v3 = result;
  v7 = *MEMORY[0x29EDCA608];
  v4 = result[1];
  if (v4 != qword_2A1453FB0 || result[2] != qword_2A1453FB8 || result[3] != qword_2A1453FC0 || result[4] != qword_2A1453FC8 || result[5] != qword_2A1453FD0 || result[6] != qword_2A1453FD8 || result[7] != qword_2A1453FE0 || result[8] != qword_2A1453FE8 || result[9] != qword_2A1453FF0 || result[10] != qword_2A1453FF8 || result[11] != qword_2A1454000 || result[12] != qword_2A1454008 || result[13] != qword_2A1454010 || result[14] != qword_2A1454018 || result[15] != qword_2A1454020 || result[16] != qword_2A1454028 || result[17] != qword_2A1454030 || result[18] != qword_2A1454038 || result[19] != qword_2A1454040 || result[20] != qword_2A1454048 || result[22] != qword_2A1454058 || result[23] != qword_2A1454060 || result[24] != qword_2A1454068 || result[26] != qword_2A1454078 || result[27] != qword_2A1454080 || result[28] != qword_2A1454088 || result[29] != qword_2A1454090 || result[30] != qword_2A1454098 || result[31] != qword_2A14540A0 || result[32] != qword_2A14540A8 || result[33] != qword_2A14540B0 || result[34] != qword_2A14540B8 || result[35] != qword_2A14540C0 || result[36] != qword_2A14540C8 || result[37] != qword_2A14540D0 || result[38] != qword_2A14540D8)
  {
    GNSS_Log_p_list_Ptr_Mismatch("DBtt", v4, qword_2A1453FB0);
    GNSS_Log_p_list_Ptr_Mismatch("DBrm", v3[2], qword_2A1453FB8);
    GNSS_Log_p_list_Ptr_Mismatch("DBsf", v3[3], qword_2A1453FC0);
    GNSS_Log_p_list_Ptr_Mismatch("DBae", v3[4], qword_2A1453FC8);
    GNSS_Log_p_list_Ptr_Mismatch("DBaa", v3[5], qword_2A1453FD0);
    GNSS_Log_p_list_Ptr_Mismatch("DBts", v3[6], qword_2A1453FD8);
    GNSS_Log_p_list_Ptr_Mismatch("DBnm", v3[7], qword_2A1453FE0);
    GNSS_Log_p_list_Ptr_Mismatch("DBcr", v3[8], qword_2A1453FE8);
    GNSS_Log_p_list_Ptr_Mismatch("DBss", v3[9], qword_2A1453FF0);
    GNSS_Log_p_list_Ptr_Mismatch("DBns", v3[10], qword_2A1453FF8);
    GNSS_Log_p_list_Ptr_Mismatch("DBst", v3[11], qword_2A1454000);
    GNSS_Log_p_list_Ptr_Mismatch("DBtm", v3[12], qword_2A1454008);
    GNSS_Log_p_list_Ptr_Mismatch("DBsn", v3[13], qword_2A1454010);
    GNSS_Log_p_list_Ptr_Mismatch("DBra", v3[14], qword_2A1454018);
    GNSS_Log_p_list_Ptr_Mismatch("MEsd", v3[15], qword_2A1454020);
    GNSS_Log_p_list_Ptr_Mismatch("GMsd", v3[16], qword_2A1454028);
    GNSS_Log_p_list_Ptr_Mismatch("NKsd", v3[17], qword_2A1454030);
    GNSS_Log_p_list_Ptr_Mismatch("DDsd", v3[18], qword_2A1454038);
    GNSS_Log_p_list_Ptr_Mismatch("STsd", v3[19], qword_2A1454040);
    GNSS_Log_p_list_Ptr_Mismatch("PPsd", v3[20], qword_2A1454048);
    GNSS_Log_p_list_Ptr_Mismatch("NKwd", v3[22], qword_2A1454058);
    GNSS_Log_p_list_Ptr_Mismatch("DDwd", v3[23], qword_2A1454060);
    GNSS_Log_p_list_Ptr_Mismatch("STwd", v3[24], qword_2A1454068);
    GNSS_Log_p_list_Ptr_Mismatch("GNdd", v3[26], qword_2A1454078);
    GNSS_Log_p_list_Ptr_Mismatch("Vers", v3[27], qword_2A1454080);
    GNSS_Log_p_list_Ptr_Mismatch("GNcf", v3[28], qword_2A1454088);
    GNSS_Log_p_list_Ptr_Mismatch("GNnd", v3[29], qword_2A1454090);
    GNSS_Log_p_list_Ptr_Mismatch("GNdd", v3[30], qword_2A1454098);
    GNSS_Log_p_list_Ptr_Mismatch("NVrm", v3[31], qword_2A14540A0);
    GNSS_Log_p_list_Ptr_Mismatch("NArm", v3[32], qword_2A14540A8);
    GNSS_Log_p_list_Ptr_Mismatch("Meas", v3[33], qword_2A14540B0);
    GNSS_Log_p_list_Ptr_Mismatch("Ctrl", v3[34], qword_2A14540B8);
    GNSS_Log_p_list_Ptr_Mismatch("NMEA", v3[35], qword_2A14540C0);
    GNSS_Log_p_list_Ptr_Mismatch("NDbg", v3[36], qword_2A14540C8);
    GNSS_Log_p_list_Ptr_Mismatch("ELog", v3[37], qword_2A14540D0);
    GNSS_Log_p_list_Ptr_Mismatch("GDbg", v3[38], qword_2A14540D8);
    strlcpy(__dst, a2, 0x69uLL);
    strlcat(__dst, ": p_list DB corrupted!", 0x80uLL);
    result = gn_report_assertion_failure(__dst);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

double Inc_Local_Time(int a1, int a2, double *a3, __int16 *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = 1000 * a2;
  v5 = *a3 * 1000.0;
  v6 = -0.5;
  if (v5 > 0.0)
  {
    v6 = 0.5;
  }

  v7 = v5 + v6;
  if (v7 <= 2147483650.0)
  {
    if (v7 >= -2147483650.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x80000000;
    }
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

  v9 = v8 + a1;
  if (v9 >= v4)
  {
    v10 = *a4;
    do
    {
      v9 -= v4;
      ++v10;
    }

    while (v9 >= v4);
    *a4 = v10;
  }

  if (v9 < 0)
  {
    v11 = *a4;
    do
    {
      v9 += v4;
      --v11;
    }

    while (v9 < 0);
    *a4 = v11;
  }

  result = v9 * 0.001;
  *a3 = result;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t RtiPayloadCodec::DecodeFromHexData(RtiPayloadCodec::Payload *a1, void *a2, _DWORD *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = a2[1] - *a2;
  if (v6 == 112)
  {
    v7 = 6;
  }

  else
  {
    if (v6 != 128)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid RTI file size! Received file size is [%lu]\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 69, "DecodeFromHexData", a2[1] - *a2);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      result = 9;
      goto LABEL_15;
    }

    v7 = 7;
  }

  std::vector<RtiPayloadCodec::Payload>::resize(a1, v7);
  v8 = *a1;
  v9 = *(a1 + 1);
  while (1)
  {
    if (v8 == v9)
    {
      result = 1;
      goto LABEL_15;
    }

    if (XofIntegralType<unsigned long long>::DecodeFromHexData(v8, a2, a3) != 1 || XofIntegralType<unsigned long long>::DecodeFromHexData(v8 + 56, a2, a3) != 1)
    {
      break;
    }

    v8 += 112;
  }

  result = 5;
LABEL_15:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void std::vector<RtiPayloadCodec::Payload>::resize(RtiPayloadCodec::Payload *a1, unint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 1);
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {
    v7 = *MEMORY[0x29EDCA608];
    v8 = *MEMORY[0x29EDCA608];

    std::vector<RtiPayloadCodec::Payload>::__append(a1, v6);
  }

  else
  {
    if (!v5)
    {
      v9 = *a1 + 112 * a2;
      while (v3 != v9)
      {
        v3 -= 112;
        std::allocator<RtiPayloadCodec::Payload>::destroy[abi:ne200100](a1, v3);
      }

      *(a1 + 1) = v9;
    }

    v10 = *MEMORY[0x29EDCA608];
  }
}

uint64_t RtiDataCodec::Decode(uint64_t a1, void *a2, _DWORD *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (RtiDataCodec::VerifyCRC(a1, a2) != 1)
  {
    result = 4;
    goto LABEL_16;
  }

  if (XofIntegralType<unsigned short>::DecodeFromHexData(a1, a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 32), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 64), a2, a3) != 1 || RtiPayloadCodec::DecodeFromHexData((a1 + 104), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 128), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 168), a2, a3) != 1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RTI Data Decode Failure\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "Decode");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    goto LABEL_15;
  }

  if (a2[1] - *a2 != *a3)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid data length!\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 69, "Decode");
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

LABEL_15:
    result = 5;
    goto LABEL_16;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RtiVer,%u,FileGpsWeek,%u,FileGpsTow,%u,FileCRC,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "Decode", *(a1 + 6), *(a1 + 38), *(a1 + 76), *(a1 + 180));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  result = 1;
LABEL_16:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t RtiDataCodec::VerifyCRC(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v13 = *(a2 + 8) - *a2 - 4;
  std::string::basic_string[abi:ne200100]<0>(&__p, "rtiCRC");
  XofIntegralType<unsigned int>::XofIntegralType(v10, &__p, 0, -1, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (XofIntegralType<unsigned int>::DecodeFromHexData(v10, a2, &v13) == 1)
  {
    CRC32 = CRCGenerator::GetCRC32(a2, 0, *(a2 + 8) - *a2 - 4);
    if (v10[3] == CRC32)
    {
      v4 = 1;
    }

    else
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid CRC in the RTI file!\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "VerifyCRC");
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      v4 = 4;
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Could not decode RTI CRC!\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "VerifyCRC");
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v4 = 5;
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_299043F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RtiDataCodec::DecodeRtiFormatVersion(uint64_t a1, void *a2, _WORD *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (RtiDataCodec::VerifyCRC(a1, a2) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "formatVersion");
    XofIntegralType<unsigned short>::XofIntegralType(v11, &__p, 1, 3, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v9 = 0;
    if (XofIntegralType<unsigned short>::DecodeFromHexData(v11, a2, &v9) == 1)
    {
      *a3 = v11[3];
      v5 = 1;
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Could not decode RTI format version!\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "DecodeRtiFormatVersion");
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      v5 = 5;
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = 5;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_299044138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

RtiPayloadCodec::Payload *std::vector<RtiPayloadCodec::Payload>::__append(RtiPayloadCodec::Payload *a1, unint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 4) >= a2)
  {
    v10 = *MEMORY[0x29EDCA608];

    return std::vector<RtiPayloadCodec::Payload>::__construct_at_end(a1, a2);
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 4);
    if (v6 + a2 > 0x249249249249249)
    {
      std::vector<RtiPayloadCodec::Payload>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x124924924924924)
    {
      v9 = 0x249249249249249;
    }

    else
    {
      v9 = v8;
    }

    v30 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<RtiPayloadCodec::Payload>>(a1, v9);
    }

    v12 = 112 * v6;
    v26 = 0;
    v27 = v12;
    v28 = v12;
    v29 = 0;
    v13 = 112 * a2;
    v14 = v12 + v13;
    do
    {
      *(v12 + 80) = 0u;
      *(v12 + 96) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 32) = 0u;
      *v12 = 0u;
      RtiPayloadCodec::Payload::Payload(v12);
      v12 += 112;
      v13 -= 112;
    }

    while (v13);
    v15 = *a1;
    v16 = *(a1 + 1);
    v17 = v27 + *a1 - v16;
    if (v16 != *a1)
    {
      v18 = *a1;
      v19 = v27 + *a1 - v16;
      do
      {
        v20 = *(v18 + 16);
        *v19 = *v18;
        *(v19 + 16) = v20;
        v21 = *(v18 + 32);
        *(v19 + 48) = *(v18 + 48);
        *(v19 + 32) = v21;
        *(v18 + 40) = 0;
        *(v18 + 48) = 0;
        *(v18 + 32) = 0;
        v22 = *(v18 + 56);
        *(v19 + 72) = *(v18 + 72);
        *(v19 + 56) = v22;
        v23 = *(v18 + 88);
        *(v19 + 104) = *(v18 + 104);
        *(v19 + 88) = v23;
        *(v18 + 96) = 0;
        *(v18 + 104) = 0;
        *(v18 + 88) = 0;
        v18 += 112;
        v19 += 112;
      }

      while (v18 != v16);
      do
      {
        std::allocator<RtiPayloadCodec::Payload>::destroy[abi:ne200100](a1, v15);
        v15 += 112;
      }

      while (v15 != v16);
      v15 = *a1;
    }

    *a1 = v17;
    *(a1 + 1) = v14;
    v24 = *(a1 + 2);
    *(a1 + 2) = v29;
    v28 = v15;
    v29 = v24;
    v26 = v15;
    v27 = v15;
    result = std::__split_buffer<RtiPayloadCodec::Payload>::~__split_buffer(&v26);
    v25 = *MEMORY[0x29EDCA608];
  }

  return result;
}

RtiPayloadCodec::Payload *std::vector<RtiPayloadCodec::Payload>::__construct_at_end(RtiPayloadCodec::Payload *result, uint64_t a2)
{
  v2 = result;
  v7 = *MEMORY[0x29EDCA608];
  v3 = *(result + 1);
  if (a2)
  {
    v4 = (v3 + 112 * a2);
    v5 = 112 * a2;
    do
    {
      *(v3 + 5) = 0u;
      *(v3 + 6) = 0u;
      *(v3 + 3) = 0u;
      *(v3 + 4) = 0u;
      *(v3 + 1) = 0u;
      *(v3 + 2) = 0u;
      *v3 = 0u;
      result = RtiPayloadCodec::Payload::Payload(v3);
      v3 = (v3 + 112);
      v5 -= 112;
    }

    while (v5);
    v3 = v4;
  }

  *(v2 + 1) = v3;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

RtiPayloadCodec::Payload *RtiPayloadCodec::Payload::Payload(RtiPayloadCodec::Payload *this)
{
  v14 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v10, "L1CADoNotUseBitMask");
  XofIntegralType<unsigned long long>::XofIntegralType(v11, &v10, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "L5DoNotUseBitMask");
  XofIntegralType<unsigned long long>::XofIntegralType(v7, &__p, 0, -1, 0);
  v2 = v11[1];
  *this = v11[0];
  *(this + 1) = v2;
  *(this + 2) = v12;
  v3 = v7[1];
  *(this + 56) = v7[0];
  *(this + 6) = v13;
  v12 = 0uLL;
  v13 = 0;
  *(this + 72) = v3;
  *(this + 88) = v8;
  *(this + 13) = v9;
  v8 = 0uLL;
  v9 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12);
    }
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v4 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2990445A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RtiPayloadCodec::Payload>>(uint64_t a1, unint64_t a2)
{
  v2 = *MEMORY[0x29EDCA608];
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<RtiPayloadCodec::Payload>::~__split_buffer(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(a1 + 32);
    *(a1 + 16) = i - 112;
    std::allocator<RtiPayloadCodec::Payload>::destroy[abi:ne200100](v4, i - 112);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return a1;
}

void *std::vector<RtiPayloadCodec::Payload>::vector[abi:ne200100](void *result, unint64_t a2)
{
  v3 = *MEMORY[0x29EDCA608];
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<RtiPayloadCodec::Payload>::__vallocate[abi:ne200100](result, a2);
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2990447BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<RtiPayloadCodec::Payload>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<RtiPayloadCodec::Payload>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  v2 = *MEMORY[0x29EDCA608];
  if (a2 < 0x24924924924924ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RtiPayloadCodec::Payload>>(a1, a2);
  }

  std::vector<RtiPayloadCodec::Payload>::__throw_length_error[abi:ne200100]();
}

void GLON_Alm_Calc_ECEF_PosVel(double *a1, double *a2, double *a3, int a4)
{
  v37 = *MEMORY[0x29EDCA608];
  v8 = a1[4];
  if (v8 > 3.14159265)
  {
    do
    {
      v8 = v8 + -6.28318531;
    }

    while (v8 > 3.14159265);
    a1[4] = v8;
  }

  if (v8 < -3.14159265)
  {
    do
    {
      v8 = v8 + 6.28318531;
    }

    while (v8 < -3.14159265);
    a1[4] = v8;
  }

  v9 = a1[1];
  v10 = v8;
  do
  {
    v11 = v10;
    v10 = v8 + v9 * sin(v10);
  }

  while (vabdd_f64(v11, v10) > 2.22044605e-15);
  v12 = sqrt(1.0 - v9 * v9);
  v13 = __sincos_stret(v10);
  v14 = atan2(v12 * v13.__sinval, v13.__cosval - v9);
  v15 = v14 + a1[5];
  v16 = (1.0 - v9 * v13.__cosval) * *a1;
  v17 = sqrt(398600.44 / *a1);
  v18 = __sincos_stret(v14);
  v19 = v18.__sinval * (v9 * v17) / v12;
  v20 = (v9 * v18.__cosval + 1.0) * v17 / v12;
  v21 = __sincos_stret(v15);
  v22 = __sincos_stret(a1[2]);
  v23 = __sincos_stret(a1[3]);
  v24 = -(v21.__sinval * v22.__sinval) * v23.__cosval + v21.__cosval * v22.__cosval;
  v25 = v21.__sinval * v22.__cosval * v23.__cosval + v21.__cosval * v22.__sinval;
  *a2 = v16 * v24;
  a2[1] = v16 * v25;
  a2[2] = v16 * v21.__sinval * v23.__sinval;
  v26 = a2 + 2;
  *a3 = v19 * v24 - v20 * (v21.__cosval * v22.__sinval * v23.__cosval + v21.__sinval * v22.__cosval);
  a3[1] = v19 * v25 - v20 * (-(v21.__cosval * v22.__cosval) * v23.__cosval + v21.__sinval * v22.__sinval);
  a3[2] = v23.__sinval * (v21.__cosval * v20) + v21.__sinval * v19 * v23.__sinval;
  v27 = __sincos_stret((a4 % 86400 - 10800) * 0.00007292115);
  v28 = a2[1];
  v29 = v27.__sinval * v28 + *a2 * v27.__cosval;
  v30 = v27.__cosval * v28 - *a2 * v27.__sinval;
  *a2 = v29;
  a2[1] = v30;
  v31 = a3[1];
  v32 = v27.__cosval * v31 - *a3 * v27.__sinval;
  *a3 = v27.__sinval * v31 + *a3 * v27.__cosval + v30 * 0.00007292115;
  a3[1] = v32 + v29 * -0.00007292115;
  for (i = 4; i > 1; --i)
  {
    *v26 = *v26 * 1000.0;
    --v26;
  }

  v34 = a3 + 2;
  for (j = 4; j > 1; --j)
  {
    *v34 = *v34 * 1000.0;
    --v34;
  }

  v36 = *MEMORY[0x29EDCA608];
}

BOOL Hal35_Is_HW_SPI_EN_Default(void)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal35_Is_HW_SPI_EN_Default");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v1 = *MEMORY[0x29EDBB110];
  v2 = IOServiceNameMatching("baseband");
  MatchingService = IOServiceGetMatchingService(v1, v2);
  if (!MatchingService)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: IOServiceGetMatchingService - failed\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 69, "Hal35_Is_HW_SPI_EN_Default");
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    goto LABEL_15;
  }

  v4 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"gnss-comms-interface", *MEMORY[0x29EDB8ED8], 3u);
  if (!v4)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v13 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: gnss-comms-interface property not found\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 87, "Hal35_Is_HW_SPI_EN_Default");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    CFRelease(0);
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v5 = v4;
  BytePtr = CFDataGetBytePtr(v4);
  v7 = *BytePtr;
  v8 = v7 == 2;
  if (g_LbsOsaTrace_Config >= 3)
  {
    v9 = BytePtr;
    bzero(__str, 0x3C6uLL);
    v10 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v11 = "PCIe";
    if (v7 == 2)
    {
      v11 = "SPI";
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS Comms Interface property variable %d, %s\n", v10, "HAL", 77, "Hal35_Is_HW_SPI_EN_Default", *v9, v11);
    gnssOsa_PrintLog(__str, 3, 1, 0);
  }

  CFRelease(v5);
LABEL_16:
  v14 = *MEMORY[0x29EDCA608];
  return v8;
}

void Hal35_Set_SPI_InUse(int a1)
{
  v3 = *MEMORY[0x29EDCA608];
  g_IsSPIEnabled = a1;
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 3)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ******* SPI transport in use **********\n");
LABEL_6:
      gnssOsa_PrintLog(__str, 3, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config >= 3)
  {
    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ******* PCIe<->NOC transport in use **********\n");
    goto LABEL_6;
  }

  v1 = *MEMORY[0x29EDCA608];
}

BOOL Hal35_InitSPI(void)
{
  v26 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: enter\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal35_InitSPI");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v1 = *MEMORY[0x29EDBB110];
  v2 = IOServiceNameMatching("gnss");
  MatchingService = IOServiceGetMatchingService(v1, v2);
  if (!MatchingService)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: IOServiceGetMatchingService - failed\n");
      goto LABEL_9;
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  if (IORegistryEntryGetChildEntry(MatchingService, "IOService", &_MergedGlobals_7))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: IORegistryEntryGetChildEntry - failed\n");
LABEL_9:
      gnssOsa_PrintLog(__str, 1, 1, 0);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  theScore = 0;
  v7 = _MergedGlobals_7;
  v8 = *MEMORY[0x29EDB8EF0];
  v9 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x31u, 0x68u, 0xB0u, 0x8Eu, 0xE5u, 0x7Du, 0x4Eu, 4u, 0x92u, 0xC9u, 0xC0u, 0x15u, 0xB8u, 0xB0u, 0xE9u, 0xABu);
  v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v11 = IOCreatePlugInInterfaceForService(v7, v9, v10, &pp_IOCFPluginInterface, &theScore);
  v4 = v11 == 0;
  if (v11)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_11;
    }

    bzero(__str, 0x3C6uLL);
    v12 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: IOCreatePlugInInterfaceForService - failed\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 69, "Hal35_InitSPI");
    v13 = 1;
LABEL_25:
    gnssOsa_PrintLog(__str, v13, 1, 0);
    goto LABEL_11;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v14 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: IOCreatePlugInInterfaceForService success\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 73, "Hal35_InitSPI");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v15 = pp_IOCFPluginInterface;
  v16 = *(*pp_IOCFPluginInterface + 8);
  v17 = CFUUIDGetConstantUUIDWithBytes(v8, 0xE8u, 0x77u, 0xCDu, 0x61u, 0x8Du, 0x30u, 0x46u, 0x2Du, 0xA3u, 0xB7u, 0xB0u, 0x11u, 0x5Au, 0x2Cu, 0xF8u, 0xA8u);
  v18 = CFUUIDGetUUIDBytes(v17);
  v16(v15, *&v18.byte0, *&v18.byte8, &pp_GNSSPassthroughInterface);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v19 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: QueryInterface done\n", (*&g_MacClockTicksToMsRelation * v19), "HAL", 73, "Hal35_InitSPI");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  (*(*pp_IOCFPluginInterface + 24))(pp_IOCFPluginInterface);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v20 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Release done\n", (*&g_MacClockTicksToMsRelation * v20), "HAL", 73, "Hal35_InitSPI");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v21 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  qword_2A145C640 = dispatch_queue_create("com.gnss.libindusSPI", v21);
  (*(*pp_GNSSPassthroughInterface + 64))(pp_GNSSPassthroughInterface, qword_2A145C640);
  (*(*pp_GNSSPassthroughInterface + 72))(pp_GNSSPassthroughInterface, Hal35_SPI_ReadCallback, 0);
  (*(*pp_GNSSPassthroughInterface + 88))(pp_GNSSPassthroughInterface, Hal32_eventCallback, 0);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v22 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Done\n", (*&g_MacClockTicksToMsRelation * v22), "HAL", 73, "Hal35_InitSPI");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  Hal35_Set_SPI_InUse(1);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v23 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Callback set\n", (*&g_MacClockTicksToMsRelation * v23), "HAL", 73, "Hal35_SetSPIReadCallback");
    v13 = 4;
    goto LABEL_25;
  }

LABEL_11:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

void Hal35_SPI_ReadCallback(void *a1, unsigned __int8 *a2, unsigned int a3, uint8x8_t a4)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if (g_LbsOsaTrace_Config > 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: zx%c%c%c %u\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 68, "Hal35_SPI_ReadCallback", a2[2], a2[3], a2[4], a3);
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    Hal02_SPI_ReadCb(a2, a3, a4);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: error\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 69, "Hal35_SPI_ReadCallback");
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void Hal32_eventCallback(void *a1, int a2, void *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %d - evnet\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 68, "Hal32_eventCallback", a2);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t Hal35_DeInitSPI(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (pp_IOCFPluginInterface)
  {
    IODestroyPlugInInterface(pp_IOCFPluginInterface);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v0 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: IODestroyPlugInInterface Done\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal35_DeInitSPI");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  pp_IOCFPluginInterface = 0;
  pp_GNSSPassthroughInterface = 0;
  Hal35_Set_SPI_InUse(0);
  v1 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t Hal35_SPIWrite(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v9 = *MEMORY[0x29EDCA608];
  if ((*(*pp_GNSSPassthroughInterface + 80))(pp_GNSSPassthroughInterface, a1, a2))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: write error\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 69, "Hal35_SPIWrite");
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v2 = 0xFFFFFFFFLL;
  }

  else if (g_LbsOsaTrace_Config > 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: zx%c%c%c %u\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 68, "Hal35_SPIWrite", a1[2], a1[3], a1[4], v2);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
  return v2;
}

void gnss::GnssAdaptDevice::injectAssistancePosition(uint64_t a1, char a2, int a3, uint64_t a4, int a5, uint64_t *a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v35 = *MEMORY[0x29EDCA608];
  if (*(a7 + 24))
  {
    v25 = *a6;
    v26 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice24injectAssistancePositionEddbdddddNS_11ReliabilityEyNS_18PositionAssistTypeERKNS_20PositionAssistOriginENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_8;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v30, a7);
    *&v30[4] = a8;
    *&v30[5] = a9;
    v33 = a2;
    *&v30[6] = a10;
    *&v30[7] = a11;
    *&v30[8] = a12;
    *&v30[9] = a13;
    *&v30[10] = a14;
    v31 = a3;
    v32 = a5;
    v30[11] = a4;
    v30[12] = v25;
    dispatch_async(v26, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v30);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v27 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "injectAssistancePosition", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v28 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice24injectAssistancePositionEddbdddddNS_11ReliabilityEyNS_18PositionAssistTypeERKNS_20PositionAssistOriginENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "injectAssistancePosition_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((*(v2 + 88) & 1) == 0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v64, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v64, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v64);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "injectAssistancePosition_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v10 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "injectAssistancePosition_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }

    goto LABEL_72;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = 70;
    if (*(a1 + 152))
    {
      v5 = 84;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Lat,%f,Long,%f,Alt,%f,AltValid,%c,VUncert,%f,SemiMajHUnc,%f,SemiMinHUnc,%f,SemiMajAzmHUnc,%f,MachContTimeNs,%llu,Rel,%d,PosType,%u,mHash,%llu\n", v4, "ADP", 73, "injectAssistancePosition_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 88), v5, *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 144), *(a1 + 148), *(a1 + 136));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v6 = *(a1 + 72);
  if (fabs(v6) > 90.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v63, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v63, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v63);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Lat,%f\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 72));
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "injectAssistancePosition_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }

    goto LABEL_72;
  }

  v11 = *(a1 + 80);
  if (fabs(v11) > 180.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v62, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v62, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v62);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Long,%f\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 80));
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v13 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "injectAssistancePosition_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }

    goto LABEL_72;
  }

  v14 = *(a1 + 152);
  if (v14 == 1 && fabs(*(a1 + 88)) > 100000.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v61, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v61, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v61);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v15 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Height,%f\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 88));
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v16 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "injectAssistancePosition_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }

    goto LABEL_72;
  }

  if (*(a1 + 96) < 0.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v60, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v60, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v60);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v17 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx VUnc,%f\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 96));
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v18 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "injectAssistancePosition_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }

    goto LABEL_72;
  }

  v19 = *(a1 + 104);
  if (v19 < 0.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v59, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v59, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v59);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v20 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SemiMajHUnc,%f\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 104));
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v21 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "injectAssistancePosition_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }

    goto LABEL_72;
  }

  v22 = *(a1 + 112);
  if (v22 < 0.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v58, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v58, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v58);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v23 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SemiMinHUnc,%f\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 112));
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v24 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 68, "injectAssistancePosition_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }

    goto LABEL_72;
  }

  v25 = *(a1 + 120);
  if (v25 < 0.0 || v25 > 360.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v57, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v57, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v57);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v29 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SemiMajAzmHUnc,%f\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 120));
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v30 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 68, "injectAssistancePosition_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }

    goto LABEL_72;
  }

  v49 = *(a1 + 96);
  v50 = 0x500000000;
  v51 = 0;
  if (fabs(v11 + 180.0) < 2.22044605e-16)
  {
    v11 = v11 + 360.0;
  }

  *(&v42 + 1) = v6;
  v43 = v11;
  v26 = *(a1 + 88);
  v47 = v14;
  v48 = v26;
  v44 = v19;
  v45 = v22;
  if (v25 <= 180.0)
  {
    v27 = v25;
  }

  else
  {
    v27 = v25 + -360.0;
  }

  v46 = v27;
  LODWORD(v42) = (*(a1 + 128) + 500000) / 0xF4240uLL;
  v28 = *(a1 + 144);
  if (v28 <= 24)
  {
    if (v28)
    {
      if (v28 != 10)
      {
        goto LABEL_69;
      }

      v28 = 1;
    }
  }

  else
  {
    switch(v28)
    {
      case 25:
        v28 = 2;
        break;
      case 50:
        v28 = 3;
        break;
      case 75:
        v28 = 4;
        break;
      default:
LABEL_69:
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v56, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v56, "injectAssistancePosition_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v56);
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v39 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Rel,%u\n", (*&g_MacClockTicksToMsRelation * v39), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 144));
          gnssOsa_PrintLog(__str, 1, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v40 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 68, "injectAssistancePosition_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }

        goto LABEL_72;
    }
  }

  LODWORD(v50) = v28;
  if (*(a1 + 148) >= 3u)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v55, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v55, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v55);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v36 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx PosType,%u\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 148));
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v37 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 68, "injectAssistancePosition_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

  else
  {
    v52 = *(a1 + 148);
    v51 = *(a1 + 136);
    v31 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v54, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v31, v54);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v54);
    v32 = GNS_EaWgs84RefPos(v31, &v42);
    if (v32 != 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v53, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v32, v53, "injectAssistancePosition_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v53);
      gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v31);
      if (!g_LbsOsaTrace_Config)
      {
        goto LABEL_72;
      }

      bzero(__str, 0x3C6uLL);
      v38 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EaWgs84RefPos,%u\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 69, "injectAssistancePosition_block_invoke", 257, v32);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config < 5)
      {
        goto LABEL_72;
      }

LABEL_62:
      bzero(__str, 0x3C6uLL);
      v35 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 68, "injectAssistancePosition_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
      goto LABEL_72;
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v34 = 70;
      if (v47)
      {
        v34 = 84;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Lat,%f,Long,%f,Ht,%f,HtPresent,%c,RmsHeight,%f,RmsSemiMaj,%f,RmsSemiMin,%f,RmsSemiMajBrg,%hd,SrcHash,%llu\n", v33, "ADP", 68, "injectAssistancePosition_block_invoke", *(&v42 + 1), v43, v48, v34, v49, v44, v45, v46, v51);
      gnssOsa_PrintLog(__str, 5, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        goto LABEL_62;
      }
    }
  }

LABEL_72:
  v41 = *MEMORY[0x29EDCA608];
}

void gnss::GnssAdaptDevice::injectAssistanceTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {
    v8 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice20injectAssistanceTimeEyyyNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_25_2;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a5);
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = a4;
    dispatch_async(v8, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "injectAssistanceTime", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice20injectAssistanceTimeEyyyNSt3__18functionIFvNS_6ResultEEEE_block_invoke(void *a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "injectAssistanceTime_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GpsTimeNS,%llu,UncNS,%llu,MachContTimeNs,%llu\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "injectAssistanceTime_block_invoke", a1[9], a1[10], a1[11]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v5 = a1[10];
    if (v5)
    {
      v21 = 0x7FFFFFFF;
      v23 = -1;
      v6 = a1[9];
      v22 = v6 / 0x2260FF9290000;
      v7 = v6 % 0x2260FF9290000;
      if (v7 < 0xF424000000000)
      {
        v19 = v7 / 0xF4240;
        if (v5 < 0xF42400000)
        {
          if (v5 > 0xF423F)
          {
            v20 = v5 / 0xF4240;
          }

          else
          {
            v20 = 1;
            if (g_LbsOsaTrace_Config >= 4)
            {
              bzero(__str, 0x3C6uLL);
              v15 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RefTimeUncMs < 1ms\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 73, "injectAssistanceTime_block_invoke");
              gnssOsa_PrintLog(__str, 4, 1, 0);
            }
          }
        }

        else
        {
          v20 = -1;
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v14 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RefTimeUncMs > 65535ms\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 73, "injectAssistanceTime_block_invoke");
            gnssOsa_PrintLog(__str, 4, 1, 0);
          }
        }

        v24 = (a1[11] + 500000) / 0xF4240uLL;
        GNS_AsstGpsRefTime(0, 5, &v19);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v16 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Wk,%u,Tow,%u,TowUnc,%u\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "injectAssistanceTime_block_invoke", v22, v19, v20);
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }

        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, (a1 + 5));
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, 1u, v25, "injectAssistanceTime_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v17 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "injectAssistanceTime_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, (a1 + 5));
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v26, "injectAssistanceTime_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v8 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Calc GpsTow invalid\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "injectAssistanceTime_block_invoke", 515);
          gnssOsa_PrintLog(__str, 1, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v9 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "injectAssistanceTime_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v27, (a1 + 5));
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v27, "injectAssistanceTime_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v27);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RefTimeUnc\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "injectAssistanceTime_block_invoke", 515);
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v13 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "injectAssistanceTime_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v28, (a1 + 5));
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v28, "injectAssistanceTime_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v28);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "injectAssistanceTime_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "injectAssistanceTime_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_29904756C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setAssistanceAlongTrackVelocity(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v8 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice31setAssistanceAlongTrackVelocityEyddNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_32;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a3);
    v12[4] = a2;
    *&v12[5] = a4;
    *&v12[6] = a5;
    dispatch_async(v8, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setAssistanceAlongTrackVelocity", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice31setAssistanceAlongTrackVelocityEyddNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceAlongTrackVelocity_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MachContTimeNs,%llu,VAlongTrack,%f,VAlongTrackUnc,%f\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "setAssistanceAlongTrackVelocity_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 88));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v5 = *(a1 + 80);
    if (v5 > 100.0 || v5 < 0.0 || (v6 = *(a1 + 88), v6 <= 0.0))
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v22, "setAssistanceAlongTrackVelocity_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v22);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v14 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx VAlongTrack,%f\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setAssistanceAlongTrackVelocity_block_invoke", 514, *(a1 + 80));
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v15 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "setAssistanceAlongTrackVelocity_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }

    else
    {
      v7 = (*(a1 + 72) + 500000) / 0xF4240uLL;
      LODWORD(v18) = v7;
      *(&v18 + 1) = v5;
      v19 = v6;
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: OsTimeMs,%u,Vel,%f,RmsVel,%f\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setAssistanceAlongTrackVelocity_block_invoke", v7, v5, v6);
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }

      v9 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v21, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v9, v21);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21);
      v10 = GNS_EaAlongTrackVel(v9, &v18);
      if (v10 == 1)
      {
        if (g_LbsOsaTrace_Config >= 5)
        {
LABEL_13:
          bzero(__str, 0x3C6uLL);
          v11 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setAssistanceAlongTrackVelocity_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v20, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v10, v20, "setAssistanceAlongTrackVelocity_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v20);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v9);
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v17 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx LongTrackVel,%u\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "setAssistanceAlongTrackVelocity_block_invoke", 257, v10);
          gnssOsa_PrintLog(__str, 1, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v23, "setAssistanceAlongTrackVelocity_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "setAssistanceAlongTrackVelocity_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v13 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setAssistanceAlongTrackVelocity_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_299047D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::injectSphericalHarmonicIonosphereModel(uint64_t a1, int a2, uint64_t a3, uint64_t a4, float a5)
{
  v20 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    *__str = *a3;
    v7 = *__str;
    v19 = *(a3 + 8);
    v11 = v19;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    v8 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice38injectSphericalHarmonicIonosphereModelEjfONSt3__16vectorINS_38SphericalHarmonicsIonosphereParametersENS1_9allocatorIS3_EEEENS1_8functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_36;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a4);
    v16 = a2;
    v17 = a5;
    memset(v15, 0, sizeof(v15));
    std::vector<gnss::SphericalHarmonicsIonosphereParameters>::__init_with_size[abi:ne200100]<gnss::SphericalHarmonicsIonosphereParameters*,gnss::SphericalHarmonicsIonosphereParameters*>(v15, v7, v11, 0x8E38E38E38E38E39 * ((v11 - v7) >> 3));
    dispatch_async(v8, block);
    v12 = v15;
    std::vector<gnss::SphericalHarmonicsIonosphereParameters>::__destroy_vector::operator()[abi:ne200100](&v12);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
    v12 = __str;
    std::vector<gnss::SphericalHarmonicsIonosphereParameters>::__destroy_vector::operator()[abi:ne200100](&v12);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "injectSphericalHarmonicIonosphereModel", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice38injectSphericalHarmonicIonosphereModelEjfONSt3__16vectorINS_38SphericalHarmonicsIonosphereParametersENS1_9allocatorIS3_EEEENS1_8functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v40 = *MEMORY[0x29EDCA608];
  v2 = *(v1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "injectSphericalHarmonicIonosphereModel_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GPSWeek,%u,GPSToW,%f,SH-Iono-Layers,%zu\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "injectSphericalHarmonicIonosphereModel_block_invoke", *(v1 + 96), *(v1 + 100), 0x8E38E38E38E38E39 * ((*(v1 + 80) - *(v1 + 72)) >> 3));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v5 = *(v1 + 72);
    v6 = *(v1 + 80);
    v7 = 0x8E38E38E38E38E39 * ((v6 - v5) >> 3);
    if (v7 < 4)
    {
      v11 = -6600;
      do
      {
        v12 = &__str[v11];
        *(v12 + 1652) = 0;
        *(v12 + 825) = 0;
        bzero(&v38[v11 + 16], 0x888uLL);
        v11 += 2200;
      }

      while (v11);
      if (v6 != v5)
      {
        v13 = 0;
        v14 = 0;
        if (v7 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = 0x8E38E38E38E38E39 * ((v6 - v5) >> 3);
        }

        do
        {
          v16 = v5 + 72 * v13;
          if (*v16)
          {
            v17 = &__str[2200 * v14];
            *v17 = *v16;
            *(v17 + 1) = *(v16 + 4);
            *(v17 + 2) = *(v16 + 8);
            *(v17 + 3) = *(v16 + 12);
            *(v17 + 274) = *(v16 + 64);
            v18 = *(v16 + 16);
            v19 = *(v16 + 24) - v18;
            if (v19)
            {
              v20 = v19 >> 2;
              v21 = (v17 + 16);
              if ((v19 >> 2) <= 1)
              {
                v20 = 1;
              }

              do
              {
                v22 = *v18++;
                *v21++ = v22;
                --v20;
              }

              while (v20);
            }

            *(v17 + 4) = v19 >> 2;
            v23 = *(v16 + 40);
            v24 = *(v16 + 48);
            v25 = v24 - v23;
            if (v24 != v23)
            {
              v26 = v25 >> 2;
              v27 = (v17 + 1104);
              if ((v25 >> 2) <= 1)
              {
                v26 = 1;
              }

              do
              {
                v28 = *v23++;
                *v27++ = v28;
                --v26;
              }

              while (v26);
            }

            *(v17 + 5) = v25 >> 2;
            ++v14;
          }

          ++v13;
        }

        while (v13 != v15);
      }

      v29 = *(v1 + 96);
      v30 = GNS_EaIonosphereModel(*(v1 + 100));
      if (v30 != 1 && g_LbsOsaTrace_Config != 0)
      {
        bzero(__s, 0x3C6uLL);
        v32 = mach_continuous_time();
        snprintf(__s, 0x3C5uLL, "%10u %s%c %s: #%04hx EaIonosphereModel,%u\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 69, "injectSphericalHarmonicIonosphereModel_block_invoke", 257, v30);
        gnssOsa_PrintLog(__s, 1, 1, 0);
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, v1 + 40);
      gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v30, v35, "injectSphericalHarmonicIonosphereModel_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__s, 0x3C6uLL);
        v33 = mach_continuous_time();
        snprintf(__s, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 68, "injectSphericalHarmonicIonosphereModel_block_invoke");
        gnssOsa_PrintLog(__s, 5, 1, 0);
      }
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SH-Iono-Layers,%zu,max,%d\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 87, "injectSphericalHarmonicIonosphereModel_block_invoke", 772, 0x8E38E38E38E38E39 * ((*(v1 + 80) - *(v1 + 72)) >> 3), 3);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v38, v1 + 40);
      gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, 2u, v38, "injectSphericalHarmonicIonosphereModel_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v38);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v39, v1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v39, "injectSphericalHarmonicIonosphereModel_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v39);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "injectSphericalHarmonicIonosphereModel_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v10 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "injectSphericalHarmonicIonosphereModel_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

  v34 = *MEMORY[0x29EDCA608];
}

void sub_299048578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c88_ZTSKNSt3__16vectorIN4gnss38SphericalHarmonicsIonosphereParametersENS_9allocatorIS2_EEEE(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100]((a1 + 5), a2 + 40);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  std::vector<gnss::SphericalHarmonicsIonosphereParameters>::__init_with_size[abi:ne200100]<gnss::SphericalHarmonicsIonosphereParameters*,gnss::SphericalHarmonicsIonosphereParameters*>((a1 + 9), *(a2 + 72), *(a2 + 80), 0x8E38E38E38E38E39 * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  v4 = *MEMORY[0x29EDCA608];
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c88_ZTSKNSt3__16vectorIN4gnss38SphericalHarmonicsIonosphereParametersENS_9allocatorIS2_EEEE(uint64_t a1)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = (a1 + 72);
  std::vector<gnss::SphericalHarmonicsIonosphereParameters>::__destroy_vector::operator()[abi:ne200100](v4);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::setAssistanceDem(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v8 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice16setAssistanceDemEyddNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_44_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a3);
    v12[4] = a2;
    *&v12[5] = a4;
    *&v12[6] = a5;
    dispatch_async(v8, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setAssistanceDem", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice16setAssistanceDemEyddNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceDem_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MachContTimeNs,%llu,EllipAlt,%f,AltUnc,%f\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "setAssistanceDem_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 88));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v5 = *(a1 + 80);
    if (v5 > 9000.0 || v5 < -500.0)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v25, "setAssistanceDem_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v14 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EllipAlt,%f\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setAssistanceDem_block_invoke", 514, *(a1 + 80));
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v15 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "setAssistanceDem_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }

    else
    {
      v6 = *(a1 + 88);
      if (v6 <= 0.0 || v6 > 9000.0)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v24, "setAssistanceDem_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v16 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx AltUnc,%f\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "setAssistanceDem_block_invoke", 514, *(a1 + 88));
          gnssOsa_PrintLog(__str, 1, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v17 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "setAssistanceDem_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }

      else
      {
        v21 = 0;
        LODWORD(v19) = (*(a1 + 72) + 500000) / 0xF4240uLL;
        *(&v19 + 1) = v5;
        v20 = v6;
        v7 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v7, v23);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
        v8 = GNS_EaAltitude(v7, &v19);
        if (v8 != 1)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v8, v22, "setAssistanceDem_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v22);
          gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v7);
          if (!g_LbsOsaTrace_Config)
          {
            goto LABEL_25;
          }

          bzero(__str, 0x3C6uLL);
          v9 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EaAltitude,%u\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setAssistanceDem_block_invoke", 257, v8);
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }

        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v10 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: OsTimeMs,%u,Alt,%f,RmsAlt,%f\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "setAssistanceDem_block_invoke", v19, *(&v19 + 1), v20);
          gnssOsa_PrintLog(__str, 5, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v11 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setAssistanceDem_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v26, "setAssistanceDem_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "setAssistanceDem_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v13 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setAssistanceDem_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

LABEL_25:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_299048F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setAssistanceMapVector(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, uint64_t a15)
{
  v40 = *MEMORY[0x29EDCA608];
  if (*(a15 + 24))
  {
    v28 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice22setAssistanceMapVectorEyddbddddbbbbbNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_54;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v32, a15);
    v32[4] = a2;
    *&v32[5] = a9;
    *&v32[6] = a10;
    v33 = a3;
    *&v32[7] = a11;
    *&v32[8] = a12;
    *&v32[9] = a13;
    *&v32[10] = a14;
    v34 = a4;
    v35 = a5;
    v36 = a6;
    v37 = a7;
    v38 = a8;
    dispatch_async(v28, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v32);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v29 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 69, "setAssistanceMapVector", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v30 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice22setAssistanceMapVectorEyddbddddbbbbbNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceMapVector_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (*(a1 + 133))
      {
        v5 = 84;
      }

      else
      {
        v5 = 70;
      }

      if (*(a1 + 132))
      {
        v6 = 84;
      }

      else
      {
        v6 = 70;
      }

      if (*(a1 + 131))
      {
        v7 = 84;
      }

      else
      {
        v7 = 70;
      }

      if (*(a1 + 130))
      {
        v8 = 84;
      }

      else
      {
        v8 = 70;
      }

      if (*(a1 + 129))
      {
        v9 = 84;
      }

      else
      {
        v9 = 70;
      }

      if (*(a1 + 128))
      {
        v10 = 84;
      }

      else
      {
        v10 = 70;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MachContTimeNs,%llu,SegStartLat,%f,SegStartLong,%f,AltValid,%c,SegStartAltWgs84,%f,SegLenM,%f,SegDirDeg,%f,SegWidM,%f,Freeway,%c,Railway,%c,OneWayRoad,%c,Tunnel,%c,Bridge,%c\n", v4, "ADP", 73, "setAssistanceMapVector_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 88), v10, *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), v9, v8, v7, v6, v5);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v11 = *(a1 + 80);
    if (fabs(v11) <= 90.0)
    {
      v16 = *(a1 + 88);
      if (fabs(v16) <= 180.0)
      {
        v19 = *(a1 + 128);
        if (v19 == 1 && fabs(*(a1 + 96)) > 100000.0)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v59, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v59, "setAssistanceMapVector_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v59);
          if (g_LbsOsaTrace_Config)
          {
            bzero(__str, 0x3C6uLL);
            v20 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Alt,%f\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 96));
            gnssOsa_PrintLog(__str, 1, 1, 0);
            if (g_LbsOsaTrace_Config >= 5)
            {
              bzero(__str, 0x3C6uLL);
              v21 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "setAssistanceMapVector_block_invoke");
              gnssOsa_PrintLog(__str, 5, 1, 0);
            }
          }
        }

        else
        {
          v22 = *(a1 + 104);
          if (v22 <= 100000.0)
          {
            v25 = *(a1 + 112);
            if (v25 < 0.0 || v25 > 360.0)
            {
              std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v57, a1 + 40);
              gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v57, "setAssistanceMapVector_block_invoke");
              std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v57);
              if (g_LbsOsaTrace_Config)
              {
                bzero(__str, 0x3C6uLL);
                v29 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Dir,%f\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 112));
                gnssOsa_PrintLog(__str, 1, 1, 0);
                if (g_LbsOsaTrace_Config >= 5)
                {
                  bzero(__str, 0x3C6uLL);
                  v30 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 68, "setAssistanceMapVector_block_invoke");
                  gnssOsa_PrintLog(__str, 5, 1, 0);
                }
              }
            }

            else
            {
              v26 = *(a1 + 120);
              if (v26 <= 100000.0)
              {
                v31 = (*(a1 + 72) + 500000) / 0xF4240uLL;
                v46 = v31;
                if (fabs(v16 + 180.0) >= 2.22044605e-16)
                {
                  v32 = v16;
                }

                else
                {
                  v32 = v16 + 360.0;
                }

                v47 = v11;
                v48 = v32;
                v33 = *(a1 + 96);
                v49 = v33;
                v50 = v19;
                v51 = v25;
                v52 = v22;
                v53 = v26;
                LODWORD(v16) = *(a1 + 129);
                v34 = vmovl_u8(*&v16).u64[0];
                v35 = vext_s8(v34, v34, 6uLL);
                v54 = vuzp1_s8(v35, v35).u32[0];
                v36 = *(a1 + 133);
                v55 = *(a1 + 133);
                v37 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
                std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v45, a1 + 40);
                gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v37, v45);
                std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v45);
                if (g_LbsOsaTrace_Config >= 5)
                {
                  bzero(__str, 0x3C6uLL);
                  v38 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
                  v39 = 70;
                  if (v19)
                  {
                    v39 = 84;
                  }

                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: OsTimeMs,%u,StartLat,%f,StartLong,%f,StartAlt,%f,HtAvail,%c,Dir,%f,Len,%f,Width,%f,Bridge,%d\n", v38, "ADP", 68, "setAssistanceMapVector_block_invoke", v31, v11, v32, v33, v39, v25, v22, v26, v36);
                  gnssOsa_PrintLog(__str, 5, 1, 0);
                }

                v40 = GNS_EaMapVectorSeg(v37, &v46);
                if (v40 != 1)
                {
                  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v44, a1 + 40);
                  gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v40, v44, "setAssistanceMapVector_block_invoke");
                  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v44);
                  gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v37);
                  if (!g_LbsOsaTrace_Config)
                  {
                    goto LABEL_65;
                  }

                  bzero(__str, 0x3C6uLL);
                  v41 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EaMapVectorSeg,%u\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 69, "setAssistanceMapVector_block_invoke", 257, v40);
                  gnssOsa_PrintLog(__str, 1, 1, 0);
                }

                if (g_LbsOsaTrace_Config >= 5)
                {
                  bzero(__str, 0x3C6uLL);
                  v42 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v42), "ADP", 68, "setAssistanceMapVector_block_invoke");
                  gnssOsa_PrintLog(__str, 5, 1, 0);
                }
              }

              else
              {
                std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v56, a1 + 40);
                gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v56, "setAssistanceMapVector_block_invoke");
                std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v56);
                if (g_LbsOsaTrace_Config)
                {
                  bzero(__str, 0x3C6uLL);
                  v27 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Width,%f\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 120));
                  gnssOsa_PrintLog(__str, 1, 1, 0);
                  if (g_LbsOsaTrace_Config >= 5)
                  {
                    bzero(__str, 0x3C6uLL);
                    v28 = mach_continuous_time();
                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 68, "setAssistanceMapVector_block_invoke");
                    gnssOsa_PrintLog(__str, 5, 1, 0);
                  }
                }
              }
            }
          }

          else
          {
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v58, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v58, "setAssistanceMapVector_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v58);
            if (g_LbsOsaTrace_Config)
            {
              bzero(__str, 0x3C6uLL);
              v23 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Len,%f\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 104));
              gnssOsa_PrintLog(__str, 1, 1, 0);
              if (g_LbsOsaTrace_Config >= 5)
              {
                bzero(__str, 0x3C6uLL);
                v24 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 68, "setAssistanceMapVector_block_invoke");
                gnssOsa_PrintLog(__str, 5, 1, 0);
              }
            }
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v60, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v60, "setAssistanceMapVector_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v60);
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v17 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Long,%f\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 88));
          gnssOsa_PrintLog(__str, 1, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v18 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "setAssistanceMapVector_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v61, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v61, "setAssistanceMapVector_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v61);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Lat,%f\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 80));
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v13 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setAssistanceMapVector_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v62, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v62, "setAssistanceMapVector_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v62);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v14 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setAssistanceMapVector_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v15 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "setAssistanceMapVector_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

LABEL_65:
  v43 = *MEMORY[0x29EDCA608];
}

void gnss::GnssAdaptDevice::setAssistanceMotionActivityContext(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v19 = *MEMORY[0x29EDCA608];
  if (*(a6 + 24))
  {
    v10 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice34setAssistanceMotionActivityContextEyNS_21MotionActivityContextENS_11MovingStateENS_11ReliabilityENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_63;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a6);
    v14[4] = a2;
    v15 = a3;
    v16 = a4;
    v17 = a5;
    dispatch_async(v10, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v11 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setAssistanceMotionActivityContext", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v12 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice34setAssistanceMotionActivityContextEyNS_21MotionActivityContextENS_11MovingStateENS_11ReliabilityENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceMotionActivityContext_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((*(v2 + 88) & 1) == 0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v35, "setAssistanceMotionActivityContext_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v10 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "setAssistanceMotionActivityContext_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }

    goto LABEL_38;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MachContTimeNs,%llu,Ctxt,%u,MovState,%u,Rel,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "setAssistanceMotionActivityContext_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 84), *(a1 + 88));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v5 = (*(a1 + 72) + 500000) / 0xF4240uLL;
  LODWORD(v27) = v5;
  v25 = v5;
  v6 = *(a1 + 80);
  if (v6 >= 9)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Context,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 515, *(a1 + 80));
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v34, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v34, "setAssistanceMotionActivityContext_block_invoke");
    v12 = v34;
    goto LABEL_37;
  }

  v7 = dword_299054588[v6];
  HIDWORD(v27) = v7;
  v8 = *(a1 + 88);
  if (v8 <= 24)
  {
    if (v8)
    {
      if (v8 == 10)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else
  {
    switch(v8)
    {
      case 75:
        v8 = 3;
        break;
      case 50:
        v8 = 2;
        break;
      case 25:
LABEL_11:
        v8 = 1;
        break;
      default:
LABEL_20:
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v13 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Rel,%u\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 515, *(a1 + 88));
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }

        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v33, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v33, "setAssistanceMotionActivityContext_block_invoke");
        v12 = v33;
        goto LABEL_37;
    }
  }

  v28 = v8;
  v26 = v8;
  v14 = *(a1 + 84);
  if (v14 >= 4)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v21 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Moving State,%u\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 515, *(a1 + 84));
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v32, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v32, "setAssistanceMotionActivityContext_block_invoke");
    v12 = v32;
LABEL_37:
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
    goto LABEL_38;
  }

  HIDWORD(v25) = *(a1 + 84);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v15 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ActCtx,%u,MovState,%u,Rel,%u,TimeMs,%u\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "setAssistanceMotionActivityContext_block_invoke", v7, v14, v8, v5);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v16 = GNS_EaUsrActCtxt(++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key, &v27);
  if (v16 == 1)
  {
    v17 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v30, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v17, v30);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v30);
    v18 = GNS_EaDevMovState(v17, &v25);
    if (v18 != 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v29, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v18, v29, "setAssistanceMotionActivityContext_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v29);
      gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v17);
      if (!g_LbsOsaTrace_Config)
      {
        goto LABEL_38;
      }

      bzero(__str, 0x3C6uLL);
      v19 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EaDevMovState,%u\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 257, v18);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v20 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setAssistanceMotionActivityContext_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v31, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v16, v31, "setAssistanceMotionActivityContext_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v31);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v23 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EaUsrActCtxt,%u\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 257, v16);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v24 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 68, "setAssistanceMotionActivityContext_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

LABEL_38:
  v22 = *MEMORY[0x29EDCA608];
}

void sub_29904A798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setAssistanceMountState(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v6 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice23setAssistanceMountStateEyNS_16DeviceMountStateENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_70_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a4);
    v10[4] = a2;
    v11 = a3;
    dispatch_async(v6, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setAssistanceMountState", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice23setAssistanceMountStateEyNS_16DeviceMountStateENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceMountState_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MachContTimeNs,%llu,MtState,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "setAssistanceMountState_block_invoke", *(a1 + 72), *(a1 + 80));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    LODWORD(v17) = (*(a1 + 72) + 500000) / 0xF4240uLL;
    v5 = *(a1 + 80);
    if (v5 >= 3)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v14 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MountState,%u\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setAssistanceMountState_block_invoke", 515, *(a1 + 80));
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v21, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v21, "setAssistanceMountState_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21);
    }

    else
    {
      v6 = dword_2990545AC[v5];
      v7 = dword_2990545B8[v5];
      HIDWORD(v17) = v6;
      v18 = v7;
      v8 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v20, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v8, v20);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v20);
      v9 = GNS_EaFixedInVehicle(v8, &v17);
      if (v9 == 1)
      {
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v10 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: OsTimeMs,%u,FivInd,%u\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "setAssistanceMountState_block_invoke", v17, HIDWORD(v17));
          gnssOsa_PrintLog(__str, 5, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
LABEL_10:
            bzero(__str, 0x3C6uLL);
            v11 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setAssistanceMountState_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v19, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v9, v19, "setAssistanceMountState_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v19);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v8);
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v16 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx FixedInVeh,%u\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "setAssistanceMountState_block_invoke", 257, v9);
          gnssOsa_PrintLog(__str, 1, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            goto LABEL_10;
          }
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v22, "setAssistanceMountState_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v22);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "setAssistanceMountState_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v13 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setAssistanceMountState_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

  v15 = *MEMORY[0x29EDCA608];
}

void sub_29904AF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setAssistanceSignalEnvironment(uint64_t a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice30setAssistanceSignalEnvironmentENS_21SignalEnvironmentTypeENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_77;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a3);
    v8[8] = a2;
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setAssistanceSignalEnvironment", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice30setAssistanceSignalEnvironmentENS_21SignalEnvironmentTypeENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceSignalEnvironment_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SigEnv,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "setAssistanceSignalEnvironment_block_invoke", *(a1 + 72));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v5 = *(a1 + 72);
    if (v5 >= 7)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v14 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SigEnv,%u\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setAssistanceSignalEnvironment_block_invoke", 515, *(a1 + 72));
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v18, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v18, "setAssistanceSignalEnvironment_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18);
    }

    else
    {
      v6 = dword_2990545C4[v5];
      v7 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v7, v17);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
      v8 = GNS_EaSigEnvSev(v7, v6);
      if (v8 != 1)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v8, v16, "setAssistanceSignalEnvironment_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v7);
        if (!g_LbsOsaTrace_Config)
        {
          goto LABEL_19;
        }

        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SigEnvSev,%u\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setAssistanceSignalEnvironment_block_invoke", 257, v8);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v10 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SESInd,%d\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "setAssistanceSignalEnvironment_block_invoke", v6);
        gnssOsa_PrintLog(__str, 5, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v11 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "setAssistanceSignalEnvironment_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v19, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v19, "setAssistanceSignalEnvironment_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v19);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "setAssistanceSignalEnvironment_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v13 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setAssistanceSignalEnvironment_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

LABEL_19:
  v15 = *MEMORY[0x29EDCA608];
}

void sub_29904B598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setAssistanceSpeedConstraint(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v10 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice28setAssistanceSpeedConstraintEydddNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_84;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
    v14[4] = a2;
    *&v14[5] = a4;
    *&v14[6] = a5;
    *&v14[7] = a6;
    dispatch_async(v10, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v11 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setAssistanceSpeedConstraint", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v12 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice28setAssistanceSpeedConstraintEydddNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceSpeedConstraint_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MachContTimeNs,%llu,DurSec,%f,SpeedLwrBound,%f,SpeedUprBound,%f\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "setAssistanceSpeedConstraint_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v5 = *(a1 + 80);
    if (v5 <= 86400.0)
    {
      v6 = *(a1 + 88);
      if (v6 >= 0.0)
      {
        v12 = *(a1 + 96);
        if (v12 >= v6 && v12 >= 0.0 && v12 <= 100.0)
        {
          v14 = (*(a1 + 72) + 500000) / 0xF4240uLL;
          v15 = (v5 * 1000.0);
          *&v21 = __PAIR64__(v15, v14);
          *(&v21 + 1) = v6;
          v22 = v12;
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v16 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: OsTimeMs,%u,DurMs,%d,SpeedL,%f,SpeedU,%f\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "setAssistanceSpeedConstraint_block_invoke", v14, v15, v6, v12);
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          v17 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v17, v24);
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
          v18 = GNS_EaSpeedConstraint(v17, &v21);
          if (v18 == 1)
          {
            if (g_LbsOsaTrace_Config < 5)
            {
              goto LABEL_15;
            }
          }

          else
          {
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v18, v23, "setAssistanceSpeedConstraint_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
            gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v17);
            if (!g_LbsOsaTrace_Config)
            {
              goto LABEL_15;
            }

            bzero(__str, 0x3C6uLL);
            v20 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SpeedConstraint,%u\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 69, "setAssistanceSpeedConstraint_block_invoke", 257, v18);
            gnssOsa_PrintLog(__str, 1, 1, 0);
            if (g_LbsOsaTrace_Config < 5)
            {
              goto LABEL_15;
            }
          }

          bzero(__str, 0x3C6uLL);
          v19 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "setAssistanceSpeedConstraint_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
          goto LABEL_15;
        }
      }
    }

    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MachContiTimeNs,%llu,Dur,%f,SpeedLwrBound,%f,SpeedUprBound,%f\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setAssistanceSpeedConstraint_block_invoke", 514, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v25, "setAssistanceSpeedConstraint_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setAssistanceSpeedConstraint_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v26, "setAssistanceSpeedConstraint_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setAssistanceSpeedConstraint_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v10 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "setAssistanceSpeedConstraint_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

LABEL_15:
  v11 = *MEMORY[0x29EDCA608];
}

void sub_29904BDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::startTimeTransferSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!*(a3 + 24))
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_8;
    }

LABEL_7:
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "startTimeTransferSession", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
    goto LABEL_8;
  }

  if (!*(a4 + 24))
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = *(a1 + 152);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4gnss15GnssAdaptDevice24startTimeTransferSessionENSt3__18functionIFvNS_6ResultENS_16TimeTransferDataEEEENS2_IFvS3_EEES8__block_invoke;
  block[3] = &__block_descriptor_tmp_89;
  block[4] = a1;
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v10, a2);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a4);
  dispatch_async(v6, block);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v10);
LABEL_8:
  v8 = *MEMORY[0x29EDCA608];
}

void sub_29904C010(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v1 + 40);
  _Unwind_Resume(a1);
}

void ___ZN4gnss15GnssAdaptDevice24startTimeTransferSessionENSt3__18functionIFvNS_6ResultENS_16TimeTransferDataEEEENS2_IFvS3_EEES8__block_invoke(uint64_t a1)
{
  v29[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "startTimeTransferSession_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(a1 + 64))
  {
    if (*(v2 + 88))
    {
      if (*(v2 + 92) == 1)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, a1 + 72);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v24, "startTimeTransferSession_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v4 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx TimeMark\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "startTimeTransferSession_block_invoke", 2056);
          gnssOsa_PrintLog(__str, 1, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v5 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "startTimeTransferSession_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](__str, a1 + 40);
        v10 = v2 + 296;
        if (__str != (v2 + 296))
        {
          v11 = v28;
          v12 = *(v2 + 320);
          if (v28 == __str)
          {
            if (v12 == v10)
            {
              (*(*v28 + 24))();
              (*(*v28 + 32))(v28);
              v28 = 0;
              (*(**(v2 + 320) + 24))(*(v2 + 320), __str);
              (*(**(v2 + 320) + 32))(*(v2 + 320));
              *(v2 + 320) = 0;
              v28 = __str;
              (*(v29[0] + 24))(v29, v2 + 296);
              (*(v29[0] + 32))(v29);
            }

            else
            {
              (*(*v28 + 24))();
              (*(*v28 + 32))(v28);
              v28 = *(v2 + 320);
            }

            *(v2 + 320) = v10;
          }

          else if (v12 == v10)
          {
            (*(*v12 + 24))(*(v2 + 320), __str);
            (*(**(v2 + 320) + 32))(*(v2 + 320));
            *(v2 + 320) = v28;
            v28 = __str;
          }

          else
          {
            v28 = *(v2 + 320);
            *(v2 + 320) = v11;
          }
        }

        std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](__str);
        v22 = 0;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a1 + 104);
        gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 0x12u, v21);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21);
        started = Gnm_StartTimeMarkSesion(gnss::GnssAdaptDevice::Ga03_03GnssTimeMarkDataCallBack);
        if (started)
        {
          v14 = *(v2 + 320);
          *(v2 + 320) = 0;
          if (v14 == v10)
          {
            (*(*v14 + 32))(v14);
          }

          else if (v14)
          {
            (*(*v14 + 40))(v14);
          }

          gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, started, 0x12u);
          if (g_LbsOsaTrace_Config)
          {
            bzero(__str, 0x3C6uLL);
            v17 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx TimeMark,%u\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "startTimeTransferSession_block_invoke", 2049, started);
            gnssOsa_PrintLog(__str, 1, 1, 0);
            if (g_LbsOsaTrace_Config >= 5)
            {
              bzero(__str, 0x3C6uLL);
              v18 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "startTimeTransferSession_block_invoke");
              gnssOsa_PrintLog(__str, 5, 1, 0);
            }
          }
        }

        else
        {
          *(v2 + 92) = 1;
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v20, a1 + 72);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v20, "startTimeTransferSession_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v20);
          if (g_LbsOsaTrace_Config > 3)
          {
            bzero(__str, 0x3C6uLL);
            v15 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Started\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 73, "startTimeTransferSession_block_invoke");
            gnssOsa_PrintLog(__str, 4, 1, 0);
            if (g_LbsOsaTrace_Config >= 5)
            {
              bzero(__str, 0x3C6uLL);
              v16 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "startTimeTransferSession_block_invoke");
              gnssOsa_PrintLog(__str, 5, 1, 0);
            }
          }
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a1 + 72);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v25, "startTimeTransferSession_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "startTimeTransferSession_block_invoke", 1302);
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v9 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "startTimeTransferSession_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v26, "startTimeTransferSession_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx DataCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "startTimeTransferSession_block_invoke", 258);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "startTimeTransferSession_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

  v19 = *MEMORY[0x29EDCA608];
}

void sub_29904C914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::Ga03_03GnssTimeMarkDataCallBack(gnss::GnssAdaptDevice *a1, char *a2)
{
  v3 = a1;
  v33 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    v6 = DeviceInstance;
    memset(&v32[4], 0, 17);
    *(v31 + 1) = 0uLL;
    *(&v31[1] + 1) = 0;
    if (a2)
    {
      v7 = *a2;
      v5 = a2[1];
      v8 = *(a2 + 1);
      *v32 = *(a2 + 4);
      *&v32[13] = *(a2 + 17);
      *v15 = *(a2 + 25);
      *&v15[3] = *(a2 + 7);
      v9 = *(a2 + 4);
      v10 = *(a2 + 10);
      v11 = a2[44];
      *(v31 + 15) = *(a2 + 15);
      v31[0] = *(a2 + 45);
    }

    else
    {
      v11 = g_LbsOsaTrace_Config;
      v9 = 0;
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx TimeMarkData\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "Ga03_02HandleTimeMarkDataCallback", 770);
        gnssOsa_PrintLog(__str, 1, 1, 0);
        v11 = 0;
      }

      v10 = 0;
      v8 = 0;
      v7 = 0;
      v3 = 11;
    }

    v13 = *(v6 + 152);
    *__str = MEMORY[0x29EDCA5F8];
    v17 = 0x40000000;
    v18 = ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke;
    v19 = &__block_descriptor_tmp_121;
    v20 = v6;
    v30 = v3;
    v21 = v7;
    v22 = v5;
    v23 = v8;
    *v24 = *v32;
    *&v24[13] = *&v32[13];
    *v25 = *v15;
    *&v25[3] = *&v15[3];
    v26 = v9;
    v27 = v10;
    v28 = v11;
    *&v29[15] = *(v31 + 15);
    *v29 = v31[0];
    dispatch_async(v13, __str);
  }

  v14 = *MEMORY[0x29EDCA608];
}

uint64_t __copy_helper_block_e8_40c63_ZTSNSt3__18functionIFvN4gnss6ResultENS1_16TimeTransferDataEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE104c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  result = std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 104, a2 + 104);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29904CC18(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_40c63_ZTSNSt3__18functionIFvN4gnss6ResultENS1_16TimeTransferDataEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE104c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 104);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::stopTimeTransferSession(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24))
  {
    v2 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice23stopTimeTransferSessionENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_92;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a2);
    dispatch_async(v2, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "stopTimeTransferSession", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice23stopTimeTransferSessionENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  *(v1 + 92) = 0;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v4, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v1, 1, v4, "stopTimeTransferSession_block_invoke");
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v4);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29904CE84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::Ga03_00RegisterGnsEaStatusResponse(gnss::GnssAdaptDevice *a1, uint64_t a2, int *a3)
{
  v4 = a1;
  v24 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    v6 = DeviceInstance;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Type,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 73, "Ga03_01HandleGnsEaStatusResponse", v4);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if (a3)
    {
      v8 = a3[1];
      if (v8 != 3)
      {
        v12 = *a3;
        v13 = a3[2];
        v14 = *(v6 + 152);
        *__str = MEMORY[0x29EDCA5F8];
        v17 = 0x40000000;
        v18 = ___ZN4gnss15GnssAdaptDevice32Ga03_01HandleGnsEaStatusResponseE15e_gnsEA_MsgTypejP17s_gnsEA_ApiStatus_block_invoke;
        v19 = &__block_descriptor_tmp_102;
        v20 = v6;
        v21 = v12;
        v22 = v8;
        v23 = v13;
        dispatch_async(v14, __str);
        goto LABEL_12;
      }

      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Resp rcvd for E_gnsEA_DATA_UAC\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 73, "Ga03_01HandleGnsEaStatusResponse");
        v10 = 4;
LABEL_10:
        gnssOsa_PrintLog(__str, v10, 1, 0);
      }
    }

    else if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MsgData,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "Ga03_01HandleGnsEaStatusResponse", 770, v4);
      v10 = 1;
      goto LABEL_10;
    }
  }

LABEL_12:
  v15 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga03_01HandleGnsEaStatusResponseE15e_gnsEA_MsgTypejP17s_gnsEA_ApiStatus_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v27 = 0;
  v2 = v1 + 128;
  v3 = *(v1 + 128);
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 40);
  v6 = v1 + 128;
  v7 = *(v1 + 128);
  do
  {
    v8 = *(v7 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * v10);
  }

  while (v7);
  if (v6 == v2 || v5 < *(v6 + 32))
  {
LABEL_9:
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GnsStatusRespLut Hdl\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 87, "Ga03_01HandleGnsEaStatusResponse_block_invoke", 770);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    goto LABEL_31;
  }

  v12 = v1 + 128;
  do
  {
    v13 = *(v3 + 32);
    v9 = v13 >= v5;
    v14 = v13 < v5;
    if (v9)
    {
      v12 = v3;
    }

    v3 = *(v3 + 8 * v14);
  }

  while (v3);
  if (v12 == v2 || v5 < *(v12 + 32))
  {
    v12 = v1 + 128;
  }

  std::function<void ()(gnss::Result)>::operator=(v26, v12 + 40);
  std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::__remove_node_pointer((v1 + 120), v6);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6 + 40);
  operator delete(v6);
  if (v27)
  {
    v15 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v1, *(a1 + 48));
    if (*(a1 + 44) != 1)
    {
      goto LABEL_28;
    }

    if (*(a1 + 48) == 1)
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v16 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ExtPosAssist Accepted\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 73, "Ga03_01HandleGnsEaStatusResponse_block_invoke");
        gnssOsa_PrintLog(__str, 4, 1, 0);
        goto LABEL_28;
      }
    }

    else if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v18 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ExtPosAssist Rejected\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 73, "Ga03_01HandleGnsEaStatusResponse_block_invoke");
      gnssOsa_PrintLog(__str, 4, 1, 0);
LABEL_28:
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v19 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Ea Type,%u,ID,%u\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 73, "Ga03_01HandleGnsEaStatusResponse_block_invoke", *(a1 + 44), *(a1 + 40));
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }
    }

    v20 = *(v1 + 160);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice32Ga03_01HandleGnsEaStatusResponseE15e_gnsEA_MsgTypejP17s_gnsEA_ApiStatus_block_invoke_2;
    block[3] = &__block_descriptor_tmp_101;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, v26);
    v24[8] = v15;
    dispatch_async(v20, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
    goto LABEL_31;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v17 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx API type,%u ID,%d\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 87, "Ga03_01HandleGnsEaStatusResponse_block_invoke", 770, *(a1 + 44), *(a1 + 40));
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

LABEL_31:
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga03_01HandleGnsEaStatusResponseE15e_gnsEA_MsgTypejP17s_gnsEA_ApiStatus_block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 64);
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v3, v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v76, v2 + 296);
  if (v77)
  {
    if (*(a1 + 104))
    {
      v3 = *(v2 + 160);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke_2;
      block[3] = &__block_descriptor_tmp_105;
      std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v66, v76);
      v66[32] = 0;
      v67 = 0;
      v68 = -1082130432;
      v69 = 0;
      v70 = 0;
      v72 = 0u;
      v73 = 0u;
      v71 = -1;
      v74 = 0;
      dispatch_async(v3, block);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Status Unavailable\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga03_02HandleTimeMarkDataCallback_block_invoke", 770);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      v5 = v66;
      goto LABEL_46;
    }

    if (*(a1 + 40) == 1)
    {
      v7 = *(a1 + 56);
      v8 = (*(a1 + 48) * 1000000.0) + 604800000000000 * *(a1 + 42);
      v9 = *(a1 + 96);
      v39 = *(a1 + 88);
      if (v7 * 1000000.0 <= 3.40282347e38)
      {
        v11 = v7 * 1000000.0;
        v10 = 1;
      }

      else
      {
        v10 = 1;
        v11 = 3.4028e38;
      }
    }

    else
    {
      v39 = 0;
      v9 = 0;
      v8 = 0;
      v10 = 0;
      v11 = -1.0;
    }

    v12 = 1000000 * *(a1 + 80);
    v13 = *(a1 + 72);
    if (v13 > 2147483650.0)
    {
      v14 = *(v2 + 160);
      v15 = v53;
      v53[0] = MEMORY[0x29EDCA5F8];
      v53[1] = 1174405120;
      v53[2] = ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke_2_107;
      v53[3] = &__block_descriptor_tmp_110;
      std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v54, v76);
      v54[32] = v10;
      v55 = v8;
      v56 = v11;
      v57 = 0;
      v58 = 0;
      v59 = v12;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = v39;
      v64 = v9;
      dispatch_async(v14, v53);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v16 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx UTCorr,%.9f \n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "Ga03_02HandleTimeMarkDataCallback_block_invoke", 770, v13);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      goto LABEL_45;
    }

    v17 = -0.5;
    if (v13 > 0.0)
    {
      v17 = 0.5;
    }

    v18 = (v13 + v17);
    v19 = &unk_2A13ED000;
    v20 = g_LbsOsaTrace_Config;
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v21 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: UTCCorr %.9f,LeapSec,%d\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "Ga03_02HandleTimeMarkDataCallback_block_invoke", v13, v18);
      gnssOsa_PrintLog(__str, 5, 1, 0);
      v19 = &unk_2A13ED000;
      v20 = g_LbsOsaTrace_Config;
    }

    v22 = v13 - v13;
    if (v22 > 0.0000005 && v22 < 0.9999995 && v20 >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v24 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx UtcCorr beyond 500ns from seconds boundary,%.9f\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 87, "Ga03_02HandleTimeMarkDataCallback_block_invoke", 770, v13);
      gnssOsa_PrintLog(__str, 2, 1, 0);
      v19 = &unk_2A13ED000;
    }

    if (*(a1 + 64) == 1)
    {
      v25 = *(a1 + 40);
    }

    else
    {
      v25 = 0;
    }

    v26 = *(a1 + 84);
    if (v26 >= 6)
    {
      if (g_LbsOsaTrace_Config < 4)
      {
        v26 = 0;
      }

      else
      {
        bzero(__str, 0x3C6uLL);
        v27 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid TimeMark Qual\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 73, "Ga03_02HandleTimeMarkDataCallback_block_invoke");
        gnssOsa_PrintLog(__str, 4, 1, 0);
        v26 = 0;
        v19 = &unk_2A13ED000;
      }
    }

    v28 = v25 & 1;
    v29 = *(a1 + 86);
    v30 = v29 & 0x11 | (8 * ((v29 >> 1) & 1)) | (v29 >> 4) & 6 | (v29 >> 2) & 0x20;
    v31 = v19[986];
    if ((v29 & 8) != 0)
    {
      if (!v31)
      {
LABEL_44:
        v36 = *(v2 + 160);
        v15 = v40;
        v40[0] = MEMORY[0x29EDCA5F8];
        v40[1] = 1174405120;
        v40[2] = ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke_2_117;
        v40[3] = &__block_descriptor_tmp_120;
        std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v41, v76);
        v41[32] = v10;
        v42 = v8;
        v43 = v11;
        v44 = v28;
        v45 = v18;
        v47 = 0;
        v48 = 0;
        v46 = v12;
        v49 = v26;
        v50 = v30;
        v51 = v39;
        v52 = v9;
        dispatch_async(v36, v40);
LABEL_45:
        v5 = v15 + 4;
LABEL_46:
        std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v5);
        goto LABEL_47;
      }

      bzero(__str, 0x3C6uLL);
      v32 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Constel E_GNM_GNSSID_MODGPS\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 69, "Ga03_02HandleTimeMarkDataCallback_block_invoke", 770);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      v31 = g_LbsOsaTrace_Config;
    }

    if (v31 >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v34 = 70;
      if (v28)
      {
        v35 = 84;
      }

      else
      {
        v35 = 70;
      }

      if (v10)
      {
        v34 = 84;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: WkValid,%c,TimeNs,%llu,TimeUncNs,%f,ClkNs,%llu,LeapSecValid,%c,LeapSec,%d,Qual,%u,ConstUsed,%u,BCTNs,%llu,BCTUncNs,%llu\n", v33, "ADP", 73, "Ga03_02HandleTimeMarkDataCallback_block_invoke", v34, v8, v11, v12, v35, v18, v26, v30, v39, v9);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    goto LABEL_44;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx TimeTransferDataCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga03_02HandleTimeMarkDataCallback_block_invoke", 770);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

LABEL_47:
  result = std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v76);
  v38 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 96);
  v6 = *(a1 + 112);
  v7 = *(a1 + 128);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  result = std::function<void ()(gnss::Result,gnss::TimeTransferData)>::operator()(*(a1 + 56), 8);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::function<void ()(gnss::Result,gnss::TimeTransferData)>::operator()(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v4 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*a1 + 48))(a1, &v4);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __copy_helper_block_e8_32c63_ZTSNSt3__18functionIFvN4gnss6ResultENS1_16TimeTransferDataEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;
  v4 = a2 + 32;

  return std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_32c63_ZTSNSt3__18functionIFvN4gnss6ResultENS1_16TimeTransferDataEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 32;

  return std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v2);
}

uint64_t ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke_2_107(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 96);
  v6 = *(a1 + 112);
  v7 = *(a1 + 128);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  result = std::function<void ()(gnss::Result,gnss::TimeTransferData)>::operator()(*(a1 + 56), 8);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke_2_117(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 96);
  v6 = *(a1 + 112);
  v7 = *(a1 + 128);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  result = std::function<void ()(gnss::Result,gnss::TimeTransferData)>::operator()(*(a1 + 56), 1);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void std::vector<gnss::SphericalHarmonicsIonosphereParameters>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 9;
        std::allocator<gnss::SphericalHarmonicsIonosphereParameters>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    v6 = *MEMORY[0x29EDCA608];

    operator delete(v5);
  }

  else
  {
    v7 = *MEMORY[0x29EDCA608];
    v8 = *MEMORY[0x29EDCA608];
  }
}

void std::allocator<gnss::SphericalHarmonicsIonosphereParameters>::destroy[abi:ne200100](void *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    v4 = *MEMORY[0x29EDCA608];

    operator delete(v3);
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
  }
}

void std::vector<gnss::SphericalHarmonicsIonosphereParameters>::__init_with_size[abi:ne200100]<gnss::SphericalHarmonicsIonosphereParameters*,gnss::SphericalHarmonicsIonosphereParameters*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    std::vector<gnss::Measurement>::__throw_length_error[abi:ne200100]();
  }

  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29904E30C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<gnss::SphericalHarmonicsIonosphereParameters>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 62))
    {
      operator new();
    }

    std::vector<gnss::Measurement>::__throw_length_error[abi:ne200100]();
  }

  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29904E438(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t NK_Reflection_Rejection_Ped(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v99 = *MEMORY[0x29EDCA608];
  v4 = a3 + 24576;
  if (*(a4 + 1872))
  {
    if (*(a3 + 27136))
    {
      if (!*(a4 + 1488) && *(a3 + 27520) <= 6.0 && (*(a3 + 20) - 4) >= 5 && *(a4 + 1881) > 0xEu)
      {
        v10 = result;
        if (!*(result + 240) || (v11 = *(result + 72), v11 >= -10.0) && v11 <= 70.0 && fabs(*(result + 112)) <= 2.5)
        {
          v91 = (a4 + 21675);
          v90 = (a4 + 6771);
          v7 = (a3 + 27732);
          if ((*(a3 + 27732) & 1) == 0)
          {
            *(a3 + 27732) = 1;
            bzero((a3 + 28080), 0x9C00uLL);
            *&v12 = -1;
            *(&v12 + 1) = -1;
            *(a3 + 28064) = v12;
            *(a3 + 28038) = v12;
            *(a3 + 28054) = v12;
            *(a3 + 28006) = v12;
            *(a3 + 28022) = v12;
            *(a3 + 27974) = v12;
            *(a3 + 27990) = v12;
            *(a3 + 27942) = v12;
            *(a3 + 27958) = v12;
            *(a3 + 27910) = v12;
            *(a3 + 27926) = v12;
            *(a3 + 27878) = v12;
            *(a3 + 27894) = v12;
            *(a3 + 27846) = v12;
            *(a3 + 27862) = v12;
            *(a3 + 27814) = v12;
            *(a3 + 27830) = v12;
            *(a3 + 27782) = v12;
            *(a3 + 27798) = v12;
            *(a3 + 27750) = v12;
            *(a3 + 27766) = v12;
            *(a3 + 27734) = v12;
          }

          v13 = 0;
          v93 = 0;
          *&v14 = -1;
          *(&v14 + 1) = -1;
          v98[6] = v14;
          v98[7] = v14;
          v98[4] = v14;
          v98[5] = v14;
          v94 = a3 + 27734;
          v98[2] = v14;
          v98[3] = v14;
          v95 = a3 + 27952;
          v92 = a3 + 1920;
          v98[0] = v14;
          v98[1] = v14;
          v96 = a4 + 64264;
          while (1)
          {
            v15 = *(a2 + 96 + 4 * v13);
            result = Is_Legal(v15);
            if (result)
            {
              v16 = v15 == 7;
            }

            else
            {
              v16 = 1;
            }

            if (!v16 && (v15 != 4 || BYTE2(v15) - 59 >= 0xFFFFFFCB) && *(a4 + 6824 + v13) == 1 && *(a4 + 21728 + v13) == 1 && *(a4 + 57 + v13) == 1)
            {
              if (*(a4 + 64008 + v13) == 1 && *(a4 + 63880 + v13) == 1)
              {
                result = GNSS_Id_To_Num_Prn_Idx(v15);
                LODWORD(v17) = *(v94 + result);
                if (v17 == 255)
                {
                  v18 = *(v4 + 3157);
                  if (v18 == 128)
                  {
                    result = EvLog("NK_Reflection_Rejection_Ped: No space");
LABEL_54:
                    if (v93 < 4)
                    {
                      goto LABEL_8;
                    }

                    VecMedian8(v97, v93);
                    v26 = 0;
                    v27 = a3 + 28080;
                    v28 = a2 + 3424;
                    v30 = -v29;
                    v31 = a3 + 28112;
                    v32 = a3 + 28304;
                    v33 = a3 + 28108;
                    result = a3 + 28312;
                    v34 = (a3 + 28320);
                    v35 = a3 + 27734;
                    v36 = a3 + 27952;
                    while (2)
                    {
                      v37 = *(v36 + v26);
                      if (v37 != 255)
                      {
                        v38 = *(v98 + v26);
                        if (v38 == 255)
                        {
                          v46 = v27 + 312 * v26;
                          if (*v46 >= 1 && (v47 = *(v46 + 4)) != 0 && *(v46 + 32 + 4 * (*v46 - 1)) && (v48 = *a4, (10 * *(v10 + 1668) + 300000 + *(v46 + 32)) > *a4))
                          {
                            *(v46 + 24) = *(v46 + 24) + v30 * ((v48 - v47) * 0.001);
                            *(v46 + 4) = v48;
                          }

                          else
                          {
                            *(v46 + 304) = 0;
                            *(v46 + 272) = 0uLL;
                            *(v46 + 288) = 0uLL;
                            *(v46 + 240) = 0uLL;
                            *(v46 + 256) = 0uLL;
                            *(v46 + 208) = 0uLL;
                            *(v46 + 224) = 0uLL;
                            *(v46 + 176) = 0uLL;
                            *(v46 + 192) = 0uLL;
                            *(v46 + 144) = 0uLL;
                            *(v46 + 160) = 0uLL;
                            *(v46 + 112) = 0uLL;
                            *(v46 + 128) = 0uLL;
                            *(v46 + 80) = 0uLL;
                            *(v46 + 96) = 0uLL;
                            *(v46 + 48) = 0uLL;
                            *(v46 + 64) = 0uLL;
                            *(v46 + 16) = 0uLL;
                            *(v46 + 32) = 0uLL;
                            *(v35 + v37) = -1;
                            *v46 = 0uLL;
                            *(v36 + v26) = -1;
                            --*(v4 + 3157);
                          }
                        }

                        else
                        {
                          v39 = (v27 + 312 * v26);
                          v40 = *v39;
                          if (!v40 || (v41 = v40 - 1, v42 = *a4, v43 = v39[v41 + 8], v44 = *a4 - v43, v44 > 300000))
                          {
                            *(v39 + 38) = 0;
                            *(v39 + 17) = 0uLL;
                            *(v39 + 18) = 0uLL;
                            *(v39 + 15) = 0uLL;
                            *(v39 + 16) = 0uLL;
                            *(v39 + 13) = 0uLL;
                            *(v39 + 14) = 0uLL;
                            *(v39 + 11) = 0uLL;
                            *(v39 + 12) = 0uLL;
                            *(v39 + 9) = 0uLL;
                            *(v39 + 10) = 0uLL;
                            *(v39 + 7) = 0uLL;
                            *(v39 + 8) = 0uLL;
                            *(v39 + 5) = 0uLL;
                            *(v39 + 6) = 0uLL;
                            *(v39 + 3) = 0uLL;
                            *(v39 + 4) = 0uLL;
                            *(v39 + 1) = 0uLL;
                            *(v39 + 2) = 0uLL;
                            *v39 = 0uLL;
                            v45 = *a4;
                            *v39 = 1;
                            v39[1] = v45;
                            *(v39 + 1) = *(v96 + 8 * v38);
                            v39[8] = v45;
                            *(v39 + 9) = 0;
                            *(v39 + 2) = *(v28 + 8 * v38);
                            goto LABEL_110;
                          }

                          v49 = *(v39 + 2);
                          if (vabdd_f64(*(v28 + 8 * v38), v49) > 149896.229)
                          {
                            *(v39 + 38) = 0;
                            *(v39 + 17) = 0uLL;
                            *(v39 + 18) = 0uLL;
                            *(v39 + 15) = 0uLL;
                            *(v39 + 16) = 0uLL;
                            *(v39 + 13) = 0uLL;
                            *(v39 + 14) = 0uLL;
                            *(v39 + 11) = 0uLL;
                            *(v39 + 12) = 0uLL;
                            *(v39 + 9) = 0uLL;
                            *(v39 + 10) = 0uLL;
                            *(v39 + 7) = 0uLL;
                            *(v39 + 8) = 0uLL;
                            *(v39 + 5) = 0uLL;
                            *(v39 + 6) = 0uLL;
                            *(v39 + 3) = 0uLL;
                            *(v39 + 4) = 0uLL;
                            *(v39 + 1) = 0uLL;
                            *(v39 + 2) = 0uLL;
                            *v39 = 0uLL;
                            goto LABEL_110;
                          }

                          v50 = v39[1];
                          v51 = *(v39 + 3) + v30 * ((v42 - v50) * 0.001);
                          *(v39 + 3) = v51;
                          v52 = 1.5;
                          v53 = 0.15;
                          if (*(v4 + 2674) == 1)
                          {
                            v53 = 0.15;
                            if (*(a3 + 27520) > 1.5)
                            {
                              if (*(a4 + 62056) >= 0.15)
                              {
                                v53 = *(a4 + 62056);
                              }

                              else
                              {
                                v53 = 0.15;
                              }

                              v52 = *(a3 + 27520);
                            }
                          }

                          v54 = v44;
                          v55 = v44 * 0.001;
                          v56 = v55 * ((*(v39 + 1) + *(v96 + 8 * v38)) * 0.5);
                          v57 = *(v92 + 40 * v38 + 16);
                          v58 = v55 * (v53 * 3.0 + v57 * v52);
                          v59 = *(v28 + 8 * v38);
                          v60 = v59 - (v49 + v51 + v56 + v58 + 50.0);
                          v61 = v60 >= 1000.0 || v60 <= 0.0;
                          v62 = 2;
                          if (v61)
                          {
                            v63 = 0;
                          }

                          else
                          {
                            v63 = 2;
                          }

                          if ((v63 - 1) < 0x1E)
                          {
LABEL_82:
                            v39[1] = v42;
                            *(a4 + 7336 + 4 * v38) = v62;
                            ++v90[1];
                            v35 = a3 + 27734;
                            *(a4 + 7080 + v38) = 0;
                            --*v90;
                            *(a4 + 22240 + 4 * v38) = v62;
                            ++v91[1];
                            *(a4 + 21984 + v38) = 0;
                            --*v91;
                            v36 = a3 + 27952;
                            goto LABEL_110;
                          }

                          if (v40 > 1)
                          {
                            v64 = 0;
                            v65 = v40 - 1;
                            while (*(v31 + 4 * v64) < v42 - 10 * *(v10 + 1668))
                            {
                              ++v64;
                              --v65;
                              if (v40 == v64)
                              {
                                goto LABEL_97;
                              }
                            }

                            v66 = 1.0;
                            v67 = v49;
                            if (v41 > v64)
                            {
                              v68 = v40 - v64;
                              v69 = 0.0;
                              v67 = v49;
                              v70 = v49;
                              v71 = (v32 + 8 * v40);
                              do
                              {
                                v69 = v69 + *(v71 - 10) + *v71;
                                v70 = v70 - *(v71 - 20);
                                v67 = v69 + v67 + v70;
                                --v71;
                                --v65;
                              }

                              while (v65);
                              v66 = v68;
                            }

                            v72 = v59 - (50.0 / v66 + v58 + v56 + v51 + v67 / v66 + 20.0);
                            if (v72 < 1000.0 && v72 > 0.0)
                            {
                              v63 = 3;
                            }

LABEL_97:
                            if (v40 < 6 || v50 != v43 || v63)
                            {
                              goto LABEL_104;
                            }

                            v74 = fmax(v53, 0.75) * 3.0;
                            v75 = v51 + v56;
                            v76 = v49 + v51 + v56 - v59;
                            v77 = v76 * v54;
                            v78 = v54 * v54;
                            v79 = (v33 + 4 * v41);
                            v80 = (result + 8 * v41);
                            v81 = 1;
                            v82 = v49;
                            do
                            {
                              v83 = *v79--;
                              v84 = (v42 - v83);
                              v75 = v75 + *(v80 - 10) + *v80;
                              v82 = v82 - *(v80 - 20);
                              v85 = v75 + v82 - v59;
                              ++v81;
                              v54 = v54 + v84;
                              v78 = v78 + v84 * v84;
                              v76 = v76 + v85;
                              v77 = v77 + v85 * v84;
                              --v80;
                            }

                            while (v40 != v81);
                            v86 = v40 * v78 - v54 * v54;
                            if (v86 > 0.0)
                            {
                              v63 = 4 * ((v76 * -v54 + v40 * v77) * -1000.0 / v86 > v74 + v57 * v52);
LABEL_104:
                              v62 = v63;
                              if ((v63 - 1) <= 0x1D)
                              {
                                goto LABEL_82;
                              }
                            }

                            if (v40 == 10)
                            {
                              v87 = 0;
                              v88 = v34;
                              do
                              {
                                *(v31 + v87) = *(v31 + v87 + 4);
                                *(v88 - 21) = *(v88 - 20);
                                *(v88 - 11) = *(v88 - 10);
                                *(v88 - 1) = *v88;
                                v87 += 4;
                                ++v88;
                              }

                              while (v87 != 36);
                              v42 = *a4;
                              v59 = *(v28 + 8 * v38);
                              LODWORD(v40) = 9;
                            }
                          }

                          v35 = a3 + 27734;
                          v36 = a3 + 27952;
                          *v39 = v40 + 1;
                          v39[1] = v42;
                          v39[v40 + 8] = v42;
                          v89 = &v39[2 * v40];
                          *(v89 + 9) = v59 - v49;
                          *(v39 + 2) = *(v28 + 8 * v38);
                          *(v89 + 19) = *(v39 + 3);
                          *(v89 + 29) = v56;
                          *(v39 + 3) = 0;
                          *(v39 + 1) = *(v96 + 8 * v38);
                        }
                      }

LABEL_110:
                      ++v26;
                      v31 += 312;
                      v32 += 312;
                      v33 += 312;
                      result += 312;
                      v34 += 39;
                      if (v26 == 128)
                      {
                        goto LABEL_9;
                      }

                      continue;
                    }
                  }

                  v17 = 0;
                  while (*(v95 + v17) != 255)
                  {
                    if (++v17 == 128)
                    {
                      result = EvCrt_v("NK_Reflection_Rejection_Ped: CODING ERROR");
                      goto LABEL_8;
                    }
                  }

                  *(v95 + v17) = result;
                  *(v94 + result) = v17;
                  *(v4 + 3157) = v18 + 1;
                }

                *(v98 + v17) = v13;
                if (*(a2 + 1760 + v13) >= 0x13u && *(v92 + 40 * v13) >= 45)
                {
                  v19 = *(a2 + 4448 + 8 * v13) + *(v96 + 8 * v13);
                  v20 = v93;
                  if (v93)
                  {
                    if (v93 < 1)
                    {
LABEL_46:
                      v20 = v93;
                      v97[v93] = v19;
                    }

                    else
                    {
                      v21 = 0;
                      v22 = v93;
                      while (v19 >= v97[v21])
                      {
                        if (v93 == ++v21)
                        {
                          goto LABEL_46;
                        }
                      }

                      if (v93 > v21)
                      {
                        v23 = &v97[v93];
                        v24 = v23;
                        do
                        {
                          --v22;
                          v25 = *(v24-- - 1);
                          *v23 = v25;
                          v23 = v24;
                        }

                        while (v22 > v21);
                      }

                      v97[v21] = v19;
                      v20 = v93;
                    }
                  }

                  else
                  {
                    v97[0] = *(a2 + 4448 + 8 * v13) + *(v96 + 8 * v13);
                  }

                  v93 = v20 + 1;
                }
              }

              else
              {
                result = EvLog("NK_Reflection_Rejection_Ped: No SAPE data");
              }
            }

            if (++v13 == 128)
            {
              goto LABEL_54;
            }
          }
        }
      }
    }
  }

  v7 = (a3 + 27732);
LABEL_8:
  *v7 = 0;
LABEL_9:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

const void **SV_Gen_Meas_Update_Wrapper(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v23[528] = *MEMORY[0x29EDCA608];
  v2 = -4608;
  do
  {
    v3 = &__dst[v2];
    *(v3 + 4638) = 0;
    *(v3 + 576) = 0;
    *(v3 + 578) = 0;
    *(v3 + 577) = 0;
    *&v11[v2 + 21] = 0;
    v2 += 36;
  }

  while (v2);
  v4 = v11;
  v5 = 7168;
  do
  {
    *v4 = 0;
    *(v4 + 4) = 0;
    *(v4 + 12) = 0;
    *(v4 + 6) = 0;
    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
    *(v4 + 38) = 0;
    v4 += 56;
    v5 -= 56;
  }

  while (v5);
  *(v12 + 5) = 0;
  v12[0] = 0;
  v6 = v13;
  v7 = 6144;
  do
  {
    *v6 = 0;
    *(v6 + 4) = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    *(v6 + 24) = 0;
    *(v6 + 34) = 0;
    *(v6 + 26) = 0;
    *(v6 + 42) = 0;
    v6 += 12;
    v7 -= 48;
  }

  while (v7);
  v13[1536] = 0;
  v14 = 0;
  v17 = 0;
  v15 = 0u;
  v16 = 0;
  v21 = 0;
  v18 = 0;
  v20 = 0;
  v19 = 0;
  bzero(&v22, 0x20CuLL);
  bzero(v23, 0x1080uLL);
  GNSS_Validate_p_list(v1, "SV_Gen_Meas_Update_Wrapper: Entry");
  *(v1 + 168) = __dst;
  SV_Gen_Meas(*(v1 + 128), __dst, *(v1 + 208), *(v1 + 80), *(v1 + 16), *(v1 + 72), *(v1 + 40), *(v1 + 56), *(v1 + 48), *(v1 + 96), *(v1 + 64));
  *(v1 + 168) = 0;
  result = GNSS_Validate_p_list(v1, "SV_Gen_Meas_Update_Wrapper:  Exit");
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2A1C59700](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE50]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2A1C76650](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}