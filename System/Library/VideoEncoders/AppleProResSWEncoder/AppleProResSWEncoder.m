CFTypeRef createBlockBufferInEncoder(uint64_t a1, CFAllocatorRef blockAllocator, size_t dataLength)
{
  cf = 0;
  if (a1)
  {
    VTEncoderSessionCreateCMBlockBuffer();
    return cf;
  }

  else
  {
    v4 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x29EDB8ED8], 0, dataLength, blockAllocator, 0, 0, dataLength, 1u, &cf);
    result = cf;
    if (v4)
    {
      v5 = cf == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      CFRelease(cf);
      return 0;
    }
  }

  return result;
}

void ProResSWEncoderRegister()
{
  v0 = 1;
  v1 = MGGetProductType();
  if (v1 > 2103978417)
  {
    if (v1 <= 3101941569)
    {
      if (v1 > 2628394913)
      {
        if (v1 == 2628394914 || v1 == 2644487444)
        {
          goto LABEL_37;
        }

        v2 = 3054476161;
      }

      else
      {
        if (v1 == 2103978418 || v1 == 2236272848)
        {
          goto LABEL_37;
        }

        v2 = 2458172802;
      }
    }

    else if (v1 <= 3599094682)
    {
      if (v1 == 3101941570 || v1 == 3196158497)
      {
        goto LABEL_37;
      }

      v2 = 3540156652;
    }

    else if (v1 > 3801472100)
    {
      if (v1 == 3801472101)
      {
        goto LABEL_37;
      }

      v2 = 3863625342;
    }

    else
    {
      if (v1 == 3599094683)
      {
        goto LABEL_37;
      }

      v2 = 3636345305;
    }
  }

  else if (v1 <= 1293446024)
  {
    if (v1 > 746003605)
    {
      if (v1 == 746003606 || v1 == 789142227)
      {
        goto LABEL_37;
      }

      v2 = 851437781;
    }

    else
    {
      if (v1 == 240711087 || v1 == 341800273)
      {
        goto LABEL_37;
      }

      v2 = 574536383;
    }
  }

  else if (v1 <= 1834147426)
  {
    if (v1 == 1293446025 || v1 == 1353145733)
    {
      goto LABEL_37;
    }

    v2 = 1373516433;
  }

  else if (v1 > 2001966016)
  {
    if (v1 == 2001966017)
    {
      goto LABEL_37;
    }

    v2 = 2023824667;
  }

  else
  {
    if (v1 == 1834147427)
    {
      goto LABEL_37;
    }

    v2 = 1868379043;
  }

  if (v1 != v2)
  {
    v6 = IOServiceMatching("AppleProResHW");
    if (v6)
    {
      MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v6);
      if (MatchingService)
      {
        IOObjectRelease(MatchingService);
        goto LABEL_37;
      }

      if (IcpUtility::logLevel(MatchingService) < 1 || !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      *buf = 0;
      v8 = MEMORY[0x29EDCA988];
      v9 = "IOServiceGetMatchingService failed";
      v10 = buf;
    }

    else
    {
      if (IcpUtility::logLevel(0) < 1 || !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
LABEL_56:
        if (!MGGetSInt32Answer())
        {
          v0 = isAdditionalSupportedCPUFamily();
        }

        goto LABEL_37;
      }

      v13 = 0;
      v8 = MEMORY[0x29EDCA988];
      v9 = "IOServiceMatching failed";
      v10 = &v13;
    }

    _os_log_impl(&dword_29539A000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    goto LABEL_56;
  }

LABEL_37:
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableProResSWEncoder", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue;
  }

  else
  {
    v4 = v0;
  }

  if (v4)
  {
    if (IcpUtility::logLevel(AppBooleanValue) >= 1 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_29539A000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Registering ProRes SW Encoder...", v11, 2u);
    }

    v5 = [objc_alloc(MEMORY[0x29EDB8E00]) initWithCapacity:4];
    [v5 setObject:MEMORY[0x29EDB8EA8] forKeyedSubscript:@"VTIsHardwareAccelerated"];
    [v5 setObject:&unk_2A1C7D9B8 forKeyedSubscript:@"VTRating"];
    [v5 setObject:@"com.apple.videotoolbox.videoencoder.prores.sw.ap4x" forKeyedSubscript:@"CMClassImplementationID"];
    [v5 setObject:@"Apple ProRes 4444 XQ" forKeyedSubscript:@"VTCodecName"];
    VTRegisterVideoEncoderWithInfo();
    [v5 setObject:@"com.apple.videotoolbox.videoencoder.prores.sw.ap4h" forKeyedSubscript:@"CMClassImplementationID"];
    [v5 setObject:@"Apple ProRes 4444" forKeyedSubscript:@"VTCodecName"];
    VTRegisterVideoEncoderWithInfo();
    [v5 setObject:@"com.apple.videotoolbox.videoencoder.prores.sw.apch" forKeyedSubscript:@"CMClassImplementationID"];
    [v5 setObject:@"Apple ProRes 422 HQ" forKeyedSubscript:@"VTCodecName"];
    VTRegisterVideoEncoderWithInfo();
    [v5 setObject:@"com.apple.videotoolbox.videoencoder.prores.sw.apcn" forKeyedSubscript:@"CMClassImplementationID"];
    [v5 setObject:@"Apple ProRes 422" forKeyedSubscript:@"VTCodecName"];
    VTRegisterVideoEncoderWithInfo();
    [v5 setObject:@"com.apple.videotoolbox.videoencoder.prores.sw.apcs" forKeyedSubscript:@"CMClassImplementationID"];
    [v5 setObject:@"Apple ProRes 422 LT" forKeyedSubscript:@"VTCodecName"];
    VTRegisterVideoEncoderWithInfo();
    [v5 setObject:@"com.apple.videotoolbox.videoencoder.prores.sw.apco" forKeyedSubscript:@"CMClassImplementationID"];
    [v5 setObject:@"Apple ProRes 422 Proxy" forKeyedSubscript:@"VTCodecName"];
    VTRegisterVideoEncoderWithInfo();
  }
}

BOOL isAdditionalSupportedCPUFamily(void)
{
  v6 = 0;
  v5 = 4;
  v0 = sysctlbyname("hw.cpufamily", &v6, &v5, 0, 0);
  if (!v0)
  {
    return v6 == -1422631159 || v6 == 30910251 || v6 == 541402832;
  }

  if (IcpUtility::logLevel(v0) < 1)
  {
    return 0;
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *v4 = 0;
      _os_log_impl(&dword_29539A000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to get cpufamily", v4, 2u);
      return 0;
    }
  }

  return result;
}

uint64_t VideoEncoderBase<IcpVideoEncoder>::createInstance(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 4294954394;
  }

  if (enabledSignpostCategories())
  {
    kdebug_trace();
  }

  VTVideoEncoderGetClassID();
  v4 = CMDerivedObjectCreate();
  if (!v4)
  {
    v4 = 4294954389;
  }

  *a3 = 0;
  if (enabledSignpostCategories())
  {
    kdebug_trace();
  }

  return v4;
}

uint64_t VideoCodecBase<IcpVideoEncoder>::Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = *DerivedStorage;
    if ((enabledSignpostCategories() & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    (*(*v1 + 48))(v1);
    kdebug_trace();
    goto LABEL_7;
  }

  v1 = 0;
  if (enabledSignpostCategories())
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v1)
  {
    v2 = 4294954388;
    if ((enabledSignpostCategories() & 1) == 0)
    {
      return v2;
    }

    goto LABEL_8;
  }

LABEL_7:
  v2 = (*(*v1 + 16))(v1);
  if (enabledSignpostCategories())
  {
LABEL_8:
    (*(*v1 + 48))(v1);
    kdebug_trace();
  }

  return v2;
}

uint64_t VideoCodecBase<IcpVideoEncoder>::Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (DerivedStorage)
  {
    v2 = *DerivedStorage;
    if ((enabledSignpostCategories() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0;
    if ((enabledSignpostCategories() & 1) == 0)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  (*(*v2 + 48))(v2);
  kdebug_trace();
LABEL_7:
  (*(*v2 + 24))(v2);
  (*(*v2 + 8))(v2);
  *v1 = 0;
LABEL_8:
  result = enabledSignpostCategories();
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t VideoCodecBase<IcpVideoEncoder>::CopyProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954388;
  }

  v1 = *DerivedStorage;
  if (!v1)
  {
    return 4294954388;
  }

  v2 = *(*v1 + 32);

  return v2();
}

uint64_t VideoCodecBase<IcpVideoEncoder>::SetProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954388;
  }

  v1 = *DerivedStorage;
  if (!v1)
  {
    return 4294954388;
  }

  v2 = *(*v1 + 40);

  return v2();
}

uint64_t VideoEncoderBase<IcpVideoEncoder>::StartSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 4294954394;
  if (!a1 || !a2)
  {
    return v4;
  }

  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v9 = 0;
    if ((enabledSignpostCategories() & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = *DerivedStorage;
  if (enabledSignpostCategories())
  {
LABEL_5:
    kdebug_trace();
  }

LABEL_6:
  if (!v9)
  {
    v4 = 4294954388;
    if ((enabledSignpostCategories() & 1) == 0)
    {
      return v4;
    }

    goto LABEL_8;
  }

  v4 = (*(*v9 + 56))(v9, a2, a3, a4);
  if (enabledSignpostCategories())
  {
LABEL_8:
    kdebug_trace();
  }

  return v4;
}

uint64_t VideoEncoderBase<IcpVideoEncoder>::EncodeFrame(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v7 = 4294954394;
  if (!a1 || !a2 || !a3)
  {
    return v7;
  }

  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v15 = 0;
    if ((enabledSignpostCategories() & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v15 = *DerivedStorage;
  if ((enabledSignpostCategories() & 2) != 0)
  {
LABEL_6:
    kdebug_trace();
  }

LABEL_7:
  if (!v15)
  {
    v7 = 4294954388;
    if ((enabledSignpostCategories() & 2) == 0)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v19 = *a4;
  v20 = *(a4 + 2);
  v17 = *a5;
  v18 = *(a5 + 2);
  v7 = (*(*v15 + 64))(v15, a2, a3, &v19, &v17, a6, a7);
  if ((enabledSignpostCategories() & 2) != 0)
  {
LABEL_9:
    kdebug_trace();
  }

  return v7;
}

uint64_t VideoEncoderBase<IcpVideoEncoder>::CompleteFrames(uint64_t a1, __int128 *a2)
{
  if (!a1)
  {
    return 4294954394;
  }

  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954388;
  }

  v4 = *DerivedStorage;
  if (!v4)
  {
    return 4294954388;
  }

  v6 = *a2;
  v7 = *(a2 + 2);
  return (*(*v4 + 72))(v4, &v6);
}

uint64_t VideoEncoderBase<IcpVideoEncoder>::CopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  result = 4294954394;
  if (a1 && a2)
  {
    VTVideoEncoderGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage && (v6 = *DerivedStorage) != 0)
    {
      v7 = *(v6 + 24);
      if (v7)
      {
        CFRetain(v7);
        result = 0;
        *a2 = *(v6 + 24);
      }

      else
      {
        return 4294954392;
      }
    }

    else
    {
      return 4294954388;
    }
  }

  return result;
}

void IcpVideoEncoder::IcpVideoEncoder(IcpVideoEncoder *this, int a2)
{
  v4 = VideoEncoderBase<IcpVideoEncoder>::VideoEncoderBase(this, a2);
  *v4 = &unk_2A1C7D3B0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 257;
  *(v4 + 124) = 0;
  *(v4 + 128) = 1;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(this + 40) = CFPreferencesGetAppIntegerValue(@"ProResSWEncoderSkipMode", @"com.apple.coremedia", 0);
  *(this + 41) = 0;
  *(this + 21) = 0;
  v5 = *MEMORY[0x29EDB8ED8];
  v6 = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], 0, 0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v6)
  {
    if (codecTypeIs444(a2))
    {
      CFDictionaryAddValue(*(this + 3), @"kVTCodecPropertyKey_PreserveAlphaChannel", v6);
      CFDictionaryAddValue(*(this + 3), @"kVTCodecPropertyKey_AlphaMode", v6);
      CFDictionaryAddValue(*(this + 3), *MEMORY[0x29EDBCD38], v6);
    }

    v7 = CFArrayCreate(0, &kSupportedYCbCrMatrices, 3, MEMORY[0x29EDB9000]);
    v8 = v7;
    if (v7)
    {
      v9 = *MEMORY[0x29EDBD120];
      v16 = v7;
      keys = v9;
      v10 = CFDictionaryCreate(0, &keys, &v16, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (v10)
      {
        CFDictionarySetValue(*(this + 3), *MEMORY[0x29EDBCDE8], v10);
        CFRelease(v10);
      }

      CFRelease(v8);
    }

    CFDictionaryAddValue(*(this + 3), @"kVTCodecPropertyKey_CustomColorPrimaries", v6);
    CFDictionaryAddValue(*(this + 3), @"kVTCodecPropertyKey_CustomTransferFunction", v6);
    CFDictionaryAddValue(*(this + 3), @"kVTCodecPropertyKey_CustomYCbCrMatrix", v6);
    CFDictionaryAddValue(*(this + 3), @"kVTProCodecPropertyKey_AverageBytesPerFrame", v6);
    CFRelease(v6);
  }

  if (a2 > 1634755437)
  {
    switch(a2)
    {
      case 1634755438:
        v11 = @"Apple ProRes 422";
        break;
      case 1634755439:
        v11 = @"Apple ProRes 422 Proxy";
        break;
      case 1634755443:
        v11 = @"Apple ProRes 422 LT";
        break;
      default:
        goto LABEL_23;
    }
  }

  else
  {
    switch(a2)
    {
      case 1634743400:
        v11 = @"Apple ProRes 4444";
        break;
      case 1634743416:
        v11 = @"Apple ProRes 4444 XQ";
        break;
      case 1634755432:
        v11 = @"Apple ProRes 422 HQ";
        break;
      default:
        goto LABEL_23;
    }
  }

  CFDictionaryAddValue(*(this + 13), *MEMORY[0x29EDB92B8], v11);
LABEL_23:
  v12 = *(this + 13);
  LODWORD(keys) = 0;
  v13 = CFNumberCreate(v5, kCFNumberIntType, &keys);
  if (v13)
  {
    CFDictionaryAddValue(v12, *MEMORY[0x29EDB92D8], v13);
    CFRelease(v13);
  }

  v14 = *(this + 13);
  LODWORD(keys) = 1023;
  v15 = CFNumberCreate(v5, kCFNumberIntType, &keys);
  if (v15)
  {
    CFDictionaryAddValue(v14, *MEMORY[0x29EDB92D0], v15);
    CFRelease(v15);
  }
}

uint64_t VideoEncoderBase<IcpVideoEncoder>::VideoEncoderBase(uint64_t a1, int a2)
{
  *a1 = &unk_2A1C7D4E0;
  *(a1 + 8) = 0;
  *(a1 + 12) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = MEMORY[0x29EDB9010];
  v5 = MEMORY[0x29EDB9020];
  *(a1 + 24) = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *a1 = &unk_2A1C7D468;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  Mutable = CFDictionaryCreateMutable(v3, 0, v4, v5);
  *(a1 + 104) = Mutable;
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB92E0], *MEMORY[0x29EDB9308]);
  v7 = CFDictionaryCreate(v3, 0, 0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v7)
  {
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x29EDBCDD0], v7);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x29EDBCD58], v7);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x29EDBCDD8], v7);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x29EDBCDE8], v7);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x29EDBCD78], v7);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x29EDBCD80], v7);
    CFDictionaryAddValue(*(a1 + 24), *MEMORY[0x29EDBCDA0], v7);
    CFRelease(v7);
  }

  return a1;
}

void addNumberToDictionary<int>(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, int a4)
{
  valuePtr = a4;
  v6 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFDictionaryAddValue(a2, a3, v6);
    CFRelease(v7);
  }
}

void *VideoEncoderBase<IcpVideoEncoder>::~VideoEncoderBase(void *a1)
{
  *a1 = &unk_2A1C7D468;
  v2 = a1[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[11];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[12];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[13];
  if (v7)
  {
    CFRelease(v7);
  }

  *a1 = &unk_2A1C7D4E0;
  v8 = a1[2];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[3];
  if (v9)
  {
    CFRelease(v9);
  }

  return a1;
}

void IcpVideoEncoder::~IcpVideoEncoder(IcpVideoEncoder *this)
{
  *this = &unk_2A1C7D3B0;
  v2 = *(this + 14);
  if (v2)
  {
    FrameEncoder::~FrameEncoder(v2);
    MEMORY[0x29C24CEF0]();
  }

  v3 = *(this + 17);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 19);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    CFRelease(v5);
  }

  VideoEncoderBase<IcpVideoEncoder>::~VideoEncoderBase(this);
}

{
  IcpVideoEncoder::~IcpVideoEncoder(this);

  JUMPOUT(0x29C24CEF0);
}

uint64_t IcpVideoEncoder::startSession(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  *(a1 + 32) = a2;
  if (!codecTypeIsSupported(*(a1 + 12)))
  {
    return 4294954389;
  }

  *(a1 + 40) = a3;
  if (a4)
  {
    v7 = *(a1 + 96);
    if (v7)
    {
      CFRelease(v7);
    }

    CFRetain(a4);
    *(a1 + 96) = a4;
  }

  v8 = codecTypeIs444(*(a1 + 12));
  v10 = *(a1 + 40);
  v9 = *(a1 + 44);
  v11 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (!Mutable)
  {
    return 4294954392;
  }

  v13 = Mutable;
  if (v8)
  {
    v14 = &IcpVideoEncoder::kPixelFormatList4444;
  }

  else
  {
    v14 = &IcpVideoEncoder::kPixelFormatList422;
  }

  v15 = CFNumberCreate(v11, kCFNumberSInt32Type, v14);
  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = v15;
  CFArrayAppendValue(v13, v15);
  CFRelease(v16);
  v17 = (v8 ? &IcpVideoEncoder::kPixelFormatList4444 : &IcpVideoEncoder::kPixelFormatList422);
  v18 = CFNumberCreate(v11, kCFNumberSInt32Type, v17 + 4);
  if (!v18 || (v19 = v18, CFArrayAppendValue(v13, v18), CFRelease(v19), (v20 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020])) == 0))
  {
LABEL_24:
    CFRelease(v13);
    return 4294954392;
  }

  v21 = v20;
  CFDictionaryAddValue(v20, *MEMORY[0x29EDB96E0], v13);
  valuePtr = v10;
  v22 = CFNumberCreate(v11, kCFNumberIntType, &valuePtr);
  if (v22)
  {
    v23 = v22;
    CFDictionaryAddValue(v21, *MEMORY[0x29EDB9750], v22);
    CFRelease(v23);
  }

  v29 = v9;
  v24 = CFNumberCreate(v11, kCFNumberIntType, &v29);
  if (v24)
  {
    v25 = v24;
    CFDictionaryAddValue(v21, *MEMORY[0x29EDB96C8], v24);
    CFRelease(v25);
  }

  CFRelease(v13);
  v26 = *(a1 + 32);
  VTEncoderSessionSetPixelBufferAttributes();
  CFRelease(v21);
  if (!*(a1 + 112))
  {
    operator new();
  }

  result = 0;
  *(a1 + 8) = 1;
  return result;
}

void sub_29539C71C(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x29C24CEF0](v2, 0x1020C409EBB20E4);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x29539C6F8);
  }

  _Unwind_Resume(a1);
}

uint64_t IcpVideoEncoder::replaceFormatDescriptionForCustomNCLC(IcpVideoEncoder *this, unsigned int a2, unsigned int a3, unsigned int a4, const opaqueCMFormatDescription **a5)
{
  Extensions = CMFormatDescriptionGetExtensions(*a5);
  v11 = *MEMORY[0x29EDB8ED8];
  if (Extensions)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, Extensions);
    if (MutableCopy)
    {
      goto LABEL_3;
    }

    return 4294954392;
  }

  MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!MutableCopy)
  {
    return 4294954392;
  }

LABEL_3:
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x29EDB95A0]);
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x29EDB9608]);
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x29EDB9658]);
  LODWORD(v23) = 1668047726;
  WORD2(v23) = bswap32(a2) >> 16;
  HIWORD(v23) = bswap32(a3) >> 16;
  v24 = bswap32(a4) >> 16;
  v13 = CFDataCreate(0, &v23, 10);
  if (v13)
  {
    v14 = v13;
    v15 = *MEMORY[0x29EDB92C8];
    Value = CFDictionaryGetValue(MutableCopy, *MEMORY[0x29EDB92C8]);
    if (Value)
    {
      Mutable = CFDictionaryCreateMutableCopy(v11, 0, Value);
      if (!Mutable)
      {
LABEL_7:
        CFRelease(v14);
        goto LABEL_8;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (!Mutable)
      {
        goto LABEL_7;
      }
    }

    v18 = Mutable;
    CFDictionarySetValue(Mutable, @"colr", v14);
    CFDictionarySetValue(MutableCopy, v15, v18);
    CFRelease(v18);
    goto LABEL_7;
  }

LABEL_8:
  v23 = 0;
  v19 = CMVideoFormatDescriptionCreate(v11, *(this + 3), *(this + 10), *(this + 11), MutableCopy, &v23);
  v20 = v23;
  if (v19)
  {
    v21 = 1;
  }

  else
  {
    v21 = v23 == 0;
  }

  if (!v21)
  {
    if (*a5)
    {
      CFRelease(*a5);
      v20 = v23;
    }

    *a5 = v20;
  }

  CFRelease(MutableCopy);
  return v19;
}

uint64_t IcpVideoEncoder::encodeFrame(uint64_t a1, int a2, CVPixelBufferRef pixelBuffer, CMTime *a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v120 = *MEMORY[0x29EDCA608];
  v94 = 0;
  blockBufferOut = 0;
  memset(dataLength, 0, sizeof(dataLength));
  *&sampleTimingArray.duration.value = *a5;
  sampleTimingArray.duration.epoch = *(a5 + 16);
  sampleTimingArray.presentationTimeStamp = *a4;
  sampleTimingArray.decodeTimeStamp = **&MEMORY[0x29EDB9398];
  if (*(a1 + 160) >= 2)
  {
    v11 = *(a1 + 168);
    if (v11)
    {
      *sampleBufferOut = 0;
      VideoFormatDescription = CMSampleBufferCreateCopyWithNewTiming(*MEMORY[0x29EDB8ED8], v11, 1, &sampleTimingArray, sampleBufferOut);
      v13 = *(a1 + 32);
      v14 = *a7;
      VTEncoderSessionEmitEncodedFrame();
      if (*sampleBufferOut)
      {
        CFRelease(*sampleBufferOut);
      }

      v16 = *(a1 + 160);
      v15 = *(a1 + 164);
      *(a1 + 164) = v15 + 1;
      if (v15 == v16 - 2)
      {
        CFRelease(*(a1 + 168));
        *(a1 + 168) = 0;
        *(a1 + 164) = 0;
      }

      goto LABEL_29;
    }
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v18 = PixelFormatType;
  if ((PixelFormatType == 1378955371 || PixelFormatType == 1915892016 || PixelFormatType == 1848848434) && !codecTypeIs444(*(a1 + 12)))
  {
    v28 = 0;
    VideoFormatDescription = 4294954391;
    goto LABEL_21;
  }

  MaxCompressionSizeExcludingAlpha = EncoderSetup::getMaxCompressionSizeExcludingAlpha(*(a1 + 12), *(a1 + 44) * *(a1 + 40), v18);
  v20 = codecTypeIs444(*(a1 + 12));
  v21 = *(a1 + 40);
  v22 = *(a1 + 44);
  v23 = v21 + 15;
  if (v21 < -15)
  {
    v23 = v21 + 30;
  }

  v24 = MaxCompressionSizeExcludingAlpha + 48 * v22 * (v23 >> 4);
  if (v20)
  {
    v25 = v24;
  }

  else
  {
    v25 = MaxCompressionSizeExcludingAlpha;
  }

  v26 = EncoderSetup::getMaxCompressionSizeExcludingAlpha(*(a1 + 12), v22 * v21, v18);
  BlockBufferInEncoder = createBlockBufferInEncoder(*(a1 + 32), *(a1 + 96), v25);
  v28 = BlockBufferInEncoder;
  if (!BlockBufferInEncoder)
  {
    VideoFormatDescription = 0;
    goto LABEL_21;
  }

  lengthAtOffsetOut = 0;
  CMBlockBufferGetDataPointer(BlockBufferInEncoder, 0, &lengthAtOffsetOut, 0, &dataLength[1]);
  VideoFormatDescription = CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  if (VideoFormatDescription)
  {
    goto LABEL_21;
  }

  *&v88 = CVPixelBufferGetBaseAddress(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v90 = v18;
  v33 = *(a1 + 12);
  v91 = *(a1 + 40);
  v92 = codecTypeIs422(v33);
  v79.i32[0] = 4;
  EncoderSetup::setQuantIndex(*(a1 + 12), &v80, v81, v34);
  v81[1] = v26;
  v81[2] = 8 * v26 / 9;
  if (*(a1 + 60) == 2)
  {
    if (CFEqual(*(a1 + 64), *MEMORY[0x29EDB95E0]))
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    v82 = v35;
  }

  else
  {
    v82 = 0;
  }

  v36 = v90;
  v37 = codecTypeIs422(*(a1 + 12));
  v38 = 2;
  if ((v37 & 1) == 0 && v36 != 846624121 && v36 != 1983000880 && v36 != 2037741171)
  {
    if (v36 == 1983000886)
    {
      v38 = 2;
    }

    else
    {
      v38 = 3;
    }
  }

  v83 = v38;
  Attachment = *(a1 + 72);
  if (!Attachment)
  {
    Attachment = CVBufferGetAttachment(pixelBuffer, *MEMORY[0x29EDB95A0], 0);
    if (!Attachment)
    {
      goto LABEL_57;
    }
  }

  if (!CFEqual(Attachment, *MEMORY[0x29EDB95C0]))
  {
    if (CFEqual(Attachment, *MEMORY[0x29EDB95B0]))
    {
      v40 = 5;
      goto LABEL_58;
    }

    if (CFEqual(Attachment, *MEMORY[0x29EDB95D0]))
    {
      v40 = 6;
      goto LABEL_58;
    }

    if (CFEqual(Attachment, *MEMORY[0x29EDB9290]))
    {
      v40 = 9;
      goto LABEL_58;
    }

    if (CFEqual(Attachment, *MEMORY[0x29EDB9288]))
    {
      v40 = 11;
      goto LABEL_58;
    }

    if (CFEqual(Attachment, *MEMORY[0x29EDB9298]))
    {
      v40 = 12;
      goto LABEL_58;
    }

LABEL_57:
    v40 = 2;
    goto LABEL_58;
  }

  v40 = 1;
LABEL_58:
  v84 = v40;
  v41 = *(a1 + 80);
  if (!v41)
  {
    v41 = CVBufferGetAttachment(pixelBuffer, *MEMORY[0x29EDB9608], 0);
    if (!v41)
    {
      goto LABEL_71;
    }
  }

  if (!CFEqual(v41, *MEMORY[0x29EDB9620]))
  {
    if (CFEqual(v41, *MEMORY[0x29EDB9630]))
    {
      v42 = 7;
      goto LABEL_72;
    }

    if (!CFEqual(v41, *MEMORY[0x29EDB92E8]))
    {
      if (CFEqual(v41, *MEMORY[0x29EDB9300]))
      {
        v42 = 17;
        goto LABEL_72;
      }

      if (CFEqual(v41, *MEMORY[0x29EDB92F8]))
      {
        v42 = 16;
        goto LABEL_72;
      }

      if (CFEqual(v41, *MEMORY[0x29EDB92F0]))
      {
        v42 = 18;
        goto LABEL_72;
      }

LABEL_71:
      v42 = 2;
      goto LABEL_72;
    }
  }

  v42 = 1;
LABEL_72:
  v85 = v42;
  v43 = *(a1 + 88);
  if (!v43)
  {
    v43 = CVBufferGetAttachment(pixelBuffer, *MEMORY[0x29EDB9658], 0);
    if (!v43)
    {
      goto LABEL_81;
    }
  }

  if (!CFEqual(v43, *MEMORY[0x29EDB9678]))
  {
    if (CFEqual(v43, *MEMORY[0x29EDB9670]))
    {
      goto LABEL_90;
    }

    if (CFEqual(v43, *MEMORY[0x29EDB9688]))
    {
      v45 = 7;
      goto LABEL_82;
    }

    if (CFEqual(v43, *MEMORY[0x29EDB9310]))
    {
      v44 = 9;
      goto LABEL_91;
    }

LABEL_81:
    v45 = 2;
LABEL_82:
    v86 = v45;
    if (v90 <= 1647719520)
    {
      if (v90 == 32)
      {
        goto LABEL_89;
      }

      v46 = 1378955371;
    }

    else
    {
      if (v90 == 1647719521 || v90 == 1915892016)
      {
        goto LABEL_89;
      }

      v46 = 1848848434;
    }

    if (v90 != v46)
    {
      goto LABEL_92;
    }

LABEL_89:
    if (SHIDWORD(v91) >= 720)
    {
      goto LABEL_75;
    }

LABEL_90:
    v44 = 6;
    goto LABEL_91;
  }

LABEL_75:
  v44 = 1;
LABEL_91:
  v86 = v44;
LABEL_92:
  if (*(a1 + 121) == 1)
  {
    v47 = codecTypeIs444(*(a1 + 12));
    v87 = v47;
    v76 = 1;
    if (a4->value)
    {
      goto LABEL_106;
    }
  }

  else
  {
    v47 = 0;
    v87 = 0;
    v76 = 1;
    if (a4->value)
    {
      goto LABEL_106;
    }
  }

  if (IcpUtility::logLevel(v47) >= 1 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v48 = *(a1 + 12);
    if (v90 == 32)
    {
      v49 = &v97;
      values = 0x2942475241283233;
      v50 = 8;
    }

    else
    {
      v49 = (&values + 4);
      LODWORD(values) = bswap32(v90);
      v50 = 4;
    }

    *v49 = 0;
    v98 = v50;
    v51 = v82 ? 105 : 112;
    *sampleBufferOut = 134220802;
    *&sampleBufferOut[4] = a1;
    *&sampleBufferOut[12] = 1024;
    *&sampleBufferOut[14] = v48 >> 24;
    v100 = 1024;
    v101 = v48 << 8 >> 24;
    v102 = 1024;
    v103 = v48 >> 8;
    v104 = 1024;
    v105 = v48;
    v106 = 2080;
    p_values = &values;
    v108 = 1024;
    v109 = v91;
    v110 = 1024;
    v111 = HIDWORD(v91);
    v112 = 1024;
    v113 = v51;
    v114 = 1024;
    v115 = v84;
    v116 = 1024;
    v117 = v85;
    v118 = 1024;
    v119 = v86;
    _os_log_impl(&dword_29539A000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IcpVideoEncoder[%p]: Encoding '%c%c%c%c' from '%s' (%dx%d%c %d-%d-%d)\n", sampleBufferOut, 0x52u);
    if (v98 < 0)
    {
      operator delete(values);
    }
  }

LABEL_106:
  if ((enabledSignpostCategories() & 0x100) != 0)
  {
    kdebug_trace();
  }

  v52 = FrameEncoder::encode(*(a1 + 112), &v88, &v79, *&dataLength[1], v25, dataLength, &v76);
  if ((enabledSignpostCategories() & 0x100) != 0)
  {
    kdebug_trace();
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  if (v52 < 0)
  {
    if (v52 == -3)
    {
      VideoFormatDescription = 4294954394;
    }

    else
    {
      VideoFormatDescription = 4294954384;
    }

    goto LABEL_21;
  }

  if (*(a1 + 16) || (v59 = *(a1 + 32), v60 = *(a1 + 12), v61 = *(a1 + 40), v62 = *(a1 + 44), v63 = *(a1 + 104), VideoFormatDescription = VTEncoderSessionCreateVideoFormatDescription(), !VideoFormatDescription) && (*(a1 + 144) != 1 || (VideoFormatDescription = IcpVideoEncoder::replaceFormatDescriptionForCustomNCLC(a1, v84, v85, v86, (a1 + 16)), !VideoFormatDescription)))
  {
    v53 = v76;
    v54 = MEMORY[0x29EDB8ED8];
    if (*(a1 + 120) != 1 || (v76 & 1) != 0)
    {
      goto LABEL_140;
    }

    if (*(a1 + 128) != 1)
    {
      goto LABEL_143;
    }

    v55 = *MEMORY[0x29EDB8ED8];
    addNumberToDictionary<int>(*MEMORY[0x29EDB8ED8], *(a1 + 104), *MEMORY[0x29EDB92B0], 32);
    v56 = *(a1 + 124);
    if (v56)
    {
      goto LABEL_130;
    }

    v57 = CVBufferGetAttachment(pixelBuffer, *MEMORY[0x29EDB9540], 0);
    v58 = v57;
    if (v57)
    {
      if (CFEqual(v57, *MEMORY[0x29EDB9550]))
      {
        v56 = 256;
LABEL_128:
        *(a1 + 124) = v56;
        goto LABEL_130;
      }

      if (CFEqual(v58, *MEMORY[0x29EDB9548]))
      {
        v56 = 258;
        goto LABEL_128;
      }
    }

    v56 = *(a1 + 124);
    if (!v56)
    {
LABEL_134:
      v67 = *(a1 + 136);
      if (v67)
      {
        CFRelease(v67);
        *(a1 + 136) = 0;
      }

      v68 = *(a1 + 32);
      v69 = *(a1 + 12);
      v70 = *(a1 + 40);
      v71 = *(a1 + 44);
      v72 = *(a1 + 104);
      VideoFormatDescription = VTEncoderSessionCreateVideoFormatDescription();
      if (VideoFormatDescription)
      {
        goto LABEL_21;
      }

      if (*(a1 + 144) == 1)
      {
        VideoFormatDescription = IcpVideoEncoder::replaceFormatDescriptionForCustomNCLC(a1, v84, v85, v86, (a1 + 136));
        if (VideoFormatDescription)
        {
          goto LABEL_21;
        }
      }

      *(a1 + 128) = 0;
      v53 = v76;
LABEL_140:
      if (v53)
      {
        if (*(a1 + 120))
        {
LABEL_145:
          v73 = *(a1 + 16);
LABEL_146:
          v74 = *v54;
          CMBlockBufferCreateWithBufferReference(*v54, v28, 0, dataLength[0], 0, &blockBufferOut);
          *sampleBufferOut = dataLength[0];
          VideoFormatDescription = CMSampleBufferCreate(v74, blockBufferOut, 1u, 0, 0, v73, 1, 1, &sampleTimingArray, 1, sampleBufferOut, &v94);
          if (*(a1 + 48) == 1)
          {
            *(a1 + 120) = 1;
          }

          goto LABEL_21;
        }

LABEL_144:
        v73 = *(a1 + 136);
        if (v73)
        {
          goto LABEL_146;
        }

        goto LABEL_145;
      }

LABEL_143:
      *(a1 + 120) = 0;
      goto LABEL_144;
    }

LABEL_130:
    *bytes = bswap32(v56);
    v64 = CFDataCreate(v55, bytes, 4);
    v65 = v64;
    if (v64)
    {
      *sampleBufferOut = xmmword_29EDCB1D8;
      values = v64;
      v97 = 0;
      v66 = CFDictionaryCreate(v55, sampleBufferOut, &values, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (v66)
      {
        CFDictionarySetValue(*(a1 + 104), *MEMORY[0x29EDB92C8], v66);
        CFRelease(v66);
      }

      CFRelease(v65);
    }

    goto LABEL_134;
  }

LABEL_21:
  v29 = *(a1 + 32);
  v30 = *a7;
  VTEncoderSessionEmitEncodedFrame();
  if (*(a1 + 160) >= 2)
  {
    *(a1 + 168) = CFRetain(v94);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v28)
  {
    CFRelease(v28);
  }

LABEL_29:
  v31 = *MEMORY[0x29EDCA608];
  return VideoFormatDescription;
}

uint64_t IcpVideoEncoder::copyProperty(IcpVideoEncoder *this, CFTypeRef cf1, const __CFAllocator *a3, CFNumberRef *a4)
{
  result = 4294954394;
  if (cf1 && a4)
  {
    if (CFEqual(cf1, @"kVTCodecPropertyKey_PreserveAlphaChannel"))
    {
      result = 0;
      if (*(this + 121))
      {
        v9 = MEMORY[0x29EDB8F00];
      }

      else
      {
        v9 = MEMORY[0x29EDB8EF8];
      }

      *a4 = *v9;
    }

    else if (CFEqual(cf1, @"kVTProCodecPropertyKey_AverageBytesPerFrame"))
    {
      if (*(this + 121) == 1 && codecTypeIs444(*(this + 3)))
      {
        return 4294954396;
      }

      else
      {
        valuePtr = ((8 * EncoderSetup::getMaxCompressionSizeExcludingAlpha(*(this + 3), *(this + 11) * *(this + 10), 0)) / 9);
        v10 = CFNumberCreate(a3, kCFNumberFloat32Type, &valuePtr);
        result = 0;
        *a4 = v10;
      }
    }

    else
    {

      return VideoEncoderBase<IcpVideoEncoder>::copyProperty(this, cf1, a3, a4);
    }
  }

  return result;
}

uint64_t VideoEncoderBase<IcpVideoEncoder>::copyProperty(uint64_t a1, CFTypeRef cf1, const __CFAllocator *a3, void *a4)
{
  result = 4294954394;
  if (!cf1 || !a4)
  {
    return result;
  }

  if (CFEqual(cf1, *MEMORY[0x29EDBCDD0]))
  {
    v9 = *(a1 + 48);
    goto LABEL_5;
  }

  if (!CFEqual(cf1, *MEMORY[0x29EDBCDA0]))
  {
    if (CFEqual(cf1, *MEMORY[0x29EDBCD78]))
    {
      v9 = *(a1 + 60);
LABEL_5:
      valuePtr = v9;
      v10 = CFNumberCreate(a3, kCFNumberIntType, &valuePtr);
      *a4 = v10;
      if (v10)
      {
        return 0;
      }

      else
      {
        return 4294954392;
      }
    }

    if (CFEqual(cf1, *MEMORY[0x29EDBCD80]))
    {
      v16 = *(a1 + 64);
      if (v16)
      {
LABEL_22:
        Copy = CFStringCreateCopy(a3, v16);
LABEL_26:
        result = 0;
        *a4 = Copy;
        return result;
      }
    }

    else if (CFEqual(cf1, *MEMORY[0x29EDBCD58]))
    {
      v16 = *(a1 + 72);
      if (v16)
      {
        goto LABEL_22;
      }
    }

    else if (CFEqual(cf1, *MEMORY[0x29EDBCDD8]))
    {
      v16 = *(a1 + 80);
      if (v16)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!CFEqual(cf1, *MEMORY[0x29EDBCDE8]))
      {
        return 4294954396;
      }

      v16 = *(a1 + 88);
      if (v16)
      {
        goto LABEL_22;
      }
    }

    Copy = 0;
    goto LABEL_26;
  }

  if (*(a1 + 52) < 1 || *(a1 + 56) < 1)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    valuePtr = *(a1 + 52);
    v12 = CFNumberCreate(a3, kCFNumberIntType, &valuePtr);
    if (v12)
    {
      v13 = v12;
      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB95F8], v12);
      CFRelease(v13);
    }

    valuePtr = *(a1 + 56);
    v14 = CFNumberCreate(a3, kCFNumberIntType, &valuePtr);
    if (v14)
    {
      v15 = v14;
      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB9600], v14);
      CFRelease(v15);
    }
  }

  result = 0;
  *a4 = Mutable;
  return result;
}

