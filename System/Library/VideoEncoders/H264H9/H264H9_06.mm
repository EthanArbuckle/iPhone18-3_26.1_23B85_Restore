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

_DWORD *AVE_DevCap_Throughput_Find(int *a1, int a2, uint64_t a3)
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

uint64_t AVE_AVC_SetQuality(uint64_t a1, double a2)
{
  v4 = (a2 * 100.0 + 0.5);
  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v5 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %f %p\n", CurrTime, 30, LevelStr, "AVE_AVC_SetQuality", a2, a1);
      v8 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v8, 30, v15, "AVE_AVC_SetQuality", a2, a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", CurrTime, 30, LevelStr, "AVE_AVC_SetQuality", a2, a1);
    }
  }

  if (v4 > 0x63)
  {
    if (v4 == 100)
    {
      v10 = 0;
      *(a1 + 1144) = 0;
      *(a1 + 1152) = 0;
      *(a1 + 10858) = 1;
      *(a1 + 12060) = 1;
      *(a1 + 10604) = 0;
      *(a1 + 1448) |= 0x200uLL;
    }

    else
    {
      v10 = 4294966295;
    }
  }

  else
  {
    v9 = Quality2QPAVC[v4];
    *(a1 + 1144) = v9;
    *(a1 + 1148) = v9;
    *(a1 + 1152) = v9;
    *(a1 + 10857) = 1;
    if (*(a1 + 10784) == 1 && *(a1 + 1132) != 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      *(a1 + 10784) = 1;
      *(a1 + 1132) = 3;
    }
  }

  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v11 = AVE_Log_CheckConsole(0x1Eu);
    v12 = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(6);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Exit %f %p %d\n", v12, 30, v13, "AVE_AVC_SetQuality", a2, a1, v10);
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %f %p %d");
  }

  return v10;
}

uint64_t AVE_AVC_SetCQFactor(uint64_t a1, double a2)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %f %p\n", CurrTime, 12, LevelStr, "AVE_AVC_SetCQFactor", a2, a1);
      v7 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v7, 12, v19, "AVE_AVC_SetCQFactor", a2, a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", CurrTime, 12, LevelStr, "AVE_AVC_SetCQFactor", a2, a1);
    }
  }

  if ((*(a1 + 1123) & 0x80) != 0 && (*(a1 + 10784) != 1 || (v9 = *(a1 + 1132), v9 == 8) || v9 == 6))
  {
    if (a2 < 0.0 || a2 > 1.0)
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v11 = AVE_Log_CheckConsole(0xCu);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %f [0.0, 1.0]\n", v12, 12, v13, "AVE_AVC_SetCQFactor", 306, "fCQFactor >= 0.0 && fCQFactor <= 1.0", a1, *(a1 + 56), a2);
          v12 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          v14 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %f [0.0, 1.0]", v12, 12);
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
        v10 = 8;
      }

      else
      {
        v10 = 6;
      }

      *(a1 + 1132) = v10;
    }
  }

  else
  {
    v8 = 0;
  }

  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v15 = AVE_Log_CheckConsole(0xCu);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(6);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %f %p %d\n", v16, 12, v17, "AVE_AVC_SetCQFactor", a2, a1, v8);
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %f %p %d");
  }

  return v8;
}

uint64_t AVE_Session_AVC_SetProperty(const void *a1, __CFString *a2, const void *a3)
{
  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v6 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_SetProperty", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2)
  {
    v9 = AVE_Prop_AVC_SetProperty(a1, a2, a3);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 12, v12, "AVE_Session_AVC_SetProperty", 335, "pINS != __null && pKey != __null", a1, a2, a3);
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
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v15, 12, v16, "AVE_Session_AVC_SetProperty", a1, a2, a3, v9);
      v15 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v15, 12);
  }

  return v9;
}

uint64_t AVE_Session_AVC_CreatePropertyDict(uint64_t a1)
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
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_CreatePropertyDict", a1);
      v6 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v6, 12, v37, "AVE_Session_AVC_CreatePropertyDict", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_CreatePropertyDict", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v17, 12, v18, "AVE_Session_AVC_CreatePropertyDict", 357, "pINS != __null", 0);
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

    Dict = AVE_Prop_AVC_MakeDict(*(a1 + 68), v12, *(a1 + 56), Mutable);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to make property dictionary %p %lld 0x%x %d %d\n", v25, 12, v26, "AVE_Session_AVC_CreatePropertyDict", 392, "ret == 0", a1, *(a1 + 56), v12, *(a1 + 68), v15);
          v25 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(4);
          v28 = *(a1 + 56);
        }

        v40 = *(a1 + 68);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %p %lld 0x%x %d %d", v25, 12, v26, "AVE_Session_AVC_CreatePropertyDict");
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
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d\n", v20, 12, v21, "AVE_Session_AVC_CreatePropertyDict", 387, "paDict[i] != __null", a1, *(a1 + 56), v12, *(a1 + 68), 0);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      v23 = *(a1 + 56);
    }

    v39 = *(a1 + 68);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d", v20, 12, v21, "AVE_Session_AVC_CreatePropertyDict");
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
      printf("%lld %d AVE %s: %s Exit %p %d\n", v32, 12, v33, "AVE_Session_AVC_CreatePropertyDict", a1, v15);
      v34 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v34, 12, v38, "AVE_Session_AVC_CreatePropertyDict", a1, v15);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v32, 12, v33, "AVE_Session_AVC_CreatePropertyDict", a1, v15);
    }
  }

  v35 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t AVE_Session_AVC_Stop(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_Stop", a1);
      v5 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v19, "AVE_Session_AVC_Stop", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_Stop", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 12000);
    v7 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v6, 4u, v7);
    if (*(a1 + 16464) == 30568)
    {
      v21 = AVE_GetCurrTime();
      v8 = AVE_USL_Drv_Complete(*(a1 + 120), &v21);
    }

    else
    {
      v8 = 0;
    }

    v12 = *(a1 + 12000);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v10, 12, v11, "AVE_Session_AVC_Stop", 429, "pINS != __null", 0);
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
      printf("%lld %d AVE %s: %s Exit %p %d\n", v15, 12, v16, "AVE_Session_AVC_Stop", a1, v8);
      v17 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v17, 12, v20, "AVE_Session_AVC_Stop", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 12, v16, "AVE_Session_AVC_Stop", a1, v8);
    }
  }

  return v8;
}

uint64_t AVE_Session_AVC_Destroy(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v45 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v45, "AVE_Session_AVC_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_Destroy", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 12000);
    v7 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v6, 1u, v7);
    if (*(a1 + 16464) == 30568)
    {
      v47 = AVE_GetCurrTime();
      AVE_USL_Drv_Stop(*(a1 + 120), &v47, 0);
    }

    if (AVE_Log_CheckLevel(2u, 0))
    {
      v8 = AVE_Log_CheckConsole(2u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(0);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13 = *(a1 + 10772);
      v14 = *(a1 + 16468);
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
        v20 = *(a1 + 16468);
        AVE_USL_Drv_GetProcCnt(*(a1 + 120));
        AVE_USL_Drv_GetDropCnt(*(a1 + 120));
      }

      syslog(3, "%lld %d AVE %s: ID: %lld Type: %d Enc: %d | Input: %d Proc: %lld Drop: %lld", v9, 2, v10);
    }

    v24 = AVE_USL_Drv_Destroy(*(a1 + 120));
    *(a1 + 120) = 0;
    v25 = *(a1 + 12000);
    v26 = AVE_GetCurrTime();
    AVE_TimeStats_AddEndTime(v25, 1u, v26);
    AVE_TimeStats_Calc(*(a1 + 12000));
    AVE_TimeStats_Print(*(a1 + 12000), 16, 6, 0, 0);
    AVE_DW_Uninit();
    v27 = *(a1 + 12000);
    if (v27)
    {
      AVE_TimeStats_Destroy(v27);
      *(a1 + 12000) = 0;
    }

    v28 = *(a1 + 18064);
    if (v28)
    {
      AVE_Dump_Uninit(v28);
      AVE_Dump_Destroy(*(a1 + 18064));
      *(a1 + 18064) = 0;
    }

    v29 = *(a1 + 16480);
    if (v29)
    {
      AVE_VCP::~AVE_VCP(v29);
      MEMORY[0x29C24DA40]();
      *(a1 + 16480) = 0;
    }

    v30 = *(a1 + 16488);
    if (v30)
    {
      AVE_SEI::~AVE_SEI(v30);
      MEMORY[0x29C24DA40]();
      *(a1 + 16488) = 0;
    }

    v31 = *(a1 + 16496);
    if (v31)
    {
      CFRelease(v31);
      *(a1 + 16496) = 0;
    }

    v32 = 0;
    v33 = a1 + 80;
    do
    {
      v34 = *(v33 + v32);
      if (v34)
      {
        CFRelease(v34);
        *(v33 + v32) = 0;
      }

      v32 += 8;
    }

    while (v32 != 24);
    v35 = *(a1 + 104);
    if (v35)
    {
      CFRelease(v35);
      *(a1 + 104) = 0;
    }

    v36 = *(a1 + 18072);
    if (v36)
    {
      CFRelease(v36);
      *(a1 + 18072) = 0;
    }

    v37 = *(a1 + 112);
    if (v37)
    {
      CFRelease(v37);
      *(a1 + 112) = 0;
    }

    v38 = *(a1 + 16560);
    if (v38)
    {
      CFRelease(v38);
      *(a1 + 16560) = 0;
    }

    v39 = *(a1 + 16568);
    if (v39)
    {
      CFRelease(v39);
      *(a1 + 16568) = 0;
    }

    AVE_Prop_Cfg_AVC_Uninit((a1 + 16592));
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v22, 12, v23, "AVE_Session_AVC_Destroy", 462, "pINS != __null", 0);
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
    v40 = AVE_Log_CheckConsole(0xCu);
    v41 = AVE_GetCurrTime();
    v42 = AVE_Log_GetLevelStr(6);
    if (v40)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v41, 12, v42, "AVE_Session_AVC_Destroy", a1, v24);
      v43 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v43, 12, v46, "AVE_Session_AVC_Destroy", a1, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v41, 12, v42, "AVE_Session_AVC_Destroy", a1, v24);
    }
  }

  return v24;
}

uint64_t AVE_Session_AVC_StartSession(uint64_t a1, unsigned int *a2)
{
  v4 = AVE_DW_Get();
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v5 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_StartSession", a1, a2);
      v8 = AVE_GetCurrTime();
      v64 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 12, v64, "AVE_Session_AVC_StartSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_StartSession", a1, a2);
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
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_AVC_StartSession", 4740, "pDim->iWidth > 0 && pDim->iHeight > 0", a1, *(a1 + 56), *a2, a2[1]);
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 56);
          v26 = *a2;
          v27 = a2[1];
        }

        else
        {
          v73 = *a2;
        }

        goto LABEL_30;
      }

LABEL_31:
      v28 = 4294965295;
      goto LABEL_32;
    }

    v9 = *(a1 + 12000);
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
    if (AVE_Enc_CheckResolution(*(a1 + 68), 1, 1, *(a1 + 1440), *(a1 + 1444), 0))
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v13 = AVE_Log_CheckConsole(0xCu);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        v16 = *(a1 + 1440);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_AVC_StartSession", 4759, "ret == 0", a1, *(a1 + 56), *(a1 + 1440), *(a1 + 1444));
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(4);
          v17 = *(a1 + 56);
          v18 = *(a1 + 1440);
          v19 = *(a1 + 1444);
        }

        else
        {
          v74 = *(a1 + 1440);
        }

LABEL_30:
        syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v14, 12, v15);
        goto LABEL_31;
      }

      goto LABEL_31;
    }

    AVE_SetEncoderDefault(a1);
    v29 = *(a1 + 12052) + 8;
    if (v29 <= *(a1 + 12056) + 8)
    {
      v29 = *(a1 + 12056) + 8;
    }

    updated = AVE_UpdatePixelBufferDict(*(a1 + 68), *(a1 + 64), 62, 1, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v29, 0, 0x414C4C20u, *(a1 + 16));
    if (updated)
    {
      v28 = updated;
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v31 = AVE_Log_CheckConsole(0x1Eu);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          v34 = 30;
          printf("%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed %d\n", v32, 30, v33, "AVE_Session_AVC_StartSession", 4778, "ret == 0", v28);
          v35 = AVE_GetCurrTime();
          v69 = v28;
          v67 = 4778;
          v65 = AVE_Log_GetLevelStr(4);
          v36 = "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed %d";
LABEL_50:
          syslog(3, v36, v35, v34, v65, "AVE_Session_AVC_StartSession", v67, "ret == 0", v69, v71);
          goto LABEL_32;
        }

        v70 = v28;
        v68 = 4778;
        v66 = v33;
        v49 = 30;
        v50 = "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed %d";
        goto LABEL_66;
      }
    }

    else
    {
      *(a1 + 16464) = 30566;
      *(a1 + 712) = v4[103];
      if (*(a1 + 10892) == 1)
      {
        operator new();
      }

      if (*(a1 + 16) == 1)
      {
        v44 = 1;
      }

      else
      {
        v44 = 3;
      }

      v45 = AVE_SEI::Init(*(a1 + 16488), *(a1 + 56), 0, 0, 1, v44);
      if (v45)
      {
        v28 = v45;
        if (!AVE_Log_CheckLevel(0xCu, 4))
        {
          goto LABEL_32;
        }

        v46 = AVE_Log_CheckConsole(0xCu);
        v32 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
        if (v46)
        {
          v34 = 12;
          printf("%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu\n", v32, 12, v47, "AVE_Session_AVC_StartSession", 4811, "ret == 0", a1, *(a1 + 56));
          v35 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(4);
          v69 = a1;
          v71 = *(a1 + 56);
          v67 = 4811;
          v65 = v48;
          v36 = "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu";
          goto LABEL_50;
        }

        v70 = a1;
        v71 = *(a1 + 56);
        v68 = 4811;
        v66 = v47;
        v49 = 12;
        v50 = "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu";
LABEL_66:
        syslog(3, v50, v32, v49, v66, "AVE_Session_AVC_StartSession", v68, "ret == 0", v70, v71, v72);
        goto LABEL_32;
      }

      SupportedPresetDictionary = AVE_Prop_AVC_CreateSupportedPresetDictionary(a1);
      if (!SupportedPresetDictionary)
      {
        v58 = v4[30];
        if (v58)
        {
          *(a1 + 11468) = v58;
        }

        v59 = v4[29];
        if (v59 < 1)
        {
          v28 = 0;
        }

        else
        {
          v60 = (v4 + 32);
          v61 = (a1 + 11476);
          do
          {
            v63 = *v60;
            v60 += 12;
            v62 = v63;
            if ((v63 & 0x80000000) == 0)
            {
              *v61 = v62;
            }

            v28 = 0;
            v61 += 12;
            --v59;
          }

          while (v59);
        }

        goto LABEL_32;
      }

      v28 = SupportedPresetDictionary;
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v52 = AVE_Log_CheckConsole(0xCu);
        v32 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(4);
        v54 = *(a1 + 56);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d\n", v32, 12, v53, "AVE_Session_AVC_StartSession", 4818, "ret == 0", a1, *(a1 + 56), v28);
          v55 = AVE_GetCurrTime();
          v56 = AVE_Log_GetLevelStr(4);
          v57 = *(a1 + 56);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d", v55, 12, v56);
          goto LABEL_32;
        }

        v71 = *(a1 + 56);
        v72 = v28;
        v70 = a1;
        v68 = 4818;
        v66 = v53;
        v49 = 12;
        v50 = "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d";
        goto LABEL_66;
      }
    }

LABEL_32:
    v37 = *(a1 + 12000);
    v38 = AVE_GetCurrTime();
    AVE_TimeStats_AddEndTime(v37, 3u, v38);
    if (v28)
    {
      v39 = *(a1 + 16480);
      if (v39)
      {
        AVE_VCP::~AVE_VCP(v39);
        MEMORY[0x29C24DA40]();
        *(a1 + 16480) = 0;
      }
    }

    goto LABEL_35;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v20 = AVE_Log_CheckConsole(0xCu);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(4);
    if (v20)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v21, 12, v22, "AVE_Session_AVC_StartSession", 4736, "pINS != __null && pDim != __null", a1, a2);
      v21 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v21, 12);
  }

  v28 = 4294966295;
LABEL_35:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v40 = AVE_Log_CheckConsole(0xCu);
    v41 = AVE_GetCurrTime();
    v42 = AVE_Log_GetLevelStr(6);
    if (v40)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v41, 12, v42, "AVE_Session_AVC_StartSession", a1, a2, v28);
      v41 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v41);
  }

  return v28;
}

void AVE_PrepareCropParams(uint64_t a1)
{
  v2 = a1 + 13184;
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v3 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v3)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams\n", CurrTime, 12, LevelStr);
      v6 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", v6, 12, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", CurrTime, 12, LevelStr);
    }
  }

  v7 = *(a1 + 1440);
  v8 = *(a1 + 1444);
  *v2 = 0;
  *(a1 + 13188) = 0u;
  MinResolution = AVE_Enc_GetMinResolution(*(a1 + 68), 1, 1);
  v10 = *(a1 + 1444);
  if ((v10 & 0xF) != 0 || v10 < MinResolution[1])
  {
    if (*(a1 + 76) >= 12)
    {
      *(v2 + 3364) = v10;
    }

    v11 = (v10 + 15) & 0xFFFFFFF0;
    if (v11 <= MinResolution[1])
    {
      v11 = MinResolution[1];
    }

    *(a1 + 1444) = v11;
    *v2 = 1;
    *(a1 + 13200) = v11 - v8;
  }

  v12 = *(a1 + 1440);
  if ((v12 & 0xF) != 0 || v12 < *MinResolution)
  {
    if (*(a1 + 76) >= 12)
    {
      *(v2 + 3360) = v12;
    }

    v13 = (v12 + 15) & 0xFFFFFFF0;
    if (v13 <= *MinResolution)
    {
      v13 = *MinResolution;
    }

    *(a1 + 1440) = v13;
    *v2 = 1;
    *(a1 + 13192) = v13 - v7;
  }

  if (AVE_Log_CheckLevel(0x10u, 7))
  {
    v14 = AVE_Log_CheckConsole(0x10u);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(7);
    if (v14)
    {
      printf("%lld %d AVE %s: FIG: input -> %dx%d\n", v15, 16, v16, v7, v8);
      v17 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v17, 16, v33, v7, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v15, 16, v16, v7, v8);
    }
  }

  if (AVE_Log_CheckLevel(0x10u, 7))
  {
    v18 = AVE_Log_CheckConsole(0x10u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(7);
    v21 = *(a1 + 1440);
    v22 = *(a1 + 1444);
    if (v18)
    {
      printf("%lld %d AVE %s: FIG: input multiple -> %dx%d\n", v19, 16, v20, *(a1 + 1440), v22);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v23, 16, v24, *(a1 + 1440), *(a1 + 1444));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v19, 16, v20, *(a1 + 1440), v22);
    }
  }

  if (AVE_Log_CheckLevel(0x10u, 7))
  {
    v25 = AVE_Log_CheckConsole(0x10u);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(7);
    v28 = *(a1 + 13200);
    v29 = *(a1 + 13192);
    if (v25)
    {
      printf("%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d\n", v26, 16, v27, *(a1 + 13200), v29);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v30, 16, v31, *(a1 + 13200), *(a1 + 13192));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v26, 16, v27, *(a1 + 13200), v29);
    }
  }
}

double AVE_SetEncoderDefault(uint64_t a1)
{
  v2 = a1 + 14572;
  v3 = a1 + 10168;
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault\n", CurrTime, 12, LevelStr);
      v7 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", v7, 12, v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", CurrTime, 12, LevelStr);
    }
  }

  v8 = 0;
  *(v3 + 588) = 0;
  *(a1 + 1308) = 1;
  *(v3 + 596) = 1;
  *(a1 + 1096) = 0x39D00000000;
  *(a1 + 1296) &= ~1u;
  *(v3 + 613) = 0;
  *(a1 + 10792) = 0x300000006;
  *(a1 + 10844) = 0x10000;
  *(v3 + 684) = 0;
  *(a1 + 10864) = 0;
  *(a1 + 10880) = 0;
  *(a1 + 10872) = 0;
  *(a1 + 10888) = 0;
  *(a1 + 10860) = -1;
  *(v3 + 687) = 0;
  *(a1 + 688) &= ~2u;
  v9 = *(a1 + 1336);
  *(v3 + 688) = 0;
  *(a1 + 11744) = 0u;
  *(a1 + 11728) = 0u;
  *(a1 + 11712) = 0u;
  *(a1 + 11696) = 0u;
  *(a1 + 11680) = 0u;
  *(a1 + 11664) = 0u;
  *(a1 + 11648) = 0u;
  *(a1 + 11632) = 0u;
  *(a1 + 11616) = 0u;
  *(a1 + 11600) = 0u;
  *(a1 + 11584) = 0u;
  *(a1 + 11568) = 0u;
  *(a1 + 11552) = 0u;
  *(a1 + 11536) = 0u;
  *(a1 + 11520) = 0u;
  *(a1 + 11504) = 0u;
  *(a1 + 11488) = 0u;
  *(a1 + 11472) = 0u;
  *(a1 + 10776) = 0;
  do
  {
    *(a1 + 11472 + v8) = 0xFFFFFFFF00000001;
    v8 += 48;
  }

  while (v8 != 288);
  *(a1 + 11464) = 0x100000006;
  *(a1 + 11760) = 1;
  *(v3 + 344) = 0;
  *(v3 + 1642) = 0;
  *(a1 + 11812) = -1;
  *(a1 + 11772) = 0;
  *(a1 + 11792) = 0;
  *(v3 + 1632) = 0;
  *(a1 + 11804) = 0;
  *(a1 + 1472) = 0;
  *(a1 + 1464) = 1;
  *(a1 + 1256) = 0x300000003;
  v10 = *(a1 + 1240);
  *(a1 + 10536) = 0;
  *(a1 + 1240) = v10 & 0xFFFFF8FF | 0x600;
  if (*(a1 + 76) <= 29)
  {
    v11 = 0;
  }

  else
  {
    v11 = 3;
  }

  *v3 = v11;
  *(v3 + 2) = 0;
  *(a1 + 10176) = 2;
  *(v3 + 5) = 0;
  *(a1 + 10244) = 1;
  *(v3 + 80) = 0;
  *(a1 + 10252) = 1;
  v12 = *(a1 + 1444);
  *(a1 + 10260) = v12;
  *(a1 + 10516) = 4;
  *(a1 + 10524) = 0;
  *(a1 + 1288) = 1;
  *(v3 + 354) = 0;
  *(v3 + 363) = 0;
  *(a1 + 1336) = v9 & 0xFBFEFDFF | 0x200;
  *(v3 + 372) = 0;
  *(a1 + 10604) = 0x1000000001;
  *(a1 + 10744) = 8;
  *(a1 + 1392) = -1;
  *(v3 + 12) = 3;
  *(v3 + 16) = 0;
  *(a1 + 1356) &= ~4u;
  *(a1 + 10188) = 0x800000001;
  *(v3 + 3) = 1;
  *(a1 + 1448) &= ~0x2000000uLL;
  *(a1 + 10544) = 21;
  *(a1 + 1136) = ((*(a1 + 1440) * v12) * 1.5 * 0.15 * 30.0);
  *(a1 + 1112) = 30;
  *(a1 + 11968) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0xBFF0000000000000;
  *(a1 + 1280) = 0xBFF0000000000000;
  *(a1 + 1132) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = xmmword_2954EAAD0;
  *(a1 + 1120) = 0;
  *(a1 + 1352) = 30;
  *(a1 + 1088) &= ~2uLL;
  *(a1 + 1252) = 1;
  *(a1 + 720) = 0;
  if (!*(v3 + 612))
  {
    *(a1 + 10892) = 0;
  }

  *(a1 + 11460) = 0;
  *(a1 + 692) = -1;
  *(a1 + 1232) = 0xC0000000CLL;
  *(a1 + 1344) = 0xC0000000CLL;
  *(a1 + 1336) = v9 & 0xFBFE7DAD | 0x8202;
  *(a1 + 1144) = 0x1A0000001ALL;
  *(a1 + 1152) = 26;
  *(a1 + 1192) = 0;
  *(a1 + 1160) = 0uLL;
  *(a1 + 1176) = 0uLL;
  *(a1 + 1324) = 1;
  *(a1 + 1328) = 0x100000001;
  *(a1 + 1128) = 0;
  *(a1 + 11448) = 30;
  *(a1 + 1296) &= ~2u;
  *(a1 + 11964) = 0;
  *(v3 + 1648) = 0;
  *(a1 + 11952) = 0;
  *(a1 + 11936) = 0uLL;
  *(a1 + 11920) = 0uLL;
  *(a1 + 11904) = 0uLL;
  *(a1 + 11888) = 0uLL;
  *(a1 + 11872) = 0uLL;
  *(a1 + 11856) = 0uLL;
  *(a1 + 11840) = 0uLL;
  *(a1 + 11824) = 0uLL;
  *(a1 + 12008) = 6;
  *(a1 + 12028) = 0;
  *(a1 + 12012) = 0uLL;
  *(a1 + 12036) = 1;
  *(a1 + 12040) = 0x100000000;
  *(a1 + 12064) = 0;
  *(a1 + 12048) = 0;
  *(a1 + 12054) = 0;
  *(a1 + 13056) = xmmword_2954EAAE0;
  *(a1 + 13072) = 1;
  *(v3 + 2908) = 0;
  *(a1 + 13088) = 0x100000001;
  *(a1 + 13096) = 0x1000000;
  *(a1 + 13100) = 5;
  *(v3 + 2940) = 1;
  *(a1 + 13112) = 0x200000002;
  *(a1 + 13120) = 2;
  *(v3 + 2956) = 0;
  *(v3 + 2968) = 0;
  *(v3 + 2981) = 0;
  *(v3 + 2983) = 0;
  *(a1 + 1104) = 24;
  v13 = *(a1 + 10892);
  if (v13 == 37 || v13 == 20)
  {
    *(a1 + 1104) = 152;
  }

  *(a1 + 13724) = 0;
  *(a1 + 13728) = 0x100000000;
  *(v3 + 3568) = 0;
  result = 0.0;
  *(a1 + 13760) = 0;
  *(a1 + 13768) = 0;
  *(a1 + 13740) = 0u;
  *(a1 + 13756) = 0;
  *(v3 + 3604) = xmmword_2954EAAF0;
  *(v3 + 3644) = xmmword_2954EAAF0;
  *&v15 = 0xC0000000CLL;
  *(&v15 + 1) = 0xC0000000CLL;
  *(v3 + 3620) = v15;
  *(v3 + 3660) = v15;
  *(a1 + 13804) = 16777217;
  *(v3 + 3640) = 0;
  *(a1 + 14108) = 1;
  *(a1 + 14116) = 0x200000000;
  *(a1 + 14124) = 0;
  *(a1 + 14131) = 0;
  *(a1 + 14140) = 0u;
  *(a1 + 14156) = 0;
  *(v3 + 3996) = 1;
  *(v3 + 4020) = 0;
  *(v3 + 4060) = 0;
  *(v3 + 4062) = 0;
  *v2 = 0;
  *(a1 + 14168) = 0u;
  *(a1 + 14208) = 0;
  *(a1 + 14192) = 0u;
  *(v2 + 1872) = -1;
  *(a1 + 696) = 0;
  *(a1 + 716) = 0;
  return result;
}

