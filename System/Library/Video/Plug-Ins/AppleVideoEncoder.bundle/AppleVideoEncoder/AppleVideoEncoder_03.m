uint64_t sub_4445C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [0, 12)\n", v27, 30, v28, "AVE_Prop_HEVC_Setlog2_max_minus4", 7725, "0 <= iLogMaxMinus4 && iLogMaxMinus4 < 12", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [0, 12)", v27, 30, v28, "AVE_Prop_HEVC_Setlog2_max_minus4", 7725, "0 <= iLogMaxMinus4 && iLogMaxMinus4 < 12");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106528) = valuePtr;
        *(a1 + 24740) = v9 + 1;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_Setlog2_max_minus4", 7716, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_Setlog2_max_minus4", 7716, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_Setlog2_max_minus4", 7706, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_448B8(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 24740) - 1;
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_Getlog2_max_minus4", 7771, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_Getlog2_max_minus4", 7771, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_Getlog2_max_minus4", 7761, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_44BF0(uint64_t a1, const char **a2, const void *a3, const __CFData *a4)
{
  if (a1 && a2 && a3)
  {
    v8 = (a1 + 104736);
    if (!a4)
    {
      v11 = 0;
      *(a1 + 106624) = 0;
      v12 = *(a1 + 1096) & 0xFFFFFFFFFFFFFEFFLL;
LABEL_12:
      *(a1 + 1096) = v12;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(7);
        v21 = *a2;
        if (v18)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v19, 30, v20, a1, *(a1 + 56), *a2, v11);
          v19 = sub_175AE4();
          sub_160F68(7);
          v22 = *(a1 + 56);
        }

        v35 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v19);
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
        CFDataGetBytes(a4, v36, (a1 + 106628));
        sub_1F570(*v8, 0, a4);
        v11 = 1;
        *(a1 + 106624) = 1;
        v12 = *(a1 + 1096) | 0x100;
        goto LABEL_12;
      }

      v29 = Length;
      if (sub_160EF0(0x1Eu, 4))
      {
        v30 = sub_160F34(0x1Eu);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid MasteringDisplayColorVolume size %p %lld %p %p %p %ld\n", v31, 30, v32, "AVE_Prop_HEVC_SetMasteringDisplayColorVolume", 7827, "size == 24", a1, *(a1 + 56), a2, a3, a4, v29);
          v31 = sub_175AE4();
          v32 = sub_160F68(4);
          v33 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid MasteringDisplayColorVolume size %p %lld %p %p %p %ld", v31, 30, v32, "AVE_Prop_HEVC_SetMasteringDisplayColorVolume", 7827, "size == 24");
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
        v26 = *(a1 + 56);
        v27 = CFGetTypeID(a4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_HEVC_SetMasteringDisplayColorVolume", 7819, "CFDataGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          v28 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_HEVC_SetMasteringDisplayColorVolume", 7819, "CFDataGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_HEVC_SetMasteringDisplayColorVolume", 7804, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v16 = sub_175AE4();
        v34 = sub_160F68(4);
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

uint64_t sub_45070(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFDataRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if (*(a1 + 106624) < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = CFDataCreate(allocator, (a1 + 106628), 24);
      if (!v10)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(4);
          v14 = *(a1 + 56);
          if (v11)
          {
            printf("%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %p %zu\n", v12, 30, v13, "AVE_Prop_HEVC_GetMasteringDisplayColorVolume", 7893, "pData != __null", a1, v14, a2, allocator, a4, a5, (a1 + 106628), 0x18uLL);
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %p %zu", v15, 30, v16, "AVE_Prop_HEVC_GetMasteringDisplayColorVolume", 7893, "pData != __null", a1, *(a1 + 56));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %p %zu", v12, 30, v13, "AVE_Prop_HEVC_GetMasteringDisplayColorVolume", 7893, "pData != __null", a1, v14);
          }
        }

        return 4294966293;
      }
    }

    *a5 = v10;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v22 = sub_160F34(0x1Eu);
      v23 = sub_175AE4();
      v24 = sub_160F68(7);
      v25 = *a2;
      if (v22)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v23, 30, v24, a1, *(a1 + 56), *a2, v10);
        v23 = sub_175AE4();
        sub_160F68(7);
        v26 = *(a1 + 56);
      }

      v28 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v23);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMasteringDisplayColorVolume", 7879, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_453B8(uint64_t a1, const char **a2, const void *a3, const __CFData *a4)
{
  if (a1 && a2 && a3)
  {
    v8 = (a1 + 104736);
    if (!a4)
    {
      v11 = 0;
      *(a1 + 106652) = 0;
      v12 = *(a1 + 1096) & 0xFFFFFFFFFFFFFDFFLL;
LABEL_12:
      *(a1 + 1096) = v12;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(7);
        v21 = *a2;
        if (v18)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v19, 30, v20, a1, *(a1 + 56), *a2, v11);
          v19 = sub_175AE4();
          sub_160F68(7);
          v22 = *(a1 + 56);
        }

        v35 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v19);
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
        CFDataGetBytes(a4, v36, (a1 + 106656));
        sub_1FAE0(*v8, 0, a4);
        v11 = 1;
        *(a1 + 106652) = 1;
        v12 = *(a1 + 1096) | 0x200;
        goto LABEL_12;
      }

      v29 = Length;
      if (sub_160EF0(0x1Eu, 4))
      {
        v30 = sub_160F34(0x1Eu);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid ContentLightLevelInfo size %p %lld %p %p %p %ld\n", v31, 30, v32, "AVE_Prop_HEVC_SetContentLightLevelInfo", 7951, "size == 4", a1, *(a1 + 56), a2, a3, a4, v29);
          v31 = sub_175AE4();
          v32 = sub_160F68(4);
          v33 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid ContentLightLevelInfo size %p %lld %p %p %p %ld", v31, 30, v32, "AVE_Prop_HEVC_SetContentLightLevelInfo", 7951, "size == 4");
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
        v26 = *(a1 + 56);
        v27 = CFGetTypeID(a4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_HEVC_SetContentLightLevelInfo", 7942, "CFDataGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          v28 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_HEVC_SetContentLightLevelInfo", 7942, "CFDataGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_HEVC_SetContentLightLevelInfo", 7927, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v16 = sub_175AE4();
        v34 = sub_160F68(4);
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

uint64_t sub_45838(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFDataRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if (*(a1 + 106652) < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = CFDataCreate(allocator, (a1 + 106656), 4);
      if (!v10)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(4);
          v14 = *(a1 + 56);
          if (v11)
          {
            printf("%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %p %zu\n", v12, 30, v13, "AVE_Prop_HEVC_GetContentLightLevelInfo", 8016, "pData != __null", a1, v14, a2, allocator, a4, a5, (a1 + 106656), 4uLL);
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %p %zu", v15, 30, v16, "AVE_Prop_HEVC_GetContentLightLevelInfo", 8016, "pData != __null", a1, *(a1 + 56));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %p %zu", v12, 30, v13, "AVE_Prop_HEVC_GetContentLightLevelInfo", 8016, "pData != __null", a1, v14);
          }
        }

        return 4294966293;
      }
    }

    *a5 = v10;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v22 = sub_160F34(0x1Eu);
      v23 = sub_175AE4();
      v24 = sub_160F68(7);
      v25 = *a2;
      if (v22)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v23, 30, v24, a1, *(a1 + 56), *a2, v10);
        v23 = sub_175AE4();
        sub_160F68(7);
        v26 = *(a1 + 56);
      }

      v28 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v23);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetContentLightLevelInfo", 8002, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_45B80(uint64_t a1, const char **a2, const void *a3, const __CFData *a4)
{
  if (a1 && a2 && a3)
  {
    v8 = (a1 + 104736);
    if (!a4)
    {
      v11 = 0;
      *(a1 + 106660) = 0;
      v12 = *(a1 + 1096) & 0xFFFFFFFFFFFFFFBFLL;
LABEL_12:
      *(a1 + 1096) = v12;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(7);
        v21 = *a2;
        if (v18)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v19, 30, v20, a1, *(a1 + 56), *a2, v11);
          v19 = sub_175AE4();
          sub_160F68(7);
          v22 = *(a1 + 56);
        }

        v35 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v19);
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
        CFDataGetBytes(a4, v36, (a1 + 106664));
        sub_1D298(*v8, 0, a4);
        v11 = 1;
        *(a1 + 106660) = 1;
        v12 = *(a1 + 1096) | 0x40;
        goto LABEL_12;
      }

      v29 = Length;
      if (sub_160EF0(0x1Eu, 4))
      {
        v30 = sub_160F34(0x1Eu);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid AmbientViewingEnvironment size %p %lld %p %p %p %ld\n", v31, 30, v32, "AVE_Prop_HEVC_SetAmbientViewingEnvironment", 8074, "size == 8", a1, *(a1 + 56), a2, a3, a4, v29);
          v31 = sub_175AE4();
          v32 = sub_160F68(4);
          v33 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid AmbientViewingEnvironment size %p %lld %p %p %p %ld", v31, 30, v32, "AVE_Prop_HEVC_SetAmbientViewingEnvironment", 8074, "size == 8");
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
        v26 = *(a1 + 56);
        v27 = CFGetTypeID(a4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_HEVC_SetAmbientViewingEnvironment", 8065, "CFDataGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          v28 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_HEVC_SetAmbientViewingEnvironment", 8065, "CFDataGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_HEVC_SetAmbientViewingEnvironment", 8050, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v16 = sub_175AE4();
        v34 = sub_160F68(4);
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

uint64_t sub_46000(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFDataRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if (*(a1 + 106660) < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = CFDataCreate(allocator, (a1 + 106664), 8);
      if (!v10)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(4);
          v14 = *(a1 + 56);
          if (v11)
          {
            printf("%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %s %zu\n", v12, 30, v13, "AVE_Prop_HEVC_GetAmbientViewingEnvironment", 8140, "pData != __null", a1, v14, a2, allocator, a4, a5, (a1 + 106664), 8uLL);
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %s %zu", v15, 30, v16, "AVE_Prop_HEVC_GetAmbientViewingEnvironment", 8140, "pData != __null", a1, *(a1 + 56));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %s %zu", v12, 30, v13, "AVE_Prop_HEVC_GetAmbientViewingEnvironment", 8140, "pData != __null", a1, v14);
          }
        }

        return 4294966293;
      }
    }

    *a5 = v10;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v22 = sub_160F34(0x1Eu);
      v23 = sub_175AE4();
      v24 = sub_160F68(7);
      v25 = *a2;
      if (v22)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v23, 30, v24, a1, *(a1 + 56), *a2, v10);
        v23 = sub_175AE4();
        sub_160F68(7);
        v26 = *(a1 + 56);
      }

      v28 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v23);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetAmbientViewingEnvironment", 8127, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_46348(uint64_t a1, const char **a2, const void *a3, const __CFData *a4)
{
  if (!a1 || !a2 || !a3)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8176, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v22 = sub_175AE4();
        v46 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v46, "AVE_Prop_HEVC_SetInsertTrailingBytes");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_SetInsertTrailingBytes");
      }
    }

    return 4294966295;
  }

  v8 = (a1 + 10780);
  if (!a4)
  {
LABEL_34:
    v34 = a4 != 0;
    *(a1 + 106672) = v34;
    *(a1 + 10930) = v34;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v35 = sub_160F34(0x1Eu);
      v36 = sub_175AE4();
      v37 = sub_160F68(7);
      v38 = *a2;
      if (v35)
      {
        printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v36, 30, v37, a1, *(a1 + 56), *a2, v34);
        v36 = sub_175AE4();
        sub_160F68(7);
        v39 = *(a1 + 56);
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
        if (*(a1 + 10892) == 1)
        {
          if (Length >= 1025)
          {
            if (sub_160EF0(0x1Eu, 4))
            {
              v14 = sub_160F34(0x1Eu);
              v15 = sub_175AE4();
              v16 = sub_160F68(4);
              if (v14)
              {
                v17 = "size <= 1024";
                v18 = 8205;
                printf("%lld %d AVE %s: %s:%d %s | invalid RPUNutSize size %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8205, "size <= 1024", a1, *(a1 + 56), a2, a3, a4, v13);
LABEL_42:
                v41 = sub_175AE4();
                v42 = sub_160F68(4);
                v43 = *(a1 + 56);
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
          if (sub_160EF0(0x1Eu, 4))
          {
            v40 = sub_160F34(0x1Eu);
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            if (v40)
            {
              v17 = "size <= 512";
              v18 = 8215;
              printf("%lld %d AVE %s: %s:%d %s | invalid RPUNutSize size %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8215, "size <= 512", a1, *(a1 + 56), a2, a3, a4, v13);
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v33 = sub_160F34(0x1Eu);
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
          if (v33)
          {
            v17 = "size <= 512";
            v18 = 8225;
            printf("%lld %d AVE %s: %s:%d %s | invalid RPUNutSize size %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8225, "size <= 512", a1, *(a1 + 56), a2, a3, a4, v13);
            goto LABEL_42;
          }

          v44 = "size <= 512";
          v45 = 8225;
LABEL_46:
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid RPUNutSize size %p %lld %p %p %p %ld", v15, 30, v16, "AVE_Prop_HEVC_SetInsertTrailingBytes", v45, v44);
        }

        return 4294965292;
      }

      *(a1 + 11444) = Length;
      memcpy((a1 + 10931), v11, Length);
      goto LABEL_34;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v30 = sub_160F34(0x1Eu);
      v31 = sub_175AE4();
      v32 = sub_160F68(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get CFDataGetBytePtr  %p %lld %p %p %p\n", v31, 30, v32, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8193, "pData != __null", a1, *(a1 + 56), a2, a3, a4);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
      }

      v48 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFDataGetBytePtr  %p %lld %p %p %p", v31, 30, v32, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8193);
    }

    return 4294966295;
  }

  if (sub_160EF0(0x1Eu, 4))
  {
    v23 = sub_160F34(0x1Eu);
    v24 = sub_175AE4();
    v25 = sub_160F68(4);
    v26 = *(a1 + 56);
    v27 = CFGetTypeID(a4);
    if (v23)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8188, "CFDataGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      v28 = *(a1 + 56);
      CFGetTypeID(a4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_HEVC_SetInsertTrailingBytes", 8188, "CFDataGetTypeID() == CFGetTypeID(pValue)");
  }

  return 4294965293;
}

uint64_t sub_46994(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFDataRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if (*(a1 + 10930) == 1)
    {
      v10 = CFDataCreate(allocator, (a1 + 10931), *(a1 + 11444));
      if (!v10)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(4);
          v14 = *(a1 + 56);
          if (v11)
          {
            printf("%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %s %d\n", v12, 30, v13, "AVE_Prop_HEVC_GetInsertTrailingBytes", 8279, "pData != __null", a1, v14, a2, allocator, a4, a5, (a1 + 10931), *(a1 + 11444));
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            v29 = *(a1 + 11444);
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %s %d", v15, 30, v16, "AVE_Prop_HEVC_GetInsertTrailingBytes", 8279, "pData != __null", a1, *(a1 + 56));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | CFDataCreate error %p %lld %p %p %p %p %s %d", v12, 30, v13, "AVE_Prop_HEVC_GetInsertTrailingBytes", 8279, "pData != __null", a1, v14);
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
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v22 = sub_160F34(0x1Eu);
      v23 = sub_175AE4();
      v24 = sub_160F68(7);
      v25 = *a2;
      if (v22)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v23, 30, v24, a1, *(a1 + 56), *a2, v10);
        v23 = sub_175AE4();
        sub_160F68(7);
        v26 = *(a1 + 56);
      }

      v28 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v23);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetInsertTrailingBytes", 8267, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_46CD8(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  v53 = -1;
  valuePtr = -1;
  if (!a1 || !a2 || !a3)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v20 = sub_160F34(0x1Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v21, 30, v22, "AVE_Prop_HEVC_SetPixelAspectRatio", 8315, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v23 = sub_175AE4();
        v47 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v23, 30, v47, "AVE_Prop_HEVC_SetPixelAspectRatio");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_SetPixelAspectRatio");
      }
    }

    return 4294966295;
  }

  v8 = (a1 + 31332);
  if (!a4)
  {
    *(a1 + 106676) = 0;
    v16 = 31336;
    goto LABEL_26;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v31, 30, v32, "AVE_Prop_HEVC_SetPixelAspectRatio", 8327, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)", a1, v33, a2, a3, a4, v34);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        v35 = *(a1 + 56);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v31, 30, v32, "AVE_Prop_HEVC_SetPixelAspectRatio", 8327, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  Value = CFDictionaryGetValue(a4, kCVImageBufferPixelAspectRatioHorizontalSpacingKey);
  if (!Value)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v36 = sub_160F34(0x1Eu);
      v37 = sub_175AE4();
      v38 = sub_160F68(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get PixelAspectRatioHorizontalSpacing  %p %lld %p %p %p\n", v37, 30, v38, "AVE_Prop_HEVC_SetPixelAspectRatio", 8333, "hSpacingNumber != __null", a1, *(a1 + 56), a2, a3, a4);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
      }

      v51 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get PixelAspectRatioHorizontalSpacing  %p %lld %p %p %p", v37, 30, v38, "AVE_Prop_HEVC_SetPixelAspectRatio", 8333);
    }

    return 4294966288;
  }

  v11 = Value;
  v12 = CFDictionaryGetValue(a4, kCVImageBufferPixelAspectRatioVerticalSpacingKey);
  if (!v12)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v39 = sub_160F34(0x1Eu);
      v40 = sub_175AE4();
      v41 = sub_160F68(4);
      if (v39)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get PixelAspectRatioVerticalSpacing  %p %lld %p %p %p\n", v40, 30, v41, "AVE_Prop_HEVC_SetPixelAspectRatio", 8338, "vSpacingNumber != __null", a1, *(a1 + 56), a2, a3, a4);
        v40 = sub_175AE4();
        v41 = sub_160F68(4);
      }

      v52 = *(a1 + 56);
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
    v16 = 106676;
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
          v19 = 4;
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
          v19 = 4;
