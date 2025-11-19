uint64_t sub_2CEB8(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetVariableBitRate", 2400, "iBitRate > 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetVariableBitRate", 2400, "iBitRate > 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106352) = valuePtr;
        *(a1 + 1132) = 5;
        *(a1 + 10783) = 257;
        *(a1 + 1136) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetVariableBitRate", 2391, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetVariableBitRate", 2391, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetVariableBitRate", 2381, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetVariableBitRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetVariableBitRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2D320(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1136);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetVariableBitRate", 2449, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetVariableBitRate", 2449, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetVariableBitRate", 2439, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetVariableBitRate", 2439);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetVariableBitRate", 2439);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2D650(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  v8 = sub_1502C8();
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    v9 = v8;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr + 4);
      v11 = HIDWORD(valuePtr);
      if (valuePtr <= 0)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v28 = sub_160F34(0x1Eu);
          v29 = sub_175AE4();
          v30 = sub_160F68(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v29, 30, v30, "AVE_Prop_HEVC_SetVBVMaxBitRate", 2502, "iVBVMaxBitRate > 0", a1, *(a1 + 56), a2, a3, a4, HIDWORD(valuePtr));
            v29 = sub_175AE4();
            v30 = sub_160F68(4);
            v31 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_SetVBVMaxBitRate", 2502, "iVBVMaxBitRate > 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106356) = HIDWORD(valuePtr);
        v12 = sub_16D34C(v9[206], v11, &valuePtr);
        if (v12)
        {
          v13 = v12;
          if (sub_160EF0(0x1Eu, 4))
          {
            v14 = sub_160F34(0x1Eu);
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            v17 = v9[206];
            if (v14)
            {
              printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %p %p %p %d %d\n", v15, 30, v16, "AVE_Prop_HEVC_SetVBVMaxBitRate", 2509, "ret == 0", a1, *(a1 + 56), a2, a3, a4, v9[206], HIDWORD(valuePtr));
              v15 = sub_175AE4();
              v16 = sub_160F68(4);
              v40 = v9[206];
              v39 = *(a1 + 56);
            }

            else
            {
              v41 = v9[206];
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %p %p %p %d %d", v15, 30, v16, "AVE_Prop_HEVC_SetVBVMaxBitRate", 2509, "ret == 0");
          }
        }

        else
        {
          *(a1 + 1208) = valuePtr;
          if (sub_160EF0(0x1Eu, 7))
          {
            v32 = sub_160F34(0x1Eu);
            v33 = sub_175AE4();
            v34 = sub_160F68(7);
            if (v32)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d %d\n", v33, 30, v34, a1, *(a1 + 56), *a2, HIDWORD(valuePtr), valuePtr);
              v33 = sub_175AE4();
              sub_160F68(7);
              v35 = *(a1 + 56);
              v38 = *a2;
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d %d", v33);
          }

          return 0;
        }
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetVBVMaxBitRate", 2493, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v27 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetVBVMaxBitRate", 2493, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_SetVBVMaxBitRate", 2483, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = sub_175AE4();
        v37 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v37, "AVE_Prop_HEVC_SetVBVMaxBitRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_SetVBVMaxBitRate");
      }
    }

    return 4294966295;
  }

  return v13;
}

uint64_t sub_2DBDC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1208);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetVBVMaxBitRate", 2552, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetVBVMaxBitRate", 2552, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetVBVMaxBitRate", 2542, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetVBVMaxBitRate", 2542);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetVBVMaxBitRate", 2542);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2DF0C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  v8 = sub_1502C8();
  v44 = 0.0;
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v30 = sub_160F34(0x1Eu);
          v31 = sub_175AE4();
          v32 = sub_160F68(4);
          if (v30)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", v31, 30, v32, "AVE_Prop_HEVC_SetVBVBufferDuration", 2606, "fVBVBufferDuration > 0.0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v31 = sub_175AE4();
            v32 = sub_160F68(4);
            v33 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v31, 30, v32, "AVE_Prop_HEVC_SetVBVBufferDuration", 2606);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106360) = valuePtr;
        v12 = sub_16D7F4(*(a1 + 1120), &v44, v9[104], *(a1 + 107688), v11);
        if (v12)
        {
          v13 = v12;
          if (sub_160EF0(0x1Eu, 4))
          {
            v14 = sub_160F34(0x1Eu);
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            v17 = *(a1 + 1120);
            if (v14)
            {
              printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %p %p %p %f %f %f 0x%llx\n", v15, 30, v16, "AVE_Prop_HEVC_SetVBVBufferDuration", 2616, "ret == 0", a1, *(a1 + 56), a2, a3, a4, v9[104], *(a1 + 107688), valuePtr, *(a1 + 1120));
              v15 = sub_175AE4();
              v16 = sub_160F68(4);
              v18 = *(v9 + 104);
              v19 = *(a1 + 107688);
              v42 = *(a1 + 1120);
              v41 = *(a1 + 56);
            }

            else
            {
              v43 = *(a1 + 1120);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %p %p %p %f %f %f 0x%llx", v15, 30, v16, "AVE_Prop_HEVC_SetVBVBufferDuration", 2616, "ret == 0");
          }
        }

        else
        {
          *(a1 + 1216) = v44;
          if (sub_160EF0(0x1Eu, 7))
          {
            v34 = sub_160F34(0x1Eu);
            v35 = sub_175AE4();
            v36 = sub_160F68(7);
            if (v34)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %f %f\n", v35, 30, v36, a1, *(a1 + 56), *a2, valuePtr, v44);
              sub_175AE4();
              sub_160F68(7);
              v37 = *(a1 + 56);
              v40 = *a2;
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f %f");
          }

          return 0;
        }
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v25, 30, v26, "AVE_Prop_HEVC_SetVBVBufferDuration", 2597, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v27, a2, a3, a4, v28);
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
          v29 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v25, 30, v26, "AVE_Prop_HEVC_SetVBVBufferDuration", 2597, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v21, 30, v22, "AVE_Prop_HEVC_SetVBVBufferDuration", 2587, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v23 = sub_175AE4();
        v39 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v23, 30, v39, "AVE_Prop_HEVC_SetVBVBufferDuration");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_SetVBVBufferDuration");
      }
    }

    return 4294966295;
  }

  return v13;
}

uint64_t sub_2E4D0(double *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[152];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", v14, 30, v15, a1, *(a1 + 7), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", v14);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v22, 30, v23, "AVE_Prop_HEVC_GetVBVBufferDuration", 2659, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v22, 30, v23, "AVE_Prop_HEVC_GetVBVBufferDuration", 2659, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetVBVBufferDuration", 2649, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetVBVBufferDuration", 2649);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetVBVBufferDuration", 2649);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2E814(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  v8 = sub_1502C8();
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
      if (valuePtr < 0.0 || valuePtr > 100.0)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v31 = sub_160F34(0x1Eu);
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0, 100]\n", v32, 30, v33, "AVE_Prop_HEVC_SetVBVInitialDelayPercentage", 2713, "fVBVInitialDelayPercentage >= 0.0 && fVBVInitialDelayPercentage <= 100.0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v32 = sub_175AE4();
            v33 = sub_160F68(4);
            v34 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0, 100]", v32, 30, v33, "AVE_Prop_HEVC_SetVBVInitialDelayPercentage", 2713);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106368) = valuePtr;
        v12 = sub_16DDF4(*(a1 + 1120), &v45, v9[105], *(a1 + 107696), v11, *(a1 + 1216));
        if (v12)
        {
          v13 = v12;
          if (sub_160EF0(0x1Eu, 4))
          {
            v14 = sub_160F34(0x1Eu);
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            v17 = *(a1 + 1120);
            if (v14)
            {
              printf("%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %p %p %p %f %f %f %f 0x%llx\n", v15, 30, v16, "AVE_Prop_HEVC_SetVBVInitialDelayPercentage", 2727, "ret == 0", a1, *(a1 + 56), a2, a3, a4, v9[105], *(a1 + 107696), valuePtr, *(a1 + 1216), *(a1 + 1120));
              v15 = sub_175AE4();
              v16 = sub_160F68(4);
              v18 = *(v9 + 105);
              v19 = *(a1 + 107696);
              v20 = *(a1 + 1216);
              v43 = *(a1 + 1120);
              v42 = *(a1 + 56);
            }

            else
            {
              v44 = *(a1 + 1120);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %p %p %p %f %f %f %f 0x%llx", v15, 30, v16, "AVE_Prop_HEVC_SetVBVInitialDelayPercentage", 2727, "ret == 0");
          }
        }

        else
        {
          *(a1 + 1224) = v45;
          if (sub_160EF0(0x1Eu, 7))
          {
            v35 = sub_160F34(0x1Eu);
            v36 = sub_175AE4();
            v37 = sub_160F68(7);
            if (v35)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %f %f\n", v36, 30, v37, a1, *(a1 + 56), *a2, valuePtr, v45);
              sub_175AE4();
              sub_160F68(7);
              v38 = *(a1 + 56);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v25 = sub_160F34(0x1Eu);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        v28 = *(a1 + 56);
        v29 = CFGetTypeID(a4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_HEVC_SetVBVInitialDelayPercentage", 2704, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v28, a2, a3, a4, v29);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          v30 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v26, 30, v27, "AVE_Prop_HEVC_SetVBVInitialDelayPercentage", 2704, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v22, 30, v23, "AVE_Prop_HEVC_SetVBVInitialDelayPercentage", 2694, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v24 = sub_175AE4();
        v40 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v24, 30, v40, "AVE_Prop_HEVC_SetVBVInitialDelayPercentage");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_SetVBVInitialDelayPercentage");
      }
    }

    return 4294966295;
  }

  return v13;
}

uint64_t sub_2EDF4(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1224) * 100.0 / *(a1 + 1216);
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", v14);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v22, 30, v23, "AVE_Prop_HEVC_GetVBVInitialDelayPercentage", 2771, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v22, 30, v23, "AVE_Prop_HEVC_GetVBVInitialDelayPercentage", 2771, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetVBVInitialDelayPercentage", 2760, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetVBVInitialDelayPercentage", 2760);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetVBVInitialDelayPercentage", 2760);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2F14C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberDoubleType, &valuePtr);
      v9 = valuePtr;
      if (valuePtr < 0.0 || valuePtr > 1.0)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v25 = sub_160F34(0x1Eu);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]\n", v26, 30, v27, "AVE_Prop_HEVC_SetQuality", 2822, "fQuality >= 0.0 && fQuality <= 1.0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v27 = sub_160F68(4);
            v28 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]", v26, 30, v27, "AVE_Prop_HEVC_SetQuality", 2822);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106376) = valuePtr;
        if (sub_FB584(a1, v9) && sub_160EF0(0x1Eu, 5))
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(5);
          if (v10)
          {
            printf("%lld %d AVE %s: fail to set value %p %lld %p %p %p %f\n", v11, 30, v12, a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v11 = sub_175AE4();
            sub_160F68(5);
            v13 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: fail to set value %p %lld %p %p %p %f", v11, 30);
        }

        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v29 = sub_160F34(0x1Eu);
          v30 = sub_175AE4();
          v31 = sub_160F68(7);
          if (v29)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %f\n", v30, 30, v31, a1, *(a1 + 56), *a2, valuePtr);
            sub_175AE4();
            sub_160F68(7);
            v32 = *(a1 + 56);
            v34 = *a2;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetQuality", 2813, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          v23 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetQuality", 2813, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetQuality", 2803, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v33, "AVE_Prop_HEVC_SetQuality");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetQuality");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2F680(double *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[13297];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", v14, 30, v15, a1, *(a1 + 7), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", v14);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v22, 30, v23, "AVE_Prop_HEVC_GetQuality", 2874, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v22, 30, v23, "AVE_Prop_HEVC_GetQuality", 2874, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetQuality", 2863, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetQuality", 2863);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetQuality", 2863);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2F9CC(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberDoubleType, &valuePtr);
      v9 = valuePtr;
      if (valuePtr < 0.0 || valuePtr > 1.0)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v25 = sub_160F34(0x1Eu);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]\n", v26, 30, v27, "AVE_Prop_HEVC_SetConstantQualityFactor", 2926, "fCQFactor >= 0.0 && fCQFactor <= 1.0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v27 = sub_160F68(4);
            v28 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]", v26, 30, v27, "AVE_Prop_HEVC_SetConstantQualityFactor", 2926);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106384) = valuePtr;
        if (sub_FB84C(a1, v9) && sub_160EF0(0x1Eu, 5))
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(5);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d fail to set value %p %lld %p %p %p %f\n", v11, 30, v12, "AVE_Prop_HEVC_SetConstantQualityFactor", 2933, a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v11 = sub_175AE4();
            v12 = sub_160F68(5);
            v13 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d fail to set value %p %lld %p %p %p %f", v11, 30, v12, "AVE_Prop_HEVC_SetConstantQualityFactor");
        }

        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v29 = sub_160F34(0x1Eu);
          v30 = sub_175AE4();
          v31 = sub_160F68(7);
          if (v29)
          {
            printf("%lld %d AVE %s: %s:%d %p %lld Set %s: %f\n", v30, 30, v31, "AVE_Prop_HEVC_SetConstantQualityFactor", 2937, a1, *(a1 + 56), *a2, valuePtr);
            v30 = sub_175AE4();
            sub_160F68(7);
            v32 = *(a1 + 56);
            v34 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %p %lld Set %s: %f", v30, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetConstantQualityFactor", 2917, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          v23 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetConstantQualityFactor", 2917, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetConstantQualityFactor", 2907, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v33, "AVE_Prop_HEVC_SetConstantQualityFactor");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetConstantQualityFactor");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_2FF48(double *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[13298];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
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
          printf("%lld %d AVE %s: %s:%d %p %lld Get %s: %f %p\n", v14, 30, v15, "AVE_Prop_HEVC_GetConstantQualityFactor", 2983, a1, *(a1 + 7), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          v15 = sub_160F68(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %p %lld Get %s: %f %p", v14, 30, v15);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v22, 30, v23, "AVE_Prop_HEVC_GetConstantQualityFactor", 2978, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v22, 30, v23, "AVE_Prop_HEVC_GetConstantQualityFactor", 2978, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetConstantQualityFactor", 2967, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetConstantQualityFactor", 2967);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetConstantQualityFactor", 2967);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_302B8(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_HEVC_SetMultiPassStorage", 3011, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = sub_175AE4();
        v43 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v43, "AVE_Prop_HEVC_SetMultiPassStorage");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_HEVC_SetMultiPassStorage");
      }
    }

    return 4294966295;
  }

  TypeID = VTMultiPassStorageGetTypeID();
  if (TypeID != CFGetTypeID(a4))
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      v20 = *(a1 + 56);
      v21 = CFGetTypeID(a4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_HEVC_SetMultiPassStorage", 3021, "VTMultiPassStorageGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        v22 = *(a1 + 56);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_HEVC_SetMultiPassStorage", 3021, "VTMultiPassStorageGetTypeID() == CFGetTypeID(pValue)");
    }

    v23 = 4294965293;
    goto LABEL_48;
  }

  if (*(a1 + 104656))
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v9 = sub_160F34(0x1Eu);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | MultiPassStorage set multiple times %p %lld %p %p %p %p\n", v10, 30, v11, "AVE_Prop_HEVC_SetMultiPassStorage", 3026, "psINS->multiPassStorage == __null", a1, *(a1 + 56), a2, a3, a4, *(a1 + 104656));
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        v12 = *(a1 + 56);
        v49 = *(a1 + 104656);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | MultiPassStorage set multiple times %p %lld %p %p %p %p", v10, 30, v11, "AVE_Prop_HEVC_SetMultiPassStorage", 3026, "psINS->multiPassStorage == __null");
    }

    v23 = 4294966276;
    goto LABEL_48;
  }

  if (*(a1 + 10556) != 1)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v29 = sub_160F34(0x1Eu);
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p\n", v30, 30, v31, "AVE_Prop_HEVC_SetMultiPassStorage", 3032, "psINS->VideoParams.iLayerNum == 1", *a2, a1, a2, a3, a4);
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
      }

      v46 = *a2;
      syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p", v30, 30, v31, "AVE_Prop_HEVC_SetMultiPassStorage", 3032);
    }

    goto LABEL_47;
  }

  v24 = CFRetain(a4);
  *(a1 + 104656) = v24;
  if (!v24)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v32 = sub_160F34(0x1Eu);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | VTMultiPassStorageRef == NULL %p %lld %p %p %p\n", v33, 30, v34, "AVE_Prop_HEVC_SetMultiPassStorage", 3042, "psINS->multiPassStorage != __null", a1, *(a1 + 56), a2, a3, a4);
        v33 = sub_175AE4();
        v34 = sub_160F68(4);
      }

      v48 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | VTMultiPassStorageRef == NULL %p %lld %p %p %p", v33, 30, v34, "AVE_Prop_HEVC_SetMultiPassStorage", 3042);
    }

