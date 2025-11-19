uint64_t AVE_Prop_HEVC_GetMCTFStrengthLevel(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, *(a1 + 2639), MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v27 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMCTFStrengthLevel", 20596, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, 2);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v30 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMCTFStrengthLevel", 20596, "pArray != __null", a1);
      }

      return 4294966293;
    }

    v11 = Mutable;
    if (*(a1 + 2639))
    {
      v12 = 2636;
      v13 = 10544;
      while (1)
      {
        v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, a1 + v13);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        CFArrayAppendValue(v11, v14);
        CFRelease(v15);
        v16 = v12 - 2635;
        ++v12;
        v13 += 4;
        if (v16 >= *(a1 + 2639))
        {
          goto LABEL_10;
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v31 = AVE_Log_CheckConsole(0x1Eu);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v32, 30, v33, "AVE_Prop_HEVC_GetMCTFStrengthLevel", 20605, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, v12 - 2636, *(a1 + v12));
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          v39 = *(a1 + v12);
          v38 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v32, 30, v33, "AVE_Prop_HEVC_GetMCTFStrengthLevel", 20605, "pNum != __null", a1);
      }

      CFRelease(v11);
      return 4294966293;
    }

LABEL_10:
    *a5 = v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v18 = AVE_Log_CheckConsole(0x1Eu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(7);
      v21 = *(a1 + 2639);
      if (v18)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v19, 30, v20, a1, a1[7], *a2, *(a1 + 2639), v11);
        v19 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v22 = a1[7];
        v36 = *(a1 + 2639);
        v35 = *a2;
      }

      else
      {
        v37 = *(a1 + 2639);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v19, 30);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v23 = AVE_Log_CheckConsole(0x1Eu);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_GetMCTFStrengthLevel", 20588, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v26 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v26, 30, v34, "AVE_Prop_HEVC_GetMCTFStrengthLevel", 20588);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v24, 30, v25, "AVE_Prop_HEVC_GetMCTFStrengthLevel", 20588);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetMCTFParams(_BYTE *a1, const char **a2, const __CFString *a3, const __CFArray *a4)
{
  v65 = *MEMORY[0x29EDCA608];
  memset(v64, 0, sizeof(v64));
  memset(v63, 0, sizeof(v63));
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = AVE_MCTF_Retrieve(a4, v63);
      if (v9)
      {
        v62 = v9;
        v61 = a2;
        v10 = 0;
        v11 = v63;
        v12 = 1;
        do
        {
          v13 = v12;
          v14 = &a1[64 * v10 + 10612];
          v15 = v11[1];
          *v14 = *v11;
          v14[1] = v15;
          v16 = v11[3];
          v14[2] = v11[2];
          v14[3] = v16;
          a1[10740] = 1;
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v17 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(7);
            v20 = *v11;
            v21 = *(v11 + 1);
            v22 = *(v11 + 2);
            v23 = *(v11 + 3);
            v24 = *(v11 + 4);
            v25 = *(v11 + 5);
            v26 = *(v11 + 6);
            v27 = *(v11 + 7);
            v28 = *(v11 + 8);
            v29 = *(v11 + 9);
            v30 = *(v11 + 10);
            v31 = *(v11 + 11);
            v32 = *(v11 + 12);
            v33 = *(v11 + 13);
            v34 = *(v11 + 14);
            v35 = *(v11 + 15);
            if (v17)
            {
              printf("%lld %d AVE %s: MCTF Params: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d\n", CurrTime, 30, LevelStr, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, *(v11 + 14), v35);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(7);
              v20 = *v11;
              v21 = *(v11 + 1);
              v22 = *(v11 + 2);
              v23 = *(v11 + 3);
              v24 = *(v11 + 4);
              v25 = *(v11 + 5);
              v26 = *(v11 + 6);
              v27 = *(v11 + 7);
              v28 = *(v11 + 8);
              v29 = *(v11 + 9);
              v30 = *(v11 + 10);
              v31 = *(v11 + 11);
              v32 = *(v11 + 12);
              v33 = *(v11 + 13);
              v34 = *(v11 + 14);
              v35 = *(v11 + 15);
            }

            syslog(3, "%lld %d AVE %s: MCTF Params: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", CurrTime, 30, LevelStr, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
          }

          v12 = 0;
          v11 = v64;
          v10 = 1;
        }

        while ((v13 & 1) != 0);
        if (AVE_Log_CheckLevel(0x1Eu, 7))
        {
          v36 = AVE_Log_CheckConsole(0x1Eu);
          v37 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(7);
          v39 = *v61;
          if (v36)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v37, 30, v38, a1, *(a1 + 7), *v61, a1[10740]);
            v37 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v40 = *(a1 + 7);
            v58 = *v61;
            v60 = a1[10740];
          }

          else
          {
            v59 = *v61;
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v37);
        }

        result = v62;
      }

      else
      {
        result = AVE_Log_CheckLevel(0x1Eu, 4);
        if (result)
        {
          v52 = AVE_Log_CheckConsole(0x1Eu);
          v53 = AVE_GetCurrTime();
          v54 = AVE_Log_GetLevelStr(4);
          if (v52)
          {
            printf("%lld %d AVE %s: %s:%d %s | error retrieve MCTF params %p %lld %p %p %p\n", v53, 30, v54, "AVE_Prop_HEVC_SetMCTFParams", 20669, "ret != 0", a1, *(a1 + 7), a2, a3, a4);
            v53 = AVE_GetCurrTime();
            v54 = AVE_Log_GetLevelStr(4);
            v55 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | error retrieve MCTF params %p %lld %p %p %p", v53, 30, v54, "AVE_Prop_HEVC_SetMCTFParams", 20669);
          result = 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v45 = AVE_Log_CheckConsole(0x1Eu);
        v46 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
        v48 = *(a1 + 7);
        v49 = CFGetTypeID(a4);
        if (v45)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v46, 30, v47, "AVE_Prop_HEVC_SetMCTFParams", 20664, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v48, a2, a3, a4, v49);
          v46 = AVE_GetCurrTime();
          v47 = AVE_Log_GetLevelStr(4);
          v50 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v46, 30, v47, "AVE_Prop_HEVC_SetMCTFParams", 20664, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
      }

      result = 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v41 = AVE_Log_CheckConsole(0x1Eu);
      v42 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(4);
      if (v41)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v42, 30, v43, "AVE_Prop_HEVC_SetMCTFParams", 20655, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v44 = AVE_GetCurrTime();
        v57 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v44, 30, v57, "AVE_Prop_HEVC_SetMCTFParams");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v42, 30, v43, "AVE_Prop_HEVC_SetMCTFParams");
      }
    }

    result = 4294966295;
  }

  v56 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AVE_Prop_HEVC_GetMCTFParams(unsigned __int8 *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (!a1 || !a2 || !a4 || !a5)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMCTFParams", 20716, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v21 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v32, "AVE_Prop_HEVC_GetMCTFParams", 20716);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMCTFParams", 20716);
      }
    }

    return 4294966295;
  }

  if (a1[10740] != 1)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
  if (!Mutable)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v27 = AVE_Log_CheckConsole(0x1Eu);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p\n", v28, 30, v29, "AVE_Prop_HEVC_GetMCTFParams", 20726, "pArray != __null", a1, *(a1 + 7), a2, allocator, a4, a5);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        v30 = *(a1 + 7);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p", v28, 30, v29, "AVE_Prop_HEVC_GetMCTFParams", 20726, "pArray != __null");
    }

    return 4294966293;
  }

  v11 = Mutable;
  v12 = AVE_MCTF_Make(a1 + 10612, Mutable);
  if (v12)
  {
LABEL_16:
    *a5 = v11;
    if (AVE_Log_CheckLevel(0x1Eu, 7))
    {
      v22 = AVE_Log_CheckConsole(0x1Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(7);
      v25 = a1[10740];
      if (v22)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v23, 30, v24, a1, *(a1 + 7), *a2, a1[10740], v11);
        v23 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v26 = *(a1 + 7);
        v34 = a1[10740];
        v33 = *a2;
      }

      else
      {
        v35 = a1[10740];
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v23, 30);
    }

    if (v12 && v11)
    {
      CFRelease(v11);
    }

    return v12;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v12 = AVE_Log_CheckConsole(0x1Eu);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(4);
    v15 = *(a1 + 7);
    if (!v12)
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | error make MCTF params %p %lld %p %p", v13, 30, v14, "AVE_Prop_HEVC_GetMCTFParams", 20730, "ret != 0", a1, v15, a4, a5);
      return v12;
    }

    printf("%lld %d AVE %s: %s:%d %s | error make MCTF params %p %lld %p %p\n", v13, 30, v14, "AVE_Prop_HEVC_GetMCTFParams", 20730, "ret != 0", a1, v15, a4, a5);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | error make MCTF params %p %lld %p %p", v16, 30, v17, "AVE_Prop_HEVC_GetMCTFParams", 20730, "ret != 0", a1, *(a1 + 7), a4, a5);
  }

  return 0;
}

uint64_t AVE_Prop_HEVC_SetMCTFMaxNextRefNum(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr < 0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20788, "iMaxNextRefNum >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20788, "iMaxNextRefNum >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26970) = valuePtr;
        *(a1 + 2953) = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v23 = a1[7];
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20779, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20779, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20769, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetMCTFMaxNextRefNum(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2953];
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x1Eu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFMaxNextRefNum", 20834, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFMaxNextRefNum", 20834, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMCTFMaxNextRefNum", 20824, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetMCTFMaxNextRefNum", 20824);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetMCTFMaxNextRefNum", 20824);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetMCTFRampUpFrameNum(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr < 0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20885, "iRamUpFrameNum >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20885, "iRamUpFrameNum >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26971) = valuePtr;
        *(a1 + 349) = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v23 = a1[7];
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20876, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20876, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20866, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetMCTFRampUpFrameNum(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[349];
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x1Eu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFRampUpFrameNum", 20931, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFRampUpFrameNum", 20931, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMCTFRampUpFrameNum", 20921, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetMCTFRampUpFrameNum", 20921);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetMCTFRampUpFrameNum", 20921);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetMCTFLatencyMode(char *a1, const char **a2, const __CFString *a3, const __CFString *a4)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v12 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFLatencyMode", 20966, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v15 = AVE_GetCurrTime();
        v46 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v46, "AVE_Prop_HEVC_SetMCTFLatencyMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFLatencyMode");
      }
    }

    return 4294966295;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a4) || (v9 = CFNumberGetTypeID(), v9 == CFGetTypeID(a4)))
  {
    v10 = CFStringGetTypeID();
    if (v10 == CFGetTypeID(a4))
    {
      if (CFEqual(a4, @"Low"))
      {
        goto LABEL_9;
      }

      if (CFEqual(a4, @"Medium"))
      {
        v11 = 2;
        goto LABEL_28;
      }

      if (CFEqual(a4, @"Auto"))
      {
LABEL_9:
        v11 = 1;
LABEL_28:
        Str = AVE_CFStr_GetStr(a4, a1 + 106772, 128);
        if (Str != a1 + 106772)
        {
          AVE_SNPrintf(a1 + 106772, 128, "%s", v29, v30, v31, v32, v33, Str);
        }

        if (AVE_Log_CheckLevel(0x1Eu, 7))
        {
          v34 = AVE_Log_CheckConsole(0x1Eu);
          v35 = AVE_GetCurrTime();
          v36 = AVE_Log_GetLevelStr(7);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d  %p %lld %p %p %p iaVTLatencyMode = %s\n", v35, 30, v36, "AVE_Prop_HEVC_SetMCTFLatencyMode", 21011, a1, *(a1 + 7), a2, a3, a4, a1 + 106772);
            v35 = AVE_GetCurrTime();
            v36 = AVE_Log_GetLevelStr(7);
            v37 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d  %p %lld %p %p %p iaVTLatencyMode = %s", v35, 30, v36, "AVE_Prop_HEVC_SetMCTFLatencyMode", 21011);
        }

        goto LABEL_35;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v43 = AVE_Log_CheckConsole(0x1Eu);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p\n", v44, 30, v45, "AVE_Prop_HEVC_SetMCTFLatencyMode", 20999, "false", a1, *(a1 + 7), a2, a3, a4);
          v44 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(4);
        }

        v48 = *(a1 + 7);
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p", v44, 30, v45, "AVE_Prop_HEVC_SetMCTFLatencyMode", 20999);
      }

      return 4294966295;
    }

    v16 = CFNumberGetTypeID();
    if (v16 == CFGetTypeID(a4))
    {
      valuePtr = 0;
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v11 = valuePtr;
      if ((valuePtr - 1) >= 2)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v17 = AVE_Log_CheckConsole(0x1Eu);
          v18 = AVE_GetCurrTime();
          v19 = AVE_Log_GetLevelStr(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p %d (%d, %d)\n", v18, 30, v19, "AVE_Prop_HEVC_SetMCTFLatencyMode", 21024, "AVE_MCTF_Mode_Invalid < eMCTFLatencyMode && eMCTFLatencyMode < AVE_MCTF_Mode_Max", a1, *(a1 + 7), a2, a3, a4, v11, 0, 3);
            v18 = AVE_GetCurrTime();
            v19 = AVE_Log_GetLevelStr(4);
            v20 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p %d (%d, %d)", v18, 30, v19, "AVE_Prop_HEVC_SetMCTFLatencyMode", 21024, "AVE_MCTF_Mode_Invalid < eMCTFLatencyMode && eMCTFLatencyMode < AVE_MCTF_Mode_Max", a1);
        }

        return 4294965292;
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_35:
    *(a1 + 26692) = v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v38 = AVE_Log_CheckConsole(0x1Eu);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(7);
      v41 = *a2;
      if (v38)
      {
        printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v39, 30, v40, a1, *(a1 + 7), *a2, v11);
        v39 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v42 = *(a1 + 7);
      }

      v47 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v39);
      return 0;
    }

    return result;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v22 = AVE_Log_CheckConsole(0x1Eu);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(4);
    v25 = *(a1 + 7);
    v26 = CFGetTypeID(a4);
    if (v22)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetMCTFLatencyMode", 20977, "CFStringGetTypeID() == CFGetTypeID(pValue) || CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      v27 = *(a1 + 7);
      CFGetTypeID(a4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetMCTFLatencyMode", 20977, "CFStringGetTypeID() == CFGetTypeID(pValue) || CFNumberGetTypeID() == CFGetTypeID(pValue)");
  }

  return 4294965293;
}

uint64_t AVE_Prop_HEVC_GetMCTFLatencyMode(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFString **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[26692];
    valuePtr = v10;
    if (*(a1 + 106772) || !v10)
    {
      if (v10 == 1)
      {
        v11 = @"Low";
      }

      else if (v10 == 2)
      {
        v11 = @"Medium";
      }

      else
      {
        v11 = CFStringCreateWithCString(0, &unk_295613FE7, 0);
      }
    }

    else
    {
      v11 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
      if (!v11)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v12 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMCTFLatencyMode", 21075, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v15 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMCTFLatencyMode", 21075, "pNum != __null", a1);
        }

        return 4294966293;
      }
    }

    *a5 = v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v21 = AVE_Log_CheckConsole(0x1Eu);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(7);
      if (v21)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v22, 30, v23, a1, *(a1 + 7), *a2, valuePtr, a5);
        v22 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v24 = *(a1 + 7);
        v26 = *a2;
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v22, 30);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetMCTFLatencyMode", 21061, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v25, "AVE_Prop_HEVC_GetMCTFLatencyMode", 21061);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetMCTFLatencyMode", 21061);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetUseElementaryStreamOutput(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26972] = v9;
      *(a1 + 10756) = v9;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v11 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v9);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v15 = *(a1 + 7);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v23 = *(a1 + 7);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetUseElementaryStreamOutput", 21136, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetUseElementaryStreamOutput", 21136, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetUseElementaryStreamOutput", 21126, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetUseElementaryStreamOutput");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetUseElementaryStreamOutput");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetUseElementaryStreamOutput(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10756];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10756])
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v10);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v17 = *(a1 + 7);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x1Eu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetUseElementaryStreamOutput", 21173, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetUseElementaryStreamOutput", 21173);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetUseElementaryStreamOutput", 21173);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetCmdTimeOutMode(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr < 0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21229, "iCmdTimeOutMode >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21229, "iCmdTimeOutMode >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26973) = valuePtr;
        *(a1 + 2940) = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v23 = a1[7];
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21220, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21220, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21210, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetCmdTimeOutMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetCmdTimeOutMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetCmdTimeOutMode(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2940];
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x1Eu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetCmdTimeOutMode", 21275, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetCmdTimeOutMode", 21275, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetCmdTimeOutMode", 21265, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetCmdTimeOutMode", 21265);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetCmdTimeOutMode", 21265);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_MakeDict(uint64_t a1, uint64_t a2, uint64_t a3, __CFDictionary *a4)
{
  v6 = a2;
  v7 = a1;
  if ((a1 - 1) > 0x21 || a4 == 0)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v9 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_MakeDict", 21620, "AVE_DevID_None < devID && devID < AVE_DevID_Max && pDict != __null", v7, v6, a3, a4);
        v12 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p", v12, 30, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p", CurrTime, 30, LevelStr);
      }
    }

    return 4294966295;
  }

  else
  {
    Dict = AVE_Prop_MakeDict(&gs_saAVE_Prop_HEVC, 198, a1, a2, a3, a4);
    v14 = Dict;
    if (Dict && AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x1Eu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d\n", v16, 30, v17, "AVE_Prop_HEVC_MakeDict", 21628, "ret == 0", v7, v6, a3, a4, v14);
        v18 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d", v18, 30, v21, "AVE_Prop_HEVC_MakeDict");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d", v16, 30, v17, "AVE_Prop_HEVC_MakeDict");
      }
    }
  }

  return v14;
}

uint64_t AVE_Prop_HEVC_SetProperty(uint64_t a1, __CFString *a2, const void *a3)
{
  if (*(a1 + 32) == 2)
  {
    v6 = 512;
  }

  else
  {
    v6 = 256;
  }

  v7 = AVE_Prop_SetProperty(&gs_saAVE_Prop_HEVC, 198, *(a1 + 68), v6, a1, *(a1 + 56), a2, a3);
  if (v7 && AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v8 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetProperty", 21662, "ret == 0", a1, *(a1 + 56), v6, *(a1 + 68), a2, a3, v7);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v11 = *(a1 + 56);
      v13 = *(a1 + 68);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetProperty", 21662, "ret == 0");
  }

  return v7;
}

uint64_t AVE_Prop_HEVC_GetProperty(uint64_t a1, const void *a2, __CFString *a3, const void *a4)
{
  if (*(a1 + 32) == 2)
  {
    v8 = 512;
  }

  else
  {
    v8 = 256;
  }

  Property = AVE_Prop_GetProperty(&gs_saAVE_Prop_HEVC, 198, *(a1 + 68), v8, a1, *(a1 + 56), a2, a3, a4);
  if (Property && AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v10 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetProperty", 21697, "ret == 0", a1, *(a1 + 56), v8, *(a1 + 68), a2, a3, a4, Property);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v15 = *(a1 + 68);
      v14 = *(a1 + 56);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetProperty", 21697, "ret == 0", a1);
  }

  return Property;
}

uint64_t AVE_Prop_HEVC_CreateSupportedPresetDictionary(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v2 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1);
      v5 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 30, v28, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1);
    }
  }

  if (a1)
  {
    if (*(a1 + 32) == 2)
    {
      v6 = 512;
    }

    else
    {
      v6 = 256;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v8 = Mutable;
      PresetDict = AVE_Enc_CreatePresetDict(a1, *(a1 + 56), *(a1 + 68), 0, &gs_saAVE_Prop_HEVC, 198, v6, *(a1 + 1440), *(a1 + 1444), Mutable);
      if (PresetDict)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v10 = AVE_Log_CheckConsole(0x1Eu);
          v11 = AVE_GetCurrTime();
          v12 = AVE_Log_GetLevelStr(4);
          v13 = *(a1 + 68);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld 0x%x %d %d\n", v11, 30, v12, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", 21743, "ret == 0", a1, *(a1 + 56), v6, *(a1 + 68), PresetDict);
            v11 = AVE_GetCurrTime();
            v12 = AVE_Log_GetLevelStr(4);
            v14 = *(a1 + 56);
          }

          v30 = *(a1 + 68);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld 0x%x %d %d", v11, 30, v12, "AVE_Prop_HEVC_CreateSupportedPresetDictionary");
        }

        CFRelease(v8);
      }

      else
      {
        *(a1 + 104) = v8;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        v21 = *(a1 + 68);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d\n", v19, 30, v20, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", 21734, "pDict != __null", a1, *(a1 + 56), v6, *(a1 + 68), 0);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          v22 = *(a1 + 56);
        }

        v31 = *(a1 + 68);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d", v19, 30, v20, "AVE_Prop_HEVC_CreateSupportedPresetDictionary");
      }

      PresetDict = 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x1Eu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v16, 30, v17, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", 21719, "pINS != __null", 0);
        v16 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v16);
    }

    PresetDict = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v23 = AVE_Log_CheckConsole(0x1Eu);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(6);
    if (v23)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v24, 30, v25, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1, PresetDict);
      v26 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v26, 30, v29, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1, PresetDict);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v24, 30, v25, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1, PresetDict);
    }
  }

  return PresetDict;
}

double _GLOBAL__sub_I_AVE_Prop_HEVC_cpp()
{
  gsc_saAVE_HEVC_ProfileLevel = @"HEVC_Main_1_0";
  qword_2A189A518 = 0x100000001;
  qword_2A189A520 = @"HEVC_Main_2_0";
  qword_2A189A528 = 0x200000001;
  qword_2A189A530 = @"HEVC_Main_2_1";
  qword_2A189A538 = 0x300000001;
  qword_2A189A540 = @"HEVC_Main_3_0";
  qword_2A189A548 = 0x400000001;
  qword_2A189A550 = @"HEVC_Main_3_1";
  qword_2A189A558 = 0x500000001;
  qword_2A189A560 = @"HEVC_Main_4_0";
  qword_2A189A568 = 0x600000001;
  qword_2A189A570 = @"HEVC_Main_4_1";
  qword_2A189A578 = 0x700000001;
  qword_2A189A580 = @"HEVC_Main_5_0";
  qword_2A189A588 = 0x800000001;
  qword_2A189A590 = @"HEVC_Main_5_1";
  qword_2A189A598 = 0x900000001;
  qword_2A189A5A0 = @"HEVC_Main_5_2";
  qword_2A189A5A8 = 0xA00000001;
  qword_2A189A5B0 = @"HEVC_Main_6_0";
  qword_2A189A5B8 = 0xB00000001;
  qword_2A189A5C0 = @"HEVC_Main_6_1";
  qword_2A189A5C8 = 0xC00000001;
  qword_2A189A5D0 = @"HEVC_Main_6_2";
  qword_2A189A5D8 = 0xD00000001;
  qword_2A189A5E0 = @"HEVC_Main10_1_0";
  qword_2A189A5E8 = 0x100000002;
  qword_2A189A5F0 = @"HEVC_Main10_2_0";
  qword_2A189A5F8 = 0x200000002;
  qword_2A189A600 = @"HEVC_Main10_2_1";
  qword_2A189A608 = 0x300000002;
  qword_2A189A610 = @"HEVC_Main10_3_0";
  qword_2A189A618 = 0x400000002;
  qword_2A189A620 = @"HEVC_Main10_3_1";
  qword_2A189A628 = 0x500000002;
  qword_2A189A630 = @"HEVC_Main10_4_0";
  qword_2A189A638 = 0x600000002;
  qword_2A189A640 = @"HEVC_Main10_4_1";
  qword_2A189A648 = 0x700000002;
  qword_2A189A650 = @"HEVC_Main10_5_0";
  qword_2A189A658 = 0x800000002;
  qword_2A189A660 = @"HEVC_Main10_5_1";
  qword_2A189A668 = 0x900000002;
  qword_2A189A670 = @"HEVC_Main10_5_2";
  qword_2A189A678 = 0xA00000002;
  qword_2A189A680 = @"HEVC_Main10_6_0";
  qword_2A189A688 = 0xB00000002;
  qword_2A189A690 = @"HEVC_Main10_6_1";
  qword_2A189A698 = 0xC00000002;
  qword_2A189A6A0 = @"HEVC_Main10_6_2";
  qword_2A189A6A8 = 0xD00000002;
  qword_2A189A6B0 = @"HEVC_Main444_1_0";
  qword_2A189A6B8 = 0x100000009;
  qword_2A189A6C0 = @"HEVC_Main444_2_0";
  qword_2A189A6C8 = 0x200000009;
  qword_2A189A6D0 = @"HEVC_Main444_2_1";
  qword_2A189A6D8 = 0x300000009;
  qword_2A189A6E0 = @"HEVC_Main444_3_0";
  qword_2A189A6E8 = 0x400000009;
  qword_2A189A6F0 = @"HEVC_Main444_3_1";
  qword_2A189A6F8 = 0x500000009;
  qword_2A189A700 = @"HEVC_Main444_4_0";
  qword_2A189A708 = 0x600000009;
  qword_2A189A710 = @"HEVC_Main444_4_1";
  qword_2A189A718 = 0x700000009;
  qword_2A189A720 = @"HEVC_Main444_5_0";
  qword_2A189A728 = 0x800000009;
  qword_2A189A730 = @"HEVC_Main444_5_1";
  qword_2A189A738 = 0x900000009;
  qword_2A189A740 = @"HEVC_Main444_5_2";
  qword_2A189A748 = 0xA00000009;
  qword_2A189A750 = @"HEVC_Main444_6_0";
  qword_2A189A758 = 0xB00000009;
  qword_2A189A760 = @"HEVC_Main444_6_1";
  qword_2A189A768 = 0xC00000009;
  qword_2A189A770 = @"HEVC_Main444_6_2";
  qword_2A189A778 = 0xD00000009;
  qword_2A189A780 = @"HEVC_Main44410_1_0";
  qword_2A189A788 = 0x10000000ALL;
  qword_2A189A790 = @"HEVC_Main44410_2_0";
  qword_2A189A798 = 0x20000000ALL;
  qword_2A189A7A0 = @"HEVC_Main44410_2_1";
  qword_2A189A7A8 = 0x30000000ALL;
  qword_2A189A7B0 = @"HEVC_Main44410_3_0";
  qword_2A189A7B8 = 0x40000000ALL;
  qword_2A189A7C0 = @"HEVC_Main44410_3_1";
  qword_2A189A7C8 = 0x50000000ALL;
  qword_2A189A7D0 = @"HEVC_Main44410_4_0";
  qword_2A189A7D8 = 0x60000000ALL;
  qword_2A189A7E0 = @"HEVC_Main44410_4_1";
  qword_2A189A7E8 = 0x70000000ALL;
  qword_2A189A7F0 = @"HEVC_Main44410_5_0";
  qword_2A189A7F8 = 0x80000000ALL;
  qword_2A189A800 = @"HEVC_Main44410_5_1";
  qword_2A189A808 = 0x90000000ALL;
  qword_2A189A810 = @"HEVC_Main44410_5_2";
  qword_2A189A818 = 0xA0000000ALL;
  qword_2A189A820 = @"HEVC_Main44410_6_0";
  qword_2A189A828 = 0xB0000000ALL;
  qword_2A189A830 = @"HEVC_Main44410_6_1";
  qword_2A189A838 = 0xC0000000ALL;
  qword_2A189A840 = @"HEVC_Main44410_6_2";
  qword_2A189A848 = 0xD0000000ALL;
  qword_2A189A850 = @"HEVC_Main44410_1_0";
  qword_2A189A858 = 0x100000008;
  qword_2A189A860 = @"HEVC_Main44410_2_0";
  qword_2A189A868 = 0x200000008;
  qword_2A189A870 = @"HEVC_Main44410_2_1";
  qword_2A189A878 = 0x300000008;
  qword_2A189A880 = @"HEVC_Main44410_3_0";
  qword_2A189A888 = 0x400000008;
  qword_2A189A890 = @"HEVC_Main44410_3_1";
  qword_2A189A898 = 0x500000008;
  qword_2A189A8A0 = @"HEVC_Main44410_4_0";
  qword_2A189A8A8 = 0x600000008;
  qword_2A189A8B0 = @"HEVC_Main44410_4_1";
  qword_2A189A8B8 = 0x700000008;
  qword_2A189A8C0 = @"HEVC_Main44410_5_0";
  qword_2A189A8C8 = 0x800000008;
  qword_2A189A8D0 = @"HEVC_Main44410_5_1";
  qword_2A189A8D8 = 0x900000008;
  qword_2A189A8E0 = @"HEVC_Main44410_5_2";
  qword_2A189A8E8 = 0xA00000008;
  qword_2A189A8F0 = @"HEVC_Main44410_6_0";
  qword_2A189A8F8 = 0xB00000008;
  qword_2A189A900 = @"HEVC_Main44410_6_1";
  qword_2A189A908 = 0xC00000008;
  qword_2A189A910 = @"HEVC_Main44410_6_2";
  qword_2A189A918 = 0xD00000008;
  qword_2A189A920 = @"HEVC_MainStill_1_0";
  qword_2A189A928 = 0x100000003;
  qword_2A189A930 = @"HEVC_MainStill_2_0";
  qword_2A189A938 = 0x200000003;
  qword_2A189A940 = @"HEVC_MainStill_2_1";
  qword_2A189A948 = 0x300000003;
  qword_2A189A950 = @"HEVC_MainStill_3_0";
  qword_2A189A958 = 0x400000003;
  qword_2A189A960 = @"HEVC_MainStill_3_1";
  qword_2A189A968 = 0x500000003;
  qword_2A189A970 = @"HEVC_MainStill_4_0";
  qword_2A189A978 = 0x600000003;
  qword_2A189A980 = @"HEVC_MainStill_4_1";
  qword_2A189A988 = 0x700000003;
  qword_2A189A990 = @"HEVC_MainStill_5_0";
  qword_2A189A998 = 0x800000003;
  qword_2A189A9A0 = @"HEVC_MainStill_5_1";
  qword_2A189A9A8 = 0x900000003;
  qword_2A189A9B0 = @"HEVC_MainStill_5_2";
  qword_2A189A9B8 = 0xA00000003;
  qword_2A189A9C0 = @"HEVC_MainStill_6_0";
  qword_2A189A9C8 = 0xB00000003;
  qword_2A189A9D0 = @"HEVC_MainStill_6_1";
  qword_2A189A9D8 = 0xC00000003;
  qword_2A189A9E0 = @"HEVC_MainStill_6_2";
  qword_2A189A9E8 = 0xD00000003;
  qword_2A189A9F0 = *MEMORY[0x29EDBD0F0];
  qword_2A189A9F8 = 1;
  qword_2A189AA00 = *MEMORY[0x29EDBD0C8];
  qword_2A189AA08 = 2;
  qword_2A189AA10 = *MEMORY[0x29EDBD0E0];
  qword_2A189AA18 = 9;
  qword_2A189AA20 = *MEMORY[0x29EDBD0D8];
  qword_2A189AA28 = 10;
  qword_2A189AA30 = *MEMORY[0x29EDBD0D0];
  qword_2A189AA38 = 8;
  qword_2A189AA40 = *MEMORY[0x29EDBD100];
  qword_2A189AA48 = 6;
  qword_2A189AA50 = *MEMORY[0x29EDBD0F8];
  qword_2A189AA58 = 7;
  qword_2A189AA60 = *MEMORY[0x29EDBD0E8];
  *&result = 3;
  qword_2A189AA68 = 3;
  return result;
}

uint64_t AVE_Prop_Add(const void *a1, int a2, int a3, uint64_t a4, __CFDictionary *a5)
{
  if (a1 && a2 <= 8 && a5)
  {
    if (a2 > 3)
    {
      if ((a2 - 4) < 4)
      {
        v10 = 0;
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    switch(a2)
    {
      case 1:
        v15 = MEMORY[0x29EDBD130];
        break;
      case 2:
        v15 = MEMORY[0x29EDBD140];
        break;
      case 3:
        v15 = MEMORY[0x29EDBD138];
        break;
      default:
LABEL_17:
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v17 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | unsupported property type %p %d 0x%x %lld %p\n", CurrTime, 30, LevelStr, "AVE_Prop_Add", 58, "ret == 0", a1, a2, a3, a4, a5);
            v20 = AVE_GetCurrTime();
            v30 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | unsupported property type %p %d 0x%x %lld %p", v20, 30, v30, "AVE_Prop_Add");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | unsupported property type %p %d 0x%x %lld %p", CurrTime, 30, LevelStr, "AVE_Prop_Add");
          }
        }

        return 4294966294;
    }

    v10 = *v15;
LABEL_22:
    v21 = *MEMORY[0x29EDBD118];
    if ((a3 & 0x30000) == 0x10000)
    {
      v22 = *MEMORY[0x29EDBD110];
    }

    else
    {
      v22 = *MEMORY[0x29EDBD118];
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v24 = Mutable;
      if (v10)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD128], v10);
      }

      CFDictionarySetValue(v24, *MEMORY[0x29EDBD108], v22);
      CFDictionarySetValue(a5, a1, v24);
      CFRelease(v24);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v25 = AVE_Log_CheckConsole(0x1Eu);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %d 0x%x %lld %p\n", v26, 30, v27, "AVE_Prop_Add", 68, "pTmpDict != __null", a1, a2, a3, a4, a5);
          v28 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %d 0x%x %lld %p", v28, 30, v31, "AVE_Prop_Add");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %d 0x%x %lld %p", v26, 30, v27, "AVE_Prop_Add");
        }
      }

      return 4294966293;
    }
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v11 = AVE_Log_CheckConsole(0x1Eu);
    v12 = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d 0x%x %lld %p\n", v12, 30, v13, "AVE_Prop_Add", 34, "pKey != __null && AVE_Prop_Type_None <= type && type < AVE_Prop_Type_Max && pDict != __null", a1, a2, a3, a4, a5);
      v14 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d 0x%x %lld %p", v14, 30, v29, "AVE_Prop_Add");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d 0x%x %lld %p", v12, 30, v13, "AVE_Prop_Add");
    }
  }

  return 4294966295;
}

uint64_t AVE_Prop_MakeDict(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFDictionary *a6)
{
  v12 = AVE_DevCap_Find(a3);
  if (!v12)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %d 0x%x %lld %p\n", CurrTime, 30, LevelStr, "AVE_Prop_MakeDict", 110, "pDevCap != __null", a1, a2, a3, a4, a5, a6);
        v23 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %d 0x%x %lld %p", v23, 30, v32, "AVE_Prop_MakeDict", 110);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %d 0x%x %lld %p", CurrTime, 30, LevelStr, "AVE_Prop_MakeDict", 110);
      }
    }

    return 4294966294;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v13 = v12;
  v14 = 0;
  v39 = a1;
  for (i = a1 + 4; ; i += 16)
  {
    v16 = i[1];
    if ((v16 & 0x40000) != 0 || (v16 & a4) != a4 || ((*(i + 1) >> *(v13 + 1)) & 1) == 0)
    {
      goto LABEL_12;
    }

    if (*i == 8)
    {
      break;
    }

    v18 = AVE_Prop_Add(*(i - 1), *i, v16, a5, a6);
LABEL_11:
    v19 = v18;
    if (v18)
    {
      goto LABEL_21;
    }

LABEL_12:
    if (a2 == ++v14)
    {
      return 0;
    }
  }

  v17 = *(i + 2);
  if (v17)
  {
    v18 = v17(a3, a4, a5, a6);
    goto LABEL_11;
  }

  v19 = 4294966288;
