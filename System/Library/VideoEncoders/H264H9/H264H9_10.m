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

char *AVE_StrNCpy(char *a1, const char *a2, int a3)
{
  result = strncpy(a1, a2, a3);
  result[a3 - 1] = 0;
  return result;
}

_DWORD *AVE_DevCap_SearchRange_Find(unsigned int *a1, int a2)
{
  v2 = *a1;
  if (v2 < 1)
  {
    return 0;
  }

  for (result = a1 + 1; *result != a2; result += 4)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

_DWORD *AVE_DevCap_Perf_Find(unsigned int *a1, int a2, int a3, int a4)
{
  v4 = *a1;
  if (v4 < 1)
  {
    return 0;
  }

  for (i = a1 + 5; *(i - 1) != a2 || *i != a3 || *(i - 2) != a4; i += 6)
  {
    if (!--v4)
    {
      return 0;
    }
  }

  return i - 3;
}

void AVE_SyntaxWriter::AVE_SyntaxWriter(AVE_SyntaxWriter *this)
{
  *this = &unk_2A1C808F8;
  *(this + 1) = 0;
  *(this + 4) = this + 40;
  *(this + 4136) = 1;
  *(this + 2) = 0x100000000000;
  *(this + 6) = 0xFFFF;
}

void AVE_SyntaxWriter::AVE_SyntaxWriter(AVE_SyntaxWriter *this, unsigned __int8 *a2, int a3, char a4)
{
  *this = &unk_2A1C808F8;
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
      v11 = dword_2954FBFFC[a3 - 1];
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

uint64_t AVE_ComposeFilePath(const char *a1, const char *a2, const char *a3, char *a4, int a5)
{
  v20 = *MEMORY[0x29EDCA608];
  *v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v17 = 0;
  if (a4)
  {
    *a4 = 0;
    setlocale(0, &unk_2954B8F4E);
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

void AVE_BlkPool::AVE_BlkPool(AVE_BlkPool *this)
{
  *(this + 12) = 0;
  *(this + 4) = 0;
  AVE_DLList_Init(this + 32);
  *(this + 16) = 0;
}

uint64_t AVE_BlkPool::Destroy(AVE_BlkPool *this)
{
  if (AVE_Log_CheckLevel(0x38u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x38u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", CurrTime, 56, LevelStr, "AVE_BlkPool", "Destroy", this);
      v5 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v5, 56, v19, "AVE_BlkPool", "Destroy", this);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", CurrTime, 56, LevelStr, "AVE_BlkPool", "Destroy", this);
    }
  }

  do
  {
    v6 = AVE_DLList_Back(this + 4);
    if (!v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v7 = v6;
    AVE_DLList_PopBack(this + 4);
    v8 = AVE_BlkBuf_Destroy(v7);
  }

  while (!v8);
  v9 = v8;
  if (AVE_Log_CheckLevel(0x38u, 5))
  {
    v10 = AVE_Log_CheckConsole(0x38u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(5);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d\n", v11, 56, v12, "AVE_BlkPool", "Destroy", 285, this, v7, v9);
      v13 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(5);
      syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v13, 56, v20);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v11, 56, v12);
    }
  }

LABEL_12:
  v14 = *(this + 3);
  if (v14)
  {
    v9 = AVE_Mutex_Destroy(v14) + v9;
    *(this + 3) = 0;
  }

  *this = 0;
  *(this + 16) = 0;
  *(this + 12) = 0;
  *(this + 4) = 0;
  if (AVE_Log_CheckLevel(0x38u, 6))
  {
    v15 = AVE_Log_CheckConsole(0x38u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(6);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v16, 56, v17, "AVE_BlkPool", "Destroy", this, v9);
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v16);
  }

  return v9;
}

uint64_t AVE_BlkPool::Create(AVE_BlkPool *this, int a2, int a3, int a4, unsigned int a5, int a6)
{
  v41 = 0;
  if (AVE_Log_CheckLevel(0x38u, 6))
  {
    v11 = AVE_Log_CheckConsole(0x38u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v11)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p 0x%x %d %d %d %d\n", CurrTime, 56, LevelStr, "AVE_BlkPool", "Create", this, a2, a3, a4, a5, a6);
      v14 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %d %d %d %d", v14, 56, v35);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %d %d %d %d", CurrTime, 56, LevelStr);
    }
  }

  if (a3 < 1 || a4 < 1 || a5 > 0x40 || a5 && ((a5 + 127) & a5) != 0)
  {
    if (AVE_Log_CheckLevel(0x38u, 4))
    {
      v15 = AVE_Log_CheckConsole(0x38u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %d %d %d %d\n", v16, 56, v17, "AVE_BlkPool", "Create", 75, "num > 0 && size > 0 && alignment >= 0 && alignment <= 64 && (alignment == 0 || (alignment & (alignment - 1)) == 0)", this, a2, a3, a4, a5, a6);
        v18 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %d %d %d %d", v18, 56, v36, "AVE_BlkPool", "Create");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %d %d %d %d", v16, 56, v17, "AVE_BlkPool", "Create");
      }
    }

    v20 = 4294966295;
    goto LABEL_17;
  }

  if ((a2 & 1) == 0)
  {
    v19 = 0;
    goto LABEL_23;
  }

  v19 = AVE_Mutex_Create();
  if (v19)
  {
LABEL_23:
    v20 = AVE_BlkBuf_Create(a3, a4, a5, &v41);
    if (v20)
    {
      if (AVE_Log_CheckLevel(0x38u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x38u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p %d %d %d %d %p\n", v27, 56, v28, "AVE_BlkPool", "Create", 88, "ret == 0", this, a2, a3, a4, a5, &v41);
          v39 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p %d %d %d %d %p", v39, 56, v29, "AVE_BlkPool", "Create");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p %d %d %d %d %p", v27, 56, v28, "AVE_BlkPool", "Create");
        }
      }

      if (v19)
      {
        AVE_Mutex_Destroy(v19);
      }
    }

    else
    {
      v30 = v41;
      *this = a2;
      *(this + 1) = a3;
      *(this + 2) = a4;
      *(this + 3) = a5;
      *(this + 4) = a6;
      *(this + 3) = v19;
      AVE_DLList_PushBack(this + 32, v30);
    }

    goto LABEL_17;
  }

  if (AVE_Log_CheckLevel(0x38u, 4))
  {
    v31 = AVE_Log_CheckConsole(0x38u);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %d %d %d %d\n", v32, 56, v33, "AVE_BlkPool", "Create", 82, "pMutex != __null", this, a2, a3, a4, a5, a6);
      v34 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %d %d %d %d", v34, 56, v38, "AVE_BlkPool", "Create");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %d %d %d %d", v32, 56, v33, "AVE_BlkPool", "Create");
    }
  }

  v20 = 4294966293;
LABEL_17:
  if (AVE_Log_CheckLevel(0x38u, 6))
  {
    v21 = AVE_Log_CheckConsole(0x38u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p 0x%x %d %d %d %d %d\n", v22, 56, v23, "AVE_BlkPool", "Create", this, a2, a3, a4, a5, a6, v20);
      v24 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %d %d %d %d %d", v24, 56, v37);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %d %d %d %d %d", v22, 56, v23);
    }
  }

  return v20;
}