LABEL_47:
    v23 = 4294965292;
LABEL_48:
    v41 = *(a1 + 104656);
    if (v41)
    {
      CFRelease(v41);
      *(a1 + 104656) = 0;
    }

    return v23;
  }

  *(a1 + 10540) = 0;
  if (VTMultiPassStorageSetIdentifier())
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v25 = sub_160F34(0x1Eu);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | VTMultiPassStorageSetIdentifier failed %p %lld %p %p %p %p\n", v26, 30, v27, "AVE_Prop_HEVC_SetMultiPassStorage", 3049, "err == noErr", a1, *(a1 + 56), a2, a3, a4, *(a1 + 104656));
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        v28 = *(a1 + 56);
        v50 = *(a1 + 104656);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | VTMultiPassStorageSetIdentifier failed %p %lld %p %p %p %p", v26, 30, v27, "AVE_Prop_HEVC_SetMultiPassStorage", 3049, "err == noErr");
    }

    v23 = 4294966296;
    goto LABEL_48;
  }

  *(a1 + 10540) = 1;
  *(a1 + 768) = 2;
  if (sub_160EF0(0x1Eu, 7))
  {
    v35 = sub_160F34(0x1Eu);
    v36 = sub_175AE4();
    v37 = sub_160F68(7);
    v38 = *a2;
    if (v35)
    {
      printf("%lld %d AVE %s: %p %lld SetProp %s: %p\n", v36, 30, v37, a1, *(a1 + 56), *a2, *(a1 + 104656));
      v36 = sub_175AE4();
      sub_160F68(7);
      v39 = *(a1 + 56);
      v40 = *a2;
      v44 = *a2;
      v47 = *(a1 + 104656);
    }

    else
    {
      v45 = *a2;
    }

    syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %p", v36);
  }

  return 0;
}

