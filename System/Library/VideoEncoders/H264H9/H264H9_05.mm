uint64_t AVE_Prop_AVC_GetRefFeatureOn(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_AVC_GetRefFeatureOn", 12009, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_AVC_GetRefFeatureOn", 12009, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetRefFeatureOn", 11999, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetRefFeatureOn", 11999);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetRefFeatureOn", 11999);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetRefFeatureOff(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[4477] = valuePtr;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_AVC_SetRefFeatureOff", 12060, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_AVC_SetRefFeatureOff", 12060, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetRefFeatureOff", 12051, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetRefFeatureOff", 12051, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetRefFeatureOff", 12041, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetRefFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetRefFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetRefFeatureOff(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_AVC_GetRefFeatureOff", 12106, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_AVC_GetRefFeatureOff", 12106, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetRefFeatureOff", 12096, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetRefFeatureOff", 12096);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetRefFeatureOff", 12096);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetRefNumOfPFrame(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetRefNumOfPFrame", 12158, "(iRefNumOfPFrame > 0) && (iRefNumOfPFrame <= 4)", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetRefNumOfPFrame", 12158, "(iRefNumOfPFrame > 0) && (iRefNumOfPFrame <= 4)");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4478) = valuePtr;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetRefNumOfPFrame", 12148, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetRefNumOfPFrame", 12148, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetRefNumOfPFrame", 12138, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetRefNumOfPFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetRefNumOfPFrame");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetRefNumOfPFrame(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetRefNumOfPFrame", 12204, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetRefNumOfPFrame", 12204, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetRefNumOfPFrame", 12194, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetRefNumOfPFrame", 12194);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetRefNumOfPFrame", 12194);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetRefNumOfBFrame(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetRefNumOfBFrame", 12256, "(iRefNumOfBFrame > 1) && (iRefNumOfBFrame <= 4)", a1, a1[7], a2, a3, a4, valuePtr, 0, 3);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetRefNumOfBFrame", 12256, "(iRefNumOfBFrame > 1) && (iRefNumOfBFrame <= 4)", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4479) = valuePtr;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetRefNumOfBFrame", 12246, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetRefNumOfBFrame", 12246, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetRefNumOfBFrame", 12236, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetRefNumOfBFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetRefNumOfBFrame");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetRefNumOfBFrame(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetRefNumOfBFrame", 12302, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetRefNumOfBFrame", 12302, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetRefNumOfBFrame", 12292, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetRefNumOfBFrame", 12292);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetRefNumOfBFrame", 12292);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetQPModFeatureOn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[4480] = valuePtr;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_AVC_SetQPModFeatureOn", 12353, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_AVC_SetQPModFeatureOn", 12353, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetQPModFeatureOn", 12344, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetQPModFeatureOn", 12344, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetQPModFeatureOn", 12334, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetQPModFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetQPModFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetQPModFeatureOn(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_AVC_GetQPModFeatureOn", 12399, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_AVC_GetQPModFeatureOn", 12399, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetQPModFeatureOn", 12389, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetQPModFeatureOn", 12389);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetQPModFeatureOn", 12389);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetQPModFeatureOff(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[4481] = valuePtr;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_AVC_SetQPModFeatureOff", 12450, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_AVC_SetQPModFeatureOff", 12450, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetQPModFeatureOff", 12441, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetQPModFeatureOff", 12441, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetQPModFeatureOff", 12431, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetQPModFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetQPModFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetQPModFeatureOff(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_AVC_GetQPModFeatureOff", 12496, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_AVC_GetQPModFeatureOff", 12496, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetQPModFeatureOff", 12486, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetQPModFeatureOff", 12486);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetQPModFeatureOff", 12486);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetQPModLevel(void *a1, void *a2, const __CFString *a3, const __CFNumber *a4)
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
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetQPModLevel", 12548, "AVE_QPModLevel_None < iQPModLevel && iQPModLevel < AVE_QPModLevel_Max", a1, a1[7], a2, a3, a4, valuePtr, 0, 1);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v12 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetQPModLevel", 12548, "AVE_QPModLevel_None < iQPModLevel && iQPModLevel < AVE_QPModLevel_Max", a1);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_AVC_SetQPModLevel", 12538, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
          v18 = AVE_GetCurrTime();
          v19 = AVE_Log_GetLevelStr(4);
          v22 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_AVC_SetQPModLevel", 12538, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_SetQPModLevel", 12528, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v24, "AVE_Prop_AVC_SetQPModLevel");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_AVC_SetQPModLevel");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_GetQPModLevel(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetQPModLevel", 12596, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetQPModLevel", 12596, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetQPModLevel", 12585, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetQPModLevel", 12585);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetQPModLevel", 12585);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetLambdaModFeatureOn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[4483] = valuePtr;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_AVC_SetLambdaModFeatureOn", 12648, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_AVC_SetLambdaModFeatureOn", 12648, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetLambdaModFeatureOn", 12639, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetLambdaModFeatureOn", 12639, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetLambdaModFeatureOn", 12629, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetLambdaModFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetLambdaModFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetLambdaModFeatureOn(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_AVC_GetLambdaModFeatureOn", 12694, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_AVC_GetLambdaModFeatureOn", 12694, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetLambdaModFeatureOn", 12684, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetLambdaModFeatureOn", 12684);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetLambdaModFeatureOn", 12684);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetLambdaModFeatureOff(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[4484] = valuePtr;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_AVC_SetLambdaModFeatureOff", 12746, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_AVC_SetLambdaModFeatureOff", 12746, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetLambdaModFeatureOff", 12737, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetLambdaModFeatureOff", 12737, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetLambdaModFeatureOff", 12727, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetLambdaModFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetLambdaModFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetLambdaModFeatureOff(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_AVC_GetLambdaModFeatureOff", 12792, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_AVC_GetLambdaModFeatureOff", 12792, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetLambdaModFeatureOff", 12782, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetLambdaModFeatureOff", 12782);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetLambdaModFeatureOff", 12782);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetEnableLambdaMod(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetEnableLambdaMod", 12843, "iEnableLambdaMod >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetEnableLambdaMod", 12843, "iEnableLambdaMod >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4485) = valuePtr;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetEnableLambdaMod", 12834, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetEnableLambdaMod", 12834, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetEnableLambdaMod", 12824, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetEnableLambdaMod");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetEnableLambdaMod");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetEnableLambdaMod(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_GetEnableLambdaMod", 12887, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_AVC_GetEnableLambdaMod", 12887);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetEnableLambdaMod", 12887);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetModeDecFeatureOn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[4486] = valuePtr;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_AVC_SetModeDecFeatureOn", 12944, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_AVC_SetModeDecFeatureOn", 12944, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetModeDecFeatureOn", 12935, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetModeDecFeatureOn", 12935, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetModeDecFeatureOn", 12925, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetModeDecFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetModeDecFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetModeDecFeatureOn(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_AVC_GetModeDecFeatureOn", 12990, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_AVC_GetModeDecFeatureOn", 12990, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetModeDecFeatureOn", 12980, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetModeDecFeatureOn", 12980);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetModeDecFeatureOn", 12980);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetModeDecFeatureOff(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[4487] = valuePtr;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_AVC_SetModeDecFeatureOff", 13042, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *(a1 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_AVC_SetModeDecFeatureOff", 13042, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetModeDecFeatureOff", 13033, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetModeDecFeatureOff", 13033, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetModeDecFeatureOff", 13023, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetModeDecFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetModeDecFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetModeDecFeatureOff(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_AVC_GetModeDecFeatureOff", 13088, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_AVC_GetModeDecFeatureOff", 13088, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetModeDecFeatureOff", 13078, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetModeDecFeatureOff", 13078);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetModeDecFeatureOff", 13078);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetUseReferenceCompressedBuffers(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4488] = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetUseReferenceCompressedBuffers", 13131, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetUseReferenceCompressedBuffers", 13131, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetUseReferenceCompressedBuffers", 13121, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_AVC_SetUseReferenceCompressedBuffers");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetUseReferenceCompressedBuffers");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetUseReferenceCompressedBuffers(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_GetUseReferenceCompressedBuffers", 13168, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_GetUseReferenceCompressedBuffers", 13168);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetUseReferenceCompressedBuffers", 13168);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetSEIFeatureOn(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[2245] = valuePtr;
        a1[137] |= v9;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_AVC_SetSEIFeatureOn", 13224, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_AVC_SetSEIFeatureOn", 13224, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetSEIFeatureOn", 13215, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetSEIFeatureOn", 13215, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetSEIFeatureOn", 13205, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetSEIFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetSEIFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetSEIFeatureOn(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v22, 30, v23, "AVE_Prop_AVC_GetSEIFeatureOn", 13270, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v22, 30, v23, "AVE_Prop_AVC_GetSEIFeatureOn", 13270, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetSEIFeatureOn", 13260, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetSEIFeatureOn", 13260);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetSEIFeatureOn", 13260);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetSEIFeatureOff(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[2246] = valuePtr;
        a1[137] &= ~v9;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_AVC_SetSEIFeatureOff", 13321, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_AVC_SetSEIFeatureOff", 13321, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetSEIFeatureOff", 13312, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetSEIFeatureOff", 13312, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetSEIFeatureOff", 13302, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetSEIFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetSEIFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetSEIFeatureOff(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v22, 30, v23, "AVE_Prop_AVC_GetSEIFeatureOff", 13367, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v22, 30, v23, "AVE_Prop_AVC_GetSEIFeatureOff", 13367, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetSEIFeatureOff", 13357, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetSEIFeatureOff", 13357);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetSEIFeatureOff", 13357);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetDebugMetadataSEI(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      a1[4499] = v10;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_AVC_SetDebugMetadataSEI", 13410, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          v27 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_AVC_SetDebugMetadataSEI", 13410, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_SetDebugMetadataSEI", 13400, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v28, "AVE_Prop_AVC_SetDebugMetadataSEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_SetDebugMetadataSEI");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetDebugMetadataSEI(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_GetDebugMetadataSEI", 13455, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_GetDebugMetadataSEI", 13455);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetDebugMetadataSEI", 13455);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetVUIFeatureOn(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[2247] = valuePtr;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_AVC_SetVUIFeatureOn", 13512, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_AVC_SetVUIFeatureOn", 13512, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetVUIFeatureOn", 13503, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetVUIFeatureOn", 13503, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetVUIFeatureOn", 13493, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetVUIFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetVUIFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetVUIFeatureOn(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v22, 30, v23, "AVE_Prop_AVC_GetVUIFeatureOn", 13558, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v22, 30, v23, "AVE_Prop_AVC_GetVUIFeatureOn", 13558, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetVUIFeatureOn", 13548, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetVUIFeatureOn", 13548);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetVUIFeatureOn", 13548);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetVUIFeatureOff(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
        a1[2248] = valuePtr;
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
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_AVC_SetVUIFeatureOff", 13609, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_AVC_SetVUIFeatureOff", 13609, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetVUIFeatureOff", 13600, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetVUIFeatureOff", 13600, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetVUIFeatureOff", 13590, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetVUIFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetVUIFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetVUIFeatureOff(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v22, 30, v23, "AVE_Prop_AVC_GetVUIFeatureOff", 13655, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v22, 30, v23, "AVE_Prop_AVC_GetVUIFeatureOff", 13655, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetVUIFeatureOff", 13645, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetVUIFeatureOff", 13645);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetVUIFeatureOff", 13645);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetChromaQpOffset(void *a1, const char **a2, const __CFString *a3, const void *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v24 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v25 = a1[7];
        v26 = CFGetTypeID(a4);
        if (v24)
        {
          v68 = v25;
          v19 = 13701;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetChromaQpOffset", 13701, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v68, a2, a3, a4, v26);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          v29 = a1[7];
          CFGetTypeID(a4);
          v30 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_19:
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v27, 30, v28, "AVE_Prop_AVC_SetChromaQpOffset", v19, v30);
          return 4294965293;
        }

        v45 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
        v46 = 13701;
        goto LABEL_34;
      }

      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    if (Count > 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a4, 0);
      v11 = ValueAtIndex;
      if (Count == 1)
      {
        if (ValueAtIndex)
        {
          v12 = CFNumberGetTypeID();
          v13 = v11;
          if (v12 != CFGetTypeID(v11))
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v14 = AVE_Log_CheckConsole(0x1Eu);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              v17 = a1[7];
              v18 = CFGetTypeID(a4);
              if (v14)
              {
                v67 = v17;
                v19 = 13745;
                printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetChromaQpOffset", 13745, "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)", a1, v67, a2, a3, a4, v18);
LABEL_45:
                v27 = AVE_GetCurrTime();
                v28 = AVE_Log_GetLevelStr(4);
                v55 = a1[7];
                CFGetTypeID(a4);
                v30 = "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)";
                goto LABEL_19;
              }

              v45 = "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)";
              v46 = 13745;
              goto LABEL_34;
            }

            return 4294965293;
          }

          goto LABEL_30;
        }

        if (!AVE_Log_CheckLevel(0x1Eu, 4))
        {
          return 4294965293;
        }

        v47 = AVE_Log_CheckConsole(0x1Eu);
        v48 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(4);
        if (v47)
        {
          v50 = 13741;
          printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v48, 30, v49, "AVE_Prop_AVC_SetChromaQpOffset", 13741, "pCbQpOff != __null", a1, a1[7], a2, a3, a4);
