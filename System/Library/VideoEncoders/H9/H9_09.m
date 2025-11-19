uint64_t AVE_EdgeReplication_FillPlaneRight(__CVBuffer *a1, unsigned int a2)
{
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  v5 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  CVPixelBufferGetWidthOfPlane(a1, a2);
  CVPixelBufferGetHeightOfPlane(a1, a2);
  CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &v5);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 4294966296;
}

uint64_t AVE_EdgeReplication_FillPlaneBottom(__CVBuffer *a1, unsigned int a2, int a3, uint64_t a4)
{
  v17 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  CVPixelBufferGetWidthOfPlane(a1, a2);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, a2);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  CVPixelBufferGetExtendedPixels(a1, 0, 0, &extraRowsOnTop, &v17);
  if (a2)
  {
    if (*(a4 + 12))
    {
      v11 = *(a4 + 20) >> 1;
      v17 >>= v11;
      extraRowsOnTop >>= v11;
    }

    else
    {
      v17 = 0;
    }
  }

  v12 = &BaseAddressOfPlane[(extraRowsOnTop + HeightOfPlane - 1) * BytesPerRowOfPlane];
  v13 = &v12[BytesPerRowOfPlane];
  if (a3)
  {
    if (v17)
    {
      for (i = 0; i < v17; ++i)
      {
        memcpy(v13, v12, BytesPerRowOfPlane);
        v13 += BytesPerRowOfPlane;
        v12 -= BytesPerRowOfPlane;
      }
    }
  }

  else if (v17)
  {
    for (j = 0; j < v17; ++j)
    {
      memcpy(v13, v12, BytesPerRowOfPlane);
      v13 += BytesPerRowOfPlane;
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 0;
}

uint64_t AVE_EdgeReplication_Fill(__CVBuffer *a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  if ((a2 & 0x50000) == 0x10000 && *(a3 + 8) >= 1)
  {
    v6 = 0;
    v7 = HIWORD(a2);
    do
    {
      AVE_EdgeReplication_FillPlaneBottom(a1, v6++, v7 & 8, a3);
    }

    while (v6 < *(a3 + 8));
  }

  if ((v4 & 0x500) == 0x100 && *(a3 + 8) >= 1)
  {
    v8 = 0;
    do
    {
      AVE_EdgeReplication_FillPlaneRight(a1, v8++);
    }

    while (v8 < *(a3 + 8));
  }

  return 0;
}

char *AVE_DevCap_Find(int a1)
{
  if (a1 >= 35)
  {
    return 0;
  }

  else
  {
    return &gsc_saAVE_DevCap + 72 * a1;
  }
}

uint64_t AVE_DevCap_FindResolution(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = gsc_saAVE_DevCap[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 24);
  }

  return v3;
}

uint64_t AVE_DevCap_FindPixelFmt(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = gsc_saAVE_DevCap[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 32);
  }

  return v3;
}

uint64_t AVE_DevCap_FindSearchRange(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = gsc_saAVE_DevCap[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 40);
  }

  return v3;
}

uint64_t AVE_DevCap_FindPerf(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = gsc_saAVE_DevCap[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 48);
  }

  return v3;
}

uint64_t AVE_DevCap_FindThroughput(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = gsc_saAVE_DevCap[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 56);
  }

  return v3;
}

uint64_t AVE_PixelFmt_AddAll(const unsigned int *a1, int a2, __CFArray *a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = a2;
  while (1)
  {
    v6 = *a1++;
    result = AVE_CFArray_AddSInt32(v6, a3);
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

uint64_t AVE_USurface::Create(AVE_USurface *this, __IOSurface *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x29EDCA608];
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  if (a2)
  {
    if ((a3 & 8) == 0)
    {
LABEL_5:
      if (a4)
      {
        LOBYTE(v15) = a4;
      }

      else
      {
        v15 = &unk_295613FE7;
      }

      AVE_SNPrintf(this + 8, 64, "%s", a4, a5, a6, a7, a8, v15);
      AllocSize = IOSurfaceGetAllocSize(a2);
      result = 0;
      *(this + 20) = AllocSize;
      *(this + 9) = a2;
      *(this + 11) = a5;
      goto LABEL_21;
    }

    AVE_SNPrintf(cStr, 64, "%s%s%s", a4, a5, a6, a7, a8, "AVE2");
    v13 = CFStringCreateWithCString(0, cStr, 0);
    if (v13)
    {
      v14 = v13;
      IOSurfaceSetValue(a2, *MEMORY[0x29EDBB168], v13);
      CFRelease(v14);
      goto LABEL_5;
    }

    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v22 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to create CFString %s\n", CurrTime, 76, LevelStr, "AVE_USurface", "Create", 171, "pNameStr != __null", cStr);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create CFString %s", CurrTime, 76);
    }

    result = 4294966293;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x4Cu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p 0x%llx %p 0x%llx\n", v19, 76, v20, "AVE_USurface", "Create", 162, "pSurface != __null", this, *this, 0, a3, a4, a5);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        v21 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p 0x%llx %p 0x%llx", v19, 76, v20, "AVE_USurface", "Create", 162, "pSurface != __null");
    }

    result = 4294966295;
  }

LABEL_21:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AVE_USurface::Create(AVE_USurface *this, IOSurfaceID csid, uint64_t a3, const char *a4, uint64_t a5)
{
  v10 = IOSurfaceLookup(csid);
  if (!v10)
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to get surface %p %lld %d 0x%llx 0x%llx\n", CurrTime, 76, LevelStr, "AVE_USurface", "Create", 209, "pSurface != __null", this, *this, csid, a3, a5);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v19 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to get surface %p %lld %d 0x%llx 0x%llx", CurrTime, 76, LevelStr, "AVE_USurface", "Create", 209);
    }

    v15 = 4294966281;
    goto LABEL_10;
  }

  v14 = v10;
  v15 = AVE_USurface::Create(this, v10, a3, a4, a5, v11, v12, v13);
  if (v15)
  {
    CFRelease(v14);
LABEL_10:
    *(this + 11) = 0;
    *(this + 20) = 0;
  }

  return v15;
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

uint64_t AVE_USurface::Destroy(AVE_USurface *this)
{
  if (*(this + 9))
  {
    v2 = AVE_USurface::Unlock(this);
    if (v2)
    {
      v3 = v2;
      if (AVE_Log_CheckLevel(0x4Cu, 4))
      {
        v4 = AVE_Log_CheckConsole(0x4Cu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v7 = *this;
        if (v4)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to do unlock %p %lld %d\n", CurrTime, 76, LevelStr, "AVE_USurface", "Destroy", 325, "ret == 0", this, *this, v3);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v8 = *this;
        }

        else
        {
          v15 = *this;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to do unlock %p %lld %d", CurrTime, 76, LevelStr, "AVE_USurface");
      }
    }

    else
    {
      v13 = *(this + 9);
      if (v13)
      {
        CFRelease(v13);
        *(this + 9) = 0;
      }

      v3 = 0;
      *(this + 8) = 0;
      *(this + 20) = 0;
      *(this + 11) = 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v9 = AVE_Log_CheckConsole(0x4Cu);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld\n", v10, 76, v11, "AVE_USurface", "Destroy", 299, "m_pcSurface != __null", this, *this);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        v12 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld", v10, 76, v11);
    }

    return 4294966285;
  }

  return v3;
}

uint64_t AVE_USurface::Unlock(AVE_USurface *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    if (*(this + 97))
    {
      IOSurfaceUnlock(v2, 0, 0);
      result = 0;
      *(this + 12) &= ~0x100uLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v4 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v7 = *this;
      if (v4)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s\n", CurrTime, 76, LevelStr, "AVE_USurface", "Unlock", 417, "m_pcSurface != __null", this, *this, this + 8);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v8 = *this;
      }

      else
      {
        v9 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s", CurrTime, 76, LevelStr, "AVE_USurface");
    }

    return 4294966285;
  }

  return result;
}

uint64_t AVE_USurface::Print(AVE_USurface *this, uint64_t a2, int a3, const char *a4, int a5)
{
  v80 = *MEMORY[0x29EDCA608];
  memset(v79, 0, sizeof(v79));
  v78 = 0;
  v77 = 0;
  v10 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    AVE_ComposePosStr(a4, a5, v79, 32, v11, v12, v13, v14);
    v15 = *(this + 9);
    if (v15)
    {
      v77 = bswap32(IOSurfaceGetPixelFormat(v15));
      v78 = 0;
    }

    if (AVE_Log_CheckLevel(a2, v10))
    {
      v16 = AVE_Log_CheckConsole(a2);
      if (a3 < 0)
      {
        if (!v16 || (-a3 & 0x20) != 0)
        {
          v43 = *this;
          v44 = *(this + 9);
          if (v44)
          {
            IOSurfaceGetID(*(this + 9));
            v45 = *(this + 9);
            v46 = *(this + 20);
            v47 = *(this + 12);
            if (v45)
            {
              IOSurfaceGetUseCount(v45);
              v48 = *(this + 9);
              if (v48)
              {
                IOSurfaceGetBaseAddress(v48);
              }
            }
          }

          else
          {
            v51 = *(this + 20);
            v52 = *(this + 12);
          }

          syslog(3, "Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v79, this + 8, this, v43, v44);
        }

        else
        {
          v30 = *this;
          v31 = *(this + 9);
          if (v31)
          {
            ID = IOSurfaceGetID(*(this + 9));
            v33 = (this + 96);
            v34 = *(this + 12);
            BaseAddress = *(this + 9);
            v36 = (this + 80);
            v37 = *(this + 20);
            if (BaseAddress)
            {
              UseCount = IOSurfaceGetUseCount(BaseAddress);
              BaseAddress = *(this + 9);
              if (BaseAddress)
              {
                BaseAddress = IOSurfaceGetBaseAddress(BaseAddress);
              }
            }

            else
            {
              UseCount = 0;
            }
          }

          else
          {
            UseCount = 0;
            ID = 0;
            BaseAddress = 0;
            v36 = (this + 80);
            v37 = *(this + 20);
            v33 = (this + 96);
            v34 = *(this + 12);
          }

          printf("Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s \n", v79, this + 8, this, v30, v31, ID, v37, v34, UseCount, BaseAddress, &v77);
          v62 = *this;
          v63 = *(this + 9);
          if (v63)
          {
            IOSurfaceGetID(*(this + 9));
            v64 = *(this + 9);
            v65 = *(this + 20);
            v66 = *(this + 12);
            if (v64)
            {
              IOSurfaceGetUseCount(v64);
              v67 = *(this + 9);
              if (v67)
              {
                IOSurfaceGetBaseAddress(v67);
              }
            }
          }

          else
          {
            v68 = *v36;
            v69 = *v33;
          }

          syslog(3, "Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v79, this + 8, this, v62, v63);
        }
      }

      else
      {
        v17 = v16 ^ 1;
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(v10);
        v20 = LevelStr;
        v21 = *this;
        v22 = *(this + 9);
        if ((v17 | ((a3 & 0x20) >> 5)))
        {
          if (v22)
          {
            v75 = LevelStr;
            IOSurfaceGetID(v22);
            v39 = *(this + 9);
            v40 = *(this + 20);
            v41 = *(this + 12);
            if (v39)
            {
              IOSurfaceGetUseCount(v39);
              v42 = *(this + 9);
              if (v42)
              {
                IOSurfaceGetBaseAddress(v42);
              }
            }

            v20 = v75;
          }

          else
          {
            v49 = *(this + 20);
            v50 = *(this + 12);
          }

          syslog(3, "%lld %d AVE %s: Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", CurrTime, a2, v20, v79, this + 8, this, v21);
        }

        else
        {
          v73 = CurrTime;
          v76 = this + 8;
          if (v22)
          {
            v74 = LevelStr;
            v23 = IOSurfaceGetID(v22);
            v25 = (this + 96);
            v24 = *(this + 12);
            v26 = *(this + 9);
            v27 = (this + 80);
            v28 = *(this + 20);
            if (v26)
            {
              v72 = v23;
              v29 = IOSurfaceGetUseCount(v26);
              v26 = *(this + 9);
              if (v26)
              {
                v26 = IOSurfaceGetBaseAddress(v26);
              }

              v20 = v74;
              v23 = v72;
            }

            else
            {
              v29 = 0;
              v20 = v74;
            }
          }

          else
          {
            v29 = 0;
            v23 = 0;
            v26 = 0;
            v27 = (this + 80);
            v28 = *(this + 20);
            v25 = (this + 96);
            v24 = *(this + 12);
          }

          printf("%lld %d AVE %s: Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s \n", v73, a2, v20, v79, v76, this, v21, v22, v23, v28, v24, v29, v26, &v77);
          v53 = AVE_GetCurrTime();
          v54 = AVE_Log_GetLevelStr(v10);
          v55 = *this;
          if (*(this + 9))
          {
            IOSurfaceGetID(*(this + 9));
            v56 = *(this + 9);
            v57 = *(this + 20);
            v58 = *(this + 12);
            if (v56)
            {
              IOSurfaceGetUseCount(v56);
              v59 = *(this + 9);
              if (v59)
              {
                IOSurfaceGetBaseAddress(v59);
              }
            }
          }

          else
          {
            v60 = *v27;
            v61 = *v25;
          }

          syslog(3, "%lld %d AVE %s: Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v53, a2, v54, v79, v76, this, v55);
        }
      }
    }
  }

  v70 = *MEMORY[0x29EDCA608];
  return 0;
}

__IOSurface *AVE_USurface::GetID(AVE_USurface *this)
{
  result = *(this + 9);
  if (result)
  {
    return IOSurfaceGetID(result);
  }

  return result;
}

__IOSurface *AVE_USurface::GetAddr(AVE_USurface *this, int a2)
{
  result = *(this + 9);
  if (result)
  {
    return (IOSurfaceGetBaseAddress(result) + a2);
  }

  return result;
}

uint64_t AVE_USurface::Lock(AVE_USurface *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    if (*(this + 97))
    {
      return 0;
    }

    else
    {
      IOSurfaceLock(v2, 0, 0);
      result = 0;
      *(this + 12) |= 0x100uLL;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v4 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v7 = *this;
      if (v4)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s\n", CurrTime, 76, LevelStr, "AVE_USurface", "Lock", 392, "m_pcSurface != __null", this, *this, this + 8);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v8 = *this;
      }

      else
      {
        v9 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s", CurrTime, 76, LevelStr, "AVE_USurface");
    }

    return 4294966285;
  }

  return result;
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

uint64_t AVE_FmtConv_PlaneInterchange2Linear(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, interchange_compression *a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v13) = a8;
  interchange_decompress_plane(a1, a2, a12, a3, a4, a5, a6 & a7, a9, a10, a11, v13);
  return 0;
}

uint64_t AVE_FmtConv_PlaneChromaPacked2Linear(unsigned __int8 *a1, int a2, int a3, int a4, char a5, int a6, int a7, unsigned __int8 *a8)
{
  v8 = a2;
  LODWORD(v10) = 2 * a2 / 3;
  v11 = 2 * a2 % 3;
  if ((a5 & 1) == 0)
  {
    if (a3 < 1)
    {
      return 0;
    }

    v27 = 0;
    v28 = a7 * a3;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v10;
    }

    v29 = a6;
    v30 = a1;
    v31 = a3;
    while (1)
    {
      v32 = &a8[v27 * a7];
      if (v8 < 2)
      {
        v42 = 0;
        v35 = 0;
        v34 = 0;
        if (!v11)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
        LODWORD(v35) = 0;
        do
        {
          v36 = *&v30[4 * v33];
          v37 = v36 & 0x3FF;
          if (v33)
          {
            v41 = v34 + v28;
            *&v32[2 * v41] = v37;
            v39 = 2;
            v40 = 1;
            v38 = v35;
          }

          else
          {
            *&v32[2 * v35] = v37;
            v38 = v34 + v28;
            v39 = 1;
            v40 = 2;
            v41 = v35;
          }

          *&v32[2 * v38] = (v36 >> 10) & 0x3FF;
          *&v32[2 * v41 + 2] = (v36 >> 20) & 0x3FF;
          v35 = (v35 + v40);
          v34 += v39;
          ++v33;
        }

        while (v10 != v33);
        v42 = v10;
        if (!v11)
        {
          goto LABEL_36;
        }
      }

      v43 = *&a1[4 * v42 + v27 * v29];
      v44 = v43 & 0x3FF;
      if (v42)
      {
        *&v32[2 * v34 + 2 * v28] = v44;
        if (v11 == 2)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *&v32[2 * v35] = v44;
        if (v11 == 2)
        {
          v35 = v34 + v28;
LABEL_35:
          *&v32[2 * v35] = (v43 >> 10) & 0x3FF;
        }
      }

LABEL_36:
      ++v27;
      v30 += v29;
      if (v27 == v31)
      {
        return 0;
      }
    }
  }

  if (a3 >= 1)
  {
    v12 = 0;
    if (v10 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    v47 = 2 * (2 * a2 % 3 - 1);
    v14 = a6;
    v15 = a7;
    v16 = a8 + 4;
    v17 = a1;
    v18 = a3;
    do
    {
      if (v8 < 2)
      {
        v23 = 0;
        if (v11)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v19 = v13;
        v20 = v17;
        v21 = v16;
        do
        {
          v22 = *v20;
          v20 += 4;
          *(v21 - 2) = v22 & 0x3FF;
          *(v21 - 1) = (v22 >> 10) & 0x3FF;
          *v21 = (v22 >> 20) & 0x3FF;
          v21 += 6;
          --v19;
        }

        while (v19);
        v23 = v13;
        if (v11)
        {
LABEL_13:
          v24 = *&a1[4 * v23 + v12 * v14];
          __src[0] = v24 & 0x3FF;
          __src[1] = (v24 >> 10) & 0x3FF;
          __src[2] = (v24 >> 20) & 0x3FF;
          if (v11 >= 1)
          {
            v25 = a8;
            v26 = v15;
            memcpy(&a8[6 * v23 + v12 * a7], __src, v47 + 2);
            v15 = v26;
            a8 = v25;
            v8 = a2;
          }
        }
      }

      ++v12;
      v16 += v15;
      v17 += v14;
    }

    while (v12 != v18);
  }

  return 0;
}

uint64_t AVE_FmtConv_PlaneLumaPacked2Linear(unsigned __int8 *a1, int a2, int a3, int a4, int a5, int a6, unsigned __int8 *a7)
{
  if (a3 >= 1)
  {
    v9 = 0;
    v10 = (a2 / 3);
    v11 = a2 % 3;
    v23 = 2 * (a2 % 3 - 1);
    v12 = a5;
    v13 = a3;
    v14 = a7 + 4;
    v15 = a1;
    do
    {
      if (a2 < 3)
      {
        v20 = 0;
        if (v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v16 = v10;
        v17 = v15;
        v18 = v14;
        do
        {
          v19 = *v17;
          v17 += 4;
          *(v18 - 2) = v19 & 0x3FF;
          *(v18 - 1) = (v19 >> 10) & 0x3FF;
          *v18 = (v19 >> 20) & 0x3FF;
          v18 += 6;
          --v16;
        }

        while (v16);
        v20 = v10;
        if (v11)
        {
LABEL_9:
          v21 = *&a1[4 * v20 + v9 * v12];
          __src[0] = v21 & 0x3FF;
          __src[1] = (v21 >> 10) & 0x3FF;
          __src[2] = (v21 >> 20) & 0x3FF;
          if (v11 >= 1)
          {
            memcpy(&a7[6 * v20 + v9 * a6], __src, v23 + 2);
          }
        }
      }

      ++v9;
      v14 += a6;
      v15 += v12;
    }

    while (v9 != v13);
  }

  return 0;
}

uint64_t AVE_FmtConv_PlanePacked2Linear(unsigned __int8 *a1, int a2, int a3, int a4, int a5, char a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a5)
  {
    AVE_FmtConv_PlaneChromaPacked2Linear(a1, a2, a3, a4, a6, a7, a8, a9);
  }

  else
  {
    AVE_FmtConv_PlaneLumaPacked2Linear(a1, a2, a3, a4, a7, a8, a9);
  }

  return 0;
}

void AVE_FPS::AVE_FPS(AVE_FPS *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
}

uint64_t AVE_FPS::Uninit(AVE_FPS *this)
{
  if (AVE_Log_CheckLevel(0x49u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x49u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 73, LevelStr, "AVE_FPS", "Uninit", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v6 = *(this + 2);
  if (v6)
  {
    free(v6);
    *(this + 2) = 0;
  }

  *(this + 2) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  if (AVE_Log_CheckLevel(0x49u, 6))
  {
    v7 = AVE_Log_CheckConsole(0x49u);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(6);
    v10 = *this;
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v8, 73, v9, "AVE_FPS", "Uninit", this, *this, 0);
      v8 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v11 = *this;
    }

    else
    {
      v13 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v8, 73);
  }

  return 0;
}

uint64_t AVE_FPS::Init(AVE_FPS *this, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  if (AVE_Log_CheckLevel(0x49u, 6))
  {
    v10 = AVE_Log_CheckConsole(0x49u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d\n", CurrTime, 73, LevelStr, "AVE_FPS", "Init", this, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", v13, 73, v31);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", CurrTime, 73, LevelStr);
    }
  }

  if (a3 - 1 > 0x1869E || (a4 & 0x80000000) != 0)
  {
    if (AVE_Log_CheckLevel(0x49u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x49u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d\n", v18, 73, v19, "AVE_FPS", "Init", 60, "0 < fps && fps < 100000 && num >= 0", this, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d", v20, 73, v32, "AVE_FPS", "Init");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d", v18, 73, v19, "AVE_FPS", "Init");
      }
    }

    v16 = 4294966295;
  }

  else
  {
    v14 = 2 * a3;
    if (a4)
    {
      v14 = a4;
    }

    if (v14 <= 2)
    {
      a4 = 2;
    }

    else
    {
      a4 = v14;
    }

    v15 = malloc_type_malloc(16 * a4, 0x1000040D9A13B51uLL);
    *(this + 2) = v15;
    if (v15)
    {
      v16 = 0;
      *this = a2;
      *(this + 2) = a4;
      *(this + 10) = a5;
      *(this + 6) = a3;
      *(this + 7) = a3;
      *(this + 8) = a3;
      *(this + 9) = a3;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x49u, 4))
      {
        v21 = AVE_Log_CheckConsole(0x49u);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to allocate memory of timestamp %p %lld %d %d %d\n", v22, 73, v23, "AVE_FPS", "Init", 71, "m_psTime != __null", this, a2, a3, a4, a5);
          v24 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to allocate memory of timestamp %p %lld %d %d %d", v24, 73, v33, "AVE_FPS", "Init");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to allocate memory of timestamp %p %lld %d %d %d", v22, 73, v23, "AVE_FPS", "Init");
        }
      }

      v16 = 4294966293;
    }
  }

  if (AVE_Log_CheckLevel(0x49u, 6))
  {
    v25 = AVE_Log_CheckConsole(0x49u);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(6);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d\n", v26, 73, v27, "AVE_FPS", "Init", this, a2, a3, a4, a5, v16);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d", v28, 73, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d", v26, 73, v27);
    }
  }

  return v16;
}