LABEL_21:
          *(a1 + 31332 + v19) = v18;
          goto LABEL_26;
        }
      }

LABEL_85:
      *(a1 + 31336) = 255;
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

    *(a1 + 31336) = v46;
    if (v17 != 2 || v18 != 1)
    {
LABEL_86:
      *(a1 + 31340) = v17;
      v19 = 12;
      goto LABEL_21;
    }

LABEL_26:
    *(a1 + v16) = 1;
    *v8 = 257;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v25 = sub_160F34(0x1Eu);
      v26 = sub_175AE4();
      v27 = sub_160F68(7);
      v28 = *a2;
      if (v25)
      {
        printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v26, 30, v27, a1, *(a1 + 56), *a2, *(a1 + 31336));
        v26 = sub_175AE4();
        sub_160F68(7);
        v29 = *(a1 + 56);
        v48 = *a2;
        v50 = *(a1 + 31336);
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

  if (sub_160EF0(0x1Eu, 4))
  {
    v42 = sub_160F34(0x1Eu);
    v43 = sub_175AE4();
    v44 = sub_160F68(4);
    if (v42)
    {
      printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d %d\n", v43, 30, v44, "AVE_Prop_HEVC_SetPixelAspectRatio", 8348, "hSpacing > 0 && vSpacing > 0", a1, *(a1 + 56), a2, a3, a4, valuePtr, v53);
      v43 = sub_175AE4();
      v44 = sub_160F68(4);
      v45 = *(a1 + 56);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d %d", v43, 30, v44, "AVE_Prop_HEVC_SetPixelAspectRatio", 8348, "hSpacing > 0 && vSpacing > 0");
  }

  return 4294965292;
}

uint64_t sub_4753C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFDictionaryRef *a5)
{
  keys[0] = kCVImageBufferPixelAspectRatioHorizontalSpacingKey;
  keys[1] = kCVImageBufferPixelAspectRatioVerticalSpacingKey;
  values = 0;
  cf = 0;
  valuePtr = 0;
  if (a1 && a2 && a4 && a5)
  {
    if (*(a1 + 31333) != 1)
    {
      v16 = 0;
      goto LABEL_12;
    }

    v10 = *(a1 + 31336);
    switch(v10)
    {
      case 2:
        v11 = 12;
        goto LABEL_33;
      case 3:
        v11 = 10;
        goto LABEL_33;
      case 4:
        v11 = 16;
        goto LABEL_33;
      case 5:
        v24 = 40;
        goto LABEL_36;
      case 6:
        v11 = 24;
        goto LABEL_33;
      case 7:
        goto LABEL_22;
      case 8:
        v11 = 32;
        goto LABEL_33;
      case 9:
        v24 = 80;
        goto LABEL_36;
      case 10:
        v11 = 18;
        goto LABEL_33;
      case 11:
        v11 = 15;
LABEL_33:
        HIDWORD(valuePtr) = v11;
        v23 = 11;
        break;
      case 12:
        v24 = 64;
LABEL_36:
        HIDWORD(valuePtr) = v24;
        v23 = 33;
        break;
      case 13:
        HIDWORD(valuePtr) = 160;
        v23 = 99;
        break;
      case 14:
        HIDWORD(valuePtr) = 4;
        v23 = 3;
        break;
      case 15:
        HIDWORD(valuePtr) = 3;
        v23 = 2;
        break;
      case 16:
        HIDWORD(valuePtr) = 2;
        v23 = 1;
        break;
      default:
        if (v10 == 255)
        {
          HIDWORD(valuePtr) = *(a1 + 31340);
          v23 = *(a1 + 31344);
        }

        else
        {
LABEL_22:
          v23 = 1;
          HIDWORD(valuePtr) = 1;
        }

        break;
    }

    LODWORD(valuePtr) = v23;
    values = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr + 4);
    if (values)
    {
      cf = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
      if (cf)
      {
        v16 = CFDictionaryCreate(kCFAllocatorDefault, keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!v16)
        {
          if (sub_160EF0(0x1Eu, 4))
          {
            v25 = sub_160F34(0x1Eu);
            v26 = sub_175AE4();
            v27 = sub_160F68(4);
            if (v25)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %lld %p %p %p %p\n", v26, 30, v27, "AVE_Prop_HEVC_GetPixelAspectRatio", 8424, "pData != __null", a1, *(a1 + 56), a3, a4, values, cf);
              v26 = sub_175AE4();
              v27 = sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %lld %p %p %p %p", v26, 30, v27, "AVE_Prop_HEVC_GetPixelAspectRatio", 8424, "pData != __null", a1, *(a1 + 56), a3, a4, values, cf);
          }

          goto LABEL_53;
        }

LABEL_12:
        *a5 = v16;
        if (sub_160EF0(0x1Eu, 7))
        {
          v17 = sub_160F34(0x1Eu);
          v18 = sub_175AE4();
          v19 = sub_160F68(7);
          v20 = *a2;
          if (v17)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v18, 30, v19, a1, *(a1 + 56), *a2, v16);
            v18 = sub_175AE4();
            sub_160F68(7);
            v21 = *(a1 + 56);
          }

          v42 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v18);
        }

        v22 = 0;
        goto LABEL_54;
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v36 = sub_160F34(0x1Eu);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (!v36)
        {
          v44 = *(a1 + 56);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v37, 30, v38, "AVE_Prop_HEVC_GetPixelAspectRatio", 8416, "pixelAspectRatio_Values[1] != __null", a1);
          goto LABEL_53;
        }

        v31 = "pixelAspectRatio_Values[1] != __null";
        v32 = 8416;
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v37, 30, v38, "AVE_Prop_HEVC_GetPixelAspectRatio", 8416, "pixelAspectRatio_Values[1] != __null", a1, *(a1 + 56), a2, a3, a4, a5, valuePtr);
        v33 = sub_175AE4();
        v34 = sub_160F68(4);
        v39 = *(a1 + 56);
LABEL_50:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v33, 30, v34, "AVE_Prop_HEVC_GetPixelAspectRatio", v32, v31, a1);
      }
    }

    else if (sub_160EF0(0x1Eu, 4))
    {
      v28 = sub_160F34(0x1Eu);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (!v28)
      {
        v43 = *(a1 + 56);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_GetPixelAspectRatio", 8411, "pixelAspectRatio_Values[0] != __null", a1);
        goto LABEL_53;
      }

      v31 = "pixelAspectRatio_Values[0] != __null";
      v32 = 8411;
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v29, 30, v30, "AVE_Prop_HEVC_GetPixelAspectRatio", 8411, "pixelAspectRatio_Values[0] != __null", a1, *(a1 + 56), a2, a3, a4, a5, HIDWORD(valuePtr));
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      v35 = *(a1 + 56);
      goto LABEL_50;
    }

LABEL_53:
    v22 = 4294966293;
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

    return v22;
  }

  if (sub_160EF0(0x1Eu, 4))
  {
    v12 = sub_160F34(0x1Eu);
    v13 = sub_175AE4();
    v14 = sub_160F68(4);
    if (v12)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v13, 30, v14, "AVE_Prop_HEVC_GetPixelAspectRatio", 8399, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
      v15 = sub_175AE4();
      v41 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v15, 30, v41, "AVE_Prop_HEVC_GetPixelAspectRatio", 8399);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v13, 30, v14, "AVE_Prop_HEVC_GetPixelAspectRatio", 8399);
    }
  }

  return 4294966295;
}

uint64_t sub_47C00(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetID", 8488, "SPSId >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetID", 8488, "SPSId >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106680) = valuePtr;
        *(a1 + 24684) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetID", 8479, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetID", 8479, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetID", 8469, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_48054(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 24684);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetID", 8533, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetID", 8533, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetID", 8524, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_48388(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetRequiredHEVCPictureParameterSetID", 8585, "PPSId >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetRequiredHEVCPictureParameterSetID", 8585, "PPSId >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106684) = valuePtr;
        *(a1 + 39852) = v9;
        *(a1 + 10208) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCPictureParameterSetID", 8576, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCPictureParameterSetID", 8576, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRequiredHEVCPictureParameterSetID", 8566, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_487E0(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 39852);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCPictureParameterSetID", 8632, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCPictureParameterSetID", 8632, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRequiredHEVCPictureParameterSetID", 8623, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_48B14(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetAlphaLayerID", 8684, "alphaLayerID >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetAlphaLayerID", 8684, "alphaLayerID >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106688) = valuePtr;
        *(a1 + 10896) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetAlphaLayerID", 8675, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetAlphaLayerID", 8675, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetAlphaLayerID", 8665, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_48F64(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10896);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetAlphaLayerID", 8729, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetAlphaLayerID", 8729, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetAlphaLayerID", 8720, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_49294(void *a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = 0;
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
        v32 = 8774;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v28, 30, v29, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8774, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v30, a2, a3, a4, v31);
        v33 = sub_175AE4();
        v34 = sub_160F68(4);
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
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v28, 30, v29, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths", v45, v44);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    v10 = Count;
    if (Count > 2)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v37 = sub_160F34(0x1Eu);
        v38 = sub_175AE4();
        v39 = sub_160F68(4);
        if (v37)
        {
          v40 = v10;
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", v38, 30, v39, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8783, "iNum <= 2", a1, a1[7], a2, a3, a4, v10, 0, 2);
          v41 = sub_175AE4();
          v42 = sub_160F68(4);
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
            if (!sub_160EF0(0x1Eu, 4))
            {
              return 4294965292;
            }

            v46 = sub_160F34(0x1Eu);
            v41 = sub_175AE4();
            v47 = sub_160F68(4);
            if (v46)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v41, 30, v47, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8792, "pNum != __null", a1, a1[7], a2, a3, a4);
              v41 = sub_175AE4();
              v48 = sub_160F68(4);
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

        if (!sub_160EF0(0x1Eu, 4))
        {
          return 4294965293;
        }

        v49 = sub_160F34(0x1Eu);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        v50 = a1[7];
        v51 = CFGetTypeID(a4);
        if (v49)
        {
          v32 = 8796;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v28, 30, v29, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8796, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v50, a2, a3, a4, v51);
          v33 = sub_175AE4();
          v34 = sub_160F68(4);
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

        v56 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v19);
        return 0;
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
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8764, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v26 = sub_175AE4();
        v53 = sub_160F68(4);
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

