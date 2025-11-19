uint64_t FigSampleBufferProcessorCreateForBarcodeScanner(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  valuePtr = 13;
  if (!a3)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v5 = *MEMORY[0x29EDB8ED8];
  FigSampleBufferProcessorGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v36 = v6;
    FigSampleBufferProcessorCreateForBarcodeScanner_cold_1();
    goto LABEL_59;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1016) = CFDictionaryCreateMutable(v5, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v8 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(*(DerivedStorage + 1016), *MEMORY[0x29EDC63C0], v8);
  if (v8)
  {
    CFRelease(v8);
  }

  v58 = 5000;
  v9 = CFNumberCreate(v5, kCFNumberSInt32Type, &v58);
  CFDictionarySetValue(*(DerivedStorage + 1016), *MEMORY[0x29EDC63D0], v9);
  if (v9)
  {
    CFRelease(v9);
  }

  v57 = 196608;
  v10 = CFNumberCreate(v5, kCFNumberCFIndexType, &v57);
  CFDictionarySetValue(*(DerivedStorage + 1016), *MEMORY[0x29EDC63B0], v10);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = MRCContextCreateWithOptions();
  *(DerivedStorage + 1024) = v11;
  CFDictionarySetValue(*(DerivedStorage + 1016), *MEMORY[0x29EDC63B8], v11);
  *(DerivedStorage + 1032) = 0u;
  *(DerivedStorage + 1048) = 0x3FF0000000000000;
  *(DerivedStorage + 1056) = 0x3FF0000000000000;
  *(DerivedStorage + 1064) = FigSimpleMutexCreate();
  *(DerivedStorage + 1200) = 0;
  *(DerivedStorage + 992) = FigSimpleMutexCreate();
  v12 = dispatch_group_create();
  *(DerivedStorage + 1008) = v12;
  if (!v12)
  {
    FigSampleBufferProcessorCreateForBarcodeScanner_cold_3();
    v36 = 4294954516;
    goto LABEL_59;
  }

  v13 = MEMORY[0x29EDB93A0];
  v14 = *MEMORY[0x29EDB93A0];
  *(DerivedStorage + 1172) = *MEMORY[0x29EDB93A0];
  v15 = *(v13 + 16);
  *(DerivedStorage + 1188) = v15;
  *(DerivedStorage + 1148) = v14;
  *(DerivedStorage + 1164) = v15;
  *(DerivedStorage + 1124) = v14;
  *(DerivedStorage + 1140) = v15;
  *(DerivedStorage + 964) = v14;
  *(DerivedStorage + 980) = v15;
  v16 = MEMORY[0x29EDB9398];
  *(DerivedStorage + 1076) = *MEMORY[0x29EDB9398];
  *(DerivedStorage + 1092) = *(v16 + 16);
  *(DerivedStorage + 1204) = 1061158912;
  *(DerivedStorage + 1208) = 0;
  *(DerivedStorage + 168) = 0;
  *(DerivedStorage + 184) = 0;
  *(DerivedStorage + 112) = 0;
  *(DerivedStorage + 58) = 1;
  if (!a2)
  {
LABEL_55:
    v36 = VTPixelTransferSessionCreate(v5, (DerivedStorage + 40));
    if (v36)
    {
      FigSampleBufferProcessorCreateForBarcodeScanner_cold_2();
      goto LABEL_59;
    }

    VTSessionSetProperty(*(DerivedStorage + 40), *MEMORY[0x29EDBCF90], *MEMORY[0x29EDB8F00]);
    VTSessionSetProperty(*(DerivedStorage + 40), *MEMORY[0x29EDBCF88], *MEMORY[0x29EDBCE00]);
    *a3 = cf;
    return v36;
  }

  Value = CFDictionaryGetValue(a2, *MEMORY[0x29EDBB328]);
  v18 = CFDictionaryGetValue(a2, @"DrawDebugInfo");
  v19 = *MEMORY[0x29EDBFEB0];
  v20 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBFEB0]);
  if (!Value || !CFStringGetCString(Value, buffer, 1024, 0))
  {
LABEL_51:
    if (v18)
    {
      *(DerivedStorage + 48) = CFBooleanGetValue(v18);
    }

    if (v20)
    {
      sbp_bcs_setProperty(cf, v19, v20);
    }

    goto LABEL_55;
  }

  v37 = v19;
  v95 = 0;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  __stringp = buffer;
  theArray = CFArrayCreateMutable(v5, 0, MEMORY[0x29EDB9000]);
  v21 = strsep(&__stringp, " \t");
  v80 = v21;
  if (!v21)
  {
    goto LABEL_46;
  }

  v22 = 0;
  v23 = 0;
  do
  {
    if (*v21)
    {
      ++v23;
      if (v22 > 231)
      {
        break;
      }

      v22 += 8;
    }

    v21 = strsep(&__stringp, " \t");
    (&v80)[v22 / 8] = v21;
  }

  while (v21);
  if (v23 < 1)
  {
LABEL_46:
    v19 = v37;
    if (theArray)
    {
      if (CFArrayGetCount(theArray) >= 1 && *(DerivedStorage + 1016))
      {
        FigSimpleMutexLock();
        CFDictionarySetValue(*(DerivedStorage + 1016), *MEMORY[0x29EDC63D8], theArray);
        FigSimpleMutexUnlock();
      }

      CFRelease(theArray);
    }

    goto LABEL_51;
  }

  v54 = *MEMORY[0x29EDC6458];
  v53 = *MEMORY[0x29EDC6460];
  v52 = *MEMORY[0x29EDC6490];
  v51 = *MEMORY[0x29EDC6420];
  v50 = *MEMORY[0x29EDC6430];
  v49 = *MEMORY[0x29EDC6428];
  v48 = *MEMORY[0x29EDC6438];
  v47 = *MEMORY[0x29EDC6440];
  v46 = *MEMORY[0x29EDC6418];
  v45 = *MEMORY[0x29EDC6448];
  v44 = *MEMORY[0x29EDC6468];
  v42 = *MEMORY[0x29EDC6478];
  v43 = *MEMORY[0x29EDC6470];
  v40 = *MEMORY[0x29EDC6488];
  v41 = *MEMORY[0x29EDC6450];
  v38 = *MEMORY[0x29EDC6480];
  v39 = *MEMORY[0x29EDC6410];
  v24 = v23;
  while (1)
  {
    *v56[0].i8 = v24;
    v25 = SDWORD1(v24);
    v26 = (&v80)[SDWORD1(v24)];
    v27 = strcmp(v26, "-pixelFormat");
    if (v56[0].i32[0] != 1 && !v27)
    {
      v28 = (&v80)[v25 + 1];
      if (!strcmp(v28, "420v"))
      {
        v30 = 875704438;
      }

      else
      {
        v29 = strcmp(v28, "420f");
        v30 = 875704422;
        if (v29)
        {
          goto LABEL_58;
        }
      }

      *(DerivedStorage + 1200) = v30;
      goto LABEL_35;
    }

    if (!strcmp(v26, "-drawDebugInfo"))
    {
      *(DerivedStorage + 48) = 1;
LABEL_38:
      *(&v24 + 1) = v56[1];
      *&v24 = vadd_s32(v56[0], 0x1FFFFFFFFLL);
      goto LABEL_39;
    }

    if (!strcmp(v26, "-list"))
    {
      values = v54;
      v63 = v53;
      v64 = v52;
      v65 = v51;
      v66 = v50;
      v67 = v49;
      v68 = v48;
      v69 = v47;
      v70 = v46;
      v71 = v45;
      v72 = v44;
      v73 = v43;
      v74 = v42;
      v75 = v41;
      v76 = v40;
      v77 = v39;
      v78 = v38;
      puts("Symbologies usable with -symbology:");
      for (i = 0; i != 136; i += 8)
      {
        v61 = 0;
        CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
        printf("\t%s\n", CStringPtrAndBufferToFree);
        free(v61);
      }

      goto LABEL_38;
    }

    if (strcmp(v26, "-symbology"))
    {
      break;
    }

    v34 = CFStringCreateWithCString(v5, (&v80)[v25 + 1], 0x8000100u);
    CFArrayAppendValue(theArray, v34);
    if (v34)
    {
      CFRelease(v34);
    }

LABEL_35:
    *(&v24 + 1) = v56[1];
    *&v24 = vadd_s32(v56[0], 0x2FFFFFFFELL);
LABEL_39:
    if (v24 <= 0)
    {
      goto LABEL_46;
    }
  }

  if (!strcmp(v26, "-allSymbologies"))
  {
    values = v54;
    v63 = v53;
    v64 = v52;
    v65 = v51;
    v66 = v50;
    v67 = v49;
    v68 = v48;
    v69 = v47;
    v70 = v46;
    v71 = v45;
    v72 = v44;
    v73 = v43;
    v74 = v42;
    v75 = v41;
    v76 = v40;
    v77 = v39;
    v78 = v38;
    v31 = CFArrayCreate(v5, &values, 17, MEMORY[0x29EDB9000]);
    v98.length = CFArrayGetCount(v31);
    v98.location = 0;
    CFArrayAppendArray(theArray, v31, v98);
    if (v31)
    {
      CFRelease(v31);
    }

    goto LABEL_38;
  }

LABEL_58:
  fig_log_get_emitter();
  v36 = 4294954514;
  FigDebugAssert3();
LABEL_59:
  if (cf)
  {
    CFRelease(cf);
  }

  return v36;
}