void AVE_UpdateCropParams(uint64_t a1, __CVBuffer *a2)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams\n", CurrTime, 12, LevelStr);
      v7 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", v7, 12, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", CurrTime, 12, LevelStr);
    }
  }

  if (*(a1 + 13184))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    v9 = AVE_PixelFmt_FindByType(PixelFormatType);
    if (v9)
    {
      v10 = *(v9 + 3);
      *(a1 + 12044) = v10;
    }

    else
    {
      v10 = *(a1 + 12044);
    }

    v12 = v10 != 3 && v10 != 0;
    v13 = v10 == 1;
    v14 = *(a1 + 13196);
    if (v14)
    {
      if (v10 == 1)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      *(a1 + 13196) = ((v14 + v15 - 1) & ~v13) >> v13;
    }

    v16 = *(a1 + 13200);
    if (v16)
    {
      *(a1 + 13200) = ((v16 + v13) & ~v13) >> v13;
    }

    v17 = *(a1 + 13188);
    if (v17)
    {
      *(a1 + 13188) = ((v17 + v12) & ~v12) >> v12;
    }

    v18 = *(a1 + 13192);
    if (v18)
    {
      *(a1 + 13192) = ((v18 + v12) & ~v12) >> v12;
    }

    if (AVE_Log_CheckLevel(0x10u, 7))
    {
      v19 = AVE_Log_CheckConsole(0x10u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(7);
      v22 = *(a1 + 13188);
      if (v19)
      {
        printf("%lld %d AVE %s: FIG: frame_crop_top_offset = %d frame_crop_bottom_offset %d frame_crop_left_offset = %d frame_crop_right_offset %d\n", v20, 16, v21, *(a1 + 13196), *(a1 + 13200), *(a1 + 13188), *(a1 + 13192));
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v23 = *(a1 + 13196);
        v26 = *(a1 + 13188);
        v28 = *(a1 + 13192);
        v25 = *(a1 + 13200);
      }

      else
      {
        v27 = *(a1 + 13188);
      }

      syslog(3, "%lld %d AVE %s: FIG: frame_crop_top_offset = %d frame_crop_bottom_offset %d frame_crop_left_offset = %d frame_crop_right_offset %d", v20);
    }
  }
}

void AVE_SetEncoderBasedOnFirstFrame()
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v0 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v0)
    {
      printf("%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame\n", CurrTime, 12, LevelStr);
      v3 = AVE_GetCurrTime();
      v4 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", v3, 12, v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", CurrTime, 12, LevelStr);
    }
  }
}