LABEL_52:
          v57 = AVE_GetCurrTime();
          v58 = AVE_Log_GetLevelStr(4);
          v59 = a1[7];
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v57, 30, v58, "AVE_Prop_AVC_SetChromaQpOffset", v50);
          return 4294965293;
        }

        v71 = a1[7];
        v64 = 13741;
      }

      else if (ValueAtIndex)
      {
        v36 = CFNumberGetTypeID();
        if (v36 != CFGetTypeID(v11))
        {
          if (!AVE_Log_CheckLevel(0x1Eu, 4))
          {
            return 4294965293;
          }

          v52 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v53 = a1[7];
          v54 = CFGetTypeID(a4);
          if (v52)
          {
            v69 = v53;
            v19 = 13723;
            printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetChromaQpOffset", 13723, "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)", a1, v69, a2, a3, a4, v54);
            goto LABEL_45;
          }

          v45 = "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)";
          v46 = 13723;
LABEL_34:
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetChromaQpOffset", v46, v45);
          return 4294965293;
        }

        v37 = CFArrayGetValueAtIndex(a4, 1);
        if (v37)
        {
          v13 = v37;
          v38 = CFNumberGetTypeID();
          if (v38 != CFGetTypeID(v13))
          {
            if (!AVE_Log_CheckLevel(0x1Eu, 4))
            {
              return 4294965293;
            }

            v60 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v61 = a1[7];
            v62 = CFGetTypeID(a4);
            if (v60)
            {
              v70 = v61;
              v19 = 13733;
              printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetChromaQpOffset", 13733, "CFNumberGetTypeID() == CFGetTypeID(pCrQpOff)", a1, v70, a2, a3, a4, v62);
              v27 = AVE_GetCurrTime();
              v28 = AVE_Log_GetLevelStr(4);
              v63 = a1[7];
              CFGetTypeID(a4);
              v30 = "CFNumberGetTypeID() == CFGetTypeID(pCrQpOff)";
              goto LABEL_19;
            }

            v45 = "CFNumberGetTypeID() == CFGetTypeID(pCrQpOff)";
            v46 = 13733;
            goto LABEL_34;
          }

LABEL_30:
          CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr + 4);
          HIDWORD(valuePtr) = 0;
          CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
          LODWORD(valuePtr) = 0;
          *(a1 + 4498) = Count;
          *(a1 + 3443) = HIDWORD(valuePtr);
          *(a1 + 3453) = 0;
          v39 = AVE_Log_CheckLevel(0x1Eu, 7);
          result = 0;
          if (v39)
          {
            v40 = AVE_Log_CheckConsole(0x1Eu);
            v41 = AVE_GetCurrTime();
            v42 = AVE_Log_GetLevelStr(7);
            v43 = *a2;
            if (v40)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %ld\n", v41, 30, v42, a1, a1[7], *a2, Count);
              v41 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v44 = a1[7];
            }

            v66 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %ld", v41);
            return 0;
          }

          return result;
        }

        if (!AVE_Log_CheckLevel(0x1Eu, 4))
        {
          return 4294965293;
        }

        v56 = AVE_Log_CheckConsole(0x1Eu);
        v48 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(4);
        if (v56)
        {
          v50 = 13729;
          printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v48, 30, v49, "AVE_Prop_AVC_SetChromaQpOffset", 13729, "pCrQpOff != __null", a1, a1[7], a2, a3, a4);
          goto LABEL_52;
        }

        v73 = a1[7];
        v64 = 13729;
      }

      else
      {
        if (!AVE_Log_CheckLevel(0x1Eu, 4))
        {
          return 4294965293;
        }

        v51 = AVE_Log_CheckConsole(0x1Eu);
        v48 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(4);
        if (v51)
        {
          v50 = 13719;
          printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v48, 30, v49, "AVE_Prop_AVC_SetChromaQpOffset", 13719, "pCbQpOff != __null", a1, a1[7], a2, a3, a4);
          goto LABEL_52;
        }

        v72 = a1[7];
        v64 = 13719;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v48, 30, v49, "AVE_Prop_AVC_SetChromaQpOffset", v64);
      return 4294965293;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v32 = AVE_Log_CheckConsole(0x1Eu);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld\n", v33, 30, v34, "AVE_Prop_AVC_SetChromaQpOffset", 13710, "cQpOffsetCount > 0", a1, a1[7], a2, a3, a4, Count);
        v33 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        v35 = a1[7];
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld", v33, 30, v34, "AVE_Prop_AVC_SetChromaQpOffset", 13710, "cQpOffsetCount > 0");
    }

    return 4294965292;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v21, 30, v22, "AVE_Prop_AVC_SetChromaQpOffset", 13691, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v23 = AVE_GetCurrTime();
        v65 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v23, 30, v65, "AVE_Prop_AVC_SetChromaQpOffset");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_SetChromaQpOffset");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_GetChromaQpOffset(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, a1 + 13772);
      if (v12)
      {
        v13 = v12;
        v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, a1 + 13812);
        if (v14)
        {
          v15 = v14;
          CFArrayAppendValue(v11, v13);
          CFArrayAppendValue(v11, v15);
          *a5 = v11;
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v16 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(7);
            v19 = *a2;
            if (v16)
            {
              printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v11);
              CurrTime = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v20 = a1[7];
            }

            v38 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", CurrTime);
          }

          CFRelease(v13);
          CFRelease(v15);
          return 0;
        }

        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v32 = AVE_Log_CheckConsole(0x1Eu);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", v33, 30, v34, "AVE_Prop_AVC_GetChromaQpOffset", 13826, "pCrQpOff != __null", a1, a1[7], a2, allocator, a4, a5, *(a1 + 3453));
            v33 = AVE_GetCurrTime();
            v34 = AVE_Log_GetLevelStr(4);
            v48 = *(a1 + 3453);
            v42 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d", v33, 30, v34, "AVE_Prop_AVC_GetChromaQpOffset", 13826, "pCrQpOff != __null", a1);
        }

        CFRelease(v13);
        return 4294966293;
      }

      if (!AVE_Log_CheckLevel(0x1Eu, 4))
      {
        return 4294966293;
      }

      v30 = AVE_Log_CheckConsole(0x1Eu);
      v26 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", v26, 30, v31, "AVE_Prop_AVC_GetChromaQpOffset", 13819, "pCbQpOff != __null", a1, a1[7], a2, allocator, a4, a5, *(a1 + 3443));
        v26 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
      }

      v46 = a5;
      v47 = *(a1 + 3443);
      v44 = allocator;
      v45 = a4;
      v41 = a1[7];
      v43 = a2;
      v39 = "pCbQpOff != __null";
      v40 = a1;
      v37 = 13819;
      v36 = v31;
      v28 = "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d";
    }

    else
    {
      if (!AVE_Log_CheckLevel(0x1Eu, 4))
      {
        return 4294966293;
      }

      v25 = AVE_Log_CheckConsole(0x1Eu);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p\n", v26, 30, v27, "AVE_Prop_AVC_GetChromaQpOffset", 13812, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, 0);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
      }

      v46 = a5;
      v47 = 0;
      v44 = allocator;
      v45 = a4;
      v41 = a1[7];
      v43 = a2;
      v39 = "pArray != __null";
      v40 = a1;
      v37 = 13812;
      v36 = v27;
      v28 = "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p";
    }

    syslog(3, v28, v26, 30, v36, "AVE_Prop_AVC_GetChromaQpOffset", v37, v39, v40, v41, v43, v44, v45, v46, v47);
    return 4294966293;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v21 = AVE_Log_CheckConsole(0x1Eu);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v22, 30, v23, "AVE_Prop_AVC_GetChromaQpOffset", 13804, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
      v24 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v24, 30, v35, "AVE_Prop_AVC_GetChromaQpOffset", 13804);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_AVC_GetChromaQpOffset", 13804);
    }
  }

  return 4294966295;
}

