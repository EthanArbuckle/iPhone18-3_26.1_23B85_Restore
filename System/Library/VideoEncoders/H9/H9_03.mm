uint64_t AVE_Prop_HEVC_GetRequiredMVHEVCPictureParameterSetIDs(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, *(a1 + 2639), MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v28 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetRequiredMVHEVCPictureParameterSetIDs", 10287, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, *(a1 + 2639));
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v31 = a1[7];
          v40 = *(a1 + 2639);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetRequiredMVHEVCPictureParameterSetIDs", 10287, "pArray != __null", a1);
      }

      return 4294966293;
    }

    v11 = Mutable;
    v42 = a2;
    if (*(a1 + 10904))
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 2639);
    if (*(a1 + 10904))
    {
      v14 = v13 + 2;
    }

    else
    {
      v14 = v13;
    }

    if (v12 < v14)
    {
      v15 = &a1[1204 * v12 + 4981] + 1;
      while (1)
      {
        v16 = CFNumberCreate(allocator, kCFNumberSInt8Type, v15);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        CFArrayAppendValue(v11, v16);
        CFRelease(v17);
        ++v12;
        v15 += 2408;
        if (v14 == v12)
        {
          goto LABEL_16;
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v32 = AVE_Log_CheckConsole(0x1Eu);
        v33 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        if (v32)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v33, 30, v34, "AVE_Prop_HEVC_GetRequiredMVHEVCPictureParameterSetIDs", 10301, "pNum != __null", a1, a1[7], v42, allocator, a4, a5, v12, *v15);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          v41 = *v15;
          v39 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v33, 30, v34, "AVE_Prop_HEVC_GetRequiredMVHEVCPictureParameterSetIDs", 10301, "pNum != __null", a1);
      }

      CFRelease(v11);
      return 4294966293;
    }

LABEL_16:
    *a5 = v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(7);
      v22 = *(a1 + 2639);
      if (v19)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v20, 30, v21, a1, a1[7], *v42, *(a1 + 2639), v11);
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v23 = a1[7];
        v37 = *(a1 + 2639);
        v36 = *v42;
      }

      else
      {
        v38 = *(a1 + 2639);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v20, 30);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v24 = AVE_Log_CheckConsole(0x1Eu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v25, 30, v26, "AVE_Prop_HEVC_GetRequiredMVHEVCPictureParameterSetIDs", 10278, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v27 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v27, 30, v35, "AVE_Prop_HEVC_GetRequiredMVHEVCPictureParameterSetIDs", 10278);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v25, 30, v26, "AVE_Prop_HEVC_GetRequiredMVHEVCPictureParameterSetIDs", 10278);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs(void *a1, const char **a2, const __CFString *a3, const void *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (!AVE_Log_CheckLevel(0x1Eu, 4))
      {
        return 4294965293;
      }

      v26 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v29 = a1[7];
      v30 = CFGetTypeID(a4);
      if (v26)
      {
        v51 = v29;
        v31 = 10365;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10365, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v51, a2, a3, a4, v30);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        v34 = a1[7];
        CFGetTypeID(a4);
        v35 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_20:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v32, 30, v33, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", v31, v35);
        return 4294965293;
      }

      v39 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v40 = 10365;
LABEL_28:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", v40, v39);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    if (Count == 2)
    {
      v10 = 0;
      v11 = 1;
      while (1)
      {
        v12 = v11;
        ValueAtIndex = CFArrayGetValueAtIndex(a4, v10);
        if (!ValueAtIndex)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v41 = AVE_Log_CheckConsole(0x1Eu);
            v42 = AVE_GetCurrTime();
            v43 = AVE_Log_GetLevelStr(4);
            if (v41)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v42, 30, v43, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10382, "pNum != __null", a1, a1[7], a2, a3, a4);
              v42 = AVE_GetCurrTime();
              v43 = AVE_Log_GetLevelStr(4);
              v44 = a1[7];
            }

            else
            {
              v53 = a1[7];
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v42, 30, v43, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10382);
          }

          return 4294965292;
        }

        v14 = ValueAtIndex;
        v15 = CFNumberGetTypeID();
        if (v15 != CFGetTypeID(v14))
        {
          break;
        }

        CFNumberGetValue(v14, kCFNumberSInt32Type, &valuePtr);
        v11 = 0;
        *(a1 + v10 + 2724) = valuePtr;
        v10 = 1;
        if ((v12 & 1) == 0)
        {
          result = AVE_Log_CheckLevel(0x1Eu, 7);
          if (result)
          {
            v17 = AVE_Log_CheckConsole(0x1Eu);
            v18 = AVE_GetCurrTime();
            v19 = AVE_Log_GetLevelStr(7);
            v20 = *a2;
            if (v17)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v18, 30, v19, a1, a1[7], *a2, 2);
              v18 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v21 = a1[7];
            }

            v50 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v18);
            return 0;
          }

          return result;
        }
      }

      if (!AVE_Log_CheckLevel(0x1Eu, 4))
      {
        return 4294965293;
      }

      v45 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v46 = a1[7];
      v47 = CFGetTypeID(a4);
      if (v45)
      {
        v52 = v46;
        v31 = 10386;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10386, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v52, a2, a3, a4, v47);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        v48 = a1[7];
        CFGetTypeID(a4);
        v35 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
        goto LABEL_20;
      }

      v39 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
      v40 = 10386;
      goto LABEL_28;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v36 = AVE_Log_CheckConsole(0x1Eu);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | expecting %d values received %d %p %lld %p %p %p\n", v37, 30, v38, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10373, "iNum == ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", 2, Count, a1, a1[7], a2, a3, a4);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
      }

      v54 = a1[7];
      syslog(3, "%lld %d AVE %s: %s:%d %s | expecting %d values received %d %p %lld %p %p %p", v37, 30, v38, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10373, "iNum == ((2) < ((63 + 1)) ? (2) : ((63 + 1)))");
    }

    return 4294965292;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v23, 30, v24, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10355, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v25 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v25, 30, v49, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v23, 30, v24, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_GetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10433, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, *(a1 + 2639));
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v30 = a1[7];
          v39 = *(a1 + 2639);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10433, "pArray != __null", a1);
      }

      return 4294966293;
    }

    v11 = Mutable;
    if (*(a1 + 2639))
    {
      v12 = 2724;
      v13 = 10896;
      while (1)
      {
        v14 = CFNumberCreate(allocator, kCFNumberSInt8Type, a1 + v13);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        CFArrayAppendValue(v11, v14);
        CFRelease(v15);
        v16 = v12 - 2723;
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v32, 30, v33, "AVE_Prop_HEVC_GetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10442, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, v12 - 2724, *(a1 + v12));
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          v40 = *(a1 + v12);
          v38 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v32, 30, v33, "AVE_Prop_HEVC_GetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10442, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_GetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10424, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v26 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v26, 30, v34, "AVE_Prop_HEVC_GetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10424);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v24, 30, v25, "AVE_Prop_HEVC_GetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10424);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetInputPixelFormat(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (a1[6172] == 1 || a1[2639] == 1)
      {
        CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
        v9 = AVE_PixelFmt_CheckSupportedType(a1[17], a1[16], a1[179], 2, valuePtr);
        if (v9)
        {
          v10 = v9;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v11 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v11)
            {
              printf("%lld %d AVE %s: %s:%d %s | invalid input pixel format %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetInputPixelFormat", 10528, "ret == 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              v14 = *(a1 + 7);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | invalid input pixel format %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetInputPixelFormat", 10528, "ret == 0");
          }
        }

        else
        {
          v25 = AVE_PixelFmt_FindByType(valuePtr);
          if (v25)
          {
            v26 = valuePtr;
            a1[26633] = valuePtr;
            a1[6172] = *(v25 + 3);
            *(a1 + 10781) = 1;
            a1[27000] = v26;
            if (AVE_Log_CheckLevel(0x1Eu, 7))
            {
              v27 = AVE_Log_CheckConsole(0x1Eu);
              v28 = AVE_GetCurrTime();
              v29 = AVE_Log_GetLevelStr(7);
              v30 = *a2;
              if (v27)
              {
                printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v28, 30, v29, a1, *(a1 + 7), *a2, valuePtr);
                v28 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(7);
                v31 = *(a1 + 7);
              }

              v42 = *a2;
              syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v28);
            }

            return 0;
          }

          else
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v37 = AVE_Log_CheckConsole(0x1Eu);
              v38 = AVE_GetCurrTime();
              v39 = AVE_Log_GetLevelStr(4);
              if (v37)
              {
                printf("%lld %d AVE %s: %s:%d %s | failed to get pixel format details %p %lld %p %p %p %d\n", v38, 30, v39, "AVE_Prop_HEVC_SetInputPixelFormat", 10534, "pPixelFmt != __null", a1, *(a1 + 7), a2, a3, a4, valuePtr);
                v38 = AVE_GetCurrTime();
                v39 = AVE_Log_GetLevelStr(4);
                v40 = *(a1 + 7);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get pixel format details %p %lld %p %p %p %d", v38, 30, v39, "AVE_Prop_HEVC_SetInputPixelFormat", 10534, "pPixelFmt != __null");
            }

            return 4294966296;
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v32 = AVE_Log_CheckConsole(0x1Eu);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support  ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444                     %s %p %p %p %p\n", v33, 30, v34, "AVE_Prop_HEVC_SetInputPixelFormat", 10514, "psINS->VideoParams.iLayerNum == 1", *a2, a1, a2, a3, a4);
            v33 = AVE_GetCurrTime();
            v34 = AVE_Log_GetLevelStr(4);
            v35 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support  ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444                     %s %p %p %p %p", v33, 30, v34, "AVE_Prop_HEVC_SetInputPixelFormat", 10514);
        }

        return 4294965292;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v19 = AVE_Log_CheckConsole(0x1Eu);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        v22 = *(a1 + 7);
        v23 = CFGetTypeID(a4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_HEVC_SetInputPixelFormat", 10506, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_HEVC_SetInputPixelFormat", 10506, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_HEVC_SetInputPixelFormat", 10496, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v18 = AVE_GetCurrTime();
        v41 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v41, "AVE_Prop_HEVC_SetInputPixelFormat");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_HEVC_SetInputPixelFormat");
      }
    }

    return 4294966295;
  }

  return v10;
}