uint64_t sbp_bcs_setProperty(uint64_t a1, const void *a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 16))
  {
    v6 = DerivedStorage;
    if (CFEqual(a2, *MEMORY[0x29EDBFEB0]))
    {
      if (a3)
      {
        TypeID = CFArrayGetTypeID();
        if (TypeID == CFGetTypeID(a3))
        {
          if (*(v6 + 1016))
          {
            if (CFArrayGetCount(a3) < 1)
            {
              v19 = 0;
            }

            else
            {
              v8 = 0;
              v9 = 0;
              v10 = *MEMORY[0x29EDC6410];
              v11 = *MEMORY[0x29EDC6488];
              v12 = *MEMORY[0x29EDC6450];
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(a3, v8);
                if (CFEqual(ValueAtIndex, v10) || CFEqual(ValueAtIndex, v11))
                {
                  v9 = 1;
                }

                else if (CFEqual(ValueAtIndex, v12))
                {
                  v9 = 1;
                }

                ++v8;
              }

              while (CFArrayGetCount(a3) > v8);
              v19 = v9 != 0;
            }

            FigSimpleMutexLock();
            CFDictionarySetValue(*(v6 + 1016), *MEMORY[0x29EDC63D8], a3);
            FigSimpleMutexUnlock();
            if (*(v6 + 112) != 0 || v19)
            {
              v20 = 10;
            }

            else
            {
              v20 = 0;
            }

            LODWORD(rect.origin.x) = v20;
            v21 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, &rect);
            CFDictionarySetValue(*(v6 + 1016), *MEMORY[0x29EDC63C8], v21);
            if (v21)
            {
              CFRelease(v21);
            }
          }

          return 0;
        }
      }
    }

    else if (CFEqual(a2, *MEMORY[0x29EDBFE88]))
    {
      if (a3)
      {
        v14 = CFDictionaryGetTypeID();
        if (v14 == CFGetTypeID(a3))
        {
          v15 = *(MEMORY[0x29EDB90E0] + 16);
          v29 = *MEMORY[0x29EDB90E0];
          rect.origin = *MEMORY[0x29EDB90E0];
          v28 = v15;
          rect.size = v15;
          if (!CGRectMakeWithDictionaryRepresentation(a3, &rect))
          {
            fig_log_get_emitter();
            return FigSignalErrorAtGM();
          }

          v32.origin.x = 0.0;
          v32.origin.y = 0.0;
          v32.size.width = 1.0;
          v32.size.height = 1.0;
          if (CGRectIntersectsRect(rect, v32))
          {
            v33.origin.x = 0.0;
            v33.origin.y = 0.0;
            v33.size.width = 1.0;
            v33.size.height = 1.0;
            rect = CGRectIntersection(rect, v33);
          }

          else
          {
            rect.origin = v29;
            rect.size = v28;
          }

          FigSimpleMutexLock();
          size = rect.size;
          *(v6 + 1032) = rect.origin;
          *(v6 + 1048) = size;
          FigSimpleMutexUnlock();
          return 0;
        }
      }
    }

    else if (CFEqual(a2, *MEMORY[0x29EDBFE98]))
    {
      v16 = CFGetTypeID(a3);
      if (v16 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(a3);
        result = 0;
        *(v6 + 1209) = Value;
        *(v6 + 58) = Value == 0;
        return result;
      }
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x29EDBFEA0]))
      {
        result = *(v6 + 1024);
        if (!result)
        {
          return result;
        }

        if (*(v6 + 1016))
        {
          MRCContextPreflightForDecoderUsingOptions();
        }

        return 0;
      }

      if (CFEqual(a2, *MEMORY[0x29EDBFEA8]))
      {
        v22 = MEMORY[0x29EDB9398];
        v23 = *MEMORY[0x29EDB9398];
        *(v6 + 1076) = *MEMORY[0x29EDB9398];
        v24 = *(v22 + 16);
        *(v6 + 1092) = v24;
        *(v6 + 1100) = v23;
        *(v6 + 1116) = v24;
        *(v6 + 160) = 0;
        clearBarcodes();
        return 0;
      }

      if (!CFEqual(a2, *MEMORY[0x29EDBFE90]))
      {
        return 4294954512;
      }

      v26 = CFGetTypeID(a3);
      if (v26 == CFBooleanGetTypeID())
      {
        v27 = CFBooleanGetValue(a3);
        result = 0;
        *(v6 + 112) = v27;
        return result;
      }
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t sbp_bcs_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 0;
  if (!*(DerivedStorage + 16))
  {
    v1 = DerivedStorage;
    *(DerivedStorage + 16) = 1;
    v2 = *(DerivedStorage + 24);
    if (v2)
    {
      CVPixelBufferPoolRelease(v2);
      v1[3] = 0;
    }

    if (v1[4])
    {
      FigFormatDescriptionRelease();
      v1[4] = 0;
    }

    v3 = v1[5];
    if (v3)
    {
      VTPixelTransferSessionInvalidate(v3);
      v4 = v1[5];
      if (v4)
      {
        CFRelease(v4);
        v1[5] = 0;
      }
    }

    v5 = v1[126];
    if (v5)
    {
      dispatch_release(v5);
      v1[126] = 0;
    }

    v6 = v1[127];
    if (v6)
    {
      CFDictionaryRemoveAllValues(v6);
      v7 = v1[127];
      if (v7)
      {
        CFRelease(v7);
      }

      v1[127] = 0;
    }

    v8 = v1[128];
    if (v8)
    {
      CFRelease(v8);
      v1[128] = 0;
    }

    v9 = (v1 + 43);
    v10 = 4;
    do
    {
      v11 = *(v9 - 2);
      if (v11)
      {
        CFRelease(v11);
        *(v9 - 2) = 0;
      }

      v12 = *(v9 - 1);
      if (v12)
      {
        CFRelease(v12);
        *(v9 - 1) = 0;
      }

      if (*v9)
      {
        CFRelease(*v9);
        *v9 = 0;
      }

      v9 += 24;
      --v10;
    }

    while (v10);
    v13 = v1[23];
    if (v13)
    {
      CFRelease(v13);
      v1[23] = 0;
    }
  }

  return 0;
}

uint64_t sbp_bcs_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sbp_bcs_invalidate();
  if (*(DerivedStorage + 992))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 992) = 0;
  }

  result = *(DerivedStorage + 1064);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 1064) = 0;
  }

  return result;
}

__CFString *sbp_bcs_copyDebugDescription(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 16))
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_BarcodeScanner %p>", a1);
  return Mutable;
}

uint64_t sbp_bcs_copyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 16) && a4)
  {
    v8 = DerivedStorage;
    if (CFEqual(a2, *MEMORY[0x29EDBB330]))
    {
      Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      IOSurfacePropertiesDictionary = createIOSurfacePropertiesDictionary(0);
      v11 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      valuePtr = 875704438;
      v12 = *(v8 + 1200);
      if (v12 == 875704438 || !v12)
      {
        v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v11, v13);
        CFRelease(v13);
        v12 = *(v8 + 1200);
      }

      valuePtr = 875704422;
      if (v12 == 875704422 || !v12)
      {
        v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFArrayAppendValue(v11, v14);
        CFRelease(v14);
      }

      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96E0], v11);
      CFRelease(v11);
      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96D0], IOSurfacePropertiesDictionary);
      Value = CFDictionaryGetValue(IOSurfacePropertiesDictionary, *MEMORY[0x29EDBB140]);
      if (Value)
      {
        v20 = 0;
        CFNumberGetValue(Value, kCFNumberSInt32Type, &v20);
        PixelBufferCacheModeArray = FigCreatePixelBufferCacheModeArray();
        CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96A0], PixelBufferCacheModeArray);
        CFRelease(PixelBufferCacheModeArray);
      }

      CFRelease(IOSurfacePropertiesDictionary);
      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBFE88]))
    {
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(v8 + 1032));
      if (DictionaryRepresentation)
      {
        v18 = DictionaryRepresentation;
        result = 0;
        *a4 = v18;
        return result;
      }

      return 4294954510;
    }

    if (!CFEqual(a2, *MEMORY[0x29EDBFEB0]))
    {
      return 4294954512;
    }

    v19 = CFDictionaryGetValue(*(v8 + 1016), *MEMORY[0x29EDC63D8]);
    if (v19)
    {
      Mutable = v19;
      CFRetain(v19);
    }

    else
    {
      Mutable = CFArrayCreate(*MEMORY[0x29EDB8ED8], 0, 0, MEMORY[0x29EDB9000]);
      if (!Mutable)
      {
        return 4294954510;
      }
    }

LABEL_16:
    result = 0;
    *a4 = Mutable;
    return result;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

__CFDictionary *createIOSurfacePropertiesDictionary(int a1)
{
  IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
  if (a1)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 1280;
  }

  valuePtr = v3;
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, IOSurfacePropertiesDictionary);
  CFRelease(IOSurfacePropertiesDictionary);
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x29EDBB140], v5);
  CFRelease(v5);
  return MutableCopy;
}

uint64_t sbp_bcs_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    *DerivedStorage = a2;
    *(DerivedStorage + 8) = a3;
    return 0;
  }
}

uint64_t sbp_bcs_processSampleBuffer(void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  pixelBufferOut = 0;
  if (*(DerivedStorage + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v6 = DerivedStorage;
  v7 = CMGetAttachment(a2, *MEMORY[0x29EDBFFA0], 0);
  if (v7)
  {
    CMTimeMakeFromDictionary(&valuePtr.duration, v7);
    *(v6 + 64) = *&valuePtr.duration.value;
    epoch = valuePtr.duration.epoch;
  }

  else
  {
    memset(&valuePtr, 0, sizeof(valuePtr));
    CMSampleBufferGetSampleTimingInfoArray(a2, 1, &valuePtr, 0);
    *(v6 + 64) = *&valuePtr.presentationTimeStamp.value;
    epoch = valuePtr.presentationTimeStamp.epoch;
  }

  *(v6 + 80) = epoch;
  v9 = *(v6 + 48);
  v10 = CMBaseObjectGetDerivedStorage();
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v12 = MEMORY[0x29EDBFF98];
  v13 = MEMORY[0x29EDC0008];
  v214 = a1;
  sbuf = a2;
  v211 = v6;
  if (v9)
  {
    v14 = *(v10 + 24);
    v15 = MEMORY[0x29EDB8ED8];
    if (v14 || (CMSampleBufferGetFormatDescription(a2), v16 = FigFormatDescriptionRetain(), *(v10 + 32) = v16, valuePtr.duration.value = CMVideoFormatDescriptionGetDimensions(v16), (v14 = *(v10 + 24)) != 0))
    {
LABEL_11:
      v17 = CVPixelBufferPoolCreatePixelBuffer(*v15, v14, &pixelBufferOut);
      if (v17)
      {
        v23 = v17;
        sbp_bcs_processSampleBuffer_cold_2();
      }

      else
      {
        v18 = VTPixelTransferSessionTransferImage(*(v10 + 40), ImageBuffer, pixelBufferOut);
        if (!v18)
        {
          value = pixelBufferOut;
          if (!pixelBufferOut)
          {
            sbp_bcs_processSampleBuffer_cold_4(&pixelBufferOut, &valuePtr);
            value = valuePtr.duration.value;
          }

          PixelFormatType = CVPixelBufferGetPixelFormatType(value);
          Width = CVPixelBufferGetWidth(value);
          if ((Width & 0xF) != 0)
          {
            v22 = v12;
LABEL_17:
            fig_log_get_emitter();
            FigSignalErrorAtGM();
            fig_log_get_emitter();
            v23 = FigSignalErrorAtGM();
            v12 = v22;
            goto LABEL_18;
          }

          if ((PixelFormatType & 0xFFFFFFEF) == 0x34323066)
          {
            if (CVPixelBufferGetBytesPerRowOfPlane(value, 0) != Width)
            {
              v22 = v12;
              goto LABEL_17;
            }
          }

          else
          {
            if (PixelFormatType != 2033463856 && PixelFormatType != 1714696752)
            {
              v22 = v12;
              goto LABEL_17;
            }

            if (CVPixelBufferGetBytesPerRowOfPlane(value, 0) != Width)
            {
              v22 = v12;
              goto LABEL_17;
            }
          }

          v24 = CMSampleBufferGetImageBuffer(sbuf);
          goto LABEL_19;
        }

        v23 = v18;
        sbp_bcs_processSampleBuffer_cold_3();
      }

      CMSampleBufferGetImageBuffer(sbuf);
      goto LABEL_266;
    }

    cf = (v10 + 24);
    v223 = ImageBuffer;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    LODWORD(t1.a) = CMFormatDescriptionGetMediaSubType(v16);
    *&time2.a = 3;
    LODWORD(v247.a) = 0;
    LODWORD(v242.a) = 0;
    LODWORD(rect.origin.x) = 64;
    LODWORD(v243.origin.x) = 64;
    v32 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    v33 = CFNumberCreate(0, kCFNumberSInt32Type, &t1);
    CFArrayAppendValue(v32, v33);
    CFRelease(v33);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96E0], v32);
    CFRelease(v32);
    v34 = *v15;
    v35 = CFNumberCreate(*v15, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB9750], v35);
    CFRelease(v35);
    v36 = CFNumberCreate(v34, kCFNumberSInt32Type, &valuePtr.duration.value + 4);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96C8], v36);
    CFRelease(v36);
    IOSurfacePropertiesDictionary = createIOSurfacePropertiesDictionary(1);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96D0], IOSurfacePropertiesDictionary);
    v38 = CFDictionaryGetValue(IOSurfacePropertiesDictionary, *MEMORY[0x29EDBB140]);
    if (v38)
    {
      LODWORD(values[0]) = 0;
      CFNumberGetValue(v38, kCFNumberSInt32Type, values);
      PixelBufferCacheModeArray = FigCreatePixelBufferCacheModeArray();
      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96A0], PixelBufferCacheModeArray);
      CFRelease(PixelBufferCacheModeArray);
    }

    CFRelease(IOSurfacePropertiesDictionary);
    LODWORD(v247.a) = ((LODWORD(valuePtr.duration.value) + 15) & 0xFFFFFFF0) - LODWORD(valuePtr.duration.value);
    v40 = (v10 + 24);
    if (LODWORD(v247.a))
    {
      v41 = CFNumberCreate(v34, kCFNumberSInt32Type, &v247);
      CFDictionarySetValue(Mutable, *MEMORY[0x29EDB96C0], v41);
      CFRelease(v41);
    }

    LODWORD(v242.a) = ((HIDWORD(valuePtr.duration.value) + 15) & 0xFFFFFFF0) - HIDWORD(valuePtr.duration.value);
    if (LODWORD(v242.a))
    {
      v42 = CFNumberCreate(v34, kCFNumberSInt32Type, &v242);
      CFDictionarySetValue(Mutable, *MEMORY[0x29EDB96B0], v42);
      CFRelease(v42);
    }

    v43 = CFNumberCreate(v34, kCFNumberSInt32Type, &rect);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB96E8], v43);
    CFRelease(v43);
    v44 = CFNumberCreate(v34, kCFNumberSInt32Type, &v243);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB9698], v44);
    CFRelease(v44);
    v45 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v46 = CFNumberCreate(0, kCFNumberCFIndexType, &time2);
    CFDictionaryAddValue(v45, *MEMORY[0x29EDB96F0], v46);
    CFRelease(v46);
    v47 = CVPixelBufferPoolCreate(v34, v45, Mutable, cf);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v45)
    {
      CFRelease(v45);
    }

    if (v47)
    {
      fig_log_get_emitter();
      FigDebugAssert3();
      v6 = v211;
      v12 = MEMORY[0x29EDBFF98];
    }

    else
    {
      if (SLODWORD(time2.a) < 1)
      {
        PixelBuffer = 0;
        v6 = v211;
        v12 = MEMORY[0x29EDBFF98];
      }

      else
      {
        v48 = v15;
        v49 = *cf;
        v50 = LODWORD(time2.a) & 0x7FFFFFFF;
        v51 = 8 * v50;
        v52 = malloc_type_malloc(v51, 0x2004093837F09uLL);
        if (v52)
        {
          v53 = v52;
          bzero(v52, v51);
          v54 = v53;
          v55 = v50;
          while (1)
          {
            PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(v34, v49, v54);
            if (PixelBuffer)
            {
              break;
            }

            ++v54;
            if (!--v55)
            {
              goto LABEL_56;
            }
          }

          sbp_bcs_processSampleBuffer_cold_1();
LABEL_56:
          v57 = 0;
          v6 = v211;
          v12 = MEMORY[0x29EDBFF98];
          do
          {
            CVPixelBufferRelease(v53[v57++]);
          }

          while (v50 != v57);
          free(v53);
          v15 = v48;
          v40 = (v10 + 24);
        }

        else
        {
          PixelBuffer = -12786;
          v6 = v211;
          v12 = MEMORY[0x29EDBFF98];
          v15 = v48;
        }
      }

      fprintf(*MEMORY[0x29EDCA610], "Configuration: BarcodeScanner Output Pool: (%d x %d)\n", LODWORD(valuePtr.duration.value), HIDWORD(valuePtr.duration.value));
      if (!PixelBuffer)
      {
        v14 = *v40;
        ImageBuffer = v223;
        goto LABEL_11;
      }
    }

    fig_log_get_emitter();
    v23 = FigSignalErrorAtGM();