uint64_t sub_30A18(void *a1, const char **a2, const void *a3, const void *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[13082];
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *a5 = v10;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v12 = sub_160F34(0x1Eu);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *a2;
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v13, 30, v14, a1, a1[7], *a2, a5);
        v13 = sub_175AE4();
        sub_160F68(7);
        v16 = a1[7];
      }

      v22 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v13);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMultiPassStorage", 3091, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetMultiPassStorage", 3091);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetMultiPassStorage", 3091);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_30C2C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr & 0x80000000) != 0)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v24 = sub_160F34(0x1Eu);
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
          if (v24)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v25, 30, v26, "AVE_Prop_HEVC_SetLookAheadFrames", 3154, "iLAFrameCnt >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v25 = sub_175AE4();
            v26 = sub_160F68(4);
            v27 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v25, 30, v26, "AVE_Prop_HEVC_SetLookAheadFrames", 3154, "iLAFrameCnt >= 0");
        }

        return 4294965292;
      }

      else
      {
        if (valuePtr >= 0x15)
        {
          if (sub_160EF0(0x1Eu, 5))
          {
            v10 = sub_160F34(0x1Eu);
            v11 = sub_175AE4();
            v12 = sub_160F68(5);
            if (v10)
            {
              printf("%lld %d AVE %s: Cap kVTCompressionPropertyKey_SuggestedLookAheadFrameCount from %d to %d\n", v11, 30, v12, valuePtr, 20);
              v11 = sub_175AE4();
              v12 = sub_160F68(5);
            }

            syslog(3, "%lld %d AVE %s: Cap kVTCompressionPropertyKey_SuggestedLookAheadFrameCount from %d to %d", v11, 30, v12, valuePtr, 20);
          }

          v9 = 20;
          valuePtr = 20;
        }

        *(a1 + 106392) = v9;
        *(a1 + 1128) = v9;
        *(a1 + 1120) |= 0x80000000uLL;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v28 = sub_160F34(0x1Eu);
          v29 = sub_175AE4();
          v30 = sub_160F68(7);
          v31 = *a2;
          if (v28)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v29, 30, v30, a1, *(a1 + 56), *a2, valuePtr);
            v29 = sub_175AE4();
            sub_160F68(7);
            v32 = *(a1 + 56);
          }

          v34 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v29);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v17 = sub_160F34(0x1Eu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        v20 = *(a1 + 56);
        v21 = CFGetTypeID(a4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_HEVC_SetLookAheadFrames", 3145, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
          v18 = sub_175AE4();
          v19 = sub_160F68(4);
          v22 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_HEVC_SetLookAheadFrames", 3145, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_HEVC_SetLookAheadFrames", 3135, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v33, "AVE_Prop_HEVC_SetLookAheadFrames");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_HEVC_SetLookAheadFrames");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_31130(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1128);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetLookAheadFrames", 3209, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetLookAheadFrames", 3209, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetLookAheadFrames", 3199, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetLookAheadFrames", 3199);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetLookAheadFrames", 3199);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_31460(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetFrameRateTargetForAverageBitrate", 3261, "iFrameRateTargetForBitRate > 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetFrameRateTargetForAverageBitrate", 3261, "iFrameRateTargetForBitRate > 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106396) = valuePtr;
        *(a1 + 11448) = v9;
        *(a1 + 1120) |= 0x10uLL;
        *(a1 + 1096) |= 0x2000000000uLL;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetFrameRateTargetForAverageBitrate", 3252, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetFrameRateTargetForAverageBitrate", 3252, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetFrameRateTargetForAverageBitrate", 3242, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetFrameRateTargetForAverageBitrate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetFrameRateTargetForAverageBitrate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_318CC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 11448);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetFrameRateTargetForAverageBitrate", 3311, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetFrameRateTargetForAverageBitrate", 3311, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetFrameRateTargetForAverageBitrate", 3300, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetFrameRateTargetForAverageBitrate", 3300);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetFrameRateTargetForAverageBitrate", 3300);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_31BFC(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106608) = v9;
      *(a1 + 10853) = v9;
      *(a1 + 10849) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRelaxAverageBitRateTarget", 3354, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRelaxAverageBitRateTarget", 3354, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRelaxAverageBitRateTarget", 3344, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetRelaxAverageBitRateTarget");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetRelaxAverageBitRateTarget");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_31F48(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10853);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10853))
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetRelaxAverageBitRateTarget", 3393, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetRelaxAverageBitRateTarget", 3393);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetRelaxAverageBitRateTarget", 3393);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_3216C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      *(a1 + 106400) = v10;
      v11 = *(a1 + 1336);
      if (Value)
      {
        *(a1 + 1336) = v11 | 0x8000;
      }

      else
      {
        *(a1 + 1336) = v11 & 0xFFFF7FFF;
        *(a1 + 1120) |= 0x8000000uLL;
      }

      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v23 = sub_160F34(0x1Eu);
        v24 = sub_175AE4();
        v25 = sub_160F68(7);
        v26 = *a2;
        if (v23)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v24, 30, v25, a1, *(a1 + 56), *a2, v10);
          v24 = sub_175AE4();
          sub_160F68(7);
          v27 = *(a1 + 56);
        }

        v29 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v24);
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
        v19 = *(a1 + 56);
        v20 = CFGetTypeID(a4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v17, 30, v18, "AVE_Prop_HEVC_SetPerceptualQualityOptimization", 3441, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v19, a2, a3, a4, v20);
          v17 = sub_175AE4();
          v18 = sub_160F68(4);
          v21 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v17, 30, v18, "AVE_Prop_HEVC_SetPerceptualQualityOptimization", 3441, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v13, 30, v14, "AVE_Prop_HEVC_SetPerceptualQualityOptimization", 3431, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v15 = sub_175AE4();
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v28, "AVE_Prop_HEVC_SetPerceptualQualityOptimization");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 30, v14, "AVE_Prop_HEVC_SetPerceptualQualityOptimization");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_324D0(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1336) & 0x8000;
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
      v17 = v10 >> 15;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetPerceptualQualityOptimization", 3488, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetPerceptualQualityOptimization", 3488);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetPerceptualQualityOptimization", 3488);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_326F4(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr < 0)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v25 = sub_160F34(0x1Eu);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v26, 30, v27, "AVE_Prop_HEVC_SetConvergenceDurationForAverageDataRate", 3547, "ConvergenceDurationForAverageDataRate >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v27 = sub_160F68(4);
            v28 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v27, "AVE_Prop_HEVC_SetConvergenceDurationForAverageDataRate", 3547, "ConvergenceDurationForAverageDataRate >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106404) = valuePtr;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_HEVC_SetConvergenceDurationForAverageDataRate", 3537, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          v24 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_HEVC_SetConvergenceDurationForAverageDataRate", 3537, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_HEVC_SetConvergenceDurationForAverageDataRate", 3527, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v18 = sub_175AE4();
        v29 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v29, "AVE_Prop_HEVC_SetConvergenceDurationForAverageDataRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_HEVC_SetConvergenceDurationForAverageDataRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_32B40(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 106404);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetConvergenceDurationForAverageDataRate", 3595, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetConvergenceDurationForAverageDataRate", 3595, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetConvergenceDurationForAverageDataRate", 3583, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetConvergenceDurationForAverageDataRate", 3583);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetConvergenceDurationForAverageDataRate", 3583);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_32E78(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (*(a1 + 10556) == 1)
      {
        v9 = CFBooleanGetValue(a4) != 0;
        *(a1 + 106412) = v9;
        *(a1 + 1120) = *(a1 + 1120) & 0xFFFFFFFFFFFFFFF7 | (8 * v9);
        *(a1 + 11776) = 1;
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

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
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
            printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p\n", v27, 30, v28, "AVE_Prop_HEVC_SetMoreFramesAfterEnd", 3644, "psINS->VideoParams.iLayerNum == 1", *a2, a1, a2, a3, a4);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p", v27, 30, v28, "AVE_Prop_HEVC_SetMoreFramesAfterEnd", 3644);
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
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMoreFramesAfterEnd", 3638, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMoreFramesAfterEnd", 3638, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMoreFramesAfterEnd", 3628, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetMoreFramesAfterEnd");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetMoreFramesAfterEnd");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_332C4(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if (*(a1 + 11776) == 1)
    {
      v10 = *(a1 + 1120) & 8;
      if (v10)
      {
        v11 = &kCFBooleanTrue;
      }

      else
      {
        v11 = &kCFBooleanFalse;
      }

      v12 = *v11;
      v13 = v10 >> 3;
    }

    else
    {
      LODWORD(v13) = 0;
      v12 = kCFBooleanFalse;
    }

    *a5 = v12;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(7);
      v22 = *a2;
      if (v19)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v20, 30, v21, a1, *(a1 + 56), *a2, v13);
        v20 = sub_175AE4();
        sub_160F68(7);
        v23 = *(a1 + 56);
      }

      v25 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v20);
      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_GetMoreFramesAfterEnd", 3691, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v17 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v24, "AVE_Prop_HEVC_GetMoreFramesAfterEnd", 3691);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_GetMoreFramesAfterEnd", 3691);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_33508(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (*(a1 + 10556) == 1)
      {
        v9 = CFBooleanGetValue(a4) != 0;
        *(a1 + 106416) = v9;
        *(a1 + 11776) = 1;
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

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
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
            printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p\n", v27, 30, v28, "AVE_Prop_HEVC_SetMoreFramesBeforeStart", 3746, "psINS->VideoParams.iLayerNum == 1", *a2, a1, a2, a3, a4);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p", v27, 30, v28, "AVE_Prop_HEVC_SetMoreFramesBeforeStart", 3746);
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
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMoreFramesBeforeStart", 3740, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMoreFramesBeforeStart", 3740, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMoreFramesBeforeStart", 3730, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetMoreFramesBeforeStart");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetMoreFramesBeforeStart");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_33948(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 11776);
    v11 = &kCFBooleanTrue;
    if (v10 != 1)
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 == 1;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetMoreFramesBeforeStart", 3785, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetMoreFramesBeforeStart", 3785);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetMoreFramesBeforeStart", 3785);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_33B70(uint64_t a1, const char **a2, const __CFAllocator *a3, const void *a4, CFNumberRef *a5)
{
  v10 = sub_1502C8();
  if (a1 && a2 && a4 && a5)
  {
    v11 = v10[212];
    v12 = sub_16FD90(*(a1 + 68));
    if (v12)
    {
      if (!v11)
      {
        v11 = *(*(v12 + 2) + 4);
      }

      valuePtr = v11;
      v13 = CFNumberCreate(a3, kCFNumberSInt32Type, &valuePtr);
      if (v13)
      {
        v14 = v13;
        *a5 = v13;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v16 = sub_160F34(0x1Eu);
          v17 = sub_175AE4();
          v18 = sub_160F68(7);
          if (v16)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v17, 30, v18, a1, *(a1 + 56), *a2, valuePtr, v14);
            v17 = sub_175AE4();
            sub_160F68(7);
            v19 = *(a1 + 56);
            v34 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v17, 30);
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
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v29, 30, v30, "AVE_Prop_HEVC_GetRecommendedParallelizationLimit", 3840, "pNum != __null", a1, *(a1 + 56), a2, a3, a4, a5, valuePtr);
            v29 = sub_175AE4();
            v30 = sub_160F68(4);
            v31 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_GetRecommendedParallelizationLimit", 3840, "pNum != __null", a1);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability  %p %p %p %p %p\n", v25, 30, v26, "AVE_Prop_HEVC_GetRecommendedParallelizationLimit", 3833, "pDevCap != __null", a1, a2, a3, a4, a5);
          v27 = sub_175AE4();
          v33 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability  %p %p %p %p %p", v27, 30, v33, "AVE_Prop_HEVC_GetRecommendedParallelizationLimit", 3833);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability  %p %p %p %p %p", v25, 30, v26, "AVE_Prop_HEVC_GetRecommendedParallelizationLimit", 3833);
        }
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v21, 30, v22, "AVE_Prop_HEVC_GetRecommendedParallelizationLimit", 3825, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v23 = sub_175AE4();
        v32 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v23, 30, v32, "AVE_Prop_HEVC_GetRecommendedParallelizationLimit", 3825);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetRecommendedParallelizationLimit", 3825);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_33FA0(void *a1, const char **a2, const __CFAllocator *a3, const void *a4, CFDictionaryRef *a5)
{
  v10 = sub_1502C8();
  if (a1 && a2 && a4 && a5)
  {
    v11 = v10[108];
    if (v11)
    {
      v12 = 1000 * v11;
    }

    else
    {
      v12 = 30000;
    }

    time.value = v12;
    *&time.timescale = 0x1000003E8;
    time.epoch = 0;
    *a5 = CMTimeCopyAsDictionary(&time, a3);
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %lld, %d, 0x%x, %lld\n", v15, 30, v16, a1, a1[7], *a2, v12, 1000, 1, 0);
        v15 = sub_175AE4();
        v16 = sub_160F68(7);
        v17 = a1[7];
        v23 = *a2;
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %lld, %d, 0x%x, %lld", v15, 30, v16);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetRecommendedParallelizedSubdivisionMinimumDuration", 3874, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetRecommendedParallelizedSubdivisionMinimumDuration", 3874);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetRecommendedParallelizedSubdivisionMinimumDuration", 3874);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_34200(void *a1, const char **a2, const __CFAllocator *a3, const void *a4, CFNumberRef *a5)
{
  v10 = sub_1502C8();
  if (a1 && a2 && a4 && a5)
  {
    v11 = v10[107];
    if (!v11)
    {
      v11 = 900;
    }

    valuePtr = v11;
    v12 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
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
        if (v15)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %lld %p\n", v16, 30, v17, a1, a1[7], *a2, valuePtr, v13);
          v16 = sub_175AE4();
          sub_160F68(7);
          v18 = a1[7];
          v28 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %lld %p", v16, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %lld\n", v24, 30, v25, "AVE_Prop_HEVC_GetRecommendedParallelizedSubdivisionMinimumFrameCount", 3929, "pNum != __null", a1, a1[7], a2, a3, a4, a5, valuePtr);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          v26 = a1[7];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %lld", v24, 30, v25, "AVE_Prop_HEVC_GetRecommendedParallelizedSubdivisionMinimumFrameCount", 3929, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetRecommendedParallelizedSubdivisionMinimumFrameCount", 3919, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v27, "AVE_Prop_HEVC_GetRecommendedParallelizedSubdivisionMinimumFrameCount", 3919);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetRecommendedParallelizedSubdivisionMinimumFrameCount", 3919);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_34540(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      *(a1 + 106420) = v10;
      if (!Value)
      {
        *(a1 + 1252) = 0;
        *(a1 + 1264) = 1;
        *(a1 + 1272) = 0xBFF0000000000000;
        *(a1 + 1280) = 0xBFF0000000000000;
      }

      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v12 = sub_160F34(0x1Eu);
        v13 = sub_175AE4();
        v14 = sub_160F68(7);
        v15 = *a2;
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v13, 30, v14, a1, *(a1 + 56), *a2, v10);
          v13 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
        }

        v28 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v13);
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
        v24 = *(a1 + 56);
        v25 = CFGetTypeID(a4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v22, 30, v23, "AVE_Prop_HEVC_SetAllowTemporalCompression", 3972, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v24, a2, a3, a4, v25);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v26 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v22, 30, v23, "AVE_Prop_HEVC_SetAllowTemporalCompression", 3972, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_SetAllowTemporalCompression", 3962, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v20 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 30, v27, "AVE_Prop_HEVC_SetAllowTemporalCompression");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_SetAllowTemporalCompression");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_3489C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if (*(a1 + 1264) == 1 && *(a1 + 10560) == 1)
    {
      v10 = 0;
      v11 = &kCFBooleanFalse;
    }

    else
    {
      v11 = &kCFBooleanTrue;
      v10 = 1;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(7);
      v20 = *a2;
      if (v17)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v18, 30, v19, a1, *(a1 + 56), *a2, v10);
        v18 = sub_175AE4();
        sub_160F68(7);
        v21 = *(a1 + 56);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v18);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v13, 30, v14, "AVE_Prop_HEVC_GetAllowTemporalCompression", 4021, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v15 = sub_175AE4();
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v15, 30, v22, "AVE_Prop_HEVC_GetAllowTemporalCompression", 4021);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v13, 30, v14, "AVE_Prop_HEVC_GetAllowTemporalCompression", 4021);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_34AD4(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      *(a1 + 106424) = v10;
      if (Value)
      {
        if (*(a1 + 1256) <= 0)
        {
          *(a1 + 1256) = 3;
        }
      }

      else
      {
        *(a1 + 1256) = 0x100000000;
        *(a1 + 1288) = 1;
        *(a1 + 1240) &= ~0x400u;
        if (*(a1 + 104648))
        {
          *(a1 + 10848) = 1;
        }
      }

      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(7);
        v25 = *a2;
        if (v22)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v23, 30, v24, a1, *(a1 + 56), *a2, v10);
          v23 = sub_175AE4();
          sub_160F68(7);
          v26 = *(a1 + 56);
        }

        v28 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v23);
        return 0;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_HEVC_SetAllowFrameReordering", 4070, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
          v16 = sub_175AE4();
          v17 = sub_160F68(4);
          v20 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_HEVC_SetAllowFrameReordering", 4070, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_HEVC_SetAllowFrameReordering", 4060, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v27, "AVE_Prop_HEVC_SetAllowFrameReordering");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_HEVC_SetAllowFrameReordering");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_34E5C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1256);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetAllowFrameReordering", 4128, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetAllowFrameReordering", 4128);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetAllowFrameReordering", 4128);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_35084(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetMaxKeyFrameInterval", 4185, "iMaxKeyFrameInterval >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetMaxKeyFrameInterval", 4185, "iMaxKeyFrameInterval >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106428) = valuePtr;
        *(a1 + 1264) = v9;
        if (v9 == 1)
        {
          *(a1 + 1252) = 0;
        }

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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMaxKeyFrameInterval", 4176, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMaxKeyFrameInterval", 4176, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMaxKeyFrameInterval", 4166, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetMaxKeyFrameInterval");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetMaxKeyFrameInterval");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_354E0(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1264);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMaxKeyFrameInterval", 4235, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMaxKeyFrameInterval", 4235, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMaxKeyFrameInterval", 4225, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetMaxKeyFrameInterval", 4225);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetMaxKeyFrameInterval", 4225);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_35810(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_SetStrictKeyFrameInterval", 4287, "iStrictKeyFrameInterval >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_SetStrictKeyFrameInterval", 4287, "iStrictKeyFrameInterval >= 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106432) = valuePtr;
        *(a1 + 1268) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetStrictKeyFrameInterval", 4278, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetStrictKeyFrameInterval", 4278, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetStrictKeyFrameInterval", 4268, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetStrictKeyFrameInterval");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetStrictKeyFrameInterval");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_35C60(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1268);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetStrictKeyFrameInterval", 4333, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetStrictKeyFrameInterval", 4333, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetStrictKeyFrameInterval", 4323, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetStrictKeyFrameInterval", 4323);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetStrictKeyFrameInterval", 4323);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_35F90(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberDoubleType, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 0.0)
      {
        *(a1 + 106440) = valuePtr;
        *(a1 + 1272) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v25 = sub_160F34(0x1Eu);
          v26 = sub_175AE4();
          v27 = sub_160F68(7);
          if (v25)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %f\n", v26, 30, v27, a1, *(a1 + 56), *a2, valuePtr);
            sub_175AE4();
            sub_160F68(7);
            v28 = *(a1 + 56);
            v30 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f");
          return 0;
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", v11, 30, v12, "AVE_Prop_HEVC_SetMaxKeyFrameIntervalDuration", 4385, "fMaxKeyFrameIntervalDuration >= 0.0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v11 = sub_175AE4();
            v12 = sub_160F68(4);
            v13 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v11, 30, v12, "AVE_Prop_HEVC_SetMaxKeyFrameIntervalDuration", 4385);
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetMaxKeyFrameIntervalDuration", 4376, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          v23 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetMaxKeyFrameIntervalDuration", 4376, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetMaxKeyFrameIntervalDuration", 4366, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v29 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v29, "AVE_Prop_HEVC_SetMaxKeyFrameIntervalDuration");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetMaxKeyFrameIntervalDuration");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_363F0(double *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[159];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", v14, 30, v15, a1, *(a1 + 7), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", v14);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v22, 30, v23, "AVE_Prop_HEVC_GetMaxKeyFrameIntervalDuration", 4432, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v22, 30, v23, "AVE_Prop_HEVC_GetMaxKeyFrameIntervalDuration", 4432, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMaxKeyFrameIntervalDuration", 4421, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetMaxKeyFrameIntervalDuration", 4421);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetMaxKeyFrameIntervalDuration", 4421);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_36734(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberDoubleType, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 0.0)
      {
        *(a1 + 106448) = valuePtr;
        *(a1 + 1280) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v25 = sub_160F34(0x1Eu);
          v26 = sub_175AE4();
          v27 = sub_160F68(7);
          if (v25)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %f\n", v26, 30, v27, a1, *(a1 + 56), *a2, valuePtr);
            sub_175AE4();
            sub_160F68(7);
            v28 = *(a1 + 56);
            v30 = *a2;
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f");
          return 0;
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", v11, 30, v12, "AVE_Prop_HEVC_SetStrictKeyFrameIntervalDuration", 4486, "fStrictKeyFrameIntervalDuration >= 0.0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v11 = sub_175AE4();
            v12 = sub_160F68(4);
            v13 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v11, 30, v12, "AVE_Prop_HEVC_SetStrictKeyFrameIntervalDuration", 4486);
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetStrictKeyFrameIntervalDuration", 4475, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          v23 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetStrictKeyFrameIntervalDuration", 4475, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetStrictKeyFrameIntervalDuration", 4465, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v29 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v29, "AVE_Prop_HEVC_SetStrictKeyFrameIntervalDuration");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetStrictKeyFrameIntervalDuration");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_36B94(double *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[160];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", v14, 30, v15, a1, *(a1 + 7), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 7);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", v14);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v22, 30, v23, "AVE_Prop_HEVC_GetStrictKeyFrameIntervalDuration", 4534, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 7);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v22, 30, v23, "AVE_Prop_HEVC_GetStrictKeyFrameIntervalDuration", 4534, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetStrictKeyFrameIntervalDuration", 4523, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetStrictKeyFrameIntervalDuration", 4523);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetStrictKeyFrameIntervalDuration", 4523);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_36ED8(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  v33 = 30;
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (CFNumberIsFloatType(a4))
      {
        CFNumberGetValue(a4, kCFNumberFloat64Type, &valuePtr);
        v9 = (valuePtr + 0.5);
        v33 = v9;
      }

      else
      {
        CFNumberGetValue(a4, kCFNumberSInt32Type, &v33);
        v9 = v33;
      }

      if ((v9 - 1) >= 0x1869F)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)\n", v27, 30, v28, "AVE_Prop_HEVC_SetExpectedFrameRate", 4594, "0 < frameRate && frameRate < 100000", a1, *(a1 + 56), a2, a3, a4, v33, 0, 100000);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", v27, 30, v28, "AVE_Prop_HEVC_SetExpectedFrameRate", 4594, "0 < frameRate && frameRate < 100000", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106456) = v9;
        *(a1 + 1112) = v9;
        if ((*(a1 + 10783) & 1) == 0)
        {
          *(a1 + 1136) = *(a1 + 1136) * v9 / 30;
        }

        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v21 = sub_160F34(0x1Eu);
          v22 = sub_175AE4();
          v23 = sub_160F68(7);
          v24 = *a2;
          if (v21)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v22, 30, v23, a1, *(a1 + 56), *a2, v33);
            v22 = sub_175AE4();
            sub_160F68(7);
            v25 = *(a1 + 56);
          }

          v31 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v22);
          return 0;
        }
      }
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetExpectedFrameRate", 4578, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v17, a2, a3, a4, v18);
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
          v19 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v15, 30, v16, "AVE_Prop_HEVC_SetExpectedFrameRate", 4578, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v11, 30, v12, "AVE_Prop_HEVC_SetExpectedFrameRate", 4568, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v13 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 30, v30, "AVE_Prop_HEVC_SetExpectedFrameRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v11, 30, v12, "AVE_Prop_HEVC_SetExpectedFrameRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_373BC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1112);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetExpectedFrameRate", 4648, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetExpectedFrameRate", 4648, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetExpectedFrameRate", 4638, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetExpectedFrameRate", 4638);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetExpectedFrameRate", 4638);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_376EC(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 30;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (*(a1 + 10556) == 1)
      {
        CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
        v9 = valuePtr;
        if ((valuePtr - 1) < 0x1869F)
        {
          *(a1 + 106464) = valuePtr;
          *(a1 + 11460) = v9;
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)\n", v31, 30, v32, "AVE_Prop_HEVC_SetBaseLayerFrameRate", 4707, "0 < frameRate && frameRate < 100000", a1, *(a1 + 56), a2, a3, a4, valuePtr, 0, 100000);
            v31 = sub_175AE4();
            v32 = sub_160F68(4);
            v33 = *(a1 + 56);
          }

          else
          {
            v37 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", v31, 30, v32, "AVE_Prop_HEVC_SetBaseLayerFrameRate", 4707, "0 < frameRate && frameRate < 100000", a1);
        }
      }

      else if (sub_160EF0(0x1Eu, 4))
      {
        v26 = sub_160F34(0x1Eu);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p\n", v27, 30, v28, "AVE_Prop_HEVC_SetBaseLayerFrameRate", 4697, "psINS->VideoParams.iLayerNum == 1", *a2, a1, a2, a3, a4);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          v29 = *a2;
        }

        else
        {
          v36 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | MV-HEVC does not support %s %p %p %p %p", v27, 30, v28, "AVE_Prop_HEVC_SetBaseLayerFrameRate", 4697);
      }

      return 4294965292;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetBaseLayerFrameRate", 4691, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v25 = *(a1 + 56);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetBaseLayerFrameRate", 4691, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetBaseLayerFrameRate", 4681, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v34 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v34, "AVE_Prop_HEVC_SetBaseLayerFrameRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetBaseLayerFrameRate");
      }
    }

    return 4294966295;
  }
}

