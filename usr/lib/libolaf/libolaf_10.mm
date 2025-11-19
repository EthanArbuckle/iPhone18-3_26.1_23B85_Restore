BOOL AzEl_SinCos(double *a1, uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v5 = a1[2];
  *(a3 + 8) = -v5;
  if (v5 <= -1.0)
  {
    v7 = 0x3FF0000000000000;
LABEL_6:
    *(a3 + 8) = v7;
    v6 = 0.0;
    goto LABEL_7;
  }

  if (v5 >= 1.0)
  {
    v7 = 0xBFF0000000000000;
    goto LABEL_6;
  }

  v6 = sqrt(v5 * -v5 + 1.0);
LABEL_7:
  *(a3 + 16) = v6;
  v13[0] = 0.0;
  result = R8_EQ((a3 + 16), v13);
  if (result)
  {
    goto LABEL_8;
  }

  v10 = a1[1] / v6;
  *(a2 + 8) = v10;
  v11 = *a1 / v6;
  *(a2 + 16) = v11;
  if (v10 >= 1.0)
  {
    v9 = xmmword_29972A940;
    goto LABEL_16;
  }

  if (v10 <= -1.0)
  {
    v9 = xmmword_29972A950;
    goto LABEL_16;
  }

  if (v11 >= 1.0)
  {
LABEL_8:
    v9 = xmmword_29972A960;
LABEL_16:
    *(a2 + 8) = v9;
    goto LABEL_17;
  }

  if (v11 <= -1.0)
  {
    v9 = xmmword_29972A970;
    goto LABEL_16;
  }

LABEL_17:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void *NK_Obs_Equ_SV(void *result, int a2, int a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = *MEMORY[0x29EDCA608];
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  if (a2)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (result != 2)
  {
    v6 = result;
  }

  if ((v6 - 3) < 2)
  {
    v8 = 0;
    *(a5 + 24) = a6;
    *(a5 + 40) = *(a4 + 24);
    *(a5 + 48) = *(a4 + 32);
    *(a5 + 56) = *(a4 + 40);
    do
    {
      *(a5 + 64 + v8) = -(*(a4 + v8) * a6);
      v8 += 8;
    }

    while (v8 != 24);
    goto LABEL_21;
  }

  if (v6 == 2)
  {
    *(a5 + 24) = 0x3FF0000000000000;
    *(a5 + 64) = -*a4;
    *(a5 + 72) = -*(a4 + 8);
    *(a5 + 80) = -*(a4 + 16);
LABEL_21:
    v10 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (v6 == 1)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    if (a3 == 4)
    {
      v7 = (a5 + 16);
    }

    else
    {
      v7 = a5;
      if (a3 == 2)
      {
        v7 = (a5 + 8);
      }
    }

    *v7 = 0x3FF0000000000000;
    *(a5 + 32) = *(a4 + 48);
    *(a5 + 40) = -*a4;
    *(a5 + 48) = -*(a4 + 8);
    *(a5 + 56) = -*(a4 + 16);
    goto LABEL_21;
  }

  v9 = *MEMORY[0x29EDCA608];

  return EvCrt_Illegal_Default("NK_Obs_Equ_SV", 0xBEu);
}

uint64_t xofSvcs00_23GetEeNumSats(int a1)
{
  v1 = a1;
  v8 = *MEMORY[0x29EDCA608];
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        result = BYTE3(xmmword_2A1926858);
        goto LABEL_16;
      case 5:
        result = byte_2A192686B;
        goto LABEL_16;
      case 6:
        result = BYTE3(xmmword_2A1926878);
        goto LABEL_16;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        result = byte_2A192682B;
        goto LABEL_16;
      case 2:
        result = BYTE3(xmmword_2A1926838);
        goto LABEL_16;
      case 3:
        result = byte_2A192684B;
        goto LABEL_16;
    }
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelType,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "xofSvcs00_23GetEeNumSats", 514, v1);
    LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
    result = 0;
  }

LABEL_16:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xofSvcs00_24GetBlckLen(int a1)
{
  v1 = a1;
  v8 = *MEMORY[0x29EDCA608];
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        result = BYTE5(xmmword_2A1926858);
        goto LABEL_16;
      case 5:
        result = byte_2A192686D;
        goto LABEL_16;
      case 6:
        result = BYTE5(xmmword_2A1926878);
        goto LABEL_16;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        result = byte_2A192682D;
        goto LABEL_16;
      case 2:
        result = BYTE5(xmmword_2A1926838);
        goto LABEL_16;
      case 3:
        result = byte_2A192684D;
        goto LABEL_16;
    }
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelType,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "xofSvcs00_24GetBlckLen", 514, v1);
    LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
    result = 0;
  }

LABEL_16:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xofSvcs00_25GetEeNumBlks(int a1)
{
  v1 = a1;
  v8 = *MEMORY[0x29EDCA608];
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        result = BYTE4(xmmword_2A1926858);
        goto LABEL_16;
      case 5:
        result = byte_2A192686C;
        goto LABEL_16;
      case 6:
        result = BYTE4(xmmword_2A1926878);
        goto LABEL_16;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        result = byte_2A192682C;
        goto LABEL_16;
      case 2:
        result = BYTE4(xmmword_2A1926838);
        goto LABEL_16;
      case 3:
        result = byte_2A192684C;
        goto LABEL_16;
    }
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelType,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "xofSvcs00_25GetEeNumBlks", 514, v1);
    LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
    result = 0;
  }

LABEL_16:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xofSvcs00_02SvIncluded(int a1, char a2)
{
  v11 = *MEMORY[0x29EDCA608];
  IncludedSats = xofSvcs00_22GetIncludedSats(a1);
  if ((a1 - 1) >= 6)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelType,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "xofSvcs00_02SvIncluded", 772, a1);
      LbsOsaTrace_WriteLog(8u, __str, v8, 0, 1);
      result = 0;
    }
  }

  else
  {
    result = (IncludedSats >> ((0xFFFFFF3F88FFuLL >> (8 * (a1 - 1))) + a2)) & 1;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xofSvcs00_22GetIncludedSats(int a1)
{
  v1 = a1;
  v8 = *MEMORY[0x29EDCA608];
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        v2 = &xmmword_2A1926858 + 1;
        goto LABEL_17;
      case 5:
        v2 = &qword_2A1926870;
        goto LABEL_17;
      case 6:
        v2 = &xmmword_2A1926878 + 1;
        goto LABEL_17;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v2 = &qword_2A1926830;
        goto LABEL_17;
      case 2:
        v2 = &xmmword_2A1926838 + 1;
        goto LABEL_17;
      case 3:
        v2 = &qword_2A1926850;
LABEL_17:
        result = *v2;
        goto LABEL_18;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelType,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "xofSvcs00_22GetIncludedSats", 514, v1);
    LbsOsaTrace_WriteLog(8u, __str, v4, 2, 1);
  }

  result = 0;
LABEL_18:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofSvcs00_03GetSvIndexCrr(int a1, char a2, _BYTE *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  IncludedSats = xofSvcs00_22GetIncludedSats(a1);
  if ((a1 - 1) >= 6)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelType,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 69, "XofSvcs00_03GetSvIndexCrr", 772, a1);
      LbsOsaTrace_WriteLog(8u, __str, v11, 0, 1);
      result = 0;
    }
  }

  else
  {
    if ((0xFFFFFF3F88FFuLL >> (8 * (a1 - 1))) + a2)
    {
      v7 = 0;
      do
      {
        if (((IncludedSats >> v7) & 1) == 0)
        {
          ++*a3;
        }

        ++v7;
      }

      while (((0xFFFFFF3F88FFuLL >> (8 * (a1 - 1))) + a2) != v7);
    }

    result = 1;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xofSvcs00_04PayLoadCrc(unsigned __int8 *a1, unsigned int a2, int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = XofSvcs02_02Crc32(0, a1, a2);
  if (v4 == a3)
  {
    result = 1;
  }

  else
  {
    v6 = v4;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PayLoadCrc,%u,ComputedCrc,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "xofSvcs00_04PayLoadCrc", 771, a3, v6);
      LbsOsaTrace_WriteLog(8u, __str, v8, 0, 1);
    }

    result = 3;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xofSvcs00_10ParseRtiData(signed __int8 *a1, int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RtiData\n");
LABEL_17:
      LbsOsaTrace_WriteLog(8u, __str, v7, 0, 1);
    }

LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if (a2 != 160)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_15;
    }

    bzero(__str, 0x410uLL);
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RtiData,DataLen,%u\n", v12);
    goto LABEL_14;
  }

  LOWORD(__dst[0]) = 1024;
  xofSvcs02_03EndianConvert(__dst, 2u, a1 + 156, 4u);
  v3 = *(a1 + 39);
  if (XofSvcs02_02Crc32(0, a1, 0x9Cu) != v3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_15;
    }

    bzero(__str, 0x410uLL);
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FileCrc,%u,ComputedCrc,%u\n", v9);
LABEL_14:
    LbsOsaTrace_WriteLog(8u, __str, v8, 0, 1);
LABEL_15:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RTI CRC\n");
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (xofSvcs02_03EndianConvert(g_RtiDataSizeMap, 0x18u, a1, 0xA0u) != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Rti endian conversion\n");
    goto LABEL_17;
  }

  v15 = 0u;
  memset(__dst, 0, sizeof(__dst));
  memcpy_s("xofSvcs00_10ParseRtiData", 659, __dst, 0xA0u, a1, 0xA0uLL);
  if (LOWORD(__dst[0]) != 1)
  {
    v6 = 0;
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FormatVersion,%u\n", v13);
    goto LABEL_17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RtiVer,%u,FileGpsWeek,%u,FileGpsTow,%u,FileCrc,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "xofSvcs00_10ParseRtiData", 0, LOWORD(__dst[0]), WORD1(__dst[0]), DWORD1(__dst[0]), HIDWORD(v15));
    v6 = 1;
    LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
  }

  else
  {
    v6 = 1;
  }

LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t xofSvcs00_18ParseBrdCstSvMaskData(signed __int8 *a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a3 > a2 || !a4)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_25;
    }

    bzero(__str, 0x410uLL);
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataLen,%u,Offset,%u\n", v9);
LABEL_24:
    LbsOsaTrace_WriteLog(8u, __str, v10, 0, 1);
    result = 0;
    goto LABEL_25;
  }

  if ((xofSvcs00_30ParseConstellBrdCstSvMask(1, unk_2A1926828, qword_2A1926830, a1, a2, *a4 + a3, a4) & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_25;
    }

    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS DataLen,%u,Offset,%u\n", v11);
    goto LABEL_24;
  }

  if ((xofSvcs00_30ParseConstellBrdCstSvMask(2, xmmword_2A1926838, *(&xmmword_2A1926838 + 1), a1, a2, *a4 + a3, a4) & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_25;
    }

    bzero(__str, 0x410uLL);
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SBAS DataLen,%u,Offset,%u\n", v12);
    goto LABEL_24;
  }

  if ((xofSvcs00_30ParseConstellBrdCstSvMask(3, unk_2A1926848, qword_2A1926850, a1, a2, *a4 + a3, a4) & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_25;
    }

    bzero(__str, 0x410uLL);
    v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx QZSS DataLen,%u,Offset,%u\n", v13);
    goto LABEL_24;
  }

  if ((xofSvcs00_30ParseConstellBrdCstSvMask(4, xmmword_2A1926858, *(&xmmword_2A1926858 + 1), a1, a2, *a4 + a3, a4) & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_25;
    }

    bzero(__str, 0x410uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GAL DataLen,%u,Offset,%u\n", v14);
    goto LABEL_24;
  }

  if ((xofSvcs00_30ParseConstellBrdCstSvMask(5, unk_2A1926868, qword_2A1926870, a1, a2, *a4 + a3, a4) & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_25;
    }

    bzero(__str, 0x410uLL);
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLO DataLen,%u,Offset,%u\n", v15);
    goto LABEL_24;
  }

  if ((xofSvcs00_30ParseConstellBrdCstSvMask(6, xmmword_2A1926878, *(&xmmword_2A1926878 + 1), a1, a2, *a4 + a3, a4) & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_25;
    }

    bzero(__str, 0x410uLL);
    v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BDS DataLen,%u,Offset,%u\n", v16);
    goto LABEL_24;
  }

  result = 1;
LABEL_25:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xofSvcs00_30ParseConstellBrdCstSvMask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a6 <= a5)
  {
    v9 = a1;
    *v26 = 2048;
    if ((a2 & 0xFF000000000000) != 0)
    {
      if (a6 + 8 > a5)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
LABEL_10:
          v9 = 0;
          goto LABEL_29;
        }

        bzero(__str, 0x410uLL);
        v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v24 = a6 + 8;
        v25 = a5;
        v22 = 772;
        v23 = v9;
        v11 = "%10u %s%c %s: #%04hx Constel,%u,ComputedOffset,%lu,DataLen,%u\n";
        goto LABEL_8;
      }

      v16 = (a4 + a6);
      if (xofSvcs02_03EndianConvert(v26, 2u, v16, 8u) != 1)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          goto LABEL_10;
        }

        bzero(__str, 0x410uLL);
        v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EndianCnv,Constel,%u\n", v21);
        goto LABEL_9;
      }

      if (v9 > 3)
      {
        if (v9 == 4)
        {
          v17 = &qword_2A1920E28;
          v18 = 1747;
        }

        else if (v9 == 5)
        {
          v17 = &xmmword_2A1920E30;
          v18 = 1752;
        }

        else
        {
          v17 = &xmmword_2A1920E30 + 1;
          v18 = 1757;
        }
      }

      else
      {
        if (v9 == 1)
        {
          memcpy_s("xofSvcs00_30ParseConstellBrdCstSvMask", 1732, &xmmword_2A1920E10, 8u, v16, 8uLL);
          *a7 += 8;
          goto LABEL_29;
        }

        if (v9 == 2)
        {
          v17 = &xmmword_2A1920E10 + 1;
          v18 = 1737;
        }

        else
        {
          v17 = &qword_2A1920E20;
          v18 = 1742;
        }
      }

      memcpy_s("xofSvcs00_30ParseConstellBrdCstSvMask", v18, v17, 8u, v16, 8uLL);
      *a7 += 8;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Constel,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "xofSvcs00_30ParseConstellBrdCstSvMask", 769, v9);
      v9 = 1;
      LbsOsaTrace_WriteLog(8u, __str, v14, 5, 1);
      goto LABEL_29;
    }

    v9 = 1;
    goto LABEL_29;
  }

  v9 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v23 = a5;
    v24 = a6;
    v22 = 770;
    v11 = "%10u %s%c %s: #%04hx DataLen,%u,Offset,%u\n";
LABEL_8:
    v12 = snprintf(__str, 0x40FuLL, v11, v10, "GNC", 69, "xofSvcs00_30ParseConstellBrdCstSvMask", v22, v23, v24, v25);
LABEL_9:
    LbsOsaTrace_WriteLog(8u, __str, v12, 0, 1);
    goto LABEL_10;
  }

LABEL_29:
  v19 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t xofSvcs00_19ParseHeader(unsigned __int8 *a1, uint64_t a2)
{
  v51 = *MEMORY[0x29EDCA608];
  if (!a1 || a2 <= 0x7F)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v35 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HeaderData,DataLen,%u\n", v35);
LABEL_27:
      LbsOsaTrace_WriteLog(8u, __str, v10, 0, 1);
    }

LABEL_28:
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Header CRC\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "xofSvcs00_19ParseHeader", 771);
      LbsOsaTrace_WriteLog(8u, __str, v13, 0, 1);
    }

    result = 2;
    goto LABEL_31;
  }

  *v49 = 1024;
  v4 = XofSvcs02_02Crc32(0, a1, 0x7Cu);
  LODWORD(__dst) = *(a1 + 31);
  xofSvcs02_03EndianConvert(v49, 2u, &__dst, 4u);
  if (v4 != __dst)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HeaderCrc,%u,ComputedCrc,%u\n", v11);
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (xofSvcs02_03EndianConvert(g_HeaderSizeMap, 0x41u, a1, 0x80u) == 1)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    __dst = 0u;
    v42 = 0u;
    memcpy_s("xofSvcs00_19ParseHeader", 2040, &__dst, 0x80u, a1, 0x80uLL);
    if (__dst != 2 || a2 - 128 != v48)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        goto LABEL_38;
      }

      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v39 = v48;
      v40 = a2;
      v37 = 770;
      v38 = __dst;
      v19 = "%10u %s%c %s: #%04hx Ver,%u,PayloadLen,%u,DataLen,%u\n";
      goto LABEL_36;
    }

    if ((BYTE3(v46) | BYTE2(v46)) | BYTE1(v46))
    {
      v5 = 76;
    }

    else
    {
      v5 = 28;
    }

    if ((BYTE3(v43) | BYTE2(v43)) | BYTE1(v43))
    {
      v6 = v5 + 16;
    }

    else
    {
      v6 = v5;
    }

    if ((BYTE3(v44) | BYTE2(v44)) | BYTE1(v44))
    {
      v6 += 16;
    }

    if ((BYTE3(v45) | BYTE2(v45)) | BYTE1(v45))
    {
      v7 = v6 + 16;
    }

    else
    {
      v7 = v6;
    }

    v8 = v7 + 16;
    if (!((BYTE3(v46) | BYTE2(v46)) | BYTE1(v46)))
    {
      v8 = v7;
    }

    if (WORD1(v47))
    {
      v9 = 84 * BYTE2(v47);
    }

    else
    {
      v9 = 0;
      if (!BYTE1(v47))
      {
LABEL_43:
        if (BYTE3(v42))
        {
          v22 = (BYTE3(v42) * BYTE4(v42)) << 6;
        }

        else
        {
          v22 = 0;
        }

        if (BYTE3(v46))
        {
          v23 = (BYTE3(v46) * BYTE4(v46)) << 6;
        }

        else
        {
          v23 = 0;
        }

        if (BYTE3(v45))
        {
          v24 = 68 * BYTE3(v45) * BYTE4(v45);
        }

        else
        {
          v24 = 0;
        }

        if (BYTE3(v44))
        {
          v25 = (BYTE3(v44) * BYTE4(v44)) << 6;
        }

        else
        {
          v25 = 0;
        }

        if (BYTE3(v47))
        {
          v26 = 84 * BYTE3(v47) * BYTE4(v47);
        }

        else
        {
          v26 = 0;
        }

        v27 = 44 * BYTE2(v46) + 36 * BYTE1(v46) + 40 * BYTE2(v43) + 68 * BYTE2(v45) + 28 * BYTE1(v45) + v8 + v9 + 32 * (BYTE1(v42) + BYTE1(v44)) + ((BYTE2(v42) + BYTE2(v44)) << 6) + v22 + v23 + v24 + v25 + v26;
        if (BYTE6(v42) == 1)
        {
          v27 += 8;
        }

        if (BYTE6(v43) == 1)
        {
          v27 += 8;
        }

        if (BYTE6(v44) == 1)
        {
          v27 += 8;
        }

        if (BYTE6(v45) == 1)
        {
          v27 += 8;
        }

        if (BYTE6(v46) == 1)
        {
          v27 += 8;
        }

        if (BYTE6(v47) == 1)
        {
          v28 = v27 + 8;
        }

        else
        {
          v28 = v27;
        }

        if (v48 >= v28)
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v29 = mach_continuous_time();
            v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx OrbVer,%u,FileGpsWeek,%u,FileGpsTow,%u,StartGpsWeek,%u,StartGpsTow,%u,PayloadLen,%u,ExpPayloadLen,%u\n", (*&g_MacClockTicksToMsRelation * v29), "GNC", 73, "xofSvcs00_28ValidateHeader", 0, __dst, WORD1(__dst), DWORD1(__dst), WORD5(__dst), HIDWORD(__dst), v48, v28);
            LbsOsaTrace_WriteLog(8u, __str, v30, 4, 1);
          }

          if (xofSvcs00_29ValidateConstellInfo(1, &v42, 0x20u))
          {
            if (xofSvcs00_29ValidateConstellInfo(2, &v43, 0x27u))
            {
              if (xofSvcs00_29ValidateConstellInfo(3, &v44, 0xAu))
              {
                if (xofSvcs00_29ValidateConstellInfo(4, &v45, 0x24u))
                {
                  if (xofSvcs00_29ValidateConstellInfo(5, &v46, 0x18u))
                  {
                    if (xofSvcs00_29ValidateConstellInfo(6, &v47, 0x25u))
                    {
                      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v31 = mach_continuous_time();
                        v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PayLoadLen,%u,PayLoadCrc,%u,HdrCrc,%u\n", (*&g_MacClockTicksToMsRelation * v31), "GNC", 73, "xofSvcs00_28ValidateHeader", 0, v48, DWORD1(v48), HIDWORD(v48));
                        LbsOsaTrace_WriteLog(8u, __str, v32, 4, 1);
                      }

                      result = xofSvcs00_04PayLoadCrc(a1 + 128, v48, SDWORD1(v48));
                      if (result != 1)
                      {
                        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v33 = mach_continuous_time();
                          v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Payload CRC\n", (*&g_MacClockTicksToMsRelation * v33), "GNC", 69, "xofSvcs00_19ParseHeader", 771);
                          LbsOsaTrace_WriteLog(8u, __str, v34, 0, 1);
                        }

                        result = 3;
                      }

                      goto LABEL_31;
                    }

                    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                    {
                      goto LABEL_38;
                    }

                    bzero(__str, 0x410uLL);
                    v37 = 770;
                    v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                    v19 = "%10u %s%c %s: #%04hx Bds\n";
                    goto LABEL_37;
                  }

                  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v37 = 770;
                    v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                    v19 = "%10u %s%c %s: #%04hx Glo\n";
                    goto LABEL_37;
                  }
                }

                else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v37 = 770;
                  v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                  v19 = "%10u %s%c %s: #%04hx Gal\n";
                  goto LABEL_37;
                }
              }

              else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v37 = 770;
                v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                v19 = "%10u %s%c %s: #%04hx Qzss\n";
                goto LABEL_37;
              }
            }

            else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v37 = 770;
              v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v19 = "%10u %s%c %s: #%04hx Sabs\n";
              goto LABEL_37;
            }
          }

          else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v37 = 770;
            v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v19 = "%10u %s%c %s: #%04hx Gps\n";
            goto LABEL_37;
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v39 = v48;
          v40 = v28;
          v37 = 769;
          v38 = __dst;
          v19 = "%10u %s%c %s: #%04hx Ver,%u,PayloadLen,%u,ExpectedDataLen,%u\n";
LABEL_36:
          v36 = v18;
LABEL_37:
          v20 = snprintf(__str, 0x40FuLL, v19, v36, "GNC", 69, "xofSvcs00_28ValidateHeader", v37, v38, v39, v40);
          LbsOsaTrace_WriteLog(8u, __str, v20, 0, 1);
        }

LABEL_38:
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
        result = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Header\n");
          goto LABEL_40;
        }

        goto LABEL_31;
      }
    }

    v8 += 16;
    v9 += 40 * BYTE1(v47);
    goto LABEL_43;
  }

  v16 = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
  result = 0;
  if (v16)
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Header endian conversion\n");
LABEL_40:
    LbsOsaTrace_WriteLog(8u, __str, v17, 0, 1);
    result = 0;
  }

LABEL_31:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xofSvcs00_20ParsePayLoad(signed __int8 *a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v212 = *MEMORY[0x29EDCA608];
  if (a3 <= a2 && a2 && a1 && a4)
  {
    if (a3 + 8 > a2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ComputedOffset,%lu,DataLen,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "xofSvcs00_11ParseIonoModel", 770, a3 + 8, a2);
        LbsOsaTrace_WriteLog(8u, __str, v9, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx IonoModel\n");
LABEL_26:
        LbsOsaTrace_WriteLog(8u, __str, v11, 0, 1);
        result = 0;
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    memcpy_s("xofSvcs00_11ParseIonoModel", 699, &g_PayLoad, 8u, &a1[a3], 8uLL);
    v14 = *a4 + 8;
    *a4 = v14;
    v210 = 0;
    v15 = v14 + a3;
    if (v15 > a2)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        goto LABEL_23;
      }

      bzero(__str, 0x410uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v202 = a2;
      v204 = v15;
      v17 = "%10u %s%c %s: #%04hx DataLen,%u,Offset,%u\n";
LABEL_15:
      v18 = snprintf(__str, 0x40FuLL, v17, v16, "GNC", 69, "xofSvcs00_12ParseUtcModel", 770, v202, v204);
      goto LABEL_22;
    }

    v19 = &a1[v15];
    if (xofSvcs02_03EndianConvert(byte_2A1920B4C, 9u, v19, 0x14u) != 1)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        goto LABEL_23;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UTC model endian conversion\n");
LABEL_22:
      LbsOsaTrace_WriteLog(8u, __str, v18, 0, 1);
LABEL_23:
      result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UTC\n");
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    v20 = v15 + 20;
    if (v20 > a2)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        goto LABEL_23;
      }

      bzero(__str, 0x410uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v202 = v20;
      v204 = a2;
      v17 = "%10u %s%c %s: #%04hx ComputedOffset,%lu,DataLen,%u\n";
      goto LABEL_15;
    }

    memcpy_s("xofSvcs00_12ParseUtcModel", 739, &g_PayLoad + 8, 0x14u, v19, 0x14uLL);
    v22 = *a4 + 20;
    *a4 = v22;
    v23 = v22 + a3;
    if (v23 > a2)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
LABEL_32:
        result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
        if (!result)
        {
          goto LABEL_27;
        }

        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLONASS channel map\n");
        goto LABEL_26;
      }

      bzero(__str, 0x410uLL);
      v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataLen,%u,Offset,%u\n", v24);
