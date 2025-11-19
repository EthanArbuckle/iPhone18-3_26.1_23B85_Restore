uint64_t AVE_PS_Compose_lhvC(int a1, char *a2, int *a3, const void *a4, _BYTE *a5, int a6)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v12 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %d\n", CurrTime, 212, LevelStr, "AVE_PS_Compose_lhvC", a2, a3, a4, a5, a6);
      v15 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %d", v15, 212, v31);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %d", CurrTime, 212, LevelStr);
    }
  }

  *a5 = -67047423;
  a5[4] = -53;
  a5[5] = AVE_PS_CalcNumOfType(a3, a1);
  v16 = AVE_PS_ComposeNALUArray(a1, 2u, a2, a3, a5 + 6);
  if (v16 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v20 = AVE_Log_CheckConsole(0xD4u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose SPS failed\n", v21, 212, v22, "AVE_PS_Compose_lhvC", 789, "retOffset > 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose SPS failed");
    }

    goto LABEL_18;
  }

  v17 = (v16 + 6);
  v18 = AVE_PS_ComposeNALUArray(a1, 3u, a2, a3, &a5[v17]);
  if (v18 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v23 = AVE_Log_CheckConsole(0xD4u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose PPS failed\n", v24, 212, v25, "AVE_PS_Compose_lhvC", 795, "retOffset > 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose PPS failed");
    }

LABEL_18:
    v19 = 4294966296;
    goto LABEL_19;
  }

  if (v18 + v17 <= a6)
  {
    v19 = 0;
  }

  else
  {
    v19 = 4294966277;
  }

LABEL_19:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v26 = AVE_Log_CheckConsole(0xD4u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(8);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d %d\n", v27, 212, v28, "AVE_PS_Compose_lhvC", a2, a3, a4, a5, a6, v19);
      v29 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d %d", v29, 212, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d %d", v27, 212, v28);
    }
  }

  return v19;
}

uint64_t AVE_PS_Make_avcC(int a1, char *a2, int *a3, int *a4, __CFData **a5)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v10 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_Make_avcC", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v52 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v52);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", CurrTime, 212, LevelStr);
    }
  }

  if (!a2 || !a3 || !a4 || !a5)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v24 = AVE_Log_CheckConsole(0xD4u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v25, 212, v26, "AVE_PS_Make_avcC", 835, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null", a1, a2, a3, a4, a5);
        v27 = AVE_GetCurrTime();
        v54 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v27, 212, v54, "AVE_PS_Make_avcC", 835);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v25, 212, v26, "AVE_PS_Make_avcC", 835);
      }
    }

    goto LABEL_29;
  }

  *a5 = 0;
  v14 = AVE_PS_CalcSizeOfavcC(a1, a3, *a4);
  if (v14 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v28 = AVE_Log_CheckConsole(0xD4u);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d\n", v29, 212, v30, "AVE_PS_Make_avcC", 842, "size > 0", a1, a2, a3, a4, v14);
        v31 = AVE_GetCurrTime();
        v55 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v31, 212, v55, "AVE_PS_Make_avcC", 842);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v29, 212, v30, "AVE_PS_Make_avcC", 842);
      }
    }

LABEL_29:
    v19 = 4294966296;
    goto LABEL_30;
  }

  Mutable = CFDataCreateMutable(0, v14);
  if (Mutable)
  {
    v60 = a5;
    v16 = Mutable;
    CFDataSetLength(Mutable, v14);
    v59 = v16;
    MutableBytePtr = CFDataGetMutableBytePtr(v16);
    if (MutableBytePtr)
    {
      v18 = MutableBytePtr;
      v19 = AVE_PS_Compose_avcC(a1, a2, a3, a4, MutableBytePtr, v14);
      if (AVE_Log_CheckLevel(0xD4u, 8))
      {
        v20 = AVE_Log_CheckConsole(0xD4u);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(8);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d avcC data: size %d\n", v21, 212, v22, "AVE_PS_Make_avcC", 861, v14);
          v23 = AVE_GetCurrTime();
          v53 = AVE_Log_GetLevelStr(8);
          syslog(3, "%lld %d AVE %s: %s:%d avcC data: size %d", v23, 212, v53, "AVE_PS_Make_avcC", 861, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d avcC data: size %d", v21, 212, v22, "AVE_PS_Make_avcC", 861, v14);
        }
      }

      v58 = a1;
      for (i = 0; i < v14; i += 2)
      {
        if (AVE_Log_CheckLevel(0xD4u, 8))
        {
          v46 = AVE_Log_CheckConsole(0xD4u);
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(8);
          v49 = *v18;
          if (v46)
          {
            printf("%lld %d AVE %s: %p: 0x%x\n", v47, 212, v48, v18, v49);
            v50 = AVE_GetCurrTime();
            v51 = AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v50, 212, v51, v18, *v18);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v47, 212, v48, v18, v49);
          }
        }

        v18 += 2;
      }

      v44 = v59;
      a5 = v60;
      *v60 = v59;
      a1 = v58;
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v36 = AVE_Log_CheckConsole(0xD4u);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_avcC", 854, "pData != __null", a1, a2, a3, a4, v16, v14);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_avcC", 854, "pData != __null", a1, a2, a3, a4, v16, v14);
      v44 = v16;
      v19 = 4294966293;
    }

    else
    {
      v19 = 4294966293;
      v44 = v16;
    }

    CFRelease(v44);
    goto LABEL_30;
  }

  if (AVE_Log_CheckLevel(0xD4u, 4))
  {
    v32 = AVE_Log_CheckConsole(0xD4u);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d\n", v33, 212, v34, "AVE_PS_Make_avcC", 847, "pCFData != __null", a1, a2, a3, a4, v14);
      v35 = AVE_GetCurrTime();
      v56 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v35, 212, v56, "AVE_PS_Make_avcC", 847);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v33, 212, v34, "AVE_PS_Make_avcC", 847);
    }
  }

  v19 = 4294966293;
LABEL_30:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v39 = AVE_Log_CheckConsole(0xD4u);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(8);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v40, 212, v41, "AVE_PS_Make_avcC", a1, a2, a3, a4, a5, v19);
      v42 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v42, 212, v57, "AVE_PS_Make_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v40, 212, v41, "AVE_PS_Make_avcC");
    }
  }

  return v19;
}

uint64_t AVE_PS_Make_avcC_Dict(int a1, char *a2, int *a3, int *a4, __CFDictionary **a5)
{
  v47 = 0;
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v10 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_Make_avcC_Dict", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v41);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", CurrTime, 212, LevelStr);
    }
  }

  if (a2 && a3 && a4 && a5)
  {
    *a5 = 0;
    avcC = AVE_PS_Make_avcC(a1, a2, a3, a4, &v47);
    if (avcC)
    {
      v15 = avcC;
      if (AVE_Log_CheckLevel(0xD4u, 4))
      {
        v16 = AVE_Log_CheckConsole(0xD4u);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d\n", v17, 212, v18, "AVE_PS_Make_avcC_Dict", 918, "ret == 0", a1, a2, a3, a4, a5, v15);
          v19 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v19, 212, v42, "AVE_PS_Make_avcC_Dict", 918, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v17, 212, v18, "AVE_PS_Make_avcC_Dict", 918, "ret == 0");
        }
      }

      v25 = 0;
      v27 = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (Mutable)
      {
        v25 = Mutable;
        CFDictionaryAddValue(Mutable, @"avcC", v47);
        v26 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (v26)
        {
          v27 = v26;
          CFDictionaryAddValue(v26, *MEMORY[0x29EDB92C8], v25);
          CFDictionaryAddValue(v27, *MEMORY[0x29EDB92B8], @"H.264");
          v15 = 0;
          *a5 = v27;
          goto LABEL_33;
        }

        if (AVE_Log_CheckLevel(0xD4u, 4))
        {
          v32 = AVE_Log_CheckConsole(0xD4u);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p\n", v33, 212, v34, "AVE_PS_Make_avcC_Dict", 932, "pDict != __null", a1, a2, a3, a4, v25);
            v35 = AVE_GetCurrTime();
            v45 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p", v35, 212, v45, "AVE_PS_Make_avcC_Dict", 932);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p", v33, 212, v34, "AVE_PS_Make_avcC_Dict", 932);
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD4u, 4))
        {
          v28 = AVE_Log_CheckConsole(0xD4u);
          v29 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p\n", v29, 212, v30, "AVE_PS_Make_avcC_Dict", 924, "pDataDict != __null", a2, a3, a4, v47);
            v31 = AVE_GetCurrTime();
            v44 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p", v31, 212, v44, "AVE_PS_Make_avcC_Dict");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p", v29, 212, v30, "AVE_PS_Make_avcC_Dict");
          }
        }

        v25 = 0;
      }

      v27 = 0;
      v15 = 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v20 = AVE_Log_CheckConsole(0xD4u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v21, 212, v22, "AVE_PS_Make_avcC_Dict", 911, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null", a1, a2, a3, a4, a5);
        v23 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v23, 212, v43, "AVE_PS_Make_avcC_Dict", 911);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v21, 212, v22, "AVE_PS_Make_avcC_Dict", 911);
      }
    }

    v25 = 0;
    v27 = 0;
    v15 = 4294966296;
  }

LABEL_33:
  if (v47)
  {
    CFRelease(v47);
    v47 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v15 && v27)
  {
    CFRelease(v27);
  }

  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v36 = AVE_Log_CheckConsole(0xD4u);
    v37 = AVE_GetCurrTime();
    v38 = AVE_Log_GetLevelStr(8);
    if (v36)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_avcC_Dict", a1, a2, a3, a4, a5, v15);
      v39 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v39, 212, v46, "AVE_PS_Make_avcC_Dict");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_avcC_Dict");
    }
  }

  return v15;
}

uint64_t AVE_PS_Make_hvcC(uint64_t a1, char *a2, unsigned int *a3, const void *a4, int a5, const void *a6, int a7, const void *a8, __CFData **a9)
{
  v13 = a9;
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v14 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_Make_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v17 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v17, 212, v54, "AVE_PS_Make_hvcC", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", CurrTime, 212, LevelStr, "AVE_PS_Make_hvcC", a1, a2, a3);
    }
  }

  if (!a2 || !a3 || !a8 || !a9 || (a4 == 0) != (a5 == 0))
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v18 = AVE_Log_CheckConsole(0xD4u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p\n", v19, 212, v20, "AVE_PS_Make_hvcC", 1003, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1, a2, a3, a4, a5, a8, a9);
        v21 = AVE_GetCurrTime();
        v55 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v21, 212, v55, "AVE_PS_Make_hvcC", 1003, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v19, 212, v20, "AVE_PS_Make_hvcC", 1003, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }
    }

    goto LABEL_20;
  }

  v64 = a4;
  *a9 = 0;
  v22 = AVE_PS_CalcSizeOfhvcC(a1, a3, a5, a7);
  if (v22 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v37 = AVE_Log_CheckConsole(0xD4u);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d %p %d\n", v38, 212, v39, "AVE_PS_Make_hvcC", 1010, "size > 0", a1, a2, a3, v64, a5, a8, v22);
        v40 = AVE_GetCurrTime();
        a4 = v64;
        v58 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d %p %d", v40, 212, v58, "AVE_PS_Make_hvcC", 1010, "size > 0", a1);
      }

      else
      {
        a4 = v64;
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d %p %d", v38, 212, v39, "AVE_PS_Make_hvcC", 1010, "size > 0", a1);
      }

LABEL_20:
      v27 = 4294966296;
      goto LABEL_21;
    }

    v27 = 4294966296;
    goto LABEL_37;
  }

  Mutable = CFDataCreateMutable(0, v22);
  if (!Mutable)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v41 = AVE_Log_CheckConsole(0xD4u);
      v42 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(4);
      if (v41)
      {
        v61 = v22;
        a4 = v64;
        printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d %p %d\n", v42, 212, v43, "AVE_PS_Make_hvcC", 1015, "pCFData != __null", a1, a2, a3, v64, a5, a8, v61);
        v44 = AVE_GetCurrTime();
        v59 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d %p %d", v44, 212, v59, "AVE_PS_Make_hvcC", 1015, "pCFData != __null", a1);
      }

      else
      {
        a4 = v64;
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d %p %d", v42, 212, v43, "AVE_PS_Make_hvcC", 1015, "pCFData != __null", a1);
      }

      v27 = 4294966293;
      goto LABEL_21;
    }

    v27 = 4294966293;
LABEL_37:
    a4 = v64;
    goto LABEL_21;
  }

  v24 = Mutable;
  CFDataSetLength(Mutable, v22);
  MutableBytePtr = CFDataGetMutableBytePtr(v24);
  if (!MutableBytePtr)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v45 = AVE_Log_CheckConsole(0xD4u);
      v46 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(4);
      if (v45)
      {
        v62 = v22;
        a4 = v64;
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %d %p %p %d\n", v46, 212, v47, "AVE_PS_Make_hvcC", 1022, "pData != __null", a1, a2, a3, v64, a5, a8, v24, v62);
        v48 = AVE_GetCurrTime();
        v60 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %d %p %p %d", v48, 212, v60, "AVE_PS_Make_hvcC", 1022, "pData != __null", a1, a2);
      }

      else
      {
        a4 = v64;
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %d %p %p %d", v46, 212, v47, "AVE_PS_Make_hvcC", 1022, "pData != __null", a1, a2);
      }

      v27 = 4294966293;
    }

    else
    {
      v27 = 4294966293;
      a4 = v64;
    }

LABEL_53:
    CFRelease(v24);
    goto LABEL_21;
  }

  v26 = MutableBytePtr;
  v63 = a8;
  v27 = AVE_PS_Compose_hvcC(a1, a2, a3, v64, a5, a6, a7, a8, MutableBytePtr, v22);
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v28 = AVE_Log_CheckConsole(0xD4u);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(8);
    if (v28)
    {
      printf("%lld %d AVE %s: %s:%d hvcC data: size %d\n", v29, 212, v30, "AVE_PS_Make_hvcC", 1030, v22);
      v31 = AVE_GetCurrTime();
      v56 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s:%d hvcC data: size %d", v31, 212, v56, "AVE_PS_Make_hvcC", 1030, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d hvcC data: size %d", v29, 212, v30, "AVE_PS_Make_hvcC", 1030, v22);
    }
  }

  for (i = 0; i < v22; i += 2)
  {
    if (AVE_Log_CheckLevel(0xD4u, 8))
    {
      v50 = AVE_Log_CheckConsole(0xD4u);
      v51 = AVE_GetCurrTime();
      v52 = AVE_Log_GetLevelStr(8);
      v53 = *v26;
      if (v50)
      {
        printf("%lld %d AVE %s: %p: 0x%x\n", v51, 212, v52, v26, v53);
        v51 = AVE_GetCurrTime();
        v52 = AVE_Log_GetLevelStr(8);
        v53 = *v26;
      }

      syslog(3, "%lld %d AVE %s: %p: 0x%x", v51, 212, v52, v26, v53);
    }

    ++v26;
  }

  v13 = a9;
  *a9 = v24;
  a4 = v64;
  a8 = v63;
  if (v27)
  {
    goto LABEL_53;
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v32 = AVE_Log_CheckConsole(0xD4u);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(8);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d\n", v33, 212, v34, "AVE_PS_Make_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, v13, v27);
      v35 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v35, 212, v57, "AVE_PS_Make_hvcC", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v33, 212, v34, "AVE_PS_Make_hvcC", a1, a2, a3, a4);
    }
  }

  return v27;
}

uint64_t AVE_PS_Make_hvcC_Dict(uint64_t a1, char *a2, unsigned int *a3, const void *a4, int a5, const void *a6, int a7, const void *a8, __CFDictionary **a9)
{
  v55 = 0;
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v11 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v14 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v14, 212, v43, "AVE_PS_Make_hvcC_Dict", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", CurrTime, 212, LevelStr, "AVE_PS_Make_hvcC_Dict", a1, a2, a3);
    }
  }

  if (a2 && a3 && a8 && a9 && (a4 == 0) == (a5 == 0))
  {
    *a9 = 0;
    hvcC = AVE_PS_Make_hvcC(a1, a2, a3, a4, a5, a6, a7, a8, &v55);
    if (hvcC)
    {
      v20 = hvcC;
      if (AVE_Log_CheckLevel(0xD4u, 4))
      {
        v21 = AVE_Log_CheckConsole(0xD4u);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %d %p %p %d\n", v22, 212, v23, "AVE_PS_Make_hvcC_Dict", 1095, "ret == 0", a1, a2, a3, a4, a5, a8, a9, v20);
          v24 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %d %p %p %d", v24, 212, v45, "AVE_PS_Make_hvcC_Dict", 1095, "ret == 0", a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %d %p %p %d", v22, 212, v23, "AVE_PS_Make_hvcC_Dict", 1095, "ret == 0", a1, a2);
        }
      }

      v25 = 0;
      v26 = 0;
    }

    else
    {
      v32 = *MEMORY[0x29EDB8ED8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (Mutable)
      {
        v25 = Mutable;
        CFDictionaryAddValue(Mutable, @"hvcC", v55);
        v34 = CFDictionaryCreateMutable(v32, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (v34)
        {
          v26 = v34;
          CFDictionaryAddValue(v34, *MEMORY[0x29EDB92C8], v25);
          CFDictionaryAddValue(v26, *MEMORY[0x29EDB92B8], @"HEVC");
          v20 = 0;
          *a9 = v26;
          goto LABEL_19;
        }

        if (AVE_Log_CheckLevel(0xD4u, 4))
        {
          v39 = AVE_Log_CheckConsole(0xD4u);
          v40 = AVE_GetCurrTime();
          v41 = AVE_Log_GetLevelStr(4);
          if (v39)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %d %p %p\n", v40, 212, v41, "AVE_PS_Make_hvcC_Dict", 1109, "pDict != __null", a1, a2, a3, a4, a5, a8, v25);
            v42 = AVE_GetCurrTime();
            v48 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %d %p %p", v42, 212, v48, "AVE_PS_Make_hvcC_Dict", 1109, "pDict != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %d %p %p", v40, 212, v41, "AVE_PS_Make_hvcC_Dict", 1109, "pDict != __null", a1);
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD4u, 4))
        {
          v35 = AVE_Log_CheckConsole(0xD4u);
          v36 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          if (v35)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create data dictionary %d %p %p %p %d %p %p\n", v36, 212, v37, "AVE_PS_Make_hvcC_Dict", 1101, "pDataDict != __null", a1, a2, a3, a4, a5, a8, v55);
            v38 = AVE_GetCurrTime();
            v47 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %d %p %p %p %d %p %p", v38, 212, v47, "AVE_PS_Make_hvcC_Dict", 1101, "pDataDict != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %d %p %p %p %d %p %p", v36, 212, v37, "AVE_PS_Make_hvcC_Dict", 1101, "pDataDict != __null", a1);
          }
        }

        v25 = 0;
      }

      v26 = 0;
      v20 = 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v15 = AVE_Log_CheckConsole(0xD4u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p\n", v16, 212, v17, "AVE_PS_Make_hvcC_Dict", 1087, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1, a2, a3, a4, a5, a8, a9);
        v18 = AVE_GetCurrTime();
        v44 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v18, 212, v44, "AVE_PS_Make_hvcC_Dict", 1087, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v16, 212, v17, "AVE_PS_Make_hvcC_Dict", 1087, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }
    }

    v25 = 0;
    v26 = 0;
    v20 = 4294966296;
  }

LABEL_19:
  if (v55)
  {
    CFRelease(v55);
    v55 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v20 && v26)
  {
    CFRelease(v26);
  }

  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v27 = AVE_Log_CheckConsole(0xD4u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(8);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d\n", v28, 212, v29, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4, a5, a6, a7, a8, a9, v20);
      v30 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v30, 212, v46, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v28, 212, v29, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4);
    }
  }

  return v20;
}