uint64_t AVE_Prop_HEVC_GetInputPixelFormat(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  valuePtr = 0;
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[6172];
    switch(v10)
    {
      case 3:
        if (a1[7839] == 1)
        {
          v26 = 875836518;
        }

        else
        {
          v26 = 875836534;
        }

        valuePtr = v26;
        v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
        if (!v12)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v32 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (!v32)
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetInputPixelFormat", 10607, "pNum != __null", a1);
              return 4294966293;
            }

            v16 = 10607;
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetInputPixelFormat", 10607, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
            goto LABEL_40;
          }

          return 4294966293;
        }

        break;
      case 2:
        if (a1[7839] == 1)
        {
          v22 = 875704934;
        }

        else
        {
          v22 = 875704950;
        }

        valuePtr = v22;
        v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
        if (!v12)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v23 = AVE_Log_CheckConsole(0x1Eu);
            v24 = AVE_GetCurrTime();
            v25 = AVE_Log_GetLevelStr(4);
            if (!v23)
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v24, 30, v25, "AVE_Prop_HEVC_GetInputPixelFormat", 10597, "pNum != __null", a1);
              return 4294966293;
            }

            v16 = 10597;
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v24, 30, v25, "AVE_Prop_HEVC_GetInputPixelFormat", 10597, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
            goto LABEL_40;
          }

          return 4294966293;
        }

        break;
      case 1:
        if (a1[7839] == 1)
        {
          v11 = 875704422;
        }

        else
        {
          v11 = 875704438;
        }

        valuePtr = v11;
        v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
        if (!v12)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v13 = AVE_Log_CheckConsole(0x1Eu);
            v14 = AVE_GetCurrTime();
            v15 = AVE_Log_GetLevelStr(4);
            if (!v13)
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v14, 30, v15, "AVE_Prop_HEVC_GetInputPixelFormat", 10587, "pNum != __null", a1);
              return 4294966293;
            }

            v16 = 10587;
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v14, 30, v15, "AVE_Prop_HEVC_GetInputPixelFormat", 10587, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
LABEL_40:
            v35 = AVE_GetCurrTime();
            v36 = AVE_Log_GetLevelStr(4);
            v37 = *(a1 + 7);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v35, 30, v36, "AVE_Prop_HEVC_GetInputPixelFormat", v16, "pNum != __null", a1);
            return 4294966293;
          }

          return 4294966293;
        }

        break;
      default:
        v27 = 0;
LABEL_33:
        *a5 = v27;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v28 = AVE_Log_CheckConsole(0x1Eu);
          v29 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(7);
          if (v28)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v29, 30, v30, a1, *(a1 + 7), *a2, valuePtr, v27);
            v29 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v31 = *(a1 + 7);
            v39 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v29, 30);
          return 0;
        }

        return result;
    }

    v27 = v12;
    goto LABEL_33;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v17 = AVE_Log_CheckConsole(0x1Eu);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetInputPixelFormat", 10572, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
      v20 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v38, "AVE_Prop_HEVC_GetInputPixelFormat", 10572);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetInputPixelFormat", 10572);
    }
  }

  return 4294966295;
}

uint64_t AVE_Prop_HEVC_SetOutputBitDepth(unsigned int *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = -1;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr & 0xFFFFFFFD) == 8)
      {
        a1[26689] = valuePtr;
        *(a1 + 10782) = 1;
        v10 = 2 * (v9 != 8);
        a1[6183] = v10;
        a1[6184] = v10;
        v11 = a1[26157];
        if ((v11 | 2) == 0xA && a1[2688] != 2 && (updated = AVE_UpdatePixelBufferDict(a1[17], a1[16], a1[179], 2, a1[2863], a1[2864], a1[360], a1[361], v10 | 8u, v11, 0x414C4C20u, *(a1 + 2)), updated))
        {
          v13 = updated;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v14 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v14)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetOutputBitDepth", 10696, "ret == 0", a1, *(a1 + 7), a2, a3, a4, v13);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              v17 = *(a1 + 7);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetOutputBitDepth", 10696, "ret == 0");
          }
        }

        else
        {
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v32 = AVE_Log_CheckConsole(0x1Eu);
            v33 = AVE_GetCurrTime();
            v34 = AVE_Log_GetLevelStr(7);
            v35 = *a2;
            if (v32)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v33, 30, v34, a1, *(a1 + 7), *a2, valuePtr);
              v33 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v36 = *(a1 + 7);
            }

            v39 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v33);
          }

          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v28 = AVE_Log_CheckConsole(0x1Eu);
          v29 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v29, 30, v30, "AVE_Prop_HEVC_SetOutputBitDepth", 10663, "OutputBitDepth == 8 || OutputBitDepth == 10", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v29 = AVE_GetCurrTime();
            v30 = AVE_Log_GetLevelStr(4);
            v31 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_SetOutputBitDepth", 10663, "OutputBitDepth == 8 || OutputBitDepth == 10");
        }

        return 4294965292;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v22 = AVE_Log_CheckConsole(0x1Eu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        v25 = *(a1 + 7);
        v26 = CFGetTypeID(a4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetOutputBitDepth", 10654, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          v27 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetOutputBitDepth", 10654, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_SetOutputBitDepth", 10644, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v38, "AVE_Prop_HEVC_SetOutputBitDepth");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_SetOutputBitDepth");
      }
    }

    return 4294966295;
  }

  return v13;
}

uint64_t AVE_Prop_HEVC_GetOutputBitDepth(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[6183] + 8;
    valuePtr = v10;
    if (AVE_Log_CheckLevel(0x1Eu, 7))
    {
      v11 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v11)
      {
        printf("%lld %d AVE %s: FIG: asked for kVTCompressionPropertyKey_OutputBitDepth return %d\n", CurrTime, 30, LevelStr, v10);
        v14 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: FIG: asked for kVTCompressionPropertyKey_OutputBitDepth return %d", v14, 30, v30, v10);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: asked for kVTCompressionPropertyKey_OutputBitDepth return %d", CurrTime, 30, LevelStr, v10);
      }
    }

    v20 = CFNumberCreate(a3, kCFNumberSInt32Type, &valuePtr);
    if (v20)
    {
      v21 = v20;
      *a5 = v20;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v22 = AVE_Log_CheckConsole(0x1Eu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(7);
        if (v22)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v23, 30, v24, a1, *(a1 + 7), *a2, valuePtr, v21);
          v23 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v25 = *(a1 + 7);
          v32 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v23, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v26 = AVE_Log_CheckConsole(0x1Eu);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_GetOutputBitDepth", 10742, "pNum != __null", a1, *(a1 + 7), a2, a3, a4, a5, valuePtr);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          v29 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_GetOutputBitDepth", 10742, "pNum != __null", a1);
      }

      return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v16, 30, v17, "AVE_Prop_HEVC_GetOutputBitDepth", 10729, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v18 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v31, "AVE_Prop_HEVC_GetOutputBitDepth", 10729);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v16, 30, v17, "AVE_Prop_HEVC_GetOutputBitDepth", 10729);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetNumberOfSlices(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = AVE_DevCap_Find(a1[17]);
      if (v9)
      {
        v10 = v9;
        CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
        v11 = valuePtr;
        if ((valuePtr - 1) >= 0x20)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v33 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v33)
            {
              printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetNumberOfSlices", 10800, "numberOfSlices <= ((32) < (256) ? (32) : (256)) && numberOfSlices >= 1", a1, *(a1 + 7), a2, a3, a4, valuePtr, 1, 32);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              v36 = *(a1 + 7);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetNumberOfSlices", 10800, "numberOfSlices <= ((32) < (256) ? (32) : (256)) && numberOfSlices >= 1", a1);
          }

          return 4294965292;
        }

        else
        {
          v12 = (a1 + 2562);
          a1[26634] = valuePtr;
          if ((v11 - 2) <= 2)
          {
            *(a1 + 10512) = 1;
          }

          SliceMap = AVE_Enc_GenerateSliceMap(v11, a1[361], *(*(v10 + 8) + 16), *v12, a1 + 2563);
          if (SliceMap)
          {
            v14 = SliceMap;
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v15 = AVE_Log_CheckConsole(0x1Eu);
              v16 = AVE_GetCurrTime();
              v17 = AVE_Log_GetLevelStr(4);
              if (v15)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to generate slice map %d %d %d %d %p %d\n", v16, 30, v17, "AVE_Prop_HEVC_SetNumberOfSlices", 10816, "ret == 0", valuePtr, a1[361], *(*(v10 + 8) + 16), *v12, a1 + 2563, v14);
                v16 = AVE_GetCurrTime();
                v17 = AVE_Log_GetLevelStr(4);
                v18 = *(*(v10 + 8) + 16);
                v46 = *v12;
                v45 = a1[361];
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to generate slice map %d %d %d %d %p %d", v16, 30, v17, "AVE_Prop_HEVC_SetNumberOfSlices");
            }
          }

          else
          {
            if (AVE_Log_CheckLevel(0x1Eu, 7))
            {
              v37 = AVE_Log_CheckConsole(0x1Eu);
              v38 = AVE_GetCurrTime();
              v39 = AVE_Log_GetLevelStr(7);
              v40 = *a2;
              if (v37)
              {
                printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v38, 30, v39, a1, *(a1 + 7), *a2, valuePtr);
                v38 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(7);
                v41 = *(a1 + 7);
              }

              v44 = *a2;
              syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v38);
            }

            return 0;
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v29 = AVE_Log_CheckConsole(0x1Eu);
          v30 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          if (v29)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %p %p %d\n", v30, 30, v31, "AVE_Prop_HEVC_SetNumberOfSlices", 10790, "pDevCap != __null", a1, a3, a4, a1[17]);
            v30 = AVE_GetCurrTime();
            v31 = AVE_Log_GetLevelStr(4);
            v32 = a1[17];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %p %p %d", v30, 30, v31, "AVE_Prop_HEVC_SetNumberOfSlices");
        }

        return 4294966294;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v23 = AVE_Log_CheckConsole(0x1Eu);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        v26 = *(a1 + 7);
        v27 = CFGetTypeID(a4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_HEVC_SetNumberOfSlices", 10785, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          v28 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_HEVC_SetNumberOfSlices", 10785, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_SetNumberOfSlices", 10775, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v22 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v43, "AVE_Prop_HEVC_SetNumberOfSlices");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_SetNumberOfSlices");
      }
    }

    return 4294966295;
  }

  return v14;
}