LABEL_31:
      LbsOsaTrace_WriteLog(8u, __str, v25, 0, 1);
      goto LABEL_32;
    }

    if (byte_2A192686B || byte_2A192686A || byte_2A1926869)
    {
      if (v23 + 48 > a2)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          goto LABEL_32;
        }

        bzero(__str, 0x410uLL);
        v29 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Offset,%u,PayLoadLen,%u\n", v29);
        goto LABEL_31;
      }

      v30 = &a1[v23];
      v26 = 48;
      memcpy_s("xofSvcs00_13ParseGloChanMap", 792, &unk_2A1920DE0, 0x30u, v30, 0x30uLL);
    }

    else
    {
      v26 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v27 = mach_continuous_time();
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLONASS channel map\n", (*&g_MacClockTicksToMsRelation * v27), "GNC", 68, "xofSvcs00_13ParseGloChanMap", 769);
        LbsOsaTrace_WriteLog(8u, __str, v28, 5, 1);
        v26 = 0;
      }
    }

    v31 = *a4 + v26;
    *a4 = v31;
    v210 = 0;
    v32 = v31 + a3;
    if (v32 > a2)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
LABEL_49:
        result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
        if (!result)
        {
          goto LABEL_27;
        }

        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Time model\n");
        goto LABEL_26;
      }

      bzero(__str, 0x410uLL);
      v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v201 = a2;
      v203 = v32;
      v197 = 770;
      v34 = "%10u %s%c %s: #%04hx DataLen,%u,Offset,%u\n";
      goto LABEL_46;
    }

    v37 = &a1[v32];
    if (BYTE3(xmmword_2A1926838) || *(&xmmword_2A1926838 + 1))
    {
      if (v32 + 16 > a2)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          goto LABEL_49;
        }

        bzero(__str, 0x410uLL);
        v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v201 = v32 + 16;
        v203 = a2;
        v197 = 772;
        v34 = "%10u %s%c %s: #%04hx SBAS ComputedOffset,%lu,DataLen,%u\n";
        goto LABEL_46;
      }

      v38 = 16;
      if (xofSvcs02_03EndianConvert(_MergedGlobals, 8u, &a1[v32], 0x10u) != 1)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          goto LABEL_49;
        }

        bzero(__str, 0x410uLL);
        v197 = 770;
        v193 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v34 = "%10u %s%c %s: #%04hx SBAS time model endian conversion\n";
        goto LABEL_47;
      }

      memcpy_s("xofSvcs00_14ParseTimeModel", 843, &unk_2A1920D0C, 0x10u, &a1[v32], 0x10uLL);
      v210 = 16;
    }

    else
    {
      v38 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v39 = mach_continuous_time();
        v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SBAS time model\n", (*&g_MacClockTicksToMsRelation * v39), "GNC", 68, "xofSvcs00_14ParseTimeModel", 769);
        LbsOsaTrace_WriteLog(8u, __str, v40, 5, 1);
        v38 = 0;
      }
    }

    if (byte_2A192684B || byte_2A1926849 || byte_2A192684A)
    {
      if ((v38 + v32) + 16 > a2)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          goto LABEL_49;
        }

        bzero(__str, 0x410uLL);
        v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v201 = v38 + v32 + 16;
        v203 = a2;
        v197 = 772;
        v34 = "%10u %s%c %s: #%04hx QZSS ComputedOffset,%lu,DataLen,%u\n";
        goto LABEL_46;
      }

      if (xofSvcs02_03EndianConvert(_MergedGlobals, 8u, &v37[v38], 0x10u) != 1)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          goto LABEL_49;
        }

        bzero(__str, 0x410uLL);
        v197 = 770;
        v193 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v34 = "%10u %s%c %s: #%04hx Qzss time model endian conversion\n";
        goto LABEL_47;
      }

      memcpy_s("xofSvcs00_14ParseTimeModel", 875, &xmmword_2A1920D10 + 12, 0x10u, &v37[v38], 0x10uLL);
      v38 += 16;
      v210 = v38;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v41 = mach_continuous_time();
      v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx QZSS time model\n", (*&g_MacClockTicksToMsRelation * v41), "GNC", 68, "xofSvcs00_14ParseTimeModel", 769);
      LbsOsaTrace_WriteLog(8u, __str, v42, 5, 1);
    }

    if (BYTE3(xmmword_2A1926858) || *(&xmmword_2A1926858 + 1))
    {
      if ((v38 + v32) + 16 > a2)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          goto LABEL_49;
        }

        bzero(__str, 0x410uLL);
        v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v201 = v38 + v32 + 16;
        v203 = a2;
        v197 = 772;
        v34 = "%10u %s%c %s: #%04hx Galileo ComputedOffset,%lu,DataLen,%u\n";
        goto LABEL_46;
      }

      if (xofSvcs02_03EndianConvert(_MergedGlobals, 8u, &v37[v38], 0x10u) != 1)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          goto LABEL_49;
        }

        bzero(__str, 0x410uLL);
        v197 = 770;
        v193 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v34 = "%10u %s%c %s: #%04hx Galileo time model endian conversion\n";
        goto LABEL_47;
      }

      memcpy_s("xofSvcs00_14ParseTimeModel", 906, &unk_2A1920D2C, 0x10u, &v37[v38], 0x10uLL);
      v38 += 16;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v43 = mach_continuous_time();
      v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Galileo time model\n", (*&g_MacClockTicksToMsRelation * v43), "GNC", 68, "xofSvcs00_14ParseTimeModel", 769);
      LbsOsaTrace_WriteLog(8u, __str, v44, 5, 1);
    }

    if (byte_2A192686B || byte_2A1926869 || byte_2A192686A)
    {
      if ((v38 + v32) + 16 > a2)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          goto LABEL_49;
        }

        bzero(__str, 0x410uLL);
        v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v201 = v38 + v32 + 16;
        v203 = a2;
        v197 = 772;
        v34 = "%10u %s%c %s: #%04hx GLONASS ComputedOffset,%lu,PayLoadLen,%u\n";
        goto LABEL_46;
      }

      if (xofSvcs02_03EndianConvert(_MergedGlobals, 8u, &v37[v38], 0x10u) != 1)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
        {
          goto LABEL_49;
        }

        bzero(__str, 0x410uLL);
        v197 = 770;
        v193 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v34 = "%10u %s%c %s: #%04hx GLONASS time model endian conversion\n";
        goto LABEL_47;
      }

      memcpy_s("xofSvcs00_14ParseTimeModel", 937, &xmmword_2A1920D30 + 12, 0x10u, &v37[v38], 0x10uLL);
      v38 += 16;
      v210 = v38;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v45 = mach_continuous_time();
      v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLONASS time model\n", (*&g_MacClockTicksToMsRelation * v45), "GNC", 68, "xofSvcs00_14ParseTimeModel", 769);
      LbsOsaTrace_WriteLog(8u, __str, v46, 5, 1);
    }

    if (!BYTE3(xmmword_2A1926878) && !*(&xmmword_2A1926878 + 1))
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v47 = mach_continuous_time();
        v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BeiDou time model\n", (*&g_MacClockTicksToMsRelation * v47), "GNC", 68, "xofSvcs00_14ParseTimeModel", 769);
        LbsOsaTrace_WriteLog(8u, __str, v48, 5, 1);
      }

      goto LABEL_104;
    }

    if ((v38 + v32) + 16 <= a2)
    {
      v49 = &v37[v38];
      if (xofSvcs02_03EndianConvert(_MergedGlobals, 8u, v49, 0x10u) != 1)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
        {
          goto LABEL_49;
        }

        bzero(__str, 0x410uLL);
        v57 = mach_continuous_time();
        v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BeiDou time model endian conversion\n", (*&g_MacClockTicksToMsRelation * v57), "GNC", 73, "xofSvcs00_14ParseTimeModel", 770);
        v36 = 4;
        goto LABEL_48;
      }

      memcpy_s("xofSvcs00_14ParseTimeModel", 966, &unk_2A1920D4C, 0x10u, v49, 0x10uLL);
      v38 += 16;
LABEL_104:
      v50 = *a4 + v38;
      *a4 = v50;
      v210 = 0;
      v51 = v50 + a3;
      if (v51 <= a2)
      {
        v54 = &a1[v51];
        v55 = byte_2A1926829;
        if (byte_2A1926829)
        {
          v56 = 32 * byte_2A1926829;
          if (32 * byte_2A1926829 + v51 <= a2)
          {
            v60 = 0;
            __srca = &a1[v51];
            while (xofSvcs02_03EndianConvert(byte_2A1920B55, 0xFu, v54, 0x20u) == 1)
            {
              ++v60;
              v54 += 32;
              if (v55 <= v60)
              {
                if (qword_2A1920D60)
                {
                  free(qword_2A1920D60);
                }

                qword_2A1920D60 = 0;
                v61 = gnssOsa_Calloc("xofSvcs00_21ParseAlmData", 1040, 1, 32 * v55);
                qword_2A1920D60 = v61;
                if (v61)
                {
                  memcpy_s("xofSvcs00_21ParseAlmData", 1047, v61, 32 * v55, __srca, 32 * v55);
                  v210 = 32 * v55;
                  __src = &__srca[v56];
                  goto LABEL_125;
                }

                goto LABEL_176;
              }
            }

            if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
            {
              goto LABEL_176;
            }

            bzero(__str, 0x410uLL);
            v198 = 770;
            v194 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v53 = "%10u %s%c %s: #%04hx GPS endian conversion\n";
            goto LABEL_175;
          }

          if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v52 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v201 = (32 * v55 + v51);
            v203 = a2;
            v198 = 772;
            v53 = "%10u %s%c %s: #%04hx GPS ComputedOffset,%u,DataLen,%u\n";
            goto LABEL_174;
          }
        }

        else
        {
          __src = &a1[v51];
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v58 = mach_continuous_time();
            v59 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS Alm data\n", (*&g_MacClockTicksToMsRelation * v58), "GNC", 68, "xofSvcs00_21ParseAlmData", 769);
            LbsOsaTrace_WriteLog(8u, __str, v59, 5, 1);
          }

          LODWORD(v56) = 0;
LABEL_125:
          v62 = byte_2A1926849;
          if (byte_2A1926849)
          {
            v63 = 32 * byte_2A1926849;
            v64 = v56 + v51 + 32 * byte_2A1926849;
            if (v64 <= a2)
            {
              v67 = 0;
              v68 = __src;
              while (xofSvcs02_03EndianConvert(byte_2A1920B55, 0xFu, v68, 0x20u) == 1)
              {
                ++v67;
                v68 += 32;
                if (v62 <= v67)
                {
                  if (qword_2A1920D68)
                  {
                    free(qword_2A1920D68);
                  }

                  qword_2A1920D68 = 0;
                  v69 = gnssOsa_Calloc("xofSvcs00_21ParseAlmData", 1079, 1, 32 * v62);
                  qword_2A1920D68 = v69;
                  if (v69)
                  {
                    memcpy_s("xofSvcs00_21ParseAlmData", 1086, v69, 32 * v62, __src, 32 * v62);
                    LODWORD(v56) = v210 + v63;
                    v210 += v63;
                    __src += v63;
                    goto LABEL_140;
                  }

                  goto LABEL_176;
                }
              }

              if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
              {
                goto LABEL_176;
              }

              bzero(__str, 0x410uLL);
              v198 = 770;
              v194 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v53 = "%10u %s%c %s: #%04hx QZSS Alm data endian conversion\n";
              goto LABEL_175;
            }

            if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v52 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v201 = v64;
              v203 = a2;
              v198 = 772;
              v53 = "%10u %s%c %s: #%04hx QZSS ComputedOffset,%u,DataLen,%u\n";
              goto LABEL_174;
            }
          }

          else
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v65 = mach_continuous_time();
              v66 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx QZSS Alm data\n", (*&g_MacClockTicksToMsRelation * v65), "GNC", 68, "xofSvcs00_21ParseAlmData", 769);
              LbsOsaTrace_WriteLog(8u, __str, v66, 5, 1);
            }

LABEL_140:
            v70 = BYTE1(xmmword_2A1926858);
            if (BYTE1(xmmword_2A1926858))
            {
              v71 = 28 * BYTE1(xmmword_2A1926858);
              v72 = v56 + v51 + 28 * BYTE1(xmmword_2A1926858);
              if (v72 <= a2)
              {
                v75 = 0;
                v76 = __src;
                while (xofSvcs02_03EndianConvert(byte_2A1920B64, 0x10u, v76, 0x1Cu) == 1)
                {
                  ++v75;
                  v76 += 28;
                  if (v70 <= v75)
                  {
                    if (*(&xmmword_2A1920D70 + 1))
                    {
                      free(*(&xmmword_2A1920D70 + 1));
                    }

                    *(&xmmword_2A1920D70 + 1) = 0;
                    v77 = gnssOsa_Calloc("xofSvcs00_21ParseAlmData", 1118, 1, 28 * v70);
                    *(&xmmword_2A1920D70 + 1) = v77;
                    if (v77)
                    {
                      memcpy_s("xofSvcs00_21ParseAlmData", 1125, v77, 28 * v70, __src, 28 * v70);
                      LODWORD(v56) = v210 + v71;
                      v210 += v71;
                      __src += v71;
                      goto LABEL_155;
                    }

                    goto LABEL_176;
                  }
                }

                if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                {
                  goto LABEL_176;
                }

                bzero(__str, 0x410uLL);
                v198 = 770;
                v194 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                v53 = "%10u %s%c %s: #%04hx Galileo Alm data endian conversion\n";
                goto LABEL_175;
              }

              if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v52 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                v201 = v72;
                v203 = a2;
                v198 = 772;
                v53 = "%10u %s%c %s: #%04hx Galileo ComputedOffset,%u,DataLen,%u\n";
                goto LABEL_174;
              }
            }

            else
            {
              if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v73 = mach_continuous_time();
                v74 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Galileo Alm data\n", (*&g_MacClockTicksToMsRelation * v73), "GNC", 68, "xofSvcs00_21ParseAlmData", 769);
                LbsOsaTrace_WriteLog(8u, __str, v74, 5, 1);
              }

LABEL_155:
              v78 = byte_2A1926869;
              if (byte_2A1926869)
              {
                v79 = 36 * byte_2A1926869;
                v80 = v56 + v51 + 36 * byte_2A1926869;
                if (v80 <= dword_2A1926888)
                {
                  v83 = 0;
                  v84 = __src;
                  while (xofSvcs02_03EndianConvert(byte_2A1920B97, 0x14u, v84, 0x24u) == 1)
                  {
                    ++v83;
                    v84 += 36;
                    if (v78 <= v83)
                    {
                      if (xmmword_2A1920D70)
                      {
                        free(xmmword_2A1920D70);
                      }

                      *&xmmword_2A1920D70 = 0;
                      v85 = gnssOsa_Calloc("xofSvcs00_21ParseAlmData", 1157, 1, 36 * v78);
                      *&xmmword_2A1920D70 = v85;
                      if (v85)
                      {
                        memcpy_s("xofSvcs00_21ParseAlmData", 1164, v85, 36 * v78, __src, 36 * v78);
                        LODWORD(v56) = v210 + v79;
                        v210 += v79;
                        __src += v79;
                        goto LABEL_170;
                      }

                      goto LABEL_176;
                    }
                  }

                  if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                  {
                    goto LABEL_176;
                  }

                  bzero(__str, 0x410uLL);
                  v198 = 772;
                  v194 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                  v53 = "%10u %s%c %s: #%04hx GLONASS Alm data endian conversion\n";
                  goto LABEL_175;
                }

                if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v52 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                  v201 = v80;
                  v203 = a2;
                  v198 = 771;
                  v53 = "%10u %s%c %s: #%04hx GLONASS ComputedOffset,%u,DataLen,%u\n";
                  goto LABEL_174;
                }
              }

              else
              {
                if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v81 = mach_continuous_time();
                  v82 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLONASS Alm data\n", (*&g_MacClockTicksToMsRelation * v81), "GNC", 68, "xofSvcs00_21ParseAlmData", 769);
                  LbsOsaTrace_WriteLog(8u, __str, v82, 5, 1);
                }

LABEL_170:
                v86 = BYTE1(xmmword_2A1926878);
                if (!BYTE1(xmmword_2A1926878))
                {
                  if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
                  {
LABEL_179:
                    v93 = *a4 + v210;
                    *a4 = v93;
                    v210 = 0;
                    v94 = v93 + a3;
                    if (v94 > a2)
                    {
                      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v95 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v201 = a2;
                        v203 = v94;
                        v199 = 770;
                        v96 = "%10u %s%c %s: #%04hx DataLen,%u,Offset,%u\n";
LABEL_271:
                        v195 = v95;
LABEL_272:
                        v143 = snprintf(__str, 0x40FuLL, v96, v195, "GNC", 69, "xofSvcs00_16ParseBrdCstEphData", v199, v201, v203);
                        LbsOsaTrace_WriteLog(8u, __str, v143, 0, 1);
                        goto LABEL_273;
                      }

                      goto LABEL_273;
                    }

                    v97 = &a1[v94];
                    v98 = byte_2A192682A;
                    if (byte_2A192682A)
                    {
                      v99 = byte_2A192682A << 6;
                      if ((byte_2A192682A << 6) + v94 <= a2)
                      {
                        v102 = 0;
                        __srcc = &a1[v94];
                        while (xofSvcs02_03EndianConvert(byte_2A1920BC1, 0x1Du, v97, 0x40u) == 1)
                        {
                          ++v102;
                          v97 += 64;
                          if (v98 <= v102)
                          {
                            if (qword_2A1920D88)
                            {
                              free(qword_2A1920D88);
                            }

                            qword_2A1920D88 = 0;
                            v103 = gnssOsa_Calloc("xofSvcs00_16ParseBrdCstEphData", 1253, 1, v98 << 6);
                            qword_2A1920D88 = v103;
                            if (v103)
                            {
                              memcpy_s("xofSvcs00_16ParseBrdCstEphData", 1260, v103, v98 << 6, __srcc, v98 << 6);
                              v210 = v98 << 6;
                              __srcb = &__srcc[v99];
                              goto LABEL_196;
                            }

                            goto LABEL_273;
                          }
                        }

                        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          goto LABEL_273;
                        }

                        bzero(__str, 0x410uLL);
                        v199 = 770;
                        v195 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v96 = "%10u %s%c %s: #%04hx GPS BCE data endian conversion\n";
                        goto LABEL_272;
                      }

                      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v95 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v201 = ((v98 << 6) + v94);
                        v203 = a2;
                        v199 = 772;
                        v96 = "%10u %s%c %s: #%04hx GPS ComputedOffset,%u,DataLen,%u\n";
                        goto LABEL_271;
                      }

LABEL_273:
                      result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
                      if (!result)
                      {
                        goto LABEL_27;
                      }

                      bzero(__str, 0x410uLL);
                      mach_continuous_time();
                      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BCE\n");
                      goto LABEL_26;
                    }

                    __srcb = &a1[v94];
                    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v100 = mach_continuous_time();
                      v101 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS BCE\n", (*&g_MacClockTicksToMsRelation * v100), "GNC", 68, "xofSvcs00_16ParseBrdCstEphData", 769);
                      LbsOsaTrace_WriteLog(8u, __str, v101, 5, 1);
                    }

                    LODWORD(v99) = 0;
LABEL_196:
                    v104 = BYTE2(xmmword_2A1926838);
                    if (BYTE2(xmmword_2A1926838))
                    {
                      v105 = 40 * BYTE2(xmmword_2A1926838);
                      v106 = v99 + v94 + 40 * BYTE2(xmmword_2A1926838);
                      if (v106 <= a2)
                      {
                        v109 = 0;
                        v110 = __srcb;
                        while (xofSvcs02_03EndianConvert(byte_2A1920B85, 0x12u, v110, 0x28u) == 1)
                        {
                          ++v109;
                          v110 += 40;
                          if (v104 <= v109)
                          {
                            if (xmmword_2A1920D90)
                            {
                              free(xmmword_2A1920D90);
                            }

                            *&xmmword_2A1920D90 = 0;
                            v111 = gnssOsa_Calloc("xofSvcs00_16ParseBrdCstEphData", 1292, 1, 40 * v104);
                            *&xmmword_2A1920D90 = v111;
                            if (v111)
                            {
                              memcpy_s("xofSvcs00_16ParseBrdCstEphData", 1299, v111, 40 * v104, __srcb, 40 * v104);
                              LODWORD(v99) = v210 + v105;
                              v210 += v105;
                              __srcb += v105;
                              goto LABEL_211;
                            }

                            goto LABEL_273;
                          }
                        }

                        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          goto LABEL_273;
                        }

                        bzero(__str, 0x410uLL);
                        v199 = 770;
                        v195 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v96 = "%10u %s%c %s: #%04hx SBAS BCE data endian conversion\n";
                        goto LABEL_272;
                      }

                      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v95 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v201 = v106;
                        v203 = a2;
                        v199 = 772;
                        v96 = "%10u %s%c %s: #%04hx SBAS,ComputedOffset,%u,DataLen,%u\n";
                        goto LABEL_271;
                      }

                      goto LABEL_273;
                    }

                    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v107 = mach_continuous_time();
                      v108 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SBAS BCE data\n", (*&g_MacClockTicksToMsRelation * v107), "GNC", 68, "xofSvcs00_16ParseBrdCstEphData", 769);
                      LbsOsaTrace_WriteLog(8u, __str, v108, 5, 1);
                    }

LABEL_211:
                    v112 = byte_2A192684A;
                    if (byte_2A192684A)
                    {
                      v113 = byte_2A192684A << 6;
                      v114 = v99 + v94 + (byte_2A192684A << 6);
                      if (v114 <= a2)
                      {
                        v117 = 0;
                        v118 = __srcb;
                        while (xofSvcs02_03EndianConvert(byte_2A1920BC1, 0x1Du, v118, 0x40u) == 1)
                        {
                          ++v117;
                          v118 += 64;
                          if (v112 <= v117)
                          {
                            if (*(&xmmword_2A1920D90 + 1))
                            {
                              free(*(&xmmword_2A1920D90 + 1));
                            }

                            *(&xmmword_2A1920D90 + 1) = 0;
                            v119 = gnssOsa_Calloc("xofSvcs00_16ParseBrdCstEphData", 1329, 1, v112 << 6);
                            *(&xmmword_2A1920D90 + 1) = v119;
                            if (v119)
                            {
                              memcpy_s("xofSvcs00_16ParseBrdCstEphData", 1336, v119, v112 << 6, __srcb, v112 << 6);
                              LODWORD(v99) = v210 + v113;
                              v210 += v113;
                              __srcb += v113;
                              goto LABEL_226;
                            }

                            goto LABEL_273;
                          }
                        }

                        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          goto LABEL_273;
                        }

                        bzero(__str, 0x410uLL);
                        v199 = 770;
                        v195 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v96 = "%10u %s%c %s: #%04hx QZSS BCE data endian conversion\n";
                        goto LABEL_272;
                      }

                      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v95 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v201 = v114;
                        v203 = a2;
                        v199 = 772;
                        v96 = "%10u %s%c %s: #%04hx QZSS ComputedOffset,%u,DataLen,%u\n";
                        goto LABEL_271;
                      }

                      goto LABEL_273;
                    }

                    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v115 = mach_continuous_time();
                      v116 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx QZSS BCE\n", (*&g_MacClockTicksToMsRelation * v115), "GNC", 68, "xofSvcs00_16ParseBrdCstEphData", 769);
                      LbsOsaTrace_WriteLog(8u, __str, v116, 5, 1);
                    }

