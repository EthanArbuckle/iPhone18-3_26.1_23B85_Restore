uint64_t AVE_Prop_HEVC_GetEnableMBInputCtrl(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[334] & 0x10000;
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
      v17 = HIWORD(v10);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetEnableMBInputCtrl", 5467, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetEnableMBInputCtrl", 5467);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetEnableMBInputCtrl", 5467);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetUserDPBFramesForFaceTime(void *a1, const char **a2, const __CFString *a3, const __CFArray *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Count = CFArrayGetCount(a4);
      v10 = Count;
      if ((Count + 1) >= 0x25)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v32 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetUserDPBFramesForFaceTime", 5526, "(iNumOfFrames / 2) >= 0 && (iNumOfFrames / 2) <= (((16) > (16) ? (16) : (16)) + 1)", a1, a1[7], a2, a3, a4, v10, 0, 34);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v35 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetUserDPBFramesForFaceTime", 5526, "(iNumOfFrames / 2) >= 0 && (iNumOfFrames / 2) <= (((16) > (16) ? (16) : (16)) + 1)", a1);
        }

        return 4294965292;
      }

      else
      {
        v11 = Count / 2;
        *(a1 + 26619) = Count / 2;
        *(a1 + 11816) = 1;
        *(a1 + 2955) = Count / 2;
        if (Count >= 2)
        {
          v12 = 0;
          v13 = a1 + 11892;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a4, v12);
            CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, v13 - 68);
            v15 = CFArrayGetValueAtIndex(a4, v12 + 1);
            CFNumberGetValue(v15, kCFNumberSInt32Type, v13);
            v12 += 2;
            v13 += 4;
          }

          while (2 * v11 != v12);
        }

        if (AVE_Log_CheckLevel(0x1Eu, 7))
        {
          v16 = AVE_Log_CheckConsole(0x1Eu);
          v17 = AVE_GetCurrTime();
          v18 = AVE_Log_GetLevelStr(7);
          v19 = *a2;
          if (v16)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v17, 30, v18, a1, a1[7], *a2, v11);
            v17 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v20 = a1[7];
          }

          v37 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v17);
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
        v28 = a1[7];
        v29 = CFGetTypeID(a4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_HEVC_SetUserDPBFramesForFaceTime", 5516, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v28, a2, a3, a4, v29);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(4);
          v30 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v26, 30, v27, "AVE_Prop_HEVC_SetUserDPBFramesForFaceTime", 5516, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v22, 30, v23, "AVE_Prop_HEVC_SetUserDPBFramesForFaceTime", 5506, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v24 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v24, 30, v36, "AVE_Prop_HEVC_SetUserDPBFramesForFaceTime");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_SetUserDPBFramesForFaceTime");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_GetUserDPBFramesForFaceTime(int *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 2 * a1[2955], MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v28 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetUserDPBFramesForFaceTime", 5590, "p != __null", a1, *(a1 + 7), a2, allocator, a4, a5, 2 * a1[2955]);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetUserDPBFramesForFaceTime", 5590, "p != __null", a1, *(a1 + 7), a2, allocator, a4, a5, (2 * a1[2955]));
      }

      return 4294966293;
    }

    v11 = Mutable;
    if (a1[2955] >= 1)
    {
      v12 = 0;
      v13 = (a1 + 2973);
      while (1)
      {
        v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, v13 - 17);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        v16 = CFNumberCreate(allocator, kCFNumberSInt32Type, v13);
        if (!v16)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v34 = AVE_Log_CheckConsole(0x1Eu);
            v35 = AVE_GetCurrTime();
            v36 = AVE_Log_GetLevelStr(4);
            if (v34)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v35, 30, v36, "AVE_Prop_HEVC_GetUserDPBFramesForFaceTime", 5609, "pNum2 != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *v13);
              v35 = AVE_GetCurrTime();
              v36 = AVE_Log_GetLevelStr(4);
              v42 = *v13;
              v41 = *(a1 + 7);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v35, 30, v36, "AVE_Prop_HEVC_GetUserDPBFramesForFaceTime", 5609, "pNum2 != __null", a1);
          }

          CFRelease(v15);
          return 4294966293;
        }

        v17 = v16;
        CFArrayAppendValue(v11, v15);
        CFArrayAppendValue(v11, v17);
        CFRelease(v15);
        CFRelease(v17);
        ++v12;
        ++v13;
        if (v12 >= a1[2955])
        {
          goto LABEL_11;
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v31 = AVE_Log_CheckConsole(0x1Eu);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v32, 30, v33, "AVE_Prop_HEVC_GetUserDPBFramesForFaceTime", 5601, "pNum1 != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *(v13 - 17));
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v32, 30, v33, "AVE_Prop_HEVC_GetUserDPBFramesForFaceTime", 5601, "pNum1 != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *(v13 - 17));
      }

      return 4294966293;
    }

LABEL_11:
    *a5 = v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(7);
      v22 = a1[2955];
      if (v19)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v20, 30, v21, a1, *(a1 + 7), *a2, a1[2955], v11);
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v23 = *(a1 + 7);
        v39 = a1[2955];
        v38 = *a2;
      }

      else
      {
        v40 = a1[2955];
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v25, 30, v26, "AVE_Prop_HEVC_GetUserDPBFramesForFaceTime", 5580, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v27 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v27, 30, v37, "AVE_Prop_HEVC_GetUserDPBFramesForFaceTime", 5580);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v25, 30, v26, "AVE_Prop_HEVC_GetUserDPBFramesForFaceTime", 5580);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetDPBRequirements(char *a1, const char **a2, const __CFString *a3, const __CFDictionary *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    v8 = (a1 + 104728);
    if (!*(a1 + 13091))
    {
      operator new();
    }

    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (*v8)
      {
        v10 = (a1 + 107992);
        v11 = AVE_VCP::AllocDPB(*v8, a4, *(a1 + 27000), a1 + 13499);
        if (v11)
        {
          v12 = v11;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v13 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v13)
            {
              printf("%lld %d AVE %s: %s:%d %s | Invalid userDPB %p %lld %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetDPBRequirements", 5706, "ret == 0", a1, *(a1 + 7), a2, a3, a4);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Invalid userDPB %p %lld %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetDPBRequirements", 5706, "ret == 0", a1, *(a1 + 7), a2, a3, a4);
          }
        }

        else
        {
          Value = CFDictionaryGetValue(a4, *MEMORY[0x29EDBCDF8]);
          CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
          *(a1 + 26621) = valuePtr;
          v30 = CFDictionaryGetValue(a4, *MEMORY[0x29EDBCDF0]);
          v31 = CFBooleanGetValue(v30);
          *(a1 + 26620) = v31;
          *(a1 + 140) = *(a1 + 140) & 0xFFFFFFFFFFFFFFDFLL | (32 * (v31 != 0));
          if (valuePtr)
          {
            v32 = v31;
            Count = CFArrayGetCount(*v10);
            v34 = valuePtr;
            if (Count == valuePtr << v32)
            {
              a1[11816] = 1;
              *(a1 + 2955) = v34;
              if (v34 >= 1)
              {
                v35 = (a1 + 11892);
                v36 = 2956;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(*v10, v36 - 2956);
                  *(v35 - 17) = IOSurfaceGetID(ValueAtIndex);
                  if (AVE_Log_CheckLevel(0x1Eu, 6))
                  {
                    v38 = AVE_Log_CheckConsole(0x1Eu);
                    v39 = AVE_GetCurrTime();
                    v40 = AVE_Log_GetLevelStr(6);
                    v41 = *(v35 - 17);
                    if (v38)
                    {
                      printf("%lld %d AVE %s: UserDPBFrames CFArrayGetValueAtIndex %d = %d\n", v39, 30, v40, v36 - 2956, v41);
                      v39 = AVE_GetCurrTime();
                      v40 = AVE_Log_GetLevelStr(6);
                      v41 = *(v35 - 17);
                    }

                    syslog(3, "%lld %d AVE %s: UserDPBFrames CFArrayGetValueAtIndex %d = %d", v39, 30, v40, v36 - 2956, v41);
                  }

                  if (v32)
                  {
                    v42 = CFArrayGetValueAtIndex(*v10, v36 + valuePtr - 2956);
                    *v35 = IOSurfaceGetID(v42);
                    if (AVE_Log_CheckLevel(0x1Eu, 6))
                    {
                      v43 = AVE_Log_CheckConsole(0x1Eu);
                      v44 = AVE_GetCurrTime();
                      v45 = AVE_Log_GetLevelStr(6);
                      v46 = v36 + valuePtr - 2956;
                      v47 = *v35;
                      if (v43)
                      {
                        printf("%lld %d AVE %s: UserDPBFrames CFArrayGetValueAtIndex %d = %d\n", v44, 30, v45, v36 + valuePtr - 2956, v47);
                        v44 = AVE_GetCurrTime();
                        v45 = AVE_Log_GetLevelStr(6);
                        v46 = v36 + valuePtr - 2956;
                        v47 = *v35;
                      }

                      syslog(3, "%lld %d AVE %s: UserDPBFrames CFArrayGetValueAtIndex %d = %d", v44, 30, v45, v46, v47);
                    }
                  }

                  v48 = v36 - 2955;
                  ++v36;
                  ++v35;
                }

                while (v48 < valuePtr);
              }

              v12 = 0;
            }

            else
            {
              if (AVE_Log_CheckLevel(0x1Eu, 4))
              {
                v53 = AVE_Log_CheckConsole(0x1Eu);
                v54 = AVE_GetCurrTime();
                v55 = AVE_Log_GetLevelStr(4);
                if (v53)
                {
                  printf("%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_DPBRequirements with bad parameter                      num_frames = %d\n", v54, 30, v55, valuePtr);
                  v56 = AVE_GetCurrTime();
                  v64 = AVE_Log_GetLevelStr(4);
                  syslog(3, "%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_DPBRequirements with bad parameter                      num_frames = %d", v56, 30, v64, valuePtr);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_DPBRequirements with bad parameter                      num_frames = %d", v54, 30, v55, valuePtr);
                }
              }

              CFShow(a3);
              CFShow(a4);
              v12 = 4294965292;
            }
          }

          else
          {
            if (AVE_Log_CheckLevel(0x1Eu, 6))
            {
              v49 = AVE_Log_CheckConsole(0x1Eu);
              v50 = AVE_GetCurrTime();
              v51 = AVE_Log_GetLevelStr(6);
              if (v49)
              {
                printf("%lld %d AVE %s: No user DPB frames found. driver will create frames internally.\n", v50, 30, v51);
                v52 = AVE_GetCurrTime();
                v63 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: No user DPB frames found. driver will create frames internally.", v52, 30, v63);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: No user DPB frames found. driver will create frames internally.", v50, 30, v51);
              }
            }

            v12 = 0;
            a1[11816] = 1;
            *(a1 + 2955) = valuePtr;
          }

          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v57 = AVE_Log_CheckConsole(0x1Eu);
            v58 = AVE_GetCurrTime();
            v59 = AVE_Log_GetLevelStr(7);
            v60 = *a2;
            if (v57)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v58, 30, v59, a1, *(a1 + 7), *a2, valuePtr);
              v58 = AVE_GetCurrTime();
              v59 = AVE_Log_GetLevelStr(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v58, 30, v59, a1, *(a1 + 7), *a2, valuePtr);
          }
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
            printf("%lld %d AVE %s: %s:%d %s | fail to get VCP %p\n", v27, 30, v28, "AVE_Prop_HEVC_SetDPBRequirements", 5699, "psINS->pcVCP != __null", a1);
            v27 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VCP %p", v27);
        }

        return 4294966281;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetDPBRequirements", 5696, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetDPBRequirements", 5696, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetDPBRequirements", 5672, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v62 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v62, "AVE_Prop_HEVC_SetDPBRequirements");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetDPBRequirements");
      }
    }

    return 4294966295;
  }

  return v12;
}

uint64_t AVE_Prop_HEVC_GetDPBRequirements(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFMutableArrayRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, (a1[26621] << (a1[26620] != 0)), MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v11 = Mutable;
      if (a1[26621] >= 1)
      {
        v12 = 0;
        v13 = a1 + 2956;
        do
        {
          v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, v13);
          if (!v14)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v35 = AVE_Log_CheckConsole(0x1Eu);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              if (v35)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetDPBRequirements", 5819, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *v13);
                v38 = AVE_GetCurrTime();
                v39 = AVE_Log_GetLevelStr(4);
                v52 = *v13;
                v49 = *(a1 + 7);
                v47 = a1;
                v40 = 5819;
                goto LABEL_29;
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetDPBRequirements", 5819, "pNum != __null", a1);
            }

LABEL_34:
            CFRelease(v11);
            return 4294966293;
          }

          v15 = v14;
          CFArrayAppendValue(v11, v14);
          CFRelease(v15);
          ++v12;
          v16 = a1[26621];
          ++v13;
        }

        while (v12 < v16);
        if (a1[26620] && v16 >= 1)
        {
          v17 = 0;
          v18 = a1 + 2973;
          while (1)
          {
            v19 = CFNumberCreate(0, kCFNumberSInt32Type, v18);
            if (!v19)
            {
              break;
            }

            v20 = v19;
            CFArrayAppendValue(v11, v19);
            CFRelease(v20);
            ++v17;
            ++v18;
            if (v17 >= a1[26621])
            {
              goto LABEL_15;
            }
          }

          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v41 = AVE_Log_CheckConsole(0x1Eu);
            v42 = AVE_GetCurrTime();
            v43 = AVE_Log_GetLevelStr(4);
            if (v41)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v42, 30, v43, "AVE_Prop_HEVC_GetDPBRequirements", 5839, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *v18);
              v38 = AVE_GetCurrTime();
              v39 = AVE_Log_GetLevelStr(4);
              v53 = *v18;
              v50 = *(a1 + 7);
              v47 = a1;
              v40 = 5839;
LABEL_29:
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v38, 30, v39, "AVE_Prop_HEVC_GetDPBRequirements", v40, "pNum != __null", v47);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v42, 30, v43, "AVE_Prop_HEVC_GetDPBRequirements", 5839, "pNum != __null", a1);
            }
          }

          goto LABEL_34;
        }
      }

LABEL_15:
      *a5 = v11;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v22 = AVE_Log_CheckConsole(0x1Eu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(7);
        v25 = a1[2955];
        if (v22)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v23, 30, v24, a1, *(a1 + 7), *a2, a1[2955], v11);
          v23 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v26 = *(a1 + 7);
          v46 = a1[2955];
          v45 = *a2;
        }

        else
        {
          v48 = a1[2955];
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v23, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v31 = AVE_Log_CheckConsole(0x1Eu);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", v32, 30, v33, "AVE_Prop_HEVC_GetDPBRequirements", 5809, "p != __null", a1, *(a1 + 7), a2, allocator, a4, a5, a1[26621] << (a1[26620] != 0));
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          v34 = *(a1 + 7);
          v51 = (a1[26621] << (a1[26620] != 0));
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", v32, 30, v33, "AVE_Prop_HEVC_GetDPBRequirements", 5809, "p != __null", a1);
      }

      return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v28, 30, v29, "AVE_Prop_HEVC_GetDPBRequirements", 5798, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v30 = AVE_GetCurrTime();
        v44 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v30, 30, v44, "AVE_Prop_HEVC_GetDPBRequirements", 5798);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v28, 30, v29, "AVE_Prop_HEVC_GetDPBRequirements", 5798);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes(unsigned int *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  v70 = *MEMORY[0x29EDCA608];
  v62 = 0;
  memset(v61, 0, 44);
  if (!a1 || !a2 || !a4 || !a5)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v34 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5901, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v37 = AVE_GetCurrTime();
        v56 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v37, 30, v56, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5901);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5901);
      }
    }

    goto LABEL_34;
  }

  v10 = a1[26522];
  if (!v10)
  {
    v10 = a1[360];
  }

  v11 = a1[26523];
  if (!v11)
  {
    v11 = a1[361];
  }

  v12 = v10 + 31;
  if (v10 < -31)
  {
    v12 = v10 + 62;
  }

  v13 = v12 & 0xFFFFFFE0;
  v14 = v11 + 31;
  if (v11 < -31)
  {
    v14 = v11 + 62;
  }

  v59 = v14 & 0xFFFFFFE0;
  v60 = v13;
  v15 = a1[19];
  v16 = v15 <= 29;
  v17 = v15 > 29;
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = 6;
  }

  v19 = 2 * v17;
  if (v16)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  v63 = v18;
  v64 = 0x400000000;
  v65 = 0;
  v66 = v19;
  v67 = 0;
  v68 = v20;
  v69 = 0;
  v21 = a1[27000];
  if (!v21)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 5))
    {
      v38 = AVE_Log_CheckConsole(0x1Eu);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(5);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | input pixel format is not set %p %lld %p %p 0x%x\n", v39, 30, v40, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5927, "psINS->inputPixelFormat != 0", a1, *(a1 + 7), a4, a5, a1[27000]);
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(5);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | input pixel format is not set %p %lld %p %p 0x%x", v39, 30, v40, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5927, "psINS->inputPixelFormat != 0", a1, *(a1 + 7), a4, a5, a1[27000]);
    }

    goto LABEL_51;
  }

  v22 = AVE_PixelFmt_FindByType(v21);
  if (!v22)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v41 = AVE_Log_CheckConsole(0x1Eu);
      v42 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(4);
      if (v41)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld %p %p 0x%x\n", v42, 30, v43, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5933, "psPixelFmt != __null", a1, *(a1 + 7), a4, a5, a1[27000]);
        v42 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(4);
        v44 = *(a1 + 7);
        v57 = a1[27000];
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld %p %p 0x%x", v42, 30, v43, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5933);
    }

    AttrDict = 4294966296;
    goto LABEL_52;
  }

  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = *(v22 + 28);
  *(&v61[2] + 4) = *(v22 + 36);
  v61[0] = v23;
  v61[1] = v24;
  LODWORD(v61[2]) = 0;
  v26 = a1[6183] + 8;
  DWORD2(v61[1]) = 3;
  DWORD1(v61[0]) = v26;
  Type = AVE_PixelFmt_FindType(v61);
  if (!Type)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v45 = AVE_Log_CheckConsole(0x1Eu);
      v46 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(4);
      if (v45)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format type %p %lld %p %p 0x%x\n", v46, 30, v47, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5943, "type != 0", a1, *(a1 + 7), a4, a5, a1[27000]);
        v46 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format type %p %lld %p %p 0x%x", v46, 30, v47, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5943, "type != 0", a1, *(a1 + 7), a4, a5, a1[27000]);
    }