uint64_t AVE_Prop_AVC_SetUseHWTileOffsets(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4500] = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetUseHWTileOffsets", 13884, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetUseHWTileOffsets", 13884, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetUseHWTileOffsets", 13874, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_AVC_SetUseHWTileOffsets");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetUseHWTileOffsets");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetUseHWTileOffsets(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_GetUseHWTileOffsets", 13921, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_GetUseHWTileOffsets", 13921);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetUseHWTileOffsets", 13921);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetThroughputRateMode(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetThroughputRateMode", 13980, "iThroughputRateMode > AVE_ThroughputMode_Invalid && iThroughputRateMode < AVE_ThroughputMode_Max", a1, a1[7], a2, a3, a4, valuePtr, 0, 8);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v28 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetThroughputRateMode", 13980, "iThroughputRateMode > AVE_ThroughputMode_Invalid && iThroughputRateMode < AVE_ThroughputMode_Max", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4501) = valuePtr;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_AVC_SetThroughputRateMode", 13969, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_AVC_SetThroughputRateMode", 13969, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_SetThroughputRateMode", 13959, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v18 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v29, "AVE_Prop_AVC_SetThroughputRateMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_AVC_SetThroughputRateMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetThroughputRateMode(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[4501];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetThroughputRateMode", 14027, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetThroughputRateMode", 14027, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetThroughputRateMode", 14016, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetThroughputRateMode", 14016);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetThroughputRateMode", 14016);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetEdgeReplication(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetEdgeReplication", 14080, "iEdgeReplication > AVE_EdgeReplication_UNINIT && iEdgeReplication <= AVE_EdgeReplication_ALL_HW", a1, a1[7], a2, a3, a4, valuePtr, -1, 4);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetEdgeReplication", 14080, "iEdgeReplication > AVE_EdgeReplication_UNINIT && iEdgeReplication <= AVE_EdgeReplication_ALL_HW", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4502) = valuePtr;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetEdgeReplication", 14069, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetEdgeReplication", 14069, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetEdgeReplication", 14059, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetEdgeReplication");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetEdgeReplication");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetEdgeReplication(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetEdgeReplication", 14143, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetEdgeReplication", 14143, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetEdgeReplication", 14133, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetEdgeReplication", 14133);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetEdgeReplication", 14133);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetDeblockingFiltering(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetDeblockingFiltering", 14196, "iDeblockingFiltering >= 0 && iDeblockingFiltering <= 2", a1, a1[7], a2, a3, a4, valuePtr, 0, 2);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetDeblockingFiltering", 14196, "iDeblockingFiltering >= 0 && iDeblockingFiltering <= 2", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4503) = valuePtr;
        *(a1 + 3549) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetDeblockingFiltering", 14186, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetDeblockingFiltering", 14186, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetDeblockingFiltering", 14176, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetDeblockingFiltering");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetDeblockingFiltering");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetDeblockingFiltering(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[3549];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetDeblockingFiltering", 14242, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetDeblockingFiltering", 14242, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetDeblockingFiltering", 14232, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetDeblockingFiltering", 14232);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetDeblockingFiltering", 14232);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetLRMEFSMVCostMode(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetLRMEFSMVCostMode", 14294, "iMode >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetLRMEFSMVCostMode", 14294, "iMode >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4504) = valuePtr;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetLRMEFSMVCostMode", 14285, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetLRMEFSMVCostMode", 14285, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetLRMEFSMVCostMode", 14275, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetLRMEFSMVCostMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetLRMEFSMVCostMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetLRMEFSMVCostMode(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetLRMEFSMVCostMode", 14340, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetLRMEFSMVCostMode", 14340, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetLRMEFSMVCostMode", 14330, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetLRMEFSMVCostMode", 14330);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetLRMEFSMVCostMode", 14330);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetLRMEFSLambdaLinear(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetLRMEFSLambdaLinear", 14392, "iLinear >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetLRMEFSLambdaLinear", 14392, "iLinear >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4505) = valuePtr;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetLRMEFSLambdaLinear", 14383, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetLRMEFSLambdaLinear", 14383, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetLRMEFSLambdaLinear", 14373, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetLRMEFSLambdaLinear");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetLRMEFSLambdaLinear");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetLRMEFSLambdaLinear(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetLRMEFSLambdaLinear", 14438, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetLRMEFSLambdaLinear", 14438, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetLRMEFSLambdaLinear", 14428, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetLRMEFSLambdaLinear", 14428);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetLRMEFSLambdaLinear", 14428);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetLrmePipeSyncMode(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      a1[4506] = Value;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetLrmePipeSyncMode", 14481, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetLrmePipeSyncMode", 14481, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetLrmePipeSyncMode", 14471, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_AVC_SetLrmePipeSyncMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetLrmePipeSyncMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetLrmePipeSyncMode(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_GetLrmePipeSyncMode", 14518, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_GetLrmePipeSyncMode", 14518);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetLrmePipeSyncMode", 14518);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetlrmeRCPassNum(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetlrmeRCPassNum", 14574, "ilrmeRCPassNum >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetlrmeRCPassNum", 14574, "ilrmeRCPassNum >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4507) = valuePtr;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetlrmeRCPassNum", 14565, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetlrmeRCPassNum", 14565, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetlrmeRCPassNum", 14555, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetlrmeRCPassNum");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetlrmeRCPassNum");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetlrmeRCPassNum(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetlrmeRCPassNum", 14620, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetlrmeRCPassNum", 14620, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetlrmeRCPassNum", 14610, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetlrmeRCPassNum", 14610);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetlrmeRCPassNum", 14610);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetUseAsyncFWScheduling(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4508] = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetUseAsyncFWScheduling", 14663, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetUseAsyncFWScheduling", 14663, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetUseAsyncFWScheduling", 14653, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_AVC_SetUseAsyncFWScheduling");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetUseAsyncFWScheduling");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetUseAsyncFWScheduling(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_GetUseAsyncFWScheduling", 14700, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_GetUseAsyncFWScheduling", 14700);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetUseAsyncFWScheduling", 14700);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetEnableAttachMVStats(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetEnableAttachMVStats", 14757, "iEnableAttachMVStats >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetEnableAttachMVStats", 14757, "iEnableAttachMVStats >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4515) = valuePtr;
        *(a1 + 2694) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetEnableAttachMVStats", 14748, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetEnableAttachMVStats", 14748, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetEnableAttachMVStats", 14738, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetEnableAttachMVStats");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetEnableAttachMVStats");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetEnableAttachMVStats(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2694];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetEnableAttachMVStats", 14803, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetEnableAttachMVStats", 14803, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetEnableAttachMVStats", 14793, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetEnableAttachMVStats", 14793);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetEnableAttachMVStats", 14793);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetEnableMultiSliceStats(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4509] = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetEnableMultiSliceStats", 14846, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetEnableMultiSliceStats", 14846, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetEnableMultiSliceStats", 14836, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_AVC_SetEnableMultiSliceStats");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetEnableMultiSliceStats");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetEnableMultiSliceStats(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_GetEnableMultiSliceStats", 14883, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_GetEnableMultiSliceStats", 14883);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetEnableMultiSliceStats", 14883);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetMCTFEdgeCount(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMCTFEdgeCount", 14939, "iEdgeCnt >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMCTFEdgeCount", 14939, "iEdgeCnt >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4510) = valuePtr;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetMCTFEdgeCount", 14930, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetMCTFEdgeCount", 14930, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetMCTFEdgeCount", 14920, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetMCTFEdgeCount");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetMCTFEdgeCount");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetMCTFEdgeCount(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetMCTFEdgeCount", 14985, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetMCTFEdgeCount", 14985, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetMCTFEdgeCount", 14975, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetMCTFEdgeCount", 14975);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetMCTFEdgeCount", 14975);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetMCTFEdgeThresh(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMCTFEdgeThresh", 15036, "iEdgeThresh >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMCTFEdgeThresh", 15036, "iEdgeThresh >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4511) = valuePtr;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetMCTFEdgeThresh", 15027, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetMCTFEdgeThresh", 15027, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetMCTFEdgeThresh", 15017, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetMCTFEdgeThresh");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetMCTFEdgeThresh");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetMCTFEdgeThresh(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetMCTFEdgeThresh", 15082, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetMCTFEdgeThresh", 15082, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetMCTFEdgeThresh", 15072, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetMCTFEdgeThresh", 15072);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetMCTFEdgeThresh", 15072);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetMCTFStrengthLevel(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 0x19)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMCTFStrengthLevel", 15136, "0 <= iMCTFStrengthLevel && iMCTFStrengthLevel < 25", a1, a1[7], a2, a3, a4, valuePtr, 0, 25);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMCTFStrengthLevel", 15136, "0 <= iMCTFStrengthLevel && iMCTFStrengthLevel < 25", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4512) = valuePtr;
        *(a1 + 2636) = v9;
        a1[181] &= ~0x2000000uLL;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetMCTFStrengthLevel", 15125, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetMCTFStrengthLevel", 15125, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetMCTFStrengthLevel", 15115, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetMCTFStrengthLevel");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetMCTFStrengthLevel");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetMCTFStrengthLevel(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2636];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetMCTFStrengthLevel", 15184, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetMCTFStrengthLevel", 15184, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetMCTFStrengthLevel", 15174, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetMCTFStrengthLevel", 15174);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetMCTFStrengthLevel", 15174);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetUseElementaryStreamOutput(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4513] = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetUseElementaryStreamOutput", 15227, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 7);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetUseElementaryStreamOutput", 15227, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetUseElementaryStreamOutput", 15217, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_AVC_SetUseElementaryStreamOutput");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetUseElementaryStreamOutput");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetUseElementaryStreamOutput(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_GetUseElementaryStreamOutput", 15264, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_GetUseElementaryStreamOutput", 15264);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetUseElementaryStreamOutput", 15264);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetCmdTimeOutMode(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetCmdTimeOutMode", 15320, "iCmdTimeOutMode >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetCmdTimeOutMode", 15320, "iCmdTimeOutMode >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4514) = valuePtr;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetCmdTimeOutMode", 15311, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          v25 = a1[7];
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetCmdTimeOutMode", 15311, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetCmdTimeOutMode", 15301, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetCmdTimeOutMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetCmdTimeOutMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetCmdTimeOutMode(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetCmdTimeOutMode", 15366, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetCmdTimeOutMode", 15366, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetCmdTimeOutMode", 15356, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetCmdTimeOutMode", 15356);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetCmdTimeOutMode", 15356);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_MakeDict(uint64_t a1, uint64_t a2, uint64_t a3, __CFDictionary *a4)
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_MakeDict", 15652, "AVE_DevID_None < devID && devID < AVE_DevID_Max && pDict != __null", v7, v6, a3, a4);
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
    Dict = AVE_Prop_MakeDict(&gs_saAVE_Prop_AVC, 152, a1, a2, a3, a4);
    v14 = Dict;
    if (Dict && AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x1Eu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d\n", v16, 30, v17, "AVE_Prop_AVC_MakeDict", 15660, "ret == 0", v7, v6, a3, a4, v14);
        v18 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d", v18, 30, v21, "AVE_Prop_AVC_MakeDict");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d", v16, 30, v17, "AVE_Prop_AVC_MakeDict");
      }
    }
  }

  return v14;
}

uint64_t AVE_Prop_AVC_SetProperty(uint64_t a1, __CFString *a2, const void *a3)
{
  if (*(a1 + 32) == 2)
  {
    v6 = 512;
  }

  else
  {
    v6 = 256;
  }

  v7 = AVE_Prop_SetProperty(&gs_saAVE_Prop_AVC, 152, *(a1 + 68), v6, a1, *(a1 + 56), a2, a3);
  if (v7 && AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v8 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetProperty", 15694, "ret == 0", a1, *(a1 + 56), v6, *(a1 + 68), a2, a3, v7);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v11 = *(a1 + 56);
      v13 = *(a1 + 68);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetProperty", 15694, "ret == 0");
  }

  return v7;
}

uint64_t AVE_Prop_AVC_GetProperty(uint64_t a1, const void *a2, __CFString *a3, const void *a4)
{
  if (*(a1 + 32) == 2)
  {
    v8 = 512;
  }

  else
  {
    v8 = 256;
  }

  Property = AVE_Prop_GetProperty(&gs_saAVE_Prop_AVC, 152, *(a1 + 68), v8, a1, *(a1 + 56), a2, a3, a4);
  if (Property && AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v10 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetProperty", 15729, "ret == 0", a1, *(a1 + 56), v8, *(a1 + 68), a2, a3, a4, Property);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v15 = *(a1 + 68);
      v14 = *(a1 + 56);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetProperty", 15729, "ret == 0", a1);
  }

  return Property;
}

uint64_t AVE_Prop_AVC_CreateSupportedPresetDictionary(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v2 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_CreateSupportedPresetDictionary", a1);
      v5 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 30, v28, "AVE_Prop_AVC_CreateSupportedPresetDictionary", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 30, LevelStr, "AVE_Prop_AVC_CreateSupportedPresetDictionary", a1);
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
      PresetDict = AVE_Enc_CreatePresetDict(a1, *(a1 + 56), *(a1 + 68), 0, &gs_saAVE_Prop_AVC, 152, v6, *(a1 + 1440), *(a1 + 1444), Mutable);
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
            printf("%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld 0x%x %d %d\n", v11, 30, v12, "AVE_Prop_AVC_CreateSupportedPresetDictionary", 15774, "ret == 0", a1, *(a1 + 56), v6, *(a1 + 68), PresetDict);
            v11 = AVE_GetCurrTime();
            v12 = AVE_Log_GetLevelStr(4);
            v14 = *(a1 + 56);
          }

          v30 = *(a1 + 68);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld 0x%x %d %d", v11, 30, v12, "AVE_Prop_AVC_CreateSupportedPresetDictionary");
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d\n", v19, 30, v20, "AVE_Prop_AVC_CreateSupportedPresetDictionary", 15765, "pDict != __null", a1, *(a1 + 56), v6, *(a1 + 68), 0);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          v22 = *(a1 + 56);
        }

        v31 = *(a1 + 68);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d", v19, 30, v20, "AVE_Prop_AVC_CreateSupportedPresetDictionary");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v16, 30, v17, "AVE_Prop_AVC_CreateSupportedPresetDictionary", 15750, "pINS != __null", 0);
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
      printf("%lld %d AVE %s: %s Exit %p %d\n", v24, 30, v25, "AVE_Prop_AVC_CreateSupportedPresetDictionary", a1, PresetDict);
      v26 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v26, 30, v29, "AVE_Prop_AVC_CreateSupportedPresetDictionary", a1, PresetDict);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v24, 30, v25, "AVE_Prop_AVC_CreateSupportedPresetDictionary", a1, PresetDict);
    }
  }

  return PresetDict;
}

