uint64_t sub_72BC8(void *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[137];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", v14, 30, v15, a1, a1[7], *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = a1[7];
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v22, 30, v23, "AVE_Prop_HEVC_GetSEIFeatureOff", 17766, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v22, 30, v23, "AVE_Prop_HEVC_GetSEIFeatureOff", 17766, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSEIFeatureOff", 17756, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_72EFC(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      *(a1 + 107820) = v10;
      v11 = *(a1 + 1096) & 0xFFFFFFFFFFFFFFFELL;
      if (Value)
      {
        ++v11;
      }

      *(a1 + 1096) = v11;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        v16 = *a2;
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
          v14 = sub_175AE4();
          sub_160F68(7);
          v17 = *(a1 + 56);
        }

        v29 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v14);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        v25 = *(a1 + 56);
        v26 = CFGetTypeID(a4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetDebugMetadataSEI", 17808, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v27 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetDebugMetadataSEI", 17808, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_SetDebugMetadataSEI", 17798, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = sub_175AE4();
        v28 = sub_160F68(4);
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

uint64_t sub_73248(void *a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[137] & 1;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, a1[7], *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
        v17 = a1[7];
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetDebugMetadataSEI", 17853, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_73468(void *a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", v12);
          return 0;
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_HEVC_SetVUIFeatureOn", 17910, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_HEVC_SetVUIFeatureOn", 17910, "iFeature != 0");
        }

        return 4294965292;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = a1[7];
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetVUIFeatureOn", 17901, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetVUIFeatureOn", 17891, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_738C0(void *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[138];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", v14, 30, v15, a1, a1[7], *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = a1[7];
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v22, 30, v23, "AVE_Prop_HEVC_GetVUIFeatureOn", 17956, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v22, 30, v23, "AVE_Prop_HEVC_GetVUIFeatureOn", 17956, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetVUIFeatureOn", 17946, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_73BF0(void *a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = a1[7];
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", v12);
          return 0;
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v27, 30, v28, "AVE_Prop_HEVC_SetVUIFeatureOff", 18007, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v27, 30, v28, "AVE_Prop_HEVC_SetVUIFeatureOff", 18007, "iFeature != 0");
        }

        return 4294965292;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = a1[7];
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetVUIFeatureOff", 17998, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetVUIFeatureOff", 17988, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_74048(void *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[138];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", v14, 30, v15, a1, a1[7], *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = a1[7];
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v22, 30, v23, "AVE_Prop_HEVC_GetVUIFeatureOff", 18053, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v22, 30, v23, "AVE_Prop_HEVC_GetVUIFeatureOff", 18053, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetVUIFeatureOff", 18043, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_7437C(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v20 = sub_160F34(0x1Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v21, 30, v22, "AVE_Prop_HEVC_SetChromaQpOffset", 18089, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v23 = sub_175AE4();
        v64 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v23, 30, v64, "AVE_Prop_HEVC_SetChromaQpOffset");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_SetChromaQpOffset");
      }
    }

    return 4294966295;
  }

  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(a4))
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v24 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      v25 = *(a1 + 56);
      v26 = CFGetTypeID(a4);
      if (v24)
      {
        v69 = v25;
        v19 = 18099;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetChromaQpOffset", 18099, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v69, a2, a3, a4, v26);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        v29 = *(a1 + 56);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v32 = sub_160F34(0x1Eu);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: ChromaQPOffset Array Count %ld\n", v33, 30, v34, "AVE_Prop_HEVC_SetChromaQpOffset", 18104, "(cQpOffsetCount > 0)", Count);
        v33 = sub_175AE4();
        v67 = Count;
        v65 = sub_160F68(4);
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
        if (!sub_160EF0(0x1Eu, 4))
        {
          return 4294965293;
        }

        v51 = sub_160F34(0x1Eu);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
        v52 = *(a1 + 56);
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
          if (!sub_160EF0(0x1Eu, 4))
          {
            return 4294965293;
          }

          v59 = sub_160F34(0x1Eu);
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
          v60 = *(a1 + 56);
          v61 = CFGetTypeID(a4);
          if (v59)
          {
            v71 = v60;
            v19 = 18133;
            printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetChromaQpOffset", 18133, "CFNumberGetTypeID() == CFGetTypeID(pCrQpOff)", a1, v71, a2, a3, a4, v61);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v62 = *(a1 + 56);
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

      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294965293;
      }

      v55 = sub_160F34(0x1Eu);
      v47 = sub_175AE4();
      v48 = sub_160F68(4);
      if (v55)
      {
        v49 = 18129;
        printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v47, 30, v48, "AVE_Prop_HEVC_SetChromaQpOffset", 18129, "pCrQpOff != __null", a1, *(a1 + 56), a2, a3, a4);
        goto LABEL_51;
      }

      v74 = *(a1 + 56);
      v63 = 18129;
    }

    else
    {
      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294965293;
      }

      v50 = sub_160F34(0x1Eu);
      v47 = sub_175AE4();
      v48 = sub_160F68(4);
      if (v50)
      {
        v49 = 18119;
        printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v47, 30, v48, "AVE_Prop_HEVC_SetChromaQpOffset", 18119, "pCbQpOff != __null", a1, *(a1 + 56), a2, a3, a4);
        goto LABEL_51;
      }

      v73 = *(a1 + 56);
      v63 = 18119;
    }

LABEL_61:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v47, 30, v48, "AVE_Prop_HEVC_SetChromaQpOffset", v63);
    return 4294965293;
  }

  if (!ValueAtIndex)
  {
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294965293;
    }

    v46 = sub_160F34(0x1Eu);
    v47 = sub_175AE4();
    v48 = sub_160F68(4);
    if (v46)
    {
      v49 = 18141;
      printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v47, 30, v48, "AVE_Prop_HEVC_SetChromaQpOffset", 18141, "pCbQpOff != __null", a1, *(a1 + 56), a2, a3, a4);
LABEL_51:
      v56 = sub_175AE4();
      v57 = sub_160F68(4);
      v58 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v56, 30, v57, "AVE_Prop_HEVC_SetChromaQpOffset", v49);
      return 4294965293;
    }

    v72 = *(a1 + 56);
    v63 = 18141;
    goto LABEL_61;
  }

  v12 = CFNumberGetTypeID();
  v13 = v11;
  if (v12 != CFGetTypeID(v11))
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      v17 = *(a1 + 56);
      v18 = CFGetTypeID(a4);
      if (v14)
      {
        v68 = v17;
        v19 = 18145;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetChromaQpOffset", 18145, "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)", a1, v68, a2, a3, a4, v18);
LABEL_45:
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        v54 = *(a1 + 56);
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
  *(a1 + 107816) = Count;
  *(a1 + 39892) = HIDWORD(valuePtr);
  *(a1 + 39924) = 0;
  v38 = sub_160EF0(0x1Eu, 7);
  result = 0;
  if (v38)
  {
    v39 = sub_160F34(0x1Eu);
    v40 = sub_175AE4();
    v41 = sub_160F68(7);
    v42 = *a2;
    if (v39)
    {
      printf("%lld %d AVE %s: %p %lld SetProp %s: %ld\n", v40, 30, v41, a1, *(a1 + 56), *a2, Count);
      v40 = sub_175AE4();
      sub_160F68(7);
      v43 = *(a1 + 56);
    }

    v66 = *a2;
    syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %ld", v40);
    return 0;
  }

  return result;
}

uint64_t sub_74C10(void *a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
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
          if (sub_160EF0(0x1Eu, 7))
          {
            v18 = sub_160F34(0x1Eu);
            v19 = sub_175AE4();
            v20 = sub_160F68(7);
            v21 = *a2;
            if (v18)
            {
              printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v19, 30, v20, a1, a1[7], *a2, v11);
              v19 = sub_175AE4();
              sub_160F68(7);
              v22 = a1[7];
            }

            v45 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v19);
          }

          CFRelease(v14);
          CFRelease(v17);
          return 0;
        }

        if (sub_160EF0(0x1Eu, 4))
        {
          v38 = sub_160F34(0x1Eu);
          v39 = sub_175AE4();
          v40 = sub_160F68(4);
          if (v38)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", v39, 30, v40, "AVE_Prop_HEVC_GetChromaQpOffset", 18227, "pCrQpOff != __null", a1, a1[7], a2, allocator, a4, a5, *v15);
            v39 = sub_175AE4();
            v40 = sub_160F68(4);
            v56 = *v15;
            v49 = a1[7];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d", v39, 30, v40, "AVE_Prop_HEVC_GetChromaQpOffset", 18227, "pCrQpOff != __null", a1);
        }

        CFRelease(v14);
        return 4294966293;
      }

      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294966293;
      }

      v34 = sub_160F34(0x1Eu);
      v28 = sub_175AE4();
      v35 = sub_160F68(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", v28, 30, v35, "AVE_Prop_HEVC_GetChromaQpOffset", 18220, "pCbQpOff != __null", a1, a1[7], a2, allocator, a4, a5, *v12);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
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
      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294966293;
      }

      v27 = sub_160F34(0x1Eu);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p\n", v28, 30, v29, "AVE_Prop_HEVC_GetChromaQpOffset", 18212, "pQpOffsetArray != __null", a1, a1[7], a2, allocator, a4, a5, 0);
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
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

  if (sub_160EF0(0x1Eu, 4))
  {
    v23 = sub_160F34(0x1Eu);
    v24 = sub_175AE4();
    v25 = sub_160F68(4);
    if (v23)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_GetChromaQpOffset", 18204, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
      v26 = sub_175AE4();
      v42 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v26, 30, v42, "AVE_Prop_HEVC_GetChromaQpOffset", 18204);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v24, 30, v25, "AVE_Prop_HEVC_GetChromaQpOffset", 18204);
    }
  }

  return 4294966295;
}