uint64_t AVE_Prop_HEVC_GetNumberOfSlices(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2563];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetNumberOfSlices", 10858, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetNumberOfSlices", 10858, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetNumberOfSlices", 10848, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetNumberOfSlices", 10848);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetNumberOfSlices", 10848);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetSAOMode(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = -1;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 5)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v27 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetSAOMode", 10910, "(SAOMode >= SAO_MODE_DISABLED) && (SAOMode < SAO_MODE_INVALID)", a1, a1[7], a2, a3, a4, valuePtr, 0, 5);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v30 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetSAOMode", 10910, "(SAOMode >= SAO_MODE_DISABLED) && (SAOMode < SAO_MODE_INVALID)", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26690) = valuePtr;
        *(a1 + 2697) = v9;
        v10 = 8 * v9;
        *(a1 + 59393) = 0x101000100uLL >> v10;
        *(a1 + 59394) = 0x101010000uLL >> v10;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v12 = AVE_Log_CheckConsole(0x1Eu);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(7);
          v15 = *a2;
          if (v12)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v13, 30, v14, a1, a1[7], *a2, valuePtr);
            v13 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v16 = a1[7];
          }

          v32 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v13);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x1Eu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        v24 = a1[7];
        v25 = CFGetTypeID(a4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v22, 30, v23, "AVE_Prop_HEVC_SetSAOMode", 10900, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v24, a2, a3, a4, v25);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v26 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v22, 30, v23, "AVE_Prop_HEVC_SetSAOMode", 10900, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_SetSAOMode", 10890, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v20 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 30, v31, "AVE_Prop_HEVC_SetSAOMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_SetSAOMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetSAOMode(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2697];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetSAOMode", 10984, "pMode != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetSAOMode", 10984, "pMode != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSAOMode", 10974, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetSAOMode", 10974);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetSAOMode", 10974);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetMotionEstimationSearchMode(void *a1, const char **a2, const __CFString *a3, const void *a4)
{
  valuePtr = -1;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v23 = *(a1 + 7);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMotionEstimationSearchMode", 11028, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMotionEstimationSearchMode", 11028, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }

    CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
    if ((valuePtr & 0x80000000) == 0)
    {
      if (AVE_DevCap_FindSearchRangeMode(*(a1 + 17), 1, 2, valuePtr))
      {
        v9 = valuePtr;
        *(a1 + 26636) = valuePtr;
        *(a1 + 5084) = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 7), *a2, valuePtr);
            v12 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = *(a1 + 7);
          }

          v35 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }

        return result;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v30 = AVE_Log_CheckConsole(0x1Eu);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find search range mode %p %lld %p %p %p %d\n", v31, 30, v32, "AVE_Prop_HEVC_SetMotionEstimationSearchMode", 11044, "pSREntry != __null", a1, *(a1 + 7), a2, a3, a4, valuePtr);
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          v33 = *(a1 + 7);
        }

        else
        {
          v36 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find search range mode %p %lld %p %p %p %d", v31, 30, v32, "AVE_Prop_HEVC_SetMotionEstimationSearchMode", 11044, "pSREntry != __null");
      }

      return 4294965293;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v26 = AVE_Log_CheckConsole(0x1Eu);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetMotionEstimationSearchMode", 11037, "iMotionSearchRangeMode >= 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        v29 = *(a1 + 7);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetMotionEstimationSearchMode", 11037, "iMotionSearchRangeMode >= 0");
    }

    return 4294965292;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMotionEstimationSearchMode", 11018, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v34, "AVE_Prop_HEVC_SetMotionEstimationSearchMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetMotionEstimationSearchMode");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_GetMotionEstimationSearchMode(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 5084);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = a1[7];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMotionEstimationSearchMode", 11090, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMotionEstimationSearchMode", 11090, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMotionEstimationSearchMode", 11080, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetMotionEstimationSearchMode", 11080);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetMotionEstimationSearchMode", 11080);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetSupportedMotionSearchModes(unsigned int *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    SearchRange = AVE_DevCap_FindSearchRange(a1[17], 1, 2);
    if (SearchRange)
    {
      v11 = SearchRange;
      Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x29EDB9000]);
      if (Mutable)
      {
        v13 = Mutable;
        Array = AVE_SearchRange_MakeArray(v11 + 1, *v11, Mutable);
        if (Array)
        {
          v15 = Array;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v16 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v16)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to make CFMutableArrayRef %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11142, "ret == 0", a1, *(a1 + 7), a2, a3, a4, a5, *v11);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              v42 = *v11;
              v41 = *(a1 + 7);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make CFMutableArrayRef %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11142, "ret == 0", a1);
          }
        }

        else
        {
          *a5 = v13;
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v31 = AVE_Log_CheckConsole(0x1Eu);
            v32 = AVE_GetCurrTime();
            v33 = AVE_Log_GetLevelStr(7);
            v34 = *v11;
            if (v31)
            {
              printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v32, 30, v33, a1, *(a1 + 7), *a2, *v11, v13);
              v32 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v35 = *(a1 + 7);
              v39 = *v11;
              v38 = *a2;
            }

            else
            {
              v40 = *v11;
            }

            syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v32, 30);
          }

          return 0;
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
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFMutableArrayRef %p %lld %p %p %p %p\n", v28, 30, v29, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11137, "pArray != __null", a1, *(a1 + 7), a2, a3, a4, a5);
            v28 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            v30 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFMutableArrayRef %p %lld %p %p %p %p", v28, 30, v29, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11137, "pArray != __null");
        }

        return 4294966293;
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get search range %p %lld %p %p %p %p %d\n", v24, 30, v25, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11132, "pSR != __null", a1, *(a1 + 7), a2, a3, a4, a5, a1[17]);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          v26 = *(a1 + 7);
          v43 = a1[17];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get search range %p %lld %p %p %p %p %d", v24, 30, v25, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11132, "pSR != __null", a1);
      }

      return 4294966294;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11124, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v37, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11124);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11124);
      }
    }

    return 4294966295;
  }

  return v15;
}

uint64_t AVE_Prop_HEVC_SetEnableStatsCollect(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetEnableStatsCollect", 11194, "iEnableStatsCollect >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetEnableStatsCollect", 11194, "iEnableStatsCollect >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26637) = valuePtr;
        *(a1 + 366) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableStatsCollect", 11185, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableStatsCollect", 11185, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableStatsCollect", 11175, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetEnableStatsCollect");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetEnableStatsCollect");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEnableStatsCollect(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[366];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetEnableStatsCollect", 11240, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetEnableStatsCollect", 11240, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetEnableStatsCollect", 11230, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetEnableStatsCollect", 11230);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetEnableStatsCollect", 11230);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetCalculateMeanSquaredError(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26638] = v9;
      *(a1 + 181) = *(a1 + 181) & 0xFFFFFFFFF7FFFFFFLL | (v9 << 27);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetCalculateMeanSquaredError", 11283, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetCalculateMeanSquaredError", 11283, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetCalculateMeanSquaredError", 11273, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetCalculateMeanSquaredError");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetCalculateMeanSquaredError");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetCalculateMeanSquaredError(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[181] & 0x8000000;
    v11 = MEMORY[0x29EDB8EF8];
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
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
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v10 >> 27);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v17 = a1[7];
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetCalculateMeanSquaredError", 11328, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetCalculateMeanSquaredError", 11328);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetCalculateMeanSquaredError", 11328);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEnableMCTF(char *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = (a1 + 104628);
      Value = CFBooleanGetValue(a4);
      v11 = Value != 0;
      *(a1 + 26639) = v11;
      if (Value)
      {
        v12 = 960;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a1 + 179) & 0xFFFFFC3F | v12;
      *(a1 + 179) = v13;
      v14 = *v9;
      if (*v9 > 0xA || ((1 << v14) & 0x7C6) == 0 || *(a1 + 2688) == 2)
      {
        goto LABEL_39;
      }

      v15 = *(a1 + 6184) + 8;
      if (*(a1 + 6183) + 8 > v15)
      {
        v15 = *(a1 + 6183) + 8;
      }

      updated = AVE_UpdatePixelBufferDict(*(a1 + 17), *(a1 + 16), v13, 2, *(a1 + 2863), *(a1 + 2864), *(a1 + 360), *(a1 + 361), v15, v14, 0x414C4C20u, *(a1 + 2));
      if (updated)
      {
        v17 = updated;
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v18 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v18)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetEnableMCTF", 11414, "ret == 0", a1, *(a1 + 7), a2, a3, a4, v17);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v21 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetEnableMCTF", 11414, "ret == 0");
        }
      }

      else
      {
LABEL_39:
        if (AVE_Log_CheckLevel(0x1Eu, 7))
        {
          v32 = AVE_Log_CheckConsole(0x1Eu);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(7);
          v35 = *a2;
          if (v32)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v33, 30, v34, a1, *(a1 + 7), *a2, v11);
            v33 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v36 = *(a1 + 7);
          }

          v39 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v33);
        }

        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v26 = AVE_Log_CheckConsole(0x1Eu);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        v29 = *(a1 + 7);
        v30 = CFGetTypeID(a4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v27, 30, v28, "AVE_Prop_HEVC_SetEnableMCTF", 11375, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v29, a2, a3, a4, v30);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          v31 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v27, 30, v28, "AVE_Prop_HEVC_SetEnableMCTF", 11375, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v23, 30, v24, "AVE_Prop_HEVC_SetEnableMCTF", 11365, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v25 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v25, 30, v38, "AVE_Prop_HEVC_SetEnableMCTF");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v23, 30, v24, "AVE_Prop_HEVC_SetEnableMCTF");
      }
    }

    return 4294966295;
  }

  return v17;
}