uint64_t sub_37C48(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 11460);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetBaseLayerFrameRate", 4752, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetBaseLayerFrameRate", 4752, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetBaseLayerFrameRate", 4742, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetBaseLayerFrameRate", 4742);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetBaseLayerFrameRate", 4742);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_37F78(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 30;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 1) >= 0x1869F)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)\n", v27, 30, v28, "AVE_Prop_HEVC_SetAverageNonDroppableFrameRate", 4809, "0 < frameRate && frameRate < 100000", a1, *(a1 + 56), a2, a3, a4, valuePtr, 0, 100000);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", v27, 30, v28, "AVE_Prop_HEVC_SetAverageNonDroppableFrameRate", 4809, "0 < frameRate && frameRate < 100000", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106460) = valuePtr;
        *(a1 + 11460) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetAverageNonDroppableFrameRate", 4795, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetAverageNonDroppableFrameRate", 4795, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetAverageNonDroppableFrameRate", 4785, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetAverageNonDroppableFrameRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetAverageNonDroppableFrameRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_383EC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 11460);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetAverageNonDroppableFrameRate", 4855, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetAverageNonDroppableFrameRate", 4855, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetAverageNonDroppableFrameRate", 4845, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetAverageNonDroppableFrameRate", 4845);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetAverageNonDroppableFrameRate", 4845);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_3871C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106468) = v9;
      *(a1 + 1240) = *(a1 + 1240) & 0xFFFFFEFF | (v9 << 8);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetAllowOpenGOP", 4897, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetAllowOpenGOP", 4897, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetAllowOpenGOP", 4887, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetAllowOpenGOP");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetAllowOpenGOP");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_38A64(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1240) & 0x100;
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
      v17 = v10 >> 8;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetAllowOpenGOP", 4942, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetAllowOpenGOP", 4942);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetAllowOpenGOP", 4942);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_38C88(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if ((*(a1 + 716) & 0x3C0) != 0)
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    valuePtr = v10 + *(a1 + 1256);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v23, 30, v24, "AVE_Prop_HEVC_GetMaxFrameDelayCount", 4993, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v25 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v24, "AVE_Prop_HEVC_GetMaxFrameDelayCount", 4993, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetMaxFrameDelayCount", 4981, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v21 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v26, "AVE_Prop_HEVC_GetMaxFrameDelayCount", 4981);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetMaxFrameDelayCount", 4981);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_38FCC(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      *(a1 + 106612) = v10;
      if (Value)
      {
        *(a1 + 11460) = 1;
      }

      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v12 = sub_160F34(0x1Eu);
        v13 = sub_175AE4();
        v14 = sub_160F68(7);
        v15 = *a2;
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v13, 30, v14, a1, *(a1 + 56), *a2, v10);
          v13 = sub_175AE4();
          sub_160F68(7);
          v16 = *(a1 + 56);
        }

        v28 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v13);
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
        v24 = *(a1 + 56);
        v25 = CFGetTypeID(a4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v22, 30, v23, "AVE_Prop_HEVC_SetDroppablePFramesOnly", 5036, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v24, a2, a3, a4, v25);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v26 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v22, 30, v23, "AVE_Prop_HEVC_SetDroppablePFramesOnly", 5036, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_SetDroppablePFramesOnly", 5026, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v20 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 30, v27, "AVE_Prop_HEVC_SetDroppablePFramesOnly");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_SetDroppablePFramesOnly");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_39314(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 11460);
    v11 = &kCFBooleanTrue;
    if (v10 != 1)
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 == 1;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetDroppablePFramesOnly", 5077, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_HEVC_GetDroppablePFramesOnly", 5077);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_HEVC_GetDroppablePFramesOnly", 5077);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_3953C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106616) = v9;
      *(a1 + 10854) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetRequireDeterministicDependencyAndReordering", 5125, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetRequireDeterministicDependencyAndReordering", 5125, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetRequireDeterministicDependencyAndReordering", 5115, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetRequireDeterministicDependencyAndReordering");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetRequireDeterministicDependencyAndReordering");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_39880(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10854);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10854))
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetRequireDeterministicDependencyAndReordering", 5164, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_HEVC_GetRequireDeterministicDependencyAndReordering", 5164);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetRequireDeterministicDependencyAndReordering", 5164);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_39AA4(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr <= 0)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v25 = sub_160F34(0x1Eu);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v26, 30, v27, "AVE_Prop_HEVC_SetNumberOfTemporalLayers", 5223, "iNumberOfTemporalLayers >= 1", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v27 = sub_160F68(4);
            v28 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v27, "AVE_Prop_HEVC_SetNumberOfTemporalLayers", 5223, "iNumberOfTemporalLayers >= 1");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106716) = valuePtr;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_HEVC_SetNumberOfTemporalLayers", 5214, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          v24 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_HEVC_SetNumberOfTemporalLayers", 5214, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_HEVC_SetNumberOfTemporalLayers", 5204, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v18 = sub_175AE4();
        v29 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v29, "AVE_Prop_HEVC_SetNumberOfTemporalLayers");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_HEVC_SetNumberOfTemporalLayers");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_39EF4(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetNumberOfTemporalLayers", 5270, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetNumberOfTemporalLayers", 5270, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetNumberOfTemporalLayers", 5260, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetNumberOfTemporalLayers", 5260);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetNumberOfTemporalLayers", 5260);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_3A224(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 1) >= 2)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v27, 30, v28, "AVE_Prop_HEVC_SetSpatialAdaptiveQPLevel", 5324, "kVTQPModulationLevel_Default <= SQPLevel && SQPLevel <= kVTQPModulationLevel_Disable", a1, *(a1 + 56), a2, a3, a4, valuePtr, -1, 0);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v27, 30, v28, "AVE_Prop_HEVC_SetSpatialAdaptiveQPLevel", 5324, "kVTQPModulationLevel_Default <= SQPLevel && SQPLevel <= kVTQPModulationLevel_Disable", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106472) = valuePtr;
        if (!v9)
        {
          *(a1 + 1336) = 0;
        }

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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetSpatialAdaptiveQPLevel", 5313, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetSpatialAdaptiveQPLevel", 5313, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetSpatialAdaptiveQPLevel", 5303, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_HEVC_SetSpatialAdaptiveQPLevel");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetSpatialAdaptiveQPLevel");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_3A698(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  valuePtr = -1;
  if (a1 && a2 && a4 && a5)
  {
    if (!*(a1 + 1336))
    {
      valuePtr = 0;
    }

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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetSpatialAdaptiveQPLevel", 5378, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetSpatialAdaptiveQPLevel", 5378, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetSpatialAdaptiveQPLevel", 5365, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_HEVC_GetSpatialAdaptiveQPLevel", 5365);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_HEVC_GetSpatialAdaptiveQPLevel", 5365);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_3A9D4(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106540) = v9;
      *(a1 + 1336) = *(a1 + 1336) & 0xFFFEFFFF | (v9 << 16);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableMBInputCtrl", 5422, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableMBInputCtrl", 5422, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableMBInputCtrl", 5412, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_HEVC_SetEnableMBInputCtrl");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_SetEnableMBInputCtrl");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_3AD1C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1336) & 0x10000;
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
      v17 = HIWORD(v10);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetEnableMBInputCtrl", 5467, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
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

uint64_t sub_3AF40(uint64_t a1, const char **a2, const void *a3, const __CFArray *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v32 = sub_160F34(0x1Eu);
          v33 = sub_175AE4();
          v34 = sub_160F68(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v33, 30, v34, "AVE_Prop_HEVC_SetUserDPBFramesForFaceTime", 5526, "(iNumOfFrames / 2) >= 0 && (iNumOfFrames / 2) <= (((16) > (16) ? (16) : (16)) + 1)", a1, *(a1 + 56), a2, a3, a4, v10, 0, 34);
            v33 = sub_175AE4();
            v34 = sub_160F68(4);
            v35 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v33, 30, v34, "AVE_Prop_HEVC_SetUserDPBFramesForFaceTime", 5526, "(iNumOfFrames / 2) >= 0 && (iNumOfFrames / 2) <= (((16) > (16) ? (16) : (16)) + 1)", a1);
        }

        return 4294965292;
      }

      else
      {
        v11 = Count / 2;
        *(a1 + 106476) = Count / 2;
        *(a1 + 11816) = 1;
        *(a1 + 11820) = Count / 2;
        if (Count >= 2)
        {
          v12 = 0;
          v13 = (a1 + 11892);
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

        if (sub_160EF0(0x1Eu, 7))
        {
          v16 = sub_160F34(0x1Eu);
          v17 = sub_175AE4();
          v18 = sub_160F68(7);
          v19 = *a2;
          if (v16)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v17, 30, v18, a1, *(a1 + 56), *a2, v11);
            v17 = sub_175AE4();
            sub_160F68(7);
            v20 = *(a1 + 56);
          }

          v37 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v17);
        }

        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v25 = sub_160F34(0x1Eu);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        v28 = *(a1 + 56);
        v29 = CFGetTypeID(a4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_HEVC_SetUserDPBFramesForFaceTime", 5516, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v28, a2, a3, a4, v29);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          v30 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v26, 30, v27, "AVE_Prop_HEVC_SetUserDPBFramesForFaceTime", 5516, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v22, 30, v23, "AVE_Prop_HEVC_SetUserDPBFramesForFaceTime", 5506, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v24 = sub_175AE4();
        v36 = sub_160F68(4);
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

uint64_t sub_3B3FC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 2 * *(a1 + 11820), &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v28 = sub_160F34(0x1Eu);
        v29 = sub_175AE4();
        v30 = sub_160F68(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", v29, 30, v30, "AVE_Prop_HEVC_GetUserDPBFramesForFaceTime", 5590, "p != __null", a1, *(a1 + 56), a2, allocator, a4, a5, 2 * *(a1 + 11820));
          v29 = sub_175AE4();
          v30 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_GetUserDPBFramesForFaceTime", 5590, "p != __null", a1, *(a1 + 56), a2, allocator, a4, a5, (2 * *(a1 + 11820)));
      }

      return 4294966293;
    }

    v11 = Mutable;
    if (*(a1 + 11820) >= 1)
    {
      v12 = 0;
      v13 = (a1 + 11892);
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
          if (sub_160EF0(0x1Eu, 4))
          {
            v34 = sub_160F34(0x1Eu);
            v35 = sub_175AE4();
            v36 = sub_160F68(4);
            if (v34)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v35, 30, v36, "AVE_Prop_HEVC_GetUserDPBFramesForFaceTime", 5609, "pNum2 != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *v13);
              v35 = sub_175AE4();
              v36 = sub_160F68(4);
              v42 = *v13;
              v41 = *(a1 + 56);
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
        if (v12 >= *(a1 + 11820))
        {
          goto LABEL_11;
        }
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v31 = sub_160F34(0x1Eu);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v32, 30, v33, "AVE_Prop_HEVC_GetUserDPBFramesForFaceTime", 5601, "pNum1 != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(v13 - 17));
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v32, 30, v33, "AVE_Prop_HEVC_GetUserDPBFramesForFaceTime", 5601, "pNum1 != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(v13 - 17));
      }

      return 4294966293;
    }

