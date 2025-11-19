uint64_t AVE_DW_GetUInt32(const char *a1, const char *a2, unsigned int *a3)
{
  v40 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetUInt32", 276, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v31);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    v16 = 4294966295;
    goto LABEL_30;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  UInt32 = AVE_CFPref_GetUInt32(v7, v8, a3);
  if (!UInt32)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v22 = AVE_Log_CheckConsole(0x2Cu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = 0x%x\n", v23, 44, v24, a2, *a3);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = UInt32;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *cStr = 0u;
  v33 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = AVE_CFPref_GetUInt32(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = AVE_Log_CheckConsole(0x2Cu);
  v25 = AVE_GetCurrTime();
  v26 = AVE_Log_GetLevelStr(6);
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = 0x%x\n", v25, 44, v26, cStr, *a3);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v27, 44, v28, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v25, 44, v26, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

LABEL_30:
  v29 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t AVE_DW_GetUInt64(const char *a1, const char *a2, unint64_t *a3)
{
  v40 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetUInt64", 348, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v31);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    v16 = 4294966295;
    goto LABEL_30;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  UInt64 = AVE_CFPref_GetUInt64(v7, v8, a3);
  if (!UInt64)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v22 = AVE_Log_CheckConsole(0x2Cu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = 0x%llx\n", v23, 44, v24, a2, *a3);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = UInt64;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *cStr = 0u;
  v33 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = AVE_CFPref_GetUInt64(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = AVE_Log_CheckConsole(0x2Cu);
  v25 = AVE_GetCurrTime();
  v26 = AVE_Log_GetLevelStr(6);
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = 0x%llx\n", v25, 44, v26, cStr, *a3);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v27, 44, v28, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v25, 44, v26, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

LABEL_30:
  v29 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t AVE_DW_GetInt32(const char *a1, const char *a2, int *a3)
{
  v40 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetInt32", 419, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v31);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    v16 = 4294966295;
    goto LABEL_30;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  Int32 = AVE_CFPref_GetInt32(v7, v8, a3);
  if (!Int32)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v22 = AVE_Log_CheckConsole(0x2Cu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = %d\n", v23, 44, v24, a2, *a3);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %d", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = Int32;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *cStr = 0u;
  v33 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = AVE_CFPref_GetInt32(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = AVE_Log_CheckConsole(0x2Cu);
  v25 = AVE_GetCurrTime();
  v26 = AVE_Log_GetLevelStr(6);
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = %d\n", v25, 44, v26, cStr, *a3);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %d", v27, 44, v28, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %d", v25, 44, v26, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

LABEL_30:
  v29 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t AVE_DW_GetInt64(const char *a1, const char *a2, uint64_t *a3)
{
  v40 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetInt64", 491, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v31);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    v16 = 4294966295;
    goto LABEL_30;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  Int64 = AVE_CFPref_GetInt64(v7, v8, a3);
  if (!Int64)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v22 = AVE_Log_CheckConsole(0x2Cu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = %lld\n", v23, 44, v24, a2, *a3);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = Int64;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *cStr = 0u;
  v33 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = AVE_CFPref_GetInt64(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = AVE_Log_CheckConsole(0x2Cu);
  v25 = AVE_GetCurrTime();
  v26 = AVE_Log_GetLevelStr(6);
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = %lld\n", v25, 44, v26, cStr, *a3);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v27, 44, v28, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v25, 44, v26, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

LABEL_30:
  v29 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t AVE_DW_GetDouble(const char *a1, const char *a2, double *a3)
{
  v42 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetDouble", 562, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    v16 = 4294966295;
    goto LABEL_30;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  Double = AVE_CFPref_GetDouble(v7, v8, a3);
  if (!Double)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v22 = AVE_Log_CheckConsole(0x2Cu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(6);
      v25 = *a3;
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = %lf\n", v23, 44, v24, a2, *a3);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = Double;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *cStr = 0u;
  v35 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = AVE_CFPref_GetDouble(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = AVE_Log_CheckConsole(0x2Cu);
  v26 = AVE_GetCurrTime();
  v27 = AVE_Log_GetLevelStr(6);
  v28 = *a3;
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = %lf\n", v26, 44, v27, cStr, *a3);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v29, 44, v30, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v26, 44, v27, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

LABEL_30:
  v31 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t AVE_DW_Cfg_Init(_DWORD *a1)
{
  bzero(a1, 0x650uLL);
  *a1 = -1;
  a1[20] = -2;
  for (i = 31; i != 103; i += 12)
  {
    *&a1[i] = -1;
  }

  v3 = 0;
  a1[18] = -2;
  *(a1 + 420) = 0;
  a1[189] = -1;
  *(a1 + 98) = 0xC0000000CLL;
  a1[198] = -2;
  a1[201] = -13;
  *(a1 + 101) = 0xC0000000CLL;
  *(a1 + 102) = 0xBFF0000000000000;
  *(a1 + 105) = 0xBFF0000000000000;
  *(a1 + 110) = -1;
  *(a1 + 112) = -1;
  *(a1 + 113) = 0xBFF0000000000000;
  *(a1 + 114) = 0xBFF0000000000000;
  a1[261] = -1;
  *(a1 + 133) = 0xBFF0000000000000;
  *(a1 + 134) = 0xBFF0000000000000;
  v4 = a1 + 278;
  *(a1 + 120) = 0xC0000000CLL;
  *(a1 + 136) = -1;
  do
  {
    v5 = 0;
    a1[24 * v3 + 276] = 1;
    do
    {
      *&v4[v5] = -NAN;
      v5 += 3;
    }

    while (v5 != 21);
    ++v3;
    v4 += 24;
  }

  while (v3 != 5);
  a1[255] = -1;
  *(a1 + 395) = 0xFFFFFFFFLL;
  *(a1 + 257) = -1;
  *(a1 + 259) = -1;
  *(a1 + 199) = -1;
  return 0;
}

uint64_t AVE_Prop_Cfg_AVC_Init(uint64_t *a1, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0x1Eu, 7))
  {
    v4 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", CurrTime, 30, LevelStr, "AVE_Prop_Cfg_AVC_Init", a1, a2);
      v7 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v7, 30, v19, "AVE_Prop_Cfg_AVC_Init", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", CurrTime, 30, LevelStr, "AVE_Prop_Cfg_AVC_Init", a1, a2);
    }
  }

  bzero(a1 + 4, 0x568uLL);
  *a1 = a2;
  *(a1 + 1) = xmmword_2954EBDA0;
  a1[3] = -101;
  *(a1 + 9) = -1;
  *&v8 = 0xC0000000CLL;
  *(&v8 + 1) = 0xC0000000CLL;
  *(a1 + 21) = v8;
  *(a1 + 46) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 31) = _Q0;
  a1[33] = 0xBFF0000000000000;
  *(a1 + 68) = -1;
  *&v14 = -1;
  *(&v14 + 1) = -1;
  *(a1 + 35) = v14;
  *(a1 + 37) = v14;
  *(a1 + 78) = -1;
  *(a1 + 20) = _Q0;
  a1[43] = 0xFFFFFFFEFFFFFFFFLL;
  *(a1 + 95) = -1;
  *(a1 + 99) = -1;
  a1[50] = -1;
  a1[44] = -1;
  a1[45] = -1;
  a1[46] = -1;
  *(a1 + 116) = -1;
  *(a1 + 27) = v14;
  *(a1 + 28) = v14;
  *(a1 + 26) = v14;
  a1[59] = 0xBFF0000000000000;
  *(a1 + 30) = xmmword_2954EBDB0;
  a1[62] = -1;
  *(a1 + 676) = -1;
  a1[153] = 0xC0000000CLL;
  *(a1 + 308) = -13;
  *(a1 + 314) = -1;
  *(a1 + 317) = -1;
  a1[160] = 0xBFF0000000000000;
  a1[162] = -1;
  *(a1 + 337) = -1;
  *(a1 + 340) = -1;
  *(a1 + 1404) = -1;
  a1[183] = -1;
  *(a1 + 179) = v14;
  *(a1 + 181) = v14;
  *(a1 + 177) = v14;
  if (AVE_Log_CheckLevel(0x1Eu, 7))
  {
    v15 = AVE_Log_CheckConsole(0x1Eu);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d\n", v16, 30, v17, "AVE_Prop_Cfg_AVC_Init", a1, a2, 0);
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d", v16);
  }

  return 0;
}

uint64_t AVE_Prop_Cfg_AVC_Uninit(uint64_t *a1)
{
  if (AVE_Log_CheckLevel(0x1Eu, 7))
  {
    v2 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", CurrTime, 30, LevelStr, "AVE_Prop_Cfg_AVC_Uninit", a1, 0);
      v5 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v5, 30, v11, "AVE_Prop_Cfg_AVC_Uninit", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", CurrTime, 30, LevelStr, "AVE_Prop_Cfg_AVC_Uninit", a1, 0);
    }
  }

  v6 = *a1;
  if (AVE_Log_CheckLevel(0x1Eu, 7))
  {
    v7 = AVE_Log_CheckConsole(0x1Eu);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d\n", v8, 30, v9, "AVE_Prop_Cfg_AVC_Uninit", a1, v6, 0);
      v8 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d", v8);
  }

  return 0;
}

uint64_t AVE_DW_RetrieveDeprecatedKeys(int *a1)
{
  v7 = 0;
  v6 = 0;
  if (!AVE_DW_GetBool(0, "AVE_EnableLossless", &v7))
  {
    v2 = 10;
    if (v7)
    {
      v2 = 8;
    }

    *&a1[v2] |= 0x200uLL;
  }

  if (!AVE_DW_GetInt32(0, "AVE_FrameQP", &v6))
  {
    v3 = v6;
    a1[201] = v6;
    a1[202] = v3;
    a1[203] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MaximizePowerEfficiency", &v6))
  {
    if (v6)
    {
      a1[16] |= 2u;
    }

    else
    {
      a1[17] |= 2u;
    }
  }

  if (!AVE_DW_GetInt32(0, "AVE_UseCAVLCBits", &v6))
  {
    if (v6)
    {
      a1[16] |= 0x100u;
    }

    else
    {
      a1[17] |= 0x100u;
    }
  }

  if (!AVE_DW_GetInt32(0, "AVE_EnableMCTF", &v6))
  {
    v4 = 8;
    if (!v6)
    {
      v4 = 10;
    }

    *&a1[v4] |= 0x20uLL;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Bframes", &v6))
  {
    a1[221] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_BaseFrameRate", &v6))
  {
    *a1 = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_InitialQPI", &v6))
  {
    a1[201] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_InitialQPP", &v6))
  {
    a1[202] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_InitialQPB", &v6))
  {
    a1[203] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SoftMinQP", &v6))
  {
    a1[196] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SoftMaxQP", &v6))
  {
    a1[197] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_HardMinQP", &v6))
  {
    a1[240] = v6;
  }

  result = AVE_DW_GetInt32(0, "AVE_HardMaxQP", &v6);
  if (!result)
  {
    a1[241] = v6;
  }

  return result;
}

uint64_t AVE_DW_RetrieveFeature(void *a1)
{
  v3 = 0;
  if (!AVE_DW_GetUInt64(0, "AVE_CfgOn", &v3))
  {
    a1[2] = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_CfgOff", &v3))
  {
    a1[3] = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_SwFeatureOn", &v3))
  {
    a1[4] = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_SwFeatureOff", &v3))
  {
    a1[5] = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_HwFeatureOn", &v3))
  {
    a1[6] = v3;
  }

  result = AVE_DW_GetUInt64(0, "AVE_HwFeatureOff", &v3);
  if (!result)
  {
    a1[7] = v3;
  }

  return result;
}

uint64_t AVE_DW_RetrieveDPM(int *a1)
{
  v9 = 0;
  if (!AVE_DW_GetInt32(0, "AVE_DPM_Mode", &v9))
  {
    *a1 = v9 | 0x100;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DPM_PL_IOPMin", &v9))
  {
    v2 = v9;
    if (v9 <= 1)
    {
      v2 = 1;
    }

    if (v2 >= 4)
    {
      v2 = 4;
    }

    a1[1] |= 1u;
    a1[2] = v2;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DPM_PL_IOPMax", &v9))
  {
    v3 = v9;
    if (v9 <= 1)
    {
      v3 = 1;
    }

    if (v3 >= 4)
    {
      v3 = 4;
    }

    a1[3] = v3;
    a1[1] |= 0x10000u;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DPM_PL_DCSMin", &v9))
  {
    v4 = v9;
    if (v9 <= 1)
    {
      v4 = 1;
    }

    if (v4 >= 4)
    {
      v4 = 4;
    }

    a1[4] = v4;
    a1[1] |= 2u;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DPM_PL_DCSMax", &v9))
  {
    v5 = v9;
    if (v9 <= 1)
    {
      v5 = 1;
    }

    if (v5 >= 4)
    {
      v5 = 4;
    }

    a1[5] = v5;
    a1[1] |= 0x20000u;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DPM_PL_FABMin", &v9))
  {
    v6 = v9;
    if (v9 <= 1)
    {
      v6 = 1;
    }

    if (v6 >= 4)
    {
      v6 = 4;
    }

    a1[6] = v6;
    a1[1] |= 4u;
  }

  result = AVE_DW_GetInt32(0, "AVE_DPM_PL_FABMax", &v9);
  if (!result)
  {
    v8 = v9;
    if (v9 <= 1)
    {
      v8 = 1;
    }

    if (v8 >= 4)
    {
      v8 = 4;
    }

    a1[7] = v8;
    a1[1] |= 0x40000u;
  }

  return result;
}

uint64_t AVE_DW_RetrieveDLB(int *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *v6 = 0u;
  v7 = 0u;
  v5 = 0;
  if (!AVE_DW_GetInt32(0, "AVE_DLB_AllocMode", &v5))
  {
    a1[1] = v5;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DLB_Type", &v5))
  {
    a1[2] = v5;
    *a1 = 1;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DLB_SVESchedMode", &v5))
  {
    a1[3] = v5;
    *a1 = 1;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DLB_SVENum", &v5))
  {
    a1[4] = v5;
    *a1 = 1;
  }

  if (!AVE_DW_GetStr(0, "AVE_DLB_SVEMap", v6, 128))
  {
    AVE_DLB_ParseCfg(v6, a1);
  }

  Str = AVE_DW_GetStr(0, "AVE_DLB_Cfg", v6, 128);
  if (!Str)
  {
    AVE_DLB_ParseCfg(v6, a1);
  }

  v3 = *MEMORY[0x29EDCA608];
  return Str;
}

uint64_t AVE_DW_RetrievePerf(_DWORD *a1)
{
  *v3 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_PerfFeatureOn", &v3[1]))
  {
    a1[16] = v3[1];
  }

  if (!AVE_DW_GetUInt32(0, "AVE_PerfFeatureOff", &v3[1]))
  {
    a1[17] = v3[1];
  }

  if (!AVE_DW_GetInt32(0, "AVE_InputQueueMaxCount", v3))
  {
    a1[18] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_MaxFrameRate", v3))
  {
    a1[19] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_Realtime", v3))
  {
    a1[20] = v3[0];
  }

  AVE_DW_RetrieveDPM(a1 + 21);
  return AVE_DW_RetrieveDLB(a1 + 29);
}

uint64_t AVE_DW_RetrieveDump(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__src = 0u;
  v7 = 0u;
  if (!AVE_DW_GetUInt32(0, "AVE_DumpFeature", &v5))
  {
    *(a1 + 412) = v5;
  }

  if (!AVE_DW_GetUInt32(0, "AVE_DumpMode", &v5))
  {
    *(a1 + 416) = v5;
  }

  Str = AVE_DW_GetStr(0, "AVE_OutputPath", __src, 128);
  if (!Str)
  {
    strncpy((a1 + 420), __src, 0x7FuLL);
  }

  v3 = *MEMORY[0x29EDCA608];
  return Str;
}

uint64_t AVE_DW_RetrieveLog(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = 0;
  v5 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__src = 0u;
  v8 = 0u;
  if (!AVE_DW_GetUInt64(0, "AVE_Verbose", &v6))
  {
    *(a1 + 8) = v6;
    *a1 |= 0x100u;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_KernelVerbose", &v6))
  {
    *(a1 + 16) = v6;
    *a1 |= 0x200u;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_FirmwareVerbose", &v6))
  {
    *(a1 + 24) = v6;
    *a1 |= 0x300u;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_AlgVerbose", &v6))
  {
    *(a1 + 32) = v6;
    *a1 |= 0x400u;
  }

  if (!AVE_DW_GetInt32(0, "AVE_LogConsole", &v5))
  {
    *(a1 + 40) = v5;
  }

  Str = AVE_DW_GetStr(0, "AVE_LogPath", __src, 128);
  if (!Str)
  {
    strncpy((a1 + 44), __src, 0x7FuLL);
  }

  v3 = *MEMORY[0x29EDCA608];
  return Str;
}

uint64_t AVE_DW_RetrieveRC(uint64_t a1)
{
  v6 = 0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  if (!AVE_DW_GetUInt64(0, "AVE_RCFeatureOn", &v4))
  {
    *(a1 + 768) = v4;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_RCFeatureOff", &v4))
  {
    *(a1 + 776) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_RCMinQP", &v6))
  {
    *(a1 + 784) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_RCMaxQP", &v6))
  {
    *(a1 + 788) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_LookAheadFrameCount", &v6))
  {
    *(a1 + 792) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_RCMode", &v6))
  {
    *(a1 + 796) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Bitrate", &v6))
  {
    *(a1 + 800) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_QPI", &v6))
  {
    *(a1 + 804) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_QPP", &v6))
  {
    *(a1 + 808) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_QPB", &v6))
  {
    *(a1 + 812) = v6;
  }

  if (!AVE_DW_GetDouble(0, "AVE_CRFScale", &v3))
  {
    *(a1 + 816) = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_VBVMaxBitRate", &v6))
  {
    *(a1 + 824) = v6;
  }

  if (!AVE_DW_GetDouble(0, "AVE_VBVBufferSize", &v3))
  {
    *(a1 + 832) = v3;
  }

  if (!AVE_DW_GetDouble(0, "AVE_VBVInitialDelay", &v3))
  {
    *(a1 + 840) = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Parallel_Limit", &v6))
  {
    *(a1 + 848) = v6;
  }

  if (!AVE_DW_GetInt64(0, "AVE_Parallel_MinFrameCnt", &v5))
  {
    *(a1 + 856) = v5;
  }

  result = AVE_DW_GetInt64(0, "AVE_Parallel_MinDuration", &v5);
  if (!result)
  {
    *(a1 + 864) = v5;
  }

  return result;
}

uint64_t AVE_DW_RetrieveGOP(uint64_t a1)
{
  v3 = 0;
  *v4 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_GOPFeatureOn", &v4[1]))
  {
    *(a1 + 872) = v4[1];
  }

  if (!AVE_DW_GetUInt32(0, "AVE_GOPFeatureOff", &v4[1]))
  {
    *(a1 + 876) = v4[1];
  }

  if (!AVE_DW_GetInt32(0, "AVE_NumOfPFrame", v4))
  {
    *(a1 + 880) = v4[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_NumOfBFrame", v4))
  {
    *(a1 + 884) = v4[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_NumOfGOPLayer", v4))
  {
    *(a1 + 888) = v4[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_MaxKeyFrameInterval", v4))
  {
    *(a1 + 896) = v4[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_StrictKeyFrameInterval", v4))
  {
    *(a1 + 900) = v4[0];
  }

  if (!AVE_DW_GetDouble(0, "AVE_MaxKeyFrameIntervalDuration", &v3))
  {
    *(a1 + 904) = v3;
  }

  if (!AVE_DW_GetDouble(0, "AVE_StrictKeyFrameIntervalDuration", &v3))
  {
    *(a1 + 912) = v3;
  }

  result = AVE_DW_GetInt32(0, "AVE_NumOfTemporalLayer", v4);
  if (!result)
  {
    *(a1 + 892) = v4[0];
  }

  return result;
}

uint64_t AVE_DW_RetrieveRef(_DWORD *a1)
{
  *v3 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_RefFeatureOn", &v3[1]))
  {
    a1[230] = v3[1];
  }

  if (!AVE_DW_GetUInt32(0, "AVE_RefFeatureOff", &v3[1]))
  {
    a1[231] = v3[1];
  }

  if (!AVE_DW_GetInt32(0, "AVE_RefNumOfPFrame", v3))
  {
    a1[232] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_RefNumOfBFrame", v3))
  {
    a1[233] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_RefGapOfPFrame", v3))
  {
    a1[234] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_RefGapOfBFrameL0", v3))
  {
    a1[235] = v3[0];
  }

  result = AVE_DW_GetInt32(0, "AVE_RefGapOfBFrameL1", v3);
  if (!result)
  {
    a1[236] = v3[0];
  }

  return result;
}

uint64_t AVE_DW_RetrieveQPMod(_DWORD *a1)
{
  *v3 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_QPModFeatureOn", &v3[1]))
  {
    a1[237] = v3[1];
  }

  if (!AVE_DW_GetUInt32(0, "AVE_QPModFeatureOff", &v3[1]))
  {
    a1[238] = v3[1];
  }

  if (!AVE_DW_GetInt32(0, "AVE_QPModLevel", v3))
  {
    a1[239] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_BlkMinQP", v3))
  {
    a1[240] = v3[0];
  }

  result = AVE_DW_GetInt32(0, "AVE_BlkMaxQP", v3);
  if (!result)
  {
    a1[241] = v3[0];
  }

  return result;
}

uint64_t AVE_DW_RetrieveLambdaMod(uint64_t a1)
{
  v3 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_LambdaModFeatureOn", &v3))
  {
    *(a1 + 968) = v3;
  }

  result = AVE_DW_GetUInt32(0, "AVE_LambdaModFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 972) = v3;
  }

  return result;
}

uint64_t AVE_DW_RetrieveModeDec(uint64_t a1)
{
  v3 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_ModeDecFeatureOn", &v3))
  {
    *(a1 + 976) = v3;
  }

  result = AVE_DW_GetUInt32(0, "AVE_ModeDecFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 980) = v3;
  }

  return result;
}

uint64_t AVE_DW_RetrieveAlg(uint64_t a1)
{
  v4 = 0;
  v3 = 0;
  if (!AVE_DW_GetUInt64(0, "AVE_AlgFeatureOn", &v3))
  {
    *(a1 + 728) = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_AlgFeatureOff", &v3))
  {
    *(a1 + 736) = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Profile", &v4))
  {
    *(a1 + 744) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Level", &v4))
  {
    *(a1 + 748) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Tier", &v4))
  {
    *(a1 + 752) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_ScalingMatrix", &v4))
  {
    *(a1 + 756) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_FrameRate", &v4))
  {
    *(a1 + 760) = v4;
  }

  AVE_DW_RetrieveRC(a1);
  AVE_DW_RetrieveGOP(a1);
  AVE_DW_RetrieveRef(a1);
  AVE_DW_RetrieveQPMod(a1);
  AVE_DW_RetrieveLambdaMod(a1);
  AVE_DW_RetrieveModeDec(a1);
  if (!AVE_DW_GetUInt64(0, "AVE_SEIFeatureOn", &v3))
  {
    *(a1 + 984) = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_SEIFeatureOff", &v3))
  {
    *(a1 + 992) = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_VUIFeatureOn", &v3))
  {
    *(a1 + 1000) = v3;
  }

  result = AVE_DW_GetUInt64(0, "AVE_VUIFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 1008) = v3;
  }

  return result;
}

uint64_t AVE_DW_RetrieveHw(_DWORD *a1)
{
  v3 = 0;
  if (!AVE_DW_GetInt32(0, "AVE_SliceNum", &v3))
  {
    a1[254] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SearchRangeMode", &v3))
  {
    a1[255] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_ThroughputMode", &v3))
  {
    a1[256] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MergeCandidateNum", &v3))
  {
    a1[257] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DeblockMode", &v3))
  {
    a1[258] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SAOMode", &v3))
  {
    a1[259] = v3;
  }

  result = AVE_DW_GetInt32(0, "AVE_EdgeReplication", &v3);
  if (!result)
  {
    a1[260] = v3;
  }

  return result;
}

uint64_t AVE_DW_RetrieveMCTF(uint64_t a1)
{
  v38 = *MEMORY[0x29EDCA608];
  v5 = 0;
  v4 = 0.0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *v6 = 0u;
  v7 = 0u;
  if (!AVE_DW_GetInt32(0, "AVE_MCTFStrengthLevel", &v5))
  {
    *(a1 + 1044) = v5;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFStrengthDelta", &v5))
  {
    *(a1 + 1048) = v5;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFTogglePeriod", &v5))
  {
    *(a1 + 1052) = v5;
  }

  if (!AVE_DW_GetDouble(0, "AVE_MCTFISPGainThreshold", &v4))
  {
    *(a1 + 1056) = v4;
  }

  if (!AVE_DW_GetDouble(0, "AVE_MCTFISPGain1RefThreshold", &v4))
  {
    *(a1 + 1072) = v4;
  }

  if (!AVE_DW_GetDouble(0, "AVE_MCTFISPGain2RefThreshold", &v4))
  {
    *(a1 + 1064) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFOnToOffPerfThreshold", &v5))
  {
    *(a1 + 1080) = v5;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFOffToOnPerfThreshold", &v5))
  {
    *(a1 + 1084) = v5;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFMaxNextRefNum", &v5))
  {
    *(a1 + 1088) = v5;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MCTFRampUpFrameNum", &v5))
  {
    *(a1 + 1092) = v5;
  }

  result = AVE_DW_GetStr(0, "AVE_MCTF_SMap", v6, 512);
  if (!result)
  {
    result = AVE_MCTF_SMap_Parse(v6, (a1 + 1096));
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AVE_DW_Retrieve(uint64_t a1)
{
  v4 = 0;
  if (!AVE_DW_GetInt32(0, "AVE_DWMode", &v4))
  {
    *(a1 + 4) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DefaultCfg", &v4))
  {
    *(a1 + 8) = v4;
  }

  AVE_DW_RetrieveFeature(a1);
  AVE_DW_RetrievePerf(a1);
  AVE_DW_RetrieveDump(a1);
  AVE_DW_RetrieveLog(a1 + 552);
  AVE_DW_RetrieveAlg(a1);
  AVE_DW_RetrieveHw(a1);
  AVE_DW_RetrieveMCTF(a1);
  if (!AVE_DW_GetInt32(0, "AVE_Usage", &v4))
  {
    *(a1 + 1580) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_PropertyMode", &v4))
  {
    *(a1 + 1584) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_TotalFrameCount", &v4))
  {
    *(a1 + 1588) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_CmdTimeOutMode", &v4))
  {
    *(a1 + 1592) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SchedPolicy", &v4))
  {
    *(a1 + 1596) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_OutputBufNum", &v4))
  {
    *(a1 + 1600) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_OutputBufSize", &v4))
  {
    *(a1 + 1604) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SNR", &v4))
  {
    *(a1 + 1608) = v4;
  }

  Int32 = AVE_DW_GetInt32(0, "AVE_TimeStats_MaxCnt", &v4);
  if (!Int32)
  {
    *(a1 + 1612) = v4;
  }

  AVE_DW_RetrieveDeprecatedKeys(a1);
  return Int32;
}

uint64_t AVE_DW_Init(void)
{
  if (AVE_Log_CheckLevel(0x2Cu, 7))
  {
    v0 = AVE_Log_CheckConsole(0x2Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", CurrTime, 44, LevelStr, "AVE_DW_Init");
      v3 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 44, v10, "AVE_DW_Init");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", CurrTime, 44, LevelStr, "AVE_DW_Init");
    }
  }

  AVE_DW_Cfg_Init(gs_sAVE_DW_Cfg);
  v4 = AVE_DW_Retrieve(gs_sAVE_DW_Cfg);
  if (AVE_Log_CheckLevel(0x2Cu, 7))
  {
    v5 = AVE_Log_CheckConsole(0x2Cu);
    v6 = AVE_GetCurrTime();
    v7 = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v6, 44, v7, "AVE_DW_Init", v4);
      v8 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v8, 44, v11, "AVE_DW_Init", v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v6, 44, v7, "AVE_DW_Init", v4);
    }
  }

  return v4;
}

uint64_t AVE_DW_Uninit(void)
{
  if (AVE_Log_CheckLevel(0x2Cu, 7))
  {
    v0 = AVE_Log_CheckConsole(0x2Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", CurrTime, 44, LevelStr, "AVE_DW_Uninit");
      v3 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 44, v10, "AVE_DW_Uninit");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", CurrTime, 44, LevelStr, "AVE_DW_Uninit");
    }
  }

  v4 = AVE_DW_Cfg_Uninit();
  if (AVE_Log_CheckLevel(0x2Cu, 7))
  {
    v5 = AVE_Log_CheckConsole(0x2Cu);
    v6 = AVE_GetCurrTime();
    v7 = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v6, 44, v7, "AVE_DW_Uninit", v4);
      v8 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v8, 44, v11, "AVE_DW_Uninit", v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v6, 44, v7, "AVE_DW_Uninit", v4);
    }
  }

  return v4;
}

uint64_t AVE_EdgeReplication_FillPlaneRight(__CVBuffer *a1, unsigned int a2)
{
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  v5 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  CVPixelBufferGetWidthOfPlane(a1, a2);
  CVPixelBufferGetHeightOfPlane(a1, a2);
  CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &v5);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 4294966296;
}

uint64_t AVE_EdgeReplication_FillPlaneBottom(__CVBuffer *a1, unsigned int a2, int a3, uint64_t a4)
{
  v17 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  CVPixelBufferGetWidthOfPlane(a1, a2);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, a2);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  CVPixelBufferGetExtendedPixels(a1, 0, 0, &extraRowsOnTop, &v17);
  if (a2)
  {
    if (*(a4 + 12))
    {
      v11 = *(a4 + 20) >> 1;
      v17 >>= v11;
      extraRowsOnTop >>= v11;
    }

    else
    {
      v17 = 0;
    }
  }

  v12 = &BaseAddressOfPlane[(extraRowsOnTop + HeightOfPlane - 1) * BytesPerRowOfPlane];
  v13 = &v12[BytesPerRowOfPlane];
  if (a3)
  {
    if (v17)
    {
      for (i = 0; i < v17; ++i)
      {
        memcpy(v13, v12, BytesPerRowOfPlane);
        v13 += BytesPerRowOfPlane;
        v12 -= BytesPerRowOfPlane;
      }
    }
  }

  else if (v17)
  {
    for (j = 0; j < v17; ++j)
    {
      memcpy(v13, v12, BytesPerRowOfPlane);
      v13 += BytesPerRowOfPlane;
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 0;
}

uint64_t AVE_DRL_Retrieve(CFArrayRef theArray, char *a2)
{
  v15 = 0;
  v16 = 0.0;
  if (theArray && a2)
  {
    *(a2 + 4) = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    Count = CFArrayGetCount(theArray);
    v5 = Count >> 1;
    if (Count >> 1 >= 1)
    {
      v6 = 0;
      v7 = (a2 + 16);
      v8 = (Count >> 1);
      do
      {
        if (AVE_CFArray_GetFloat64(theArray, v6, &v16))
        {
          result = AVE_CFArray_GetSInt64(theArray, v6, &v15);
          if (result)
          {
            return result;
          }

          v10 = v15;
        }

        else
        {
          v10 = v16;
        }

        *(v7 - 1) = v10;
        if (AVE_CFArray_GetFloat64(theArray, (v6 + 1), &v16))
        {
          result = AVE_CFArray_GetSInt64(theArray, (v6 + 1), &v15);
          if (result)
          {
            return result;
          }

          v11 = v15;
        }

        else
        {
          v11 = v16;
        }

        *v7 = v11;
        v7 += 2;
        v6 = (v6 + 2);
        --v8;
      }

      while (v8);
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x35u, 4))
    {
      v12 = AVE_Log_CheckConsole(0x35u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 53, LevelStr, "AVE_DRL_Retrieve", 28, "pArray != __null && pDRL != __null", theArray, a2);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 53);
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_DRL_Make(int *a1, __CFArray *a2)
{
  if (a1 && a2)
  {
    if (*a1 < 1)
    {
      return 0;
    }

    else
    {
      v4 = 0;
      for (i = (a1 + 4); ; i += 2)
      {
        v6 = AVE_CFArray_AddFloat64(*(i - 1), a2);
        result = AVE_CFArray_AddFloat64(*i, a2) + v6;
        if (result)
        {
          break;
        }

        if (++v4 >= *a1)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x35u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x35u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 53, LevelStr, "AVE_DRL_Make", 95, "pDRL != __null && pArray != __null", a1, a2);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 53);
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_FmtConv_PlaneInterchange2Linear(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, interchange_compression *a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v13) = a8;
  interchange_decompress_plane(a1, a2, a12, a3, a4, a5, a6 & a7, a9, a10, a11, v13);
  return 0;
}

uint64_t AVE_FmtConv_PlaneChromaPacked2Linear(unsigned __int8 *a1, int a2, int a3, int a4, char a5, int a6, int a7, unsigned __int8 *a8)
{
  v8 = a2;
  LODWORD(v10) = 2 * a2 / 3;
  v11 = 2 * a2 % 3;
  if ((a5 & 1) == 0)
  {
    if (a3 < 1)
    {
      return 0;
    }

    v27 = 0;
    v28 = a7 * a3;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v10;
    }

    v29 = a6;
    v30 = a1;
    v31 = a3;
    while (1)
    {
      v32 = &a8[v27 * a7];
      if (v8 < 2)
      {
        v42 = 0;
        v35 = 0;
        v34 = 0;
        if (!v11)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
        LODWORD(v35) = 0;
        do
        {
          v36 = *&v30[4 * v33];
          v37 = v36 & 0x3FF;
          if (v33)
          {
            v41 = v34 + v28;
            *&v32[2 * v41] = v37;
            v39 = 2;
            v40 = 1;
            v38 = v35;
          }

          else
          {
            *&v32[2 * v35] = v37;
            v38 = v34 + v28;
            v39 = 1;
            v40 = 2;
            v41 = v35;
          }

          *&v32[2 * v38] = (v36 >> 10) & 0x3FF;
          *&v32[2 * v41 + 2] = (v36 >> 20) & 0x3FF;
          v35 = (v35 + v40);
          v34 += v39;
          ++v33;
        }

        while (v10 != v33);
        v42 = v10;
        if (!v11)
        {
          goto LABEL_36;
        }
      }

      v43 = *&a1[4 * v42 + v27 * v29];
      v44 = v43 & 0x3FF;
      if (v42)
      {
        *&v32[2 * v34 + 2 * v28] = v44;
        if (v11 == 2)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *&v32[2 * v35] = v44;
        if (v11 == 2)
        {
          v35 = v34 + v28;
LABEL_35:
          *&v32[2 * v35] = (v43 >> 10) & 0x3FF;
        }
      }

LABEL_36:
      ++v27;
      v30 += v29;
      if (v27 == v31)
      {
        return 0;
      }
    }
  }

  if (a3 >= 1)
  {
    v12 = 0;
    if (v10 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    v47 = 2 * (2 * a2 % 3 - 1);
    v14 = a6;
    v15 = a7;
    v16 = a8 + 4;
    v17 = a1;
    v18 = a3;
    do
    {
      if (v8 < 2)
      {
        v23 = 0;
        if (v11)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v19 = v13;
        v20 = v17;
        v21 = v16;
        do
        {
          v22 = *v20;
          v20 += 4;
          *(v21 - 2) = v22 & 0x3FF;
          *(v21 - 1) = (v22 >> 10) & 0x3FF;
          *v21 = (v22 >> 20) & 0x3FF;
          v21 += 6;
          --v19;
        }

        while (v19);
        v23 = v13;
        if (v11)
        {
LABEL_13:
          v24 = *&a1[4 * v23 + v12 * v14];
          __src[0] = v24 & 0x3FF;
          __src[1] = (v24 >> 10) & 0x3FF;
          __src[2] = (v24 >> 20) & 0x3FF;
          if (v11 >= 1)
          {
            v25 = a8;
            v26 = v15;
            memcpy(&a8[6 * v23 + v12 * a7], __src, v47 + 2);
            v15 = v26;
            a8 = v25;
            v8 = a2;
          }
        }
      }

      ++v12;
      v16 += v15;
      v17 += v14;
    }

    while (v12 != v18);
  }

  return 0;
}

uint64_t AVE_FmtConv_PlaneLumaPacked2Linear(unsigned __int8 *a1, int a2, int a3, int a4, int a5, int a6, unsigned __int8 *a7)
{
  if (a3 >= 1)
  {
    v9 = 0;
    v10 = (a2 / 3);
    v11 = a2 % 3;
    v23 = 2 * (a2 % 3 - 1);
    v12 = a5;
    v13 = a3;
    v14 = a7 + 4;
    v15 = a1;
    do
    {
      if (a2 < 3)
      {
        v20 = 0;
        if (v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v16 = v10;
        v17 = v15;
        v18 = v14;
        do
        {
          v19 = *v17;
          v17 += 4;
          *(v18 - 2) = v19 & 0x3FF;
          *(v18 - 1) = (v19 >> 10) & 0x3FF;
          *v18 = (v19 >> 20) & 0x3FF;
          v18 += 6;
          --v16;
        }

        while (v16);
        v20 = v10;
        if (v11)
        {
LABEL_9:
          v21 = *&a1[4 * v20 + v9 * v12];
          __src[0] = v21 & 0x3FF;
          __src[1] = (v21 >> 10) & 0x3FF;
          __src[2] = (v21 >> 20) & 0x3FF;
          if (v11 >= 1)
          {
            memcpy(&a7[6 * v20 + v9 * a6], __src, v23 + 2);
          }
        }
      }

      ++v9;
      v14 += a6;
      v15 += v12;
    }

    while (v9 != v13);
  }

  return 0;
}

uint64_t AVE_FmtConv_PlanePacked2Linear(unsigned __int8 *a1, int a2, int a3, int a4, int a5, char a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a5)
  {
    AVE_FmtConv_PlaneChromaPacked2Linear(a1, a2, a3, a4, a6, a7, a8, a9);
  }

  else
  {
    AVE_FmtConv_PlaneLumaPacked2Linear(a1, a2, a3, a4, a7, a8, a9);
  }

  return 0;
}

uint64_t AVE_UC_Verify(void)
{
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v0 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", CurrTime, 35, LevelStr, "AVE_UC_Verify");
      v3 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 35, v18, "AVE_UC_Verify");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", CurrTime, 35, LevelStr, "AVE_UC_Verify");
    }
  }

  v4 = IOServiceMatching("AppleAVE2Driver");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v4);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    v6 = 0;
    v7 = 6;
  }

  else
  {
    v7 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x23u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | can not find matched driver\n", v9, 35, v10, "AVE_UC_Verify", 26, "pService != 0");
        v11 = AVE_GetCurrTime();
        v7 = 4;
        v12 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver", v11, 35, v12, "AVE_UC_Verify", 26, "pService != 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver", v9, 35, v10, "AVE_UC_Verify", 26, "pService != 0");
        v7 = 4;
      }
    }

    v6 = 4294966291;
  }

  if (AVE_Log_CheckLevel(0x23u, v7))
  {
    v13 = AVE_Log_CheckConsole(0x23u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(v7);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v14, 35, v15, "AVE_UC_Verify", v6);
      v16 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(v7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v16, 35, v19, "AVE_UC_Verify", v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v14, 35, v15, "AVE_UC_Verify", v6);
    }
  }

  return v6;
}

uint64_t AVE_UC_Create(uint32_t a1, void *a2)
{
  connect = 0;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v4 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %d %p\n", CurrTime, 35, LevelStr, "AVE_UC_Create", a1, a2);
      v7 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", v7, 35, v34, "AVE_UC_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", CurrTime, 35, LevelStr, "AVE_UC_Create", a1, a2);
    }
  }

  if (a2)
  {
    v8 = IOServiceMatching("AppleAVE2Driver");
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      kdebug_trace();
      v11 = IOServiceOpen(v10, *MEMORY[0x29EDCA6B0], a1, &connect);
      v12 = AVE_IOReturn2RetCode(v11);
      kdebug_trace();
      if (v12)
      {
        if (AVE_Log_CheckLevel(0x23u, 4))
        {
          v13 = AVE_Log_CheckConsole(0x23u);
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(4);
          if (v13)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d\n", v14, 35, v15, "AVE_UC_Create", 77, "ret == 0", a1, a2, v11, v12);
            v16 = AVE_GetCurrTime();
            v35 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d", v16, 35, v35);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d", v14, 35, v15);
          }
        }
      }

      else
      {
        *a2 = connect;
      }

      IOObjectRelease(v10);
      if (v12)
      {
        v28 = connect == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        if (v12)
        {
          v17 = 4;
        }

        else
        {
          v17 = 6;
        }
      }

      else
      {
        IOServiceClose(connect);
        connect = 0;
        v17 = 4;
      }
    }

    else
    {
      v17 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v23 = AVE_Log_CheckConsole(0x23u);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p\n", v24, 35, v25, "AVE_UC_Create", 67, "pService != 0", a1, a2);
          v26 = AVE_GetCurrTime();
          v17 = 4;
          v27 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p", v26, 35, v27, "AVE_UC_Create", 67, "pService != 0", a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p", v24, 35, v25, "AVE_UC_Create", 67, "pService != 0", a1, a2);
          v17 = 4;
        }
      }

      v12 = 4294966291;
    }
  }

  else
  {
    v17 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x23u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v19, 35, v20, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
        v21 = AVE_GetCurrTime();
        v17 = 4;
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v21, 35, v22, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v19, 35, v20, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
        v17 = 4;
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v17))
  {
    v29 = AVE_Log_CheckConsole(0x23u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v17);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d\n", v30, 35, v31, "AVE_UC_Create", a1, a2, v12);
      v32 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v17);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v30);
    }
  }

  return v12;
}

uint64_t AVE_UC_Destroy(void *a1)
{
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 35, LevelStr, "AVE_UC_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 35, v22, "AVE_UC_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 35, LevelStr, "AVE_UC_Destroy", a1);
    }
  }

  if (a1)
  {
    kdebug_trace();
    v6 = IOServiceClose(a1);
    v7 = AVE_IOReturn2RetCode(v6);
    if (v7)
    {
      v8 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v9 = AVE_Log_CheckConsole(0x23u);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d\n", v10, 35, v11, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
          v12 = AVE_GetCurrTime();
          v8 = 4;
          v13 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d", v12, 35, v13, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d", v10, 35, v11, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
          v8 = 4;
        }
      }
    }

    else
    {
      kdebug_trace();
      a1 = 0;
      v8 = 6;
    }
  }

  else
  {
    v8 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v14 = AVE_Log_CheckConsole(0x23u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 35, v16, "AVE_UC_Destroy", 121, "pUC != __null", 0);
        v15 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    a1 = 0;
    v7 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v8))
  {
    v17 = AVE_Log_CheckConsole(0x23u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(v8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v18, 35, v19, "AVE_UC_Destroy", a1, v7);
      v20 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(v8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v20, 35, v23, "AVE_UC_Destroy", a1, v7);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v18, 35, v19, "AVE_UC_Destroy", a1, v7);
    }
  }

  return v7;
}

uint64_t AVE_UC_Open(const void *a1, uint64_t *a2, uint64_t *a3)
{
  outputStructCnt = 40;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Open", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 1u, a2, 0x7A0uLL, a3, &outputStructCnt);
    v13 = AVE_IOReturn2RetCode(v12);
    v14 = *a3;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v17 = AVE_Log_CheckConsole(0x23u);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x\n", v18, 35, v19, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v12);
          v20 = AVE_GetCurrTime();
          v16 = 4;
          v21 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x", v20, 35, v21, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v12);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x", v18, 35, v19, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v12);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x27)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v31 = AVE_Log_CheckConsole(0x23u);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
          v34 = AVE_GetCurrTime();
          v16 = 4;
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 6;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v22 = AVE_Log_CheckConsole(0x23u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = AVE_GetCurrTime();
        v16 = 4;
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v16))
  {
    v27 = AVE_Log_CheckConsole(0x23u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Open", a1, a2, a3, v13);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t AVE_UC_Close(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Close", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 2u, a2, 0x28uLL, a3, &outputStructCnt);
    v13 = AVE_IOReturn2RetCode(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v17 = AVE_Log_CheckConsole(0x23u);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v12, v13);
          v20 = AVE_GetCurrTime();
          v16 = 4;
          v21 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v12, v13);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d", v18, 35, v19, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v12, v13);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v31 = AVE_Log_CheckConsole(0x23u);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
          v34 = AVE_GetCurrTime();
          v16 = 4;
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 6;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v22 = AVE_Log_CheckConsole(0x23u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = AVE_GetCurrTime();
        v16 = 4;
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v16))
  {
    v27 = AVE_Log_CheckConsole(0x23u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Close", a1, a2, a3, v13);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t AVE_UC_Config(const void *a1, const void *a2, uint64_t *a3, void *a4)
{
  v46 = *MEMORY[0x29EDCA608];
  v44 = 0u;
  v45 = 0u;
  *reference = 0u;
  v43 = 0u;
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v8 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Config", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", CurrTime, 35);
  }

  if (a1 && a2 && a3 && a4)
  {
    v11 = *a3;
    v12 = a3[1];
    v13 = a3[2];
    kdebug_trace();
    v14 = IOConnectCallAsyncMethod(a1, 3u, a2, reference, 8u, 0, 0, a3, 0x38uLL, 0, 0, a4, &outputStructCnt);
    v15 = AVE_IOReturn2RetCode(v14);
    v16 = *a3;
    v17 = a3[1];
    kdebug_trace();
    if (v15)
    {
      v18 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v19 = AVE_Log_CheckConsole(0x23u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d\n", v20, 35, v21, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v14, v15);
          v22 = AVE_GetCurrTime();
          v18 = 4;
          v23 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d", v22, 35, v23, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v14, v15);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v14, v15);
          v18 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v18 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v35 = AVE_Log_CheckConsole(0x23u);
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
        if (v35)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v36, 35, v37, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
          v38 = AVE_GetCurrTime();
          v18 = 4;
          v39 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v38, 35, v39, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v36, 35, v37, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
          v18 = 4;
        }
      }

      v15 = 4294966281;
    }

    else
    {
      v15 = 0;
      v18 = 6;
    }
  }

  else
  {
    v18 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v24 = AVE_Log_CheckConsole(0x23u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v25, 35, v26, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
        v27 = AVE_GetCurrTime();
        v18 = 4;
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v27, 35, v28, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v25, 35, v26, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
        v18 = 4;
      }
    }

    v15 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v18))
  {
    v29 = AVE_Log_CheckConsole(0x23u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v18);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v30, 35, v31, "AVE_UC_Config", a1, a2, a3, a4, v15);
      v32 = AVE_GetCurrTime();
      outputCnt = AVE_Log_GetLevelStr(v18);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v32, 35, outputCnt);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v30, 35, v31);
    }
  }

  v33 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t AVE_UC_Prepare(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Prepare", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 4u, a2, 0x1A0A0uLL, a3, &outputStructCnt);
    v13 = AVE_IOReturn2RetCode(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v17 = AVE_Log_CheckConsole(0x23u);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to prepare %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Prepare", 327, "ret == 0", a1, a2, a3, v12, v13);
          v20 = AVE_GetCurrTime();
          v16 = 4;
          v21 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Prepare", 327, "ret == 0", a1, a2, a3, v12, v13);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %p %p 0x%x %d", v18, 35, v19, "AVE_UC_Prepare", 327, "ret == 0", a1, a2, a3, v12, v13);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v31 = AVE_Log_CheckConsole(0x23u);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Prepare", 331, "outSize >= sizeof(S_AVE_UCOutParam_Prepare)", a1, a2, a3, outputStructCnt, 32);
          v34 = AVE_GetCurrTime();
          v16 = 4;
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Prepare", 331, "outSize >= sizeof(S_AVE_UCOutParam_Prepare)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Prepare", 331, "outSize >= sizeof(S_AVE_UCOutParam_Prepare)", a1, a2, a3, outputStructCnt, 32);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 6;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v22 = AVE_Log_CheckConsole(0x23u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Prepare", 314, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = AVE_GetCurrTime();
        v16 = 4;
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Prepare", 314, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Prepare", 314, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v16))
  {
    v27 = AVE_Log_CheckConsole(0x23u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Prepare", a1, a2, a3, v13);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t AVE_UC_Start(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 336;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Start", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 5u, a2, 0x1A0B0uLL, a3, &outputStructCnt);
    v13 = AVE_IOReturn2RetCode(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v17 = AVE_Log_CheckConsole(0x23u);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v12, v13);
          v20 = AVE_GetCurrTime();
          v16 = 4;
          v21 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v12, v13);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d", v18, 35, v19, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v12, v13);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x14F)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v31 = AVE_Log_CheckConsole(0x23u);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
          v34 = AVE_GetCurrTime();
          v16 = 4;
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 6;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v22 = AVE_Log_CheckConsole(0x23u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = AVE_GetCurrTime();
        v16 = 4;
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v16))
  {
    v27 = AVE_Log_CheckConsole(0x23u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Start", a1, a2, a3, v13);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t AVE_UC_Stop(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Stop", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 6u, a2, 0x30uLL, a3, &outputStructCnt);
    v13 = AVE_IOReturn2RetCode(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v17 = AVE_Log_CheckConsole(0x23u);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v12, v13);
          v20 = AVE_GetCurrTime();
          v16 = 4;
          v21 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v12, v13);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d", v18, 35, v19, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v12, v13);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v31 = AVE_Log_CheckConsole(0x23u);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
          v34 = AVE_GetCurrTime();
          v16 = 4;
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 6;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v22 = AVE_Log_CheckConsole(0x23u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = AVE_GetCurrTime();
        v16 = 4;
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v16))
  {
    v27 = AVE_Log_CheckConsole(0x23u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Stop", a1, a2, a3, v13);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t AVE_UC_Reset(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Reset", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 0xAu, a2, 0x30uLL, a3, &outputStructCnt);
    v13 = AVE_IOReturn2RetCode(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v17 = AVE_Log_CheckConsole(0x23u);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to reset %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Reset", 615, "ret == 0", a1, a2, a3, v12, v13);
          v20 = AVE_GetCurrTime();
          v16 = 4;
          v21 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to reset %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Reset", 615, "ret == 0", a1, a2, a3, v12, v13);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to reset %p %p %p 0x%x %d", v18, 35, v19, "AVE_UC_Reset", 615, "ret == 0", a1, a2, a3, v12, v13);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v31 = AVE_Log_CheckConsole(0x23u);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Reset", 619, "outSize >= sizeof(S_AVE_UCOutParam_Reset)", a1, a2, a3, outputStructCnt, 32);
          v34 = AVE_GetCurrTime();
          v16 = 4;
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Reset", 619, "outSize >= sizeof(S_AVE_UCOutParam_Reset)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Reset", 619, "outSize >= sizeof(S_AVE_UCOutParam_Reset)", a1, a2, a3, outputStructCnt, 32);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 6;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v22 = AVE_Log_CheckConsole(0x23u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Reset", 602, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = AVE_GetCurrTime();
        v16 = 4;
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Reset", 602, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Reset", 602, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v16))
  {
    v27 = AVE_Log_CheckConsole(0x23u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Reset", a1, a2, a3, v13);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t AVE_WtPred_RetrieveArray(CFDictionaryRef theDict, int a2, int *a3)
{
  if (a2 <= 4 && theDict && a3)
  {
    Value = CFDictionaryGetValue(theDict, @"WeightData_WeightFlagArray");
    v7 = CFDictionaryGetValue(theDict, @"WeightData_Weight");
    v8 = CFDictionaryGetValue(theDict, @"WeightData_Weight");
    v9 = v8;
    v52 = Value;
    if (Value && v7 && v8)
    {
      Count = CFArrayGetCount(Value);
      v11 = CFArrayGetCount(v7);
      v12 = CFArrayGetCount(v9);
      if (a2 < 1)
      {
        return 0;
      }

      else
      {
        v51 = 0;
        v13 = 0;
        v46 = v11;
        v47 = Count;
        if (Count >= v11)
        {
          v14 = v11;
        }

        else
        {
          v14 = Count;
        }

        v45 = v12;
        if (v14 >= v12)
        {
          v14 = v12;
        }

        v15 = a3 + 11;
        v16 = a3 + 3;
        v50 = v14;
        v48 = a2;
        v17 = a3 + 50;
        while (2)
        {
          v18 = 0;
          v49 = v17;
          do
          {
            v54[0] = 0;
            v53 = 0;
            v19 = v51 + v18;
            if (v51 + v18 >= v50)
            {
              if (AVE_Log_CheckLevel(0xD7u, 4))
              {
                v35 = AVE_Log_CheckConsole(0xD7u);
                CurrTime = AVE_GetCurrTime();
                LevelStr = AVE_Log_GetLevelStr(4);
                if (v35)
                {
                  printf("%lld %d AVE %s: %s:%d %s | Wrong WP array size %d %d %d %d\n", CurrTime, 215, LevelStr, "AVE_WtPred_RetrieveArray", 56, "arrayIdx < iFlagCnt && arrayIdx < iWeightCnt && arrayIdx < iOffsetCnt", v47, v46, v45, v19);
                  CurrTime = AVE_GetCurrTime();
                  v43 = v45;
                  v44 = v51 + v18;
                  v41 = v47;
                  v42 = v46;
                  v40 = AVE_Log_GetLevelStr(4);
                }

                else
                {
                  v43 = v45;
                  v44 = v51 + v18;
                  v41 = v47;
                  v42 = v46;
                  v40 = LevelStr;
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong WP array size %d %d %d %d", CurrTime, 215, v40, "AVE_WtPred_RetrieveArray", 56, "arrayIdx < iFlagCnt && arrayIdx < iWeightCnt && arrayIdx < iOffsetCnt", v41, v42, v43, v44);
              }

              return 4294966295;
            }

            result = AVE_CFArray_GetChar(v52, v51 + v18, v54);
            if (result)
            {
              return result;
            }

            if (v18)
            {
              v15[v13] = v54[0];
              result = AVE_CFArray_GetSInt32(v7, v19, &v53);
              if (result)
              {
                return result;
              }

              v21 = v15[v13] ? v53 : 1 << a3[1];
              *(v17 - 16) = v21;
              v17[24] = (-1 << a3[1]) + v21;
              result = AVE_CFArray_GetSInt32(v9, v19, &v53);
              if (result)
              {
                return result;
              }

              if (v15[v13])
              {
                v24 = v53;
              }

              else
              {
                v24 = 0;
              }

              *v17 = v24;
              v25 = v24 + (*(v17 - 16) << 7 >> a3[1]) - 128;
              if (v25 <= -512)
              {
                v25 = -512;
              }

              if (v25 >= 511)
              {
                v25 = 511;
              }

              v17[40] = v25;
            }

            else
            {
              v16[v13] = v54[0];
              result = AVE_CFArray_GetSInt32(v7, v19, &v53);
              if (result)
              {
                return result;
              }

              if (v16[v13])
              {
                v22 = v53;
                v23 = *a3;
              }

              else
              {
                v23 = *a3;
                v22 = 1 << *a3;
              }

              a3[v13 + 19] = v22;
              a3[v13 + 67] = (-1 << v23) + v22;
              result = AVE_CFArray_GetSInt32(v9, v19, &v53);
              if (result)
              {
                return result;
              }

              if (v16[v13])
              {
                v26 = v53;
              }

              else
              {
                v26 = 0;
              }

              a3[v13 + 27] = v26;
            }

            ++v18;
            ++v17;
          }

          while (v18 != 3);
          result = 0;
          ++v13;
          v51 += 3;
          v17 = v49 + 2;
          if (v13 != v48)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD7u, 4))
      {
        v31 = AVE_Log_CheckConsole(0xD7u);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | CFArray not existing %p %p %p\n", v32, 215, v33, "AVE_WtPred_RetrieveArray", 39, "pFlagArray != __null && pWeightArray != __null && pOffsetArray != __null", Value, v7, v9);
          v34 = AVE_GetCurrTime();
          v39 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | CFArray not existing %p %p %p", v34, 215, v39);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | CFArray not existing %p %p %p", v32, 215, v33);
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD7u, 4))
    {
      v27 = AVE_Log_CheckConsole(0xD7u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v28, 215, v29, "AVE_WtPred_RetrieveArray", 30, "pDict != __null && pInfo != __null && iFrameCount <= 4", theDict, a3, a2);
        v30 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v30, 215, v38);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v28, 215, v29);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_WtPred_GetInfo(CFDictionaryRef theDict, int a2, _OWORD *a3)
{
  if (!theDict || !a3)
  {
    if (AVE_Log_CheckLevel(0xD7u, 4))
    {
      v12 = AVE_Log_CheckConsole(0xD7u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 215, LevelStr, "AVE_WtPred_GetInfo", 246, "pDict != __null && pInfo != __null", theDict, a3);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 215);
    }

    return 4294966295;
  }

  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  *(a3 + 412) = 0u;
  Value = CFDictionaryGetValue(theDict, @"WeightedPredictionInfo");
  if (!Value)
  {
    if (AVE_Log_CheckLevel(0xD7u, 4))
    {
      v15 = AVE_Log_CheckConsole(0xD7u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get dictionary %p %p\n", v16, 215, v17, "AVE_WtPred_GetInfo", 254, "pWPInfoDict != __null", theDict, 0);
        v16 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get dictionary %p %p", v16, 215);
    }

    return 4294966288;
  }

  v7 = Value;
  if (AVE_Log_CheckLevel(0x1Du, 6))
  {
    v8 = AVE_Log_CheckConsole(0x1Du);
    v9 = AVE_GetCurrTime();
    v10 = AVE_Log_GetLevelStr(6);
    if (v8)
    {
      printf("%lld %d AVE %s: FIG: AVE_KEY_WP_INFO found \n", v9, 29, v10);
      v11 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: FIG: AVE_KEY_WP_INFO found ", v11, 29, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: AVE_KEY_WP_INFO found ", v9, 29, v10);
    }
  }

  SInt32 = AVE_CFDict_GetSInt32(v7, @"WeightData_LumaLog2WeightDenom", a3);
  if (SInt32)
  {
    v18 = SInt32;
    if (AVE_Log_CheckLevel(0xD7u, 4))
    {
      v20 = AVE_Log_CheckConsole(0xD7u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v21, 215, v22, "AVE_WtPred_GetInfo", 261, "ret == 0", v7, a3, v18);
        v23 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
LABEL_26:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v23, 215, v28);
        return v18;
      }

      goto LABEL_33;
    }

    return v18;
  }

  v24 = AVE_CFDict_GetSInt32(v7, @"WeightData_ChromaLog2WeightDenom", a3 + 1);
  if (v24)
  {
    v18 = v24;
    if (AVE_Log_CheckLevel(0xD7u, 4))
    {
      v25 = AVE_Log_CheckConsole(0xD7u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v21, 215, v22, "AVE_WtPred_GetInfo", 266, "ret == 0", v7, a3, v18);
        v23 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        goto LABEL_26;
      }

LABEL_33:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v21, 215, v22);
    }

    return v18;
  }

  return AVE_WtPred_RetrieveArray(v7, a2, a3);
}

uint64_t AVE_WtPred_PrintInfo(unsigned int *a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v127 = *MEMORY[0x29EDCA608];
  memset(v126, 0, sizeof(v126));
  if (a1)
  {
    AVE_ComposePosStr(a4, a5, v126, 32, a5, a6, a7, a8);
    if (AVE_Log_CheckLevel(a2, a3))
    {
      v11 = AVE_Log_CheckConsole(a2);
      if (a3 < 0)
      {
        if (!v11 || (-a3 & 0x20) != 0)
        {
          v18 = *a1;
        }

        else
        {
          printf("WP %s luma_log2_weight_denom = %d\n", v126, *a1);
          v17 = *a1;
        }

        syslog(3, "WP %s luma_log2_weight_denom = %d");
      }

      else
      {
        v12 = v11 ^ 1;
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(a3);
        if ((v12 | ((a3 & 0x20) >> 5)))
        {
          v114 = *a1;
        }

        else
        {
          printf("%lld %d AVE %s: WP %s luma_log2_weight_denom = %d\n", CurrTime, a2, LevelStr, v126, *a1);
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(a3);
          v15 = *a1;
        }

        syslog(3, "%lld %d AVE %s: WP %s luma_log2_weight_denom = %d");
      }
    }

    if (AVE_Log_CheckLevel(a2, a3))
    {
      v19 = AVE_Log_CheckConsole(a2);
      if (a3 < 0)
      {
        if (!v19 || (-a3 & 0x20) != 0)
        {
          v25 = a1[1];
        }

        else
        {
          printf("WP %s chroma_log2_weight_denom = %d\n", v126, a1[1]);
          v24 = a1[1];
        }

        syslog(3, "WP %s chroma_log2_weight_denom = %d");
      }

      else
      {
        v20 = v19 ^ 1;
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(a3);
        if ((v20 | ((a3 & 0x20) >> 5)))
        {
          v115 = a1[1];
        }

        else
        {
          printf("%lld %d AVE %s: WP %s chroma_log2_weight_denom = %d\n", v21, a2, v22, v126, a1[1]);
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(a3);
          v23 = a1[1];
        }

        syslog(3, "%lld %d AVE %s: WP %s chroma_log2_weight_denom = %d");
      }
    }

    if (AVE_Log_CheckLevel(a2, a3))
    {
      v26 = AVE_Log_CheckConsole(a2);
      if (a3 < 0)
      {
        if (!v26 || (-a3 & 0x20) != 0)
        {
          v32 = a1[2];
        }

        else
        {
          printf("WP %s delta_chroma_log2_weight_denom = %d\n", v126, a1[2]);
          v31 = a1[2];
        }

        syslog(3, "WP %s delta_chroma_log2_weight_denom = %d");
      }

      else
      {
        v27 = v26 ^ 1;
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(a3);
        if ((v27 | ((a3 & 0x20) >> 5)))
        {
          v116 = a1[2];
        }

        else
        {
          printf("%lld %d AVE %s: WP %s delta_chroma_log2_weight_denom = %d\n", v28, a2, v29, v126, a1[2]);
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(a3);
          v30 = a1[2];
        }

        syslog(3, "%lld %d AVE %s: WP %s delta_chroma_log2_weight_denom = %d");
      }
    }

    v33 = 0;
    v119 = a1 + 3;
    v124 = -a3;
    v34 = a1 + 27;
    v35 = a1 + 67;
    v120 = a1 + 51;
    v117 = a1 + 11;
    v36 = a1 + 27;
    v125 = a1 + 67;
    v118 = a1 + 19;
    do
    {
      v121 = v33;
      if (AVE_Log_CheckLevel(a2, a3))
      {
        v37 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if ((v124 & 0x20) != 0)
          {
            v44 = 0;
          }

          else
          {
            v44 = v37;
          }

          if (v44 == 1)
          {
            printf("WP %s luma_weight_l0_flag[%d] = %d\n", v126, v121, v119[v121]);
          }

          syslog(3, "WP %s luma_weight_l0_flag[%d] = %d", v126, v121, v119[v121]);
        }

        else
        {
          v38 = v37 ^ 1;
          v39 = AVE_GetCurrTime();
          v40 = AVE_Log_GetLevelStr(a3);
          v41 = v119[v121];
          if ((v38 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0_flag[%d] = %d", v39, a2, v40, v126, v121, v41);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s luma_weight_l0_flag[%d] = %d\n", v39, a2, v40, v126, v121, v41);
            v42 = AVE_GetCurrTime();
            v43 = AVE_Log_GetLevelStr(a3);
            syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0_flag[%d] = %d", v42, a2, v43, v126, v121, v119[v121]);
          }

          v34 = v36;
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v45 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if ((v124 & 0x20) != 0)
          {
            v51 = 0;
          }

          else
          {
            v51 = v45;
          }

          if (v51 == 1)
          {
            printf("WP %s luma_weight_l0[%d] = %d\n", v126, v121, v118[v121]);
          }

          syslog(3, "WP %s luma_weight_l0[%d] = %d", v126, v121, v118[v121]);
        }

        else
        {
          v46 = v45 ^ 1;
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(a3);
          v49 = v118[v121];
          if ((v46 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0[%d] = %d", v47, a2, v48, v126, v121, v49);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s luma_weight_l0[%d] = %d\n", v47, a2, v48, v126, v121, v49);
            v122 = AVE_GetCurrTime();
            v50 = AVE_Log_GetLevelStr(a3);
            syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0[%d] = %d", v122, a2, v50, v126, v121, v118[v121]);
          }

          v34 = v36;
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v52 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if ((v124 & 0x20) != 0)
          {
            v59 = 0;
          }

          else
          {
            v59 = v52;
          }

          if (v59 == 1)
          {
            printf("WP %s luma_offset_l0[%d] = %d\n", v126, v121, v34[v121]);
          }

          syslog(3, "WP %s luma_offset_l0[%d] = %d", v126, v121, v34[v121]);
        }

        else
        {
          v53 = v52 ^ 1;
          v54 = AVE_GetCurrTime();
          v55 = AVE_Log_GetLevelStr(a3);
          v56 = v34[v121];
          if ((v53 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s luma_offset_l0[%d] = %d", v54, a2, v55, v126, v121, v56);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s luma_offset_l0[%d] = %d\n", v54, a2, v55, v126, v121, v56);
            v57 = AVE_GetCurrTime();
            v58 = AVE_Log_GetLevelStr(a3);
            syslog(3, "%lld %d AVE %s: WP %s luma_offset_l0[%d] = %d", v57, a2, v58, v126, v121, v34[v121]);
          }

          v35 = v125;
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v60 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if ((v124 & 0x20) != 0)
          {
            v67 = 0;
          }

          else
          {
            v67 = v60;
          }

          if (v67 == 1)
          {
            printf("WP %s delta_luma_weight_l0[%d] = %d\n", v126, v121, v35[v121]);
          }

          syslog(3, "WP %s delta_luma_weight_l0[%d] = %d", v126, v121, v35[v121]);
        }

        else
        {
          v61 = v60 ^ 1;
          v62 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(a3);
          v64 = v35[v121];
          if ((v61 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s delta_luma_weight_l0[%d] = %d", v62, a2, v63, v126, v121, v64);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s delta_luma_weight_l0[%d] = %d\n", v62, a2, v63, v126, v121, v64);
            v65 = AVE_GetCurrTime();
            v66 = AVE_Log_GetLevelStr(a3);
            syslog(3, "%lld %d AVE %s: WP %s delta_luma_weight_l0[%d] = %d", v65, a2, v66, v126, v121, v35[v121]);
          }

          v34 = v36;
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v68 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if ((v124 & 0x20) != 0)
          {
            v74 = 0;
          }

          else
          {
            v74 = v68;
          }

          if (v74 == 1)
          {
            printf("WP %s chroma_weight_l0_flag[%d] = %d\n", v126, v121, v117[v121]);
          }

          syslog(3, "WP %s chroma_weight_l0_flag[%d] = %d", v126, v121, v117[v121]);
        }

        else
        {
          v69 = v68 ^ 1;
          v70 = AVE_GetCurrTime();
          v71 = AVE_Log_GetLevelStr(a3);
          v72 = v117[v121];
          if ((v69 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0_flag[%d] = %d", v70, a2, v71, v126, v121, v72);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s chroma_weight_l0_flag[%d] = %d\n", v70, a2, v71, v126, v121, v72);
            v123 = AVE_GetCurrTime();
            v73 = AVE_Log_GetLevelStr(a3);
            syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0_flag[%d] = %d", v123, a2, v73, v126, v121, v117[v121]);
          }

          v34 = v36;
        }
      }

      v75 = 0;
      v76 = v120;
      do
      {
        if (AVE_Log_CheckLevel(a2, a3))
        {
          v77 = AVE_Log_CheckConsole(a2);
          if (a3 < 0)
          {
            if ((v124 & 0x20) != 0)
            {
              v84 = 0;
            }

            else
            {
              v84 = v77;
            }

            v85 = *(v76 - 16);
            if (v84 == 1)
            {
              printf("WP %s chroma_weight_l0[%d][%d] = %d\n", v126, v121, v75, v85);
              syslog(3, "WP %s chroma_weight_l0[%d][%d] = %d", v126, v121, v75, *(v76 - 16));
            }

            else
            {
              syslog(3, "WP %s chroma_weight_l0[%d][%d] = %d", v126, v121, v75, v85);
            }
          }

          else
          {
            v78 = v77 ^ 1;
            v79 = AVE_GetCurrTime();
            v80 = AVE_Log_GetLevelStr(a3);
            v81 = *(v76 - 16);
            if ((v78 | ((a3 & 0x20) >> 5)))
            {
              syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0[%d][%d] = %d", v79, a2, v80, v126, v121, v75, v81);
            }

            else
            {
              printf("%lld %d AVE %s: WP %s chroma_weight_l0[%d][%d] = %d\n", v79, a2, v80, v126, v121, v75, v81);
              v82 = AVE_GetCurrTime();
              v83 = AVE_Log_GetLevelStr(a3);
              syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0[%d][%d] = %d", v82, a2, v83, v126, v121, v75, *(v76 - 16));
            }

            v34 = v36;
            v35 = v125;
          }
        }

        if (AVE_Log_CheckLevel(a2, a3))
        {
          v86 = AVE_Log_CheckConsole(a2);
          if (a3 < 0)
          {
            if ((v124 & 0x20) != 0)
            {
              v93 = 0;
            }

            else
            {
              v93 = v86;
            }

            v94 = *v76;
            if (v93 == 1)
            {
              printf("WP %s chroma_offset_l0[%d][%d] = %d\n", v126, v121, v75, v94);
              syslog(3, "WP %s chroma_offset_l0[%d][%d] = %d", v126, v121, v75, *v76);
            }

            else
            {
              syslog(3, "WP %s chroma_offset_l0[%d][%d] = %d", v126, v121, v75, v94);
            }
          }

          else
          {
            v87 = v86 ^ 1;
            v88 = AVE_GetCurrTime();
            v89 = AVE_Log_GetLevelStr(a3);
            v90 = *v76;
            if ((v87 | ((a3 & 0x20) >> 5)))
            {
              syslog(3, "%lld %d AVE %s: WP %s chroma_offset_l0[%d][%d] = %d", v88, a2, v89, v126, v121, v75, v90);
            }

            else
            {
              printf("%lld %d AVE %s: WP %s chroma_offset_l0[%d][%d] = %d\n", v88, a2, v89, v126, v121, v75, v90);
              v91 = AVE_GetCurrTime();
              v92 = AVE_Log_GetLevelStr(a3);
              syslog(3, "%lld %d AVE %s: WP %s chroma_offset_l0[%d][%d] = %d", v91, a2, v92, v126, v121, v75, *v76);
            }

            v34 = v36;
            v35 = v125;
          }
        }

        if (AVE_Log_CheckLevel(a2, a3))
        {
          v95 = AVE_Log_CheckConsole(a2);
          if (a3 < 0)
          {
            if ((v124 & 0x20) != 0)
            {
              v102 = 0;
            }

            else
            {
              v102 = v95;
            }

            v103 = v76[24];
            if (v102 == 1)
            {
              printf("WP %s delta_chroma_weight_l0[%d][%d] = %d\n", v126, v121, v75, v103);
              syslog(3, "WP %s delta_chroma_weight_l0[%d][%d] = %d", v126, v121, v75, v76[24]);
            }

            else
            {
              syslog(3, "WP %s delta_chroma_weight_l0[%d][%d] = %d", v126, v121, v75, v103);
            }
          }

          else
          {
            v96 = v95 ^ 1;
            v97 = AVE_GetCurrTime();
            v98 = AVE_Log_GetLevelStr(a3);
            v99 = v76[24];
            if ((v96 | ((a3 & 0x20) >> 5)))
            {
              syslog(3, "%lld %d AVE %s: WP %s delta_chroma_weight_l0[%d][%d] = %d", v97, a2, v98, v126, v121, v75, v99);
            }

            else
            {
              printf("%lld %d AVE %s: WP %s delta_chroma_weight_l0[%d][%d] = %d\n", v97, a2, v98, v126, v121, v75, v99);
              v100 = AVE_GetCurrTime();
              v101 = AVE_Log_GetLevelStr(a3);
              syslog(3, "%lld %d AVE %s: WP %s delta_chroma_weight_l0[%d][%d] = %d", v100, a2, v101, v126, v121, v75, v76[24]);
            }

            v34 = v36;
            v35 = v125;
          }
        }

        if (AVE_Log_CheckLevel(a2, a3))
        {
          v104 = AVE_Log_CheckConsole(a2);
          if (a3 < 0)
          {
            if ((v124 & 0x20) != 0)
            {
              v111 = 0;
            }

            else
            {
              v111 = v104;
            }

            v112 = v76[40];
            if (v111 == 1)
            {
              printf("WP %s delta_chroma_offset_l0[%d][%d] = %d\n", v126, v121, v75, v112);
              syslog(3, "WP %s delta_chroma_offset_l0[%d][%d] = %d", v126, v121, v75, v76[40]);
            }

            else
            {
              syslog(3, "WP %s delta_chroma_offset_l0[%d][%d] = %d", v126, v121, v75, v112);
            }
          }

          else
          {
            v105 = v104 ^ 1;
            v106 = AVE_GetCurrTime();
            v107 = AVE_Log_GetLevelStr(a3);
            v108 = v76[40];
            if ((v105 | ((a3 & 0x20) >> 5)))
            {
              syslog(3, "%lld %d AVE %s: WP %s delta_chroma_offset_l0[%d][%d] = %d", v106, a2, v107, v126, v121, v75, v108);
            }

            else
            {
              printf("%lld %d AVE %s: WP %s delta_chroma_offset_l0[%d][%d] = %d\n", v106, a2, v107, v126, v121, v75, v108);
              v109 = AVE_GetCurrTime();
              v110 = AVE_Log_GetLevelStr(a3);
              syslog(3, "%lld %d AVE %s: WP %s delta_chroma_offset_l0[%d][%d] = %d", v109, a2, v110, v126, v121, v75, v76[40]);
            }

            v34 = v36;
            v35 = v125;
          }
        }

        ++v75;
        ++v76;
      }

      while (v75 != 2);
      v33 = v121 + 1;
      v120 += 2;
    }

    while (v121 != 3);
    result = 0;
  }

  else
  {
    result = 4294966295;
  }

  v113 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AVE_RC_DecideVBVMaxBitRate(int a1, int a2, int *a3)
{
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xE3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %p\n", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVMaxBitRate", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %p", CurrTime);
  }

  if (a3)
  {
    if (a1 > 0)
    {
      v9 = 1;
      v10 = a1;
LABEL_15:
      *a3 = v10;
      if (AVE_Log_CheckLevel(0xE3u, 8))
      {
        v14 = AVE_Log_CheckConsole(0xE3u);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(8);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %d %d %d %d %d\n", v15, 227, v16, "AVE_RC_DecideVBVMaxBitRate", 259, a1, a2, *a3, v9, 0);
          v15 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(8);
          v17 = *a3;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d %d", v15, 227);
      }

      v18 = 0;
      goto LABEL_23;
    }

    if (a2 > 0)
    {
      v9 = 2;
      v10 = a2;
      goto LABEL_15;
    }

    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v24 = AVE_Log_CheckConsole(0xE3u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | VBVMaxBitrate not set %d %d %p\n", v25, 227, v26, "AVE_RC_DecideVBVMaxBitRate", 253, "0", a1, a2, a3);
        v25 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | VBVMaxBitrate not set %d %d %p", v25, 227);
    }

    v18 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v11 = AVE_Log_CheckConsole(0xE3u);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p\n", v12, 227, v13, "AVE_RC_DecideVBVMaxBitRate", 237, "piVBVMaxBitRate != __null", a1, a2, 0);
        v12 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p", v12, 227);
    }

    v18 = 4294966295;
  }

LABEL_23:
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v19 = AVE_Log_CheckConsole(0xE3u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %p %d\n", v20, 227, v21, "AVE_RC_DecideVBVMaxBitRate", a1, a2, a3, v18);
      v22 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v22, 227);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v20, 227);
    }
  }

  return v18;
}

uint64_t AVE_RC_DecideVBVBufferSize(double a1, double a2, double a3, uint64_t a4, double *a5)
{
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xE3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v13 = ((a1 - a1) * 1000.0);
    if (v13 >= 0)
    {
      v14 = ((a1 - a1) * 1000.0);
    }

    else
    {
      v14 = -v13;
    }

    v15 = ((a2 - a2) * 1000.0);
    if (v15 >= 0)
    {
      v16 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v16 = -v15;
    }

    v17 = ((a3 - a3) * 1000.0);
    if (v17 >= 0)
    {
      v18 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v18 = -v17;
    }

    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p\n", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVBufferSize", a1, v14, a2, v16, a3, v18, a4, a5);
      v19 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p", v19, 227, v57, "AVE_RC_DecideVBVBufferSize");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVBufferSize");
    }
  }

  if (a5)
  {
    if ((a4 & 0x80000000) != 0)
    {
      v20 = 10;
    }

    else
    {
      v20 = 20;
    }

    v21 = 2.5;
    if ((a4 & 0x80000000) == 0)
    {
      v21 = 1.0;
    }

    if (a3 <= 0.0)
    {
      v22 = v20;
    }

    else
    {
      v22 = 4;
    }

    if (a3 > 0.0)
    {
      v21 = a3;
    }

    if (a2 <= 0.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 2;
    }

    if (a2 > 0.0)
    {
      v21 = a2;
    }

    if (a1 <= 0.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1;
    }

    if (a1 > 0.0)
    {
      v21 = a1;
    }

    *a5 = v21;
    if (AVE_Log_CheckLevel(0xE3u, 8))
    {
      v25 = AVE_Log_CheckConsole(0xE3u);
      v60 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(8);
      v27 = ((a1 - a1) * 1000.0);
      v28 = ((a2 - a2) * 1000.0);
      if (v27 >= 0)
      {
        v29 = ((a1 - a1) * 1000.0);
      }

      else
      {
        v29 = -v27;
      }

      if (v28 >= 0)
      {
        v30 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v30 = -v28;
      }

      v31 = ((a3 - a3) * 1000.0);
      if (v31 >= 0)
      {
        v32 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v32 = -v31;
      }

      v33 = *a5;
      v34 = ((*a5 - v33) * 1000.0);
      if (v34 < 0)
      {
        v34 = -v34;
      }

      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d\n", v60, 227, v26, "AVE_RC_DecideVBVBufferSize", 332, a1, v29, a2, v30, a3, v32, a4, v33, v34, v24, 0);
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v35, 227, v36, "AVE_RC_DecideVBVBufferSize", 332, a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v60, 227, v26, "AVE_RC_DecideVBVBufferSize", 332, a1);
      }
    }

    v47 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v37 = AVE_Log_CheckConsole(0xE3u);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      v40 = ((a1 - a1) * 1000.0);
      if (v40 >= 0)
      {
        v41 = ((a1 - a1) * 1000.0);
      }

      else
      {
        v41 = -v40;
      }

      v42 = ((a2 - a2) * 1000.0);
      if (v42 >= 0)
      {
        v43 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v43 = -v42;
      }

      v44 = ((a3 - a3) * 1000.0);
      if (v44 >= 0)
      {
        v45 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v45 = -v44;
      }

      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v38, 227, v39, "AVE_RC_DecideVBVBufferSize", 294, "pfVBVBufferSize != __null", a1, v41, a2, v43, a3, v45, a4, 0);
        v46 = AVE_GetCurrTime();
        v58 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p", v46, 227, v58, "AVE_RC_DecideVBVBufferSize", 294);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p", v38, 227, v39, "AVE_RC_DecideVBVBufferSize", 294);
      }
    }

    v47 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v48 = AVE_Log_CheckConsole(0xE3u);
    v49 = AVE_GetCurrTime();
    v50 = AVE_Log_GetLevelStr(7);
    v51 = ((a1 - a1) * 1000.0);
    if (v51 >= 0)
    {
      v52 = ((a1 - a1) * 1000.0);
    }

    else
    {
      v52 = -v51;
    }

    v53 = ((a2 - a2) * 1000.0);
    if (v53 >= 0)
    {
      v54 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v54 = -v53;
    }

    if (v48)
    {
      printf("%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d\n", v49, 227, v50, "AVE_RC_DecideVBVBufferSize", a1, v52, a2, v54, a2, v54, a4, a5, v47);
      v55 = AVE_GetCurrTime();
      v59 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v55, 227, v59, "AVE_RC_DecideVBVBufferSize", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v49, 227, v50, "AVE_RC_DecideVBVBufferSize", a1);
    }
  }

  return v47;
}

uint64_t AVE_RC_DecideVBVInitialDelay(double a1, double a2, double a3, double a4, uint64_t a5, double *a6)
{
  v6 = a6;
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v11 = AVE_Log_CheckConsole(0xE3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v13 = ((a1 - a1) * 1000.0);
    if (v13 >= 0)
    {
      v14 = ((a1 - a1) * 1000.0);
    }

    else
    {
      v14 = -v13;
    }

    v15 = ((a2 - a2) * 1000.0);
    if (v15 >= 0)
    {
      v16 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v16 = -v15;
    }

    v17 = ((a3 - a3) * 1000.0);
    if (v17 >= 0)
    {
      v18 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v18 = -v17;
    }

    v19 = ((a4 - a4) * 1000.0);
    if (v19 >= 0)
    {
      v20 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v20 = -v19;
    }

    v6 = a6;
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p\n", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVInitialDelay", a1, v14, a2, v16, a3, v18, a4, v20, a5, a6);
      v67 = AVE_GetCurrTime();
      v63 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v67, 227, v63, "AVE_RC_DecideVBVInitialDelay", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVInitialDelay", a1);
    }
  }

  if (v6)
  {
    if (a1 >= 0.0)
    {
      v21 = 1;
      v22 = a1;
    }

    else if (a2 >= 0.0)
    {
      v21 = 2;
      v22 = a2;
    }

    else if (a3 >= 0.0)
    {
      v21 = 4;
      v22 = a3 * a4 / 100.0;
    }

    else
    {
      if ((a5 & 0x80000000) != 0)
      {
        v21 = 10;
      }

      else
      {
        v21 = 20;
      }

      v22 = 2.25;
      if ((a5 & 0x80000000) == 0)
      {
        v22 = 0.5;
      }
    }

    *v6 = v22;
    if (AVE_Log_CheckLevel(0xE3u, 8))
    {
      v36 = AVE_Log_CheckConsole(0xE3u);
      v68 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(8);
      v38 = ((a1 - a1) * 1000.0);
      if (v38 >= 0)
      {
        v39 = v38;
      }

      else
      {
        v39 = -v38;
      }

      v40 = ((a2 - a2) * 1000.0);
      v41 = ((a3 - a3) * 1000.0);
      if (v40 >= 0)
      {
        v42 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v42 = -v40;
      }

      if (v41 >= 0)
      {
        v43 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v43 = -v41;
      }

      v44 = ((a4 - a4) * 1000.0);
      if (v44 >= 0)
      {
        v45 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v45 = -v44;
      }

      v46 = *v6;
      v47 = ((*v6 - v46) * 1000.0);
      if (v47 < 0)
      {
        v47 = -v47;
      }

      if (v36)
      {
        v48 = v39;
        printf("%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d\n", v68, 227, v37, "AVE_RC_DecideVBVInitialDelay", 409, a1, v39, a2, v42, a3, v43, a4, v45, a5, v46, v47, v21, 0);
        v69 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v69, 227, v49, "AVE_RC_DecideVBVInitialDelay", 409, a1, v48);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v68, 227, v37, "AVE_RC_DecideVBVInitialDelay", 409, a1, v39);
      }
    }

    v35 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v23 = AVE_Log_CheckConsole(0xE3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      v26 = ((a1 - a1) * 1000.0);
      if (v26 >= 0)
      {
        v27 = ((a1 - a1) * 1000.0);
      }

      else
      {
        v27 = -v26;
      }

      v28 = ((a2 - a2) * 1000.0);
      if (v28 >= 0)
      {
        v29 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v29 = -v28;
      }

      v30 = ((a3 - a3) * 1000.0);
      if (v30 >= 0)
      {
        v31 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v31 = -v30;
      }

      v32 = ((a4 - a4) * 1000.0);
      if (v32 >= 0)
      {
        v33 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v33 = -v32;
      }

      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v24, 227, v25, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null", a1, v27, a2, v29, a3, v31, a4, v33, a5, 0);
        v34 = AVE_GetCurrTime();
        v64 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v34, 227, v64, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v24, 227, v25, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null");
      }
    }

    v35 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v50 = AVE_Log_CheckConsole(0xE3u);
    v51 = AVE_GetCurrTime();
    v52 = AVE_Log_GetLevelStr(7);
    v53 = ((a1 - a1) * 1000.0);
    if (v53 >= 0)
    {
      v54 = v53;
    }

    else
    {
      v54 = -v53;
    }

    v55 = ((a2 - a2) * 1000.0);
    if (v55 >= 0)
    {
      v56 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v56 = -v55;
    }

    v57 = ((a3 - a3) * 1000.0);
    if (v57 >= 0)
    {
      v58 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v58 = -v57;
    }

    v59 = ((a4 - a4) * 1000.0);
    if (v59 >= 0)
    {
      v60 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v60 = -v59;
    }

    if (v50)
    {
      v65 = v54;
      printf("%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d\n", v51, 227, v52, "AVE_RC_DecideVBVInitialDelay", a1, v54, a2, v56, a3, v58, a4, v60, a5, a6, v35);
      v70 = AVE_GetCurrTime();
      v61 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v70, 227, v61, "AVE_RC_DecideVBVInitialDelay", a1, v65);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v51, 227, v52, "AVE_RC_DecideVBVInitialDelay", a1, v54);
    }
  }

  return v35;
}

uint64_t AVE_PIP_RetrieveEntry(const void *a1, unsigned int *a2)
{
  memset(&rect, 0, sizeof(rect));
  if (!a1 || !a2)
  {
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v13 = AVE_Log_CheckConsole(0x32u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 50, LevelStr, "AVE_PIP_RetrieveEntry", 28, "pDict != __null && psEntry != __null", a1, a2);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 50);
    }

    return 4294966295;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      v19 = CFGetTypeID(a1);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %p %ld\n", v17, 30, v18, "AVE_PIP_RetrieveEntry", 33, "CFDictionaryGetTypeID() == CFGetTypeID(pDict)", a1, a2, v19);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        v45 = a2;
        v48 = CFGetTypeID(a1);
      }

      else
      {
        v45 = a2;
        v48 = v19;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %p %ld", v17, 30, v18, "AVE_PIP_RetrieveEntry", 33, "CFDictionaryGetTypeID() == CFGetTypeID(pDict)", a1, v45, v48);
    }

    return 4294965293;
  }

  Value = CFDictionaryGetValue(a1, @"Rectangle");
  if (!Value)
  {
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v21 = AVE_Log_CheckConsole(0x32u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get AVE_kVTCompressionPictureInPictureRegion_Rectangle %p %p\n", v22, 50, v23, "AVE_PIP_RetrieveEntry", 39, "pRect != __null", a1, a2);
        v22 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVE_kVTCompressionPictureInPictureRegion_Rectangle %p %p", v22, 50);
    }

    return 4294966288;
  }

  v6 = Value;
  v7 = CFDictionaryGetTypeID();
  if (v7 != CFGetTypeID(v6))
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v24 = AVE_Log_CheckConsole(0x1Eu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      v27 = CFGetTypeID(v6);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %p %p %ld\n", v25, 30, v26, "AVE_PIP_RetrieveEntry", 44, "CFDictionaryGetTypeID() == CFGetTypeID(pRect)", a1, a2, v6, v27);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        CFGetTypeID(v6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %p %p %ld", v25, 30, v26, "AVE_PIP_RetrieveEntry");
    }

    return 4294965293;
  }

  if (CGRectMakeWithDictionaryRepresentation(v6, &rect))
  {
    *a2 = vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(rect.origin)), vcvtq_s64_f64(vrndaq_f64(rect.size)));
    if (AVE_Log_CheckLevel(0x32u, 8))
    {
      v8 = AVE_Log_CheckConsole(0x32u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(8);
      v11 = a2[2];
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d PIP Rect(%d %d %dx%d)\n", v9, 50, v10, "AVE_PIP_RetrieveEntry", 55, *a2, a2[1], a2[2], a2[3]);
        v9 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
        v12 = *a2;
        v44 = a2[2];
        v47 = a2[3];
        v43 = a2[1];
      }

      else
      {
        v46 = a2[2];
      }

      syslog(3, "%lld %d AVE %s: %s:%d PIP Rect(%d %d %dx%d)", v9, 50);
    }

    SInt32 = AVE_CFDict_GetSInt32(a1, @"BorderTop", a2 + 6);
    if (!SInt32)
    {
      v37 = AVE_CFDict_GetSInt32(a1, @"BorderLeft", a2 + 4);
      if (v37)
      {
        v20 = v37;
        if (!AVE_Log_CheckLevel(0x32u, 4))
        {
          return v20;
        }

        v38 = AVE_Log_CheckConsole(0x32u);
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        if (!v38)
        {
          goto LABEL_62;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v34, 50, v35, "AVE_PIP_RetrieveEntry", 66, "ret == 0", a1, a2, v20);
      }

      else
      {
        v39 = AVE_CFDict_GetSInt32(a1, @"BorderRight", a2 + 5);
        if (v39)
        {
          v20 = v39;
          if (!AVE_Log_CheckLevel(0x32u, 4))
          {
            return v20;
          }

          v40 = AVE_Log_CheckConsole(0x32u);
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          if (!v40)
          {
            goto LABEL_62;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v34, 50, v35, "AVE_PIP_RetrieveEntry", 71, "ret == 0", a1, a2, v20);
        }

        else
        {
          v20 = AVE_CFDict_GetSInt32(a1, @"BorderBottom", a2 + 7);
          if (!v20 || !AVE_Log_CheckLevel(0x32u, 4))
          {
            return v20;
          }

          v41 = AVE_Log_CheckConsole(0x32u);
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          if (!v41)
          {
            goto LABEL_62;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v34, 50, v35, "AVE_PIP_RetrieveEntry", 76, "ret == 0", a1, a2, v20);
        }
      }

      v36 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(4);
      goto LABEL_61;
    }

    v20 = SInt32;
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v33 = AVE_Log_CheckConsole(0x32u);
      v34 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
      if (v33)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v34, 50, v35, "AVE_PIP_RetrieveEntry", 61, "ret == 0", a1, a2, v20);
        v36 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(4);
LABEL_61:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v36, 50, v42);
        return v20;
      }

LABEL_62:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v34, 50, v35);
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v28 = AVE_Log_CheckConsole(0x32u);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get PIP Rect value %p %p\n", v29, 50, v30, "AVE_PIP_RetrieveEntry", 48, "res", a1, a2);
        v29 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get PIP Rect value %p %p", v29, 50);
    }

    return 4294966296;
  }

  return v20;
}

uint64_t AVE_PIP_Print(unsigned int *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = *MEMORY[0x29EDCA608];
  memset(v49, 0, sizeof(v49));
  AVE_ComposePosStr(a4, a5, v49, 32, a5, a6, a7, a8);
  v11 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    v12 = AVE_Log_CheckConsole(a2);
    if (a3 < 0)
    {
      if (!v12 || (-a3 & 0x20) != 0)
      {
        v38 = a1[6];
        v42 = a1[7];
        v30 = a1[4];
        v34 = a1[5];
        v24 = a1[2];
        v27 = a1[3];
        v22 = a1[1];
        syslog(3, "PIP %s | %d %d %d %d | %d %d %d %d", v49, *a1);
      }

      else
      {
        printf("PIP %s | %d %d %d %d | %d %d %d %d\n", v49, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
        v36 = a1[6];
        v40 = a1[7];
        v29 = a1[4];
        v32 = a1[5];
        v23 = a1[2];
        v25 = a1[3];
        v21 = a1[1];
        syslog(3, "PIP %s | %d %d %d %d | %d %d %d %d", v49, *a1);
      }
    }

    else
    {
      v13 = a3 & 0x20;
      v14 = v12 ^ 1;
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v11);
      v17 = a1[6];
      if ((v14 | (v13 >> 5)))
      {
        v46 = a1[6];
        v48 = a1[7];
        v41 = a1[4];
        v44 = a1[5];
        v33 = a1[2];
        v37 = a1[3];
        v26 = *a1;
      }

      else
      {
        printf("%lld %d AVE %s: PIP %s | %d %d %d %d | %d %d %d %d\n", CurrTime, a2, LevelStr, v49, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(v11);
        v18 = *a1;
        v45 = a1[6];
        v47 = a1[7];
        v39 = a1[4];
        v43 = a1[5];
        v31 = a1[2];
        v35 = a1[3];
      }

      v28 = a1[1];
      syslog(3, "%lld %d AVE %s: PIP %s | %d %d %d %d | %d %d %d %d", CurrTime, a2, LevelStr);
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t AVE_PIP_PrintInfo(int *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (*a1 >= 1)
  {
    v13 = 0;
    v14 = (a1 + 1);
    do
    {
      AVE_PIP_Print(v14, a2, a3, a4, a5, a6, a7, a8);
      ++v13;
      v14 += 8;
    }

    while (v13 < *a1);
  }

  return 0;
}

uint64_t AVE_DRL_Print(unsigned int *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = *MEMORY[0x29EDCA608];
  memset(v53, 0, sizeof(v53));
  AVE_ComposePosStr(a4, a5, v53, 32, a5, a6, a7, a8);
  v11 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    v12 = AVE_Log_CheckConsole(a2);
    if (a3 < 0)
    {
      if (!v12 || (-a3 & 0x20) != 0)
      {
        v47 = ((*(a1 + 2) - *(a1 + 2)) * 1000.0);
        v48 = *(a1 + 4);
        v49 = ((*(a1 + 3) - *(a1 + 3)) * 1000.0);
        syslog(3, "DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", v53, a1, *a1);
      }

      else
      {
        v32 = *(a1 + 1);
        v33 = *(a1 + 2);
        v34 = v32;
        v35 = ((v32 - v32) * 1000.0);
        v36 = v33;
        v37 = ((v33 - v33) * 1000.0);
        v38 = *(a1 + 3);
        v39 = *(a1 + 4);
        v40 = v38;
        v41 = v38 - v38;
        if (v35 < 0)
        {
          v35 = -v35;
        }

        if (v37 < 0)
        {
          v37 = -v37;
        }

        v42 = (v41 * 1000.0);
        if (v42 < 0)
        {
          v42 = -v42;
        }

        v43 = ((v39 - v39) * 1000.0);
        if (v43 < 0)
        {
          v43 = -v43;
        }

        printf("DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d\n", v53, a1, *a1, v34, v35, v36, v37, v40, v42, v39, v43);
        v44 = ((*(a1 + 2) - *(a1 + 2)) * 1000.0);
        v45 = *(a1 + 4);
        v46 = ((*(a1 + 3) - *(a1 + 3)) * 1000.0);
        syslog(3, "DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", v53, a1, *a1);
      }
    }

    else
    {
      v13 = a3 & 0x20;
      v14 = v12 ^ 1;
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v11);
      v17 = *(a1 + 1);
      v18 = *(a1 + 2);
      v19 = v17;
      v20 = ((v17 - v17) * 1000.0);
      v21 = v18;
      v22 = ((v18 - v18) * 1000.0);
      v23 = *(a1 + 3);
      v24 = *(a1 + 4);
      v25 = v23;
      v26 = v23 - v23;
      if (v20 < 0)
      {
        v20 = -v20;
      }

      if (v22 < 0)
      {
        v22 = -v22;
      }

      v27 = (v26 * 1000.0);
      if (v27 < 0)
      {
        v27 = -v27;
      }

      v28 = ((v24 - v24) * 1000.0);
      if (v28 < 0)
      {
        v28 = -v28;
      }

      if (((v14 | (v13 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d\n", CurrTime, a2, LevelStr, v53, a1, *a1, v19, v20, v21, v22, v25, v27, v24, v28);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(v11);
        v29 = ((*(a1 + 2) - *(a1 + 2)) * 1000.0);
        v30 = ((*(a1 + 3) - *(a1 + 3)) * 1000.0);
        v31 = ((*(a1 + 4) - *(a1 + 4)) * 1000.0);
        v52 = *a1;
      }

      syslog(3, "%lld %d AVE %s: DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", CurrTime, a2, LevelStr, v53);
    }
  }

  v50 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t AVE_Enc_Preset_Find_Bitrate(int a1, int a2, int *a3)
{
  if (a3)
  {
    v5 = a2 * a1;
    if (a2 * a1 >= 1)
    {
      v6 = a2 * a1;
    }

    else
    {
      v6 = 2073600;
    }

    if (v5 < 0)
    {
      v12 = 0;
      v11 = 0;
      v8 = 0;
      LODWORD(v9) = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = &dword_2954ED9A8;
      while (1)
      {
        v11 = v7;
        v12 = *(v10 - 1);
        if (v5 == v7)
        {
          v8 = *(v10 - 1);
        }

        if (v9 == 6)
        {
          break;
        }

        v13 = *v10;
        v10 += 2;
        v7 = v13;
        ++v9;
        if (v5 < v13)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v9) = 7;
    }

LABEL_18:
    if (v12 < 1)
    {
      v12 = 0;
    }

    else
    {
      if (v9 >= 6)
      {
        LODWORD(v9) = 6;
      }

      if (!v8)
      {
        v8 = gsc_saAVE_Enc_Preset_Set[2 * v9 + 1];
      }

      v17 = __OFSUB__(v8, v12);
      v18 = v8 - v12;
      if (!((v18 < 0) ^ v17 | (v18 == 0)))
      {
        v12 = ((v6 - v11) * v18 / (gsc_saAVE_Enc_Preset_Set[2 * v9] - v11) + v12);
      }
    }

    result = 0;
    *a3 = v12;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v14 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p\n", CurrTime, 30, LevelStr, "AVE_Enc_Preset_Find_Bitrate", 85, "pBitrate != __null", a1, a2, 0);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p", CurrTime, 30);
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Enc_CreateOnePresetDict(const void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, int a7, int a8, int *a9, __CFDictionary *a10)
{
  if (a9)
  {
    v15 = a6 < 1;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && a1 != 0 && a5 != 0 && a10 != 0)
  {
    if (*a9 < 1)
    {
      return 0;
    }

    v20 = 0;
    v21 = a8;
    for (i = (a9 + 12); ; i += 4)
    {
      v23 = *(i - 2);
      if (!AVE_Prop_FindPropertyEntry(a5, a6, a3, a7 | 0x30000u, a1, a2, v23))
      {
        Str = AVE_CFStr_GetStr(v23, 0, 0);
        if (AVE_Log_CheckLevel(0x1Eu, 5))
        {
          v37 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(5);
          if (!Str)
          {
            Str = &unk_2954B8F4E;
          }

          if (v37)
          {
            printf("%lld %d AVE %s: %s:%d fail to find property entry %p %lld %d %p %p %d 0x%x %d %p %p %p %s %d\n", CurrTime, 30, LevelStr, "AVE_Enc_CreateOnePresetDict", 182, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v23, Str, v20);
            v39 = AVE_GetCurrTime();
            v36 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: %s:%d fail to find property entry %p %lld %d %p %p %d 0x%x %d %p %p %p %s %d", v39, 30, v36, "AVE_Enc_CreateOnePresetDict", 182, a1, a2, a3, a4, a5, a6);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d fail to find property entry %p %lld %d %p %p %d 0x%x %d %p %p %p %s %d", CurrTime, 30, LevelStr, "AVE_Enc_CreateOnePresetDict", 182, a1, a2, a3, a4, a5, a6);
          }
        }

        return 4294966288;
      }

      v24 = *(i - 2);
      if (v24 <= 2)
      {
        if (v24 == 1)
        {
          AVE_CFDict_AddBool(v23, *i != 0, a10);
          goto LABEL_30;
        }

        if (v24 == 2)
        {
          v27 = *i;
          goto LABEL_27;
        }
      }

      else
      {
        switch(v24)
        {
          case 3:
            AVE_CFDict_AddDouble(v23, *i, a10);
            break;
          case 5:
            v27 = *i * v21;
LABEL_27:
            v26 = v27;
            v25 = v23;
LABEL_28:
            AVE_CFDict_AddSInt32(v25, v26, a10);
            break;
          case 4:
            v25 = v23;
            v26 = a8;
            goto LABEL_28;
        }
      }

LABEL_30:
      if (++v20 >= *a9)
      {
        return 0;
      }
    }
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v29 = AVE_Log_CheckConsole(0x1Eu);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(4);
    if (v29)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %p %p\n", v30, 30, v31, "AVE_Enc_CreateOnePresetDict", 169, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0 && pPreset != __null", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      v32 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %p %p", v32, 30, v35, "AVE_Enc_CreateOnePresetDict", 169, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0 && pPreset != __null", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %p %p", v30, 30, v31, "AVE_Enc_CreateOnePresetDict", 169, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0 && pPreset != __null", a1, a2, a3);
    }
  }

  return 4294966295;
}

uint64_t AVE_Enc_CreatePresetDict(const void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, int a7, int a8, int a9, void *a10)
{
  v14 = a1;
  v15 = a10;
  v71[0] = 0;
  if (a6 >= 1 && a1 && a5 && a10)
  {
    Bitrate = AVE_Enc_Preset_Find_Bitrate(a8, a9, v71);
    v66 = a2;
    if (Bitrate)
    {
      v17 = Bitrate;
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find bitrate %p %lld %d %p %p %d 0x%x %d %d %p %d %d\n", CurrTime, 30, LevelStr, "AVE_Enc_CreatePresetDict", 259, "ret == 0", v14, v66, a3, a4, a5, a6, a7, a8, a9, a10, v71[0], v17);
          v21 = AVE_GetCurrTime();
          v57 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find bitrate %p %lld %d %p %p %d 0x%x %d %d %p %d %d", v21, 30, v57, "AVE_Enc_CreatePresetDict", 259, "ret == 0", v14, v66, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find bitrate %p %lld %d %p %p %d 0x%x %d %d %p %d %d", CurrTime, 30, LevelStr, "AVE_Enc_CreatePresetDict", 259, "ret == 0", v14, v66, a3);
        }
      }
    }

    else
    {
      v26 = 0;
      v67 = 0;
      v27 = &gsc_saEnc_Preset_Set;
      v64 = a4;
      while (1)
      {
        Mutable = CFDictionaryCreateMutable(a4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (!Mutable)
        {
          break;
        }

        v29 = Mutable;
        v30 = *v27;
        if (*v27 >= 11)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v48 = AVE_Log_CheckConsole(0x1Eu);
            v49 = AVE_GetCurrTime();
            v50 = AVE_Log_GetLevelStr(4);
            if (v48)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to initial preset init table %p %lld %d %p %p %d 0x%x %d %p %d %d\n", v49, 30, v50, "AVE_Enc_CreatePresetDict", 275, "gsc_saEnc_Preset_Set[i].iNum <= 10", v14, v66, a3, a4, a5, a6, a7, v71[0], v15, v26, v30);
              v51 = AVE_GetCurrTime();
              v60 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initial preset init table %p %lld %d %p %p %d 0x%x %d %p %d %d", v51, 30, v60, "AVE_Enc_CreatePresetDict", 275, "gsc_saEnc_Preset_Set[i].iNum <= 10", v14, v66, a3);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initial preset init table %p %lld %d %p %p %d 0x%x %d %p %d %d", v49, 30, v50, "AVE_Enc_CreatePresetDict", 275, "gsc_saEnc_Preset_Set[i].iNum <= 10", v14, v66, a3);
            }
          }

          CFRelease(v29);
          return 4294966295;
        }

        v31 = *(v27 + 2);
        if (AVE_Enc_CreateOnePresetDict(v14, a2, a3, a4, a5, a6, a7, v71[0], v27, Mutable))
        {
          ++v67;
          if (AVE_Log_CheckLevel(0x1Eu, 5))
          {
            v32 = v14;
            v33 = AVE_Log_CheckConsole(0x1Eu);
            v65 = AVE_GetCurrTime();
            v34 = AVE_Log_GetLevelStr(5);
            v35 = *(v27 + 1);
            if (v33)
            {
              v36 = v15;
              v62 = v15;
              a2 = v66;
              v37 = v32;
              printf("%lld %d AVE %s: %s:%d fail to create preset %p %lld %d %p %p %d 0x%x %d %p %p %d %p %s\n", v65, 30, v34, "AVE_Enc_CreatePresetDict", 291, v32, v66, a3, v64, a5, a6, a7, v71[0], v62, v29, v26, v31, v35);
              v38 = AVE_GetCurrTime();
              v39 = AVE_Log_GetLevelStr(5);
              v63 = v35;
              v14 = v37;
              v15 = v36;
              a4 = v64;
              syslog(3, "%lld %d AVE %s: %s:%d fail to create preset %p %lld %d %p %p %d 0x%x %d %p %p %d %p %s", v38, 30, v39, "AVE_Enc_CreatePresetDict", 291, v14, v66, a3, v64, a5, a6, a7, v71[0], v15, v29, v26, v31, v63);
            }

            else
            {
              a2 = v66;
              v14 = v32;
              syslog(3, "%lld %d AVE %s: %s:%d fail to create preset %p %lld %d %p %p %d 0x%x %d %p %p %d %p %s", v65, 30, v34, "AVE_Enc_CreatePresetDict", 291, v32, v66, a3, a4, a5, a6, a7, v71[0], v15, v29, v26, v31, *(v27 + 1));
            }
          }
        }

        else
        {
          CFDictionarySetValue(v15, v31, v29);
        }

        CFRelease(v29);
        ++v26;
        v27 += 86;
        if (v26 == 3)
        {
          if (v67 >= 3)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v52 = AVE_Log_CheckConsole(0x1Eu);
              v53 = AVE_GetCurrTime();
              v54 = AVE_Log_GetLevelStr(4);
              if (v52)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to create preset dict %p %lld %d %p %p %d 0x%x %d %p %d %d %d\n", v53, 30, v54, "AVE_Enc_CreatePresetDict", 304, "iSkippedNum < iNum", v14, v66, a3, a4, a5, a6, a7, v71[0], v15, v67, 3, 0);
                v55 = AVE_GetCurrTime();
                v61 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dict %p %lld %d %p %p %d 0x%x %d %p %d %d %d", v55, 30, v61, "AVE_Enc_CreatePresetDict", 304, "iSkippedNum < iNum", v14, v66, a3, a4);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dict %p %lld %d %p %p %d 0x%x %d %p %d %d %d", v53, 30, v54, "AVE_Enc_CreatePresetDict", 304, "iSkippedNum < iNum", v14, v66, a3, a4);
              }
            }

            return 4294966296;
          }

          else
          {
            if (AVE_Log_CheckLevel(0x1Eu, 7))
            {
              v40 = AVE_Log_CheckConsole(0x1Eu);
              v41 = AVE_GetCurrTime();
              v42 = AVE_Log_GetLevelStr(7);
              if (v40)
              {
                printf("%lld %d AVE %s: %p %lld Create Preset Dictionary: %p %d %d\n", v41, 30, v42, v14, v66, v15, 3, v67);
                v43 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %p %lld Create Preset Dictionary: %p %d %d", v43);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %p %lld Create Preset Dictionary: %p %d %d", v41);
              }
            }

            return 0;
          }
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v44 = AVE_Log_CheckConsole(0x1Eu);
        v45 = AVE_GetCurrTime();
        v46 = AVE_Log_GetLevelStr(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create Preset Dictionary %p %lld %d %p %p %d 0x%x %d %p %d\n", v45, 30, v46, "AVE_Enc_CreatePresetDict", 267, "pTmpDict != __null", v14, v66, a3, a4, a5, a6, a7, v71[0], v15, v26);
          v47 = AVE_GetCurrTime();
          v59 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create Preset Dictionary %p %lld %d %p %p %d 0x%x %d %p %d", v47, 30, v59, "AVE_Enc_CreatePresetDict", 267, "pTmpDict != __null", v14, v66, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create Preset Dictionary %p %lld %d %p %p %d 0x%x %d %p %d", v45, 30, v46, "AVE_Enc_CreatePresetDict", 267, "pTmpDict != __null", v14, v66, a3);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v22 = AVE_Log_CheckConsole(0x1Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %d %p\n", v23, 30, v24, "AVE_Enc_CreatePresetDict", 250, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0", v14, a2, a3, a4, a5, a6, a7, a8, a9, a10);
        v25 = AVE_GetCurrTime();
        v58 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %d %p", v25, 30, v58, "AVE_Enc_CreatePresetDict", 250, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0", v14, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %d %p", v23, 30, v24, "AVE_Enc_CreatePresetDict", 250, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0", v14, a2);
      }
    }

    return 4294966295;
  }

  return v17;
}