uint64_t AVE_BlkPool::CreateWithMem(AVE_BlkPool *this, int a2, const void *a3, int a4, int a5, int a6, unsigned int a7)
{
  v44[0] = 0;
  if (AVE_Log_CheckLevel(0x38u, 6))
  {
    v12 = AVE_Log_CheckConsole(0x38u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d %d %d %d\n", CurrTime, 56, LevelStr, "AVE_BlkPool", "CreateWithMem", this, a2, a3, a4, a5, a6, a7);
      v15 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d %d %d %d", v15, 56, v38, "AVE_BlkPool");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d %d %d %d", CurrTime, 56, LevelStr, "AVE_BlkPool");
    }
  }

  if (a4 < 1 || a5 < 1 || a6 < 1 || a7 > 0x40 || a7 && ((a7 + 127) & a7) != 0)
  {
    if (AVE_Log_CheckLevel(0x38u, 4))
    {
      v16 = AVE_Log_CheckConsole(0x38u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %p %d %d %d %d\n", v17, 56, v18, "AVE_BlkPool", "CreateWithMem", 146, "msize > 0 && num > 0 && size > 0 && alignment >= 0 && alignment <= 64 && (alignment == 0 || (alignment & (alignment - 1)) == 0)", this, a2, a3, a4, a5, a6, a7);
        v19 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %p %d %d %d %d", v19, 56, v39, "AVE_BlkPool", "CreateWithMem", 146);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p 0x%x %p %d %d %d %d", v17, 56, v18, "AVE_BlkPool", "CreateWithMem", 146);
      }
    }

    v21 = 4294966295;
    goto LABEL_18;
  }

  if ((a2 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_24;
  }

  v20 = AVE_Mutex_Create();
  if (v20)
  {
LABEL_24:
    v21 = AVE_BlkBuf_CreateWithMem(a3, a4, a5, a6, a7, v44);
    if (v21)
    {
      if (AVE_Log_CheckLevel(0x38u, 4))
      {
        v29 = a6;
        v30 = AVE_Log_CheckConsole(0x38u);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p 0x%x %p %d %d %d %d %p\n", v31, 56, v32, "AVE_BlkPool", "CreateWithMem", 159, "ret == 0", this, a2, a3, a4, a5, v29, a7, v44);
          v41 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          a6 = v29;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p 0x%x %p %d %d %d %d %p", v41, 56, v33, "AVE_BlkPool", "CreateWithMem", 159, "ret == 0");
        }

        else
        {
          a6 = v29;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create block buffer %p 0x%x %p %d %d %d %d %p", v31, 56, v32, "AVE_BlkPool", "CreateWithMem", 159, "ret == 0");
        }
      }

      if (v20)
      {
        AVE_Mutex_Destroy(v20);
      }
    }

    else
    {
      *this = a2;
      *(this + 1) = a5;
      *(this + 2) = a6;
      *(this + 3) = a7;
      *(this + 4) = 0;
      *(this + 3) = v20;
      AVE_DLList_PushBack(this + 32, v44[0]);
    }

    goto LABEL_18;
  }

  if (AVE_Log_CheckLevel(0x38u, 4))
  {
    v34 = AVE_Log_CheckConsole(0x38u);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(4);
    if (v34)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %p %d %d %d %d\n", v35, 56, v36, "AVE_BlkPool", "CreateWithMem", 153, "pMutex != __null", this, a2, a3, a4, a5, a6, a7);
      v37 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %p %d %d %d %d", v37, 56, v40, "AVE_BlkPool", "CreateWithMem", 153);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p 0x%x %p %d %d %d %d", v35, 56, v36, "AVE_BlkPool", "CreateWithMem", 153);
    }
  }

  v21 = 4294966293;
LABEL_18:
  if (AVE_Log_CheckLevel(0x38u, 6))
  {
    v22 = a6;
    v23 = AVE_Log_CheckConsole(0x38u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(6);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d %d %d %d\n", v24, 56, v25, "AVE_BlkPool", "CreateWithMem", this, a2, a3, a4, a5, v22, a7, v21);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d %d %d %d", v26, 56, v27, "AVE_BlkPool", "CreateWithMem");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d %d %d %d", v24, 56, v25, "AVE_BlkPool", "CreateWithMem");
    }
  }

  return v21;
}

uint64_t AVE_GetAbsTime(void)
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return (v1.tv_nsec + 1000000000 * v1.tv_sec) / 1000;
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

int *AVE_Enc_FindThroughputMode(int a1, int a2, int a3, int a4, uint64_t a5)
{
  result = AVE_DevCap_FindThroughput(a1, a2, a3);
  if (result)
  {
    result = AVE_DevCap_Throughput_Find(result, a4, a5);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t AVE_Enc_DecideThroughputMode(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, uint64_t a11, int a12, int a13)
{
  if (a1)
  {
    v20 = a13;
    v21 = 1;
    v22 = a1;
  }

  else if (a8 < 0)
  {
    if (a2)
    {
      v20 = a13;
      v21 = 7;
      v22 = a2;
    }

    else
    {
      v22 = 3;
      if (a9 == 1)
      {
        v20 = a13;
        v21 = 8;
      }

      else
      {
        v20 = a13;
        if (((a13 + 15) >> 4) * ((a12 + 15) >> 4) <= 3600)
        {
          v22 = 1;
        }

        else
        {
          v22 = 3;
        }

        v21 = 9;
      }
    }
  }

  else
  {
    v20 = a13;
    if (a8)
    {
      if (a10)
      {
        v21 = 5;
        if (a10 < 0)
        {
          v22 = 5;
        }

        else
        {
          ThroughputMode = AVE_Enc_FindThroughputMode(a3, a5, a6, a7, a11);
          if (ThroughputMode <= 5)
          {
            v22 = 5;
          }

          else
          {
            v22 = ThroughputMode;
          }

          v21 = 6;
        }
      }

      else
      {
        if (a4 > 29)
        {
          v21 = 3;
        }

        else
        {
          v21 = 4;
        }

        if (a4 <= 29)
        {
          v22 = 5;
        }

        else
        {
          v22 = 7;
        }
      }
    }

    else
    {
      v22 = 3;
      v21 = 2;
    }
  }

  if (AVE_Log_CheckLevel(0x10u, 8))
  {
    v30 = a3;
    v23 = AVE_Log_CheckConsole(0x10u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v23)
    {
      printf("%lld %d AVE %s: %s:%d %d %d %d %d | %d %d %d | %d %d %d %lld | %d %d | %d %d\n", CurrTime, 16, LevelStr, "AVE_Enc_DecideThroughputMode", 332, a1, a2, v30, a4, a5, a6, a7, a8, a9, a10, a11, a12, v20, v21, v22);
      v29 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d | %d %d %d | %d %d %d %lld | %d %d | %d %d", v29, 16, v27, "AVE_Enc_DecideThroughputMode", 332, a1, a2, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d | %d %d %d | %d %d %d %lld | %d %d | %d %d", CurrTime, 16, LevelStr, "AVE_Enc_DecideThroughputMode", 332, a1, a2, v30);
    }
  }

  return v22;
}

uint64_t AVE_Enc_DecideInputQueueMaxCnt(int a1, int a2, int a3, int a4, int a5)
{
  if (a5 < 0)
  {
    v10 = 24;
  }

  else
  {
    v10 = 48;
  }

  if (a5 >= 0)
  {
    v11 = 3;
  }

  else
  {
    v11 = 4;
  }

  v12 = a5 + 24;
  if (a5 >= 0)
  {
    v13 = 12;
  }

  else
  {
    v12 = 24;
    v13 = 2;
  }

  if (a4 == 1)
  {
    v10 = v12;
    v11 = v13;
  }

  if (a3 == 1)
  {
    v14 = v10;
  }

  else
  {
    v14 = 24;
  }

  if (a3 == 1)
  {
    v15 = v11;
  }

  else
  {
    v15 = 5;
  }

  if (a2 == 2)
  {
    v16 = 24;
  }

  else
  {
    v16 = v14;
  }

  if (a2 == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15;
  }

  if (AVE_Log_CheckLevel(0x10u, 8))
  {
    v18 = AVE_Log_CheckConsole(0x10u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %d %d %d %d %d | %d %d\n", CurrTime, 16, LevelStr, "AVE_Enc_DecideInputQueueMaxCnt", 494, a1, a2, a3, a4, a5, v16, v17);
      v21 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d %d | %d %d", v21, 16, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d %d | %d %d", CurrTime, 16, LevelStr);
    }
  }

  return v16;
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
  unk_2A189B640 = v0;
  v1 = *MEMORY[0x29EDB95B8];
  qword_2A189B648 = *MEMORY[0x29EDB95D0];
  unk_2A189B650 = v1;
  v2 = *MEMORY[0x29EDB95A8];
  qword_2A189B658 = *MEMORY[0x29EDB95C8];
  unk_2A189B660 = v2;
  v3 = *MEMORY[0x29EDB9630];
  gsc_psaAVE_TransferCharacteristics_Supported = *MEMORY[0x29EDB9620];
  unk_2A189B5D0 = v3;
  v4 = *MEMORY[0x29EDB9650];
  qword_2A189B5D8 = *MEMORY[0x29EDB9628];
  unk_2A189B5E0 = v4;
  v5 = *MEMORY[0x29EDB9638];
  qword_2A189B5E8 = *MEMORY[0x29EDB9610];
  unk_2A189B5F0 = v5;
  v6 = *MEMORY[0x29EDB9618];
  qword_2A189B5F8 = *MEMORY[0x29EDB9640];
  unk_2A189B600 = v6;
  v7 = *MEMORY[0x29EDB9678];
  gsc_psaAVE_MatrixCoefficients_Supported = *MEMORY[0x29EDB9680];
  unk_2A189B610 = v7;
  v8 = *MEMORY[0x29EDB9688];
  qword_2A189B618 = *MEMORY[0x29EDB9670];
  unk_2A189B620 = v8;
  v9 = *MEMORY[0x29EDB9668];
  qword_2A189B628 = *MEMORY[0x29EDB9660];
  unk_2A189B630 = v9;
}