uint64_t sub_49910(void *a1, const void *a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 2, &kCFTypeArrayCallBacks);
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

      if (sub_160EF0(0x1Eu, 4))
      {
        v27 = sub_160F34(0x1Eu);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v28, 30, v29, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8852, "pNum != __null", a1, a1[7], v33, allocator, a4, a5, v12, *v15);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          v32 = *v15;
          v31 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v28, 30, v29, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8852, "pNum != __null", a1);
      }

      CFRelease(v11);
    }

    else if (sub_160EF0(0x1Eu, 4))
    {
      v23 = sub_160F34(0x1Eu);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", v24, 30, v25, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8843, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, 2);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        v26 = a1[7];
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", v24, 30, v25, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8843, "pArray != __null", a1);
    }

    return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatBitDepths", 8835, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v22 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_49CF8(void *a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = 0;
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
        v32 = 8913;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v28, 30, v29, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8913, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v30, a2, a3, a4, v31);
        v33 = sub_175AE4();
        v34 = sub_160F68(4);
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
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v28, 30, v29, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", v45, v44);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    v10 = Count;
    if (Count > 2)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v37 = sub_160F34(0x1Eu);
        v38 = sub_175AE4();
        v39 = sub_160F68(4);
        if (v37)
        {
          v40 = v10;
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", v38, 30, v39, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8922, "iNum <= 2", a1, a1[7], a2, a3, a4, v10, 0, 2);
          v41 = sub_175AE4();
          v42 = sub_160F68(4);
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
            if (!sub_160EF0(0x1Eu, 4))
            {
              return 4294965292;
            }

            v46 = sub_160F34(0x1Eu);
            v41 = sub_175AE4();
            v47 = sub_160F68(4);
            if (v46)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v41, 30, v47, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8931, "pNum != __null", a1, a1[7], a2, a3, a4);
              v41 = sub_175AE4();
              v48 = sub_160F68(4);
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

        if (!sub_160EF0(0x1Eu, 4))
        {
          return 4294965293;
        }

        v49 = sub_160F34(0x1Eu);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        v50 = a1[7];
        v51 = CFGetTypeID(a4);
        if (v49)
        {
          v32 = 8935;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v28, 30, v29, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8935, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v50, a2, a3, a4, v51);
          v33 = sub_175AE4();
          v34 = sub_160F68(4);
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

        v56 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v19);
        return 0;
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
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_SetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8903, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v26 = sub_175AE4();
        v53 = sub_160F68(4);
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

uint64_t sub_4A374(void *a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 2, &kCFTypeArrayCallBacks);
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
          result = sub_160EF0(0x1Eu, 7);
          if (result)
          {
            v19 = sub_160F34(0x1Eu);
            v20 = sub_175AE4();
            v21 = sub_160F68(7);
            if (v19)
            {
              printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v20, 30, v21, a1, a1[7], *v38, 2, v11);
              v20 = sub_175AE4();
              sub_160F68(7);
              v22 = a1[7];
              v35 = *v38;
            }

            syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v20, 30);
            return 0;
          }

          return result;
        }
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v31 = sub_160F34(0x1Eu);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v32, 30, v33, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8991, "pNum != __null", a1, a1[7], v38, allocator, a4, a5, v12, *v15);
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
          v37 = *v15;
          v36 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v32, 30, v33, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8991, "pNum != __null", a1);
      }

      CFRelease(v11);
    }

    else if (sub_160EF0(0x1Eu, 4))
    {
      v27 = sub_160F34(0x1Eu);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", v28, 30, v29, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8982, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, 2);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        v30 = a1[7];
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", v28, 30, v29, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8982, "pArray != __null", a1);
    }

    return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_GetRequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", 8974, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v26 = sub_175AE4();
        v34 = sub_160F68(4);
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

uint64_t sub_4A81C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetRepFormatIndex", 9062, "iRepFormatIndex >= -1", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetRepFormatIndex", 9062, "iRepFormatIndex >= -1");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106708) = valuePtr;
        *(a1 + 10924) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetRepFormatIndex", 9053, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetRepFormatIndex", 9053, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRequiredHEVCSequenceParameterSetRepFormatIndex", 9043, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_4AC70(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10924);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetRepFormatIndex", 9108, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetRepFormatIndex", 9108, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetRequiredHEVCSequenceParameterSetRepFormatIndex", 9098, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_4AFA0(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106712) = v9;
      *(a1 + 12016) = v9;
      *(a1 + 24252) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetTemporalIDNestingFlag", 9151, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetTemporalIDNestingFlag", 9151, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetTemporalIDNestingFlag", 9141, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_4B2EC(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 12016);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 12016))
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetTemporalIDNestingFlag", 9190, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_4B510(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v27, 30, v28, "AVE_Prop_HEVC_SetNumOfGOPLayer", 9246, "iNumOfGOPLayer >= 1 && iNumOfGOPLayer <= 4", a1, *(a1 + 56), a2, a3, a4, valuePtr, 1, 4);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v27, 30, v28, "AVE_Prop_HEVC_SetNumOfGOPLayer", 9246, "iNumOfGOPLayer >= 1 && iNumOfGOPLayer <= 4", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 107720) = valuePtr;
        *(a1 + 1260) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetNumOfGOPLayer", 9237, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetNumOfGOPLayer", 9237, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetNumOfGOPLayer", 9227, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_4B984(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1260);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetNumOfGOPLayer", 9292, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetNumOfGOPLayer", 9292, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetNumOfGOPLayer", 9282, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_4BCB4(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetNumOfTemporalLayer", 9343, "(iNumOfTemporalLayer > 0) && (iNumOfTemporalLayer <= 4)", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetNumOfTemporalLayer", 9343, "(iNumOfTemporalLayer > 0) && (iNumOfTemporalLayer <= 4)");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 107724) = valuePtr;
        *(a1 + 1288) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetNumOfTemporalLayer", 9334, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetNumOfTemporalLayer", 9334, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetNumOfTemporalLayer", 9324, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_4C10C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1288);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetNumOfTemporalLayer", 9389, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetNumOfTemporalLayer", 9389, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetNumOfTemporalLayer", 9379, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_4C43C(void *a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  v42 = 21;
  valuePtr = 20;
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v24 = sub_160F34(0x1Eu);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", v25, 30, v26, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9433, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, 0);
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
          v27 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", v25, 30, v26, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9433, "pArray != __null", a1);
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
        if (sub_160EF0(0x1Eu, 7))
        {
          v16 = sub_160F34(0x1Eu);
          v17 = sub_175AE4();
          v18 = sub_160F68(7);
          if (v16)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %d %d %p\n", v17, 30, v18, a1, a1[7], *a2, valuePtr, v42, v11);
            v17 = sub_175AE4();
            sub_160F68(7);
            v19 = a1[7];
            v41 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %d %p", v17, 30);
        }

        CFRelease(v15);
        return 0;
      }

      if (!sub_160EF0(0x1Eu, 4))
      {
        goto LABEL_32;
      }

      v36 = sub_160F34(0x1Eu);
      v37 = sub_175AE4();
      v38 = sub_160F68(4);
      if (!v36)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v37, 30, v38, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9451, "pNum != __null", a1);
        goto LABEL_32;
      }

      v32 = 9451;
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v37, 30, v38, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9451, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, v42);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      v39 = a1[7];
    }

    else
    {
      if (!sub_160EF0(0x1Eu, 4))
      {
LABEL_32:
        CFRelease(v11);
        return 4294966293;
      }

      v29 = sub_160F34(0x1Eu);
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
      if (!v29)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v30, 30, v31, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9438, "pNum != __null", a1);
        goto LABEL_32;
      }

      v32 = 9438;
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v30, 30, v31, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9438, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      v35 = a1[7];
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v33, 30, v34, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", v32, "pNum != __null", a1);
    goto LABEL_32;
  }

  if (sub_160EF0(0x1Eu, 4))
  {
    v20 = sub_160F34(0x1Eu);
    v21 = sub_175AE4();
    v22 = sub_160F68(4);
    if (v20)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v21, 30, v22, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9425, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
      v23 = sub_175AE4();
      v40 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v23, 30, v40, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9425);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetHEVCSyncSampleNALUnitTypes", 9425);
    }
  }

  return 4294966295;
}

uint64_t sub_4C98C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v43 = sub_160F34(0x1Eu);
        v44 = sub_175AE4();
        v45 = sub_160F68(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", v44, 30, v45, "AVE_Prop_HEVC_GetHEVCTemporalLevelInfoCombinations", 9507, "pArray != __null", a1, *(a1 + 56), a2, allocator, a4, a5, 0);
          v44 = sub_175AE4();
          v45 = sub_160F68(4);
          v46 = *(a1 + 56);
        }

        else
        {
          v68 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", v44, 30, v45, "AVE_Prop_HEVC_GetHEVCTemporalLevelInfoCombinations", 9507, "pArray != __null", a1);
      }

      return 4294966293;
    }

    v11 = Mutable;
    v71 = a2;
    v69 = a4;
    v70 = allocator;
    if (*(a1 + 1288) >= 1)
    {
      v12 = 0;
      while (1)
      {
        v14 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        *bytes = 0;
        memset(v72, 0, 6);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        if (sub_160EF0(0x1Eu, 8))
        {
          v16 = sub_160F34(0x1Eu);
          v17 = sub_175AE4();
          v18 = sub_160F68(8);
          v19 = *(a1 + 24260);
          v20 = *(a1 + 24264);
          v21 = *(a1 + 24316);
          if (v16)
          {
            printf("%lld %d AVE %s: %s:%d eTier %d eProfile %d eLevel %d\n", v17, 30, v18, "CreateTemporalLevelInfoDictionary", 355, v19, *(a1 + 24264), v21);
            v22 = sub_175AE4();
            v23 = sub_160F68(8);
            syslog(3, "%lld %d AVE %s: %s:%d eTier %d eProfile %d eLevel %d", v22, 30, v23, "CreateTemporalLevelInfoDictionary", 355, *(a1 + 24260), *(a1 + 24264), *(a1 + 24316));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d eTier %d eProfile %d eLevel %d", v17, 30, v18, "CreateTemporalLevelInfoDictionary", 355, v19, *(a1 + 24264), v21);
          }
        }

        sub_14B9CC(kCMHEVCTemporalLevelInfoKey_TemporalLevel, v12, v15);
        sub_14B9CC(kCMHEVCTemporalLevelInfoKey_ProfileSpace, *(a1 + 24256), v15);
        v24 = sub_17D658(*(a1 + 24260));
        sub_14B9CC(kCMHEVCTemporalLevelInfoKey_TierFlag, v24, v15);
        v25 = sub_17D4BC(*(a1 + 24264));
        sub_14B9CC(kCMHEVCTemporalLevelInfoKey_ProfileIndex, v25, v15);
        v26 = 0;
        v27 = 0;
        do
        {
          v27 = *(a1 + 24299 + v26--) | (2 * v27);
        }

        while (v26 != -32);
        *bytes = v27;
        v28 = CFDataCreate(0, bytes, 4);
        if (!v28)
        {
          v47 = v71;
          if (sub_160EF0(0x1Eu, 4))
          {
            v52 = sub_160F34(0x1Eu);
            v53 = sub_175AE4();
            v54 = sub_160F68(4);
            if (v52)
            {
              printf("%lld %d AVE %s: %s:%d %s | cf_profileCompatibilityFlags == NULL\n", v53, 30, v54, "CreateTemporalLevelInfoDictionary", 373, "cf_profileCompatibilityFlags != __null");
              v55 = sub_175AE4();
              v65 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | cf_profileCompatibilityFlags == NULL", v55, 30, v65, "CreateTemporalLevelInfoDictionary", 373, "cf_profileCompatibilityFlags != __null");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | cf_profileCompatibilityFlags == NULL", v53, 30, v54, "CreateTemporalLevelInfoDictionary", 373, "cf_profileCompatibilityFlags != __null");
            }
          }

          CFRelease(v15);
          goto LABEL_46;
        }

        v29 = v28;
        CFDictionaryAddValue(v15, kCMHEVCTemporalLevelInfoKey_ProfileCompatibilityFlags, v28);
        *&v72[2] = 0;
        v13 = (a1 + 20480);
        v72[0] = (v13[3821] << 6) | (v13[3820] << 7) | (32 * v13[3822]) | (16 * v13[3823]) | (8 * v13[3824]) | (4 * v13[3825]) | (2 * v13[3826]) | v13[3827];
        v72[1] = (*(a1 + 24309) << 6) | (*(a1 + 24308) << 7) | (32 * *(a1 + 24310)) | (16 * *(a1 + 24311)) | (8 * *(a1 + 24312));
        v30 = CFDataCreate(0, v72, 6);
        if (!v30)
        {
          v47 = v71;
          if (sub_160EF0(0x1Eu, 4))
          {
            v56 = sub_160F34(0x1Eu);
            v57 = sub_175AE4();
            v58 = sub_160F68(4);
            if (v56)
            {
              printf("%lld %d AVE %s: %s:%d %s | cf_constraintIndicatorFlags == NULL\n", v57, 30, v58, "CreateTemporalLevelInfoDictionary", 396, "cf_constraintIndicatorFlags != __null");
              v59 = sub_175AE4();
              v66 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | cf_constraintIndicatorFlags == NULL", v59, 30, v66, "CreateTemporalLevelInfoDictionary", 396, "cf_constraintIndicatorFlags != __null");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | cf_constraintIndicatorFlags == NULL", v57, 30, v58, "CreateTemporalLevelInfoDictionary", 396, "cf_constraintIndicatorFlags != __null");
            }
          }

          CFRelease(v15);
          CFRelease(v29);
          goto LABEL_46;
        }

        v31 = v30;
        CFDictionaryAddValue(v15, kCMHEVCTemporalLevelInfoKey_ConstraintIndicatorFlags, v30);
        v32 = sub_17DA3C(*(a1 + 24316));
        sub_14B9CC(kCMHEVCTemporalLevelInfoKey_LevelIndex, v32, v15);
        CFRelease(v29);
        CFRelease(v31);
        CFArrayAppendValue(v11, v15);
        CFRelease(v15);
        if (++v12 >= *(a1 + 1288))
        {
          goto LABEL_18;
        }
      }

      v47 = v71;
      if (sub_160EF0(0x1Eu, 4))
      {
        v48 = sub_160F34(0x1Eu);
        v49 = sub_175AE4();
        v50 = sub_160F68(4);
        if (v48)
        {
          printf("%lld %d AVE %s: %s:%d %s | TemporalLevelInfoDict == NULL\n", v49, 30, v50, "CreateTemporalLevelInfoDictionary", 353, "TemporalLevelInfoDict != __null");
          v51 = sub_175AE4();
          v64 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | TemporalLevelInfoDict == NULL", v51, 30, v64, "CreateTemporalLevelInfoDictionary", 353, "TemporalLevelInfoDict != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | TemporalLevelInfoDict == NULL", v49, 30, v50, "CreateTemporalLevelInfoDictionary", 353, "TemporalLevelInfoDict != __null");
        }
      }