LABEL_34:
    AttrDict = 4294966295;
    goto LABEL_52;
  }

  v28 = Type;
  AVE_Enc_AlignDimension(a1[17], a1[16], 2, &v60, &v59);
  AttrDict = AVE_PixelBuf_CreateAttrDict(a1[17], a1[16], 62, 2, v10, v11, v60, v59, v28);
  if (!AttrDict && v62)
  {
    *a5 = v62;
    if (AVE_Log_CheckLevel(0x1Eu, 7))
    {
      v30 = AVE_Log_CheckConsole(0x1Eu);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(7);
      v33 = *a2;
      if (v30)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v31, 30, v32, a1, *(a1 + 7), *a2, v62);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v31, 30, v32, a1, *(a1 + 7), *a2, v62);
    }

LABEL_51:
    AttrDict = 0;
    goto LABEL_52;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v48 = AVE_Log_CheckConsole(0x1Eu);
    v49 = AVE_GetCurrTime();
    v50 = AVE_Log_GetLevelStr(4);
    v51 = *(a1 + 7);
    if (v48)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create recon buffer dictionary %p %lld %p %p 0x%x 0x%x %d %d %d %d %p\n", v49, 30, v50, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5956, "ret == 0 && pDict != __null", a1, v51, a4, a5, a1[27000], v28, v10, v11, v60, v59, v62);
      v52 = AVE_GetCurrTime();
      v53 = AVE_Log_GetLevelStr(4);
      v58 = a1[27000];
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create recon buffer dictionary %p %lld %p %p 0x%x 0x%x %d %d %d %d %p", v52, 30, v53, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5956, "ret == 0 && pDict != __null", a1, *(a1 + 7));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create recon buffer dictionary %p %lld %p %p 0x%x 0x%x %d %d %d %d %p", v49, 30, v50, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5956, "ret == 0 && pDict != __null", a1, v51);
    }
  }

LABEL_52:
  v54 = *MEMORY[0x29EDCA608];
  return AttrDict;
}

uint64_t AVE_Prop_HEVC_SetUserRPSForFaceTime(char *a1, const char **a2, const __CFString *a3, const __CFArray *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Count = CFArrayGetCount(a4);
      v10 = Count;
      if (Count <= 0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v28 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetUserRPSForFaceTime", 6007, "iUserRPSForFaceTime > 0", a1, *(a1 + 7), a2, a3, a4, v10);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v31 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetUserRPSForFaceTime", 6007, "iUserRPSForFaceTime > 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26655) = Count;
        a1[10785] = 1;
        *(a1 + 20150) = Count;
        Array = AVE_HEVC_ST_RPS_RetrieveArray(a4, a1 + 80604, a1 + 20150);
        if (Array)
        {
          v12 = Array;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v13 = AVE_Log_CheckConsole(0x1Eu);
            v14 = AVE_GetCurrTime();
            v15 = AVE_Log_GetLevelStr(4);
            if (v13)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to retrive RPS array %p %lld %p %p %p %d\n", v14, 30, v15, "AVE_Prop_HEVC_SetUserRPSForFaceTime", 6020, "ret == 0", a1, *(a1 + 7), a2, a3, a4, v10);
              v16 = AVE_GetCurrTime();
              v17 = AVE_Log_GetLevelStr(4);
              v40 = *(a1 + 7);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive RPS array %p %lld %p %p %p %d", v16, 30, v17, "AVE_Prop_HEVC_SetUserRPSForFaceTime", 6020, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive RPS array %p %lld %p %p %p %d", v14, 30, v15, "AVE_Prop_HEVC_SetUserRPSForFaceTime", 6020, "ret == 0");
            }
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
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v33, 30, v34, a1, *(a1 + 7), *a2, v10);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetUserRPSForFaceTime", 5999, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          v27 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetUserRPSForFaceTime", 5999, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_SetUserRPSForFaceTime", 5989, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v38, "AVE_Prop_HEVC_SetUserRPSForFaceTime");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_SetUserRPSForFaceTime");
      }
    }

    return 4294966295;
  }

  return v12;
}

uint64_t AVE_Prop_HEVC_GetUserRPSForFaceTime(int *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 2 * a1[2955], MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v28 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetUserRPSForFaceTime", 6063, "p != __null", a1, *(a1 + 7), a2, allocator, a4, a5, 2 * a1[2955]);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetUserRPSForFaceTime", 6063, "p != __null", a1, *(a1 + 7), a2, allocator, a4, a5, (2 * a1[2955]));
      }

      return 4294966293;
    }

    v11 = Mutable;
    if (a1[2955] >= 1)
    {
      v12 = 0;
      v13 = (a1 + 2973);
      while (1)
      {
        v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, v13 - 17);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        v16 = CFNumberCreate(allocator, kCFNumberSInt32Type, v13);
        if (!v16)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v34 = AVE_Log_CheckConsole(0x1Eu);
            v35 = AVE_GetCurrTime();
            v36 = AVE_Log_GetLevelStr(4);
            if (v34)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v35, 30, v36, "AVE_Prop_HEVC_GetUserRPSForFaceTime", 6082, "pNum2 != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *v13);
              v35 = AVE_GetCurrTime();
              v36 = AVE_Log_GetLevelStr(4);
              v42 = *v13;
              v41 = *(a1 + 7);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v35, 30, v36, "AVE_Prop_HEVC_GetUserRPSForFaceTime", 6082, "pNum2 != __null", a1);
          }

          CFRelease(v15);
          return 4294966293;
        }

        v17 = v16;
        CFArrayAppendValue(v11, v15);
        CFArrayAppendValue(v11, v17);
        CFRelease(v15);
        CFRelease(v17);
        ++v12;
        ++v13;
        if (v12 >= a1[2955])
        {
          goto LABEL_11;
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v31 = AVE_Log_CheckConsole(0x1Eu);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v32, 30, v33, "AVE_Prop_HEVC_GetUserRPSForFaceTime", 6074, "pNum1 != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *(v13 - 17));
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v32, 30, v33, "AVE_Prop_HEVC_GetUserRPSForFaceTime", 6074, "pNum1 != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *(v13 - 17));
      }

      return 4294966293;
    }

LABEL_11:
    *a5 = v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(7);
      v22 = a1[2955];
      if (v19)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v20, 30, v21, a1, *(a1 + 7), *a2, a1[2955], v11);
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v23 = *(a1 + 7);
        v39 = a1[2955];
        v38 = *a2;
      }

      else
      {
        v40 = a1[2955];
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v25, 30, v26, "AVE_Prop_HEVC_GetUserRPSForFaceTime", 6053, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v27 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v27, 30, v37, "AVE_Prop_HEVC_GetUserRPSForFaceTime", 6053);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v25, 30, v26, "AVE_Prop_HEVC_GetUserRPSForFaceTime", 6053);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetForceRefUncompresseds(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26622] = v9;
      *(a1 + 10206) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetForceRefUncompresseds", 6153, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetForceRefUncompresseds", 6153, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetForceRefUncompresseds", 6143, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetForceRefUncompresseds");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetForceRefUncompresseds");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetForceRefUncompressed(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10206];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10206])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetForceRefUncompressed", 6191, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetForceRefUncompressed", 6191);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetForceRefUncompressed", 6191);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEnableUserRefForFacetime(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26623] = v9;
      *(a1 + 11960) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableUserRefForFacetime", 6239, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableUserRefForFacetime", 6239, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableUserRefForFacetime", 6229, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetEnableUserRefForFacetime");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetEnableUserRefForFacetime");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEnableUserRefForFacetime(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[11960];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[11960])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEnableUserRefForFacetime", 6277, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetEnableUserRefForFacetime", 6277);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetEnableUserRefForFacetime", 6277);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEnableMultiReferenceP(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26624] = v9;
      a1[327] = 2;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableMultiReferenceP", 6325, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableMultiReferenceP", 6325, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableMultiReferenceP", 6315, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetEnableMultiReferenceP");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetEnableMultiReferenceP");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEnableMultiReferenceP(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[327];
    v11 = MEMORY[0x29EDB8F00];
    if (v10 <= 1)
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = v10 > 1;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetEnableMultiReferenceP", 6363, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetEnableMultiReferenceP", 6363);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetEnableMultiReferenceP", 6363);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetMultiReferencePSpacing(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 1) >= 8)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMultiReferencePSpacing", 6422, "1 <= iMultiReferencePSpacing && iMultiReferencePSpacing <= 8", a1, a1[7], a2, a3, a4, valuePtr, 1, 8);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMultiReferencePSpacing", 6422, "1 <= iMultiReferencePSpacing && iMultiReferencePSpacing <= 8", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26625) = valuePtr;
        *(a1 + 331) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMultiReferencePSpacing", 6411, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMultiReferencePSpacing", 6411, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMultiReferencePSpacing", 6401, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetMultiReferencePSpacing");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetMultiReferencePSpacing");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetMultiReferencePSpacing(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[331];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMultiReferencePSpacing", 6468, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMultiReferencePSpacing", 6468, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMultiReferencePSpacing", 6458, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetMultiReferencePSpacing", 6458);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetMultiReferencePSpacing", 6458);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEnableWeightedPrediction(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      a1[26602] = v10;
      v11 = a1[324] & 0xFFFFFFFE;
      if (Value)
      {
        ++v11;
      }

      a1[324] = v11;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v16 = *a2;
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v10);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v17 = *(a1 + 7);
        }

        v29 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
        return 0;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetEnableWeightedPrediction", 6510, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          v27 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetEnableWeightedPrediction", 6510, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_SetEnableWeightedPrediction", 6500, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v28, "AVE_Prop_HEVC_SetEnableWeightedPrediction");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_SetEnableWeightedPrediction");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEnableWeightedPrediction(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[324] & 1;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEnableWeightedPrediction", 6555, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetEnableWeightedPrediction", 6555);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetEnableWeightedPrediction", 6555);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEnableVUIBitstreamRestriction(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      a1[26626] = v10;
      v11 = *(a1 + 138) & 0xFFFFFF7FLL;
      if (Value)
      {
        v11 = *(a1 + 138) | 0x80;
      }

      *(a1 + 138) = v11;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v16 = *a2;
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v10);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v17 = *(a1 + 7);
        }

        v29 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
        return 0;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetEnableVUIBitstreamRestriction", 6603, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          v27 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetEnableVUIBitstreamRestriction", 6603, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_SetEnableVUIBitstreamRestriction", 6593, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v28, "AVE_Prop_HEVC_SetEnableVUIBitstreamRestriction");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_SetEnableVUIBitstreamRestriction");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEnableVUIBitstreamRestriction(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[138] & 0x80;
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
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v10 >> 7);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEnableVUIBitstreamRestriction", 6649, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetEnableVUIBitstreamRestriction", 6649);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetEnableVUIBitstreamRestriction", 6649);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_AddColorPrimaries(int a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  if (a4)
  {
    if (AVE_DevCap_Find(a1))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v9 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      v10 = v9;
      if (Mutable)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        if ((a2 & 0x30000) == 0x10000)
        {
          v24 = *MEMORY[0x29EDBD110];
        }

        else
        {
          v24 = *MEMORY[0x29EDBD118];
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD128], *MEMORY[0x29EDBD138]);
        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD108], v24);
        v25 = AVE_VUI_AddAllColorPrimToCFArray(v10);
        if (v25)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v26 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v26)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to add Color Primaries %d 0x%x %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_AddColorPrimaries", 6712, "ret == 0", a1, a2, a3, a4, Mutable, v10, v25);
              v29 = AVE_GetCurrTime();
              v30 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Color Primaries %d 0x%x %lld %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_AddColorPrimaries", 6712, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Color Primaries %d 0x%x %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_AddColorPrimaries", 6712, "ret == 0");
            }
          }
        }

        else
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD120], v10);
          CFDictionarySetValue(a4, *MEMORY[0x29EDBCD58], Mutable);
        }

        goto LABEL_35;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v12 = AVE_Log_CheckConsole(0x1Eu);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p\n", v13, 30, v14, "AVE_Prop_HEVC_AddColorPrimaries", 6699, "pTmpDict != __null && pTmpArray != __null", a1, a2, a3, a4, Mutable, v10);
          v15 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", v15, 30, v32, "AVE_Prop_HEVC_AddColorPrimaries", 6699);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", v13, 30, v14, "AVE_Prop_HEVC_AddColorPrimaries", 6699);
        }
      }

      v25 = 4294966293;
      if (Mutable)
      {
LABEL_35:
        CFRelease(Mutable);
        if (!v10)
        {
          return v25;
        }

        goto LABEL_32;
      }

      if (v10)
      {
LABEL_32:
        CFRelease(v10);
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v21, 30, v22, "AVE_Prop_HEVC_AddColorPrimaries", 6691, "pDevCap != __null", a1, a2, a3, a4);
          v23 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v23, 30, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v21, 30, v22);
        }
      }

      return 4294966294;
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
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v17, 30, v18, "AVE_Prop_HEVC_AddColorPrimaries", 6686, "pDict != __null", a1, a2, a3, 0);
        v19 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v19, 30, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v17, 30, v18);
      }
    }

    return 4294966295;
  }

  return v25;
}

uint64_t AVE_Prop_HEVC_SetColorPrimaries(_BYTE *a1, const char **a2, const __CFString *a3, const __CFString *a4)
{
  if (a1 && a2 && a3)
  {
    v8 = a1 + 31332;
    if (!a4)
    {
      *v8 = 1;
      a1[31349] = 1;
      a1[31360] = 1;
      v19 = 2;
      *(a1 + 7841) = 2;
      v20 = 106508;
LABEL_22:
      *&a1[v20] = v19;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v28 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v31 = *a2;
        if (v28)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v19);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v32 = *(a1 + 7);
        }

        v34 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
        return 0;
      }

      return result;
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      IntegerCodePointForString = CVColorPrimariesGetIntegerCodePointForString(a4);
      if (IntegerCodePointForString == 2)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(4);
          if (v11)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v12, 30, v13, "AVE_Prop_HEVC_SetColorPrimaries", 6784, "iColorPrimaries != kAppleColorCodePoints_ColorPrimaries_Unknown", a1, *(a1 + 7), a2, a3, a4, 2);
            v12 = AVE_GetCurrTime();
            v13 = AVE_Log_GetLevelStr(4);
            v14 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v12, 30, v13, "AVE_Prop_HEVC_SetColorPrimaries", 6784, "iColorPrimaries != kAppleColorCodePoints_ColorPrimaries_Unknown");
        }

        return 4294965292;
      }

      v19 = IntegerCodePointForString;
      *(a1 + 26627) = IntegerCodePointForString;
      *v8 = 1;
      a1[31349] = 1;
      a1[31360] = 1;
      v20 = 31364;
      goto LABEL_22;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v21 = AVE_Log_CheckConsole(0x1Eu);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      v24 = *(a1 + 7);
      v25 = CFGetTypeID(a4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v22, 30, v23, "AVE_Prop_HEVC_SetColorPrimaries", 6775, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v24, a2, a3, a4, v25);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        v26 = *(a1 + 7);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v22, 30, v23, "AVE_Prop_HEVC_SetColorPrimaries", 6775, "CFStringGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_HEVC_SetColorPrimaries", 6752, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v18 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v33, "AVE_Prop_HEVC_SetColorPrimaries");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_HEVC_SetColorPrimaries");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_GetColorPrimaries(unsigned int *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    StringForIntegerCodePoint = CVColorPrimariesGetStringForIntegerCodePoint(a1[7841]);
    *a5 = StringForIntegerCodePoint;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v12 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = a1[7841];
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, a1[7841], StringForIntegerCodePoint);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v16 = *(a1 + 7);
        v23 = a1[7841];
        v22 = *a2;
      }

      else
      {
        v24 = a1[7841];
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetColorPrimaries", 6823, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetColorPrimaries", 6823);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetColorPrimaries", 6823);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_AddTransferFunction(int a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  if (a4)
  {
    if (AVE_DevCap_Find(a1))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v9 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      v10 = v9;
      if (Mutable)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        if ((a2 & 0x30000) == 0x10000)
        {
          v24 = *MEMORY[0x29EDBD110];
        }

        else
        {
          v24 = *MEMORY[0x29EDBD118];
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD128], *MEMORY[0x29EDBD138]);
        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD108], v24);
        v25 = AVE_VUI_AddAllTransCharToCFArray(v10);
        if (v25)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v26 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v26)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to add Transfer Characteristic %d 0x%x %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_AddTransferFunction", 6887, "ret == 0", a1, a2, a3, a4, Mutable, v10, v25);
              v29 = AVE_GetCurrTime();
              v30 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Transfer Characteristic %d 0x%x %lld %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_AddTransferFunction", 6887, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Transfer Characteristic %d 0x%x %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_AddTransferFunction", 6887, "ret == 0");
            }
          }
        }

        else
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD120], v10);
          CFDictionarySetValue(a4, *MEMORY[0x29EDBCDD8], Mutable);
        }

        goto LABEL_35;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v12 = AVE_Log_CheckConsole(0x1Eu);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p\n", v13, 30, v14, "AVE_Prop_HEVC_AddTransferFunction", 6874, "pTmpDict != __null && pTmpArray != __null", a1, a2, a3, a4, Mutable, v10);
          v15 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", v15, 30, v32, "AVE_Prop_HEVC_AddTransferFunction", 6874);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", v13, 30, v14, "AVE_Prop_HEVC_AddTransferFunction", 6874);
        }
      }

      v25 = 4294966293;
      if (Mutable)
      {
LABEL_35:
        CFRelease(Mutable);
        if (!v10)
        {
          return v25;
        }

        goto LABEL_32;
      }

      if (v10)
      {
LABEL_32:
        CFRelease(v10);
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v21, 30, v22, "AVE_Prop_HEVC_AddTransferFunction", 6866, "pDevCap != __null", a1, a2, a3, a4);
          v23 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v23, 30, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v21, 30, v22);
        }
      }

      return 4294966294;
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
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v17, 30, v18, "AVE_Prop_HEVC_AddTransferFunction", 6861, "pDict != __null", a1, a2, a3, 0);
        v19 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v19, 30, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v17, 30, v18);
      }
    }

    return 4294966295;
  }

  return v25;
}