uint64_t AVE_CreateUSurface(uint64_t a1, const char *a2, int a3, uint64_t a4, AVE_USurface **a5)
{
  if (a3 && a5)
  {
    *a5 = 0;
    operator new();
  }

  if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v10 = AVE_Log_CheckConsole(0x4Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p\n", CurrTime, 76, LevelStr, "AVE_CreateUSurface", 64, "SID != 0 && ppSurface != __null", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v13, 76, v15, "AVE_CreateUSurface", 64);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", CurrTime, 76, LevelStr, "AVE_CreateUSurface", 64);
    }
  }

  return 4294966295;
}

{
  if (a3 >= 1 && a5)
  {
    *a5 = 0;
    operator new();
  }

  if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v10 = AVE_Log_CheckConsole(0x4Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p\n", CurrTime, 76, LevelStr, "AVE_CreateUSurface", 122, "size > 0 && ppSurface != __null", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", v13, 76, v15, "AVE_CreateUSurface", 122);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p %d 0x%llx %p", CurrTime, 76, LevelStr, "AVE_CreateUSurface", 122);
    }
  }

  return 4294966295;
}

uint64_t AVE_CreateInUSurfaces(const void *a1, uint64_t a2, const void *a3)
{
  if (a1 && a3)
  {
    return 0;
  }

  if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v7 = AVE_Log_CheckConsole(0x4Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p\n", CurrTime, 76, LevelStr, "AVE_CreateInUSurfaces", 219, "pSInfoSet != __null && pSet != __null", a1, a2, a3);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v10, 76, v11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", CurrTime, 76, LevelStr);
    }
  }

  AVE_DestroyInUSurfaces(a3);
  return 4294966295;
}

uint64_t AVE_DestroyInUSurfaces(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v2 = AVE_Log_CheckConsole(0x4Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v2)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", CurrTime, 76, LevelStr, "AVE_DestroyInUSurfaces", 245, "pSet != __null", 0);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", CurrTime);
  }

  return 4294966295;
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

uint64_t AVE_SearchRange_Make(int *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    v4 = AVE_CFDict_AddSInt32(@"MotionEstimationModeID", *a1, a2);
    if (!v4)
    {
      v13 = AVE_CFDict_AddSInt32(@"MotionEstimationHorizontalSearchRange", a1[1], a2);
      if (v13)
      {
        v5 = v13;
        if (!AVE_Log_CheckLevel(0x36u, 4))
        {
          return v5;
        }

        v14 = AVE_Log_CheckConsole(0x36u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v14)
        {
          goto LABEL_29;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", CurrTime, 54, LevelStr, "AVE_SearchRange_Make", 82, "ret == 0", a1, a2, v5);
      }

      else
      {
        v15 = AVE_CFDict_AddSInt32(@"MotionEstimationVerticalSearchRange", a1[2], a2);
        if (v15)
        {
          v5 = v15;
          if (!AVE_Log_CheckLevel(0x36u, 4))
          {
            return v5;
          }

          v16 = AVE_Log_CheckConsole(0x36u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (!v16)
          {
            goto LABEL_29;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", CurrTime, 54, LevelStr, "AVE_SearchRange_Make", 87, "ret == 0", a1, a2, v5);
        }

        else
        {
          v5 = AVE_CFDict_AddSInt32(@"MotionEstimationCacheMode", a1[3], a2);
          if (!v5 || !AVE_Log_CheckLevel(0x36u, 4))
          {
            return v5;
          }

          v17 = AVE_Log_CheckConsole(0x36u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (!v17)
          {
            goto LABEL_29;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", CurrTime, 54, LevelStr, "AVE_SearchRange_Make", 92, "ret == 0", a1, a2, v5);
        }
      }

      v9 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      goto LABEL_28;
    }

    v5 = v4;
    if (AVE_Log_CheckLevel(0x36u, 4))
    {
      v6 = AVE_Log_CheckConsole(0x36u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v6)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d\n", CurrTime, 54, LevelStr, "AVE_SearchRange_Make", 77, "ret == 0", a1, a2, v5);
        v9 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
LABEL_28:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d", v9, 54, v19);
        return v5;
      }

LABEL_29:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add data %p %p %d", CurrTime, 54, LevelStr);
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x36u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x36u);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 54, v12, "AVE_SearchRange_Make", 72, "pEntry != __null && pDict != __null", a1, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 54);
    }

    return 4294966295;
  }

  return v5;
}

uint64_t AVE_SearchRange_MakeArray(int *a1, int a2, __CFArray *a3)
{
  if (a1 && a2 >= 1 && a3)
  {
    v6 = 0;
    v7 = MEMORY[0x29EDB9010];
    v8 = MEMORY[0x29EDB9020];
    for (i = a1; ; i += 4)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, v7, v8);
      if (!Mutable)
      {
        break;
      }

      v11 = Mutable;
      v12 = AVE_SearchRange_Make(i, Mutable);
      if (v12)
      {
        v13 = v12;
        CFRelease(v11);
        return v13;
      }

      CFArrayAppendValue(a3, v11);
      CFRelease(v11);
      if (a2 == ++v6)
      {
        return 0;
      }
    }

    if (AVE_Log_CheckLevel(0x36u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x36u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p %d\n", CurrTime, 54, LevelStr, "AVE_SearchRange_MakeArray", 168, "pDict != __null", a1, a2, a3, v6);
        v21 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p %d", v21, 54, v24, "AVE_SearchRange_MakeArray");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p %d", CurrTime, 54, LevelStr, "AVE_SearchRange_MakeArray");
      }
    }

    return 4294966293;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x36u, 4))
    {
      v14 = AVE_Log_CheckConsole(0x36u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v15, 54, v16, "AVE_SearchRange_MakeArray", 160, "pEntry != __null && num > 0 && pArray != __null", a1, a2, a3);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v17, 54, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v15, 54, v16);
      }
    }

    return 4294966295;
  }
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
            v41 = xmmword_2954EBA50;
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
        *v13.i8 = vand_s8(vmovn_s32(vtstq_s32(v13, xmmword_2954FC130)), 0x1000100010001);
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
              v138 = vshlq_u32(vandq_s8(vshlq_u32(v136, xmmword_2954FC100), v137), xmmword_2954FC110);
              v139 = vshlq_u32(vandq_s8(vshlq_u32(v136, xmmword_2954FC120), v137), xmmword_2954FC110);
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
        v150 = vshlq_u32(vandq_s8(vshlq_u32(v148, xmmword_2954FC120), v149), xmmword_2954FC110);
        v151 = vshlq_u32(vandq_s8(vshlq_u32(v148, xmmword_2954FC100), v149), xmmword_2954FC110);
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
      v164 = vshlq_u32(vandq_s8(vshlq_u32(v162, xmmword_2954FC120), v163), xmmword_2954FC110);
      v165 = vshlq_u32(vandq_s8(vshlq_u32(v162, xmmword_2954FC100), v163), xmmword_2954FC110);
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