uint64_t AVE_PS_Make_lhvC(int a1, char *a2, unsigned int *a3, const void *a4, __CFData **a5)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v10 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_Make_lhvC", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v52 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v52);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", CurrTime, 212, LevelStr);
    }
  }

  if (!a2 || !a3 || !a4 || !a5)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v24 = AVE_Log_CheckConsole(0xD4u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v25, 212, v26, "AVE_PS_Make_lhvC", 1172, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null", a1, a2, a3, a4, a5);
        v27 = AVE_GetCurrTime();
        v54 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v27, 212, v54, "AVE_PS_Make_lhvC", 1172);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v25, 212, v26, "AVE_PS_Make_lhvC", 1172);
      }
    }

    goto LABEL_29;
  }

  *a5 = 0;
  v14 = AVE_PS_CalcSizeOflhvC(a1, a3);
  if (v14 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v28 = AVE_Log_CheckConsole(0xD4u);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d\n", v29, 212, v30, "AVE_PS_Make_lhvC", 1179, "size > 0", a1, a2, a3, a4, v14);
        v31 = AVE_GetCurrTime();
        v55 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v31, 212, v55, "AVE_PS_Make_lhvC", 1179);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v29, 212, v30, "AVE_PS_Make_lhvC", 1179);
      }
    }

LABEL_29:
    v19 = 4294966296;
    goto LABEL_30;
  }

  Mutable = CFDataCreateMutable(0, v14);
  if (Mutable)
  {
    v60 = a4;
    v16 = Mutable;
    CFDataSetLength(Mutable, v14);
    v59 = v16;
    MutableBytePtr = CFDataGetMutableBytePtr(v16);
    if (MutableBytePtr)
    {
      v18 = MutableBytePtr;
      v58 = a5;
      v19 = AVE_PS_Compose_lhvC(a1, a2, a3, v60, MutableBytePtr, v14);
      if (AVE_Log_CheckLevel(0xD4u, 8))
      {
        v20 = AVE_Log_CheckConsole(0xD4u);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(8);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d lhvC data: size %d\n", v21, 212, v22, "AVE_PS_Make_lhvC", 1198, v14);
          v23 = AVE_GetCurrTime();
          v53 = AVE_Log_GetLevelStr(8);
          syslog(3, "%lld %d AVE %s: %s:%d lhvC data: size %d", v23, 212, v53, "AVE_PS_Make_lhvC", 1198, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d lhvC data: size %d", v21, 212, v22, "AVE_PS_Make_lhvC", 1198, v14);
        }
      }

      for (i = 0; i < v14; i += 2)
      {
        if (AVE_Log_CheckLevel(0xD4u, 8))
        {
          v46 = AVE_Log_CheckConsole(0xD4u);
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(8);
          v49 = *v18;
          if (v46)
          {
            printf("%lld %d AVE %s: %p: 0x%x\n", v47, 212, v48, v18, v49);
            v50 = AVE_GetCurrTime();
            v51 = AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v50, 212, v51, v18, *v18);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v47, 212, v48, v18, v49);
          }
        }

        ++v18;
      }

      a5 = v58;
      v44 = v59;
      *v58 = v59;
      a4 = v60;
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v36 = AVE_Log_CheckConsole(0xD4u);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_lhvC", 1191, "pData != __null", a1, a2, a3, a4, v16, v14);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_lhvC", 1191, "pData != __null", a1, a2, a3, a4, v16, v14);
      v44 = v16;
      v19 = 4294966293;
    }

    else
    {
      v19 = 4294966293;
      v44 = v16;
    }

    CFRelease(v44);
    goto LABEL_30;
  }

  if (AVE_Log_CheckLevel(0xD4u, 4))
  {
    v32 = AVE_Log_CheckConsole(0xD4u);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d\n", v33, 212, v34, "AVE_PS_Make_lhvC", 1184, "pCFData != __null", a1, a2, a3, a4, v14);
      v35 = AVE_GetCurrTime();
      v56 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v35, 212, v56, "AVE_PS_Make_lhvC", 1184);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v33, 212, v34, "AVE_PS_Make_lhvC", 1184);
    }
  }

  v19 = 4294966293;
LABEL_30:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v39 = AVE_Log_CheckConsole(0xD4u);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(8);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v40, 212, v41, "AVE_PS_Make_lhvC", a1, a2, a3, a4, a5, v19);
      v42 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v42, 212, v57, "AVE_PS_Make_lhvC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v40, 212, v41, "AVE_PS_Make_lhvC");
    }
  }

  return v19;
}

uint64_t AVE_PS_Add_lhvC_Dict(int a1, char *a2, unsigned int *a3, const void *a4, const __CFDictionary *a5)
{
  v39 = 0;
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v10 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_Add_lhvC_Dict", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", CurrTime, 212, LevelStr);
    }
  }

  if (a2 && a3 && a4 && a5)
  {
    lhvC = AVE_PS_Make_lhvC(a1, a2, a3, a4, &v39);
    if (lhvC)
    {
      v15 = lhvC;
      if (AVE_Log_CheckLevel(0xD4u, 4))
      {
        v16 = AVE_Log_CheckConsole(0xD4u);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d\n", v17, 212, v18, "AVE_PS_Add_lhvC_Dict", 1336, "ret == 0", a1, a2, a3, a4, a5, v15);
          v19 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v19, 212, v35, "AVE_PS_Add_lhvC_Dict", 1336, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v17, 212, v18, "AVE_PS_Add_lhvC_Dict", 1336, "ret == 0");
        }
      }
    }

    else
    {
      Value = CFDictionaryGetValue(a5, *MEMORY[0x29EDB92C8]);
      if (Value)
      {
        CFDictionaryAddValue(Value, @"lhvC", v39);
        v15 = 0;
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD4u, 4))
        {
          v25 = AVE_Log_CheckConsole(0xD4u);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(4);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to get data dictionary %d %p %p %p %p\n", v26, 212, v27, "AVE_PS_Add_lhvC_Dict", 1342, "pDataDict != __null", a1, a2, a3, a4, v39);
            v28 = AVE_GetCurrTime();
            v37 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get data dictionary %d %p %p %p %p", v28, 212, v37, "AVE_PS_Add_lhvC_Dict", 1342);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get data dictionary %d %p %p %p %p", v26, 212, v27, "AVE_PS_Add_lhvC_Dict", 1342);
          }
        }

        v15 = 4294966293;
      }
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v20 = AVE_Log_CheckConsole(0xD4u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v21, 212, v22, "AVE_PS_Add_lhvC_Dict", 1331, "pInData != __null && pInfo != __null && pSPS != __null && pCFDict != __null", a1, a2, a3, a4, a5);
        v23 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v23, 212, v36, "AVE_PS_Add_lhvC_Dict", 1331);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v21, 212, v22, "AVE_PS_Add_lhvC_Dict", 1331);
      }
    }

    v15 = 4294966296;
  }

  if (v39)
  {
    CFRelease(v39);
    v39 = 0;
  }

  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v29 = AVE_Log_CheckConsole(0xD4u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(8);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v30, 212, v31, "AVE_PS_Add_lhvC_Dict", a1, a2, a3, a4, a5, v15);
      v32 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v32, 212, v38, "AVE_PS_Add_lhvC_Dict");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v30, 212, v31, "AVE_PS_Add_lhvC_Dict");
    }
  }

  return v15;
}

uint64_t AVE_PS_Compose_general_profile_compatibility_flag(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 4)
  {
    return 4294966277;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    *(a2 + v5) |= *(a1 + 32 + v4) << (v4 & 7 ^ 7);
    if ((v4 & 7) == 7)
    {
      ++v5;
    }

    ++v4;
  }

  while (v4 != 32);
  return 4;
}

uint64_t AVE_PS_Compose_general_constraint_indicator_flags(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3 < 6)
  {
    return 4294966277;
  }

  ProfileIdc = HEVC_FindProfileIdc(*(a1 + 28));
  bzero(a2, a3);
  v9 = (*(a1 + 65) << 6) | (*(a1 + 64) << 7) | (32 * *(a1 + 66)) | (16 * *(a1 + 67));
  *a2 = v9;
  if (ProfileIdc == 4 || ProfileIdc == 5 || (*(a1 + 36) & 1) != 0 || ProfileIdc == 6 || (*(a1 + 37) & 1) != 0 || ProfileIdc == 7 || (*(a1 + 38) & 1) != 0 || ProfileIdc == 8 || (*(a1 + 39) & 1) != 0 || ProfileIdc == 9 || (*(a1 + 40) & 1) != 0 || ProfileIdc == 10 || (*(a1 + 41) & 1) != 0 || ProfileIdc == 11 || (*(a1 + 42) & 1) != 0 || *(a1 + 43) == 1)
  {
    *a2 = (8 * *(a1 + 68)) | (4 * *(a1 + 69)) | (2 * *(a1 + 70)) | *(a1 + 71) | v9;
    v8.i32[0] = *(a1 + 72);
    v10 = vshl_u16(*&vmovl_u8(v8), 0x4000500060007);
    v11 = v10.i32[0] | v10.i32[1] | ((*&v10 | HIDWORD(*&v10)) >> 16) | (8 * *(a1 + 76));
  }

  else
  {
    if (ProfileIdc != 2 && *(a1 + 34) != 1)
    {
      return 5;
    }

    LOBYTE(v11) = 16 * *(a1 + 75);
  }

  a2[1] = v11;
  return 5;
}

uint64_t AVE_PixelFmt_GetSupportedList(int a1, int a2, int a3, int a4, uint64_t a5, _DWORD *a6)
{
  result = 4294966295;
  if (!a5 || !a6)
  {
LABEL_5:
    if (!a6)
    {
      return result;
    }

    goto LABEL_6;
  }

  PixelFmt = AVE_DevCap_FindPixelFmt(a1, a2, a4);
  if (PixelFmt)
  {
    result = AVE_DevCap_PixelFmt_FindList(PixelFmt, a3, a5, a6);
    goto LABEL_5;
  }

  result = 4294966288;
  if (!a6)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *a6 = 0;
  }

  return result;
}

uint64_t AVE_PixelFmt_GetSupportedListByProfile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v8 = a8;
  v9 = 1;
  v10 = 4294966295;
  if (a7 && a8)
  {
    NumOfTypes = AVE_PixelFmt_GetNumOfTypes();
    v18 = malloc_type_malloc(4 * NumOfTypes, 0x100004052888210uLL);
    if (v18)
    {
      v19 = v18;
      if (a4 == 1)
      {
        v20 = &gs_sAVE_ProfileMap_AVC;
        v22 = 9;
        while (*v20 != a5)
        {
          v20 += 8;
          if (!--v22)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        if (a4 != 2)
        {
          goto LABEL_17;
        }

        v20 = &gs_sAVE_ProfileMap_HEVC;
        v21 = 9;
        while (*v20 != a5)
        {
          v20 += 8;
          if (!--v21)
          {
            goto LABEL_16;
          }
        }
      }

      v51 = v20;
      v59[0] = NumOfTypes;
      if (!AVE_PixelFmt_GetSupportedList(a1, a2, a3, a4, v18, v59))
      {
        v45 = v8;
        if (v59[0] < 1)
        {
          LODWORD(v54) = 0;
        }

        else
        {
          v24 = 0;
          v54 = 0;
          v25 = 36;
          if (a4 == 2)
          {
            v25 = 40;
          }

          v50 = v25;
          v26 = a6;
          v47 = a5;
          v46 = a4;
          v58 = a5;
          v57 = a4;
          v49 = a5;
          v56 = a5;
          v48 = a4;
          v55 = a4;
          do
          {
            v52 = v24;
            v27 = AVE_PixelFmt_FindByType(v19[v24]);
            v28 = *&v27[v50];
            v29 = 2;
            v30 = v54;
            do
            {
              v31 = v51[v29];
              if (!v31)
              {
                break;
              }

              if (v31 == v28 && (*(v51 + 4) != 1 || *(v27 + 1) == v26))
              {
                *(a7 + 4 * v30) = *v27;
                v30 = (v30 + 1);
              }

              ++v29;
            }

            while (v29 != 8);
            v54 = v30;
            if (AVE_Log_CheckLevel(0x4Bu, 8))
            {
              v32 = AVE_Log_CheckConsole(0x4Bu);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(8);
              if (v32)
              {
                printf("%lld %d AVE %s: %s:%d number of supported pixel format %d %d 0x%x %d %d %d %d\n", CurrTime, 75, LevelStr, "AVE_PixelFmt_GetSupportedListByProfile", 249, a1, a2, a3, v48, v49, v26, v30);
                v35 = AVE_GetCurrTime();
                v44 = AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: %s:%d number of supported pixel format %d %d 0x%x %d %d %d %d", v35, 75, v44, "AVE_PixelFmt_GetSupportedListByProfile", 249, a1, a2, a3, v48, v49, v26, v30);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d number of supported pixel format %d %d 0x%x %d %d %d %d", CurrTime, 75, LevelStr, "AVE_PixelFmt_GetSupportedListByProfile", 249, a1, a2, a3, v46, v47, a6, v30);
              }
            }

            if (v30 >= 1)
            {
              v36 = 0;
              v37 = v30;
              do
              {
                if (AVE_Log_CheckLevel(0x4Bu, 8))
                {
                  v38 = AVE_Log_CheckConsole(0x4Bu);
                  v39 = AVE_GetCurrTime();
                  v40 = AVE_Log_GetLevelStr(8);
                  v41 = *(a7 + 4 * v36);
                  if (v38)
                  {
                    printf("%lld %d AVE %s: %s:%d list of supported pixel format %d %d 0x%x %d %d %d [%d] 0x%x\n", v39, 75, v40, "AVE_PixelFmt_GetSupportedListByProfile", 255, a1, a2, a3, v57, v58, a6, v36, v41);
                    v42 = AVE_GetCurrTime();
                    v43 = AVE_Log_GetLevelStr(8);
                    v37 = v30;
                    syslog(3, "%lld %d AVE %s: %s:%d list of supported pixel format %d %d 0x%x %d %d %d [%d] 0x%x", v42, 75, v43, "AVE_PixelFmt_GetSupportedListByProfile", 255, a1, a2, a3, v57, v58, a6, v36, *(a7 + 4 * v36));
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d list of supported pixel format %d %d 0x%x %d %d %d [%d] 0x%x", v39, 75, v40, "AVE_PixelFmt_GetSupportedListByProfile", 255, a1, a2, a3, v55, v56, a6, v36, v41);
                  }
                }

                ++v36;
              }

              while (v37 != v36);
            }

            v24 = v52 + 1;
            v26 = a6;
          }

          while (v52 + 1 < v59[0]);
        }

        v10 = 0;
        v9 = 0;
        v8 = v45;
        *v45 = v54;
        goto LABEL_18;
      }

LABEL_16:
      v9 = 1;
LABEL_17:
      v10 = 4294966288;
LABEL_18:
      free(v19);
      goto LABEL_19;
    }

    v10 = 4294966293;
  }

LABEL_19:
  if (v8 && v9)
  {
    *v8 = 0;
  }

  return v10;
}

uint64_t AVE_PixelFmt_CheckSupportedType(int a1, int a2, int a3, int a4, int a5)
{
  NumOfTypes = AVE_PixelFmt_GetNumOfTypes();
  v11 = malloc_type_malloc(4 * NumOfTypes, 0x100004052888210uLL);
  if (!v11)
  {
    return 4294966293;
  }

  v12 = v11;
  v18 = NumOfTypes;
  SupportedList = AVE_PixelFmt_GetSupportedList(a1, a2, a3, a4, v11, &v18);
  if (!SupportedList)
  {
    v14 = v18;
    if (v18 < 1)
    {
LABEL_7:
      SupportedList = 4294966295;
    }

    else
    {
      v15 = v12;
      while (1)
      {
        v16 = *v15++;
        if (v16 == a5)
        {
          break;
        }

        if (!--v14)
        {
          goto LABEL_7;
        }
      }

      SupportedList = 0;
    }
  }

  free(v12);
  return SupportedList;
}

uint64_t AVE_PixelFmt_Check(const unsigned int *a1, int a2, int a3)
{
  if (a2 < 1)
  {
    return 4294966295;
  }

  v3 = a2;
  while (1)
  {
    v4 = *a1++;
    if (v4 == a3)
    {
      break;
    }

    if (!--v3)
    {
      return 4294966295;
    }
  }

  return 0;
}

uint64_t AVE_Ref_RetrieveArray(CFArrayRef theArray, int *a2, int *a3)
{
  if (theArray && a2 && a3 && *a3 > 0)
  {
    Count = CFArrayGetCount(theArray);
    v7 = *a3;
    if (Count < *a3)
    {
      v7 = Count;
    }

    if (v7 >= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = v7;
    }

    if (v7 < 1)
    {
LABEL_17:
      result = 0;
      *a3 = v8;
    }

    else
    {
      v9 = 0;
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = a2;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
        if (!ValueAtIndex)
        {
          break;
        }

        v13 = ValueAtIndex;
        AVE_CFDict_GetSInt32(ValueAtIndex, @"ReferenceFrameNumDriver", v11);
        AVE_CFDict_GetSInt32(v13, @"ReferenceRVRAIndex", v11 + 1);
        ++v9;
        v11 += 2;
        if (v10 == v9)
        {
          goto LABEL_17;
        }
      }

      if (AVE_Log_CheckLevel(0xE1u, 4))
      {
        v19 = AVE_Log_CheckConsole(0xE1u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p\n", CurrTime, 225, LevelStr, "AVE_Ref_RetrieveArray", 36, "pDict != __null", theArray, a2, a3);
          v22 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p", v22, 225, v24);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p", CurrTime, 225, LevelStr);
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE1u, 4))
    {
      v15 = AVE_Log_CheckConsole(0xE1u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v16, 225, v17, "AVE_Ref_RetrieveArray", 25, "pArray != __null && pInfo != __null && pNum != __null && *pNum > 0", theArray, a2, a3);
        v18 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 225, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 225, v17);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Ref_MakeArray(char *a1, int a2, __CFArray *a3)
{
  if (a1 && a2 >= 1 && a3)
  {
    v6 = a2;
    v7 = (a1 + 4);
    v8 = MEMORY[0x29EDB9010];
    v9 = MEMORY[0x29EDB9020];
    while (1)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, v8, v9);
      if (!Mutable)
      {
        break;
      }

      v11 = Mutable;
      AVE_CFDict_AddSInt32(@"ReferenceFrameNumDriver", *(v7 - 1), Mutable);
      v12 = *v7;
      v7 += 2;
      AVE_CFDict_AddSInt32(@"ReferenceRVRAIndex", v12, v11);
      CFArrayAppendValue(a3, v11);
      CFRelease(v11);
      if (!--v6)
      {
        return 0;
      }
    }

    if (AVE_Log_CheckLevel(0xE1u, 4))
    {
      v18 = AVE_Log_CheckConsole(0xE1u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p\n", CurrTime, 225, LevelStr, "AVE_Ref_MakeArray", 73, "pDict != __null", a1, a2, a3);
        v21 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p", v21, 225, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p", CurrTime, 225, LevelStr);
      }
    }

    return 4294966293;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE1u, 4))
    {
      v14 = AVE_Log_CheckConsole(0xE1u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v15, 225, v16, "AVE_Ref_MakeArray", 65, "pInfo != __null && iNum > 0 && pArray != __null", a1, a2, a3);
        v17 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v17, 225, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v15, 225, v16);
      }
    }

    return 4294966295;
  }
}