LABEL_11:
    *a5 = v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(7);
      v22 = *(a1 + 11820);
      if (v19)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v20, 30, v21, a1, *(a1 + 56), *a2, *(a1 + 11820), v11);
        v20 = sub_175AE4();
        sub_160F68(7);
        v23 = *(a1 + 56);
        v39 = *(a1 + 11820);
        v38 = *a2;
      }

      else
      {
        v40 = *(a1 + 11820);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v25, 30, v26, "AVE_Prop_HEVC_GetUserDPBFramesForFaceTime", 5580, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v27 = sub_175AE4();
        v37 = sub_160F68(4);
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

uint64_t sub_3B9C4(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    v8 = (a1 + 104728);
    if (!*(a1 + 104728))
    {
      operator new();
    }

    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (*v8)
      {
        v10 = (a1 + 107992);
        v11 = sub_D86F8(*v8, a4, *(a1 + 108000), (a1 + 107992));
        if (v11)
        {
          v12 = v11;
          if (sub_160EF0(0x1Eu, 4))
          {
            v13 = sub_160F34(0x1Eu);
            v14 = sub_175AE4();
            v15 = sub_160F68(4);
            if (v13)
            {
              printf("%lld %d AVE %s: %s:%d %s | Invalid userDPB %p %lld %p %p %p\n", v14, 30, v15, "AVE_Prop_HEVC_SetDPBRequirements", 5706, "ret == 0", a1, *(a1 + 56), a2, a3, a4);
              v14 = sub_175AE4();
              v15 = sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Invalid userDPB %p %lld %p %p %p", v14, 30, v15, "AVE_Prop_HEVC_SetDPBRequirements", 5706, "ret == 0", a1, *(a1 + 56), a2, a3, a4);
          }
        }

        else
        {
          Value = CFDictionaryGetValue(a4, kVTDPBRequirements_NumberOfFrames);
          CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
          *(a1 + 106484) = valuePtr;
          v30 = CFDictionaryGetValue(a4, kVTDPBRequirements_AllocateRVRABuffers);
          v31 = CFBooleanGetValue(v30);
          *(a1 + 106480) = v31;
          *(a1 + 1120) = *(a1 + 1120) & 0xFFFFFFFFFFFFFFDFLL | (32 * (v31 != 0));
          if (valuePtr)
          {
            v32 = v31;
            Count = CFArrayGetCount(*v10);
            v34 = valuePtr;
            if (Count == valuePtr << v32)
            {
              *(a1 + 11816) = 1;
              *(a1 + 11820) = v34;
              if (v34 >= 1)
              {
                v35 = (a1 + 11892);
                v36 = 2956;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(*v10, v36 - 2956);
                  *(v35 - 17) = IOSurfaceGetID(ValueAtIndex);
                  if (sub_160EF0(0x1Eu, 6))
                  {
                    v38 = sub_160F34(0x1Eu);
                    v39 = sub_175AE4();
                    v40 = sub_160F68(6);
                    v41 = *(v35 - 17);
                    if (v38)
                    {
                      printf("%lld %d AVE %s: UserDPBFrames CFArrayGetValueAtIndex %d = %d\n", v39, 30, v40, v36 - 2956, v41);
                      v39 = sub_175AE4();
                      v40 = sub_160F68(6);
                      v41 = *(v35 - 17);
                    }

                    syslog(3, "%lld %d AVE %s: UserDPBFrames CFArrayGetValueAtIndex %d = %d", v39, 30, v40, v36 - 2956, v41);
                  }

                  if (v32)
                  {
                    v42 = CFArrayGetValueAtIndex(*v10, v36 + valuePtr - 2956);
                    *v35 = IOSurfaceGetID(v42);
                    if (sub_160EF0(0x1Eu, 6))
                    {
                      v43 = sub_160F34(0x1Eu);
                      v44 = sub_175AE4();
                      v45 = sub_160F68(6);
                      v46 = v36 + valuePtr - 2956;
                      v47 = *v35;
                      if (v43)
                      {
                        printf("%lld %d AVE %s: UserDPBFrames CFArrayGetValueAtIndex %d = %d\n", v44, 30, v45, v36 + valuePtr - 2956, v47);
                        v44 = sub_175AE4();
                        v45 = sub_160F68(6);
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
              if (sub_160EF0(0x1Eu, 4))
              {
                v53 = sub_160F34(0x1Eu);
                v54 = sub_175AE4();
                v55 = sub_160F68(4);
                if (v53)
                {
                  printf("%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_DPBRequirements with bad parameter                      num_frames = %d\n", v54, 30, v55, valuePtr);
                  v56 = sub_175AE4();
                  v64 = sub_160F68(4);
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
            if (sub_160EF0(0x1Eu, 6))
            {
              v49 = sub_160F34(0x1Eu);
              v50 = sub_175AE4();
              v51 = sub_160F68(6);
              if (v49)
              {
                printf("%lld %d AVE %s: No user DPB frames found. driver will create frames internally.\n", v50, 30, v51);
                v52 = sub_175AE4();
                v63 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: No user DPB frames found. driver will create frames internally.", v52, 30, v63);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: No user DPB frames found. driver will create frames internally.", v50, 30, v51);
              }
            }

            v12 = 0;
            *(a1 + 11816) = 1;
            *(a1 + 11820) = valuePtr;
          }

          if (sub_160EF0(0x1Eu, 7))
          {
            v57 = sub_160F34(0x1Eu);
            v58 = sub_175AE4();
            v59 = sub_160F68(7);
            v60 = *a2;
            if (v57)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v58, 30, v59, a1, *(a1 + 56), *a2, valuePtr);
              v58 = sub_175AE4();
              v59 = sub_160F68(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v58, 30, v59, a1, *(a1 + 56), *a2, valuePtr);
          }
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
            printf("%lld %d AVE %s: %s:%d %s | fail to get VCP %p\n", v27, 30, v28, "AVE_Prop_HEVC_SetDPBRequirements", 5699, "psINS->pcVCP != __null", a1);
            v27 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VCP %p", v27);
        }

        return 4294966281;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetDPBRequirements", 5696, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetDPBRequirements", 5696, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetDPBRequirements", 5672, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v62 = sub_160F68(4);
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

uint64_t sub_3C364(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFMutableArrayRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, (*(a1 + 106484) << (*(a1 + 106480) != 0)), &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v11 = Mutable;
      if (*(a1 + 106484) >= 1)
      {
        v12 = 0;
        v13 = (a1 + 11824);
        do
        {
          v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, v13);
          if (!v14)
          {
            if (sub_160EF0(0x1Eu, 4))
            {
              v35 = sub_160F34(0x1Eu);
              v36 = sub_175AE4();
              v37 = sub_160F68(4);
              if (v35)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v36, 30, v37, "AVE_Prop_HEVC_GetDPBRequirements", 5819, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *v13);
                v38 = sub_175AE4();
                v39 = sub_160F68(4);
                v52 = *v13;
                v49 = *(a1 + 56);
                v47 = a1;
                v40 = 5819;
                goto LABEL_29;
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v36, 30, v37, "AVE_Prop_HEVC_GetDPBRequirements", 5819, "pNum != __null", a1);
            }

LABEL_34:
            CFRelease(v11);
            return 4294966293;
          }

          v15 = v14;
          CFArrayAppendValue(v11, v14);
          CFRelease(v15);
          ++v12;
          v16 = *(a1 + 106484);
          ++v13;
        }

        while (v12 < v16);
        if (*(a1 + 106480) && v16 >= 1)
        {
          v17 = 0;
          v18 = (a1 + 11892);
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
            if (v17 >= *(a1 + 106484))
            {
              goto LABEL_15;
            }
          }

          if (sub_160EF0(0x1Eu, 4))
          {
            v41 = sub_160F34(0x1Eu);
            v42 = sub_175AE4();
            v43 = sub_160F68(4);
            if (v41)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v42, 30, v43, "AVE_Prop_HEVC_GetDPBRequirements", 5839, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *v18);
              v38 = sub_175AE4();
              v39 = sub_160F68(4);
              v53 = *v18;
              v50 = *(a1 + 56);
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
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(7);
        v25 = *(a1 + 11820);
        if (v22)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v23, 30, v24, a1, *(a1 + 56), *a2, *(a1 + 11820), v11);
          v23 = sub_175AE4();
          sub_160F68(7);
          v26 = *(a1 + 56);
          v46 = *(a1 + 11820);
          v45 = *a2;
        }

        else
        {
          v48 = *(a1 + 11820);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v23, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", v32, 30, v33, "AVE_Prop_HEVC_GetDPBRequirements", 5809, "p != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 106484) << (*(a1 + 106480) != 0));
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
          v34 = *(a1 + 56);
          v51 = (*(a1 + 106484) << (*(a1 + 106480) != 0));
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", v32, 30, v33, "AVE_Prop_HEVC_GetDPBRequirements", 5809, "p != __null", a1);
      }

      return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v28, 30, v29, "AVE_Prop_HEVC_GetDPBRequirements", 5798, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v30 = sub_175AE4();
        v44 = sub_160F68(4);
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

uint64_t sub_3C96C(uint64_t a1, const char **a2, const void *a3, const void *a4, void *a5)
{
  v61 = 0;
  memset(v60, 0, 44);
  if (!a1 || !a2 || !a4 || !a5)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v34 = sub_160F34(0x1Eu);
      v35 = sub_175AE4();
      v36 = sub_160F68(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v35, 30, v36, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5901, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v37 = sub_175AE4();
        v55 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v37, 30, v55, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5901);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v35, 30, v36, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5901);
      }
    }

    return 4294966295;
  }

  v10 = *(a1 + 106088);
  if (!v10)
  {
    v10 = *(a1 + 1440);
  }

  v11 = *(a1 + 106092);
  if (!v11)
  {
    v11 = *(a1 + 1444);
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

  v58 = v14 & 0xFFFFFFE0;
  v59 = v13;
  v15 = *(a1 + 76);
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

  v62 = v18;
  v63 = 0x400000000;
  v64 = 0;
  v65 = v19;
  v66 = 0;
  v67 = v20;
  v68 = 0;
  v21 = *(a1 + 108000);
  if (!v21)
  {
    if (sub_160EF0(0x1Eu, 5))
    {
      v38 = sub_160F34(0x1Eu);
      v39 = sub_175AE4();
      v40 = sub_160F68(5);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | input pixel format is not set %p %lld %p %p 0x%x\n", v39, 30, v40, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5927, "psINS->inputPixelFormat != 0", a1, *(a1 + 56), a4, a5, *(a1 + 108000));
        v39 = sub_175AE4();
        v40 = sub_160F68(5);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | input pixel format is not set %p %lld %p %p 0x%x", v39, 30, v40, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5927, "psINS->inputPixelFormat != 0", a1, *(a1 + 56), a4, a5, *(a1 + 108000));
    }

    return 0;
  }

  v22 = sub_167CD8(v21);
  if (!v22)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v41 = sub_160F34(0x1Eu);
      v42 = sub_175AE4();
      v43 = sub_160F68(4);
      if (v41)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld %p %p 0x%x\n", v42, 30, v43, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5933, "psPixelFmt != __null", a1, *(a1 + 56), a4, a5, *(a1 + 108000));
        v42 = sub_175AE4();
        v43 = sub_160F68(4);
        v44 = *(a1 + 56);
        v56 = *(a1 + 108000);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld %p %p 0x%x", v42, 30, v43, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5933);
    }

    return 4294966296;
  }

  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = *(v22 + 28);
  *(&v60[2] + 4) = *(v22 + 36);
  v60[0] = v23;
  v60[1] = v24;
  LODWORD(v60[2]) = 0;
  v26 = *(a1 + 24732) + 8;
  DWORD2(v60[1]) = 3;
  DWORD1(v60[0]) = v26;
  v27 = sub_167D10(v60);
  if (!v27)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v45 = sub_160F34(0x1Eu);
      v46 = sub_175AE4();
      v47 = sub_160F68(4);
      if (v45)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format type %p %lld %p %p 0x%x\n", v46, 30, v47, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5943, "type != 0", a1, *(a1 + 56), a4, a5, *(a1 + 108000));
        v46 = sub_175AE4();
        v47 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format type %p %lld %p %p 0x%x", v46, 30, v47, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5943, "type != 0", a1, *(a1 + 56), a4, a5, *(a1 + 108000));
    }

    return 4294966295;
  }

  v28 = v27;
  sub_14E498(*(a1 + 68), *(a1 + 64), 2, &v59, &v58);
  v29 = sub_158978(*(a1 + 68), *(a1 + 64), 62, 2, v10, v11, v59, v58, v28);
  if (!v29 && v61)
  {
    *a5 = v61;
    if (sub_160EF0(0x1Eu, 7))
    {
      v30 = sub_160F34(0x1Eu);
      v31 = sub_175AE4();
      v32 = sub_160F68(7);
      v33 = *a2;
      if (v30)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v31, 30, v32, a1, *(a1 + 56), *a2, v61);
        v31 = sub_175AE4();
        v32 = sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v31, 30, v32, a1, *(a1 + 56), *a2, v61);
    }

    return 0;
  }

  if (sub_160EF0(0x1Eu, 4))
  {
    v48 = sub_160F34(0x1Eu);
    v49 = sub_175AE4();
    v50 = sub_160F68(4);
    v51 = *(a1 + 56);
    if (v48)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create recon buffer dictionary %p %lld %p %p 0x%x 0x%x %d %d %d %d %p\n", v49, 30, v50, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5956, "ret == 0 && pDict != __null", a1, v51, a4, a5, *(a1 + 108000), v28, v10, v11, v59, v58, v61);
      v52 = sub_175AE4();
      v53 = sub_160F68(4);
      v57 = *(a1 + 108000);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create recon buffer dictionary %p %lld %p %p 0x%x 0x%x %d %d %d %d %p", v52, 30, v53, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5956, "ret == 0 && pDict != __null", a1, *(a1 + 56));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create recon buffer dictionary %p %lld %p %p 0x%x 0x%x %d %d %d %d %p", v49, 30, v50, "AVE_Prop_HEVC_GetReconstructedPixelBufferAttributes", 5956, "ret == 0 && pDict != __null", a1, v51);
    }
  }

  return v29;
}