uint64_t IcpVideoEncoder::setProperty(IcpVideoEncoder *this, CFTypeRef cf1, const __CFBoolean *a3)
{
  if (CFEqual(cf1, @"kVTCodecPropertyKey_PreserveAlphaChannel"))
  {
    if (a3)
    {
      Value = CFBooleanGetValue(a3);
      result = 0;
      *(this + 121) = Value != 0;
      return result;
    }

    return 4294954394;
  }

  if (CFEqual(cf1, @"kVTCodecPropertyKey_AlphaMode"))
  {
    if (codecTypeIs444(*(this + 3)))
    {
      valuePtr = 0;
      if (!a3)
      {
        return 4294954394;
      }

      if (!CFNumberGetValue(a3, kCFNumberIntType, &valuePtr))
      {
        return 4294954394;
      }

      v8 = valuePtr;
      if ((valuePtr - 256) > 2)
      {
        return 4294954394;
      }

      goto LABEL_29;
    }

    return 4294954396;
  }

  if (CFEqual(cf1, *MEMORY[0x29EDBCD38]))
  {
    if (!codecTypeIs444(*(this + 3)))
    {
      return 4294954396;
    }

    if (a3)
    {
      if (CFEqual(a3, *MEMORY[0x29EDBCD28]))
      {
        v8 = 256;
LABEL_29:
        if (*(this + 31) != v8)
        {
          *(this + 128) = 1;
        }

        result = 0;
        *(this + 31) = v8;
        return result;
      }

      if (CFEqual(a3, *MEMORY[0x29EDBCD20]))
      {
        v8 = 258;
        goto LABEL_29;
      }
    }

    return 4294954394;
  }

  if (CFEqual(cf1, @"kVTCodecPropertyKey_CustomColorPrimaries"))
  {
    v9 = *(this + 9);
    if (v9)
    {
      CFRelease(v9);
    }

    *(this + 9) = a3;
    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (CFEqual(cf1, @"kVTCodecPropertyKey_CustomTransferFunction"))
  {
    v10 = *(this + 10);
    if (v10)
    {
      CFRelease(v10);
    }

    *(this + 10) = a3;
    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (CFEqual(cf1, @"kVTCodecPropertyKey_CustomYCbCrMatrix"))
  {
    v11 = *(this + 11);
    if (v11)
    {
      CFRelease(v11);
    }

    *(this + 11) = a3;
    if (!a3)
    {
      goto LABEL_21;
    }

LABEL_20:
    CFRetain(a3);
LABEL_21:
    result = 0;
    *(this + 144) = 1;
    return result;
  }

  return VideoEncoderBase<IcpVideoEncoder>::setProperty(this, cf1, a3);
}

uint64_t VideoEncoderBase<IcpVideoEncoder>::setProperty(_DWORD *a1, CFTypeRef cf1, const __CFDictionary *a3)
{
  result = 4294954394;
  if (!cf1 || !a3)
  {
    return result;
  }

  if (!CFEqual(cf1, *MEMORY[0x29EDBCDD0]))
  {
    if (CFEqual(cf1, *MEMORY[0x29EDBCDA0]))
    {
      v8 = *MEMORY[0x29EDB95F8];
      if (*MEMORY[0x29EDB95F8])
      {
        v9 = a1[13];
        value = 0;
        if (CFDictionaryGetValueIfPresent(a3, v8, &value))
        {
          if (!CFNumberGetValue(value, kCFNumberIntType, a1 + 13))
          {
            a1[13] = v9;
          }
        }
      }

      v10 = *MEMORY[0x29EDB9600];
      if (*MEMORY[0x29EDB9600])
      {
        v11 = a1[14];
        value = 0;
        if (CFDictionaryGetValueIfPresent(a3, v10, &value))
        {
          if (!CFNumberGetValue(value, kCFNumberIntType, a1 + 14))
          {
            a1[14] = v11;
          }
        }
      }

      if (a1[13] >= 1 && a1[14] > 0)
      {
        return 0;
      }

      *(a1 + 13) = 0;
      return 4294954394;
    }

    if (CFEqual(cf1, *MEMORY[0x29EDBCD78]))
    {
      v12 = CFGetTypeID(a3);
      if (v12 == CFNumberGetTypeID() && CFNumberGetValue(a3, kCFNumberIntType, a1 + 15))
      {
        return 0;
      }

      return 4294954394;
    }

    if (CFEqual(cf1, *MEMORY[0x29EDBCD80]))
    {
      v13 = *(a1 + 8);
      if (v13)
      {
        CFRelease(v13);
      }

      *(a1 + 8) = a3;
LABEL_29:
      CFRetain(a3);
      return 0;
    }

    if (CFEqual(cf1, *MEMORY[0x29EDBCD58]))
    {
      if ((*(*a1 + 80))(a1, a3))
      {
        v14 = *(a1 + 9);
        if (v14)
        {
          CFRelease(v14);
        }

        *(a1 + 9) = a3;
        goto LABEL_29;
      }
    }

    else if (CFEqual(cf1, *MEMORY[0x29EDBCDD8]))
    {
      if ((*(*a1 + 88))(a1, a3))
      {
        v15 = *(a1 + 10);
        if (v15)
        {
          CFRelease(v15);
        }

        *(a1 + 10) = a3;
        goto LABEL_29;
      }
    }

    else
    {
      if (!CFEqual(cf1, *MEMORY[0x29EDBCDE8]))
      {
        return 4294954396;
      }

      if ((*(*a1 + 96))(a1, a3))
      {
        v16 = *(a1 + 11);
        if (v16)
        {
          CFRelease(v16);
        }

        *(a1 + 11) = a3;
        goto LABEL_29;
      }
    }

    return 4294954394;
  }

  v7 = CFGetTypeID(a3);
  if (v7 == CFNumberGetTypeID() && CFNumberGetValue(a3, kCFNumberIntType, a1 + 12))
  {
    return 0;
  }

  return 4294954394;
}

BOOL IcpVideoEncoder::isValidYCbCrMatrix(IcpVideoEncoder *this, CFTypeRef cf1)
{
  if (!cf1)
  {
    return 1;
  }

  if (CFEqual(cf1, kSupportedYCbCrMatrices))
  {
    return 1;
  }

  if (CFEqual(cf1, qword_2A1899C78))
  {
    return 1;
  }

  return CFEqual(cf1, qword_2A1899C80) != 0;
}

void VideoEncoderBase<IcpVideoEncoder>::finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  a1[4] = 0;
  v3 = a1[12];
  if (v3)
  {
    CFRelease(v3);
    a1[12] = 0;
  }
}

void *VideoCodecBase<IcpVideoEncoder>::~VideoCodecBase(void *a1)
{
  *a1 = &unk_2A1C7D4E0;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void VideoCodecBase<IcpVideoEncoder>::finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

void _GLOBAL__sub_I_IcpVideoEncoder_cpp()
{
  v0 = *MEMORY[0x29EDB9670];
  kSupportedYCbCrMatrices = *MEMORY[0x29EDB9678];
  qword_2A1899C78 = v0;
  qword_2A1899C80 = *MEMORY[0x29EDB9310];
}

uint64_t RateControl::interpolateQuant(RateControl *this, int a2, int a3, int a4, int a5)
{
  if (a3 <= a5)
  {
    return a4 << 16;
  }

  v5 = (((a3 - this) << 16) / (a3 - a5) + 32) >> 6;
  if (v5 >= 1023)
  {
    LODWORD(v5) = 1023;
  }

  return RateControl::ThreeToThePowerTable[v5] * a2;
}

uint64_t RateControl::interpolateSize(RateControl *this, int a2, uint64_t a3, uint64_t a4)
{
  if (!a2 || !this || this <= a2)
  {
    return a3;
  }

  if (3 * a2 > this)
  {
    v4 = ((a2 << 16) / this + 32) >> 6;
    if (v4 >= 1023)
    {
      LODWORD(v4) = 1023;
    }

    return ((RateControl::Log3Table[v4] * (a3 - a4) + 0x8000) >> 16) + a3;
  }

  return a4;
}

double DiscreteCosineTransform::fdct<short>(int16x8_t *a1, int16x8_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = vdupq_lane_s16(*a1->i8, 0);
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(veorq_s8(v4, *a1), veorq_s8(v4, v3)), vorrq_s8(veorq_s8(v5, v4), veorq_s8(v4, v6))), vorrq_s8(vorrq_s8(veorq_s8(v7, v4), veorq_s8(v8, v4)), veorq_s8(v9, v4))), veorq_s8(v10, v4));
  v11.i16[0] = vmaxvq_u16(v11);
  if (v11.i32[0])
  {
    v12 = vqaddq_s16(v2, v10);
    v13 = vqsubq_s16(v2, v10);
    v14 = vqaddq_s16(v3, v9);
    v15 = vqsubq_s16(v3, v9);
    v16 = vaddq_s16(v15, v15);
    v17 = vqaddq_s16(v6, v8);
    v18 = vqsubq_s16(v6, v8);
    v19 = vaddq_s16(v18, v18);
    v20 = vqaddq_s16(v5, v7);
    v21 = vqsubq_s16(v5, v7);
    v22 = vqaddq_s16(v12, v20);
    v23 = vqsubq_s16(v12, v20);
    v24 = vqaddq_s16(v14, v17);
    v25 = vqsubq_s16(v14, v17);
    v26 = vqaddq_s16(v22, v24);
    v27 = vqsubq_s16(v22, v24);
    v28 = vdupq_n_s16(0x6A0Au);
    v29 = vqaddq_s16(vuzp2q_s16(vmull_s16(*v25.i8, *v28.i8), vmull_high_s16(v25, v28)), v23);
    v30 = vqsubq_s16(vuzp2q_s16(vmull_s16(*v23.i8, *v28.i8), vmull_high_s16(v23, v28)), v25);
    v31 = vqaddq_s16(v16, v19);
    v32 = vdupq_n_s16(0x5A82u);
    v33 = vuzp2q_s16(vmull_s16(*v31.i8, *v32.i8), vmull_high_s16(v31, v32));
    v34 = vqsubq_s16(v16, v19);
    v35 = vuzp2q_s16(vmull_s16(*v34.i8, *v32.i8), vmull_high_s16(v34, v32));
    v36 = vqaddq_s16(v13, v33);
    v37 = vqsubq_s16(v13, v33);
    v38 = vqaddq_s16(v21, v35);
    v39 = vqsubq_s16(v21, v35);
    v40 = vdupq_n_s16(0x32ECu);
    v41 = vqaddq_s16(vuzp2q_s16(vmull_s16(*v38.i8, *v40.i8), vmull_high_s16(v38, v40)), v36);
    v42 = vuzp2q_s16(vmull_s16(*v36.i8, *v40.i8), vmull_high_s16(v36, v40));
    v43 = vdupq_n_s16(0xAB0Eu);
    v44 = vqsubq_s16(v42, v38);
    v45 = vqaddq_s16(vqaddq_s16(vuzp2q_s16(vmull_s16(*v43.i8, *v37.i8), vmull_high_s16(v43, v37)), v37), v39);
    v46 = vqsubq_s16(v37, vqaddq_s16(vuzp2q_s16(vmull_s16(*v43.i8, *v39.i8), vmull_high_s16(v43, v39)), v39));
    v47 = vrev64q_s16(v46);
    v46.i64[1] = v45.i64[0];
    v48 = vzip2q_s64(v47, vrev64q_s16(v45));
    v49 = vqaddq_s16(v46, v48);
    v50 = vqsubq_s16(v46, v48);
    v51 = vzip1q_s32(v49, v50);
    v52 = vextq_s8(v51, v51, 8uLL);
    v53 = vpaddq_s32(vmull_s16(*v51.i8, 0x587E68624B424B42), vmull_s16(*v52.i8, 0xC4DF979E9DACD746));
    v54 = vextq_s8(v52, v52, 8uLL).u64[0];
    v55 = vpaddq_s32(vmull_s16(*v51.i8, 0x979E3B21B4BE4B42), vmull_s16(*v52.i8, 0x979E587ED7466254));
    v51.i64[0] = 0x2000000020000;
    v51.i64[1] = 0x2000000020000;
    v56 = vzip2q_s32(v49, v50);
    v57 = vextq_s8(v56, v56, 8uLL);
    v58 = vextq_s8(v57, v57, 8uLL).u64[0];
    v59 = vshrq_n_s32(vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v56.i8, 0x587E68624B424B42), vmull_s16(*v57.i8, 0xC4DF979E9DACD746)), xmmword_2953BC3E0), vpaddq_s32(vmull_s16(*v57.i8, 0x14C33B214B424B42), vmull_s16(v58, 0xEB3D587E28BA6254))), 0x12uLL);
    v60 = vshrq_n_s32(vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v56.i8, 0x979E3B21B4BE4B42), vmull_s16(*v57.i8, 0x979E587ED7466254)), v51), vpaddq_s32(vmull_s16(*v57.i8, 0x587E14C34B42B4BELL), vmull_s16(v58, 0xC4DF14C39DAC28BALL))), 0x12uLL);
    v61 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v53, xmmword_2953BC3D0), vpaddq_s32(vmull_s16(*v52.i8, 0x14C33B214B424B42), vmull_s16(v54, 0xEB3D587E28BA6254))), 0x12uLL)), vshrq_n_s32(vaddq_s32(vaddq_s32(v55, v51), vpaddq_s32(vmull_s16(*v52.i8, 0x587E14C34B42B4BELL), vmull_s16(v54, 0xC4DF14C39DAC28BALL))), 0x12uLL));
    v62 = vqmovn_high_s32(vqmovn_s32(v59), v60);
    v63 = vrev64q_s16(v41);
    v41.i64[1] = v44.i64[0];
    v64 = vzip2q_s64(v63, vrev64q_s16(v44));
    v65 = vqaddq_s16(v41, v64);
    v66 = vqsubq_s16(v41, v64);
    v67 = vzip1q_s32(v65, v66);
    v68 = vextq_s8(v67, v67, 8uLL);
    v69 = vextq_s8(v68, v68, 8uLL).u64[0];
    v70 = vzip2q_s32(v65, v66);
    v71 = vextq_s8(v70, v70, 8uLL);
    v72 = vpaddq_s32(vmull_s16(*v70.i8, 0x68627B2158C558C5), vmull_s16(*v71.i8, 0xBA4184DF8C04CFF5));
    v73 = vextq_s8(v71, v71, 8uLL).u64[0];
    v74 = vpaddq_s32(vmull_s16(*v71.i8, 0x187E45BF58C558C5), vmull_s16(v73, 0xE7826862300B73FCLL));
    v75 = vshrq_n_s32(vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v70.i8, 0x84DF45BFA73B58C5), vmull_s16(*v71.i8, 0x84DF6862CFF573FCLL)), v51), vpaddq_s32(vmull_s16(*v71.i8, 0x6862187E58C5A73BLL), vmull_s16(v73, 0xBA41187E8C04300BLL))), 0x12uLL);
    v76 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v67.i8, 0x68627B2158C558C5), vmull_s16(*v68.i8, 0xBA4184DF8C04CFF5)), xmmword_2953BC3F0), vpaddq_s32(vmull_s16(*v68.i8, 0x187E45BF58C558C5), vmull_s16(v69, 0xE7826862300B73FCLL))), 0x12uLL)), vshrq_n_s32(vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v67.i8, 0x84DF45BFA73B58C5), vmull_s16(*v68.i8, 0x84DF6862CFF573FCLL)), v51), vpaddq_s32(vmull_s16(*v68.i8, 0x6862187E58C5A73BLL), vmull_s16(v69, 0xBA41187E8C04300BLL))), 0x12uLL));
    v77 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v72, xmmword_2953BC400), v74), 0x12uLL)), v75);
    v78 = vrev64q_s16(v29);
    v29.i64[1] = v30.i64[0];
    v79 = vzip2q_s64(v78, vrev64q_s16(v30));
    v80 = vqaddq_s16(v29, v79);
    v81 = vqsubq_s16(v29, v79);
    v82 = vzip1q_s32(v80, v81);
    v83 = vextq_s8(v82, v82, 8uLL);
    v84 = vextq_s8(v83, v83, 8uLL).u64[0];
    v85 = vzip2q_s32(v80, v81);
    v86 = vextq_s8(v85, v85, 8uLL);
    v87 = vextq_s8(v86, v86, 8uLL).u64[0];
    a2[2] = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v82.i8, 0x625473FC539F539FLL), vmull_s16(*v83.i8, 0xBE4D8C0492BFD2BFLL)), xmmword_2953BC410), vpaddq_s32(vmull_s16(*v83.i8, 0x171241B3539F539FLL), vmull_s16(v84, 0xE8EE62542D416D41))), 0x12uLL)), vshrq_n_s32(vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v82.i8, 0x8C0441B3AC61539FLL), vmull_s16(*v83.i8, 0x8C046254D2BF6D41)), v51), vpaddq_s32(vmull_s16(*v83.i8, 0x62541712539FAC61), vmull_s16(v84, 0xBE4D171292BF2D41))), 0x12uLL));
    a2[3] = v61;
    a2[6] = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v85.i8, 0x625473FC539F539FLL), vmull_s16(*v86.i8, 0xBE4D8C0492BFD2BFLL)), xmmword_2953BC410), vpaddq_s32(vmull_s16(*v86.i8, 0x171241B3539F539FLL), vmull_s16(v87, 0xE8EE62542D416D41))), 0x12uLL)), vshrq_n_s32(vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v85.i8, 0x8C0441B3AC61539FLL), vmull_s16(*v86.i8, 0x8C046254D2BF6D41)), v51), vpaddq_s32(vmull_s16(*v86.i8, 0x62541712539FAC61), vmull_s16(v87, 0xBE4D171292BF2D41))), 0x12uLL));
    a2[7] = v77;
    v88 = vrev64q_s16(v26);
    v26.i64[1] = v27.i64[0];
    v89 = vzip2q_s64(v88, vrev64q_s16(v27));
    v90 = vqaddq_s16(v26, v89);
    v91 = vqsubq_s16(v26, v89);
    v92 = vzip1q_s32(v90, v91);
    v93 = vextq_s8(v92, v92, 8uLL);
    v60.i64[0] = vextq_s8(v93, v93, 8uLL).u64[0];
    v94 = vzip2q_s32(v90, v91);
    v95 = vextq_s8(v94, v94, 8uLL);
    v96 = vpaddq_s32(vmull_s16(*v94.i8, 0x4B4258C540014000), vmull_s16(*v95.i8, 0xCDB7A73BAC61DD5DLL));
    v83.i64[0] = vextq_s8(v95, v95, 8uLL).u64[0];
    *a2 = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v92.i8, 0x4B4258C540014000), vmull_s16(*v93.i8, 0xCDB7A73BAC61DD5DLL)), v51), vpaddq_s32(vmull_s16(*v93.i8, 0x11A832493FFF4000), vmull_s16(*v60.i8, 0xEE584B4222A3539FLL))), 0x12uLL)), vshrq_n_s32(vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v92.i8, 0xA73B3249BFFF4000), vmull_s16(*v93.i8, 0xA73B4B42DD5D539FLL)), v51), vpaddq_s32(vmull_s16(*v93.i8, 0x4B4211A83FFFC000), vmull_s16(*v60.i8, 0xCDB711A8AC6122A3))), 0x12uLL));
    a2[1] = v76;
    v2 = vshrq_n_s32(vaddq_s32(vaddq_s32(vpaddq_s32(vmull_s16(*v94.i8, 0xA73B3249BFFF4000), vmull_s16(*v95.i8, 0xA73B4B42DD5D539FLL)), v51), vpaddq_s32(vmull_s16(*v95.i8, 0x4B4211A83FFFC000), vmull_s16(*v83.i8, 0xCDB711A8AC6122A3))), 0x12uLL);
    a2[4] = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v96, v51), vpaddq_s32(vmull_s16(*v95.i8, 0x11A832493FFF4000), vmull_s16(*v83.i8, 0xEE584B4222A3539FLL))), 0x12uLL)), v2);
    a2[5] = v62;
  }

  else
  {
    v97 = 4 * v2.i16[0];
    v2.i64[0] = 0;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    a2->i16[0] = v97;
  }

  return *v2.i64;
}

int16x8_t DiscreteCosineTransform::quantize<short,unsigned short>(int16x8_t *a1, int16x8_t *a2, int16x8_t *a3)
{
  v3 = vshlq_n_s16(vminq_s16(*a1, vnegq_s16(*a1)), 2uLL);
  v4 = vqaddq_s16(*a3, *a3);
  v5 = vuzp2q_s16(vmull_s16(*v3.i8, *v4.i8), vmull_high_s16(v3, v4));
  v3.i64[0] = 0x1000100010001;
  v3.i64[1] = 0x1000100010001;
  v6 = vaddq_s16(v5, v3);
  *a2 = vsubq_s16(vandq_s8(vshrq_n_u16(*a1, 0xFuLL), vcgtq_u16(v6, v3)), (*&v6 & __PAIR128__(0xFFFEFFFEFFFEFFFELL, 0xFFFEFFFEFFFEFFFELL)));
  v7 = a1[1];
  v8 = vshlq_n_s16(vminq_s16(v7, vnegq_s16(v7)), 2uLL);
  v9 = vqaddq_s16(a3[1], a3[1]);
  v10 = vaddq_s16(vuzp2q_s16(vmull_s16(*v8.i8, *v9.i8), vmull_high_s16(v8, v9)), v3);
  a2[1] = vsubq_s16(vandq_s8(vshrq_n_u16(v7, 0xFuLL), vcgtq_u16(v10, v3)), (*&v10 & __PAIR128__(0xFFFEFFFEFFFEFFFELL, 0xFFFEFFFEFFFEFFFELL)));
  v11 = a1[2];
  v12 = vshlq_n_s16(vminq_s16(v11, vnegq_s16(v11)), 2uLL);
  v13 = vqaddq_s16(a3[2], a3[2]);
  v14 = vaddq_s16(vuzp2q_s16(vmull_s16(*v12.i8, *v13.i8), vmull_high_s16(v12, v13)), v3);
  a2[2] = vsubq_s16(vandq_s8(vshrq_n_u16(v11, 0xFuLL), vcgtq_u16(v14, v3)), (*&v14 & __PAIR128__(0xFFFEFFFEFFFEFFFELL, 0xFFFEFFFEFFFEFFFELL)));
  v15 = a1[3];
  v16 = vshlq_n_s16(vminq_s16(v15, vnegq_s16(v15)), 2uLL);
  v17 = vqaddq_s16(a3[3], a3[3]);
  v18 = vaddq_s16(vuzp2q_s16(vmull_s16(*v16.i8, *v17.i8), vmull_high_s16(v16, v17)), v3);
  a2[3] = vsubq_s16(vandq_s8(vshrq_n_u16(v15, 0xFuLL), vcgtq_u16(v18, v3)), (*&v18 & __PAIR128__(0xFFFEFFFEFFFEFFFELL, 0xFFFEFFFEFFFEFFFELL)));
  v19 = a1[4];
  v20 = vshlq_n_s16(vminq_s16(v19, vnegq_s16(v19)), 2uLL);
  v21 = vqaddq_s16(a3[4], a3[4]);
  v22 = vaddq_s16(vuzp2q_s16(vmull_s16(*v20.i8, *v21.i8), vmull_high_s16(v20, v21)), v3);
  a2[4] = vsubq_s16(vandq_s8(vshrq_n_u16(v19, 0xFuLL), vcgtq_u16(v22, v3)), (*&v22 & __PAIR128__(0xFFFEFFFEFFFEFFFELL, 0xFFFEFFFEFFFEFFFELL)));
  v23 = a1[5];
  v24 = vshlq_n_s16(vminq_s16(v23, vnegq_s16(v23)), 2uLL);
  v25 = vqaddq_s16(a3[5], a3[5]);
  v26 = vaddq_s16(vuzp2q_s16(vmull_s16(*v24.i8, *v25.i8), vmull_high_s16(v24, v25)), v3);
  a2[5] = vsubq_s16(vandq_s8(vshrq_n_u16(v23, 0xFuLL), vcgtq_u16(v26, v3)), (*&v26 & __PAIR128__(0xFFFEFFFEFFFEFFFELL, 0xFFFEFFFEFFFEFFFELL)));
  v27 = a1[6];
  v28 = vshlq_n_s16(vminq_s16(v27, vnegq_s16(v27)), 2uLL);
  v29 = vqaddq_s16(a3[6], a3[6]);
  v30 = vaddq_s16(vuzp2q_s16(vmull_s16(*v28.i8, *v29.i8), vmull_high_s16(v28, v29)), v3);
  a2[6] = vsubq_s16(vandq_s8(vshrq_n_u16(v27, 0xFuLL), vcgtq_u16(v30, v3)), (*&v30 & __PAIR128__(0xFFFEFFFEFFFEFFFELL, 0xFFFEFFFEFFFEFFFELL)));
  v31 = a1[7];
  v32 = vshlq_n_s16(vminq_s16(v31, vnegq_s16(v31)), 2uLL);
  v33 = vqaddq_s16(a3[7], a3[7]);
  v34 = vaddq_s16(vuzp2q_s16(vmull_s16(*v32.i8, *v33.i8), vmull_high_s16(v32, v33)), v3);
  result = vsubq_s16(vandq_s8(vshrq_n_u16(v31, 0xFuLL), vcgtq_u16(v34, v3)), (*&v34 & __PAIR128__(0xFFFEFFFEFFFEFFFELL, 0xFFFEFFFEFFFEFFFELL)));
  a2[7] = result;
  return result;
}