uint64_t sub_75194(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 107912) = v9;
      *(a1 + 10847) = v9;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
          v15 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableMultipleScalingMatrices", 18285, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableMultipleScalingMatrices", 18285, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableMultipleScalingMatrices", 18275, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_754D8(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10847);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10847))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
        v17 = *(a1 + 56);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEnableMultipleScalingMatrices", 18322, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_756FC(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v27, 30, v28, "AVE_Prop_HEVC_SetNumMergeCandidates", 18379, "(iCandidates >= 1) && (iCandidates <= 5)", a1, *(a1 + 56), a2, a3, a4, valuePtr, 1, 5);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v27, 30, v28, "AVE_Prop_HEVC_SetNumMergeCandidates", 18379, "(iCandidates >= 1) && (iCandidates <= 5)", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 107916) = valuePtr;
        *(a1 + 59968) = 5 - v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetNumMergeCandidates", 18370, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetNumMergeCandidates", 18370, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetNumMergeCandidates", 18360, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_75B7C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = 5 - *(a1 + 59968);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetNumMergeCandidates", 18424, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetNumMergeCandidates", 18424, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetNumMergeCandidates", 18414, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_75EB8(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 107920) = v9;
      *(a1 + 39961) = v9;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
          v15 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableEntropyCodingSync", 18467, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableEntropyCodingSync", 18467, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableEntropyCodingSync", 18457, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_761FC(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 39961);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 39961))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
        v17 = *(a1 + 56);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEnableEntropyCodingSync", 18504, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_76420(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 107824) = v9;
      *(a1 + 10855) = v9;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
          v15 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetUseHWTileOffsets", 18552, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetUseHWTileOffsets", 18552, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetUseHWTileOffsets", 18542, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_76764(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10855);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10855))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
        v17 = *(a1 + 56);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetUseHWTileOffsets", 18589, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_76988(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v25 = sub_160F34(0x1Eu);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)\n", v26, 30, v27, "AVE_Prop_HEVC_SetThroughputRateMode", 18648, "iThroughputRateMode > AVE_ThroughputMode_Invalid && iThroughputRateMode < AVE_ThroughputMode_Max", a1, *(a1 + 56), a2, a3, a4, valuePtr, 0, 8);
            v26 = sub_175AE4();
            v27 = sub_160F68(4);
            v28 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", v26, 30, v27, "AVE_Prop_HEVC_SetThroughputRateMode", 18648, "iThroughputRateMode > AVE_ThroughputMode_Invalid && iThroughputRateMode < AVE_ThroughputMode_Max", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 107828) = valuePtr;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(7);
          v13 = *a2;
          if (v10)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v11, 30, v12, a1, *(a1 + 56), *a2, valuePtr);
            v11 = sub_175AE4();
            sub_160F68(7);
            v14 = *(a1 + 56);
          }

          v30 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v11);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v19 = sub_160F34(0x1Eu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        v22 = *(a1 + 56);
        v23 = CFGetTypeID(a4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_HEVC_SetThroughputRateMode", 18637, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          v24 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_HEVC_SetThroughputRateMode", 18637, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_HEVC_SetThroughputRateMode", 18627, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v18 = sub_175AE4();
        v29 = sub_160F68(4);
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

uint64_t sub_76DF0(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 107828);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetThroughputRateMode", 18695, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetThroughputRateMode", 18695, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetThroughputRateMode", 18684, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_77128(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", v27, 30, v28, "AVE_Prop_HEVC_SetEdgeReplication", 18749, "iEdgeReplication > AVE_EdgeReplication_UNINIT && iEdgeReplication <= AVE_EdgeReplication_ALL_HW", a1, *(a1 + 56), a2, a3, a4, valuePtr, -1, 4);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", v27, 30, v28, "AVE_Prop_HEVC_SetEdgeReplication", 18749, "iEdgeReplication > AVE_EdgeReplication_UNINIT && iEdgeReplication <= AVE_EdgeReplication_ALL_HW", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 107832) = valuePtr;
        *(a1 + 10860) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEdgeReplication", 18738, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEdgeReplication", 18738, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEdgeReplication", 18728, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_77598(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10860);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetEdgeReplication", 18813, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetEdgeReplication", 18813, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetEdgeReplication", 18803, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_778C8(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v27, 30, v28, "AVE_Prop_HEVC_SetDeblockingFiltering", 18866, "iDeblockingFiltering >= 0 && iDeblockingFiltering <= 2", a1, *(a1 + 56), a2, a3, a4, valuePtr, 0, 2);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v27, 30, v28, "AVE_Prop_HEVC_SetDeblockingFiltering", 18866, "iDeblockingFiltering >= 0 && iDeblockingFiltering <= 2", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 107836) = valuePtr;
        *(a1 + 60062) = v9 != 0;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetDeblockingFiltering", 18856, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetDeblockingFiltering", 18856, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetDeblockingFiltering", 18846, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_77D3C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 60062);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetDeblockingFiltering", 18912, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetDeblockingFiltering", 18912, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetDeblockingFiltering", 18902, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_78070(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetLRMEFSMVCostMode", 18964, "iMode >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetLRMEFSMVCostMode", 18964, "iMode >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 107840) = valuePtr;
        *(a1 + 10604) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetLRMEFSMVCostMode", 18955, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetLRMEFSMVCostMode", 18955, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetLRMEFSMVCostMode", 18945, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_784C0(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10604);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetLRMEFSMVCostMode", 19010, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetLRMEFSMVCostMode", 19010, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetLRMEFSMVCostMode", 19000, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_787F0(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetLRMEFSLambdaLinear", 19062, "iLinear >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetLRMEFSLambdaLinear", 19062, "iLinear >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 107844) = valuePtr;
        *(a1 + 10608) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetLRMEFSLambdaLinear", 19053, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetLRMEFSLambdaLinear", 19053, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetLRMEFSLambdaLinear", 19043, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_78C40(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10608);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetLRMEFSLambdaLinear", 19108, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetLRMEFSLambdaLinear", 19108, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetLRMEFSLambdaLinear", 19098, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_78F70(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      *(a1 + 107848) = Value;
      *(a1 + 10172) = Value != 0;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, Value);
          v12 = sub_175AE4();
          sub_160F68(7);
          v15 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetLrmePipeSyncMode", 19151, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetLrmePipeSyncMode", 19151, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetLrmePipeSyncMode", 19141, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_792B8(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10172);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10172))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
        v17 = *(a1 + 56);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetLrmePipeSyncMode", 19188, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_794DC(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetlrmeRCPassNum", 19244, "ilrmeRCPassNum >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetlrmeRCPassNum", 19244, "ilrmeRCPassNum >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 107852) = valuePtr;
        *(a1 + 10531) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetlrmeRCPassNum", 19235, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetlrmeRCPassNum", 19235, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetlrmeRCPassNum", 19225, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_79930(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10531);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetlrmeRCPassNum", 19290, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetlrmeRCPassNum", 19290, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetlrmeRCPassNum", 19280, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_79C64(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 107856) = v9;
      *(a1 + 10764) = v9;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
          v15 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetUseAsyncFWScheduling", 19333, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetUseAsyncFWScheduling", 19333, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetUseAsyncFWScheduling", 19323, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_79FA8(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10764);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10764))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
        v17 = *(a1 + 56);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetUseAsyncFWScheduling", 19370, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_7A1CC(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 107860) = v9;
      *(a1 + 10512) = v9;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
          v15 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableMultiSliceStats", 19418, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableMultiSliceStats", 19418, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableMultiSliceStats", 19408, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_7A510(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10512);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10512))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
        v17 = *(a1 + 56);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEnableMultiSliceStats", 19455, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_7A734(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 107924) = v9;
      *(a1 + 10600) = v9;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
          v15 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetForceZeroMVEn0", 19502, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetForceZeroMVEn0", 19502, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetForceZeroMVEn0", 19492, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_7AA78(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10600);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10600))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
        v17 = *(a1 + 56);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetForceZeroMVEn0", 19539, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_7AC9C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 107928) = v9;
      *(a1 + 10601) = v9;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
          v15 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetForceZeroResEn", 19586, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetForceZeroResEn", 19586, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetForceZeroResEn", 19576, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_7AFE0(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10601);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10601))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
        v17 = *(a1 + 56);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetForceZeroResEn", 19623, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_7B204(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v26 = sub_160F34(0x1Eu);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v27, 30, v28, "AVE_Prop_HEVC_SetMultipleFTQ", 19671, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v29 = sub_175AE4();
        v76 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v29, 30, v76, "AVE_Prop_HEVC_SetMultipleFTQ");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v27, 30, v28, "AVE_Prop_HEVC_SetMultipleFTQ");
      }
    }

    return 4294966295;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a4))
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v30 = sub_160F34(0x1Eu);
      v31 = sub_175AE4();
      v32 = sub_160F68(4);
      v33 = *(a1 + 56);
      v34 = CFGetTypeID(a4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v31, 30, v32, "AVE_Prop_HEVC_SetMultipleFTQ", 19681, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)", a1, v33, a2, a3, a4, v34);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        v35 = *(a1 + 56);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v36 = sub_160F34(0x1Eu);
      v37 = sub_175AE4();
      v38 = sub_160F68(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | MultipleFTQSameLambda not found %p %lld %p %p %p\n", v37, 30, v38, "AVE_Prop_HEVC_SetMultipleFTQ", 19688, "pBoolean != __null", a1, *(a1 + 56), a2, a3, a4);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
      }

      v81 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | MultipleFTQSameLambda not found %p %lld %p %p %p", v37, 30, v38, "AVE_Prop_HEVC_SetMultipleFTQ", 19688);
    }

    return 4294966295;
  }

  v10 = Value;
  v11 = CFBooleanGetTypeID();
  if (v11 != CFGetTypeID(v10))
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v39 = sub_160F34(0x1Eu);
      v40 = sub_175AE4();
      v41 = sub_160F68(4);
      v42 = *(a1 + 56);
      v43 = CFGetTypeID(v10);
      if (!v39)
      {
        v55 = "CFBooleanGetTypeID() == CFGetTypeID(pBoolean)";
        v56 = 19693;
        goto LABEL_50;
      }

      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v40, 30, v41, "AVE_Prop_HEVC_SetMultipleFTQ", 19693, "CFBooleanGetTypeID() == CFGetTypeID(pBoolean)", a1, v42, a2, a3, a4, v43);
      v44 = sub_175AE4();
      v45 = sub_160F68(4);
      v46 = *(a1 + 56);
      CFGetTypeID(v10);
      v78 = "CFBooleanGetTypeID() == CFGetTypeID(pBoolean)";
      v47 = 19693;
LABEL_41:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v44, 30, v45, "AVE_Prop_HEVC_SetMultipleFTQ", v47, v78);
    }

    return 4294965293;
  }

  v12 = CFBooleanGetValue(v10) != 0;
  *(a1 + 107940) = v12;
  *(a1 + 10596) = v12;
  v13 = CFDictionaryGetValue(a4, @"MultipleFTQNum");
  if (!v13)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v48 = sub_160F34(0x1Eu);
      v49 = sub_175AE4();
      v50 = sub_160F68(4);
      if (v48)
      {
        printf("%lld %d AVE %s: %s:%d %s | MultipleFTQNum not found %p %lld %p %p %p\n", v49, 30, v50, "AVE_Prop_HEVC_SetMultipleFTQ", 19703, "pNumber != __null", a1, *(a1 + 56), a2, a3, a4);
        v49 = sub_175AE4();
        v50 = sub_160F68(4);
      }

      v82 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | MultipleFTQNum not found %p %lld %p %p %p", v49, 30, v50, "AVE_Prop_HEVC_SetMultipleFTQ", 19703);
    }

    return 4294966295;
  }

  v14 = v13;
  v15 = CFNumberGetTypeID();
  if (v15 != CFGetTypeID(v14))
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v51 = sub_160F34(0x1Eu);
      v40 = sub_175AE4();
      v41 = sub_160F68(4);
      v52 = *(a1 + 56);
      v53 = CFGetTypeID(v14);
      if (!v51)
      {
        v55 = "CFNumberGetTypeID() == CFGetTypeID(pNumber)";
        v56 = 19708;
        goto LABEL_50;
      }

      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v40, 30, v41, "AVE_Prop_HEVC_SetMultipleFTQ", 19708, "CFNumberGetTypeID() == CFGetTypeID(pNumber)", a1, v52, a2, a3, a4, v53);
      v44 = sub_175AE4();
      v45 = sub_160F68(4);
      v54 = *(a1 + 56);
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
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294965292;
    }

    v57 = sub_160F34(0x1Eu);
    v58 = sub_175AE4();
    v59 = sub_160F68(4);
    if (v57)
    {
      v60 = "iNum >= 0";
      v61 = 19715;
      printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v58, 30, v59, "AVE_Prop_HEVC_SetMultipleFTQ", 19715, "iNum >= 0", a1, *(a1 + 56), a2, a3, a4, HIDWORD(valuePtr));
      v62 = sub_175AE4();
      v63 = sub_160F68(4);
      v64 = *(a1 + 56);
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

  *(a1 + 107932) = HIDWORD(valuePtr);
  *(a1 + 10588) = v16;
  v17 = CFDictionaryGetValue(a4, @"MultipleFTQType");
  if (!v17)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v65 = sub_160F34(0x1Eu);
      v66 = sub_175AE4();
      v67 = sub_160F68(4);
      if (v65)
      {
        printf("%lld %d AVE %s: %s:%d %s | MultipleFTQType not found %p %lld %p %p %p\n", v66, 30, v67, "AVE_Prop_HEVC_SetMultipleFTQ", 19724, "pNumber != __null", a1, *(a1 + 56), a2, a3, a4);
        v66 = sub_175AE4();
        v67 = sub_160F68(4);
      }

      v83 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | MultipleFTQType not found %p %lld %p %p %p", v66, 30, v67, "AVE_Prop_HEVC_SetMultipleFTQ", 19724);
    }

    return 4294966295;
  }

  v18 = v17;
  v19 = CFNumberGetTypeID();
  if (v19 != CFGetTypeID(v18))
  {
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294965293;
    }

    v68 = sub_160F34(0x1Eu);
    v40 = sub_175AE4();
    v41 = sub_160F68(4);
    v69 = *(a1 + 56);
    v70 = CFGetTypeID(v18);
    if (v68)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v40, 30, v41, "AVE_Prop_HEVC_SetMultipleFTQ", 19729, "CFNumberGetTypeID() == CFGetTypeID(pNumber)", a1, v69, a2, a3, a4, v70);
      v44 = sub_175AE4();
      v45 = sub_160F68(4);
      v71 = *(a1 + 56);
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
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294965292;
    }

    v74 = sub_160F34(0x1Eu);
    v58 = sub_175AE4();
    v59 = sub_160F68(4);
    if (v74)
    {
      v60 = "iType >= 0";
      v61 = 19736;
      printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v58, 30, v59, "AVE_Prop_HEVC_SetMultipleFTQ", 19736, "iType >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
      v62 = sub_175AE4();
      v63 = sub_160F68(4);
      v75 = *(a1 + 56);
      goto LABEL_47;
    }

    v72 = "iType >= 0";
    v73 = 19736;
    goto LABEL_61;
  }

  *(a1 + 107936) = valuePtr;
  *(a1 + 10592) = v20;
  result = sub_160EF0(0x1Eu, 7);
  if (result)
  {
    v22 = sub_160F34(0x1Eu);
    v23 = sub_175AE4();
    v24 = sub_160F68(7);
    if (v22)
    {
      printf("%lld %d AVE %s: %p %lld SetProp %s: %d %d %d\n", v23, 30, v24, a1, *(a1 + 56), *a2, v12, HIDWORD(valuePtr), valuePtr);
      v23 = sub_175AE4();
      sub_160F68(7);
      v25 = *(a1 + 56);
      v77 = *a2;
    }

    syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d %d %d", v23, 30);
    return 0;
  }

  return result;
}

uint64_t sub_7BD20(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFDictionary **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = *(a1 + 10596);
      v13 = sub_14B618(@"MultipleFTQSameLambda", v12 != 0, Mutable);
      if (v13)
      {
        v14 = v13;
        if (sub_160EF0(0x32u, 4))
        {
          v15 = sub_160F34(0x32u);
          v16 = sub_175AE4();
          v17 = sub_160F68(4);
          v18 = *(a1 + 10588);
          if (v15)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to add MultipleFTQSameLambda %p %lld %p %p %p %p %d %d %d\n", v16, 50, v17, "AVE_Prop_HEVC_GetMultipleFTQ", 19793, "ret == 0", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 10596), *(a1 + 10588), *(a1 + 10592));
            v16 = sub_175AE4();
            v17 = sub_160F68(4);
          }

          v53 = *(a1 + 10588);
          v58 = *(a1 + 10592);
          v49 = *(a1 + 10596);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add MultipleFTQSameLambda %p %lld %p %p %p %p %d %d %d", v16, 50, v17, "AVE_Prop_HEVC_GetMultipleFTQ", 19793, "ret == 0", a1, *(a1 + 56));
        }
      }

      else
      {
        v30 = *(a1 + 10588);
        v31 = sub_14B9CC(@"MultipleFTQNum", v30, v11);
        if (v31)
        {
          v14 = v31;
          if (sub_160EF0(0x32u, 4))
          {
            v32 = sub_160F34(0x32u);
            v33 = sub_175AE4();
            v34 = sub_160F68(4);
            v35 = *(a1 + 10588);
            if (v32)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to add MultipleFTQNum %p %lld %p %p %p %p %d %d %d\n", v33, 50, v34, "AVE_Prop_HEVC_GetMultipleFTQ", 19801, "ret == 0", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 10596), *(a1 + 10588), *(a1 + 10592));
              v33 = sub_175AE4();
              v34 = sub_160F68(4);
            }

            v55 = *(a1 + 10588);
            v60 = *(a1 + 10592);
            v51 = *(a1 + 10596);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add MultipleFTQNum %p %lld %p %p %p %p %d %d %d", v33, 50, v34, "AVE_Prop_HEVC_GetMultipleFTQ", 19801, "ret == 0", a1, *(a1 + 56));
          }
        }

        else
        {
          v36 = *(a1 + 10592);
          v37 = sub_14B9CC(@"MultipleFTQType", v36, v11);
          if (v37)
          {
            v14 = v37;
            if (sub_160EF0(0x32u, 4))
            {
              v38 = sub_160F34(0x32u);
              v39 = sub_175AE4();
              v40 = sub_160F68(4);
              v41 = *(a1 + 10588);
              if (v38)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to add MultipleFTQType %p %lld %p %p %p %p %d %d %d\n", v39, 50, v40, "AVE_Prop_HEVC_GetMultipleFTQ", 19809, "ret == 0", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 10596), *(a1 + 10588), *(a1 + 10592));
                v39 = sub_175AE4();
                v40 = sub_160F68(4);
              }

              v57 = *(a1 + 10588);
              v61 = *(a1 + 10592);
              v52 = *(a1 + 10596);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add MultipleFTQType %p %lld %p %p %p %p %d %d %d", v39, 50, v40, "AVE_Prop_HEVC_GetMultipleFTQ", 19809, "ret == 0", a1, *(a1 + 56));
            }
          }

          else
          {
            *a5 = v11;
            if (sub_160EF0(0x1Eu, 7))
            {
              v42 = sub_160F34(0x1Eu);
              v43 = sub_175AE4();
              v44 = sub_160F68(7);
              if (v42)
              {
                printf("%lld %d AVE %s: %p %lld GetProp %s: %d %d %d\n", v43, 30, v44, a1, *(a1 + 56), *a2, v12 != 0, v30, v36);
                v43 = sub_175AE4();
                sub_160F68(7);
                v45 = *(a1 + 56);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v23 = sub_160F34(0x1Eu);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        v26 = *(a1 + 56);
        v27 = *(a1 + 10588);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld %p %p %p %p %d %d %d\n", v24, 30, v25, "AVE_Prop_HEVC_GetMultipleFTQ", 19785, "pDict != __null", a1, v26, a2, allocator, a4, a5, *(a1 + 10596), *(a1 + 10588), *(a1 + 10592));
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          v54 = *(a1 + 10588);
          v59 = *(a1 + 10592);
          v50 = *(a1 + 10596);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld %p %p %p %p %d %d %d", v28, 30, v29, "AVE_Prop_HEVC_GetMultipleFTQ", 19785, "pDict != __null", a1, *(a1 + 56));
        }

        else
        {
          v56 = *(a1 + 10588);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld %p %p %p %p %d %d %d", v24, 30, v25, "AVE_Prop_HEVC_GetMultipleFTQ", 19785, "pDict != __null", a1, v26);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetMultipleFTQ", 19773, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v22 = sub_175AE4();
        v47 = sub_160F68(4);
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

uint64_t sub_7C42C(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  v116 = 0;
  valuePtr = 0;
  v115 = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v34 = sub_160F34(0x1Eu);
      v35 = sub_175AE4();
      v36 = sub_160F68(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v35, 30, v36, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19858, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v37 = sub_175AE4();
        v101 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v37, 30, v101, "AVE_Prop_HEVC_SetSubjectiveDistortion32");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v35, 30, v36, "AVE_Prop_HEVC_SetSubjectiveDistortion32");
      }
    }

    return 4294966295;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a4))
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v38 = sub_160F34(0x1Eu);
      v39 = sub_175AE4();
      v40 = sub_160F68(4);
      v41 = *(a1 + 56);
      v42 = CFGetTypeID(a4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v39, 30, v40, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19868, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)", a1, v41, a2, a3, a4, v42);
        v39 = sub_175AE4();
        v40 = sub_160F68(4);
        v43 = *(a1 + 56);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v44 = sub_160F34(0x1Eu);
      v45 = sub_175AE4();
      v46 = sub_160F68(4);
      if (v44)
      {
        printf("%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight0 not found %p %lld %p %p %p\n", v45, 30, v46, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19875, "pNumber != __null", a1, *(a1 + 56), a2, a3, a4);
        v45 = sub_175AE4();
        v46 = sub_160F68(4);
      }

      v105 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight0 not found %p %lld %p %p %p", v45, 30, v46, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19875);
    }

    return 4294966295;
  }

  v10 = Value;
  v11 = CFNumberGetTypeID();
  if (v11 != CFGetTypeID(v10))
  {
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294965293;
    }

    v47 = sub_160F34(0x1Eu);
    v48 = sub_175AE4();
    v49 = sub_160F68(4);
    v50 = *(a1 + 56);
    v51 = CFGetTypeID(v10);
    if (!v47)
    {
      v64 = 19880;
      goto LABEL_48;
    }

    printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v48, 30, v49, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19880, "CFNumberGetTypeID() == CFGetTypeID(pNumber)", a1, v50, a2, a3, a4, v51);
    v52 = sub_175AE4();
    v53 = sub_160F68(4);
    v54 = *(a1 + 56);
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
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294965292;
    }

    v56 = sub_160F34(0x1Eu);
    v57 = sub_175AE4();
    v58 = sub_160F68(4);
    if (!v56)
    {
      v75 = "iWeight0 >= 0";
      v76 = 19887;
      goto LABEL_59;
    }

    v59 = "iWeight0 >= 0";
    v60 = 19887;
    printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v57, 30, v58, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19887, "iWeight0 >= 0", a1, *(a1 + 56), a2, a3, a4, HIDWORD(valuePtr));
    v61 = sub_175AE4();
    v62 = sub_160F68(4);
    v63 = *(a1 + 56);