_BYTE *AVE_FwStats_PrintDiff(_BYTE *result, char *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result && a2)
  {
    if (a3)
    {
      v10 = a4;
      v11 = result;
      v12 = *a3;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], a4 - v12, "%lld,", a4, a5, a6, a7, a8, result[8] - *result) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v13, v14, v15, v16, v17, v11[520] - v11[16]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v18, v19, v20, v21, v22, v11[24] - v11[16]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v23, v24, v25, v26, v27, v11[40] - v11[24]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v28, v29, v30, v31, v32, v11[240] - v11[32]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v33, v34, v35, v36, v37, v11[464] - v11[248]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v38, v39, v40, v41, v42, v11[208] - v11[192]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v43, v44, v45, v46, v47, v11[408] - v11[200]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v48, v49, v50, v51, v52, v11[496] - v11[416]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v53, v54, v55, v56, v57, v11[232] - v11[216]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v58, v59, v60, v61, v62, v11[432] - v11[224]) + v12;
      result = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v63, v64, v65, v66, v67, v11[512] - v11[440]);
      *a3 = result + v12;
    }
  }

  return result;
}

uint64_t AVE_FwStats_PrintSet(uint64_t result, char *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result && a2 && a3)
  {
    v10 = a4;
    v11 = result;
    v12 = 0;
    v13 = *a3;
    do
    {
      result = AVE_SNPrintf(&a2[v13], v10 - v13, "%lld,", a4, a5, a6, a7, a8, *(v11 + v12));
      v13 = *a3 + result;
      *a3 = v13;
      v12 += 8;
    }

    while (v12 != 544);
  }

  return result;
}