LABEL_46:
      if (sub_160EF0(0x1Eu, 4))
      {
        v60 = sub_160F34(0x1Eu);
        v61 = sub_175AE4();
        v62 = sub_160F68(4);
        if (v60)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %lld %p %p %p %p %d %p\n", v61, 30, v62, "AVE_Prop_HEVC_GetHEVCTemporalLevelInfoCombinations", 9515, "pDict != __null", a1, *(a1 + 56), v47, v70, v69, a5, v12, (a1 + 24256));
          v61 = sub_175AE4();
          v62 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %lld %p %p %p %p %d %p", v61, 30, v62, "AVE_Prop_HEVC_GetHEVCTemporalLevelInfoCombinations", 9515, "pDict != __null", a1, *(a1 + 56));
      }

      return 4294966293;
    }

LABEL_18:
    *a5 = v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v34 = sub_160F34(0x1Eu);
      v35 = sub_175AE4();
      v36 = sub_160F68(7);
      v37 = *v71;
      if (v34)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v35, 30, v36, a1, *(a1 + 56), *v71, v11);
        v35 = sub_175AE4();
        sub_160F68(7);
        v38 = *(a1 + 56);
      }

      v67 = *v71;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v35);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v39 = sub_160F34(0x1Eu);
      v40 = sub_175AE4();
      v41 = sub_160F68(4);
      if (v39)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v40, 30, v41, "AVE_Prop_HEVC_GetHEVCTemporalLevelInfoCombinations", 9499, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v42 = sub_175AE4();
        v63 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v42, 30, v63, "AVE_Prop_HEVC_GetHEVCTemporalLevelInfoCombinations", 9499);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v40, 30, v41, "AVE_Prop_HEVC_GetHEVCTemporalLevelInfoCombinations", 9499);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_4D358(uint64_t a1, const char **a2, const void *a3, const __CFArray *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Count = CFArrayGetCount(a4);
      v10 = Count;
      v11 = *(a1 + 1132);
      if (v11 == 2)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v30 = sub_160F34(0x1Eu);
          v31 = sub_175AE4();
          v32 = sub_160F68(4);
          if (v30)
          {
            v33 = v10;
            printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_ConstantBitRate                     %p %lld %p %p %p %d\n", v31, 30, v32, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9588, "psINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_CBR", a1, *(a1 + 56), a2, a3, a4, v10);
            v16 = sub_175AE4();
            v34 = sub_160F68(4);
            v91 = a4;
            v92 = v33;
            v89 = a2;
            v90 = a3;
            v79 = a1;
            v80 = *(a1 + 56);
            v76 = 9588;
            v77 = "psINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_CBR";
            v74 = v34;
            v18 = "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_ConstantBitRate                     %p %lld %p %p %p %d";
            goto LABEL_52;
          }

          v82 = *(a1 + 56);
          syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_ConstantBitRate                     %p %lld %p %p %p %d", v31, 30, v32, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9588, "psINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_CBR");
        }

        return 4294966296;
      }

      if (v11 == 4)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v12 = sub_160F34(0x1Eu);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          if (v12)
          {
            v15 = v10;
            printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_DataRateLimits                     %p %lld %p %p %p %d\n", v13, 30, v14, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9583, "psINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_DRL", a1, *(a1 + 56), a2, a3, a4, v10);
            v16 = sub_175AE4();
            v17 = sub_160F68(4);
            v91 = a4;
            v92 = v15;
            v89 = a2;
            v90 = a3;
            v79 = a1;
            v80 = *(a1 + 56);
            v76 = 9583;
            v77 = "psINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_DRL";
            v74 = v17;
            v18 = "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_DataRateLimits                     %p %lld %p %p %p %d";
LABEL_52:
            syslog(3, v18, v16, 30, v74, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", v76, v77, v79, v80, v89, v90, v91, v92);
            return 4294966296;
          }

          v81 = *(a1 + 56);
          syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_DataRateLimits                     %p %lld %p %p %p %d", v13, 30, v14, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9583, "psINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_DRL");
        }

        return 4294966296;
      }

      if (*(a1 + 11776))
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v35 = sub_160F34(0x1Eu);
          v36 = sub_175AE4();
          v37 = sub_160F68(4);
          if (v35)
          {
            v38 = v10;
            printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_MoreFramesBeforeStart                       or kVTCompressionPropertyKey_MoreFramesAfterEnd                     %p %lld %p %p %p %d\n", v36, 30, v37, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9594, "psINS->VideoParamsDriver.iSegmentation == 0", a1, *(a1 + 56), a2, a3, a4, v10);
            v16 = sub_175AE4();
            v39 = sub_160F68(4);
            v91 = a4;
            v92 = v38;
            v89 = a2;
            v90 = a3;
            v79 = a1;
            v80 = *(a1 + 56);
            v76 = 9594;
            v77 = "psINS->VideoParamsDriver.iSegmentation == 0";
            v74 = v39;
            v18 = "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_MoreFramesBeforeStart                       or kVTCompressionPropertyKey_MoreFramesAfterEnd                     %p %lld %p %p %p %d";
            goto LABEL_52;
          }

          v83 = *(a1 + 56);
          syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_MoreFramesBeforeStart                       or kVTCompressionPropertyKey_MoreFramesAfterEnd                     %p %lld %p %p %p %d", v36, 30, v37, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9594, "psINS->VideoParamsDriver.iSegmentation == 0");
        }

        return 4294966296;
      }

      if (*(a1 + 104656))
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v40 = sub_160F34(0x1Eu);
          v41 = sub_175AE4();
          v42 = sub_160F68(4);
          if (v40)
          {
            v43 = v10;
            printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_MultiPassStorage                     %p %lld %p %p %p %d\n", v41, 30, v42, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9599, "psINS->multiPassStorage == __null", a1, *(a1 + 56), a2, a3, a4, v10);
            v16 = sub_175AE4();
            v44 = sub_160F68(4);
            v91 = a4;
            v92 = v43;
            v89 = a2;
            v90 = a3;
            v79 = a1;
            v80 = *(a1 + 56);
            v76 = 9599;
            v77 = "psINS->multiPassStorage == __null";
            v74 = v44;
            v18 = "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_MultiPassStorage                     %p %lld %p %p %p %d";
            goto LABEL_52;
          }

          v84 = *(a1 + 56);
          syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_MultiPassStorage                     %p %lld %p %p %p %d", v41, 30, v42, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9599, "psINS->multiPassStorage == __null");
        }

        return 4294966296;
      }

      if (*(a1 + 11460))
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v45 = sub_160F34(0x1Eu);
          v46 = sub_175AE4();
          v47 = sub_160F68(4);
          if (!v45)
          {
            v85 = *(a1 + 56);
            syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_BaseLayerFrameRate                     %p %lld %p %p %p %d", v46, 30, v47, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9604, "psINS->VideoParamsDriver.iBaseFrameRate == 0");
            return 4294966296;
          }

          v48 = v10;
          printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_BaseLayerFrameRate                     %p %lld %p %p %p %d\n", v46, 30, v47, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9604, "psINS->VideoParamsDriver.iBaseFrameRate == 0", a1, *(a1 + 56), a2, a3, a4, v10);
          v16 = sub_175AE4();
          v49 = sub_160F68(4);
          v91 = a4;
          v92 = v48;
          v89 = a2;
          v90 = a3;
          v79 = a1;
          v80 = *(a1 + 56);
          v76 = 9604;
          v77 = "psINS->VideoParamsDriver.iBaseFrameRate == 0";
          v74 = v49;
          v18 = "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support kVTCompressionPropertyKey_BaseLayerFrameRate                     %p %lld %p %p %p %d";
          goto LABEL_52;
        }

        return 4294966296;
      }

      if (*(a1 + 24688) != 1)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v56 = sub_160F34(0x1Eu);
          v57 = sub_175AE4();
          v58 = sub_160F68(4);
          if (!v56)
          {
            v87 = *(a1 + 56);
            syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support  ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444                     %p %lld %p %p %p %d", v57, 30, v58, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9609, "psINS->saSPS[0].chroma_format_idc == ChromaFmt_420");
            return 4294966296;
          }

          v59 = v10;
          printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support  ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444                     %p %lld %p %p %p %d\n", v57, 30, v58, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9609, "psINS->saSPS[0].chroma_format_idc == ChromaFmt_420", a1, *(a1 + 56), a2, a3, a4, v10);
          v16 = sub_175AE4();
          v60 = sub_160F68(4);
          v91 = a4;
          v92 = v59;
          v89 = a2;
          v90 = a3;
          v79 = a1;
          v80 = *(a1 + 56);
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
        *(a1 + 106720) = 2;
        *(a1 + 10556) = 2;
        *(a1 + 772) = 0x200000002;
        *(a1 + 1336) |= 0x2000000u;
        ValueAtIndex = CFArrayGetValueAtIndex(a4, 0);
        if (ValueAtIndex)
        {
          v51 = 0;
          v52 = a1 + 15575;
          v53 = a1 + 10208;
          v54 = 1;
          while (1)
          {
            CFNumberGetValue(ValueAtIndex, kCFNumberSInt8Type, (v52 + v51));
            if ((v54 & 1) == 0)
            {
              *(v53 + 4 * v51) = v51;
              goto LABEL_65;
            }

            if (*(v52 + v51))
            {
              break;
            }

            *(v53 + 4 * v51) = v51;
            ValueAtIndex = CFArrayGetValueAtIndex(a4, 1);
            v54 = 0;
            v51 = 1;
            if (!ValueAtIndex)
            {
              v55 = 2;
              goto LABEL_61;
            }
          }

          if (sub_160EF0(0x1Eu, 4))
          {
            v71 = sub_160F34(0x1Eu);
            v72 = sub_175AE4();
            v73 = sub_160F68(4);
            if (v71)
            {
              printf("%lld %d AVE %s: %s:%d %s | non-zero video layer ID at base layer %p %lld %p %p %p %d\n", v72, 30, v73, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9649, "psINS->VPSHevcParams.layer_id_in_nuh[i] == 0", a1, *(a1 + 56), a2, a3, a4, *(v52 + v51));
              v72 = sub_175AE4();
              v73 = sub_160F68(4);
              v93 = *(v52 + v51);
              v88 = *(a1 + 56);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | non-zero video layer ID at base layer %p %lld %p %p %p %d", v72, 30, v73, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9649, "psINS->VPSHevcParams.layer_id_in_nuh[i] == 0");
          }

          return 4294965290;
        }

        else
        {
          v55 = 1;
LABEL_61:
          *(a1 + 10556) = v55;
          *(a1 + 772) = v55;
          *(a1 + 776) = v55;
LABEL_65:
          result = sub_160EF0(0x1Eu, 7);
          if (result)
          {
            v66 = sub_160F34(0x1Eu);
            v67 = sub_175AE4();
            v68 = sub_160F68(7);
            v69 = *a2;
            if (v66)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v67, 30, v68, a1, *(a1 + 56), *a2, 2);
              v67 = sub_175AE4();
              sub_160F68(7);
              v70 = *(a1 + 56);
            }

            v78 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v67);
            return 0;
          }
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v61 = sub_160F34(0x1Eu);
          v62 = sub_175AE4();
          v63 = sub_160F68(4);
          if (v61)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid number of video layerIDs %p %lld %p %p %p %d (%d, %d]\n", v62, 30, v63, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9615, "iNum > 1 && iNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1, *(a1 + 56), a2, a3, a4, v10, 1, 2);
            v64 = sub_175AE4();
            v65 = sub_160F68(4);
            v86 = *(a1 + 56);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v23 = sub_160F34(0x1Eu);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        v26 = *(a1 + 56);
        v27 = CFGetTypeID(a4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9574, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          v28 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9574, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_SetMVHEVCVideoLayerIDs", 9564, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v22 = sub_175AE4();
        v75 = sub_160F68(4);
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

uint64_t sub_4DF1C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, *(a1 + 10556), &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v26 = sub_160F34(0x1Eu);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_GetMVHEVCVideoLayerIDs", 9693, "pArray != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 10556));
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          v29 = *(a1 + 56);
          v38 = *(a1 + 10556);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_GetMVHEVCVideoLayerIDs", 9693, "pArray != __null", a1);
      }

      return 4294966293;
    }

    v11 = Mutable;
    if (*(a1 + 10556))
    {
      v12 = 0;
      v13 = a1 + 15575;
      while (1)
      {
        v14 = CFNumberCreate(allocator, kCFNumberSInt8Type, (v13 + v12));
        if (!v14)
        {
          break;
        }

        v15 = v14;
        CFArrayAppendValue(v11, v14);
        CFRelease(v15);
        if (++v12 >= *(a1 + 10556))
        {
          goto LABEL_10;
        }
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v30 = sub_160F34(0x1Eu);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d %d\n", v31, 30, v32, "AVE_Prop_HEVC_GetMVHEVCVideoLayerIDs", 9703, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, v12, *(v13 + v12));
          v31 = sub_175AE4();
          v32 = sub_160F68(4);
          v39 = *(v13 + v12);
          v37 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d %d", v31, 30, v32, "AVE_Prop_HEVC_GetMVHEVCVideoLayerIDs", 9703, "pNum != __null", a1);
      }

      CFRelease(v11);
      return 4294966293;
    }