LABEL_45:
    syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v61, 30, v62, "AVE_Prop_HEVC_SetSubjectiveDistortion32", v60, v59);
    return 4294965292;
  }

  *(a1 + 107944) = HIDWORD(valuePtr);
  *(a1 + 10568) = v12;
  v13 = CFDictionaryGetValue(a4, @"SubjectiveDistortion32Weight1");
  if (!v13)
  {
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294966295;
    }

    v65 = sub_160F34(0x1Eu);
    v66 = sub_175AE4();
    v67 = sub_160F68(4);
    if (!v65)
    {
      v107 = *(a1 + 56);
      v79 = 19897;
      goto LABEL_65;
    }

    v68 = 19897;
    printf("%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight1 not found %p %lld %p %p %p\n", v66, 30, v67, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19897, "pNumber != __null", a1, *(a1 + 56), a2, a3, a4);
LABEL_54:
    v69 = sub_175AE4();
    v70 = sub_160F68(4);
    v106 = *(a1 + 56);
    syslog(3, "%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight1 not found %p %lld %p %p %p", v69, 30, v70, "AVE_Prop_HEVC_SetSubjectiveDistortion32", v68);
    return 4294966295;
  }

  v14 = v13;
  v15 = CFNumberGetTypeID();
  if (v15 != CFGetTypeID(v14))
  {
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294965293;
    }

    v71 = sub_160F34(0x1Eu);
    v48 = sub_175AE4();
    v49 = sub_160F68(4);
    v72 = *(a1 + 56);
    v73 = CFGetTypeID(v14);
    if (!v71)
    {
      v64 = 19902;
      goto LABEL_48;
    }

    printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v48, 30, v49, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19902, "CFNumberGetTypeID() == CFGetTypeID(pNumber)", a1, v72, a2, a3, a4, v73);
    v52 = sub_175AE4();
    v53 = sub_160F68(4);
    v74 = *(a1 + 56);
    CFGetTypeID(v14);
    v55 = 19902;
    goto LABEL_39;
  }

  CFNumberGetValue(v14, kCFNumberSInt32Type, &valuePtr);
  v16 = valuePtr;
  if ((valuePtr & 0x80000000) != 0)
  {
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294965292;
    }

    v77 = sub_160F34(0x1Eu);
    v57 = sub_175AE4();
    v58 = sub_160F68(4);
    if (!v77)
    {
      v75 = "iWeight1 >= 0";
      v76 = 19909;
      goto LABEL_59;
    }

    v59 = "iWeight1 >= 0";
    v60 = 19909;
    printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v57, 30, v58, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19909, "iWeight1 >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
    v61 = sub_175AE4();
    v62 = sub_160F68(4);
    v78 = *(a1 + 56);
    goto LABEL_45;
  }

  *(a1 + 107948) = valuePtr;
  *(a1 + 10572) = v16;
  v17 = CFDictionaryGetValue(a4, @"SubjectiveDistortion32Weight2");
  if (!v17)
  {
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294966295;
    }

    v80 = sub_160F34(0x1Eu);
    v66 = sub_175AE4();
    v67 = sub_160F68(4);
    if (!v80)
    {
      v108 = *(a1 + 56);
      v79 = 19919;
      goto LABEL_65;
    }

    v68 = 19919;
    printf("%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight1 not found %p %lld %p %p %p\n", v66, 30, v67, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19919, "pNumber != __null", a1, *(a1 + 56), a2, a3, a4);
    goto LABEL_54;
  }

  v18 = v17;
  v19 = CFNumberGetTypeID();
  if (v19 != CFGetTypeID(v18))
  {
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294965293;
    }

    v81 = sub_160F34(0x1Eu);
    v48 = sub_175AE4();
    v49 = sub_160F68(4);
    v82 = *(a1 + 56);
    v83 = CFGetTypeID(v18);
    if (!v81)
    {
      v64 = 19924;
      goto LABEL_48;
    }

    printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v48, 30, v49, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19924, "CFNumberGetTypeID() == CFGetTypeID(pNumber)", a1, v82, a2, a3, a4, v83);
    v52 = sub_175AE4();
    v53 = sub_160F68(4);
    v84 = *(a1 + 56);
    CFGetTypeID(v18);
    v55 = 19924;
    goto LABEL_39;
  }

  CFNumberGetValue(v18, kCFNumberSInt32Type, &v116 + 4);
  v20 = HIDWORD(v116);
  if (v116 < 0)
  {
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294965292;
    }

    v85 = sub_160F34(0x1Eu);
    v57 = sub_175AE4();
    v58 = sub_160F68(4);
    if (!v85)
    {
      v75 = "iWeight2 >= 0";
      v76 = 19931;
      goto LABEL_59;
    }

    v59 = "iWeight2 >= 0";
    v60 = 19931;
    printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v57, 30, v58, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19931, "iWeight2 >= 0", a1, *(a1 + 56), a2, a3, a4, HIDWORD(v116));
    v61 = sub_175AE4();
    v62 = sub_160F68(4);
    v86 = *(a1 + 56);
    goto LABEL_45;
  }

  *(a1 + 107952) = HIDWORD(v116);
  *(a1 + 10576) = v20;
  v21 = CFDictionaryGetValue(a4, @"SubjectiveDistortion32Offset");
  if (!v21)
  {
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294966295;
    }

    v87 = sub_160F34(0x1Eu);
    v66 = sub_175AE4();
    v67 = sub_160F68(4);
    if (!v87)
    {
      v109 = *(a1 + 56);
      v79 = 19941;
      goto LABEL_65;
    }

    v68 = 19941;
    printf("%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight1 not found %p %lld %p %p %p\n", v66, 30, v67, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19941, "pNumber != __null", a1, *(a1 + 56), a2, a3, a4);
    goto LABEL_54;
  }

  v22 = v21;
  v23 = CFNumberGetTypeID();
  if (v23 != CFGetTypeID(v22))
  {
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294965293;
    }

    v88 = sub_160F34(0x1Eu);
    v48 = sub_175AE4();
    v49 = sub_160F68(4);
    v89 = *(a1 + 56);
    v90 = CFGetTypeID(v22);
    if (!v88)
    {
      v64 = 19946;
      goto LABEL_48;
    }

    printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v48, 30, v49, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19946, "CFNumberGetTypeID() == CFGetTypeID(pNumber)", a1, v89, a2, a3, a4, v90);
    v52 = sub_175AE4();
    v53 = sub_160F68(4);
    v91 = *(a1 + 56);
    CFGetTypeID(v22);
    v55 = 19946;
    goto LABEL_39;
  }

  CFNumberGetValue(v22, kCFNumberSInt32Type, &v116);
  v24 = v116;
  if ((v116 & 0x80000000) != 0)
  {
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294965292;
    }

    v92 = sub_160F34(0x1Eu);
    v57 = sub_175AE4();
    v58 = sub_160F68(4);
    if (!v92)
    {
      v75 = "iOffset >= 0";
      v76 = 19953;
      goto LABEL_59;
    }

    v59 = "iOffset >= 0";
    v60 = 19953;
    printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v57, 30, v58, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19953, "iOffset >= 0", a1, *(a1 + 56), a2, a3, a4, v116);
    v61 = sub_175AE4();
    v62 = sub_160F68(4);
    v93 = *(a1 + 56);
    goto LABEL_45;
  }

  *(a1 + 107956) = v116;
  *(a1 + 10580) = v24;
  v25 = CFDictionaryGetValue(a4, @"SubjectiveDistortion32Scale");
  if (!v25)
  {
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294966295;
    }

    v94 = sub_160F34(0x1Eu);
    v66 = sub_175AE4();
    v67 = sub_160F68(4);
    if (v94)
    {
      v68 = 19963;
      printf("%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight1 not found %p %lld %p %p %p\n", v66, 30, v67, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19963, "pNumber != __null", a1, *(a1 + 56), a2, a3, a4);
      goto LABEL_54;
    }

    v110 = *(a1 + 56);
    v79 = 19963;
LABEL_65:
    syslog(3, "%lld %d AVE %s: %s:%d %s | SubjectiveDistortion32Weight1 not found %p %lld %p %p %p", v66, 30, v67, "AVE_Prop_HEVC_SetSubjectiveDistortion32", v79);
    return 4294966295;
  }

  v26 = v25;
  v27 = CFNumberGetTypeID();
  if (v27 != CFGetTypeID(v26))
  {
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294965293;
    }

    v95 = sub_160F34(0x1Eu);
    v48 = sub_175AE4();
    v49 = sub_160F68(4);
    v96 = *(a1 + 56);
    v97 = CFGetTypeID(v26);
    if (v95)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v48, 30, v49, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19968, "CFNumberGetTypeID() == CFGetTypeID(pNumber)", a1, v96, a2, a3, a4, v97);
      v52 = sub_175AE4();
      v53 = sub_160F68(4);
      v98 = *(a1 + 56);
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
    if (!sub_160EF0(0x1Eu, 4))
    {
      return 4294965292;
    }

    v99 = sub_160F34(0x1Eu);
    v57 = sub_175AE4();
    v58 = sub_160F68(4);
    if (v99)
    {
      v59 = "iScale >= 0";
      v60 = 19975;
      printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v57, 30, v58, "AVE_Prop_HEVC_SetSubjectiveDistortion32", 19975, "iScale >= 0", a1, *(a1 + 56), a2, a3, a4, v115);
      v61 = sub_175AE4();
      v62 = sub_160F68(4);
      v100 = *(a1 + 56);
      goto LABEL_45;
    }

    v75 = "iScale >= 0";
    v76 = 19975;
LABEL_59:
    syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v57, 30, v58, "AVE_Prop_HEVC_SetSubjectiveDistortion32", v76, v75);
    return 4294965292;
  }

  *(a1 + 107960) = v115;
  *(a1 + 10584) = v28;
  result = sub_160EF0(0x1Eu, 7);
  if (result)
  {
    v30 = sub_160F34(0x1Eu);
    v31 = sub_175AE4();
    v32 = sub_160F68(7);
    if (v30)
    {
      printf("%lld %d AVE %s: %p %lld SetProp %s: %d %d %d %d %d\n", v31, 30, v32, a1, *(a1 + 56), *a2, HIDWORD(valuePtr), valuePtr, HIDWORD(v116), v116, v115);
      v31 = sub_175AE4();
      v32 = sub_160F68(7);
      v33 = *(a1 + 56);
      v102 = *a2;
    }

    syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d %d %d %d %d", v31, 30, v32);
    return 0;
  }

  return result;
}