LABEL_18:
    v24 = CMSampleBufferGetImageBuffer(sbuf);
    if (!v23)
    {
LABEL_19:
      v25 = v24;
      goto LABEL_76;
    }

LABEL_266:
    sbp_bcs_processSampleBuffer_cold_5();
    goto LABEL_123;
  }

  if (*(v10 + 58))
  {
    v26 = CMGetAttachment(a2, @"PreviewBuffer", 0);
    if (v26)
    {
      v27 = CMGetAttachment(a2, *v12, 0);
      CFDictionaryRemoveValue(v27, *v13);
    }
  }

  else
  {
    v26 = 0;
  }

  if (ImageBuffer)
  {
    _ZF = v26 == 0;
  }

  else
  {
    _ZF = 0;
  }

  if (_ZF)
  {
    v25 = ImageBuffer;
  }

  else
  {
    v25 = v26;
  }

  pixelBufferOut = CVPixelBufferRetain(v25);
  if (!*(v6 + 49))
  {
    *(v6 + 49) = 1;
    LODWORD(valuePtr.duration.value) = 0;
    v29 = CMGetAttachment(v25, @"RotationDegrees", 0);
    if (v29)
    {
      CFNumberGetValue(v29, kCFNumberIntType, &valuePtr);
      v30 = valuePtr.duration.value;
    }

    else
    {
      v30 = 0;
    }

    *(v6 + 52) = v30;
    v58 = CMGetAttachment(v25, @"MirroredHorizontal", 0);
    if (!v58 || (v59 = v58, v60 = CFGetTypeID(v58), v60 != CFBooleanGetTypeID()))
    {
      v61 = CMGetAttachment(v25, @"Mirrored", 0);
      if (!v61)
      {
LABEL_69:
        *(v6 + 56) = v61;
        v63 = CMGetAttachment(v25, @"MirroredVertical", 0);
        if (v63)
        {
          v64 = v63;
          v65 = CFGetTypeID(v63);
          if (v65 == CFBooleanGetTypeID())
          {
            LOBYTE(v63) = CFBooleanGetValue(v64);
          }

          else
          {
            LOBYTE(v63) = 0;
          }
        }

        *(v6 + 57) = v63;
        if (*(v6 + 52) == 180 && CMGetAttachment(v25, @"Mirrored", 0))
        {
          v66 = *(v6 + 56);
          *(v6 + 56) = *(v6 + 57);
          *(v6 + 57) = v66;
        }

        goto LABEL_76;
      }

      v59 = v61;
      v62 = CFGetTypeID(v61);
      if (v62 != CFBooleanGetTypeID())
      {
        LOBYTE(v61) = 0;
        goto LABEL_69;
      }
    }

    LOBYTE(v61) = CFBooleanGetValue(v59);
    goto LABEL_69;
  }