uint64_t AVE_Prop_HEVC_GetEnableMCTF(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[179] & 0x3C0;
    v11 = MEMORY[0x29EDB8EF8];
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = v10 != 0;
      v14 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v13);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v18 = *(a1 + 7);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetEnableMCTF", 11446, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetEnableMCTF", 11446);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetEnableMCTF", 11446);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetLatencyMode(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 1) >= 2)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetLatencyMode", 11503, "iMCTFMode > AVE_MCTF_Mode_Invalid && iMCTFMode < AVE_MCTF_Mode_Max", a1, a1[7], a2, a3, a4, valuePtr, 0, 3);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetLatencyMode", 11503, "iMCTFMode > AVE_MCTF_Mode_Invalid && iMCTFMode < AVE_MCTF_Mode_Max", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26691) = valuePtr;
        *(a1 + 2638) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetLatencyMode", 11493, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetLatencyMode", 11493, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetLatencyMode", 11483, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetLatencyMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetLatencyMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetLatencyMode(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2638];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetLatencyMode", 11549, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetLatencyMode", 11549, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetLatencyMode", 11539, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetLatencyMode", 11539);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetLatencyMode", 11539);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetVideoResolutionAdaptation(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26640] = v9;
      *(a1 + 140) = *(a1 + 140) & 0xFFFFFFFFFFFFFFDFLL | (32 * v9);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetVideoResolutionAdaptation", 11592, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetVideoResolutionAdaptation", 11592, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetVideoResolutionAdaptation", 11582, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetVideoResolutionAdaptation");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetVideoResolutionAdaptation");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetVideoResolutionAdaptation(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[140] & 0x20;
    v11 = MEMORY[0x29EDB8EF8];
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
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
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v10 >> 5);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v17 = a1[7];
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetVideoResolutionAdaptation", 11637, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetVideoResolutionAdaptation", 11637);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetVideoResolutionAdaptation", 11637);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetVideoResolutionAdaptationType(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetVideoResolutionAdaptationType", 11694, "iVRAType >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetVideoResolutionAdaptationType", 11694, "iVRAType >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26641) = valuePtr;
        *(a1 + 2991) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetVideoResolutionAdaptationType", 11685, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetVideoResolutionAdaptationType", 11685, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetVideoResolutionAdaptationType", 11675, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetVideoResolutionAdaptationType");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetVideoResolutionAdaptationType");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetVideoResolutionAdaptationType(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2991];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetVideoResolutionAdaptationType", 11740, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetVideoResolutionAdaptationType", 11740, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetVideoResolutionAdaptationType", 11730, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetVideoResolutionAdaptationType", 11730);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetVideoResolutionAdaptationType", 11730);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetiChatUsageString(_DWORD *a1, const char **a2, const __CFString *a3, const void *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (CFEqual(a4, @"FaceTime"))
      {
        v9 = 0;
        goto LABEL_31;
      }

      if (CFEqual(a4, @"CarPlay"))
      {
        v9 = 1;
        goto LABEL_31;
      }

      if (CFEqual(a4, @"AirPlay"))
      {
        v9 = 2;
        goto LABEL_31;
      }

      if (CFEqual(a4, @"SafeView"))
      {
        v9 = 3;
        goto LABEL_31;
      }

      if (CFEqual(a4, @"ScreenSharing"))
      {
        v9 = 4;
        goto LABEL_31;
      }

      if (CFEqual(a4, @"MediaAnalysis"))
      {
        v9 = 5;
        goto LABEL_31;
      }

      if (CFEqual(a4, @"SideCar"))
      {
        v9 = 7;
LABEL_31:
        a1[26642] = v9;
        a1[2698] = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v21 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          v24 = *a2;
          if (v21)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v9);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v25 = *(a1 + 7);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
          return 0;
        }

        return result;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v26 = AVE_Log_CheckConsole(0x1Eu);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetiChatUsageString", 11819, "iFTUsageType != -1", a1, *(a1 + 7), a2, a3, a4, -1);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          v29 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetiChatUsageString", 11819, "iFTUsageType != -1");
      }

      return 4294965292;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v14 = AVE_Log_CheckConsole(0x1Eu);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        v17 = *(a1 + 7);
        v18 = CFGetTypeID(a4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetiChatUsageString", 11783, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v17, a2, a3, a4, v18);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(4);
          v19 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v15, 30, v16, "AVE_Prop_HEVC_SetiChatUsageString", 11783, "CFStringGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v10 = AVE_Log_CheckConsole(0x1Eu);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v11, 30, v12, "AVE_Prop_HEVC_SetiChatUsageString", 11773, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v13 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 30, v30, "AVE_Prop_HEVC_SetiChatUsageString");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v11, 30, v12, "AVE_Prop_HEVC_SetiChatUsageString");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_GetiChatUsageString(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, __CFString **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 2698);
    if (v10 > 7)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_29EDCFE88[v10];
    }

    *a5 = v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v17 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v17)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v10, 0);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v20 = a1[7];
        v22 = *a2;
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v12 = AVE_Log_CheckConsole(0x1Eu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v13, 30, v14, "AVE_Prop_HEVC_GetiChatUsageString", 11856, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v15 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v15, 30, v21, "AVE_Prop_HEVC_GetiChatUsageString", 11856);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v13, 30, v14, "AVE_Prop_HEVC_GetiChatUsageString", 11856);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEnableUserQPForFacetime(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26643] = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableUserQPForFacetime", 11935, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableUserQPForFacetime", 11935, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableUserQPForFacetime", 11925, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetEnableUserQPForFacetime");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetEnableUserQPForFacetime");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEnableUserQPForFacetime(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[26643];
    v11 = MEMORY[0x29EDB8F00];
    if (!v10)
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = v10 != 0;
      v14 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v13);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v18 = *(a1 + 7);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetEnableUserQPForFacetime", 11973, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetEnableUserQPForFacetime", 11973);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetEnableUserQPForFacetime", 11973);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetUsage(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v11 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!v11)
      {
        v43 = a3;
        v45 = a4;
        v41 = a1;
        v42 = a2;
        v38 = 12012;
        v39 = "pINS != __null && pEntry != __null && pKey != __null && pValue != __null";
        v37 = LevelStr;
        v21 = "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p";
LABEL_20:
        syslog(3, v21, CurrTime, 30, v37, "AVE_Prop_HEVC_SetUsage", v38, v39, v41, v42, v43, v45, v46, v47, v48, v49);
        return 4294966295;
      }

      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetUsage", 12012, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
      v14 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v36, "AVE_Prop_HEVC_SetUsage");
    }

    return 4294966295;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a4))
  {
    CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
    v9 = valuePtr;
    if (*(a1 + 10780) != 1 || valuePtr == a1[2723])
    {
      a1[26644] = valuePtr;
      if (v9 > 19)
      {
        if (v9 == 20)
        {
          v10 = 0;
        }

        else
        {
          if (v9 != 37)
          {
            goto LABEL_30;
          }

          v10 = 0;
          v9 = 10000;
        }

        a1[2723] = v9;
      }

      else
      {
        if (v9)
        {
          if (v9 == 1)
          {
            v10 = 0;
            a1[2723] = 1;
LABEL_38:
            *(a1 + 10780) = v9;
LABEL_39:
            if (AVE_Log_CheckLevel(0x1Eu, 7))
            {
              v30 = AVE_Log_CheckConsole(0x1Eu);
              v31 = AVE_GetCurrTime();
              v32 = AVE_Log_GetLevelStr(7);
              v33 = *a2;
              if (v30)
              {
                printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v31, 30, v32, a1, *(a1 + 7), *a2, valuePtr);
                v31 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(7);
                v34 = *(a1 + 7);
              }

              v40 = *a2;
              syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v31);
            }

            return v10;
          }

LABEL_30:
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v26 = AVE_Log_CheckConsole(0x1Eu);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            if (v26)
            {
              printf("%lld %d AVE %s: kVTCompressionPropertyKey_Usage %d not supportd %p %lld %p %p %p\n", v27, 30, v28, valuePtr, a1, *(a1 + 7), a2, a3, a4);
              v27 = AVE_GetCurrTime();
              v28 = AVE_Log_GetLevelStr(4);
              v29 = *(a1 + 7);
            }

            syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_Usage %d not supportd %p %lld %p %p %p", v27, 30, v28);
          }

          v10 = 4294965292;
          goto LABEL_39;
        }

        v10 = 0;
        a1[2723] = 0;
      }

      LOBYTE(v9) = 1;
      goto LABEL_38;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v22 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | bUsageModeSet = %d and called again with new value  %p %lld %p %p %p %d %d\n", CurrTime, 30, v23, "AVE_Prop_HEVC_SetUsage", 12041, "bUsageModeChanged == false", *(a1 + 10780), a1, *(a1 + 7), a2, a3, a4, valuePtr, a1[2723]);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        v50 = a1[2723];
        v44 = *(a1 + 7);
        syslog(3, "%lld %d AVE %s: %s:%d %s | bUsageModeSet = %d and called again with new value  %p %lld %p %p %p %d %d", v24, 30, v25, "AVE_Prop_HEVC_SetUsage", 12041, "bUsageModeChanged == false", *(a1 + 10780));
        return 4294966295;
      }

      v48 = valuePtr;
      v49 = a1[2723];
      v46 = a3;
      v47 = a4;
      v43 = *(a1 + 7);
      v45 = a2;
      v41 = *(a1 + 10780);
      v42 = a1;
      v38 = 12041;
      v39 = "bUsageModeChanged == false";
      v37 = v23;
      v21 = "%lld %d AVE %s: %s:%d %s | bUsageModeSet = %d and called again with new value  %p %lld %p %p %p %d %d";
      goto LABEL_20;
    }

    return 4294966295;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v15 = AVE_Log_CheckConsole(0x1Eu);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    v18 = *(a1 + 7);
    v19 = CFGetTypeID(a4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_HEVC_SetUsage", 12022, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      v20 = *(a1 + 7);
      CFGetTypeID(a4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_HEVC_SetUsage", 12022, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
  }

  return 4294965293;
}

