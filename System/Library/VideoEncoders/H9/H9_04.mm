uint64_t AVE_Prop_HEVC_GetVBVInitialDelay(double *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[153];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v22, 30, v23, "AVE_Prop_HEVC_GetVBVInitialDelay", 15538, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v22, 30, v23, "AVE_Prop_HEVC_GetVBVInitialDelay", 15538, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetVBVInitialDelay", 15528, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetVBVInitialDelay", 15528);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetVBVInitialDelay", 15528);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetSkipCountingPSHeaders(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26921] = v9;
      *(a1 + 140) = *(a1 + 140) & 0xFFFFFFFFFFFFFFFBLL | (4 * v9);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetSkipCountingPSHeaders", 15581, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetSkipCountingPSHeaders", 15581, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetSkipCountingPSHeaders", 15571, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetSkipCountingPSHeaders");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetSkipCountingPSHeaders");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetSkipCountingPSHeaders(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[140] & 4;
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
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v10 >> 2);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetSkipCountingPSHeaders", 15627, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetSkipCountingPSHeaders", 15627);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetSkipCountingPSHeaders", 15627);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetGOPFeatureOn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[26926] = valuePtr;
        a1[310] |= v9;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_HEVC_SetGOPFeatureOn", 15685, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_HEVC_SetGOPFeatureOn", 15685, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetGOPFeatureOn", 15676, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetGOPFeatureOn", 15676, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetGOPFeatureOn", 15666, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetGOPFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetGOPFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetGOPFeatureOn(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[310];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_HEVC_GetGOPFeatureOn", 15731, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_HEVC_GetGOPFeatureOn", 15731, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetGOPFeatureOn", 15721, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetGOPFeatureOn", 15721);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetGOPFeatureOn", 15721);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetGOPFeatureOff(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[26927] = valuePtr;
        a1[310] &= ~v9;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_HEVC_SetGOPFeatureOff", 15782, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_HEVC_SetGOPFeatureOff", 15782, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetGOPFeatureOff", 15773, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetGOPFeatureOff", 15773, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetGOPFeatureOff", 15763, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetGOPFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetGOPFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetGOPFeatureOff(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[310];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_HEVC_GetGOPFeatureOff", 15828, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_HEVC_GetGOPFeatureOff", 15828, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetGOPFeatureOff", 15818, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetGOPFeatureOff", 15818);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetGOPFeatureOff", 15818);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetNumOfPFrame(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetNumOfPFrame", 15879, "iNumOfPFrame >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetNumOfPFrame", 15879, "iNumOfPFrame >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26928) = valuePtr;
        *(a1 + 313) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetNumOfPFrame", 15870, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetNumOfPFrame", 15870, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetNumOfPFrame", 15860, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetNumOfPFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetNumOfPFrame");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetNumOfPFrame(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[313];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetNumOfPFrame", 15925, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetNumOfPFrame", 15925, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetNumOfPFrame", 15915, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetNumOfPFrame", 15915);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetNumOfPFrame", 15915);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetNumOfBFrame(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 4)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetNumOfBFrame", 15977, "(iNumOfBFrame>= 0) && (iNumOfBFrame <= 3)", a1, a1[7], a2, a3, a4, valuePtr, 0, 3);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetNumOfBFrame", 15977, "(iNumOfBFrame>= 0) && (iNumOfBFrame <= 3)", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26929) = valuePtr;
        *(a1 + 314) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetNumOfBFrame", 15967, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetNumOfBFrame", 15967, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetNumOfBFrame", 15957, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetNumOfBFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetNumOfBFrame");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetNumOfBFrame(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[314];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetNumOfBFrame", 16023, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetNumOfBFrame", 16023, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetNumOfBFrame", 16013, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetNumOfBFrame", 16013);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetNumOfBFrame", 16013);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetIntraRefreshFrames(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetIntraRefreshFrames", 16075, "iIntraRefreshFrames >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetIntraRefreshFrames", 16075, "iIntraRefreshFrames >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26975) = valuePtr;
        *(a1 + 2633) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetIntraRefreshFrames", 16066, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetIntraRefreshFrames", 16066, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetIntraRefreshFrames", 16056, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetIntraRefreshFrames");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetIntraRefreshFrames");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetIntraRefreshFrames(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2633];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetIntraRefreshFrames", 16121, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetIntraRefreshFrames", 16121, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetIntraRefreshFrames", 16111, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetIntraRefreshFrames", 16111);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetIntraRefreshFrames", 16111);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetRefFeatureOn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[26932] = valuePtr;
        a1[324] |= v9;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_HEVC_SetRefFeatureOn", 16172, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_HEVC_SetRefFeatureOn", 16172, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRefFeatureOn", 16163, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRefFeatureOn", 16163, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRefFeatureOn", 16153, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetRefFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetRefFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetRefFeatureOn(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[324];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_HEVC_GetRefFeatureOn", 16218, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_HEVC_GetRefFeatureOn", 16218, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRefFeatureOn", 16208, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetRefFeatureOn", 16208);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetRefFeatureOn", 16208);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetRefFeatureOff(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[26933] = valuePtr;
        a1[324] &= ~v9;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_HEVC_SetRefFeatureOff", 16269, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_HEVC_SetRefFeatureOff", 16269, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRefFeatureOff", 16260, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRefFeatureOff", 16260, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRefFeatureOff", 16250, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetRefFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetRefFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetRefNumOfPFrame(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRefNumOfPFrame", 16322, "(iRefNumOfPFrame > 0) && (iRefNumOfPFrame <= 4)", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRefNumOfPFrame", 16322, "(iRefNumOfPFrame > 0) && (iRefNumOfPFrame <= 4)");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26934) = valuePtr;
        *(a1 + 327) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRefNumOfPFrame", 16313, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRefNumOfPFrame", 16313, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRefNumOfPFrame", 16303, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetRefNumOfPFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetRefNumOfPFrame");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetRefNumOfPFrame(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[327];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetRefNumOfPFrame", 16368, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetRefNumOfPFrame", 16368, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRefNumOfPFrame", 16358, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetRefNumOfPFrame", 16358);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetRefNumOfPFrame", 16358);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetRefNumOfBFrame(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 2) >= 3)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRefNumOfBFrame", 16419, "(iRefNumOfBFrame > 1) && (iRefNumOfBFrame <= 4)", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetRefNumOfBFrame", 16419, "(iRefNumOfBFrame > 1) && (iRefNumOfBFrame <= 4)");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26935) = valuePtr;
        *(a1 + 328) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRefNumOfBFrame", 16410, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRefNumOfBFrame", 16410, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRefNumOfBFrame", 16400, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetRefNumOfBFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetRefNumOfBFrame");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetRefNumOfBFrame(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[328];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetRefNumOfBFrame", 16465, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetRefNumOfBFrame", 16465, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRefNumOfBFrame", 16455, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetRefNumOfBFrame", 16455);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetRefNumOfBFrame", 16455);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetRefFeatureOff(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[324];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_HEVC_GetRefFeatureOff", 16509, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_HEVC_GetRefFeatureOff", 16509, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRefFeatureOff", 16499, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetRefFeatureOff", 16499);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetRefFeatureOff", 16499);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetQPModFeatureOn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[26936] = valuePtr;
        a1[334] |= v9;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_HEVC_SetQPModFeatureOn", 16560, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_HEVC_SetQPModFeatureOn", 16560, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetQPModFeatureOn", 16551, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetQPModFeatureOn", 16551, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetQPModFeatureOn", 16541, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetQPModFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetQPModFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetQPModFeatureOn(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[334];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_HEVC_GetQPModFeatureOn", 16606, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_HEVC_GetQPModFeatureOn", 16606, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetQPModFeatureOn", 16596, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetQPModFeatureOn", 16596);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetQPModFeatureOn", 16596);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetQPModFeatureOff(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[26937] = valuePtr;
        a1[334] &= ~v9;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_HEVC_SetQPModFeatureOff", 16658, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_HEVC_SetQPModFeatureOff", 16658, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetQPModFeatureOff", 16649, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetQPModFeatureOff", 16649, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetQPModFeatureOff", 16639, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetQPModFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetQPModFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetQPModFeatureOff(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[334];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_HEVC_GetQPModFeatureOff", 16704, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_HEVC_GetQPModFeatureOff", 16704, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetQPModFeatureOff", 16694, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetQPModFeatureOff", 16694);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetQPModFeatureOff", 16694);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetQPModLevel(void *a1, void *a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v9 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetQPModLevel", 16756, "AVE_QPModLevel_None < iQPModLevel && iQPModLevel < AVE_QPModLevel_Max", a1, a1[7], a2, a3, a4, valuePtr, 0, 1);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v12 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetQPModLevel", 16756, "AVE_QPModLevel_None < iQPModLevel && iQPModLevel < AVE_QPModLevel_Max", a1);
      }

      return 4294965292;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v17 = AVE_Log_CheckConsole(0x1Eu);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        v20 = a1[7];
        v21 = CFGetTypeID(a4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_HEVC_SetQPModLevel", 16746, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
          v18 = AVE_GetCurrTime();
          v19 = AVE_Log_GetLevelStr(4);
          v22 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_HEVC_SetQPModLevel", 16746, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_HEVC_SetQPModLevel", 16736, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v24, "AVE_Prop_HEVC_SetQPModLevel");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_HEVC_SetQPModLevel");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_HEVC_GetQPModLevel(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[335];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetQPModLevel", 16804, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetQPModLevel", 16804, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetQPModLevel", 16793, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetQPModLevel", 16793);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetQPModLevel", 16793);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetLambdaModFeatureOn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[26939] = valuePtr;
        a1[338] |= v9;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_HEVC_SetLambdaModFeatureOn", 16856, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_HEVC_SetLambdaModFeatureOn", 16856, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetLambdaModFeatureOn", 16847, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetLambdaModFeatureOn", 16847, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetLambdaModFeatureOn", 16837, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetLambdaModFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetLambdaModFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetLambdaModFeatureOn(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[338];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_HEVC_GetLambdaModFeatureOn", 16902, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_HEVC_GetLambdaModFeatureOn", 16902, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetLambdaModFeatureOn", 16892, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetLambdaModFeatureOn", 16892);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetLambdaModFeatureOn", 16892);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetLambdaModFeatureOff(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[26940] = valuePtr;
        a1[338] &= ~v9;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_HEVC_SetLambdaModFeatureOff", 16954, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_HEVC_SetLambdaModFeatureOff", 16954, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetLambdaModFeatureOff", 16945, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetLambdaModFeatureOff", 16945, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetLambdaModFeatureOff", 16935, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetLambdaModFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetLambdaModFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetLambdaModFeatureOff(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[338];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_HEVC_GetLambdaModFeatureOff", 17000, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_HEVC_GetLambdaModFeatureOff", 17000, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetLambdaModFeatureOff", 16990, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetLambdaModFeatureOff", 16990);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetLambdaModFeatureOff", 16990);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEnableLambdaMod(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetEnableLambdaMod", 17053, "iEnableLambdaMod >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetEnableLambdaMod", 17053, "iEnableLambdaMod >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26941) = valuePtr;
        if (v9)
        {
          v9 = *(a1 + 338) | 0x1E;
        }

        *(a1 + 338) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableLambdaMod", 17044, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableLambdaMod", 17044, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableLambdaMod", 17034, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetEnableLambdaMod");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetEnableLambdaMod");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEnableLambdaMod(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[338];
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetEnableLambdaMod", 17097, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetEnableLambdaMod", 17097);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetEnableLambdaMod", 17097);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetModeDecFeatureOn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[26942] = valuePtr;
        a1[339] |= v9;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_HEVC_SetModeDecFeatureOn", 17154, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_HEVC_SetModeDecFeatureOn", 17154, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetModeDecFeatureOn", 17145, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetModeDecFeatureOn", 17145, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetModeDecFeatureOn", 17135, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetModeDecFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetModeDecFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetModeDecFeatureOn(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[339];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_HEVC_GetModeDecFeatureOn", 17200, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_HEVC_GetModeDecFeatureOn", 17200, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetModeDecFeatureOn", 17190, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetModeDecFeatureOn", 17190);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetModeDecFeatureOn", 17190);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetModeDecFeatureOff(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[26943] = valuePtr;
        a1[339] &= ~v9;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_HEVC_SetModeDecFeatureOff", 17252, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_HEVC_SetModeDecFeatureOff", 17252, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetModeDecFeatureOff", 17243, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetModeDecFeatureOff", 17243, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetModeDecFeatureOff", 17233, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetModeDecFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetModeDecFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetModeDecFeatureOff(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[339];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_HEVC_GetModeDecFeatureOff", 17298, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_HEVC_GetModeDecFeatureOff", 17298, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetModeDecFeatureOff", 17288, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetModeDecFeatureOff", 17288);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetModeDecFeatureOff", 17288);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetUseReferenceCompressedBuffers(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26944] = v9;
      *(a1 + 10205) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetUseReferenceCompressedBuffers", 17341, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetUseReferenceCompressedBuffers", 17341, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetUseReferenceCompressedBuffers", 17331, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetUseReferenceCompressedBuffers");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetUseReferenceCompressedBuffers");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetUseReferenceCompressedBuffers(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10205];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10205])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetUseReferenceCompressedBuffers", 17378, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetUseReferenceCompressedBuffers", 17378);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetUseReferenceCompressedBuffers", 17378);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetForceSliceRPS(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26976] = v9;
      *(a1 + 10520) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetForceSliceRPS", 17425, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetForceSliceRPS", 17425, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetForceSliceRPS", 17415, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetForceSliceRPS");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetForceSliceRPS");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetForceSliceRPS(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10520];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10520])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetForceSliceRPS", 17462, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetForceSliceRPS", 17462);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetForceSliceRPS", 17462);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetLRMEScaledSrcEn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26977] = v9;
      *(a1 + 10528) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetLRMEScaledSrcEn", 17510, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetLRMEScaledSrcEn", 17510, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetLRMEScaledSrcEn", 17500, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetLRMEScaledSrcEn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetLRMEScaledSrcEn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetLRMEScaledSrcEn(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10528];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10528])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetLRMEScaledSrcEn", 17547, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetLRMEScaledSrcEn", 17547);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetLRMEScaledSrcEn", 17547);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetSEIFeatureOn(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[13473] = valuePtr;
        v10 = a1[137] | v9;
        a1[137] = v10;
        if ((v9 & 0x80000000) != 0)
        {
          *(a1 + 10928) = 1;
          *(a1 + 31408) = 1;
          *(a1 + 14424) = 1;
          a1[138] |= 0x40uLL;
          a1[137] = v10 | 0x1E;
        }

        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v12 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          v15 = *a2;
          if (v12)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v16 = a1[7];
          }

          v32 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v28, 30, v29, "AVE_Prop_HEVC_SetSEIFeatureOn", 17603, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v28 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            v30 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v28, 30, v29, "AVE_Prop_HEVC_SetSEIFeatureOn", 17603, "iFeature != 0");
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v22, 30, v23, "AVE_Prop_HEVC_SetSEIFeatureOn", 17594, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v24, a2, a3, a4, v25);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v26 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v22, 30, v23, "AVE_Prop_HEVC_SetSEIFeatureOn", 17594, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_SetSEIFeatureOn", 17584, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v20 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 30, v31, "AVE_Prop_HEVC_SetSEIFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_SetSEIFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetSEIFeatureOn(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[137];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v22, 30, v23, "AVE_Prop_HEVC_GetSEIFeatureOn", 17664, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v22, 30, v23, "AVE_Prop_HEVC_GetSEIFeatureOn", 17664, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSEIFeatureOn", 17654, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetSEIFeatureOn", 17654);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetSEIFeatureOn", 17654);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetSEIFeatureOff(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a4))
  {
    CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
    v9 = valuePtr;
    if (valuePtr)
    {
      a1[13474] = valuePtr;
      v10 = a1[137] & ~v9;
      a1[137] = v10;
      if ((v9 & 0x80000000) != 0)
      {
        *(a1 + 10928) = 0;
        a1[137] = v10 & 0xFFFFFFFF7FFFFFE1;
      }

      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v12 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v15 = *a2;
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v16 = a1[7];
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
        v23 = AVE_Log_CheckConsole(0x1Eu);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v24, 30, v25, "AVE_Prop_HEVC_SetSEIFeatureOff", 17710, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          v26 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v24, 30, v25, "AVE_Prop_HEVC_SetSEIFeatureOff", 17710, "iFeature != 0");
      }

      return 4294965292;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v20 = a1[7];
      v21 = CFGetTypeID(a4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_HEVC_SetSEIFeatureOff", 17701, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        v22 = a1[7];
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_HEVC_SetSEIFeatureOff", 17701, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetSEIFeatureOff(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[137];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v22, 30, v23, "AVE_Prop_HEVC_GetSEIFeatureOff", 17766, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v22, 30, v23, "AVE_Prop_HEVC_GetSEIFeatureOff", 17766, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSEIFeatureOff", 17756, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetSEIFeatureOff", 17756);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetSEIFeatureOff", 17756);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetDebugMetadataSEI(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      a1[26955] = v10;
      v11 = *(a1 + 137) & 0xFFFFFFFFFFFFFFFELL;
      if (Value)
      {
        ++v11;
      }

      *(a1 + 137) = v11;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetDebugMetadataSEI", 17808, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          v27 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetDebugMetadataSEI", 17808, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_SetDebugMetadataSEI", 17798, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v28, "AVE_Prop_HEVC_SetDebugMetadataSEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_SetDebugMetadataSEI");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetDebugMetadataSEI(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[137] & 1;
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
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v10);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetDebugMetadataSEI", 17853, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetDebugMetadataSEI", 17853);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetDebugMetadataSEI", 17853);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetVUIFeatureOn(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[13475] = valuePtr;
        a1[138] |= v9;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_HEVC_SetVUIFeatureOn", 17910, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_HEVC_SetVUIFeatureOn", 17910, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetVUIFeatureOn", 17901, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetVUIFeatureOn", 17901, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetVUIFeatureOn", 17891, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetVUIFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetVUIFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetVUIFeatureOn(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[138];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v22, 30, v23, "AVE_Prop_HEVC_GetVUIFeatureOn", 17956, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v22, 30, v23, "AVE_Prop_HEVC_GetVUIFeatureOn", 17956, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetVUIFeatureOn", 17946, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetVUIFeatureOn", 17946);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetVUIFeatureOn", 17946);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetVUIFeatureOff(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[13476] = valuePtr;
        a1[138] &= ~v9;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_HEVC_SetVUIFeatureOff", 18007, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_HEVC_SetVUIFeatureOff", 18007, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetVUIFeatureOff", 17998, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetVUIFeatureOff", 17998, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetVUIFeatureOff", 17988, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetVUIFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetVUIFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetVUIFeatureOff(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[138];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v22, 30, v23, "AVE_Prop_HEVC_GetVUIFeatureOff", 18053, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v22, 30, v23, "AVE_Prop_HEVC_GetVUIFeatureOff", 18053, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetVUIFeatureOff", 18043, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetVUIFeatureOff", 18043);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetVUIFeatureOff", 18043);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetChromaQpOffset(void *a1, const char **a2, const __CFString *a3, const void *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetChromaQpOffset", 18089, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v23 = AVE_GetCurrTime();
        v64 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v23, 30, v64, "AVE_Prop_HEVC_SetChromaQpOffset");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetChromaQpOffset");
      }
    }

    return 4294966295;
  }

  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(a4))
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v24 = AVE_Log_CheckConsole(0x1Eu);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      v25 = a1[7];
      v26 = CFGetTypeID(a4);
      if (v24)
      {
        v69 = v25;
        v19 = 18099;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetChromaQpOffset", 18099, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v69, a2, a3, a4, v26);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        v29 = a1[7];
        CFGetTypeID(a4);
        v30 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_19:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v27, 30, v28, "AVE_Prop_HEVC_SetChromaQpOffset", v19, v30);
        return 4294965293;
      }

      v44 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v45 = 18099;
      goto LABEL_33;
    }

    return 4294965293;
  }

  Count = CFArrayGetCount(a4);
  if (Count <= 0)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v32 = AVE_Log_CheckConsole(0x1Eu);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: ChromaQPOffset Array Count %ld\n", v33, 30, v34, "AVE_Prop_HEVC_SetChromaQpOffset", 18104, "(cQpOffsetCount > 0)", Count);
        v33 = AVE_GetCurrTime();
        v67 = Count;
        v65 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v67 = Count;
        v65 = v34;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: ChromaQPOffset Array Count %ld", v33, 30, v65, "AVE_Prop_HEVC_SetChromaQpOffset", 18104, "(cQpOffsetCount > 0)", v67);
    }

    return 4294966295;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a4, 0);
  v11 = ValueAtIndex;
  if (Count != 1)
  {
    if (ValueAtIndex)
    {
      v35 = CFNumberGetTypeID();
      if (v35 != CFGetTypeID(v11))
      {
        if (!AVE_Log_CheckLevel(0x1Eu, 4))
        {
          return 4294965293;
        }

        v51 = AVE_Log_CheckConsole(0x1Eu);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        v52 = a1[7];
        v53 = CFGetTypeID(a4);
        if (v51)
        {
          v70 = v52;
          v19 = 18123;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetChromaQpOffset", 18123, "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)", a1, v70, a2, a3, a4, v53);
          goto LABEL_45;
        }

        v44 = "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)";
        v45 = 18123;
LABEL_33:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v15, 30, v16, "AVE_Prop_HEVC_SetChromaQpOffset", v45, v44);
        return 4294965293;
      }

      v36 = CFArrayGetValueAtIndex(a4, 1);
      if (v36)
      {
        v13 = v36;
        v37 = CFNumberGetTypeID();
        if (v37 != CFGetTypeID(v13))
        {
          if (!AVE_Log_CheckLevel(0x1Eu, 4))
          {
            return 4294965293;
          }

          v59 = AVE_Log_CheckConsole(0x1Eu);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(4);
          v60 = a1[7];
          v61 = CFGetTypeID(a4);
          if (v59)
          {
            v71 = v60;
            v19 = 18133;
            printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetChromaQpOffset", 18133, "CFNumberGetTypeID() == CFGetTypeID(pCrQpOff)", a1, v71, a2, a3, a4, v61);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v62 = a1[7];
            CFGetTypeID(a4);
            v30 = "CFNumberGetTypeID() == CFGetTypeID(pCrQpOff)";
            goto LABEL_19;
          }

          v44 = "CFNumberGetTypeID() == CFGetTypeID(pCrQpOff)";
          v45 = 18133;
          goto LABEL_33;
        }

        goto LABEL_29;
      }

      if (!AVE_Log_CheckLevel(0x1Eu, 4))
      {
        return 4294965293;
      }

      v55 = AVE_Log_CheckConsole(0x1Eu);
      v47 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(4);
      if (v55)
      {
        v49 = 18129;
        printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v47, 30, v48, "AVE_Prop_HEVC_SetChromaQpOffset", 18129, "pCrQpOff != __null", a1, a1[7], a2, a3, a4);
        goto LABEL_51;
      }

      v74 = a1[7];
      v63 = 18129;
    }

    else
    {
      if (!AVE_Log_CheckLevel(0x1Eu, 4))
      {
        return 4294965293;
      }

      v50 = AVE_Log_CheckConsole(0x1Eu);
      v47 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(4);
      if (v50)
      {
        v49 = 18119;
        printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v47, 30, v48, "AVE_Prop_HEVC_SetChromaQpOffset", 18119, "pCbQpOff != __null", a1, a1[7], a2, a3, a4);
        goto LABEL_51;
      }

      v73 = a1[7];
      v63 = 18119;
    }