uint64_t Frame::Header::encode(Frame::Header *this, unsigned __int8 *a2, int a3)
{
  *a2 = bswap32(*this) >> 16;
  a2[2] = 0;
  v3 = *(this + 3) != 2 || *(this + 11) != 0;
  v4 = 0;
  a2[3] = v3;
  *(a2 + 1) = 812413025;
  *(a2 + 4) = bswap32(*(this + 2)) >> 16;
  *(a2 + 5) = bswap32(*(this + 4)) >> 16;
  a2[12] = (*(this + 12) << 6) | (4 * (*(this + 16) & 3));
  a2[13] = *(this + 24) & 0xF | (16 * *(this + 20));
  a2[14] = *(this + 7);
  a2[15] = *(this + 8);
  a2[16] = *(this + 9);
  v5 = *(this + 10);
  if (v5 <= 1915892015)
  {
    if (v5 > 1647719520)
    {
      if (v5 > 1815294001)
      {
        if (v5 == 1815294002 || v5 == 1848848434)
        {
          v4 = -112;
        }
      }

      else if (v5 == 1647719521)
      {
        v4 = -96;
      }

      else if (v5 == 1647719542)
      {
        v4 = -64;
      }
    }

    else
    {
      if (v5 <= 1111970368)
      {
        if (v5 == 32)
        {
          v4 = 112;
          goto LABEL_44;
        }

        v6 = 846624121;
LABEL_14:
        if (v5 == v6)
        {
          v4 = 16;
        }

        goto LABEL_44;
      }

      if (v5 == 1111970369)
      {
        v4 = 0x80;
      }

      else if (v5 == 1378955371)
      {
        v4 = -80;
      }
    }
  }

  else if (v5 <= 1983000885)
  {
    if (v5 > 1916036715)
    {
      if (v5 == 1916036716)
      {
        v4 = 96;
      }

      else if (v5 == 1983000880)
      {
        v4 = 32;
      }
    }

    else if (v5 == 1915892016)
    {
      v4 = -16;
    }

    else if (v5 == 1916022840)
    {
      v4 = 64;
    }
  }

  else
  {
    if (v5 > 2033463351)
    {
      if (v5 == 2033463352)
      {
        v4 = -48;
        goto LABEL_44;
      }

      if (v5 == 2033463606)
      {
        v4 = -32;
        goto LABEL_44;
      }

      v6 = 2037741171;
      goto LABEL_14;
    }

    if (v5 == 1983000886)
    {
      v4 = 48;
    }

    else if (v5 == 1983131704)
    {
      v4 = 80;
    }
  }

LABEL_44:
  a2[17] = *(this + 11) & 0xF | v4;
  *(a2 + 9) = 768;
  v7 = a2 + 20;
  v8 = a3 << 6;
  v9 = (&Macroblock::CustomQuantizationMatrixLuma + v8);
  if ((a2 + 20 - (&Macroblock::CustomQuantizationMatrixLuma + v8)) <= 0x1F)
  {
    v10 = 64;
    do
    {
      v12 = v9->u8[0];
      v9 = (v9 + 1);
      v11 = v12;
      if (v12 == 255)
      {
        v11 = 63;
      }

      *v7++ = v11;
      --v10;
    }

    while (v10);
    v13 = (&Macroblock::CustomQuantizationMatrixChroma + v8);
    if ((v7 - v13) <= 0x1F)
    {
      goto LABEL_50;
    }

LABEL_56:
    v21.i64[0] = -1;
    v21.i64[1] = -1;
    v22.i64[0] = 0x3F3F3F3F3F3F3F3FLL;
    v22.i64[1] = 0x3F3F3F3F3F3F3F3FLL;
    v23 = vbslq_s8(vceqq_s8(v13[1], v21), v22, v13[1]);
    *v7 = vbslq_s8(vceqq_s8(*v13, v21), v22, *v13);
    *(v7 + 1) = v23;
    v24 = vbslq_s8(vceqq_s8(v13[3], v21), v22, v13[3]);
    *(v7 + 2) = vbslq_s8(vceqq_s8(v13[2], v21), v22, v13[2]);
    *(v7 + 3) = v24;
    return *this;
  }

  v7 = a2 + 84;
  v17.i64[0] = -1;
  v17.i64[1] = -1;
  v18.i64[0] = 0x3F3F3F3F3F3F3F3FLL;
  v18.i64[1] = 0x3F3F3F3F3F3F3F3FLL;
  v19 = vbslq_s8(vceqq_s8(v9[1], v17), v18, v9[1]);
  *(a2 + 20) = vbslq_s8(vceqq_s8(*v9, v17), v18, *v9);
  *(a2 + 36) = v19;
  v20 = vbslq_s8(vceqq_s8(v9[3], v17), v18, v9[3]);
  *(a2 + 52) = vbslq_s8(vceqq_s8(v9[2], v17), v18, v9[2]);
  *(a2 + 68) = v20;
  v13 = (&Macroblock::CustomQuantizationMatrixChroma + v8);
  if ((a2 + 84 - v13) > 0x1F)
  {
    goto LABEL_56;
  }

LABEL_50:
  v14 = 0;
  do
  {
    v15 = v13->u8[v14];
    if (v15 == 255)
    {
      LOBYTE(v15) = 63;
    }

    v7[v14++] = v15;
  }

  while (v14 != 64);
  return *this;
}

void FrameEncoder::FrameEncoder(FrameEncoder *this, int a2, void (*a3)(void))
{
  NumProcessors = a2;
  *this = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 56) = 6;
  if (a2 <= 0)
  {
    NumProcessors = IcpUtility::getNumProcessors(this);
    if (NumProcessors < 1)
    {
      goto LABEL_9;
    }
  }

  {
    ThreadPool<EncoderWorker,EncoderJob,void>::getBlockSize(void)::cacheLineSize = getCacheLineSize();
  }

  {
    FrameEncoder::FrameEncoder();
  }

  v5 = ThreadPool<EncoderWorker,EncoderJob,void>::getBlockSize(void)::blockSize;
  v6 = -ThreadPool<EncoderWorker,EncoderJob,void>::getBlockSize(void)::blockSize;
  v7 = malloc_type_malloc(((ThreadPool<EncoderWorker,EncoderJob,void>::getBlockSize(void)::blockSize + 47) & -ThreadPool<EncoderWorker,EncoderJob,void>::getBlockSize(void)::blockSize) + ThreadPool<EncoderWorker,EncoderJob,void>::getBlockSize(void)::blockSize, 0xAF2C8CB1uLL);
  if (!v7 || (v8 = (v7 + v5) & v6, *(v8 - 8) = v7, !v8))
  {
LABEL_9:
    *this = 0;
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v10, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  *v8 = NumProcessors;
  *(v8 + 8) = dispatch_get_global_queue(0, 0);
  *(v8 + 16) = dispatch_group_create();
  atomic_store(0, (v8 + 24));
  *(v8 + 36) = 0;
  *(v8 + 28) = 0;
  *(v8 + 44) = 0;
  *this = v8;
  *(this + 1) = xmmword_2953C0D00;
  *(this + 2) = xmmword_2953C0D10;
  *(this + 6) = 0x200000002;
  *(this + 7) = 0;
  *(this + 32) = 0;
}

void FrameEncoder::~FrameEncoder(FrameEncoder *this)
{
  v2 = *this;
  if (*this)
  {
    dispatch_release(*(v2 + 16));
    free(*(v2 - 8));
  }

  v3 = *(this + 26);
  if (v3)
  {
    Picture::~Picture(v3);
    MEMORY[0x29C24CEF0]();
  }
}

uint64_t FrameEncoder::encode(_DWORD **a1, __int128 *a2, int32x2_t *a3, uint64_t a4, int a5, _DWORD *a6, _BYTE *a7)
{
  AlphaEncoder::AlphaEncoder(v47, a3[5].u8[4], *(a2 + 9));
  a1[27] = v47;
  v14 = *(a2 + 10);
  if (HIWORD(v14))
  {
    return 4294967293;
  }

  v15 = *(a2 + 11);
  if (HIWORD(v15))
  {
    return 4294967293;
  }

  v17 = v47[0];
  *(a1 + 5) = v14;
  *(a1 + 6) = v15;
  v18 = a3[3];
  *(a1 + 28) = vrev64_s32(v18);
  *(a1 + 44) = a3[4];
  v19 = a3[5].u32[0];
  *(a1 + 13) = v19;
  if (v19 > 9 || ((1 << v19) & 0x242) == 0)
  {
    if (v15 > 0x2CF)
    {
      v20 = 1;
    }

    else
    {
      v20 = 6;
    }

    *(a1 + 13) = v20;
  }

  if (v17)
  {
    v21 = 8;
  }

  else
  {
    v21 = 6;
  }

  *(a1 + 56) = v21;
  v22 = *(a1 + 4) + 8;
  v23 = a3[1];
  v24 = vadd_s32(vsub_s32(a3[2], vdup_n_s32(v22)), 0x3100000031);
  *(a1 + 14) = *(a2 + 9);
  *(a1 + 15) = v17;
  v44 = a3->i32[0];
  v45 = v23;
  v46 = v24;
  if (v18.i32[0])
  {
    v46.i32[0] = v24.i32[0] / 2;
    v46.i32[1] = v24.i32[1] / 2;
  }

  v25 = a2[1];
  v40 = *a2;
  v41 = v25;
  v26 = a2[3];
  v42 = a2[2];
  v43 = v26;
  v27 = a1[26];
  if (!v27)
  {
    operator new();
  }

  v39 = 0;
  if (v18.i32[0])
  {
    if (v18.i32[0] == 1)
    {
      v27[25] = 1;
      *&v40 = *a2;
      v28 = 2 * *(a2 + 6);
      v29 = *(a2 + 11) + 1;
    }

    else
    {
      v27[25] = 2;
      v30 = *(a2 + 6);
      *&v40 = *a2 + v30;
      v28 = 2 * v30;
      v29 = *(a2 + 11);
    }

    DWORD2(v41) = v28;
    HIDWORD(v42) = v29 / 2;
  }

  else
  {
    v27[25] = 3;
  }

  *(v27 + 13) = a4 + v22;
  v27[28] = a5 - v22;
  Picture::encode(v27, *a1, &v40, &v44, &v39);
  v31 = a1[26];
  v32 = v31[29] + v22;
  v33 = v39;
  v34 = *(a1 + 8);
  if (v34 == 2)
  {
    v31[25] = 1;
    *&v40 = *a2;
    DWORD2(v41) = 2 * *(a2 + 6);
    v36 = *(a2 + 11) + 1;
    goto LABEL_27;
  }

  if (v34)
  {
    v31[25] = 2;
    v35 = *(a2 + 6);
    *&v40 = *a2 + v35;
    DWORD2(v41) = 2 * v35;
    v36 = *(a2 + 11);
LABEL_27:
    HIDWORD(v42) = v36 / 2;
    *(v31 + 13) = a4 + v32;
    v31[28] = a5 - v32;
    Picture::encode(v31, *a1, &v40, &v44, &v39);
    LODWORD(v32) = a1[26][29] + v32;
    v33 &= v39;
  }

  v37 = ((14 - v32) & 0xFu) + 50;
  v38 = v37 + v32;
  if (v37 + v32 <= a5)
  {
    bzero((a4 + v32), v37);
    LODWORD(v32) = v38;
  }

  if (a6)
  {
    *a6 = v32;
  }

  if (a7)
  {
    *a7 = (v17 == 0) | v33 & 1;
  }

  *a4 = bswap32(v32);
  *(a4 + 4) = 1718641513;
  Frame::Header::encode((a1 + 2), (a4 + 8), a3[1].i32[1]);
  return 0;
}

uint64_t getCacheLineSize(void)
{
  v4 = 64;
  v3 = 8;
  v0 = sysctlbyname("hw.cachelinesize", &v4, &v3, 0, 0);
  if (v3 == 8 && v0 == 0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void FrameEncoder::FrameEncoder()
{
  {
    v0 = ThreadPool<EncoderWorker,EncoderJob,void>::getBlockSize(void)::cacheLineSize;
    if (!ThreadPool<EncoderWorker,EncoderJob,void>::getBlockSize(void)::cacheLineSize)
    {
      v0 = 256;
    }

    ThreadPool<EncoderWorker,EncoderJob,void>::getBlockSize(void)::blockSize = v0;
  }
}

uint64_t EncoderSetup::getMaxCompressionSizeExcludingAlpha(EncoderSetup *this, unsigned int a2, int a3)
{
  v3 = a2 >> 1;
  if (a2 <= 0x240000)
  {
    v3 = 1179648;
  }

  if (a2 >= 0x1FA401)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1032192;
  }

  if (a2 >= 0x17BB01)
  {
    v5 = v4;
  }

  else
  {
    v5 = 884736;
  }

  if (a2 > 0xE1000)
  {
    v6 = v5;
  }

  else
  {
    v6 = 516096;
  }

  if (a2 >= 0xA8C01)
  {
    v7 = v6;
  }

  else
  {
    v7 = 442368;
  }

  if (a2 >= 0x65401)
  {
    v8 = v7;
  }

  else
  {
    v8 = 344064;
  }

  if (a2 >= 349921)
  {
    v9 = v8;
  }

  else
  {
    v9 = 294912;
  }

  if ((this & 0xFFFFFFEF) != 0x61703468)
  {
    goto LABEL_33;
  }

  v10 = 1;
  if (a3 <= 1983000885)
  {
    if (a3 != 846624121 && a3 != 1983000880)
    {
      goto LABEL_25;
    }

LABEL_33:
    v10 = 0;
    if (this <= 1634755438)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (a3 == 2037741171 || a3 == 1983000886)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (this <= 1634755438)
  {
LABEL_26:
    if (this != 1634743416)
    {
      if (this == 1634755438)
      {
        if ((v10 & 1) == 0)
        {
          v9 = (1431655766 * (2 * v9)) >> 32;
        }

        return v9 & 0x7FFFF000;
      }

LABEL_39:
      if (v10)
      {
        v9 += v9 >> 1;
      }

      return v9 & 0x7FFFF000;
    }

    v14 = v9 + (v9 >> 1);
    v15 = (9 * v9) >> 2;
    if (!v10)
    {
      v15 = v14;
    }

    return v15 & 0x7FFFF000;
  }

LABEL_34:
  if (this != 1634755443)
  {
    if (this == 1634755439)
    {
      v12 = 13 * v9;
      if (v10)
      {
        v13 = v12 / 0x2A;
      }

      else
      {
        v13 = v12 / 0x3F;
      }

      return v13 & 0x7FFFF000;
    }

    goto LABEL_39;
  }

  v16 = 13 * v9 / 0x1C;
  v17 = 39 * v9 / 0x38;
  if (!v10)
  {
    v17 = v16;
  }

  return v17 & 0x7FFFF000;
}

uint64_t EncoderSetup::setQuantIndex(uint64_t this, int *a2, int *a3, int *a4)
{
  if (this <= 1634755437)
  {
    if (this == 1634743400 || this == 1634755432)
    {
      *a2 = 1;
      *a3 = 1;
    }

    else
    {
      *a2 = 1;
      *a3 = 0;
    }
  }

  else
  {
    if (this == 1634755443)
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    if (this == 1634755443)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }

    if (this == 1634755439)
    {
      v4 = 8;
      v6 = 4;
    }

    else
    {
      v6 = v5;
    }

    if (this == 1634755438)
    {
      v4 = 2;
      v7 = 2;
    }

    else
    {
      v7 = v6;
    }

    *a2 = v4;
    *a3 = v7;
  }

  return this;
}

void EncoderWorker::~EncoderWorker(EncoderWorker *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x29C24CEF0](v2, 0x1000C4081C11BC4);
  }

  free(*this);
}

void EncoderWorker::runJob(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    if (*a2 == 1 && *(a2 + 16) >= 1)
    {
      v4 = 0;
      do
      {
        SliceEncoder::encode(*(a1 + 64), *(*(a2 + 8) + 8 * v4++));
      }

      while (v4 < *(a2 + 16));
    }

    return;
  }

  if (*(a2 + 16) >= 1)
  {
    v5 = 0;
    do
    {
      SliceEncoder::encodeAlpha(*(*(a2 + 8) + 8 * v5++), a2);
    }

    while (v5 < *(a2 + 16));
  }

  v6 = *(a2 + 32);
  if (atomic_load_explicit(&qword_2A1388058, memory_order_acquire))
  {
    v7 = *(a2 + 32);
    if (*(v7 + 36) != 1983000880)
    {
      goto LABEL_16;
    }
  }

  else
  {
    EncoderWorker::runJob();
    v7 = *(a2 + 32);
    if (*(v7 + 36) != 1983000880)
    {
      goto LABEL_16;
    }
  }

  v8 = *(a2 + 52);
  v9 = *(v7 + 40);
  v10 = (4 * v9 + 15) & 0xFFFFFFF0;
  v11 = *(a1 + 24);
  v12 = *a1;
  if (v11 < v10)
  {
    free(*a1);
    *a1 = 0;
    v13 = malloc_type_malloc(16 * v10, 0x324508D9uLL);
    if (!v13)
    {
      exception = __cxa_allocate_exception(8uLL);
      v19 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v19, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
    }

    v12 = v13;
    *a1 = v13;
    *(a1 + 24) = v10;
    v9 = *(v7 + 40);
    v11 = v10;
    v7 = *(a2 + 32);
  }

  *(a1 + 40) = v9;
  *(a1 + 44) = v8;
  convertV210ToV216(*(a2 + 40), *(v7 + 24), v12, v11, v9, v8);
  v14 = *a1;
  *(a2 + 32) = a1;
  *(a2 + 40) = v14;
  *(a2 + 48) = _MergedGlobals;
  v7 = a1;
LABEL_16:
  if (*(v7 + 48) == 1)
  {
    v15 = *(v7 + 36);
    if (v15 > 1916022839)
    {
      if (v15 <= 1983131703)
      {
        if (v15 != 1916022840)
        {
          if (v15 == 1916036716)
          {
            filterChroma_r4fl(*(a2 + 40), *(v7 + 40), *(a2 + 52), *(v7 + 24));
          }

          goto LABEL_40;
        }
      }

      else
      {
        if (v15 == 1983131704)
        {
          filterChroma_v408(*(a2 + 40), *(v7 + 40), *(a2 + 52), *(v7 + 24));
          goto LABEL_40;
        }

        if (v15 != 2033463352)
        {
          if (v15 == 2033463606)
          {
            filterChroma_y416(*(a2 + 40), *(v7 + 40), *(a2 + 52), *(v7 + 24));
          }

          goto LABEL_40;
        }
      }

      filterChroma_y408_r408(*(a2 + 40), *(v7 + 40), *(a2 + 52), *(v7 + 24));
    }

    else if (v15 <= 1647719520)
    {
      if (v15 == 32)
      {
        allocateIntermediateV216Buffer(a1, v7, *(a2 + 52));
        convertARGBToV216WithChromaFiltering<(PixelFormat)32>(*(a2 + 40), *(*(a2 + 32) + 24), *a1, *(a1 + 24), *(a1 + 40), *(a1 + 44), *(*(a2 + 24) + 8));
        goto LABEL_39;
      }

      if (v15 == 1378955371)
      {
        allocateIntermediateV216Buffer(a1, v7, *(a2 + 52));
        convertARGBToV216WithChromaFiltering<(PixelFormat)1378955371>(*(a2 + 40), *(*(a2 + 32) + 24), *a1, *(a1 + 24), *(a1 + 40), *(a1 + 44), *(*(a2 + 24) + 8));
        goto LABEL_39;
      }
    }

    else
    {
      switch(v15)
      {
        case 1647719521:
          allocateIntermediateV216Buffer(a1, v7, *(a2 + 52));
          convertARGBToV216WithChromaFiltering<(PixelFormat)1647719521>(*(a2 + 40), *(*(a2 + 32) + 24), *a1, *(a1 + 24), *(a1 + 40), *(a1 + 44), *(*(a2 + 24) + 8));
          goto LABEL_39;
        case 1647719542:
          allocateIntermediateV216Buffer(a1, v7, *(a2 + 52));
          convertARGBToV216WithChromaFiltering<(PixelFormat)1647719542>(*(a2 + 40), *(*(a2 + 32) + 24), *a1, *(a1 + 24), *(a1 + 40), *(a1 + 44), *(*(a2 + 24) + 8));
          goto LABEL_39;
        case 1915892016:
          allocateIntermediateV216Buffer(a1, v7, *(a2 + 52));
          convertARGBToV216WithChromaFiltering<(PixelFormat)1915892016>(*(a2 + 40), *(*(a2 + 32) + 24), *a1, *(a1 + 24), *(a1 + 40), *(a1 + 44), *(*(a2 + 24) + 8));
LABEL_39:
          v16 = *a1;
          *(a2 + 32) = a1;
          *(a2 + 40) = v16;
          *(a2 + 48) = _MergedGlobals;
          break;
      }
    }
  }

LABEL_40:
  if (*(a2 + 16) >= 1)
  {
    v17 = 0;
    do
    {
      SliceEncoder::doForwardTransform(*(*(a2 + 8) + 8 * v17), a2);
      SliceEncoder::encode(*(a1 + 64), *(*(a2 + 8) + 8 * v17++));
    }

    while (v17 < *(a2 + 16));
  }

  *(a2 + 32) = v6;
}

void **allocateIntermediateV216Buffer(void **result, uint64_t a2, int a3)
{
  v4 = result;
  v5 = *(a2 + 40);
  v6 = (4 * v5 + 15) & 0xFFFFFFF0;
  if (*(result + 6) < v6)
  {
    free(*result);
    *v4 = 0;
    result = malloc_type_malloc(16 * v6, 0x324508D9uLL);
    if (!result)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v9, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
    }

    *v4 = result;
    *(v4 + 6) = v6;
    v5 = *(a2 + 40);
  }

  *(v4 + 10) = v5;
  *(v4 + 11) = a3;
  return result;
}

void EncoderWorker::runJob()
{
  if (__cxa_guard_acquire(&qword_2A1388058))
  {
    _MergedGlobals = 64;

    __cxa_guard_release(&qword_2A1388058);
  }
}

uint64_t IcpUtility::getNumProcessors(IcpUtility *this)
{
  if (qword_2A1388068 == -1)
  {
    result = _MergedGlobals_0;
    if (_MergedGlobals_0 > 0)
    {
      return result;
    }
  }

  else
  {
    IcpUtility::getNumProcessors();
    result = _MergedGlobals_0;
    if (_MergedGlobals_0 > 0)
    {
      return result;
    }
  }

  host_info_outCnt = 12;
  v2 = MEMORY[0x29C24D060]();
  v3 = host_info(v2, 1, &host_info_out, &host_info_outCnt);
  v4 = v6;
  if (v6 <= 1)
  {
    v4 = 1;
  }

  if (v3)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

CFIndex ___ZN10IcpUtility16getNumProcessorsEv_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"numCoresForProRes", *MEMORY[0x29EDB8FA0], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = result;
  }

  else
  {
    v1 = 0;
  }

  _MergedGlobals_0 = v1;
  return result;
}

uint64_t IcpUtility::logLevel(IcpUtility *this)
{
  if (IcpUtility::logLevel(void)::pred != -1)
  {
    IcpUtility::logLevel();
  }

  return IcpUtility::logLevel(void)::s_logLevel;
}

CFIndex ___ZN10IcpUtility8logLevelEv_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"IcpLogLevel", *MEMORY[0x29EDB8FA0], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    IcpUtility::logLevel(void)::s_logLevel = result;
  }

  return result;
}

uint64_t enabledSignpostCategories()
{
  if (qword_2A1388078 != -1)
  {
    enabledSignpostCategories_cold_1();
  }

  return _MergedGlobals_1;
}

CFIndex __enabledSignpostCategories_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  v0 = *MEMORY[0x29EDB8FA0];
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"VideoToolboxCodecSignpostLevel", *MEMORY[0x29EDB8FA0], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    if ((AppIntegerValue & 0x8000000000000000) == 0)
    {
      v2 = _MergedGlobals_1;
      _MergedGlobals_1 |= 1u;
      if (AppIntegerValue)
      {
        _MergedGlobals_1 = v2 | 3;
      }
    }
  }

  keyExistsAndHasValidFormat = 0;
  v3 = CFPreferencesGetAppIntegerValue(@"ProResCoreCodecSignpostLevel", v0, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = _MergedGlobals_1;
      _MergedGlobals_1 |= 0x100u;
      if (v3)
      {
        _MergedGlobals_1 = v4 | 0x1000100;
      }
    }
  }

  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"ProResRAWCoreCodecSignpostLevel", v0, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && (result & 0x8000000000000000) == 0)
  {
    v6 = _MergedGlobals_1;
    _MergedGlobals_1 |= 0x10000u;
    if (result)
    {
      _MergedGlobals_1 = v6 | 0x1010000;
    }
  }

  return result;
}

double Picture::Picture(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

void Picture::~Picture(Picture *this)
{
  v2 = *&this[1].picFrame.bottom;
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*&this->picFrame.right + 8 * i);
      if (v4)
      {
        Slice::~Slice(v4);
        MEMORY[0x29C24CEF0]();
        v2 = *&this[1].picFrame.bottom;
      }
    }

    v5 = *&this->picFrame.right;
    if (v5)
    {
      MEMORY[0x29C24CED0](v5, 0x20C8093837F09);
    }
  }

  free(*&this[8].picSize);
  free(*&this[8].picFrame.right);
  v6 = *&this[2].picFrame.left;
  if (v6)
  {
    this[3].picFrame = v6;
    operator delete(v6);
  }
}

intptr_t Picture::encode(_DWORD *a1, _DWORD *a2, uint64_t *a3, _DWORD *a4, BOOL *a5)
{
  a1[14] = 3;
  a1[12] = 8;
  v245 = *(*a1 + 224);
  v9 = *(a3 + 10);
  v10 = *(a3 + 11);
  v12 = v9 + 15;
  v11 = v9 < -15;
  v13 = v9 + 30;
  if (!v11)
  {
    v13 = v12;
  }

  v14 = v13 >> 4;
  v15 = v10 + 15;
  v11 = v10 < -15;
  v16 = v10 + 30;
  if (v11)
  {
    v15 = v16;
  }

  v17 = v15 >> 4;
  LODWORD(v18) = calculateNumberOfSlicesPerMBRow(v14, 3);
  a1[15] = v18;
  v19 = (v17 * v18);
  v249 = v19;
  if (a1[17] != v14 || a1[18] != v17 || a1[13] != *(*a1 + 28))
  {
    Picture::instantiateSlices(a1, v19);
    a1[16] = v17;
    a1[17] = v14;
    v20 = *(*a1 + 28);
    a1[13] = v20;
    if (v20 == 3)
    {
      v21 = 12;
    }

    else
    {
      v21 = 0;
    }

    if (v20 == 2)
    {
      v22 = 8;
    }

    else
    {
      v22 = v21;
    }

    a1[30] = v22;
    a1[18] = v17;
    a1[19] = (v14 * v17 * v22) << 6;
    free(*(a1 + 10));
    *(a1 + 10) = 0;
    v23 = malloc_type_malloc(2 * a1[19], 0x324508D9uLL);
    if (!v23)
    {
      goto LABEL_261;
    }

    v24 = v23;
    *(a1 + 10) = v23;
    v18 = a1[15];
    v25 = a1[16];
    v26 = (v25 * v18);
    v14 = a1[17];
    if (v18 >= 1)
    {
      v27 = a1[13] != 2;
      if (v25 >= 1)
      {
        v28 = 0;
        v29 = 0;
        v30 = a1[14];
        v31 = 1 << v30;
        v32 = *(a1 + 1);
        v34 = v25 == 1 || v18 != 1;
        v35 = *(a1 + 1);
        v36 = a1[17];
        do
        {
          while (v31 > v36)
          {
            --v30;
            v31 >>= 1;
          }

          v37 = v30 + v27;
          if (v34)
          {
            v38 = 0;
            v39 = v28;
          }

          else
          {
            v39 = &v28[(v25 & 0x7FFFFFFE) * v18];
            v40 = v35;
            v41 = v25 & 0x7FFFFFFE;
            do
            {
              v42 = *v40;
              v43 = v40[v18];
              v42[4] = v37;
              v43[4] = v37;
              v42[2] = v29;
              v42[3] = v30;
              v43[2] = v29;
              v43[3] = v30;
              v40 += 2 * v18;
              v41 -= 2;
            }

            while (v41);
            v38 = v25 & 0x7FFFFFFE;
            v19 = v249;
            if ((v25 & 0x7FFFFFFE) == v25)
            {
              goto LABEL_33;
            }
          }

          v44 = (v32 + 8 * v39);
          v45 = v25 - v38;
          do
          {
            v46 = *v44;
            v46[3] = v30;
            v46[4] = v37;
            v46[2] = v29;
            v44 += v18;
            --v45;
          }

          while (v45);
LABEL_33:
          v36 -= v31;
          v29 += v31;
          ++v28;
          ++v35;
        }

        while (v28 != v18);
      }
    }

    if (v26 >= 1)
    {
      v47 = a1[30] << 6;
      v48 = *(a1 + 1);
      do
      {
        v49 = *v48++;
        *(v49 + 24) = v24;
        v24 += 2 * (v47 << *(v49 + 12));
        --v26;
      }

      while (v26);
    }
  }

  v50 = *(*a1 + 216);
  if (!*v50)
  {
    goto LABEL_44;
  }

  v51 = v50[1] << 8;
  v52 = v51 * v14 * a1[18];
  if (a1[24] < v52)
  {
    free(*(a1 + 11));
    *(a1 + 11) = 0;
    v18 = malloc_type_malloc(v52, 0x324508D9uLL);
    if (v18)
    {
      *(a1 + 11) = v18;
      a1[24] = v52;
      LODWORD(v18) = a1[15];
      goto LABEL_41;
    }

LABEL_261:
    exception = __cxa_allocate_exception(8uLL);
    v242 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v242, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

LABEL_41:
  v53 = (a1[16] * v18);
  if (v53 >= 1)
  {
    v54 = *(a1 + 11);
    v55 = *(a1 + 1);
    do
    {
      v56 = *v55++;
      *(v56 + 32) = v54;
      v57 = v51 << *(v56 + 12);
      *(v56 + 40) = v57;
      v54 += v57;
      --v53;
    }

    while (v53);
  }

LABEL_44:
  v58 = *(a3 + 9);
  if (v58 > 1647719541)
  {
    v61 = v245;
    if (v58 != 1647719542)
    {
      if (v58 == 1983000880)
      {
LABEL_57:
        v58 = 1983000886;
        goto LABEL_58;
      }

      if (v58 != 1915892016)
      {
        goto LABEL_58;
      }
    }

LABEL_56:
    if (*(a3 + 48) != 1)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v60 = v58 == 32 || v58 == 1378955371 || v58 == 1647719521;
  v61 = v245;
  if (v60)
  {
    goto LABEL_56;
  }

LABEL_58:
  PixelInputFunctor::PixelInputFunctor(v250, v58, *(*a1 + 28), *(*a1 + 52));
  v62 = *(a1 + 3);
  v63 = a1[16];
  v64 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4) - v62) >> 3);
  if (v63 <= v64)
  {
    if (v63 < v64)
    {
      *(a1 + 4) = v62 + 56 * v63;
    }
  }

  else
  {
    std::vector<EncoderJob>::__append((a1 + 6), v63 - v64);
  }

  v65 = *(a1 + 1);
  v66 = *a3;
  NumBytesPerPixelData = PixelBuffer::getNumBytesPerPixelData(*(a3 + 9));
  v68 = *(a1 + 3);
  v69 = *(a1 + 4);
  if (v68 != v69)
  {
    v70 = 16 * NumBytesPerPixelData;
    v71 = a1[15];
    v72 = 16 * *(a3 + 6);
    v73 = *(a3 + 11);
    v74 = *(a1 + 3);
    do
    {
      *(v74 + 8) = v65;
      *(v74 + 16) = v71;
      *(v74 + 24) = v250;
      *(v74 + 32) = a3;
      *(v74 + 40) = v66;
      v75 = v73 - 16;
      if (v73 >= 16)
      {
        v73 = 16;
      }

      *(v74 + 48) = v70;
      *(v74 + 52) = v73;
      *v74 = 0;
      v74 += 56;
      v66 += v72;
      v65 += 8 * v71;
      v73 = v75;
    }

    while (v74 != v69);
  }

  v76 = a2;
  if (v19 >= 1)
  {
    v77 = *(a1 + 1);
    v78 = a4[2];
    v79 = a4[3];
    if (v19 == 1)
    {
      v80 = 0;
LABEL_73:
      v85 = (v77 + 8 * v80);
      v86 = v19 - v80;
      do
      {
        v87 = *v85++;
        *(v87 + 64) = 0;
        *(v87 + 68) = 0;
        *(v87 + 72) = v78;
        *(v87 + 76) = v79;
        --v86;
      }

      while (v86);
      goto LABEL_75;
    }

    v80 = v19 & 0x7FFFFFFE;
    v81 = (v77 + 8);
    v82 = v80;
    do
    {
      v83 = *(v81 - 1);
      v84 = *v81;
      *(v83 + 64) = 0;
      *(v84 + 64) = 0;
      *(v83 + 68) = 0;
      *(v84 + 68) = 0;
      *(v83 + 72) = v78;
      *(v83 + 76) = v79;
      *(v84 + 72) = v78;
      *(v84 + 76) = v79;
      v81 += 2;
      v82 -= 2;
    }

    while (v82);
    if (v80 != v19)
    {
      goto LABEL_73;
    }
  }