LABEL_76:
  if (!*(v6 + 184))
  {
    Height = CVPixelBufferGetHeight(v25);
    v68 = Height <= CVPixelBufferGetWidth(v25) ? CVPixelBufferGetWidth(v25) : CVPixelBufferGetHeight(v25);
    if (v68 > 0x4FF || *(v6 + 168))
    {
      v69 = ensurePyramidArray(v25, (v6 + 176), (v6 + 172), (v6 + 184));
      if (v69)
      {
        v23 = v69;
        sbp_bcs_processSampleBuffer_cold_6();
        goto LABEL_123;
      }
    }
  }

  v70 = *v12;
  v71 = CMGetAttachment(sbuf, *v12, 0);
  if (!v71 && !*(v6 + 48))
  {
    if (v25)
    {
      CFRelease(v25);
    }

    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  if (!FigCFDictionaryGetCGRectIfPresent())
  {
    v72 = *(MEMORY[0x29EDB90E0] + 16);
    *(v6 + 120) = *MEMORY[0x29EDB90E0];
    *(v6 + 136) = v72;
  }

  v206 = v70;
  v73 = CMGetAttachment(sbuf, *MEMORY[0x29EDBFFC0], 0);
  if (v73 && (v74 = v73, v75 = CFGetTypeID(v73), v75 == CFBooleanGetTypeID()) && CFBooleanGetValue(v74) && ((v76 = CMBaseObjectGetDerivedStorage(), v77 = v76, *(v76 + 112)) || !dispatch_group_wait(*(v76 + 1008), 0)))
  {
    *(v77 + 1000) = CVPixelBufferRetain(v25);
    *(v77 + 1148) = *(v77 + 64);
    *(v77 + 1164) = *(v77 + 80);
    if (*(v77 + 112))
    {
      detectBarcodesInFrame(v214);
    }

    else
    {
      v200 = *(v77 + 1008);
      global_queue = dispatch_get_global_queue(2, 0);
      dispatch_group_async_f(v200, global_queue, v214, detectBarcodesInFrame);
    }

    v78 = 0;
  }

  else
  {
    v78 = 1;
  }

  v79 = CMBaseObjectGetDerivedStorage();
  v80 = CMGetAttachment(sbuf, *MEMORY[0x29EDBFFD0], 0);
  v81 = CMGetAttachment(sbuf, *MEMORY[0x29EDBFFD8], 0);
  if (v80)
  {
    v82 = v81;
    if (v81)
    {
      CFNumberGetValue(v80, kCFNumberFloatType, (v79 + 152));
      CFNumberGetValue(v82, kCFNumberFloatType, (v79 + 156));
      *(v79 + 160) = vadd_f32(*(v79 + 152), *(v79 + 160));
      *(v79 + 1124) = *(v79 + 64);
      *(v79 + 1140) = *(v79 + 80);
    }
  }

  v83 = CMBaseObjectGetDerivedStorage();
  v84 = CMGetAttachment(sbuf, *MEMORY[0x29EDBFFE0], 0);
  if (!v84 || (v85 = v84, v86 = CFGetTypeID(v84), v86 != CFBooleanGetTypeID()) || CFBooleanGetValue(v85))
  {
    if (*(v83 + 1088))
    {
      goto LABEL_107;
    }

    *(v83 + 1076) = *(v83 + 64);
    *(v83 + 1092) = *(v83 + 80);
    v87 = v83 + 1100;
    v88 = MEMORY[0x29EDB9398];
    *(v83 + 1100) = *MEMORY[0x29EDB9398];
    v89 = *(v88 + 16);
    goto LABEL_106;
  }

  v198 = MEMORY[0x29EDB9398];
  *(v83 + 1076) = *MEMORY[0x29EDB9398];
  *(v83 + 1092) = *(v198 + 16);
  *(v83 + 160) = 0;
  if (!*(v83 + 112))
  {
    goto LABEL_239;
  }

  v87 = v83 + 1100;
  if ((*(v83 + 1112) & 1) == 0)
  {
    *v87 = *(v83 + 64);
    v89 = *(v83 + 80);
LABEL_106:
    *(v87 + 16) = v89;
    goto LABEL_107;
  }

  *&time2.a = *(v83 + 64);
  time2.c = *(v83 + 80);
  *&t1.a = *v87;
  t1.c = *(v83 + 1116);
  CMTimeSubtract(&valuePtr.duration, &time2, &t1);
  CMTimeMake(&time2, 300, 1000);
  if (CMTimeCompare(&valuePtr.duration, &time2) >= 1)
  {
LABEL_239:
    clearBarcodes();
  }

LABEL_107:
  if (!*(v6 + 48))
  {
    v238 = 0;
    sbp_bcs_updateBarcodeLocations(v214, pixelBufferOut, &v238);
    if (v78)
    {
      goto LABEL_120;
    }

    goto LABEL_119;
  }

  v90 = pixelBufferOut;
  v91 = CMBaseObjectGetDerivedStorage();
  v92 = CVPixelBufferGetWidth(v90);
  v93 = CVPixelBufferGetHeight(v90);
  v94 = CVPixelBufferLockBaseAddress(v90, 0);
  if (v94)
  {
    v23 = v94;
    sbp_bcs_processSampleBuffer_cold_7();
    v6 = v211;
    goto LABEL_123;
  }

  *&valuePtr.duration.value = *(v91 + 1124);
  valuePtr.duration.epoch = *(v91 + 1140);
  *&time2.a = *(v91 + 64);
  time2.c = *(v91 + 80);
  if (CMTimeCompare(&valuePtr.duration, &time2))
  {
    v95 = v92;
    v232 = v92;
    v96 = v92 / 10;
    v97 = 8 * v95 / 10;
    FigDrawLumaRectangle(v90, v96, v93 / 10, v97, 8 * v93 / 10, 20);
    FigDrawLumaRectangle(v90, v96 - 2, v93 / 10 - 2, v97 + 4, 8 * v93 / 10 + 4, 240);
    FigDrawLumaRectangle(v90, v232 / 2 - 10, v93 / 2 - 10, 20, 20, 255);
    FigDrawLumaRectangle(v90, (*(v91 + 152) + (v232 / 2 - 10)), (*(v91 + 156) + (v93 / 2 - 10)), 20, 20, 0);
  }

  CVPixelBufferUnlockBaseAddress(v90, 0);
  if ((v78 & 1) == 0)
  {
    v98 = pixelBufferOut;
    v99 = CMBaseObjectGetDerivedStorage();
    v100 = CVPixelBufferGetWidth(v98);
    v101 = CVPixelBufferGetHeight(v98);
    v102 = CVPixelBufferLockBaseAddress(v98, 0);
    v6 = v211;
    if (v102)
    {
      v23 = v102;
      sbp_bcs_processSampleBuffer_cold_8();
      goto LABEL_123;
    }

    v257.origin.x = 0.0;
    v257.origin.y = 0.0;
    v257.size.width = 1.0;
    v257.size.height = 1.0;
    if (CGRectEqualToRect(*(v99 + 1032), v257))
    {
      FigDraw420Line(v98, 0, v101 / 2, v100 - 1, v101 / 2, 224, 38, 201);
      FigDraw420Line(v98, v100 / 2, 0, v100 / 2, v101 - 1, 224, 38, 201);
    }

    CVPixelBufferUnlockBaseAddress(v98, 0);
    v238 = 0;
    sbp_bcs_updateBarcodeLocations(v214, pixelBufferOut, &v238);
LABEL_119:
    *(v6 + 160) = 0;
    goto LABEL_120;
  }

  v238 = 0;
  sbp_bcs_updateBarcodeLocations(v214, pixelBufferOut, &v238);
  v6 = v211;
LABEL_120:
  if (*(v6 + 112) && !v238)
  {
    v23 = 0;
    *(v6 + 88) = *(v6 + 64);
    *(v6 + 104) = *(v6 + 80);
LABEL_123:
    ++*(v6 + 60);
    goto LABEL_255;
  }

  v103 = pixelBufferOut;
  v104 = CMBaseObjectGetDerivedStorage();
  v105 = CVPixelBufferGetWidth(v103);
  v106 = CVPixelBufferGetHeight(v103);
  if (!v71)
  {
    v107 = *MEMORY[0x29EDB8ED8];
    v108 = sbuf;
    goto LABEL_128;
  }

  v107 = *MEMORY[0x29EDB8ED8];
  v108 = sbuf;
  if (*(v104 + 1209))
  {
LABEL_128:
    MutableCopy = CFDictionaryCreateMutable(v107, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    goto LABEL_129;
  }

  Count = CFDictionaryGetCount(v71);
  MutableCopy = CFDictionaryCreateMutableCopy(v107, Count + 1, v71);
LABEL_129:
  theDict = MutableCopy;
  memset(&valuePtr, 0, sizeof(valuePtr));
  allocator = v107;
  v111 = CFArrayCreateMutable(v107, 4, MEMORY[0x29EDB9000]);
  if (CMSampleBufferGetSampleTimingInfoArray(v108, 1, &valuePtr, 0))
  {
    v245 = *MEMORY[0x29EDB9398];
    v112 = *(MEMORY[0x29EDB9398] + 16);
  }

  else
  {
    v245 = *&valuePtr.presentationTimeStamp.value;
    v112 = *&valuePtr.presentationTimeStamp.epoch;
  }

  v246 = v112;
  *&time2.a = v245;
  time2.c = v112;
  v216 = CMTimeCopyAsDictionary(&time2, allocator);
  memset(&rect, 0, sizeof(rect));
  v113 = CMGetAttachment(v108, *MEMORY[0x29EDBFFA8], 0);
  __asm { FMOV            V0.2D, #1.0 }

  v220 = _Q0;
  if (v113)
  {
    CGRectMakeWithDictionaryRepresentation(v113, &rect);
    _Q0 = v220;
  }

  else
  {
    rect.origin.y = 0.0;
    rect.origin.x = 0.0;
    rect.size = _Q0;
  }

  theArray = v111;
  v243.origin.x = 0.0;
  v243.origin.y = 0.0;
  v243.size = _Q0;
  v118 = CMGetAttachment(v108, *MEMORY[0x29EDBFFB0], 0);
  if (v118)
  {
    CGRectMakeWithDictionaryRepresentation(v118, &v243);
  }

  x = v243.origin.x;
  y = v243.origin.y;
  v121 = v243.size.width;
  v122 = v243.size.height;
  *cfb = *(MEMORY[0x29EDB90A0] + 16);
  *&v242.a = *MEMORY[0x29EDB90A0];
  *v233 = *&v242.a;
  *&v242.c = *cfb;
  *&v242.tx = *(MEMORY[0x29EDB90A0] + 32);
  v224 = *&v242.tx;
  v252.origin.x = 0.0;
  v252.origin.y = 0.0;
  v252.size.width = 1.0;
  v252.size.height = 1.0;
  v123 = -CGRectGetMidX(v252);
  v253.origin.x = 0.0;
  v253.origin.y = 0.0;
  v253.size.width = 1.0;
  v253.size.height = 1.0;
  MidY = CGRectGetMidY(v253);
  CGAffineTransformMakeTranslation(&time2, v123, -MidY);
  *&t1.a = *v233;
  *&t1.c = *cfb;
  *&t1.tx = v224;
  CGAffineTransformConcat(&v242, &t1, &time2);
  CGAffineTransformMakeScale(&t1, 1.0 / v121, 1.0 / v122);
  v247 = v242;
  CGAffineTransformConcat(&time2, &v247, &t1);
  v242 = time2;
  v254.origin.x = x;
  v254.origin.y = y;
  v254.size.width = v121;
  v254.size.height = v122;
  MidX = CGRectGetMidX(v254);
  v255.origin.x = x;
  v255.origin.y = y;
  v255.size.width = v121;
  v255.size.height = v122;
  v126 = CGRectGetMidY(v255);
  CGAffineTransformMakeTranslation(&t1, MidX, v126);
  v247 = v242;
  CGAffineTransformConcat(&time2, &v247, &t1);
  v242 = time2;
  FigSimpleMutexLock();
  v127 = 0;
  v128 = v104 + 192;
  v129 = v104 + 988;
  v222 = *MEMORY[0x29EDB90B8];
  if (v105)
  {
    v130 = v106 == 0;
  }

  else
  {
    v130 = 1;
  }

  v131 = !v130;
  v218 = (2 * v106);
  v219 = (2 * v105);
  v221 = v105;
  v132 = v106;
  v210 = *MEMORY[0x29EDBFE80];
  v209 = *MEMORY[0x29EDBFE70];
  v208 = *MEMORY[0x29EDBFE60];
  v207 = *MEMORY[0x29EDBFE68];
  v133 = (v104 + 272);
  key = *MEMORY[0x29EDC63F8];
  do
  {
    v225 = v128 + 192 * v127;
    if (!*(v225 + 160) || *(v129 + v127))
    {
      goto LABEL_214;
    }

    v134 = 0;
    memset(&t1, 0, 32);
    v135 = 1;
    memset(&v247, 0, 32);
    v136 = 0.0;
    v137 = 1.0;
    v138 = v133;
    v139 = 1.0;
    v140 = 0.0;
    *values = 0u;
    v241 = 0u;
    do
    {
      if (!v131)
      {
        v144 = v222;
        goto LABEL_170;
      }

      if (*(v104 + 1208))
      {
        v141 = *(v138 - 1);
        if (*(v225 + 64))
        {
          v142 = (v141 + *(v138 - 10)) / v219;
          v143 = (*v138 + *(v138 - 9)) / v218;
        }

        else
        {
          v142 = v141 / v221;
          v143 = *v138 / v132;
        }
      }

      else
      {
        v142 = *(v138 - 1) / v221;
        v143 = *v138 / v132;
      }

      v145 = v142;
      v146 = v143;
      v147 = (v145 - rect.origin.x) / rect.size.width;
      v148 = (v146 - rect.origin.y) / rect.size.height;
      v149 = fmaxf(v147, v148);
      v151 = fminf(v147, v148) >= 0.0 && v149 <= 1.0;
      v152 = v147;
      v153 = v148;
      if (*(v104 + 56))
      {
        cfc = v148;
        v234 = v147;
        CGAffineTransformMakeTranslation(&time2, -0.5, -0.5);
        v154 = time2.tx + time2.c * cfc + time2.a * v234;
        v155 = time2.ty + time2.d * cfc + time2.b * v234;
        CGAffineTransformMakeScale(&time2, -1.0, 1.0);
        v156 = time2.tx + v155 * time2.c + time2.a * v154;
        v157 = time2.ty + v155 * time2.d + time2.b * v154;
        CGAffineTransformMakeTranslation(&time2, 0.5, 0.5);
        ty = time2.ty;
        v152 = time2.tx + v157 * time2.c + time2.a * v156;
        v159 = v157 * time2.d + time2.b * v156;
LABEL_164:
        v153 = ty + v159;
        goto LABEL_165;
      }

      if (*(v104 + 57))
      {
        cfd = v148;
        v235 = v147;
        CGAffineTransformMakeTranslation(&time2, -0.5, -0.5);
        v160 = time2.tx + time2.c * cfd + time2.a * v235;
        v161 = time2.ty + time2.d * cfd + time2.b * v235;
        CGAffineTransformMakeScale(&time2, 1.0, -1.0);
        v162 = time2.tx + v161 * time2.c + time2.a * v160;
        v163 = time2.ty + v161 * time2.d + time2.b * v160;
        CGAffineTransformMakeTranslation(&time2, 0.5, 0.5);
        ty = time2.ty;
        v152 = time2.tx + v163 * time2.c + time2.a * v162;
        v159 = v163 * time2.d + time2.b * v162;
        goto LABEL_164;
      }

LABEL_165:
      v164 = *(v104 + 52);
      if (v164)
      {
        v165 = -v164 * 3.14159265 / 180.0;
        cfe = v153;
        v236 = v152;
        CGAffineTransformMakeTranslation(&time2, -0.5, -0.5);
        v166 = time2.tx + cfe * time2.c + time2.a * v236;
        v167 = time2.ty + cfe * time2.d + time2.b * v236;
        CGAffineTransformMakeRotation(&time2, v165);
        v168 = time2.tx + v167 * time2.c + time2.a * v166;
        v169 = time2.ty + v167 * time2.d + time2.b * v166;
        CGAffineTransformMakeTranslation(&time2, 0.5, 0.5);
        v152 = time2.tx + v169 * time2.c + time2.a * v168;
        v153 = time2.ty + v169 * time2.d + time2.b * v168;
      }

      v135 &= v151;
      v144 = vaddq_f64(*&v242.tx, vmlaq_n_f64(vmulq_n_f64(*&v242.c, v153), *&v242.a, v152));
      v170.f64[0] = *(v104 + 136);
      if (v170.f64[0] != 0.0 && *(v104 + 144) != 0.0)
      {
        v170.f64[1] = *(v104 + 144);
        v171 = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(v220, v170)));
        __asm { FMOV            V3.2D, #0.5 }

        v173.f64[1] = v171.f64[1];
        v173.f64[0] = 0.0;
        v144 = vaddq_f64(vmulq_f64(vsubq_f64(v220, v171), _Q3), vmlaq_n_f64(vmulq_laneq_f64(v173, v144, 1), *&v171.f64[0], v144.x));
      }

LABEL_170:
      if (v144.x < v137)
      {
        v137 = v144.x;
      }

      if (v144.x > v136)
      {
        v136 = v144.x;
      }

      v174 = v144.y;
      if (v144.y < v139)
      {
        v139 = v144.y;
      }

      if (v144.y > v140)
      {
        v140 = v144.y;
      }

      values[v134++] = CGPointCreateDictionaryRepresentation(v144);
      v138 += 2;
    }

    while (v134 != 4);
    *(v225 + 64) = 0;
    v175 = CFArrayCreate(allocator, values, 4, MEMORY[0x29EDB9000]);
    for (i = 0; i != 4; ++i)
    {
      v177 = values[i];
      if (v177)
      {
        CFRelease(v177);
      }
    }

    v256.origin.x = v137;
    v256.origin.y = v139;
    v256.size.width = (v136 - v137);
    v256.size.height = (v140 - v139);
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v256);
    v179 = *(v225 + 152);
    if (v216)
    {
      v180 = DictionaryRepresentation == 0;
    }

    else
    {
      v180 = 1;
    }

    v183 = !v180 && v175 != 0 && *&v179 != 0;
    v237 = v175;
    cfa = DictionaryRepresentation;
    if ((v183 & v135) == 1)
    {
      t1.a = v210;
      t1.b = v209;
      t1.c = v208;
      t1.d = v207;
      *&v247.a = v216;
      *&v247.b = DictionaryRepresentation;
      *&v247.c = v175;
      v247.d = v179;
      v184 = CFDictionaryCreate(allocator, &t1, &v247, 4, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    }

    else
    {
      v184 = 0;
    }

    if (*(v104 + 48))
    {
      v185 = MRCDescriptorCreateWithAttributes();
      v186 = MRCDescriptorCopyAttributes();
      v187 = MRCDescriptorDecodePayload();
      CFDictionaryGetValue(v186, key);
      if (v185)
      {
        CFRelease(v185);
      }

      if (v186)
      {
        CFRelease(v186);
      }

      if (v187)
      {
        CFRelease(v187);
      }
    }

    if (v184)
    {
      CFArrayAppendValue(theArray, v184);
    }

    if (cfa)
    {
      CFRelease(cfa);
    }

    if (v237)
    {
      CFRelease(v237);
    }

    if (v184)
    {
      CFRelease(v184);
    }

    v129 = v104 + 988;
    v128 = v104 + 192;
LABEL_214:
    ++v127;
    v133 += 24;
  }

  while (v127 != 4);
  FigSimpleMutexUnlock();
  v188 = theDict;
  CFDictionaryAddValue(theDict, *MEMORY[0x29EDBFE78], theArray);
  if (theArray)
  {
    CFRelease(theArray);
  }

  v189 = v211;
  if (v216)
  {
    CFRelease(v216);
  }

  v190 = pixelBufferOut;
  if (!pixelBufferOut)
  {
    goto LABEL_252;
  }

  v191 = CMBaseObjectGetDerivedStorage();
  memset(&valuePtr, 0, sizeof(valuePtr));
  if (!*v191)
  {
    goto LABEL_251;
  }

  v192 = v191;
  t1.a = 0.0;
  if (!*(v191 + 48))
  {
    if (!*(v191 + 1209))
    {
      *&t1.a = sbuf;
      goto LABEL_241;
    }

    SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(sbuf, 1, &valuePtr, 0);
    if (!SampleTimingInfoArray)
    {
      CMSampleBufferCreate(*MEMORY[0x29EDB8ED8], 0, 1u, 0, 0, 0, 0, 1, &valuePtr, 0, 0, &t1);
      goto LABEL_241;
    }

    v23 = SampleTimingInfoArray;
    sbp_bcs_processSampleBuffer_cold_12();
    goto LABEL_274;
  }

  v193 = CMSampleBufferGetSampleTimingInfoArray(sbuf, 1, &valuePtr, 0);
  if (v193)
  {
    v23 = v193;
    sbp_bcs_processSampleBuffer_cold_9();
LABEL_274:
    fig_log_get_emitter();
    FigDebugAssert3();
    v189 = v211;
    v188 = theDict;
    goto LABEL_253;
  }

  time2.a = 0.0;
  v194 = *MEMORY[0x29EDB8ED8];
  if (CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x29EDB8ED8], v190, &time2))
  {
    sbp_bcs_processSampleBuffer_cold_10();
    v195 = 0;
    v197 = sbuf;
  }

  else
  {
    v195 = 1;
    v196 = CMSampleBufferCreateForImageBuffer(v194, v190, 1u, 0, 0, *&time2.a, &valuePtr, &t1);
    v197 = sbuf;
    if (v196)
    {
      sbp_bcs_processSampleBuffer_cold_11();
      v195 = 0;
    }
  }

  if (*&time2.a)
  {
    CFRelease(*&time2.a);
  }

  if (v195)
  {
    CMPropagateAttachments(v197, *&t1.a);
  }

