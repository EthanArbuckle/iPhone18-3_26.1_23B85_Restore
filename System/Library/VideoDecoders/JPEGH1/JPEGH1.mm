uint64_t Copy_444_yuvz_arm(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t *a5, int8x16_t **a6)
{
  v6 = *a3;
  v7 = a3[1];
  v9 = *a4;
  v10 = a4[1];
  v12 = *a5;
  v13 = *a6;
  do
  {
    v14 = v9;
    v15 = v10;
    v16 = v13;
    v17 = result & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v18.i64[0] = *v14;
      v19 = v14[1];
      v20.i64[0] = *v15;
      v21 = v15[1];
      v14 += 2;
      v15 += 2;
      v18.i64[1] = v19;
      v20.i64[1] = v21;
      *v16 = vzip1q_s8(v18, v20);
      v16[1] = vzip2q_s8(v18, v20);
      v16 += 2;
      v17 -= 16;
    }

    while (v17);
    v22 = result & 0xF;
    if ((result & 0xF) != 0)
    {
      do
      {
        v24 = *v14;
        v14 = (v14 + 1);
        v25 = *v15;
        v15 = (v15 + 1);
        v16->i8[0] = v24;
        v16->i8[1] = v25;
        v16 = (v16 + 2);
        --v22;
      }

      while (v22);
      v23 = result & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      v23 = result & 0xFFFFFFFFFFFFFFF0;
    }

    do
    {
      v26.i64[0] = *v15;
      v27 = v15[1];
      v15 += 2;
      v26.i64[1] = v27;
      *v16 = vzip1q_s8(0, v26);
      v16[1] = vzip2q_s8(0, v26);
      v16 += 2;
      v23 -= 16;
    }

    while (v23);
    v28 = result & 0xF;
    if ((result & 0xF) != 0)
    {
      do
      {
        v29 = *v15;
        v15 = (v15 + 1);
        v16->i8[0] = 0;
        v16->i8[1] = v29;
        v16 = (v16 + 2);
        --v28;
      }

      while (v28);
    }

    v9 = (v9 + v6);
    v10 = (v10 + v7);
    v13 = (v13 + v12);
    --a2;
  }

  while (a2);
  return result;
}

uint64_t Copy_yuvz_444_arm(uint64_t result, uint64_t a2, uint64_t *a3, int8x16_t **a4, uint64_t *a5, int8x16_t **a6)
{
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v9 = a5[1];
  v11 = *a6;
  v12 = a6[1];
  do
  {
    v14 = v7;
    v15 = v11;
    v16 = v12;
    v17 = result & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v18 = *v14;
      v19 = v14[1];
      v14 += 2;
      *v15 = vuzp1q_s8(v18, v19);
      *v16 = vuzp2q_s8(v18, v19);
      ++v15;
      ++v16;
      v17 -= 16;
    }

    while (v17);
    v20 = result & 0xF;
    if ((result & 0xF) != 0)
    {
      do
      {
        v22 = v14->i8[0];
        v23 = v14->i8[1];
        v14 = (v14 + 2);
        v15->i8[0] = v22;
        v15 = (v15 + 1);
        v16->i8[0] = v23;
        v16 = (v16 + 1);
        --v20;
      }

      while (v20);
      v21 = result & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      v21 = result & 0xFFFFFFFFFFFFFFF0;
    }

    do
    {
      v24 = *v14;
      v25 = v14[1];
      v14 += 2;
      *v16++ = vuzp2q_s8(v24, v25);
      v21 -= 16;
    }

    while (v21);
    v26 = result & 0xF;
    if ((result & 0xF) != 0)
    {
      do
      {
        v27 = v14->i8[0];
        v28 = v14->i8[1];
        v14 = (v14 + 2);
        v16->i8[0] = v28;
        v16 = (v16 + 1);
        --v26;
      }

      while (v26);
    }

    v7 = (v7 + v6);
    v11 = (v11 + v8);
    v12 = (v12 + v9);
    --a2;
  }

  while (a2);
  return result;
}

void JPEGH1Register()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v1 = *MEMORY[0x277CE2B70];
  v2 = *MEMORY[0x277CBED28];
  FigCFDictionarySetValue();
  v3 = *MEMORY[0x277CE2B78];
  FigCFDictionarySetValue();
  VTRegisterVideoDecoderWithInfo();
  VTRegisterVideoDecoderWithInfo();
  VTRegisterVideoDecoderWithInfo();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t H1JPEGVideoDecoder_CreateInstance(uint64_t a1, uint64_t a2, void *a3)
{
  VTVideoDecoderGetClassID();
  v4 = CMDerivedObjectCreate();
  fig_log_get_emitter();
  FigSignalErrorAtGM();
  *a3 = 0;
  return v4;
}

uint64_t H1JPEGVideoDecoder_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    *DerivedStorage = 1;
    if (*(DerivedStorage + 24) == 1936355431)
    {
      while (*(v1 + 184))
      {
        MEMORY[0x277CB06B0](2000);
      }

      v2 = *(v1 + 176);
      if (v2)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __H1JPEGVideoDecoder_Invalidate_block_invoke;
        block[3] = &__block_descriptor_tmp;
        block[4] = v1;
        dispatch_sync(v2, block);
        IONotificationPortDestroy(*(v1 + 168));
        *(v1 + 168) = 0;
        v3 = *(v1 + 176);
        if (v3)
        {
          dispatch_release(v3);
          *(v1 + 176) = 0;
        }
      }

      v4 = 0;
      v5 = v1 + 192;
      do
      {
        v6 = *(v5 + v4);
        if (v6)
        {
          CFRelease(v6);
          *(v5 + v4) = 0;
        }

        v4 += 8;
      }

      while (v4 != 24);
      v7 = *(v1 + 224);
      FigSemaphoreDestroy();
      *(v1 + 224) = 0;
      v8 = *(v1 + 216);
      if (v8)
      {
        CFRelease(v8);
        *(v1 + 216) = 0;
      }
    }

    v9 = 0;
    v10 = v1 + 80;
    do
    {
      v11 = (v10 + v9);
      v12 = *(v10 + v9);
      if (v12)
      {
        CFRelease(v12);
        *v11 = 0;
        v11[1] = 0;
      }

      v9 += 24;
    }

    while (v9 != 72);
    v13 = *(v1 + 152);
    FigSimpleMutexDestroy();
  }

  return 0;
}