uint64_t AVE_Prop_HEVC_GetUsage(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2723];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetUsage", 12118, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetUsage", 12118, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetUsage", 12108, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetUsage", 12108);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetUsage", 12108);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEncodesDepth(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26645] = v9;
      a1[334] = a1[334] & 0xFBFFFFFF | (v9 << 26);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEncodesDepth", 12160, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEncodesDepth", 12160, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEncodesDepth", 12150, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetEncodesDepth");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetEncodesDepth");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEncodesDepth(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[334] & 0x4000000;
    v11 = MEMORY[0x29EDB8EF8];
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v16 = *a2;
      v17 = v10 >> 26;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v17);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v18 = *(a1 + 7);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetEncodesDepth", 12206, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetEncodesDepth", 12206);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetEncodesDepth", 12206);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEncodesDisparity(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26646] = v9;
      a1[334] = a1[334] & 0xFBFFFFFF | (v9 << 26);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEncodesDisparity", 12255, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEncodesDisparity", 12255, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEncodesDisparity", 12245, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetEncodesDisparity");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetEncodesDisparity");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEncodesDisparity(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[334] & 0x4000000;
    v11 = MEMORY[0x29EDB8EF8];
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v16 = *a2;
      v17 = v10 >> 26;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v17);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v18 = *(a1 + 7);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetEncodesDisparity", 12301, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetEncodesDisparity", 12301);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetEncodesDisparity", 12301);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEncodesAlpha(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26725] = v9;
      *(a1 + 10904) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEncodesAlpha", 12349, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEncodesAlpha", 12349, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEncodesAlpha", 12339, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetEncodesAlpha");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetEncodesAlpha");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEncodesAlpha(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10904];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10904])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEncodesAlpha", 12388, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetEncodesAlpha", 12388);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetEncodesAlpha", 12388);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetSourceFrameCount(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetSourceFrameCount", 12446, "iSourceFrameCount >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetSourceFrameCount", 12446, "iSourceFrameCount >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26647) = valuePtr;
        *(a1 + 180) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetSourceFrameCount", 12437, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetSourceFrameCount", 12437, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetSourceFrameCount", 12427, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetSourceFrameCount");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetSourceFrameCount");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetSourceFrameCount(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[180];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetSourceFrameCount", 12492, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetSourceFrameCount", 12492, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSourceFrameCount", 12482, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetSourceFrameCount", 12482);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetSourceFrameCount", 12482);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetExpectedDuration(double *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberDoubleType, &valuePtr);
      if (valuePtr <= 0.0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v24 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v24)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetExpectedDuration", 12544, "fDuration > 0.0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v27 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetExpectedDuration", 12544);
        }

        return 4294965292;
      }

      else
      {
        a1[13324] = valuePtr;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v10 = AVE_Log_CheckConsole(0x1Eu);
          v11 = AVE_GetCurrTime();
          v12 = AVE_Log_GetLevelStr(7);
          if (v10)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %f\n", v11, 30, v12, a1, *(a1 + 7), *a2, valuePtr);
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v13 = *(a1 + 7);
            v29 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f");
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        v21 = *(a1 + 7);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetExpectedDuration", 12535, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          v23 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetExpectedDuration", 12535, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v14 = AVE_Log_CheckConsole(0x1Eu);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetExpectedDuration", 12525, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v28, "AVE_Prop_HEVC_SetExpectedDuration");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetExpectedDuration");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetExpectedDuration(double *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[13324];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", CurrTime);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v22, 30, v23, "AVE_Prop_HEVC_GetExpectedDuration", 12591, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v22, 30, v23, "AVE_Prop_HEVC_GetExpectedDuration", 12591, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetExpectedDuration", 12580, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetExpectedDuration", 12580);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetExpectedDuration", 12580);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetQuantizationScalingMatrixPreset(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr > 0)
      {
        switch(valuePtr)
        {
          case 4:
            v10 = 8;
            break;
          case 2:
            v10 = 0;
            break;
          case 1:
            v10 = 1;
            break;
          default:
            a1[2702] = 0;
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v31 = AVE_Log_CheckConsole(0x1Eu);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              if (v31)
              {
                printf("%lld %d AVE %s: %s:%d %s | QuantizationScalingMatrixPreset value %d not supported %p %lld %p %p %p [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetQuantizationScalingMatrixPreset", 12666, "false", valuePtr, a1, *(a1 + 7), a2, a3, a4, 2, 4);
                CurrTime = AVE_GetCurrTime();
                LevelStr = AVE_Log_GetLevelStr(4);
                v34 = *(a1 + 7);
              }

              else
              {
                v38 = *(a1 + 7);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | QuantizationScalingMatrixPreset value %d not supported %p %lld %p %p %p [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetQuantizationScalingMatrixPreset", 12666, "false", valuePtr);
            }

            return 4294965292;
        }

        a1[2702] = v10;
        a1[26650] = v9;
        *(a1 + 10845) = 1;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(7);
          v29 = *a2;
          if (v26)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v27, 30, v28, a1, *(a1 + 7), *a2, valuePtr);
            v27 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v30 = *(a1 + 7);
          }

          v36 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v27);
          return 0;
        }

        return result;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v22 = AVE_Log_CheckConsole(0x1Eu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v23, 30, v24, "AVE_Prop_HEVC_SetQuantizationScalingMatrixPreset", 12643, "iQSMatrixPreset > 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
        }

        else
        {
          v37 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v23, 30, v24, "AVE_Prop_HEVC_SetQuantizationScalingMatrixPreset", 12643, "iQSMatrixPreset > 0");
      }

      return 4294965292;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x1Eu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      v18 = *(a1 + 7);
      v19 = CFGetTypeID(a4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_HEVC_SetQuantizationScalingMatrixPreset", 12634, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
        v16 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        v20 = *(a1 + 7);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_HEVC_SetQuantizationScalingMatrixPreset", 12634, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v11 = AVE_Log_CheckConsole(0x1Eu);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_HEVC_SetQuantizationScalingMatrixPreset", 12624, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v35, "AVE_Prop_HEVC_SetQuantizationScalingMatrixPreset");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_HEVC_SetQuantizationScalingMatrixPreset");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_GetQuantizationScalingMatrixPreset(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  valuePtr = 0;
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[2702];
    if (v10)
    {
      if (v10 == 8)
      {
        valuePtr = 4;
        v11 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
        if (!v11)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v21 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (!v21)
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetQuantizationScalingMatrixPreset", 12730, "pNum != __null", a1);
              return 4294966293;
            }

            v15 = 12730;
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetQuantizationScalingMatrixPreset", 12730, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
            goto LABEL_31;
          }

          return 4294966293;
        }
      }

      else
      {
        if (v10 != 1)
        {
          v24 = 0;
LABEL_24:
          *a5 = v24;
          result = AVE_Log_CheckLevel(0x1Eu, 7);
          if (result)
          {
            v25 = AVE_Log_CheckConsole(0x1Eu);
            v26 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(7);
            if (v25)
            {
              printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v26, 30, v27, a1, *(a1 + 7), *a2, valuePtr, v24);
              v26 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v28 = *(a1 + 7);
              v36 = *a2;
            }

            syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v26, 30);
            return 0;
          }

          return result;
        }

        valuePtr = 1;
        v11 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
        if (!v11)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v12 = AVE_Log_CheckConsole(0x1Eu);
            v13 = AVE_GetCurrTime();
            v14 = AVE_Log_GetLevelStr(4);
            if (!v12)
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v13, 30, v14, "AVE_Prop_HEVC_GetQuantizationScalingMatrixPreset", 12713, "pNum != __null", a1);
              return 4294966293;
            }

            v15 = 12713;
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v13, 30, v14, "AVE_Prop_HEVC_GetQuantizationScalingMatrixPreset", 12713, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
LABEL_31:
            v32 = AVE_GetCurrTime();
            v33 = AVE_Log_GetLevelStr(4);
            v34 = *(a1 + 7);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v32, 30, v33, "AVE_Prop_HEVC_GetQuantizationScalingMatrixPreset", v15, "pNum != __null", a1);
            return 4294966293;
          }

          return 4294966293;
        }
      }
    }

    else
    {
      valuePtr = 2;
      v11 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
      if (!v11)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v29 = AVE_Log_CheckConsole(0x1Eu);
          v30 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          if (!v29)
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v30, 30, v31, "AVE_Prop_HEVC_GetQuantizationScalingMatrixPreset", 12721, "pNum != __null", a1);
            return 4294966293;
          }

          v15 = 12721;
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v30, 30, v31, "AVE_Prop_HEVC_GetQuantizationScalingMatrixPreset", 12721, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          goto LABEL_31;
        }

        return 4294966293;
      }
    }

    v24 = v11;
    goto LABEL_24;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v16 = AVE_Log_CheckConsole(0x1Eu);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(4);
    if (v16)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetQuantizationScalingMatrixPreset", 12702, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
      v19 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v35, "AVE_Prop_HEVC_GetQuantizationScalingMatrixPreset", 12702);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetQuantizationScalingMatrixPreset", 12702);
    }
  }

  return 4294966295;
}

uint64_t AVE_Prop_HEVC_GetUsingHardwareAcceleratedVideoEncoder(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  *a5 = *MEMORY[0x29EDB8F00];
  if (AVE_Log_CheckLevel(0x1Eu, 7))
  {
    v7 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v10 = *a2;
    if (v7)
    {
      printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, 1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v11 = a1[7];
    }

    v13 = *a2;
    syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
  }

  return 0;
}