uint64_t AVE_ValidateEncoderParameters(uint64_t a1)
{
  v2 = AVE_DW_Get();
  v390 = 0;
  v389 = 0.0;
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v3 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v3)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters\n", CurrTime, 12, LevelStr);
      v6 = AVE_GetCurrTime();
      v318 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", v6, 12, v318);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", CurrTime, 12, LevelStr);
    }
  }

  v7 = *(a1 + 16856);
  if (v7 >= 0.0 && AVE_AVC_SetCQFactor(a1, v7) && AVE_Log_CheckLevel(0x1Eu, 5))
  {
    v8 = AVE_Log_CheckConsole(0x1Eu);
    v9 = AVE_GetCurrTime();
    v10 = AVE_Log_GetLevelStr(5);
    if (v8)
    {
      printf("%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]\n", v9, 30, v10);
      v11 = AVE_GetCurrTime();
      v319 = AVE_Log_GetLevelStr(5);
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v11, 30, v319);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v9, 30, v10);
    }
  }

  v12 = *(a1 + 16848);
  if (v12 >= 0.0 && AVE_AVC_SetQuality(a1, v12) && AVE_Log_CheckLevel(0x1Eu, 5))
  {
    v13 = AVE_Log_CheckConsole(0x1Eu);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(5);
    if (v13)
    {
      printf("%lld %d AVE %s: FIG: kVTCompressionPropertyKey_Quality property supports values only in the range of [0,1]\n", v14, 30, v15);
      v16 = AVE_GetCurrTime();
      v320 = AVE_Log_GetLevelStr(5);
      syslog(3, "%lld %d AVE %s: FIG: kVTCompressionPropertyKey_Quality property supports values only in the range of [0,1]", v16, 30, v320);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: kVTCompressionPropertyKey_Quality property supports values only in the range of [0,1]", v14, 30, v15);
    }
  }

  if ((*(a1 + 1132) & 0xFFFFFFFE) == 6)
  {
    v17 = AVE_RC_DecideVBVMaxBitRate(*(v2 + 206), *(a1 + 16828), &v390);
    if (v17)
    {
      v18 = v17;
      if (AVE_Log_CheckLevel(0x10u, 4))
      {
        v19 = AVE_Log_CheckConsole(0x10u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        v22 = *(v2 + 206);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d\n", v20, 16, v21, "AVE_ValidateEncoderParameters", 1921, "ret == 0", a1, *(a1 + 56), *(v2 + 206), *(a1 + 16828));
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          v23 = *(a1 + 56);
          v373 = *(v2 + 206);
          v379 = *(a1 + 16828);
        }

        else
        {
          v376 = *(v2 + 206);
          v382 = *(a1 + 16828);
          v367 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d", v20, 16, v21);
      }

      return v18;
    }

    *(a1 + 1208) = v390;
  }

  v24 = AVE_RC_DecideVBVBufferSize(v2[104], *(a1 + 17864), *(a1 + 16832), *(a1 + 1120), &v389);
  if (v24)
  {
    v18 = v24;
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v25 = AVE_Log_CheckConsole(0x10u);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      v28 = *(a1 + 1120);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx\n", v26, 16, v27, "AVE_ValidateEncoderParameters", 1932, "ret == 0", a1, *(a1 + 56), v2[104], *(a1 + 17864), *(a1 + 16832), *(a1 + 1120));
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        v29 = *(a1 + 17864);
      }

      v386 = *(a1 + 1120);
      v380 = *(a1 + 17864);
      v384 = *(a1 + 16832);
      v374 = *(v2 + 104);
      v365 = *(a1 + 56);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx", v26, 16, v27);
    }

    return v18;
  }

  v30 = v389;
  *(a1 + 1216) = v389;
  v31 = AVE_RC_DecideVBVInitialDelay(v2[105], *(a1 + 17872), *(a1 + 16840), v30, *(a1 + 1120), &v389);
  if (!v31)
  {
    v38 = (a1 + 10168);
    *(a1 + 1224) = v389;
    v39 = *(a1 + 76);
    if (v39 >= 30)
    {
      v40 = *(a1 + 1336);
      if ((v40 & 0x200) != 0)
      {
        if (AVE_Log_CheckLevel(0x10u, 5))
        {
          v41 = AVE_Log_CheckConsole(0x10u);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(5);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d current SoC doesn't support ANFD.\n", v42, 16, v43, "AVE_ValidateEncoderParameters", 1956);
            v44 = AVE_GetCurrTime();
            v321 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support ANFD.", v44, 16, v321, "AVE_ValidateEncoderParameters", 1956);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support ANFD.", v42, 16, v43, "AVE_ValidateEncoderParameters", 1956);
          }
        }

        v40 = *(a1 + 1336) & 0xFFFFFDFF;
        *(a1 + 1336) = v40;
      }

      if ((v40 & 0x40) != 0)
      {
        if (AVE_Log_CheckLevel(0x10u, 5))
        {
          v46 = AVE_Log_CheckConsole(0x10u);
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(5);
          if (v46)
          {
            printf("%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA.\n", v47, 16, v48, "AVE_ValidateEncoderParameters", 1963);
            v49 = AVE_GetCurrTime();
            v322 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA.", v49, 16, v322, "AVE_ValidateEncoderParameters", 1963);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA.", v47, 16, v48, "AVE_ValidateEncoderParameters", 1963);
          }
        }

        *(a1 + 1336) &= ~0x40u;
      }

      if (*(a1 + 10248) == 1)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v50 = AVE_Log_CheckConsole(3u);
          v51 = AVE_GetCurrTime();
          v52 = AVE_Log_GetLevelStr(4);
          if (v50)
          {
            printf("%lld %d AVE %s: %s:%d %s | current SoC doesn't support SliceEncodingMode. Fail.\n", v51, 3, v52, "AVE_ValidateEncoderParameters", 1968, "!pINS->VideoParams.bSliceEncodingMode");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | current SoC doesn't support SliceEncodingMode. Fail.");
        }

        return 4294966295;
      }

      v39 = *(a1 + 76);
    }

    if (v39 >= 17)
    {
      v53 = *(a1 + 716);
      if (*(a1 + 10752) == 2)
      {
        v53 &= 0xFFFFFC3F;
        *(a1 + 716) = v53;
      }

      if ((v53 & 0x3C0) != 0)
      {
        *(a1 + 716) = v53 & 0xFFFFFC3F;
        if (AVE_Log_CheckLevel(0x10u, 5))
        {
          v54 = AVE_Log_CheckConsole(0x10u);
          v55 = AVE_GetCurrTime();
          v56 = AVE_Log_GetLevelStr(5);
          if (v54)
          {
            printf("%lld %d AVE %s: FIG: MCTF for AVC is not supported yet!\n", v55, 16, v56);
            v57 = AVE_GetCurrTime();
            v323 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: FIG: MCTF for AVC is not supported yet!", v57, 16, v323);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: MCTF for AVC is not supported yet!", v55, 16, v56);
          }
        }
      }
    }

    else
    {
      *(a1 + 716) &= 0xFFFFFC3F;
    }

    v58 = *(a1 + 1132);
    if (v58 == 4)
    {
      if (*(a1 + 16496))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v63 = AVE_Log_CheckConsole(3u);
          v64 = AVE_GetCurrTime();
          v65 = AVE_Log_GetLevelStr(4);
          if (v63)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail\n", v64, 3, v65, "AVE_ValidateEncoderParameters", 2010, "false", *(a1 + 10892));
            v64 = AVE_GetCurrTime();
            v65 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail", v64, 3, v65, "AVE_ValidateEncoderParameters", 2010, "false", *(a1 + 10892));
        }

        return 4294966296;
      }
    }

    else if (v58 == 20 && *(a1 + 10892) != 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v59 = AVE_Log_CheckConsole(3u);
        v60 = AVE_GetCurrTime();
        v61 = AVE_Log_GetLevelStr(4);
        v62 = *(a1 + 10892);
        if (v59)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: Usage mode %d does not support eRCMode = %d. Fail.\n", v60, 3, v61, "AVE_ValidateEncoderParameters", 2001, "false", *(a1 + 10892), *(a1 + 1132));
          v60 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        v350 = *(a1 + 10892);
        v368 = *(a1 + 1132);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Usage mode %d does not support eRCMode = %d. Fail.", v60);
      }

      return 4294966295;
    }

    v66 = *(a1 + 1120);
    if ((v66 & 0x80000000) == 0)
    {
      v67 = *(a1 + 1256);
      goto LABEL_85;
    }

    *(a1 + 1120) = v66 | 4;
    v67 = *(a1 + 1256);
    if (v67 == 2)
    {
      v67 = 3;
      *(a1 + 1256) = 3;
    }

    if (v58 != 4)
    {
LABEL_85:
      if (v67)
      {
        if (*(a1 + 76) >= 3)
        {
          if (v67 > 3)
          {
            if (AVE_Log_CheckLevel(0x10u, 5))
            {
              v79 = AVE_Log_CheckConsole(0x10u);
              v80 = AVE_GetCurrTime();
              v81 = AVE_Log_GetLevelStr(5);
              v82 = *(a1 + 1256);
              if (v79)
              {
                printf("%lld %d AVE %s: %s:%d too many B frames (%d) max is %d. -> will gracefully default to the internal max!\n", v80, 16, v81, "AVE_ValidateEncoderParameters", 2061, *(a1 + 1256), 3);
                v80 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(5);
                v83 = *(a1 + 1256);
              }

              else
              {
                v343 = *(a1 + 1256);
              }

              syslog(3, "%lld %d AVE %s: %s:%d too many B frames (%d) max is %d. -> will gracefully default to the internal max!", v80);
            }

            *(a1 + 1256) = 3;
            v84 = *(a1 + 1240);
LABEL_112:
            v89 = *(a1 + 1264);
            if (v89 == 1)
            {
              *(a1 + 1268) = 0;
              *(a1 + 1272) = 0xBFF0000000000000;
              *(a1 + 1280) = 0xBFF0000000000000;
              *(a1 + 1252) = 0;
              *(a1 + 1260) = 1;
              v84 &= ~0x400u;
              *(a1 + 1240) = v84;
              *(a1 + 1288) = 1;
            }

            else if (v89 <= 0 && *(a1 + 1268) <= 0 && *(a1 + 1272) <= 0.0 && *(a1 + 1280) <= 0.0)
            {
              *(a1 + 1264) = 30;
            }

            if (!*(a1 + 1256))
            {
              v84 &= ~0x400u;
              *(a1 + 1240) = v84;
            }

            if (((*(a1 + 17884) | *(a1 + 17880)) & 0x400) == 0 && (v84 & 0x400) != 0 && (*(a1 + 1123) & 0x80) != 0)
            {
              *(a1 + 1240) = v84 & 0xFFFFFBFF;
            }

            if (*(a1 + 1232) <= -13)
            {
              *(a1 + 1232) = -6 * *(a1 + 12052);
            }

            if (*(a1 + 1236) <= -13)
            {
              if (*(a1 + 1132) == 20)
              {
                v90 = 51;
              }

              else
              {
                v90 = 48;
              }

              *(a1 + 1236) = v90;
            }

            if (*(a1 + 1344) <= -13)
            {
              *(a1 + 1344) = -6 * *(a1 + 12052);
            }

            v91 = (a1 + 1344);
            if (*(a1 + 1348) <= -13)
            {
              if (*(a1 + 1132) == 20)
              {
                v92 = 51;
              }

              else
              {
                v92 = 48;
              }

              *(a1 + 1348) = v92;
            }

            if (AVE_CheckQPRange((a1 + 1344), *(a1 + 12052) + 8))
            {
              if (AVE_Log_CheckLevel(3u, 4))
              {
                v93 = AVE_Log_CheckConsole(3u);
                v94 = AVE_GetCurrTime();
                v95 = AVE_Log_GetLevelStr(4);
                v96 = *(a1 + 1344);
                if (v93)
                {
                  printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]\n", v94, 3, v95, "AVE_ValidateEncoderParameters", 2148, "false", *(a1 + 1344), *(a1 + 1348));
                  v94 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                }

                v351 = *(a1 + 1344);
                v369 = *(a1 + 1348);
                syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]", v94);
              }

              return 4294966295;
            }

            v97 = (a1 + 1232);
            if (AVE_CheckQPRange((a1 + 1232), *(a1 + 12052) + 8))
            {
              if (AVE_Log_CheckLevel(3u, 4))
              {
                v98 = AVE_Log_CheckConsole(3u);
                v99 = AVE_GetCurrTime();
                v100 = AVE_Log_GetLevelStr(4);
                v101 = *(a1 + 1232);
                if (v98)
                {
                  printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect RCQPRange [%d %d]\n", v99, 3, v100, "AVE_ValidateEncoderParameters", 2156, "false", *(a1 + 1232), *(a1 + 1236));
                  v99 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                }

                v352 = *(a1 + 1232);
                v370 = *(a1 + 1236);
                syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Incorrect RCQPRange [%d %d]", v99);
              }

              return 4294966295;
            }

            if (*v97 < *v91)
            {
              *v97 = *v91;
            }

            v102 = *(a1 + 1348);
            if (*(a1 + 1236) > v102)
            {
              *(a1 + 1236) = v102;
            }

            v103 = *(a1 + 10252);
            if (v103 >= 33)
            {
              if (!AVE_Log_CheckLevel(3u, 4))
              {
                return 4294966295;
              }

              v110 = AVE_Log_CheckConsole(3u);
              v111 = AVE_GetCurrTime();
              v112 = AVE_Log_GetLevelStr(4);
              v113 = *(v38 + 21);
              if (v110)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: too many slices (%d) max is %d for now (can be changed)\n", v111, 3, v112, "AVE_ValidateEncoderParameters", 2178, "pINS->VideoParams.sSliceMap.iNum <= ((32) < (256) ? (32) : (256))", *(v38 + 21), 32);
                v111 = AVE_GetCurrTime();
                v112 = AVE_Log_GetLevelStr(4);
              }

              v353 = *(v38 + 21);
              v364 = 32;
              v342 = 2178;
              v344 = "pINS->VideoParams.sSliceMap.iNum <= ((32) < (256) ? (32) : (256))";
              v326 = v112;
              v114 = "%lld %d AVE %s: %s:%d %s | FIG: too many slices (%d) max is %d for now (can be changed)";
            }

            else
            {
              if (v103)
              {
                v104 = *(a1 + 12008);
                if (v104 != 4)
                {
                  if (v104 != 2)
                  {
                    goto LABEL_198;
                  }

                  if (*(a1 + 13732))
                  {
                    if (AVE_Log_CheckLevel(0x10u, 5))
                    {
                      v105 = AVE_Log_CheckConsole(0x10u);
                      v106 = AVE_GetCurrTime();
                      v107 = AVE_Log_GetLevelStr(5);
                      v108 = *(a1 + 12008);
                      if (v105)
                      {
                        printf("%lld %d AVE %s: profile %d and entropy_coding_mode_flag is not EntropyModeCAVLC. setting it to EntropyModeCAVLC.\n", v106, 16, v107, v108);
                        v109 = AVE_GetCurrTime();
                        v325 = AVE_Log_GetLevelStr(5);
                        syslog(3, "%lld %d AVE %s: profile %d and entropy_coding_mode_flag is not EntropyModeCAVLC. setting it to EntropyModeCAVLC.", v109, 16, v325, *(a1 + 12008));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: profile %d and entropy_coding_mode_flag is not EntropyModeCAVLC. setting it to EntropyModeCAVLC.", v106, 16, v107, v108);
                      }
                    }

                    *(a1 + 13732) = 0;
                  }
                }

                if (*(a1 + 13807) == 1)
                {
                  if (AVE_Log_CheckLevel(0x10u, 5))
                  {
                    v117 = AVE_Log_CheckConsole(0x10u);
                    v118 = AVE_GetCurrTime();
                    v119 = AVE_Log_GetLevelStr(5);
                    v120 = *(a1 + 12008);
                    if (v117)
                    {
                      printf("%lld %d AVE %s: FIG: profile %d and transform_8x8_mode_flag is true. setting it to false.\n", v118, 16, v119, v120);
                      v121 = AVE_GetCurrTime();
                      v327 = AVE_Log_GetLevelStr(5);
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and transform_8x8_mode_flag is true. setting it to false.", v121, 16, v327, *(a1 + 12008));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and transform_8x8_mode_flag is true. setting it to false.", v118, 16, v119, v120);
                    }
                  }

                  *(a1 + 13807) = 0;
                  *(a1 + 10176) = 0;
                }

                if (*(a1 + 13808) == 1)
                {
                  if (AVE_Log_CheckLevel(0x10u, 5))
                  {
                    v122 = AVE_Log_CheckConsole(0x10u);
                    v123 = AVE_GetCurrTime();
                    v124 = AVE_Log_GetLevelStr(5);
                    v125 = *(a1 + 12008);
                    if (v122)
                    {
                      printf("%lld %d AVE %s: FIG: profile %d and pic_scaling_matrix_present_flag is true. setting it to false.\n", v123, 16, v124, v125);
                      v126 = AVE_GetCurrTime();
                      v328 = AVE_Log_GetLevelStr(5);
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and pic_scaling_matrix_present_flag is true. setting it to false.", v126, 16, v328, *(a1 + 12008));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: profile %d and pic_scaling_matrix_present_flag is true. setting it to false.", v123, 16, v124, v125);
                    }
                  }

                  *(a1 + 13808) = 0;
                }

                v127 = 0;
                v128 = a1 + 13812;
                do
                {
                  if (*(v128 + v127) >= 1)
                  {
                    if (AVE_Log_CheckLevel(0x10u, 5))
                    {
                      v129 = AVE_Log_CheckConsole(0x10u);
                      v130 = AVE_GetCurrTime();
                      v131 = AVE_Log_GetLevelStr(5);
                      v132 = *(a1 + 12008);
                      if (v129)
                      {
                        printf("%lld %d AVE %s: FIG: profile %d and second_chroma_qp_index_offset is > 0. setting it to 0.\n", v130, 16, v131, v132);
                        v130 = AVE_GetCurrTime();
                        v131 = AVE_Log_GetLevelStr(5);
                        v132 = *(a1 + 12008);
                      }

                      syslog(3, "%lld %d AVE %s: FIG: profile %d and second_chroma_qp_index_offset is > 0. setting it to 0.", v130, 16, v131, v132);
                    }

                    *(v128 + v127) = 0;
                  }

                  v127 += 4;
                }

                while (v127 != 32);
                v104 = *(a1 + 12008);
LABEL_198:
                if (v104 != 6 && v104 != 0)
                {
                  goto LABEL_221;
                }

                v134 = *(a1 + 12044);
                v135 = AVE_Log_CheckLevel(0x10u, 6);
                if (v134 == 3)
                {
                  if (v135)
                  {
                    v141 = AVE_Log_CheckConsole(0x10u);
                    v142 = AVE_GetCurrTime();
                    v143 = AVE_Log_GetLevelStr(6);
                    v144 = *(a1 + 12008);
                    if (v141)
                    {
                      printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v142, 16, v143, "AVE_ValidateEncoderParameters", 2245, *(a1 + 12008), 9);
                      v142 = AVE_GetCurrTime();
                      AVE_Log_GetLevelStr(6);
                      v145 = *(a1 + 12008);
                    }

                    else
                    {
                      v346 = *(a1 + 12008);
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v142);
                  }

                  v151 = 9;
                }

                else
                {
                  if (v134 != 2)
                  {
                    if (v135)
                    {
                      v146 = AVE_Log_CheckConsole(0x10u);
                      v147 = AVE_GetCurrTime();
                      v148 = AVE_Log_GetLevelStr(6);
                      v149 = *(a1 + 12044);
                      if (v146)
                      {
                        printf("%lld %d AVE %s: %s:%d chroma format idc %d profile %d\n", v147, 16, v148, "AVE_ValidateEncoderParameters", 2251, *(a1 + 12044), *(a1 + 12008));
                        v147 = AVE_GetCurrTime();
                        AVE_Log_GetLevelStr(6);
                        v150 = *(a1 + 12044);
                        v354 = *(a1 + 12008);
                      }

                      else
                      {
                        v347 = *(a1 + 12044);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d chroma format idc %d profile %d", v147);
                    }

LABEL_221:
                    *(a1 + 1368) = AVE_Enc_DecideThroughputMode(*(v2 + 256), *(a1 + 18004), *(a1 + 68), *(a1 + 76), *(a1 + 64), 1, *(a1 + 12044), *(a1 + 16628), *(a1 + 10892), *(a1 + 692), *(a1 + 1112) * ((*(a1 + 1440) + 15) >> 4) * ((*(a1 + 1444) + 15) >> 4), *(a1 + 1440), *(a1 + 1444));
                    if (*(a1 + 76) >= 30 && !*(a1 + 692) && *(a1 + 16628) >= 1)
                    {
                      *(a1 + 688) |= 0x100u;
                      *(a1 + 1256) = 0;
                      *(a1 + 1240) &= 0xFFFFFAFF;
                    }

                    if (*(a1 + 1308) > 1)
                    {
                      if ((v152 = *(a1 + 10892), v152 <= 0x26) && ((1 << v152) & 0x6000100000) != 0 || v152 == 10000)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v153 = AVE_Log_CheckConsole(0x10u);
                          v154 = AVE_GetCurrTime();
                          v155 = AVE_Log_GetLevelStr(5);
                          v156 = *(a1 + 10892);
                          v157 = *(a1 + 1308);
                          if (v153)
                          {
                            printf("%lld %d AVE %s: FIG: usageMode = %d and reference number of P %d -> 1\n", v154, 16, v155, *(a1 + 10892), v157);
                            v158 = AVE_GetCurrTime();
                            v159 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and reference number of P %d -> 1", v158, 16, v159, *(a1 + 10892), *(a1 + 1308));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and reference number of P %d -> 1", v154, 16, v155, *(a1 + 10892), v157);
                          }
                        }

                        *(a1 + 1308) = 1;
                      }
                    }

                    if (*(a1 + 12060) == 1)
                    {
                      v160 = *(a1 + 10892);
                      if (v160 <= 0x26 && ((1 << v160) & 0x6000100002) != 0 || v160 == 10000)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v161 = AVE_Log_CheckConsole(0x10u);
                          v162 = AVE_GetCurrTime();
                          v163 = AVE_Log_GetLevelStr(5);
                          v164 = *(a1 + 10892);
                          if (v161)
                          {
                            printf("%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.\n", v162, 16, v163, v164);
                            v165 = AVE_GetCurrTime();
                            v329 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.", v165, 16, v329, *(a1 + 10892));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.", v162, 16, v163, v164);
                          }
                        }

                        *(a1 + 12060) = 0;
                      }

                      if (*(a1 + 12008) != 9)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v166 = AVE_Log_CheckConsole(0x10u);
                          v167 = AVE_GetCurrTime();
                          v168 = AVE_Log_GetLevelStr(5);
                          v169 = *(a1 + 12008);
                          if (v166)
                          {
                            printf("%lld %d AVE %s: profile %d and bIsLossless is true not supported. Set to High444P.\n", v167, 16, v168, v169);
                            v170 = AVE_GetCurrTime();
                            v330 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: profile %d and bIsLossless is true not supported. Set to High444P.", v170, 16, v330, *(a1 + 12008));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: profile %d and bIsLossless is true not supported. Set to High444P.", v167, 16, v168, v169);
                          }
                        }

                        *(a1 + 12008) = 9;
                        *(a1 + 12036) = 17;
                      }

                      if (*(a1 + 1132) != 3)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v171 = AVE_Log_CheckConsole(0x10u);
                          v172 = AVE_GetCurrTime();
                          v173 = AVE_Log_GetLevelStr(5);
                          v174 = *(a1 + 1132);
                          if (v171)
                          {
                            printf("%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.\n", v172, 16, v173, v174);
                            v175 = AVE_GetCurrTime();
                            v331 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.", v175, 16, v331, *(a1 + 1132));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.", v172, 16, v173, v174);
                          }
                        }

                        *(a1 + 1132) = 3;
                      }

                      if (*(a1 + 1336))
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v176 = AVE_Log_CheckConsole(0x10u);
                          v177 = AVE_GetCurrTime();
                          v178 = AVE_Log_GetLevelStr(5);
                          v179 = *(a1 + 1336);
                          if (v176)
                          {
                            printf("%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0.\n", v177, 16, v178, "AVE_ValidateEncoderParameters", 2350, v179);
                            v180 = AVE_GetCurrTime();
                            v181 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0.", v180, 16, v181, "AVE_ValidateEncoderParameters", 2350, *(a1 + 1336));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0.", v177, 16, v178, "AVE_ValidateEncoderParameters", 2350, v179);
                          }
                        }

                        *(a1 + 1336) = 0;
                      }

                      if ((*(a1 + 1352) & 0x1E) != 0)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v182 = AVE_Log_CheckConsole(0x10u);
                          v183 = AVE_GetCurrTime();
                          v184 = AVE_Log_GetLevelStr(5);
                          v185 = *(a1 + 1352);
                          if (v182)
                          {
                            printf("%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0\n", v183, 16, v184, v185);
                            v186 = AVE_GetCurrTime();
                            v332 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0", v186, 16, v332, *(a1 + 1352));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0", v183, 16, v184, v185);
                          }
                        }

                        *(a1 + 1352) = 0;
                      }

                      v187 = -6 * *(a1 + 12052);
                      *(a1 + 1348) = v187;
                      *(a1 + 1344) = v187;
                      *(a1 + 1236) = v187;
                      *(a1 + 1232) = v187;
                      *(a1 + 1152) = v187;
                      *(a1 + 1148) = v187;
                      *(a1 + 1144) = v187;
                      if (*(a1 + 13732) == 1)
                      {
                        v188 = ((*(a1 + 1440) >> 4) + 31) & 0x1FFFFFE0;
                        if (v188 > 0x100 || (*(a1 + 1444) >> 4) * v188 > 0xC000)
                        {
                          if (AVE_Log_CheckLevel(0x10u, 5))
                          {
                            v189 = AVE_Log_CheckConsole(0x10u);
                            v190 = AVE_GetCurrTime();
                            v191 = AVE_Log_GetLevelStr(5);
                            v192 = *(a1 + 1440);
                            v193 = *(a1 + 1444);
                            v194 = *(a1 + 13732);
                            if (v189)
                            {
                              printf("%lld %d AVE %s: FIG: ui32Width and ui32Height = (%d,%d), bIsLossless is true and entropy_coding_mode_flag = %d not supported. Set it to cavlc.\n", v190, 16, v191, v192, *(a1 + 1444), v194);
                              v195 = AVE_GetCurrTime();
                              v196 = AVE_Log_GetLevelStr(5);
                              syslog(3, "%lld %d AVE %s: FIG: ui32Width and ui32Height = (%d,%d), bIsLossless is true and entropy_coding_mode_flag = %d not supported. Set it to cavlc.", v195, 16, v196, *(a1 + 1440), *(a1 + 1444), *(a1 + 13732));
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: FIG: ui32Width and ui32Height = (%d,%d), bIsLossless is true and entropy_coding_mode_flag = %d not supported. Set it to cavlc.", v190, 16, v191, v192, *(a1 + 1444), v194);
                            }
                          }

                          *(a1 + 13732) = 0;
                        }
                      }

                      if (*(a1 + 1464))
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v197 = AVE_Log_CheckConsole(0x10u);
                          v198 = AVE_GetCurrTime();
                          v199 = AVE_Log_GetLevelStr(5);
                          v200 = *(a1 + 1464);
                          if (v197)
                          {
                            printf("%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.\n", v198, 16, v199, v200);
                            v201 = AVE_GetCurrTime();
                            v333 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.", v201, 16, v333, *(a1 + 1464));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.", v198, 16, v199, v200);
                          }
                        }

                        *(a1 + 1464) = 0;
                      }

                      if ((*(a1 + 1336) & 0x40) != 0)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v202 = AVE_Log_CheckConsole(0x10u);
                          v203 = AVE_GetCurrTime();
                          v204 = AVE_Log_GetLevelStr(5);
                          v205 = *(a1 + 1336);
                          if (v202)
                          {
                            printf("%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.\n", v203, 16, v204, v205);
                            v206 = AVE_GetCurrTime();
                            v334 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.", v206, 16, v334, *(a1 + 1336));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.", v203, 16, v204, v205);
                          }
                        }

                        *(a1 + 1336) &= ~0x40u;
                      }
                    }

                    v207 = *(a1 + 11460);
                    if (v207 >= *(a1 + 1112))
                    {
                      *(a1 + 11460) = 0;
                      *(a1 + 1288) = 1;
                      v212 = *(a1 + 1256) == 0;
                    }

                    else if (*(a1 + 1256))
                    {
                      if (v207 < 1)
                      {
                        v212 = 0;
                      }

                      else
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v208 = AVE_Log_CheckConsole(0x10u);
                          v209 = AVE_GetCurrTime();
                          v210 = AVE_Log_GetLevelStr(5);
                          if (v208)
                          {
                            printf("%lld %d AVE %s: FIG: Disable B frames (and honor the iAverageNonDroppableFrameRate request)\n", v209, 16, v210);
                            v211 = AVE_GetCurrTime();
                            v335 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: Disable B frames (and honor the iAverageNonDroppableFrameRate request)", v211, 16, v335);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: Disable B frames (and honor the iAverageNonDroppableFrameRate request)", v209, 16, v210);
                          }
                        }

                        *(a1 + 1256) = 0x100000000;
                        v212 = 1;
                        *(a1 + 1288) = 1;
                        *(a1 + 1240) &= ~0x400u;
                      }
                    }

                    else
                    {
                      v212 = 1;
                    }

                    if ((*(a1 + 10764) & 1) == 0)
                    {
                      if (*(a1 + 1132) == 20)
                      {
                        v212 = 1;
                      }

                      if (!v212)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v213 = AVE_Log_CheckConsole(0x10u);
                          v214 = AVE_GetCurrTime();
                          v215 = AVE_Log_GetLevelStr(5);
                          v216 = *(a1 + 1132);
                          v217 = *(a1 + 1256);
                          if (v213)
                          {
                            printf("%lld %d AVE %s: FIG: eRCMode %d bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true\n", v214, 16, v215, *(a1 + 1132), v217);
                            v218 = AVE_GetCurrTime();
                            v219 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode %d bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true", v218, 16, v219, *(a1 + 1132), *(a1 + 1256));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: eRCMode %d bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true", v214, 16, v215, *(a1 + 1132), v217);
                          }
                        }

                        *(a1 + 10764) = 1;
                      }
                    }

                    if (*(a1 + 16496))
                    {
                      *(a1 + 10540) = 1;
                    }

                    if (*(a1 + 1256) && *(a1 + 1476) == 1)
                    {
                      if (AVE_Log_CheckLevel(0x10u, 5))
                      {
                        v220 = AVE_Log_CheckConsole(0x10u);
                        v221 = AVE_GetCurrTime();
                        v222 = AVE_Log_GetLevelStr(5);
                        v223 = *(a1 + 1256);
                        if (v220)
                        {
                          printf("%lld %d AVE %s: FIG: BFrames = %d and LowDelay is true. Default to regular BFrames case.\n", v221, 16, v222, v223);
                          v224 = AVE_GetCurrTime();
                          v336 = AVE_Log_GetLevelStr(5);
                          syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and LowDelay is true. Default to regular BFrames case.", v224, 16, v336, *(a1 + 1256));
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and LowDelay is true. Default to regular BFrames case.", v221, 16, v222, v223);
                        }
                      }

                      *(a1 + 1476) = 0;
                    }

                    if (!AVE_DevCap_FindSearchRangeMode(*(a1 + 68), 1, 1, *v38))
                    {
                      if (AVE_Log_CheckLevel(3u, 4))
                      {
                        v234 = AVE_Log_CheckConsole(3u);
                        v235 = AVE_GetCurrTime();
                        v236 = AVE_Log_GetLevelStr(4);
                        if (v234)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | FIG: invalid search_range\n", v235, 3, v236, "AVE_ValidateEncoderParameters", 2473, "pEntry != __null");
                          AVE_GetCurrTime();
                          AVE_Log_GetLevelStr(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: invalid search_range");
                      }

                      return 4294966295;
                    }

                    if (*(a1 + 10857) == 1 && (*(a1 + 10783) & 1) == 0 && *(a1 + 1132) != 4 && !*(a1 + 16496) && (*(a1 + 10858) & 1) == 0)
                    {
                      if (*(a1 + 10904) == 1)
                      {
                        *(a1 + 1352) = 0;
                        *(a1 + 1336) = 0;
                      }

                      *(a1 + 10764) = 1;
                    }

                    if ((*(a1 + 10904) & 1) != 0 || (*(a1 + 716) & 0x3C0) != 0 || *(a1 + 16496))
                    {
                      *(a1 + 1128) = 0;
                      *(a1 + 1120) &= ~0x80000000uLL;
                    }

                    else if ((*(a1 + 1123) & 0x80) != 0)
                    {
                      *(a1 + 11460) = 0;
                      *(a1 + 1104) |= 0x40uLL;
                    }

                    v225 = *(a1 + 1336);
                    if ((v225 & 0x40) != 0)
                    {
                      v226 = *(a1 + 1440) >> 4;
                      v227 = *(a1 + 1444) >> 4;
                      v228 = (v226 + 31) & 0x1FFFFFE0;
                      if (v228 > 0x80 || v228 * v227 >= 0x2D01)
                      {
                        v229 = (((v226 + 1) >> 1) + 31) & 0x1FFFFFE0;
                        if (v229 > 0x80 || v229 * ((v227 + 1) >> 1) >= 0x2D01)
                        {
                          v225 &= ~0x40u;
                          *(a1 + 1336) = v225;
                        }
                      }
                    }

                    if (*(a1 + 11792) >= 0x1Fu)
                    {
                      if (AVE_Log_CheckLevel(0x10u, 5))
                      {
                        v230 = AVE_Log_CheckConsole(0x10u);
                        v231 = AVE_GetCurrTime();
                        v232 = AVE_Log_GetLevelStr(5);
                        if (v230)
                        {
                          printf("%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM\n", v231, 16, v232, 30);
                          v233 = AVE_GetCurrTime();
                          v337 = AVE_Log_GetLevelStr(5);
                          syslog(3, "%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM", v233, 16, v337, 30);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM", v231, 16, v232, 30);
                        }
                      }

                      *(a1 + 11792) = 30;
                      v225 = *(a1 + 1336);
                    }

                    if ((v225 & 0x10) != 0)
                    {
                      v237 = *(a1 + 1132);
                      if (v237 <= 0x14 && ((1 << v237) & 0x100009) != 0)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v238 = AVE_Log_CheckConsole(0x10u);
                          v239 = AVE_GetCurrTime();
                          v240 = AVE_Log_GetLevelStr(5);
                          v241 = *(a1 + 1132);
                          if (v238)
                          {
                            printf("%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x (!= 0) is not supported. set QPMod feature to 0\n", v239, 16, v240, "AVE_ValidateEncoderParameters", 2560, *(a1 + 1132), *(a1 + 1336));
                            v239 = AVE_GetCurrTime();
                            AVE_Log_GetLevelStr(5);
                            v242 = *(a1 + 1132);
                            v355 = *(a1 + 1336);
                          }

                          else
                          {
                            v348 = *(a1 + 1132);
                          }

                          syslog(3, "%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x (!= 0) is not supported. set QPMod feature to 0", v239);
                        }

                        v225 = 0;
                        *(a1 + 1336) = 0;
                        v237 = *(a1 + 1132);
                      }

                      if (v237 == 100)
                      {
                        if (AVE_Log_CheckLevel(3u, 4))
                        {
                          v243 = AVE_Log_CheckConsole(3u);
                          v244 = AVE_GetCurrTime();
                          v245 = AVE_Log_GetLevelStr(4);
                          v246 = *(a1 + 1132);
                          if (v243)
                          {
                            printf("%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.\n", v244, 3, v245, "AVE_ValidateEncoderParameters", 2569, "pINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_HwVal", "AVE_ValidateEncoderParameters", 2569, *(a1 + 1132), *(a1 + 1336));
                            v244 = AVE_GetCurrTime();
                            v245 = AVE_Log_GetLevelStr(4);
                          }

                          v377 = *(a1 + 1132);
                          v383 = *(a1 + 1336);
                          syslog(3, "%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.", v244, 3, v245);
                        }

                        return 4294966295;
                      }
                    }

                    if ((v225 & 0x8010) == 0x8000 && *(a1 + 1132) == 1)
                    {
                      v225 &= 0xFFFF7FEF;
                      *(a1 + 1336) = v225;
                    }

                    if ((*(a1 + 1123) & 0x80) != 0)
                    {
                      v247 = *(a1 + 1240) | 0x30000;
                      v248 = v225 & 0xFFFFFFAF;
                      v249 = *(a1 + 1132);
                      if (v249 == 8 || v249 == 6)
                      {
                        v248 |= 0x30u;
                      }

                      *(a1 + 1336) = (v248 | *(v2 + 237)) & ~*(v2 + 238);
                      *(a1 + 1240) = (*(v2 + 218) | v247) & ~*(v2 + 219);
                      if (AVE_Log_CheckLevel(0x10u, 6))
                      {
                        v250 = AVE_Log_CheckConsole(0x10u);
                        v251 = AVE_GetCurrTime();
                        v252 = AVE_Log_GetLevelStr(6);
                        if (v250)
                        {
                          printf("%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled\n", v251, 16, v252);
                          v253 = AVE_GetCurrTime();
                          v338 = AVE_Log_GetLevelStr(6);
                          syslog(3, "%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled", v253, 16, v338);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled", v251, 16, v252);
                        }
                      }
                    }

                    v254 = *(a1 + 10244);
                    if (v254 != 1)
                    {
                      v255 = *(a1 + 1132);
                      if (v255 && v255 != 20)
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v256 = AVE_Log_CheckConsole(0x10u);
                          v257 = AVE_GetCurrTime();
                          v258 = AVE_Log_GetLevelStr(5);
                          v259 = *(a1 + 1132);
                          if (v256)
                          {
                            printf("%lld %d AVE %s: FIG: Multiple PPSs and eRCMode %d is not supported. Forcing the PPS count to 1\n", v257, 16, v258, v259);
                            v260 = AVE_GetCurrTime();
                            v339 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: Multiple PPSs and eRCMode %d is not supported. Forcing the PPS count to 1", v260, 16, v339, *(a1 + 1132));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: Multiple PPSs and eRCMode %d is not supported. Forcing the PPS count to 1", v257, 16, v258, v259);
                          }
                        }

                        v254 = 1;
                        *(a1 + 10244) = 1;
                      }

                      v261.i64[0] = 0xC0000000CLL;
                      v261.i64[1] = 0xC0000000CLL;
                      v262.i64[0] = 0x100000001;
                      v262.i64[1] = 0x100000001;
                      v263 = vaddvq_s32(vsubq_s32(vbicq_s8(v262, vceqq_s32(*(a1 + 13772), v261)), vmvnq_s8(vceqq_s32(*(a1 + 13788), v261))));
                      if (v254 != v263)
                      {
                        if (AVE_Log_CheckLevel(3u, 4))
                        {
                          v268 = AVE_Log_CheckConsole(3u);
                          v269 = AVE_GetCurrTime();
                          v270 = AVE_Log_GetLevelStr(4);
                          v271 = *(a1 + 10244);
                          if (v268)
                          {
                            printf("%lld %d AVE %s: %s:%d %s | FIG: PPS count = %d and ch_qp_index_offset_cnt = %d... are not compatible. fail\n", v269, 3, v270, "AVE_ValidateEncoderParameters", 2642, "pINS->VideoParams.i32PPSsCount == ch_qp_index_offset_cnt", *(a1 + 10244), v263);
                            v269 = AVE_GetCurrTime();
                            AVE_Log_GetLevelStr(4);
                          }

                          v356 = *(a1 + 10244);
                          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: PPS count = %d and ch_qp_index_offset_cnt = %d... are not compatible. fail", v269);
                        }

                        return 4294966295;
                      }
                    }

                    if ((*(a1 + 1308) > 1 || *(a1 + 1256) || (*(a1 + 716) & 0x3C0) != 0) && (*(a1 + 10173) & 1) == 0)
                    {
                      *(a1 + 10173) = 1;
                    }

                    v264 = *(a1 + 76);
                    if (v264 >= 4)
                    {
                      *(a1 + 10205) = 1;
                    }

                    v265 = *(a1 + 692);
                    if (v265 == 1)
                    {
                      *(a1 + 688) &= ~2u;
                    }

                    if ((*(a1 + 712) & 8) != 0 || *(a1 + 10776))
                    {
                      *(a1 + 1464) = 0x8000000;
                    }

                    v266 = *(a1 + 1120);
                    if ((v266 & 0x10) != 0)
                    {
                      *(a1 + 1112) = *(a1 + 11448);
                      *(a1 + 1240) &= ~0x400u;
                    }

                    if ((*(a1 + 716) & 0x3C0) == 0)
                    {
LABEL_434:
                      if ((v266 & 0x80000000) != 0 && *(a1 + 76) >= 9)
                      {
                        *(a1 + 10172) = 1;
                        *(a1 + 10530) = 1;
                      }

                      if (*(a1 + 10531) && !*(a1 + 10172))
                      {
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v284 = AVE_Log_CheckConsole(0x10u);
                          v285 = AVE_GetCurrTime();
                          v286 = AVE_Log_GetLevelStr(5);
                          if (v284)
                          {
                            printf("%lld %d AVE %s: FIG: LRMERC enabled -> must run in LRME-pipe async.\n", v285, 16, v286);
                            v287 = AVE_GetCurrTime();
                            v340 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: LRMERC enabled -> must run in LRME-pipe async.", v287, 16, v340);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: LRMERC enabled -> must run in LRME-pipe async.", v285, 16, v286);
                          }
                        }

                        *(a1 + 10172) = 1;
                      }

                      else if ((*(a1 + 10172) & 1) == 0)
                      {
                        v283 = *(a1 + 1240) & 0xFFFEFFFF;
LABEL_447:
                        *(a1 + 1240) = v283;
                        if (*(a1 + 10248) == 1)
                        {
                          v288 = *(a1 + 10252);
                          if (v288 == 1)
                          {
                            if (AVE_Log_CheckLevel(0x10u, 5))
                            {
                              v289 = AVE_Log_CheckConsole(0x10u);
                              v290 = AVE_GetCurrTime();
                              v291 = AVE_Log_GetLevelStr(5);
                              if (v289)
                              {
                                printf("%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode\n", v290, 16, v291);
                                v292 = AVE_GetCurrTime();
                                v341 = AVE_Log_GetLevelStr(5);
                                syslog(3, "%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode", v292, 16, v341);
                              }

                              else
                              {
                                syslog(3, "%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode", v290, 16, v291);
                              }
                            }

                            *(a1 + 10248) = 0;
                            v288 = *(a1 + 10252);
                          }

                          if (v288)
                          {
                            v293 = 0;
                            v294 = (v288 - 1);
                            v295 = (a1 + 10260);
                            while (1)
                            {
                              if (v294 == v293)
                              {
                                v296 = *(a1 + 10260 + 8 * v294);
                                if (v296 < 96)
                                {
                                  break;
                                }
                              }

                              else
                              {
                                v296 = *v295;
                                if (*v295 < 128)
                                {
                                  break;
                                }
                              }

                              if ((v296 + *(v295 - 1)) > *(a1 + 1444))
                              {
                                break;
                              }

                              ++v293;
                              v295 += 2;
                              if (v288 == v293)
                              {
                                goto LABEL_469;
                              }
                            }

                            if (AVE_Log_CheckLevel(0x10u, 5))
                            {
                              v297 = AVE_Log_CheckConsole(0x10u);
                              v298 = AVE_GetCurrTime();
                              v299 = AVE_Log_GetLevelStr(5);
                              v300 = *v295;
                              if (v297)
                              {
                                printf("%lld %d AVE %s: FIG: Slice Parameters Invalid slice[%d] %d iY: %d, iHeight: %d. %d Force to Frame Encoding\n", v298, 16, v299, v293, *(a1 + 10252), *(v295 - 1), *v295, *(a1 + 1444));
                                v298 = AVE_GetCurrTime();
                                AVE_Log_GetLevelStr(5);
                                v301 = *(a1 + 10252);
                                v358 = *v295;
                                v371 = *(a1 + 1444);
                                v349 = *(v295 - 1);
                              }

                              else
                              {
                                v359 = *v295;
                              }

                              syslog(3, "%lld %d AVE %s: FIG: Slice Parameters Invalid slice[%d] %d iY: %d, iHeight: %d. %d Force to Frame Encoding", v298);
                            }

                            *(a1 + 10248) = 0;
                            *(a1 + 10252) = 1;
                            *(a1 + 10260) = *(a1 + 1444);
                          }
                        }

LABEL_469:
                        v302 = *(a1 + 716) | 0x3E;
                        *(a1 + 716) = v302;
                        if (!*(a1 + 10531))
                        {
                          *(a1 + 716) = v302 & 0xFFFFFFF7;
                        }

                        *(a1 + 1096) = (*(v2 + 123) | *(a1 + 1096) & ~*(a1 + 17968)) & ~*(v2 + 124);
                        if (AVE_CheckQP(*(a1 + 1144), *(a1 + 12052) + 8))
                        {
                          if (AVE_Log_CheckLevel(3u, 4))
                          {
                            v303 = AVE_Log_CheckConsole(3u);
                            v304 = AVE_GetCurrTime();
                            v305 = AVE_Log_GetLevelStr(4);
                            if (v303)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d\n", v304, 3, v305, "AVE_ValidateEncoderParameters", 2850, "false", *(a1 + 1144));
                              v304 = AVE_GetCurrTime();
                              AVE_Log_GetLevelStr(4);
                            }

                            v360 = *(a1 + 1144);
                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d", v304);
                          }
                        }

                        else if (AVE_CheckQP(*(a1 + 1148), *(a1 + 12052) + 8))
                        {
                          if (AVE_Log_CheckLevel(3u, 4))
                          {
                            v306 = AVE_Log_CheckConsole(3u);
                            v307 = AVE_GetCurrTime();
                            v308 = AVE_Log_GetLevelStr(4);
                            if (v306)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d\n", v307, 3, v308, "AVE_ValidateEncoderParameters", 2855, "false", *(a1 + 1148));
                              v307 = AVE_GetCurrTime();
                              AVE_Log_GetLevelStr(4);
                            }

                            v361 = *(a1 + 1148);
                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d", v307);
                          }
                        }

                        else if (AVE_CheckQP(*(a1 + 1152), *(a1 + 12052) + 8))
                        {
                          if (AVE_Log_CheckLevel(3u, 4))
                          {
                            v309 = AVE_Log_CheckConsole(3u);
                            v310 = AVE_GetCurrTime();
                            v311 = AVE_Log_GetLevelStr(4);
                            if (v309)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d\n", v310, 3, v311, "AVE_ValidateEncoderParameters", 2860, "false", *(a1 + 1152));
                              v310 = AVE_GetCurrTime();
                              AVE_Log_GetLevelStr(4);
                            }

                            v362 = *(a1 + 1152);
                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d", v310);
                          }
                        }

                        else
                        {
                          if (!AVE_Enc_CheckResolution(*(a1 + 68), 1, 1, *(a1 + 1440), *(a1 + 1444), *(a1 + 1264) != 1))
                          {
                            if (*(a1 + 16932) < 1)
                            {
                              return 0;
                            }

                            v316 = *(a1 + 11460);
                            if (v316 < 1)
                            {
                              return 0;
                            }

                            v317 = *(a1 + 1112);
                            if (v316 > v317)
                            {
                              return 0;
                            }

                            v18 = 0;
                            *(a1 + 1248) = 0;
                            *(a1 + 1252) = v317 / v316;
                            *(a1 + 1256) = 0x200000000;
                            *(a1 + 1288) = 1;
                            return v18;
                          }

                          if (AVE_Log_CheckLevel(3u, 4))
                          {
                            v312 = AVE_Log_CheckConsole(3u);
                            v313 = AVE_GetCurrTime();
                            v314 = AVE_Log_GetLevelStr(4);
                            v315 = *(a1 + 1444);
                            if (v312)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.\n", v313, 3, v314, "AVE_ValidateEncoderParameters", 2872, "false", *(a1 + 1440), *(a1 + 1444), *(a1 + 1264));
                              v313 = AVE_GetCurrTime();
                              AVE_Log_GetLevelStr(4);
                            }

                            v372 = *(a1 + 1444);
                            v378 = *(a1 + 1264);
                            v363 = *(a1 + 1440);
                            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.", v313, 3);
                          }
                        }

                        return 4294966295;
                      }

                      v283 = *(a1 + 1240) | 0x10000;
                      goto LABEL_447;
                    }

                    *(a1 + 688) |= 0x100u;
                    if (!*(a1 + 10531))
                    {
                      *(a1 + 10531) = 3;
                    }

                    *(a1 + 10172) = 1;
                    *(a1 + 10530) = 1;
                    if (*(a1 + 12044) != 1)
                    {
                      if (AVE_Log_CheckLevel(3u, 4))
                      {
                        v272 = AVE_Log_CheckConsole(3u);
                        v273 = AVE_GetCurrTime();
                        v274 = AVE_Log_GetLevelStr(4);
                        if (v272)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | FIG: MCTF for ChromaFmt %d... not supported. Fail\n", v273, 3, v274, "AVE_ValidateEncoderParameters", 2710, "(pINS->SPSParams.chroma_format_idc == ChromaFmt_420)", *(a1 + 12044));
                          v273 = AVE_GetCurrTime();
                          AVE_Log_GetLevelStr(4);
                        }

                        v357 = *(a1 + 12044);
                        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MCTF for ChromaFmt %d... not supported. Fail", v273);
                      }

                      return 4294966295;
                    }

                    v267 = *(a1 + 11812);
                    if (v264 < 30)
                    {
                      if (v267 < 0)
                      {
                        *(a1 + 1392) = 1;
                        if (*(a1 + 1396) < 1)
                        {
                          goto LABEL_434;
                        }

LABEL_429:
                        if (AVE_Log_CheckLevel(0x10u, 5))
                        {
                          v275 = AVE_Log_CheckConsole(0x10u);
                          v276 = AVE_GetCurrTime();
                          v277 = AVE_Log_GetLevelStr(5);
                          v278 = *(a1 + 16);
                          v279 = *(a1 + 1392);
                          v280 = *(a1 + 1396);
                          if (v275)
                          {
                            printf("%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)\n", v276, 16, v277, v278, *(a1 + 1392), v280);
                            v281 = AVE_GetCurrTime();
                            v282 = AVE_Log_GetLevelStr(5);
                            syslog(3, "%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)", v281, 16, v282, *(a1 + 16), *(a1 + 1392), *(a1 + 1396));
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)", v276, 16, v277, v278, *(a1 + 1392), v280);
                          }
                        }

                        *(a1 + 1396) = -1;
                        v266 = *(a1 + 1120);
                        goto LABEL_434;
                      }

                      *(a1 + 1392) = v267;