uint64_t AVE_Prop_HEVC_SetTransferFunction(_BYTE *a1, const char **a2, const __CFString *a3, const __CFString *cf1)
{
  if (a1 && a2 && a3)
  {
    v8 = a1 + 31332;
    if (!cf1 || CFEqual(cf1, *MEMORY[0x29EDB9648]))
    {
      *v8 = 1;
      a1[31349] = 1;
      a1[31360] = 1;
      v9 = 2;
      *(a1 + 7842) = 2;
      *(a1 + 26628) = 2;
      goto LABEL_7;
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(cf1))
    {
      IntegerCodePointForString = CVTransferFunctionGetIntegerCodePointForString(cf1);
      if (IntegerCodePointForString != 2)
      {
        v9 = IntegerCodePointForString;
        *(a1 + 26628) = IntegerCodePointForString;
        *v8 = 1;
        a1[31349] = 1;
        a1[31360] = 1;
        *(a1 + 7842) = IntegerCodePointForString;
LABEL_7:
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

          v33 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
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
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v23, 30, v24, "AVE_Prop_HEVC_SetTransferFunction", 6960, "iTransferFunction != kAppleColorCodePoints_TransferFunction_Unknown", a1, *(a1 + 7), a2, a3, cf1, 2);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v23, 30, v24, "AVE_Prop_HEVC_SetTransferFunction", 6960, "iTransferFunction != kAppleColorCodePoints_TransferFunction_Unknown");
      }

      return 4294965292;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v26 = AVE_Log_CheckConsole(0x1Eu);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        v29 = *(a1 + 7);
        v30 = CFGetTypeID(cf1);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v27, 30, v28, "AVE_Prop_HEVC_SetTransferFunction", 6951, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v29, a2, a3, cf1, v30);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          v31 = *(a1 + 7);
          CFGetTypeID(cf1);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v27, 30, v28, "AVE_Prop_HEVC_SetTransferFunction", 6951, "CFStringGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetTransferFunction", 6928, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, cf1);
        v19 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v32, "AVE_Prop_HEVC_SetTransferFunction");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetTransferFunction");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_GetTransferFunction(unsigned int *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    StringForIntegerCodePoint = CVTransferFunctionGetStringForIntegerCodePoint(a1[7842]);
    *a5 = StringForIntegerCodePoint;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v12 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = a1[7842];
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, a1[7842], StringForIntegerCodePoint);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v16 = *(a1 + 7);
        v23 = a1[7842];
        v22 = *a2;
      }

      else
      {
        v24 = a1[7842];
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetTransferFunction", 6999, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetTransferFunction", 6999);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetTransferFunction", 6999);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_AddYCbCrMatrix(int a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  if (a4)
  {
    if (AVE_DevCap_Find(a1))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v9 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      v10 = v9;
      if (Mutable)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        if ((a2 & 0x30000) == 0x10000)
        {
          v24 = *MEMORY[0x29EDBD110];
        }

        else
        {
          v24 = *MEMORY[0x29EDBD118];
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD128], *MEMORY[0x29EDBD138]);
        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD108], v24);
        v25 = AVE_VUI_AddAllMatrixCoeffToCFArray(v10);
        if (v25)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v26 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v26)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to add Matrix Coefficients %d 0x%x %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_AddYCbCrMatrix", 7063, "ret == 0", a1, a2, a3, a4, Mutable, v10, v25);
              v29 = AVE_GetCurrTime();
              v30 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Matrix Coefficients %d 0x%x %lld %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_AddYCbCrMatrix", 7063, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Matrix Coefficients %d 0x%x %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_AddYCbCrMatrix", 7063, "ret == 0");
            }
          }
        }

        else
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD120], v10);
          CFDictionarySetValue(a4, *MEMORY[0x29EDBCDE8], Mutable);
        }

        goto LABEL_35;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v12 = AVE_Log_CheckConsole(0x1Eu);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p\n", v13, 30, v14, "AVE_Prop_HEVC_AddYCbCrMatrix", 7050, "pTmpDict != __null && pTmpArray != __null", a1, a2, a3, a4, Mutable, v10);
          v15 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", v15, 30, v32, "AVE_Prop_HEVC_AddYCbCrMatrix", 7050);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", v13, 30, v14, "AVE_Prop_HEVC_AddYCbCrMatrix", 7050);
        }
      }

      v25 = 4294966293;
      if (Mutable)
      {
LABEL_35:
        CFRelease(Mutable);
        if (!v10)
        {
          return v25;
        }

        goto LABEL_32;
      }

      if (v10)
      {
LABEL_32:
        CFRelease(v10);
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v21, 30, v22, "AVE_Prop_HEVC_AddYCbCrMatrix", 7042, "pDevCap != __null", a1, a2, a3, a4);
          v23 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v23, 30, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v21, 30, v22);
        }
      }

      return 4294966294;
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
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v17, 30, v18, "AVE_Prop_HEVC_AddYCbCrMatrix", 7037, "pDict != __null", a1, a2, a3, 0);
        v19 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v19, 30, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v17, 30, v18);
      }
    }

    return 4294966295;
  }

  return v25;
}

uint64_t AVE_Prop_HEVC_SetYCbCrMatrix(_BYTE *a1, const char **a2, const __CFString *a3, const __CFString *a4)
{
  if (a1 && a2 && a3)
  {
    v8 = a1 + 31332;
    if (!a4)
    {
      *v8 = 1;
      a1[31349] = 1;
      a1[31360] = 1;
      IntegerCodePointForString = 2;
      *(a1 + 7843) = 2;
      v12 = 106516;
LABEL_14:
      *&a1[v12] = IntegerCodePointForString;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v21 = *a2;
        if (v18)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, IntegerCodePointForString);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v22 = *(a1 + 7);
        }

        v33 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
        return 0;
      }

      return result;
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      IntegerCodePointForString = CVYCbCrMatrixGetIntegerCodePointForString(a4);
      if (IntegerCodePointForString != 2)
      {
LABEL_9:
        *(a1 + 26629) = IntegerCodePointForString;
        *v8 = 1;
        a1[31349] = 1;
        a1[31360] = 1;
        v12 = 31372;
        goto LABEL_14;
      }

      v11 = *MEMORY[0x29EDB9680];
      if (CFEqual(a4, *MEMORY[0x29EDB9680]))
      {
        IntegerCodePointForString = 2 * (CFEqual(a4, v11) == 0);
        goto LABEL_9;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v29 = AVE_Log_CheckConsole(0x1Eu);
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s:%d %s | kMatrixCoefficients set %p %lld %p %p %p 0x%x\n", v30, 30, v31, "AVE_Prop_HEVC_SetYCbCrMatrix", 7137, "iYCbCrMatrix != kAppleColorCodePoints_YCbCrMatrix_Unknown || (iYCbCrMatrix == kAppleColorCodePoints_YCbCrMatrix_Unknown && CFEqual((CFStringRef)pValue, kCVImageBufferYCbCrMatrix_Identity))", a1, *(a1 + 7), a2, a3, a4, 2);
          v30 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
        }

        v34 = *(a1 + 7);
        syslog(3, "%lld %d AVE %s: %s:%d %s | kMatrixCoefficients set %p %lld %p %p %p 0x%x", v30, 30, v31, "AVE_Prop_HEVC_SetYCbCrMatrix", 7137, "iYCbCrMatrix != kAppleColorCodePoints_YCbCrMatrix_Unknown || (iYCbCrMatrix == kAppleColorCodePoints_YCbCrMatrix_Unknown && CFEqual((CFStringRef)pValue, kCVImageBufferYCbCrMatrix_Identity))");
      }
    }

    else if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v23 = AVE_Log_CheckConsole(0x1Eu);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      v26 = *(a1 + 7);
      v27 = CFGetTypeID(a4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_HEVC_SetYCbCrMatrix", 7126, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        v28 = *(a1 + 7);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_HEVC_SetYCbCrMatrix", 7126, "CFStringGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v13 = AVE_Log_CheckConsole(0x1Eu);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_HEVC_SetYCbCrMatrix", 7103, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
      v16 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v32, "AVE_Prop_HEVC_SetYCbCrMatrix");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_HEVC_SetYCbCrMatrix");
    }
  }

  return 4294966295;
}

uint64_t AVE_Prop_HEVC_GetYCbCrMatrix(unsigned int *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    StringForIntegerCodePoint = CVYCbCrMatrixGetStringForIntegerCodePoint(a1[7843]);
    *a5 = StringForIntegerCodePoint;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v12 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = a1[7843];
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, a1[7843], StringForIntegerCodePoint);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v16 = *(a1 + 7);
        v23 = a1[7843];
        v22 = *a2;
      }

      else
      {
        v24 = a1[7843];
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetYCbCrMatrix", 7182, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetYCbCrMatrix", 7182);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetYCbCrMatrix", 7182);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetHDRMetadataInsertionMode(_DWORD *a1, const char **a2, const __CFString *a3, const void *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (CFEqual(a4, *MEMORY[0x29EDBCF40]))
      {
        v9 = 0;
        goto LABEL_19;
      }

      if (CFEqual(a4, *MEMORY[0x29EDBCF38]))
      {
        v9 = 1;
LABEL_19:
        a1[26728] = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p\n", v27, 30, v28, "AVE_Prop_HEVC_SetHDRMetadataInsertionMode", 7252, "false", a1, *(a1 + 7), a2, a3, a4);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          v29 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p", v27, 30, v28, "AVE_Prop_HEVC_SetHDRMetadataInsertionMode", 7252);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetHDRMetadataInsertionMode", 7234, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v17, a2, a3, a4, v18);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(4);
          v19 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v15, 30, v16, "AVE_Prop_HEVC_SetHDRMetadataInsertionMode", 7234, "CFStringGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v11, 30, v12, "AVE_Prop_HEVC_SetHDRMetadataInsertionMode", 7224, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v13 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 30, v30, "AVE_Prop_HEVC_SetHDRMetadataInsertionMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v11, 30, v12, "AVE_Prop_HEVC_SetHDRMetadataInsertionMode");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_GetHDRMetadataInsertionMode(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if (a1[26728])
    {
      v10 = MEMORY[0x29EDBCF38];
    }

    else
    {
      v10 = MEMORY[0x29EDBCF40];
    }

    *a5 = *v10;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v12 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = a1[26728];
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, a1[26728], a5);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v16 = *(a1 + 7);
        v23 = a1[26728];
        v22 = *a2;
      }

      else
      {
        v24 = a1[26728];
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetHDRMetadataInsertionMode", 7289, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetHDRMetadataInsertionMode", 7289);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetHDRMetadataInsertionMode", 7289);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS(void *a1, const char **a2, const __CFString *a3, const void *a4)
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
        v54 = v29;
        v31 = 7350;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7350, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v54, a2, a3, a4, v30);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        v34 = a1[7];
        CFGetTypeID(a4);
        v35 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_26:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v32, 30, v33, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", v31, v35);
        return 4294965293;
      }

      v39 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v40 = 7350;
LABEL_33:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", v40, v39);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    v10 = Count;
    if (Count > 16 || (Count & 1) != 0)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v36 = AVE_Log_CheckConsole(0x1Eu);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        if (v36)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [%d, %d]\n", v37, 30, v38, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7361, "(cQpIndexOffsetCount & 0x1) == 0 && cQpIndexOffsetCount / 2 <= 8", a1, a1[7], a2, a3, a4, v10, 0, 16);
          v37 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [%d, %d]", v37, 30, v38, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7361, "(cQpIndexOffsetCount & 0x1) == 0 && cQpIndexOffsetCount / 2 <= 8", a1, a1[7], a2, a3, a4, v10, 0, 16);
      }

      return 4294965292;
    }

    else
    {
      if (Count >= 1)
      {
        v11 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, v11);
          if (!ValueAtIndex)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v41 = AVE_Log_CheckConsole(0x1Eu);
              v42 = AVE_GetCurrTime();
              v43 = AVE_Log_GetLevelStr(4);
              if (v41)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v42, 30, v43, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7370, "cQpIndexOffset != __null", a1, a1[7], a2, a3, a4);
                v42 = AVE_GetCurrTime();
                v43 = AVE_Log_GetLevelStr(4);
                v44 = a1[7];
              }

              else
              {
                v56 = a1[7];
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v42, 30, v43, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7370);
            }

            return 4294965293;
          }

          v13 = ValueAtIndex;
          v14 = CFNumberGetTypeID();
          if (v14 != CFGetTypeID(v13))
          {
            break;
          }

          CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
          if (valuePtr + 12 >= 0x19)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v49 = AVE_Log_CheckConsole(0x1Eu);
              v50 = AVE_GetCurrTime();
              v51 = AVE_Log_GetLevelStr(4);
              if (v49)
              {
                printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v50, 30, v51, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7383, "(cQpOff >= -12) && (cQpOff <= 12)", a1, a1[7], a2, a3, a4, valuePtr, -12, 12);
                v50 = AVE_GetCurrTime();
                v51 = AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v50, 30, v51, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7383, "(cQpOff >= -12) && (cQpOff <= 12)", a1, a1[7], a2, a3, a4, valuePtr, 4294967284, 12);
            }

            return 4294965292;
          }

          if (v11)
          {
            v15 = 39924;
          }

          else
          {
            v15 = 39892;
          }

          *(a1 + 4 * (v11++ >> 1) + v15 + 4) = valuePtr;
          if (v10 == v11)
          {
            goto LABEL_17;
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
          v55 = v46;
          v31 = 7374;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7374, "CFNumberGetTypeID() == CFGetTypeID(cQpIndexOffset)", a1, v55, a2, a3, a4, v47);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          v48 = a1[7];
          CFGetTypeID(a4);
          v35 = "CFNumberGetTypeID() == CFGetTypeID(cQpIndexOffset)";
          goto LABEL_26;
        }

        v39 = "CFNumberGetTypeID() == CFGetTypeID(cQpIndexOffset)";
        v40 = 7374;
        goto LABEL_33;
      }

LABEL_17:
      *(a1 + 26630) = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v17 = AVE_Log_CheckConsole(0x1Eu);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(7);
        v20 = *a2;
        if (v17)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %ld\n", v18, 30, v19, a1, a1[7], *a2, v10);
          v18 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v21 = a1[7];
        }

        v53 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %ld", v18);
        return 0;
      }
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v23, 30, v24, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7340, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v25 = AVE_GetCurrTime();
        v52 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v25, 30, v52, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v23, 30, v24, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v29 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v29)
        {
          v55 = a5;
          v58 = 0;
          v53 = allocator;
          v54 = a4;
          v51 = a1[7];
          v52 = a2;
          v47 = "pQpOffsetArray != __null";
          v48 = a1;
          v45 = 7430;
          v44 = LevelStr;
          v42 = "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p";
LABEL_32:
          syslog(3, v42, CurrTime, 30, v44, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", v45, v47, v48, v51, v52, v53, v54, v55, v58);
          return 4294966293;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", 7430, "pQpOffsetArray != __null", a1, a1[7], a2, allocator, a4, a5, 0);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        v34 = a1[7];
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p", v32, 30, v33, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", 7430, "pQpOffsetArray != __null", a1);
      }

      return 4294966293;
    }

    v11 = Mutable;
    v59 = a4;
    v60 = a2;
    if (2 * *(a1 + 2561) - 2 >= 1)
    {
      v12 = 0;
      while (1)
      {
        v13 = a1 + ++v12 + 9973;
        v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, v13);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        v16 = a1 + v12 + 9981;
        v17 = CFNumberCreate(allocator, kCFNumberSInt32Type, v16);
        if (!v17)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v39 = AVE_Log_CheckConsole(0x1Eu);
            v40 = AVE_GetCurrTime();
            v41 = AVE_Log_GetLevelStr(4);
            if (v39)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", v40, 30, v41, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", 7446, "pCrQpOff != __null", a1, a1[7], v60, allocator, v59, a5, *v16);
              v40 = AVE_GetCurrTime();
              v41 = AVE_Log_GetLevelStr(4);
              v57 = *v16;
              v50 = a1[7];
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d", v40, 30, v41, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", 7446, "pCrQpOff != __null", a1);
          }

          CFRelease(v15);
          return 4294966293;
        }

        v18 = v17;
        CFArrayAppendValue(v11, v15);
        CFArrayAppendValue(v11, v18);
        CFRelease(v15);
        CFRelease(v18);
        if (v12 >= 2 * *(a1 + 2561) - 2)
        {
          goto LABEL_11;
        }
      }

      if (!AVE_Log_CheckLevel(0x1Eu, 4))
      {
        return 4294966293;
      }

      v35 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", CurrTime, 30, v36, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", 7439, "pCbQpOff != __null", a1, a1[7], v60, allocator, v59, a5, *v13);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        v56 = *v13;
        v49 = a1[7];
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d", v37, 30, v38, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", 7439, "pCbQpOff != __null", a1);
        return 4294966293;
      }

      v55 = a5;
      v58 = *v13;
      v53 = allocator;
      v54 = v59;
      v51 = a1[7];
      v52 = v60;
      v47 = "pCbQpOff != __null";
      v48 = a1;
      v45 = 7439;
      v44 = v36;
      v42 = "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d";
      goto LABEL_32;
    }