LABEL_21:
  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v25 = AVE_Log_CheckConsole(0x1Eu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(4);
    v28 = *(i + 1);
    if (v25)
    {
      v29 = a3;
      printf("%lld %d AVE %s: %s:%d %s | fail to add property %p %d %d 0x%x %lld | %d %s %p %d 0x%x 0x%llx %d\n", v26, 30, v27, "AVE_Prop_MakeDict", 154, "ret == 0", v39, a2, a3, a4, a5, v14, *(i - 2), *(i - 1), *i, i[1], *(i + 1), v19);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      v37 = *(i + 1);
      v35 = *i;
      v36 = i[1];
      v33 = *(i - 2);
      v34 = *(i - 1);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add property %p %d %d 0x%x %lld | %d %s %p %d 0x%x 0x%llx %d", v30, 30, v31, "AVE_Prop_MakeDict", 154, "ret == 0", v39, a2, v29, a4);
    }

    else
    {
      v38 = *(i + 1);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add property %p %d %d 0x%x %lld | %d %s %p %d 0x%x 0x%llx %d", v26, 30, v27, "AVE_Prop_MakeDict", 154, "ret == 0", v39, a2, a3, a4);
    }
  }

  return v19;
}

uint64_t AVE_Prop_FindPropertyEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, __CFString *a7)
{
  v12 = a2;
  v13 = a1;
  v43 = *MEMORY[0x29EDCA608];
  v41 = 0u;
  v42 = 0u;
  *v39 = 0u;
  v40 = 0u;
  if (!a1 || a2 < 1 || !a5 || !a7)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v21 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p\n", CurrTime, 30, LevelStr, "AVE_Prop_FindPropertyEntry", 190, "pArray != __null && num > 0 && pINS != __null && pKey != __null", v13, v12, a5, a6, a3, a4, a7);
        CurrTime = AVE_GetCurrTime();
        v37 = a4;
        v38 = a7;
        v35 = a6;
        v36 = a3;
        v33 = v12;
        v34 = a5;
        v32 = v13;
        v31 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v37 = a4;
        v38 = a7;
        v35 = a6;
        v36 = a3;
        v33 = v12;
        v34 = a5;
        v32 = v13;
        v31 = LevelStr;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p", CurrTime, 30, v31, "AVE_Prop_FindPropertyEntry", 190, "pArray != __null && num > 0 && pINS != __null && pKey != __null", v32, v33, v34, v35, v36, v37, v38);
    }

    goto LABEL_23;
  }

  Str = AVE_CFStr_GetStr(a7, v39, 64);
  v15 = AVE_DevCap_Find(a3);
  if (!v15)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v24 = AVE_Log_CheckConsole(0x1Eu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %p %lld %d 0x%x %s\n", v25, 30, v26, "AVE_Prop_FindPropertyEntry", 196, "pDevCap != __null", v13, v12, a5, a6, a3, a4, Str);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %p %lld %d 0x%x %s", v27, 30, v28, "AVE_Prop_FindPropertyEntry", 196, "pDevCap != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %p %lld %d 0x%x %s", v25, 30, v26, "AVE_Prop_FindPropertyEntry", 196, "pDevCap != __null");
      }
    }

LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  v16 = v15;
  v12 = v12;
  while (1)
  {
    if ((*(v13 + 24) >> *(v16 + 1)))
    {
      v17 = *(v13 + 20);
      v18 = a4 & 0xFFFCFFFF & ~v17;
      v19 = a4 & 0x30000 & v17;
      v20 = v18 || v19 == 0;
      if (!v20 && CFEqual(a7, *(v13 + 8)))
      {
        break;
      }
    }

    v13 += 64;
    if (!--v12)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  v29 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t AVE_Prop_SetProperty(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, __CFString *a7, const void *a8)
{
  v63 = *MEMORY[0x29EDCA608];
  v61 = 0u;
  v62 = 0u;
  *v59 = 0u;
  v60 = 0u;
  if (a1 && a2 >= 1 && a5 && a7)
  {
    PropertyEntry = AVE_Prop_FindPropertyEntry(a1, a2, a3, a4 | 0x20000, a5, a6, a7);
    if (PropertyEntry)
    {
      v17 = PropertyEntry;
      v18 = *(PropertyEntry + 40);
      if (v18)
      {
        v19 = v18(a5, PropertyEntry, a7, a8);
        if (v19 && AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v20 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v23 = v17[3];
          if (v20)
          {
            v24 = a3;
            printf("%lld %d AVE %s: %s:%d %s | fail to set property %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx %d\n", CurrTime, 30, LevelStr, "AVE_Prop_SetProperty", 268, "ret == 0", a5, a6, a3, a4, a7, a8, *v17, v17[1], *(v17 + 4), *(v17 + 5), v17[3], v19);
            v25 = AVE_GetCurrTime();
            v26 = AVE_Log_GetLevelStr(4);
            v55 = v17[3];
            v50 = *(v17 + 4);
            v52 = *(v17 + 5);
            v46 = *v17;
            v48 = v17[1];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx %d", v25, 30, v26, "AVE_Prop_SetProperty", 268, "ret == 0", a5, a6, v24, a4);
          }

          else
          {
            v57 = v17[3];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx %d", CurrTime, 30, LevelStr, "AVE_Prop_SetProperty", 268, "ret == 0", a5, a6, a3, a4);
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v35 = AVE_Log_CheckConsole(0x1Eu);
          v36 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          v38 = *(v17 + 5);
          if (v35)
          {
            v39 = a3;
            printf("%lld %d AVE %s: %s:%d %s | set function is not supported %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx\n", v36, 30, v37, "AVE_Prop_SetProperty", 260, "pEntry->Set != __null", a5, a6, a3, a4, a7, a8, *v17, v17[1], *(v17 + 4), *(v17 + 5), v17[3]);
            v40 = AVE_GetCurrTime();
            v41 = AVE_Log_GetLevelStr(4);
            v53 = *(v17 + 5);
            v56 = v17[3];
            v49 = v17[1];
            v51 = *(v17 + 4);
            v47 = *v17;
            syslog(3, "%lld %d AVE %s: %s:%d %s | set function is not supported %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx", v40, 30, v41, "AVE_Prop_SetProperty", 260, "pEntry->Set != __null", a5, a6, v39);
          }

          else
          {
            v54 = *(v17 + 5);
            syslog(3, "%lld %d AVE %s: %s:%d %s | set function is not supported %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx", v36, 30, v37, "AVE_Prop_SetProperty", 260, "pEntry->Set != __null", a5, a6, a3);
          }
        }

        v19 = 4294966294;
      }
    }

    else
    {
      Str = AVE_CFStr_GetStr(a7, v59, 64);
      if (AVE_Log_CheckLevel(0x1Eu, 5))
      {
        v32 = AVE_Log_CheckConsole(0x1Eu);
        v58 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(5);
        if (v32)
        {
          printf("%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %s %p %d\n", v58, 30, v33, a1, a2, a5, a6, a3, a4, Str, a8, -2002);
          v34 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %s %p %d", v34, 30, v45, a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %s %p %d", v58, 30, v33, a1, a2);
        }
      }

      CFShow(a7);
      CFShow(a8);
      v19 = 4294965294;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v27 = AVE_Log_CheckConsole(0x1Eu);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p\n", v28, 30, v29, "AVE_Prop_SetProperty", 249, "pArray != __null && num > 0 && pINS != __null && pKey != __null", a1, a2, a5, a6, a3, a4, a7, a8);
        v30 = AVE_GetCurrTime();
        v44 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p", v30, 30, v44, "AVE_Prop_SetProperty", 249, "pArray != __null && num > 0 && pINS != __null && pKey != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p", v28, 30, v29, "AVE_Prop_SetProperty", 249, "pArray != __null && num > 0 && pINS != __null && pKey != __null", a1);
      }
    }

    v19 = 4294966295;
  }

  v42 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t AVE_Prop_GetProperty(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, __CFString *a8, const void *a9)
{
  v65 = *MEMORY[0x29EDCA608];
  v63 = 0u;
  v64 = 0u;
  *v61 = 0u;
  v62 = 0u;
  if (a1 && a2 >= 1 && a5 && a8 && a9)
  {
    PropertyEntry = AVE_Prop_FindPropertyEntry(a1, a2, a3, a4 | 0x10000, a5, a6, a8);
    if (PropertyEntry)
    {
      v18 = PropertyEntry;
      v19 = *(PropertyEntry + 48);
      if (v19)
      {
        v20 = v19(a5, PropertyEntry, a7, a8, a9);
        if (v20 && AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v21 = a7;
          v22 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v24 = v18[3];
          if (v22)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to get property %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx %d\n", CurrTime, 30, LevelStr, "AVE_Prop_GetProperty", 330, "ret == 0", a5, a6, a3, a4, v21, a8, a9, *v18, v18[1], *(v18 + 4), *(v18 + 5), v18[3], v20);
            v25 = AVE_GetCurrTime();
            v26 = AVE_Log_GetLevelStr(4);
            v53 = v18[3];
            v48 = *(v18 + 4);
            v50 = *(v18 + 5);
            v44 = *v18;
            v46 = v18[1];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx %d", v25, 30, v26, "AVE_Prop_GetProperty", 330, "ret == 0", a5, a6, a3, a4, v21);
          }

          else
          {
            v55 = v18[3];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx %d", CurrTime, 30, LevelStr, "AVE_Prop_GetProperty", 330, "ret == 0", a5, a6, a3, a4, v21);
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v35 = a7;
          v36 = AVE_Log_CheckConsole(0x1Eu);
          v37 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(4);
          v39 = *(v18 + 5);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | get function is not supported %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx\n", v37, 30, v38, "AVE_Prop_GetProperty", 322, "pEntry->Get != __null", a5, a6, a3, a4, v35, a8, a9, *v18, v18[1], *(v18 + 4), *(v18 + 5), v18[3]);
            v37 = AVE_GetCurrTime();
            v38 = AVE_Log_GetLevelStr(4);
            v51 = *(v18 + 5);
            v54 = v18[3];
            v47 = v18[1];
            v49 = *(v18 + 4);
            v45 = *v18;
          }

          else
          {
            v52 = *(v18 + 5);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | get function is not supported %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx", v37, 30, v38, "AVE_Prop_GetProperty", 322, "pEntry->Get != __null", a5, a6, a3, a4);
        }

        v20 = 4294966294;
      }
    }

    else
    {
      Str = AVE_CFStr_GetStr(a8, v61, 64);
      if (AVE_Log_CheckLevel(0x1Eu, 5))
      {
        v60 = a7;
        v33 = AVE_Log_CheckConsole(0x1Eu);
        v56 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(5);
        if (v33)
        {
          printf("%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %p %s %p %d\n", v56, 30, v34, a1, a2, a5, a6, a3, a4, v60, Str, a9, -2002);
          v57 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %p %s %p %d", v57, 30, v43, a1, a2, a5);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %p %s %p %d", v56, 30, v34, a1, a2, a5);
        }
      }

      CFShow(a8);
      CFShow(a9);
      v20 = 4294965294;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v27 = a6;
      v28 = a7;
      v29 = AVE_Log_CheckConsole(0x1Eu);
      v59 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p %p\n", v59, 30, v30, "AVE_Prop_GetProperty", 311, "pArray != __null && num > 0 && pINS != __null && pKey != __null && pValue != __null", a1, a2, a5, v27, a3, a4, v28, a8, a9);
        v31 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p %p", v31, 30, v42, "AVE_Prop_GetProperty", 311, "pArray != __null && num > 0 && pINS != __null && pKey != __null && pValue != __null", a1, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p %p", v59, 30, v30, "AVE_Prop_GetProperty", 311, "pArray != __null && num > 0 && pINS != __null && pKey != __null && pValue != __null", a1, a2);
      }
    }

    v20 = 4294966295;
  }

  v40 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t *AVE_AlignMem(uint64_t *result, _DWORD *a2, int a3, int a4)
{
  v4 = (*result + a3 - 1) & -a3;
  *a2 = (*result + *a2 - v4) & -a4;
  *result = v4;
  return result;
}

_BYTE *AVE_MemCpyV2V(_BYTE *result, char *a2, int a3)
{
  if (a3 >= 1)
  {
    do
    {
      v3 = *a2++;
      *result++ = v3;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t AVE_ComposePosStr(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v8 = a4;
  v11 = AVE_SNPrintf(a3, a4, " in %s", a4, a5, a6, a7, a8, a1);
  v17 = v11;
  if (a2)
  {
    return AVE_SNPrintf(&a3[v11], v8 - v11, ":%d", v12, v13, v14, v15, v16, a2) + v11;
  }

  return v17;
}

uint64_t AVE_Dump_FindFile(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 > 0xB)
  {
    return 0;
  }

  else
  {
    return *(a1 + 96 * (a3 > 0) + 8 * a2 + 48);
  }
}

uint64_t AVE_Dump_Create(uint64_t a1, void *a2)
{
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v4 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %lld %p\n", CurrTime, 61, LevelStr, "AVE_Dump_Create", a1, a2);
      v7 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %lld %p", v7, 61, v20, "AVE_Dump_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %lld %p", CurrTime, 61, LevelStr, "AVE_Dump_Create", a1, a2);
    }
  }

  if (a2)
  {
    v8 = malloc_type_malloc(0xF0uLL, 0x1020040FC94C6CFuLL);
    if (v8)
    {
      v9 = 0;
      *(v8 + 29) = 0;
      *(v8 + 216) = 0u;
      *(v8 + 200) = 0u;
      *(v8 + 184) = 0u;
      *(v8 + 168) = 0u;
      *(v8 + 152) = 0u;
      *(v8 + 136) = 0u;
      *(v8 + 120) = 0u;
      *(v8 + 104) = 0u;
      *(v8 + 88) = 0u;
      *(v8 + 72) = 0u;
      *(v8 + 56) = 0u;
      *(v8 + 40) = 0u;
      *(v8 + 24) = 0u;
      *(v8 + 8) = 0u;
      *v8 = a1;
      *a2 = v8;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x3Du, 4))
      {
        v13 = AVE_Log_CheckConsole(0x3Du);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dump %lld %p\n", v14, 61, v15, "AVE_Dump_Create", 89, "pDump != __null", a1, a2);
          v14 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dump %lld %p", v14, 61);
      }

      v9 = 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v10 = AVE_Log_CheckConsole(0x3Du);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p\n", v11, 61, v12, "AVE_Dump_Create", 85, "ppDump != __null", a1, 0);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p", v11, 61);
    }

    v9 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v16 = AVE_Log_CheckConsole(0x3Du);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %lld %p %d\n", v17, 61, v18, "AVE_Dump_Create", a1, a2, v9);
      v17 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %lld %p %d", v17);
  }

  return v9;
}

uint64_t AVE_Dump_Destroy(void *a1)
{
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v2 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 61, LevelStr, "AVE_Dump_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 61, v11, "AVE_Dump_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 61, LevelStr, "AVE_Dump_Destroy", a1);
    }
  }

  if (a1)
  {
    free(a1);
  }

  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v6 = AVE_Log_CheckConsole(0x3Du);
    v7 = AVE_GetCurrTime();
    v8 = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v7, 61, v8, "AVE_Dump_Destroy", 0, 0);
      v9 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v9, 61, v12, "AVE_Dump_Destroy", 0, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v7, 61, v8, "AVE_Dump_Destroy", 0, 0);
    }
  }

  return 0;
}

uint64_t AVE_Dump_ComposeFilePath(uint64_t a1, unsigned int a2, int a3, const char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v54 = *MEMORY[0x29EDCA608];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  *v46 = 0u;
  v47 = 0u;
  v44 = gc_piaAVE_ChromaFmt[*(a1 + 32)];
  v45 = *(a1 + 36);
  v41 = *(a1 + 24);
  v43 = *(a1 + 28);
  v39 = *(&gc_piaAVE_ClientType + *(a1 + 16));
  v14 = AVE_SNPrintf(v46, 128, "%lld-%s-%dx%d-%s-%d", a4, a5, a6, a7, a8, *a1);
  v20 = v14;
  if ((a3 & 0x80000000) == 0)
  {
    v20 = AVE_SNPrintf(&v46[v14], 128 - v14, "-MP%d", v15, v16, v17, v18, v19, a3) + v14;
  }

  if (*(a1 + 16) == 1)
  {
    v40 = *(a1 + 44);
    v20 += AVE_SNPrintf(&v46[v20], 128 - v20, "-%s-%d", v15, v16, v17, v18, v19, *(&gc_piaAVE_EncType + *(a1 + 20)));
  }

  v21 = pthread_self();
  v22 = &gsc_saAVE_DumpInfo[12 * a2];
  rand();
  v42 = *v22;
  v28 = AVE_SNPrintf(&v46[v20], 128 - v20, "-%lu-%d-%s", v23, v24, v25, v26, v27, v21);
  if (a2 == 1)
  {
    v34 = *(a1 + 16);
    if (v34 == 1)
    {
      v35 = &v22[*(a1 + 20)];
    }

    else
    {
      v35 = &v22[v34 + 2];
    }

    goto LABEL_12;
  }

  if (((*(a1 + 12) >> a2) & 1) == 0 || (v36 = v22[2]) == 0)
  {
    v35 = v22 + 1;
LABEL_12:
    v36 = *v35;
  }

  AVE_SNPrintf(&v46[v20 + v28], 128 - (v20 + v28), ".%s", v29, v30, v31, v32, v33, v36);
  result = AVE_ComposeFilePath(a4, 0, v46, a5, v8);
  v38 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AVE_Dump_OpenFiles(_DWORD *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = *MEMORY[0x29EDCA608];
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
  *__filename = 0u;
  v40 = 0u;
  if (a1[10] >= 1)
  {
    v8 = a2;
    v10 = 0;
    v38 = 0;
    v11 = a1 + 12;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        if ((a1[2] & (1 << v13)) != 0 && !*&v11[2 * v13])
        {
          if (a1[10] <= 1)
          {
            v14 = -1;
          }

          else
          {
            v14 = v10;
          }

          v38 = AVE_Dump_ComposeFilePath(a1, v13, v14, v8, __filename, 256, a7, a8);
          v15 = (a1[3] & (1 << v13)) != 0 && v12 == 36;
          v16 = 8;
          if (v15)
          {
            v16 = 9;
          }

          v17 = (&gsc_saAVE_DumpInfo[v12])[v16];
          v18 = fopen(__filename, v17);
          *&v11[2 * v13] = v18;
          if (v18)
          {
            if (!AVE_Log_CheckLevel(0x3Du, 6))
            {
              goto LABEL_26;
            }

            v19 = AVE_Log_CheckConsole(0x3Du);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(6);
            if (v19)
            {
              printf("%lld %d AVE %s: %s:%d open dump file %p %lld | %d %d %s %s\n", CurrTime, 61, LevelStr, "AVE_Dump_OpenFiles", 262, a1, *a1, v10, v13, __filename, v17);
              v22 = AVE_GetCurrTime();
              v23 = AVE_Log_GetLevelStr(6);
              v35 = *a1;
              v33 = v23;
              v31 = v22;
            }

            else
            {
              v33 = LevelStr;
              v31 = CurrTime;
            }

            syslog(3, "%lld %d AVE %s: %s:%d open dump file %p %lld | %d %d %s %s", v31, 61, v33, "AVE_Dump_OpenFiles");
          }

          else
          {
            if (!AVE_Log_CheckLevel(0x3Du, 4))
            {
              goto LABEL_26;
            }

            v24 = AVE_Log_CheckConsole(0x3Du);
            v25 = AVE_GetCurrTime();
            v26 = AVE_Log_GetLevelStr(4);
            if (v24)
            {
              printf("%lld %d AVE %s: %s:%d fail to open dump file %p %lld | %d %d %s %s\n", v25, 61, v26, "AVE_Dump_OpenFiles", 257, a1, *a1, v10, v13, __filename, v17);
              v27 = AVE_GetCurrTime();
              v28 = AVE_Log_GetLevelStr(4);
              v36 = *a1;
              v34 = v28;
              v32 = v27;
            }

            else
            {
              v34 = v26;
              v32 = v25;
            }

            syslog(3, "%lld %d AVE %s: %s:%d fail to open dump file %p %lld | %d %d %s %s", v32, 61, v34, "AVE_Dump_OpenFiles");
          }

          v8 = a2;
        }

LABEL_26:
        ++v13;
        v12 += 12;
      }

      while (v12 != 144);
      ++v10;
      v11 += 24;
      if (v10 >= a1[10])
      {
        goto LABEL_30;
      }
    }
  }

  v38 = 0;
LABEL_30:
  v29 = *MEMORY[0x29EDCA608];
  return v38;
}

uint64_t AVE_Dump_WriteHeader(uint64_t a1)
{
  v2 = 0;
  result = 0;
  v4 = a1 + 48;
  v5 = 1;
  do
  {
    v6 = 0;
    v7 = v5;
    v8 = v4 + 96 * v2;
    v9 = -2;
    do
    {
      if (*(v8 + v6))
      {
        v10 = v9 > 8;
      }

      else
      {
        v10 = 1;
      }

      if (!v10 && ((0x1C1u >> v9) & 1) != 0)
      {
        if (fprintf(*(v8 + v6), off_29EDD0348[v9]) <= 0)
        {
          result = 4294965296;
        }

        else
        {
          result = 0;
        }
      }

      v6 += 8;
      ++v9;
    }

    while (v6 != 96);
    v5 = 0;
    v2 = 1;
  }

  while ((v7 & 1) != 0);
  return result;
}

uint64_t AVE_Dump_Init(uint64_t a1, const char *a2, int a3, int a4, int a5, int a6, void *a7, int a8, int a9, int a10, int a11)
{
  v11 = a8;
  v16 = a10;
  v17 = a11;
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v24 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v24)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d\n", CurrTime, 61, LevelStr, "AVE_Dump_Init", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      v46 = AVE_GetCurrTime();
      v11 = a8;
      v43 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v46, 61, v43, "AVE_Dump_Init", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d", CurrTime, 61, LevelStr, "AVE_Dump_Init", a1);
    }
  }

  if (a1 && a7)
  {
    *(a1 + 8) = a5;
    *(a1 + 12) = a6;
    *(a1 + 16) = a3;
    *(a1 + 20) = a4;
    *(a1 + 24) = *a7;
    *(a1 + 32) = a9;
    *(a1 + 36) = a10;
    *(a1 + 40) = v11;
    *(a1 + 44) = a11;
    v27 = AVE_Dump_OpenFiles(a1, a2, v18, v19, v20, v21, v22, v23);
    if (!v27)
    {
      AVE_Dump_WriteHeader(a1);
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (AVE_Log_CheckLevel(0x3Du, 4))
  {
    v28 = AVE_Log_CheckConsole(0x3Du);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(4);
    if (v28)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d\n", v29, 61, v30, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1, a2, a3, a4, a5, a6, a7, v11, a9, a10, a11);
      v45 = AVE_GetCurrTime();
      v11 = a8;
      v44 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v45, 61, v44, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v29, 61, v30, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1);
    }
  }

  v27 = 4294966295;
  if (a1)
  {
LABEL_14:
    v31 = 0;
    v32 = 1;
    do
    {
      v33 = 0;
      v34 = v32;
      v35 = a1 + 48 + 96 * v31;
      do
      {
        v36 = *(v35 + v33);
        if (v36)
        {
          fclose(v36);
          *(v35 + v33) = 0;
        }

        v33 += 8;
      }

      while (v33 != 96);
      v32 = 0;
      v31 = 1;
    }

    while ((v34 & 1) != 0);
    v16 = a10;
    v17 = a11;
    v11 = a8;
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v37 = AVE_Log_CheckConsole(0x3Du);
    v38 = AVE_GetCurrTime();
    v39 = AVE_Log_GetLevelStr(7);
    if (v37)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d\n", v38, 61, v39, "AVE_Dump_Init", a1, a2, a3, a4, a5, a6, a7, v11, a9, v16, v17, v27);
      v40 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d", v40, 61, v41, "AVE_Dump_Init", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d", v38, 61, v39, "AVE_Dump_Init", a1, a2);
    }
  }

  return v27;
}

uint64_t AVE_Dump_Uninit(const void *a1)
{
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v2 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 61, LevelStr, "AVE_Dump_Uninit", a1);
      v5 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 61, v17, "AVE_Dump_Uninit", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 61, LevelStr, "AVE_Dump_Uninit", a1);
    }
  }

  if (a1)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = 0;
      v9 = v7;
      v10 = a1 + 96 * v6 + 48;
      do
      {
        v11 = *(v10 + v8);
        if (v11)
        {
          fclose(v11);
          *(v10 + v8) = 0;
        }

        v8 += 8;
      }

      while (v8 != 96);
      v7 = 0;
      v6 = 1;
    }

    while ((v9 & 1) != 0);
  }

  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v12 = AVE_Log_CheckConsole(0x3Du);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v13, 61, v14, "AVE_Dump_Uninit", a1, 0);
      v15 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 61, v18, "AVE_Dump_Uninit", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 61, v14, "AVE_Dump_Uninit", a1, 0);
    }
  }

  return 0;
}

uint64_t AVE_Dump_WriteInput(_DWORD *a1, int a2, __CVBuffer *a3)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v6 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteInput", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p", CurrTime);
  }

  if (a1)
  {
    v9 = *&a1[24 * (a2 > 0) + 12];
    if (v9)
    {
      if (a3)
      {
        v10 = AVE_PixelBuf_Dump(a3, a1[3] & 1, v9);
      }

      else
      {
        v10 = 4294966287;
      }
    }

    else
    {
      v10 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v11 = AVE_Log_CheckConsole(0x3Du);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v12, 61, v13, "AVE_Dump_WriteInput", 533, "pDump != __null", 0, a2, a3);
        v14 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v14, 61, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v12, 61, v13);
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v15 = AVE_Log_CheckConsole(0x3Du);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d\n", v16, 61, v17, "AVE_Dump_WriteInput", a1, a2, a3, v10);
      v18 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v18, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v16, 61);
    }
  }

  return v10;
}

uint64_t AVE_Dump_WriteOutput(void *a1, int a2, const void *a3, int a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteOutput", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 7];
    if (v11)
    {
      v12 = 4294966287;
      if (a3 && a4 >= 1)
      {
        v13 = fwrite(a3, 1uLL, a4, v11);
        v12 = v13 == a4 ? 0 : 4294965296;
        if (AVE_Log_CheckLevel(0x3Du, 8))
        {
          v14 = AVE_Log_CheckConsole(0x3Du);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(8);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %p %d %p %d %d\n", v15, 61, v16, "AVE_Dump_WriteOutput", 596, a1, a2, a3, a4, v13);
            v17 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v17, 61, v27);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v15, 61, v16);
          }
        }
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v18 = AVE_Log_CheckConsole(0x3Du);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteOutput", 578, "pDump != __null", 0, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v21, 61, v28, "AVE_Dump_WriteOutput");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v19, 61, v20, "AVE_Dump_WriteOutput");
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v22 = AVE_Log_CheckConsole(0x3Du);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %d\n", v23, 61, v24, "AVE_Dump_WriteOutput", a1, a2, a3, a4, v12);
      v25 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v25, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v23, 61);
    }
  }

  return v12;
}

uint64_t AVE_Dump_WriteISPMetadata(void *a1, int a2, int a3, double *a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteISPMetadata", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 8];
    if (v11)
    {
      if (a4)
      {
        if (fprintf(v11, "%5d, %4.6f, %4.6f, %4.6f, %f, %f, %d, %d, %d\n", a3, *a4, a4[1], a4[2], a4[3], a4[4], *(a4 + 16), *(a4 + 17), *(a4 + 18)) <= 0)
        {
          v12 = 4294965296;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 4294966287;
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v13 = AVE_Log_CheckConsole(0x3Du);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v14, 61, v15, "AVE_Dump_WriteISPMetadata", 668, "pDump != __null", 0, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v14, 61, v15);
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v17 = AVE_Log_CheckConsole(0x3Du);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v18, 61, v19, "AVE_Dump_WriteISPMetadata", a1, a2, a3, a4, v12);
      v20 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v18, 61, v19);
    }
  }

  return v12;
}

uint64_t AVE_Dump_WriteMBStats(void *a1, int a2, const void *a3, int a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteMBStats", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 9];
    if (v11)
    {
      v12 = 4294966287;
      if (a3 && a4 >= 1)
      {
        v13 = fwrite(a3, 1uLL, a4, v11);
        v12 = v13 == a4 ? 0 : 4294965296;
        if (AVE_Log_CheckLevel(0x3Du, 8))
        {
          v14 = AVE_Log_CheckConsole(0x3Du);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(8);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %p %d %p %d %d\n", v15, 61, v16, "AVE_Dump_WriteMBStats", 735, a1, a2, a3, a4, v13);
            v17 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v17, 61, v27);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v15, 61, v16);
          }
        }
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v18 = AVE_Log_CheckConsole(0x3Du);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteMBStats", 717, "pDump != __null", 0, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v21, 61, v28, "AVE_Dump_WriteMBStats");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v19, 61, v20, "AVE_Dump_WriteMBStats");
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v22 = AVE_Log_CheckConsole(0x3Du);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %d\n", v23, 61, v24, "AVE_Dump_WriteMBStats", a1, a2, a3, a4, v12);
      v25 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v25, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v23, 61);
    }
  }

  return v12;
}

uint64_t AVE_Dump_WriteHwEventTrace(void *a1, int a2, int *a3)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v6 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteHwEventTrace", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p", CurrTime);
  }

  if (a1)
  {
    v9 = a1[12 * (a2 > 0) + 14];
    if (v9)
    {
      if (a3)
      {
        if (*a3 < 2)
        {
          v13 = 0;
        }

        else
        {
          v10 = a3 + 19;
          v11 = 1;
          do
          {
            v12 = fprintf(v9, "%6d, %d, %d, %d, %8lld, 0x%x, 0x%x, 0x%x, 0x%x\n", v11++, *(v10 - 8), *(v10 - 9), *(v10 - 7), *(v10 - 5), *(v10 - 3), *(v10 - 2), *(v10 - 1), *v10);
            v10 += 10;
          }

          while (v11 < *a3);
          if (v12 <= 0)
          {
            v13 = 4294965296;
          }

          else
          {
            v13 = 0;
          }
        }
      }

      else
      {
        v13 = 4294966287;
      }
    }

    else
    {
      v13 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v14 = AVE_Log_CheckConsole(0x3Du);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v15, 61, v16, "AVE_Dump_WriteHwEventTrace", 763, "pDump != __null", 0, a2, a3);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v17, 61, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v15, 61, v16);
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v18 = AVE_Log_CheckConsole(0x3Du);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(8);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteHwEventTrace", a1, a2, a3, v13);
      v21 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v21, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v19, 61);
    }
  }

  return v13;
}

uint64_t AVE_Dump_WriteVQMetrics(void *a1, int a2, int a3, double *a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteVQMetrics", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 15];
    if (v11)
    {
      if (a4)
      {
        v12 = a4[5];
        v13 = a4[1];
        if (fprintf(v11, "%d, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f\n", a3, a4[3], a4[4], v12, *a4, v13, a4[2]) <= 0)
        {
          v14 = 4294965296;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 4294966287;
      }
    }

    else
    {
      v14 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v15 = AVE_Log_CheckConsole(0x3Du);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v16, 61, v17, "AVE_Dump_WriteVQMetrics", 815, "pDump != __null", 0, a2, a3, a4);
        v18 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v18, 61, v24);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v17);
      }
    }

    v14 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v19 = AVE_Log_CheckConsole(0x3Du);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v20, 61, v21, "AVE_Dump_WriteVQMetrics", a1, a2, a3, a4, v14);
      v22 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v22, 61, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v21);
    }
  }

  return v14;
}

uint64_t AVE_Dump_WriteFPS(void *a1, int a2, int a3, double *a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteFPS", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 16];
    if (v11)
    {
      if (a4)
      {
        v12 = a4[3];
        v13 = a4[7];
        if (fprintf(v11, "%d, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f\n", a3, a4[2], a4[1], *a4, a4[5], a4[4], v12, a4[8], v13, a4[6]) <= 0)
        {
          v14 = 4294965296;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 4294966287;
      }
    }

    else
    {
      v14 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v15 = AVE_Log_CheckConsole(0x3Du);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v16, 61, v17, "AVE_Dump_WriteFPS", 863, "pDump != __null", 0, a2, a3, a4);
        v18 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v18, 61, v24);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v17);
      }
    }

    v14 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v19 = AVE_Log_CheckConsole(0x3Du);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v20, 61, v21, "AVE_Dump_WriteFPS", a1, a2, a3, a4, v14);
      v22 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v22, 61, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v21);
    }
  }

  return v14;
}

uint64_t AVE_Dump_WriteRecon(uint64_t a1, __CVBuffer *a2)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v4 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteRecon", a1, a2);
      v7 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 61, v17, "AVE_Dump_WriteRecon", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 61, LevelStr, "AVE_Dump_WriteRecon", a1, a2);
    }
  }

  if (a1)
  {
    v8 = *(a1 + 136);
    if (v8)
    {
      if (a2)
      {
        v9 = AVE_PixelBuf_Dump(a2, (*(a1 + 12) >> 11) & 1, v8);
      }

      else
      {
        v9 = 4294966287;
      }
    }

    else
    {
      v9 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v10 = AVE_Log_CheckConsole(0x3Du);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p\n", v11, 61, v12, "AVE_Dump_WriteRecon", 907, "pDump != __null", 0, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p", v11, 61);
    }

    v9 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v13 = AVE_Log_CheckConsole(0x3Du);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v14, 61, v15, "AVE_Dump_WriteRecon", a1, a2, v9);
      v14 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v14);
  }

  return v9;
}

uint64_t AVE_Enc_CheckResolution(int a1, int a2, int a3, int a4, int a5, int a6)
{
  Resolution = AVE_DevCap_FindResolution(a1, a2, a3);
  if (!Resolution)
  {
    return 4294966294;
  }

  v10 = *Resolution;
  if (v10 < 1)
  {
    v14 = 4294966294;
  }

  else
  {
    v11 = Resolution + 3;
    v12 = 1;
    v13 = 1;
    do
    {
      if (*(v11 - 1) <= a4 && *v11 <= a5)
      {
        break;
      }

      v13 = v12 < v10;
      v11 += 3;
      ++v12;
    }

    while (v12 - v10 != 1);
    v14 = v13 ? 0 : 4294966294;
  }

  v15 = Resolution[13];
  if (v15 < 1)
  {
    return 4294966294;
  }

  for (i = Resolution + 16; ; i += 3)
  {
    if (*(i - 1) >= a4 && *i >= a5)
    {
      v17 = *(i - 2);
      if (v17 == a6 || v17 < 0)
      {
        break;
      }
    }

    if (!--v15)
    {
      return 4294966294;
    }
  }

  return v14;
}

uint64_t AVE_Enc_GenerateSliceMap(int a1, int a2, int a3, unsigned int a4, int *a5)
{
  v5 = 4294966295;
  if (a1 >= 1 && a2 >= 1 && a3 >= 1 && a4 <= 1 && a5)
  {
    *a5 = a1;
    v6 = (a1 - 1);
    if (a1 == 1)
    {
      v5 = 0;
      a5[1] = 0;
      a5[2] = a2;
    }

    else if (a4)
    {
      v7 = (a2 / a1 + 63) & 0xFFFFFFC0;
      do
      {
        v8 = v7;
        v9 = a2 - v7 * v6;
        if (v7 < 0x81)
        {
          break;
        }

        v7 -= 64;
      }

      while (v9 < 96);
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = &a5[2 * v10 + 1];
        *v12 = v11;
        v12[1] = v8;
        v11 += v8;
        ++v10;
      }

      while (v10 != v6);
      v5 = 0;
      v21 = &a5[2 * v6];
      v21[1] = v11;
      v21[2] = v9;
    }

    else
    {
      v13 = (a2 + a3 - 1) / a3;
      if (v13 < 1)
      {
        return 0;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = a5 + 2;
        while (1)
        {
          v17 = (v13 + (a1 + 1) / 2) / a1;
          if (v17 <= 1)
          {
            v17 = 1;
          }

          v18 = v17 >= v13 ? v13 : v17;
          v14 += v18;
          if (v14 > 0x100)
          {
            break;
          }

          v5 = 0;
          v19 = v18 * a3;
          if (v18 * a3 >= a2 - v15)
          {
            v19 = a2 - v15;
          }

          *(v16 - 1) = v15;
          *v16 = v19;
          v15 += v19;
          --a1;
          v16 += 2;
          v20 = __OFSUB__(v13, v18);
          v13 -= v18;
          if ((v13 < 0) ^ v20 | (v13 == 0))
          {
            return v5;
          }
        }

        return 4294966281;
      }
    }
  }

  return v5;
}