LABEL_226:
                    v120 = BYTE2(xmmword_2A1926858);
                    if (BYTE2(xmmword_2A1926858))
                    {
                      v121 = 68 * BYTE2(xmmword_2A1926858);
                      v122 = v99 + v94 + 68 * BYTE2(xmmword_2A1926858);
                      if (v122 <= a2)
                      {
                        v125 = 0;
                        v126 = __srcb;
                        while (xofSvcs02_03EndianConvert(byte_2A1920BDE, 0x1Du, v126, 0x44u) == 1)
                        {
                          ++v125;
                          v126 += 68;
                          if (v120 <= v125)
                          {
                            if (qword_2A1920DA0)
                            {
                              free(qword_2A1920DA0);
                            }

                            qword_2A1920DA0 = 0;
                            v127 = gnssOsa_Calloc("xofSvcs00_16ParseBrdCstEphData", 1367, 1, 68 * v120);
                            qword_2A1920DA0 = v127;
                            if (v127)
                            {
                              memcpy_s("xofSvcs00_16ParseBrdCstEphData", 1374, v127, 68 * v120, __srcb, 68 * v120);
                              LODWORD(v99) = v210 + v121;
                              v210 += v121;
                              __srcb += v121;
                              goto LABEL_241;
                            }

                            goto LABEL_273;
                          }
                        }

                        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          goto LABEL_273;
                        }

                        bzero(__str, 0x410uLL);
                        v199 = 770;
                        v195 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v96 = "%10u %s%c %s: #%04hx Galileo BCE data endian conversion\n";
                        goto LABEL_272;
                      }

                      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v95 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v201 = v122;
                        v203 = a2;
                        v199 = 772;
                        v96 = "%10u %s%c %s: #%04hx Galileo ComputedOffset,%u,DataLen,%u\n";
                        goto LABEL_271;
                      }

                      goto LABEL_273;
                    }

                    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v123 = mach_continuous_time();
                      v124 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Galileo BCE\n", (*&g_MacClockTicksToMsRelation * v123), "GNC", 68, "xofSvcs00_16ParseBrdCstEphData", 769);
                      LbsOsaTrace_WriteLog(8u, __str, v124, 5, 1);
                    }

LABEL_241:
                    v128 = byte_2A192686A;
                    if (byte_2A192686A)
                    {
                      v129 = 44 * byte_2A192686A;
                      v130 = (v99 + v94 + v129);
                      if (v130 <= a2)
                      {
                        v137 = 0;
                        v138 = __srcb;
                        while (xofSvcs02_03EndianConvert(byte_2A1920BAB, 0x16u, v138, 0x2Cu) == 1)
                        {
                          ++v137;
                          v138 += 44;
                          if (v128 <= v137)
                          {
                            if (qword_2A1920DA8)
                            {
                              free(qword_2A1920DA8);
                            }

                            qword_2A1920DA8 = 0;
                            v139 = gnssOsa_Calloc("xofSvcs00_16ParseBrdCstEphData", 1406, 1, 44 * v128);
                            qword_2A1920DA8 = v139;
                            if (v139)
                            {
                              memcpy_s("xofSvcs00_16ParseBrdCstEphData", 1413, v139, 44 * v128, __srcb, 44 * v128);
                              LODWORD(v99) = v210 + v129;
                              v210 += v129;
                              __srcb += v129;
                              goto LABEL_267;
                            }

                            goto LABEL_273;
                          }
                        }

                        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          goto LABEL_273;
                        }

                        bzero(__str, 0x410uLL);
                        v199 = 770;
                        v195 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v96 = "%10u %s%c %s: #%04hx GLONASS BCE data endian conversion failed\n";
                        goto LABEL_272;
                      }

                      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v95 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v201 = v130;
                        v203 = a2;
                        v199 = 772;
                        v96 = "%10u %s%c %s: #%04hx GLONASS ComputedOffset,%u,DataLen,%u\n";
                        goto LABEL_271;
                      }

                      goto LABEL_273;
                    }

                    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v132 = mach_continuous_time();
                      v133 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLONASS BCE\n", (*&g_MacClockTicksToMsRelation * v132), "GNC", 68, "xofSvcs00_16ParseBrdCstEphData", 769);
                      LbsOsaTrace_WriteLog(8u, __str, v133, 5, 1);
                    }

LABEL_267:
                    v140 = BYTE2(xmmword_2A1926878);
                    if (BYTE2(xmmword_2A1926878))
                    {
                      v141 = 84 * BYTE2(xmmword_2A1926878);
                      v142 = (v99 + v94 + v141);
                      if (v142 <= a2)
                      {
                        v146 = 0;
                        v147 = __srcb;
                        while (xofSvcs02_03EndianConvert(byte_2A1920BFB, 0x1Eu, v147, 0x54u) == 1)
                        {
                          ++v146;
                          v147 += 84;
                          if (v140 <= v146)
                          {
                            if (xmmword_2A1920DB0)
                            {
                              free(xmmword_2A1920DB0);
                            }

                            *&xmmword_2A1920DB0 = 0;
                            v148 = gnssOsa_Calloc("xofSvcs00_16ParseBrdCstEphData", 1445, 1, 84 * v140);
                            *&xmmword_2A1920DB0 = v148;
                            if (v148)
                            {
                              memcpy_s("xofSvcs00_16ParseBrdCstEphData", 1452, v148, 84 * v140, __srcb, 84 * v140);
                              LODWORD(v99) = v210 + v141;
                              goto LABEL_288;
                            }

                            goto LABEL_273;
                          }
                        }

                        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          goto LABEL_273;
                        }

                        bzero(__str, 0x410uLL);
                        v199 = 770;
                        v195 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v96 = "%10u %s%c %s: #%04hx BeiDou BCE data endian conversion failed\n";
                        goto LABEL_272;
                      }

                      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v95 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v201 = v142;
                        v203 = a2;
                        v199 = 772;
                        v96 = "%10u %s%c %s: #%04hx BeiDou ComputedOffset,%u,DataLen,%u\n";
                        goto LABEL_271;
                      }

                      goto LABEL_273;
                    }

                    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v144 = mach_continuous_time();
                      v145 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BeiDou BCE\n", (*&g_MacClockTicksToMsRelation * v144), "GNC", 68, "xofSvcs00_16ParseBrdCstEphData", 769);
                      LbsOsaTrace_WriteLog(8u, __str, v145, 5, 1);
                    }

LABEL_288:
                    v149 = *a4 + v99;
                    *a4 = v149;
                    v210 = 0;
                    v150 = v149 + a3;
                    if (v150 > a2)
                    {
                      if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v151 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v201 = a2;
                        v203 = v150;
                        v200 = 770;
                        v152 = "%10u %s%c %s: #%04hx DataLen,%u,Offset,%u\n";
LABEL_358:
                        v196 = v151;
LABEL_359:
                        v186 = snprintf(__str, 0x40FuLL, v152, v196, "GNC", 69, "xofSvcs00_17ParseExtEphData", v200, v201, v203);
                        LbsOsaTrace_WriteLog(8u, __str, v186, 0, 1);
                        goto LABEL_360;
                      }

                      goto LABEL_360;
                    }

                    __srcd = &a1[v150];
                    if (byte_2A192682B)
                    {
                      v153 = byte_2A192682C * byte_2A192682B;
                      if (v150 + (v153 << 6) > a2)
                      {
                        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v151 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                          v201 = v150 + (v153 << 6);
                          v203 = a2;
                          v200 = 772;
                          v152 = "%10u %s%c %s: #%04hx GPS ComputedOffset,%u,DataLen,%u\n";
                          goto LABEL_358;
                        }

LABEL_360:
                        result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
                        if (!result)
                        {
                          goto LABEL_27;
                        }

                        bzero(__str, 0x410uLL);
                        mach_continuous_time();
                        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EE\n");
                        goto LABEL_26;
                      }

                      if (byte_2A192682C)
                      {
                        v157 = 0;
                        v158 = &a1[v150];
                        while (xofSvcs02_03EndianConvert(byte_2A1920BC1, 0x1Du, v158, 0x40u) == 1)
                        {
                          ++v157;
                          v158 += 64;
                          if (v157 >= v153)
                          {
                            goto LABEL_304;
                          }
                        }

                        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          goto LABEL_360;
                        }

                        bzero(__str, 0x410uLL);
                        v200 = 770;
                        v196 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v152 = "%10u %s%c %s: #%04hx GPS EE endian conversion\n";
                        goto LABEL_359;
                      }

LABEL_304:
                      v156 = v153 << 6;
                      if (*(&xmmword_2A1920DB0 + 1))
                      {
                        free(*(&xmmword_2A1920DB0 + 1));
                      }

                      *(&xmmword_2A1920DB0 + 1) = 0;
                      v159 = gnssOsa_Calloc("xofSvcs00_17ParseExtEphData", 1504, 1, v153 << 6);
                      *(&xmmword_2A1920DB0 + 1) = v159;
                      if (!v159)
                      {
                        goto LABEL_360;
                      }

                      memcpy_s("xofSvcs00_17ParseExtEphData", 1512, v159, v153 << 6, __srcd, v153 << 6);
                      v210 = v153 << 6;
                      __srcd += v156;
                    }

                    else
                    {
                      if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v154 = mach_continuous_time();
                        v155 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS EE\n", (*&g_MacClockTicksToMsRelation * v154), "GNC", 68, "xofSvcs00_17ParseExtEphData", 769);
                        LbsOsaTrace_WriteLog(8u, __str, v155, 5, 1);
                      }

                      LODWORD(v156) = 0;
                    }

                    if (byte_2A192684B)
                    {
                      v160 = byte_2A192684C * byte_2A192684B;
                      v161 = v150 + (v160 << 6) + v156;
                      if (v161 > a2)
                      {
                        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v151 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                          v201 = v161;
                          v203 = a2;
                          v200 = 772;
                          v152 = "%10u %s%c %s: #%04hx QZSS ComputedOffset,%u,DataLen,%u\n";
                          goto LABEL_358;
                        }

                        goto LABEL_360;
                      }

                      if (byte_2A192684C)
                      {
                        v164 = 0;
                        v165 = __srcd;
                        while (xofSvcs02_03EndianConvert(byte_2A1920BC1, 0x1Du, v165, 0x40u) == 1)
                        {
                          ++v164;
                          v165 += 64;
                          if (v164 >= v160)
                          {
                            goto LABEL_318;
                          }
                        }

                        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          goto LABEL_360;
                        }

                        bzero(__str, 0x410uLL);
                        v200 = 770;
                        v196 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v152 = "%10u %s%c %s: #%04hx QZSS EE endian conversion\n";
                        goto LABEL_359;
                      }

LABEL_318:
                      v166 = v160 << 6;
                      if (qword_2A1920DC0)
                      {
                        free(qword_2A1920DC0);
                      }

                      qword_2A1920DC0 = 0;
                      v167 = gnssOsa_Calloc("xofSvcs00_17ParseExtEphData", 1546, 1, v160 << 6);
                      qword_2A1920DC0 = v167;
                      if (!v167)
                      {
                        goto LABEL_360;
                      }

                      memcpy_s("xofSvcs00_17ParseExtEphData", 1554, v167, v160 << 6, __srcd, v160 << 6);
                      LODWORD(v156) = v210 + v166;
                      v210 += v166;
                      __srcd += v166;
                    }

                    else if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v162 = mach_continuous_time();
                      v163 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx QZSS EE\n", (*&g_MacClockTicksToMsRelation * v162), "GNC", 68, "xofSvcs00_17ParseExtEphData", 769);
                      LbsOsaTrace_WriteLog(8u, __str, v163, 5, 1);
                    }

                    if (BYTE3(xmmword_2A1926858))
                    {
                      v168 = BYTE4(xmmword_2A1926858) * BYTE3(xmmword_2A1926858);
                      v169 = v150 + 68 * v168 + v156;
                      if (v169 > a2)
                      {
                        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v151 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                          v201 = v169;
                          v203 = a2;
                          v200 = 772;
                          v152 = "%10u %s%c %s: #%04hx GAL ComputedOffset,%u,DataLen,%u\n";
                          goto LABEL_358;
                        }

                        goto LABEL_360;
                      }

                      if (BYTE4(xmmword_2A1926858))
                      {
                        v172 = 0;
                        v173 = __srcd;
                        while (xofSvcs02_03EndianConvert(byte_2A1920BDE, 0x1Du, v173, 0x44u) == 1)
                        {
                          ++v172;
                          v173 += 68;
                          if (v172 >= v168)
                          {
                            goto LABEL_334;
                          }
                        }

                        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          goto LABEL_360;
                        }

                        bzero(__str, 0x410uLL);
                        v200 = 770;
                        v196 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v152 = "%10u %s%c %s: #%04hx Galileo EE endian conversion\n";
                        goto LABEL_359;
                      }

LABEL_334:
                      v174 = 68 * v168;
                      if (qword_2A1920DC8)
                      {
                        free(qword_2A1920DC8);
                      }

                      qword_2A1920DC8 = 0;
                      v175 = gnssOsa_Calloc("xofSvcs00_17ParseExtEphData", 1589, 1, 68 * v168);
                      qword_2A1920DC8 = v175;
                      if (!v175)
                      {
                        goto LABEL_360;
                      }

                      memcpy_s("xofSvcs00_17ParseExtEphData", 1597, v175, 68 * v168, __srcd, 68 * v168);
                      LODWORD(v156) = v210 + v174;
                      v210 += v174;
                      __srcd += v174;
                    }

                    else if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v170 = mach_continuous_time();
                      v171 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Galileo EE\n", (*&g_MacClockTicksToMsRelation * v170), "GNC", 68, "xofSvcs00_17ParseExtEphData", 769);
                      LbsOsaTrace_WriteLog(8u, __str, v171, 5, 1);
                    }

                    if (byte_2A192686B)
                    {
                      v176 = byte_2A192686C * byte_2A192686B;
                      v177 = v150 + (v176 << 6) + v156;
                      if (v177 > a2)
                      {
                        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v151 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                          v201 = v177;
                          v203 = a2;
                          v200 = 772;
                          v152 = "%10u %s%c %s: #%04hx GLO ComputedOffset,%u,DataLen,%u\n";
                          goto LABEL_358;
                        }

                        goto LABEL_360;
                      }

                      if (byte_2A192686C)
                      {
                        v180 = 0;
                        v181 = __srcd;
                        while (xofSvcs02_03EndianConvert(byte_2A1920BC1, 0x1Du, v181, 0x40u) == 1)
                        {
                          ++v180;
                          v181 += 64;
                          if (v180 >= v176)
                          {
                            goto LABEL_350;
                          }
                        }

                        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          goto LABEL_360;
                        }

                        bzero(__str, 0x410uLL);
                        v200 = 770;
                        v196 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v152 = "%10u %s%c %s: #%04hx GLO EE endian conversion\n";
                        goto LABEL_359;
                      }

LABEL_350:
                      v182 = v176 << 6;
                      if (xmmword_2A1920DD0)
                      {
                        free(xmmword_2A1920DD0);
                      }

                      *&xmmword_2A1920DD0 = 0;
                      v183 = gnssOsa_Calloc("xofSvcs00_17ParseExtEphData", 1630, 1, v176 << 6);
                      *&xmmword_2A1920DD0 = v183;
                      if (!v183)
                      {
                        goto LABEL_360;
                      }

                      memcpy_s("xofSvcs00_17ParseExtEphData", 1638, v183, v176 << 6, __srcd, v176 << 6);
                      LODWORD(v156) = v210 + v182;
                      v210 += v182;
                      __srcd += v182;
                    }

                    else if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v178 = mach_continuous_time();
                      v179 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLO EE\n", (*&g_MacClockTicksToMsRelation * v178), "GNC", 68, "xofSvcs00_17ParseExtEphData", 769);
                      LbsOsaTrace_WriteLog(8u, __str, v179, 5, 1);
                    }

                    if (BYTE3(xmmword_2A1926878))
                    {
                      v184 = BYTE4(xmmword_2A1926878) * BYTE3(xmmword_2A1926878);
                      v185 = 84 * v184 + v150 + v156;
                      if (v185 > a2)
                      {
                        if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v151 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                          v201 = v185;
                          v203 = a2;
                          v200 = 772;
                          v152 = "%10u %s%c %s: #%04hx BDS ComputedOffset,%u,DataLen,%u\n";
                          goto LABEL_358;
                        }

                        goto LABEL_360;
                      }

                      if (BYTE4(xmmword_2A1926878))
                      {
                        v189 = 0;
                        v190 = __srcd;
                        while (xofSvcs02_03EndianConvert(byte_2A1920BFB, 0x1Eu, v190, 0x54u) == 1)
                        {
                          ++v189;
                          v190 += 84;
                          if (v189 >= v184)
                          {
                            goto LABEL_370;
                          }
                        }

                        if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                        {
                          goto LABEL_360;
                        }

                        bzero(__str, 0x410uLL);
                        v200 = 770;
                        v196 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        v152 = "%10u %s%c %s: #%04hx BeiDou EE endian conversion\n";
                        goto LABEL_359;
                      }

LABEL_370:
                      if (*(&xmmword_2A1920DD0 + 1))
                      {
                        free(*(&xmmword_2A1920DD0 + 1));
                      }

                      *(&xmmword_2A1920DD0 + 1) = 0;
                      v191 = gnssOsa_Calloc("xofSvcs00_17ParseExtEphData", 1672, 1, 84 * v184);
                      *(&xmmword_2A1920DD0 + 1) = v191;
                      if (!v191)
                      {
                        goto LABEL_360;
                      }

                      memcpy_s("xofSvcs00_17ParseExtEphData", 1680, v191, 84 * v184, __srcd, 84 * v184);
                      LODWORD(v156) = v210 + 84 * v184;
                    }

                    else if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v187 = mach_continuous_time();
                      v188 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BeiDou EE\n", (*&g_MacClockTicksToMsRelation * v187), "GNC", 68, "xofSvcs00_17ParseExtEphData", 769);
                      LbsOsaTrace_WriteLog(8u, __str, v188, 5, 1);
                    }

                    v192 = *a4 + v156;
                    *a4 = v192;
                    v210 = 0;
                    if (xofSvcs00_18ParseBrdCstSvMaskData(a1, a2, v192 + a3, &v210))
                    {
                      *a4 += v210;
                      result = 1;
                      goto LABEL_27;
                    }

                    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
                    if (!result)
                    {
                      goto LABEL_27;
                    }

                    bzero(__str, 0x410uLL);
                    mach_continuous_time();
                    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BrdCstSvBitMask\n");
                    goto LABEL_26;
                  }

                  bzero(__str, 0x410uLL);
                  v131 = mach_continuous_time();
                  v91 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BeiDou Alm data\n", (*&g_MacClockTicksToMsRelation * v131), "GNC", 68, "xofSvcs00_21ParseAlmData", 769);
                  v92 = 5;
LABEL_178:
                  LbsOsaTrace_WriteLog(8u, __str, v91, v92, 1);
                  goto LABEL_179;
                }

                v87 = 40 * BYTE1(xmmword_2A1926878);
                v88 = (v56 + v51 + v87);
                if (v88 <= a2)
                {
                  v134 = 0;
                  v135 = __src;
                  while (xofSvcs02_03EndianConvert(byte_2A1920B74, 0x11u, v135, 0x28u) == 1)
                  {
                    ++v134;
                    v135 += 40;
                    if (v86 <= v134)
                    {
                      if (qword_2A1920D80)
                      {
                        free(qword_2A1920D80);
                      }

                      qword_2A1920D80 = 0;
                      v136 = gnssOsa_Calloc("xofSvcs00_21ParseAlmData", 1196, 1, 40 * v86);
                      qword_2A1920D80 = v136;
                      if (v136)
                      {
                        memcpy_s("xofSvcs00_21ParseAlmData", 1203, v136, 40 * v86, __src, 40 * v86);
                        v210 += v87;
                        goto LABEL_179;
                      }

                      goto LABEL_176;
                    }
                  }

                  if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                  {
                    goto LABEL_176;
                  }

                  bzero(__str, 0x410uLL);
                  v198 = 770;
                  v194 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                  v53 = "%10u %s%c %s: #%04hx BeiDou Almanac data endian conversion\n";
                  goto LABEL_175;
                }

                if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v52 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                  v201 = v88;
                  v203 = a2;
                  v198 = 772;
                  v53 = "%10u %s%c %s: #%04hx BeiDou ComputedOffset,%u,DataLen,%u\n";
                  goto LABEL_174;
                }
              }
            }
          }
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v52 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v201 = a2;
        v203 = v51;
        v198 = 770;
        v53 = "%10u %s%c %s: #%04hx DataLen,%u,Offset,%u\n";
LABEL_174:
        v194 = v52;
LABEL_175:
        v89 = snprintf(__str, 0x40FuLL, v53, v194, "GNC", 69, "xofSvcs00_21ParseAlmData", v198, v201, v203);
        LbsOsaTrace_WriteLog(8u, __str, v89, 0, 1);
      }

LABEL_176:
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
      {
        goto LABEL_179;
      }

      bzero(__str, 0x410uLL);
      v90 = mach_continuous_time();
      v91 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Alm data\n", (*&g_MacClockTicksToMsRelation * v90), "GNC", 69, "xofSvcs00_20ParsePayLoad", 770);
      v92 = 0;
      goto LABEL_178;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_49;
    }

    bzero(__str, 0x410uLL);
    v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v201 = v38 + v32 + 16;
    v203 = a2;
    v197 = 772;
    v34 = "%10u %s%c %s: #%04hx BeiDou ComputedOffset,%lu,DataLen,%u\n";
LABEL_46:
    v193 = v33;
LABEL_47:
    v35 = snprintf(__str, 0x40FuLL, v34, v193, "GNC", 69, "xofSvcs00_14ParseTimeModel", v197, v201, v203);
    v36 = 0;
LABEL_48:
    LbsOsaTrace_WriteLog(8u, __str, v35, v36, 1);
    goto LABEL_49;
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataLen,%u,Offset,%u\n", v13);
    goto LABEL_26;
  }

LABEL_27:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xofSvcs00_29ValidateConstellInfo(int a1, uint64_t a2, unsigned int a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 1);
  if (v5 <= a3 && (v6 = *(a2 + 2), v6 <= a3) && (v7 = *(a2 + 3), v7 <= a3) && *(a2 + 4) <= 0x2Au && *(a2 + 5) < 0xA9u)
  {
    v13 = *(a2 + 8);
    v14 = *(a2 + 6);
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Constel,%u,AlmSats,%u,BceSats,%u,EeSats,%u,NumBlk,%u,BlkLen,%u,EeMask,0x%llx,Tm,%u,BrdSvMaskIncl,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 73, "xofSvcs00_29ValidateConstellInfo", 0, a1, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 4), *(a2 + 5), v13, (v6 | v5 | v7) != 0, v14 == 1);
      v8 = 1;
      LbsOsaTrace_WriteLog(8u, __str, v16, 4, 1);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Constel,%u,AlmSats,%u,BceSats,%u,EeSats,%u,NumBlk,%u,BlkLen,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs00_29ValidateConstellInfo", 770, a1, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 4), *(a2 + 5));
      LbsOsaTrace_WriteLog(8u, __str, v10, 0, 1);
      v8 = 0;
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t GN_AGPS_Set_Alm_El(unsigned __int8 *a1)
{
  v46 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGPS_Set_Alm_El");
  if (!result)
  {
    goto LABEL_34;
  }

  if (g_Enable_Event_Log >= 5u)
  {
    EvLog_v("GN_AGPS_Set_Alm_El: %3d %2d %3d %3d %5d %5d %5d %5d %5d %8d %8d %8d %8d %d", *a1, a1[1], a1[2], a1[3], *(a1 + 2), *(a1 + 3), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), a1[32]);
  }

  v3 = a1[1];
  if ((v3 + 53) <= 0xF5u && (v3 - 33) <= 0xDFu)
  {
    v20 = a1[1];
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: Sat_ID = %d, Out of range!");
LABEL_33:
    result = 0;
    goto LABEL_34;
  }

  v4 = *(a1 + 2);
  if (((*(a1 + 2) - 1024) >> 11) <= 0x1Eu)
  {
    v21 = *(a1 + 2);
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: af0 = %d <-2^10 or >=2^10, Out of range!");
    goto LABEL_33;
  }

  v5 = *(a1 + 3);
  if (((*(a1 + 3) - 1024) >> 11) <= 0x1Eu)
  {
    v22 = *(a1 + 3);
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: af1 = %d <-2^10 or >=2^10, Out of range!");
    goto LABEL_33;
  }

  v6 = *(a1 + 4);
  v7 = vcvtd_n_f64_u32(v6, 0x15uLL);
  if ((v3 + 53) < 0xF6u)
  {
    v8 = 0.0;
    if (v7 <= 0.03)
    {
      goto LABEL_17;
    }

LABEL_15:
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: e = %g > %g, Unrealistic value!");
    goto LABEL_33;
  }

  if (v7 > 0.1)
  {
    goto LABEL_15;
  }

  v8 = 0.000000314159265;