void H1JPEGVideoDecoder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = 0;
  *(DerivedStorage + 32) = 0;
  *(DerivedStorage + 40) = 0;
  v1 = *(DerivedStorage + 16);
  FigFormatDescriptionRelease();
  *(DerivedStorage + 16) = 0;
  v2 = *(DerivedStorage + 160);
  if (v2)
  {
    JPEGDeviceInterface_closeDriverConnection(v2);
    *(DerivedStorage + 160) = 0;
  }

  v3 = *(DerivedStorage + 64);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 64) = 0;
  }

  v4 = *(DerivedStorage + 232);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 232) = 0;
  }
}

__CFString *H1JPEGVideoDecoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<H1JPEGVideoDecoder %p>", a1);
  return Mutable;
}

uint64_t H1JPEGVideoDecoder_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CE26C0]))
  {
    v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, (DerivedStorage + 48));
    *a4 = v7;
    if (!v7)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26E0]))
  {
    pthread_once(&sCreateSuggestedQualityOfServiceTiersOnce, jpeg_createSuggestedQualityOfServiceTiers);
    v8 = sH1JPEGVideoDecoderSuggestedQualityOfServiceTiers;
    if (!sH1JPEGVideoDecoderSuggestedQualityOfServiceTiers)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, *MEMORY[0x277CE2648]))
  {
    v8 = *MEMORY[0x277CBED10];
LABEL_9:
    *a4 = CFRetain(v8);
    return 0;
  }

LABEL_11:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t H1JPEGVideoDecoder_SetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 232);
  if (v6)
  {
    VTSessionSetProperty(v6, a2, a3);
  }

  if (CFEqual(a2, *MEMORY[0x277CE26C0]))
  {
    if (a3)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        valuePtr = 1.0;
        CFNumberGetValue(a3, kCFNumberDoubleType, &valuePtr);
        if (valuePtr < 0.0 || valuePtr > 1.0)
        {
          fig_log_get_emitter();
          return FigSignalErrorAtGM();
        }

        else
        {
          result = 0;
          if (*(DerivedStorage + 24) != 1936355431)
          {
            *(DerivedStorage + 48) = valuePtr;
          }
        }

        return result;
      }
    }

    fig_log_get_emitter();
  }

  else
  {
    CFEqual(a2, *MEMORY[0x277CE26E0]);
    fig_log_get_emitter();
  }

  return FigSignalErrorAtGM();
}