int *AVE_Enc_GetMinResolution(int a1, int a2, int a3)
{
  result = AVE_DevCap_FindResolution(a1, a2, a3);
  if (result)
  {
    v4 = *result;
    result += 2;
    if (v4 < 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVE_Enc_AlignDimension(int a1, int a2, int a3, signed int *a4, signed int *a5)
{
  Resolution = AVE_DevCap_FindResolution(a1, a2, a3);
  if (!Resolution)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v15 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get resolution capabilities %d %d %d\n", CurrTime, 3, LevelStr, "AVE_Enc_AlignDimension", 408, "pRes != __null", a1, a2, a3);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get resolution capabilities %d %d %d", CurrTime, 3);
    }

    return 4294966296;
  }

  v11 = *Resolution;
  if (*Resolution <= 0)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v18 = AVE_Log_CheckConsole(3u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | No valid entries for Min resolution %d %d %d %d\n", v19, 3, v20, "AVE_Enc_AlignDimension", 413, "num >= 1", a1, a2, a3, v11);
        v21 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | No valid entries for Min resolution %d %d %d %d", v21, 3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | No valid entries for Min resolution %d %d %d %d", v19, 3);
      }
    }

    return 4294966296;
  }

  v13 = Resolution[2];
  v12 = Resolution[3];
  if (a3 != 2 && a3 != 1)
  {
    return 4294966296;
  }

  result = 0;
  if (((*a4 + 15) & 0xFFFFFFF0) > v13)
  {
    v13 = (*a4 + 15) & 0xFFFFFFF0;
  }

  *a4 = v13;
  if (((*a5 + 15) & 0xFFFFFFF0) > v12)
  {
    v12 = (*a5 + 15) & 0xFFFFFFF0;
  }

  *a5 = v12;
  return result;
}

uint64_t AVE_FrameStats_PrintStatFrame(const void *a1, const void *a2, const void *a3)
{
  v19 = 0;
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v6 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 46, LevelStr, "AVE_FrameStats_PrintStatFrame", a2, a1, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2)
  {
    if (a3)
    {
      operator new[]();
    }

    v13 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v9 = AVE_Log_CheckConsole(0x2Eu);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 46, v11, "AVE_FrameStats_PrintStatFrame", 265, "(psFrame != __null) && (psMgr != __null)", a2, a1, a3);
        v12 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 46, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 46, v11);
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x74u, 7))
  {
    v14 = AVE_Log_CheckConsole(0x74u);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v15, 116, v16, "AVE_FrameStats_PrintStatFrame", a2, a1, a3, v13);
      v15 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v15, 116);
  }

  return v13;
}

uint64_t AVE_ImgBuf_VerifyUncompressed(__CVBuffer *a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5)
{
  extraColumnsOnLeft = 0;
  extraRowsOnTop = 0;
  extraColumnsOnRight = 0;
  extraRowsOnBottom = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v11 = BaseAddressOfPlane;
  if (!BaseAddressOfPlane || (BaseAddressOfPlane & 0x3F) != 0)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v13 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address 0x%lx\n", CurrTime, 3, LevelStr, "AVE_ImgBuf_VerifyUncompressed", 81, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v11);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer base address 0x%lx", CurrTime);
    }

    goto LABEL_39;
  }

  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  if (a5)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
    v12 = (extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight);
    v18 = (extraRowsOnTop + HeightOfPlane + extraRowsOnBottom);
    if (v12 < a2 || v18 < a3)
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_39;
      }

      v35 = AVE_Log_CheckConsole(3u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 93, "width >= videoWidth && height >= videoHeight", v12, v18, a2, a3);
        v36 = AVE_GetCurrTime();
        v61 = a2;
        v62 = a3;
        v59 = v12;
        v60 = v18;
        v57 = 93;
        v58 = "width >= videoWidth && height >= videoHeight";
        v56 = AVE_Log_GetLevelStr(4);
LABEL_51:
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v36, 3, v56, "AVE_ImgBuf_VerifyUncompressed", v57, v58, v59, v60, v61, v62);
        goto LABEL_39;
      }

      v61 = a2;
      v62 = a3;
      v59 = v12;
      v60 = v18;
      v50 = "width >= videoWidth && height >= videoHeight";
      v51 = 93;
      goto LABEL_50;
    }
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v20 = BytesPerRowOfPlane;
  if (a4[6] == 1)
  {
    v21 = (2 * ((2863311531u * (v12 + 2)) >> 32)) & 0xFFFFFFFC;
    if (!BytesPerRowOfPlane)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v12 << (a4[1] != 8);
    if (!BytesPerRowOfPlane)
    {
      goto LABEL_23;
    }
  }

  if ((BytesPerRowOfPlane & 0x3F) != 0 || v21 > BytesPerRowOfPlane)
  {
LABEL_23:
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v32 = AVE_Log_CheckConsole(3u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x\n", v33, 3, v34, "AVE_ImgBuf_VerifyUncompressed", 101, "stride != 0 && (stride & 0x3F) == 0 && stride >= neededStride", v20, v21);
        v33 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v33);
    }

    goto LABEL_39;
  }

  if (!a4[3])
  {
    if ((a5 & 1) != 0 || (v38 = CVPixelBufferGetWidthOfPlane(a1, 1uLL), v39 = CVPixelBufferGetHeightOfPlane(a1, 1uLL), !(v38 | v39)))
    {
      v40 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      if (v40)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v41 = AVE_Log_CheckConsole(3u);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride %x\n", v42, 3, v43, "AVE_ImgBuf_VerifyUncompressed", 120, "stride == 0", v40);
            v42 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride %x", v42);
        }

        goto LABEL_39;
      }

      goto LABEL_45;
    }

    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_39;
    }

    v54 = AVE_Log_CheckConsole(3u);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(4);
    if (v54)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 114, "width == 0 && height == 0", v38, v39, a2, a3);
      v55 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v55, 3);
      goto LABEL_39;
    }

    v61 = a2;
    v62 = a3;
    v59 = v38;
    v60 = v39;
    v50 = "width == 0 && height == 0";
    v51 = 114;
LABEL_50:
    v57 = v51;
    v58 = v50;
    v56 = v37;
    goto LABEL_51;
  }

  if ((a5 & 1) != 0 || (v22 = CVPixelBufferGetWidthOfPlane(a1, 1uLL), v23 = CVPixelBufferGetHeightOfPlane(a1, 1uLL), v24 = a4[4] >> 1, v25 = (extraColumnsOnRight >> v24) + v22 + (extraColumnsOnLeft >> v24), v26 = a4[5] >> 1, v27 = (extraRowsOnBottom >> v26) + v23 + (extraRowsOnTop >> v26), a2 >> v24 <= v25) && (LODWORD(v12) = (extraColumnsOnRight >> v24) + v22 + (extraColumnsOnLeft >> v24), a3 >> v26 <= v27))
  {
    v28 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    v29 = v28;
    v30 = (2 * v12) >> (a4[4] >> 1);
    if (a4[6] == 1)
    {
      v31 = (2 * ((2863311531u * (v30 + 2)) >> 32)) & 0xFFFFFFFC;
    }

    else
    {
      v31 = v30 << (a4[1] != 8);
    }

    if (!v28 || (v28 & 0x3F) != 0 || v31 > v28)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v46 = AVE_Log_CheckConsole(3u);
        v47 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x\n", v47, 3, v48, "AVE_ImgBuf_VerifyUncompressed", 144, "stride != 0 && (stride & 0x3F) == 0 && stride >= neededStride", v29, v31);
          v49 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v49);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v47);
        }
      }

      goto LABEL_39;
    }

LABEL_45:
    v44 = 0;
    goto LABEL_40;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v52 = AVE_Log_CheckConsole(3u);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(4);
    if (v52)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 134, "(width >= (videoWidth >> ((pFmt->iSubWidthC) >> 1))) && (height >= (videoHeight >> ((pFmt->iSubHeightC) >> 1)))", v25, v27, a2, a3);
      v53 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v53, 3);
      goto LABEL_39;
    }

    v61 = a2;
    v62 = a3;
    v59 = v25;
    v60 = v27;
    v50 = "(width >= (videoWidth >> ((pFmt->iSubWidthC) >> 1))) && (height >= (videoHeight >> ((pFmt->iSubHeightC) >> 1)))";
    v51 = 134;
    goto LABEL_50;
  }

LABEL_39:
  v44 = 4294954394;
LABEL_40:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v44;
}

uint64_t AVE_ImgBuf_VerifyHTPC(__CVBuffer *a1, _DWORD *a2)
{
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  v5 = BaseAddressOfCompressedTileHeaderRegionOfPlane;
  if (!BaseAddressOfCompressedTileHeaderRegionOfPlane || (BaseAddressOfCompressedTileHeaderRegionOfPlane & 0x3F) != 0)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_49;
    }

    v22 = AVE_Log_CheckConsole(3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v22)
    {
      v25 = 186;
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", CurrTime, 3, LevelStr, "AVE_ImgBuf_VerifyHTPC", 186, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v5);
LABEL_20:
      CurrTime = AVE_GetCurrTime();
      v63 = v5;
      v61 = v25;
      v59 = AVE_Log_GetLevelStr(4);
LABEL_27:
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx", CurrTime, 3, v59, "AVE_ImgBuf_VerifyHTPC", v61, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v63);
      goto LABEL_49;
    }

    v63 = v5;
    v30 = 186;
LABEL_26:
    v61 = v30;
    v59 = LevelStr;
    goto LABEL_27;
  }

  BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v7 = BaseAddressOfCompressedTileDataRegionOfPlane;
  if (!BaseAddressOfCompressedTileDataRegionOfPlane || (BaseAddressOfCompressedTileDataRegionOfPlane & 0x3F) != 0)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_49;
    }

    v26 = AVE_Log_CheckConsole(3u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(4);
    if (v26)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v27, 3, v28, "AVE_ImgBuf_VerifyHTPC", 190, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v7);
LABEL_24:
      v29 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v29);
      goto LABEL_49;
    }

LABEL_31:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v27);
    goto LABEL_49;
  }

  BytesPerCompressedTileHeaderOfPlane = IOSurfaceGetBytesPerCompressedTileHeaderOfPlane();
  WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
  HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v13 = extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight;
  v14 = extraRowsOnTop + HeightOfPlane + extraRowsOnBottom;
  v15 = (v13 & 0xF) == 0;
  v16 = v13 >> 4;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if ((v14 & 7) != 0)
  {
    v18 = (v14 >> 3) + 1;
  }

  else
  {
    v18 = v14 >> 3;
  }

  if (v17 != WidthInCompressedTilesOfPlane || v18 != HeightInCompressedTilesOfPlane)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_49;
    }

    v31 = AVE_Log_CheckConsole(3u);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v32, 3, v33, "AVE_ImgBuf_VerifyHTPC", 214, "width == neededWidth && height == neededHeight", WidthInCompressedTilesOfPlane, HeightInCompressedTilesOfPlane, v17, v18);
      v34 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v34, 3);
      goto LABEL_49;
    }

LABEL_48:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v32, 3);
    goto LABEL_49;
  }

  if ((WidthInCompressedTilesOfPlane * BytesPerCompressedTileHeaderOfPlane * HeightInCompressedTilesOfPlane) + v5 > v7)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v19 = AVE_Log_CheckConsole(3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address/size 0x%lx 0x%lx %d %d %d\n", v20, 3, v21, "AVE_ImgBuf_VerifyHTPC", 218, "dataBaseAddr >= (baseAddr + width * height * size)", v7, v5, WidthInCompressedTilesOfPlane, HeightInCompressedTilesOfPlane, BytesPerCompressedTileHeaderOfPlane);
        v20 = AVE_GetCurrTime();
        v66 = HeightInCompressedTilesOfPlane;
        v67 = BytesPerCompressedTileHeaderOfPlane;
        v64 = v5;
        v65 = WidthInCompressedTilesOfPlane;
        v62 = v7;
        v60 = 218;
        v58 = AVE_Log_GetLevelStr(4);
LABEL_57:
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer base address/size 0x%lx 0x%lx %d %d %d", v20, 3, v58, "AVE_ImgBuf_VerifyHTPC", v60, "dataBaseAddr >= (baseAddr + width * height * size)", v62, v64, v65, v66, v67);
        goto LABEL_49;
      }

      v66 = HeightInCompressedTilesOfPlane;
      v67 = BytesPerCompressedTileHeaderOfPlane;
      v64 = v5;
      v65 = WidthInCompressedTilesOfPlane;
      v62 = v7;
      v52 = 218;
      goto LABEL_56;
    }

    goto LABEL_49;
  }

  if (!a2[3])
  {
LABEL_51:
    v49 = 0;
    goto LABEL_50;
  }

  v35 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  v5 = v35;
  if (!v35 || (v35 & 0x3F) != 0)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_49;
    }

    v51 = AVE_Log_CheckConsole(3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v51)
    {
      v25 = 227;
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", CurrTime, 3, LevelStr, "AVE_ImgBuf_VerifyHTPC", 227, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v5);
      goto LABEL_20;
    }

    v63 = v5;
    v30 = 227;
    goto LABEL_26;
  }

  v36 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v37 = v36;
  if (!v36 || (v36 & 0x3F) != 0)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_49;
    }

    v53 = AVE_Log_CheckConsole(3u);
    v27 = AVE_GetCurrTime();
    v54 = AVE_Log_GetLevelStr(4);
    if (v53)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v27, 3, v54, "AVE_ImgBuf_VerifyHTPC", 231, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v37);
      goto LABEL_24;
    }

    goto LABEL_31;
  }

  v38 = IOSurfaceGetBytesPerCompressedTileHeaderOfPlane();
  v39 = IOSurfaceGetWidthInCompressedTilesOfPlane();
  v40 = IOSurfaceGetHeightInCompressedTilesOfPlane();
  v41 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
  v42 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
  v43 = (extraColumnsOnLeft >> (a2[4] >> 1)) + v41 + (extraColumnsOnRight >> (a2[4] >> 1));
  v44 = (extraRowsOnTop >> (a2[5] >> 1)) + v42 + (extraRowsOnBottom >> (a2[5] >> 1));
  v15 = (v43 & 7) == 0;
  v45 = v43 >> 3;
  if (v15)
  {
    v46 = v45;
  }

  else
  {
    v46 = v45 + 1;
  }

  if ((v44 & 7) != 0)
  {
    v47 = (v44 >> 3) + 1;
  }

  else
  {
    v47 = v44 >> 3;
  }

  if (v46 != v39)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_49;
    }

    v55 = AVE_Log_CheckConsole(3u);
    v32 = AVE_GetCurrTime();
    v56 = AVE_Log_GetLevelStr(4);
    if (v55)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v32, 3, v56, "AVE_ImgBuf_VerifyHTPC", 261, "width == neededWidth", v39, v40, v46, v47);
      v57 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v57, 3);
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if ((v39 * v38 * v40) + v5 <= v37)
  {
    goto LABEL_51;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v48 = AVE_Log_CheckConsole(3u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(4);
    if (v48)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address/size 0x%lx 0x%lx %d %d %d\n", v20, 3, v21, "AVE_ImgBuf_VerifyHTPC", 266, "dataBaseAddr >= (baseAddr + width * height * size)", v37, v5, v39, v40, v38);
      v20 = AVE_GetCurrTime();
      v66 = v40;
      v67 = v38;
      v64 = v5;
      v65 = v39;
      v62 = v37;
      v60 = 266;
      v58 = AVE_Log_GetLevelStr(4);
      goto LABEL_57;
    }

    v66 = v40;
    v67 = v38;
    v64 = v5;
    v65 = v39;
    v62 = v37;
    v52 = 266;
LABEL_56:
    v60 = v52;
    v58 = v21;
    goto LABEL_57;
  }

LABEL_49:
  v49 = 4294954394;
LABEL_50:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v49;
}

uint64_t AVE_ImgBuf_VerifyInterchange(__CVBuffer *a1, _DWORD *a2)
{
  extraColumnsOnLeft = 0;
  extraRowsOnTop = 0;
  extraColumnsOnRight = 0;
  extraRowsOnBottom = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  v5 = BaseAddressOfCompressedTileHeaderRegionOfPlane;
  if (!BaseAddressOfCompressedTileHeaderRegionOfPlane || (BaseAddressOfCompressedTileHeaderRegionOfPlane & 0x3F) != 0)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_44;
    }

    v32 = AVE_Log_CheckConsole(3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", CurrTime, 3, LevelStr, "AVE_ImgBuf_VerifyInterchange", 308, "hdrBaseAddr != 0 && (hdrBaseAddr & 0x3F) == 0", v5);
LABEL_29:
      v35 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx", v35);
      goto LABEL_44;
    }

LABEL_34:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx", CurrTime);
    goto LABEL_44;
  }

  BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v7 = BaseAddressOfCompressedTileDataRegionOfPlane;
  if (!BaseAddressOfCompressedTileDataRegionOfPlane || (BaseAddressOfCompressedTileDataRegionOfPlane & 0x3F) != 0)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_44;
    }

    v36 = AVE_Log_CheckConsole(3u);
    v37 = AVE_GetCurrTime();
    v38 = AVE_Log_GetLevelStr(4);
    if (v36)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v37, 3, v38, "AVE_ImgBuf_VerifyInterchange", 312, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v7);
LABEL_33:
      v39 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v39);
      goto LABEL_44;
    }

LABEL_39:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v37);
    goto LABEL_44;
  }

  WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
  HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v12 = extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight;
  v13 = extraRowsOnTop + HeightOfPlane + extraRowsOnBottom;
  v14 = (v12 & 0x1F) == 0;
  v15 = v12 >> 5;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  if ((v13 & 0x1F) != 0)
  {
    v17 = (v13 >> 5) + 1;
  }

  else
  {
    v17 = v13 >> 5;
  }

  if (v16 != WidthInCompressedTilesOfPlane || v17 != HeightInCompressedTilesOfPlane)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v40 = AVE_Log_CheckConsole(3u);
      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(4);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid Luma buffer dimension %d %d %d %d.\n", v41, 3, v42, "AVE_ImgBuf_VerifyInterchange", 332, "width == neededWidth && height == neededHeight", WidthInCompressedTilesOfPlane, HeightInCompressedTilesOfPlane, v16, v17);
        v41 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid Luma buffer dimension %d %d %d %d.", v41, 3);
    }

    goto LABEL_44;
  }

  if (a2[3])
  {
    v18 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
    v19 = v18;
    if (v18 && (v18 & 0x3F) == 0)
    {
      v20 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
      v21 = v20;
      if (v20 && (v20 & 0x3F) == 0)
      {
        v22 = IOSurfaceGetWidthInCompressedTilesOfPlane();
        v23 = IOSurfaceGetHeightInCompressedTilesOfPlane();
        v24 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
        v25 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
        v26 = (extraColumnsOnLeft >> (a2[4] >> 1)) + v24 + (extraColumnsOnRight >> (a2[4] >> 1));
        v27 = (extraRowsOnTop >> (a2[5] >> 1)) + v25 + (extraRowsOnBottom >> (a2[5] >> 1));
        v14 = (v26 & 0xF) == 0;
        v28 = v26 >> 4;
        if (v14)
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 + 1;
        }

        if ((v27 & 0xF) != 0)
        {
          v30 = (v27 >> 4) + 1;
        }

        else
        {
          v30 = v27 >> 4;
        }

        if (v29 == v22)
        {
          goto LABEL_25;
        }

        if (AVE_Log_CheckLevel(3u, 4))
        {
          v48 = AVE_Log_CheckConsole(3u);
          v49 = AVE_GetCurrTime();
          v50 = AVE_Log_GetLevelStr(4);
          if (v48)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid Chroma buffer dimension %d %d %d %d\n", v49, 3, v50, "AVE_ImgBuf_VerifyInterchange", 371, "width == neededWidth", v22, v23, v29, v30);
            v49 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid Chroma buffer dimension %d %d %d %d", v49, 3);
        }

LABEL_44:
        v31 = 4294954394;
        goto LABEL_45;
      }

      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_44;
      }

      v46 = AVE_Log_CheckConsole(3u);
      v37 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(4);
      if (v46)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v37, 3, v47, "AVE_ImgBuf_VerifyInterchange", 345, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v21);
        goto LABEL_33;
      }

      goto LABEL_39;
    }

    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_44;
    }

    v43 = AVE_Log_CheckConsole(3u);
    CurrTime = AVE_GetCurrTime();
    v44 = AVE_Log_GetLevelStr(4);
    if (v43)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", CurrTime, 3, v44, "AVE_ImgBuf_VerifyInterchange", 341, "hdrBaseAddr != 0 && (hdrBaseAddr & 0x3F) == 0", v19);
      goto LABEL_29;
    }

    goto LABEL_34;
  }

LABEL_25:
  v31 = 0;
LABEL_45:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v31;
}

uint64_t AVE_VerifyImageBuffer(unsigned int *a1, const void **a2, CVPixelBufferPoolRef *a3)
{
  pixelBufferOut = 0;
  poolOut = 0;
  if (!a3 || !*a2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v15 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v18 = *a2;
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p\n", CurrTime, 3, LevelStr, "AVE_VerifyImageBuffer", 476, "pImgBuf != __null && ppImgBufPool != __null", *a2, a3);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p", CurrTime, 3, LevelStr, "AVE_VerifyImageBuffer", 476, "pImgBuf != __null && ppImgBufPool != __null", *a2, a3);
    }

    goto LABEL_43;
  }

  CVPixelBufferRetain(*a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  v7 = AVE_PixelFmt_FindByType(PixelFormatType);
  if (!v7)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v19 = AVE_Log_CheckConsole(3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | pixel format is not supported %d\n", v20, 3, v21, "AVE_VerifyImageBuffer", 483, "pPixelFmt != __null", PixelFormatType);
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | pixel format is not supported %d", v20);
    }

    goto LABEL_43;
  }

  v8 = v7;
  v9 = AVE_EdgeReplication_DetermineMode(*a2, v7, a1[2], a1[6], *(a1 + 52), a1[14], a1[7], a1 + 8, a1[12]);
  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v10 = AVE_Log_CheckConsole(0x12u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(7);
    v13 = *(v8 + 24);
    if (v10)
    {
      printf("%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d\n", v11, 18, v12, PixelFormatType, *(v8 + 4), *(v8 + 8), *(v8 + 12), *(v8 + 16), *(v8 + 20), *(v8 + 24), *(v8 + 28));
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(7);
      v14 = *(v8 + 4);
      v120 = *(v8 + 24);
      v122 = *(v8 + 28);
      v117 = *(v8 + 16);
      v119 = *(v8 + 20);
      v113 = *(v8 + 8);
      v114 = *(v8 + 12);
    }

    else
    {
      v121 = *(v8 + 24);
    }

    syslog(3, "%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d", v11, 18, v12);
  }

  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v22 = AVE_Log_CheckConsole(0x12u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(7);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(*a2, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(*a2, 0);
    if (v22)
    {
      printf("%lld %d AVE %s: Pixel Buffer Width %d Height %d\n", v23, 18, v24, WidthOfPlane, HeightOfPlane);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(7);
      v29 = CVPixelBufferGetWidthOfPlane(*a2, 0);
      v111 = CVPixelBufferGetHeightOfPlane(*a2, 0);
      syslog(3, "%lld %d AVE %s: Pixel Buffer Width %d Height %d", v27, 18, v28, v29, v111);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Pixel Buffer Width %d Height %d", v23, 18, v24, WidthOfPlane, HeightOfPlane);
    }
  }

  if ((v9 & 2) == 0)
  {
    v30 = *a2;
    v31 = a1[2];
    v32 = a1[3];
    v33 = a1[4];
    v34 = a1[5];
    v35 = *a1;
    v36 = a1[1];
    v37 = *(a1 + 147);
    AVE_ImgBuf_Verify();
  }

  v38 = *a3;
  if (!*a3)
  {
    v45 = CVPixelBufferGetWidthOfPlane(*a2, 0);
    v46 = CVPixelBufferGetHeightOfPlane(*a2, 0);
    v47 = AVE_PixelBuf_CreatePool(a1[2], a1[3], a1[4], a1[5], v45, v46, *a1, a1[1], PixelFormatType, &poolOut);
    if (v47)
    {
      v48 = v47;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v49 = AVE_Log_CheckConsole(3u);
        v50 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(4);
        if (!v49)
        {
          v115 = v48;
          v112 = 511;
          v110 = v51;
          v109 = "%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d";
          goto LABEL_75;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d\n", v50, 3, v51, "AVE_VerifyImageBuffer", 511, "rc == noErr", v48);
        v52 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d", v52);
      }

LABEL_44:
      if (pixelBufferOut)
      {
        CVPixelBufferRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }

      if (poolOut)
      {
        CFRelease(poolOut);
        poolOut = 0;
      }

      goto LABEL_48;
    }

    v38 = *a3;
  }

  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = poolOut;
  }

  v40 = CVPixelBufferPoolCreatePixelBuffer(0, v39, &pixelBufferOut);
  if (v40)
  {
    v41 = v40;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v42 = AVE_Log_CheckConsole(3u);
      v43 = AVE_GetCurrTime();
      v44 = AVE_Log_GetLevelStr(4);
      if (v42)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to crete pixel buffer from a pool %d\n", v43, 3, v44, "AVE_VerifyImageBuffer", 517, "cvrc == kCVReturnSuccess", v41);
        v43 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to crete pixel buffer from a pool %d", v43);
    }

LABEL_43:
    v48 = 4294954394;
    goto LABEL_44;
  }

  v53 = AVE_PixelBuf_Copy(*a2, pixelBufferOut);
  if (v53)
  {
    v48 = v53;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v54 = AVE_Log_CheckConsole(3u);
      v50 = AVE_GetCurrTime();
      v55 = AVE_Log_GetLevelStr(4);
      if (v54)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d\n", v50, 3, v55, "AVE_VerifyImageBuffer", 521, "rc == noErr", *a2, pixelBufferOut, v48);
        v56 = AVE_GetCurrTime();
        v57 = AVE_Log_GetLevelStr(4);
        v58 = *a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d", v56, 3, v57);
        goto LABEL_44;
      }

      v116 = pixelBufferOut;
      v118 = v48;
      v115 = *a2;
      v112 = 521;
      v110 = v55;
      v109 = "%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d";
LABEL_75:
      syslog(3, v109, v50, 3, v110, "AVE_VerifyImageBuffer", v112, "rc == noErr", v115, v116, v118);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  CVPixelBufferRelease(*a2);
  v60 = pixelBufferOut;
  *a2 = pixelBufferOut;
  pixelBufferOut = 0;
  v61 = v9 & 2;
  AVE_EdgeReplication_Fill(v60, v9, v8);
  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v62 = AVE_Log_CheckConsole(0x12u);
    v150 = AVE_GetCurrTime();
    v63 = AVE_Log_GetLevelStr(7);
    v64 = a1[1];
    v147 = *a1;
    v148 = v63;
    v65 = a1[2];
    v66 = a1[3];
    v67 = a1[4];
    v68 = a1[5];
    v69 = a1[6];
    v70 = *(a1 + 145);
    if (v62)
    {
      printf("%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x\n", v150, 18, v148, "AVE_VerifyImageBuffer", 541, v147, v64, v65, v66, v67, v68, v69, a1[7], a1[12], *(a1 + 52), a1[14], a1[26], a1[27], a1[32], a1[33], a1[34], a1[35], a1[30], a1[31], a1[28], a1[29], *(a1 + 146), *(a1 + 144), *(a1 + 145), v9);
      v151 = AVE_GetCurrTime();
      v149 = AVE_Log_GetLevelStr(7);
      v71 = a1[7];
      v72 = a1[12];
      v73 = a1[14];
      v74 = a1[26];
      v75 = a1[27];
      v76 = a1[32];
      v143 = *(a1 + 145);
      v139 = *(a1 + 146);
      v141 = *(a1 + 144);
      v135 = a1[28];
      v137 = a1[29];
      v131 = a1[30];
      v133 = a1[31];
      v127 = a1[34];
      v129 = a1[35];
      v125 = a1[33];
      v123 = *(a1 + 52);
      syslog(3, "%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v151, 18, v149, "AVE_VerifyImageBuffer", 541, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
    }

    else
    {
      v144 = *(a1 + 145);
      syslog(3, "%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v150, 18, v148, "AVE_VerifyImageBuffer", 541, v147, v64, v65, v66, v67, v68, v69);
    }

    v61 = v9 & 2;
  }

  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(*a2, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  v77 = CVPixelBufferGetWidthOfPlane(*a2, 0);
  v78 = CVPixelBufferGetHeightOfPlane(*a2, 0);
  v79 = extraColumnsOnLeft;
  v80 = extraColumnsOnRight;
  v81 = extraColumnsOnLeft + extraColumnsOnRight + v77;
  v82 = extraRowsOnTop;
  v83 = extraRowsOnBottom;
  v84 = extraRowsOnTop + extraRowsOnBottom + v78;
  v85 = *(v8 + 28);
  v86 = *(v8 + 16);
  *(a1 + 15) = *v8;
  *(a1 + 19) = v86;
  *(a1 + 22) = v85;
  a1[26] = v81;
  a1[27] = v84;
  a1[32] = v79;
  a1[33] = v80;
  a1[34] = v82;
  a1[35] = v83;
  a1[30] = CVPixelBufferGetBytesPerRowOfPlane(*a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*a2, 1uLL);
  a1[31] = BytesPerRowOfPlane;
  if (*(v8 + 12))
  {
    v88 = BytesPerRowOfPlane;
  }

  else
  {
    v88 = 0;
  }

  a1[28] = a1[30];
  a1[29] = v88;
  v89 = v9 & 1;
  if ((v9 & 0x10) != 0)
  {
    v89 = 1;
  }

  *(a1 + 146) = v89;
  *(a1 + 144) = v61 >> 1;
  if ((~v9 & 0x500) != 0)
  {
    v90 = 0;
  }

  else
  {
    v90 = 5;
  }

  if ((~v9 & 0x50000) == 0)
  {
    v90 |= 0xAu;
  }

  *(a1 + 145) = v90;
  if (poolOut)
  {
    *a3 = poolOut;
  }

  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v91 = AVE_Log_CheckConsole(0x12u);
    v152 = AVE_GetCurrTime();
    v92 = AVE_Log_GetLevelStr(7);
    v93 = *a1;
    v94 = a1[1];
    v95 = a1[2];
    v96 = a1[3];
    v97 = a1[4];
    v98 = a1[5];
    v99 = a1[6];
    v100 = *(a1 + 145);
    if (v91)
    {
      printf("%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x\n", v152, 18, v92, "AVE_VerifyImageBuffer", 616, v93, v94, v95, v96, v97, v98, v99, a1[7], a1[12], *(a1 + 52), a1[14], a1[26], a1[27], a1[32], a1[33], a1[34], a1[35], a1[30], a1[31], a1[28], a1[29], *(a1 + 146), *(a1 + 144), *(a1 + 145), v9);
      v101 = AVE_GetCurrTime();
      v102 = AVE_Log_GetLevelStr(7);
      v103 = a1[7];
      v104 = a1[12];
      v105 = a1[14];
      v106 = a1[26];
      v107 = a1[27];
      v108 = a1[32];
      v145 = *(a1 + 145);
      v140 = *(a1 + 146);
      v142 = *(a1 + 144);
      v136 = a1[28];
      v138 = a1[29];
      v132 = a1[30];
      v134 = a1[31];
      v128 = a1[34];
      v130 = a1[35];
      v126 = a1[33];
      v124 = *(a1 + 52);
      syslog(3, "%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v101, 18, v102, "AVE_VerifyImageBuffer", 616, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
    }

    else
    {
      v146 = *(a1 + 145);
      syslog(3, "%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v152, 18, v92, "AVE_VerifyImageBuffer", 616, v93, v94, v95, v96, v97, v98, v99);
    }
  }

  v48 = 0;
LABEL_48:
  if ((a1[36] & 1) == 0)
  {
    CVPixelBufferRelease(*a2);
  }

  return v48;
}

uint64_t AVE_UpdatePixelBufferDict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, unsigned int a11, uint64_t a12)
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = a2;
  v17 = a1;
  v32 = *MEMORY[0x29EDCA608];
  if (a10 > 0)
  {
    AttrDictFromProfile = AVE_PixelBuf_CreateAttrDictFromProfile(a1, a2, a3, a4, a10, a5, a6, a7, a8, a9);
    if (AttrDictFromProfile)
    {
      v19 = AttrDictFromProfile;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v20 = AVE_Log_CheckConsole(3u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %d %d 0x%x %d %d %dx%d 0x%x\n", CurrTime, 3, LevelStr, "AVE_UpdatePixelBufferDict", 701, "ret == 0", v17, v16, v15, v14, v13, v12, a11, v19);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
        }

LABEL_10:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %d %d 0x%x %d %d %dx%d 0x%x", CurrTime, 3, LevelStr, "AVE_UpdatePixelBufferDict");
        goto LABEL_21;
      }

      goto LABEL_21;
    }

LABEL_11:
    if (a12 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = VTEncoderSessionSetPixelBufferAttributes();
      if (v19)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v25 = AVE_Log_CheckConsole(3u);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(4);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to update pixel buffer attribute %d %d 0x%x %d %d %d 0x%x %d 0x%x\n", v26, 3, v27, "AVE_UpdatePixelBufferDict", 710, "res == noErr", v17, v16, v15, v14, v13, v12, a11, v19, 0);
            v28 = AVE_GetCurrTime();
            v31 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer attribute %d %d 0x%x %d %d %d 0x%x %d 0x%x", v28, 3, v31, "AVE_UpdatePixelBufferDict", 710);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer attribute %d %d 0x%x %d %d %d 0x%x %d 0x%x", v26, 3, v27, "AVE_UpdatePixelBufferDict", 710);
          }
        }

        v19 = 4294966296;
      }
    }

    goto LABEL_21;
  }

  AttrDict = AVE_PixelBuf_CreateAttrDict(a1, a2, a3, a4, a5, a6, a7, a8, a11);
  if (!AttrDict)
  {
    goto LABEL_11;
  }

  v19 = AttrDict;
  if (AVE_Log_CheckLevel(3u, 4))
  {
    v24 = AVE_Log_CheckConsole(3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v24)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %d %d 0x%x %d %d %dx%d 0x%x\n", CurrTime, 3, LevelStr, "AVE_UpdatePixelBufferDict", 690, "ret == 0", v17, v16, v15, v14, v13, v12, a11, v19);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
    }

    goto LABEL_10;
  }