LABEL_11:
    *a5 = v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v20 = AVE_Log_CheckConsole(0x1Eu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(7);
      v23 = *v60;
      if (v20)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v21, 30, v22, a1, a1[7], *v60, v11);
        v21 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v24 = a1[7];
      }

      v46 = *v60;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v21);
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
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v26, 30, v27, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", 7422, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v28 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v28, 30, v43, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", 7422);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v26, 30, v27, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", 7422);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetUserParameterSetsIds(void *a1, const char **a2, const __CFString *a3, const void *a4)
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

      v25 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v28 = a1[7];
      v29 = CFGetTypeID(a4);
      if (v25)
      {
        v53 = v28;
        v30 = 7519;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7519, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v53, a2, a3, a4, v29);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        v33 = a1[7];
        CFGetTypeID(a4);
        v34 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_27:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v31, 30, v32, "AVE_Prop_HEVC_SetUserParameterSetsIds", v30, v34);
        return 4294965293;
      }

      v38 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v39 = 7519;
LABEL_34:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetUserParameterSetsIds", v39, v38);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    v10 = Count;
    if (Count > 9)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v35 = AVE_Log_CheckConsole(0x1Eu);
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
        if (v35)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [0, %d]\n", v36, 30, v37, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7529, "UserParameterSetIdsCount <= 9", a1, a1[7], a2, a3, a4, v10, 9);
          v36 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [0, %d]", v36, 30, v37, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7529, "UserParameterSetIdsCount <= 9", a1, a1[7], a2, a3, a4, v10, 9);
      }

      return 4294965292;
    }

    else
    {
      if (Count >= 1)
      {
        v11 = 2550;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, v11 - 2550);
          if (!ValueAtIndex)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v40 = AVE_Log_CheckConsole(0x1Eu);
              v41 = AVE_GetCurrTime();
              v42 = AVE_Log_GetLevelStr(4);
              if (v40)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v41, 30, v42, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7537, "UserParameterSetIds != __null", a1, a1[7], a2, a3, a4);
                v41 = AVE_GetCurrTime();
                v42 = AVE_Log_GetLevelStr(4);
                v43 = a1[7];
              }

              else
              {
                v55 = a1[7];
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v41, 30, v42, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7537);
            }

            return 4294965293;
          }

          v13 = ValueAtIndex;
          v14 = CFNumberGetTypeID();
          if (v14 != CFGetTypeID(v13))
          {
            break;
          }

          CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
          if ((valuePtr & 0x80000000) != 0)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v48 = AVE_Log_CheckConsole(0x1Eu);
              v49 = AVE_GetCurrTime();
              v50 = AVE_Log_GetLevelStr(4);
              if (v48)
              {
                printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v49, 30, v50, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7550, "ParameterSetId >= 0", a1, a1[7], a2, a3, a4, valuePtr);
                v49 = AVE_GetCurrTime();
                v50 = AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v49, 30, v50, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7550, "ParameterSetId >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            }

            return 4294965292;
          }

          if (v11 == 2551)
          {
            *(a1 + 6171) = valuePtr;
          }

          else if (v11 == 2550)
          {
            *(a1 + 3000) = valuePtr;
          }

          else
          {
            *(a1 + v11) = valuePtr;
          }

          if (++v11 - v10 == 2550)
          {
            goto LABEL_18;
          }
        }

        if (!AVE_Log_CheckLevel(0x1Eu, 4))
        {
          return 4294965293;
        }

        v44 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v45 = a1[7];
        v46 = CFGetTypeID(a4);
        if (v44)
        {
          v54 = v45;
          v30 = 7541;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7541, "CFNumberGetTypeID() == CFGetTypeID(UserParameterSetIds)", a1, v54, a2, a3, a4, v46);
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          v47 = a1[7];
          CFGetTypeID(a4);
          v34 = "CFNumberGetTypeID() == CFGetTypeID(UserParameterSetIds)";
          goto LABEL_27;
        }

        v38 = "CFNumberGetTypeID() == CFGetTypeID(UserParameterSetIds)";
        v39 = 7541;
        goto LABEL_34;
      }

LABEL_18:
      *(a1 + 2561) = v10 - 2;
      *(a1 + 26631) = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v16 = AVE_Log_CheckConsole(0x1Eu);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(7);
        v19 = *a2;
        if (v16)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %ld\n", v17, 30, v18, a1, a1[7], *a2, v10);
          v17 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v20 = a1[7];
        }

        v52 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %ld", v17);
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
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v22, 30, v23, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7509, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v24 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v24, 30, v51, "AVE_Prop_HEVC_SetUserParameterSetsIds");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_SetUserParameterSetsIds");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetUserParameterSetsIds(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (!a1 || !a2 || !a4 || !a5)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v26 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7602, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v29 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v29, 30, v43, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7602);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7602);
      }
    }

    return 4294966295;
  }

  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
  if (!Mutable)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v30 = AVE_Log_CheckConsole(0x1Eu);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p\n", v31, 30, v32, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7610, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, 0);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        v33 = a1[7];
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p", v31, 30, v32, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7610, "pArray != __null", a1);
    }

    return 4294966293;
  }

  v11 = Mutable;
  v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, a1 + 1500);
  if (!v12)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v34 = AVE_Log_CheckConsole(0x1Eu);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v35, 30, v36, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7617, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, *(a1 + 3000));
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
      }

      v47 = *(a1 + 3000);
      v45 = a1[7];
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v35, 30, v36, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7617, "pNum != __null", a1);
    }

    goto LABEL_38;
  }

  v13 = v12;
  CFArrayAppendValue(v11, v12);
  CFRelease(v13);
  v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, a1 + 24684);
  if (!v14)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v37 = AVE_Log_CheckConsole(0x1Eu);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v38, 30, v39, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7633, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, *(a1 + 6171));
        v38 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(4);
      }

      v48 = *(a1 + 6171);
      v46 = a1[7];
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v38, 30, v39, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7633, "pNum != __null", a1);
    }

LABEL_38:
    CFRelease(v11);
    return 4294966293;
  }

  v15 = v14;
  CFArrayAppendValue(v11, v14);
  CFRelease(v15);
  if (*(a1 + 2561) >= 1)
  {
    v16 = 0;
    v17 = (a1 + 1276);
    while (1)
    {
      v18 = CFNumberCreate(allocator, kCFNumberSInt32Type, v17);
      if (!v18)
      {
        break;
      }

      v19 = v18;
      CFArrayAppendValue(v11, v18);
      CFRelease(v19);
      ++v16;
      ++v17;
      if (v16 >= *(a1 + 2561))
      {
        goto LABEL_12;
      }
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v40 = AVE_Log_CheckConsole(0x1Eu);
      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(4);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v41, 30, v42, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7651, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, *v17);
        v41 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v41, 30, v42, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7651, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, *v17);
    }

    goto LABEL_38;
  }

LABEL_12:
  *a5 = v11;
  result = AVE_Log_CheckLevel(0x1Eu, 7);
  if (result)
  {
    v21 = AVE_Log_CheckConsole(0x1Eu);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(7);
    v24 = *a2;
    if (v21)
    {
      printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v22, 30, v23, a1, a1[7], *a2, v11);
      v22 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v25 = a1[7];
    }

    v44 = *a2;
    syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v22);
    return 0;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_Setlog2_max_minus4(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 0xC)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [0, 12)\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_Setlog2_max_minus4", 7725, "0 <= iLogMaxMinus4 && iLogMaxMinus4 < 12", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [0, 12)", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_Setlog2_max_minus4", 7725, "0 <= iLogMaxMinus4 && iLogMaxMinus4 < 12");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26632) = valuePtr;
        *(a1 + 6185) = v9 + 1;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_Setlog2_max_minus4", 7716, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_Setlog2_max_minus4", 7716, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_Setlog2_max_minus4", 7706, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_Setlog2_max_minus4");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_Setlog2_max_minus4");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_Getlog2_max_minus4(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[6185] - 1;
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_Getlog2_max_minus4", 7771, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_Getlog2_max_minus4", 7771, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_Getlog2_max_minus4", 7761, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_Getlog2_max_minus4", 7761);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_Getlog2_max_minus4", 7761);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetMasteringDisplayColorVolume(char *a1, const char **a2, const __CFString *a3, const __CFData *a4)
{
  if (a1 && a2 && a3)
  {
    v8 = (a1 + 104736);
    if (!a4)
    {
      v11 = 0;
      *(a1 + 26656) = 0;
      v12 = *(a1 + 137) & 0xFFFFFFFFFFFFFEFFLL;
LABEL_12:
      *(a1 + 137) = v12;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v21 = *a2;
        if (v18)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v22 = *(a1 + 7);
        }

        v35 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
        return 0;
      }

      return result;
    }

    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Length = CFDataGetLength(a4);
      if (Length == 24)
      {
        v36.location = 0;
        v36.length = 24;
        CFDataGetBytes(a4, v36, a1 + 106628);
        AVE_SEI::SetMasteringDisplayColorVolume(*v8, 0, a4);
        v11 = 1;
        *(a1 + 26656) = 1;
        v12 = *(a1 + 137) | 0x100;
        goto LABEL_12;
      }

      v29 = Length;
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v30 = AVE_Log_CheckConsole(0x1Eu);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid MasteringDisplayColorVolume size %p %lld %p %p %p %ld\n", v31, 30, v32, "AVE_Prop_HEVC_SetMasteringDisplayColorVolume", 7827, "size == 24", a1, *(a1 + 7), a2, a3, a4, v29);
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          v33 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid MasteringDisplayColorVolume size %p %lld %p %p %p %ld", v31, 30, v32, "AVE_Prop_HEVC_SetMasteringDisplayColorVolume", 7827, "size == 24");
      }

      return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_HEVC_SetMasteringDisplayColorVolume", 7819, "CFDataGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          v28 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_HEVC_SetMasteringDisplayColorVolume", 7819, "CFDataGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_HEVC_SetMasteringDisplayColorVolume", 7804, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v34, "AVE_Prop_HEVC_SetMasteringDisplayColorVolume");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_HEVC_SetMasteringDisplayColorVolume");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_GetMasteringDisplayColorVolume(const UInt8 *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFDataRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if (*(a1 + 26656) < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = CFDataCreate(allocator, a1 + 106628, 24);
      if (!v10)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v14 = *(a1 + 7);
          if (v11)
          {
            printf("%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %p %zu\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMasteringDisplayColorVolume", 7893, "pData != __null", a1, v14, a2, allocator, a4, a5, a1 + 106628, 0x18uLL);
            v15 = AVE_GetCurrTime();
            v16 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %p %zu", v15, 30, v16, "AVE_Prop_HEVC_GetMasteringDisplayColorVolume", 7893, "pData != __null", a1, *(a1 + 7));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %p %zu", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMasteringDisplayColorVolume", 7893, "pData != __null", a1, v14);
          }
        }

        return 4294966293;
      }
    }

    *a5 = v10;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v22 = AVE_Log_CheckConsole(0x1Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(7);
      v25 = *a2;
      if (v22)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v23, 30, v24, a1, *(a1 + 7), *a2, v10);
        v23 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v26 = *(a1 + 7);
      }

      v28 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v23);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMasteringDisplayColorVolume", 7879, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v27, "AVE_Prop_HEVC_GetMasteringDisplayColorVolume", 7879);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetMasteringDisplayColorVolume", 7879);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetContentLightLevelInfo(char *a1, const char **a2, const __CFString *a3, const __CFData *a4)
{
  if (a1 && a2 && a3)
  {
    v8 = (a1 + 104736);
    if (!a4)
    {
      v11 = 0;
      *(a1 + 26663) = 0;
      v12 = *(a1 + 137) & 0xFFFFFFFFFFFFFDFFLL;
LABEL_12:
      *(a1 + 137) = v12;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v21 = *a2;
        if (v18)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v22 = *(a1 + 7);
        }

        v35 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
        return 0;
      }

      return result;
    }

    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Length = CFDataGetLength(a4);
      if (Length == 4)
      {
        v36.location = 0;
        v36.length = 4;
        CFDataGetBytes(a4, v36, a1 + 106656);
        AVE_SEI::SetContentLightLevelInfo(*v8, 0, a4);
        v11 = 1;
        *(a1 + 26663) = 1;
        v12 = *(a1 + 137) | 0x200;
        goto LABEL_12;
      }

      v29 = Length;
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v30 = AVE_Log_CheckConsole(0x1Eu);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid ContentLightLevelInfo size %p %lld %p %p %p %ld\n", v31, 30, v32, "AVE_Prop_HEVC_SetContentLightLevelInfo", 7951, "size == 4", a1, *(a1 + 7), a2, a3, a4, v29);
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          v33 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid ContentLightLevelInfo size %p %lld %p %p %p %ld", v31, 30, v32, "AVE_Prop_HEVC_SetContentLightLevelInfo", 7951, "size == 4");
      }

      return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_HEVC_SetContentLightLevelInfo", 7942, "CFDataGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          v28 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_HEVC_SetContentLightLevelInfo", 7942, "CFDataGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_HEVC_SetContentLightLevelInfo", 7927, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v34, "AVE_Prop_HEVC_SetContentLightLevelInfo");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_HEVC_SetContentLightLevelInfo");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_GetContentLightLevelInfo(const UInt8 *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFDataRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if (*(a1 + 26663) < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = CFDataCreate(allocator, a1 + 106656, 4);
      if (!v10)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v14 = *(a1 + 7);
          if (v11)
          {
            printf("%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %p %zu\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetContentLightLevelInfo", 8016, "pData != __null", a1, v14, a2, allocator, a4, a5, a1 + 106656, 4uLL);
            v15 = AVE_GetCurrTime();
            v16 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %p %zu", v15, 30, v16, "AVE_Prop_HEVC_GetContentLightLevelInfo", 8016, "pData != __null", a1, *(a1 + 7));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %p %zu", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetContentLightLevelInfo", 8016, "pData != __null", a1, v14);
          }
        }

        return 4294966293;
      }
    }

    *a5 = v10;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v22 = AVE_Log_CheckConsole(0x1Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(7);
      v25 = *a2;
      if (v22)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v23, 30, v24, a1, *(a1 + 7), *a2, v10);
        v23 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v26 = *(a1 + 7);
      }

      v28 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v23);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetContentLightLevelInfo", 8002, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v27, "AVE_Prop_HEVC_GetContentLightLevelInfo", 8002);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetContentLightLevelInfo", 8002);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetAmbientViewingEnvironment(char *a1, const char **a2, const __CFString *a3, const __CFData *a4)
{
  if (a1 && a2 && a3)
  {
    v8 = (a1 + 104736);
    if (!a4)
    {
      v11 = 0;
      *(a1 + 26665) = 0;
      v12 = *(a1 + 137) & 0xFFFFFFFFFFFFFFBFLL;
LABEL_12:
      *(a1 + 137) = v12;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v21 = *a2;
        if (v18)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v22 = *(a1 + 7);
        }

        v35 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
        return 0;
      }

      return result;
    }

    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Length = CFDataGetLength(a4);
      if (Length == 8)
      {
        v36.location = 0;
        v36.length = 8;
        CFDataGetBytes(a4, v36, a1 + 106664);
        AVE_SEI::SetAmbientViewingEnvironment(*v8, 0, a4);
        v11 = 1;
        *(a1 + 26665) = 1;
        v12 = *(a1 + 137) | 0x40;
        goto LABEL_12;
      }

      v29 = Length;
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v30 = AVE_Log_CheckConsole(0x1Eu);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid AmbientViewingEnvironment size %p %lld %p %p %p %ld\n", v31, 30, v32, "AVE_Prop_HEVC_SetAmbientViewingEnvironment", 8074, "size == 8", a1, *(a1 + 7), a2, a3, a4, v29);
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          v33 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid AmbientViewingEnvironment size %p %lld %p %p %p %ld", v31, 30, v32, "AVE_Prop_HEVC_SetAmbientViewingEnvironment", 8074, "size == 8");
      }

      return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_HEVC_SetAmbientViewingEnvironment", 8065, "CFDataGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          v28 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_HEVC_SetAmbientViewingEnvironment", 8065, "CFDataGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_HEVC_SetAmbientViewingEnvironment", 8050, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v34, "AVE_Prop_HEVC_SetAmbientViewingEnvironment");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_HEVC_SetAmbientViewingEnvironment");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_GetAmbientViewingEnvironment(const UInt8 *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFDataRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if (*(a1 + 26665) < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = CFDataCreate(allocator, a1 + 106664, 8);
      if (!v10)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v14 = *(a1 + 7);
          if (v11)
          {
            printf("%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %s %zu\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetAmbientViewingEnvironment", 8140, "pData != __null", a1, v14, a2, allocator, a4, a5, a1 + 106664, 8uLL);
            v15 = AVE_GetCurrTime();
            v16 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %s %zu", v15, 30, v16, "AVE_Prop_HEVC_GetAmbientViewingEnvironment", 8140, "pData != __null", a1, *(a1 + 7));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %s %zu", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetAmbientViewingEnvironment", 8140, "pData != __null", a1, v14);
          }
        }

        return 4294966293;
      }
    }

    *a5 = v10;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v22 = AVE_Log_CheckConsole(0x1Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(7);
      v25 = *a2;
      if (v22)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v23, 30, v24, a1, *(a1 + 7), *a2, v10);
        v23 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v26 = *(a1 + 7);
      }

      v28 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v23);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetAmbientViewingEnvironment", 8127, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v27, "AVE_Prop_HEVC_GetAmbientViewingEnvironment", 8127);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetAmbientViewingEnvironment", 8127);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetInsertTrailingBytes(_DWORD *a1, const char **a2, const __CFString *a3, const __CFData *a4)
{
  if (!a1 || !a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8176, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v22 = AVE_GetCurrTime();
        v46 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v46, "AVE_Prop_HEVC_SetInsertTrailingBytes");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetInsertTrailingBytes");
      }
    }

    return 4294966295;
  }

  v8 = a1 + 2695;
  if (!a4)
  {
LABEL_34:
    v34 = a4 != 0;
    a1[26668] = v34;
    *(a1 + 10930) = v34;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v35 = AVE_Log_CheckConsole(0x1Eu);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(7);
      v38 = *a2;
      if (v35)
      {
        printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v36, 30, v37, a1, *(a1 + 7), *a2, v34);
        v36 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v39 = *(a1 + 7);
      }

      v47 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v36);
      return 0;
    }

    return result;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID == CFGetTypeID(a4))
  {
    BytePtr = CFDataGetBytePtr(a4);
    if (BytePtr)
    {
      v11 = BytePtr;
      Length = CFDataGetLength(a4);
      v13 = Length;
      if (*v8 == 1)
      {
        if (a1[2723] == 1)
        {
          if (Length >= 1025)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v14 = AVE_Log_CheckConsole(0x1Eu);
              v15 = AVE_GetCurrTime();
              v16 = AVE_Log_GetLevelStr(4);
              if (v14)
              {
                v17 = "size <= 1024";
                v18 = 8205;
                printf("%lld %d AVE %s: %s:%d %s | invalid RPUNutSize size %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8205, "size <= 1024", a1, *(a1 + 7), a2, a3, a4, v13);
LABEL_42:
                v41 = AVE_GetCurrTime();
                v42 = AVE_Log_GetLevelStr(4);
                v43 = *(a1 + 7);
                syslog(3, "%lld %d AVE %s: %s:%d %s | invalid RPUNutSize size %p %lld %p %p %p %ld", v41, 30, v42, "AVE_Prop_HEVC_SetInsertTrailingBytes", v18, v17);
                return 4294965292;
              }

              v44 = "size <= 1024";
              v45 = 8205;
              goto LABEL_46;
            }

            return 4294965292;
          }
        }

        else if (Length >= 513)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v40 = AVE_Log_CheckConsole(0x1Eu);
            v15 = AVE_GetCurrTime();
            v16 = AVE_Log_GetLevelStr(4);
            if (v40)
            {
              v17 = "size <= 512";
              v18 = 8215;
              printf("%lld %d AVE %s: %s:%d %s | invalid RPUNutSize size %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8215, "size <= 512", a1, *(a1 + 7), a2, a3, a4, v13);
              goto LABEL_42;
            }

            v44 = "size <= 512";
            v45 = 8215;
            goto LABEL_46;
          }

          return 4294965292;
        }
      }

      else if (Length >= 513)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v33 = AVE_Log_CheckConsole(0x1Eu);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(4);
          if (v33)
          {
            v17 = "size <= 512";
            v18 = 8225;
            printf("%lld %d AVE %s: %s:%d %s | invalid RPUNutSize size %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8225, "size <= 512", a1, *(a1 + 7), a2, a3, a4, v13);
            goto LABEL_42;
          }

          v44 = "size <= 512";
          v45 = 8225;
LABEL_46:
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid RPUNutSize size %p %lld %p %p %p %ld", v15, 30, v16, "AVE_Prop_HEVC_SetInsertTrailingBytes", v45, v44);
        }

        return 4294965292;
      }

      a1[2861] = Length;
      memcpy(a1 + 10931, v11, Length);
      goto LABEL_34;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v30 = AVE_Log_CheckConsole(0x1Eu);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get CFDataGetBytePtr  %p %lld %p %p %p\n", v31, 30, v32, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8193, "pData != __null", a1, *(a1 + 7), a2, a3, a4);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
      }

      v48 = *(a1 + 7);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFDataGetBytePtr  %p %lld %p %p %p", v31, 30, v32, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8193);
    }

    return 4294966295;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v23 = AVE_Log_CheckConsole(0x1Eu);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(4);
    v26 = *(a1 + 7);
    v27 = CFGetTypeID(a4);
    if (v23)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8188, "CFDataGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      v28 = *(a1 + 7);
      CFGetTypeID(a4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8188, "CFDataGetTypeID() == CFGetTypeID(pValue)");
  }

  return 4294965293;
}