LABEL_241:
  a = t1.a;
  if (theDict)
  {
    CMSetAttachment(*&t1.a, v206, theDict, 1u);
    a = t1.a;
  }

  if (a != 0.0)
  {
    if (*(v192 + 1209))
    {
      v203 = 0;
    }

    else
    {
      v203 = *(v192 + 48) == 0;
    }

    v204 = CMBaseObjectGetDerivedStorage();
    if (*v204)
    {
      (*v204)(*(v204 + 8), 0, COERCE_CGFLOAT(*&a));
    }

    if (!v203)
    {
      CFRelease(*&a);
    }
  }

LABEL_251:
  CFRelease(pixelBufferOut);
  pixelBufferOut = 0;
LABEL_252:
  v23 = 0;
  *(v211 + 88) = *(v211 + 64);
  *(v211 + 104) = *(v211 + 80);
LABEL_253:
  ++*(v189 + 60);
  if (v188)
  {
    CFRelease(v188);
  }

LABEL_255:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v23;
}

uint64_t sbp_bcs_finishPendingProcessing()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    dispatch_group_wait(*(DerivedStorage + 1008), 0xFFFFFFFFFFFFFFFFLL);
    return 0;
  }
}

uint64_t sbp_bcs_purgeResources()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    if (*(DerivedStorage + 1024))
    {
      MRCContextPurge();
    }

    return 0;
  }
}