double _GLOBAL__sub_I_AVE_Prop_AVC_cpp()
{
  gsc_saAVE_AVC_ProfileLevel = *MEMORY[0x29EDBCFB0];
  qword_2A189B3A0 = 0x500000002;
  qword_2A189B3A8 = *MEMORY[0x29EDBCFB8];
  qword_2A189B3B0 = 0x900000002;
  qword_2A189B3B8 = *MEMORY[0x29EDBCFC0];
  qword_2A189B3C0 = 0xA00000002;
  qword_2A189B3C8 = *MEMORY[0x29EDBCFC8];
  qword_2A189B3D0 = 0xB00000002;
  qword_2A189B3D8 = *MEMORY[0x29EDBCFD0];
  qword_2A189B3E0 = 0xC00000002;
  qword_2A189B3E8 = *MEMORY[0x29EDBCFD8];
  qword_2A189B3F0 = 0xD00000002;
  qword_2A189B3F8 = *MEMORY[0x29EDBCFE0];
  qword_2A189B400 = 0xE00000002;
  qword_2A189B408 = *MEMORY[0x29EDBCFE8];
  qword_2A189B410 = 0xF00000002;
  qword_2A189B418 = *MEMORY[0x29EDBCFF0];
  qword_2A189B420 = 0x1000000002;
  qword_2A189B428 = *MEMORY[0x29EDBCFF8];
  qword_2A189B430 = 0x1100000002;
  qword_2A189B438 = *MEMORY[0x29EDBD078];
  qword_2A189B440 = 0x900000004;
  qword_2A189B448 = *MEMORY[0x29EDBD080];
  qword_2A189B450 = 0xA00000004;
  qword_2A189B458 = *MEMORY[0x29EDBD088];
  qword_2A189B460 = 0xB00000004;
  qword_2A189B468 = *MEMORY[0x29EDBD090];
  qword_2A189B470 = 0xC00000004;
  qword_2A189B478 = *MEMORY[0x29EDBD098];
  qword_2A189B480 = 0xD00000004;
  qword_2A189B488 = *MEMORY[0x29EDBD0A0];
  qword_2A189B490 = 0xE00000004;
  qword_2A189B498 = *MEMORY[0x29EDBD0A8];
  qword_2A189B4A0 = 0xF00000004;
  qword_2A189B4A8 = *MEMORY[0x29EDBD0B0];
  qword_2A189B4B0 = 0x1000000004;
  qword_2A189B4B8 = *MEMORY[0x29EDBD0B8];
  qword_2A189B4C0 = 0x1100000004;
  qword_2A189B4C8 = *MEMORY[0x29EDBD028];
  qword_2A189B4D0 = 0x900000006;
  qword_2A189B4D8 = *MEMORY[0x29EDBD030];
  qword_2A189B4E0 = 0xA00000006;
  qword_2A189B4E8 = *MEMORY[0x29EDBD038];
  qword_2A189B4F0 = 0xB00000006;
  qword_2A189B4F8 = *MEMORY[0x29EDBD040];
  qword_2A189B500 = 0xC00000006;
  qword_2A189B508 = *MEMORY[0x29EDBD048];
  qword_2A189B510 = 0xD00000006;
  qword_2A189B518 = *MEMORY[0x29EDBD050];
  qword_2A189B520 = 0xE00000006;
  qword_2A189B528 = *MEMORY[0x29EDBD058];
  qword_2A189B530 = 0xF00000006;
  qword_2A189B538 = *MEMORY[0x29EDBD060];
  qword_2A189B540 = 0x1000000006;
  qword_2A189B548 = *MEMORY[0x29EDBD068];
  qword_2A189B550 = 0x1100000006;
  qword_2A189B558 = *MEMORY[0x29EDBD000];
  qword_2A189B560 = 2;
  qword_2A189B568 = *MEMORY[0x29EDBD008];
  qword_2A189B570 = 2;
  qword_2A189B578 = *MEMORY[0x29EDBD0C0];
  qword_2A189B580 = 4;
  qword_2A189B588 = *MEMORY[0x29EDBD070];
  qword_2A189B590 = 6;
  qword_2A189B598 = *MEMORY[0x29EDBD010];
  qword_2A189B5A0 = 6;
  qword_2A189B5A8 = *MEMORY[0x29EDBD018];
  qword_2A189B5B0 = 8;
  qword_2A189B5B8 = *MEMORY[0x29EDBD020];
  *&result = 9;
  qword_2A189B5C0 = 9;
  return result;
}

uint64_t AVE_Plugin_AVC_CreateInstance(uint64_t a1, const void *a2, void *a3)
{
  v77 = *MEMORY[0x29EDCA608];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  *v69 = 0u;
  v70 = 0u;
  CurrTime = AVE_GetCurrTime();
  AVE_Log_Init();
  AVE_DW_Init();
  v7 = AVE_DW_Get();
  AVE_Log_Config(v7 + 552);
  v68 = a3;
  if (AVE_Log_CheckLevel(0xBu, 0))
  {
    v8 = AVE_Log_CheckConsole(0xBu);
    v9 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(0);
    if (v8)
    {
      printf("%lld %d AVE %s: Compiled %s in %s on %s %s\n", v9, 11, LevelStr, "905.5.3", "prod", "Oct 23 2025", "06:35:43");
      v9 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(0);
    }

    syslog(3, "%lld %d AVE %s: Compiled %s in %s on %s %s", v9);
  }

  TemporayPath = AVE_GetTemporayPath(v69, 128);
  if (TemporayPath >= 1 && AVE_Log_CheckLevel(0xBu, 0))
  {
    v12 = AVE_Log_CheckConsole(0xBu);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(0);
    if (v12)
    {
      printf("%lld %d AVE %s: Temporary Path: %s\n", v13, 11, v14, v69);
      v15 = AVE_GetCurrTime();
      v61 = AVE_Log_GetLevelStr(0);
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v15, 11, v61, v69);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v13, 11, v14, v69);
    }
  }

  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v16 = AVE_Log_CheckConsole(0xBu);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(6);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %lld\n", v17, 11, v18, "AVE_Plugin_AVC_CreateInstance", a1, a2, a3, 0);
      v17 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %lld", v17, 11);
  }

  if (!a3)
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v25 = AVE_Log_CheckConsole(0xBu);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p %p %lld %d\n", v26, 11, v27, "AVE_Plugin_AVC_CreateInstance", 1237, "instanceOut != __null", a1, a2, 0, 0, TemporayPath);
        v26 = AVE_GetCurrTime();
        v63 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v63 = v27;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p %p %lld %d", v26, 11, v63, "AVE_Plugin_AVC_CreateInstance", 1237);
    }

    goto LABEL_36;
  }

  if (a1 != 1635148593)
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v28 = AVE_Log_CheckConsole(0xBu);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | mismatched codec %d %p %p %lld %d\n", v29, 11, v30, "AVE_Plugin_AVC_CreateInstance", 1242, "codecType == kCMVideoCodecType_H264", a1, a2, a3, 0, TemporayPath);
        v31 = AVE_GetCurrTime();
        v64 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | mismatched codec %d %p %p %lld %d", v31, 11, v64, "AVE_Plugin_AVC_CreateInstance", 1242);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | mismatched codec %d %p %p %lld %d", v29, 11, v30, "AVE_Plugin_AVC_CreateInstance", 1242);
      }
    }

LABEL_36:
    v33 = 0;
    v40 = 0;
    v35 = 4294966295;
    goto LABEL_41;
  }

  kdebug_trace();
  *a3 = 0;
  VTVideoEncoderGetClassID();
  v19 = CMDerivedObjectCreate();
  if (v19)
  {
    v20 = v19;
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v21 = AVE_Log_CheckConsole(0xBu);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create AVC Object %d %p %p %lld %d\n", v22, 11, v23, "AVE_Plugin_AVC_CreateInstance", 1252, "res == noErr", 1635148593, a2, a3, 0, v20);
        v24 = AVE_GetCurrTime();
        v62 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create AVC Object %d %p %p %lld %d", v24, 11, v62, "AVE_Plugin_AVC_CreateInstance", 1252);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create AVC Object %d %p %p %lld %d", v22, 11, v23, "AVE_Plugin_AVC_CreateInstance", 1252);
      }
    }

    v35 = 4294966292;
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v33 = DerivedStorage;
      bzero(DerivedStorage, 0x46B0uLL);
      v34 = AVE_Mutex_Create();
      *v33 = v34;
      if (v34)
      {
        v35 = AVE_Session_AVC_Create(v33, 0);
        if (!v35)
        {
          v40 = v33[7];
          *a3 = 0;
          goto LABEL_40;
        }

        if (AVE_Log_CheckLevel(0xBu, 4))
        {
          v36 = AVE_Log_CheckConsole(0xBu);
          v37 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(4);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create AVC %d %p %p %lld %p %p 0x%llx %d\n", v37, 11, v38, "AVE_Plugin_AVC_CreateInstance", 1269, "ret == 0", 1635148593, a2, a3, 0, 0, v33, 0, v35);
            v39 = AVE_GetCurrTime();
            v65 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create AVC %d %p %p %lld %p %p 0x%llx %d", v39, 11, v65, "AVE_Plugin_AVC_CreateInstance", 1269, "ret == 0", 1635148593, a2);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create AVC %d %p %p %lld %p %p 0x%llx %d", v37, 11, v38, "AVE_Plugin_AVC_CreateInstance", 1269, "ret == 0", 1635148593, a2);
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0xBu, 4))
        {
          v57 = AVE_Log_CheckConsole(0xBu);
          v58 = AVE_GetCurrTime();
          v59 = AVE_Log_GetLevelStr(4);
          if (v57)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create mutex %d %p %p %lld %p %p %d\n", v58, 11, v59, "AVE_Plugin_AVC_CreateInstance", 1264, "pPI->pPIMutex != __null", 1635148593, a2, a3, 0, 0, v33, TemporayPath);
            v60 = AVE_GetCurrTime();
            v67 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %d %p %p %lld %p %p %d", v60, 11, v67, "AVE_Plugin_AVC_CreateInstance", 1264, "pPI->pPIMutex != __null", 1635148593);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %d %p %p %lld %p %p %d", v58, 11, v59, "AVE_Plugin_AVC_CreateInstance", 1264, "pPI->pPIMutex != __null", 1635148593);
          }
        }

        v35 = 4294966293;
      }

      if (*v33)
      {
        AVE_Mutex_Destroy(*v33);
        *v33 = 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v53 = AVE_Log_CheckConsole(0xBu);
        v54 = AVE_GetCurrTime();
        v55 = AVE_Log_GetLevelStr(4);
        if (v53)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC Object %d %p %p %lld %p %d\n", v54, 11, v55, "AVE_Plugin_AVC_CreateInstance", 1257, "pPI != __null", 1635148593, a2, a3, 0, 0, TemporayPath);
          v56 = AVE_GetCurrTime();
          v66 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC Object %d %p %p %lld %p %d", v56, 11, v66, "AVE_Plugin_AVC_CreateInstance", 1257, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC Object %d %p %p %lld %p %d", v54, 11, v55, "AVE_Plugin_AVC_CreateInstance", 1257, "pPI != __null");
        }
      }

      v35 = 4294966296;
    }
  }

  v40 = 0;
  v33 = 0;
LABEL_40:
  kdebug_trace();
LABEL_41:
  v41 = AVE_GetCurrTime() - CurrTime;
  if (v41 >= 50000)
  {
    v42 = 5;
  }

  else
  {
    v42 = 6;
  }

  v43 = AVE_RetCode2OSStatus(v35);
  if (v35)
  {
    v44 = 4;
  }

  else
  {
    v44 = v42;
  }

  if (AVE_Log_CheckLevel(0xBu, v44))
  {
    v45 = AVE_Log_CheckConsole(0xBu);
    v46 = AVE_GetCurrTime();
    v47 = AVE_Log_GetLevelStr(v44);
    if (v45)
    {
      v48 = a1;
      printf("%lld %d AVE %s: %s Exit %d %p %p %lld %p %p %lld %d %d\n", v46, 11, v47, "AVE_Plugin_AVC_CreateInstance", a1, a2, v68, v40, 0, v33, v41, v35, v43);
      v49 = AVE_GetCurrTime();
      v50 = AVE_Log_GetLevelStr(v44);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %lld %p %p %lld %d %d", v49, 11, v50, "AVE_Plugin_AVC_CreateInstance", v48, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %lld %p %p %lld %d %d", v46, 11, v47, "AVE_Plugin_AVC_CreateInstance", a1, a2);
    }
  }

  v51 = *MEMORY[0x29EDCA608];
  return v43;
}