uint64_t sub_7D42C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFDictionary **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = *(a1 + 10568);
      v13 = sub_14B9CC(@"SubjectiveDistortion32Weight0", v12, Mutable);
      if (v13)
      {
        v14 = v13;
        if (sub_160EF0(0x32u, 4))
        {
          v15 = sub_160F34(0x32u);
          v16 = sub_175AE4();
          v17 = sub_160F68(4);
          v18 = *(a1 + 10580);
          if (v15)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to add Weight0 %p %lld %p %p %p %p %d %d %d %d %d\n", v16, 50, v17, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20036, "ret == 0", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 10568), *(a1 + 10572), *(a1 + 10576), *(a1 + 10580), *(a1 + 10584));
            v16 = sub_175AE4();
            v17 = sub_160F68(4);
          }

          v78 = *(a1 + 10580);
          v85 = *(a1 + 10584);
          v66 = *(a1 + 10572);
          v72 = *(a1 + 10576);
          v60 = *(a1 + 10568);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Weight0 %p %lld %p %p %p %p %d %d %d %d %d", v16, 50, v17, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20036, "ret == 0", a1, *(a1 + 56), a2);
        }
      }

      else
      {
        v30 = *(a1 + 10572);
        v31 = sub_14B9CC(@"SubjectiveDistortion32Weight1", v30, v11);
        if (v31)
        {
          v14 = v31;
          if (sub_160EF0(0x32u, 4))
          {
            v32 = sub_160F34(0x32u);
            v33 = sub_175AE4();
            v34 = sub_160F68(4);
            v35 = *(a1 + 10580);
            if (v32)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to add Weight1 %p %lld %p %p %p %p %d %d %d %d %d\n", v33, 50, v34, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20045, "ret == 0", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 10568), *(a1 + 10572), *(a1 + 10576), *(a1 + 10580), *(a1 + 10584));
              v33 = sub_175AE4();
              v34 = sub_160F68(4);
            }

            v80 = *(a1 + 10580);
            v87 = *(a1 + 10584);
            v68 = *(a1 + 10572);
            v74 = *(a1 + 10576);
            v62 = *(a1 + 10568);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Weight1 %p %lld %p %p %p %p %d %d %d %d %d", v33, 50, v34, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20045, "ret == 0", a1, *(a1 + 56), a2);
          }
        }

        else
        {
          v36 = *(a1 + 10576);
          v37 = sub_14B9CC(@"SubjectiveDistortion32Weight2", v36, v11);
          if (v37)
          {
            v14 = v37;
            if (sub_160EF0(0x32u, 4))
            {
              v38 = sub_160F34(0x32u);
              v39 = sub_175AE4();
              v40 = sub_160F68(4);
              v41 = *(a1 + 10580);
              if (v38)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to add Weight2 %p %lld %p %p %p %p %d %d %d %d %d\n", v39, 50, v40, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20054, "ret == 0", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 10568), *(a1 + 10572), *(a1 + 10576), *(a1 + 10580), *(a1 + 10584));
                v39 = sub_175AE4();
                v40 = sub_160F68(4);
              }

              v82 = *(a1 + 10580);
              v88 = *(a1 + 10584);
              v69 = *(a1 + 10572);
              v75 = *(a1 + 10576);
              v63 = *(a1 + 10568);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Weight2 %p %lld %p %p %p %p %d %d %d %d %d", v39, 50, v40, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20054, "ret == 0", a1, *(a1 + 56), a2);
            }
          }

          else
          {
            v92 = v36;
            v42 = *(a1 + 10580);
            v43 = sub_14B9CC(@"SubjectiveDistortion32Offset", v42, v11);
            if (v43)
            {
              v14 = v43;
              if (sub_160EF0(0x32u, 4))
              {
                v44 = sub_160F34(0x32u);
                v45 = sub_175AE4();
                v46 = sub_160F68(4);
                v47 = *(a1 + 10580);
                if (v44)
                {
                  printf("%lld %d AVE %s: %s:%d %s | fail to add Offset %p %lld %p %p %p %p %d %d %d %d %d\n", v45, 50, v46, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20063, "ret == 0", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 10568), *(a1 + 10572), *(a1 + 10576), *(a1 + 10580), *(a1 + 10584));
                  v45 = sub_175AE4();
                  v46 = sub_160F68(4);
                }

                v83 = *(a1 + 10580);
                v89 = *(a1 + 10584);
                v70 = *(a1 + 10572);
                v76 = *(a1 + 10576);
                v64 = *(a1 + 10568);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Offset %p %lld %p %p %p %p %d %d %d %d %d", v45, 50, v46, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20063, "ret == 0", a1, *(a1 + 56), a2);
              }
            }

            else
            {
              v91 = v42;
              sub_14B9CC(@"SubjectiveDistortion32Scale", *(a1 + 10584), v11);
              v48 = *(a1 + 10584);
              v49 = sub_14B9CC(@"SubjectiveDistortion32Scale", v48, v11);
              if (v49)
              {
                v14 = v49;
                if (sub_160EF0(0x32u, 4))
                {
                  v50 = sub_160F34(0x32u);
                  v51 = sub_175AE4();
                  v52 = sub_160F68(4);
                  v53 = *(a1 + 10580);
                  if (v50)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | fail to add Scale %p %lld %p %p %p %p %d %d %d %d %d\n", v51, 50, v52, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20074, "ret == 0", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 10568), *(a1 + 10572), *(a1 + 10576), *(a1 + 10580), *(a1 + 10584));
                    v51 = sub_175AE4();
                    v52 = sub_160F68(4);
                  }

                  v84 = *(a1 + 10580);
                  v90 = *(a1 + 10584);
                  v71 = *(a1 + 10572);
                  v77 = *(a1 + 10576);
                  v65 = *(a1 + 10568);
                  syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Scale %p %lld %p %p %p %p %d %d %d %d %d", v51, 50, v52, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20074, "ret == 0", a1, *(a1 + 56), a2);
                }
              }

              else
              {
                *a5 = v11;
                if (sub_160EF0(0x1Eu, 7))
                {
                  v14 = sub_160F34(0x1Eu);
                  v54 = sub_175AE4();
                  v55 = sub_160F68(7);
                  if (!v14)
                  {
                    syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %d %d %d %d", v54, 30, v55);
                    return v14;
                  }

                  printf("%lld %d AVE %s: %p %lld GetProp %s: %d %d %d %d %d\n", v54, 30, v55, a1, *(a1 + 56), *a2, v12, v30, v92, v91, v48);
                  v56 = sub_175AE4();
                  v57 = sub_160F68(7);
                  syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %d %d %d %d", v56, 30, v57, a1, *(a1 + 56), *a2, v12, v30, v92, v91, v48);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v23 = sub_160F34(0x1Eu);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        v26 = *(a1 + 56);
        v27 = *(a1 + 10580);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld %p %p %p %p %d %d %d %d %d\n", v24, 30, v25, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20027, "pDict != __null", a1, v26, a2, allocator, a4, a5, *(a1 + 10568), *(a1 + 10572), *(a1 + 10576), *(a1 + 10580), *(a1 + 10584));
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          v79 = *(a1 + 10580);
          v86 = *(a1 + 10584);
          v67 = *(a1 + 10572);
          v73 = *(a1 + 10576);
          v61 = *(a1 + 10568);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld %p %p %p %p %d %d %d %d %d", v28, 30, v29, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20027, "pDict != __null", a1, *(a1 + 56), a2);
        }

        else
        {
          v81 = *(a1 + 10580);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld %p %p %p %p %d %d %d %d %d", v24, 30, v25, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20027, "pDict != __null", a1, v26, a2);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetSubjectiveDistortion32", 20014, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v22 = sub_175AE4();
        v59 = sub_160F68(4);
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

uint64_t sub_7DE84(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v27, 30, v28, "AVE_Prop_HEVC_SetLRMEOutputType", 20127, "(iLrmeOutType >= LRME_OUTPUT_BEST_MV) && (iLrmeOutType <= LRME_OUTPUT_ALL_MV_AND_STATISTICS)", a1, *(a1 + 56), a2, a3, a4, valuePtr, 0, 4);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v27, 30, v28, "AVE_Prop_HEVC_SetLRMEOutputType", 20127, "(iLrmeOutType >= LRME_OUTPUT_BEST_MV) && (iLrmeOutType <= LRME_OUTPUT_ALL_MV_AND_STATISTICS)", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 107964) = valuePtr;
        *(a1 + 11764) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetLRMEOutputType", 20116, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetLRMEOutputType", 20116, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetLRMEOutputType", 20106, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_7E2EC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 11764);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetLRMEOutputType", 20173, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetLRMEOutputType", 20173, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetLRMEOutputType", 20163, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_7E61C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 107968) = v9;
      *(a1 + 10248) = v9;
      v10 = sub_16FD90(*(a1 + 68));
      if (v10)
      {
        v11 = v10;
        v12 = sub_14E330(*(a1 + 10252), *(a1 + 1444), *(*(v10 + 8) + 16), *(a1 + 10248), (a1 + 10252));
        if (v12)
        {
          v13 = v12;
          if (sub_160EF0(0x1Eu, 4))
          {
            v14 = sub_160F34(0x1Eu);
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            v17 = *(a1 + 56);
            if (v14)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to generate slice map %p %lld %p %p %d %d %d %d %d %p %d\n", v15, 30, v16, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20239, "ret == 0", a1, v17, a3, a4, *(a1 + 68), *(a1 + 10252), *(a1 + 1444), *(*(v11 + 8) + 16), *(a1 + 10248), (a1 + 10252), v13);
              v18 = sub_175AE4();
              v19 = sub_160F68(4);
              v46 = *(*(v11 + 8) + 16);
              v47 = *(a1 + 10248);
              v44 = *(a1 + 10252);
              v45 = *(a1 + 1444);
              v42 = *(a1 + 68);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to generate slice map %p %lld %p %p %d %d %d %d %d %p %d", v18, 30, v19, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20239, "ret == 0", a1, *(a1 + 56), a3);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to generate slice map %p %lld %p %p %d %d %d %d %d %p %d", v15, 30, v16, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20239, "ret == 0", a1, v17, a3);
            }
          }
        }

        else
        {
          if (sub_160EF0(0x1Eu, 7))
          {
            v34 = sub_160F34(0x1Eu);
            v35 = sub_175AE4();
            v36 = sub_160F68(7);
            v37 = *a2;
            if (v34)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v35, 30, v36, a1, *(a1 + 56), *a2, v9);
              v35 = sub_175AE4();
              sub_160F68(7);
              v38 = *(a1 + 56);
            }

            v41 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v35);
          }

          return 0;
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v30 = sub_160F34(0x1Eu);
          v31 = sub_175AE4();
          v32 = sub_160F68(4);
          if (v30)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %lld %p %p %d\n", v31, 30, v32, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20228, "pDevCap != __null", a1, *(a1 + 56), a3, a4, *(a1 + 68));
            v31 = sub_175AE4();
            v32 = sub_160F68(4);
            v33 = *(a1 + 56);
            v43 = *(a1 + 68);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %lld %p %p %d", v31, 30, v32, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20228);
        }

        return 4294966294;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v24 = sub_160F34(0x1Eu);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        v27 = *(a1 + 56);
        v28 = CFGetTypeID(a4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v25, 30, v26, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20217, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v27, a2, a3, a4, v28);
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
          v29 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v25, 30, v26, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20217, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v20 = sub_160F34(0x1Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableSliceEncodingMode", 20207, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v23 = sub_175AE4();
        v40 = sub_160F68(4);
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

uint64_t sub_7EBE0(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10248);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10248))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
        v17 = *(a1 + 56);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEnableSliceEncodingMode", 20270, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_7EE04(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetMCTFEdgeCount", 20326, "iEdgeCnt >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetMCTFEdgeCount", 20326, "iEdgeCnt >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 107864) = valuePtr;
        *(a1 + 10744) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFEdgeCount", 20317, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFEdgeCount", 20317, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMCTFEdgeCount", 20307, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_7F254(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10744);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFEdgeCount", 20372, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFEdgeCount", 20372, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMCTFEdgeCount", 20362, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_7F584(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetMCTFEdgeThresh", 20423, "iEdgeThresh >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetMCTFEdgeThresh", 20423, "iEdgeThresh >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 107868) = valuePtr;
        *(a1 + 10748) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFEdgeThresh", 20414, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFEdgeThresh", 20414, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMCTFEdgeThresh", 20404, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_7F9D4(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10748);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFEdgeThresh", 20469, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFEdgeThresh", 20469, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMCTFEdgeThresh", 20459, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_7FD04(void *a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = -2;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294965293;
      }

      v27 = sub_160F34(0x1Eu);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      v30 = a1[7];
      v31 = CFGetTypeID(a4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v28, 30, v29, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20514, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v30, a2, a3, a4, v31);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
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
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v28, 30, v29, "AVE_Prop_HEVC_SetMCTFStrengthLevel", v41, v40);
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
          if (sub_160EF0(0x1Eu, 4))
          {
            v42 = sub_160F34(0x1Eu);
            v43 = sub_175AE4();
            v44 = sub_160F68(4);
            if (v42)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v43, 30, v44, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20531, "pNum != __null", a1, a1[7], a2, a3, a4);
              v43 = sub_175AE4();
              v44 = sub_160F68(4);
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
          if (sub_160EF0(0x1Eu, 4))
          {
            v49 = sub_160F34(0x1Eu);
            v50 = sub_175AE4();
            v51 = sub_160F68(4);
            if (v49)
            {
              printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)\n", v50, 30, v51, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20549, "0 <= iMCTFStrengthLevel && iMCTFStrengthLevel < 25", a1, a1[7], a2, a3, a4, valuePtr, 0, 25);
              v50 = sub_175AE4();
              v51 = sub_160F68(4);
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
          result = sub_160EF0(0x1Eu, 7);
          if (result)
          {
            v18 = sub_160F34(0x1Eu);
            v19 = sub_175AE4();
            v20 = sub_160F68(7);
            v21 = *a2;
            if (v18)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v19, 30, v20, a1, a1[7], *a2, v10);
              v19 = sub_175AE4();
              sub_160F68(7);
              v22 = a1[7];
            }

            v54 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v19);
            return 0;
          }

          return result;
        }
      }

      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294965293;
      }

      v45 = sub_160F34(0x1Eu);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      v46 = a1[7];
      v47 = CFGetTypeID(a4);
      if (v45)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v28, 30, v29, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20537, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v46, a2, a3, a4, v47);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
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

    if (sub_160EF0(0x1Eu, 4))
    {
      v35 = sub_160F34(0x1Eu);
      v36 = sub_175AE4();
      v37 = sub_160F68(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", v36, 30, v37, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20523, "0 < iNum && iNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1, a1[7], a2, a3, a4, v10, 0, 2);
        v38 = sub_175AE4();
        v39 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v23 = sub_160F34(0x1Eu);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_SetMCTFStrengthLevel", 20504, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v26 = sub_175AE4();
        v52 = sub_160F68(4);
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

uint64_t sub_804A8(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, *(a1 + 10556), &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v27 = sub_160F34(0x1Eu);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", v28, 30, v29, "AVE_Prop_HEVC_GetMCTFStrengthLevel", 20596, "pArray != __null", a1, *(a1 + 56), a2, allocator, a4, a5, 2);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          v30 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", v28, 30, v29, "AVE_Prop_HEVC_GetMCTFStrengthLevel", 20596, "pArray != __null", a1);
      }

      return 4294966293;
    }

    v11 = Mutable;
    if (*(a1 + 10556))
    {
      v12 = 2636;
      v13 = 10544;
      while (1)
      {
        v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, (a1 + v13));
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
        if (v16 >= *(a1 + 10556))
        {
          goto LABEL_10;
        }
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v31 = sub_160F34(0x1Eu);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v32, 30, v33, "AVE_Prop_HEVC_GetMCTFStrengthLevel", 20605, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, v12 - 2636, *(a1 + 4 * v12));
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
          v39 = *(a1 + 4 * v12);
          v38 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v32, 30, v33, "AVE_Prop_HEVC_GetMCTFStrengthLevel", 20605, "pNum != __null", a1);
      }

      CFRelease(v11);
      return 4294966293;
    }