uint64_t AVE_FPS::Update(AVE_FPS *this, unsigned int a2, int a3, int a4)
{
  if (AVE_Log_CheckLevel(0x49u, 6))
  {
    v8 = AVE_Log_CheckConsole(0x49u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d\n", CurrTime, 73, LevelStr, "AVE_FPS", "Update", this, *this, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v11 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", CurrTime, 73, LevelStr);
  }

  if (a2 - 1 > 0x1869E || a3 < 0)
  {
    if (AVE_Log_CheckLevel(0x49u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x49u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d\n", v18, 73, v19, "AVE_FPS", "Update", 141, "0 < fps && fps < 100000 && num >= 0", this, *this, a2, a3, a4);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        v38 = *this;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d", v20, 73, v21, "AVE_FPS", "Update");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d", v18, 73, v19, "AVE_FPS", "Update");
      }
    }

    v22 = 4294966295;
  }

  else
  {
    v12 = 2 * a2;
    if (a3)
    {
      v12 = a3;
    }

    if (v12 <= 2)
    {
      a3 = 2;
    }

    else
    {
      a3 = v12;
    }

    if (a3 > *(this + 2))
    {
      if (AVE_Log_CheckLevel(0x49u, 6))
      {
        v13 = AVE_Log_CheckConsole(0x49u);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(6);
        if (v13)
        {
          printf("%lld %d AVE %s: %s::%s:%d allocate bigger memory of timestamp %p %lld %d %d <- %d\n", v14, 73, v15, "AVE_FPS", "Update", 157, this, *this, a2, a3, *(this + 2));
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(6);
          v16 = *this;
          v39 = *(this + 2);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d allocate bigger memory of timestamp %p %lld %d %d <- %d", v14, 73, v15, "AVE_FPS");
      }

      *(this + 11) = 0;
      v23 = *(this + 2);
      v24 = malloc_type_malloc(16 * a3, 0x1000040D9A13B51uLL);
      *(this + 2) = v24;
      if (v24)
      {
        *(this + 2) = a3;
        free(v23);
      }

      else
      {
        *(this + 2) = v23;
        if (AVE_Log_CheckLevel(0x49u, 5))
        {
          v25 = AVE_Log_CheckConsole(0x49u);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(5);
          v28 = *this;
          if (v25)
          {
            printf("%lld %d AVE %s: %s::%s:%d failed to allocate memory of timestamp %p %lld %d\n", v26, 73, v27, "AVE_FPS", "Update", 170, this, *this, a3);
            v26 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(5);
            v29 = *this;
          }

          else
          {
            v37 = *this;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d failed to allocate memory of timestamp %p %lld %d", v26, 73, v27);
        }
      }
    }

    v22 = 0;
    *(this + 10) = a4;
    *(this + 6) = a2;
    *(this + 7) = a2;
    *(this + 8) = a2;
    *(this + 9) = a2;
  }

  if (AVE_Log_CheckLevel(0x49u, 6))
  {
    v30 = AVE_Log_CheckConsole(0x49u);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(6);
    if (v30)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d\n", v31, 73, v32, "AVE_FPS", "Update", this, *this, a2, a3, v22);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(6);
      v35 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v33, 73, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v31, 73, v32);
    }
  }

  return v22;
}

uint64_t AVE_FPS::Reset(AVE_FPS *this)
{
  if (AVE_Log_CheckLevel(0x49u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x49u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 73, LevelStr, "AVE_FPS", "Reset", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  *(this + 11) = 0;
  if (AVE_Log_CheckLevel(0x49u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x49u);
    v7 = AVE_GetCurrTime();
    v8 = AVE_Log_GetLevelStr(6);
    v9 = *this;
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v7, 73, v8, "AVE_FPS", "Reset", this, *this, 0);
      v7 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v10 = *this;
    }

    else
    {
      v12 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v7, 73);
  }

  return 0;
}

double AVE_FPS::Calc(uint64_t *a1, void *a2, int a3)
{
  v6 = *(a1 + 2);
  v7 = *(a2 + 2);
  v8 = *a2;
  if (v6 == v7)
  {
    v9 = (v8 - *a1);
    v10 = a3;
    v11 = v6;
  }

  else
  {
    v11 = v6;
    v9 = v8 * v6 - *a1 * v7;
    v10 = a3 * v7;
  }

  v12 = v10 * v11;
  v13 = -1.0;
  if (v9 > 0.0)
  {
    v14 = v12 / v9;
    if (v12 / v9 <= 0.0 || v14 >= 100000.0)
    {
      if (AVE_Log_CheckLevel(0x49u, 5))
      {
        v15 = AVE_Log_CheckConsole(0x49u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(5);
        v18 = *a1;
        v19 = *(a1 + 2);
        v20 = (v9 - v9) * 1000.0;
        if (v20 >= 0)
        {
          v21 = v20;
        }

        else
        {
          v21 = -v20;
        }

        v22 = (v14 - v14) * 1000.0;
        if (v22 >= 0)
        {
          v23 = v22;
        }

        else
        {
          v23 = -v22;
        }

        if (v15)
        {
          printf("%lld %d AVE %s: %s::%s:%d %lld %d - %lld %d %d | %lld.%03lld %lld.%03lld \n", CurrTime, 73, LevelStr, "AVE_FPS", "Calc", 250, v18, v19, *a2, *(a2 + 2), a3, v9, v21, v14, v23);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(5);
          v28 = *(a2 + 2);
          v27 = *a2;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %lld %d - %lld %d %d | %lld.%03lld %lld.%03lld ", v24, 73, v25, "AVE_FPS", "Calc", 250, *a1, *(a1 + 2));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %lld %d - %lld %d %d | %lld.%03lld %lld.%03lld ", CurrTime, 73, LevelStr, "AVE_FPS", "Calc", 250, v18, v19);
        }
      }
    }

    else
    {
      return v12 / v9;
    }
  }

  return v13;
}

uint64_t AVE_FPS::CalcRt(AVE_FPS *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 11);
    if (v3 < 2)
    {
      return 0;
    }

    v4 = *(this + 2);
    v5 = ((v3 - 2) % v4);
    v6 = ((v3 - 1) % v4);
    v7 = AVE_FPS::Calc((v2 + 16 * v5), (v2 + 16 * v6), 1);
    v8 = v7;
    if (v7 >= 0.0)
    {
      *(this + 6) = v7;
      v9 = 7;
    }

    else
    {
      v9 = 5;
    }

    result = AVE_Log_CheckLevel(0x49u, v9);
    if (result)
    {
      v15 = AVE_Log_CheckConsole(0x49u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v9);
      v18 = *this;
      v19 = *(this + 11);
      v20 = *(this + 2);
      v21 = *(this + 2);
      v22 = (v21 + 16 * v5);
      v23 = *v22;
      v24 = *(v22 + 2);
      v25 = (v21 + 16 * v6);
      v26 = *v25;
      v27 = *(v25 + 2);
      v28 = *(this + 6);
      v29 = ((v28 - v28) * 1000.0);
      if (v29 < 0)
      {
        v29 = -v29;
      }

      v30 = ((v8 - v8) * 1000.0);
      if (v30 >= 0)
      {
        v31 = ((v8 - v8) * 1000.0);
      }

      else
      {
        v31 = -v30;
      }

      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %d %d | %d %lld %d - %d %lld %d | %d.%03d  %d.%03d\n", CurrTime, 73, LevelStr, "AVE_FPS", "CalcRt", 301, this, v18, v19, v20, v5, v23, v24, v6, v26, v27, v28, v29, v8, v31);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(v9);
        v34 = *(this + 2);
        v35 = (v34 + 16 * v5);
        v36 = *v35;
        v37 = (v34 + 16 * v6);
        v38 = *v37;
        v40 = *(v37 + 2);
        v39 = *(v35 + 2);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d | %d %lld %d - %d %lld %d | %d.%03d  %d.%03d", v32, 73, v33, "AVE_FPS", "CalcRt", 301, this, *this, *(this + 11), *(this + 2));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d | %d %lld %d - %d %lld %d | %d.%03d  %d.%03d", CurrTime, 73, LevelStr, "AVE_FPS", "CalcRt", 301, this, v18, v19, v20);
      }

      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x49u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x49u);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld\n", v11, 73, v12, "AVE_FPS", "CalcRt", 276, "m_psTime != __null", this, *this);
        v11 = AVE_GetCurrTime();
        v12 = AVE_Log_GetLevelStr(4);
        v13 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v11, 73, v12);
    }

    return 4294966285;
  }

  return result;
}

uint64_t AVE_FPS::CalcSlide(AVE_FPS *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 11);
    if (v3 < 2)
    {
      return 0;
    }

    v4 = v3 - 1;
    v5 = *(this + 10);
    v6 = __OFSUB__(v3, v5);
    v7 = v3 - v5;
    if (v7 < 0 != v6)
    {
      v7 = 0;
    }

    v8 = v4 - v7;
    v9 = *(this + 2);
    v10 = (v4 % v9);
    v11 = v7 % v9;
    v12 = AVE_FPS::Calc((v2 + 16 * (v7 % v9)), (v2 + 16 * v10), v4 - v7);
    v13 = v12;
    if (v12 <= 0.0)
    {
      v14 = 5;
    }

    else
    {
      *(this + 7) = v12;
      v14 = 7;
    }

    result = AVE_Log_CheckLevel(0x49u, v14);
    if (result)
    {
      v20 = v11;
      v21 = AVE_Log_CheckConsole(0x49u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v14);
      v24 = *this;
      v25 = *(this + 2);
      v26 = *(this + 11);
      v27 = *(this + 2);
      v28 = (v27 + 16 * v20);
      v29 = *v28;
      v30 = *(v28 + 2);
      v31 = (v27 + 16 * v10);
      v32 = *v31;
      v33 = *(v31 + 2);
      v34 = *(this + 8);
      v35 = ((v34 - v34) * 1000.0);
      if (v35 < 0)
      {
        v35 = -v35;
      }

      v36 = ((v13 - v13) * 1000.0);
      if (v36 >= 0)
      {
        v37 = ((v13 - v13) * 1000.0);
      }

      else
      {
        v37 = -v36;
      }

      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d\n", CurrTime, 73, LevelStr, "AVE_FPS", "CalcSlide", 355, this, v24, v25, v26, v8, v20, v29, v30, v10, v32, v33, v34, v35, v13, v37);
        v38 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(v14);
        v40 = *(this + 2);
        v41 = (v40 + 16 * v20);
        v42 = *v41;
        v43 = (v40 + 16 * v10);
        v44 = *v43;
        v46 = *(v43 + 2);
        v45 = *(v41 + 2);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", v38, 73, v39, "AVE_FPS", "CalcSlide", 355, this, *this, *(this + 2), *(this + 11));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", CurrTime, 73, LevelStr, "AVE_FPS", "CalcSlide", 355, this, v24, v25, v26);
      }

      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x49u, 4))
    {
      v15 = AVE_Log_CheckConsole(0x49u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld\n", v16, 73, v17, "AVE_FPS", "CalcSlide", 326, "m_psTime != __null", this, *this);
        v16 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        v18 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v16, 73, v17);
    }

    return 4294966285;
  }

  return result;
}

uint64_t AVE_FPS::CalcAvg(AVE_FPS *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 11);
    if (v3 < 2)
    {
      return 0;
    }

    v4 = v3 - 1;
    v5 = *(this + 2);
    v6 = __OFSUB__(v3, v5);
    v7 = v3 - v5;
    if (v7 < 0 != v6)
    {
      v7 = 0;
    }

    v8 = v4 - v7;
    v9 = (v4 % v5);
    v10 = v7 % v5;
    v11 = AVE_FPS::Calc((v2 + 16 * (v7 % v5)), (v2 + 16 * v9), v4 - v7);
    v12 = v11;
    if (v11 <= 0.0)
    {
      v13 = 5;
    }

    else
    {
      *(this + 8) = v11;
      v13 = 7;
    }

    result = AVE_Log_CheckLevel(0x49u, v13);
    if (result)
    {
      v19 = v10;
      v20 = AVE_Log_CheckConsole(0x49u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v13);
      v23 = *this;
      v24 = *(this + 2);
      v25 = *(this + 11);
      v26 = *(this + 2);
      v27 = (v26 + 16 * v19);
      v28 = *v27;
      v29 = *(v27 + 2);
      v30 = (v26 + 16 * v9);
      v31 = *v30;
      v32 = *(v30 + 2);
      v33 = *(this + 8);
      v34 = ((v33 - v33) * 1000.0);
      if (v34 < 0)
      {
        v34 = -v34;
      }

      v35 = ((v12 - v12) * 1000.0);
      if (v35 >= 0)
      {
        v36 = ((v12 - v12) * 1000.0);
      }

      else
      {
        v36 = -v35;
      }

      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d\n", CurrTime, 73, LevelStr, "AVE_FPS", "CalcAvg", 408, this, v23, v24, v25, v8, v19, v28, v29, v9, v31, v32, v33, v34, v12, v36);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(v13);
        v39 = *(this + 2);
        v40 = (v39 + 16 * v19);
        v41 = *v40;
        v42 = (v39 + 16 * v9);
        v43 = *v42;
        v45 = *(v42 + 2);
        v44 = *(v40 + 2);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", v37, 73, v38, "AVE_FPS", "CalcAvg", 408, this, *this, *(this + 2), *(this + 11));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", CurrTime, 73, LevelStr, "AVE_FPS", "CalcAvg", 408, this, v23, v24, v25);
      }

      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x49u, 4))
    {
      v14 = AVE_Log_CheckConsole(0x49u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld\n", v15, 73, v16, "AVE_FPS", "CalcAvg", 379, "m_psTime != __null", this, *this);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        v17 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v15, 73, v16);
    }

    return 4294966285;
  }

  return result;
}

uint64_t AVE_FPS::CalcOverall(AVE_FPS *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 11);
    if (v3 < 2)
    {
      return 0;
    }

    v4 = v3 - 1;
    v5 = ((v3 - 1) % *(this + 2));
    v6 = AVE_FPS::Calc(this + 3, (v2 + 16 * v5), v3 - 1);
    v7 = v6;
    if (v6 <= 0.0)
    {
      v8 = 5;
    }

    else
    {
      *(this + 9) = v6;
      v8 = 7;
    }

    result = AVE_Log_CheckLevel(0x49u, v8);
    if (result)
    {
      v14 = AVE_Log_CheckConsole(0x49u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v8);
      v17 = *this;
      v18 = *(this + 2);
      v19 = *(this + 11);
      v20 = *(this + 2) + 16 * v5;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(this + 9);
      v24 = ((v23 - v23) * 1000.0);
      if (v24 < 0)
      {
        v24 = -v24;
      }

      v25 = ((v7 - v7) * 1000.0);
      if (v25 >= 0)
      {
        v26 = ((v7 - v7) * 1000.0);
      }

      else
      {
        v26 = -v25;
      }

      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d\n", CurrTime, 73, LevelStr, "AVE_FPS", "CalcOverall", 457, this, v17, v18, v19, v4, 0, *(this + 3), *(this + 8), v5, v21, v22, v23, v24, v7, v26);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(v8);
        v29 = *(this + 3);
        v30 = *(this + 2) + 16 * v5;
        v31 = *v30;
        v33 = *(v30 + 8);
        v32 = *(this + 8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", v27, 73, v28, "AVE_FPS", "CalcOverall", 457, this, *this, *(this + 2), *(this + 11));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", CurrTime, 73, LevelStr, "AVE_FPS", "CalcOverall", 457, this, v17, v18, v19);
      }

      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x49u, 4))
    {
      v9 = AVE_Log_CheckConsole(0x49u);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld\n", v10, 73, v11, "AVE_FPS", "CalcOverall", 430, "m_psTime != __null", this, *this);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        v12 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v10, 73, v11);
    }

    return 4294966285;
  }

  return result;
}