LABEL_75:
  atomic_store(0, a2 + 6);
  a2[7] = -1227133513 * ((v69 - v68) >> 3);
  *(a2 + 4) = v68;
  if (*a2 >= 1)
  {
    v88 = 0;
    do
    {
      dispatch_group_async_f(*(a2 + 2), *(a2 + 1), a2, ThreadPool<EncoderWorker,EncoderJob,void>::dispatch_routine);
      ++v88;
    }

    while (v88 < *a2);
  }

  v244 = a5;
  result = dispatch_group_wait(*(a2 + 2), 0xFFFFFFFFFFFFFFFFLL);
  v90 = *(a1 + 3);
  v91 = *(a1 + 4);
  if (v90 != v91)
  {
    v92 = v91 - v90 - 56;
    v93 = *(a1 + 3);
    if (v92 <= 0x37)
    {
      goto LABEL_264;
    }

    v94 = v92 / 0x38 + 1;
    v93 = &v90[56 * (v94 & 0xFFFFFFFFFFFFFFELL)];
    v95 = *(a1 + 3);
    v96 = v94 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v95 = 1;
      v95[14] = 1;
      v95 += 28;
      v96 -= 2;
    }

    while (v96);
    if (v94 != (v94 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_264:
      do
      {
        *v93 = 1;
        v93 += 56;
      }

      while (v93 != v91);
    }
  }

  if (*a4 != 4)
  {
    goto LABEL_242;
  }

  v97 = a1[12] + 8 * v19;
  v98 = a4[4] - v97;
  v99 = -(v61 * v19);
  if (v19 < 1)
  {
    if (v98 < v99)
    {
LABEL_96:
      v108 = a4[5] - v97;
      v247 = v108 / (a1[18] * a1[17]);
      v248 = v108;
      v109 = a4[2];
      if (v109 <= 1)
      {
        v110 = 1;
      }

      else
      {
        v110 = a4[2];
      }

      if (v110 >= 224)
      {
        v110 = 224;
      }

      if (v109 >= 129)
      {
        v111 = 4 * v110 - 384;
      }

      else
      {
        v111 = v110;
      }

      if (v19 >= 1)
      {
        v112 = *(a1 + 1);
        v113 = v19;
        do
        {
          v114 = *v112;
          v115 = *(*v112 + 60) - v61;
          v116 = v115;
          if (v115 >= (v247 / 5) << *(*v112 + 12))
          {
            v116 = 0;
            *(v114 + 72) = 0;
          }

          *(v114 + 84) = v116;
          *(v114 + 260) = *(v114 + 100);
          *(v114 + 268) = *(v114 + 108);
          *(v114 + 272) = v115;
          ++v112;
          --v113;
        }

        while (v113);
      }

      v243 = v98;
      v117 = v19;
      v118 = 0;
      v119 = 8 * v117;
      while (1)
      {
        v120 = v111;
        v121 = v118;
        if (v118 <= 4)
        {
          ++v118;
          v122 = v247 / dword_2953C10E0[v121];
          if (v249 >= 1)
          {
LABEL_117:
            v124 = 0;
            v123 = 0;
            if (v111 <= 1)
            {
              v125 = 1;
            }

            else
            {
              v125 = v111;
            }

            if (v125 >= 512)
            {
              v125 = 512;
            }

            if (v111 >= 129)
            {
              v126 = ((v125 - 126) >> 2) + 128;
            }

            else
            {
              v126 = v125;
            }

            do
            {
              v128 = *(*(a1 + 1) + v124);
              if (v128[18] >= 1)
              {
                v127 = v128[21];
              }

              else
              {
                v127 = v128[4 * v121 + 68];
                if (v127 >= v122 << v128[3])
                {
                  v129 = &v128[4 * v118 + 65];
                  IcpRateControl::estimateBytes(v129, v128, v118);
                  v127 = v129[3];
                }

                else
                {
                  v128[18] = v126;
                  v128[21] = v127;
                }
              }

              v123 += v127;
              v124 += 8;
            }

            while (v119 != v124);
            goto LABEL_113;
          }
        }

        else
        {
          ++v118;
          v122 = v247;
          if (v249 >= 1)
          {
            goto LABEL_117;
          }
        }

        v123 = 0;
LABEL_113:
        v111 = 3 * v120;
        if (v123 <= v248 || v120 >= 171)
        {
          if (v123 <= v248)
          {
            if (v249 < 1)
            {
              v137 = 0;
              v136 = 0;
              v135 = 0;
              v19 = v249;
              v141 = v243;
            }

            else
            {
              v135 = 0;
              v136 = 0;
              v137 = 0;
              v138 = *(a1 + 1);
              v139 = v118;
              v140 = v249;
              v19 = v249;
              v141 = v243;
              do
              {
                while (1)
                {
                  v143 = *v138;
                  if (*(*v138 + 72))
                  {
                    break;
                  }

                  v142 = v143 + 260;
                  v137 += *(v142 + 16 * v121 + 12);
                  v136 += *(v142 + 16 * v139 + 12);
                  ++v138;
                  if (!--v140)
                  {
                    goto LABEL_152;
                  }
                }

                v135 += *(v143 + 84);
                ++v138;
                --v140;
              }

              while (v140);
            }

LABEL_152:
            v151 = (v141 - v135);
            v152 = RateControl::interpolateQuant((v248 - v135), v120, v137, 3 * v120, v136);
            if (v137 >= v151)
            {
              v153 = RateControl::interpolateQuant(v151, v120, v137, 3 * v120, v136);
            }

            else
            {
              v153 = 0x10000;
            }

            v76 = a2;
            v154 = (v152 + 0x8000) >> 16;
            v155 = ((v152 / 4 + 0x8000) >> 14) & 0xFFFFFFFC;
            if (v154 <= 0x80)
            {
              LODWORD(v155) = ((((v152 + (v152 >> 63)) >> 1) + 0x8000) >> 15) & 0xFFFFFFFE;
            }

            if (v154 >= 37)
            {
              LODWORD(v154) = v155;
            }

            if (v154 <= 1)
            {
              v156 = 1;
            }

            else
            {
              v156 = v154;
            }

            if (v156 >= 512)
            {
              v156 = 512;
            }

            if (v154 >= 129)
            {
              v157 = ((v156 - 126) >> 2) + 128;
            }

            else
            {
              v157 = v156;
            }

            if (v157 >= 0xE0)
            {
              v158 = 224;
            }

            else
            {
              v158 = v157;
            }

            if (v157 >= 0x81)
            {
              v158 = 4 * v158 - 384;
            }

            v159 = v153 > v158 << 16 && v157 < 0xE0;
            v160 = v157 + v159;
            if (v160 >= 0xE0)
            {
              v161 = 224;
            }

            else
            {
              v161 = v160;
            }

            if (v160 >= 0x81)
            {
              v162 = 4 * v161 - 384;
            }

            else
            {
              v162 = v161;
            }

            if (v162 <= 1)
            {
              v163 = 1;
            }

            else
            {
              v163 = v162;
            }

            if (v162 >= 129)
            {
              v130 = ((v163 - 126) >> 2) + 128;
            }

            else
            {
              v130 = v163;
            }

            v131 = v245;
            v132 = v243;
            if (v19 >= 1)
            {
              goto LABEL_188;
            }
          }

          else
          {
            v130 = 224;
            v19 = v249;
            v76 = a2;
            v131 = v245;
            v132 = v243;
            if (v249 < 1)
            {
              goto LABEL_192;
            }

LABEL_188:
            v164 = *(a1 + 1);
            v165 = v19;
            do
            {
              v166 = *v164;
              if (!*(*v164 + 72))
              {
                *(v166 + 72) = v130;
              }

              *(v166 + 68) = 1;
              ++v164;
              --v165;
            }

            while (v165);
          }

LABEL_192:
          v167 = *(a1 + 3);
          v168 = -1227133513 * ((*(a1 + 4) - v167) >> 3);
          atomic_store(0, v76 + 6);
          v76[7] = v168;
          *(v76 + 4) = v167;
          if (*v76 >= 1)
          {
            v169 = 0;
            do
            {
              dispatch_group_async_f(*(v76 + 2), *(v76 + 1), v76, ThreadPool<EncoderWorker,EncoderJob,void>::dispatch_routine);
              ++v169;
            }

            while (v169 < *v76);
          }

          result = dispatch_group_wait(*(v76 + 2), 0xFFFFFFFFFFFFFFFFLL);
          if (v19 >= 1)
          {
            v170 = *(a1 + 1);
            if (v19 == 1)
            {
              v171 = 0;
              v172 = 0;
              goto LABEL_202;
            }

            v177 = 0;
            v178 = 0;
            v171 = v19 & 0x7FFFFFFE;
            v179 = v170 + 8;
            v180 = v171;
            do
            {
              v177 = v177 - v131 + *(*(v179 - 8) + 60);
              v178 = v178 - v131 + *(*v179 + 60);
              v179 += 16;
              v180 -= 2;
            }

            while (v180);
            v172 = v178 + v177;
            if (v171 != v19)
            {
LABEL_202:
              v181 = (v170 + 8 * v171);
              v182 = v19 - v171;
              do
              {
                v183 = *v181++;
                v172 = v172 - v131 + *(v183 + 60);
                --v182;
              }

              while (v182);
            }

            if (v172 <= v132)
            {
              goto LABEL_242;
            }

            v184 = *(a1 + 1);
            v185 = 1;
            while (2)
            {
              v187 = v185;
              if (v185)
              {
                v188 = 0;
                v189 = v19;
                v190 = v184;
                do
                {
                  v191 = *v190;
                  v192 = (*(*v190 + 60) - v131);
                  result = v192;
                  if (v192 >= v122 << *(*v190 + 12))
                  {
                    LODWORD(v192) = 0;
                    v193 = v191[28];
                    v194 = v191[29];
                    v195 = v193 + 7;
                    v11 = v193 < -7;
                    v196 = v193 + 14;
                    if (!v11)
                    {
                      v196 = v195;
                    }

                    v197 = v194 + 7;
                    v11 = v194 < -7;
                    v198 = v194 + 14;
                    if (!v11)
                    {
                      v198 = v197;
                    }

                    v199 = (v198 >> 3) + (v196 >> 3);
                    v200 = v191[30];
                    v201 = v200 + 7;
                    v11 = v200 < -7;
                    v202 = v200 + 14;
                    if (!v11)
                    {
                      v202 = v201;
                    }

                    result = (v199 + (v202 >> 3));
                    v191[31] = result;
                  }

                  v191[20] = v192;
                  v188 += result;
                  v190 += 8;
                  --v189;
                }

                while (v189);
                goto LABEL_206;
              }

              if (v19 == 1)
              {
                v203 = 0;
                v188 = 0;
                goto LABEL_227;
              }

              v204 = 0;
              v205 = 0;
              v206 = v19 & 0x7FFFFFFE;
              v207 = (v184 + 8);
              do
              {
                v208 = *(v207 - 1);
                result = *v207;
                v209 = v208[15] - v131;
                v210 = *(*v207 + 60) - v131;
                if (v209 >= v122 << v208[3])
                {
                  v209 = 0;
                }

                if (v210 >= v122 << *(*v207 + 12))
                {
                  v210 = 0;
                }

                v204 += v209;
                v205 += v210;
                v208[20] = v209;
                *(result + 80) = v210;
                v207 += 2;
                v206 -= 2;
              }

              while (v206);
              v188 = v205 + v204;
              v203 = v19 & 0x7FFFFFFE;
              if (v203 != v19)
              {
LABEL_227:
                v211 = (v184 + 8 * v203);
                v212 = v19 - v203;
                do
                {
                  v214 = *v211++;
                  v213 = v214;
                  v215 = *(v214 + 60) - v131;
                  result = (v122 << *(v214 + 12));
                  if (v215 >= result)
                  {
                    v215 = 0;
                  }

                  v188 += v215;
                  *(v213 + 80) = v215;
                  --v212;
                }

                while (v212);
              }

LABEL_206:
              v185 = 0;
              v186 = v248 - v188;
              if (v248 > v188)
              {
                v216 = v172 - v188;
                if (v172 > v188)
                {
                  v217 = 0;
                  v218 = v216;
                  v219 = *(a1 + 1);
                  v220 = v19;
                  v221 = (v186 << 16) / v218;
                  do
                  {
                    while (1)
                    {
                      v222 = *v219;
                      v223 = *(*v219 + 80);
                      if (!v223)
                      {
                        break;
                      }

                      v222[21] = v223;
                      v132 -= v223;
                      v219 += 8;
                      if (!--v220)
                      {
                        goto LABEL_240;
                      }
                    }

                    if (v187)
                    {
                      v224 = v222[31];
                    }

                    else
                    {
                      v224 = 0;
                    }

                    v225 = v224 + ((v221 * (v222[15] - (v224 + v131))) >> 16);
                    v222[21] = v225;
                    v217 += v225;
                    v219 += 8;
                    --v220;
                  }

                  while (v220);
LABEL_240:
                  if (v217 > 0)
                  {
                    v226 = *(a1 + 1);
                    v227 = v19;
                    do
                    {
                      v235 = *v226;
                      if (!*(*v226 + 80))
                      {
                        v235[20] = ((v132 << 16) / v217 * v235[21]) >> 16;
                      }

                      v235[16] = 4;
                      v226 += 8;
                      --v227;
                    }

                    while (v227);
                    v238 = *(a1 + 3);
                    v239 = -1227133513 * ((*(a1 + 4) - v238) >> 3);
                    atomic_store(0, v76 + 6);
                    v76[7] = v239;
                    *(v76 + 4) = v238;
                    if (*v76 >= 1)
                    {
                      v240 = 0;
                      do
                      {
                        dispatch_group_async_f(*(v76 + 2), *(v76 + 1), v76, ThreadPool<EncoderWorker,EncoderJob,void>::dispatch_routine);
                        ++v240;
                      }

                      while (v240 < *v76);
                    }

                    goto LABEL_150;
                  }
                }

                goto LABEL_242;
              }

              continue;
            }
          }

          v173 = *(a1 + 13);
          LODWORD(v174) = a1[12];
          LODWORD(v175) = v173 + v174 + 2 * v19;
          v176 = 1;
LABEL_252:
          v231 = v244;
          goto LABEL_253;
        }
      }
    }

    goto LABEL_147;
  }

  v100 = *(a1 + 1);
  if (v19 == 1)
  {
    v101 = 0;
  }

  else
  {
    v102 = 0;
    v101 = v19 & 0x7FFFFFFE;
    v103 = v100 + 8;
    v104 = v101;
    do
    {
      v99 += *(*(v103 - 8) + 60);
      v102 += *(*v103 + 60);
      v103 += 16;
      v104 -= 2;
    }

    while (v104);
    v99 += v102;
    if (v101 == v19)
    {
      goto LABEL_95;
    }
  }

  v105 = (v100 + 8 * v101);
  v106 = v19 - v101;
  do
  {
    v107 = *v105++;
    v99 += *(v107 + 60);
    --v106;
  }

  while (v106);
LABEL_95:
  if (v99 > v98)
  {
    goto LABEL_96;
  }

  v133 = *(a1 + 1);
  if (v19 == 1)
  {
    v134 = 0;
LABEL_145:
    v147 = (v133 + 8 * v134);
    v148 = v19 - v134;
    do
    {
      v149 = *v147++;
      *(v149 + 68) = 1;
      --v148;
    }

    while (v148);
    goto LABEL_147;
  }

  v134 = v19 & 0x7FFFFFFE;
  v144 = (v133 + 8);
  v145 = v134;
  do
  {
    v146 = *v144;
    *(*(v144 - 1) + 68) = 1;
    *(v146 + 68) = 1;
    v144 += 2;
    v145 -= 2;
  }

  while (v145);
  if (v134 != v19)
  {
    goto LABEL_145;
  }

LABEL_147:
  atomic_store(0, a2 + 6);
  a2[7] = -1227133513 * ((v91 - v90) >> 3);
  *(a2 + 4) = v90;
  if (*a2 >= 1)
  {
    v150 = 0;
    do
    {
      dispatch_group_async_f(*(a2 + 2), *(a2 + 1), a2, ThreadPool<EncoderWorker,EncoderJob,void>::dispatch_routine);
      ++v150;
    }

    while (v150 < *a2);
  }

LABEL_150:
  result = dispatch_group_wait(*(v76 + 2), 0xFFFFFFFFFFFFFFFFLL);
LABEL_242:
  v173 = *(a1 + 13);
  v174 = a1[12];
  v228 = &v173[v174];
  v175 = &v173[2 * v19 + v174];
  if (v19 < 1)
  {
    v176 = 1;
    goto LABEL_252;
  }

  v229 = 0;
  v230 = 1;
  v231 = v244;
  do
  {
    v232 = *(*(a1 + 1) + 8 * v229);
    v233 = *(v232 + 60);
    v234 = *(v232 + 92);
    *&v228[2 * v229] = bswap32(v234 + v233) >> 16;
    result = memcpy(v175, *(v232 + 48), v233);
    v175 += v233;
    if (v234)
    {
      result = memcpy(v175, *(*(*(a1 + 1) + 8 * v229) + 32), v234);
      v175 += v234;
      v230 &= *(*(*(a1 + 1) + 8 * v229) + 96);
    }

    ++v229;
  }

  while (v19 != v229);
  v173 = *(a1 + 13);
  LODWORD(v174) = a1[12];
  v176 = v230 == 1;
LABEL_253:
  *v231 = v176;
  a1[29] = v175 - v173;
  *v173 = 8 * v174;
  v236 = *(a1 + 13);
  *(v236 + 1) = bswap32(v175 - v173);
  if (v19 >= 0x10000)
  {
    v237 = 0x10000;
  }

  else
  {
    v237 = v19;
  }

  *(v236 + 5) = bswap32(v237) >> 16;
  *(v236 + 7) = 16 * *(a1 + 56);
  return result;
}

Picture *Picture::instantiateSlices(Picture *this, int a2)
{
  v2 = *&this[1].picFrame.bottom;
  if (v2 < a2)
  {
    v3 = this;
    if (v2 >= 1)
    {
      for (i = 0; i < v2; ++i)
      {
        v5 = *(*&v3->picFrame.right + 8 * i);
        if (v5)
        {
          Slice::~Slice(v5);
          MEMORY[0x29C24CEF0]();
          v2 = *&v3[1].picFrame.bottom;
        }
      }

      v6 = *&v3->picFrame.right;
      if (v6)
      {
        MEMORY[0x29C24CED0](v6, 0x20C8093837F09);
      }
    }

    operator new[]();
  }

  return this;
}

uint64_t PixelBuffer::getNumBytesPerPixelData(int a1)
{
  if (a1 <= 1953903153)
  {
    if (a1 > 1848848433)
    {
      if (a1 <= 1932812658)
      {
        if (a1 > 1916022839)
        {
          if (a1 != 1916022840)
          {
            if (a1 == 1916036716)
            {
              return 16;
            }

            return 0;
          }

          return 4;
        }

        if (a1 == 1848848434)
        {
          return 4;
        }

        v2 = 1915892016;
        goto LABEL_50;
      }

      if (a1 > 1937126451)
      {
        if (a1 == 1937126452)
        {
          return 0x400000002;
        }

        if (a1 != 1949589875)
        {
          return 0;
        }
      }

      else if (a1 != 1932812659)
      {
        if (a1 == 1937125938)
        {
          return 0x200000002;
        }

        return 0;
      }

      return 0x400000002;
    }

    if (a1 <= 1378955370)
    {
      if (a1 == 32)
      {
        return 4;
      }

      if (a1 != 846624121)
      {
        v2 = 1111970369;
        goto LABEL_50;
      }

      return 2;
    }

    if (a1 <= 1647719541)
    {
      if (a1 == 1378955371)
      {
        return 4;
      }

      v4 = 1647719521;
LABEL_46:
      if (a1 != v4)
      {
        return 0;
      }

      return 8;
    }

    if (a1 == 1647719542)
    {
      return 8;
    }

    v2 = 1815294002;
  }

  else
  {
    if (a1 <= 2016686641)
    {
      if (a1 <= 1983000885)
      {
        if (a1 <= 1966223669)
        {
          if (a1 != 1953903154)
          {
            v1 = 1953903668;
            goto LABEL_16;
          }

          return 0x200000002;
        }

        if (a1 != 1966223670)
        {
          if (a1 == 1983000880)
          {
            return 8;
          }

          return 0;
        }

        return 4;
      }

      if (a1 <= 1999778101)
      {
        if (a1 == 1983000886)
        {
          return 4;
        }

        v2 = 1983131704;
        goto LABEL_50;
      }

      if (a1 == 1999778102)
      {
        return 4;
      }

      v4 = 1999909174;
      goto LABEL_46;
    }

    if (a1 <= 2033463605)
    {
      if (a1 <= 2016698738)
      {
        if (a1 != 2016686642)
        {
          v1 = 2016687156;
LABEL_16:
          if (a1 == v1)
          {
            return 0x400000002;
          }

          return 0;
        }

        return 0x200000002;
      }

      if (a1 != 2016698739)
      {
        v2 = 2033463352;
        goto LABEL_50;
      }

      return 0x400000002;
    }

    if (a1 <= 2050109749)
    {
      if (a1 == 2033463606)
      {
        return 8;
      }

      if (a1 != 2037741171)
      {
        return 0;
      }

      return 2;
    }

    if (a1 == 2050240822)
    {
      return 8;
    }

    v2 = 2050109750;
  }

LABEL_50:
  if (a1 == v2)
  {
    return 4;
  }

  return 0;
}

void std::vector<EncoderJob>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 56 * ((56 * a2 - 56) / 0x38) + 56;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if (v6 + a2 > 0x492492492492492)
    {
      std::vector<EncoderJob>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v3 - v5) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * ((v4 - *a1) >> 3));
    v12 = 56 * ((56 * a2 - 56) / 0x38) + 56;
    bzero(v11, v12);
    v13 = v4 - v5;
    v14 = &v11[-(v4 - v5)];
    memcpy(v14, v5, v13);
    *a1 = v14;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EDCB1D0, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void *ThreadPool<EncoderWorker,EncoderJob,void>::dispatch_routine(uint64_t a1)
{
  {
    ThreadPool<EncoderWorker,EncoderJob,void>::getBlockSize(void)::cacheLineSize = getCacheLineSize();
  }

  {
    FrameEncoder::FrameEncoder();
  }

  v2 = ThreadPool<EncoderWorker,EncoderJob,void>::getBlockSize(void)::blockSize;
  v3 = -ThreadPool<EncoderWorker,EncoderJob,void>::getBlockSize(void)::blockSize;
  result = malloc_type_malloc(((ThreadPool<EncoderWorker,EncoderJob,void>::getBlockSize(void)::blockSize + 71) & -ThreadPool<EncoderWorker,EncoderJob,void>::getBlockSize(void)::blockSize) + ThreadPool<EncoderWorker,EncoderJob,void>::getBlockSize(void)::blockSize, 0xAF2C8CB1uLL);
  if (result)
  {
    v5 = ((result + v2) & v3);
    *(v5 - 1) = result;
    if (v5)
    {
      EncoderWorker::EncoderWorker(v5, *(a1 + 40));
    }
  }

  return result;
}