LABEL_10:
    *a5 = v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(7);
      v20 = *(a1 + 10556);
      if (v17)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v18, 30, v19, a1, *(a1 + 56), *a2, *(a1 + 10556), v11);
        v18 = sub_175AE4();
        sub_160F68(7);
        v21 = *(a1 + 56);
        v35 = *(a1 + 10556);
        v34 = *a2;
      }

      else
      {
        v36 = *(a1 + 10556);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v18, 30);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v23, 30, v24, "AVE_Prop_HEVC_GetMVHEVCVideoLayerIDs", 9684, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v25 = sub_175AE4();
        v33 = sub_160F68(4);
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

uint64_t sub_4E3AC(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v25 = sub_160F34(0x1Eu);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        v28 = *(a1 + 56);
        v29 = CFGetTypeID(a4);
        if (!v25)
        {
          v39 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
          v40 = 9766;
LABEL_29:
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v26, 30, v27, "AVE_Prop_HEVC_SetMVHEVCViewIDs", v40, v39);
          return 4294965293;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9766, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v28, a2, a3, a4, v29);
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
        v32 = *(a1 + 56);
        CFGetTypeID(a4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v30, 30, v31, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9766, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    v10 = Count;
    if (Count >= 3)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v34 = sub_160F34(0x1Eu);
        v35 = sub_175AE4();
        v36 = sub_160F68(4);
        if (v34)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v35, 30, v36, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9776, "iNum <= ((2) < ((62 + 1)) ? (2) : ((62 + 1)))", a1, *(a1 + 56), a2, a3, a4, v10, 0, 2);
          v37 = sub_175AE4();
          v38 = sub_160F68(4);
          v58 = *(a1 + 56);
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
      *(a1 + 106724) = Count;
      *(a1 + 10560) = Count;
      v61 = a2;
      if (Count >= 1)
      {
        v60 = a3;
        v11 = 0;
        v12 = 0;
        v13 = (a1 + 15640);
        v14 = Count & 0x7FFFFFFF;
        v15 = 1;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, v11);
          if (!ValueAtIndex)
          {
            if (sub_160EF0(0x1Eu, 4))
            {
              v46 = sub_160F34(0x1Eu);
              v47 = sub_175AE4();
              v48 = sub_160F68(4);
              if (v46)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v47, 30, v48, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9788, "pNum != __null", a1, *(a1 + 56), v61, v60, a4);
                v47 = sub_175AE4();
                v48 = sub_160F68(4);
                v49 = *(a1 + 56);
              }

              else
              {
                v59 = *(a1 + 56);
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

        if (!sub_160EF0(0x1Eu, 4))
        {
          return 4294965293;
        }

        v50 = sub_160F34(0x1Eu);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        v51 = *(a1 + 56);
        v52 = CFGetTypeID(a4);
        if (v50)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9792, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v51, v61, v60, a4, v52);
          v53 = sub_175AE4();
          v54 = sub_160F68(4);
          v55 = *(a1 + 56);
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
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v41 = sub_160F34(0x1Eu);
        v42 = sub_175AE4();
        v43 = sub_160F68(7);
        v44 = *v61;
        if (v41)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v42, 30, v43, a1, *(a1 + 56), *v61, v10);
          v42 = sub_175AE4();
          sub_160F68(7);
          v45 = *(a1 + 56);
        }

        v57 = *v61;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v42);
        return 0;
      }
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v22, 30, v23, "AVE_Prop_HEVC_SetMVHEVCViewIDs", 9756, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v24 = sub_175AE4();
        v56 = sub_160F68(4);
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

uint64_t sub_4EA8C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, *(a1 + 10556), &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v26 = sub_160F34(0x1Eu);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_GetMVHEVCViewIDs", 9844, "pArray != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 10556));
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          v29 = *(a1 + 56);
          v38 = *(a1 + 10556);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_GetMVHEVCViewIDs", 9844, "pArray != __null", a1);
      }

      return 4294966293;
    }

    v11 = Mutable;
    if (*(a1 + 10556))
    {
      v12 = 0;
      v13 = a1 + 15640;
      while (1)
      {
        v14 = CFNumberCreate(allocator, kCFNumberSInt8Type, (v13 + v12));
        if (!v14)
        {
          break;
        }

        v15 = v14;
        CFArrayAppendValue(v11, v14);
        CFRelease(v15);
        if (++v12 >= *(a1 + 10556))
        {
          goto LABEL_10;
        }
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v30 = sub_160F34(0x1Eu);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v31, 30, v32, "AVE_Prop_HEVC_GetMVHEVCViewIDs", 9852, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, v12, *(v13 + v12));
          v31 = sub_175AE4();
          v32 = sub_160F68(4);
          v39 = *(v13 + v12);
          v37 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v31, 30, v32, "AVE_Prop_HEVC_GetMVHEVCViewIDs", 9852, "pNum != __null", a1);
      }

      CFRelease(v11);
      return 4294966293;
    }

LABEL_10:
    *a5 = v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(7);
      v20 = *(a1 + 10556);
      if (v17)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v18, 30, v19, a1, *(a1 + 56), *a2, *(a1 + 10556), v11);
        v18 = sub_175AE4();
        sub_160F68(7);
        v21 = *(a1 + 56);
        v35 = *(a1 + 10556);
        v34 = *a2;
      }

      else
      {
        v36 = *(a1 + 10556);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v18, 30);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v23, 30, v24, "AVE_Prop_HEVC_GetMVHEVCViewIDs", 9835, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v25 = sub_175AE4();
        v33 = sub_160F68(4);
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

uint64_t sub_4EF1C(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294965293;
      }

      v26 = sub_160F34(0x1Eu);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      v29 = *(a1 + 56);
      v30 = CFGetTypeID(a4);
      if (v26)
      {
        v52 = v29;
        v31 = 9916;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v27, 30, v28, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", 9916, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v52, a2, a3, a4, v30);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        v34 = *(a1 + 56);
        CFGetTypeID(a4);
        v35 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_20:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v32, 30, v33, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", v31, v35);
        return 4294965293;
      }

      v40 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v41 = 9916;
LABEL_28:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v27, 30, v28, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", v41, v40);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    if (Count == 2)
    {
      v10 = 0;
      *(a1 + 106728) = 2;
      v11 = 1;
      while (1)
      {
        v12 = v11;
        ValueAtIndex = CFArrayGetValueAtIndex(a4, v10);
        if (!ValueAtIndex)
        {
          if (sub_160EF0(0x1Eu, 4))
          {
            v42 = sub_160F34(0x1Eu);
            v43 = sub_175AE4();
            v44 = sub_160F68(4);
            if (v42)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v43, 30, v44, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", 9935, "pNum != __null", a1, *(a1 + 56), a2, a3, a4);
              v43 = sub_175AE4();
              v44 = sub_160F68(4);
              v45 = *(a1 + 56);
            }

            else
            {
              v54 = *(a1 + 56);
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
        *(a1 + 11808 + v10) = valuePtr;
        v10 = 1;
        if ((v12 & 1) == 0)
        {
          result = sub_160EF0(0x1Eu, 7);
          if (result)
          {
            v17 = sub_160F34(0x1Eu);
            v18 = sub_175AE4();
            v19 = sub_160F68(7);
            v20 = *a2;
            if (v17)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v18, 30, v19, a1, *(a1 + 56), *a2, 2);
              v18 = sub_175AE4();
              sub_160F68(7);
              v21 = *(a1 + 56);
            }

            v51 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v18);
            return 0;
          }

          return result;
        }
      }

      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294965293;
      }

      v46 = sub_160F34(0x1Eu);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      v47 = *(a1 + 56);
      v48 = CFGetTypeID(a4);
      if (v46)
      {
        v53 = v47;
        v31 = 9939;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v27, 30, v28, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", 9939, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v53, a2, a3, a4, v48);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        v49 = *(a1 + 56);
        CFGetTypeID(a4);
        v35 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
        goto LABEL_20;
      }

      v40 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
      v41 = 9939;
      goto LABEL_28;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v36 = sub_160F34(0x1Eu);
      v37 = sub_175AE4();
      v38 = sub_160F68(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | expecting 2 values received %d %p %lld %p %p %p\n", v37, 30, v38, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", 9924, "iNum == 2", Count, a1, *(a1 + 56), a2, a3, a4);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        v39 = *(a1 + 56);
      }

      else
      {
        v55 = *(a1 + 56);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | expecting 2 values received %d %p %lld %p %p %p", v37, 30, v38, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", 9924, "iNum == 2");
    }

    return 4294965292;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v23, 30, v24, "AVE_Prop_HEVC_SetMVHEVCLeftAndRightViewIDs", 9906, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v25 = sub_175AE4();
        v50 = sub_160F68(4);
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

uint64_t sub_4F570(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, *(a1 + 10556), &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = 0;
      v13 = a1 + 11808;
      for (i = 1; ; i = 0)
      {
        v15 = i;
        v16 = CFNumberCreate(allocator, kCFNumberSInt8Type, (v13 + v12));
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
          result = sub_160EF0(0x1Eu, 7);
          if (result)
          {
            v19 = sub_160F34(0x1Eu);
            v20 = sub_175AE4();
            v21 = sub_160F68(7);
            v22 = *(a1 + 10556);
            if (v19)
            {
              printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v20, 30, v21, a1, *(a1 + 56), *a2, *(a1 + 10556), v11);
              v20 = sub_175AE4();
              sub_160F68(7);
              v23 = *(a1 + 56);
              v37 = *(a1 + 10556);
              v36 = *a2;
            }

            else
            {
              v38 = *(a1 + 10556);
            }

            syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v20, 30);
            return 0;
          }

          return result;
        }
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v32 = sub_160F34(0x1Eu);
        v33 = sub_175AE4();
        v34 = sub_160F68(4);
        if (v32)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v33, 30, v34, "AVE_Prop_HEVC_GetMVHEVCLeftAndRightViewIDs", 9995, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, v12, *(v13 + v12));
          v33 = sub_175AE4();
          v34 = sub_160F68(4);
          v41 = *(v13 + v12);
          v39 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v33, 30, v34, "AVE_Prop_HEVC_GetMVHEVCLeftAndRightViewIDs", 9995, "pNum != __null", a1);
      }

      CFRelease(v11);
    }

    else if (sub_160EF0(0x1Eu, 4))
    {
      v28 = sub_160F34(0x1Eu);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", v29, 30, v30, "AVE_Prop_HEVC_GetMVHEVCLeftAndRightViewIDs", 9986, "pArray != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 10556));
        v29 = sub_175AE4();
        v30 = sub_160F68(4);
        v31 = *(a1 + 56);
        v40 = *(a1 + 10556);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_GetMVHEVCLeftAndRightViewIDs", 9986, "pArray != __null", a1);
    }

    return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v25, 30, v26, "AVE_Prop_HEVC_GetMVHEVCLeftAndRightViewIDs", 9977, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v27 = sub_175AE4();
        v35 = sub_160F68(4);
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

uint64_t sub_4FA08(void *a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294965293;
      }

      v30 = sub_160F34(0x1Eu);
      v31 = sub_175AE4();
      v32 = sub_160F68(4);
      v33 = a1[7];
      v34 = CFGetTypeID(a4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v31, 30, v32, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", 10059, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v33, a2, a3, a4, v34);
        v35 = sub_175AE4();
        v36 = sub_160F68(4);
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
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v31, 30, v32, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", v42, v41);
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
          if (sub_160EF0(0x1Eu, 4))
          {
            v43 = sub_160F34(0x1Eu);
            v44 = sub_175AE4();
            v45 = sub_160F68(4);
            if (v43)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v44, 30, v45, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", 10078, "pNum != __null", v58, v58[7], v59, v57, a4);
              v44 = sub_175AE4();
              v45 = sub_160F68(4);
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
          result = sub_160EF0(0x1Eu, 7);
          if (result)
          {
            v21 = sub_160F34(0x1Eu);
            v22 = sub_175AE4();
            v23 = sub_160F68(7);
            v24 = *v59;
            if (v21)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v22, 30, v23, v58, v58[7], *v59, 2);
              v22 = sub_175AE4();
              sub_160F68(7);
              v25 = v58[7];
            }

            v53 = *v59;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v22);
            return 0;
          }

          return result;
        }
      }

      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294965293;
      }

      v47 = sub_160F34(0x1Eu);
      v31 = sub_175AE4();
      v32 = sub_160F68(4);
      v48 = v58[7];
      v49 = CFGetTypeID(a4);
      if (v47)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v31, 30, v32, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", 10082, "CFNumberGetTypeID() == CFGetTypeID(pNum)", v58, v48, v59, v57, a4, v49);
        v35 = sub_175AE4();
        v36 = sub_160F68(4);
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

    if (sub_160EF0(0x1Eu, 4))
    {
      v38 = sub_160F34(0x1Eu);
      v39 = sub_175AE4();
      v40 = sub_160F68(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v39, 30, v40, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", 10069, "iNum == ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1, a1[7], a2, a3, a4, Count, 2, 2);
        v39 = sub_175AE4();
        v40 = sub_160F68(4);
      }

      v55 = a1[7];
      syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v39, 30, v40, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", 10069, "iNum == ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1);
    }

    return 4294965292;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v27, 30, v28, "AVE_Prop_HEVC_SetRequiredMVHEVCSequenceParameterSetIDs", 10049, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v29 = sub_175AE4();
        v51 = sub_160F68(4);
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