void AVE_PixelBuf_AppendAttr_PixelFmtByProfile()
{
  v0 = 0;
  AVE_PixelFmt_GetNumOfTypes();
  operator new[]();
}

uint64_t AVE_PixelBuf_AppendAttr_IOSurface(int a1, int *a2, __CFDictionary *a3)
{
  v5 = AVE_PixelFmt_FindByType(a1);
  if (!v5)
  {
    return 4294966296;
  }

  if ((*(v5 + 6) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v7 = MEMORY[0x29EDB9010];
  v8 = MEMORY[0x29EDB9020];
  v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v10 = CFDictionaryCreateMutable(0, 0, v7, v8);
  v11 = v10;
  if (Mutable)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && v10 != 0)
  {
    v19 = *MEMORY[0x29EDBB188];
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB188], 1, v9);
    AVE_CFDict_AddSInt32(v19, 1, v11);
    v20 = MEMORY[0x29EDBB190];
    if (*a2 >= 1)
    {
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB190], *a2, v9);
    }

    v21 = a2[2];
    v22 = MEMORY[0x29EDBB198];
    if (v21 >= 1)
    {
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB198], v21, v9);
    }

    v23 = a2[4];
    if (v23 >= 1)
    {
      AVE_CFDict_AddSInt32(*v20, v23, v11);
    }

    v24 = a2[6];
    if (v24 >= 1)
    {
      AVE_CFDict_AddSInt32(*v22, v24, v11);
    }

    CFArrayAppendValue(Mutable, v9);
    CFArrayAppendValue(Mutable, v11);
    CFDictionarySetValue(a3, *MEMORY[0x29EDB9758], Mutable);
    CFRelease(v9);
    CFRelease(v11);
    CFRelease(Mutable);
    return 0;
  }

  if (AVE_Log_CheckLevel(0x3Fu, 4))
  {
    v14 = AVE_Log_CheckConsole(0x3Fu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_AppendAttr_IOSurface", 211, "pArray != __null && pDict0 != __null && pDict1 != __null", Mutable, v9, v11);
      v17 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p", v17, 63, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p", CurrTime, 63, LevelStr);
    }
  }

  return 4294966293;
}