uint64_t AVE_Prop_HEVC_GetInsertTrailingBytes(const UInt8 *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFDataRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if (a1[10930] == 1)
    {
      v10 = CFDataCreate(allocator, a1 + 10931, *(a1 + 2861));
      if (!v10)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v14 = *(a1 + 7);
          if (v11)
          {
            printf("%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %s %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetInsertTrailingBytes", 8279, "pData != __null", a1, v14, a2, allocator, a4, a5, a1 + 10931, *(a1 + 2861));
            v15 = AVE_GetCurrTime();
            v16 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 2861);
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %s %d", v15, 30, v16, "AVE_Prop_HEVC_GetInsertTrailingBytes", 8279, "pData != __null", a1, *(a1 + 7));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %s %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetInsertTrailingBytes", 8279, "pData != __null", a1, v14);
          }
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
      v22 = AVE_Log_CheckConsole(0x1Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(7);
      v25 = *a2;
      if (v22)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v23, 30, v24, a1, *(a1 + 7), *a2, v10);
        v23 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v26 = *(a1 + 7);
      }

      v28 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v23);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetInsertTrailingBytes", 8267, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v27, "AVE_Prop_HEVC_GetInsertTrailingBytes", 8267);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetInsertTrailingBytes", 8267);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetPixelAspectRatio(_DWORD *a1, const char **a2, const __CFString *a3, const void *a4)
{
  v53 = -1;
  valuePtr = -1;
  if (!a1 || !a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetPixelAspectRatio", 8315, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v23 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v23, 30, v47, "AVE_Prop_HEVC_SetPixelAspectRatio");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetPixelAspectRatio");
      }
    }

    return 4294966295;
  }

  v8 = a1 + 7833;
  if (!a4)
  {
    a1[26669] = 0;
    v16 = 7834;
    goto LABEL_26;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a4))
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v30 = AVE_Log_CheckConsole(0x1Eu);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      v33 = *(a1 + 7);
      v34 = CFGetTypeID(a4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v31, 30, v32, "AVE_Prop_HEVC_SetPixelAspectRatio", 8327, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)", a1, v33, a2, a3, a4, v34);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        v35 = *(a1 + 7);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v31, 30, v32, "AVE_Prop_HEVC_SetPixelAspectRatio", 8327, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  Value = CFDictionaryGetValue(a4, *MEMORY[0x29EDB95F8]);
  if (!Value)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v36 = AVE_Log_CheckConsole(0x1Eu);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get PixelAspectRatioHorizontalSpacing  %p %lld %p %p %p\n", v37, 30, v38, "AVE_Prop_HEVC_SetPixelAspectRatio", 8333, "hSpacingNumber != __null", a1, *(a1 + 7), a2, a3, a4);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
      }

      v51 = *(a1 + 7);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get PixelAspectRatioHorizontalSpacing  %p %lld %p %p %p", v37, 30, v38, "AVE_Prop_HEVC_SetPixelAspectRatio", 8333);
    }

    return 4294966288;
  }

  v11 = Value;
  v12 = CFDictionaryGetValue(a4, *MEMORY[0x29EDB9600]);
  if (!v12)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v39 = AVE_Log_CheckConsole(0x1Eu);
      v40 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(4);
      if (v39)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get PixelAspectRatioVerticalSpacing  %p %lld %p %p %p\n", v40, 30, v41, "AVE_Prop_HEVC_SetPixelAspectRatio", 8338, "vSpacingNumber != __null", a1, *(a1 + 7), a2, a3, a4);
        v40 = AVE_GetCurrTime();
        v41 = AVE_Log_GetLevelStr(4);
      }

      v52 = *(a1 + 7);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get PixelAspectRatioVerticalSpacing  %p %lld %p %p %p", v40, 30, v41, "AVE_Prop_HEVC_SetPixelAspectRatio", 8338);
    }

    return 4294966288;
  }

  v13 = v12;
  CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
  CFNumberGetValue(v13, kCFNumberIntType, &v53);
  if (valuePtr >= 1 && v53 >= 1)
  {
    v14 = valuePtr;
    v15 = v53;
    do
    {
      if (v14 <= v15)
      {
        v15 %= v14;
      }

      else
      {
        v14 %= v15;
      }
    }

    while (v14 && v15);
    v16 = 26669;
    if (v14)
    {
      v15 = v14;
    }

    v17 = valuePtr / v15;
    v18 = v53 / v15;
    if (valuePtr / v15 == 1 && v18 == 1)
    {
      goto LABEL_20;
    }

    if (v18 == 33)
    {
      switch(v17)
      {
        case '(':
          v18 = 5;
          goto LABEL_20;
        case '@':
          v18 = 12;
          goto LABEL_20;
        case 'P':
          v18 = 9;
          goto LABEL_20;
      }

      goto LABEL_85;
    }

    if (v18 == 11)
    {
      if (v17 > 17)
      {
        if (v17 > 23)
        {
          if (v17 == 24)
          {
            v18 = 6;
            goto LABEL_20;
          }

          if (v17 == 32)
          {
            v18 = 8;
            goto LABEL_20;
          }
        }

        else
        {
          if (v17 == 18)
          {
            v18 = 10;
            goto LABEL_20;
          }

          if (v17 == 20)
          {
            v18 = 7;
            goto LABEL_20;
          }
        }
      }

      else if (v17 > 14)
      {
        if (v17 == 15)
        {
          v18 = 11;
          goto LABEL_20;
        }

        if (v17 == 16)
        {
          v19 = 1;
          v18 = 4;
          goto LABEL_21;
        }
      }

      else
      {
        if (v17 == 10)
        {
          v18 = 3;
          goto LABEL_20;
        }

        if (v17 == 12)
        {
          v18 = 2;
LABEL_20:
          v19 = 1;
LABEL_21:
          a1[v19 + 7833] = v18;
          goto LABEL_26;
        }
      }

LABEL_85:
      a1[7834] = 255;
      goto LABEL_86;
    }

    if (v17 == 160 && v18 == 99)
    {
      v18 = 13;
      goto LABEL_20;
    }

    if (v17 == 4 && v18 == 3)
    {
      v18 = 14;
      goto LABEL_20;
    }

    if (v17 == 3 && v18 == 2)
    {
      v18 = 15;
      goto LABEL_20;
    }

    if (v17 == 2 && v18 == 1)
    {
      v46 = 16;
    }

    else
    {
      v46 = 255;
    }

    a1[7834] = v46;
    if (v17 != 2 || v18 != 1)
    {
LABEL_86:
      a1[7835] = v17;
      v19 = 3;
      goto LABEL_21;
    }

LABEL_26:
    a1[v16] = 1;
    *v8 = 257;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v25 = AVE_Log_CheckConsole(0x1Eu);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(7);
      v28 = *a2;
      if (v25)
      {
        printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v26, 30, v27, a1, *(a1 + 7), *a2, a1[7834]);
        v26 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v29 = *(a1 + 7);
        v48 = *a2;
        v50 = a1[7834];
      }

      else
      {
        v49 = *a2;
      }

      syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v26);
      return 0;
    }

    return result;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v42 = AVE_Log_CheckConsole(0x1Eu);
    v43 = AVE_GetCurrTime();
    v44 = AVE_Log_GetLevelStr(4);
    if (v42)
    {
      printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d %d\n", v43, 30, v44, "AVE_Prop_HEVC_SetPixelAspectRatio", 8348, "hSpacing > 0 && vSpacing > 0", a1, *(a1 + 7), a2, a3, a4, valuePtr, v53);
      v43 = AVE_GetCurrTime();
      v44 = AVE_Log_GetLevelStr(4);
      v45 = *(a1 + 7);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d %d", v43, 30, v44, "AVE_Prop_HEVC_SetPixelAspectRatio", 8348, "hSpacing > 0 && vSpacing > 0");
  }

  return 4294965292;
}

uint64_t AVE_Prop_HEVC_GetPixelAspectRatio(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, CFDictionaryRef *a5)
{
  keys[2] = *MEMORY[0x29EDCA608];
  v10 = *MEMORY[0x29EDB9600];
  keys[0] = *MEMORY[0x29EDB95F8];
  keys[1] = v10;
  values = 0;
  cf = 0;
  valuePtr = 0;
  if (a1 && a2 && a4 && a5)
  {
    if (a1[31333] != 1)
    {
      v17 = 0;
      goto LABEL_12;
    }

    v11 = *(a1 + 7834);
    switch(v11)
    {
      case 2:
        v12 = 12;
        goto LABEL_33;
      case 3:
        v12 = 10;
        goto LABEL_33;
      case 4:
        v12 = 16;
        goto LABEL_33;
      case 5:
        v25 = 40;
        goto LABEL_36;
      case 6:
        v12 = 24;
        goto LABEL_33;
      case 7:
        goto LABEL_22;
      case 8:
        v12 = 32;
        goto LABEL_33;
      case 9:
        v25 = 80;
        goto LABEL_36;
      case 10:
        v12 = 18;
        goto LABEL_33;
      case 11:
        v12 = 15;
LABEL_33:
        HIDWORD(valuePtr) = v12;
        v24 = 11;
        break;
      case 12:
        v25 = 64;
LABEL_36:
        HIDWORD(valuePtr) = v25;
        v24 = 33;
        break;
      case 13:
        HIDWORD(valuePtr) = 160;
        v24 = 99;
        break;
      case 14:
        HIDWORD(valuePtr) = 4;
        v24 = 3;
        break;
      case 15:
        HIDWORD(valuePtr) = 3;
        v24 = 2;
        break;
      case 16:
        HIDWORD(valuePtr) = 2;
        v24 = 1;
        break;
      default:
        if (v11 == 255)
        {
          HIDWORD(valuePtr) = *(a1 + 7835);
          v24 = *(a1 + 7836);
        }

        else
        {
LABEL_22:
          v24 = 1;
          HIDWORD(valuePtr) = 1;
        }

        break;
    }

    LODWORD(valuePtr) = v24;
    v26 = *MEMORY[0x29EDB8ED8];
    values = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr + 4);
    if (values)
    {
      cf = CFNumberCreate(v26, kCFNumberSInt32Type, &valuePtr);
      if (cf)
      {
        v17 = CFDictionaryCreate(v26, keys, &values, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (!v17)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v27 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v27)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %lld %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetPixelAspectRatio", 8424, "pData != __null", a1, *(a1 + 7), a3, a4, values, cf);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %lld %p %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetPixelAspectRatio", 8424, "pData != __null", a1, *(a1 + 7), a3, a4, values, cf);
          }

          goto LABEL_53;
        }

LABEL_12:
        *a5 = v17;
        if (AVE_Log_CheckLevel(0x1Eu, 7))
        {
          v18 = AVE_Log_CheckConsole(0x1Eu);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(7);
          v21 = *a2;
          if (v18)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v19, 30, v20, a1, *(a1 + 7), *a2, v17);
            v19 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v22 = *(a1 + 7);
          }

          v45 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v19);
        }

        v23 = 0;
        goto LABEL_54;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v38 = AVE_Log_CheckConsole(0x1Eu);
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        if (!v38)
        {
          v47 = *(a1 + 7);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v39, 30, v40, "AVE_Prop_HEVC_GetPixelAspectRatio", 8416, "pixelAspectRatio_Values[1] != __null", a1);
          goto LABEL_53;
        }

        v33 = "pixelAspectRatio_Values[1] != __null";
        v34 = 8416;
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v39, 30, v40, "AVE_Prop_HEVC_GetPixelAspectRatio", 8416, "pixelAspectRatio_Values[1] != __null", a1, *(a1 + 7), a2, a3, a4, a5, valuePtr);
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        v41 = *(a1 + 7);
LABEL_50:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v35, 30, v36, "AVE_Prop_HEVC_GetPixelAspectRatio", v34, v33, a1);
      }
    }

    else if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v30 = AVE_Log_CheckConsole(0x1Eu);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (!v30)
      {
        v46 = *(a1 + 7);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v31, 30, v32, "AVE_Prop_HEVC_GetPixelAspectRatio", 8411, "pixelAspectRatio_Values[0] != __null", a1);
        goto LABEL_53;
      }

      v33 = "pixelAspectRatio_Values[0] != __null";
      v34 = 8411;
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v31, 30, v32, "AVE_Prop_HEVC_GetPixelAspectRatio", 8411, "pixelAspectRatio_Values[0] != __null", a1, *(a1 + 7), a2, a3, a4, a5, HIDWORD(valuePtr));
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      v37 = *(a1 + 7);
      goto LABEL_50;
    }

LABEL_53:
    v23 = 4294966293;
LABEL_54:
    if (values)
    {
      CFRelease(values);
      values = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_58;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v13 = AVE_Log_CheckConsole(0x1Eu);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v14, 30, v15, "AVE_Prop_HEVC_GetPixelAspectRatio", 8399, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
      v16 = AVE_GetCurrTime();
      v44 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v16, 30, v44, "AVE_Prop_HEVC_GetPixelAspectRatio", 8399);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v14, 30, v15, "AVE_Prop_HEVC_GetPixelAspectRatio", 8399);
    }
  }

  v23 = 4294966295;