uint64_t sub_500CC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, *(a1 + 10556), &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v28 = sub_160F34(0x1Eu);
        v29 = sub_175AE4();
        v30 = sub_160F68(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", v29, 30, v30, "AVE_Prop_HEVC_GetRequiredMVHEVCSequenceParameterSetIDs", 10135, "pArray != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 10556));
          v29 = sub_175AE4();
          v30 = sub_160F68(4);
          v31 = *(a1 + 56);
          v40 = *(a1 + 10556);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_GetRequiredMVHEVCSequenceParameterSetIDs", 10135, "pArray != __null", a1);
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

    v13 = *(a1 + 10556);
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
      v15 = (a1 + 7804 * v12 + 24684);
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

      if (sub_160EF0(0x1Eu, 4))
      {
        v32 = sub_160F34(0x1Eu);
        v33 = sub_175AE4();
        v34 = sub_160F68(4);
        if (v32)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v33, 30, v34, "AVE_Prop_HEVC_GetRequiredMVHEVCSequenceParameterSetIDs", 10149, "pNum != __null", a1, *(a1 + 56), v42, allocator, a4, a5, v12, *v15);
          v33 = sub_175AE4();
          v34 = sub_160F68(4);
          v41 = *v15;
          v39 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v33, 30, v34, "AVE_Prop_HEVC_GetRequiredMVHEVCSequenceParameterSetIDs", 10149, "pNum != __null", a1);
      }

      CFRelease(v11);
      return 4294966293;
    }

LABEL_16:
    *a5 = v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(7);
      v22 = *(a1 + 10556);
      if (v19)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v20, 30, v21, a1, *(a1 + 56), *v42, *(a1 + 10556), v11);
        v20 = sub_175AE4();
        sub_160F68(7);
        v23 = *(a1 + 56);
        v37 = *(a1 + 10556);
        v36 = *v42;
      }

      else
      {
        v38 = *(a1 + 10556);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v20, 30);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v25, 30, v26, "AVE_Prop_HEVC_GetRequiredMVHEVCSequenceParameterSetIDs", 10126, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v27 = sub_175AE4();
        v35 = sub_160F68(4);
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

uint64_t sub_50598(void *a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v27 = sub_160F34(0x1Eu);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        v30 = a1[7];
        v31 = CFGetTypeID(a4);
        if (!v27)
        {
          v38 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
          v39 = 10213;
LABEL_27:
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v28, 30, v29, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", v39, v38);
          return 4294965293;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v28, 30, v29, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10213, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v30, a2, a3, a4, v31);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
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
          if (sub_160EF0(0x1Eu, 4))
          {
            v40 = sub_160F34(0x1Eu);
            v41 = sub_175AE4();
            v42 = sub_160F68(4);
            if (v40)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v41, 30, v42, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10231, "pNum != __null", a1, a1[7], a2, a3, a4);
              v41 = sub_175AE4();
              v42 = sub_160F68(4);
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
          result = sub_160EF0(0x1Eu, 7);
          if (result)
          {
            v18 = sub_160F34(0x1Eu);
            v19 = sub_175AE4();
            v20 = sub_160F68(7);
            v21 = *a2;
            if (v18)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v19, 30, v20, a1, a1[7], *a2, 2);
              v19 = sub_175AE4();
              sub_160F68(7);
              v22 = a1[7];
            }

            v51 = *a2;
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

      v44 = sub_160F34(0x1Eu);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      v45 = a1[7];
      v46 = CFGetTypeID(a4);
      if (v44)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v28, 30, v29, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10235, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v45, a2, a3, a4, v46);
        v47 = sub_175AE4();
        v48 = sub_160F68(4);
        v49 = a1[7];
        CFGetTypeID(a4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v47, 30, v48, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10235, "CFNumberGetTypeID() == CFGetTypeID(pNum)");
        return 4294965293;
      }

      v38 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
      v39 = 10235;
      goto LABEL_27;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v35 = sub_160F34(0x1Eu);
      v36 = sub_175AE4();
      v37 = sub_160F68(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | expecting %d values received %d %p %lld %p %p %p\n", v36, 30, v37, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10222, "iNum == ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", 2, Count, a1, a1[7], a2, a3, a4);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
      }

      v53 = a1[7];
      syslog(3, "%lld %d AVE %s: %s:%d %s | expecting %d values received %d %p %lld %p %p %p", v36, 30, v37, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10222, "iNum == ((2) < ((63 + 1)) ? (2) : ((63 + 1)))");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_SetRequiredMVHEVCPictureParameterSetIDs", 10203, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v26 = sub_175AE4();
        v50 = sub_160F68(4);
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

uint64_t sub_50C48(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, *(a1 + 10556), &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v28 = sub_160F34(0x1Eu);
        v29 = sub_175AE4();
        v30 = sub_160F68(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", v29, 30, v30, "AVE_Prop_HEVC_GetRequiredMVHEVCPictureParameterSetIDs", 10287, "pArray != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 10556));
          v29 = sub_175AE4();
          v30 = sub_160F68(4);
          v31 = *(a1 + 56);
          v40 = *(a1 + 10556);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_GetRequiredMVHEVCPictureParameterSetIDs", 10287, "pArray != __null", a1);
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

    v13 = *(a1 + 10556);
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
      v15 = (a1 + 9632 * v12 + 39852);
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

      if (sub_160EF0(0x1Eu, 4))
      {
        v32 = sub_160F34(0x1Eu);
        v33 = sub_175AE4();
        v34 = sub_160F68(4);
        if (v32)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v33, 30, v34, "AVE_Prop_HEVC_GetRequiredMVHEVCPictureParameterSetIDs", 10301, "pNum != __null", a1, *(a1 + 56), v42, allocator, a4, a5, v12, *v15);
          v33 = sub_175AE4();
          v34 = sub_160F68(4);
          v41 = *v15;
          v39 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v33, 30, v34, "AVE_Prop_HEVC_GetRequiredMVHEVCPictureParameterSetIDs", 10301, "pNum != __null", a1);
      }

      CFRelease(v11);
      return 4294966293;
    }

LABEL_16:
    *a5 = v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(7);
      v22 = *(a1 + 10556);
      if (v19)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v20, 30, v21, a1, *(a1 + 56), *v42, *(a1 + 10556), v11);
        v20 = sub_175AE4();
        sub_160F68(7);
        v23 = *(a1 + 56);
        v37 = *(a1 + 10556);
        v36 = *v42;
      }

      else
      {
        v38 = *(a1 + 10556);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v20, 30);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v25, 30, v26, "AVE_Prop_HEVC_GetRequiredMVHEVCPictureParameterSetIDs", 10278, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v27 = sub_175AE4();
        v35 = sub_160F68(4);
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

uint64_t sub_51114(void *a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294965293;
      }

      v26 = sub_160F34(0x1Eu);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      v29 = a1[7];
      v30 = CFGetTypeID(a4);
      if (v26)
      {
        v51 = v29;
        v31 = 10365;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v27, 30, v28, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10365, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v51, a2, a3, a4, v30);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
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
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v27, 30, v28, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", v40, v39);
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
          if (sub_160EF0(0x1Eu, 4))
          {
            v41 = sub_160F34(0x1Eu);
            v42 = sub_175AE4();
            v43 = sub_160F68(4);
            if (v41)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v42, 30, v43, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10382, "pNum != __null", a1, a1[7], a2, a3, a4);
              v42 = sub_175AE4();
              v43 = sub_160F68(4);
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
          result = sub_160EF0(0x1Eu, 7);
          if (result)
          {
            v17 = sub_160F34(0x1Eu);
            v18 = sub_175AE4();
            v19 = sub_160F68(7);
            v20 = *a2;
            if (v17)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v18, 30, v19, a1, a1[7], *a2, 2);
              v18 = sub_175AE4();
              sub_160F68(7);
              v21 = a1[7];
            }

            v50 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v18);
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
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      v46 = a1[7];
      v47 = CFGetTypeID(a4);
      if (v45)
      {
        v52 = v46;
        v31 = 10386;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v27, 30, v28, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10386, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v52, a2, a3, a4, v47);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        v48 = a1[7];
        CFGetTypeID(a4);
        v35 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
        goto LABEL_20;
      }

      v39 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
      v40 = 10386;
      goto LABEL_28;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v36 = sub_160F34(0x1Eu);
      v37 = sub_175AE4();
      v38 = sub_160F68(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | expecting %d values received %d %p %lld %p %p %p\n", v37, 30, v38, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10373, "iNum == ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", 2, Count, a1, a1[7], a2, a3, a4);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
      }

      v54 = a1[7];
      syslog(3, "%lld %d AVE %s: %s:%d %s | expecting %d values received %d %p %lld %p %p %p", v37, 30, v38, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10373, "iNum == ((2) < ((63 + 1)) ? (2) : ((63 + 1)))");
    }

    return 4294965292;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v23, 30, v24, "AVE_Prop_HEVC_SetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10355, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v25 = sub_175AE4();
        v49 = sub_160F68(4);
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

uint64_t sub_5176C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", v28, 30, v29, "AVE_Prop_HEVC_GetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10433, "pArray != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 10556));
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          v30 = *(a1 + 56);
          v39 = *(a1 + 10556);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", v28, 30, v29, "AVE_Prop_HEVC_GetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10433, "pArray != __null", a1);
      }

      return 4294966293;
    }

    v11 = Mutable;
    if (*(a1 + 10556))
    {
      v12 = 2724;
      v13 = 10896;
      while (1)
      {
        v14 = CFNumberCreate(allocator, kCFNumberSInt8Type, (a1 + v13));
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v32, 30, v33, "AVE_Prop_HEVC_GetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10442, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, v12 - 2724, *(a1 + 4 * v12));
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
          v40 = *(a1 + 4 * v12);
          v38 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v32, 30, v33, "AVE_Prop_HEVC_GetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10442, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v24, 30, v25, "AVE_Prop_HEVC_GetRequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", 10424, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v26 = sub_175AE4();
        v34 = sub_160F68(4);
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

uint64_t sub_51C04(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (*(a1 + 24688) == 1 || *(a1 + 10556) == 1)
      {
        CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
        v9 = sub_E7834(*(a1 + 68), *(a1 + 64), *(a1 + 716), 2, valuePtr);
        if (v9)
        {
          v10 = v9;
          if (sub_160EF0(0x1Eu, 4))
          {
            v11 = sub_160F34(0x1Eu);
            v12 = sub_175AE4();
            v13 = sub_160F68(4);
            if (v11)
            {
              printf("%lld %d AVE %s: %s:%d %s | invalid input pixel format %p %lld %p %p %p %d\n", v12, 30, v13, "AVE_Prop_HEVC_SetInputPixelFormat", 10528, "ret == 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
              v12 = sub_175AE4();
              v13 = sub_160F68(4);
              v14 = *(a1 + 56);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | invalid input pixel format %p %lld %p %p %p %d", v12, 30, v13, "AVE_Prop_HEVC_SetInputPixelFormat", 10528, "ret == 0");
          }
        }

        else
        {
          v25 = sub_167CD8(valuePtr);
          if (v25)
          {
            v26 = valuePtr;
            *(a1 + 106532) = valuePtr;
            *(a1 + 24688) = *(v25 + 3);
            *(a1 + 10781) = 1;
            *(a1 + 108000) = v26;
            if (sub_160EF0(0x1Eu, 7))
            {
              v27 = sub_160F34(0x1Eu);
              v28 = sub_175AE4();
              v29 = sub_160F68(7);
              v30 = *a2;
              if (v27)
              {
                printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v28, 30, v29, a1, *(a1 + 56), *a2, valuePtr);
                v28 = sub_175AE4();
                sub_160F68(7);
                v31 = *(a1 + 56);
              }

              v42 = *a2;
              syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v28);
            }

            return 0;
          }

          else
          {
            if (sub_160EF0(0x1Eu, 4))
            {
              v37 = sub_160F34(0x1Eu);
              v38 = sub_175AE4();
              v39 = sub_160F68(4);
              if (v37)
              {
                printf("%lld %d AVE %s: %s:%d %s | failed to get pixel format details %p %lld %p %p %p %d\n", v38, 30, v39, "AVE_Prop_HEVC_SetInputPixelFormat", 10534, "pPixelFmt != __null", a1, *(a1 + 56), a2, a3, a4, valuePtr);
                v38 = sub_175AE4();
                v39 = sub_160F68(4);
                v40 = *(a1 + 56);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get pixel format details %p %lld %p %p %p %d", v38, 30, v39, "AVE_Prop_HEVC_SetInputPixelFormat", 10534, "pPixelFmt != __null");
            }

            return 4294966296;
          }
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v32 = sub_160F34(0x1Eu);
          v33 = sub_175AE4();
          v34 = sub_160F68(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support  ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444                     %s %p %p %p %p\n", v33, 30, v34, "AVE_Prop_HEVC_SetInputPixelFormat", 10514, "psINS->VideoParams.iLayerNum == 1", *a2, a1, a2, a3, a4);
            v33 = sub_175AE4();
            v34 = sub_160F68(4);
            v35 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support  ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444                     %s %p %p %p %p", v33, 30, v34, "AVE_Prop_HEVC_SetInputPixelFormat", 10514);
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_HEVC_SetInputPixelFormat", 10506, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          v24 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_HEVC_SetInputPixelFormat", 10506, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_HEVC_SetInputPixelFormat", 10496, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v18 = sub_175AE4();
        v41 = sub_160F68(4);
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

uint64_t sub_52290(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  valuePtr = 0;
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 24688);
    switch(v10)
    {
      case 3:
        if (*(a1 + 31356) == 1)
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
          if (sub_160EF0(0x1Eu, 4))
          {
            v32 = sub_160F34(0x1Eu);
            v33 = sub_175AE4();
            v34 = sub_160F68(4);
            if (!v32)
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v33, 30, v34, "AVE_Prop_HEVC_GetInputPixelFormat", 10607, "pNum != __null", a1);
              return 4294966293;
            }

            v16 = 10607;
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v33, 30, v34, "AVE_Prop_HEVC_GetInputPixelFormat", 10607, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
            goto LABEL_40;
          }

          return 4294966293;
        }

        break;
      case 2:
        if (*(a1 + 31356) == 1)
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
          if (sub_160EF0(0x1Eu, 4))
          {
            v23 = sub_160F34(0x1Eu);
            v24 = sub_175AE4();
            v25 = sub_160F68(4);
            if (!v23)
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v24, 30, v25, "AVE_Prop_HEVC_GetInputPixelFormat", 10597, "pNum != __null", a1);
              return 4294966293;
            }

            v16 = 10597;
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v24, 30, v25, "AVE_Prop_HEVC_GetInputPixelFormat", 10597, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
            goto LABEL_40;
          }

          return 4294966293;
        }

        break;
      case 1:
        if (*(a1 + 31356) == 1)
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
          if (sub_160EF0(0x1Eu, 4))
          {
            v13 = sub_160F34(0x1Eu);
            v14 = sub_175AE4();
            v15 = sub_160F68(4);
            if (!v13)
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v14, 30, v15, "AVE_Prop_HEVC_GetInputPixelFormat", 10587, "pNum != __null", a1);
              return 4294966293;
            }

            v16 = 10587;
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v14, 30, v15, "AVE_Prop_HEVC_GetInputPixelFormat", 10587, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
LABEL_40:
            v35 = sub_175AE4();
            v36 = sub_160F68(4);
            v37 = *(a1 + 56);
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
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v28 = sub_160F34(0x1Eu);
          v29 = sub_175AE4();
          v30 = sub_160F68(7);
          if (v28)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v29, 30, v30, a1, *(a1 + 56), *a2, valuePtr, v27);
            v29 = sub_175AE4();
            sub_160F68(7);
            v31 = *(a1 + 56);
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

  if (sub_160EF0(0x1Eu, 4))
  {
    v17 = sub_160F34(0x1Eu);
    v18 = sub_175AE4();
    v19 = sub_160F68(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetInputPixelFormat", 10572, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
      v20 = sub_175AE4();
      v38 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v38, "AVE_Prop_HEVC_GetInputPixelFormat", 10572);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetInputPixelFormat", 10572);
    }
  }

  return 4294966295;
}