uint64_t AVE_PixelBuf_CreateAttrDictFromProfile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10)
{
  AVE_DevID2Type(a1);
  if (CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]))
  {
    if (CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]))
    {
      AVE_PixelBuf_AppendAttr_PixelFmtByProfile();
    }

    if (AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x3Fu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d %d\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreateAttrDictFromProfile", 304, "pTempArray != __null", a1, a2, a3, a4, a5, a10, 0);
        v20 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d %d", v20, 63, v24, "AVE_PixelBuf_CreateAttrDictFromProfile");
        return 4294966293;
      }

      v32 = a5;
      v33 = a10;
      v30 = a3;
      v31 = a4;
      v28 = a1;
      v29 = a2;
      v26 = 304;
      v27 = "pTempArray != __null";
      v25 = LevelStr;
      v21 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d %d";
LABEL_12:
      syslog(3, v21, CurrTime, 63, v25, "AVE_PixelBuf_CreateAttrDictFromProfile", v26, v27, v28, v29, v30, v31, v32, v33, 0);
    }
  }

  else if (AVE_Log_CheckLevel(0x3Fu, 4))
  {
    v14 = AVE_Log_CheckConsole(0x3Fu);
    CurrTime = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(4);
    if (!v14)
    {
      v32 = a5;
      v33 = a10;
      v30 = a3;
      v31 = a4;
      v28 = a1;
      v29 = a2;
      v26 = 298;
      v27 = "pDict != __null";
      v25 = v16;
      v21 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d %d";
      goto LABEL_12;
    }

    printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d %d\n", CurrTime, 63, v16, "AVE_PixelBuf_CreateAttrDictFromProfile", 298, "pDict != __null", a1, a2, a3, a4, a5, a10, 0);
    v17 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d %d", v17, 63, v23, "AVE_PixelBuf_CreateAttrDictFromProfile");
  }

  return 4294966293;
}

