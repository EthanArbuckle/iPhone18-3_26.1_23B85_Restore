uint64_t sub_157310(const __CFArray *a1, _OWORD *a2, int *a3)
{
  v4 = a2;
  if (a1 && a2 && a3 && *a3 > 0)
  {
    bzero(a2, 356 * *a3);
    Count = CFArrayGetCount(a1);
    if (*a3 >= Count)
    {
      v7 = Count;
    }

    else
    {
      v7 = *a3;
    }

    *a3 = 0;
    if (v7 < 1)
    {
      return 0;
    }

    else
    {
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
        if (!ValueAtIndex)
        {
          break;
        }

        result = sub_156EA0(ValueAtIndex, v4);
        if (result)
        {
          return result;
        }

        ++*a3;
        ++v8;
        v4 = (v4 + 356);
        if (v7 == v8)
        {
          return 0;
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0xCCu, 4))
    {
      v11 = sub_160F34(0xCCu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v12, 204, v13, "AVE_HEVC_ST_RPS_RetrieveArray", 326, "pArray != __null && pInfo != __null && pNum != __null && *pNum > 0", a1, v4, a3);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v14, 204, v15);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 204, v13);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_1574C0(CFDictionaryRef theDict, uint64_t a2)
{
  if (theDict && a2)
  {
    *(a2 + 320) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 348) = 0u;
    sub_14BE4C(theDict, @"ShortTermRefPicSetSPSFlag", a2);
    if (*a2 == 1)
    {

      return sub_14C90C(theDict, @"ShortTermRefPicSetIdx", (a2 + 4));
    }

    else
    {
      Value = CFDictionaryGetValue(theDict, @"RPSData");
      if (Value)
      {

        return sub_156EA0(Value, (a2 + 8));
      }

      else
      {
        return 4294966288;
      }
    }
  }

  else
  {
    if (sub_160EF0(0xCCu, 4))
    {
      v5 = sub_160F34(0xCCu);
      v6 = sub_175AE4();
      v7 = sub_160F68(4);
      if (v5)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v6, 204, v7, "AVE_HEVC_Slice_ST_RPS_Retrieve", 492, "pDict != __null && pInfo != __null", theDict, a2);
        v6 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v6, 204);
    }

    return 4294966295;
  }
}

void sub_1579D0()
{
  v0 = 0;
  sub_167D08();
  operator new[]();
}

uint64_t sub_157CD0(int a1, int *a2, __CFDictionary *a3)
{
  v5 = sub_167CD8(a1);
  if (!v5)
  {
    return 4294966296;
  }

  if ((*(v5 + 6) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v7 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v8 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v9 = v8;
  if (Mutable)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v8 != 0)
  {
    v17 = kIOSurfacePlaneHTPCPredictionSelector;
    sub_14B9CC(kIOSurfacePlaneHTPCPredictionSelector, 1, v7);
    sub_14B9CC(v17, 1, v9);
    if (*a2 >= 1)
    {
      sub_14B9CC(kIOSurfacePlaneHorizontalPixelOffsetWithinCompressedTileArray, *a2, v7);
    }

    v18 = a2[2];
    if (v18 >= 1)
    {
      sub_14B9CC(kIOSurfacePlaneVerticalPixelOffsetWithinCompressedTileArray, v18, v7);
    }

    v19 = a2[4];
    if (v19 >= 1)
    {
      sub_14B9CC(kIOSurfacePlaneHorizontalPixelOffsetWithinCompressedTileArray, v19, v9);
    }

    v20 = a2[6];
    if (v20 >= 1)
    {
      sub_14B9CC(kIOSurfacePlaneVerticalPixelOffsetWithinCompressedTileArray, v20, v9);
    }

    CFArrayAppendValue(Mutable, v7);
    CFArrayAppendValue(Mutable, v9);
    CFDictionarySetValue(a3, kCVPixelFormatPlanes, Mutable);
    CFRelease(v7);
    CFRelease(v9);
    CFRelease(Mutable);
    return 0;
  }

  if (sub_160EF0(0x3Fu, 4))
  {
    v12 = sub_160F34(0x3Fu);
    v13 = sub_175AE4();
    v14 = sub_160F68(4);
    if (v12)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p\n", v13, 63, v14, "AVE_PixelBuf_AppendAttr_IOSurface", 211, "pArray != __null && pDict0 != __null && pDict1 != __null", Mutable, v7, v9);
      v15 = sub_175AE4();
      v21 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p", v15, 63, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p", v13, 63, v14);
    }
  }

  return 4294966293;
}

uint64_t sub_157F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10)
{
  sub_14FFD4(a1);
  if (CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks))
  {
    if (CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks))
    {
      sub_1579D0();
    }

    if (sub_160EF0(0x3Fu, 4))
    {
      v18 = sub_160F34(0x3Fu);
      v15 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d %d\n", v15, 63, v19, "AVE_PixelBuf_CreateAttrDictFromProfile", 304, "pTempArray != __null", a1, a2, a3, a4, a5, a10, 0);
        v20 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d %d", v20, 63, v24, "AVE_PixelBuf_CreateAttrDictFromProfile");
        return 4294966293;
      }

      v32 = a5;
      v33 = a10;
      v30 = a3;
      v31 = a4;
      v28 = a1;
      v29 = a2;
      v26 = 304;
      v27 = "pTempArray != __null";
      v25 = v19;
      v21 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d %d";
LABEL_12:
      syslog(3, v21, v15, 63, v25, "AVE_PixelBuf_CreateAttrDictFromProfile", v26, v27, v28, v29, v30, v31, v32, v33, 0);
    }
  }

  else if (sub_160EF0(0x3Fu, 4))
  {
    v14 = sub_160F34(0x3Fu);
    v15 = sub_175AE4();
    v16 = sub_160F68(4);
    if (!v14)
    {
      v32 = a5;
      v33 = a10;
      v30 = a3;
      v31 = a4;
      v28 = a1;
      v29 = a2;
      v26 = 298;
      v27 = "pDict != __null";
      v25 = v16;
      v21 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d %d";
      goto LABEL_12;
    }

    printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d %d\n", v15, 63, v16, "AVE_PixelBuf_CreateAttrDictFromProfile", 298, "pDict != __null", a1, a2, a3, a4, a5, a10, 0);
    v17 = sub_175AE4();
    v23 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d %d", v17, 63, v23, "AVE_PixelBuf_CreateAttrDictFromProfile");
  }

  return 4294966293;
}

uint64_t sub_158978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  sub_14FFD4(a1);
  if (CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks))
  {
    if (CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks))
    {
      sub_1576BC();
    }

    if (sub_160EF0(0x3Fu, 4))
    {
      v17 = sub_160F34(0x3Fu);
      v14 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d\n", v14, 63, v18, "AVE_PixelBuf_CreateAttrDict", 435, "pTempArray != __null", a1, a2, a3, a4, a9, 0);
        v19 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d", v19, 63, v23);
        return 4294966293;
      }

      v31 = a9;
      v29 = a3;
      v30 = a4;
      v27 = a1;
      v28 = a2;
      v25 = 435;
      v26 = "pTempArray != __null";
      v24 = v18;
      v20 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d";
LABEL_12:
      syslog(3, v20, v14, 63, v24, "AVE_PixelBuf_CreateAttrDict", v25, v26, v27, v28, v29, v30, v31, 0);
    }
  }

  else if (sub_160EF0(0x3Fu, 4))
  {
    v13 = sub_160F34(0x3Fu);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (!v13)
    {
      v31 = a9;
      v29 = a3;
      v30 = a4;
      v27 = a1;
      v28 = a2;
      v25 = 429;
      v26 = "pDict != __null";
      v24 = v15;
      v20 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d";
      goto LABEL_12;
    }

    printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d\n", v14, 63, v15, "AVE_PixelBuf_CreateAttrDict", 429, "pDict != __null", a1, a2, a3, a4, a9, 0);
    v16 = sub_175AE4();
    v22 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d", v16, 63, v22);
  }

  return 4294966293;
}

uint64_t sub_159334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int a9, CVPixelBufferPoolRef *poolOut)
{
  pixelBufferAttributes = 0;
  v35 = 0u;
  v36 = 0u;
  v32 = a8;
  v33 = a7;
  sub_14E498(a1, a2, a4, &v33, &v32);
  v18 = sub_158978(a1, a2, a3, a4, a5, a6, v33, v32, a9);
  if (v18)
  {
    v19 = v18;
    if (sub_160EF0(0x3Fu, 4))
    {
      v20 = sub_160F34(0x3Fu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d\n", v21, 63, v22, "AVE_PixelBuf_CreatePool", 557, "ret == 0", a1, a2, a3, a4, a7, a8, a9, v19);
        v23 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d", v23, 63, v30, "AVE_PixelBuf_CreatePool");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d", v21, 63, v22, "AVE_PixelBuf_CreatePool");
      }
    }
  }

  else
  {
    v24 = pixelBufferAttributes;
    v19 = CVPixelBufferPoolCreate(0, 0, pixelBufferAttributes, poolOut);
    if (!v19)
    {
      goto LABEL_15;
    }

    if (!sub_160EF0(0x3Fu, 4))
    {
      v19 = 4294966296;
      goto LABEL_15;
    }

    v25 = sub_160F34(0x3Fu);
    v26 = sub_175AE4();
    v27 = sub_160F68(4);
    if (v25)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d\n", v26, 63, v27, "AVE_PixelBuf_CreatePool", 562, "res == kCVReturnSuccess", a1, a2, a3, a4, a7, a8, a9, v19, 0);
      v28 = sub_175AE4();
      v31 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d", v28, 63, v31, "AVE_PixelBuf_CreatePool", 562);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d", v26, 63, v27, "AVE_PixelBuf_CreatePool", 562);
    }

    v19 = 4294966296;
  }

  v24 = pixelBufferAttributes;
LABEL_15:
  if (v24)
  {
    CFRelease(v24);
  }

  return v19;
}

uint64_t sub_159678(uint64_t a1, CVPixelBufferPoolRef *a2, CVPixelBufferPoolRef *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = sub_14B9CC(kCVPixelBufferPoolMinimumBufferCountKey, a2, Mutable);
    if (v8)
    {
      v9 = v8;
      if (sub_160EF0(0x3Fu, 4))
      {
        v10 = sub_160F34(0x3Fu);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d\n", v11, 63, v12, "AVE_PixelBuf_CreateSurfacePool", 603, "ret == 0", a2, a1, a2, a3, v9);
          v13 = sub_175AE4();
          v76 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d", v13, 63, v76, "AVE_PixelBuf_CreateSurfacePool");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d", v11, 63, v12, "AVE_PixelBuf_CreateSurfacePool");
        }
      }

LABEL_39:
      v48 = v7;
LABEL_56:
      CFRelease(v48);
      return v9;
    }

    v18 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!v18)
    {
      if (sub_160EF0(0x3Fu, 4))
      {
        v28 = sub_160F34(0x3Fu);
        v29 = sub_175AE4();
        v30 = sub_160F68(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v29, 63, v30, "AVE_PixelBuf_CreateSurfacePool", 610, "pDictBufAttr != __null", a1, a2, a3, 0);
          v31 = sub_175AE4();
          v78 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v31, 63, v78);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v29, 63, v30);
        }
      }

      v9 = 4294966293;
      goto LABEL_39;
    }

    v19 = v18;
    v20 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v20)
    {
      v21 = v20;
      v22 = sub_14B9CC(kIOSurfaceAllocSize, a1, v20);
      if (v22)
      {
        v9 = v22;
        if (sub_160EF0(0x3Fu, 4))
        {
          v23 = sub_160F34(0x3Fu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d\n", v24, 63, v25, "AVE_PixelBuf_CreateSurfacePool", 620, "ret == 0", a1, a1, a2, a3, v9);
            v26 = sub_175AE4();
            v27 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d", v26, 63, v27, "AVE_PixelBuf_CreateSurfacePool");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d", v24, 63, v25, "AVE_PixelBuf_CreateSurfacePool");
          }
        }

        CFRelease(v21);
        goto LABEL_55;
      }

      CFDictionaryAddValue(v19, kCVPixelBufferIOSurfacePropertiesKey, v21);
      CFRelease(v21);
      v38 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      if (v38)
      {
        v39 = v38;
        v40 = 0;
        do
        {
          v41 = sub_149FFC(dword_192B60[v40], v39);
          if (v41)
          {
            v42 = 1;
          }

          else
          {
            v42 = v40 == 5;
          }

          ++v40;
        }

        while (!v42);
        v43 = v41;
        if (v41)
        {
          if (sub_160EF0(0x3Fu, 4))
          {
            v44 = sub_160F34(0x3Fu);
            v45 = sub_175AE4();
            v46 = sub_160F68(4);
            if (v44)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d\n", v45, 63, v46, "AVE_PixelBuf_CreateSurfacePool", 632, "ret == 0", a1, a2, a3, v43);
              v47 = sub_175AE4();
              v80 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d", v47, 63, v80);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d", v45, 63, v46);
            }
          }

          CFRelease(v39);
          goto LABEL_54;
        }

        CFDictionaryAddValue(v19, kCVPixelBufferCacheModeKey, v39);
        CFRelease(v39);
        v53 = sub_14B618(kCVPixelBufferIOSurfaceWiringAssertionKey, kCFBooleanTrue != 0, v19);
        if (v53)
        {
          v54 = v53;
          if (!sub_160EF0(0x3Fu, 4))
          {
            goto LABEL_54;
          }

          v55 = sub_160F34(0x3Fu);
          v56 = sub_175AE4();
          v57 = sub_160F68(4);
          if (!v55)
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d", v56, 63, v57, "AVE_PixelBuf_CreateSurfacePool");
            goto LABEL_54;
          }

          v58 = a1;
          printf("%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d\n", v56, 63, v57, "AVE_PixelBuf_CreateSurfacePool", 642, "ret == 0", 1, a1, a2, a3, v54);
          v36 = sub_175AE4();
          v103 = a3;
          v106 = v54;
          v95 = v58;
          v99 = a2;
          v91 = 1;
          v85 = 642;
          v89 = "ret == 0";
          v79 = sub_160F68(4);
          v37 = "%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d";
          goto LABEL_25;
        }

        v60 = sub_14B9CC(kCVPixelBufferWidthKey, 2, v19);
        v9 = sub_14B9CC(kCVPixelBufferHeightKey, 2, v19) + v60;
        if (v9)
        {
          if (!sub_160EF0(0x3Fu, 4))
          {
            goto LABEL_55;
          }

          v61 = sub_160F34(0x3Fu);
          v62 = sub_175AE4();
          v63 = sub_160F68(4);
          if (v61)
          {
            v64 = a1;
            printf("%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d\n", v62, 63, v63, "AVE_PixelBuf_CreateSurfacePool", 649, "ret == 0", 2, 2, a1, a2, a3, v9);
            v65 = sub_175AE4();
            v107 = a3;
            v109 = v9;
            v101 = v64;
            v104 = a2;
            v93 = 2;
            v97 = 2;
            v87 = 649;
            v82 = sub_160F68(4);
            v66 = "%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d";
LABEL_68:
            syslog(3, v66, v65, 63, v82, "AVE_PixelBuf_CreateSurfacePool", v87, "ret == 0", v93, v97, v101, v104, v107, v109);
            goto LABEL_55;
          }

          v108 = a3;
          v109 = v9;
          v102 = a1;
          v105 = a2;
          v94 = 2;
          v98 = 2;
          v88 = 649;
          v83 = v63;
          v71 = "%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d";
        }

        else
        {
          v67 = sub_14B9CC(kCVPixelBufferPixelFormatTypeKey, 875704422, v19);
          if (!v67)
          {
            v9 = CVPixelBufferPoolCreate(0, v7, v19, a3);
            if (v9)
            {
              if (sub_160EF0(0x3Fu, 4))
              {
                v72 = sub_160F34(0x3Fu);
                v73 = sub_175AE4();
                v74 = sub_160F68(4);
                if (v72)
                {
                  printf("%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d\n", v73, 63, v74, "AVE_PixelBuf_CreateSurfacePool", 658, "ret == kCVReturnSuccess", a1, a2, a3, v9);
                  v75 = sub_175AE4();
                  v84 = sub_160F68(4);
                  syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d", v75, 63, v84);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d", v73, 63, v74);
                }
              }

              v9 = 4294966296;
            }

            goto LABEL_55;
          }

          v9 = v67;
          if (!sub_160EF0(0x3Fu, 4))
          {
LABEL_55:
            CFRelease(v7);
            v48 = v19;
            goto LABEL_56;
          }

          v68 = sub_160F34(0x3Fu);
          v62 = sub_175AE4();
          v69 = sub_160F68(4);
          if (v68)
          {
            v70 = a1;
            printf("%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d\n", v62, 63, v69, "AVE_PixelBuf_CreateSurfacePool", 653, "ret == 0", 875704422, a1, a2, a3, v9);
            v65 = sub_175AE4();
            v104 = a3;
            v107 = v9;
            v97 = v70;
            v101 = a2;
            v93 = 875704422;
            v87 = 653;
            v82 = sub_160F68(4);
            v66 = "%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d";
            goto LABEL_68;
          }

          v105 = a3;
          v108 = v9;
          v98 = a1;
          v102 = a2;
          v94 = 875704422;
          v88 = 653;
          v83 = v69;
          v71 = "%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d";
        }

        syslog(3, v71, v62, 63, v83, "AVE_PixelBuf_CreateSurfacePool", v88, "ret == 0", v94, v98, v102, v105, v108, v109);
        goto LABEL_55;
      }

      if (!sub_160EF0(0x3Fu, 4))
      {
        goto LABEL_54;
      }

      v50 = sub_160F34(0x3Fu);
      v33 = sub_175AE4();
      v51 = sub_160F68(4);
      if (v50)
      {
        v52 = a1;
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d\n", v33, 63, v51, "AVE_PixelBuf_CreateSurfacePool", 629, "pTempArray != __null", a1, a2, a3, 0);
        v36 = sub_175AE4();
        v99 = a3;
        v103 = 0;
        v91 = v52;
        v95 = a2;
        v85 = 629;
        v89 = "pTempArray != __null";
        v79 = sub_160F68(4);
        v37 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d";
        goto LABEL_25;
      }

      v100 = a3;
      v92 = a1;
      v96 = a2;
      v86 = 629;
      v90 = "pTempArray != __null";
      v81 = v51;
      v49 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d";
    }

    else
    {
      if (!sub_160EF0(0x3Fu, 4))
      {
LABEL_54:
        v9 = 4294966293;
        goto LABEL_55;
      }

      v32 = sub_160F34(0x3Fu);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      if (v32)
      {
        v35 = a1;
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v33, 63, v34, "AVE_PixelBuf_CreateSurfacePool", 615, "pTempDict != __null", a1, a2, a3, 0);
        v36 = sub_175AE4();
        v99 = a3;
        v103 = 0;
        v91 = v35;
        v95 = a2;
        v85 = 615;
        v89 = "pTempDict != __null";
        v79 = sub_160F68(4);
        v37 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d";
LABEL_25:
        syslog(3, v37, v36, 63, v79, "AVE_PixelBuf_CreateSurfacePool", v85, v89, v91, v95, v99, v103, v106);
        goto LABEL_54;
      }

      v100 = a3;
      v92 = a1;
      v96 = a2;
      v86 = 615;
      v90 = "pTempDict != __null";
      v81 = v34;
      v49 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d";
    }

    syslog(3, v49, v33, 63, v81, "AVE_PixelBuf_CreateSurfacePool", v86, v90, v92, v96, v100, 0);
    goto LABEL_54;
  }

  if (sub_160EF0(0x3Fu, 4))
  {
    v14 = sub_160F34(0x3Fu);
    v15 = sub_175AE4();
    v16 = sub_160F68(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v15, 63, v16, "AVE_PixelBuf_CreateSurfacePool", 598, "pDictPoolAttr != __null", a1, a2, a3, 0);
      v17 = sub_175AE4();
      v77 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v17, 63, v77);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v15, 63, v16);
    }
  }

  return 4294966293;
}

uint64_t sub_15A3B0(__CVBuffer *a1, __CVBuffer *a2)
{
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  if (PlaneCount >= 1)
  {
    v5 = 0;
    v6 = PlaneCount & 0x7FFFFFFF;
    do
    {
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, v5);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v5);
      v9 = CVPixelBufferGetBaseAddressOfPlane(a2, v5);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v5);
      v11 = CVPixelBufferGetBytesPerRowOfPlane(a2, v5);
      if (HeightOfPlane >= 1)
      {
        if (BytesPerRowOfPlane >= v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = BytesPerRowOfPlane;
        }

        v13 = v12;
        v14 = v11;
        do
        {
          memcpy(v9, BaseAddressOfPlane, v13);
          BaseAddressOfPlane += BytesPerRowOfPlane;
          v9 += v14;
          --HeightOfPlane;
        }

        while (HeightOfPlane);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return 0;
}