LABEL_427:
                      if (*(a1 + 1396) < 1 || v267 != 1)
                      {
                        goto LABEL_434;
                      }

                      goto LABEL_429;
                    }

                    if (v267 < 0)
                    {
                      if (v265 >= 1 && *(a1 + 10804) == 2)
                      {
                        v267 = 0;
                        *(a1 + 1392) = 0;
LABEL_423:
                        if (*(a1 + 1396) == -1 && v265 >= 1 && *(a1 + 10804) == 2)
                        {
                          *(a1 + 1396) = 5;
                        }

                        goto LABEL_427;
                      }

                      v267 = 1;
                    }

                    *(a1 + 1392) = v267;
                    goto LABEL_423;
                  }

                  if (v135)
                  {
                    v136 = AVE_Log_CheckConsole(0x10u);
                    v137 = AVE_GetCurrTime();
                    v138 = AVE_Log_GetLevelStr(6);
                    v139 = *(a1 + 12008);
                    if (v136)
                    {
                      printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v137, 16, v138, "AVE_ValidateEncoderParameters", 2239, *(a1 + 12008), 8);
                      v137 = AVE_GetCurrTime();
                      AVE_Log_GetLevelStr(6);
                      v140 = *(a1 + 12008);
                    }

                    else
                    {
                      v345 = *(a1 + 12008);
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v137);
                  }

                  v151 = 8;
                }

                *(a1 + 12008) = v151;
                goto LABEL_221;
              }

              if (!AVE_Log_CheckLevel(3u, 4))
              {
                return 4294966295;
              }

              v115 = AVE_Log_CheckConsole(3u);
              v111 = AVE_GetCurrTime();
              v116 = AVE_Log_GetLevelStr(4);
              if (v115)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: Slices Per Frame = %d\n", v111, 3, v116, "AVE_ValidateEncoderParameters", 2179, "pINS->VideoParams.sSliceMap.iNum != 0", *(v38 + 21));
                v111 = AVE_GetCurrTime();
                v116 = AVE_Log_GetLevelStr(4);
                v344 = "pINS->VideoParams.sSliceMap.iNum != 0";
                v353 = *(v38 + 21);
                v342 = 2179;
              }

              else
              {
                v353 = *(v38 + 21);
                v342 = 2179;
                v344 = "pINS->VideoParams.sSliceMap.iNum != 0";
              }

              v326 = v116;
              v114 = "%lld %d AVE %s: %s:%d %s | FIG: Slices Per Frame = %d";
            }

            syslog(3, v114, v111, 3, v326, "AVE_ValidateEncoderParameters", v342, v344, v353, v364);
            return 4294966295;
          }

          v78 = 0;
        }

        else
        {
          if (AVE_Log_CheckLevel(0x10u, 5))
          {
            v71 = AVE_Log_CheckConsole(0x10u);
            v72 = AVE_GetCurrTime();
            v73 = AVE_Log_GetLevelStr(5);
            v74 = *(a1 + 1256);
            v75 = *(a1 + 76);
            if (v71)
            {
              printf("%lld %d AVE %s: FIG: BFrames = %d and DeviceType = %d. Not supported, set BFrames to 0.\n", v72, 16, v73, *(a1 + 1256), v75);
              v76 = AVE_GetCurrTime();
              v77 = AVE_Log_GetLevelStr(5);
              syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and DeviceType = %d. Not supported, set BFrames to 0.", v76, 16, v77, *(a1 + 1256), *(a1 + 76));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: BFrames = %d and DeviceType = %d. Not supported, set BFrames to 0.", v72, 16, v73, *(a1 + 1256), v75);
            }
          }

          *(a1 + 1256) = 0x100000000;
          v78 = 1;
          *(a1 + 1288) = 1;
          *(a1 + 1240) &= ~0x400u;
        }
      }

      else
      {
        v78 = 1;
      }

      v84 = *(a1 + 1240);
      if (v84 & 0x400) != 0 && (v78)
      {
        if (AVE_Log_CheckLevel(0x10u, 5))
        {
          v85 = AVE_Log_CheckConsole(0x10u);
          v86 = AVE_GetCurrTime();
          v87 = AVE_Log_GetLevelStr(5);
          if (v85)
          {
            printf("%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB\n", v86, 16, v87);
            v88 = AVE_GetCurrTime();
            v324 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB", v88, 16, v324);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB", v86, 16, v87);
          }
        }

        v84 = *(a1 + 1240) & 0xFFFFFBFF;
        *(a1 + 1240) = v84;
      }

      goto LABEL_112;
    }

    if (AVE_Log_CheckLevel(3u, 4))
    {
      v68 = AVE_Log_CheckConsole(3u);
      v69 = AVE_GetCurrTime();
      v70 = AVE_Log_GetLevelStr(4);
      if (v68)
      {
        printf("%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature\n", v69, 3, v70, "AVE_ValidateEncoderParameters", 2030, "false");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature");
    }

    return 4294966296;
  }

  v18 = v31;
  if (AVE_Log_CheckLevel(0x10u, 4))
  {
    v32 = AVE_Log_CheckConsole(0x10u);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(4);
    v35 = *(a1 + 1120);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx\n", v33, 16, v34, "AVE_ValidateEncoderParameters", 1944, "ret == 0", a1, *(a1 + 56), v2[105], *(a1 + 17872), *(a1 + 16840), *(a1 + 1216), *(a1 + 1120));
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      v36 = *(v2 + 105);
      v37 = *(a1 + 16840);
    }

    v388 = *(a1 + 1120);
    v385 = *(a1 + 16840);
    v387 = *(a1 + 1216);
    v375 = *(v2 + 105);
    v381 = *(a1 + 17872);
    v366 = *(a1 + 56);
    syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx", v33, 16, v34);
  }

  return v18;
}

void AVE_PrepareSequenceHeader(uint64_t a1, __CVBuffer *a2)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareSequenceHeader\n", CurrTime, 12, LevelStr);
      v7 = AVE_GetCurrTime();
      v109 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareSequenceHeader", v7, 12, v109);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareSequenceHeader", CurrTime, 12, LevelStr);
    }
  }

  if (a2)
  {
    if (*(a1 + 12060) == 1)
    {
      *(a1 + 12061) = 1;
    }

    v8 = *(a1 + 12064);
    if (v8 <= 4)
    {
      if (v8 == 1)
      {
        v38 = 0;
        v39 = (a1 + 12254);
        *(a1 + 12076) = 0x101010101010101;
        *(a1 + 12084) = 0x101010101010101;
        *(a1 + 12068) = 0x101010101010101;
        *(a1 + 12092) = 1;
        do
        {
          v40 = vuzp1q_s16(*(&g_saAVC_Default_4x4_Intra + v38), *(&g_saAVC_Default_4x4_Intra + v38 + 16));
          v39[-6] = v40;
          v39[-8] = v40;
          v39[-10] = v40;
          v41 = vuzp1q_s16(*(&g_saAVC_Default_4x4_Inter + v38), *(&g_saAVC_Default_4x4_Inter + v38 + 16));
          *v39 = v41;
          v39[-2] = v41;
          v39[-4] = v41;
          v38 += 32;
          ++v39;
        }

        while (v38 != 64);
        v42 = 0;
        v43 = (a1 + 12286);
        do
        {
          v44 = vuzp1q_s16(*(&g_saAVC_Default_8x8_Intra + v42), *(&g_saAVC_Default_8x8_Intra + v42 + 16));
          v43[32] = v44;
          v43[16] = v44;
          *v43 = v44;
          v45 = vuzp1q_s16(*(&g_saAVC_Default_8x8_Inter + v42), *(&g_saAVC_Default_8x8_Inter + v42 + 16));
          v43[40] = v45;
          v43[24] = v45;
          v43[8] = v45;
          v42 += 32;
          ++v43;
        }

        while (v42 != 256);
      }

      else
      {
        if (v8 != 2)
        {
LABEL_42:
          v46 = (a1 + 12286);
          v47 = (a1 + 12094);
          *(a1 + 12071) = 0;
          *(a1 + 12068) = 0;
          v48 = (a1 + 12075);
          v49 = 6;
          do
          {
            v48[6] = 0;
            memset_pattern16(v47, &unk_2954EAB30, 0x20uLL);
            *v48 = 0;
            v48[12] = 0;
            memset_pattern16(v46, &unk_2954EAB30, 0x80uLL);
            v46 += 128;
            ++v48;
            v47 += 32;
            --v49;
          }

          while (v49);
          goto LABEL_44;
        }

        v17 = 0;
        v18 = (a1 + 12081);
        v19 = (a1 + 12286);
        *(a1 + 12073) = 0x101010101010101;
        *(a1 + 12068) = 0x101010101010101;
        v20 = ScalingListExpl8x8;
        do
        {
          v21 = (a1 + 12094 + v17);
          *v18 = 0;
          *v21 = *(&ScalingListExpl4x4 + v17);
          v21[1] = *(&ScalingListExpl4x4 + v17 + 16);
          v18[6] = 0;
          v19[3] = *(v20 + 3);
          v19[2] = *(v20 + 2);
          v19[1] = *(v20 + 1);
          *v19 = *v20;
          v19[7] = *(v20 + 7);
          v19[6] = *(v20 + 6);
          v19[5] = *(v20 + 5);
          v17 += 32;
          v19[4] = *(v20 + 4);
          v19 += 8;
          ++v18;
          v20 += 64;
        }

        while (v17 != 192);
      }
    }

    else
    {
      switch(v8)
      {
        case 5:
          v22 = 0;
          *(a1 + 12068) = 1;
          v23 = a1 + 12069;
          v24 = a1 + 12094;
          v25 = a1 + 12286;
          v26 = &ScalingListExpl4x4_LowGain;
          v27 = &ScalingListExpl8x8_LowGain;
          do
          {
            v28 = 0;
            *(v23 + v22) = 1;
            *(a1 + 12081 + v22) = 0;
            do
            {
              *(v24 + v28) = vshlq_n_s16(*&v26[v28], 3uLL);
              v28 += 16;
            }

            while (v28 != 32);
            v29 = 0;
            *(v22 + v23 + 6) = 1;
            *(a1 + 12087 + v22) = 0;
            do
            {
              *(v25 + v29) = vshlq_n_s16(*&v27[v29], 3uLL);
              v29 += 16;
            }

            while (v29 != 128);
            ++v22;
            v26 += 32;
            v24 += 32;
            v27 += 128;
            v25 += 128;
          }

          while (v22 != 6);
          break;
        case 6:
          v30 = 0;
          *(a1 + 12068) = 1;
          v31 = a1 + 12069;
          v32 = a1 + 12094;
          v33 = a1 + 12286;
          v34 = &ScalingListExpl4x4_HighGain;
          v35 = &ScalingListExpl8x8_HighGain;
          do
          {
            v36 = 0;
            *(v31 + v30) = 1;
            *(a1 + 12081 + v30) = 0;
            do
            {
              *(v32 + v36) = vshlq_n_s16(*&v34[v36], 3uLL);
              v36 += 16;
            }

            while (v36 != 32);
            v37 = 0;
            *(v30 + v31 + 6) = 1;
            *(a1 + 12087 + v30) = 0;
            do
            {
              *(v33 + v37) = vshlq_n_s16(*&v35[v37], 3uLL);
              v37 += 16;
            }

            while (v37 != 128);
            ++v30;
            v34 += 32;
            v32 += 32;
            v35 += 128;
            v33 += 128;
          }

          while (v30 != 6);
          break;
        case 7:
          v9 = 0;
          v10 = (a1 + 12081);
          v11 = (a1 + 12286);
          *(a1 + 12073) = 0x101010101010101;
          *(a1 + 12068) = 0x101010101010101;
          v12 = &ScalingListExpl8x8_HighComp;
          do
          {
            v13 = (a1 + 12094 + v9);
            *v10 = 0;
            *v13 = *(&ScalingListExpl4x4_HighComp + v9);
            v13[1] = *(&ScalingListExpl4x4_HighComp + v9 + 16);
            v10[6] = 0;
            v11[3] = v12[3];
            v11[2] = v12[2];
            v11[1] = v12[1];
            *v11 = *v12;
            v11[7] = v12[7];
            v11[6] = v12[6];
            v11[5] = v12[5];
            v9 += 32;
            v11[4] = v12[4];
            v11 += 8;
            ++v10;
            v12 += 8;
          }

          while (v9 != 192);
          break;
        default:
          goto LABEL_42;
      }
    }

LABEL_44:
    *(a1 + 13080) = vsra_n_u32(-1, *(a1 + 1440), 4uLL);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    v51 = AVE_PixelFmt_FindByType(PixelFormatType);
    if (v51 && (*(a1 + 1104) & 8) != 0)
    {
      v55 = v51;
      v56 = *(v51 + 7) == 1;
      *(a1 + 13104) = v56;
      if (v56)
      {
        v57 = 1;
      }

      else
      {
        v57 = *(a1 + 13096);
      }

      *(a1 + 13096) = v57 & 1;
      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v58 = AVE_Log_CheckConsole(0x1Eu);
        v59 = AVE_GetCurrTime();
        v60 = AVE_Log_GetLevelStr(6);
        if (v58)
        {
          printf("%lld %d AVE %s: FIG: video_full_range_flag %d\n", v59, 30, v60, *(v55 + 7) == 1);
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(6);
        }

        v115 = *(v55 + 7) == 1;
        syslog(3, "%lld %d AVE %s: FIG: video_full_range_flag %d");
      }
    }

    else if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v52 = AVE_Log_CheckConsole(0x1Eu);
      v53 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(6);
      if (v52)
      {
        printf("%lld %d AVE %s: FIG: Unknown dynamic range\n", v53, 30, v54);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: FIG: Unknown dynamic range");
    }

    if ((*(a1 + 1104) & 0x40) != 0)
    {
      if (*(a1 + 1112) >= 1)
      {
        v62 = *(a1 + 1112);
      }

      else
      {
        v62 = 30;
      }

      v61 = 1;
      *(a1 + 13096) = 1;
      *(a1 + 13144) = 27000000;
      *(a1 + 13140) = 0x19BFCC0 / v62;
      *(a1 + 13148) = 0;
    }

    else
    {
      v61 = 0;
    }

    *(a1 + 13136) = v61;
    v63 = CVBufferCopyAttachment(a2, *MEMORY[0x29EDB9568], 0);
    v64 = MEMORY[0x29EDB9588];
    if (!v63)
    {
LABEL_86:
      v78 = CVBufferCopyAttachment(a2, *MEMORY[0x29EDB9560], 0);
      if (!v78)
      {
LABEL_108:
        if ((*(a1 + 13128) || *(a1 + 13132)) && (*(a1 + 1104) & 0x10) != 0)
        {
          *(a1 + 13096) = 1;
          *(a1 + 13124) = 1;
          if (AVE_Log_CheckLevel(0x1Eu, 6))
          {
            v92 = AVE_Log_CheckConsole(0x1Eu);
            v93 = AVE_GetCurrTime();
            v94 = AVE_Log_GetLevelStr(6);
            if (v92)
            {
              printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE\n", v93, 30, v94);
              v95 = AVE_GetCurrTime();
              v112 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v95, 30, v112);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v93, 30, v94);
            }
          }
        }

        if (AVE_Log_CheckLevel(0x1Eu, 6))
        {
          v96 = AVE_Log_CheckConsole(0x1Eu);
          v97 = AVE_GetCurrTime();
          v98 = AVE_Log_GetLevelStr(6);
          v99 = *(a1 + 13128);
          if (v96)
          {
            printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v97, 30, v98, *(a1 + 13124), *(a1 + 13128), *(a1 + 13132));
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
            v100 = *(a1 + 13124);
            v117 = *(a1 + 13128);
            v119 = *(a1 + 13132);
          }

          else
          {
            v118 = *(a1 + 13128);
            v120 = *(a1 + 13132);
            v116 = *(a1 + 13124);
          }

          syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d");
        }

        return;
      }

      v79 = v78;
      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v80 = AVE_Log_CheckConsole(0x1Eu);
        v81 = AVE_GetCurrTime();
        v82 = AVE_Log_GetLevelStr(6);
        if (v80)
        {
          printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!\n", v81, 30, v82);
          v83 = AVE_GetCurrTime();
          v111 = AVE_Log_GetLevelStr(6);
          syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v83, 30, v111);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v81, 30, v82);
        }
      }

      if (!CFEqual(v79, *v64))
      {
        if (CFEqual(v79, *MEMORY[0x29EDB9580]))
        {
          v84 = 1;
          goto LABEL_103;
        }

        if (CFEqual(v79, *MEMORY[0x29EDB9598]))
        {
          v84 = 2;
          goto LABEL_103;
        }

        if (CFEqual(v79, *MEMORY[0x29EDB9590]))
        {
          v84 = 3;
          goto LABEL_103;
        }

        if (CFEqual(v79, *MEMORY[0x29EDB9578]))
        {
          v84 = 4;
          goto LABEL_103;
        }

        if (CFEqual(v79, *MEMORY[0x29EDB9570]))
        {
          v84 = 5;
          goto LABEL_103;
        }

        if (AVE_Log_CheckLevel(0x1Eu, 5))
        {
          v105 = AVE_Log_CheckConsole(0x1Eu);
          v106 = AVE_GetCurrTime();
          v107 = AVE_Log_GetLevelStr(5);
          if (v105)
          {
            printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v106, 30, v107);
            v108 = AVE_GetCurrTime();
            v114 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v108, 30, v114);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v106, 30, v107);
          }
        }
      }

      v84 = 0;
LABEL_103:
      *(a1 + 13132) = v84;
      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v85 = AVE_Log_CheckConsole(0x1Eu);
        v86 = AVE_GetCurrTime();
        v87 = AVE_Log_GetLevelStr(6);
        v88 = *(a1 + 13128);
        v89 = *(a1 + 13132);
        if (v85)
        {
          printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v86, 30, v87, *(a1 + 13128), v89);
          v90 = AVE_GetCurrTime();
          v91 = AVE_Log_GetLevelStr(6);
          syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v90, 30, v91, *(a1 + 13128), *(a1 + 13132));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v86, 30, v87, *(a1 + 13128), v89);
        }
      }

      CFRelease(v79);
      goto LABEL_108;
    }

    v65 = v63;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v66 = AVE_Log_CheckConsole(0x1Eu);
      v67 = AVE_GetCurrTime();
      v68 = AVE_Log_GetLevelStr(6);
      if (v66)
      {
        printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!\n", v67, 30, v68);
        v69 = AVE_GetCurrTime();
        v110 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v69, 30, v110);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v67, 30, v68);
      }
    }

    if (!CFEqual(v65, *v64))
    {
      if (CFEqual(v65, *MEMORY[0x29EDB9580]))
      {
        v70 = 1;
        goto LABEL_81;
      }

      if (CFEqual(v65, *MEMORY[0x29EDB9598]))
      {
        v70 = 2;
        goto LABEL_81;
      }

      if (CFEqual(v65, *MEMORY[0x29EDB9590]))
      {
        v70 = 3;
        goto LABEL_81;
      }

      if (CFEqual(v65, *MEMORY[0x29EDB9578]))
      {
        v70 = 4;
        goto LABEL_81;
      }

      if (CFEqual(v65, *MEMORY[0x29EDB9570]))
      {
        v70 = 5;
        goto LABEL_81;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 5))
      {
        v101 = AVE_Log_CheckConsole(0x1Eu);
        v102 = AVE_GetCurrTime();
        v103 = AVE_Log_GetLevelStr(5);
        if (v101)
        {
          printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v102, 30, v103);
          v104 = AVE_GetCurrTime();
          v113 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v104, 30, v113);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v102, 30, v103);
        }
      }
    }

    v70 = 0;
LABEL_81:
    *(a1 + 13128) = v70;
    *(a1 + 13132) = v70;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v71 = AVE_Log_CheckConsole(0x1Eu);
      v72 = AVE_GetCurrTime();
      v73 = AVE_Log_GetLevelStr(6);
      v74 = *(a1 + 13128);
      v75 = *(a1 + 13132);
      if (v71)
      {
        printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v72, 30, v73, *(a1 + 13128), v75);
        v76 = AVE_GetCurrTime();
        v77 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v76, 30, v77, *(a1 + 13128), *(a1 + 13132));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v72, 30, v73, *(a1 + 13128), v75);
      }
    }

    CFRelease(v65);
    goto LABEL_86;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v14 = AVE_Log_CheckConsole(3u);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.\n", v15, 3, v16, "AVE_PrepareSequenceHeader", 1325, "imageBuffer != __null");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.");
  }
}