uint64_t interchange_compression::header::set(interchange_compression::header *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v6 = a3 + 4 * a2;
  result = interchange_compression::header::get_size(this, a2, a3);
  v8 = this + 12 * v6;
  *(v8 + 1) = result;
  v9 = v8 + 4;
  if (a4 >> result)
  {
    interchange_compression::header::set();
  }

  *(v9 + 1) = a4;
  *(v9 + 2) = 1;
  return result;
}

uint64_t interchange_compression::header::get_size(interchange_compression::header *this)
{
  v2 = *this;
  v3 = interchange_compression::header::header_layout_table[15 * *this + 14];
  for (i = 3; i != 7; ++i)
  {
    if (v2 == 27)
    {
      v2 = 27;
    }

    else
    {
      v5 = 0;
      do
      {
        v3 = interchange_compression::header::get_size(this, i, v5++) + v3;
        v2 = *this;
      }

      while (v5 < *(&interchange_compression::format_table + 13 * *this + 2));
    }
  }

  return v3;
}

uint64_t interchange_compression::header::get_size(interchange_compression::header *this, unsigned int a2, unsigned int a3)
{
  if (a2 <= 1)
  {
    return interchange_compression::header::header_layout_table[15 * *this + 1 + 4 * a2 + a3];
  }

  if (a2 == 4)
  {
    v4 = this + 4;
    if (!*(this + 3 * a3 + 3))
    {
      interchange_compression::header::get_size();
    }

    if (!*&v4[12 * a3 + 56])
    {
      interchange_compression::header::get_size();
    }

    if ((v4[12 * a3 + 4] & 8) != 0)
    {
      return (*&v4[12 * a3 + 52] + 1);
    }

    return 0;
  }

  if (a2 != 3)
  {
    if (a2 == 2)
    {
      return *(&interchange_compression::format_table + 13 * *this + a3 + 3);
    }

    if (a2 - 5 > 1)
    {
      interchange_compression::header::get_size();
    }

    if (!*(this + 3 * a3 + 3))
    {
      interchange_compression::header::get_size();
    }

    if ((*(this + 3 * a3 + 2) & 3) == 2)
    {
      return *(&interchange_compression::format_table + 13 * *this + a3 + 3) >> 1;
    }

    return 0;
  }

  if (!*(this + 3 * a3 + 3))
  {
    interchange_compression::header::get_size();
  }

  if ((*(this + 12 * a3 + 8) & 4) == 0)
  {
    return 0;
  }

  if (*(&interchange_compression::format_table + 13 * *this + a3 + 3) == 32)
  {
    return 16;
  }

  else
  {
    return 8;
  }
}

uint64_t interchange_compression::get_id(interchange_compression *this)
{
  if (this <= 11)
  {
    if (this == 8)
    {
      return 0;
    }

    if (this == 10)
    {
      return 1;
    }
  }

  else
  {
    switch(this)
    {
      case 0xC:
        return 2;
      case 0x10:
        return 3;
      case 0x20:
        return 4;
    }
  }

  if (this == 2)
  {
    v1 = 5;
  }

  else
  {
    v1 = 6;
  }

  if ((this | 2) != 2)
  {
    interchange_compression::get_id(this);
  }

  return v1;
}