LABEL_21:
  v29 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t AVE_ImageBuf_Transfer(unsigned int *a1, CVPixelBufferRef *a2, CVPixelBufferPoolRef *a3, uint64_t a4)
{
  pixelBufferOut = 0;
  CVPixelBufferRetain(*a2);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(*a2, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(*a2, 0);
  v10 = *a3;
  if (*a3)
  {
LABEL_2:
    v11 = CVPixelBufferPoolCreatePixelBuffer(0, v10, &pixelBufferOut);
    if (v11)
    {
      v12 = v11;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v13 = AVE_Log_CheckConsole(3u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to crete pixel buffer from a pool %d\n", CurrTime, 3, LevelStr, "AVE_ImageBuf_Transfer", 758, "err == kCVReturnSuccess", v12);
          CurrTime = AVE_GetCurrTime();
          v26 = "err == kCVReturnSuccess";
          v27 = v12;
          v25 = 758;
          v24 = AVE_Log_GetLevelStr(4);
        }

        else
        {
          v27 = v12;
          v25 = 758;
          v26 = "err == kCVReturnSuccess";
          v24 = LevelStr;
        }

        v16 = "%lld %d AVE %s: %s:%d %s | failed to crete pixel buffer from a pool %d";
LABEL_20:
        syslog(3, v16, CurrTime, 3, v24, "AVE_ImageBuf_Transfer", v25, v26, v27);
        goto LABEL_22;
      }
    }

    else
    {
      v12 = AVE_PixelBuf_Transfer(*a2, pixelBufferOut);
      if (!v12)
      {
        CVPixelBufferRelease(*a2);
        *a2 = pixelBufferOut;
        return v12;
      }

      if (AVE_Log_CheckLevel(3u, 4))
      {
        v20 = AVE_Log_CheckConsole(3u);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.\n", v21, 3, v22, "AVE_ImageBuf_Transfer", 763, "err == noErr", *a2, a1[15], a4, v12);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", v21, 3, v22, "AVE_ImageBuf_Transfer", 763, "err == noErr", *a2, a1[15], a4, v12);
      }
    }

    goto LABEL_22;
  }

  Pool = AVE_PixelBuf_CreatePool(a1[2], a1[3], a1[4], a1[5], WidthOfPlane, HeightOfPlane, *a1, a1[1], a4, a3);
  if (!Pool)
  {
    v10 = *a3;
    goto LABEL_2;
  }

  v12 = Pool;
  if (AVE_Log_CheckLevel(3u, 4))
  {
    v18 = AVE_Log_CheckConsole(3u);
    CurrTime = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to create a buffer pool %d\n", CurrTime, 3, v19, "AVE_ImageBuf_Transfer", 751, "err == noErr", v12);
      CurrTime = AVE_GetCurrTime();
      v26 = "err == noErr";
      v27 = v12;
      v25 = 751;
      v24 = AVE_Log_GetLevelStr(4);
    }

    else
    {
      v27 = v12;
      v25 = 751;
      v26 = "err == noErr";
      v24 = v19;
    }

    v16 = "%lld %d AVE %s: %s:%d %s | failed to create a buffer pool %d";
    goto LABEL_20;
  }

LABEL_22:
  CVPixelBufferRelease(*a2);
  if (pixelBufferOut)
  {
    CVPixelBufferRelease(pixelBufferOut);
    pixelBufferOut = 0;
  }

  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v12;
}

uint64_t AVE_HEVC_SetQuality(uint64_t a1, double a2)
{
  v4 = (a1 + 10784);
  v5 = (a2 * 100.0 + 0.5);
  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v6 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %f %p\n", CurrTime, 30, LevelStr, "AVE_HEVC_SetQuality", a2, a1);
      v9 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v9, 30, v18, "AVE_HEVC_SetQuality", a2, a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", CurrTime, 30, LevelStr, "AVE_HEVC_SetQuality", a2, a1);
    }
  }

  if (v5 > 0x63)
  {
    if (v5 == 100)
    {
      v12 = 0;
      *(a1 + 1144) = 0;
      *(a1 + 39959) = 1;
      *(a1 + 1152) = 0;
      v4[74] = 1;
      *(a1 + 10604) = 0;
      *(a1 + 1448) |= 0x200uLL;
    }

    else
    {
      v12 = 4294966295;
    }

    goto LABEL_21;
  }

  v10 = *(a1 + 10752);
  if (!*(a1 + 24732))
  {
    if (v10 != 2)
    {
      v13 = Quality2QPHEVC[v5];
      goto LABEL_17;
    }

    v11 = Quality2QPHEIF[v5];
LABEL_16:
    v12 = 0;
    *(a1 + 1144) = v11;
    *(a1 + 1148) = v11;
    *(a1 + 1152) = v11;
    v4[73] = 1;
    goto LABEL_21;
  }

  if (v10 == 2)
  {
    v11 = Quality2QPHEIF10Bit[v5];
    goto LABEL_16;
  }

  v13 = Quality2QPHEVC10Bit[v5];
LABEL_17:
  *(a1 + 1144) = v13;
  *(a1 + 1148) = v13;
  *(a1 + 1152) = v13;
  v4[73] = 1;
  if (*v4 == 1 && *(a1 + 1132) != 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    *v4 = 1;
    *(a1 + 1132) = 3;
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v14 = AVE_Log_CheckConsole(0x1Eu);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %f %p %d\n", v15, 30, v16, "AVE_HEVC_SetQuality", a2, a1, v12);
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %f %p %d");
  }

  return v12;
}

uint64_t AVE_HEVC_SetCQFactor(uint64_t a1, double a2)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %f %p\n", CurrTime, 12, LevelStr, "AVE_HEVC_SetCQFactor", a2, a1);
      v7 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v7, 12, v19, "AVE_HEVC_SetCQFactor", a2, a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", CurrTime, 12, LevelStr, "AVE_HEVC_SetCQFactor", a2, a1);
    }
  }

  if ((*(a1 + 1123) & 0x80) != 0 && *(a1 + 10752) != 2 && (*(a1 + 10784) != 1 || (v12 = *(a1 + 1132), v12 == 8) || v12 == 6))
  {
    if (a2 < 0.0 || a2 > 1.0)
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v15 = AVE_Log_CheckConsole(0xCu);
        v16 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %f [0.0, 1.0]\n", v16, 12, v17, "AVE_HEVC_SetCQFactor", 243, "fCQFactor >= 0.0 && fCQFactor <= 1.0", a1, *(a1 + 56), a2);
          v16 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          v18 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %f [0.0, 1.0]", v16, 12);
      }

      v8 = 4294966295;
    }

    else
    {
      v8 = 0;
      *(a1 + 1200) = a2;
      *(a1 + 10784) = 1;
      if (*(a1 + 1208) <= 0)
      {
        v13 = 8;
      }

      else
      {
        v13 = 6;
      }

      *(a1 + 1132) = v13;
    }
  }

  else
  {
    v8 = 0;
  }

  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v9 = AVE_Log_CheckConsole(0xCu);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Exit %f %p %d\n", v10, 12, v11, "AVE_HEVC_SetCQFactor", a2, a1, v8);
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %f %p %d");
  }

  return v8;
}

uint64_t AVE_Session_HEVC_SetProperty(const void *a1, __CFString *a2, const void *a3)
{
  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v6 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_SetProperty", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2)
  {
    v9 = AVE_Prop_HEVC_SetProperty(a1, a2, a3);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v10 = AVE_Log_CheckConsole(0xCu);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 12, v12, "AVE_Session_HEVC_SetProperty", 272, "pINS != __null && pKey != __null", a1, a2, a3);
        v13 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 12, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 12, v12);
      }
    }

    v9 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v14 = AVE_Log_CheckConsole(0xCu);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v15, 12, v16, "AVE_Session_HEVC_SetProperty", a1, a2, a3, v9);
      v15 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v15, 12);
  }

  return v9;
}

uint64_t AVE_Session_HEVC_CreatePropertyDict(uint64_t a1)
{
  v43 = *MEMORY[0x29EDCA608];
  v41 = 0uLL;
  v42 = 0;
  v2 = AVE_DW_Get();
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v3 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_CreatePropertyDict", a1);
      v6 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v6, 12, v37, "AVE_Session_HEVC_CreatePropertyDict", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_CreatePropertyDict", a1);
    }
  }

  if (!a1)
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v16 = AVE_Log_CheckConsole(0xCu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v17, 12, v18, "AVE_Session_HEVC_CreatePropertyDict", 294, "pINS != __null", 0);
        v17 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v17);
    }

    v15 = 4294966295;
    goto LABEL_39;
  }

  v7 = 0;
  v8 = MEMORY[0x29EDB9010];
  v9 = MEMORY[0x29EDB9020];
  while (1)
  {
    if (v7 == 1)
    {
      v10 = 256;
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_16;
      }

      v10 = 512;
    }

    v11 = v2[396] ? 1 : 2;
    v12 = v11 | v10;
    Mutable = CFDictionaryCreateMutable(0, 0, v8, v9);
    *(&v41 + v7) = Mutable;
    if (!Mutable)
    {
      break;
    }

    Dict = AVE_Prop_HEVC_MakeDict(*(a1 + 68), v12, *(a1 + 56), Mutable);
    if (Dict)
    {
      v15 = Dict;
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v24 = AVE_Log_CheckConsole(0xCu);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        v27 = *(a1 + 68);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to make property dictionary %p %lld 0x%x %d %d\n", v25, 12, v26, "AVE_Session_HEVC_CreatePropertyDict", 329, "ret == 0", a1, *(a1 + 56), v12, *(a1 + 68), v15);
          v25 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(4);
          v28 = *(a1 + 56);
        }

        v40 = *(a1 + 68);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %p %lld 0x%x %d %d", v25, 12, v26, "AVE_Session_HEVC_CreatePropertyDict");
      }

      goto LABEL_35;
    }

LABEL_16:
    if (++v7 == 3)
    {
      v15 = 0;
      *(a1 + 80) = v41;
      *(a1 + 96) = v42;
      goto LABEL_39;
    }
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v19 = AVE_Log_CheckConsole(0xCu);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(4);
    v22 = *(a1 + 68);
    if (v19)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d\n", v20, 12, v21, "AVE_Session_HEVC_CreatePropertyDict", 324, "paDict[i] != __null", a1, *(a1 + 56), v12, *(a1 + 68), 0);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      v23 = *(a1 + 56);
    }

    v39 = *(a1 + 68);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d", v20, 12, v21, "AVE_Session_HEVC_CreatePropertyDict");
  }

  v15 = 4294966293;
LABEL_35:
  for (i = 0; i != 24; i += 8)
  {
    v30 = *(&v41 + i);
    if (v30)
    {
      CFRelease(v30);
      *(&v41 + i) = 0;
    }
  }

LABEL_39:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v31 = AVE_Log_CheckConsole(0xCu);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(6);
    if (v31)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v32, 12, v33, "AVE_Session_HEVC_CreatePropertyDict", a1, v15);
      v34 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v34, 12, v38, "AVE_Session_HEVC_CreatePropertyDict", a1, v15);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v32, 12, v33, "AVE_Session_HEVC_CreatePropertyDict", a1, v15);
    }
  }

  v35 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t AVE_Session_HEVC_Stop(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Stop", a1);
      v5 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v19, "AVE_Session_HEVC_Stop", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Stop", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 104712);
    v7 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v6, 4u, v7);
    if (*(a1 + 104644) == 30568)
    {
      v21 = AVE_GetCurrTime();
      v8 = AVE_USL_Drv_Complete(*(a1 + 120), &v21);
    }

    else
    {
      v8 = 0;
    }

    v12 = *(a1 + 104712);
    v13 = AVE_GetCurrTime();
    AVE_TimeStats_AddEndTime(v12, 4u, v13);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v9 = AVE_Log_CheckConsole(0xCu);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v10, 12, v11, "AVE_Session_HEVC_Stop", 366, "pINS != __null", 0);
        v10 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v10);
    }

    v8 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v14 = AVE_Log_CheckConsole(0xCu);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v15, 12, v16, "AVE_Session_HEVC_Stop", a1, v8);
      v17 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v17, 12, v20, "AVE_Session_HEVC_Stop", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 12, v16, "AVE_Session_HEVC_Stop", a1, v8);
    }
  }

  return v8;
}

uint64_t AVE_Session_HEVC_Destroy(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v46, "AVE_Session_HEVC_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Destroy", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 104712);
    v7 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v6, 1u, v7);
    if (*(a1 + 104644) == 30568)
    {
      v48 = AVE_GetCurrTime();
      AVE_USL_Drv_Stop(*(a1 + 120), &v48, 0);
    }

    if (AVE_Log_CheckLevel(2u, 0))
    {
      v8 = AVE_Log_CheckConsole(2u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(0);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13 = *(a1 + 10772);
      v14 = *(a1 + 104648);
      ProcCnt = AVE_USL_Drv_GetProcCnt(*(a1 + 120));
      DropCnt = AVE_USL_Drv_GetDropCnt(*(a1 + 120));
      if (v8)
      {
        printf("%lld %d AVE %s: ID: %lld Type: %d Enc: %d | Input: %d Proc: %lld Drop: %lld\n", v9, 2, v10, v11, v12, v13, v14, ProcCnt, DropCnt);
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(0);
        v17 = *(a1 + 56);
        v18 = *(a1 + 64);
        v19 = *(a1 + 10772);
        v20 = *(a1 + 104648);
        AVE_USL_Drv_GetProcCnt(*(a1 + 120));
        AVE_USL_Drv_GetDropCnt(*(a1 + 120));
      }

      syslog(3, "%lld %d AVE %s: ID: %lld Type: %d Enc: %d | Input: %d Proc: %lld Drop: %lld", v9, 2, v10);
    }

    v24 = AVE_USL_Drv_Destroy(*(a1 + 120));
    *(a1 + 120) = 0;
    v25 = *(a1 + 104712);
    v26 = AVE_GetCurrTime();
    AVE_TimeStats_AddEndTime(v25, 1u, v26);
    AVE_TimeStats_Calc(*(a1 + 104712));
    AVE_TimeStats_Print(*(a1 + 104712), 16, 6, 0, 0);
    AVE_DW_Uninit();
    v27 = *(a1 + 104704);
    if (v27)
    {
      AVE_FPS::~AVE_FPS(v27);
      MEMORY[0x29C24E920]();
      *(a1 + 104704) = 0;
    }

    v28 = *(a1 + 104712);
    if (v28)
    {
      AVE_TimeStats_Destroy(v28);
      *(a1 + 104712) = 0;
    }

    v29 = *(a1 + 104720);
    if (v29)
    {
      AVE_Dump_Uninit(v29);
      AVE_Dump_Destroy(*(a1 + 104720));
      *(a1 + 104720) = 0;
    }

    v30 = *(a1 + 104728);
    if (v30)
    {
      AVE_VCP::~AVE_VCP(v30);
      MEMORY[0x29C24E920]();
      *(a1 + 104728) = 0;
    }

    v31 = *(a1 + 104736);
    if (v31)
    {
      AVE_SEI::~AVE_SEI(v31);
      MEMORY[0x29C24E920]();
      *(a1 + 104736) = 0;
    }

    v32 = *(a1 + 104656);
    if (v32)
    {
      CFRelease(v32);
      *(a1 + 104656) = 0;
    }

    v33 = 0;
    v34 = a1 + 80;
    do
    {
      v35 = *(v34 + v33);
      if (v35)
      {
        CFRelease(v35);
        *(v34 + v33) = 0;
      }

      v33 += 8;
    }

    while (v33 != 24);
    v36 = *(a1 + 104);
    if (v36)
    {
      CFRelease(v36);
      *(a1 + 104) = 0;
    }

    v37 = *(a1 + 107992);
    if (v37)
    {
      CFRelease(v37);
      *(a1 + 107992) = 0;
    }

    v38 = *(a1 + 112);
    if (v38)
    {
      CFRelease(v38);
      *(a1 + 112) = 0;
    }

    v39 = *(a1 + 104768);
    if (v39)
    {
      CFRelease(v39);
      *(a1 + 104768) = 0;
    }

    v40 = *(a1 + 104776);
    if (v40)
    {
      CFRelease(v40);
      *(a1 + 104776) = 0;
    }

    AVE_Prop_Cfg_HEVC_Uninit((a1 + 106112));
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v21 = AVE_Log_CheckConsole(0xCu);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v22, 12, v23, "AVE_Session_HEVC_Destroy", 398, "pINS != __null", 0);
        v22 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v22);
    }

    AVE_DW_Uninit();
    v24 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v41 = AVE_Log_CheckConsole(0xCu);
    v42 = AVE_GetCurrTime();
    v43 = AVE_Log_GetLevelStr(6);
    if (v41)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v42, 12, v43, "AVE_Session_HEVC_Destroy", a1, v24);
      v44 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v44, 12, v47, "AVE_Session_HEVC_Destroy", a1, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v42, 12, v43, "AVE_Session_HEVC_Destroy", a1, v24);
    }
  }

  return v24;
}

uint64_t AVE_Session_HEVC_StartSession(uint64_t a1, unsigned int *a2)
{
  v4 = AVE_DW_Get();
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v5 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_StartSession", a1, a2);
      v8 = AVE_GetCurrTime();
      v60 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 12, v60, "AVE_Session_HEVC_StartSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_StartSession", a1, a2);
    }
  }

  if (a1 && a2)
  {
    if (*a2 < 1 || a2[1] <= 0)
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v23 = AVE_Log_CheckConsole(0xCu);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        v24 = *a2;
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_HEVC_StartSession", 6820, "pDim->iWidth > 0 && pDim->iHeight > 0", a1, *(a1 + 56), *a2, a2[1]);
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 56);
          v26 = *a2;
          v27 = a2[1];
        }

        else
        {
          v67 = *a2;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v9 = *(a1 + 104712);
      v10 = AVE_GetCurrTime();
      AVE_TimeStats_AddStartTime(v9, 3u, v10);
      v11 = *a2;
      v12 = a2[1];
      *(a1 + 1440) = *a2;
      *(a1 + 1444) = v12;
      *(a1 + 11452) = v11;
      *(a1 + 11456) = v12;
      *(a1 + 764) = 1;
      AVE_PrepareCropParams(a1);
      if (!AVE_Enc_CheckResolution(*(a1 + 68), 1, 2, *(a1 + 1440), *(a1 + 1444), 0))
      {
        AVE_SetEncoderDefault(a1);
        v29 = *(a1 + 24732) + 8;
        if (v29 <= *(a1 + 24736) + 8)
        {
          v29 = *(a1 + 24736) + 8;
        }

        if (AVE_UpdatePixelBufferDict(*(a1 + 68), *(a1 + 64), 62, 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v29, 0, 0x414C4C20u, *(a1 + 16)))
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v30 = AVE_Log_CheckConsole(0x1Eu);
            v31 = AVE_GetCurrTime();
            v32 = AVE_Log_GetLevelStr(4);
            if (v30)
            {
              printf("%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.\n", v31, 30, v32, "AVE_Session_HEVC_StartSession", 6857, "ret == 0");
              v33 = AVE_GetCurrTime();
              v61 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v33, 30, v61, "AVE_Session_HEVC_StartSession", 6857, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v31, 30, v32, "AVE_Session_HEVC_StartSession", 6857, "ret == 0");
            }
          }

          v28 = 4294954394;
          goto LABEL_32;
        }

        *(a1 + 104644) = 30566;
        *(a1 + 106080) = 0xFFFFFFFF00000000;
        *(a1 + 10532) = 0;
        *(a1 + 108016) = 0;
        *(a1 + 108004) = 0;
        memset_pattern16((a1 + 108008), &unk_295650C30, 8uLL);
        *(a1 + 108024) = 0u;
        if (*(a1 + 1112) >= 1)
        {
          v41 = *(a1 + 1112);
        }

        else
        {
          v41 = 30;
        }

        AVE_FPS::Update(*(a1 + 104704), v41, 0, 0);
        *(a1 + 712) = v4[103];
        if (*(a1 + 10892) == 1)
        {
          operator new();
        }

        if (*(a1 + 16) == 1)
        {
          v42 = 1;
        }

        else
        {
          v42 = 3;
        }

        v43 = AVE_SEI::Init(*(a1 + 104736), *(a1 + 56), 0, 0, 2, v42);
        if (v43)
        {
          v28 = v43;
          if (!AVE_Log_CheckLevel(0xCu, 4))
          {
            goto LABEL_32;
          }

          v44 = AVE_Log_CheckConsole(0xCu);
          v45 = AVE_GetCurrTime();
          v46 = AVE_Log_GetLevelStr(4);
          if (v44)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu\n", v45, 12, v46, "AVE_Session_HEVC_StartSession", 6904, "ret == 0", a1, *(a1 + 56));
            v47 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            v48 = *(a1 + 56);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu", v47, 12);
            goto LABEL_32;
          }

          v64 = a1;
          v65 = *(a1 + 56);
          v63 = 6904;
          v62 = v46;
          v56 = "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu";
        }

        else
        {
          SupportedPresetDictionary = AVE_Prop_HEVC_CreateSupportedPresetDictionary(a1);
          if (!SupportedPresetDictionary)
          {
            v57 = v4[30];
            if (v57)
            {
              *(a1 + 11468) = v57;
            }

            for (i = 0; i != 72; i += 12)
            {
              v59 = v4[i + 32];
              if ((v59 & 0x80000000) == 0)
              {
                *(a1 + 11476 + i * 4) = v59;
              }

              v28 = 0;
            }

            goto LABEL_32;
          }

          v28 = SupportedPresetDictionary;
          if (!AVE_Log_CheckLevel(0xCu, 4))
          {
LABEL_32:
            v34 = *(a1 + 104712);
            v35 = AVE_GetCurrTime();
            AVE_TimeStats_AddEndTime(v34, 3u, v35);
            if (v28)
            {
              v36 = *(a1 + 104728);
              if (v36)
              {
                AVE_VCP::~AVE_VCP(v36);
                MEMORY[0x29C24E920]();
                *(a1 + 104728) = 0;
              }
            }

            goto LABEL_35;
          }

          v50 = AVE_Log_CheckConsole(0xCu);
          v45 = AVE_GetCurrTime();
          v51 = AVE_Log_GetLevelStr(4);
          v52 = *(a1 + 56);
          if (v50)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d\n", v45, 12, v51, "AVE_Session_HEVC_StartSession", 6912, "ret == 0", a1, *(a1 + 56), v28);
            v53 = AVE_GetCurrTime();
            v54 = AVE_Log_GetLevelStr(4);
            v55 = *(a1 + 56);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d", v53, 12, v54);
            goto LABEL_32;
          }

          v65 = *(a1 + 56);
          v66 = v28;
          v64 = a1;
          v63 = 6912;
          v62 = v51;
          v56 = "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d";
        }

        syslog(3, v56, v45, 12, v62, "AVE_Session_HEVC_StartSession", v63, "ret == 0", v64, v65, v66);
        goto LABEL_32;
      }

      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v13 = AVE_Log_CheckConsole(0xCu);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        v16 = *(a1 + 1440);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_HEVC_StartSession", 6839, "ret == 0", a1, *(a1 + 56), *(a1 + 1440), *(a1 + 1444));
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(4);
          v17 = *(a1 + 56);
          v18 = *(a1 + 1440);
          v19 = *(a1 + 1444);
        }

        else
        {
          v68 = *(a1 + 1440);
        }

LABEL_30:
        syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v14, 12, v15);
      }
    }

    v28 = 4294965295;
    goto LABEL_32;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v20 = AVE_Log_CheckConsole(0xCu);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(4);
    if (v20)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v21, 12, v22, "AVE_Session_HEVC_StartSession", 6816, "pINS != __null && pDim != __null", a1, a2);
      v21 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v21, 12);
  }

  v28 = 4294966295;
LABEL_35:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v37 = AVE_Log_CheckConsole(0xCu);
    v38 = AVE_GetCurrTime();
    v39 = AVE_Log_GetLevelStr(6);
    if (v37)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v38, 12, v39, "AVE_Session_HEVC_StartSession", a1, a2, v28);
      v38 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v38);
  }

  return v28;
}

void AVE_PrepareCropParams(uint64_t a1)
{
  v2 = (a1 + 106088);
  v3 = a1 + 24712;
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams\n", CurrTime, 12, LevelStr);
      v7 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", v7, 12, v31);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", CurrTime, 12, LevelStr);
    }
  }

  MinResolution = AVE_Enc_GetMinResolution(*(a1 + 68), 1, 2);
  v9 = *(a1 + 1440);
  v10 = *(a1 + 1444);
  *v3 = 0;
  *(a1 + 24716) = 0u;
  if ((v10 & 0xF) != 0 || v10 < MinResolution[1])
  {
    if (*(a1 + 76) >= 12)
    {
      v2[1] = v10;
    }

    v11 = (v10 + 15) & 0xFFFFFFF0;
    if (v11 <= MinResolution[1])
    {
      v11 = MinResolution[1];
    }

    *(a1 + 1444) = v11;
    *v3 = 1;
    *(v3 + 16) = v11 - v10;
  }

  if ((v9 & 0xF) != 0 || v9 < *MinResolution)
  {
    if (*(a1 + 76) >= 12)
    {
      *v2 = v9;
    }

    v12 = (v9 + 15) & 0xFFFFFFF0;
    if (v12 <= *MinResolution)
    {
      v12 = *MinResolution;
    }

    *(a1 + 1440) = v12;
    *v3 = 1;
    *(v3 + 8) = v12 - v9;
  }

  if (AVE_Log_CheckLevel(0x10u, 7))
  {
    v13 = AVE_Log_CheckConsole(0x10u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(7);
    if (v13)
    {
      printf("%lld %d AVE %s: FIG: input -> %dx%d\n", v14, 16, v15, v9, v10);
      v16 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v16, 16, v32, v9, v10);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v14, 16, v15, v9, v10);
    }
  }

  if (AVE_Log_CheckLevel(0x10u, 7))
  {
    v17 = AVE_Log_CheckConsole(0x10u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(7);
    v20 = *(a1 + 1440);
    v21 = *(a1 + 1444);
    if (v17)
    {
      printf("%lld %d AVE %s: FIG: input multiple -> %dx%d\n", v18, 16, v19, *(a1 + 1440), v21);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v22, 16, v23, *(a1 + 1440), *(a1 + 1444));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v18, 16, v19, *(a1 + 1440), v21);
    }
  }

  if (AVE_Log_CheckLevel(0x10u, 7))
  {
    v24 = AVE_Log_CheckConsole(0x10u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(7);
    v27 = *(v3 + 16);
    v28 = *(v3 + 8);
    if (v24)
    {
      printf("%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d\n", v25, 16, v26, *(v3 + 16), v28);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v29, 16, v30, *(v3 + 16), *(v3 + 8));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v25, 16, v26, *(v3 + 16), v28);
    }
  }
}

double AVE_SetEncoderDefault(uint64_t a1)
{
  v2 = a1 + 59120;
  v21 = a1 + 48356;
  v3 = a1 + 39864;
  v4 = a1 + 31172;
  v5 = a1 + 24264;
  v20 = (a1 + 14424);
  v6 = a1 + 10168;
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v7 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault\n", CurrTime, 12, LevelStr);
      v10 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", v10, 12, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", CurrTime, 12, LevelStr);
    }
  }

  *(v6 + 588) = 0;
  *(a1 + 1308) = 1;
  *(v6 + 596) = 1;
  *(a1 + 1096) = 0x39D00000000;
  *(a1 + 1296) &= ~1u;
  *(v6 + 613) = 0;
  *(a1 + 10788) = 5;
  *(a1 + 10792) = 0x300000006;
  *(a1 + 10752) = 1;
  *(v6 + 678) = 1;
  *(a1 + 10864) = 0;
  *(a1 + 10880) = 0;
  *(a1 + 10872) = 0;
  *(a1 + 10888) = 0;
  *(a1 + 10860) = -1;
  *(v6 + 684) = 0;
  *(a1 + 10848) = 0x1000000;
  *(v6 + 687) = 0;
  *(a1 + 688) &= ~2u;
  *(a1 + 10800) = 1;
  v11 = *(a1 + 1336);
  *(v6 + 760) = 0;
  *(v6 + 1276) = 0;
  *(a1 + 11764) = 0;
  *(a1 + 11472) = 0u;
  *(a1 + 11488) = 0u;
  *(a1 + 11504) = 0u;
  *(a1 + 11520) = 0u;
  *(a1 + 11536) = 0u;
  *(a1 + 11552) = 0u;
  *(a1 + 11568) = 0u;
  *(a1 + 11584) = 0u;
  *(a1 + 11600) = 0u;
  *(a1 + 11616) = 0u;
  *(a1 + 11632) = 0u;
  *(a1 + 11648) = 0u;
  *(a1 + 11664) = 0u;
  *(a1 + 11680) = 0u;
  *(a1 + 11696) = 0u;
  *(a1 + 11712) = 0u;
  *(a1 + 11728) = 0u;
  *(a1 + 11744) = 0u;
  bzero((a1 + 10930), 0x201uLL);
  for (i = 0; i != 288; i += 48)
  {
    *(a1 + 11472 + i) = 0xFFFFFFFF00000001;
  }

  *(a1 + 11464) = 0x100000006;
  *(a1 + 11760) = 1;
  *(v6 + 344) = 0;
  *(v6 + 1642) = 1;
  *(a1 + 11812) = -1;
  *(a1 + 11772) = 0;
  *(a1 + 11792) = 0;
  *(v6 + 1632) = 0;
  *(a1 + 11804) = 0;
  *(a1 + 10924) = -1;
  *(a1 + 10908) = -1;
  *(a1 + 10916) = -1;
  *(a1 + 1472) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 1256) = 0x300000003;
  v13 = *(a1 + 1240);
  *(a1 + 10536) = 0;
  *(a1 + 1240) = v13 | 0x700;
  *v6 = 4 * (*(a1 + 76) > 6);
  *(v6 + 2) = 0;
  *(a1 + 10176) = 2;
  *(v6 + 5) = 0;
  *(a1 + 10244) = 1;
  *(v6 + 80) = 0;
  *(a1 + 10252) = 1;
  v14 = *(a1 + 1444);
  *(a1 + 10260) = v14;
  *(a1 + 10516) = 4;
  *(a1 + 10524) = 0;
  *(a1 + 1288) = 1;
  *(v6 + 36) = 256;
  *(v6 + 354) = 0;
  *(v6 + 363) = 0;
  *(v6 + 372) = 0;
  *(v6 + 396) = 5;
  *(a1 + 10568) = 1;
  *(a1 + 10604) = 0x1000000001;
  *(a1 + 10572) = 0u;
  *(a1 + 10594) = 0;
  *(a1 + 10588) = 0;
  *(a1 + 10744) = 8;
  *(a1 + 10552) = 2;
  *(a1 + 1392) = -1;
  *(v6 + 572) = 0;
  *(v6 + 12) = 3;
  *(v6 + 16) = 0;
  *(a1 + 10188) = 0x800000001;
  *(v6 + 3) = 1;
  *(a1 + 1336) = v11 & 0xF3FEF9FF | 0x600;
  *(a1 + 1448) |= 0x2000000uLL;
  memset_pattern16((a1 + 10544), &unk_295650C20, 8uLL);
  v15 = (*(a1 + 1440) * v14);
  *(a1 + 10808) = 1;
  *(a1 + 1136) = (v15 * 1.5 * 0.075 * 30.0);
  *(a1 + 1112) = 30;
  *(a1 + 11968) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0xBFF0000000000000;
  *(a1 + 1280) = 0xBFF0000000000000;
  *(a1 + 1132) = 1;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = xmmword_295650B50;
  *(a1 + 1352) = 30;
  *(a1 + 1088) &= ~2uLL;
  *(a1 + 1252) = 1;
  *(a1 + 720) = 0;
  if (!*(v6 + 612))
  {
    *(a1 + 10892) = 0;
  }

  *(a1 + 11460) = 0;
  *(a1 + 692) = -1;
  *(a1 + 1232) = 0xC0000000CLL;
  *(a1 + 1344) = 0xC0000000CLL;
  *(a1 + 1336) = v11 & 0xF3FE7889 | 0x776;
  *(a1 + 1144) = 0x1A0000001ALL;
  *(a1 + 1152) = 26;
  *(a1 + 1192) = 0;
  *(a1 + 1160) = 0uLL;
  *(a1 + 1176) = 0uLL;
  *(a1 + 1324) = 1;
  *(a1 + 1328) = 0x100000001;
  *(a1 + 1128) = 0;
  *(a1 + 11448) = 30;
  *(a1 + 1120) = 0;
  *(a1 + 11964) = 0;
  *(v6 + 1648) = 0;
  *(v6 + 12) = 0;
  *(a1 + 12000) = 0;
  *(v6 + 1836) = 257;
  *(a1 + 12012) = 0;
  *(v6 + 1848) = 0;
  memset_pattern16((a1 + 13308), &unk_295650C10, 0x1CuLL);
  *(v6 + 3136) = 0;
  *v20 = 0;
  *(a1 + 13336) = 0u;
  *(a1 + 13352) = 0u;
  *(a1 + 13368) = 0u;
  *(a1 + 13384) = 0u;
  *(a1 + 14428) = 0x5DC0000003E9;
  v20[12] = 0;
  *(a1 + 14444) = 0;
  v20[104] = 0;
  *(a1 + 12020) = 0;
  *(a1 + 12024) = 0x100000001;
  *(v6 + 1896) = 1;
  *(v6 + 1903) = 257;
  *(v6 + 1898) = 16843009;
  *(v6 + 1905) = 0;
  *(v6 + 1902) = 1;
  *(a1 + 12080) = 1;
  *(a1 + 12420) = 257;
  *(a1 + 12416) = 16843009;
  *(a1 + 12390) = 0x101010101010101;
  *(a1 + 12384) = 0x101010101010101;
  *(a1 + 12376) = 0x101010101010101;
  *(a1 + 12368) = 0x101010101010101;
  *(a1 + 24244) = 0;
  *(a1 + 24252) = 0;
  *(a1 + 24256) = 0x100000000;
  *v5 = 1;
  *(v5 + 36) = 16842753;
  *(v5 + 42) = 65793;
  *(v5 + 52) = 1;
  *(v5 + 420) = 0x100000000;
  *(v5 + 428) = 0;
  *(v5 + 468) = 0;
  *(v5 + 472) = 0;
  *(v5 + 476) = 7;
  *(v5 + 480) = 0;
  memset_pattern16((a1 + 24748), &unk_295650C10, 0x1CuLL);
  *(a1 + 24820) = 0u;
  *(a1 + 24792) = 0u;
  *(a1 + 24808) = 0u;
  *(a1 + 24776) = 0u;
  *(v5 + 572) = xmmword_295650B60;
  *(v5 + 588) = 0;
  *(v5 + 592) = 0;
  *v4 = 256;
  *(v4 + 2) = 0;
  *(a1 + 31176) = 0x700000007;
  *(v4 + 12) = 1;
  *(v4 + 20) = 1;
  *(v4 + 156) = 1;
  *(v4 + 160) = 0;
  *(v4 + 164) = 0;
  *(v4 + 176) = 256;
  *(v4 + 180) = 5;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0x200000002;
  *(v4 + 200) = 2;
  *(v4 + 204) = 0;
  *(v4 + 236) = 0;
  *(v4 + 240) = 0x5DC0000003E9;
  *(v4 + 248) = 0;
  *(v4 + 256) = 257;
  *(v4 + 260) = 1;
  *(v4 + 264) = xmmword_295650B70;
  *(v4 + 280) = xmmword_295650B80;
  *(v4 + 296) = 48827;
  *(v4 + 300) = 0;
  *(v4 + 219) = 0;
  *(v4 + 328) = 0;
  *(a1 + 1104) = 24;
  v16 = *(a1 + 10892);
  if (v16 == 37 || v16 == 20)
  {
    *(a1 + 1104) = 152;
  }

  *v3 = 0;
  *(v3 + 4) = 0;
  *(a1 + 39852) = 0;
  *(a1 + 39860) = 0;
  *(a1 + 39872) = 0;
  *(a1 + 39878) = 0;
  *(v3 + 28) = xmmword_295650B90;
  *(v3 + 60) = xmmword_295650B90;
  *&v17 = 0xC0000000CLL;
  *(&v17 + 1) = 0xC0000000CLL;
  *(v3 + 44) = v17;
  *(v3 + 76) = v17;
  *(v3 + 93) = 0;
  *(v3 + 97) = 1;
  *(v3 + 2161) = 256;
  *(v3 + 2176) = 0;
  *v21 = 0;
  *(v21 + 2) = 0;
  *(v3 + 22) = 1;
  *(v3 + 24) = 2;
  *(v21 + 17) = 0;
  *(v3 + 92) = 0;
  *(v21 + 20) = 2;
  *(v21 + 3) = 0;
  *v2 = 1;
  *(v2 + 4) = 0;
  *(v2 + 16) = 2;
  *(v2 + 273) = 257;
  *(v2 + 928) = 0;
  *(v2 + 952) = 0;
  *(v2 + 28) = 0;
  *(v2 + 32) = 0;
  *(v2 + 36) = 0;
  *(v2 + 272) = 0;
  *(v2 + 412) = 0;
  *(v2 + 941) = 0;
  *(a1 + 59395) = 0;
  *(a1 + 59403) = 0;
  *(v2 + 848) = 3;
  result = NAN;
  *(v2 + 968) = -1;
  *(v2 + 414) = 1;
  *(a1 + 696) = 0;
  *(a1 + 716) = 0;
  return result;
}