LABEL_17:
  v9 = *(a1 + 6);
  v10 = v9 * 1.14290475e-11;
  if (v10 < -0.00000198862815)
  {
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: OmegaDot = %e < %e rad/s, Unrealistic value!");
    goto LABEL_33;
  }

  if (v10 > v8)
  {
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: OmegaDot = %e > %e rad/s, Unrealistic value!");
    goto LABEL_33;
  }

  v11 = *(a1 + 4);
  if (HIBYTE(v11))
  {
    v23 = *(a1 + 4);
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: APowerHalf = %u >=2^24,  Out of range !");
    goto LABEL_33;
  }

  v12 = vcvtd_n_f64_u32(v11, 0xBuLL);
  if (v12 < 4800.0)
  {
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: APowerHalf = %g < %g, Unrealistic value!");
    goto LABEL_33;
  }

  if (v12 > dbl_29972A990[(v3 + 53) < 0xF6u])
  {
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: APowerHalf = %g > %g, Unrealistic value!");
    goto LABEL_33;
  }

  v13 = *(a1 + 5);
  if ((v13 - 0x800000) >> 24 != 255)
  {
    v24 = *(a1 + 5);
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: Omega0 = %d <-2^23 or >=2^23, Out of range!");
    goto LABEL_33;
  }

  v14 = *(a1 + 6);
  if ((v14 - 0x800000) >> 24 != 255)
  {
    v25 = *(a1 + 6);
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: w = %d <-2^23 or >=2^23, Out of range!");
    goto LABEL_33;
  }

  v15 = *(a1 + 7);
  if ((v15 - 0x800000) >> 24 != 255)
  {
    v26 = *(a1 + 7);
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: M0 = %d <-2^23 or >=2^23, Out of range!");
    goto LABEL_33;
  }

  v45 = 0;
  v17 = v6 >> 8;
  v29 = v6;
  if (v3 == 32)
  {
    v18 = 0;
  }

  else
  {
    v18 = v3 & 0x3F;
  }

  v30 = v17;
  v31 = v18;
  v19 = a1[3];
  v32 = *(a1 + 5);
  v33 = v19;
  v34 = a1[2];
  v35 = v9;
  v36 = v11;
  v37 = BYTE2(v11);
  v38 = v13;
  v39 = BYTE2(v13);
  v40 = v14;
  v41 = BYTE2(v14);
  v42 = v15;
  v43 = BYTE2(v15);
  v44 = (32 * v5) | (4 * (v4 & 7));
  LOBYTE(v45) = v5 >> 3;
  BYTE1(v45) = v4 >> 3;
  v28 = *a1;
  v27 = 0;
  BYTE2(v45) = a1[32];
  result = GN_AGPS_Set_Alm(v3, &v27);
LABEL_34:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void Kep_Calc_SV_Ref_State(int a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v116[1] = *MEMORY[0x29EDCA608];
  if (*(a4 + 18))
  {
    v10 = *(a4 + 24);
    v11 = a3 + 604800 * (a2 - *(a4 + 18)) - v10;
  }

  else
  {
    v10 = *(a4 + 24);
    v12 = a3 - v10;
    v13 = a3 - v10 - 604800;
    if (a3 - v10 <= 302399)
    {
      v13 = a3 - v10;
    }

    if (v12 < -302400)
    {
      v11 = v12 + 604800;
    }

    else
    {
      v11 = v13;
    }
  }

  v14 = *(a4 + 168);
  v15 = *(a4 + 8);
  v105 = v14 * v14;
  v16 = v11;
  v102 = *(a4 + 96) + sqrt(dbl_29972A9A0[(v15 - 3) < 2]) / (v14 * (v14 * v14));
  v17 = *(a4 + 160) + v102 * v11;
  v18 = sin(v17);
  v19 = 0;
  v20 = *(a4 + 200);
  v21 = v17 + v20 * v18;
  do
  {
    v22 = v21;
    v21 = v17 + v20 * sin(v21);
  }

  while (vabdd_f64(v21, v22) > 1.0e-11 && v19++ < 0x13);
  v104 = 1.0 - v20 * v20;
  v24 = cos(v17);
  v25 = tan(v21 * 0.5);
  v26 = atan(sqrt((v20 + 1.0) / (1.0 - v20)) * v25);
  v27 = v26 + v26;
  if (v27 < 0.0)
  {
    v27 = v27 + 6.28318531;
  }

  v28 = __sincos_stret(v27);
  v29 = __sincos_stret(*(a4 + 192));
  v30 = v28.__cosval * v29.__sinval + v28.__sinval * v29.__cosval;
  v31 = v28.__cosval * v29.__cosval - v28.__sinval * v29.__sinval;
  v32 = v31 * (v30 + v30);
  if (a1 == 1)
  {
    v24 = v31 * v31 - v30 * v30;
    v33 = v24 * *(a4 + 120) + *(a4 + 128) * v32;
    v34 = v33 * v33 * -0.5 + 1.0;
    v35 = v31 * v33;
    v99 = v33;
    v36 = -(v30 * v33);
    v30 = v35 + v30 * v34;
    v31 = v36 + v31 * v34;
    v37 = v24 * *(a4 + 104) + *(a4 + 112) * v32;
  }

  else
  {
    v99 = 0.0;
    v37 = 0.0;
  }

  v106 = sqrt(v104);
  v103 = v20 * v28.__cosval + 1.0;
  v98 = v37;
  v38 = v105 * v104 / v103 + v37;
  v39 = v31 * v38;
  v40 = v38 * v30;
  v41 = *(a4 + 184);
  v97 = v32;
  if (a1 == 1)
  {
    v100 = v24 * *(a4 + 136) + *(a4 + 144) * v32;
    v41 = v41 + v100 + *(a4 + 152) * v16;
  }

  else
  {
    v100 = 0.0;
  }

  v42 = __sincos_stret(v41);
  v43 = dbl_29972A9B0[v15 == 4];
  v44 = *(a4 + 208) - v43;
  v101 = v11;
  v45 = __sincos_stret(*(a4 + 176) + v44 * v16 - v43 * v10);
  *a5 = v39 * v45.__cosval - v40 * v42.__cosval * v45.__sinval;
  *(a5 + 8) = v40 * v42.__cosval * v45.__cosval + v39 * v45.__sinval;
  v46 = v40 * v42.__sinval;
  *(a5 + 16) = v40 * v42.__sinval;
  v47 = v102;
  v48 = v103 * (v102 * v103) / (v104 * v106);
  v49 = v48 + v48;
  v50 = v102 * (v105 * *(a4 + 200) / v106);
  v51 = v28.__sinval * v50;
  v52 = 0.0;
  if (a1 == 1)
  {
    v53 = *(a4 + 128) * v24 - *(a4 + 120) * v97;
    v54 = *(a4 + 112) * v24 - *(a4 + 104) * v97;
    v55 = v48 + v49 * v53;
    v51 = v51 + v49 * v54;
    v56 = *(a4 + 144) * v24 - *(a4 + 136) * v97;
    v57 = *(a4 + 152) + v49 * v56;
  }

  else
  {
    v55 = v103 * (v102 * v103) / (v104 * v106);
    v53 = 0.0;
    v54 = 0.0;
    v56 = 0.0;
    v57 = 0.0;
  }

  v58 = v51 * v31 - v40 * v55;
  v59 = v39 * v55 + v51 * v30;
  v60 = v58 + -(v40 * v44) * v42.__cosval;
  v61 = v59 * v42.__cosval - v46 * v57 + v39 * v44;
  v62 = v60 * v45.__cosval - v61 * v45.__sinval;
  v63 = v45.__cosval * v61 + v60 * v45.__sinval;
  *(a5 + 24) = v62;
  *(a5 + 32) = v63;
  v64 = v42.__cosval * (v40 * v57) + v59 * v42.__sinval;
  *(a5 + 40) = v64;
  v65 = v103 * (v28.__sinval * (-(v49 * v102) * *(a4 + 200)) / (v104 * v106));
  cosval = v28.__cosval;
  v67 = v28.__cosval * (v48 * v50);
  if (a1 == 1)
  {
    v68 = v65 + v65;
    v69 = v49 * -v49;
    v67 = v67 + (v65 + v65) * v54 + v69 * v98;
    v65 = v65 + (v65 + v65) * v53 + v69 * v99;
    v52 = v69 * v100 + v68 * v56;
  }

  v70 = v51 * v55;
  v71 = v31 * v70 + v67 * v30 + v58 * v55 + v65 * v39;
  v72 = v67 * v31 - v70 * v30 - v59 * v55 - v65 * v40 + -(v59 * v44) * v42.__cosval + v44 * (v40 * v57) * v42.__sinval;
  v73 = v42.__sinval * -(v59 * v57) + v71 * v42.__cosval - v64 * v57 + -v46 * v52 + v58 * v44;
  v74 = v45.__cosval * v72 - v44 * v63 - v73 * v45.__sinval;
  v75 = v45.__sinval * v72 + v44 * v62 + v73 * v45.__cosval;
  *(a5 + 48) = v74;
  *(a5 + 56) = v75;
  v76 = v42.__cosval * ((v59 + v59) * v57) + v71 * v42.__sinval + v40 * v52 * v42.__cosval;
  v77 = -(v57 * v57);
  v78 = dbl_29972A9C0[v15 == 4];
  v79 = v76 + v77 * v46;
  v80 = dbl_29972A9D0[v15 == 4];
  *(a5 + 64) = v79;
  *(a5 + 72) = v78 * v75 + v80 * -3.0 * v62;
  *(a5 + 80) = v80 * -3.0 * v63 - v78 * v74;
  *(a5 + 88) = (v80 * -3.0 - v80) * v64;
  if (a1 == 1)
  {
    v81 = *(a4 + 15);
    if (v81 > 0xF)
    {
      if ((v81 + 16) > 0x10u)
      {
        v85 = 99980001.0;
LABEL_39:
        *(a5 + 112) = v85;
        v86 = v11 / 60;
        if (*(a4 + 14))
        {
          v87 = -180;
        }

        else
        {
          v87 = -120;
        }

        v88 = v87 + v86;
        if (v87 + v86 < 1)
        {
          goto LABEL_56;
        }

        v116[0] = 0.0;
        if (!R8_EQ((a4 + 208), v116))
        {
          goto LABEL_54;
        }

        v115 = 0.0;
        if (!R8_EQ((a4 + 48), &v115))
        {
          goto LABEL_54;
        }

        v114 = 0.0;
        if (R8_EQ((a4 + 112), &v114) && (v113 = 0.0, R8_EQ((a4 + 96), &v113)) && (v112 = 0.0, R8_EQ((a4 + 120), &v112)) && (v111 = 0.0, R8_EQ((a4 + 128), &v111)) && (v110 = 0.0, R8_EQ((a4 + 136), &v110)) && (v109 = 0.0, R8_EQ((a4 + 144), &v109)) && (v108 = 0.0, R8_EQ((a4 + 104), &v108)))
        {
          v107 = 0.0;
          v89 = R8_EQ((a4 + 152), &v107);
          v47 = v102;
          cosval = v28.__cosval;
          if (v89)
          {
            goto LABEL_56;
          }
        }

        else
        {
LABEL_54:
          v47 = v102;
          cosval = v28.__cosval;
        }

        *(a5 + 112) = v85 + (2 * v88 * v88);
LABEL_56:
        v84 = v101 + (v10 - *(a4 + 20));
        goto LABEL_57;
      }

      v82 = (&GPS_Modern_URA_Table + 8 * -v81);
    }

    else
    {
      v82 = (&GPS_Legacy_URA_Table + 8 * v81);
    }

    v85 = *v82;
    goto LABEL_39;
  }

  v83 = (v11 + 302400) / 1000 + 1200;
  if (v11 >= 31233600)
  {
    v83 = 65500;
  }

  if (v11 <= -301401)
  {
    v83 = 1200;
  }

  *(a5 + 112) = (v83 * v83);
  v84 = v11;
LABEL_57:
  v90 = *(a4 + 200);
  v91 = v90 * -4.44280763e-10 * *(a4 + 168) / (v90 * cosval + 1.0);
  v92 = *(a4 + 40);
  v93 = v84 * *(a4 + 48);
  *(a5 + 96) = *(a4 + 32) + v106 * v91 * v28.__sinval + v84 * (v93 + v92);
  *(a5 + 104) = v92 + v47 * v91 * (cosval + v90) + v93 * 2.0;
  v94 = *(a4 + 56);
  v95 = *(a4 + 72);
  *(a5 + 152) = *(a4 + 88);
  *(a5 + 136) = v95;
  *(a5 + 120) = v94;
  *(a5 + 160) = a3;
  *(a5 + 164) = v8;
  *(a5 + 166) = *(a4 + 16);
  *(a5 + 184) = a1;
  *(a5 + 180) = *(a4 + 12);
  *(a5 + 176) = *(a4 + 8);
  v96 = *MEMORY[0x29EDCA608];
}

void GM_Inc_Local_Time(int a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = a1 - *(a2 + 6768);
  *(a2 + 6768) = a1;
  Inc_Local_Time(v3, 604800, (a2 + 6736), (a2 + 6734));
  Inc_Local_Time(v3, 86400, (a2 + 6760), (a2 + 6752));
  v4 = *(a2 + 6752);
  if (v4 >= 1462)
  {
    v5 = *(a2 + 6748);
    v6 = v4 - 2922;
    if (*(a2 + 6752) < 0xB6Au)
    {
      v6 = 0;
    }

    *(a2 + 6752) = v4 - 1461 * ((v6 + 1460) / 0x5B5u) - 1461;
    *(a2 + 6748) = v5 + (v6 + 1460) / 0x5B5u + 1;
  }

  v7 = *MEMORY[0x29EDCA608];
}

void DD_Assist_QZSS_Data(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = 0;
  v95 = *MEMORY[0x29EDCA608];
  v80 = a1 + 3654;
  v81 = a1 + 3584;
  v8 = a4 + 1076;
  v83 = a2 - 241;
  v9 = a4 + 1346;
  v10 = a3 + 129;
  v82 = a4 + 1076;
  v84 = a1 + 3644;
  v85 = a3 + 129;
  do
  {
    if (*(v10 + v7) <= 0xA5u && (*(a4[1069] + v7) != 1 || (v83 - *(v8 + 27 * v7)) <= 0xFFFFF806))
    {
      v93 = 0u;
      memset(v94, 0, 28);
      v92 = 0u;
      v90 = 0u;
      memset(v91, 0, sizeof(v91));
      if (!Core_Get_QZSS_Eph((v7 - 63), a2, &v90))
      {
LABEL_9:
        *(a4[1064] + 20 * v7 + 8) = 0;
LABEL_36:
        v10 = v85;
        goto LABEL_37;
      }

      v11 = a4[1069];
      if (*(v11 + v7) == 1)
      {
        v12 = v8 + 27 * v7;
        if (v90 <= *v12 && a2 - *v12 >= -1800)
        {
          goto LABEL_9;
        }

        v13 = DWORD2(v90);
        if (v90 - *v12 <= 10799 && Is_GPS_BinEph_Real(v12) && !Is_GPS_BinEph_Real(&v90))
        {
          *v12 = a2;
          v8 = v82;
          goto LABEL_36;
        }
      }

      else
      {
        v13 = DWORD2(v90);
      }

      v14 = (0xE4FE7F3uLL >> ((v13 >> 2) & 0x1F)) & 1;
      v15 = a4[1063];
      if (*(v15 + v7))
      {
        v8 = v82;
        goto LABEL_25;
      }

      v8 = v82;
      if (v14)
      {
        v16 = a4[1071];
        if (*(v16 + v7) == 1)
        {
          v17 = v9 + 11 * v7;
          v18 = 0xE4FE7F3uLL >> (v17[5] & 0x1F);
          v19 = *v17;
          if ((v18 & 1) == 0 && v19 + 3600 > a2)
          {
            LOBYTE(v14) = 0;
            goto LABEL_25;
          }

          if (v19 + 100 < a2)
          {
            *(a4[1066] + v7) = 0;
            *(v16 + v7) = 0;
            *(v84 + v7) = -1;
            v11 = a4[1069];
            v15 = a4[1063];
          }
        }

        LOBYTE(v14) = 1;
      }

LABEL_25:
      v20 = v8 + 108 * v7;
      v21 = v94[0];
      *(v20 + 4) = v93;
      *(v20 + 5) = v21;
      *(v20 + 92) = *(v94 + 12);
      v22 = v91[0];
      *v20 = v90;
      *(v20 + 1) = v22;
      v23 = v92;
      *(v20 + 2) = v91[1];
      *(v20 + 3) = v23;
      *(a4[1065] + v7) = 1;
      *(v11 + v7) = 1;
      v24 = v14 & 1;
      *(v15 + v7) = v24;
      if (v24)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      v26 = a4[1064] + 20 * v7;
      v27 = (v26 + 12);
      v28 = (v26 + 8);
      if (*(v20 + 1) == 5)
      {
        v29 = v28;
      }

      else
      {
        v29 = v27;
      }

      *v29 = v25;
      if (a2 >= 1)
      {
        *(a4[1072] + v7) = 1;
        Core_Save_QZSS_Eph((v7 - 63), 0, v20);
        v15 = a4[1063];
      }

      v30 = 0;
      LODWORD(v31) = 0;
      v32 = p_NV;
      v33 = v15[1];
      *(p_NV + 92) = *v15;
      *(v32 + 108) = v33;
      v34 = 55665;
      do
      {
        v35 = *(v32 + 88 + v30) ^ BYTE1(v34);
        v34 = 52845 * (v34 + v35) + 22719;
        v31 = (v31 + v35);
        ++v30;
      }

      while (v30 != 40);
      *(v32 + 80) = v31;
      v36 = v81 + 6 * v7;
      *v36 = 16777472;
      *(v36 + 4) = 256;
      *(v80 + 2 * v7) = 256;
      goto LABEL_36;
    }

LABEL_37:
    ++v7;
  }

  while (v7 != 10);
  if (a2 >= 1)
  {
    v37 = 0;
    v38 = a4 + 1211;
    do
    {
      if (*(a4[1063] + v37) == 1 && (*(*(a5 + 912) + v37) & 1) == 0 && *(v10 + v37) <= 0xA5u && (*(a4[1070] + v37) != 1 || a2 - *(v38 + 27 * v37) >= 241))
      {
        v93 = 0u;
        memset(v94, 0, 28);
        v92 = 0u;
        v90 = 0u;
        memset(v91, 0, sizeof(v91));
        GPS_BinEph = EE_Get_GPS_BinEph((v37 - 63), a2, &v90);
        v40 = a4[1070];
        if (!GPS_BinEph || (v41 = v90, *(v40 + v37) == 1) && v90 <= *(v38 + 27 * v37))
        {
          *(v40 + v37) = 0;
        }

        else
        {
          v42 = v91[0];
          v43 = (v38 + 108 * v37);
          *v43 = v90;
          v43[1] = v42;
          *(v43 + 92) = *(v94 + 12);
          v44 = v94[0];
          v43[4] = v93;
          v43[5] = v44;
          v45 = v92;
          v43[2] = v91[1];
          v43[3] = v45;
          *(a4[1065] + v37) = 1;
          *(v40 + v37) = 1;
          v46 = v81 + 6 * v37;
          *v46 = 16777472;
          *(v46 + 4) = 256;
          memset(v89, 0, sizeof(v89));
          v88 = 0u;
          v87 = 0u;
          v86[0] = v41;
          v86[1] = DWORD1(v90);
          LOBYTE(v87) = BYTE8(v90);
          v47 = 21;
          v48 = 11;
          *(&v87 + 1) = *(&v90 + 9);
          v49 = v91 + 8;
          *(v80 + 2 * v37) = 256;
          do
          {
            v50 = v86 + v48;
            *v50 = *v49;
            *(v50 + 1) = *(v49 + 1);
            v49 += 4;
            --v47;
            v48 += 3;
          }

          while (v47 > 1);
          Debug_Log_GPS_Eph(2, v37 + 193, v86);
        }

        v10 = v85;
      }

      ++v37;
    }

    while (v37 != 10);
  }

  v51 = 0;
  v52 = 5848;
  v90 = 0u;
  memset(v91, 0, 28);
  while (2)
  {
    if (*(a4[1071] + v51) != 1 || a2 - *(v9 + 11 * v51) >= 1801)
    {
      *(&v90 | 0xC) = 0u;
      *((&v90 | 0xC) + 0x10) = 0u;
      if (Core_Get_QZSS_Alm((v51 - 63), a2, &v90))
      {
        v53 = a4[1071];
        if (*(v53 + v51) != 1 || v90 > *(v9 + 11 * v51))
        {
          v54 = (0xE4FE7F3uLL >> (BYTE4(v91[0]) & 0x1F)) & 1;
          v55 = a4[1063];
          if ((*(v55 + v51) & 1) == 0 && v54)
          {
            v56 = a4[1069];
            if (*(v56 + v51) == 1)
            {
              v57 = v82 + 27 * v51;
              v58 = 0xE4FE7F3uLL >> ((v57[2] >> 2) & 0x1F);
              v59 = *v57;
              if ((v58 & 1) == 0 && v59 + 3600 > a2)
              {
                LOBYTE(v54) = 0;
                goto LABEL_69;
              }

              if (v59 + 100 < a2)
              {
                *(a4[1065] + v51) = 0;
                *(v56 + v51) = 0;
                v60 = v81 + 6 * v51;
                *v60 = 16777472;
                *(v60 + 4) = 256;
                *(v80 + 2 * v51) = 256;
              }
            }

            LOBYTE(v54) = 1;
          }

LABEL_69:
          v61 = (v9 + 44 * v51);
          v62 = v91[0];
          *v61 = v90;
          v61[1] = v62;
          *(v61 + 28) = *(v91 + 12);
          *(a4[1066] + v51) = 1;
          *(v53 + v51) = 1;
          *(v55 + v51) = v54;
          if (a2 >= 1)
          {
            v63 = 0;
            LODWORD(v64) = 0;
            v65 = p_NV;
            v66 = p_NV + 56 * v51 + 5840;
            v67 = *v61;
            v68 = v61[1];
            *(v66 + 36) = *(v61 + 28);
            *(v66 + 24) = v68;
            *(v66 + 8) = v67;
            v69 = v65 + v52;
            v70 = 55665;
            do
            {
              v71 = *(v69 + v63) ^ BYTE1(v70);
              v70 = 52845 * (v70 + v71) + 22719;
              v64 = (v64 + v71);
              ++v63;
            }

            while (v63 != 48);
            *v66 = v64;
            v55 = a4[1063];
          }

          v72 = 0;
          LODWORD(v73) = 0;
          v74 = p_NV;
          v75 = *(v55 + 8);
          *(p_NV + 5828) = *v55;
          *(v74 + 5836) = v75;
          v76 = 55665;
          do
          {
            v77 = *(v74 + 5824 + v72) ^ BYTE1(v76);
            v76 = 52845 * (v76 + v77) + 22719;
            v73 = (v73 + v77);
            ++v72;
          }

          while (v72 != 40);
          *(v74 + 5816) = v73;
          *(v84 + v51) = -1;
        }
      }
    }

    ++v51;
    v52 += 56;
    if (v51 != 10)
    {
      continue;
    }

    break;
  }

  v78 = *MEMORY[0x29EDCA608];
}

uint64_t Hal34_InitPciGnssDevice(_DWORD *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  v3 = 4;
  while (Hal29_GetGcdStatus())
  {
    if (!--v3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GCD status failure\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 69, "Hal34_InitPciGnssDevice");
        LbsOsaTrace_WriteLog(0xDu, __str, v5, 0, 1);
      }

      *a1 = 22;
      result = 4294967286;
      goto LABEL_10;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    GnssHwStr = Hal14_GetGnssHwStr(g_HwProduct);
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s init,starttick,%ums\n", v7, "HAL", 65, "Hal34_InitPciGnssDevice", GnssHwStr, v2);
    LbsOsaTrace_WriteLog(0xDu, __str, v9, 1, 1);
  }

  result = 0;
  g_HalState = 0;
LABEL_10:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void HAL34_SunshineStackDumpHandler(unsigned __int8 *a1, unsigned int a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a2 <= 0xB1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len,%u\n", v18);
LABEL_11:
      LbsOsaTrace_WriteLog(0xDu, __str, v3, 0, 1);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if (a1)
  {
    v5 = a1[4];
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
    if (v5 == 77)
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_17;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ME\n");
    }

    else if (v5 == 80)
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_17;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CP\n");
    }

    else
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_17;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: unk\n");
    }

    LbsOsaTrace_WriteLog(0xDu, __str, v7, 4, 1);
LABEL_17:
    v8 = *(a1 + 4);
    switch(v8)
    {
      case 3:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 69, "HAL34_SunshineStackDumpHandler", 1299);
          v15 = 1;
          LbsOsaTrace_WriteLog(0xDu, __str, v14, 0, 1);
        }

        else
        {
          v15 = 1;
        }

        goto LABEL_31;
      case 2:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 69, "HAL34_SunshineStackDumpHandler", 1300);
          v12 = 0;