uint64_t AVE_Plugin_AVC_SetCallback(const void *a1, _OWORD *a2)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v5 = AVE_Log_CheckConsole(0xBu);
    v6 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, LevelStr, "AVE_Plugin_AVC_SetCallback", a1, a2, 0);
      v6 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %lld", v6);
  }

  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = DerivedStorage;
    if (DerivedStorage)
    {
      AVE_Mutex_Lock(*DerivedStorage);
      v10 = v9[7];
      kdebug_trace();
      v11 = 0;
      v12 = a2[1];
      *(v9 + 8) = *a2;
      *(v9 + 9) = v12;
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v17 = AVE_Log_CheckConsole(0xBu);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_AVC_SetCallback", 1335, "pPI != __null", a1, a2, 0, 0);
          v20 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v20, 11, v31, "AVE_Plugin_AVC_SetCallback");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v18, 11, v19, "AVE_Plugin_AVC_SetCallback");
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    kdebug_trace();
    AVE_Mutex_Unlock(*v9);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v13 = AVE_Log_CheckConsole(0xBu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v14, 11, v15, "AVE_Plugin_AVC_SetCallback", 1330, "encoder != __null && pCallback != __null", a1, a2, 0, 0);
        v16 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v16, 11, v30, "AVE_Plugin_AVC_SetCallback");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v14, 11, v15, "AVE_Plugin_AVC_SetCallback");
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v21 = AVE_GetCurrTime() - CurrTime;
  if (v21 >= 50000)
  {
    v22 = 5;
  }

  else
  {
    v22 = 6;
  }

  v23 = AVE_RetCode2OSStatus(v11);
  if (v11)
  {
    v24 = 4;
  }

  else
  {
    v24 = v22;
  }

  if (AVE_Log_CheckLevel(0xBu, v24))
  {
    v25 = AVE_Log_CheckConsole(0xBu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(v24);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_AVC_SetCallback", a1, a2, v10, v21, v11, v23);
      v28 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(v24);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v26, 11, v27);
    }
  }

  return v23;
}

uint64_t AVE_Plugin_AVC_Invalidate(const void *a1)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v3 = AVE_Log_CheckConsole(0xBu);
    v4 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, LevelStr, "AVE_Plugin_AVC_Invalidate", a1, 0);
      v6 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v31, "AVE_Plugin_AVC_Invalidate", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, LevelStr, "AVE_Plugin_AVC_Invalidate", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      AVE_Mutex_Lock(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v10 = AVE_Session_AVC_Stop(v8);
      if (v10 && AVE_Log_CheckLevel(0xBu, 4))
      {
        v11 = AVE_Log_CheckConsole(0xBu);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to stop AVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_AVC_Invalidate", 55, "ret == 0", a1, v9, v8, v10);
          v14 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop AVC %p %lld %p %d", v14, 11, v32, "AVE_Plugin_AVC_Invalidate");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop AVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_AVC_Invalidate");
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v19 = AVE_Log_CheckConsole(0xBu);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_AVC_Invalidate", 44, "pPI != __null", a1, 0, 0);
          v22 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v22, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    AVE_Mutex_Unlock(*v8);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v15 = AVE_Log_CheckConsole(0xBu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_AVC_Invalidate", 39, "object != __null", 0, 0, 0);
        v18 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = AVE_GetCurrTime() - CurrTime;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 6;
  }

  v25 = AVE_RetCode2OSStatus(v10);
  if (v10)
  {
    v26 = 4;
  }

  else
  {
    v26 = v24;
  }

  if (AVE_Log_CheckLevel(0xBu, v26))
  {
    v27 = AVE_Log_CheckConsole(0xBu);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v26);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_AVC_Invalidate", a1, v9, v23, v10, v25);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v26);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v28, 11);
  }

  return v25;
}

void AVE_Plugin_AVC_Finalize(const void *a1)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v3 = AVE_Log_CheckConsole(0xBu);
    v4 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, LevelStr, "AVE_Plugin_AVC_Finalize", a1, 0);
      v6 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v30, "AVE_Plugin_AVC_Finalize", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, LevelStr, "AVE_Plugin_AVC_Finalize", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      AVE_Mutex_Lock(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v10 = AVE_Session_AVC_Destroy(v8);
      if (v10 && AVE_Log_CheckLevel(0xBu, 4))
      {
        v11 = AVE_Log_CheckConsole(0xBu);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to destroy AVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_AVC_Finalize", 110, "ret == 0", a1, v9, v8, v10);
          v14 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy AVC %p %lld %p %d", v14, 11, v31, "AVE_Plugin_AVC_Finalize");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy AVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_AVC_Finalize");
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v19 = AVE_Log_CheckConsole(0xBu);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_AVC_Finalize", 99, "pPI != __null", a1, 0, 0);
          v22 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v22, 11, v33);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    AVE_Mutex_Unlock(*v8);
    AVE_Mutex_Destroy(*v8);
    *v8 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v15 = AVE_Log_CheckConsole(0xBu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_AVC_Finalize", 94, "object != __null", 0, 0, 0);
        v18 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v32);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = AVE_GetCurrTime() - CurrTime;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 6;
  }

  v25 = AVE_RetCode2OSStatus(v10);
  if (v10)
  {
    v26 = 4;
  }

  else
  {
    v26 = v24;
  }

  if (AVE_Log_CheckLevel(0xBu, v26))
  {
    v27 = AVE_Log_CheckConsole(0xBu);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v26);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_AVC_Finalize", a1, v9, v23, v10, v25);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v26);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v28, 11);
  }
}

uint64_t AVE_Plugin_AVC_CopyProperty(const void *a1, __CFString *a2, const void *a3, const void *a4)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 7))
  {
    v9 = AVE_Log_CheckConsole(0xBu);
    v10 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %lld\n", v10, 11, LevelStr, "AVE_Plugin_AVC_CopyProperty", a1, a2, a3, a4, 0);
      v12 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %lld", v12, 11, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %lld", v10, 11, LevelStr);
    }
  }

  if (a1 && a2 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v14 = DerivedStorage;
    if (DerivedStorage)
    {
      AVE_Mutex_Lock(*DerivedStorage);
      v15 = v14[7];
      kdebug_trace();
      Property = AVE_Session_AVC_GetProperty(v14, a3, a2, a4);
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v21 = AVE_Log_CheckConsole(0xBu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %p %lld %d\n", v22, 11, v23, "AVE_Plugin_AVC_CopyProperty", 218, "pPI != __null", a1, a2, a3, a4, 0, 0);
          v24 = AVE_GetCurrTime();
          v36 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %p %lld %d", v24, 11, v36, "AVE_Plugin_AVC_CopyProperty", 218, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %p %lld %d", v22, 11, v23, "AVE_Plugin_AVC_CopyProperty", 218, "pPI != __null");
        }
      }

      v15 = 0;
      Property = 4294966296;
    }

    kdebug_trace();
    AVE_Mutex_Unlock(*v14);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v17 = AVE_Log_CheckConsole(0xBu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_AVC_CopyProperty", 213, "object != __null && propertyKey != __null && propertyValueOut != __null", a1, a2, a3, a4, 0, 0);
        v20 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d", v20, 11, v35, "AVE_Plugin_AVC_CopyProperty", 213, "object != __null && propertyKey != __null && propertyValueOut != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d", v18, 11, v19, "AVE_Plugin_AVC_CopyProperty", 213, "object != __null && propertyKey != __null && propertyValueOut != __null");
      }
    }

    v15 = 0;
    Property = 4294966295;
  }

  v25 = AVE_GetCurrTime() - CurrTime;
  if (v25 >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 7;
  }

  v27 = AVE_RetCode2OSStatus(Property);
  if (Property)
  {
    v26 = 4;
  }

  if (AVE_Log_CheckLevel(0xBu, v26))
  {
    v28 = a2;
    v29 = a3;
    v30 = AVE_Log_CheckConsole(0xBu);
    v38 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v26);
    if (v30)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d\n", v38, 11, v31, "AVE_Plugin_AVC_CopyProperty", a1, v28, v29, a4, v15, v25, Property, v27);
      v32 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(v26);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v32, 11, v37, "AVE_Plugin_AVC_CopyProperty", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v38, 11, v31, "AVE_Plugin_AVC_CopyProperty", a1);
    }
  }

  return v27;
}

uint64_t AVE_Plugin_AVC_SetProperty(const void *a1, __CFString *a2, const void *a3)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 7))
  {
    v7 = AVE_Log_CheckConsole(0xBu);
    v8 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld\n", v8, 11, LevelStr, "AVE_Plugin_AVC_SetProperty", a1, a2, a3, 0);
      v8 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld", v8, 11);
  }

  if (a1 && a2 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      AVE_Mutex_Lock(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      v13 = AVE_Session_AVC_SetProperty(v11, a2, a3);
      kdebug_trace();
      AVE_Mutex_Unlock(*v11);
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v18 = AVE_Log_CheckConsole(0xBu);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d\n", v19, 11, v20, "AVE_Plugin_AVC_SetProperty", 161, "pPI != __null", a1, a2, a3, 0, 0);
          v21 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d", v21, 11, v32, "AVE_Plugin_AVC_SetProperty", 161);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d", v19, 11, v20, "AVE_Plugin_AVC_SetProperty", 161);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v14 = AVE_Log_CheckConsole(0xBu);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d\n", v15, 11, v16, "AVE_Plugin_AVC_SetProperty", 156, "object != __null && propertyKey != __null && propertyValue != __null", a1, a2, a3, 0, 0);
        v17 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v17, 11, v31, "AVE_Plugin_AVC_SetProperty", 156);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v15, 11, v16, "AVE_Plugin_AVC_SetProperty", 156);
      }
    }

    v12 = 0;
    v13 = 4294966295;
  }

  v22 = AVE_GetCurrTime() - CurrTime;
  if (v22 >= 50000)
  {
    v23 = 5;
  }

  else
  {
    v23 = 7;
  }

  v24 = AVE_RetCode2OSStatus(v13);
  if (v13)
  {
    v23 = 4;
  }

  if (AVE_Log_CheckLevel(0xBu, v23))
  {
    v25 = AVE_Log_CheckConsole(0xBu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(v23);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_AVC_SetProperty", a1, a2, a3, v12, v22, v13, v24);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(v23);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v28, 11, v29, "AVE_Plugin_AVC_SetProperty");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v26, 11, v27, "AVE_Plugin_AVC_SetProperty");
    }
  }

  return v24;
}

uint64_t AVE_Plugin_AVC_StartSession(const void *a1, pthread_mutex_t *a2, unint64_t a3, pthread_mutex_t *a4)
{
  v5 = a3;
  v6 = HIDWORD(a3);
  v48 = 0;
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v8 = AVE_Log_CheckConsole(0xBu);
    v9 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %d %p %lld\n", v9, 11, LevelStr, "AVE_Plugin_AVC_StartSession", a1, a2, v5, v6, a4, 0);
      v11 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d %p %lld", v11, 11, v39);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d %p %lld", v9, 11, LevelStr);
    }
  }

  v45 = v6;
  if (a1 && a2 && v5 >= 1 && v6 > 0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v13 = DerivedStorage;
    if (DerivedStorage)
    {
      v48 = __PAIR64__(v6, v5);
      AVE_Mutex_Lock(*DerivedStorage);
      v14 = v13[7];
      kdebug_trace();
      v13[2] = a2;
      v13[14] = a4;
      *(v13 + 8) = 1;
      started = AVE_Session_AVC_StartSession(v13, &v48);
      if (!started)
      {
        v29 = v13[14];
        v24 = a4;
        if (v29)
        {
          CFRetain(v29);
        }

        v16 = 0;
        goto LABEL_30;
      }

      v16 = started;
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v17 = AVE_Log_CheckConsole(0xBu);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d\n", v18, 11, v19, "AVE_Plugin_AVC_StartSession", 301, "ret == 0", a1, a2, v5, v45, a4, v14, v13, v16);
          v44 = AVE_GetCurrTime();
          v40 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d", v44, 11, v40, "AVE_Plugin_AVC_StartSession", 301, "ret == 0", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d", v18, 11, v19, "AVE_Plugin_AVC_StartSession", 301, "ret == 0", a1);
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v25 = AVE_Log_CheckConsole(0xBu);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d\n", v26, 11, v27, "AVE_Plugin_AVC_StartSession", 281, "pPI != __null", a1, a2, v5, v6, a4, 0, 0);
          v28 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d", v28, 11, v42, "AVE_Plugin_AVC_StartSession", 281, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d", v26, 11, v27, "AVE_Plugin_AVC_StartSession", 281, "pPI != __null");
        }
      }

      v14 = 0;
      v16 = 4294966296;
    }

    v24 = a4;
    v13[2] = 0;
    v13[14] = 0;
