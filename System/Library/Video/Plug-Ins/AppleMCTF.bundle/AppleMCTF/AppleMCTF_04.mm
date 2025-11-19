void sub_527F4(__CVBuffer *a1, _DWORD *a2)
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

void sub_52AAC(__CVBuffer *a1, _DWORD *a2)
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

uint64_t sub_52DBC(CVPixelBufferRef pixelBuffer, int a2, FILE *a3)
{
  if (pixelBuffer && a3)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v7 = sub_5D820(PixelFormatType);
    if (v7)
    {
      v8 = v7;
      v9 = *(v7 + 6);
      result = 4294966295;
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          sub_527F4(pixelBuffer, v8);
        }

        if (v9 == 3)
        {
          sub_52AAC(pixelBuffer, v8);
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {

          return sub_52500(pixelBuffer, v8, a3);
        }
      }

      else
      {
        sub_52304(pixelBuffer, v8, a3);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x3Fu, 4))
      {
        v15 = sub_56AD0(0x3Fu);
        v16 = sub_66A18();
        v17 = sub_56B04(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x\n", v16, 63, v17, "AVE_PixelBuf_Dump", 1120, "pPixelFmt != __null", pixelBuffer, a2, a3, PixelFormatType);
          v18 = sub_66A18();
          v20 = sub_56B04(4);
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
    if (sub_56A8C(0x3Fu, 4))
    {
      v11 = sub_56AD0(0x3Fu);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v12, 63, v13, "AVE_PixelBuf_Dump", 1112, "pPixelBuf != __null && pFile != __null", pixelBuffer, a2, a3);
        v14 = sub_66A18();
        v19 = sub_56B04(4);
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

uint64_t sub_53078(__CVBuffer *a1, int a2)
{
  if (a1)
  {
    IOSurface = CVPixelBufferGetIOSurface(a1);
    BaseAddress = IOSurfaceGetBaseAddress(IOSurface);
    AllocSize = IOSurfaceGetAllocSize(IOSurface);
    memset(BaseAddress, a2, AllocSize);
    return 0;
  }

  else
  {
    if (sub_56A8C(0x3Fu, 4))
    {
      v7 = sub_56AD0(0x3Fu);
      v8 = sub_66A18();
      v9 = sub_56B04(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d\n", v8, 63, v9, "AVE_PixelBuf_SetValue", 1162, "pPixelBuf != __null", 0, a2);
        v8 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d", v8, 63);
    }

    return 4294966295;
  }
}

uint64_t sub_531B4(__CVBuffer *a1, __CVBuffer *a2)
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
        if (sub_56A8C(0x3Fu, 4))
        {
          v6 = sub_56AD0(0x3Fu);
          v7 = sub_66A18();
          v8 = sub_56B04(4);
          if (v6)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to create image transfer session, ret = %d\n", v7, 63, v8, "AVE_PixelBuf_Transfer", 2010, "ret == noErr", v5);
            v7 = sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create image transfer session, ret = %d", v7);
        }
      }

      else
      {
        v5 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, a1, a2);
        if (v5 && sub_56A8C(0x3Fu, 4))
        {
          v15 = sub_56AD0(0x3Fu);
          v16 = sub_66A18();
          v17 = sub_56B04(4);
          if (v15)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to transfer image, ret = %d\n", v16, 63, v17, "AVE_PixelBuf_Transfer", 2014, "ret == noErr", v5);
            v16 = sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to transfer image, ret = %d", v16);
        }
      }

      goto LABEL_25;
    }

    if (sub_56A8C(0x3Fu, 4))
    {
      v12 = sub_56AD0(0x3Fu);
      v13 = sub_66A18();
      v14 = sub_56B04(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | pDst is NULL\n", v13, 63, v14, "AVE_PixelBuf_Transfer", 2006, "pDst != __null");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | pDst is NULL");
    }
  }

  else
  {
    if (!sub_56A8C(0x3Fu, 4))
    {
      return 4294966295;
    }

    v9 = sub_56AD0(0x3Fu);
    v10 = sub_66A18();
    v11 = sub_56B04(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | pSrc is NULL\n", v10, 63, v11, "AVE_PixelBuf_Transfer", 2004, "pSrc != __null");
      sub_66A18();
      sub_56B04(4);
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

uint64_t sub_5355C(CFDictionaryRef theDict, uint64_t a2)
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
    sub_46E4C(theDict, kFigCaptureStreamMetadata_SNR, a2);
    sub_46E4C(theDict, kFigCaptureStreamMetadata_NormalizedSNR, (a2 + 8));
    sub_46E4C(theDict, kFigCaptureStreamMetadata_ExposureTime, (a2 + 16));
    sub_46E4C(theDict, kFigCaptureStreamMetadata_AGC, (a2 + 24));
    sub_46E4C(theDict, kFigCaptureStreamMetadata_ispDGain, (a2 + 32));
    sub_46E4C(theDict, kFigCaptureStreamMetadata_sensorDGain, (a2 + 40));
    sub_46E4C(theDict, kFigCaptureStreamMetadata_ispDGainRangeExpansionFactor, (a2 + 48));
    sub_470FC(theDict, kFigCaptureStreamMetadata_SensorID, (a2 + 64));
    sub_46E4C(theDict, kFigCaptureStreamMetadata_ScalingFactor, (a2 + 56));
    sub_470FC(theDict, kFigCaptureStreamMetadata_LuxLevel, (a2 + 68));
    if (sub_470FC(theDict, kFigCaptureStreamMetadata_TemporalNoiseReductionBand0Strength, (a2 + 72)) == -1008)
    {
      *(a2 + 72) = -1;
    }

    v4 = sub_46B9C(theDict, kFigCaptureStreamMetadata_TemporalNoiseReductionBand0StrengthModulationEnabled, &v20);
    v5 = v20;
    if (v4 == -1008)
    {
      v5 = -1;
    }

    *(a2 + 76) = v5;
    Value = CFDictionaryGetValue(theDict, kFigCaptureStreamMetadata_PortType);
    if (Value)
    {
      v7 = sub_4765C(Value, v21, 32);
      if (v7)
      {
        v8 = v7;
        v9 = &dword_C0A28;
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
        if (sub_56A8C(0x37u, 6))
        {
          v16 = sub_56AD0(0x37u);
          v17 = sub_66A18();
          v18 = sub_56B04(6);
          if (v16)
          {
            printf("%lld %d AVE %s: %s:%d SF: %f Port: %s %d\n", v17, 55, v18, "AVE_ISP_RetrieveMetadata", 120, *(a2 + 56), v8, v11);
            v17 = sub_66A18();
            sub_56B04(6);
            v19 = *(a2 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d SF: %f Port: %s %d", v17);
        }
      }
    }
  }

  else
  {
    if (sub_56A8C(0x37u, 4))
    {
      v12 = sub_56AD0(0x37u);
      v13 = sub_66A18();
      v14 = sub_56B04(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 55, v14, "AVE_ISP_RetrieveMetadata", 73, "pDict != __null && pData != __null", theDict, a2);
        v13 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 55);
    }

    return 4294966295;
  }

  return v4;
}

const void *sub_53954(__CVBuffer *a1)
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

uint64_t sub_539B4(__CVBuffer *a1, const void *a2)
{
  if (a1 && a2)
  {
    v4 = sub_53954(a1);
    if (v4)
    {
      v5 = v4;
      v6 = sub_5355C(v4, a2);
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
    if (sub_56A8C(0x37u, 4))
    {
      v8 = sub_56AD0(0x37u);
      v9 = sub_66A18();
      v10 = sub_56B04(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v9, 55, v10, "AVE_ISP_GetMetadata", 240, "pImgBuf != __null && pData != __null", a1, a2);
        v9 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v9, 55);
    }

    return 4294966295;
  }
}

uint64_t sub_53B04(uint32_t a1, void *a2)
{
  connect = 0;
  if (sub_56A8C(0x23u, 6))
  {
    v4 = sub_56AD0(0x23u);
    v5 = sub_66A18();
    v6 = sub_56B04(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %d %p\n", v5, 35, v6, "AVE_UC_Create", a1, a2);
      v7 = sub_66A18();
      v34 = sub_56B04(6);
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
      v12 = sub_66AA8(v11);
      kdebug_trace();
      if (v12)
      {
        if (sub_56A8C(0x23u, 4))
        {
          v13 = sub_56AD0(0x23u);
          v14 = sub_66A18();
          v15 = sub_56B04(4);
          if (v13)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d\n", v14, 35, v15, "AVE_UC_Create", 77, "ret == 0", a1, a2, v11, v12);
            v16 = sub_66A18();
            v35 = sub_56B04(4);
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
      if (sub_56A8C(0x23u, 4))
      {
        v23 = sub_56AD0(0x23u);
        v24 = sub_66A18();
        v25 = sub_56B04(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p\n", v24, 35, v25, "AVE_UC_Create", 67, "pService != 0", a1, a2);
          v26 = sub_66A18();
          v17 = 4;
          v27 = sub_56B04(4);
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
    if (sub_56A8C(0x23u, 4))
    {
      v18 = sub_56AD0(0x23u);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v19, 35, v20, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
        v21 = sub_66A18();
        v17 = 4;
        v22 = sub_56B04(4);
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

  if (sub_56A8C(0x23u, v17))
  {
    v29 = sub_56AD0(0x23u);
    v30 = sub_66A18();
    v31 = sub_56B04(v17);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d\n", v30, 35, v31, "AVE_UC_Create", a1, a2, v12);
      v32 = sub_66A18();
      sub_56B04(v17);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v30);
    }
  }

  return v12;
}

uint64_t sub_5405C(const void *a1)
{
  if (sub_56A8C(0x23u, 6))
  {
    v2 = sub_56AD0(0x23u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 35, v4, "AVE_UC_Destroy", a1);
      v5 = sub_66A18();
      v22 = sub_56B04(6);
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
    v7 = sub_66AA8(v6);
    if (v7)
    {
      v8 = 4;
      if (sub_56A8C(0x23u, 4))
      {
        v9 = sub_56AD0(0x23u);
        v10 = sub_66A18();
        v11 = sub_56B04(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d\n", v10, 35, v11, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
          v12 = sub_66A18();
          v8 = 4;
          v13 = sub_56B04(4);
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
    if (sub_56A8C(0x23u, 4))
    {
      v14 = sub_56AD0(0x23u);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 35, v16, "AVE_UC_Destroy", 121, "pUC != __null", 0);
        v15 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    a1 = 0;
    v7 = 4294966295;
  }

  if (sub_56A8C(0x23u, v8))
  {
    v17 = sub_56AD0(0x23u);
    v18 = sub_66A18();
    v19 = sub_56B04(v8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v18, 35, v19, "AVE_UC_Destroy", a1, v7);
      v20 = sub_66A18();
      v23 = sub_56B04(v8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v20, 35, v23, "AVE_UC_Destroy", a1, v7);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v18, 35, v19, "AVE_UC_Destroy", a1, v7);
    }
  }

  return v7;
}

uint64_t sub_5440C(const void *a1, uint64_t *a2, uint64_t *a3)
{
  outputStructCnt = 40;
  if (sub_56A8C(0x23u, 6))
  {
    v6 = sub_56AD0(0x23u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Open", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(6);
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
    v13 = sub_66AA8(v12);
    v14 = *a3;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (sub_56A8C(0x23u, 4))
      {
        v17 = sub_56AD0(0x23u);
        v18 = sub_66A18();
        v19 = sub_56B04(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x\n", v18, 35, v19, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v12);
          v20 = sub_66A18();
          v16 = 4;
          v21 = sub_56B04(4);
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
      if (sub_56A8C(0x23u, 4))
      {
        v31 = sub_56AD0(0x23u);
        v32 = sub_66A18();
        v33 = sub_56B04(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
          v34 = sub_66A18();
          v16 = 4;
          v35 = sub_56B04(4);
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
    if (sub_56A8C(0x23u, 4))
    {
      v22 = sub_56AD0(0x23u);
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = sub_66A18();
        v16 = 4;
        v26 = sub_56B04(4);
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

  if (sub_56A8C(0x23u, v16))
  {
    v27 = sub_56AD0(0x23u);
    v28 = sub_66A18();
    v29 = sub_56B04(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Open", a1, a2, a3, v13);
      v28 = sub_66A18();
      sub_56B04(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t sub_54944(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_56A8C(0x23u, 6))
  {
    v6 = sub_56AD0(0x23u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Close", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(6);
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
    v13 = sub_66AA8(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (sub_56A8C(0x23u, 4))
      {
        v17 = sub_56AD0(0x23u);
        v18 = sub_66A18();
        v19 = sub_56B04(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v12, v13);
          v20 = sub_66A18();
          v16 = 4;
          v21 = sub_56B04(4);
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
      if (sub_56A8C(0x23u, 4))
      {
        v31 = sub_56AD0(0x23u);
        v32 = sub_66A18();
        v33 = sub_56B04(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
          v34 = sub_66A18();
          v16 = 4;
          v35 = sub_56B04(4);
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
    if (sub_56A8C(0x23u, 4))
    {
      v22 = sub_56AD0(0x23u);
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = sub_66A18();
        v16 = 4;
        v26 = sub_56B04(4);
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

  if (sub_56A8C(0x23u, v16))
  {
    v27 = sub_56AD0(0x23u);
    v28 = sub_66A18();
    v29 = sub_56B04(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Close", a1, a2, a3, v13);
      v28 = sub_66A18();
      sub_56B04(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t sub_54E90(const void *a1, const void *a2, uint64_t *a3, void *a4)
{
  v43 = 0u;
  v44 = 0u;
  *reference = 0u;
  v42 = 0u;
  outputStructCnt = 32;
  if (sub_56A8C(0x23u, 6))
  {
    v8 = sub_56AD0(0x23u);
    v9 = sub_66A18();
    v10 = sub_56B04(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", v9, 35, v10, "AVE_UC_Config", a1, a2, a3, a4);
      v9 = sub_66A18();
      sub_56B04(6);
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
    v15 = sub_66AA8(v14);
    v16 = *a3;
    v17 = a3[1];
    kdebug_trace();
    if (v15)
    {
      v18 = 4;
      if (sub_56A8C(0x23u, 4))
      {
        v19 = sub_56AD0(0x23u);
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d\n", v20, 35, v21, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v14, v15);
          v22 = sub_66A18();
          v18 = 4;
          v23 = sub_56B04(4);
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
      if (sub_56A8C(0x23u, 4))
      {
        v34 = sub_56AD0(0x23u);
        v35 = sub_66A18();
        v36 = sub_56B04(4);
        if (v34)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v35, 35, v36, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
          v37 = sub_66A18();
          v18 = 4;
          v38 = sub_56B04(4);
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
    if (sub_56A8C(0x23u, 4))
    {
      v24 = sub_56AD0(0x23u);
      v25 = sub_66A18();
      v26 = sub_56B04(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v25, 35, v26, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
        v27 = sub_66A18();
        v18 = 4;
        v28 = sub_56B04(4);
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

  if (sub_56A8C(0x23u, v18))
  {
    v29 = sub_56AD0(0x23u);
    v30 = sub_66A18();
    v31 = sub_56B04(v18);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v30, 35, v31, "AVE_UC_Config", a1, a2, a3, a4, v15);
      v32 = sub_66A18();
      outputCnt = sub_56B04(v18);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v32, 35, outputCnt);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v30, 35, v31);
    }
  }

  return v15;
}

uint64_t sub_55448(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 336;
  if (sub_56A8C(0x23u, 6))
  {
    v6 = sub_56AD0(0x23u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Start", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(6);
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
    v13 = sub_66AA8(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (sub_56A8C(0x23u, 4))
      {
        v17 = sub_56AD0(0x23u);
        v18 = sub_66A18();
        v19 = sub_56B04(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v12, v13);
          v20 = sub_66A18();
          v16 = 4;
          v21 = sub_56B04(4);
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
      if (sub_56A8C(0x23u, 4))
      {
        v31 = sub_56AD0(0x23u);
        v32 = sub_66A18();
        v33 = sub_56B04(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
          v34 = sub_66A18();
          v16 = 4;
          v35 = sub_56B04(4);
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
    if (sub_56A8C(0x23u, 4))
    {
      v22 = sub_56AD0(0x23u);
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = sub_66A18();
        v16 = 4;
        v26 = sub_56B04(4);
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

  if (sub_56A8C(0x23u, v16))
  {
    v27 = sub_56AD0(0x23u);
    v28 = sub_66A18();
    v29 = sub_56B04(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Start", a1, a2, a3, v13);
      v28 = sub_66A18();
      sub_56B04(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t sub_55998(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_56A8C(0x23u, 6))
  {
    v6 = sub_56AD0(0x23u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Stop", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(6);
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
    v13 = sub_66AA8(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (sub_56A8C(0x23u, 4))
      {
        v17 = sub_56AD0(0x23u);
        v18 = sub_66A18();
        v19 = sub_56B04(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v12, v13);
          v20 = sub_66A18();
          v16 = 4;
          v21 = sub_56B04(4);
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
      if (sub_56A8C(0x23u, 4))
      {
        v31 = sub_56AD0(0x23u);
        v32 = sub_66A18();
        v33 = sub_56B04(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
          v34 = sub_66A18();
          v16 = 4;
          v35 = sub_56B04(4);
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
    if (sub_56A8C(0x23u, 4))
    {
      v22 = sub_56AD0(0x23u);
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = sub_66A18();
        v16 = 4;
        v26 = sub_56B04(4);
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

  if (sub_56A8C(0x23u, v16))
  {
    v27 = sub_56AD0(0x23u);
    v28 = sub_66A18();
    v29 = sub_56B04(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Stop", a1, a2, a3, v13);
      v28 = sub_66A18();
      sub_56B04(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t sub_55EE4(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_56A8C(0x23u, 8))
  {
    v6 = sub_56AD0(0x23u);
    v7 = sub_66A18();
    v8 = sub_56B04(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Process", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(8);
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
    v13 = sub_66AA8(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (sub_56A8C(0x23u, 4))
      {
        v17 = sub_56AD0(0x23u);
        v18 = sub_66A18();
        v19 = sub_56B04(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v12, v13);
          v20 = sub_66A18();
          v16 = 4;
          v21 = sub_56B04(4);
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
      if (sub_56A8C(0x23u, 4))
      {
        v31 = sub_56AD0(0x23u);
        v32 = sub_66A18();
        v33 = sub_56B04(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
          v34 = sub_66A18();
          v16 = 4;
          v35 = sub_56B04(4);
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
    if (sub_56A8C(0x23u, 4))
    {
      v22 = sub_56AD0(0x23u);
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = sub_66A18();
        v16 = 4;
        v26 = sub_56B04(4);
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

  if (sub_56A8C(0x23u, v16))
  {
    v27 = sub_56AD0(0x23u);
    v28 = sub_66A18();
    v29 = sub_56B04(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Process", a1, a2, a3, v13);
      v28 = sub_66A18();
      sub_56B04(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t sub_56430(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_56A8C(0x23u, 7))
  {
    v6 = sub_56AD0(0x23u);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Complete", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(7);
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
    v13 = sub_66AA8(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (sub_56A8C(0x23u, 4))
      {
        v17 = sub_56AD0(0x23u);
        v18 = sub_66A18();
        v19 = sub_56B04(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v12, v13);
          v20 = sub_66A18();
          v16 = 4;
          v21 = sub_56B04(4);
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
      if (sub_56A8C(0x23u, 4))
      {
        v31 = sub_56AD0(0x23u);
        v32 = sub_66A18();
        v33 = sub_56B04(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
          v34 = sub_66A18();
          v16 = 4;
          v35 = sub_56B04(4);
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
    if (sub_56A8C(0x23u, 4))
    {
      v22 = sub_56AD0(0x23u);
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = sub_66A18();
        v16 = 4;
        v26 = sub_56B04(4);
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

  if (sub_56A8C(0x23u, v16))
  {
    v27 = sub_56AD0(0x23u);
    v28 = sub_66A18();
    v29 = sub_56B04(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Complete", a1, a2, a3, v13);
      v28 = sub_66A18();
      sub_56B04(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t sub_5697C(unsigned int a1, int a2)
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
    v6 = *(&xmmword_C47F8 + a1);
  }

  byte_C4900[v5] = v6;
  if ((byte_C4940 & 0xFu) >= 7)
  {
    v7 = byte_C4940;
    v8 = sub_66A18();
    if ((v7 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d %d 0x%x\n", v8, 64, "VERB", "AVE_Log_UpdateConf", 116, a1, v4);
      v8 = sub_66A18();
    }

    syslog(3, "%lld %d AVE %s: %s:%d %d 0x%x", v8, 64, "VERB", "AVE_Log_UpdateConf", 116, a1, v4);
  }

  return 0;
}

BOOL sub_56A8C(unsigned int a1, int a2)
{
  if (a2 >= 0)
  {
    LOBYTE(v2) = a2;
  }

  else
  {
    v2 = -a2;
  }

  return a1 < 5 || a1 <= 0xFF && (v2 & 0xFu) <= (byte_C4900[a1] & 0xFu);
}

uint64_t sub_56AD0(unsigned int a1)
{
  if (a1 < 2)
  {
    return 1;
  }

  if (a1 <= 0xFF)
  {
    return (byte_C4900[a1] >> 4) & 1;
  }

  return 0;
}

void *sub_56B04(int a1)
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
    return &unk_7EA33;
  }

  else
  {
    return *(&off_C0A70 + v2);
  }
}

uint64_t sub_56B34()
{
  if (!qword_C4A08)
  {
    *&v0 = 0x505050505050505;
    *(&v0 + 1) = 0x505050505050505;
    xmmword_C4818 = v0;
    unk_C4828 = v0;
    xmmword_C48D8 = v0;
    unk_C48E8 = v0;
    xmmword_C48B8 = v0;
    unk_C48C8 = v0;
    xmmword_C4898 = v0;
    unk_C48A8 = v0;
    xmmword_C4878 = v0;
    unk_C4888 = v0;
    xmmword_C4858 = v0;
    unk_C4868 = v0;
    xmmword_C4838 = v0;
    unk_C4848 = v0;
    xmmword_C47F8 = v0;
    unk_C4808 = v0;
    BYTE4(xmmword_C47F8) = 6;
    BYTE12(xmmword_C4818) = 6;
    byte_C4835 = 6;
    *(&xmmword_C47F8 + 11) = 1542;
    BYTE5(xmmword_C4858) = 6;
    BYTE1(xmmword_C4838) = 6;
    dword_C48FC = 20000;
    dword_C48F8 = 25;
    sub_1BF94(byte_C4900, &xmmword_C47F8, 256);
    dword_C4A04 = dword_C48FC;
    dword_C4A00 = dword_C48F8;
    qword_C4A08 = 1;
  }

  return 0;
}

uint64_t sub_56BF4(int a1)
{
  if ((byte_C4940 & 0xEu) > 5)
  {
    v2 = byte_C4940;
    v3 = sub_66A18();
    if ((v2 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Enter %d\n", v3, 64, "INFO", "AVE_Log_UpdateConsole", a1);
      v3 = sub_66A18();
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d", v3, 64, "INFO", "AVE_Log_UpdateConsole", a1);
  }

  for (i = 0; i != 256; ++i)
  {
    byte_C4900[i] = byte_C4900[i] & 0xEF | (16 * ((byte_C4900[i] & 0xF) <= a1));
  }

  qword_C4A08 = sub_66A50();
  sub_56D4C();
  if ((byte_C4940 & 0xEu) >= 6)
  {
    v5 = byte_C4940;
    v6 = sub_66A18();
    if ((v5 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Exit %d %d\n", v6, 64, "INFO", "AVE_Log_UpdateConsole", a1, 0);
      v6 = sub_66A18();
    }

    syslog(3, "%lld %d AVE %s: %s Exit %d %d", v6, 64, "INFO", "AVE_Log_UpdateConsole", a1, 0);
  }

  return 0;
}

void sub_56D4C()
{
  if ((byte_C4940 & 0xFu) >= 7)
  {
    v0 = byte_C4940;
    v1 = sub_66A18();
    if ((v0 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d %llu\n", v1, 64, "VERB", "AVE_Log_Print", 85, qword_C4A08);
      v1 = sub_66A18();
    }

    syslog(3, "%lld %d AVE %s: %s:%d %llu", v1, 64, "VERB", "AVE_Log_Print", 85, qword_C4A08);
  }

  for (i = 0; i != 256; ++i)
  {
    if ((byte_C4940 & 0xFu) >= 7)
    {
      v3 = byte_C4940;
      v4 = sub_66A18();
      v5 = byte_C4900[i];
      if ((v3 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: Log Cfg: %3d = 0x%02x\n", v4, 64, "VERB", i, v5);
        v4 = sub_66A18();
        v5 = byte_C4900[i];
      }

      syslog(3, "%lld %d AVE %s: Log Cfg: %3d = 0x%02x", v4, 64, "VERB", i, v5);
    }
  }

  if ((byte_C4940 & 0xFu) >= 7)
  {
    v6 = byte_C4940;
    v7 = sub_66A18();
    if ((v6 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: Log Cfg: %d (us) %d%%\n", v7, 64, "VERB", dword_C4A04, dword_C4A00);
      v7 = sub_66A18();
    }

    syslog(3, "%lld %d AVE %s: Log Cfg: %d (us) %d%%", v7, 64, "VERB", dword_C4A04, dword_C4A00);
  }
}

uint64_t sub_56F30(void *a1, uint64_t a2)
{
  result = 4294966295;
  if (a1)
  {
    if (a2)
    {
      *a1 = qword_C4A08;
      sub_1BF94(a2, byte_C4900, 256);
      result = 0;
      *(a2 + 256) = dword_C4A00;
      *(a2 + 260) = dword_C4A04;
    }
  }

  return result;
}

uint64_t sub_56F9C(uint64_t a1, int a2, int a3)
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
      sub_5697C(i, a3);
    }
  }

  return 0;
}

uint64_t sub_5700C(unsigned int a1, unint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  if ((byte_C4940 & 0xEu) >= 6)
  {
    v5 = byte_C4940;
    v6 = sub_66A18();
    if ((v5 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Enter 0x%x 0x%llx\n", v6, 64, "INFO", "AVE_Log_PresetCfg", a1, a2);
      v6 = sub_66A18();
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

    sub_56F9C(v15, 32, a1);
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

    sub_1BF94(&byte_C4900[v8], &xmmword_C47F8 + v8, v11);
  }

  if ((a1 & 0xFFFFFEFF) != 0)
  {
    qword_C4A08 = sub_66A50();
  }

  sub_56D4C();
  if ((byte_C4940 & 0xEu) >= 6)
  {
    v12 = byte_C4940;
    v13 = sub_66A18();
    if ((v12 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Exit 0x%x 0x%llx %d\n", v13, 64, "INFO", "AVE_Log_PresetCfg", a1, a2, 0);
      v13 = sub_66A18();
    }

    syslog(3, "%lld %d AVE %s: %s Exit 0x%x 0x%llx %d", v13, 64, "INFO", "AVE_Log_PresetCfg", a1, a2, 0);
  }

  return 0;
}

uint64_t sub_57224(uint64_t a1)
{
  memset(v75, 0, 192);
  memset(&v74, 0, sizeof(v74));
  v73 = 0;
  v72 = 0;
  qword_C4180[0] = 0;
  qword_C4188 = 0;
  if (a1)
  {
    qword_C4180[0] = a1;
  }

  v1 = sub_20E10(v75, 192);
  if (v1 >= 1)
  {
    sub_63330(&v75[v1], 192 - v1, "%s", v2, v3, v4, v5, v6, "ave_log.cfg");
    qword_C4188 = v75;
  }

  for (i = 0; i != 4; ++i)
  {
    v8 = qword_C4180[i];
    if (!v8)
    {
      continue;
    }

    if (stat(qword_C4180[i], &v74))
    {
      if ((byte_C4940 & 8) != 0)
      {
        v9 = byte_C4940;
        v10 = sub_66A18();
        if ((v9 & 0x10) != 0)
        {
          printf("%lld %d AVE %s: %s:%d log config file doesn't exist at %s\n", v10, 64, "DBG", "AVE_Log_ReadCfg", 650, v8);
          sub_66A18();
        }

        syslog(3, "%lld %d AVE %s: %s:%d log config file doesn't exist at %s");
      }

      continue;
    }

    if ((byte_C4940 & 8) != 0)
    {
      v11 = byte_C4940;
      v12 = sub_66A18();
      if ((v11 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: %s:%d log config file is at %s\n", v12, 64, "DBG", "AVE_Log_ReadCfg", 654, v8);
        v12 = sub_66A18();
      }

      syslog(3, "%lld %d AVE %s: %s:%d log config file is at %s", v12, 64, "DBG", "AVE_Log_ReadCfg", 654, v8);
    }

    v13 = v74.st_mtimespec.tv_nsec / 1000 + 1000000 * v74.st_mtimespec.tv_sec;
    if (v13 == qword_C4A08 && qword_C4A08)
    {
      if ((byte_C4940 & 8) != 0)
      {
        v14 = byte_C4940;
        v15 = sub_66A18();
        if ((v14 & 0x10) != 0)
        {
          printf("%lld %d AVE %s: %s:%d log config file has been updated %s %llu\n", v15, 64, "DBG", "AVE_Log_ReadCfg", 662, v8, qword_C4A08);
          v15 = sub_66A18();
        }

        syslog(3, "%lld %d AVE %s: %s:%d log config file has been updated %s %llu", v15, 64, "DBG", "AVE_Log_ReadCfg", 662, v8, qword_C4A08);
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
        if ((byte_C4940 & 0xFu) >= 5)
        {
          v29 = byte_C4940;
          v30 = sub_66A18();
          if ((v29 & 0x10) != 0)
          {
            printf("%lld %d AVE %s: %s:%d used log config file is at %s %llu\n", v30, 64, "WARN", "AVE_Log_ReadCfg", 690, v8, v13);
            v30 = sub_66A18();
          }

          syslog(3, "%lld %d AVE %s: %s:%d used log config file is at %s %llu", v30, 64, "WARN", "AVE_Log_ReadCfg", 690, v8, v13);
        }

        qword_C4A08 = v13;
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
                if ((byte_C4940 & 0xFu) >= 5)
                {
                  v44 = byte_C4940;
                  v45 = sub_66A18();
                  if ((v44 & 0x10) != 0)
                  {
                    printf("%lld %d AVE %s: %s:%d Line too long, skipping %s:%lld\n", v45, 64, "WARN", "AVE_Log_ReadCfg", 732, v8, v39);
                    v45 = sub_66A18();
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d Line too long, skipping %s:%lld", v45, 64, "WARN", "AVE_Log_ReadCfg", 732, v8, v39);
                }

                goto LABEL_55;
              }

              sub_6335C(v34, v36, v71 + 1);
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

              v47 = &dword_C48F8;
              if (*v37)
              {
                v47 = v37;
              }

              dword_C4A00 = *v47;
              if ((byte_C4940 & 0xFu) < 7)
              {
                goto LABEL_55;
              }

              v48 = v37;
              v49 = byte_C4940;
              v50 = sub_66A18();
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
              v56 = sub_66A18();
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

            v52 = &dword_C48FC;
            if (*v38)
            {
              v52 = (v28 + 260);
            }

            dword_C4A04 = *v52;
            if ((byte_C4940 & 0xFu) < 7)
            {
              goto LABEL_55;
            }

            v70 = v37;
            v53 = byte_C4940;
            v54 = sub_66A18();
            v55 = *v38;
            if ((v53 & 0x10) != 0)
            {
              printf("%lld %d AVE %s: %s:%d Read interval %d (us)\n", v54, 64, "VERB", "AVE_Log_ReadCfg", 764, *v38);
              sub_66A18();
            }

            v68 = *v38;
            syslog(3, "%lld %d AVE %s: %s:%d Read interval %d (us)");
            goto LABEL_82;
          }

LABEL_83:
          if (ferror(v26))
          {
            if ((byte_C4940 & 0xC) != 0)
            {
              v57 = byte_C4940;
              v58 = sub_66A18();
              v59 = __error();
              v60 = strerror(*v59);
              if ((v57 & 0x10) != 0)
              {
                printf("%lld %d AVE %s: %s:%d error while reading config file: %s\n", v58, 64, "ERR", "AVE_Log_ReadCfg", 713, v60);
                v65 = sub_66A18();
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

              sub_5697C(j, *v64);
            }

            sub_56D4C();
            v24 = 0;
          }

          free(v34);
        }

        else
        {
          if ((byte_C4940 & 0xC) != 0)
          {
            v61 = byte_C4940;
            v62 = sub_66A18();
            if ((v61 & 0x10) != 0)
            {
              printf("%lld %d AVE %s: %s:%d %s | cannot allocate memory for line reader\n", v62, 64, "ERR", "AVE_Log_ReadCfg", 696, "pLineBuf != __null");
              v62 = sub_66A18();
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | cannot allocate memory for line reader", v62, 64, "ERR", "AVE_Log_ReadCfg", 696, "pLineBuf != __null");
          }

          v24 = 4294966293;
        }

        free(v28);
      }

      else
      {
        if ((byte_C4940 & 0xC) != 0)
        {
          v31 = byte_C4940;
          v32 = sub_66A18();
          if ((v31 & 0x10) != 0)
          {
            printf("%lld %d AVE %s: %s:%d %s | cannot allocate memory for log config\n", v32, 64, "ERR", "AVE_Log_ReadCfg", 686, "pTmpLog != __null");
            v32 = sub_66A18();
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | cannot allocate memory for log config", v32, 64, "ERR", "AVE_Log_ReadCfg", 686, "pTmpLog != __null");
        }

        v24 = 4294966293;
      }

      fclose(v26);
      return v24;
    }

    if ((byte_C4940 & 8) != 0)
    {
      v17 = byte_C4940;
      v18 = sub_66A18();
      v19 = __error();
      v20 = strerror(*v19);
      if ((v17 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: %s:%d log config file cannot be opened %s : %s\n", v18, 64, "DBG", "AVE_Log_ReadCfg", 673, v8, v20);
        v18 = sub_66A18();
        v21 = __error();
        strerror(*v21);
      }

      syslog(3, "%lld %d AVE %s: %s:%d log config file cannot be opened %s : %s", v18);
    }
  }

  if ((byte_C4940 & 8) != 0)
  {
    v22 = byte_C4940;
    v23 = sub_66A18();
    if ((v22 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d cannot find available config file\n", v23, 64, "DBG", "AVE_Log_ReadCfg", 679);
      v23 = sub_66A18();
    }

    syslog(3, "%lld %d AVE %s: %s:%d cannot find available config file", v23, 64, "DBG", "AVE_Log_ReadCfg", 679);
  }

  return 4294966288;
}

uint64_t sub_57D40(uint64_t result)
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

    result = sub_57224(v2);
    v3 = 256;
    for (i = 2; i != 10; i += 2)
    {
      if ((*v1 & v3) != 0)
      {
        sub_5700C(v3 + 7, *&v1[i]);
        result = 0;
      }

      v3 += 256;
    }

    v5 = v1[10];
    if (v5)
    {
      sub_56BF4(v5);
      return 0;
    }
  }

  return result;
}

float sub_57DCC(uint64_t a1, uint64_t a2, uint64_t a3)
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
  if (sub_56A8C(0xD8u, 7))
  {
    v10 = sub_56AD0(0xD8u);
    v11 = sub_66A18();
    v12 = sub_56B04(7);
    if (v10)
    {
      printf("%lld %d AVE %s: MP: histogram_diff() hdiff %lf sum_a %d\n", v11, 216, v12, v5, v4);
      v13 = sub_66A18();
      v15 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: MP: histogram_diff() hdiff %lf sum_a %d", v13, 216, v15, v5, v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: histogram_diff() hdiff %lf sum_a %d", v11, 216, v12, v5, v4);
    }
  }

  return v5 / v4;
}

BOOL sub_57EF0(float a1, float a2, float a3, float a4)
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

  if (sub_56A8C(0xD8u, 7))
  {
    v10 = sub_56AD0(0xD8u);
    v11 = sub_66A18();
    v12 = sub_56B04(7);
    if (v10)
    {
      printf("%lld %d AVE %s: MP: scene_change_detect() returns %d\n", v11, 216, v12, v9);
      v13 = sub_66A18();
      v15 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: MP: scene_change_detect() returns %d", v13, 216, v15, v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: scene_change_detect() returns %d", v11, 216, v12, v9);
    }
  }

  return v9;
}

void sub_58038(uint64_t a1, uint64_t a2)
{
  if (sub_56A8C(0xD8u, 7))
  {
    v4 = sub_56AD0(0xD8u);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
    v7 = *(a2 + 44);
    if (v4)
    {
      printf("%lld %d AVE %s: MP: accumulate_scene_info() display_order %d\n", v5, 216, v6, v7);
      v8 = sub_66A18();
      v31 = sub_56B04(7);
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

    sub_583F0(a1);
  }
}

void sub_583F0(double *a1)
{
  v2 = a1 + 3072;
  if (sub_56A8C(0xD8u, 7))
  {
    v3 = sub_56AD0(0xD8u);
    v4 = sub_66A18();
    v5 = sub_56B04(7);
    if (v3)
    {
      printf("%lld %d AVE %s: MP: seq_rc_info()\n", v4, 216, v5);
      v6 = sub_66A18();
      v74 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: MP: seq_rc_info()", v6, 216, v74);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: seq_rc_info()", v4, 216, v5);
    }
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v7 = sub_56AD0(0xD8u);
    v8 = sub_66A18();
    v9 = sub_56B04(7);
    v10 = *(v2 + 230);
    if (v7)
    {
      printf("%lld %d AVE %s:  total_scenes %u\n", v8, 216, v9, v10);
      v11 = sub_66A18();
      v75 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v11, 216, v75, *(v2 + 230));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v8, 216, v9, v10);
    }
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v12 = sub_56AD0(0xD8u);
    v13 = sub_66A18();
    v14 = sub_56B04(7);
    v15 = *(v2 + 231);
    if (v12)
    {
      printf("%lld %d AVE %s:  cnt_All %u\n", v13, 216, v14, v15);
      v16 = sub_66A18();
      v76 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v16, 216, v76, *(v2 + 231));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v13, 216, v14, v15);
    }
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v17 = sub_56AD0(0xD8u);
    v18 = sub_66A18();
    v19 = sub_56B04(7);
    v20 = *(a1 + 3188);
    if (v17)
    {
      printf("%lld %d AVE %s:  bits_All %llu\n", v18, 216, v19, v20);
      v21 = sub_66A18();
      v77 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v21, 216, v77, *(a1 + 3188));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v18, 216, v19, v20);
    }
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v22 = sub_56AD0(0xD8u);
    v23 = sub_66A18();
    v24 = sub_56B04(7);
    v25 = *(v2 + 237);
    if (v22)
    {
      printf("%lld %d AVE %s:  cnt_NORMAL %u\n", v23, 216, v24, v25);
      v26 = sub_66A18();
      v78 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v26, 216, v78, *(v2 + 237));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v23, 216, v24, v25);
    }
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v27 = sub_56AD0(0xD8u);
    v28 = sub_66A18();
    v29 = sub_56B04(7);
    v30 = *(a1 + 3191);
    if (v27)
    {
      printf("%lld %d AVE %s:  bits_NORMAL %llu\n", v28, 216, v29, v30);
      v31 = sub_66A18();
      v79 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v31, 216, v79, *(a1 + 3191));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v28, 216, v29, v30);
    }
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v32 = sub_56AD0(0xD8u);
    v33 = sub_66A18();
    v34 = sub_56B04(7);
    v35 = *(v2 + 240);
    if (v32)
    {
      printf("%lld %d AVE %s:  cnt_MIN %u\n", v33, 216, v34, v35);
      v36 = sub_66A18();
      v80 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v36, 216, v80, *(v2 + 240));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v33, 216, v34, v35);
    }
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v37 = sub_56AD0(0xD8u);
    v38 = sub_66A18();
    v39 = sub_56B04(7);
    v40 = *(v2 + 964);
    if (v37)
    {
      printf("%lld %d AVE %s:  bits_MIN %llu\n", v38, 216, v39, v40);
      v41 = sub_66A18();
      v81 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v41, 216, v81, *(v2 + 964));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v38, 216, v39, v40);
    }
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v42 = sub_56AD0(0xD8u);
    v43 = sub_66A18();
    v44 = sub_56B04(7);
    v45 = *(v2 + 243);
    if (v42)
    {
      printf("%lld %d AVE %s:  cnt_MAX %u\n", v43, 216, v44, v45);
      v46 = sub_66A18();
      v82 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v46, 216, v82, *(v2 + 243));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v43, 216, v44, v45);
    }
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v47 = sub_56AD0(0xD8u);
    v48 = sub_66A18();
    v49 = sub_56B04(7);
    v50 = *(a1 + 3194);
    if (v47)
    {
      printf("%lld %d AVE %s:  bits_MAX %llu\n", v48, 216, v49, v50);
      v51 = sub_66A18();
      v83 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v51, 216, v83, *(a1 + 3194));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v48, 216, v49, v50);
    }
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v52 = sub_56AD0(0xD8u);
    v53 = sub_66A18();
    v54 = sub_56B04(7);
    v55 = *(v2 + 246);
    if (v52)
    {
      printf("%lld %d AVE %s:  cnt_BLANK %u\n", v53, 216, v54, v55);
      v56 = sub_66A18();
      v84 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v56, 216, v84, *(v2 + 246));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v53, 216, v54, v55);
    }
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v57 = sub_56AD0(0xD8u);
    v58 = sub_66A18();
    v59 = sub_56B04(7);
    v60 = *(v2 + 988);
    if (v57)
    {
      printf("%lld %d AVE %s:  bits_BLANK %llu\n", v58, 216, v59, v60);
      v61 = sub_66A18();
      v85 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s:  bits_BLANK %llu", v61, 216, v85, *(v2 + 988));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_BLANK %llu", v58, 216, v59, v60);
    }
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v62 = sub_56AD0(0xD8u);
    v63 = sub_66A18();
    v64 = sub_56B04(7);
    v65 = *(v2 + 249);
    if (v62)
    {
      printf("%lld %d AVE %s:  avg_qscale %f\n", v63, 216, v64, *(v2 + 249));
      v63 = sub_66A18();
      v64 = sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s:  avg_qscale %f", v63, 216, v64, *(v2 + 249));
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v66 = sub_56AD0(0xD8u);
    v67 = sub_66A18();
    v68 = sub_56B04(7);
    v69 = *(a1 + 3198);
    if (v66)
    {
      printf("%lld %d AVE %s:  current_complexity %lf\n", v67, 216, v68, a1[3198]);
      v67 = sub_66A18();
      v68 = sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s:  current_complexity %lf", v67, 216, v68, a1[3198]);
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v70 = sub_56AD0(0xD8u);
    v71 = sub_66A18();
    v72 = sub_56B04(7);
    v73 = *(a1 + 3199);
    if (v70)
    {
      printf("%lld %d AVE %s:  totalcplxsum %lf\n", v71, 216, v72, a1[3199]);
      v71 = sub_66A18();
      v72 = sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s:  totalcplxsum %lf", v71, 216, v72, a1[3199]);
  }
}

_DWORD *sub_58C6C(uint64_t a1, _DWORD *a2)
{
  v60 = a2;
  if (sub_56A8C(0xD8u, 7))
  {
    v4 = sub_56AD0(0xD8u);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
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
      v5 = sub_66A18();
      v6 = sub_56B04(7);
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
    sub_59298((a1 + 25432), (a1 + 25488));
  }

  v10 = sub_59298((a1 + 25384), &v60);
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

    v22 = fmaxf(sub_57DCC(v10, (v60 + 40), v20 + 160) / (v21 * 0.0019531), 0.01);
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
      sub_58038(a1, v38);
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
    sub_58038(a1, v30);
    *(v30 + 1200) |= *(v30 + 44) == -1;
  }

  else
  {
    v37 = *(v30 + 36);
    *(v30 + 1200) = 0;
    if ((*(v30 + 80) & 1) != 0 || sub_57EF0(v32, (v33 / v32) / (v32 / v31), v32 / v31, v33 / v32) || *(*(a1 + 25488) + 1220) >= ((v37 * 6.0) + 0.5))
    {
      *(v30 + 1200) = 1;
    }

    sub_58038(a1, v30);
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v39 = sub_56AD0(0xD8u);
    v40 = sub_66A18();
    v41 = sub_56B04(7);
    v42 = *(v30 + 44);
    v43 = *(v30 + 80) & 1;
    v44 = *(v30 + 1200);
    if (v39)
    {
      printf("%lld %d AVE %s: MP: scene_change_pipeline() display_order %d forceKeyFrame %d scene_change %d\n", v40, 216, v41, v42, *(v30 + 80) & 1, v44);
      v45 = sub_66A18();
      v46 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() display_order %d forceKeyFrame %d scene_change %d", v45, 216, v46, *(v30 + 44), *(v30 + 80) & 1, *(v30 + 1200));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() display_order %d forceKeyFrame %d scene_change %d", v40, 216, v41, v42, *(v30 + 80) & 1, v44);
    }
  }

  if (sub_56A8C(0xD8u, 7))
  {
    v47 = sub_56AD0(0xD8u);
    v48 = sub_66A18();
    v49 = sub_56B04(7);
    v50 = v31;
    v51 = v32;
    v52 = v33;
    v53 = v36;
    v54 = v34;
    v55 = v35;
    if (v47)
    {
      printf("%lld %d AVE %s: MP: scene_change_pipeline() m0 %f m1 %f m2 %f m0m2 %f mdpa_ratio_p %f mdpa_ratio_n %f\n", v48, 216, v49, v50, v51, v52, v53, v54, v55);
      sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() m0 %f m1 %f m2 %f m0m2 %f mdpa_ratio_p %f mdpa_ratio_n %f");
  }

  if (*(v30 + 1200))
  {
    sub_59298((a1 + 25432), &v59);
    *(a1 + 25488) = v59;
  }

  v56 = vaddq_s64(*(a1 + 25416), xmmword_B6BC0);
  v60 = *(*(*(a1 + 25392) + ((*(a1 + 25416) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 25416) & 0x1FFLL));
  *(a1 + 25416) = v56;
  sub_5AFE0(a1 + 25384, 1);
  if (v60[300])
  {
    v60 = 0;
    v57 = *(a1 + 25464);
    if (*(*(*(a1 + 25440) + ((v57 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v57 & 0x1FF)) != *(a1 + 25488))
    {
      v60 = *(*(*(a1 + 25440) + ((*(a1 + 25464) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 25464) & 0x1FFLL));
      --*(a1 + 25472);
      *(a1 + 25464) = v57 + 1;
      sub_5AFE0(a1 + 25432, 1);
    }
  }

LABEL_20:
  if (sub_56A8C(0xD8u, 7))
  {
    v23 = sub_56AD0(0xD8u);
    v24 = sub_66A18();
    v25 = sub_56B04(7);
    if (v23)
    {
      printf("%lld %d AVE %s: MP: scene_change_pipeline() returns stats %p\n", v24, 216, v25, v60);
      v26 = sub_66A18();
      v58 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() returns stats %p", v26, 216, v58, v60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() returns stats %p", v24, 216, v25, v60);
    }
  }

  return v60;
}

void *sub_59298(void *result, void *a2)
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
    result = sub_5A968(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void sub_59320(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (sub_56A8C(0xD8u, 7))
    {
      v5 = sub_56AD0(0xD8u);
      v6 = sub_66A18();
      v7 = sub_56B04(7);
      v8 = *(a2 + 44);
      v9 = *(a2 + 64);
      if (v5)
      {
        printf("%lld %d AVE %s: MP: F %d frame_bits %u correction_bits %d\n", v6, 216, v7, v8, *(a2 + 64), a3);
        v10 = sub_66A18();
        v11 = sub_56B04(7);
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
        if (sub_56A8C(0xD8u, 7))
        {
          v14 = sub_56AD0(0xD8u);
          v15 = sub_66A18();
          v16 = sub_56B04(7);
          v17 = *(a2 + 44);
          v18 = *(a2 + 68);
          if (v14)
          {
            printf("%lld %d AVE %s: MP: F %d hdr_bits %u hdr_correction %d\n", v15, 216, v16, v17, *(a2 + 68), v13);
            v19 = sub_66A18();
            v20 = sub_56B04(7);
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

const void *sub_59578(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = (a1 + 3072);
  v7 = sub_56A8C(0xD8u, 7);
  if (v7)
  {
    v8 = sub_56AD0(0xD8u);
    v9 = sub_66A18();
    v10 = sub_56B04(7);
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
      v9 = sub_66A18();
      v10 = sub_56B04(7);
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
    sub_59320(v7, a1[v6[193] + 3166], *(a2 + 72));
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
        sub_5B0E8((a1 + 3169), v33);
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
    sub_5B130(a1[3169], v23, &v82, (v23 - a1[3169]) >> 3);
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
        sub_5B0E8((a1 + 3169), v38);
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
    sub_5B130(a1[3169], v28, &v81, (v28 - a1[3169]) >> 3);
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
        sub_5B0E8((a1 + 3169), v43);
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
    sub_5B040();
  }

  *v14 = a2;
  v16 = (v14 + 1);
LABEL_65:
  a1[3170] = v16;
  sub_5B130(a1[3169], v16, &v80, (v16 - a1[3169]) >> 3);
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
      v69 = sub_5B18C(v62, &v83, v68);
      v70 = (v67 - 8);
      if ((v67 - 8) == v69)
      {
        *v69 = v63;
      }

      else
      {
        *v69 = *v70;
        *v70 = v63;
        sub_5B130(v62, (v69 + 1), &v83, v69 + 1 - v62);
      }
    }

    a1[3170] -= 8;
    v71 = sub_58C6C(a1, v63);
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
  if (sub_56A8C(0xD8u, 7))
  {
    v74 = sub_56AD0(0xD8u);
    v75 = sub_66A18();
    v76 = sub_56B04(7);
    if (v74)
    {
      printf("%lld %d AVE %s: MP: enqueue_first_pass() returns stats %p\n", v75, 216, v76, v17);
      v77 = sub_66A18();
      v79 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: MP: enqueue_first_pass() returns stats %p", v77, 216, v79, v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: enqueue_first_pass() returns stats %p", v75, 216, v76, v17);
    }
  }

  return v17;
}

void sub_59B24(uint64_t a1)
{
  v1 = a1 + 24576;
  if (sub_56A8C(0xD8u, 7))
  {
    v3 = sub_56AD0(0xD8u);
    v4 = sub_66A18();
    v5 = sub_56B04(7);
    if (v3)
    {
      printf("%lld %d AVE %s: MP: FinalizeSeqRcInfo()\n", v4, 216, v5);
      v6 = sub_66A18();
      v54 = sub_56B04(7);
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
      sub_5A1C0(&v66, &v64);
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
    sub_5A1C0(&v66, &v64);
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

      v2 = sub_5B240(v12, v13, &v64, v16, 1, v2);
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
          sub_5B040();
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
          sub_5B1F8(&v66, v27);
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

  sub_5C3E4(v12, v13, &v64, v31, 1, v2);
  v64 = 0uLL;
  v65 = 0;
  v32 = v67[-1].n128_f32[3];
  v33 = v66[2];
  sub_5A298(&v64, 4uLL);
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
    if (sub_56A8C(0x2Eu, 8))
    {
      if (sub_56AD0(0x2Eu))
      {
        v39 = sub_66A18();
        v40 = sub_56B04(8);
        printf("%lld %d AVE %s: center %f left %f right %f count %u\n", v39, 46, v40, *(v64 + v34 + 4), *(v64 + v34 + 8), *(v64 + v34 + 12), *(v64 + v34));
      }

      v41 = sub_66A18();
      v42 = sub_56B04(8);
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
  v43 = sub_5D768(&__p, v66, v67, (v67 - v66) >> 4);
  sub_5A2C8(v43, &__p, &v64);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v44 = sub_5D768(&v58, v66, v67, (v67 - v66) >> 4);
  sub_5A2C8(v44, &v58, &v64);
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  v55 = 0;
  v56 = 0;
  v57 = 0;
  v45 = sub_5D768(&v55, v66, v67, (v67 - v66) >> 4);
  sub_5A2C8(v45, &v55, &v64);
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
  if (sub_56A8C(0x2Eu, 8))
  {
    if (sub_56AD0(0x2Eu))
    {
      v50 = sub_66A18();
      v51 = sub_56B04(8);
      printf("%lld %d AVE %s: log10_cplx quantized histogram : values %f %f %f %f counts %u %u %u %u\n", v50, 46, v51, *(v1 + 1168), *(v1 + 1172), *(v1 + 1176), *(v1 + 1180), *(v1 + 1152), *(v1 + 1156), *(v1 + 1160), *(v1 + 1164));
    }

    v52 = sub_66A18();
    v53 = sub_56B04(8);
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

void sub_5A134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = *(v27 - 120);
  if (v29)
  {
    *(v27 - 112) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_5A1C0(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_5B040();
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
      sub_5B1F8(a1, v10);
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

void sub_5A298(uint64_t a1, unint64_t a2)
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
    sub_5D670(a1, a2 - v2);
  }
}

void sub_5A2C8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (sub_56A8C(0xD8u, 7))
  {
    v5 = sub_56AD0(0xD8u);
    v6 = sub_66A18();
    v7 = sub_56B04(7);
    if (v5)
    {
      printf("%lld %d AVE %s: MP: QuantizeData()\n", v6, 216, v7);
      v8 = sub_66A18();
      v43 = sub_56B04(7);
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
          if (sub_56A8C(0x2Eu, 8))
          {
            v16 = sub_56AD0(0x2Eu);
            v17 = sub_66A18();
            v18 = sub_56B04(8);
            v19 = *(v13 + 8);
            v20 = *(v13 + 4);
            v21 = *(v13 + 12);
            v22 = *(v10 + 8);
            v23 = *(v10 + 4);
            v24 = *(v10 + 12);
            if (v16)
            {
              printf("%lld %d AVE %s: it %f %f %f q_it %f %f %f\n", v17, 46, v18, v19, v20, v21, v22, *(v10 + 4), v24);
              v17 = sub_66A18();
              v18 = sub_56B04(8);
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
              if (sub_56A8C(0x2Eu, 8))
              {
                v33 = sub_56AD0(0x2Eu);
                v34 = sub_66A18();
                v35 = sub_56B04(8);
                v36 = v29;
                v37 = v30;
                v38 = v31;
                v39 = v32;
                if (v33)
                {
                  printf("%lld %d AVE %s: left_overlap %f right_overlap %f l_count %f center %f\n", v34, 46, v35, v36, v37, v38, v39);
                  v34 = sub_66A18();
                  v35 = sub_56B04(8);
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

void sub_5A640(uint64_t *a1, uint64_t a2, FILE *a3)
{
  if (sub_56A8C(0xD8u, 7))
  {
    v6 = sub_56AD0(0xD8u);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: MP: %s\n", v7, 216, v8, "FlushStats");
      v9 = sub_66A18();
      v23 = sub_56B04(7);
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
    v11 = sub_2F840(a1);
    if (!v11)
    {
      break;
    }

    *(v11 + 44) = -1;
    v10 = sub_59578(a1, v11, 0);
    if (!sub_56A8C(0xD8u, 7))
    {
      goto LABEL_19;
    }

    v12 = sub_56AD0(0xD8u);
    v13 = sub_66A18();
    v14 = sub_56B04(7);
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
      v13 = sub_66A18();
      v14 = sub_56B04(7);
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

        if (v18 && sub_56A8C(0x2Eu, 4))
        {
          v19 = sub_56AD0(0x2Eu);
          v20 = sub_66A18();
          v21 = sub_56B04(4);
          if (v19)
          {
            printf("%lld %d AVE %s: MP: %s ERROR: VTMultiPassStorageSetDataAtTimeStamp failed ...\n", v20, 46, v21, "FlushStats");
            v22 = sub_66A18();
            v24 = sub_56B04(4);
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

  sub_3B454(a1);
  sub_59B24(a1);
  if (a3)
  {
    fseek(a3, 0, 0);
    fwrite(a1 + 3187, 1uLL, 0x108uLL, a3);
  }
}

void *sub_5A968(void *a1)
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
    sub_5AF98(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_5AB3C(a1, &v10);
}

void sub_5AAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_5AB3C(void *result, void *a2)
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

      sub_5AF98(result, v11);
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

const void **sub_5AC44(const void **result, void *a2)
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

      sub_5AF98(result, v9);
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

void *sub_5AD50(void *result, void *a2)
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

      sub_5AF98(result[4], v11);
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

const void **sub_5AE58(const void **result, void *a2)
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

      sub_5AF98(result[4], v9);
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

void sub_5AF64()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_5AF98(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_5AF64();
}

uint64_t sub_5AFE0(uint64_t a1, int a2)
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

void sub_5B058(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_5B0B4(exception, a1);
}

std::logic_error *sub_5B0B4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_5B0E8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_5AF64();
}

uint64_t sub_5B130(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

void *sub_5B18C(void *a1, uint64_t a2, uint64_t a3)
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

void sub_5B1F8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_5AF64();
}

__n128 sub_5B240(unsigned int *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
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

      result.n128_u64[0] = sub_5BA68(v12, v12 + 1, v12 + 8, v12 + 3, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_5BBEC(v12, a2);
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

        sub_5C134(v12, a2, a2, a3);
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
      v12 = sub_5BC70(v12, a2);
      goto LABEL_66;
    }

    v38 = sub_5BD30(v12, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_64;
    }

    v41 = sub_5BDF8(v12, v38, v39);
    v12 = (v38 + 1);
    if (sub_5BDF8((v38 + 1), a2, v42))
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
      sub_5B240(a1, v38, a3, -v14, a5 & 1);
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

__n128 sub_5BA68(__n128 *a1, __n128 *a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, __n128 result)
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

void *sub_5BBEC(void *result, void *a2)
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

unsigned int *sub_5BC70(unsigned int *a1, unsigned int *a2)
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

__int128 *sub_5BD30(__int128 *a1, __int128 *a2)
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

BOOL sub_5BDF8(uint64_t a1, __n128 *a2, __n128 a3)
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

      sub_5BA68(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
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

__int128 *sub_5C134(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
        sub_5C324(a1, a4, v8, v11--);
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
          sub_5C324(a1, a4, v8, a1);
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

uint64_t sub_5C324(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
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

__n128 sub_5C3E4(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
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

      result.n128_u64[0] = sub_5CC0C(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_5CD90(v12, a2);
      }

      else
      {

        sub_5CE1C(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        sub_5D398(v12, a2, a2, a3);
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
      v12 = sub_5CE80(v12, a2);
      goto LABEL_66;
    }

    v36 = sub_5CF68(v12, a2);
    if ((v38 & 1) == 0)
    {
      goto LABEL_64;
    }

    v39 = sub_5D054(v12, v36, v37);
    v12 = v36 + 1;
    if (sub_5D054(v36 + 1, a2, v40))
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
      sub_5C3E4(a1, v36, a3, -v14, a5 & 1);
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

__n128 sub_5CC0C(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
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

void *sub_5CD90(void *result, void *a2)
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

uint64_t sub_5CE1C(uint64_t result, uint64_t a2)
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

unint64_t sub_5CE80(float *a1, float *a2)
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

__int128 *sub_5CF68(__int128 *a1, float *a2)
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

BOOL sub_5D054(__n128 *a1, __n128 *a2, __n128 a3)
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
        sub_5CC0C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
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

__int128 *sub_5D398(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
        sub_5D544(a1, a4, v8, v11--);
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
          sub_5D544(a1, a4, v8, a1);
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
          sub_5D60C(a1, (v17 + 1), a4, (v17 - a1 + 16) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_5D544(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
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

uint64_t sub_5D60C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_5D670(const void **a1, unint64_t a2)
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
      sub_5B040();
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
      sub_5B1F8(a1, v12);
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

uint64_t sub_5D768(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_5D7E4(result, a4);
  }

  return result;
}

void sub_5D7C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_5D7E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_5B1F8(a1, a2);
  }

  sub_5B040();
}

const char *sub_5D820(int a1)
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

uint64_t sub_5D858(_DWORD *a1)
{
  v1 = a1[8];
  v2 = &dword_B6BE0;
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

uint64_t sub_5D8F8(int a1, int *a2, int a3)
{
  if (sub_56A8C(0xD4u, 8))
  {
    v6 = sub_56AD0(0xD4u);
    v7 = sub_66A18();
    v8 = sub_56B04(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %d\n", v7, 212, v8, "AVE_PS_CalcSizeOfavcC", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %p %d", v7);
  }

  if (sub_56A8C(0xD4u, 8))
  {
    v9 = sub_56AD0(0xD4u);
    v10 = sub_66A18();
    v11 = sub_56B04(8);
    v12 = *a2;
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d pInfo->iNum %d\n", v10, 212, v11, "AVE_PS_CalcSizeOfavcC", 80, v12);
      v13 = sub_66A18();
      v14 = sub_56B04(8);
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
          if (sub_56A8C(0xD4u, 8))
          {
            v18 = sub_56AD0(0xD4u);
            v19 = sub_66A18();
            v20 = sub_56B04(8);
            v21 = *v16;
            if (v18)
            {
              printf("%lld %d AVE %s: %s:%d i %d iSize %d size %d\n", v19, 212, v20, "AVE_PS_CalcSizeOfavcC", 92, v15, *v16, v17);
              v19 = sub_66A18();
              v20 = sub_56B04(8);
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
    if (sub_56A8C(0xD4u, 8))
    {
      v23 = sub_56AD0(0xD4u);
      v24 = sub_66A18();
      v25 = sub_56B04(8);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d size %d\n", v24, 212, v25, "AVE_PS_CalcSizeOfavcC", 101, v17 + 4);
        v26 = sub_66A18();
        v32 = sub_56B04(8);
        syslog(3, "%lld %d AVE %s: %s:%d size %d", v26, 212, v32, "AVE_PS_CalcSizeOfavcC", 101, v17 + 4);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d size %d", v24, 212, v25, "AVE_PS_CalcSizeOfavcC", 101, v17 + 4);
      }
    }
  }

  if (sub_56A8C(0xD4u, 8))
  {
    v27 = sub_56AD0(0xD4u);
    v28 = sub_66A18();
    v29 = sub_56B04(8);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d %d\n", v28, 212, v29, "AVE_PS_CalcSizeOfavcC", a1, a2, v33, v22);
      v30 = sub_66A18();
      sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d", v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d", v28);
    }
  }

  return v22;
}

uint64_t sub_5DD64(int a1, char *a2, unsigned int *a3, int *a4, _BYTE *a5, int a6)
{
  if (sub_56A8C(0xD4u, 8))
  {
    v10 = sub_56AD0(0xD4u);
    v11 = sub_66A18();
    v12 = sub_56B04(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p %d\n", v11, 212, v12, "AVE_PS_Compose_avcC", a1, a2, a3, a4, a5, a6);
      v13 = sub_66A18();
      v53 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p %d", v13, 212, v53, "AVE_PS_Compose_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p %d", v11, 212, v12, "AVE_PS_Compose_avcC");
    }
  }

  *a5 = 1;
  a5[1] = sub_42340(*a4);
  v14 = a4[5];
  v15 = a4[6];
  v16 = (a4[2] << 6) | (a4[1] << 7) | (32 * a4[3]) | (16 * a4[4]) | (8 * v14) | (4 * v15);
  a5[2] = (*(a4 + 8) << 6) | (*(a4 + 4) << 7) | (32 * *(a4 + 12)) | (16 * *(a4 + 16)) | (8 * v14) | (4 * v15);
  a5[3] = sub_42468(a4[7]);
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
    if (sub_56A8C(0xD4u, 4))
    {
      v37 = sub_56AD0(0xD4u);
      v38 = sub_66A18();
      v39 = sub_56B04(4);
      if (!v37)
      {
        v56 = *a3;
        v55 = 191;
        v54 = v39;
        v46 = "%lld %d AVE %s: %s:%d %s | no SPS %d";
        goto LABEL_34;
      }

      printf("%lld %d AVE %s: %s:%d %s | no SPS %d\n", v38, 212, v39, "AVE_PS_Compose_avcC", 191, "cnt != 0", *a3);
      v40 = sub_66A18();
      sub_56B04(4);
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
    if (sub_56A8C(0xD4u, 4))
    {
      v42 = sub_56AD0(0xD4u);
      v38 = sub_66A18();
      v43 = sub_56B04(4);
      if (v42)
      {
        printf("%lld %d AVE %s: %s:%d %s | no PPS %d\n", v38, 212, v43, "AVE_PS_Compose_avcC", 226, "cnt != 0", *a3);
        v44 = sub_66A18();
        sub_56B04(4);
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
  if (sub_56A8C(0xD4u, 8))
  {
    v47 = sub_56AD0(0xD4u);
    v48 = sub_66A18();
    v49 = sub_56B04(8);
    if (v47)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d %d\n", v48, 212, v49, "AVE_PS_Compose_avcC", a1, a2, a3, a4, a5, a6, v36);
      v50 = sub_66A18();
      v51 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d %d", v50, 212, v51, "AVE_PS_Compose_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d %d", v48, 212, v49, "AVE_PS_Compose_avcC");
    }
  }

  return v36;
}

uint64_t sub_5E300(int a1, unsigned int *a2, int a3, int a4)
{
  if (sub_56A8C(0xD4u, 8))
  {
    v8 = sub_56AD0(0xD4u);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %d %d\n", v9, 212, v10, "AVE_PS_CalcSizeOfhvcC", a1, a2, a3, a4);
      v9 = sub_66A18();
      sub_56B04(8);
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
  if (sub_56A8C(0xD4u, 8))
  {
    v19 = sub_56AD0(0xD4u);
    v20 = sub_66A18();
    v21 = sub_56B04(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d %d %d\n", v20, 212, v21, "AVE_PS_CalcSizeOfhvcC", a1, a2, a3, a4, v18);
      v22 = sub_66A18();
      sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d %d", v22, 212);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d %d", v20, 212);
    }
  }

  return v18;
}

uint64_t sub_5E564(int a1, unsigned int a2, char *a3, unsigned int *a4, _BYTE *a5)
{
  if (sub_56A8C(0xD4u, 8))
  {
    v9 = sub_56AD0(0xD4u);
    v10 = sub_66A18();
    v11 = sub_56B04(8);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %p %p %p\n", v10, 212, v11, "AVE_PS_ComposeNALUArray", a1, a2, a3, a4, a5);
      v12 = sub_66A18();
      v43 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %d %p %p %p", v12, 212, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %d %p %p %p", v10, 212, v11);
    }
  }

  if (a2 - 1 <= 2)
  {
    *a5 = (a2 - 1) | 0xA0;
    v13 = *a4;
    v48 = a4;
    if (*a4 >= 1)
    {
      v14 = 0;
      v15 = 0;
      v46 = a3;
      v47 = a3 + 4;
      v16 = a4 + 1;
      v17 = 3;
      v18 = a1;
      do
      {
        v19 = &v16[4 * v14];
        v20 = v19[3];
        if (v20 && *v19 == __PAIR64__(v18, a2))
        {
          v51 = v15;
          *&a5[v17] = bswap32(v20 - 4) >> 16;
          v49 = v17 + 2;
          v50 = v20 - 4;
          v21 = (v20 - 4);
          memcpy(&a5[v49], &v47[v19[2]], v21);
          if (sub_56A8C(0xD4u, 8))
          {
            v22 = sub_56AD0(0xD4u);
            v23 = sub_66A18();
            v24 = sub_56B04(8);
            v25 = *v19;
            v26 = v19[1];
            if (v22)
            {
              printf("%lld %d AVE %s: type %d layer id %d\n", v23, 212, v24, *v19, v26);
              v23 = sub_66A18();
              v24 = sub_56B04(8);
              v25 = *v19;
              v26 = v19[1];
            }

            syslog(3, "%lld %d AVE %s: type %d layer id %d", v23, 212, v24, v25, v26);
          }

          if (v21)
          {
            v27 = 0;
            v28 = v46;
            do
            {
              if (sub_56A8C(0xD4u, 8))
              {
                v29 = sub_56AD0(0xD4u);
                v30 = sub_66A18();
                v31 = sub_56B04(8);
                v32 = &v28[v19[2]];
                v33 = *v32;
                if (v29)
                {
                  printf("%lld %d AVE %s: %p: 0x%x\n", v30, 212, v31, &v28[v19[2]], v33);
                  v30 = sub_66A18();
                  v31 = sub_56B04(8);
                  v32 = &v28[v19[2]];
                  v33 = *v32;
                }

                syslog(3, "%lld %d AVE %s: %p: 0x%x", v30, 212, v31, v32, v33);
              }

              v27 += 2;
              v28 += 2;
            }

            while (v27 < v21);
          }

          v17 = v49 + v50;
          v15 = v51 + 1;
          a4 = v48;
          v13 = *v48;
          v18 = a1;
        }

        ++v14;
      }

      while (v14 < v13);
      a3 = v46;
      if (v15)
      {
        *(a5 + 1) = BYTE1(v15) | (v15 << 8);
        goto LABEL_31;
      }
    }

    if (sub_56A8C(0xD4u, 4))
    {
      v34 = sub_56AD0(0xD4u);
      v35 = sub_66A18();
      v36 = sub_56B04(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | no PS %d\n", v35, 212, v36, "AVE_PS_ComposeNALUArray", 489, "cnt != 0", *a4);
        v35 = sub_66A18();
        sub_56B04(4);
        v37 = *v48;
        a4 = v48;
      }

      else
      {
        v45 = *a4;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | no PS %d", v35);
    }
  }

  v17 = 4294966295;
LABEL_31:
  if (sub_56A8C(0xD4u, 8))
  {
    v38 = sub_56AD0(0xD4u);
    v39 = sub_66A18();
    v40 = sub_56B04(8);
    if (v38)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %p %p %p %d\n", v39, 212, v40, "AVE_PS_ComposeNALUArray", a1, a2, a3, a4, a5, v17);
      v41 = sub_66A18();
      v44 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %p %p %d", v41, 212, v44, "AVE_PS_ComposeNALUArray");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %p %p %d", v39, 212, v40, "AVE_PS_ComposeNALUArray");
    }
  }

  return v17;
}

uint64_t sub_5EA64(uint64_t a1, char *a2, int *a3, uint64_t a4, int a5, const void *a6, int a7, uint64_t a8, _BYTE *a9, int a10)
{
  if (sub_56A8C(0xD4u, 8))
  {
    v14 = sub_56AD0(0xD4u);
    v15 = sub_66A18();
    v16 = sub_56B04(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p %d\n", v15, 212, v16, "AVE_PS_Compose_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      v48 = sub_66A18();
      v17 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p %d", v48, 212, v17, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p %d", v15, 212, v16, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }
  }

  *a9 = 1;
  v18 = *(a8 + 20);
  LOBYTE(v18) = (32 * sub_72538(*(a8 + 24))) | (v18 << 6);
  a9[1] = v18 | sub_72410(*(a8 + 28));
  sub_62A40(a8, (a9 + 2), 4);
  sub_62A94(a8, a9 + 6, 6);
  a9[12] = sub_7265C(*(a8 + 80));
  *(a9 + 13) = 240;
  a9[15] = -4;
  a9[16] = *(a8 + 452) | 0xFC;
  a9[17] = *(a8 + 496) | 0xF8;
  a9[18] = *(a8 + 500) | 0xF8;
  *(a9 + 19) = 0;
  a9[21] = 11;
  v19 = sub_5F1F8(a3, a1);
  v20 = a4 != 0;
  if (a6)
  {
    ++v20;
  }

  a9[22] = v20 + v19;
  v21 = sub_5E564(a1, 1u, a2, a3, a9 + 23);
  if (v21 <= 0)
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v32 = sub_56AD0(0xD4u);
      v33 = sub_66A18();
      v34 = sub_56B04(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose VPS failed\n", v33, 212, v34, "AVE_PS_Compose_hvcC", 593, "retOffset > 0");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose VPS failed");
    }

    goto LABEL_32;
  }

  v22 = (v21 + 23);
  v23 = sub_5E564(a1, 2u, a2, a3, &a9[v22]);
  if (v23 <= 0)
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v35 = sub_56AD0(0xD4u);
      v36 = sub_66A18();
      v37 = sub_56B04(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose SPS failed\n", v36, 212, v37, "AVE_PS_Compose_hvcC", 599, "retOffset > 0");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose SPS failed");
    }

    goto LABEL_32;
  }

  v24 = (v23 + v22);
  v25 = sub_5E564(a1, 3u, a2, a3, &a9[v24]);
  if (v25 <= 0)
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v38 = sub_56AD0(0xD4u);
      v39 = sub_66A18();
      v40 = sub_56B04(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose PPS failed\n", v39, 212, v40, "AVE_PS_Compose_hvcC", 605, "retOffset > 0");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose PPS failed");
    }

LABEL_32:
    v41 = 4294966296;
    goto LABEL_33;
  }

  v26 = v25 + v24;
  if (a4)
  {
    v27 = &a9[v26];
    *v27 = -89;
    *(v27 + 1) = 256;
    *(v27 + 3) = ((a5 - 4) >> 8) | ((a5 - 4) << 8);
    v26 = (v26 + 5);
    memcpy(&a9[v26], (a4 + 4), a5 - 4);
    LODWORD(v26) = v26 + a5 - 4;
  }

  if (a6)
  {
    v28 = &a9[v26];
    *v28 = -89;
    *(v28 + 1) = 256;
    *(v28 + 3) = BYTE1(a7) | (a7 << 8);
    v26 = v26 + 5;
    memcpy(&a9[v26], a6, a7);
    LODWORD(v26) = v26 + a7;
  }

  if (v26 <= a10)
  {
    v41 = 0;
  }

  else
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v29 = sub_56AD0(0xD4u);
      v30 = sub_66A18();
      v31 = sub_56B04(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d offset > num %d > %d\n", v30, 212, v31, "AVE_PS_Compose_hvcC", 651, v26, a10);
        v30 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d offset > num %d > %d", v30);
    }

    v41 = 4294966277;
  }

LABEL_33:
  if (sub_56A8C(0xD4u, 8))
  {
    v42 = sub_56AD0(0xD4u);
    v43 = sub_66A18();
    v44 = sub_56B04(8);
    if (v42)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d %d\n", v43, 212, v44, "AVE_PS_Compose_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v41);
      v45 = sub_66A18();
      v47 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d %d", v45, 212, v47, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d %d", v43, 212, v44, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }
  }

  return v41;
}

uint64_t sub_5F1F8(int *a1, int a2)
{
  if (sub_56A8C(0xD4u, 8))
  {
    v4 = sub_56AD0(0xD4u);
    v5 = sub_66A18();
    v6 = sub_56B04(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d\n", v5, 212, v6, "AVE_PS_CalcNumOfType", a1, a2);
      v7 = sub_66A18();
      v20 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v7, 212, v20, "AVE_PS_CalcNumOfType", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v5, 212, v6, "AVE_PS_CalcNumOfType", a1, a2);
    }
  }

  if (a1)
  {
    v8 = 0;
    for (i = 1; i != 4; ++i)
    {
      if (*a1 >= 1)
      {
        v10 = *a1;
        v11 = a1 + 2;
        while (*(v11 - 1) != i || *v11 != a2)
        {
          v11 += 4;
          if (!--v10)
          {
            goto LABEL_14;
          }
        }

        v8 = (v8 + 1);
      }

LABEL_14:
      ;
    }
  }

  else
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v12 = sub_56AD0(0xD4u);
      v13 = sub_66A18();
      v14 = sub_56B04(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d\n", v13, 212, v14, "AVE_PS_CalcNumOfType", 386, "psInfo != __null", 0, a2);
        v13 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d", v13, 212);
    }

    v8 = 0xFFFFFFFFLL;
  }

  if (sub_56A8C(0xD4u, 8))
  {
    v15 = sub_56AD0(0xD4u);
    v16 = sub_66A18();
    v17 = sub_56B04(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d\n", v16, 212, v17, "AVE_PS_CalcNumOfType", a1, a2, v8);
      v18 = sub_66A18();
      sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v16);
    }
  }

  return v8;
}

uint64_t sub_5F4D4(int a1, unsigned int *a2)
{
  if (sub_56A8C(0xD4u, 8))
  {
    v4 = sub_56AD0(0xD4u);
    v5 = sub_66A18();
    v6 = sub_56B04(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %d %p\n", v5, 212, v6, "AVE_PS_CalcSizeOflhvC", a1, a2);
      v7 = sub_66A18();
      v18 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", v7, 212, v18, "AVE_PS_CalcSizeOflhvC", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", v5, 212, v6, "AVE_PS_CalcSizeOflhvC", a1, a2);
    }
  }

  v19 = 0;
  v8 = *a2;
  if (v8 < 1)
  {
    v10 = 6;
  }

  else
  {
    v9 = a2 + 2;
    v10 = 6;
    do
    {
      v11 = v9[2];
      if (v11)
      {
        if (*v9 == a1)
        {
          v12 = *(v9 - 1);
          if ((v12 & 0xFFFFFFFE) == 2)
          {
            if ((*(&v19 + v12) & 1) == 0)
            {
              LODWORD(v10) = v10 + 3;
              *(&v19 + v12) = 1;
            }

            v10 = (v11 + v10 - 2);
          }
        }
      }

      v9 += 4;
      --v8;
    }

    while (v8);
  }

  if (sub_56A8C(0xD4u, 8))
  {
    v13 = sub_56AD0(0xD4u);
    v14 = sub_66A18();
    v15 = sub_56B04(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d\n", v14, 212, v15, "AVE_PS_CalcSizeOflhvC", a1, a2, v10);
      v16 = sub_66A18();
      sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v14);
    }
  }

  return v10;
}

uint64_t sub_5F6E8(int a1, char *a2, int *a3, const void *a4, _BYTE *a5, int a6)
{
  if (sub_56A8C(0xD4u, 8))
  {
    v12 = sub_56AD0(0xD4u);
    v13 = sub_66A18();
    v14 = sub_56B04(8);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %d\n", v13, 212, v14, "AVE_PS_Compose_lhvC", a2, a3, a4, a5, a6);
      v15 = sub_66A18();
      v31 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %d", v15, 212, v31);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %d", v13, 212, v14);
    }
  }

  *a5 = -67047423;
  a5[4] = -53;
  a5[5] = sub_5F1F8(a3, a1);
  v16 = sub_5E564(a1, 2u, a2, a3, a5 + 6);
  if (v16 <= 0)
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v20 = sub_56AD0(0xD4u);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose SPS failed\n", v21, 212, v22, "AVE_PS_Compose_lhvC", 789, "retOffset > 0");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose SPS failed");
    }

    goto LABEL_18;
  }

  v17 = (v16 + 6);
  v18 = sub_5E564(a1, 3u, a2, a3, &a5[v17]);
  if (v18 <= 0)
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v23 = sub_56AD0(0xD4u);
      v24 = sub_66A18();
      v25 = sub_56B04(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose PPS failed\n", v24, 212, v25, "AVE_PS_Compose_lhvC", 795, "retOffset > 0");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose PPS failed");
    }

LABEL_18:
    v19 = 4294966296;
    goto LABEL_19;
  }

  if (v18 + v17 <= a6)
  {
    v19 = 0;
  }

  else
  {
    v19 = 4294966277;
  }

LABEL_19:
  if (sub_56A8C(0xD4u, 8))
  {
    v26 = sub_56AD0(0xD4u);
    v27 = sub_66A18();
    v28 = sub_56B04(8);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d %d\n", v27, 212, v28, "AVE_PS_Compose_lhvC", a2, a3, a4, a5, a6, v19);
      v29 = sub_66A18();
      v32 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d %d", v29, 212, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d %d", v27, 212, v28);
    }
  }

  return v19;
}

uint64_t sub_5FAB4(int a1, char *a2, int *a3, int *a4, __CFData **a5)
{
  if (sub_56A8C(0xD4u, 8))
  {
    v10 = sub_56AD0(0xD4u);
    v11 = sub_66A18();
    v12 = sub_56B04(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", v11, 212, v12, "AVE_PS_Make_avcC", a1, a2, a3, a4, a5);
      v13 = sub_66A18();
      v52 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v52);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v11, 212, v12);
    }
  }

  if (!a2 || !a3 || !a4 || !a5)
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v24 = sub_56AD0(0xD4u);
      v25 = sub_66A18();
      v26 = sub_56B04(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v25, 212, v26, "AVE_PS_Make_avcC", 835, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null", a1, a2, a3, a4, a5);
        v27 = sub_66A18();
        v54 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v27, 212, v54, "AVE_PS_Make_avcC", 835);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v25, 212, v26, "AVE_PS_Make_avcC", 835);
      }
    }

    goto LABEL_29;
  }

  *a5 = 0;
  v14 = sub_5D8F8(a1, a3, *a4);
  if (v14 <= 0)
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v28 = sub_56AD0(0xD4u);
      v29 = sub_66A18();
      v30 = sub_56B04(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d\n", v29, 212, v30, "AVE_PS_Make_avcC", 842, "size > 0", a1, a2, a3, a4, v14);
        v31 = sub_66A18();
        v55 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v31, 212, v55, "AVE_PS_Make_avcC", 842);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v29, 212, v30, "AVE_PS_Make_avcC", 842);
      }
    }

LABEL_29:
    v19 = 4294966296;
    goto LABEL_30;
  }

  Mutable = CFDataCreateMutable(0, v14);
  if (Mutable)
  {
    v60 = a5;
    v16 = Mutable;
    CFDataSetLength(Mutable, v14);
    v59 = v16;
    MutableBytePtr = CFDataGetMutableBytePtr(v16);
    if (MutableBytePtr)
    {
      v18 = MutableBytePtr;
      v19 = sub_5DD64(a1, a2, a3, a4, MutableBytePtr, v14);
      if (sub_56A8C(0xD4u, 8))
      {
        v20 = sub_56AD0(0xD4u);
        v21 = sub_66A18();
        v22 = sub_56B04(8);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d avcC data: size %d\n", v21, 212, v22, "AVE_PS_Make_avcC", 861, v14);
          v23 = sub_66A18();
          v53 = sub_56B04(8);
          syslog(3, "%lld %d AVE %s: %s:%d avcC data: size %d", v23, 212, v53, "AVE_PS_Make_avcC", 861, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d avcC data: size %d", v21, 212, v22, "AVE_PS_Make_avcC", 861, v14);
        }
      }

      v58 = a1;
      for (i = 0; i < v14; i += 2)
      {
        if (sub_56A8C(0xD4u, 8))
        {
          v46 = sub_56AD0(0xD4u);
          v47 = sub_66A18();
          v48 = sub_56B04(8);
          v49 = *v18;
          if (v46)
          {
            printf("%lld %d AVE %s: %p: 0x%x\n", v47, 212, v48, v18, v49);
            v50 = sub_66A18();
            v51 = sub_56B04(8);
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v50, 212, v51, v18, *v18);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v47, 212, v48, v18, v49);
          }
        }

        v18 += 2;
      }

      v44 = v59;
      a5 = v60;
      *v60 = v59;
      a1 = v58;
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else if (sub_56A8C(0xD4u, 4))
    {
      v36 = sub_56AD0(0xD4u);
      v37 = sub_66A18();
      v38 = sub_56B04(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_avcC", 854, "pData != __null", a1, a2, a3, a4, v16, v14);
        v37 = sub_66A18();
        v38 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_avcC", 854, "pData != __null", a1, a2, a3, a4, v16, v14);
      v44 = v16;
      v19 = 4294966293;
    }

    else
    {
      v19 = 4294966293;
      v44 = v16;
    }

    CFRelease(v44);
    goto LABEL_30;
  }

  if (sub_56A8C(0xD4u, 4))
  {
    v32 = sub_56AD0(0xD4u);
    v33 = sub_66A18();
    v34 = sub_56B04(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d\n", v33, 212, v34, "AVE_PS_Make_avcC", 847, "pCFData != __null", a1, a2, a3, a4, v14);
      v35 = sub_66A18();
      v56 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v35, 212, v56, "AVE_PS_Make_avcC", 847);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v33, 212, v34, "AVE_PS_Make_avcC", 847);
    }
  }

  v19 = 4294966293;
LABEL_30:
  if (sub_56A8C(0xD4u, 8))
  {
    v39 = sub_56AD0(0xD4u);
    v40 = sub_66A18();
    v41 = sub_56B04(8);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v40, 212, v41, "AVE_PS_Make_avcC", a1, a2, a3, a4, a5, v19);
      v42 = sub_66A18();
      v57 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v42, 212, v57, "AVE_PS_Make_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v40, 212, v41, "AVE_PS_Make_avcC");
    }
  }

  return v19;
}

uint64_t sub_602A4(int a1, char *a2, int *a3, int *a4, __CFDictionary **a5)
{
  v47 = 0;
  if (sub_56A8C(0xD4u, 8))
  {
    v10 = sub_56AD0(0xD4u);
    v11 = sub_66A18();
    v12 = sub_56B04(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", v11, 212, v12, "AVE_PS_Make_avcC_Dict", a1, a2, a3, a4, a5);
      v13 = sub_66A18();
      v41 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v41);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v11, 212, v12);
    }
  }

  if (a2 && a3 && a4 && a5)
  {
    *a5 = 0;
    v14 = sub_5FAB4(a1, a2, a3, a4, &v47);
    if (v14)
    {
      v15 = v14;
      if (sub_56A8C(0xD4u, 4))
      {
        v16 = sub_56AD0(0xD4u);
        v17 = sub_66A18();
        v18 = sub_56B04(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d\n", v17, 212, v18, "AVE_PS_Make_avcC_Dict", 918, "ret == 0", a1, a2, a3, a4, a5, v15);
          v19 = sub_66A18();
          v42 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v19, 212, v42, "AVE_PS_Make_avcC_Dict", 918, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v17, 212, v18, "AVE_PS_Make_avcC_Dict", 918, "ret == 0");
        }
      }

      v25 = 0;
      v27 = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v25 = Mutable;
        CFDictionaryAddValue(Mutable, @"avcC", v47);
        v26 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v26)
        {
          v27 = v26;
          CFDictionaryAddValue(v26, kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms, v25);
          CFDictionaryAddValue(v27, kCMFormatDescriptionExtension_FormatName, @"H.264");
          v15 = 0;
          *a5 = v27;
          goto LABEL_33;
        }

        if (sub_56A8C(0xD4u, 4))
        {
          v32 = sub_56AD0(0xD4u);
          v33 = sub_66A18();
          v34 = sub_56B04(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p\n", v33, 212, v34, "AVE_PS_Make_avcC_Dict", 932, "pDict != __null", a1, a2, a3, a4, v25);
            v35 = sub_66A18();
            v45 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p", v35, 212, v45, "AVE_PS_Make_avcC_Dict", 932);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p", v33, 212, v34, "AVE_PS_Make_avcC_Dict", 932);
          }
        }
      }

      else
      {
        if (sub_56A8C(0xD4u, 4))
        {
          v28 = sub_56AD0(0xD4u);
          v29 = sub_66A18();
          v30 = sub_56B04(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p\n", v29, 212, v30, "AVE_PS_Make_avcC_Dict", 924, "pDataDict != __null", a2, a3, a4, v47);
            v31 = sub_66A18();
            v44 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p", v31, 212, v44, "AVE_PS_Make_avcC_Dict");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p", v29, 212, v30, "AVE_PS_Make_avcC_Dict");
          }
        }

        v25 = 0;
      }

      v27 = 0;
      v15 = 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v20 = sub_56AD0(0xD4u);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v21, 212, v22, "AVE_PS_Make_avcC_Dict", 911, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null", a1, a2, a3, a4, a5);
        v23 = sub_66A18();
        v43 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v23, 212, v43, "AVE_PS_Make_avcC_Dict", 911);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v21, 212, v22, "AVE_PS_Make_avcC_Dict", 911);
      }
    }

    v25 = 0;
    v27 = 0;
    v15 = 4294966296;
  }

LABEL_33:
  if (v47)
  {
    CFRelease(v47);
    v47 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v15 && v27)
  {
    CFRelease(v27);
  }

  if (sub_56A8C(0xD4u, 8))
  {
    v36 = sub_56AD0(0xD4u);
    v37 = sub_66A18();
    v38 = sub_56B04(8);
    if (v36)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_avcC_Dict", a1, a2, a3, a4, a5, v15);
      v39 = sub_66A18();
      v46 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v39, 212, v46, "AVE_PS_Make_avcC_Dict");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_avcC_Dict");
    }
  }

  return v15;
}

uint64_t sub_60970(uint64_t a1, char *a2, unsigned int *a3, const void *a4, int a5, const void *a6, int a7, const void *a8, __CFData **a9)
{
  v13 = a9;
  if (sub_56A8C(0xD4u, 8))
  {
    v14 = sub_56AD0(0xD4u);
    v15 = sub_66A18();
    v16 = sub_56B04(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p\n", v15, 212, v16, "AVE_PS_Make_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v17 = sub_66A18();
      v54 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v17, 212, v54, "AVE_PS_Make_hvcC", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v15, 212, v16, "AVE_PS_Make_hvcC", a1, a2, a3);
    }
  }

  if (!a2 || !a3 || !a8 || !a9 || (a4 == 0) != (a5 == 0))
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v18 = sub_56AD0(0xD4u);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p\n", v19, 212, v20, "AVE_PS_Make_hvcC", 1003, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1, a2, a3, a4, a5, a8, a9);
        v21 = sub_66A18();
        v55 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v21, 212, v55, "AVE_PS_Make_hvcC", 1003, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v19, 212, v20, "AVE_PS_Make_hvcC", 1003, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }
    }

    goto LABEL_20;
  }

  v64 = a4;
  *a9 = 0;
  v22 = sub_5E300(a1, a3, a5, a7);
  if (v22 <= 0)
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v37 = sub_56AD0(0xD4u);
      v38 = sub_66A18();
      v39 = sub_56B04(4);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d %p %d\n", v38, 212, v39, "AVE_PS_Make_hvcC", 1010, "size > 0", a1, a2, a3, v64, a5, a8, v22);
        v40 = sub_66A18();
        a4 = v64;
        v58 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d %p %d", v40, 212, v58, "AVE_PS_Make_hvcC", 1010, "size > 0", a1);
      }

      else
      {
        a4 = v64;
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d %p %d", v38, 212, v39, "AVE_PS_Make_hvcC", 1010, "size > 0", a1);
      }

LABEL_20:
      v27 = 4294966296;
      goto LABEL_21;
    }

    v27 = 4294966296;
    goto LABEL_37;
  }

  Mutable = CFDataCreateMutable(0, v22);
  if (!Mutable)
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v41 = sub_56AD0(0xD4u);
      v42 = sub_66A18();
      v43 = sub_56B04(4);
      if (v41)
      {
        v61 = v22;
        a4 = v64;
        printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d %p %d\n", v42, 212, v43, "AVE_PS_Make_hvcC", 1015, "pCFData != __null", a1, a2, a3, v64, a5, a8, v61);
        v44 = sub_66A18();
        v59 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d %p %d", v44, 212, v59, "AVE_PS_Make_hvcC", 1015, "pCFData != __null", a1);
      }

      else
      {
        a4 = v64;
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d %p %d", v42, 212, v43, "AVE_PS_Make_hvcC", 1015, "pCFData != __null", a1);
      }

      v27 = 4294966293;
      goto LABEL_21;
    }

    v27 = 4294966293;
LABEL_37:
    a4 = v64;
    goto LABEL_21;
  }

  v24 = Mutable;
  CFDataSetLength(Mutable, v22);
  MutableBytePtr = CFDataGetMutableBytePtr(v24);
  if (!MutableBytePtr)
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v45 = sub_56AD0(0xD4u);
      v46 = sub_66A18();
      v47 = sub_56B04(4);
      if (v45)
      {
        v62 = v22;
        a4 = v64;
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %d %p %p %d\n", v46, 212, v47, "AVE_PS_Make_hvcC", 1022, "pData != __null", a1, a2, a3, v64, a5, a8, v24, v62);
        v48 = sub_66A18();
        v60 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %d %p %p %d", v48, 212, v60, "AVE_PS_Make_hvcC", 1022, "pData != __null", a1, a2);
      }

      else
      {
        a4 = v64;
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %d %p %p %d", v46, 212, v47, "AVE_PS_Make_hvcC", 1022, "pData != __null", a1, a2);
      }

      v27 = 4294966293;
    }

    else
    {
      v27 = 4294966293;
      a4 = v64;
    }

LABEL_53:
    CFRelease(v24);
    goto LABEL_21;
  }

  v26 = MutableBytePtr;
  v63 = a8;
  v27 = sub_5EA64(a1, a2, a3, v64, a5, a6, a7, a8, MutableBytePtr, v22);
  if (sub_56A8C(0xD4u, 8))
  {
    v28 = sub_56AD0(0xD4u);
    v29 = sub_66A18();
    v30 = sub_56B04(8);
    if (v28)
    {
      printf("%lld %d AVE %s: %s:%d hvcC data: size %d\n", v29, 212, v30, "AVE_PS_Make_hvcC", 1030, v22);
      v31 = sub_66A18();
      v56 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s:%d hvcC data: size %d", v31, 212, v56, "AVE_PS_Make_hvcC", 1030, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d hvcC data: size %d", v29, 212, v30, "AVE_PS_Make_hvcC", 1030, v22);
    }
  }

  for (i = 0; i < v22; i += 2)
  {
    if (sub_56A8C(0xD4u, 8))
    {
      v50 = sub_56AD0(0xD4u);
      v51 = sub_66A18();
      v52 = sub_56B04(8);
      v53 = *v26;
      if (v50)
      {
        printf("%lld %d AVE %s: %p: 0x%x\n", v51, 212, v52, v26, v53);
        v51 = sub_66A18();
        v52 = sub_56B04(8);
        v53 = *v26;
      }

      syslog(3, "%lld %d AVE %s: %p: 0x%x", v51, 212, v52, v26, v53);
    }

    ++v26;
  }

  v13 = a9;
  *a9 = v24;
  a4 = v64;
  a8 = v63;
  if (v27)
  {
    goto LABEL_53;
  }

LABEL_21:
  if (sub_56A8C(0xD4u, 8))
  {
    v32 = sub_56AD0(0xD4u);
    v33 = sub_66A18();
    v34 = sub_56B04(8);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d\n", v33, 212, v34, "AVE_PS_Make_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, v13, v27);
      v35 = sub_66A18();
      v57 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v35, 212, v57, "AVE_PS_Make_hvcC", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v33, 212, v34, "AVE_PS_Make_hvcC", a1, a2, a3, a4);
    }
  }

  return v27;
}

uint64_t sub_61370(uint64_t a1, char *a2, unsigned int *a3, const void *a4, int a5, const void *a6, int a7, const void *a8, __CFDictionary **a9)
{
  v54 = 0;
  if (sub_56A8C(0xD4u, 8))
  {
    v11 = sub_56AD0(0xD4u);
    v12 = sub_66A18();
    v13 = sub_56B04(8);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p\n", v12, 212, v13, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v14 = sub_66A18();
      v42 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v14, 212, v42, "AVE_PS_Make_hvcC_Dict", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p", v12, 212, v13, "AVE_PS_Make_hvcC_Dict", a1, a2, a3);
    }
  }

  if (a2 && a3 && a8 && a9 && (a4 == 0) == (a5 == 0))
  {
    *a9 = 0;
    v19 = sub_60970(a1, a2, a3, a4, a5, a6, a7, a8, &v54);
    if (v19)
    {
      v20 = v19;
      if (sub_56A8C(0xD4u, 4))
      {
        v21 = sub_56AD0(0xD4u);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %d %p %p %d\n", v22, 212, v23, "AVE_PS_Make_hvcC_Dict", 1095, "ret == 0", a1, a2, a3, a4, a5, a8, a9, v20);
          v24 = sub_66A18();
          v44 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %d %p %p %d", v24, 212, v44, "AVE_PS_Make_hvcC_Dict", 1095, "ret == 0", a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %d %p %p %d", v22, 212, v23, "AVE_PS_Make_hvcC_Dict", 1095, "ret == 0", a1, a2);
        }
      }

      v25 = 0;
      v26 = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v25 = Mutable;
        CFDictionaryAddValue(Mutable, @"hvcC", v54);
        v33 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v33)
        {
          v26 = v33;
          CFDictionaryAddValue(v33, kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms, v25);
          CFDictionaryAddValue(v26, kCMFormatDescriptionExtension_FormatName, @"HEVC");
          v20 = 0;
          *a9 = v26;
          goto LABEL_19;
        }

        if (sub_56A8C(0xD4u, 4))
        {
          v38 = sub_56AD0(0xD4u);
          v39 = sub_66A18();
          v40 = sub_56B04(4);
          if (v38)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %d %p %p\n", v39, 212, v40, "AVE_PS_Make_hvcC_Dict", 1109, "pDict != __null", a1, a2, a3, a4, a5, a8, v25);
            v41 = sub_66A18();
            v47 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %d %p %p", v41, 212, v47, "AVE_PS_Make_hvcC_Dict", 1109, "pDict != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %d %p %p", v39, 212, v40, "AVE_PS_Make_hvcC_Dict", 1109, "pDict != __null", a1);
          }
        }
      }

      else
      {
        if (sub_56A8C(0xD4u, 4))
        {
          v34 = sub_56AD0(0xD4u);
          v35 = sub_66A18();
          v36 = sub_56B04(4);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create data dictionary %d %p %p %p %d %p %p\n", v35, 212, v36, "AVE_PS_Make_hvcC_Dict", 1101, "pDataDict != __null", a1, a2, a3, a4, a5, a8, v54);
            v37 = sub_66A18();
            v46 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %d %p %p %p %d %p %p", v37, 212, v46, "AVE_PS_Make_hvcC_Dict", 1101, "pDataDict != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %d %p %p %p %d %p %p", v35, 212, v36, "AVE_PS_Make_hvcC_Dict", 1101, "pDataDict != __null", a1);
          }
        }

        v25 = 0;
      }

      v26 = 0;
      v20 = 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v15 = sub_56AD0(0xD4u);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p\n", v16, 212, v17, "AVE_PS_Make_hvcC_Dict", 1087, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1, a2, a3, a4, a5, a8, a9);
        v18 = sub_66A18();
        v43 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v18, 212, v43, "AVE_PS_Make_hvcC_Dict", 1087, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %d %p %p", v16, 212, v17, "AVE_PS_Make_hvcC_Dict", 1087, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null && !((pSEIData == __null) ^ (SEISize == 0))", a1);
      }
    }

    v25 = 0;
    v26 = 0;
    v20 = 4294966296;
  }

LABEL_19:
  if (v54)
  {
    CFRelease(v54);
    v54 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v20 && v26)
  {
    CFRelease(v26);
  }

  if (sub_56A8C(0xD4u, 8))
  {
    v27 = sub_56AD0(0xD4u);
    v28 = sub_66A18();
    v29 = sub_56B04(8);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d\n", v28, 212, v29, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4, a5, a6, a7, a8, a9, v20);
      v30 = sub_66A18();
      v45 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v30, 212, v45, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d", v28, 212, v29, "AVE_PS_Make_hvcC_Dict", a1, a2, a3, a4);
    }
  }

  return v20;
}

uint64_t sub_61CF0(int a1, char *a2, unsigned int *a3, const void *a4, __CFData **a5)
{
  if (sub_56A8C(0xD4u, 8))
  {
    v10 = sub_56AD0(0xD4u);
    v11 = sub_66A18();
    v12 = sub_56B04(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", v11, 212, v12, "AVE_PS_Make_lhvC", a1, a2, a3, a4, a5);
      v13 = sub_66A18();
      v52 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v52);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v11, 212, v12);
    }
  }

  if (!a2 || !a3 || !a4 || !a5)
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v24 = sub_56AD0(0xD4u);
      v25 = sub_66A18();
      v26 = sub_56B04(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v25, 212, v26, "AVE_PS_Make_lhvC", 1172, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null", a1, a2, a3, a4, a5);
        v27 = sub_66A18();
        v54 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v27, 212, v54, "AVE_PS_Make_lhvC", 1172);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v25, 212, v26, "AVE_PS_Make_lhvC", 1172);
      }
    }

    goto LABEL_29;
  }

  *a5 = 0;
  v14 = sub_5F4D4(a1, a3);
  if (v14 <= 0)
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v28 = sub_56AD0(0xD4u);
      v29 = sub_66A18();
      v30 = sub_56B04(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d\n", v29, 212, v30, "AVE_PS_Make_lhvC", 1179, "size > 0", a1, a2, a3, a4, v14);
        v31 = sub_66A18();
        v55 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v31, 212, v55, "AVE_PS_Make_lhvC", 1179);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v29, 212, v30, "AVE_PS_Make_lhvC", 1179);
      }
    }