LABEL_61:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v47, 30, v48, "AVE_Prop_HEVC_SetChromaQpOffset", v63);
    return 4294965293;
  }

  if (!ValueAtIndex)
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294965293;
    }

    v46 = AVE_Log_CheckConsole(0x1Eu);
    v47 = AVE_GetCurrTime();
    v48 = AVE_Log_GetLevelStr(4);
    if (v46)
    {
      v49 = 18141;
      printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v47, 30, v48, "AVE_Prop_HEVC_SetChromaQpOffset", 18141, "pCbQpOff != __null", a1, a1[7], a2, a3, a4);
LABEL_51:
      v56 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(4);
      v58 = a1[7];
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v56, 30, v57, "AVE_Prop_HEVC_SetChromaQpOffset", v49);
      return 4294965293;
    }

    v72 = a1[7];
    v63 = 18141;
    goto LABEL_61;
  }

  v12 = CFNumberGetTypeID();
  v13 = v11;
  if (v12 != CFGetTypeID(v11))
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v14 = AVE_Log_CheckConsole(0x1Eu);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      v17 = a1[7];
      v18 = CFGetTypeID(a4);
      if (v14)
      {
        v68 = v17;
        v19 = 18145;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetChromaQpOffset", 18145, "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)", a1, v68, a2, a3, a4, v18);