LABEL_29:
          LbsOsaTrace_WriteLog(0xDu, __str, v11, v12, 1);
        }

        break;
      case 1:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx %usec\n", v19);
LABEL_28:
          v11 = v9;
          v12 = 4;
          goto LABEL_29;
        }

        break;
      default:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Unk\n");
          goto LABEL_28;
        }

        break;
    }

    v15 = 0;
LABEL_31:
    StackDumpString = Hal11_GetStackDumpString(a1[11], a1[10]);
    GnssDbgMgr_HandleStackDump(a2, a1, v15, StackDumpString);
    goto LABEL_32;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx aResp\n");
    goto LABEL_11;
  }

LABEL_32:
  v17 = *MEMORY[0x29EDCA608];
}

uint64_t HAL34_StackDumpReq(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v11[0] = 0;
  v8 = 30530;
  v9 = a1;
  v13 = 6;
  v14 = 0;
  plc00_10EncodeHdrPlCs(&v8, v12, 15, 4u, 1, v11);
  if (v11[0])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HdrErr,%u\n", v7);
LABEL_4:
      result = LbsOsaTrace_WriteLog(0xDu, __str, v3, 0, 1);
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v17 = 10;
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Cpu,%c\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "HAL34_StackDumpReq", a1);
      LbsOsaTrace_WriteLog(0xDu, __str, v5, 4, 1);
    }

    result = Hal22_ZxSendToChip(v12, 0xFuLL);
    if (result <= 0)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
        goto LABEL_4;
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::setPVTMReport(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7, uint64_t a8, uint64_t a9)
{
  v25 = *MEMORY[0x29EDCA608];
  if (*(a9 + 24))
  {
    v16 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice13setPVTMReportEbbbbbbNSt3__18functionIFvNS1_10unique_ptrINS_3FixENS1_14default_deleteIS4_EEEENS3_INS_17MeasurementReportENS5_IS8_EEEEONS1_6vectorINS_6SvInfoENS1_9allocatorISC_EEEEONSB_INS_23ReceiverBandCorrectionsENSD_ISH_EEEENS3_INS_18TimeConversionInfoENS5_ISL_EEEENS3_INS_24KlobucharModelParametersENS5_ISO_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_15;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, a9);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v23, a8);
    v23[32] = a2;
    v23[33] = a3;
    v23[34] = a4;
    v23[35] = a5;
    v23[36] = a6;
    v23[37] = a7;
    dispatch_async(v16, block);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v23);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v22);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "setPVTMReport", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice13setPVTMReportEbbbbbbNSt3__18functionIFvNS1_10unique_ptrINS_3FixENS1_14default_deleteIS4_EEEENS3_INS_17MeasurementReportENS5_IS8_EEEEONS1_6vectorINS_6SvInfoENS1_9allocatorISC_EEEEONSB_INS_23ReceiverBandCorrectionsENSD_ISH_EEEENS3_INS_18TimeConversionInfoENS5_ISL_EEEENS3_INS_24KlobucharModelParametersENS5_ISO_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v58[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setPVTMReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(a1 + 96))
    {
      if (*(v2 + 89) == 1)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v52, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v52, "setPVTMReport_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v52);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v5 = mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setPVTMReport_block_invoke", 2056);
          LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setPVTMReport_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
        }
      }

      else
      {
        v18 = *(a1 + 105);
        if ((*(a1 + 104) | *(a1 + 107) | *(a1 + 108) | *(a1 + 109) | v18 | *(a1 + 106)))
        {
          if ((v18 & 1) != 0 || !*(a1 + 106))
          {
            std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](__str, a1 + 72);
            v27 = v2 + 312;
            if (__str != (v2 + 312))
            {
              v28 = v57;
              v29 = *(v2 + 336);
              if (v57 == __str)
              {
                if (v29 == v27)
                {
                  (*(*v57 + 24))();
                  (*(*v57 + 32))(v57);
                  v57 = 0;
                  (*(**(v2 + 336) + 24))(*(v2 + 336), __str);
                  (*(**(v2 + 336) + 32))(*(v2 + 336));
                  *(v2 + 336) = 0;
                  v57 = __str;
                  (*(v58[0] + 24))(v58, v2 + 312);
                  (*(v58[0] + 32))(v58);
                }

                else
                {
                  (*(*v57 + 24))();
                  (*(*v57 + 32))(v57);
                  v57 = *(v2 + 336);
                }

                *(v2 + 336) = v27;
              }

              else if (v29 == v27)
              {
                (*(*v29 + 24))(*(v2 + 336), __str);
                (*(**(v2 + 336) + 32))(*(v2 + 336));
                *(v2 + 336) = v57;
                v57 = __str;
              }

              else
              {
                v57 = *(v2 + 336);
                *(v2 + 336) = v28;
              }
            }

            std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](__str);
            *__str = v2 + 280;
            v56 = 0;
            std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,8ul>>(__str, 8uLL);
            v30 = 2;
            if (!*(a1 + 105))
            {
              v30 = 0;
            }

            v31 = v30 | *(a1 + 104);
            v32 = 4;
            if (!*(a1 + 106))
            {
              v32 = 0;
            }

            v33 = v31 | v32;
            v34 = 8;
            if (!*(a1 + 107))
            {
              v34 = 0;
            }

            v35 = 16;
            if (!*(a1 + 108))
            {
              v35 = 0;
            }

            v36 = v33 | v34 | *(v2 + 280) & 0xFFFFFFFFFFFFFF80;
            v37 = 64;
            if (*(a1 + 109))
            {
              v37 = 96;
            }

            *(v2 + 280) = v37 | v35 | v36;
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v49, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v49, "setPVTMReport_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v49);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v38 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
              if (*(a1 + 109))
              {
                v39 = 84;
              }

              else
              {
                v39 = 70;
              }

              if (*(a1 + 108))
              {
                v40 = 84;
              }

              else
              {
                v40 = 70;
              }

              if (*(a1 + 107))
              {
                v41 = 84;
              }

              else
              {
                v41 = 70;
              }

              if (*(a1 + 106))
              {
                v42 = 84;
              }

              else
              {
                v42 = 70;
              }

              if (*(a1 + 105))
              {
                v43 = 84;
              }

              else
              {
                v43 = 70;
              }

              if (*(a1 + 104))
              {
                v44 = 84;
              }

              else
              {
                v44 = 70;
              }

              v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Pvt,%c,Meas,%c,ExtMeas,%c,SvInfo,%c,BandCor,%c,TimeCon,%c\n", v38, "ADP", 77, "setPVTMReport_block_invoke", v44, v43, v42, v41, v40, v39);
              LbsOsaTrace_WriteLog(0x18u, __str, v45, 3, 1);
            }

            result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v46 = mach_continuous_time();
              v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v46), "ADP", 68, "setPVTMReport_block_invoke");
              result = LbsOsaTrace_WriteLog(0x18u, __str, v47, 5, 1);
            }
          }

          else
          {
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v50, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v50, "setPVTMReport_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v50);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v19 = mach_continuous_time();
              v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PVTM Invalid measReq\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "setPVTMReport_block_invoke", 515);
              LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
            }

            result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v21 = mach_continuous_time();
              v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "setPVTMReport_block_invoke");
              result = LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
            }
          }
        }

        else
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v51, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v51, "setPVTMReport_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v51);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v23 = mach_continuous_time();
            v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PVTM No valid flags\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 69, "setPVTMReport_block_invoke", 515);
            LbsOsaTrace_WriteLog(0x18u, __str, v24, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v25 = mach_continuous_time();
            v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 68, "setPVTMReport_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v26, 5, 1);
          }
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v53, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v53, "setPVTMReport_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v53);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PVTM CB\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setPVTMReport_block_invoke", 513);
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "setPVTMReport_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v54, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v54, "setPVTMReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v54);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setPVTMReport_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setPVTMReport_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  v48 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299589BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnss::GnssAdaptDevice::setNmeaHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v6 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice14setNmeaHandlerEyNSt3__18functionIFvONS1_6vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS7_IS9_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_14;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a4);
    v12[4] = a2;
    std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](v13, a3);
    dispatch_async(v6, block);
    std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v13);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setNmeaHandler", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice14setNmeaHandlerEyNSt3__18functionIFvONS1_6vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS7_IS9_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke(void *a1)
{
  v43[3] = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setNmeaHandler_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(v2 + 89) == 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v39, (a1 + 5));
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v39, "setNmeaHandler_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v39);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setNmeaHandler_block_invoke", 2056);
        LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setNmeaHandler_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NmeaMask,%llu\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 77, "setNmeaHandler_block_invoke", a1[9]);
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 3, 1);
      }

      if (a1[9] < 0x400uLL)
      {
        std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](__str, (a1 + 10));
        v21 = v2 + 408;
        if (__str != (v2 + 408))
        {
          v22 = v42;
          v23 = *(v2 + 432);
          if (v42 == __str)
          {
            if (v23 == v21)
            {
              (*(*v42 + 24))();
              (*(*v42 + 32))(v42);
              v42 = 0;
              (*(**(v2 + 432) + 24))(*(v2 + 432), __str);
              (*(**(v2 + 432) + 32))(*(v2 + 432));
              *(v2 + 432) = 0;
              v42 = __str;
              (*(v43[0] + 24))(v43, v2 + 408);
              (*(v43[0] + 32))(v43);
            }

            else
            {
              (*(*v42 + 24))();
              (*(*v42 + 32))(v42);
              v42 = *(v2 + 432);
            }

            *(v2 + 432) = v21;
          }

          else if (v23 == v21)
          {
            (*(*v23 + 24))(*(v2 + 432), __str);
            (*(**(v2 + 432) + 32))(*(v2 + 432));
            *(v2 + 432) = v42;
            v42 = __str;
          }

          else
          {
            v42 = *(v2 + 432);
            *(v2 + 432) = v22;
          }
        }

        std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](__str);
        if (a1[13] && a1[9])
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v24 = mach_continuous_time();
            v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Request NMEA\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 73, "setNmeaHandler_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v25, 4, 1);
          }

          v26 = Gnm_RegisterNmeaUpdates(*(a1 + 36), gnss::GnssAdaptDevice::Ga06_15GnssRegisterNmeaCB);
        }

        else
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v27 = mach_continuous_time();
            v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NMEA CB null kGaNmeaNone\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 73, "setNmeaHandler_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v28, 4, 1);
          }

          v26 = Gnm_RegisterNmeaUpdates(0, 0);
        }

        v29 = v26;
        if (v26)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v37, (a1 + 5));
          gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, v29, v37, "setNmeaHandler_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v37);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v30 = mach_continuous_time();
            v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetNmea,%u\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "setNmeaHandler_block_invoke", 257, v29);
            LbsOsaTrace_WriteLog(0x18u, __str, v31, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v32 = mach_continuous_time();
            v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 68, "setNmeaHandler_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v33, 5, 1);
          }
        }

        else
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v36, (a1 + 5));
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v36, "setNmeaHandler_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v36);
          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v34 = mach_continuous_time();
            v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 68, "setNmeaHandler_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v35, 5, 1);
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v38, (a1 + 5));
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v38, "setNmeaHandler_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v38);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Mask,%llu\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "setNmeaHandler_block_invoke", 515, a1[9]);
          LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "setNmeaHandler_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v40, (a1 + 5));
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v40, "setNmeaHandler_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v40);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setNmeaHandler_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setNmeaHandler_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29958A97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE80c108_ZTSNSt3__18functionIFvONS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](a1 + 80, a2 + 80);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE80c108_ZTSNSt3__18functionIFvONS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](a1 + 80);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnss::GnssAdaptDevice::setThermalRiskState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a4);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(a1, 7, v9, "setThermalRiskState");
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setThermalRiskState", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29958ABE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setPowerReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice14setPowerReportENSt3__18functionIFvNS1_10unique_ptrINS_14PwrMeasurementENS1_14default_deleteIS4_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_18;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v11, a2);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v11);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setPowerReport", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice14setPowerReportENSt3__18functionIFvNS1_10unique_ptrINS_14PwrMeasurementENS1_14default_deleteIS4_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v35[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setPowerReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v30, a1 + 40);
    v31[3] = 0;
    gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 0xFu, v30);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v31);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v30);
    v5 = *(a1 + 96);
    if (v5)
    {
      std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](__str, a1 + 72);
      v6 = v2 + 472;
      if (__str != (v2 + 472))
      {
        v7 = v34;
        v8 = *(v2 + 496);
        if (v34 == __str)
        {
          if (v8 == v6)
          {
            (*(*v34 + 24))();
            (*(*v34 + 32))(v34);
            v34 = 0;
            (*(**(v2 + 496) + 24))(*(v2 + 496), __str);
            (*(**(v2 + 496) + 32))(*(v2 + 496));
            *(v2 + 496) = 0;
            v34 = __str;
            (*(v35[0] + 24))(v35, v2 + 472);
            (*(v35[0] + 32))(v35);
          }

          else
          {
            (*(*v34 + 24))();
            (*(*v34 + 32))(v34);
            v34 = *(v2 + 496);
          }

          *(v2 + 496) = v6;
        }

        else if (v8 == v6)
        {
          (*(*v8 + 24))(*(v2 + 496), __str);
          (*(**(v2 + 496) + 32))(*(v2 + 496));
          *(v2 + 496) = v34;
          v34 = __str;
        }

        else
        {
          v34 = *(v2 + 496);
          *(v2 + 496) = v7;
        }
      }

      std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](__str);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ENABLE\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 77, "setPowerReport_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v17, 3, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DISABLE\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 77, "setPowerReport_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v15, 3, 1);
    }

    v18 = gnss::GnssAdaptDevice::Ga01_06GnssReportPower(v2, v5 != 0);
    if (v18)
    {
      v19 = *(v2 + 240);
      if (!v19)
      {
        goto LABEL_31;
      }

      v20 = v2 + 240;
      do
      {
        v21 = *(v19 + 32);
        v22 = v21 >= 0xF;
        v23 = v21 < 0xF;
        if (v22)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * v23);
      }

      while (v19);
      if (v20 == v2 + 240 || *(v20 + 32) >= 0x10u)
      {
LABEL_31:
        v20 = v2 + 240;
      }

      std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::erase((v2 + 232), v20);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v29, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, v18, v29, "setPowerReport_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v29);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetPwr,%u\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 69, "setPowerReport_block_invoke", 257, v18);
        LbsOsaTrace_WriteLog(0x18u, __str, v25, 0, 1);
      }
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 68, "setPowerReport_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v27, 5, 1);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v32, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v32, "setPowerReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v32);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setPowerReport_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setPowerReport_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29958B4C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnss::GnssAdaptDevice::Ga01_06GnssReportPower(NSObject **this, int a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (gnss::GnssAdaptDevice::Ga01_06GnssReportPower(BOOL)::v_PowerReportState == a2)
  {
    v3 = 4;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (a2)
      {
        v5 = "ENABLE";
      }

      else
      {
        v5 = "DISABLE";
      }

      v3 = 4;
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Ignoring %s PwrRep request\n", v4, "ADP", 73, "Ga01_06GnssReportPower", v5);
      v7 = 4;
LABEL_12:
      LbsOsaTrace_WriteLog(0x18u, __str, v6, v7, 1);
    }
  }

  else
  {
    v9 = Gnm_SetPowerReport(a2);
    if (v9)
    {
      v3 = v9;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v11 = "DISABLE";
        if (a2)
        {
          v11 = "ENABLE";
        }

        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetPwrRep request,%s,%u\n", v10, "ADP", 69, "Ga01_06GnssReportPower", 257, v11, v3);
        v7 = 0;
        goto LABEL_12;
      }
    }

    else if (gnssOsa_SemWaitTimeOut(this[129], 0x1F4u))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v13 = "DISABLE";
        if (a2)
        {
          v13 = "ENABLE";
        }

        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetPwrRep %s timeout\n", v12, "ADP", 69, "Ga01_06GnssReportPower", 257, v13);
        LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
      }

      v3 = 10;
    }

    else
    {
      gnss::GnssAdaptDevice::Ga01_06GnssReportPower(BOOL)::v_PowerReportState = a2;
      v3 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        if (a2)
        {
          v16 = "ENABLED";
        }

        else
        {
          v16 = "DISABLED";
        }

        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Power reporting,%s\n", v15, "ADP", 73, "Ga01_06GnssReportPower", v16);
        LbsOsaTrace_WriteLog(0x18u, __str, v17, 4, 1);
        v3 = 0;
      }
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c92_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss14PwrMeasurementENS_14default_deleteIS3_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c92_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss14PwrMeasurementENS_14default_deleteIS3_EEEEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnss::GnssAdaptDevice::setConfigCoexistence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice20setConfigCoexistenceEyNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_23_1;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    v10[4] = a2;
    dispatch_async(v4, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setConfigCoexistence", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice20setConfigCoexistenceEyNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigCoexistence_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(a1 + 72) == *(v2 + 104))
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v28, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v28, "setConfigCoexistence_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v28);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No Change,request dropped, Co-ex flag, %llu\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 73, "setConfigCoexistence_block_invoke", *(a1 + 72));
        LbsOsaTrace_WriteLog(0x18u, __str, v6, 4, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setConfigCoexistence_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }

      goto LABEL_13;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NewCoexFlags,%llu,CurrentConfig,%llu\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 73, "setConfigCoexistence_block_invoke", *(a1 + 72), *(v2 + 104));
      LbsOsaTrace_WriteLog(0x18u, __str, v16, 4, 1);
    }

    if (*(a1 + 72) >= 0x200000uLL)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v27, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v27, "setConfigCoexistence_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v27);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CoexFlags,%llu\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "setConfigCoexistence_block_invoke", 515, *(a1 + 72));
        LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "setConfigCoexistence_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
      }

      goto LABEL_13;
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a1 + 40);
    v26[3] = 0;
    gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 0xEu, v25);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
    if (gnss::GnssAdaptDevice::Ga01_04HandleSideBand(v2, *(a1 + 72)))
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (!result)
      {
        goto LABEL_13;
      }

LABEL_23:
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "setConfigCoexistence_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
      goto LABEL_13;
    }

    gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, 0xBu, 0xEu);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetSideBandConfig\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 69, "setConfigCoexistence_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v24, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      goto LABEL_23;
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v29, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v29, "setConfigCoexistence_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v29);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setConfigCoexistence_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setConfigCoexistence_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

LABEL_13:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29958C1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga01_04HandleSideBand(NSObject **this, NSObject *a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = 1;
  if ((a2 & 2) != 0)
  {
    v4 = 2;
  }

  v5 = 32 * (a2 & 0x800);
  if ((a2 & 0x1000) != 0)
  {
    v5 = ((a2 >> 11) & 1 | 2) << 16;
  }

  if ((a2 & 0x2000) != 0)
  {
    v5 = ((v5 >> 16) | 4) << 16;
  }

  v6 = v5 | (a2 >> 12) & 0x100 | (a2 >> 10) & 1;
  if ((a2 & 0x4000) != 0)
  {
    v6 = v5 & 0x7FFF00FFE1 | (a2 >> 12) & 0x100 | (a2 >> 10) & 1 | ((BYTE2(v5) | 8u) << 16);
  }

  v7 = v6 & 0xFFFFFFFF00FFFFFFLL;
  if ((a2 & 0x8000) != 0)
  {
    v6 = v6 & 0xFFFFFFFF00FFFFFFLL | 0x2000000;
  }

  v8 = v7 | ((BYTE3(v6) | 8u) << 24);
  if ((a2 & 0x10000) != 0)
  {
    v6 = v8;
  }

  v9 = v6 | ((a2 & 0x20000) << 16);
  v10 = v6 + ((((v9 & 0xFF00000000) >> 32) | 4) << 32);
  if ((a2 & 0x40000) == 0)
  {
    v10 = v9;
  }

  if ((a2 & 0x80000) != 0)
  {
    v10 = v10 | ((((v10 & 0xFF00000000) >> 32) | 8) << 32);
  }

  v11 = (a2 << 47) & 0x100000000000000;
  v12 = (a2 << 40) & 0x1000000000000;
  if ((a2 & 0x80) != 0)
  {
    v13 = 0x20000000000;
  }

  else
  {
    v13 = (a2 << 34) & 0x10000000000;
  }

  v14 = (a2 << 27) & 0x100000000;
  if ((a2 & 3) != 0)
  {
    v15 = v4;
  }

  else
  {
    v15 = 0;
  }

  v16 = (a2 << 6) & 0x100 | (((a2 >> 3) & 1) << 16) & 0xFFFFFFFFFEFFFFFFLL | (((a2 >> 4) & 1) << 24) | v15;
  v17 = v10 & 0xFFFFFFFFFFLL;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CfgType,%u,LegacyFta,%u,EnhancedFreqAid,%u,StatSpurCanclCfg,%u,DynSpurCanclCfg,%u,JammerDetect,%u,LegacyBlanking,%u,EBlankGpsGalBds3,%u,EBlankGlo,%u,EBlankBds2,%u,ForceFilter,%u,GpsGalBds3FiltMsk,%u,GloFiltMsk,%u,Bds2FiltMsk,%u,\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 73, "Ga01_05SideBandTrigger", 0x1FFF, v16 & 3, BYTE1(v16), BYTE2(v16), BYTE3(v16), HIDWORD(v14), v13 >> 40, HIWORD(v12), HIBYTE(v11), v17, BYTE1(v17), BYTE2(v17), BYTE3(v17), HIDWORD(v17));
    LbsOsaTrace_WriteLog(0x18u, __str, v19, 4, 1);
  }

  if (Gnm_SetSideBandConfig(1, 0x1FFFLL, v16 | v13 | v14 | v12 | v11, v17))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetSideBandConfig Response,%u\n", v26);
LABEL_31:
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if (gnssOsa_SemWaitTimeOut(this[129], 0x1F4u))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetSideBandConfig\n");
      goto LABEL_31;
    }

LABEL_32:
    v21 = 0;
    goto LABEL_33;
  }

  this[13] = a2;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v24 = mach_continuous_time();
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Set CoexSB Success\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 73, "Ga01_04HandleSideBand");
    v21 = 1;
    LbsOsaTrace_WriteLog(0x18u, __str, v25, 4, 1);
  }

  else
  {
    v21 = 1;
  }