uint64_t AVE_Prop_HEVC_SetParavirtualized(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26651] = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetParavirtualized", 12804, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetParavirtualized", 12804, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetParavirtualized", 12794, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetParavirtualized");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetParavirtualized");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetParavirtualized(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[26651];
    v11 = MEMORY[0x29EDB8F00];
    if (v10 <= 0)
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = v10 > 0;
      v14 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v13);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v18 = *(a1 + 7);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetParavirtualized", 12842, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetParavirtualized", 12842);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetParavirtualized", 12842);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEncoderEncryptionData(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[13363] = valuePtr;
        a1[1473] = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_HEVC_SetEncoderEncryptionData", 12900, "iEncryptKey != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_HEVC_SetEncoderEncryptionData", 12900, "iEncryptKey != 0");
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEncoderEncryptionData", 12891, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEncoderEncryptionData", 12891, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEncoderEncryptionData", 12881, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetEncoderEncryptionData");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetEncoderEncryptionData");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEncoderEncryptionData(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[1473];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = a1[7];
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v22, 30, v23, "AVE_Prop_HEVC_GetEncoderEncryptionData", 12947, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v22, 30, v23, "AVE_Prop_HEVC_GetEncoderEncryptionData", 12947, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetEncoderEncryptionData", 12936, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetEncoderEncryptionData", 12936);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetEncoderEncryptionData", 12936);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEncoderEncryptionKeyID(char *a1, const char **a2, const __CFString *a3, const __CFData *a4)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v21 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetEncoderEncryptionKeyID", 12981, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v24 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v24, 30, v39, "AVE_Prop_HEVC_SetEncoderEncryptionKeyID");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetEncoderEncryptionKeyID");
      }
    }

    return 4294966295;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID == CFGetTypeID(a4))
  {
    BytePtr = CFDataGetBytePtr(a4);
    if (BytePtr)
    {
      v10 = BytePtr;
      Length = CFDataGetLength(a4);
      if (Length == 16)
      {
        *(a1 + 26993) = 1;
        *(a1 + 107976) = *v10;
        *(a1 + 11980) = *v10;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v13 = AVE_Log_CheckConsole(0x1Eu);
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(7);
          v16 = *(a1 + 7);
          v17 = *a2;
          if (v13)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s\n", v14, 30, v15, a1, *(a1 + 7), v17);
            v18 = AVE_GetCurrTime();
            v19 = AVE_Log_GetLevelStr(7);
            v20 = *(a1 + 7);
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s", v18, 30, v19, a1, v20, *a2);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s", v14, 30, v15, a1, *(a1 + 7), v17);
          }

          return 0;
        }
      }

      else
      {
        v34 = Length;
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v35 = AVE_Log_CheckConsole(0x1Eu);
          v36 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          if (v35)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid EncoderEncryptionKeyID size %p %lld %p %p %p %ld (expected size %d)\n", v36, 30, v37, "AVE_Prop_HEVC_SetEncoderEncryptionKeyID", 13002, "size == 16", a1, *(a1 + 7), a2, a3, a4, v34, 16);
            v36 = AVE_GetCurrTime();
            v37 = AVE_Log_GetLevelStr(4);
            v38 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid EncoderEncryptionKeyID size %p %lld %p %p %p %ld (expected size %d)", v36, 30, v37, "AVE_Prop_HEVC_SetEncoderEncryptionKeyID", 13002, "size == 16", a1);
        }

        return 4294965292;
      }

      return result;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v31 = AVE_Log_CheckConsole(0x1Eu);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(4);
      if (v31)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get CFDataGetBytePtr  %p %lld %p %p %p\n", v32, 30, v33, "AVE_Prop_HEVC_SetEncoderEncryptionKeyID", 12996, "pData != __null", a1, *(a1 + 7), a2, a3, a4);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
      }

      v40 = *(a1 + 7);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFDataGetBytePtr  %p %lld %p %p %p", v32, 30, v33, "AVE_Prop_HEVC_SetEncoderEncryptionKeyID", 12996);
    }

    return 4294966295;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v25 = AVE_Log_CheckConsole(0x1Eu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(4);
    v28 = *(a1 + 7);
    v29 = CFGetTypeID(a4);
    if (v25)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_HEVC_SetEncoderEncryptionKeyID", 12991, "CFDataGetTypeID() == CFGetTypeID(pValue)", a1, v28, a2, a3, a4, v29);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      v30 = *(a1 + 7);
      CFGetTypeID(a4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v26, 30, v27, "AVE_Prop_HEVC_SetEncoderEncryptionKeyID", 12991, "CFDataGetTypeID() == CFGetTypeID(pValue)");
  }

  return 4294965293;
}

uint64_t AVE_Prop_HEVC_GetEncoderEncryptionKeyID(const UInt8 *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFDataRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if (*(a1 + 26993))
    {
      v10 = CFDataCreate(allocator, a1 + 107976, 16);
      if (!v10)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v11)
          {
            printf("%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %s\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetEncoderEncryptionKeyID", 13049, "pData != __null", a1, *(a1 + 7), a2, allocator, a4, a5, a1 + 107976);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v26 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %s", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetEncoderEncryptionKeyID", 13049, "pData != __null", a1);
        }

        return 4294966293;
      }
    }

    else
    {
      v10 = 0;
    }

    *a5 = v10;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(7);
      v22 = *a2;
      if (v19)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v20, 30, v21, a1, *(a1 + 7), *a2, v10);
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v23 = *(a1 + 7);
      }

      v25 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v20);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v14 = AVE_Log_CheckConsole(0x1Eu);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_GetEncoderEncryptionKeyID", 13038, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v17 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v24, "AVE_Prop_HEVC_GetEncoderEncryptionKeyID", 13038);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_GetEncoderEncryptionKeyID", 13038);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetSupportedPresetDictionaries(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 13);
    if (v10)
    {
      v11 = CFGetRetainCount(v10);
      if (v11 != 1 && AVE_Log_CheckLevel(0x1Eu, 5))
      {
        v12 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(5);
        v15 = *(a1 + 7);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d preset dictionary reference count %p %lld %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetSupportedPresetDictionaries", 13098, a1, *(a1 + 7), v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(5);
          v16 = *(a1 + 7);
        }

        else
        {
          v36 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d preset dictionary reference count %p %lld %d", CurrTime, 30);
      }

      CFRetain(*(a1 + 13));
      *a5 = *(a1 + 13);
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v26 = AVE_Log_CheckConsole(0x1Eu);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(7);
        v29 = *a2;
        if (v26)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v27, 30, v28, a1, *(a1 + 7), *a2, *(a1 + 13));
          v27 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v30 = *(a1 + 7);
          v31 = *a2;
          v34 = *a2;
          v37 = *(a1 + 13);
        }

        else
        {
          v35 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v27);
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
          printf("%lld %d AVE %s: %s:%d %s | preset dictionary not ready %p %p %p %p %p\n", v22, 30, v23, "AVE_Prop_HEVC_GetSupportedPresetDictionaries", 13091, "psINS->pPresetDict != __null", a1, a2, a3, a4, a5);
          v24 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | preset dictionary not ready %p %p %p %p %p", v24, 30, v33, "AVE_Prop_HEVC_GetSupportedPresetDictionaries", 13091);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | preset dictionary not ready %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetSupportedPresetDictionaries", 13091);
        }
      }

      return 4294966287;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSupportedPresetDictionaries", 13083, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v32, "AVE_Prop_HEVC_GetSupportedPresetDictionaries", 13083);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetSupportedPresetDictionaries", 13083);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetSwFeatureOn(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[13365] = valuePtr;
        a1[181] |= v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_HEVC_SetSwFeatureOn", 13153, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_HEVC_SetSwFeatureOn", 13153, "iFeature != 0");
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetSwFeatureOn", 13144, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetSwFeatureOn", 13144, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetSwFeatureOn", 13134, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetSwFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetSwFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetSwFeatureOn(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[181];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = a1[7];
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v22, 30, v23, "AVE_Prop_HEVC_GetSwFeatureOn", 13199, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v22, 30, v23, "AVE_Prop_HEVC_GetSwFeatureOn", 13199, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSwFeatureOn", 13189, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetSwFeatureOn", 13189);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetSwFeatureOn", 13189);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetSwFeatureOff(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[13366] = valuePtr;
        a1[181] &= ~v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_HEVC_SetSwFeatureOff", 13250, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_HEVC_SetSwFeatureOff", 13250, "iFeature != 0");
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetSwFeatureOff", 13241, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetSwFeatureOff", 13241, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetSwFeatureOff", 13231, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetSwFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetSwFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetSwFeatureOff(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[181];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = a1[7];
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v22, 30, v23, "AVE_Prop_HEVC_GetSwFeatureOff", 13296, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v22, 30, v23, "AVE_Prop_HEVC_GetSwFeatureOff", 13296, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSwFeatureOff", 13286, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetSwFeatureOff", 13286);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetSwFeatureOff", 13286);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetHwFeatureOn(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[13367] = valuePtr;
        a1[182] |= v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_HEVC_SetHwFeatureOn", 13347, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_HEVC_SetHwFeatureOn", 13347, "iFeature != 0");
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetHwFeatureOn", 13338, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetHwFeatureOn", 13338, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetHwFeatureOn", 13328, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetHwFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetHwFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetHwFeatureOn(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[182];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = a1[7];
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v22, 30, v23, "AVE_Prop_HEVC_GetHwFeatureOn", 13393, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v22, 30, v23, "AVE_Prop_HEVC_GetHwFeatureOn", 13393, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetHwFeatureOn", 13383, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetHwFeatureOn", 13383);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetHwFeatureOn", 13383);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetHwFeatureOff(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[13368] = valuePtr;
        a1[182] &= ~v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_HEVC_SetHwFeatureOff", 13444, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_HEVC_SetHwFeatureOff", 13444, "iFeature != 0");
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetHwFeatureOff", 13435, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetHwFeatureOff", 13435, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetHwFeatureOff", 13425, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetHwFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetHwFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetHwFeatureOff(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[182];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = a1[7];
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v22, 30, v23, "AVE_Prop_HEVC_GetHwFeatureOff", 13490, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v22, 30, v23, "AVE_Prop_HEVC_GetHwFeatureOff", 13490, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetHwFeatureOff", 13480, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetHwFeatureOff", 13480);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetHwFeatureOff", 13480);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetPerfFeatureOn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[26738] = valuePtr;
        a1[172] |= v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = *(a1 + 7);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", CurrTime);
          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_HEVC_SetPerfFeatureOn", 13541, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_HEVC_SetPerfFeatureOn", 13541, "iFeature != 0");
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetPerfFeatureOn", 13532, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetPerfFeatureOn", 13532, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetPerfFeatureOn", 13522, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetPerfFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetPerfFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetPerfFeatureOn(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[172];
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_HEVC_GetPerfFeatureOn", 13587, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_HEVC_GetPerfFeatureOn", 13587, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetPerfFeatureOn", 13577, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetPerfFeatureOn", 13577);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetPerfFeatureOn", 13577);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetPerfFeatureOff(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[26739] = valuePtr;
        a1[172] &= ~v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = *(a1 + 7);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", CurrTime);
          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_HEVC_SetPerfFeatureOff", 13638, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_HEVC_SetPerfFeatureOff", 13638, "iFeature != 0");
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetPerfFeatureOff", 13629, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetPerfFeatureOff", 13629, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetPerfFeatureOff", 13619, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetPerfFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetPerfFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetPerfFeatureOff(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[172];
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_HEVC_GetPerfFeatureOff", 13684, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_HEVC_GetPerfFeatureOff", 13684, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetPerfFeatureOff", 13674, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetPerfFeatureOff", 13674);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetPerfFeatureOff", 13674);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetSVENum(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 1) >= 4)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetSVENum", 13735, "iNum > 0 && iNum <= 4", a1, a1[7], a2, a3, a4, valuePtr, 0, 4);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetSVENum", 13735, "iNum > 0 && iNum <= 4", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26740) = valuePtr;
        *(a1 + 2870) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetSVENum", 13726, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetSVENum", 13726, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetSVENum", 13716, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetSVENum");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetSVENum");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetSVENum(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2870];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetSVENum", 13781, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetSVENum", 13781, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSVENum", 13771, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetSVENum", 13771);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetSVENum", 13771);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetSVEMap(void *a1, const char **a2, const __CFString *a3, const __CFString *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Str = AVE_CFStr_GetStr(a4, a1 + 106964, 128);
      AVE_SNPrintf(a1 + 106964, 128, "%s", v10, v11, v12, v13, v14, Str);
      v15 = AVE_DLB_ParseCfg(a1 + 106964, a1 + 2866);
      if (v15)
      {
        v16 = v15;
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v17 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to parse DLB configuration %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetSVEMap", 13833, "ret == 0", a1, *(a1 + 7), a2, a3, a4, v16);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v20 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to parse DLB configuration %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetSVEMap", 13833, "ret == 0");
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 7))
        {
          v31 = AVE_Log_CheckConsole(0x1Eu);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(7);
          v34 = *a2;
          if (v31)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %s\n", v32, 30, v33, a1, *(a1 + 7), *a2, a1 + 106964);
            v32 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v35 = *(a1 + 7);
          }

          v38 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %s", v32);
        }

        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v25 = AVE_Log_CheckConsole(0x1Eu);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        v28 = *(a1 + 7);
        v29 = CFGetTypeID(a4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_HEVC_SetSVEMap", 13823, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v28, a2, a3, a4, v29);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(4);
          v30 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v26, 30, v27, "AVE_Prop_HEVC_SetSVEMap", 13823, "CFStringGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v22, 30, v23, "AVE_Prop_HEVC_SetSVEMap", 13813, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v24 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v24, 30, v37, "AVE_Prop_HEVC_SetSVEMap");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_SetSVEMap");
      }
    }

    return 4294966295;
  }

  return v16;
}