uint64_t ensurePyramidArray(CVPixelBufferRef pixelBuffer, int *a2, OSType *a3, CFMutableArrayRef *a4)
{
  v4 = 4294954516;
  if (a3)
  {
    if (a2)
    {
      if (pixelBuffer)
      {
        v7 = a4;
        if (a4)
        {
          v8 = a3;
          Mutable = *a4;
          v10 = *a3;
          v11 = *a2;
          v12 = a2[1];
          Width = CVPixelBufferGetWidth(pixelBuffer);
          Height = CVPixelBufferGetHeight(pixelBuffer);
          PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
          v15 = PixelFormatType;
          if (Mutable)
          {
            if (v11 == Width && v12 == Height && v10 == PixelFormatType)
            {
              v15 = v10;
              v16 = v11;
              v17 = v12;
LABEL_46:
              v4 = 0;
              *v7 = Mutable;
              *v8 = v15;
              *a2 = v16;
              a2[1] = v17;
              return v4;
            }

            CFRelease(Mutable);
          }

          Mutable = CFArrayCreateMutable(0, 1, MEMORY[0x29EDB9000]);
          v17 = Height;
          v18 = vcvts_n_f32_s32(Width, 1uLL) + 0.5;
          v16 = Width;
          v19 = ((vcvts_n_f32_s32(Height, 1uLL) + 0.5) + 15) & 0xFFFFFFF0;
          v20 = (v18 + 15) & 0xFFFFFFF0;
          if (v20 < 1 || v19 < 1 || v20 >= v16 || v19 >= Height)
          {
            goto LABEL_46;
          }

          v42 = v7;
          v43 = v8;
          v24 = 0;
          v41 = v16;
          v25 = v16;
          v26 = *MEMORY[0x29EDB96D0];
          v46 = *MEMORY[0x29EDB96D8];
          v45 = *MEMORY[0x29EDB8F00];
          v27 = *MEMORY[0x29EDB8ED8];
          v28 = 2.0;
          while (1)
          {
            if (v20 >= v19)
            {
              v29 = v19;
            }

            else
            {
              v29 = v20;
            }

            if (v29 < 0x140 || v24 > 1)
            {
LABEL_45:
              v7 = v42;
              v8 = v43;
              v16 = v41;
              v17 = Height;
              goto LABEL_46;
            }

            pixelBufferOut = 0;
            v31 = CFDictionaryCreateMutable(0, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
            IOSurfacePropertiesDictionary = createIOSurfacePropertiesDictionary(0);
            CFDictionaryAddValue(v31, v26, IOSurfacePropertiesDictionary);
            CFRelease(IOSurfacePropertiesDictionary);
            if (FigCapturePlatformIOSurfaceWiringAssertionEnabled())
            {
              CFDictionaryAddValue(v31, v46, v45);
            }

            v4 = CVPixelBufferCreate(v27, v20, v19, v15, v31, &pixelBufferOut);
            CFRelease(v31);
            if (v4)
            {
              break;
            }

            CFArrayInsertValueAtIndex(Mutable, v24, pixelBufferOut);
            if (pixelBufferOut)
            {
              CFRelease(pixelBufferOut);
              pixelBufferOut = 0;
            }

            v28 = v28 + v28;
            ++v24;
            v33 = (Height / v28) + 0.5;
            v34 = (v25 / v28) + 0.5;
            v35 = (v33 + 15) & 0xFFFFFFF0;
            v36 = (v34 + 15) & 0xFFFFFFF0;
            v39 = v36 >= 1 && v35 >= 1 && v36 < v20 && v35 < v19;
            v20 = (v34 + 15) & 0xFFFFFFF0;
            v19 = (v33 + 15) & 0xFFFFFFF0;
            if (!v39)
            {
              goto LABEL_45;
            }
          }

          ensurePyramidArray_cold_1();
        }
      }
    }
  }

  return v4;
}

uint64_t sbp_bcs_updateBarcodeLocations(uint64_t a1, __CVBuffer *a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Width = CVPixelBufferGetWidth(a2);
  CVPixelBufferGetHeight(a2);
  FigSimpleMutexLock();
  v7 = 0;
  v8 = 0;
  v9 = 0;
  *(DerivedStorage + 960) = 0;
  v10 = DerivedStorage + 192;
  v11 = DerivedStorage + 988;
  v12 = 1;
  v65 = a3;
LABEL_2:
  v13 = 192 * v8;
  do
  {
    if (*(v11 + v13 - 636))
    {
      v12 = 0;
      *(DerivedStorage + 960) = ++v7;
      v15 = *(v11 + v8);
      v9 |= v15;
      v72[v8] = v15;
      if (v8++ != 3)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    v14 = *(v11 + v8);
    v9 |= v14;
    v72[v8++] = v14;
    v13 += 192;
  }

  while (v8 != 4);
  if (v12)
  {
    v63 = 1;
    v64 = 0;
    goto LABEL_53;
  }

LABEL_11:
  *(DerivedStorage + 1172) = *(DerivedStorage + 64);
  *(DerivedStorage + 1188) = *(DerivedStorage + 80);
  v17 = transformInterestRect(*(DerivedStorage + 1032), *(DerivedStorage + 1040), *(DerivedStorage + 1048), *(DerivedStorage + 1056), a1, Width);
  v18 = 0;
  v22 = v17;
  v23 = (v17 + v19);
  v24 = v20;
  v25 = (v20 + v21);
  v26 = DerivedStorage + 264;
  v27 = DerivedStorage + 272;
  do
  {
    if (*(v11 + v18))
    {
      v28 = v10 + 192 * v18;
      if (*(v28 + 160))
      {
        v29 = 0;
        v30 = vcvtq_f64_f32(*(DerivedStorage + 160));
        do
        {
          v31 = vsubq_f64(*(v26 + v29), v30);
          *(v26 + v29) = v31;
          if (v31.f64[0] < v22 || v31.f64[0] > v23 || v31.f64[1] < v24 || v31.f64[1] > v25)
          {
            *(v28 + 160) = 0;
          }

          v29 += 16;
        }

        while (v29 != 64);
        *(v28 + 164) = *(DerivedStorage + 64);
        *(v28 + 180) = *(DerivedStorage + 80);
        *(v11 + v18) = 0;
      }
    }

    else
    {
      v35 = v10 + 192 * v18;
      if (*(v35 + 160))
      {
        v36 = 0;
        v37 = *(DerivedStorage + 152);
        v38 = *(DerivedStorage + 156);
        do
        {
          v39 = *(v26 + v36) - v37;
          *(v26 + v36) = v39;
          if (v39 < v22 || v39 > v23)
          {
            *(v35 + 160) = 0;
          }

          v41 = *(v27 + v36) - v38;
          *(v27 + v36) = v41;
          if (v41 < v24 || v41 > v25)
          {
            *(v35 + 160) = 0;
          }

          v36 += 16;
        }

        while (v36 != 64);
        memset(&v71, 0, sizeof(v71));
        if (*(DerivedStorage + 112))
        {
          CMTimeMake(&v71, 650, 1000);
        }

        else
        {
          CMTimeMakeWithSeconds(&v71, 1.25, 1000);
        }

        if (*(v35 + 160))
        {
          lhs = *(DerivedStorage + 64);
          v43 = *(v35 + 164);
          rhs.epoch = *(v35 + 180);
          *&rhs.value = v43;
          CMTimeSubtract(&time1, &lhs, &rhs);
          lhs = v71;
          if (CMTimeCompare(&time1, &lhs) >= 1)
          {
            *(v35 + 160) = 0;
          }
        }
      }
    }

    ++v18;
    v26 += 192;
    v27 += 192;
  }

  while (v18 != 4);
  v44 = 0;
  while (1)
  {
    v45 = *(DerivedStorage + 352 + v44);
    if (v45)
    {
      break;
    }

    v44 += 192;
    if (v44 == 768)
    {
      v63 = v45 == 0;
      v64 = 0;
      goto LABEL_53;
    }
  }

  v63 = 0;
  v64 = 1;
LABEL_53:
  if (*(DerivedStorage + 48))
  {
    v46 = 0;
    v47 = 272;
    v66 = DerivedStorage + 192;
    do
    {
      if (*(v10 + 192 * v46 + 160))
      {
        v48 = v72[v46];
        v49 = CMBaseObjectGetDerivedStorage();
        if (CVPixelBufferLockBaseAddress(a2, 0))
        {
          sbp_bcs_updateBarcodeLocations_cold_1();
        }

        else
        {
          v50 = v49 + 192 * v46;
          if (*(v50 + 352))
          {
            v51 = DerivedStorage;
            v52 = (v50 + 192);
            v53 = v50 + 264;
            v54 = (v49 + v47);
            for (i = 1; i != 5; ++i)
            {
              v56 = *(v54 - 1);
              v57 = *v54;
              v58 = (v53 + 16 * (i & 3));
              v59 = *v58;
              v60 = v58[1];
              FigDraw420Line(a2, v56, *v54, *v58, v60, 0, 0, 0);
              FigDraw420Line(a2, (v56 + 1.0), (v57 + 1.0), (v59 + 1.0), (v60 + 1.0), 255, 0, 0);
              v54 += 2;
            }

            DerivedStorage = v51;
            if (v48)
            {
              FigDrawLumaRectangle(a2, (v52[9] + -5.0), (v52[10] + -5.0), 10, 10, 20);
              FigDrawLumaRectangle(a2, (v52[11] + -5.0), (v52[12] + -5.0), 10, 10, 20);
              FigDrawLumaRectangle(a2, (v52[13] + -5.0), (v52[14] + -5.0), 10, 10, 20);
              FigDrawLumaRectangle(a2, (v52[15] + -5.0), (v52[16] + -5.0), 10, 10, 20);
            }
          }

          CVPixelBufferUnlockBaseAddress(a2, 0);
        }

        v10 = v66;
      }

      ++v46;
      v47 += 192;
    }

    while (v46 != 4);
  }

  if (v65)
  {
    v61 = v63;
    if (!*(DerivedStorage + 1196))
    {
      v61 = 0;
    }

    if (v9)
    {
      v61 = 1;
    }

    *v65 = v61;
  }

  *(DerivedStorage + 1196) = v64;
  return FigSimpleMutexUnlock();
}

void detectBarcodesInFrame(uint64_t a1)
{
  v153 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Width = CVPixelBufferGetWidth(*(DerivedStorage + 1000));
  Height = CVPixelBufferGetHeight(*(DerivedStorage + 1000));
  v5 = *(DerivedStorage + 1204);
  v6 = *(DerivedStorage + 1000);
  *(DerivedStorage + 1000) = 0;
  FigSimpleMutexLock();
  IsEmpty = CGRectIsEmpty(*(DerivedStorage + 1032));
  if (IsEmpty)
  {
    goto LABEL_21;
  }

  v8 = Width;
  v9 = Height;
  v10 = Width;
  v11 = Height;
  v12 = transformInterestRect(*(DerivedStorage + 1032), *(DerivedStorage + 1040), *(DerivedStorage + 1048), *(DerivedStorage + 1056), a1, v10);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  FigSimpleMutexUnlock();
  v19 = v16 <= v18 ? v18 : v16;
  v20 = v19;
  if (v20 >= 1280.0 || *(DerivedStorage + 168))
  {
    if (ensurePyramidArray(v6, (DerivedStorage + 176), (DerivedStorage + 172), (DerivedStorage + 184)))
    {
      v21 = 1;
    }

    else
    {
      v22 = *(DerivedStorage + 40);
      v21 = 1;
      if (v22)
      {
        if (v6)
        {
          v23 = *(DerivedStorage + 184);
          if (v23)
          {
            if (CFArrayGetCount(*(DerivedStorage + 184)) >= 1)
            {
              v131 = Height;
              v24 = 0;
              v25 = v6;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v23, v24);
                if (VTPixelTransferSessionTransferImage(v22, v25, ValueAtIndex))
                {
                  break;
                }

                ++v24;
                v25 = ValueAtIndex;
                if (CFArrayGetCount(v23) <= v24)
                {
                  goto LABEL_16;
                }
              }

              detectBarcodesInFrame_cold_1();
LABEL_16:
              v21 = 1;
              v11 = v131;
            }
          }
        }
      }
    }
  }

  else
  {
    v21 = 0;
  }

  if (!CFDictionaryGetValue(*(DerivedStorage + 1016), *MEMORY[0x29EDC63D8]))
  {
LABEL_21:
    v31 = 0;
    v32 = 0;
    v33 = 1;
    goto LABEL_45;
  }

  cf = MRCDecoderCreateWithOptions();
  v27 = *MEMORY[0x29EDC6408];
  keys[0] = *MEMORY[0x29EDC6400];
  keys[1] = v27;
  if (v21)
  {
    v28 = 0;
    v29 = *(DerivedStorage + 184);
    v30 = *MEMORY[0x29EDB8ED8];
  }

  else
  {
    v30 = *MEMORY[0x29EDB8ED8];
    v28 = CFArrayCreate(*MEMORY[0x29EDB8ED8], 0, 0, MEMORY[0x29EDB9000]);
    v29 = v28;
  }

  v155.origin.x = v12;
  v155.origin.y = v14;
  v155.size.width = v16;
  v155.size.height = v18;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v155);
  values[0] = v29;
  values[1] = DictionaryRepresentation;
  v35 = CFDictionaryCreate(v30, keys, values, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  v36 = MRCSampleCreateWithCVPixelBufferAndAttributes();
  v37 = 0;
  v33 = v36 == 0;
  v38 = cf;
  v142 = v36;
  if (!cf || !v36)
  {
    v32 = 0;
    v31 = 0;
    goto LABEL_32;
  }

  v33 = 1;
  v144 = MRCDecoderDecodeSample();
  if (!v144 || v153)
  {
    v31 = 0;
    v32 = 0;
    goto LABEL_36;
  }

  CVPixelBufferRelease(v6);
  FigSimpleMutexLock();
  *(DerivedStorage + 988) = 0;
  *time1 = *(DerivedStorage + 964);
  *&time1[16] = *(DerivedStorage + 980);
  time2 = *(DerivedStorage + 1148);
  if (CMTimeCompare(time1, &time2) > 0)
  {
    v31 = 0;
    v6 = 0;
    v32 = 0;
    v33 = 0;
LABEL_36:
    v38 = cf;
    goto LABEL_37;
  }

  v130 = v10;
  v129 = a1;
  v126 = IsEmpty;
  DescriptorCount = MRCDecoderResultGetDescriptorCount();
  Mutable = CFArrayCreateMutable(v30, 4, MEMORY[0x29EDB9000]);
  v37 = v144;
  v32 = Mutable;
  v41 = MEMORY[0x29EDC63F8];
  v134 = v35;
  theArray = Mutable;
  v132 = v11;
  v125 = v28;
  if (DescriptorCount < 1)
  {
    goto LABEL_70;
  }

  v42 = 0;
  v43 = *MEMORY[0x29EDC63F8];
  v44 = *MEMORY[0x29EDC6410];
  v45 = *MEMORY[0x29EDC6488];
  v46 = *MEMORY[0x29EDC6450];
  key = *MEMORY[0x29EDC63E0];
  v47 = DescriptorCount & 0x7FFFFFFF;
  v48 = -1;
  do
  {
    MRCDecoderResultGetDescriptorAtIndex();
    v49 = MRCDescriptorCopyAttributes();
    Value = CFDictionaryGetValue(v49, v43);
    if (CFEqual(Value, v44) || CFEqual(Value, v45) || CFEqual(Value, v46))
    {
      CFArrayAppendValue(theArray, v49);
      if (!v49)
      {
        goto LABEL_61;
      }

LABEL_60:
      CFRelease(v49);
      goto LABEL_61;
    }

    v51 = CFDictionaryGetValue(v49, key);
    *time1 = 0;
    CFNumberGetValue(v51, kCFNumberFloat32Type, time1);
    if (*time1 > v5)
    {
      v48 = v42;
      v5 = *time1;
    }

    if (v49)
    {
      goto LABEL_60;
    }

LABEL_61:
    ++v42;
    v37 = v144;
  }

  while (v47 != v42);
  v28 = v125;
  v35 = v134;
  v32 = theArray;
  v41 = MEMORY[0x29EDC63F8];
  if (v48 != -1)
  {
    MRCDecoderResultGetDescriptorAtIndex();
    v52 = MRCDescriptorCopyAttributes();
    CFArrayAppendValue(theArray, v52);
    v37 = v144;
    if (v52)
    {
      CFRelease(v52);
      v37 = v144;
    }
  }

LABEL_70:
  if (v32)
  {
    Count = CFArrayGetCount(v32);
    v54 = Count;
    if (Count < 1)
    {
      v6 = 0;
      v31 = 0;
      IsEmpty = v126;
      v38 = cf;
      v36 = v142;
      v37 = v144;
    }

    else
    {
      keya = (DerivedStorage + 988);
      v135 = malloc_type_malloc(4 * (Count & 0x7FFFFFFF), 0x100004052888210uLL);
      bzero(v135, 4 * (v54 & 0x7FFFFFFF));
      v55 = 0;
      v138 = *MEMORY[0x29EDC63E8];
      v136 = *MEMORY[0x29EDC63F0];
      v137 = *v41;
      v56 = *MEMORY[0x29EDB90B8];
      v57 = *(MEMORY[0x29EDB90B8] + 8);
      v58 = DerivedStorage + 192;
      v59 = ((v8 + v9) * 0.5);
      v60 = v59 / 40.0;
      v61 = v54 & 0x7FFFFFFF;
      v127 = v54;
      __asm { FMOV            V2.2D, #0.25 }

      v66 = v59 / 10.0;
      v133 = v61;
      v128 = _Q2;
      do
      {
        v67 = CFArrayGetValueAtIndex(v32, v55);
        v68 = CFDictionaryGetValue(v67, v138);
        v69 = CFDictionaryGetValue(v67, v136);
        v70 = CFDictionaryGetValue(v67, v137);
        if (v69 && v70 && v68)
        {
          cf1 = v70;
          v71 = 0;
          *time1 = *MEMORY[0x29EDB90B8];
          *&time1[16] = *time1;
          v148 = *time1;
          v149 = *time1;
          v72 = time1;
          do
          {
            v73 = CFArrayGetValueAtIndex(v68, v71);
            CGPointMakeWithDictionaryRepresentation(v73, v72);
            ++v71;
            ++v72;
          }

          while (v71 != 4);
          v74 = 0;
          v75 = v57;
          v76 = v56;
          do
          {
            v77 = &time1[v74];
            v154 = vld2q_f64(v77);
            v78 = vmulq_f64(v154.val[0], v128);
            v154.val[0] = vmulq_f64(v154.val[1], v128);
            v75 = v75 + v154.val[0].f64[0] + v154.val[0].f64[1];
            v76 = v76 + v78.f64[0] + v78.f64[1];
            v74 += 32;
          }

          while (v74 != 64);
          v79 = 0;
          v80 = v76 - *(DerivedStorage + 160);
          v81 = v75 - *(DerivedStorage + 164);
          v82 = (DerivedStorage + 272);
          v83 = DerivedStorage + 988;
          do
          {
            v84 = v58 + 192 * v79;
            if (*(v84 + 160) && !*(v83 + v79))
            {
              v85 = 4;
              v86 = v82;
              v87 = v57;
              v88 = v56;
              do
              {
                v88 = v88 + *(v86 - 1);
                v87 = v87 + *v86;
                v86 += 2;
                --v85;
              }

              while (v85);
              v89 = (v81 - v87 * 0.25) * (v81 - v87 * 0.25) + (v80 - v88 * 0.25) * (v80 - v88 * 0.25);
              v90 = sqrtf(v89);
              if (v60 > v90 || (v91 = *(v84 + 136)) != 0 && (v92 = CFEqual(v69, v91), v83 = DerivedStorage + 988, v92) && (v93 = *(v84 + 144)) != 0 && (v94 = CFEqual(cf1, v93), v83 = DerivedStorage + 988, v94) && (*(DerivedStorage + 960) < 2 ? (_ZF = v127 == 1) : (_ZF = 0), _ZF || v66 > v90))
              {
                v61 = v133;
                goto LABEL_98;
              }
            }

            ++v79;
            v82 += 24;
          }

          while (v79 != 4);
          v79 = 0;
          v96 = (DerivedStorage + 352);
          v61 = v133;
          v35 = v134;
          while (1)
          {
            v97 = *v96;
            v96 += 48;
            if (!v97)
            {
              break;
            }

            if (++v79 == 4)
            {
              goto LABEL_102;
            }
          }

LABEL_98:
          *(v135 + v55) = -1082130432;
          copyBarcodeToStorage(v129, v79, 1, time1, cf1, v69, v67);
          *(v58 + 192 * v79 + 188) = computeBarcodePriority(cf1, time1, v130, v132);
          keya[v79] = 1;
          v35 = v134;
        }

        else
        {
          *(v135 + v55) = -1082130432;
        }

LABEL_102:
        ++v55;
        v32 = theArray;
      }

      while (v55 != v61);
      v98 = 0;
      v99 = 0;
      v100 = v61 - 1;
      IsEmpty = v126;
      v37 = v144;
      v31 = v135;
      do
      {
        while (v31[v98] != -1.0)
        {
          v101 = CFArrayGetValueAtIndex(theArray, v98);
          v102 = CFDictionaryGetValue(v101, v138);
          v103 = CFDictionaryGetValue(v101, v137);
          v104 = 0;
          v105 = time1;
          do
          {
            v106 = CFArrayGetValueAtIndex(v102, v104);
            CGPointMakeWithDictionaryRepresentation(v106, v105);
            ++v104;
            ++v105;
          }

          while (v104 != 4);
          v35 = v134;
          v31 = v135;
          *(v135 + v98) = computeBarcodePriority(v103, time1, v130, v132);
          v99 = 1;
          _ZF = v100 == v98++;
          v37 = v144;
          v61 = v133;
          if (_ZF)
          {
            goto LABEL_113;
          }
        }

        ++v98;
      }

      while (v61 != v98);
      if ((v99 & 1) == 0)
      {
        v6 = 0;
        v28 = v125;
        v38 = cf;
        v36 = v142;
        goto LABEL_131;
      }

LABEL_113:
      v107 = 0;
      v108 = 5.0;
      v109 = -1;
      for (i = -1; ; i = -1)
      {
        do
        {
          if (v31[v107] >= 0.0 && v31[v107] < v108)
          {
            v109 = v107;
            i = v107;
            v108 = v31[v107];
          }

          ++v107;
        }

        while (v107 != v61);
        if (i == -1)
        {
          break;
        }

        v111 = 0;
        v112 = v109;
        v113 = v31[v109];
        v114 = 5.0;
        v115 = -1;
        v116 = (DerivedStorage + 380);
        do
        {
          v117 = *v116;
          v116 += 48;
          v118 = v117;
          if (v117 < v114 && v117 < v113)
          {
            v114 = v118;
            v115 = v111;
          }

          ++v111;
        }

        while (v111 != 4);
        if (v115 != -1)
        {
          v119 = CFArrayGetValueAtIndex(theArray, v112);
          v120 = CFDictionaryGetValue(v119, v138);
          cf1a = CFDictionaryGetValue(v119, v136);
          v121 = CFDictionaryGetValue(v119, v137);
          v122 = 0;
          v123 = time1;
          do
          {
            v124 = CFArrayGetValueAtIndex(v120, v122);
            CGPointMakeWithDictionaryRepresentation(v124, v123);
            ++v122;
            ++v123;
          }

          while (v122 != 4);
          copyBarcodeToStorage(v129, v115, 0, time1, v121, cf1a, v119);
          *(v58 + 192 * v115 + 188) = computeBarcodePriority(v121, time1, v130, v132);
          keya[v115] = 1;
          v35 = v134;
          v31 = v135;
        }

        v107 = 0;
        v31[v112] = -1.0;
        v108 = 5.0;
        v109 = -1;
        v61 = v133;
      }

      v6 = 0;
      IsEmpty = v126;
      v28 = v125;
      v38 = cf;
      v36 = v142;
      v37 = v144;
LABEL_131:
      v32 = theArray;
    }
  }

  else
  {
    v6 = 0;
    v31 = 0;
    IsEmpty = v126;
    v38 = cf;
    v36 = v142;
  }

  v33 = 0;
LABEL_32:
  v144 = v37;
  if (v38)
  {
LABEL_37:
    CFRelease(v38);
    v36 = v142;
    if (!v28)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v33 = 1;
  if (v28)
  {
LABEL_38:
    CFRelease(v28);
    v36 = v142;
  }

LABEL_39:
  if (v35)
  {
    CFRelease(v35);
    v36 = v142;
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v144)
  {
    CFRelease(v144);
  }

LABEL_45:
  if (v153)
  {
    CFRelease(v153);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (!v33)
  {
    FigSimpleMutexUnlock();
  }

  if (IsEmpty)
  {
    FigSimpleMutexUnlock();
  }

  CVPixelBufferRelease(v6);
  free(v31);
}

CGFloat transformInterestRect(CGFloat a1, float64_t a2, float64_t a3, CGFloat a4, uint64_t a5, int a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *(DerivedStorage + 52);
  if (v12)
  {
    v13 = v12 * 3.14159265 / 180.0;
    CGAffineTransformMakeTranslation(&v43, -0.5, -0.5);
    v44.origin.x = a1;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    v45 = CGRectApplyAffineTransform(v44, &v43);
    x = v45.origin.x;
    y = v45.origin.y;
    width = v45.size.width;
    height = v45.size.height;
    CGAffineTransformMakeRotation(&v43, v13);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v47 = CGRectApplyAffineTransform(v46, &v43);
    v18 = v47.origin.x;
    v19 = v47.origin.y;
    v20 = v47.size.width;
    v21 = v47.size.height;
    CGAffineTransformMakeTranslation(&v43, 0.5, 0.5);
    v48.origin.x = v18;
    v48.origin.y = v19;
    v48.size.width = v20;
    v48.size.height = v21;
    v49 = CGRectApplyAffineTransform(v48, &v43);
    a1 = v49.origin.x;
    a2 = v49.origin.y;
    a3 = v49.size.width;
    a4 = v49.size.height;
  }

  if (*(DerivedStorage + 56))
  {
    CGAffineTransformMakeTranslation(&v43, -0.5, -0.5);
    v50.origin.x = a1;
    v50.origin.y = a2;
    v50.size.width = a3;
    v50.size.height = a4;
    v51 = CGRectApplyAffineTransform(v50, &v43);
    v22 = v51.origin.x;
    v23 = v51.origin.y;
    v24 = v51.size.width;
    v25 = v51.size.height;
    v26 = -1.0;
    v27 = 1.0;
LABEL_7:
    CGAffineTransformMakeScale(&v43, v26, v27);
    v54.origin.x = v22;
    v54.origin.y = v23;
    v54.size.width = v24;
    v54.size.height = v25;
    v55 = CGRectApplyAffineTransform(v54, &v43);
    v28 = v55.origin.x;
    v29 = v55.origin.y;
    v30 = v55.size.width;
    v31 = v55.size.height;
    CGAffineTransformMakeTranslation(&v43, 0.5, 0.5);
    v56.origin.x = v28;
    v56.origin.y = v29;
    v56.size.width = v30;
    v56.size.height = v31;
    v57 = CGRectApplyAffineTransform(v56, &v43);
    a1 = v57.origin.x;
    a2 = v57.origin.y;
    a3 = v57.size.width;
    a4 = v57.size.height;
    goto LABEL_8;
  }

  if (*(DerivedStorage + 57))
  {
    CGAffineTransformMakeTranslation(&v43, -0.5, -0.5);
    v52.origin.x = a1;
    v52.origin.y = a2;
    v52.size.width = a3;
    v52.size.height = a4;
    v53 = CGRectApplyAffineTransform(v52, &v43);
    v22 = v53.origin.x;
    v23 = v53.origin.y;
    v24 = v53.size.width;
    v25 = v53.size.height;
    v26 = 1.0;
    v27 = -1.0;
    goto LABEL_7;
  }

LABEL_8:
  v32.f64[0] = *(DerivedStorage + 136);
  if (v32.f64[0] != 0.0 && *(DerivedStorage + 144) != 0.0)
  {
    v32.f64[1] = *(DerivedStorage + 144);
    v43.b = 0.0;
    v43.c = 0.0;
    __asm
    {
      FMOV            V1.2D, #1.0
      FMOV            V2.2D, #0.5
    }

    v39 = vcvtq_f64_f32(vcvt_f32_f64(v32));
    v43.d = v39.f64[1];
    v43.a = v39.f64[0];
    *&v43.tx = vmulq_f64(vsubq_f64(_Q1, v39), _Q2);
    v40 = a1;
    _Q1.f64[0] = a2;
    _Q2.f64[0] = a3;
    v41 = a4;
    *&a1 = CGRectApplyAffineTransform(*(&_Q1 - 8), &v43);
  }

  return a1 * a6;
}

CFTypeRef copyBarcodeToStorage(uint64_t a1, int a2, int a3, uint64_t a4, const void *a5, const void *a6, const void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = DerivedStorage;
  if (!a3)
  {
    v16 = a2;
    goto LABEL_5;
  }

  v15 = DerivedStorage + 192 * a2;
  v16 = a2;
  if (!*(v15 + 352))
  {
LABEL_5:
    *(DerivedStorage + 192 * v16 + 256) = 0;
    goto LABEL_6;
  }

  v17 = v15 + 192;
  v18 = *(v17 + 88);
  *v17 = *(v17 + 72);
  *(v17 + 16) = v18;
  v19 = *(v17 + 120);
  *(v17 + 32) = *(v17 + 104);
  *(v17 + 48) = v19;
  *(v17 + 64) = 1;
LABEL_6:
  for (i = 0; i != 64; i += 16)
  {
    *(DerivedStorage + 192 * v16 + 264 + i) = *(a4 + i);
  }

  v21 = DerivedStorage + 192 + 192 * v16;
  v22 = *(v21 + 136);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(v21 + 144);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(v21 + 152);
  if (v24)
  {
    CFRelease(v24);
  }

  if (a6)
  {
    v25 = CFRetain(a6);
  }

  else
  {
    v25 = 0;
  }

  *(v21 + 136) = v25;
  if (a5)
  {
    v26 = CFRetain(a5);
  }

  else
  {
    v26 = 0;
  }

  *(v21 + 144) = v26;
  if (a7)
  {
    result = CFRetain(a7);
  }

  else
  {
    result = 0;
  }

  *(v21 + 152) = result;
  v28 = *(v14 + 1072) + 1;
  *(v14 + 1072) = v28;
  *(v21 + 160) = v28;
  return result;
}

float computeBarcodePriority(const void *a1, uint64_t a2, int a3, int a4)
{
  if (!CFEqual(a1, *MEMORY[0x29EDC6410]) && !CFEqual(a1, *MEMORY[0x29EDC6488]) && !CFEqual(a1, *MEMORY[0x29EDC6450]))
  {
    return 3.0;
  }

  v8 = 0;
  if (a3)
  {
    _ZF = a4 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v10 = !_ZF;
  v11.i64[0] = a3;
  v11.i64[1] = a4;
  v12 = vcvtq_f64_s64(v11);
  __asm { FMOV            V1.2S, #1.0 }

  v17 = 0;
  __asm { FMOV            V4.2D, #0.25 }

  v19 = *MEMORY[0x29EDB90B8];
  do
  {
    v20 = *MEMORY[0x29EDB90B8];
    if (v10)
    {
      v20 = vdivq_f64(*(a2 + v8), v12);
    }

    v21 = vcvt_f32_f64(v20);
    _D1 = vbsl_s8(vmovn_s64(vcgtq_f64(vcvtq_f64_f32(_D1), v20)), v21, _D1);
    v17 = vbsl_s8(vmovn_s64(vcgtq_f64(v20, vcvtq_f64_f32(v17))), v21, v17);
    v19 = vaddq_f64(v19, vmulq_f64(v20, _Q4));
    v8 += 16;
  }

  while (v8 != 64);
  __asm { FMOV            V0.2D, #-0.5 }

  *&_Q0.f64[0] = vcvt_f32_f64(vaddq_f64(v19, _Q0));
  v23 = vsub_f32(v17, _D1);
  return 1.0 - sqrtf(vaddv_f32(vmul_f32(*&_Q0.f64[0], *&_Q0.f64[0]))) + vmul_lane_f32(v23, v23, 1).f32[0];
}

uint64_t clearBarcodes()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 352) = 0;
  *(DerivedStorage + 544) = 0;
  *(DerivedStorage + 736) = 0;
  *(DerivedStorage + 928) = 0;
  if (*(DerivedStorage + 76))
  {
    *(DerivedStorage + 964) = *(DerivedStorage + 64);
    *(DerivedStorage + 980) = *(DerivedStorage + 80);
  }

  return FigSimpleMutexUnlock();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return fig_log_get_emitter();
}

size_t FigDraw420Color(__CVBuffer *a1, int a2, int a3, char a4, char a5, char a6)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v22 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  result = CVPixelBufferGetPlaneCount(a1);
  v13 = result;
  if (result)
  {
    v14 = 0;
    do
    {
      *(&v24 + v14) = CVPixelBufferGetBaseAddressOfPlane(a1, v14);
      result = CVPixelBufferGetBytesPerRowOfPlane(a1, v14);
      *(&v22 + v14++) = result;
    }

    while (v13 != v14);
  }

  if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
  {
    if (v13 != 2)
    {
      return result;
    }

    v19 = HIDWORD(v22);
    v17 = v25;
    *(v24 + a2 + v22 * a3) = a4;
    v20 = v19 * (a3 >> 1);
    *(v17 + (a2 & 0xFFFFFFFFFFFFFFFELL) + v20) = a5;
    v18 = v20 + (a2 | 1);
    goto LABEL_11;
  }

  if (PixelFormatType == 2033463856 && v13 == 3)
  {
    v15 = HIDWORD(v22);
    v16 = v25;
    *(v24 + a2 + v22 * a3) = a4;
    *(v16 + v15 * (a3 >> 1) + (a2 >> 1)) = a5;
    v17 = v26;
    v18 = v23 * (a3 >> 1) + (a2 >> 1);
LABEL_11:
    *(v17 + v18) = a6;
  }

  return result;
}

uint64_t FigDraw420Line(__CVBuffer *a1, int a2, int a3, int a4, int a5, char a6, char a7, char a8)
{
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  if (!a1 || (a3 | a2) < 0 || WidthOfPlane <= a2 || (v18 = a5, (a5 | a4) < 0) || HeightOfPlane <= a3 || WidthOfPlane <= a4 || HeightOfPlane <= a5)
  {
    FigDraw420Line_cold_1(&v30);
    return v30;
  }

  else
  {
    if (a2 >= a4)
    {
      v19 = a4;
    }

    else
    {
      v19 = a2;
    }

    v20 = v19 & ~(v19 >> 31);
    if (a2 <= a4)
    {
      v21 = a4;
    }

    else
    {
      v21 = a2;
    }

    if (a3 >= v18)
    {
      v22 = v18;
    }

    else
    {
      v22 = a3;
    }

    if (a3 <= v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = a3;
    }

    if (v18 == a3)
    {
      if ((v21 & 0x80000000) == 0)
      {
        do
        {
          FigDraw420Color(a1, v20, a3, a6, a7, a8);
          v24 = v20++ < v21;
        }

        while (v24);
      }
    }

    else
    {
      v25 = a4;
      v26 = v22 & ~(v22 >> 31);
      if (v25 == a2)
      {
        if ((v23 & 0x80000000) == 0)
        {
          do
          {
            FigDraw420Color(a1, a2, v26, a6, a7, a8);
            v24 = v26++ < v23;
          }

          while (v24);
        }
      }

      else
      {
        v27 = (v18 - a3) / (v25 - a2);
        v28 = ((v18 + a3) - (v27 * (v25 + a2))) * 0.5;
        if (v23 - v26 <= v21 - v20)
        {
          if ((v21 & 0x80000000) == 0)
          {
            do
            {
              FigDraw420Color(a1, v20, ((v28 + (v27 * v20)) + 0.5), a6, a7, a8);
              v24 = v20++ < v21;
            }

            while (v24);
          }
        }

        else if ((v23 & 0x80000000) == 0)
        {
          do
          {
            FigDraw420Color(a1, (((v26 - v28) / v27) + 0.5), v26, a6, a7, a8);
            v24 = v26++ < v23;
          }

          while (v24);
        }
      }
    }

    return 0;
  }
}

uint64_t FigDrawLumaRectangle(__CVBuffer *a1, int a2, int a3, int a4, int a5, int a6)
{
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  if (!a1 || (a3 | a2) < 0 || (v16 = WidthOfPlane - a2, WidthOfPlane <= a2) || a5 < 1 || a4 < 1 || (v17 = HeightOfPlane, HeightOfPlane <= a3))
  {
    FigDrawLumaRectangle_cold_1(&v28);
    return v28;
  }

  else
  {
    if (v16 >= a4)
    {
      v16 = a4;
    }

    v18 = v16;
    memset(&BaseAddressOfPlane[BytesPerRowOfPlane * a3 + a2], a6, v16);
    v19 = a5 + a3;
    if (v19 <= v17)
    {
      memset(&BaseAddressOfPlane[BytesPerRowOfPlane * (v19 - 1) + a2], a6, v18);
    }

    v20 = a3 + 1;
    if (v19 >= v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = v19;
    }

    if (v20 < v21)
    {
      v22 = a2 + BytesPerRowOfPlane * v20;
      v23 = &BaseAddressOfPlane[v22];
      v24 = ~a3 + v21;
      do
      {
        *v23 = a6;
        v23 += BytesPerRowOfPlane;
        --v24;
      }

      while (v24);
      if (a4 + a2 <= WidthOfPlane)
      {
        v25 = &BaseAddressOfPlane[v22 - 1 + a4];
        v26 = ~a3 + v21;
        do
        {
          *v25 = a6;
          v25 += BytesPerRowOfPlane;
          --v26;
        }

        while (v26);
      }
    }

    return 0;
  }
}

uint64_t FigSampleBufferProcessorCreateForBarcodeScanner_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForBarcodeScanner_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForBarcodeScanner_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigDebugAssert3();
}

uint64_t sbp_bcs_processSampleBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_bcs_processSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_bcs_processSampleBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_bcs_processSampleBuffer_cold_4(void *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigDebugAssert3();
  *a2 = *a1;
  return result;
}

uint64_t sbp_bcs_processSampleBuffer_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_bcs_processSampleBuffer_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigDebugAssert3();
}

uint64_t sbp_bcs_processSampleBuffer_cold_7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  return FigDebugAssert3();
}

uint64_t sbp_bcs_processSampleBuffer_cold_8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  return FigDebugAssert3();
}

uint64_t sbp_bcs_processSampleBuffer_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3();
  return FigDebugAssert3();
}

uint64_t sbp_bcs_processSampleBuffer_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_bcs_processSampleBuffer_cold_11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_bcs_processSampleBuffer_cold_12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3();
  return FigDebugAssert3();
}

uint64_t ensurePyramidArray_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t sbp_bcs_updateBarcodeLocations_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t detectBarcodesInFrame_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t FigDraw420Line_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4_0();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDrawLumaRectangle_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4_0();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x2A1C59AE0](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59B60](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}