pthread_mutex_t *AVE_Mutex_Create(void)
{
  v0 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
  v1 = v0;
  if (v0)
  {
    *&v0->__opaque[24] = 0u;
    *&v0->__opaque[40] = 0u;
    *&v0->__sig = 0u;
    *&v0->__opaque[8] = 0u;
    if (pthread_mutex_init(v0, 0))
    {
      free(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t AVE_Mutex_Destroy(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_destroy(a1))
  {
    v2 = 4294966296;
  }

  else
  {
    v2 = 0;
  }

  free(a1);
  return v2;
}

uint64_t AVE_Mutex_Lock(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_lock(a1))
  {
    return 4294966296;
  }

  return 0;
}

uint64_t AVE_Mutex_Unlock(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_unlock(a1))
  {
    return 4294966296;
  }

  return 0;
}

uint64_t AVE_VSNPrintf(char *a1, int a2, const char *a3, va_list a4)
{
  result = vsnprintf(a1, a2, a3, a4);
  if (a1)
  {
    if (result >= a2)
    {
      result = a2 - 1;
      a1[result] = 0;
    }
  }

  return result;
}

char *AVE_StrNCpy(char *a1, const char *a2, int a3)
{
  result = strncpy(a1, a2, a3);
  result[a3 - 1] = 0;
  return result;
}

void AVE_SyntaxWriter::AVE_SyntaxWriter(AVE_SyntaxWriter *this)
{
  *this = &unk_2A1C85F88;
  *(this + 1) = 0;
  *(this + 4) = this + 40;
  *(this + 4136) = 1;
  *(this + 2) = 0x100000000000;
  *(this + 6) = 0xFFFF;
}

void AVE_SyntaxWriter::AVE_SyntaxWriter(AVE_SyntaxWriter *this, unsigned __int8 *a2, int a3, char a4)
{
  *this = &unk_2A1C85F88;
  *(this + 1) = 0;
  *(this + 4) = a2;
  *(this + 4136) = a4;
  *(this + 4) = 0;
  *(this + 5) = a3;
  *(this + 6) = 0xFFFF;
}

uint64_t AVE_SyntaxWriter::WriteBit(AVE_SyntaxWriter *this, char a2)
{
  v2 = *(this + 6);
  v3 = a2 & 1 | (2 * v2);
  *(this + 6) = v3;
  v4 = *(this + 2) + 1;
  *(this + 2) = v4;
  if (v4 != 8)
  {
    return 0;
  }

  v5 = v2 & 0x7FFFFE;
  if (*(this + 4136) == 1 && v5 == 0)
  {
    v7 = *(this + 3);
    if (v7 >= *(this + 5))
    {
      return 4294966277;
    }

    v8 = *(this + 4);
    *(this + 3) = v7 + 1;
    *(v8 + v7) = 3;
    v3 = *(this + 6) | 0x300;
    *(this + 6) = v3;
    *(this + 4) += 8;
  }

  v9 = *(this + 3);
  if (v9 >= *(this + 5))
  {
    return 4294966277;
  }

  v10 = 0;
  v11 = *(this + 4);
  *(this + 3) = v9 + 1;
  *(v11 + v9) = v3;
  *(this + 2) = 0;
  return v10;
}

uint64_t AVE_SyntaxWriter::WriteBits(AVE_SyntaxWriter *this, unsigned int a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = *(this + 2);
  while (1)
  {
    v4 = 8 - v3;
    if (a3 < 8 - v3)
    {
      v4 = a3;
    }

    v3 += v4;
    *(this + 2) = v3;
    a3 -= v4;
    v5 = (a2 >> a3) & ~(-1 << v4) | (*(this + 6) << v4);
    *(this + 6) = v5;
    if (v3 != 8)
    {
      goto LABEL_12;
    }

    if (*(this + 4136) == 1 && (v5 & 0xFFFFFC) == 0)
    {
      v6 = *(this + 3);
      if (v6 >= *(this + 5))
      {
        return 4294966277;
      }

      v7 = *(this + 4);
      *(this + 3) = v6 + 1;
      *(v7 + v6) = 3;
      v5 = *(this + 6) | 0x300;
      *(this + 6) = v5;
      *(this + 4) += 8;
    }

    v8 = *(this + 3);
    if (v8 >= *(this + 5))
    {
      return 4294966277;
    }

    v3 = 0;
    v9 = *(this + 4);
    *(this + 3) = v8 + 1;
    *(v9 + v8) = v5;
    *(this + 2) = 0;
LABEL_12:
    if (!a3)
    {
      return 0;
    }
  }
}

uint64_t AVE_SyntaxWriter::WriteI(AVE_SyntaxWriter *this, signed int a2, int a3)
{
  if (a2 < 0)
  {
    a2 = 0x80000000 - a2;
  }

  return AVE_SyntaxWriter::WriteBits(this, a2, a3);
}

uint64_t AVE_SyntaxWriter::WriteStartCode(AVE_SyntaxWriter *this)
{
  v1 = *(this + 3);
  if (v1 >= *(this + 5))
  {
    return 4294966277;
  }

  v2 = *(this + 4);
  *(this + 3) = v1 + 1;
  *(v2 + v1) = 0;
  v3 = *(this + 3);
  if (v3 >= *(this + 5))
  {
    return 4294966277;
  }

  v4 = *(this + 4);
  *(this + 3) = v3 + 1;
  *(v4 + v3) = 0;
  v5 = *(this + 3);
  if (v5 >= *(this + 5))
  {
    return 4294966277;
  }

  v6 = *(this + 4);
  *(this + 3) = v5 + 1;
  *(v6 + v5) = 0;
  v7 = *(this + 3);
  if (v7 >= *(this + 5))
  {
    return 4294966277;
  }

  v8 = 0;
  v9 = *(this + 4);
  *(this + 3) = v7 + 1;
  *(v9 + v7) = 1;
  return v8;
}

uint64_t AVE_SyntaxWriter::WriteBytes(AVE_SyntaxWriter *this, const unsigned __int8 *a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = *a2++;
    result = AVE_SyntaxWriter::WriteBits(this, v6, 8);
    if (result)
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVE_SyntaxWriter::CopyFromSyntaxWriter(AVE_SyntaxWriter *this, const AVE_SyntaxWriter *a2)
{
  if (*(this + 2) | *(a2 + 2))
  {
    return 4294966296;
  }

  v4 = *(this + 3);
  v5 = *(a2 + 3);
  if (v5 + v4 > *(this + 5))
  {
    return 4294966277;
  }

  memcpy((*(this + 4) + v4), *(a2 + 4), v5);
  result = 0;
  *(this + 3) += *(a2 + 3);
  return result;
}

uint64_t AVE_SyntaxWriter::AlignToByte(AVE_SyntaxWriter *this)
{
  result = AVE_SyntaxWriter::WriteBit(this, 1);
  if (!result)
  {
    v3 = *(this + 2);
    if (v3)
    {

      return AVE_SyntaxWriter::WriteBits(this, 0, 8 - v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double AVE_Time_Conv(unsigned int a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0x80000000) == 0)
  {
    if (a2)
    {
      v3 = *(a2 + 8);
      if (v3 >= 1)
      {
        if (!a1)
        {
          v2 = 14400000;
        }

        result = v2 * *a2 / v3;
        *a2 = result;
        *(a2 + 8) = v2;
      }
    }
  }

  return result;
}

uint64_t AVE_Time_Gen(int a1, uint64_t a2)
{
  v2 = 4294966296;
  if (a1 && a2)
  {
    if (14400000 % a1)
    {
      v3 = a1;
    }

    else
    {
      v3 = 14400000;
    }

    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = (v3 * (*a2 + v4 / a1) / v4);
    }

    else
    {
      v5 = 0;
    }

    v2 = 0;
    *a2 = v5;
    *(a2 + 8) = v3;
  }

  return v2;
}

uint64_t AVE_ComposeFilePath(const char *a1, const char *a2, const char *a3, char *a4, int a5)
{
  v20 = *MEMORY[0x29EDCA608];
  *v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v17 = 0;
  if (a4)
  {
    *a4 = 0;
    setlocale(0, &unk_295613FE7);
    time(&v17);
    v8 = localtime(&v17);
    strftime(v18, 0x2DuLL, "%Y-%m-%d_%H-%M-%S", v8);
    v14 = "/var/mobile/Media/DCIM/";
    if (a1)
    {
      LOBYTE(v14) = a1;
    }

    AVE_SNPrintf(a4, a5, "%s%s%s%s%s", v9, v10, v11, v12, v13, v14);
    result = 0;
  }

  else
  {
    result = 4294966295;
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AVE_RetCode2OSStatus(uint64_t result)
{
  if (result <= -2002)
  {
    if (result > -2006)
    {
      if (result == -2005)
      {
        return 4294948264;
      }

      else
      {
        return 4294954396;
      }
    }

    else if (result > -2008)
    {
      if (result == -2007)
      {
        return 4294948263;
      }

      else
      {
        return 4294948265;
      }
    }

    else if (result == -2009)
    {
      return 4294948262;
    }

    else if (result == -2008)
    {
      return 4294949598;
    }

    else
    {
      return 4294949605;
    }
  }

  else
  {
    switch(result)
    {
      case 0xFFFFFC01:
      case 0xFFFFFC02:
      case 0xFFFFFC03:
      case 0xFFFFFC04:
      case 0xFFFFFC05:
      case 0xFFFFFC06:
      case 0xFFFFFC07:
      case 0xFFFFFC08:
      case 0xFFFFFC09:
      case 0xFFFFFC0A:
      case 0xFFFFFC0B:
      case 0xFFFFFC0C:
      case 0xFFFFFC0D:
      case 0xFFFFFC0E:
      case 0xFFFFFC0F:
      case 0xFFFFFC10:
      case 0xFFFFFC11:
      case 0xFFFFFC12:
      case 0xFFFFFC13:
      case 0xFFFFFC14:
      case 0xFFFFFC16:
      case 0xFFFFFC18:
        return 4294949605;
      case 0xFFFFFC15:
        return 4294954392;
      case 0xFFFFFC17:
        return 4294954394;
      default:
        if (result == -2001)
        {
          result = 4294947942;
        }

        else if (result)
        {
          return 4294949605;
        }

        break;
    }
  }

  return result;
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
      MEMORY[0x29C24E920]();
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

uint64_t AVE_DAL::Alloc(AVE_DAL *this, int a2, unint64_t *a3)
{
  v37 = a2;
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Alloc", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", CurrTime, 36, LevelStr);
  }

  if (a2 >= 1 && a3 && *(this + 5) >= a2)
  {
    *a3 = 0;
    AVE_Mutex_Lock(*(this + 1));
    v10 = *(this + 4);
    if (v10)
    {
      v11 = AVE_BlkPool::Alloc(v10, a3, &v37);
      if (v11)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v12 = AVE_Log_CheckConsole(0x24u);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to allocate memory from UC info pool %p %lld %p %d %d\n", v13, 36, v14, "AVE_DAL", "Alloc", 357, "ret == 0", this, *this, a3, v37, v11);
            v13 = AVE_GetCurrTime();
            v14 = AVE_Log_GetLevelStr(4);
            v15 = *this;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate memory from UC info pool %p %lld %p %d %d", v13, 36, v14, "AVE_DAL", "Alloc");
        }

        AVE_Mutex_Unlock(*(this + 1));
        v16 = 4;
      }

      else
      {
        AVE_Mutex_Unlock(*(this + 1));
        v16 = 8;
      }
    }

    else
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v30 = AVE_Log_CheckConsole(0x24u);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        v33 = *this;
        if (v30)
        {
          v34 = a2;
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p\n", v31, 36, v32, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", this, v33, a2, a3);
          v35 = AVE_GetCurrTime();
          v16 = 4;
          v36 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v35, 36, v36, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", this, *this, v34, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v31, 36, v32, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", this, v33, a2, a3);
          v16 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x24u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v20 = *this;
      v21 = *(this + 5);
      if (v17)
      {
        v22 = a2;
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p\n", v18, 36, v19, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", this, v20, v21, a2, a3);
        v23 = AVE_GetCurrTime();
        v16 = 4;
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p", v23, 36, v24, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", this, *this, *(this + 5), v22, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p", v18, 36, v19, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", this, v20, v21, a2, a3);
        v16 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v16))
  {
    v25 = AVE_Log_CheckConsole(0x24u);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(v16);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v26, 36, v27, "AVE_DAL", "Alloc", this, *this, v37, a3, v11);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(v16);
      v28 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v26, 36, v27, "AVE_DAL");
  }

  return v11;
}

uint64_t AVE_DAL::Free(AVE_DAL *this, uint64_t *a2)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v4 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    v7 = *this;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Free", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      v8 = *this;
    }

    else
    {
      v33 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p", CurrTime, 36);
  }

  if (a2)
  {
    AVE_Mutex_Lock(*(this + 1));
    v9 = *(this + 4);
    if (v9)
    {
      v10 = AVE_BlkPool::Free(v9, a2);
      if (v10)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v11 = AVE_Log_CheckConsole(0x24u);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(4);
          if (v11)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to free memory to UC info pool %p %lld %p %d\n", v12, 36, v13, "AVE_DAL", "Free", 398, "ret == 0", this, *this, a2, v10);
            v12 = AVE_GetCurrTime();
            v13 = AVE_Log_GetLevelStr(4);
            v14 = *this;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to free memory to UC info pool %p %lld %p %d", v12, 36, v13, "AVE_DAL", "Free");
        }

        AVE_Mutex_Unlock(*(this + 1));
        v15 = 4;
      }

      else
      {
        AVE_Mutex_Unlock(*(this + 1));
        v15 = 8;
      }
    }

    else
    {
      v15 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v22 = AVE_Log_CheckConsole(0x24u);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        v25 = *this;
        if (v22)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p\n", v23, 36, v24, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", this, *this, a2);
          v26 = AVE_GetCurrTime();
          v15 = 4;
          v27 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v26, 36, v27, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", this, *this, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v23, 36, v24, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", this, *this, a2);
          v15 = 4;
        }
      }

      v10 = 4294966285;
    }
  }

  else
  {
    v15 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v16 = AVE_Log_CheckConsole(0x24u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      v19 = *this;
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p\n", v17, 36, v18, "AVE_DAL", "Free", 387, "addr != 0", this, *this, 0);
        v20 = AVE_GetCurrTime();
        v15 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p", v20, 36, v21, "AVE_DAL", "Free", 387, "addr != 0", this, *this, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p", v17, 36, v18, "AVE_DAL", "Free", 387, "addr != 0", this, *this, 0);
        v15 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v15))
  {
    v28 = AVE_Log_CheckConsole(0x24u);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(v15);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d\n", v29, 36, v30, "AVE_DAL", "Free", this, *this, a2, v10);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v15);
      v31 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v29, 36, v30);
  }

  return v10;
}

uint64_t AVE_DAL::Idx2Addr(AVE_DAL *this, int a2, unint64_t *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Idx2Addr", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", CurrTime, 36, LevelStr);
  }

  if (a2 < 0 || !a3)
  {
    v15 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v16 = AVE_Log_CheckConsole(0x24u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      v19 = *this;
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p\n", v17, 36, v18, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", this, v19, a2, a3);
        v20 = AVE_GetCurrTime();
        v15 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p", v20, 36, v21, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", this, *this, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p", v17, 36, v18, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", this, v19, a2, a3);
        v15 = 4;
      }
    }

    v11 = 4294966295;
  }

  else
  {
    AVE_Mutex_Lock(*(this + 1));
    v10 = *(this + 4);
    if (v10)
    {
      v11 = AVE_BlkPool::Idx2Addr(v10, a2, a3);
      if (v11)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v12 = AVE_Log_CheckConsole(0x24u);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to convert index in UC info pool %p %lld %d %p %d\n", v13, 36, v14, "AVE_DAL", "Idx2Addr", 443, "ret == 0", this, *this, a2, a3, v11);
            v13 = AVE_GetCurrTime();
            v14 = AVE_Log_GetLevelStr(4);
            v35 = *this;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert index in UC info pool %p %lld %d %p %d", v13, 36, v14, "AVE_DAL", "Idx2Addr", 443);
        }

        AVE_Mutex_Unlock(*(this + 1));
        v15 = 4;
      }

      else
      {
        AVE_Mutex_Unlock(*(this + 1));
        v15 = 8;
      }
    }

    else
    {
      v15 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v22 = AVE_Log_CheckConsole(0x24u);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        v25 = *this;
        if (v22)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p\n", v23, 36, v24, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", this, v25, a2, a3);
          v26 = AVE_GetCurrTime();
          v15 = 4;
          v27 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v26, 36, v27, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", this, *this, a2, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v23, 36, v24, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", this, v25, a2, a3);
          v15 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  if (AVE_Log_CheckLevel(0x24u, v15))
  {
    v28 = AVE_Log_CheckConsole(0x24u);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(v15);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v29, 36, v30, "AVE_DAL", "Idx2Addr", this, *this, a2, a3, v11);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(v15);
      v34 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v31, 36, v32, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v29, 36, v30, "AVE_DAL");
    }
  }

  return v11;
}

uint64_t AVE_DAL::Addr2Idx(AVE_DAL *this, const void *a2, int *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Addr2Idx", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", CurrTime, 36, LevelStr);
  }

  if (a3)
  {
    AVE_Mutex_Lock(*(this + 1));
    v10 = *(this + 4);
    if (v10)
    {
      v11 = AVE_BlkPool::Addr2Idx(v10, a2, a3);
      if (v11)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v12 = AVE_Log_CheckConsole(0x24u);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to convert address in UC info pool %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "Addr2Idx", 488, "ret == 0", this, *this, a2, a3, v11);
            v13 = AVE_GetCurrTime();
            v14 = AVE_Log_GetLevelStr(4);
            v15 = *this;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert address in UC info pool %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "Addr2Idx", 488);
        }

        AVE_Mutex_Unlock(*(this + 1));
        v16 = 4;
      }

      else
      {
        AVE_Mutex_Unlock(*(this + 1));
        v16 = 8;
      }
    }

    else
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v23 = AVE_Log_CheckConsole(0x24u);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        v26 = *this;
        if (v23)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p\n", v24, 36, v25, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", this, v26, a2, a3);
          v27 = AVE_GetCurrTime();
          v16 = 4;
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p", v27, 36, v28, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", this, *this, a2, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p", v24, 36, v25, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", this, v26, a2, a3);
          v16 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x24u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v20 = *this;
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p\n", v18, 36, v19, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", this, v20, a2, 0);
        v21 = AVE_GetCurrTime();
        v16 = 4;
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v21, 36, v22, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", this, *this, a2, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v18, 36, v19, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", this, v20, a2, 0);
        v16 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v16))
  {
    v29 = AVE_Log_CheckConsole(0x24u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v16);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d\n", v30, 36, v31, "AVE_DAL", "Addr2Idx", this, *this, a2, a3, v11);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(v16);
      v32 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d", v30, 36, v31, "AVE_DAL");
  }

  return v11;
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

uint64_t AVE_DAL::UCProcess(const void **a1, uint64_t *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCProcess", a1, *a1, a1[5], a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Process(a1[5], a2, a3);
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
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 8;
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
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, v21, a2, a3);
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
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCProcess", a1, *a1, a1[5], a2, a3, v10);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCProcess");
  }

  return v10;
}

uint64_t AVE_DAL::UCComplete(const void **a1, uint64_t *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCComplete", a1, *a1, a1[5], a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Complete(a1[5], a2, a3);
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
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 7;
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
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, v21, a2, a3);
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
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCComplete", a1, *a1, a1[5], a2, a3, v10);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCComplete");
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