LABEL_45:
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        v54 = a1[7];
        CFGetTypeID(a4);
        v30 = "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)";
        goto LABEL_19;
      }

      v44 = "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)";
      v45 = 18145;
      goto LABEL_33;
    }

    return 4294965293;
  }

LABEL_29:
  CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr + 4);
  HIDWORD(valuePtr) = 0;
  CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
  LODWORD(valuePtr) = 0;
  *(a1 + 26954) = Count;
  *(a1 + 9973) = HIDWORD(valuePtr);
  *(a1 + 9981) = 0;
  v38 = AVE_Log_CheckLevel(0x1Eu, 7);
  result = 0;
  if (v38)
  {
    v39 = AVE_Log_CheckConsole(0x1Eu);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(7);
    v42 = *a2;
    if (v39)
    {
      printf("%lld %d AVE %s: %p %lld SetProp %s: %ld\n", v40, 30, v41, a1, a1[7], *a2, Count);
      v40 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v43 = a1[7];
    }

    v66 = *a2;
    syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %ld", v40);
    return 0;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetChromaQpOffset(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = a1 + 9973;
      v13 = CFNumberCreate(allocator, kCFNumberSInt32Type, a1 + 39892);
      if (v13)
      {
        v14 = v13;
        v15 = a1 + 9981;
        v16 = CFNumberCreate(allocator, kCFNumberSInt32Type, a1 + 39924);
        if (v16)
        {
          v17 = v16;
          CFArrayAppendValue(v11, v14);
          CFArrayAppendValue(v11, v17);
          *a5 = v11;
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v18 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(7);
            v21 = *a2;
            if (v18)
            {
              printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v11);
              CurrTime = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v22 = a1[7];
            }

            v45 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", CurrTime);
          }

          CFRelease(v14);
          CFRelease(v17);
          return 0;
        }

        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v38 = AVE_Log_CheckConsole(0x1Eu);
          v39 = AVE_GetCurrTime();
          v40 = AVE_Log_GetLevelStr(4);
          if (v38)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", v39, 30, v40, "AVE_Prop_HEVC_GetChromaQpOffset", 18227, "pCrQpOff != __null", a1, a1[7], a2, allocator, a4, a5, *v15);
            v39 = AVE_GetCurrTime();
            v40 = AVE_Log_GetLevelStr(4);
            v56 = *v15;
            v49 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d", v39, 30, v40, "AVE_Prop_HEVC_GetChromaQpOffset", 18227, "pCrQpOff != __null", a1);
        }

        CFRelease(v14);
        return 4294966293;
      }

      if (!AVE_Log_CheckLevel(0x1Eu, 4))
      {
        return 4294966293;
      }

      v34 = AVE_Log_CheckConsole(0x1Eu);
      v28 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", v28, 30, v35, "AVE_Prop_HEVC_GetChromaQpOffset", 18220, "pCbQpOff != __null", a1, a1[7], a2, allocator, a4, a5, *v12);
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
        v55 = *v12;
        v48 = a1[7];
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d", v36, 30, v37, "AVE_Prop_HEVC_GetChromaQpOffset", 18220, "pCbQpOff != __null", a1);
        return 4294966293;
      }

      v54 = a5;
      v57 = *v12;
      v52 = allocator;
      v53 = a4;
      v50 = a1[7];
      v51 = a2;
      v46 = "pCbQpOff != __null";
      v47 = a1;
      v44 = 18220;
      v43 = v35;
      v41 = "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d";
    }

    else
    {
      if (!AVE_Log_CheckLevel(0x1Eu, 4))
      {
        return 4294966293;
      }

      v27 = AVE_Log_CheckConsole(0x1Eu);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p\n", v28, 30, v29, "AVE_Prop_HEVC_GetChromaQpOffset", 18212, "pQpOffsetArray != __null", a1, a1[7], a2, allocator, a4, a5, 0);
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        v32 = a1[7];
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p", v30, 30, v31, "AVE_Prop_HEVC_GetChromaQpOffset", 18212, "pQpOffsetArray != __null", a1);
        return 4294966293;
      }

      v54 = a5;
      v57 = 0;
      v52 = allocator;
      v53 = a4;
      v50 = a1[7];
      v51 = a2;
      v46 = "pQpOffsetArray != __null";
      v47 = a1;
      v44 = 18212;
      v43 = v29;
      v41 = "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p";
    }

    syslog(3, v41, v28, 30, v43, "AVE_Prop_HEVC_GetChromaQpOffset", v44, v46, v47, v50, v51, v52, v53, v54, v57);
    return 4294966293;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v23 = AVE_Log_CheckConsole(0x1Eu);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(4);
    if (v23)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_GetChromaQpOffset", 18204, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
      v26 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v26, 30, v42, "AVE_Prop_HEVC_GetChromaQpOffset", 18204);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v24, 30, v25, "AVE_Prop_HEVC_GetChromaQpOffset", 18204);
    }
  }

  return 4294966295;
}