void jpeg_createSuggestedQualityOfServiceTiers()
{
  values[6] = *MEMORY[0x277D85DE8];
  values[0] = jpeg_createQualityOfServiceTier(1.0);
  values[1] = jpeg_createQualityOfServiceTier(0.75);
  values[2] = jpeg_createQualityOfServiceTier(0.5);
  values[3] = jpeg_createQualityOfServiceTier(0.333333333);
  values[4] = jpeg_createQualityOfServiceTier(0.2);
  values[5] = jpeg_createQualityOfServiceTier(0.1);
  sH1JPEGVideoDecoderSuggestedQualityOfServiceTiers = CFArrayCreate(*MEMORY[0x277CBECE8], values, 6, MEMORY[0x277CBF128]);
  if (!sH1JPEGVideoDecoderSuggestedQualityOfServiceTiers)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  for (i = 0; i != 6; ++i)
  {
    v1 = values[i];
    if (v1)
    {
      CFRelease(v1);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

CFDictionaryRef jpeg_createQualityOfServiceTier(double a1)
{
  valuePtr = a1;
  keys = *MEMORY[0x277CE26C0];
  v1 = *MEMORY[0x277CBECE8];
  values = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
  if (!values || (v2 = CFDictionaryCreate(v1, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    v2 = 0;
  }

  if (values)
  {
    CFRelease(values);
  }

  return v2;
}

uint64_t H1JPEGVideoDecoder_StartSession(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 875704422;
  *(DerivedStorage + 8) = a2;
  v6 = *(DerivedStorage + 16);
  FigFormatDescriptionRelease();
  v7 = FigFormatDescriptionRetain();
  *(DerivedStorage + 16) = v7;
  Dimensions = CMVideoFormatDescriptionGetDimensions(v7);
  v9 = Dimensions;
  if (Dimensions <= 32)
  {
    H1JPEGVideoDecoder_StartSession_cold_6(&theDict);
    return theDict;
  }

  v10 = HIDWORD(Dimensions);
  if (SHIDWORD(Dimensions) <= 16)
  {
    H1JPEGVideoDecoder_StartSession_cold_5(&theDict);
    return theDict;
  }

  v11 = *(DerivedStorage + 72) == 0;
  if (*(DerivedStorage + 24) == 1936355431)
  {
    if (!*(DerivedStorage + 72))
    {
      valuePtr = 875836518;
      v11 = 1;
      goto LABEL_6;
    }

    H1JPEGVideoDecoder_StartSession_cold_1(&theDict);
    return theDict;
  }

LABEL_6:
  v64 = DerivedStorage;
  theDict = 0;
  v70 = 0;
  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    MutableCopy = 0;
    v14 = 0;
    v20 = 4294954392;
    goto LABEL_24;
  }

  v13 = Mutable;
  v14 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = v15;
  CFArrayAppendValue(v14, v15);
  CFRelease(v16);
  CFDictionaryAddValue(v13, *MEMORY[0x277CC4E30], v14);
  CFRelease(v14);
  setNumberInDictionary(v13, *MEMORY[0x277CC4EC8], v9.width);
  setNumberInDictionary(v13, *MEMORY[0x277CC4DD8], v9.height);
  if (v11)
  {
    v17 = 16;
    setNumberInDictionary(v13, *MEMORY[0x277CC4E38], 16);
    v18 = MEMORY[0x277CC4D60];
    goto LABEL_19;
  }

  v21 = -v10 & 0xF;
  v22 = -v9.width & 0xF;
  if (v22)
  {
    setNumberInDictionary(v13, *MEMORY[0x277CC4DB8], v22);
  }

  if (v21)
  {
    setNumberInDictionary(v13, *MEMORY[0x277CC4DA0], v21);
  }

  v14 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v14 || (v70 = v22 + v9.width, (v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v70)) == 0))
  {
LABEL_22:
    v20 = 4294954392;
LABEL_23:
    CFRelease(v13);
    MutableCopy = 0;
    goto LABEL_24;
  }

  v24 = v23;
  CFArrayAppendValue(v14, v23);
  CFArrayAppendValue(v14, v24);
  CFRelease(v24);
  CFDictionaryAddValue(v13, *MEMORY[0x277CC4D98], v14);
  CFRelease(v14);
  setNumberInDictionary(v13, @"ExactHeight", v21 + v10);
  v17 = 32;
  v18 = MEMORY[0x277CC4E38];
LABEL_19:
  setNumberInDictionary(v13, *v18, v17);
  PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
  if (PixelBufferAttributesWithIOSurfaceSupport)
  {
    v20 = PixelBufferAttributesWithIOSurfaceSupport;
    v14 = 0;
    goto LABEL_23;
  }

  CFRelease(v13);
  MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, theDict);
  if (MutableCopy)
  {
    v14 = 0;
    v20 = 0;
  }

  else
  {
    H1JPEGVideoDecoder_StartSession_cold_2(&v72);
    v14 = 0;
    v20 = v72;
  }

LABEL_24:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v20)
  {
    goto LABEL_64;
  }

  v26 = *(v64 + 8);
  VTDecoderSessionSetPixelBufferAttributes();
  if (*(v64 + 72) && ((v9.width & 0xFu) - 1 < 8 || (v10 & 0xF) - 1 <= 7))
  {
    *(v64 + 64) = MutableCopy;
    CFRetain(MutableCopy);
  }

  v63 = MutableCopy;
  Extension = CMFormatDescriptionGetExtension(a3, *MEMORY[0x277CC03B0]);
  if (Extension)
  {
    v28 = Extension;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v28))
    {
      Value = CFDictionaryGetValue(v28, @"mjqt");
      if (Value)
      {
        v31 = Value;
        v32 = a3;
        v33 = CFDataGetTypeID();
        v34 = v33 == CFGetTypeID(v31);
        a3 = v32;
        if (v34)
        {
          if (CFDataGetLength(v31))
          {
            *(v64 + 32) = v31;
          }
        }
      }

      v35 = CFDictionaryGetValue(v28, *MEMORY[0x277CC1A78]);
      if (v35)
      {
        v36 = v35;
        v37 = CFDataGetTypeID();
        if (v37 == CFGetTypeID(v36))
        {
          if (CFDataGetLength(v36))
          {
            *(v64 + 40) = v36;
          }
        }
      }
    }
  }

  v38 = JPEGDeviceInterface_openDriverConnection();
  *(v64 + 160) = v38;
  if (v38)
  {
    videoFormatDescription = a3;
    *(v64 + 152) = FigSimpleMutexCreate();
    v39 = allocator;
    if (*(v64 + 24) != 1936355431)
    {
      goto LABEL_53;
    }

    VTVideoDecoderGetCMBaseObject();
    v40 = CMBaseObjectGetDerivedStorage();
    *(v40 + 176) = FigDispatchQueueCreateWithPriority();
    v41 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    *(v40 + 168) = v41;
    IONotificationPortSetDispatchQueue(v41, *(v40 + 176));
    v42 = *(v40 + 160);
    MachPort = IONotificationPortGetMachPort(*(v40 + 168));
    MEMORY[0x277CB06D0](v42, 0, MachPort, 0);
    CMVideoFormatDescriptionGetDimensions(*(v40 + 16));
    v44 = CMSimpleQueueCreate(allocator, 3, (v40 + 216));
    if (v44)
    {
      v20 = v44;
      goto LABEL_63;
    }

    v45 = 0;
    *(v40 + 224) = FigSemaphoreCreate();
    v67 = *MEMORY[0x277CD2A40];
    v66 = *MEMORY[0x277CBED28];
    v65 = *MEMORY[0x277CD2970];
    v46 = v40;
    v47 = *MEMORY[0x277CD2B88];
    v48 = *MEMORY[0x277CD2A28];
    v49 = *MEMORY[0x277CD2A70];
    v50 = *MEMORY[0x277CD2968];
    v51 = *MEMORY[0x277CD2948];
    v52 = v46;
    v53 = v46 + 192;
    while (1)
    {
      v54 = CFDictionaryCreateMutable(v39, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v54)
      {
        break;
      }

      v55 = v54;
      CFDictionarySetValue(v54, v67, v66);
      if ((runningOnCortexA9_checked & 1) == 0)
      {
        runningOnCortexA9_checked = 1;
      }

      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      v56 = IOSurfaceCreate(v55);
      CFRelease(v55);
      *(v53 + v45) = v56;
      if (!v56)
      {
        goto LABEL_68;
      }

      CMSimpleQueueEnqueue(*(v52 + 216), v56);
      v45 += 8;
      v39 = allocator;
      if (v45 == 24)
      {
        goto LABEL_53;
      }
    }

    *(v53 + v45) = 0;
LABEL_68:
    v39 = allocator;
    if (H1JPEGVideoDecoder_StartSession_cold_3(&theDict))
    {
LABEL_53:
      v57 = CFDictionaryCreateMutable(v39, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v57, *MEMORY[0x277CE2B60], *MEMORY[0x277CBED10]);
      v58 = *(v64 + 8);
      DestinationPixelBufferAttributes = VTDecoderSessionGetDestinationPixelBufferAttributes();
      if (DestinationPixelBufferAttributes)
      {
        v60 = CFDictionaryCreateMutableCopy(v39, 0, DestinationPixelBufferAttributes);
      }

      else
      {
        v60 = 0;
      }

      if (VTDecompressionSessionCreate(v39, videoFormatDescription, v57, v60, 0, (v64 + 232)))
      {
        *(v64 + 232) = 0;
      }

      if (v60)
      {
        CFRelease(v60);
      }

      if (v57)
      {
        CFRelease(v57);
      }

      v20 = 0;
      goto LABEL_63;
    }
  }

  else
  {
    H1JPEGVideoDecoder_StartSession_cold_4(&theDict);
  }

  v20 = theDict;