uint64_t interchange_compression::derive_sharing(uint64_t this, uint64_t a2, unsigned int *a3, unsigned int *a4, int (*a5)[4], int (*a6)[4])
{
  v6 = *(a2 + 12);
  if (v6 == 5)
  {
    v7 = a3[3];
    if (v7 >= 2)
    {
      interchange_compression::derive_sharing();
    }

    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 5;
    }

    a3[3] = v8;
    *(a2 + 12) = 1;
  }

  if (!this)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = -1;
  do
  {
    v14 = a3[v9];
    if (v14 > v12 || v9 == 1 && v14 == v12)
    {
      v12 = a3[v9];
      v11 = v9;
    }

    if (v14 < v13)
    {
      v13 = a3[v9];
      v10 = v9;
    }

    v15 = interchange_compression::dq_consts[160 * *(a2 + 4 * v9) + 6 + 10 * v14];
    (*a5)[v9] = v15;
    a4[v9++] = v15;
  }

  while (this != v9);
  if (this != 1)
  {
LABEL_19:
    v16 = (v11 + 1) % 3u;
    if (v16 == v10)
    {
      v16 = (v11 + 2) % 3u;
    }

    v17 = a3[v16];
    v18 = a3[6 - (v11 + v10) - v16];
    v19 = v17 > v18;
    if (v17 <= v18)
    {
      v20 = v16;
    }

    else
    {
      v20 = 6 - (v11 + v10) - v16;
    }

    if (!v19)
    {
      v16 = 6 - (v11 + v10) - v16;
    }

    v21 = a3[v11];
    v22 = a3[v10];
    if (this == 2)
    {
      if (v21 == v22 || a4[v10] < 1)
      {
LABEL_47:
        if (v6 == 5)
        {
          *(a2 + 12) = 5;
          a3[3] = a3[3] != 5;
          if (a4[3] >= 1)
          {
            interchange_compression::derive_sharing();
          }
        }

        return this;
      }

      (*a5)[v10] = 0;
      v23 = a4[v10];
      v24 = (*a5)[v11];
      goto LABEL_30;
    }

    v26 = a3[v20];
    if (v21 - v26 <= 1 && v22 <= 1)
    {
      (*a5)[v10] = 0;
      v31 = 1431655766 * a4[v10];
      (*a5)[v20] += HIDWORD(v31) + (v31 >> 63);
      v32 = 1431655766 * (a4[v10] + 1);
      (*a5)[v16] += HIDWORD(v32) + (v32 >> 63);
      v33 = 1431655766 * (a4[v10] + 2);
      v34 = HIDWORD(v33) + (v33 >> 63);
      v35 = (*a5)[v11];
LABEL_45:
      v25 = v34 + v35;
      goto LABEL_46;
    }

    v28 = a3[v16];
    if (v21 - v28 <= 1 && v22 <= 1)
    {
      (*a5)[v10] = 0;
      v36 = a4[v20] & (a4[v20] >> 31);
      (*a5)[v20] = v36;
      (*a5)[v16] += (a4[v10] - v36 + a4[v20]) / 2;
      v25 = (*a5)[v11] + (a4[v10] + a4[v20] - (*a5)[v20] + 1) / 2;
      goto LABEL_46;
    }

    if (v28 - v22 > 1)
    {
      if (v28 - v22 != 2)
      {
        goto LABEL_57;
      }

      v30 = a4[v11];
    }

    else
    {
      v30 = a4[v11];
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      this = a4[v16];
      if (this > 0)
      {
LABEL_54:
        v37 = 0;
        (*a5)[v10] = 0;
        (*a5)[v20] = 0;
        if ((a4[v20] + a4[v10]) >= 6)
        {
          v37 = a4[v16];
        }

        (*a5)[v16] = v37;
        v34 = a4[v10] - v37 + a4[v20];
        v35 = a4[v16] + (*a5)[v11];
        goto LABEL_45;
      }
    }

    if (v30 <= -2 && a4[v16] >= 1)
    {
      goto LABEL_54;
    }

LABEL_57:
    if (!v22 || a4[v10] < 1 || a4[v20] < 1 || (a4[v16] & 0x80000000) != 0 || a4[v11] > -2)
    {
      if (v21 != v22 && a4[v10] >= 1)
      {
        (*a5)[v10] = 0;
        (*a5)[v11] += a4[v10];
      }

      if (v28 != v26 && a4[v20] >= 1)
      {
        (*a5)[v20] = 0;
        (*a5)[v16] += a4[v20];
      }

      goto LABEL_47;
    }

    (*a5)[v10] = 0;
    (*a5)[v20] = 0;
    (*a5)[v16] = a4[v16];
    v24 = a4[v20];
    v23 = a4[v10] + (*a5)[v11];
LABEL_30:
    v25 = v24 + v23;
LABEL_46:
    (*a5)[v11] = v25;
    goto LABEL_47;
  }

  return this;
}

uint64_t interchange_compression::adjust_level(uint64_t this, int a2, int a3, int a4, _DWORD *a5, unsigned int *a6, unsigned int *a7)
{
  v7 = a4 - a3;
  if (a4 - a3 < 0)
  {
    v8 = &interchange_compression::dq_consts + 640 * this + 40 * a2;
    if (*(v8 + 7) < a3 - a4)
    {
      --*a6;
      if (!*(v8 + 8))
      {
        v7 = -1;
        goto LABEL_4;
      }
    }
  }

  else if (a4 != a3)
  {
    *a6 += v7;
LABEL_4:
    *a5 += v7;
  }

  return this;
}

interchange_compression::decompressor *interchange_compression::decompressor::decompressor(interchange_compression::decompressor *this, unsigned int a2, interchange_compression *a3, unsigned int a4)
{
  *this = a2;
  if (interchange_compression::header::header_layout_table[15 * a2] != a2)
  {
    interchange_compression::decompressor::decompressor();
  }

  v5 = a3;
  *(this + 4) = 0u;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 244) = 0u;
  *(this + 260) = 0u;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0u;
  *(this + 148) = 0u;
  *(this + 164) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 85) = a2;
  *(this + 87) = a3;
  *(this + 88) = a4;
  if (!interchange_compression::check_valid_lossy_level(a3, a2))
  {
    interchange_compression::decompressor::decompressor();
  }

  if (v5 && a4 >= 4)
  {
    interchange_compression::decompressor::decompressor();
  }

  *(this + 86) = *(&interchange_compression::format_table + 52 * a2 + 48);
  return this;
}

uint64_t interchange_compression::decompressor::get_subblock_size(interchange_compression::decompressor *this, unsigned int a2)
{
  if (a2 >= 0xF0)
  {
    v2 = *(this + 87);
    if ((v2 - 1) <= 2)
    {
      return interchange_compression::lossy_parameters[28 * *(this + 85) + 8 + v2];
    }
  }

  v4 = *(this + 85);
  v5 = &interchange_compression::memory_parameters[11 * v4];
  if (v5[8] == a2)
  {
    return ((a2 & ~(-1 << v5[7])) + 1) << (v4 == 26);
  }

  if (v5[9] == a2)
  {
    return v5[5];
  }

  if (!a2)
  {
    return 0;
  }

  v6 = ((a2 & ~(-1 << v5[7])) + 1) << (v4 == 26);
  v7 = interchange_compression::memory_parameters[11 * v4 + 5];
  if (v7 >= v6)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t interchange_compression::decompressor::fill_subblock_error_color(uint64_t this, unsigned int (*a2)[4][8][4])
{
  v2 = 0;
  v3.i64[0] = 0x100000001;
  v3.i64[1] = 0x100000001;
  do
  {
    v4 = *(this + 340);
    if (v4 != 27)
    {
      v5 = 0;
      v6 = vdupq_n_s32(v2);
      v7 = vshlq_u32(vandq_s8(vshlq_u32(v6, xmmword_2954FC120), v3), xmmword_2954FC110);
      v8 = vshlq_u32(vandq_s8(vshlq_u32(v6, xmmword_2954FC100), v3), xmmword_2954FC110);
      v9 = (*a2)[(vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)).u32[0] | v7.i32[1])][vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)).u32[0] | v8.i32[1]];
      do
      {
        if (v5 == 1)
        {
          v10 = 0;
        }

        else
        {
          v10 = ~(-1 << *(&interchange_compression::format_table + 13 * v4 + v5 + 3));
        }

        v9[v5++] = v10;
        v4 = *(this + 340);
      }

      while (v5 < *(&interchange_compression::format_table + 13 * v4 + 2));
    }

    ++v2;
  }

  while (v2 != 32);
  return this;
}

uint64_t bit_pack::unpack(bit_pack *this, unsigned int a2)
{
  if (a2 >= 0x21)
  {
    bit_pack::unpack();
  }

  result = bit_pack::get(this, *(this + 135), a2);
  *(this + 135) += a2;
  return result;
}