uint64_t AVE_Prop_HEVC_SetEnableMultipleScalingMatrices(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26978] = v9;
      *(a1 + 10847) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableMultipleScalingMatrices", 18285, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableMultipleScalingMatrices", 18285, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableMultipleScalingMatrices", 18275, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetEnableMultipleScalingMatrices");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetEnableMultipleScalingMatrices");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEnableMultipleScalingMatrices(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10847];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10847])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEnableMultipleScalingMatrices", 18322, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetEnableMultipleScalingMatrices", 18322);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetEnableMultipleScalingMatrices", 18322);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetNumMergeCandidates(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 1) >= 5)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetNumMergeCandidates", 18379, "(iCandidates >= 1) && (iCandidates <= 5)", a1, a1[7], a2, a3, a4, valuePtr, 1, 5);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetNumMergeCandidates", 18379, "(iCandidates >= 1) && (iCandidates <= 5)", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26979) = valuePtr;
        *(a1 + 14992) = 5 - v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetNumMergeCandidates", 18370, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetNumMergeCandidates", 18370, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetNumMergeCandidates", 18360, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetNumMergeCandidates");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetNumMergeCandidates");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetNumMergeCandidates(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = 5 - a1[14992];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetNumMergeCandidates", 18424, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetNumMergeCandidates", 18424, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetNumMergeCandidates", 18414, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetNumMergeCandidates", 18414);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetNumMergeCandidates", 18414);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEnableEntropyCodingSync(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26980] = v9;
      *(a1 + 39961) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableEntropyCodingSync", 18467, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableEntropyCodingSync", 18467, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableEntropyCodingSync", 18457, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetEnableEntropyCodingSync");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetEnableEntropyCodingSync");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEnableEntropyCodingSync(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[39961];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[39961])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEnableEntropyCodingSync", 18504, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetEnableEntropyCodingSync", 18504);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetEnableEntropyCodingSync", 18504);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetUseHWTileOffsets(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26956] = v9;
      *(a1 + 10855) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetUseHWTileOffsets", 18552, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetUseHWTileOffsets", 18552, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetUseHWTileOffsets", 18542, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetUseHWTileOffsets");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetUseHWTileOffsets");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetUseHWTileOffsets(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10855];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10855])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetUseHWTileOffsets", 18589, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetUseHWTileOffsets", 18589);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetUseHWTileOffsets", 18589);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetThroughputRateMode(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      if ((valuePtr - 1) >= 7)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v25 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetThroughputRateMode", 18648, "iThroughputRateMode > AVE_ThroughputMode_Invalid && iThroughputRateMode < AVE_ThroughputMode_Max", a1, a1[7], a2, a3, a4, valuePtr, 0, 8);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v28 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetThroughputRateMode", 18648, "iThroughputRateMode > AVE_ThroughputMode_Invalid && iThroughputRateMode < AVE_ThroughputMode_Max", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26957) = valuePtr;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v10 = AVE_Log_CheckConsole(0x1Eu);
          v11 = AVE_GetCurrTime();
          v12 = AVE_Log_GetLevelStr(7);
          v13 = *a2;
          if (v10)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v11, 30, v12, a1, a1[7], *a2, valuePtr);
            v11 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v14 = a1[7];
          }

          v30 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v11);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v19 = AVE_Log_CheckConsole(0x1Eu);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        v22 = a1[7];
        v23 = CFGetTypeID(a4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_HEVC_SetThroughputRateMode", 18637, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_HEVC_SetThroughputRateMode", 18637, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_HEVC_SetThroughputRateMode", 18627, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v18 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v29, "AVE_Prop_HEVC_SetThroughputRateMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_HEVC_SetThroughputRateMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetThroughputRateMode(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[26957];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetThroughputRateMode", 18695, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetThroughputRateMode", 18695, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetThroughputRateMode", 18684, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetThroughputRateMode", 18684);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetThroughputRateMode", 18684);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEdgeReplication(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
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
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetEdgeReplication", 18749, "iEdgeReplication > AVE_EdgeReplication_UNINIT && iEdgeReplication <= AVE_EdgeReplication_ALL_HW", a1, a1[7], a2, a3, a4, valuePtr, -1, 4);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetEdgeReplication", 18749, "iEdgeReplication > AVE_EdgeReplication_UNINIT && iEdgeReplication <= AVE_EdgeReplication_ALL_HW", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26958) = valuePtr;
        *(a1 + 2715) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEdgeReplication", 18738, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEdgeReplication", 18738, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEdgeReplication", 18728, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetEdgeReplication");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetEdgeReplication");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEdgeReplication(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2715];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetEdgeReplication", 18813, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetEdgeReplication", 18813, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetEdgeReplication", 18803, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetEdgeReplication", 18803);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetEdgeReplication", 18803);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetDeblockingFiltering(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 3)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetDeblockingFiltering", 18866, "iDeblockingFiltering >= 0 && iDeblockingFiltering <= 2", a1, a1[7], a2, a3, a4, valuePtr, 0, 2);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetDeblockingFiltering", 18866, "iDeblockingFiltering >= 0 && iDeblockingFiltering <= 2", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26959) = valuePtr;
        *(a1 + 60062) = v9 != 0;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetDeblockingFiltering", 18856, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetDeblockingFiltering", 18856, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetDeblockingFiltering", 18846, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetDeblockingFiltering");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetDeblockingFiltering");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetDeblockingFiltering(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 60062);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetDeblockingFiltering", 18912, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetDeblockingFiltering", 18912, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetDeblockingFiltering", 18902, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetDeblockingFiltering", 18902);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetDeblockingFiltering", 18902);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetLRMEFSMVCostMode(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetLRMEFSMVCostMode", 18964, "iMode >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetLRMEFSMVCostMode", 18964, "iMode >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26960) = valuePtr;
        *(a1 + 2651) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetLRMEFSMVCostMode", 18955, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetLRMEFSMVCostMode", 18955, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetLRMEFSMVCostMode", 18945, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetLRMEFSMVCostMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetLRMEFSMVCostMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetLRMEFSMVCostMode(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2651];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetLRMEFSMVCostMode", 19010, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetLRMEFSMVCostMode", 19010, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetLRMEFSMVCostMode", 19000, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetLRMEFSMVCostMode", 19000);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetLRMEFSMVCostMode", 19000);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetLRMEFSLambdaLinear(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetLRMEFSLambdaLinear", 19062, "iLinear >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetLRMEFSLambdaLinear", 19062, "iLinear >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26961) = valuePtr;
        *(a1 + 2652) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetLRMEFSLambdaLinear", 19053, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetLRMEFSLambdaLinear", 19053, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetLRMEFSLambdaLinear", 19043, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetLRMEFSLambdaLinear");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetLRMEFSLambdaLinear");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetLRMEFSLambdaLinear(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2652];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetLRMEFSLambdaLinear", 19108, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetLRMEFSLambdaLinear", 19108, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetLRMEFSLambdaLinear", 19098, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetLRMEFSLambdaLinear", 19098);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetLRMEFSLambdaLinear", 19098);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetLrmePipeSyncMode(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      a1[26962] = Value;
      *(a1 + 10172) = Value != 0;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v11 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, Value);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetLrmePipeSyncMode", 19151, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetLrmePipeSyncMode", 19151, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetLrmePipeSyncMode", 19141, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetLrmePipeSyncMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetLrmePipeSyncMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetLrmePipeSyncMode(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10172];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10172])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetLrmePipeSyncMode", 19188, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetLrmePipeSyncMode", 19188);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetLrmePipeSyncMode", 19188);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetlrmeRCPassNum(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetlrmeRCPassNum", 19244, "ilrmeRCPassNum >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetlrmeRCPassNum", 19244, "ilrmeRCPassNum >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26963) = valuePtr;
        *(a1 + 10531) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetlrmeRCPassNum", 19235, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetlrmeRCPassNum", 19235, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetlrmeRCPassNum", 19225, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetlrmeRCPassNum");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetlrmeRCPassNum");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetlrmeRCPassNum(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10531);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetlrmeRCPassNum", 19290, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetlrmeRCPassNum", 19290, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetlrmeRCPassNum", 19280, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetlrmeRCPassNum", 19280);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetlrmeRCPassNum", 19280);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetUseAsyncFWScheduling(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26964] = v9;
      *(a1 + 10764) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetUseAsyncFWScheduling", 19333, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetUseAsyncFWScheduling", 19333, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetUseAsyncFWScheduling", 19323, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetUseAsyncFWScheduling");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetUseAsyncFWScheduling");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetUseAsyncFWScheduling(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10764];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10764])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetUseAsyncFWScheduling", 19370, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetUseAsyncFWScheduling", 19370);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetUseAsyncFWScheduling", 19370);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEnableMultiSliceStats(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26965] = v9;
      *(a1 + 10512) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableMultiSliceStats", 19418, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableMultiSliceStats", 19418, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableMultiSliceStats", 19408, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetEnableMultiSliceStats");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetEnableMultiSliceStats");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetEnableMultiSliceStats(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10512];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10512])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEnableMultiSliceStats", 19455, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetEnableMultiSliceStats", 19455);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetEnableMultiSliceStats", 19455);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetForceZeroMVEn0(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26981] = v9;
      *(a1 + 10600) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetForceZeroMVEn0", 19502, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetForceZeroMVEn0", 19502, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetForceZeroMVEn0", 19492, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetForceZeroMVEn0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetForceZeroMVEn0");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetForceZeroMVEn0(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10600];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10600])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetForceZeroMVEn0", 19539, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetForceZeroMVEn0", 19539);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetForceZeroMVEn0", 19539);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetForceZeroResEn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26982] = v9;
      *(a1 + 10601) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetForceZeroResEn", 19586, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetForceZeroResEn", 19586, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetForceZeroResEn", 19576, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetForceZeroResEn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetForceZeroResEn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetForceZeroResEn(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10601];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10601])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetForceZeroResEn", 19623, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetForceZeroResEn", 19623);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetForceZeroResEn", 19623);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetMultipleFTQ(void *a1, const char **a2, const __CFString *a3, const void *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v26 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMultipleFTQ", 19671, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v29 = AVE_GetCurrTime();
        v76 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v29, 30, v76, "AVE_Prop_HEVC_SetMultipleFTQ");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMultipleFTQ");
      }
    }

    return 4294966295;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a4))
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v30 = AVE_Log_CheckConsole(0x1Eu);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      v33 = a1[7];
      v34 = CFGetTypeID(a4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v31, 30, v32, "AVE_Prop_HEVC_SetMultipleFTQ", 19681, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)", a1, v33, a2, a3, a4, v34);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        v35 = a1[7];
        v86 = a4;
        v87 = CFGetTypeID(a4);
        v84 = a2;
        v85 = a3;
        v79 = a1;
        v80 = v35;
      }

      else
      {
        v86 = a4;
        v87 = v34;
        v84 = a2;
        v85 = a3;
        v79 = a1;
        v80 = v33;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v31, 30, v32, "AVE_Prop_HEVC_SetMultipleFTQ", 19681, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)", v79, v80, v84, v85, v86, v87);
    }

    return 4294965293;
  }

  Value = CFDictionaryGetValue(a4, @"MultipleFTQSameLambda");
  if (!Value)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v36 = AVE_Log_CheckConsole(0x1Eu);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | MultipleFTQSameLambda not found %p %lld %p %p %p\n", v37, 30, v38, "AVE_Prop_HEVC_SetMultipleFTQ", 19688, "pBoolean != __null", a1, a1[7], a2, a3, a4);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
      }

      v81 = a1[7];
      syslog(3, "%lld %d AVE %s: %s:%d %s | MultipleFTQSameLambda not found %p %lld %p %p %p", v37, 30, v38, "AVE_Prop_HEVC_SetMultipleFTQ", 19688);
    }

    return 4294966295;
  }

  v10 = Value;
  v11 = CFBooleanGetTypeID();
  if (v11 != CFGetTypeID(v10))
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v39 = AVE_Log_CheckConsole(0x1Eu);
      v40 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(4);
      v42 = a1[7];
      v43 = CFGetTypeID(v10);
      if (!v39)
      {
        v55 = "CFBooleanGetTypeID() == CFGetTypeID(pBoolean)";
        v56 = 19693;
        goto LABEL_50;
      }

      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v40, 30, v41, "AVE_Prop_HEVC_SetMultipleFTQ", 19693, "CFBooleanGetTypeID() == CFGetTypeID(pBoolean)", a1, v42, a2, a3, a4, v43);
      v44 = AVE_GetCurrTime();
      v45 = AVE_Log_GetLevelStr(4);
      v46 = a1[7];
      CFGetTypeID(v10);
      v78 = "CFBooleanGetTypeID() == CFGetTypeID(pBoolean)";
      v47 = 19693;