LABEL_29:
    v19 = 4294966296;
    goto LABEL_30;
  }

  Mutable = CFDataCreateMutable(0, v14);
  if (Mutable)
  {
    v60 = a4;
    v16 = Mutable;
    CFDataSetLength(Mutable, v14);
    v59 = v16;
    MutableBytePtr = CFDataGetMutableBytePtr(v16);
    if (MutableBytePtr)
    {
      v18 = MutableBytePtr;
      v58 = a5;
      v19 = sub_5F6E8(a1, a2, a3, v60, MutableBytePtr, v14);
      if (sub_56A8C(0xD4u, 8))
      {
        v20 = sub_56AD0(0xD4u);
        v21 = sub_66A18();
        v22 = sub_56B04(8);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d lhvC data: size %d\n", v21, 212, v22, "AVE_PS_Make_lhvC", 1198, v14);
          v23 = sub_66A18();
          v53 = sub_56B04(8);
          syslog(3, "%lld %d AVE %s: %s:%d lhvC data: size %d", v23, 212, v53, "AVE_PS_Make_lhvC", 1198, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d lhvC data: size %d", v21, 212, v22, "AVE_PS_Make_lhvC", 1198, v14);
        }
      }

      for (i = 0; i < v14; i += 2)
      {
        if (sub_56A8C(0xD4u, 8))
        {
          v46 = sub_56AD0(0xD4u);
          v47 = sub_66A18();
          v48 = sub_56B04(8);
          v49 = *v18;
          if (v46)
          {
            printf("%lld %d AVE %s: %p: 0x%x\n", v47, 212, v48, v18, v49);
            v50 = sub_66A18();
            v51 = sub_56B04(8);
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v50, 212, v51, v18, *v18);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v47, 212, v48, v18, v49);
          }
        }

        ++v18;
      }

      a5 = v58;
      v44 = v59;
      *v58 = v59;
      a4 = v60;
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else if (sub_56A8C(0xD4u, 4))
    {
      v36 = sub_56AD0(0xD4u);
      v37 = sub_66A18();
      v38 = sub_56B04(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_lhvC", 1191, "pData != __null", a1, a2, a3, a4, v16, v14);
        v37 = sub_66A18();
        v38 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_lhvC", 1191, "pData != __null", a1, a2, a3, a4, v16, v14);
      v44 = v16;
      v19 = 4294966293;
    }

    else
    {
      v19 = 4294966293;
      v44 = v16;
    }

    CFRelease(v44);
    goto LABEL_30;
  }

  if (sub_56A8C(0xD4u, 4))
  {
    v32 = sub_56AD0(0xD4u);
    v33 = sub_66A18();
    v34 = sub_56B04(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d\n", v33, 212, v34, "AVE_PS_Make_lhvC", 1184, "pCFData != __null", a1, a2, a3, a4, v14);
      v35 = sub_66A18();
      v56 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v35, 212, v56, "AVE_PS_Make_lhvC", 1184);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v33, 212, v34, "AVE_PS_Make_lhvC", 1184);
    }
  }

  v19 = 4294966293;