void *interchange_compression::format_info::unpack_pixel(interchange_compression::format_info *this, const unsigned __int8 *a2, unsigned int *a3)
{
  __dst[2] = *MEMORY[0x29EDCA608];
  __dst[0] = 0;
  __dst[1] = 0;
  result = memcpy(__dst, a2, *(this + 1));
  if (*(this + 2))
  {
    v6 = 0;
    v7 = (this + 28);
    do
    {
      v8 = -1 << *(v7 - 4);
      v9 = *v7++;
      a3[v6++] = (*(__dst + ((v9 >> 3) & 0x1FFFFFF8)) >> v9) & ~v8;
    }

    while (v6 < *(this + 2));
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL interchange_compression::decompressor::unpack_header(interchange_compression::decompressor *this, const unsigned __int8 *a2, unsigned int a3, bit_pack *a4)
{
  v4 = *(this + 85);
  v5 = interchange_compression::memory_parameters[11 * v4 + 7];
  v6 = 8 - v5;
  v7 = &interchange_compression::header::header_layout_table[15 * v4];
  v8 = v7[1];
  v9 = v8 - (8 - v5);
  if (v8 <= 8 - v5)
  {
    interchange_compression::decompressor::unpack_header();
  }

  v11 = *(a4 + 128);
  v12 = v6 + 8 * v11;
  if (v12 < v7[14])
  {
    return 0;
  }

  v15 = v5 - 8;
  v16 = (a3 >> v5) & ~(-1 << v6);
  v17 = 8 * v11;
  v18 = bit_pack::unpack(a4, v9);
  *(this + 4) = 0u;
  v19 = this + 4;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 148) = 0u;
  *(this + 164) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0u;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 244) = 0u;
  *(this + 260) = 0u;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  interchange_compression::header::set(this, 0, 0, (v18 << v6) | v16);
  for (i = 1; i != 28; ++i)
  {
    if (i == 12)
    {
      if (v12 < interchange_compression::header::get_size(this))
      {
        return 0;
      }
    }

    else
    {
      if (i != 8)
      {
        v21 = i >> 2;
        if (i >> 2 == 6)
        {
          continue;
        }

        goto LABEL_11;
      }

      bit_pack::unpack(a4, interchange_compression::header::header_layout_table[15 * *(this + 85) + 13] + v15 - *(a4 + 135));
    }

    v21 = i >> 2;
LABEL_11:
    size = interchange_compression::header::get_size(this, v21, i & 3);
    v23 = bit_pack::unpack(a4, size);
    interchange_compression::header::set(this, v21, i & 3, v23);
    if (v21 == 5)
    {
      v24 = interchange_compression::header::get_size(this, 6u, i & 3);
      v25 = bit_pack::unpack(a4, v24);
      interchange_compression::header::set(this, 6u, i & 3, v25);
    }
  }

  v26 = interchange_compression::header::get_size(this);
  bit_pack::unpack(a4, v26 + v15 - *(a4 + 135));
  v27 = *(this + 85);
  if (v27 == 21)
  {
    if (!*(this + 6))
    {
      interchange_compression::decompressor::unpack_header();
    }

    if (!*(this + 9))
    {
      interchange_compression::decompressor::unpack_header();
    }

    v28 = *(this + 5);
    if ((v28 & 0x10) != 0)
    {
      v29 = *(this + 8);
      *(this + 86) = 2;
      interchange_compression::header::set(this, 0, 1u, v28 & 0xFFFFFFEF | (16 * ((v29 >> 4) & 1)));
      interchange_compression::header::set(this, 0, 2u, v29 & 0xFFFFFFEF);
      v27 = *(this + 85);
    }

    else
    {
      v27 = 21;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = &interchange_compression::format_table + 52 * v27;
  LODWORD(v33) = *(v32 + 2);
  if (v33 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v33;
  }

  v34 = v32 + 12;
  do
  {
    if (v27 != 27)
    {
      v35 = 0;
      v36 = this + 12;
      v37 = this + 12;
      do
      {
        v38 = *v37;
        v37 += 12;
        if (!v38)
        {
          interchange_compression::decompressor::unpack_header();
        }

        v39 = *(v36 - 4);
        if ((v39 & 4) != 0)
        {
          if (!*&v19[12 * (v35 + 12) + 8])
          {
            interchange_compression::decompressor::unpack_header();
          }

          v40 = *&v19[12 * (v35 + 12) + 4];
        }

        else
        {
          v40 = 0;
        }

        if ((~v39 & 3) != 0)
        {
          if (!*&v19[12 * (v35 + 4) + 8])
          {
            interchange_compression::decompressor::unpack_header();
          }

          v42 = *&v34[4 * v35];
          if (v42 == 32)
          {
            v43 = 2;
          }

          else
          {
            v43 = 1;
          }

          v44 = v40 >> (v30 << v43);
          if (v42 == 32)
          {
            v45 = 15;
          }

          else
          {
            v45 = 3;
          }

          v41 = *&v19[12 * (v35 + 4) + 4] - (v44 & v45) + 1;
          if (v41 > v42)
          {
            return 0;
          }
        }

        else
        {
          v41 = 0;
        }

        v31 += interchange_compression::NUM_PIXELS_REGION[v30] * v41;
        ++v35;
        v36 = v37;
      }

      while (v33 != v35);
    }

    ++v30;
  }

  while (v30 != 4);
  if (v27 == 26)
  {
    v46 = 15;
  }

  else
  {
    v46 = 7;
  }

  if (((*(a4 + 135) + v31 + v46) & ~v46) != v17)
  {
    return 0;
  }

  return interchange_compression::header::error_check(this) == 0;
}

uint64_t interchange_compression::decompressor::decompress_pixels(uint64_t this, const unsigned __int8 *a2, unsigned int a3, bit_pack *a4, unsigned int (*a5)[4][8][4])
{
  v5 = 0;
  v6 = 0;
  v91 = *MEMORY[0x29EDCA608];
  v7 = this + 4;
  v78 = (this + 12);
  v8 = 0uLL;
  v83 = a5;
  v89 = this;
  do
  {
    v9 = 0;
    v77 = v5;
    v87 = v5 >> 2 << 6;
    v80 = (*a5)[2 * (v6 & 1)] + v87;
    v82 = 4 * (v5 >> 2);
    v90[6] = v8;
    v90[7] = v8;
    v90[4] = v8;
    v90[5] = v8;
    v90[2] = v8;
    v90[3] = v8;
    v90[0] = v8;
    v90[1] = v8;
    if (interchange_compression::NUM_PIXELS_REGION[v6] <= 1u)
    {
      v10 = 1;
    }

    else
    {
      v10 = interchange_compression::NUM_PIXELS_REGION[v6];
    }

    v11 = *(this + 340);
    v12 = v11;
    v85 = v10;
    do
    {
      if (v12 == 27)
      {
        v13 = v9 + 1;
      }

      else
      {
        v14 = 0;
        v13 = v9 + 1;
        v15 = v90;
        v16 = v78;
        v17 = &unk_2954FD8EC;
        v18 = v78;
        do
        {
          v19 = *v18;
          v18 += 3;
          if (!v19)
          {
            interchange_compression::decompressor::unpack_header();
          }

          v20 = *(v16 - 4);
          if ((v20 & 4) != 0)
          {
            if (!*(v7 + 12 * (v14 + 12) + 8))
            {
              interchange_compression::decompressor::unpack_header();
            }

            v21 = *(v7 + 12 * (v14 + 12) + 4);
          }

          else
          {
            v21 = 0;
          }

          v22 = v20 & 3;
          if (v22 == 3)
          {
            v23 = 0;
          }

          else
          {
            if (!*(v7 + 12 * (v14 + 4) + 8))
            {
              interchange_compression::decompressor::unpack_header();
            }

            v24 = v17[13 * v12] == 32;
            if (v17[13 * v12] == 32)
            {
              v25 = 2;
            }

            else
            {
              v25 = 1;
            }

            v26 = v21 >> (v6 << v25);
            if (v24)
            {
              v27 = 15;
            }

            else
            {
              v27 = 3;
            }

            v23 = *(v7 + 12 * (v14 + 4) + 4) - (v26 & v27) + 1;
          }

          v28 = bit_pack::unpack(a4, v23);
          if (v23 >= 0x21)
          {
            interchange_compression::decompressor::decompress_pixels();
          }

          if (v22 == 1)
          {
            v29 = 0;
          }

          else
          {
            v29 = 7;
          }

          if (v9 != 6)
          {
            v29 = v9 + 1;
          }

          if (v6)
          {
            v29 = v9;
          }

          v30 = vdupq_n_s32(v29);
          v31.i64[0] = 0x100000001;
          v31.i64[1] = 0x100000001;
          v32 = vshlq_u32(vandq_s8(vshlq_u32(v30, xmmword_2954FC120), v31), xmmword_2954FC110);
          v33 = vshlq_u32(vandq_s8(vshlq_u32(v30, xmmword_2954FC100), v31), xmmword_2954FC110);
          LODWORD(v15[4 * (vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)).u32[0] | v32.i32[1]) + (vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)).u32[0] | v33.i32[1])]) = v28 << -v23 >> -v23;
          ++v14;
          v12 = *(v89 + 340);
          ++v17;
          v15 = (v15 + 4);
          v16 = v18;
          v8 = 0uLL;
        }

        while (v14 < *(&interchange_compression::format_table + 13 * v12 + 2));
        v11 = *(v89 + 340);
        a5 = v83;
        this = v89;
        v10 = v85;
      }

      v9 = v13;
    }

    while (v13 != v10);
    v34 = v87;
    if (v11 != 27)
    {
      v35 = 0;
      v36 = (2 * v6) & 2;
      v79 = v90;
      do
      {
        if (!*(v7 + 12 * v35 + 8))
        {
          interchange_compression::decompressor::unpack_header();
        }

        v37 = v35;
        v38 = *(v7 + 12 * v35 + 4);
        if ((v38 & 4) != 0)
        {
          if (!*(v7 + 12 * (v35 + 12) + 8))
          {
            interchange_compression::decompressor::unpack_header();
          }

          v39 = *(v7 + 12 * (v35 + 12) + 4);
        }

        else
        {
          v39 = 0;
        }

        v40 = *(v7 + 12 * v35 + 4);
        v41 = *(&interchange_compression::format_table + 13 * v11 + v37 + 3) == 32;
        if (*(&interchange_compression::format_table + 13 * v11 + v37 + 3) == 32)
        {
          v42 = 2;
        }

        else
        {
          v42 = 1;
        }

        v43 = v39 >> (v6 << v42);
        if (v41)
        {
          v44 = 15;
        }

        else
        {
          v44 = 3;
        }

        v45 = v43 & v44;
        v46 = v38 & 3;
        if (v46 == 3)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
        }

        else
        {
          if (!*(v7 + 12 * (v37 + 4) + 8))
          {
            interchange_compression::decompressor::unpack_header();
          }

          v47 = *(v7 + 12 * (v37 + 4) + 4) - v45 + 1;
          if ((v38 & 1 | 2) == 2)
          {
            v48 = 0;
          }

          else
          {
            v48 = 3;
          }

          v49 = (v38 & 1 | 2) != 2;
        }

        v86 = (v7 + 12 * (v37 + 8) + 8);
        if (!*v86)
        {
          interchange_compression::decompressor::unpack_header();
        }

        v50 = 0;
        v51 = v7 + 12 * (v37 + 8);
        v53 = *(v51 + 4);
        v52 = (v51 + 4);
        (*a5)[v49][v48][v37] = v53;
        v54 = (v45 == 0) & (v40 >> 3);
        v55 = v7 + 12 * (v37 + 16);
        v56 = v7 + 12 * (v37 + 20);
        v57 = v7 + 12 * (v37 + 24);
        v58 = 1;
        do
        {
          v59 = 0;
          v60 = 0;
          v81 = v58;
          v61 = -v50;
          v84 = v50 | v36;
          v62 = &v79[4 * v50];
          v63 = v6 & 1 ^ v50 ^ 1;
          v64 = &v80[128 * v50];
          v65 = v63 | v36;
          v66 = 3;
          v67 = &v90[4 * v63];
          do
          {
            if (v61 != v36 || v34 + v59 * 16)
            {
              if (v54)
              {
                if (!*(v55 + 8))
                {
                  interchange_compression::decompressor::unpack_header();
                }

                v68 = *(v55 + 4);
              }

              else
              {
                v68 = 0;
              }

              if (v47 >= 0x21)
              {
                interchange_compression::decompressor::decompress_pixels();
              }

              v69 = v68 << (-v47 & 0x1F) >> (-v47 & 0x1F);
              if (v46 > 1)
              {
                if (v46 == 2)
                {
                  if (!*(v56 + 8))
                  {
                    interchange_compression::decompressor::unpack_header();
                  }

                  v70 = *(&interchange_compression::format_table + 13 * *(this + 340) + v37 + 3);
                  if (v70 >= 0x42)
                  {
                    interchange_compression::decompressor::decompress_pixels();
                  }

                  if (!*(v57 + 8))
                  {
                    interchange_compression::decompressor::unpack_header();
                  }

                  if (!*v86)
                  {
                    interchange_compression::decompressor::unpack_header();
                  }

                  if (v70 >= 0x21)
                  {
                    interchange_compression::decompressor::decompress_pixels();
                  }

                  this = v89;
                  a5 = v83;
                  v71 = *v52 - v69 + LODWORD(v62[v59]) + ((*(v57 + 4) << -(v70 >> 1)) >> -(v70 >> 1)) * v84 + ((*(v56 + 4) << -(v70 >> 1)) >> -(v70 >> 1)) * (v82 + v60);
                  v34 = v87;
LABEL_79:
                  v72 = ((v71 & ~(-1 << v70)) << -v70) >> -v70;
                }

                else
                {
                  v72 = (*a5)[0][0][v37];
                }

                *&v64[v59 * 16] = v72;
                goto LABEL_87;
              }

              if (!v46)
              {
                if (!*v86)
                {
                  interchange_compression::decompressor::unpack_header();
                }

                v70 = *(&interchange_compression::format_table + 13 * *(this + 340) + v37 + 3);
                if (v70 >= 0x21)
                {
                  interchange_compression::decompressor::decompress_pixels();
                }

                v71 = *v52 - v69 + LODWORD(v62[v59]);
                goto LABEL_79;
              }

              v73 = *(&interchange_compression::format_table + 13 * *(this + 340) + v37 + 3);
              if (v73 >= 0x21)
              {
                interchange_compression::decompressor::decompress_pixels();
              }

              if (v6 >= 2)
              {
                v74 = v60;
              }

              else
              {
                v74 = v66;
              }

              v75 = v74 | (2 * v6) & 4;
              v34 = v87;
              (*a5)[v65][v75][v37] = ((((*a5)[dword_2954FDE90[16 * v65 + 1 + 2 * v75]][dword_2954FDE90[16 * v65 + 2 * v75]][v37] - v69 + *(&v67[v74] + v37)) & ~(-1 << v73)) << -v73) >> -v73;
            }

LABEL_87:
            ++v60;
            --v66;
            ++v59;
          }

          while (v59 != 4);
          v58 = 0;
          v50 = 1;
        }

        while ((v81 & 1) != 0);
        v35 = v37 + 1;
        v11 = *(this + 340);
        v79 = (v79 + 4);
        v80 += 4;
      }

      while ((v37 + 1) < *(&interchange_compression::format_table + 13 * v11 + 2));
    }

    ++v6;
    v5 = v77 + 2;
  }

  while (v6 != 4);
  v76 = *MEMORY[0x29EDCA608];
  return this;
}