uint64_t AVE_Session_HEVC_BeginPass(uint64_t a1, int a2)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%x\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_BeginPass", a1, a2);
      v7 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", v7, 12, v39, "AVE_Session_HEVC_BeginPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", CurrTime, 12, LevelStr, "AVE_Session_HEVC_BeginPass", a1, a2);
    }
  }

  if (a1)
  {
    if (AVE_Log_CheckLevel(0xD8u, 7))
    {
      v8 = AVE_Log_CheckConsole(0xD8u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(7);
      v11 = *(a1 + 104664);
      v12 = *(a1 + 104668);
      if (v8)
      {
        printf("%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)\n", v9, 216, v10, a2, *(a1 + 104664), v12);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v13, 216, v14, a2, *(a1 + 104664), *(a1 + 104668));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v9, 216, v10, a2, *(a1 + 104664), v12);
      }
    }

    if (!*(a1 + 104656))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v23 = AVE_Log_CheckConsole(3u);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.\n", v24, 3, v25, "AVE_Session_HEVC_BeginPass", 7095, "pINS->multiPassStorage != __null");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.");
      }

      goto LABEL_40;
    }

    v18 = *(a1 + 104664);
    if (v18 != *(a1 + 104668))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v26 = AVE_Log_CheckConsole(3u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        v29 = *(a1 + 104664);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v27, 3, v28, "AVE_Session_HEVC_BeginPass", 7096, "pINS->multiPassBeginPassCounter == pINS->multiPassEndPassCounter", *(a1 + 104664), *(a1 + 104668));
          v27 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        v41 = *(a1 + 104664);
        v42 = *(a1 + 104668);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d", v27);
      }

      goto LABEL_40;
    }

    if (v18)
    {
      v19 = v18 + 1;
      *(a1 + 104664) = v19;
      if (v19 >= 3)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v20 = AVE_Log_CheckConsole(3u);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: pINS->multiPassBeginPassCounter reached max %d\n", v21, 3, v22, "AVE_Session_HEVC_BeginPass", 7105, "false", *(a1 + 104664));
            v21 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          v40 = *(a1 + 104664);
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pINS->multiPassBeginPassCounter reached max %d", v21);
        }

LABEL_40:
        v30 = 4294966296;
        goto LABEL_41;
      }
    }

    else
    {
      if (*(a1 + 104644) == 30568)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v31 = AVE_Log_CheckConsole(3u);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with SessionStatus == H3H264VideoEncoder_SessionStatus_Run\n", v32, 3, v33, "AVE_Session_HEVC_BeginPass", 7099, "pINS->SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with SessionStatus == H3H264VideoEncoder_SessionStatus_Run");
        }

        goto LABEL_40;
      }

      *(a1 + 104664) = 1;
    }

    v30 = 0;
    *(a1 + 104672) = a2;
    goto LABEL_41;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v15 = AVE_Log_CheckConsole(0xCu);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x\n", v16, 12, v17, "AVE_Session_HEVC_BeginPass", 7090, "pINS != __null", 0, a2);
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x", v16, 12);
  }

  v30 = 4294966295;
LABEL_41:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v34 = AVE_Log_CheckConsole(0xCu);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(6);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%x %d\n", v35, 12, v36, "AVE_Session_HEVC_BeginPass", a1, a2, v30);
      v37 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v37);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v35);
    }
  }

  return v30;
}

uint64_t AVE_Session_HEVC_EndPass(uint64_t a1, int *a2)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_EndPass", a1, a2);
      v7 = AVE_GetCurrTime();
      v105 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v105, "AVE_Session_HEVC_EndPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_EndPass", a1, a2);
    }
  }

  if (a1)
  {
    if (AVE_Log_CheckLevel(0xD8u, 7))
    {
      v8 = AVE_Log_CheckConsole(0xD8u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(7);
      v11 = *(a1 + 104664);
      if (v8)
      {
        printf("%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)\n", v9, 216, v10, "AVE_Session_HEVC_EndPass", *(a1 + 104672), *(a1 + 104664), *(a1 + 104668));
        v9 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v12 = *(a1 + 104672);
        v106 = *(a1 + 104664);
        v108 = *(a1 + 104668);
      }

      else
      {
        v107 = *(a1 + 104664);
      }

      syslog(3, "%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)", v9);
    }

    if (*(a1 + 104644) != 30568)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v27 = AVE_Log_CheckConsole(3u);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run\n", v28, 3, v29, "AVE_Session_HEVC_EndPass", 7142, "pINS->SessionStatus == AVE_CommonWrapper_SessionStatus_Run");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
      }

      goto LABEL_57;
    }

    if (!*(a1 + 104656))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v30 = AVE_Log_CheckConsole(3u);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.\n", v31, 3, v32, "AVE_Session_HEVC_EndPass", 7144, "pINS->multiPassStorage != __null");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.");
      }

      goto LABEL_57;
    }

    v16 = *(a1 + 104664);
    v17 = *(a1 + 104668);
    if (v16 != v17 + 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v33 = AVE_Log_CheckConsole(3u);
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        v36 = *(a1 + 104664);
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v34, 3, v35, "AVE_Session_HEVC_EndPass", 7149, "pINS->multiPassBeginPassCounter == (pINS->multiPassEndPassCounter + 1)", *(a1 + 104664), *(a1 + 104668));
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d", v34, 3, v35, "AVE_Session_HEVC_EndPass", 7149, "pINS->multiPassBeginPassCounter == (pINS->multiPassEndPassCounter + 1)", *(a1 + 104664), *(a1 + 104668));
      }

      goto LABEL_57;
    }

    if (v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = *(a1 + 104672) == 1;
    }

    v19 = !v18;
    *(a1 + 104668) = v16;
    if (a2)
    {
      *a2 = v19;
    }

    if (!v19)
    {
      v37 = 0;
      goto LABEL_58;
    }

    if (AVE_Log_CheckLevel(0xD8u, 6))
    {
      v20 = AVE_Log_CheckConsole(0xD8u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(6);
      v23 = *(a1 + 104668);
      v24 = *(a1 + 104648);
      if (v20)
      {
        printf("%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d\n", v21, 216, v22, "AVE_Session_HEVC_EndPass", *(a1 + 104668), v24);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v25, 216, v26, "AVE_Session_HEVC_EndPass", *(a1 + 104668), *(a1 + 104648));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v21, 216, v22, "AVE_Session_HEVC_EndPass", *(a1 + 104668), v24);
      }
    }

    AVE_FPS::Reset(*(a1 + 104704));
    if (AVE_USL_Drv_Reset(*(a1 + 120), *(a1 + 104668)))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v38 = AVE_Log_CheckConsole(3u);
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        if (v38)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Reset failed.\n", v39, 3, v40, "AVE_Session_HEVC_EndPass", 7186, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Reset failed.");
      }

LABEL_57:
      v37 = 4294966296;
      goto LABEL_58;
    }

    if (*(a1 + 16) == 1)
    {
      goto LABEL_122;
    }

    v41 = MEMORY[0x29EDB9398];
    v114 = **&MEMORY[0x29EDB9398];
    start = v114;
    v112 = v114;
    v42 = *MEMORY[0x29EDB8ED8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v44 = Mutable;
      v45 = *(a1 + 104656);
      *&v110.start.value = *v41;
      v110.start.epoch = *(v41 + 16);
      v46 = *MEMORY[0x29EDBCF68];
      if (VTMultiPassStorageGetTimeStamp())
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v47 = AVE_Log_CheckConsole(3u);
          v48 = AVE_GetCurrTime();
          v49 = AVE_Log_GetLevelStr(4);
          if (v47)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp kVTMultiPassStorageStep_GetFirstTimeStamp failed.\n", v48, 3, v49, "AVE_Session_HEVC_EndPass", 7202, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp kVTMultiPassStorageStep_GetFirstTimeStamp failed.");
        }

        goto LABEL_57;
      }

      if (AVE_Log_CheckLevel(0xD8u, 7))
      {
        v57 = AVE_Log_CheckConsole(0xD8u);
        v58 = AVE_GetCurrTime();
        v59 = AVE_Log_GetLevelStr(7);
        if (v57)
        {
          printf("%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d\n", v58, 216, v59, "AVE_Session_HEVC_EndPass", v114.value, v114.timescale, v114.flags);
          v58 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d", v58);
      }

      v60 = *(a1 + 104656);
      *&v110.start.value = *v41;
      v110.start.epoch = *(v41 + 16);
      v61 = *MEMORY[0x29EDBCF70];
      if (VTMultiPassStorageGetTimeStampAndDuration())
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v62 = AVE_Log_CheckConsole(3u);
          v63 = AVE_GetCurrTime();
          v64 = AVE_Log_GetLevelStr(4);
          if (v62)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStampAndDuration kVTMultiPassStorageStep_GetLastTimeStamp failed.\n", v63, 3, v64, "AVE_Session_HEVC_EndPass", 7218, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStampAndDuration kVTMultiPassStorageStep_GetLastTimeStamp failed.");
        }

        goto LABEL_57;
      }

      if (AVE_Log_CheckLevel(0xD8u, 7))
      {
        v65 = AVE_Log_CheckConsole(0xD8u);
        v66 = AVE_GetCurrTime();
        v67 = AVE_Log_GetLevelStr(7);
        if (v65)
        {
          printf("%lld %d AVE %s: %s lastTimeInTimeRange value %lld timescale %d flags %d\n", v66, 216, v67, "AVE_Session_HEVC_EndPass", start.value, start.timescale, start.flags);
          v66 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %s lastTimeInTimeRange value %lld timescale %d flags %d", v66);
      }

      if (AVE_Log_CheckLevel(0xD8u, 7))
      {
        v68 = AVE_Log_CheckConsole(0xD8u);
        v69 = AVE_GetCurrTime();
        v70 = AVE_Log_GetLevelStr(7);
        if (v68)
        {
          printf("%lld %d AVE %s: %s duration value %lld timescale %d flags %d\n", v69, 216, v70, "AVE_Session_HEVC_EndPass", v112.value, v112.timescale, v112.flags);
          v69 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %s duration value %lld timescale %d flags %d", v69);
      }

      lhs.start = start;
      rhs = v112;
      CMTimeAdd(&v110.start, &lhs.start, &rhs);
      start = v110.start;
      if (AVE_Log_CheckLevel(0xD8u, 7))
      {
        v71 = AVE_Log_CheckConsole(0xD8u);
        v72 = AVE_GetCurrTime();
        v73 = AVE_Log_GetLevelStr(7);
        if (v71)
        {
          printf("%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d\n", v72, 216, v73, "AVE_Session_HEVC_EndPass", start.value, start.timescale, start.flags);
          v72 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d", v72);
      }

      if (*(a1 + 104648) <= 1u && !start.flags)
      {
        v74 = *(a1 + 1112);
        if (v74 < 1)
        {
          v74 = 30;
        }

        *&start.timescale = *&v114.timescale;
        start.epoch = v114.epoch;
        start.value = v114.value + v114.timescale / v74;
      }

      if (!v114.flags)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v78 = AVE_Log_CheckConsole(3u);
          v79 = AVE_GetCurrTime();
          v80 = AVE_Log_GetLevelStr(4);
          if (v78)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: firstTimeInTimeRange invalid.\n", v79, 3, v80, "AVE_Session_HEVC_EndPass", 7244, "firstTimeInTimeRange.flags != 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: firstTimeInTimeRange invalid.");
        }

        goto LABEL_57;
      }

      if (!start.flags)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v81 = AVE_Log_CheckConsole(3u);
          v82 = AVE_GetCurrTime();
          v83 = AVE_Log_GetLevelStr(4);
          if (v81)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: lastTimeInTimeRange invalid.\n", v82, 3, v83, "AVE_Session_HEVC_EndPass", 7246, "lastTimeInTimeRange.flags != 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: lastTimeInTimeRange invalid.");
        }

        goto LABEL_57;
      }

      memset(&v110, 0, sizeof(v110));
      lhs.start = v114;
      rhs = start;
      CMTimeRangeFromTimeToTime(&v110, &lhs.start, &rhs);
      if (AVE_Log_CheckLevel(0xD8u, 6))
      {
        v75 = AVE_Log_CheckConsole(0xD8u);
        v76 = AVE_GetCurrTime();
        v77 = AVE_Log_GetLevelStr(6);
        if (v75)
        {
          printf("%lld %d AVE %s: Start %lld, %d, %d; Duration %lld, %d, %d\n", v76, 216, v77, v110.start.value, v110.start.timescale, v110.start.flags, v110.duration.value, v110.duration.timescale, v110.duration.flags);
          v76 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(6);
        }

        syslog(3, "%lld %d AVE %s: Start %lld, %d, %d; Duration %lld, %d, %d", v76, 216);
      }

      lhs = v110;
      v84 = CMTimeRangeCopyAsDictionary(&lhs, v42);
      if (!v84)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v99 = AVE_Log_CheckConsole(3u);
          v100 = AVE_GetCurrTime();
          v101 = AVE_Log_GetLevelStr(4);
          if (v99)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: CMTimeRangeCopyAsDictionary failed.\n", v100, 3, v101, "AVE_Session_HEVC_EndPass", 7255, "currentTimeRangeDictionary != __null");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CMTimeRangeCopyAsDictionary failed.");
        }

        goto LABEL_57;
      }

      v85 = v84;
      CFArrayAppendValue(v44, v84);
      CFRelease(v85);
      Count = CFArrayGetCount(v44);
      v87 = malloc_type_malloc(48 * Count, 0x1000040EED21634uLL);
      if (v87)
      {
        v88 = v87;
        if (Count >= 1)
        {
          v89 = 0;
          v90 = v87;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v44, v89);
            CMTimeRangeMakeFromDictionary(&lhs, ValueAtIndex);
            v92 = *&lhs.start.value;
            v93 = *&lhs.duration.timescale;
            v90[1] = *&lhs.start.epoch;
            v90[2] = v93;
            *v90 = v92;
            v90 += 3;
            ++v89;
          }

          while (Count != v89);
        }

        v94 = *(a1 + 16);
        Pass = VTEncoderSessionSetTimeRangesForNextPass();
        free(v88);
        CFRelease(v44);
        if (Pass)
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v96 = AVE_Log_CheckConsole(3u);
            v97 = AVE_GetCurrTime();
            v98 = AVE_Log_GetLevelStr(4);
            if (v96)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: VTEncoderSessionSetTimeRangesForNextPass failed.\n", v97, 3, v98, "AVE_Session_HEVC_EndPass", 7289, "err == noErr");
              AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTEncoderSessionSetTimeRangesForNextPass failed.");
          }

          goto LABEL_57;
        }

LABEL_122:
        v37 = 0;
        *(a1 + 104700) = *(a1 + 104648);
        *(a1 + 104648) = 0;
        goto LABEL_58;
      }

      if (AVE_Log_CheckLevel(3u, 4))
      {
        v102 = AVE_Log_CheckConsole(3u);
        v103 = AVE_GetCurrTime();
        v104 = AVE_Log_GetLevelStr(4);
        if (v102)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: malloc timeRanges failed.\n", v103, 3, v104, "AVE_Session_HEVC_EndPass", 7267, "timeRanges != __null");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: malloc timeRanges failed.");
      }
    }

    else if (AVE_Log_CheckLevel(3u, 4))
    {
      v54 = AVE_Log_CheckConsole(3u);
      v55 = AVE_GetCurrTime();
      v56 = AVE_Log_GetLevelStr(4);
      if (v54)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: CFArrayCreateMutable failed.\n", v55, 3, v56, "AVE_Session_HEVC_EndPass", 7199, "timeRangeArray != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFArrayCreateMutable failed.");
    }

    v37 = 4294966293;
    goto LABEL_58;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v13 = AVE_Log_CheckConsole(0xCu);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v14, 12, v15, "AVE_Session_HEVC_EndPass", 7132, "pINS != __null", 0, a2);
      v14 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v14, 12);
  }

  v37 = 4294966295;
LABEL_58:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v50 = AVE_Log_CheckConsole(0xCu);
    v51 = AVE_GetCurrTime();
    v52 = AVE_Log_GetLevelStr(6);
    if (v50)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v51, 12, v52, "AVE_Session_HEVC_EndPass", a1, a2, v37);
      v51 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v51);
  }

  return v37;
}

uint64_t AVE_HEVC_Encode()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v246 = v7;
  v247 = v8;
  v10 = v9;
  v12 = v11;
  v248 = v0;
  v292 = *MEMORY[0x29EDCA608];
  pixelBuffer = v9;
  v272 = 0;
  v271 = 0;
  v270 = 0;
  v265 = 0uLL;
  v242 = AVE_DW_Get();
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v13 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_HEVC_Encode", v248, v12, v10, v246, v247, v6, v4);
      v16 = AVE_GetCurrTime();
      v217 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v16, 12, v217, "AVE_HEVC_Encode", v248);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", CurrTime, 12, LevelStr, "AVE_HEVC_Encode", v248);
    }
  }

  if ((v2 & 0x80000000) == 0 && v6 && v247 && v246 && v248 && pixelBuffer)
  {
    v17 = (v248 + 104644);
    v18 = AVE_GetCurrTime();
    v268 = *v247;
    v269 = v247[2];
    v266 = *v6;
    v267 = v6[2];
    *&v265 = v268;
    DWORD2(v265) = DWORD2(v268);
    AVE_Time_Conv(0, &v265);
    if (AVE_Log_CheckLevel(0x33u, 7))
    {
      v19 = AVE_Log_CheckConsole(0x33u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(7);
      v22 = *(v248 + 56);
      v23 = *v247;
      v24 = *(v247 + 2);
      v25 = *(v6 + 3);
      if (v19)
      {
        v26 = v12;
        v27 = v2;
        v28 = v26;
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld\n", v20, 51, v21, "AVE_HEVC_Encode", 7445, v22, *(v248 + 104648), v23, v24, *(v247 + 3), v247[2], v265, DWORD2(v265), *v6, *(v6 + 2), *(v6 + 3), v6[2]);
        v29 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(7);
        v31 = v247[2];
        v32 = *(v247 + 3);
        v33 = *(v6 + 3);
        v236 = v6[2];
        v233 = *v6;
        v234 = *(v6 + 2);
        v34 = v28;
        v2 = v27;
        v12 = v34;
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v29, 51, v30, "AVE_HEVC_Encode", 7445, *(v248 + 56), *(v248 + 104648), *v247, *(v247 + 2));
      }

      else
      {
        v235 = *(v6 + 3);
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v20, 51, v21, "AVE_HEVC_Encode", 7445, v22, *(v248 + 104648), v23, v24);
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v248 + 108000) = PixelFormatType;
    if (!*(v248 + 104648))
    {
      v276 = *(v248 + 1440);
      v40 = AVE_PixelFmt_FindByType(PixelFormatType);
      if (!v40)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v65 = AVE_Log_CheckConsole(3u);
          v66 = AVE_GetCurrTime();
          v67 = AVE_Log_GetLevelStr(4);
          v68 = *(v248 + 56);
          if (v65)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v66, 3, v67, "AVE_HEVC_Encode", 7462, "pPixelFmt != __null", v248, *(v248 + 56), *(v248 + 108000));
            v69 = AVE_GetCurrTime();
            v70 = AVE_Log_GetLevelStr(4);
            v229 = *(v248 + 56);
            v231 = *(v248 + 108000);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v69, 3, v70);
          }

          else
          {
            v230 = *(v248 + 56);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v66, 3, v67);
          }
        }

        goto LABEL_70;
      }

      if (v242[420])
      {
        v41 = v242 + 420;
      }

      else
      {
        v41 = 0;
      }

      if (*(v248 + 104656))
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }

      AVE_Dump_Init(*(v248 + 104720), v41, *(v248 + 64), *(v248 + 10772), *(v242 + 103), *(v242 + 104), &v276, v42, *(v40 + 3), *(v40 + 1), *(v248 + 1136));
    }

    AVE_Dump_WriteInput(*(v248 + 104720), *(v248 + 104668), pixelBuffer);
    v43 = *v17;
    if (*v17 == 30566)
    {
      if (AVE_ISP_CheckMetadata(pixelBuffer))
      {
        v55 = 1;
      }

      else
      {
        v55 = 2;
      }

      *(v248 + 10804) = v55;
      v56 = AVE_ManageSessionSettings(v248);
      if (v56)
      {
        v51 = v56;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v57 = AVE_Log_CheckConsole(3u);
          v58 = AVE_GetCurrTime();
          v59 = AVE_Log_GetLevelStr(4);
          if (v57)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v58, 3, v59, "AVE_HEVC_Encode", 7571, "err == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed");
        }

        goto LABEL_172;
      }

      AVE_UpdateCropParams(v248, pixelBuffer);
      if (AVE_HEVC_VerifyImageBuffer(v248, &pixelBuffer, &v272, &v271, &v270 + 1, &v270, 1))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v74 = AVE_Log_CheckConsole(3u);
          v75 = AVE_GetCurrTime();
          v76 = AVE_Log_GetLevelStr(4);
          if (v74)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.\n", v75, 3, v76, "AVE_HEVC_Encode", 7581, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.");
        }

        goto LABEL_171;
      }

      AVE_SetEncoderBasedOnFirstFrame(v248, *(v248 + 10804) == 2);
      if (*(v248 + 10804) == 2 && (*(v248 + 1120) & 0x10) == 0)
      {
        v85 = *(v248 + 1112);
        if (v85 < 1)
        {
          v85 = 30;
        }

        v86 = vshr_n_u32(vadd_s32(*(v248 + 1440), 0xF0000000FLL), 4uLL);
        v87 = v86.i32[1] * v85 * v86.i32[0];
        if (*(v248 + 76) <= 29)
        {
          v88 = 1944000;
        }

        else
        {
          v88 = 2106000;
        }

        if (v87 >= v88)
        {
          *(v248 + 716) &= 0xFFFFFC3F;
          *(v248 + 11810) = 0;
        }
      }

      if (AVE_ValidateEncoderParameters(v248))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v89 = AVE_Log_CheckConsole(3u);
          v90 = AVE_GetCurrTime();
          v91 = AVE_Log_GetLevelStr(4);
          if (v89)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v90, 3, v91, "AVE_HEVC_Encode", 7609, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_171;
      }

      AVE_PrepareVideoAndSequenceHeader(v248, pixelBuffer);
      AVE_PreparePictureHeader(v248);
      bzero(v281, 0x8C8uLL);
      v276 = v248 + 672;
      v277 = v248 + 1440;
      v279 = *(v248 + 104712);
      v280 = *(v248 + 104728);
      v278 = v248 + 10752;
      v283 = v248 + 12000;
      v284 = v248 + 24236;
      v286 = v248 + 39844;
      v285 = v248 + 32040;
      v287 = v248 + 49476;
      v288 = v248 + 59112;
      v289 = v248 + 80600;
      memcpy(v290, (v248 + 106112), sizeof(v290));
      v291 = v18;
      if (AVE_USL_Drv_Start(*(v248 + 120), &v276, v248 + 128, *(v248 + 16), *(v248 + 112), *(v248 + 104652), *(v248 + 104656), v248 + 160, (v248 + 11772), (v248 + 11464)))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v92 = AVE_Log_CheckConsole(3u);
          v93 = AVE_GetCurrTime();
          v94 = AVE_Log_GetLevelStr(4);
          if (v92)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v93, 3, v94, "AVE_HEVC_Encode", 7637, "err == noErr");
            v95 = AVE_GetCurrTime();
            v220 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.", v95, 3, v220, "AVE_HEVC_Encode", 7637, "err == noErr");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.", v93, 3, v94, "AVE_HEVC_Encode", 7637, "err == noErr");
          }
        }

        v51 = 4294966296;
        goto LABEL_172;
      }
    }

    else if (v43 == 30567)
    {
      if (AVE_ISP_CheckMetadata(pixelBuffer))
      {
        v52 = 1;
      }

      else
      {
        v52 = 2;
      }

      *(v248 + 10804) = v52;
      AVE_UpdateCropParams(v248, pixelBuffer);
      if (AVE_HEVC_VerifyImageBuffer(v248, &pixelBuffer, &v272, &v271, &v270 + 1, &v270, 1))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v53 = AVE_Log_CheckConsole(3u);
          v45 = AVE_GetCurrTime();
          v46 = AVE_Log_GetLevelStr(4);
          if (!v53)
          {
            goto LABEL_69;
          }

          v47 = (v248 + 104644);
          v48 = v2;
          v49 = v12;
          v50 = 7499;
          goto LABEL_43;
        }

LABEL_70:
        v51 = 4294966294;
        goto LABEL_172;
      }

      AVE_SetEncoderBasedOnFirstFrame(v248, *(v248 + 10804) == 2);
      if (AVE_ValidateEncoderParameters(v248))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v71 = AVE_Log_CheckConsole(3u);
          v72 = AVE_GetCurrTime();
          v73 = AVE_Log_GetLevelStr(4);
          if (v71)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v72, 3, v73, "AVE_HEVC_Encode", 7509, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_70;
      }

      AVE_PrepareVideoAndSequenceHeader(v248, pixelBuffer);
      AVE_PreparePictureHeader(v248);
      if (*(v248 + 10804) == 2 && (*(v248 + 1120) & 0x10) == 0)
      {
        v77 = *(v248 + 1112);
        if (v77 < 1)
        {
          v77 = 30;
        }

        v78 = vshr_n_u32(vadd_s32(*(v248 + 1440), 0xF0000000FLL), 4uLL);
        v79 = v78.i32[1] * v77 * v78.i32[0];
        if (*(v248 + 76) <= 29)
        {
          v80 = 1944000;
        }

        else
        {
          v80 = 2106000;
        }

        if (v79 >= v80)
        {
          *(v248 + 716) &= 0xFFFFFC3F;
          *(v248 + 11810) = 0;
        }
      }

      bzero(v281, 0x8C8uLL);
      v276 = v248 + 672;
      v277 = v248 + 1440;
      v279 = *(v248 + 104712);
      v280 = *(v248 + 104728);
      v278 = v248 + 10752;
      v283 = v248 + 12000;
      v284 = v248 + 24236;
      v286 = v248 + 39844;
      v285 = v248 + 32040;
      v287 = v248 + 49476;
      v288 = v248 + 59112;
      v289 = v248 + 80600;
      memcpy(v290, (v248 + 106112), sizeof(v290));
      v291 = v18;
      if (AVE_USL_Drv_Start(*(v248 + 120), &v276, v248 + 128, *(v248 + 16), *(v248 + 112), *(v248 + 104652), *(v248 + 104656), v248 + 160, (v248 + 11772), (v248 + 11464)))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v81 = AVE_Log_CheckConsole(3u);
          v82 = AVE_GetCurrTime();
          v83 = AVE_Log_GetLevelStr(4);
          if (v81)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v82, 3, v83, "AVE_HEVC_Encode", 7556, "err == noErr");
            v84 = AVE_GetCurrTime();
            v219 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.", v84, 3, v219, "AVE_HEVC_Encode", 7556, "err == noErr");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.", v82, 3, v83, "AVE_HEVC_Encode", 7556, "err == noErr");
          }
        }

        v51 = 4294966296;
        goto LABEL_172;
      }
    }

    else
    {
      if (v43 != 30568)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v60 = AVE_Log_CheckConsole(3u);
          v61 = AVE_GetCurrTime();
          v62 = AVE_Log_GetLevelStr(4);
          v63 = *v17;
          if (v60)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v61, 3, v62, "AVE_HEVC_Encode", 7644, "false", *v17);
            v64 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            v226 = *v17;
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.", v64);
          }

          else
          {
            v227 = *v17;
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.", v61);
          }
        }

        goto LABEL_171;
      }

      if (AVE_HEVC_VerifyImageBuffer(v248, &pixelBuffer, &v272, &v271, &v270 + 1, &v270, 0))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v44 = AVE_Log_CheckConsole(3u);
          v45 = AVE_GetCurrTime();
          v46 = AVE_Log_GetLevelStr(4);
          if (!v44)
          {
LABEL_69:
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.");
            goto LABEL_70;
          }

          v47 = (v248 + 104644);
          v48 = v2;
          v49 = v12;
          v50 = 7482;
LABEL_43:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.\n", v45, 3, v46, "AVE_HEVC_Encode", v50, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          v54 = v49;
          v2 = v48;
          v17 = v47;
          v12 = v54;
          goto LABEL_69;
        }

        goto LABEL_70;
      }
    }

    *v17 = 30568;
    bzero(v275, 0x1738uLL);
    v249 = 0;
    v255 = 0u;
    v256 = 0u;
    v257 = 0u;
    v258 = 0u;
    memset(v259, 0, sizeof(v259));
    v260 = 0u;
    memset(v261, 0, sizeof(v261));
    v262 = 0u;
    v263 = 0u;
    v264 = 0u;
    v250 = 0u;
    v251 = 0u;
    memset(v252, 0, sizeof(v252));
    v253 = 0u;
    v254 = 0;
    bzero(&v276, 0x4A40uLL);
    v282[0] = -1;
    v241 = v12;
    if (v4)
    {
      Value = CFDictionaryGetValue(v4, @"ResetRCState");
      if (*(v248 + 76) == 27 && (*(v248 + 716) & 0x3C0) == 0)
      {
        v97 = CFDictionaryGetValue(v4, *MEMORY[0x29EDBCEE8]);
        if (v97 && AVE_Log_CheckLevel(0x10u, 6))
        {
          v239 = AVE_Log_CheckConsole(0x10u);
          v243 = AVE_GetCurrTime();
          v113 = AVE_Log_GetLevelStr(6);
          if (v239)
          {
            printf("%lld %d AVE %s: FIG: %p: use scaled source for LRME, %p\n", v243, 16, v113, *(v248 + 16), v97);
            v243 = AVE_GetCurrTime();
            v113 = AVE_Log_GetLevelStr(6);
          }

          syslog(3, "%lld %d AVE %s: FIG: %p: use scaled source for LRME, %p", v243, 16, v113, *(v248 + 16), v97);
        }
      }

      else
      {
        v97 = 0;
      }

      if (Value && CFEqual(Value, *MEMORY[0x29EDB8F00]))
      {
        v18 = AVE_GetCurrTime();
        v249 = v18;
        AVE_USL_Drv_Complete(*(v248 + 120), &v249);
      }
    }

    else
    {
      v97 = 0;
    }

    *&v259[1] = v268;
    v260 = v266;
    v98 = pixelBuffer;
    *&v255 = v241;
    *(&v255 + 1) = pixelBuffer;
    *&v256 = v97;
    v259[3] = v269;
    DWORD2(v263) = *(v248 + 104668);
    *&v261[1] = v265;
    *(&v262 + 1) = v275;
    *&v263 = v18;
    v261[0] = v267;
    *&v262 = &v276;
    if (*(v248 + 10804) != 2)
    {
      v103 = vshr_n_u32(vadd_s32(*(v248 + 1440), 0x1F0000001FLL), 5uLL);
      v104 = vmul_lane_s32(v103, v103, 1).u32[0];
      if (v104 >> 5 < 0xFF)
      {
        if (v104 < 0x7F8)
        {
          v105 = 0.39;
        }

        else
        {
          v105 = 0.58;
        }
      }

      else
      {
        v105 = 1.0;
      }

      v252[1].f64[1] = v105;
      DWORD2(v253) = 127;
      goto LABEL_130;
    }

    if (!v2)
    {
      AVE_FPS::Add(*(v248 + 104704), &v265);
      v98 = pixelBuffer;
    }

    AVE_ISP_GetMetadata(v98, &v250);
    AVE_Dump_WriteISPMetadata(*(v248 + 104720), *(v248 + 104668), *(v248 + 104648), &v250);
    if (*(v248 + 76) < 17 || (*(v248 + 716) & 0x3C0) == 0)
    {
LABEL_130:
      v261[3] = &v250;
      v12 = v241;
      if ((*(v248 + 1337) & 2) != 0 && *(v248 + 76) >= 4 && (*(v248 + 1112) - 1) <= 0x3B)
      {
        v106 = v248 + 104784;
        if (AVE_ANFD_GetInfo(v4, (v248 + 104784 + 648 * *(v248 + 106080))))
        {
          if (*(v248 + 1112) == 60)
          {
            v112 = *(v248 + 106084);
            if (v112 != -1 && v112 + 1 == *(v248 + 104648))
            {
              memcpy((*(&v262 + 1) + 152), (v106 + 648 * (*(v248 + 106080) == 0)), 0x288uLL);
            }
          }
        }

        else
        {
          memset(v274, 0, sizeof(v274));
          __dst = *(v248 + 104648);
          v222 = *(v106 + 648 * *(v248 + 106080));
          AVE_SNPrintf(v274, 32, "%llu %d %d", v107, v108, v109, v110, v111, *(v248 + 56));
          AVE_ANFD_PrintInfo((v106 + 648 * *(v248 + 106080)), 47, 6, v274, 0, v114, v115, v116);
          memcpy((*(&v262 + 1) + 152), (v106 + 648 * *(v248 + 106080)), 0x288uLL);
          if (*(v248 + 1112) == 60)
          {
            *(v248 + 106080) = *(v248 + 106080) == 0;
            *(v248 + 106084) = *(v248 + 104648);
          }

          v12 = v241;
        }
      }

      v117 = CMGetAttachment(pixelBuffer, *MEMORY[0x29EDBFF98], 0);
      if (v117)
      {
        AVE_SEI::SetISPMetadata(*(v248 + 104736), *(v248 + 104648), v117);
      }

      AVE_SEI::SetDriverVersion(*(v248 + 104736), *(v248 + 104648));
      AVE_SEI::SetSessionID(*(v248 + 104736), *(v248 + 104648), *(v248 + 56));
      AVE_SEI::SetExposureTime(*(v248 + 104736), *(v248 + 104648), *(v261[3] + 16));
      AVE_SEI::SetSNR(*(v248 + 104736), *(v248 + 104648), *v261[3]);
      AVE_SEI::SetLuxLevel(*(v248 + 104736), *(v248 + 104648), *(v261[3] + 68));
      AVE_SEI::SetPTS(*(v248 + 104736), *(v248 + 104648), *(v247 + 2), *v247);
      DWORD2(v264) = *(v248 + 104648);
      HIDWORD(v264) = v2;
      PerFrameData = AVE_GetPerFrameData(v248, v4, v275, &v276, &v255);
      if (!*(v248 + 11476))
      {
        AVE_UpdateSettingsBasedOnSNR(v248, v275, &v276, *v261[3]);
      }

      *(*(&v262 + 1) + 936) = *(*(&v262 + 1) + 936) & 0xFFFFF9FF | ((*(*(&v262 + 1) + 152) > 0) << 9) | ((*(*(&v262 + 1) + 800) > 0) << 10);
      if (*(v248 + 104668) && *(v248 + 104656) && AVE_MultipassDataFetch(v248, &v268))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v119 = AVE_Log_CheckConsole(3u);
          v120 = AVE_GetCurrTime();
          v121 = AVE_Log_GetLevelStr(4);
          if (v119)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_MultipassDataFetch failed.\n", v120, 3, v121, "AVE_HEVC_Encode", 8079, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_MultipassDataFetch failed.");
        }
      }

      else
      {
        DWORD2(v264) = *(v248 + 104648);
        HIDWORD(v264) = v2;
        if (v271)
        {
          v122 = pixelBuffer;
        }

        else
        {
          v122 = 0;
        }

        *(&v258 + 1) = v122;
        v123 = AVE_USL_Drv_Process(*(v248 + 120), &v255);
        if (!v123)
        {
          v51 = PerFrameData;
          goto LABEL_172;
        }

        if (v123 == -536870173)
        {
          v51 = PerFrameData;
          if (AVE_Log_CheckLevel(0x10u, 5))
          {
            v124 = AVE_Log_CheckConsole(0x10u);
            v125 = AVE_GetCurrTime();
            v126 = AVE_Log_GetLevelStr(5);
            if (v124)
            {
              printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v125, 16, v126);
              AVE_GetCurrTime();
              AVE_Log_GetLevelStr(5);
              v51 = PerFrameData;
            }

            syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame");
          }

          goto LABEL_172;
        }

        if (AVE_Log_CheckLevel(3u, 4))
        {
          v127 = AVE_Log_CheckConsole(3u);
          v128 = AVE_GetCurrTime();
          v129 = AVE_Log_GetLevelStr(4);
          if (v127)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v128, 3, v129, "AVE_HEVC_Encode", 8102, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.");
        }
      }