LABEL_41:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v44, 30, v45, "AVE_Prop_HEVC_SetMultipleFTQ", v47, v78);
    }

    return 4294965293;
  }

  v12 = CFBooleanGetValue(v10) != 0;
  *(a1 + 26985) = v12;
  *(a1 + 2649) = v12;
  v13 = CFDictionaryGetValue(a4, @"MultipleFTQNum");
  if (!v13)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v48 = AVE_Log_CheckConsole(0x1Eu);
      v49 = AVE_GetCurrTime();
      v50 = AVE_Log_GetLevelStr(4);
      if (v48)
      {
        printf("%lld %d AVE %s: %s:%d %s | MultipleFTQNum not found %p %lld %p %p %p\n", v49, 30, v50, "AVE_Prop_HEVC_SetMultipleFTQ", 19703, "pNumber != __null", a1, a1[7], a2, a3, a4);
        v49 = AVE_GetCurrTime();
        v50 = AVE_Log_GetLevelStr(4);
      }

      v82 = a1[7];
      syslog(3, "%lld %d AVE %s: %s:%d %s | MultipleFTQNum not found %p %lld %p %p %p", v49, 30, v50, "AVE_Prop_HEVC_SetMultipleFTQ", 19703);
    }

    return 4294966295;
  }

  v14 = v13;
  v15 = CFNumberGetTypeID();
  if (v15 != CFGetTypeID(v14))
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v51 = AVE_Log_CheckConsole(0x1Eu);
      v40 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(4);
      v52 = a1[7];
      v53 = CFGetTypeID(v14);
      if (!v51)
      {
        v55 = "CFNumberGetTypeID() == CFGetTypeID(pNumber)";
        v56 = 19708;
        goto LABEL_50;
      }

      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v40, 30, v41, "AVE_Prop_HEVC_SetMultipleFTQ", 19708, "CFNumberGetTypeID() == CFGetTypeID(pNumber)", a1, v52, a2, a3, a4, v53);
      v44 = AVE_GetCurrTime();
      v45 = AVE_Log_GetLevelStr(4);
      v54 = a1[7];
      CFGetTypeID(v14);
      v78 = "CFNumberGetTypeID() == CFGetTypeID(pNumber)";
      v47 = 19708;
      goto LABEL_41;
    }

    return 4294965293;
  }

  CFNumberGetValue(v14, kCFNumberSInt32Type, &valuePtr + 4);
  v16 = HIDWORD(valuePtr);
  if (valuePtr < 0)
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294965292;
    }

    v57 = AVE_Log_CheckConsole(0x1Eu);
    v58 = AVE_GetCurrTime();
    v59 = AVE_Log_GetLevelStr(4);
    if (v57)
    {
      v60 = "iNum >= 0";
      v61 = 19715;
      printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v58, 30, v59, "AVE_Prop_HEVC_SetMultipleFTQ", 19715, "iNum >= 0", a1, a1[7], a2, a3, a4, HIDWORD(valuePtr));
      v62 = AVE_GetCurrTime();
      v63 = AVE_Log_GetLevelStr(4);
      v64 = a1[7];
LABEL_47:
      syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v62, 30, v63, "AVE_Prop_HEVC_SetMultipleFTQ", v61, v60);
      return 4294965292;
    }

    v72 = "iNum >= 0";
    v73 = 19715;
LABEL_61:
    syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v58, 30, v59, "AVE_Prop_HEVC_SetMultipleFTQ", v73, v72);
    return 4294965292;
  }

  *(a1 + 26983) = HIDWORD(valuePtr);
  *(a1 + 2647) = v16;
  v17 = CFDictionaryGetValue(a4, @"MultipleFTQType");
  if (!v17)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v65 = AVE_Log_CheckConsole(0x1Eu);
      v66 = AVE_GetCurrTime();
      v67 = AVE_Log_GetLevelStr(4);
      if (v65)
      {
        printf("%lld %d AVE %s: %s:%d %s | MultipleFTQType not found %p %lld %p %p %p\n", v66, 30, v67, "AVE_Prop_HEVC_SetMultipleFTQ", 19724, "pNumber != __null", a1, a1[7], a2, a3, a4);
        v66 = AVE_GetCurrTime();
        v67 = AVE_Log_GetLevelStr(4);
      }

      v83 = a1[7];
      syslog(3, "%lld %d AVE %s: %s:%d %s | MultipleFTQType not found %p %lld %p %p %p", v66, 30, v67, "AVE_Prop_HEVC_SetMultipleFTQ", 19724);
    }

    return 4294966295;
  }

  v18 = v17;
  v19 = CFNumberGetTypeID();
  if (v19 != CFGetTypeID(v18))
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294965293;
    }

    v68 = AVE_Log_CheckConsole(0x1Eu);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(4);
    v69 = a1[7];
    v70 = CFGetTypeID(v18);
    if (v68)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v40, 30, v41, "AVE_Prop_HEVC_SetMultipleFTQ", 19729, "CFNumberGetTypeID() == CFGetTypeID(pNumber)", a1, v69, a2, a3, a4, v70);
      v44 = AVE_GetCurrTime();
      v45 = AVE_Log_GetLevelStr(4);
      v71 = a1[7];
      CFGetTypeID(v18);
      v78 = "CFNumberGetTypeID() == CFGetTypeID(pNumber)";
      v47 = 19729;
      goto LABEL_41;
    }

    v55 = "CFNumberGetTypeID() == CFGetTypeID(pNumber)";
    v56 = 19729;
LABEL_50:
    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v40, 30, v41, "AVE_Prop_HEVC_SetMultipleFTQ", v56, v55);
    return 4294965293;
  }

  CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr);
  v20 = valuePtr;
  if ((valuePtr & 0x80000000) != 0)
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294965292;
    }

    v74 = AVE_Log_CheckConsole(0x1Eu);
    v58 = AVE_GetCurrTime();
    v59 = AVE_Log_GetLevelStr(4);
    if (v74)
    {
      v60 = "iType >= 0";
      v61 = 19736;
      printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v58, 30, v59, "AVE_Prop_HEVC_SetMultipleFTQ", 19736, "iType >= 0", a1, a1[7], a2, a3, a4, valuePtr);
      v62 = AVE_GetCurrTime();
      v63 = AVE_Log_GetLevelStr(4);
      v75 = a1[7];
      goto LABEL_47;
    }

    v72 = "iType >= 0";
    v73 = 19736;
    goto LABEL_61;
  }

  *(a1 + 26984) = valuePtr;
  *(a1 + 2648) = v20;
  result = AVE_Log_CheckLevel(0x1Eu, 7);
  if (result)
  {
    v22 = AVE_Log_CheckConsole(0x1Eu);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(7);
    if (v22)
    {
      printf("%lld %d AVE %s: %p %lld SetProp %s: %d %d %d\n", v23, 30, v24, a1, a1[7], *a2, v12, HIDWORD(valuePtr), valuePtr);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v25 = a1[7];
      v77 = *a2;
    }

    syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d %d %d", v23, 30);
    return 0;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetMultipleFTQ(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFDictionary **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = a1[2649];
      v13 = AVE_CFDict_AddBool(@"MultipleFTQSameLambda", v12 != 0, Mutable);
      if (v13)
      {
        v14 = v13;
        if (AVE_Log_CheckLevel(0x32u, 4))
        {
          v15 = AVE_Log_CheckConsole(0x32u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v18 = a1[2647];
          if (v15)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to add MultipleFTQSameLambda %p %lld %p %p %p %p %d %d %d\n", CurrTime, 50, LevelStr, "AVE_Prop_HEVC_GetMultipleFTQ", 19793, "ret == 0", a1, *(a1 + 7), a2, allocator, a4, a5, a1[2649], a1[2647], a1[2648]);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
          }

          v53 = a1[2647];
          v58 = a1[2648];
          v49 = a1[2649];
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add MultipleFTQSameLambda %p %lld %p %p %p %p %d %d %d", CurrTime, 50, LevelStr, "AVE_Prop_HEVC_GetMultipleFTQ", 19793, "ret == 0", a1, *(a1 + 7));
        }
      }

      else
      {
        v30 = a1[2647];
        v31 = AVE_CFDict_AddSInt32(@"MultipleFTQNum", v30, v11);
        if (v31)
        {
          v14 = v31;
          if (AVE_Log_CheckLevel(0x32u, 4))
          {
            v32 = AVE_Log_CheckConsole(0x32u);
            v33 = AVE_GetCurrTime();
            v34 = AVE_Log_GetLevelStr(4);
            v35 = a1[2647];
            if (v32)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to add MultipleFTQNum %p %lld %p %p %p %p %d %d %d\n", v33, 50, v34, "AVE_Prop_HEVC_GetMultipleFTQ", 19801, "ret == 0", a1, *(a1 + 7), a2, allocator, a4, a5, a1[2649], a1[2647], a1[2648]);
              v33 = AVE_GetCurrTime();
              v34 = AVE_Log_GetLevelStr(4);
            }

            v55 = a1[2647];
            v60 = a1[2648];
            v51 = a1[2649];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add MultipleFTQNum %p %lld %p %p %p %p %d %d %d", v33, 50, v34, "AVE_Prop_HEVC_GetMultipleFTQ", 19801, "ret == 0", a1, *(a1 + 7));
          }
        }

        else
        {
          v36 = a1[2648];
          v37 = AVE_CFDict_AddSInt32(@"MultipleFTQType", v36, v11);
          if (v37)
          {
            v14 = v37;
            if (AVE_Log_CheckLevel(0x32u, 4))
            {
              v38 = AVE_Log_CheckConsole(0x32u);
              v39 = AVE_GetCurrTime();
              v40 = AVE_Log_GetLevelStr(4);
              v41 = a1[2647];
              if (v38)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to add MultipleFTQType %p %lld %p %p %p %p %d %d %d\n", v39, 50, v40, "AVE_Prop_HEVC_GetMultipleFTQ", 19809, "ret == 0", a1, *(a1 + 7), a2, allocator, a4, a5, a1[2649], a1[2647], a1[2648]);
                v39 = AVE_GetCurrTime();
                v40 = AVE_Log_GetLevelStr(4);
              }

              v57 = a1[2647];
              v61 = a1[2648];
              v52 = a1[2649];
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add MultipleFTQType %p %lld %p %p %p %p %d %d %d", v39, 50, v40, "AVE_Prop_HEVC_GetMultipleFTQ", 19809, "ret == 0", a1, *(a1 + 7));
            }
          }

          else
          {
            *a5 = v11;
            if (AVE_Log_CheckLevel(0x1Eu, 7))
            {
              v42 = AVE_Log_CheckConsole(0x1Eu);
              v43 = AVE_GetCurrTime();
              v44 = AVE_Log_GetLevelStr(7);
              if (v42)
              {
                printf("%lld %d AVE %s: %p %lld GetProp %s: %d %d %d\n", v43, 30, v44, a1, *(a1 + 7), *a2, v12 != 0, v30, v36);
                v43 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(7);
                v45 = *(a1 + 7);
                v48 = *a2;
              }

              syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %d %d", v43, 30);
            }

            return 0;
          }
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
        v26 = *(a1 + 7);
        v27 = a1[2647];
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld %p %p %p %p %d %d %d\n", v24, 30, v25, "AVE_Prop_HEVC_GetMultipleFTQ", 19785, "pDict != __null", a1, v26, a2, allocator, a4, a5, a1[2649], a1[2647], a1[2648]);
          v28 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(4);
          v54 = a1[2647];
          v59 = a1[2648];
          v50 = a1[2649];
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld %p %p %p %p %d %d %d", v28, 30, v29, "AVE_Prop_HEVC_GetMultipleFTQ", 19785, "pDict != __null", a1, *(a1 + 7));
        }

        else
        {
          v56 = a1[2647];
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld %p %p %p %p %d %d %d", v24, 30, v25, "AVE_Prop_HEVC_GetMultipleFTQ", 19785, "pDict != __null", a1, v26);
        }
      }

      return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetMultipleFTQ", 19773, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v22 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v47, "AVE_Prop_HEVC_GetMultipleFTQ", 19773);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetMultipleFTQ", 19773);
      }
    }

    return 4294966295;
  }

  return v14;
}