uint64_t sub_15A4D4(__CVBuffer *a1, _DWORD *a2, FILE *a3)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
  v24 = a2[1];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  v7 = extraColumnsOnRight;
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v9 = extraRowsOnBottom + HeightOfPlane;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  if (a2[3])
  {
    v11 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    v21 = WidthOfPlane;
    v12 = v7;
    v13 = (extraColumnsOnRight >> (a2[4] >> 1)) + v11;
    v14 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    v15 = (extraRowsOnBottom >> (a2[5] >> 1)) + v14;
    LODWORD(v17) = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    v16 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
    v22 = 2 * v13;
    v7 = v12;
    WidthOfPlane = v21;
    v17 = v17;
  }

  else
  {
    v22 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
  }

  if (v9 >= 1)
  {
    v18 = (v7 + WidthOfPlane) << (v24 == 10);
    do
    {
      fwrite(BaseAddressOfPlane, 1uLL, v18, a3);
      BaseAddressOfPlane += BytesPerRowOfPlane;
      --v9;
    }

    while (v9);
  }

  if (a2[3])
  {
    v19 = v15 < 1;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    do
    {
      fwrite(v16, 1uLL, v22 << (v24 == 10), a3);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 0;
}

uint64_t sub_15A6D0(__CVBuffer *a1, _DWORD *a2, const void *a3)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
  v6 = a2[1];
  v8 = v6 + 7;
  v7 = v6 < -7;
  v9 = v6 + 14;
  if (!v7)
  {
    v9 = v8;
  }

  v10 = v9 >> 3;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  v12 = extraColumnsOnRight + WidthOfPlane;
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v14 = extraRowsOnBottom + HeightOfPlane;
  CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  if (a2[3])
  {
    v15 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    v16 = (extraColumnsOnRight >> (a2[4] >> 1)) + v15;
    v17 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    v18 = (extraRowsOnBottom >> (a2[5] >> 1)) + v17;
    CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  if (v12 * v10 * v14 + 2 * v10 * v16 * v18)
  {
    operator new[]();
  }

  if (sub_160EF0(0x3Fu, 4))
  {
    v19 = sub_160F34(0x3Fu);
    v20 = sub_175AE4();
    v21 = sub_160F68(4);
    if (v19)
    {
      printf("%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p\n", v20, 63, v21, "AVE_PixelBuf_DumpPacked", 862, "frameSize != 0", a1, a2, a3);
      v22 = sub_175AE4();
      v24 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p", v22, 63, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p", v20, 63, v21);
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 4294966295;
}

void sub_15A9C4(__CVBuffer *a1, _DWORD *a2)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
  v4 = a2[1];
  v6 = v4 + 7;
  v5 = v4 < -7;
  v7 = v4 + 14;
  if (!v5)
  {
    v7 = v6;
  }

  v8 = v7 >> 3;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  IOSurfaceGetBytesPerRowOfCompressedTileHeaderGroupsOfPlane();
  IOSurfaceGetHTPCVerticalHeaderGroupingModeOfPlane();
  IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v11 = extraColumnsOnRight + WidthOfPlane;
  if (a2[3])
  {
    v12 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    v13 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    IOSurfaceGetBytesPerRowOfCompressedTileHeaderGroupsOfPlane();
    IOSurfaceGetHTPCVerticalHeaderGroupingModeOfPlane();
    IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
    IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
    v14 = extraColumnsOnRight >> (a2[4] >> 1);
    v11 = extraColumnsOnRight + WidthOfPlane;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = extraColumnsOnRight >> (a2[4] >> 1);
  }

  v15 = ((extraRowsOnBottom + HeightOfPlane) * v11 + 2 * (v14 + v12) * ((extraRowsOnBottom >> (a2[5] >> 1)) + v13)) * v8;
  operator new[]();
}

void sub_15AC7C(__CVBuffer *a1, _DWORD *a2)
{
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraColumnsOnRight[0] = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  v4 = a2[1] + 7;
  v8 = a2[8];
  CVPixelBufferGetWidthOfPlane(a1, 0);
  CVPixelBufferGetHeightOfPlane(a1, 0);
  IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  IOSurfaceGetHorizontalPixelOffsetWithinCompressedTileArrayOfPlane();
  IOSurfaceGetVerticalPixelOffsetWithinCompressedTileArrayOfPlane();
  if (a2[3])
  {
    CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
    IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
    IOSurfaceGetHorizontalPixelOffsetWithinCompressedTileArrayOfPlane();
    VerticalPixelOffsetWithinCompressedTileArrayOfPlane = IOSurfaceGetVerticalPixelOffsetWithinCompressedTileArrayOfPlane();
    v6 = a2[4] >> 1;
    v7 = VerticalPixelOffsetWithinCompressedTileArrayOfPlane | ((extraRowsOnBottom >> (a2[5] >> 1)) << 32);
  }

  operator new[]();
}

uint64_t sub_15AF8C(CVPixelBufferRef pixelBuffer, int a2, FILE *a3)
{
  if (pixelBuffer && a3)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v7 = sub_167CD8(PixelFormatType);
    if (v7)
    {
      v8 = v7;
      v9 = *(v7 + 6);
      result = 4294966295;
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          sub_15A9C4(pixelBuffer, v8);
        }

        if (v9 == 3)
        {
          sub_15AC7C(pixelBuffer, v8);
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {

          return sub_15A6D0(pixelBuffer, v8, a3);
        }
      }

      else
      {
        sub_15A4D4(pixelBuffer, v8, a3);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x3Fu, 4))
      {
        v15 = sub_160F34(0x3Fu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x\n", v16, 63, v17, "AVE_PixelBuf_Dump", 1120, "pPixelFmt != __null", pixelBuffer, a2, a3, PixelFormatType);
          v18 = sub_175AE4();
          v20 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x", v18, 63, v20, "AVE_PixelBuf_Dump");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x", v16, 63, v17, "AVE_PixelBuf_Dump");
        }
      }

      return 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0x3Fu, 4))
    {
      v11 = sub_160F34(0x3Fu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v12, 63, v13, "AVE_PixelBuf_Dump", 1112, "pPixelBuf != __null && pFile != __null", pixelBuffer, a2, a3);
        v14 = sub_175AE4();
        v19 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v14, 63, v19);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v12, 63, v13);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_15B248(__CVBuffer *a1, __CVBuffer *a2)
{
  pixelTransferSessionOut = 0;
  if (a1)
  {
    if (a2)
    {
      v4 = VTPixelTransferSessionCreate(kCFAllocatorDefault, &pixelTransferSessionOut);
      if (v4)
      {
        v5 = v4;
        if (sub_160EF0(0x3Fu, 4))
        {
          v6 = sub_160F34(0x3Fu);
          v7 = sub_175AE4();
          v8 = sub_160F68(4);
          if (v6)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to create image transfer session, ret = %d\n", v7, 63, v8, "AVE_PixelBuf_Transfer", 2010, "ret == noErr", v5);
            v7 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create image transfer session, ret = %d", v7);
        }
      }

      else
      {
        v5 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, a1, a2);
        if (v5 && sub_160EF0(0x3Fu, 4))
        {
          v15 = sub_160F34(0x3Fu);
          v16 = sub_175AE4();
          v17 = sub_160F68(4);
          if (v15)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to transfer image, ret = %d\n", v16, 63, v17, "AVE_PixelBuf_Transfer", 2014, "ret == noErr", v5);
            v16 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to transfer image, ret = %d", v16);
        }
      }

      goto LABEL_25;
    }

    if (sub_160EF0(0x3Fu, 4))
    {
      v12 = sub_160F34(0x3Fu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | pDst is NULL\n", v13, 63, v14, "AVE_PixelBuf_Transfer", 2006, "pDst != __null");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | pDst is NULL");
    }
  }

  else
  {
    if (!sub_160EF0(0x3Fu, 4))
    {
      return 4294966295;
    }

    v9 = sub_160F34(0x3Fu);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | pSrc is NULL\n", v10, 63, v11, "AVE_PixelBuf_Transfer", 2004, "pSrc != __null");
      sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | pSrc is NULL");
  }

  v5 = 4294966295;
LABEL_25:
  if (pixelTransferSessionOut)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
  }

  return v5;
}

uint64_t sub_15B5F0(int *a1, int a2, __CFArray *a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = a2;
  while (1)
  {
    v6 = *a1++;
    result = sub_149FFC(v6, a3);
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

uint64_t sub_15B650()
{
  if (sub_160EF0(0x23u, 6))
  {
    v0 = sub_160F34(0x23u);
    v1 = sub_175AE4();
    v2 = sub_160F68(6);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", v1, 35, v2, "AVE_UC_Verify");
      v3 = sub_175AE4();
      v18 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 35, v18, "AVE_UC_Verify");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", v1, 35, v2, "AVE_UC_Verify");
    }
  }

  v4 = IOServiceMatching("AppleAVE2Driver");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    v6 = 0;
    v7 = 6;
  }

  else
  {
    v7 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v8 = sub_160F34(0x23u);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | can not find matched driver\n", v9, 35, v10, "AVE_UC_Verify", 26, "pService != 0");
        v11 = sub_175AE4();
        v7 = 4;
        v12 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver", v11, 35, v12, "AVE_UC_Verify", 26, "pService != 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver", v9, 35, v10, "AVE_UC_Verify", 26, "pService != 0");
        v7 = 4;
      }
    }

    v6 = 4294966291;
  }

  if (sub_160EF0(0x23u, v7))
  {
    v13 = sub_160F34(0x23u);
    v14 = sub_175AE4();
    v15 = sub_160F68(v7);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v14, 35, v15, "AVE_UC_Verify", v6);
      v16 = sub_175AE4();
      v19 = sub_160F68(v7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v16, 35, v19, "AVE_UC_Verify", v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v14, 35, v15, "AVE_UC_Verify", v6);
    }
  }

  return v6;
}

uint64_t sub_15B8C4(uint32_t a1, void *a2)
{
  connect = 0;
  if (sub_160EF0(0x23u, 6))
  {
    v4 = sub_160F34(0x23u);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %d %p\n", v5, 35, v6, "AVE_UC_Create", a1, a2);
      v7 = sub_175AE4();
      v34 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", v7, 35, v34, "AVE_UC_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", v5, 35, v6, "AVE_UC_Create", a1, a2);
    }
  }

  if (a2)
  {
    v8 = IOServiceMatching("AppleAVE2Driver");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      kdebug_trace();
      v11 = IOServiceOpen(v10, mach_task_self_, a1, &connect);
      v12 = sub_175B74(v11);
      kdebug_trace();
      if (v12)
      {
        if (sub_160EF0(0x23u, 4))
        {
          v13 = sub_160F34(0x23u);
          v14 = sub_175AE4();
          v15 = sub_160F68(4);
          if (v13)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d\n", v14, 35, v15, "AVE_UC_Create", 77, "ret == 0", a1, a2, v11, v12);
            v16 = sub_175AE4();
            v35 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d", v16, 35, v35);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d", v14, 35, v15);
          }
        }
      }

      else
      {
        *a2 = connect;
      }

      IOObjectRelease(v10);
      if (v12)
      {
        v28 = connect == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        if (v12)
        {
          v17 = 4;
        }

        else
        {
          v17 = 6;
        }
      }

      else
      {
        IOServiceClose(connect);
        connect = 0;
        v17 = 4;
      }
    }

    else
    {
      v17 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v23 = sub_160F34(0x23u);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p\n", v24, 35, v25, "AVE_UC_Create", 67, "pService != 0", a1, a2);
          v26 = sub_175AE4();
          v17 = 4;
          v27 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p", v26, 35, v27, "AVE_UC_Create", 67, "pService != 0", a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p", v24, 35, v25, "AVE_UC_Create", 67, "pService != 0", a1, a2);
          v17 = 4;
        }
      }

      v12 = 4294966291;
    }
  }

  else
  {
    v17 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v18 = sub_160F34(0x23u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v19, 35, v20, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
        v21 = sub_175AE4();
        v17 = 4;
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v21, 35, v22, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v19, 35, v20, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
        v17 = 4;
      }
    }

    v12 = 4294966295;
  }

  if (sub_160EF0(0x23u, v17))
  {
    v29 = sub_160F34(0x23u);
    v30 = sub_175AE4();
    v31 = sub_160F68(v17);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d\n", v30, 35, v31, "AVE_UC_Create", a1, a2, v12);
      v32 = sub_175AE4();
      sub_160F68(v17);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v30);
    }
  }

  return v12;
}

uint64_t sub_15BE1C(const void *a1)
{
  if (sub_160EF0(0x23u, 6))
  {
    v2 = sub_160F34(0x23u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 35, v4, "AVE_UC_Destroy", a1);
      v5 = sub_175AE4();
      v22 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 35, v22, "AVE_UC_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 35, v4, "AVE_UC_Destroy", a1);
    }
  }

  if (a1)
  {
    kdebug_trace();
    v6 = IOServiceClose(a1);
    v7 = sub_175B74(v6);
    if (v7)
    {
      v8 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v9 = sub_160F34(0x23u);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d\n", v10, 35, v11, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
          v12 = sub_175AE4();
          v8 = 4;
          v13 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d", v12, 35, v13, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d", v10, 35, v11, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
          v8 = 4;
        }
      }
    }

    else
    {
      kdebug_trace();
      a1 = 0;
      v8 = 6;
    }
  }

  else
  {
    v8 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v14 = sub_160F34(0x23u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 35, v16, "AVE_UC_Destroy", 121, "pUC != __null", 0);
        v15 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    a1 = 0;
    v7 = 4294966295;
  }

  if (sub_160EF0(0x23u, v8))
  {
    v17 = sub_160F34(0x23u);
    v18 = sub_175AE4();
    v19 = sub_160F68(v8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v18, 35, v19, "AVE_UC_Destroy", a1, v7);
      v20 = sub_175AE4();
      v23 = sub_160F68(v8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v20, 35, v23, "AVE_UC_Destroy", a1, v7);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v18, 35, v19, "AVE_UC_Destroy", a1, v7);
    }
  }

  return v7;
}