void AVE_DAL::UCRecv(AVE_DAL *this, void *a2, unsigned int *a3, unint64_t *a4)
{
  v4 = a4;
  v6 = a2;
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v8 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCRecv", this, v6, a3, v4);
      v11 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d", v11, 36, v42);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d", CurrTime, 36, LevelStr);
    }
  }

  if (this && a3 && v4 > 0)
  {
    if (*(this + 28))
    {
      if (*(this + 15))
      {
        v12 = AVE_DAL::SetThreadPolicy(this);
        if (v12)
        {
          v13 = v12;
          if (AVE_Log_CheckLevel(0x24u, 4))
          {
            v14 = AVE_Log_CheckConsole(0x24u);
            v15 = AVE_GetCurrTime();
            v16 = AVE_Log_GetLevelStr(4);
            v17 = *this;
            if (v14)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d\n", v15, 36, v16, "AVE_DAL", "UCRecv", 1184, "ret == 0", this, *this, v13);
              v15 = AVE_GetCurrTime();
              v16 = AVE_Log_GetLevelStr(4);
            }

            v46 = *this;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d", v15, 36, v16, "AVE_DAL");
          }

          v25 = 5;
        }

        else
        {
          v30 = AVE_IOReturn2RetCode(v6);
          v31 = *a3;
          v32 = a3[2];
          v33 = a3[4];
          if (AVE_Log_CheckLevel(0x24u, 8))
          {
            v34 = v6;
            v35 = AVE_Log_CheckConsole(0x24u);
            v36 = AVE_GetCurrTime();
            v37 = AVE_Log_GetLevelStr(8);
            if (v35)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d %d\n", v36, 36, v37, "AVE_DAL", "UCRecv", 1192, this, *this, v30, v31, v32, v33);
              v36 = AVE_GetCurrTime();
              v37 = AVE_Log_GetLevelStr(8);
              v45 = *this;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d %d", v36, 36, v37, "AVE_DAL");
            v6 = v34;
          }

          v13 = (*(this + 15))(*(this + 16), v30, v31, v32, v33);
          if (v13)
          {
            v25 = 5;
          }

          else
          {
            v25 = 8;
          }
        }

        goto LABEL_36;
      }

      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x24u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        v29 = *(this + 15);
        if (v26)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | invalid configuration %p 0x%x %p %d %p %p\n", v27, 36, v28, "AVE_DAL", "UCRecv", 1179, "pDAL->m_pCB != __null", this, v6, a3, v4, *(this + 15), *(this + 16));
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
        }

        v48 = *(this + 15);
        v49 = *(this + 16);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | invalid configuration %p 0x%x %p %d %p %p", v27, 36, v28, "AVE_DAL", "UCRecv", 1179, "pDAL->m_pCB != __null");
      }
    }

    else if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v22 = AVE_Log_CheckConsole(0x24u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p 0x%x %p %d %d\n", v23, 36, v24, "AVE_DAL", "UCRecv", 1175, "pDAL->m_iThreadState != 0", this, v6, a3, v4, *(this + 28));
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
      }

      v47 = *(this + 28);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p 0x%x %p %d %d", v23, 36, v24, "AVE_DAL", "UCRecv");
    }

    v25 = 5;
    v13 = -1011;
    goto LABEL_36;
  }

  if (AVE_Log_CheckLevel(0x24u, 4))
  {
    v18 = AVE_Log_CheckConsole(0x24u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d\n", v19, 36, v20, "AVE_DAL", "UCRecv", 1169, "pCtx != __null && pArgs != __null && num > 0", this, v6, a3, v4);
      v21 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d", v21, 36, v43, "AVE_DAL", "UCRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d", v19, 36, v20, "AVE_DAL", "UCRecv");
    }
  }

  v25 = 5;
  v13 = -1001;
LABEL_36:
  if (AVE_Log_CheckLevel(0x24u, v25))
  {
    v38 = AVE_Log_CheckConsole(0x24u);
    v39 = AVE_GetCurrTime();
    v40 = AVE_Log_GetLevelStr(v25);
    if (v38)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d\n", v39, 36, v40, "AVE_DAL", "UCRecv", this, v6, a3, v4, v13);
      v41 = AVE_GetCurrTime();
      v44 = AVE_Log_GetLevelStr(v25);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d", v41, 36, v44);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d", v39, 36, v40);
    }
  }
}

uint64_t AVE_DAL::SetThreadPolicy(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "SetThreadPolicy", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  AVE_Mutex_Lock(*(this + 6));
  if (*(this + 16) <= 0)
  {
    AVE_Mutex_Unlock(*(this + 6));
  }

  else
  {
    v6 = AVE_DAL::AdjustThreadPolicy(this, *(this + 14), *(this + 15));
    *(this + 16) = 0;
    AVE_Mutex_Unlock(*(this + 6));
    if (v6)
    {
      v7 = 4;
      goto LABEL_11;
    }
  }

  v6 = 0;
  v7 = 8;
LABEL_11:
  if (AVE_Log_CheckLevel(0x24u, v7))
  {
    v8 = AVE_Log_CheckConsole(0x24u);
    v9 = AVE_GetCurrTime();
    v10 = AVE_Log_GetLevelStr(v7);
    v11 = *this;
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v9, 36, v10, "AVE_DAL", "SetThreadPolicy", this, *this, v6);
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

uint64_t AVE_DAL::TerminateRunLoop(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "TerminateRunLoop", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v6 = *(this + 10);
  if (v6)
  {
    CFRunLoopStop(v6);
  }

  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v7 = AVE_Log_CheckConsole(0x24u);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(6);
    v10 = *this;
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v8, 36, v9, "AVE_DAL", "TerminateRunLoop", this, *this, 0);
      v8 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v11 = *this;
    }

    else
    {
      v13 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v8, 36);
  }

  return 0;
}

void AVE_DAL::RecvThread(AVE_DAL *this, void *a2)
{
  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v3 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v3)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "RecvThread", this);
      v6 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v6, 36, v34, "AVE_DAL", "RecvThread", this);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", CurrTime, 36, LevelStr, "AVE_DAL", "RecvThread", this);
    }
  }

  if (this)
  {
    v13 = *this;
    if (*this)
    {
      os_retain(*(this + 2));
      v19 = voucher_adopt();
      pthread_setname_np("AVE_UCRecv");
      v20 = AVE_DAL::AdjustThreadPolicy(v13, 0, 0);
      if (v20)
      {
        v21 = v20;
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v22 = AVE_Log_CheckConsole(0x24u);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          v25 = *v13;
          if (v22)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d\n", v23, 36, v24, "AVE_DAL", "RecvThread", 1572, "ret == 0", v13, *v13, v21);
            v23 = AVE_GetCurrTime();
            v24 = AVE_Log_GetLevelStr(4);
          }

          v35 = *v13;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d", v23, 36, v24, "AVE_DAL");
        }
      }

      else
      {
        v21 = AVE_DAL::SetUpRunLoop(v13);
        if (v21)
        {
          if (AVE_Log_CheckLevel(0x24u, 4))
          {
            v26 = AVE_Log_CheckConsole(0x24u);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *v13;
            if (v26)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | fail to set up run loop %p %lld %d\n", v27, 36, v28, "AVE_DAL", "RecvThread", 1576, "ret == 0", v13, *v13, v21);
              v27 = AVE_GetCurrTime();
              v28 = AVE_Log_GetLevelStr(4);
            }

            v36 = *v13;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set up run loop %p %lld %d", v27, 36, v28, "AVE_DAL");
          }
        }

        else
        {
          *(this + 2) = 1;
          CFRunLoopRun();
          AVE_DAL::TearDownRunLoop(v13);
        }
      }

      if (v19 != -1)
      {
        v30 = voucher_adopt();
        os_release(v30);
      }

      if (v21)
      {
        v7 = 4;
      }

      else
      {
        v7 = 7;
      }
    }

    else
    {
      v7 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v14 = AVE_Log_CheckConsole(0x24u);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong class %p\n", v15, 36, v16, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
          v17 = AVE_GetCurrTime();
          v7 = 4;
          v18 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong class %p", v17, 36, v18, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong class %p", v15, 36, v16, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
          v7 = 4;
        }
      }

      v21 = -1015;
    }
  }

  else
  {
    v7 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x24u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p\n", v9, 36, v10, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
        v11 = AVE_GetCurrTime();
        v7 = 4;
        v12 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p", v11, 36, v12, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p", v9, 36, v10, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
        v7 = 4;
      }
    }

    v21 = -1001;
  }

  if (AVE_Log_CheckLevel(0x24u, v7))
  {
    v31 = AVE_Log_CheckConsole(0x24u);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(v7);
    if (v31)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v32, 36, v33, "AVE_DAL", "RecvThread", this, v21);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(v7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v32, 36, v33, "AVE_DAL", "RecvThread", this, v21);
  }

  pthread_exit(0);
}

uint64_t AVE_GetAbsTime(void)
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return (v1.tv_nsec + 1000000000 * v1.tv_sec) / 1000;
}

uint64_t AVE_IOReturn2RetCode(int a1)
{
  v1 = &dword_295662D30;
  v2 = 26;
  while (*v1 != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 4294966296;
    }
  }

  return *(v1 - 1);
}

uint64_t AVE_VUI_AddAllColorPrimToCFArray(CFMutableArrayRef theArray)
{
  for (i = 0; i != 6; ++i)
  {
    CFArrayAppendValue(theArray, gsc_psaAVE_ColorPrimaries_Supported[i]);
  }

  return 0;
}

uint64_t AVE_VUI_AddAllTransCharToCFArray(CFMutableArrayRef theArray)
{
  for (i = 0; i != 8; ++i)
  {
    CFArrayAppendValue(theArray, gsc_psaAVE_TransferCharacteristics_Supported[i]);
  }

  CFArrayAppendValue(theArray, *MEMORY[0x29EDB9648]);
  return 0;
}

uint64_t AVE_VUI_AddAllMatrixCoeffToCFArray(CFMutableArrayRef theArray)
{
  for (i = 0; i != 6; ++i)
  {
    CFArrayAppendValue(theArray, gsc_psaAVE_MatrixCoefficients_Supported[i]);
  }

  return 0;
}

void _GLOBAL__sub_I_AVE_VUI_Helper_Lib_cpp()
{
  v0 = *MEMORY[0x29EDB95B0];
  gsc_psaAVE_ColorPrimaries_Supported = *MEMORY[0x29EDB95C0];
  *algn_2A189AAE8 = v0;
  v1 = *MEMORY[0x29EDB95B8];
  qword_2A189AAF0 = *MEMORY[0x29EDB95D0];
  unk_2A189AAF8 = v1;
  v2 = *MEMORY[0x29EDB95A8];
  qword_2A189AB00 = *MEMORY[0x29EDB95C8];
  unk_2A189AB08 = v2;
  v3 = *MEMORY[0x29EDB9630];
  gsc_psaAVE_TransferCharacteristics_Supported = *MEMORY[0x29EDB9620];
  *algn_2A189AA78 = v3;
  v4 = *MEMORY[0x29EDB9650];
  qword_2A189AA80 = *MEMORY[0x29EDB9628];
  unk_2A189AA88 = v4;
  v5 = *MEMORY[0x29EDB9638];
  qword_2A189AA90 = *MEMORY[0x29EDB9610];
  unk_2A189AA98 = v5;
  v6 = *MEMORY[0x29EDB9618];
  qword_2A189AAA0 = *MEMORY[0x29EDB9640];
  unk_2A189AAA8 = v6;
  v7 = *MEMORY[0x29EDB9678];
  gsc_psaAVE_MatrixCoefficients_Supported = *MEMORY[0x29EDB9680];
  *algn_2A189AAB8 = v7;
  v8 = *MEMORY[0x29EDB9688];
  qword_2A189AAC0 = *MEMORY[0x29EDB9670];
  unk_2A189AAC8 = v8;
  v9 = *MEMORY[0x29EDB9668];
  qword_2A189AAD0 = *MEMORY[0x29EDB9660];
  unk_2A189AAD8 = v9;
}

uint64_t AVE_Crypto_AddInfo(int a1, unsigned int a2, unsigned int *a3)
{
  if (AVE_Log_CheckLevel(0x7Bu, 8))
  {
    v6 = AVE_Log_CheckConsole(0x7Bu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %p\n", CurrTime, 123, LevelStr, "AVE_Crypto_AddInfo", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %p", CurrTime);
  }

  if (((a2 | a1) & 0x80000000) != 0 || !a3)
  {
    if (AVE_Log_CheckLevel(0x7Bu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x7Bu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %d %p\n", v16, 123, v17, "AVE_Crypto_AddInfo", 28, "(iOffset >= 0) && (iSize >= 0) && (psInfo != __null)", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %d %p", v16, 123);
    }
  }

  else
  {
    v9 = *a3;
    if (v9 > 0x41)
    {
      if (AVE_Log_CheckLevel(0x7Bu, 4))
      {
        v18 = AVE_Log_CheckConsole(0x7Bu);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong crypto info %d %d %p %d\n", v19, 123, v20, "AVE_Crypto_AddInfo", 32, "(0 <= psInfo->iNum) && (psInfo->iNum < (((2) < ((63 + 1)) ? (2) : ((63 + 1))) * (((32) < (256) ? (32) : (256)) + 1)))", a1, a2, a3, *a3);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
        }

        v30 = *a3;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong crypto info %d %d %p %d", v19, 123, v20);
      }
    }

    else
    {
      v10 = 0;
      if (v9)
      {
        v11 = a3 + 2;
        v12 = *a3;
        do
        {
          v10 += *(v11 - 1) + *v11;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      if ((v10 & 0x80000000) == 0 && a1 >= v10)
      {
        v13 = 0;
        v14 = &a3[2 * v9];
        v14[1] = a1 - v10;
        v14[2] = a2;
        *a3 = v9 + 1;
        goto LABEL_31;
      }

      if (AVE_Log_CheckLevel(0x7Bu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x7Bu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        v24 = *a3;
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong crypto info %d %d %p %d %d\n", v22, 123, v23, "AVE_Crypto_AddInfo", 43, "(0 <= totalSize) && (totalSize <= iOffset)", a1, a2, a3, *a3, v10);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
        }

        v31 = *a3;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong crypto info %d %d %p %d %d", v22, 123, v23);
      }
    }
  }

  v13 = 4294966295;
LABEL_31:
  if (AVE_Log_CheckLevel(0x7Bu, 8))
  {
    v25 = AVE_Log_CheckConsole(0x7Bu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(8);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %p %d\n", v26, 123, v27, "AVE_Crypto_AddInfo", a1, a2, a3, v13);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v28, 123);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v26, 123);
    }
  }

  return v13;
}

uint64_t AVE_Crypto_PrintInfo(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = *MEMORY[0x29EDCA608];
  v59 = 0u;
  v60 = 0u;
  if (!a1)
  {
    if (AVE_Log_CheckLevel(a2, 4))
    {
      v22 = AVE_Log_CheckConsole(a2);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!v22)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", CurrTime);
        goto LABEL_16;
      }

      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", CurrTime, a2, LevelStr, "AVE_Crypto_PrintInfo", 72, "psInfo != __null", 0);
      v25 = AVE_GetCurrTime();
      v54 = "psInfo != __null";
      v55 = 0;
      v53 = 72;
      v51 = a2;
      v52 = AVE_Log_GetLevelStr(4);
      v26 = "%lld %d AVE %s: %s:%d %s | wrong parameter %p";
      goto LABEL_13;
    }

LABEL_16:
    result = 4294966295;
    goto LABEL_38;
  }

  v9 = a1;
  if (*a1 >= 0x43)
  {
    if (AVE_Log_CheckLevel(a2, 4))
    {
      v27 = AVE_Log_CheckConsole(a2);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (!v27)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong Crypto info %p %d", v28, a2);
        goto LABEL_16;
      }

      printf("%lld %d AVE %s: %s:%d %s | wrong Crypto info %p %d\n", v28, a2, v29, "AVE_Crypto_PrintInfo", 74, "(0 <= psInfo->iNum) && (psInfo->iNum <= (((2) < ((63 + 1)) ? (2) : ((63 + 1))) * (((32) < (256) ? (32) : (256)) + 1)))", v9, *v9);
      v25 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      v55 = v9;
      v56 = *v9;
      v53 = 74;
      v54 = "(0 <= psInfo->iNum) && (psInfo->iNum <= (((2) < ((63 + 1)) ? (2) : ((63 + 1))) * (((32) < (256) ? (32) : (256)) + 1)))";
      v52 = v30;
      v26 = "%lld %d AVE %s: %s:%d %s | wrong Crypto info %p %d";
      v51 = a2;
LABEL_13:
      syslog(3, v26, v25, v51, v52, "AVE_Crypto_PrintInfo", v53, v54, v55, v56);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v10 = a5;
  v11 = a4;
  AVE_ComposePosStr(a4, a5, &v59, 32, a5, a6, a7, a8);
  v13 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    v18 = AVE_Log_CheckConsole(a2);
    if ((a3 & 0x80000000) != 0)
    {
      if (!v18 || (-a3 & 0x20) != 0)
      {
        syslog(3, "Crypto %s size %d", &v59, *v9);
      }

      else
      {
        printf("Crypto %s size %d\n", &v59, *v9);
        syslog(3, "Crypto %s size %d", &v59, *v9);
      }
    }

    else
    {
      v19 = v18 ^ 1;
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(a3);
      if (((v19 | ((a3 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: Crypto %s size %d\n", v20, a2, v21, &v59, *v9);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(a3);
      }

      syslog(3, "%lld %d AVE %s: Crypto %s size %d", v20, a2, v21, &v59, *v9);
      v13 = a3;
    }
  }

  if (*v9 >= 1)
  {
    v32 = 0;
    v57 = -a3;
    v33 = (v9 + 2);
    v58 = v9;
    do
    {
      v59 = 0u;
      v60 = 0u;
      AVE_ComposePosStr(v11, v10, &v59, 32, v14, v15, v16, v17);
      if (AVE_Log_CheckLevel(a2, v13))
      {
        v34 = AVE_Log_CheckConsole(a2);
        if ((a3 & 0x80000000) != 0)
        {
          if ((v57 & 0x20) != 0)
          {
            v47 = 0;
          }

          else
          {
            v47 = v34;
          }

          v48 = *(v33 - 1);
          v49 = *v33;
          if (v47 == 1)
          {
            printf("Crypto %s | %d %d\n", &v59, *(v33 - 1), v49);
            syslog(3, "Crypto %s | %d %d", &v59, *(v33 - 1), *v33);
          }

          else
          {
            syslog(3, "Crypto %s | %d %d", &v59, *(v33 - 1), v49);
          }
        }

        else
        {
          v35 = v11;
          v36 = v10;
          v37 = a3;
          v38 = v13;
          v39 = a3 & 0x20;
          v40 = v34 ^ 1;
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(v38);
          v43 = *(v33 - 1);
          v44 = *v33;
          if ((v40 | (v39 >> 5)))
          {
            syslog(3, "%lld %d AVE %s: Crypto %s | %d %d", v41, a2, v42, &v59, *(v33 - 1), v44);
          }

          else
          {
            printf("%lld %d AVE %s: Crypto %s | %d %d\n", v41, a2, v42, &v59, *(v33 - 1), v44);
            v45 = AVE_GetCurrTime();
            v46 = AVE_Log_GetLevelStr(v38);
            syslog(3, "%lld %d AVE %s: Crypto %s | %d %d", v45, a2, v46, &v59, *(v33 - 1), *v33);
          }

          a3 = v37;
          v10 = v36;
          v11 = v35;
          v9 = v58;
          v13 = v38;
        }
      }

      ++v32;
      v33 += 2;
    }

    while (v32 < *v9);
  }

  result = 0;
LABEL_38:
  v50 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AVE_Crypto_Make(const UInt8 *a1, __CFDictionary *a2)
{
  if (AVE_Log_CheckLevel(0x7Bu, 8))
  {
    v4 = AVE_Log_CheckConsole(0x7Bu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 123, LevelStr, "AVE_Crypto_Make", a1, a2);
      v7 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 123, v27, "AVE_Crypto_Make", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 123, LevelStr, "AVE_Crypto_Make", a1, a2);
    }
  }

  if (!a1 || !a2)
  {
    if (AVE_Log_CheckLevel(0x7Bu, 4))
    {
      v12 = AVE_Log_CheckConsole(0x7Bu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 123, v14, "AVE_Crypto_Make", 151, "psInfo != __null && pDict != __null", a1, a2);
        v13 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 123);
    }

    goto LABEL_24;
  }

  v8 = *a1;
  if (v8 <= 0)
  {
    if (AVE_Log_CheckLevel(0x7Bu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x7Bu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong crypto info %p %d\n", v16, 123, v17, "AVE_Crypto_Make", 154, "psInfo->iNum > 0", a2, *a1);
        v16 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      v28 = *a1;
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong crypto info %p %d", v16, 123);
    }

LABEL_24:
    v11 = 4294966295;
    goto LABEL_25;
  }

  v9 = CFDataCreate(*MEMORY[0x29EDB8ED8], a1 + 4, 8 * v8);
  if (v9)
  {
    v10 = v9;
    CFDictionarySetValue(a2, *MEMORY[0x29EDB9350], v9);
    CFRelease(v10);
    v11 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x7Bu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x7Bu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFData %p %d %ld\n", v19, 123, v20, "AVE_Crypto_Make", 160, "pData != __null", a1 + 4, *a1, 8);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        v22 = *a1;
      }

      else
      {
        v29 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFData %p %d %ld", v19, 123, v20);
    }

    v11 = 4294966293;
  }

LABEL_25:
  if (AVE_Log_CheckLevel(0x7Bu, 8))
  {
    v23 = AVE_Log_CheckConsole(0x7Bu);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(8);
    if (v23)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v24, 123, v25, "AVE_Crypto_Make", a1, a2, v11);
      v24 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v24);
  }

  return v11;
}