uint64_t AVE_Prop_HEVC_SetSubjectiveDistortion32(void *a1, const char **a2, const __CFString *a3, const void *a4)
{
  v116 = 0;
  valuePtr = 0;
  v115 = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v34 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19858, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v37 = AVE_GetCurrTime();
        v101 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v37, 30, v101, "AVE_Prop_HEVC_SetSubjectiveDistortion32");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetSubjectiveDistortion32");
      }
    }

    return 4294966295;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a4))
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v38 = AVE_Log_CheckConsole(0x1Eu);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(4);
      v41 = a1[7];
      v42 = CFGetTypeID(a4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v39, 30, v40, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19868, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)", a1, v41, a2, a3, a4, v42);
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        v43 = a1[7];
        v113 = a4;
        v114 = CFGetTypeID(a4);
        v111 = a2;
        v112 = a3;
        v103 = a1;
        v104 = v43;
      }

      else
      {
        v113 = a4;
        v114 = v42;
        v111 = a2;
        v112 = a3;
        v103 = a1;
        v104 = v41;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v39, 30, v40, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19868, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)", v103, v104, v111, v112, v113, v114);
    }

    return 4294965293;
  }

  Value = CFDictionaryGetValue(a4, @"SubjectiveDistortion32Weight0");
  if (!Value)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v44 = AVE_Log_CheckConsole(0x1Eu);
      v45 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(4);
      if (v44)
      {
        printf("%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight0 not found %p %lld %p %p %p\n", v45, 30, v46, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19875, "pNumber != __null", a1, a1[7], a2, a3, a4);
        v45 = AVE_GetCurrTime();
        v46 = AVE_Log_GetLevelStr(4);
      }

      v105 = a1[7];
      syslog(3, "%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight0 not found %p %lld %p %p %p", v45, 30, v46, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19875);
    }

    return 4294966295;
  }

  v10 = Value;
  v11 = CFNumberGetTypeID();
  if (v11 != CFGetTypeID(v10))
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294965293;
    }

    v47 = AVE_Log_CheckConsole(0x1Eu);
    v48 = AVE_GetCurrTime();
    v49 = AVE_Log_GetLevelStr(4);
    v50 = a1[7];
    v51 = CFGetTypeID(v10);
    if (!v47)
    {
      v64 = 19880;
      goto LABEL_48;
    }

    printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v48, 30, v49, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19880, "CFNumberGetTypeID() == CFGetTypeID(pNumber)", a1, v50, a2, a3, a4, v51);
    v52 = AVE_GetCurrTime();
    v53 = AVE_Log_GetLevelStr(4);
    v54 = a1[7];
    CFGetTypeID(v10);
    v55 = 19880;
LABEL_39:
    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v52, 30, v53, "AVE_Prop_HEVC_SetSubjectiveDistortion32", v55, "CFNumberGetTypeID() == CFGetTypeID(pNumber)");
    return 4294965293;
  }

  CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr + 4);
  v12 = HIDWORD(valuePtr);
  if (valuePtr < 0)
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294965292;
    }

    v56 = AVE_Log_CheckConsole(0x1Eu);
    v57 = AVE_GetCurrTime();
    v58 = AVE_Log_GetLevelStr(4);
    if (!v56)
    {
      v75 = "iWeight0 >= 0";
      v76 = 19887;
      goto LABEL_59;
    }

    v59 = "iWeight0 >= 0";
    v60 = 19887;
    printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v57, 30, v58, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19887, "iWeight0 >= 0", a1, a1[7], a2, a3, a4, HIDWORD(valuePtr));
    v61 = AVE_GetCurrTime();
    v62 = AVE_Log_GetLevelStr(4);
    v63 = a1[7];
LABEL_45:
    syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v61, 30, v62, "AVE_Prop_HEVC_SetSubjectiveDistortion32", v60, v59);
    return 4294965292;
  }

  *(a1 + 26986) = HIDWORD(valuePtr);
  *(a1 + 2642) = v12;
  v13 = CFDictionaryGetValue(a4, @"SubjectiveDistortion32Weight1");
  if (!v13)
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294966295;
    }

    v65 = AVE_Log_CheckConsole(0x1Eu);
    v66 = AVE_GetCurrTime();
    v67 = AVE_Log_GetLevelStr(4);
    if (!v65)
    {
      v107 = a1[7];
      v79 = 19897;
      goto LABEL_65;
    }

    v68 = 19897;
    printf("%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight1 not found %p %lld %p %p %p\n", v66, 30, v67, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19897, "pNumber != __null", a1, a1[7], a2, a3, a4);
LABEL_54:
    v69 = AVE_GetCurrTime();
    v70 = AVE_Log_GetLevelStr(4);
    v106 = a1[7];
    syslog(3, "%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight1 not found %p %lld %p %p %p", v69, 30, v70, "AVE_Prop_HEVC_SetSubjectiveDistortion32", v68);
    return 4294966295;
  }

  v14 = v13;
  v15 = CFNumberGetTypeID();
  if (v15 != CFGetTypeID(v14))
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294965293;
    }

    v71 = AVE_Log_CheckConsole(0x1Eu);
    v48 = AVE_GetCurrTime();
    v49 = AVE_Log_GetLevelStr(4);
    v72 = a1[7];
    v73 = CFGetTypeID(v14);
    if (!v71)
    {
      v64 = 19902;
      goto LABEL_48;
    }

    printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v48, 30, v49, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19902, "CFNumberGetTypeID() == CFGetTypeID(pNumber)", a1, v72, a2, a3, a4, v73);
    v52 = AVE_GetCurrTime();
    v53 = AVE_Log_GetLevelStr(4);
    v74 = a1[7];
    CFGetTypeID(v14);
    v55 = 19902;
    goto LABEL_39;
  }

  CFNumberGetValue(v14, kCFNumberSInt32Type, &valuePtr);
  v16 = valuePtr;
  if ((valuePtr & 0x80000000) != 0)
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294965292;
    }

    v77 = AVE_Log_CheckConsole(0x1Eu);
    v57 = AVE_GetCurrTime();
    v58 = AVE_Log_GetLevelStr(4);
    if (!v77)
    {
      v75 = "iWeight1 >= 0";
      v76 = 19909;
      goto LABEL_59;
    }

    v59 = "iWeight1 >= 0";
    v60 = 19909;
    printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v57, 30, v58, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19909, "iWeight1 >= 0", a1, a1[7], a2, a3, a4, valuePtr);
    v61 = AVE_GetCurrTime();
    v62 = AVE_Log_GetLevelStr(4);
    v78 = a1[7];
    goto LABEL_45;
  }

  *(a1 + 26987) = valuePtr;
  *(a1 + 2643) = v16;
  v17 = CFDictionaryGetValue(a4, @"SubjectiveDistortion32Weight2");
  if (!v17)
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294966295;
    }

    v80 = AVE_Log_CheckConsole(0x1Eu);
    v66 = AVE_GetCurrTime();
    v67 = AVE_Log_GetLevelStr(4);
    if (!v80)
    {
      v108 = a1[7];
      v79 = 19919;
      goto LABEL_65;
    }

    v68 = 19919;
    printf("%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight1 not found %p %lld %p %p %p\n", v66, 30, v67, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19919, "pNumber != __null", a1, a1[7], a2, a3, a4);
    goto LABEL_54;
  }

  v18 = v17;
  v19 = CFNumberGetTypeID();
  if (v19 != CFGetTypeID(v18))
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294965293;
    }

    v81 = AVE_Log_CheckConsole(0x1Eu);
    v48 = AVE_GetCurrTime();
    v49 = AVE_Log_GetLevelStr(4);
    v82 = a1[7];
    v83 = CFGetTypeID(v18);
    if (!v81)
    {
      v64 = 19924;
      goto LABEL_48;
    }

    printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v48, 30, v49, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19924, "CFNumberGetTypeID() == CFGetTypeID(pNumber)", a1, v82, a2, a3, a4, v83);
    v52 = AVE_GetCurrTime();
    v53 = AVE_Log_GetLevelStr(4);
    v84 = a1[7];
    CFGetTypeID(v18);
    v55 = 19924;
    goto LABEL_39;
  }

  CFNumberGetValue(v18, kCFNumberSInt32Type, &v116 + 4);
  v20 = HIDWORD(v116);
  if (v116 < 0)
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294965292;
    }

    v85 = AVE_Log_CheckConsole(0x1Eu);
    v57 = AVE_GetCurrTime();
    v58 = AVE_Log_GetLevelStr(4);
    if (!v85)
    {
      v75 = "iWeight2 >= 0";
      v76 = 19931;
      goto LABEL_59;
    }

    v59 = "iWeight2 >= 0";
    v60 = 19931;
    printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v57, 30, v58, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19931, "iWeight2 >= 0", a1, a1[7], a2, a3, a4, HIDWORD(v116));
    v61 = AVE_GetCurrTime();
    v62 = AVE_Log_GetLevelStr(4);
    v86 = a1[7];
    goto LABEL_45;
  }

  *(a1 + 26988) = HIDWORD(v116);
  *(a1 + 2644) = v20;
  v21 = CFDictionaryGetValue(a4, @"SubjectiveDistortion32Offset");
  if (!v21)
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294966295;
    }

    v87 = AVE_Log_CheckConsole(0x1Eu);
    v66 = AVE_GetCurrTime();
    v67 = AVE_Log_GetLevelStr(4);
    if (!v87)
    {
      v109 = a1[7];
      v79 = 19941;
      goto LABEL_65;
    }

    v68 = 19941;
    printf("%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight1 not found %p %lld %p %p %p\n", v66, 30, v67, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19941, "pNumber != __null", a1, a1[7], a2, a3, a4);
    goto LABEL_54;
  }

  v22 = v21;
  v23 = CFNumberGetTypeID();
  if (v23 != CFGetTypeID(v22))
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294965293;
    }

    v88 = AVE_Log_CheckConsole(0x1Eu);
    v48 = AVE_GetCurrTime();
    v49 = AVE_Log_GetLevelStr(4);
    v89 = a1[7];
    v90 = CFGetTypeID(v22);
    if (!v88)
    {
      v64 = 19946;
      goto LABEL_48;
    }

    printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v48, 30, v49, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19946, "CFNumberGetTypeID() == CFGetTypeID(pNumber)", a1, v89, a2, a3, a4, v90);
    v52 = AVE_GetCurrTime();
    v53 = AVE_Log_GetLevelStr(4);
    v91 = a1[7];
    CFGetTypeID(v22);
    v55 = 19946;
    goto LABEL_39;
  }

  CFNumberGetValue(v22, kCFNumberSInt32Type, &v116);
  v24 = v116;
  if ((v116 & 0x80000000) != 0)
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294965292;
    }

    v92 = AVE_Log_CheckConsole(0x1Eu);
    v57 = AVE_GetCurrTime();
    v58 = AVE_Log_GetLevelStr(4);
    if (!v92)
    {
      v75 = "iOffset >= 0";
      v76 = 19953;
      goto LABEL_59;
    }

    v59 = "iOffset >= 0";
    v60 = 19953;
    printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v57, 30, v58, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19953, "iOffset >= 0", a1, a1[7], a2, a3, a4, v116);
    v61 = AVE_GetCurrTime();
    v62 = AVE_Log_GetLevelStr(4);
    v93 = a1[7];
    goto LABEL_45;
  }

  *(a1 + 26989) = v116;
  *(a1 + 2645) = v24;
  v25 = CFDictionaryGetValue(a4, @"SubjectiveDistortion32Scale");
  if (!v25)
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294966295;
    }

    v94 = AVE_Log_CheckConsole(0x1Eu);
    v66 = AVE_GetCurrTime();
    v67 = AVE_Log_GetLevelStr(4);
    if (v94)
    {
      v68 = 19963;
      printf("%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight1 not found %p %lld %p %p %p\n", v66, 30, v67, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19963, "pNumber != __null", a1, a1[7], a2, a3, a4);
      goto LABEL_54;
    }

    v110 = a1[7];
    v79 = 19963;