LABEL_33:
  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t gnss::GnssAdaptDevice::setConfigDutyCycling(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice20setConfigDutyCyclingEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_27_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3);
    dispatch_async(v3, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setConfigDutyCycling", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice20setConfigDutyCyclingEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigDutyCycling_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v11, "setConfigDutyCycling_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Not Supported\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 87, "setConfigDutyCycling_block_invoke", 264);
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 2, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setConfigDutyCycling_block_invoke");
    result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29958C9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setConfigSimulatorMode(uint64_t a1, char a2, int a3, char a4, uint64_t a5)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {
    v8 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice22setConfigSimulatorModeEbibNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_33;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a5);
    v15 = a2;
    v14[8] = a3;
    v16 = a4;
    dispatch_async(v8, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setConfigSimulatorMode", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice22setConfigSimulatorModeEbibNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigSimulatorMode_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 1, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v6 = 70;
      if (*(a1 + 76))
      {
        v6 = 84;
      }

      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DevState,%c,Week,%d\n", v5, "ADP", 65, "setConfigSimulatorMode_block_invoke", v6, *(a1 + 72));
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 1, 1);
    }

    v27 = 0;
    v25 = 0;
    v28 = 2;
    v45 = 0u;
    v46 = 0u;
    memset(v47, 0, sizeof(v47));
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    memset(&v31[17], 0, 13);
    v29 = 0;
    *v31 = 0;
    v30 = 0;
    *&v31[7] = 0;
    v48 = -1;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    memset(v64, 0, sizeof(v64));
    v65 = 0xFFFF;
    v66 = 0;
    v68 = 0;
    *&v67[7] = 0;
    *v67 = 0;
    v26 = 512;
    v67[8] = *(a1 + 76);
    v67[9] = *(a1 + 77);
    if (v67[8] == 1)
    {
      *&v67[10] = *(a1 + 72);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Simulation mode ON\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setConfigSimulatorMode_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }
    }

    v10 = Gnm_SetUserConfig(&v25);
    if (v10)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, v10, v24, "setConfigSimulatorMode_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetUserConfig Res,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setConfigSimulatorMode_block_invoke", 257, v10);
        LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "setConfigSimulatorMode_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 0, v23, "setConfigSimulatorMode_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setConfigSimulatorMode_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v69, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v69, "setConfigSimulatorMode_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v69);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "setConfigSimulatorMode_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "setConfigSimulatorMode_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29958D194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setConfigEnableGnssConstellations(uint64_t a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice33setConfigEnableGnssConstellationsEjNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_39;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    v10[8] = a2;
    dispatch_async(v4, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setConfigEnableGnssConstellations", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice33setConfigEnableGnssConstellationsEjNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigEnableGnssConstellations_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Const,%u\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "setConfigEnableGnssConstellations_block_invoke", *(a1 + 72));
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    v27 = 0;
    v25 = 0;
    v28 = 2;
    v44 = 0u;
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    memset(&v30[17], 0, 13);
    v29 = 0uLL;
    memset(v30, 0, 15);
    v47 = -1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    memset(v63, 0, sizeof(v63));
    v64 = 0xFFFF;
    v65 = 0;
    v66[2] = 0;
    *(v66 + 7) = 0;
    v66[0] = 0;
    v26 = 16;
    v7 = *(a1 + 72);
    if (v7)
    {
      BYTE5(v29) = 1;
      *(&v29 + 1) = 16843009;
      if ((v7 & 2) == 0)
      {
LABEL_8:
        if ((v7 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_25;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_8;
    }

    BYTE10(v29) = 1;
    *(&v29 + 6) = 16843009;
    if ((v7 & 4) == 0)
    {
LABEL_9:
      if ((v7 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

LABEL_25:
    v30[14] = 1;
    *&v30[10] = 16843009;
    if ((v7 & 8) == 0)
    {
LABEL_10:
      if ((v7 & 0x10) == 0)
      {
LABEL_12:
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ConfigMask,%d,Config2Mask,%d\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 77, "setConfigEnableGnssConstellations_block_invoke", 0, 16);
          LbsOsaTrace_WriteLog(0x18u, __str, v9, 3, 1);
        }

        v10 = Gnm_SetUserConfig(&v25);
        if (v10)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, v10, v24, "setConfigEnableGnssConstellations_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v11 = mach_continuous_time();
            v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetUserConfig Ret,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setConfigEnableGnssConstellations_block_invoke", 257, v10);
            LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v14 = mach_continuous_time();
            v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "setConfigEnableGnssConstellations_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
          }
        }

        else
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 0, v23, "setConfigEnableGnssConstellations_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v20 = mach_continuous_time();
            v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setConfigEnableGnssConstellations_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
          }
        }

        goto LABEL_30;
      }

LABEL_11:
      v30[4] = 1;
      *v30 = 16843009;
      goto LABEL_12;
    }

LABEL_26:
    v30[9] = 1;
    *&v30[5] = 16843009;
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v67, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v67, "setConfigEnableGnssConstellations_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v67);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "setConfigEnableGnssConstellations_block_invoke", 1302);
    LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "setConfigEnableGnssConstellations_block_invoke");
    result = LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
  }

LABEL_30:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29958D984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setConfigRfBandEnable(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    if ((a2 & ~a3) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 4;
    }

    v5 = *(a1 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice21setConfigRfBandEnableEbbNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_40;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a4);
    v11[8] = v4;
    dispatch_async(v5, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setConfigRfBandEnable", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice21setConfigRfBandEnableEbbNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 64);
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v3, v1);
}

uint64_t gnss::GnssAdaptDevice::setConfigNetworkFreqAssistance(uint64_t a1, char a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice30setConfigNetworkFreqAssistanceEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_46_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    v10[32] = a2;
    dispatch_async(v4, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setConfigNetworkFreqAssistance", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice30setConfigNetworkFreqAssistanceEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigNetworkFreqAssistance_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(v2 + 89) == 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v27, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v27, "setConfigNetworkFreqAssistance_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v27);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FreqAssist req dropped\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setConfigNetworkFreqAssistance_block_invoke", 2056);
        LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setConfigNetworkFreqAssistance_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }

      goto LABEL_24;
    }

    v14 = *(a1 + 72);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a1 + 40);
    v26[3] = 0;
    gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 0xEu, v25);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
    v15 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key % 0x7Fu;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v17 = 70;
      if (*(a1 + 72))
      {
        v17 = 84;
      }

      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SbUniqueKey,%u,eE_FREQAID state,%c\n", v16, "ADP", 77, "setConfigNetworkFreqAssistance_block_invoke", v15, v17);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 3, 1);
    }

    v19 = Gnm_SetSideBandConfig(v15, 2, v14 << 8, 0);
    if (!v19)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (!result)
      {
        goto LABEL_24;
      }

LABEL_23:
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "setConfigNetworkFreqAssistance_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
      goto LABEL_24;
    }

    gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, v19, 0xEu);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetSideBand,%u\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 69, "setConfigNetworkFreqAssistance_block_invoke", 257, v19);
      LbsOsaTrace_WriteLog(0x18u, __str, v21, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      goto LABEL_23;
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v28, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v28, "setConfigNetworkFreqAssistance_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v28);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setConfigNetworkFreqAssistance_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setConfigNetworkFreqAssistance_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29958E318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL gnss::GnssAdaptDevice::Ga01_00SetMSBMandatoryMask(gnss::GnssAdaptDevice *this)
{
  v12 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v10 = 0u;
  bzero(v7, 0x20EuLL);
  v7[0] = 2;
  v8 = 32;
  v9 = 6;
  v1 = Gnm_SetPlatformConfig(v7);
  if (v1 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetPltfmCfg,%u\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 69, "Ga01_00SetMSBMandatoryMask", 257, v1);
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 0, 1);
  }

  result = v1 == 0;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL gnss::GnssAdaptDevice::Ga01_01SetMSAMandatoryMask(gnss::GnssAdaptDevice *this)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v1), "ADP", 68, "Ga01_01SetMSAMandatoryMask");
    LbsOsaTrace_WriteLog(0x18u, __str, v2, 5, 1);
  }

  v14 = 0u;
  v13 = 0u;
  bzero(&v10, 0x20EuLL);
  v10 = 1;
  v11 = 64;
  v12 = 4;
  v3 = Gnm_SetPlatformConfig(&v10);
  if (v3 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetPltfmCfg,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga01_01SetMSAMandatoryMask", 257, v3);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga01_01SetMSAMandatoryMask");
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
  }

  result = v3 == 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void gnss::GnssAdaptDevice::Ga01_02PowerReportCB(gnss::GnssAdaptDevice *a1, const void *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = a1;
    DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
    if (DeviceInstance)
    {
      if (v3)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Result,%u\n", v11);
LABEL_8:
          LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
        }
      }

      else
      {
        v6 = DeviceInstance;
        *&__dst = 0;
        DWORD2(__dst) = 0;
        v13 = 0.0;
        memcpy_s("Ga01_03HandlePowerReportCB", 576, &__dst, 0x18u, a2, 0x18uLL);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v7 = mach_continuous_time();
          v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ActiveIntMS,%u,AvgPwrMw,%f,LocalTime,%u,MeasIntMS,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 73, "Ga01_03HandlePowerReportCB", DWORD2(__dst), v13, __dst, DWORD1(__dst));
          LbsOsaTrace_WriteLog(0x18u, __str, v8, 4, 1);
        }

        v9 = *(v6 + 288);
        *__str = MEMORY[0x29EDCA5F8];
        v15 = 0x40000000;
        v16 = ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBE11e_Gnm_ErrorP15s_Gnm_PowerMeas_block_invoke;
        v17 = &__block_descriptor_tmp_59;
        v18 = v6;
        v19 = __dst;
        v20 = v13;
        dispatch_async(v9, __str);
      }
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PowerReportCB\n");
    goto LABEL_8;
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBE11e_Gnm_ErrorP15s_Gnm_PowerMeas_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v22, v2 + 472);
  if (v23)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3002000000;
    v16[3] = __Block_byref_object_copy__0;
    v16[4] = __Block_byref_object_dispose__0;
    v3 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
    if (!v3)
    {
      v17 = 0;
      snprintf(v20, 0x400uLL, "ASSERT,%s,%d,%s", "Ga01_03HandlePowerReportCB_block_invoke", 595, "Memory allocation failed for PwrMeas");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v14), "OSA", 69, "Ga01_03HandlePowerReportCB_block_invoke", v20);
        LbsOsaTrace_WriteLog(0xEu, __str, v15, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga01_03HandlePowerReportCB_block_invoke", "ga01GnssDeviceConfig.cpp", 595, "false && Memory allocation failed for PwrMeas");
    }

    *(v3 + 8) = 0;
    LODWORD(v4) = *(a1 + 48);
    v5 = *(a1 + 56);
    v3[2] = v4 / 1000.0;
    *(v3 + 3) = v5;
    v6 = *(a1 + 40);
    v7.i64[0] = v6;
    v7.i64[1] = HIDWORD(v6);
    *v3 = vdivq_f64(vcvtq_f64_u64(v7), vdupq_n_s64(0x408F400000000000uLL));
    v8 = *(v2 + 296);
    v17 = v3;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBE11e_Gnm_ErrorP15s_Gnm_PowerMeas_block_invoke_2;
    block[3] = &unk_2A1F88728;
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v19, v22);
    block[4] = v16;
    dispatch_async(v8, block);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v19);
    _Block_object_dispose(v16, 8);
    v9 = v17;
    v17 = 0;
    if (v9)
    {
      MEMORY[0x29C29EB20](v9, 0x1000C407A37F5ACLL);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx OnPowerReportCB\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "Ga01_03HandlePowerReportCB_block_invoke", 770);
    LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
  }

  result = std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v22);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29958EC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  _Block_object_dispose(&a15, 8);
  v22 = a20;
  a20 = 0;
  if (v22)
  {
    MEMORY[0x29C29EB20](v22, 0x1000C407A37F5ACLL);
  }

  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v20 - 72);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __Block_byref_object_dispose__0(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {

    JUMPOUT(0x29C29EB20);
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBE11e_Gnm_ErrorP15s_Gnm_PowerMeas_block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x29EDCA608];
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
  v6[0] = v2;
  v3 = *(a1 + 64);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, v6);
  result = v6[0];
  v6[0] = 0;
  if (result)
  {
    result = MEMORY[0x29C29EB20](result, 0x1000C407A37F5ACLL);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29958EE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29EB20](a9, 0x1000C407A37F5ACLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c92_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss14PwrMeasurementENS_14default_deleteIS3_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 40;
  v4 = a2 + 40;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_40c92_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss14PwrMeasurementENS_14default_deleteIS3_EEEEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 40;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v2);
}

uint64_t gnss::GnssAdaptDevice::Ga01_06SetDefaultSideBandConfig(NSObject **this)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = gnss::GnssAdaptDevice::Ga01_04HandleSideBand(this, this[13]);
  if ((v1 & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetSideBandConfig\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 69, "Ga01_06SetDefaultSideBandConfig", 1302);
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 0, 1);
  }

  v4 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t gnss::GnssAdaptDevice::Ga01_07SetSecondaryLogConfig(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = 0;
  v5 = 0;
  if (a2 > 3)
  {
    if ((a2 - 4) < 2)
    {
      v2 = 84215045;
      goto LABEL_10;
    }

    if (a2 == 6)
    {
      v2 = 101058054;
      goto LABEL_10;
    }
  }

  else
  {
    if ((a2 - 1) < 2)
    {
      v2 = 16843009;
LABEL_10:
      v6 = v2;
      v5 = v2;
      goto LABEL_11;
    }

    if (a2 == 3)
    {
      v2 = 33686018;
      goto LABEL_10;
    }
  }

LABEL_11:
  result = Gnm_SetTaLogConfig(&v5);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t *std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer(a1, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a2 + 9));
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a2 + 5));
  operator delete(a2);
  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t *std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v38 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    goto LABEL_71;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    goto LABEL_71;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_57:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_70;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_57;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_66;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_51:
      *(v20 + 24) = 1;
      goto LABEL_71;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_66:
    v25 = v7;
    goto LABEL_67;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_67:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_70:
  *(v29 + 16) = v30;
LABEL_71:
  v37 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t GAL_AlmBin2Int(uint64_t result, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(result + 8);
  if (v2 - 7168 <= 0xFFF)
  {
    *(a2 + 9) = (v2 >> 6) & 0xF;
    v3 = (v2 >> 4) & 3;
    v4 = *(result + 28);
    if (v4 >= 0x10)
    {
      if (((v4 >> 4) & 3) == v3)
      {
        v3 = 0;
      }

      v3 += v4 >> 4;
    }

    *(a2 + 10) = v3;
    *(a2 + 12) = (*(result + 10) >> 10) & 0xFC3F | ((*(result + 8) & 0xF) << 6);
    v5 = *(result + 10);
    *(a2 + 14) = ((*(result + 12) << 12) | (v5 << 28)) >> 19;
    *(a2 + 16) = (*(result + 14) >> 12) & 0xF80F | (16 * (*(result + 12) & 0x7F));
    HIDWORD(v6) = *(result + 14);
    LODWORD(v6) = *(result + 16) << 16;
    *(a2 + 8) = (v5 >> 4) & 0x3F;
    *(a2 + 24) = v6 >> 28;
    *(a2 + 18) = (16 * *(result + 16)) >> 5;
    HIDWORD(v6) = *(result + 16);
    LODWORD(v6) = *(result + 18) << 16;
    *(a2 + 20) = v6 >> 17;
    *(a2 + 22) = ((*(result + 20) << 15) | (*(result + 18) << 31)) >> 21;
    HIDWORD(v6) = *(result + 20);
    LODWORD(v6) = *(result + 22) << 16;
    *(a2 + 26) = v6 >> 22;
    HIDWORD(v6) = *(result + 22);
    LODWORD(v6) = *(result + 24) << 16;
    *(a2 + 28) = v6 >> 22;
    *(a2 + 30) = ((*(result + 26) << 10) | (*(result + 24) << 26)) >> 19;
    v7 = *(result + 26);
    *(a2 + 33) = (v7 >> 7) & 3;
    *(a2 + 34) = (v7 >> 5) & 3;
    *a2 = *result;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void GncP02_10DataIndFromMECB(size_t a1, unsigned __int8 *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncP02_10DataIndFromMECB", 142, 1, 0x20uLL);
  if (!v4)
  {
LABEL_15:
    v13 = *MEMORY[0x29EDCA608];
    return;
  }

  v5 = v4;
  v6 = gnssOsa_Calloc("GncP02_10DataIndFromMECB", 148, 1, a1);
  v5[2] = v6;
  if (v6)
  {
    if (a1 > 8)
    {
      memcpy_s("GncP02_10DataIndFromMECB", 161, v6, a1, a2, a1);
      *(v5 + 12) = a1;
      if (a2[2] == 77)
      {
        v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      }

      else
      {
        LODWORD(v10) = 0;
      }

      *(v5 + 7) = v10;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_BUF_RX_IND =>GNCP Len,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 68, "GncP02_10DataIndFromMECB", *(v5 + 12));
        LbsOsaTrace_WriteLog(8u, __str, v12, 5, 1);
      }

      AgpsSendFsmMsg(134, 134, 8788739, v5);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgLen,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP02_10DataIndFromMECB", 783, a1);
      LbsOsaTrace_WriteLog(8u, __str, v8, 2, 1);
    }

    goto LABEL_15;
  }

  v9 = *MEMORY[0x29EDCA608];

  free(v5);
}

uint64_t GncP02_11StrtMEDataDelayTimr(unsigned int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_GncPMeData == 1)
  {
    if (AgpsFsmStopTimer(8789510) && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP02_11StrtMEDataDelayTimr", 1545);
      LbsOsaTrace_WriteLog(8u, __str, v3, 2, 1);
    }

    g_GncPMeData = 0;
  }

  if (AgpsFsmStartTimer(0x861E06u, a1))
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP02_11StrtMEDataDelayTimr", 1544, a1);
      result = LbsOsaTrace_WriteLog(8u, __str, v6, 2, 1);
    }
  }

  else
  {
    g_GncPMeData = 1;
    result = mach_continuous_time();
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void GncP02_13ClearMEBuf(void)
{
  v4 = *MEMORY[0x29EDCA608];
  while (g_GncPMeData)
  {
    GncP02_14ClearCurrMEBufElem();
  }

  g_GncPMeData = 0;
  if (g_GncPMeData)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEDataPack,%u\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncP02_13ClearMEBuf", 770, g_GncPMeData);
      LbsOsaTrace_WriteLog(8u, __str, v1, 2, 1);
    }

    g_GncPMeData = 0;
  }

  v2 = *MEMORY[0x29EDCA608];
}

void GncP02_14ClearCurrMEBufElem(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_GncPMeData)
  {
    v0 = *(g_GncPMeData + 2056);
    free(g_GncPMeData);
    if (g_GncPMeData)
    {
      --g_GncPMeData;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 87, "GncP02_14ClearCurrMEBufElem", 770);
      LbsOsaTrace_WriteLog(8u, __str, v2, 2, 1);
    }

    g_GncPMeData = v0;
  }

  v3 = *MEMORY[0x29EDCA608];
}

void GncP02_23PostProcessMeMsg(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = *a1;
  if (v6 == 66 || v6 == 79)
  {
    goto LABEL_13;
  }

  if (v6 != 77)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP02_23PostProcessMeMsg", 777, *a1);
      LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    }

    goto LABEL_13;
  }

  if (a1[1] != 77)
  {
    goto LABEL_13;
  }

  if ((a2 & 1) == 0)
  {
    GncP16_26UpdateStateMEDataRcvd();
  }

  if (g_GncPMeData)
  {
LABEL_13:
    v11 = *MEMORY[0x29EDCA608];
    return;
  }

  v8 = *MEMORY[0x29EDCA608];

  GncP01_32ExecutePE(a1, a2, a3, a4, a5, a6);
}

BOOL GncP02_15AddMEDataElem(unsigned __int8 *a1, size_t a2, int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("GncP02_15AddMEDataElem", 318, 1, 0x810uLL);
  if (v6)
  {
    if (g_GncPMeData == 255)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MEData Overflow\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP02_15AddMEDataElem");
        LbsOsaTrace_WriteLog(8u, __str, v8, 2, 1);
      }

      GncP02_13ClearMEBuf();
    }

    v6[513] = a3;
    *(v6 + 1024) = a2;
    *(v6 + 257) = 0;
    memcpy_s("GncP02_15AddMEDataElem", 337, v6, 0x800u, a1 + 8, a2);
    v9 = &g_GncPMeData;
    v10 = g_GncPMeData;
    if (g_GncPMeData)
    {
      do
      {
        v11 = v10;
        v10 = *(v10 + 2056);
      }

      while (v10);
      v9 = (v11 + 2056);
    }

    *v9 = v6;
    ++g_GncPMeData;
  }

  result = v6 != 0;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

size_t GncP02_16GetMEDataFrmBuf(size_t a1, char *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_GncPMeData)
  {
    v2 = a1;
    g_GncPMeData = *(g_GncPMeData + 2052);
    v3 = *(g_GncPMeData + 2048);
    if (v3 <= a1)
    {
      memcpy_s("GncP02_16GetMEDataFrmBuf", 400, a2, a1, g_GncPMeData, v3);
      v2 = *(g_GncPMeData + 2048);
      GncP02_14ClearCurrMEBufElem();
    }

    else
    {
      memcpy_s("GncP02_16GetMEDataFrmBuf", 387, a2, a1, g_GncPMeData, a1);
      memmove(g_GncPMeData, (g_GncPMeData + v2), (*(g_GncPMeData + 2048) - v2));
      *(g_GncPMeData + 2048) -= v2;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GncP02_22HandleDataFromME(uint64_t a1)
{
  v48 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v42 = 0;
    v43 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_BUF_RX_IND Len,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "GncP02_22HandleDataFromME", *(a1 + 24));
      LbsOsaTrace_WriteLog(8u, __str, v7, 5, 1);
    }

    v8 = *(a1 + 24);
    if (!*(a1 + 24))
    {
      goto LABEL_25;
    }

    if (v8 >= 0x801)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgLen,%u,Max,%u\n", v9);
LABEL_24:
        LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
        goto LABEL_25;
      }

      goto LABEL_25;
    }

    if (v8 <= 8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgLen,%u,Min,%u\n", v13);
        goto LABEL_24;
      }

LABEL_25:
      v21 = *(a1 + 16);
      if (v21)
      {
        free(v21);
      }

      *(a1 + 16) = 0;
      goto LABEL_28;
    }

    v14 = *(a1 + 28);
    v15 = *(a1 + 16);
    v44 = 0;
    v45 = 0;
    if (*v15 != 122 || v15[1] != 120)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v40 = *v15;
        v41 = v15[1];
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ME Data nonZX MC,%u,MID,%u\n", v20);
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    LOBYTE(v44) = v15[2];
    v16 = v15[3];
    HIBYTE(v44) = v15[3];
    v45 = v15[4];
    if (v44 == 66)
    {
      memset_s(__str, 0x7FCuLL, 0, 0x7FCuLL);
      if (!GncP02_01DecodeZXStream(v15, v8, &v44, __str))
      {
        goto LABEL_49;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(v46, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(v46, 0x40FuLL, "%10u %s%c %s: ME=>GNCP ZX%c%c,SN,%u\n", (*&g_MacClockTicksToMsRelation * v24), "GNC", 73, "GncP02_20ProcessMeMsg", v44, HIBYTE(v44), v45);
        LbsOsaTrace_WriteLog(8u, v46, v25, 4, 1);
      }

      if (HIBYTE(v44) == 83)
      {
        GncP02_25HandleDeRegGnssResp(__str);
        goto LABEL_49;
      }
    }

    else
    {
      if (v44 != 79)
      {
        if (v44 == 77)
        {
          if (v16 != 77)
          {
            goto LABEL_49;
          }

          v17 = (plc00_09GetPayloadLength(v15) - 1);
          if (v17 + 9 > v8)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ME=>GNCP ZX%c%c,Readlen,%u,Payloadlen,%u\n", v18, "GNC", 87);
LABEL_39:
              v27 = __str;
LABEL_47:
              v31 = v19;
              v32 = 2;
LABEL_48:
              LbsOsaTrace_WriteLog(8u, v27, v31, v32, 1);
            }

LABEL_49:
            v42 = v44;
            v43 = v45;
            GncP02_23PostProcessMeMsg(&v42, 0, v2, v3, v4, v5);
            goto LABEL_25;
          }

          if (GncP02_15AddMEDataElem(v15, v17, v14))
          {
            if (g_GncPMeData)
            {
              if (!LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
              {
                goto LABEL_49;
              }

              bzero(__str, 0x410uLL);
              v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Len,%u,TS,%u,NumPks,%u\n", v33);
            }

            else
            {
              if (word_2A19207FE && g_GncPConfig[0] >= 0x3E8u)
              {
                GncP02_11StrtMEDataDelayTimr(word_2A19207FE);
              }

              if (!LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
              {
                goto LABEL_49;
              }

              bzero(__str, 0x410uLL);
              v35 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FixInt,%u,Timer,%u,Started,%u,Len,%u,TS,%u,NumPks,%u\n", v35, "GNC", 73);
            }

            v27 = __str;
            v31 = v34;
            v32 = 4;
            goto LABEL_48;
          }

          if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            goto LABEL_49;
          }

          bzero(__str, 0x410uLL);
          v37 = "GncP02_18ProcessMClassMsg";
          v38 = v17;
          v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v26 = "%10u %s%c %s: MEData Lost Len,%u\n";
        }

        else
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            goto LABEL_49;
          }

          bzero(__str, 0x410uLL);
          v38 = 777;
          v39 = v44;
          v37 = "GncP02_20ProcessMeMsg";
          v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v26 = "%10u %s%c %s: #%04hx MC,%u\n";
        }

        v19 = snprintf(__str, 0x40FuLL, v26, v36, "GNC", 87, v37, v38, v39);
        goto LABEL_39;
      }

      if (v16 == 84)
      {
        GncP25_04HandleTimeMarkEvent(v15, v8);
        goto LABEL_49;
      }

      memset_s(__str, 0x7FCuLL, 0, 0x7FCuLL);
      if (!GncP02_01DecodeZXStream(v15, v8, &v44, __str))
      {
        goto LABEL_49;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(v46, 0x410uLL);
        v28 = mach_continuous_time();
        v29 = snprintf(v46, 0x40FuLL, "%10u %s%c %s: ME=>GNCP ZX%c%c,SN,%u\n", (*&g_MacClockTicksToMsRelation * v28), "GNC", 73, "GncP02_20ProcessMeMsg", v44, HIBYTE(v44), v45);
        LbsOsaTrace_WriteLog(8u, v46, v29, 4, 1);
      }

      if (HIBYTE(v44) == 80)
      {
        GncP26_05HandlePowerRepMsg(&v44, __str);
        goto LABEL_49;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(v46, 0x410uLL);
      v30 = mach_continuous_time();
      v19 = snprintf(v46, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u\n", (*&g_MacClockTicksToMsRelation * v30), "GNC", 87, "GncP02_20ProcessMeMsg", 778, v44, HIBYTE(v44));
      v27 = v46;
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 69, "GncP02_22HandleDataFromME", 517);
    LbsOsaTrace_WriteLog(8u, __str, v12, 0, 1);
  }