uint64_t sub_15C1CC(const void *a1, uint64_t *a2, uint64_t *a3)
{
  outputStructCnt = 40;
  if (sub_160EF0(0x23u, 6))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Open", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 1u, a2, 0x7A0uLL, a3, &outputStructCnt);
    v13 = sub_175B74(v12);
    v14 = *a3;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v17 = sub_160F34(0x23u);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x\n", v18, 35, v19, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v12);
          v20 = sub_175AE4();
          v16 = 4;
          v21 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x", v20, 35, v21, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v12);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x", v18, 35, v19, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v12);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x27)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v31 = sub_160F34(0x23u);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
          v34 = sub_175AE4();
          v16 = 4;
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 6;
    }
  }

  else
  {
    v16 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v22 = sub_160F34(0x23u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = sub_175AE4();
        v16 = 4;
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (sub_160EF0(0x23u, v16))
  {
    v27 = sub_160F34(0x23u);
    v28 = sub_175AE4();
    v29 = sub_160F68(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Open", a1, a2, a3, v13);
      v28 = sub_175AE4();
      sub_160F68(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t sub_15C704(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_160EF0(0x23u, 6))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Close", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 2u, a2, 0x28uLL, a3, &outputStructCnt);
    v13 = sub_175B74(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v17 = sub_160F34(0x23u);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v12, v13);
          v20 = sub_175AE4();
          v16 = 4;
          v21 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v12, v13);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d", v18, 35, v19, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v12, v13);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v31 = sub_160F34(0x23u);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
          v34 = sub_175AE4();
          v16 = 4;
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 6;
    }
  }

  else
  {
    v16 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v22 = sub_160F34(0x23u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = sub_175AE4();
        v16 = 4;
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (sub_160EF0(0x23u, v16))
  {
    v27 = sub_160F34(0x23u);
    v28 = sub_175AE4();
    v29 = sub_160F68(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Close", a1, a2, a3, v13);
      v28 = sub_175AE4();
      sub_160F68(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t sub_15CC50(const void *a1, const void *a2, uint64_t *a3, void *a4)
{
  v43 = 0u;
  v44 = 0u;
  *reference = 0u;
  v42 = 0u;
  outputStructCnt = 32;
  if (sub_160EF0(0x23u, 6))
  {
    v8 = sub_160F34(0x23u);
    v9 = sub_175AE4();
    v10 = sub_160F68(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", v9, 35, v10, "AVE_UC_Config", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", v9, 35);
  }

  if (a1 && a2 && a3 && a4)
  {
    v11 = *a3;
    v12 = a3[1];
    v13 = a3[2];
    kdebug_trace();
    v14 = IOConnectCallAsyncMethod(a1, 3u, a2, reference, 8u, 0, 0, a3, 0x38uLL, 0, 0, a4, &outputStructCnt);
    v15 = sub_175B74(v14);
    v16 = *a3;
    v17 = a3[1];
    kdebug_trace();
    if (v15)
    {
      v18 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v19 = sub_160F34(0x23u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d\n", v20, 35, v21, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v14, v15);
          v22 = sub_175AE4();
          v18 = 4;
          v23 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d", v22, 35, v23, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v14, v15);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v14, v15);
          v18 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v18 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v34 = sub_160F34(0x23u);
        v35 = sub_175AE4();
        v36 = sub_160F68(4);
        if (v34)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v35, 35, v36, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
          v37 = sub_175AE4();
          v18 = 4;
          v38 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v37, 35, v38, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v35, 35, v36, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
          v18 = 4;
        }
      }

      v15 = 4294966281;
    }

    else
    {
      v15 = 0;
      v18 = 6;
    }
  }

  else
  {
    v18 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v24 = sub_160F34(0x23u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v25, 35, v26, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
        v27 = sub_175AE4();
        v18 = 4;
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v27, 35, v28, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v25, 35, v26, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
        v18 = 4;
      }
    }

    v15 = 4294966295;
  }

  if (sub_160EF0(0x23u, v18))
  {
    v29 = sub_160F34(0x23u);
    v30 = sub_175AE4();
    v31 = sub_160F68(v18);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v30, 35, v31, "AVE_UC_Config", a1, a2, a3, a4, v15);
      v32 = sub_175AE4();
      outputCnt = sub_160F68(v18);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v32, 35, outputCnt);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v30, 35, v31);
    }
  }

  return v15;
}

uint64_t sub_15D208(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_160EF0(0x23u, 6))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Prepare", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 4u, a2, 0x1A0A0uLL, a3, &outputStructCnt);
    v13 = sub_175B74(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v17 = sub_160F34(0x23u);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to prepare %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Prepare", 327, "ret == 0", a1, a2, a3, v12, v13);
          v20 = sub_175AE4();
          v16 = 4;
          v21 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Prepare", 327, "ret == 0", a1, a2, a3, v12, v13);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %p %p 0x%x %d", v18, 35, v19, "AVE_UC_Prepare", 327, "ret == 0", a1, a2, a3, v12, v13);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v31 = sub_160F34(0x23u);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Prepare", 331, "outSize >= sizeof(S_AVE_UCOutParam_Prepare)", a1, a2, a3, outputStructCnt, 32);
          v34 = sub_175AE4();
          v16 = 4;
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Prepare", 331, "outSize >= sizeof(S_AVE_UCOutParam_Prepare)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Prepare", 331, "outSize >= sizeof(S_AVE_UCOutParam_Prepare)", a1, a2, a3, outputStructCnt, 32);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 6;
    }
  }

  else
  {
    v16 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v22 = sub_160F34(0x23u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Prepare", 314, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = sub_175AE4();
        v16 = 4;
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Prepare", 314, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Prepare", 314, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (sub_160EF0(0x23u, v16))
  {
    v27 = sub_160F34(0x23u);
    v28 = sub_175AE4();
    v29 = sub_160F68(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Prepare", a1, a2, a3, v13);
      v28 = sub_175AE4();
      sub_160F68(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t sub_15D758(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 336;
  if (sub_160EF0(0x23u, 6))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Start", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 5u, a2, 0x1A0B0uLL, a3, &outputStructCnt);
    v13 = sub_175B74(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v17 = sub_160F34(0x23u);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v12, v13);
          v20 = sub_175AE4();
          v16 = 4;
          v21 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v12, v13);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d", v18, 35, v19, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v12, v13);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x14F)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v31 = sub_160F34(0x23u);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
          v34 = sub_175AE4();
          v16 = 4;
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 6;
    }
  }

  else
  {
    v16 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v22 = sub_160F34(0x23u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = sub_175AE4();
        v16 = 4;
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (sub_160EF0(0x23u, v16))
  {
    v27 = sub_160F34(0x23u);
    v28 = sub_175AE4();
    v29 = sub_160F68(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Start", a1, a2, a3, v13);
      v28 = sub_175AE4();
      sub_160F68(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t sub_15DCA8(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_160EF0(0x23u, 6))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Stop", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 6u, a2, 0x30uLL, a3, &outputStructCnt);
    v13 = sub_175B74(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v17 = sub_160F34(0x23u);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v12, v13);
          v20 = sub_175AE4();
          v16 = 4;
          v21 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v12, v13);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d", v18, 35, v19, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v12, v13);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v31 = sub_160F34(0x23u);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
          v34 = sub_175AE4();
          v16 = 4;
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 6;
    }
  }

  else
  {
    v16 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v22 = sub_160F34(0x23u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = sub_175AE4();
        v16 = 4;
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (sub_160EF0(0x23u, v16))
  {
    v27 = sub_160F34(0x23u);
    v28 = sub_175AE4();
    v29 = sub_160F68(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Stop", a1, a2, a3, v13);
      v28 = sub_175AE4();
      sub_160F68(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t sub_15E1F4(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_160EF0(0x23u, 8))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Process", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 7u, a2, 0x30uLL, a3, &outputStructCnt);
    v13 = sub_175B74(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v17 = sub_160F34(0x23u);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v12, v13);
          v20 = sub_175AE4();
          v16 = 4;
          v21 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v12, v13);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d", v18, 35, v19, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v12, v13);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v31 = sub_160F34(0x23u);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
          v34 = sub_175AE4();
          v16 = 4;
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 8;
    }
  }

  else
  {
    v16 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v22 = sub_160F34(0x23u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = sub_175AE4();
        v16 = 4;
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (sub_160EF0(0x23u, v16))
  {
    v27 = sub_160F34(0x23u);
    v28 = sub_175AE4();
    v29 = sub_160F68(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Process", a1, a2, a3, v13);
      v28 = sub_175AE4();
      sub_160F68(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t sub_15E740(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_160EF0(0x23u, 7))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Complete", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 8u, a2, 0x30uLL, a3, &outputStructCnt);
    v13 = sub_175B74(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v17 = sub_160F34(0x23u);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v12, v13);
          v20 = sub_175AE4();
          v16 = 4;
          v21 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v12, v13);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d", v18, 35, v19, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v12, v13);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v31 = sub_160F34(0x23u);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
          v34 = sub_175AE4();
          v16 = 4;
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 7;
    }
  }

  else
  {
    v16 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v22 = sub_160F34(0x23u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = sub_175AE4();
        v16 = 4;
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (sub_160EF0(0x23u, v16))
  {
    v27 = sub_160F34(0x23u);
    v28 = sub_175AE4();
    v29 = sub_160F68(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Complete", a1, a2, a3, v13);
      v28 = sub_175AE4();
      sub_160F68(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t sub_15EC8C(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_160EF0(0x23u, 6))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Reset", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 0xAu, a2, 0x30uLL, a3, &outputStructCnt);
    v13 = sub_175B74(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v17 = sub_160F34(0x23u);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to reset %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Reset", 615, "ret == 0", a1, a2, a3, v12, v13);
          v20 = sub_175AE4();
          v16 = 4;
          v21 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to reset %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Reset", 615, "ret == 0", a1, a2, a3, v12, v13);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to reset %p %p %p 0x%x %d", v18, 35, v19, "AVE_UC_Reset", 615, "ret == 0", a1, a2, a3, v12, v13);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v16 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v31 = sub_160F34(0x23u);
        v32 = sub_175AE4();
        v33 = sub_160F68(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Reset", 619, "outSize >= sizeof(S_AVE_UCOutParam_Reset)", a1, a2, a3, outputStructCnt, 32);
          v34 = sub_175AE4();
          v16 = 4;
          v35 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Reset", 619, "outSize >= sizeof(S_AVE_UCOutParam_Reset)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Reset", 619, "outSize >= sizeof(S_AVE_UCOutParam_Reset)", a1, a2, a3, outputStructCnt, 32);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 6;
    }
  }

  else
  {
    v16 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v22 = sub_160F34(0x23u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Reset", 602, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = sub_175AE4();
        v16 = 4;
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Reset", 602, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Reset", 602, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (sub_160EF0(0x23u, v16))
  {
    v27 = sub_160F34(0x23u);
    v28 = sub_175AE4();
    v29 = sub_160F68(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Reset", a1, a2, a3, v13);
      v28 = sub_175AE4();
      sub_160F68(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t sub_15F1D8(CFDictionaryRef theDict, uint64_t a2)
{
  v20 = 0;
  memset(v21, 0, sizeof(v21));
  if (theDict && a2)
  {
    *(a2 + 80) = 0;
    *a2 = 0uLL;
    *(a2 + 64) = 0uLL;
    *(a2 + 48) = 0uLL;
    *(a2 + 32) = 0uLL;
    *(a2 + 16) = 0uLL;
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_SNR, a2);
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_NormalizedSNR, (a2 + 8));
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_ExposureTime, (a2 + 16));
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_AGC, (a2 + 24));
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_ispDGain, (a2 + 32));
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_sensorDGain, (a2 + 40));
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_ispDGainRangeExpansionFactor, (a2 + 48));
    sub_14C90C(theDict, kFigCaptureStreamMetadata_SensorID, (a2 + 64));
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_ScalingFactor, (a2 + 56));
    sub_14C90C(theDict, kFigCaptureStreamMetadata_LuxLevel, (a2 + 68));
    if (sub_14C90C(theDict, kFigCaptureStreamMetadata_TemporalNoiseReductionBand0Strength, (a2 + 72)) == -1008)
    {
      *(a2 + 72) = -1;
    }

    v4 = sub_14BE4C(theDict, kFigCaptureStreamMetadata_TemporalNoiseReductionBand0StrengthModulationEnabled, &v20);
    v5 = v20;
    if (v4 == -1008)
    {
      v5 = -1;
    }

    *(a2 + 76) = v5;
    Value = CFDictionaryGetValue(theDict, kFigCaptureStreamMetadata_PortType);
    if (Value)
    {
      v7 = sub_14CE6C(Value, v21, 32);
      if (v7)
      {
        v8 = v7;
        v9 = &dword_203C60;
        v10 = 5;
        while (strcmp(v8, *(v9 - 1)))
        {
          v9 += 4;
          if (!--v10)
          {
            v11 = 0;
            goto LABEL_21;
          }
        }

        v11 = *v9;
LABEL_21:
        *(a2 + 80) = v11;
        if (sub_160EF0(0x37u, 6))
        {
          v16 = sub_160F34(0x37u);
          v17 = sub_175AE4();
          v18 = sub_160F68(6);
          if (v16)
          {
            printf("%lld %d AVE %s: %s:%d SF: %f Port: %s %d\n", v17, 55, v18, "AVE_ISP_RetrieveMetadata", 120, *(a2 + 56), v8, v11);
            v17 = sub_175AE4();
            sub_160F68(6);
            v19 = *(a2 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d SF: %f Port: %s %d", v17);
        }
      }
    }
  }

  else
  {
    if (sub_160EF0(0x37u, 4))
    {
      v12 = sub_160F34(0x37u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 55, v14, "AVE_ISP_RetrieveMetadata", 73, "pDict != __null && pData != __null", theDict, a2);
        v13 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 55);
    }

    return 4294966295;
  }

  return v4;
}

uint64_t sub_15F5D0(__CVBuffer *a1)
{
  if (a1)
  {
    v1 = sub_15F708(a1);
    v2 = 4294966288;
    if (v1)
    {
      v3 = v1;
      if (CFDictionaryContainsKey(v1, kFigCaptureStreamMetadata_SensorID))
      {
        v2 = 0;
      }

      else
      {
        v2 = 4294966288;
      }

      CFRelease(v3);
    }
  }

  else
  {
    if (sub_160EF0(0x37u, 4))
    {
      v4 = sub_160F34(0x37u);
      v5 = sub_175AE4();
      v6 = sub_160F68(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v5, 55, v6, "AVE_ISP_CheckMetadata", 206, "pImgBuf != __null", 0);
        v5 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v5);
    }

    return 4294966295;
  }

  return v2;
}

const void *sub_15F708(__CVBuffer *a1)
{
  v1 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Value = CFDictionaryGetValue(v1, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary);
  v4 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v2);
  return v4;
}

uint64_t sub_15F768(__CVBuffer *a1, const void *a2)
{
  if (a1 && a2)
  {
    v4 = sub_15F708(a1);
    if (v4)
    {
      v5 = v4;
      v6 = sub_15F1D8(v4, a2);
      CFRelease(v5);
      return v6;
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0x37u, 4))
    {
      v8 = sub_160F34(0x37u);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v9, 55, v10, "AVE_ISP_GetMetadata", 240, "pImgBuf != __null && pData != __null", a1, a2);
        v9 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v9, 55);
    }

    return 4294966295;
  }
}

uint64_t sub_15F8B8(int a1, unsigned int a2, unsigned int *a3)
{
  if (sub_160EF0(0x7Bu, 8))
  {
    v6 = sub_160F34(0x7Bu);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %p\n", v7, 123, v8, "AVE_Crypto_AddInfo", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %p", v7);
  }

  if (((a2 | a1) & 0x80000000) != 0 || !a3)
  {
    if (sub_160EF0(0x7Bu, 4))
    {
      v15 = sub_160F34(0x7Bu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %d %p\n", v16, 123, v17, "AVE_Crypto_AddInfo", 28, "(iOffset >= 0) && (iSize >= 0) && (psInfo != __null)", a1, a2, a3);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %d %p", v16, 123);
    }
  }

  else
  {
    v9 = *a3;
    if (v9 > 0x41)
    {
      if (sub_160EF0(0x7Bu, 4))
      {
        v18 = sub_160F34(0x7Bu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong crypto info %d %d %p %d\n", v19, 123, v20, "AVE_Crypto_AddInfo", 32, "(0 <= psInfo->iNum) && (psInfo->iNum < (((2) < ((63 + 1)) ? (2) : ((63 + 1))) * (((32) < (256) ? (32) : (256)) + 1)))", a1, a2, a3, *a3);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
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

      if (sub_160EF0(0x7Bu, 4))
      {
        v21 = sub_160F34(0x7Bu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        v24 = *a3;
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong crypto info %d %d %p %d %d\n", v22, 123, v23, "AVE_Crypto_AddInfo", 43, "(0 <= totalSize) && (totalSize <= iOffset)", a1, a2, a3, *a3, v10);
          v22 = sub_175AE4();
          v23 = sub_160F68(4);
        }

        v31 = *a3;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong crypto info %d %d %p %d %d", v22, 123, v23);
      }
    }
  }

  v13 = 4294966295;
LABEL_31:
  if (sub_160EF0(0x7Bu, 8))
  {
    v25 = sub_160F34(0x7Bu);
    v26 = sub_175AE4();
    v27 = sub_160F68(8);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %p %d\n", v26, 123, v27, "AVE_Crypto_AddInfo", a1, a2, a3, v13);
      v28 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v28, 123);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v26, 123);
    }
  }

  return v13;
}

uint64_t sub_15FD9C(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = 0u;
  v59 = 0u;
  if (!a1)
  {
    if (sub_160EF0(a2, 4))
    {
      v22 = sub_160F34(a2);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (!v22)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v23);
        return 4294966295;
      }

      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v23, a2, v24, "AVE_Crypto_PrintInfo", 72, "psInfo != __null", 0);
      v25 = sub_175AE4();
      v53 = "psInfo != __null";
      v54 = 0;
      v52 = 72;
      v50 = a2;
      v51 = sub_160F68(4);
      v26 = "%lld %d AVE %s: %s:%d %s | wrong parameter %p";
      goto LABEL_13;
    }

    return 4294966295;
  }

  v9 = a1;
  if (*a1 >= 0x43)
  {
    if (sub_160EF0(a2, 4))
    {
      v27 = sub_160F34(a2);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      if (!v27)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong Crypto info %p %d", v28, a2);
        return 4294966295;
      }

      printf("%lld %d AVE %s: %s:%d %s | wrong Crypto info %p %d\n", v28, a2, v29, "AVE_Crypto_PrintInfo", 74, "(0 <= psInfo->iNum) && (psInfo->iNum <= (((2) < ((63 + 1)) ? (2) : ((63 + 1))) * (((32) < (256) ? (32) : (256)) + 1)))", v9, *v9);
      v25 = sub_175AE4();
      v30 = sub_160F68(4);
      v54 = v9;
      v55 = *v9;
      v52 = 74;
      v53 = "(0 <= psInfo->iNum) && (psInfo->iNum <= (((2) < ((63 + 1)) ? (2) : ((63 + 1))) * (((32) < (256) ? (32) : (256)) + 1)))";
      v51 = v30;
      v26 = "%lld %d AVE %s: %s:%d %s | wrong Crypto info %p %d";
      v50 = a2;
LABEL_13:
      syslog(3, v26, v25, v50, v51, "AVE_Crypto_PrintInfo", v52, v53, v54, v55);
      return 4294966295;
    }

    return 4294966295;
  }

  v10 = a5;
  v11 = a4;
  sub_CB274(a4, a5, &v58, 32, a5, a6, a7, a8);
  v13 = a3;
  if (sub_160EF0(a2, a3))
  {
    v18 = sub_160F34(a2);
    if ((a3 & 0x80000000) != 0)
    {
      if (!v18 || (-a3 & 0x20) != 0)
      {
        syslog(3, "Crypto %s size %d", &v58, *v9);
      }

      else
      {
        printf("Crypto %s size %d\n", &v58, *v9);
        syslog(3, "Crypto %s size %d", &v58, *v9);
      }
    }

    else
    {
      v19 = v18 ^ 1;
      v20 = sub_175AE4();
      v21 = sub_160F68(a3);
      if (((v19 | ((a3 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: Crypto %s size %d\n", v20, a2, v21, &v58, *v9);
        v20 = sub_175AE4();
        v21 = sub_160F68(a3);
      }

      syslog(3, "%lld %d AVE %s: Crypto %s size %d", v20, a2, v21, &v58, *v9);
      v13 = a3;
    }
  }

  if (*v9 >= 1)
  {
    v32 = 0;
    v56 = -a3;
    v33 = (v9 + 2);
    v57 = v9;
    do
    {
      v58 = 0u;
      v59 = 0u;
      sub_CB274(v11, v10, &v58, 32, v14, v15, v16, v17);
      if (sub_160EF0(a2, v13))
      {
        v34 = sub_160F34(a2);
        if ((a3 & 0x80000000) != 0)
        {
          if ((v56 & 0x20) != 0)
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
            printf("Crypto %s | %d %d\n", &v58, *(v33 - 1), v49);
            syslog(3, "Crypto %s | %d %d", &v58, *(v33 - 1), *v33);
          }

          else
          {
            syslog(3, "Crypto %s | %d %d", &v58, *(v33 - 1), v49);
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
          v41 = sub_175AE4();
          v42 = sub_160F68(v38);
          v43 = *(v33 - 1);
          v44 = *v33;
          if ((v40 | (v39 >> 5)))
          {
            syslog(3, "%lld %d AVE %s: Crypto %s | %d %d", v41, a2, v42, &v58, *(v33 - 1), v44);
          }

          else
          {
            printf("%lld %d AVE %s: Crypto %s | %d %d\n", v41, a2, v42, &v58, *(v33 - 1), v44);
            v45 = sub_175AE4();
            v46 = sub_160F68(v38);
            syslog(3, "%lld %d AVE %s: Crypto %s | %d %d", v45, a2, v46, &v58, *(v33 - 1), *v33);
          }

          a3 = v37;
          v10 = v36;
          v11 = v35;
          v9 = v57;
          v13 = v38;
        }
      }

      ++v32;
      v33 += 2;
    }

    while (v32 < *v9);
  }

  return 0;
}

uint64_t sub_160270(const UInt8 *a1, __CFDictionary *a2)
{
  if (sub_160EF0(0x7Bu, 8))
  {
    v4 = sub_160F34(0x7Bu);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 123, v6, "AVE_Crypto_Make", a1, a2);
      v7 = sub_175AE4();
      v27 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 123, v27, "AVE_Crypto_Make", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 123, v6, "AVE_Crypto_Make", a1, a2);
    }
  }

  if (!a1 || !a2)
  {
    if (sub_160EF0(0x7Bu, 4))
    {
      v12 = sub_160F34(0x7Bu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 123, v14, "AVE_Crypto_Make", 151, "psInfo != __null && pDict != __null", a1, a2);
        v13 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 123);
    }

    goto LABEL_24;
  }

  v8 = *a1;
  if (v8 <= 0)
  {
    if (sub_160EF0(0x7Bu, 4))
    {
      v15 = sub_160F34(0x7Bu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong crypto info %p %d\n", v16, 123, v17, "AVE_Crypto_Make", 154, "psInfo->iNum > 0", a2, *a1);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      v28 = *a1;
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong crypto info %p %d", v16, 123);
    }

LABEL_24:
    v11 = 4294966295;
    goto LABEL_25;
  }

  v9 = CFDataCreate(kCFAllocatorDefault, a1 + 4, 8 * v8);
  if (v9)
  {
    v10 = v9;
    CFDictionarySetValue(a2, kCMSampleAttachmentKey_CryptorSubsampleAuxiliaryData, v9);
    CFRelease(v10);
    v11 = 0;
  }

  else
  {
    if (sub_160EF0(0x7Bu, 4))
    {
      v18 = sub_160F34(0x7Bu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFData %p %d %ld\n", v19, 123, v20, "AVE_Crypto_Make", 160, "pData != __null", a1 + 4, *a1, 8);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
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
  if (sub_160EF0(0x7Bu, 8))
  {
    v23 = sub_160F34(0x7Bu);
    v24 = sub_175AE4();
    v25 = sub_160F68(8);
    if (v23)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v24, 123, v25, "AVE_Crypto_Make", a1, a2, v11);
      v24 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v24);
  }

  return v11;
}

uint64_t sub_1606EC(const void *a1, const void *a2, int a3, const __CFDictionary *a4)
{
  v43[0] = 0;
  v43[1] = 0;
  if (sub_160EF0(0x7Bu, 8))
  {
    v8 = sub_160F34(0x7Bu);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %p\n", v9, 123, v10, "AVE_Crypto_MakeSINF", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %p", v9, 123);
  }

  if (a1 && a2 && a4)
  {
    if ((a3 - 1) >= 3)
    {
      if (sub_160EF0(0x7Bu, 4))
      {
        v22 = sub_160F34(0x7Bu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | encode type %d not recognized.\n", v23, 123, v24, "AVE_Crypto_MakeSINF", 219, "false", a3);
          v23 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | encode type %d not recognized.", v23);
      }

      v25 = 4294966281;
    }

    else
    {
      v11 = *&a1cva1cvh10va[4 * (a3 - 1)];
      VideoSecurityInfoExtension = VTEncoderSessionCreateVideoSecurityInfoExtension();
      if (VideoSecurityInfoExtension)
      {
        v13 = VideoSecurityInfoExtension;
        if (sub_160EF0(0x7Bu, 4))
        {
          v14 = sub_160F34(0x7Bu);
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create crypto SINF %p %d %p %p %p %d\n", v15, 123, v16, "AVE_Crypto_MakeSINF", 228, "res == noErr", a1, v11, v43, a2, 0, v13);
            v17 = sub_175AE4();
            v37 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create crypto SINF %p %d %p %p %p %d", v17, 123, v37, "AVE_Crypto_MakeSINF", 228, "res == noErr");
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

      Value = CFDictionaryGetValue(a4, kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms);
      if (Value)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Value);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      v28 = MutableCopy;
      if (!MutableCopy)
      {
        if (sub_160EF0(0x7Bu, 4))
        {
          v34 = sub_160F34(0x7Bu);
          v35 = sub_175AE4();
          v36 = sub_160F68(4);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create mutable sample extension atoms dictionary %p\n", v35, 123, v36, "AVE_Crypto_MakeSINF", 245, "pSampleExtAtomDict != __null", Value);
            v35 = sub_175AE4();
            v41 = Value;
            v40 = sub_160F68(4);
          }

          else
          {
            v41 = Value;
            v40 = v36;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create mutable sample extension atoms dictionary %p", v35, 123, v40, "AVE_Crypto_MakeSINF", 245, "pSampleExtAtomDict != __null", v41, v42);
        }

        goto LABEL_28;
      }

      CFDictionarySetValue(MutableCopy, @"sinf", 0);
      CFDictionarySetValue(a4, kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms, v28);
      CFRelease(v28);
      v25 = 0;
    }
  }

  else
  {
    if (sub_160EF0(0x7Bu, 4))
    {
      v18 = sub_160F34(0x7Bu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %p\n", v19, 123, v20, "AVE_Crypto_MakeSINF", 201, "(pSession != __null) && (piKeyID != __null) && (pDict != __null)", a1, a2, a3, a4);
        v21 = sub_175AE4();
        v38 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %p", v21, 123, v38, "AVE_Crypto_MakeSINF");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %p", v19, 123, v20, "AVE_Crypto_MakeSINF");
      }
    }

    v25 = 4294966295;
  }

LABEL_32:
  if (sub_160EF0(0x7Bu, 8))
  {
    v29 = sub_160F34(0x7Bu);
    v30 = sub_175AE4();
    v31 = sub_160F68(8);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %p %d\n", v30, 123, v31, "AVE_Crypto_MakeSINF", a1, a2, a3, a4, v25);
      v32 = sub_175AE4();
      v39 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %p %d", v32, 123, v39);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %p %d", v30, 123, v31);
    }
  }

  return v25;
}

uint64_t sub_160D68(char *a1, int a2)
{
  v4 = NSTemporaryDirectory();
  v5 = [v4 UTF8String];

  return sub_172100(a1, a2, "%s", v6, v7, v8, v9, v10, v5);
}