uint64_t AVE_ManageSessionSettings(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings\n", CurrTime, 12, LevelStr);
      v5 = AVE_GetCurrTime();
      v227 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings", v5, 12, v227);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings", CurrTime, 12, LevelStr);
    }
  }

  if (*(a1 + 1132) == 4 && !*(a1 + 10892))
  {
    *(a1 + 10892) = 10000;
  }

  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v6 = AVE_Log_CheckConsole(0xCu);
    v7 = AVE_GetCurrTime();
    v8 = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters\n", v7, 12, v8);
      v9 = AVE_GetCurrTime();
      v228 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v9, 12, v228);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v7, 12, v8);
    }
  }

  v10 = (a1 + 16448);
  v11 = AVE_DW_Get();
  v12 = v11[20];
  if (v12 <= -2)
  {
    v12 = *(a1 + 692);
  }

  else
  {
    *(a1 + 692) = v12;
  }

  if (v12 == 1 && (!*(a1 + 1256) || *v10 == 2))
  {
    v13 = *(a1 + 1132);
    if (v13 != 3 && v13 != 20)
    {
      AVE_EnableH264FWRCSettings(a1);
    }
  }

  v14 = v11[19];
  if (v14 >= 1)
  {
    *(a1 + 11968) = v14;
  }

  v15 = (*(a1 + 1336) | v11[237] & 0x10) & (~*(v11 + 952) | 0xFFFFFFEF);
  *(a1 + 1336) = v15;
  if ((*(v11 + 769) & 0x80) != 0)
  {
    v15 |= 0x8000u;
    *(a1 + 1336) = v15;
  }

  if ((*(v11 + 777) & 0x80) != 0)
  {
    *(a1 + 1336) = v15 & 0xFFFF7FFF;
  }

  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v16 = AVE_Log_CheckConsole(0xCu);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v17, 12, v18, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
      v19 = AVE_GetCurrTime();
      v229 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v19, 12, v229, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v17, 12, v18, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }
  }

  v20 = AVE_DW_Get();
  Profile = AVC_FindProfile(v20[186]);
  if (Profile)
  {
    *v10 = Profile;
  }

  Level = AVC_FindLevel(v20[187]);
  if (Level)
  {
    *(a1 + 16452) = Level;
  }

  v23 = (a1 + 10168);
  if (*v10)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v24 = AVE_Log_CheckConsole(0x1Eu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(6);
      v27 = *v10;
      v28 = *(a1 + 12008);
      if (v24)
      {
        printf("%lld %d AVE %s: profile = %d -> change the default %d\n", v25, 30, v26, *v10, v28);
        v29 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v29, 30, v30, *v10, *(a1 + 12008));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v25, 30, v26, *v10, v28);
      }
    }

    *(a1 + 12008) = *v10;
  }

  v31 = *(a1 + 1308) > 1 || *(a1 + 1256) || *(a1 + 1324) > 1;
  *(a1 + 10173) = v31;
  v32 = *(a1 + 1132);
  if ((v32 == 4 || v32 == 2) && !*(a1 + 10892))
  {
    *(a1 + 10892) = 10000;
  }

  v33 = v20[395];
  if (v33 > 36)
  {
    switch(v33)
    {
      case 37:
        *(a1 + 10892) = 37;
        *(a1 + 1104) |= 0x80uLL;
        goto LABEL_74;
      case 38:
        *(a1 + 10892) = 38;
        goto LABEL_90;
      case 10000:
        *(a1 + 10892) = 10000;
        goto LABEL_57;
    }
  }

  else
  {
    switch(v33)
    {
      case 0:
        *(a1 + 10892) = 0;
        goto LABEL_64;
      case 1:
        *(a1 + 10892) = 1;
        goto LABEL_84;
      case 20:
        *(a1 + 10892) = 20;
        *(a1 + 1104) |= 0x80uLL;
        goto LABEL_91;
    }
  }

  v49 = *(a1 + 10892);
  if (v49 <= 36)
  {
    if (v49 != 1)
    {
      if (v49 != 20)
      {
        goto LABEL_64;
      }

      goto LABEL_116;
    }

LABEL_84:
    *(a1 + 1336) = 0x10000;
    *(a1 + 1132) = 20;
    *(a1 + 10784) = 1;
    *(a1 + 10764) = 0;
    if (*(a1 + 1256) >= 1 && AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v50 = AVE_Log_CheckConsole(0x1Eu);
      v51 = AVE_GetCurrTime();
      v52 = AVE_Log_GetLevelStr(6);
      v53 = *(a1 + 1256);
      if (v50)
      {
        printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v51, 30, v52, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 3876, *(a1 + 1256), *(a1 + 17892));
        v51 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
        v54 = *(a1 + 1256);
        v239 = *(a1 + 17892);
      }

      else
      {
        v235 = *(a1 + 1256);
      }

      syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v51);
    }

    if (*(a1 + 1296))
    {
      *(a1 + 13756) = 1;
      *(a1 + 13760) = 0;
    }

    if (*(a1 + 16456) == 2)
    {
      goto LABEL_154;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v84 = AVE_Log_CheckConsole(0x1Eu);
      v85 = AVE_GetCurrTime();
      v86 = AVE_Log_GetLevelStr(6);
      v87 = *(a1 + 16456);
      v88 = *(a1 + 13732);
      if (v84)
      {
        printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v85, 30, v86, *(a1 + 16456), v88);
        v89 = AVE_GetCurrTime();
        v90 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v89, 30, v90, *(a1 + 16456), *(a1 + 13732));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v85, 30, v86, *(a1 + 16456), v88);
      }
    }

    if (*(a1 + 16456))
    {
LABEL_154:
      *(a1 + 13732) = 1;
    }

    else
    {
      *(a1 + 13732) = 0;
    }

    if ((*(a1 + 1104) & 0x80) != 0)
    {
      v91 = 1;
      *(a1 + 13096) = 1;
      *(a1 + 13156) = xmmword_2954EAB00;
      *(a1 + 13172) = 15;
      *(a1 + 13176) = 0x1000000000;
    }

    else
    {
      v91 = 0;
    }

    v83 = 0;
    *(a1 + 13152) = v91;
    *(a1 + 1096) &= 0xFFFFFC00FFFFFCBFLL;
    goto LABEL_184;
  }

  if (v49 != 10000)
  {
    if (v49 != 38)
    {
      if (v49 != 37)
      {
LABEL_64:
        v37 = *(a1 + 76);
        if (v37 <= 0x1D && ((1 << v37) & 0x2679CC00) != 0)
        {
          v38 = *(a1 + 10248);
          *(a1 + 10172) = v38 ^ 1;
          if ((v38 & 1) == 0)
          {
            *(a1 + 688) |= 0x100u;
          }
        }

        if (!AVE_NewDefaultsBasedOnProfileUsageDefault(a1))
        {
          goto LABEL_183;
        }

        if (AVE_Log_CheckLevel(3u, 4))
        {
          v39 = AVE_Log_CheckConsole(3u);
          v40 = AVE_GetCurrTime();
          v41 = AVE_Log_GetLevelStr(4);
          if (v39)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed\n", v40, 3, v41, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4197, "err == noErr");
            v40 = AVE_GetCurrTime();
            v41 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed", v40, 3, v41, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4197, "err == noErr");
        }

LABEL_144:
        v83 = -12902;
        goto LABEL_184;
      }

LABEL_116:
      *(a1 + 1104) |= 0x80uLL;
      if (v49 != 20)
      {
LABEL_74:
        if (*(a1 + 16456) == 2)
        {
          goto LABEL_162;
        }

        if (AVE_Log_CheckLevel(0x1Eu, 6))
        {
          v42 = AVE_Log_CheckConsole(0x1Eu);
          v43 = AVE_GetCurrTime();
          v44 = AVE_Log_GetLevelStr(6);
          v45 = *(a1 + 16456);
          v46 = *(a1 + 13732);
          if (v42)
          {
            printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v43, 30, v44, *(a1 + 16456), v46);
            v47 = AVE_GetCurrTime();
            v48 = AVE_Log_GetLevelStr(6);
            syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v47, 30, v48, *(a1 + 16456), *(a1 + 13732));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v43, 30, v44, *(a1 + 16456), v46);
          }
        }

        if (*(a1 + 16456))
        {
LABEL_162:
          *(a1 + 13732) = 1;
        }

        else
        {
          *(a1 + 13732) = 0;
        }

        v92 = *(a1 + 12008);
        if (v92 == 2)
        {
          *(a1 + 13732) = 0;
          v93 = 1;
        }

        else
        {
          v93 = v92 == 4;
        }

        v94 = !v93;
        *(a1 + 13807) = v94;
        *(a1 + 13772) = xmmword_2954EAB10;
        *(a1 + 13812) = xmmword_2954EAB10;
        *&v95 = 0xC0000000CLL;
        *(&v95 + 1) = 0xC0000000CLL;
        *(a1 + 13788) = v95;
        *(a1 + 13828) = v95;
        *(a1 + 10176) = 2;
        if ((*(a1 + 1104) & 0x80) != 0)
        {
          *(a1 + 13096) = 1;
          *(a1 + 13152) = 1;
          *(a1 + 13156) = xmmword_2954EAB20;
          *(a1 + 13172) = 15;
          *(a1 + 13176) = 0x400000000;
        }

        *(a1 + 1112) = 60;
        *(a1 + 1264) = 60;
        *(a1 + 1272) = 0xBFF0000000000000;
        *(a1 + 1280) = 0xBFF0000000000000;
        *(a1 + 1088) |= 2uLL;
        *(a1 + 1336) &= ~0x40u;
        *(a1 + 10764) = 0;
        *(a1 + 1296) |= 2u;
        *(a1 + 10170) = 1;
        if (*(a1 + 16776) > 0)
        {
          goto LABEL_183;
        }

        if (*(a1 + 16460) != 1)
        {
          goto LABEL_183;
        }

        v96 = *(a1 + 1160);
        if (v96 < 1)
        {
          goto LABEL_183;
        }

        v97 = 0;
        v98 = (a1 + 1176);
        v65 = 0x7FFFFFFF;
        do
        {
          if (v65 > (*(v98 - 1) * 8.0 / *v98))
          {
            if (AVE_Log_CheckLevel(0x1Eu, 6))
            {
              v99 = AVE_Log_CheckConsole(0x1Eu);
              v100 = AVE_GetCurrTime();
              v101 = AVE_Log_GetLevelStr(6);
              v102 = *(v98 - 1);
              v103 = *v98;
              if (v99)
              {
                printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v100, 30, v101, v97, *(v98 - 1), v103);
                v100 = AVE_GetCurrTime();
                v101 = AVE_Log_GetLevelStr(6);
                v102 = *(v98 - 1);
                v103 = *v98;
              }

              syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v100, 30, v101, v97, v102, v103);
            }

            v65 = (*(v98 - 1) * 8.0 / *v98);
            v96 = *(a1 + 1160);
          }

          ++v97;
          v98 += 2;
        }

        while (v97 < v96);
        goto LABEL_182;
      }

LABEL_91:
      if (*(a1 + 16456) == 2)
      {
        goto LABEL_120;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v55 = AVE_Log_CheckConsole(0x1Eu);
        v56 = AVE_GetCurrTime();
        v57 = AVE_Log_GetLevelStr(6);
        v58 = *(a1 + 16456);
        v59 = *(a1 + 13732);
        if (v55)
        {
          printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v56, 30, v57, *(a1 + 16456), v59);
          v60 = AVE_GetCurrTime();
          v61 = AVE_Log_GetLevelStr(6);
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v60, 30, v61, *(a1 + 16456), *(a1 + 13732));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v56, 30, v57, *(a1 + 16456), v59);
        }
      }

      if (*(a1 + 16456))
      {
LABEL_120:
        *(a1 + 13732) = 1;
      }

      else
      {
        *(a1 + 13732) = 0;
      }

      v71 = *(a1 + 12008);
      if (v71 == 2)
      {
        *(a1 + 13732) = 0;
        v72 = 1;
      }

      else
      {
        v72 = v71 == 4;
      }

      v73 = !v72;
      *(a1 + 13807) = v73;
      *(a1 + 13772) = xmmword_2954EAB10;
      *(a1 + 13812) = xmmword_2954EAB10;
      *&v74 = 0xC0000000CLL;
      *(&v74 + 1) = 0xC0000000CLL;
      *(a1 + 13788) = v74;
      *(a1 + 13828) = v74;
      *(a1 + 10176) = 2;
      if ((*(a1 + 1104) & 0x80) != 0)
      {
        *(a1 + 13096) = 1;
        *(a1 + 13152) = 1;
        *(a1 + 13156) = xmmword_2954EAB20;
        *(a1 + 13172) = 15;
        *(a1 + 13176) = 0x400000000;
      }

      *(a1 + 1112) = 60;
      *(a1 + 1264) = 0x7FFFFFFFLL;
      *(a1 + 1272) = 0xBFF0000000000000;
      *(a1 + 1280) = 0xBFF0000000000000;
      *(a1 + 1088) |= 2uLL;
      *(a1 + 1336) &= ~0x40u;
      *(a1 + 10764) = 0;
      *(a1 + 1296) |= 2u;
      if (*(a1 + 16776) > 0)
      {
        goto LABEL_183;
      }

      if (*(a1 + 16460) != 1)
      {
        goto LABEL_183;
      }

      v75 = *(a1 + 1160);
      if (v75 < 1)
      {
        goto LABEL_183;
      }

      v76 = 0;
      v77 = (a1 + 1176);
      v65 = 0x7FFFFFFF;
      do
      {
        if (v65 > (*(v77 - 1) * 8.0 / *v77))
        {
          if (AVE_Log_CheckLevel(0x1Eu, 6))
          {
            v78 = AVE_Log_CheckConsole(0x1Eu);
            v79 = AVE_GetCurrTime();
            v80 = AVE_Log_GetLevelStr(6);
            v81 = *(v77 - 1);
            v82 = *v77;
            if (v78)
            {
              printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v79, 30, v80, v76, *(v77 - 1), v82);
              v79 = AVE_GetCurrTime();
              v80 = AVE_Log_GetLevelStr(6);
              v81 = *(v77 - 1);
              v82 = *v77;
            }

            syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v79, 30, v80, v76, v81, v82);
          }

          v65 = (*(v77 - 1) * 8.0 / *v77);
          v75 = *(a1 + 1160);
        }

        ++v76;
        v77 += 2;
      }

      while (v76 < v75);
      goto LABEL_182;
    }

LABEL_90:
    *(a1 + 1352) |= 0x1Eu;
    *(a1 + 1336) &= ~0x40u;
    goto LABEL_91;
  }

LABEL_57:
  if (AVE_NewDefaultsBasedOnProfileUsageDefault(a1))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v34 = AVE_Log_CheckConsole(3u);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed\n", v35, 3, v36, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4122, "err == noErr");
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed", v35, 3, v36, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 4122, "err == noErr");
    }

    goto LABEL_144;
  }

  *(a1 + 1296) &= ~2u;
  *(a1 + 1088) &= ~2uLL;
  *(a1 + 1336) &= ~0x40u;
  if (*(a1 + 1348) <= -13)
  {
    *(a1 + 1348) = 51;
  }

  if (*(a1 + 1236) <= -13)
  {
    *(a1 + 1236) = 51;
  }

  if (*(a1 + 16900) <= 0 && *(a1 + 16912) <= 0.0)
  {
    *(a1 + 1264) = 120;
    *(a1 + 1272) = 0xBFF0000000000000;
    *(a1 + 1280) = 0xBFF0000000000000;
  }

  if (*(a1 + 16776) > 0)
  {
    goto LABEL_183;
  }

  if (*(a1 + 16460) != 1)
  {
    goto LABEL_183;
  }

  v62 = *(a1 + 1160);
  if (v62 < 1)
  {
    goto LABEL_183;
  }

  v63 = 0;
  v64 = (a1 + 1176);
  v65 = 0x7FFFFFFF;
  do
  {
    if (v65 > (*(v64 - 1) * 8.0 / *v64))
    {
      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v66 = AVE_Log_CheckConsole(0x1Eu);
        v67 = AVE_GetCurrTime();
        v68 = AVE_Log_GetLevelStr(6);
        v69 = *(v64 - 1);
        v70 = *v64;
        if (v66)
        {
          printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v67, 30, v68, v63, *(v64 - 1), v70);
          v67 = AVE_GetCurrTime();
          v68 = AVE_Log_GetLevelStr(6);
          v69 = *(v64 - 1);
          v70 = *v64;
        }

        syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v67, 30, v68, v63, v69, v70);
      }

      v65 = (*(v64 - 1) * 8.0 / 1.5 / *v64);
      v62 = *(a1 + 1160);
    }

    ++v63;
    v64 += 2;
  }

  while (v63 < v62);
LABEL_182:
  if (v65 == 0x7FFFFFFF)
  {
LABEL_183:
    v83 = 0;
    goto LABEL_184;
  }

  v83 = 0;
  *(a1 + 1136) = v65;
LABEL_184:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v104 = AVE_Log_CheckConsole(0xCu);
    v105 = AVE_GetCurrTime();
    v106 = AVE_Log_GetLevelStr(7);
    if (v104)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v105, 12, v106, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v83);
      v107 = AVE_GetCurrTime();
      v230 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v107, 12, v230, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v83);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v105, 12, v106, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v83);
    }
  }

  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v108 = AVE_Log_CheckConsole(0xD1u);
    v109 = AVE_GetCurrTime();
    v110 = AVE_Log_GetLevelStr(6);
    if (v108)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v109, 209, v110, "AVE_PrepareH264Level", a1);
      v111 = AVE_GetCurrTime();
      v231 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v111, 209, v231, "AVE_PrepareH264Level", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v109, 209, v110, "AVE_PrepareH264Level", a1);
    }
  }

  v112 = *(a1 + 1132);
  if (v112 < 1)
  {
    v113 = 0;
  }

  else
  {
    v113 = 0;
    if (v112 != 3 && v112 != 8)
    {
      v113 = *(a1 + 1136);
    }
  }

  if (AVE_Log_CheckLevel(0xD1u, 7))
  {
    v114 = AVE_Log_CheckConsole(0xD1u);
    v115 = AVE_GetCurrTime();
    v116 = AVE_Log_GetLevelStr(7);
    v117 = *v10;
    if (v114)
    {
      printf("%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d\n", v115, 209, v116, "AVE_PrepareH264Level", 1823, *(a1 + 12008), *(a1 + 12036), *(a1 + 16448), *(a1 + 16452));
      v115 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v118 = *(a1 + 12008);
      v244 = *v10;
      v248 = *(a1 + 16452);
      v240 = *(a1 + 12036);
    }

    else
    {
      v245 = *v10;
    }

    syslog(3, "%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d", v115, 209);
  }

  if (AVE_Log_CheckLevel(0xD1u, 7))
  {
    v119 = AVE_Log_CheckConsole(0xD1u);
    v120 = AVE_GetCurrTime();
    v121 = AVE_Log_GetLevelStr(7);
    v122 = *(a1 + 1112);
    if (v119)
    {
      printf("%lld %d AVE %s: %s:%d starting with bitrate %d (RCMode %d) FrameRate %d USAGE %d\n", v120, 209, v121, "AVE_PrepareH264Level", 1827, *(a1 + 1136), *(a1 + 1132), *(a1 + 1112), *(a1 + 10892));
      v120 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v123 = *(a1 + 1136);
      v246 = *(a1 + 1112);
      v249 = *(a1 + 10892);
      v241 = *(a1 + 1132);
    }

    else
    {
      v247 = *(a1 + 1112);
    }

    syslog(3, "%lld %d AVE %s: %s:%d starting with bitrate %d (RCMode %d) FrameRate %d USAGE %d", v120, 209);
  }

  v124 = *(a1 + 1256);
  if (*(a1 + 1260) < 3 || v124 <= 2)
  {
    if (v124)
    {
      v125 = 2;
    }

    else if (*(a1 + 1476))
    {
      v125 = 2;
    }

    else
    {
      v125 = 1;
    }
  }

  else
  {
    v125 = 4;
  }

  v126 = AVC_FindLevel(*(a1 + 12008), *(a1 + 1440), *(a1 + 1444), *(a1 + 1112), v113, v125);
  if (v126)
  {
    v127 = v126;
    v128 = *(a1 + 12036);
    if (v128 <= v126)
    {
      v128 = v126;
    }

    *(a1 + 12036) = v128;
    v129 = *(a1 + 16452);
    if (v129)
    {
      if (v129 < v128)
      {
        if (AVE_Log_CheckLevel(0xD1u, 4))
        {
          v130 = AVE_Log_CheckConsole(0xD1u);
          v131 = AVE_GetCurrTime();
          v132 = AVE_Log_GetLevelStr(4);
          v133 = *(a1 + 16452);
          if (v130)
          {
            printf("%lld %d AVE %s: %s:%d H264Level %d incompatible with other settings (min should be %d)\n", v131, 209, v132, "AVE_PrepareH264Level", 1858, *(a1 + 16452), *(a1 + 12036));
            v131 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            v134 = *(a1 + 16452);
            v242 = *(a1 + 12036);
          }

          else
          {
            v236 = *(a1 + 16452);
          }

          syslog(3, "%lld %d AVE %s: %s:%d H264Level %d incompatible with other settings (min should be %d)", v131);
        }

        v144 = 4294966295;
        goto LABEL_241;
      }

      if (v129 > v128)
      {
        if (AVE_Log_CheckLevel(0xD1u, 6))
        {
          v139 = AVE_Log_CheckConsole(0xD1u);
          v140 = AVE_GetCurrTime();
          v141 = AVE_Log_GetLevelStr(6);
          v142 = *(a1 + 16452);
          if (v139)
          {
            printf("%lld %d AVE %s: %s:%d H264Level received (%d) is too high... consider lowering it with these settings (min should be %d)\n", v140, 209, v141, "AVE_PrepareH264Level", 1865, *(a1 + 16452), *(a1 + 12036));
            v140 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
            v143 = *(a1 + 16452);
            v243 = *(a1 + 12036);
          }

          else
          {
            v237 = *(a1 + 16452);
          }

          syslog(3, "%lld %d AVE %s: %s:%d H264Level received (%d) is too high... consider lowering it with these settings (min should be %d)", v140);
        }

        v144 = 0;
        *(a1 + 12036) = *(a1 + 16452);
        goto LABEL_241;
      }
    }

    v144 = 0;
LABEL_241:
    if (AVE_Log_CheckLevel(0xD1u, 7))
    {
      v145 = AVE_Log_CheckConsole(0xD1u);
      v146 = AVE_GetCurrTime();
      v147 = AVE_Log_GetLevelStr(7);
      v148 = *(a1 + 12036);
      if (v145)
      {
        printf("%lld %d AVE %s: %s:%d end with level %d (min %d)\n", v146, 209, v147, "AVE_PrepareH264Level", 1871, *(a1 + 12036), v127);
        v146 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v149 = *(a1 + 12036);
      }

      else
      {
        v238 = *(a1 + 12036);
      }

      syslog(3, "%lld %d AVE %s: %s:%d end with level %d (min %d)", v146);
    }

    goto LABEL_246;
  }

  if (AVE_Log_CheckLevel(0xD1u, 4))
  {
    v135 = AVE_Log_CheckConsole(0xD1u);
    v136 = AVE_GetCurrTime();
    v137 = AVE_Log_GetLevelStr(4);
    if (v135)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level\n", v136, 209, v137, "AVE_PrepareH264Level", 1847, "eLevel != AVC_Level_Invalid");
      v138 = AVE_GetCurrTime();
      v232 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v138, 209, v232, "AVE_PrepareH264Level", 1847, "eLevel != AVC_Level_Invalid");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v136, 209, v137, "AVE_PrepareH264Level", 1847, "eLevel != AVC_Level_Invalid");
    }
  }

  v144 = 4294966295;