LABEL_28:
  v22 = *MEMORY[0x29EDCA608];
  return 0;
}

void GncP02_25HandleDeRegGnssResp(unsigned __int8 *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%c\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP02_25HandleDeRegGnssResp", *a1);
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  v4 = *a1;
  if (v4 > 0x4C)
  {
    if (v4 == 77)
    {
      GncP16_31UpdateStateMEPowerState(7u);
      goto LABEL_19;
    }

    if (v4 == 119)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        goto LABEL_19;
      }

      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ME Wake-up in progress\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 73, "GncP02_25HandleDeRegGnssResp");
      v7 = 4;
      goto LABEL_18;
    }

    if (v4 != 109)
    {
      goto LABEL_14;
    }

LABEL_11:
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success response\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "GncP02_25HandleDeRegGnssResp");
    v7 = 5;
LABEL_18:
    LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
    goto LABEL_19;
  }

  if (v4 == 32)
  {
    goto LABEL_11;
  }

  if (v4 != 67 && v4 != 71)
  {
LABEL_14:
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Status,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP02_25HandleDeRegGnssResp", 770, *a1);
    v7 = 2;
    goto LABEL_18;
  }

  GncP03_14SendDeRegGnssReq(word_2A1920800, 0);
LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
}

uint64_t GncP02_31MEDataDelayTimExp(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(&v19[3], 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(&v19[3], 0x40FuLL, "%10u %s%c %s: FSM:GNCP_MEDATA_DELAY_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "GncP02_31MEDataDelayTimExp");
      LbsOsaTrace_WriteLog(8u, &v19[3], v6, 5, 1);
    }

    v7 = g_GncPStateInfo;
    g_GncPMeData = 0;
    strcpy(v19, "MM");
    if (g_GncPStateInfo > 0x10u)
    {
      goto LABEL_22;
    }

    if (((1 << g_GncPStateInfo) & 0x10A3E) != 0)
    {
LABEL_6:
      GncP02_13ClearMEBuf();
      goto LABEL_15;
    }

    if (((1 << g_GncPStateInfo) & 0xC5C1) == 0)
    {
LABEL_22:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(&v19[3], 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(&v19[3], 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GncP02_12MEDataTimerExpiry", 262, v7);
        LbsOsaTrace_WriteLog(8u, &v19[3], v18, 2, 1);
      }
    }

    v10 = g_GncPMeData;
    if (!g_GncPMeData)
    {
      goto LABEL_15;
    }

    v11 = g_GncPMeData;
    while (1)
    {
      v12 = *(v10 + 2048);
      GncP02_23PostProcessMeMsg(v19, 1, v1, v2, v3, v4);
      v10 = g_GncPMeData;
      if (g_GncPMeData == v11 && *(g_GncPMeData + 2048) == v12)
      {
        break;
      }

      v11 = g_GncPMeData;
      if (!g_GncPMeData)
      {
        goto LABEL_15;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(&v19[3], 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(&v19[3], 0x40FuLL, "%10u %s%c %s: State,%hhu,NumPks,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 69, "GncP02_12MEDataTimerExpiry", v7, v11);
      LbsOsaTrace_WriteLog(8u, &v19[3], v16, 0, 1);
    }

    goto LABEL_6;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(&v19[3], 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(&v19[3], 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "GncP02_31MEDataDelayTimExp", 517);
    LbsOsaTrace_WriteLog(8u, &v19[3], v9, 0, 1);
  }

LABEL_15:
  v13 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP02_32StateHndlTimExp(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_STATE_HNDL_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 68, "GncP02_32StateHndlTimExp");
      IsLoggingAllowed = LbsOsaTrace_WriteLog(8u, __str, v8, 5, 1);
    }

    GncP16_25UpdateStateTimerExpiry(IsLoggingAllowed, v2, v3, v4, v5, v6);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "GncP02_32StateHndlTimExp", 517);
    LbsOsaTrace_WriteLog(8u, __str, v10, 0, 1);
  }

  v11 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP02_33BBResetTimExp(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_GNSSBBRESET_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncP02_33BBResetTimExp");
      LbsOsaTrace_WriteLog(8u, __str, v2, 5, 1);
    }

    GncP19_04MEResetTimerExpiry();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncP02_33BBResetTimExp", 517);
    LbsOsaTrace_WriteLog(8u, __str, v4, 0, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP02_34TimemarkSessTimExp(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_SESS_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncP02_34TimemarkSessTimExp");
      LbsOsaTrace_WriteLog(8u, __str, v2, 5, 1);
    }

    GncP25_10TimemarkSessTimerExpiry();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncP02_34TimemarkSessTimExp", 517);
    LbsOsaTrace_WriteLog(8u, __str, v4, 0, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

BOOL GncP02_01DecodeZXStream(unsigned __int8 *a1, unsigned int a2, unsigned __int8 *a3, uint64_t a4)
{
  v37 = *MEMORY[0x29EDCA608];
  v23 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
  PlcHwType = GncP05_62GetPlcHwType();
  plc00_03DecodeMsg(0, a1, a2, a4, &v23, &v26, a3, PlcHwType);
  v9 = v26;
  if (!v26)
  {
    goto LABEL_11;
  }

  if (IsLoggingAllowed != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_9;
    }

    bzero(__str, 0x410uLL);
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v20 = a1[3];
    v22 = a1[4];
    v18 = a1[2];
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDE,%u\n", v12, "GNC");
    goto LABEL_8;
  }

  if (plc00_15GetExtErrAsString(&v26, __s, 0x104uLL) && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v21 = a1[4];
    v17 = a1[2];
    v19 = a1[3];
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDE,%u,Err,%s\n", v10, "GNC", 87);
LABEL_8:
    LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
  }

LABEL_9:
  if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgHeader %x,%x,%x,%x,%x,%x,%x,%x\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "GncP02_01DecodeZXStream", 776, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
    LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
  }

LABEL_11:
  result = v9 == 0;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Decode_BDS_Alm_Health_Sts(int a1)
{
  if ((a1 & 0x100) != 0)
  {
    if (a1)
    {
      if ((a1 & 0xE0) != 0)
      {
        v5 = 4;
      }

      else
      {
        v5 = 7;
      }

      v6 = (a1 << 26 >> 31) & 6;
      if ((a1 & 0x40) != 0)
      {
        v6 = 5;
      }

      if ((a1 & 0x80) != 0)
      {
        v7 = v5;
      }

      else
      {
        v7 = v6;
      }

      if ((a1 & 0xE0) == 0)
      {
        v7 = v5;
      }

      if ((a1 & 2) != 0)
      {
        v8 = 3;
      }

      else
      {
        v8 = v7;
      }

      if (a1 == 255)
      {
        result = 2;
      }

      else
      {
        result = v8;
      }
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    if ((a1 & 0xE0) != 0)
    {
      v1 = 8;
    }

    else
    {
      v1 = 11;
    }

    v2 = (a1 << 26 >> 31) & 0xA;
    if ((a1 & 0x40) != 0)
    {
      v2 = 9;
    }

    if ((a1 & 0x80) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = v2;
    }

    if ((a1 & 0xE0) == 0)
    {
      v3 = v1;
    }

    if ((a1 & 2) != 0)
    {
      result = 3;
    }

    else
    {
      result = v3;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t FN_Publish_Fused_Soln(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  *(a2 + 32) = vrev64_s32(*a1);
  *(a2 + 40) = v2;
  *(a2 + 48) = *(a1 + 16);
  *(a2 + 52) = *(a1 + 20);
  *(a2 + 54) = *(a1 + 22);
  v3 = *(a1 + 24);
  *(a2 + 1) = v3;
  *a2 = v3;
  v4 = *(a1 + 192);
  *(a2 + 224) = *(a1 + 208);
  *(a2 + 208) = v4;
  v5 = *(a1 + 216);
  *(a2 + 336) = *(a1 + 232);
  *(a2 + 320) = v5;
  *(a2 + 344) = *(a1 + 240);
  *(a2 + 360) = *(a1 + 256);
  *(a2 + 4) = *(a1 + 28);
  *(a2 + 12) = *(a1 + 36);
  v6 = *(a1 + 152);
  v7 = *(a1 + 136);
  v8 = *(a1 + 120);
  *(a2 + 864) = *(a1 + 104);
  *(a2 + 880) = v8;
  *(a2 + 896) = v7;
  *(a2 + 912) = v6;
  v9 = *(a1 + 88);
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  *(a2 + 800) = *(a1 + 40);
  *(a2 + 816) = v10;
  *(a2 + 832) = v11;
  *(a2 + 848) = v9;
  *(a2 + 144) = *(a1 + 160);
  *(a2 + 160) = *(a1 + 176);
  v12 = *(a1 + 264);
  v13 = *(a1 + 296);
  *(a2 + 1512) = *(a1 + 280);
  *(a2 + 1528) = v13;
  *(a2 + 1496) = v12;
  *(a2 + 462) = *(a1 + 552);
  *(a2 + 468) = *(a1 + 312);
  *(a2 + 484) = *(a1 + 328);
  *(a2 + 500) = *(a1 + 344);
  *(a2 + 516) = *(a1 + 360);
  *(a2 + 532) = *(a1 + 376);
  *(a2 + 548) = *(a1 + 392);
  *(a2 + 580) = *(a1 + 408);
  *(a2 + 596) = *(a1 + 424);
  *(a2 + 612) = *(a1 + 440);
  *(a2 + 628) = *(a1 + 456);
  *(a2 + 660) = *(a1 + 472);
  *(a2 + 676) = *(a1 + 488);
  *(a2 + 692) = *(a1 + 504);
  *(a2 + 708) = *(a1 + 520);
  *(a2 + 724) = *(a1 + 536);
  v14 = *(a1 + 944);
  *(a2 + 1992) = *(a1 + 960);
  *(a2 + 1976) = v14;
  v15 = *(a1 + 968);
  *(a2 + 2016) = *(a1 + 984);
  *(a2 + 2000) = v15;
  v16 = *(a1 + 992);
  *(a2 + 2040) = *(a1 + 1008);
  *(a2 + 2024) = v16;
  memcpy((a2 + 1592), (a1 + 560), 0x180uLL);
  v17 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t Comp_AcqAid(int a1, __int16 a2, unsigned int a3, unsigned __int8 *a4, uint64_t a5, double a6)
{
  v37 = *MEMORY[0x29EDCA608];
  result = *a4;
  *(a5 + 4) = result;
  if (result != 1)
  {
    goto LABEL_56;
  }

  *a5 = a1;
  v8 = *(a4 + 5) * 65.536;
  v9 = -0.5;
  if (v8 <= 0.0)
  {
    v10 = -0.5;
  }

  else
  {
    v10 = 0.5;
  }

  v11 = v8 + v10;
  if (v11 <= 2147483650.0)
  {
    if (v11 >= -2147483650.0)
    {
      v12 = v11;
    }

    else
    {
      LOWORD(v12) = 0;
    }
  }

  else
  {
    LOWORD(v12) = -1;
  }

  *(a5 + 20) = v12;
  v13 = *(a4 + 3);
  if (v13 > 0.0)
  {
    v9 = 0.5;
  }

  v14 = v13 + v9;
  if (v14 <= 2147483650.0)
  {
    if (v14 >= -2147483650.0)
    {
      v15 = v14;
    }

    else
    {
      LOWORD(v15) = 0;
    }
  }

  else
  {
    LOWORD(v15) = -1;
  }

  *(a5 + 22) = v15;
  v16 = *(a4 + 8);
  if (v16 >= a3)
  {
    *(a5 + 22) = -a2;
    LOWORD(v16) = a3;
  }

  *(a5 + 18) = v16;
  v17 = *(a4 + 6) * 4.0;
  v18 = -0.5;
  if (v17 > 0.0)
  {
    v18 = 0.5;
  }

  v19 = v17 + v18;
  if (v19 <= 2147483650.0)
  {
    if (v19 >= -2147483650.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = -1;
  }

  *(a5 + 40) = v20;
  v21 = *(a4 + 14);
  if (v21 >= 0xFF)
  {
    LOBYTE(v21) = -1;
  }

  *(a5 + 42) = v21;
  v22 = *(a4 + 1);
  *(a5 + 15) = v22 >> 6 < 0x753;
  v23 = *(a4 + 3);
  if (v23 >= 0x24988)
  {
    if (v23 > 0xDB930)
    {
      *(a5 + 14) = 0;
      goto LABEL_34;
    }

    v24 = 2;
  }

  else
  {
    v24 = 3;
  }

  *(a5 + 14) = v24;
LABEL_34:
  LODWORD(v19) = *(a4 + 2);
  v25 = *&v19 / 299792458.0;
  *(a5 + 16) = (v25 * 2000.0 + 0.5);
  *(a5 + 36) = (v25 * 1000000000.0);
  v26 = a6 - v25;
  v27 = v26 / 1.5;
  if (v26 / 1.5 <= 0.0)
  {
    v27 = v26 / 1.5 + -1.0;
  }

  v28 = v27;
  *(a5 + 28) = v27;
  v29 = (v26 + v27 * -1.5) * 1023000.0;
  v30 = -0.5;
  if (v29 > 0.0)
  {
    v30 = 0.5;
  }

  v31 = v29 + v30;
  if (v31 <= 2147483650.0)
  {
    if (v31 >= -2147483650.0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0x80000000;
    }
  }

  else
  {
    v32 = 0x7FFFFFFF;
  }

  *(a5 + 32) = v32;
  if (v28 < 0)
  {
    *(a5 + 28) = v28 + 403200;
  }

  v33 = *(a4 + 4);
  if (v33 >= 0x1B8)
  {
    if (v33 <= 0x247B5)
    {
      v34 = (v33 + 293) / 0x125;
    }

    else
    {
      LOWORD(v34) = 512;
    }
  }

  else
  {
    LOWORD(v34) = 2;
  }

  *(a5 + 26) = v34;
  if (v22 >= 0x13)
  {
    if (v22 <= 0x247B5)
    {
      v35 = (v22 + 18) / 0x12;
    }

    else
    {
      LOWORD(v35) = 8184;
    }
  }

  else
  {
    LOWORD(v35) = 1;
  }

  *(a5 + 24) = v35;
LABEL_56:
  v36 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t POSGen_inpPOS2mST(uint64_t a1, unsigned int *a2, uint64_t a3, double *a4)
{
  v40 = *MEMORY[0x29EDCA608];
  *(a4 + 2) = 9;
  TCU_ConvertOStimeToTTICKtime(a3, *a2, a4);
  memset(v39, 0, sizeof(v39));
  memset(v38, 0, sizeof(v38));
  VecSet_3x1(3, v39, *(a2 + 1), *(a2 + 2), *(a2 + 6));
  InsUtil_Geo2ECEF_Iterative(v39, v38);
  Copy_Mat(3, v38, 6, a4 + 4);
  v8 = *(a2 + 3);
  if (v8 <= *(a2 + 4))
  {
    v8 = *(a2 + 4);
  }

  memset(v37, 0, sizeof(v37));
  VecSet_3x1(3, v37, v8, v8, *(a2 + 7));
  Mult_Mat_scalar(2.0, 3, v37, 3, v37);
  Copy_Mat(3, v37, 6, a4 + 18);
  if (*(a2 + 3) <= 0.0 || *(a2 + 4) <= 0.0 || *(a2 + 7) <= 0.0)
  {
    v14 = g_FPE_LogSeverity;
    if ((g_FPE_LogSeverity & 4) != 0)
    {
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v16 = *(g_TCU + 8);
      }

      else
      {
        v16 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f POS: Bad meas rms at OsTime=%d (gpsTime=%0.3f)", "POSGen_inpPOS2mST", 99, v15, v16, *a2, *(a3 + 8));
      v14 = g_FPE_LogSeverity;
    }

    if ((v14 & 0x200) != 0)
    {
      v17 = *(a3 + 8);
      v18 = a2[17];
      v33 = *a2;
      LC_LOG_NMEA_GENERIC("%s,POSW1,%d,%d,%.3f");
    }

    goto LABEL_20;
  }

  if (!*a2)
  {
    v24 = g_FPE_LogSeverity;
    if ((g_FPE_LogSeverity & 4) != 0)
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

      LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f POS: Bad meas with OS_time_ms=0 (gpsTime=%0.3f)", "POSGen_inpPOS2mST", 107, v25, v26, *(a3 + 8));
      v24 = g_FPE_LogSeverity;
    }

    if ((v24 & 0x200) != 0)
    {
      v29 = *(a3 + 8);
      v30 = a2[17];
      LC_LOG_NMEA_GENERIC("%s,POSW2,%d,%.3f");
    }

    goto LABEL_20;
  }

  v9 = g_FPE_LogSeverity;
  if (a2[16] - 3 >= 2)
  {
    if ((g_FPE_LogSeverity & 4) != 0)
    {
      v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v28 = *(g_TCU + 8);
      }

      else
      {
        v28 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f POS: Low trust meas ignored (trust=%u,gpsTime=%0.3f)", "POSGen_inpPOS2mST", 115, v27, v28, a2[16], *(a3 + 8));
      v9 = g_FPE_LogSeverity;
    }

    if ((v9 & 0x200) != 0)
    {
      v31 = *(a3 + 8);
      v32 = a2[16];
      v34 = a2[17];
      v35 = *a2;
      LC_LOG_NMEA_GENERIC("%s,POSW3,%d,%d,%d,%.3f");
    }

LABEL_20:
    v19 = 0;
    v36 = -1.0;
    v20 = -1.0;
    goto LABEL_21;
  }

  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v11 = *(g_TCU + 8);
      v12 = *a4 - *(g_TCU + 64);
      v13 = 604800.0;
      if (v12 >= 604800.0)
      {
        v13 = -604800.0;
      }

      else if (v12 >= 0.0)
      {
        goto LABEL_41;
      }

      v12 = v12 + v13;
    }

    else
    {
      v11 = 0.0;
      v12 = 0.0;
    }

LABEL_41:
    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: EPOS = {tow:%0.3f,LLH:[%0.6f %0.6f %0.1f],ErrEllip:[%0.1f %0.1f %d],src:%u}", "POSGen_inpPOS2mST", 124, v10, v11, v12, *(a2 + 1), *(a2 + 2), *(a2 + 6), *(a2 + 3), *(a2 + 4), *(a2 + 20), a2[17]);
  }

  v36 = 0.0;
  v20 = distLLA(v39, (a1 + 8), &v36);
  v19 = 1;
LABEL_21:
  if ((g_FPE_LogSeverity & 0x200) != 0)
  {
    v21 = *(a2 + 6);
    LC_LOG_NMEA_GENERIC("%s,POS,%.3f,%.1f,%.1f,%.1f,%.3f,%.1f,%.1f", "$PFPEX", *a4, v21, *(a2 + 3), *(a2 + 4), *(a3 + 40) - *a4, v20, v36);
  }

  v22 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t POSGen_run(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = *MEMORY[0x29EDCA608];
  v11 = *(a3 + 87792);
  v12 = *(a4 + 128056);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  __dst = 0u;
  v37 = 0;
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
  v24 = 0u;
  v13 = *(a5 + 40);
  result = Cyc_Record_Count_Free(v12, 1u);
  if (result)
  {
    while (1)
    {
      result = Cyc_Record_IsEmpty(v11, a2);
      if (result)
      {
        break;
      }

      Cyc_Record_Read(v11, a2, &__dst);
      if (POSGen_inpPOS2mST(a1, &__dst, a5, &v24))
      {
        if (*&v24 >= *a1)
        {
          *a1 = v24;
          memset(v23, 0, sizeof(v23));
          v6 = v6 & 0xFFFFFFFF00000000 | 3;
          VecSet_3x1(v6, v23, *(&__dst + 1), *&v19, *&v21);
          v7 = v7 & 0xFFFFFFFF00000000 | 3;
          v5 = v5 & 0xFFFFFFFF00000000 | 3;
          Copy_Mat(v7, v23, v5, (a1 + 8));
          Cyc_Record_Write(v12, &v24);
        }

        else if ((g_FPE_LogSeverity & 4) != 0)
        {
          v15 = mach_continuous_time();
          if (g_TCU)
          {
            v16 = *(g_TCU + 8);
          }

          else
          {
            v16 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f POS: ignoring measurement in the past. meas.time=%0.3f, prevTime=%0.3f (diff=%0.3f)", "POSGen_run", 202, (*&g_MacClockTicksToMsRelation * v15), v16, *&v24, *a1, *a1 - *&v24);
        }
      }

      result = Cyc_Record_Count_Free(v12, 1u);
      if (!result)
      {
        goto LABEL_15;
      }
    }

    DWORD2(v24) = 12;
    *&v24 = v13 + 0.001;
    *&v25 = 0x4008000000000000;
    if (v13 + 0.001 > *a1)
    {
      *a1 = v13 + 0.001;
      result = Cyc_Record_Write(v12, &v24);
    }
  }

LABEL_15:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm28_01HandlePeNvBackup(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_PE_NV_BACKUP_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_01HandlePeNvBackup");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      goto LABEL_23;
    }

    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm28_01HandlePeNvBackup", 517);
    v11 = 0;
LABEL_13:
    LbsOsaTrace_WriteLog(0xBu, __str, v10, v11, 1);
    goto LABEL_23;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_23;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Data\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm28_01HandlePeNvBackup", 513);
    v11 = 2;
    goto LABEL_13;
  }

  v5 = *(a1 + 12);
  if (!*(a1 + 12))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, v5, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NVSize,0\n");
LABEL_18:
    v7 = v13;
    v8 = 2;
    goto LABEL_19;
  }

  if ((gnssOsa_storeBufferToNv(0, v4, v5) & 1) == 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v18 = *(a1 + 12);
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqWrite,%u\n", (*&g_MacClockTicksToMsRelation * v14));
    goto LABEL_18;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success NvSize,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm28_01HandlePeNvBackup", *(a1 + 12));
    v8 = 4;
LABEL_19:
    LbsOsaTrace_WriteLog(0xBu, __str, v7, v8, 1);
  }

LABEL_20:
  v15 = *(a1 + 16);
  if (v15)
  {
    free(v15);
  }

  *(a1 + 16) = 0;
LABEL_23:
  v16 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm28_11RestorePeNv(int a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Restore PE NV initiated\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_11RestorePeNv");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("Gnm28_11RestorePeNv", 97, 1, 0x20uLL);
  if (!v4)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm28_11RestorePeNv", 1537);
      LbsOsaTrace_WriteLog(0xBu, __str, v11, 2, 1);
LABEL_19:
      result = 0;
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v5 = v4;
  size = 0;
  if ((gnssOsa_getNvSize(0, &size) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = 1572;
LABEL_14:
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v12, "GNM", 87, "Gnm28_11RestorePeNv", v13);
      v15 = 2;
LABEL_17:
      LbsOsaTrace_WriteLog(0xBu, __str, v14, v15, 1);
    }

LABEL_18:
    free(v5);
    goto LABEL_19;
  }

  if (!size)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Empty file\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm28_11RestorePeNv");
      v15 = 4;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (size >= 0x10000)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm28_11RestorePeNv", 770);
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
    }

    gnssOsa_clearNV(0);
    goto LABEL_18;
  }

  v18 = gnssOsa_Calloc("Gnm28_11RestorePeNv", 132, 1, size);
  *(v5 + 2) = v18;
  if (!v18)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v13 = 1537;
    goto LABEL_14;
  }

  Nv = gnssOsa_readNv(0, v18, size);
  v5[6] = Nv;
  if (size != Nv)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqRead,%zu,Read,%u\n", (*&g_MacClockTicksToMsRelation * v22), "GNM", 87, "Gnm28_11RestorePeNv", 1571, size, v5[6]);
      LbsOsaTrace_WriteLog(0xBu, __str, v23, 2, 1);
    }

    v24 = *(v5 + 2);
    if (v24)
    {
      free(v24);
    }

    goto LABEL_18;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_PE_NV_RESTORE_REQ =>GNCP NvSize,%u,SeqNum,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNM", 73, "Gnm28_11RestorePeNv", v5[6], a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v21, 4, 1);
  }

  *(v5 + 24) = a1;
  AgpsSendFsmMsg(128, 134, 8787456, v5);
  result = 1;
LABEL_20:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm28_12HandlePeNvRestoreNoAck(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_VAR_PE_NV_RESTORE_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_12HandlePeNvRestoreNoAck");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      goto LABEL_17;
    }

    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 69, "Gnm28_12HandlePeNvRestoreNoAck", 517);
    v12 = 0;
LABEL_16:
    LbsOsaTrace_WriteLog(0xBu, __str, v11, v12, 1);
    goto LABEL_17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v5 = 78;
    if (g_Gnm_NVStoreCntxt)
    {
      v5 = 89;
    }

    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerStart,%u,TimerStatus,%c\n", v4, "GNM", 73, "Gnm28_12HandlePeNvRestoreNoAck", HIDWORD(g_Gnm_NVStoreCntxt), v5);
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 4, 1);
  }

  if (g_Gnm_NVStoreCntxt == 1)
  {
    v7 = HIDWORD(g_Gnm_NVStoreCntxt);
    if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v7 >= 0xFA)
    {
      LOBYTE(g_Gnm_NVStoreCntxt) = 0;
      HIDWORD(g_Gnm_NVStoreCntxt) = 0;
      if (qword_2A19397B8)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Max PENvRestore attempts\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm28_12HandlePeNvRestoreNoAck");
          LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
        }

        LOBYTE(qword_2A19397B8) = 0;
        goto LABEL_17;
      }

      LOBYTE(qword_2A19397B8) = 1;
      if (Gnm28_11RestorePeNv(1))
      {
        if (!AgpsFsmStartTimer(0x802F06u, 0xFAu))
        {
          HIDWORD(g_Gnm_NVStoreCntxt) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          LOBYTE(g_Gnm_NVStoreCntxt) = 1;
          goto LABEL_17;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 87, "Gnm28_12HandlePeNvRestoreNoAck", 1544);
          v12 = 2;
          goto LABEL_16;
        }
      }
    }
  }