int *IcpRateControl::estimateBytes(int *this, int *a2, const Slice *a3)
{
  if ((atomic_load_explicit(_MergedGlobals_2, memory_order_acquire) & 1) == 0)
  {
    v91 = this;
    v92 = a3;
    v90 = a2;
    IcpRateControl::estimateBytes();
    this = v91;
    LODWORD(a3) = v92;
    a2 = v90;
  }

  this[3] = 0;
  v3 = a3;
  v4 = a3 << 17;
  v5 = a2 + 41;
  v6 = a2[41];
  v7 = 8 - a3;
  if (8 - a3 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = a2[28];
  v10 = (v9 << 16) - v4 * a2[38];
  v11 = 8 << a2[3];
  if (v11 >= v9)
  {
    v11 = a2[28];
  }

  if (v11 <= (v10 >> 16))
  {
    v12 = v10 >> 16;
  }

  else
  {
    v12 = v11;
  }

  if (v6)
  {
    v13 = v5[a3];
    v14 = (v13 << 16) / v6;
    if (v14 >= 45875)
    {
      v14 = 45875;
    }

    v15 = (v14 + 32) >> 6;
    if (v15 >= 1023)
    {
      LODWORD(v15) = 1023;
    }

    v16 = a2[35];
    v17 = ((v13 << 16) * v16 / v6 + (((((v13 + 1 + v6) * (v6 - v13)) << 16) / (2 * v6 * (v13 + 1)) * RateControl::SqrtTable[v15] + 0x8000) >> 16) * v13 + 0x8000) >> 16;
    if (v16 < v17)
    {
      LODWORD(v17) = a2[35];
    }

    v12 += v17;
  }

  if (a3 > 7)
  {
    LODWORD(v20) = 0;
    goto LABEL_29;
  }

  if (v7 > 1)
  {
    v21 = 0;
    v22 = 0;
    v18 = v8 & 0x7FFFFFFE;
    v23 = &a2[a3 + 42];
    v24 = &xmmword_2A1388090 + 1;
    v25 = v18;
    do
    {
      v21 += *(v24 - 1) * *(v23 - 1);
      v22 += *v24 * *v23;
      v23 += 2;
      v24 += 2;
      v25 -= 2;
    }

    while (v25);
    v19 = v22 + v21;
    if (v18 == v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v26 = &a2[v18 + 41 + a3];
  v27 = &_MergedGlobals_2[v18 + 2];
  v28 = v8 - v18;
  do
  {
    v30 = *v27++;
    v29 = v30;
    LODWORD(v30) = *v26++;
    v19 += v29 * v30;
    --v28;
  }

  while (v28);
LABEL_28:
  v20 = (v19 + 0x8000) >> 16;
LABEL_29:
  v31 = v12 + v20;
  v32 = v31 + 7;
  v33 = v31 + 14;
  if (v32 >= 0)
  {
    v33 = v32;
  }

  v34 = v33 >> 3;
  *this = v34;
  if (a2[25] < v34)
  {
    v34 = a2[25];
  }

  *this = v34;
  this[3] = v34;
  v35 = a2[29];
  v36 = (v35 << 16) - v4 * a2[39];
  v37 = 4 << a2[4];
  if (v37 >= v35)
  {
    v37 = a2[29];
  }

  if (v37 <= (v36 >> 16))
  {
    v37 = v36 >> 16;
  }

  v38 = a2[49];
  v39 = &v5[a3];
  if (v38)
  {
    v40 = v39[8];
    v41 = (v40 << 16) / v38;
    if (v41 >= 45875)
    {
      v41 = 45875;
    }

    v42 = (v41 + 32) >> 6;
    if (v42 >= 1023)
    {
      LODWORD(v42) = 1023;
    }

    v43 = a2[36];
    v44 = ((v40 << 16) * v43 / v38 + (((((v40 + 1 + v38) * (v38 - v40)) << 16) / (2 * v38 * (v40 + 1)) * RateControl::SqrtTable[v42] + 0x8000) >> 16) * v40 + 0x8000) >> 16;
    if (v43 < v44)
    {
      LODWORD(v44) = a2[36];
    }

    v37 += v44;
  }

  if (a3 > 7)
  {
    LODWORD(v47) = 0;
    goto LABEL_55;
  }

  if (v7 >= 2)
  {
    v48 = 0;
    v49 = 0;
    v45 = v8 & 0x7FFFFFFE;
    v50 = &a2[a3 + 50];
    v51 = &xmmword_2A1388090 + 1;
    v52 = v45;
    do
    {
      v48 += *(v51 - 1) * *(v50 - 1);
      v49 += *v51 * *v50;
      v50 += 2;
      v51 += 2;
      v52 -= 2;
    }

    while (v52);
    v46 = v49 + v48;
    if (v45 == v8)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  v53 = v8 - v45;
  v54 = &a2[v45 + 49 + a3];
  v55 = &_MergedGlobals_2[v45 + 2];
  do
  {
    v57 = *v55++;
    v56 = v57;
    LODWORD(v57) = *v54++;
    v46 += v56 * v57;
    --v53;
  }

  while (v53);
LABEL_54:
  v47 = (v46 + 0x8000) >> 16;
LABEL_55:
  v58 = v37 + v47;
  v59 = v58 + 7;
  v60 = v58 + 14;
  if (v59 >= 0)
  {
    v60 = v59;
  }

  v61 = v60 >> 3;
  this[1] = v61;
  if (a2[26] < v61)
  {
    v61 = a2[26];
  }

  this[1] = v61;
  v62 = v34 + v61;
  this[3] = v62;
  v63 = a2[30];
  v64 = (v63 << 16) - v4 * a2[40];
  v65 = 4 << a2[4];
  if (v65 >= v63)
  {
    v65 = a2[30];
  }

  v66 = v64 >> 16;
  if (v65 > v66)
  {
    LODWORD(v66) = v65;
  }

  v67 = a2[57];
  if (v67)
  {
    v68 = v39[16];
    v69 = (v68 << 16) / v67;
    if (v69 >= 45875)
    {
      v69 = 45875;
    }

    v70 = (v69 + 32) >> 6;
    if (v70 >= 1023)
    {
      LODWORD(v70) = 1023;
    }

    v71 = a2[37];
    v72 = ((v68 << 16) * v71 / v67 + (((((v68 + 1 + v67) * (v67 - v68)) << 16) / (2 * v67 * (v68 + 1)) * RateControl::SqrtTable[v70] + 0x8000) >> 16) * v68 + 0x8000) >> 16;
    if (v71 < v72)
    {
      LODWORD(v72) = a2[37];
    }

    LODWORD(v66) = v72 + v66;
  }

  if (a3 > 7)
  {
    LODWORD(v75) = 0;
    goto LABEL_81;
  }

  if (v7 >= 2)
  {
    v76 = 0;
    v77 = 0;
    v73 = v8 & 0x7FFFFFFE;
    v78 = &a2[a3 + 58];
    v79 = &xmmword_2A1388090 + 1;
    v80 = v73;
    do
    {
      v76 += *(v79 - 1) * *(v78 - 1);
      v77 += *v79 * *v78;
      v78 += 2;
      v79 += 2;
      v80 -= 2;
    }

    while (v80);
    v74 = v77 + v76;
    if (v73 == v8)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  v81 = v8 - v73;
  v82 = &a2[v73 + 57 + v3];
  v83 = &_MergedGlobals_2[v73 + 2];
  do
  {
    v85 = *v83++;
    v84 = v85;
    LODWORD(v85) = *v82++;
    v74 += v84 * v85;
    --v81;
  }

  while (v81);
LABEL_80:
  v75 = (v74 + 0x8000) >> 16;
LABEL_81:
  v86 = v66 + v75;
  v87 = v86 + 7;
  v88 = v86 + 14;
  if (v87 >= 0)
  {
    v88 = v87;
  }

  v89 = v88 >> 3;
  this[2] = v89;
  if (a2[27] < v89)
  {
    v89 = a2[27];
  }

  this[2] = v89;
  this[3] = v62 + v89;
  return this;
}

void IcpRateControl::estimateBytes()
{
  if (__cxa_guard_acquire(_MergedGlobals_2))
  {
    xmmword_2A1388090 = xmmword_2953C1100;
    unk_2A13880A0 = xmmword_2953C1110;
    xmmword_2A13880B0 = xmmword_2953C1120;
    unk_2A13880C0 = xmmword_2953C1130;

    __cxa_guard_release(_MergedGlobals_2);
  }
}

void Slice::Slice(Slice *this, Picture *a2)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
}

uint64_t SliceEncoder::encodeAlpha(uint64_t result, uint64_t a2)
{
  *(result + 92) = 0x100000000;
  v2 = *(**result + 216);
  if (*v2)
  {
    v3 = *(a2 + 32);
    v4 = *(result + 8);
    v5 = *(a2 + 40) + *(a2 + 48) * v4;
    v6 = *(v3 + 40) - 16 * v4;
    v7 = 16 << *(result + 12);
    if (v7 >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v7 <= v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = (v7 - v6);
    }

    v10 = result;
    result = (*(v2 + 8))(v5, *(v3 + 24), *(result + 32), *(result + 40), v8, v9, *(a2 + 52), result + 96, *(v2 + 16));
    *(v10 + 92) = result;
  }

  return result;
}

void SliceEncoder::doForwardTransform(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  if (v2 != 31)
  {
    v4 = *(a1 + 24);
    v5 = *(*a1 + 120);
    v6 = 1 << v2;
    v7 = *(a2 + 32);
    v8 = *(a1 + 8);
    v9 = *(v7 + 40) - 16 * v8;
    v10 = *(a2 + 40) + *(a2 + 48) * v8;
    if (v6 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v6;
    }

    if (v5 <= 0)
    {
      do
      {
        v16 = v9 - 16;
        if (v9 >= 16)
        {
          v17 = 16;
        }

        else
        {
          v17 = v9;
        }

        (**(a2 + 24))(v10, v4, *(a2 + 52), v17, *(v7 + 24), *(*(a2 + 24) + 8));
        v10 += *(a2 + 48);
        v9 = v16;
        --v11;
      }

      while (v11);
    }

    else
    {
      for (i = 0; i != v11; ++i)
      {
        v13 = v9 - 16;
        if (v9 >= 16)
        {
          v14 = 16;
        }

        else
        {
          v14 = v9;
        }

        (**(a2 + 24))(v10, v4, *(a2 + 52), v14, *(v7 + 24), *(*(a2 + 24) + 8));
        v15 = v5;
        do
        {
          DiscreteCosineTransform::fdct<short>(v4, v4);
          v4 += 8;
          --v15;
        }

        while (v15);
        v10 += *(a2 + 48);
        v9 = v13;
      }
    }
  }
}

void SliceEncoder::encode(SliceEncoder *this, Slice *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  v4 = v3;
  v94 = *MEMORY[0x29EDCA608];
  v5 = *(v3 + 16);
  if (v5 == 4)
  {
    v32 = *(**v3 + 224);
    v33 = *(v3 + 15);
    if (v33 > *(v3 + 20) + v32)
    {
      v34 = *(v3 + 18);
      if (v34 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = *(v3 + 18);
      }

      if (v35 >= 224)
      {
        v36 = 224;
      }

      else
      {
        v36 = v35;
      }

      v37 = *(v3 + 25);
      v38 = *(v3 + 26);
      *(v3 + 65) = v37;
      *(v3 + 66) = v38;
      v39 = *(v3 + 27);
      *(v3 + 67) = v39;
      if (v34 >= 129)
      {
        LODWORD(v40) = 4 * v36 - 384;
      }

      else
      {
        LODWORD(v40) = v36;
      }

      *(v3 + 68) = v33 - v32;
      if (v40 > 511)
      {
        v48 = v37 + v38 + v39;
      }

      else
      {
        v41 = v2;
        v42 = -1;
        v43 = (v3 + 260);
        do
        {
          v44 = v40;
          LODWORD(v40) = 3 * v40;
          v45 = v43 + 4;
          IcpRateControl::estimateBytes(v43 + 4, v4, (v42 + 2));
          v46 = v43[7];
          v47 = *(v4 + 21);
          ++v42;
          v43 += 4;
        }

        while (v46 > v47 && v44 < 171);
        if (v46 <= v47)
        {
          v49 = (v4 + 16 * v42 + 260);
          v50 = (RateControl::interpolateQuant(v47, v44, v49[3], v40, v46) + 0x8000) >> 16;
          if (v50 <= 1)
          {
            v51 = 1;
          }

          else
          {
            v51 = v50;
          }

          if (v51 >= 512)
          {
            v51 = 512;
          }

          if (v50 >= 129)
          {
            v52 = ((v51 - 126) >> 2) + 128;
          }

          else
          {
            v52 = v51;
          }

          if (v52 >= 0xE0)
          {
            v53 = 224;
          }

          else
          {
            v53 = v52;
          }

          if (v52 >= 0x81)
          {
            v40 = (4 * v53 - 384);
          }

          else
          {
            v40 = v53;
          }

          v54 = RateControl::interpolateSize(v40, v44, *v49, *v45);
          v38 = RateControl::interpolateSize(v40, v44, v49[1], v45[1]);
          v39 = RateControl::interpolateSize(v40, v44, v49[2], v43[2]);
          v48 = v54 + v38 + v39;
        }

        else
        {
          v38 = v45[1];
          v39 = v43[2];
          LODWORD(v40) = 512;
          v48 = v43[3];
        }

        v2 = v41;
      }

      if (v40 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = v40;
      }

      if (v55 >= 512)
      {
        v55 = 512;
      }

      if (v40 >= 129)
      {
        v55 = ((v55 - 126) >> 2) + 128;
      }

      *(v4 + 18) = v55;
      v56 = *(v4 + 28);
      v57 = *(v4 + 29);
      v58 = v56 + 7;
      v71 = v56 < -7;
      v59 = v56 + 14;
      if (!v71)
      {
        v59 = v58;
      }

      v60 = v57 + 7;
      v71 = v57 < -7;
      v61 = v57 + 14;
      if (!v71)
      {
        v61 = v60;
      }

      v62 = v61 >> 3;
      v63 = v62 + (v59 >> 3);
      v64 = *(v4 + 30);
      v65 = v64 + 7;
      v71 = v64 < -7;
      v66 = v64 + 14;
      if (!v71)
      {
        v66 = v65;
      }

      v67 = v66 >> 3;
      v68 = v63 + v67;
      v69 = *(v4 + 19);
      v70 = *(v4 + 20);
      v71 = v68 < v70;
      if (v68 >= v70)
      {
        v68 = 0;
        v62 = 0;
      }

      v72 = ((v70 - v68) << 16) / v48;
      v73 = v62 + ((v72 * v38 + 0x8000) >> 16);
      if (!v71)
      {
        v67 = 0;
      }

      v91[1] = v73;
      v92 = v67 + ((v72 * v39 + 0x8000) >> 16);
      v91[0] = v70 - (v73 + v92);
      if (v2[16].i32[0] != v40 || v2[16].i32[1] != v69)
      {
        v74 = 0;
        v75 = v69 << 6;
        v76 = &Macroblock::CustomQuantizationMatrixLuma + v75;
        v77 = &Macroblock::CustomQuantizationMatrixChroma + v75;
        v78 = vdupq_n_s16(v40);
        v79 = &v2[9];
        v80.i64[0] = -1;
        v80.i64[1] = -1;
        v81.i64[0] = 0x4700000047000000;
        v81.i64[1] = 0x4700000047000000;
        do
        {
          v82 = *&v76[v74];
          v83 = vceqq_s8(v82, v80);
          v84 = vmulq_s16(v78, vzip1q_s8(v82, 0));
          v85 = vmulq_s16(v78, vzip2q_s8(v82, 0));
          v79[-9] = vbicq_s8(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vdivq_f32(v81, vcvtq_f32_u32(vzip1q_s16(v84, 0))))), vcvtq_s32_f32(vdivq_f32(v81, vcvtq_f32_u32(vzip2q_s16(v84, 0))))), vzip1q_s8(v83, v83));
          v79[-8] = vbicq_s8(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vdivq_f32(v81, vcvtq_f32_u32(vzip1q_s16(v85, 0))))), vcvtq_s32_f32(vdivq_f32(v81, vcvtq_f32_u32(vzip2q_s16(v85, 0))))), vzip2q_s8(v83, v83));
          v86 = *&v77[v74];
          v87 = vceqq_s8(v86, v80);
          v88 = vmulq_s16(v78, vzip1q_s8(v86, 0));
          v89 = vmulq_s16(v78, vzip2q_s8(v86, 0));
          v79[-1] = vbicq_s8(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vdivq_f32(v81, vcvtq_f32_u32(vzip1q_s16(v88, 0))))), vcvtq_s32_f32(vdivq_f32(v81, vcvtq_f32_u32(vzip2q_s16(v88, 0))))), vzip1q_s8(v87, v87));
          *v79 = vbicq_s8(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vdivq_f32(v81, vcvtq_f32_u32(vzip1q_s16(v89, 0))))), vcvtq_s32_f32(vdivq_f32(v81, vcvtq_f32_u32(vzip2q_s16(v89, 0))))), vzip2q_s8(v87, v87));
          v79 += 2;
          v26 = v74 >= 0x30;
          v74 += 16;
        }

        while (!v26);
        v2[16].i32[0] = v40;
        v2[16].i32[1] = v69;
      }

      SliceEncoder::doQuantization(v2, v4, v93);
      v27 = *(v4 + 15);
      v28 = *(v4 + 18);
      v30 = *(v4 + 20) + v32;
      v31 = v91;
      v29 = v4;
      goto LABEL_77;
    }
  }

  else if (!v5)
  {
    v7 = *(v3 + 18);
    v6 = *(v3 + 19);
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(v3 + 18);
    }

    if (v8 >= 224)
    {
      v8 = 224;
    }

    if (v7 >= 129)
    {
      v9 = 4 * v8 - 384;
    }

    else
    {
      v9 = v8;
    }

    if (v2[16].i32[0] != v9 || v2[16].i32[1] != v6)
    {
      v10 = 0;
      v11 = v6 << 6;
      v12 = &Macroblock::CustomQuantizationMatrixLuma + v11;
      v13 = &Macroblock::CustomQuantizationMatrixChroma + v11;
      v14 = vdupq_n_s16(v9);
      v15 = &v2[9];
      v16.i64[0] = -1;
      v16.i64[1] = -1;
      v17.i64[0] = 0x4700000047000000;
      v17.i64[1] = 0x4700000047000000;
      do
      {
        v18 = *&v12[v10];
        v19 = vceqq_s8(v18, v16);
        v20 = vmulq_s16(v14, vzip1q_s8(v18, 0));
        v21 = vmulq_s16(v14, vzip2q_s8(v18, 0));
        v15[-9] = vbicq_s8(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vdivq_f32(v17, vcvtq_f32_u32(vzip1q_s16(v20, 0))))), vcvtq_s32_f32(vdivq_f32(v17, vcvtq_f32_u32(vzip2q_s16(v20, 0))))), vzip1q_s8(v19, v19));
        v15[-8] = vbicq_s8(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vdivq_f32(v17, vcvtq_f32_u32(vzip1q_s16(v21, 0))))), vcvtq_s32_f32(vdivq_f32(v17, vcvtq_f32_u32(vzip2q_s16(v21, 0))))), vzip2q_s8(v19, v19));
        v22 = *&v13[v10];
        v23 = vceqq_s8(v22, v16);
        v24 = vmulq_s16(v14, vzip1q_s8(v22, 0));
        v25 = vmulq_s16(v14, vzip2q_s8(v22, 0));
        v15[-1] = vbicq_s8(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vdivq_f32(v17, vcvtq_f32_u32(vzip1q_s16(v24, 0))))), vcvtq_s32_f32(vdivq_f32(v17, vcvtq_f32_u32(vzip2q_s16(v24, 0))))), vzip1q_s8(v23, v23));
        *v15 = vbicq_s8(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vdivq_f32(v17, vcvtq_f32_u32(vzip1q_s16(v25, 0))))), vcvtq_s32_f32(vdivq_f32(v17, vcvtq_f32_u32(vzip2q_s16(v25, 0))))), vzip2q_s8(v23, v23));
        v15 += 2;
        v26 = v10 >= 0x30;
        v10 += 16;
      }

      while (!v26);
      v2[16].i32[0] = v9;
      v2[16].i32[1] = v6;
    }

    SliceEncoder::doQuantization(v2, v3, v93);
    if (*(v4 + 68) == 1)
    {
      v27 = *(v4 + 15);
      v28 = *(v4 + 18);
      v29 = v4;
      v30 = 0;
      v31 = 0;
LABEL_77:
      SliceEncoder::encodeVlc<true>(v29, v93, v28, v27, v30, v31);
      goto LABEL_78;
    }

    SliceEncoder::encodeVlc<false>(v4, v93, *(v4 + 18));
  }

LABEL_78:
  v90 = *MEMORY[0x29EDCA608];
}

void SliceEncoder::doQuantization(int16x8_t *this, Slice *a2, int16x8_t *a3)
{
  v3 = *(a2 + 3);
  if (v3 != 31)
  {
    v4 = a3;
    v6 = 0;
    v7 = *(*a2 + 120);
    v8 = 1 << v3;
    v9 = (a3 + 2 * (256 << v3));
    v10 = *(a2 + 3);
    do
    {
      DiscreteCosineTransform::quantize<short,unsigned short>(v10, v4, this);
      DiscreteCosineTransform::quantize<short,unsigned short>(v10 + 8, v4 + 8, this);
      DiscreteCosineTransform::quantize<short,unsigned short>(v10 + 16, v4 + 16, this);
      DiscreteCosineTransform::quantize<short,unsigned short>(v10 + 24, v4 + 24, this);
      v10 += 32;
      v11 = v7 - 4;
      if (v7 >= 5)
      {
        do
        {
          DiscreteCosineTransform::quantize<short,unsigned short>(v10, v9, this + 8);
          v10 += 8;
          v9 += 8;
          --v11;
        }

        while (v11);
      }

      v4 += 32;
      ++v6;
    }

    while (v6 != v8);
  }
}