uint64_t AVE_FPS::Add(void *a1, int *a2)
{
  if (AVE_Log_CheckLevel(0x49u, 7))
  {
    v4 = AVE_Log_CheckConsole(0x49u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p\n", CurrTime, 73, LevelStr, "AVE_FPS", "Add", a1, *a1, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v8 = *a1;
    }

    else
    {
      v38 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p", CurrTime, 73);
  }

  if (!a2 || (*a2 & 0x8000000000000000) != 0 || a2[2] < 1)
  {
    goto LABEL_44;
  }

  v9 = a1[2];
  if (v9)
  {
    *(v9 + 16 * (*(a1 + 11) % *(a1 + 2))) = *a2;
    v10 = *(a1 + 11);
    if (!v10)
    {
      *(a1 + 3) = *a2;
    }

    *(a1 + 11) = v10 + 1;
    if (AVE_FPS::CalcRt(a1))
    {
      if (AVE_Log_CheckLevel(0x49u, 4))
      {
        v11 = AVE_Log_CheckConsole(0x49u);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        v14 = *a1;
        if (v11)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to calculate realtime FPS %p %lld %p\n", v12, 73, v13, "AVE_FPS", "Add", 502, "ret == 0", a1, *a1, a2);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(4);
        }

        v39 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to calculate realtime FPS %p %lld %p", v12, 73, v13, "AVE_FPS");
      }

      goto LABEL_44;
    }

    if (*(a1 + 10) >= 1 && AVE_FPS::CalcSlide(a1))
    {
      if (AVE_Log_CheckLevel(0x49u, 4))
      {
        v20 = AVE_Log_CheckConsole(0x49u);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v23 = *a1;
        if (v20)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to calculate sliding average FPS %p %lld %p\n", v21, 73, v22, "AVE_FPS", "Add", 508, "ret == 0", a1, *a1, a2);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
        }

        v40 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to calculate sliding average FPS %p %lld %p", v21, 73, v22, "AVE_FPS");
      }

      goto LABEL_44;
    }

    if (AVE_FPS::CalcAvg(a1))
    {
      if (!AVE_Log_CheckLevel(0x49u, 4))
      {
LABEL_44:
        v28 = 4294966295;
        goto LABEL_45;
      }

      v24 = AVE_Log_CheckConsole(0x49u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      v27 = *a1;
      if (v24)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to calculate average FPS %p %lld %p\n", v25, 73, v26, "AVE_FPS", "Add", 513, "ret == 0", a1, *a1, a2);
LABEL_38:
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        v42 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to calculate average FPS %p %lld %p", v31, 73, v32, "AVE_FPS");
        goto LABEL_44;
      }

      v43 = *a1;
    }

    else
    {
      if (!AVE_FPS::CalcOverall(a1))
      {
        v28 = 0;
        goto LABEL_45;
      }

      if (!AVE_Log_CheckLevel(0x49u, 4))
      {
        goto LABEL_44;
      }

      v29 = AVE_Log_CheckConsole(0x49u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      v30 = *a1;
      if (v29)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to calculate average FPS %p %lld %p\n", v25, 73, v26, "AVE_FPS", "Add", 517, "ret == 0", a1, *a1, a2);
        goto LABEL_38;
      }

      v44 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to calculate average FPS %p %lld %p", v25, 73, v26, "AVE_FPS");
    goto LABEL_44;
  }

  if (AVE_Log_CheckLevel(0x49u, 4))
  {
    v15 = AVE_Log_CheckConsole(0x49u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    v18 = *a1;
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p\n", v16, 73, v17, "AVE_FPS", "Add", 489, "m_psTime != __null", a1, *a1, a2);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      v19 = *a1;
    }

    else
    {
      v41 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v16, 73, v17, "AVE_FPS");
  }

  v28 = 4294966285;
LABEL_45:
  if (AVE_Log_CheckLevel(0x49u, 7))
  {
    v33 = AVE_Log_CheckConsole(0x49u);
    v34 = AVE_GetCurrTime();
    v35 = AVE_Log_GetLevelStr(7);
    if (v33)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d\n", v34, 73, v35, "AVE_FPS", "Add", a1, *a1, a2, v28);
      v34 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(7);
      v36 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v34, 73, v35);
  }

  return v28;
}

double AVE_FPS::GetSlide(AVE_FPS *this)
{
  v1 = 64;
  if (*(this + 10) > 0)
  {
    v1 = 56;
  }

  return *(this + v1);
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

uint64_t AVE_BlkPool::SearchAllocBuf(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  for (i = AVE_DLList_Begin(a1 + 32); ; i = AVE_DLList_Next(v5))
  {
    v5 = i;
    if (i == AVE_DLList_End(a1 + 32))
    {
      return 4294966289;
    }

    if (AVE_BlkBuf_Avail(v5))
    {
      break;
    }
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t AVE_BlkPool::Alloc(AVE_BlkPool *this, unint64_t *a2, int *a3)
{
  v21 = 0;
  if (a2)
  {
    *a2 = 0;
    if (*this)
    {
      AVE_Mutex_Lock(*(this + 3));
    }

    v6 = AVE_BlkPool::SearchAllocBuf(this, &v21);
    if (v6)
    {
      v7 = v6;
      if (*(this + 16) >= *(this + 4))
      {
        goto LABEL_17;
      }

      v8 = AVE_BlkBuf_Create(*(this + 1), *(this + 2), *(this + 3), &v21);
      if (v8)
      {
        v7 = v8;
        if (AVE_Log_CheckLevel(0x38u, 6))
        {
          v9 = AVE_Log_CheckConsole(0x38u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(6);
          if (v9)
          {
            printf("%lld %d AVE %s: %s::%s:%d failed to create block buffer %p %d %d %d %p %d\n", CurrTime, 56, LevelStr, "AVE_BlkPool", "Alloc", 377, this, *(this + 1), *(this + 2), *(this + 3), &v21, v7);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(6);
            v12 = *(this + 1);
            v19 = *(this + 2);
            v20 = *(this + 3);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d failed to create block buffer %p %d %d %d %p %d", CurrTime, 56, LevelStr, "AVE_BlkPool", "Alloc");
        }

        goto LABEL_17;
      }

      AVE_DLList_PushBack(this + 32, v21);
      ++*(this + 16);
    }

    v7 = AVE_BlkBuf_Alloc(v21, a2, a3);
LABEL_17:
    if (*this)
    {
      AVE_Mutex_Unlock(*(this + 3));
    }

    return v7;
  }

  if (AVE_Log_CheckLevel(0x38u, 4))
  {
    v13 = AVE_Log_CheckConsole(0x38u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p\n", v14, 56, v15, "AVE_BlkPool", "Alloc", 353, "pAddr != __null", this, a3);
      v16 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p", v16, 56, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p", v14, 56, v15);
    }
  }

  return 4294966295;
}

uint64_t AVE_BlkPool::SearchFreeBuf(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  *a3 = 0;
  for (i = AVE_DLList_Begin(a1 + 32); ; i = AVE_DLList_Next(v7))
  {
    v7 = i;
    if (i == AVE_DLList_End(a1 + 32))
    {
      return 4294966295;
    }

    if (AVE_BlkBuf_CheckAddr(v7, a2))
    {
      break;
    }
  }

  result = 0;
  *a3 = v7;
  return result;
}

uint64_t AVE_BlkPool::Free(AVE_BlkPool *this, uint64_t *a2)
{
  v32 = 0;
  if (*this)
  {
    AVE_Mutex_Lock(*(this + 3));
  }

  v4 = AVE_BlkPool::SearchFreeBuf(this, a2, &v32);
  if (v4)
  {
    v5 = v4;
    if (!AVE_Log_CheckLevel(0x38u, 4))
    {
      goto LABEL_20;
    }

    v6 = AVE_Log_CheckConsole(0x38u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d\n", CurrTime, 56, LevelStr, "AVE_BlkPool", "Free", 447, "ret == 0", this, a2, &v32, v5);
      v9 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d", v9, 56, v23, "AVE_BlkPool", "Free");
      goto LABEL_20;
    }

    v31 = v5;
    v29 = a2;
    v30 = &v32;
    v28 = this;
    v27 = 447;
    v25 = LevelStr;
    v15 = "%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d";
LABEL_19:
    syslog(3, v15, CurrTime, 56, v25, "AVE_BlkPool", "Free", v27, "ret == 0", v28, v29, v30, v31);
    goto LABEL_20;
  }

  v10 = v32;
  v11 = AVE_BlkBuf_Free(v32, a2);
  if (v11)
  {
    v5 = v11;
    if (!AVE_Log_CheckLevel(0x38u, 4))
    {
      goto LABEL_20;
    }

    v12 = AVE_Log_CheckConsole(0x38u);
    CurrTime = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(4);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d\n", CurrTime, 56, v13, "AVE_BlkPool", "Free", 451, "ret == 0", this, &v32, a2, v5);
      v14 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d", v14, 56, v24, "AVE_BlkPool", "Free");
      goto LABEL_20;
    }

    v30 = a2;
    v31 = v5;
    v28 = this;
    v29 = &v32;
    v27 = 451;
    v25 = v13;
    v15 = "%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d";
    goto LABEL_19;
  }

  v16 = AVE_DLList_RBegin(this + 32);
  if (*(this + 16))
  {
    v17 = v16;
    while (v17 != AVE_DLList_REnd(this + 32))
    {
      v10 = v17;
      v17 = AVE_DLList_Prev(v17);
      if (AVE_BlkBuf_Empty(v10))
      {
        v32 = v10;
        AVE_DLList_Erase(v10);
        v5 = AVE_BlkBuf_Destroy(v10);
        if (v5 && AVE_Log_CheckLevel(0x38u, 5))
        {
          v19 = AVE_Log_CheckConsole(0x38u);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(5);
          if (v19)
          {
            printf("%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d\n", v20, 56, v21, "AVE_BlkPool", "Free", 468, this, v10, v5);
            v22 = AVE_GetCurrTime();
            v26 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v22, 56, v26);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v20, 56, v21);
          }
        }

        --*(this + 16);
        goto LABEL_20;
      }

      if (!*(this + 16))
      {
        break;
      }
    }
  }

  v5 = 0;
  v32 = v10;
LABEL_20:
  if (*this)
  {
    AVE_Mutex_Unlock(*(this + 3));
  }

  return v5;
}

uint64_t AVE_BlkPool::Idx2Addr(pthread_mutex_t **this, int a2, unint64_t *a3)
{
  if (*this)
  {
    AVE_Mutex_Lock(this[3]);
  }

  if (*(this + 16))
  {
    v6 = 4294966295;
  }

  else
  {
    v7 = AVE_DLList_Front(this + 4);
    v6 = AVE_BlkBuf_Idx2Addr(v7, a2, a3);
  }

  if (*this)
  {
    AVE_Mutex_Unlock(this[3]);
  }

  return v6;
}

uint64_t AVE_BlkPool::Addr2Idx(pthread_mutex_t **this, unint64_t a2, int *a3)
{
  if (*this)
  {
    AVE_Mutex_Lock(this[3]);
  }

  if (*(this + 16))
  {
    v6 = 4294966295;
  }

  else
  {
    v7 = AVE_DLList_Front(this + 4);
    v6 = AVE_BlkBuf_Addr2Idx(v7, a2, a3);
  }

  if (*this)
  {
    AVE_Mutex_Unlock(this[3]);
  }

  return v6;
}

_BYTE *AVE_FwStats_PrintDiff(_BYTE *result, char *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result && a2)
  {
    if (a3)
    {
      v10 = a4;
      v11 = result;
      v12 = *a3;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], a4 - v12, "%lld,", a4, a5, a6, a7, a8, result[8] - *result) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v13, v14, v15, v16, v17, v11[520] - v11[16]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v18, v19, v20, v21, v22, v11[24] - v11[16]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v23, v24, v25, v26, v27, v11[40] - v11[24]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v28, v29, v30, v31, v32, v11[240] - v11[32]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v33, v34, v35, v36, v37, v11[464] - v11[248]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v38, v39, v40, v41, v42, v11[208] - v11[192]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v43, v44, v45, v46, v47, v11[408] - v11[200]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v48, v49, v50, v51, v52, v11[496] - v11[416]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v53, v54, v55, v56, v57, v11[232] - v11[216]) + v12;
      LODWORD(v12) = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v58, v59, v60, v61, v62, v11[432] - v11[224]) + v12;
      result = AVE_SNPrintf(&a2[v12], v10 - v12, "%lld,", v63, v64, v65, v66, v67, v11[512] - v11[440]);
      *a3 = result + v12;
    }
  }

  return result;
}

uint64_t AVE_FwStats_PrintSet(uint64_t result, char *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result && a2 && a3)
  {
    v10 = a4;
    v11 = result;
    v12 = 0;
    v13 = *a3;
    do
    {
      result = AVE_SNPrintf(&a2[v13], v10 - v13, "%lld,", a4, a5, a6, a7, a8, *(v11 + v12));
      v13 = *a3 + result;
      *a3 = v13;
      v12 += 8;
    }

    while (v12 != 544);
  }

  return result;
}

uint64_t AVE_FwStats_PrintAll(const void *a1, const void *a2, const void *a3, int a4, int a5)
{
  if (AVE_Log_CheckLevel(0x3Au, 7))
  {
    v7 = AVE_Log_CheckConsole(0x3Au);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %d %d\n", CurrTime, 58, LevelStr, "AVE_FwStats_PrintAll", a1, a2, a3, a4, a5);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d", CurrTime, 58);
  }

  if (a1 && a2)
  {
    if (a3)
    {
      operator new[]();
    }

    v14 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Au, 4))
    {
      v10 = AVE_Log_CheckConsole(0x3Au);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d\n", v11, 58, v12, "AVE_FwStats_PrintAll", 181, "(psFwStats != __null) && (pEUMap != __null)", a1, a2, a3, a4, a5);
        v13 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d", v13, 58, v20, "AVE_FwStats_PrintAll");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d", v11, 58, v12, "AVE_FwStats_PrintAll");
      }
    }

    v14 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Au, 7))
  {
    v15 = AVE_Log_CheckConsole(0x3Au);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d %d %d\n", v16, 58, v17, "AVE_FwStats_PrintAll", a1, a2, a3, a4, a5, v14);
      v18 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d", v18, 58, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d", v16, 58, v17);
    }
  }

  return v14;
}

uint64_t AVE_MCTFStats_PrintAll(const void *a1, FILE *a2, int a3)
{
  if (AVE_Log_CheckLevel(0x3Au, 7))
  {
    v6 = AVE_Log_CheckConsole(0x3Au);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d\n", CurrTime, 58, LevelStr, "AVE_MCTFStats_PrintAll", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %d", CurrTime);
  }

  if (a1)
  {
    if (a2)
    {
      if (!a3)
      {
        fwrite("Frame#, FrameDiff, Fn_SetLrmeDiff, HW_LrmeDiff, Fn_SetLrrcDiff, HW_LrrcDiff, Fn_SetPipeDiff, HW_PipeDiff, Fn_PipeDoneDiff, FrameQIn, Fn_SetLrmeStart, HW_LrmeStart, Fn_SetLRMEDone, Fn_SetLrrcStart, HW_LrrcStart, Fn_SetLRRCDone, Fn_SetPipeStart, HW_PipeStart, Fn_SetPipeDone, HW_LrmeDone, HW_LrrcDone, HW_PipeDone, Fn_PipeDoneStart, Fn_PipeDoneEnd, LrmeStatsDone, LrrcStatsDone, PipeStatsDone, FrameOut\n", 0x191uLL, 1uLL, a2);
      }

      operator new[]();
    }

    v13 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Au, 4))
    {
      v9 = AVE_Log_CheckConsole(0x3Au);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v10, 58, v11, "AVE_MCTFStats_PrintAll", 367, "pMctfStats != __null", 0, a2, a3);
        v12 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 58, v19);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 58, v11);
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Au, 7))
  {
    v14 = AVE_Log_CheckConsole(0x3Au);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d\n", v15, 58, v16, "AVE_MCTFStats_PrintAll", a1, a2, a3, v13);
      v17 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d", v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d", v15);
    }
  }

  return v13;
}

uint64_t AVC_FindProfileIdc(int a1)
{
  if ((a1 - 1) < 9)
  {
    return gsc_sAVC_Profiles[6 * (a1 - 1) + 1];
  }

  result = AVE_Log_CheckLevel(0xD0u, 4);
  if (result)
  {
    v3 = AVE_Log_CheckConsole(0xD0u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", CurrTime, 208, LevelStr, "AVC_FindProfileIdc", 65, "(AVC_Profile_Invalid < eProfile) && (eProfile < AVC_Profile_Max)", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", CurrTime);
    return 0;
  }

  return result;
}

uint64_t AVC_FindLevelIdc(int a1)
{
  if ((a1 - 1) < 0x14)
  {
    return gsc_saAVC_LevelLimits[9 * (a1 - 1) + 1];
  }

  result = AVE_Log_CheckLevel(0xD1u, 4);
  if (result)
  {
    v2 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v2)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", CurrTime, 209, LevelStr, "AVC_FindLevelIdc", 295, "(AVC_Level_Invalid < eLevel) && (eLevel < AVC_Level_Max)", 0);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", CurrTime);
    return 0;
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

uint64_t AVE_HEVC_ST_RPS_Retrieve(CFDictionaryRef theDict, _OWORD *a2)
{
  *v28 = 0;
  v27 = 0;
  if (!theDict || !a2)
  {
    if (AVE_Log_CheckLevel(0xCCu, 4))
    {
      v9 = AVE_Log_CheckConsole(0xCCu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 204, LevelStr, "AVE_HEVC_ST_RPS_Retrieve", 28, "pDict != __null && pInfo != __null", theDict, a2);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 204);
    }

    return 4294966295;
  }

  *(a2 + 88) = 0;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  if (AVE_CFDict_GetBool(theDict, @"InterRefPicSetPredictionFlag", &v28[1]))
  {
    if (*a2)
    {
LABEL_5:
      AVE_CFDict_GetSInt32(theDict, @"DeltaIdxMinus1", a2 + 1);
      if (!AVE_CFDict_GetChar(theDict, @"DeltaRPSSign", v28))
      {
        *(a2 + 8) = v28[0];
      }

      AVE_CFDict_GetSInt32(theDict, @"AbsDeltaRPSMinus1", a2 + 3);
      if (!AVE_CFDict_GetSInt16(theDict, @"UsedByCurrPicFlag", &v27))
      {
        v4 = vdupq_n_s32(v27);
        v5.i64[0] = 0x101010101010101;
        v5.i64[1] = 0x101010101010101;
        a2[1] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vshlq_u32(v4, xmmword_29565E120), vshlq_u32(v4, xmmword_29565E110)), vuzp1q_s16(vshlq_u32(v4, xmmword_29565E140), vshlq_u32(v4, xmmword_29565E130))), v5);
      }

      result = AVE_CFDict_GetSInt16(theDict, @"UsedDeltaFlag", &v27);
      if (!result)
      {
        v7 = vdupq_n_s32(v27);
        v8.i64[0] = 0x101010101010101;
        v8.i64[1] = 0x101010101010101;
        a2[2] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vshlq_u32(v7, xmmword_29565E120), vshlq_u32(v7, xmmword_29565E110)), vuzp1q_s16(vshlq_u32(v7, xmmword_29565E140), vshlq_u32(v7, xmmword_29565E130))), v8);
      }

      return result;
    }
  }

  else
  {
    v12 = v28[1];
    *a2 = v28[1];
    if (v12)
    {
      goto LABEL_5;
    }
  }

  AVE_CFDict_GetSInt32(theDict, @"NumNegativePics", a2 + 12);
  result = AVE_CFDict_GetSInt32(theDict, @"NumPositivePics", a2 + 13);
  if (!*(a2 + 12))
  {
LABEL_24:
    if (!*(a2 + 13))
    {
      return result;
    }

    Value = CFDictionaryGetValue(theDict, @"DeltaPOCS1Minus1");
    if (Value)
    {
      v21 = Value;
      Count = CFArrayGetCount(Value);
      if (Count < 1)
      {
LABEL_30:
        result = AVE_CFDict_GetSInt16(theDict, @"UsedByCurrPicS1Flag", &v27);
        if (!result)
        {
          v25 = vdupq_n_s32(v27);
          v26.i64[0] = 0x101010101010101;
          v26.i64[1] = 0x101010101010101;
          *(a2 + 168) = vandq_s8(vuzp1q_s8(vuzp1q_s16(vshlq_u32(v25, xmmword_29565E120), vshlq_u32(v25, xmmword_29565E110)), vuzp1q_s16(vshlq_u32(v25, xmmword_29565E140), vshlq_u32(v25, xmmword_29565E130))), v26);
        }
      }

      else
      {
        v23 = 0;
        v24 = Count & 0x7FFFFFFF;
        while (1)
        {
          result = AVE_CFArray_GetSInt16(v21, v23, &v27);
          if (result)
          {
            break;
          }

          *(a2 + v23++ + 26) = v27;
          if (v24 == v23)
          {
            goto LABEL_30;
          }
        }
      }

      return result;
    }

    return 4294966288;
  }

  v13 = CFDictionaryGetValue(theDict, @"DeltaPOCS0Minus1");
  if (!v13)
  {
    return 4294966288;
  }

  v14 = v13;
  v15 = CFArrayGetCount(v13);
  if (v15 < 1)
  {
LABEL_22:
    result = AVE_CFDict_GetSInt16(theDict, @"UsedByCurrPicS0Flag", &v27);
    if (!result)
    {
      v18 = vdupq_n_s32(v27);
      v19.i64[0] = 0x101010101010101;
      v19.i64[1] = 0x101010101010101;
      *(a2 + 88) = vandq_s8(vuzp1q_s8(vuzp1q_s16(vshlq_u32(v18, xmmword_29565E120), vshlq_u32(v18, xmmword_29565E110)), vuzp1q_s16(vshlq_u32(v18, xmmword_29565E140), vshlq_u32(v18, xmmword_29565E130))), v19);
    }

    goto LABEL_24;
  }

  v16 = 0;
  v17 = v15 & 0x7FFFFFFF;
  while (1)
  {
    result = AVE_CFArray_GetSInt16(v14, v16, &v27);
    if (result)
    {
      return result;
    }

    *(a2 + v16++ + 28) = v27;
    if (v17 == v16)
    {
      goto LABEL_22;
    }
  }
}