LABEL_58:
  v42 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetID(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetID", 8488, "SPSId >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetID", 8488, "SPSId >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26670) = valuePtr;
        *(a1 + 6171) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetID", 8479, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetID", 8479, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetID", 8469, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetID");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetID");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetID(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[6171];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetID", 8533, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetID", 8533, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetID", 8524, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetID", 8524);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetID", 8524);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetRequiredHEVCPictureParameterSetID(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredHEVCPictureParameterSetID", 8585, "PPSId >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredHEVCPictureParameterSetID", 8585, "PPSId >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26671) = valuePtr;
        *(a1 + 9963) = v9;
        *(a1 + 2552) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCPictureParameterSetID", 8576, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCPictureParameterSetID", 8576, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRequiredHEVCPictureParameterSetID", 8566, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetRequiredHEVCPictureParameterSetID");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetRequiredHEVCPictureParameterSetID");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetRequiredHEVCPictureParameterSetID(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[9963];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCPictureParameterSetID", 8632, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCPictureParameterSetID", 8632, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRequiredHEVCPictureParameterSetID", 8623, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetRequiredHEVCPictureParameterSetID", 8623);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetRequiredHEVCPictureParameterSetID", 8623);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetAlphaLayerID(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetAlphaLayerID", 8684, "alphaLayerID >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetAlphaLayerID", 8684, "alphaLayerID >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26672) = valuePtr;
        *(a1 + 2724) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetAlphaLayerID", 8675, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetAlphaLayerID", 8675, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetAlphaLayerID", 8665, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetAlphaLayerID");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetAlphaLayerID");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetAlphaLayerID(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2724];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetAlphaLayerID", 8729, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetAlphaLayerID", 8729, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetAlphaLayerID", 8720, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetAlphaLayerID", 8720);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetAlphaLayerID", 8720);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths(void *a1, const char **a2, const __CFString *a3, const void *a4)
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

      v27 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v30 = a1[7];
      v31 = CFGetTypeID(a4);
      if (v27)
      {
        v32 = 8774;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8774, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v30, a2, a3, a4, v31);
        v33 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        v35 = a1[7];
        CFGetTypeID(a4);
        v36 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_21:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v33, 30, v34, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths", v32, v36);
        return 4294965293;
      }

      v44 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v45 = 8774;
LABEL_29:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths", v45, v44);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    v10 = Count;
    if (Count > 2)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v37 = AVE_Log_CheckConsole(0x1Eu);
        v38 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(4);
        if (v37)
        {
          v40 = v10;
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", v38, 30, v39, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8783, "iNum <= 2", a1, a1[7], a2, a3, a4, v10, 0, 2);
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
          v64 = 0;
          v65 = 2;
          v62 = a4;
          v63 = v40;
          v60 = a2;
          v61 = a3;
          v58 = a1;
          v59 = a1[7];
          v55 = 8783;
          v57 = "iNum <= 2";
          v54 = v42;
          v43 = "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]";
LABEL_27:
          syslog(3, v43, v41, 30, v54, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths", v55, v57, v58, v59, v60, v61, v62, v63, v64, v65);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", v38, 30, v39, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8783, "iNum <= 2", a1);
        }
      }

      return 4294965292;
    }

    else
    {
      if (Count >= 1)
      {
        v11 = 0;
        v12 = Count & 0x7FFFFFFF;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, v11);
          if (!ValueAtIndex)
          {
            if (!AVE_Log_CheckLevel(0x1Eu, 4))
            {
              return 4294965292;
            }

            v46 = AVE_Log_CheckConsole(0x1Eu);
            v41 = AVE_GetCurrTime();
            v47 = AVE_Log_GetLevelStr(4);
            if (v46)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v41, 30, v47, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8792, "pNum != __null", a1, a1[7], a2, a3, a4);
              v41 = AVE_GetCurrTime();
              v48 = AVE_Log_GetLevelStr(4);
              v61 = a3;
              v62 = a4;
              v59 = a1[7];
              v60 = a2;
              v57 = "pNum != __null";
              v58 = a1;
              v55 = 8792;
              v54 = v48;
              v43 = "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p";
            }

            else
            {
              v61 = a3;
              v62 = a4;
              v59 = a1[7];
              v60 = a2;
              v57 = "pNum != __null";
              v58 = a1;
              v55 = 8792;
              v43 = "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p";
              v54 = v47;
            }

            goto LABEL_27;
          }

          v14 = ValueAtIndex;
          v15 = CFNumberGetTypeID();
          if (v15 != CFGetTypeID(v14))
          {
            break;
          }

          CFNumberGetValue(v14, kCFNumberSInt32Type, &valuePtr);
          v16 = valuePtr;
          *(a1 + v11 + 2727) = valuePtr;
          *(a1 + v11++ + 26673) = v16;
          if (v12 == v11)
          {
            goto LABEL_12;
          }
        }

        if (!AVE_Log_CheckLevel(0x1Eu, 4))
        {
          return 4294965293;
        }

        v49 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v50 = a1[7];
        v51 = CFGetTypeID(a4);
        if (v49)
        {
          v32 = 8796;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8796, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v50, a2, a3, a4, v51);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          v52 = a1[7];
          CFGetTypeID(a4);
          v36 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
          goto LABEL_21;
        }

        v44 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
        v45 = 8796;
        goto LABEL_29;
      }

LABEL_12:
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(7);
        v21 = *a2;
        if (v18)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v19, 30, v20, a1, a1[7], *a2, v10);
          v19 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v22 = a1[7];
        }

        v56 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v19);
        return 0;
      }
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8764, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v26 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v26, 30, v53, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v24, 30, v25, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatBitDepths(void *a1, void *a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 2, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v11 = Mutable;
      v33 = a2;
      v12 = 0;
      for (i = 1; ; i = 0)
      {
        v14 = i;
        v15 = a1 + v12 + 2727;
        v16 = CFNumberCreate(allocator, kCFNumberSInt32Type, v15);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        CFArrayAppendValue(v11, v16);
        CFRelease(v17);
        v12 = 1;
        if ((v14 & 1) == 0)
        {
          result = 0;
          *a5 = v11;
          return result;
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v27 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8852, "pNum != __null", a1, a1[7], v33, allocator, a4, a5, v12, *v15);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v32 = *v15;
          v31 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8852, "pNum != __null", a1);
      }

      CFRelease(v11);
    }

    else if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v23 = AVE_Log_CheckConsole(0x1Eu);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", v24, 30, v25, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8843, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, 2);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        v26 = a1[7];
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", v24, 30, v25, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8843, "pArray != __null", a1);
    }

    return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8835, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v22 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v30, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8835);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8835);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs(void *a1, const char **a2, const __CFString *a3, const void *a4)
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

      v27 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v30 = a1[7];
      v31 = CFGetTypeID(a4);
      if (v27)
      {
        v32 = 8913;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8913, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v30, a2, a3, a4, v31);
        v33 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        v35 = a1[7];
        CFGetTypeID(a4);
        v36 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_21:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v33, 30, v34, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", v32, v36);
        return 4294965293;
      }

      v44 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v45 = 8913;
LABEL_29:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", v45, v44);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    v10 = Count;
    if (Count > 2)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v37 = AVE_Log_CheckConsole(0x1Eu);
        v38 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(4);
        if (v37)
        {
          v40 = v10;
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", v38, 30, v39, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8922, "iNum <= 2", a1, a1[7], a2, a3, a4, v10, 0, 2);
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
          v64 = 0;
          v65 = 2;
          v62 = a4;
          v63 = v40;
          v60 = a2;
          v61 = a3;
          v58 = a1;
          v59 = a1[7];
          v55 = 8922;
          v57 = "iNum <= 2";
          v54 = v42;
          v43 = "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]";
LABEL_27:
          syslog(3, v43, v41, 30, v54, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", v55, v57, v58, v59, v60, v61, v62, v63, v64, v65);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", v38, 30, v39, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8922, "iNum <= 2", a1);
        }
      }

      return 4294965292;
    }

    else
    {
      if (Count >= 1)
      {
        v11 = 0;
        v12 = Count & 0x7FFFFFFF;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, v11);
          if (!ValueAtIndex)
          {
            if (!AVE_Log_CheckLevel(0x1Eu, 4))
            {
              return 4294965292;
            }

            v46 = AVE_Log_CheckConsole(0x1Eu);
            v41 = AVE_GetCurrTime();
            v47 = AVE_Log_GetLevelStr(4);
            if (v46)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v41, 30, v47, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8931, "pNum != __null", a1, a1[7], a2, a3, a4);
              v41 = AVE_GetCurrTime();
              v48 = AVE_Log_GetLevelStr(4);
              v61 = a3;
              v62 = a4;
              v59 = a1[7];
              v60 = a2;
              v57 = "pNum != __null";
              v58 = a1;
              v55 = 8931;
              v54 = v48;
              v43 = "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p";
            }

            else
            {
              v61 = a3;
              v62 = a4;
              v59 = a1[7];
              v60 = a2;
              v57 = "pNum != __null";
              v58 = a1;
              v55 = 8931;
              v43 = "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p";
              v54 = v47;
            }

            goto LABEL_27;
          }

          v14 = ValueAtIndex;
          v15 = CFNumberGetTypeID();
          if (v15 != CFGetTypeID(v14))
          {
            break;
          }

          CFNumberGetValue(v14, kCFNumberSInt32Type, &valuePtr);
          v16 = valuePtr;
          *(a1 + v11 + 2729) = valuePtr;
          *(a1 + v11++ + 26675) = v16;
          if (v12 == v11)
          {
            goto LABEL_12;
          }
        }

        if (!AVE_Log_CheckLevel(0x1Eu, 4))
        {
          return 4294965293;
        }

        v49 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v50 = a1[7];
        v51 = CFGetTypeID(a4);
        if (v49)
        {
          v32 = 8935;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8935, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v50, a2, a3, a4, v51);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          v52 = a1[7];
          CFGetTypeID(a4);
          v36 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
          goto LABEL_21;
        }

        v44 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
        v45 = 8935;
        goto LABEL_29;
      }

LABEL_12:
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(7);
        v21 = *a2;
        if (v18)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v19, 30, v20, a1, a1[7], *a2, v10);
          v19 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v22 = a1[7];
        }

        v56 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v19);
        return 0;
      }
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8903, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v26 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v26, 30, v53, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v24, 30, v25, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 2, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v11 = Mutable;
      v38 = a2;
      v12 = 0;
      for (i = 1; ; i = 0)
      {
        v14 = i;
        v15 = a1 + v12 + 2729;
        v16 = CFNumberCreate(allocator, kCFNumberSInt32Type, v15);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        CFArrayAppendValue(v11, v16);
        CFRelease(v17);
        v12 = 1;
        if ((v14 & 1) == 0)
        {
          *a5 = v11;
          result = AVE_Log_CheckLevel(0x1Eu, 7);
          if (result)
          {
            v19 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(7);
            if (v19)
            {
              printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, a1[7], *v38, 2, v11);
              CurrTime = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v22 = a1[7];
              v35 = *v38;
            }

            syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
            return 0;
          }

          return result;
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v31 = AVE_Log_CheckConsole(0x1Eu);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v32, 30, v33, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8991, "pNum != __null", a1, a1[7], v38, allocator, a4, a5, v12, *v15);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          v37 = *v15;
          v36 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v32, 30, v33, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8991, "pNum != __null", a1);
      }

      CFRelease(v11);
    }

    else if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v27 = AVE_Log_CheckConsole(0x1Eu);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", v28, 30, v29, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8982, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, 2);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        v30 = a1[7];
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", v28, 30, v29, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8982, "pArray != __null", a1);
    }

    return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8974, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v26 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v26, 30, v34, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8974);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v24, 30, v25, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8974);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetRepFormatIndex(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr <= -2)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetRepFormatIndex", 9062, "iRepFormatIndex >= -1", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetRepFormatIndex", 9062, "iRepFormatIndex >= -1");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26677) = valuePtr;
        *(a1 + 2731) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetRepFormatIndex", 9053, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetRepFormatIndex", 9053, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetRepFormatIndex", 9043, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetRepFormatIndex");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetRepFormatIndex");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetRepFormatIndex(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2731];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetRepFormatIndex", 9108, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetRepFormatIndex", 9108, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetRepFormatIndex", 9098, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetRepFormatIndex", 9098);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetRepFormatIndex", 9098);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetTemporalIDNestingFlag(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26678] = v9;
      *(a1 + 12016) = v9;
      *(a1 + 24252) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetTemporalIDNestingFlag", 9151, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetTemporalIDNestingFlag", 9151, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetTemporalIDNestingFlag", 9141, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetTemporalIDNestingFlag");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetTemporalIDNestingFlag");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetTemporalIDNestingFlag(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[12016];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[12016])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetTemporalIDNestingFlag", 9190, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetTemporalIDNestingFlag", 9190);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetTemporalIDNestingFlag", 9190);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetNumOfGOPLayer(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetNumOfGOPLayer", 9246, "iNumOfGOPLayer >= 1 && iNumOfGOPLayer <= 4", a1, a1[7], a2, a3, a4, valuePtr, 1, 4);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetNumOfGOPLayer", 9246, "iNumOfGOPLayer >= 1 && iNumOfGOPLayer <= 4", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26930) = valuePtr;
        *(a1 + 315) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetNumOfGOPLayer", 9237, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetNumOfGOPLayer", 9237, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetNumOfGOPLayer", 9227, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetNumOfGOPLayer");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetNumOfGOPLayer");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetNumOfGOPLayer(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[315];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetNumOfGOPLayer", 9292, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetNumOfGOPLayer", 9292, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetNumOfGOPLayer", 9282, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetNumOfGOPLayer", 9282);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetNumOfGOPLayer", 9282);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetNumOfTemporalLayer(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetNumOfTemporalLayer", 9343, "(iNumOfTemporalLayer > 0) && (iNumOfTemporalLayer <= 4)", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetNumOfTemporalLayer", 9343, "(iNumOfTemporalLayer > 0) && (iNumOfTemporalLayer <= 4)");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26931) = valuePtr;
        *(a1 + 322) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetNumOfTemporalLayer", 9334, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetNumOfTemporalLayer", 9334, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetNumOfTemporalLayer", 9324, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetNumOfTemporalLayer");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetNumOfTemporalLayer");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetNumOfTemporalLayer(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[322];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetNumOfTemporalLayer", 9389, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetNumOfTemporalLayer", 9389, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetNumOfTemporalLayer", 9379, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetNumOfTemporalLayer", 9379);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetNumOfTemporalLayer", 9379);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  v42 = 21;
  valuePtr = 20;
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v24 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9433, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, 0);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v27 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9433, "pArray != __null", a1);
      }

      return 4294966293;
    }

    v11 = Mutable;
    v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v12)
    {
      v13 = v12;
      CFArrayAppendValue(v11, v12);
      CFRelease(v13);
      v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, &v42);
      if (v14)
      {
        v15 = v14;
        CFArrayAppendValue(v11, v14);
        *a5 = v11;
        if (AVE_Log_CheckLevel(0x1Eu, 7))
        {
          v16 = AVE_Log_CheckConsole(0x1Eu);
          v17 = AVE_GetCurrTime();
          v18 = AVE_Log_GetLevelStr(7);
          if (v16)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %d %d %p\n", v17, 30, v18, a1, a1[7], *a2, valuePtr, v42, v11);
            v17 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v19 = a1[7];
            v41 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %d %p", v17, 30);
        }

        CFRelease(v15);
        return 0;
      }

      if (!AVE_Log_CheckLevel(0x1Eu, 4))
      {
        goto LABEL_32;
      }

      v36 = AVE_Log_CheckConsole(0x1Eu);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(4);
      if (!v36)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v37, 30, v38, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9451, "pNum != __null", a1);
        goto LABEL_32;
      }

      v32 = 9451;
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v37, 30, v38, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9451, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, v42);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      v39 = a1[7];
    }

    else
    {
      if (!AVE_Log_CheckLevel(0x1Eu, 4))
      {
LABEL_32:
        CFRelease(v11);
        return 4294966293;
      }

      v29 = AVE_Log_CheckConsole(0x1Eu);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      if (!v29)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v30, 30, v31, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9438, "pNum != __null", a1);
        goto LABEL_32;
      }

      v32 = 9438;
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v30, 30, v31, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9438, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      v35 = a1[7];
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v33, 30, v34, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", v32, "pNum != __null", a1);
    goto LABEL_32;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v20 = AVE_Log_CheckConsole(0x1Eu);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(4);
    if (v20)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v21, 30, v22, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9425, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
      v23 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v23, 30, v40, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9425);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9425);
    }
  }

  return 4294966295;
}