LABEL_10:
    *a5 = v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(7);
      v21 = *(a1 + 10556);
      if (v18)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v19, 30, v20, a1, *(a1 + 56), *a2, *(a1 + 10556), v11);
        v19 = sub_175AE4();
        sub_160F68(7);
        v22 = *(a1 + 56);
        v36 = *(a1 + 10556);
        v35 = *a2;
      }

      else
      {
        v37 = *(a1 + 10556);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v19, 30);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v23 = sub_160F34(0x1Eu);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_GetMCTFStrengthLevel", 20588, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v26 = sub_175AE4();
        v34 = sub_160F68(4);
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

uint64_t sub_80940(uint64_t a1, const char **a2, const void *a3, const __CFArray *a4)
{
  memset(v63, 0, sizeof(v63));
  memset(v62, 0, sizeof(v62));
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = sub_1523F0(a4, v62);
      if (v9)
      {
        v61 = v9;
        v60 = a2;
        v10 = 0;
        v11 = v62;
        v12 = 1;
        do
        {
          v13 = v12;
          v14 = (a1 + 10612 + (v10 << 6));
          v15 = v11[1];
          *v14 = *v11;
          v14[1] = v15;
          v16 = v11[3];
          v14[2] = v11[2];
          v14[3] = v16;
          *(a1 + 10740) = 1;
          if (sub_160EF0(0x1Eu, 7))
          {
            v17 = sub_160F34(0x1Eu);
            v18 = sub_175AE4();
            v19 = sub_160F68(7);
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
              printf("%lld %d AVE %s: MCTF Params: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d\n", v18, 30, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, *(v11 + 14), v35);
              v18 = sub_175AE4();
              v19 = sub_160F68(7);
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

            syslog(3, "%lld %d AVE %s: MCTF Params: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", v18, 30, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
          }

          v12 = 0;
          v11 = v63;
          v10 = 1;
        }

        while ((v13 & 1) != 0);
        if (sub_160EF0(0x1Eu, 7))
        {
          v36 = sub_160F34(0x1Eu);
          v37 = sub_175AE4();
          v38 = sub_160F68(7);
          v39 = *v60;
          if (v36)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v37, 30, v38, a1, *(a1 + 56), *v60, *(a1 + 10740));
            v37 = sub_175AE4();
            sub_160F68(7);
            v40 = *(a1 + 56);
            v57 = *v60;
            v59 = *(a1 + 10740);
          }

          else
          {
            v58 = *v60;
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v37);
        }

        return v61;
      }

      else
      {
        result = sub_160EF0(0x1Eu, 4);
        if (result)
        {
          v52 = sub_160F34(0x1Eu);
          v53 = sub_175AE4();
          v54 = sub_160F68(4);
          if (v52)
          {
            printf("%lld %d AVE %s: %s:%d %s | error retrieve MCTF params %p %lld %p %p %p\n", v53, 30, v54, "AVE_Prop_HEVC_SetMCTFParams", 20669, "ret != 0", a1, *(a1 + 56), a2, a3, a4);
            v53 = sub_175AE4();
            v54 = sub_160F68(4);
            v55 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | error retrieve MCTF params %p %lld %p %p %p", v53, 30, v54, "AVE_Prop_HEVC_SetMCTFParams", 20669);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v45 = sub_160F34(0x1Eu);
        v46 = sub_175AE4();
        v47 = sub_160F68(4);
        v48 = *(a1 + 56);
        v49 = CFGetTypeID(a4);
        if (v45)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v46, 30, v47, "AVE_Prop_HEVC_SetMCTFParams", 20664, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v48, a2, a3, a4, v49);
          v46 = sub_175AE4();
          v47 = sub_160F68(4);
          v50 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v46, 30, v47, "AVE_Prop_HEVC_SetMCTFParams", 20664, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v41 = sub_160F34(0x1Eu);
      v42 = sub_175AE4();
      v43 = sub_160F68(4);
      if (v41)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v42, 30, v43, "AVE_Prop_HEVC_SetMCTFParams", 20655, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v44 = sub_175AE4();
        v56 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v44, 30, v56, "AVE_Prop_HEVC_SetMCTFParams");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v42, 30, v43, "AVE_Prop_HEVC_SetMCTFParams");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_80EF0(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (!a1 || !a2 || !a4 || !a5)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetMCTFParams", 20716, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v21 = sub_175AE4();
        v32 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v32, "AVE_Prop_HEVC_GetMCTFParams", 20716);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetMCTFParams", 20716);
      }
    }

    return 4294966295;
  }

  if (*(a1 + 10740) != 1)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v27 = sub_160F34(0x1Eu);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p\n", v28, 30, v29, "AVE_Prop_HEVC_GetMCTFParams", 20726, "pArray != __null", a1, *(a1 + 56), a2, allocator, a4, a5);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        v30 = *(a1 + 56);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p", v28, 30, v29, "AVE_Prop_HEVC_GetMCTFParams", 20726, "pArray != __null");
    }

    return 4294966293;
  }

  v11 = Mutable;
  v12 = sub_152F70((a1 + 10612), Mutable);
  if (v12)
  {
LABEL_16:
    *a5 = v11;
    if (sub_160EF0(0x1Eu, 7))
    {
      v22 = sub_160F34(0x1Eu);
      v23 = sub_175AE4();
      v24 = sub_160F68(7);
      v25 = *(a1 + 10740);
      if (v22)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v23, 30, v24, a1, *(a1 + 56), *a2, *(a1 + 10740), v11);
        v23 = sub_175AE4();
        sub_160F68(7);
        v26 = *(a1 + 56);
        v34 = *(a1 + 10740);
        v33 = *a2;
      }

      else
      {
        v35 = *(a1 + 10740);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v23, 30);
    }

    if (v12 && v11)
    {
      CFRelease(v11);
    }

    return v12;
  }

  if (sub_160EF0(0x1Eu, 4))
  {
    v12 = sub_160F34(0x1Eu);
    v13 = sub_175AE4();
    v14 = sub_160F68(4);
    v15 = *(a1 + 56);
    if (!v12)
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | error make MCTF params %p %lld %p %p", v13, 30, v14, "AVE_Prop_HEVC_GetMCTFParams", 20730, "ret != 0", a1, v15, a4, a5);
      return v12;
    }

    printf("%lld %d AVE %s: %s:%d %s | error make MCTF params %p %lld %p %p\n", v13, 30, v14, "AVE_Prop_HEVC_GetMCTFParams", 20730, "ret != 0", a1, v15, a4, a5);
    v16 = sub_175AE4();
    v17 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | error make MCTF params %p %lld %p %p", v16, 30, v17, "AVE_Prop_HEVC_GetMCTFParams", 20730, "ret != 0", a1, *(a1 + 56), a4, a5);
  }

  return 0;
}

uint64_t sub_8133C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20788, "iMaxNextRefNum >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20788, "iMaxNextRefNum >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 107880) = valuePtr;
        *(a1 + 11812) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20779, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20779, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20769, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_8178C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 11812);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFMaxNextRefNum", 20834, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFMaxNextRefNum", 20834, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMCTFMaxNextRefNum", 20824, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_81ABC(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20885, "iRamUpFrameNum >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20885, "iRamUpFrameNum >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 107884) = valuePtr;
        *(a1 + 1396) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20876, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20876, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20866, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_81F0C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1396);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFRampUpFrameNum", 20931, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMCTFRampUpFrameNum", 20931, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMCTFRampUpFrameNum", 20921, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_8223C(uint64_t a1, const char **a2, const void *a3, const __CFString *a4)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v12 = sub_160F34(0x1Eu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v13, 30, v14, "AVE_Prop_HEVC_SetMCTFLatencyMode", 20966, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v15 = sub_175AE4();
        v46 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v46, "AVE_Prop_HEVC_SetMCTFLatencyMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 30, v14, "AVE_Prop_HEVC_SetMCTFLatencyMode");
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
        v28 = sub_14CE6C(a4, (a1 + 106772), 128);
        if (v28 != (a1 + 106772))
        {
          sub_172100((a1 + 106772), 128, "%s", v29, v30, v31, v32, v33, v28);
        }

        if (sub_160EF0(0x1Eu, 7))
        {
          v34 = sub_160F34(0x1Eu);
          v35 = sub_175AE4();
          v36 = sub_160F68(7);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d  %p %lld %p %p %p iaVTLatencyMode = %s\n", v35, 30, v36, "AVE_Prop_HEVC_SetMCTFLatencyMode", 21011, a1, *(a1 + 56), a2, a3, a4, (a1 + 106772));
            v35 = sub_175AE4();
            v36 = sub_160F68(7);
            v37 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d  %p %lld %p %p %p iaVTLatencyMode = %s", v35, 30, v36, "AVE_Prop_HEVC_SetMCTFLatencyMode", 21011);
        }

        goto LABEL_35;
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v43 = sub_160F34(0x1Eu);
        v44 = sub_175AE4();
        v45 = sub_160F68(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p\n", v44, 30, v45, "AVE_Prop_HEVC_SetMCTFLatencyMode", 20999, "false", a1, *(a1 + 56), a2, a3, a4);
          v44 = sub_175AE4();
          v45 = sub_160F68(4);
        }

        v48 = *(a1 + 56);
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v17 = sub_160F34(0x1Eu);
          v18 = sub_175AE4();
          v19 = sub_160F68(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p %d (%d, %d)\n", v18, 30, v19, "AVE_Prop_HEVC_SetMCTFLatencyMode", 21024, "AVE_MCTF_Mode_Invalid < eMCTFLatencyMode && eMCTFLatencyMode < AVE_MCTF_Mode_Max", a1, *(a1 + 56), a2, a3, a4, v11, 0, 3);
            v18 = sub_175AE4();
            v19 = sub_160F68(4);
            v20 = *(a1 + 56);
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
    *(a1 + 106768) = v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v38 = sub_160F34(0x1Eu);
      v39 = sub_175AE4();
      v40 = sub_160F68(7);
      v41 = *a2;
      if (v38)
      {
        printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v39, 30, v40, a1, *(a1 + 56), *a2, v11);
        v39 = sub_175AE4();
        sub_160F68(7);
        v42 = *(a1 + 56);
      }

      v47 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v39);
      return 0;
    }

    return result;
  }

  if (sub_160EF0(0x1Eu, 4))
  {
    v22 = sub_160F34(0x1Eu);
    v23 = sub_175AE4();
    v24 = sub_160F68(4);
    v25 = *(a1 + 56);
    v26 = CFGetTypeID(a4);
    if (v22)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetMCTFLatencyMode", 20977, "CFStringGetTypeID() == CFGetTypeID(pValue) || CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      v27 = *(a1 + 56);
      CFGetTypeID(a4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetMCTFLatencyMode", 20977, "CFStringGetTypeID() == CFGetTypeID(pValue) || CFNumberGetTypeID() == CFGetTypeID(pValue)");
  }

  return 4294965293;
}