uint64_t sub_160DE0(unsigned int a1, int a2)
{
  if (a1 > 0xFF)
  {
    return 4294966295;
  }

  if (a2)
  {
    v4 = a2;
    v5 = a1;
    v6 = a2;
  }

  else
  {
    v4 = 0;
    v5 = a1;
    v6 = *(&xmmword_20D000 + a1);
  }

  byte_20D108[v5] = v6;
  if ((byte_20D148 & 0xFu) >= 7)
  {
    v7 = byte_20D148;
    v8 = sub_175AE4();
    if ((v7 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d %d 0x%x\n", v8, 64, "VERB", "AVE_Log_UpdateConf", 116, a1, v4);
      v8 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: %s:%d %d 0x%x", v8, 64, "VERB", "AVE_Log_UpdateConf", 116, a1, v4);
  }

  return 0;
}

BOOL sub_160EF0(unsigned int a1, int a2)
{
  if (a2 >= 0)
  {
    LOBYTE(v2) = a2;
  }

  else
  {
    v2 = -a2;
  }

  return a1 < 5 || a1 <= 0xFF && (v2 & 0xFu) <= (byte_20D108[a1] & 0xFu);
}

uint64_t sub_160F34(unsigned int a1)
{
  if (a1 < 2)
  {
    return 1;
  }

  if (a1 <= 0xFF)
  {
    return (byte_20D108[a1] >> 4) & 1;
  }

  return 0;
}

void *sub_160F68(int a1)
{
  if (a1 >= 0)
  {
    LOBYTE(v1) = a1;
  }

  else
  {
    v1 = -a1;
  }

  v2 = v1 & 0xF;
  if (v2 > 8)
  {
    return &unk_1A7265;
  }

  else
  {
    return *(&off_203CA8 + v2);
  }
}

uint64_t sub_160F98()
{
  if (!qword_20D210)
  {
    *&v0 = 0x505050505050505;
    *(&v0 + 1) = 0x505050505050505;
    xmmword_20D020 = v0;
    unk_20D030 = v0;
    xmmword_20D0E0 = v0;
    unk_20D0F0 = v0;
    xmmword_20D0C0 = v0;
    unk_20D0D0 = v0;
    xmmword_20D0A0 = v0;
    unk_20D0B0 = v0;
    xmmword_20D080 = v0;
    unk_20D090 = v0;
    xmmword_20D060 = v0;
    unk_20D070 = v0;
    xmmword_20D040 = v0;
    unk_20D050 = v0;
    xmmword_20D000 = v0;
    *algn_20D010 = v0;
    BYTE4(xmmword_20D000) = 6;
    BYTE12(xmmword_20D020) = 6;
    byte_20D03D = 6;
    *(&xmmword_20D000 + 11) = 1542;
    BYTE5(xmmword_20D060) = 6;
    BYTE1(xmmword_20D040) = 6;
    dword_20D104 = 20000;
    dword_20D100 = 25;
    sub_CB250(byte_20D108, &xmmword_20D000, 256);
    dword_20D20C = dword_20D104;
    dword_20D208 = dword_20D100;
    qword_20D210 = 1;
  }

  return 0;
}

uint64_t sub_161058(int a1)
{
  if ((byte_20D148 & 0xEu) > 5)
  {
    v2 = byte_20D148;
    v3 = sub_175AE4();
    if ((v2 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Enter %d\n", v3, 64, "INFO", "AVE_Log_UpdateConsole", a1);
      v3 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d", v3, 64, "INFO", "AVE_Log_UpdateConsole", a1);
  }

  for (i = 0; i != 256; ++i)
  {
    byte_20D108[i] = byte_20D108[i] & 0xEF | (16 * ((byte_20D108[i] & 0xF) <= a1));
  }

  qword_20D210 = sub_175B1C();
  sub_1611B0();
  if ((byte_20D148 & 0xEu) >= 6)
  {
    v5 = byte_20D148;
    v6 = sub_175AE4();
    if ((v5 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Exit %d %d\n", v6, 64, "INFO", "AVE_Log_UpdateConsole", a1, 0);
      v6 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: %s Exit %d %d", v6, 64, "INFO", "AVE_Log_UpdateConsole", a1, 0);
  }

  return 0;
}

void sub_1611B0()
{
  if ((byte_20D148 & 0xFu) >= 7)
  {
    v0 = byte_20D148;
    v1 = sub_175AE4();
    if ((v0 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d %llu\n", v1, 64, "VERB", "AVE_Log_Print", 85, qword_20D210);
      v1 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: %s:%d %llu", v1, 64, "VERB", "AVE_Log_Print", 85, qword_20D210);
  }

  for (i = 0; i != 256; ++i)
  {
    if ((byte_20D148 & 0xFu) >= 7)
    {
      v3 = byte_20D148;
      v4 = sub_175AE4();
      v5 = byte_20D108[i];
      if ((v3 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: Log Cfg: %3d = 0x%02x\n", v4, 64, "VERB", i, v5);
        v4 = sub_175AE4();
        v5 = byte_20D108[i];
      }

      syslog(3, "%lld %d AVE %s: Log Cfg: %3d = 0x%02x", v4, 64, "VERB", i, v5);
    }
  }

  if ((byte_20D148 & 0xFu) >= 7)
  {
    v6 = byte_20D148;
    v7 = sub_175AE4();
    if ((v6 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: Log Cfg: %d (us) %d%%\n", v7, 64, "VERB", dword_20D20C, dword_20D208);
      v7 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: Log Cfg: %d (us) %d%%", v7, 64, "VERB", dword_20D20C, dword_20D208);
  }
}

uint64_t sub_161394(void *a1, uint64_t a2)
{
  result = 4294966295;
  if (a1)
  {
    if (a2)
    {
      *a1 = qword_20D210;
      sub_CB250(a2, byte_20D108, 256);
      result = 0;
      *(a2 + 256) = dword_20D208;
      *(a2 + 260) = dword_20D20C;
    }
  }

  return result;
}

uint64_t sub_161400(uint64_t a1, int a2, int a3)
{
  for (i = 5; i != 256; ++i)
  {
    v7 = i >> 3;
    if (v7 >= a2)
    {
      break;
    }

    if ((*(a1 + v7) >> (i & 7)))
    {
      sub_160DE0(i, a3);
    }
  }

  return 0;
}

uint64_t sub_161470(unsigned int a1, unint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  if ((byte_20D148 & 0xEu) >= 6)
  {
    v5 = byte_20D148;
    v6 = sub_175AE4();
    if ((v5 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Enter 0x%x 0x%llx\n", v6, 64, "INFO", "AVE_Log_PresetCfg", a1, a2);
      v6 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: %s Enter 0x%x 0x%llx", v6, 64, "INFO", "AVE_Log_PresetCfg", a1, a2);
  }

  v7 = (a1 >> 2) & 0x3FFFFFC0;
  v8 = v7 - 64;
  if (a2)
  {
    for (i = 0; i != 64; ++i)
    {
      if ((v8 | i) > 255)
      {
        break;
      }

      *(v15 + (v8 | i) / 8) |= ((a2 >> i) & 1) << ((v8 | i) - (v2 & 0xF8));
    }

    sub_161400(v15, 32, a1);
  }

  else
  {
    v10 = 320 - v7;
    if ((v8 - 192) >= 0xFFFFFFFFFFFFFF00)
    {
      v11 = 64;
    }

    else
    {
      v11 = v10;
    }

    sub_CB250(&byte_20D108[v8], &xmmword_20D000 + v8, v11);
  }

  if ((a1 & 0xFFFFFEFF) != 0)
  {
    qword_20D210 = sub_175B1C();
  }

  sub_1611B0();
  if ((byte_20D148 & 0xEu) >= 6)
  {
    v12 = byte_20D148;
    v13 = sub_175AE4();
    if ((v12 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Exit 0x%x 0x%llx %d\n", v13, 64, "INFO", "AVE_Log_PresetCfg", a1, a2, 0);
      v13 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: %s Exit 0x%x 0x%llx %d", v13, 64, "INFO", "AVE_Log_PresetCfg", a1, a2, 0);
  }

  return 0;
}

uint64_t sub_161688(uint64_t a1)
{
  memset(v75, 0, 192);
  memset(&v74, 0, sizeof(v74));
  v73 = 0;
  v72 = 0;
  qword_20C1F8[0] = 0;
  qword_20C200 = 0;
  if (a1)
  {
    qword_20C1F8[0] = a1;
  }

  v1 = sub_160D68(v75, 192);
  if (v1 >= 1)
  {
    sub_172100(&v75[v1], 192 - v1, "%s", v2, v3, v4, v5, v6, "ave_log.cfg");
    qword_20C200 = v75;
  }

  for (i = 0; i != 4; ++i)
  {
    v8 = qword_20C1F8[i];
    if (!v8)
    {
      continue;
    }

    if (stat(qword_20C1F8[i], &v74))
    {
      if ((byte_20D148 & 8) != 0)
      {
        v9 = byte_20D148;
        v10 = sub_175AE4();
        if ((v9 & 0x10) != 0)
        {
          printf("%lld %d AVE %s: %s:%d log config file doesn't exist at %s\n", v10, 64, "DBG", "AVE_Log_ReadCfg", 650, v8);
          sub_175AE4();
        }

        syslog(3, "%lld %d AVE %s: %s:%d log config file doesn't exist at %s");
      }

      continue;
    }

    if ((byte_20D148 & 8) != 0)
    {
      v11 = byte_20D148;
      v12 = sub_175AE4();
      if ((v11 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: %s:%d log config file is at %s\n", v12, 64, "DBG", "AVE_Log_ReadCfg", 654, v8);
        v12 = sub_175AE4();
      }

      syslog(3, "%lld %d AVE %s: %s:%d log config file is at %s", v12, 64, "DBG", "AVE_Log_ReadCfg", 654, v8);
    }

    v13 = v74.st_mtimespec.tv_nsec / 1000 + 1000000 * v74.st_mtimespec.tv_sec;
    if (v13 == qword_20D210 && qword_20D210)
    {
      if ((byte_20D148 & 8) != 0)
      {
        v14 = byte_20D148;
        v15 = sub_175AE4();
        if ((v14 & 0x10) != 0)
        {
          printf("%lld %d AVE %s: %s:%d log config file has been updated %s %llu\n", v15, 64, "DBG", "AVE_Log_ReadCfg", 662, v8, qword_20D210);
          v15 = sub_175AE4();
        }

        syslog(3, "%lld %d AVE %s: %s:%d log config file has been updated %s %llu", v15, 64, "DBG", "AVE_Log_ReadCfg", 662, v8, qword_20D210);
      }

      continue;
    }

    v16 = fopen(v8, "r");
    if (v16)
    {
      v26 = v16;
      v27 = malloc_type_malloc(0x108uLL, 0x10000400BDB4DB4uLL);
      if (v27)
      {
        v28 = v27;
        *(v27 + 32) = 0;
        *(v27 + 14) = 0u;
        *(v27 + 15) = 0u;
        *(v27 + 12) = 0u;
        *(v27 + 13) = 0u;
        *(v27 + 10) = 0u;
        *(v27 + 11) = 0u;
        *(v27 + 8) = 0u;
        *(v27 + 9) = 0u;
        *(v27 + 6) = 0u;
        *(v27 + 7) = 0u;
        *(v27 + 4) = 0u;
        *(v27 + 5) = 0u;
        *(v27 + 2) = 0u;
        *(v27 + 3) = 0u;
        *v27 = 0u;
        *(v27 + 1) = 0u;
        if ((byte_20D148 & 0xFu) >= 5)
        {
          v29 = byte_20D148;
          v30 = sub_175AE4();
          if ((v29 & 0x10) != 0)
          {
            printf("%lld %d AVE %s: %s:%d used log config file is at %s %llu\n", v30, 64, "WARN", "AVE_Log_ReadCfg", 690, v8, v13);
            v30 = sub_175AE4();
          }

          syslog(3, "%lld %d AVE %s: %s:%d used log config file is at %s %llu", v30, 64, "WARN", "AVE_Log_ReadCfg", 690, v8, v13);
        }

        qword_20D210 = v13;
        v33 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
        if (v33)
        {
          v34 = v33;
          *(v33 + 14) = 0u;
          *(v33 + 15) = 0u;
          *(v33 + 12) = 0u;
          *(v33 + 13) = 0u;
          *(v33 + 10) = 0u;
          *(v33 + 11) = 0u;
          *(v33 + 8) = 0u;
          *(v33 + 9) = 0u;
          *(v33 + 6) = 0u;
          *(v33 + 7) = 0u;
          *(v33 + 4) = 0u;
          *(v33 + 5) = 0u;
          *(v33 + 2) = 0u;
          *(v33 + 3) = 0u;
          *v33 = 0u;
          *(v33 + 1) = 0u;
          v71 = 0;
          v35 = fgetln(v26, &v71);
          if (v35)
          {
            v36 = v35;
            v37 = (v28 + 256);
            v38 = (v28 + 260);
            v39 = 1;
            while (1)
            {
              v40 = *v36;
              v41 = v40 > 0x23;
              v42 = (1 << v40) & 0x800002400;
              if (!v41 && v42 != 0)
              {
                goto LABEL_55;
              }

              if (v71 >= 0x100)
              {
                if ((byte_20D148 & 0xFu) >= 5)
                {
                  v44 = byte_20D148;
                  v45 = sub_175AE4();
                  if ((v44 & 0x10) != 0)
                  {
                    printf("%lld %d AVE %s: %s:%d Line too long, skipping %s:%lld\n", v45, 64, "WARN", "AVE_Log_ReadCfg", 732, v8, v39);
                    v45 = sub_175AE4();
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d Line too long, skipping %s:%lld", v45, 64, "WARN", "AVE_Log_ReadCfg", 732, v8, v39);
                }

                goto LABEL_55;
              }

              sub_17212C(v34, v36, v71 + 1);
              LODWORD(v73) = 15;
              v72 = 0;
              if (sscanf(v34, "LOG_ID_%d=%d%c", &v73 + 4, &v73, &v72) >= 2)
              {
                v46 = v73;
                if ((v72 & 0xDF) == 0x43)
                {
                  v46 = v73 | 0x10;
                }

                v28[SHIDWORD(v73)] = v46;
                goto LABEL_55;
              }

              if (sscanf(v34, "THRESHOLD=%d", v37) != 1)
              {
                break;
              }

              v47 = &dword_20D100;
              if (*v37)
              {
                v47 = v37;
              }

              dword_20D208 = *v47;
              if ((byte_20D148 & 0xFu) < 7)
              {
                goto LABEL_55;
              }

              v48 = v37;
              v49 = byte_20D148;
              v50 = sub_175AE4();
              v70 = v48;
              v51 = *v48;
              if ((v49 & 0x10) == 0)
              {
                v67 = *v48;
                syslog(3, "%lld %d AVE %s: %s:%d Read threshold %d");
LABEL_82:
                v37 = v70;
                goto LABEL_55;
              }

              printf("%lld %d AVE %s: %s:%d Read threshold %d\n", v50, 64, "VERB", "AVE_Log_ReadCfg", 757, *v48);
              v56 = sub_175AE4();
              syslog(3, "%lld %d AVE %s: %s:%d Read threshold %d", v56, 64, "VERB", "AVE_Log_ReadCfg", 757, *v48);
              v37 = v48;
LABEL_55:
              v71 = 0;
              v36 = fgetln(v26, &v71);
              ++v39;
              if (!v36)
              {
                goto LABEL_83;
              }
            }

            if (sscanf(v34, "INTERVAL=%d", v38) != 1)
            {
              goto LABEL_55;
            }

            v52 = &dword_20D104;
            if (*v38)
            {
              v52 = (v28 + 260);
            }

            dword_20D20C = *v52;
            if ((byte_20D148 & 0xFu) < 7)
            {
              goto LABEL_55;
            }

            v70 = v37;
            v53 = byte_20D148;
            v54 = sub_175AE4();
            v55 = *v38;
            if ((v53 & 0x10) != 0)
            {
              printf("%lld %d AVE %s: %s:%d Read interval %d (us)\n", v54, 64, "VERB", "AVE_Log_ReadCfg", 764, *v38);
              sub_175AE4();
            }

            v68 = *v38;
            syslog(3, "%lld %d AVE %s: %s:%d Read interval %d (us)");
            goto LABEL_82;
          }

LABEL_83:
          if (ferror(v26))
          {
            if ((byte_20D148 & 0xC) != 0)
            {
              v57 = byte_20D148;
              v58 = sub_175AE4();
              v59 = __error();
              v60 = strerror(*v59);
              if ((v57 & 0x10) != 0)
              {
                printf("%lld %d AVE %s: %s:%d error while reading config file: %s\n", v58, 64, "ERR", "AVE_Log_ReadCfg", 713, v60);
                v65 = sub_175AE4();
                v66 = __error();
                v69 = strerror(*v66);
                syslog(3, "%lld %d AVE %s: %s:%d error while reading config file: %s", v65, 64, "ERR", "AVE_Log_ReadCfg", 713, v69);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d error while reading config file: %s", v58, 64, "ERR", "AVE_Log_ReadCfg", 713, v60);
              }
            }

            v24 = 4294966284;
          }

          else
          {
            for (j = 0; j != 256; ++j)
            {
              v64 = &v28[j];
              if (!v28[j])
              {
                v64 = v28;
              }

              sub_160DE0(j, *v64);
            }

            sub_1611B0();
            v24 = 0;
          }

          free(v34);
        }

        else
        {
          if ((byte_20D148 & 0xC) != 0)
          {
            v61 = byte_20D148;
            v62 = sub_175AE4();
            if ((v61 & 0x10) != 0)
            {
              printf("%lld %d AVE %s: %s:%d %s | cannot allocate memory for line reader\n", v62, 64, "ERR", "AVE_Log_ReadCfg", 696, "pLineBuf != __null");
              v62 = sub_175AE4();
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | cannot allocate memory for line reader", v62, 64, "ERR", "AVE_Log_ReadCfg", 696, "pLineBuf != __null");
          }

          v24 = 4294966293;
        }

        free(v28);
      }

      else
      {
        if ((byte_20D148 & 0xC) != 0)
        {
          v31 = byte_20D148;
          v32 = sub_175AE4();
          if ((v31 & 0x10) != 0)
          {
            printf("%lld %d AVE %s: %s:%d %s | cannot allocate memory for log config\n", v32, 64, "ERR", "AVE_Log_ReadCfg", 686, "pTmpLog != __null");
            v32 = sub_175AE4();
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | cannot allocate memory for log config", v32, 64, "ERR", "AVE_Log_ReadCfg", 686, "pTmpLog != __null");
        }

        v24 = 4294966293;
      }

      fclose(v26);
      return v24;
    }

    if ((byte_20D148 & 8) != 0)
    {
      v17 = byte_20D148;
      v18 = sub_175AE4();
      v19 = __error();
      v20 = strerror(*v19);
      if ((v17 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: %s:%d log config file cannot be opened %s : %s\n", v18, 64, "DBG", "AVE_Log_ReadCfg", 673, v8, v20);
        v18 = sub_175AE4();
        v21 = __error();
        strerror(*v21);
      }

      syslog(3, "%lld %d AVE %s: %s:%d log config file cannot be opened %s : %s", v18);
    }
  }

  if ((byte_20D148 & 8) != 0)
  {
    v22 = byte_20D148;
    v23 = sub_175AE4();
    if ((v22 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d cannot find available config file\n", v23, 64, "DBG", "AVE_Log_ReadCfg", 679);
      v23 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: %s:%d cannot find available config file", v23, 64, "DBG", "AVE_Log_ReadCfg", 679);
  }

  return 4294966288;
}

uint64_t sub_1621A4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 44))
    {
      v2 = result + 44;
    }

    else
    {
      v2 = 0;
    }

    result = sub_161688(v2);
    v3 = 256;
    for (i = 2; i != 10; i += 2)
    {
      if ((*v1 & v3) != 0)
      {
        sub_161470(v3 + 7, *&v1[i]);
        result = 0;
      }

      v3 += 256;
    }

    v5 = v1[10];
    if (v5)
    {
      sub_161058(v5);
      return 0;
    }
  }

  return result;
}

_DWORD *sub_162230(int *a1, int a2, uint64_t a3)
{
  v5 = *a1;
  v3 = a1 + 2;
  v4 = v5;
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    while (1)
    {
      v7 = &v3[8 * v6];
      if (v7[1] == a2)
      {
        break;
      }

      if (++v6 >= v4)
      {
        return v7;
      }
    }

    ++v6;
  }

  while (*(v7 + 1) >= a3 && v6 < v4);
  return v7;
}

float sub_162284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0.0;
  v6 = 0.0;
  do
  {
    v7 = *(a2 + 16 + v3);
    *&v8 = v7;
    v4 += v7;
    LODWORD(v8) = *(a3 + 16 + v3);
    v6 = v6 + v7 - v8;
    v9 = -v6;
    if (v6 >= 0.0)
    {
      v9 = v6;
    }

    v5 = v5 + v9;
    v3 += 4;
  }

  while (v3 != 1024);
  if (sub_160EF0(0xD8u, 7))
  {
    v10 = sub_160F34(0xD8u);
    v11 = sub_175AE4();
    v12 = sub_160F68(7);
    if (v10)
    {
      printf("%lld %d AVE %s: MP: histogram_diff() hdiff %lf sum_a %d\n", v11, 216, v12, v5, v4);
      v13 = sub_175AE4();
      v15 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: histogram_diff() hdiff %lf sum_a %d", v13, 216, v15, v5, v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: histogram_diff() hdiff %lf sum_a %d", v11, 216, v12, v5, v4);
    }
  }

  return v5 / v4;
}

BOOL sub_1623A8(float a1, float a2, float a3, float a4)
{
  v4 = a2;
  v5 = a3;
  if (v4 <= 0.00272072)
  {
    v9 = a4 <= 0.96605313 && v5 > 1.34009841;
  }

  else
  {
    v6 = a1;
    if (v6 <= 71.5876885)
    {
      v7 = v6 > 26.7539587;
      v8 = 23.2484817;
    }

    else
    {
      v7 = v4 <= 0.03005953;
      v8 = 4.51769352;
    }

    v9 = v5 > v8 && v7;
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v10 = sub_160F34(0xD8u);
    v11 = sub_175AE4();
    v12 = sub_160F68(7);
    if (v10)
    {
      printf("%lld %d AVE %s: MP: scene_change_detect() returns %d\n", v11, 216, v12, v9);
      v13 = sub_175AE4();
      v15 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: scene_change_detect() returns %d", v13, 216, v15, v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: scene_change_detect() returns %d", v11, 216, v12, v9);
    }
  }

  return v9;
}

void sub_1624F0(uint64_t a1, uint64_t a2)
{
  if (sub_160EF0(0xD8u, 7))
  {
    v4 = sub_160F34(0xD8u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    v7 = *(a2 + 44);
    if (v4)
    {
      printf("%lld %d AVE %s: MP: accumulate_scene_info() display_order %d\n", v5, 216, v6, v7);
      v8 = sub_175AE4();
      v31 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: accumulate_scene_info() display_order %d", v8, 216, v31, *(a2 + 44));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: accumulate_scene_info() display_order %d", v5, 216, v6, v7);
    }
  }

  if (*(a2 + 44) != -1)
  {
    v9 = *(a1 + 25500) + 1;
    *(a1 + 25500) = v9;
    if (*(a2 + 1200))
    {
      ++*(a1 + 25496);
    }

    v10 = *(a2 + 64);
    *(a1 + 25504) += v10;
    if (*(a2 + 52) == 2)
    {
      *(a1 + 25516) += v10;
      ++*(a1 + 25512);
      v11 = *(a2 + 1556);
      *(a1 + 25576) = *(a1 + 25576) + v11;
    }

    else
    {
      v11 = *(a2 + 1556);
    }

    v12 = (a2 + 1220);
    v13 = *(a1 + 25760) + v11;
    *(a1 + 25760) = v13;
    *&v13 = v13 / v9;
    *(a1 + 25572) = LODWORD(v13);
    *(a1 + 25584) = vaddq_f64(*(a1 + 25584), vcvtq_f64_f32(*(a2 + 1560)));
    v14 = (a2 + 1460);
    v15 = (a1 + 25664);
    v16 = 16;
    v17 = (a2 + 1460);
    do
    {
      *(v15 - 16) += *(v17 - 16);
      v18 = *v17++;
      *v15 = v18 + *v15;
      ++v15;
      --v16;
    }

    while (v16);
    v19 = *(a2 + 1572);
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        *(a1 + 25552) += *(a2 + 64);
        ++*(a1 + 25548);
      }

      else if (v19 == 3)
      {
        *(a1 + 25564) += *(a2 + 64);
        ++*(a1 + 25560);
      }
    }

    else if (*(a2 + 1572))
    {
      if (v19 == 1)
      {
        *(a1 + 25540) += *(a2 + 64);
        ++*(a1 + 25536);
      }
    }

    else
    {
      *(a1 + 25528) += *(a2 + 64);
      ++*(a1 + 25524);
    }

    if (!*(a2 + 1200))
    {
      v20 = *(a1 + 25488);
      v21 = *(v20 + 1220);
      v22 = vadd_s32(v21, *v12);
      *(v20 + 1216) = ((*(a2 + 1216) * v12->u32[0]) + (*(v20 + 1216) * v21.u32[0])) / v22.u32[0];
      *(v20 + 1220) = v22;
      *(v20 + 1228) = vaddq_s64(*(v20 + 1228), *(a2 + 1228));
      *(v20 + 1244) = vaddq_s64(*(v20 + 1244), *(a2 + 1244));
      *(v20 + 1260) += *(a2 + 1260);
      *(v20 + 1268) = vaddq_f64(*(a2 + 1268), *(v20 + 1268));
      v23 = *(a2 + 1284);
      if (v23 >= *(v20 + 1284))
      {
        v23 = *(v20 + 1284);
      }

      *(v20 + 1284) = v23;
      v24 = *(v20 + 1288);
      if (v24 < *(a2 + 1288))
      {
        v24 = *(a2 + 1288);
      }

      *(v20 + 1288) = v24;
      *(v20 + 1292) += *(a2 + 1292);
      v25 = vaddq_s64(*(v20 + 1316), *(a2 + 1316));
      *(v20 + 1300) = vaddq_s32(*(v20 + 1300), *(a2 + 1300));
      *(v20 + 1316) = v25;
      v26 = vaddq_f64(*(a2 + 1348), *(v20 + 1348));
      *(v20 + 1332) = vaddq_s64(*(v20 + 1332), *(a2 + 1332));
      *(v20 + 1348) = v26;
      v27 = vaddq_f64(*(v20 + 1380), vcvtq_f64_f32(*(a2 + 1560)));
      *(v20 + 1364) = vaddq_f64(*(a2 + 1364), *(v20 + 1364));
      *(v20 + 1380) = v27;
      v28 = (v20 + 1460);
      v29 = 16;
      do
      {
        *(v28 - 16) += *(v14 - 16);
        v30 = *v14++;
        *v28 = v30 + *v28;
        ++v28;
        --v29;
      }

      while (v29);
    }

    sub_1628A8(a1);
  }
}

void sub_1628A8(double *a1)
{
  v2 = a1 + 3072;
  if (sub_160EF0(0xD8u, 7))
  {
    v3 = sub_160F34(0xD8u);
    v4 = sub_175AE4();
    v5 = sub_160F68(7);
    if (v3)
    {
      printf("%lld %d AVE %s: MP: seq_rc_info()\n", v4, 216, v5);
      v6 = sub_175AE4();
      v74 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: seq_rc_info()", v6, 216, v74);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: seq_rc_info()", v4, 216, v5);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v7 = sub_160F34(0xD8u);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    v10 = *(v2 + 230);
    if (v7)
    {
      printf("%lld %d AVE %s:  total_scenes %u\n", v8, 216, v9, v10);
      v11 = sub_175AE4();
      v75 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v11, 216, v75, *(v2 + 230));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v8, 216, v9, v10);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v12 = sub_160F34(0xD8u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    v15 = *(v2 + 231);
    if (v12)
    {
      printf("%lld %d AVE %s:  cnt_All %u\n", v13, 216, v14, v15);
      v16 = sub_175AE4();
      v76 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v16, 216, v76, *(v2 + 231));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v13, 216, v14, v15);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v17 = sub_160F34(0xD8u);
    v18 = sub_175AE4();
    v19 = sub_160F68(7);
    v20 = *(a1 + 3188);
    if (v17)
    {
      printf("%lld %d AVE %s:  bits_All %llu\n", v18, 216, v19, v20);
      v21 = sub_175AE4();
      v77 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v21, 216, v77, *(a1 + 3188));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v18, 216, v19, v20);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v22 = sub_160F34(0xD8u);
    v23 = sub_175AE4();
    v24 = sub_160F68(7);
    v25 = *(v2 + 237);
    if (v22)
    {
      printf("%lld %d AVE %s:  cnt_NORMAL %u\n", v23, 216, v24, v25);
      v26 = sub_175AE4();
      v78 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v26, 216, v78, *(v2 + 237));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v23, 216, v24, v25);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v27 = sub_160F34(0xD8u);
    v28 = sub_175AE4();
    v29 = sub_160F68(7);
    v30 = *(a1 + 3191);
    if (v27)
    {
      printf("%lld %d AVE %s:  bits_NORMAL %llu\n", v28, 216, v29, v30);
      v31 = sub_175AE4();
      v79 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v31, 216, v79, *(a1 + 3191));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v28, 216, v29, v30);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v32 = sub_160F34(0xD8u);
    v33 = sub_175AE4();
    v34 = sub_160F68(7);
    v35 = *(v2 + 240);
    if (v32)
    {
      printf("%lld %d AVE %s:  cnt_MIN %u\n", v33, 216, v34, v35);
      v36 = sub_175AE4();
      v80 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v36, 216, v80, *(v2 + 240));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v33, 216, v34, v35);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v37 = sub_160F34(0xD8u);
    v38 = sub_175AE4();
    v39 = sub_160F68(7);
    v40 = *(v2 + 964);
    if (v37)
    {
      printf("%lld %d AVE %s:  bits_MIN %llu\n", v38, 216, v39, v40);
      v41 = sub_175AE4();
      v81 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v41, 216, v81, *(v2 + 964));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v38, 216, v39, v40);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v42 = sub_160F34(0xD8u);
    v43 = sub_175AE4();
    v44 = sub_160F68(7);
    v45 = *(v2 + 243);
    if (v42)
    {
      printf("%lld %d AVE %s:  cnt_MAX %u\n", v43, 216, v44, v45);
      v46 = sub_175AE4();
      v82 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v46, 216, v82, *(v2 + 243));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v43, 216, v44, v45);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v47 = sub_160F34(0xD8u);
    v48 = sub_175AE4();
    v49 = sub_160F68(7);
    v50 = *(a1 + 3194);
    if (v47)
    {
      printf("%lld %d AVE %s:  bits_MAX %llu\n", v48, 216, v49, v50);
      v51 = sub_175AE4();
      v83 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v51, 216, v83, *(a1 + 3194));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v48, 216, v49, v50);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v52 = sub_160F34(0xD8u);
    v53 = sub_175AE4();
    v54 = sub_160F68(7);
    v55 = *(v2 + 246);
    if (v52)
    {
      printf("%lld %d AVE %s:  cnt_BLANK %u\n", v53, 216, v54, v55);
      v56 = sub_175AE4();
      v84 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v56, 216, v84, *(v2 + 246));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v53, 216, v54, v55);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v57 = sub_160F34(0xD8u);
    v58 = sub_175AE4();
    v59 = sub_160F68(7);
    v60 = *(v2 + 988);
    if (v57)
    {
      printf("%lld %d AVE %s:  bits_BLANK %llu\n", v58, 216, v59, v60);
      v61 = sub_175AE4();
      v85 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s:  bits_BLANK %llu", v61, 216, v85, *(v2 + 988));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_BLANK %llu", v58, 216, v59, v60);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v62 = sub_160F34(0xD8u);
    v63 = sub_175AE4();
    v64 = sub_160F68(7);
    v65 = *(v2 + 249);
    if (v62)
    {
      printf("%lld %d AVE %s:  avg_qscale %f\n", v63, 216, v64, *(v2 + 249));
      v63 = sub_175AE4();
      v64 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s:  avg_qscale %f", v63, 216, v64, *(v2 + 249));
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v66 = sub_160F34(0xD8u);
    v67 = sub_175AE4();
    v68 = sub_160F68(7);
    v69 = *(a1 + 3198);
    if (v66)
    {
      printf("%lld %d AVE %s:  current_complexity %lf\n", v67, 216, v68, a1[3198]);
      v67 = sub_175AE4();
      v68 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s:  current_complexity %lf", v67, 216, v68, a1[3198]);
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v70 = sub_160F34(0xD8u);
    v71 = sub_175AE4();
    v72 = sub_160F68(7);
    v73 = *(a1 + 3199);
    if (v70)
    {
      printf("%lld %d AVE %s:  totalcplxsum %lf\n", v71, 216, v72, a1[3199]);
      v71 = sub_175AE4();
      v72 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s:  totalcplxsum %lf", v71, 216, v72, a1[3199]);
  }
}

_DWORD *sub_163124(uint64_t a1, _DWORD *a2)
{
  v60 = a2;
  if (sub_160EF0(0xD8u, 7))
  {
    v4 = sub_160F34(0xD8u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      if (a2)
      {
        v7 = a2[11];
      }

      else
      {
        v7 = -1;
      }

      printf("%lld %d AVE %s: MP: scene_change_pipeline() Entry stats %p display_order %d\n", v5, 216, v6, a2, v7);
      v5 = sub_175AE4();
      v6 = sub_160F68(7);
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else if (!a2)
    {
LABEL_9:
      v8 = -1;
      goto LABEL_10;
    }

    v8 = a2[11];
LABEL_10:
    syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() Entry stats %p display_order %d", v5, 216, v6, a2, v8);
  }

  if (!*(a1 + 25488))
  {
    v9 = v60;
    v60[300] = 1;
    *(a1 + 25488) = v9;
    sub_163750((a1 + 25432), (a1 + 25488));
  }

  v10 = sub_163750((a1 + 25384), &v60);
  v11 = *(a1 + 25424);
  v12 = v60;
  if (v11 <= 1)
  {
    *(v60 + 151) = 0;
LABEL_19:
    v60 = 0;
    goto LABEL_20;
  }

  v13 = v11 - 2;
  v14 = *(a1 + 25416);
  v15 = v14 + v11 - 2;
  v16 = *(a1 + 25392);
  v17 = v15 >> 9;
  v18 = *(v16 + 8 * (v15 >> 9));
  v19 = v15 & 0x1FF;
  v20 = *(v18 + 8 * v19);
  if (v60[11] == -1)
  {
    v22 = *(v20 + 1208);
  }

  else
  {
    v21 = *(v60 + 304) + *(v20 + 1216);
    if (v21 < 1.0)
    {
      v21 = 1.0;
    }

    v22 = fmaxf(sub_162284(v10, (v60 + 40), v20 + 160) / (v21 * 0.0019531), 0.01);
    v14 = *(a1 + 25416);
    v16 = *(a1 + 25392);
    v12 = v60;
    v17 = (v14 + v13) >> 9;
    v19 = (v14 + v13) & 0x1FF;
  }

  v28 = *(*(*(v16 + 8 * v17) + 8 * v19) + 1208);
  if (v22 >= v28)
  {
    v28 = v22;
  }

  v12[302] = v22;
  v12[303] = v28;
  if (v11 < 4)
  {
    if (v11 == 2)
    {
      v38 = *(*(v16 + ((v14 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v14 & 0x1FF));
      *(v38 + 1208) = *(*(*(v16 + (((v14 + 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 + 1) & 0x1FF)) + 1208);
      sub_1624F0(a1, v38);
    }

    goto LABEL_19;
  }

  v29 = v11 + v14;
  v30 = *(*(v16 + (((v29 - 3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v29 - 3) & 0x1FF));
  v59 = v30;
  v31 = *(*(*(v16 + (((v29 - 4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v29 - 4) & 0x1FF)) + 1212);
  v32 = *(v30 + 1208);
  v33 = *(*(*(v16 + (((v29 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v29 - 1) & 0x1FF)) + 1212);
  v34 = v32 / v31;
  v35 = v33 / v32;
  v36 = (v33 / v32) / (v32 / v31);
  if (*(v12 + 11) == -1 || *(v30 + 44) < 3u)
  {
    *(v30 + 1200) = *(v30 + 80) & 1;
    sub_1624F0(a1, v30);
    *(v30 + 1200) |= *(v30 + 44) == -1;
  }

  else
  {
    v37 = *(v30 + 36);
    *(v30 + 1200) = 0;
    if ((*(v30 + 80) & 1) != 0 || sub_1623A8(v32, (v33 / v32) / (v32 / v31), v32 / v31, v33 / v32) || *(*(a1 + 25488) + 1220) >= ((v37 * 6.0) + 0.5))
    {
      *(v30 + 1200) = 1;
    }

    sub_1624F0(a1, v30);
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v39 = sub_160F34(0xD8u);
    v40 = sub_175AE4();
    v41 = sub_160F68(7);
    v42 = *(v30 + 44);
    v43 = *(v30 + 80) & 1;
    v44 = *(v30 + 1200);
    if (v39)
    {
      printf("%lld %d AVE %s: MP: scene_change_pipeline() display_order %d forceKeyFrame %d scene_change %d\n", v40, 216, v41, v42, *(v30 + 80) & 1, v44);
      v45 = sub_175AE4();
      v46 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() display_order %d forceKeyFrame %d scene_change %d", v45, 216, v46, *(v30 + 44), *(v30 + 80) & 1, *(v30 + 1200));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() display_order %d forceKeyFrame %d scene_change %d", v40, 216, v41, v42, *(v30 + 80) & 1, v44);
    }
  }

  if (sub_160EF0(0xD8u, 7))
  {
    v47 = sub_160F34(0xD8u);
    v48 = sub_175AE4();
    v49 = sub_160F68(7);
    v50 = v31;
    v51 = v32;
    v52 = v33;
    v53 = v36;
    v54 = v34;
    v55 = v35;
    if (v47)
    {
      printf("%lld %d AVE %s: MP: scene_change_pipeline() m0 %f m1 %f m2 %f m0m2 %f mdpa_ratio_p %f mdpa_ratio_n %f\n", v48, 216, v49, v50, v51, v52, v53, v54, v55);
      sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() m0 %f m1 %f m2 %f m0m2 %f mdpa_ratio_p %f mdpa_ratio_n %f");
  }

  if (*(v30 + 1200))
  {
    sub_163750((a1 + 25432), &v59);
    *(a1 + 25488) = v59;
  }

  v56 = vaddq_s64(*(a1 + 25416), xmmword_19DC30);
  v60 = *(*(*(a1 + 25392) + ((*(a1 + 25416) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 25416) & 0x1FFLL));
  *(a1 + 25416) = v56;
  sub_165498(a1 + 25384, 1);
  if (v60[300])
  {
    v60 = 0;
    v57 = *(a1 + 25464);
    if (*(*(*(a1 + 25440) + ((v57 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v57 & 0x1FF)) != *(a1 + 25488))
    {
      v60 = *(*(*(a1 + 25440) + ((*(a1 + 25464) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 25464) & 0x1FFLL));
      --*(a1 + 25472);
      *(a1 + 25464) = v57 + 1;
      sub_165498(a1 + 25432, 1);
    }
  }

LABEL_20:
  if (sub_160EF0(0xD8u, 7))
  {
    v23 = sub_160F34(0xD8u);
    v24 = sub_175AE4();
    v25 = sub_160F68(7);
    if (v23)
    {
      printf("%lld %d AVE %s: MP: scene_change_pipeline() returns stats %p\n", v24, 216, v25, v60);
      v26 = sub_175AE4();
      v58 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() returns stats %p", v26, 216, v58, v60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() returns stats %p", v24, 216, v25, v60);
    }
  }

  return v60;
}

void *sub_163750(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_164E20(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void sub_1637D8(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (sub_160EF0(0xD8u, 7))
    {
      v5 = sub_160F34(0xD8u);
      v6 = sub_175AE4();
      v7 = sub_160F68(7);
      v8 = *(a2 + 44);
      v9 = *(a2 + 64);
      if (v5)
      {
        printf("%lld %d AVE %s: MP: F %d frame_bits %u correction_bits %d\n", v6, 216, v7, v8, *(a2 + 64), a3);
        v10 = sub_175AE4();
        v11 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: MP: F %d frame_bits %u correction_bits %d", v10, 216, v11, *(a2 + 44), *(a2 + 64), a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: MP: F %d frame_bits %u correction_bits %d", v6, 216, v7, v8, *(a2 + 64), a3);
      }
    }

    if (a3)
    {
      v12 = *(a2 + 64);
      if (v12 + a3 >= 1)
      {
        v13 = *(a2 + 68) * a3 / v12;
        if (sub_160EF0(0xD8u, 7))
        {
          v14 = sub_160F34(0xD8u);
          v15 = sub_175AE4();
          v16 = sub_160F68(7);
          v17 = *(a2 + 44);
          v18 = *(a2 + 68);
          if (v14)
          {
            printf("%lld %d AVE %s: MP: F %d hdr_bits %u hdr_correction %d\n", v15, 216, v16, v17, *(a2 + 68), v13);
            v19 = sub_175AE4();
            v20 = sub_160F68(7);
            syslog(3, "%lld %d AVE %s: MP: F %d hdr_bits %u hdr_correction %d", v19, 216, v20, *(a2 + 44), *(a2 + 68), v13);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: MP: F %d hdr_bits %u hdr_correction %d", v15, 216, v16, v17, *(a2 + 68), v13);
          }
        }

        v21 = *(a2 + 68);
        v22 = *(a2 + 64) + a3;
        *(a2 + 1228) += a3;
        *(a2 + 1244) += v13;
        *(a2 + 64) = v22;
        *(a2 + 68) = v21 + v13;
        v23 = *(a2 + 52);
        if (v23 == 2)
        {
          v24 = 1252;
        }

        else
        {
          if (v23)
          {
LABEL_17:
            v25 = *(a2 + 1316);
            if (v25)
            {
              *(a2 + 1316) = v25 + a3;
            }

            v26 = *(a2 + 1324);
            if (v26)
            {
              *(a2 + 1324) = v26 + a3;
            }

            v27 = *(a2 + 1332);
            if (v27)
            {
              *(a2 + 1332) = v27 + a3;
            }

            v28 = *(a2 + 1340);
            if (v28)
            {
              *(a2 + 1340) = v28 + a3;
            }

            return;
          }

          v24 = 1260;
        }

        *(a2 + v24) += v13;
        goto LABEL_17;
      }
    }
  }
}

const void *sub_163A30(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = (a1 + 3072);
  v7 = sub_160EF0(0xD8u, 7);
  if (v7)
  {
    v8 = sub_160F34(0xD8u);
    v9 = sub_175AE4();
    v10 = sub_160F68(7);
    if (v8)
    {
      if (a2)
      {
        v11 = *(a2 + 44);
      }

      else
      {
        v11 = -1;
      }

      printf("%lld %d AVE %s: MP: enqueue_first_pass() display_order %d flush %d fixup_fifo_len %d\n", v9, 216, v10, v11, a3, v6[192]);
      v9 = sub_175AE4();
      v10 = sub_160F68(7);
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else if (!a2)
    {
LABEL_9:
      v12 = -1;
      goto LABEL_10;
    }

    v12 = *(a2 + 44);
LABEL_10:
    syslog(3, "%lld %d AVE %s: MP: enqueue_first_pass() display_order %d flush %d fixup_fifo_len %d", v9, 216, v10, v12, a3, v6[192]);
  }

  v13 = v6[192];
  if ((a3 & 1) == 0)
  {
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        v17 = 0;
        a1[(v6[193] == 0) + 3166] = a2;
        v18 = 2;
      }

      else
      {
        if (v13)
        {
          goto LABEL_66;
        }

        v17 = 0;
        a1[v6[193] + 3166] = a2;
        v18 = 1;
      }

      v6[192] = v18;
      goto LABEL_80;
    }

LABEL_21:
    v19 = a1 + 3166;
    sub_1637D8(v7, a1[v6[193] + 3166], *(a2 + 72));
    v20 = v6[193];
    v21 = a1[3170];
    v22 = a1[3171];
    if (v21 >= v22)
    {
      v29 = a1[3169];
      v30 = (v21 - v29) >> 3;
      if ((v30 + 1) >> 61)
      {
        goto LABEL_85;
      }

      v31 = v22 - v29;
      v32 = v31 >> 2;
      if (v31 >> 2 <= (v30 + 1))
      {
        v32 = v30 + 1;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        v33 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        sub_1655A0((a1 + 3169), v33);
      }

      v44 = (8 * v30);
      *v44 = v19[v20];
      v23 = 8 * v30 + 8;
      v45 = a1[3169];
      v46 = a1[3170] - v45;
      v47 = v44 - v46;
      memcpy(v44 - v46, v45, v46);
      v48 = a1[3169];
      a1[3169] = v47;
      a1[3170] = v23;
      a1[3171] = 0;
      if (v48)
      {
        operator delete(v48);
      }
    }

    else
    {
      *v21 = v19[v20];
      v23 = (v21 + 1);
    }

    a1[3170] = v23;
    sub_1655E8(a1[3169], v23, &v82, (v23 - a1[3169]) >> 3);
    if (a3)
    {
      --v6[192];
      v6[193] = v6[193] == 0;
    }

    else
    {
      v49 = v6[193] == 0;
      v19[v6[193]] = a2;
      v6[193] = v49;
    }

    goto LABEL_66;
  }

  if (v13 == 2)
  {
    goto LABEL_21;
  }

  if (v13 == 1)
  {
    v24 = a1 + 3166;
    v25 = v6[193];
    v26 = a1[3170];
    v27 = a1[3171];
    if (v26 >= v27)
    {
      v34 = a1[3169];
      v35 = (v26 - v34) >> 3;
      if ((v35 + 1) >> 61)
      {
        goto LABEL_85;
      }

      v36 = v27 - v34;
      v37 = v36 >> 2;
      if (v36 >> 2 <= (v35 + 1))
      {
        v37 = v35 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (v38)
      {
        sub_1655A0((a1 + 3169), v38);
      }

      v50 = (8 * v35);
      *v50 = v24[v25];
      v28 = 8 * v35 + 8;
      v51 = a1[3169];
      v52 = a1[3170] - v51;
      v53 = v50 - v52;
      memcpy(v50 - v52, v51, v52);
      v54 = a1[3169];
      a1[3169] = v53;
      a1[3170] = v28;
      a1[3171] = 0;
      if (v54)
      {
        operator delete(v54);
      }
    }

    else
    {
      *v26 = v24[v25];
      v28 = (v26 + 1);
    }

    a1[3170] = v28;
    sub_1655E8(a1[3169], v28, &v81, (v28 - a1[3169]) >> 3);
    --v6[192];
    v6[193] = v6[193] == 0;
    if (a2)
    {
      v55 = v6[186];
      a1[v55 + 3149] = a2;
      if (v55 < 0x10)
      {
        v56 = v55 + 1;
      }

      else
      {
        v56 = 16;
      }

      v6[186] = v56;
    }

    goto LABEL_66;
  }

  if (v13)
  {
    goto LABEL_66;
  }

  v14 = a1[3170];
  v15 = a1[3171];
  if (v14 >= v15)
  {
    v39 = a1[3169];
    v40 = (v14 - v39) >> 3;
    if (!((v40 + 1) >> 61))
    {
      v41 = v15 - v39;
      v42 = v41 >> 2;
      if (v41 >> 2 <= (v40 + 1))
      {
        v42 = v40 + 1;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFF8)
      {
        v43 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v42;
      }

      if (v43)
      {
        sub_1655A0((a1 + 3169), v43);
      }

      v57 = (8 * v40);
      *v57 = a2;
      v16 = 8 * v40 + 8;
      v58 = a1[3169];
      v59 = a1[3170] - v58;
      v60 = v57 - v59;
      memcpy(v57 - v59, v58, v59);
      v61 = a1[3169];
      a1[3169] = v60;
      a1[3170] = v16;
      a1[3171] = 0;
      if (v61)
      {
        operator delete(v61);
      }

      goto LABEL_65;
    }

LABEL_85:
    sub_1654F8();
  }

  *v14 = a2;
  v16 = (v14 + 1);
LABEL_65:
  a1[3170] = v16;
  sub_1655E8(a1[3169], v16, &v80, (v16 - a1[3169]) >> 3);
LABEL_66:
  v62 = a1[3169];
  v63 = *v62;
  v64 = *(*v62 + 44);
  v65 = v6[226];
  if (v64 == -1 || v64 == v65)
  {
    v6[226] = v65 + 1;
    v67 = a1[3170];
    v68 = (v67 - v62) >> 3;
    if (v68 >= 2)
    {
      v69 = sub_165644(v62, &v83, v68);
      v70 = (v67 - 8);
      if ((v67 - 8) == v69)
      {
        *v69 = v63;
      }

      else
      {
        *v69 = *v70;
        *v70 = v63;
        sub_1655E8(v62, (v69 + 1), &v83, v69 + 1 - v62);
      }
    }

    a1[3170] -= 8;
    v71 = sub_163124(a1, v63);
    v17 = v71;
    if (v71)
    {
      v72 = v6[186];
      a1[v72 + 3149] = v71;
      if (v72 < 0x10)
      {
        v73 = v72 + 1;
      }

      else
      {
        v73 = 16;
      }

      v6[186] = v73;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_80:
  if (sub_160EF0(0xD8u, 7))
  {
    v74 = sub_160F34(0xD8u);
    v75 = sub_175AE4();
    v76 = sub_160F68(7);
    if (v74)
    {
      printf("%lld %d AVE %s: MP: enqueue_first_pass() returns stats %p\n", v75, 216, v76, v17);
      v77 = sub_175AE4();
      v79 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: enqueue_first_pass() returns stats %p", v77, 216, v79, v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: enqueue_first_pass() returns stats %p", v75, 216, v76, v17);
    }
  }

  return v17;
}

void sub_163FDC(uint64_t a1)
{
  v1 = a1 + 24576;
  if (sub_160EF0(0xD8u, 7))
  {
    v3 = sub_160F34(0xD8u);
    v4 = sub_175AE4();
    v5 = sub_160F68(7);
    if (v3)
    {
      printf("%lld %d AVE %s: MP: FinalizeSeqRcInfo()\n", v4, 216, v5);
      v6 = sub_175AE4();
      v54 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: FinalizeSeqRcInfo()", v6, 216, v54);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: FinalizeSeqRcInfo()", v4, 216, v5);
    }
  }

  v66 = 0;
  v67 = 0;
  v7 = (v1 + 1088);
  v2.n128_u64[0] = 0;
  v8 = 16;
  v9 = 0.1875;
  v68 = 0;
  do
  {
    v10 = *(v7 - 16);
    if (v10)
    {
      v11 = *v7;
      *&v64 = *(v7 - 16);
      *(&v64 + 1) = v11 / v10;
      *(&v64 + 1) = __PAIR64__(LODWORD(v9), v2.n128_u32[0]);
      sub_164678(&v66, &v64);
    }

    v2.n128_f32[0] = v9;
    v9 = v9 + 0.1875;
    ++v7;
    --v8;
  }

  while (v8);
  v12 = v66;
  v13 = v67;
  if (v66 == v67)
  {
    LODWORD(v64) = 1;
    *(&v64 + 4) = 1069547520;
    HIDWORD(v64) = 1077936128;
    sub_164678(&v66, &v64);
    v12 = v66;
    v13 = v67;
  }

  v14 = v13 - v12;
  if (v14 <= 3)
  {
    do
    {
      v15 = 126 - 2 * __clz(v14);
      if (v13 == v12)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      v2 = sub_1656F8(v12, v13, &v64, v16, 1, v2);
      v12 = v66;
      v17 = v66[1];
      v18 = v66[2];
      v19 = (v18 + v17) * 0.5;
      v20 = *v66;
      v21 = *v66 >> 1;
      v2.n128_f32[0] = (v17 + v66[3]) * 0.5;
      v66[1] = v2.n128_f32[0];
      v12->n128_f32[2] = v17;
      v12->n128_u32[0] = LODWORD(v20) - (LODWORD(v20) >> 1);
      v22 = v67;
      if (v67 >= v68)
      {
        v23 = v67 - v12;
        v24 = v67 - v12;
        v25 = v24 + 1;
        if ((v24 + 1) >> 60)
        {
          sub_1654F8();
        }

        v26 = v68 - v12;
        if ((v68 - v12) >> 3 > v25)
        {
          v25 = v26 >> 3;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF0)
        {
          v27 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          sub_1656B0(&v66, v27);
        }

        v28 = 16 * v24;
        *v28 = v21;
        *(v28 + 4) = v19;
        *(v28 + 8) = v18;
        *(v28 + 12) = v17;
        v13 = (16 * v24 + 16);
        memcpy(0, v12, v23);
        v29 = v66;
        v66 = 0;
        v67 = v13;
        v68 = 0;
        if (v29)
        {
          operator delete(v29);
          v12 = v66;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v67->n128_u32[0] = v21;
        v22[1] = v19;
        v22[2] = v18;
        v13 = (v22 + 4);
        v22[3] = v17;
      }

      v67 = v13;
      v14 = v13 - v12;
    }

    while (v14 < 4);
  }

  v30 = 126 - 2 * __clz(v14);
  if (v13 == v12)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  sub_16689C(v12, v13, &v64, v31, 1, v2);
  v64 = 0uLL;
  v65 = 0;
  v32 = v67[-1].n128_f32[3];
  v33 = v66[2];
  sub_164750(&v64, 4uLL);
  v34 = 0;
  v35 = (v32 - v33) * 0.25;
  v36 = v33 + v35;
  v37 = (v33 + (v33 + v35)) * 0.5;
  do
  {
    v38 = v64 + v34;
    *(v38 + 4) = v37;
    *(v38 + 8) = v33;
    *(v38 + 12) = v36;
    *v38 = 0;
    if (sub_160EF0(0x2Eu, 8))
    {
      if (sub_160F34(0x2Eu))
      {
        v39 = sub_175AE4();
        v40 = sub_160F68(8);
        printf("%lld %d AVE %s: center %f left %f right %f count %u\n", v39, 46, v40, *(v64 + v34 + 4), *(v64 + v34 + 8), *(v64 + v34 + 12), *(v64 + v34));
      }

      v41 = sub_175AE4();
      v42 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: center %f left %f right %f count %u", v41, 46, v42, *(v64 + v34 + 4), *(v64 + v34 + 8), *(v64 + v34 + 12), *(v64 + v34));
    }

    v37 = v35 + v37;
    v33 = v35 + v33;
    v36 = v35 + v36;
    v34 += 16;
  }

  while (v34 != 64);
  __p = 0;
  v62 = 0;
  v63 = 0;
  v43 = sub_167C20(&__p, v66, v67, (v67 - v66) >> 4);
  sub_164780(v43, &__p, &v64);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v44 = sub_167C20(&v58, v66, v67, (v67 - v66) >> 4);
  sub_164780(v44, &v58, &v64);
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  v55 = 0;
  v56 = 0;
  v57 = 0;
  v45 = sub_167C20(&v55, v66, v67, (v67 - v66) >> 4);
  sub_164780(v45, &v55, &v64);
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  v46 = (v1 + 1168);
  v47 = (v64 + 4);
  v48 = 4;
  do
  {
    *(v46 - 4) = *(v47 - 1);
    v49 = *v47;
    v47 += 4;
    *v46++ = v49;
    --v48;
  }

  while (v48);
  if (sub_160EF0(0x2Eu, 8))
  {
    if (sub_160F34(0x2Eu))
    {
      v50 = sub_175AE4();
      v51 = sub_160F68(8);
      printf("%lld %d AVE %s: log10_cplx quantized histogram : values %f %f %f %f counts %u %u %u %u\n", v50, 46, v51, *(v1 + 1168), *(v1 + 1172), *(v1 + 1176), *(v1 + 1180), *(v1 + 1152), *(v1 + 1156), *(v1 + 1160), *(v1 + 1164));
    }

    v52 = sub_175AE4();
    v53 = sub_160F68(8);
    syslog(3, "%lld %d AVE %s: log10_cplx quantized histogram : values %f %f %f %f counts %u %u %u %u", v52, 46, v53, *(v1 + 1168), *(v1 + 1172), *(v1 + 1176), *(v1 + 1180), *(v1 + 1152), *(v1 + 1156), *(v1 + 1160), *(v1 + 1164));
  }

  if (v64)
  {
    *(&v64 + 1) = v64;
    operator delete(v64);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }
}

void sub_1645EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = *(v27 - 120);
  if (v29)
  {
    *(v27 - 112) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_164678(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_1654F8();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1656B0(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_164750(uint64_t a1, unint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      *(a1 + 8) = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_167B28(a1, a2 - v2);
  }
}

void sub_164780(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (sub_160EF0(0xD8u, 7))
  {
    v5 = sub_160F34(0xD8u);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: MP: QuantizeData()\n", v6, 216, v7);
      v8 = sub_175AE4();
      v43 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: QuantizeData()", v8, 216, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: QuantizeData()", v6, 216, v7);
    }
  }

  v10 = *a3;
  v9 = a3[1];
  if (*a3 < v9)
  {
    v11 = a2[1];
    v12 = 0.0;
    do
    {
      v13 = *a2;
      v14 = 0.0;
      if (*a2 >= v11)
      {
        v40 = ((v12 + 0.0) + 0.5);
        *v10 = v40;
      }

      else
      {
        v15 = 0.0;
        do
        {
          if (sub_160EF0(0x2Eu, 8))
          {
            v16 = sub_160F34(0x2Eu);
            v17 = sub_175AE4();
            v18 = sub_160F68(8);
            v19 = *(v13 + 8);
            v20 = *(v13 + 4);
            v21 = *(v13 + 12);
            v22 = *(v10 + 8);
            v23 = *(v10 + 4);
            v24 = *(v10 + 12);
            if (v16)
            {
              printf("%lld %d AVE %s: it %f %f %f q_it %f %f %f\n", v17, 46, v18, v19, v20, v21, v22, *(v10 + 4), v24);
              v17 = sub_175AE4();
              v18 = sub_160F68(8);
              v19 = *(v13 + 8);
              v20 = *(v13 + 4);
              v21 = *(v13 + 12);
              v22 = *(v10 + 8);
              v23 = *(v10 + 4);
              v24 = *(v10 + 12);
            }

            syslog(3, "%lld %d AVE %s: it %f %f %f q_it %f %f %f", v17, 46, v18, v19, v20, v21, v22, v23, v24);
          }

          v25 = *(v13 + 12);
          v26 = *(v10 + 8);
          if (v25 > v26)
          {
            v27 = *(v13 + 8);
            v28 = *(v10 + 12);
            if (v27 < v28)
            {
              v29 = v27 >= v26 ? *(v13 + 8) : *(v10 + 8);
              v30 = v28 >= v25 ? *(v13 + 12) : *(v10 + 12);
              v31 = ((v30 - v29) * *v13) / (v25 - v27);
              v32 = (v29 + v30) * 0.5;
              v14 = v14 + v31;
              v15 = v15 + (v31 * v32);
              if (sub_160EF0(0x2Eu, 8))
              {
                v33 = sub_160F34(0x2Eu);
                v34 = sub_175AE4();
                v35 = sub_160F68(8);
                v36 = v29;
                v37 = v30;
                v38 = v31;
                v39 = v32;
                if (v33)
                {
                  printf("%lld %d AVE %s: left_overlap %f right_overlap %f l_count %f center %f\n", v34, 46, v35, v36, v37, v38, v39);
                  v34 = sub_175AE4();
                  v35 = sub_160F68(8);
                }

                syslog(3, "%lld %d AVE %s: left_overlap %f right_overlap %f l_count %f center %f", v34, 46, v35, v36, v37, v38, v39);
              }
            }
          }

          v13 += 16;
          v11 = a2[1];
        }

        while (v13 < v11);
        v40 = ((v12 + v14) + 0.5);
        *v10 = v40;
        if (v14 > 0.0)
        {
          *(v10 + 4) = v15 / v14;
        }
      }

      v12 = v14 - v40;
      v10 += 16;
      v9 = a3[1];
    }

    while (v10 < v9);
    v10 = *a3;
  }

  if (v10 < v9)
  {
    do
    {
      v41 = v10 + 16;
      if (v10 + 16 != v9)
      {
        v42 = (*(v10 + 4) + *(v10 + 20)) * 0.5;
        *(v10 + 12) = v42;
        *(v10 + 24) = v42;
      }

      v10 += 16;
    }

    while (v41 < v9);
  }
}

void sub_164AF8(uint64_t *a1, uint64_t a2, FILE *a3)
{
  if (sub_160EF0(0xD8u, 7))
  {
    v6 = sub_160F34(0xD8u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: MP: %s\n", v7, 216, v8, "FlushStats");
      v9 = sub_175AE4();
      v23 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: MP: %s", v9, 216, v23, "FlushStats");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: %s", v7, 216, v8, "FlushStats");
    }
  }

  v10 = 0;
  while (!v10 || *(v10 + 11) != -1)
  {
    v11 = sub_11CA40(a1);
    if (!v11)
    {
      break;
    }

    *(v11 + 44) = -1;
    v10 = sub_163A30(a1, v11, 0);
    if (!sub_160EF0(0xD8u, 7))
    {
      goto LABEL_19;
    }

    v12 = sub_160F34(0xD8u);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    if (v12)
    {
      if (v10)
      {
        v15 = *(v10 + 11);
      }

      else
      {
        v15 = -1;
      }

      printf("%lld %d AVE %s: MP: %s flushes stats %p display_order %d\n", v13, 216, v14, "FlushStats", v10, v15);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      if (!v10)
      {
LABEL_17:
        v16 = -1;
        goto LABEL_18;
      }
    }

    else if (!v10)
    {
      goto LABEL_17;
    }

    v16 = *(v10 + 11);
LABEL_18:
    syslog(3, "%lld %d AVE %s: MP: %s flushes stats %p display_order %d", v13, 216, v14, "FlushStats", v10, v16);
LABEL_19:
    if (v10 && *(v10 + 11) != -1)
    {
      if (a2)
      {
        Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
        CFDataAppendBytes(Mutable, v10, 1574);
        v25 = *(v10 + 4);
        v26 = *(v10 + 12);
        v27 = *(v10 + 20);
        v18 = VTMultiPassStorageSetDataAtTimeStamp();
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v18 && sub_160EF0(0x2Eu, 4))
        {
          v19 = sub_160F34(0x2Eu);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          if (v19)
          {
            printf("%lld %d AVE %s: MP: %s ERROR: VTMultiPassStorageSetDataAtTimeStamp failed ...\n", v20, 46, v21, "FlushStats");
            v22 = sub_175AE4();
            v24 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: MP: %s ERROR: VTMultiPassStorageSetDataAtTimeStamp failed ...", v22, 46, v24, "FlushStats");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: MP: %s ERROR: VTMultiPassStorageSetDataAtTimeStamp failed ...", v20, 46, v21, "FlushStats");
          }
        }
      }

      if (a3)
      {
        fseeko(a3, 1574 * *(v10 + 11) + 264, 0);
        fwrite(v10, 1uLL, 0x626uLL, a3);
      }
    }
  }

  sub_128654(a1);
  sub_163FDC(a1);
  if (a3)
  {
    fseek(a3, 0, 0);
    fwrite(a1 + 3187, 1uLL, 0x108uLL, a3);
  }
}

void *sub_164E20(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_165450(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_164FF4(a1, &v10);
}

void sub_164FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_164FF4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_165450(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1650FC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_165450(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_165208(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_165450(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_165310(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_165450(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_16541C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_165450(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_16541C();
}

uint64_t sub_165498(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

void sub_165510(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_16556C(exception, a1);
}

std::logic_error *sub_16556C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_1655A0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_16541C();
}

uint64_t sub_1655E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = *(v9 + 44);
    if (*(*v5 + 44) > v10)
    {
      do
      {
        v11 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v11;
      }

      while (*(*v5 + 44) > v10);
      *v11 = v8;
    }
  }

  return result;
}

void *sub_165644(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3 + 1];
    v5 = (2 * v3) | 1;
    v6 = 2 * v3 + 2;
    if (v6 < a3)
    {
      v7 = *(*v4 + 44) > *(v4[1] + 44);
      v4 += v7;
      if (v7)
      {
        v5 = v6;
      }
    }

    *a1 = *v4;
    a1 = v4;
    v3 = v5;
  }

  while (v5 <= (a3 - 2) / 2);
  return v4;
}

void sub_1656B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_16541C();
}

__n128 sub_1656F8(unsigned int *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 4;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v48 = a2[-1].n128_u32[0];
        v46 = a2 - 1;
        if (v48 <= *v12)
        {
          return result;
        }

LABEL_77:
        v77 = *v12;
        *v12 = *v46;
        result = v77;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v43 = (v12 + 4);
      v44 = v12[4];
      v47 = a2[-1].n128_u32[0];
      v46 = a2 - 1;
      v45 = v47;
      if (v44 > *v12)
      {
        if (v45 > v44)
        {
          goto LABEL_77;
        }

        v76 = *v12;
        *v12 = *v43;
        result = v76;
        *v43 = v76;
        if (v46->n128_u32[0] <= v12[4])
        {
          return result;
        }

        result = *v43;
        *v43 = *v46;
LABEL_78:
        *v46 = result;
        return result;
      }

      if (v45 <= v44)
      {
        return result;
      }

      result = *v43;
      *v43 = *v46;
      *v46 = result;
      goto LABEL_109;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = sub_165F20(v12, v12 + 1, v12 + 8, v12 + 3, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_1660A4(v12, a2);
      }

      else if (v12 != a2)
      {
        v52 = (v12 + 4);
        while (v52 != a2)
        {
          v53 = v52;
          v54 = *(a1 + 2);
          if (v54 > *a1)
          {
            v55 = *(a1 + 3);
            v56 = v53;
            do
            {
              result = v56[-1];
              *v56 = result;
              v57 = v56[-2].n128_u32[0];
              --v56;
            }

            while (v54 > v57);
            v56->n128_u64[0] = v54;
            v56->n128_u64[1] = v55;
          }

          v52 = v53 + 1;
          a1 = v53;
        }
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        sub_1665EC(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[4 * (v15 >> 1)];
    v17 = v16;
    v18 = v9->n128_u32[0];
    if (v15 >= 0x81)
    {
      v19 = *v16;
      if (*v16 <= *v12)
      {
        if (v18 > v19)
        {
          v61 = *v16;
          *v16 = *v9;
          *v9 = v61;
          if (*v16 > *v12)
          {
            v62 = *v12;
            *v12 = *v16;
            *v16 = v62;
          }
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v65 = *v12;
          *v12 = *v16;
          *v16 = v65;
          if (v9->n128_u32[0] <= *v16)
          {
            goto LABEL_28;
          }

          v59 = *v16;
          *v16 = *v9;
        }

        else
        {
          v59 = *v12;
          *v12 = *v9;
        }

        *v9 = v59;
      }

LABEL_28:
      v21 = (v12 + 4);
      v22 = (v16 - 4);
      v23 = *(v16 - 4);
      v24 = v10->n128_u32[0];
      if (v23 <= v12[4])
      {
        if (v24 > v23)
        {
          v66 = *v22;
          *v22 = *v10;
          *v10 = v66;
          if (v22->n128_u32[0] > v21->n128_u32[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 <= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (v10->n128_u32[0] <= v22->n128_u32[0])
          {
            goto LABEL_40;
          }

          v68 = *v22;
          *v22 = *v10;
          v25 = v68;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = (v12 + 8);
      v31 = v16[4];
      v29 = (v16 + 4);
      v30 = v31;
      v32 = v11->n128_u32[0];
      if (v31 <= v12[8])
      {
        if (v32 > v30)
        {
          v69 = *v29;
          *v29 = *v11;
          *v11 = v69;
          if (v29->n128_u32[0] > v28->n128_u32[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 <= v30)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (v11->n128_u32[0] <= v29->n128_u32[0])
          {
            goto LABEL_49;
          }

          v70 = *v29;
          *v29 = *v11;
          v33 = v70;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = *v17;
      v37 = v29->n128_u32[0];
      if (*v17 <= v22->n128_u32[0])
      {
        if (v37 > v36)
        {
          v72 = *v17;
          *v17 = *v29;
          *v29 = v72;
          if (*v17 > v22->n128_u32[0])
          {
            v73 = *v22;
            *v22 = *v17;
            *v17 = v73;
          }
        }

        goto LABEL_58;
      }

      if (v37 <= v36)
      {
        v74 = *v22;
        *v22 = *v17;
        *v17 = v74;
        if (v29->n128_u32[0] <= *v17)
        {
LABEL_58:
          v75 = *v12;
          *v12 = *v17;
          *v17 = v75;
          goto LABEL_59;
        }

        v71 = *v17;
        *v17 = *v29;
      }

      else
      {
        v71 = *v22;
        *v22 = *v29;
      }

      *v29 = v71;
      goto LABEL_58;
    }

    v20 = *v12;
    if (*v12 <= *v17)
    {
      if (v18 > v20)
      {
        v63 = *v12;
        *v12 = *v9;
        *v9 = v63;
        if (*v12 > *v17)
        {
          v64 = *v17;
          *v17 = *v12;
          *v12 = v64;
        }
      }
    }

    else
    {
      if (v18 > v20)
      {
        v60 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v60;
        goto LABEL_59;
      }

      v67 = *v17;
      *v17 = *v12;
      *v12 = v67;
      if (v9->n128_u32[0] > *v12)
      {
        v60 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *(v12 - 4) <= *v12)
    {
      v12 = sub_166128(v12, a2);
      goto LABEL_66;
    }

    v38 = sub_1661E8(v12, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_64;
    }

    v41 = sub_1662B0(v12, v38, v39);
    v12 = (v38 + 1);
    if (sub_1662B0((v38 + 1), a2, v42))
    {
      a4 = -v14;
      a2 = v38;
      if (v41)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v41)
    {
LABEL_64:
      sub_1656F8(a1, v38, a3, -v14, a5 & 1);
      v12 = (v38 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v43 = (v12 + 4);
  v49 = v12[4];
  v50 = (v12 + 8);
  v51 = v12[8];
  if (v49 <= *v12)
  {
    if (v51 > v49)
    {
      result = *v43;
      *v43 = *v50;
      *v50 = result;
      if (v12[4] > *v12)
      {
        v79 = *v12;
        *v12 = *v43;
        result = v79;
        *v43 = v79;
      }
    }
  }

  else
  {
    if (v51 > v49)
    {
      v78 = *v12;
      *v12 = *v50;
      result = v78;
      goto LABEL_105;
    }

    v80 = *v12;
    *v12 = *v43;
    result = v80;
    *v43 = v80;
    if (v51 > v12[4])
    {
      result = *v43;
      *v43 = *v50;
LABEL_105:
      *v50 = result;
    }
  }

  if (v9->n128_u32[0] <= v50->n128_u32[0])
  {
    return result;
  }

  result = *v50;
  *v50 = *v9;
  *v9 = result;
  if (v50->n128_u32[0] <= v43->n128_u32[0])
  {
    return result;
  }

  result = *v43;
  *v43 = *v50;
  *v50 = result;
LABEL_109:
  if (v12[4] > *v12)
  {
    v81 = *v12;
    *v12 = *v43;
    result = v81;
    *v43 = v81;
  }

  return result;
}

__n128 sub_165F20(__n128 *a1, __n128 *a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u32[0];
  v7 = *a3;
  if (a2->n128_u32[0] <= a1->n128_u32[0])
  {
    if (v7 > v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] > a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 > a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 > *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 > a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] > a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 > *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 > *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 > a2->n128_u32[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u32[0] > a1->n128_u32[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

void *sub_1660A4(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (v6 > *v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 16);
            v8 -= 16;
            if (v6 <= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unsigned int *sub_166128(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a1;
  if (v3 <= *(a2 - 4))
  {
    v6 = a1 + 4;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 += 4;
    }

    while (v3 <= *v4);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[4];
      v4 += 4;
    }

    while (v3 <= v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2 - 4);
      a2 -= 4;
    }

    while (v3 > v7);
  }

  while (v4 < a2)
  {
    v11 = *v4;
    *v4 = *a2;
    *a2 = v11;
    do
    {
      v8 = v4[4];
      v4 += 4;
    }

    while (v3 <= v8);
    do
    {
      v9 = *(a2 - 4);
      a2 -= 4;
    }

    while (v3 > v9);
  }

  if (v4 - 4 != a1)
  {
    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

__int128 *sub_1661E8(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  do
  {
    v5 = a1[++v2];
  }

  while (v4 < v5);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = *(a2-- - 4);
    }

    while (v4 >= v9);
  }

  else
  {
    do
    {
      v8 = *(a2-- - 4);
    }

    while (v4 >= v8);
  }

  if (v6 < a2)
  {
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      do
      {
        v13 = *(v10++ + 4);
      }

      while (v4 < v13);
      do
      {
        v14 = *(v11-- - 4);
      }

      while (v4 >= v14);
    }

    while (v10 < v11);
    v7 = v10 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL sub_1662B0(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u32[0];
      v4 = a2 - 1;
      v8 = v9;
      if (v7 > *a1)
      {
        if (v8 <= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_u32[0] <= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v8 <= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) > *a1)
      {
        v42 = *a1;
        *a1 = *v6;
        *v6 = v42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      sub_165F20(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (v17 <= *a1)
    {
      if (v19 > v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_u32[0] > v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 <= v17)
    {
      v39 = *a1;
      *a1 = *v6;
      *v6 = v39;
      if (v19 <= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_u32[0] <= v18->n128_u32[0])
    {
      return 1;
    }

    v40 = *v18;
    *v18 = *v20;
    *v20 = v40;
    if (v18->n128_u32[0] <= v6->n128_u32[0])
    {
      return 1;
    }

    v41 = *v6;
    *v6 = *v18;
    *v18 = v41;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u32[0];
    v4 = a2 - 1;
    if (v5 <= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 <= *a1)
  {
    if (v12 > v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_u32[0] > v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 <= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 <= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    v34 = v11->n128_u32[0];
    v35 = *v30;
    if (v35 > v34)
    {
      v36 = v31;
      while (1)
      {
        *(a1 + v36 + 48) = *(a1 + v36 + 32);
        if (v36 == -32)
        {
          break;
        }

        v37 = *(a1 + v36 + 16);
        v36 -= 16;
        if (v35 <= v37)
        {
          v38 = (a1 + v36 + 48);
          goto LABEL_41;
        }
      }

      v38 = a1;
LABEL_41:
      *v38 = v33;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

__int128 *sub_1665EC(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_1667DC(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 > *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_1667DC(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v30 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[v14];
          v17 = v16 + 1;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = *(v16 + 8);
            v19 = v16 + 2;
            if (*(v19 - 4) <= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v17 == --v6)
        {
          *v17 = v30;
        }

        else
        {
          *v17 = *v6;
          *v6 = v30;
          v21 = (v17 - a1 + 16) >> 4;
          v22 = v21 < 2;
          v23 = v21 - 2;
          if (!v22)
          {
            v24 = v23 >> 1;
            v25 = &a1[v24];
            v26 = *v17;
            if (*v25 > *v17)
            {
              v27 = *(v17 + 1);
              do
              {
                v28 = v25;
                *v17 = *v25;
                if (!v24)
                {
                  break;
                }

                v24 = (v24 - 1) >> 1;
                v25 = &a1[v24];
                v17 = v28;
              }

              while (*v25 > v26);
              *v28 = v26;
              *(v28 + 1) = v27;
            }
          }
        }

        v22 = v8-- <= 2;
      }

      while (!v22);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1667DC(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      v10 = *v8;
      if (v9 < a3 && v10 > *(v8 + 2))
      {
        v10 = *(v8++ + 2);
        v7 = v9;
      }

      v11 = *a4;
      v12 = *a4;
      if (v12 >= v10)
      {
        do
        {
          v13 = v8;
          *a4 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = (2 * v7) | 1;
          v8 = (result + 16 * v14);
          v15 = 2 * v7 + 2;
          v16 = *v8;
          if (v15 < a3 && v16 > *(v8 + 2))
          {
            v16 = *(v8++ + 2);
            v14 = v15;
          }

          a4 = v13;
          v7 = v14;
        }

        while (v12 >= v16);
        *v13 = v11;
      }
    }
  }

  return result;
}

__n128 sub_16689C(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        result.n128_u32[0] = a2[-1].n128_u32[1];
        if (result.n128_f32[0] >= v12->n128_f32[1])
        {
          return result;
        }

LABEL_77:
        v65 = *v12;
        *v12 = *v9;
        result = v65;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v42 = v12 + 1;
      v43 = v12 + 2;
      v44 = v12[1].n128_f32[1];
      v45 = v12[2].n128_f32[1];
      if (v44 >= v12->n128_f32[1])
      {
        if (v45 < v44)
        {
          result = *v42;
          *v42 = *v43;
          *v43 = result;
          if (v12[1].n128_f32[1] < v12->n128_f32[1])
          {
            v68 = *v12;
            *v12 = *v42;
            result = v68;
            *v42 = v68;
          }
        }
      }

      else
      {
        if (v45 < v44)
        {
          v66 = *v12;
          *v12 = *v43;
          result = v66;
          goto LABEL_101;
        }

        v69 = *v12;
        *v12 = *v42;
        *v42 = v69;
        if (v45 < v12[1].n128_f32[1])
        {
          result = *v42;
          *v42 = *v43;
LABEL_101:
          *v43 = result;
        }
      }

      result.n128_u32[0] = a2[-1].n128_u32[1];
      if (result.n128_f32[0] < v12[2].n128_f32[1])
      {
        result = *v43;
        *v43 = *v9;
        *v9 = result;
        result.n128_u32[0] = v12[2].n128_u32[1];
        if (result.n128_f32[0] < v12[1].n128_f32[1])
        {
          result = *v42;
          *v42 = *v43;
          *v43 = result;
          result.n128_u32[0] = v12[1].n128_u32[1];
          if (result.n128_f32[0] < v12->n128_f32[1])
          {
            v70 = *v12;
            *v12 = *v42;
            result = v70;
            *v42 = v70;
          }
        }
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = sub_1670C4(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_167248(v12, a2);
      }

      else
      {

        sub_1672D4(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        sub_167850(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = a2[-1].n128_f32[1];
    if (v15 >= 0x81)
    {
      v18 = v16->n128_f32[1];
      if (v18 >= v12->n128_f32[1])
      {
        if (v17 < v18)
        {
          v49 = *v16;
          *v16 = *v9;
          *v9 = v49;
          if (v16->n128_f32[1] < v12->n128_f32[1])
          {
            v50 = *v12;
            *v12 = *v16;
            *v16 = v50;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v47 = *v12;
          *v12 = *v9;
          goto LABEL_27;
        }

        v53 = *v12;
        *v12 = *v16;
        *v16 = v53;
        if (a2[-1].n128_f32[1] < v16->n128_f32[1])
        {
          v47 = *v16;
          *v16 = *v9;
LABEL_27:
          *v9 = v47;
        }
      }

      v20 = v12 + 1;
      v21 = v16 - 1;
      v22 = v16[-1].n128_f32[1];
      v23 = a2[-2].n128_f32[1];
      if (v22 >= v12[1].n128_f32[1])
      {
        if (v23 < v22)
        {
          v54 = *v21;
          *v21 = *v10;
          *v10 = v54;
          if (v16[-1].n128_f32[1] < v12[1].n128_f32[1])
          {
            v25 = *v20;
            *v20 = *v21;
            *v21 = v25;
          }
        }
      }

      else
      {
        if (v23 < v22)
        {
          v24 = *v20;
          *v20 = *v10;
          goto LABEL_39;
        }

        v26 = *v20;
        *v20 = *v21;
        *v21 = v26;
        if (a2[-2].n128_f32[1] < v16[-1].n128_f32[1])
        {
          v56 = *v21;
          *v21 = *v10;
          v24 = v56;
LABEL_39:
          *v10 = v24;
        }
      }

      v27 = v12 + 2;
      v28 = v16 + 1;
      v29 = v16[1].n128_f32[1];
      v30 = a2[-3].n128_f32[1];
      if (v29 >= v12[2].n128_f32[1])
      {
        if (v30 < v29)
        {
          v57 = *v28;
          *v28 = *v11;
          *v11 = v57;
          if (v16[1].n128_f32[1] < v12[2].n128_f32[1])
          {
            v32 = *v27;
            *v27 = *v28;
            *v28 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v27;
          *v27 = *v11;
          goto LABEL_48;
        }

        v33 = *v27;
        *v27 = *v28;
        *v28 = v33;
        if (a2[-3].n128_f32[1] < v16[1].n128_f32[1])
        {
          v58 = *v28;
          *v28 = *v11;
          v31 = v58;
LABEL_48:
          *v11 = v31;
        }
      }

      v34 = v16->n128_f32[1];
      v35 = v16[1].n128_f32[1];
      if (v34 >= v16[-1].n128_f32[1])
      {
        if (v35 < v34)
        {
          v60 = *v16;
          *v16 = *v28;
          *v28 = v60;
          if (v16->n128_f32[1] < v16[-1].n128_f32[1])
          {
            v61 = *v21;
            *v21 = *v16;
            *v16 = v61;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v59 = *v21;
          *v21 = *v28;
          goto LABEL_57;
        }

        v62 = *v21;
        *v21 = *v16;
        *v16 = v62;
        if (v16[1].n128_f32[1] < v16->n128_f32[1])
        {
          v59 = *v16;
          *v16 = *v28;
LABEL_57:
          *v28 = v59;
        }
      }

      v63 = *v12;
      *v12 = *v16;
      *v16 = v63;
      goto LABEL_59;
    }

    v19 = v12->n128_f32[1];
    if (v19 >= v16->n128_f32[1])
    {
      if (v17 < v19)
      {
        v51 = *v12;
        *v12 = *v9;
        *v9 = v51;
        if (v12->n128_f32[1] < v16->n128_f32[1])
        {
          v52 = *v16;
          *v16 = *v12;
          *v12 = v52;
        }
      }
    }

    else
    {
      if (v17 < v19)
      {
        v48 = *v16;
        *v16 = *v9;
LABEL_36:
        *v9 = v48;
        goto LABEL_59;
      }

      v55 = *v16;
      *v16 = *v12;
      *v12 = v55;
      if (a2[-1].n128_f32[1] < v12->n128_f32[1])
      {
        v48 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && v12[-1].n128_f32[1] >= v12->n128_f32[1])
    {
      v12 = sub_167338(v12, a2);
      goto LABEL_66;
    }

    v36 = sub_167420(v12, a2);
    if ((v38 & 1) == 0)
    {
      goto LABEL_64;
    }

    v39 = sub_16750C(v12, v36, v37);
    v12 = v36 + 1;
    if (sub_16750C(v36 + 1, a2, v40))
    {
      a4 = -v14;
      a2 = v36;
      if (v39)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v39)
    {
LABEL_64:
      sub_16689C(a1, v36, a3, -v14, a5 & 1);
      v12 = v36 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  result.n128_u32[0] = v12[1].n128_u32[1];
  v41 = a2[-1].n128_f32[1];
  if (result.n128_f32[0] < v12->n128_f32[1])
  {
    if (v41 < result.n128_f32[0])
    {
      goto LABEL_77;
    }

    v64 = *v12;
    *v12 = v12[1];
    result = v64;
    v12[1] = v64;
    result.n128_u32[0] = a2[-1].n128_u32[1];
    if (result.n128_f32[0] >= v12[1].n128_f32[1])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v9;
LABEL_78:
    *v9 = result;
    return result;
  }

  if (v41 < result.n128_f32[0])
  {
    result = v12[1];
    v12[1] = *v9;
    *v9 = result;
    result.n128_u32[0] = v12[1].n128_u32[1];
    if (result.n128_f32[0] < v12->n128_f32[1])
    {
      v67 = *v12;
      *v12 = v12[1];
      result = v67;
      v12[1] = v67;
    }
  }

  return result;
}

__n128 sub_1670C4(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f32[1];
  v7 = a3->n128_f32[1];
  if (v6 >= a1->n128_f32[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[1] < a1->n128_f32[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_f32[1] < a2->n128_f32[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f32[1] < a3->n128_f32[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_f32[1] < a2->n128_f32[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[1] < a1->n128_f32[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u32[0] = a5->n128_u32[1];
  if (result.n128_f32[0] < a4->n128_f32[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u32[0] = a4->n128_u32[1];
    if (result.n128_f32[0] < a3->n128_f32[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_u32[0] = a3->n128_u32[1];
      if (result.n128_f32[0] < a2->n128_f32[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u32[0] = a2->n128_u32[1];
        if (result.n128_f32[0] < a1->n128_f32[1])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

void *sub_167248(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 2);
        if (*(&v6 + 1) < v4[1])
        {
          v7 = *(v4 + 3);
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 12);
            v8 -= 16;
            if (*(&v6 + 1) >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

uint64_t sub_1672D4(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = *(result + 16);
      if (*(&v4 + 1) < *(result + 4))
      {
        v5 = *(result + 24);
        v6 = v3;
        do
        {
          *v6 = *(v6 - 16);
          v7 = *(v6 - 28);
          v6 -= 16;
        }

        while (*(&v4 + 1) < v7);
        *v6 = v4;
        *(v6 + 8) = v5;
      }

      v2 = v3 + 16;
      result = v3;
    }
  }

  return result;
}

unint64_t sub_167338(float *a1, float *a2)
{
  v2 = *a1;
  LODWORD(v3) = HIDWORD(*a1);
  if (v3 >= *(a2 - 3))
  {
    v7 = a1 + 4;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = v7[1];
      v7 += 4;
    }

    while (v3 >= v8);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = (v4 + 4);
      v6 = v4[5];
      v4 += 4;
    }

    while (v3 >= v6);
  }

  if (v5 >= a2)
  {
    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 4;
      v10 = *(a2 - 3);
      a2 -= 4;
    }

    while (v3 < v10);
  }

  while (v5 < v9)
  {
    v14 = *v5;
    *v5 = *v9;
    *v9 = v14;
    do
    {
      v11 = *(v5 + 20);
      v5 += 16;
    }

    while (v3 >= v11);
    do
    {
      v12 = *(v9 - 3);
      v9 -= 4;
    }

    while (v3 < v12);
  }

  if ((v5 - 16) != a1)
  {
    *a1 = *(v5 - 16);
  }

  *(v5 - 16) = v2;
  return v5;
}

__int128 *sub_167420(__int128 *a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  LODWORD(v4) = HIDWORD(*a1);
  do
  {
    v5 = *(&a1[++v2] + 1);
  }

  while (v5 < v4);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    while (v6 < a2)
    {
      v8 = a2 - 4;
      v10 = *(a2 - 3);
      a2 -= 4;
      if (v10 < v4)
      {
        goto LABEL_9;
      }
    }

    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 4;
      v9 = *(a2 - 3);
      a2 -= 4;
    }

    while (v9 >= v4);
  }

LABEL_9:
  if (v6 < v8)
  {
    v11 = v6;
    v12 = v8;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      do
      {
        v14 = *(v11 + 20);
        v11 += 16;
      }

      while (v14 < v4);
      do
      {
        v15 = *(v12 - 3);
        v12 -= 4;
      }

      while (v15 >= v4);
    }

    while (v11 < v12);
    v7 = (v11 - 16);
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL sub_16750C(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = a2 - 1;
      v5 = a1[1].n128_f32[1];
      v6 = a2[-1].n128_f32[1];
      if (v5 >= a1->n128_f32[1])
      {
        if (v6 < v5)
        {
          v21 = a1[1];
          a1[1] = *v4;
          *v4 = v21;
          if (a1[1].n128_f32[1] < a1->n128_f32[1])
          {
            v22 = *a1;
            *a1 = a1[1];
            a1[1] = v22;
          }
        }

        return 1;
      }

      if (v6 < v5)
      {
        goto LABEL_49;
      }

      v7 = *a1;
      *a1 = a1[1];
      a1[1] = v7;
      if (a2[-1].n128_f32[1] < a1[1].n128_f32[1])
      {
        v8 = a1[1];
        a1[1] = *v4;
LABEL_50:
        *v4 = v8;
        return 1;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_1670C4(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

      goto LABEL_14;
    }

    v4 = a1 + 1;
    v15 = a1 + 2;
    v16 = a2 - 1;
    v17 = a1[1].n128_f32[1];
    v18 = a1->n128_f32[1];
    v19 = a1[2].n128_f32[1];
    if (v17 >= v18)
    {
      if (v19 < v17)
      {
        v25 = *v4;
        *v4 = *v15;
        *v15 = v25;
        if (a1[1].n128_f32[1] < v18)
        {
          v26 = *a1;
          *a1 = *v4;
          *v4 = v26;
        }
      }
    }

    else
    {
      if (v19 < v17)
      {
        v20 = *a1;
        *a1 = *v15;
LABEL_45:
        *v15 = v20;
        goto LABEL_46;
      }

      v36 = *a1;
      *a1 = *v4;
      *v4 = v36;
      if (v19 < a1[1].n128_f32[1])
      {
        v20 = *v4;
        *v4 = *v15;
        goto LABEL_45;
      }
    }

LABEL_46:
    if (a2[-1].n128_f32[1] >= a1[2].n128_f32[1])
    {
      return 1;
    }

    v37 = *v15;
    *v15 = *v16;
    *v16 = v37;
    if (a1[2].n128_f32[1] >= a1[1].n128_f32[1])
    {
      return 1;
    }

    v38 = *v4;
    *v4 = *v15;
    *v15 = v38;
    if (a1[1].n128_f32[1] >= a1->n128_f32[1])
    {
      return 1;
    }

    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_f32[1] < a1->n128_f32[1])
    {
      v4 = a2 - 1;
LABEL_49:
      v8 = *a1;
      *a1 = *v4;
      goto LABEL_50;
    }

    return 1;
  }

LABEL_14:
  v9 = a1 + 2;
  v10 = a1 + 1;
  v11 = a1[1].n128_f32[1];
  v12 = a1->n128_f32[1];
  v13 = a1[2].n128_f32[1];
  if (v11 >= v12)
  {
    if (v13 < v11)
    {
      v23 = *v10;
      *v10 = *v9;
      *v9 = v23;
      if (a1[1].n128_f32[1] < v12)
      {
        v24 = *a1;
        *a1 = *v10;
        *v10 = v24;
      }
    }
  }

  else
  {
    if (v13 >= v11)
    {
      v27 = *a1;
      *a1 = *v10;
      *v10 = v27;
      if (v13 >= a1[1].n128_f32[1])
      {
        goto LABEL_32;
      }

      v14 = *v10;
      *v10 = *v9;
    }

    else
    {
      v14 = *a1;
      *a1 = *v9;
    }

    *v9 = v14;
  }

LABEL_32:
  v28 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    v31 = *v28;
    LODWORD(v32) = HIDWORD(v28->n128_u64[0]);
    if (v32 < v9->n128_f32[1])
    {
      v33 = v29;
      while (1)
      {
        *(a1 + v33 + 48) = *(a1 + v33 + 32);
        if (v33 == -32)
        {
          break;
        }

        v34 = *(&a1[1].n128_f32[1] + v33);
        v33 -= 16;
        if (v32 >= v34)
        {
          v35 = (a1 + v33 + 48);
          goto LABEL_40;
        }
      }

      v35 = a1;
LABEL_40:
      *v35 = v31;
      if (++v30 == 8)
      {
        return &v28[1] == a2;
      }
    }

    v9 = v28;
    v29 += 16;
    if (++v28 == a2)
    {
      return 1;
    }
  }
}

__int128 *sub_167850(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        sub_1679FC(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*(v12 + 1) < *(a1 + 4))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_1679FC(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v21 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[v14];
          v17 = v16 + 1;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else if (*(v16 + 5) >= *(v16 + 9))
          {
            v14 = v18;
          }

          else
          {
            v17 = v16 + 2;
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v17 == --v6)
        {
          *v17 = v21;
        }

        else
        {
          *v17 = *v6;
          *v6 = v21;
          sub_167AC4(a1, (v17 + 1), a4, (v17 - a1 + 16) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1679FC(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3 && *(v8 + 4) < *(v8 + 20))
      {
        v8 += 16;
        v7 = v9;
      }

      v10 = *a4;
      LODWORD(v11) = HIDWORD(*a4);
      if (*(v8 + 4) >= v11)
      {
        do
        {
          v12 = v8;
          *a4 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = result + 16 * v7;
          v14 = v13 + 2;
          if (v14 < a3 && *(v8 + 4) < *(v8 + 20))
          {
            v8 += 16;
            v7 = v14;
          }

          a4 = v12;
        }

        while (*(v8 + 4) >= v11);
        *v12 = v10;
      }
    }
  }

  return result;
}

uint64_t sub_167AC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v7 = (a2 - 16);
    v6 = *(a2 - 16);
    if (*(v5 + 4) < *(&v6 + 1))
    {
      v8 = *(a2 - 8);
      do
      {
        v9 = v5;
        *v7 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
        v7 = v9;
      }

      while (*(v5 + 4) < *(&v6 + 1));
      *v9 = v6;
      v9[1] = v8;
    }
  }

  return result;
}

void sub_167B28(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    a1[1] = &v5[16 * a2];
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      sub_1654F8();
    }

    v9 = v7 >> 4;
    v10 = v4 - v6;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF0;
    v12 = 0xFFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v8;
    }

    if (v12)
    {
      sub_1656B0(a1, v12);
    }

    memcpy(0, v6, v7);
    v13 = *a1;
    *a1 = 0;
    a1[1] = (16 * v9 + 16 * a2);
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t sub_167C20(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_167C9C(result, a4);
  }

  return result;
}

void sub_167C80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_167C9C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1656B0(a1, a2);
  }

  sub_1654F8();
}

const char *sub_167CD8(int a1)
{
  result = "v024\b";
  v3 = 86;
  while (*result != a1)
  {
    result += 44;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_167D10(_DWORD *a1)
{
  v1 = a1[8];
  v2 = &dword_19DC50;
  v3 = 86;
  while (v1 != -1 && v1 != v2[4] || a1[6] != v2[2] || a1[3] != *(v2 - 1) || a1[1] != *(v2 - 3) || a1[2] != *(v2 - 2) || a1[4] != *v2 || a1[5] != v2[1])
  {
    v2 += 11;
    if (!--v3)
    {
      return 0;
    }
  }

  return *(v2 - 4);
}

uint64_t sub_167DB0(int a1, int *a2, int a3)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v6 = sub_160F34(0xD4u);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %d\n", v7, 212, v8, "AVE_PS_CalcSizeOfavcC", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %p %d", v7);
  }

  if (sub_160EF0(0xD4u, 8))
  {
    v9 = sub_160F34(0xD4u);
    v10 = sub_175AE4();
    v11 = sub_160F68(8);
    v12 = *a2;
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d pInfo->iNum %d\n", v10, 212, v11, "AVE_PS_CalcSizeOfavcC", 80, v12);
      v13 = sub_175AE4();
      v14 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s:%d pInfo->iNum %d", v13, 212, v14, "AVE_PS_CalcSizeOfavcC", 80, *a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d pInfo->iNum %d", v10, 212, v11, "AVE_PS_CalcSizeOfavcC", 80, v12);
    }
  }

  v33 = a3;
  if (*a2 < 1)
  {
    v17 = 7;
  }

  else
  {
    v15 = 0;
    v16 = (a2 + 4);
    v17 = 7;
    do
    {
      if (*v16)
      {
        if (*(v16 - 2) == a1 && (*(v16 - 3) & 0xFFFFFFFE) == 2)
        {
          v17 = v17 + *v16 - 2;
          if (sub_160EF0(0xD4u, 8))
          {
            v18 = sub_160F34(0xD4u);
            v19 = sub_175AE4();
            v20 = sub_160F68(8);
            v21 = *v16;
            if (v18)
            {
              printf("%lld %d AVE %s: %s:%d i %d iSize %d size %d\n", v19, 212, v20, "AVE_PS_CalcSizeOfavcC", 92, v15, *v16, v17);
              v19 = sub_175AE4();
              v20 = sub_160F68(8);
            }

            syslog(3, "%lld %d AVE %s: %s:%d i %d iSize %d size %d", v19, 212, v20, "AVE_PS_CalcSizeOfavcC", 92, v15, *v16, v17);
          }
        }
      }

      ++v15;
      v16 += 4;
    }

    while (v15 < *a2);
  }

  if ((v33 - 6) >= 3)
  {
    v22 = v17;
  }

  else
  {
    v22 = (v17 + 4);
    if (sub_160EF0(0xD4u, 8))
    {
      v23 = sub_160F34(0xD4u);
      v24 = sub_175AE4();
      v25 = sub_160F68(8);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d size %d\n", v24, 212, v25, "AVE_PS_CalcSizeOfavcC", 101, v17 + 4);
        v26 = sub_175AE4();
        v32 = sub_160F68(8);
        syslog(3, "%lld %d AVE %s: %s:%d size %d", v26, 212, v32, "AVE_PS_CalcSizeOfavcC", 101, v17 + 4);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d size %d", v24, 212, v25, "AVE_PS_CalcSizeOfavcC", 101, v17 + 4);
      }
    }
  }

  if (sub_160EF0(0xD4u, 8))
  {
    v27 = sub_160F34(0xD4u);
    v28 = sub_175AE4();
    v29 = sub_160F68(8);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d %d\n", v28, 212, v29, "AVE_PS_CalcSizeOfavcC", a1, a2, v33, v22);
      v30 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d", v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d", v28);
    }
  }

  return v22;
}

uint64_t sub_16821C(int a1, char *a2, unsigned int *a3, int *a4, _BYTE *a5, int a6)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v10 = sub_160F34(0xD4u);
    v11 = sub_175AE4();
    v12 = sub_160F68(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p %d\n", v11, 212, v12, "AVE_PS_Compose_avcC", a1, a2, a3, a4, a5, a6);
      v13 = sub_175AE4();
      v53 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p %d", v13, 212, v53, "AVE_PS_Compose_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p %d", v11, 212, v12, "AVE_PS_Compose_avcC");
    }
  }

  *a5 = 1;
  a5[1] = sub_132570(*a4);
  v14 = a4[5];
  v15 = a4[6];
  v16 = (a4[2] << 6) | (a4[1] << 7) | (32 * a4[3]) | (16 * a4[4]) | (8 * v14) | (4 * v15);
  a5[2] = (*(a4 + 8) << 6) | (*(a4 + 4) << 7) | (32 * *(a4 + 12)) | (16 * *(a4 + 16)) | (8 * v14) | (4 * v15);
  a5[3] = sub_132AEC(a4[7]);
  a5[4] = -1;
  v17 = *a3;
  if (*a3 < 1)
  {
    goto LABEL_43;
  }

  v57 = a4;
  v18 = 0;
  v19 = 0;
  v20 = a2 + 4;
  v21 = a3 + 2;
  v22 = 6;
  do
  {
    v23 = v21[2];
    if (v23 && *v21 == a1 && *(v21 - 1) == 2)
    {
      v24 = v23 - 4;
      *&a5[v22] = bswap32(v23 - 4) >> 16;
      v25 = v22 + 2;
      memcpy(&a5[v25], &v20[v21[1]], (v23 - 4));
      v22 = v25 + v24;
      ++v19;
      v17 = *a3;
    }

    ++v18;
    v21 += 4;
  }

  while (v18 < v17);
  a4 = v57;
  if (!v19)
  {
LABEL_43:
    if (sub_160EF0(0xD4u, 4))
    {
      v37 = sub_160F34(0xD4u);
      v38 = sub_175AE4();
      v39 = sub_160F68(4);
      if (!v37)
      {
        v56 = *a3;
        v55 = 191;
        v54 = v39;
        v46 = "%lld %d AVE %s: %s:%d %s | no SPS %d";
        goto LABEL_34;
      }

      printf("%lld %d AVE %s: %s:%d %s | no SPS %d\n", v38, 212, v39, "AVE_PS_Compose_avcC", 191, "cnt != 0", *a3);
      v40 = sub_175AE4();
      sub_160F68(4);
      v41 = *a3;
      syslog(3, "%lld %d AVE %s: %s:%d %s | no SPS %d", v40);
    }

LABEL_35:
    v36 = 4294966295;
    goto LABEL_36;
  }

  a5[5] = v19 | 0xE0;
  v26 = *a3;
  if (*a3 < 1)
  {
    goto LABEL_44;
  }

  v27 = 0;
  v28 = 0;
  v29 = v22 + 1;
  v30 = a3 + 2;
  do
  {
    v31 = v30[2];
    if (v31 && *v30 == a1 && *(v30 - 1) == 3)
    {
      v32 = v31 - 4;
      *&a5[v29] = bswap32(v31 - 4) >> 16;
      v33 = a3;
      v34 = v29 + 2;
      memcpy(&a5[v34], &v20[v30[1]], (v31 - 4));
      v29 = v34 + v32;
      a3 = v33;
      ++v28;
      v26 = *v33;
    }

    ++v27;
    v30 += 4;
  }

  while (v27 < v26);
  a4 = v57;
  if (!v28)
  {
LABEL_44:
    if (sub_160EF0(0xD4u, 4))
    {
      v42 = sub_160F34(0xD4u);
      v38 = sub_175AE4();
      v43 = sub_160F68(4);
      if (v42)
      {
        printf("%lld %d AVE %s: %s:%d %s | no PPS %d\n", v38, 212, v43, "AVE_PS_Compose_avcC", 226, "cnt != 0", *a3);
        v44 = sub_175AE4();
        sub_160F68(4);
        v45 = *a3;
        syslog(3, "%lld %d AVE %s: %s:%d %s | no PPS %d", v44);
        goto LABEL_35;
      }

      v56 = *a3;
      v55 = 226;
      v54 = v43;
      v46 = "%lld %d AVE %s: %s:%d %s | no PPS %d";
LABEL_34:
      syslog(3, v46, v38, 212, v54, "AVE_PS_Compose_avcC", v55, "cnt != 0", v56);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  a5[v22] = v28;
  if ((*v57 - 6) <= 2)
  {
    v35 = &a5[v29];
    *v35 = *(v57 + 36) | 0xFC;
    v35[1] = *(v57 + 44) | 0xF8;
    v35[2] = *(v57 + 48) | 0xF8;
    v35[3] = 0;
    v29 += 4;
  }

  if (v29 <= a6)
  {
    v36 = 0;
  }

  else
  {
    v36 = 4294966277;
  }

LABEL_36:
  if (sub_160EF0(0xD4u, 8))
  {
    v47 = sub_160F34(0xD4u);
    v48 = sub_175AE4();
    v49 = sub_160F68(8);
    if (v47)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d %d\n", v48, 212, v49, "AVE_PS_Compose_avcC", a1, a2, a3, a4, a5, a6, v36);
      v50 = sub_175AE4();
      v51 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d %d", v50, 212, v51, "AVE_PS_Compose_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d %d", v48, 212, v49, "AVE_PS_Compose_avcC");
    }
  }

  return v36;
}

uint64_t sub_1687B8(int a1, unsigned int *a2, int a3, int a4)
{
  if (sub_160EF0(0xD4u, 8))
  {
    v8 = sub_160F34(0xD4u);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %d %d\n", v9, 212, v10, "AVE_PS_CalcSizeOfhvcC", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %p %d %d", v9);
  }

  v24 = 0;
  v11 = *a2;
  if (v11 < 1)
  {
    v13 = 23;
  }

  else
  {
    v12 = a2 + 2;
    v13 = 23;
    do
    {
      v14 = v12[2];
      if (v14)
      {
        if (*v12 == a1)
        {
          v15 = *(v12 - 1);
          if ((v15 - 1) <= 2)
          {
            if ((*(&v24 + v15) & 1) == 0)
            {
              v13 += 3;
              *(&v24 + v15) = 1;
            }

            v13 = v14 + v13 - 2;
          }
        }
      }

      v12 += 4;
      --v11;
    }

    while (v11);
  }

  if (a3)
  {
    v16 = a3 + 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = a4 + 5;
  if (!a4)
  {
    v17 = 0;
  }

  v18 = (v17 + v16 + v13);
  if (sub_160EF0(0xD4u, 8))
  {
    v19 = sub_160F34(0xD4u);
    v20 = sub_175AE4();
    v21 = sub_160F68(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d %d %d\n", v20, 212, v21, "AVE_PS_CalcSizeOfhvcC", a1, a2, a3, a4, v18);
      v22 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d %d", v22, 212);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d %d", v20, 212);
    }
  }

  return v18;
}