LABEL_171:
      v51 = 4294966296;
LABEL_172:
      if (v272 == 1 && pixelBuffer)
      {
        CVPixelBufferRelease(pixelBuffer);
      }

      ++v17[1];
      goto LABEL_176;
    }

    if (*(&v253 + 1) == 0x1FFFFFFFFLL && AVE_Log_CheckLevel(0x10u, 5))
    {
      v99 = AVE_Log_CheckConsole(0x10u);
      v100 = AVE_GetCurrTime();
      v101 = AVE_Log_GetLevelStr(5);
      if (v99)
      {
        printf("%lld %d AVE %s: FIG: MCTF Ban0Modulation Enabled, but Band0Strength is missing!\n", v100, 16, v101);
        v102 = AVE_GetCurrTime();
        v221 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: FIG: MCTF Ban0Modulation Enabled, but Band0Strength is missing!", v102, 16, v221);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: MCTF Ban0Modulation Enabled, but Band0Strength is missing!", v100, 16, v101);
      }
    }

    if (v252[0].f64[1] != 0.0 && *(&v251 + 1) != 0.0 && v252[0].f64[0] != 0.0)
    {
      v137 = AVE_DW_Get();
      v138 = v137[133];
      if (v138 > 0.0)
      {
        v139 = v137[134];
        if (v139 > 0.0)
        {
          v140 = vdupq_lane_s64(0x4170000000000000, 0);
          v140.f64[0] = *(&v251 + 1);
          v141 = vmulq_f64(*(v252 + 8), v140);
          v142 = v252[0].f64[0] * v141.f64[0] / v141.f64[1];
          if (v142 <= v138)
          {
            v149 = AVE_Log_CheckLevel(0x10u, 8);
            if (v142 >= v139)
            {
              if (v149)
              {
                v156 = AVE_Log_CheckConsole(0x10u);
                v244 = AVE_GetCurrTime();
                v157 = AVE_Log_GetLevelStr(8);
                v158 = *(v248 + 108008 + 4 * v2);
                v159 = ((v142 - v142) * 1000.0);
                if (v159 >= 0)
                {
                  v160 = ((v142 - v142) * 1000.0);
                }

                else
                {
                  v160 = -v159;
                }

                if (v156)
                {
                  printf("%lld %d AVE %s: MCTF with %d refs no change. overallgain: %d.%03d\n", v244, 16, v157, v158, v142, v160);
                  v161 = AVE_GetCurrTime();
                  v162 = AVE_Log_GetLevelStr(8);
                  syslog(3, "%lld %d AVE %s: MCTF with %d refs no change. overallgain: %d.%03d", v161, 16, v162, *(v248 + 108008 + 4 * v2), v142, v160);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: MCTF with %d refs no change. overallgain: %d.%03d", v244, 16, v157, v158, v142, v160);
                }
              }
            }

            else
            {
              if (v149)
              {
                v150 = AVE_Log_CheckConsole(0x10u);
                v151 = AVE_GetCurrTime();
                v152 = AVE_Log_GetLevelStr(8);
                v153 = ((v142 - v142) * 1000.0);
                if (v153 >= 0)
                {
                  v154 = ((v142 - v142) * 1000.0);
                }

                else
                {
                  v154 = -v153;
                }

                if (v150)
                {
                  printf("%lld %d AVE %s: MCTF with 1refs. overallgain: %d.%03d\n", v151, 16, v152, v142, v154);
                  v155 = AVE_GetCurrTime();
                  v224 = AVE_Log_GetLevelStr(8);
                  syslog(3, "%lld %d AVE %s: MCTF with 1refs. overallgain: %d.%03d", v155, 16, v224, v142, v154);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: MCTF with 1refs. overallgain: %d.%03d", v151, 16, v152, v142, v154);
                }
              }

              *(v248 + 4 * v2 + 108008) = 0;
            }
          }

          else
          {
            if (AVE_Log_CheckLevel(0x10u, 8))
            {
              v143 = AVE_Log_CheckConsole(0x10u);
              v144 = AVE_GetCurrTime();
              v145 = AVE_Log_GetLevelStr(8);
              v146 = ((v142 - v142) * 1000.0);
              if (v146 >= 0)
              {
                v147 = ((v142 - v142) * 1000.0);
              }

              else
              {
                v147 = -v146;
              }

              if (v143)
              {
                printf("%lld %d AVE %s: MCTF with 2refs. overallgain: %d.%03d\n", v144, 16, v145, v142, v147);
                v148 = AVE_GetCurrTime();
                v223 = AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: MCTF with 2refs. overallgain: %d.%03d", v148, 16, v223, v142, v147);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: MCTF with 2refs. overallgain: %d.%03d", v144, 16, v145, v142, v147);
              }
            }

            *(v248 + 4 * v2 + 108008) = 1;
          }
        }
      }
    }

    v163 = *(v248 + 76);
    if ((HIDWORD(v253) + 1) >= 2 && DWORD2(v253) != -1)
    {
      if (v163 >= 30 && SDWORD2(v253) >= 255)
      {
        if (AVE_Log_CheckLevel(0x10u, 5))
        {
          v164 = AVE_Log_CheckConsole(0x10u);
          v165 = AVE_GetCurrTime();
          v166 = AVE_Log_GetLevelStr(5);
          if (v164)
          {
            printf("%lld %d AVE %s: FIG:Unexpected MCTF DynSwitchOff detected: Band0ModEnabled:%d and Band0Strength:%d. Forcing MCTF On\n", v165, 16, v166, HIDWORD(v253), DWORD2(v253));
            v167 = AVE_GetCurrTime();
            v168 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: FIG:Unexpected MCTF DynSwitchOff detected: Band0ModEnabled:%d and Band0Strength:%d. Forcing MCTF On", v167, 16, v168, HIDWORD(v253), DWORD2(v253));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG:Unexpected MCTF DynSwitchOff detected: Band0ModEnabled:%d and Band0Strength:%d. Forcing MCTF On", v165, 16, v166, HIDWORD(v253), DWORD2(v253));
          }
        }

        DWORD2(v253) = 127;
      }

      goto LABEL_268;
    }

    if (v163 >= 30)
    {
      DWORD2(v253) = 127;
      *(v248 + v2 + 108004) = 1;
      goto LABEL_268;
    }

    v169 = v248 + 108004;
    v170 = *(v248 + 108004 + v2);
    if (v252[0].f64[1] == 0.0 || *(&v251 + 1) == 0.0 || v252[0].f64[0] == 0.0)
    {
      if (AVE_Log_CheckLevel(0x10u, 7))
      {
        v181 = AVE_Log_CheckConsole(0x10u);
        v182 = AVE_GetCurrTime();
        v183 = AVE_Log_GetLevelStr(7);
        v184 = *(v248 + 104648);
        if (v181)
        {
          printf("%lld %d AVE %s: FIG: F %d ISP meta data is missing!\n", v182, 16, v183, v184);
          v185 = AVE_GetCurrTime();
          v225 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: FIG: F %d ISP meta data is missing!", v185, 16, v225, *(v248 + 104648));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: F %d ISP meta data is missing!", v182, 16, v183, v184);
        }
      }

      DWORD2(v253) = 255;
      if ((*(v169 + v2) & 1) == 0)
      {
LABEL_268:
        if (*(v248 + 1112) < 1 || !HIDWORD(v253) || SDWORD2(v253) > 254)
        {
          goto LABEL_130;
        }

        v199 = *(v248 + 1440);
        v200 = *(v248 + 1444);
        Rt = AVE_FPS::GetRt(*(v248 + 104704));
        v202 = ((v200 + 31) >> 5) * ((v199 + 31) >> 5) * Rt;
        if (*(v248 + 76) <= 29)
        {
          v203 = 285600;
        }

        else
        {
          v203 = 530400;
        }

        if ((*(v248 + 1120) & 0x10) != 0)
        {
          if (v203 * 1.5 >= v202)
          {
LABEL_282:
            if ((*(v248 + 1451) & 2) != 0)
            {
              v209 = *(v248 + 10556) < 2u ? 2 : 3;
              v210 = v248 + 4 * v2;
              AVE_MCTF_AdjustStrength(&v250, *(v248 + 76), v209, (v210 + 108032), v282);
              if (AVE_Log_CheckLevel(0x10u, 8))
              {
                v211 = AVE_Log_CheckConsole(0x10u);
                v212 = AVE_GetCurrTime();
                v213 = AVE_Log_GetLevelStr(8);
                if (v211)
                {
                  printf("%lld %d AVE %s: %s:%d %p %lld PerFrameData.iDynamicStrength %d rangeIdx[%d] %d\n", v212, 16, v213, "AVE_HEVC_Encode", 7944, v248, *(v248 + 56), v282[0], v2, *(v210 + 108032));
                  v214 = AVE_GetCurrTime();
                  v215 = AVE_Log_GetLevelStr(8);
                  v232 = *(v210 + 108032);
                  v228 = *(v248 + 56);
                  syslog(3, "%lld %d AVE %s: %s:%d %p %lld PerFrameData.iDynamicStrength %d rangeIdx[%d] %d", v214, 16, v215);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %p %lld PerFrameData.iDynamicStrength %d rangeIdx[%d] %d", v212, 16, v213);
                }
              }
            }

            goto LABEL_130;
          }
        }

        else if (v202 <= v203)
        {
          goto LABEL_282;
        }

        if (AVE_Log_CheckLevel(0x10u, 5))
        {
          v204 = AVE_Log_CheckConsole(0x10u);
          v205 = AVE_GetCurrTime();
          v206 = AVE_Log_GetLevelStr(5);
          if (v204)
          {
            printf("%lld %d AVE %s: FIG: MCTF unsupported fps %d for %dx%d. VFR %d. Band0Mod %d, %d\n", v205, 16, v206, Rt, v199, v200, (*(v248 + 1120) >> 4) & 1, HIDWORD(v253), DWORD2(v253));
            v207 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(5);
            v208 = (*(v248 + 1120) >> 4) & 1;
            syslog(3, "%lld %d AVE %s: FIG: MCTF unsupported fps %d for %dx%d. VFR %d. Band0Mod %d, %d", v207, 16);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: MCTF unsupported fps %d for %dx%d. VFR %d. Band0Mod %d, %d", v205, 16);
          }
        }

        goto LABEL_282;
      }
    }

    else
    {
      v171 = AVE_DW_Get();
      v172 = vdupq_lane_s64(0x4170000000000000, 0);
      v172.f64[0] = *(&v251 + 1);
      v173 = vmulq_f64(*(v252 + 8), v172);
      v174 = v252[0].f64[0] * v173.f64[0] / v173.f64[1];
      if (*(v248 + 10556) < 2u)
      {
        v175 = 2;
      }

      else
      {
        v175 = 3;
      }

      v176 = AVE_MCTF_SupportAllLight(v253, *(v248 + 76), v175);
      v177 = 32.0;
      if (v176)
      {
        v177 = 0.1;
      }

      if (v171[132] > 0.0)
      {
        v177 = v171[132];
      }

      if (v174 >= v177)
      {
        DWORD2(v253) = 127;
        *(v169 + v2) = 1;
      }

      else
      {
        v178 = 24.0;
        if (v176)
        {
          v178 = 0.0;
        }

        v179 = *(v169 + v2) & (v174 >= v178);
        if ((*(v169 + v2) & (v174 >= v178)) != 0)
        {
          v180 = 127;
        }

        else
        {
          v180 = 255;
        }

        DWORD2(v253) = v180;
        *(v169 + v2) = v179;
        if (v179 != 1)
        {
          goto LABEL_268;
        }
      }
    }

    v186 = *(v248 + 1440);
    v187 = AVE_DW_Get();
    if ((*(v248 + 1120) & 0x10) != 0)
    {
      Slide = AVE_FPS::GetSlide(*(v248 + 104704));
    }

    else
    {
      Slide = *(v248 + 1112);
    }

    if (v170)
    {
      v189 = v187[270];
      v190 = v189 <= 0;
      v191 = 285600;
    }

    else
    {
      v189 = v187[271];
      v190 = v189 <= 0;
      v191 = 244800;
    }

    if (v190)
    {
      v192 = v191;
    }

    else
    {
      v192 = v189;
    }

    v193 = vshr_n_u32(vadd_s32(v186, 0x1F0000001FLL), 5uLL);
    v194 = vmul_lane_s32(v193, v193, 1).u32[0] * Slide;
    if (v194 > v192)
    {
      DWORD2(v253) = 255;
      *(v169 + v2) = 0;
    }

    if (AVE_Log_CheckLevel(0x10u, 8))
    {
      v195 = AVE_Log_CheckConsole(0x10u);
      v245 = AVE_GetCurrTime();
      v196 = AVE_Log_GetLevelStr(8);
      if (*(v169 + v2))
      {
        v197 = "Enable ";
      }

      else
      {
        v197 = "Disable";
      }

      v238 = v197;
      v240 = v196;
      TotalCnt = AVE_FPS::GetTotalCnt(*(v248 + 104704));
      v198 = AVE_FPS::GetRt(*(v248 + 104704));
      if (v195)
      {
        printf("%lld %d AVE %s: %s MCTF. frameRate: %d cnt %d (%.2f), pixel rate %d threshold %d (prev set: %d)\n", v245, 16, v240, v238, Slide, TotalCnt, v198, v194, v192, v170);
        v245 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
        *(v169 + v2);
        AVE_FPS::GetTotalCnt(*(v248 + 104704));
        AVE_FPS::GetRt(*(v248 + 104704));
      }

      syslog(3, "%lld %d AVE %s: %s MCTF. frameRate: %d cnt %d (%.2f), pixel rate %d threshold %d (prev set: %d)", v245, 16);
    }

    goto LABEL_268;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v35 = AVE_Log_CheckConsole(0xCu);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(4);
    if (v35)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p %d\n", v36, 12, v37, "AVE_HEVC_Encode", 7430, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null && idx >= 0", v248, v12, pixelBuffer, v246, v247, v6, v4, v2);
      v38 = AVE_GetCurrTime();
      v218 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p %d", v38, 12, v218, "AVE_HEVC_Encode", 7430, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null && idx >= 0", v248, v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p %d", v36, 12, v37, "AVE_HEVC_Encode", 7430, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null && idx >= 0", v248, v12);
    }
  }

  v51 = 4294966295;
LABEL_176:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v130 = AVE_Log_CheckConsole(0xCu);
    v131 = AVE_GetCurrTime();
    v132 = AVE_Log_GetLevelStr(7);
    if (v130)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d %d\n", v131, 12, v132, "AVE_HEVC_Encode", v248, v12, pixelBuffer, v246, v247, v6, v4, v2, v51);
      v133 = AVE_GetCurrTime();
      v134 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d %d", v133, 12, v134, "AVE_HEVC_Encode", v248, v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d %d", v131, 12, v132, "AVE_HEVC_Encode", v248, v12);
    }
  }

  v135 = *MEMORY[0x29EDCA608];
  return v51;
}

uint64_t AVE_HEVC_VerifyImageBuffer(uint64_t a1, CVPixelBufferRef *a2, _BYTE *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, int a7)
{
  v68 = 0;
  v14 = (a1 + 104628);
  v15 = a1 + 24306;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  HIDWORD(v62) = PixelFormatType;
  v17 = v14[365];
  if (!v17)
  {
    v17 = *(a1 + 1440);
  }

  v54 = v17;
  v18 = v14[366];
  if (!v18)
  {
    v18 = *(a1 + 1444);
  }

  v55 = v18;
  v19 = *(a1 + 10772);
  v56 = vrev64_s32(*(a1 + 64));
  v57 = *(a1 + 716);
  v58 = v19;
  v20 = *(a1 + 10892);
  v59 = *(a1 + 10752);
  v60 = v20;
  LODWORD(v62) = *(a1 + 10860);
  BYTE4(v62) = *(a1 + 692) > 0;
  DWORD2(v62) = *(a1 + 10804);
  HIBYTE(v68) = *(a1 + 76) > 11;
  if (*(v15 + 406) == 1)
  {
    v61 = *(v15 + 410);
  }

  if (v14[5] && *(a1 + 11972) != PixelFormatType)
  {
    v21 = *(a1 + 56);
    kdebug_trace();
    v22 = AVE_ImageBuf_Transfer(&v54, a2, (a1 + 104776), *(a1 + 11972));
    v23 = *(a1 + 56);
    v24 = v14[5];
    v25 = *(a1 + 11972);
    kdebug_trace();
    if (v22)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v26 = AVE_Log_CheckConsole(3u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v29 = *(a1 + 11972);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.\n", CurrTime, 3, LevelStr, "AVE_HEVC_VerifyImageBuffer", 4833, "err == noErr", *a2, HIDWORD(v62), *(a1 + 11972), v22);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v30 = *a2;
        }

        v51 = *(a1 + 11972);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", CurrTime, 3, LevelStr);
      }

      return v22;
    }

    *a4 = 1;
  }

  v22 = AVE_VerifyImageBuffer(&v54, a2, (a1 + 104768));
  if (v22)
  {
    return v22;
  }

  *a3 = v68;
  v32 = DWORD1(v66);
  *a5 = v66;
  *a6 = v32;
  if (*(a1 + 76) < 12)
  {
    *(a1 + 10522) = BYTE1(v68);
LABEL_21:
    v33 = BYTE2(v68);
    goto LABEL_22;
  }

  *(a1 + 10522) = BYTE1(v68);
  if (v54 == *(a1 + 1440) && v55 == *(a1 + 1444))
  {
    goto LABEL_21;
  }

  v33 = 1;
LABEL_22:
  *(a1 + 10850) = v33;
  v34 = DWORD1(v64);
  *(a1 + 10204) = (DWORD1(v64) & 0xFFFFFFFE) == 2;
  if (v34 == 3)
  {
    *(a1 + 10529) = BYTE12(v64);
  }

  if (v59 == 2)
  {
    *(a1 + 10864) = DWORD2(v66);
    *(a1 + 10868) = *(&v65 + 1);
    *(a1 + 10876) = vuzp2q_s32(vextq_s8(v67, v67, 4uLL), v67);
  }

  if (a7)
  {
    v35 = HIDWORD(v62);
    *(a1 + 10768) = HIDWORD(v62);
    if (*(a1 + 10752) != 2 && !v14[5])
    {
      v43 = *(v15 + 426) + 8;
      if (v43 <= *(v15 + 430) + 8)
      {
        v43 = *(v15 + 430) + 8;
      }

      updated = AVE_UpdatePixelBufferDict(*(a1 + 68), *(a1 + 64), *(a1 + 716), 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v43, *v14, v35, *(a1 + 16));
      if (updated)
      {
        v45 = updated;
        if (AVE_Log_CheckLevel(0x1Eu, 5))
        {
          v46 = AVE_Log_CheckConsole(0x1Eu);
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(5);
          if (v46)
          {
            printf("%lld %d AVE %s: %s:%d fail to update pixel buffer dictionary %p %lld %d %d\n", v47, 30, v48, "AVE_HEVC_VerifyImageBuffer", 4903, a1, *(a1 + 56), 0, v45);
            v47 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(5);
            v49 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d fail to update pixel buffer dictionary %p %lld %d %d", v47, 30);
        }
      }
    }

    v36 = DWORD2(v63);
    v37 = v63;
    *(v15 + 382) = DWORD2(v63);
    *(a1 + 10188) = v36;
    *(a1 + 10192) = v37;
    *(a1 + 10171) = DWORD1(v64) != 1;
    *(a1 + 10781) = 1;
    if (v37 == 10)
    {
      *(a1 + 12070) = 0;
      *v15 = 0;
    }

    if (v36 == 2)
    {
      *(a1 + 12071) = 1;
      *(v15 + 1) = 1;
    }

    else if (v36 == 3)
    {
      *(a1 + 12071) = 0;
      *(v15 + 1) = 0;
      if (*(a1 + 10892) == 37)
      {
        *(a1 + 10856) = 1;
        *(a1 + 1088) &= ~2uLL;
      }
    }
  }

  if (v14[5])
  {
    if (*(a1 + 11972) == HIDWORD(v62))
    {
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v38 = AVE_Log_CheckConsole(0xCu);
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        v41 = *(a1 + 11972);
        if (v38)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x\n", v39, 12, v40, "AVE_HEVC_VerifyImageBuffer", 4956, "false", *(a1 + 56), v14[5], *(a1 + 11972), HIDWORD(v62));
          v39 = AVE_GetCurrTime();
          v40 = AVE_Log_GetLevelStr(4);
          v42 = *(a1 + 56);
          v52 = *(a1 + 11972);
          v50 = v14[5];
        }

        else
        {
          v53 = *(a1 + 11972);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x", v39, 12, v40);
      }

      return 4294954394;
    }
  }

  else
  {
    v22 = 0;
    *(a1 + 11972) = HIDWORD(v62);
  }

  return v22;
}

void AVE_UpdateCropParams(uint64_t a1, __CVBuffer *a2)
{
  v4 = a1 + 23948;
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v5 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams\n", CurrTime, 12, LevelStr);
      v8 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", v8, 12, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", CurrTime, 12, LevelStr);
    }
  }

  if (*(v4 + 764))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    v10 = AVE_PixelFmt_FindByType(PixelFormatType);
    if (v10)
    {
      v11 = *(v10 + 3);
      *(v4 + 740) = v11;
    }

    else
    {
      v11 = *(v4 + 740);
    }

    v13 = v11 != 3 && v11 != 0;
    v14 = v11 == 1;
    v15 = *(v4 + 776);
    if (v15)
    {
      if (v11 == 1)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      v17 = ((v15 + v16 - 1) & ~v14) >> v14;
      *(v4 + 776) = v17;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v4 + 780);
    if (v18)
    {
      v19 = ((v18 + v14) & ~v14) >> v14;
      *(v4 + 780) = v19;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(v4 + 768);
    if (v20)
    {
      v20 = ((v20 + v13) & ~v13) >> v13;
      *(v4 + 768) = v20;
    }

    v21 = *(v4 + 772);
    if (v21)
    {
      v22 = ((v21 + v13) & ~v13) >> v13;
      *(v4 + 772) = v22;
    }

    else
    {
      v22 = 0;
    }

    if (*(a1 + 10896) || *(a1 + 10556) >= 2u)
    {
      *v4 = *(v4 + 764);
      *(v4 + 12) = v17;
      *(v4 + 16) = v19;
      *(v4 + 4) = v20;
      *(v4 + 8) = v22;
    }

    if (AVE_Log_CheckLevel(0x10u, 7))
    {
      v23 = AVE_Log_CheckConsole(0x10u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(7);
      v26 = *(v4 + 768);
      if (v23)
      {
        printf("%lld %d AVE %s: FIG: conf_win_top_offset = %d conf_win_bottom_offset %d conf_win_left_offset = %d conf_win_right_offset %d\n", v24, 16, v25, *(v4 + 776), *(v4 + 780), *(v4 + 768), *(v4 + 772));
        v24 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v27 = *(v4 + 776);
        v30 = *(v4 + 768);
        v32 = *(v4 + 772);
        v29 = *(v4 + 780);
      }

      else
      {
        v31 = *(v4 + 768);
      }

      syslog(3, "%lld %d AVE %s: FIG: conf_win_top_offset = %d conf_win_bottom_offset %d conf_win_left_offset = %d conf_win_right_offset %d", v24);
    }
  }
}

double AVE_SetEncoderBasedOnFirstFrame(uint64_t a1, int a2)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v5 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame\n", CurrTime, 12, LevelStr);
      v8 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", v8, 12, v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", CurrTime, 12, LevelStr);
    }
  }

  v9 = *(a1 + 10892);
  v11 = v9 <= 0x25 && ((1 << v9) & 0x2000100002) != 0 || v9 == 10000;
  if (!v11 && *(a1 + 692) == 1 && a2 && *(a1 + 10752) != 2 && *(a1 + 10847) == 1)
  {
    *(a1 + 12000) = 0;
    *(a1 + 24684) = 0;
    *(a1 + 10208) = 0x100000000;
    *(a1 + 10244) = 2;
    *&result = 0x900000001;
    *(a1 + 10808) = 0x900000001;
    *(a1 + 24856) = 1;
  }

  return result;
}

uint64_t AVE_ValidateEncoderParameters(uint64_t a1)
{
  v2 = a1 + 104628;
  v3 = AVE_DW_Get();
  v558 = 0;
  v557 = 0.0;
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters\n", CurrTime, 12, LevelStr);
      v7 = AVE_GetCurrTime();
      v463 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", v7, 12, v463);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", CurrTime, 12, LevelStr);
    }
  }

  v8 = *(v2 + 1756);
  if (v8 >= 0.0 && AVE_HEVC_SetCQFactor(a1, v8) && AVE_Log_CheckLevel(0x10u, 5))
  {
    v9 = AVE_Log_CheckConsole(0x10u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(5);
    if (v9)
    {
      printf("%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]\n", v10, 16, v11);
      v12 = AVE_GetCurrTime();
      v464 = AVE_Log_GetLevelStr(5);
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v12, 16, v464);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v10, 16, v11);
    }
  }

  v13 = *(v2 + 1748);
  if (v13 >= 0.0 && AVE_HEVC_SetQuality(a1, v13) && AVE_Log_CheckLevel(0x10u, 5))
  {
    v14 = AVE_Log_CheckConsole(0x10u);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(5);
    if (v14)
    {
      printf("%lld %d AVE %s: kVTCompressionPropertyKey_Quality property supports values only                          in the range of [0,1]\n", v15, 16, v16);
      v17 = AVE_GetCurrTime();
      v465 = AVE_Log_GetLevelStr(5);
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_Quality property supports values only                          in the range of [0,1]", v17, 16, v465);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_Quality property supports values only                          in the range of [0,1]", v15, 16, v16);
    }
  }

  if ((*(a1 + 1132) & 0xFFFFFFFE) == 6)
  {
    v18 = AVE_RC_DecideVBVMaxBitRate(*(v3 + 206), *(v2 + 1728), &v558);
    if (v18)
    {
      v19 = v18;
      if (AVE_Log_CheckLevel(0x10u, 4))
      {
        v20 = AVE_Log_CheckConsole(0x10u);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v23 = *(v3 + 206);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d\n", v21, 16, v22, "AVE_ValidateEncoderParameters", 3088, "ret == 0", a1, *(a1 + 56), *(v3 + 206), *(v2 + 1728));
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 56);
          v536 = *(v3 + 206);
          v542 = *(v2 + 1728);
        }

        else
        {
          v539 = *(v3 + 206);
          v545 = *(v2 + 1728);
          v530 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d", v21, 16, v22);
      }

      return v19;
    }

    *(a1 + 1208) = v558;
  }

  v25 = (v2 + 3060);
  v26 = (v2 + 1732);
  v27 = AVE_RC_DecideVBVBufferSize(v3[104], *(v2 + 3060), *(v2 + 1732), *(a1 + 1120), &v557);
  if (v27)
  {
    v19 = v27;
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v28 = AVE_Log_CheckConsole(0x10u);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      v31 = *(a1 + 1120);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx\n", v29, 16, v30, "AVE_ValidateEncoderParameters", 3099, "ret == 0", a1, *(a1 + 56), v3[104], *v25, *v26, *(a1 + 1120));
        v29 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        v32 = *v25;
      }

      v549 = *(a1 + 1120);
      v543 = *v25;
      v547 = *v26;
      v537 = *(v3 + 104);
      v528 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx", v29, 16, v30);
    }

    return v19;
  }

  v33 = v557;
  *(a1 + 1216) = v557;
  v34 = (v2 + 3068);
  v35 = (v2 + 1740);
  v36 = AVE_RC_DecideVBVInitialDelay(v3[105], *(v2 + 3068), *(v2 + 1740), v33, *(a1 + 1120), &v557);
  if (v36)
  {
    v19 = v36;
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v37 = AVE_Log_CheckConsole(0x10u);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      v40 = *(a1 + 1120);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx\n", v38, 16, v39, "AVE_ValidateEncoderParameters", 3112, "ret == 0", a1, *(a1 + 56), v3[105], *v34, *v35, *(a1 + 1216), *(a1 + 1120));
        v38 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(4);
        v41 = *(v3 + 105);
        v42 = *v35;
      }

      v551 = *(a1 + 1120);
      v548 = *v35;
      v550 = *(a1 + 1216);
      v538 = *(v3 + 105);
      v544 = *v34;
      v529 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx", v38, 16, v39);
    }

    return v19;
  }

  v43 = (a1 + 10168);
  *(a1 + 1224) = v557;
  if (*(v2 + 1984) <= 0 && *(a1 + 11460) >= *(a1 + 1112))
  {
    *(a1 + 11460) = 0;
    *(a1 + 1288) = 1;
  }

  v44 = *(a1 + 76);
  if (v44 >= 30)
  {
    if (*(a1 + 10248) == 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v45 = AVE_Log_CheckConsole(3u);
        v46 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
        if (v45)
        {
          printf("%lld %d AVE %s: %s:%d %s | current SoC doesn't support SliceEncodingMode. Fail.\n", v46, 3, v47, "AVE_ValidateEncoderParameters", 3129, "!pINS->VideoParams.bSliceEncodingMode");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | current SoC doesn't support SliceEncodingMode. Fail.");
      }

      return 4294966295;
    }

    if ((*(a1 + 1336) & 0x40) == 0 || (*(a1 + 1464) & 0x8000030) == 0)
    {
LABEL_55:
      if (*(a1 + 10752) != 2 && !*(v2 + 28) && *(v2 + 1772))
      {
        goto LABEL_62;
      }

      goto LABEL_57;
    }

    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v49 = AVE_Log_CheckConsole(0x10u);
      v50 = AVE_GetCurrTime();
      v51 = AVE_Log_GetLevelStr(5);
      v52 = *(a1 + 1464);
      if (v49)
      {
        printf("%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA. with Stats Enabled:0x%x\n", v50, 16, v51, "AVE_ValidateEncoderParameters", 3138, v52);
        v53 = AVE_GetCurrTime();
        v54 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA. with Stats Enabled:0x%x", v53, 16, v54, "AVE_ValidateEncoderParameters", 3138, *(a1 + 1464));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA. with Stats Enabled:0x%x", v50, 16, v51, "AVE_ValidateEncoderParameters", 3138, v52);
      }
    }

    *(a1 + 1336) &= ~0x40u;
    v44 = *(a1 + 76);
  }

  if (v44 >= 17)
  {
    goto LABEL_55;
  }

LABEL_57:
  *(a1 + 716) &= 0xFFFFFC3F;
  *(a1 + 11810) = 0;
  if (*(v2 + 28) && AVE_Log_CheckLevel(0x10u, 5))
  {
    v55 = AVE_Log_CheckConsole(0x10u);
    v56 = AVE_GetCurrTime();
    v57 = AVE_Log_GetLevelStr(5);
    if (v55)
    {
      printf("%lld %d AVE %s: FIG: MCTF is not supported for Multipass\n", v56, 16, v57);
      v58 = AVE_GetCurrTime();
      v466 = AVE_Log_GetLevelStr(5);
      syslog(3, "%lld %d AVE %s: FIG: MCTF is not supported for Multipass", v58, 16, v466);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: MCTF is not supported for Multipass", v56, 16, v57);
    }
  }

LABEL_62:
  if (*(v2 + 1952) >= 1 && *(v2 + 1956) >= 1)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v59 = AVE_Log_CheckConsole(3u);
      v60 = AVE_GetCurrTime();
      v61 = AVE_Log_GetLevelStr(4);
      v62 = *(v2 + 1952);
      if (v59)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: pPropertyCfg->iEncodesDepth = %d and pPropertyCfg->iEncodesDisparity = %d -> fail.\n", v60, 3, v61, "AVE_ValidateEncoderParameters", 3177, "false", *(v2 + 1952), *(v2 + 1956));
        v60 = AVE_GetCurrTime();
        v61 = AVE_Log_GetLevelStr(4);
      }

      v508 = *(v2 + 1952);
      v527 = *(v2 + 1956);
      v493 = 3177;
      v494 = "false";
      v467 = v61;
      v63 = "%lld %d AVE %s: %s:%d %s | FIG: pPropertyCfg->iEncodesDepth = %d and pPropertyCfg->iEncodesDisparity = %d -> fail.";
      goto LABEL_157;
    }

    return 4294966295;
  }

  v64 = a1 + 59393;
  v65 = (a1 + 31173);
  v66 = *(a1 + 1336);
  if ((v66 & 0x4000000) != 0)
  {
    *(a1 + 1120) &= ~0x200000000uLL;
    *(a1 + 1356) &= ~2u;
    *(a1 + 1448) &= ~0x10000000uLL;
    *(a1 + 1352) &= 0x1Eu;
    *(a1 + 1336) = v66 & 0xF6FF7E8D;
    *(a1 + 10788) = 0;
    *v65 = 0;
    *v64 = 0;
    *(a1 + 42028) = 0;
    *(a1 + 60062) = 0;
    if (*(a1 + 1344) <= -13)
    {
      *(a1 + 1344) = -6 * *(a1 + 24732);
    }

    if (*(a1 + 1348) <= -13)
    {
      *(a1 + 1348) = 48;
    }

    if (*(a1 + 1232) <= -13)
    {
      *(a1 + 1232) = -6 * *(a1 + 24732);
    }

    if (*(a1 + 1236) <= -13)
    {
      *(a1 + 1236) = 48;
    }
  }

  v67 = *(a1 + 1132);
  if (v67 == 4)
  {
    if (*(v2 + 28))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v72 = AVE_Log_CheckConsole(3u);
        v73 = AVE_GetCurrTime();
        v74 = AVE_Log_GetLevelStr(4);
        if (v72)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail\n", v73, 3, v74, "AVE_ValidateEncoderParameters", 3241, "false", *(a1 + 10892));
          v73 = AVE_GetCurrTime();
          v74 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail", v73, 3, v74, "AVE_ValidateEncoderParameters", 3241, "false", *(a1 + 10892));
      }

      return 4294966296;
    }
  }

  else if (v67 == 20 && *(a1 + 10892) != 1)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v68 = AVE_Log_CheckConsole(3u);
      v69 = AVE_GetCurrTime();
      v70 = AVE_Log_GetLevelStr(4);
      v71 = *(a1 + 10892);
      if (v68)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Usage mode %d does not support eRCMode = 0x%x. Fail.\n", v69, 3, v70, "AVE_ValidateEncoderParameters", 3232, "false", *(a1 + 10892), *(a1 + 1132));
        v69 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      v509 = *(a1 + 10892);
      v531 = *(a1 + 1132);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Usage mode %d does not support eRCMode = 0x%x. Fail.", v69);
    }

    return 4294966295;
  }

  if ((*(v2 + 1916) & 0x80000000) != 0)
  {
    v75 = *(a1 + 10892);
    if (v75 <= 0x26 && ((1 << v75) & 0x4000100002) != 0)
    {
      if (*(a1 + 76) <= 29)
      {
        v76 = 0;
      }

      else
      {
        v76 = 3;
      }

      *v43 = v76;
    }
  }

  v77 = *(a1 + 1120);
  if ((v77 & 0x80000000) == 0)
  {
    v78 = *(a1 + 1256);
    goto LABEL_103;
  }

  *(a1 + 1120) = v77 | 4;
  v78 = *(a1 + 1256);
  if (v78 == 2)
  {
    v78 = 3;
    *(a1 + 1256) = 3;
  }

  if (v67 == 4)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v79 = AVE_Log_CheckConsole(3u);
      v80 = AVE_GetCurrTime();
      v81 = AVE_Log_GetLevelStr(4);
      if (v79)
      {
        printf("%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature\n", v80, 3, v81, "AVE_ValidateEncoderParameters", 3275, "false");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature");
    }

    return 4294966296;
  }