uint64_t AVE_HEVC_ST_RPS_RetrieveArray(const __CFArray *a1, _OWORD *a2, int *a3)
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

        result = AVE_HEVC_ST_RPS_Retrieve(ValueAtIndex, v4);
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
    if (AVE_Log_CheckLevel(0xCCu, 4))
    {
      v11 = AVE_Log_CheckConsole(0xCCu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 204, LevelStr, "AVE_HEVC_ST_RPS_RetrieveArray", 326, "pArray != __null && pInfo != __null && pNum != __null && *pNum > 0", a1, v4, a3);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v14, 204, v15);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 204, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_HEVC_Slice_ST_RPS_Retrieve(CFDictionaryRef theDict, BOOL *a2)
{
  if (theDict && a2)
  {
    *(a2 + 20) = 0u;
    *(a2 + 21) = 0u;
    *(a2 + 18) = 0u;
    *(a2 + 19) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 17) = 0u;
    *(a2 + 14) = 0u;
    *(a2 + 15) = 0u;
    *(a2 + 12) = 0u;
    *(a2 + 13) = 0u;
    *(a2 + 10) = 0u;
    *(a2 + 11) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 9) = 0u;
    *(a2 + 6) = 0u;
    *(a2 + 7) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    *(a2 + 348) = 0u;
    AVE_CFDict_GetBool(theDict, @"ShortTermRefPicSetSPSFlag", a2);
    if (*a2)
    {

      return AVE_CFDict_GetSInt32(theDict, @"ShortTermRefPicSetIdx", a2 + 1);
    }

    else
    {
      Value = CFDictionaryGetValue(theDict, @"RPSData");
      if (Value)
      {

        return AVE_HEVC_ST_RPS_Retrieve(Value, a2 + 8);
      }

      else
      {
        return 4294966288;
      }
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCCu, 4))
    {
      v5 = AVE_Log_CheckConsole(0xCCu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v5)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 204, LevelStr, "AVE_HEVC_Slice_ST_RPS_Retrieve", 492, "pDict != __null && pInfo != __null", theDict, a2);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 204);
    }

    return 4294966295;
  }
}

uint64_t AVE_BlkBuf_Make(uint64_t a1, void *a2, uint64_t a3, int a4, int a5)
{
  *(a1 + 160) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0u;
  v10 = a1 + 128;
  *(a1 + 96) = 0u;
  v11 = a1 + 96;
  bzero(a2, 24 * a4);
  AVE_DLList_Init_Node(a1);
  *(a1 + 64) = a3;
  *(a1 + 72) = a5 * a4;
  *(a1 + 76) = a4;
  *(a1 + 80) = a5;
  *(a1 + 88) = a2;
  AVE_DLList_Init(v11);
  AVE_DLList_Init(v10);
  if (a4 >= 1)
  {
    v12 = 0;
    do
    {
      AVE_DLList_PushBack(v11, (*(a1 + 88) + v12));
      v12 += 24;
    }

    while (24 * a4 != v12);
  }

  *(a1 + 164) = a4;
  return 0;
}

uint64_t AVE_BlkBuf_Create(int a1, int a2, unsigned int a3, uint64_t *a4)
{
  result = 4294966295;
  if (a1 >= 1 && a2 >= 1)
  {
    v6 = a3;
    if (a3 <= 0x40)
    {
      if (a3)
      {
        if (!a4 || ((a3 + 127) & a3) != 0)
        {
          return result;
        }
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        v6 = 64;
      }

      *a4 = 0;
      v8 = (v6 - 1 + a2) & -v6;
      v9 = (v6 - 1 + v8) & -v6;
      if (0x7FFFFFFF / v9 <= a1)
      {
        return 4294966281;
      }

      else
      {
        v10 = malloc_type_malloc(0xA8uLL, 0x1030040A9B39151uLL);
        if (v10)
        {
          v11 = v10;
          v12 = malloc_type_malloc(24 * a1, 0x20040960023A9uLL);
          if (v12)
          {
            v13 = v12;
            v14 = v6 - 1 + v9 * a1;
            v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
            if (v15)
            {
              v16 = v15;
              AVE_BlkBuf_Make(v11, v13, (v15 + v6 - 1) & -v6, a1, v8);
              result = 0;
              *(v11 + 24) = v11;
              *(v11 + 32) = v13;
              *(v11 + 48) = 168;
              *(v11 + 52) = 24 * a1;
              *(v11 + 40) = v16;
              *(v11 + 56) = v14;
              *a4 = v11;
              return result;
            }

            free(v11);
            v17 = v13;
          }

          else
          {
            v17 = v11;
          }

          free(v17);
        }

        return 4294966293;
      }
    }
  }

  return result;
}

uint64_t AVE_BlkBuf_CreateWithMem(uint64_t a1, int a2, int a3, int a4, unsigned int a5, uint64_t *a6)
{
  v16 = a1;
  v15 = a2;
  result = 4294966295;
  if (a2 >= 1 && a3 >= 1 && a4 >= 1 && a5 <= 0x40)
  {
    if (a5)
    {
      if (!a6 || ((a5 + 127) & a5) != 0)
      {
        return result;
      }
    }

    else
    {
      if (!a6)
      {
        return result;
      }

      a5 = 64;
    }

    *a6 = 0;
    v9 = (a4 + a5 - 1) & -a5;
    AVE_AlignMem(&v16, &v15, a5, a5);
    if (v15 / v9 >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = v15 / v9;
    }

    v11 = malloc_type_malloc(0xA8uLL, 0x1030040A9B39151uLL);
    if (v11)
    {
      v12 = v11;
      v13 = malloc_type_malloc(24 * v10, 0x20040960023A9uLL);
      if (v13)
      {
        v14 = v13;
        AVE_BlkBuf_Make(v12, v13, v16, v10, v9);
        result = 0;
        *(v12 + 24) = v12;
        *(v12 + 32) = v14;
        *(v12 + 48) = 168;
        *(v12 + 52) = 24 * v10;
        *a6 = v12;
        return result;
      }

      free(v12);
    }

    return 4294966293;
  }

  return result;
}

uint64_t AVE_BlkBuf_Destroy(void *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (!AVE_DLList_Empty(a1 + 16))
  {
    return 4294966280;
  }

  v2 = a1[5];
  if (v2)
  {
    free(v2);
    a1[5] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  result = a1[3];
  if (result)
  {
    free(result);
    return 0;
  }

  return result;
}

BOOL AVE_BlkBuf_CheckAddr(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2 <= a2 && v2 + *(a1 + 72) > a2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t AVE_BlkBuf_Alloc(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 4294966295;
  if (a1 && a2)
  {
    *a2 = 0;
    v7 = AVE_DLList_Front((a1 + 96));
    if (v7)
    {
      v8 = v7;
      AVE_DLList_PopFront(a1 + 96);
      AVE_DLList_PushBack(a1 + 128, v8);
      v9 = *(a1 + 80);
      *a2 = *(a1 + 64) + (-1431655765 * ((v8 - *(a1 + 88)) >> 3) * v9);
      if (a3)
      {
        *a3 = v9;
      }

      result = 0;
      --*(a1 + 164);
    }

    else
    {
      return 4294966289;
    }
  }

  return result;
}

uint64_t AVE_BlkBuf_Free(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 4294966295;
  }

  v3 = *(a1 + 64);
  if (a2 < v3 || v3 + *(a1 + 72) <= a2)
  {
    return 4294966295;
  }

  v4 = (*(a1 + 88) + 24 * ((a2 - v3) / *(a1 + 80)));
  AVE_DLList_Erase(v4);
  AVE_DLList_PushBack(a1 + 96, v4);
  result = 0;
  ++*(a1 + 164);
  return result;
}

BOOL AVE_BlkBuf_Avail(_BOOL8 result)
{
  if (result)
  {
    return !AVE_DLList_Empty((result + 96));
  }

  return result;
}

uint64_t AVE_BlkBuf_Idx2Addr(uint64_t a1, int a2, void *a3)
{
  if (!a1)
  {
    return 4294966295;
  }

  result = 4294966295;
  if (a3)
  {
    if (*(a1 + 76) > a2)
    {
      result = 0;
      *a3 = *(a1 + 64) + *(a1 + 80) * a2;
    }
  }

  return result;
}

uint64_t AVE_BlkBuf_Addr2Idx(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  result = 4294966295;
  if (a1)
  {
    if (a3)
    {
      v5 = *(a1 + 64);
      if (a2 >= v5 && v5 + *(a1 + 72) > a2)
      {
        result = 0;
        *a3 = (a2 - v5) / *(a1 + 80);
      }
    }
  }

  return result;
}

void AVE_PixelBuf_AppendAttr_PixelFmtByProfile()
{
  v0 = 0;
  AVE_PixelFmt_GetNumOfTypes();
  operator new[]();
}

uint64_t AVE_PixelBuf_AppendAttr_IOSurface(int a1, int *a2, __CFDictionary *a3)
{
  v5 = AVE_PixelFmt_FindByType(a1);
  if (!v5)
  {
    return 4294966296;
  }

  if ((*(v5 + 6) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v7 = MEMORY[0x29EDB9010];
  v8 = MEMORY[0x29EDB9020];
  v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v10 = CFDictionaryCreateMutable(0, 0, v7, v8);
  v11 = v10;
  if (Mutable)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && v10 != 0)
  {
    v19 = *MEMORY[0x29EDBB188];
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB188], 1, v9);
    AVE_CFDict_AddSInt32(v19, 1, v11);
    v20 = MEMORY[0x29EDBB190];
    if (*a2 >= 1)
    {
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB190], *a2, v9);
    }

    v21 = a2[2];
    v22 = MEMORY[0x29EDBB198];
    if (v21 >= 1)
    {
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB198], v21, v9);
    }

    v23 = a2[4];
    if (v23 >= 1)
    {
      AVE_CFDict_AddSInt32(*v20, v23, v11);
    }

    v24 = a2[6];
    if (v24 >= 1)
    {
      AVE_CFDict_AddSInt32(*v22, v24, v11);
    }

    CFArrayAppendValue(Mutable, v9);
    CFArrayAppendValue(Mutable, v11);
    CFDictionarySetValue(a3, *MEMORY[0x29EDB9758], Mutable);
    CFRelease(v9);
    CFRelease(v11);
    CFRelease(Mutable);
    return 0;
  }

  if (AVE_Log_CheckLevel(0x3Fu, 4))
  {
    v14 = AVE_Log_CheckConsole(0x3Fu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_AppendAttr_IOSurface", 211, "pArray != __null && pDict0 != __null && pDict1 != __null", Mutable, v9, v11);
      v17 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p", v17, 63, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p", CurrTime, 63, LevelStr);
    }
  }

  return 4294966293;
}

uint64_t AVE_PixelBuf_CreateAttrDictFromProfile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10)
{
  AVE_DevID2Type(a1);
  if (CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]))
  {
    if (CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]))
    {
      AVE_PixelBuf_AppendAttr_PixelFmtByProfile();
    }

    if (AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x3Fu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d %d\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreateAttrDictFromProfile", 304, "pTempArray != __null", a1, a2, a3, a4, a5, a10, 0);
        v20 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
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
      v25 = LevelStr;
      v21 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d %d";
LABEL_12:
      syslog(3, v21, CurrTime, 63, v25, "AVE_PixelBuf_CreateAttrDictFromProfile", v26, v27, v28, v29, v30, v31, v32, v33, 0);
    }
  }

  else if (AVE_Log_CheckLevel(0x3Fu, 4))
  {
    v14 = AVE_Log_CheckConsole(0x3Fu);
    CurrTime = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(4);
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

    printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d %d\n", CurrTime, 63, v16, "AVE_PixelBuf_CreateAttrDictFromProfile", 298, "pDict != __null", a1, a2, a3, a4, a5, a10, 0);
    v17 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d %d", v17, 63, v23, "AVE_PixelBuf_CreateAttrDictFromProfile");
  }

  return 4294966293;
}

uint64_t AVE_PixelBuf_CreateAttrDict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  AVE_DevID2Type(a1);
  if (CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]))
  {
    if (CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]))
    {
      AVE_PixelBuf_AppendAttr_PixelFmt();
    }

    if (AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x3Fu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreateAttrDict", 435, "pTempArray != __null", a1, a2, a3, a4, a9, 0);
        v19 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
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
      v24 = LevelStr;
      v20 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d";
LABEL_12:
      syslog(3, v20, CurrTime, 63, v24, "AVE_PixelBuf_CreateAttrDict", v25, v26, v27, v28, v29, v30, v31, 0);
    }
  }

  else if (AVE_Log_CheckLevel(0x3Fu, 4))
  {
    v13 = AVE_Log_CheckConsole(0x3Fu);
    CurrTime = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
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

    printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d\n", CurrTime, 63, v15, "AVE_PixelBuf_CreateAttrDict", 429, "pDict != __null", a1, a2, a3, a4, a9, 0);
    v16 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d", v16, 63, v22);
  }

  return 4294966293;
}

uint64_t AVE_PixelBuf_CreatePool(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int a9, CVPixelBufferPoolRef *poolOut)
{
  v38 = *MEMORY[0x29EDCA608];
  pixelBufferAttributes = 0;
  v36 = 0u;
  v37 = 0u;
  v33 = a8;
  v34 = a7;
  AVE_Enc_AlignDimension(a1, a2, a4, &v34, &v33);
  AttrDict = AVE_PixelBuf_CreateAttrDict(a1, a2, a3, a4, a5, a6, v34, v33, a9);
  if (AttrDict)
  {
    v19 = AttrDict;
    if (AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x3Fu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreatePool", 557, "ret == 0", a1, a2, a3, a4, a7, a8, a9, v19);
        v23 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d", v23, 63, v31, "AVE_PixelBuf_CreatePool");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreatePool");
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

    if (!AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v19 = 4294966296;
      goto LABEL_15;
    }

    v25 = AVE_Log_CheckConsole(0x3Fu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(4);
    if (v25)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d\n", v26, 63, v27, "AVE_PixelBuf_CreatePool", 562, "res == kCVReturnSuccess", a1, a2, a3, a4, a7, a8, a9, v19, 0);
      v28 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d", v28, 63, v32, "AVE_PixelBuf_CreatePool", 562);
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

  v29 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t AVE_PixelBuf_CreateSurfacePool(uint64_t a1, __CVPixelBufferPool **a2, __CVPixelBufferPool **a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDB96F0], a2, Mutable);
    if (v8)
    {
      v9 = v8;
      if (AVE_Log_CheckLevel(0x3Fu, 4))
      {
        v10 = AVE_Log_CheckConsole(0x3Fu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreateSurfacePool", 603, "ret == 0", a2, a1, a2, a3, v9);
          v13 = AVE_GetCurrTime();
          v76 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d", v13, 63, v76, "AVE_PixelBuf_CreateSurfacePool");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d", CurrTime, 63, LevelStr, "AVE_PixelBuf_CreateSurfacePool");
        }
      }

LABEL_39:
      v48 = v7;
LABEL_56:
      CFRelease(v48);
      return v9;
    }

    v18 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!v18)
    {
      if (AVE_Log_CheckLevel(0x3Fu, 4))
      {
        v28 = AVE_Log_CheckConsole(0x3Fu);
        v29 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v29, 63, v30, "AVE_PixelBuf_CreateSurfacePool", 610, "pDictBufAttr != __null", a1, a2, a3, 0);
          v31 = AVE_GetCurrTime();
          v78 = AVE_Log_GetLevelStr(4);
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
    v20 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (v20)
    {
      v21 = v20;
      v22 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDBB128], a1, v20);
      if (v22)
      {
        v9 = v22;
        if (AVE_Log_CheckLevel(0x3Fu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x3Fu);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d\n", v24, 63, v25, "AVE_PixelBuf_CreateSurfacePool", 620, "ret == 0", a1, a1, a2, a3, v9);
            v26 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(4);
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

      CFDictionaryAddValue(v19, *MEMORY[0x29EDB96D0], v21);
      CFRelease(v21);
      v38 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      if (v38)
      {
        v39 = v38;
        v40 = 0;
        do
        {
          v41 = AVE_CFArray_AddSInt32(AVE_PixelBuf_AppendAttr_CacheMode(__CFArray *)::s_iaCacheMode[v40], v39);
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
          if (AVE_Log_CheckLevel(0x3Fu, 4))
          {
            v44 = AVE_Log_CheckConsole(0x3Fu);
            v45 = AVE_GetCurrTime();
            v46 = AVE_Log_GetLevelStr(4);
            if (v44)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d\n", v45, 63, v46, "AVE_PixelBuf_CreateSurfacePool", 632, "ret == 0", a1, a2, a3, v43);
              v47 = AVE_GetCurrTime();
              v80 = AVE_Log_GetLevelStr(4);
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

        CFDictionaryAddValue(v19, *MEMORY[0x29EDB96A0], v39);
        CFRelease(v39);
        v53 = AVE_CFDict_AddBool(*MEMORY[0x29EDB96D8], *MEMORY[0x29EDB8F00] != 0, v19);
        if (v53)
        {
          v54 = v53;
          if (!AVE_Log_CheckLevel(0x3Fu, 4))
          {
            goto LABEL_54;
          }

          v55 = AVE_Log_CheckConsole(0x3Fu);
          v56 = AVE_GetCurrTime();
          v57 = AVE_Log_GetLevelStr(4);
          if (!v55)
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d", v56, 63, v57, "AVE_PixelBuf_CreateSurfacePool");
            goto LABEL_54;
          }

          v58 = a1;
          printf("%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d\n", v56, 63, v57, "AVE_PixelBuf_CreateSurfacePool", 642, "ret == 0", 1, a1, a2, a3, v54);
          v36 = AVE_GetCurrTime();
          v103 = a3;
          v106 = v54;
          v95 = v58;
          v99 = a2;
          v91 = 1;
          v85 = 642;
          v89 = "ret == 0";
          v79 = AVE_Log_GetLevelStr(4);
          v37 = "%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d";
          goto LABEL_25;
        }

        v60 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDB9750], 2, v19);
        v9 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDB96C8], 2, v19) + v60;
        if (v9)
        {
          if (!AVE_Log_CheckLevel(0x3Fu, 4))
          {
            goto LABEL_55;
          }

          v61 = AVE_Log_CheckConsole(0x3Fu);
          v62 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(4);
          if (v61)
          {
            v64 = a1;
            printf("%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d\n", v62, 63, v63, "AVE_PixelBuf_CreateSurfacePool", 649, "ret == 0", 2, 2, a1, a2, a3, v9);
            v65 = AVE_GetCurrTime();
            v107 = a3;
            v109 = v9;
            v101 = v64;
            v104 = a2;
            v93 = 2;
            v97 = 2;
            v87 = 649;
            v82 = AVE_Log_GetLevelStr(4);
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
          v67 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDB96E0], 875704422, v19);
          if (!v67)
          {
            v9 = CVPixelBufferPoolCreate(0, v7, v19, a3);
            if (v9)
            {
              if (AVE_Log_CheckLevel(0x3Fu, 4))
              {
                v72 = AVE_Log_CheckConsole(0x3Fu);
                v73 = AVE_GetCurrTime();
                v74 = AVE_Log_GetLevelStr(4);
                if (v72)
                {
                  printf("%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d\n", v73, 63, v74, "AVE_PixelBuf_CreateSurfacePool", 658, "ret == kCVReturnSuccess", a1, a2, a3, v9);
                  v75 = AVE_GetCurrTime();
                  v84 = AVE_Log_GetLevelStr(4);
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
          if (!AVE_Log_CheckLevel(0x3Fu, 4))
          {
LABEL_55:
            CFRelease(v7);
            v48 = v19;
            goto LABEL_56;
          }

          v68 = AVE_Log_CheckConsole(0x3Fu);
          v62 = AVE_GetCurrTime();
          v69 = AVE_Log_GetLevelStr(4);
          if (v68)
          {
            v70 = a1;
            printf("%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d\n", v62, 63, v69, "AVE_PixelBuf_CreateSurfacePool", 653, "ret == 0", 875704422, a1, a2, a3, v9);
            v65 = AVE_GetCurrTime();
            v104 = a3;
            v107 = v9;
            v97 = v70;
            v101 = a2;
            v93 = 875704422;
            v87 = 653;
            v82 = AVE_Log_GetLevelStr(4);
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

      if (!AVE_Log_CheckLevel(0x3Fu, 4))
      {
        goto LABEL_54;
      }

      v50 = AVE_Log_CheckConsole(0x3Fu);
      v33 = AVE_GetCurrTime();
      v51 = AVE_Log_GetLevelStr(4);
      if (v50)
      {
        v52 = a1;
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d\n", v33, 63, v51, "AVE_PixelBuf_CreateSurfacePool", 629, "pTempArray != __null", a1, a2, a3, 0);
        v36 = AVE_GetCurrTime();
        v99 = a3;
        v103 = 0;
        v91 = v52;
        v95 = a2;
        v85 = 629;
        v89 = "pTempArray != __null";
        v79 = AVE_Log_GetLevelStr(4);
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
      if (!AVE_Log_CheckLevel(0x3Fu, 4))
      {
LABEL_54:
        v9 = 4294966293;
        goto LABEL_55;
      }

      v32 = AVE_Log_CheckConsole(0x3Fu);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        v35 = a1;
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v33, 63, v34, "AVE_PixelBuf_CreateSurfacePool", 615, "pTempDict != __null", a1, a2, a3, 0);
        v36 = AVE_GetCurrTime();
        v99 = a3;
        v103 = 0;
        v91 = v35;
        v95 = a2;
        v85 = 615;
        v89 = "pTempDict != __null";
        v79 = AVE_Log_GetLevelStr(4);
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

  if (AVE_Log_CheckLevel(0x3Fu, 4))
  {
    v14 = AVE_Log_CheckConsole(0x3Fu);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v15, 63, v16, "AVE_PixelBuf_CreateSurfacePool", 598, "pDictPoolAttr != __null", a1, a2, a3, 0);
      v17 = AVE_GetCurrTime();
      v77 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v17, 63, v77);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v15, 63, v16);
    }
  }

  return 4294966293;
}