uint64_t AVE_Prop_HEVC_GetHEVCTemporalLevelInfoCombinations(unsigned int *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v45 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v45)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetHEVCTemporalLevelInfoCombinations", 9507, "pArray != __null", a1, *(a1 + 7), a2, allocator, a4, a5, 0);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v48 = *(a1 + 7);
        }

        else
        {
          v71 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetHEVCTemporalLevelInfoCombinations", 9507, "pArray != __null", a1);
      }

      return 4294966293;
    }

    v11 = Mutable;
    v74 = a2;
    v75 = a5;
    v72 = a4;
    v73 = allocator;
    if (a1[322] >= 1)
    {
      v12 = 0;
      v80 = *MEMORY[0x29EDB9340];
      v79 = *MEMORY[0x29EDB9338];
      v78 = *MEMORY[0x29EDB9348];
      v77 = *MEMORY[0x29EDB9330];
      v76 = *MEMORY[0x29EDB9328];
      v14 = *MEMORY[0x29EDB9318];
      v15 = *MEMORY[0x29EDB9320];
      while (1)
      {
        v16 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        *bytes = 0;
        memset(v81, 0, 6);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        if (AVE_Log_CheckLevel(0x1Eu, 8))
        {
          v18 = AVE_Log_CheckConsole(0x1Eu);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(8);
          v21 = a1[6065];
          v22 = a1[6066];
          v23 = a1[6079];
          if (v18)
          {
            printf("%lld %d AVE %s: %s:%d eTier %d eProfile %d eLevel %d\n", v19, 30, v20, "CreateTemporalLevelInfoDictionary", 355, v21, a1[6066], v23);
            v24 = AVE_GetCurrTime();
            v25 = AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %s:%d eTier %d eProfile %d eLevel %d", v24, 30, v25, "CreateTemporalLevelInfoDictionary", 355, a1[6065], a1[6066], a1[6079]);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d eTier %d eProfile %d eLevel %d", v19, 30, v20, "CreateTemporalLevelInfoDictionary", 355, v21, a1[6066], v23);
          }
        }

        AVE_CFDict_AddSInt32(v80, v12, v17);
        AVE_CFDict_AddSInt32(v79, a1[6064], v17);
        TierFlag = HEVC_FindTierFlag(a1[6065]);
        AVE_CFDict_AddSInt32(v78, TierFlag, v17);
        ProfileIdc = HEVC_FindProfileIdc(a1[6066]);
        AVE_CFDict_AddSInt32(v77, ProfileIdc, v17);
        v28 = 0;
        v29 = 0;
        do
        {
          v29 = *(a1 + v28-- + 24299) | (2 * v29);
        }

        while (v28 != -32);
        *bytes = v29;
        v30 = CFDataCreate(0, bytes, 4);
        if (!v30)
        {
          v50 = v74;
          v49 = v75;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v55 = AVE_Log_CheckConsole(0x1Eu);
            v56 = AVE_GetCurrTime();
            v57 = AVE_Log_GetLevelStr(4);
            if (v55)
            {
              printf("%lld %d AVE %s: %s:%d %s | cf_profileCompatibilityFlags == NULL\n", v56, 30, v57, "CreateTemporalLevelInfoDictionary", 373, "cf_profileCompatibilityFlags != __null");
              v58 = AVE_GetCurrTime();
              v68 = AVE_Log_GetLevelStr(4);
              v49 = v75;
              syslog(3, "%lld %d AVE %s: %s:%d %s | cf_profileCompatibilityFlags == NULL", v58, 30, v68, "CreateTemporalLevelInfoDictionary", 373, "cf_profileCompatibilityFlags != __null");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | cf_profileCompatibilityFlags == NULL", v56, 30, v57, "CreateTemporalLevelInfoDictionary", 373, "cf_profileCompatibilityFlags != __null");
            }
          }

          CFRelease(v17);
          goto LABEL_46;
        }

        v31 = v30;
        CFDictionaryAddValue(v17, v76, v30);
        *&v81[2] = 0;
        v13 = (a1 + 5120);
        v81[0] = (v13[3821] << 6) | (v13[3820] << 7) | (32 * v13[3822]) | (16 * v13[3823]) | (8 * v13[3824]) | (4 * v13[3825]) | (2 * v13[3826]) | v13[3827];
        v81[1] = (*(a1 + 24309) << 6) | (*(a1 + 24308) << 7) | (32 * *(a1 + 24310)) | (16 * *(a1 + 24311)) | (8 * *(a1 + 24312));
        v32 = CFDataCreate(0, v81, 6);
        if (!v32)
        {
          v50 = v74;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v59 = AVE_Log_CheckConsole(0x1Eu);
            v60 = AVE_GetCurrTime();
            v61 = AVE_Log_GetLevelStr(4);
            if (v59)
            {
              printf("%lld %d AVE %s: %s:%d %s | cf_constraintIndicatorFlags == NULL\n", v60, 30, v61, "CreateTemporalLevelInfoDictionary", 396, "cf_constraintIndicatorFlags != __null");
              v62 = AVE_GetCurrTime();
              v69 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | cf_constraintIndicatorFlags == NULL", v62, 30, v69, "CreateTemporalLevelInfoDictionary", 396, "cf_constraintIndicatorFlags != __null");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | cf_constraintIndicatorFlags == NULL", v60, 30, v61, "CreateTemporalLevelInfoDictionary", 396, "cf_constraintIndicatorFlags != __null");
            }
          }

          CFRelease(v17);
          CFRelease(v31);
          v49 = v75;
          goto LABEL_46;
        }

        v33 = v32;
        CFDictionaryAddValue(v17, v14, v32);
        LevelIdc = HEVC_FindLevelIdc(a1[6079]);
        AVE_CFDict_AddSInt32(v15, LevelIdc, v17);
        CFRelease(v31);
        CFRelease(v33);
        CFArrayAppendValue(v11, v17);
        CFRelease(v17);
        if (++v12 >= a1[322])
        {
          goto LABEL_18;
        }
      }

      v50 = v74;
      v49 = v75;
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v51 = AVE_Log_CheckConsole(0x1Eu);
        v52 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(4);
        if (v51)
        {
          printf("%lld %d AVE %s: %s:%d %s | TemporalLevelInfoDict == NULL\n", v52, 30, v53, "CreateTemporalLevelInfoDictionary", 353, "TemporalLevelInfoDict != __null");
          v54 = AVE_GetCurrTime();
          v67 = AVE_Log_GetLevelStr(4);
          v49 = v75;
          syslog(3, "%lld %d AVE %s: %s:%d %s | TemporalLevelInfoDict == NULL", v54, 30, v67, "CreateTemporalLevelInfoDictionary", 353, "TemporalLevelInfoDict != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | TemporalLevelInfoDict == NULL", v52, 30, v53, "CreateTemporalLevelInfoDictionary", 353, "TemporalLevelInfoDict != __null");
        }
      }

LABEL_46:
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v63 = AVE_Log_CheckConsole(0x1Eu);
        v64 = AVE_GetCurrTime();
        v65 = AVE_Log_GetLevelStr(4);
        if (v63)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %lld %p %p %p %p %d %p\n", v64, 30, v65, "AVE_Prop_HEVC_GetHEVCTemporalLevelInfoCombinations", 9515, "pDict != __null", a1, *(a1 + 7), v50, v73, v72, v49, v12, a1 + 6064);
          v64 = AVE_GetCurrTime();
          v65 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %lld %p %p %p %p %d %p", v64, 30, v65, "AVE_Prop_HEVC_GetHEVCTemporalLevelInfoCombinations", 9515, "pDict != __null", a1, *(a1 + 7));
      }

      return 4294966293;
    }

LABEL_18:
    *v75 = v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v36 = AVE_Log_CheckConsole(0x1Eu);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(7);
      v39 = *v74;
      if (v36)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v37, 30, v38, a1, *(a1 + 7), *v74, v11);
        v37 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v40 = *(a1 + 7);
      }

      v70 = *v74;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v37);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v42, 30, v43, "AVE_Prop_HEVC_GetHEVCTemporalLevelInfoCombinations", 9499, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v44 = AVE_GetCurrTime();
        v66 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v44, 30, v66, "AVE_Prop_HEVC_GetHEVCTemporalLevelInfoCombinations", 9499);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v42, 30, v43, "AVE_Prop_HEVC_GetHEVCTemporalLevelInfoCombinations", 9499);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs(char *a1, const char **a2, const __CFString *a3, const __CFArray *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Count = CFArrayGetCount(a4);
      v10 = Count;
      v11 = *(a1 + 283);
      if (v11 == 2)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v30 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v30)
          {
            v33 = v10;
            printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_ConstantBitRate                     %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9588, "psINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_CBR", a1, *(a1 + 7), a2, a3, a4, v10);
            v16 = AVE_GetCurrTime();
            v34 = AVE_Log_GetLevelStr(4);
            v91 = a4;
            v92 = v33;
            v89 = a2;
            v90 = a3;
            v79 = a1;
            v80 = *(a1 + 7);
            v76 = 9588;
            v77 = "psINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_CBR";
            v74 = v34;
            v18 = "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_ConstantBitRate                     %p %lld %p %p %p %d";
            goto LABEL_52;
          }

          v82 = *(a1 + 7);
          syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_ConstantBitRate                     %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9588, "psINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_CBR");
        }

        return 4294966296;
      }

      if (v11 == 4)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v12 = AVE_Log_CheckConsole(0x1Eu);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            v15 = v10;
            printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_DataRateLimits                     %p %lld %p %p %p %d\n", v13, 30, v14, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9583, "psINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_DRL", a1, *(a1 + 7), a2, a3, a4, v10);
            v16 = AVE_GetCurrTime();
            v17 = AVE_Log_GetLevelStr(4);
            v91 = a4;
            v92 = v15;
            v89 = a2;
            v90 = a3;
            v79 = a1;
            v80 = *(a1 + 7);
            v76 = 9583;
            v77 = "psINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_DRL";
            v74 = v17;
            v18 = "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_DataRateLimits                     %p %lld %p %p %p %d";
LABEL_52:
            syslog(3, v18, v16, 30, v74, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", v76, v77, v79, v80, v89, v90, v91, v92);
            return 4294966296;
          }

          v81 = *(a1 + 7);
          syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_DataRateLimits                     %p %lld %p %p %p %d", v13, 30, v14, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9583, "psINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_DRL");
        }

        return 4294966296;
      }

      if (*(a1 + 2944))
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v35 = AVE_Log_CheckConsole(0x1Eu);
          v36 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          if (v35)
          {
            v38 = v10;
            printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_MoreFramesBeforeStart                       or kVTCompressionPropertyKey_MoreFramesAfterEnd                     %p %lld %p %p %p %d\n", v36, 30, v37, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9594, "psINS->VideoParamsDriver.iSegmentation == 0", a1, *(a1 + 7), a2, a3, a4, v10);
            v16 = AVE_GetCurrTime();
            v39 = AVE_Log_GetLevelStr(4);
            v91 = a4;
            v92 = v38;
            v89 = a2;
            v90 = a3;
            v79 = a1;
            v80 = *(a1 + 7);
            v76 = 9594;
            v77 = "psINS->VideoParamsDriver.iSegmentation == 0";
            v74 = v39;
            v18 = "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_MoreFramesBeforeStart                       or kVTCompressionPropertyKey_MoreFramesAfterEnd                     %p %lld %p %p %p %d";
            goto LABEL_52;
          }

          v83 = *(a1 + 7);
          syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_MoreFramesBeforeStart                       or kVTCompressionPropertyKey_MoreFramesAfterEnd                     %p %lld %p %p %p %d", v36, 30, v37, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9594, "psINS->VideoParamsDriver.iSegmentation == 0");
        }

        return 4294966296;
      }

      if (*(a1 + 13082))
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v40 = AVE_Log_CheckConsole(0x1Eu);
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
          if (v40)
          {
            v43 = v10;
            printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_MultiPassStorage                     %p %lld %p %p %p %d\n", v41, 30, v42, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9599, "psINS->multiPassStorage == __null", a1, *(a1 + 7), a2, a3, a4, v10);
            v16 = AVE_GetCurrTime();
            v44 = AVE_Log_GetLevelStr(4);
            v91 = a4;
            v92 = v43;
            v89 = a2;
            v90 = a3;
            v79 = a1;
            v80 = *(a1 + 7);
            v76 = 9599;
            v77 = "psINS->multiPassStorage == __null";
            v74 = v44;
            v18 = "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_MultiPassStorage                     %p %lld %p %p %p %d";
            goto LABEL_52;
          }

          v84 = *(a1 + 7);
          syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_MultiPassStorage                     %p %lld %p %p %p %d", v41, 30, v42, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9599, "psINS->multiPassStorage == __null");
        }

        return 4294966296;
      }

      if (*(a1 + 2865))
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v45 = AVE_Log_CheckConsole(0x1Eu);
          v46 = AVE_GetCurrTime();
          v47 = AVE_Log_GetLevelStr(4);
          if (!v45)
          {
            v85 = *(a1 + 7);
            syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_BaseLayerFrameRate                     %p %lld %p %p %p %d", v46, 30, v47, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9604, "psINS->VideoParamsDriver.iBaseFrameRate == 0");
            return 4294966296;
          }

          v48 = v10;
          printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_BaseLayerFrameRate                     %p %lld %p %p %p %d\n", v46, 30, v47, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9604, "psINS->VideoParamsDriver.iBaseFrameRate == 0", a1, *(a1 + 7), a2, a3, a4, v10);
          v16 = AVE_GetCurrTime();
          v49 = AVE_Log_GetLevelStr(4);
          v91 = a4;
          v92 = v48;
          v89 = a2;
          v90 = a3;
          v79 = a1;
          v80 = *(a1 + 7);
          v76 = 9604;
          v77 = "psINS->VideoParamsDriver.iBaseFrameRate == 0";
          v74 = v49;
          v18 = "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_BaseLayerFrameRate                     %p %lld %p %p %p %d";
          goto LABEL_52;
        }

        return 4294966296;
      }

      if (*(a1 + 6172) != 1)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v56 = AVE_Log_CheckConsole(0x1Eu);
          v57 = AVE_GetCurrTime();
          v58 = AVE_Log_GetLevelStr(4);
          if (!v56)
          {
            v87 = *(a1 + 7);
            syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support  ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444                     %p %lld %p %p %p %d", v57, 30, v58, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9609, "psINS->saSPS[0].chroma_format_idc == ChromaFmt_420");
            return 4294966296;
          }

          v59 = v10;
          printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support  ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444                     %p %lld %p %p %p %d\n", v57, 30, v58, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9609, "psINS->saSPS[0].chroma_format_idc == ChromaFmt_420", a1, *(a1 + 7), a2, a3, a4, v10);
          v16 = AVE_GetCurrTime();
          v60 = AVE_Log_GetLevelStr(4);
          v91 = a4;
          v92 = v59;
          v89 = a2;
          v90 = a3;
          v79 = a1;
          v80 = *(a1 + 7);
          v76 = 9609;
          v77 = "psINS->saSPS[0].chroma_format_idc == ChromaFmt_420";
          v74 = v60;
          v18 = "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support  ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444                     %p %lld %p %p %p %d";
          goto LABEL_52;
        }

        return 4294966296;
      }

      if (Count == 2)
      {
        *(a1 + 26680) = 2;
        *(a1 + 2639) = 2;
        *(a1 + 772) = 0x200000002;
        *(a1 + 334) |= 0x2000000u;
        ValueAtIndex = CFArrayGetValueAtIndex(a4, 0);
        if (ValueAtIndex)
        {
          v51 = 0;
          v52 = a1 + 15575;
          v53 = a1 + 10208;
          v54 = 1;
          while (1)
          {
            CFNumberGetValue(ValueAtIndex, kCFNumberSInt8Type, &v52[v51]);
            if ((v54 & 1) == 0)
            {
              *&v53[4 * v51] = v51;
              goto LABEL_65;
            }

            if (v52[v51])
            {
              break;
            }

            *&v53[4 * v51] = v51;
            ValueAtIndex = CFArrayGetValueAtIndex(a4, 1);
            v54 = 0;
            v51 = 1;
            if (!ValueAtIndex)
            {
              v55 = 2;
              goto LABEL_61;
            }
          }

          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v71 = AVE_Log_CheckConsole(0x1Eu);
            v72 = AVE_GetCurrTime();
            v73 = AVE_Log_GetLevelStr(4);
            if (v71)
            {
              printf("%lld %d AVE %s: %s:%d %s | non-zero video layer ID at base layer %p %lld %p %p %p %d\n", v72, 30, v73, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9649, "psINS->VPSHevcParams.layer_id_in_nuh[i] == 0", a1, *(a1 + 7), a2, a3, a4, v52[v51]);
              v72 = AVE_GetCurrTime();
              v73 = AVE_Log_GetLevelStr(4);
              v93 = v52[v51];
              v88 = *(a1 + 7);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | non-zero video layer ID at base layer %p %lld %p %p %p %d", v72, 30, v73, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9649, "psINS->VPSHevcParams.layer_id_in_nuh[i] == 0");
          }

          return 4294965290;
        }

        else
        {
          v55 = 1;
LABEL_61:
          *(a1 + 2639) = v55;
          *(a1 + 193) = v55;
          *(a1 + 194) = v55;
LABEL_65:
          result = AVE_Log_CheckLevel(0x1Eu, 7);
          if (result)
          {
            v66 = AVE_Log_CheckConsole(0x1Eu);
            v67 = AVE_GetCurrTime();
            v68 = AVE_Log_GetLevelStr(7);
            v69 = *a2;
            if (v66)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v67, 30, v68, a1, *(a1 + 7), *a2, 2);
              v67 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v70 = *(a1 + 7);
            }

            v78 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v67);
            return 0;
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v61 = AVE_Log_CheckConsole(0x1Eu);
          v62 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(4);
          if (v61)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid number of video layerIDs %p %lld %p %p %p %d (%d, %d]\n", v62, 30, v63, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9615, "iNum > 1 && iNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1, *(a1 + 7), a2, a3, a4, v10, 1, 2);
            v64 = AVE_GetCurrTime();
            v65 = AVE_Log_GetLevelStr(4);
            v86 = *(a1 + 7);
            syslog(3, "%lld %d AVE %s: %s:%d %s | invalid number of video layerIDs %p %lld %p %p %p %d (%d, %d]", v64, 30, v65, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9615, "iNum > 1 && iNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | invalid number of video layerIDs %p %lld %p %p %p %d (%d, %d]", v62, 30, v63, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9615, "iNum > 1 && iNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1);
          }
        }

        return 4294965291;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9574, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          v28 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9574, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9564, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v22 = AVE_GetCurrTime();
        v75 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v75, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetMVHEVCVideoLayerIDs(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, *(a1 + 2639), MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v26 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMVHEVCVideoLayerIDs", 9693, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, *(a1 + 2639));
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v29 = a1[7];
          v38 = *(a1 + 2639);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMVHEVCVideoLayerIDs", 9693, "pArray != __null", a1);
      }

      return 4294966293;
    }

    v11 = Mutable;
    if (*(a1 + 2639))
    {
      v12 = 0;
      v13 = a1 + 15575;
      while (1)
      {
        v14 = CFNumberCreate(allocator, kCFNumberSInt8Type, &v13[v12]);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        CFArrayAppendValue(v11, v14);
        CFRelease(v15);
        if (++v12 >= *(a1 + 2639))
        {
          goto LABEL_10;
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v30 = AVE_Log_CheckConsole(0x1Eu);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d %d\n", v31, 30, v32, "AVE_Prop_HEVC_GetMVHEVCVideoLayerIDs", 9703, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, v12, v13[v12]);
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          v39 = v13[v12];
          v37 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d %d", v31, 30, v32, "AVE_Prop_HEVC_GetMVHEVCVideoLayerIDs", 9703, "pNum != __null", a1);
      }

      CFRelease(v11);
      return 4294966293;
    }

LABEL_10:
    *a5 = v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(7);
      v20 = *(a1 + 2639);
      if (v17)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v18, 30, v19, a1, a1[7], *a2, *(a1 + 2639), v11);
        v18 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v21 = a1[7];
        v35 = *(a1 + 2639);
        v34 = *a2;
      }

      else
      {
        v36 = *(a1 + 2639);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v18, 30);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v23, 30, v24, "AVE_Prop_HEVC_GetMVHEVCVideoLayerIDs", 9684, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v25 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v25, 30, v33, "AVE_Prop_HEVC_GetMVHEVCVideoLayerIDs", 9684);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v23, 30, v24, "AVE_Prop_HEVC_GetMVHEVCVideoLayerIDs", 9684);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetMVHEVCViewIDs(void *a1, const char **a2, const __CFString *a3, const void *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v25 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v28 = a1[7];
        v29 = CFGetTypeID(a4);
        if (!v25)
        {
          v39 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
          v40 = 9766;
LABEL_29:
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMVHEVCViewIDs", v40, v39);
          return 4294965293;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9766, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v28, a2, a3, a4, v29);
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        v32 = a1[7];
        CFGetTypeID(a4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v30, 30, v31, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9766, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    v10 = Count;
    if (Count >= 3)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v34 = AVE_Log_CheckConsole(0x1Eu);
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        if (v34)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v35, 30, v36, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9776, "iNum <= ((2) < ((62 + 1)) ? (2) : ((62 + 1)))", a1, a1[7], a2, a3, a4, v10, 0, 2);
          v37 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(4);
          v58 = a1[7];
          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v37, 30, v38, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9776, "iNum <= ((2) < ((62 + 1)) ? (2) : ((62 + 1)))", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v35, 30, v36, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9776, "iNum <= ((2) < ((62 + 1)) ? (2) : ((62 + 1)))", a1);
        }
      }

      return 4294965292;
    }

    else
    {
      *(a1 + 26681) = Count;
      *(a1 + 2640) = Count;
      v61 = a2;
      if (Count >= 1)
      {
        v60 = a3;
        v11 = 0;
        v12 = 0;
        v13 = (a1 + 1955);
        v14 = Count & 0x7FFFFFFF;
        v15 = 1;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, v11);
          if (!ValueAtIndex)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v46 = AVE_Log_CheckConsole(0x1Eu);
              v47 = AVE_GetCurrTime();
              v48 = AVE_Log_GetLevelStr(4);
              if (v46)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v47, 30, v48, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9788, "pNum != __null", a1, a1[7], v61, v60, a4);
                v47 = AVE_GetCurrTime();
                v48 = AVE_Log_GetLevelStr(4);
                v49 = a1[7];
              }

              else
              {
                v59 = a1[7];
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v47, 30, v48, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9788);
            }

            return 4294965293;
          }

          v17 = ValueAtIndex;
          v18 = CFNumberGetTypeID();
          if (v18 != CFGetTypeID(v17))
          {
            break;
          }

          CFNumberGetValue(v17, kCFNumberSInt8Type, v13);
          v19 = *v13++;
          v20 = 8 - __clz(v19 << 24);
          if (v19)
          {
            v12 = v20;
          }

          if (v15 <= v12)
          {
            v15 = v12;
          }

          if (v14 == ++v11)
          {
            goto LABEL_32;
          }
        }

        if (!AVE_Log_CheckLevel(0x1Eu, 4))
        {
          return 4294965293;
        }

        v50 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v51 = a1[7];
        v52 = CFGetTypeID(a4);
        if (v50)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9792, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v51, v61, v60, a4, v52);
          v53 = AVE_GetCurrTime();
          v54 = AVE_Log_GetLevelStr(4);
          v55 = a1[7];
          CFGetTypeID(a4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v53, 30, v54, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9792, "CFNumberGetTypeID() == CFGetTypeID(pNum)");
          return 4294965293;
        }

        v39 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
        v40 = 9792;
        goto LABEL_29;
      }

      v15 = 1;