LABEL_246:
  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v150 = AVE_Log_CheckConsole(0xD1u);
    v151 = AVE_GetCurrTime();
    v152 = AVE_Log_GetLevelStr(6);
    if (v150)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v151, 209, v152, "AVE_PrepareH264Level", a1, v144);
      v153 = AVE_GetCurrTime();
      v233 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v153, 209, v233, "AVE_PrepareH264Level", a1, v144);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v151, 209, v152, "AVE_PrepareH264Level", a1, v144);
    }
  }

  if (v144)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v154 = AVE_Log_CheckConsole(3u);
      v155 = AVE_GetCurrTime();
      v156 = AVE_Log_GetLevelStr(4);
      if (v154)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareH264Level failed\n", v155, 3, v156, "AVE_ManageSessionSettings", 5016, "err == 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareH264Level failed");
    }

    return v144;
  }

  v157 = AVE_DW_Get();
  v158 = v157;
  v159 = *(v157 + 224);
  if ((v159 & 0x80000000) == 0)
  {
    *(a1 + 1264) = v159;
    if (v159 == 1)
    {
      *(a1 + 1252) = 0;
    }
  }

  v160 = *(v157 + 225);
  if ((v160 & 0x80000000) == 0)
  {
    *(a1 + 1268) = v160;
  }

  v161 = v157[113];
  if (v161 >= 0.0)
  {
    *(a1 + 1272) = v161;
  }

  v162 = v157[114];
  if (v162 >= 0.0)
  {
    *(a1 + 1280) = v162;
  }

  v163 = *(a1 + 716);
  v164 = *(v157 + 7);
  v165 = *(a1 + 1456) | *(v157 + 6);
  v167 = *(v157 + 4);
  v166 = *(v157 + 5);
  v168 = (*(a1 + 1448) | v167) & ~v166;
  *(a1 + 1448) = v168;
  *(a1 + 1456) = v165 & ~v164;
  v169 = v168 | v167 & 0x20;
  v170 = v168 & 0xFFFFFFFFFFFFFFDFLL;
  if ((v166 & 0x20) == 0)
  {
    v170 = v169;
  }

  if (((v166 | v167) & 0x20) != 0)
  {
    *(a1 + 1448) = v170;
  }

  if ((v170 & 0x20) != 0)
  {
    if (*(v157 + 1) == 1)
    {
      v172 = AVE_MCTF_Validate(*(a1 + 68), *(a1 + 64), v163, *(a1 + 10772), *(a1 + 18080));
      v173 = *(a1 + 716);
      if (v172)
      {
        v171 = v173 & 0xFFFFFC3F;
      }

      else
      {
        v171 = v173 | 0x3C0;
      }
    }

    else
    {
      v171 = v163 | 0x3C0;
    }

    *(a1 + 716) = v171;
    v170 = *(a1 + 1448);
    if ((v170 & 0x1000000) != 0)
    {
      *(a1 + 11810) = 1;
    }

    v166 = *(v158 + 5);
    if ((v166 & 0x1000000) != 0)
    {
      *(a1 + 11810) = 0;
    }
  }

  else
  {
    v171 = v163;
  }

  if ((v166 & 0x20) != 0)
  {
    *(a1 + 716) = v171 & 0xFFFFFC3F;
  }

  v174 = *(v158 + 272);
  if ((v174 & 0x80000000) == 0)
  {
    *(a1 + 11812) = v174;
  }

  v175 = *(v158 + 273);
  if ((v175 & 0x80000000) == 0)
  {
    *(a1 + 1396) = v175;
  }

  if ((v170 & 0x40) != 0)
  {
    *(a1 + 13805) = 1;
    if ((v166 & 0x40) == 0)
    {
LABEL_287:
      if ((v170 & 0x80) == 0)
      {
        goto LABEL_288;
      }

      goto LABEL_295;
    }
  }

  else if ((v166 & 0x40) == 0)
  {
    goto LABEL_287;
  }

  *(a1 + 13805) = 0;
  if ((v170 & 0x80) == 0)
  {
LABEL_288:
    if ((v166 & 0x80) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_296;
  }

LABEL_295:
  *(a1 + 13807) = 1;
  *(a1 + 10176) = 2;
  if ((v166 & 0x80) == 0)
  {
LABEL_289:
    if ((v170 & 0x100) == 0)
    {
      goto LABEL_290;
    }

    goto LABEL_297;
  }

LABEL_296:
  *(a1 + 13807) = 0;
  *(a1 + 10176) = 0;
  if ((v170 & 0x100) == 0)
  {
LABEL_290:
    if ((v166 & 0x100) == 0)
    {
      goto LABEL_291;
    }

LABEL_298:
    *(a1 + 14164) = 0;
    if ((v170 & 0x200) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_299;
  }

LABEL_297:
  *(a1 + 14164) = 1;
  if ((v166 & 0x100) != 0)
  {
    goto LABEL_298;
  }

LABEL_291:
  if ((v170 & 0x200) == 0)
  {
    goto LABEL_301;
  }

LABEL_299:
  if (*(a1 + 10892) != 1)
  {
    *(a1 + 12060) = 1;
  }

LABEL_301:
  if ((v166 & 0x200) != 0 && *(a1 + 10892) != 1)
  {
    *(a1 + 12060) = 0;
  }

  if ((v170 & 0x20000) != 0)
  {
    *(a1 + 10205) = 1;
    if ((v166 & 0x20000) == 0)
    {
LABEL_306:
      if ((v170 & 0x40000) == 0)
      {
        goto LABEL_307;
      }

      goto LABEL_391;
    }
  }

  else if ((v166 & 0x20000) == 0)
  {
    goto LABEL_306;
  }

  *(a1 + 10205) = 0;
  if ((v170 & 0x40000) == 0)
  {
LABEL_307:
    if ((v166 & 0x40000) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_392;
  }

LABEL_391:
  *(a1 + 10206) = 1;
  if ((v166 & 0x40000) == 0)
  {
LABEL_308:
    if ((v170 & 0x80000) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_393;
  }

LABEL_392:
  *(a1 + 10206) = 0;
  if ((v170 & 0x80000) == 0)
  {
LABEL_309:
    if ((v166 & 0x80000) == 0)
    {
      goto LABEL_310;
    }

    goto LABEL_394;
  }

LABEL_393:
  *(a1 + 1336) |= 0x200u;
  if ((v166 & 0x80000) == 0)
  {
LABEL_310:
    if ((v170 & 0x100000) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_395;
  }

LABEL_394:
  *(a1 + 1336) &= ~0x200u;
  if ((v170 & 0x100000) == 0)
  {
LABEL_311:
    if ((v166 & 0x100000) == 0)
    {
      goto LABEL_313;
    }

    goto LABEL_312;
  }

LABEL_395:
  *(a1 + 10855) = 1;
  if ((v166 & 0x100000) != 0)
  {
LABEL_312:
    *(a1 + 10855) = 0;
  }

LABEL_313:
  v176 = *(v158 + 123);
  if (v176)
  {
    *(a1 + 1096) |= v176;
  }

  v177 = *(v158 + 124);
  if (v177)
  {
    *(a1 + 1096) &= ~v177;
  }

  v178 = *(v158 + 96);
  v179 = *(v158 + 97);
  *(a1 + 1120) = (*(a1 + 1120) | v178) & ~v179;
  if ((v178 & 0x40) != 0)
  {
    *(a1 + 1476) = 1;
    if ((v179 & 0x40) == 0)
    {
LABEL_319:
      if ((v178 & 0x80000) == 0)
      {
        goto LABEL_320;
      }

      goto LABEL_399;
    }
  }

  else if ((v179 & 0x40) == 0)
  {
    goto LABEL_319;
  }

  *(a1 + 1476) = 0;
  if ((v178 & 0x80000) == 0)
  {
LABEL_320:
    if ((v179 & 0x80000) == 0)
    {
      goto LABEL_321;
    }

    goto LABEL_400;
  }

LABEL_399:
  *(a1 + 10852) = 1;
  if ((v179 & 0x80000) == 0)
  {
LABEL_321:
    if ((v178 & 0x800000) == 0)
    {
      goto LABEL_322;
    }

LABEL_401:
    *(a1 + 1336) |= 0x4000000u;
    if ((v179 & 0x800000) == 0)
    {
      goto LABEL_324;
    }

    goto LABEL_323;
  }

LABEL_400:
  *(a1 + 10852) = 0;
  if ((v178 & 0x800000) != 0)
  {
    goto LABEL_401;
  }

LABEL_322:
  if ((v179 & 0x800000) != 0)
  {
LABEL_323:
    *(a1 + 1336) &= ~0x4000000u;
  }

LABEL_324:
  v180 = *(v158 + 242);
  if (v180)
  {
    *(a1 + 1352) |= v180;
  }

  v181 = *(v158 + 243);
  if (v181)
  {
    *(a1 + 1352) &= ~v181;
  }

  *(a1 + 1336) = ((*(a1 + 1336) | *(v158 + 237)) & ~*(v158 + 238) | *(v158 + 237) & 4) & (~*(v158 + 238) | 0xFFFFFFFB);
  *(a1 + 1240) = (*(a1 + 1240) | *(v158 + 218)) & ~*(v158 + 219);
  *(a1 + 1296) = (*(a1 + 1296) | *(v158 + 230)) & ~*(v158 + 231);
  v183 = *(v158 + 16);
  v182 = *(v158 + 17);
  *(a1 + 688) = (*(a1 + 688) | v183) & ~v182;
  if ((v183 & 0x400) != 0)
  {
    *(a1 + 10172) = 1;
  }

  if ((v182 & 0x400) != 0)
  {
    *(a1 + 10172) = 0;
  }

  if ((*(v158 + 412) & 8) != 0)
  {
    *(a1 + 1464) = 0x8000000;
  }

  v184 = *(v158 + 200);
  if (v184 >= 1)
  {
    *(a1 + 1136) = v184;
  }

  v185 = *(v158 + 18);
  if ((v185 - 1) <= 0x2F)
  {
    *(a1 + 11772) = v185;
  }

  v186 = *(v158 + 256);
  if (v186 >= 1)
  {
    *(a1 + 1368) = v186;
  }

  v187 = *(v158 + 255);
  if (AVE_DevCap_FindSearchRangeMode(*(a1 + 68), 1, 1, v187))
  {
    *v23 = v187;
  }

  v188 = *(v158 + 189);
  if ((v188 & 0x80000000) == 0)
  {
    *(a1 + 12064) = v188;
    *(a1 + 10845) = 1;
  }

  v189 = *(v158 + 260);
  if (v189 <= 4)
  {
    *(a1 + 10860) = v189;
  }

  v190 = *(v158 + 400);
  if (v190 >= 1)
  {
    *(a1 + 11792) = v190;
  }

  v191 = *(v158 + 240);
  if (v191 != -13)
  {
    *(a1 + 1344) = v191;
  }

  v192 = *(v158 + 241);
  if (v192 != -13)
  {
    *(a1 + 1348) = v192;
  }

  v193 = *(v158 + 196);
  if (v193 != -13)
  {
    *(a1 + 1232) = v193;
  }

  v194 = *(v158 + 197);
  if (v194 != -13)
  {
    *(a1 + 1236) = v194;
  }

  v195 = *(v158 + 201);
  if (v195 != -13)
  {
    *(a1 + 1144) = v195;
  }

  v196 = *(v158 + 202);
  if (v196 != -13)
  {
    *(a1 + 1148) = v196;
  }

  v197 = *(v158 + 203);
  if (v197 != -13)
  {
    *(a1 + 1152) = v197;
  }

  v198 = *(v158 + 401);
  if (v198 >= 1)
  {
    *(a1 + 11796) = v198;
  }

  if (*v158 >= 1)
  {
    *(a1 + 11460) = *v158;
  }

  v199 = *(v158 + 190);
  if (v199 >= 1)
  {
    *(a1 + 1112) = v199;
  }

  v200 = *(v158 + 199);
  if (v200 >= 1)
  {
    *(a1 + 1132) = v200;
  }

  v201 = *(v158 + 200);
  if (v201 >= 1)
  {
    *(a1 + 1136) = v201;
  }

  v202 = *(v158 + 198);
  if ((v202 & 0x80000000) == 0)
  {
    *(a1 + 1128) = v202;
    *(a1 + 1120) |= 0x80000000uLL;
  }

  v203 = v158[102];
  if (v203 >= 0.0)
  {
    *(a1 + 1200) = v203;
  }

  v204 = *(v158 + 397);
  if (v204 >= 1)
  {
    *(a1 + 720) = v204;
  }

  v205 = *(v158 + 258);
  if (v205 <= 2)
  {
    *(a1 + 14196) = v205;
  }

  v206 = *(v158 + 254);
  if (v206 >= 1)
  {
    *(a1 + 10252) = v206;
  }

  v207 = *(a1 + 716);
  if (v163 != v207)
  {
    v208 = *(a1 + 12052) + 8;
    if (v208 <= *(a1 + 12056) + 8)
    {
      v208 = *(a1 + 12056) + 8;
    }

    if (AVE_UpdatePixelBufferDict(*(a1 + 68), *(a1 + 64), v207, 1, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v208, 0, 0x414C4C20u, *(a1 + 16)) && AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v209 = AVE_Log_CheckConsole(0x1Eu);
      v210 = AVE_GetCurrTime();
      v211 = AVE_Log_GetLevelStr(4);
      if (v209)
      {
        printf("%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.\n", v210, 30, v211, "AVE_AVC_ApplyDW", 4719, "ret == 0");
        v212 = AVE_GetCurrTime();
        v234 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v212, 30, v234, "AVE_AVC_ApplyDW", 4719, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v210, 30, v211, "AVE_AVC_ApplyDW", 4719, "ret == 0");
      }
    }
  }

  v213 = *(a1 + 12036);
  if (v213 <= 2 && *(a1 + 10892) != 1)
  {
    if (*(a1 + 76) <= 29)
    {
      v214 = 1;
    }

    else
    {
      v214 = 2;
    }

    *v23 = v214;
  }

  *(a1 + 1468) = AVC_FindMaxMvsPer2Mb(v213);
  if (*(a1 + 12008) == 2)
  {
    MaxSubMbRectSize = AVC_FindMaxSubMbRectSize(*(a1 + 12036));
  }

  else
  {
    MaxSubMbRectSize = 0;
  }

  *(a1 + 1472) = MaxSubMbRectSize;
  if (AVE_Log_CheckLevel(0x10u, 7))
  {
    v216 = AVE_Log_CheckConsole(0x10u);
    v217 = AVE_GetCurrTime();
    v218 = AVE_Log_GetLevelStr(7);
    v219 = *(a1 + 1468);
    v220 = *(a1 + 1472);
    if (v216)
    {
      printf("%lld %d AVE %s: FIG: MaxMvsPer2Mb = %d MaxSubMbRectSize = %d\n", v217, 16, v218, *(a1 + 1468), v220);
      v221 = AVE_GetCurrTime();
      v222 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: MaxMvsPer2Mb = %d MaxSubMbRectSize = %d", v221, 16, v222, *(a1 + 1468), *(a1 + 1472));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: MaxMvsPer2Mb = %d MaxSubMbRectSize = %d", v217, 16, v218, *(a1 + 1468), v220);
    }
  }

  v144 = AVE_ValidateEncoderParameters(a1);
  if (v144 && AVE_Log_CheckLevel(3u, 4))
  {
    v223 = AVE_Log_CheckConsole(3u);
    v224 = AVE_GetCurrTime();
    v225 = AVE_Log_GetLevelStr(4);
    if (v223)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v224, 3, v225, "AVE_ManageSessionSettings", 5031, "err == 0");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
  }

  return v144;
}

uint64_t AVE_H264MultipassDataFetch(uint64_t a1, void *a2)
{
  v3 = a1 + 0x4000;
  if (!*(a1 + 16468))
  {
    v12 = a2[2];
    *(a1 + 16516) = *a2;
    v13 = (a1 + 16516);
    *(a1 + 16524) = a2[1];
    *(a1 + 16532) = v12;
    if (AVE_Log_CheckLevel(0xD8u, 6))
    {
      v14 = AVE_Log_CheckConsole(0xD8u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v17 = *(a2 + 3);
      if (v14)
      {
        printf("%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld\n", CurrTime, 216, LevelStr, *a2, *(a2 + 2), *(a2 + 3), a2[2]);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
        v18 = *a2;
        v49 = *(a2 + 3);
        v52 = a2[2];
        v47 = *(a2 + 2);
      }

      else
      {
        v50 = *(a2 + 3);
      }

      syslog(3, "%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", CurrTime);
    }

    v27 = *(a1 + 16496);
    v59 = *v13;
    v64 = *(v3 + 148);
    v28 = *(v3 + 124);
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v29 = AVE_Log_CheckConsole(3u);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      v32 = *a2;
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d\n", v30, 3, v31, "AVE_H264MultipassDataFetch", 4877, "err == noErr", *(v3 + 84), *a2, *(a2 + 2));
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        v54 = *a2;
        v55 = *(a2 + 2);
        v51 = "err == noErr";
        v53 = *(v3 + 84);
        v48 = 4877;
      }

      else
      {
        v54 = *a2;
        v55 = *(a2 + 2);
        v53 = *(v3 + 84);
        v48 = 4877;
        v51 = "err == noErr";
      }

      v46 = v31;
      v33 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d";
    }

    else
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v34 = AVE_Log_CheckConsole(3u);
      v30 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
      v36 = *a2;
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d\n", v30, 3, v35, "AVE_H264MultipassDataFetch", 4878, "data != __null", *(v3 + 84), *a2, *(a2 + 2));
        v30 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        v54 = *a2;
        v55 = *(a2 + 2);
        v51 = "data != __null";
        v53 = *(v3 + 84);
        v48 = 4878;
      }

      else
      {
        v54 = *a2;
        v55 = *(a2 + 2);
        v53 = *(v3 + 84);
        v48 = 4878;
        v51 = "data != __null";
      }

      v46 = v35;
      v33 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d";
    }

    syslog(3, v33, v30, 3, v46, "AVE_H264MultipassDataFetch", v48, v51, v53, v54, v55);
    return 4294954394;
  }

  v4 = *(a1 + 16496);
  v5 = (a1 + 16516);
  v56 = *(a1 + 16516);
  v61 = *(a1 + 16532);
  v6 = *MEMORY[0x29EDBCF78];
  if (VTMultiPassStorageGetTimeStamp())
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v7 = AVE_Log_CheckConsole(3u);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (!v7)
      {
LABEL_21:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.");
        return 4294954394;
      }

      v10 = 4932;
LABEL_6:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.\n", v8, 3, v9, "AVE_H264MultipassDataFetch", v10, "err == noErr");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      goto LABEL_21;
    }

    return 4294954394;
  }

  v19 = *(a1 + 16496);
  if ((*(v3 + 144) & 0x1D) == 1)
  {
    v57 = *v5;
    v62 = *(a1 + 16532);
    v20 = *(v3 + 124);
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v21 = AVE_Log_CheckConsole(3u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        v24 = 4937;
LABEL_16:
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.\n", v22, 3, v23, "AVE_H264MultipassDataFetch", v24, "err == noErr");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        goto LABEL_41;
      }

      goto LABEL_41;
    }

    if (!AVE_Log_CheckLevel(3u, 4))
    {
      return 4294954394;
    }

    v40 = AVE_Log_CheckConsole(3u);
    v41 = AVE_GetCurrTime();
    v42 = AVE_Log_GetLevelStr(4);
    if (v40)
    {
      v43 = 4938;
LABEL_46:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.\n", v41, 3, v42, "AVE_H264MultipassDataFetch", v43, "d != __null");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  v58 = *v5;
  v63 = *(a1 + 16532);
  v25 = *MEMORY[0x29EDBCF80];
  if (!VTMultiPassStorageGetTimeStamp())
  {
    if ((*(v3 + 144) & 0x1D) != 1)
    {
      return 0;
    }

    v37 = *(a1 + 16496);
    v60 = *v5;
    v65 = *(a1 + 16532);
    v38 = *(v3 + 124);
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v39 = AVE_Log_CheckConsole(3u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v39)
      {
        v24 = 4962;
        goto LABEL_16;
      }

LABEL_41:
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.");
      return 4294954394;
    }

    if (!AVE_Log_CheckLevel(3u, 4))
    {
      return 4294954394;
    }

    v45 = AVE_Log_CheckConsole(3u);
    v41 = AVE_GetCurrTime();
    v42 = AVE_Log_GetLevelStr(4);
    if (v45)
    {
      v43 = 4963;
      goto LABEL_46;
    }

LABEL_50:
    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.");
    return 4294954394;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v26 = AVE_Log_CheckConsole(3u);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(4);
    if (!v26)
    {
      goto LABEL_21;
    }

    v10 = 4957;
    goto LABEL_6;
  }

  return 4294954394;
}

uint64_t AVE_Session_AVC_GetPropertyDict(uint64_t a1, void *a2)
{
  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_GetPropertyDict", a1, a2);
      v7 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v25, "AVE_Session_AVC_GetPropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_GetPropertyDict", a1, a2);
    }
  }

  if (a1 && a2)
  {
    *a2 = 0;
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = (a1 + 8 * v8 + 80);
    }

    else
    {
      v9 = (a1 + 88);
    }

    v10 = *v9;
    if (*v9)
    {
      v11 = CFGetRetainCount(*v9);
      if (v11 != 1 && AVE_Log_CheckLevel(0xCu, 5))
      {
        v12 = AVE_Log_CheckConsole(0xCu);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(5);
        v15 = *(a1 + 56);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d property dictionary ref count %p %lld %d\n", v13, 12, v14, "AVE_Session_AVC_GetPropertyDict", 5518, a1, *(a1 + 56), v11);
          v13 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(5);
          v16 = *(a1 + 56);
        }

        else
        {
          v26 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d property dictionary ref count %p %lld %d", v13, 12);
      }

      CFRetain(v10);
      v20 = 0;
    }

    else
    {
      v20 = 4294966288;
    }

    *a2 = v10;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v17 = AVE_Log_CheckConsole(0xCu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v18, 12, v19, "AVE_Session_AVC_GetPropertyDict", 5498, "pINS != __null && ppDict != __null", a1, a2);
        v18 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v18, 12);
    }

    v20 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v21 = AVE_Log_CheckConsole(0xCu);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(8);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v22, 12, v23, "AVE_Session_AVC_GetPropertyDict", a1, a2, v20);
      v22 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v22);
  }

  return v20;
}

uint64_t AVE_Session_AVC_GetProperty(const void *a1, const void *a2, __CFString *a3, const void *a4)
{
  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v8 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_GetProperty", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", CurrTime, 12);
  }

  if (a1 && a3 && a4)
  {
    Property = AVE_Prop_AVC_GetProperty(a1, a2, a3, a4);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v12 = AVE_Log_CheckConsole(0xCu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v13, 12, v14, "AVE_Session_AVC_GetProperty", 5545, "pINS != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v15 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 12, v21, "AVE_Session_AVC_GetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 12, v14, "AVE_Session_AVC_GetProperty");
      }
    }

    Property = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v16 = AVE_Log_CheckConsole(0xCu);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(8);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v17, 12, v18, "AVE_Session_AVC_GetProperty", a1, a2, a3, a4, Property);
      v19 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v19, 12, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v17, 12, v18);
    }
  }

  return Property;
}

uint64_t AVE_Session_AVC_Prepare()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v34 = *MEMORY[0x29EDCA608];
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v1 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v1)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_Prepare", v0);
      v4 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v4, 12, v27, "AVE_Session_AVC_Prepare", v0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_Prepare", v0);
    }
  }

  if (v0)
  {
    if (*(v0 + 16464) != 30566)
    {
      goto LABEL_20;
    }

    bzero(v31, 0x1058uLL);
    v5 = AVE_ManageSessionSettings(v0);
    if (v5)
    {
      v6 = v5;
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v7 = AVE_Log_CheckConsole(0xCu);
        v8 = AVE_GetCurrTime();
        v9 = AVE_Log_GetLevelStr(4);
        if (v7)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to manage settings %p %lld\n", v8, 12, v9, "AVE_Session_AVC_Prepare", 5577, "err == 0", v0, *(v0 + 56));
          v8 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          v10 = *(v0 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to manage settings %p %lld", v8, 12);
      }

      goto LABEL_26;
    }

    *(v0 + 10760) = 1;
    v14 = AVE_GetCurrTime();
    v29 = *(v0 + 12000);
    v30 = *(v0 + 18064);
    v15 = *(v0 + 16480);
    v31[94] = v0 + 12008;
    v31[95] = v0 + 13724;
    v31[96] = v0 + 14108;
    memcpy(v32, (v0 + 16592), sizeof(v32));
    v33 = v14;
    v16 = *(v0 + 120);
    if (!AVE_USL_Drv_Prepare())
    {
LABEL_20:
      v6 = 0;
      *(v0 + 16464) = 30567;
      goto LABEL_26;
    }

    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v17 = AVE_Log_CheckConsole(0xCu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld\n", v18, 12, v19, "AVE_Session_AVC_Prepare", 5586, "err == noErr", v0, *(v0 + 56));
        v18 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        v20 = *(v0 + 56);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld", v18, 12);
    }

    v6 = 4294966296;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v11 = AVE_Log_CheckConsole(0xCu);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v12, 12, v13, "AVE_Session_AVC_Prepare", 5567, "pINS != __null", 0);
        v12 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v12);
    }

    v6 = 4294966295;
  }

LABEL_26:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v21 = AVE_Log_CheckConsole(0xCu);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v22, 12, v23, "AVE_Session_AVC_Prepare", v0, v6);
      v24 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v24, 12, v28, "AVE_Session_AVC_Prepare", v0, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v22, 12, v23, "AVE_Session_AVC_Prepare", v0, v6);
    }
  }

  v25 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t AVE_Session_AVC_BeginPass(uint64_t a1, int a2)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%x\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_BeginPass", a1, a2);
      v7 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", v7, 12, v39, "AVE_Session_AVC_BeginPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", CurrTime, 12, LevelStr, "AVE_Session_AVC_BeginPass", a1, a2);
    }
  }

  if (a1)
  {
    if (AVE_Log_CheckLevel(0xD8u, 7))
    {
      v8 = AVE_Log_CheckConsole(0xD8u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(7);
      v11 = *(a1 + 16504);
      v12 = *(a1 + 16508);
      if (v8)
      {
        printf("%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)\n", v9, 216, v10, a2, *(a1 + 16504), v12);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v13, 216, v14, a2, *(a1 + 16504), *(a1 + 16508));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v9, 216, v10, a2, *(a1 + 16504), v12);
      }
    }

    if (!*(a1 + 16496))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v23 = AVE_Log_CheckConsole(3u);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.\n", v24, 3, v25, "AVE_Session_AVC_BeginPass", 5616, "pINS->multiPassStorage != __null");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.");
      }

      goto LABEL_40;
    }

    v18 = *(a1 + 16504);
    if (v18 != *(a1 + 16508))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v26 = AVE_Log_CheckConsole(3u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        v29 = *(a1 + 16504);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v27, 3, v28, "AVE_Session_AVC_BeginPass", 5617, "pINS->multiPassBeginPassCounter == pINS->multiPassEndPassCounter", *(a1 + 16504), *(a1 + 16508));
          v27 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        v41 = *(a1 + 16504);
        v42 = *(a1 + 16508);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d", v27);
      }

      goto LABEL_40;
    }

    if (v18)
    {
      v19 = v18 + 1;
      *(a1 + 16504) = v19;
      if (v19 >= 3)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v20 = AVE_Log_CheckConsole(3u);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: pINS->multiPassBeginPassCounter reached max %d\n", v21, 3, v22, "AVE_Session_AVC_BeginPass", 5626, "false", *(a1 + 16504));
            v21 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          v40 = *(a1 + 16504);
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pINS->multiPassBeginPassCounter reached max %d", v21);
        }

LABEL_40:
        v30 = 4294966296;
        goto LABEL_41;
      }
    }

    else
    {
      if (*(a1 + 16464) == 30568)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v31 = AVE_Log_CheckConsole(3u);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with SessionStatus == H3H264VideoEncoder_SessionStatus_Run\n", v32, 3, v33, "AVE_Session_AVC_BeginPass", 5620, "pINS->SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with SessionStatus == H3H264VideoEncoder_SessionStatus_Run");
        }

        goto LABEL_40;
      }

      *(a1 + 16504) = 1;
    }

    v30 = 0;
    *(a1 + 16512) = a2;
    goto LABEL_41;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v15 = AVE_Log_CheckConsole(0xCu);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x\n", v16, 12, v17, "AVE_Session_AVC_BeginPass", 5611, "pINS != __null", 0, a2);
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
      printf("%lld %d AVE %s: %s Exit %p 0x%x %d\n", v35, 12, v36, "AVE_Session_AVC_BeginPass", a1, a2, v30);
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

uint64_t AVE_Session_AVC_EndPass(uint64_t a1, int *a2)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_EndPass", a1, a2);
      v7 = AVE_GetCurrTime();
      v105 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v105, "AVE_Session_AVC_EndPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_EndPass", a1, a2);
    }
  }

  if (a1)
  {
    if (AVE_Log_CheckLevel(0xD8u, 7))
    {
      v8 = AVE_Log_CheckConsole(0xD8u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(7);
      v11 = *(a1 + 16504);
      if (v8)
      {
        printf("%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)\n", v9, 216, v10, "AVE_Session_AVC_EndPass", *(a1 + 16512), *(a1 + 16504), *(a1 + 16508));
        v9 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v12 = *(a1 + 16512);
        v106 = *(a1 + 16504);
        v108 = *(a1 + 16508);
      }

      else
      {
        v107 = *(a1 + 16504);
      }

      syslog(3, "%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)", v9);
    }

    if (*(a1 + 16464) != 30568)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v27 = AVE_Log_CheckConsole(3u);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run\n", v28, 3, v29, "AVE_Session_AVC_EndPass", 5665, "pINS->SessionStatus == AVE_CommonWrapper_SessionStatus_Run");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
      }

      goto LABEL_57;
    }

    if (!*(a1 + 16496))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v30 = AVE_Log_CheckConsole(3u);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.\n", v31, 3, v32, "AVE_Session_AVC_EndPass", 5667, "pINS->multiPassStorage != __null");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.");
      }

      goto LABEL_57;
    }

    v16 = *(a1 + 16504);
    v17 = *(a1 + 16508);
    if (v16 != v17 + 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v33 = AVE_Log_CheckConsole(3u);
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        v36 = *(a1 + 16504);
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v34, 3, v35, "AVE_Session_AVC_EndPass", 5672, "pINS->multiPassBeginPassCounter == (pINS->multiPassEndPassCounter + 1)", *(a1 + 16504), *(a1 + 16508));
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d", v34, 3, v35, "AVE_Session_AVC_EndPass", 5672, "pINS->multiPassBeginPassCounter == (pINS->multiPassEndPassCounter + 1)", *(a1 + 16504), *(a1 + 16508));
      }

      goto LABEL_57;
    }

    if (v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = *(a1 + 16512) == 1;
    }

    v19 = !v18;
    *(a1 + 16508) = v16;
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
      v23 = *(a1 + 16508);
      v24 = *(a1 + 16468);
      if (v20)
      {
        printf("%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d\n", v21, 216, v22, "AVE_Session_AVC_EndPass", *(a1 + 16508), v24);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v25, 216, v26, "AVE_Session_AVC_EndPass", *(a1 + 16508), *(a1 + 16468));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v21, 216, v22, "AVE_Session_AVC_EndPass", *(a1 + 16508), v24);
      }
    }

    if (AVE_USL_Drv_Reset(*(a1 + 120), *(a1 + 16508)))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v38 = AVE_Log_CheckConsole(3u);
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        if (v38)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Reset failed.\n", v39, 3, v40, "AVE_Session_AVC_EndPass", 5707, "err == noErr");
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
      v45 = *(a1 + 16496);
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
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp kVTMultiPassStorageStep_GetFirstTimeStamp failed.\n", v48, 3, v49, "AVE_Session_AVC_EndPass", 5723, "err == noErr");
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
          printf("%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d\n", v58, 216, v59, "AVE_Session_AVC_EndPass", v114.value, v114.timescale, v114.flags);
          v58 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d", v58);
      }

      v60 = *(a1 + 16496);
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
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStampAndDuration kVTMultiPassStorageStep_GetLastTimeStamp failed.\n", v63, 3, v64, "AVE_Session_AVC_EndPass", 5739, "err == noErr");
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
          printf("%lld %d AVE %s: %s lastTimeInTimeRange value %lld timescale %d flags %d\n", v66, 216, v67, "AVE_Session_AVC_EndPass", start.value, start.timescale, start.flags);
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
          printf("%lld %d AVE %s: %s duration value %lld timescale %d flags %d\n", v69, 216, v70, "AVE_Session_AVC_EndPass", v112.value, v112.timescale, v112.flags);
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
          printf("%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d\n", v72, 216, v73, "AVE_Session_AVC_EndPass", start.value, start.timescale, start.flags);
          v72 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d", v72);
      }

      if (*(a1 + 16468) <= 1u && !start.flags)
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
            printf("%lld %d AVE %s: %s:%d %s | FIG: firstTimeInTimeRange invalid.\n", v79, 3, v80, "AVE_Session_AVC_EndPass", 5765, "firstTimeInTimeRange.flags != 0");
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
            printf("%lld %d AVE %s: %s:%d %s | FIG: lastTimeInTimeRange invalid.\n", v82, 3, v83, "AVE_Session_AVC_EndPass", 5767, "lastTimeInTimeRange.flags != 0");
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
            printf("%lld %d AVE %s: %s:%d %s | FIG: CMTimeRangeCopyAsDictionary failed.\n", v100, 3, v101, "AVE_Session_AVC_EndPass", 5776, "currentTimeRangeDictionary != __null");
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
              printf("%lld %d AVE %s: %s:%d %s | FIG: VTEncoderSessionSetTimeRangesForNextPass failed.\n", v97, 3, v98, "AVE_Session_AVC_EndPass", 5810, "err == noErr");
              AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTEncoderSessionSetTimeRangesForNextPass failed.");
          }

          goto LABEL_57;
        }