LABEL_103:
  if (v78 >= 4)
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v82 = AVE_Log_CheckConsole(0x10u);
      v83 = AVE_GetCurrTime();
      v84 = AVE_Log_GetLevelStr(5);
      v85 = *(a1 + 1256);
      if (v82)
      {
        printf("%lld %d AVE %s: %s:%d too many B frames (%d) max is %d. -> will gracefully default to the internal max!\n", v83, 16, v84, "AVE_ValidateEncoderParameters", 3289, *(a1 + 1256), 3);
        v83 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(5);
      }

      v495 = *(a1 + 1256);
      syslog(3, "%lld %d AVE %s: %s:%d too many B frames (%d) max is %d. -> will gracefully default to the internal max!", v83);
    }

    v78 = 3;
    *(a1 + 1256) = 3;
  }

  v86 = *(a1 + 1240);
  if (*(a1 + 76) >= 4)
  {
    if ((v86 & 0x400) == 0)
    {
      goto LABEL_127;
    }

    if (v78)
    {
      *(a1 + 10520) = 1;
      goto LABEL_127;
    }

    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v87 = AVE_Log_CheckConsole(0x10u);
      v88 = AVE_GetCurrTime();
      v89 = AVE_Log_GetLevelStr(5);
      if (v87)
      {
        printf("%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB\n", v88, 16, v89);
        v90 = AVE_GetCurrTime();
        v468 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB", v90, 16, v468);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB", v88, 16, v89);
      }
    }

    v86 = *(a1 + 1240);
  }

  *(a1 + 1240) = v86 & 0xFFFFFBFF;
LABEL_127:
  v91 = *(a1 + 10252);
  if (v91 >= 33)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v95 = AVE_Log_CheckConsole(3u);
      v60 = AVE_GetCurrTime();
      v96 = AVE_Log_GetLevelStr(4);
      v97 = *(v43 + 21);
      if (v95)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: too many slices (%d) max is %d for now (can be changed)\n", v60, 3, v96, "AVE_ValidateEncoderParameters", 3330, "pINS->VideoParams.sSliceMap.iNum <= ((32) < (256) ? (32) : (256))", *(v43 + 21), 32);
        v60 = AVE_GetCurrTime();
        v96 = AVE_Log_GetLevelStr(4);
      }

      v508 = *(v43 + 21);
      v527 = 32;
      v493 = 3330;
      v494 = "pINS->VideoParams.sSliceMap.iNum <= ((32) < (256) ? (32) : (256))";
      v467 = v96;
      v63 = "%lld %d AVE %s: %s:%d %s | FIG: too many slices (%d) max is %d for now (can be changed)";
      goto LABEL_157;
    }

    return 4294966295;
  }

  if (!v91)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v99 = AVE_Log_CheckConsole(3u);
      v60 = AVE_GetCurrTime();
      v100 = AVE_Log_GetLevelStr(4);
      if (v99)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Slices Per Frame = %d\n", v60, 3, v100, "AVE_ValidateEncoderParameters", 3331, "pINS->VideoParams.sSliceMap.iNum != 0", *(v43 + 21));
        v60 = AVE_GetCurrTime();
        v100 = AVE_Log_GetLevelStr(4);
        v494 = "pINS->VideoParams.sSliceMap.iNum != 0";
        v508 = *(v43 + 21);
        v493 = 3331;
      }

      else
      {
        v508 = *(v43 + 21);
        v493 = 3331;
        v494 = "pINS->VideoParams.sSliceMap.iNum != 0";
      }

      v467 = v100;
      v63 = "%lld %d AVE %s: %s:%d %s | FIG: Slices Per Frame = %d";
LABEL_157:
      syslog(3, v63, v60, 3, v467, "AVE_ValidateEncoderParameters", v493, v494, v508, v527);
    }

    return 4294966295;
  }

  if (*v2 <= 9u && ((1 << *v2) & 0x24A) != 0 && *(a1 + 10782) == 1 && *(a1 + 24732) >= 2u)
  {
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v92 = AVE_Log_CheckConsole(0x10u);
      v93 = AVE_GetCurrTime();
      v94 = AVE_Log_GetLevelStr(4);
      if (v92)
      {
        printf("%lld %d AVE %s: %s:%d %s | Unable to set bitdepth 10 for HEVC Profile that only supports bitdepth 8\n", v93, 16, v94, "AVE_ValidateEncoderParameters", 3342, "false");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Unable to set bitdepth 10 for HEVC Profile that only supports bitdepth 8");
    }

    return 4294966295;
  }

  if (*(a1 + 24264) <= 1u)
  {
    if (*(a1 + 10782) == 1)
    {
      v98 = *(a1 + 24732) + 8;
    }

    else
    {
      v98 = *(a1 + 10192);
    }

    v101 = *(a1 + 24688);
    if (v101)
    {
      if (v101 == 3)
      {
        if (AVE_Log_CheckLevel(0x10u, 6))
        {
          v106 = AVE_Log_CheckConsole(0x10u);
          v552 = AVE_GetCurrTime();
          v107 = AVE_Log_GetLevelStr(6);
          v108 = *(a1 + 12028);
          if (v106)
          {
            printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v552, 16, v107, "AVE_ValidateEncoderParameters", 3374, *(a1 + 12028), 9);
            v109 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
            v497 = *(a1 + 12028);
            syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v109);
          }

          else
          {
            v499 = *(a1 + 12028);
            syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v552);
          }
        }

        if (v98 == 10)
        {
          v114 = 10;
        }

        else
        {
          v114 = 9;
        }

        goto LABEL_185;
      }

      if (v101 == 2)
      {
        if (AVE_Log_CheckLevel(0x10u, 6))
        {
          v102 = AVE_Log_CheckConsole(0x10u);
          v103 = AVE_GetCurrTime();
          v104 = AVE_Log_GetLevelStr(6);
          v105 = *(a1 + 12028);
          if (v102)
          {
            printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v103, 16, v104, "AVE_ValidateEncoderParameters", 3366, *(a1 + 12028), 8);
            v103 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
          }

          v496 = *(a1 + 12028);
          syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v103);
        }

        v114 = 8;
LABEL_185:
        *(a1 + 24264) = v114;
        *(a1 + 12028) = v114;
        goto LABEL_186;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x10u, 6))
      {
        v110 = AVE_Log_CheckConsole(0x10u);
        v553 = AVE_GetCurrTime();
        v111 = AVE_Log_GetLevelStr(6);
        v112 = *(a1 + 12028);
        if (v98 == 10)
        {
          v113 = 7;
        }

        else
        {
          v113 = 6;
        }

        if (v110)
        {
          printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v553, 16, v111, "AVE_ValidateEncoderParameters", 3383, *(a1 + 12028), v113);
          v553 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(6);
        }

        v498 = *(a1 + 12028);
        syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v553);
      }

      if (v98 == 10)
      {
        v115 = 7;
      }

      else
      {
        v115 = 6;
      }

      *(a1 + 24264) = v115;
      *(a1 + 12028) = v115;
    }

    if (AVE_Log_CheckLevel(0x10u, 6))
    {
      v116 = AVE_Log_CheckConsole(0x10u);
      v117 = AVE_GetCurrTime();
      v118 = AVE_Log_GetLevelStr(6);
      v119 = *(a1 + 24688);
      if (v116)
      {
        printf("%lld %d AVE %s: %s:%d chroma format idc %d profile %d\n", v117, 16, v118, "AVE_ValidateEncoderParameters", 3391, *(a1 + 24688), *(a1 + 12028));
        v117 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
        v500 = *(a1 + 24688);
        v510 = *(a1 + 12028);
      }

      else
      {
        v501 = *(a1 + 24688);
      }

      syslog(3, "%lld %d AVE %s: %s:%d chroma format idc %d profile %d", v117);
    }
  }

LABEL_186:
  if (*(a1 + 1308) >= 2)
  {
    v120 = *(a1 + 10892);
    if (v120 == 20 || v120 == 10000 || v120 == 37)
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v121 = AVE_Log_CheckConsole(0x10u);
        v122 = AVE_GetCurrTime();
        v123 = AVE_Log_GetLevelStr(5);
        v124 = *(a1 + 10892);
        v125 = *(a1 + 1308);
        if (v121)
        {
          printf("%lld %d AVE %s: FIG: usageMode = %d and Reference Number of P %d -> 1\n", v122, 16, v123, *(a1 + 10892), v125);
          v126 = AVE_GetCurrTime();
          v127 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and Reference Number of P %d -> 1", v126, 16, v127, *(a1 + 10892), *(a1 + 1308));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and Reference Number of P %d -> 1", v122, 16, v123, *(a1 + 10892), v125);
        }
      }

      *(a1 + 1308) = 1;
    }
  }

  if (*(a1 + 10854) == 1)
  {
    *(a1 + 1240) &= ~0x400u;
  }

  if (*(a1 + 39959) == 1)
  {
    v128 = *(a1 + 10892);
    if (v128 <= 0x25 && ((1 << v128) & 0x2000100002) != 0 || v128 == 10000)
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v129 = AVE_Log_CheckConsole(0x10u);
        v130 = AVE_GetCurrTime();
        v131 = AVE_Log_GetLevelStr(5);
        v132 = *(a1 + 10892);
        if (v129)
        {
          printf("%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.\n", v130, 16, v131, v132);
          v133 = AVE_GetCurrTime();
          v469 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.", v133, 16, v469, *(a1 + 10892));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.", v130, 16, v131, v132);
        }
      }

      *(a1 + 39959) = 0;
    }

    if (*(a1 + 1132) != 3)
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v134 = AVE_Log_CheckConsole(0x10u);
        v135 = AVE_GetCurrTime();
        v136 = AVE_Log_GetLevelStr(5);
        v137 = *(a1 + 1132);
        if (v134)
        {
          printf("%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.\n", v135, 16, v136, v137);
          v138 = AVE_GetCurrTime();
          v470 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.", v138, 16, v470, *(a1 + 1132));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.", v135, 16, v136, v137);
        }
      }

      *(a1 + 1132) = 3;
    }

    if (*(a1 + 1336))
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v139 = AVE_Log_CheckConsole(0x10u);
        v140 = AVE_GetCurrTime();
        v141 = AVE_Log_GetLevelStr(5);
        v142 = *(a1 + 1336);
        if (v139)
        {
          printf("%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0. (Set cu_qp_delta_enabled_flag to false)\n", v140, 16, v141, "AVE_ValidateEncoderParameters", 3453, v142);
          v143 = AVE_GetCurrTime();
          v144 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0. (Set cu_qp_delta_enabled_flag to false)", v143, 16, v144, "AVE_ValidateEncoderParameters", 3453, *(a1 + 1336));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0. (Set cu_qp_delta_enabled_flag to false)", v140, 16, v141, "AVE_ValidateEncoderParameters", 3453, v142);
        }
      }

      *(a1 + 1336) = 0;
      *(a1 + 39886) = 0;
    }

    if ((*(a1 + 1352) & 0x1E) != 0)
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v145 = AVE_Log_CheckConsole(0x10u);
        v146 = AVE_GetCurrTime();
        v147 = AVE_Log_GetLevelStr(5);
        v148 = *(a1 + 1352);
        if (v145)
        {
          printf("%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0\n", v146, 16, v147, v148);
          v149 = AVE_GetCurrTime();
          v471 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0", v149, 16, v471, *(a1 + 1352));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0", v146, 16, v147, v148);
        }
      }

      *(a1 + 1352) = 0;
    }

    v150 = -6 * *(a1 + 24732);
    *(a1 + 1348) = v150;
    *(a1 + 1344) = v150;
    *(a1 + 1152) = v150;
    *(a1 + 1148) = v150;
    *(a1 + 1144) = v150;
    *(a1 + 1232) = *(a1 + 1344);
    if (*(a1 + 1464))
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v151 = AVE_Log_CheckConsole(0x10u);
        v152 = AVE_GetCurrTime();
        v153 = AVE_Log_GetLevelStr(5);
        v154 = *(a1 + 1464);
        if (v151)
        {
          printf("%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.\n", v152, 16, v153, v154);
          v155 = AVE_GetCurrTime();
          v472 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.", v155, 16, v472, *(a1 + 1464));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.", v152, 16, v153, v154);
        }
      }

      *(a1 + 1464) = 0;
    }

    if ((*(a1 + 1336) & 0x40) != 0)
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v156 = AVE_Log_CheckConsole(0x10u);
        v157 = AVE_GetCurrTime();
        v158 = AVE_Log_GetLevelStr(5);
        v159 = *(a1 + 1336);
        if (v156)
        {
          printf("%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.\n", v157, 16, v158, v159);
          v160 = AVE_GetCurrTime();
          v473 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.", v160, 16, v473, *(a1 + 1336));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.", v157, 16, v158, v159);
        }
      }

      *(a1 + 1336) &= ~0x40u;
    }

    *(a1 + 42028) = 1;
    *(a1 + 60062) = 1;
    *v65 = 0;
    *v64 = 0;
  }

  if (*(a1 + 1256))
  {
    v161 = *(a1 + 11460);
    if (*(v2 + 1836) <= 0)
    {
      if (v161 < 1)
      {
        goto LABEL_248;
      }
    }

    else if (v161 < 1 || v161 < *(a1 + 1112))
    {
      goto LABEL_248;
    }

    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v162 = AVE_Log_CheckConsole(0x10u);
      v163 = AVE_GetCurrTime();
      v164 = AVE_Log_GetLevelStr(5);
      v165 = *(a1 + 1256);
      if (v162)
      {
        printf("%lld %d AVE %s: %s:%d BFrames = %d and iAverageNonDroppableFrameRate is true. not supported yet, gracefully set it to false.\n", v163, 16, v164, "AVE_ValidateEncoderParameters", 3513, v165);
        v166 = AVE_GetCurrTime();
        v167 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: %s:%d BFrames = %d and iAverageNonDroppableFrameRate is true. not supported yet, gracefully set it to false.", v166, 16, v167, "AVE_ValidateEncoderParameters", 3513, *(a1 + 1256));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d BFrames = %d and iAverageNonDroppableFrameRate is true. not supported yet, gracefully set it to false.", v163, 16, v164, "AVE_ValidateEncoderParameters", 3513, v165);
      }
    }

    *(a1 + 11460) = 0;
  }

LABEL_248:
  if (!*(a1 + 1336))
  {
    *(a1 + 39886) = 0;
  }

  if (*(a1 + 1232) <= -13)
  {
    *(a1 + 1232) = -6 * *(a1 + 24732);
  }

  if (*(a1 + 1236) <= -13)
  {
    if (*(a1 + 1132) == 20)
    {
      v168 = 51;
    }

    else
    {
      v168 = 48;
    }

    *(a1 + 1236) = v168;
  }

  if (*(a1 + 1344) <= -13)
  {
    *(a1 + 1344) = -6 * *(a1 + 24732);
  }

  v169 = (a1 + 1344);
  if (*(a1 + 1348) <= -13)
  {
    if (*(a1 + 1132) == 20)
    {
      v170 = 51;
    }

    else
    {
      v170 = 48;
    }

    *(a1 + 1348) = v170;
  }

  if (AVE_CheckQPRange((a1 + 1344), *(a1 + 24732) + 8))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v171 = AVE_Log_CheckConsole(3u);
      v172 = AVE_GetCurrTime();
      v173 = AVE_Log_GetLevelStr(4);
      v174 = *(a1 + 1344);
      if (v171)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]\n", v172, 3, v173, "AVE_ValidateEncoderParameters", 3553, "false", *(a1 + 1344), *(a1 + 1348));
        v172 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      v511 = *(a1 + 1344);
      v532 = *(a1 + 1348);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]", v172);
    }

    return 4294966295;
  }

  v175 = (a1 + 1232);
  if (AVE_CheckQPRange((a1 + 1232), *(a1 + 24732) + 8))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v176 = AVE_Log_CheckConsole(3u);
      v177 = AVE_GetCurrTime();
      v178 = AVE_Log_GetLevelStr(4);
      v179 = *(a1 + 1232);
      if (v176)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect RCQPRange [%d %d]\n", v177, 3, v178, "AVE_ValidateEncoderParameters", 3561, "false", *(a1 + 1232), *(a1 + 1236));
        v177 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      v512 = *(a1 + 1232);
      v533 = *(a1 + 1236);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Incorrect RCQPRange [%d %d]", v177);
    }

    return 4294966295;
  }

  if (*v175 < *v169)
  {
    *v175 = *v169;
  }

  v180 = *(a1 + 1348);
  if (*(a1 + 1236) > v180)
  {
    *(a1 + 1236) = v180;
  }

  v181 = *(a1 + 1132);
  if (*(a1 + 10764) == 1)
  {
    if (v181 != 20)
    {
      goto LABEL_297;
    }

    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v182 = AVE_Log_CheckConsole(0x10u);
      v183 = AVE_GetCurrTime();
      v184 = AVE_Log_GetLevelStr(5);
      v185 = *(a1 + 1132);
      if (v182)
      {
        printf("%lld %d AVE %s: FIG: eRCMode 0x%x bUseAsyncFWScheduling = true -> not supported. set bUseAsyncFWScheduling to false\n", v183, 16, v184, v185);
        v186 = AVE_GetCurrTime();
        v474 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: FIG: eRCMode 0x%x bUseAsyncFWScheduling = true -> not supported. set bUseAsyncFWScheduling to false", v186, 16, v474, *(a1 + 1132));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: eRCMode 0x%x bUseAsyncFWScheduling = true -> not supported. set bUseAsyncFWScheduling to false", v183, 16, v184, v185);
      }
    }

    v191 = 0;
    goto LABEL_296;
  }

  if (v181 != 20 && *(a1 + 1256))
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v187 = AVE_Log_CheckConsole(0x10u);
      v188 = AVE_GetCurrTime();
      v189 = AVE_Log_GetLevelStr(5);
      v190 = *(a1 + 1132);
      if (v187)
      {
        printf("%lld %d AVE %s: %s:%d eRCMode 0x%x bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true\n", v188, 16, v189, "AVE_ValidateEncoderParameters", 3599, *(a1 + 1132), *(a1 + 1256));
        v188 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(5);
        v502 = *(a1 + 1132);
        v513 = *(a1 + 1256);
      }

      else
      {
        v503 = *(a1 + 1132);
      }

      syslog(3, "%lld %d AVE %s: %s:%d eRCMode 0x%x bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true", v188);
    }

    v191 = 1;
LABEL_296:
    *(a1 + 10764) = v191;
  }

LABEL_297:
  if (*(v2 + 28))
  {
    *(a1 + 10540) = 1;
  }

  if (*(a1 + 1256) && *(a1 + 1476) == 1)
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v192 = AVE_Log_CheckConsole(0x10u);
      v193 = AVE_GetCurrTime();
      v194 = AVE_Log_GetLevelStr(5);
      v195 = *(a1 + 1256);
      if (v192)
      {
        printf("%lld %d AVE %s: %s:%d BFrames = %d and LowDelay is true. Default to regular BFrames case\n", v193, 16, v194, "AVE_ValidateEncoderParameters", 3627, v195);
        v196 = AVE_GetCurrTime();
        v197 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: %s:%d BFrames = %d and LowDelay is true. Default to regular BFrames case", v196, 16, v197, "AVE_ValidateEncoderParameters", 3627, *(a1 + 1256));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d BFrames = %d and LowDelay is true. Default to regular BFrames case", v193, 16, v194, "AVE_ValidateEncoderParameters", 3627, v195);
      }
    }

    *(a1 + 1476) = 0;
  }

  v198 = *(a1 + 10192);
  if (v198 == 8)
  {
    v199 = *(a1 + 1088);
  }

  else
  {
    if (v198 != 10)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v202 = AVE_Log_CheckConsole(3u);
        v203 = AVE_GetCurrTime();
        v204 = AVE_Log_GetLevelStr(4);
        if (v202)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: input_bitdepth = %d... not supported. Fail\n", v203, 3, v204, "AVE_ValidateEncoderParameters", 3642, "(pINS->VideoParams.input_bitdepth == 8) || (pINS->VideoParams.input_bitdepth == 10)", *(a1 + 10192));
          v203 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        v514 = *(a1 + 10192);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: input_bitdepth = %d... not supported. Fail", v203);
      }

      return 4294966295;
    }

    v199 = *(a1 + 1088);
    if (*(a1 + 10853) != 1)
    {
      v200 = v199 & 0xFFFFFFFFFFFFFFFELL;
      goto LABEL_312;
    }
  }

  v200 = v199 | 1;
LABEL_312:
  *(a1 + 1088) = v200;
  if (AVE_DevCap_FindSearchRangeMode(*(a1 + 68), 1, 2, *v43))
  {
    v201 = *(a1 + 76);
  }

  else
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v205 = AVE_Log_CheckConsole(0x10u);
      v206 = AVE_GetCurrTime();
      v207 = AVE_Log_GetLevelStr(5);
      v208 = *v43;
      if (v205)
      {
        printf("%lld %d AVE %s: FIG: SearchRangeMode %d not supported. Default to 0\n", v206, 16, v207, v208);
        v209 = AVE_GetCurrTime();
        v475 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: FIG: SearchRangeMode %d not supported. Default to 0", v209, 16, v475, *v43);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: SearchRangeMode %d not supported. Default to 0", v206, 16, v207, v208);
      }
    }

    v201 = *(a1 + 76);
    if (v201 <= 29)
    {
      v210 = 0;
    }

    else
    {
      v210 = 3;
    }

    *v43 = v210;
  }

  if (v201 <= 8 && (*v43 & 0xFFFE) == 4 && (*(a1 + 1308) > 1 || *(a1 + 10556) >= 2u))
  {
    *v43 = 0;
  }

  if ((*(a1 + 1444) * *(a1 + 1440)) >= 0x7E9000 && *(a1 + 1112) >= 100 && (*(v3 + 255) & 0x80000000) != 0 && (*(v2 + 1916) & 0x80000000) != 0)
  {
    if (v201 <= 29)
    {
      v227 = 0;
    }

    else
    {
      v227 = 3;
    }

    *v43 = v227;
LABEL_337:
    if (*(a1 + 64) != 2 && !*(a1 + 10531))
    {
      goto LABEL_345;
    }

    goto LABEL_339;
  }

  if (*v43 != 7)
  {
    goto LABEL_337;
  }

LABEL_339:
  if ((*(a1 + 10172) & 1) == 0)
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v211 = AVE_Log_CheckConsole(0x10u);
      v212 = AVE_GetCurrTime();
      v213 = AVE_Log_GetLevelStr(5);
      if (v211)
      {
        printf("%lld %d AVE %s: FIG: SearchRangeMode = 7 or LRMEStandAlone or LRMERC -> must run in LRME-pipe async.\n", v212, 16, v213);
        v214 = AVE_GetCurrTime();
        v476 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: FIG: SearchRangeMode = 7 or LRMEStandAlone or LRMERC -> must run in LRME-pipe async.", v214, 16, v476);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: SearchRangeMode = 7 or LRMEStandAlone or LRMERC -> must run in LRME-pipe async.", v212, 16, v213);
      }
    }

    *(a1 + 10172) = 1;
  }