_DWORD *interchange_compression::decompressor::decorrelate(_DWORD *this, unsigned int (*a2)[4][8][4])
{
  v2 = 0;
  v3 = this[85];
  v4 = a2;
  do
  {
    v5 = 0;
    v6 = v4;
    v7 = v3;
    do
    {
      if (v7 != 27)
      {
        v8 = 0;
        v9 = this + 3;
        v10 = v6;
        v11 = &unk_2954FD8EC;
        do
        {
          if (!*v9)
          {
            interchange_compression::decompressor::unpack_header();
          }

          if ((*(v9 - 1) & 0x10) != 0)
          {
            v12 = this[86];
            if (v8 != v12)
            {
              v13 = v11[13 * v7];
              if (v13 >= 0x21)
              {
                interchange_compression::decompressor::decompress_pixels();
              }

              *v10 = (((((*a2)[v2][v5][v12] >> (*(&interchange_compression::format_table + 13 * v7 + v12 + 3) - v13)) + *v10) & ~(-1 << v13)) << -v13) >> -v13;
              v3 = this[85];
            }
          }

          *v10++ &= ~(-1 << v11[13 * v3]);
          ++v8;
          v3 = this[85];
          ++v11;
          v9 += 3;
          v7 = v3;
        }

        while (v8 < *(&interchange_compression::format_table + 13 * v3 + 2));
      }

      ++v5;
      v6 = (v6 + 16);
    }

    while (v5 != 8);
    ++v2;
    v4 = (v4 + 128);
  }

  while (v2 != 4);
  return this;
}