LABEL_63:
  MutableCopy = v63;
LABEL_64:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v20;
}

uint64_t H1JPEGVideoDecoder_CopySupportedPropertyDictionary(uint64_t a1, CFTypeRef *a2)
{
  pthread_once(&sCreateSupportedPropertyDictionaryOnce, jpeg_createSupportedPropertyDictionary);
  if (a2 && sH1JPEGVideoDecoderSupportedPropertyDictionary)
  {
    *a2 = CFRetain(sH1JPEGVideoDecoderSupportedPropertyDictionary);
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void setNumberInDictionary(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

uint64_t jpeg_ShouldDeliverThisFrame(uint64_t a1, CMSampleBufferRef sbuf)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CC0650]);
      if (Value)
      {
        v6 = Value;
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v6))
        {
          if (CFBooleanGetValue(v6))
          {
            return 0;
          }
        }
      }
    }
  }

  v8 = *(a1 + 48) + *(a1 + 56);
  *(a1 + 56) = v8;
  if (v8 < 1.0)
  {
    return 0;
  }

  v10 = v8 + -1.0;
  if (v10 >= 1.0)
  {
    v10 = 1.0;
  }

  *(a1 + 56) = v10;
  return 1;
}

uint64_t jpeg_checkAndMaybeUpdateOutputPixelBufferAttributes(uint64_t a1, CMBlockBufferRef theBuffer, unint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  if ((!*(a1 + 64) || !*(a1 + 72)) && *(a1 + 76) != -1)
  {
    goto LABEL_4;
  }

  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!DataLength)
  {
LABEL_22:
    result = 4294954386;
    goto LABEL_23;
  }

  v8 = DataLength;
  v9 = 0;
  v10 = 0;
  v37 = HIDWORD(a3);
  v38 = a3;
LABEL_7:
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, v10, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (!result)
  {
    v11 = 0;
    v12 = 0;
    v13 = v10 - 1;
    v14 = lengthAtOffsetOut;
    v15 = lengthAtOffsetOut;
    v16 = lengthAtOffsetOut;
    while (1)
    {
      while (1)
      {
        if (v12 >= v16)
        {
          v10 += v16;
          if (v10 < v8)
          {
            goto LABEL_7;
          }

          goto LABEL_22;
        }

        v17 = dataPointerOut;
        if (!v9)
        {
          v18 = dataPointerOut[v11];
          v15 = v14;
          goto LABEL_20;
        }

        v18 = dataPointerOut[v12];
        if ((v18 & 0xF0) == 0xE0)
        {
          break;
        }

LABEL_17:
        if (v18 == 192)
        {
          if (v12 + 12 > v16)
          {
            v17 = valuePtr;
            CMBlockBufferCopyDataBytes(theBuffer, v12 + v13, 0xCuLL, valuePtr);
            dataPointerOut = valuePtr;
          }

          if (v17[v12 + 8] == 1)
          {
            v21 = 1;
            v22 = 4;
            goto LABEL_28;
          }

          v26 = v17[v12 + 10];
          result = 4294954386;
          if (v26 > 0x21)
          {
            if (v26 == 34)
            {
              v22 = 0;
              v21 = 0;
              v24 = 0;
              v23 = 16;
              v25 = 16;
            }

            else
            {
              if (v26 != 65)
              {
                goto LABEL_23;
              }

              v21 = 1;
              v22 = 3;
              v25 = 8;
              v23 = 32;
LABEL_36:
              v24 = 1;
            }
          }

          else
          {
            if (v26 != 17)
            {
              if (v26 != 33)
              {
                goto LABEL_23;
              }

              v21 = 0;
              v22 = 1;
              v25 = 8;
              v23 = 16;
              goto LABEL_36;
            }

            v21 = 1;
            v22 = 2;
LABEL_28:
            v23 = 8;
            v24 = 1;
            v25 = 8;
          }

          *(a1 + 76) = v22;
          result = *(a1 + 64);
          if (!result)
          {
            goto LABEL_23;
          }

          if (*(a1 + 72))
          {
            if ((v21 | v24) != 1)
            {
              goto LABEL_49;
            }

            v27 = v23 - ((v23 - 1) & v38);
            v28 = (v25 - ((v25 - 1) & v37)) & (v25 - 1);
            v29 = *MEMORY[0x277CC4DB8];
            v30 = v27 & (v23 - 1);
            if ((v27 & (v23 - 1)) != 0)
            {
              setNumberInDictionary(result, v29, v27 & (v23 - 1));
            }

            else
            {
              CFDictionaryRemoveValue(result, v29);
            }

            v31 = *(a1 + 64);
            v32 = *MEMORY[0x277CC4DA0];
            if (v28)
            {
              setNumberInDictionary(v31, v32, v28);
            }

            else
            {
              CFDictionaryRemoveValue(v31, v32);
            }

            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
            valuePtr[0] = v30 + v38;
            v34 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
            CFArrayAppendValue(Mutable, v34);
            CFArrayAppendValue(Mutable, v34);
            CFRelease(v34);
            CFDictionarySetValue(*(a1 + 64), *MEMORY[0x277CC4D98], Mutable);
            CFRelease(Mutable);
            setNumberInDictionary(*(a1 + 64), @"ExactHeight", v28 + v37);
            v35 = *(a1 + 8);
            v36 = *(a1 + 64);
            VTDecoderSessionSetPixelBufferAttributes();
            result = *(a1 + 64);
            if (result)
            {
LABEL_49:
              CFRelease(result);
              result = 0;
              *(a1 + 64) = 0;
            }

            goto LABEL_23;
          }

LABEL_4:
          result = 0;
          goto LABEL_23;
        }

        v14 = v15;
        v11 = v12;
LABEL_20:
        v9 = v18 == 255;
        ++v11;
        v16 = v14;
        v12 = v11;
      }

      if (v12 + 4 <= v16)
      {
        v19 = v12 - 1;
      }

      else
      {
        v17 = destination;
        CMBlockBufferCopyDataBytes(theBuffer, v12 + v13, 4uLL, destination);
        v19 = 0;
        v15 = lengthAtOffsetOut;
        v16 = lengthAtOffsetOut;
      }

      v12 += __rev16(*&v17[v19 + 2]) + 1;
      if (v12 < v16)
      {
        v17 = dataPointerOut;
        v18 = dataPointerOut[v12];
        goto LABEL_17;
      }
    }
  }