LABEL_30:
    kdebug_trace();
    AVE_Mutex_Unlock(*v13);
    goto LABEL_31;
  }

  if (AVE_Log_CheckLevel(0xBu, 4))
  {
    v20 = AVE_Log_CheckConsole(0xBu);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(4);
    if (v20)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d\n", v21, 11, v22, "AVE_Plugin_AVC_StartSession", 275, "encoder != __null && session != __null && dimensions.width > 0 && dimensions.height > 0", a1, a2, v5, v6, a4, 0, 0);
      v23 = AVE_GetCurrTime();
      v24 = a4;
      v41 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v23, 11, v41, "AVE_Plugin_AVC_StartSession", 275, "encoder != __null && session != __null && dimensions.width > 0 && dimensions.height > 0");
    }

    else
    {
      v24 = a4;
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v21, 11, v22, "AVE_Plugin_AVC_StartSession", 275, "encoder != __null && session != __null && dimensions.width > 0 && dimensions.height > 0");
    }
  }

  else
  {
    v24 = a4;
  }

  v14 = 0;
  v16 = 4294966295;
LABEL_31:
  v30 = AVE_GetCurrTime() - CurrTime;
  if (v30 >= 50000)
  {
    v31 = 5;
  }

  else
  {
    v31 = 6;
  }

  v32 = AVE_RetCode2OSStatus(v16);
  if (v16)
  {
    v33 = 4;
  }

  else
  {
    v33 = v31;
  }

  if (AVE_Log_CheckLevel(0xBu, v33))
  {
    v34 = AVE_Log_CheckConsole(0xBu);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(v33);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d %p %lld %lld %d %d\n", v35, 11, v36, "AVE_Plugin_AVC_StartSession", a1, a2, v5, v45, v24, v14, v30, v16, v32);
      v37 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(v33);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %p %lld %lld %d %d", v37, 11, v43, "AVE_Plugin_AVC_StartSession", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %p %lld %lld %d %d", v35, 11, v36, "AVE_Plugin_AVC_StartSession", a1);
    }
  }

  return v32;
}

uint64_t AVE_Plugin_AVC_CopySupportedPropertyDictionary(const void *a1, void *a2)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 7))
  {
    v5 = AVE_Log_CheckConsole(0xBu);
    v6 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, LevelStr, "AVE_Plugin_AVC_CopySupportedPropertyDictionary", a1, a2, 0);
      v6 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %lld", v6);
  }

  if (a1 && a2)
  {
    *a2 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = DerivedStorage;
    if (DerivedStorage)
    {
      AVE_Mutex_Lock(*DerivedStorage);
      v10 = *(v9 + 56);
      kdebug_trace();
      PropertyDict = AVE_Session_AVC_GetPropertyDict(v9, a2);
      if (PropertyDict && AVE_Log_CheckLevel(0xBu, 4))
      {
        v12 = AVE_Log_CheckConsole(0xBu);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC property dictionary %p %p %lld %d\n", v13, 11, v14, "AVE_Plugin_AVC_CopySupportedPropertyDictionary", 540, "ret == 0", a1, a2, v10, PropertyDict);
          v15 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC property dictionary %p %p %lld %d", v15, 11, v32, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC property dictionary %p %p %lld %d", v13, 11, v14, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v20 = AVE_Log_CheckConsole(0xBu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d\n", v21, 11, v22, "AVE_Plugin_AVC_CopySupportedPropertyDictionary", 528, "pPI != __null", a1, a2, 0, 0);
          v23 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v23, 11, v34, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v21, 11, v22, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
        }
      }

      v10 = 0;
      PropertyDict = 4294966296;
    }

    kdebug_trace();
    AVE_Mutex_Unlock(*v9);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v16 = AVE_Log_CheckConsole(0xBu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v17, 11, v18, "AVE_Plugin_AVC_CopySupportedPropertyDictionary", 521, "encoder != __null && supportedPropertyDictionaryOut != __null", a1, a2, 0, 0);
        v19 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v19, 11, v33, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v17, 11, v18, "AVE_Plugin_AVC_CopySupportedPropertyDictionary");
      }
    }

    v10 = 0;
    PropertyDict = 4294966295;
  }

  v24 = AVE_GetCurrTime() - CurrTime;
  if (v24 >= 50000)
  {
    v25 = 5;
  }

  else
  {
    v25 = 7;
  }

  v26 = AVE_RetCode2OSStatus(PropertyDict);
  if (PropertyDict)
  {
    v25 = 4;
  }

  if (AVE_Log_CheckLevel(0xBu, v25))
  {
    v27 = AVE_Log_CheckConsole(0xBu);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v25);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_AVC_CopySupportedPropertyDictionary", a1, a2, v10, v24, PropertyDict, v26);
      v30 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v30, 11, v35);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v29);
    }
  }

  return v26;
}

uint64_t AVE_Plugin_AVC_SetProperties(const void *a1, const __CFDictionary *a2)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 7))
  {
    v5 = AVE_Log_CheckConsole(0xBu);
    v6 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, LevelStr, "AVE_Plugin_AVC_SetProperties", a1, a2, 0);
      v6 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %lld", v6);
  }

  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v9 = DerivedStorage;
      AVE_Mutex_Lock(*DerivedStorage);
      v10 = v9[7];
      kdebug_trace();
      CFDictionaryApplyFunction(a2, AVE_Plugin_AVC_ApplierFunc, v9);
      kdebug_trace();
      AVE_Mutex_Unlock(*v9);
      v11 = 0;
      v12 = 1;
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v17 = AVE_Log_CheckConsole(0xBu);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_AVC_SetProperties", 608, "pPI != __null", a1, a2, 0, 0);
          v20 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v20, 11, v31, "AVE_Plugin_AVC_SetProperties");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %lld %d", v18, 11, v19, "AVE_Plugin_AVC_SetProperties");
        }
      }

      v12 = 0;
      v10 = 0;
      v11 = 4294966296;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v13 = AVE_Log_CheckConsole(0xBu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v14, 11, v15, "AVE_Plugin_AVC_SetProperties", 603, "encoder != __null && propertyDictionary != __null", a1, a2, 0, 0);
        v16 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v16, 11, v30, "AVE_Plugin_AVC_SetProperties");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v14, 11, v15, "AVE_Plugin_AVC_SetProperties");
      }
    }

    v12 = 0;
    v10 = 0;
    v11 = 4294966295;
  }

  v21 = AVE_GetCurrTime() - CurrTime;
  if (v21 >= 50000)
  {
    v22 = 5;
  }

  else
  {
    v22 = 7;
  }

  v23 = AVE_RetCode2OSStatus(v11);
  if (v12)
  {
    v24 = v22;
  }

  else
  {
    v24 = 4;
  }

  if (AVE_Log_CheckLevel(0xBu, v24))
  {
    v25 = AVE_Log_CheckConsole(0xBu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(v24);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_AVC_SetProperties", a1, a2, v10, v21, v11, v23);
      v28 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(v24);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v26, 11, v27);
    }
  }

  return v23;
}

uint64_t AVE_Plugin_AVC_PrepareToEncodeFrames(const void *a1)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v3 = AVE_Log_CheckConsole(0xBu);
    v4 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, LevelStr, "AVE_Plugin_AVC_PrepareToEncodeFrames", a1, 0);
      v6 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v31, "AVE_Plugin_AVC_PrepareToEncodeFrames", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, LevelStr, "AVE_Plugin_AVC_PrepareToEncodeFrames", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      AVE_Mutex_Lock(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v10 = AVE_Session_AVC_Prepare();
      if (v10 && AVE_Log_CheckLevel(0xBu, 4))
      {
        v11 = AVE_Log_CheckConsole(0xBu);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_AVC_PrepareToEncodeFrames", 672, "ret == 0", a1, v9, v8, v10);
          v14 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %lld %p %d", v14, 11, v32, "AVE_Plugin_AVC_PrepareToEncodeFrames");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_AVC_PrepareToEncodeFrames");
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v19 = AVE_Log_CheckConsole(0xBu);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_AVC_PrepareToEncodeFrames", 661, "pPI != __null", a1, 0, 0);
          v22 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v22, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    AVE_Mutex_Unlock(*v8);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v15 = AVE_Log_CheckConsole(0xBu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_AVC_PrepareToEncodeFrames", 657, "encoder != __null", 0, 0, 0);
        v18 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = AVE_GetCurrTime() - CurrTime;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 6;
  }

  v25 = AVE_RetCode2OSStatus(v10);
  if (v10)
  {
    v26 = 4;
  }

  else
  {
    v26 = v24;
  }

  if (AVE_Log_CheckLevel(0xBu, v26))
  {
    v27 = AVE_Log_CheckConsole(0xBu);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v26);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_AVC_PrepareToEncodeFrames", a1, v9, v23, v10, v25);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v26);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v28, 11);
  }

  return v25;
}

uint64_t AVE_Plugin_AVC_BeginPass(const void *a1, int a2, const void *a3)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v7 = AVE_Log_CheckConsole(0xBu);
    v8 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%x %p %lld\n", v8, 11, LevelStr, "AVE_Plugin_AVC_BeginPass", a1, a2, a3, 0);
      v8 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x %p %lld", v8, 11);
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      AVE_Mutex_Lock(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      v13 = AVE_Session_AVC_BeginPass(v11, a2);
      if (v13 && AVE_Log_CheckLevel(0xBu, 4))
      {
        v14 = AVE_Log_CheckConsole(0xBu);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to begin AVC Multipass %p 0x%x %lld %p %d\n", v15, 11, v16, "AVE_Plugin_AVC_BeginPass", 732, "ret == 0", a1, a2, v12, v11, v13);
          v17 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to begin AVC Multipass %p 0x%x %lld %p %d", v17, 11, v35, "AVE_Plugin_AVC_BeginPass", 732);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to begin AVC Multipass %p 0x%x %lld %p %d", v15, 11, v16, "AVE_Plugin_AVC_BeginPass", 732);
        }
      }

      kdebug_trace();
      AVE_Mutex_Unlock(*v11);
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v22 = AVE_Log_CheckConsole(0xBu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p 0x%x %p %lld %d\n", v23, 11, v24, "AVE_Plugin_AVC_BeginPass", 721, "pPI != __null", a1, a2, a3, 0, 0);
          v25 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p 0x%x %p %lld %d", v25, 11, v37, "AVE_Plugin_AVC_BeginPass", 721);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p 0x%x %p %lld %d", v23, 11, v24, "AVE_Plugin_AVC_BeginPass", 721);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v18 = AVE_Log_CheckConsole(0xBu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x %p %lld %d\n", v19, 11, v20, "AVE_Plugin_AVC_BeginPass", 716, "encoder != __null", 0, a2, a3, 0, 0);
        v21 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x %p %lld %d", v21, 11, v36, "AVE_Plugin_AVC_BeginPass", 716);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x %p %lld %d", v19, 11, v20, "AVE_Plugin_AVC_BeginPass", 716);
      }
    }

    v12 = 0;
    v13 = 4294966295;
  }

  if ((AVE_GetCurrTime() - CurrTime) >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 6;
  }

  v27 = AVE_RetCode2OSStatus(v13);
  if (v13)
  {
    v28 = 4;
  }

  else
  {
    v28 = v26;
  }

  if (AVE_Log_CheckLevel(0xBu, v28))
  {
    v29 = AVE_Log_CheckConsole(0xBu);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v28);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%x %p %lld %d\n", v30, 11, v31, "AVE_Plugin_AVC_BeginPass", a1, a2, a3, v12, v13);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(v28);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %p %lld %d", v32, 11, v33);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %p %lld %d", v30, 11, v31);
    }
  }

  return v27;
}