uint64_t sub_3D0D0(uint64_t a1, const char **a2, const void *a3, const __CFArray *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v28 = sub_160F34(0x1Eu);
          v29 = sub_175AE4();
          v30 = sub_160F68(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v29, 30, v30, "AVE_Prop_HEVC_SetUserRPSForFaceTime", 6007, "iUserRPSForFaceTime > 0", a1, *(a1 + 56), a2, a3, a4, v10);
            v29 = sub_175AE4();
            v30 = sub_160F68(4);
            v31 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_SetUserRPSForFaceTime", 6007, "iUserRPSForFaceTime > 0");
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106620) = Count;
        *(a1 + 10785) = 1;
        *(a1 + 80600) = Count;
        v11 = sub_157310(a4, (a1 + 80604), (a1 + 80600));
        if (v11)
        {
          v12 = v11;
          if (sub_160EF0(0x1Eu, 4))
          {
            v13 = sub_160F34(0x1Eu);
            v14 = sub_175AE4();
            v15 = sub_160F68(4);
            if (v13)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to retrive RPS array %p %lld %p %p %p %d\n", v14, 30, v15, "AVE_Prop_HEVC_SetUserRPSForFaceTime", 6020, "ret == 0", a1, *(a1 + 56), a2, a3, a4, v10);
              v16 = sub_175AE4();
              v17 = sub_160F68(4);
              v40 = *(a1 + 56);
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
          if (sub_160EF0(0x1Eu, 7))
          {
            v32 = sub_160F34(0x1Eu);
            v33 = sub_175AE4();
            v34 = sub_160F68(7);
            v35 = *a2;
            if (v32)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v33, 30, v34, a1, *(a1 + 56), *a2, v10);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetUserRPSForFaceTime", 5999, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v27 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetUserRPSForFaceTime", 5999, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_SetUserRPSForFaceTime", 5989, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = sub_175AE4();
        v38 = sub_160F68(4);
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

uint64_t sub_3D638(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 2 * *(a1 + 11820), &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v28 = sub_160F34(0x1Eu);
        v29 = sub_175AE4();
        v30 = sub_160F68(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", v29, 30, v30, "AVE_Prop_HEVC_GetUserRPSForFaceTime", 6063, "p != __null", a1, *(a1 + 56), a2, allocator, a4, a5, 2 * *(a1 + 11820));
          v29 = sub_175AE4();
          v30 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_GetUserRPSForFaceTime", 6063, "p != __null", a1, *(a1 + 56), a2, allocator, a4, a5, (2 * *(a1 + 11820)));
      }

      return 4294966293;
    }

    v11 = Mutable;
    if (*(a1 + 11820) >= 1)
    {
      v12 = 0;
      v13 = (a1 + 11892);
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
          if (sub_160EF0(0x1Eu, 4))
          {
            v34 = sub_160F34(0x1Eu);
            v35 = sub_175AE4();
            v36 = sub_160F68(4);
            if (v34)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v35, 30, v36, "AVE_Prop_HEVC_GetUserRPSForFaceTime", 6082, "pNum2 != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *v13);
              v35 = sub_175AE4();
              v36 = sub_160F68(4);
              v42 = *v13;
              v41 = *(a1 + 56);
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
        if (v12 >= *(a1 + 11820))
        {
          goto LABEL_11;
        }
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v31 = sub_160F34(0x1Eu);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v32, 30, v33, "AVE_Prop_HEVC_GetUserRPSForFaceTime", 6074, "pNum1 != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(v13 - 17));
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v32, 30, v33, "AVE_Prop_HEVC_GetUserRPSForFaceTime", 6074, "pNum1 != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(v13 - 17));
      }

      return 4294966293;
    }

LABEL_11:
    *a5 = v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(7);
      v22 = *(a1 + 11820);
      if (v19)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v20, 30, v21, a1, *(a1 + 56), *a2, *(a1 + 11820), v11);
        v20 = sub_175AE4();
        sub_160F68(7);
        v23 = *(a1 + 56);
        v39 = *(a1 + 11820);
        v38 = *a2;
      }

      else
      {
        v40 = *(a1 + 11820);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v25, 30, v26, "AVE_Prop_HEVC_GetUserRPSForFaceTime", 6053, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v27 = sub_175AE4();
        v37 = sub_160F68(4);
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

uint64_t sub_3DC00(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106488) = v9;
      *(a1 + 10206) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetForceRefUncompresseds", 6153, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetForceRefUncompresseds", 6153, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetForceRefUncompresseds", 6143, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_3DF44(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10206);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10206))
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetForceRefUncompressed", 6191, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_3E168(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106492) = v9;
      *(a1 + 11960) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableUserRefForFacetime", 6239, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableUserRefForFacetime", 6239, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableUserRefForFacetime", 6229, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_3E4AC(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 11960);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 11960))
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEnableUserRefForFacetime", 6277, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_3E6D0(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 106496) = v9;
      *(a1 + 1308) = 2;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetEnableMultiReferenceP", 6325, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetEnableMultiReferenceP", 6325, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetEnableMultiReferenceP", 6315, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_3EA10(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1308);
    v11 = &kCFBooleanTrue;
    if (v10 <= 1)
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 > 1;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_HEVC_GetEnableMultiReferenceP", 6363, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
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

uint64_t sub_3EC38(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v26 = sub_160F34(0x1Eu);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v27, 30, v28, "AVE_Prop_HEVC_SetMultiReferencePSpacing", 6422, "1 <= iMultiReferencePSpacing && iMultiReferencePSpacing <= 8", a1, *(a1 + 56), a2, a3, a4, valuePtr, 1, 8);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            v29 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v27, 30, v28, "AVE_Prop_HEVC_SetMultiReferencePSpacing", 6422, "1 <= iMultiReferencePSpacing && iMultiReferencePSpacing <= 8", a1);
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 106500) = valuePtr;
        *(a1 + 1324) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_HEVC_SetMultiReferencePSpacing", 6411, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          v25 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_HEVC_SetMultiReferencePSpacing", 6411, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetMultiReferencePSpacing", 6401, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_3F0AC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1324);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_GetMultiReferencePSpacing", 6468, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
          v24 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_HEVC_GetMultiReferencePSpacing", 6468, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetMultiReferencePSpacing", 6458, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_3F3DC(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      *(a1 + 106408) = v10;
      v11 = *(a1 + 1296) & 0xFFFFFFFE;
      if (Value)
      {
        ++v11;
      }

      *(a1 + 1296) = v11;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetEnableWeightedPrediction", 6510, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v27 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetEnableWeightedPrediction", 6510, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_SetEnableWeightedPrediction", 6500, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = sub_175AE4();
        v28 = sub_160F68(4);
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

uint64_t sub_3F728(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1296) & 1;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEnableWeightedPrediction", 6555, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_3F948(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      *(a1 + 106504) = v10;
      v11 = *(a1 + 1104) & 0xFFFFFF7FLL;
      if (Value)
      {
        v11 = *(a1 + 1104) | 0x80;
      }

      *(a1 + 1104) = v11;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetEnableVUIBitstreamRestriction", 6603, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v27 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetEnableVUIBitstreamRestriction", 6603, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_SetEnableVUIBitstreamRestriction", 6593, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = sub_175AE4();
        v28 = sub_160F68(4);
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

uint64_t sub_3FC9C(void *a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[138] & 0x80;
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
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, a1[7], *a2, v10 >> 7);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_HEVC_GetEnableVUIBitstreamRestriction", 6649, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
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

uint64_t sub_3FEC4(int a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  if (a4)
  {
    if (sub_16FD90(a1))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v9 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
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
          v24 = kVTPropertyReadWriteStatus_ReadOnly;
        }

        else
        {
          v24 = kVTPropertyReadWriteStatus_ReadWrite;
        }

        CFDictionarySetValue(Mutable, kVTPropertyTypeKey, kVTPropertyType_Enumeration);
        CFDictionarySetValue(Mutable, kVTPropertyReadWriteStatusKey, v24);
        v25 = sub_17CEA8(v10);
        if (v25)
        {
          if (sub_160EF0(0x1Eu, 4))
          {
            v26 = sub_160F34(0x1Eu);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            if (v26)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to add Color Primaries %d 0x%x %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_AddColorPrimaries", 6712, "ret == 0", a1, a2, a3, a4, Mutable, v10, v25);
              v29 = sub_175AE4();
              v30 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Color Primaries %d 0x%x %lld %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_AddColorPrimaries", 6712, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Color Primaries %d 0x%x %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_AddColorPrimaries", 6712, "ret == 0");
            }
          }
        }

        else
        {
          CFDictionarySetValue(Mutable, kVTPropertySupportedValueListKey, v10);
          CFDictionarySetValue(a4, kVTCompressionPropertyKey_ColorPrimaries, Mutable);
        }

        goto LABEL_35;
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v12 = sub_160F34(0x1Eu);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p\n", v13, 30, v14, "AVE_Prop_HEVC_AddColorPrimaries", 6699, "pTmpDict != __null && pTmpArray != __null", a1, a2, a3, a4, Mutable, v10);
          v15 = sub_175AE4();
          v32 = sub_160F68(4);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v21, 30, v22, "AVE_Prop_HEVC_AddColorPrimaries", 6691, "pDevCap != __null", a1, a2, a3, a4);
          v23 = sub_175AE4();
          v34 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v17, 30, v18, "AVE_Prop_HEVC_AddColorPrimaries", 6686, "pDict != __null", a1, a2, a3, 0);
        v19 = sub_175AE4();
        v33 = sub_160F68(4);
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

uint64_t sub_403E8(uint64_t a1, const char **a2, const void *a3, const __CFString *a4)
{
  if (a1 && a2 && a3)
  {
    v8 = (a1 + 31332);
    if (!a4)
    {
      *v8 = 1;
      *(a1 + 31349) = 1;
      *(a1 + 31360) = 1;
      v19 = 2;
      *(a1 + 31364) = 2;
      v20 = 106508;
LABEL_22:
      *(a1 + v20) = v19;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v28 = sub_160F34(0x1Eu);
        v29 = sub_175AE4();
        v30 = sub_160F68(7);
        v31 = *a2;
        if (v28)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v29, 30, v30, a1, *(a1 + 56), *a2, v19);
          v29 = sub_175AE4();
          sub_160F68(7);
          v32 = *(a1 + 56);
        }

        v34 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v29);
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(4);
          if (v11)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v12, 30, v13, "AVE_Prop_HEVC_SetColorPrimaries", 6784, "iColorPrimaries != kAppleColorCodePoints_ColorPrimaries_Unknown", a1, *(a1 + 56), a2, a3, a4, 2);
            v12 = sub_175AE4();
            v13 = sub_160F68(4);
            v14 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v12, 30, v13, "AVE_Prop_HEVC_SetColorPrimaries", 6784, "iColorPrimaries != kAppleColorCodePoints_ColorPrimaries_Unknown");
        }

        return 4294965292;
      }

      v19 = IntegerCodePointForString;
      *(a1 + 106508) = IntegerCodePointForString;
      *v8 = 1;
      *(a1 + 31349) = 1;
      *(a1 + 31360) = 1;
      v20 = 31364;
      goto LABEL_22;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v21 = sub_160F34(0x1Eu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      v24 = *(a1 + 56);
      v25 = CFGetTypeID(a4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v22, 30, v23, "AVE_Prop_HEVC_SetColorPrimaries", 6775, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v24, a2, a3, a4, v25);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        v26 = *(a1 + 56);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v22, 30, v23, "AVE_Prop_HEVC_SetColorPrimaries", 6775, "CFStringGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_HEVC_SetColorPrimaries", 6752, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v18 = sub_175AE4();
        v33 = sub_160F68(4);
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

uint64_t sub_40868(uint64_t a1, const char **a2, const void *a3, const void *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    StringForIntegerCodePoint = CVColorPrimariesGetStringForIntegerCodePoint(*(a1 + 31364));
    *a5 = StringForIntegerCodePoint;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v12 = sub_160F34(0x1Eu);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *(a1 + 31364);
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v13, 30, v14, a1, *(a1 + 56), *a2, *(a1 + 31364), StringForIntegerCodePoint);
        v13 = sub_175AE4();
        sub_160F68(7);
        v16 = *(a1 + 56);
        v23 = *(a1 + 31364);
        v22 = *a2;
      }

      else
      {
        v24 = *(a1 + 31364);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v13, 30);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetColorPrimaries", 6823, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
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