LABEL_23:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t jpeg_createSurfaceFromBBuf(uint64_t a1, CMBlockBufferRef theBuffer, uint64_t a3, __IOSurface **a4)
{
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v9 = *(a1 + 24);
  v10 = DataLength;
  if (v9 == 1684890161)
  {
    v11 = *(a1 + 32);
    v10 = DataLength;
    if (v11)
    {
      v10 = DataLength + CFDataGetLength(v11) + 2;
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v10 += CFDataGetLength(v12) + 2;
    }

    v9 = *(a1 + 24);
  }

  if (v9 == 1936355431)
  {
    v13 = 2 * a3 * HIDWORD(a3) / 3;
    if (v10 <= v13)
    {
      v10 = v13;
    }
  }

  v14 = *(a1 + 152);
  FigSimpleMutexLock();
  v15 = 3;
  v16 = a1 + 80;
  while (*(v16 + 16))
  {
    v16 += 24;
    if (!--v15)
    {
      v17 = *(a1 + 152);
      FigSimpleMutexUnlock();
      goto LABEL_14;
    }
  }

  if (*v16 && *(v16 + 8) < v10)
  {
    CFRelease(*v16);
    *v16 = 0;
    *(v16 + 8) = 0;
  }

  *(v16 + 16) = 1;
  v20 = *(a1 + 152);
  FigSimpleMutexUnlock();
  v21 = *v16;
  if (!*v16)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
LABEL_14:
      v18 = 0;
LABEL_15:
      v19 = 4294954392;
      goto LABEL_47;
    }

    v23 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A40], *MEMORY[0x277CBED28]);
    v24 = *MEMORY[0x277CD2970];
    FigCFDictionarySetInt32();
    v25 = *MEMORY[0x277CD2A70];
    FigCFDictionarySetInt32();
    v26 = *MEMORY[0x277CD2948];
    FigCFDictionarySetInt32();
    *v16 = IOSurfaceCreate(v23);
    *(v16 + 8) = (v10 * 1.1);
    CFRelease(v23);
    v21 = *v16;
  }

  v27 = CFRetain(v21);
  v18 = v27;
  if (!v27)
  {
    goto LABEL_15;
  }

  IOSurfaceLock(v27, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v18);
  if (*(a1 + 24) != 1684890161)
  {
    v48 = theBuffer;
    v49 = 0;
    v47 = DataLength;
    goto LABEL_42;
  }

  v51 = a4;
  v29 = CMBlockBufferGetDataLength(theBuffer);
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = 0;
    while (1)
    {
      dataPointerOut = 0;
      lengthAtOffsetOut = 0;
      DataPointer = CMBlockBufferGetDataPointer(theBuffer, v32, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (DataPointer)
      {
        v19 = DataPointer;
        goto LABEL_45;
      }

      if (lengthAtOffsetOut)
      {
        break;
      }

LABEL_33:
      v32 += lengthAtOffsetOut;
      if (v32 >= v30)
      {
        v36 = 0;
        goto LABEL_35;
      }
    }

    v34 = dataPointerOut;
    v35 = v31;
    v36 = v32 - 1;
    v37 = lengthAtOffsetOut;
    while (1)
    {
      v39 = *v34++;
      v38 = v39;
      if (v35 && v38 == 218)
      {
        break;
      }

      v35 = v38 == 255;
      ++v36;
      if (!--v37)
      {
        v31 = v38 == 255;
        goto LABEL_33;
      }
    }

LABEL_35:
    v40 = CMBlockBufferCopyDataBytes(theBuffer, 0, v36, BaseAddress);
    a4 = v51;
    if (!v40)
    {
      BaseAddress += v36;
      if (*(a1 + 32))
      {
        *BaseAddress = -9217;
        v41 = BaseAddress + 2;
        BytePtr = CFDataGetBytePtr(*(a1 + 32));
        Length = CFDataGetLength(*(a1 + 32));
        memcpy(v41, BytePtr, Length);
        BaseAddress = &v41[CFDataGetLength(*(a1 + 32))];
      }

      if (*(a1 + 40))
      {
        *BaseAddress = -15105;
        v44 = BaseAddress + 2;
        v45 = CFDataGetBytePtr(*(a1 + 40));
        v46 = CFDataGetLength(*(a1 + 40));
        memcpy(v44, v45, v46);
        BaseAddress = &v44[CFDataGetLength(*(a1 + 40))];
      }

      v47 = DataLength - v36;
      v48 = theBuffer;
      v49 = v36;
LABEL_42:
      v19 = CMBlockBufferCopyDataBytes(v48, v49, v47, BaseAddress);
      IOSurfaceUnlock(v18, 0, 0);
      if (!v19)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v19 = v40;
  }

  else
  {
    v19 = 4294954394;
LABEL_45:
    a4 = v51;
  }

  IOSurfaceUnlock(v18, 0, 0);
LABEL_47:
  releaseJPEGInputSurface(a1 + 80, v18);
LABEL_48:
  *a4 = v18;
  return v19;
}