uint64_t AVE_Plugin_AVC_EndPass(const void *a1, _BYTE *a2, const void *a3)
{
  v38 = 0;
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v7 = AVE_Log_CheckConsole(0xBu);
    v8 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld\n", v8, 11, LevelStr, "AVE_Plugin_AVC_EndPass", a1, a2, a3, 0);
      v8 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld", v8, 11);
  }

  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      AVE_Mutex_Lock(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      *a2 = 0;
      v13 = AVE_Session_AVC_EndPass(v11, &v38);
      if (v13)
      {
        if (AVE_Log_CheckLevel(0xBu, 4))
        {
          v14 = AVE_Log_CheckConsole(0xBu);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(4);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to end AVC Multipass %p %p %p %lld %p %d\n", v15, 11, v16, "AVE_Plugin_AVC_EndPass", 796, "ret == 0", a1, a2, a3, v12, v11, v13);
            v17 = AVE_GetCurrTime();
            v35 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to end AVC Multipass %p %p %p %lld %p %d", v17, 11, v35, "AVE_Plugin_AVC_EndPass", 796, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to end AVC Multipass %p %p %p %lld %p %d", v15, 11, v16, "AVE_Plugin_AVC_EndPass", 796, "ret == 0");
          }
        }
      }

      else if (v38)
      {
        *a2 = 1;
      }

      kdebug_trace();
      AVE_Mutex_Unlock(*v11);
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v22 = AVE_Log_CheckConsole(0xBu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d\n", v23, 11, v24, "AVE_Plugin_AVC_EndPass", 783, "pPI != __null", a1, a2, a3, 0, 0);
          v25 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d", v25, 11, v37, "AVE_Plugin_AVC_EndPass", 783);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d", v23, 11, v24, "AVE_Plugin_AVC_EndPass", 783);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v18 = AVE_Log_CheckConsole(0xBu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d\n", v19, 11, v20, "AVE_Plugin_AVC_EndPass", 778, "encoder != __null && furtherPassesRequestedOut != __null", a1, a2, a3, 0, 0);
        v21 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v21, 11, v36, "AVE_Plugin_AVC_EndPass", 778);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v19, 11, v20, "AVE_Plugin_AVC_EndPass", 778);
      }
    }

    v12 = 0;
    v13 = 4294966295;
  }

  if ((AVE_GetCurrTime() - CurrTime) >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 6;
  }

  v27 = AVE_RetCode2OSStatus(v13);
  if (v13)
  {
    v28 = 4;
  }

  else
  {
    v28 = v26;
  }

  if (AVE_Log_CheckLevel(0xBu, v28))
  {
    v29 = AVE_Log_CheckConsole(0xBu);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v28);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %d\n", v30, 11, v31, "AVE_Plugin_AVC_EndPass", a1, a2, a3, v12, v13);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(v28);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d", v32, 11, v33);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d", v30, 11, v31);
    }
  }

  return v27;
}

uint64_t AVE_Plugin_AVC_StartTileSession(const void *a1, pthread_mutex_t *a2, const void *a3, unint64_t a4, pthread_mutex_t *a5)
{
  v6 = a4;
  v8 = HIDWORD(a4);
  v51 = 0;
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v10 = AVE_Log_CheckConsole(0xBu);
    v11 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %d %d %p %lld\n", v11, 11, LevelStr, "AVE_Plugin_AVC_StartTileSession", a1, a2, a3, v6, v8, a5, 0);
      v13 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %p %lld", v13, 11, v43, "AVE_Plugin_AVC_StartTileSession");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %p %lld", v11, 11, LevelStr, "AVE_Plugin_AVC_StartTileSession");
    }
  }

  v48 = a3;
  if (a1 && a2 && v6 >= 1 && v8 > 0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v15 = DerivedStorage;
    if (DerivedStorage)
    {
      v51 = __PAIR64__(v8, v6);
      AVE_Mutex_Lock(*DerivedStorage);
      v16 = v15[7];
      kdebug_trace();
      v15[2] = a2;
      v15[14] = a5;
      *(v15 + 8) = 2;
      started = AVE_Session_AVC_StartTileSession(v15, &v51);
      if (!started)
      {
        v31 = v15[14];
        if (v31)
        {
          CFRetain(v31);
        }

        v18 = 0;
        goto LABEL_29;
      }

      v18 = started;
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v19 = AVE_Log_CheckConsole(0xBu);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d\n", v20, 11, v21, "AVE_Plugin_AVC_StartTileSession", 877, "ret == 0", a1, a2, v6, v8, a5, v16, v15, v18);
          v47 = AVE_GetCurrTime();
          v44 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d", v47, 11, v44, "AVE_Plugin_AVC_StartTileSession", 877, "ret == 0", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start AVC %p %p %d %d %p %lld %p %d", v20, 11, v21, "AVE_Plugin_AVC_StartTileSession", 877, "ret == 0", a1);
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v26 = a5;
        v27 = AVE_Log_CheckConsole(0xBu);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        v42 = v28;
        a5 = v26;
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d\n", v42, 11, v29, "AVE_Plugin_AVC_StartTileSession", 857, "pPI != __null", a1, a2, v6, v8, v26, 0, 0);
          v30 = AVE_GetCurrTime();
          v46 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d", v30, 11, v46, "AVE_Plugin_AVC_StartTileSession", 857, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %d %d %p %lld %d", v42, 11, v29, "AVE_Plugin_AVC_StartTileSession", 857, "pPI != __null");
        }
      }

      v16 = 0;
      v18 = 4294966296;
    }

    v15[2] = 0;
    v15[14] = 0;
LABEL_29:
    kdebug_trace();
    AVE_Mutex_Unlock(*v15);
    goto LABEL_30;
  }

  if (AVE_Log_CheckLevel(0xBu, 4))
  {
    v22 = AVE_Log_CheckConsole(0xBu);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(4);
    if (v22)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d\n", v23, 11, v24, "AVE_Plugin_AVC_StartTileSession", 851, "encoder != __null && session != __null && tileDimensions.width > 0 && tileDimensions.height > 0", a1, a2, v6, v8, a5, 0, 0);
      v25 = AVE_GetCurrTime();
      v45 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v25, 11, v45, "AVE_Plugin_AVC_StartTileSession", 851, "encoder != __null && session != __null && tileDimensions.width > 0 && tileDimensions.height > 0");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v23, 11, v24, "AVE_Plugin_AVC_StartTileSession", 851, "encoder != __null && session != __null && tileDimensions.width > 0 && tileDimensions.height > 0");
    }
  }

  v16 = 0;
  v18 = 4294966295;
LABEL_30:
  v32 = AVE_GetCurrTime() - CurrTime;
  if (v32 >= 50000)
  {
    v33 = 5;
  }

  else
  {
    v33 = 6;
  }

  v34 = AVE_RetCode2OSStatus(v18);
  if (v18)
  {
    v33 = 4;
  }

  if (AVE_Log_CheckLevel(0xBu, v33))
  {
    v35 = v16;
    v36 = AVE_Log_CheckConsole(0xBu);
    v37 = AVE_GetCurrTime();
    v38 = AVE_Log_GetLevelStr(v33);
    if (v36)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d %d %p %lld %lld %d %d\n", v37, 11, v38, "AVE_Plugin_AVC_StartTileSession", a1, a2, v48, v6, v8, a5, v35, v32, v18, v34);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(v33);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %p %lld %lld %d %d", v39, 11, v40, "AVE_Plugin_AVC_StartTileSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %p %lld %lld %d %d", v37, 11, v38, "AVE_Plugin_AVC_StartTileSession", a1, a2);
    }
  }

  return v34;
}

uint64_t AVE_Plugin_AVC_PrepareToEncodeTiles(const void *a1, int a2)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v5 = AVE_Log_CheckConsole(0xBu);
    v6 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld\n", v6, 11, LevelStr, "AVE_Plugin_AVC_PrepareToEncodeTiles", a1, a2, 0);
      v6 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld", v6);
  }

  if (a1)
  {
    if (a2)
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v8 = AVE_Log_CheckConsole(0xBu);
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(4);
        if (v8)
        {
          printf("%lld %d AVE %s: %s:%d %s | don't support partial tiles %p %d %lld %d\n", v9, 11, v10, "AVE_Plugin_AVC_PrepareToEncodeTiles", 940, "!expectPartialTiles", a1, a2, 0, 0);
          v11 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | don't support partial tiles %p %d %lld %d", v11, 11, v37, "AVE_Plugin_AVC_PrepareToEncodeTiles");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | don't support partial tiles %p %d %lld %d", v9, 11, v10, "AVE_Plugin_AVC_PrepareToEncodeTiles");
        }
      }

      v18 = 0;
      v19 = 4294966294;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v17 = DerivedStorage;
      if (DerivedStorage)
      {
        AVE_Mutex_Lock(*DerivedStorage);
        v18 = v17[7];
        kdebug_trace();
        v19 = AVE_Session_AVC_Prepare();
        if (v19 && AVE_Log_CheckLevel(0xBu, 4))
        {
          v20 = AVE_Log_CheckConsole(0xBu);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %d %lld %p %d\n", v21, 11, v22, "AVE_Plugin_AVC_PrepareToEncodeTiles", 955, "ret == 0", a1, 0, v18, v17, v19);
            v23 = AVE_GetCurrTime();
            v39 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %d %lld %p %d", v23, 11, v39, "AVE_Plugin_AVC_PrepareToEncodeTiles", 955);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare AVC %p %d %lld %p %d", v21, 11, v22, "AVE_Plugin_AVC_PrepareToEncodeTiles", 955);
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0xBu, 4))
        {
          v24 = AVE_Log_CheckConsole(0xBu);
          v25 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(4);
          if (v24)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %d %lld %d\n", v25, 11, v26, "AVE_Plugin_AVC_PrepareToEncodeTiles", 944, "pPI != __null", a1, 0, 0, 0);
            v27 = AVE_GetCurrTime();
            v40 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %d %lld %d", v27, 11, v40, "AVE_Plugin_AVC_PrepareToEncodeTiles");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %d %lld %d", v25, 11, v26, "AVE_Plugin_AVC_PrepareToEncodeTiles");
          }
        }

        v18 = 0;
        v19 = 4294966296;
      }

      kdebug_trace();
      AVE_Mutex_Unlock(*v17);
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v12 = AVE_Log_CheckConsole(0xBu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %lld %d\n", v13, 11, v14, "AVE_Plugin_AVC_PrepareToEncodeTiles", 935, "encoder != __null", 0, a2, 0, 0);
        v15 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %lld %d", v15, 11, v38, "AVE_Plugin_AVC_PrepareToEncodeTiles");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %lld %d", v13, 11, v14, "AVE_Plugin_AVC_PrepareToEncodeTiles");
      }
    }

    v18 = 0;
    v19 = 4294966295;
  }

  v28 = AVE_GetCurrTime() - CurrTime;
  if (v28 >= 50000)
  {
    v29 = 5;
  }

  else
  {
    v29 = 6;
  }

  v30 = AVE_RetCode2OSStatus(v19);
  if (v19)
  {
    v31 = 4;
  }

  else
  {
    v31 = v29;
  }

  if (AVE_Log_CheckLevel(0xBu, v31))
  {
    v32 = AVE_Log_CheckConsole(0xBu);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(v31);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %lld %d %d\n", v33, 11, v34, "AVE_Plugin_AVC_PrepareToEncodeTiles", a1, a2, v18, v28, v19, v30);
      v35 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(v31);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %lld %d %d", v35, 11, v41);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %lld %d %d", v33, 11, v34);
    }
  }

  return v30;
}