uint64_t AVE_PixelBuf_Copy(__CVBuffer *a1, __CVBuffer *a2)
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

uint64_t AVE_PixelBuf_DumpLinear(__CVBuffer *a1, _DWORD *a2, FILE *a3)
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

uint64_t AVE_PixelBuf_DumpPacked(__CVBuffer *a1, _DWORD *a2, const void *a3)
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

  if (AVE_Log_CheckLevel(0x3Fu, 4))
  {
    v19 = AVE_Log_CheckConsole(0x3Fu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v19)
    {
      printf("%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_DumpPacked", 862, "frameSize != 0", a1, a2, a3);
      v22 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p", v22, 63, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p", CurrTime, 63, LevelStr);
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 4294966295;
}

void AVE_PixelBuf_DumpHTPC(__CVBuffer *a1, _DWORD *a2)
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

void AVE_PixelBuf_DumpInterchange(__CVBuffer *a1, _DWORD *a2)
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

uint64_t AVE_PixelBuf_Dump(CVPixelBufferRef pixelBuffer, int a2, __sFILE *a3)
{
  if (pixelBuffer && a3)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v7 = AVE_PixelFmt_FindByType(PixelFormatType);
    if (v7)
    {
      v8 = v7;
      v9 = *(v7 + 6);
      result = 4294966295;
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          AVE_PixelBuf_DumpHTPC(pixelBuffer, v8);
        }

        if (v9 == 3)
        {
          AVE_PixelBuf_DumpInterchange(pixelBuffer, v8);
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {

          return AVE_PixelBuf_DumpPacked(pixelBuffer, v8, a3);
        }
      }

      else
      {
        AVE_PixelBuf_DumpLinear(pixelBuffer, v8, a3);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x3Fu, 4))
      {
        v15 = AVE_Log_CheckConsole(0x3Fu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_Dump", 1120, "pPixelFmt != __null", pixelBuffer, a2, a3, PixelFormatType);
          v18 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x", v18, 63, v20, "AVE_PixelBuf_Dump");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x", CurrTime, 63, LevelStr, "AVE_PixelBuf_Dump");
        }
      }

      return 4294966296;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v11 = AVE_Log_CheckConsole(0x3Fu);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v12, 63, v13, "AVE_PixelBuf_Dump", 1112, "pPixelBuf != __null && pFile != __null", pixelBuffer, a2, a3);
        v14 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
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

uint64_t AVE_PixelBuf_Transfer(__CVBuffer *a1, __CVBuffer *a2)
{
  pixelTransferSessionOut = 0;
  if (a1)
  {
    if (a2)
    {
      v4 = VTPixelTransferSessionCreate(*MEMORY[0x29EDB8ED8], &pixelTransferSessionOut);
      if (v4)
      {
        v5 = v4;
        if (AVE_Log_CheckLevel(0x3Fu, 4))
        {
          v6 = AVE_Log_CheckConsole(0x3Fu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v6)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to create image transfer session, ret = %d\n", CurrTime, 63, LevelStr, "AVE_PixelBuf_Transfer", 2010, "ret == noErr", v5);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create image transfer session, ret = %d", CurrTime);
        }
      }

      else
      {
        v5 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, a1, a2);
        if (v5 && AVE_Log_CheckLevel(0x3Fu, 4))
        {
          v15 = AVE_Log_CheckConsole(0x3Fu);
          v16 = AVE_GetCurrTime();
          v17 = AVE_Log_GetLevelStr(4);
          if (v15)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to transfer image, ret = %d\n", v16, 63, v17, "AVE_PixelBuf_Transfer", 2014, "ret == noErr", v5);
            v16 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to transfer image, ret = %d", v16);
        }
      }

      goto LABEL_25;
    }

    if (AVE_Log_CheckLevel(0x3Fu, 4))
    {
      v12 = AVE_Log_CheckConsole(0x3Fu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | pDst is NULL\n", v13, 63, v14, "AVE_PixelBuf_Transfer", 2006, "pDst != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | pDst is NULL");
    }
  }

  else
  {
    if (!AVE_Log_CheckLevel(0x3Fu, 4))
    {
      return 4294966295;
    }

    v9 = AVE_Log_CheckConsole(0x3Fu);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | pSrc is NULL\n", v10, 63, v11, "AVE_PixelBuf_Transfer", 2004, "pSrc != __null");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
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

uint64_t AVE_WtPred_RetrieveArray(CFDictionaryRef theDict, int a2, int *a3)
{
  if (a2 <= 4 && theDict && a3)
  {
    Value = CFDictionaryGetValue(theDict, @"WeightData_WeightFlagArray");
    v7 = CFDictionaryGetValue(theDict, @"WeightData_Weight");
    v8 = CFDictionaryGetValue(theDict, @"WeightData_Weight");
    v9 = v8;
    v52 = Value;
    if (Value && v7 && v8)
    {
      Count = CFArrayGetCount(Value);
      v11 = CFArrayGetCount(v7);
      v12 = CFArrayGetCount(v9);
      if (a2 < 1)
      {
        return 0;
      }

      else
      {
        v51 = 0;
        v13 = 0;
        v46 = v11;
        v47 = Count;
        if (Count >= v11)
        {
          v14 = v11;
        }

        else
        {
          v14 = Count;
        }

        v45 = v12;
        if (v14 >= v12)
        {
          v14 = v12;
        }

        v15 = a3 + 11;
        v16 = a3 + 3;
        v50 = v14;
        v48 = a2;
        v17 = a3 + 50;
        while (2)
        {
          v18 = 0;
          v49 = v17;
          do
          {
            v54[0] = 0;
            v53 = 0;
            v19 = v51 + v18;
            if (v51 + v18 >= v50)
            {
              if (AVE_Log_CheckLevel(0xD7u, 4))
              {
                v35 = AVE_Log_CheckConsole(0xD7u);
                CurrTime = AVE_GetCurrTime();
                LevelStr = AVE_Log_GetLevelStr(4);
                if (v35)
                {
                  printf("%lld %d AVE %s: %s:%d %s | Wrong WP array size %d %d %d %d\n", CurrTime, 215, LevelStr, "AVE_WtPred_RetrieveArray", 56, "arrayIdx < iFlagCnt && arrayIdx < iWeightCnt && arrayIdx < iOffsetCnt", v47, v46, v45, v19);
                  CurrTime = AVE_GetCurrTime();
                  v43 = v45;
                  v44 = v51 + v18;
                  v41 = v47;
                  v42 = v46;
                  v40 = AVE_Log_GetLevelStr(4);
                }

                else
                {
                  v43 = v45;
                  v44 = v51 + v18;
                  v41 = v47;
                  v42 = v46;
                  v40 = LevelStr;
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong WP array size %d %d %d %d", CurrTime, 215, v40, "AVE_WtPred_RetrieveArray", 56, "arrayIdx < iFlagCnt && arrayIdx < iWeightCnt && arrayIdx < iOffsetCnt", v41, v42, v43, v44);
              }

              return 4294966295;
            }

            result = AVE_CFArray_GetChar(v52, v51 + v18, v54);
            if (result)
            {
              return result;
            }

            if (v18)
            {
              v15[v13] = v54[0];
              result = AVE_CFArray_GetSInt32(v7, v19, &v53);
              if (result)
              {
                return result;
              }

              v21 = v15[v13] ? v53 : 1 << a3[1];
              *(v17 - 16) = v21;
              v17[24] = (-1 << a3[1]) + v21;
              result = AVE_CFArray_GetSInt32(v9, v19, &v53);
              if (result)
              {
                return result;
              }

              if (v15[v13])
              {
                v24 = v53;
              }

              else
              {
                v24 = 0;
              }

              *v17 = v24;
              v25 = v24 + (*(v17 - 16) << 7 >> a3[1]) - 128;
              if (v25 <= -512)
              {
                v25 = -512;
              }

              if (v25 >= 511)
              {
                v25 = 511;
              }

              v17[40] = v25;
            }

            else
            {
              v16[v13] = v54[0];
              result = AVE_CFArray_GetSInt32(v7, v19, &v53);
              if (result)
              {
                return result;
              }

              if (v16[v13])
              {
                v22 = v53;
                v23 = *a3;
              }

              else
              {
                v23 = *a3;
                v22 = 1 << *a3;
              }

              a3[v13 + 19] = v22;
              a3[v13 + 67] = (-1 << v23) + v22;
              result = AVE_CFArray_GetSInt32(v9, v19, &v53);
              if (result)
              {
                return result;
              }

              if (v16[v13])
              {
                v26 = v53;
              }

              else
              {
                v26 = 0;
              }

              a3[v13 + 27] = v26;
            }

            ++v18;
            ++v17;
          }

          while (v18 != 3);
          result = 0;
          ++v13;
          v51 += 3;
          v17 = v49 + 2;
          if (v13 != v48)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD7u, 4))
      {
        v31 = AVE_Log_CheckConsole(0xD7u);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | CFArray not existing %p %p %p\n", v32, 215, v33, "AVE_WtPred_RetrieveArray", 39, "pFlagArray != __null && pWeightArray != __null && pOffsetArray != __null", Value, v7, v9);
          v34 = AVE_GetCurrTime();
          v39 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | CFArray not existing %p %p %p", v34, 215, v39);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | CFArray not existing %p %p %p", v32, 215, v33);
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD7u, 4))
    {
      v27 = AVE_Log_CheckConsole(0xD7u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v28, 215, v29, "AVE_WtPred_RetrieveArray", 30, "pDict != __null && pInfo != __null && iFrameCount <= 4", theDict, a3, a2);
        v30 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v30, 215, v38);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v28, 215, v29);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_WtPred_GetInfo(CFDictionaryRef theDict, int a2, _OWORD *a3)
{
  if (!theDict || !a3)
  {
    if (AVE_Log_CheckLevel(0xD7u, 4))
    {
      v12 = AVE_Log_CheckConsole(0xD7u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 215, LevelStr, "AVE_WtPred_GetInfo", 246, "pDict != __null && pInfo != __null", theDict, a3);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 215);
    }

    return 4294966295;
  }

  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  *(a3 + 412) = 0u;
  Value = CFDictionaryGetValue(theDict, @"WeightedPredictionInfo");
  if (!Value)
  {
    if (AVE_Log_CheckLevel(0xD7u, 4))
    {
      v15 = AVE_Log_CheckConsole(0xD7u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get dictionary %p %p\n", v16, 215, v17, "AVE_WtPred_GetInfo", 254, "pWPInfoDict != __null", theDict, 0);
        v16 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get dictionary %p %p", v16, 215);
    }

    return 4294966288;
  }

  v7 = Value;
  if (AVE_Log_CheckLevel(0x1Du, 6))
  {
    v8 = AVE_Log_CheckConsole(0x1Du);
    v9 = AVE_GetCurrTime();
    v10 = AVE_Log_GetLevelStr(6);
    if (v8)
    {
      printf("%lld %d AVE %s: FIG: AVE_KEY_WP_INFO found \n", v9, 29, v10);
      v11 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: FIG: AVE_KEY_WP_INFO found ", v11, 29, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: AVE_KEY_WP_INFO found ", v9, 29, v10);
    }
  }

  SInt32 = AVE_CFDict_GetSInt32(v7, @"WeightData_LumaLog2WeightDenom", a3);
  if (SInt32)
  {
    v18 = SInt32;
    if (AVE_Log_CheckLevel(0xD7u, 4))
    {
      v20 = AVE_Log_CheckConsole(0xD7u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v21, 215, v22, "AVE_WtPred_GetInfo", 261, "ret == 0", v7, a3, v18);
        v23 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
LABEL_26:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v23, 215, v28);
        return v18;
      }

      goto LABEL_33;
    }

    return v18;
  }

  v24 = AVE_CFDict_GetSInt32(v7, @"WeightData_ChromaLog2WeightDenom", a3 + 1);
  if (v24)
  {
    v18 = v24;
    if (AVE_Log_CheckLevel(0xD7u, 4))
    {
      v25 = AVE_Log_CheckConsole(0xD7u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v21, 215, v22, "AVE_WtPred_GetInfo", 266, "ret == 0", v7, a3, v18);
        v23 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        goto LABEL_26;
      }

LABEL_33:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v21, 215, v22);
    }

    return v18;
  }

  return AVE_WtPred_RetrieveArray(v7, a2, a3);
}