uint64_t AVE_Crypto_MakeSINF(const void *a1, const void *a2, int a3, const __CFDictionary *a4)
{
  v46[2] = *MEMORY[0x29EDCA608];
  v46[0] = 0;
  v46[1] = 0;
  if (AVE_Log_CheckLevel(0x7Bu, 8))
  {
    v8 = AVE_Log_CheckConsole(0x7Bu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %p\n", CurrTime, 123, LevelStr, "AVE_Crypto_MakeSINF", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %p", CurrTime, 123);
  }

  if (a1 && a2 && a4)
  {
    if ((a3 - 1) >= 3)
    {
      if (AVE_Log_CheckLevel(0x7Bu, 4))
      {
        v22 = AVE_Log_CheckConsole(0x7Bu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | encode type %d not recognized.\n", v23, 123, v24, "AVE_Crypto_MakeSINF", 219, "false", a3);
          v23 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | encode type %d not recognized.", v23);
      }

      v25 = 4294966281;
    }

    else
    {
      v11 = dword_295662EB0[a3 - 1];
      VideoSecurityInfoExtension = VTEncoderSessionCreateVideoSecurityInfoExtension();
      if (VideoSecurityInfoExtension)
      {
        v13 = VideoSecurityInfoExtension;
        if (AVE_Log_CheckLevel(0x7Bu, 4))
        {
          v14 = AVE_Log_CheckConsole(0x7Bu);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(4);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create crypto SINF %p %d %p %p %p %d\n", v15, 123, v16, "AVE_Crypto_MakeSINF", 228, "res == noErr", a1, v11, v46, a2, 0, v13);
            v17 = AVE_GetCurrTime();
            v40 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create crypto SINF %p %d %p %p %p %d", v17, 123, v40, "AVE_Crypto_MakeSINF", 228, "res == noErr");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create crypto SINF %p %d %p %p %p %d", v15, 123, v16, "AVE_Crypto_MakeSINF", 228, "res == noErr");
          }
        }

LABEL_28:
        v25 = 4294966296;
        goto LABEL_32;
      }

      v26 = *MEMORY[0x29EDB92C8];
      Value = CFDictionaryGetValue(a4, *MEMORY[0x29EDB92C8]);
      v28 = *MEMORY[0x29EDB8ED8];
      if (Value)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v28, 0, Value);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(v28, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      }

      v30 = MutableCopy;
      if (!MutableCopy)
      {
        if (AVE_Log_CheckLevel(0x7Bu, 4))
        {
          v37 = AVE_Log_CheckConsole(0x7Bu);
          v38 = AVE_GetCurrTime();
          v39 = AVE_Log_GetLevelStr(4);
          if (v37)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create mutable sample extension atoms dictionary %p\n", v38, 123, v39, "AVE_Crypto_MakeSINF", 245, "pSampleExtAtomDict != __null", Value);
            v38 = AVE_GetCurrTime();
            v44 = Value;
            v43 = AVE_Log_GetLevelStr(4);
          }

          else
          {
            v44 = Value;
            v43 = v39;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create mutable sample extension atoms dictionary %p", v38, 123, v43, "AVE_Crypto_MakeSINF", 245, "pSampleExtAtomDict != __null", v44, v45);
        }

        goto LABEL_28;
      }

      CFDictionarySetValue(MutableCopy, @"sinf", 0);
      CFDictionarySetValue(a4, v26, v30);
      CFRelease(v30);
      v25 = 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x7Bu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x7Bu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %p\n", v19, 123, v20, "AVE_Crypto_MakeSINF", 201, "(pSession != __null) && (piKeyID != __null) && (pDict != __null)", a1, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v41 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %p", v21, 123, v41, "AVE_Crypto_MakeSINF");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %p", v19, 123, v20, "AVE_Crypto_MakeSINF");
      }
    }

    v25 = 4294966295;
  }

LABEL_32:
  if (AVE_Log_CheckLevel(0x7Bu, 8))
  {
    v31 = AVE_Log_CheckConsole(0x7Bu);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(8);
    if (v31)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %p %d\n", v32, 123, v33, "AVE_Crypto_MakeSINF", a1, a2, a3, a4, v25);
      v34 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %p %d", v34, 123, v42);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %p %d", v32, 123, v33);
    }
  }

  v35 = *MEMORY[0x29EDCA608];
  return v25;
}

unsigned int *AVE_DevCap_FindSearchRangeMode(int a1, int a2, int a3, int a4)
{
  result = AVE_DevCap_FindSearchRange(a1, a2, a3);
  if (result)
  {

    return AVE_DevCap_SearchRange_Find(result, a4);
  }

  return result;
}

uint64_t AVE_DevCap_FindPixelPerf(int a1, int a2, int a3, int a4, int a5, int a6)
{
  result = AVE_DevCap_FindPerf(a1, a2, a3);
  if (result)
  {
    result = AVE_DevCap_Perf_Find(result, a4, a5, a6);
    if (result)
    {
      return *(result + 16);
    }
  }

  return result;
}

uint64_t AVE_DRC_RetrieveMetaData(CFDictionaryRef theDict, BOOL *a2)
{
  v14 = 0;
  if (theDict && a2)
  {
    Bool = AVE_CFDict_GetBool(theDict, *MEMORY[0x29EDBCE90], a2);
    v5 = AVE_CFDict_GetBool(theDict, *MEMORY[0x29EDBCEB0], a2 + 1) + Bool;
    SInt32 = AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCEA0], &v14);
    a2[2] = v14;
    v7 = v5 + SInt32 + AVE_CFDict_GetBool(theDict, *MEMORY[0x29EDBCE98], a2 + 3);
    return v7 + AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCEA8], a2 + 1);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v9 = AVE_Log_CheckConsole(0xE2u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DRC_RetrieveMetaData", 25, "pDict != __null && pMetaData != __null", theDict, a2, 0);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 226, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_DRC_MakeMetaData(unsigned __int8 *a1, CFMutableDictionaryRef theDict)
{
  if (a1 && theDict)
  {
    v4 = AVE_CFDict_AddBool(*MEMORY[0x29EDBCE90], *a1, theDict);
    v5 = AVE_CFDict_AddBool(*MEMORY[0x29EDBCEB0], a1[1], theDict) + v4;
    v6 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCEA0], a1[2], theDict);
    v7 = v5 + v6 + AVE_CFDict_AddBool(*MEMORY[0x29EDBCE98], a1[3], theDict);
    return v7 + AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCEA8], *(a1 + 1), theDict);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v9 = AVE_Log_CheckConsole(0xE2u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DRC_MakeMetaData", 60, "pMetaData != __null && pDict != __null", a1, theDict, 0);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 226, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_DPB_RetrieveSnapshotEntry(CFDictionaryRef theDict, void *a2)
{
  v33 = 0;
  if (theDict && a2)
  {
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE80], &v33);
    *a2 = v33;
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE50], &v33);
    *(a2 + 1) = v33;
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE58], &v33);
    *(a2 + 2) = v33;
    AVE_CFDict_GetSInt64(theDict, *MEMORY[0x29EDBCE70], a2 + 2);
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE68], &v33);
    *(a2 + 6) = v33;
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE60]);
    if (Value)
    {
      v5 = Value;
      v6 = *MEMORY[0x29EDBCE48];
      AVE_CFDict_GetSInt32(Value, *MEMORY[0x29EDBCE48], &v33);
      *(a2 + 12) = v33;
      v7 = *MEMORY[0x29EDBCE38];
      AVE_CFDict_GetSInt32(v5, *MEMORY[0x29EDBCE38], &v33);
      *(a2 + 14) = v33;
      v8 = *MEMORY[0x29EDBCE40];
      AVE_CFDict_GetSInt32(v5, *MEMORY[0x29EDBCE40], &v33);
      *(a2 + 16) = v33;
      v9 = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE78]);
      if (v9)
      {
        v10 = v9;
        AVE_CFDict_GetSInt32(v9, v6, &v33);
        *(a2 + 13) = v33;
        AVE_CFDict_GetSInt32(v10, v7, &v33);
        *(a2 + 15) = v33;
        AVE_CFDict_GetSInt32(v10, v8, &v33);
        *(a2 + 17) = v33;
        v11 = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE88]);
        MetaData = AVE_DRC_RetrieveMetaData(v11, a2 + 72);
        if (MetaData && AVE_Log_CheckLevel(0xE2u, 4))
        {
          v13 = AVE_Log_CheckConsole(0xE2u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v13)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DPB_RetrieveSnapshotEntry", 150, "ret == 0", theDict, a2, MetaData);
            v16 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d", v16, 226, v29);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d", CurrTime, 226, LevelStr);
          }
        }

        return MetaData;
      }

      if (AVE_Log_CheckLevel(0xE2u, 4))
      {
        v24 = AVE_Log_CheckConsole(0xE2u);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d\n", v25, 226, v26, "AVE_DPB_RetrieveSnapshotEntry", 131, "pTmpDict != __null", theDict, a2, 0);
          v27 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d", v27, 226, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d", v25, 226, v26);
        }
      }
    }

    else if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v21 = AVE_Log_CheckConsole(0xE2u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get original reference buffer %p %p %d\n", v22, 226, v23, "AVE_DPB_RetrieveSnapshotEntry", 113, "pTmpDict != __null", theDict, a2, 0);
        v22 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v31 = v23;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get original reference buffer %p %p %d", v22, 226, v31);
    }

    return 4294966288;
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v17 = AVE_Log_CheckConsole(0xE2u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v18, 226, v19, "AVE_DPB_RetrieveSnapshotEntry", 92, "pDict != __null && pEntry != __null", theDict, a2, 0);
      v20 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v20, 226, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v18, 226, v19);
    }
  }

  return 4294966295;
}

uint64_t AVE_DPB_MakeSnapshotEntry(uint64_t a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE80], *a1, a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE50], *(a1 + 4), a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE58], *(a1 + 8), a2);
    AVE_CFDict_AddSInt64(*MEMORY[0x29EDBCE70], *(a1 + 16), a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE68], *(a1 + 24), a2);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = *MEMORY[0x29EDBCE48];
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE48], *(a1 + 48), Mutable);
      v7 = *MEMORY[0x29EDBCE38];
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE38], *(a1 + 56), v5);
      v8 = *MEMORY[0x29EDBCE40];
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE40], *(a1 + 64), v5);
      CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE60], v5);
      CFRelease(v5);
      v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (v9)
      {
        v10 = v9;
        AVE_CFDict_AddSInt32(v6, *(a1 + 52), v9);
        AVE_CFDict_AddSInt32(v7, *(a1 + 60), v10);
        AVE_CFDict_AddSInt32(v8, *(a1 + 68), v10);
        CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE78], v10);
        CFRelease(v10);
        v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (v11)
        {
          v12 = v11;
          MetaData = AVE_DRC_MakeMetaData((a1 + 72), v11);
          if (MetaData)
          {
            if (AVE_Log_CheckLevel(0xE2u, 4))
            {
              v14 = AVE_Log_CheckConsole(0xE2u);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              if (v14)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DPB_MakeSnapshotEntry", 227, "ret == 0", a1, a2, MetaData);
                v17 = AVE_GetCurrTime();
                v29 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d", v17, 226, v29);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d", CurrTime, 226, LevelStr);
              }
            }
          }

          else
          {
            CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE88], v12);
          }

          CFRelease(v12);
          return MetaData;
        }

        if (AVE_Log_CheckLevel(0xE2u, 4))
        {
          v26 = AVE_Log_CheckConsole(0xE2u);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 223, "pTmpDict != __null", a1, a2, 0);
            goto LABEL_24;
          }

LABEL_30:
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d", v23, 226, v24);
        }

        return 4294966293;
      }

      if (!AVE_Log_CheckLevel(0xE2u, 4))
      {
        return 4294966293;
      }

      v25 = AVE_Log_CheckConsole(0xE2u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (!v25)
      {
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 206, "pTmpDict != __null", a1, a2, 0);
    }

    else
    {
      if (!AVE_Log_CheckLevel(0xE2u, 4))
      {
        return 4294966293;
      }

      v22 = AVE_Log_CheckConsole(0xE2u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (!v22)
      {
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 189, "pTmpDict != __null", a1, a2, 0);
    }

LABEL_24:
    v27 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d", v27, 226, v31);
    return 4294966293;
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v18 = AVE_Log_CheckConsole(0xE2u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v19, 226, v20, "AVE_DPB_MakeSnapshotEntry", 170, "pEntry != __null && pDict != __null", a1, a2, 0);
      v21 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v21, 226, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v19, 226, v20);
    }
  }

  return 4294966295;
}

uint64_t AVE_DPB_RetrieveSnapshot(CFDictionaryRef theDict, char *a2)
{
  v37 = 0;
  if (!theDict || !a2)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v14 = AVE_Log_CheckConsole(0xE2u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DPB_RetrieveSnapshot", 261, "pDict != __null && pSnapshot != __null", theDict, a2, 0);
        v17 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v17, 226, v34);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 226, LevelStr);
      }
    }

    return 4294966295;
  }

  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE10], &v37);
  *(a2 + 340) = v37;
  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE20], &v37);
  *(a2 + 341) = v37;
  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE18], &v37);
  *(a2 + 342) = v37;
  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE28], &v37);
  v4 = v37;
  *(a2 + 343) = v37;
  if (v4 >= 17)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v18 = AVE_Log_CheckConsole(0xE2u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *(a2 + 343);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | number of reference is out of range %d %d\n", v19, 226, v20, "AVE_DPB_RetrieveSnapshot", 274, "pSnapshot->num_ref_frame <= ((16) > (16) ? (16) : (16))", *(a2 + 343), 16);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | number of reference is out of range %d %d", v19, 226, v20, "AVE_DPB_RetrieveSnapshot", 274, "pSnapshot->num_ref_frame <= ((16) > (16) ? (16) : (16))", *(a2 + 343), 16);
    }

    return 4294966296;
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE30]);
  if (!Value)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v22 = AVE_Log_CheckConsole(0xE2u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d\n", v23, 226, v24, "AVE_DPB_RetrieveSnapshot", 278, "pTmpArray != __null", theDict, a2, 0);
        v25 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d", v25, 226, v35);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d", v23, 226, v24);
      }
    }

    return 4294966288;
  }

  v6 = Value;
  Count = CFArrayGetCount(Value);
  v8 = Count;
  if (Count > 17)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v26 = AVE_Log_CheckConsole(0xE2u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | number of reference buffer is out of range %d %d\n", v27, 226, v28, "AVE_DPB_RetrieveSnapshot", 284, "num <= (((16) > (16) ? (16) : (16)) + 1)", v8, 17);
        v27 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | number of reference buffer is out of range %d %d", v27);
    }

    return 4294966296;
  }

  if (Count < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = Count & 0x7FFFFFFF;
  for (i = a2; ; i += 80)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    SnapshotEntry = AVE_DPB_RetrieveSnapshotEntry(ValueAtIndex, i);
    if (SnapshotEntry)
    {
      break;
    }

    if (v10 == ++v9)
    {
      return SnapshotEntry;
    }
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v29 = AVE_Log_CheckConsole(0xE2u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(4);
    if (v29)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d\n", v30, 226, v31, "AVE_DPB_RetrieveSnapshot", 293, "ret == 0", theDict, a2, ValueAtIndex, v9, SnapshotEntry);
      v32 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d", v32, 226, v36, "AVE_DPB_RetrieveSnapshot");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d", v30, 226, v31, "AVE_DPB_RetrieveSnapshot");
    }
  }

  return SnapshotEntry;
}

uint64_t AVE_DPB_MakeSnapshot(int *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE10], a1[340], a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE20], a1[341], a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE18], a1[342], a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE28], a1[343], a2);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v5 = Mutable;
      if (a1[343] < 0)
      {
        SnapshotEntry = 0;
LABEL_19:
        CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE30], v5);
        CFRelease(v5);
        return SnapshotEntry;
      }

      v6 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = MEMORY[0x29EDB9010];
        v10 = MEMORY[0x29EDB9020];
        v11 = a1;
        while (1)
        {
          SnapshotEntry = AVE_DPB_MakeSnapshotEntry(v11, v7);
          CFArrayAppendValue(v5, v7);
          CFRelease(v7);
          if (v8 >= a1[343])
          {
            goto LABEL_19;
          }

          ++v8;
          v7 = CFDictionaryCreateMutable(0, 0, v9, v10);
          v11 += 20;
          if (!v7)
          {
            goto LABEL_21;
          }
        }
      }

      LODWORD(v8) = 0;
      LODWORD(SnapshotEntry) = 0;
      v11 = a1;
LABEL_21:
      if (AVE_Log_CheckLevel(0xE2u, 4))
      {
        v21 = AVE_Log_CheckConsole(0xE2u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d\n", CurrTime, 226, LevelStr, "AVE_DPB_MakeSnapshot", 339, "pTmpDict != __null", a1, a2, v11, v8, SnapshotEntry);
          v24 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d", v24, 226, v28, "AVE_DPB_MakeSnapshot");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d", CurrTime, 226, LevelStr, "AVE_DPB_MakeSnapshot");
        }
      }

      CFRelease(v5);
    }

    else if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v17 = AVE_Log_CheckConsole(0xE2u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d\n", v18, 226, v19, "AVE_DPB_MakeSnapshot", 329, "pTmpArray != __null", a1, a2, 0);
        v20 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d", v20, 226, v27);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d", v18, 226, v19);
      }
    }

    return 4294966293;
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v13 = AVE_Log_CheckConsole(0xE2u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v14, 226, v15, "AVE_DPB_MakeSnapshot", 316, "pDict != __null && pSnapshot != __null", a2, a1, 0);
      v16 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v16, 226, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v14, 226, v15);
    }
  }

  return 4294966295;
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

uint64_t AVE_PIP_GetInfo(CFDictionaryRef theDict, _DWORD *a2)
{
  if (theDict && a2)
  {
    a2[8] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    Value = CFDictionaryGetValue(theDict, @"PictureInPictureRegion");
    if (Value)
    {
      Entry = AVE_PIP_RetrieveEntry(Value, a2 + 1);
      if (Entry)
      {
        if (AVE_Log_CheckLevel(0x32u, 4))
        {
          v6 = AVE_Log_CheckConsole(0x32u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v6)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", CurrTime, 50, LevelStr, "AVE_PIP_GetInfo", 229, "ret == 0", theDict, a2, Entry);
            v9 = AVE_GetCurrTime();
            v14 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v9, 50, v14);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", CurrTime, 50, LevelStr);
          }
        }
      }

      else
      {
        *a2 = 1;
      }
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x32u);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 50, v12, "AVE_PIP_GetInfo", 217, "pProperty != __null && pInfo != __null", theDict, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 50);
    }

    return 4294966295;
  }

  return Entry;
}

uint64_t AVE_CheckQP(int a1, int a2)
{
  if (-6 * a2 + 48 <= a1 && a1 <= 51)
  {
    return 0;
  }

  else
  {
    return 4294966278;
  }
}

uint64_t AVE_CheckQPRange(int *a1, int a2)
{
  v2 = -6 * a2 + 48;
  v3 = a1[1];
  if (v2 <= *a1 && *a1 <= 51)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1018;
  }

  if (v2 <= v3 && v3 <= 51)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1018;
  }

  return (v7 + v5);
}