unint64_t SliceEncoder::encodeVlc<true>(void **a1, uint64_t a2, int a3, int a4, int a5, int *a6)
{
  v10 = *a1;
  v11 = *(**a1 + 224);
  v12 = v11 + *(a1 + 23);
  v13 = 65541 - v12;
  v14 = 65544 - v12;
  if (v13 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (*(a1 + 14) < a4)
  {
    v17 = a3;
    free(a1[6]);
    a1[6] = 0;
    v18 = malloc_type_malloc(a4, 0x324508D9uLL);
    if (!v18)
    {
      exception = __cxa_allocate_exception(8uLL);
      v47 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v47, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
    }

    a1[6] = v18;
    *(a1 + 14) = a4;
    v10 = *a1;
    a3 = v17;
  }

  v19 = v10[25] - 1;
  if (v19 > 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(&off_29EDCB248 + v19);
  }

  v21 = *(a1 + 3);
  v22 = (v10[30] - 4) / 2;
  if (a5 < 1)
  {
    v24 = v13 / 2 - 6;
    v23 = v15 >> 2;
    v48 = v15 >> 2;
  }

  else
  {
    v24 = *a6;
    v23 = a6[1];
    v48 = a6[2];
  }

  *a1[6] = 8 * v11;
  v49 = a3;
  *(a1[6] + 1) = a3;
  v25 = *(a1 + 14) - v11;
  if (v24 < v25)
  {
    v25 = v24;
  }

  v26 = a1[6] + v11;
  v27 = 8;
  if (v25 < 8)
  {
    v27 = v25;
  }

  v50 = 0;
  v51 = 8 * v27;
  v52 = 8 * (v25 - v27);
  v53 = v26;
  v54 = 0;
  v55 = 8 * v27;
  SliceEncoder::runLevelScanAndVlc<true>((a1 + 19), a1 + 164, (a1 + 14), (a1 + 16), a1 + 140, a2, 64, (4 << v21), v20, &v50);
  v28 = v50 + v51 - v55 + 7;
  *(a1 + 25) = v28 >> 3;
  v29 = v24 - (v28 >> 3);
  *(a1[6] + 2) = v28 >> 11;
  *(a1[6] + 3) = *(a1 + 25);
  v30 = *(a1 + 25);
  v31 = *(a1 + 14) - v30 - v11;
  v32 = v29 + v23;
  if (v32 < v31)
  {
    v31 = v32;
  }

  v33 = a1[6] + v30 + v11;
  if (v31 >= 8)
  {
    v34 = 8;
  }

  else
  {
    v34 = v31;
  }

  v50 = 0;
  v51 = 8 * v34;
  v52 = 8 * (v31 - v34);
  v53 = v33;
  v54 = 0;
  v55 = 8 * v34;
  SliceEncoder::runLevelScanAndVlc<true>(a1 + 156, a1 + 196, a1 + 116, a1 + 132, (a1 + 18), a2 + 2 * (256 << v21), 128, (v22 << v21), v20, &v50);
  v35 = v50 + v51 - v55 + 7;
  v36 = v35 >> 3;
  *(a1 + 26) = v35 >> 3;
  *(a1[6] + 4) = v35 >> 11;
  *(a1[6] + 5) = *(a1 + 26);
  v37 = *(a1 + 25);
  v38 = *(a1 + 26);
  v39 = *(a1 + 14) - (v37 + v38) - v11;
  v40 = v32 + v48 - v36;
  if (v40 < v39)
  {
    v39 = v40;
  }

  v41 = a1[6] + v37 + v38 + v11;
  if (v39 >= 8)
  {
    v42 = 8;
  }

  else
  {
    v42 = v39;
  }

  v50 = 0;
  v51 = 8 * v42;
  v52 = 8 * (v39 - v42);
  v53 = v41;
  v54 = 0;
  v55 = 8 * v42;
  result = SliceEncoder::runLevelScanAndVlc<true>((a1 + 20), a1 + 228, (a1 + 15), (a1 + 17), a1 + 148, a2 + 2 * (256 << v21) + 128, 128, (v22 << v21), v20, &v50);
  v44 = v50 + v51 - v55 + 7;
  v45 = v44 >> 3;
  *(a1 + 27) = v44 >> 3;
  if (**(**a1 + 216))
  {
    *(a1[6] + 6) = v44 >> 11;
    *(a1[6] + 7) = *(a1 + 27);
    LODWORD(v45) = *(a1 + 27);
  }

  *(a1 + 22) = v49;
  *(a1 + 15) = *(a1 + 25) + *(a1 + 26) + v45 + v11;
  return result;
}

void SliceEncoder::encodeVlc<false>(_DWORD *a1, uint64_t a2, int a3)
{
  v6 = *(**a1 + 224);
  v7 = *(*a1 + 100) - 1;
  if (v7 > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(&off_29EDCB248 + v7);
  }

  v9 = a1[3];
  v10 = *(*a1 + 120) - 4;
  v16 = 0u;
  v11 = v10 / 2;
  memset(v15, 0, sizeof(v15));
  SliceEncoder::runLevelScanAndVlc<false>((a1 + 38), (a1 + 41), (a1 + 28), (a1 + 32), (a1 + 35), a2, 64, (4 << v9), v8, v15);
  a1[25] = (*&v15[0] + *(&v15[0] + 1) - *(&v16 + 1) + 7) >> 3;
  *&v15[0] = 0;
  v12 = a2 + 2 * (256 << v9);
  v13 = (v11 << v9);
  SliceEncoder::runLevelScanAndVlc<false>((a1 + 39), (a1 + 49), (a1 + 29), (a1 + 33), (a1 + 36), v12, 128, v13, v8, v15);
  a1[26] = (*&v15[0] + *(&v15[0] + 1) - *(&v16 + 1) + 7) >> 3;
  *&v15[0] = 0;
  SliceEncoder::runLevelScanAndVlc<false>((a1 + 40), (a1 + 57), (a1 + 30), (a1 + 34), (a1 + 37), v12 + 128, 128, v13, v8, v15);
  v14 = (*&v15[0] + *(&v15[0] + 1) - *(&v16 + 1) + 7) >> 3;
  a1[27] = v14;
  a1[22] = a3;
  a1[15] = a1[25] + v14 + a1[26] + v6;
}

unint64_t SliceEncoder::runLevelScanAndVlc<true>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  result = MEMORY[0x2A1C7C4A8]();
  v22 = v15;
  v241 = *MEMORY[0x29EDCA608];
  v238 = v17 * v16;
  *result = 0;
  v23 = (-(*v15 & 1) ^ (*v15 >> 1)) + (*v15 & 1);
  if (v23)
  {
    *result = 1;
    if (v23 >= 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = -v23;
    }

    v25 = 2 * v24 + (v23 >> 31);
    if (v25 > 0x3FF)
    {
      v28 = RiceExpComboCodeCatalog[EntropyCode::firstDcCodeBook];
      v29 = (v28 & 3) + 1;
      v30 = (v28 >> 2) & 7;
      v26 = v25 - (v29 << (RiceExpComboCodeCatalog[EntropyCode::firstDcCodeBook] >> 5)) + (1 << v30);
      v27 = (v30 ^ 0x3F) + v29 - 2 * __clz(v26);
    }

    else
    {
      v26 = RiceExpComboCodeCodewordTables[1024 * EntropyCode::firstDcCodeBook + v25];
      v27 = RiceExpComboCodeCodewordLengthTables[1024 * EntropyCode::firstDcCodeBook + v25];
    }
  }

  else
  {
    v26 = RiceExpComboCodeCodewordTables[1024 * EntropyCode::firstDcCodeBook];
    v27 = RiceExpComboCodeCodewordLengthTables[1024 * EntropyCode::firstDcCodeBook];
  }

  v31 = v27;
  v32 = v26;
  v33 = a10[5];
  v34 = v31 - v33;
  v235 = v13;
  v233 = v11;
  if (v31 >= v33)
  {
    v37 = a10[2];
    v38 = v37 - 64;
    if (v37 < 0x40)
    {
      if (v37 + v33 < v31)
      {
        v41 = a10[1] - v33;
        v35 = a10[4] << (v33 - *(a10 + 8));
        a10[4] = v35;
        v42 = v41 + 7;
        if ((v42 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v43 = -(v42 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v44 = HIBYTE(v35);
            v45 = a10[3];
            a10[3] = (v45 + 1);
            *v45 = v44;
            *a10 += 8;
            v35 = a10[4] << 8;
            a10[4] = v35;
            v43 += 8;
          }

          while (v43);
        }

        v36 = 0;
        a10[5] = 0;
        a10[1] = 0;
        a10[2] = 0;
        v46 = v16;
        v47 = (v15 + 2 * v238);
        if (v238 > v16)
        {
          goto LABEL_22;
        }

        goto LABEL_58;
      }

      if (!v37)
      {
        v36 = 0;
        v35 = (a10[4] << v31) | v32;
        a10[4] = v35;
        a10[5] = 0;
        v46 = v16;
        v47 = (v15 + 2 * v238);
        if (v238 > v16)
        {
          goto LABEL_22;
        }

        goto LABEL_58;
      }

      v48 = a10[3];
      *v48 = bswap64((a10[4] << v33) | (v32 >> v34));
      v35 = ~(-1 << v34) & v32;
      *a10 += 64;
      a10[1] = v37;
      a10[2] = 0;
      a10[3] = (v48 + 1);
      v36 = v37 - v34;
    }

    else
    {
      v39 = a10[3];
      v35 = ~(-1 << v34) & v32;
      *v39 = bswap64((a10[4] << v33) | (v32 >> v34));
      v40 = a10[1];
      *a10 += 64;
      a10[2] = v38;
      a10[3] = (v39 + 1);
      v36 = v40 - v34;
    }
  }

  else
  {
    v35 = (a10[4] << v31) | v32;
    v36 = v33 - v31;
  }

  a10[4] = v35;
  a10[5] = v36;
  v46 = v16;
  v47 = (v15 + 2 * v238);
  if (v238 > v16)
  {
LABEL_22:
    v49 = 3;
    v50 = (v15 + 2 * v46);
    do
    {
      v51 = v23;
      v23 = (-(*v50 & 1) ^ (*v50 >> 1)) + (*v50 & 1);
      v52 = v23 - v51;
      if (v23 == v51)
      {
        if (v49 < 0)
        {
          v49 = -v49;
        }

        if (v49 >= 3)
        {
          v49 = 3;
        }

        v61 = EntropyCode::levelDifferenceCodeBook[v49];
        v58 = RiceExpComboCodeCodewordLengthTables[1024 * v61];
        v59 = RiceExpComboCodeCodewordTables[1024 * v61];
        v60 = v58 - v36;
        if (v58 < v36)
        {
LABEL_23:
          v35 = (v35 << v58) | v59;
          v36 -= v58;
          goto LABEL_24;
        }
      }

      else
      {
        ++*result;
        v53 = v49 < 0;
        if (v49 < 0)
        {
          v49 = -v49;
        }

        if (v53)
        {
          v54 = v51 - v23;
        }

        else
        {
          v54 = v23 - v51;
        }

        if (v49 >= 3)
        {
          v49 = 3;
        }

        v55 = EntropyCode::levelDifferenceCodeBook[v49];
        if (v54 >= 0)
        {
          v56 = v54;
        }

        else
        {
          v56 = -v54;
        }

        v57 = 2 * v56 + (v54 >> 31);
        if (v57 > 0x3FF)
        {
          v62 = RiceExpComboCodeCatalog[v55];
          v63 = (v62 & 3) + 1;
          v64 = (v62 >> 2) & 7;
          v65 = v57 - (v63 << (v62 >> 5)) + (1 << ((v62 >> 2) & 7));
          v58 = ((v64 ^ 0x3F) + v63 - 2 * __clz(v65));
          v59 = v65;
          v60 = v58 - v36;
          if (v58 < v36)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v58 = RiceExpComboCodeCodewordLengthTables[1024 * v55 + v57];
          v59 = RiceExpComboCodeCodewordTables[1024 * v55 + v57];
          v60 = v58 - v36;
          if (v58 < v36)
          {
            goto LABEL_23;
          }
        }
      }

      v66 = a10[2];
      v67 = v66 - 64;
      if (v66 < 0x40)
      {
        if (v66 + v36 >= v58)
        {
          if (v66)
          {
            v75 = bswap64((v35 << v36) | (v59 >> v60));
            v76 = a10[3];
            *v76 = v75;
            *a10 += 64;
            a10[1] = v66;
            a10[2] = 0;
            a10[3] = (v76 + 1);
            v36 = v66 - v60;
            a10[4] = ~(-1 << v60) & v59;
            a10[5] = v66 - v60;
            v35 = ~(-1 << v60) & v59;
          }

          else
          {
            v36 = 0;
            v35 = (v35 << v58) | v59;
            a10[4] = v35;
            a10[5] = 0;
          }
        }

        else
        {
          v71 = a10[1] - v36;
          v35 <<= -v71;
          a10[4] = v35;
          v72 = v71 + 7;
          if ((v72 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v73 = -(v72 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v74 = a10[3];
              a10[3] = (v74 + 1);
              *v74 = HIBYTE(v35);
              *a10 += 8;
              v35 = a10[4] << 8;
              a10[4] = v35;
              v73 += 8;
            }

            while (v73);
          }

          v36 = 0;
          a10[5] = 0;
          a10[1] = 0;
          a10[2] = 0;
        }

        goto LABEL_25;
      }

      v68 = bswap64((v35 << v36) | (v59 >> v60));
      v69 = a10[3];
      *v69 = v68;
      v70 = a10[1];
      v35 = ~(-1 << v60) & v59;
      *a10 += 64;
      a10[2] = v67;
      a10[3] = (v69 + 1);
      v36 = v70 - v60;
LABEL_24:
      a10[4] = v35;
      a10[5] = v36;
LABEL_25:
      v50 = (v50 + 2 * v46);
      v49 = v52;
    }

    while (v50 < v47);
  }

LABEL_58:
  v77 = a9;
  v78 = a10 + 1;
  v79 = a10[1];
  v80 = *a10;
  v234 = v12;
  *v12 = v79 + *a10 - v36;
  *v14 = 0;
  if (v17 <= 3)
  {
    v236 = v22;
    v166 = 0;
    v167 = 2u;
    v168 = 4u;
    v108 = 0uLL;
    v169 = v79;
    v170 = v79;
    v171 = v79;
    v172 = 1;
    v101 = 0uLL;
    while (1)
    {
      v174 = *(v77 + v172);
      if (v174 < v238)
      {
        break;
      }

      v173 = v166;
LABEL_133:
      ++v172;
      v166 = v173;
      v77 = a9;
      if (v172 == 64)
      {
        goto LABEL_194;
      }
    }

    v175 = (v236 + 2 * v174);
    while (1)
    {
      while (1)
      {
        v177 = *v175;
        if (*v175)
        {
          break;
        }

        v173 = (v166 + 1);
        v175 = (v175 + 2 * v46);
        LODWORD(v166) = v166 + 1;
        if (v175 >= v47)
        {
          goto LABEL_133;
        }
      }

      v178 = EntropyCode::runCodeBook[v168];
      if (v166 < 0x400)
      {
        v183 = RiceExpComboCodeCodewordTables[1024 * v178 + (v166 & 0x3FF)];
        v184 = RiceExpComboCodeCodewordLengthTables[1024 * v178 + (v166 & 0x3FF)];
      }

      else
      {
        v179 = RiceExpComboCodeCatalog[v178];
        v180 = (v179 & 3) + 1;
        v181 = v180 << (v179 >> 5);
        v182 = (v179 >> 2) & 7;
        v183 = v166 - v181 + (1 << v182);
        v184 = (v182 ^ 0x3F) + v180 - 2 * __clz(v183);
      }

      v185 = v177 >> 1;
      v186 = (v177 >> 1) - 1;
      v187 = EntropyCode::levelCodeBook[v167];
      if (v186 < 0x400)
      {
        v193 = RiceExpComboCodeCodewordLengthTables[1024 * v187 + (v186 & 0x3FF)] + 1;
        v194 = v177 & 1 | (2 * RiceExpComboCodeCodewordTables[1024 * v187 + (v186 & 0x3FF)]);
        v195 = (v193 + v184);
        if (v195 < 0x21)
        {
LABEL_146:
          result = v194 + (v183 << v193);
          v196 = v195 - v36;
          if (v195 < v36)
          {
            v35 = (v35 << v195) | result;
            v36 -= v195;
            a10[4] = v35;
            a10[5] = v36;
          }

          else
          {
            v197 = a10[2];
            if (v197 < 0x40)
            {
              if (v197 + v36 < v195)
              {
                v35 <<= v36 - v171;
                a10[4] = v35;
                v212 = v171 - v36 + 7;
                if ((v212 & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v213 = -(v212 & 0xFFFFFFFFFFFFFFF8);
                  do
                  {
                    v214 = a10[3];
                    a10[3] = (v214 + 1);
                    *v214 = HIBYTE(v35);
                    v80 = *a10 + 8;
                    *a10 = v80;
                    v35 = a10[4] << 8;
                    a10[4] = v35;
                    v213 += 8;
                  }

                  while (v213);
                }

                goto LABEL_190;
              }

              if (!v197)
              {
                v36 = 0;
                v35 = (v35 << v195) | result;
                goto LABEL_193;
              }

              v217 = a10[3];
              *v217 = bswap64((v35 << v36) | (result >> v196));
              v80 += 64;
              *a10 = v80;
              a10[1] = v197;
              v35 = ~(-1 << v196) & result;
              a10[2] = 0;
              a10[3] = (v217 + 1);
              v36 = v197 - v196;
              v79 = v197;
              a10[4] = v35;
              a10[5] = v197 - v196;
              v169 = v197;
              v170 = v197;
              v171 = v197;
            }

            else
            {
              v198 = bswap64((v35 << v36) | (result >> v196));
              v199 = a10[3];
              *v199 = v198;
              v80 += 64;
              *a10 = v80;
              a10[2] = v197 - 64;
              a10[3] = (v199 + 1);
              v36 = v170 - v196;
              a10[4] = ~(-1 << v196) & result;
              a10[5] = v170 - v196;
              v171 = v170;
              v35 = ~(-1 << v196) & result;
            }
          }

          goto LABEL_137;
        }
      }

      else
      {
        v188 = RiceExpComboCodeCatalog[v187];
        v189 = (v188 & 3) + 1;
        v190 = v189 << (v188 >> 5);
        v191 = (v188 >> 2) & 7;
        v192 = v186 - v190 + (1 << v191);
        v193 = (v191 ^ 0x3F) + v189 - 2 * __clz(v192) + 1;
        v194 = v177 & 1 | (2 * v192);
        v195 = (v193 + v184);
        if (v195 < 0x21)
        {
          goto LABEL_146;
        }
      }

      v200 = a10[2];
      if (v200 + v36 < v195)
      {
        v35 <<= v36 - v170;
        a10[4] = v35;
        v201 = v170 - v36 + 7;
        if ((v201 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v202 = -(v201 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v203 = a10[3];
            a10[3] = (v203 + 1);
            *v203 = HIBYTE(v35);
            v80 = *a10 + 8;
            *a10 = v80;
            v35 = a10[4] << 8;
            a10[4] = v35;
            v202 += 8;
          }

          while (v202);
        }

        v79 = 0;
        *v78 = 0;
        a10[2] = 0;
        if (v184)
        {
          v170 = 0;
          v36 = 0;
LABEL_156:
          v204 = v35 << (v36 - v170);
          a10[4] = v204;
          v205 = v170 - v36 + 7;
          if ((v205 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v206 = -(v205 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v207 = a10[3];
              a10[3] = (v207 + 1);
              *v207 = HIBYTE(v204);
              v80 = *a10 + 8;
              *a10 = v80;
              v204 = a10[4] << 8;
              a10[4] = v204;
              v206 += 8;
            }

            while (v206);
          }

          v79 = 0;
          v169 = 0;
          v170 = 0;
          v171 = 0;
          a10[5] = 0;
          *v78 = 0;
          a10[2] = 0;
          result = 0;
          if (!v193)
          {
            goto LABEL_192;
          }
        }

        else
        {
          v169 = 0;
          v170 = 0;
          v171 = 0;
          v204 = v35 | v183;
          a10[4] = v204;
          a10[5] = 0;
          result = 0;
          if (!v193)
          {
            goto LABEL_192;
          }
        }

LABEL_187:
        v35 = v204 << (result - v169);
        a10[4] = v35;
        v222 = v169 - result + 7;
        if ((v222 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v223 = -(v222 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v224 = a10[3];
            a10[3] = (v224 + 1);
            *v224 = HIBYTE(v35);
            v80 = *a10 + 8;
            *a10 = v80;
            v35 = a10[4] << 8;
            a10[4] = v35;
            v223 += 8;
          }

          while (v223);
        }

LABEL_190:
        v79 = 0;
        v169 = 0;
        v170 = 0;
        v171 = 0;
        v36 = 0;
        a10[5] = 0;
        *v78 = 0;
        a10[2] = 0;
        goto LABEL_137;
      }

      v208 = v184 - v36;
      if (v184 >= v36)
      {
        v209 = v200 - 64;
        if (v200 < 0x40)
        {
          if (v200 + v36 < v184)
          {
            goto LABEL_156;
          }

          if (!v200)
          {
            v204 = (v35 << v184) | v183;
            a10[4] = v204;
            a10[5] = 0;
            result = 0;
            if (!v193)
            {
              goto LABEL_192;
            }

            goto LABEL_187;
          }

          v209 = 0;
          v218 = a10[3];
          *v218 = bswap64((v35 << v36) | (v183 >> v208));
          v204 = ~(-1 << v208) & v183;
          v80 += 64;
          *a10 = v80;
          a10[1] = v200;
          result = v200 - v208;
          a10[2] = 0;
          a10[3] = (v218 + 1);
          a10[4] = v204;
          a10[5] = v200 - v208;
          v79 = v200;
          v169 = v200;
          v170 = v200;
          v171 = v200;
          v210 = v193;
          v94 = v193 >= v200 - v208;
          v211 = v193 - (v200 - v208);
          if (!v94)
          {
LABEL_171:
            v35 = (v204 << v210) | v194;
            v36 = result - v210;
            a10[4] = v35;
            a10[5] = result - v210;
            goto LABEL_137;
          }
        }

        else
        {
          v215 = bswap64((v35 << v36) | (v183 >> v208));
          v216 = a10[3];
          *v216 = v215;
          v204 = ~(-1 << v208) & v183;
          v80 += 64;
          *a10 = v80;
          a10[2] = v209;
          a10[3] = (v216 + 1);
          result = v169 - v208;
          v170 = v169;
          v171 = v169;
          a10[4] = v204;
          a10[5] = v169 - v208;
          v210 = v193;
          v211 = v193 - (v169 - v208);
          if (v193 < v169 - v208)
          {
            goto LABEL_171;
          }
        }
      }

      else
      {
        v204 = (v35 << v184) | v183;
        result = v36 - v184;
        v209 = a10[2];
        a10[4] = v204;
        a10[5] = result;
        v210 = v193;
        v211 = v193 - result;
        if (v193 < result)
        {
          goto LABEL_171;
        }
      }

      if (v209 < 0x40)
      {
        if (v209 + result < v210)
        {
          goto LABEL_187;
        }

        if (!v209)
        {
          result = v210;
LABEL_192:
          v36 = 0;
          v35 = (v204 << result) | v194;
LABEL_193:
          a10[4] = v35;
          a10[5] = 0;
          goto LABEL_137;
        }

        v221 = a10[3];
        *v221 = bswap64((v204 << result) | (v194 >> v211));
        v80 += 64;
        *a10 = v80;
        a10[1] = v209;
        v35 = ~(-1 << v211) & v194;
        a10[2] = 0;
        a10[3] = (v221 + 1);
        v36 = v209 - v211;
        a10[4] = v35;
        a10[5] = v209 - v211;
        v79 = v209;
        v169 = v209;
        v170 = v209;
        v171 = v209;
      }

      else
      {
        v219 = v204 << result;
        v220 = a10[3];
        *v220 = bswap64(v219 | (v194 >> v211));
        result = (v220 + 1);
        v80 += 64;
        *a10 = v80;
        v35 = ~(-1 << v211) & v194;
        a10[2] = v209 - 64;
        a10[3] = result;
        v36 = v79 - v211;
        a10[4] = v35;
        a10[5] = v79 - v211;
        v169 = v79;
        v170 = v79;
        v171 = v79;
      }

LABEL_137:
      v173 = 0u;
      *v14 += v184;
      v176 = vdupq_n_s32(v185);
      v108 = vaddq_s32(v108, vcgtq_u32(v176, xmmword_2953CB990));
      v101 = vaddq_s32(v101, vcgtq_u32(v176, xmmword_2953CB9A0));
      v167 = v185;
      v168 = v166;
      v175 = (v175 + 2 * v46);
      LODWORD(v166) = 0u;
      if (v175 >= v47)
      {
        goto LABEL_133;
      }
    }
  }

  v81 = 0;
  v82 = a9 + 64;
  v83 = __clz(v17) ^ 0x1F;
  v84 = 8 * v16;
  v85 = 4 * v16;
  v86 = 2 * v46;
  v87 = 2 * v46 + v85;
  do
  {
    v88 = 2 * (*(v82 + v81 + 3) << v83);
    v89 = 2 * (*(v82 + v81 + 2) << v83);
    v90 = 2 * (*(v82 + v81 + 1) << v83);
    v91 = 2 * (*(v82 + v81) << v83);
    v92 = v22;
    do
    {
      v18.i64[0] = *v92;
      v19.i64[0] = *(v92 + v86);
      v20.i64[0] = *(v92 + v85);
      v21.i64[0] = *(v92 + v87);
      v93 = vzip1q_s16(v18, v19);
      v19 = vzip1q_s16(v20, v21);
      v20 = vzip1q_s32(v93, v19);
      *&v240[v91 + 256] = v20.i64[0];
      *&v240[v90 + 256] = v20.i64[1];
      v18 = vzip2q_s32(v93, v19);
      *&v240[v89 + 256] = v18.i64[0];
      *&v240[v88 + 256] = v18.i64[1];
      v88 += 8;
      v89 += 8;
      v90 += 8;
      v91 += 8;
      v92 = (v92 + v84);
    }

    while (v92 < v47);
    ++v22;
    v94 = v81 >= 0x3C;
    v81 += 4;
  }

  while (!v94);
  v95 = 0;
  v96 = 0;
  do
  {
    v97 = vandq_s8(vceqzq_s8(vqmovn_high_s16(vqmovn_s16(*&v240[16 * v95 + 256]), *&v240[16 * v95 + 272])), xmmword_2953CB9B0);
    v98 = vaddv_s8(*v97.i8);
    v97.i64[0] = vextq_s8(v97, v97, 8uLL).u64[0];
    v97.i8[0] = vaddv_s8(*v97.i8);
    result = ~(v98 | (v97.i32[0] << 8));
    *&v240[v95] = ~(v98 | (v97.i16[0] << 8));
    v96 += 16;
    v95 += 2;
  }

  while (v96 < v17 << 6);
  v237 = v17 << 6;
  v99 = *&v240[4 * (v17 >> 5)] >> v17;
  v100 = 32 - (v17 & 0x1F);
  v101 = 0uLL;
  v102 = 4u;
  v103 = 2u;
  v104 = v79;
  v105 = v79;
  v106 = v79;
  v107 = v17;
  v108 = 0uLL;
  v239 = &v240[4 * (v17 >> 5)];
  if (!v99)
  {
    goto LABEL_127;
  }

LABEL_67:
  LODWORD(v109) = v107;
  do
  {
    v111 = __clz(__rbit32(v99));
    v112 = v109 + v111;
    v113 = EntropyCode::runCodeBook[v102];
    v102 = v112 - v17;
    if ((v112 - v17) < 0x400)
    {
      v118 = RiceExpComboCodeCodewordTables[1024 * v113 + (v102 & 0x3FF)];
      v119 = RiceExpComboCodeCodewordLengthTables[1024 * v113 + (v102 & 0x3FF)];
    }

    else
    {
      v114 = RiceExpComboCodeCatalog[v113];
      v115 = (v114 & 3) + 1;
      v116 = v115 << (v114 >> 5);
      v117 = (v114 >> 2) & 7;
      v118 = v102 - v116 + (1 << v117);
      v119 = (v117 ^ 0x3F) + v115 - 2 * __clz(v118);
    }

    v120 = *&v240[2 * v112 + 256];
    v121 = v120 >> 1;
    v122 = v121 - 1;
    v123 = EntropyCode::levelCodeBook[v103];
    if ((v121 - 1) < 0x400)
    {
      result = v122 & 0x3FF;
      v127 = RiceExpComboCodeCodewordTables[1024 * v123 + result];
      v128 = RiceExpComboCodeCodewordLengthTables[1024 * v123 + result];
    }

    else
    {
      v124 = RiceExpComboCodeCatalog[v123];
      result = (v124 & 3) + 1;
      v125 = result << (v124 >> 5);
      v126 = (v124 >> 2) & 7;
      v127 = v122 - v125 + (1 << v126);
      v128 = (v126 ^ 0x3F) + result - 2 * __clz(v127);
    }

    v129 = v99 >> v111;
    v109 = (v112 + 1);
    v99 = v99 >> v111 >> 1;
    v100 += ~v111;
    v130 = v128 + 1;
    v131 = v120 & 1 | (2 * v127);
    v132 = (v128 + 1 + v119);
    if (v132 < 0x21)
    {
      v142 = v131 + (v118 << v130);
      v143 = v132 - v36;
      if (v132 < v36)
      {
        v35 = (v35 << (v130 + v119)) | v142;
        v36 -= v132;
LABEL_98:
        a10[4] = v35;
        a10[5] = v36;
        goto LABEL_69;
      }

      v149 = a10[2];
      if (v149 >= 0x40)
      {
        v150 = bswap64((v35 << v36) | (v142 >> v143));
        v151 = a10[3];
        *v151 = v150;
        v80 += 64;
        *a10 = v80;
        a10[2] = v149 - 64;
        a10[3] = (v151 + 1);
        v36 = v105 - v143;
        a10[4] = ~(-1 << v143) & v142;
        a10[5] = v105 - v143;
        v106 = v105;
        v35 = ~(-1 << v143) & v142;
        goto LABEL_69;
      }

      result = v149 + v36;
      if (v149 + v36 < v132)
      {
        v35 <<= v36 - v106;
        a10[4] = v35;
        v154 = v106 - v36 + 7;
        if ((v154 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v155 = -(v154 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v156 = a10[3];
            a10[3] = (v156 + 1);
            *v156 = HIBYTE(v35);
            v80 = *a10 + 8;
            *a10 = v80;
            v35 = a10[4] << 8;
            a10[4] = v35;
            v155 += 8;
          }

          while (v155);
        }

        goto LABEL_68;
      }

      if (v149)
      {
        v157 = a10[3];
        *v157 = bswap64((v35 << v36) | (v142 >> v143));
        v80 += 64;
        *a10 = v80;
        a10[1] = v149;
        v35 = ~(-1 << v143) & v142;
        a10[2] = 0;
        a10[3] = (v157 + 1);
        v36 = v149 - v143;
        v79 = v149;
        a10[4] = v35;
        a10[5] = v149 - v143;
        v104 = v149;
        v105 = v149;
        v106 = v149;
        goto LABEL_69;
      }

      v36 = 0;
      v35 = (v35 << v132) | v142;
      goto LABEL_126;
    }

    v133 = a10[2];
    result = v133 + v36;
    if (v133 + v36 < v132)
    {
      v35 <<= v36 - v105;
      a10[4] = v35;
      v134 = v105 - v36 + 7;
      if ((v134 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v135 = -(v134 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v136 = a10[3];
          a10[3] = (v136 + 1);
          *v136 = HIBYTE(v35);
          v80 = *a10 + 8;
          *a10 = v80;
          v35 = a10[4] << 8;
          a10[4] = v35;
          v135 += 8;
        }

        while (v135);
        v79 = 0;
        *v78 = 0;
        a10[2] = 0;
        if (v119)
        {
LABEL_82:
          v105 = 0;
          v36 = 0;
LABEL_83:
          v137 = v35 << (v36 - v105);
          a10[4] = v137;
          v138 = v105 - v36 + 7;
          if ((v138 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v139 = -(v138 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v140 = a10[3];
              a10[3] = (v140 + 1);
              *v140 = HIBYTE(v137);
              v80 = *a10 + 8;
              *a10 = v80;
              v137 = a10[4] << 8;
              a10[4] = v137;
              v139 += 8;
            }

            while (v139);
          }

          v79 = 0;
          v104 = 0;
          v105 = 0;
          v106 = 0;
          a10[5] = 0;
          *v78 = 0;
          a10[2] = 0;
          v141 = 0;
          if (v130)
          {
LABEL_120:
            v35 = v137 << (v141 - v104);
            a10[4] = v35;
            v162 = v104 - v141 + 7;
            if ((v162 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v163 = -(v162 & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v164 = a10[3];
                a10[3] = (v164 + 1);
                *v164 = HIBYTE(v35);
                v80 = *a10 + 8;
                *a10 = v80;
                v35 = a10[4] << 8;
                a10[4] = v35;
                v163 += 8;
              }

              while (v163);
            }

LABEL_68:
            v79 = 0;
            v104 = 0;
            v105 = 0;
            v106 = 0;
            v36 = 0;
            a10[5] = 0;
            *v78 = 0;
            a10[2] = 0;
            goto LABEL_69;
          }

          goto LABEL_125;
        }
      }

      else
      {
        v79 = 0;
        *v78 = 0;
        a10[2] = 0;
        if (v119)
        {
          goto LABEL_82;
        }
      }

      v104 = 0;
      v105 = 0;
      v106 = 0;
      v137 = v35 | v118;
      a10[4] = v137;
      a10[5] = 0;
      v141 = 0;
      if (v128 != -1)
      {
        goto LABEL_120;
      }

      goto LABEL_125;
    }

    v144 = v118;
    v145 = v119 - v36;
    if (v119 < v36)
    {
      v137 = (v35 << v119) | v118;
      v141 = v36 - v119;
      v146 = a10[2];
      a10[4] = v137;
      a10[5] = v141;
      v147 = v130;
      v148 = v130 - v141;
      if (v130 < v141)
      {
        goto LABEL_97;
      }

LABEL_113:
      if (v146 >= 0x40)
      {
        v159 = v137 << v141;
        v160 = a10[3];
        *v160 = bswap64(v159 | (v131 >> v148));
        v80 += 64;
        *a10 = v80;
        v35 = ~(-1 << v148) & v131;
        a10[2] = v146 - 64;
        a10[3] = (v160 + 1);
        v36 = v79 - v148;
        a10[4] = v35;
        a10[5] = v36;
        v104 = v79;
        v105 = v79;
        v106 = v79;
        goto LABEL_69;
      }

      if (v146 + v141 < v147)
      {
        goto LABEL_120;
      }

      if (v146)
      {
        v161 = a10[3];
        *v161 = bswap64((v137 << v141) | (v131 >> v148));
        v80 += 64;
        *a10 = v80;
        a10[1] = v146;
        v35 = ~(-1 << v148) & v131;
        a10[2] = 0;
        a10[3] = (v161 + 1);
        v36 = v146 - v148;
        a10[4] = v35;
        a10[5] = v36;
        v79 = v146;
        v104 = v146;
        v105 = v146;
        v106 = v146;
        goto LABEL_69;
      }

      LOBYTE(v141) = v147;
      goto LABEL_125;
    }

    v146 = v133 - 64;
    if (v133 >= 0x40)
    {
      result = -1 << v145;
      v152 = bswap64((v35 << v36) | (v144 >> v145));
      v153 = a10[3];
      *v153 = v152;
      v137 = ~(-1 << v145) & v144;
      v80 += 64;
      *a10 = v80;
      a10[2] = v146;
      a10[3] = (v153 + 1);
      v141 = v104 - v145;
      v105 = v104;
      v106 = v104;
      a10[4] = v137;
      a10[5] = v104 - v145;
      v147 = v130;
      v148 = v130 - (v104 - v145);
      if (v130 < v104 - v145)
      {
        goto LABEL_97;
      }

      goto LABEL_113;
    }

    if (result < v119)
    {
      goto LABEL_83;
    }

    if (v133)
    {
      v146 = 0;
      v158 = a10[3];
      *v158 = bswap64((v35 << v36) | (v144 >> v145));
      v137 = ~(-1 << v145) & v144;
      v80 += 64;
      *a10 = v80;
      a10[1] = v133;
      v141 = v133 - v145;
      a10[2] = 0;
      a10[3] = (v158 + 1);
      a10[4] = v137;
      a10[5] = v133 - v145;
      v79 = v133;
      v104 = v133;
      v105 = v133;
      v106 = v133;
      v147 = v130;
      v148 = v130 - (v133 - v145);
      if (v130 < v133 - v145)
      {
LABEL_97:
        v35 = (v137 << v147) | v131;
        v36 = v141 - v147;
        goto LABEL_98;
      }

      goto LABEL_113;
    }

    v137 = (v35 << v119) | v144;
    a10[4] = v137;
    a10[5] = 0;
    v141 = 0;
    if (v130)
    {
      goto LABEL_120;
    }

LABEL_125:
    v36 = 0;
    v35 = (v137 << v141) | v131;
LABEL_126:
    a10[4] = v35;
    a10[5] = 0;
LABEL_69:
    *v14 += v119;
    v110 = vdupq_n_s32(v121);
    v108 = vaddq_s32(v108, vcgtq_u32(v110, xmmword_2953CB990));
    v101 = vaddq_s32(v101, vcgtq_u32(v110, xmmword_2953CB9A0));
    LODWORD(v103) = v121;
    LODWORD(v17) = v109;
    v107 = v109;
  }

  while (v129 > 1);
  while (1)
  {
    v107 += v100;
    if (v107 >= v237)
    {
      break;
    }

    v165 = *(v239 + 1);
    v99 = v165;
    v100 = 32;
    v17 = v109;
    v103 = v121;
    v239 += 4;
    if (v165)
    {
      goto LABEL_67;
    }

LABEL_127:
    v109 = v17;
    v121 = v103;
  }

LABEL_194:
  v225 = vnegq_s32(v108);
  v225.i32[1] = vdupq_lane_s32(*v225.i8, 1).u32[0];
  v226 = vnegq_s32(v101);
  v226.i32[1] = vdupq_lane_s32(*v226.i8, 1).u32[0];
  *v233 = v225;
  v233[1] = v226;
  *v235 = v79 + v80 - v36 - *v234;
  v227 = v79 - v36;
  v228 = v35 << (v36 - v79);
  a10[4] = v228;
  v229 = v227 + 7;
  if ((v229 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v230 = -(v229 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v231 = a10[3];
      a10[3] = (v231 + 1);
      *v231 = HIBYTE(v228);
      *a10 += 8;
      v228 = a10[4] << 8;
      a10[4] = v228;
      v230 += 8;
    }

    while (v230);
  }

  a10[5] = 0;
  *v78 = 0;
  a10[2] = 0;
  v232 = *MEMORY[0x29EDCA608];
  return result;
}

double SliceEncoder::runLevelScanAndVlc<false>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  v10 = MEMORY[0x2A1C7C4A8]();
  v114 = v21;
  v115 = v20;
  v117 = *MEMORY[0x29EDCA608];
  v22 = v15 * v14;
  *v10 = 0;
  v23 = (-(*v13 & 1) ^ (*v13 >> 1)) + (*v13 & 1);
  if (v23)
  {
    v24 = 1;
    *v10 = 1;
    if (v23 >= 0)
    {
      v25 = v23;
    }

    else
    {
      v25 = -v23;
    }

    v26 = 2 * v25 + (v23 >> 31);
    if (v26 > 0x3FF)
    {
      v28 = RiceExpComboCodeCatalog[EntropyCode::firstDcCodeBook];
      v27 = (v28 & 3) + ((v28 >> 2) & 7 ^ 0x3F) - 2 * __clz((~(v28 & 3) << (v28 >> 5)) + v26 + (1 << ((v28 >> 2) & 7))) + 1;
    }

    else
    {
      v27 = RiceExpComboCodeCodewordLengthTables[1024 * EntropyCode::firstDcCodeBook + v26];
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
    v27 = RiceExpComboCodeCodewordLengthTables[1024 * EntropyCode::firstDcCodeBook];
  }

  v29 = (v13 + 2 * v22);
  v30 = *a10 + v27;
  *a10 = v30;
  v31 = 2 * v14;
  if (v22 > v14)
  {
    v32 = (v13 + v31);
    v33 = 3;
    do
    {
      v35 = v23;
      v23 = (-(*v32 & 1) ^ (*v32 >> 1)) + (*v32 & 1);
      v36 = v23 - v35;
      if (v36)
      {
        *v10 = ++v24;
        v37 = v33 < 0;
        if (v33 < 0)
        {
          v33 = -v33;
        }

        if (v37)
        {
          v38 = -v36;
        }

        else
        {
          v38 = v36;
        }

        if (v33 >= 3)
        {
          v33 = 3;
        }

        v39 = EntropyCode::levelDifferenceCodeBook[v33];
        if (v38 >= 0)
        {
          v40 = v38;
        }

        else
        {
          v40 = -v38;
        }

        v41 = 2 * v40 + (v38 >> 31);
        if (v41 > 0x3FF)
        {
          v42 = RiceExpComboCodeCatalog[v39];
          v34 = (v42 & 3) + ((v42 >> 2) & 7 ^ 0x3F) - 2 * __clz((~(v42 & 3) << (v42 >> 5)) + v41 + (1 << ((v42 >> 2) & 7))) + 1;
        }

        else
        {
          v34 = RiceExpComboCodeCodewordLengthTables[1024 * v39 + v41];
        }
      }

      else
      {
        if (v33 < 0)
        {
          v33 = -v33;
        }

        if (v33 >= 3)
        {
          v33 = 3;
        }

        v34 = RiceExpComboCodeCodewordLengthTables[1024 * EntropyCode::levelDifferenceCodeBook[v33]];
      }

      v30 += v34;
      *a10 = v30;
      v32 = (v32 + v31);
      v33 = v36;
    }

    while (v32 < v29);
  }

  v43 = a10[1];
  v44 = a10[5];
  *v115 = v43 + v30 - v44;
  *v12 = 0;
  if (v15 <= 3)
  {
    v87 = 0u;
    v88 = 0;
    v89 = 2u;
    v90 = 4u;
    v68 = 0uLL;
    v91 = 1;
    v64 = 0uLL;
    while (1)
    {
      v93 = *(a9 + v91);
      if (v93 < v22)
      {
        break;
      }

      v92 = v87;
LABEL_56:
      ++v91;
      v87 = v92;
      if (v91 == 64)
      {
        goto LABEL_70;
      }
    }

    v94 = (v13 + 2 * v93);
    while (1)
    {
      while (1)
      {
        v95 = *v94;
        if (*v94)
        {
          break;
        }

        v92 = (v87 + 1);
        v94 = (v94 + v31);
        LODWORD(v87) = v87 + 1;
        if (v94 >= v29)
        {
          goto LABEL_56;
        }
      }

      v96 = EntropyCode::runCodeBook[v90];
      if (v87 < 0x400)
      {
        v98 = RiceExpComboCodeCodewordLengthTables[1024 * v96 + (v87 & 0x3FF)];
        v99 = v95 >> 1;
        v100 = v99 - 1;
        v101 = EntropyCode::levelCodeBook[v89];
        if (v99 - 1 >= 0x400)
        {
LABEL_65:
          v103 = RiceExpComboCodeCatalog[v101];
          v104 = v103 >> 5;
          v105 = (v103 & 3) + 1;
          v106 = v105 << (v103 >> 5);
          v107 = ((v103 >> 2) & 7 ^ 0x3F) + v105 - 2 * __clz(v100 - v106 + (1 << ((v103 >> 2) & 7)));
          v108 = v104 + (v100 >> v104);
          if (v100 < v106)
          {
            v102 = v108 + 1;
          }

          else
          {
            v102 = v107;
          }

          goto LABEL_68;
        }
      }

      else
      {
        v97 = RiceExpComboCodeCatalog[v96];
        v98 = (v97 & 3) + ((v97 >> 2) & 7 ^ 0x3F) - 2 * __clz((~(v97 & 3) << (v97 >> 5)) + v87 + (1 << ((v97 >> 2) & 7))) + 1;
        v99 = v95 >> 1;
        v100 = v99 - 1;
        v101 = EntropyCode::levelCodeBook[v89];
        if (v99 - 1 >= 0x400)
        {
          goto LABEL_65;
        }
      }

      v102 = RiceExpComboCodeCodewordLengthTables[1024 * v101 + (v100 & 0x3FF)];
LABEL_68:
      v92 = 0;
      v30 += v98 + v102 + 1;
      *a10 = v30;
      v88 += v98;
      *v12 = v88;
      v109 = vdupq_n_s32(v99);
      v68 = vaddq_s32(v68, vcgtq_u32(v109, xmmword_2953CB990));
      v64 = vaddq_s32(v64, vcgtq_u32(v109, xmmword_2953CB9A0));
      v89 = v99;
      v90 = v87;
      v94 = (v94 + v31);
      LODWORD(v87) = 0;
      if (v94 >= v29)
      {
        goto LABEL_56;
      }
    }
  }

  v45 = 0;
  v46 = a9 + 64;
  v47 = __clz(v15) ^ 0x1F;
  do
  {
    v48 = 2 * (*(v46 + v45 + 3) << v47);
    v49 = 2 * (*(v46 + v45 + 2) << v47);
    v50 = 2 * (*(v46 + v45 + 1) << v47);
    v51 = 2 * (*(v46 + v45) << v47);
    v52 = v13;
    do
    {
      v16.i64[0] = *v52;
      v17.i64[0] = *(v52 + 2 * v14);
      v18.i64[0] = *(v52 + 4 * v14);
      v19.i64[0] = *(v52 + 4 * v14 + v31);
      v53 = vzip1q_s16(v16, v17);
      v17 = vzip1q_s16(v18, v19);
      v18 = vzip1q_s32(v53, v17);
      *&v116[v51 + 256] = v18.i64[0];
      *&v116[v50 + 256] = v18.i64[1];
      v16 = vzip2q_s32(v53, v17);
      *&v116[v49 + 256] = v16.i64[0];
      *&v116[v48 + 256] = v16.i64[1];
      v48 += 8;
      v49 += 8;
      v50 += 8;
      v51 += 8;
      v52 += v14;
    }

    while (v52 < v29);
    ++v13;
    v54 = v45 >= 0x3C;
    v45 += 4;
  }

  while (!v54);
  v55 = 0;
  v56 = 0;
  v57 = v15 << 6;
  do
  {
    v58 = vandq_s8(vceqzq_s8(vqmovn_high_s16(vqmovn_s16(*&v116[16 * v55 + 256]), *&v116[16 * v55 + 272])), xmmword_2953CB9B0);
    v59 = vaddv_s8(*v58.i8);
    v58.i64[0] = vextq_s8(v58, v58, 8uLL).u64[0];
    v58.i8[0] = vaddv_s8(*v58.i8);
    *&v116[v55] = ~(v59 | (v58.i16[0] << 8));
    v56 += 16;
    v55 += 2;
  }

  while (v56 < v57);
  v60 = 0;
  v61 = &v116[4 * (v15 >> 5)];
  v62 = *v61 >> v15;
  v63 = 32 - (v15 & 0x1F);
  v64 = 0uLL;
  v65 = 4u;
  v66 = 2u;
  v67 = v15;
  v68 = 0uLL;
  if (!v62)
  {
    goto LABEL_50;
  }

LABEL_40:
  LODWORD(v69) = v67;
  do
  {
    v77 = __clz(__rbit32(v62));
    v78 = v69 + v77;
    v79 = (v78 - v15);
    v80 = EntropyCode::runCodeBook[v65];
    if (v79 < 0x400)
    {
      v82 = RiceExpComboCodeCodewordLengthTables[1024 * v80 + (v79 & 0x3FF)];
      v83 = *&v116[2 * v78 + 256] >> 1;
      v84 = v83 - 1;
      v85 = EntropyCode::levelCodeBook[v66];
      if ((v83 - 1) < 0x400)
      {
LABEL_49:
        v74 = RiceExpComboCodeCodewordLengthTables[1024 * v85 + (v84 & 0x3FF)];
        goto LABEL_44;
      }
    }

    else
    {
      v81 = RiceExpComboCodeCatalog[v80];
      v82 = (v81 & 3) + ((v81 >> 2) & 7 ^ 0x3F) - 2 * __clz((~(v81 & 3) << (v81 >> 5)) + v79 + (1 << ((v81 >> 2) & 7))) + 1;
      v83 = *&v116[2 * v78 + 256] >> 1;
      v84 = v83 - 1;
      v85 = EntropyCode::levelCodeBook[v66];
      if ((v83 - 1) < 0x400)
      {
        goto LABEL_49;
      }
    }

    v70 = RiceExpComboCodeCatalog[v85];
    v71 = (v70 & 3) + 1;
    v72 = v71 << (v70 >> 5);
    v73 = ((v70 >> 2) & 7 ^ 0x3F) + v71 - 2 * __clz(v84 - v72 + (1 << ((v70 >> 2) & 7)));
    if (v84 < v72)
    {
      v74 = (v70 >> 5) + (v84 >> (v70 >> 5)) + 1;
    }

    else
    {
      v74 = v73;
    }

LABEL_44:
    v75 = v62 >> v77;
    v69 = (v78 + 1);
    v62 = v62 >> v77 >> 1;
    v63 += ~v77;
    v30 += v82 + v74 + 1;
    *a10 = v30;
    v60 += v82;
    *v12 = v60;
    v76 = vdupq_n_s32(v83);
    v68 = vaddq_s32(v68, vcgtq_u32(v76, xmmword_2953CB990));
    LODWORD(v65) = v79;
    v64 = vaddq_s32(v64, vcgtq_u32(v76, xmmword_2953CB9A0));
    LODWORD(v66) = v83;
    LODWORD(v15) = v69;
    v67 = v69;
  }

  while (v75 > 1);
  while (1)
  {
    v67 += v63;
    if (v67 >= v57)
    {
      break;
    }

    v86 = v61[1];
    ++v61;
    v62 = v86;
    v63 = 32;
    v15 = v69;
    v66 = v83;
    v65 = v79;
    if (v86)
    {
      goto LABEL_40;
    }

LABEL_50:
    v69 = v15;
    v83 = v66;
    v79 = v65;
  }

LABEL_70:
  v110 = vnegq_s32(v68);
  v110.i32[1] = vdupq_lane_s32(*v110.i8, 1).u32[0];
  v111 = vnegq_s32(v64);
  v111.i32[1] = vdupq_lane_s32(*v111.i8, 1).u32[0];
  *v11 = v110;
  v11[1] = v111;
  *v114 = v43 - v44 + v30 - *v115;
  *a10 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v112 = *MEMORY[0x29EDCA608];
  return *v111.i64;
}

int32x4_t *convertV210ToV216(int32x4_t *result, int a2, unsigned __int8 *a3, int a4, int a5, int a6)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2 >= 16 * ((a5 + 5) / 6) && a6 >= 1)
  {
    v8 = 0;
    v9 = vdupq_n_s64(0xFFC00000FFC0uLL);
    do
    {
      v10 = 0;
      v11 = a5;
      v12 = a3;
      v13 = result;
      while (1)
      {
        if (v11 >= 6)
        {
          goto LABEL_9;
        }

        if (v11 <= 0)
        {
          break;
        }

        v10 = v12;
        v12 = v24;
LABEL_9:
        v14 = *v13++;
        v15 = vandq_s8(vshlq_n_s32(v14, 6uLL), v9);
        v16 = vandq_s8(vshrq_n_u32(v14, 4uLL), v9);
        v17 = vandq_s8(vshrq_n_u32(v14, 0xEuLL), v9);
        v18 = vorrq_s8(v15, vextq_s8(0, v16, 0xEuLL));
        v19 = vorrq_s8(v17, vextq_s8(v15, 0, 2uLL));
        v20 = vorrq_s8(v16, vextq_s8(0, v17, 0xEuLL));
        *&v21 = vzip1q_s32(v18, v19).u64[0];
        *(&v21 + 1) = vzip2q_s32(vzip1q_s32(v20, v9), v18).u64[0];
        *v12 = v21;
        *(v12 + 2) = vzip2q_s32(v19, vdupq_laneq_s32(v20, 3)).u64[0];
        v12 += 24;
        v11 -= 6;
      }

      if (v10 && v11 >= -5)
      {
        v22 = 0;
        do
        {
          *&v10[4 * v22] = v24[v22];
        }

        while (v22++ < (v11 + 5));
      }

      result = (result + a2);
      a3 += a4;
      ++v8;
    }

    while (v8 != a6);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t encodeAlphaFromInt4444<unsigned char,(ByteOrder)0,false>(uint64_t a1, int a2, _BYTE *a3, int a4, int a5, int a6, int a7, _DWORD *a8, int a9)
{
  v9 = (a1 + a9);
  v10 = 8;
  if (a4 < 8)
  {
    v10 = a4;
  }

  v11 = 8 * v10;
  v12 = 8 * (a4 - v10);
  LODWORD(v13) = *v9;
  if (a7 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = a5 - 1;
    v18 = v9 + 4;
    v19 = 0xFFFFFFFFLL;
    v20 = 255;
    v21 = *v9;
    v22 = v11;
    while (v17 < 1)
    {
      v13 = v21;
LABEL_5:
      v14 += a6;
      v18 = &v9[a2];
      v21 = v13;
      v17 = a5;
      v9 = v18;
      if (a7-- <= 1)
      {
        goto LABEL_34;
      }
    }

    while (1)
    {
      v13 = *v18;
      if (v21 == v13)
      {
        ++v14;
        v13 = v21;
        v21 = v19;
      }

      else
      {
        v25 = v21 - v19;
        v26 = ((v25 >> 31) ^ v25) + ~(v25 >> 31);
        v27 = __PAIR64__(v26, v25) >> 31;
        v28 = v25 | 0x100;
        if (v26 >= 8)
        {
          v29 = 9;
        }

        else
        {
          v29 = 5;
        }

        if (v26 >= 8)
        {
          v30 = v28;
        }

        else
        {
          v30 = v27;
        }

        if (v14 <= 31)
        {
          v34 = &runVLCTable + 2 * v14;
          v35 = *v34;
          v20 &= v21;
          v31 = (v35 + v29);
          v32 = (v30 << v35) | v34[1];
          v33 = v31 - v22;
          if (v31 >= v22)
          {
LABEL_19:
            if (v12 < 0x40)
            {
              if (v22 + v12 >= v31)
              {
                if (v12)
                {
                  v14 = 0;
                  *a3 = bswap64((v32 >> v33) | (v15 << v22));
                  a3 += 8;
                  v15 = ~(-1 << v33) & v32;
                  v16 += 64;
                  v22 = v12 - v33;
                  v11 = v12;
                  v12 = 0;
                }

                else
                {
                  v22 = 0;
                  v14 = 0;
                  v15 = (v15 << v31) | v32;
                }
              }

              else
              {
                v36 = v11 - v22;
                v15 <<= -v36;
                v37 = v36 + 7;
                if ((v37 & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v11 = -(v37 & 0xFFFFFFFFFFFFFFF8);
                  do
                  {
                    *a3++ = HIBYTE(v15);
                    v16 += 8;
                    v15 <<= 8;
                    v11 += 8;
                  }

                  while (v11);
                }

                else
                {
                  v11 = 0;
                }

                v12 = 0;
                v22 = 0;
                v14 = 0;
              }
            }

            else
            {
              v14 = 0;
              *a3 = bswap64((v32 >> v33) | (v15 << v22));
              a3 += 8;
              v16 += 64;
              v22 = v11 - v33;
              v12 -= 64;
              v15 = ~(-1 << v33) & v32;
            }

            goto LABEL_9;
          }
        }

        else
        {
          v20 &= v21;
          v31 = (v29 + 16);
          v32 = (v30 << 16) | v14;
          v33 = v31 - v22;
          if (v31 >= v22)
          {
            goto LABEL_19;
          }
        }

        v14 = 0;
        v15 = (v15 << v31) | v32;
        v22 -= v31;
      }

LABEL_9:
      v19 = v21;
      v18 += 4;
      v21 = v13;
      v24 = __OFSUB__(v17--, 1);
      if ((v17 < 0) ^ v24 | (v17 == 0))
      {
        goto LABEL_5;
      }
    }
  }

  v16 = 0;
  v15 = 0;
  v14 = 0;
  v20 = 255;
  LODWORD(v19) = -1;
  v22 = v11;
LABEL_34:
  HIDWORD(v39) = (((v13 - v19) >> 31) ^ (v13 - v19)) + ~((v13 - v19) >> 31);
  LODWORD(v39) = v13 - v19;
  v38 = v39 >> 31;
  if (HIDWORD(v39) >= 8)
  {
    v40 = 9;
  }

  else
  {
    v40 = 5;
  }

  if ((((v13 - v19) >> 31) ^ (v13 - v19)) + ~((v13 - v19) >> 31) >= 8)
  {
    v38 = (v13 - v19) | 0x100;
  }

  if (v14 <= 31)
  {
    v44 = &runVLCTable + 2 * v14;
    v45 = *v44;
    v46 = v44[1];
    v41 = (v45 + v40);
    v42 = (v38 << v45) | v46;
    v43 = v41 - v22;
    if (v41 >= v22)
    {
      goto LABEL_44;
    }

LABEL_43:
    v47 = (v15 << v41) | v42;
    goto LABEL_55;
  }

  v41 = (v40 + 16);
  v42 = (v38 << 16) | v14;
  v43 = v41 - v22;
  if (v41 < v22)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (v12 >= 0x40)
  {
    v48 = v42 >> v43;
    v47 = ~(-1 << v43) & v42;
    *a3 = bswap64(v48 | (v15 << v22));
    a3 += 8;
    v16 += 64;
    v43 -= v11;
    goto LABEL_55;
  }

  if (v22 + v12 < v41)
  {
    v49 = v11 - v22;
    v47 = v15 << -v49;
    v50 = v49 + 7;
    if ((v50 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v11 = -(v50 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        *a3++ = HIBYTE(v47);
        v16 += 8;
        v47 <<= 8;
        v11 += 8;
      }

      while (v11);
    }

    else
    {
      v11 = 0;
    }

    v43 = 0;
    goto LABEL_55;
  }

  if (!v12)
  {
    v43 = 0;
    goto LABEL_43;
  }

  v51 = v42 >> v43;
  v47 = ~(-1 << v43) & v42;
  *a3 = bswap64(v51 | (v15 << v22));
  a3 += 8;
  v16 += 64;
  v43 -= v12;
  v11 = v12;
LABEL_55:
  v52 = v43 + v11;
  v53 = v52 + 7;
  if (((v52 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v54 = v47 << -v52;
    v55 = -(v53 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      *a3++ = HIBYTE(v54);
      v16 += 8;
      v54 <<= 8;
      v55 += 8;
    }

    while (v55);
  }

  *a8 = (v20 & v13) == 255;
  return (v16 + 7) >> 3;
}

unint64_t encodeAlphaFromInt4444<unsigned char,(ByteOrder)0,true>(uint64_t a1, int a2, _BYTE *a3, int a4, int a5, int a6, int a7, _DWORD *a8, int a9)
{
  v9 = (a1 + a9);
  v10 = 8;
  if (a4 < 8)
  {
    v10 = a4;
  }

  v11 = 8 * v10;
  v12 = 8 * (a4 - v10);
  LODWORD(v13) = convertFromV408[*v9];
  if (a7 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = a5 - 1;
    v18 = v9 + 4;
    v19 = a2;
    v20 = 0xFFFFFFFFLL;
    v21 = 255;
    v22 = convertFromV408[*v9];
    v23 = v11;
    while (v17 < 1)
    {
      v13 = v22;
LABEL_5:
      v14 += a6;
      v18 = &v9[v19];
      v22 = v13;
      v17 = a5;
      v9 += v19;
      if (a7-- <= 1)
      {
        goto LABEL_34;
      }
    }

    while (1)
    {
      v13 = convertFromV408[*v18];
      if (v22 == v13)
      {
        ++v14;
        v13 = v22;
        v22 = v20;
      }

      else
      {
        v26 = v22 - v20;
        v27 = ((v26 >> 31) ^ v26) + ~(v26 >> 31);
        v28 = __PAIR64__(v27, v26) >> 31;
        v29 = v26 | 0x100;
        if (v27 >= 8)
        {
          v30 = 9;
        }

        else
        {
          v30 = 5;
        }

        if (v27 >= 8)
        {
          v31 = v29;
        }

        else
        {
          v31 = v28;
        }

        if (v14 <= 31)
        {
          v35 = &runVLCTable + 2 * v14;
          v36 = *v35;
          v21 &= v22;
          v32 = (v36 + v30);
          v33 = (v31 << v36) | v35[1];
          v34 = v32 - v23;
          if (v32 >= v23)
          {
LABEL_19:
            if (v12 < 0x40)
            {
              if (v23 + v12 >= v32)
              {
                if (v12)
                {
                  v14 = 0;
                  *a3 = bswap64((v33 >> v34) | (v15 << v23));
                  a3 += 8;
                  v15 = ~(-1 << v34) & v33;
                  v16 += 64;
                  v23 = v12 - v34;
                  v11 = v12;
                  v12 = 0;
                }

                else
                {
                  v23 = 0;
                  v14 = 0;
                  v15 = (v15 << v32) | v33;
                }
              }

              else
              {
                v37 = v11 - v23;
                v15 <<= -v37;
                v38 = v37 + 7;
                if ((v38 & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v11 = -(v38 & 0xFFFFFFFFFFFFFFF8);
                  do
                  {
                    *a3++ = HIBYTE(v15);
                    v16 += 8;
                    v15 <<= 8;
                    v11 += 8;
                  }

                  while (v11);
                }

                else
                {
                  v11 = 0;
                }

                v12 = 0;
                v23 = 0;
                v14 = 0;
              }
            }

            else
            {
              v14 = 0;
              *a3 = bswap64((v33 >> v34) | (v15 << v23));
              a3 += 8;
              v16 += 64;
              v23 = v11 - v34;
              v12 -= 64;
              v15 = ~(-1 << v34) & v33;
            }

            goto LABEL_9;
          }
        }

        else
        {
          v21 &= v22;
          v32 = (v30 + 16);
          v33 = (v31 << 16) | v14;
          v34 = v32 - v23;
          if (v32 >= v23)
          {
            goto LABEL_19;
          }
        }

        v14 = 0;
        v15 = (v15 << v32) | v33;
        v23 -= v32;
      }

LABEL_9:
      v20 = v22;
      v18 += 4;
      v22 = v13;
      v25 = __OFSUB__(v17--, 1);
      if ((v17 < 0) ^ v25 | (v17 == 0))
      {
        goto LABEL_5;
      }
    }
  }

  v16 = 0;
  v15 = 0;
  v14 = 0;
  v21 = 255;
  LODWORD(v20) = -1;
  v23 = v11;
LABEL_34:
  HIDWORD(v40) = (((v13 - v20) >> 31) ^ (v13 - v20)) + ~((v13 - v20) >> 31);
  LODWORD(v40) = v13 - v20;
  v39 = v40 >> 31;
  if (HIDWORD(v40) >= 8)
  {
    v41 = 9;
  }

  else
  {
    v41 = 5;
  }

  if ((((v13 - v20) >> 31) ^ (v13 - v20)) + ~((v13 - v20) >> 31) >= 8)
  {
    v39 = (v13 - v20) | 0x100;
  }

  if (v14 <= 31)
  {
    v45 = &runVLCTable + 2 * v14;
    v46 = *v45;
    v47 = v45[1];
    v42 = (v46 + v41);
    v43 = (v39 << v46) | v47;
    v44 = v42 - v23;
    if (v42 >= v23)
    {
      goto LABEL_44;
    }

LABEL_43:
    v48 = (v15 << v42) | v43;
    goto LABEL_55;
  }

  v42 = (v41 + 16);
  v43 = (v39 << 16) | v14;
  v44 = v42 - v23;
  if (v42 < v23)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (v12 >= 0x40)
  {
    v49 = v43 >> v44;
    v48 = ~(-1 << v44) & v43;
    *a3 = bswap64(v49 | (v15 << v23));
    a3 += 8;
    v16 += 64;
    v44 -= v11;
    goto LABEL_55;
  }

  if (v23 + v12 < v42)
  {
    v50 = v11 - v23;
    v48 = v15 << -v50;
    v51 = v50 + 7;
    if ((v51 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v11 = -(v51 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        *a3++ = HIBYTE(v48);
        v16 += 8;
        v48 <<= 8;
        v11 += 8;
      }

      while (v11);
    }

    else
    {
      v11 = 0;
    }

    v44 = 0;
    goto LABEL_55;
  }

  if (!v12)
  {
    v44 = 0;
    goto LABEL_43;
  }

  v52 = v43 >> v44;
  v48 = ~(-1 << v44) & v43;
  *a3 = bswap64(v52 | (v15 << v23));
  a3 += 8;
  v16 += 64;
  v44 -= v12;
  v11 = v12;
LABEL_55:
  v53 = v44 + v11;
  v54 = v53 + 7;
  if (((v53 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v55 = v48 << -v53;
    v56 = -(v54 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      *a3++ = HIBYTE(v55);
      v16 += 8;
      v55 <<= 8;
      v56 += 8;
    }

    while (v56);
  }

  *a8 = (v21 & v13) == 255;
  return (v16 + 7) >> 3;
}

unint64_t encodeAlphaFromInt4444<unsigned short,(ByteOrder)2,false>(uint64_t a1, int a2, _BYTE *a3, int a4, int a5, int a6, int a7, _DWORD *a8, int a9)
{
  v9 = (a1 + 2 * a9);
  v10 = 8;
  if (a4 < 8)
  {
    v10 = a4;
  }

  v31 = 0;
  v32 = 8 * v10;
  v33 = 8 * (a4 - v10);
  v34 = a3;
  v35 = 0;
  v36 = 8 * v10;
  LODWORD(v11) = *v9;
  if (a7 < 1)
  {
    v15 = 0;
    v20 = 0xFFFF;
    v19 = -1;
  }

  else
  {
    v12 = a7;
    v15 = 0;
    v16 = a5 - 1;
    v17 = v9 + 4;
    v18 = a2;
    v19 = -1;
    v20 = 0xFFFF;
    v21 = *v9;
    do
    {
      if (v16 < 1)
      {
        v11 = v21;
      }

      else
      {
        v23 = v16 + 1;
        do
        {
          while (1)
          {
            v11 = *v17;
            if (v21 != v11)
            {
              break;
            }

            v15 = (v15 + 1);
            v11 = v21;
            v17 += 4;
            if (--v23 <= 1)
            {
              goto LABEL_6;
            }
          }

          v20 &= v21;
          writePair<unsigned short>(v15, v21 - v19, &v31);
          v15 = 0;
          v19 = v21;
          v21 = v11;
          v17 += 4;
          --v23;
        }

        while (v23 > 1);
      }

LABEL_6:
      v15 = (v15 + a6);
      v17 = (v9 + v18);
      v21 = v11;
      v16 = a5;
      v9 = (v9 + v18);
    }

    while (v12-- > 1);
  }

  writePair<unsigned short>(v15, v11 - v19, &v31);
  v24 = v31;
  v25 = v32 - v36 + 7;
  if ((v25 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v26 = v34;
    v27 = v35 << (v36 - v32);
    v28 = -(v25 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      *v26++ = HIBYTE(v27);
      v24 += 8;
      v27 <<= 8;
      v28 += 8;
    }

    while (v28);
  }

  *a8 = (v20 & v11) == 0xFFFF;
  return (v24 + 7) >> 3;
}

unint64_t encodeAlphaFromInt4444<unsigned short,(ByteOrder)1,false>(uint64_t a1, int a2, _BYTE *a3, int a4, int a5, int a6, int a7, _DWORD *a8, int a9)
{
  v9 = (a1 + 2 * a9);
  v10 = 8;
  if (a4 < 8)
  {
    v10 = a4;
  }

  v31 = 0;
  v32 = 8 * v10;
  v33 = 8 * (a4 - v10);
  v34 = a3;
  v35 = 0;
  v36 = 8 * v10;
  v11 = bswap32(*v9) >> 16;
  if (a7 < 1)
  {
    v15 = 0;
    v20 = 0xFFFF;
    v19 = -1;
  }

  else
  {
    v12 = a7;
    v15 = 0;
    v16 = a5 - 1;
    v17 = v9 + 4;
    v18 = a2;
    v19 = -1;
    v20 = 0xFFFF;
    v21 = v11;
    do
    {
      if (v16 < 1)
      {
        v11 = v21;
      }

      else
      {
        v23 = v16 + 1;
        do
        {
          while (1)
          {
            v11 = bswap32(*v17) >> 16;
            if (v21 != v11)
            {
              break;
            }

            v15 = (v15 + 1);
            v11 = v21;
            v17 += 4;
            if (--v23 <= 1)
            {
              goto LABEL_6;
            }
          }

          v20 &= v21;
          writePair<unsigned short>(v15, v21 - v19, &v31);
          v15 = 0;
          v19 = v21;
          v21 = v11;
          v17 += 4;
          --v23;
        }

        while (v23 > 1);
      }

LABEL_6:
      v15 = (v15 + a6);
      v17 = (v9 + v18);
      v21 = v11;
      v16 = a5;
      v9 = (v9 + v18);
    }

    while (v12-- > 1);
  }

  writePair<unsigned short>(v15, v11 - v19, &v31);
  v24 = v31;
  v25 = v32 - v36 + 7;
  if ((v25 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v26 = v34;
    v27 = v35 << (v36 - v32);
    v28 = -(v25 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      *v26++ = HIBYTE(v27);
      v24 += 8;
      v27 <<= 8;
      v28 += 8;
    }

    while (v28);
  }

  *a8 = (v20 & v11) == 0xFFFF;
  return (v24 + 7) >> 3;
}

unint64_t encodeAlphaFromFloat4444<(ByteOrder)3>(uint64_t a1, int a2, _BYTE *a3, int a4, int a5, int a6, int a7, _DWORD *a8, int a9)
{
  v10 = (a1 + 4 * a9);
  v11 = 8;
  if (a4 < 8)
  {
    v11 = a4;
  }

  v31 = 0;
  v32 = 8 * v11;
  v33 = 8 * (a4 - v11);
  v34 = a3;
  v35 = 0;
  v36 = 8 * v11;
  LODWORD(v9) = vcvtms_s32_f32(fminf(fmaxf(*v10 * 65535.0, 0.0), 65535.0) + 0.5);
  if (a7 < 1)
  {
    v14 = 0;
    v19 = 0xFFFF;
    v18 = -1;
  }

  else
  {
    v12 = a7;
    v14 = 0;
    v15 = a5 - 1;
    v16 = v10 + 4;
    v17 = a2;
    v18 = -1;
    v19 = 0xFFFF;
    v20 = v9;
    do
    {
      if (v15 < 1)
      {
        v9 = v20;
      }

      else
      {
        v22 = v15 + 1;
        do
        {
          while (1)
          {
            LODWORD(v9) = vcvtms_s32_f32(fminf(fmaxf(*v16 * 65535.0, 0.0), 65535.0) + 0.5);
            if (v20 != v9)
            {
              break;
            }

            v14 = (v14 + 1);
            v9 = v20;
            v16 += 4;
            if (--v22 <= 1)
            {
              goto LABEL_6;
            }
          }

          v19 &= v20;
          writePair<unsigned short>(v14, v20 - v18, &v31);
          v14 = 0;
          v18 = v20;
          v20 = v9;
          v16 += 4;
          --v22;
        }

        while (v22 > 1);
      }

LABEL_6:
      v14 = (v14 + a6);
      v16 = (v10 + v17);
      v20 = v9;
      v15 = a5;
      v10 = (v10 + v17);
    }

    while (v12-- > 1);
  }

  writePair<unsigned short>(v14, v9 - v18, &v31);
  v23 = v31;
  v24 = v32 - v36 + 7;
  if ((v24 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v25 = v34;
    v26 = v35 << (v36 - v32);
    v27 = -(v24 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      *v25++ = HIBYTE(v26);
      v23 += 8;
      v26 <<= 8;
      v27 += 8;
    }

    while (v27);
  }

  *a8 = (v19 & v9) == 0xFFFF;
  return (v23 + 7) >> 3;
}

uint64_t AlphaEncoder::AlphaEncoder(uint64_t result, int a2, int a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (a2)
  {
    if (a3 <= 1916036715)
    {
      if (a3 <= 1647719541)
      {
        if (a3 != 32)
        {
          if (a3 != 1647719521)
          {
            return result;
          }

          goto LABEL_17;
        }

LABEL_16:
        *result = 0x200000001;
        v4 = encodeAlphaFromInt4444<unsigned char,(ByteOrder)0,false>;
LABEL_20:
        *(result + 8) = v4;
        return result;
      }

      if (a3 == 1647719542)
      {
LABEL_17:
        *result = 0x300000002;
        v4 = encodeAlphaFromInt4444<unsigned short,(ByteOrder)1,false>;
        goto LABEL_20;
      }

      v3 = 1916022840;
LABEL_15:
      if (a3 != v3)
      {
        return result;
      }

      goto LABEL_16;
    }

    if (a3 > 2033463351)
    {
      if (a3 == 2033463606)
      {
        *result = 0x300000002;
        v4 = encodeAlphaFromInt4444<unsigned short,(ByteOrder)2,false>;
        goto LABEL_20;
      }

      v3 = 2033463352;
      goto LABEL_15;
    }

    if (a3 == 1916036716)
    {
      *result = 0x300000002;
      v4 = encodeAlphaFromFloat4444<(ByteOrder)3>;
      goto LABEL_20;
    }

    if (a3 == 1983131704)
    {
      *result = 0x200000001;
      *(result + 8) = encodeAlphaFromInt4444<unsigned char,(ByteOrder)0,true>;
      *(result + 16) = 3;
    }
  }

  return result;
}

uint64_t writePair<unsigned short>(uint64_t result, int a2, void *a3)
{
  HIDWORD(v4) = ((a2 >> 31) ^ a2) + ~(a2 >> 31);
  LODWORD(v4) = a2;
  v3 = v4 >> 31;
  LODWORD(v5) = a2 | 0x10000;
  if (HIDWORD(v4) >= 0x40)
  {
    v6 = 17;
  }

  else
  {
    v6 = 8;
  }

  if (((a2 >> 31) ^ a2) + ~(a2 >> 31) >= 0x40)
  {
    v5 = v5;
  }

  else
  {
    v5 = v3;
  }

  if (result <= 31)
  {
    v14 = &runVLCTable + 2 * result;
    v7 = *v14;
    result = v14[1];
    v8 = v7 + v6;
    v9 = a3[5];
    if (v7 + v6 < 0x21)
    {
LABEL_9:
      result = (v5 << v7) | result;
      v10 = v8;
      v11 = result;
      v12 = v9 >= v8;
      v13 = v9 - v8;
      if (v13 == 0 || !v12)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v7 = 16;
    v8 = v6 + 16;
    v9 = a3[5];
    if ((v6 + 16) < 0x21)
    {
      goto LABEL_9;
    }
  }

  v15 = v6 - v9;
  if (v6 < v9)
  {
    a3[4] = (a3[4] << v6) | v5;
    v9 -= v6;
    v10 = v7;
    v11 = result;
    v13 = v9 - v10;
    if (v9 <= v10)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  v16 = a3[2];
  v17 = v16 - 64;
  if (v16 >= 0x40)
  {
    v18 = a3[3];
    v19 = ~(-1 << v15) & v5;
    *v18 = bswap64((a3[4] << v9) | (v5 >> v15));
    v20 = a3[1];
    *a3 += 64;
    a3[2] = v17;
    a3[3] = v18 + 1;
    a3[4] = v19;
    v9 = v20 - v15;
    v10 = v7;
    v11 = result;
    v13 = v9 - v10;
    if (v9 <= v10)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if (v16 + v9 >= v6)
  {
    if (v16)
    {
      v31 = a3[3];
      *v31 = bswap64((a3[4] << v9) | (v5 >> v15));
      *a3 += 64;
      a3[1] = v16;
      a3[2] = 0;
      a3[3] = v31 + 1;
      a3[4] = ~(-1 << v15) & v5;
      v9 = v16 - v15;
      v10 = v7;
      v11 = result;
      v12 = v16 - v15 >= v10;
      v13 = v16 - v15 - v10;
      if (v13 == 0 || !v12)
      {
LABEL_18:
        v21 = a3[2];
        v22 = v21 - 64;
        if (v21 >= 0x40)
        {
LABEL_19:
          v23 = v10 - v9;
          v24 = a3[3];
          *v24 = bswap64((a3[4] << v9) | (v11 >> v23));
          v25 = a3[1];
          *a3 += 64;
          a3[2] = v22;
          a3[3] = v24 + 1;
          a3[4] = v11 & ~(-1 << v23);
          a3[5] = v25 - v23;
          return result;
        }

        goto LABEL_31;
      }

LABEL_28:
      a3[4] = (a3[4] << v10) | v11;
      a3[5] = v13;
      return result;
    }

    a3[4] = (a3[4] << v6) | v5;
  }

  else
  {
    v26 = a3[1] - v9;
    v27 = a3[4] << -v26;
    a3[4] = v27;
    v28 = v26 + 7;
    if ((v28 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v29 = -(v28 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v30 = a3[3];
        a3[3] = v30 + 1;
        *v30 = HIBYTE(v27);
        *a3 += 8;
        v27 = a3[4] << 8;
        a3[4] = v27;
        v29 += 8;
      }

      while (v29);
    }

    a3[1] = 0;
    a3[2] = 0;
  }

  v9 = 0;
  v10 = v7;
  v11 = result;
  v21 = a3[2];
  v22 = v21 - 64;
  if (v21 >= 0x40)
  {
    goto LABEL_19;
  }

LABEL_31:
  if (v21 + v9 >= v10)
  {
    if (v21)
    {
      v37 = v10 - v9;
      v38 = a3[3];
      *v38 = bswap64((a3[4] << v9) | (v11 >> v37));
      *a3 += 64;
      a3[1] = v21;
      a3[2] = 0;
      a3[3] = v38 + 1;
      a3[4] = v11 & ~(-1 << v37);
      a3[5] = v21 - v37;
    }

    else
    {
      a3[4] = (a3[4] << v10) | v11;
      a3[5] = 0;
    }
  }

  else
  {
    v32 = a3[1] - v9;
    v33 = a3[4] << -v32;
    a3[4] = v33;
    v34 = v32 + 7;
    if ((v34 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v35 = -(v34 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v36 = a3[3];
        a3[3] = v36 + 1;
        *v36 = HIBYTE(v33);
        *a3 += 8;
        v33 = a3[4] << 8;
        a3[4] = v33;
        v35 += 8;
      }

      while (v35);
    }

    a3[5] = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

int8x16_t *pixInFullMB<(PixelFormat)846624121,(ChromaFormat)2>(int8x16_t *result, int a2, uint64_t a3)
{
  v3 = 1;
  v4.i64[0] = 0x8080808080808080;
  v4.i64[1] = 0x8080808080808080;
  do
  {
    v5 = veorq_s8(*result, v4);
    v6 = *&vshrq_n_s16(v5, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v7 = veorq_s8(result[1], v4);
    v8 = vqmovun_high_s16(vqmovun_s16((*&v5 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&v7 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    *a3 = v6;
    *(a3 + 128) = *&vshrq_n_s16(v7, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    *(a3 + 512) = vshrq_n_s16(vshlq_n_s16(v8, 8uLL), 4uLL);
    *(a3 + 640) = *&vshrq_n_s16(v8, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v9 = veorq_s8(*(result + a2), v4);
    v10 = veorq_s8(*(&result[1] + a2), v4);
    v11 = *&vshrq_n_s16(v9, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v12 = vqmovun_high_s16(vqmovun_s16((*&v9 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&v10 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    *(a3 + 16) = v11;
    *(a3 + 144) = *&vshrq_n_s16(v10, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    *(a3 + 528) = vshrq_n_s16(vshlq_n_s16(v12, 8uLL), 4uLL);
    *(a3 + 656) = *&vshrq_n_s16(v12, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v13 = (result + a2 + a2);
    v14 = veorq_s8(*v13, v4);
    v15 = *&vshrq_n_s16(v14, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v16 = veorq_s8(v13[1], v4);
    v17 = vqmovun_high_s16(vqmovun_s16((*&v14 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&v16 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    *(a3 + 32) = v15;
    *(a3 + 160) = *&vshrq_n_s16(v16, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    *(a3 + 544) = vshrq_n_s16(vshlq_n_s16(v17, 8uLL), 4uLL);
    *(a3 + 672) = *&vshrq_n_s16(v17, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v18 = (v13 + a2);
    v19 = veorq_s8(*v18, v4);
    v20 = veorq_s8(v18[1], v4);
    v21 = *&vshrq_n_s16(v19, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v22 = vqmovun_high_s16(vqmovun_s16((*&v19 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&v20 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    *(a3 + 48) = v21;
    *(a3 + 176) = *&vshrq_n_s16(v20, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    *(a3 + 560) = vshrq_n_s16(vshlq_n_s16(v22, 8uLL), 4uLL);
    *(a3 + 688) = *&vshrq_n_s16(v22, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v23 = (v18 + a2);
    v24 = veorq_s8(*v23, v4);
    v25 = *&vshrq_n_s16(v24, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v26 = veorq_s8(v23[1], v4);
    v27 = vqmovun_high_s16(vqmovun_s16((*&v24 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&v26 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    *(a3 + 64) = v25;
    *(a3 + 192) = *&vshrq_n_s16(v26, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    *(a3 + 576) = vshrq_n_s16(vshlq_n_s16(v27, 8uLL), 4uLL);
    *(a3 + 704) = *&vshrq_n_s16(v27, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v28 = (v23 + a2);
    v29 = veorq_s8(*v28, v4);
    v30 = veorq_s8(v28[1], v4);
    v31 = *&vshrq_n_s16(v29, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v32 = vqmovun_high_s16(vqmovun_s16((*&v29 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&v30 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    *(a3 + 80) = v31;
    *(a3 + 208) = *&vshrq_n_s16(v30, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    *(a3 + 592) = vshrq_n_s16(vshlq_n_s16(v32, 8uLL), 4uLL);
    *(a3 + 720) = *&vshrq_n_s16(v32, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v33 = (v28 + a2);
    v34 = veorq_s8(*v33, v4);
    v35 = *&vshrq_n_s16(v34, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v36 = veorq_s8(v33[1], v4);
    v37 = vqmovun_high_s16(vqmovun_s16((*&v34 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&v36 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    *(a3 + 96) = v35;
    *(a3 + 224) = *&vshrq_n_s16(v36, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    *(a3 + 608) = vshrq_n_s16(vshlq_n_s16(v37, 8uLL), 4uLL);
    *(a3 + 736) = *&vshrq_n_s16(v37, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v38 = (v33 + a2);
    v39 = v3;
    v40 = veorq_s8(*v38, v4);
    v41 = veorq_s8(v38[1], v4);
    v42 = *&vshrq_n_s16(v40, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v43 = vqmovun_high_s16(vqmovun_s16((*&v40 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))), (*&v41 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    *(a3 + 112) = v42;
    *(a3 + 240) = *&vshrq_n_s16(v41, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    *(a3 + 624) = vshrq_n_s16(vshlq_n_s16(v43, 8uLL), 4uLL);
    *(a3 + 752) = *&vshrq_n_s16(v43, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    a3 += 256;
    result = (v38 + a2);
    v3 = 0;
  }

  while ((v39 & 1) != 0);
  return result;
}

int8x16_t *pixInFullMB<(PixelFormat)2037741171,(ChromaFormat)2>(int8x16_t *result, int a2, uint64_t a3)
{
  v3 = 1;
  v4.i64[0] = 0x8080808080808080;
  v4.i64[1] = 0x8080808080808080;
  do
  {
    v5 = veorq_s8(*result, v4);
    v6 = vshrq_n_s16(vshlq_n_s16(v5, 8uLL), 4uLL);
    v7 = veorq_s8(result[1], v4);
    v8 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(v5, 8uLL)), vshrq_n_u16(v7, 8uLL));
    *a3 = v6;
    *(a3 + 128) = vshrq_n_s16(vshlq_n_s16(v7, 8uLL), 4uLL);
    *(a3 + 512) = vshrq_n_s16(vshlq_n_s16(v8, 8uLL), 4uLL);
    *(a3 + 640) = *&vshrq_n_s16(v8, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v9 = veorq_s8(*(result + a2), v4);
    v10 = veorq_s8(*(&result[1] + a2), v4);
    v11 = vshrq_n_s16(vshlq_n_s16(v9, 8uLL), 4uLL);
    v12 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(v9, 8uLL)), vshrq_n_u16(v10, 8uLL));
    *(a3 + 16) = v11;
    *(a3 + 144) = vshrq_n_s16(vshlq_n_s16(v10, 8uLL), 4uLL);
    *(a3 + 528) = vshrq_n_s16(vshlq_n_s16(v12, 8uLL), 4uLL);
    *(a3 + 656) = *&vshrq_n_s16(v12, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v13 = (result + a2 + a2);
    v14 = veorq_s8(*v13, v4);
    v15 = vshrq_n_s16(vshlq_n_s16(v14, 8uLL), 4uLL);
    v16 = veorq_s8(v13[1], v4);
    v17 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(v14, 8uLL)), vshrq_n_u16(v16, 8uLL));
    *(a3 + 32) = v15;
    *(a3 + 160) = vshrq_n_s16(vshlq_n_s16(v16, 8uLL), 4uLL);
    *(a3 + 544) = vshrq_n_s16(vshlq_n_s16(v17, 8uLL), 4uLL);
    *(a3 + 672) = *&vshrq_n_s16(v17, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v18 = (v13 + a2);
    v19 = veorq_s8(*v18, v4);
    v20 = veorq_s8(v18[1], v4);
    v21 = vshrq_n_s16(vshlq_n_s16(v19, 8uLL), 4uLL);
    v22 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(v19, 8uLL)), vshrq_n_u16(v20, 8uLL));
    *(a3 + 48) = v21;
    *(a3 + 176) = vshrq_n_s16(vshlq_n_s16(v20, 8uLL), 4uLL);
    *(a3 + 560) = vshrq_n_s16(vshlq_n_s16(v22, 8uLL), 4uLL);
    *(a3 + 688) = *&vshrq_n_s16(v22, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v23 = (v18 + a2);
    v24 = veorq_s8(*v23, v4);
    v25 = vshrq_n_s16(vshlq_n_s16(v24, 8uLL), 4uLL);
    v26 = veorq_s8(v23[1], v4);
    v27 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(v24, 8uLL)), vshrq_n_u16(v26, 8uLL));
    *(a3 + 64) = v25;
    *(a3 + 192) = vshrq_n_s16(vshlq_n_s16(v26, 8uLL), 4uLL);
    *(a3 + 576) = vshrq_n_s16(vshlq_n_s16(v27, 8uLL), 4uLL);
    *(a3 + 704) = *&vshrq_n_s16(v27, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v28 = (v23 + a2);
    v29 = veorq_s8(*v28, v4);
    v30 = veorq_s8(v28[1], v4);
    v31 = vshrq_n_s16(vshlq_n_s16(v29, 8uLL), 4uLL);
    v32 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(v29, 8uLL)), vshrq_n_u16(v30, 8uLL));
    *(a3 + 80) = v31;
    *(a3 + 208) = vshrq_n_s16(vshlq_n_s16(v30, 8uLL), 4uLL);
    *(a3 + 592) = vshrq_n_s16(vshlq_n_s16(v32, 8uLL), 4uLL);
    *(a3 + 720) = *&vshrq_n_s16(v32, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v33 = (v28 + a2);
    v34 = veorq_s8(*v33, v4);
    v35 = vshrq_n_s16(vshlq_n_s16(v34, 8uLL), 4uLL);
    v36 = veorq_s8(v33[1], v4);
    v37 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(v34, 8uLL)), vshrq_n_u16(v36, 8uLL));
    *(a3 + 96) = v35;
    *(a3 + 224) = vshrq_n_s16(vshlq_n_s16(v36, 8uLL), 4uLL);
    *(a3 + 608) = vshrq_n_s16(vshlq_n_s16(v37, 8uLL), 4uLL);
    *(a3 + 736) = *&vshrq_n_s16(v37, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    v38 = (v33 + a2);
    v39 = v3;
    v40 = veorq_s8(*v38, v4);
    v41 = veorq_s8(v38[1], v4);
    v42 = vshrq_n_s16(vshlq_n_s16(v40, 8uLL), 4uLL);
    v43 = vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(v40, 8uLL)), vshrq_n_u16(v41, 8uLL));
    *(a3 + 112) = v42;
    *(a3 + 240) = vshrq_n_s16(vshlq_n_s16(v41, 8uLL), 4uLL);
    *(a3 + 624) = vshrq_n_s16(vshlq_n_s16(v43, 8uLL), 4uLL);
    *(a3 + 752) = *&vshrq_n_s16(v43, 4uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0);
    a3 += 256;
    result = (v38 + a2);
    v3 = 0;
  }

  while ((v39 & 1) != 0);
  return result;
}

int32x4_t *pixInFullMB<(PixelFormat)1916036716,(ChromaFormat)3>(int32x4_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = result + 8;
  v5 = vdupq_n_s32(0x457F0000u);
  v6.i64[0] = 0x700070007000700;
  v6.i64[1] = 0x700070007000700;
  v7.i64[0] = 0x800080008000800;
  v7.i64[1] = 0x800080008000800;
  v8.i64[0] = 0xF800F800F800F800;
  v8.i64[1] = 0xF800F800F800F800;
  v9 = vdupq_n_s16(0x7F0u);
  do
  {
    v10 = (a3 + v3);
    v11 = v4[-8];
    v12 = v4[-7];
    v13 = v4[-6];
    v14 = v4[-5];
    v15 = vzip1q_s32(v11, v13);
    v16 = vzip1q_s32(v12, v14);
    v17 = vzip2q_s32(v11, v13);
    v18 = vzip2q_s32(v12, v14);
    v19 = vzip1q_s32(v17, v18);
    v20 = vzip2q_s32(v17, v18);
    v21 = vcvtnq_s32_f32(vmulq_f32(vzip2q_s32(v15, v16), v5));
    v22 = vcvtnq_s32_f32(vmulq_f32(v19, v5));
    v23 = v4[-4];
    v24 = v4[-3];
    v25 = v4[-2];
    v26 = v4[-1];
    v27 = vzip1q_s32(v23, v25);
    v28 = vzip1q_s32(v24, v26);
    v29 = vzip2q_s32(v23, v25);
    v30 = vzip2q_s32(v24, v26);
    v31 = vminq_s16(vmaxq_s16(vqsubq_s16(vqmovn_high_s32(vqmovn_s32(v21), vcvtnq_s32_f32(vmulq_f32(vzip2q_s32(v27, v28), v5))), v6), v8), v9);
    v32 = vminq_s16(vmaxq_s16(vqsubq_s16(vqmovn_high_s32(vqmovn_s32(v22), vcvtnq_s32_f32(vmulq_f32(vzip1q_s32(v29, v30), v5))), v7), v8), v9);
    v33 = vminq_s16(vmaxq_s16(vqsubq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(v20, v5))), vcvtnq_s32_f32(vmulq_f32(vzip2q_s32(v29, v30), v5))), v7), v8), v9);
    v34 = v4[1];
    v35 = v4[2];
    v36 = v4[3];
    v37 = vzip1q_s32(v34, v36);
    v38 = vzip2q_s32(*v4, v35);
    v39 = vzip2q_s32(v34, v36);
    v40 = vzip1q_s32(v38, v39);
    v41 = vzip2q_s32(v38, v39);
    v42 = vmulq_f32(vzip2q_s32(vzip1q_s32(*v4, v35), v37), v5);
    v43 = vcvtnq_s32_f32(vmulq_f32(v40, v5));
    v44 = v4[4];
    v45 = v4[5];
    v46 = v4[6];
    v47 = v4[7];
    v48 = vzip1q_s32(v44, v46);
    v49 = vzip1q_s32(v45, v47);
    v50 = vzip2q_s32(v44, v46);
    v51 = vzip2q_s32(v45, v47);
    *v10 = v31;
    v10[8] = vminq_s16(vmaxq_s16(vqsubq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v42)), vcvtnq_s32_f32(vmulq_f32(vzip2q_s32(v48, v49), v5))), v6), v8), v9);
    v10[32] = v32;
    v10[64] = vminq_s16(vmaxq_s16(vqsubq_s16(vqmovn_high_s32(vqmovn_s32(v43), vcvtnq_s32_f32(vmulq_f32(vzip1q_s32(v50, v51), v5))), v7), v8), v9);
    v10[40] = v33;
    v10[72] = vminq_s16(vmaxq_s16(vqsubq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(v41, v5))), vcvtnq_s32_f32(vmulq_f32(vzip2q_s32(v50, v51), v5))), v7), v8), v9);
    v4 = (v4 + a2);
    v3 += 16;
  }

  while (v3 != 128);
  v52 = 0;
  v53 = vdupq_n_s32(0x457F0000u);
  v54.i64[0] = 0x700070007000700;
  v54.i64[1] = 0x700070007000700;
  v55.i64[0] = 0x800080008000800;
  v55.i64[1] = 0x800080008000800;
  v56.i64[0] = 0xF800F800F800F800;
  v56.i64[1] = 0xF800F800F800F800;
  do
  {
    v57 = (a3 + v52 + v3);
    v58 = v4[-8];
    v59 = v4[-7];
    v60 = v4[-6];
    v61 = v4[-5];
    v62 = vzip1q_s32(v58, v60);
    v63 = vzip1q_s32(v59, v61);
    v64 = vzip2q_s32(v58, v60);
    v65 = vzip2q_s32(v59, v61);
    v66 = vzip1q_s32(v64, v65);
    v67 = vzip2q_s32(v64, v65);
    v68 = vcvtnq_s32_f32(vmulq_f32(vzip2q_s32(v62, v63), v53));
    v69 = vcvtnq_s32_f32(vmulq_f32(v66, v53));
    v70 = v4[-4];
    v71 = v4[-3];
    v72 = v4[-2];
    v73 = v4[-1];
    v74 = vzip1q_s32(v70, v72);
    v75 = vzip1q_s32(v71, v73);
    v76 = vzip2q_s32(v70, v72);
    v77 = vzip2q_s32(v71, v73);
    v78 = vqsubq_s16(vqmovn_high_s32(vqmovn_s32(v69), vcvtnq_s32_f32(vmulq_f32(vzip1q_s32(v76, v77), v53))), v55);
    v79 = vqsubq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(v67, v53))), vcvtnq_s32_f32(vmulq_f32(vzip2q_s32(v76, v77), v53))), v55);
    v80 = vdupq_n_s16(0x7F0u);
    v81 = vminq_s16(vmaxq_s16(vqsubq_s16(vqmovn_high_s32(vqmovn_s32(v68), vcvtnq_s32_f32(vmulq_f32(vzip2q_s32(v74, v75), v53))), v54), v56), v80);
    v82 = v4[1];
    v83 = v4[2];
    v84 = v4[3];
    v85 = vzip1q_s32(v82, v84);
    v86 = vzip2q_s32(*v4, v83);
    v87 = vzip2q_s32(v82, v84);
    v88 = vzip1q_s32(v86, v87);
    v89 = vzip2q_s32(v86, v87);
    v90 = vmulq_f32(vzip2q_s32(vzip1q_s32(*v4, v83), v85), v53);
    v91 = vcvtnq_s32_f32(vmulq_f32(v88, v53));
    v92 = v4[4];
    v93 = v4[5];
    v94 = v4[6];
    v95 = v4[7];
    v96 = vzip1q_s32(v92, v94);
    v97 = vzip1q_s32(v93, v95);
    v98 = vzip2q_s32(v92, v94);
    v99 = vzip2q_s32(v93, v95);
    v57[8] = v81;
    v57[16] = vminq_s16(vmaxq_s16(vqsubq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v90)), vcvtnq_s32_f32(vmulq_f32(vzip2q_s32(v96, v97), v53))), v54), v56), v80);
    v57[40] = vminq_s16(vmaxq_s16(v78, v56), v80);
    v57[72] = vminq_s16(vmaxq_s16(vqsubq_s16(vqmovn_high_s32(vqmovn_s32(v91), vcvtnq_s32_f32(vmulq_f32(vzip1q_s32(v98, v99), v53))), v55), v56), v80);
    v57[48] = vminq_s16(vmaxq_s16(v79, v56), v80);
    v57[80] = vminq_s16(vmaxq_s16(vqsubq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(v89, v53))), vcvtnq_s32_f32(vmulq_f32(vzip2q_s32(v98, v99), v53))), v55), v56), v80);
    v52 += 16;
    v4 = (v4 + a2);
  }

  while (v52 != 128);
  return result;
}

float32x4_t *pixInFullMB<(PixelFormat)1916036716,(ChromaFormat)2>(float32x4_t *result, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = vdupq_n_s32(0x457F0000u);
  v5 = vdupq_n_s16(0x7F0u);
  v6 = result + 8;
  v7.i64[0] = 0x700070007000700;
  v7.i64[1] = 0x700070007000700;
  v8.i64[0] = 0x800080008000800;
  v8.i64[1] = 0x800080008000800;
  v9.i64[0] = 0xF800F800F800F800;
  v9.i64[1] = 0xF800F800F800F800;
  do
  {
    v10 = v6[-8];
    v10.i32[0] = v6[-7].i32[1];
    v11 = v6[-6];
    v11.i32[0] = v6[-5].i32[1];
    v12 = a3 + v3;
    v13 = v6[-4];
    v13.i32[0] = v6[-3].i32[1];
    v14 = v6[-2];
    v14.i32[0] = v6[-1].i32[1];
    v15 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(v10, v4))), vcvtnq_s32_f32(vmulq_f32(v11, v4)));
    v16 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(v13, v4))), vcvtnq_s32_f32(vmulq_f32(v14, v4)));
    v17 = vzip1q_s16(v15, v16);
    v18 = vzip2q_s16(v15, v16);
    v19 = vqtbl1q_s8(v17, xmmword_2953CBB80);
    v20 = vqtbl1q_s8(v18, xmmword_2953CBB80);
    v21 = *v6;
    v21.i32[0] = v6[1].i32[1];
    v22 = vzip2q_s16(v17, v18);
    v23 = v6[2];
    v23.i32[0] = v6[3].i32[1];
    v24 = vzip1q_s32(v19, v20);
    v25 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(v21, v4))), vcvtnq_s32_f32(vmulq_f32(v23, v4)));
    v26 = v6[4];
    v26.i32[0] = v6[5].i32[1];
    v27 = v6[6];
    v27.i32[0] = v6[7].i32[1];
    v28 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(v26, v4))), vcvtnq_s32_f32(vmulq_f32(v27, v4)));
    v29 = vzip1q_s16(v25, v28);
    v30 = vzip2q_s16(v25, v28);
    v31 = vzip1q_s32(vqtbl1q_s8(v29, xmmword_2953CBB80), vqtbl1q_s8(v30, xmmword_2953CBB80));
    v32 = vminq_s16(vmaxq_s16(vqsubq_s16(v22, v8), v9), v5);
    v33 = vminq_s16(vmaxq_s16(vqsubq_s16(vzip2q_s16(v29, v30), v8), v9), v5);
    v34 = vzip2q_s64(v32, v33);
    v32.i64[1] = v33.i64[0];
    *v12 = vminq_s16(vmaxq_s16(vqsubq_s16(v24, v7), v9), v5);
    *(v12 + 128) = vminq_s16(vmaxq_s16(vqsubq_s16(v31, v7), v9), v5);
    *(v12 + 512) = v32;
    *(v12 + 640) = v34;
    v6 = (v6 + a2);
    v3 += 16;
  }

  while (v3 != 128);
  v35 = 0;
  v36 = vdupq_n_s32(0x457F0000u);
  v37.i64[0] = 0x700070007000700;
  v37.i64[1] = 0x700070007000700;
  v38.i64[0] = 0x800080008000800;
  v38.i64[1] = 0x800080008000800;
  v39.i64[0] = 0xF800F800F800F800;
  v39.i64[1] = 0xF800F800F800F800;
  v40 = vdupq_n_s16(0x7F0u);
  do
  {
    v41 = v6[-8];
    v41.i32[0] = v6[-7].i32[1];
    v42 = v6[-6];
    v42.i32[0] = v6[-5].i32[1];
    v43 = a3 + v35 + v3;
    v44 = v6[-4];
    v44.i32[0] = v6[-3].i32[1];
    v45 = v6[-2];
    v45.i32[0] = v6[-1].i32[1];
    v46 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(v41, v36))), vcvtnq_s32_f32(vmulq_f32(v42, v36)));
    v47 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(v44, v36))), vcvtnq_s32_f32(vmulq_f32(v45, v36)));
    v48 = vzip1q_s16(v46, v47);
    v49 = vzip2q_s16(v46, v47);
    v50 = vqtbl1q_s8(v48, xmmword_2953CBB80);
    v51 = vqtbl1q_s8(v49, xmmword_2953CBB80);
    v52 = *v6;
    v52.i32[0] = v6[1].i32[1];
    v53 = vzip2q_s16(v48, v49);
    v54 = v6[2];
    v54.i32[0] = v6[3].i32[1];
    v55 = vzip1q_s32(v50, v51);
    v56 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(v52, v36))), vcvtnq_s32_f32(vmulq_f32(v54, v36)));
    v57 = v6[4];
    v57.i32[0] = v6[5].i32[1];
    v58 = v6[6];
    v58.i32[0] = v6[7].i32[1];
    v59 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(v57, v36))), vcvtnq_s32_f32(vmulq_f32(v58, v36)));
    v60 = vzip1q_s16(v56, v59);
    v61 = vzip2q_s16(v56, v59);
    v62 = vzip1q_s32(vqtbl1q_s8(v60, xmmword_2953CBB80), vqtbl1q_s8(v61, xmmword_2953CBB80));
    v63 = vminq_s16(vmaxq_s16(vqsubq_s16(v53, v38), v39), v40);
    v64 = vminq_s16(vmaxq_s16(vqsubq_s16(vzip2q_s16(v60, v61), v38), v39), v40);
    v65 = vzip2q_s64(v63, v64);
    v63.i64[1] = v64.i64[0];
    *(v43 + 128) = vminq_s16(vmaxq_s16(vqsubq_s16(v55, v37), v39), v40);
    *(v43 + 256) = vminq_s16(vmaxq_s16(vqsubq_s16(v62, v37), v39), v40);
    *(v43 + 640) = v63;
    *(v43 + 768) = v65;
    v6 = (v6 + a2);
    v35 += 16;
  }

  while (v35 != 128);
  return result;
}

uint32x4_t *pixInFullMB<(PixelFormat)32,(ChromaFormat)3>(uint32x4_t *result, int a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    v4 = vdupq_n_s32(0x403AF7CBu);
    v5 = vdupq_n_s32(0xBFCE1E4D);
    v6 = vdupq_n_s32(0x411D3E37u);
    v7 = vdupq_n_s32(0xC0AD594E);
    v8 = vdupq_n_s32(0xC0CC4226);
    v9 = vdupq_n_s32(0x3F7DFB1Du);
    v10 = -1088096806;
  }

  else if (a4 == 9)
  {
    v4 = vdupq_n_s32(0x40670714u);
    v5 = vdupq_n_s32(0xBFFB32C5);
    v6 = vdupq_n_s32(0x41151075u);
    v7 = vdupq_n_s32(0xC0A21430);
    v8 = vdupq_n_s32(0xC0CECAB2);
    v9 = vdupq_n_s32(0x3F509A20u);
    v10 = -1089425032;
  }

  else
  {
    v4 = vdupq_n_s32(0x408379BFu);
    v5 = vdupq_n_s32(0xC017C7BE);
    v6 = vdupq_n_s32(0x41010EA0u);
    v7 = vdupq_n_s32(0xC094FD02);
    v8 = vdupq_n_s32(0xC0BC4EC0);
    v9 = vdupq_n_s32(0x3FC882E1u);
    v10 = -1080932220;
  }

  v11 = vdupq_n_s32(v10);
  v12 = 0;
  v13 = 8 * a2;
  v14.i64[0] = 0xFF000000FFLL;
  v14.i64[1] = 0xFF000000FFLL;
  v15.i64[0] = 0xF900F900F900F900;
  v15.i64[1] = 0xF900F900F900F900;
  v16 = vdupq_n_s32(0x40E0E0E1u);
  do
  {
    v17 = (a3 + v12);
    v18 = result[1];
    v19 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(*result, 8uLL), v14));
    v20 = vcvtq_f32_u32((*&vshrq_n_u32(*result, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
    v21 = vcvtq_f32_u32(vshrq_n_u32(*result, 0x18uLL));
    v22 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v18, 8uLL), v14));
    v23 = *&vshrq_n_u32(v18, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
    v24 = vcvtq_f32_u32(vshrq_n_u32(v18, 0x18uLL));
    v25 = vcvtq_f32_u32(v23);
    *v17 = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v21), vaddq_f32(vmulq_f32(v4, v19), vmulq_f32(v6, v20))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v24), vaddq_f32(vmulq_f32(v4, v22), vmulq_f32(v6, v25))))), v15);
    v17[32] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v21, v16), vaddq_f32(vmulq_f32(v5, v19), vmulq_f32(v7, v20))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v24, v16), vaddq_f32(vmulq_f32(v5, v22), vmulq_f32(v7, v25)))));
    v17[40] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v21), vaddq_f32(vmulq_f32(v19, v16), vmulq_f32(v8, v20))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v24), vaddq_f32(vmulq_f32(v22, v16), vmulq_f32(v8, v25)))));
    v26 = result[2];
    v27 = result[3];
    v28 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v26, 8uLL), v14));
    v29 = vcvtq_f32_u32((*&vshrq_n_u32(v26, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
    v30 = vcvtq_f32_u32(vshrq_n_u32(v26, 0x18uLL));
    v31 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v27, 8uLL), v14));
    v32 = vcvtq_f32_u32((*&vshrq_n_u32(v27, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
    v33 = vcvtq_f32_u32(vshrq_n_u32(v27, 0x18uLL));
    v17[64] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v30, v16), vaddq_f32(vmulq_f32(v5, v28), vmulq_f32(v7, v29))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v33, v16), vaddq_f32(vmulq_f32(v5, v31), vmulq_f32(v7, v32)))));
    v17[8] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v30), vaddq_f32(vmulq_f32(v4, v28), vmulq_f32(v6, v29))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v33), vaddq_f32(vmulq_f32(v4, v31), vmulq_f32(v6, v32))))), v15);
    v17[72] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v30), vaddq_f32(vmulq_f32(v28, v16), vmulq_f32(v8, v29))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v33), vaddq_f32(vmulq_f32(v31, v16), vmulq_f32(v8, v32)))));
    v34 = *(result + v13);
    v35 = *(&result[1] + v13);
    v36 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v34, 8uLL), v14));
    v37 = vcvtq_f32_u32((*&vshrq_n_u32(v34, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
    v38 = vcvtq_f32_u32(vshrq_n_u32(v34, 0x18uLL));
    v39 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v35, 8uLL), v14));
    v40 = vcvtq_f32_u32((*&vshrq_n_u32(v35, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
    v41 = vcvtq_f32_u32(vshrq_n_u32(v35, 0x18uLL));
    v17[16] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v38), vaddq_f32(vmulq_f32(v4, v36), vmulq_f32(v6, v37))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v41), vaddq_f32(vmulq_f32(v4, v39), vmulq_f32(v6, v40))))), v15);
    v17[48] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v38, v16), vaddq_f32(vmulq_f32(v5, v36), vmulq_f32(v7, v37))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v41, v16), vaddq_f32(vmulq_f32(v5, v39), vmulq_f32(v7, v40)))));
    v17[56] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v38), vaddq_f32(vmulq_f32(v36, v16), vmulq_f32(v8, v37))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v41), vaddq_f32(vmulq_f32(v39, v16), vmulq_f32(v8, v40)))));
    v42 = *(&result[2] + v13);
    v43 = *(&result[3] + v13);
    v44 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v42, 8uLL), v14));
    v45 = vcvtq_f32_u32((*&vshrq_n_u32(v42, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
    v46 = vcvtq_f32_u32(vshrq_n_u32(v42, 0x18uLL));
    v47 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v43, 8uLL), v14));
    v48 = vcvtq_f32_u32((*&vshrq_n_u32(v43, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
    v49 = vcvtq_f32_u32(vshrq_n_u32(v43, 0x18uLL));
    result = (result + a2);
    v17[24] = vaddq_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v46), vaddq_f32(vmulq_f32(v4, v44), vmulq_f32(v6, v45))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v49), vaddq_f32(vmulq_f32(v4, v47), vmulq_f32(v6, v48))))), v15);
    v17[80] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v46, v16), vaddq_f32(vmulq_f32(v5, v44), vmulq_f32(v7, v45))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v49, v16), vaddq_f32(vmulq_f32(v5, v47), vmulq_f32(v7, v48)))));
    v17[88] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v46), vaddq_f32(vmulq_f32(v44, v16), vmulq_f32(v8, v45))))), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v11, v49), vaddq_f32(vmulq_f32(v47, v16), vmulq_f32(v8, v48)))));
    v12 += 16;
  }

  while (v12 != 128);
  return result;
}