LABEL_65:
    syslog(3, "%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight1 not found %p %lld %p %p %p", v66, 30, v67, "AVE_Prop_HEVC_SetSubjectiveDistortion32", v79);
    return 4294966295;
  }

  v26 = v25;
  v27 = CFNumberGetTypeID();
  if (v27 != CFGetTypeID(v26))
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294965293;
    }

    v95 = AVE_Log_CheckConsole(0x1Eu);
    v48 = AVE_GetCurrTime();
    v49 = AVE_Log_GetLevelStr(4);
    v96 = a1[7];
    v97 = CFGetTypeID(v26);
    if (v95)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v48, 30, v49, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19968, "CFNumberGetTypeID() == CFGetTypeID(pNumber)", a1, v96, a2, a3, a4, v97);
      v52 = AVE_GetCurrTime();
      v53 = AVE_Log_GetLevelStr(4);
      v98 = a1[7];
      CFGetTypeID(v26);
      v55 = 19968;
      goto LABEL_39;
    }

    v64 = 19968;
LABEL_48:
    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v48, 30, v49, "AVE_Prop_HEVC_SetSubjectiveDistortion32", v64, "CFNumberGetTypeID() == CFGetTypeID(pNumber)");
    return 4294965293;
  }

  CFNumberGetValue(v26, kCFNumberSInt32Type, &v115);
  v28 = v115;
  if (v115 < 0)
  {
    if (!AVE_Log_CheckLevel(0x1Eu, 4))
    {
      return 4294965292;
    }

    v99 = AVE_Log_CheckConsole(0x1Eu);
    v57 = AVE_GetCurrTime();
    v58 = AVE_Log_GetLevelStr(4);
    if (v99)
    {
      v59 = "iScale >= 0";
      v60 = 19975;
      printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v57, 30, v58, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19975, "iScale >= 0", a1, a1[7], a2, a3, a4, v115);
      v61 = AVE_GetCurrTime();
      v62 = AVE_Log_GetLevelStr(4);
      v100 = a1[7];
      goto LABEL_45;
    }

    v75 = "iScale >= 0";
    v76 = 19975;
LABEL_59:
    syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v57, 30, v58, "AVE_Prop_HEVC_SetSubjectiveDistortion32", v76, v75);
    return 4294965292;
  }

  *(a1 + 26990) = v115;
  *(a1 + 2646) = v28;
  result = AVE_Log_CheckLevel(0x1Eu, 7);
  if (result)
  {
    v30 = AVE_Log_CheckConsole(0x1Eu);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(7);
    if (v30)
    {
      printf("%lld %d AVE %s: %p %lld SetProp %s: %d %d %d %d %d\n", v31, 30, v32, a1, a1[7], *a2, HIDWORD(valuePtr), valuePtr, HIDWORD(v116), v116, v115);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(7);
      v33 = a1[7];
      v102 = *a2;
    }

    syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d %d %d %d %d", v31, 30, v32);
    return 0;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetSubjectiveDistortion32(unsigned int *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFDictionary **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = a1[2642];
      v13 = AVE_CFDict_AddSInt32(@"SubjectiveDistortion32Weight0", v12, Mutable);
      if (v13)
      {
        v14 = v13;
        if (AVE_Log_CheckLevel(0x32u, 4))
        {
          v15 = AVE_Log_CheckConsole(0x32u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v18 = a1[2645];
          if (v15)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to add Weight0 %p %lld %p %p %p %p %d %d %d %d %d\n", CurrTime, 50, LevelStr, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20036, "ret == 0", a1, *(a1 + 7), a2, allocator, a4, a5, a1[2642], a1[2643], a1[2644], a1[2645], a1[2646]);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
          }

          v78 = a1[2645];
          v85 = a1[2646];
          v66 = a1[2643];
          v72 = a1[2644];
          v60 = a1[2642];
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Weight0 %p %lld %p %p %p %p %d %d %d %d %d", CurrTime, 50, LevelStr, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20036, "ret == 0", a1, *(a1 + 7), a2);
        }
      }

      else
      {
        v30 = a1[2643];
        v31 = AVE_CFDict_AddSInt32(@"SubjectiveDistortion32Weight1", v30, v11);
        if (v31)
        {
          v14 = v31;
          if (AVE_Log_CheckLevel(0x32u, 4))
          {
            v32 = AVE_Log_CheckConsole(0x32u);
            v33 = AVE_GetCurrTime();
            v34 = AVE_Log_GetLevelStr(4);
            v35 = a1[2645];
            if (v32)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to add Weight1 %p %lld %p %p %p %p %d %d %d %d %d\n", v33, 50, v34, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20045, "ret == 0", a1, *(a1 + 7), a2, allocator, a4, a5, a1[2642], a1[2643], a1[2644], a1[2645], a1[2646]);
              v33 = AVE_GetCurrTime();
              v34 = AVE_Log_GetLevelStr(4);
            }

            v80 = a1[2645];
            v87 = a1[2646];
            v68 = a1[2643];
            v74 = a1[2644];
            v62 = a1[2642];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Weight1 %p %lld %p %p %p %p %d %d %d %d %d", v33, 50, v34, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20045, "ret == 0", a1, *(a1 + 7), a2);
          }
        }

        else
        {
          v36 = a1[2644];
          v37 = AVE_CFDict_AddSInt32(@"SubjectiveDistortion32Weight2", v36, v11);
          if (v37)
          {
            v14 = v37;
            if (AVE_Log_CheckLevel(0x32u, 4))
            {
              v38 = AVE_Log_CheckConsole(0x32u);
              v39 = AVE_GetCurrTime();
              v40 = AVE_Log_GetLevelStr(4);
              v41 = a1[2645];
              if (v38)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to add Weight2 %p %lld %p %p %p %p %d %d %d %d %d\n", v39, 50, v40, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20054, "ret == 0", a1, *(a1 + 7), a2, allocator, a4, a5, a1[2642], a1[2643], a1[2644], a1[2645], a1[2646]);
                v39 = AVE_GetCurrTime();
                v40 = AVE_Log_GetLevelStr(4);
              }

              v82 = a1[2645];
              v88 = a1[2646];
              v69 = a1[2643];
              v75 = a1[2644];
              v63 = a1[2642];
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Weight2 %p %lld %p %p %p %p %d %d %d %d %d", v39, 50, v40, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20054, "ret == 0", a1, *(a1 + 7), a2);
            }
          }

          else
          {
            v92 = v36;
            v42 = a1[2645];
            v43 = AVE_CFDict_AddSInt32(@"SubjectiveDistortion32Offset", v42, v11);
            if (v43)
            {
              v14 = v43;
              if (AVE_Log_CheckLevel(0x32u, 4))
              {
                v44 = AVE_Log_CheckConsole(0x32u);
                v45 = AVE_GetCurrTime();
                v46 = AVE_Log_GetLevelStr(4);
                v47 = a1[2645];
                if (v44)
                {
                  printf("%lld %d AVE %s: %s:%d %s | fail to add Offset %p %lld %p %p %p %p %d %d %d %d %d\n", v45, 50, v46, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20063, "ret == 0", a1, *(a1 + 7), a2, allocator, a4, a5, a1[2642], a1[2643], a1[2644], a1[2645], a1[2646]);
                  v45 = AVE_GetCurrTime();
                  v46 = AVE_Log_GetLevelStr(4);
                }

                v83 = a1[2645];
                v89 = a1[2646];
                v70 = a1[2643];
                v76 = a1[2644];
                v64 = a1[2642];
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Offset %p %lld %p %p %p %p %d %d %d %d %d", v45, 50, v46, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20063, "ret == 0", a1, *(a1 + 7), a2);
              }
            }

            else
            {
              v91 = v42;
              AVE_CFDict_AddSInt32(@"SubjectiveDistortion32Scale", a1[2646], v11);
              v48 = a1[2646];
              v49 = AVE_CFDict_AddSInt32(@"SubjectiveDistortion32Scale", v48, v11);
              if (v49)
              {
                v14 = v49;
                if (AVE_Log_CheckLevel(0x32u, 4))
                {
                  v50 = AVE_Log_CheckConsole(0x32u);
                  v51 = AVE_GetCurrTime();
                  v52 = AVE_Log_GetLevelStr(4);
                  v53 = a1[2645];
                  if (v50)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | fail to add Scale %p %lld %p %p %p %p %d %d %d %d %d\n", v51, 50, v52, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20074, "ret == 0", a1, *(a1 + 7), a2, allocator, a4, a5, a1[2642], a1[2643], a1[2644], a1[2645], a1[2646]);
                    v51 = AVE_GetCurrTime();
                    v52 = AVE_Log_GetLevelStr(4);
                  }

                  v84 = a1[2645];
                  v90 = a1[2646];
                  v71 = a1[2643];
                  v77 = a1[2644];
                  v65 = a1[2642];
                  syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Scale %p %lld %p %p %p %p %d %d %d %d %d", v51, 50, v52, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20074, "ret == 0", a1, *(a1 + 7), a2);
                }
              }

              else
              {
                *a5 = v11;
                if (AVE_Log_CheckLevel(0x1Eu, 7))
                {
                  v14 = AVE_Log_CheckConsole(0x1Eu);
                  v54 = AVE_GetCurrTime();
                  v55 = AVE_Log_GetLevelStr(7);
                  if (!v14)
                  {
                    syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %d %d %d %d", v54, 30, v55);
                    return v14;
                  }

                  printf("%lld %d AVE %s: %p %lld GetProp %s: %d %d %d %d %d\n", v54, 30, v55, a1, *(a1 + 7), *a2, v12, v30, v92, v91, v48);
                  v56 = AVE_GetCurrTime();
                  v57 = AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %d %d %d %d", v56, 30, v57, a1, *(a1 + 7), *a2, v12, v30, v92, v91, v48);
                }

                return 0;
              }
            }
          }
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
        v26 = *(a1 + 7);
        v27 = a1[2645];
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld %p %p %p %p %d %d %d %d %d\n", v24, 30, v25, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20027, "pDict != __null", a1, v26, a2, allocator, a4, a5, a1[2642], a1[2643], a1[2644], a1[2645], a1[2646]);
          v28 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(4);
          v79 = a1[2645];
          v86 = a1[2646];
          v67 = a1[2643];
          v73 = a1[2644];
          v61 = a1[2642];
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld %p %p %p %p %d %d %d %d %d", v28, 30, v29, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20027, "pDict != __null", a1, *(a1 + 7), a2);
        }

        else
        {
          v81 = a1[2645];
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld %p %p %p %p %d %d %d %d %d", v24, 30, v25, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20027, "pDict != __null", a1, v26, a2);
        }
      }

      return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20014, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v22 = AVE_GetCurrTime();
        v59 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v59, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20014);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20014);
      }
    }

    return 4294966295;
  }

  return v14;
}