uint64_t HEVC_FindProfile(int a1)
{
  v1 = &dword_29EDD3D14;
  v2 = 10;
  while (*v1 != a1)
  {
    v1 += 6;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

uint64_t HEVC_FindProfileIdc(int a1)
{
  if ((a1 - 1) < 0xA)
  {
    return gsc_saHEVC_Profiles[6 * (a1 - 1) + 1];
  }

  result = AVE_Log_CheckLevel(0xD1u, 4);
  if (result)
  {
    v3 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", CurrTime, 209, LevelStr, "HEVC_FindProfileIdc", 101, "(HEVC_Profile_Invalid < eProfile) && (eProfile < HEVC_Profile_Max)", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", CurrTime);
    return 0;
  }

  return result;
}

int *HEVC_FindProfileEntry(int a1)
{
  result = &gsc_saHEVC_Profiles;
  v3 = 10;
  while (*result != a1)
  {
    result += 6;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t HEVC_FindTier(int a1)
{
  v1 = 0;
  for (i = 1; ; i = 0)
  {
    v3 = i;
    if (gsc_saHEVC_Tiers[4 * v1 + 1] == a1)
    {
      break;
    }

    v1 = 1;
    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  return gsc_saHEVC_Tiers[4 * v1];
}

uint64_t HEVC_FindTierFlag(int a1)
{
  if ((a1 - 1) < 2)
  {
    return gsc_saHEVC_Tiers[4 * (a1 - 1) + 1];
  }

  result = AVE_Log_CheckLevel(0xD1u, 4);
  if (result)
  {
    v3 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", CurrTime, 209, LevelStr, "HEVC_FindTierFlag", 211, "(HEVC_Tier_Invalid < eTier) && (eTier < HEVC_Tier_Max)", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", CurrTime);
    return 0;
  }

  return result;
}

uint64_t HEVC_FindLevel(int a1, int a2, int a3, int a4, int a5, int a6)
{
  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v12 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d %d %d %d\n", CurrTime, 209, LevelStr, "HEVC_FindLevel", a1, a2, a3, a4, a5, a6);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d %d %d %d", CurrTime, 209);
  }

  v15 = 0;
  if (a3 <= a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = a3;
  }

  v17 = a4 * a3;
  if (a1 == 3)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17 * a5;
  }

  if (a1 == 3)
  {
    v19 = 0;
  }

  else
  {
    v19 = a6;
  }

  for (i = gsc_saHEVC_LevelLimits; v17 > i[2] || v16 > i[3] || v18 > *(i + 2); i += 12)
  {
    if (v15 > 0x10)
    {
      goto LABEL_26;
    }

LABEL_20:
    ++v15;
  }

  if (*&i[2 * a2 + 4] < v19 && v15 < 0x11)
  {
    goto LABEL_20;
  }

LABEL_26:
  v22 = *i;
  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v23 = AVE_Log_CheckConsole(0xD1u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(6);
    if (v23)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d %lld %d %d\n", v24, 209, v25, "HEVC_FindLevel", a1, a2, a3, a4, v18, a6, v22);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d %lld %d %d", v26, 209, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d %lld %d %d", v24, 209, v25);
    }
  }

  return v22;
}

uint64_t HEVC_FindLevel(int a1)
{
  v1 = &dword_295662EE4;
  v2 = 18;
  while (*v1 != a1)
  {
    v1 += 12;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

uint64_t HEVC_FindLevelIdc(int a1)
{
  if ((a1 - 1) < 0x12)
  {
    return gsc_saHEVC_LevelLimits[12 * (a1 - 1) + 1];
  }

  result = AVE_Log_CheckLevel(0xD1u, 4);
  if (result)
  {
    v3 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", CurrTime, 209, LevelStr, "HEVC_FindLevelIdc", 378, "(HEVC_Level_Invalid < eLevel) && (eLevel < HEVC_Level_Max)", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", CurrTime);
    return 0;
  }

  return result;
}

uint64_t htpc_decompress_plane(uint64_t result, const unsigned __int8 *a2, _BYTE *a3, int a4, int a5, int a6, int a7, unsigned int a8, char a9, unsigned int a10)
{
  v51 = result;
  v82 = *MEMORY[0x29EDCA608];
  v73[128] = 4;
  v73[129] = a6;
  v45 = 1;
  v74 = 1 << (a6 - 1);
  v75 = 0x1000000001;
  v76 = 0u;
  v77 = 0u;
  v69[64] = 4;
  v69[65] = a6;
  v69[66] = v74;
  v70 = 0x1000000001;
  if (a6 <= 8)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  v47 = v10;
  v71 = 0uLL;
  v72 = 0uLL;
  v65[64] = 4;
  v65[65] = a6;
  v65[66] = 1 << (a6 - 1);
  v66 = 0x1000000001;
  v67 = 0uLL;
  v68 = 0uLL;
  if (a5 >= 1)
  {
    v44 = 0;
    v56 = 0;
    v11 = a6 != 8;
    if (a6 == 8)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (a7)
    {
      v13 = 8;
    }

    else
    {
      v13 = 16;
    }

    v14 = -1 << a6;
    if (a7)
    {
      v11 = v12;
    }

    v15 = a8 >> v11;
    if (a7)
    {
      v16 = 3;
    }

    else
    {
      v16 = 4;
    }

    v43 = 16 * v15;
    v63 = v13;
    v49 = 2 * v13;
    v50 = v16;
    if (a7)
    {
      v17 = 8;
    }

    else
    {
      v17 = 4;
    }

    v46 = v17;
    v18 = ~v14;
    v54 = 2 * v15;
    v55 = v15;
    v42 = 8 * v15;
    v48 = ~v14;
    do
    {
      if (a4 >= 1)
      {
        v19 = 0;
        v20 = v44;
        v21 = v45;
        do
        {
          v22 = *(v51 + (v56 >> 3 >> a9) * a10 + 4 * ((v19 >> v50 << a9) + (~(-1 << a9) & (v56 >> 3))));
          v23 = &a2[v22 & 0xFFFFFFF];
          v79 = v23;
          v80 = 0;
          v78 = 0;
          if (v22 >> 28)
          {
            result = htpc_entropy::dec_symbols(&v78, v47, v46, v81, 128, 16);
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            do
            {
              v25 -= a6;
              HIDWORD(v78) = v25;
              if (v25 < 0)
              {
                do
                {
                  v27 = v23 + 1;
                  v79 = v23 + 1;
                  v26 = *v23 | (v26 << 8);
                  v25 += 8;
                  v78 = __PAIR64__(v25, v26);
                  ++v23;
                }

                while (v25 >= 8);
              }

              else
              {
                v27 = v23;
              }

              v81[v24++] = (v26 >> v25) & v18;
              v23 = v27;
            }

            while (v24 != 128);
          }

          v28 = 0;
          v29 = 0;
          v58 = v20;
          v53 = v21;
          v30 = v21;
          do
          {
            v31 = 0;
            v57 = v30;
            do
            {
              v33 = (v29 | v56) < a5 && v19 + v31 < a4;
              v34 = &v81[v28];
              v35 = *v34;
              v36 = v22 >> 28;
              if (a7)
              {
                if (v36)
                {
                  result = htpc_codec<8,8>::dec_sample(v69, v29, v31, v35);
                  LOWORD(v35) = result;
                }

                if (v33)
                {
                  v37 = v30 - 1;
                  if (a6 == 8)
                  {
                    a3[v37] = v35;
                  }

                  else
                  {
                    *&a3[2 * v37] = v35;
                  }
                }

                v39 = v34[1];
                if (v36)
                {
                  result = htpc_codec<8,8>::dec_sample(v65, v29, v31, v39);
                  LOWORD(v39) = result;
                }

                if (v33)
                {
                  if (a6 == 8)
                  {
                    a3[v30] = v39;
                  }

                  else
                  {
                    *&a3[2 * v30] = v39;
                  }
                }

                v40 = 2;
              }

              else
              {
                if (v36)
                {
                  result = htpc_codec<16,8>::dec_sample(v73, v29, v31, v35);
                  LOWORD(v35) = result;
                }

                if (v33)
                {
                  v38 = (v58 + v31);
                  if (a6 == 8)
                  {
                    a3[v38] = v35;
                  }

                  else
                  {
                    *&a3[2 * v38] = v35;
                  }
                }

                v40 = 1;
              }

              v28 += v40;
              ++v31;
              v30 += 2;
            }

            while (v63 != v31);
            ++v29;
            v30 = v57 + v54;
            v58 += v55;
          }

          while (v29 != 8);
          v19 += v63;
          v18 = v48;
          v21 = v53 + v49;
          v20 += v63;
        }

        while (v19 < a4);
      }

      v45 += v43;
      v44 += v42;
      v56 += 8;
    }

    while (v56 < a5);
  }

  v41 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t htpc_entropy::get_bits(htpc_entropy *this, int a2)
{
  v2 = *this;
  v3 = *(this + 1) - a2;
  *(this + 1) = v3;
  if (v3 < 0)
  {
    v6 = *(this + 1);
    v5 = *(this + 2);
    do
    {
      v7 = v6 + 1;
      *(this + 1) = v6 + 1;
      if (v5 && v6 >= v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = *v6;
      }

      v2 = v8 | (v2 << 8);
      v4 = v3 + 8;
      *this = v2;
      *(this + 1) = v3 + 8;
      v6 = v7;
      v9 = v3 < -8;
      v3 += 8;
    }

    while (v9);
  }

  else
  {
    v4 = v3;
  }

  return (v2 >> v4) & ~(-1 << a2);
}

uint64_t htpc_entropy::dec_symbols(htpc_entropy *this, int a2, unsigned int a3, int *a4, int a5, int a6)
{
  if (*(this + 1))
  {
    htpc_entropy::dec_symbols();
  }

  v8 = *(this + 1);
  v33 = a5 - 1;
  if (a5 >= 1)
  {
    v10 = a3;
    v30 = *(this + 1);
    v11 = 0;
    v12 = 0;
    v13 = a6 + 1;
    v35 = -a3;
    v36 = a3;
    v31 = a6 + 1;
    do
    {
      v14 = htpc_entropy::get_bits(this, a2) + 2;
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      if (v10 >= 1)
      {
        v16 = 0;
        v17 = v14 > v13;
        if (v11 <= a5)
        {
          v18 = a5;
        }

        else
        {
          v18 = v11;
        }

        v19 = (v18 - v11);
        v20 = &a4[v11];
        do
        {
          if (v19 == v16)
          {
            break;
          }

          *v20 = htpc_entropy::get_bits(this, v15);
          if ((~v16 & 3) == 0)
          {
            if (v17 || (v21 = *(this + 2)) != 0 && *(this + 1) > v21)
            {
              v17 = 0;
              *(v20 - 1) = 0;
              *(v20 - 3) = 0;
            }

            else
            {
              v17 = 0;
            }
          }

          ++v16;
          ++v20;
        }

        while (v36 != v16);
        v22 = 0;
        v10 = a3;
        v23 = v33;
        v13 = v31;
        v24 = v35;
        do
        {
          v25 = v11 + v22;
          if (v11 + v22 >= a5)
          {
            break;
          }

          if (v12)
          {
            v26 = v22 + v11;
            if ((v22 + v11 + a3 + a3 * (a4[v26] & 0x1F)) >= a5)
            {
              v27 = v23 - v11;
            }

            else
            {
              v27 = a3 + a3 * (a4[v26] & 0x1F);
            }

            a4[v26] = 0;
            if (v27)
            {
              bzero(&a4[v22 + 1 + v11], 4 * v27);
              v11 += v27;
              v25 = v22 + v11;
            }

            v24 = v35;
          }

          if (a4[v25] == 1)
          {
            v12 = 0;
            v28 = v24 + v22 == -2 || a3 == 1;
            if (v28 && v25 + 2 < a5)
            {
              a4[v25] = 0;
              v12 = 1;
            }
          }

          else
          {
            v12 = 0;
          }

          ++v22;
          --v23;
        }

        while (v24 + v22);
      }

      v11 += v10;
    }

    while (v11 < a5);
    LODWORD(v8) = v30;
    if (*(this + 1) >= 8)
    {
      htpc_entropy::dec_symbols();
    }
  }

  *(this + 1) = 0;
  return (*(this + 2) - v8);
}

uint64_t htpc_codec<16,8>::dec_sample(_DWORD *a1, int a2, int a3, int a4)
{
  if (a1[131])
  {
    v8 = htpc_codec<16,8>::pred_mmap(a1, a2, a3);
  }

  else
  {
    v9 = a1 + 130;
    if (a2 >= 1)
    {
      v9 = &a1[16 * (a2 - 1) + a3];
    }

    if (a3 >= 1)
    {
      v9 = &a1[16 * a2 + (a3 - 1)];
    }

    v8 = *v9;
    a1[133] = *v9;
  }

  v10 = a4 >> 1;
  if (a4)
  {
    v10 = -v10;
  }

  a1[139] = v10;
  v11 = v8 + v10;
  if (v11 < 0 || v11 >> a1[129])
  {
    a1[140] = 1;
  }

  result = v11 & ~(-1 << a1[132]);
  a1[16 * a2 + a3] = result;
  return result;
}

uint64_t htpc_codec<8,8>::dec_sample(_DWORD *a1, int a2, int a3, int a4)
{
  if (a1[67])
  {
    v8 = htpc_codec<8,8>::pred_mmap(a1, a2, a3);
  }

  else
  {
    v9 = a1 + 66;
    if (a2 >= 1)
    {
      v9 = &a1[8 * (a2 - 1) + a3];
    }

    if (a3 >= 1)
    {
      v9 = &a1[8 * a2 + a3 - 1];
    }

    v8 = *v9;
    a1[69] = *v9;
  }

  v10 = a4 >> 1;
  if (a4)
  {
    v10 = -v10;
  }

  a1[75] = v10;
  v11 = v8 + v10;
  if (v11 < 0 || v11 >> a1[65])
  {
    a1[76] = 1;
  }

  result = v11 & ~(-1 << a1[68]);
  a1[8 * a2 + a3] = result;
  return result;
}

uint64_t htpc_codec<16,8>::pred_mmap(_DWORD *a1, int a2, int a3)
{
  if (a2)
  {
    if (a3 % a1[128])
    {
      v3 = a1[138] + a1[139];
      a1[138] = v3;
      v4 = a1[136];
      v5 = a1[137];
    }

    else
    {
      if (a3 <= 0)
      {
        v9 = (a2 - 2);
        v10 = (a2 - 1);
        if (a2 <= 1)
        {
          v10 = v10;
          v9 = v10;
        }

        v5 = a1[16 * v9 + a3];
        a1[134] = v5;
        v8 = &a1[16 * v10 + a3];
      }

      else
      {
        v8 = &a1[16 * a2 + (a3 - 1)];
        v5 = *(v8 - 16);
        a1[134] = v5;
      }

      v11 = *v8;
      a1[133] = *v8;
      v3 = v11 - v5;
      if (v11 >= v5)
      {
        v4 = v5;
      }

      else
      {
        v4 = v11;
      }

      a1[136] = v4;
      if (v11 > v5)
      {
        v5 = v11;
      }

      a1[137] = v5;
      a1[138] = v3;
    }

    v12 = a1[16 * a2 - 16 + a3];
    a1[135] = v12;
    if (v12 < v4)
    {
      v4 = v12;
    }

    a1[136] = v4;
    if (v12 > v5)
    {
      v5 = v12;
    }

    a1[137] = v5;
    v13 = v3 + v12;
    if (v13 < v5)
    {
      v5 = v13;
    }

    if (v13 >= v4)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v6 = &a1[a3 - 1];
    if (a3 <= 0)
    {
      v6 = a1 + 130;
    }

    v7 = *v6;
    a1[133] = v7;
  }

  return v7;
}

uint64_t htpc_codec<8,8>::pred_mmap(_DWORD *a1, int a2, int a3)
{
  if (a2)
  {
    if (a3 % a1[64])
    {
      v3 = a1[74] + a1[75];
      a1[74] = v3;
      v4 = a1[72];
      v5 = a1[73];
    }

    else
    {
      if (a3 <= 0)
      {
        v9 = (a2 - 2);
        v10 = (a2 - 1);
        if (a2 <= 1)
        {
          v10 = v10;
          v9 = v10;
        }

        v5 = a1[8 * v9 + a3];
        a1[70] = v5;
        v8 = &a1[8 * v10 + a3];
      }

      else
      {
        v8 = &a1[8 * a2 + a3 - 1];
        v5 = *(v8 - 8);
        a1[70] = v5;
      }

      v11 = *v8;
      a1[69] = *v8;
      v3 = v11 - v5;
      if (v11 >= v5)
      {
        v4 = v5;
      }

      else
      {
        v4 = v11;
      }

      a1[72] = v4;
      if (v11 > v5)
      {
        v5 = v11;
      }

      a1[73] = v5;
      a1[74] = v3;
    }

    v12 = a1[8 * a2 - 8 + a3];
    a1[71] = v12;
    if (v12 < v4)
    {
      v4 = v12;
    }

    a1[72] = v4;
    if (v12 > v5)
    {
      v5 = v12;
    }

    a1[73] = v5;
    v13 = v3 + v12;
    if (v13 < v5)
    {
      v5 = v13;
    }

    if (v13 >= v4)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v6 = &a1[a3 - 1];
    if (a3 <= 0)
    {
      v6 = a1 + 66;
    }

    v7 = *v6;
    a1[69] = v7;
  }

  return v7;
}

void AVE_VCP::AVE_VCP(AVE_VCP *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
}

uint64_t AVE_VCP::Uninit(AVE_VCP *this)
{
  v2 = *this;
  if (AVE_Log_CheckLevel(0x13u, 6))
  {
    v3 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 19, LevelStr, "AVE_VCP", "Uninit", this, v2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  kdebug_trace();
  v6 = *(this + 3);
  if (v6)
  {
    if (*(this + 4))
    {
      v7 = dlsym(v6, "VCPAVEContextRelease");
      if (v7)
      {
        v7(*(this + 4));
      }

      else if (AVE_Log_CheckLevel(0x13u, 5))
      {
        v8 = AVE_Log_CheckConsole(0x13u);
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(5);
        v11 = *this;
        v12 = dlerror();
        if (v8)
        {
          printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld | %s\n", v9, 19, v10, "AVE_VCP", "Uninit", 160, this, v11, v12);
          v9 = AVE_GetCurrTime();
          v10 = AVE_Log_GetLevelStr(5);
          v13 = *this;
          dlerror();
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld | %s", v9, 19, v10);
      }
    }

    dlclose(*(this + 3));
  }

  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 6))
  {
    v14 = AVE_Log_CheckConsole(0x13u);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v15, 19, v16, "AVE_VCP", "Uninit", this, v2, 0);
      v15 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v15, 19);
  }

  return 0;
}

void AVE_VCP::~AVE_VCP(AVE_VCP *this)
{
  AVE_VCP::Uninit(this);
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
}