uint64_t AVE_PixelBuf_CreateAttrDict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  AVE_DevID2Type(a1);
  if (CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]))
  {
    if (CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]))
    {
      AVE_PixelBuf_AppendAttr_PixelFmt();
    }

    if (AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x3Fu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreateAttrDict", 435, "pTempArray != __null", a1, a2, a3, a4, a9, 0);
        v19 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d", v19, 63, v23);
        return 4294966293;
      }

      v31 = a9;
      v29 = a3;
      v30 = a4;
      v27 = a1;
      v28 = a2;
      v25 = 435;
      v26 = "pTempArray != __null";
      v24 = LevelStr;
      v20 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d";
LABEL_12:
      syslog(3, v20, CurrTime, 63, v24, "AVE_PixelBuf_CreateAttrDict", v25, v26, v27, v28, v29, v30, v31, 0);
    }
  }

  else if (AVE_Log_CheckLevel(0x3Fu, 4))
  {
    v13 = AVE_Log_CheckConsole(0x3Fu);
    CurrTime = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    if (!v13)
    {
      v31 = a9;
      v29 = a3;
      v30 = a4;
      v27 = a1;
      v28 = a2;
      v25 = 429;
      v26 = "pDict != __null";
      v24 = v15;
      v20 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d";
      goto LABEL_12;
    }

    printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d\n", CurrTime, 63, v15, "AVE_PixelBuf_CreateAttrDict", 429, "pDict != __null", a1, a2, a3, a4, a9, 0);
    v16 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d", v16, 63, v22);
  }

  return 4294966293;
}