uint64_t AVE_Prop_HEVC_SetLRMEOutputType(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
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
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetLRMEOutputType", 20127, "(iLrmeOutType >= LRME_OUTPUT_BEST_MV) && (iLrmeOutType <= LRME_OUTPUT_ALL_MV_AND_STATISTICS)", a1, a1[7], a2, a3, a4, valuePtr, 0, 4);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetLRMEOutputType", 20127, "(iLrmeOutType >= LRME_OUTPUT_BEST_MV) && (iLrmeOutType <= LRME_OUTPUT_ALL_MV_AND_STATISTICS)", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26991) = valuePtr;
        *(a1 + 2941) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetLRMEOutputType", 20116, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetLRMEOutputType", 20116, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetLRMEOutputType", 20106, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetLRMEOutputType");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetLRMEOutputType");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetLRMEOutputType(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2941];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetLRMEOutputType", 20173, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetLRMEOutputType", 20173, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetLRMEOutputType", 20163, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetLRMEOutputType", 20163);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetLRMEOutputType", 20163);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetEnableSliceEncodingMode(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26992] = v9;
      *(a1 + 10248) = v9;
      v10 = AVE_DevCap_Find(a1[17]);
      if (v10)
      {
        v11 = v10;
        SliceMap = AVE_Enc_GenerateSliceMap(a1[2563], a1[361], *(*(v10 + 8) + 16), *(a1 + 10248), a1 + 2563);
        if (SliceMap)
        {
          v13 = SliceMap;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v14 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v17 = *(a1 + 7);
            if (v14)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to generate slice map %p %lld %p %p %d %d %d %d %d %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20239, "ret == 0", a1, v17, a3, a4, a1[17], a1[2563], a1[361], *(*(v11 + 8) + 16), *(a1 + 10248), a1 + 2563, v13);
              v18 = AVE_GetCurrTime();
              v19 = AVE_Log_GetLevelStr(4);
              v46 = *(*(v11 + 8) + 16);
              v47 = *(a1 + 10248);
              v44 = a1[2563];
              v45 = a1[361];
              v42 = a1[17];
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to generate slice map %p %lld %p %p %d %d %d %d %d %p %d", v18, 30, v19, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20239, "ret == 0", a1, *(a1 + 7), a3);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to generate slice map %p %lld %p %p %d %d %d %d %d %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20239, "ret == 0", a1, v17, a3);
            }
          }
        }

        else
        {
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v34 = AVE_Log_CheckConsole(0x1Eu);
            v35 = AVE_GetCurrTime();
            v36 = AVE_Log_GetLevelStr(7);
            v37 = *a2;
            if (v34)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v35, 30, v36, a1, *(a1 + 7), *a2, v9);
              v35 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v38 = *(a1 + 7);
            }

            v41 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v35);
          }

          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v30 = AVE_Log_CheckConsole(0x1Eu);
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          if (v30)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %lld %p %p %d\n", v31, 30, v32, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20228, "pDevCap != __null", a1, *(a1 + 7), a3, a4, a1[17]);
            v31 = AVE_GetCurrTime();
            v32 = AVE_Log_GetLevelStr(4);
            v33 = *(a1 + 7);
            v43 = a1[17];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %lld %p %p %d", v31, 30, v32, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20228);
        }

        return 4294966294;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v24 = AVE_Log_CheckConsole(0x1Eu);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        v27 = *(a1 + 7);
        v28 = CFGetTypeID(a4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v25, 30, v26, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20217, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v27, a2, a3, a4, v28);
          v25 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(4);
          v29 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v25, 30, v26, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20217, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20207, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v23 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v23, 30, v40, "AVE_Prop_HEVC_SetEnableSliceEncodingMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_SetEnableSliceEncodingMode");
      }
    }

    return 4294966295;
  }

  return v13;
}

uint64_t AVE_Prop_HEVC_GetEnableSliceEncodingMode(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10248];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10248])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEnableSliceEncodingMode", 20270, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetEnableSliceEncodingMode", 20270);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetEnableSliceEncodingMode", 20270);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetMCTFEdgeCount(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFEdgeCount", 20326, "iEdgeCnt >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFEdgeCount", 20326, "iEdgeCnt >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26966) = valuePtr;
        *(a1 + 2686) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFEdgeCount", 20317, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFEdgeCount", 20317, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMCTFEdgeCount", 20307, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetMCTFEdgeCount");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetMCTFEdgeCount");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetMCTFEdgeCount(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2686];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFEdgeCount", 20372, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFEdgeCount", 20372, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMCTFEdgeCount", 20362, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetMCTFEdgeCount", 20362);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetMCTFEdgeCount", 20362);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetMCTFEdgeThresh(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFEdgeThresh", 20423, "iEdgeThresh >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFEdgeThresh", 20423, "iEdgeThresh >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26967) = valuePtr;
        *(a1 + 2687) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFEdgeThresh", 20414, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFEdgeThresh", 20414, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMCTFEdgeThresh", 20404, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetMCTFEdgeThresh");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetMCTFEdgeThresh");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetMCTFEdgeThresh(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2687];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFEdgeThresh", 20469, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFEdgeThresh", 20469, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMCTFEdgeThresh", 20459, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetMCTFEdgeThresh", 20459);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetMCTFEdgeThresh", 20459);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetMCTFStrengthLevel(void *a1, const char **a2, const __CFString *a3, const void *a4)
{
  valuePtr = -2;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20514, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v30, a2, a3, a4, v31);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        v34 = a1[7];
        CFGetTypeID(a4);
        v53 = 20514;
        v55 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_21:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v32, 30, v33, "AVE_Prop_HEVC_SetMCTFStrengthLevel", v53, v55);
        return 4294965293;
      }

      v40 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v41 = 20514;
LABEL_28:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFStrengthLevel", v41, v40);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    v10 = Count;
    if ((Count - 1) <= 1)
    {
      v11 = 0;
      v12 = Count & 0x7FFFFFFF;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a4, v11);
        if (!ValueAtIndex)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v42 = AVE_Log_CheckConsole(0x1Eu);
            v43 = AVE_GetCurrTime();
            v44 = AVE_Log_GetLevelStr(4);
            if (v42)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v43, 30, v44, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20531, "pNum != __null", a1, a1[7], a2, a3, a4);
              v43 = AVE_GetCurrTime();
              v44 = AVE_Log_GetLevelStr(4);
            }

            v57 = a1[7];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v43, 30, v44, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20531);
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
        v16 = valuePtr;
        if (valuePtr >= 0x19)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v49 = AVE_Log_CheckConsole(0x1Eu);
            v50 = AVE_GetCurrTime();
            v51 = AVE_Log_GetLevelStr(4);
            if (v49)
            {
              printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)\n", v50, 30, v51, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20549, "0 <= iMCTFStrengthLevel && iMCTFStrengthLevel < 25", a1, a1[7], a2, a3, a4, valuePtr, 0, 25);
              v50 = AVE_GetCurrTime();
              v51 = AVE_Log_GetLevelStr(4);
            }

            v58 = a1[7];
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)", v50, 30, v51, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20549, "0 <= iMCTFStrengthLevel && iMCTFStrengthLevel < 25", a1);
          }

          return 4294965292;
        }

        *(a1 + v11 + 2636) = valuePtr;
        *(a1 + v11 + 26968) = v16;
        a1[181] &= ~0x2000000uLL;
        if (v12 == ++v11)
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
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v19, 30, v20, a1, a1[7], *a2, v10);
              v19 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v22 = a1[7];
            }

            v54 = *a2;
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

      v45 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v46 = a1[7];
      v47 = CFGetTypeID(a4);
      if (v45)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20537, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v46, a2, a3, a4, v47);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        v48 = a1[7];
        CFGetTypeID(a4);
        v53 = 20537;
        v55 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
        goto LABEL_21;
      }

      v40 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
      v41 = 20537;
      goto LABEL_28;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v35 = AVE_Log_CheckConsole(0x1Eu);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", v36, 30, v37, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20523, "0 < iNum && iNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1, a1[7], a2, a3, a4, v10, 0, 2);
        v38 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(4);
        v56 = a1[7];
        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", v38, 30, v39, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20523, "0 < iNum && iNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", v36, 30, v37, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20523, "0 < iNum && iNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1);
      }
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20504, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v26 = AVE_GetCurrTime();
        v52 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v26, 30, v52, "AVE_Prop_HEVC_SetMCTFStrengthLevel");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v24, 30, v25, "AVE_Prop_HEVC_SetMCTFStrengthLevel");
      }
    }

    return 4294966295;
  }
}