uint64_t sub_52760(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        *(a1 + 106756) = valuePtr;
        *(a1 + 10782) = 1;
        v10 = 2 * (v9 != 8);
        *(a1 + 24732) = v10;
        *(a1 + 24736) = v10;
        v11 = *(a1 + 104628);
        if ((v11 | 2) == 0xA && *(a1 + 10752) != 2 && (v12 = sub_DDADC(*(a1 + 68), *(a1 + 64), *(a1 + 716), 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v10 | 8u, v11, 0x414C4C20u, *(a1 + 16)), v12))
        {
          v13 = v12;
          if (sub_160EF0(0x1Eu, 4))
          {
            v14 = sub_160F34(0x1Eu);
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            if (v14)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d\n", v15, 30, v16, "AVE_Prop_HEVC_SetOutputBitDepth", 10696, "ret == 0", a1, *(a1 + 56), a2, a3, a4, v13);
              v15 = sub_175AE4();
              v16 = sub_160F68(4);
              v17 = *(a1 + 56);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d", v15, 30, v16, "AVE_Prop_HEVC_SetOutputBitDepth", 10696, "ret == 0");
          }
        }

        else
        {
          if (sub_160EF0(0x1Eu, 7))
          {
            v32 = sub_160F34(0x1Eu);
            v33 = sub_175AE4();
            v34 = sub_160F68(7);
            v35 = *a2;
            if (v32)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v33, 30, v34, a1, *(a1 + 56), *a2, valuePtr);
              v33 = sub_175AE4();
              sub_160F68(7);
              v36 = *(a1 + 56);
            }

            v39 = *a2;
            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v33);
          }

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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v29, 30, v30, "AVE_Prop_HEVC_SetOutputBitDepth", 10663, "OutputBitDepth == 8 || OutputBitDepth == 10", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v29 = sub_175AE4();
            v30 = sub_160F68(4);
            v31 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_SetOutputBitDepth", 10663, "OutputBitDepth == 8 || OutputBitDepth == 10");
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetOutputBitDepth", 10654, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v27 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetOutputBitDepth", 10654, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_SetOutputBitDepth", 10644, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = sub_175AE4();
        v38 = sub_160F68(4);
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

uint64_t sub_52D34(uint64_t a1, const char **a2, const __CFAllocator *a3, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 24732) + 8;
    valuePtr = v10;
    if (sub_160EF0(0x1Eu, 7))
    {
      v11 = sub_160F34(0x1Eu);
      v12 = sub_175AE4();
      v13 = sub_160F68(7);
      if (v11)
      {
        printf("%lld %d AVE %s: FIG: asked for kVTCompressionPropertyKey_OutputBitDepth return %d\n", v12, 30, v13, v10);
        v14 = sub_175AE4();
        v30 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: FIG: asked for kVTCompressionPropertyKey_OutputBitDepth return %d", v14, 30, v30, v10);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: asked for kVTCompressionPropertyKey_OutputBitDepth return %d", v12, 30, v13, v10);
      }
    }

    v20 = CFNumberCreate(a3, kCFNumberSInt32Type, &valuePtr);
    if (v20)
    {
      v21 = v20;
      *a5 = v20;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(7);
        if (v22)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v23, 30, v24, a1, *(a1 + 56), *a2, valuePtr, v21);
          v23 = sub_175AE4();
          sub_160F68(7);
          v25 = *(a1 + 56);
          v32 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v23, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_GetOutputBitDepth", 10742, "pNum != __null", a1, *(a1 + 56), a2, a3, a4, a5, valuePtr);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          v29 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_GetOutputBitDepth", 10742, "pNum != __null", a1);
      }

      return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v16, 30, v17, "AVE_Prop_HEVC_GetOutputBitDepth", 10729, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v18 = sub_175AE4();
        v31 = sub_160F68(4);
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

uint64_t sub_530F0(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = sub_16FD90(*(a1 + 68));
      if (v9)
      {
        v10 = v9;
        CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
        v11 = valuePtr;
        if ((valuePtr - 1) >= 0x20)
        {
          if (sub_160EF0(0x1Eu, 4))
          {
            v33 = sub_160F34(0x1Eu);
            v34 = sub_175AE4();
            v35 = sub_160F68(4);
            if (v33)
            {
              printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v34, 30, v35, "AVE_Prop_HEVC_SetNumberOfSlices", 10800, "numberOfSlices <= ((32) < (256) ? (32) : (256)) && numberOfSlices >= 1", a1, *(a1 + 56), a2, a3, a4, valuePtr, 1, 32);
              v34 = sub_175AE4();
              v35 = sub_160F68(4);
              v36 = *(a1 + 56);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v34, 30, v35, "AVE_Prop_HEVC_SetNumberOfSlices", 10800, "numberOfSlices <= ((32) < (256) ? (32) : (256)) && numberOfSlices >= 1", a1);
          }

          return 4294965292;
        }

        else
        {
          v12 = (a1 + 10248);
          *(a1 + 106536) = valuePtr;
          if ((v11 - 2) <= 2)
          {
            *(a1 + 10512) = 1;
          }

          v13 = sub_14E330(v11, *(a1 + 1444), *(*(v10 + 8) + 16), *v12, (a1 + 10252));
          if (v13)
          {
            v14 = v13;
            if (sub_160EF0(0x1Eu, 4))
            {
              v15 = sub_160F34(0x1Eu);
              v16 = sub_175AE4();
              v17 = sub_160F68(4);
              if (v15)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to generate slice map %d %d %d %d %p %d\n", v16, 30, v17, "AVE_Prop_HEVC_SetNumberOfSlices", 10816, "ret == 0", valuePtr, *(a1 + 1444), *(*(v10 + 8) + 16), *v12, (a1 + 10252), v14);
                v16 = sub_175AE4();
                v17 = sub_160F68(4);
                v18 = *(*(v10 + 8) + 16);
                v46 = *v12;
                v45 = *(a1 + 1444);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to generate slice map %d %d %d %d %p %d", v16, 30, v17, "AVE_Prop_HEVC_SetNumberOfSlices");
            }
          }

          else
          {
            if (sub_160EF0(0x1Eu, 7))
            {
              v37 = sub_160F34(0x1Eu);
              v38 = sub_175AE4();
              v39 = sub_160F68(7);
              v40 = *a2;
              if (v37)
              {
                printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v38, 30, v39, a1, *(a1 + 56), *a2, valuePtr);
                v38 = sub_175AE4();
                sub_160F68(7);
                v41 = *(a1 + 56);
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v29 = sub_160F34(0x1Eu);
          v30 = sub_175AE4();
          v31 = sub_160F68(4);
          if (v29)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %p %p %d\n", v30, 30, v31, "AVE_Prop_HEVC_SetNumberOfSlices", 10790, "pDevCap != __null", a1, a3, a4, *(a1 + 68));
            v30 = sub_175AE4();
            v31 = sub_160F68(4);
            v32 = *(a1 + 68);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %p %p %d", v30, 30, v31, "AVE_Prop_HEVC_SetNumberOfSlices");
        }

        return 4294966294;
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
        v27 = CFGetTypeID(a4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_HEVC_SetNumberOfSlices", 10785, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          v28 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_HEVC_SetNumberOfSlices", 10785, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_SetNumberOfSlices", 10775, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v22 = sub_175AE4();
        v43 = sub_160F68(4);
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

uint64_t sub_537B4(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10252);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetNumberOfSlices", 10858, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetNumberOfSlices", 10858, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetNumberOfSlices", 10848, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_53AE4(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v27 = sub_160F34(0x1Eu);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)\n", v28, 30, v29, "AVE_Prop_HEVC_SetSAOMode", 10910, "(SAOMode >= SAO_MODE_DISABLED) && (SAOMode < SAO_MODE_INVALID)", a1, *(a1 + 56), a2, a3, a4, valuePtr, 0, 5);
            v28 = sub_175AE4();
            v29 = sub_160F68(4);
            v30 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)", v28, 30, v29, "AVE_Prop_HEVC_SetSAOMode", 10910, "(SAOMode >= SAO_MODE_DISABLED) && (SAOMode < SAO_MODE_INVALID)", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106760) = valuePtr;
        *(a1 + 10788) = v9;
        v10 = 8 * v9;
        *(a1 + 59393) = 0x101000100uLL >> v10;
        *(a1 + 59394) = 0x101010000uLL >> v10;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v12 = sub_160F34(0x1Eu);
          v13 = sub_175AE4();
          v14 = sub_160F68(7);
          v15 = *a2;
          if (v12)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v13, 30, v14, a1, *(a1 + 56), *a2, valuePtr);
            v13 = sub_175AE4();
            sub_160F68(7);
            v16 = *(a1 + 56);
          }

          v32 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v13);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        v24 = *(a1 + 56);
        v25 = CFGetTypeID(a4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v22, 30, v23, "AVE_Prop_HEVC_SetSAOMode", 10900, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v24, a2, a3, a4, v25);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v26 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v22, 30, v23, "AVE_Prop_HEVC_SetSAOMode", 10900, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_SetSAOMode", 10890, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v20 = sub_175AE4();
        v31 = sub_160F68(4);
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

uint64_t sub_53F80(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10788);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetSAOMode", 10984, "pMode != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetSAOMode", 10984, "pMode != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSAOMode", 10974, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_542B0(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = -1;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID != CFGetTypeID(a4))
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMotionEstimationSearchMode", 11028, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMotionEstimationSearchMode", 11028, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }

    CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
    if ((valuePtr & 0x80000000) == 0)
    {
      if (sub_E71EC(*(a1 + 68), 1, 2, valuePtr))
      {
        v9 = valuePtr;
        *(a1 + 106544) = valuePtr;
        *(a1 + 10168) = v9;
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

          v35 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }

        return result;
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v30 = sub_160F34(0x1Eu);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find search range mode %p %lld %p %p %p %d\n", v31, 30, v32, "AVE_Prop_HEVC_SetMotionEstimationSearchMode", 11044, "pSREntry != __null", a1, *(a1 + 56), a2, a3, a4, valuePtr);
          v31 = sub_175AE4();
          v32 = sub_160F68(4);
          v33 = *(a1 + 56);
        }

        else
        {
          v36 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find search range mode %p %lld %p %p %p %d", v31, 30, v32, "AVE_Prop_HEVC_SetMotionEstimationSearchMode", 11044, "pSREntry != __null");
      }

      return 4294965293;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v26 = sub_160F34(0x1Eu);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetMotionEstimationSearchMode", 11037, "iMotionSearchRangeMode >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        v29 = *(a1 + 56);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetMotionEstimationSearchMode", 11037, "iMotionSearchRangeMode >= 0");
    }

    return 4294965292;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMotionEstimationSearchMode", 11018, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v34 = sub_160F68(4);
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