LABEL_122:
        v37 = 0;
        *(a1 + 16540) = *(a1 + 16468);
        *(a1 + 16468) = 0;
        goto LABEL_58;
      }

      if (AVE_Log_CheckLevel(3u, 4))
      {
        v102 = AVE_Log_CheckConsole(3u);
        v103 = AVE_GetCurrTime();
        v104 = AVE_Log_GetLevelStr(4);
        if (v102)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: malloc timeRanges failed.\n", v103, 3, v104, "AVE_Session_AVC_EndPass", 5788, "timeRanges != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | FIG: CFArrayCreateMutable failed.\n", v55, 3, v56, "AVE_Session_AVC_EndPass", 5720, "timeRangeArray != __null");
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
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v14, 12, v15, "AVE_Session_AVC_EndPass", 5654, "pINS != __null", 0, a2);
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
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v51, 12, v52, "AVE_Session_AVC_EndPass", a1, a2, v37);
      v51 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v51);
  }

  return v37;
}

uint64_t AVE_Session_AVC_StartTileSession(uint64_t a1, unsigned int *a2)
{
  v84 = *MEMORY[0x29EDCA608];
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_StartTileSession", a1, a2);
      v7 = AVE_GetCurrTime();
      v77 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v77, "AVE_Session_AVC_StartTileSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_StartTileSession", a1, a2);
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
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_AVC_StartTileSession", 6039, "pDim->iWidth > 0 && pDim->iHeight > 0", a1, *(a1 + 56), *a2, a2[1]);
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(4);
          v25 = *(a1 + 56);
          v26 = *a2;
          v27 = a2[1];
        }

        else
        {
          v82 = *a2;
        }

        goto LABEL_33;
      }

LABEL_34:
      v38 = 0;
      v28 = 4294965295;
      goto LABEL_35;
    }

    v8 = *(a1 + 12000);
    v9 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v8, 3u, v9);
    v10 = *a2;
    v11 = a2[1];
    *(a1 + 1440) = *a2;
    *(a1 + 1444) = v11;
    *(a1 + 11452) = v10;
    *(a1 + 11456) = v11;
    *(a1 + 764) = 2;
    MinResolution = AVE_Enc_GetMinResolution(*(a1 + 68), 1, 1);
    AVE_PrepareCropParams(a1);
    if (AVE_Enc_CheckResolution(*(a1 + 68), 1, 1, *(a1 + 1440), *(a1 + 1444), 0))
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v13 = AVE_Log_CheckConsole(0xCu);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        v16 = *(a1 + 1440);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_AVC_StartTileSession", 6060, "ret == 0", a1, *(a1 + 56), *(a1 + 1440), *(a1 + 1444));
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(4);
          v17 = *(a1 + 56);
          v18 = *(a1 + 1440);
          v19 = *(a1 + 1444);
        }

        else
        {
          v83 = *(a1 + 1440);
        }

LABEL_33:
        syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v14, 12, v15);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    v29 = *(a1 + 1440);
    v30 = MinResolution[1];
    if (v29 <= *MinResolution)
    {
      v31 = *MinResolution;
    }

    else
    {
      v31 = v29;
    }

    v32 = *(a1 + 1444);
    if (v32 <= v30)
    {
      v33 = v30;
    }

    else
    {
      v33 = v32;
    }

    AVE_SetEncoderDefault(a1);
    if (AVE_Log_CheckLevel(0xCu, 7))
    {
      v34 = AVE_Log_CheckConsole(0xCu);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(7);
      if (v34)
      {
        printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault\n", v35, 12, v36);
        v37 = AVE_GetCurrTime();
        v78 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v37, 12, v78);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v35, 12, v36);
      }
    }

    *(a1 + 10752) = 2;
    *(a1 + 1464) = 0;
    *(a1 + 1252) = 1;
    *(a1 + 1256) = 0x100000000;
    *(a1 + 1288) = 1;
    *(a1 + 1240) &= ~0x400u;
    if (*(a1 + 1132) != 3)
    {
      *(a1 + 1132) = 3;
      if ((*(a1 + 10844) & 1) == 0)
      {
        *(a1 + 1144) = 0xC0000000CLL;
        *(a1 + 1152) = 12;
      }

      *(a1 + 1112) = 30;
      *(a1 + 1352) = 30;
      *(a1 + 10764) = 1;
    }

    *(a1 + 10184) = 1;
    *(a1 + 10176) = 2;
    *(a1 + 14196) = 1;
    *(a1 + 12064) = 6;
    *(a1 + 1448) |= 0x10000000uLL;
    v44 = *(a1 + 1336);
    *(a1 + 1120) |= 0x200000000uLL;
    *(a1 + 1356) |= 2u;
    *(a1 + 1336) = v44 & 0xFEFFFFBF | 0x1000000;
    *(a1 + 1096) = 0;
    AVE_NewDefaultsBasedOnProfileUsageDefault(a1);
    *(a1 + 10522) = 0;
    *(a1 + 1240) &= ~0x100u;
    *(a1 + 10855) = 0;
    if (AVE_Log_CheckLevel(0xCu, 7))
    {
      v45 = AVE_Log_CheckConsole(0xCu);
      v46 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(7);
      if (v45)
      {
        printf("%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault\n", v46, 12, v47);
        v48 = AVE_GetCurrTime();
        v79 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v48, 12, v79);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v46, 12, v47);
      }
    }

    if (AVE_PixelBuf_CreateAttrDict(*(a1 + 68), *(a1 + 64), 62, 1, *a2, a2[1], v31, v33, 0x414C4C20u))
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v49 = AVE_Log_CheckConsole(0xCu);
        v50 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(4);
        v52 = *(a1 + 56);
        if (v49)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d\n", v50, 12, v51, "AVE_Session_AVC_StartTileSession", 6078, "err == noErr", a1, *(a1 + 56), 0);
          v50 = AVE_GetCurrTime();
          v51 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d", v50, 12, v51, "AVE_Session_AVC_StartTileSession", 6078, "err == noErr", a1, *(a1 + 56), 0);
      }

LABEL_62:
      v38 = 0;
LABEL_63:
      v28 = 4294966296;
LABEL_35:
      if (v38)
      {
        CFRelease(v38);
      }

      goto LABEL_37;
    }

    if (*(a1 + 16) == 1)
    {
      if (AVE_Log_CheckLevel(0xCu, 7))
      {
        v56 = AVE_Log_CheckConsole(0xCu);
        v57 = AVE_GetCurrTime();
        v58 = AVE_Log_GetLevelStr(7);
        if (v56)
        {
          printf("%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK\n", v57, 12, v58);
          v59 = AVE_GetCurrTime();
          v80 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v59, 12, v80);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v57, 12, v58);
        }
      }

      v38 = 0;
    }

    else
    {
      if (VTTileEncoderSessionSetTileAttributes())
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v53 = AVE_Log_CheckConsole(3u);
          v54 = AVE_GetCurrTime();
          v55 = AVE_Log_GetLevelStr(4);
          if (v53)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.\n", v54, 3, v55, "AVE_Session_AVC_StartTileSession", 6092, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.");
        }

        goto LABEL_62;
      }

      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (!Mutable)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v73 = AVE_Log_CheckConsole(3u);
          v74 = AVE_GetCurrTime();
          v75 = AVE_Log_GetLevelStr(4);
          if (v73)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.\n", v74, 3, v75, "AVE_Session_AVC_StartTileSession", 6096, "TileRequirements");
            v76 = AVE_GetCurrTime();
            v81 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v76, 3, v81, "AVE_Session_AVC_StartTileSession", 6096, "TileRequirements");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v74, 3, v75, "AVE_Session_AVC_StartTileSession", 6096, "TileRequirements");
          }
        }

        v38 = 0;
        v28 = 4294966293;
        goto LABEL_35;
      }

      v38 = Mutable;
      if (*(a1 + 76) >= 12)
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBD1C0], *MEMORY[0x29EDB8F00]);
      }

      v61 = *(a1 + 16);
      if (VTTileEncoderSessionSetTileEncodeRequirements())
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v62 = AVE_Log_CheckConsole(3u);
          v63 = AVE_GetCurrTime();
          v64 = AVE_Log_GetLevelStr(4);
          if (v62)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.\n", v63, 3, v64, "AVE_Session_AVC_StartTileSession", 6102, "err == noErr", "AVE_Session_AVC_StartTileSession", 6102);
            v63 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.", v63, 3);
        }

        goto LABEL_63;
      }
    }

    *(a1 + 16464) = 30566;
    if (*(a1 + 16) == 1)
    {
      v65 = 1;
    }

    else
    {
      v65 = 3;
    }

    v66 = AVE_SEI::Init(*(a1 + 16488), *(a1 + 56), 0, 0, 1, v65);
    if (v66)
    {
      v28 = v66;
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v67 = AVE_Log_CheckConsole(0xCu);
        v68 = AVE_GetCurrTime();
        v69 = AVE_Log_GetLevelStr(4);
        if (v67)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu\n", v68, 12, v69, "AVE_Session_AVC_StartTileSession", 6120, "ret == 0", a1, *(a1 + 56));
          v68 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          v70 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu", v68, 12);
      }
    }

    else
    {
      v71 = *(a1 + 12000);
      v72 = AVE_GetCurrTime();
      AVE_TimeStats_AddEndTime(v71, 3u, v72);
      v28 = 0;
    }

    goto LABEL_35;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v20 = AVE_Log_CheckConsole(0xCu);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(4);
    if (v20)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v21, 12, v22, "AVE_Session_AVC_StartTileSession", 6035, "pINS != __null && pDim != __null", a1, a2);
      v21 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v21, 12);
  }

  v28 = 4294966295;
LABEL_37:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v39 = AVE_Log_CheckConsole(0xCu);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(6);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v40, 12, v41, "AVE_Session_AVC_StartTileSession", a1, a2, v28);
      v40 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v40);
  }

  v42 = *MEMORY[0x29EDCA608];
  return v28;
}

uint64_t AVE_Session_AVC_ProcessTile()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  theDict = v2;
  v126 = v1;
  v127 = v3;
  v128 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v164 = *MEMORY[0x29EDCA608];
  pixelBuffer = v6;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v10 = AVE_DW_Get();
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v11 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_ProcessTile", v128, v9, v7, v5, v126, v127, theDict);
      v14 = AVE_GetCurrTime();
      v109 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v14, 12, v109, "AVE_Session_AVC_ProcessTile", v128);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_ProcessTile", v128);
    }
  }

  if (v127 && v126 && v128 && pixelBuffer)
  {
    v15 = (v128 + 16464);
    if (!*(v128 + 16468))
    {
      v26 = AVE_SEI::SetSEIBits(*(v128 + 16488), *(v128 + 1096));
      if (v26)
      {
        v27 = v26;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v28 = AVE_Log_CheckConsole(3u);
          v29 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v29, 3, v30, "AVE_Session_AVC_ProcessTile", 6176, "ret == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration");
        }

        goto LABEL_91;
      }

      v50 = *(v128 + 12000);
      v51 = AVE_GetCurrTime();
      AVE_TimeStats_AddStartTime(v50, 5u, v51);
    }

    v16 = AVE_GetCurrTime();
    if (*(v128 + 1112) >= 1)
    {
      v17 = *(v128 + 1112);
    }

    else
    {
      v17 = 30;
    }

    AVE_Time_Gen(v17, v128 + 16576);
    if (AVE_Log_CheckLevel(0x33u, 7))
    {
      v18 = AVE_Log_CheckConsole(0x33u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(7);
      v21 = *(v128 + 16576);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d\n", v19, 51, v20, "AVE_Session_AVC_ProcessTile", 6188, *(v128 + 56), *(v128 + 16468), *(v128 + 16576), *(v128 + 16584));
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(7);
        v121 = *(v128 + 16576);
        v124 = *(v128 + 16584);
        v116 = *(v128 + 56);
        v118 = *(v128 + 16468);
      }

      else
      {
        v122 = *(v128 + 16576);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d", v19, 51, v20);
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v128 + 18080) = PixelFormatType;
    if (!*(v128 + 16468))
    {
      v152 = *(v128 + 1440);
      v32 = AVE_PixelFmt_FindByType(PixelFormatType);
      if (!v32)
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_90;
        }

        v52 = AVE_Log_CheckConsole(3u);
        v47 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(4);
        v54 = *(v128 + 56);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v47, 3, v53, "AVE_Session_AVC_ProcessTile", 6202, "pPixelFmt != __null", v128, *(v128 + 56), *(v128 + 18080));
          v47 = AVE_GetCurrTime();
          v53 = AVE_Log_GetLevelStr(4);
        }

        v120 = *(v128 + 56);
        v123 = *(v128 + 18080);
        v117 = "pPixelFmt != __null";
        v119 = v128;
        v115 = 6202;
        v111 = v53;
        v49 = "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x";
        goto LABEL_75;
      }

      if (v10[420])
      {
        v33 = v10 + 420;
      }

      else
      {
        v33 = 0;
      }

      AVE_Dump_Init(*(v128 + 18064), v33, *(v128 + 64), *(v128 + 10772), *(v10 + 103), *(v10 + 104), &v152, 1, *(v32 + 3), *(v32 + 1), *(v128 + 1136));
      AVE_Dump_WriteInput(*(v128 + 18064), -1, pixelBuffer);
    }

    v34 = *v15;
    if (*v15 == 30566)
    {
      if (AVE_ISP_CheckMetadata(pixelBuffer))
      {
        v41 = 1;
      }

      else
      {
        v41 = 2;
      }

      *(v128 + 10804) = v41;
      v42 = AVE_ManageSessionSettings(v128);
      if (v42)
      {
        v27 = v42;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v43 = AVE_Log_CheckConsole(3u);
          v44 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(4);
          if (v43)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v44, 3, v45, "AVE_Session_AVC_ProcessTile", 6287, "err == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed");
        }

        goto LABEL_91;
      }

      AVE_UpdateCropParams(v128, pixelBuffer);
      if (AVE_AVC_VerifyImageBuffer(v128, &pixelBuffer, &v146, &v145, &v144 + 1, &v144, 1))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v59 = AVE_Log_CheckConsole(3u);
          v36 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          if (!v59)
          {
LABEL_89:
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.");
            goto LABEL_90;
          }

          v38 = 6297;
LABEL_71:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.\n", v36, 3, v37, "AVE_Session_AVC_ProcessTile", v38, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_89;
        }

LABEL_90:
        v27 = 4294966296;
LABEL_91:
        if (v146 == 1 && pixelBuffer)
        {
          CVPixelBufferRelease(pixelBuffer);
        }

        ++*(v128 + 16468);
        goto LABEL_95;
      }

      AVE_SetEncoderBasedOnFirstFrame();
      if (AVE_ValidateEncoderParameters(v128))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_90;
        }

        v67 = AVE_Log_CheckConsole(3u);
        v56 = AVE_GetCurrTime();
        v57 = AVE_Log_GetLevelStr(4);
        if (v67)
        {
          v58 = 6307;
          goto LABEL_87;
        }

LABEL_143:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        goto LABEL_90;
      }

      v60 = v9;
      AVE_PrepareSequenceHeader(v128, pixelBuffer);
      bzero(v158, 0x1058uLL);
      v152 = v128 + 672;
      v153 = v128 + 1440;
      v74 = *(v128 + 12000);
      v154 = v128 + 10752;
      BytePtr = v74;
      v75 = *(v128 + 16480);
      v156 = *(v128 + 18064);
      v159 = v128 + 12008;
      v160 = v128 + 13724;
      v161 = v128 + 14108;
      v157 = v75;
      memcpy(v162, (v128 + 16592), sizeof(v162));
      v163 = v16;
      if (AVE_USL_Drv_Start(*(v128 + 120), &v152, v128 + 128, *(v128 + 16), *(v128 + 112), *(v128 + 16472), *(v128 + 16496), v128 + 160, (v128 + 11772), (v128 + 11464)))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_90;
        }

        v76 = AVE_Log_CheckConsole(3u);
        v64 = AVE_GetCurrTime();
        v65 = AVE_Log_GetLevelStr(4);
        if (v76)
        {
          v66 = 6331;
          goto LABEL_104;
        }

LABEL_146:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.");
        goto LABEL_90;
      }
    }

    else
    {
      if (v34 != 30567)
      {
        if (v34 == 30568)
        {
          if (AVE_AVC_VerifyImageBuffer(v128, &pixelBuffer, &v146, &v145, &v144 + 1, &v144, 0))
          {
            if (AVE_Log_CheckLevel(3u, 4))
            {
              v35 = AVE_Log_CheckConsole(3u);
              v36 = AVE_GetCurrTime();
              v37 = AVE_Log_GetLevelStr(4);
              if (!v35)
              {
                goto LABEL_89;
              }

              v38 = 6221;
              goto LABEL_71;
            }

            goto LABEL_90;
          }

LABEL_106:
          *v15 = 30568;
          bzero(v149, 0x1738uLL);
          v142 = 0u;
          v143 = 0u;
          *&v139[16] = 0u;
          v140 = 0;
          v138 = 0u;
          *v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v135 = 0u;
          v134 = 0u;
          v133 = 0u;
          memset(v129, 0, sizeof(v129));
          *v130 = 0u;
          v131 = 0;
          bzero(&v152, 0x4A40uLL);
          v132[0] = v9;
          v132[1] = pixelBuffer;
          v141 = v149;
          *&v142 = v16;
          v77 = *(v128 + 16576);
          DWORD2(v142) = *(v128 + 16508);
          *&v139[8] = v77;
          v140 = &v152;
          if (*(v128 + 10804) == 2)
          {
            AVE_ISP_GetMetadata(pixelBuffer, v129);
            AVE_Dump_WriteISPMetadata(*(v128 + 18064), *(v128 + 16508), *(v128 + 16468), v129);
          }

          *&v139[24] = v129;
          if ((*(v128 + 1337) & 2) != 0 && *(v128 + 76) >= 4 && !AVE_ANFD_GetInfo(theDict, v150))
          {
            memset(v148, 0, sizeof(v148));
            __dst = *(v128 + 16468);
            AVE_SNPrintf(v148, 32, "%llu %d %d", v78, v79, v80, v81, v82, *(v128 + 56));
            AVE_ANFD_PrintInfo(v150, 47, 6, v148, 0, v83, v84, v85);
            v151 = v151 & 0xFFFFFDFF | ((v150[0] > 0) << 9);
          }

          v86 = CMGetAttachment(pixelBuffer, *MEMORY[0x29EDBFF98], 0);
          if (v86)
          {
            AVE_SEI::SetISPMetadata(*(v128 + 16488), *(v128 + 16468), v86);
          }

          AVE_SEI::SetDriverVersion(*(v128 + 16488), *(v128 + 16468));
          AVE_SEI::SetSessionID(*(v128 + 16488), *(v128 + 16468), *(v128 + 56));
          AVE_SEI::SetExposureTime(*(v128 + 16488), *(v128 + 16468), *&v129[1]);
          AVE_SEI::SetSNR(*(v128 + 16488), *(v128 + 16468), *v129);
          AVE_SEI::SetLuxLevel(*(v128 + 16488), *(v128 + 16468), v130[1]);
          AVE_SEI::SetPTS(*(v128 + 16488), *(v128 + 16468), v126[2], *v126);
          if (AVE_Log_CheckLevel(0xCu, 7))
          {
            v87 = AVE_Log_CheckConsole(0xCu);
            v88 = AVE_GetCurrTime();
            v89 = AVE_Log_GetLevelStr(7);
            if (v87)
            {
              printf("%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData\n", v88, 12, v89);
              v90 = AVE_GetCurrTime();
              v113 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v90, 12, v113);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v88, 12, v89);
            }
          }

          v162[530] = *(v128 + 10204);
          LODWORD(v156) = 0;
          BytePtr = 0;
          if (theDict)
          {
            Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCF18]);
            v151 &= ~0x10000u;
            if (*(v128 + 1338))
            {
              v92 = Value;
              if (Value)
              {
                LODWORD(v156) = CFDataGetLength(Value);
                BytePtr = CFDataGetBytePtr(v92);
                v151 |= 0x10000u;
              }
            }
          }

          if (AVE_Log_CheckLevel(0xCu, 7))
          {
            v93 = AVE_Log_CheckConsole(0xCu);
            v94 = AVE_GetCurrTime();
            v95 = AVE_Log_GetLevelStr(7);
            if (v93)
            {
              printf("%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData\n", v94, 12, v95);
              v96 = AVE_GetCurrTime();
              v114 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v96, 12, v114);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v94, 12, v95);
            }
          }

          if (AVE_GetTileInfo(v128, &v152, v5))
          {
            if (AVE_Log_CheckLevel(3u, 4))
            {
              v97 = AVE_Log_CheckConsole(3u);
              v98 = AVE_GetCurrTime();
              v99 = AVE_Log_GetLevelStr(4);
              if (v97)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.\n", v98, 3, v99, "AVE_Session_AVC_ProcessTile", 6433, "err == noErr");
                AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.");
            }
          }

          else
          {
            if (v145)
            {
              v100 = pixelBuffer;
            }

            else
            {
              v100 = 0;
            }

            *(&v135 + 1) = v100;
            v101 = AVE_USL_Drv_Process(*(v128 + 120), v132);
            v27 = v101;
            if (!v101)
            {
              goto LABEL_91;
            }

            if (v101 == -536870173)
            {
              if (AVE_Log_CheckLevel(0x10u, 5))
              {
                v102 = AVE_Log_CheckConsole(0x10u);
                v103 = AVE_GetCurrTime();
                v104 = AVE_Log_GetLevelStr(5);
                if (v102)
                {
                  printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v103, 16, v104);
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(5);
                }

                syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame");
              }
            }

            else if (AVE_Log_CheckLevel(3u, 4))
            {
              v105 = AVE_Log_CheckConsole(3u);
              v106 = AVE_GetCurrTime();
              v107 = AVE_Log_GetLevelStr(4);
              if (v105)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v106, 3, v107, "AVE_Session_AVC_ProcessTile", 6456, "err == noErr");
                AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.");
            }
          }

          goto LABEL_90;
        }

        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_90;
        }

        v46 = AVE_Log_CheckConsole(3u);
        v47 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v47, 3, v48, "AVE_Session_AVC_ProcessTile", 6339, "false", *v15);
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(4);
          v117 = "false";
          v119 = *v15;
          v115 = 6339;
        }

        else
        {
          v119 = *v15;
          v115 = 6339;
          v117 = "false";
        }

        v111 = v48;
        v49 = "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.";
LABEL_75:
        syslog(3, v49, v47, 3, v111, "AVE_Session_AVC_ProcessTile", v115, v117, v119, v120, v123);
        goto LABEL_90;
      }

      if (AVE_ISP_CheckMetadata(pixelBuffer))
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      *(v128 + 10804) = v39;
      AVE_UpdateCropParams(v128, pixelBuffer);
      if (AVE_AVC_VerifyImageBuffer(v128, &pixelBuffer, &v146, &v145, &v144 + 1, &v144, 1))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v40 = AVE_Log_CheckConsole(3u);
          v36 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          if (!v40)
          {
            goto LABEL_89;
          }

          v38 = 6238;
          goto LABEL_71;
        }

        goto LABEL_90;
      }

      AVE_SetEncoderBasedOnFirstFrame();
      if (AVE_ValidateEncoderParameters(v128))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_90;
        }

        v55 = AVE_Log_CheckConsole(3u);
        v56 = AVE_GetCurrTime();
        v57 = AVE_Log_GetLevelStr(4);
        if (v55)
        {
          v58 = 6248;
LABEL_87:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v56, 3, v57, "AVE_Session_AVC_ProcessTile", v58, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_143;
        }

        goto LABEL_143;
      }

      v60 = v9;
      AVE_PrepareSequenceHeader(v128, pixelBuffer);
      bzero(v158, 0x1058uLL);
      v152 = v128 + 672;
      v153 = v128 + 1440;
      v61 = *(v128 + 12000);
      v154 = v128 + 10752;
      BytePtr = v61;
      v62 = *(v128 + 16480);
      v156 = *(v128 + 18064);
      v159 = v128 + 12008;
      v160 = v128 + 13724;
      v161 = v128 + 14108;
      v157 = v62;
      memcpy(v162, (v128 + 16592), sizeof(v162));
      v163 = v16;
      if (AVE_USL_Drv_Start(*(v128 + 120), &v152, v128 + 128, *(v128 + 16), *(v128 + 112), *(v128 + 16472), *(v128 + 16496), v128 + 160, (v128 + 11772), (v128 + 11464)))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_90;
        }

        v63 = AVE_Log_CheckConsole(3u);
        v64 = AVE_GetCurrTime();
        v65 = AVE_Log_GetLevelStr(4);
        if (v63)
        {
          v66 = 6272;
LABEL_104:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v64, 3, v65, "AVE_Session_AVC_ProcessTile", v66, "err == noErr");
          AVE_GetCurrTime();
          v9 = v60;
          AVE_Log_GetLevelStr(4);
          goto LABEL_146;
        }

        goto LABEL_146;
      }
    }

    v9 = v60;
    goto LABEL_106;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v22 = AVE_Log_CheckConsole(0xCu);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(4);
    if (v22)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v23, 12, v24, "AVE_Session_AVC_ProcessTile", 6170, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v128, v9, pixelBuffer, v5, v126, v127, theDict);
      v25 = AVE_GetCurrTime();
      v110 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v25, 12, v110, "AVE_Session_AVC_ProcessTile", 6170, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v128);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v23, 12, v24, "AVE_Session_AVC_ProcessTile", 6170, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v128);
    }
  }

  v27 = 4294966295;