uint64_t AVE_PixelBuf_CreatePool(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int a9, CVPixelBufferPoolRef *poolOut)
{
  v38 = *MEMORY[0x29EDCA608];
  pixelBufferAttributes = 0;
  v36 = 0u;
  v37 = 0u;
  v33 = a8;
  v34 = a7;
  AVE_Enc_AlignDimension(a1, a2, a4, &v34, &v33);
  AttrDict = AVE_PixelBuf_CreateAttrDict(a1, a2, a3, a4, a5, a6, v34, v33, a9);
  if (AttrDict)
  {
    v19 = AttrDict;
    if (AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x3Fu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreatePool", 557, "ret == 0", a1, a2, a3, a4, a7, a8, a9, v19);
        v23 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d", v23, 63, v31, "AVE_PixelBuf_CreatePool");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreatePool");
      }
    }
  }

  else
  {
    v24 = pixelBufferAttributes;
    v19 = CVPixelBufferPoolCreate(0, 0, pixelBufferAttributes, poolOut);
    if (!v19)
    {
      goto LABEL_15;
    }

    if (!AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v19 = 4294966296;
      goto LABEL_15;
    }

    v25 = AVE_Log_CheckConsole(0x3Fu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(4);
    if (v25)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d\n", v26, 63, v27, "AVE_PixelBuf_CreatePool", 562, "res == kCVReturnSuccess", a1, a2, a3, a4, a7, a8, a9, v19, 0);
      v28 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d", v28, 63, v32, "AVE_PixelBuf_CreatePool", 562);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d", v26, 63, v27, "AVE_PixelBuf_CreatePool", 562);
    }

    v19 = 4294966296;
  }

  v24 = pixelBufferAttributes;
LABEL_15:
  if (v24)
  {
    CFRelease(v24);
  }

  v29 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t AVE_PixelBuf_CreateSurfacePool(uint64_t a1, __CVPixelBufferPool **a2, __CVPixelBufferPool **a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDB96F0], a2, Mutable);
    if (v8)
    {
      v9 = v8;
      if (AVE_Log_CheckLevel(0x3Fu, 4))
      {
        v10 = AVE_Log_CheckConsole(0x3Fu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreateSurfacePool", 603, "ret == 0", a2, a1, a2, a3, v9);
          v13 = AVE_GetCurrTime();
          v76 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d", v13, 63, v76, "AVE_PixelBuf_CreateSurfacePool");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreateSurfacePool");
        }
      }

LABEL_39:
      v48 = v7;
LABEL_56:
      CFRelease(v48);
      return v9;
    }

    v18 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!v18)
    {
      if (AVE_Log_CheckLevel(0x3Fu, 4))
      {
        v28 = AVE_Log_CheckConsole(0x3Fu);
        v29 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v29, 63, v30, "AVE_PixelBuf_CreateSurfacePool", 610, "pDictBufAttr != __null", a1, a2, a3, 0);
          v31 = AVE_GetCurrTime();
          v78 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v31, 63, v78);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v29, 63, v30);
        }
      }

      v9 = 4294966293;
      goto LABEL_39;
    }

    v19 = v18;
    v20 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (v20)
    {
      v21 = v20;
      v22 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB128], a1, v20);
      if (v22)
      {
        v9 = v22;
        if (AVE_Log_CheckLevel(0x3Fu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x3Fu);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d\n", v24, 63, v25, "AVE_PixelBuf_CreateSurfacePool", 620, "ret == 0", a1, a1, a2, a3, v9);
            v26 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d", v26, 63, v27, "AVE_PixelBuf_CreateSurfacePool");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d", v24, 63, v25, "AVE_PixelBuf_CreateSurfacePool");
          }
        }

        CFRelease(v21);
        goto LABEL_55;
      }

      CFDictionaryAddValue(v19, *MEMORY[0x29EDB96D0], v21);
      CFRelease(v21);
      v38 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      if (v38)
      {
        v39 = v38;
        v40 = 0;
        do
        {
          v41 = AVE_CFArray_AddSInt32(AVE_PixelBuf_AppendAttr_CacheMode(__CFArray *)::s_iaCacheMode[v40], v39);
          if (v41)
          {
            v42 = 1;
          }

          else
          {
            v42 = v40 == 5;
          }

          ++v40;
        }

        while (!v42);
        v43 = v41;
        if (v41)
        {
          if (AVE_Log_CheckLevel(0x3Fu, 4))
          {
            v44 = AVE_Log_CheckConsole(0x3Fu);
            v45 = AVE_GetCurrTime();
            v46 = AVE_Log_GetLevelStr(4);
            if (v44)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d\n", v45, 63, v46, "AVE_PixelBuf_CreateSurfacePool", 632, "ret == 0", a1, a2, a3, v43);
              v47 = AVE_GetCurrTime();
              v80 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d", v47, 63, v80);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d", v45, 63, v46);
            }
          }

          CFRelease(v39);
          goto LABEL_54;
        }

        CFDictionaryAddValue(v19, *MEMORY[0x29EDB96A0], v39);
        CFRelease(v39);
        v53 = AVE_CFDict_AddBool(*MEMORY[0x29EDB96D8], *MEMORY[0x29EDB8F00] != 0, v19);
        if (v53)
        {
          v54 = v53;
          if (!AVE_Log_CheckLevel(0x3Fu, 4))
          {
            goto LABEL_54;
          }

          v55 = AVE_Log_CheckConsole(0x3Fu);
          v56 = AVE_GetCurrTime();
          v57 = AVE_Log_GetLevelStr(4);
          if (!v55)
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d", v56, 63, v57, "AVE_PixelBuf_CreateSurfacePool");
            goto LABEL_54;
          }

          v58 = a1;
          printf("%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d\n", v56, 63, v57, "AVE_PixelBuf_CreateSurfacePool", 642, "ret == 0", 1, a1, a2, a3, v54);
          v36 = AVE_GetCurrTime();
          v103 = a3;
          v106 = v54;
          v95 = v58;
          v99 = a2;
          v91 = 1;
          v85 = 642;
          v89 = "ret == 0";
          v79 = AVE_Log_GetLevelStr(4);
          v37 = "%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d";
          goto LABEL_25;
        }

        v60 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDB9750], 2, v19);
        v9 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDB96C8], 2, v19) + v60;
        if (v9)
        {
          if (!AVE_Log_CheckLevel(0x3Fu, 4))
          {
            goto LABEL_55;
          }

          v61 = AVE_Log_CheckConsole(0x3Fu);
          v62 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(4);
          if (v61)
          {
            v64 = a1;
            printf("%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d\n", v62, 63, v63, "AVE_PixelBuf_CreateSurfacePool", 649, "ret == 0", 2, 2, a1, a2, a3, v9);
            v65 = AVE_GetCurrTime();
            v107 = a3;
            v109 = v9;
            v101 = v64;
            v104 = a2;
            v93 = 2;
            v97 = 2;
            v87 = 649;
            v82 = AVE_Log_GetLevelStr(4);
            v66 = "%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d";
LABEL_68:
            syslog(3, v66, v65, 63, v82, "AVE_PixelBuf_CreateSurfacePool", v87, "ret == 0", v93, v97, v101, v104, v107, v109);
            goto LABEL_55;
          }

          v108 = a3;
          v109 = v9;
          v102 = a1;
          v105 = a2;
          v94 = 2;
          v98 = 2;
          v88 = 649;
          v83 = v63;
          v71 = "%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d";
        }

        else
        {
          v67 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDB96E0], 875704422, v19);
          if (!v67)
          {
            v9 = CVPixelBufferPoolCreate(0, v7, v19, a3);
            if (v9)
            {
              if (AVE_Log_CheckLevel(0x3Fu, 4))
              {
                v72 = AVE_Log_CheckConsole(0x3Fu);
                v73 = AVE_GetCurrTime();
                v74 = AVE_Log_GetLevelStr(4);
                if (v72)
                {
                  printf("%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d\n", v73, 63, v74, "AVE_PixelBuf_CreateSurfacePool", 658, "ret == kCVReturnSuccess", a1, a2, a3, v9);
                  v75 = AVE_GetCurrTime();
                  v84 = AVE_Log_GetLevelStr(4);
                  syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d", v75, 63, v84);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d", v73, 63, v74);
                }
              }

              v9 = 4294966296;
            }

            goto LABEL_55;
          }

          v9 = v67;
          if (!AVE_Log_CheckLevel(0x3Fu, 4))
          {
LABEL_55:
            CFRelease(v7);
            v48 = v19;
            goto LABEL_56;
          }

          v68 = AVE_Log_CheckConsole(0x3Fu);
          v62 = AVE_GetCurrTime();
          v69 = AVE_Log_GetLevelStr(4);
          if (v68)
          {
            v70 = a1;
            printf("%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d\n", v62, 63, v69, "AVE_PixelBuf_CreateSurfacePool", 653, "ret == 0", 875704422, a1, a2, a3, v9);
            v65 = AVE_GetCurrTime();
            v104 = a3;
            v107 = v9;
            v97 = v70;
            v101 = a2;
            v93 = 875704422;
            v87 = 653;
            v82 = AVE_Log_GetLevelStr(4);
            v66 = "%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d";
            goto LABEL_68;
          }

          v105 = a3;
          v108 = v9;
          v98 = a1;
          v102 = a2;
          v94 = 875704422;
          v88 = 653;
          v83 = v69;
          v71 = "%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d";
        }

        syslog(3, v71, v62, 63, v83, "AVE_PixelBuf_CreateSurfacePool", v88, "ret == 0", v94, v98, v102, v105, v108, v109);
        goto LABEL_55;
      }

      if (!AVE_Log_CheckLevel(0x3Fu, 4))
      {
        goto LABEL_54;
      }

      v50 = AVE_Log_CheckConsole(0x3Fu);
      v33 = AVE_GetCurrTime();
      v51 = AVE_Log_GetLevelStr(4);
      if (v50)
      {
        v52 = a1;
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d\n", v33, 63, v51, "AVE_PixelBuf_CreateSurfacePool", 629, "pTempArray != __null", a1, a2, a3, 0);
        v36 = AVE_GetCurrTime();
        v99 = a3;
        v103 = 0;
        v91 = v52;
        v95 = a2;
        v85 = 629;
        v89 = "pTempArray != __null";
        v79 = AVE_Log_GetLevelStr(4);
        v37 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d";
        goto LABEL_25;
      }

      v100 = a3;
      v92 = a1;
      v96 = a2;
      v86 = 629;
      v90 = "pTempArray != __null";
      v81 = v51;
      v49 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d";
    }

    else
    {
      if (!AVE_Log_CheckLevel(0x3Fu, 4))
      {
LABEL_54:
        v9 = 4294966293;
        goto LABEL_55;
      }

      v32 = AVE_Log_CheckConsole(0x3Fu);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        v35 = a1;
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v33, 63, v34, "AVE_PixelBuf_CreateSurfacePool", 615, "pTempDict != __null", a1, a2, a3, 0);
        v36 = AVE_GetCurrTime();
        v99 = a3;
        v103 = 0;
        v91 = v35;
        v95 = a2;
        v85 = 615;
        v89 = "pTempDict != __null";
        v79 = AVE_Log_GetLevelStr(4);
        v37 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d";
LABEL_25:
        syslog(3, v37, v36, 63, v79, "AVE_PixelBuf_CreateSurfacePool", v85, v89, v91, v95, v99, v103, v106);
        goto LABEL_54;
      }

      v100 = a3;
      v92 = a1;
      v96 = a2;
      v86 = 615;
      v90 = "pTempDict != __null";
      v81 = v34;
      v49 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d";
    }

    syslog(3, v49, v33, 63, v81, "AVE_PixelBuf_CreateSurfacePool", v86, v90, v92, v96, v100, 0);
    goto LABEL_54;
  }

  if (AVE_Log_CheckLevel(0x3Fu, 4))
  {
    v14 = AVE_Log_CheckConsole(0x3Fu);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v15, 63, v16, "AVE_PixelBuf_CreateSurfacePool", 598, "pDictPoolAttr != __null", a1, a2, a3, 0);
      v17 = AVE_GetCurrTime();
      v77 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v17, 63, v77);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v15, 63, v16);
    }
  }

  return 4294966293;
}

uint64_t AVE_PixelBuf_Copy(__CVBuffer *a1, __CVBuffer *a2)
{
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  if (PlaneCount >= 1)
  {
    v5 = 0;
    v6 = PlaneCount & 0x7FFFFFFF;
    do
    {
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, v5);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v5);
      v9 = CVPixelBufferGetBaseAddressOfPlane(a2, v5);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v5);
      v11 = CVPixelBufferGetBytesPerRowOfPlane(a2, v5);
      if (HeightOfPlane >= 1)
      {
        if (BytesPerRowOfPlane >= v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = BytesPerRowOfPlane;
        }

        v13 = v12;
        v14 = v11;
        do
        {
          memcpy(v9, BaseAddressOfPlane, v13);
          BaseAddressOfPlane += BytesPerRowOfPlane;
          v9 += v14;
          --HeightOfPlane;
        }

        while (HeightOfPlane);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return 0;
}