uint64_t sub_54808(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10168);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMotionEstimationSearchMode", 11090, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMotionEstimationSearchMode", 11090, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMotionEstimationSearchMode", 11080, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_54B3C(uint64_t a1, const char **a2, const __CFAllocator *a3, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = sub_16FEFC(*(a1 + 68), 1, 2);
    if (v10)
    {
      v11 = v10;
      Mutable = CFArrayCreateMutable(a3, 0, &kCFTypeArrayCallBacks);
      if (Mutable)
      {
        v13 = Mutable;
        v14 = sub_13CB28(v11 + 1, *v11, Mutable);
        if (v14)
        {
          v15 = v14;
          if (sub_160EF0(0x1Eu, 4))
          {
            v16 = sub_160F34(0x1Eu);
            v17 = sub_175AE4();
            v18 = sub_160F68(4);
            if (v16)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to make CFMutableArrayRef %p %lld %p %p %p %p %d\n", v17, 30, v18, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11142, "ret == 0", a1, *(a1 + 56), a2, a3, a4, a5, *v11);
              v17 = sub_175AE4();
              v18 = sub_160F68(4);
              v42 = *v11;
              v41 = *(a1 + 56);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make CFMutableArrayRef %p %lld %p %p %p %p %d", v17, 30, v18, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11142, "ret == 0", a1);
          }
        }

        else
        {
          *a5 = v13;
          if (sub_160EF0(0x1Eu, 7))
          {
            v31 = sub_160F34(0x1Eu);
            v32 = sub_175AE4();
            v33 = sub_160F68(7);
            v34 = *v11;
            if (v31)
            {
              printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v32, 30, v33, a1, *(a1 + 56), *a2, *v11, v13);
              v32 = sub_175AE4();
              sub_160F68(7);
              v35 = *(a1 + 56);
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v27 = sub_160F34(0x1Eu);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFMutableArrayRef %p %lld %p %p %p %p\n", v28, 30, v29, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11137, "pArray != __null", a1, *(a1 + 56), a2, a3, a4, a5);
            v28 = sub_175AE4();
            v29 = sub_160F68(4);
            v30 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFMutableArrayRef %p %lld %p %p %p %p", v28, 30, v29, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11137, "pArray != __null");
        }

        return 4294966293;
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get search range %p %lld %p %p %p %p %d\n", v24, 30, v25, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11132, "pSR != __null", a1, *(a1 + 56), a2, a3, a4, a5, *(a1 + 68));
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          v26 = *(a1 + 56);
          v43 = *(a1 + 68);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get search range %p %lld %p %p %p %p %d", v24, 30, v25, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11132, "pSR != __null", a1);
      }

      return 4294966294;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetSupportedMotionSearchModes", 11124, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v37 = sub_160F68(4);
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

uint64_t sub_55098(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetEnableStatsCollect", 11194, "iEnableStatsCollect >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetEnableStatsCollect", 11194, "iEnableStatsCollect >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106548) = valuePtr;
        *(a1 + 1464) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableStatsCollect", 11185, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableStatsCollect", 11185, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableStatsCollect", 11175, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_554E8(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1464);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetEnableStatsCollect", 11240, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetEnableStatsCollect", 11240, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetEnableStatsCollect", 11230, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_55818(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106552) = v9;
      *(a1 + 1448) = *(a1 + 1448) & 0xFFFFFFFFF7FFFFFFLL | (v9 << 27);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetCalculateMeanSquaredError", 11283, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetCalculateMeanSquaredError", 11283, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetCalculateMeanSquaredError", 11273, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_55B60(void *a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[181] & 0x8000000;
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
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, a1[7], *a2, v10 >> 27);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetCalculateMeanSquaredError", 11328, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_55D88(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = (a1 + 104628);
      Value = CFBooleanGetValue(a4);
      v11 = Value != 0;
      *(a1 + 106556) = v11;
      if (Value)
      {
        v12 = 960;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a1 + 716) & 0xFFFFFC3F | v12;
      *(a1 + 716) = v13;
      v14 = *v9;
      if (*v9 > 0xA || ((1 << v14) & 0x7C6) == 0 || *(a1 + 10752) == 2)
      {
        goto LABEL_39;
      }

      v15 = *(a1 + 24736) + 8;
      if (*(a1 + 24732) + 8 > v15)
      {
        v15 = *(a1 + 24732) + 8;
      }

      v16 = sub_DDADC(*(a1 + 68), *(a1 + 64), v13, 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v15, v14, 0x414C4C20u, *(a1 + 16));
      if (v16)
      {
        v17 = v16;
        if (sub_160EF0(0x1Eu, 4))
        {
          v18 = sub_160F34(0x1Eu);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          if (v18)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d\n", v19, 30, v20, "AVE_Prop_HEVC_SetEnableMCTF", 11414, "ret == 0", a1, *(a1 + 56), a2, a3, a4, v17);
            v19 = sub_175AE4();
            v20 = sub_160F68(4);
            v21 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d", v19, 30, v20, "AVE_Prop_HEVC_SetEnableMCTF", 11414, "ret == 0");
        }
      }

      else
      {
LABEL_39:
        if (sub_160EF0(0x1Eu, 7))
        {
          v32 = sub_160F34(0x1Eu);
          v33 = sub_175AE4();
          v34 = sub_160F68(7);
          v35 = *a2;
          if (v32)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v33, 30, v34, a1, *(a1 + 56), *a2, v11);
            v33 = sub_175AE4();
            sub_160F68(7);
            v36 = *(a1 + 56);
          }

          v39 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v33);
        }

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
        v29 = *(a1 + 56);
        v30 = CFGetTypeID(a4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v27, 30, v28, "AVE_Prop_HEVC_SetEnableMCTF", 11375, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v29, a2, a3, a4, v30);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          v31 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v27, 30, v28, "AVE_Prop_HEVC_SetEnableMCTF", 11375, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v23, 30, v24, "AVE_Prop_HEVC_SetEnableMCTF", 11365, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v25 = sub_175AE4();
        v38 = sub_160F68(4);
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

uint64_t sub_56258(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 716) & 0x3C0;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 != 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetEnableMCTF", 11446, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
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

uint64_t sub_56480(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)\n", v27, 30, v28, "AVE_Prop_HEVC_SetLatencyMode", 11503, "iMCTFMode > AVE_MCTF_Mode_Invalid && iMCTFMode < AVE_MCTF_Mode_Max", a1, *(a1 + 56), a2, a3, a4, valuePtr, 0, 3);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", v27, 30, v28, "AVE_Prop_HEVC_SetLatencyMode", 11503, "iMCTFMode > AVE_MCTF_Mode_Invalid && iMCTFMode < AVE_MCTF_Mode_Max", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106764) = valuePtr;
        *(a1 + 10552) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetLatencyMode", 11493, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetLatencyMode", 11493, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetLatencyMode", 11483, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_568EC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10552);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetLatencyMode", 11549, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetLatencyMode", 11549, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetLatencyMode", 11539, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_56C1C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106560) = v9;
      *(a1 + 1120) = *(a1 + 1120) & 0xFFFFFFFFFFFFFFDFLL | (32 * v9);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetVideoResolutionAdaptation", 11592, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetVideoResolutionAdaptation", 11592, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetVideoResolutionAdaptation", 11582, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_56F64(void *a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[140] & 0x20;
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
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, a1[7], *a2, v10 >> 5);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetVideoResolutionAdaptation", 11637, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_5718C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetVideoResolutionAdaptationType", 11694, "iVRAType >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetVideoResolutionAdaptationType", 11694, "iVRAType >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106564) = valuePtr;
        *(a1 + 11964) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetVideoResolutionAdaptationType", 11685, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetVideoResolutionAdaptationType", 11685, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetVideoResolutionAdaptationType", 11675, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_575DC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 11964);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetVideoResolutionAdaptationType", 11740, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetVideoResolutionAdaptationType", 11740, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetVideoResolutionAdaptationType", 11730, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_5790C(uint64_t a1, const char **a2, const void *a3, const void *a4)
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
        *(a1 + 106568) = v9;
        *(a1 + 10792) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
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

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v22);
          return 0;
        }

        return result;
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v26 = sub_160F34(0x1Eu);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetiChatUsageString", 11819, "iFTUsageType != -1", a1, *(a1 + 56), a2, a3, a4, -1);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          v29 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetiChatUsageString", 11819, "iFTUsageType != -1");
      }

      return 4294965292;
    }

    else
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetiChatUsageString", 11783, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v17, a2, a3, a4, v18);
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
          v19 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v15, 30, v16, "AVE_Prop_HEVC_SetiChatUsageString", 11783, "CFStringGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v11, 30, v12, "AVE_Prop_HEVC_SetiChatUsageString", 11773, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v13 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_57DF8(uint64_t a1, const char **a2, const void *a3, const void *a4, __CFString **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10792);
    if (v10 > 7)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_200AE8[v10];
    }

    *a5 = v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(7);
      if (v17)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v18, 30, v19, a1, *(a1 + 56), *a2, v10, 0);
        v18 = sub_175AE4();
        sub_160F68(7);
        v20 = *(a1 + 56);
        v22 = *a2;
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v18, 30);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v12 = sub_160F34(0x1Eu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v13, 30, v14, "AVE_Prop_HEVC_GetiChatUsageString", 11856, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v15 = sub_175AE4();
        v21 = sub_160F68(4);
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

uint64_t sub_58020(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106572) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableUserQPForFacetime", 11935, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableUserQPForFacetime", 11935, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableUserQPForFacetime", 11925, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_5835C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 106572);
    v11 = &kCFBooleanTrue;
    if (!v10)
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 != 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetEnableUserQPForFacetime", 11973, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
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

uint64_t sub_5858C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v11 = sub_160F34(0x1Eu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (!v11)
      {
        v43 = a3;
        v45 = a4;
        v41 = a1;
        v42 = a2;
        v38 = 12012;
        v39 = "pINS != __null && pEntry != __null && pKey != __null && pValue != __null";
        v37 = v13;
        v21 = "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p";
LABEL_20:
        syslog(3, v21, v12, 30, v37, "AVE_Prop_HEVC_SetUsage", v38, v39, v41, v42, v43, v45, v46, v47, v48, v49);
        return 4294966295;
      }

      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_HEVC_SetUsage", 12012, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
      v14 = sub_175AE4();
      v36 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v36, "AVE_Prop_HEVC_SetUsage");
    }

    return 4294966295;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a4))
  {
    CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
    v9 = valuePtr;
    if (*(a1 + 10780) != 1 || valuePtr == *(a1 + 10892))
    {
      *(a1 + 106576) = valuePtr;
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

        *(a1 + 10892) = v9;
      }

      else
      {
        if (v9)
        {
          if (v9 == 1)
          {
            v10 = 0;
            *(a1 + 10892) = 1;
LABEL_38:
            *(a1 + 10780) = v9;
LABEL_39:
            if (sub_160EF0(0x1Eu, 7))
            {
              v30 = sub_160F34(0x1Eu);
              v31 = sub_175AE4();
              v32 = sub_160F68(7);
              v33 = *a2;
              if (v30)
              {
                printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v31, 30, v32, a1, *(a1 + 56), *a2, valuePtr);
                v31 = sub_175AE4();
                sub_160F68(7);
                v34 = *(a1 + 56);
              }

              v40 = *a2;
              syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v31);
            }

            return v10;
          }

LABEL_30:
          if (sub_160EF0(0x1Eu, 4))
          {
            v26 = sub_160F34(0x1Eu);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            if (v26)
            {
              printf("%lld %d AVE %s: kVTCompressionPropertyKey_Usage %d not supportd %p %lld %p %p %p\n", v27, 30, v28, valuePtr, a1, *(a1 + 56), a2, a3, a4);
              v27 = sub_175AE4();
              v28 = sub_160F68(4);
              v29 = *(a1 + 56);
            }

            syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_Usage %d not supportd %p %lld %p %p %p", v27, 30, v28);
          }

          v10 = 4294965292;
          goto LABEL_39;
        }

        v10 = 0;
        *(a1 + 10892) = 0;
      }

      LOBYTE(v9) = 1;
      goto LABEL_38;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v22 = sub_160F34(0x1Eu);
      v12 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | bUsageModeSet = %d and called again with new value  %p %lld %p %p %p %d %d\n", v12, 30, v23, "AVE_Prop_HEVC_SetUsage", 12041, "bUsageModeChanged == false", *(a1 + 10780), a1, *(a1 + 56), a2, a3, a4, valuePtr, *(a1 + 10892));
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        v50 = *(a1 + 10892);
        v44 = *(a1 + 56);
        syslog(3, "%lld %d AVE %s: %s:%d %s | bUsageModeSet = %d and called again with new value  %p %lld %p %p %p %d %d", v24, 30, v25, "AVE_Prop_HEVC_SetUsage", 12041, "bUsageModeChanged == false", *(a1 + 10780));
        return 4294966295;
      }

      v48 = valuePtr;
      v49 = *(a1 + 10892);
      v46 = a3;
      v47 = a4;
      v43 = *(a1 + 56);
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

  if (sub_160EF0(0x1Eu, 4))
  {
    v15 = sub_160F34(0x1Eu);
    v16 = sub_175AE4();
    v17 = sub_160F68(4);
    v18 = *(a1 + 56);
    v19 = CFGetTypeID(a4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_HEVC_SetUsage", 12022, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      v20 = *(a1 + 56);
      CFGetTypeID(a4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_HEVC_SetUsage", 12022, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
  }

  return 4294965293;
}

uint64_t sub_58B10(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10892);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetUsage", 12118, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetUsage", 12118, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetUsage", 12108, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_58E40(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106580) = v9;
      *(a1 + 1336) = *(a1 + 1336) & 0xFBFFFFFF | (v9 << 26);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEncodesDepth", 12160, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEncodesDepth", 12160, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEncodesDepth", 12150, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_59188(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1336) & 0x4000000;
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
      v17 = v10 >> 26;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetEncodesDepth", 12206, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
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

uint64_t sub_593AC(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106584) = v9;
      *(a1 + 1336) = *(a1 + 1336) & 0xFBFFFFFF | (v9 << 26);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEncodesDisparity", 12255, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEncodesDisparity", 12255, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEncodesDisparity", 12245, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_596F4(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1336) & 0x4000000;
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
      v17 = v10 >> 26;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetEncodesDisparity", 12301, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
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

uint64_t sub_59918(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106900) = v9;
      *(a1 + 10904) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEncodesAlpha", 12349, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEncodesAlpha", 12349, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEncodesAlpha", 12339, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_59C5C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10904);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10904))
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEncodesAlpha", 12388, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_59E80(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetSourceFrameCount", 12446, "iSourceFrameCount >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetSourceFrameCount", 12446, "iSourceFrameCount >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106588) = valuePtr;
        *(a1 + 720) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetSourceFrameCount", 12437, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetSourceFrameCount", 12437, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetSourceFrameCount", 12427, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_5A2D0(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 720);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetSourceFrameCount", 12492, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetSourceFrameCount", 12492, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSourceFrameCount", 12482, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_5A600(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v24 = sub_160F34(0x1Eu);
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
          if (v24)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", v25, 30, v26, "AVE_Prop_HEVC_SetExpectedDuration", 12544, "fDuration > 0.0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v25 = sub_175AE4();
            v26 = sub_160F68(4);
            v27 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v25, 30, v26, "AVE_Prop_HEVC_SetExpectedDuration", 12544);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106592) = valuePtr;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(7);
          if (v10)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %f\n", v11, 30, v12, a1, *(a1 + 56), *a2, valuePtr);
            sub_175AE4();
            sub_160F68(7);
            v13 = *(a1 + 56);
            v29 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f");
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetExpectedDuration", 12535, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          v23 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetExpectedDuration", 12535, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetExpectedDuration", 12525, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v28 = sub_160F68(4);
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