uint64_t releaseJPEGInputSurface(uint64_t result, const void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 72);
    FigSimpleMutexLock();
    v5 = (v3 + 16);
    v6 = 3;
    while (!*v5 || *(v5 - 2) != a2)
    {
      v5 += 3;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    CFRelease(a2);
    *v5 = 0;
LABEL_9:
    v7 = *(v3 + 72);

    return FigSimpleMutexUnlock();
  }

  return result;
}

void jpeg_createSupportedPropertyDictionary()
{
  v30 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v24 = 0;
  valuePtr = 0;
  v18 = 1;
  v0 = *MEMORY[0x277CE2A00];
  v1 = *MEMORY[0x277CE2A18];
  v2 = *MEMORY[0x277CE29C8];
  keys = *MEMORY[0x277CE2A00];
  v26 = v2;
  v3 = *MEMORY[0x277CE29D8];
  values = v1;
  v21 = v3;
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    goto LABEL_20;
  }

  v6 = v5;
  v27 = *MEMORY[0x277CE29F8];
  v22 = v5;
  v7 = CFNumberCreate(v4, kCFNumberIntType, &v18);
  if (!v7)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    v16 = v6;
LABEL_19:
    CFRelease(v16);
    goto LABEL_20;
  }

  v8 = v7;
  v28 = *MEMORY[0x277CE29F0];
  v23 = v7;
  v9 = CFDictionaryCreate(v4, &keys, &values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v9)
  {
    v14 = 0;
    v10 = 0;
LABEL_12:
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    goto LABEL_13;
  }

  v10 = CFDictionaryCreate(v4, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v10)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v11 = *MEMORY[0x277CE2A08];
  keys = v0;
  v26 = v2;
  v12 = *MEMORY[0x277CE29D0];
  values = v11;
  v21 = v12;
  v13 = CFDictionaryCreate(v4, &keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v14 = v13;
  if (!v13)
  {
    goto LABEL_12;
  }

  v15 = *MEMORY[0x277CE26E0];
  keys = *MEMORY[0x277CE26C0];
  v26 = v15;
  values = v9;
  v21 = v10;
  v27 = *MEMORY[0x277CE2648];
  v22 = v13;
  sH1JPEGVideoDecoderSupportedPropertyDictionary = CFDictionaryCreate(v4, &keys, &values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!sH1JPEGVideoDecoderSupportedPropertyDictionary)
  {
    goto LABEL_12;
  }

LABEL_13:
  CFRelease(v6);
  CFRelease(v8);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v14)
  {
    v16 = v14;
    goto LABEL_19;
  }

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t _initalizeService()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD2898];
  v1 = IOServiceMatching("AppleJPEGDriver");
  result = IOServiceGetMatchingService(v0, v1);
  _jpegService = result;
  if (result)
  {
    v6 = 4;
    LODWORD(v7.__sig) = 0;
    if (MEMORY[0x277CB0720](result, "AppleJPEGNumCores", &v7, &v6))
    {
      v3 = 0;
    }

    else
    {
      v3 = v6 == 4;
    }

    if (v3)
    {
      sig = v7.__sig;
      _numberOfJPEGCores = v7.__sig;
    }

    else
    {
      sig = _numberOfJPEGCores;
    }

    if (sig < 2)
    {
      v7.__sig = 0;
      *v7.__opaque = 0;
      pthread_mutexattr_init(&v7);
      pthread_mutexattr_settype(&v7, 2);
      pthread_mutex_init(&_jpegLock, &v7);
      result = pthread_mutexattr_destroy(&v7);
    }

    else
    {
      result = FigSemaphoreCreate();
      _jpegSema = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _openDriverConnection()
{
  connect = 0;
  LODWORD(result) = _jpegService;
  if (_jpegService || (pthread_once(&jpegService_once, _initalizeService), result = _jpegService, _jpegService))
  {
    if (IOServiceOpen(result, *MEMORY[0x277D85F48], 0, &connect))
    {
      return 0;
    }

    else
    {
      return connect;
    }
  }

  return result;
}

uint64_t JPEGDeviceInterface_closeDriverConnection(uint64_t connect)
{
  if (connect)
  {
    return IOServiceClose(connect);
  }

  return connect;
}

uint64_t JPEGDeviceInterface_decodeJPEG(mach_port_t a1, void *inputStruct, void *outputStruct)
{
  outputStructCnt = 3488;
  if (a1)
  {
    return IOConnectCallStructMethod(a1, 7u, inputStruct, 0xDA0uLL, outputStruct, &outputStructCnt);
  }

  v6 = _openService();
  if (!v6)
  {
    return 3758097101;
  }

  v7 = v6;
  v5 = IOConnectCallStructMethod(v6, 7u, inputStruct, 0xDA0uLL, outputStruct, &outputStructCnt);
  _closeService(v7);
  return v5;
}

uint64_t _openService()
{
  if (_jpegSema)
  {
    FigSemaphoreWaitRelative();
  }

  else
  {
    pthread_mutex_lock(&_jpegLock);
  }

  v0 = _openDriverConnection();
  if (!v0)
  {
    if (_jpegSema)
    {
      FigSemaphoreSignal();
    }

    else
    {
      pthread_mutex_unlock(&_jpegLock);
    }
  }

  return v0;
}

uint64_t _closeService(io_connect_t a1)
{
  if (a1)
  {
    IOServiceClose(a1);
    v1 = vars8;
  }

  if (_jpegSema)
  {

    return FigSemaphoreSignal();
  }

  else
  {

    return pthread_mutex_unlock(&_jpegLock);
  }
}

uint64_t H1JPEGVideoDecoder_DecodeFrame()
{
  MEMORY[0x28223BE20]();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v9 = DerivedStorage;
  v10 = *(DerivedStorage + 24);
  if ((v3 & 1) != 0 || v10 != 1936355431)
  {
    if ((v3 & 1) != 0 && v10 == 1936355431)
    {
      CMSampleBufferGetDataBuffer(v5);
      v57[0] = 0;
      pixelBufferOut = 0;
      bzero(&inputStruct, 0xDA0uLL);
      bzero(outputStruct, 0xDA0uLL);
      if (!jpeg_ShouldDeliverThisFrame(v9, v5))
      {
        v27 = 0;
        v33 = 0;
        v21 = 0;
        *v1 |= 2u;
        goto LABEL_37;
      }

      Dimensions = CMVideoFormatDescriptionGetDimensions(*(v9 + 16));
      v13 = OUTLINED_FUNCTION_3();
      v15 = jpeg_checkAndMaybeUpdateOutputPixelBufferAttributes(v13, v14, *&Dimensions);
      if (!v15)
      {
        if (*(v9 + 24) == 1936355431)
        {
          while (1)
          {
            IOSurface = CMSimpleQueueDequeue(*(v9 + 216));
            if (IOSurface)
            {
              break;
            }

            v20 = *(v9 + 224);
            FigSemaphoreWaitRelative();
          }

LABEL_16:
          v21 = IOSurface;
          OUTLINED_FUNCTION_1();
          VTDecoderSessionTrace();
          v22 = OUTLINED_FUNCTION_3();
          SurfaceFromBBuf = jpeg_createSurfaceFromBBuf(v22, v23, *&Dimensions, v24);
          if (SurfaceFromBBuf)
          {
            v33 = SurfaceFromBBuf;
            v27 = v57[0];
          }

          else
          {
            v26 = malloc_type_calloc(1uLL, 0x30uLL, 0x10200402DB58FAAuLL);
            *v26 = v7;
            v27 = v57[0];
            v28 = pixelBufferOut;
            v26[1] = v57[0];
            v26[2] = v28;
            v26[3] = v21;
            *(v26 + 8) = *v1 | 1;
            v26[5] = MEMORY[0x277CB0600]();
            inputStruct = IOSurfaceGetID(v27);
            ID = IOSurfaceGetID(v21);
            Width = IOSurfaceGetWidth(v21);
            Height = IOSurfaceGetHeight(v21);
            AllocSize = IOSurfaceGetAllocSize(v27);
            v63 = IOSurfaceGetAllocSize(v21);
            v66 = 0;
            v31 = (v3 & 4) == 0 || *(v9 + 24) == 1936355431 || Dimensions.height * Dimensions.width > 345600;
            v32 = *(v9 + 76);
            v67 = v31;
            v68 = v32;
            v72 = IOSurfaceGetWidth(v21);
            v73 = IOSurfaceGetHeight(v21);
            v69 = jpeg_asyncDecodeComplete;
            v70 = v9;
            v71 = v26;
            v33 = JPEGDeviceInterface_decodeJPEG(*(v9 + 160), &inputStruct, outputStruct);
            if (!v33)
            {
              OUTLINED_FUNCTION_1();
              VTDecoderSessionTrace();
              *v1 |= 1u;
              FigAtomicAdd32();
              v27 = 0;
              v21 = 0;
              v57[0] = 0;
              pixelBufferOut = 0;
              if ((*v1 & 2) == 0)
              {
                goto LABEL_38;
              }
            }
          }

LABEL_37:
          v36 = *(v9 + 8);
          v37 = *v1;
          VTDecoderSessionEmitDecodedFrame();
LABEL_38:
          releaseJPEGInputSurface(v9 + 80, v27);
          if (pixelBufferOut)
          {
            CFRelease(pixelBufferOut);
          }

          if (v21 && *(v9 + 24) == 1936355431)
          {
            CMSimpleQueueEnqueue(*(v9 + 216), v21);
            v38 = *(v9 + 224);
            FigSemaphoreSignal();
          }

          return v33;
        }

        v16 = *MEMORY[0x277CBECE8];
        v17 = *(v9 + 8);
        PixelBufferPool = VTDecoderSessionGetPixelBufferPool();
        v15 = CVPixelBufferPoolCreatePixelBuffer(v16, PixelBufferPool, &pixelBufferOut);
        if (!v15)
        {
          IOSurface = CVPixelBufferGetIOSurface(pixelBufferOut);
          goto LABEL_16;
        }
      }

      v33 = v15;
      v27 = 0;
      v21 = 0;
      goto LABEL_37;
    }

    CMSampleBufferGetDataBuffer(v5);
    v74 = 0;
    pixelBufferOut = 0;
    bzero(&inputStruct, 0xDA0uLL);
    bzero(outputStruct, 0xDA0uLL);
    if (!jpeg_ShouldDeliverThisFrame(v9, v5))
    {
      v34 = 0;
      v33 = 0;
      *v1 |= 2u;
LABEL_49:
      v46 = *(v9 + 8);
      VTDecoderSessionEmitDecodedFrame();
      goto LABEL_50;
    }

    if (*(v9 + 240))
    {
      v34 = 0;
      goto LABEL_32;
    }

    v39 = CMVideoFormatDescriptionGetDimensions(*(v9 + 16));
    v40 = OUTLINED_FUNCTION_3();
    v42 = jpeg_checkAndMaybeUpdateOutputPixelBufferAttributes(v40, v41, *&v39);
    if (v42)
    {
      v33 = v42;
    }

    else
    {
      v43 = *(v9 + 8);
      PixelBuffer = VTDecoderSessionCreatePixelBuffer();
      if (!PixelBuffer)
      {
        OUTLINED_FUNCTION_1();
        VTDecoderSessionTrace();
        v48 = OUTLINED_FUNCTION_3();
        v51 = jpeg_createSurfaceFromBBuf(v48, v49, *&v39, v50);
        if (v51)
        {
          v33 = v51;
          v34 = pixelBufferOut;
          goto LABEL_47;
        }

        v52 = CVPixelBufferGetIOSurface(v74);
        v34 = pixelBufferOut;
        inputStruct = IOSurfaceGetID(pixelBufferOut);
        ID = IOSurfaceGetID(v52);
        Width = IOSurfaceGetWidth(v52);
        Height = IOSurfaceGetHeight(v52);
        AllocSize = IOSurfaceGetAllocSize(v34);
        v63 = IOSurfaceGetAllocSize(v52);
        v66 = 0;
        v53 = (v3 & 4) != 0 && v39.height * v39.width <= 345600;
        v54 = *(v9 + 76);
        v55 = !v53;
        v67 = v55;
        v68 = v54;
        v72 = IOSurfaceGetWidth(v52);
        v73 = IOSurfaceGetHeight(v52);
        v56 = JPEGDeviceInterface_decodeJPEG(*(v9 + 160), &inputStruct, outputStruct);
        if (v56)
        {
          v33 = v56;
          infoFlagsOut = 0;
          v35 = *(v9 + 232);
          if (v35)
          {
LABEL_33:
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 0x40000000;
            v57[2] = __jpeg_DecodeFrameSynchronously_block_invoke;
            v57[3] = &__block_descriptor_tmp_14;
            v57[4] = v9;
            v57[5] = v7;
            v33 = VTDecompressionSessionDecodeFrameWithOutputHandler(v35, v5, 0, &infoFlagsOut, v57);
            if (!v33)
            {
              OUTLINED_FUNCTION_1();
              VTDecoderSessionTrace();
LABEL_50:
              releaseJPEGInputSurface(v9 + 80, v34);
              if (v74)
              {
                CFRelease(v74);
              }

              v47 = *(v9 + 8);
              VTDecoderSessionCleanUpAfterDecode();
              return v33;
            }
          }

LABEL_47:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2();
          FigSignalErrorAtGM();
LABEL_48:
          v45 = *v1;
          goto LABEL_49;
        }

        if (!*(v9 + 240))
        {
          OUTLINED_FUNCTION_1();
          VTDecoderSessionTrace();
          v33 = 0;
          goto LABEL_48;
        }

LABEL_32:
        infoFlagsOut = 0;
        v35 = *(v9 + 232);
        if (v35)
        {
          goto LABEL_33;
        }

        v33 = 3758097084;
        goto LABEL_47;
      }

      v33 = PixelBuffer;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2();
      FigSignalErrorAtGM();
    }

    v34 = 0;
    goto LABEL_47;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2();

  return FigSignalErrorAtGM();
}

void jpeg_asyncDecodeComplete(uint64_t a1, int a2, unsigned int *a3)
{
  v24[2] = *MEMORY[0x277D85DE8];
  MEMORY[0x277CB0600]();
  v6 = *(a3 + 2);
  pixelBuffer = v6;
  if (a2)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  else if ((a3[8] & 2) == 0 && *(a1 + 24) == 1936355431 && !v6)
  {
    v7 = *MEMORY[0x277CBECE8];
    v8 = *(a1 + 8);
    PixelBufferPool = VTDecoderSessionGetPixelBufferPool();
    if (!CVPixelBufferPoolCreatePixelBuffer(v7, PixelBufferPool, &pixelBuffer))
    {
      v24[1] = 0;
      v23[1] = 0;
      IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
      Width = IOSurfaceGetWidth(IOSurface);
      Height = IOSurfaceGetHeight(IOSurface);
      v24[0] = IOSurfaceGetBytesPerRow(*(a3 + 3));
      v23[0] = IOSurfaceGetBaseAddress(*(a3 + 3));
      v22[0] = IOSurfaceGetBytesPerRowOfPlane(IOSurface, 0);
      v22[1] = IOSurfaceGetBytesPerRowOfPlane(IOSurface, 1uLL);
      v21[0] = IOSurfaceGetBaseAddressOfPlane(IOSurface, 0);
      v21[1] = IOSurfaceGetBaseAddressOfPlane(IOSurface, 1uLL);
      IOSurfaceLock(*(a3 + 3), 1u, 0);
      IOSurfaceLock(IOSurface, 0, 0);
      Copy_yuvz_444_arm(Width, Height, v24, v23, v22, v21);
      IOSurfaceUnlock(*(a3 + 3), 1u, 0);
      IOSurfaceUnlock(IOSurface, 0, 0);
    }
  }

  FigAtomicAdd32();
  v13 = *(a1 + 8);
  v14 = *a3;
  v15 = a3[8];
  VTDecoderSessionEmitDecodedFrame();
  releaseJPEGInputSurface(a1 + 80, *(a3 + 1));
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  v16 = *(a1 + 8);
  VTDecoderSessionCleanUpAfterDecode();
  v17 = *(a3 + 3);
  if (v17 && *(a1 + 24) == 1936355431)
  {
    CMSimpleQueueEnqueue(*(a1 + 216), v17);
    v18 = *(a1 + 224);
    FigSemaphoreSignal();
  }

  free(a3);
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t H1JPEGVideoDecoder_StartSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t H1JPEGVideoDecoder_StartSession_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL H1JPEGVideoDecoder_StartSession_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t H1JPEGVideoDecoder_StartSession_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t H1JPEGVideoDecoder_StartSession_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t H1JPEGVideoDecoder_StartSession_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}