int32x4_t *pixInFullMB<(PixelFormat)32,(ChromaFormat)2>(int32x4_t *result, int a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    v4 = vdupq_n_s32(0x403AF7CBu);
    v5 = vdupq_n_s32(0xBFCE1E4D);
    v6 = vdupq_n_s32(0x411D3E37u);
    v7 = vdupq_n_s32(0xC0AD594E);
    v8 = vdupq_n_s32(0xBF24F5DA);
    v9 = vdupq_n_s32(0x3F7DFB1Du);
    v10 = -1060355546;
  }

  else if (a4 == 9)
  {
    v4 = vdupq_n_s32(0x40670714u);
    v5 = vdupq_n_s32(0xBFFB32C5);
    v6 = vdupq_n_s32(0x41151075u);
    v7 = vdupq_n_s32(0xC0A21430);
    v8 = vdupq_n_s32(0xBF10B178);
    v9 = vdupq_n_s32(0x3F509A20u);
    v10 = -1060189518;
  }

  else
  {
    v4 = vdupq_n_s32(0x408379BFu);
    v5 = vdupq_n_s32(0xC017C7BE);
    v6 = vdupq_n_s32(0x41010EA0u);
    v7 = vdupq_n_s32(0xC094FD02);
    v8 = vdupq_n_s32(0xBF924884);
    v9 = vdupq_n_s32(0x3FC882E1u);
    v10 = -1061400896;
  }

  v11 = vdupq_n_s32(v10);
  v12 = 0;
  v13 = result + 2;
  v14.i64[0] = 0xFF000000FFLL;
  v14.i64[1] = 0xFF000000FFLL;
  v15 = vdupq_n_s32(0x40E0E0E1u);
  v16.i64[0] = 0xF900F900F900F900;
  v16.i64[1] = 0xF900F900F900F900;
  do
  {
    i32 = v13[-2].i32;
    v63 = vld2q_f32(i32);
    v18 = (a3 + v12);
    v19 = vshrq_n_u32(v63.val[0], 8uLL);
    v20 = vshrq_n_u32(v63.val[1], 8uLL);
    v21 = vshrq_n_u32(v63.val[0], 0x10uLL);
    v22 = vshrq_n_u32(v63.val[1], 0x10uLL);
    v23 = vshrq_n_u32(v63.val[0], 0x18uLL);
    v63.val[0] = vshrq_n_u32(v63.val[1], 0x18uLL);
    v63.val[1] = vandq_s8(v19, v14);
    v24 = vandq_s8(v20, v14);
    v63.val[1] = vcvtq_f32_u32(v63.val[1]);
    v25 = vcvtq_f32_u32(v23);
    v26 = v13[1];
    v27 = vzip1q_s32(*v13, v26);
    v28 = vzip2q_s32(*v13, v26);
    v29 = vzip1q_s32(v27, v28);
    v30 = vzip2q_s32(v27, v28);
    v31 = vcvtq_f32_u32((*&v21 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
    v32 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v29, 8uLL), v14));
    v33 = vcvtq_f32_u32((*&vshrq_n_u32(v29, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
    v34 = vcvtq_f32_u32(vshrq_n_u32(v29, 0x18uLL));
    v35 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v25, v15), vaddq_f32(vmulq_f32(v5, v63.val[1]), vmulq_f32(v7, v31))));
    v36 = vaddq_f32(vmulq_f32(v8, v25), vaddq_f32(vmulq_f32(v63.val[1], v15), vmulq_f32(v11, v31)));
    v63.val[1] = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v25), vaddq_f32(vmulq_f32(v4, v63.val[1]), vmulq_f32(v6, v31))));
    v63.val[0] = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, vcvtq_f32_u32(v63.val[0])), vaddq_f32(vmulq_f32(v4, vcvtq_f32_u32(v24)), vmulq_f32(v6, vcvtq_f32_u32((*&v22 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)))))));
    *v63.val[1].f32 = vqmovn_s32(v63.val[1]);
    *v63.val[0].f32 = vqmovn_s32(v63.val[0]);
    v37 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v34), vaddq_f32(vmulq_f32(v4, v32), vmulq_f32(v6, v33))));
    v63.val[0] = vzip1q_s16(v63.val[1], v63.val[0]);
    v63.val[1] = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, vcvtq_f32_u32(vshrq_n_u32(v30, 0x18uLL))), vaddq_f32(vmulq_f32(v4, vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v30, 8uLL), v14))), vmulq_f32(v6, vcvtq_f32_u32((*&vshrq_n_u32(v30, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)))))));
    *v37.i8 = vqmovn_s32(v37);
    *v63.val[1].f32 = vqmovn_s32(v63.val[1]);
    *v18 = vaddq_s16(v63.val[0], v16);
    v18[8] = vaddq_s16(vzip1q_s16(v37, v63.val[1]), v16);
    v18[32] = vqmovn_high_s32(vqmovn_s32(v35), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v34, v15), vaddq_f32(vmulq_f32(v5, v32), vmulq_f32(v7, v33)))));
    v18[40] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v36)), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v8, v34), vaddq_f32(vmulq_f32(v32, v15), vmulq_f32(v11, v33)))));
    v13 = (v13 + a2);
    v12 += 16;
  }

  while (v12 != 128);
  v38 = 0;
  v39.i64[0] = 0xFF000000FFLL;
  v39.i64[1] = 0xFF000000FFLL;
  v40 = vdupq_n_s32(0x40E0E0E1u);
  v41.i64[0] = 0xF900F900F900F900;
  v41.i64[1] = 0xF900F900F900F900;
  do
  {
    v42 = v13[-2].i32;
    v64 = vld2q_f32(v42);
    v43 = (a3 + v38 + v12);
    v44 = vshrq_n_u32(v64.val[0], 8uLL);
    v45 = vshrq_n_u32(v64.val[1], 8uLL);
    v46 = vshrq_n_u32(v64.val[0], 0x10uLL);
    v47 = vshrq_n_u32(v64.val[1], 0x10uLL);
    v48 = vshrq_n_u32(v64.val[0], 0x18uLL);
    v64.val[0] = vshrq_n_u32(v64.val[1], 0x18uLL);
    v64.val[1] = vandq_s8(v44, v39);
    v49 = vandq_s8(v45, v39);
    v64.val[1] = vcvtq_f32_u32(v64.val[1]);
    v50 = vcvtq_f32_u32(v48);
    v51 = v13[1];
    v52 = vzip1q_s32(*v13, v51);
    v53 = vzip2q_s32(*v13, v51);
    v54 = vzip1q_s32(v52, v53);
    v55 = vzip2q_s32(v52, v53);
    v56 = vcvtq_f32_u32((*&v46 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
    v57 = vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v54, 8uLL), v39));
    v58 = vcvtq_f32_u32((*&vshrq_n_u32(v54, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
    v59 = vcvtq_f32_u32(vshrq_n_u32(v54, 0x18uLL));
    v60 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v50, v40), vaddq_f32(vmulq_f32(v5, v64.val[1]), vmulq_f32(v7, v56))));
    v61 = vaddq_f32(vmulq_f32(v8, v50), vaddq_f32(vmulq_f32(v64.val[1], v40), vmulq_f32(v11, v56)));
    v64.val[1] = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v50), vaddq_f32(vmulq_f32(v4, v64.val[1]), vmulq_f32(v6, v56))));
    v64.val[0] = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, vcvtq_f32_u32(v64.val[0])), vaddq_f32(vmulq_f32(v4, vcvtq_f32_u32(v49)), vmulq_f32(v6, vcvtq_f32_u32((*&v47 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)))))));
    *v64.val[1].f32 = vqmovn_s32(v64.val[1]);
    *v64.val[0].f32 = vqmovn_s32(v64.val[0]);
    v62 = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, v59), vaddq_f32(vmulq_f32(v4, v57), vmulq_f32(v6, v58))));
    v64.val[0] = vzip1q_s16(v64.val[1], v64.val[0]);
    v64.val[1] = vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v9, vcvtq_f32_u32(vshrq_n_u32(v55, 0x18uLL))), vaddq_f32(vmulq_f32(v4, vcvtq_f32_u32(vandq_s8(vshrq_n_u32(v55, 8uLL), v39))), vmulq_f32(v6, vcvtq_f32_u32((*&vshrq_n_u32(v55, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)))))));
    *v62.i8 = vqmovn_s32(v62);
    *v64.val[1].f32 = vqmovn_s32(v64.val[1]);
    v43[8] = vaddq_s16(v64.val[0], v41);
    v43[16] = vaddq_s16(vzip1q_s16(v62, v64.val[1]), v41);
    v43[40] = vqmovn_high_s32(vqmovn_s32(v60), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v59, v40), vaddq_f32(vmulq_f32(v5, v57), vmulq_f32(v7, v58)))));
    v43[48] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v61)), vcvtnq_s32_f32(vaddq_f32(vmulq_f32(v8, v59), vaddq_f32(vmulq_f32(v57, v40), vmulq_f32(v11, v58)))));
    v38 += 16;
    v13 = (v13 + a2);
  }

  while (v38 != 128);
  return result;
}