uint64_t sub_40A88(int a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  if (a4)
  {
    if (sub_16FD90(a1))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v9 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
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
          v24 = kVTPropertyReadWriteStatus_ReadOnly;
        }

        else
        {
          v24 = kVTPropertyReadWriteStatus_ReadWrite;
        }

        CFDictionarySetValue(Mutable, kVTPropertyTypeKey, kVTPropertyType_Enumeration);
        CFDictionarySetValue(Mutable, kVTPropertyReadWriteStatusKey, v24);
        v25 = sub_17CEF8(v10);
        if (v25)
        {
          if (sub_160EF0(0x1Eu, 4))
          {
            v26 = sub_160F34(0x1Eu);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            if (v26)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to add Transfer Characteristic %d 0x%x %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_AddTransferFunction", 6887, "ret == 0", a1, a2, a3, a4, Mutable, v10, v25);
              v29 = sub_175AE4();
              v30 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Transfer Characteristic %d 0x%x %lld %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_AddTransferFunction", 6887, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Transfer Characteristic %d 0x%x %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_AddTransferFunction", 6887, "ret == 0");
            }
          }
        }

        else
        {
          CFDictionarySetValue(Mutable, kVTPropertySupportedValueListKey, v10);
          CFDictionarySetValue(a4, kVTCompressionPropertyKey_TransferFunction, Mutable);
        }

        goto LABEL_35;
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v12 = sub_160F34(0x1Eu);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p\n", v13, 30, v14, "AVE_Prop_HEVC_AddTransferFunction", 6874, "pTmpDict != __null && pTmpArray != __null", a1, a2, a3, a4, Mutable, v10);
          v15 = sub_175AE4();
          v32 = sub_160F68(4);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v21, 30, v22, "AVE_Prop_HEVC_AddTransferFunction", 6866, "pDevCap != __null", a1, a2, a3, a4);
          v23 = sub_175AE4();
          v34 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v17, 30, v18, "AVE_Prop_HEVC_AddTransferFunction", 6861, "pDict != __null", a1, a2, a3, 0);
        v19 = sub_175AE4();
        v33 = sub_160F68(4);
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

uint64_t sub_40FAC(uint64_t a1, const char **a2, const void *a3, const __CFString *cf1)
{
  if (a1 && a2 && a3)
  {
    v8 = (a1 + 31332);
    if (!cf1 || CFEqual(cf1, kCVImageBufferTransferFunction_UseGamma))
    {
      *v8 = 1;
      *(a1 + 31349) = 1;
      *(a1 + 31360) = 1;
      v9 = 2;
      *(a1 + 31368) = 2;
      *(a1 + 106512) = 2;
      goto LABEL_7;
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(cf1))
    {
      IntegerCodePointForString = CVTransferFunctionGetIntegerCodePointForString(cf1);
      if (IntegerCodePointForString != 2)
      {
        v9 = IntegerCodePointForString;
        *(a1 + 106512) = IntegerCodePointForString;
        *v8 = 1;
        *(a1 + 31349) = 1;
        *(a1 + 31360) = 1;
        *(a1 + 31368) = IntegerCodePointForString;
LABEL_7:
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

          v33 = *a2;
          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }

        return result;
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v23, 30, v24, "AVE_Prop_HEVC_SetTransferFunction", 6960, "iTransferFunction != kAppleColorCodePoints_TransferFunction_Unknown", a1, *(a1 + 56), a2, a3, cf1, 2);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          v25 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v23, 30, v24, "AVE_Prop_HEVC_SetTransferFunction", 6960, "iTransferFunction != kAppleColorCodePoints_TransferFunction_Unknown");
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
        v29 = *(a1 + 56);
        v30 = CFGetTypeID(cf1);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v27, 30, v28, "AVE_Prop_HEVC_SetTransferFunction", 6951, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v29, a2, a3, cf1, v30);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          v31 = *(a1 + 56);
          CFGetTypeID(cf1);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v27, 30, v28, "AVE_Prop_HEVC_SetTransferFunction", 6951, "CFStringGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_SetTransferFunction", 6928, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, cf1);
        v19 = sub_175AE4();
        v32 = sub_160F68(4);
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

uint64_t sub_4143C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    StringForIntegerCodePoint = CVTransferFunctionGetStringForIntegerCodePoint(*(a1 + 31368));
    *a5 = StringForIntegerCodePoint;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v12 = sub_160F34(0x1Eu);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *(a1 + 31368);
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v13, 30, v14, a1, *(a1 + 56), *a2, *(a1 + 31368), StringForIntegerCodePoint);
        v13 = sub_175AE4();
        sub_160F68(7);
        v16 = *(a1 + 56);
        v23 = *(a1 + 31368);
        v22 = *a2;
      }

      else
      {
        v24 = *(a1 + 31368);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v13, 30);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetTransferFunction", 6999, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
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

uint64_t sub_4165C(int a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  if (a4)
  {
    if (sub_16FD90(a1))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v9 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
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
          v24 = kVTPropertyReadWriteStatus_ReadOnly;
        }

        else
        {
          v24 = kVTPropertyReadWriteStatus_ReadWrite;
        }

        CFDictionarySetValue(Mutable, kVTPropertyTypeKey, kVTPropertyType_Enumeration);
        CFDictionarySetValue(Mutable, kVTPropertyReadWriteStatusKey, v24);
        v25 = sub_17CF5C(v10);
        if (v25)
        {
          if (sub_160EF0(0x1Eu, 4))
          {
            v26 = sub_160F34(0x1Eu);
            v27 = sub_175AE4();
            v28 = sub_160F68(4);
            if (v26)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to add Matrix Coefficients %d 0x%x %lld %p %p %p %d\n", v27, 30, v28, "AVE_Prop_HEVC_AddYCbCrMatrix", 7063, "ret == 0", a1, a2, a3, a4, Mutable, v10, v25);
              v29 = sub_175AE4();
              v30 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Matrix Coefficients %d 0x%x %lld %p %p %p %d", v29, 30, v30, "AVE_Prop_HEVC_AddYCbCrMatrix", 7063, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add Matrix Coefficients %d 0x%x %lld %p %p %p %d", v27, 30, v28, "AVE_Prop_HEVC_AddYCbCrMatrix", 7063, "ret == 0");
            }
          }
        }

        else
        {
          CFDictionarySetValue(Mutable, kVTPropertySupportedValueListKey, v10);
          CFDictionarySetValue(a4, kVTCompressionPropertyKey_YCbCrMatrix, Mutable);
        }

        goto LABEL_35;
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v12 = sub_160F34(0x1Eu);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p\n", v13, 30, v14, "AVE_Prop_HEVC_AddYCbCrMatrix", 7050, "pTmpDict != __null && pTmpArray != __null", a1, a2, a3, a4, Mutable, v10);
          v15 = sub_175AE4();
          v32 = sub_160F68(4);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v21, 30, v22, "AVE_Prop_HEVC_AddYCbCrMatrix", 7042, "pDevCap != __null", a1, a2, a3, a4);
          v23 = sub_175AE4();
          v34 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v17, 30, v18, "AVE_Prop_HEVC_AddYCbCrMatrix", 7037, "pDict != __null", a1, a2, a3, 0);
        v19 = sub_175AE4();
        v33 = sub_160F68(4);
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

uint64_t sub_41B80(uint64_t a1, const char **a2, const void *a3, const __CFString *a4)
{
  if (a1 && a2 && a3)
  {
    v8 = (a1 + 31332);
    if (!a4)
    {
      *v8 = 1;
      *(a1 + 31349) = 1;
      *(a1 + 31360) = 1;
      IntegerCodePointForString = 2;
      *(a1 + 31372) = 2;
      v12 = 106516;
LABEL_14:
      *(a1 + v12) = IntegerCodePointForString;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(7);
        v21 = *a2;
        if (v18)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v19, 30, v20, a1, *(a1 + 56), *a2, IntegerCodePointForString);
          v19 = sub_175AE4();
          sub_160F68(7);
          v22 = *(a1 + 56);
        }

        v33 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v19);
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
        *(a1 + 106516) = IntegerCodePointForString;
        *v8 = 1;
        *(a1 + 31349) = 1;
        *(a1 + 31360) = 1;
        v12 = 31372;
        goto LABEL_14;
      }

      v11 = kCVImageBufferYCbCrMatrix_Identity;
      if (CFEqual(a4, kCVImageBufferYCbCrMatrix_Identity))
      {
        IntegerCodePointForString = 2 * (CFEqual(a4, v11) == 0);
        goto LABEL_9;
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v29 = sub_160F34(0x1Eu);
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s:%d %s | kMatrixCoefficients set %p %lld %p %p %p 0x%x\n", v30, 30, v31, "AVE_Prop_HEVC_SetYCbCrMatrix", 7137, "iYCbCrMatrix != kAppleColorCodePoints_YCbCrMatrix_Unknown || (iYCbCrMatrix == kAppleColorCodePoints_YCbCrMatrix_Unknown && CFEqual((CFStringRef)pValue, kCVImageBufferYCbCrMatrix_Identity))", a1, *(a1 + 56), a2, a3, a4, 2);
          v30 = sub_175AE4();
          v31 = sub_160F68(4);
        }

        v34 = *(a1 + 56);
        syslog(3, "%lld %d AVE %s: %s:%d %s | kMatrixCoefficients set %p %lld %p %p %p 0x%x", v30, 30, v31, "AVE_Prop_HEVC_SetYCbCrMatrix", 7137, "iYCbCrMatrix != kAppleColorCodePoints_YCbCrMatrix_Unknown || (iYCbCrMatrix == kAppleColorCodePoints_YCbCrMatrix_Unknown && CFEqual((CFStringRef)pValue, kCVImageBufferYCbCrMatrix_Identity))");
      }
    }

    else if (sub_160EF0(0x1Eu, 4))
    {
      v23 = sub_160F34(0x1Eu);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      v26 = *(a1 + 56);
      v27 = CFGetTypeID(a4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_HEVC_SetYCbCrMatrix", 7126, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        v28 = *(a1 + 56);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_HEVC_SetYCbCrMatrix", 7126, "CFStringGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  if (sub_160EF0(0x1Eu, 4))
  {
    v13 = sub_160F34(0x1Eu);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_HEVC_SetYCbCrMatrix", 7103, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
      v16 = sub_175AE4();
      v32 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v32, "AVE_Prop_HEVC_SetYCbCrMatrix");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_HEVC_SetYCbCrMatrix");
    }
  }

  return 4294966295;
}

uint64_t sub_4201C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    StringForIntegerCodePoint = CVYCbCrMatrixGetStringForIntegerCodePoint(*(a1 + 31372));
    *a5 = StringForIntegerCodePoint;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v12 = sub_160F34(0x1Eu);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *(a1 + 31372);
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v13, 30, v14, a1, *(a1 + 56), *a2, *(a1 + 31372), StringForIntegerCodePoint);
        v13 = sub_175AE4();
        sub_160F68(7);
        v16 = *(a1 + 56);
        v23 = *(a1 + 31372);
        v22 = *a2;
      }

      else
      {
        v24 = *(a1 + 31372);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v13, 30);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetYCbCrMatrix", 7182, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
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

uint64_t sub_4223C(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (CFEqual(a4, kVTHDRMetadataInsertionMode_None))
      {
        v9 = 0;
        goto LABEL_19;
      }

      if (CFEqual(a4, kVTHDRMetadataInsertionMode_Auto))
      {
        v9 = 1;
LABEL_19:
        *(a1 + 106912) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p\n", v27, 30, v28, "AVE_Prop_HEVC_SetHDRMetadataInsertionMode", 7252, "false", a1, *(a1 + 56), a2, a3, a4);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          v29 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p", v27, 30, v28, "AVE_Prop_HEVC_SetHDRMetadataInsertionMode", 7252);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_HEVC_SetHDRMetadataInsertionMode", 7234, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v17, a2, a3, a4, v18);
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
          v19 = *(a1 + 56);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v15, 30, v16, "AVE_Prop_HEVC_SetHDRMetadataInsertionMode", 7234, "CFStringGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v11, 30, v12, "AVE_Prop_HEVC_SetHDRMetadataInsertionMode", 7224, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v13 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_42690(uint64_t a1, const char **a2, const void *a3, const void *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if (*(a1 + 106912))
    {
      v10 = &kVTHDRMetadataInsertionMode_Auto;
    }

    else
    {
      v10 = &kVTHDRMetadataInsertionMode_None;
    }

    *a5 = *v10;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v12 = sub_160F34(0x1Eu);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      v15 = *(a1 + 106912);
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v13, 30, v14, a1, *(a1 + 56), *a2, *(a1 + 106912), a5);
        v13 = sub_175AE4();
        sub_160F68(7);
        v16 = *(a1 + 56);
        v23 = *(a1 + 106912);
        v22 = *a2;
      }

      else
      {
        v24 = *(a1 + 106912);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v13, 30);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_HEVC_GetHDRMetadataInsertionMode", 7289, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
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

uint64_t sub_428C8(uint64_t a1, const char **a2, const void *a3, const void *a4)
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
        v54 = v29;
        v31 = 7350;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v27, 30, v28, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7350, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v54, a2, a3, a4, v30);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        v34 = *(a1 + 56);
        CFGetTypeID(a4);
        v35 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_26:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v32, 30, v33, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", v31, v35);
        return 4294965293;
      }

      v39 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v40 = 7350;