uint64_t AVE_Prop_HEVC_GetSVEMap(const char *a1, const char **a2, CFAllocatorRef alloc, const __CFString *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = CFStringCreateWithCString(alloc, a1 + 106964, 0);
    if (v10)
    {
      *a5 = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v12 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v15 = *a2;
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %s\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, a1 + 106964);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = *(a1 + 7);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %s", CurrTime);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s\n", v22, 30, v23, "AVE_Prop_HEVC_GetSVEMap", 13874, "pStr != __null", a1, alloc, a4, a5, a1 + 106964);
          v24 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v24, 30, v26, "AVE_Prop_HEVC_GetSVEMap", 13874);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v22, 30, v23, "AVE_Prop_HEVC_GetSVEMap", 13874);
        }
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSVEMap", 13865, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetSVEMap");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetSVEMap");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetSVESchedMode(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 2)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetSVESchedMode", 13926, "iMode >= 0 && iMode < 2", a1, a1[7], a2, a3, a4, valuePtr, 0, 2);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetSVESchedMode", 13926, "iMode >= 0 && iMode < 2", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26773) = valuePtr;
        *(a1 + 2869) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetSVESchedMode", 13916, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetSVESchedMode", 13916, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetSVESchedMode", 13906, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetSVESchedMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetSVESchedMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetSVESchedMode(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2869];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetSVESchedMode", 13972, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetSVESchedMode", 13972, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSVESchedMode", 13962, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetSVESchedMode", 13962);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetSVESchedMode", 13962);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetDLBType(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 2)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetDLBType", 14023, "iType >= 0 && iType <= 1", a1, a1[7], a2, a3, a4, valuePtr, 0, 1);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetDLBType", 14023, "iType >= 0 && iType <= 1", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26774) = valuePtr;
        *(a1 + 2868) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetDLBType", 14014, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetDLBType", 14014, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetDLBType", 14004, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetDLBType");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetDLBType");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetDLBType(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2868];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetDLBType", 14069, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetDLBType", 14069, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetDLBType", 14059, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetDLBType", 14059);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetDLBType", 14059);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetDebugFeature(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      a1[13388] = valuePtr;
      a1[88] = v9;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v11 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v15 = a1[7];
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
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
        v23 = a1[7];
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetDebugFeature", 14111, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetDebugFeature", 14111, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetDebugFeature", 14101, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetDebugFeature");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetDebugFeature");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetDebugFeature(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[88];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = a1[7];
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v22, 30, v23, "AVE_Prop_HEVC_GetDebugFeature", 14160, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v22, 30, v23, "AVE_Prop_HEVC_GetDebugFeature", 14160, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetDebugFeature", 14150, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetDebugFeature", 14150);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetDebugFeature", 14150);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetSessionName(char *a1, const char **a2, const __CFString *a3, const __CFString *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Str = AVE_CFStr_GetStr(a4, a1 + 107112, 512);
      AVE_SNPrintf(a1 + 107112, 512, "%s", v10, v11, v12, v13, v14, Str);
      strcpy(a1 + 160, a1 + 107112);
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v16 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v19 = *a2;
        if (v16)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %s\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, a1 + 107112);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v20 = *(a1 + 7);
        }

        v32 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %s", CurrTime);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v25 = AVE_Log_CheckConsole(0x1Eu);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        v28 = *(a1 + 7);
        v29 = CFGetTypeID(a4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_HEVC_SetSessionName", 14202, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v28, a2, a3, a4, v29);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(4);
          v30 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v26, 30, v27, "AVE_Prop_HEVC_SetSessionName", 14202, "CFStringGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v22, 30, v23, "AVE_Prop_HEVC_SetSessionName", 14192, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v24 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v24, 30, v31, "AVE_Prop_HEVC_SetSessionName");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_SetSessionName");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetSessionName(const char *a1, const char **a2, CFAllocatorRef alloc, const __CFString *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = CFStringCreateWithCString(alloc, a1 + 107112, 0);
    if (v10)
    {
      *a5 = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v12 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v15 = *a2;
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %s\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, a1 + 107112);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = *(a1 + 7);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %s", CurrTime);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s\n", v22, 30, v23, "AVE_Prop_HEVC_GetSessionName", 14251, "pStr != __null", a1, alloc, a4, a5, a1 + 107112);
          v24 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v24, 30, v26, "AVE_Prop_HEVC_GetSessionName", 14251);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v22, 30, v23, "AVE_Prop_HEVC_GetSessionName", 14251);
        }
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSessionName", 14242, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetSessionName");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetSessionName");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetAlgFeatureOn(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[13453] = valuePtr;
        a1[136] |= v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_HEVC_SetAlgFeatureOn", 14301, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_HEVC_SetAlgFeatureOn", 14301, "iFeature != 0");
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetAlgFeatureOn", 14292, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetAlgFeatureOn", 14292, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetAlgFeatureOn", 14282, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetAlgFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetAlgFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetAlgFeatureOn(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[136];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = a1[7];
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v22, 30, v23, "AVE_Prop_HEVC_GetAlgFeatureOn", 14347, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v22, 30, v23, "AVE_Prop_HEVC_GetAlgFeatureOn", 14347, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetAlgFeatureOn", 14337, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetAlgFeatureOn", 14337);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetAlgFeatureOn", 14337);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetAlgFeatureOff(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[13454] = valuePtr;
        a1[136] &= ~v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_HEVC_SetAlgFeatureOff", 14398, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_HEVC_SetAlgFeatureOff", 14398, "iFeature != 0");
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetAlgFeatureOff", 14389, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetAlgFeatureOff", 14389, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetAlgFeatureOff", 14379, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetAlgFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetAlgFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetAlgFeatureOff(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[136];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = a1[7];
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v22, 30, v23, "AVE_Prop_HEVC_GetAlgFeatureOff", 14444, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v22, 30, v23, "AVE_Prop_HEVC_GetAlgFeatureOff", 14444, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetAlgFeatureOff", 14434, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetAlgFeatureOff", 14434);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetAlgFeatureOff", 14434);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetInitialQPI(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = -13;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 12) >= 0x40)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetInitialQPI", 14496, "iInitialQP >= ((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) && iInitialQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, a1[7], a2, a3, a4, valuePtr, -12, 51);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetInitialQPI", 14496, "iInitialQP >= ((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) && iInitialQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26910) = valuePtr;
        *(a1 + 286) = v9;
        *(a1 + 10844) = 1;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetInitialQPI", 14486, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetInitialQPI", 14486, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetInitialQPI", 14476, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetInitialQPI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetInitialQPI");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetInitialQPI(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[286];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetInitialQPI", 14543, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetInitialQPI", 14543, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetInitialQPI", 14533, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetInitialQPI", 14533);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetInitialQPI", 14533);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetInitialQPP(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = -13;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 12) >= 0x40)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetInitialQPP", 14595, "iInitialQP >= ((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) && iInitialQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, a1[7], a2, a3, a4, valuePtr, -12, 51);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetInitialQPP", 14595, "iInitialQP >= ((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) && iInitialQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26911) = valuePtr;
        *(a1 + 287) = v9;
        *(a1 + 10844) = 1;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetInitialQPP", 14585, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetInitialQPP", 14585, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetInitialQPP", 14575, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetInitialQPP");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetInitialQPP");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetInitialQPP(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[287];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetInitialQPP", 14642, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetInitialQPP", 14642, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetInitialQPP", 14632, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetInitialQPP", 14632);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetInitialQPP", 14632);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetInitialQPB(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = -13;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 12) >= 0x40)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetInitialQPB", 14694, "iInitialQP >= ((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) && iInitialQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, a1[7], a2, a3, a4, valuePtr, -12, 51);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetInitialQPB", 14694, "iInitialQP >= ((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) && iInitialQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26912) = valuePtr;
        *(a1 + 288) = v9;
        *(a1 + 10844) = 1;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetInitialQPB", 14684, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetInitialQPB", 14684, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetInitialQPB", 14674, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetInitialQPB");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetInitialQPB");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetInitialQPB(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[288];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetInitialQPB", 14741, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetInitialQPB", 14741, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetInitialQPB", 14731, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetInitialQPB", 14731);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetInitialQPB", 14731);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetRCFeatureOn(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[13457] = valuePtr;
        a1[140] |= v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_HEVC_SetRCFeatureOn", 14792, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_HEVC_SetRCFeatureOn", 14792, "iFeature != 0");
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRCFeatureOn", 14783, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRCFeatureOn", 14783, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRCFeatureOn", 14773, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetRCFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetRCFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetRCFeatureOn(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[140];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = a1[7];
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v22, 30, v23, "AVE_Prop_HEVC_GetRCFeatureOn", 14838, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v22, 30, v23, "AVE_Prop_HEVC_GetRCFeatureOn", 14838, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRCFeatureOn", 14828, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetRCFeatureOn", 14828);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetRCFeatureOn", 14828);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetRCFeatureOff(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[13458] = valuePtr;
        a1[140] &= ~v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_HEVC_SetRCFeatureOff", 14889, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_HEVC_SetRCFeatureOff", 14889, "iFeature != 0");
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRCFeatureOff", 14880, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRCFeatureOff", 14880, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRCFeatureOff", 14870, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetRCFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetRCFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetRCFeatureOff(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[140];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = a1[7];
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v22, 30, v23, "AVE_Prop_HEVC_GetRCFeatureOff", 14935, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v22, 30, v23, "AVE_Prop_HEVC_GetRCFeatureOff", 14935, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRCFeatureOff", 14925, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetRCFeatureOff", 14925);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetRCFeatureOff", 14925);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetLowDelay(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26918] = v9;
      a1[369] = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetLowDelay", 14977, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetLowDelay", 14977, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetLowDelay", 14967, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetLowDelay");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetLowDelay");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetLowDelay(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[369];
    v11 = MEMORY[0x29EDB8F00];
    if (!v10)
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = v10 != 0;
      v14 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v13);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v18 = *(a1 + 7);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetLowDelay", 15016, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetLowDelay", 15016);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetLowDelay", 15016);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetRCMode(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 1) >= 0x64)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRCMode", 15073, "iRCMode > AVE_RCMode_None && iRCMode <= AVE_RCMode_HwVal", a1, a1[7], a2, a3, a4, valuePtr, 0, 100);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          else
          {
            v37 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRCMode", 15073, "iRCMode > AVE_RCMode_None && iRCMode <= AVE_RCMode_HwVal", a1);
        }
      }

      else
      {
        if (valuePtr != 4 && valuePtr != 2 || *(a1 + 2639) == 1)
        {
          *(a1 + 26919) = valuePtr;
          *(a1 + 283) = v9;
          *(a1 + 10784) = 1;
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

            v35 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
            return 0;
          }

          return result;
        }

        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v30 = AVE_Log_CheckConsole(0x1Eu);
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          if (v30)
          {
            printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support CBR/DRL %s %p %p %p %p\n", v31, 30, v32, "AVE_Prop_HEVC_SetRCMode", 15081, "psINS->VideoParams.iLayerNum == 1", *a2, a1, a2, a3, a4);
            v31 = AVE_GetCurrTime();
            v32 = AVE_Log_GetLevelStr(4);
            v33 = *a2;
          }

          else
          {
            v36 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support CBR/DRL %s %p %p %p %p", v31, 30, v32, "AVE_Prop_HEVC_SetRCMode", 15081);
        }
      }

      return 4294965292;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x1Eu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      v23 = a1[7];
      v24 = CFGetTypeID(a4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRCMode", 15064, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v25 = a1[7];
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRCMode", 15064, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRCMode", 15054, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v34, "AVE_Prop_HEVC_SetRCMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetRCMode");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_GetRCMode(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[283];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetRCMode", 15130, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetRCMode", 15130, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRCMode", 15120, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetRCMode", 15120);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetRCMode", 15120);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetBitRate(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr <= 0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetBitRate", 15181, "iBitRate > 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetBitRate", 15181, "iBitRate > 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26920) = valuePtr;
        *(a1 + 284) = v9;
        *(a1 + 10783) = 1;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetBitRate", 15172, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetBitRate", 15172, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetBitRate", 15162, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetBitRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetBitRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetBitRate(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[284];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetBitRate", 15228, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetBitRate", 15228, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetBitRate", 15218, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetBitRate", 15218);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetBitRate", 15218);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEnableHdrPqRC(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26974] = v9;
      a1[334] = a1[334] & 0xF7FFFFFF | (v9 << 27);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableHdrPqRC", 15270, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableHdrPqRC", 15270, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableHdrPqRC", 15260, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetEnableHdrPqRC");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetEnableHdrPqRC");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEnableHdrPqRC(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[334] & 0x8000000;
    v11 = MEMORY[0x29EDB8EF8];
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v16 = *a2;
      v17 = v10 >> 27;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v17);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v18 = *(a1 + 7);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetEnableHdrPqRC", 15316, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetEnableHdrPqRC", 15316);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetEnableHdrPqRC", 15316);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetVBVBufferSize(char *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  v8 = AVE_DW_Get();
  v45 = 0.0;
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    v9 = v8;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberDoubleType, &valuePtr);
      v11 = valuePtr;
      if (valuePtr <= 0.0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v31 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetVBVBufferSize", 15375, "fVBVBufferSize > 0.0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v34 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetVBVBufferSize", 15375);
        }

        return 4294965292;
      }

      else
      {
        v12 = (a1 + 106360);
        *(a1 + 13461) = valuePtr;
        v13 = AVE_RC_DecideVBVBufferSize(v9[104], v11, *(a1 + 13295), *(a1 + 140), &v45);
        if (v13)
        {
          v14 = v13;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v15 = AVE_Log_CheckConsole(0x1Eu);
            v16 = AVE_GetCurrTime();
            v17 = AVE_Log_GetLevelStr(4);
            v18 = *(a1 + 140);
            if (v15)
            {
              printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %p %p %p %f %f %f 0x%llx\n", v16, 30, v17, "AVE_Prop_HEVC_SetVBVBufferSize", 15384, "ret == 0", a1, *(a1 + 7), a2, a3, a4, v9[104], valuePtr, *v12, *(a1 + 140));
              v16 = AVE_GetCurrTime();
              v17 = AVE_Log_GetLevelStr(4);
              v19 = *(v9 + 104);
              v20 = *v12;
              v43 = *(a1 + 140);
              v42 = *(a1 + 7);
            }

            else
            {
              v44 = *(a1 + 140);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %p %p %p %f %f %f 0x%llx", v16, 30, v17, "AVE_Prop_HEVC_SetVBVBufferSize", 15384, "ret == 0");
          }
        }

        else
        {
          *(a1 + 152) = v45;
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v35 = AVE_Log_CheckConsole(0x1Eu);
            v36 = AVE_GetCurrTime();
            v37 = AVE_Log_GetLevelStr(7);
            if (v35)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %f %f\n", v36, 30, v37, a1, *(a1 + 7), *a2, valuePtr, v45);
              AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v38 = *(a1 + 7);
              v41 = *a2;
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f %f");
          }

          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v25 = AVE_Log_CheckConsole(0x1Eu);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        v28 = *(a1 + 7);
        v29 = CFGetTypeID(a4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_HEVC_SetVBVBufferSize", 15366, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v28, a2, a3, a4, v29);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(4);
          v30 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v26, 30, v27, "AVE_Prop_HEVC_SetVBVBufferSize", 15366, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v22, 30, v23, "AVE_Prop_HEVC_SetVBVBufferSize", 15356, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v24 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v24, 30, v40, "AVE_Prop_HEVC_SetVBVBufferSize");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_SetVBVBufferSize");
      }
    }

    return 4294966295;
  }

  return v14;
}