LABEL_30:
  if (sub_56A8C(0xD4u, 8))
  {
    v39 = sub_56AD0(0xD4u);
    v40 = sub_66A18();
    v41 = sub_56B04(8);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v40, 212, v41, "AVE_PS_Make_lhvC", a1, a2, a3, a4, a5, v19);
      v42 = sub_66A18();
      v57 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v42, 212, v57, "AVE_PS_Make_lhvC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v40, 212, v41, "AVE_PS_Make_lhvC");
    }
  }

  return v19;
}

uint64_t sub_624F0(int a1, char *a2, unsigned int *a3, const void *a4, const __CFDictionary *a5)
{
  v39 = 0;
  if (sub_56A8C(0xD4u, 8))
  {
    v10 = sub_56AD0(0xD4u);
    v11 = sub_66A18();
    v12 = sub_56B04(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", v11, 212, v12, "AVE_PS_Add_lhvC_Dict", a1, a2, a3, a4, a5);
      v13 = sub_66A18();
      v34 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v11, 212, v12);
    }
  }

  if (a2 && a3 && a4 && a5)
  {
    v14 = sub_61CF0(a1, a2, a3, a4, &v39);
    if (v14)
    {
      v15 = v14;
      if (sub_56A8C(0xD4u, 4))
      {
        v16 = sub_56AD0(0xD4u);
        v17 = sub_66A18();
        v18 = sub_56B04(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d\n", v17, 212, v18, "AVE_PS_Add_lhvC_Dict", 1336, "ret == 0", a1, a2, a3, a4, a5, v15);
          v19 = sub_66A18();
          v35 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v19, 212, v35, "AVE_PS_Add_lhvC_Dict", 1336, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v17, 212, v18, "AVE_PS_Add_lhvC_Dict", 1336, "ret == 0");
        }
      }
    }

    else
    {
      Value = CFDictionaryGetValue(a5, kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms);
      if (Value)
      {
        CFDictionaryAddValue(Value, @"lhvC", v39);
        v15 = 0;
      }

      else
      {
        if (sub_56A8C(0xD4u, 4))
        {
          v25 = sub_56AD0(0xD4u);
          v26 = sub_66A18();
          v27 = sub_56B04(4);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to get data dictionary %d %p %p %p %p\n", v26, 212, v27, "AVE_PS_Add_lhvC_Dict", 1342, "pDataDict != __null", a1, a2, a3, a4, v39);
            v28 = sub_66A18();
            v37 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get data dictionary %d %p %p %p %p", v28, 212, v37, "AVE_PS_Add_lhvC_Dict", 1342);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get data dictionary %d %p %p %p %p", v26, 212, v27, "AVE_PS_Add_lhvC_Dict", 1342);
          }
        }

        v15 = 4294966293;
      }
    }
  }

  else
  {
    if (sub_56A8C(0xD4u, 4))
    {
      v20 = sub_56AD0(0xD4u);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v21, 212, v22, "AVE_PS_Add_lhvC_Dict", 1331, "pInData != __null && pInfo != __null && pSPS != __null && pCFDict != __null", a1, a2, a3, a4, a5);
        v23 = sub_66A18();
        v36 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v23, 212, v36, "AVE_PS_Add_lhvC_Dict", 1331);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v21, 212, v22, "AVE_PS_Add_lhvC_Dict", 1331);
      }
    }

    v15 = 4294966296;
  }

  if (v39)
  {
    CFRelease(v39);
    v39 = 0;
  }

  if (sub_56A8C(0xD4u, 8))
  {
    v29 = sub_56AD0(0xD4u);
    v30 = sub_66A18();
    v31 = sub_56B04(8);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v30, 212, v31, "AVE_PS_Add_lhvC_Dict", a1, a2, a3, a4, a5, v15);
      v32 = sub_66A18();
      v38 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v32, 212, v38, "AVE_PS_Add_lhvC_Dict");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v30, 212, v31, "AVE_PS_Add_lhvC_Dict");
    }
  }

  return v15;
}