uint64_t AVE_WtPred_PrintInfo(unsigned int *a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v127 = *MEMORY[0x29EDCA608];
  memset(v126, 0, sizeof(v126));
  if (a1)
  {
    AVE_ComposePosStr(a4, a5, v126, 32, a5, a6, a7, a8);
    if (AVE_Log_CheckLevel(a2, a3))
    {
      v11 = AVE_Log_CheckConsole(a2);
      if (a3 < 0)
      {
        if (!v11 || (-a3 & 0x20) != 0)
        {
          v18 = *a1;
        }

        else
        {
          printf("WP %s luma_log2_weight_denom = %d\n", v126, *a1);
          v17 = *a1;
        }

        syslog(3, "WP %s luma_log2_weight_denom = %d");
      }

      else
      {
        v12 = v11 ^ 1;
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(a3);
        if ((v12 | ((a3 & 0x20) >> 5)))
        {
          v114 = *a1;
        }

        else
        {
          printf("%lld %d AVE %s: WP %s luma_log2_weight_denom = %d\n", CurrTime, a2, LevelStr, v126, *a1);
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(a3);
          v15 = *a1;
        }

        syslog(3, "%lld %d AVE %s: WP %s luma_log2_weight_denom = %d");
      }
    }

    if (AVE_Log_CheckLevel(a2, a3))
    {
      v19 = AVE_Log_CheckConsole(a2);
      if (a3 < 0)
      {
        if (!v19 || (-a3 & 0x20) != 0)
        {
          v25 = a1[1];
        }

        else
        {
          printf("WP %s chroma_log2_weight_denom = %d\n", v126, a1[1]);
          v24 = a1[1];
        }

        syslog(3, "WP %s chroma_log2_weight_denom = %d");
      }

      else
      {
        v20 = v19 ^ 1;
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(a3);
        if ((v20 | ((a3 & 0x20) >> 5)))
        {
          v115 = a1[1];
        }

        else
        {
          printf("%lld %d AVE %s: WP %s chroma_log2_weight_denom = %d\n", v21, a2, v22, v126, a1[1]);
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(a3);
          v23 = a1[1];
        }

        syslog(3, "%lld %d AVE %s: WP %s chroma_log2_weight_denom = %d");
      }
    }

    if (AVE_Log_CheckLevel(a2, a3))
    {
      v26 = AVE_Log_CheckConsole(a2);
      if (a3 < 0)
      {
        if (!v26 || (-a3 & 0x20) != 0)
        {
          v32 = a1[2];
        }

        else
        {
          printf("WP %s delta_chroma_log2_weight_denom = %d\n", v126, a1[2]);
          v31 = a1[2];
        }

        syslog(3, "WP %s delta_chroma_log2_weight_denom = %d");
      }

      else
      {
        v27 = v26 ^ 1;
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(a3);
        if ((v27 | ((a3 & 0x20) >> 5)))
        {
          v116 = a1[2];
        }

        else
        {
          printf("%lld %d AVE %s: WP %s delta_chroma_log2_weight_denom = %d\n", v28, a2, v29, v126, a1[2]);
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(a3);
          v30 = a1[2];
        }

        syslog(3, "%lld %d AVE %s: WP %s delta_chroma_log2_weight_denom = %d");
      }
    }

    v33 = 0;
    v119 = a1 + 3;
    v124 = -a3;
    v34 = a1 + 27;
    v35 = a1 + 67;
    v120 = a1 + 51;
    v117 = a1 + 11;
    v36 = a1 + 27;
    v125 = a1 + 67;
    v118 = a1 + 19;
    do
    {
      v121 = v33;
      if (AVE_Log_CheckLevel(a2, a3))
      {
        v37 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if ((v124 & 0x20) != 0)
          {
            v44 = 0;
          }

          else
          {
            v44 = v37;
          }

          if (v44 == 1)
          {
            printf("WP %s luma_weight_l0_flag[%d] = %d\n", v126, v121, v119[v121]);
          }

          syslog(3, "WP %s luma_weight_l0_flag[%d] = %d", v126, v121, v119[v121]);
        }

        else
        {
          v38 = v37 ^ 1;
          v39 = AVE_GetCurrTime();
          v40 = AVE_Log_GetLevelStr(a3);
          v41 = v119[v121];
          if ((v38 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0_flag[%d] = %d", v39, a2, v40, v126, v121, v41);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s luma_weight_l0_flag[%d] = %d\n", v39, a2, v40, v126, v121, v41);
            v42 = AVE_GetCurrTime();
            v43 = AVE_Log_GetLevelStr(a3);
            syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0_flag[%d] = %d", v42, a2, v43, v126, v121, v119[v121]);
          }

          v34 = v36;
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v45 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if ((v124 & 0x20) != 0)
          {
            v51 = 0;
          }

          else
          {
            v51 = v45;
          }

          if (v51 == 1)
          {
            printf("WP %s luma_weight_l0[%d] = %d\n", v126, v121, v118[v121]);
          }

          syslog(3, "WP %s luma_weight_l0[%d] = %d", v126, v121, v118[v121]);
        }

        else
        {
          v46 = v45 ^ 1;
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(a3);
          v49 = v118[v121];
          if ((v46 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0[%d] = %d", v47, a2, v48, v126, v121, v49);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s luma_weight_l0[%d] = %d\n", v47, a2, v48, v126, v121, v49);
            v122 = AVE_GetCurrTime();
            v50 = AVE_Log_GetLevelStr(a3);
            syslog(3, "%lld %d AVE %s: WP %s luma_weight_l0[%d] = %d", v122, a2, v50, v126, v121, v118[v121]);
          }

          v34 = v36;
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v52 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if ((v124 & 0x20) != 0)
          {
            v59 = 0;
          }

          else
          {
            v59 = v52;
          }

          if (v59 == 1)
          {
            printf("WP %s luma_offset_l0[%d] = %d\n", v126, v121, v34[v121]);
          }

          syslog(3, "WP %s luma_offset_l0[%d] = %d", v126, v121, v34[v121]);
        }

        else
        {
          v53 = v52 ^ 1;
          v54 = AVE_GetCurrTime();
          v55 = AVE_Log_GetLevelStr(a3);
          v56 = v34[v121];
          if ((v53 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s luma_offset_l0[%d] = %d", v54, a2, v55, v126, v121, v56);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s luma_offset_l0[%d] = %d\n", v54, a2, v55, v126, v121, v56);
            v57 = AVE_GetCurrTime();
            v58 = AVE_Log_GetLevelStr(a3);
            syslog(3, "%lld %d AVE %s: WP %s luma_offset_l0[%d] = %d", v57, a2, v58, v126, v121, v34[v121]);
          }

          v35 = v125;
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v60 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if ((v124 & 0x20) != 0)
          {
            v67 = 0;
          }

          else
          {
            v67 = v60;
          }

          if (v67 == 1)
          {
            printf("WP %s delta_luma_weight_l0[%d] = %d\n", v126, v121, v35[v121]);
          }

          syslog(3, "WP %s delta_luma_weight_l0[%d] = %d", v126, v121, v35[v121]);
        }

        else
        {
          v61 = v60 ^ 1;
          v62 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(a3);
          v64 = v35[v121];
          if ((v61 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s delta_luma_weight_l0[%d] = %d", v62, a2, v63, v126, v121, v64);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s delta_luma_weight_l0[%d] = %d\n", v62, a2, v63, v126, v121, v64);
            v65 = AVE_GetCurrTime();
            v66 = AVE_Log_GetLevelStr(a3);
            syslog(3, "%lld %d AVE %s: WP %s delta_luma_weight_l0[%d] = %d", v65, a2, v66, v126, v121, v35[v121]);
          }

          v34 = v36;
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v68 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if ((v124 & 0x20) != 0)
          {
            v74 = 0;
          }

          else
          {
            v74 = v68;
          }

          if (v74 == 1)
          {
            printf("WP %s chroma_weight_l0_flag[%d] = %d\n", v126, v121, v117[v121]);
          }

          syslog(3, "WP %s chroma_weight_l0_flag[%d] = %d", v126, v121, v117[v121]);
        }

        else
        {
          v69 = v68 ^ 1;
          v70 = AVE_GetCurrTime();
          v71 = AVE_Log_GetLevelStr(a3);
          v72 = v117[v121];
          if ((v69 | ((a3 & 0x20) >> 5)))
          {
            syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0_flag[%d] = %d", v70, a2, v71, v126, v121, v72);
          }

          else
          {
            printf("%lld %d AVE %s: WP %s chroma_weight_l0_flag[%d] = %d\n", v70, a2, v71, v126, v121, v72);
            v123 = AVE_GetCurrTime();
            v73 = AVE_Log_GetLevelStr(a3);
            syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0_flag[%d] = %d", v123, a2, v73, v126, v121, v117[v121]);
          }

          v34 = v36;
        }
      }

      v75 = 0;
      v76 = v120;
      do
      {
        if (AVE_Log_CheckLevel(a2, a3))
        {
          v77 = AVE_Log_CheckConsole(a2);
          if (a3 < 0)
          {
            if ((v124 & 0x20) != 0)
            {
              v84 = 0;
            }

            else
            {
              v84 = v77;
            }

            v85 = *(v76 - 16);
            if (v84 == 1)
            {
              printf("WP %s chroma_weight_l0[%d][%d] = %d\n", v126, v121, v75, v85);
              syslog(3, "WP %s chroma_weight_l0[%d][%d] = %d", v126, v121, v75, *(v76 - 16));
            }

            else
            {
              syslog(3, "WP %s chroma_weight_l0[%d][%d] = %d", v126, v121, v75, v85);
            }
          }

          else
          {
            v78 = v77 ^ 1;
            v79 = AVE_GetCurrTime();
            v80 = AVE_Log_GetLevelStr(a3);
            v81 = *(v76 - 16);
            if ((v78 | ((a3 & 0x20) >> 5)))
            {
              syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0[%d][%d] = %d", v79, a2, v80, v126, v121, v75, v81);
            }

            else
            {
              printf("%lld %d AVE %s: WP %s chroma_weight_l0[%d][%d] = %d\n", v79, a2, v80, v126, v121, v75, v81);
              v82 = AVE_GetCurrTime();
              v83 = AVE_Log_GetLevelStr(a3);
              syslog(3, "%lld %d AVE %s: WP %s chroma_weight_l0[%d][%d] = %d", v82, a2, v83, v126, v121, v75, *(v76 - 16));
            }

            v34 = v36;
            v35 = v125;
          }
        }

        if (AVE_Log_CheckLevel(a2, a3))
        {
          v86 = AVE_Log_CheckConsole(a2);
          if (a3 < 0)
          {
            if ((v124 & 0x20) != 0)
            {
              v93 = 0;
            }

            else
            {
              v93 = v86;
            }

            v94 = *v76;
            if (v93 == 1)
            {
              printf("WP %s chroma_offset_l0[%d][%d] = %d\n", v126, v121, v75, v94);
              syslog(3, "WP %s chroma_offset_l0[%d][%d] = %d", v126, v121, v75, *v76);
            }

            else
            {
              syslog(3, "WP %s chroma_offset_l0[%d][%d] = %d", v126, v121, v75, v94);
            }
          }

          else
          {
            v87 = v86 ^ 1;
            v88 = AVE_GetCurrTime();
            v89 = AVE_Log_GetLevelStr(a3);
            v90 = *v76;
            if ((v87 | ((a3 & 0x20) >> 5)))
            {
              syslog(3, "%lld %d AVE %s: WP %s chroma_offset_l0[%d][%d] = %d", v88, a2, v89, v126, v121, v75, v90);
            }

            else
            {
              printf("%lld %d AVE %s: WP %s chroma_offset_l0[%d][%d] = %d\n", v88, a2, v89, v126, v121, v75, v90);
              v91 = AVE_GetCurrTime();
              v92 = AVE_Log_GetLevelStr(a3);
              syslog(3, "%lld %d AVE %s: WP %s chroma_offset_l0[%d][%d] = %d", v91, a2, v92, v126, v121, v75, *v76);
            }

            v34 = v36;
            v35 = v125;
          }
        }

        if (AVE_Log_CheckLevel(a2, a3))
        {
          v95 = AVE_Log_CheckConsole(a2);
          if (a3 < 0)
          {
            if ((v124 & 0x20) != 0)
            {
              v102 = 0;
            }

            else
            {
              v102 = v95;
            }

            v103 = v76[24];
            if (v102 == 1)
            {
              printf("WP %s delta_chroma_weight_l0[%d][%d] = %d\n", v126, v121, v75, v103);
              syslog(3, "WP %s delta_chroma_weight_l0[%d][%d] = %d", v126, v121, v75, v76[24]);
            }

            else
            {
              syslog(3, "WP %s delta_chroma_weight_l0[%d][%d] = %d", v126, v121, v75, v103);
            }
          }

          else
          {
            v96 = v95 ^ 1;
            v97 = AVE_GetCurrTime();
            v98 = AVE_Log_GetLevelStr(a3);
            v99 = v76[24];
            if ((v96 | ((a3 & 0x20) >> 5)))
            {
              syslog(3, "%lld %d AVE %s: WP %s delta_chroma_weight_l0[%d][%d] = %d", v97, a2, v98, v126, v121, v75, v99);
            }

            else
            {
              printf("%lld %d AVE %s: WP %s delta_chroma_weight_l0[%d][%d] = %d\n", v97, a2, v98, v126, v121, v75, v99);
              v100 = AVE_GetCurrTime();
              v101 = AVE_Log_GetLevelStr(a3);
              syslog(3, "%lld %d AVE %s: WP %s delta_chroma_weight_l0[%d][%d] = %d", v100, a2, v101, v126, v121, v75, v76[24]);
            }

            v34 = v36;
            v35 = v125;
          }
        }

        if (AVE_Log_CheckLevel(a2, a3))
        {
          v104 = AVE_Log_CheckConsole(a2);
          if (a3 < 0)
          {
            if ((v124 & 0x20) != 0)
            {
              v111 = 0;
            }

            else
            {
              v111 = v104;
            }

            v112 = v76[40];
            if (v111 == 1)
            {
              printf("WP %s delta_chroma_offset_l0[%d][%d] = %d\n", v126, v121, v75, v112);
              syslog(3, "WP %s delta_chroma_offset_l0[%d][%d] = %d", v126, v121, v75, v76[40]);
            }

            else
            {
              syslog(3, "WP %s delta_chroma_offset_l0[%d][%d] = %d", v126, v121, v75, v112);
            }
          }

          else
          {
            v105 = v104 ^ 1;
            v106 = AVE_GetCurrTime();
            v107 = AVE_Log_GetLevelStr(a3);
            v108 = v76[40];
            if ((v105 | ((a3 & 0x20) >> 5)))
            {
              syslog(3, "%lld %d AVE %s: WP %s delta_chroma_offset_l0[%d][%d] = %d", v106, a2, v107, v126, v121, v75, v108);
            }

            else
            {
              printf("%lld %d AVE %s: WP %s delta_chroma_offset_l0[%d][%d] = %d\n", v106, a2, v107, v126, v121, v75, v108);
              v109 = AVE_GetCurrTime();
              v110 = AVE_Log_GetLevelStr(a3);
              syslog(3, "%lld %d AVE %s: WP %s delta_chroma_offset_l0[%d][%d] = %d", v109, a2, v110, v126, v121, v75, v76[40]);
            }

            v34 = v36;
            v35 = v125;
          }
        }

        ++v75;
        ++v76;
      }

      while (v75 != 2);
      v33 = v121 + 1;
      v120 += 2;
    }

    while (v121 != 3);
    result = 0;
  }

  else
  {
    result = 4294966295;
  }

  v113 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AVE_Enc_Preset_Find_Bitrate(int a1, int a2, int *a3)
{
  if (a3)
  {
    v5 = a2 * a1;
    if (a2 * a1 >= 1)
    {
      v6 = a2 * a1;
    }

    else
    {
      v6 = 2073600;
    }

    if (v5 < 0)
    {
      v12 = 0;
      v11 = 0;
      v8 = 0;
      LODWORD(v9) = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = &dword_295661300;
      while (1)
      {
        v11 = v7;
        v12 = *(v10 - 1);
        if (v5 == v7)
        {
          v8 = *(v10 - 1);
        }

        if (v9 == 6)
        {
          break;
        }

        v13 = *v10;
        v10 += 2;
        v7 = v13;
        ++v9;
        if (v5 < v13)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v9) = 7;
    }

LABEL_18:
    if (v12 < 1)
    {
      v12 = 0;
    }

    else
    {
      if (v9 >= 6)
      {
        LODWORD(v9) = 6;
      }

      if (!v8)
      {
        v8 = gsc_saAVE_Enc_Preset_Set[2 * v9 + 1];
      }

      v17 = __OFSUB__(v8, v12);
      v18 = v8 - v12;
      if (!((v18 < 0) ^ v17 | (v18 == 0)))
      {
        v12 = ((v6 - v11) * v18 / (gsc_saAVE_Enc_Preset_Set[2 * v9] - v11) + v12);
      }
    }

    result = 0;
    *a3 = v12;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v14 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p\n", CurrTime, 30, LevelStr, "AVE_Enc_Preset_Find_Bitrate", 85, "pBitrate != __null", a1, a2, 0);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p", CurrTime, 30);
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Enc_CreateOnePresetDict(const void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, int a7, int a8, int *a9, __CFDictionary *a10)
{
  if (a9)
  {
    v15 = a6 < 1;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && a1 != 0 && a5 != 0 && a10 != 0)
  {
    if (*a9 < 1)
    {
      return 0;
    }

    v20 = 0;
    v21 = a8;
    for (i = (a9 + 12); ; i += 4)
    {
      v23 = *(i - 2);
      if (!AVE_Prop_FindPropertyEntry(a5, a6, a3, a7 | 0x30000u, a1, a2, v23))
      {
        Str = AVE_CFStr_GetStr(v23, 0, 0);
        if (AVE_Log_CheckLevel(0x1Eu, 5))
        {
          v37 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(5);
          if (!Str)
          {
            Str = &unk_295613FE7;
          }

          if (v37)
          {
            printf("%lld %d AVE %s: %s:%d fail to find property entry %p %lld %d %p %p %d 0x%x %d %p %p %p %s %d\n", CurrTime, 30, LevelStr, "AVE_Enc_CreateOnePresetDict", 182, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v23, Str, v20);
            v39 = AVE_GetCurrTime();
            v36 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: %s:%d fail to find property entry %p %lld %d %p %p %d 0x%x %d %p %p %p %s %d", v39, 30, v36, "AVE_Enc_CreateOnePresetDict", 182, a1, a2, a3, a4, a5, a6);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d fail to find property entry %p %lld %d %p %p %d 0x%x %d %p %p %p %s %d", CurrTime, 30, LevelStr, "AVE_Enc_CreateOnePresetDict", 182, a1, a2, a3, a4, a5, a6);
          }
        }

        return 4294966288;
      }

      v24 = *(i - 2);
      if (v24 <= 2)
      {
        if (v24 == 1)
        {
          AVE_CFDict_AddBool(v23, *i != 0, a10);
          goto LABEL_30;
        }

        if (v24 == 2)
        {
          v27 = *i;
          goto LABEL_27;
        }
      }

      else
      {
        switch(v24)
        {
          case 3:
            AVE_CFDict_AddDouble(v23, *i, a10);
            break;
          case 5:
            v27 = *i * v21;
LABEL_27:
            v26 = v27;
            v25 = v23;
LABEL_28:
            AVE_CFDict_AddSInt32(v25, v26, a10);
            break;
          case 4:
            v25 = v23;
            v26 = a8;
            goto LABEL_28;
        }
      }

LABEL_30:
      if (++v20 >= *a9)
      {
        return 0;
      }
    }
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v29 = AVE_Log_CheckConsole(0x1Eu);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(4);
    if (v29)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %p %p\n", v30, 30, v31, "AVE_Enc_CreateOnePresetDict", 169, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0 && pPreset != __null", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      v32 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %p %p", v32, 30, v35, "AVE_Enc_CreateOnePresetDict", 169, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0 && pPreset != __null", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %p %p", v30, 30, v31, "AVE_Enc_CreateOnePresetDict", 169, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0 && pPreset != __null", a1, a2, a3);
    }
  }

  return 4294966295;
}

uint64_t AVE_Enc_CreatePresetDict(const void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, int a7, int a8, int a9, void *a10)
{
  v14 = a1;
  v15 = a10;
  v71[0] = 0;
  if (a6 >= 1 && a1 && a5 && a10)
  {
    Bitrate = AVE_Enc_Preset_Find_Bitrate(a8, a9, v71);
    v66 = a2;
    if (Bitrate)
    {
      v17 = Bitrate;
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find bitrate %p %lld %d %p %p %d 0x%x %d %d %p %d %d\n", CurrTime, 30, LevelStr, "AVE_Enc_CreatePresetDict", 259, "ret == 0", v14, v66, a3, a4, a5, a6, a7, a8, a9, a10, v71[0], v17);
          v21 = AVE_GetCurrTime();
          v57 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find bitrate %p %lld %d %p %p %d 0x%x %d %d %p %d %d", v21, 30, v57, "AVE_Enc_CreatePresetDict", 259, "ret == 0", v14, v66, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find bitrate %p %lld %d %p %p %d 0x%x %d %d %p %d %d", CurrTime, 30, LevelStr, "AVE_Enc_CreatePresetDict", 259, "ret == 0", v14, v66, a3);
        }
      }
    }

    else
    {
      v26 = 0;
      v67 = 0;
      v27 = &gsc_saEnc_Preset_Set;
      v64 = a4;
      while (1)
      {
        Mutable = CFDictionaryCreateMutable(a4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (!Mutable)
        {
          break;
        }

        v29 = Mutable;
        v30 = *v27;
        if (*v27 >= 11)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v48 = AVE_Log_CheckConsole(0x1Eu);
            v49 = AVE_GetCurrTime();
            v50 = AVE_Log_GetLevelStr(4);
            if (v48)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to initial preset init table %p %lld %d %p %p %d 0x%x %d %p %d %d\n", v49, 30, v50, "AVE_Enc_CreatePresetDict", 275, "gsc_saEnc_Preset_Set[i].iNum <= 10", v14, v66, a3, a4, a5, a6, a7, v71[0], v15, v26, v30);
              v51 = AVE_GetCurrTime();
              v60 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initial preset init table %p %lld %d %p %p %d 0x%x %d %p %d %d", v51, 30, v60, "AVE_Enc_CreatePresetDict", 275, "gsc_saEnc_Preset_Set[i].iNum <= 10", v14, v66, a3);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initial preset init table %p %lld %d %p %p %d 0x%x %d %p %d %d", v49, 30, v50, "AVE_Enc_CreatePresetDict", 275, "gsc_saEnc_Preset_Set[i].iNum <= 10", v14, v66, a3);
            }
          }

          CFRelease(v29);
          return 4294966295;
        }

        v31 = *(v27 + 2);
        if (AVE_Enc_CreateOnePresetDict(v14, a2, a3, a4, a5, a6, a7, v71[0], v27, Mutable))
        {
          ++v67;
          if (AVE_Log_CheckLevel(0x1Eu, 5))
          {
            v32 = v14;
            v33 = AVE_Log_CheckConsole(0x1Eu);
            v65 = AVE_GetCurrTime();
            v34 = AVE_Log_GetLevelStr(5);
            v35 = *(v27 + 1);
            if (v33)
            {
              v36 = v15;
              v62 = v15;
              a2 = v66;
              v37 = v32;
              printf("%lld %d AVE %s: %s:%d fail to create preset %p %lld %d %p %p %d 0x%x %d %p %p %d %p %s\n", v65, 30, v34, "AVE_Enc_CreatePresetDict", 291, v32, v66, a3, v64, a5, a6, a7, v71[0], v62, v29, v26, v31, v35);
              v38 = AVE_GetCurrTime();
              v39 = AVE_Log_GetLevelStr(5);
              v63 = v35;
              v14 = v37;
              v15 = v36;
              a4 = v64;
              syslog(3, "%lld %d AVE %s: %s:%d fail to create preset %p %lld %d %p %p %d 0x%x %d %p %p %d %p %s", v38, 30, v39, "AVE_Enc_CreatePresetDict", 291, v14, v66, a3, v64, a5, a6, a7, v71[0], v15, v29, v26, v31, v63);
            }

            else
            {
              a2 = v66;
              v14 = v32;
              syslog(3, "%lld %d AVE %s: %s:%d fail to create preset %p %lld %d %p %p %d 0x%x %d %p %p %d %p %s", v65, 30, v34, "AVE_Enc_CreatePresetDict", 291, v32, v66, a3, a4, a5, a6, a7, v71[0], v15, v29, v26, v31, *(v27 + 1));
            }
          }
        }

        else
        {
          CFDictionarySetValue(v15, v31, v29);
        }

        CFRelease(v29);
        ++v26;
        v27 += 86;
        if (v26 == 3)
        {
          if (v67 >= 3)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v52 = AVE_Log_CheckConsole(0x1Eu);
              v53 = AVE_GetCurrTime();
              v54 = AVE_Log_GetLevelStr(4);
              if (v52)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to create preset dict %p %lld %d %p %p %d 0x%x %d %p %d %d %d\n", v53, 30, v54, "AVE_Enc_CreatePresetDict", 304, "iSkippedNum < iNum", v14, v66, a3, a4, a5, a6, a7, v71[0], v15, v67, 3, 0);
                v55 = AVE_GetCurrTime();
                v61 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dict %p %lld %d %p %p %d 0x%x %d %p %d %d %d", v55, 30, v61, "AVE_Enc_CreatePresetDict", 304, "iSkippedNum < iNum", v14, v66, a3, a4);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dict %p %lld %d %p %p %d 0x%x %d %p %d %d %d", v53, 30, v54, "AVE_Enc_CreatePresetDict", 304, "iSkippedNum < iNum", v14, v66, a3, a4);
              }
            }

            return 4294966296;
          }

          else
          {
            if (AVE_Log_CheckLevel(0x1Eu, 7))
            {
              v40 = AVE_Log_CheckConsole(0x1Eu);
              v41 = AVE_GetCurrTime();
              v42 = AVE_Log_GetLevelStr(7);
              if (v40)
              {
                printf("%lld %d AVE %s: %p %lld Create Preset Dictionary: %p %d %d\n", v41, 30, v42, v14, v66, v15, 3, v67);
                v43 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %p %lld Create Preset Dictionary: %p %d %d", v43);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %p %lld Create Preset Dictionary: %p %d %d", v41);
              }
            }

            return 0;
          }
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v44 = AVE_Log_CheckConsole(0x1Eu);
        v45 = AVE_GetCurrTime();
        v46 = AVE_Log_GetLevelStr(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create Preset Dictionary %p %lld %d %p %p %d 0x%x %d %p %d\n", v45, 30, v46, "AVE_Enc_CreatePresetDict", 267, "pTmpDict != __null", v14, v66, a3, a4, a5, a6, a7, v71[0], v15, v26);
          v47 = AVE_GetCurrTime();
          v59 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create Preset Dictionary %p %lld %d %p %p %d 0x%x %d %p %d", v47, 30, v59, "AVE_Enc_CreatePresetDict", 267, "pTmpDict != __null", v14, v66, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create Preset Dictionary %p %lld %d %p %p %d 0x%x %d %p %d", v45, 30, v46, "AVE_Enc_CreatePresetDict", 267, "pTmpDict != __null", v14, v66, a3);
        }
      }

      return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %d %p\n", v23, 30, v24, "AVE_Enc_CreatePresetDict", 250, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0", v14, a2, a3, a4, a5, a6, a7, a8, a9, a10);
        v25 = AVE_GetCurrTime();
        v58 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %d %p", v25, 30, v58, "AVE_Enc_CreatePresetDict", 250, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0", v14, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %p %p %d 0x%x %d %d %p", v23, 30, v24, "AVE_Enc_CreatePresetDict", 250, "pINS != __null && pArray != __null && pDict != __null && iArrayNum > 0", v14, a2);
      }
    }

    return 4294966295;
  }

  return v17;
}