uint64_t sub_82918(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, const __CFString **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 106768);
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
        v11 = CFStringCreateWithCString(0, &unk_1A7265, 0);
      }
    }

    else
    {
      v11 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
      if (!v11)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v12 = sub_160F34(0x1Eu);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v13, 30, v14, "AVE_Prop_HEVC_GetMCTFLatencyMode", 21075, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
            v13 = sub_175AE4();
            v14 = sub_160F68(4);
            v15 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v13, 30, v14, "AVE_Prop_HEVC_GetMCTFLatencyMode", 21075, "pNum != __null", a1);
        }

        return 4294966293;
      }
    }

    *a5 = v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v21 = sub_160F34(0x1Eu);
      v22 = sub_175AE4();
      v23 = sub_160F68(7);
      if (v21)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v22, 30, v23, a1, *(a1 + 56), *a2, valuePtr, a5);
        v22 = sub_175AE4();
        sub_160F68(7);
        v24 = *(a1 + 56);
        v26 = *a2;
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v22, 30);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetMCTFLatencyMode", 21061, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_82C90(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 107888) = v9;
      *(a1 + 10756) = v9;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
          v15 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetUseElementaryStreamOutput", 21136, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetUseElementaryStreamOutput", 21136, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetUseElementaryStreamOutput", 21126, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_82FD4(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10756);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10756))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
        v17 = *(a1 + 56);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetUseElementaryStreamOutput", 21173, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_831F8(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21229, "iCmdTimeOutMode >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21229, "iCmdTimeOutMode >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 107892) = valuePtr;
        *(a1 + 11760) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21220, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21220, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21210, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_83648(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 11760);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetCmdTimeOutMode", 21275, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetCmdTimeOutMode", 21275, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetCmdTimeOutMode", 21265, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_83978(uint64_t a1, uint64_t a2, uint64_t a3, __CFDictionary *a4)
{
  v6 = a2;
  v7 = a1;
  if ((a1 - 1) > 0x21 || a4 == 0)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v9 = sub_160F34(0x1Eu);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p\n", v10, 30, v11, "AVE_Prop_HEVC_MakeDict", 21620, "AVE_DevID_None < devID && devID < AVE_DevID_Max && pDict != __null", v7, v6, a3, a4);
        v12 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p", v12, 30, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p", v10, 30, v11);
      }
    }

    return 4294966295;
  }

  else
  {
    v13 = sub_84FBC(&off_1FD968, 198, a1, a2, a3, a4);
    v14 = v13;
    if (v13 && sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d\n", v16, 30, v17, "AVE_Prop_HEVC_MakeDict", 21628, "ret == 0", v7, v6, a3, a4, v14);
        v18 = sub_175AE4();
        v21 = sub_160F68(4);
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

uint64_t sub_83BD8(uint64_t a1, const __CFString *a2, const void *a3)
{
  if (*(a1 + 32) == 2)
  {
    v6 = 512;
  }

  else
  {
    v6 = 256;
  }

  v7 = sub_85624(&off_1FD968, 198, *(a1 + 68), v6, a1, *(a1 + 56), a2, a3);
  if (v7 && sub_160EF0(0x1Eu, 4))
  {
    v8 = sub_160F34(0x1Eu);
    v9 = sub_175AE4();
    v10 = sub_160F68(4);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d\n", v9, 30, v10, "AVE_Prop_HEVC_SetProperty", 21662, "ret == 0", a1, *(a1 + 56), v6, *(a1 + 68), a2, a3, v7);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      v11 = *(a1 + 56);
      v13 = *(a1 + 68);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d", v9, 30, v10, "AVE_Prop_HEVC_SetProperty", 21662, "ret == 0");
  }

  return v7;
}

uint64_t sub_83D6C(uint64_t a1, const void *a2, const __CFString *a3, const void *a4)
{
  if (*(a1 + 32) == 2)
  {
    v8 = 512;
  }

  else
  {
    v8 = 256;
  }

  v9 = sub_85B98(&off_1FD968, 198, *(a1 + 68), v8, a1, *(a1 + 56), a2, a3, a4);
  if (v9 && sub_160EF0(0x1Eu, 4))
  {
    v10 = sub_160F34(0x1Eu);
    v11 = sub_175AE4();
    v12 = sub_160F68(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d\n", v11, 30, v12, "AVE_Prop_HEVC_GetProperty", 21697, "ret == 0", a1, *(a1 + 56), v8, *(a1 + 68), a2, a3, a4, v9);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      v15 = *(a1 + 68);
      v14 = *(a1 + 56);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d", v11, 30, v12, "AVE_Prop_HEVC_GetProperty", 21697, "ret == 0", a1);
  }

  return v9;
}

uint64_t sub_83F18(uint64_t a1)
{
  if (sub_160EF0(0x1Eu, 6))
  {
    v2 = sub_160F34(0x1Eu);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 30, v4, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1);
      v5 = sub_175AE4();
      v28 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 30, v28, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 30, v4, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1);
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

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v8 = Mutable;
      v9 = sub_58FC(a1, *(a1 + 56), *(a1 + 68), 0, &off_1FD968, 198, v6, *(a1 + 1440), *(a1 + 1444), Mutable);
      if (v9)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(4);
          v13 = *(a1 + 68);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld 0x%x %d %d\n", v11, 30, v12, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", 21743, "ret == 0", a1, *(a1 + 56), v6, *(a1 + 68), v9);
            v11 = sub_175AE4();
            v12 = sub_160F68(4);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 68);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d\n", v19, 30, v20, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", 21734, "pDict != __null", a1, *(a1 + 56), v6, *(a1 + 68), 0);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          v22 = *(a1 + 56);
        }

        v31 = *(a1 + 68);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d", v19, 30, v20, "AVE_Prop_HEVC_CreateSupportedPresetDictionary");
      }

      v9 = 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v16, 30, v17, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", 21719, "pINS != __null", 0);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v16);
    }

    v9 = 4294966295;
  }

  if (sub_160EF0(0x1Eu, 6))
  {
    v23 = sub_160F34(0x1Eu);
    v24 = sub_175AE4();
    v25 = sub_160F68(6);
    if (v23)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v24, 30, v25, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1, v9);
      v26 = sub_175AE4();
      v29 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v26, 30, v29, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1, v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v24, 30, v25, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1, v9);
    }
  }

  return v9;
}

double sub_843DC()
{
  qword_20C218 = @"HEVC_Main_1_0";
  qword_20C220 = 0x100000001;
  qword_20C228 = @"HEVC_Main_2_0";
  qword_20C230 = 0x200000001;
  qword_20C238 = @"HEVC_Main_2_1";
  qword_20C240 = 0x300000001;
  qword_20C248 = @"HEVC_Main_3_0";
  qword_20C250 = 0x400000001;
  qword_20C258 = @"HEVC_Main_3_1";
  qword_20C260 = 0x500000001;
  qword_20C268 = @"HEVC_Main_4_0";
  qword_20C270 = 0x600000001;
  qword_20C278 = @"HEVC_Main_4_1";
  qword_20C280 = 0x700000001;
  qword_20C288 = @"HEVC_Main_5_0";
  qword_20C290 = 0x800000001;
  qword_20C298 = @"HEVC_Main_5_1";
  qword_20C2A0 = 0x900000001;
  qword_20C2A8 = @"HEVC_Main_5_2";
  qword_20C2B0 = 0xA00000001;
  qword_20C2B8 = @"HEVC_Main_6_0";
  qword_20C2C0 = 0xB00000001;
  qword_20C2C8 = @"HEVC_Main_6_1";
  qword_20C2D0 = 0xC00000001;
  qword_20C2D8 = @"HEVC_Main_6_2";
  qword_20C2E0 = 0xD00000001;
  qword_20C2E8 = @"HEVC_Main10_1_0";
  qword_20C2F0 = 0x100000002;
  qword_20C2F8 = @"HEVC_Main10_2_0";
  qword_20C300 = 0x200000002;
  qword_20C308 = @"HEVC_Main10_2_1";
  qword_20C310 = 0x300000002;
  qword_20C318 = @"HEVC_Main10_3_0";
  qword_20C320 = 0x400000002;
  qword_20C328 = @"HEVC_Main10_3_1";
  qword_20C330 = 0x500000002;
  qword_20C338 = @"HEVC_Main10_4_0";
  qword_20C340 = 0x600000002;
  qword_20C348 = @"HEVC_Main10_4_1";
  qword_20C350 = 0x700000002;
  qword_20C358 = @"HEVC_Main10_5_0";
  qword_20C360 = 0x800000002;
  qword_20C368 = @"HEVC_Main10_5_1";
  qword_20C370 = 0x900000002;
  qword_20C378 = @"HEVC_Main10_5_2";
  qword_20C380 = 0xA00000002;
  qword_20C388 = @"HEVC_Main10_6_0";
  qword_20C390 = 0xB00000002;
  qword_20C398 = @"HEVC_Main10_6_1";
  qword_20C3A0 = 0xC00000002;
  qword_20C3A8 = @"HEVC_Main10_6_2";
  qword_20C3B0 = 0xD00000002;
  qword_20C3B8 = @"HEVC_Main444_1_0";
  qword_20C3C0 = 0x100000009;
  qword_20C3C8 = @"HEVC_Main444_2_0";
  qword_20C3D0 = 0x200000009;
  qword_20C3D8 = @"HEVC_Main444_2_1";
  qword_20C3E0 = 0x300000009;
  qword_20C3E8 = @"HEVC_Main444_3_0";
  qword_20C3F0 = 0x400000009;
  qword_20C3F8 = @"HEVC_Main444_3_1";
  qword_20C400 = 0x500000009;
  qword_20C408 = @"HEVC_Main444_4_0";
  qword_20C410 = 0x600000009;
  qword_20C418 = @"HEVC_Main444_4_1";
  qword_20C420 = 0x700000009;
  qword_20C428 = @"HEVC_Main444_5_0";
  qword_20C430 = 0x800000009;
  qword_20C438 = @"HEVC_Main444_5_1";
  qword_20C440 = 0x900000009;
  qword_20C448 = @"HEVC_Main444_5_2";
  qword_20C450 = 0xA00000009;
  qword_20C458 = @"HEVC_Main444_6_0";
  qword_20C460 = 0xB00000009;
  qword_20C468 = @"HEVC_Main444_6_1";
  qword_20C470 = 0xC00000009;
  qword_20C478 = @"HEVC_Main444_6_2";
  qword_20C480 = 0xD00000009;
  qword_20C488 = @"HEVC_Main44410_1_0";
  qword_20C490 = 0x10000000ALL;
  qword_20C498 = @"HEVC_Main44410_2_0";
  qword_20C4A0 = 0x20000000ALL;
  qword_20C4A8 = @"HEVC_Main44410_2_1";
  qword_20C4B0 = 0x30000000ALL;
  qword_20C4B8 = @"HEVC_Main44410_3_0";
  qword_20C4C0 = 0x40000000ALL;
  qword_20C4C8 = @"HEVC_Main44410_3_1";
  qword_20C4D0 = 0x50000000ALL;
  qword_20C4D8 = @"HEVC_Main44410_4_0";
  qword_20C4E0 = 0x60000000ALL;
  qword_20C4E8 = @"HEVC_Main44410_4_1";
  qword_20C4F0 = 0x70000000ALL;
  qword_20C4F8 = @"HEVC_Main44410_5_0";
  qword_20C500 = 0x80000000ALL;
  qword_20C508 = @"HEVC_Main44410_5_1";
  qword_20C510 = 0x90000000ALL;
  qword_20C518 = @"HEVC_Main44410_5_2";
  qword_20C520 = 0xA0000000ALL;
  qword_20C528 = @"HEVC_Main44410_6_0";
  qword_20C530 = 0xB0000000ALL;
  qword_20C538 = @"HEVC_Main44410_6_1";
  qword_20C540 = 0xC0000000ALL;
  qword_20C548 = @"HEVC_Main44410_6_2";
  qword_20C550 = 0xD0000000ALL;
  qword_20C558 = @"HEVC_Main44410_1_0";
  qword_20C560 = 0x100000008;
  qword_20C568 = @"HEVC_Main44410_2_0";
  qword_20C570 = 0x200000008;
  qword_20C578 = @"HEVC_Main44410_2_1";
  qword_20C580 = 0x300000008;
  qword_20C588 = @"HEVC_Main44410_3_0";
  qword_20C590 = 0x400000008;
  qword_20C598 = @"HEVC_Main44410_3_1";
  qword_20C5A0 = 0x500000008;
  qword_20C5A8 = @"HEVC_Main44410_4_0";
  qword_20C5B0 = 0x600000008;
  qword_20C5B8 = @"HEVC_Main44410_4_1";
  qword_20C5C0 = 0x700000008;
  qword_20C5C8 = @"HEVC_Main44410_5_0";
  qword_20C5D0 = 0x800000008;
  qword_20C5D8 = @"HEVC_Main44410_5_1";
  qword_20C5E0 = 0x900000008;
  qword_20C5E8 = @"HEVC_Main44410_5_2";
  qword_20C5F0 = 0xA00000008;
  qword_20C5F8 = @"HEVC_Main44410_6_0";
  qword_20C600 = 0xB00000008;
  qword_20C608 = @"HEVC_Main44410_6_1";
  qword_20C610 = 0xC00000008;
  qword_20C618 = @"HEVC_Main44410_6_2";
  qword_20C620 = 0xD00000008;
  qword_20C628 = @"HEVC_MainStill_1_0";
  qword_20C630 = 0x100000003;
  qword_20C638 = @"HEVC_MainStill_2_0";
  qword_20C640 = 0x200000003;
  qword_20C648 = @"HEVC_MainStill_2_1";
  qword_20C650 = 0x300000003;
  qword_20C658 = @"HEVC_MainStill_3_0";
  qword_20C660 = 0x400000003;
  qword_20C668 = @"HEVC_MainStill_3_1";
  qword_20C670 = 0x500000003;
  qword_20C678 = @"HEVC_MainStill_4_0";
  qword_20C680 = 0x600000003;
  qword_20C688 = @"HEVC_MainStill_4_1";
  qword_20C690 = 0x700000003;
  qword_20C698 = @"HEVC_MainStill_5_0";
  qword_20C6A0 = 0x800000003;
  qword_20C6A8 = @"HEVC_MainStill_5_1";
  qword_20C6B0 = 0x900000003;
  qword_20C6B8 = @"HEVC_MainStill_5_2";
  qword_20C6C0 = 0xA00000003;
  qword_20C6C8 = @"HEVC_MainStill_6_0";
  qword_20C6D0 = 0xB00000003;
  qword_20C6D8 = @"HEVC_MainStill_6_1";
  qword_20C6E0 = 0xC00000003;
  qword_20C6E8 = @"HEVC_MainStill_6_2";
  qword_20C6F0 = 0xD00000003;
  qword_20C6F8 = kVTProfileLevel_HEVC_Main_AutoLevel;
  qword_20C700 = 1;
  qword_20C708 = kVTProfileLevel_HEVC_Main10_AutoLevel;
  qword_20C710 = 2;
  qword_20C718 = kVTProfileLevel_HEVC_Main444_AutoLevel;
  qword_20C720 = 9;
  qword_20C728 = kVTProfileLevel_HEVC_Main44410_AutoLevel;
  qword_20C730 = 10;
  qword_20C738 = kVTProfileLevel_HEVC_Main42210_AutoLevel;
  qword_20C740 = 8;
  qword_20C748 = kVTProfileLevel_HEVC_Monochrome_AutoLevel;
  qword_20C750 = 6;
  qword_20C758 = kVTProfileLevel_HEVC_Monochrome10_AutoLevel;
  qword_20C760 = 7;
  qword_20C768 = kVTProfileLevel_HEVC_MainStill_AutoLevel;
  *&result = 3;
  qword_20C770 = 3;
  return result;
}

uint64_t sub_84B98(const void *a1, int a2, int a3, uint64_t a4, __CFDictionary *a5)
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
        v15 = &kVTPropertyType_Boolean;
        break;
      case 2:
        v15 = &kVTPropertyType_Number;
        break;
      case 3:
        v15 = &kVTPropertyType_Enumeration;
        break;
      default:
LABEL_17:
        if (sub_160EF0(0x1Eu, 4))
        {
          v17 = sub_160F34(0x1Eu);
          v18 = sub_175AE4();
          v19 = sub_160F68(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | unsupported property type %p %d 0x%x %lld %p\n", v18, 30, v19, "AVE_Prop_Add", 58, "ret == 0", a1, a2, a3, a4, a5);
            v20 = sub_175AE4();
            v29 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | unsupported property type %p %d 0x%x %lld %p", v20, 30, v29, "AVE_Prop_Add");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | unsupported property type %p %d 0x%x %lld %p", v18, 30, v19, "AVE_Prop_Add");
          }
        }

        return 4294966294;
    }

    v10 = *v15;
LABEL_22:
    if ((a3 & 0x30000) == 0x10000)
    {
      v21 = kVTPropertyReadWriteStatus_ReadOnly;
    }

    else
    {
      v21 = kVTPropertyReadWriteStatus_ReadWrite;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v23 = Mutable;
      if (v10)
      {
        CFDictionarySetValue(Mutable, kVTPropertyTypeKey, v10);
      }

      CFDictionarySetValue(v23, kVTPropertyReadWriteStatusKey, v21);
      CFDictionarySetValue(a5, a1, v23);
      CFRelease(v23);
      return 0;
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v24 = sub_160F34(0x1Eu);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %d 0x%x %lld %p\n", v25, 30, v26, "AVE_Prop_Add", 68, "pTmpDict != __null", a1, a2, a3, a4, a5);
          v27 = sub_175AE4();
          v30 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %d 0x%x %lld %p", v27, 30, v30, "AVE_Prop_Add");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %d 0x%x %lld %p", v25, 30, v26, "AVE_Prop_Add");
        }
      }

      return 4294966293;
    }
  }

  if (sub_160EF0(0x1Eu, 4))
  {
    v11 = sub_160F34(0x1Eu);
    v12 = sub_175AE4();
    v13 = sub_160F68(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d 0x%x %lld %p\n", v12, 30, v13, "AVE_Prop_Add", 34, "pKey != __null && AVE_Prop_Type_None <= type && type < AVE_Prop_Type_Max && pDict != __null", a1, a2, a3, a4, a5);
      v14 = sub_175AE4();
      v28 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d 0x%x %lld %p", v14, 30, v28, "AVE_Prop_Add");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d 0x%x %lld %p", v12, 30, v13, "AVE_Prop_Add");
    }
  }

  return 4294966295;
}