uint64_t sub_62A40(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 4)
  {
    return 4294966277;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    *(a2 + v5) |= *(a1 + 32 + v4) << (v4 & 7 ^ 7);
    if ((v4 & 7) == 7)
    {
      ++v5;
    }

    ++v4;
  }

  while (v4 != 32);
  return 4;
}

uint64_t sub_62A94(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3 < 6)
  {
    return 4294966277;
  }

  v7 = sub_72410(*(a1 + 28));
  bzero(a2, a3);
  v9 = (*(a1 + 65) << 6) | (*(a1 + 64) << 7) | (32 * *(a1 + 66)) | (16 * *(a1 + 67));
  *a2 = v9;
  if (v7 == 4 || v7 == 5 || (*(a1 + 36) & 1) != 0 || v7 == 6 || (*(a1 + 37) & 1) != 0 || v7 == 7 || (*(a1 + 38) & 1) != 0 || v7 == 8 || (*(a1 + 39) & 1) != 0 || v7 == 9 || (*(a1 + 40) & 1) != 0 || v7 == 10 || (*(a1 + 41) & 1) != 0 || v7 == 11 || (*(a1 + 42) & 1) != 0 || *(a1 + 43) == 1)
  {
    *a2 = (8 * *(a1 + 68)) | (4 * *(a1 + 69)) | (2 * *(a1 + 70)) | *(a1 + 71) | v9;
    v8.i32[0] = *(a1 + 72);
    v10 = vshl_u16(*&vmovl_u8(v8), 0x4000500060007);
    v11 = v10.i32[0] | v10.i32[1] | ((*&v10 | HIDWORD(*&v10)) >> 16) | (8 * *(a1 + 76));
  }

  else
  {
    if (v7 != 2 && *(a1 + 34) != 1)
    {
      return 5;
    }

    LOBYTE(v11) = 16 * *(a1 + 75);
  }

  a2[1] = v11;
  return 5;
}