uint64_t AVE_Prop_HEVC_GetVBVBufferSize(double *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[152];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", CurrTime);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v22, 30, v23, "AVE_Prop_HEVC_GetVBVBufferSize", 15428, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v22, 30, v23, "AVE_Prop_HEVC_GetVBVBufferSize", 15428, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetVBVBufferSize", 15418, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetVBVBufferSize", 15418);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetVBVBufferSize", 15418);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetVBVInitialDelay(char *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  v8 = AVE_DW_Get();
  v47 = 0.0;
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    v9 = v8;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberDoubleType, &valuePtr);
      v11 = valuePtr;
      if (valuePtr >= 0.0)
      {
        v27 = (a1 + 106368);
        *(a1 + 13462) = valuePtr;
        v28 = AVE_RC_DecideVBVInitialDelay(v9[105], v11, *(a1 + 13296), *(a1 + 152), *(a1 + 140), &v47);
        if (v28)
        {
          v26 = v28;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v29 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v32 = *(a1 + 140);
            if (v29)
            {
              printf("%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %p %p %p %f %f %f %f 0x%llx\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetVBVInitialDelay", 15495, "ret == 0", a1, *(a1 + 7), a2, a3, a4, v9[105], valuePtr, *v27, *(a1 + 152), *(a1 + 140));
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              v33 = *(v9 + 105);
              v34 = *v27;
              v35 = *(a1 + 152);
              v45 = *(a1 + 140);
              v44 = *v27;
              v43 = *(a1 + 7);
            }

            else
            {
              v46 = *(a1 + 140);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %p %p %p %f %f %f %f 0x%llx", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetVBVInitialDelay", 15495, "ret == 0");
          }
        }

        else
        {
          *(a1 + 153) = v47;
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v36 = AVE_Log_CheckConsole(0x1Eu);
            v37 = AVE_GetCurrTime();
            v38 = AVE_Log_GetLevelStr(7);
            if (v36)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %f %f\n", v37, 30, v38, a1, *(a1 + 7), *a2, valuePtr, v47);
              AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v39 = *(a1 + 7);
              v42 = *a2;
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f %f");
          }

          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v12 = AVE_Log_CheckConsole(0x1Eu);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", v13, 30, v14, "AVE_Prop_HEVC_SetVBVInitialDelay", 15482, "fVBVInitialDelay >= 0.0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v13 = AVE_GetCurrTime();
            v14 = AVE_Log_GetLevelStr(4);
            v15 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v13, 30, v14, "AVE_Prop_HEVC_SetVBVInitialDelay", 15482);
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetVBVInitialDelay", 15473, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetVBVInitialDelay", 15473, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetVBVInitialDelay", 15463, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v41 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v41, "AVE_Prop_HEVC_SetVBVInitialDelay");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetVBVInitialDelay");
      }
    }

    return 4294966295;
  }

  return v26;
}