uint64_t AVE_PixelBuf_DumpLinear(__CVBuffer *a1, _DWORD *a2, FILE *a3)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
  v24 = a2[1];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  v7 = extraColumnsOnRight;
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v9 = extraRowsOnBottom + HeightOfPlane;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  if (a2[3])
  {
    v11 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    v21 = WidthOfPlane;
    v12 = v7;
    v13 = (extraColumnsOnRight >> (a2[4] >> 1)) + v11;
    v14 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    v15 = (extraRowsOnBottom >> (a2[5] >> 1)) + v14;
    LODWORD(v17) = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    v16 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
    v22 = 2 * v13;
    v7 = v12;
    WidthOfPlane = v21;
    v17 = v17;
  }

  else
  {
    v22 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
  }

  if (v9 >= 1)
  {
    v18 = (v7 + WidthOfPlane) << (v24 == 10);
    do
    {
      fwrite(BaseAddressOfPlane, 1uLL, v18, a3);
      BaseAddressOfPlane += BytesPerRowOfPlane;
      --v9;
    }

    while (v9);
  }

  if (a2[3])
  {
    v19 = v15 < 1;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    do
    {
      fwrite(v16, 1uLL, v22 << (v24 == 10), a3);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 0;
}

uint64_t AVE_PixelBuf_DumpPacked(__CVBuffer *a1, _DWORD *a2, const void *a3)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
  v6 = a2[1];
  v8 = v6 + 7;
  v7 = v6 < -7;
  v9 = v6 + 14;
  if (!v7)
  {
    v9 = v8;
  }

  v10 = v9 >> 3;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  v12 = extraColumnsOnRight + WidthOfPlane;
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v14 = extraRowsOnBottom + HeightOfPlane;
  CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  if (a2[3])
  {
    v15 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    v16 = (extraColumnsOnRight >> (a2[4] >> 1)) + v15;
    v17 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    v18 = (extraRowsOnBottom >> (a2[5] >> 1)) + v17;
    CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  if (v12 * v10 * v14 + 2 * v10 * v16 * v18)
  {
    operator new[]();
  }

  if (AVE_Log_CheckLevel(0x3Fu, 4))
  {
    v19 = AVE_Log_CheckConsole(0x3Fu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v19)
    {
      printf("%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_DumpPacked", 862, "frameSize != 0", a1, a2, a3);
      v22 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p", v22, 63, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p", CurrTime, 63, LevelStr);
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 4294966295;
}

void AVE_PixelBuf_DumpHTPC(__CVBuffer *a1, _DWORD *a2)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
  v4 = a2[1];
  v6 = v4 + 7;
  v5 = v4 < -7;
  v7 = v4 + 14;
  if (!v5)
  {
    v7 = v6;
  }

  v8 = v7 >> 3;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  IOSurfaceGetBytesPerRowOfCompressedTileHeaderGroupsOfPlane();
  IOSurfaceGetHTPCVerticalHeaderGroupingModeOfPlane();
  IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v11 = extraColumnsOnRight + WidthOfPlane;
  if (a2[3])
  {
    v12 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    v13 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    IOSurfaceGetBytesPerRowOfCompressedTileHeaderGroupsOfPlane();
    IOSurfaceGetHTPCVerticalHeaderGroupingModeOfPlane();
    IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
    IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
    v14 = extraColumnsOnRight >> (a2[4] >> 1);
    v11 = extraColumnsOnRight + WidthOfPlane;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = extraColumnsOnRight >> (a2[4] >> 1);
  }

  v15 = ((extraRowsOnBottom + HeightOfPlane) * v11 + 2 * (v14 + v12) * ((extraRowsOnBottom >> (a2[5] >> 1)) + v13)) * v8;
  operator new[]();
}

void AVE_PixelBuf_DumpInterchange(__CVBuffer *a1, _DWORD *a2)
{
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraColumnsOnRight[0] = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  v4 = a2[1] + 7;
  v8 = a2[8];
  CVPixelBufferGetWidthOfPlane(a1, 0);
  CVPixelBufferGetHeightOfPlane(a1, 0);
  IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  IOSurfaceGetHorizontalPixelOffsetWithinCompressedTileArrayOfPlane();
  IOSurfaceGetVerticalPixelOffsetWithinCompressedTileArrayOfPlane();
  if (a2[3])
  {
    CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
    IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
    IOSurfaceGetHorizontalPixelOffsetWithinCompressedTileArrayOfPlane();
    VerticalPixelOffsetWithinCompressedTileArrayOfPlane = IOSurfaceGetVerticalPixelOffsetWithinCompressedTileArrayOfPlane();
    v6 = a2[4] >> 1;
    v7 = VerticalPixelOffsetWithinCompressedTileArrayOfPlane | ((extraRowsOnBottom >> (a2[5] >> 1)) << 32);
  }

  operator new[]();
}

uint64_t AVE_PixelBuf_Dump(CVPixelBufferRef pixelBuffer, int a2, __sFILE *a3)
{
  if (pixelBuffer && a3)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v7 = AVE_PixelFmt_FindByType(PixelFormatType);
    if (v7)
    {
      v8 = v7;
      v9 = *(v7 + 6);
      result = 4294966295;
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          AVE_PixelBuf_DumpHTPC(pixelBuffer, v8);
        }

        if (v9 == 3)
        {
          AVE_PixelBuf_DumpInterchange(pixelBuffer, v8);
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {

          return AVE_PixelBuf_DumpPacked(pixelBuffer, v8, a3);
        }
      }

      else
      {
        AVE_PixelBuf_DumpLinear(pixelBuffer, v8, a3);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x3Fu, 4))
      {
        v15 = AVE_Log_CheckConsole(0x3Fu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_Dump", 1120, "pPixelFmt != __null", pixelBuffer, a2, a3, PixelFormatType);
          v18 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x", v18, 63, v20, "AVE_PixelBuf_Dump");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x", CurrTime, 63, LevelStr, "AVE_PixelBuf_Dump");
        }
      }

      return 4294966296;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v11 = AVE_Log_CheckConsole(0x3Fu);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v12, 63, v13, "AVE_PixelBuf_Dump", 1112, "pPixelBuf != __null && pFile != __null", pixelBuffer, a2, a3);
        v14 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v14, 63, v19);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v12, 63, v13);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_PixelBuf_Transfer(__CVBuffer *a1, __CVBuffer *a2)
{
  pixelTransferSessionOut = 0;
  if (a1)
  {
    if (a2)
    {
      v4 = VTPixelTransferSessionCreate(*MEMORY[0x29EDB8ED8], &pixelTransferSessionOut);
      if (v4)
      {
        v5 = v4;
        if (AVE_Log_CheckLevel(0x3Fu, 4))
        {
          v6 = AVE_Log_CheckConsole(0x3Fu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v6)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to create image transfer session, ret = %d\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_Transfer", 2010, "ret == noErr", v5);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create image transfer session, ret = %d", CurrTime);
        }
      }

      else
      {
        v5 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, a1, a2);
        if (v5 && AVE_Log_CheckLevel(0x3Fu, 4))
        {
          v15 = AVE_Log_CheckConsole(0x3Fu);
          v16 = AVE_GetCurrTime();
          v17 = AVE_Log_GetLevelStr(4);
          if (v15)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to transfer image, ret = %d\n", v16, 63, v17, "AVE_PixelBuf_Transfer", 2014, "ret == noErr", v5);
            v16 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to transfer image, ret = %d", v16);
        }
      }

      goto LABEL_25;
    }

    if (AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v12 = AVE_Log_CheckConsole(0x3Fu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | pDst is NULL\n", v13, 63, v14, "AVE_PixelBuf_Transfer", 2006, "pDst != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | pDst is NULL");
    }
  }

  else
  {
    if (!AVE_Log_CheckLevel(0x3Fu, 4))
    {
      return 4294966295;
    }

    v9 = AVE_Log_CheckConsole(0x3Fu);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | pSrc is NULL\n", v10, 63, v11, "AVE_PixelBuf_Transfer", 2004, "pSrc != __null");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | pSrc is NULL");
  }

  v5 = 4294966295;
LABEL_25:
  if (pixelTransferSessionOut)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
  }

  return v5;
}

void AVE_DAL::AVE_DAL(AVE_DAL *this)
{
  *(this + 16) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
}

uint64_t AVE_DAL::Uninit(pthread_mutex_t **this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "Uninit", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v6 = AVE_DAL::TearDownIPC(this);
  v7 = this[6];
  if (v7)
  {
    v6 = AVE_Mutex_Destroy(v7);
    this[6] = 0;
  }

  v8 = this[1];
  if (v8)
  {
    v6 = AVE_Mutex_Destroy(v8);
    this[1] = 0;
  }

  if (v6)
  {
    v9 = 4;
  }

  else
  {
    v9 = 6;
  }

  if (AVE_Log_CheckLevel(0x24u, v9))
  {
    v10 = AVE_Log_CheckConsole(0x24u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(v9);
    v13 = *this;
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v11, 36, v12, "AVE_DAL", "Uninit", this, *this, v6);
      v11 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v9);
      v14 = *this;
    }

    else
    {
      v16 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v11, 36);
  }

  return v6;
}

uint64_t AVE_DAL::Init(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "Init", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v6 = AVE_Mutex_Create();
  if (v6)
  {
    v7 = v6;
    v8 = AVE_Mutex_Create();
    if (v8)
    {
      *(this + 1) = v7;
      *(this + 6) = v8;
    }

    else if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v12 = AVE_Log_CheckConsole(0x24u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create thread mutex %p %lld\n", v13, 36, v14, "AVE_DAL", "Init", 102, "pThreadMutex != __null", this, *this);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
      }

      v23 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread mutex %p %lld", v13, 36, v14);
    }
  }

  else if (AVE_Log_CheckLevel(0x24u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x24u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to create mutex %p %lld\n", v10, 36, v11, "AVE_DAL", "Init", 98, "pMutex != __null", this, *this);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
    }

    v22 = *this;
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create mutex %p %lld", v10, 36, v11);
  }

  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v15 = AVE_Log_CheckConsole(0x24u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(6);
    v18 = *this;
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v16, 36, v17, "AVE_DAL", "Init", this, *this, 0);
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v19 = *this;
    }

    else
    {
      v21 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v16, 36);
  }

  return 0;
}

uint64_t AVE_DAL::TearDownIPC(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "TearDownIPC", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  AVE_DAL::DestroyRecvThread(this);
  v6 = AVE_DAL::DestroyPool(this);
  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = 6;
  }

  if (AVE_Log_CheckLevel(0x24u, v7))
  {
    v8 = AVE_Log_CheckConsole(0x24u);
    v9 = AVE_GetCurrTime();
    v10 = AVE_Log_GetLevelStr(v7);
    v11 = *this;
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v9, 36, v10, "AVE_DAL", "TearDownIPC", this, *this, v6);
      v9 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v7);
      v12 = *this;
    }

    else
    {
      v14 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v9, 36);
  }

  return v6;
}

uint64_t AVE_DAL::CreatePool(AVE_DAL *this, int a2, int a3)
{
  v22 = 0;
  if (a2 < 1 || a3 <= 0)
  {
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x24u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "CreatePool", 178, "num > 0 && size > 0", this, *this, a2, a3);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v10 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", CurrTime, 36, LevelStr, "AVE_DAL");
    }

    v6 = 4294966295;
  }

  else
  {
    if (*(this + 4))
    {
      return 0;
    }

    SurfaceCfg = AVE_GetSurfaceCfg(3);
    v12 = AVE_CreateUSurface(*this, 0, a3 * a2, SurfaceCfg[1], &v22);
    if (!v12)
    {
      operator new();
    }

    v6 = v12;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v13 = AVE_Log_CheckConsole(0x24u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create surface %p %lld %s %llx %d %d %d\n", v14, 36, v15, "AVE_DAL", "CreatePool", 190, "ret == 0", this, *this, *SurfaceCfg, SurfaceCfg[1], a2, a3, v6);
        v16 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        v21 = SurfaceCfg[1];
        v19 = *this;
        v20 = *SurfaceCfg;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create surface %p %lld %s %llx %d %d %d", v16, 36, v17, "AVE_DAL", "CreatePool", 190, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create surface %p %lld %s %llx %d %d %d", v14, 36, v15, "AVE_DAL", "CreatePool", 190, "ret == 0");
      }
    }
  }

  if (v22)
  {
    AVE_DestroyUSurface(v22);
  }

  return v6;
}

uint64_t AVE_DAL::DestroyPool(AVE_DAL *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = AVE_BlkPool::Destroy(v2);
    if (v3 && AVE_Log_CheckLevel(0x24u, 4))
    {
      v4 = AVE_Log_CheckConsole(0x24u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v7 = *(this + 4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "DestroyPool", 243, this, *this, *(this + 4), v3);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v8 = *this;
      }

      v12 = *(this + 4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %d", CurrTime, 36, LevelStr, "AVE_DAL");
    }

    v9 = *(this + 4);
    if (v9)
    {
      AVE_BlkPool::~AVE_BlkPool(v9);
      MEMORY[0x29C24DA40]();
    }

    *(this + 4) = 0;
  }

  else
  {
    v3 = 0;
  }

  v10 = *(this + 3);
  if (v10)
  {
    v3 = AVE_DestroyUSurface(v10);
    *(this + 3) = 0;
  }

  *(this + 2) = 0;
  return v3;
}

uint64_t AVE_DAL::SetUpIPC(AVE_DAL *this, uint64_t a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "SetUpIPC", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d", CurrTime, 36);
  }

  if (a2 < 1 || a3 <= 0)
  {
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x24u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d\n", v18, 36, v19, "AVE_DAL", "SetUpIPC", 277, "num > 0 && size > 0", this, *this, a2, a3);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        v35 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v18, 36, v19, "AVE_DAL");
    }

    RecvThread = 4294966295;
    goto LABEL_27;
  }

  Pool = AVE_DAL::CreatePool(this, a2, a3);
  if (Pool)
  {
    RecvThread = Pool;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v12 = AVE_Log_CheckConsole(0x24u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create pool %p %lld %d %d %d\n", v13, 36, v14, "AVE_DAL", "SetUpIPC", 282, "ret == 0", this, *this, a2, a3, RecvThread);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        v34 = *this;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create pool %p %lld %d %d %d", v15, 36, v16, "AVE_DAL", "SetUpIPC");
        goto LABEL_27;
      }

      v38 = a3;
      v39 = RecvThread;
      v36 = *this;
      v37 = a2;
      v33 = this;
      v31 = 282;
      v30 = v14;
      v22 = "%lld %d AVE %s: %s::%s:%d %s | fail to create pool %p %lld %d %d %d";
LABEL_26:
      syslog(3, v22, v13, 36, v30, "AVE_DAL", "SetUpIPC", v31, "ret == 0", v33, v36, v37, v38, v39);
    }
  }

  else
  {
    RecvThread = AVE_DAL::CreateRecvThread(this);
    if (!RecvThread)
    {
      v23 = 6;
      goto LABEL_28;
    }

    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v20 = AVE_Log_CheckConsole(0x24u);
      v13 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d %d\n", v13, 36, v21, "AVE_DAL", "SetUpIPC", 286, "ret == 0", this, *this, a2, a3, RecvThread);
        v13 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
      }

      v38 = a3;
      v39 = RecvThread;
      v36 = *this;
      v37 = a2;
      v33 = this;
      v31 = 286;
      v30 = v21;
      v22 = "%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d %d";
      goto LABEL_26;
    }
  }

LABEL_27:
  AVE_DAL::DestroyRecvThread(this);
  AVE_DAL::DestroyPool(this);
  v23 = 4;
LABEL_28:
  if (AVE_Log_CheckLevel(0x24u, v23))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v23);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d\n", v25, 36, v26, "AVE_DAL", "SetUpIPC", this, *this, a2, a3, RecvThread);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(v23);
      v32 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v27, 36, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v25, 36, v26);
    }
  }

  return RecvThread;
}

uint64_t AVE_DAL::CreateRecvThread(AVE_DAL *this)
{
  v66 = *MEMORY[0x29EDCA608];
  memset(&v65, 0, sizeof(v65));
  object = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "CreateRecvThread", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  if (*(this + 9))
  {
    goto LABEL_7;
  }

  v61 = this;
  LODWORD(v62) = 0;
  object = voucher_copy();
  v8 = pthread_attr_init(&v65);
  if (v8)
  {
    v9 = v8;
    v7 = 4;
    if (!AVE_Log_CheckLevel(0x24u, 4))
    {
LABEL_21:
      v6 = 4294966296;
      goto LABEL_31;
    }

    v10 = AVE_Log_CheckConsole(0x24u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to initialize thread attribute %p %lld %d %d\n", v11, 36, v12, "AVE_DAL", "CreateRecvThread", 1635, "res == 0", this, *this, v9, 0);
      v13 = AVE_GetCurrTime();
      v7 = 4;
      v14 = AVE_Log_GetLevelStr(4);
      v15 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to initialize thread attribute %p %lld %d %d", v13, 36, v14, "AVE_DAL");
      goto LABEL_21;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to initialize thread attribute %p %lld %d %d", v11, 36, v12, "AVE_DAL");
    goto LABEL_29;
  }

  v16 = pthread_attr_getschedparam(&v65, &v64);
  if (v16)
  {
    v17 = v16;
    v7 = 4;
    if (!AVE_Log_CheckLevel(0x24u, 4))
    {
      goto LABEL_21;
    }

    v18 = AVE_Log_CheckConsole(0x24u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to get scheduling parameter %p %lld %d %d\n", v19, 36, v20, "AVE_DAL", "CreateRecvThread", 1639, "res == 0", this, *this, v17, 0);
      v21 = AVE_GetCurrTime();
      v7 = 4;
      v22 = AVE_Log_GetLevelStr(4);
      v23 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to get scheduling parameter %p %lld %d %d", v21, 36, v22, "AVE_DAL");
      goto LABEL_21;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to get scheduling parameter %p %lld %d %d", v19, 36, v20, "AVE_DAL");
    goto LABEL_29;
  }

  v64.sched_priority = 47;
  v24 = pthread_attr_setschedparam(&v65, &v64);
  if (v24)
  {
    v25 = v24;
    v7 = 4;
    if (!AVE_Log_CheckLevel(0x24u, 4))
    {
      goto LABEL_21;
    }

    v26 = AVE_Log_CheckConsole(0x24u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(4);
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to set scheduling parameter %p %lld %d %d\n", v27, 36, v28, "AVE_DAL", "CreateRecvThread", 1645, "res == 0", this, *this, v25, 0);
      v29 = AVE_GetCurrTime();
      v7 = 4;
      v30 = AVE_Log_GetLevelStr(4);
      v31 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set scheduling parameter %p %lld %d %d", v29, 36, v30, "AVE_DAL");
      goto LABEL_21;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set scheduling parameter %p %lld %d %d", v27, 36, v28, "AVE_DAL");
LABEL_29:
    v6 = 4294966296;
LABEL_30:
    v7 = 4;
    goto LABEL_31;
  }

  v32 = pthread_create(this + 9, &v65, AVE_DAL::RecvThread, &v61);
  if (v32)
  {
    v33 = v32;
    v7 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v34 = AVE_Log_CheckConsole(0x24u);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      v37 = *this;
      if (!v34)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d", v35, 36, v36, "AVE_DAL", "CreateRecvThread", 1649, "res == 0", this, v37, v33, 0);
        v6 = 4294966292;
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d\n", v35, 36, v36, "AVE_DAL", "CreateRecvThread", 1649, "res == 0", this, v37, v33, 0);
      v38 = AVE_GetCurrTime();
      v7 = 4;
      v39 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d", v38, 36, v39, "AVE_DAL", "CreateRecvThread", 1649, "res == 0", this, *this, v33, 0);
    }

    v6 = 4294966292;
    goto LABEL_31;
  }

  if (v62)
  {
    v47 = 0;
  }

  else
  {
    v48 = 0;
    do
    {
      v47 = v48 + 1;
      HIDWORD(v49) = 652835029 * (v48 + 1);
      LODWORD(v49) = HIDWORD(v49);
      if ((v49 >> 2) <= 0x83126E && AVE_Log_CheckLevel(0x24u, 5))
      {
        v50 = AVE_Log_CheckConsole(0x24u);
        v51 = AVE_GetCurrTime();
        v52 = AVE_Log_GetLevelStr(5);
        v53 = *this;
        if (v50)
        {
          printf("%lld %d AVE %s: %s::%s:%d long thread creation time %p %lld %d\n", v51, 36, v52, "AVE_DAL", "CreateRecvThread", 1658, this, *this, v48 + 1);
          v51 = AVE_GetCurrTime();
          v52 = AVE_Log_GetLevelStr(5);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d long thread creation time %p %lld %d", v51, 36, v52, "AVE_DAL", "CreateRecvThread", 1658, this, *this, v48 + 1);
      }

      usleep(0x3E8u);
      if (v48 > 0xBB6)
      {
        break;
      }

      ++v48;
    }

    while (!v62);
  }

  if (v62)
  {
LABEL_7:
    v6 = 0;
    v7 = 6;
    goto LABEL_31;
  }

  v7 = 4;
  if (AVE_Log_CheckLevel(0x24u, 4))
  {
    v54 = AVE_Log_CheckConsole(0x24u);
    v55 = AVE_GetCurrTime();
    v56 = AVE_Log_GetLevelStr(4);
    v57 = *this;
    if (!v54)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | creating thread time out %p %lld %d %d", v55, 36, v56, "AVE_DAL", "CreateRecvThread", 1664, "cfg.iReady != 0", this, v57, v47, 0);
      v6 = 4294966279;
      goto LABEL_30;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | creating thread time out %p %lld %d %d\n", v55, 36, v56, "AVE_DAL", "CreateRecvThread", 1664, "cfg.iReady != 0", this, v57, v47, 0);
    v58 = AVE_GetCurrTime();
    v7 = 4;
    v59 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | creating thread time out %p %lld %d %d", v58, 36, v59, "AVE_DAL", "CreateRecvThread", 1664, "cfg.iReady != 0", this, *this, v47, 0);
  }

  v6 = 4294966279;
LABEL_31:
  if (object != -1)
  {
    os_release(object);
  }

  pthread_attr_destroy(&v65);
  if (AVE_Log_CheckLevel(0x24u, v7))
  {
    v40 = AVE_Log_CheckConsole(0x24u);
    v41 = AVE_GetCurrTime();
    v42 = AVE_Log_GetLevelStr(v7);
    v43 = *this;
    if (v40)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v41, 36, v42, "AVE_DAL", "CreateRecvThread", this, *this, v6);
      v41 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v7);
      v44 = *this;
    }

    else
    {
      v60 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v41, 36);
  }

  v45 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t AVE_DAL::DestroyRecvThread(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "DestroyRecvThread", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  if (*(this + 9))
  {
    AVE_DAL::TerminateRunLoop(this);
    pthread_join(*(this + 9), 0);
    *(this + 9) = 0;
  }

  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    v7 = AVE_GetCurrTime();
    v8 = AVE_Log_GetLevelStr(6);
    v9 = *this;
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v7, 36, v8, "AVE_DAL", "DestroyRecvThread", this, *this, 0);
      v7 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v10 = *this;
    }

    else
    {
      v12 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v7, 36);
  }

  return 0;
}