uint64_t AVE_VCP::Init(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (AVE_Log_CheckLevel(0x13u, 6))
  {
    v10 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d\n", CurrTime, 19, LevelStr, "AVE_VCP", "Init", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", v13, 19, v54);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", CurrTime, 19, LevelStr);
    }
  }

  kdebug_trace();
  v14 = AVE_VCP::Init(unsigned long long,_E_AVE_EncType,int,int)::sc_iaEncType[a3];
  v15 = dlopen("/System/Library/PrivateFrameworks/VideoProcessing.framework/VideoProcessing", 1);
  a1[3] = v15;
  if (v15)
  {
    v16 = dlsym(v15, "VCPAVEContextCreate");
    if (v16)
    {
      v17 = v16(v14, a4, a5);
      a1[4] = v17;
      if (!v17 && AVE_Log_CheckLevel(0x13u, 5))
      {
        v18 = AVE_Log_CheckConsole(0x13u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(5);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d VCP context create fail %p %lld %d %d %d\n", v19, 19, v20, "AVE_VCP", "Init", 81, a1, a2, a3, a4, a5);
          v19 = AVE_GetCurrTime();
          v55 = AVE_Log_GetLevelStr(5);
        }

        else
        {
          v55 = v20;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d VCP context create fail %p %lld %d %d %d", v19, 19, v55, "AVE_VCP");
      }
    }

    else if (AVE_Log_CheckLevel(0x13u, 5))
    {
      v25 = AVE_Log_CheckConsole(0x13u);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(5);
      v28 = dlerror();
      if (v25)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v26, 19, v27, "AVE_VCP", "Init", 73, a1, a2, a3, a4, a5, v28);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v26, 19, v27, "AVE_VCP", "Init");
    }

    v29 = dlsym(a1[3], "VCPCompressionAllocateDPB");
    a1[5] = v29;
    if (!v29 && AVE_Log_CheckLevel(0x13u, 5))
    {
      v30 = AVE_Log_CheckConsole(0x13u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(5);
      v33 = dlerror();
      if (v30)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v31, 19, v32, "AVE_VCP", "Init", 90, a1, a2, a3, a4, a5, v33);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v31, 19, v32, "AVE_VCP", "Init");
    }

    v34 = dlsym(a1[3], "VCPAVEScaleReferenceFrames");
    a1[6] = v34;
    if (!v34 && AVE_Log_CheckLevel(0x13u, 5))
    {
      v35 = AVE_Log_CheckConsole(0x13u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(5);
      v38 = dlerror();
      if (v35)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v36, 19, v37, "AVE_VCP", "Init", 98, a1, a2, a3, a4, a5, v38);
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v36, 19, v37, "AVE_VCP", "Init");
    }

    v39 = dlsym(a1[3], "VCPAVEExtraInloopChromaFilter");
    a1[7] = v39;
    if (!v39 && AVE_Log_CheckLevel(0x13u, 5))
    {
      v40 = AVE_Log_CheckConsole(0x13u);
      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(5);
      v43 = dlerror();
      if (v40)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v41, 19, v42, "AVE_VCP", "Init", 106, a1, a2, a3, a4, a5, v43);
        v41 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v41, 19, v42, "AVE_VCP", "Init");
    }

    v44 = dlsym(a1[3], "VCPAVECalculateFrameChecksum");
    a1[8] = v44;
    if (!v44 && AVE_Log_CheckLevel(0x13u, 5))
    {
      v45 = AVE_Log_CheckConsole(0x13u);
      v46 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(5);
      v48 = dlerror();
      if (v45)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v46, 19, v47, "AVE_VCP", "Init", 114, a1, a2, a3, a4, a5, v48);
        v46 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v46, 19, v47, "AVE_VCP", "Init");
    }

    *a1 = a2;
    *(a1 + 2) = a3;
    *(a1 + 3) = a4;
    *(a1 + 4) = a5;
    *(a1 + 5) = v14;
  }

  else if (AVE_Log_CheckLevel(0x13u, 5))
  {
    v21 = AVE_Log_CheckConsole(0x13u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(5);
    v24 = dlerror();
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d Unable to open VCP lib %p %lld %d %d %d | %s\n", v22, 19, v23, "AVE_VCP", "Init", 64, a1, a2, a3, a4, a5, v24);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(5);
      dlerror();
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to open VCP lib %p %lld %d %d %d | %s", v22, 19, v23, "AVE_VCP", "Init");
  }

  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 6))
  {
    v49 = AVE_Log_CheckConsole(0x13u);
    v50 = AVE_GetCurrTime();
    v51 = AVE_Log_GetLevelStr(6);
    if (v49)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d\n", v50, 19, v51, "AVE_VCP", "Init", a1, a2, a3, a4, a5, 0);
      v52 = AVE_GetCurrTime();
      v56 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d", v52, 19, v56);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d", v50, 19, v51);
    }
  }

  return 0;
}

uint64_t AVE_VCP::AllocDPB(AVE_VCP *this, const __CFDictionary *a2, uint64_t a3, const __CFArray **a4)
{
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v8 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p 0x%x %p\n", CurrTime, 19, LevelStr, "AVE_VCP", "AllocDPB", this, *this, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v11 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p 0x%x %p", CurrTime, 19, LevelStr, "AVE_VCP");
  }

  v12 = *this;
  kdebug_trace();
  v13 = *(this + 5);
  if (v13)
  {
    v14 = v13(a2, *(this + 5), *(this + 3), *(this + 4), a3);
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x13u, 5))
      {
        v16 = AVE_Log_CheckConsole(0x13u);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(5);
        v19 = *(this + 4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to allocate DPB %p %lld %p %d %d %d 0x%x\n", v17, 19, v18, "AVE_VCP", "AllocDPB", 204, this, *this, a2, *(this + 5), *(this + 3), *(this + 4), a3);
          v17 = AVE_GetCurrTime();
          v18 = AVE_Log_GetLevelStr(5);
          v31 = *(this + 4);
          v29 = *(this + 5);
          v30 = *(this + 3);
          v28 = *this;
        }

        else
        {
          v32 = *(this + 4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d fail to allocate DPB %p %lld %p %d %d %d 0x%x", v17, 19, v18, "AVE_VCP", "AllocDPB");
      }

      v14 = 0;
      v15 = 4294966293;
    }
  }

  else
  {
    v14 = 0;
    v15 = 4294966294;
  }

  *a4 = v14;
  v20 = *this;
  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v21 = AVE_Log_CheckConsole(0x13u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(8);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p 0x%x %p %d\n", v22, 19, v23, "AVE_VCP", "AllocDPB", this, *this, a2, a3, a4, v15);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(8);
      v27 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p 0x%x %p %d", v24, 19, v25, "AVE_VCP", "AllocDPB");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p 0x%x %p %d", v22, 19, v23, "AVE_VCP", "AllocDPB");
    }
  }

  return v15;
}

uint64_t AVE_VCP::ScaleRefFrames(AVE_VCP *this, const __CFDictionary *a2, const __CFArray *a3)
{
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", CurrTime, 19, LevelStr, "AVE_VCP", "ScaleRefFrames", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", CurrTime, 19, LevelStr);
  }

  v10 = *this;
  kdebug_trace();
  v11 = *(this + 6);
  if (v11 && (v12 = *(this + 4)) != 0)
  {
    v13 = v11(v12, a2, a3);
    if (AVE_Log_CheckLevel(0x13u, 8))
    {
      v14 = AVE_Log_CheckConsole(0x13u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(8);
      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %p %p %d\n", v15, 19, v16, "AVE_VCP", "ScaleRefFrames", 243, this, *this, *(this + 4), a2, a3, v13);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(8);
        v17 = *this;
        v30 = *(this + 4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %p %d", v15, 19, v16, "AVE_VCP", "ScaleRefFrames", 243);
    }

    if (v13)
    {
      if (AVE_Log_CheckLevel(0x13u, 5))
      {
        v18 = AVE_Log_CheckConsole(0x13u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(5);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to scale ref frame %p %lld %p %p %p %d\n", v19, 19, v20, "AVE_VCP", "ScaleRefFrames", 249, this, *this, *(this + 4), a2, a3, v13);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(5);
          v31 = *(this + 4);
          v29 = *this;
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to scale ref frame %p %lld %p %p %p %d", v21, 19, v22, "AVE_VCP", "ScaleRefFrames", 249);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to scale ref frame %p %lld %p %p %p %d", v19, 19, v20, "AVE_VCP", "ScaleRefFrames", 249);
        }
      }

      v13 = 4294966296;
    }
  }

  else
  {
    v13 = 4294966294;
  }

  v23 = *this;
  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v24 = AVE_Log_CheckConsole(0x13u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(8);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d\n", v25, 19, v26, "AVE_VCP", "ScaleRefFrames", this, *this, a2, a3, v13);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(8);
      v27 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d", v25, 19, v26, "AVE_VCP");
  }

  return v13;
}

uint64_t AVE_VCP::ChromaFilter(AVE_VCP *this, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v8 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %d\n", CurrTime, 19, LevelStr, "AVE_VCP", "ChromaFilter", this, *this, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v11 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %d", CurrTime, 19, LevelStr, "AVE_VCP");
  }

  v12 = *this;
  kdebug_trace();
  v13 = *(this + 7);
  if (v13 && (v14 = *(this + 4)) != 0)
  {
    v15 = v13(v14, a2, a3, a4);
    if (AVE_Log_CheckLevel(0x13u, 8))
    {
      v16 = AVE_Log_CheckConsole(0x13u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(8);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %d %d\n", v17, 19, v18, "AVE_VCP", "ChromaFilter", 287, this, *this, *(this + 4), a2, a3, a4, v15);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(8);
        v32 = *this;
        v34 = *(this + 4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %d %d", v17, 19, v18, "AVE_VCP", "ChromaFilter", 287);
    }

    if (v15)
    {
      if (AVE_Log_CheckLevel(0x13u, 5))
      {
        v19 = AVE_Log_CheckConsole(0x13u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(5);
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to filter chroma %p %lld %p %p %lld %d %d\n", v20, 19, v21, "AVE_VCP", "ChromaFilter", 293, this, *this, *(this + 4), a2, a3, a4, v15);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(5);
          v33 = *this;
          v35 = *(this + 4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to filter chroma %p %lld %p %p %lld %d %d", v22, 19, v23, "AVE_VCP", "ChromaFilter", 293);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to filter chroma %p %lld %p %p %lld %d %d", v20, 19, v21, "AVE_VCP", "ChromaFilter", 293);
        }
      }

      v15 = 4294966296;
    }
  }

  else
  {
    v15 = 4294966294;
  }

  v24 = *this;
  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v25 = AVE_Log_CheckConsole(0x13u);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(8);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %d\n", v26, 19, v27, "AVE_VCP", "ChromaFilter", this, *this, a2, a3, a4);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(8);
      v30 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %d", v28, 19, v29, "AVE_VCP");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %d", v26, 19, v27, "AVE_VCP");
    }
  }

  return v15;
}

uint64_t AVE_VCP::CalcChecksum(AVE_VCP *this, const __CFDictionary *a2, uint64_t a3, __CFDictionary *a4)
{
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v8 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %p\n", CurrTime, 19, LevelStr, "AVE_VCP", "CalcChecksum", this, *this, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v11 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %p", CurrTime, 19, LevelStr, "AVE_VCP");
  }

  v12 = *this;
  kdebug_trace();
  if (*(this + 8) && *(this + 4))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v14 = Mutable;
      v15 = (*(this + 8))(*(this + 4), a2, a3, 1, Mutable);
      if (AVE_Log_CheckLevel(0x13u, 8))
      {
        v16 = AVE_Log_CheckConsole(0x13u);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(8);
        if (v16)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %p %d\n", v17, 19, v18, "AVE_VCP", "CalcChecksum", 338, this, *this, *(this + 4), a2, a3, v14, v15);
          v17 = AVE_GetCurrTime();
          v18 = AVE_Log_GetLevelStr(8);
          v33 = *this;
          v35 = *(this + 4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %p %d", v17, 19, v18, "AVE_VCP", "CalcChecksum", 338, this);
      }

      if (v15)
      {
        if (AVE_Log_CheckLevel(0x13u, 5))
        {
          v22 = AVE_Log_CheckConsole(0x13u);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(5);
          if (v22)
          {
            printf("%lld %d AVE %s: %s::%s:%d fail to calculate checksum %p %lld %p %p %lld %p %d\n", v23, 19, v24, "AVE_VCP", "CalcChecksum", 345, this, *this, *(this + 4), a2, a3, v14, v15);
            v25 = AVE_GetCurrTime();
            v26 = AVE_Log_GetLevelStr(5);
            v34 = *this;
            v36 = *(this + 4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d fail to calculate checksum %p %lld %p %p %lld %p %d", v25, 19, v26, "AVE_VCP", "CalcChecksum", 345, this);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d fail to calculate checksum %p %lld %p %p %lld %p %d", v23, 19, v24, "AVE_VCP", "CalcChecksum", 345, this);
          }
        }

        v15 = 4294966296;
      }

      else
      {
        CFDictionaryApplyFunction(v14, AVE_VCP::CalcChecksum(__CFDictionary const*,long long,__CFDictionary*)::$_0::__invoke, a4);
      }

      CFRelease(v14);
    }

    else
    {
      if (AVE_Log_CheckLevel(0x13u, 4))
      {
        v19 = AVE_Log_CheckConsole(0x13u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary\n", v20, 19, v21, "AVE_VCP", "CalcChecksum", 334, "pDict != __null");
          v20 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary", v20);
      }

      v15 = 4294966293;
    }
  }

  else
  {
    v15 = 4294966294;
  }

  v27 = *this;
  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v28 = AVE_Log_CheckConsole(0x13u);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(8);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %p %d\n", v29, 19, v30, "AVE_VCP", "CalcChecksum", this, *this, a2, a3, a4, v15);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(8);
      v31 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %p %d", v29, 19, v30, "AVE_VCP", "CalcChecksum");
  }

  return v15;
}

BOOL interchange_compression::check_valid_lossy_level(interchange_compression *this, unsigned int a2)
{
  v2 = this - 1;
  result = 0;
  if (a2 || v2 >= 2)
  {
    v3 = a2 == 6 || a2 == 8;
    v4 = v3;
    if (this != 2 || !v4)
    {
      v5 = a2 != 25 && a2 - 9 >= 2;
      v6 = !v5;
      if ((this != 3 || !v6) && (a2 > 0x1A || ((1 << a2) & 0x4C00000) == 0 || v2 >= 2))
      {
        return 1;
      }
    }
  }

  return result;
}