uint64_t sub_84FBC(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFDictionary *a6)
{
  v12 = sub_16FD90(a3);
  if (!v12)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v20 = sub_160F34(0x1Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %d 0x%x %lld %p\n", v21, 30, v22, "AVE_Prop_MakeDict", 110, "pDevCap != __null", a1, a2, a3, a4, a5, a6);
        v23 = sub_175AE4();
        v32 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %d 0x%x %lld %p", v23, 30, v32, "AVE_Prop_MakeDict", 110);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %d 0x%x %lld %p", v21, 30, v22, "AVE_Prop_MakeDict", 110);
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

    v18 = sub_84B98(*(i - 1), *i, v16, a5, a6);
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
  if (sub_160EF0(0x1Eu, 4))
  {
    v25 = sub_160F34(0x1Eu);
    v26 = sub_175AE4();
    v27 = sub_160F68(4);
    v28 = *(i + 1);
    if (v25)
    {
      v29 = a3;
      printf("%lld %d AVE %s: %s:%d %s | fail to add property %p %d %d 0x%x %lld | %d %s %p %d 0x%x 0x%llx %d\n", v26, 30, v27, "AVE_Prop_MakeDict", 154, "ret == 0", v39, a2, a3, a4, a5, v14, *(i - 2), *(i - 1), *i, i[1], *(i + 1), v19);
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
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

uint64_t sub_85308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, const __CFString *a7)
{
  v12 = a2;
  v13 = a1;
  memset(v38, 0, sizeof(v38));
  if (!a1 || a2 < 1 || !a5 || !a7)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v21 = sub_160F34(0x1Eu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p\n", v22, 30, v23, "AVE_Prop_FindPropertyEntry", 190, "pArray != __null && num > 0 && pINS != __null && pKey != __null", v13, v12, a5, a6, a3, a4, a7);
        v22 = sub_175AE4();
        v36 = a4;
        v37 = a7;
        v34 = a6;
        v35 = a3;
        v32 = v12;
        v33 = a5;
        v31 = v13;
        v30 = sub_160F68(4);
      }

      else
      {
        v36 = a4;
        v37 = a7;
        v34 = a6;
        v35 = a3;
        v32 = v12;
        v33 = a5;
        v31 = v13;
        v30 = v23;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p", v22, 30, v30, "AVE_Prop_FindPropertyEntry", 190, "pArray != __null && num > 0 && pINS != __null && pKey != __null", v31, v32, v33, v34, v35, v36, v37);
    }

    return 0;
  }

  v14 = sub_14CE6C(a7, v38, 64);
  v15 = sub_16FD90(a3);
  if (!v15)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v24 = sub_160F34(0x1Eu);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %p %lld %d 0x%x %s\n", v25, 30, v26, "AVE_Prop_FindPropertyEntry", 196, "pDevCap != __null", v13, v12, a5, a6, a3, a4, v14);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %p %lld %d 0x%x %s", v27, 30, v28, "AVE_Prop_FindPropertyEntry", 196, "pDevCap != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %p %lld %d 0x%x %s", v25, 30, v26, "AVE_Prop_FindPropertyEntry", 196, "pDevCap != __null");
      }
    }

    return 0;
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
      return 0;
    }
  }

  return v13;
}

uint64_t sub_85624(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, const __CFString *a7, const void *a8)
{
  memset(v58, 0, sizeof(v58));
  if (a1 && a2 >= 1 && a5 && a7)
  {
    v16 = sub_85308(a1, a2, a3, a4 | 0x20000, a5, a6, a7);
    if (v16)
    {
      v17 = v16;
      v18 = *(v16 + 40);
      if (v18)
      {
        v19 = v18(a5, v16, a7, a8);
        if (v19 && sub_160EF0(0x1Eu, 4))
        {
          v20 = sub_160F34(0x1Eu);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v23 = v17[3];
          if (v20)
          {
            v24 = a3;
            printf("%lld %d AVE %s: %s:%d %s | fail to set property %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx %d\n", v21, 30, v22, "AVE_Prop_SetProperty", 268, "ret == 0", a5, a6, a3, a4, a7, a8, *v17, v17[1], *(v17 + 4), *(v17 + 5), v17[3], v19);
            v25 = sub_175AE4();
            v26 = sub_160F68(4);
            v54 = v17[3];
            v49 = *(v17 + 4);
            v51 = *(v17 + 5);
            v45 = *v17;
            v47 = v17[1];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx %d", v25, 30, v26, "AVE_Prop_SetProperty", 268, "ret == 0", a5, a6, v24, a4);
          }

          else
          {
            v56 = v17[3];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx %d", v21, 30, v22, "AVE_Prop_SetProperty", 268, "ret == 0", a5, a6, a3, a4);
          }
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v35 = sub_160F34(0x1Eu);
          v36 = sub_175AE4();
          v37 = sub_160F68(4);
          v38 = *(v17 + 5);
          if (v35)
          {
            v39 = a3;
            printf("%lld %d AVE %s: %s:%d %s | set function is not supported %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx\n", v36, 30, v37, "AVE_Prop_SetProperty", 260, "pEntry->Set != __null", a5, a6, a3, a4, a7, a8, *v17, v17[1], *(v17 + 4), *(v17 + 5), v17[3]);
            v40 = sub_175AE4();
            v41 = sub_160F68(4);
            v52 = *(v17 + 5);
            v55 = v17[3];
            v48 = v17[1];
            v50 = *(v17 + 4);
            v46 = *v17;
            syslog(3, "%lld %d AVE %s: %s:%d %s | set function is not supported %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx", v40, 30, v41, "AVE_Prop_SetProperty", 260, "pEntry->Set != __null", a5, a6, v39);
          }

          else
          {
            v53 = *(v17 + 5);
            syslog(3, "%lld %d AVE %s: %s:%d %s | set function is not supported %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx", v36, 30, v37, "AVE_Prop_SetProperty", 260, "pEntry->Set != __null", a5, a6, a3);
          }
        }

        return 4294966294;
      }
    }

    else
    {
      v31 = sub_14CE6C(a7, v58, 64);
      if (sub_160EF0(0x1Eu, 5))
      {
        v32 = sub_160F34(0x1Eu);
        v57 = sub_175AE4();
        v33 = sub_160F68(5);
        if (v32)
        {
          printf("%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %s %p %d\n", v57, 30, v33, a1, a2, a5, a6, a3, a4, v31, a8, -2002);
          v34 = sub_175AE4();
          v44 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %s %p %d", v34, 30, v44, a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %s %p %d", v57, 30, v33, a1, a2);
        }
      }

      CFShow(a7);
      CFShow(a8);
      return 4294965294;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v27 = sub_160F34(0x1Eu);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p\n", v28, 30, v29, "AVE_Prop_SetProperty", 249, "pArray != __null && num > 0 && pINS != __null && pKey != __null", a1, a2, a5, a6, a3, a4, a7, a8);
        v30 = sub_175AE4();
        v43 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p", v30, 30, v43, "AVE_Prop_SetProperty", 249, "pArray != __null && num > 0 && pINS != __null && pKey != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p", v28, 30, v29, "AVE_Prop_SetProperty", 249, "pArray != __null && num > 0 && pINS != __null && pKey != __null", a1);
      }
    }

    return 4294966295;
  }

  return v19;
}

uint64_t sub_85B98(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, const __CFString *a8, const void *a9)
{
  memset(v60, 0, sizeof(v60));
  if (a1 && a2 >= 1 && a5 && a8 && a9)
  {
    v17 = sub_85308(a1, a2, a3, a4 | 0x10000, a5, a6, a8);
    if (v17)
    {
      v18 = v17;
      v19 = *(v17 + 48);
      if (v19)
      {
        v20 = v19(a5, v17, a7, a8, a9);
        if (v20 && sub_160EF0(0x1Eu, 4))
        {
          v21 = a7;
          v22 = sub_160F34(0x1Eu);
          v57 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = v18[3];
          if (v22)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to get property %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx %d\n", v57, 30, v23, "AVE_Prop_GetProperty", 330, "ret == 0", a5, a6, a3, a4, v21, a8, a9, *v18, v18[1], *(v18 + 4), *(v18 + 5), v18[3], v20);
            v25 = sub_175AE4();
            v26 = sub_160F68(4);
            v52 = v18[3];
            v47 = *(v18 + 4);
            v49 = *(v18 + 5);
            v43 = *v18;
            v45 = v18[1];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx %d", v25, 30, v26, "AVE_Prop_GetProperty", 330, "ret == 0", a5, a6, a3, a4, v21);
          }

          else
          {
            v54 = v18[3];
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx %d", v57, 30, v23, "AVE_Prop_GetProperty", 330, "ret == 0", a5, a6, a3, a4, v21);
          }
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v35 = a7;
          v36 = sub_160F34(0x1Eu);
          v37 = sub_175AE4();
          v38 = sub_160F68(4);
          v39 = *(v18 + 5);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | get function is not supported %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx\n", v37, 30, v38, "AVE_Prop_GetProperty", 322, "pEntry->Get != __null", a5, a6, a3, a4, v35, a8, a9, *v18, v18[1], *(v18 + 4), *(v18 + 5), v18[3]);
            v37 = sub_175AE4();
            v38 = sub_160F68(4);
            v50 = *(v18 + 5);
            v53 = v18[3];
            v46 = v18[1];
            v48 = *(v18 + 4);
            v44 = *v18;
          }

          else
          {
            v51 = *(v18 + 5);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | get function is not supported %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx", v37, 30, v38, "AVE_Prop_GetProperty", 322, "pEntry->Get != __null", a5, a6, a3, a4);
        }

        return 4294966294;
      }
    }

    else
    {
      v32 = sub_14CE6C(a8, v60, 64);
      if (sub_160EF0(0x1Eu, 5))
      {
        v59 = a7;
        v33 = sub_160F34(0x1Eu);
        v55 = sub_175AE4();
        v34 = sub_160F68(5);
        if (v33)
        {
          printf("%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %p %s %p %d\n", v55, 30, v34, a1, a2, a5, a6, a3, a4, v59, v32, a9, -2002);
          v56 = sub_175AE4();
          v42 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %p %s %p %d", v56, 30, v42, a1, a2, a5);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %p %s %p %d", v55, 30, v34, a1, a2, a5);
        }
      }

      CFShow(a8);
      CFShow(a9);
      return 4294965294;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v27 = a6;
      v28 = a7;
      v29 = sub_160F34(0x1Eu);
      v58 = sub_175AE4();
      v30 = sub_160F68(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p %p\n", v58, 30, v30, "AVE_Prop_GetProperty", 311, "pArray != __null && num > 0 && pINS != __null && pKey != __null && pValue != __null", a1, a2, a5, v27, a3, a4, v28, a8, a9);
        v31 = sub_175AE4();
        v41 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p %p", v31, 30, v41, "AVE_Prop_GetProperty", 311, "pArray != __null && num > 0 && pINS != __null && pKey != __null && pValue != __null", a1, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p %p", v58, 30, v30, "AVE_Prop_GetProperty", 311, "pArray != __null && num > 0 && pINS != __null && pKey != __null && pValue != __null", a1, a2);
      }
    }

    return 4294966295;
  }

  return v20;
}

uint64_t sub_86178(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 1) >= 0x32)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v21 = sub_160F34(0x1Eu);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          if (v21)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v22, 30, v23, "AVE_Prop_AVC_SetInputQueueMaxCount", 139, "(-1) <= maxCnt && maxCnt <= 48", a1, *(a1 + 56), a2, a3, a4, valuePtr, -1, 48);
            v22 = sub_175AE4();
            v23 = sub_160F68(4);
            v24 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v22, 30, v23, "AVE_Prop_AVC_SetInputQueueMaxCount", 139, "(-1) <= maxCnt && maxCnt <= 48", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16600) = valuePtr;
        if (*(a1 + 16468))
        {
          v10 = sub_12FB1C(*(a1 + 120), v9);
        }

        else
        {
          v10 = 0;
          *(a1 + 11772) = v9;
        }

        if (sub_160EF0(0x1Eu, 7))
        {
          v25 = sub_160F34(0x1Eu);
          v26 = sub_175AE4();
          v27 = sub_160F68(7);
          v28 = *a2;
          if (v25)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v26, 30, v27, a1, *(a1 + 56), *a2, valuePtr);
            v26 = sub_175AE4();
            sub_160F68(7);
            v29 = *(a1 + 56);
          }

          v32 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v26);
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v15 = sub_160F34(0x1Eu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        v18 = *(a1 + 56);
        v19 = CFGetTypeID(a4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_AVC_SetInputQueueMaxCount", 129, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
          v16 = sub_175AE4();
          v17 = sub_160F68(4);
          v20 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_AVC_SetInputQueueMaxCount", 129, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v11 = sub_160F34(0x1Eu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_AVC_SetInputQueueMaxCount", 119, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v31, "AVE_Prop_AVC_SetInputQueueMaxCount");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_AVC_SetInputQueueMaxCount");
      }
    }

    return 4294966295;
  }

  return v10;
}