uint64_t sub_62C14(char *a1, int a2, __CFArray *a3)
{
  if (a1 && a2 >= 1 && a3)
  {
    v6 = a2;
    v7 = (a1 + 4);
    while (1)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!Mutable)
      {
        break;
      }

      v9 = Mutable;
      sub_4671C(@"ReferenceFrameNumDriver", *(v7 - 1), Mutable);
      v10 = *v7;
      v7 += 2;
      sub_4671C(@"ReferenceRVRAIndex", v10, v9);
      CFArrayAppendValue(a3, v9);
      CFRelease(v9);
      if (!--v6)
      {
        return 0;
      }
    }

    if (sub_56A8C(0xE1u, 4))
    {
      v16 = sub_56AD0(0xE1u);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p\n", v17, 225, v18, "AVE_Ref_MakeArray", 73, "pDict != __null", a1, a2, a3);
        v19 = sub_66A18();
        v21 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p", v19, 225, v21);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p", v17, 225, v18);
      }
    }

    return 4294966293;
  }

  else
  {
    if (sub_56A8C(0xE1u, 4))
    {
      v12 = sub_56AD0(0xE1u);
      v13 = sub_66A18();
      v14 = sub_56B04(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v13, 225, v14, "AVE_Ref_MakeArray", 65, "pInfo != __null && iNum > 0 && pArray != __null", a1, a2, a3);
        v15 = sub_66A18();
        v20 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v15, 225, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v13, 225, v14);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_62EB0(double *a1, int a2, __CFDictionary *a3)
{
  if (a2 <= 1)
  {
    sub_464BC(kVTSampleAttachmentQualityMetricsKey_LumaMeanSquaredError, a3, a1[3]);
    sub_464BC(kVTSampleAttachmentQualityMetricsKey_ChromaBlueMeanSquaredError, a3, a1[4]);
    sub_464BC(kVTSampleAttachmentQualityMetricsKey_ChromaRedMeanSquaredError, a3, a1[5]);
    return 0;
  }

  LODWORD(v6) = a2;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    if (sub_56A8C(0x10u, 4))
    {
      v14 = sub_56AD0(0x10u);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p\n", v15, 16, v16, "AVE_MSE_MakeDict", 48, "pLumaMSEArr != __null", a1, v6, a3);
        v17 = sub_66A18();
        v27 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v17, 16, v27);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v15, 16, v16);
      }
    }

    return 4294966293;
  }

  v8 = Mutable;
  v9 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (!v9)
  {
    if (sub_56A8C(0x10u, 4))
    {
      v18 = sub_56AD0(0x10u);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p\n", v19, 16, v20, "AVE_MSE_MakeDict", 52, "pChromaBlueMSEArr != __null", a1, v6, a3);
        v21 = sub_66A18();
        v28 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v21, 16, v28);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v19, 16, v20);
      }
    }

    CFRelease(v8);
    return 4294966293;
  }

  v10 = v9;
  v11 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (v11)
  {
    v6 = v6;
    v12 = a1 + 5;
    do
    {
      sub_46124(v8, *(v12 - 2));
      sub_46124(v10, *(v12 - 1));
      v13 = *v12;
      v12 += 9;
      sub_46124(v11, v13);
      --v6;
    }

    while (v6);
    CFDictionaryAddValue(a3, kVTSampleAttachmentQualityMetricsKey_LumaMeanSquaredError, v8);
    CFDictionaryAddValue(a3, kVTSampleAttachmentQualityMetricsKey_ChromaBlueMeanSquaredError, v10);
    CFDictionaryAddValue(a3, kVTSampleAttachmentQualityMetricsKey_ChromaRedMeanSquaredError, v11);
    v5 = 0;
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v22 = sub_56AD0(0x10u);
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p\n", v23, 16, v24, "AVE_MSE_MakeDict", 56, "pChromaRedMSEArr != __null", a1, v6, a3);
        v25 = sub_66A18();
        v29 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v25, 16, v29);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v23, 16, v24);
      }
    }

    v5 = 4294966293;
  }

  CFRelease(v8);
  CFRelease(v10);
  if (v11)
  {
    CFRelease(v11);
  }

  return v5;
}

uint64_t sub_632EC(char *a1, int a2, const char *a3, va_list a4)
{
  result = vsnprintf(a1, a2, a3, a4);
  if (a1)
  {
    if (result >= a2)
    {
      result = a2 - 1;
      a1[result] = 0;
    }
  }

  return result;
}

char *sub_6335C(char *a1, const char *a2, int a3)
{
  result = strncpy(a1, a2, a3);
  result[a3 - 1] = 0;
  return result;
}