LABEL_95:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v68 = AVE_Log_CheckConsole(0xCu);
    v69 = AVE_GetCurrTime();
    v70 = AVE_Log_GetLevelStr(7);
    if (v68)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v69, 12, v70, "AVE_Session_AVC_ProcessTile", v128, v9, pixelBuffer, v5, v126, v127, theDict, v27);
      v71 = AVE_GetCurrTime();
      v112 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v71, 12, v112, "AVE_Session_AVC_ProcessTile", v128, v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v69, 12, v70, "AVE_Session_AVC_ProcessTile", v128, v9);
    }
  }

  v72 = *MEMORY[0x29EDCA608];
  return v27;
}

uint64_t AVE_GetTileInfo(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = *a3;
  if (*a3 != ((*a3 + 63) & 0xFFFFFFC0))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v8 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned\n", CurrTime, 3, LevelStr, "AVE_GetTileInfo", 5876, "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))", *a3);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      v33 = *a3;
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned", CurrTime);
    }

    return 4294966296;
  }

  v5 = a3[1];
  if (v5 != ((v5 + 15) & 0xFFFFFFF0))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v11 = AVE_Log_CheckConsole(3u);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned\n", v12, 3, v13, "AVE_GetTileInfo", 5879, "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))", a3[1]);
        v12 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      v34 = a3[1];
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned", v12);
    }

    return 4294966296;
  }

  *(a2 + 552) = v4;
  *(a2 + 556) = v5;
  if (*(a1 + 10204) == 1)
  {
    result = 0;
    *(a2 + 544) = 0;
    return result;
  }

  if (*(a1 + 10171) != 1)
  {
    return 4294966296;
  }

  v14 = a3[3];
  v15 = a3[2] + v4;
  v16 = v14 + v5;
  if (*(a1 + 76) >= 12)
  {
    v17 = *(a1 + 10868);
    if (*(a1 + 10855) == 1)
    {
      if (v15 >= v17)
      {
        v15 = *(a1 + 10868);
      }

      *(a2 + 560) = v15;
      v18 = *(a1 + 10872);
      if (v16 >= v18)
      {
        v16 = *(a1 + 10872);
      }

      *(a2 + 564) = v16;
      v15 = v17;
      v16 = v18;
    }

    else
    {
      if (v15 <= v17)
      {
        v19 = a3[2];
      }

      else
      {
        v19 = v17 - v4;
      }

      *(a2 + 560) = v19;
      v15 = v19 + v4;
      v20 = *(a1 + 10872);
      if (v16 <= v20)
      {
        v21 = v14;
      }

      else
      {
        v21 = v20 - v5;
      }

      *(a2 + 564) = v21;
      v16 = v21 + v5;
    }
  }

  if (v15 > *(a1 + 10864))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v22 = AVE_Log_CheckConsole(3u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      v25 = a3[2];
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)\n", v23, 3, v24, "AVE_GetTileInfo", 5927, "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride", *a3, a3[2], *(a1 + 10864));
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        v36 = a3[2];
        v37 = *(a1 + 10864);
        v32 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
        v35 = *a3;
        v31 = 5927;
      }

      else
      {
        v36 = a3[2];
        v37 = *(a1 + 10864);
        v35 = *a3;
        v31 = 5927;
        v32 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
      }

      v30 = v24;
      v26 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)";
LABEL_44:
      syslog(3, v26, v23, 3, v30, "AVE_GetTileInfo", v31, v32, v35, v36, v37);
      return 4294966296;
    }

    return 4294966296;
  }

  if (v16 > *(a1 + 10872))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v27 = AVE_Log_CheckConsole(3u);
      v23 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      v29 = a3[3];
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)\n", v23, 3, v28, "AVE_GetTileInfo", 5932, "height <= pINS->VideoParamsDriver.pixelBuffer.Height", a3[1], a3[3], *(a1 + 10872));
        v23 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        v36 = a3[3];
        v37 = *(a1 + 10872);
        v32 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
        v35 = a3[1];
        v31 = 5932;
      }

      else
      {
        v36 = a3[3];
        v37 = *(a1 + 10872);
        v35 = a3[1];
        v31 = 5932;
        v32 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
      }

      v30 = v28;
      v26 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)";
      goto LABEL_44;
    }

    return 4294966296;
  }

  result = 0;
  *(a2 + 544) = v4;
  *(a2 + 548) = v5;
  return result;
}

uint64_t AVE_Session_AVC_Create(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 16456);
  v5 = (a1 + 760);
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v7 = AVE_Log_CheckConsole(0xCu);
    v8 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%llx\n", v8, 12, LevelStr, "AVE_Session_AVC_Create", a1, a2);
      v10 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v10, 12, v43, "AVE_Session_AVC_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v8, 12, LevelStr, "AVE_Session_AVC_Create", a1, a2);
    }
  }

  v11 = AVE_DW_Get();
  *(a1 + 64) = 1;
  *v4 = 2;
  *(a1 + 1256) = -1;
  *(a1 + 10556) = 0x100000001;
  *(a1 + 10772) = 1;
  *(a1 + 776) = 1;
  *&v12 = 0x100000001;
  *(&v12 + 1) = 0x100000001;
  *v5 = v12;
  *(a1 + 712) = v11[103];
  v13 = AVE_USL_Drv_Create(1, 1);
  if (v13)
  {
    v14 = v13;
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v15 = AVE_Log_CheckConsole(0xCu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to open AVC %p %lld %d\n", v16, 12, v17, "AVE_Session_AVC_Create", 6526, "ret == 0", a1, 0, v14);
        v18 = AVE_GetCurrTime();
        v44 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open AVC %p %lld %d", v18, 12, v44);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open AVC %p %lld %d", v16, 12, v17);
      }
    }

    v19 = 0;
LABEL_15:
    v25 = *(a1 + 16488);
    if (v25)
    {
      AVE_SEI::~AVE_SEI(v25);
      MEMORY[0x29C24DA40]();
      v26 = 0;
      *(a1 + 16488) = 0;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_20;
  }

  *(a1 + 68) = AVE_USL_Drv_GetDevID(*(a1 + 120));
  *(a1 + 72) = AVE_USL_Drv_GetDevRevision(*(a1 + 120));
  *(a1 + 56) = AVE_USL_Drv_GetClientID(*(a1 + 120));
  *(a1 + 76) = *(AVE_DevCap_Find(*(a1 + 68)) + 1);
  v19 = *(a1 + 56);
  AVE_Prop_Cfg_AVC_Init((a1 + 16592), v19);
  AVE_TimeStats_Create(*(a1 + 56), v11[403], (a1 + 12000));
  AVE_TimeStats_AddStartTime(*(a1 + 12000), 0, CurrTime);
  AVE_Dump_Create(*(a1 + 56), (a1 + 18064));
  v4[2] = 30565;
  PropertyDict = AVE_Session_AVC_CreatePropertyDict(a1);
  if (PropertyDict)
  {
    v14 = PropertyDict;
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v21 = AVE_Log_CheckConsole(0xCu);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d\n", v22, 12, v23, "AVE_Session_AVC_Create", 6553, "ret == 0", a1, v19, v14);
        v24 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d", v24, 12, v45);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d", v22, 12, v23);
      }
    }

    goto LABEL_15;
  }

  v27 = operator new(0x50uLL, MEMORY[0x29EDC9418]);
  if (!v27)
  {
    *(a1 + 16488) = 0;
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v39 = AVE_Log_CheckConsole(0xCu);
      v40 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(4);
      if (v39)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create SEI instance %p %llu\n", v40, 12, v41, "AVE_Session_AVC_Create", 6558, "pINS->pcSEI != __null", a1, *(a1 + 56));
        v40 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        v42 = *(a1 + 56);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create SEI instance %p %llu", v40, 12);
    }

    v14 = 4294966296;
    goto LABEL_15;
  }

  v28 = v27;
  AVE_SEI::AVE_SEI(v27);
  *(a1 + 16488) = v28;
  v29 = *(a1 + 12000);
  v30 = AVE_GetCurrTime();
  AVE_TimeStats_AddEndTime(v29, 0, v30);
  v14 = 0;
  v26 = 1;
LABEL_20:
  v31 = AVE_GetCurrTime() - CurrTime;
  if (v31 >= 1000000)
  {
    v32 = 5;
  }

  else
  {
    v32 = 6;
  }

  if (v26)
  {
    v33 = v32;
  }

  else
  {
    v33 = 4;
  }

  if (AVE_Log_CheckLevel(0xCu, v33))
  {
    v34 = AVE_Log_CheckConsole(0xCu);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(v33);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d\n", v35, 12, v36, "AVE_Session_AVC_Create", a1, a2, v19, v31, v14);
      v37 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(v33);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v37, 12, v46);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v35, 12, v36);
    }
  }

  return v14;
}

void AVE_EnableH264FWRCSettings(int32x2_t *a1)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_EnableH264FWRCSettings", a1);
      v5 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v42, "AVE_EnableH264FWRCSettings", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_EnableH264FWRCSettings", a1);
    }
  }

  if (AVE_Log_CheckLevel(0x10u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x10u);
    v7 = AVE_GetCurrTime();
    v8 = AVE_Log_GetLevelStr(8);
    v9 = a1[1348].u8[0];
    if (v6)
    {
      printf("%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d\n", v7, 16, v8, "AVE_EnableH264FWRCSettings", 1680, a1[1361].i32[1], a1[86].i32[1], a1[1348].u8[0], a1[141].i32[1]);
      v7 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      v10 = a1[1348].u8[0];
      v50 = a1[141].u32[1];
      v46 = a1[1361].u32[1];
      v48 = a1[86].u32[1];
    }

    else
    {
      v49 = a1[1348].u8[0];
    }

    syslog(3, "%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d", v7, 16);
  }

  if ((a1[140].i8[3] & 0x80) == 0 && a1[141].i32[1] == 8)
  {
    a1[1348].i8[0] = 0;
  }

  if (a1[1361].i32[1])
  {
    if ((a1[1348].i8[0] & 1) == 0)
    {
      a1[141].i32[1] = 1;
    }

    a1[1345].i8[4] = 1;
    goto LABEL_58;
  }

  v11 = a1[1348].i8[0];
  if (a1[86].i32[1] == 1)
  {
    if ((a1[1348].i8[0] & 1) == 0)
    {
      a1[141].i32[1] = 1;
    }

    a1[1345].i8[4] = 1;
    a1[183].i32[0] = 0;
    a1[86].i32[0] &= ~2u;
    if (AVE_Log_CheckLevel(0xCu, 7))
    {
      v12 = AVE_Log_CheckConsole(0xCu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(7);
      if (v12)
      {
        printf("%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnWorkload\n", v13, 12, v14);
        v15 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnWorkload", v15, 12, v43);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnWorkload", v13, 12, v14);
      }
    }

    v16 = vshr_n_u32(vadd_s32(a1[180], 0xF0000000FLL), 4uLL);
    v17 = a1[139].i32[0] * v16.i32[1] * v16.i32[0];
    if (v17 >= 0x13C681)
    {
      a1[86].i32[0] |= 0x100u;
    }

    v18 = (v16.i32[0] + 31) & 0x1FFFFFE0;
    v19 = a1[167].i32[0];
    if ((v19 & 0x40) != 0)
    {
      a1[86].i32[0] = a1[86].i32[0] & 0xFFFFFEFF | ((v17 > 0xAFC80) << 8);
    }

    if (v18 > 0x80 || v18 * v16.i32[1] >= 0x2D01)
    {
      v20 = (((v16.i32[0] + 1) >> 1) + 31) & 0x1FFFFFE0;
      if (v20 > 0x80 || (v20 * ((v16.i32[1] + 1) >> 1) <= 0x2D00 ? (v21 = (v19 & 0x40) == 0) : (v21 = 1), v21))
      {
        v19 &= ~0x40u;
      }

      else
      {
        a1[86].i32[0] |= 0x100u;
      }

      a1[167].i32[0] = v19;
    }
  }

  else if ((a1[1348].i8[0] & 1) == 0)
  {
    a1[141].i32[1] = 1;
    a1[1345].i8[4] = 1;
    a1[183].i32[0] = 0;
  }

  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v22 = AVE_Log_CheckConsole(0xCu);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(7);
    if (v22)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnBPP\n", v23, 12, v24);
      v25 = AVE_GetCurrTime();
      v44 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnBPP", v25, 12, v44);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetupFWRCSettingsBasedOnBPP", v23, 12, v24);
    }
  }

  v26 = a1[180].i32[1] + 15;
  v27 = a1[180].i32[0] + 15;
  v28 = ((v27 & 0xFFFFFF0) * (v26 & 0xFFFFFFF0));
  v29 = (v27 >> 4) * (v26 >> 4);
  v30 = a1[139].i32[0];
  v31 = v30 * v28;
  if (v29 < 0xE11)
  {
    if (v30 <= 60 && v31 * 0.26 > a1[142].i32[0])
    {
      a1[167].i32[0] &= ~0x10u;
    }

    if (AVE_Log_CheckLevel(0xDCu, 7))
    {
      v33 = AVE_Log_CheckConsole(0xDCu);
      v34 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(7);
      v32 = v31 * 0.26;
      goto LABEL_54;
    }
  }

  else
  {
    v32 = v31 * 0.17;
    if (v31 * 0.17 > a1[142].i32[0])
    {
      a1[167].i32[0] &= ~0x10u;
    }

    if (AVE_Log_CheckLevel(0xDCu, 7))
    {
      v33 = AVE_Log_CheckConsole(0xDCu);
      v34 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(7);
LABEL_54:
      v36 = a1[142].u32[0];
      if (v33)
      {
        printf("%lld %d AVE %s: BPP: BPP %f, BPP Scaled %f, iBitrate %d, AVE_QPMOD_FEATURE_FLAT_AREA %d\n", v34, 220, v35, v31, v32, a1[142].i32[0], a1[167].i32[0] & 0x10);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v37 = a1[167].i32[0] & 0x10;
      }

      v47 = a1[142].u32[0];
      syslog(3, "%lld %d AVE %s: BPP: BPP %f, BPP Scaled %f, iBitrate %d, AVE_QPMOD_FEATURE_FLAT_AREA %d");
    }
  }

LABEL_58:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v38 = AVE_Log_CheckConsole(0xCu);
    v39 = AVE_GetCurrTime();
    v40 = AVE_Log_GetLevelStr(7);
    if (v38)
    {
      printf("%lld %d AVE %s: %s Exit %p\n", v39, 12, v40, "AVE_EnableH264FWRCSettings", a1);
      v41 = AVE_GetCurrTime();
      v45 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p", v41, 12, v45, "AVE_EnableH264FWRCSettings", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p", v39, 12, v40, "AVE_EnableH264FWRCSettings", a1);
    }
  }
}

uint64_t AVE_NewDefaultsBasedOnProfileUsageDefault(int32x2_t *a1)
{
  v2 = AVE_DW_Get();
  v3 = v2[221];
  if (v3 <= 3)
  {
    a1[157].i32[0] = v3;
  }

  v4 = v2[220];
  if ((v4 & 0x80000000) == 0)
  {
    a1[156].i32[1] = v4;
  }

  v5 = v2[223];
  if (v5 >= 1)
  {
    a1[161].i32[0] = v5;
  }

  v6 = v2[232];
  if (v6 >= 1)
  {
    a1[163].i32[1] = v6;
  }

  v7 = v2[233];
  if (v7 >= 1)
  {
    a1[164].i32[0] = v7;
  }

  v8 = a1[1501].i32[0];
  if (AVE_Log_CheckLevel(0x10u, 6))
  {
    v9 = AVE_Log_CheckConsole(0x10u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %d\n", CurrTime, 16, LevelStr, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8);
      v12 = AVE_GetCurrTime();
      v85 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v12, 16, v85, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", CurrTime, 16, LevelStr, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8);
    }
  }

  v13 = a1 + 2057;
  AVE_EnableH264FWRCSettings(a1);
  v14 = a1[167].i32[0];
  if ((v14 & 0x40) != 0)
  {
    v15 = a1[180].i32[0] >> 4;
    v16 = a1[180].i32[1] >> 4;
    v17 = (v15 + 31) & 0x1FFFFFE0;
    if (v17 > 0x80 || v17 * v16 >= 0x2D01)
    {
      v18 = (((v15 + 1) >> 1) + 31) & 0x1FFFFFE0;
      if (v18 > 0x80 || v18 * ((v16 + 1) >> 1) >= 0x2D01)
      {
        a1[167].i32[0] = v14 & 0xFFFFFFBF;
      }
    }
  }

  if (v8 > 7)
  {
    if ((v8 - 8) > 1)
    {
LABEL_25:
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v19 = AVE_Log_CheckConsole(3u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: profile not understood\n", v20, 3, v21, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3632, "false");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: profile not understood");
      }

      goto LABEL_109;
    }

LABEL_29:
    if (v13->i32[0] == 2)
    {
      goto LABEL_43;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v22 = AVE_Log_CheckConsole(0x1Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(6);
      v25 = v13->u32[0];
      v26 = a1[1716].i32[1];
      if (v22)
      {
        printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v23, 30, v24, v13->i32[0], v26);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v27, 30, v28, v13->i32[0], a1[1716].i32[1]);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v23, 30, v24, v13->i32[0], v26);
      }
    }

    if (v13->i32[0])
    {
LABEL_43:
      a1[1716].i32[1] = 1;
    }

    else
    {
      a1[1716].i32[1] = 0;
    }

    a1[1725].i8[7] = 1;
    a1[1272].i32[0] = 2;
    if (a1[157].i32[0] < 1)
    {
      a1[157] = 0x100000000;
      a1[161].i32[0] = 1;
      a1[155].i32[0] &= ~0x400u;
      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v47 = AVE_Log_CheckConsole(0x1Eu);
        v48 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(6);
        if (v47)
        {
          printf("%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF\n", v48, 30, v49);
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(6);
        }

        syslog(3, "%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF");
      }
    }

    else
    {
      if (a1[141].i32[1] != 20)
      {
        a1[1345].i8[4] = 1;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v43 = AVE_Log_CheckConsole(0x1Eu);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(6);
        v46 = a1[157].u32[0];
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v44, 30, v45, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3512, a1[157].i32[0], a1[2236].i32[1]);
          v44 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(6);
        }

        syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v44, 30, v45, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3512, a1[157].u32[0], a1[2236].u32[1]);
      }
    }

    if (a1[162].i8[0])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v50 = AVE_Log_CheckConsole(3u);
        v51 = AVE_GetCurrTime();
        v52 = AVE_Log_GetLevelStr(4);
        if (!v50)
        {
          goto LABEL_87;
        }

        v53 = 3530;
        goto LABEL_86;
      }

      goto LABEL_109;
    }

    goto LABEL_95;
  }

  if (v8 == 2)
  {
    if (v13->i32[0] != 2)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 6))
      {
        v29 = AVE_Log_CheckConsole(0x1Eu);
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(6);
        v32 = v13->u32[0];
        v33 = a1[1716].i32[1];
        if (v29)
        {
          printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v30, 30, v31, v13->i32[0], v33);
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(6);
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v34, 30, v35, v13->i32[0], a1[1716].i32[1]);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v30, 30, v31, v13->i32[0], v33);
        }
      }

      if (v13->i32[0] == 1 && AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v54 = AVE_Log_CheckConsole(0x1Eu);
        v55 = AVE_GetCurrTime();
        v56 = AVE_Log_GetLevelStr(4);
        if (v54)
        {
          printf("%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_H264EntropyMode = CABAC and baseline profile. out of spec. set entropy to CAVLC\n", v55, 30, v56);
          v57 = AVE_GetCurrTime();
          v86 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_H264EntropyMode = CABAC and baseline profile. out of spec. set entropy to CAVLC", v57, 30, v86);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_H264EntropyMode = CABAC and baseline profile. out of spec. set entropy to CAVLC", v55, 30, v56);
        }
      }
    }

    a1[1716].i32[1] = 0;
    a1[1725].i8[7] = 0;
    a1[1272].i32[0] = 0;
    a1[157] = 0x100000000;
    a1[161].i32[0] = 1;
    a1[155].i32[0] &= ~0x400u;
    if (v13->i32[0] == 1)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v66 = AVE_Log_CheckConsole(0x1Eu);
        v67 = AVE_GetCurrTime();
        v68 = AVE_Log_GetLevelStr(4);
        if (v66)
        {
          printf("%lld %d AVE %s: %s:%d %s | profile %d but CABAC is on\n", v67, 30, v68, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3622, "pINS->FIGEntropyMode != EntropyModeCABAC", 2);
          v67 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | profile %d but CABAC is on", v67);
      }

      goto LABEL_109;
    }

    if (a1[162].i8[0])
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v74 = AVE_Log_CheckConsole(0x1Eu);
        v75 = AVE_GetCurrTime();
        v76 = AVE_Log_GetLevelStr(4);
        if (v74)
        {
          printf("%lld %d AVE %s: %s:%d %s | profile %d but bWeightedPrediction is on\n", v75, 30, v76, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3625, "(pINS->sSessionCfg.sEnc.sAlgCfg.sRef.iFeature & (1U<<0)) == 0", 2);
          v75 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | profile %d but bWeightedPrediction is on", v75);
      }

      goto LABEL_109;
    }

    goto LABEL_95;
  }

  if (v8 != 4)
  {
    if (v8 != 6)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if (v13->i32[0] == 2)
  {
    goto LABEL_69;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v36 = AVE_Log_CheckConsole(0x1Eu);
    v37 = AVE_GetCurrTime();
    v38 = AVE_Log_GetLevelStr(6);
    v39 = v13->u32[0];
    v40 = a1[1716].i32[1];
    if (v36)
    {
      printf("%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d\n", v37, 30, v38, v13->i32[0], v40);
      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v41, 30, v42, v13->i32[0], a1[1716].i32[1]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: FIGEntropyMode = %d -> change the default %d", v37, 30, v38, v13->i32[0], v40);
    }
  }

  if (v13->i32[0])
  {
LABEL_69:
    a1[1716].i32[1] = 1;
  }

  else
  {
    a1[1716].i32[1] = 0;
  }

  a1[1725].i8[7] = 0;
  a1[1272].i32[0] = 0;
  if (a1[157].i32[0] < 1)
  {
    a1[157] = 0x100000000;
    a1[161].i32[0] = 1;
    a1[155].i32[0] &= ~0x400u;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v62 = AVE_Log_CheckConsole(0x1Eu);
      v63 = AVE_GetCurrTime();
      v64 = AVE_Log_GetLevelStr(6);
      if (v62)
      {
        printf("%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF\n", v63, 30, v64);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF");
    }
  }

  else
  {
    if (a1[141].i32[1] != 20)
    {
      a1[1345].i8[4] = 1;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v58 = AVE_Log_CheckConsole(0x1Eu);
      v59 = AVE_GetCurrTime();
      v60 = AVE_Log_GetLevelStr(6);
      v61 = a1[157].u32[0];
      if (v58)
      {
        printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v59, 30, v60, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3580, a1[157].i32[0], a1[2236].i32[1]);
        v59 = AVE_GetCurrTime();
        v60 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v59, 30, v60, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", 3580, a1[157].u32[0], a1[2236].u32[1]);
    }
  }

  if (a1[162].i8[0])
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v65 = AVE_Log_CheckConsole(3u);
      v51 = AVE_GetCurrTime();
      v52 = AVE_Log_GetLevelStr(4);
      if (!v65)
      {
LABEL_87:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: bWeightedPredictionis true and usage is default. not yet supported...");
        goto LABEL_109;
      }

      v53 = 3597;
LABEL_86:
      printf("%lld %d AVE %s: %s:%d %s | FIG: bWeightedPredictionis true and usage is default. not yet supported...\n", v51, 3, v52, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", v53, "false");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      goto LABEL_87;
    }

LABEL_109:
    v71 = 0;
    v73 = -12902;
    goto LABEL_110;
  }

LABEL_95:
  if (a1[141].i32[1] == 3)
  {
    v69 = 0;
    v70 = 0;
    a1[1345].i8[4] = 1;
    a1[183].i32[0] = 0;
    if (a1[1344].i32[0] == 2)
    {
      v70 = a1[167].i32[0] & 0xFFFF7FAF;
      v69 = a1[169].i32[0] & 0x1E;
    }

    a1[167].i32[0] = v70;
    a1[169].i32[0] = v69;
  }

  v71 = 1;
  if (a1[1507].i8[4] != 1)
  {
    goto LABEL_102;
  }

  a1[141].i32[1] = 3;
  a1[1345].i8[4] = 1;
  a1[183].i32[0] = 0;
  a1[169].i32[0] = 0;
  a1[155].i32[0] &= ~0x400u;
  v72 = -6 * a1[1506].i32[1];
  a1[168].i32[1] = v72;
  a1[168].i32[0] = v72;
  a1[154].i32[1] = v72;
  a1[154].i32[0] = v72;
  a1[144].i32[0] = v72;
  a1[143].i32[1] = v72;
  a1[143].i32[0] = v72;
  a1[1501].i32[0] = 9;
  a1[1504].i32[1] = 17;
  a1[1716].i32[1] = 0;
  a1[167].i32[0] = 0;
  a1[1325].i32[1] = 0;
  if (a1[9].i32[1] >= 30)
  {
    v73 = 0;
    a1[1271].i8[2] = 1;
  }

  else
  {
LABEL_102:
    v73 = 0;
  }

LABEL_110:
  if (AVE_Log_CheckLevel(0x10u, 6))
  {
    v77 = AVE_Log_CheckConsole(0x10u);
    v78 = AVE_GetCurrTime();
    v79 = AVE_Log_GetLevelStr(6);
    if (v77)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d\n", v78, 16, v79, "AVE_H264NewDefaultsBasedOnProfileUsageDefault", a1, v8, v73);
      v78 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v78);
  }

  if (v71)
  {
    return 0;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v81 = AVE_Log_CheckConsole(3u);
    v82 = AVE_GetCurrTime();
    v83 = AVE_Log_GetLevelStr(4);
    if (v81)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264NewDefaultsBasedOnProfileUsageDefault failed\n", v82, 3, v83, "AVE_NewDefaultsBasedOnProfileUsageDefault", 3736, "err == noErr");
      v84 = AVE_GetCurrTime();
      v87 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264NewDefaultsBasedOnProfileUsageDefault failed", v84, 3, v87, "AVE_NewDefaultsBasedOnProfileUsageDefault", 3736, "err == noErr");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264NewDefaultsBasedOnProfileUsageDefault failed", v82, 3, v83, "AVE_NewDefaultsBasedOnProfileUsageDefault", 3736, "err == noErr");
    }
  }

  return 4294954394;
}