interchange_compression::decompressor *interchange_decompress_plane(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, interchange_compression *a11)
{
  v115 = *MEMORY[0x29EDCA608];
  if (a7)
  {
    v11 = 16;
  }

  else
  {
    v11 = 32;
  }

  v106 = v11;
  if ((a6 | 2) != 0xA)
  {
    interchange_decompress_plane();
  }

  if (a7)
  {
    v15 = 8;
  }

  else
  {
    v15 = 1;
  }

  if (a7)
  {
    v16 = 10;
  }

  else
  {
    v16 = 3;
  }

  if (a7)
  {
    v17 = 4;
  }

  else
  {
    v17 = 5;
  }

  v94 = v17;
  if (a6 == 8)
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  v19 = (a10 + a5);
  v20 = &interchange_compression::lossy_parameters[28 * v18];
  v89 = v20[a11 + 4];
  result = interchange_compression::decompressor::decompressor(v113, v18, a11, 0);
  memset(v114, 0, sizeof(v114));
  if (v19)
  {
    v97 = 0;
    v22 = (a9 + a4);
    v23 = (v106 - 1 + HIDWORD(a9) + v22) >> v94;
    v24 = (v106 - 1 + HIDWORD(a10) + v19) >> v94;
    v25 = 32 - __clz(v24 - 1);
    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = 32 - __clz(v23 - 1);
    if (v23 < 2)
    {
      v27 = 0;
    }

    if (v27 >= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    v29 = 5;
    if (a7)
    {
      v29 = 3;
    }

    v86 = v29;
    v87 = 2 * v28;
    v78 = v20 + 8;
    v79 = &interchange_compression::memory_parameters[11 * v18];
    v83 = vdupq_n_s64(v28 - 1);
    v82 = (v28 + 1) & 0x7E;
    v81 = -a9 - a4 * a10;
    v80 = -(2 * a4 * a10 + 2 * a9);
    v30 = vdupq_n_s64(1uLL);
    v31 = vdupq_n_s64(2uLL);
    v84 = v31;
    v85 = v30;
    v88 = v28;
    v102 = v19;
    do
    {
      if (v22)
      {
        v32 = 0;
        v33 = v97 >> v94;
        v93 = v33 * ((v106 - 1 + HIDWORD(a9) + v22) >> v94);
        v105 = ~(-1 << v79[7]);
        v104 = v78[a11];
        v34 = vdupq_n_s64(v33);
        v35 = v80;
        v36 = v81;
        v92 = v34;
        do
        {
          v37 = v32 >> v94;
          if (v28)
          {
            v38 = vdupq_n_s64(v37);
            v39 = 0uLL;
            v40 = v82;
            v41 = xmmword_295650A20;
            do
            {
              v42 = v39;
              v43 = v41;
              v44 = vnegq_s64(v41);
              v45 = vaddq_s64(v43, v43);
              v39 = vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(vshlq_u64(v38, v44), v30), v45), vshlq_u64(vandq_s8(vshlq_u64(v34, v44), v30), vorrq_s8(v45, v30))), v42);
              v41 = vaddq_s64(v41, v31);
              v40 -= 2;
            }

            while (v40);
            v46 = vbslq_s8(vcgtq_u64(v43, v83), v42, v39);
            v47 = vorr_s8(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
          }

          else
          {
            v47 = 0;
          }

          v48 = 0;
          v49 = (a2 + (v37 + v93) * v89);
          v50 = (a1 + ((*&v47 | ((v37 | (v97 >> v94)) >> v28 << v87)) << v86));
          v95 = v36;
          v96 = v35;
          v98 = v32;
          do
          {
            v51 = 0;
            v101 = v48;
            v52 = v97 + v48;
            v53 = v32;
            v100 = v35;
            v54 = v35;
            v99 = v36;
            v55 = v36;
            do
            {
              v109 = v54;
              v110 = v51;
              v111 = v50;
              v56 = v53;
              v57 = *v50;
              v108 = v57 & 0xF0;
              if (*v50)
              {
                v58 = (v57 & v105) + 1;
              }

              else
              {
                v58 = 0;
              }

              v107 = v58;
              v112 = v49;
              v59 = v55;
              interchange_compression::decompressor::decompress(v113, v49, v57, v114);
              v60 = v59;
              LODWORD(v19) = v102;
              v61 = &v114[0][0][1];
              v62 = 0;
              v63 = v109;
              v64 = v60;
              do
              {
                v66 = v62 + v52 >= a10 && v62 + v52 < v102;
                v67 = v56;
                v68 = v63;
                v69 = v64;
                v70 = v61;
                v71 = 8;
                do
                {
                  v73 = v67 >= a9 && v67 < v22;
                  result = (v66 & v73);
                  if (result == 1)
                  {
                    result = *(v70 - 1);
                    if (a7)
                    {
                      v74 = v68 + 1;
                      if (a6 == 8)
                      {
                        *(a3 + v68) = result;
                        result = *v70;
                        *(a3 + v74) = result;
                      }

                      else
                      {
                        *(a3 + 2 * v68) = result;
                        result = *v70;
                        *(a3 + 2 * v74) = result;
                      }
                    }

                    else if (a6 == 8)
                    {
                      *(a3 + v69) = result;
                    }

                    else
                    {
                      *(a3 + 2 * v69) = result;
                    }
                  }

                  v70 += 4;
                  ++v69;
                  v68 += 2;
                  ++v67;
                  --v71;
                }

                while (v71);
                ++v62;
                v61 += 32;
                v64 += a4;
                v63 += 2 * a4;
              }

              while (v62 != 4);
              if (v108 != 240 || a11 == 0)
              {
                v76 = v107;
              }

              else
              {
                v76 = v104;
              }

              v49 = &v112[v76];
              v50 = v111 + 1;
              v51 = v110 + 8;
              v55 = v60 + 8;
              v54 = v109 + 16;
              v53 = v56 + 8;
            }

            while (v110 + 8 < v106);
            v48 = v101 + 4;
            v36 = v99 + 4 * a4;
            v35 = v100 + 8 * a4;
            v32 = v98;
          }

          while (v101 + 4 < v106);
          v32 = v98 + v106;
          v36 = v95 + v106;
          v35 = v96 + 2 * v106;
          LODWORD(v28) = v88;
          v31 = v84;
          v30 = v85;
          v34 = v92;
        }

        while (v98 + v106 < v22);
      }

      v81 += v106 * a4;
      v80 += 2 * v106 * a4;
      v97 += v106;
    }

    while (v97 < v19);
  }

  v77 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t interchange_compression::decompressor::decompress(interchange_compression::decompressor *this, const unsigned __int8 *a2, unsigned int a3, unsigned int (*a4)[4][8][4])
{
  v210 = *MEMORY[0x29EDCA608];
  v8 = interchange_compression::memory_parameters[11 * *(this + 85) + 7];
  if ((*(this + 87) - 1) <= 2)
  {
    subblock_size = interchange_compression::decompressor::get_subblock_size(this, a3);
    v10 = *(this + 85);
    if (subblock_size > interchange_compression::lossy_parameters[28 * v10 + 8 + *(this + 87)] || subblock_size < interchange_compression::decompressor::get_subblock_size(this, LOBYTE(interchange_compression::memory_parameters[11 * v10 + 8])))
    {
      goto LABEL_215;
    }

    if ((~a3 & 0xF0) == 0)
    {
      v11 = *(this + 87);
      if ((v11 - 1) <= 2)
      {
        v12 = 0;
        v13 = vdupq_n_s32(a3);
        v14 = *(this + 85);
        v172 = interchange_compression::lossy_parameters[28 * v14 + 8 + v11] >> 2;
        *v13.i8 = vand_s8(vmovn_s32(vtstq_s32(v13, xmmword_295663280)), 0x1000100010001);
        v187 = vuzp1_s8(*v13.i8, *v13.i8).u32[0];
        v170 = a2;
        v171 = a4;
        while (1)
        {
          memset(v188, 0, sizeof(v188));
          v15 = *(this + 87);
          v16 = *(this + 88);
          v186 = v16;
          v173 = v12;
          if (*(&v187 + v12) != 1)
          {
            break;
          }

          v17 = 0;
          v18 = interchange_compression::lossy_parameters[28 * v14 + 8 + v15] >> 2;
          v204 = &a2[v12 * v172];
          v203 = v18;
          v207 = 1;
          v206 = 0;
          v205 = 8 * v18;
          v19 = &interchange_compression::format_table + 52 * v14;
          v176 = v19 + 12;
          v179 = *(v19 + 2);
          v20 = v16 & 0xFFFFFFFE;
          v174 = &interchange_compression::lossy_parameters[28 * v14 + 12 + 4 * v15];
          v21 = v188;
          do
          {
            v183 = v17;
            v23 = v174;
            v22 = v176;
            v181 = v21;
            v24 = v179;
            if (v179)
            {
              do
              {
                v26 = *v23++;
                v25 = v26;
                v28 = *v22;
                v22 += 4;
                v27 = v28;
                v29 = -1 << v28;
                if (v28 == 32)
                {
                  v30 = -1;
                }

                else
                {
                  v30 = ~v29;
                }

                v31 = 1 << (v27 - 1);
                v32 = (bit_pack::unpack(v202, v27 - v25) << v25) & v30;
                v34 = v20 != 2 || v32 != v31;
                if (v32 >> v25 == v30 >> v25)
                {
                  v35 = v30;
                }

                else
                {
                  v35 = ((1 << (v25 - 1)) - ((v32 >> v25) & 1)) | v32;
                }

                if (!v34 || v32 == 0)
                {
                  v37 = v32;
                }

                else
                {
                  v37 = v35;
                }

                if (!v25)
                {
                  v37 = v32;
                }

                if (v186 != 1)
                {
                  v32 = v37;
                }

                if (v20 == 2)
                {
                  v38 = v31;
                }

                else
                {
                  v38 = 0;
                }

                *v21++ = v32 ^ v38;
                v24 = (v24 - 1);
              }

              while (v24);
            }

            v17 = v183 + 1;
            v21 = v181 + 4;
          }

          while (v183 != 7);
LABEL_175:
          v133 = 0;
          v134 = v188;
          a2 = v170;
          do
          {
            if (*(this + 85) == 27)
            {
              v14 = 27;
            }

            else
            {
              v135 = 0;
              v136 = vdupq_n_s32(v133 + 8 * v173);
              v137.i64[0] = 0x100000001;
              v137.i64[1] = 0x100000001;
              v138 = vshlq_u32(vandq_s8(vshlq_u32(v136, xmmword_295663250), v137), xmmword_295663260);
              v139 = vshlq_u32(vandq_s8(vshlq_u32(v136, xmmword_295663270), v137), xmmword_295663260);
              v140 = (*v171)[(vorr_s8(*v139.i8, *&vextq_s8(v139, v139, 8uLL)).u32[0] | v139.i32[1])][vorr_s8(*v138.i8, *&vextq_s8(v138, v138, 8uLL)).u32[0] | v138.i32[1]];
              do
              {
                v140[v135] = *(v134 + v135);
                ++v135;
                v14 = *(this + 85);
              }

              while (v135 < *(&interchange_compression::format_table + 13 * v14 + 2));
            }

            ++v133;
            ++v134;
          }

          while (v133 != 8);
          v12 = v173 + 1;
          if (v173 == 3)
          {
            goto LABEL_205;
          }
        }

        v39 = (&interchange_compression::format_table + 52 * v14);
        v40 = v39[2];
        v177 = v39;
        v180 = v40;
        v41 = (v39 + 3);
        v169 = *(this + 87);
        LODWORD(v39) = interchange_compression::lossy_parameters[28 * v14 + 8 + v15];
        v204 = &a2[v12 * v172];
        LODWORD(v39) = 2 * v39;
        v203 = (v39 >> 3) & 0x7FFFFFF;
        v207 = 1;
        v206 = 0;
        v182 = v39;
        v205 = v39 & 0x3FFFFFF8;
        v175 = v41;
        if (!v40)
        {
          v184 = 0;
LABEL_84:
          *v199 = 0;
          v200 = 0;
          memset(v198, 0, sizeof(v198));
          v197[0] = interchange_compression::get_id(v177[3]);
          v197[1] = interchange_compression::get_id(v177[4]);
          v197[2] = interchange_compression::get_id(v177[5]);
          v197[3] = interchange_compression::get_id(v177[6]);
          interchange_compression::derive_sharing(v180, v197, v209, v199, v198, v67);
          v195 = 0;
          v196 = 0;
          v193 = 0;
          v194 = 0;
          if (v180)
          {
            v68 = 0;
            do
            {
              v69 = *&v175[v68];
              id = interchange_compression::get_id(v69);
              v71 = v209[v68 / 4];
              v72 = &interchange_compression::dq_consts[160 * id + 10 * v71];
              v73 = interchange_compression::dq_lossy_level[3 * id + v169 - 1];
              v74 = v72[5];
              *(&v195 + v68) = v73 + v72[4];
              *(&v193 + v68) = v74 + v73;
              interchange_compression::adjust_level(id, v71, v199[v68 / 4], v198[v68 / 4], (&v195 + v68), (&v193 + v68), v75);
              v76 = *(&v195 + v68);
              if (v69 < v76)
              {
                v76 = v69;
              }

              *(&v195 + v68) = v76;
              if (v74)
              {
                v77 = v69;
              }

              else
              {
                v77 = 0;
              }

              if (v77 >= *(&v193 + v68))
              {
                v77 = *(&v193 + v68);
              }

              *(&v193 + v68) = v77;
              v68 += 4;
            }

            while (4 * v180 != v68);
          }

          if (v14 == 19 && v209[3] == 1 && v198[3] - HIDWORD(v200) <= 1)
          {
            v195 = 0;
            v196 = 0;
            v193 = 0;
            v194 = 0;
          }

          v192[0] = 0;
          v192[1] = 0;
          v78 = v180;
          v79 = v184;
          if (v180)
          {
            v80 = v192;
            v81 = v208;
            v82 = &v195;
            v83 = v209;
            v84 = v175;
            do
            {
              v85 = *v83++;
              if (v85 || (*v84 - 8) > 4)
              {
                v86 = *v82;
                *v80 = bit_pack::unpack(v202, *v82) << (*v84 - v86);
                v79 += v86;
              }

              else
              {
                *v80 = *v81;
              }

              ++v80;
              ++v81;
              v84 += 4;
              ++v82;
              --v78;
            }

            while (v78);
            v190 = 0;
            v191 = 0;
            v87 = &v190;
            v88 = &v193;
            v89 = v180;
            v90 = v182;
            do
            {
              v91 = *v88;
              v88 = (v88 + 4);
              if (v91)
              {
                v92 = bit_pack::get(v202, v206, 3u);
                v206 += 3;
                *v87 = v92;
                v79 += 3;
              }

              v87 = (v87 + 4);
              --v89;
            }

            while (v89);
          }

          else
          {
            v190 = 0;
            v191 = 0;
            v90 = v182;
          }

          v93 = (v90 & 0x3FFFFFFE) - v79;
          v94 = v93 / 7;
          v95 = v206 + v93 - 7 * (v93 / 7);
          v206 = v95;
          v96 = v205;
          if (v95 > v205)
          {
            interchange_compression::decompressor::decompress();
          }

          v97 = 0;
          v98 = v189;
          memset(v189, 0, sizeof(v189));
          v99 = v180;
          do
          {
            v100 = 0;
            if (v99)
            {
              v101 = &v193;
              v102 = v98;
              do
              {
                v104 = *v101++;
                v103 = v104;
                if (v104)
                {
                  *v102 = bit_pack::unpack(v202, v103);
                  v100 += v103;
                }

                v102 += 7;
                --v99;
              }

              while (v99);
              if (v100 > v94)
              {
                interchange_compression::decompressor::decompress();
              }

              v95 = v206;
              v96 = v205;
              v99 = v180;
            }

            v95 += v94 - v100;
            v206 = v95;
            if (v95 > v96)
            {
              interchange_compression::decompressor::decompress();
            }

            ++v97;
            ++v98;
          }

          while (v97 != 7);
          if (v99)
          {
            v105 = 0;
            v106 = v188;
            do
            {
              v107 = *&v175[4 * v105];
              v108 = interchange_compression::get_id(v107);
              v109 = 0;
              v110 = 0;
              v111 = *&interchange_compression::dq_consts[160 * v108 + 2 + 10 * v209[v105]];
              v112 = *(&v193 + v105);
              v113 = v111 >> v112;
              if (v111 >> v112 <= 1)
              {
                v113 = 1;
              }

              if (v113 >> 1 >= (1 << (v107 - *(&v195 + v105))) >> 1)
              {
                v114 = (1 << (v107 - *(&v195 + v105))) >> 1;
              }

              else
              {
                v114 = v113 >> 1;
              }

              v115 = *(v192 + v105);
              v116 = (1 << (v107 - 1));
              v117 = ~(-1 << v112);
              v118 = v111 + v115;
              v119 = 1 << v107;
              if (!v115)
              {
                v114 = 0;
              }

              if (v107 == 16)
              {
                v120 = 31744;
              }

              else
              {
                v120 = 2139095040;
              }

              if (v107 == 16)
              {
                v121 = 64512;
              }

              else
              {
                v121 = 4286578688;
              }

              if (v107 == 16)
              {
                v122 = 32256;
              }

              else
              {
                v122 = 2143289344;
              }

              v123 = 4290772992;
              if (v107 == 16)
              {
                v123 = 65024;
              }

              v185 = v123;
              v178 = v106;
              v124 = v106;
              do
              {
                if (v112)
                {
                  if (v109 == *(&v190 + v105))
                  {
                    v125 = v114;
                    v126 = v115 == v116;
                  }

                  else
                  {
                    v127 = v189[7 * v105 + v110];
                    v126 = (v116 - v115) / v113 == v127;
                    if (v127 > v117)
                    {
                      interchange_compression::decompressor::decompress();
                    }

                    if (v127 | v115)
                    {
                      if (v118 < v119 || (v125 = v119 - 1, v127 != v117))
                      {
                        v125 = (v113 >> 1) + v113 * v127;
                      }
                    }

                    else
                    {
                      v125 = 0;
                    }

                    ++v110;
                  }
                }

                else
                {
                  v125 = 0;
                  v126 = v113 > v116 - v115;
                }

                v128 = v125 + v115;
                v129 = v128;
                if (v186 == 1)
                {
                  if (v128 < v120 || (v129 = (v120 - 1), v128 >= v122))
                  {
                    if (v128 < v122 || (v129 = v116, v128 >= v116))
                    {
                      if (v128 < v185 && v128 >= v121)
                      {
                        v129 = (v121 - 1);
                      }

                      else
                      {
                        v129 = v128;
                      }
                    }
                  }
                }

                if (v129 >= v119)
                {
                  v131 = v119 - 1;
                }

                else
                {
                  v131 = v129;
                }

                if (v126)
                {
                  v132 = 0;
                }

                else
                {
                  v132 = v131 ^ v116;
                }

                if ((v186 & 0xFFFFFFFE) != 2)
                {
                  v132 = v131;
                }

                *v124 = v132;
                v124 += 4;
                ++v109;
              }

              while (v109 != 8);
              ++v105;
              v106 = (v178 + 4);
            }

            while (v105 != v180);
          }

          goto LABEL_175;
        }

        v42 = 0;
        v43 = v201;
        v44 = v41;
        v45 = v41;
        do
        {
          v47 = *v44;
          v44 += 4;
          v46 = v47;
          if (v47 == 2)
          {
            v48 = 1;
          }

          else if ((v46 - 8) >= 5)
          {
            v48 = 4;
            if (v46 != 16 && v46 != 32)
            {
              interchange_compression::decompressor::decompress();
            }
          }

          else
          {
            v48 = 3;
          }

          *v43++ = bit_pack::unpack(v202, v48);
          v42 += v48;
          --v40;
        }

        while (v40);
        v184 = v42;
        v49 = 0;
        v50 = v209;
        v51 = v45;
        v52 = v208;
        v53 = v201;
        v54 = v180;
        while (1)
        {
          v56 = *v51++;
          v55 = v56;
          if (v56 == 2)
          {
            v57 = *v53;
            *v52 = 0;
            v58 = v57 & 1;
            v59 = v50;
          }

          else
          {
            v60 = v55 - 8 < 5 || v55 == 16;
            if (!v60 && v55 != 32)
            {
              interchange_compression::decompressor::decompress();
            }

            v61 = *v53;
            if (((v55 & 0xFFFFFFFD) == 8 || v55 == 12) && v61 == 0)
            {
              v64 = bit_pack::get(v202, v206, 2u);
              v206 += 2;
              v184 += 2;
              *v52 = 0;
              v58 = v64 & 3;
              v65 = v52;
              v59 = v50;
            }

            else
            {
              v59 = &v209[v49];
              *v52 = 0;
              if (v55 >= 0x10)
              {
                v58 = v61 & 0xF;
                goto LABEL_50;
              }

              v58 = 0;
              v65 = &v208[v49];
            }

            v66 = v61 & 7;
            *v59 = v66;
            if ((v55 & 0xD) == 8)
            {
              if ((v61 & 7) != 0)
              {
                v58 = v66 + 2;
              }

              else
              {
                if (v58 > 1)
                {
                  if (v58 == 2)
                  {
                    v58 = 1;
                  }

                  else
                  {
                    v58 = 2;
                  }

                  goto LABEL_50;
                }

                if (!v58)
                {
LABEL_79:
                  *v65 = 0;
                  goto LABEL_50;
                }

                v58 = 0;
                *v65 = ~(-1 << v55);
              }
            }

            else
            {
              if (v55 != 12)
              {
                goto LABEL_51;
              }

              if ((v61 & 7) != 0)
              {
                v58 = v66 + 3;
              }

              else if (!v58)
              {
                goto LABEL_79;
              }
            }
          }

LABEL_50:
          *v59 = v58;
LABEL_51:
          ++v49;
          ++v50;
          ++v52;
          ++v53;
          if (!--v54)
          {
            goto LABEL_84;
          }
        }
      }
    }
  }

  v141 = *(this + 85);
  v142 = &interchange_compression::memory_parameters[11 * v141];
  if (v142[8] == a3)
  {
    v143 = (a3 & ~(-1 << v142[7])) + 1;
    v204 = a2;
    v203 = v143 << (v141 == 26);
    v207 = 1;
    v206 = 0;
    v205 = 8 * v203;
    if (v141 == 27)
    {
      v144 = 27;
    }

    else
    {
      v153 = 0;
      do
      {
        (*a4)[0][0][v153] = bit_pack::unpack(v202, *(&interchange_compression::format_table + 13 * v141 + v153 + 3));
        ++v153;
        v141 = *(this + 85);
      }

      while (v153 < *(&interchange_compression::format_table + 13 * v141 + 2));
      v144 = *(this + 85);
    }

    v154 = 0;
    for (i = 0; i != 4; ++i)
    {
      v156 = 0;
      v157 = v154;
      do
      {
        if (v144 == 27)
        {
          v144 = 27;
        }

        else
        {
          v158 = 0;
          v159 = a4;
          do
          {
            *((*v159)[0][0] + v157) = *v159;
            ++v158;
            v144 = *(this + 85);
            v159 = (v159 + 4);
          }

          while (v158 < *(&interchange_compression::format_table + 13 * v144 + 2));
        }

        ++v156;
        v157 += 16;
      }

      while (v156 != 8);
      v154 += 128;
    }

    goto LABEL_205;
  }

  if (v142[9] == a3)
  {
    v145 = 0;
    v146 = interchange_compression::memory_parameters[11 * v141 + 5];
    v204 = a2;
    v203 = v146;
    v207 = 1;
    v206 = 0;
    v205 = 8 * v146;
    do
    {
      if (v141 != 27)
      {
        v147 = 0;
        v148 = vdupq_n_s32(v145);
        v149.i64[0] = 0x100000001;
        v149.i64[1] = 0x100000001;
        v150 = vshlq_u32(vandq_s8(vshlq_u32(v148, xmmword_295663270), v149), xmmword_295663260);
        v151 = vshlq_u32(vandq_s8(vshlq_u32(v148, xmmword_295663250), v149), xmmword_295663260);
        v152 = (*a4)[(vorr_s8(*v150.i8, *&vextq_s8(v150, v150, 8uLL)).u32[0] | v150.i32[1])][vorr_s8(*v151.i8, *&vextq_s8(v151, v151, 8uLL)).u32[0] | v151.i32[1]];
        do
        {
          v152[v147] = bit_pack::unpack(v202, *(&interchange_compression::format_table + 13 * v141 + v147 + 3));
          ++v147;
          v141 = *(this + 85);
        }

        while (v147 < *(&interchange_compression::format_table + 13 * v141 + 2));
      }

      ++v145;
    }

    while (v145 != 32);
    if (*(this + 87))
    {
      interchange_compression::decompressor::decompress();
    }

    goto LABEL_205;
  }

  if (v142[10] == a3)
  {
    for (j = 0; j != 32; ++j)
    {
      v162 = vdupq_n_s32(j);
      v163.i64[0] = 0x100000001;
      v163.i64[1] = 0x100000001;
      v164 = vshlq_u32(vandq_s8(vshlq_u32(v162, xmmword_295663270), v163), xmmword_295663260);
      v165 = vshlq_u32(vandq_s8(vshlq_u32(v162, xmmword_295663250), v163), xmmword_295663260);
      interchange_compression::format_info::unpack_pixel((&interchange_compression::format_table + 52 * v141), a2, (*a4)[(vorr_s8(*v164.i8, *&vextq_s8(v164, v164, 8uLL)).u32[0] | v164.i32[1])][vorr_s8(*v165.i8, *&vextq_s8(v165, v165, 8uLL)).u32[0] | v165.i32[1]]);
      v141 = *(this + 85);
      a2 += *(&interchange_compression::format_table + 13 * v141 + 1);
    }

    if (*(this + 87))
    {
      interchange_compression::decompressor::decompress();
    }

    goto LABEL_205;
  }

  v166 = ((a3 & ~(-1 << v8)) + 1) << (v141 == 26);
  v167 = interchange_compression::memory_parameters[11 * v141 + 5];
  v204 = a2;
  if (v167 >= v166)
  {
    v167 = v166;
  }

  v203 = v167;
  v207 = 1;
  v206 = 0;
  v205 = 8 * v167;
  if (!interchange_compression::decompressor::unpack_header(this, a2, a3, v202))
  {
LABEL_215:
    interchange_compression::decompressor::fill_subblock_error_color(this, a4);
    result = 0;
    goto LABEL_216;
  }

  interchange_compression::decompressor::decompress_pixels(this, a2, a3, v202, a4);
  interchange_compression::decompressor::decorrelate(this, a4);
LABEL_205:
  result = 1;
LABEL_216:
  v168 = *MEMORY[0x29EDCA608];
  return result;
}