LABEL_17:
  v13 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm28_13HandlePeNvRestoreAck(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_PE_NV_RESTORE_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_13HandlePeNvRestoreAck");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      goto LABEL_41;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = 517;
LABEL_17:
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v10, "GNM", 69, "Gnm28_13HandlePeNvRestoreAck", v11);
    v13 = 0;
LABEL_18:
    LbsOsaTrace_WriteLog(0xBu, __str, v12, v13, 1);
    goto LABEL_41;
  }

  if (qword_2A19397B8 != *(a1 + 13))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      goto LABEL_41;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = 1028;
    goto LABEL_17;
  }

  if (AgpsFsmStopTimer(8400646) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm28_13HandlePeNvRestoreAck", 1545);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
  }

  LOBYTE(g_Gnm_NVStoreCntxt) = 0;
  HIDWORD(g_Gnm_NVStoreCntxt) = 0;
  v6 = *(a1 + 12);
  if ((v6 - 2) >= 2)
  {
    if (v6 != 1)
    {
      if (!*(a1 + 12))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v7 = mach_continuous_time();
          v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm28_13HandlePeNvRestoreAck", *(a1 + 12));
          v9 = 4;
LABEL_39:
          LbsOsaTrace_WriteLog(0xBu, __str, v8, v9, 1);
        }

LABEL_40:
        LOBYTE(qword_2A19397B8) = 0;
        goto LABEL_41;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v25 = *(a1 + 12);
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ErrCode,%hhu\n", (*&g_MacClockTicksToMsRelation * v21));
LABEL_31:
        v12 = v22;
        v13 = 2;
        goto LABEL_18;
      }

      goto LABEL_41;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Fail Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 87, "Gnm28_13HandlePeNvRestoreAck", *(a1 + 12));
      LbsOsaTrace_WriteLog(0xBu, __str, v18, 2, 1);
    }

    v19 = gnssOsa_clearNV(0);
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    if (v19)
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_40;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PeNv Deleted\n");
    }

    else
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_40;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    }

LABEL_38:
    v8 = v16;
    v9 = 2;
    goto LABEL_39;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Fail Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 87, "Gnm28_13HandlePeNvRestoreAck", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xBu, __str, v15, 2, 1);
  }

  if (qword_2A19397B8)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_40;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Max PENvRestore attempts\n");
    goto LABEL_38;
  }

  LOBYTE(qword_2A19397B8) = 1;
  if (Gnm28_11RestorePeNv(1))
  {
    if (!AgpsFsmStartTimer(0x802F06u, 0xFAu))
    {
      HIDWORD(g_Gnm_NVStoreCntxt) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      LOBYTE(g_Gnm_NVStoreCntxt) = 1;
      goto LABEL_41;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_31;
    }
  }

LABEL_41:
  v23 = *MEMORY[0x29EDCA608];
  return 0;
}

unint64_t Gnm28_21InitRestorePeNv(void)
{
  v5 = *MEMORY[0x29EDCA608];
  LOBYTE(g_Gnm_NVStoreCntxt) = 0;
  HIDWORD(g_Gnm_NVStoreCntxt) = 0;
  LOBYTE(qword_2A19397B8) = 0;
  result = Gnm28_11RestorePeNv(0);
  if (result)
  {
    if (AgpsFsmStartTimer(0x802F06u, 0xFAu))
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v1 = mach_continuous_time();
        v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 87, "Gnm28_21InitRestorePeNv", 1544);
        result = LbsOsaTrace_WriteLog(0xBu, __str, v2, 2, 1);
      }
    }

    else
    {
      result = mach_continuous_time();
      HIDWORD(g_Gnm_NVStoreCntxt) = (*&g_MacClockTicksToMsRelation * result);
      LOBYTE(g_Gnm_NVStoreCntxt) = 1;
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL GM_Reject_Rep_SV(_BOOL8 result, unsigned int a2, uint64_t a3)
{
  v5 = result;
  *&v27[188] = *MEMORY[0x29EDCA608];
  v6 = a2 - 1;
  if ((a2 - 1) >= 0)
  {
    v7 = (result + 36 * v6 + 12);
    v8 = a2 - 1;
    do
    {
      *&v26[4 * v8] = 0;
      result = Is_Legal(*(v7 - 3));
      if (result)
      {
        v9 = *(a3 + 4 * v8);
        if (v9 >= 10)
        {
          v10 = v9 + *(v7 - 8) + *(v7 - 6);
          v11 = *v7;
          if (v11 >= 0x2710)
          {
            v11 = 10000;
          }

          *&v26[4 * v8] = v11 + 1000 * v10;
        }
      }

      v7 -= 18;
    }

    while (v8-- > 0);
  }

  if (a2)
  {
    v13 = 0;
    v14 = v27;
    v15 = (a3 + 4);
    v16 = (v5 + 36);
    v17 = a2;
    while (1)
    {
      v18 = v5 + 36 * v13;
      v19 = *v18;
      result = Is_Legal(*v18);
      if (result && *(a3 + 4 * v13) >= 10 && v13 + 1 < v17)
      {
        break;
      }

LABEL_25:
      ++v13;
      --v6;
      ++v14;
      ++v15;
      v16 += 36;
      if (v13 == v17)
      {
        goto LABEL_28;
      }
    }

    v20 = *&v26[4 * v13];
    v21 = v16;
    v22 = v15;
    v23 = v14;
    v24 = v6;
    while (1)
    {
      if (*v21 == v19)
      {
        if (v19 == 2)
        {
          if (v21[3] != *(v18 + 3))
          {
            goto LABEL_24;
          }
        }

        else if (*v21 != v19)
        {
          goto LABEL_24;
        }

        if (*v22 >= 10)
        {
          if (v20 < *v23)
          {
            *(a3 + 4 * v13) = 3;
            goto LABEL_25;
          }

          *v22 = 3;
        }
      }

LABEL_24:
      ++v23;
      ++v22;
      v21 += 36;
      if (!--v24)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_28:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Decode_GAL_INAV_GST(const unsigned __int16 *a1, unsigned int *a2, __int16 *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  *a2 = 0;
  v3 = *a1;
  if ((v3 & 0xFC00) == 0x1400)
  {
    *a3 = (a1[5] >> 11) & 0xF01F | (32 * (a1[4] & 0x7F));
    v4 = (a1[5] & 0x7FF) << 9;
    v5 = a1[6] >> 7;
LABEL_6:
    *a2 = v4 | v5;
    v6 = 1;
    goto LABEL_7;
  }

  v6 = 0;
  if (v3 <= 0x3FF && (v3 & 0x300) == 0x200)
  {
    *a3 = a1[6] >> 4;
    v4 = (a1[6] & 0xF) << 16;
    v5 = a1[7];
    goto LABEL_6;
  }

LABEL_7:
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t NK_SV_Meas_AP_Stats(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83[12] = *MEMORY[0x29EDCA608];
  v4 = a1 - 1;
  if ((a1 - 1) >= 3)
  {
    gn_report_assertion_failure(&unk_299781CFF);
    v36 = 0;
    goto LABEL_102;
  }

  v61 = qword_29972AB58[v4];
  v7 = 2 * v4;
  v8 = a4 + 5576 * v4;
  v9 = a3 + 24 * v4;
  v10 = (v9 + 10888);
  if (!*(a3 + 140) || !*(a3 + 11048) || (*(a3 + 233) & 1) != 0 || *v10 < 0.0 || *(v9 + 10896) < 0.0)
  {
    *v10 = 0.0;
    *(v9 + 10896) = 0;
  }

  v66 = v9 + 10888;
  v67 = a3 + 24 * v4;
  v11 = 0;
  v68 = 0;
  v70 = 0;
  v64 = (a4 + 24576);
  v65 = 0;
  v12 = a3 + 10982;
  *(v8 + 2824) = 0;
  v13 = v8 + 2960;
  v76 = v8 + 3008;
  v77 = v8 + 2808;
  v75 = a4 + 20032;
  v78 = v8 + 7616;
  v81 = v8 + 6848;
  v74 = v8 + 8000;
  v69 = a4 + 5576 * v4;
  v14 = v8 + 3056;
  v62 = a4 + 49;
  v63 = (v8 + 2840);
  v73 = a3 + 9992;
  v72 = a3 + 9944;
  v71 = a3 + 9896;
  *(v8 + 2840) = 0u;
  v15 = 0.0;
  v16 = 0.0;
  do
  {
    if (*(v13 + v11) != 1)
    {
      goto LABEL_37;
    }

    v82 = 0.0;
    v17 = (a2 + 4 * v11);
    NK_Obs_Equ_SV(a1, *(v76 + v11), *v17, v75 + 56 * v11, v83, *(a4 + 656));
    v19 = *(a3 + 20);
    v18 = *(a3 + 24);
    if (v19 == v18)
    {
LABEL_11:
      v20 = 2024;
      goto LABEL_32;
    }

    if (v19 <= 2)
    {
      if (v19)
      {
        if (v19 == 1)
        {
          if (!v18)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v20 = 2024;
          if (v19 != 2)
          {
            goto LABEL_32;
          }

          if (v18 <= 1)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else if (v19 > 4)
    {
      if (v19 == 5)
      {
        if ((v18 & 0xFFFFFFFE) != 6)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v20 = 2024;
        if (v19 != 6)
        {
          goto LABEL_32;
        }

        if (v18 != 7)
        {
          goto LABEL_11;
        }
      }
    }

    else if (v19 == 3)
    {
      if (v18 <= 2)
      {
        goto LABEL_11;
      }
    }

    else if (v18 - 5 >= 3)
    {
      goto LABEL_11;
    }

    v20 = 2792;
LABEL_32:
    v21 = 0;
    v22 = 0.0;
    do
    {
      v22 = v22 + v83[v21] * *(a3 + 1400 + v21 * 8);
      ++v21;
    }

    while (v21 != 11);
    v23 = *(v77 + v20 + 8 * v11) - v22;
    *(v78 + 8 * v11) = v23;
    v24 = *(v81 + 8 * v11);
    invtst((a3 + 872), v83, 0xBu, v24, v23, 1.0e20, &v82);
    v25 = v82;
    if (v82 <= 0.0)
    {
      gn_report_assertion_failure("NK_SV_Meas_AP_Stats: -ve var");
      v24 = *(v81 + 8 * v11);
    }

    v26 = v24 + v24 - fabs(v25);
    *(v74 + 8 * v11) = v26;
    v27 = *(v14 + 4 * v11);
    if ((v27 - 1) >= 0x1D)
    {
      if (v27)
      {
        EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
      }

      else if (a1 == 2 || (*(v62 + v11) & 1) != 0)
      {
        v16 = v16 + *(v78 + 8 * v11) * *(v78 + 8 * v11) / v24;
        *(v69 + 2848) = v26 / v24 + *(v69 + 2848);
        v15 = v15 + 1.0 / v24;
        ++v70;
        v35 = *v17;
        if (v35 == 4)
        {
          ++BYTE4(v65);
        }

        else if (v35 == 2)
        {
          LOBYTE(v65) = v65 + 1;
        }

        else
        {
          ++v68;
        }
      }
    }

LABEL_37:
    v28 = *(v14 + 4 * v11);
    if ((v28 - 1) < 0x1D)
    {
      goto LABEL_38;
    }

    if (v28)
    {
      EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
LABEL_38:
      *(v13 + v11) = 0;
      ++*(v12 + v7);
      switch(a1)
      {
        case 3:
          v33 = *(v73 + v11);
          if (v33 == 255)
          {
            goto LABEL_48;
          }

          v30 = v33 + 1;
          v31 = v73;
          goto LABEL_47;
        case 2:
          v32 = *(v72 + v11);
          if (v32 == 255)
          {
            goto LABEL_48;
          }

          v30 = v32 + 1;
          v31 = v72;
          goto LABEL_47;
        case 1:
          v29 = *(v71 + v11);
          if (v29 != 255)
          {
            v30 = v29 + 1;
            v31 = v71;
LABEL_47:
            *(v31 + v11) = v30;
            goto LABEL_48;
          }

          break;
      }

      goto LABEL_48;
    }

    switch(a1)
    {
      case 3:
        v34 = v73;
        break;
      case 2:
        v34 = v72;
        break;
      case 1:
        v34 = v71;
        break;
      default:
        goto LABEL_48;
    }

    *(v34 + v11) = 0;
LABEL_48:
    ++v11;
  }

  while (v11 != 48);
  if (a1 == 3)
  {
    v64[209] = v68;
    v64[214] = v65;
    v64[219] = BYTE4(v65);
    v37 = v69;
    v39 = v66;
    v38 = v67;
    v36 = v70;
    v40 = a4;
  }

  else
  {
    v37 = v69;
    v39 = v66;
    v38 = v67;
    v36 = v70;
    v40 = a4;
    if (a1 == 2)
    {
      v64[208] = v68;
      v64[213] = v65;
      v64[218] = BYTE4(v65);
    }

    else if (a1 == 1)
    {
      v64[207] = v68;
      v64[212] = v65;
      v64[217] = BYTE4(v65);
    }
  }

  v41 = *(v37 + 2848);
  if (v41 < 1.0)
  {
    *v63 = 0;
    v42 = &qword_29972AB18;
    v43 = vld1q_dup_f64(v42);
    *&v43.f64[0] = qword_29972AB20[*v39 > 1.0];
    v44 = vmulq_f64(*v39, v43);
    *v39 = v44;
    if (v44.f64[1] < 1.0)
    {
      *v39 = 0;
      *(v39 + 8) = 0;
    }

    goto LABEL_101;
  }

  v45 = v16 * *(v37 + 2856) / v41;
  *(v37 + 2840) = v45;
  if (v45 > 3.02)
  {
    v46 = *v39;
    if (*v39 > 11.0)
    {
      v47 = v45;
      if (v46 > 1.0)
      {
        if (v45 > v46)
        {
          v46 = v45;
        }

        v47 = v46 * 0.1;
      }

      goto LABEL_84;
    }

    v48 = (v41 + 0.5);
    if (v48 <= 4)
    {
      v49 = v48 - 1;
    }

    else
    {
      v49 = 4;
    }

    v50 = F_dist[v49];
    v52 = v45 <= v50;
    v51 = fmin(v46, 4.0) * v50;
    v52 = v52 || v45 <= v51;
    if (!v52)
    {
      v47 = v45;
      if (v46 > 1.0)
      {
        v47 = v45 / v46;
      }

LABEL_84:
      if (*(v40 + 968) != 1 && v47 > *(v40 + v61))
      {
        *(v40 + v61) = v47;
      }
    }
  }

  if (*(a3 + 233))
  {
    *(v37 + 2848) = 0;
  }

  else
  {
    v53 = *(v38 + 10896) * 0.98;
    v54 = v45 / (v15 / v36);
    *(v37 + 2824) = v54;
    *(v38 + 10904) = v54 * v41 + *(v38 + 10904) * *(v38 + 10904) * v53;
    v55 = *(v37 + 2840) * *(v37 + 2848) + *v39 * v53;
    *v39 = v55;
    v56 = v53 + *(v37 + 2848);
    *(v38 + 10896) = v56;
    *v39 = v55 / v56;
    *(v37 + 2824) = sqrt(*(v37 + 2824));
    *(v38 + 10904) = sqrt(*(v38 + 10904) / *(v38 + 10896));
    v57 = *(v40 + v61);
    if (v57 > 1.0 && *v39 > 11.0)
    {
      v58 = *v39 / v57;
      *v39 = v58;
      if (v58 < 10.0)
      {
        *v39 = 0x4024000000000000;
      }
    }
  }

LABEL_101:
  *(v37 + 2832) = *(v38 + 10904);
LABEL_102:
  v59 = *MEMORY[0x29EDCA608];
  return v36;
}

uint64_t GN_ASBAS_Set_Eph_El(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v41 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ASBAS_Set_Eph_El"))
  {
    goto LABEL_20;
  }

  if (a1 <= 0x77)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: SVid = %d <%d, Out of range!");
LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  if (a1 >= 0x9F)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: SVid = %d >%d, Out of range!");
    goto LABEL_20;
  }

  if (*a3 >> 3 >= 0x2A3u)
  {
    v24 = *a3;
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: to = %d >=5400, Out of range!");
    goto LABEL_20;
  }

  v6 = *(a3 + 2);
  if (v6 >= 0x10)
  {
    v25 = *(a3 + 2);
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: URA = %d >15, Out of range!");
    goto LABEL_20;
  }

  v7 = *(a3 + 1);
  if ((v7 - 2048) <= 0xFFFFEFFF)
  {
    v26 = *(a3 + 1);
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: agf0 = %d <-2^11 or >=2^11, Out of range!");
    goto LABEL_20;
  }

  v8 = *(a3 + 2);
  if (v8 != v8)
  {
    v27 = *(a3 + 2);
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: agf1 = %d <-2^7 or >=2^7, Out of range!");
    goto LABEL_20;
  }

  v9 = 0;
  v10 = 1;
  do
  {
    v11 = v10;
    if ((*&a3[2 * v9 + 6] - 536870913) < 0xBFFFFFFF)
    {
      EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: pos[%d] = %d <-2^29 or >=2^29, Out of range!");
      goto LABEL_20;
    }

    v10 = 0;
    v9 = 1;
  }

  while ((v11 & 1) != 0);
  v12 = *(a3 + 5);
  if ((v12 - 16777217) < 0xFDFFFFFF)
  {
    v28 = *(a3 + 5);
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: pos[2] = %d <-2^24 or >=2^24, Out of range!");
    goto LABEL_20;
  }

  v16 = 0;
  v17 = 1;
  do
  {
    v18 = v17;
    if ((*&a3[2 * v16 + 12] - 65537) < 0xFFFDFFFF)
    {
      EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: vel[%d] = %d <-2^16 or >=2^16, Out of range!");
      goto LABEL_20;
    }

    v17 = 0;
    v16 = 1;
  }

  while ((v18 & 1) != 0);
  v19 = *(a3 + 8);
  if ((v19 - 131073) < 0xFFFBFFFF)
  {
    v29 = *(a3 + 8);
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: vel[2] = %d <-2^17 or >=2^17, Out of range!");
    goto LABEL_20;
  }

  for (i = 0; i != 3; ++i)
  {
    if ((*&a3[2 * i + 18] - 513) < 0xFFFFFBFF)
    {
      EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: acc[%d] = %d <-2^9 or >=2^9, Out of range!");
      goto LABEL_20;
    }
  }

  v21 = *(p_api + 48);
  if (*(v21 + 5) == 1 && *v21 >= 3)
  {
    v22 = *(v21 + 24) + 604800 * *(v21 + 16);
  }

  else
  {
    v22 = 0;
  }

  v31 = *a3;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = *(a3 + 6);
  v36 = v12;
  v37 = *(a3 + 3);
  v38 = v19;
  v39 = *(a3 + 18);
  v40 = *(a3 + 11);
  if (*(a3 + 48))
  {
    v23 = 5;
  }

  else
  {
    v23 = 3;
  }

  v30[0] = v22;
  v30[1] = v23;
  v13 = SBAS_Set_StateTable(a1, a2, v30);
  if (v13)
  {
    Debug_Log_SBA_Eph(1, a1, a2, v30);
  }

LABEL_21:
  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t lsim01_01Init(void)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim01_01Init");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  v2 = gnssOsa_Calloc("lsim01_01Init", 87, 1, 0xCuLL);
  if (v2)
  {
    AgpsSendFsmMsg(131, 131, 8621056, v2);
    LODWORD(v2) = 0;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, v2);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim01_01Init");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim01_02DeInit(void)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim01_02DeInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  v2 = gnssOsa_Calloc("lsim01_02DeInit", 107, 1, 0xCuLL);
  if (v2)
  {
    AgpsSendFsmMsg(131, 131, 8621312, v2);
    LODWORD(v2) = 0;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, v2);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim01_02DeInit");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void lsim01_05DestMissingHandler(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim01_05DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = *(a1 + 4);
  if (v4 > 8636162)
  {
    if (v4 > 8782594)
    {
      if (v4 > 8783106)
      {
        if (v4 != 8783107)
        {
          v5 = 8783619;
LABEL_27:
          if (v4 != v5)
          {
            goto LABEL_28;
          }

          goto LABEL_42;
        }
      }

      else if (v4 != 8782595 && v4 != 8782851)
      {
LABEL_28:
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No handling required Msg,%x\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim01_05DestMissingHandler", *(a1 + 4));
          LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
        }

        goto LABEL_53;
      }

      v7 = *(a1 + 16);
      if (v7[1])
      {
        free(v7[1]);
        v7 = *(a1 + 16);
      }

LABEL_32:
      free(v7);
LABEL_33:
      *(a1 + 16) = 0;
      goto LABEL_53;
    }

    if (v4 == 8636163)
    {
      goto LABEL_34;
    }

    if (v4 == 8636419)
    {
      v14 = *(a1 + 24);
      if (v14)
      {
        free(v14);
      }

      *(a1 + 24) = 0;
      v15 = *(a1 + 32);
      if (v15)
      {
        free(v15);
      }

      *(a1 + 32) = 0;
LABEL_50:
      v16 = *(a1 + 40);
      if (v16)
      {
        free(v16);
      }

      *(a1 + 40) = 0;
      goto LABEL_53;
    }

    v6 = 8782339;
    goto LABEL_19;
  }

  if (v4 <= 8622594)
  {
    if (v4 == 8586243)
    {
      goto LABEL_20;
    }

    if (v4 == 8586755)
    {
      v12 = *(a1 + 16);
      if (v12)
      {
        free(v12);
      }

      *(a1 + 16) = 0;
      goto LABEL_42;
    }

    v6 = 8621827;
LABEL_19:
    if (v4 != v6)
    {
      goto LABEL_28;
    }

LABEL_20:
    v7 = *(a1 + 16);
    if (!v7)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v4 <= 8625154)
  {
    if (v4 != 8622595)
    {
      v5 = 8624643;
      goto LABEL_27;
    }

LABEL_42:
    v13 = *(a1 + 24);
    if (v13)
    {
      free(v13);
    }

    *(a1 + 24) = 0;
    goto LABEL_53;
  }

  if (v4 != 8625155)
  {
    if (v4 != 8630787)
    {
      goto LABEL_28;
    }

    goto LABEL_50;
  }

LABEL_34:
  v10 = *(a1 + 24);
  if (v10)
  {
    free(v10);
  }

  *(a1 + 24) = 0;
  v11 = *(a1 + 32);
  if (v11)
  {
    free(v11);
  }

  *(a1 + 32) = 0;
LABEL_53:
  v17 = *MEMORY[0x29EDCA608];
}

uint64_t lsim01_11InitReq()
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim01_11InitReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_INIT_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 77, "lsim01_11InitReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 3, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim01_03InitRoutine");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  lsim12_00TimersInit();
  lsim11_01InitSessionMgmt();
  LOBYTE(g_LsimPltConfig) = 4;
  *(&g_LsimPltConfig + 2) = 5242944;
  HIWORD(g_LsimPltConfig) = 64;
  LOBYTE(qword_2A19267F6) = 6;
  *(&qword_2A19267F6 + 2) = 36765729;
  HIWORD(qword_2A19267F6) = 33;
  g_SimInfoDB = 0;
  byte_2A1920A82 = 0;
  unk_2A1920A83 = -1;
  lsim05_31InitSupl();
  lsim15_21InitMobileInfo();
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim01_03InitRoutine");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim01_11InitReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0;
}