LABEL_345:
  if (*(a1 + 10857) == 1)
  {
    if ((*(a1 + 1339) & 4) != 0)
    {
      v215 = -6 * *(a1 + 24732);
      v216 = *(a1 + 1144) + 4;
      if (v216 <= v215)
      {
        v216 = -6 * *(a1 + 24732);
      }

      if (v216 >= 51)
      {
        v216 = 51;
      }

      *(a1 + 1148) = v216;
      if (v215 <= 51)
      {
        v215 = v216 + 1;
      }

      if (v215 >= 51)
      {
        v215 = 51;
      }

      *(a1 + 1152) = v215;
      *(a1 + 1132) = 3;
    }

    else if ((*(a1 + 10783) & 1) == 0 && *(a1 + 1132) != 4 && (*(a1 + 10858) & 1) == 0 && *(a1 + 10904) == 1)
    {
      *(a1 + 1464) = 0;
      *(a1 + 39886) = 0;
      *(a1 + 1352) = 0;
      *(a1 + 1336) = 0;
    }
  }

  else if (*(a1 + 10904) == 1 && (*(a1 + 10783) & 1) == 0 && *(a1 + 1132) != 4 && (*(a1 + 10858) & 1) == 0)
  {
    *(a1 + 1464) = 0;
    *(a1 + 39886) = 0;
    *(a1 + 1352) = 0;
    *(a1 + 1336) = 0;
    *(a1 + 1132) = 3;
    *(a1 + 1144) = 0x1E0000001ELL;
    *(a1 + 1152) = 30;
  }

  if ((*(a1 + 10904) & 1) != 0 || (*(a1 + 716) & 0x3C0) != 0 || *(v2 + 28))
  {
    *(a1 + 1128) = 0;
    *(a1 + 1120) &= ~0x80000000uLL;
  }

  if (*(a1 + 1132) == 3)
  {
    *(a1 + 10764) = 1;
    *(a1 + 1464) = 0;
    if (*(a1 + 10752) == 2)
    {
      v217 = *(a1 + 1336) & 0xFFFF7F8F;
      v218 = *(a1 + 1352) & 0x1E;
    }

    else
    {
      v218 = 0;
      v217 = 0;
      *(a1 + 39886) = 0;
    }

    *(a1 + 1336) = v217;
    *(a1 + 1352) = v218;
  }

  if ((*(a1 + 1123) & 0x80) != 0)
  {
    *(a1 + 11460) = 0;
    *(a1 + 1104) |= 0x40uLL;
  }

  if (*(a1 + 1336) && (*(a1 + 39886) & 1) == 0)
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v219 = AVE_Log_CheckConsole(0x10u);
      v220 = AVE_GetCurrTime();
      v221 = AVE_Log_GetLevelStr(5);
      v222 = *(a1 + 1336);
      if (v219)
      {
        printf("%lld %d AVE %s: %s:%d cu_qp_delta_enabled_flag set false and QPMod set to %x (!= 0) is not supported. Force cu_qp_delta_enabled_flag to true.\n", v220, 16, v221, "AVE_ValidateEncoderParameters", 3818, v222);
        v223 = AVE_GetCurrTime();
        v224 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: %s:%d cu_qp_delta_enabled_flag set false and QPMod set to %x (!= 0) is not supported. Force cu_qp_delta_enabled_flag to true.", v223, 16, v224, "AVE_ValidateEncoderParameters", 3818, *(a1 + 1336));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d cu_qp_delta_enabled_flag set false and QPMod set to %x (!= 0) is not supported. Force cu_qp_delta_enabled_flag to true.", v220, 16, v221, "AVE_ValidateEncoderParameters", 3818, v222);
      }
    }

    *(a1 + 39886) = 1;
  }

  v556 = a1 + 24248;
  if (*(a1 + 10192) == 10 && *(a1 + 10752) != 2)
  {
    v225 = *(a1 + 31368);
    if (v225 == 16)
    {
      if (*(a1 + 24688) == 1 && (*(a1 + 39924) = 0x500000005, (*(a1 + 1123) & 0x80) != 0))
      {
        LOBYTE(v226) = 0;
        *(a1 + 1336) |= 0x8000000u;
      }

      else
      {
        LOBYTE(v226) = 0;
      }
    }

    else if (v225 == 18 && (v226 = *(a1 + 24688), v226 == 1))
    {
      *(a1 + 39924) = 0xB0000000BLL;
    }

    else
    {
      LOBYTE(v226) = 1;
    }

    v228 = *(a1 + 76);
    if (v228 >= 23)
    {
      v229 = *(a1 + 24688);
      if (v229 != 1)
      {
        LOBYTE(v226) = 1;
      }

      if ((v226 & 1) == 0 && (*(a1 + 1123) & 0x80) != 0)
      {
        *(a1 + 39956) = 1;
      }

      v43 = (a1 + 10168);
      v64 = a1 + 59393;
      if (v228 >= 0x1E && v229 == 1 && (v225 | 2) == 0x12)
      {
        *(a1 + 39956) = 1;
      }
    }
  }

  v230 = *(a1 + 1336);
  if ((v230 & 0x40) != 0)
  {
    v231 = *(a1 + 1440) + 15;
    v232 = *(a1 + 1444) + 15;
    v233 = v232 >> 4;
    v234 = (v231 >> 4) + 31;
    v235 = v234 & 0x1FFFFFE0;
    if (v231 > 0x78F || v232 >= 0x450)
    {
      v236 = (((((v231 >> 4) + 1) >> 1) + 31) >> 5) * ((v233 + 1) >> 1);
    }

    else
    {
      v236 = (v234 >> 5) * v233;
    }

    if (v235 > 0x100 || v232 > 0xC0F || v236 >= 0x121)
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v237 = AVE_Log_CheckConsole(0x10u);
        v554 = AVE_GetCurrTime();
        v238 = AVE_Log_GetLevelStr(5);
        if (v237)
        {
          printf("%lld %d AVE %s: AVE_FIG: align32MbW <= MAX_STATICAREASLOWQP_NMB_FRAME_HORIZONTAL && picHeightInMb <= MAX_STATICAREASLOWQP_NMB_FRAME_VERTICAL %d %d %d %d\n", v554, 16, v238, v235, 256, v233, 192);
          v239 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: AVE_FIG: align32MbW <= MAX_STATICAREASLOWQP_NMB_FRAME_HORIZONTAL && picHeightInMb <= MAX_STATICAREASLOWQP_NMB_FRAME_VERTICAL %d %d %d %d", v239);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: AVE_FIG: align32MbW <= MAX_STATICAREASLOWQP_NMB_FRAME_HORIZONTAL && picHeightInMb <= MAX_STATICAREASLOWQP_NMB_FRAME_VERTICAL %d %d %d %d", v554);
        }
      }

      v230 = *(a1 + 1336) & 0xFFFFFFBF;
      *(a1 + 1336) = v230;
    }
  }

  v240 = a1 + 24248;
  if (*(a1 + 11792) >= 0x1Fu)
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v241 = AVE_Log_CheckConsole(0x10u);
      v242 = AVE_GetCurrTime();
      v243 = AVE_Log_GetLevelStr(5);
      if (v241)
      {
        printf("%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM\n", v242, 16, v243, 30);
        v244 = AVE_GetCurrTime();
        v477 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM", v244, 16, v477, 30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM", v242, 16, v243, 30);
      }
    }

    *(a1 + 11792) = 30;
    v230 = *(a1 + 1336);
  }

  if ((v230 & 0x10) != 0)
  {
    v245 = *(a1 + 1132);
    if (v245 <= 0x14 && ((1 << v245) & 0x100009) != 0)
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v246 = AVE_Log_CheckConsole(0x10u);
        v247 = AVE_GetCurrTime();
        v248 = AVE_Log_GetLevelStr(5);
        v249 = *(a1 + 1132);
        if (v246)
        {
          printf("%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x is not supported. Set AVE_QPMOD_FEATURE_FLAT_AREA to false\n", v247, 16, v248, "AVE_ValidateEncoderParameters", 3932, *(a1 + 1132), *(a1 + 1336));
          v247 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(5);
          v504 = *(a1 + 1132);
          v515 = *(a1 + 1336);
        }

        else
        {
          v505 = *(a1 + 1132);
        }

        syslog(3, "%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x is not supported. Set AVE_QPMOD_FEATURE_FLAT_AREA to false", v247);
      }

      v230 = *(a1 + 1336) & 0xFFFFFFEF;
      *(a1 + 1336) = v230;
      v245 = *(a1 + 1132);
    }

    if (v245 == 100)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v250 = AVE_Log_CheckConsole(3u);
        v251 = AVE_GetCurrTime();
        v252 = AVE_Log_GetLevelStr(4);
        v253 = *(a1 + 1132);
        if (v250)
        {
          printf("%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.\n", v251, 3, v252, "AVE_ValidateEncoderParameters", 3939, "pINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_HwVal", "AVE_ValidateEncoderParameters", 3939, *(a1 + 1132), *(a1 + 1336));
          v251 = AVE_GetCurrTime();
          v252 = AVE_Log_GetLevelStr(4);
        }

        v540 = *(a1 + 1132);
        v546 = *(a1 + 1336);
        syslog(3, "%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.", v251, 3, v252);
      }

      return 4294966295;
    }
  }

  if ((v230 & 0x8010) == 0x8000)
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v254 = AVE_Log_CheckConsole(0x10u);
      v255 = AVE_GetCurrTime();
      v256 = AVE_Log_GetLevelStr(5);
      v257 = *(a1 + 1336) & 0x10;
      if (v254)
      {
        printf("%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_EXT_LUMA to false\n", v255, 16, v256, v257);
        v258 = AVE_GetCurrTime();
        v478 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_EXT_LUMA to false", v258, 16, v478, *(a1 + 1336) & 0x10);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_EXT_LUMA to false", v255, 16, v256, v257);
      }
    }

    v230 = *(a1 + 1336) & 0xFFFF7FFF;
    *(a1 + 1336) = v230;
  }

  if ((v230 & 0x30) == 0x20)
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v259 = AVE_Log_CheckConsole(0x10u);
      v260 = AVE_GetCurrTime();
      v261 = AVE_Log_GetLevelStr(5);
      v262 = *(a1 + 1336) & 0x10;
      if (v259)
      {
        printf("%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_ULTRA_FLAT_AREA to false\n", v260, 16, v261, v262);
        v263 = AVE_GetCurrTime();
        v479 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_ULTRA_FLAT_AREA to false", v263, 16, v479, *(a1 + 1336) & 0x10);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_ULTRA_FLAT_AREA to false", v260, 16, v261, v262);
      }
    }

    v230 = *(a1 + 1336) & 0xFFFFFFDF;
    *(a1 + 1336) = v230;
  }

  if ((v230 & 4) != 0 && (v230 & 0x12) != 0x12)
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v264 = AVE_Log_CheckConsole(0x10u);
      v265 = AVE_GetCurrTime();
      v266 = AVE_Log_GetLevelStr(5);
      v267 = *(a1 + 1336) & 4;
      v268 = *(a1 + 1336) & 0x10;
      if (v264)
      {
        printf("%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_LOW_VARIANCE = %d and requires both AVE_QPMOD_FEATURE_VARIANCE %d and AVE_QPMOD_FEATURE_FLAT_AREA %d. Forcing AVE_QPMOD_FEATURE_LOW_VARIANCE off.\n", v265, 16, v266, v267, *(a1 + 1336) & 2, v268);
        v269 = AVE_GetCurrTime();
        v270 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_LOW_VARIANCE = %d and requires both AVE_QPMOD_FEATURE_VARIANCE %d and AVE_QPMOD_FEATURE_FLAT_AREA %d. Forcing AVE_QPMOD_FEATURE_LOW_VARIANCE off.", v269, 16, v270, *(a1 + 1336) & 4, *(a1 + 1336) & 2, *(a1 + 1336) & 0x10);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_LOW_VARIANCE = %d and requires both AVE_QPMOD_FEATURE_VARIANCE %d and AVE_QPMOD_FEATURE_FLAT_AREA %d. Forcing AVE_QPMOD_FEATURE_LOW_VARIANCE off.", v265, 16, v266, v267, *(a1 + 1336) & 2, v268);
      }
    }

    v230 = *(a1 + 1336) & 0xFFFFFFFB;
    *(a1 + 1336) = v230;
  }

  if ((*(a1 + 1123) & 0x80) != 0)
  {
    v271 = *(a1 + 1240) | 0x30000;
    v272 = v230 & 0xFFFFFFAF;
    v273 = *(a1 + 1132);
    if (v273 == 8 || v273 == 6)
    {
      v272 |= 0x30u;
    }

    *(a1 + 1336) = (v272 | *(v3 + 237)) & ~*(v3 + 238);
    *(a1 + 1240) = (*(v3 + 218) | v271) & ~*(v3 + 219);
    if (AVE_Log_CheckLevel(0x10u, 6))
    {
      v274 = AVE_Log_CheckConsole(0x10u);
      v275 = AVE_GetCurrTime();
      v276 = AVE_Log_GetLevelStr(6);
      if (v274)
      {
        printf("%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled\n", v275, 16, v276);
        v277 = AVE_GetCurrTime();
        v480 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled", v277, 16, v480);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled", v275, 16, v276);
      }
    }
  }

  v278 = *(a1 + 10244);
  if (v278 >= 2)
  {
    v279 = *(a1 + 1132);
    if (v279 && v279 != 20 && (*(a1 + 24856) & 1) == 0)
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v280 = AVE_Log_CheckConsole(0x10u);
        v281 = AVE_GetCurrTime();
        v282 = AVE_Log_GetLevelStr(5);
        v283 = *(a1 + 10244);
        v284 = *(a1 + 1132);
        if (v280)
        {
          printf("%lld %d AVE %s: FIG: i32PPSsCount (%d), eRCMode %d and scaling_list_enabled_flag is false. Not supported. Forcing i32PPSsCount to 1\n", v281, 16, v282, *(a1 + 10244), v284);
          v285 = AVE_GetCurrTime();
          v286 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: FIG: i32PPSsCount (%d), eRCMode %d and scaling_list_enabled_flag is false. Not supported. Forcing i32PPSsCount to 1", v285, 16, v286, *(a1 + 10244), *(a1 + 1132));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: i32PPSsCount (%d), eRCMode %d and scaling_list_enabled_flag is false. Not supported. Forcing i32PPSsCount to 1", v281, 16, v282, *(a1 + 10244), v284);
        }
      }

      v278 = 1;
      *(a1 + 10244) = 1;
      v240 = a1 + 24248;
    }

    if (*(a1 + 10892) == 1)
    {
      v287.i64[0] = 0xC0000000CLL;
      v287.i64[1] = 0xC0000000CLL;
      v288.i64[0] = 0x100000001;
      v288.i64[1] = 0x100000001;
      v289 = vaddvq_s32(vsubq_s32(vbicq_s8(v288, vceqq_s32(*(a1 + 39892), v287)), vmvnq_s8(vceqq_s32(*(a1 + 39908), v287))));
      if (v278 != v289)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v294 = AVE_Log_CheckConsole(3u);
          v295 = AVE_GetCurrTime();
          v296 = AVE_Log_GetLevelStr(4);
          v297 = *(a1 + 10244);
          if (v294)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: PPS count = %d and ch_qp_index_offset_cnt = %d... are not compatible. fail\n", v295, 3, v296, "AVE_ValidateEncoderParameters", 4034, "pINS->VideoParams.i32PPSsCount == ch_qp_index_offset_cnt", *(a1 + 10244), v289);
            v295 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          v516 = *(a1 + 10244);
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: PPS count = %d and ch_qp_index_offset_cnt = %d... are not compatible. fail", v295);
        }

        return 4294966295;
      }
    }
  }

  if (*(a1 + 1308) >= 2)
  {
    if ((*(a1 + 1296) & 1) == 0)
    {
      goto LABEL_498;
    }

    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v290 = AVE_Log_CheckConsole(0x10u);
      v291 = AVE_GetCurrTime();
      v292 = AVE_Log_GetLevelStr(5);
      if (v290)
      {
        printf("%lld %d AVE %s: MultiRef and WP not supported together. Disabling MultiRef.\n", v291, 16, v292);
        v293 = AVE_GetCurrTime();
        v481 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: MultiRef and WP not supported together. Disabling MultiRef.", v293, 16, v481);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: MultiRef and WP not supported together. Disabling MultiRef.", v291, 16, v292);
      }

      v240 = a1 + 24248;
    }

    *(a1 + 1308) = 1;
  }

  if (*(a1 + 1256) || (*v43 & 0xFFFE) == 4 || (*(a1 + 716) & 0x3C0) != 0 || *(a1 + 10556) > 1u || (*(a1 + 1296) & 1) != 0)
  {
LABEL_498:
    if ((*(v43 + 5) & 1) == 0)
    {
      *(v43 + 5) = 1;
    }
  }

  if (*(a1 + 1264) == 1)
  {
    v298 = *(a1 + 1240);
    if (*(a1 + 10560) == 1)
    {
      *(a1 + 1268) = 0;
      *(a1 + 1272) = 0xBFF0000000000000;
      *(a1 + 1280) = 0xBFF0000000000000;
      *(a1 + 1252) = 0;
      v298 &= ~0x400u;
      *(a1 + 1240) = v298;
      *(a1 + 1260) = 1;
      *(a1 + 1288) = 1;
    }
  }

  else
  {
    v298 = *(a1 + 1240);
  }

  if ((v298 & 0x100) != 0 && !*(a1 + 1256))
  {
    *(a1 + 1240) = v298 & 0xFFFFFEFF;
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v299 = AVE_Log_CheckConsole(0x10u);
      v300 = AVE_GetCurrTime();
      v301 = AVE_Log_GetLevelStr(5);
      if (v299)
      {
        printf("%lld %d AVE %s: FIG: CRA not supported with no B Frames. Forcing bClosedGOP to true\n", v300, 16, v301);
        v302 = AVE_GetCurrTime();
        v482 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: FIG: CRA not supported with no B Frames. Forcing bClosedGOP to true", v302, 16, v482);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: CRA not supported with no B Frames. Forcing bClosedGOP to true", v300, 16, v301);
      }

      v240 = a1 + 24248;
    }
  }

  if (*(a1 + 10556) >= 2u)
  {
    if (*(a1 + 1112) <= 0 && AVE_Log_CheckLevel(0x10u, 5))
    {
      v303 = AVE_Log_CheckConsole(0x10u);
      v304 = AVE_GetCurrTime();
      v305 = AVE_Log_GetLevelStr(5);
      if (v303)
      {
        printf("%lld %d AVE %s: FIG: iLayerNum > 1 and ExpectedFR is not set, behavior is undefined\n", v304, 16, v305);
        v306 = AVE_GetCurrTime();
        v483 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: FIG: iLayerNum > 1 and ExpectedFR is not set, behavior is undefined", v306, 16, v483);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: iLayerNum > 1 and ExpectedFR is not set, behavior is undefined", v304, 16, v305);
      }
    }

    if ((*(a1 + 1088) & 2) != 0)
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v307 = AVE_Log_CheckConsole(0x10u);
        v308 = AVE_GetCurrTime();
        v309 = AVE_Log_GetLevelStr(5);
        if (v307)
        {
          printf("%lld %d AVE %s: FIG: MV-HEVC force to disable FrameDrop\n", v308, 16, v309);
          v310 = AVE_GetCurrTime();
          v484 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: FIG: MV-HEVC force to disable FrameDrop", v310, 16, v484);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: MV-HEVC force to disable FrameDrop", v308, 16, v309);
        }
      }

      *(a1 + 1088) &= ~2uLL;
    }

    if (*(v43 + 80) == 1)
    {
      *(v43 + 80) = 0;
      *(v43 + 21) = 1;
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v311 = AVE_Log_CheckConsole(0x10u);
        v312 = AVE_GetCurrTime();
        v313 = AVE_Log_GetLevelStr(5);
        if (v311)
        {
          printf("%lld %d AVE %s: FIG: MV-HEVC force to Frame Encoding mode\n", v312, 16, v313);
          v314 = AVE_GetCurrTime();
          v485 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: FIG: MV-HEVC force to Frame Encoding mode", v314, 16, v485);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: MV-HEVC force to Frame Encoding mode", v312, 16, v313);
        }
      }
    }

    if (*(v2 + 28))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v315 = AVE_Log_CheckConsole(3u);
        v316 = AVE_GetCurrTime();
        v317 = AVE_Log_GetLevelStr(4);
        if (v315)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Multipass\n", v316, 3, v317, "AVE_ValidateEncoderParameters", 4108, "false");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Multipass");
      }

      return 4294965294;
    }

    if (*(a1 + 11776) == 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v318 = AVE_Log_CheckConsole(3u);
        v319 = AVE_GetCurrTime();
        v320 = AVE_Log_GetLevelStr(4);
        if (v318)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Parallelization\n", v319, 3, v320, "AVE_ValidateEncoderParameters", 4114, "false");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Parallelization");
      }

      return 4294965294;
    }

    v321 = *(a1 + 1132);
    if (v321 == 4 || v321 == 2 && (*(a1 + 1123) & 0x80) == 0)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v322 = AVE_Log_CheckConsole(3u);
        v323 = AVE_GetCurrTime();
        v324 = AVE_Log_GetLevelStr(4);
        if (v322)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support DRL/CBR\n", v323, 3, v324, "AVE_ValidateEncoderParameters", 4122, "false");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support DRL/CBR");
      }

      return 4294965294;
    }

    if (*(a1 + 11460) >= 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v325 = AVE_Log_CheckConsole(3u);
        v326 = AVE_GetCurrTime();
        v327 = AVE_Log_GetLevelStr(4);
        if (v325)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support BaseLayerFrameRate\n", v326, 3, v327, "AVE_ValidateEncoderParameters", 4128, "false");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support BaseLayerFrameRate");
      }

      return 4294965294;
    }

    if (*(a1 + 24688) != 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v333 = AVE_Log_CheckConsole(3u);
        v334 = AVE_GetCurrTime();
        v335 = AVE_Log_GetLevelStr(4);
        if (v333)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444\n", v334, 3, v335, "AVE_ValidateEncoderParameters", 4135, "false");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444");
      }

      return 4294965294;
    }

    v328 = (a1 + 15575);
    *(a1 + 1240) &= ~0x400u;
    *(v43 + 352) = 1;
    if (*(a1 + 15575))
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v329 = AVE_Log_CheckConsole(0x1Eu);
        v330 = AVE_GetCurrTime();
        v331 = AVE_Log_GetLevelStr(4);
        if (v329)
        {
          printf("%lld %d AVE %s: %s:%d %s | non-zero layer ID at base layer %d\n", v330, 30, v331, "AVE_ValidateEncoderParameters", 4145, "pINS->VPSHevcParams.layer_id_in_nuh[0] == 0", *v328);
          v330 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          v332 = *v328;
        }

        else
        {
          v517 = *v328;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | non-zero layer ID at base layer %d", v330);
      }

      return 4294965290;
    }

    if (*(a1 + 10556) >= 3u)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v341 = AVE_Log_CheckConsole(0x1Eu);
        v342 = AVE_GetCurrTime();
        v343 = AVE_Log_GetLevelStr(4);
        v344 = *(a1 + 10556);
        if (v341)
        {
          printf("%lld %d AVE %s: %s:%d %s | video layer number %d is larger than MAX %d\n", v342, 30, v343, "AVE_ValidateEncoderParameters", 4150, "pINS->VideoParams.iLayerNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", *(a1 + 10556), 2);
          v342 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          v345 = *(a1 + 10556);
        }

        else
        {
          v518 = *(a1 + 10556);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | video layer number %d is larger than MAX %d", v342);
      }

      return 4294965291;
    }

    v336 = *(a1 + 15639);
    if (!*(a1 + 15639))
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v337 = AVE_Log_CheckConsole(0x10u);
        v338 = AVE_GetCurrTime();
        v339 = AVE_Log_GetLevelStr(5);
        if (v337)
        {
          printf("%lld %d AVE %s: kVTCompressionPropertyKey_MVHEVCViewIDs never received, setting default values\n", v338, 16, v339);
          v340 = AVE_GetCurrTime();
          v486 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_MVHEVCViewIDs never received, setting default values", v340, 16, v486);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_MVHEVCViewIDs never received, setting default values", v338, 16, v339);
        }
      }

      v346 = *(a1 + 10556);
      *(a1 + 10560) = v346;
      v336 = 1;
      *(a1 + 15639) = 1;
      if (v346)
      {
        v347 = 0;
        do
        {
          *(a1 + 15640 + v347) = v347;
          *(a1 + 11808 + v347) = v347;
          ++v347;
        }

        while (v346 > v347);
        v336 = 1;
      }
    }

    v348 = 0;
    v349 = a1 + 11808;
    v350 = 1;
    while (2)
    {
      v351 = 0;
      v352 = v350;
      while (*(v349 + v348) != *(a1 + 15640 + v351))
      {
        if (v336 < ++v351)
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v457 = AVE_Log_CheckConsole(3u);
            v458 = AVE_GetCurrTime();
            v459 = AVE_Log_GetLevelStr(4);
            if (v457)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: LeftRightID %d not found in viewID list\n", v458, 3, v459, "AVE_ValidateEncoderParameters", 4179, "bFound", *(v349 + v348));
              v458 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
              v460 = *(v349 + v348);
            }

            else
            {
              v526 = *(v349 + v348);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: LeftRightID %d not found in viewID list", v458);
          }

          return 4294965289;
        }
      }

      v350 = 0;
      v348 = 1;
      if (v352)
      {
        continue;
      }

      break;
    }

    *(v43 + 686) = 1;
    v240 = a1 + 24248;
  }

  if (*(v2 + 1836) >= 1)
  {
    v353 = *(a1 + 11460);
    if (v353 >= 1 && v353 < *(a1 + 1112))
    {
      goto LABEL_593;
    }
  }

  if (*(a1 + 1260) <= 2 || *(a1 + 1256) < 3)
  {
    goto LABEL_642;
  }

  v353 = *(a1 + 11460);
  if (v353 < 1)
  {
    v357 = 1;
  }

  else
  {
LABEL_593:
    v354 = *(a1 + 1112);
    v355 = -1;
    do
    {
      v356 = v354 >> (v355++ + 2);
    }

    while (v356 >= v353);
    v357 = v355 + 1;
    if (v353 << v355 != v354)
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v358 = AVE_Log_CheckConsole(0x10u);
        v555 = AVE_GetCurrTime();
        v359 = AVE_Log_GetLevelStr(5);
        v360 = *(a1 + 16);
        v361 = *(a1 + 1112);
        v362 = *(a1 + 11460);
        if (v358)
        {
          printf("%lld %d AVE %s: FIG: %p: ExpectedFrameRate %d is not multiple of BaseLayerFrameRate %d\n", v555, 16, v359, v360, *(a1 + 1112), v362);
          v363 = AVE_GetCurrTime();
          v364 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: FIG: %p: ExpectedFrameRate %d is not multiple of BaseLayerFrameRate %d", v363, 16, v364, *(a1 + 16), *(a1 + 1112), *(a1 + 11460));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: %p: ExpectedFrameRate %d is not multiple of BaseLayerFrameRate %d", v555, 16, v359, v360, *(a1 + 1112), v362);
        }
      }

      v353 = *(a1 + 1112) >> v355;
      *(a1 + 11460) = v353;
    }
  }

  v365 = *(a1 + 1288);
  if (v365 > 1)
  {
    if (v353 <= 0)
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v366 = AVE_Log_CheckConsole(0x10u);
        v367 = AVE_GetCurrTime();
        v368 = AVE_Log_GetLevelStr(5);
        v369 = *(a1 + 1288);
        if (v366)
        {
          printf("%lld %d AVE %s: FIG: NumOfTempLayer set to %d but BaseLayerFrameRate not specified. Encoder has to turn off hierarchical encoding\n", v367, 16, v368, v369);
          v370 = AVE_GetCurrTime();
          v487 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: FIG: NumOfTempLayer set to %d but BaseLayerFrameRate not specified. Encoder has to turn off hierarchical encoding", v370, 16, v487, *(a1 + 1288));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: NumOfTempLayer set to %d but BaseLayerFrameRate not specified. Encoder has to turn off hierarchical encoding", v367, 16, v368, v369);
        }
      }

      v365 = 1;
      *(a1 + 1288) = 1;
    }

    v371 = v365 == v357;
    v365 = v357;
    if (!v371)
    {
      v372 = AVE_Log_CheckLevel(0x10u, 5);
      v365 = v357;
      if (v372)
      {
        v373 = AVE_Log_CheckConsole(0x10u);
        v374 = AVE_GetCurrTime();
        v375 = AVE_Log_GetLevelStr(5);
        if (v373)
        {
          printf("%lld %d AVE %s: FIG: NumberOfTemporalLayers value is not optimal. Overriding with optimal value. calculatedNumTemporalLayers %d\n", v374, 16, v375, v357);
          v376 = AVE_GetCurrTime();
          v488 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: FIG: NumberOfTemporalLayers value is not optimal. Overriding with optimal value. calculatedNumTemporalLayers %d", v376, 16, v488, v357);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: NumberOfTemporalLayers value is not optimal. Overriding with optimal value. calculatedNumTemporalLayers %d", v374, 16, v375, v357);
        }

        v365 = v357;
      }
    }
  }

  if (v365 <= v357)
  {
    v377 = v357;
  }

  else
  {
    v377 = v365;
  }

  *(a1 + 1288) = v377;
  if (*(a1 + 10556) >= 2u && v377 >= 2)
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v378 = AVE_Log_CheckConsole(0x10u);
      v379 = AVE_GetCurrTime();
      v380 = AVE_Log_GetLevelStr(5);
      v381 = *(a1 + 1288);
      if (v378)
      {
        printf("%lld %d AVE %s: NumberOfTemporalLayers is %d and we are encoding multiple layers. Setting NumberOfTemporalLayers to 1\n", v379, 16, v380, v381);
        v382 = AVE_GetCurrTime();
        v489 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: NumberOfTemporalLayers is %d and we are encoding multiple layers. Setting NumberOfTemporalLayers to 1", v382, 16, v489, *(a1 + 1288));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: NumberOfTemporalLayers is %d and we are encoding multiple layers. Setting NumberOfTemporalLayers to 1", v379, 16, v380, v381);
      }
    }

    v377 = 1;
  }

  if (((*(v2 + 3080) | *(v2 + 3076)) & 0x400) == 0)
  {
    v383 = *(a1 + 1240);
    if ((v383 & 0x400) != 0 && v377 >= 3)
    {
      *(a1 + 1240) = v383 & 0xFFFFFBFF;
    }
  }

  if (v377 >= 3)
  {
    v384 = 3;
  }

  else
  {
    v384 = v377;
  }

  if ((*(a1 + 1444) * *(a1 + 1440)) > 0x7E8FFF)
  {
    v377 = v384;
  }

  if (v377 >= 4)
  {
    v377 = 4;
  }

  *(a1 + 1288) = v377;
  *(a1 + 39872) = 1;
  *(v64 + 575) = 0;
  v240 = a1 + 24248;
  if (!*(a1 + 1256))
  {
    *(a1 + 1240) &= ~0x400u;
    if (*(a1 + 76) <= 3 && *(a1 + 692) == 1)
    {
      *(v64 + 575) = 3;
    }

    v240 = a1 + 24248;
    if (*(a1 + 1112) == *(a1 + 11460))
    {
      *(a1 + 1288) = 1;
      *(a1 + 11460) = 0;
    }
  }

LABEL_642:
  v385 = *(a1 + 1288);
  if (v385 >= 2 || (v385 = *(v2 + 2088), v385 >= 2))
  {
    v386 = v385 - 1;
    *v240 = v386;
    *(a1 + 12012) = v386;
  }

  v387 = AVE_Enc_DecideThroughputMode(*(v3 + 256), *(v2 + 3200), *(a1 + 68), *(a1 + 76), *(a1 + 64), 2, *(v240 + 440), *(v2 + 1524), *(a1 + 10892), *(a1 + 692), *(a1 + 1112) * ((*(a1 + 1440) + 15) >> 4) * ((*(a1 + 1444) + 15) >> 4), *(a1 + 1440), *(a1 + 1444));
  *(a1 + 1368) = v387;
  v388 = *(a1 + 76);
  if (v388 >= 30)
  {
    *(v240 + 588) = 3;
    if (!*(a1 + 692) && *(v2 + 1524) >= 1)
    {
      *(a1 + 688) |= 0x100u;
      *(a1 + 1256) = 0;
      *(a1 + 1240) &= 0xFFFFFAFF;
    }

    if ((v387 & 0xFFFFFFFE) == 2)
    {
      *(a1 + 39885) = 1;
    }
  }

  if (*(a1 + 1264) <= 0 && *(a1 + 1268) <= 0 && *(a1 + 1272) <= 0.0 && *(a1 + 1280) <= 0.0)
  {
    *(a1 + 1264) = 30;
  }

  if (*(a1 + 1288) == 1)
  {
    *(v43 + 1848) = 1;
    *(v240 + 4) = 1;
  }

  if (!*(a1 + 1256))
  {
    *(a1 + 1240) &= ~0x400u;
  }

  if (((*(v2 + 3080) | *(v2 + 3076)) & 0x400) == 0)
  {
    v389 = *(a1 + 1240);
    if ((v389 & 0x400) != 0 && (*(a1 + 1123) & 0x80) != 0)
    {
      *(a1 + 1240) = v389 & 0xFFFFFBFF;
    }
  }

  v390 = *(v3 + 257);
  if (v390 <= 5)
  {
    *(v64 + 575) = 5 - v390;
  }

  if (v388 <= 3)
  {
    if (*(v43 + 37) == 1)
    {
      *(v43 + 37) = 0;
    }

    *(v43 + 36) = 0;
  }

  else
  {
    *(v43 + 37) = 1;
  }

  v391 = *(a1 + 692);
  if (v391 == 1)
  {
    *(a1 + 688) &= ~2u;
  }

  if (*(a1 + 10804) == 1 && *(v43 + 681) == 1)
  {
    *(v43 + 681) = 0;
  }

  v392 = *(a1 + 1120);
  if ((v392 & 0x10) != 0)
  {
    *(a1 + 1112) = *(a1 + 11448);
    *(a1 + 1240) &= ~0x400u;
  }

  if ((*(a1 + 716) & 0x3C0) == 0)
  {
    goto LABEL_728;
  }

  *(a1 + 688) |= 0x100u;
  *(a1 + 1096) |= 0x4000000000uLL;
  if (!*(v43 + 363))
  {
    *(v43 + 363) = 3;
  }

  *(a1 + 42028) = 0;
  *(v64 + 669) = 0;
  *(v43 + 4) = 1;
  *(v43 + 362) = 1;
  if (*(a1 + 10552) == 1)
  {
    *(a1 + 1256) = 0x100000000;
    *(a1 + 1288) = 1;
    *(a1 + 1240) &= ~0x400u;
  }

  if (v388 > 29 || v388 == 28)
  {
    if (v388 > 0x1E)
    {
      if (*(a1 + 24688))
      {
LABEL_697:
        if (v391 >= 1 && (v392 & 0x10) == 0)
        {
          v397 = vshr_n_u32(vadd_s32(*(a1 + 1440), 0x1F0000001FLL), 5uLL);
          if ((*(a1 + 1112) * v397.i32[0] * v397.i32[1]) >= 0x45BA1)
          {
            if (AVE_Log_CheckLevel(0x10u, 5))
            {
              v398 = AVE_Log_CheckConsole(0x10u);
              v399 = AVE_GetCurrTime();
              v400 = AVE_Log_GetLevelStr(5);
              v401 = *(a1 + 1444);
              if (v398)
              {
                printf("%lld %d AVE %s: %s:%d Disable B frames for encoding %dx%d frames at %dfps with MCTF to achieve realtime performance.\n", v399, 16, v400, "AVE_ValidateEncoderParameters", 4530, *(a1 + 1440), *(a1 + 1444), *(a1 + 1112));
                v399 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(5);
                v402 = *(a1 + 1440);
                v519 = *(a1 + 1444);
                v534 = *(a1 + 1112);
              }

              else
              {
                v520 = *(a1 + 1444);
              }

              syslog(3, "%lld %d AVE %s: %s:%d Disable B frames for encoding %dx%d frames at %dfps with MCTF to achieve realtime performance.", v399);
            }

            *(a1 + 1256) = 0;
            *(a1 + 1240) &= 0xFFFFFAFF;
          }
        }

        v396 = *(a1 + 11812);
        if (v396 < 0)
        {
          v396 = *(a1 + 10804) != 2 || *(a1 + 692) <= 0;
        }

        *(a1 + 1392) = v396;
        if (*(a1 + 1396) == -1 && *(a1 + 10804) == 2 && *(a1 + 692) >= 1)
        {
          *(a1 + 1396) = 5;
        }

        goto LABEL_721;
      }

LABEL_704:
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294966295;
      }

      v403 = AVE_Log_CheckConsole(3u);
      v60 = AVE_GetCurrTime();
      v404 = AVE_Log_GetLevelStr(4);
      if (v403)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: MCTF for ChromaFmt %d... not supported. Fail\n", v60, 3, v404, "AVE_ValidateEncoderParameters", 4512, "false", *(v556 + 440));
        v60 = AVE_GetCurrTime();
        v404 = AVE_Log_GetLevelStr(4);
        v494 = "false";
        v508 = *(v556 + 440);
        v493 = 4512;
      }

      else
      {
        v508 = *(v556 + 440);
        v493 = 4512;
        v494 = "false";
      }

      v467 = v404;
      v63 = "%lld %d AVE %s: %s:%d %s | FIG: MCTF for ChromaFmt %d... not supported. Fail";
      goto LABEL_157;
    }
  }

  else if (*(a1 + 10556) >= 2u)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v393 = AVE_Log_CheckConsole(3u);
      v394 = AVE_GetCurrTime();
      v395 = AVE_Log_GetLevelStr(4);
      if (v393)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: MCTF unsupported for MV-HEVC. Fail\n", v394, 3, v395, "AVE_ValidateEncoderParameters", 4501, "false");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MCTF unsupported for MV-HEVC. Fail");
    }

    return 4294966295;
  }

  if (*(a1 + 24688) != 1)
  {
    goto LABEL_704;
  }

  if (v388 >= 30)
  {
    goto LABEL_697;
  }

  v396 = *(a1 + 11812);
  if (v396 < 0)
  {
    v396 = 1;
  }

  *(a1 + 1392) = v396;
  if (v388 != 28)
  {
    *(a1 + 1448) &= ~0x2000000uLL;
  }

LABEL_721:
  if (*(a1 + 1396) >= 1 && v396 == 1)
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v405 = AVE_Log_CheckConsole(0x10u);
      v406 = AVE_GetCurrTime();
      v407 = AVE_Log_GetLevelStr(5);
      v408 = *(a1 + 16);
      v409 = *(a1 + 1392);
      v410 = *(a1 + 1396);
      if (v405)
      {
        printf("%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)\n", v406, 16, v407, v408, *(a1 + 1392), v410);
        v411 = AVE_GetCurrTime();
        v412 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)", v411, 16, v412, *(a1 + 16), *(a1 + 1392), *(a1 + 1396));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)", v406, 16, v407, v408, *(a1 + 1392), v410);
      }
    }

    *(a1 + 1396) = -1;
  }

LABEL_728:
  v413 = *(a1 + 1120);
  if ((v413 & 0x80000000) != 0 && *(a1 + 76) >= 9)
  {
    *(v43 + 4) = 1;
    *(v43 + 362) = 1;
  }

  v414 = *(v43 + 4);
  if (*(v43 + 4))
  {
    v415 = 0x10000;
  }

  else
  {
    v415 = 0;
  }

  *(a1 + 1240) = *(a1 + 1240) & 0xFFFEFFFF | v415;
  if ((*(a1 + 1296) & 1) != 0 && (!v414 || *(a1 + 11476) > 0 || (v413 & 0x80000000) != 0 || *(a1 + 10556) > 1u || *(v2 + 28) || *(a1 + 1368) >= 5))
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v416 = AVE_Log_CheckConsole(0x10u);
      v417 = AVE_GetCurrTime();
      v418 = AVE_Log_GetLevelStr(5);
      if (v416)
      {
        printf("%lld %d AVE %s: FIG: Force to disable Weighted Prediction\n", v417, 16, v418);
        v419 = AVE_GetCurrTime();
        v490 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: FIG: Force to disable Weighted Prediction", v419, 16, v490);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: Force to disable Weighted Prediction", v417, 16, v418);
      }
    }

    *(a1 + 10200) = 0;
    *(a1 + 1296) &= ~1u;
    *(a1 + 39957) = 0;
    *(a1 + 48356) = 0;
  }

  if (*(v43 + 80) == 1)
  {
    v420 = *(v43 + 21);
    if (v420 == 1)
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v421 = AVE_Log_CheckConsole(0x10u);
        v422 = AVE_GetCurrTime();
        v423 = AVE_Log_GetLevelStr(5);
        if (v421)
        {
          printf("%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode\n", v422, 16, v423);
          v424 = AVE_GetCurrTime();
          v491 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode", v424, 16, v491);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode", v422, 16, v423);
        }
      }

      *(v43 + 80) = 0;
      v420 = *(v43 + 21);
    }

    if (v420)
    {
      v425 = 0;
      v426 = (v420 - 1);
      v427 = (a1 + 10260);
      while (1)
      {
        if (v426 == v425)
        {
          v428 = *(a1 + 10260 + 8 * v426);
          if (v428 < 96)
          {
            break;
          }
        }

        else
        {
          v428 = *v427;
          if (*v427 < 128)
          {
            break;
          }
        }

        if ((v428 + *(v427 - 1)) > *(a1 + 1444))
        {
          break;
        }

        ++v425;
        v427 += 2;
        if (v420 == v425)
        {
          goto LABEL_768;
        }
      }

      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v429 = AVE_Log_CheckConsole(0x10u);
        v430 = AVE_GetCurrTime();
        v431 = AVE_Log_GetLevelStr(5);
        v432 = *v427;
        if (v429)
        {
          printf("%lld %d AVE %s: FIG: Slice Parameters Invalid. slice[%d] iY: %d, iHeight: %d, frame height: %d, Force to Frame Encoding\n", v430, 16, v431, v425, *(v427 - 1), *v427, *(a1 + 1444));
          v430 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(5);
          v433 = *(v427 - 1);
          v506 = *v427;
          v521 = *(a1 + 1444);
        }

        else
        {
          v507 = *v427;
        }

        syslog(3, "%lld %d AVE %s: FIG: Slice Parameters Invalid. slice[%d] iY: %d, iHeight: %d, frame height: %d, Force to Frame Encoding", v430);
      }

      *(v43 + 80) = 0;
      *(v43 + 42) = 1;
      *(a1 + 10260) = *(a1 + 1444);
    }
  }

LABEL_768:
  v434 = *(a1 + 76);
  if (v434 >= 9)
  {
    v435 = 2;
    if (v434 <= 0x1E && ((1 << v434) & 0x48821000) != 0)
    {
      if (*(a1 + 10892))
      {
        v435 = 2;
      }

      else
      {
        v435 = 5;
      }
    }
  }

  else
  {
    v435 = 5;
  }

  *(v43 + 396) = v435;
  v436 = *(a1 + 1336);
  if (v436)
  {
    *(a1 + 39886) = ((v43[345] & 1) == 0) | BYTE2(v436) & 1;
  }

  else
  {
    *(a1 + 39886) = 0;
  }

  v437 = *(a1 + 716) | 0x3E;
  *(a1 + 716) = v437;
  if (!*(v43 + 363))
  {
    *(a1 + 716) = v437 & 0xFFFFFFF7;
  }

  *(a1 + 1096) = (*(v3 + 123) | *(a1 + 1096) & ~*(v2 + 3164)) & ~*(v3 + 124);
  if (AVE_CheckQP(*(a1 + 1144), *(a1 + 24732) + 8))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v438 = AVE_Log_CheckConsole(3u);
      v439 = AVE_GetCurrTime();
      v440 = AVE_Log_GetLevelStr(4);
      if (v438)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d\n", v439, 3, v440, "AVE_ValidateEncoderParameters", 4725, "false", *(a1 + 1144));
        v439 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      v522 = *(a1 + 1144);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d", v439);
    }

    return 4294966295;
  }

  if (AVE_CheckQP(*(a1 + 1148), *(a1 + 24732) + 8))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v441 = AVE_Log_CheckConsole(3u);
      v442 = AVE_GetCurrTime();
      v443 = AVE_Log_GetLevelStr(4);
      if (v441)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d\n", v442, 3, v443, "AVE_ValidateEncoderParameters", 4730, "false", *(a1 + 1148));
        v442 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      v523 = *(a1 + 1148);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d", v442);
    }

    return 4294966295;
  }

  if (AVE_CheckQP(*(a1 + 1152), *(a1 + 24732) + 8))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v444 = AVE_Log_CheckConsole(3u);
      v445 = AVE_GetCurrTime();
      v446 = AVE_Log_GetLevelStr(4);
      if (v444)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d\n", v445, 3, v446, "AVE_ValidateEncoderParameters", 4735, "false", *(a1 + 1152));
        v445 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      v524 = *(a1 + 1152);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d", v445);
    }

    return 4294966295;
  }

  v447 = *(a1 + 1264) != 1 || *(a1 + 10560) != 1;
  if (AVE_Enc_CheckResolution(*(a1 + 68), 1, 2, *(a1 + 1440), *(a1 + 1444), v447))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v448 = AVE_Log_CheckConsole(3u);
      v449 = AVE_GetCurrTime();
      v450 = AVE_Log_GetLevelStr(4);
      v451 = *(a1 + 1444);
      if (v448)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.\n", v449, 3, v450, "AVE_ValidateEncoderParameters", 4748, "false", *(a1 + 1440), *(a1 + 1444), *(a1 + 1264));
        v449 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      v535 = *(a1 + 1444);
      v541 = *(a1 + 1264);
      v525 = *(a1 + 1440);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.", v449, 3);
    }

    return 4294966295;
  }

  if ((*(a1 + 39961) & 1) == 0 && *(a1 + 76) <= 29)
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v452 = AVE_Log_CheckConsole(0x10u);
      v453 = AVE_GetCurrTime();
      v454 = AVE_Log_GetLevelStr(5);
      if (v452)
      {
        printf("%lld %d AVE %s: %s:%d entropy_coding_sync_enabled_flag has to be enabled.\n", v453, 16, v454, "AVE_ValidateEncoderParameters", 4757);
        v455 = AVE_GetCurrTime();
        v492 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: %s:%d entropy_coding_sync_enabled_flag has to be enabled.", v455, 16, v492, "AVE_ValidateEncoderParameters", 4757);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d entropy_coding_sync_enabled_flag has to be enabled.", v453, 16, v454, "AVE_ValidateEncoderParameters", 4757);
      }
    }

    *(a1 + 39961) = 1;
  }

  if (*(v2 + 1832) <= 0 && *(v2 + 1984) < 1)
  {
    return 0;
  }

  v461 = *(a1 + 11460);
  if (v461 < 1)
  {
    return 0;
  }

  v462 = *(a1 + 1112);
  if (v461 > v462)
  {
    return 0;
  }

  v19 = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1252) = v462 / v461;
  *(a1 + 1256) = 0x200000000;
  *(a1 + 1288) = 1;
  return v19;
}