uint64_t AVE_Plugin_HEVC_CreateInstance(uint64_t a1, const void *a2, void *a3)
{
  v84 = *MEMORY[0x29EDCA608];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  *v76 = 0u;
  v77 = 0u;
  CurrTime = AVE_GetCurrTime();
  AVE_Log_Init();
  AVE_DW_Init();
  v6 = AVE_DW_Get();
  AVE_Log_Config(v6 + 552);
  if (AVE_Log_CheckLevel(0xBu, 0))
  {
    v7 = AVE_Log_CheckConsole(0xBu);
    v8 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(0);
    if (v7)
    {
      printf("%lld %d AVE %s: Compiled %s in %s on %s %s\n", v8, 11, LevelStr, "905.5.3", "prod", "Oct 23 2025", "06:35:56");
      v8 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(0);
    }

    syslog(3, "%lld %d AVE %s: Compiled %s in %s on %s %s", v8);
  }

  TemporayPath = AVE_GetTemporayPath(v76, 128);
  if (TemporayPath >= 1 && AVE_Log_CheckLevel(0xBu, 0))
  {
    v11 = AVE_Log_CheckConsole(0xBu);
    v12 = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(0);
    if (v11)
    {
      printf("%lld %d AVE %s: Temporary Path: %s\n", v12, 11, v13, v76);
      v14 = AVE_GetCurrTime();
      v61 = AVE_Log_GetLevelStr(0);
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v14, 11, v61, v76);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Temporary Path: %s", v12, 11, v13, v76);
    }
  }

  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v15 = AVE_Log_CheckConsole(0xBu);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(6);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %lld\n", v16, 11, v17, "AVE_Plugin_HEVC_CreateInstance", a1, a2, a3, 0);
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %lld", v16, 11);
  }

  if (!a3)
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v19 = AVE_Log_CheckConsole(0xBu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p %p %lld %d\n", v20, 11, v21, "AVE_Plugin_HEVC_CreateInstance", 1350, "instanceOut != __null", a1, a2, 0, 0, TemporayPath);
        v20 = AVE_GetCurrTime();
        v62 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v62 = v21;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p %p %lld %d", v20, 11, v62, "AVE_Plugin_HEVC_CreateInstance", 1350);
    }

    goto LABEL_45;
  }

  if (a1 != 1752589105)
  {
    if (a1 == 1869117027)
    {
      v18 = 2048;
      goto LABEL_25;
    }

    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v28 = AVE_Log_CheckConsole(0xBu);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | mismatched codec %d %p %p %lld %d\n", v29, 11, v30, "AVE_Plugin_HEVC_CreateInstance", 1356, "codecType == kCMVideoCodecType_HEVC || codecType == kFigVideoCodecType_HEVC_WirelessDisplayEncrypted", a1, a2, a3, 0, TemporayPath);
        v31 = AVE_GetCurrTime();
        v64 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | mismatched codec %d %p %p %lld %d", v31, 11, v64, "AVE_Plugin_HEVC_CreateInstance", 1356);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | mismatched codec %d %p %p %lld %d", v29, 11, v30, "AVE_Plugin_HEVC_CreateInstance", 1356);
      }
    }

LABEL_45:
    v33 = 0;
    v45 = 0;
    v40 = 4294966295;
    goto LABEL_60;
  }

  v18 = 0;
LABEL_25:
  kdebug_trace();
  *a3 = 0;
  VTVideoEncoderGetClassID();
  v22 = CMDerivedObjectCreate();
  if (v22)
  {
    v23 = v22;
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v24 = AVE_Log_CheckConsole(0xBu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create HEVC Object %d %p %p %lld %d\n", v25, 11, v26, "AVE_Plugin_HEVC_CreateInstance", 1371, "res == noErr", a1, a2, a3, 0, v23);
        v27 = AVE_GetCurrTime();
        v63 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create HEVC Object %d %p %p %lld %d", v27, 11, v63, "AVE_Plugin_HEVC_CreateInstance", 1371);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create HEVC Object %d %p %p %lld %d", v25, 11, v26, "AVE_Plugin_HEVC_CreateInstance", 1371);
      }
    }

    v40 = 4294966292;
LABEL_58:
    v45 = 0;
    v33 = 0;
    goto LABEL_59;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v41 = AVE_Log_CheckConsole(0xBu);
      v42 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(4);
      if (v41)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC Object %d %p %p %lld %p %d\n", v42, 11, v43, "AVE_Plugin_HEVC_CreateInstance", 1376, "pPI != __null", a1, a2, a3, 0, 0, TemporayPath);
        v44 = AVE_GetCurrTime();
        v66 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC Object %d %p %p %lld %p %d", v44, 11, v66, "AVE_Plugin_HEVC_CreateInstance", 1376, "pPI != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC Object %d %p %p %lld %p %d", v42, 11, v43, "AVE_Plugin_HEVC_CreateInstance", 1376, "pPI != __null");
      }
    }

    v40 = 4294966296;
    goto LABEL_58;
  }

  v33 = DerivedStorage;
  bzero(DerivedStorage, 0x1A608uLL);
  v34 = AVE_Mutex_Create();
  *v33 = v34;
  if (!v34)
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v46 = AVE_Log_CheckConsole(0xBu);
      v47 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(4);
      if (v46)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create mutex %d %p %p %lld %p %p %d\n", v47, 11, v48, "AVE_Plugin_HEVC_CreateInstance", 1383, "pPI->pPIMutex != __null", a1, a2, a3, 0, 0, v33, TemporayPath);
        v49 = AVE_GetCurrTime();
        v67 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %d %p %p %lld %p %p %d", v49, 11, v67, "AVE_Plugin_HEVC_CreateInstance", 1383, "pPI->pPIMutex != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %d %p %p %lld %p %p %d", v47, 11, v48, "AVE_Plugin_HEVC_CreateInstance", 1383, "pPI->pPIMutex != __null", a1);
      }
    }

    goto LABEL_55;
  }

  v35 = AVE_Session_HEVC_Create(v33, v18);
  if (v35)
  {
    v36 = v35;
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v37 = AVE_Log_CheckConsole(0xBu);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create HEVC %d %p %p %lld %p %p 0x%llx %d\n", v38, 11, v39, "AVE_Plugin_HEVC_CreateInstance", 1388, "ret == 0", a1, a2, a3, 0, 0, v33, v18, v36);
        v38 = AVE_GetCurrTime();
        v73 = v18;
        v74 = v36;
        v72 = v33;
        v71 = a3;
        v69 = a1;
        v70 = a2;
        v65 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v73 = v18;
        v74 = v36;
        v72 = v33;
        v71 = a3;
        v69 = a1;
        v70 = a2;
        v65 = v39;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create HEVC %d %p %p %lld %p %p 0x%llx %d", v38, 11, v65, "AVE_Plugin_HEVC_CreateInstance", 1388, "ret == 0", v69, v70, v71, 0, 0, v72, v73, v74);
    }

LABEL_55:
    if (*v33)
    {
      AVE_Mutex_Destroy(*v33);
      *v33 = 0;
    }

    v40 = 4294966293;
    goto LABEL_58;
  }

  v40 = 0;
  v45 = v33[7];
  *a3 = 0;
LABEL_59:
  kdebug_trace();
LABEL_60:
  v50 = AVE_GetCurrTime() - CurrTime;
  if (v50 >= 50000)
  {
    v51 = 5;
  }

  else
  {
    v51 = 6;
  }

  v52 = AVE_RetCode2OSStatus(v40);
  if (v40)
  {
    v53 = 4;
  }

  else
  {
    v53 = v51;
  }

  if (AVE_Log_CheckLevel(0xBu, v53))
  {
    v54 = a3;
    v55 = AVE_Log_CheckConsole(0xBu);
    v56 = AVE_GetCurrTime();
    v57 = AVE_Log_GetLevelStr(v53);
    if (v55)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %lld %p %p %lld %d %d\n", v56, 11, v57, "AVE_Plugin_HEVC_CreateInstance", a1, a2, v54, v45, 0, v33, v50, v40, v52);
      v58 = AVE_GetCurrTime();
      v68 = AVE_Log_GetLevelStr(v53);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %lld %p %p %lld %d %d", v58, 11, v68, "AVE_Plugin_HEVC_CreateInstance", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %lld %p %p %lld %d %d", v56, 11, v57, "AVE_Plugin_HEVC_CreateInstance", a1, a2);
    }
  }

  v59 = *MEMORY[0x29EDCA608];
  return v52;
}

uint64_t AVE_Plugin_HEVC_SetCallback(const void *a1, _OWORD *a2)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v5 = AVE_Log_CheckConsole(0xBu);
    v6 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, LevelStr, "AVE_Plugin_HEVC_SetCallback", a1, a2, 0);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_HEVC_SetCallback", 1455, "pPI != __null", a1, a2, 0, 0);
          v20 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d", v20, 11, v31, "AVE_Plugin_HEVC_SetCallback");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d", v18, 11, v19, "AVE_Plugin_HEVC_SetCallback");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v14, 11, v15, "AVE_Plugin_HEVC_SetCallback", 1450, "encoder != __null && pCallback != __null", a1, a2, 0, 0);
        v16 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v16, 11, v30, "AVE_Plugin_HEVC_SetCallback");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v14, 11, v15, "AVE_Plugin_HEVC_SetCallback");
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
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_HEVC_SetCallback", a1, a2, v10, v21, v11, v23);
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

uint64_t AVE_Plugin_HEVC_Invalidate(const void *a1)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v3 = AVE_Log_CheckConsole(0xBu);
    v4 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, LevelStr, "AVE_Plugin_HEVC_Invalidate", a1, 0);
      v6 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v31, "AVE_Plugin_HEVC_Invalidate", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, LevelStr, "AVE_Plugin_HEVC_Invalidate", a1, 0);
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
      v10 = AVE_Session_HEVC_Stop(v8);
      if (v10 && AVE_Log_CheckLevel(0xBu, 4))
      {
        v11 = AVE_Log_CheckConsole(0xBu);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to stop HEVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_HEVC_Invalidate", 57, "ret == 0", a1, v9, v8, v10);
          v14 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop HEVC %p %lld %p %d", v14, 11, v32, "AVE_Plugin_HEVC_Invalidate");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop HEVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_HEVC_Invalidate");
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_HEVC_Invalidate", 46, "pPI != __null", a1, 0, 0);
          v22 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v22, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v20, 11, v21);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_HEVC_Invalidate", 41, "object != __null", 0, 0, 0);
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
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_HEVC_Invalidate", a1, v9, v23, v10, v25);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v26);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v28, 11);
  }

  return v25;
}

void AVE_Plugin_HEVC_Finalize(const void *a1)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v3 = AVE_Log_CheckConsole(0xBu);
    v4 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, LevelStr, "AVE_Plugin_HEVC_Finalize", a1, 0);
      v6 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v30, "AVE_Plugin_HEVC_Finalize", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, LevelStr, "AVE_Plugin_HEVC_Finalize", a1, 0);
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
      v10 = AVE_Session_HEVC_Destroy(v8);
      if (v10 && AVE_Log_CheckLevel(0xBu, 4))
      {
        v11 = AVE_Log_CheckConsole(0xBu);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to destroy HEVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_HEVC_Finalize", 112, "ret == 0", a1, v9, v8, v10);
          v14 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy HEVC %p %lld %p %d", v14, 11, v31, "AVE_Plugin_HEVC_Finalize");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy HEVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_HEVC_Finalize");
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_HEVC_Finalize", 101, "pPI != __null", a1, 0, 0);
          v22 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v22, 11, v33);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v20, 11, v21);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_HEVC_Finalize", 96, "object != __null", 0, 0, 0);
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
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_HEVC_Finalize", a1, v9, v23, v10, v25);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v26);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v28, 11);
  }
}

uint64_t AVE_Plugin_HEVC_CopyProperty(const void *a1, __CFString *a2, const void *a3, const void *a4)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 7))
  {
    v9 = AVE_Log_CheckConsole(0xBu);
    v10 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %lld\n", v10, 11, LevelStr, "AVE_Plugin_HEVC_CopyProperty", a1, a2, a3, a4, 0);
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
      Property = AVE_Session_HEVC_GetProperty(v14, a3, a2, a4);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %p %lld %d\n", v22, 11, v23, "AVE_Plugin_HEVC_CopyProperty", 220, "pPI != __null", a1, a2, a3, a4, 0, 0);
          v24 = AVE_GetCurrTime();
          v36 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %p %lld %d", v24, 11, v36, "AVE_Plugin_HEVC_CopyProperty", 220, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %p %lld %d", v22, 11, v23, "AVE_Plugin_HEVC_CopyProperty", 220, "pPI != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_HEVC_CopyProperty", 215, "object != __null && propertyKey != __null && propertyValueOut != __null", a1, a2, a3, a4, 0, 0);
        v20 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d", v20, 11, v35, "AVE_Plugin_HEVC_CopyProperty", 215, "object != __null && propertyKey != __null && propertyValueOut != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d", v18, 11, v19, "AVE_Plugin_HEVC_CopyProperty", 215, "object != __null && propertyKey != __null && propertyValueOut != __null");
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
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d\n", v38, 11, v31, "AVE_Plugin_HEVC_CopyProperty", a1, v28, v29, a4, v15, v25, Property, v27);
      v32 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(v26);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v32, 11, v37, "AVE_Plugin_HEVC_CopyProperty", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v38, 11, v31, "AVE_Plugin_HEVC_CopyProperty", a1);
    }
  }

  return v27;
}

uint64_t AVE_Plugin_HEVC_SetProperty(const void *a1, __CFString *a2, const void *a3)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 7))
  {
    v7 = AVE_Log_CheckConsole(0xBu);
    v8 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld\n", v8, 11, LevelStr, "AVE_Plugin_HEVC_SetProperty", a1, a2, a3, 0);
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
      v13 = AVE_Session_HEVC_SetProperty(v11, a2, a3);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d\n", v19, 11, v20, "AVE_Plugin_HEVC_SetProperty", 163, "pPI != __null", a1, a2, a3, 0, 0);
          v21 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d", v21, 11, v32, "AVE_Plugin_HEVC_SetProperty", 163);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d", v19, 11, v20, "AVE_Plugin_HEVC_SetProperty", 163);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d\n", v15, 11, v16, "AVE_Plugin_HEVC_SetProperty", 158, "object != __null && propertyKey != __null && propertyValue != __null", a1, a2, a3, 0, 0);
        v17 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v17, 11, v31, "AVE_Plugin_HEVC_SetProperty", 158);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v15, 11, v16, "AVE_Plugin_HEVC_SetProperty", 158);
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
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_HEVC_SetProperty", a1, a2, a3, v12, v22, v13, v24);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(v23);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v28, 11, v29, "AVE_Plugin_HEVC_SetProperty");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v26, 11, v27, "AVE_Plugin_HEVC_SetProperty");
    }
  }

  return v24;
}

uint64_t AVE_Plugin_HEVC_StartSession(const void *a1, pthread_mutex_t *a2, unint64_t a3, pthread_mutex_t *a4)
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
      printf("%lld %d AVE %s: %s Enter %p %p %d %d %p %lld\n", v9, 11, LevelStr, "AVE_Plugin_HEVC_StartSession", a1, a2, v5, v6, a4, 0);
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
      started = AVE_Session_HEVC_StartSession(v13, &v48);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to start HEVC %p %p %d %d %p %lld %p %d\n", v18, 11, v19, "AVE_Plugin_HEVC_StartSession", 303, "ret == 0", a1, a2, v5, v45, a4, v14, v13, v16);
          v44 = AVE_GetCurrTime();
          v40 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start HEVC %p %p %d %d %p %lld %p %d", v44, 11, v40, "AVE_Plugin_HEVC_StartSession", 303, "ret == 0", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start HEVC %p %p %d %d %p %lld %p %d", v18, 11, v19, "AVE_Plugin_HEVC_StartSession", 303, "ret == 0", a1);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %d %d %p %lld %d\n", v26, 11, v27, "AVE_Plugin_HEVC_StartSession", 283, "pPI != __null", a1, a2, v5, v6, a4, 0, 0);
          v28 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %d %d %p %lld %d", v28, 11, v42, "AVE_Plugin_HEVC_StartSession", 283, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %d %d %p %lld %d", v26, 11, v27, "AVE_Plugin_HEVC_StartSession", 283, "pPI != __null");
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
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d\n", v21, 11, v22, "AVE_Plugin_HEVC_StartSession", 277, "encoder != __null && session != __null && dimensions.width > 0 && dimensions.height > 0", a1, a2, v5, v6, a4, 0, 0);
      v23 = AVE_GetCurrTime();
      v24 = a4;
      v41 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v23, 11, v41, "AVE_Plugin_HEVC_StartSession", 277, "encoder != __null && session != __null && dimensions.width > 0 && dimensions.height > 0");
    }

    else
    {
      v24 = a4;
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v21, 11, v22, "AVE_Plugin_HEVC_StartSession", 277, "encoder != __null && session != __null && dimensions.width > 0 && dimensions.height > 0");
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
      printf("%lld %d AVE %s: %s Exit %p %p %d %d %p %lld %lld %d %d\n", v35, 11, v36, "AVE_Plugin_HEVC_StartSession", a1, a2, v5, v45, v24, v14, v30, v16, v32);
      v37 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(v33);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %p %lld %lld %d %d", v37, 11, v43, "AVE_Plugin_HEVC_StartSession", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %p %lld %lld %d %d", v35, 11, v36, "AVE_Plugin_HEVC_StartSession", a1);
    }
  }

  return v32;
}