uint64_t bit_pack::get(bit_pack *this, unsigned int a2, unsigned int a3)
{
  if (a3 >= 0x21)
  {
    bit_pack::get();
  }

  v3 = a2;
  v4 = *(this + 134);
  if (a3 + a2 > v4)
  {
    printf("read overflow:  read bit=%d size=%d, total=%d\n", a2, a3, v4);
    __assert_rtn("get", "interchange_bit_pack.h", 85, "0");
  }

  v5 = *(this + 128);
  __dst = 0;
  v6 = 520;
  if (*(this + 544))
  {
    v6 = 528;
  }

  v7 = *(this + v6);
  LODWORD(v8) = v5 - (a2 >> 3);
  if (v8 >= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v8;
  }

  v9 = -1 << a3;
  memcpy(&__dst, (v7 + (a2 >> 3)), v8);
  return (__dst >> (v3 & 7)) & ~v9;
}

uint64_t interchange_compression::header::error_check(interchange_compression::header *this)
{
  v1 = this + 4;
  v2 = *this;
  if (!*(this + 3 * *(&interchange_compression::format_table + 52 * *this + 48) + 3))
  {
    interchange_compression::decompressor::unpack_header();
  }

  if (v2 == 21)
  {
    result = 0;
  }

  else
  {
    result = (v1[12 * *(&interchange_compression::format_table + 52 * *this + 48) + 4] >> 4) & 1;
  }

  if (v2 != 27)
  {
    v5 = 0;
    v6 = &interchange_compression::format_table + 52 * v2;
    LODWORD(v7) = *(v6 + 2);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v7;
    }

    v8 = this + 12;
    v9 = this + 12;
    do
    {
      v10 = *v9;
      v9 += 12;
      if (!v10)
      {
        interchange_compression::decompressor::unpack_header();
      }

      v11 = *(v8 - 4);
      if ((v11 & 3u) - 1 >= 2)
      {
        v12 = result;
      }

      else
      {
        v12 = result | 2;
      }

      if ((v11 & 0x10) == 0)
      {
        v12 = result;
      }

      if ((v2 > 0x16 || ((1 << v2) & 0x4000C3) == 0) && (v11 & 3) == 2)
      {
        v12 |= 4u;
      }

      v13 = v11 & 3;
      if (v13 == 3)
      {
        if (!*&v1[12 * (v5 + 4) + 8])
        {
          interchange_compression::decompressor::unpack_header();
        }

        if (v11 & 4 | *&v1[12 * (v5 + 4) + 4])
        {
          v12 |= 0x10u;
        }
      }

      else
      {
        v14 = v12 | 8;
        if (v2 != 26)
        {
          v14 = v12;
        }

        if (v13 == 1)
        {
          v12 = v14;
        }
      }

      if (!*&v1[12 * (v5 + 4) + 8])
      {
        interchange_compression::decompressor::unpack_header();
      }

      if ((*&v1[12 * (v5 + 4) + 4] + 1) <= *&v6[4 * v5 + 12])
      {
        result = v12;
      }

      else
      {
        result = v12 | 0x20;
      }

      ++v5;
      v8 = v9;
    }

    while (v7 != v5);
  }

  return result;
}

void htpc_entropy::dec_symbols()
{
  __assert_rtn("dec_symbols", "htpc_entropy.h", 155, "bb_avail == 0");
}

{
  __assert_rtn("dec_symbols", "htpc_entropy.h", 190, "bb_avail < 8");
}

void interchange_compression::decompressor::decompress()
{
  __assert_rtn("decompress", "interchange_decompressor.h", 212, "lossy_level == 0");
}

{
  __assert_rtn("decompress", "interchange_decompressor.h", 203, "lossy_level == 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 901, "mode_sz != 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 911, "mode_sz != 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 1013, "pixel_unpacked <= legal_pixel_size");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 1063, "delta_quant <= ((1ull << delta_bits[c]) - 1)");
}

{
  __assert_rtn("skip", "interchange_bit_pack.h", 103, "read_ptr <= size_bits()");
}

void interchange_compression::header::get_size()
{
  __assert_rtn("get_size", "interchange_header.h", 133, "fields[field_id(BITS, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 132, "fields[field_id(MODE, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 127, "fields[field_id(MODE, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 142, "0");
}

{
  __assert_rtn("get_size", "interchange_header.h", 138, "fields[field_id(MODE, comp)].init");
}

void interchange_compression::derive_sharing()
{
  __assert_rtn("derive_sharing", "interchange_lossy.h", 357, "start_level[3] <= 0");
}

{
  __assert_rtn("derive_sharing", "interchange_lossy.h", 270, "mode[3] == 0 || mode[3] == 1");
}

void interchange_compression::decompressor::decompressor()
{
  __assert_rtn("set_format", "interchange_header.h", 205, "header_layout_table[id].format == id");
}

{
  __assert_rtn("decompressor", "interchange_decompressor.h", 40, "check_valid_lossy_level(lossy_level, format)");
}

{
  __assert_rtn("decompressor", "interchange_decompressor.h", 41, "lossy_level == 0 || comp_type < COMP_TYPE_INVALID");
}

void interchange_compression::decompressor::unpack_header()
{
  __assert_rtn("unpack_header", "interchange_decompressor.h", 238, "header::header_layout_table[format].field_size[0] > shift");
}

{
  __assert_rtn("get", "interchange_header.h", 104, "fields[field_id(s, comp)].init");
}

void interchange_compression::decompressor::decompress_pixels()
{
  __assert_rtn("sign_extend", "interchange_constants.h", 90, "width <= 32");
}

{
  __assert_rtn("wrap_to_range", "interchange_constants.h", 85, "width <= 32");
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

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
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