uint64_t AVE_Plugin_AVC_EncodeTile(const void *a1, const void *a2, const void *a3, unint64_t a4, unint64_t a5, const void *a6, _DWORD *a7)
{
  v8 = a5;
  v11 = HIDWORD(a4);
  v12 = HIDWORD(a5);
  CurrTime = AVE_GetCurrTime();
  v45 = v11;
  v46 = v8;
  v48 = v12;
  if (AVE_Log_CheckLevel(0xBu, 8))
  {
    v42 = CurrTime;
    v14 = AVE_Log_CheckConsole(0xBu);
    v15 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %d %d %d %d %p %p %lld\n", v15, 11, LevelStr, "AVE_Plugin_AVC_EncodeTile", a1, a2, a3, a4, v11, v8, v12, a6, a7, 0);
      v17 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %d %d %p %p %lld", v17, 11, v38, "AVE_Plugin_AVC_EncodeTile", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %d %d %p %p %lld", v15, 11, LevelStr, "AVE_Plugin_AVC_EncodeTile", a1, a2);
    }

    CurrTime = v42;
  }

  if (a1 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v19 = DerivedStorage;
    if (DerivedStorage)
    {
      AVE_Mutex_Lock(*DerivedStorage);
      v20 = v19[7];
      kdebug_trace();
      v21 = AVE_Session_AVC_ProcessTile();
      v19[6] = (v19[6] + 1);
    }

    else if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v44 = CurrTime;
      v26 = AVE_Log_CheckConsole(0xBu);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %d %d %d %d %p %p %lld %d\n", v27, 11, v28, "AVE_Plugin_AVC_EncodeTile", 1022, "pPI != __null", a1, a2, a3, a4, v11, v8, v12, a6, a7, 0, 0);
        v41 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %d %d %d %d %p %p %lld %d", v41, 11, v40, "AVE_Plugin_AVC_EncodeTile", 1022, "pPI != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %d %d %d %d %p %p %lld %d", v27, 11, v28, "AVE_Plugin_AVC_EncodeTile", 1022, "pPI != __null", a1, a2, a3);
      }

      v20 = 0;
      v21 = 4294966296;
      CurrTime = v44;
    }

    else
    {
      v20 = 0;
      v21 = 4294966296;
    }

    kdebug_trace();
    if (a7)
    {
      *a7 |= 1u;
    }

    AVE_Mutex_Unlock(*v19);
  }

  else if (AVE_Log_CheckLevel(0xBu, 4))
  {
    v43 = CurrTime;
    v22 = AVE_Log_CheckConsole(0xBu);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(4);
    if (v22)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d %d %d %p %p %lld %d\n", v23, 11, v24, "AVE_Plugin_AVC_EncodeTile", 1014, "encoder != __null && imageBuffer != __null", a1, a2, a3, a4, v11, v8, v12, a6, a7, 0, 0);
      v25 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d %d %d %p %p %lld %d", v25, 11, v39, "AVE_Plugin_AVC_EncodeTile", 1014, "encoder != __null && imageBuffer != __null", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d %d %d %p %p %lld %d", v23, 11, v24, "AVE_Plugin_AVC_EncodeTile", 1014, "encoder != __null && imageBuffer != __null", a1, a2, a3);
    }

    v20 = 0;
    v21 = 4294966295;
    CurrTime = v43;
  }

  else
  {
    v20 = 0;
    v21 = 4294966295;
  }

  v29 = AVE_GetCurrTime() - CurrTime;
  if (v29 >= 50000)
  {
    v30 = 5;
  }

  else
  {
    v30 = 8;
  }

  v31 = AVE_RetCode2OSStatus(v21);
  if (v21)
  {
    v32 = 4;
  }

  else
  {
    v32 = v30;
  }

  if (AVE_Log_CheckLevel(0xBu, v32))
  {
    v33 = AVE_Log_CheckConsole(0xBu);
    v34 = AVE_GetCurrTime();
    v35 = AVE_Log_GetLevelStr(v32);
    if (v33)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d %d %d %d %p %p %lld %lld %d %d\n", v34, 11, v35, "AVE_Plugin_AVC_EncodeTile", a1, a2, a3, a4, v45, v46, v48, a6, a7, v20, v29, v21, v31);
      v47 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(v32);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d %d %p %p %lld %lld %d %d", v47, 11, v36, "AVE_Plugin_AVC_EncodeTile", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d %d %p %p %lld %lld %d %d", v34, 11, v35, "AVE_Plugin_AVC_EncodeTile", a1, a2, a3, a4);
    }
  }

  return v31;
}

uint64_t AVE_Plugin_AVC_CompleteTiles(const void *a1)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 7))
  {
    v3 = AVE_Log_CheckConsole(0xBu);
    v4 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, LevelStr, "AVE_Plugin_AVC_CompleteTiles", a1, 0);
      v6 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v31, "AVE_Plugin_AVC_CompleteTiles", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, LevelStr, "AVE_Plugin_AVC_CompleteTiles", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      AVE_Mutex_Lock(*DerivedStorage);
      v9 = v8[7];
      kdebug_trace();
      v10 = AVE_Session_AVC_Complete(v8);
      if (v10 && AVE_Log_CheckLevel(0xBu, 4))
      {
        v11 = AVE_Log_CheckConsole(0xBu);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_AVC_CompleteTiles", 1107, "ret == 0", a1, v9, v8, v10);
          v14 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %p %d", v14, 11, v32, "AVE_Plugin_AVC_CompleteTiles");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_AVC_CompleteTiles");
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v19 = AVE_Log_CheckConsole(0xBu);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_AVC_CompleteTiles", 1096, "pPI != __null", a1, 0, 0);
          v22 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v22, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    AVE_Mutex_Unlock(*v8);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v15 = AVE_Log_CheckConsole(0xBu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_AVC_CompleteTiles", 1091, "encoder != __null", 0, 0, 0);
        v18 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = AVE_GetCurrTime() - CurrTime;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 7;
  }

  v25 = AVE_RetCode2OSStatus(v10);
  if (v10)
  {
    v24 = 4;
  }

  if (AVE_Log_CheckLevel(0xBu, v24))
  {
    v26 = AVE_Log_CheckConsole(0xBu);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(v24);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v27, 11, v28, "AVE_Plugin_AVC_CompleteTiles", a1, v9, v23, v10, v25);
      v29 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v24);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v29, 11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v27, 11);
    }
  }

  return v25;
}

void AVE_Plugin_AVC_ApplierFunc(__CFString *a1, const void *a2, void *a3)
{
  v6 = AVE_Session_AVC_SetProperty(a3, a1, a2);
  if (v6)
  {
    v7 = v6;
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v8 = AVE_Log_CheckConsole(0xBu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d fail to set property AVC %p %p %p %d\n", CurrTime, 11, LevelStr, "AVE_Plugin_AVC_ApplierFunc", 576, a1, a2, a3, v7);
        v11 = AVE_GetCurrTime();
        v12 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d fail to set property AVC %p %p %p %d", v11, 11, v12);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d fail to set property AVC %p %p %p %d", CurrTime, 11, LevelStr);
      }
    }
  }
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

uint64_t AVE_USurface::CreateDict(AVE_USurface *this, int a2, int a3, int a4, __CFDictionary **a5, __CFDictionary **a6)
{
  v10 = this;
  *a5 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v12 = Mutable;
    v13 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB140], v10, Mutable);
    v14 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB160], a2, v12) + v13;
    v15 = v14 + AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB180], a3, v12);
    v16 = *MEMORY[0x29EDCA6D0];
    if (*MEMORY[0x29EDCA6D0] <= 0x4000uLL)
    {
      LODWORD(v16) = 0x4000;
    }

    v17 = (a4 + v16 - 1) & -v16;
    if (!(v15 + AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB128], v17, v12)))
    {
      result = 0;
      *a5 = v12;
      return result;
    }

    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v22 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to add keys %d %d 0x%x %d %p\n", CurrTime, 76, LevelStr, "AVE_USurface", "CreateDict", 49, "ret == 0", v10, a2, a3, v17, v12);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add keys %d %d 0x%x %d %p", v25, 76, v26, "AVE_USurface");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add keys %d %d 0x%x %d %p", CurrTime, 76, LevelStr, "AVE_USurface");
      }
    }

    CFRelease(v12);
  }

  else if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v19 = AVE_Log_CheckConsole(0x4Cu);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(4);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to create CFDictionary\n", v20, 76, v21, "AVE_USurface", "CreateDict", 36, "pDict != __null");
      v20 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create CFDictionary", v20);
  }

  return 4294966293;
}

uint64_t AVE_USurface::CreateIOSurface(AVE_USurface *this, int a2, int a3, int a4, IOSurfaceRef *a5, __IOSurface **a6)
{
  v10 = this;
  v31 = 0;
  if (a4 >= 1 && a5)
  {
    *a5 = 0;
    v11 = AVE_USurface::CreateDict(this, a2, a3, a4, &v31, a6);
    if (v11)
    {
      v12 = v11;
      if (AVE_Log_CheckLevel(0x4Cu, 4))
      {
        v13 = AVE_Log_CheckConsole(0x4Cu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create surface dictionary %d %d %d %d %d\n", CurrTime, 76, LevelStr, "AVE_USurface", "CreateIOSurface", 94, "ret == 0", v10, a2, a3, a4, v12);
          v16 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface dictionary %d %d %d %d %d", v16, 76, v28, "AVE_USurface");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface dictionary %d %d %d %d %d", CurrTime, 76, LevelStr, "AVE_USurface");
        }
      }
    }

    else
    {
      v21 = v31;
      v22 = IOSurfaceCreate(v31);
      if (v22)
      {
        v12 = 0;
        *a5 = v22;
        if (!v21)
        {
          return v12;
        }

        goto LABEL_17;
      }

      if (!AVE_Log_CheckLevel(0x4Cu, 4))
      {
        v12 = 4294966296;
        if (!v21)
        {
          return v12;
        }

        goto LABEL_17;
      }

      v24 = AVE_Log_CheckConsole(0x4Cu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to create surface %d %d %d %d\n", v25, 76, v26, "AVE_USurface", "CreateIOSurface", 99, "pSurface != __null", v10, a2, a3, a4);
        v27 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %d %d %d %d", v27, 76, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %d %d %d %d", v25, 76, v26);
      }

      v12 = 4294966296;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x4Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %d %d %d %d %p\n", v18, 76, v19, "AVE_USurface", "CreateIOSurface", 88, "size > 0 && ppSurface != __null", v10, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %d %d %d %d %p", v20, 76, v29, "AVE_USurface");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %d %d %d %d %p", v18, 76, v19, "AVE_USurface");
      }
    }

    v12 = 4294966295;
  }

  v21 = v31;
  if (v31)
  {
LABEL_17:
    CFRelease(v21);
  }

  return v12;
}

void AVE_USurface::AVE_USurface(AVE_USurface *this, uint64_t a2)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
}

uint64_t AVE_USurface::Create(AVE_USurface *this, AVE_USurface *a2, int a3, int a4, int a5, __IOSurface **a6, const char *a7, uint64_t a8)
{
  v13 = a2;
  v34 = 0;
  if (a5 > 0)
  {
    v16 = *MEMORY[0x29EDCA6D0];
    if (*MEMORY[0x29EDCA6D0] <= 0x4000uLL)
    {
      LODWORD(v16) = 0x4000;
    }

    v17 = (a5 + v16 - 1) & -v16;
    v18 = AVE_USurface::CreateIOSurface(a2, a3, a4, v17, &v34, a6);
    if (v18)
    {
      v22 = v18;
      if (AVE_Log_CheckLevel(0x4Cu, 4))
      {
        v23 = AVE_Log_CheckConsole(0x4Cu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to create surface %p %lld %d %d %d %d %d\n", CurrTime, 76, LevelStr, "AVE_USurface", "Create", 264, "ret == 0", this, *this, v13, a3, a4, v17, v22);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(4);
          v32 = *this;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %p %lld %d %d %d %d %d", v26, 76, v27, "AVE_USurface", "Create", 264);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create surface %p %lld %d %d %d %d %d", CurrTime, 76, LevelStr, "AVE_USurface", "Create", 264);
        }
      }
    }

    else
    {
      v22 = AVE_USurface::Create(this, v34, a6, a7, a8, v19, v20, v21);
      *(this + 11) |= 4uLL;
      if (!v22)
      {
        return v22;
      }
    }

    goto LABEL_16;
  }

  if (AVE_Log_CheckLevel(0x4Cu, 4))
  {
    v28 = AVE_Log_CheckConsole(0x4Cu);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(4);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d %d 0x%llx 0x%llx\n", v29, 76, v30, "AVE_USurface", "Create", 251, "size > 0", this, *this, v13, a3, a4, a5, a6, a8);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      v33 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d %d 0x%llx 0x%llx", v29, 76, v30, "AVE_USurface", "Create", 251, "size > 0");
    v22 = 4294966295;
LABEL_16:
    if (v34)
    {
      CFRelease(v34);
    }

    goto LABEL_18;
  }

  v22 = 4294966295;
LABEL_18:
  *(this + 11) = 0;
  *(this + 20) = 0;
  return v22;
}

uint64_t AVE_USurface::GetSize(AVE_USurface *this)
{
  if (*(this + 9))
  {
    return *(this + 20);
  }

  else
  {
    return 0;
  }
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