LABEL_32:
      *(a1 + 15639) = v15;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v41 = AVE_Log_CheckConsole(0x1Eu);
        v42 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(7);
        v44 = *v61;
        if (v41)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v42, 30, v43, a1, a1[7], *v61, v10);
          v42 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v45 = a1[7];
        }

        v57 = *v61;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v42);
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
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v22, 30, v23, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9756, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v24 = AVE_GetCurrTime();
        v56 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v24, 30, v56, "AVE_Prop_HEVC_SetMVHEVCViewIDs");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_SetMVHEVCViewIDs");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetMVHEVCViewIDs(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, *(a1 + 2639), MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v26 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMVHEVCViewIDs", 9844, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, *(a1 + 2639));
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v29 = a1[7];
          v38 = *(a1 + 2639);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMVHEVCViewIDs", 9844, "pArray != __null", a1);
      }

      return 4294966293;
    }

    v11 = Mutable;
    if (*(a1 + 2639))
    {
      v12 = 0;
      v13 = (a1 + 1955);
      while (1)
      {
        v14 = CFNumberCreate(allocator, kCFNumberSInt8Type, &v13[v12]);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        CFArrayAppendValue(v11, v14);
        CFRelease(v15);
        if (++v12 >= *(a1 + 2639))
        {
          goto LABEL_10;
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v30 = AVE_Log_CheckConsole(0x1Eu);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v31, 30, v32, "AVE_Prop_HEVC_GetMVHEVCViewIDs", 9852, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, v12, v13[v12]);
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          v39 = v13[v12];
          v37 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v31, 30, v32, "AVE_Prop_HEVC_GetMVHEVCViewIDs", 9852, "pNum != __null", a1);
      }

      CFRelease(v11);
      return 4294966293;
    }

LABEL_10:
    *a5 = v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(7);
      v20 = *(a1 + 2639);
      if (v17)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v18, 30, v19, a1, a1[7], *a2, *(a1 + 2639), v11);
        v18 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v21 = a1[7];
        v35 = *(a1 + 2639);
        v34 = *a2;
      }

      else
      {
        v36 = *(a1 + 2639);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v18, 30);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v23, 30, v24, "AVE_Prop_HEVC_GetMVHEVCViewIDs", 9835, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v25 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v25, 30, v33, "AVE_Prop_HEVC_GetMVHEVCViewIDs", 9835);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v23, 30, v24, "AVE_Prop_HEVC_GetMVHEVCViewIDs", 9835);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs(void *a1, const char **a2, const __CFString *a3, const void *a4)
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
        v52 = v29;
        v31 = 9916;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", 9916, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v52, a2, a3, a4, v30);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        v34 = a1[7];
        CFGetTypeID(a4);
        v35 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_20:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v32, 30, v33, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", v31, v35);
        return 4294965293;
      }

      v40 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v41 = 9916;
LABEL_28:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", v41, v40);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    if (Count == 2)
    {
      v10 = 0;
      *(a1 + 26682) = 2;
      v11 = 1;
      while (1)
      {
        v12 = v11;
        ValueAtIndex = CFArrayGetValueAtIndex(a4, v10);
        if (!ValueAtIndex)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v42 = AVE_Log_CheckConsole(0x1Eu);
            v43 = AVE_GetCurrTime();
            v44 = AVE_Log_GetLevelStr(4);
            if (v42)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v43, 30, v44, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", 9935, "pNum != __null", a1, a1[7], a2, a3, a4);
              v43 = AVE_GetCurrTime();
              v44 = AVE_Log_GetLevelStr(4);
              v45 = a1[7];
            }

            else
            {
              v54 = a1[7];
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v43, 30, v44, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", 9935);
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
        *(a1 + v10 + 11808) = valuePtr;
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

            v51 = *a2;
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

      v46 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v47 = a1[7];
      v48 = CFGetTypeID(a4);
      if (v46)
      {
        v53 = v47;
        v31 = 9939;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", 9939, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v53, a2, a3, a4, v48);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        v49 = a1[7];
        CFGetTypeID(a4);
        v35 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
        goto LABEL_20;
      }

      v40 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
      v41 = 9939;
      goto LABEL_28;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v36 = AVE_Log_CheckConsole(0x1Eu);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | expecting 2 values received %d %p %lld %p %p %p\n", v37, 30, v38, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", 9924, "iNum == 2", Count, a1, a1[7], a2, a3, a4);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        v39 = a1[7];
      }

      else
      {
        v55 = a1[7];
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | expecting 2 values received %d %p %lld %p %p %p", v37, 30, v38, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", 9924, "iNum == 2");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v23, 30, v24, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", 9906, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v25 = AVE_GetCurrTime();
        v50 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v25, 30, v50, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v23, 30, v24, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_GetMVHEVCLeftAndRightViewIDs(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, *(a1 + 2639), MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = 0;
      v13 = (a1 + 1476);
      for (i = 1; ; i = 0)
      {
        v15 = i;
        v16 = CFNumberCreate(allocator, kCFNumberSInt8Type, &v13[v12]);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        CFArrayAppendValue(v11, v16);
        CFRelease(v17);
        v12 = 1;
        if ((v15 & 1) == 0)
        {
          *a5 = v11;
          result = AVE_Log_CheckLevel(0x1Eu, 7);
          if (result)
          {
            v19 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(7);
            v22 = *(a1 + 2639);
            if (v19)
            {
              printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, *(a1 + 2639), v11);
              CurrTime = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v23 = a1[7];
              v37 = *(a1 + 2639);
              v36 = *a2;
            }

            else
            {
              v38 = *(a1 + 2639);
            }

            syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
            return 0;
          }

          return result;
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v32 = AVE_Log_CheckConsole(0x1Eu);
        v33 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        if (v32)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v33, 30, v34, "AVE_Prop_HEVC_GetMVHEVCLeftAndRightViewIDs", 9995, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, v12, v13[v12]);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          v41 = v13[v12];
          v39 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v33, 30, v34, "AVE_Prop_HEVC_GetMVHEVCLeftAndRightViewIDs", 9995, "pNum != __null", a1);
      }

      CFRelease(v11);
    }

    else if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v28 = AVE_Log_CheckConsole(0x1Eu);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", v29, 30, v30, "AVE_Prop_HEVC_GetMVHEVCLeftAndRightViewIDs", 9986, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, *(a1 + 2639));
        v29 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        v31 = a1[7];
        v40 = *(a1 + 2639);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_GetMVHEVCLeftAndRightViewIDs", 9986, "pArray != __null", a1);
    }

    return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v25, 30, v26, "AVE_Prop_HEVC_GetMVHEVCLeftAndRightViewIDs", 9977, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v27 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v27, 30, v35, "AVE_Prop_HEVC_GetMVHEVCLeftAndRightViewIDs", 9977);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v25, 30, v26, "AVE_Prop_HEVC_GetMVHEVCLeftAndRightViewIDs", 9977);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs(void *a1, const char **a2, const __CFString *a3, const void *a4)
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

      v30 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v33 = a1[7];
      v34 = CFGetTypeID(a4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", 10059, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v33, a2, a3, a4, v34);
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        v37 = a1[7];
        CFGetTypeID(a4);
        v52 = 10059;
        v54 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_20:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v35, 30, v36, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", v52, v54);
        return 4294965293;
      }

      v41 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v42 = 10059;
LABEL_28:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", v42, v41);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    if (Count == 2)
    {
      v57 = a3;
      v58 = a1;
      v59 = a2;
      v10 = 0;
      v11 = a1 + 106732;
      v12 = a1 + 24236;
      v13 = a1 + 39844;
      v14 = 1;
      while (1)
      {
        v15 = v14;
        ValueAtIndex = CFArrayGetValueAtIndex(a4, v10);
        if (!ValueAtIndex)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v43 = AVE_Log_CheckConsole(0x1Eu);
            v44 = AVE_GetCurrTime();
            v45 = AVE_Log_GetLevelStr(4);
            if (v43)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v44, 30, v45, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", 10078, "pNum != __null", v58, v58[7], v59, v57, a4);
              v44 = AVE_GetCurrTime();
              v45 = AVE_Log_GetLevelStr(4);
              v46 = v58[7];
            }

            else
            {
              v56 = v58[7];
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v44, 30, v45, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", 10078);
          }

          return 4294965292;
        }

        v17 = ValueAtIndex;
        v18 = CFNumberGetTypeID();
        if (v18 != CFGetTypeID(v17))
        {
          break;
        }

        CFNumberGetValue(v17, kCFNumberSInt32Type, &valuePtr);
        v14 = 0;
        v19 = valuePtr;
        *&v11[4 * v10] = valuePtr;
        *&v12[7804 * v10 + 448] = v19;
        *&v13[9632 * v10 + 12] = v19;
        v10 = 1;
        if ((v15 & 1) == 0)
        {
          result = AVE_Log_CheckLevel(0x1Eu, 7);
          if (result)
          {
            v21 = AVE_Log_CheckConsole(0x1Eu);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(7);
            v24 = *v59;
            if (v21)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v22, 30, v23, v58, v58[7], *v59, 2);
              v22 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v25 = v58[7];
            }

            v53 = *v59;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v22);
            return 0;
          }

          return result;
        }
      }

      if (!AVE_Log_CheckLevel(0x1Eu, 4))
      {
        return 4294965293;
      }

      v47 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v48 = v58[7];
      v49 = CFGetTypeID(a4);
      if (v47)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", 10082, "CFNumberGetTypeID() == CFGetTypeID(pNum)", v58, v48, v59, v57, a4, v49);
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        v50 = v58[7];
        CFGetTypeID(a4);
        v52 = 10082;
        v54 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
        goto LABEL_20;
      }

      v41 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
      v42 = 10082;
      goto LABEL_28;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v38 = AVE_Log_CheckConsole(0x1Eu);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v39, 30, v40, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", 10069, "iNum == ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1, a1[7], a2, a3, a4, Count, 2, 2);
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
      }

      v55 = a1[7];
      syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v39, 30, v40, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", 10069, "iNum == ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1);
    }

    return 4294965292;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v27, 30, v28, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", 10049, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v29 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v29, 30, v51, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v27, 30, v28, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_GetRequiredMVHEVCSequenceParameterSetIDs(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetRequiredMVHEVCSequenceParameterSetIDs", 10135, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, *(a1 + 2639));
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v31 = a1[7];
          v40 = *(a1 + 2639);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetRequiredMVHEVCSequenceParameterSetIDs", 10135, "pArray != __null", a1);
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
      v15 = a1 + 1951 * v12 + 6171;
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
        v15 += 1951;
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v33, 30, v34, "AVE_Prop_HEVC_GetRequiredMVHEVCSequenceParameterSetIDs", 10149, "pNum != __null", a1, a1[7], v42, allocator, a4, a5, v12, *v15);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          v41 = *v15;
          v39 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v33, 30, v34, "AVE_Prop_HEVC_GetRequiredMVHEVCSequenceParameterSetIDs", 10149, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v25, 30, v26, "AVE_Prop_HEVC_GetRequiredMVHEVCSequenceParameterSetIDs", 10126, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v27 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v27, 30, v35, "AVE_Prop_HEVC_GetRequiredMVHEVCSequenceParameterSetIDs", 10126);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v25, 30, v26, "AVE_Prop_HEVC_GetRequiredMVHEVCSequenceParameterSetIDs", 10126);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs(void *a1, const char **a2, const __CFString *a3, const void *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v27 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v30 = a1[7];
        v31 = CFGetTypeID(a4);
        if (!v27)
        {
          v38 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
          v39 = 10213;
LABEL_27:
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", v39, v38);
          return 4294965293;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10213, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v30, a2, a3, a4, v31);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        v34 = a1[7];
        CFGetTypeID(a4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v32, 30, v33, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10213, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
      }

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
            v40 = AVE_Log_CheckConsole(0x1Eu);
            v41 = AVE_GetCurrTime();
            v42 = AVE_Log_GetLevelStr(4);
            if (v40)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v41, 30, v42, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10231, "pNum != __null", a1, a1[7], a2, a3, a4);
              v41 = AVE_GetCurrTime();
              v42 = AVE_Log_GetLevelStr(4);
              v43 = a1[7];
            }

            else
            {
              v52 = a1[7];
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v41, 30, v42, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10231);
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
        v16 = valuePtr;
        *(a1 + v10 + 26685) = valuePtr;
        HIDWORD(a1[1204 * v10 + 4981]) = v16;
        *(a1 + v10 + 2552) = v16;
        v10 = 1;
        if ((v12 & 1) == 0)
        {
          result = AVE_Log_CheckLevel(0x1Eu, 7);
          if (result)
          {
            v18 = AVE_Log_CheckConsole(0x1Eu);
            v19 = AVE_GetCurrTime();
            v20 = AVE_Log_GetLevelStr(7);
            v21 = *a2;
            if (v18)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v19, 30, v20, a1, a1[7], *a2, 2);
              v19 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v22 = a1[7];
            }

            v51 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v19);
            return 0;
          }

          return result;
        }
      }

      if (!AVE_Log_CheckLevel(0x1Eu, 4))
      {
        return 4294965293;
      }

      v44 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v45 = a1[7];
      v46 = CFGetTypeID(a4);
      if (v44)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10235, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v45, a2, a3, a4, v46);
        v47 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        v49 = a1[7];
        CFGetTypeID(a4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v47, 30, v48, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10235, "CFNumberGetTypeID() == CFGetTypeID(pNum)");
        return 4294965293;
      }

      v38 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
      v39 = 10235;
      goto LABEL_27;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v35 = AVE_Log_CheckConsole(0x1Eu);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | expecting %d values received %d %p %lld %p %p %p\n", v36, 30, v37, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10222, "iNum == ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", 2, Count, a1, a1[7], a2, a3, a4);
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
      }

      v53 = a1[7];
      syslog(3, "%lld %d AVE %s: %s:%d %s | expecting %d values received %d %p %lld %p %p %p", v36, 30, v37, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10222, "iNum == ((2) < ((63 + 1)) ? (2) : ((63 + 1)))");
    }

    return 4294965292;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10203, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v26 = AVE_GetCurrTime();
        v50 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v26, 30, v50, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v24, 30, v25, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs");
      }
    }

    return 4294966295;
  }
}