uint64_t AVE_Plugin_HEVC_EncodeFrame(const void *a1, const void *a2, const void *a3, uint64_t *a4, void *a5, const __CFDictionary *a6, _DWORD *a7)
{
  v82[0] = 0;
  v82[1] = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  CurrTime = AVE_GetCurrTime();
  v75 = a7;
  if (AVE_Log_CheckLevel(0xBu, 8))
  {
    v15 = AVE_Log_CheckConsole(0xBu);
    v16 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    v18 = *a4;
    v19 = *(a4 + 2);
    v20 = *(a4 + 3);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld\n", v16, 11, LevelStr, "AVE_Plugin_HEVC_EncodeFrame", a1, a2, a3, v18, v19, v20, a4[2], *a5, *(a5 + 2), *(a5 + 3), a5[2], a6, a7, 0);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(8);
      v66 = *(a5 + 3);
      v68 = a5[2];
      v59 = *a5;
      v62 = *(a5 + 2);
      v58 = a4[2];
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld", v21, 11, v22, "AVE_Plugin_HEVC_EncodeFrame", a1, a2, a3, *a4, *(a4 + 2), *(a4 + 3));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld", v16, 11, LevelStr, "AVE_Plugin_HEVC_EncodeFrame", a1, a2, a3, v18, v19, v20);
    }
  }

  v73 = a3;
  v74 = a1;
  if (a1 && a3)
  {
    v23 = a6;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v25 = DerivedStorage;
    if (DerivedStorage)
    {
      v26 = *a4;
      v80 = a4[1];
      v81 = a4[2];
      v76 = *a5;
      v77 = a5[1];
      v78 = a5[2];
      v79 = v26;
      AVE_Mutex_Lock(*DerivedStorage);
      v27 = *(v25 + 56);
      kdebug_trace();
      v28 = AVE_Session_HEVC_Process(v25, a2, a3, v82, &v79, &v76, v23);
      ++*(v25 + 48);
    }

    else if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v37 = AVE_Log_CheckConsole(0xBu);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      v40 = *a4;
      v41 = *(a4 + 2);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d %lld %d %p %p %lld %d\n", v38, 11, v39, "AVE_Plugin_HEVC_EncodeFrame", 383, "pPI != __null", a1, a2, a3, v40, v41, *a5, *(a5 + 2), v23, v75, 0, 0);
        v70 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(4);
        v61 = *a5;
        v64 = *(a5 + 2);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d %lld %d %p %p %lld %d", v70, 11, v42, "AVE_Plugin_HEVC_EncodeFrame", 383, "pPI != __null", a1, a2, a3, *a4, *(a4 + 2));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d %lld %d %p %p %lld %d", v38, 11, v39, "AVE_Plugin_HEVC_EncodeFrame", 383, "pPI != __null", a1, a2, a3, v40, v41);
      }

      v27 = 0;
      v28 = 4294966296;
    }

    else
    {
      v27 = 0;
      v28 = 4294966296;
    }

    v36 = a2;
    kdebug_trace();
    if (v75)
    {
      *v75 |= 1u;
    }

    AVE_Mutex_Unlock(*v25);
    a6 = v23;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v29 = AVE_Log_CheckConsole(0xBu);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      v32 = *a4;
      v33 = *(a4 + 2);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d\n", v30, 11, v31, "AVE_Plugin_HEVC_EncodeFrame", 375, "encoder != __null && imageBuffer != __null", a1, a2, a3, v32, v33, *a5, *(a5 + 2), a6, a7, 0, 0);
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        v60 = *a5;
        v63 = *(a5 + 2);
        v56 = a3;
        v36 = a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d", v34, 11, v35, "AVE_Plugin_HEVC_EncodeFrame", 375, "encoder != __null && imageBuffer != __null", a1, a2, v56, *a4, *(a4 + 2));
      }

      else
      {
        v57 = a3;
        v36 = a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d", v30, 11, v31, "AVE_Plugin_HEVC_EncodeFrame", 375, "encoder != __null && imageBuffer != __null", a1, a2, v57, v32, v33);
      }
    }

    else
    {
      v36 = a2;
    }

    v27 = 0;
    v28 = 4294966295;
  }

  v43 = AVE_GetCurrTime() - CurrTime;
  if (v43 >= 50000)
  {
    v44 = 5;
  }

  else
  {
    v44 = 8;
  }

  v45 = AVE_RetCode2OSStatus(v28);
  if (v28)
  {
    v46 = 4;
  }

  else
  {
    v46 = v44;
  }

  if (AVE_Log_CheckLevel(0xBu, v46))
  {
    v47 = AVE_Log_CheckConsole(0xBu);
    v71 = AVE_GetCurrTime();
    v48 = AVE_Log_GetLevelStr(v46);
    v49 = *a4;
    v50 = *(a4 + 2);
    v51 = *(a4 + 3);
    v52 = a4[2];
    v53 = *a5;
    if (v47)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d\n", v71, 11, v48, "AVE_Plugin_HEVC_EncodeFrame", v74, v36, v73, v49, v50, v51, v52, v53, *(a5 + 2), *(a5 + 3), a5[2], a6, v75, v27, v43, v28, v45);
      v72 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(v46);
      v67 = *(a5 + 3);
      v69 = a5[2];
      v65 = *(a5 + 2);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d", v72, 11, v54, "AVE_Plugin_HEVC_EncodeFrame", v74, v36, v73, *a4, *(a4 + 2), *(a4 + 3), a4[2], *a5);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d", v71, 11, v48, "AVE_Plugin_HEVC_EncodeFrame", v74, v36, v73, v49, v50, v51, v52, v53);
    }
  }

  return v45;
}

uint64_t AVE_Plugin_HEVC_CompleteFrames(const void *a1, void *a2)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 7))
  {
    v5 = AVE_Log_CheckConsole(0xBu);
    v6 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v8 = *(a2 + 2);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld %d %lld\n", v6, 11, LevelStr, "AVE_Plugin_HEVC_CompleteFrames", a1, *a2, *(a2 + 2), 0);
      v6 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v9 = *a2;
    }

    v36 = *(a2 + 2);
    syslog(3, "%lld %d AVE %s: %s Enter %p %lld %d %lld", v6, 11);
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v11 = DerivedStorage;
    if (DerivedStorage)
    {
      AVE_Mutex_Lock(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      v13 = AVE_Session_HEVC_Complete(v11);
      if (v13 && AVE_Log_CheckLevel(0xBu, 4))
      {
        v14 = AVE_Log_CheckConsole(0xBu);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete HEVC %p %lld %d %lld %p %d\n", v15, 11, v16, "AVE_Plugin_HEVC_CompleteFrames", 479, "ret == 0", a1, *a2, *(a2 + 2), v12, v11, v13);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(4);
          v39 = *(a2 + 2);
          v38 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete HEVC %p %lld %d %lld %p %d", v15, 11, v16, "AVE_Plugin_HEVC_CompleteFrames", 479, "ret == 0");
      }
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d\n", v22, 11, v23, "AVE_Plugin_HEVC_CompleteFrames", 467, "pPI != __null", a1, 0, 0);
          v24 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v24, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v22, 11, v23);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }

    kdebug_trace();
    AVE_Mutex_Unlock(*v11);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d\n", v18, 11, v19, "AVE_Plugin_HEVC_CompleteFrames", 462, "encoder != __null", 0, *a2, *(a2 + 2), 0, 0);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        v20 = *a2;
        v40 = *(a2 + 2);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d", v18, 11, v19, "AVE_Plugin_HEVC_CompleteFrames", 462);
    }

    v12 = 0;
    v13 = 4294966295;
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

  v27 = AVE_RetCode2OSStatus(v13);
  if (v13)
  {
    v26 = 4;
  }

  if (AVE_Log_CheckLevel(0xBu, v26))
  {
    v28 = AVE_Log_CheckConsole(0xBu);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(v26);
    if (v28)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d\n", v29, 11, v30, "AVE_Plugin_HEVC_CompleteFrames", a1, *a2, *(a2 + 2), v12, v25, v13, v27);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(v26);
      v35 = *a2;
      v37 = *(a2 + 2);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d", v31, 11, v32, "AVE_Plugin_HEVC_CompleteFrames");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d", v29, 11, v30, "AVE_Plugin_HEVC_CompleteFrames");
    }
  }

  return v27;
}

uint64_t AVE_Plugin_HEVC_CopySupportedPropertyDictionary(const void *a1, void *a2)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 7))
  {
    v5 = AVE_Log_CheckConsole(0xBu);
    v6 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, LevelStr, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary", a1, a2, 0);
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
      PropertyDict = AVE_Session_HEVC_GetPropertyDict(v9, a2);
      if (PropertyDict && AVE_Log_CheckLevel(0xBu, 4))
      {
        v12 = AVE_Log_CheckConsole(0xBu);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC property dictionary %p %p %lld %d\n", v13, 11, v14, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary", 542, "ret == 0", a1, a2, v10, PropertyDict);
          v15 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC property dictionary %p %p %lld %d", v15, 11, v32, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC property dictionary %p %p %lld %d", v13, 11, v14, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary");
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d\n", v21, 11, v22, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary", 530, "pPI != __null", a1, a2, 0, 0);
          v23 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d", v23, 11, v34, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d", v21, 11, v22, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v17, 11, v18, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary", 523, "encoder != __null && supportedPropertyDictionaryOut != __null", a1, a2, 0, 0);
        v19 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v19, 11, v33, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v17, 11, v18, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary");
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
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_HEVC_CopySupportedPropertyDictionary", a1, a2, v10, v24, PropertyDict, v26);
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

uint64_t AVE_Plugin_HEVC_SetProperties(const void *a1, const __CFDictionary *a2)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 7))
  {
    v5 = AVE_Log_CheckConsole(0xBu);
    v6 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, LevelStr, "AVE_Plugin_HEVC_SetProperties", a1, a2, 0);
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
      CFDictionaryApplyFunction(a2, AVE_Plugin_HEVC_ApplierFunc, v9);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_HEVC_SetProperties", 610, "pPI != __null", a1, a2, 0, 0);
          v20 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d", v20, 11, v31, "AVE_Plugin_HEVC_SetProperties");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %lld %d", v18, 11, v19, "AVE_Plugin_HEVC_SetProperties");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v14, 11, v15, "AVE_Plugin_HEVC_SetProperties", 605, "encoder != __null && propertyDictionary != __null", a1, a2, 0, 0);
        v16 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v16, 11, v30, "AVE_Plugin_HEVC_SetProperties");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v14, 11, v15, "AVE_Plugin_HEVC_SetProperties");
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
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_HEVC_SetProperties", a1, a2, v10, v21, v11, v23);
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

uint64_t AVE_Plugin_HEVC_PrepareToEncodeFrames(const void *a1)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v3 = AVE_Log_CheckConsole(0xBu);
    v4 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, LevelStr, "AVE_Plugin_HEVC_PrepareToEncodeFrames", a1, 0);
      v6 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v31, "AVE_Plugin_HEVC_PrepareToEncodeFrames", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, LevelStr, "AVE_Plugin_HEVC_PrepareToEncodeFrames", a1, 0);
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
      v10 = AVE_Session_HEVC_Prepare();
      if (v10 && AVE_Log_CheckLevel(0xBu, 4))
      {
        v11 = AVE_Log_CheckConsole(0xBu);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to prepare HEVC %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_HEVC_PrepareToEncodeFrames", 674, "ret == 0", a1, v9, v8, v10);
          v14 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare HEVC %p %lld %p %d", v14, 11, v32, "AVE_Plugin_HEVC_PrepareToEncodeFrames");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare HEVC %p %lld %p %d", v12, 11, v13, "AVE_Plugin_HEVC_PrepareToEncodeFrames");
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d\n", v20, 11, v21, "AVE_Plugin_HEVC_PrepareToEncodeFrames", 663, "pPI != __null", a1, 0, 0);
          v22 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v22, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %lld %d", v20, 11, v21);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_HEVC_PrepareToEncodeFrames", 659, "encoder != __null", 0, 0, 0);
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
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_HEVC_PrepareToEncodeFrames", a1, v9, v23, v10, v25);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v26);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v28, 11);
  }

  return v25;
}

uint64_t AVE_Plugin_HEVC_BeginPass(const void *a1, int a2, const void *a3)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v7 = AVE_Log_CheckConsole(0xBu);
    v8 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%x %p %lld\n", v8, 11, LevelStr, "AVE_Plugin_HEVC_BeginPass", a1, a2, a3, 0);
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
      v13 = AVE_Session_HEVC_BeginPass(v11, a2);
      if (v13 && AVE_Log_CheckLevel(0xBu, 4))
      {
        v14 = AVE_Log_CheckConsole(0xBu);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to begin HEVC Multipass %p 0x%x %lld %p %d\n", v15, 11, v16, "AVE_Plugin_HEVC_BeginPass", 734, "ret == 0", a1, a2, v12, v11, v13);
          v17 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to begin HEVC Multipass %p 0x%x %lld %p %d", v17, 11, v35, "AVE_Plugin_HEVC_BeginPass", 734);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to begin HEVC Multipass %p 0x%x %lld %p %d", v15, 11, v16, "AVE_Plugin_HEVC_BeginPass", 734);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p 0x%x %p %lld %d\n", v23, 11, v24, "AVE_Plugin_HEVC_BeginPass", 723, "pPI != __null", a1, a2, a3, 0, 0);
          v25 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p 0x%x %p %lld %d", v25, 11, v37, "AVE_Plugin_HEVC_BeginPass", 723);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p 0x%x %p %lld %d", v23, 11, v24, "AVE_Plugin_HEVC_BeginPass", 723);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x %p %lld %d\n", v19, 11, v20, "AVE_Plugin_HEVC_BeginPass", 718, "encoder != __null", 0, a2, a3, 0, 0);
        v21 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x %p %lld %d", v21, 11, v36, "AVE_Plugin_HEVC_BeginPass", 718);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x %p %lld %d", v19, 11, v20, "AVE_Plugin_HEVC_BeginPass", 718);
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
      printf("%lld %d AVE %s: %s Exit %p 0x%x %p %lld %d\n", v30, 11, v31, "AVE_Plugin_HEVC_BeginPass", a1, a2, a3, v12, v13);
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

uint64_t AVE_Plugin_HEVC_EndPass(const void *a1, _BYTE *a2, const void *a3)
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
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld\n", v8, 11, LevelStr, "AVE_Plugin_HEVC_EndPass", a1, a2, a3, 0);
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
      v13 = AVE_Session_HEVC_EndPass(v11, &v38);
      if (v13)
      {
        if (AVE_Log_CheckLevel(0xBu, 4))
        {
          v14 = AVE_Log_CheckConsole(0xBu);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(4);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to end HEVC Multipass %p %p %p %lld %p %d\n", v15, 11, v16, "AVE_Plugin_HEVC_EndPass", 798, "ret == 0", a1, a2, a3, v12, v11, v13);
            v17 = AVE_GetCurrTime();
            v35 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to end HEVC Multipass %p %p %p %lld %p %d", v17, 11, v35, "AVE_Plugin_HEVC_EndPass", 798, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to end HEVC Multipass %p %p %p %lld %p %d", v15, 11, v16, "AVE_Plugin_HEVC_EndPass", 798, "ret == 0");
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d\n", v23, 11, v24, "AVE_Plugin_HEVC_EndPass", 785, "pPI != __null", a1, a2, a3, 0, 0);
          v25 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d", v25, 11, v37, "AVE_Plugin_HEVC_EndPass", 785);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %p %lld %d", v23, 11, v24, "AVE_Plugin_HEVC_EndPass", 785);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d\n", v19, 11, v20, "AVE_Plugin_HEVC_EndPass", 780, "encoder != __null && furtherPassesRequestedOut != __null", a1, a2, a3, 0, 0);
        v21 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v21, 11, v36, "AVE_Plugin_HEVC_EndPass", 780);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v19, 11, v20, "AVE_Plugin_HEVC_EndPass", 780);
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
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %d\n", v30, 11, v31, "AVE_Plugin_HEVC_EndPass", a1, a2, a3, v12, v13);
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

uint64_t AVE_Plugin_HEVC_StartTileSession(const void *a1, pthread_mutex_t *a2, const void *a3, unint64_t a4, pthread_mutex_t *a5)
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
      printf("%lld %d AVE %s: %s Enter %p %p %p %d %d %p %lld\n", v11, 11, LevelStr, "AVE_Plugin_HEVC_StartTileSession", a1, a2, a3, v6, v8, a5, 0);
      v13 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %p %lld", v13, 11, v43, "AVE_Plugin_HEVC_StartTileSession");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d %p %lld", v11, 11, LevelStr, "AVE_Plugin_HEVC_StartTileSession");
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
      started = AVE_Session_HEVC_StartTileSession(v15, &v51);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to start HEVC %p %p %d %d %p %lld %p %d\n", v20, 11, v21, "AVE_Plugin_HEVC_StartTileSession", 879, "ret == 0", a1, a2, v6, v8, a5, v16, v15, v18);
          v47 = AVE_GetCurrTime();
          v44 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start HEVC %p %p %d %d %p %lld %p %d", v47, 11, v44, "AVE_Plugin_HEVC_StartTileSession", 879, "ret == 0", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start HEVC %p %p %d %d %p %lld %p %d", v20, 11, v21, "AVE_Plugin_HEVC_StartTileSession", 879, "ret == 0", a1);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %d %d %p %lld %d\n", v42, 11, v29, "AVE_Plugin_HEVC_StartTileSession", 859, "pPI != __null", a1, a2, v6, v8, v26, 0, 0);
          v30 = AVE_GetCurrTime();
          v46 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %d %d %p %lld %d", v30, 11, v46, "AVE_Plugin_HEVC_StartTileSession", 859, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %p %d %d %p %lld %d", v42, 11, v29, "AVE_Plugin_HEVC_StartTileSession", 859, "pPI != __null");
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
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d\n", v23, 11, v24, "AVE_Plugin_HEVC_StartTileSession", 853, "encoder != __null && session != __null && tileDimensions.width > 0 && tileDimensions.height > 0", a1, a2, v6, v8, a5, 0, 0);
      v25 = AVE_GetCurrTime();
      v45 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v25, 11, v45, "AVE_Plugin_HEVC_StartTileSession", 853, "encoder != __null && session != __null && tileDimensions.width > 0 && tileDimensions.height > 0");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %p %lld %d", v23, 11, v24, "AVE_Plugin_HEVC_StartTileSession", 853, "encoder != __null && session != __null && tileDimensions.width > 0 && tileDimensions.height > 0");
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
      printf("%lld %d AVE %s: %s Exit %p %p %p %d %d %p %lld %lld %d %d\n", v37, 11, v38, "AVE_Plugin_HEVC_StartTileSession", a1, a2, v48, v6, v8, a5, v35, v32, v18, v34);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(v33);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %p %lld %lld %d %d", v39, 11, v40, "AVE_Plugin_HEVC_StartTileSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %p %lld %lld %d %d", v37, 11, v38, "AVE_Plugin_HEVC_StartTileSession", a1, a2);
    }
  }

  return v34;
}

uint64_t AVE_Plugin_HEVC_PrepareToEncodeTiles(const void *a1, int a2)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 6))
  {
    v5 = AVE_Log_CheckConsole(0xBu);
    v6 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld\n", v6, 11, LevelStr, "AVE_Plugin_HEVC_PrepareToEncodeTiles", a1, a2, 0);
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
          printf("%lld %d AVE %s: %s:%d %s | don't support partial tiles %p %d %lld %d\n", v9, 11, v10, "AVE_Plugin_HEVC_PrepareToEncodeTiles", 942, "!expectPartialTiles", a1, a2, 0, 0);
          v11 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | don't support partial tiles %p %d %lld %d", v11, 11, v37, "AVE_Plugin_HEVC_PrepareToEncodeTiles");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | don't support partial tiles %p %d %lld %d", v9, 11, v10, "AVE_Plugin_HEVC_PrepareToEncodeTiles");
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
        v19 = AVE_Session_HEVC_Prepare();
        if (v19 && AVE_Log_CheckLevel(0xBu, 4))
        {
          v20 = AVE_Log_CheckConsole(0xBu);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to prepare HEVC %p %d %lld %p %d\n", v21, 11, v22, "AVE_Plugin_HEVC_PrepareToEncodeTiles", 957, "ret == 0", a1, 0, v18, v17, v19);
            v23 = AVE_GetCurrTime();
            v39 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare HEVC %p %d %lld %p %d", v23, 11, v39, "AVE_Plugin_HEVC_PrepareToEncodeTiles", 957);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare HEVC %p %d %lld %p %d", v21, 11, v22, "AVE_Plugin_HEVC_PrepareToEncodeTiles", 957);
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
            printf("%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %d %lld %d\n", v25, 11, v26, "AVE_Plugin_HEVC_PrepareToEncodeTiles", 946, "pPI != __null", a1, 0, 0, 0);
            v27 = AVE_GetCurrTime();
            v40 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %d %lld %d", v27, 11, v40, "AVE_Plugin_HEVC_PrepareToEncodeTiles");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get HEVC %p %d %lld %d", v25, 11, v26, "AVE_Plugin_HEVC_PrepareToEncodeTiles");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %lld %d\n", v13, 11, v14, "AVE_Plugin_HEVC_PrepareToEncodeTiles", 937, "encoder != __null", 0, a2, 0, 0);
        v15 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %lld %d", v15, 11, v38, "AVE_Plugin_HEVC_PrepareToEncodeTiles");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %lld %d", v13, 11, v14, "AVE_Plugin_HEVC_PrepareToEncodeTiles");
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
      printf("%lld %d AVE %s: %s Exit %p %d %lld %lld %d %d\n", v33, 11, v34, "AVE_Plugin_HEVC_PrepareToEncodeTiles", a1, a2, v18, v28, v19, v30);
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