uint64_t AVE_DAL::SetCallback(AVE_DAL *this, int (*a2)(void *, int, int, int, int), void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "SetCallback", this, *this, *(this + 5), a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v9 = *this;
      v23 = *this;
      v24 = *(this + 5);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = 0;
    *(this + 15) = a2;
    *(this + 16) = a3;
    v11 = 6;
    goto LABEL_14;
  }

  v11 = 4;
  if (!AVE_Log_CheckLevel(0x24u, 4))
  {
    goto LABEL_12;
  }

  v12 = AVE_Log_CheckConsole(0x24u);
  v13 = AVE_GetCurrTime();
  v14 = AVE_Log_GetLevelStr(4);
  v15 = *this;
  if (v12)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v13, 36, v14, "AVE_DAL", "SetCallback", 521, "pCB != __null && pParam != __null", this, v15, a2, a3);
    v16 = AVE_GetCurrTime();
    v11 = 4;
    v17 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v16, 36, v17, "AVE_DAL", "SetCallback", 521, "pCB != __null && pParam != __null", this, *this, a2, a3);
LABEL_12:
    v10 = 4294966295;
    goto LABEL_14;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v13, 36, v14, "AVE_DAL", "SetCallback", 521, "pCB != __null && pParam != __null", this, v15, a2, a3);
  v10 = 4294966295;
  v11 = 4;
LABEL_14:
  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v18 = AVE_Log_CheckConsole(0x24u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(v11);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v19, 36, v20, "AVE_DAL", "SetCallback", this, *this, *(this + 5), a2, a3, v10);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(v11);
      v21 = *this;
      v25 = *(this + 5);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v19, 36, v20, "AVE_DAL", "SetCallback");
  }

  return v10;
}

uint64_t AVE_DAL::UpdatePriorityPolicy(AVE_DAL *this, int a2, int a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "UpdatePriorityPolicy", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d", CurrTime, 36);
  }

  if ((a3 | a2) < 0)
  {
    v14 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v15 = AVE_Log_CheckConsole(0x24u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      v18 = *this;
      if (!v15)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v16, 36, v17, "AVE_DAL", "UpdatePriorityPolicy", 555, "policy >= 0 && frameRate >= 0", this, v18, a2, a3);
        v13 = 4294966295;
        v14 = 4;
        goto LABEL_25;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d\n", v16, 36, v17, "AVE_DAL", "UpdatePriorityPolicy", 555, "policy >= 0 && frameRate >= 0", this, v18, a2, a3);
      v19 = AVE_GetCurrTime();
      v14 = 4;
      v20 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v19, 36, v20, "AVE_DAL", "UpdatePriorityPolicy", 555, "policy >= 0 && frameRate >= 0", this, *this, a2, a3);
    }

    v13 = 4294966295;
    goto LABEL_25;
  }

  AVE_Mutex_Lock(*(this + 6));
  if (a3 <= 59)
  {
    v10 = 33;
  }

  else
  {
    v10 = 15;
  }

  if (a3 <= 119)
  {
    v11 = v10;
  }

  else
  {
    v11 = 8;
  }

  if (a3 <= 239)
  {
    v12 = v11;
  }

  else
  {
    v12 = 4;
  }

  if (v12 != *(this + 15) || *(this + 14) != a2)
  {
    *(this + 14) = a2;
    *(this + 15) = v12;
    ++*(this + 16);
  }

  AVE_Mutex_Unlock(*(this + 6));
  v13 = 0;
  v14 = 6;
LABEL_25:
  if (AVE_Log_CheckLevel(0x24u, v14))
  {
    v21 = AVE_Log_CheckConsole(0x24u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(v14);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d\n", v22, 36, v23, "AVE_DAL", "UpdatePriorityPolicy", this, *this, a2, a3, v13);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(v14);
      v26 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v24, 36, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v22, 36, v23);
    }
  }

  return v13;
}

uint64_t AVE_DAL::UCCreate(uint64_t *a1, uint32_t a2)
{
  v34 = 0;
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v4 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCCreate", a1, *a1, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v8 = *a1;
    }

    else
    {
      v31 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d", CurrTime, 36);
  }

  if (a2 - 1 >= 5)
  {
    v10 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x24u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v20 = *a1;
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %d\n", v18, 36, v19, "AVE_DAL", "UCCreate", 653, "AVE_ClientType_None < type && type < AVE_ClientType_Max", a1, *a1, a2);
        v21 = AVE_GetCurrTime();
        v10 = 4;
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %d", v21, 36, v22, "AVE_DAL", "UCCreate", 653, "AVE_ClientType_None < type && type < AVE_ClientType_Max", a1, *a1, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %d", v18, 36, v19, "AVE_DAL", "UCCreate", 653, "AVE_ClientType_None < type && type < AVE_ClientType_Max", a1, *a1, a2);
        v10 = 4;
      }
    }

    v9 = 4294966295;
  }

  else
  {
    v9 = AVE_UC_Create(a2, &v34);
    if (v9)
    {
      v10 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v11 = AVE_Log_CheckConsole(0x24u);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        v14 = *a1;
        if (v11)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create UC %p %lld %d %d\n", v12, 36, v13, "AVE_DAL", "UCCreate", 657, "ret == 0", a1, v14, a2, v9);
          v15 = AVE_GetCurrTime();
          v10 = 4;
          v16 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create UC %p %lld %d %d", v15, 36, v16, "AVE_DAL", "UCCreate", 657, "ret == 0", a1, *a1, a2, v9);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create UC %p %lld %d %d", v12, 36, v13, "AVE_DAL", "UCCreate", 657, "ret == 0", a1, v14, a2, v9);
          v10 = 4;
        }
      }
    }

    else
    {
      a1[5] = v34;
      v10 = 6;
    }
  }

  if (AVE_Log_CheckLevel(0x24u, v10))
  {
    v23 = AVE_Log_CheckConsole(0x24u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(v10);
    v26 = a1[5];
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v24, 36, v25, "AVE_DAL", "UCCreate", a1, *a1, a2, a1[5], v9);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(v10);
      v29 = *a1;
      v32 = a1[5];
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v27, 36, v28, "AVE_DAL");
    }

    else
    {
      v33 = a1[5];
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v24, 36, v25, "AVE_DAL");
    }
  }

  return v9;
}

uint64_t AVE_DAL::UCDestroy(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    v5 = *this;
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCDestroy", this, *this, *(this + 5));
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v6 = *this;
      v17 = *this;
      v19 = *(this + 5);
    }

    else
    {
      v18 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p", CurrTime, 36);
  }

  v7 = *(this + 5);
  if (v7 && (v8 = AVE_UC_Destroy(v7), *(this + 5) = 0, v8))
  {
    v9 = v8;
    v10 = 4;
  }

  else
  {
    v9 = 0;
    v10 = 6;
  }

  if (AVE_Log_CheckLevel(0x24u, v10))
  {
    v11 = AVE_Log_CheckConsole(0x24u);
    v12 = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(v10);
    v14 = *(this + 5);
    if (v11)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d\n", v12, 36, v13, "AVE_DAL", "UCDestroy", this, *this, *(this + 5), v9);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(v10);
      v15 = *this;
    }

    v20 = *(this + 5);
    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v12, 36, v13);
  }

  return v9;
}

uint64_t AVE_DAL::UCOpen(const void **a1, uint64_t a2, uint64_t *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCOpen", a1, *a1, a1[5], a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v9 = *a1;
      v30 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
  }

  if (a2 && a3)
  {
    AVE_StrNCpy((a2 + 40), "905.5.3", 16);
    v10 = AVE_DW_Get();
    memcpy((a2 + 56), v10, 0x650uLL);
    *(a2 + 1672) = 0;
    AVE_Log_Load((a2 + 1672), a2 + 1680);
    v11 = AVE_UC_Open(a1[5], a2, a3);
    if (v11)
    {
      v12 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v13 = AVE_Log_CheckConsole(0x24u);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        v16 = *a1;
        if (v13)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to open client %p %lld %p %p %d\n", v14, 36, v15, "AVE_DAL", "UCOpen", 723, "ret == 0", a1, v16, a2, a3, v11);
          v17 = AVE_GetCurrTime();
          v12 = 4;
          v18 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to open client %p %lld %p %p %d", v17, 36, v18, "AVE_DAL", "UCOpen", 723, "ret == 0", a1, *a1, a2, a3, v11);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to open client %p %lld %p %p %d", v14, 36, v15, "AVE_DAL", "UCOpen", 723, "ret == 0", a1, v16, a2, a3, v11);
          v12 = 4;
        }
      }
    }

    else
    {
      *a1 = *a3;
      v12 = 6;
    }
  }

  else
  {
    v12 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v19 = AVE_Log_CheckConsole(0x24u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      v22 = *a1;
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v20, 36, v21, "AVE_DAL", "UCOpen", 712, "pIn != __null && pOut != __null", a1, v22, a2, a3);
        v23 = AVE_GetCurrTime();
        v12 = 4;
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v23, 36, v24, "AVE_DAL", "UCOpen", 712, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v20, 36, v21, "AVE_DAL", "UCOpen", 712, "pIn != __null && pOut != __null", a1, v22, a2, a3);
        v12 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v12))
  {
    v25 = AVE_Log_CheckConsole(0x24u);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(v12);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v26, 36, v27, "AVE_DAL", "UCOpen", a1, *a1, a1[5], a2, a3, v11);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(v12);
      v28 = *a1;
      v32 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v26, 36, v27, "AVE_DAL", "UCOpen");
  }

  return v11;
}

uint64_t AVE_DAL::UCClose(const void **a1, uint64_t *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCClose", a1, *a1, a1[5], a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Close(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to close client %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCClose", 758, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to close client %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCClose", 758, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to close client %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCClose", 758, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCClose", 754, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCClose", 754, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCClose", 754, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCClose", a1, *a1, a1[5], a2, a3, v10);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCClose");
  }

  return v10;
}

uint64_t AVE_DAL::UCPrepare(const void **a1, uint64_t *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCPrepare", a1, *a1, a1[5], a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Prepare(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to prepare %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCPrepare", 791, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to prepare %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCPrepare", 791, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to prepare %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCPrepare", 791, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCPrepare", 787, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCPrepare", 787, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCPrepare", 787, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCPrepare", a1, *a1, a1[5], a2, a3, v10);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCPrepare");
  }

  return v10;
}

uint64_t AVE_DAL::UCStart(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCStart", a1, *a1, a1[5], a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
  }

  if (a2 && a3)
  {
    *(a2 + 10) = AVE_USurface::GetID(a1[3]);
    v10 = AVE_UC_Start(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to start %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCStart", 833, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to start %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCStart", 833, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to start %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCStart", 833, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      *(a2 + 10) = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCStart", 826, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCStart", 826, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCStart", 826, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCStart", a1, *a1, a1[5], a2, a3, v10);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCStart");
  }

  return v10;
}

uint64_t AVE_DAL::UCStop(const void **a1, uint64_t *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCStop", a1, *a1, a1[5], a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Stop(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to stop %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCStop", 873, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to stop %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCStop", 873, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to stop %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCStop", 873, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCStop", 869, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCStop", 869, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCStop", 869, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCStop", a1, *a1, a1[5], a2, a3, v10);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCStop");
  }

  return v10;
}

uint64_t AVE_DAL::UCReset(const void **a1, uint64_t *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCReset", a1, *a1, a1[5], a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Reset(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to reset %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCReset", 1005, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to reset %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCReset", 1005, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to reset %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCReset", 1005, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCReset", 1001, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCReset", 1001, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCReset", 1001, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCReset", a1, *a1, a1[5], a2, a3, v10);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCReset");
  }

  return v10;
}

uint64_t AVE_DAL::AdjustThreadPolicy(AVE_DAL *this, int a2, int a3)
{
  if (a2)
  {
    result = setpriority(3, 0, 4096);
    if (result)
    {
      v7 = result;
      result = AVE_Log_CheckLevel(0x24u, 5);
      if (result)
      {
        v8 = AVE_Log_CheckConsole(0x24u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(5);
        if (v8)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "AdjustThreadPolicy", 1254, this, *this, a2, a3, v7, 0);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(5);
          v11 = *this;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d", CurrTime, 36, LevelStr, "AVE_DAL");
        return 0;
      }
    }
  }

  else
  {
    info = 0;
    mach_timebase_info(&info);
    if (a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = 33;
    }

    LODWORD(v13) = info.numer;
    LODWORD(v12) = info.denom;
    __asm { FMOV            V2.2D, #3.0 }

    _Q2.f64[0] = v14;
    *policy_info = vmovn_s64(vcvtq_u64_f64(vmulq_n_f64(_Q2, v12 / v13 * 1000000.0)));
    v34 = policy_info[0];
    v35 = 1;
    v20 = setpriority(3, 0, 0);
    if (v20)
    {
      v21 = v20;
      if (AVE_Log_CheckLevel(0x24u, 5))
      {
        v22 = AVE_Log_CheckConsole(0x24u);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(5);
        if (v22)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d\n", v23, 36, v24, "AVE_DAL", "AdjustThreadPolicy", 1238, this, *this, 0, v14, v21, 0);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(5);
          v25 = *this;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d", v23, 36, v24, "AVE_DAL");
      }
    }

    v26 = pthread_self();
    v27 = pthread_mach_thread_np(v26);
    result = thread_policy_set(v27, 2u, policy_info, 4u);
    if (result)
    {
      v28 = result;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v29 = AVE_Log_CheckConsole(0x24u);
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d %d 0x%x %d\n", v30, 36, v31, "AVE_DAL", "AdjustThreadPolicy", 1246, "res == 0", this, *this, 0, v14, v28, 0);
          v30 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          v32 = *this;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d %d 0x%x %d", v30, 36, v31, "AVE_DAL", "AdjustThreadPolicy");
      }

      return 4294966296;
    }
  }

  return result;
}

uint64_t AVE_DAL::AddRunLoopSource(AVE_DAL *this)
{
  recvPort = 0;
  memset(&context, 0, sizeof(context));
  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "AddRunLoopSource", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v6 = IOCreateReceivePort(0x39u, &recvPort);
  if (v6)
  {
    v7 = v6;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x24u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create port %p %lld 0x%x %d\n", v9, 36, v10, "AVE_DAL", "AddRunLoopSource", 1318, "res == 0", this, *this, v7, 0);
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(4);
        v11 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create port %p %lld 0x%x %d", v9, 36, v10, "AVE_DAL");
    }

    v15 = 4294966292;
  }

  else
  {
    context.version = 1;
    context.info = this;
    memset(&context.retain, 0, 24);
    v12 = CFMachPortCreateWithPort(0, recvPort, MEMORY[0x29EDBB0D0], &context, 0);
    if (v12)
    {
      v13 = v12;
      RunLoopSource = CFMachPortCreateRunLoopSource(0, v12, 0);
      CFRunLoopAddSource(*(this + 10), RunLoopSource, *MEMORY[0x29EDB8FC0]);
      v15 = 0;
      *(this + 22) = recvPort;
      *(this + 12) = v13;
      *(this + 13) = RunLoopSource;
      v16 = 7;
      goto LABEL_18;
    }

    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v23 = AVE_Log_CheckConsole(0x24u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create mach port %p %lld 0x%x %d\n", v24, 36, v25, "AVE_DAL", "AddRunLoopSource", 1332, "pAsyncPort != __null", this, *this, recvPort, 0);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        v26 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create mach port %p %lld 0x%x %d", v24, 36, v25, "AVE_DAL");
    }

    v15 = 4294966293;
  }

  if (recvPort)
  {
    mach_port_mod_refs(*MEMORY[0x29EDCA6B0], recvPort, 1u, -1);
    recvPort = 0;
  }

  v16 = 4;
LABEL_18:
  if (AVE_Log_CheckLevel(0x24u, v16))
  {
    v17 = AVE_Log_CheckConsole(0x24u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(v16);
    v20 = *this;
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v18, 36, v19, "AVE_DAL", "AddRunLoopSource", this, *this, v15);
      v18 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v16);
      v21 = *this;
    }

    else
    {
      v27 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v18, 36);
  }

  return v15;
}

uint64_t AVE_DAL::DelRunLoopSource(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "DelRunLoopSource", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v6 = *(this + 13);
  if (v6)
  {
    CFRunLoopRemoveSource(*(this + 10), v6, *MEMORY[0x29EDB8FC0]);
    CFRelease(*(this + 13));
    *(this + 13) = 0;
  }

  v7 = *(this + 12);
  if (v7)
  {
    CFMachPortInvalidate(v7);
    CFRelease(*(this + 12));
    *(this + 12) = 0;
  }

  v8 = *(this + 22);
  if (v8)
  {
    mach_port_mod_refs(*MEMORY[0x29EDCA6B0], v8, 1u, -1);
    *(this + 22) = 0;
  }

  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v9 = AVE_Log_CheckConsole(0x24u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(7);
    v12 = *this;
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v10, 36, v11, "AVE_DAL", "DelRunLoopSource", this, *this, 0);
      v10 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v13 = *this;
    }

    else
    {
      v15 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v10, 36);
  }

  return 0;
}

uint64_t AVE_DAL::SetUpRunLoop(AVE_DAL *this)
{
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "SetUpRunLoop", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  if (*(this + 10))
  {
    v6 = 0;
LABEL_8:
    v7 = 6;
    goto LABEL_31;
  }

  Current = CFRunLoopGetCurrent();
  *(this + 10) = Current;
  if (!Current)
  {
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x24u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v20 = *this;
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to get run loop %p %lld %d\n", v18, 36, v19, "AVE_DAL", "SetUpRunLoop", 1439, "m_pcRunLoop != __null", this, *this, 0);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        v21 = *this;
      }

      else
      {
        v40 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to get run loop %p %lld %d", v18, 36, v19, "AVE_DAL");
    }

    v6 = 4294966296;
    goto LABEL_28;
  }

  CFRetain(Current);
  v9 = AVE_DAL::AddRunLoopSource(this);
  if (v9)
  {
    v6 = v9;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x24u);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      v13 = *this;
      if (v10)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to add run loop source %p %lld %d\n", v11, 36, v12, "AVE_DAL", "SetUpRunLoop", 1445, "ret == 0", this, *this, v6);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        v16 = *this;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to add run loop source %p %lld %d", v14, 36, v15, "AVE_DAL");
        goto LABEL_28;
      }

      v39 = *this;
      v41 = v6;
      v38 = this;
      v36 = 1445;
      v35 = v12;
      v28 = "%lld %d AVE %s: %s::%s:%d %s | fail to add run loop source %p %lld %d";
LABEL_27:
      syslog(3, v28, v11, 36, v35, "AVE_DAL", "SetUpRunLoop", v36, "ret == 0", v38, v39, v41, v42, v43, v44, v45, v46, v47);
    }
  }

  else
  {
    *&v44 = *this;
    *(&v46 + 1) = AVE_DAL::UCRecv;
    v47 = this;
    v6 = AVE_UC_Config(*(this + 5), *(this + 22), &v44, &v42);
    if (!v6)
    {
      *(this + 28) = 1;
      goto LABEL_8;
    }

    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v22 = AVE_Log_CheckConsole(0x24u);
      v11 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      v24 = *this;
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to config driver %p %lld %d\n", v11, 36, v23, "AVE_DAL", "SetUpRunLoop", 1453, "ret == 0", this, *this, v6);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        v27 = *this;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to config driver %p %lld %d", v25, 36, v26, "AVE_DAL");
        goto LABEL_28;
      }

      v39 = *this;
      v41 = v6;
      v38 = this;
      v36 = 1453;
      v35 = v23;
      v28 = "%lld %d AVE %s: %s::%s:%d %s | fail to config driver %p %lld %d";
      goto LABEL_27;
    }
  }

LABEL_28:
  if (*(this + 10))
  {
    AVE_DAL::DelRunLoopSource(this);
    CFRelease(*(this + 10));
    *(this + 10) = 0;
  }

  v7 = 4;
LABEL_31:
  if (AVE_Log_CheckLevel(0x24u, v7))
  {
    v29 = AVE_Log_CheckConsole(0x24u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v7);
    v32 = *this;
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v30, 36, v31, "AVE_DAL", "SetUpRunLoop", this, *this, v6);
      v30 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v7);
      v33 = *this;
    }

    else
    {
      v37 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v30, 36);
  }

  return v6;
}

uint64_t AVE_DAL::TearDownRunLoop(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "TearDownRunLoop", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  if (*(this + 10))
  {
    *(this + 28) = 0;
    AVE_DAL::DelRunLoopSource(this);
    CFRelease(*(this + 10));
    *(this + 10) = 0;
  }

  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    v7 = AVE_GetCurrTime();
    v8 = AVE_Log_GetLevelStr(6);
    v9 = *this;
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v7, 36, v8, "AVE_DAL", "TearDownRunLoop", this, *this, 0);
      v7 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v10 = *this;
    }

    else
    {
      v12 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v7, 36);
  }

  return 0;
}