LABEL_33:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v27, 30, v28, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", v40, v39);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    v10 = Count;
    if (Count > 16 || (Count & 1) != 0)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v36 = sub_160F34(0x1Eu);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (v36)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [%d, %d]\n", v37, 30, v38, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7361, "(cQpIndexOffsetCount & 0x1) == 0 && cQpIndexOffsetCount / 2 <= 8", a1, *(a1 + 56), a2, a3, a4, v10, 0, 16);
          v37 = sub_175AE4();
          v38 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [%d, %d]", v37, 30, v38, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7361, "(cQpIndexOffsetCount & 0x1) == 0 && cQpIndexOffsetCount / 2 <= 8", a1, *(a1 + 56), a2, a3, a4, v10, 0, 16);
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
            if (sub_160EF0(0x1Eu, 4))
            {
              v41 = sub_160F34(0x1Eu);
              v42 = sub_175AE4();
              v43 = sub_160F68(4);
              if (v41)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v42, 30, v43, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7370, "cQpIndexOffset != __null", a1, *(a1 + 56), a2, a3, a4);
                v42 = sub_175AE4();
                v43 = sub_160F68(4);
                v44 = *(a1 + 56);
              }

              else
              {
                v56 = *(a1 + 56);
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
            if (sub_160EF0(0x1Eu, 4))
            {
              v49 = sub_160F34(0x1Eu);
              v50 = sub_175AE4();
              v51 = sub_160F68(4);
              if (v49)
              {
                printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v50, 30, v51, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7383, "(cQpOff >= -12) && (cQpOff <= 12)", a1, *(a1 + 56), a2, a3, a4, valuePtr, -12, 12);
                v50 = sub_175AE4();
                v51 = sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v50, 30, v51, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7383, "(cQpOff >= -12) && (cQpOff <= 12)", a1, *(a1 + 56), a2, a3, a4, valuePtr, 4294967284, 12);
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

          *(a1 + v15 + 4 * ((v11++ >> 1) + 1)) = valuePtr;
          if (v10 == v11)
          {
            goto LABEL_17;
          }
        }

        if (!sub_160EF0(0x1Eu, 4))
        {
          return 4294965293;
        }

        v45 = sub_160F34(0x1Eu);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        v46 = *(a1 + 56);
        v47 = CFGetTypeID(a4);
        if (v45)
        {
          v55 = v46;
          v31 = 7374;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v27, 30, v28, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7374, "CFNumberGetTypeID() == CFGetTypeID(cQpIndexOffset)", a1, v55, a2, a3, a4, v47);
          v32 = sub_175AE4();
          v33 = sub_160F68(4);
          v48 = *(a1 + 56);
          CFGetTypeID(a4);
          v35 = "CFNumberGetTypeID() == CFGetTypeID(cQpIndexOffset)";
          goto LABEL_26;
        }

        v39 = "CFNumberGetTypeID() == CFGetTypeID(cQpIndexOffset)";
        v40 = 7374;
        goto LABEL_33;
      }

LABEL_17:
      *(a1 + 106520) = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v17 = sub_160F34(0x1Eu);
        v18 = sub_175AE4();
        v19 = sub_160F68(7);
        v20 = *a2;
        if (v17)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %ld\n", v18, 30, v19, a1, *(a1 + 56), *a2, v10);
          v18 = sub_175AE4();
          sub_160F68(7);
          v21 = *(a1 + 56);
        }

        v53 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %ld", v18);
        return 0;
      }
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v23, 30, v24, "AVE_Prop_HEVC_SetChromaQPIndexOffsetMultiPPS", 7340, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v25 = sub_175AE4();
        v52 = sub_160F68(4);
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

uint64_t sub_43054(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v29 = sub_160F34(0x1Eu);
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
        if (!v29)
        {
          v55 = a5;
          v58 = 0;
          v53 = allocator;
          v54 = a4;
          v51 = *(a1 + 56);
          v52 = a2;
          v47 = "pQpOffsetArray != __null";
          v48 = a1;
          v45 = 7430;
          v44 = v31;
          v42 = "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p";
LABEL_32:
          syslog(3, v42, v30, 30, v44, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", v45, v47, v48, v51, v52, v53, v54, v55, v58);
          return 4294966293;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p\n", v30, 30, v31, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", 7430, "pQpOffsetArray != __null", a1, *(a1 + 56), a2, allocator, a4, a5, 0);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        v34 = *(a1 + 56);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p", v32, 30, v33, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", 7430, "pQpOffsetArray != __null", a1);
      }

      return 4294966293;
    }

    v11 = Mutable;
    v59 = a4;
    v60 = a2;
    if (2 * *(a1 + 10244) - 2 >= 1)
    {
      v12 = 0;
      while (1)
      {
        ++v12;
        v13 = (a1 + 39892 + 4 * v12);
        v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, v13);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        v16 = (a1 + 39924 + 4 * v12);
        v17 = CFNumberCreate(allocator, kCFNumberSInt32Type, v16);
        if (!v17)
        {
          if (sub_160EF0(0x1Eu, 4))
          {
            v39 = sub_160F34(0x1Eu);
            v40 = sub_175AE4();
            v41 = sub_160F68(4);
            if (v39)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", v40, 30, v41, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", 7446, "pCrQpOff != __null", a1, *(a1 + 56), v60, allocator, v59, a5, *v16);
              v40 = sub_175AE4();
              v41 = sub_160F68(4);
              v57 = *v16;
              v50 = *(a1 + 56);
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
        if (v12 >= 2 * *(a1 + 10244) - 2)
        {
          goto LABEL_11;
        }
      }

      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294966293;
      }

      v35 = sub_160F34(0x1Eu);
      v30 = sub_175AE4();
      v36 = sub_160F68(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", v30, 30, v36, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", 7439, "pCbQpOff != __null", a1, *(a1 + 56), v60, allocator, v59, a5, *v13);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        v56 = *v13;
        v49 = *(a1 + 56);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d", v37, 30, v38, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", 7439, "pCbQpOff != __null", a1);
        return 4294966293;
      }

      v55 = a5;
      v58 = *v13;
      v53 = allocator;
      v54 = v59;
      v51 = *(a1 + 56);
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
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v20 = sub_160F34(0x1Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(7);
      v23 = *v60;
      if (v20)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v21, 30, v22, a1, *(a1 + 56), *v60, v11);
        v21 = sub_175AE4();
        sub_160F68(7);
        v24 = *(a1 + 56);
      }

      v46 = *v60;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v21);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v25 = sub_160F34(0x1Eu);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v26, 30, v27, "AVE_Prop_HEVC_GetChromaQPIndexOffsetMultiPPS", 7422, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v28 = sub_175AE4();
        v43 = sub_160F68(4);
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

uint64_t sub_43634(uint64_t a1, const char **a2, const void *a3, const void *a4)
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

      v25 = sub_160F34(0x1Eu);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      v28 = *(a1 + 56);
      v29 = CFGetTypeID(a4);
      if (v25)
      {
        v53 = v28;
        v30 = 7519;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7519, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v53, a2, a3, a4, v29);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        v33 = *(a1 + 56);
        CFGetTypeID(a4);
        v34 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_27:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v31, 30, v32, "AVE_Prop_HEVC_SetUserParameterSetsIds", v30, v34);
        return 4294965293;
      }

      v38 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v39 = 7519;
LABEL_34:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v26, 30, v27, "AVE_Prop_HEVC_SetUserParameterSetsIds", v39, v38);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    v10 = Count;
    if (Count > 9)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v35 = sub_160F34(0x1Eu);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (v35)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [0, %d]\n", v36, 30, v37, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7529, "UserParameterSetIdsCount <= 9", a1, *(a1 + 56), a2, a3, a4, v10, 9);
          v36 = sub_175AE4();
          v37 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [0, %d]", v36, 30, v37, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7529, "UserParameterSetIdsCount <= 9", a1, *(a1 + 56), a2, a3, a4, v10, 9);
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
            if (sub_160EF0(0x1Eu, 4))
            {
              v40 = sub_160F34(0x1Eu);
              v41 = sub_175AE4();
              v42 = sub_160F68(4);
              if (v40)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v41, 30, v42, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7537, "UserParameterSetIds != __null", a1, *(a1 + 56), a2, a3, a4);
                v41 = sub_175AE4();
                v42 = sub_160F68(4);
                v43 = *(a1 + 56);
              }

              else
              {
                v55 = *(a1 + 56);
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
            if (sub_160EF0(0x1Eu, 4))
            {
              v48 = sub_160F34(0x1Eu);
              v49 = sub_175AE4();
              v50 = sub_160F68(4);
              if (v48)
              {
                printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v49, 30, v50, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7550, "ParameterSetId >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
                v49 = sub_175AE4();
                v50 = sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v49, 30, v50, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7550, "ParameterSetId >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            }

            return 4294965292;
          }

          if (v11 == 2551)
          {
            *(a1 + 24684) = valuePtr;
          }

          else if (v11 == 2550)
          {
            *(a1 + 12000) = valuePtr;
          }

          else
          {
            *(a1 + 4 * v11) = valuePtr;
          }

          if (++v11 - v10 == 2550)
          {
            goto LABEL_18;
          }
        }

        if (!sub_160EF0(0x1Eu, 4))
        {
          return 4294965293;
        }

        v44 = sub_160F34(0x1Eu);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        v45 = *(a1 + 56);
        v46 = CFGetTypeID(a4);
        if (v44)
        {
          v54 = v45;
          v30 = 7541;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7541, "CFNumberGetTypeID() == CFGetTypeID(UserParameterSetIds)", a1, v54, a2, a3, a4, v46);
          v31 = sub_175AE4();
          v32 = sub_160F68(4);
          v47 = *(a1 + 56);
          CFGetTypeID(a4);
          v34 = "CFNumberGetTypeID() == CFGetTypeID(UserParameterSetIds)";
          goto LABEL_27;
        }

        v38 = "CFNumberGetTypeID() == CFGetTypeID(UserParameterSetIds)";
        v39 = 7541;
        goto LABEL_34;
      }

LABEL_18:
      *(a1 + 10244) = v10 - 2;
      *(a1 + 106524) = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v16 = sub_160F34(0x1Eu);
        v17 = sub_175AE4();
        v18 = sub_160F68(7);
        v19 = *a2;
        if (v16)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %ld\n", v17, 30, v18, a1, *(a1 + 56), *a2, v10);
          v17 = sub_175AE4();
          sub_160F68(7);
          v20 = *(a1 + 56);
        }

        v52 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %ld", v17);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v22, 30, v23, "AVE_Prop_HEVC_SetUserParameterSetsIds", 7509, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v24 = sub_175AE4();
        v51 = sub_160F68(4);
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

uint64_t sub_43DA8(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (!a1 || !a2 || !a4 || !a5)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v26 = sub_160F34(0x1Eu);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v27, 30, v28, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7602, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v29 = sub_175AE4();
        v43 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v29, 30, v43, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7602);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v27, 30, v28, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7602);
      }
    }

    return 4294966295;
  }

  Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v30 = sub_160F34(0x1Eu);
      v31 = sub_175AE4();
      v32 = sub_160F68(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p\n", v31, 30, v32, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7610, "pArray != __null", a1, *(a1 + 56), a2, allocator, a4, a5, 0);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        v33 = *(a1 + 56);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p", v31, 30, v32, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7610, "pArray != __null", a1);
    }

    return 4294966293;
  }

  v11 = Mutable;
  v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, (a1 + 12000));
  if (!v12)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v34 = sub_160F34(0x1Eu);
      v35 = sub_175AE4();
      v36 = sub_160F68(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v35, 30, v36, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7617, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 12000));
        v35 = sub_175AE4();
        v36 = sub_160F68(4);
      }

      v47 = *(a1 + 12000);
      v45 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v35, 30, v36, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7617, "pNum != __null", a1);
    }

    goto LABEL_38;
  }

  v13 = v12;
  CFArrayAppendValue(v11, v12);
  CFRelease(v13);
  v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, (a1 + 24684));
  if (!v14)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v37 = sub_160F34(0x1Eu);
      v38 = sub_175AE4();
      v39 = sub_160F68(4);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v38, 30, v39, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7633, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 24684));
        v38 = sub_175AE4();
        v39 = sub_160F68(4);
      }

      v48 = *(a1 + 24684);
      v46 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v38, 30, v39, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7633, "pNum != __null", a1);
    }

LABEL_38:
    CFRelease(v11);
    return 4294966293;
  }

  v15 = v14;
  CFArrayAppendValue(v11, v14);
  CFRelease(v15);
  if (*(a1 + 10244) >= 1)
  {
    v16 = 0;
    v17 = (a1 + 10208);
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
      if (v16 >= *(a1 + 10244))
      {
        goto LABEL_12;
      }
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v40 = sub_160F34(0x1Eu);
      v41 = sub_175AE4();
      v42 = sub_160F68(4);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v41, 30, v42, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7651, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *v17);
        v41 = sub_175AE4();
        v42 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v41, 30, v42, "AVE_Prop_HEVC_GetUserParameterSetsIds", 7651, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *v17);
    }

    goto LABEL_38;
  }

LABEL_12:
  *a5 = v11;
  result = sub_160EF0(0x1Eu, 7);
  if (result)
  {
    v21 = sub_160F34(0x1Eu);
    v22 = sub_175AE4();
    v23 = sub_160F68(7);
    v24 = *a2;
    if (v21)
    {
      printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v22, 30, v23, a1, *(a1 + 56), *a2, v11);
      v22 = sub_175AE4();
      sub_160F68(7);
      v25 = *(a1 + 56);
    }

    v44 = *a2;
    syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v22);
    return 0;
  }

  return result;
}