uint64_t sub_86604(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 16600);
    if (v10 == -2)
    {
      v10 = 0;
    }

    valuePtr = v10;
    v11 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v11)
    {
      v12 = v11;
      *a5 = v11;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v14 = sub_160F34(0x1Eu);
        v15 = sub_175AE4();
        v16 = sub_160F68(7);
        if (v14)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v15, 30, v16, a1, *(a1 + 56), *a2, valuePtr, v12);
          v15 = sub_175AE4();
          sub_160F68(7);
          v17 = *(a1 + 56);
          v27 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v15, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v23, 30, v24, "AVE_Prop_AVC_GetInputQueueMaxCount", 193, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v25 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v24, "AVE_Prop_AVC_GetInputQueueMaxCount", 193, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_GetInputQueueMaxCount", 182, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v21 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v26, "AVE_Prop_AVC_GetInputQueueMaxCount", 182);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetInputQueueMaxCount", 182);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_86940(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      if (Value)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      *(a1 + 16604) = v10;
      *(a1 + 11468) = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v12 = Value != 0;
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        v16 = *a2;
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v12);
          v14 = sub_175AE4();
          sub_160F68(7);
          v17 = *(a1 + 56);
        }

        v29 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v14);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        v25 = *(a1 + 56);
        v26 = CFGetTypeID(a4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_AVC_SetPreemptiveLoadBalancing", 236, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v27 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_AVC_SetPreemptiveLoadBalancing", 236, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_SetPreemptiveLoadBalancing", 226, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = sub_175AE4();
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v28, "AVE_Prop_AVC_SetPreemptiveLoadBalancing");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_SetPreemptiveLoadBalancing");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_86C8C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 11468);
    v11 = &kCFBooleanTrue;
    if (v10 != 2)
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 == 2;
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v15, 30, v16, a1, *(a1 + 56), *a2, v13);
        v15 = sub_175AE4();
        sub_160F68(7);
        v18 = *(a1 + 56);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_GetPreemptiveLoadBalancing", 273, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_AVC_GetPreemptiveLoadBalancing", 273);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetPreemptiveLoadBalancing", 273);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_86EB4(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 16608) = v9;
      *(a1 + 688) = *(a1 + 688) & 0xFFFFFFFD | (2 * v9);
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
          v15 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetMaximizePowerEfficiency", 321, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetMaximizePowerEfficiency", 321, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetMaximizePowerEfficiency", 311, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_AVC_SetMaximizePowerEfficiency");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetMaximizePowerEfficiency");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_871F8(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 688) & 2;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      v17 = v10 >> 1;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v17);
        v14 = sub_175AE4();
        sub_160F68(7);
        v18 = *(a1 + 56);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_GetMaximizePowerEfficiency", 366, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_AVC_GetMaximizePowerEfficiency", 366);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetMaximizePowerEfficiency", 366);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8741C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3)
  {
    if (!a4)
    {
      Value = -1;
LABEL_11:
      *(a1 + 16612) = Value;
      *(a1 + 692) = Value;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v15 = sub_160F34(0x1Eu);
        v16 = sub_175AE4();
        v17 = sub_160F68(7);
        v18 = *a2;
        if (v15)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v16, 30, v17, a1, *(a1 + 56), *a2, Value);
          v16 = sub_175AE4();
          sub_160F68(7);
          v19 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v16);
        return 0;
      }

      return result;
    }

    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      goto LABEL_11;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v20 = sub_160F34(0x1Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      v23 = *(a1 + 56);
      v24 = CFGetTypeID(a4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetRealTime", 415, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v25 = *(a1 + 56);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetRealTime", 415, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v10 = sub_160F34(0x1Eu);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v11, 30, v12, "AVE_Prop_AVC_SetRealTime", 403, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v13 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 30, v26, "AVE_Prop_AVC_SetRealTime");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v11, 30, v12, "AVE_Prop_AVC_SetRealTime");
      }
    }

    return 4294966295;
  }
}

uint64_t sub_8775C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = &kCFBooleanTrue;
    v11 = *(a1 + 692);
    if (!v11)
    {
      v10 = &kCFBooleanFalse;
    }

    v12 = *v10;
    if (v11 < 0)
    {
      v12 = 0;
    }

    *a5 = v12;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v15, 30, v16, a1, *(a1 + 56), *a2, v11);
        v15 = sub_175AE4();
        sub_160F68(7);
        v18 = *(a1 + 56);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_GetRealTime", 453, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_AVC_GetRealTime", 453);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetRealTime", 453);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_87980(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = -101;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 100) >= 0x12D)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v27, 30, v28, "AVE_Prop_AVC_SetPriority", 517, "-100 <= priority && priority <= 200", a1, *(a1 + 56), a2, a3, a4, valuePtr, -100, 200);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v27, 30, v28, "AVE_Prop_AVC_SetPriority", 517, "-100 <= priority && priority <= 200", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16616) = valuePtr;
        *(a1 + 696) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetPriority", 507, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetPriority", 507, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetPriority", 497, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetPriority");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetPriority");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_87DF4(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 696);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetPriority", 563, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetPriority", 563, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetPriority", 553, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetPriority", 553);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetPriority", 553);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_88124(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      if (*(a1 + 16620) == v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = sub_12F8E8(*(a1 + 120), *(a1 + 16472));
      }

      *(a1 + 16620) = v9;
      *(a1 + 16472) = v9;
      if (sub_160EF0(0x1Eu, 7))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(7);
        v24 = *a2;
        if (v21)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v22, 30, v23, a1, *(a1 + 56), *a2, v9);
          v22 = sub_175AE4();
          sub_160F68(7);
          v25 = *(a1 + 56);
        }

        v28 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v22);
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v15 = sub_160F34(0x1Eu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        v18 = *(a1 + 56);
        v19 = CFGetTypeID(a4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_AVC_SetThrottleForBackground", 606, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
          v16 = sub_175AE4();
          v17 = sub_160F68(4);
          v20 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_AVC_SetThrottleForBackground", 606, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v11 = sub_160F34(0x1Eu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_AVC_SetThrottleForBackground", 596, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v27, "AVE_Prop_AVC_SetThrottleForBackground");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_AVC_SetThrottleForBackground");
      }
    }

    return 4294966295;
  }

  return v10;
}

uint64_t sub_88484(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 16472);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 16472))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
        v17 = *(a1 + 56);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_GetThrottleForBackground", 650, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_GetThrottleForBackground", 650);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetThrottleForBackground", 650);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_886A8(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 1) >> 5 >= 0xC35)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", v27, 30, v28, "AVE_Prop_AVC_SetMaximumRealTimeFrameRate", 708, "0 < maxFrameRate && maxFrameRate <= 100000", a1, *(a1 + 56), a2, a3, a4, valuePtr, 0, 100000);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", v27, 30, v28, "AVE_Prop_AVC_SetMaximumRealTimeFrameRate", 708, "0 < maxFrameRate && maxFrameRate <= 100000", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16624) = valuePtr;
        *(a1 + 11968) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          v14 = *a2;
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
            v15 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetMaximumRealTimeFrameRate", 698, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetMaximumRealTimeFrameRate", 698, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetMaximumRealTimeFrameRate", 688, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetMaximumRealTimeFrameRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetMaximumRealTimeFrameRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_88B14(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 11968);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetMaximumRealTimeFrameRate", 754, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetMaximumRealTimeFrameRate", 754, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetMaximumRealTimeFrameRate", 744, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetMaximumRealTimeFrameRate", 744);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetMaximumRealTimeFrameRate", 744);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_88E44(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 16628) = v9;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
          v15 = *(a1 + 56);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetPrioritizeEncodingSpeedOverQuality", 797, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetPrioritizeEncodingSpeedOverQuality", 797, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetPrioritizeEncodingSpeedOverQuality", 787, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_AVC_SetPrioritizeEncodingSpeedOverQuality");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetPrioritizeEncodingSpeedOverQuality");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8917C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 16628);
    v11 = &kCFBooleanTrue;
    if (v10 <= 0)
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 > 0;
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      v17 = *a2;
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v15, 30, v16, a1, *(a1 + 56), *a2, v13);
        v15 = sub_175AE4();
        sub_160F68(7);
        v18 = *(a1 + 56);
      }

      v24 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_GetPrioritizeEncodingSpeedOverQuality", 836, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_AVC_GetPrioritizeEncodingSpeedOverQuality", 836);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetPrioritizeEncodingSpeedOverQuality", 836);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_893A8(uint64_t a1, const char **a2, const __CFAllocator *a3, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = sub_16FD90(*(a1 + 68));
    if (v10)
    {
      v11 = v10;
      v12 = CFNumberCreate(a3, kCFNumberSInt32Type, (*(v10 + 2) + 4));
      if (v12)
      {
        v13 = v12;
        *a5 = v12;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v15 = sub_160F34(0x1Eu);
          v16 = sub_175AE4();
          v17 = sub_160F68(7);
          v18 = *(*(v11 + 2) + 4);
          if (v15)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v16, 30, v17, a1, *(a1 + 56), *a2, *(*(v11 + 2) + 4), v13);
            v16 = sub_175AE4();
            sub_160F68(7);
            v19 = *(a1 + 56);
            v33 = *(*(v11 + 2) + 4);
            v32 = *a2;
          }

          else
          {
            v34 = *(*(v11 + 2) + 4);
          }

          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v16, 30);
          return 0;
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v28 = sub_160F34(0x1Eu);
          v29 = sub_175AE4();
          v30 = sub_160F68(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v29, 30, v30, "AVE_Prop_AVC_GetNumberOfCores", 891, "pNum != __null", a1, *(a1 + 56), a2, a3, a4, a5, *(*(v11 + 2) + 4));
            v29 = sub_175AE4();
            v30 = sub_160F68(4);
            v37 = *(*(v11 + 2) + 4);
            v35 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v29, 30, v30, "AVE_Prop_AVC_GetNumberOfCores", 891, "pNum != __null", a1);
        }

        return 4294966293;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v24 = sub_160F34(0x1Eu);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %lld %p %p %p %p %d\n", v25, 30, v26, "AVE_Prop_AVC_GetNumberOfCores", 886, "pDevCap != __null", a1, *(a1 + 56), a2, a3, a4, a5, *(a1 + 68));
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
          v27 = *(a1 + 56);
          v36 = *(a1 + 68);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %lld %p %p %p %p %d", v25, 30, v26, "AVE_Prop_AVC_GetNumberOfCores", 886, "pDevCap != __null", a1);
      }

      return 4294966294;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v20 = sub_160F34(0x1Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v21, 30, v22, "AVE_Prop_AVC_GetNumberOfCores", 877, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v23 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v23, 30, v31, "AVE_Prop_AVC_GetNumberOfCores", 877);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_GetNumberOfCores", 877);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_897FC(uint64_t a1, const char **a2, const __CFAllocator *a3, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = sub_132698(*(a1 + 16448));
    if (v10)
    {
      v11 = v10[2];
      v12 = v10[3];
    }

    else
    {
      v12 = 1;
      v11 = 8;
    }

    v17 = sub_E7234(*(a1 + 68), 1, 1, v11, v12, 1);
    valuePtr = v17;
    if (v17 <= 0)
    {
      v25 = v17;
      if (sub_160EF0(0x1Eu, 4))
      {
        v26 = sub_160F34(0x1Eu);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        v29 = *(a1 + 68);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find DevCap Pixel Perf %p %lld %p %p %p %d %lld\n", v27, 30, v28, "AVE_Prop_AVC_GetMaxEncoderPixelRate", 945, "pixelPerf > 0", a1, *(a1 + 56), a3, a4, a5, *(a1 + 68), v25);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          v30 = *(a1 + 56);
        }

        v37 = *(a1 + 68);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find DevCap Pixel Perf %p %lld %p %p %p %d %lld", v27, 30, v28, "AVE_Prop_AVC_GetMaxEncoderPixelRate", 945, "pixelPerf > 0", a1);
      }

      return 4294966294;
    }

    else
    {
      v18 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
      if (v18)
      {
        v19 = v18;
        *a5 = v18;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v21 = sub_160F34(0x1Eu);
          v22 = sub_175AE4();
          v23 = sub_160F68(7);
          if (v21)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %lld %p\n", v22, 30, v23, a1, *(a1 + 56), *a2, valuePtr, v19);
            v22 = sub_175AE4();
            sub_160F68(7);
            v24 = *(a1 + 56);
            v36 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %lld %p", v22, 30);
          return 0;
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v31 = sub_160F34(0x1Eu);
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %lld\n", v32, 30, v33, "AVE_Prop_AVC_GetMaxEncoderPixelRate", 950, "pNum != __null", a1, *(a1 + 56), a2, a3, a4, a5, valuePtr);
            v32 = sub_175AE4();
            v33 = sub_160F68(4);
            v34 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %lld", v32, 30, v33, "AVE_Prop_AVC_GetMaxEncoderPixelRate", 950, "pNum != __null", a1);
        }

        return 4294966293;
      }
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_GetMaxEncoderPixelRate", 928, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v16 = sub_175AE4();
        v35 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v16, 30, v35, "AVE_Prop_AVC_GetMaxEncoderPixelRate", 928);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v14, 30, v15, "AVE_Prop_AVC_GetMaxEncoderPixelRate", 928);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_89C68(int a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  if (a4)
  {
    if (sub_16FD90(a1))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v9 = Mutable;
        if ((a2 & 0x30000) == 0x10000)
        {
          v10 = kVTPropertyReadWriteStatus_ReadOnly;
        }

        else
        {
          v10 = kVTPropertyReadWriteStatus_ReadWrite;
        }

        CFDictionarySetValue(Mutable, kVTPropertyTypeKey, kVTPropertyType_Enumeration);
        CFDictionarySetValue(v9, kVTPropertyReadWriteStatusKey, v10);
        v11 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        if (v11)
        {
          v12 = v11;
          for (i = 0; i != 70; i += 2)
          {
            CFArrayAppendValue(v12, qword_20C778[i]);
          }

          CFDictionarySetValue(v9, kVTPropertySupportedValueListKey, v12);
          CFDictionarySetValue(a4, kVTCompressionPropertyKey_ProfileLevel, v9);
          CFRelease(v12);
          v14 = 0;
        }

        else
        {
          if (sub_160EF0(0x1Eu, 4))
          {
            v27 = sub_160F34(0x1Eu);
            v28 = sub_175AE4();
            v29 = sub_160F68(4);
            if (v27)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create array %d 0x%x %lld %p\n", v28, 30, v29, "AVE_Prop_AVC_AddProfileLevel", 1007, "pTmpArray != __null", a1, a2, a3, a4);
              v30 = sub_175AE4();
              v35 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create array %d 0x%x %lld %p", v30, 30, v35);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create array %d 0x%x %lld %p", v28, 30, v29);
            }
          }

          v14 = 4294966293;
        }

        CFRelease(v9);
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p\n", v24, 30, v25, "AVE_Prop_AVC_AddProfileLevel", 994, "pTmpDict != __null", a1, a2, a3, a4);
            v26 = sub_175AE4();
            v34 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p", v26, 30, v34);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p", v24, 30, v25);
          }
        }

        return 4294966293;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v19 = sub_160F34(0x1Eu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v20, 30, v21, "AVE_Prop_AVC_AddProfileLevel", 988, "pDevCap != __null", a1, a2, a3, a4);
          v22 = sub_175AE4();
          v33 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v22, 30, v33);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v20, 30, v21);
        }
      }

      return 4294966294;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v16, 30, v17, "AVE_Prop_AVC_AddProfileLevel", 983, "pDict != __null", a1, a2, a3, 0);
        v18 = sub_175AE4();
        v32 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v18, 30, v32);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v16, 30, v17);
      }
    }

    return 4294966295;
  }

  return v14;
}