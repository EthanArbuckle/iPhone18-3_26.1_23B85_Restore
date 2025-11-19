uint64_t AppleAVDWrapperH264DecoderCopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  pthread_once(&sCreateSupportedPropertyDictionaryOnce_1, h264_createSupportedPropertyDictionary);
  result = 4294954392;
  if (a2)
  {
    if (sH264VideoDecoderSupportedPropertyDictionary)
    {
      v4 = CFRetain(sH264VideoDecoderSupportedPropertyDictionary);
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t AppleAVDWrapperH264DecoderCanAcceptFormatDescription(uint64_t a1, const opaqueCMFormatDescription *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (MGGetBoolAnswer() && (*(DerivedStorage + 8912) & 1) != 0)
  {
    return 0;
  }

  if (*(DerivedStorage + 6604) != 6)
  {
    goto LABEL_15;
  }

  if (CMFormatDescriptionEqual(*(DerivedStorage + 24), a2))
  {
    v4 = 1;
    goto LABEL_16;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(a2);
  if (MediaSubType == CMFormatDescriptionGetMediaSubType(*(DerivedStorage + 24)) && *(DerivedStorage + 5208) == Dimensions.width && *(DerivedStorage + 5212) == Dimensions.height && (*buf = 0, !getBitDepthsAndChromaFormatFromFormatDesc_0()) && *buf == *(DerivedStorage + 6528) && !*(DerivedStorage + 6529) && !*(DerivedStorage + 6530) && !*(DerivedStorage + 6412))
  {
    v4 = 0;
  }

  else
  {
LABEL_15:
    v4 = 0;
  }

LABEL_16:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "AppleAVDWrapperH264DecoderCanAcceptFormatDescription";
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): returning %d (0: reject; 1: accept)", buf, 0x12u);
  }

  return v4;
}

uint64_t AppleAVDWrapperH264DecoderStartTileSession(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v45 = 0;
  cf = 0;
  pixelBufferOut = 0;
  v43 = 0;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  readPreferences(v38);
  v5 = BYTE12(v38[0]);
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v48 = "AppleAVDWrapperH264DecoderStartTileSession";
      v9 = MEMORY[0x277D86220];
      v10 = "AppleAVD: ERROR: %s no instance storage!";
      v11 = 12;
      goto LABEL_7;
    }

    return 4294954387;
  }

  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 8816);
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v48 = "AppleAVDWrapperH264DecoderStartTileSession";
      v49 = 1024;
      v50 = v8;
      v9 = MEMORY[0x277D86220];
      v10 = "AppleAVD: %s ERROR: pluginState isn't kPluginCreated, is %d";
      v11 = 18;
LABEL_7:
      _os_log_impl(&dword_277606000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, v11);
      return 4294954387;
    }

    return 4294954387;
  }

  v13 = (DerivedStorage + 5201);
  *(DerivedStorage + 8916) = DWORD1(v41);
  pthread_mutex_init((DerivedStorage + 6432), 0);
  pthread_mutex_lock((v7 + 6432));
  *(v7 + 8) = a2;
  *(v7 + 16) = 1;
  FigFormatDescriptionRelease();
  v14 = FigFormatDescriptionRetain();
  *(v7 + 24) = v14;
  Dimensions = CMVideoFormatDescriptionGetDimensions(v14);
  v16 = Dimensions;
  *(v7 + 5208) = Dimensions;
  v17 = HIDWORD(Dimensions);
  *(v7 + 5204) = 0;
  *(v7 + 6416) = 0;
  *(v7 + 8904) = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v48 = "AppleAVDWrapperH264DecoderStartTileSession";
    v49 = 1024;
    v50 = v16;
    v51 = 1024;
    v52 = v17;
    v53 = 2048;
    v54 = v7;
    v55 = 2080;
    v56 = "06:37:34";
    v57 = 2080;
    v58 = "Oct 23 2025";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() codecType: AVC, %d x %d,  session: %p built %s %s", buf, 0x36u);
  }

  *(v7 + 8908) = -1;
  if (MGGetBoolAnswer())
  {
    *(v7 + 8908) = HIDWORD(v39);
  }

  HeaderBuffer_1 = CreateHeaderBuffer_1(v7, a3);
  if (HeaderBuffer_1)
  {
    v12 = HeaderBuffer_1;
    Mutable = 0;
    goto LABEL_33;
  }

  AVDH264Instance = CreateAVDH264Instance(v7, v5);
  if (AVDH264Instance)
  {
    v21 = AVDH264Instance;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_H264VideoDecoder ERROR: createAppleAVDHW_H264DecoderInstance returned error", buf, 2u);
    }

    if (*(v7 + 8816) != 1)
    {
      ReleaseHeaderBufferAndCloseFileIO_0(v7);
    }

    Mutable = 0;
    if (v21 == -536870210)
    {
      v12 = 4294954383;
    }

    else
    {
      v12 = 4294954385;
    }

    goto LABEL_33;
  }

  v22 = *(v7 + 6529);
  if ((v22 | 2) != 2 || v22 != *(v7 + 6530))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(v7 + 6530);
      *buf = 136315650;
      v48 = "AppleAVDWrapperH264DecoderStartTileSession";
      v49 = 1024;
      v50 = v22;
      v51 = 1024;
      v52 = v30;
      v27 = MEMORY[0x277D86220];
      v28 = "AppleAVD: ERROR: %s(): invalid bit depth [luma depth minus 8 = %d, chroma depth minus 8 = %d]\n";
      v29 = 24;
      goto LABEL_30;
    }

LABEL_31:
    Mutable = 0;
LABEL_32:
    v12 = 4294954385;
LABEL_33:
    FigFormatDescriptionRelease();
    *(v7 + 24) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v48 = "AppleAVDWrapperH264DecoderStartTileSession";
      v49 = 1024;
      v50 = v12;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
    }

    goto LABEL_35;
  }

  createPixelFormatList(v22, *(v7 + 6528), *(v7 + 6585), 0, v59, &v43, 0, *(v7 + 5224), 0, 0, 0, 0);
  v23 = *(v7 + 6496);
  *(v7 + 5216) = v23;
  v24 = *(v7 + 6500);
  *(v7 + 5220) = v24;
  PixelBufferAttributesDictionary = CreatePixelBufferAttributesDictionary(*(v7 + 5224), v16, v17, v23, v24, v59, v43, 0, &cf, 0);
  if (PixelBufferAttributesDictionary)
  {
    v26 = PixelBufferAttributesDictionary;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v48 = "AppleAVDWrapperH264DecoderStartTileSession";
      v49 = 1024;
      v50 = v26;
      v27 = MEMORY[0x277D86220];
      v28 = "AppleAVD: ERROR: %s(): createPixelBufferAttributesDictionary failed with %d\n";
      v29 = 18;
LABEL_30:
      _os_log_impl(&dword_277606000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, v29);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  setSIntValue(Mutable, *MEMORY[0x277CE2AF0], 16);
  setSIntValue(Mutable, *MEMORY[0x277CE2AE8], 16);
  setSIntValue(Mutable, *MEMORY[0x277CE2AE0], 64);
  setSIntValue(Mutable, *MEMORY[0x277CE2AB0], 0x10000);
  setSIntValue(Mutable, *MEMORY[0x277CE2AD0], 64);
  setSIntValue(Mutable, *MEMORY[0x277CE2AB8], 0x10000);
  setSIntValue(Mutable, *MEMORY[0x277CE2AD8], 64);
  setSIntValue(Mutable, *MEMORY[0x277CE2AA0], 262080);
  setSIntValue(Mutable, *MEMORY[0x277CE2AC8], 64);
  setSIntValue(Mutable, *MEMORY[0x277CE2AC0], 64);
  VTTileDecoderSessionSetTileDecodeRequirements();
  v32 = CreatePixelBufferAttributesDictionary(*(v7 + 5224), *(v7 + 5216), *(v7 + 5220), *(v7 + 5216), *(v7 + 5220), v59, v43, 0, &v45, 1);
  if (v32)
  {
    v33 = v32;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    *buf = 136315394;
    v48 = "AppleAVDWrapperH264DecoderStartTileSession";
    v49 = 1024;
    v50 = v33;
    v34 = MEMORY[0x277D86220];
    v35 = "AppleAVD: ERROR: %s(): createPixelBufferAttributesDictionary failed with %d\n";
LABEL_49:
    _os_log_impl(&dword_277606000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0x12u);
    goto LABEL_32;
  }

  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], *(v7 + 5216), *(v7 + 5220), v59[0], v45, &pixelBufferOut))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    *buf = 136315394;
    v48 = "AppleAVDWrapperH264DecoderStartTileSession";
    v49 = 1024;
    v50 = 0;
    v34 = MEMORY[0x277D86220];
    v35 = "AppleAVD: ERROR: %s(): CVPixelBufferCreate failed with %d\n";
    goto LABEL_49;
  }

  v36 = AppleAVDSetParameter(*(v7 + 5184), 28, pixelBufferOut);
  if (v36)
  {
    v37 = v36;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v48 = "AppleAVDWrapperH264DecoderStartTileSession";
      v49 = 1024;
      v50 = v37;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): AppleAVDSetParameter [kAppleAVDSetTileCVPixelBufRefDecode] failed with %d\n", buf, 0x12u);
    }

    if (pixelBufferOut)
    {
      CVPixelBufferRelease(pixelBufferOut);
    }

    goto LABEL_32;
  }

  v12 = 0;
  *v13 = 1;
  *(v7 + 5204) = 1;
  *(v7 + 8816) = 2;
LABEL_35:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v45)
  {
    CFRelease(v45);
    v45 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  pthread_mutex_unlock((v7 + 6432));
  return v12;
}

uint64_t AppleAVDWrapperH264DecoderDecodeTile(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, _DWORD *a9)
{
  v48 = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVDWrapperH264DecoderDecodeTile - ERROR! storage is NULL\n", buf, 2u);
    }

    return 311;
  }

  v15 = DerivedStorage;
  pthread_mutex_lock((DerivedStorage + 6432));
  v16 = *(v15 + 8816);
  if (v16 != 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v37 = "AppleAVDWrapperH264DecoderDecodeTile";
      v38 = 1024;
      *v39 = v16;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s called on plugin in state %d", buf, 0x12u);
    }

    pthread_mutex_unlock((v15 + 6432));
    return 311;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  v18 = DataBuffer;
  if (!DataBuffer || (DataLength = CMBlockBufferGetDataLength(DataBuffer)) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v37 = v18;
      v38 = 2048;
      *v39 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR:  either tile dataBuffer=%p is invalid or dataLength=%zu is invalid!", buf, 0x16u);
    }

    v23 = *(v15 + 8);
    v22 = -12909;
    v24 = a2;
    v25 = 4294954387;
    goto LABEL_18;
  }

  v20 = DataLength;
  destination[1] = DataLength;
  v35 = 0;
  destination[0] = 0;
  LODWORD(v35) = *(v15 + 5204);
  v21 = AppleAVDGetParameter(*(v15 + 5184), 55, destination);
  if (v21)
  {
    v22 = v21;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v37 = "AppleAVDWrapperH264DecoderDecodeTile";
      v38 = 1024;
      *v39 = v22;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): AppleAVDGetParameter [kAppleAVDGetCompressedPictureBuffer] failed with %d\n", buf, 0x12u);
    }

    v23 = *(v15 + 8);
    v24 = a2;
    v25 = 4294954385;
LABEL_18:
    MEMORY[0x277CAEB50](v23, v24, v25, 2, 0);
    if (a9)
    {
      *a9 = 2;
    }

    goto LABEL_20;
  }

  v27 = destination[0];
  if (CMBlockBufferCopyDataBytes(v18, 0, v20, destination[0]))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING, fail to copy data bytes, nothing to decode", buf, 2u);
    }

    MEMORY[0x277CAEB50](*(v15 + 8), a2, 0, 2, 0);
    AppleAVDReleaseOneCPBWithFrameworkError(*(v15 + 5184), *(v15 + 5204));
    if (a9)
    {
      *a9 = 2;
    }

LABEL_28:
    v22 = -12911;
LABEL_20:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v37 = "AppleAVDWrapperH264DecoderDecodeTile";
      v38 = 1024;
      *v39 = v22;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
    }

    goto LABEL_22;
  }

  bzero(v41, 0x878uLL);
  v40[0] = v27;
  v40[1] = v20;
  v28 = *(v15 + 5204);
  v41[0] = v28;
  if (!*(v15 + 8808))
  {
    if (*(v15 + 8804))
    {
      v29 = 2;
LABEL_35:
      v41[1] = v29;
      goto LABEL_36;
    }

LABEL_34:
    v29 = 1;
    goto LABEL_35;
  }

  if ((a8 & 4) == 0)
  {
    goto LABEL_34;
  }

LABEL_36:
  v43 = 0;
  v44 = 0x100000000;
  v46 = 1;
  v45 = a7;
  v47 = a6;
  if (a8)
  {
    v42 = 0;
    if (a9)
    {
      *a9 |= 1u;
      LOBYTE(v28) = *(v15 + 5204);
    }
  }

  else
  {
    v42 = 1;
  }

  *(v15 + 8 * v28 + 2112) = a2;
  v30 = AppleAVDDecodeFrame(*(v15 + 5184), v40);
  if (v30)
  {
    MEMORY[0x277CAEB50](*(v15 + 8), a2, v30, 2, 0);
    AppleAVDReleaseOneCPBWithFrameworkError(*(v15 + 5184), *(v15 + 5204));
    if (a9)
    {
      *a9 = 2;
    }

    v22 = v43;
    v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v31)
      {
        v32 = *(v15 + 5204);
        *buf = 136315650;
        v37 = "AppleAVDWrapperH264DecoderDecodeTile";
        v38 = 1024;
        *v39 = v32;
        *&v39[4] = 1024;
        *&v39[6] = v22;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): framenum %d decryptError %x\n", buf, 0x18u);
        v22 = v43;
        if (!v43)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_20;
    }

    if (v31)
    {
      v33 = *(v15 + 5204);
      *buf = 136315394;
      v37 = "AppleAVDWrapperH264DecoderDecodeTile";
      v38 = 1024;
      *v39 = v33;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): framenum %d kVTVideoDecoderMalfunctionErr\n", buf, 0x12u);
    }

    goto LABEL_28;
  }

  ++*(v15 + 5204);
LABEL_22:
  pthread_mutex_unlock((v15 + 6432));
  return 0;
}

uint64_t AppleAVDWrapperH264DecoderDecodeFrameWithOptions(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, char a4, const __CFDictionary *a5, int *a6)
{
  valuePtr[1] = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!a5)
    {
      goto LABEL_17;
    }

    v13 = DerivedStorage;
    valuePtr[0] = 0;
    Value = CFDictionaryGetValue(a5, *MEMORY[0x277CE2620]);
    if (!Value)
    {
      goto LABEL_17;
    }

    v15 = Value;
    v16 = CFDictionaryGetValue(Value, *MEMORY[0x277CE2770]);
    if (v16)
    {
      CFNumberGetValue(v16, kCFNumberIntType, valuePtr);
      v17 = CFDictionaryGetValue(v15, *MEMORY[0x277CE2768]);
      if (v17)
      {
        CFNumberGetValue(v17, kCFNumberIntType, valuePtr + 4);
        v18 = valuePtr[0];
        if (LODWORD(valuePtr[0]) != 1080)
        {
          v19 = HIDWORD(valuePtr[0]);
          if (HIDWORD(valuePtr[0]) != 1080 && ((LOBYTE(valuePtr[0]) | BYTE4(valuePtr[0])) & 0xF) != 0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v31 = 136315650;
              v32 = "AppleAVDWrapperH264DecoderDecodeFrameWithOptions";
              v33 = 1024;
              v34 = v18;
              v35 = 1024;
              v36 = v19;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s(): Non-mod16 VRA dimensions with width %d, height %d\n", &v31, 0x18u);
            }

            if (*(v13 + 8816) == 2)
            {
              v20 = *(v13 + 5216);
              if (valuePtr[0] != *(v13 + 5216))
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_32;
                }

                v30 = *(v13 + 5220);
                v31 = 136315650;
                v32 = "AppleAVDWrapperH264DecoderDecodeFrameWithOptions";
                v33 = 1024;
                v34 = v20;
                v35 = 1024;
                v36 = v30;
                v22 = MEMORY[0x277D86220];
                v23 = "AppleAVD: ERROR: %s(): invalid dimensions (coded width %d, height %d)\n";
                v28 = 24;
                goto LABEL_31;
              }
            }
          }
        }

        v21 = *(v13 + 5184);
        if (!v21)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v31 = 136315138;
            v32 = "AppleAVDWrapperH264DecoderDecodeFrameWithOptions";
            v22 = MEMORY[0x277D86220];
            v23 = "AppleAVD: ERROR: %s() - trying to set kAppleAVDSetVRADimensions before videoContext was created!\n";
            goto LABEL_30;
          }

LABEL_32:
          v24 = 4294954385;
LABEL_33:
          v25 = 2;
          VTDecoderSessionEmitDecodedFrame();
          if (!a6)
          {
LABEL_34:
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v31 = 136315138;
              v32 = "AppleAVDWrapperH264DecoderDecodeFrameWithOptions";
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s(): Got NULL infoFlagsOut!\n", &v31, 0xCu);
            }

            return v24;
          }

LABEL_18:
          *a6 = v25;
          return v24;
        }

        if (AppleAVDSetParameter(v21, 31, valuePtr))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v31 = 136315138;
            v32 = "AppleAVDWrapperH264DecoderDecodeFrameWithOptions";
            v22 = MEMORY[0x277D86220];
            v23 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDSetVRADimensions returned ERROR\n";
LABEL_30:
            v28 = 12;
LABEL_31:
            _os_log_impl(&dword_277606000, v22, OS_LOG_TYPE_DEFAULT, v23, &v31, v28);
            goto LABEL_32;
          }

          goto LABEL_32;
        }

LABEL_17:
        v24 = AppleAVDWrapperH264DecoderDecodeFrame(a1, a2, a3, a4, a6);
        v25 = 0;
        if (!a6)
        {
          goto LABEL_34;
        }

        goto LABEL_18;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136315138;
        v32 = "AppleAVDWrapperH264DecoderDecodeFrameWithOptions";
        v26 = MEMORY[0x277D86220];
        v27 = "AppleAVD: ERROR: %s(): Failed to retrieve kVTDecompressionResolutionKey_Height from dictionary\n";
        goto LABEL_26;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315138;
      v32 = "AppleAVDWrapperH264DecoderDecodeFrameWithOptions";
      v26 = MEMORY[0x277D86220];
      v27 = "AppleAVD: ERROR: %s(): Failed to retrieve kVTDecompressionResolutionKey_Width from dictionary\n";
LABEL_26:
      _os_log_impl(&dword_277606000, v26, OS_LOG_TYPE_DEFAULT, v27, &v31, 0xCu);
    }

    v24 = 4294954394;
    goto LABEL_33;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVDWrapperH264DecoderDecodeFrameWithOptions - ERROR! storage is NULL\n", &v31, 2u);
  }

  return 311;
}

uint64_t CreateAVDH264Instance(uint64_t a1, unsigned __int8 a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v32 = 0;
  *v33 = 0;
  v3 = AppleAVDOpenConnection(v33, 1, 1, a2);
  if (v3)
  {
    return v3;
  }

  v5 = *v33;
  *(a1 + 5184) = *v33;
  *(a1 + 8816) = 1;
  if (*(a1 + 8868) != -1)
  {
    *v50 = *(a1 + 8868);
    if (AppleAVDSetParameter(v5, 40, v50) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_H264VideoDecoder ERROR: kAppleAVDMemCacheMode set failed", buf, 2u);
    }

    v5 = *(a1 + 5184);
  }

  v31 = *(a1 + 8864);
  if (AppleAVDSetParameter(v5, 49, &v31) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v50 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_H264VideoDecoder ERROR: kAppleAVDSetTryEveryFrame set failed", v50, 2u);
  }

  if (AppleAVDSetParameter(*(a1 + 5184), 51, (a1 + 8872)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v50 = 136315138;
    *v51 = "CreateAVDH264Instance";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetOnDemandDVAMap failed", v50, 0xCu);
  }

  if (AppleAVDSetParameter(*(a1 + 5184), 52, (a1 + 8892)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v50 = 136315138;
    *v51 = "CreateAVDH264Instance";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetAVDCoreControlPerfWeight failed", v50, 0xCu);
  }

  if (AppleAVDSetParameter(*(a1 + 5184), 57, (a1 + 8880)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v50 = 136315138;
    *v51 = "CreateAVDH264Instance";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetCPBCacheBufferSizeFactor failed", v50, 0xCu);
  }

  if (AppleAVDSetParameter(*(a1 + 5184), 58, (a1 + 8884)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v50 = 136315138;
    *v51 = "CreateAVDH264Instance";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetCPBCacheNumBuffers failed", v50, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 8876);
    *v50 = 136315394;
    *v51 = "CreateAVDH264Instance";
    *&v51[8] = 1024;
    *&v51[10] = v6;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): about to kAppleAVDSetMiscPreferences, storage->miscPreferences is 0x%x\n", v50, 0x12u);
  }

  if (AppleAVDSetParameter(*(a1 + 5184), 59, (a1 + 8876)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v50 = 136315138;
    *v51 = "CreateAVDH264Instance";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetMiscPreferences failed", v50, 0xCu);
  }

  v30 = *(a1 + 6604);
  v7 = AppleAVDSetParameter(*(a1 + 5184), 24, &v30);
  if (v7)
  {
    v3 = v7;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v3;
    }

    v8 = *(a1 + 5204);
    *v50 = 67109376;
    *v51 = v8;
    *&v51[4] = 1024;
    *&v51[6] = v3;
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: AppleAVD_H264VideoDecoder: frame# %d, Could not set kAppleAVDSetCryptScheme, err %d\n";
    v11 = 14;
LABEL_31:
    _os_log_impl(&dword_277606000, v9, OS_LOG_TYPE_DEFAULT, v10, v50, v11);
    return v3;
  }

  v29 = DisplayCallBack_1;
  v3 = AppleAVDSetParameter(*v33, 1, &v29);
  if (v3)
  {
    return v3;
  }

  v12 = (a1 + 6528);
  if (*(a1 + 8888))
  {
    v13 = PostEmitCleanUpCallBack_1;
  }

  else
  {
    v13 = 0;
  }

  v28 = v13;
  v14 = AppleAVDSetParameter(*v33, 71, &v28);
  if (v14)
  {
    v3 = v14;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v3;
    }

    *v50 = 0;
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: AppleAVD_H264Decoder - ERROR setting parameter kAppleAVDPostEmitCleanUpCallBack";
    goto LABEL_42;
  }

  v15 = AppleAVDSetParameter(*v33, 70, (a1 + 8888));
  if (v15)
  {
    v3 = v15;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v3;
    }

    *v50 = 0;
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: AppleAVD_H264Decoder - ERROR setting parameter kAppleAVDSetParavirtualizedSession";
LABEL_42:
    v11 = 2;
    goto LABEL_31;
  }

  v16 = AppleAVDSetParameter(*v33, 2, a1);
  if (v16)
  {
    return v16;
  }

  v16 = AppleAVDSetParameter(*v33, 17, (a1 + 6600));
  if (v16)
  {
    return v16;
  }

  if (AppleAVDSetParameter(*(a1 + 5184), 35, (a1 + 6608)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_H264Decoder - AppleAVDSetParameter kAppleAVDEnableRVRA returned ERROR", v50, 2u);
    }

    return 4294954385;
  }

  if (AppleAVDSetParameter(*(a1 + 5184), 76, (a1 + 8908)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 8908);
    *v50 = 136315394;
    *v51 = "CreateAVDH264Instance";
    *&v51[8] = 1024;
    *&v51[10] = v17;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR failed to set kAppleAVDSetSliceHeaderThreshold to %d", v50, 0x12u);
  }

  if (AppleAVDCheckPlatform(&v32) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v50 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_H264VideoDecoder: AppleAVDCheckPlatform() returns false. Unusual, but we can proceed assuming AVC L6 is not supported.\n", v50, 2u);
  }

  *&v51[4] = 0u;
  v52 = 0u;
  v54 = 0;
  v53 = 0u;
  *v50 = 1;
  *v51 = *(a1 + 5208);
  *&v51[12] = *(a1 + 6416);
  v18 = *(a1 + 6412);
  LODWORD(v52) = *(a1 + 6424);
  DWORD1(v52) = v18;
  v54 = (v32 & 0x800) != 0;
  BYTE2(v54) = *(a1 + 16) == 1;
  v16 = AppleAVDInitializeDecoder(*(a1 + 5184), v50);
  if (v16)
  {
    return v16;
  }

  v16 = AppleAVDGetParameter(*v33, 8, (a1 + 5224));
  if (v16)
  {
    return v16;
  }

  v3 = AppleAVDGetParameter(*(a1 + 5184), 12, (a1 + 6496));
  v19 = *(a1 + 6496);
  if (!v54 && (v19 > 0x1000 || *(a1 + 6500) > 0x1000u || *(a1 + 5208) > 4096 || *(a1 + 5212) > 4096))
  {
    v20 = *(a1 + 6529);
    if (!*(a1 + 6529) && *v12 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 5208);
        v22 = *(a1 + 5212);
        v23 = *(a1 + 6500);
        *buf = 136316418;
        v35 = "CreateAVDH264Instance";
        v36 = 1024;
        v37 = v21;
        v38 = 1024;
        v39 = v19;
        v40 = 1024;
        v41 = v22;
        v42 = 1024;
        v43 = v23;
        v44 = 1024;
        v45 = 4096;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): pic size too large - either width (%d, %d) or height (%d, %d) > max dim. %d and it's 4:2:0, 8 bit, so software decoder can handle it.", buf, 0x2Au);
      }

      return 4294954387;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 5208);
      v25 = *(a1 + 5212);
      v26 = *(a1 + 6500);
      v27 = *v12;
      *buf = 136316930;
      v35 = "CreateAVDH264Instance";
      v36 = 1024;
      v37 = v24;
      v38 = 1024;
      v39 = v19;
      v40 = 1024;
      v41 = v25;
      v42 = 1024;
      v43 = v26;
      v44 = 1024;
      v45 = 4096;
      v46 = 1024;
      v47 = v20 + 8;
      v48 = 1024;
      v49 = v27;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s(): pic size too wide %d %d or tall %d %d vs. %d but depth %d chroma fmt %d, so we'll attempt it anyway", buf, 0x36u);
      v19 = *(a1 + 6496);
    }
  }

  if (v19 < 0x40 || *(a1 + 6500) <= 0x3Fu)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_H264VideoDecoder ERROR: Unsupported picture size!", buf, 2u);
    }

    return 305;
  }

  return v3;
}

uint64_t WriteNAL_0(FILE *__stream, uint64_t a2, unint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  __ptr = 0x1000000;
  if (a3 < 4)
  {
    return 0;
  }

  LODWORD(v6) = 0;
  v7 = 1;
  v8 = MEMORY[0x277D86220];
  while (1)
  {
    v9 = (a2 + v6);
    v11 = *v9;
    v10 = v9 + 1;
    v12 = bswap32(v11);
    v6 = (v6 + v12 + 4);
    if (v6 > a3)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 318;
      }

      *buf = 0;
      v19 = MEMORY[0x277D86220];
      goto LABEL_31;
    }

    if (v12 > a3)
    {
      break;
    }

    v13 = *v10 & 0x1F;
    if (v13 <= 6)
    {
      if (v13 == 1 || v13 == 5)
      {
        if (v7)
        {
          p_ptr = &__ptr;
          v16 = 4;
        }

        else
        {
          p_ptr = (&__ptr + 1);
          v16 = 3;
        }

        fwrite(p_ptr, 1uLL, v16, __stream);
        fwrite(v10, 1uLL, v12, __stream);
        v7 = 0;
        goto LABEL_25;
      }

      if (v13 != 6)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if ((*v10 & 0x1Fu) > 8)
      {
        if (v13 == 9 || v13 == 12)
        {
          goto LABEL_25;
        }

LABEL_21:
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v22 = v13;
          _os_log_impl(&dword_277606000, v8, OS_LOG_TYPE_DEFAULT, "AppleAVD: Bad NAL type %d\n", buf, 8u);
        }

        goto LABEL_25;
      }

      fwrite(&__ptr, 1uLL, 4uLL, __stream);
      fwrite(v10, 1uLL, v12, __stream);
    }

LABEL_25:
    if ((v6 + 4) > a3)
    {
      return 0;
    }
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    return 318;
  }

  *buf = 0;
  v19 = MEMORY[0x277D86220];
LABEL_31:
  _os_log_impl(&dword_277606000, v19, OS_LOG_TYPE_DEFAULT, "AppleAVD: WriteNAL kAVD_DECODER_ERROR_BAD_NAL_LENGTH ", buf, 2u);
  return 318;
}

uint64_t InitPixelBufferCompressionNotSupported_1(uint64_t a1)
{
  result = InitDisplayPixelBufferCompressionNotSupported(*a1, *(a1 + 5184), *(a1 + 5224), *(a1 + 5208), *(a1 + 5212), *(a1 + 5216), *(a1 + 5220), *(a1 + 6529), *(a1 + 6528), *(a1 + 6585), *(a1 + 8792), (a1 + 32), (a1 + 48), 0, 0);
  if (!result)
  {
    return InitReferencePixelBufferCompressionNotSupported(*a1, *(a1 + 5184), *(a1 + 5224), *(a1 + 5208), *(a1 + 5212), *(a1 + 5216), *(a1 + 5220), *(a1 + 6529), *(a1 + 6528), *(a1 + 6585), *(a1 + 8792), *(a1 + 6600), 4, 4, 4, 4, (a1 + 40), (a1 + 56));
  }

  return result;
}

uint64_t PostEmitCleanUpCallBack_1(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return MEMORY[0x282134FF0](*(a1 + 8));
  }

  else
  {
    return MEMORY[0x282134E58](*a1);
  }
}

uint64_t FigCPECryptorCreateProcessedBlockBufferAndSubsampleAuxiliaryDataWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(CMBaseObjectGetVTable() + 16);
  if (*v12 < 8uLL)
  {
    return 4294954514;
  }

  v13 = v12[30];
  if (!v13)
  {
    return 4294954514;
  }

  return v13(a1, a2, a3, a4, a5, a6);
}

uint64_t getBitDepthsAndChromaFormatFromFormatDesc_0()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v0;
  v26 = *MEMORY[0x277D85DE8];
  bzero(v23, 0x22D8uLL);
  HeaderBuffer_1 = CreateHeaderBuffer_1(v23, v15);
  if (!HeaderBuffer_1)
  {
    v17 = v25;
    *v8 = HIBYTE(v25);
    HeaderBuffer_1 = parseAvcSps(v24, v17, v14, v12, v10, v6, v4, v2);
  }

  if (v24)
  {
    free(v24);
  }

  if (HeaderBuffer_1 << 16 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315394;
    v20 = "getBitDepthsAndChromaFormatFromFormatDesc";
    v21 = 1024;
    v22 = HeaderBuffer_1;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", &v19, 0x12u);
  }

  return HeaderBuffer_1;
}

CFDictionaryRef h264_createFrameTypesArrayElement(const void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CE2698];
  v4 = a1;
  keys = v1;
  v2 = CFDictionaryCreate(*MEMORY[0x277CBECE8], &keys, &v4, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "h264_createFrameTypesArrayElement";
    v8 = 2080;
    v9 = "frameTypeDict";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", buf, 0x16u);
  }

  return v2;
}

void AVC_RBSP::AVC_RBSP(AVC_RBSP *this)
{
  *this = &unk_288665408;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 16) = 0;
  *(this + 7) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 24) = -1;
}

uint64_t AVC_RBSP::next_access_unit(AVC_RBSP *this, int a2)
{
  AVC_RBSP::flush_bits(this, *(this + 4) & 7);
  if (!a2)
  {
    return 1;
  }

  v4 = *(this + 1);
  if (HIDWORD(v4) == 1)
  {
    v5 = 32;
LABEL_6:
    AVC_RBSP::flush_bits(this, v5);
    return 1;
  }

  if (v4 >> 40 == 1)
  {
    v5 = 24;
    goto LABEL_6;
  }

  return 0;
}

uint64_t AVC_RBSP::get_next_uint32(AVC_RBSP *this, unsigned __int8 *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *(this + 4) - a2;
  *a5 = 0;
  if (v5 <= 0)
  {
    *a4 = 0;
    *a3 = 0;
    *(this + 24) = -1;
    return 0xFFFFFFFFLL;
  }

  if (v5 == 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 255;
    v9 = 255;
    v10 = 255;
LABEL_9:
    v12 = 255;
LABEL_10:
    v13 = 255;
    goto LABEL_11;
  }

  v10 = a2[1];
  if (v5 < 3)
  {
    v6 = 0;
    v7 = 0;
    v8 = 255;
    v9 = 255;
    goto LABEL_9;
  }

  v9 = a2[2];
  if (v5 == 3)
  {
    v6 = 0;
    v7 = 0;
    v8 = 255;
    goto LABEL_9;
  }

  v12 = a2[3];
  if (v5 < 5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 255;
    goto LABEL_10;
  }

  v8 = a2[4];
  if (v5 == 5)
  {
    v6 = 0;
    v13 = 255;
  }

  else
  {
    v13 = a2[5];
    v6 = 1;
  }

  v7 = 1;
LABEL_11:
  v14 = *a2;
  if (*(this + 24) || v14 != 3 || v9 || v12 || v8 != 3)
  {
    if (*(this + 49) | v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v10 == 3;
    }

    v16 = v15;
    if (v16 != 1 || v9 != 0 || v12 != 0 || v8 != 3)
    {
      if (*(this + 48))
      {
        goto LABEL_29;
      }

      if (*(this + 49))
      {
        v23 = 0;
      }

      else
      {
        v23 = v14 == 3;
      }

      v24 = v23;
      if (v24 == 1 && v10 == 0 && v9 == 0 && v12 == 3)
      {
        v10 = 0;
        v22 = -16711936;
        v12 = v8;
        goto LABEL_63;
      }

      if ((v24 & 1) == 0)
      {
LABEL_29:
        if (v16)
        {
          v14 = 0;
          v20 = 16711680;
          v21 = v9;
        }

        else if (*a2 || v10 || v9 != 3)
        {
          if (v10 || v9 || v12 != 3)
          {
            v29 = 4;
            if (v5 < 4)
            {
              v29 = v5;
            }

            *a4 = v29;
            *a3 = v29;
            switch(v5)
            {
              case 3:
                *(this + 48) = a2[1];
                v30 = a2[2];
                break;
              case 2:
                *(this + 48) = *a2;
                v30 = a2[1];
                break;
              case 1:
                *(this + 48) = -1;
                v30 = *a2;
                break;
              default:
                *(this + 48) = a2[2];
                v30 = a2[3];
                break;
            }

            v21 = v10;
            v8 = v12;
            v12 = v9;
            goto LABEL_73;
          }

          v12 = 0;
          v21 = 0;
          v20 = 255;
        }

        else
        {
          v21 = 0;
          v14 = 0;
          v20 = 65280;
        }
      }

      else
      {
        v20 = -16777216;
        v21 = v9;
        v14 = v10;
      }

      *a5 = v20;
      v31 = v5 - 1;
      if (v7)
      {
        v31 = 4;
      }

      *a4 = v31;
      v29 = v31 + 1;
      *a3 = v31 + 1;
      if (v5 > 2)
      {
        if (v5 == 3)
        {
          *(this + 48) = a2[1];
          v30 = a2[2];
        }

        else if (v5 == 4)
        {
          *(this + 48) = a2[2];
          v30 = a2[3];
        }

        else
        {
          *(this + 48) = a2[3];
          v30 = a2[4];
        }
      }

      else if (v5 == 1)
      {
        v30 = -1;
        *(this + 48) = -1;
      }

      else
      {
        *(this + 48) = *a2;
        v30 = a2[1];
      }

      goto LABEL_73;
    }

    v12 = 0;
    v10 = 0;
    v22 = 16711935;
  }

  else
  {
    v12 = 0;
    v22 = -16776961;
  }

LABEL_63:
  *a5 = v22;
  v28 = v5 - 2;
  if (v6)
  {
    v28 = 4;
  }

  *a4 = v28;
  v29 = v28 + 2;
  *a3 = v28 + 2;
  if ((v5 - 1) >= 3)
  {
    if (v5 == 4)
    {
      v21 = 0;
      *(this + 48) = a2[2];
      v30 = a2[3];
    }

    else
    {
      v21 = 0;
      if (v5 == 5)
      {
        *(this + 48) = a2[3];
        v30 = a2[4];
      }

      else
      {
        *(this + 48) = a2[4];
        v30 = a2[5];
      }
    }
  }

  else
  {
    v21 = 0;
    v30 = -1;
    *(this + 48) = -1;
  }

  v14 = v10;
  v8 = v13;
LABEL_73:
  *(this + 49) = v30;
  if (v5 < v29 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v32 = 136315394;
    v33 = "get_next_uint32";
    v34 = 1024;
    v35 = 441;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v32, 0x12u);
  }

  return (v14 << 24) | (v21 << 16) | (v12 << 8) | v8;
}

uint64_t AVC_RBSP::flush_bits(uint64_t this, int a2)
{
  v2 = this;
  v3 = *(this + 16);
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    *(this + 8) <<= a2;
    *(this + 56) <<= a2;
  }

  else
  {
    *v15 = 0;
    v5 = *(this + 8);
    v6 = *(this + 56);
    v7 = v5 << v3;
    v8 = v6 << v3;
    v9 = v5 >> -v3;
    v10 = v6 >> -v3;
    if (v3 < 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    if (v3 < 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    v14 = 0;
    this = AVC_RBSP::get_next_uint32(this, *(this + 24), v15, &v14, &v15[1]);
    *(v2 + 24) += v15[0];
    v3 = 8 * v14;
    v13 = (v12 | v15[1]) << v4;
    *(v2 + 8) = (v11 | this) << v4;
    *(v2 + 56) = v13;
    a2 = v4;
  }

  *(v2 + 16) = v3 - a2;
  return this;
}

uint64_t AVC_RBSP::getNumberOfBitsParsed(int8x8_t *this)
{
  v1 = vaddlv_u8(vcnt_s8(this[7])) & 0x78;
  if (!*&this[7])
  {
    v1 = 0;
  }

  return (8 * (this[3].i32[0] - this[5].i32[0]) - (this[2].i32[0] + v1) - 32);
}

BOOL AVC_RBSP::more_rbsp_data(int8x8_t *this)
{
  v1 = vaddlv_u8(vcnt_s8(this[7])) & 0x78;
  if (!*&this[7])
  {
    v1 = 0;
  }

  v2 = this[2].i32[0] + v1 + 8 * this[8].i32[0] + 8 * (this[5].i32[0] - this[3].i32[0]) + 32;
  return v2 > 8 || this[1].u32[1] >> (32 - v2) << -v2 != 0x80000000;
}

uint64_t AVC_RBSP::setRBSP(AVC_RBSP *this, unsigned __int8 *a2, uint64_t a3)
{
  *v8 = 0;
  *(this + 4) = &a2[a3];
  *(this + 5) = a2;
  *(this + 16) = a3;
  *(this + 7) = 0;
  *(this + 24) = -1;
  v7 = 0;
  *(this + 1) = AVC_RBSP::get_next_uint32(this, a2, v8, &v7, &v8[1]) << 32;
  *(this + 7) = v8[1] << 32;
  v5 = &a2[v8[0]];
  result = AVC_RBSP::get_next_uint32(this, v5, v8, &v7, &v8[1]);
  *(this + 1) |= result;
  *(this + 7) |= v8[1];
  *(this + 3) = &v5[v8[0]];
  *(this + 4) = 8 * v7;
  return result;
}

uint64_t AVC_RBSP::setLen(uint64_t this, unsigned __int8 *a2, uint64_t a3)
{
  *(this + 32) = &a2[a3];
  *(this + 40) = a2;
  *(this + 64) = a3;
  return this;
}

uint64_t AVC_RBSP::parseNAL(uint64_t a1, _BYTE *a2, int a3)
{
  access_unit = AVC_RBSP::next_access_unit(a1, a3);
  if (access_unit)
  {
    v6 = *(a1 + 8) >> 63;
    AVC_RBSP::flush_bits(a1, 1);
    *a2 = *a2 & 0xFE | v6;
    v7 = *(a1 + 8);
    AVC_RBSP::flush_bits(a1, 2);
    *a2 = *a2 & 0xF9 | (v7 >> 61) & 6;
    LOBYTE(v7) = *(a1 + 15);
    AVC_RBSP::flush_bits(a1, 5);
    *a2 = v7 & 0xF8 | *a2 & 7;
  }

  return access_unit;
}

uint64_t AVC_RBSP::scalingList(AVC_RBSP *this, unsigned __int8 *a2, unsigned int a3, unsigned int a4, int a5)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3 == 16 || a3 == 64)
  {
    if (a5)
    {
      v8 = 0;
      v9 = a3;
      v10 = &zigZagScanOrder4x4;
      LODWORD(v11) = 8;
      v12 = 8;
      v13 = &zigZagScanOrder8x8;
      do
      {
        if (a3 == 16)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        v15 = *v14;
        if (!v11 || ((v16 = __clz(*(this + 3))) == 0 ? (AVC_RBSP::flush_bits(this, 1), v18 = 0) : (AVC_RBSP::flush_bits(this, v16 + 1), v17 = *(this + 3) >> -v16, AVC_RBSP::flush_bits(this, v16), v18 = v17 + ~(-1 << v16)), LODWORD(v11) = ((v18 & 1) == 0) + v12 + (-((v18 & 1) == 0) ^ ((v18 + 1) >> 1)), v8 = (v15 | (((v18 & 1) == 0) + v12 + (-((v18 & 1) == 0) ^ ((v18 + 1) >> 1)))) == 0, v11 = v11, v19 = v11, !v11))
        {
          LODWORD(v11) = 0;
          v19 = v12;
        }

        a2[v15] = v19;
        ++v10;
        ++v13;
        v12 = v19;
        --v9;
      }

      while (v9);
      return (2 * v8);
    }

    else
    {
      if (a3 == 16)
      {
        if (a4 > 2)
        {
          v21 = &avcDefaultInterScalingList4x4;
        }

        else
        {
          v21 = &avcDefaultIntraScalingList4x4;
        }

        *a2 = *v21;
      }

      else
      {
        if (a4)
        {
          v22 = &avcDefaultInterScalingList8x8;
        }

        else
        {
          v22 = &avcDefaultIntraScalingList8x8;
        }

        v23 = v22[1];
        *a2 = *v22;
        *(a2 + 1) = v23;
        v24 = v22[3];
        *(a2 + 2) = v22[2];
        *(a2 + 3) = v24;
      }

      return 1;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v25[0] = 67109120;
      v25[1] = a3;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: Wrong sizeOfScalingList (%d). Should be either 16 or 64", v25, 8u);
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t AVC_RBSP::se_v(AVC_RBSP *this)
{
  v2 = __clz(*(this + 3));
  if (v2)
  {
    AVC_RBSP::flush_bits(this, v2 + 1);
    v3 = *(this + 3) >> -v2;
    AVC_RBSP::flush_bits(this, v2);
    v4 = v3 + ~(-1 << v2);
  }

  else
  {
    AVC_RBSP::flush_bits(this, 1);
    v4 = 0;
  }

  return (-((v4 & 1) == 0) ^ ((v4 + 1) >> 1)) + ((v4 & 1) == 0);
}

uint64_t AVC_RBSP::parseSPS(uint64_t a1, uint64_t a2)
{
  v90 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = MEMORY[0x277D86220];
      v15 = "AppleAVD: NULL spsList";
      v16 = 2;
      goto LABEL_69;
    }

    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 8);
  v5 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  v78 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  v77 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  v76 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  v6 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  v7 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  v8 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 2);
  v9 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 8);
  v10 = __clz(*(a1 + 12));
  if (v10)
  {
    AVC_RBSP::flush_bits(a1, v10 + 1);
    v11 = *(a1 + 12) >> -v10;
    AVC_RBSP::flush_bits(a1, v10);
    v12 = v11 + ~(-1 << v10);
    v13 = v12;
    if (v12 >= 0x20u)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v80 = v12;
        *&v80[4] = 1024;
        *&v80[6] = 31;
        v14 = MEMORY[0x277D86220];
        v15 = "AppleAVD: seq_parameter_set_id(%d) out of range [0..%d]";
        v16 = 14;
LABEL_69:
        _os_log_impl(&dword_277606000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
        return 0xFFFFFFFFLL;
      }

      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    AVC_RBSP::flush_bits(a1, 1);
    v13 = 0;
    LOBYTE(v12) = 0;
  }

  v17 = HIBYTE(v4);
  if ((HIBYTE(v4) & 0xDF) != 0x56 && ((v17 - 66) > 0x3E || ((1 << (HIBYTE(v4) - 66)) & 0x4100100400420801) == 0) && v17 != 44 && v17 != 244)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v80 = HIBYTE(v4);
      v14 = MEMORY[0x277D86220];
      v15 = "AppleAVD: profile_idc(%d) is not valid";
      v16 = 8;
      goto LABEL_69;
    }

    return 0xFFFFFFFFLL;
  }

  v18 = a2;
  v19 = v5 >> 63;
  v75 = v13;
  v74 = v18;
  v20 = v18 + 2224 * v13;
  bzero((v20 + 4), 0x8ACuLL);
  *&v21 = 0x1010101010101010;
  *(&v21 + 1) = 0x1010101010101010;
  *(v20 + 34) = v21;
  v22 = (v20 + 34);
  *(v20 + 242) = v21;
  *(v20 + 226) = v21;
  *(v20 + 210) = v21;
  *(v20 + 194) = v21;
  *(v20 + 178) = v21;
  *(v20 + 162) = v21;
  *(v20 + 146) = v21;
  *(v20 + 130) = v21;
  *(v20 + 114) = v21;
  *(v20 + 98) = v21;
  *(v20 + 82) = v21;
  *(v20 + 66) = v21;
  *(v20 + 50) = v21;
  *(v20 + 482) = v21;
  *(v20 + 498) = v21;
  *(v20 + 450) = v21;
  *(v20 + 466) = v21;
  *(v20 + 418) = v21;
  *(v20 + 434) = v21;
  *(v20 + 386) = v21;
  *(v20 + 402) = v21;
  *(v20 + 354) = v21;
  *(v20 + 370) = v21;
  *(v20 + 322) = v21;
  *(v20 + 338) = v21;
  *(v20 + 290) = v21;
  *(v20 + 306) = v21;
  *(v20 + 258) = v21;
  *(v20 + 274) = v21;
  *v20 = v17;
  *(v20 + 1) = (v78 >> 62) & 2 | v19 | (v77 >> 61) & 4 | (v76 >> 60) & 8 | (v6 >> 59) & 0x10 | (v7 >> 58) & 0x20 | HIBYTE(v8) & 0xC0;
  *(v20 + 2) = HIBYTE(v9);
  *(v20 + 3) = v12;
  *(v20 + 4) = 1;
  if ((v17 - 83) <= 0x2D && ((1 << (v17 - 83)) & 0x208808020009) != 0 || v17 == 244 || v17 == 44)
  {
    v23 = __clz(*(a1 + 12));
    if (v23)
    {
      AVC_RBSP::flush_bits(a1, v23 + 1);
      v24 = *(a1 + 12) >> -v23;
      AVC_RBSP::flush_bits(a1, v23);
      *(v20 + 4) = v24 + ~(-1 << v23);
      v25 = (v24 + ~(-1 << v23));
      if (v25 >= 4)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        *buf = 136316418;
        *v80 = "parseSPS";
        *&v80[8] = 1024;
        v81 = 760;
        v82 = 2080;
        v83 = "sps->chroma_format_idc";
        v84 = 1024;
        v85 = v25;
        v86 = 1024;
        v87 = 0;
        v88 = 1024;
        v89 = 3;
        v14 = MEMORY[0x277D86220];
        v15 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
LABEL_68:
        v16 = 46;
        goto LABEL_69;
      }

      if (v25 == 3)
      {
        v26 = *(a1 + 8) >> 63;
        AVC_RBSP::flush_bits(a1, 1);
        *(v20 + 5) = v26;
      }
    }

    else
    {
      AVC_RBSP::flush_bits(a1, 1);
      *(v20 + 4) = 0;
    }

    v27 = __clz(*(a1 + 12));
    if (v27)
    {
      AVC_RBSP::flush_bits(a1, v27 + 1);
      v28 = *(a1 + 12) >> -v27;
      AVC_RBSP::flush_bits(a1, v27);
      *(v20 + 6) = v28 + ~(-1 << v27);
      v29 = (v28 + ~(-1 << v27));
      if (v29 >= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        *buf = 136316418;
        *v80 = "parseSPS";
        *&v80[8] = 1024;
        v81 = 765;
        v82 = 2080;
        v83 = "sps->bit_depth_luma_minus8";
        v84 = 1024;
        v85 = v29;
        v86 = 1024;
        v87 = 0;
        v88 = 1024;
        v89 = 6;
        v14 = MEMORY[0x277D86220];
        v15 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
        goto LABEL_68;
      }
    }

    else
    {
      AVC_RBSP::flush_bits(a1, 1);
      *(v20 + 6) = 0;
    }

    v30 = __clz(*(a1 + 12));
    if (v30)
    {
      AVC_RBSP::flush_bits(a1, v30 + 1);
      v31 = *(a1 + 12) >> -v30;
      AVC_RBSP::flush_bits(a1, v30);
      *(v20 + 7) = v31 + ~(-1 << v30);
      v32 = (v31 + ~(-1 << v30));
      if (v32 >= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        *buf = 136316418;
        *v80 = "parseSPS";
        *&v80[8] = 1024;
        v81 = 768;
        v82 = 2080;
        v83 = "sps->bit_depth_chroma_minus8";
        v84 = 1024;
        v85 = v32;
        v86 = 1024;
        v87 = 0;
        v88 = 1024;
        v89 = 6;
        v14 = MEMORY[0x277D86220];
        v15 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
        goto LABEL_68;
      }
    }

    else
    {
      AVC_RBSP::flush_bits(a1, 1);
      *(v20 + 7) = 0;
    }

    v33 = *(a1 + 8) >> 63;
    AVC_RBSP::flush_bits(a1, 1);
    *(v20 + 8) = v33;
    v34 = *(a1 + 8);
    AVC_RBSP::flush_bits(a1, 1);
    *(v20 + 9) = v34 < 0;
    if (v34 < 0)
    {
      v35 = 0;
      v36 = *(v20 + 4);
      v37 = (v20 + 22);
      v38 = v36 == 3 ? 12 : 8;
      v39 = v74 + 2224 * v75 - 254;
      do
      {
        v40 = *(a1 + 8) >> 63;
        AVC_RBSP::flush_bits(a1, 1);
        *(v37 - 12) = v40;
        if (v35 > 5)
        {
          v44 = v35 - 6;
          v41 = a1;
          v42 = v39;
          v43 = 64;
        }

        else
        {
          v41 = a1;
          v42 = v22;
          v43 = 16;
          v44 = v35;
        }

        *v37++ = AVC_RBSP::scalingList(v41, v42, v43, v44, v40);
        ++v35;
        v22 += 16;
        v39 += 64;
      }

      while (v38 != v35);
      if (v36 != 3)
      {
        v45 = 0;
        v46 = (v74 + 2224 * v75 + 450);
        do
        {
          if (v45)
          {
            v47 = &avcDefaultIntraScalingList8x8;
          }

          else
          {
            v47 = &avcDefaultInterScalingList8x8;
          }

          v48 = v47[1];
          *v46 = *v47;
          v46[1] = v48;
          v49 = v47[3];
          v46[2] = v47[2];
          v46[3] = v49;
          ++v45;
          v46 -= 4;
        }

        while (v45 != 4);
      }
    }
  }

  v50 = __clz(*(a1 + 12));
  if (v50)
  {
    AVC_RBSP::flush_bits(a1, v50 + 1);
    v51 = *(a1 + 12) >> -v50;
    AVC_RBSP::flush_bits(a1, v50);
    *(v20 + 514) = v51 + ~(-1 << v50);
    v52 = (v51 + ~(-1 << v50));
    if (v52 >= 0xD)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      *buf = 136316418;
      *v80 = "parseSPS";
      *&v80[8] = 1024;
      v81 = 795;
      v82 = 2080;
      v83 = "sps->log2_max_frame_num_minus4";
      v84 = 1024;
      v85 = v52;
      v86 = 1024;
      v87 = 0;
      v88 = 1024;
      v89 = 12;
      v14 = MEMORY[0x277D86220];
      v15 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_68;
    }
  }

  else
  {
    AVC_RBSP::flush_bits(a1, 1);
    *(v20 + 514) = 0;
  }

  v53 = __clz(*(a1 + 12));
  if (!v53)
  {
    AVC_RBSP::flush_bits(a1, 1);
    *(v20 + 515) = 0;
LABEL_65:
    v56 = AVC_RBSP::ue_v(a1);
    *(v20 + 516) = v56;
    v57 = v56;
    if (v56 >= 0xDu)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      *buf = 136316418;
      *v80 = "parseSPS";
      *&v80[8] = 1024;
      v81 = 804;
      v82 = 2080;
      v83 = "sps->log2_max_pic_order_cnt_lsb_minus4";
      v84 = 1024;
      v85 = v57;
      v86 = 1024;
      v87 = 0;
      v88 = 1024;
      v89 = 12;
      v14 = MEMORY[0x277D86220];
      v15 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_68;
    }

    goto LABEL_78;
  }

  AVC_RBSP::flush_bits(a1, v53 + 1);
  v54 = *(a1 + 12) >> -v53;
  AVC_RBSP::flush_bits(a1, v53);
  *(v20 + 515) = v54 + ~(-1 << v53);
  v55 = (v54 + ~(-1 << v53));
  if (v55 >= 3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136316418;
    *v80 = "parseSPS";
    *&v80[8] = 1024;
    v81 = 799;
    v82 = 2080;
    v83 = "sps->pic_order_cnt_type";
    v84 = 1024;
    v85 = v55;
    v86 = 1024;
    v87 = 0;
    v88 = 1024;
    v89 = 2;
    v14 = MEMORY[0x277D86220];
    v15 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
    goto LABEL_68;
  }

  if (v55 == 1)
  {
    v59 = *(a1 + 8) >> 63;
    AVC_RBSP::flush_bits(a1, 1);
    *(v20 + 517) = v59;
    *(v20 + 520) = AVC_RBSP::se_v(a1);
    *(v20 + 524) = AVC_RBSP::se_v(a1);
    v60 = AVC_RBSP::ue_v(a1);
    *(v20 + 528) = v60;
    if (v60)
    {
      v61 = 0;
      do
      {
        v62 = __clz(*(a1 + 12));
        if (v62)
        {
          AVC_RBSP::flush_bits(a1, v62 + 1);
          v63 = *(a1 + 12) >> -v62;
          AVC_RBSP::flush_bits(a1, v62);
          v64 = v63 + ~(-1 << v62);
        }

        else
        {
          AVC_RBSP::flush_bits(a1, 1);
          v64 = 0;
        }

        *(v20 + 532 + 4 * v61++) = (-((v64 & 1) == 0) ^ ((v64 + 1) >> 1)) + ((v64 & 1) == 0);
      }

      while (v61 < *(v20 + 528));
    }

    goto LABEL_78;
  }

  if (!v55)
  {
    goto LABEL_65;
  }

LABEL_78:
  *(v20 + 1556) = AVC_RBSP::ue_v(a1);
  v65 = *(a1 + 8) >> 63;
  AVC_RBSP::flush_bits(a1, 1);
  *(v20 + 1557) = v65;
  *(v20 + 1558) = AVC_RBSP::ue_v(a1);
  *(v20 + 1560) = AVC_RBSP::ue_v(a1);
  v66 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  *(v20 + 1562) = v66 < 0;
  if ((v66 & 0x8000000000000000) == 0)
  {
    v67 = *(a1 + 8) >> 63;
    AVC_RBSP::flush_bits(a1, 1);
    *(v20 + 1563) = v67;
  }

  v68 = *(a1 + 8) >> 63;
  AVC_RBSP::flush_bits(a1, 1);
  *(v20 + 1564) = v68;
  v69 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  *(v20 + 1565) = v69 < 0;
  if (v69 < 0)
  {
    *(v20 + 1566) = AVC_RBSP::ue_v(a1);
    *(v20 + 1568) = AVC_RBSP::ue_v(a1);
    *(v20 + 1570) = AVC_RBSP::ue_v(a1);
    *(v20 + 1572) = AVC_RBSP::ue_v(a1);
  }

  v70 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  *(v20 + 1574) = v70 < 0;
  if ((v70 & 0x8000000000000000) == 0 || (result = AVC_RBSP::parseVUI(a1, v20 + 1576), result != -1))
  {
    v71 = *(v20 + 4);
    if (v71 <= 3)
    {
      v72 = dword_27775DC70[v71];
      v73 = dword_27775DC80[v71];
      *(v20 + 2212) = v72;
      *(v20 + 2216) = v73;
    }

    return v75;
  }

  return result;
}

uint64_t AVC_RBSP::ue_v(AVC_RBSP *this)
{
  v2 = __clz(*(this + 3));
  if (v2)
  {
    AVC_RBSP::flush_bits(this, v2 + 1);
    v3 = *(this + 3) >> -v2;
    AVC_RBSP::flush_bits(this, v2);
    return (v3 + ~(-1 << v2));
  }

  else
  {
    AVC_RBSP::flush_bits(this, 1);
    return 0;
  }
}

uint64_t AVC_RBSP::parseVUI(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  *a2 = v4 < 0;
  if (v4 < 0)
  {
    v5 = HIBYTE(*(a1 + 8));
    AVC_RBSP::flush_bits(a1, 8);
    *(a2 + 1) = v5;
    if (v5 == 255)
    {
      v6 = *(a1 + 14);
      AVC_RBSP::flush_bits(a1, 16);
      *(a2 + 2) = v6;
      v7 = *(a1 + 14);
      AVC_RBSP::flush_bits(a1, 16);
      *(a2 + 4) = v7;
    }
  }

  v8 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  *(a2 + 6) = *(a2 + 6) & 0xFE | (v8 < 0);
  if (v8 < 0)
  {
    v9 = *(a1 + 8);
    AVC_RBSP::flush_bits(a1, 1);
    *(a2 + 6) = *(a2 + 6) & 0xFD | (v9 >> 62) & 2;
  }

  v10 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  *(a2 + 6) = *(a2 + 6) & 0xFB | (v10 >> 61) & 4;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = *(a1 + 8);
    AVC_RBSP::flush_bits(a1, 3);
    *(a2 + 6) = *(a2 + 6) & 0xC7 | (v11 >> 58) & 0x38;
    v12 = *(a1 + 8);
    AVC_RBSP::flush_bits(a1, 1);
    *(a2 + 6) = *(a2 + 6) & 0xBF | (v12 >> 57) & 0x40;
    v13 = *(a1 + 8);
    AVC_RBSP::flush_bits(a1, 1);
    *(a2 + 6) = HIBYTE(v13) & 0x80 | *(a2 + 6) & 0x7F;
    if (v13 < 0)
    {
      v14 = *(a1 + 15);
      AVC_RBSP::flush_bits(a1, 8);
      *(a2 + 7) = v14;
      v15 = *(a1 + 15);
      AVC_RBSP::flush_bits(a1, 8);
      *(a2 + 8) = v15;
      v16 = *(a1 + 15);
      AVC_RBSP::flush_bits(a1, 8);
      *(a2 + 9) = v16;
    }
  }

  v17 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  *(a2 + 10) = v17 < 0;
  if (v17 < 0)
  {
    v18 = __clz(*(a1 + 12));
    if (v18)
    {
      AVC_RBSP::flush_bits(a1, v18 + 1);
      v19 = *(a1 + 12) >> -v18;
      AVC_RBSP::flush_bits(a1, v18);
      v20 = v19 + ~(-1 << v18);
    }

    else
    {
      AVC_RBSP::flush_bits(a1, 1);
      LOBYTE(v20) = 0;
    }

    *(a2 + 11) = v20;
    v21 = __clz(*(a1 + 12));
    if (v21)
    {
      AVC_RBSP::flush_bits(a1, v21 + 1);
      v22 = *(a1 + 12) >> -v21;
      AVC_RBSP::flush_bits(a1, v21);
      v23 = v22 + ~(-1 << v21);
    }

    else
    {
      AVC_RBSP::flush_bits(a1, 1);
      LOBYTE(v23) = 0;
    }

    *(a2 + 12) = v23;
  }

  v24 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  *(a2 + 13) = v24 < 0;
  if (v24 < 0)
  {
    v25 = *(a1 + 12);
    AVC_RBSP::flush_bits(a1, 32);
    *(a2 + 16) = v25;
    v26 = *(a1 + 12);
    AVC_RBSP::flush_bits(a1, 32);
    *(a2 + 20) = v26;
    v27 = *(a1 + 8) >> 63;
    AVC_RBSP::flush_bits(a1, 1);
    *(a2 + 24) = v27;
  }

  v28 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  *(a2 + 25) = v28 < 0;
  if ((v28 & 0x8000000000000000) == 0 || (result = AVC_RBSP::parseHRD(a1, (a2 + 28)), result != -1))
  {
    v30 = *(a1 + 8);
    v31 = v30 >> 63;
    AVC_RBSP::flush_bits(a1, 1);
    *(a2 + 324) = v30 < 0;
    if (v30 < 0)
    {
      result = AVC_RBSP::parseHRD(a1, (a2 + 328));
      if (result == -1)
      {
        return result;
      }

      LODWORD(v31) = *(a2 + 324);
    }

    if (*(a2 + 25) || v31)
    {
      v32 = *(a1 + 8) >> 63;
      AVC_RBSP::flush_bits(a1, 1);
      *(a2 + 624) = v32;
    }

    v33 = *(a1 + 8) >> 63;
    AVC_RBSP::flush_bits(a1, 1);
    *(a2 + 625) = v33;
    v34 = *(a1 + 8);
    AVC_RBSP::flush_bits(a1, 1);
    result = 0;
    *(a2 + 626) = v34 < 0;
    if (v34 < 0)
    {
      v35 = *(a1 + 8) >> 63;
      AVC_RBSP::flush_bits(a1, 1);
      *(a2 + 627) = v35;
      v36 = __clz(*(a1 + 12));
      if (v36)
      {
        AVC_RBSP::flush_bits(a1, v36 + 1);
        v37 = *(a1 + 12) >> -v36;
        AVC_RBSP::flush_bits(a1, v36);
        v38 = v37 + ~(-1 << v36);
      }

      else
      {
        AVC_RBSP::flush_bits(a1, 1);
        LOBYTE(v38) = 0;
      }

      *(a2 + 628) = v38;
      v39 = __clz(*(a1 + 12));
      if (v39)
      {
        AVC_RBSP::flush_bits(a1, v39 + 1);
        v40 = *(a1 + 12) >> -v39;
        AVC_RBSP::flush_bits(a1, v39);
        v41 = v40 + ~(-1 << v39);
      }

      else
      {
        AVC_RBSP::flush_bits(a1, 1);
        LOBYTE(v41) = 0;
      }

      *(a2 + 629) = v41;
      v42 = __clz(*(a1 + 12));
      if (v42)
      {
        AVC_RBSP::flush_bits(a1, v42 + 1);
        v43 = *(a1 + 12) >> -v42;
        AVC_RBSP::flush_bits(a1, v42);
        v44 = v43 + ~(-1 << v42);
      }

      else
      {
        AVC_RBSP::flush_bits(a1, 1);
        LOBYTE(v44) = 0;
      }

      *(a2 + 630) = v44;
      v45 = __clz(*(a1 + 12));
      if (v45)
      {
        AVC_RBSP::flush_bits(a1, v45 + 1);
        v46 = *(a1 + 12) >> -v45;
        AVC_RBSP::flush_bits(a1, v45);
        v47 = v46 + ~(-1 << v45);
      }

      else
      {
        AVC_RBSP::flush_bits(a1, 1);
        LOBYTE(v47) = 0;
      }

      *(a2 + 631) = v47;
      v48 = __clz(*(a1 + 12));
      if (v48)
      {
        AVC_RBSP::flush_bits(a1, v48 + 1);
        v49 = *(a1 + 12) >> -v48;
        AVC_RBSP::flush_bits(a1, v48);
        v50 = v49 + ~(-1 << v48);
      }

      else
      {
        AVC_RBSP::flush_bits(a1, 1);
        LOBYTE(v50) = 0;
      }

      *(a2 + 632) = v50;
      v51 = __clz(*(a1 + 12));
      if (v51)
      {
        AVC_RBSP::flush_bits(a1, v51 + 1);
        v52 = *(a1 + 12) >> -v51;
        AVC_RBSP::flush_bits(a1, v51);
        v53 = v52 + ~(-1 << v51);
      }

      else
      {
        AVC_RBSP::flush_bits(a1, 1);
        LOBYTE(v53) = 0;
      }

      result = 0;
      *(a2 + 633) = v53;
    }
  }

  return result;
}

uint64_t AVC_RBSP::parsePPS(int8x8_t *this, uint64_t a2, uint64_t a3)
{
  v90 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v81 = 134218240;
      *v82 = a2;
      *&v82[8] = 2048;
      *v83 = a3;
      v9 = MEMORY[0x277D86220];
      v10 = "AppleAVD: NULL ppsList %p or spsList %p";
      v11 = 22;
LABEL_43:
      _os_log_impl(&dword_277606000, v9, OS_LOG_TYPE_DEFAULT, v10, &v81, v11);
      return 0xFFFFFFFFLL;
    }

    return 0xFFFFFFFFLL;
  }

  v6 = __clz(this[1].u32[1]);
  if (v6)
  {
    AVC_RBSP::flush_bits(this, v6 + 1);
    v7 = this[1].i32[1] >> -v6;
    AVC_RBSP::flush_bits(this, v6);
    v8 = v7 + ~(-1 << v6);
  }

  else
  {
    AVC_RBSP::flush_bits(this, 1);
    LOWORD(v8) = 0;
  }

  v12 = __clz(this[1].u32[1]);
  if (v12)
  {
    AVC_RBSP::flush_bits(this, v12 + 1);
    v13 = this[1].i32[1] >> -v12;
    AVC_RBSP::flush_bits(this, v12);
    v14 = v13 + ~(-1 << v12);
  }

  else
  {
    AVC_RBSP::flush_bits(this, 1);
    LOWORD(v14) = 0;
  }

  v15 = v8;
  if (v8 >= 0x100u)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v81 = 67109376;
      *v82 = v8;
      *&v82[4] = 1024;
      *&v82[6] = 255;
      v9 = MEMORY[0x277D86220];
      v10 = "AppleAVD: pic_parameter_set_id(%d) out of range [0..%d]";
LABEL_17:
      v11 = 14;
      goto LABEL_43;
    }

    return 0xFFFFFFFFLL;
  }

  if (v14 >= 0x20u)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v81 = 67109376;
      *v82 = v14;
      *&v82[4] = 1024;
      *&v82[6] = 31;
      v9 = MEMORY[0x277D86220];
      v10 = "AppleAVD: seq_parameter_set_id(%d) out of range [0..%d]";
      goto LABEL_17;
    }

    return 0xFFFFFFFFLL;
  }

  v16 = (a2 + 604 * v8);
  v17 = a3 + 2224 * v14;
  bzero(v16, 0x25CuLL);
  *&v18 = 0x1010101010101010;
  *(&v18 + 1) = 0x1010101010101010;
  *(v16 + 249) = v18;
  *(v16 + 233) = v18;
  *(v16 + 217) = v18;
  *(v16 + 201) = v18;
  *(v16 + 185) = v18;
  *(v16 + 169) = v18;
  *(v16 + 153) = v18;
  *(v16 + 137) = v18;
  *(v16 + 121) = v18;
  *(v16 + 569) = v18;
  *(v16 + 585) = v18;
  *(v16 + 537) = v18;
  *(v16 + 553) = v18;
  *(v16 + 505) = v18;
  *(v16 + 521) = v18;
  *(v16 + 473) = v18;
  *(v16 + 489) = v18;
  *(v16 + 441) = v18;
  *(v16 + 457) = v18;
  *(v16 + 409) = v18;
  *(v16 + 425) = v18;
  *(v16 + 377) = v18;
  *(v16 + 393) = v18;
  *(v16 + 345) = v18;
  *(v16 + 361) = v18;
  *(v16 + 313) = v18;
  *(v16 + 329) = v18;
  *(v16 + 281) = v18;
  *(v16 + 297) = v18;
  *(v16 + 265) = v18;
  *v16 = v8;
  *(v16 + 2) = v14;
  v19 = *&this[1] >> 63;
  AVC_RBSP::flush_bits(this, 1);
  *(v16 + 3) = v19;
  v20 = *&this[1] >> 63;
  AVC_RBSP::flush_bits(this, 1);
  *(v16 + 4) = v20;
  v21 = __clz(this[1].u32[1]);
  if (!v21)
  {
    AVC_RBSP::flush_bits(this, 1);
    *(v16 + 5) = 0;
    goto LABEL_23;
  }

  AVC_RBSP::flush_bits(this, v21 + 1);
  v22 = this[1].i32[1] >> -v21;
  AVC_RBSP::flush_bits(this, v21);
  v23 = v22 + ~(-1 << v21);
  *(v16 + 5) = v23;
  if ((v23 & 0xF8) != 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v81 = 136316418;
    *v82 = "parsePPS";
    *&v82[8] = 1024;
    *v83 = 880;
    *&v83[4] = 2080;
    *&v83[6] = "pps->num_slice_groups_minus1";
    v84 = 1024;
    v85 = v23;
    v86 = 1024;
    v87 = 0;
    v88 = 1024;
    v89 = 7;
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
LABEL_42:
    v11 = 46;
    goto LABEL_43;
  }

  if (v23)
  {
    v27 = __clz(this[1].u32[1]);
    if (v27)
    {
      AVC_RBSP::flush_bits(this, v27 + 1);
      v28 = this[1].i32[1] >> -v27;
      AVC_RBSP::flush_bits(this, v27);
      *(v16 + 6) = v28 + ~(-1 << v27);
      v29 = (v28 + ~(-1 << v27));
      if (v29 > 2)
      {
        if (v29 - 3 >= 3)
        {
          if (v29 == 6)
          {
            v75 = AVC_RBSP::ue_v(this);
            v76 = v75;
            *(v16 + 20) = v75;
            v77 = *(v17 + 1558) + (*(v17 + 1558) + 1) * *(v17 + 1560);
            if (v75 > v77)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              v81 = 136316418;
              *v82 = "parsePPS";
              *&v82[8] = 1024;
              *v83 = 909;
              *&v83[4] = 2080;
              *&v83[6] = "pps->pic_size_in_map_units_minus1";
              v84 = 1024;
              v85 = v76;
              v86 = 1024;
              v87 = 0;
              v88 = 1024;
              v89 = v77;
              v9 = MEMORY[0x277D86220];
              v10 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
              goto LABEL_42;
            }

            v78 = 0;
            v79 = __clz(v75);
            do
            {
              v80 = this[1].i32[1] >> v79;
              AVC_RBSP::flush_bits(this, 32 - v79);
              *(v16 + 84) = v80;
              ++v78;
            }

            while (v78 <= *(v16 + 20));
          }
        }

        else
        {
          v30 = *&this[1] >> 63;
          AVC_RBSP::flush_bits(this, 1);
          *(v16 + 72) = v30;
          v31 = *&this[1] >> 63;
          AVC_RBSP::flush_bits(this, 1);
          *(v16 + 19) = v31;
        }

        goto LABEL_23;
      }

      if (v28 + ~(-1 << v27))
      {
        if (v29 == 2 && *(v16 + 5))
        {
          v67 = 0;
          v68 = v16 + 28;
          do
          {
            v69 = __clz(this[1].u32[1]);
            if (v69)
            {
              AVC_RBSP::flush_bits(this, v69 + 1);
              v70 = this[1].i32[1] >> -v69;
              AVC_RBSP::flush_bits(this, v69);
              v71 = v70 + ~(-1 << v69);
            }

            else
            {
              AVC_RBSP::flush_bits(this, 1);
              LOWORD(v71) = 0;
            }

            *(v68 - 8) = v71;
            v72 = __clz(this[1].u32[1]);
            if (v72)
            {
              AVC_RBSP::flush_bits(this, v72 + 1);
              v73 = this[1].i32[1] >> -v72;
              AVC_RBSP::flush_bits(this, v72);
              v74 = v73 + ~(-1 << v72);
            }

            else
            {
              AVC_RBSP::flush_bits(this, 1);
              LOWORD(v74) = 0;
            }

            *v68++ = v74;
            ++v67;
          }

          while (v67 < *(v16 + 5));
        }

        goto LABEL_23;
      }
    }

    else
    {
      AVC_RBSP::flush_bits(this, 1);
      *(v16 + 6) = 0;
    }

    v39 = (v16 + 4);
    v40 = -1;
    do
    {
      v41 = __clz(this[1].u32[1]);
      if (v41)
      {
        AVC_RBSP::flush_bits(this, v41 + 1);
        v42 = this[1].i32[1] >> -v41;
        AVC_RBSP::flush_bits(this, v41);
        v43 = v42 + ~(-1 << v41);
      }

      else
      {
        AVC_RBSP::flush_bits(this, 1);
        v43 = 0;
      }

      *v39++ = v43;
      ++v40;
    }

    while (v40 < *(v16 + 5));
  }

LABEL_23:
  v24 = __clz(this[1].u32[1]);
  if (v24)
  {
    AVC_RBSP::flush_bits(this, v24 + 1);
    v25 = this[1].i32[1] >> -v24;
    AVC_RBSP::flush_bits(this, v24);
    v26 = v25 + ~(-1 << v24);
    *(v16 + 85) = v26;
    if ((v26 & 0xF0) != 0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v81 = 136316418;
      *v82 = "parsePPS";
      *&v82[8] = 1024;
      *v83 = 917;
      *&v83[4] = 2080;
      *&v83[6] = "pps->num_ref_idx_l0_default_active_minus1";
      v84 = 1024;
      v85 = v26;
      v86 = 1024;
      v87 = 0;
      v88 = 1024;
      v89 = 15;
      v9 = MEMORY[0x277D86220];
      v10 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_42;
    }
  }

  else
  {
    AVC_RBSP::flush_bits(this, 1);
    *(v16 + 85) = 0;
  }

  *(v16 + 86) = AVC_RBSP::ue_v(this);
  v32 = *&this[1] >> 63;
  AVC_RBSP::flush_bits(this, 1);
  *(v16 + 87) = v32;
  v33 = *&this[1] >> 62;
  AVC_RBSP::flush_bits(this, 2);
  *(v16 + 88) = v33;
  if (v33 == 3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v81 = 136316418;
    *v82 = "parsePPS";
    *&v82[8] = 1024;
    *v83 = 926;
    *&v83[4] = 2080;
    *&v83[6] = "pps->weighted_bipred_idc";
    v84 = 1024;
    v85 = 3;
    v86 = 1024;
    v87 = 0;
    v88 = 1024;
    v89 = 2;
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
    goto LABEL_42;
  }

  *(v16 + 89) = AVC_RBSP::se_v(this);
  v34 = AVC_RBSP::se_v(this);
  *(v16 + 90) = v34;
  v35 = v34;
  if ((v34 - 26) <= 0xFFFFFFCB)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v81 = 136316418;
    *v82 = "parsePPS";
    *&v82[8] = 1024;
    *v83 = 930;
    *&v83[4] = 2080;
    *&v83[6] = "pps->pic_init_qs_minus26";
    v84 = 1024;
    v85 = v35;
    v86 = 1024;
    v87 = -26;
    v88 = 1024;
    v89 = 25;
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
    goto LABEL_42;
  }

  v36 = AVC_RBSP::se_v(this);
  *(v16 + 91) = v36;
  v37 = v36;
  if ((v36 - 13) <= 0xFFFFFFE6)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v81 = 136316418;
    *v82 = "parsePPS";
    *&v82[8] = 1024;
    *v83 = 933;
    *&v83[4] = 2080;
    *&v83[6] = "pps->chroma_qp_index_offset";
    v84 = 1024;
    v85 = v37;
    v86 = 1024;
    v87 = -12;
    v88 = 1024;
    v89 = 12;
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
    goto LABEL_42;
  }

  *(v16 + 601) = v36;
  v44 = *&this[1] >> 63;
  AVC_RBSP::flush_bits(this, 1);
  *(v16 + 92) = v44;
  v45 = *&this[1] >> 63;
  AVC_RBSP::flush_bits(this, 1);
  *(v16 + 93) = v45;
  v46 = *&this[1] >> 63;
  AVC_RBSP::flush_bits(this, 1);
  *(v16 + 94) = v46;
  if (AVC_RBSP::more_rbsp_data(this))
  {
    v47 = *&this[1] >> 63;
    AVC_RBSP::flush_bits(this, 1);
    *(v16 + 95) = v47;
    v48 = this[1];
    AVC_RBSP::flush_bits(this, 1);
    *(v16 + 96) = v48 < 0;
    if (v48 < 0)
    {
      v49 = *(v17 + 4) == 3 ? 6 : 2;
      v50 = v49 * *(v16 + 95) + 6;
      v51 = v50 & 0xFE;
      if ((v50 & 0xFE) == 0)
      {
        goto LABEL_65;
      }

      v52 = 0;
      v53 = -167;
      v54 = 121;
      do
      {
        v55 = *&this[1] >> 63;
        AVC_RBSP::flush_bits(this, 1);
        *(v16 + v52 + 97) = v55;
        if (v52 > 5)
        {
          v59 = v52 - 6;
          v56 = v16 + v53;
          v57 = this;
          v58 = 64;
        }

        else
        {
          v56 = v16 + v54;
          v57 = this;
          v58 = 16;
          v59 = v52;
        }

        *(v16 + v52++ + 109) = AVC_RBSP::scalingList(v57, v56, v58, v59, v55);
        v54 += 16;
        v53 += 64;
      }

      while (v51 != v52);
      if (v51 != 12)
      {
LABEL_65:
        v60 = 0;
        do
        {
          v61 = (&v16[32 * (5 - v60) + 108] + 1);
          if (v60)
          {
            v62 = &avcDefaultIntraScalingList8x8;
          }

          else
          {
            v62 = &avcDefaultInterScalingList8x8;
          }

          v63 = v62[1];
          *v61 = *v62;
          v61[1] = v63;
          v64 = v62[3];
          v61[2] = v62[2];
          v61[3] = v64;
          ++v60;
        }

        while (v60 != ((12 - v51) & 0xFFFFFFFE));
      }
    }

    v65 = AVC_RBSP::se_v(this);
    *(v16 + 601) = v65;
    v66 = v65;
    if ((v65 - 13) <= 0xFFFFFFE6)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v81 = 136316418;
      *v82 = "parsePPS";
      *&v82[8] = 1024;
      *v83 = 964;
      *&v83[4] = 2080;
      *&v83[6] = "pps->second_chroma_qp_index_offset";
      v84 = 1024;
      v85 = v66;
      v86 = 1024;
      v87 = -12;
      v88 = 1024;
      v89 = 12;
      v9 = MEMORY[0x277D86220];
      v10 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_42;
    }
  }

  return v15;
}

uint64_t AVC_RBSP::parseHRD(AVC_RBSP *this, unsigned __int8 *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = __clz(*(this + 3));
  if (v4)
  {
    AVC_RBSP::flush_bits(this, v4 + 1);
    v5 = *(this + 3) >> -v4;
    AVC_RBSP::flush_bits(this, v4);
    v6 = v5 + ~(-1 << v4);
    *a2 = v6;
    if ((v6 & 0xE0) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136316418;
        v24 = "parseHRD";
        v25 = 1024;
        v26 = 977;
        v27 = 2080;
        v28 = "hrd.cpb_cnt_minus1";
        v29 = 1024;
        v30 = v6;
        v31 = 1024;
        v32 = 0;
        v33 = 1024;
        v34 = 31;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n", &v23, 0x2Eu);
      }

      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    AVC_RBSP::flush_bits(this, 1);
    *a2 = 0;
  }

  v8 = *(this + 1) >> 60;
  AVC_RBSP::flush_bits(this, 4);
  a2[1] = a2[1] & 0xF0 | v8;
  LOBYTE(v8) = *(this + 15);
  AVC_RBSP::flush_bits(this, 4);
  v9 = 0;
  a2[1] = v8 & 0xF0 | a2[1] & 0xF;
  do
  {
    v10 = __clz(*(this + 3));
    if (v10)
    {
      AVC_RBSP::flush_bits(this, v10 + 1);
      v11 = *(this + 3) >> -v10;
      AVC_RBSP::flush_bits(this, v10);
      v12 = v11 + ~(-1 << v10);
    }

    else
    {
      AVC_RBSP::flush_bits(this, 1);
      v12 = 0;
    }

    v13 = &a2[4 * v9];
    *(v13 + 1) = v12;
    v14 = __clz(*(this + 3));
    if (v14)
    {
      AVC_RBSP::flush_bits(this, v14 + 1);
      v15 = *(this + 3) >> -v14;
      AVC_RBSP::flush_bits(this, v14);
      v16 = v15 + ~(-1 << v14);
    }

    else
    {
      AVC_RBSP::flush_bits(this, 1);
      v16 = 0;
    }

    *(v13 + 33) = v16;
    v17 = *(this + 1) >> 63;
    AVC_RBSP::flush_bits(this, 1);
    a2[v9 + 260] = v17;
  }

  while (v9++ < *a2);
  v19 = *(this + 1) >> 59;
  AVC_RBSP::flush_bits(this, 5);
  a2[292] = v19;
  v20 = *(this + 1) >> 59;
  AVC_RBSP::flush_bits(this, 5);
  a2[293] = v20;
  v21 = *(this + 1) >> 59;
  AVC_RBSP::flush_bits(this, 5);
  a2[294] = v21;
  v22 = *(this + 1) >> 59;
  AVC_RBSP::flush_bits(this, 5);
  result = 0;
  a2[295] = v22;
  return result;
}

uint64_t AVC_RBSP::parseSliceHeader(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v181 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3 || !a4 || !a5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      *v177 = a2;
      *&v177[8] = 2048;
      *v178 = a3;
      *&v178[8] = 2048;
      *&v178[10] = a4;
      *&v178[18] = 2048;
      v179 = a5;
      v16 = MEMORY[0x277D86220];
      v17 = "AppleAVD: NULL sliceHeader %p or nal_header %p or ppsList %p or spsList %p";
      v18 = 42;
      goto LABEL_25;
    }

    return 0xFFFFFFFFLL;
  }

  v10 = *a3;
  bzero(a2, 0x588uLL);
  *&v11 = 0x303030303030303;
  *(&v11 + 1) = 0x303030303030303;
  *(a2 + 47) = v11;
  v12 = a2 + 47;
  *(a2 + 79) = 771;
  *(a2 + 63) = v11;
  v13 = __clz(*(a1 + 12));
  if (v13)
  {
    AVC_RBSP::flush_bits(a1, v13 + 1);
    v14 = *(a1 + 12) >> -v13;
    AVC_RBSP::flush_bits(a1, v13);
    v15 = v14 + ~(-1 << v13);
  }

  else
  {
    AVC_RBSP::flush_bits(a1, 1);
    v15 = 0;
  }

  *a2 = v15;
  v19 = __clz(*(a1 + 12));
  if (v19)
  {
    AVC_RBSP::flush_bits(a1, v19 + 1);
    v20 = *(a1 + 12) >> -v19;
    AVC_RBSP::flush_bits(a1, v19);
    v19 = v20 + ~(-1 << v19);
    a2[4] = v19;
    v21 = a2 + 4;
    if ((v19 & 0xFE) >= 0xA)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *v177 = "parseSliceHeader";
        *&v177[8] = 1024;
        *v178 = 1084;
        *&v178[4] = 2080;
        *&v178[6] = "sliceHeader->slice_type";
        *&v178[14] = 1024;
        *&v178[16] = v19;
        v179 = 0x400000000000400;
        v180 = 9;
        v16 = MEMORY[0x277D86220];
        v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
        goto LABEL_14;
      }

      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    AVC_RBSP::flush_bits(a1, 1);
    v21 = a2 + 4;
  }

  v22 = v19 % 5;
  *v21 = v19 % 5;
  v23 = __clz(*(a1 + 12));
  if (v23)
  {
    AVC_RBSP::flush_bits(a1, v23 + 1);
    v24 = *(a1 + 12) >> -v23;
    AVC_RBSP::flush_bits(a1, v23);
    LOWORD(v23) = v24 + ~(-1 << v23);
    *(a2 + 3) = v23;
    if ((v23 & 0xFF00) != 0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      *buf = 67109376;
      *v177 = v23;
      *&v177[4] = 1024;
      *&v177[6] = 255;
      v16 = MEMORY[0x277D86220];
      v17 = "AppleAVD: pic_parameter_set_id(%d) out of range [0..%d]";
      goto LABEL_24;
    }
  }

  else
  {
    AVC_RBSP::flush_bits(a1, 1);
    *(a2 + 3) = 0;
  }

  v25 = a4 + 604 * v23;
  v26 = *(v25 + 2);
  if (v26 >= 0x20)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 67109376;
    *v177 = v26;
    *&v177[4] = 1024;
    *&v177[6] = 31;
    v16 = MEMORY[0x277D86220];
    v17 = "AppleAVD: seq_parameter_set_id(%d) out of range [0..%d]";
LABEL_24:
    v18 = 14;
    goto LABEL_25;
  }

  v28 = (a5 + 2224 * *(v25 + 2));
  if (v28[5])
  {
    v29 = *(a1 + 8) >> 62;
    AVC_RBSP::flush_bits(a1, 2);
    a2[8] = v29;
  }

  v30 = v10 & 0xF8;
  v31 = v28[514];
  v32 = *(a1 + 12) >> (28 - v31);
  AVC_RBSP::flush_bits(a1, v31 + 4);
  *(a2 + 3) = v32;
  if (!v28[1562])
  {
    v33 = *(a1 + 8);
    AVC_RBSP::flush_bits(a1, 1);
    a2[16] = v33 < 0;
    if (v33 < 0)
    {
      v34 = *(a1 + 8) >> 63;
      AVC_RBSP::flush_bits(a1, 1);
      a2[17] = v34;
    }
  }

  if (v30 == 40)
  {
    v35 = __clz(*(a1 + 12));
    if (v35)
    {
      AVC_RBSP::flush_bits(a1, v35 + 1);
      v36 = *(a1 + 12) >> -v35;
      AVC_RBSP::flush_bits(a1, v35);
      v37 = v36 + ~(-1 << v35);
    }

    else
    {
      AVC_RBSP::flush_bits(a1, 1);
      v37 = 0;
    }

    *(a2 + 5) = v37;
  }

  if (v28[515])
  {
    v38 = 0;
    *(a2 + 7) = 0;
    v39 = 24;
LABEL_39:
    *&a2[v39] = v38;
    goto LABEL_40;
  }

  v43 = v28[516];
  v44 = *(a1 + 12) >> (28 - v43);
  AVC_RBSP::flush_bits(a1, v43 + 4);
  *(a2 + 6) = v44;
  if (*(v25 + 4) && !a2[16])
  {
    v38 = AVC_RBSP::se_v(a1);
    v39 = 28;
    goto LABEL_39;
  }

LABEL_40:
  if (v28[515] == 1 && !v28[517])
  {
    *(a2 + 8) = AVC_RBSP::se_v(a1);
    if (*(v25 + 4) && !a2[16])
    {
      *(a2 + 9) = AVC_RBSP::se_v(a1);
    }
  }

  else
  {
    *(a2 + 4) = 0;
  }

  if (*(v25 + 94))
  {
    v40 = __clz(*(a1 + 12));
    if (v40)
    {
      AVC_RBSP::flush_bits(a1, v40 + 1);
      v41 = *(a1 + 12) >> -v40;
      AVC_RBSP::flush_bits(a1, v40);
      v42 = v41 + ~(-1 << v40);
      a2[40] = v42;
      if ((v42 & 0x80) != 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          *v177 = "parseSliceHeader";
          *&v177[8] = 1024;
          *v178 = 1137;
          *&v178[4] = 2080;
          *&v178[6] = "sliceHeader->redundant_pic_cnt";
          *&v178[14] = 1024;
          *&v178[16] = v42;
          v179 = 0x400000000000400;
          v180 = 127;
          v16 = MEMORY[0x277D86220];
          v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
          goto LABEL_14;
        }

        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      AVC_RBSP::flush_bits(a1, 1);
      a2[40] = 0;
    }
  }

  v175 = v28;
  if (v22 == 1)
  {
    v45 = *(a1 + 8) >> 63;
    AVC_RBSP::flush_bits(a1, 1);
    v164 = 0;
    *(a2 + 43) = *(v25 + 85);
    a2[41] = v45;
    v173 = a2 + 43;
    v165 = a2 + 44;
  }

  else
  {
    a2[43] = *(v25 + 85);
    v173 = a2 + 43;
    a2[44] = -1;
    v165 = a2 + 44;
    v164 = v22 == 3;
    if (v22 > 3 || v22 == 2)
    {
      goto LABEL_70;
    }
  }

  v46 = *(a1 + 8);
  AVC_RBSP::flush_bits(a1, 1);
  a2[42] = v46 < 0;
  if (v46 < 0)
  {
    v48 = AVC_RBSP::ue_v(a1);
    *v173 = v48;
    if ((v48 & 0xF0) != 0)
    {
      v49 = v48;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *v177 = "parseSliceHeader";
        *&v177[8] = 1024;
        *v178 = 1154;
        *&v178[4] = 2080;
        *&v178[6] = "sliceHeader->num_ref_idx_l0_active_minus1";
        *&v178[14] = 1024;
        *&v178[16] = v49;
        v179 = 0x400000000000400;
        v180 = 15;
        v16 = MEMORY[0x277D86220];
        v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
        goto LABEL_14;
      }

      return 0xFFFFFFFFLL;
    }

    if (v22 == 1)
    {
      v50 = AVC_RBSP::ue_v(a1);
      *v165 = v50;
      if ((v50 & 0xF0) != 0)
      {
        v51 = v50;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          *v177 = "parseSliceHeader";
          *&v177[8] = 1024;
          *v178 = 1159;
          *&v178[4] = 2080;
          *&v178[6] = "sliceHeader->num_ref_idx_l1_active_minus1";
          *&v178[14] = 1024;
          *&v178[16] = v51;
          v179 = 0x400000000000400;
          v180 = 15;
          v16 = MEMORY[0x277D86220];
          v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
          goto LABEL_14;
        }

        return 0xFFFFFFFFLL;
      }

      v161 = 1;
      v159 = v30;
      v160 = 1;
      goto LABEL_72;
    }
  }

  else
  {
    v47 = *(v25 + 86);
    if (v47 >= 0x10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *v177 = "parseSliceHeader";
        *&v177[8] = 1024;
        *v178 = 1166;
        *&v178[4] = 2080;
        *&v178[6] = "pps->num_ref_idx_l1_default_active_minus1";
        *&v178[14] = 1024;
        *&v178[16] = v47;
        v179 = 0x400000000000400;
        v180 = 15;
        v16 = MEMORY[0x277D86220];
        v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
        goto LABEL_14;
      }

      return 0xFFFFFFFFLL;
    }
  }

LABEL_70:
  v159 = v30;
  v160 = v22 != 2;
  v161 = v22 != 4;
  if (v22 != 2 && v22 != 4)
  {
LABEL_72:
    v171 = v22;
    v52 = v25;
    v53 = *(a1 + 8);
    AVC_RBSP::flush_bits(a1, 1);
    a2[45] = v53 < 0;
    if ((v53 & 0x8000000000000000) == 0)
    {
LABEL_73:
      if (v171 == 1)
      {
        v54 = *(a1 + 8);
        AVC_RBSP::flush_bits(a1, 1);
        a2[46] = v54 < 0;
        v25 = v52;
        if (v54 < 0)
        {
          v55 = 0;
          v56 = a2 + 64;
          while (1)
          {
            v57 = __clz(*(a1 + 12));
            if (!v57)
            {
              break;
            }

            AVC_RBSP::flush_bits(a1, v57 + 1);
            v58 = *(a1 + 12) >> -v57;
            AVC_RBSP::flush_bits(a1, v57);
            v59 = v58 + ~(-1 << v57);
            v60 = &v56[v55];
            v56[v55] = v59;
            v61 = v59;
            if (v59 >= 4u)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316418;
                *v177 = "parseSliceHeader";
                *&v177[8] = 1024;
                *v178 = 1200;
                *&v178[4] = 2080;
                *&v178[6] = "sliceHeader->modification_of_pic_nums_idc[1][i]";
                *&v178[14] = 1024;
                *&v178[16] = v61;
                v179 = 0x400000000000400;
                v180 = 3;
                v16 = MEMORY[0x277D86220];
                v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
                goto LABEL_14;
              }

              return 0xFFFFFFFFLL;
            }

            if (v59 < 2u)
            {
              goto LABEL_83;
            }

            if (v59 != 2)
            {
              goto LABEL_88;
            }

            v62 = __clz(*(a1 + 12));
            if (v62)
            {
              AVC_RBSP::flush_bits(a1, v62 + 1);
              v63 = *(a1 + 12) >> -v62;
              AVC_RBSP::flush_bits(a1, v62);
              v64 = v63 + ~(-1 << v62);
              v25 = v52;
            }

            else
            {
              AVC_RBSP::flush_bits(a1, 1);
              v64 = 0;
            }

            v67 = a2 + 288;
LABEL_87:
            *&v67[4 * v55] = v64;
LABEL_88:
            if (*v60 != 3)
            {
              v68 = v55++ >= 0x10;
              if (!v68)
              {
                continue;
              }
            }

            goto LABEL_95;
          }

          AVC_RBSP::flush_bits(a1, 1);
          v60 = &v56[v55];
          v56[v55] = 0;
LABEL_83:
          v65 = __clz(*(a1 + 12));
          if (v65)
          {
            AVC_RBSP::flush_bits(a1, v65 + 1);
            v66 = *(a1 + 12) >> -v65;
            AVC_RBSP::flush_bits(a1, v65);
            v64 = v66 + ~(-1 << v65);
            v25 = v52;
          }

          else
          {
            AVC_RBSP::flush_bits(a1, 1);
            v64 = 0;
          }

          v67 = a2 + 152;
          goto LABEL_87;
        }
      }

      else
      {
        v25 = v52;
      }

LABEL_95:
      v22 = v171;
      goto LABEL_96;
    }

    v102 = 0;
    while (1)
    {
      v103 = __clz(*(a1 + 12));
      if (!v103)
      {
        break;
      }

      AVC_RBSP::flush_bits(a1, v103 + 1);
      v104 = *(a1 + 12) >> -v103;
      AVC_RBSP::flush_bits(a1, v103);
      v105 = v104 + ~(-1 << v103);
      v106 = &v12[v102];
      v12[v102] = v105;
      v107 = v105;
      if (v105 >= 4u)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          *v177 = "parseSliceHeader";
          *&v177[8] = 1024;
          *v178 = 1180;
          *&v178[4] = 2080;
          *&v178[6] = "sliceHeader->modification_of_pic_nums_idc[0][i]";
          *&v178[14] = 1024;
          *&v178[16] = v107;
          v179 = 0x400000000000400;
          v180 = 3;
          v16 = MEMORY[0x277D86220];
          v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
          goto LABEL_14;
        }

        return 0xFFFFFFFFLL;
      }

      if (v105 < 2u)
      {
        goto LABEL_144;
      }

      if (v105 != 2)
      {
        goto LABEL_149;
      }

      v108 = AVC_RBSP::ue_v(a1);
      v109 = a2 + 220;
LABEL_148:
      *&v109[4 * v102] = v108;
LABEL_149:
      if (*v106 != 3)
      {
        v68 = v102++ >= 0x10;
        if (!v68)
        {
          continue;
        }
      }

      goto LABEL_73;
    }

    AVC_RBSP::flush_bits(a1, 1);
    v106 = &v12[v102];
    v12[v102] = 0;
LABEL_144:
    v110 = __clz(*(a1 + 12));
    if (v110)
    {
      AVC_RBSP::flush_bits(a1, v110 + 1);
      v111 = *(a1 + 12) >> -v110;
      AVC_RBSP::flush_bits(a1, v110);
      v108 = v111 + ~(-1 << v110);
      v28 = v175;
    }

    else
    {
      AVC_RBSP::flush_bits(a1, 1);
      v108 = 0;
    }

    v109 = a2 + 84;
    goto LABEL_148;
  }

LABEL_96:
  if ((!*(v25 + 87) || v22 && v22 != 3) && (v22 != 1 || *(v25 + 88) != 1))
  {
    goto LABEL_178;
  }

  v69 = v28[4];
  a2[356] = AVC_RBSP::ue_v(a1);
  v170 = v69;
  if (v69)
  {
    v70 = AVC_RBSP::ue_v(a1);
    a2[357] = v70;
    if ((v70 & 0xF8) != 0)
    {
      v71 = v70;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *v177 = "parseSliceHeader";
        *&v177[8] = 1024;
        *v178 = 1222;
        *&v178[4] = 2080;
        *&v178[6] = "sliceHeader->chroma_log2_weight_denom";
        *&v178[14] = 1024;
        *&v178[16] = v71;
        v179 = 0x400000000000400;
        v180 = 7;
        v16 = MEMORY[0x277D86220];
        v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
        goto LABEL_14;
      }

      return 0xFFFFFFFFLL;
    }
  }

  v158 = v25;
  v72 = 0;
  v168 = a2 + 374;
  v166 = a2 + 406;
  v162 = a2 + 518;
  v172 = v22;
  do
  {
    v73 = *(a1 + 8);
    AVC_RBSP::flush_bits(a1, 1);
    a2[v72 + 358] = v73 < 0;
    v74 = v72;
    if (v73 < 0)
    {
      v75 = __clz(*(a1 + 12));
      if (v75)
      {
        AVC_RBSP::flush_bits(a1, v75 + 1);
        v76 = *(a1 + 12) >> -v75;
        AVC_RBSP::flush_bits(a1, v75);
        v77 = v76 + ~(-1 << v75);
      }

      else
      {
        AVC_RBSP::flush_bits(a1, 1);
        v77 = 0;
      }

      v78 = (-((v77 & 1) == 0) ^ ((v77 + 1) >> 1)) + ((v77 & 1) == 0);
      *&v168[2 * v74] = v78;
      v79 = v78;
      if (v78 != v78)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          *v177 = "parseSliceHeader";
          *&v177[8] = 1024;
          *v178 = 1231;
          *&v178[4] = 2080;
          *&v178[6] = "sliceHeader->luma_weight_l0[i]";
          *&v178[14] = 1024;
          *&v178[16] = v79;
          v179 = 0x400FFFFFF800400;
          v180 = 127;
          v16 = MEMORY[0x277D86220];
          v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
          goto LABEL_14;
        }

        return 0xFFFFFFFFLL;
      }

      v80 = __clz(*(a1 + 12));
      if (v80)
      {
        AVC_RBSP::flush_bits(a1, v80 + 1);
        v81 = *(a1 + 12) >> -v80;
        AVC_RBSP::flush_bits(a1, v80);
        v82 = v81 + ~(-1 << v80);
      }

      else
      {
        AVC_RBSP::flush_bits(a1, 1);
        v82 = 0;
      }

      v83 = (-((v82 & 1) == 0) ^ ((v82 + 1) >> 1)) + ((v82 & 1) == 0);
      *&v166[2 * v74] = v83;
      v84 = v83;
      if (v83 != v83)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          *v177 = "parseSliceHeader";
          *&v177[8] = 1024;
          *v178 = 1234;
          *&v178[4] = 2080;
          *&v178[6] = "sliceHeader->luma_offset_l0[i]";
          *&v178[14] = 1024;
          *&v178[16] = v84;
          v179 = 0x400FFFFFF800400;
          v180 = 127;
          v16 = MEMORY[0x277D86220];
          v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
          goto LABEL_14;
        }

        return 0xFFFFFFFFLL;
      }

      *&v166[2 * v74] = v83 << v28[6];
    }

    else
    {
      *&v168[2 * v72] = 1 << a2[356];
      *&v166[2 * v72] = 0;
    }

    if (v170)
    {
      v85 = *(a1 + 8);
      AVC_RBSP::flush_bits(a1, 1);
      a2[v74 + 438] = v85 < 0;
      v86 = &a2[4 * v74 + 454];
      if (v85 < 0)
      {
        v88 = 0;
        v89 = 1;
        v90 = &v162[4 * v74];
        do
        {
          v91 = v89;
          v92 = __clz(*(a1 + 12));
          if (v92)
          {
            AVC_RBSP::flush_bits(a1, v92 + 1);
            v93 = *(a1 + 12) >> -v92;
            AVC_RBSP::flush_bits(a1, v92);
            v94 = v93 + ~(-1 << v92);
          }

          else
          {
            AVC_RBSP::flush_bits(a1, 1);
            v94 = 0;
          }

          v95 = (-((v94 & 1) == 0) ^ ((v94 + 1) >> 1)) + ((v94 & 1) == 0);
          *&v86[2 * v88] = v95;
          v96 = v95;
          if (v95 != v95)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316418;
              *v177 = "parseSliceHeader";
              *&v177[8] = 1024;
              *v178 = 1252;
              *&v178[4] = 2080;
              *&v178[6] = "sliceHeader->chroma_weight_l0[i][j]";
              *&v178[14] = 1024;
              *&v178[16] = v96;
              v179 = 0x400FFFFFF800400;
              v180 = 127;
              v16 = MEMORY[0x277D86220];
              v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
              goto LABEL_14;
            }

            return 0xFFFFFFFFLL;
          }

          v97 = __clz(*(a1 + 12));
          if (v97)
          {
            AVC_RBSP::flush_bits(a1, v97 + 1);
            v98 = *(a1 + 12) >> -v97;
            AVC_RBSP::flush_bits(a1, v97);
            v99 = v98 + ~(-1 << v97);
          }

          else
          {
            AVC_RBSP::flush_bits(a1, 1);
            v99 = 0;
          }

          v100 = (-((v99 & 1) == 0) ^ ((v99 + 1) >> 1)) + ((v99 & 1) == 0);
          *&v90[2 * v88] = (-((v99 & 1) == 0) ^ ((v99 + 1) >> 1)) + ((v99 & 1) == 0);
          v101 = ((-((v99 & 1) == 0) ^ ((v99 + 1) >> 1)) + ((v99 & 1) == 0));
          if (v101 != ((-((v99 & 1) == 0) ^ ((v99 + 1) >> 1)) + ((v99 & 1) == 0)))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316418;
              *v177 = "parseSliceHeader";
              *&v177[8] = 1024;
              *v178 = 1255;
              *&v178[4] = 2080;
              *&v178[6] = "sliceHeader->chroma_offset_l0[i][j]";
              *&v178[14] = 1024;
              *&v178[16] = v101;
              v179 = 0x400FFFFFF800400;
              v180 = 127;
              v16 = MEMORY[0x277D86220];
              v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
              goto LABEL_14;
            }

            return 0xFFFFFFFFLL;
          }

          v89 = 0;
          *&v90[2 * v88] = v100 << v175[7];
          v88 = 1;
        }

        while ((v91 & 1) != 0);
      }

      else
      {
        v87 = 1 << a2[357];
        *v86 = v87;
        *&v162[4 * v74] = 0;
        *(v86 + 1) = v87;
      }
    }

    v72 = v74 + 1;
    v28 = v175;
    v22 = v172;
  }

  while (v74 + 1 <= *v173);
  v25 = v158;
  if (v172 != 1)
  {
LABEL_178:
    if ((*a3 & 6) != 0)
    {
      v136 = *(a1 + 8);
      AVC_RBSP::flush_bits(a1, 1);
      if (v159 == 40)
      {
        a2[806] = v136 < 0;
        v137 = *(a1 + 8) >> 63;
        AVC_RBSP::flush_bits(a1, 1);
        a2[807] = v137;
      }

      else
      {
        a2[808] = v136 < 0;
        if (v136 < 0)
        {
          v146 = 0;
          v147 = a2 + 809;
          v148 = a2 + 844;
          while (1)
          {
            v149 = __clz(*(a1 + 12));
            if (!v149)
            {
              AVC_RBSP::flush_bits(a1, 1);
              v147[v146] = 0;
              goto LABEL_182;
            }

            AVC_RBSP::flush_bits(a1, v149 + 1);
            v150 = *(a1 + 12) >> -v149;
            AVC_RBSP::flush_bits(a1, v149);
            v151 = v150 + ~(-1 << v149);
            v152 = (v150 + ~(-1 << v149));
            v147[v146] = v151;
            if (v152 >= 7)
            {
              break;
            }

            if ((v152 | 2) == 3)
            {
              *v148 = AVC_RBSP::ue_v(a1);
              v152 = v147[v146];
            }

            if (v152 == 2)
            {
              v148[35] = AVC_RBSP::ue_v(a1);
              v152 = v147[v146];
            }

            if (v152 == 6 || v152 == 3)
            {
              v148[70] = AVC_RBSP::ue_v(a1);
              v152 = v147[v146];
            }

            if (v152 == 4)
            {
              v148[105] = AVC_RBSP::ue_v(a1);
              v152 = v147[v146];
            }

            if (v152)
            {
              ++v148;
              v68 = v146++ >= 0x22;
              if (!v68)
              {
                continue;
              }
            }

            goto LABEL_182;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            *v177 = "parseSliceHeader";
            *&v177[8] = 1024;
            *v178 = 1345;
            *&v178[4] = 2080;
            *&v178[6] = "sliceHeader->memory_management_control_operation[i]";
            *&v178[14] = 1024;
            *&v178[16] = v152;
            v179 = 0x400000000000400;
            v180 = 6;
            v16 = MEMORY[0x277D86220];
            v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
            goto LABEL_14;
          }

          return 0xFFFFFFFFLL;
        }
      }
    }

LABEL_182:
    v138 = v160;
    if (!*(v25 + 3))
    {
      v138 = 0;
    }

    if (v161 && v138)
    {
      v139 = AVC_RBSP::ue_v(a1);
      a2[1404] = v139;
      v140 = v139;
      if (v139 >= 3u)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          *v177 = "parseSliceHeader";
          *&v177[8] = 1024;
          *v178 = 1367;
          *&v178[4] = 2080;
          *&v178[6] = "sliceHeader->cabac_init_idc";
          *&v178[14] = 1024;
          *&v178[16] = v140;
          v179 = 0x400000000000400;
          v180 = 2;
          v16 = MEMORY[0x277D86220];
          v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
          goto LABEL_14;
        }

        return 0xFFFFFFFFLL;
      }
    }

    a2[1405] = AVC_RBSP::se_v(a1);
    if (v22 - 3 <= 1)
    {
      if (v164)
      {
        v141 = *(a1 + 8) >> 63;
        AVC_RBSP::flush_bits(a1, 1);
        a2[1406] = v141;
      }

      a2[1407] = AVC_RBSP::se_v(a1);
    }

    if (*(v25 + 92))
    {
      v142 = AVC_RBSP::ue_v(a1);
      a2[1408] = v142;
      v143 = v142;
      if (v142 >= 3u)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          *v177 = "parseSliceHeader";
          *&v177[8] = 1024;
          *v178 = 1381;
          *&v178[4] = 2080;
          *&v178[6] = "sliceHeader->disable_deblocking_filter_idc";
          *&v178[14] = 1024;
          *&v178[16] = v143;
          v179 = 0x400000000000400;
          v180 = 2;
          v16 = MEMORY[0x277D86220];
          v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
          goto LABEL_14;
        }

        return 0xFFFFFFFFLL;
      }

      if (v142 != 1)
      {
        v154 = AVC_RBSP::se_v(a1);
        a2[1409] = v154;
        v155 = v154;
        if ((v154 - 7) <= 0xFFFFFFF2)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            *v177 = "parseSliceHeader";
            *&v177[8] = 1024;
            *v178 = 1386;
            *&v178[4] = 2080;
            *&v178[6] = "sliceHeader->slice_alpha_c0_offset_div2";
            *&v178[14] = 1024;
            *&v178[16] = v155;
            v179 = 0x400FFFFFFFA0400;
            v180 = 6;
            v16 = MEMORY[0x277D86220];
            v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
            goto LABEL_14;
          }

          return 0xFFFFFFFFLL;
        }

        v156 = AVC_RBSP::se_v(a1);
        a2[1410] = v156;
        v157 = v156;
        if ((v156 - 7) <= 0xFFFFFFF2)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            *v177 = "parseSliceHeader";
            *&v177[8] = 1024;
            *v178 = 1389;
            *&v178[4] = 2080;
            *&v178[6] = "sliceHeader->slice_beta_offset_div2";
            *&v178[14] = 1024;
            *&v178[16] = v157;
            v179 = 0x400FFFFFFFA0400;
            v180 = 6;
            v16 = MEMORY[0x277D86220];
            v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
            goto LABEL_14;
          }

          return 0xFFFFFFFFLL;
        }
      }
    }

    if (!*(v25 + 5) || *(v25 + 6) - 3 > 2)
    {
      return 0;
    }

    v144 = __clz((*(v25 + 80) + 1) / (*(v25 + 76) + 1));
    v145 = *(a1 + 12) >> v144;
    AVC_RBSP::flush_bits(a1, 32 - v144);
    result = 0;
    *(a2 + 353) = v145;
    return result;
  }

  v112 = 0;
  v169 = a2 + 598;
  v167 = a2 + 630;
  v163 = a2 + 678;
  v174 = a2 + 742;
  while (1)
  {
    v113 = *(a1 + 8);
    AVC_RBSP::flush_bits(a1, 1);
    a2[v112 + 582] = v113 < 0;
    v114 = v112;
    if ((v113 & 0x8000000000000000) == 0)
    {
      *&v169[2 * v112] = 1 << a2[356];
      *&v167[2 * v112] = 0;
      goto LABEL_162;
    }

    v115 = AVC_RBSP::se_v(a1);
    *&v169[2 * v112] = v115;
    v116 = v115;
    if (v115 != v115)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      *buf = 136316418;
      *v177 = "parseSliceHeader";
      *&v177[8] = 1024;
      *v178 = 1282;
      *&v178[4] = 2080;
      *&v178[6] = "sliceHeader->luma_weight_l1[i]";
      *&v178[14] = 1024;
      *&v178[16] = v116;
      v179 = 0x400FFFFFF800400;
      v180 = 127;
      v16 = MEMORY[0x277D86220];
      v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_14;
    }

    v117 = AVC_RBSP::se_v(a1);
    *&v167[2 * v114] = v117;
    v118 = v117;
    if (v117 != v117)
    {
      break;
    }

    *&v167[2 * v114] = v117 << v28[6];
LABEL_162:
    if (v170)
    {
      v119 = *(a1 + 8);
      AVC_RBSP::flush_bits(a1, 1);
      a2[v114 + 662] = v119 < 0;
      if (v119 < 0)
      {
        v122 = 0;
        v123 = 1;
        while (1)
        {
          v124 = v123;
          v125 = __clz(*(a1 + 12));
          if (v125)
          {
            AVC_RBSP::flush_bits(a1, v125 + 1);
            v126 = *(a1 + 12) >> -v125;
            AVC_RBSP::flush_bits(a1, v125);
            v127 = v126 + ~(-1 << v125);
          }

          else
          {
            AVC_RBSP::flush_bits(a1, 1);
            v127 = 0;
          }

          v128 = (-((v127 & 1) == 0) ^ ((v127 + 1) >> 1)) + ((v127 & 1) == 0);
          *&v163[4 * v114 + 2 * v122] = v128;
          v129 = v128;
          if (v128 != v128)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            *buf = 136316418;
            *v177 = "parseSliceHeader";
            *&v177[8] = 1024;
            *v178 = 1302;
            *&v178[4] = 2080;
            *&v178[6] = "sliceHeader->chroma_weight_l1[i][j]";
            *&v178[14] = 1024;
            *&v178[16] = v129;
            v179 = 0x400FFFFFF800400;
            v180 = 127;
            v16 = MEMORY[0x277D86220];
            v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
            goto LABEL_14;
          }

          v130 = __clz(*(a1 + 12));
          if (v130)
          {
            AVC_RBSP::flush_bits(a1, v130 + 1);
            v131 = *(a1 + 12) >> -v130;
            AVC_RBSP::flush_bits(a1, v130);
            v132 = v131 + ~(-1 << v130);
          }

          else
          {
            AVC_RBSP::flush_bits(a1, 1);
            v132 = 0;
          }

          v25 = v158;
          v133 = (-((v132 & 1) == 0) ^ ((v132 + 1) >> 1)) + ((v132 & 1) == 0);
          v134 = &v174[4 * v114];
          *&v134[2 * v122] = v133;
          v135 = v133;
          if (v133 != v133)
          {
            break;
          }

          v123 = 0;
          *&v134[2 * v122] = v133 << v175[7];
          v122 = 1;
          if ((v124 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        *buf = 136316418;
        *v177 = "parseSliceHeader";
        *&v177[8] = 1024;
        *v178 = 1305;
        *&v178[4] = 2080;
        *&v178[6] = "sliceHeader->chroma_offset_l1[i][j]";
        *&v178[14] = 1024;
        *&v178[16] = v135;
        v179 = 0x400FFFFFF800400;
        v180 = 127;
        v16 = MEMORY[0x277D86220];
        v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
        goto LABEL_14;
      }

      v120 = 1 << a2[357];
      v121 = &v163[4 * v114];
      *v121 = v120;
      *&v174[4 * v114] = 0;
      *(v121 + 1) = v120;
    }

LABEL_165:
    v112 = v114 + 1;
    v22 = v172;
    v28 = v175;
    if (v112 > *v165)
    {
      goto LABEL_178;
    }
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    return 0xFFFFFFFFLL;
  }

  *buf = 136316418;
  *v177 = "parseSliceHeader";
  *&v177[8] = 1024;
  *v178 = 1285;
  *&v178[4] = 2080;
  *&v178[6] = "sliceHeader->luma_offset_l1[i]";
  *&v178[14] = 1024;
  *&v178[16] = v118;
  v179 = 0x400FFFFFF800400;
  v180 = 127;
  v16 = MEMORY[0x277D86220];
  v17 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
LABEL_14:
  v18 = 46;
LABEL_25:
  _os_log_impl(&dword_277606000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, v18);
  return 0xFFFFFFFFLL;
}

uint64_t AVC_RBSP::removeNalTrailingZeros(AVC_RBSP *this, unsigned __int8 *a2, uint64_t a3)
{
  result = a3;
  if (a3 >= 1)
  {
    v4 = &a2[a3 - 1];
    while (!*v4--)
    {
      v6 = __OFSUB__(result, 1);
      result = (result - 1);
      if ((result < 0) ^ v6 | (result == 0))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AVC_RBSP::scanNalForEmulationPrevention(AVC_RBSP *this, unsigned __int8 *a2, unsigned int a3, int a4, int a5)
{
  if (!a5)
  {
    v8 = 0;
    goto LABEL_15;
  }

  if (a3 < 4)
  {
    v8 = 0;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    if (((v5 << 24) | (v6 << 16) | (v7 << 8) | a2[3]) != 1)
    {
      v8 = 0;
      goto LABEL_10;
    }

    a2 += 4;
    v8 = 4;
    a3 -= 4;
  }

  if (a3 < 3)
  {
    goto LABEL_15;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
LABEL_10:
  v9 = (v5 << 16) | (v6 << 8) | v7;
  if (v9 == 1)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  a2 += v10;
  if (v9 == 1)
  {
    v8 = 3;
    a3 -= 3;
  }

LABEL_15:
  v11 = a3 + a4;
  v12 = &a2[a3 + a4];
  if ((a3 + a4) < 1)
  {
    v12 = a2;
    v11 = 0;
  }

  v13 = &a2[a4];
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v13 = v12;
  }

  if (v11 < a3)
  {
    v14 = 0;
    v15 = v13 + 1;
    v16 = 255;
    v17 = 255;
    do
    {
      v18 = v17;
      v17 = v16;
      v16 = *(v15 - 1);
      v19 = (v17 << 8) | (v18 << 16) | v16;
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          if (!v14)
          {
            v14 = v11;
          }
        }

        else if (v19 == 3 && v11 + 1 < a3)
        {
          v22 = v14 ? v14 : v11;
          if (*v15 >= 4u)
          {
            v14 = v22;
          }
        }
      }

      else
      {
        if (v14)
        {
          v20 = v14;
        }

        else
        {
          v20 = v11;
        }

        if (v19 == 1)
        {
          v14 = v20;
        }

        if (!v19)
        {
          v14 = v20;
        }
      }

      ++v11;
      ++v15;
    }

    while (a3 != v11);
    if (v14)
    {
      a3 = v14 - 2;
    }
  }

  return a3 + v8;
}

uint64_t AppleAVDWrapperLghrnDecoderCreateInstance(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "AppleAVDWrapperLghrnDecoderCreateInstance";
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

  *a3 = 0;
  return v4;
}

void Lghrn_createSupportedPropertyDictionary()
{
  v32 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  v0 = *MEMORY[0x277CE2A10];
  v1 = *MEMORY[0x277CE29C8];
  keys = *MEMORY[0x277CE2A00];
  v20 = v1;
  v2 = *MEMORY[0x277CE29D8];
  v12 = v0;
  v13 = v2;
  *values = Lghrn_createFrameTypesArrayElement(*MEMORY[0x277CE2748]);
  *&values[8] = Lghrn_createFrameTypesArrayElement(*MEMORY[0x277CE2760]);
  *&values[16] = Lghrn_createFrameTypesArrayElement(*MEMORY[0x277CE2750]);
  FrameTypesArrayElement = Lghrn_createFrameTypesArrayElement(*MEMORY[0x277CE2758]);
  v3 = *MEMORY[0x277CBECE8];
  sLghrnOnlyTheseFrames = CFArrayCreate(*MEMORY[0x277CBECE8], values, 4, MEMORY[0x277CBF128]);
  if (!sLghrnOnlyTheseFrames && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "Lghrn_createOnlyTheseFramesArray";
    v28 = 2080;
    v29 = "sLghrnOnlyTheseFrames";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", buf, 0x16u);
  }

  for (i = 0; i != 32; i += 8)
  {
    v5 = *&values[i];
    if (v5)
    {
      CFRelease(v5);
      *&values[i] = 0;
    }
  }

  if (sLghrnOnlyTheseFrames)
  {
    v6 = MEMORY[0x277CBF138];
    v7 = MEMORY[0x277CBF150];
    v8 = CFDictionaryCreate(v3, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v9 = *MEMORY[0x277CE2710];
    keys = *MEMORY[0x277CE26E0];
    v20 = v9;
    v12 = v8;
    v13 = v8;
    v10 = *MEMORY[0x277CE2688];
    *&v21 = *MEMORY[0x277CE2650];
    *(&v21 + 1) = v10;
    *&v14 = v8;
    *(&v14 + 1) = v8;
    v11 = CFDictionaryCreate(v3, &keys, &v12, 4, v6, v7);
    sLghrnVideoDecoderSupportedPropertyDictionary = v11;
    if (sLghrnOnlyTheseFrames)
    {
      if (v11)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v8 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *values = 136315394;
    *&values[4] = "Lghrn_createSupportedPropertyDictionary";
    *&values[12] = 2080;
    *&values[14] = "sLghrnOnlyTheseFrames";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", values, 0x16u);
  }

  if (!sLghrnVideoDecoderSupportedPropertyDictionary)
  {
LABEL_16:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *values = 136315394;
      *&values[4] = "Lghrn_createSupportedPropertyDictionary";
      *&values[12] = 2080;
      *&values[14] = "sLghrnVideoDecoderSupportedPropertyDictionary";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", values, 0x16u);
    }
  }

LABEL_18:
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t AppleAVDWrapperLghrnDecoderInvalidate()
{
  v18 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    pthread_mutex_lock((DerivedStorage + 3168));
    v2 = *(v1 + 5512);
    if ((v2 - 1) >= 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "AppleAVDWrapperLghrnDecoderInvalidate";
        v10 = 1024;
        v11 = v2;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s called but plugin state is %d", &v8, 0x12u);
      }
    }

    else
    {
      *(v1 + 5512) = 3;
      AppleAVDWrapperLghrnDecoderCleanUp();
    }

    pthread_mutex_unlock((v1 + 3168));
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v4)
    {
      v5 = *(v1 + 3336);
      v6 = *(v1 + 3144);
      v7 = *(v1 + 3148);
      v8 = 136316162;
      v9 = "AppleAVDWrapperLghrnDecoderInvalidate";
      v10 = 1024;
      v11 = v5;
      v12 = 1024;
      v13 = v6;
      v14 = 1024;
      v15 = v7;
      v16 = 2048;
      v17 = v1;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() codecType: Lghrn, encryptionScheme %d, %d x %d, session : %p", &v8, 0x28u);
      return 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "AppleAVDWrapperLghrnDecoderInvalidate";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s called with invalid storage", &v8, 0xCu);
    }

    return 4294954393;
  }

  return result;
}

void AppleAVDWrapperLghrnDecoderFinalize()
{
  v19 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 136315138;
    v10 = "AppleAVDWrapperLghrnDecoderFinalize";
    v3 = MEMORY[0x277D86220];
    v4 = "AppleAVD: %s called with invalid storage";
    v5 = 12;
    goto LABEL_11;
  }

  v1 = DerivedStorage;
  pthread_mutex_lock((DerivedStorage + 3168));
  v2 = *(v1 + 5512);
  if ((v2 - 1) >= 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "AppleAVDWrapperLghrnDecoderFinalize";
      v11 = 1024;
      v12 = v2;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s called but plugin state is %d", &v9, 0x12u);
    }
  }

  else if (v2 != 3)
  {
    AppleAVDWrapperLghrnDecoderCleanUp();
  }

  pthread_mutex_unlock((v1 + 3168));
  pthread_mutex_destroy((v1 + 3168));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v1 + 3336);
    v7 = *(v1 + 3144);
    v8 = *(v1 + 3148);
    v9 = 136316162;
    v10 = "AppleAVDWrapperLghrnDecoderFinalize";
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2048;
    v18 = v1;
    v3 = MEMORY[0x277D86220];
    v4 = "AppleAVD: %s() codecType: Lghrn, encryptionScheme %d, %d x %d, session : %p";
    v5 = 40;
LABEL_11:
    _os_log_impl(&dword_277606000, v3, OS_LOG_TYPE_DEFAULT, v4, &v9, v5);
  }
}

__CFString *AppleAVDWrapperLghrnDecoderCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<AppleAVD_LghrnVideoDecoder %p>", a1);
  return Mutable;
}

uint64_t AppleAVDWrapperLghrnDecoderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, *MEMORY[0x277CE2698]))
  {
    if (CFEqual(a2, *MEMORY[0x277CE2650]))
    {
      goto LABEL_7;
    }

    if (!CFEqual(a2, *MEMORY[0x277CE2688]))
    {
      if (CFEqual(a2, *MEMORY[0x277CE26E0]))
      {
        pthread_once(&sCreateSuggestedQualityOfServiceTiersOnce_1, myCreateSuggestedQualityOfServiceTiers_1);
        v11 = myVideoDecoderSuggestedQualityOfServiceTiers_1;
        if (!myVideoDecoderSuggestedQualityOfServiceTiers_1)
        {

          return FigSignalErrorAtGM();
        }

        goto LABEL_8;
      }

      if (!CFEqual(a2, *MEMORY[0x277CE2710]))
      {
        return 4294954396;
      }

LABEL_7:
      v11 = *MEMORY[0x277CBED28];
LABEL_8:
      v12 = CFRetain(v11);
LABEL_9:
      v13 = v12;
      result = 0;
      *a4 = v13;
      return result;
    }

    LODWORD(valuePtr) = 0;
    v14 = *(DerivedStorage + 3120);
    if (v14)
    {
      if (!AppleAVDGetParameter(v14, 74, &valuePtr))
      {
        v12 = CFNumberCreate(a3, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_9;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        HIDWORD(valuePtr) = 136315138;
        v19 = "AppleAVDWrapperLghrnDecoderCopyProperty";
        v15 = MEMORY[0x277D86220];
        v16 = "AppleAVD: ERROR: %s() - AppleAVDGetParameter call for kAppleAVDGetFrameReceiverThreadPriority returned ERROR\n";
LABEL_29:
        _os_log_impl(&dword_277606000, v15, OS_LOG_TYPE_DEFAULT, v16, &valuePtr + 4, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      HIDWORD(valuePtr) = 136315138;
      v19 = "AppleAVDWrapperLghrnDecoderCopyProperty";
      v15 = MEMORY[0x277D86220];
      v16 = "AppleAVD: WARNING: %s() - trying to get FrameReceiverThreadPriority before videoContext was created!\n";
      goto LABEL_29;
    }

    return 4294954385;
  }

  v8 = *(DerivedStorage + 5496);
  result = 4294954396;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v10 = MEMORY[0x277CE2750];
    }

    else
    {
      if (v8 != 3)
      {
        return result;
      }

      v10 = MEMORY[0x277CE2758];
    }
  }

  else if (v8)
  {
    if (v8 != 1)
    {
      return result;
    }

    v10 = MEMORY[0x277CE2760];
  }

  else
  {
    v10 = MEMORY[0x277CE2748];
  }

  v17 = *v10;
  CFRetain(*v10);
  result = 0;
  *a4 = v17;
  return result;
}

uint64_t AppleAVDWrapperLghrnDecoderSetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CE26E0]))
  {

    return FigSignalErrorAtGM();
  }

  else if (CFEqual(a2, *MEMORY[0x277CE2710]))
  {
    return 4294954395;
  }

  else if (CFEqual(a2, *MEMORY[0x277CE26A0]))
  {
    if (a3 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(a3)))
    {
      Value = CFBooleanGetValue(a3);
      v9 = Value;
      v10 = *(DerivedStorage + 5512);
      if (v10 < 2)
      {
        *(DerivedStorage + 5612) = Value != 0;
        v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        result = 0;
        if (v12)
        {
          v13 = 136315394;
          v14 = "AppleAVDWrapperLghrnDecoderSetProperty";
          v15 = 1024;
          *v16 = v9 != 0;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): kVTDecompressionPropertyKey_Paravirtualized - paravirtualizedSession: %d", &v13, 0x12u);
          return 0;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(DerivedStorage + 5612);
          v13 = 136315906;
          v14 = "AppleAVDWrapperLghrnDecoderSetProperty";
          v15 = 1024;
          *v16 = v10;
          *&v16[4] = 1024;
          *&v16[6] = v11;
          v17 = 1024;
          v18 = v9 != 0;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): pluginState (%d) was already started! current: %d - requested: %d", &v13, 0x1Eu);
        }

        return 4294954385;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315394;
        v14 = "AppleAVDWrapperLghrnDecoderSetProperty";
        v15 = 2048;
        *v16 = a3;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): propertyValue (%p) is invalid!", &v13, 0x16u);
      }

      return 4294954394;
    }
  }

  else
  {
    return 4294954396;
  }

  return result;
}

uint64_t AppleAVDWrapperLghrnDecoderCleanUp()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = *(v1 + 3120);
  if (v2)
  {
    if (AppleAVDTerminateDecoder(v2) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_LghrnDecoder - ERROR terminate decoder", buf, 2u);
    }

    if (AppleAVDCloseConnection((v1 + 3120)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_LghrnDecoder - ERROR closing connection", v12, 2u);
    }
  }

  v3 = DerivedStorage[691];
  if (v3)
  {
    fclose(v3);
    DerivedStorage[691] = 0;
  }

  v4 = DerivedStorage[692];
  if (v4)
  {
    fclose(v4);
    DerivedStorage[692] = 0;
  }

  v5 = DerivedStorage[693];
  if (v5)
  {
    fclose(v5);
    DerivedStorage[693] = 0;
  }

  v6 = DerivedStorage[2];
  if (v6)
  {
    CVPixelBufferPoolRelease(v6);
  }

  DerivedStorage[2] = 0;
  v7 = DerivedStorage[3];
  if (v7)
  {
    CVPixelBufferPoolRelease(v7);
  }

  DerivedStorage[3] = 0;
  v8 = DerivedStorage[4];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[4] = 0;
  }

  v9 = DerivedStorage[5];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[5] = 0;
  }

  v10 = DerivedStorage[391];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[391] = 0;
  }

  *DerivedStorage = 0;
  result = FigFormatDescriptionRelease();
  DerivedStorage[1] = 0;
  return result;
}

void myCreateSuggestedQualityOfServiceTiers_1()
{
  values[4] = *MEMORY[0x277D85DE8];
  values[0] = createQualityOfServiceTier_1(*MEMORY[0x277CE2748]);
  values[1] = createQualityOfServiceTier_1(*MEMORY[0x277CE2760]);
  values[2] = createQualityOfServiceTier_1(*MEMORY[0x277CE2750]);
  values[3] = createQualityOfServiceTier_1(*MEMORY[0x277CE2758]);
  myVideoDecoderSuggestedQualityOfServiceTiers_1 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 4, MEMORY[0x277CBF128]);
  if (!myVideoDecoderSuggestedQualityOfServiceTiers_1)
  {
    FigSignalErrorAtGM();
    if (!myVideoDecoderSuggestedQualityOfServiceTiers_1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315394;
      v3 = "myCreateSuggestedQualityOfServiceTiers";
      v4 = 2080;
      v5 = "myVideoDecoderSuggestedQualityOfServiceTiers";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", &v2, 0x16u);
    }
  }

  for (i = 0; i != 4; ++i)
  {
    v1 = values[i];
    if (v1)
    {
      CFRelease(v1);
      values[i] = 0;
    }
  }
}

CFDictionaryRef createQualityOfServiceTier_1(void *a1)
{
  values[2] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CE2698];
  valuePtr = 0x3FF0000000000000;
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
  values[0] = a1;
  values[1] = v3;
  v4 = CFDictionaryCreate(v2, &v6, values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v4)
  {
    FigSignalErrorAtGM();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "createQualityOfServiceTier";
      v10 = 2080;
      v11 = "tier";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", buf, 0x16u);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

uint64_t AppleAVDWrapperLghrnDecoderStartSession(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3)
{
  v92 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  readPreferences(&v74);
  v5 = BYTE12(v74);
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v7 = DerivedStorage;
    v8 = *(DerivedStorage + 5512);
    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AppleAVDWrapperLghrnDecoderStartSession";
        *&buf[12] = 1024;
        *&buf[14] = v8;
        v9 = MEMORY[0x277D86220];
        v10 = "AppleAVD: %s ERROR: pluginState isn't kPluginCreated, is %d";
        v11 = 18;
LABEL_7:
        _os_log_impl(&dword_277606000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, v11);
        return 4294954387;
      }

      return 4294954387;
    }

    pthread_mutex_init((DerivedStorage + 3168), 0);
    pthread_mutex_lock((v7 + 3168));
    *v7 = a2;
    FigFormatDescriptionRelease();
    v13 = FigFormatDescriptionRetain();
    *(v7 + 8) = v13;
    Dimensions = CMVideoFormatDescriptionGetDimensions(v13);
    v15 = Dimensions;
    *(v7 + 3144) = Dimensions;
    v16 = HIDWORD(Dimensions);
    *(v7 + 3152) = Dimensions;
    *(v7 + 3232) = Dimensions;
    *(v7 + 3148) = HIDWORD(Dimensions);
    *(v7 + 3156) = HIDWORD(Dimensions);
    *(v7 + 3236) = HIDWORD(Dimensions);
    *(v7 + 3140) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v7 + 3336);
      *buf = 136316418;
      *&buf[4] = "AppleAVDWrapperLghrnDecoderStartSession";
      *&buf[12] = 1024;
      *&buf[14] = v17;
      *&buf[18] = 1024;
      *&buf[20] = v15;
      *&buf[24] = 1024;
      *&buf[26] = v16;
      *&buf[30] = 2080;
      *&buf[32] = "06:37:33";
      *&buf[40] = 2080;
      *&buf[42] = "Oct 23 2025";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() codecType: Lghrn, encryptionScheme %d, %d x %d, built %s %s", buf, 0x32u);
    }

    v18 = DWORD1(v78);
    *(v7 + 5632) = DWORD1(v79);
    *(v7 + 5560) = v18;
    *(v7 + 5616) = DWORD2(v74);
    *(v7 + 5568) = *(&v75 + 1);
    if (MGGetBoolAnswer())
    {
      *(v7 + 5520) = DWORD1(v76);
    }

    if (v74)
    {
      v19 = (2 * (DWORD2(v77) != 0)) | 4;
    }

    else
    {
      v19 = 2 * (DWORD2(v77) != 0);
    }

    if (v79)
    {
      v20 = v19 | 8;
    }

    else
    {
      v20 = v19;
    }

    *(v7 + 5564) = v20;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v20;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVDWrapperLghrnDecoderStartSession: storage->miscPreferences %d ", buf, 8u);
    }

    v21 = HIDWORD(v78);
    *(v7 + 5552) = HIDWORD(v78);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(v7 + 3336);
      *buf = 136316930;
      *&buf[4] = "AppleAVDWrapperLghrnDecoderStartSession";
      *&buf[12] = 1024;
      *&buf[14] = v22;
      *&buf[18] = 1024;
      *&buf[20] = v15;
      *&buf[24] = 1024;
      *&buf[26] = v16;
      *&buf[30] = 1024;
      *&buf[32] = v21;
      *&buf[36] = 2048;
      *&buf[38] = v7;
      *&buf[46] = 2080;
      *&buf[48] = "06:37:33";
      *&buf[56] = 2080;
      *&buf[58] = "Oct 23 2025";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() codecType: Lghrn, encryptionScheme %d, %d x %d, tryAllFrames = %d, session : %p, built %s %s", buf, 0x42u);
    }

    *(v7 + 5556) = v78;
    Extension = CMFormatDescriptionGetExtension(a3, *MEMORY[0x277CC03B0]);
    if (!Extension || (v24 = Extension, TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(v24)) || (Value = CFDictionaryGetValue(v24, @"vpcC")) == 0 || (ValueAtIndex = Value, v28 = CFArrayGetTypeID(), v28 == CFGetTypeID(ValueAtIndex)) && (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) == 0 || (v29 = CFDataGetTypeID(), v29 != CFGetTypeID(ValueAtIndex)))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: LGHDecoder ERROR: ConfigRecordData error - Cannot find config record", buf, 2u);
      }

      v12 = 4294958325;
      goto LABEL_37;
    }

    BytePtr = CFDataGetBytePtr(ValueAtIndex);
    if (CFDataGetLength(ValueAtIndex) < 12 || *BytePtr != 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v32 = MEMORY[0x277D86220];
        v33 = "AppleAVD: undersized config record";
        v34 = 2;
        goto LABEL_45;
      }

LABEL_46:
      v12 = 4294954386;
LABEL_37:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "CreateHeaderBuffer";
        *&buf[12] = 1024;
        *&buf[14] = v12;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
      }

      goto LABEL_39;
    }

    v31 = BytePtr[4];
    if ((v31 & 0xFFFFFFFD) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v31;
        v32 = MEMORY[0x277D86220];
        v33 = "AppleAVD: unsupported profile %d";
        v34 = 8;
LABEL_45:
        _os_log_impl(&dword_277606000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, v34);
        goto LABEL_46;
      }

      goto LABEL_46;
    }

    v36 = (BytePtr[6] >> 4) - 8;
    *(v7 + 3266) = v36;
    *(v7 + 3265) = v36;
    v37 = (BytePtr[6] >> 1) & 7;
    if (v37 > 3)
    {
      goto LABEL_46;
    }

    *(v7 + 3264) = 0x3020101u >> (8 * v37);
    *(v7 + 3321) = BytePtr[6] & 1;
    v38 = BytePtr[10];
    if ((BytePtr[10] || BytePtr[11]) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v39 = BytePtr[11];
      *buf = 67109376;
      *&buf[4] = v38;
      *&buf[8] = 1024;
      *&buf[10] = v39;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: codecIntializationDataSize not zero %x %x, but ignored", buf, 0xEu);
    }

    *&__filename[0] = 0;
    v40 = AppleAVDOpenConnection(__filename, 3, 1, v5);
    if (v40)
    {
      goto LABEL_53;
    }

    v42 = *&__filename[0];
    *(v7 + 3120) = *&__filename[0];
    *(v7 + 5512) = 1;
    if (*(v7 + 5556) != -1)
    {
      *buf = *(v7 + 5556);
      if (AppleAVDSetParameter(v42, 40, buf) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v84[0]) = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_LghVideoDecoder ERROR: kAppleAVDMemCacheMode set failed", v84, 2u);
      }

      v42 = *(v7 + 3120);
    }

    *__s = *(v7 + 5552);
    if (AppleAVDSetParameter(v42, 49, __s) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: CreateAVDLghrnInstance ERROR: kAppleAVDSetTryEveryFrame set failed", buf, 2u);
    }

    *v89 = *(v7 + 3336);
    v43 = AppleAVDSetParameter(*(v7 + 3120), 24, v89);
    if (v43)
    {
      v41 = v43;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      v44 = *(v7 + 3140);
      *buf = 67109376;
      *&buf[4] = v44;
      *&buf[8] = 1024;
      *&buf[10] = v41;
      v45 = MEMORY[0x277D86220];
      v46 = "AppleAVD: AppleAVD_LgrnVideoDecoder: frame# %d, Could not set kAppleAVDSetCryptScheme, err %d\n";
      v47 = 14;
LABEL_70:
      _os_log_impl(&dword_277606000, v45, OS_LOG_TYPE_DEFAULT, v46, buf, v47);
      goto LABEL_54;
    }

    *&v84[0] = DisplayCallBack_2;
    v40 = AppleAVDSetParameter(*&__filename[0], 1, v84);
    if (v40)
    {
LABEL_53:
      v41 = v40;
LABEL_54:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_LghrnVideoDecoder ERROR: createAppleAVDHW_LghrnDecoderInstance returned error", buf, 2u);
      }

      if (v41 == -536870210)
      {
        v12 = 4294954383;
      }

      else
      {
        v12 = 4294954385;
      }

      goto LABEL_39;
    }

    if (*(v7 + 5612))
    {
      v48 = PostEmitCleanUpCallBack_2;
    }

    else
    {
      v48 = 0;
    }

    *v83 = v48;
    v49 = AppleAVDSetParameter(*&__filename[0], 71, v83);
    if (v49)
    {
      v41 = v49;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      *buf = 0;
      v45 = MEMORY[0x277D86220];
      v46 = "AppleAVD: AppleAVD_LghrnDecoder - ERROR setting parameter kAppleAVDPostEmitCleanUpCallBack";
      goto LABEL_81;
    }

    v50 = AppleAVDSetParameter(*&__filename[0], 70, (v7 + 5612));
    if (v50)
    {
      v41 = v50;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      *buf = 0;
      v45 = MEMORY[0x277D86220];
      v46 = "AppleAVD: AppleAVD_LghrnDecoder - ERROR setting parameter kAppleAVDSetParavirtualizedSession";
LABEL_81:
      v47 = 2;
      goto LABEL_70;
    }

    v41 = AppleAVDSetParameter(*&__filename[0], 2, v7);
    if (v41)
    {
      goto LABEL_54;
    }

    if (AppleAVDSetParameter(*(v7 + 3120), 51, (v7 + 5560)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "CreateAVDLghrnInstance";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetOnDemandDVAMap failed", buf, 0xCu);
    }

    if (AppleAVDSetParameter(*(v7 + 3120), 52, (v7 + 5616)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "CreateAVDLghrnInstance";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetAVDCoreControlPerfWeight failed", buf, 0xCu);
    }

    if (AppleAVDSetParameter(*(v7 + 3120), 57, (v7 + 5568)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "CreateAVDLghrnInstance";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetCPBCacheBufferSizeFactor failed", buf, 0xCu);
    }

    if (AppleAVDSetParameter(*(v7 + 3120), 58, (v7 + 5572)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "CreateAVDLghrnInstance";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetCPBCacheNumBuffers failed", buf, 0xCu);
    }

    if (AppleAVDSetParameter(*(v7 + 3120), 59, (v7 + 5564)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "CreateAVDLghrnInstance";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetMiscPreferences failed", buf, 0xCu);
    }

    *v86 = 256;
    AppleAVDSetParameter(*&__filename[0], 13, v86);
    memset(&buf[8], 0, 56);
    *buf = 3;
    *&buf[4] = *(v7 + 3144);
    *&buf[16] = 0;
    *&buf[24] = 0;
    v51 = *(v7 + 3264);
    *&buf[40] = *(v7 + 3265);
    *&buf[44] = v51;
    v40 = AppleAVDInitializeDecoder(*(v7 + 3120), buf);
    if (v40)
    {
      goto LABEL_53;
    }

    v40 = AppleAVDGetParameter(*&__filename[0], 8, (v7 + 3160));
    if (v40)
    {
      goto LABEL_53;
    }

    if (*(v7 + 3232) < 0x40u || *(v7 + 3236) <= 0x3Fu)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v71.tv_sec) = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_LghrnVideoDecoder ERROR: Unsupported picture size!", &v71, 2u);
      }

      v41 = 305;
      goto LABEL_54;
    }

    if (MGGetBoolAnswer() && HIDWORD(v79))
    {
      *buf = 0;
      PrepareHistogramDump(buf);
      AppleAVDSetParameter(*(v7 + 3120), 62, *buf);
    }

    if (*(v7 + 5520))
    {
      v72 = 0;
      setlocale(0, &unk_27777977E);
      time(&v72);
      v52 = localtime(&v72);
      strftime(__s, 0x14uLL, "%m%d%g_%H%M%S", v52);
      v71.tv_sec = 0;
      *&v71.tv_usec = 0;
      v70 = 0;
      gettimeofday(&v71, &v70);
      snprintf(__str, 5uLL, "_%03d", v71.tv_usec / 1000);
      strlen(__str);
      __strncat_chk();
      strcpy(v89, "-decOutput.ivf");
      qmemcpy(v69, "/var/mobile/Library/Caches/com.a/com.apple.applepple.videocodecd", sizeof(v69));
      strcpy(buf, "/var/mobile/Library/Caches/com.apple.videocodecd/com.apple.appleavd/");
      strlen(__s);
      __strncat_chk();
      strlen(v89);
      __strncat_chk();
      strcpy(v86, "-decEncrOut.ivf");
      __filename[1] = v69[1];
      __filename[2] = v69[3];
      v88[0] = v69[2];
      strcpy(v88 + 13, "pleavd/");
      __filename[0] = v69[0];
      strlen(__s);
      __strncat_chk();
      strlen(v86);
      __strncat_chk();
      strcpy(v83, "-decPropertyLog.txt");
      v84[2] = v69[3];
      v85[0] = v69[2];
      strcpy(v85 + 13, "pleavd/");
      v84[0] = v69[0];
      v84[1] = v69[1];
      strlen(__s);
      __strncat_chk();
      strlen(v83);
      __strncat_chk();
      v53 = fopen(buf, "wbx");
      *(v7 + 5528) = v53;
      if (!v53)
      {
        *(v7 + 5528) = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v81 = 136315138;
          v82 = buf;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD Lghrn dump: could not open file %s\n", v81, 0xCu);
        }
      }

      v54 = fopen(__filename, "wbx");
      *(v7 + 5536) = v54;
      if (!v54)
      {
        *(v7 + 5536) = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v81 = 136315138;
          v82 = __filename;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD Lghrn dump: could not open file %s\n", v81, 0xCu);
        }
      }

      v55 = fopen(v84, "wbx");
      *(v7 + 5544) = v55;
      if (!v55)
      {
        *(v7 + 5544) = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v81 = 136315138;
          v82 = v84;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD Lghrn dump: could not open property log file %s\n", v81, 0xCu);
        }
      }

      v56 = *(v7 + 5536);
      if (v56)
      {
        WriteIVFHeader_0(v56, v15, v16);
      }

      v57 = *(v7 + 5528);
      if (v57)
      {
        WriteIVFHeader_0(v57, v15, v16);
      }
    }

    else
    {
      *(v7 + 5528) = 0u;
      *(v7 + 5544) = 0;
    }

    v58 = *(v7 + 3265);
    if ((v58 | 2) != 2 || v58 != *(v7 + 3266))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v66 = *(v7 + 3266);
        *buf = 136315650;
        *&buf[4] = "AppleAVDWrapperLghrnDecoderStartSession";
        *&buf[12] = 1024;
        *&buf[14] = v58;
        *&buf[18] = 1024;
        *&buf[20] = v66;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): invalid bit depth [luma depth minus 8 = %d, chroma depth minus 8 = %d]\n", buf, 0x18u);
      }

      v12 = 4294954385;
      goto LABEL_39;
    }

    *(v7 + 3137) = 1;
    *(v7 + 3140) = 1;
    if (isEligibleToUseCompression(*(v7 + 3160), *(v7 + 3144), *(v7 + 3148), *(v7 + 3152), *(v7 + 3156), *(v7 + 5632), *(v7 + 5612)))
    {
      inited = InitPixelBufferCompressionSupported(*v7, *(v7 + 3120), *(v7 + 3160), *(v7 + 3144), *(v7 + 3148), *(v7 + 3152), *(v7 + 3156), *(v7 + 3265), *(v7 + 3264), *(v7 + 3321), *(v7 + 5488), 8, 0, 0, 0, (v7 + 24), (v7 + 40), 0, 0, 0, 0);
      if (inited)
      {
        goto LABEL_144;
      }

      inited = GetIOSurfaceTypeFromSessionPixelBufferAttributes(*v7, (v7 + 5516));
      if (inited)
      {
        goto LABEL_144;
      }

      v60 = *(v7 + 5516);
      if (v60)
      {
        *(v7 + 5628) = 1;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v61 = *(v7 + 3265) + 8;
          v62 = *(v7 + 3264);
          *buf = 136315906;
          *&buf[4] = "AppleAVDWrapperLghrnDecoderStartSession";
          *&buf[12] = 1024;
          *&buf[14] = v60;
          *&buf[18] = 1024;
          *&buf[20] = v61;
          *&buf[24] = 1024;
          *&buf[26] = v62;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: Compressed buffers enabled! CompressionType:%d. luma depth %d chroma format %d", buf, 0x1Eu);
        }

        if (*(v7 + 3160) == 20 && *(v7 + 3265) == 2)
        {
          v63 = *(v7 + 3264);
          if (*(v7 + 3264))
          {
            v64 = *(v7 + 3152);
            v65 = *(v7 + 3156);
            if (v63 == 2)
            {
              v64 >>= 1;
            }

            else if (v63 == 1)
            {
              v64 >>= 1;
              v65 >>= 1;
            }

            if (((((v65 + 15) >> 4) * ((v64 + 15) >> 4)) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: LGH chroma plane with odd number of IMBs is unspported on Salvia A0", buf, 2u);
            }
          }
        }

        goto LABEL_146;
      }
    }

    else
    {
      *(v7 + 5516) = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v67 = *(v7 + 3265) + 8;
      v68 = *(v7 + 3264);
      *buf = 136315650;
      *&buf[4] = "AppleAVDWrapperLghrnDecoderStartSession";
      *&buf[12] = 1024;
      *&buf[14] = v67;
      *&buf[18] = 1024;
      *&buf[20] = v68;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: Compressed buffers disabled! luma depth %d chroma format %d", buf, 0x18u);
    }

    inited = InitPixelBufferCompressionNotSupported_2(v7);
    if (!inited)
    {
      *(v7 + 5628) = 0;
LABEL_146:
      v12 = 0;
      *(v7 + 5512) = 2;
LABEL_41:
      pthread_mutex_unlock((v7 + 3168));
      kdebug_trace();
      return v12;
    }

LABEL_144:
    v12 = inited;
LABEL_39:
    FigFormatDescriptionRelease();
    *(v7 + 8) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AppleAVDWrapperLghrnDecoderStartSession";
      *&buf[12] = 1024;
      *&buf[14] = v12;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
    }

    goto LABEL_41;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "AppleAVDWrapperLghrnDecoderStartSession";
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: ERROR: %s no instance storage!";
    v11 = 12;
    goto LABEL_7;
  }

  return 4294954387;
}

uint64_t AppleAVDWrapperLghrnDecoderDecodeFrame(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, char a4, int *a5)
{
  v173 = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVDWrapperLghrnDecoderDecodeFrame - ERROR! storage is NULL\n", buf, 2u);
    }

    return 311;
  }

  v10 = DerivedStorage;
  v144 = a5;
  kdebug_trace();
  kdebug_trace();
  pthread_mutex_lock((v10 + 3168));
  v11 = *(v10 + 5512);
  if (v11 != 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v11;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s called on plugin in state %d", buf, 0x12u);
    }

    pthread_mutex_unlock((v10 + 3168));
    return 311;
  }

  v12 = (v10 + 3388);
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
  if (!SampleAttachmentsArray || (ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0)) == 0)
  {
    *(v10 + 5500) = 0;
    goto LABEL_17;
  }

  v15 = ValueAtIndex;
  Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CC0690]);
  v17 = CFDictionaryGetValue(v15, *MEMORY[0x277CC06A0]);
  v18 = CFDictionaryGetValue(v15, *MEMORY[0x277CC06A8]);
  v19 = *(v10 + 5496);
  v20 = MEMORY[0x277CBED28];
  if (v19 == 3)
  {
    if (v17)
    {
      v21 = MEMORY[0x277CBED10];
      v22 = v17;
      goto LABEL_40;
    }

LABEL_41:
    v37 = 1;
    goto LABEL_42;
  }

  if (v19 == 2)
  {
    if (v17 && !CFEqual(v17, *MEMORY[0x277CBED10]))
    {
      if (!v18)
      {
        v37 = 0;
        goto LABEL_42;
      }

      v21 = MEMORY[0x277CBED28];
      v22 = v18;
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if (v19 != 1 || !Value)
  {
    goto LABEL_41;
  }

  v21 = MEMORY[0x277CBED28];
  v22 = Value;
LABEL_40:
  v37 = CFEqual(v22, *v21) != 0;
LABEL_42:
  v38 = *v20;
  v40 = v17 != *v20 || v18 == v38;
  v41 = v40 && v37;
  if (*(v10 + 5500) == 1)
  {
    v37 = v41;
  }

  if (v17 != v38 || v18 == v38)
  {
    *(v10 + 5500) = 0;
  }

  else
  {
    v42 = Value == *MEMORY[0x277CBED10] || v37;
    if ((v42 & 1) == 0)
    {
      *(v10 + 5500) = 1;
      goto LABEL_59;
    }
  }

  if (!v37)
  {
LABEL_59:
    kdebug_trace();
    VTDecoderSessionEmitDecodedFrame();
    if (v144)
    {
      *v144 = 2;
    }

    goto LABEL_87;
  }

LABEL_17:
  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  v25 = DataBuffer;
  if (!DataBuffer || (DataLength = CMBlockBufferGetDataLength(DataBuffer)) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v25;
      *&buf[12] = 2048;
      *&buf[14] = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR:  either dataBuffer=%p is invalid or dataLength=%zu is invalid!", buf, 0x16u);
    }

    kdebug_trace();
    v30 = -12909;
    VTDecoderSessionEmitDecodedFrame();
    v31 = v144;
    if (!v144)
    {
      goto LABEL_28;
    }

LABEL_27:
    *v31 = 2;
    goto LABEL_28;
  }

  if (*(v10 + 3336) == 6)
  {
    goto LABEL_20;
  }

  Decryptor = FigSampleBufferGetDecryptor();
  v33 = Decryptor;
  if (*(v10 + 3140) == 1 && !Decryptor)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = 1;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      v34 = MEMORY[0x277D86220];
      v35 = "AppleAVD: ERROR: %s(): frame# %d, session: %p, decryptor attachment is NULL\n";
      v36 = 28;
LABEL_85:
      _os_log_impl(&dword_277606000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, v36);
    }

LABEL_86:
    kdebug_trace();
    VTDecoderSessionEmitDecodedFrame();
    goto LABEL_87;
  }

  if (!Decryptor || Decryptor == *(v10 + 3128))
  {
    goto LABEL_266;
  }

  LODWORD(rhs.value) = *(v10 + 3336);
  lhs.value = 0;
  NativeSession = FigCPECryptorGetNativeSession(Decryptor, &lhs);
  if (NativeSession)
  {
    v30 = NativeSession;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(v10 + 3140);
      *buf = 136315650;
      *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v46;
      *&buf[18] = 1024;
      *&buf[20] = v30;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): frame# %d, FigCPECryptorGetNativeSession returned err %d\n", buf, 0x18u);
    }

    kdebug_trace();
    goto LABEL_210;
  }

  v63 = AppleAVDSetParameter(*(v10 + 3120), 24, &rhs);
  if (v63)
  {
    v30 = v63;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v64 = *(v10 + 3140);
      *buf = 136315650;
      *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v64;
      *&buf[18] = 1024;
      *&buf[20] = v30;
      v65 = MEMORY[0x277D86220];
      v66 = "AppleAVD: ERROR: %s(): frame# %d, AppleAVDSetParameter [kAppleAVDSetCryptScheme] failed with %d\n";
LABEL_208:
      _os_log_impl(&dword_277606000, v65, OS_LOG_TYPE_DEFAULT, v66, buf, 0x18u);
      goto LABEL_209;
    }

    goto LABEL_209;
  }

  v104 = AppleAVDSetParameter(*(v10 + 3120), 25, lhs.value);
  if (v104)
  {
    v30 = v104;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v105 = *(v10 + 3140);
      *buf = 136315650;
      *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v105;
      *&buf[18] = 1024;
      *&buf[20] = v30;
      v65 = MEMORY[0x277D86220];
      v66 = "AppleAVD: ERROR: %s(): frame# %d, AppleAVDSetParameter [kAppleAVDSetCryptRef] failed with %d\n";
      goto LABEL_208;
    }

LABEL_209:
    kdebug_trace();
LABEL_210:
    VTDecoderSessionEmitDecodedFrame();
LABEL_28:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v30;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
    }

    goto LABEL_87;
  }

  v117 = *(v10 + 5488);
  v155 = 0;
  ExternalProtectionMethods = FigCPECryptorGetExternalProtectionMethods(v33, &v155);
  if (ExternalProtectionMethods)
  {
    v30 = ExternalProtectionMethods;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v119 = *(v10 + 3140);
      *buf = 136315650;
      *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v119;
      *&buf[18] = 1024;
      *&buf[20] = v30;
      v65 = MEMORY[0x277D86220];
      v66 = "AppleAVD: ERROR: %s(): frame# %d, FigCPECryptorGetExternalProtectionMethods, err %d\n";
      goto LABEL_208;
    }

    goto LABEL_209;
  }

  v121 = 3;
  if ((v155 & 1) == 0)
  {
    v121 = 1;
  }

  v122 = 7;
  if ((v155 & 2) == 0)
  {
    v122 = v121;
  }

  if (*(v10 + 5488) != v122)
  {
    *(v10 + 5488) = v122;
    if (*(v10 + 5516))
    {
      inited = InitPixelBufferCompressionSupported(*v10, *(v10 + 3120), *(v10 + 3160), *(v10 + 3144), *(v10 + 3148), *(v10 + 3152), *(v10 + 3156), *(v10 + 3265), *(v10 + 3264), *(v10 + 3321), v122, 8, 0, 0, 0, (v10 + 24), (v10 + 40), 0, 0, 0, 0);
      if (!inited)
      {
        v124 = 1;
LABEL_261:
        *(v10 + 5628) = v124;
        goto LABEL_262;
      }
    }

    else
    {
      inited = InitPixelBufferCompressionNotSupported_2(v10);
      if (!inited)
      {
        v124 = 0;
        goto LABEL_261;
      }
    }

    v30 = inited;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v30;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): initializing pixel buffer failed with %d\n", buf, 0x12u);
    }

    *(v10 + 5488) = v117;
    kdebug_trace();
    VTDecoderSessionEmitDecodedFrame();
    if (v144)
    {
      *v144 = 2;
    }

    goto LABEL_28;
  }

LABEL_262:
  v130 = *(v10 + 3128);
  if (v33 != v130)
  {
    if (v130)
    {
      CFRelease(v130);
    }

    *(v10 + 3128) = v33;
    CFRetain(v33);
  }

LABEL_266:
  if (*(v10 + 3336) != 4)
  {
LABEL_20:
    BytePtr = 0;
    v142 = 0;
    goto LABEL_21;
  }

  v131 = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
  if (v131 && (v132 = CFArrayGetValueAtIndex(v131, 0)) != 0)
  {
    v133 = CFDictionaryGetValue(v132, *MEMORY[0x277CC0638]);
    if (!v133)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_86;
      }

      *buf = 136315138;
      *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
      v34 = MEMORY[0x277D86220];
      v35 = "AppleAVD: %s() ERROR: CryptorSubsampleAuxiliaryData is NULL";
      v36 = 12;
      goto LABEL_85;
    }

    v134 = v133;
    BytePtr = CFDataGetBytePtr(v133);
    Length = CFDataGetLength(v134);
    if (Length >= 0x808)
    {
      v136 = Length >> 3;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_86;
      }

      *buf = 136315394;
      *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
      *&buf[12] = 2048;
      *&buf[14] = v136;
      v34 = MEMORY[0x277D86220];
      v35 = "AppleAVD: %s() ERROR: crauxNumEntries %ld out of range";
      v36 = 22;
      goto LABEL_85;
    }

    v142 = Length >> 3;
  }

  else
  {
    BytePtr = 0;
    v142 = 0;
  }

LABEL_21:
  v154 = **&MEMORY[0x277CC08F0];
  v153 = v154;
  CMSampleBufferGetOutputDuration(buf, a3);
  v26 = *buf;
  *(v10 + 3404) = *&buf[16];
  *v12 = v26;
  if ((*(v10 + 3400) & 0x1D) == 1)
  {
    if ((*(v10 + 3352) & 0x1D) == 1)
    {
      v27 = v10 + 3340;
      CMSampleBufferGetDecodeTimeStamp(&v154, a3);
      lhs = v154;
      rhs = *(v10 + 3340);
      CMTimeSubtract(buf, &lhs, &rhs);
      v28 = *buf;
      *(v10 + 3404) = *&buf[16];
      *v12 = v28;
      *(v10 + 3340) = *&v154.value;
      epoch = v154.epoch;
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(&v153, a3);
      v27 = v10 + 3364;
      lhs = v153;
      rhs = *(v10 + 3364);
      CMTimeSubtract(buf, &lhs, &rhs);
      v47 = *buf;
      *(v10 + 3404) = *&buf[16];
      *v12 = v47;
      *(v10 + 3364) = *&v153.value;
      epoch = v153.epoch;
    }

    *(v27 + 16) = epoch;
    if (*v12 < 1)
    {
      v43 = 0.0;
    }

    else
    {
      v43 = *(v10 + 3396) / *v12;
    }

    v44 = DataLength;
    *(v10 + 3416) = v43;
  }

  else
  {
    v43 = *(v10 + 3416);
    v44 = DataLength;
  }

  if (((v43 + 0.5) - 1025) >= 0xFFFFFC00)
  {
    v48 = (v43 + 0.5);
  }

  else
  {
    v48 = 30;
  }

  v49 = *(v10 + 3424);
  if (v48 != v49)
  {
    v48 = filterSmallDeltaFPS(v49, v48);
  }

  *(v10 + 3424) = v48;
  memset(v149, 0, sizeof(v149));
  v150 = 0;
  v50 = *(v10 + 3336);
  LOBYTE(lhs.value) = 0;
  LOBYTE(rhs.value) = 0;
  if (CMBlockBufferCopyDataBytes(v25, v44 - 1, 1uLL, &lhs))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_82:
      v52 = -1;
      goto LABEL_83;
    }

    *buf = 136315138;
    *&buf[4] = "getLghrnDecoderSuperFrameOffsetInfo";
    v51 = MEMORY[0x277D86220];
LABEL_81:
    _os_log_impl(&dword_277606000, v51, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: ERROR, fail to copy data bytes", buf, 0xCu);
    goto LABEL_82;
  }

  if (!is_lgh_super_frame_mask(lhs.value))
  {
    __nitems = 0;
LABEL_95:
    v52 = 0;
    goto LABEL_96;
  }

  lgh_super_frame_index_size = get_lgh_super_frame_index_size(LOBYTE(lhs.value));
  __nitems = lgh_super_frame_index_size;
  if (v44 <= lgh_super_frame_index_size)
  {
    if (v50 != 6 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_95;
    }

    *buf = 136315650;
    *&buf[4] = "getLghrnDecoderSuperFrameOffsetInfo";
    *&buf[12] = 2048;
    *&buf[14] = v44;
    *&buf[22] = 1024;
    *&buf[24] = __nitems;
    v60 = MEMORY[0x277D86220];
    v61 = "AppleAVD: %s: buffer size %zu expect bigger than %d (two super frame header bytes plus total frame size bytes)\n";
    v62 = 28;
LABEL_110:
    _os_log_impl(&dword_277606000, v60, OS_LOG_TYPE_DEFAULT, v61, buf, v62);
    goto LABEL_95;
  }

  v54 = lgh_super_frame_index_size;
  v55 = v44 - lgh_super_frame_index_size;
  if (CMBlockBufferCopyDataBytes(v25, v55, 1uLL, &rhs))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_82;
    }

    *buf = 136315138;
    *&buf[4] = "getLghrnDecoderSuperFrameOffsetInfo";
    v51 = MEMORY[0x277D86220];
    goto LABEL_81;
  }

  v97 = v55;
  v98 = v54;
  value_low = LOBYTE(lhs.value);
  v100 = LOBYTE(rhs.value);
  if (LOBYTE(lhs.value) != LOBYTE(rhs.value))
  {
    if (v50 != 6 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_95;
    }

    *buf = 136315650;
    *&buf[4] = "getLghrnDecoderSuperFrameOffsetInfo";
    *&buf[12] = 1024;
    *&buf[14] = value_low;
    *&buf[18] = 1024;
    *&buf[20] = v100;
    v60 = MEMORY[0x277D86220];
    v61 = "AppleAVD: %s: inconsistent super frame header %x %x\n";
    v62 = 24;
    goto LABEL_110;
  }

  if (CMBlockBufferCopyDataBytes(v25, v97, v98, (v10 + 5576)))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_82;
    }

    *buf = 136315138;
    *&buf[4] = "getLghrnDecoderSuperFrameOffsetInfo";
    v51 = MEMORY[0x277D86220];
    goto LABEL_81;
  }

  v52 = is_lgh_super_frame_offset(v10 + 5576, DataLength, v149, LOBYTE(lhs.value), v50 != 6);
  if (v52 < 0)
  {
LABEL_83:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v52;
      v34 = MEMORY[0x277D86220];
      v35 = "AppleAVD: ERROR: %s(): Bad Bitstream, is_sf_frame = %d\n";
      v36 = 18;
      goto LABEL_85;
    }

    goto LABEL_86;
  }

LABEL_96:
  bzero(&v156, 0x888uLL);
  if (!*(v10 + 5508))
  {
    if (*(v10 + 5504))
    {
      v56 = 2;
LABEL_102:
      v159 = v56;
      goto LABEL_103;
    }

LABEL_101:
    v56 = 1;
    goto LABEL_102;
  }

  if ((a4 & 4) == 0)
  {
    goto LABEL_101;
  }

LABEL_103:
  v164 = v48;
  v162 = 0;
  v161 = 0;
  v166 = 0;
  v165 = 0;
  v167 = 0;
  v163 = 0;
  v168 = *v10;
  v169 = a2;
  v170 = 0;
  v171 = *(v10 + 5628);
  if (a4)
  {
    v160 = 0;
    if (v144)
    {
      v57 = 0;
      v59 = *v144 | 1;
      *v144 = v59;
      v58 = *(v10 + 3140);
      *(v10 + 8 * v58 + 48) = a2;
    }

    else
    {
      v59 = 0;
      v58 = *(v10 + 3140);
      *(v10 + 8 * v58 + 48) = a2;
      v57 = 1;
    }
  }

  else
  {
    v57 = 1;
    v160 = 1;
    v58 = *(v10 + 3140);
    *(v10 + 8 * v58 + 48) = a2;
    v59 = v144;
    if (v144)
    {
      v57 = 0;
      v59 = *v144;
    }
  }

  *(v10 + 2096 + 4 * v58) = v59;
  v147 = 0;
  v148 = 0;
  destination = 0;
  v146 = 0;
  if (!v52)
  {
    v146 = DataLength;
    LODWORD(v147) = *(v10 + 3140);
    v94 = AppleAVDGetParameter(*(v10 + 3120), 55, &destination);
    if (v94)
    {
      v95 = v94;
      v96 = v57;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
        *&buf[12] = 1024;
        *&buf[14] = v95;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): AppleAVDGetParameter [kAppleAVDGetCompressedPictureBuffer] failed with %d\n", buf, 0x12u);
      }

      kdebug_trace();
      v30 = -12911;
      VTDecoderSessionEmitDecodedFrame();
      v31 = v144;
      if (v96)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v101 = destination;
    if (CMBlockBufferCopyDataBytes(v25, 0, DataLength, destination))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING, fail to copy data bytes, nothing to decode", buf, 2u);
      }

      kdebug_trace();
      VTDecoderSessionEmitDecodedFrame();
      AppleAVDReleaseOneCPBWithFrameworkError(*(v10 + 3120), *(v10 + 3140));
      v102 = v144;
      if ((v57 & 1) == 0)
      {
LABEL_215:
        *v102 = 2;
      }

LABEL_216:
      v30 = -12911;
      goto LABEL_28;
    }

    v156 = v101;
    v157 = v146;
    v158 = *(v10 + 3140);
    lhs.value = DataLength;
    AppleAVDSetParameter(*(v10 + 3120), 38, &lhs);
    v106 = 0;
    *(v10 + 5480) = 0;
    v107 = *(v10 + 3336);
    if (v142 && v107 == 4 && BytePtr)
    {
      *(v10 + 5480) = v142;
      v108 = *BytePtr;
      *(v10 + 3428) = *BytePtr;
      *(v10 + 4452) = *(BytePtr + 1);
      if (v142 < 2)
      {
        v106 = 1;
      }

      else
      {
        v109 = BytePtr + 8;
        v110 = 1;
        v111 = 3432;
        do
        {
          v108 += *v109 + *(v109 - 1);
          v112 = (v10 + v111);
          *v112 = v108;
          v112[256] = v109[1];
          ++v110;
          v111 += 4;
          v109 += 2;
        }

        while (v142 != v110);
        if (v142 > 0x100)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = v142;
            *&buf[12] = 1024;
            *&buf[14] = 256;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_LghVideoDecoder ERROR: BAD encryptedSliceCount %ld MAX_SLICES %d", buf, 0x12u);
          }

          kdebug_trace();
          VTDecoderSessionEmitDecodedFrame();
          AppleAVDReleaseOneCPBWithFrameworkError(*(v10 + 3120), *(v10 + 3140));
          if ((v57 & 1) == 0)
          {
            *v144 = 2;
          }

          v30 = -12911;
          goto LABEL_252;
        }

        v106 = v142;
      }
    }

    v125 = *(v10 + 5536);
    if (v125)
    {
      WriteFrame(v125, v101, DataLength, DataLength, *(v10 + 3140));
      v106 = *(v10 + 5480);
      v107 = *(v10 + 3336);
    }

    if (v107 == 4)
    {
      if (v106 >= 257)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
          *&buf[12] = 2048;
          *&buf[14] = v106;
          *&buf[22] = 1024;
          *&buf[24] = 256;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): encryptedSliceCount (%ld) exceeds MAX_SLICES (%d)\n", buf, 0x1Cu);
        }

        kdebug_trace();
        VTDecoderSessionEmitDecodedFrame();
        AppleAVDReleaseOneCPBWithFrameworkError(*(v10 + 3120), *(v10 + 3140));
        if ((v57 & 1) == 0)
        {
          *v144 = 2;
        }

        goto LABEL_251;
      }

      if (HIDWORD(v106) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
        *&buf[12] = 1024;
        *&buf[14] = 2431;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v106 = *(v10 + 5480);
      }

      v163 = v106;
      __memcpy_chk();
      __memcpy_chk();
    }

    else
    {
      v163 = 0;
    }

    if (!AppleAVDDecodeFrame(*(v10 + 3120), &v156))
    {
      v128 = *(v10 + 5528);
      if (v128)
      {
        WriteFrame(v128, v101, DataLength, DataLength, *(v10 + 3140));
      }

      v30 = 0;
      ++*(v10 + 3140);
      goto LABEL_252;
    }

    kdebug_trace();
    VTDecoderSessionEmitDecodedFrame();
    AppleAVDReleaseOneCPBWithFrameworkError(*(v10 + 3120), *(v10 + 3140));
    if ((v57 & 1) == 0)
    {
      *v144 = 2;
    }

    v30 = v161;
    v126 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      if (v126)
      {
        goto LABEL_245;
      }

      goto LABEL_252;
    }

    if (v126)
    {
      v129 = *(v10 + 3140);
      *buf = 67109120;
      *&buf[4] = v129;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_LghVideoDecoder_DecodeFrame ERROR: framenum %d kVTVideoDecoderMalfunctionErr", buf, 8u);
    }

LABEL_251:
    v30 = -12911;
    goto LABEL_252;
  }

  v140 = v57;
  v67 = DataLength;
  if (!LODWORD(v149[0]))
  {
LABEL_150:
    v92 = *(v10 + 5536);
    if (v92)
    {
      fwrite((v10 + 5576), 1uLL, __nitems, v92);
    }

    v93 = *(v10 + 5528);
    if (v93)
    {
      fwrite((v10 + 5576), 1uLL, __nitems, v93);
    }

    goto LABEL_87;
  }

  v68 = 0;
  v69 = 0;
  v139 = 0;
  v70 = 0;
  v71 = (v10 + 4452);
  v138 = (v10 + 3428);
  while (1)
  {
    v72 = *(v149 + v68 + 1);
    destination = 0;
    v146 = v72;
    LODWORD(v147) = *(v10 + 3140);
    v73 = AppleAVDGetParameter(*(v10 + 3120), 55, &destination);
    if (v73)
    {
      v30 = v73;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
        *&buf[12] = 1024;
        *&buf[14] = v30;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): AppleAVDGetParameter [kAppleAVDGetCompressedPictureBuffer] failed with %d\n", buf, 0x12u);
      }

      kdebug_trace();
      VTDecoderSessionEmitDecodedFrame();
      v31 = v144;
      if ((v140 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    v74 = destination;
    if (CMBlockBufferCopyDataBytes(v25, *(&v149[2] + v68 + 1), *(v149 + v68 + 1), destination))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING, fail to copy data bytes, nothing to decode", buf, 2u);
      }

      goto LABEL_214;
    }

    v75 = *(v149 + v68 + 1);
    v156 = v74;
    v157 = v75;
    v158 = *(v10 + 3140);
    v76 = v158;
    *(v10 + 48 + 8 * v158) = a2;
    if (v140)
    {
      v77 = 0;
    }

    else
    {
      v77 = *v144;
    }

    *(v10 + 2096 + 4 * v76) = v77;
    if (v68 == LODWORD(v149[0]) - 1)
    {
      v78 = 2;
    }

    else
    {
      v78 = 1;
    }

    v148 = __PAIR64__(v78, v67);
    AppleAVDSetParameter(*(v10 + 3120), 38, &v148);
    v79 = 0;
    *(v10 + 5480) = 0;
    v80 = *(v10 + 3336);
    if (v142 && v80 == 4 && BytePtr)
    {
      v81 = *(v149 + v68 + 1) + v139;
      v82 = &BytePtr[8 * v70];
      v83 = *v82;
      *v138 = *v82;
      v84 = *(v82 + 1);
      *v71 = v84;
      v69 += *v82 + v84;
      v85 = (v70 + 1);
      v139 = v81;
      if (v142 <= v85)
      {
        *(v10 + 5480) = 1;
        LODWORD(v79) = 1;
        ++v70;
LABEL_138:
        v163 = v79;
        __memcpy_chk();
        __memcpy_chk();
        goto LABEL_140;
      }

      v86 = 1;
      do
      {
        v87 = &BytePtr[8 * v85];
        if (*v87 + v69 + *(v87 + 1) > v81)
        {
          break;
        }

        v83 += *v87 + *&BytePtr[8 * v70 + 4];
        v138[v86] = v83;
        v88 = *(v87 + 1);
        v71[v86] = v88;
        v69 += *v87 + v88;
        ++v86;
        v85 = (v70 + 2);
        ++v70;
      }

      while (v142 > v85);
      ++v70;
      v79 = v86;
      *(v10 + 5480) = v86;
      if (v86 - 257 <= 0xFFFFFEFF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v79;
          *&buf[12] = 1024;
          *&buf[14] = 256;
          v113 = MEMORY[0x277D86220];
          v114 = "AppleAVD: AppleAVD_LghVideoDecoder ERROR: BAD encryptedSliceCount %ld MAX_SLICES %d";
          v115 = 18;
LABEL_213:
          _os_log_impl(&dword_277606000, v113, OS_LOG_TYPE_DEFAULT, v114, buf, v115);
        }

LABEL_214:
        kdebug_trace();
        VTDecoderSessionEmitDecodedFrame();
        AppleAVDReleaseOneCPBWithFrameworkError(*(v10 + 3120), *(v10 + 3140));
        v102 = v144;
        if (v140)
        {
          goto LABEL_216;
        }

        goto LABEL_215;
      }
    }

    if (v80 == 4)
    {
      if (v79 >= 0x101)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_214;
        }

        *buf = 136315650;
        *&buf[4] = "AppleAVDWrapperLghrnDecoderDecodeFrame";
        *&buf[12] = 2048;
        *&buf[14] = v79;
        *&buf[22] = 1024;
        *&buf[24] = 256;
        v113 = MEMORY[0x277D86220];
        v114 = "AppleAVD: ERROR: %s(): encryptedSliceCount (%ld) exceeds MAX_SLICES (%d)\n";
        v115 = 28;
        goto LABEL_213;
      }

      goto LABEL_138;
    }

    v163 = 0;
LABEL_140:
    v89 = *(v10 + 5536);
    v67 = DataLength;
    if (v89)
    {
      if (v68)
      {
        fwrite(v74, 1uLL, *(v149 + v68 + 1), v89);
      }

      else
      {
        WriteFrame(*(v10 + 5536), v74, DataLength, DWORD1(v149[0]), *(v10 + 3140));
      }
    }

    if (AppleAVDDecodeFrame(*(v10 + 3120), &v156))
    {
      break;
    }

    v90 = *(v10 + 3140) + 1;
    *(v10 + 3140) = v90;
    v91 = *(v10 + 5528);
    if (v91)
    {
      if (v68)
      {
        fwrite(v74, 1uLL, *(v149 + v68 + 1), v91);
      }

      else
      {
        WriteFrame(*(v10 + 5528), v74, DataLength, DWORD1(v149[0]), v90);
      }
    }

    if (++v68 >= LODWORD(v149[0]))
    {
      goto LABEL_150;
    }
  }

  kdebug_trace();
  VTDecoderSessionEmitDecodedFrame();
  AppleAVDReleaseOneCPBWithFrameworkError(*(v10 + 3120), *(v10 + 3140));
  if ((v140 & 1) == 0)
  {
    *v144 = 2;
  }

  v30 = v161;
  v103 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!v30)
  {
    if (v103)
    {
      v116 = *(v10 + 3140);
      *buf = 67109120;
      *&buf[4] = v116;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_LghVideoDecoder_DecodeFrame ERROR: framenum %d kVTVideoDecoderMalfunctionErr", buf, 8u);
    }

    goto LABEL_216;
  }

  if (!v103)
  {
    goto LABEL_28;
  }

LABEL_245:
  v127 = *(v10 + 3140);
  *buf = 67109376;
  *&buf[4] = v127;
  *&buf[8] = 1024;
  *&buf[10] = v30;
  _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_LghVideoDecoder_DecodeFrame ERROR: framenum %d decryptError %x", buf, 0xEu);
  v30 = v161;
LABEL_252:
  if (v30)
  {
    goto LABEL_28;
  }

LABEL_87:
  pthread_mutex_unlock((v10 + 3168));
  kdebug_trace();
  return 0;
}

uint64_t AppleAVDWrapperLghrnDecoderCopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  pthread_once(&sCreateSupportedPropertyDictionaryOnce_2, Lghrn_createSupportedPropertyDictionary);
  result = 4294954392;
  if (a2)
  {
    if (sLghrnVideoDecoderSupportedPropertyDictionary)
    {
      v4 = CFRetain(sLghrnVideoDecoderSupportedPropertyDictionary);
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

size_t WriteIVFHeader_0(FILE *__stream, __int16 a2, __int16 a3)
{
  __ptr = 1179208516;
  v10[3] = 0;
  strcpy(v10, "vp90 ");
  v9 = a2;
  v8 = a3;
  v7 = 90000;
  v6 = 1;
  v5 = 26999942;
  fwrite(&__ptr, 1uLL, 4uLL, __stream);
  fwrite(&v10[3], 1uLL, 2uLL, __stream);
  fwrite(&v10[2], 1uLL, 2uLL, __stream);
  fwrite(v10, 1uLL, 4uLL, __stream);
  fwrite(&v9, 1uLL, 2uLL, __stream);
  fwrite(&v8, 1uLL, 2uLL, __stream);
  fwrite(&v7, 1uLL, 4uLL, __stream);
  fwrite(&v6, 1uLL, 4uLL, __stream);
  fwrite(&v5, 1uLL, 4uLL, __stream);
  return fwrite(&v10[3], 1uLL, 4uLL, __stream);
}

uint64_t InitPixelBufferCompressionNotSupported_2(uint64_t a1)
{
  result = InitDisplayPixelBufferCompressionNotSupported(*a1, *(a1 + 3120), *(a1 + 3160), *(a1 + 3144), *(a1 + 3148), *(a1 + 3152), *(a1 + 3156), *(a1 + 3265), *(a1 + 3264), *(a1 + 3321), *(a1 + 5488), (a1 + 16), (a1 + 32), 0, 0);
  if (!result)
  {
    return InitReferencePixelBufferCompressionNotSupported(*a1, *(a1 + 3120), *(a1 + 3160), *(a1 + 3144), *(a1 + 3148), *(a1 + 3152), *(a1 + 3156), *(a1 + 3265), *(a1 + 3264), *(a1 + 3321), *(a1 + 5488), 0, 8, 0, 0, 0, (a1 + 24), (a1 + 40));
  }

  return result;
}

CFDictionaryRef Lghrn_createFrameTypesArrayElement(const void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CE2698];
  v4 = a1;
  keys = v1;
  v2 = CFDictionaryCreate(*MEMORY[0x277CBECE8], &keys, &v4, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "Lghrn_createFrameTypesArrayElement";
    v8 = 2080;
    v9 = "frameTypeDict";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %s\n", buf, 0x16u);
  }

  return v2;
}

uint64_t createPixelFormatListRef(uint64_t result, int a2, int a3, int *a4, _DWORD *a5, int a6, int a7, int a8)
{
  *a5 = 1;
  v8 = 875704438;
  *a4 = 875704438;
  if (a6)
  {
    if (result)
    {
      if (a2 <= 1)
      {
        if (!a2)
        {
          if (result >= 3)
          {
            v8 = 1278226742;
          }

          else
          {
            v8 = 1278226736;
          }

          if (result >= 3)
          {
            v10 = 642527542;
          }

          else
          {
            v10 = 642527536;
          }

          goto LABEL_78;
        }

        if (a2 != 1)
        {
          return result;
        }

        v9 = a3 == 0;
        if (a3)
        {
          v8 = 1534617136;
        }

        else
        {
          v8 = 1534621232;
        }

        v10 = 645424688;
        v11 = 645428784;
LABEL_76:
        if (v9)
        {
          v10 = v11;
        }

LABEL_78:
        if (a7 >= 20)
        {
          v8 = v10;
        }

        goto LABEL_84;
      }

      if (a2 == 2)
      {
        if (a3)
        {
          v8 = 1534617138;
        }

        else
        {
          v8 = 1534621234;
        }

        v10 = 645424690;
        v9 = a3 == 0;
        v11 = 645428786;
        goto LABEL_76;
      }

      if (a2 != 3)
      {
        return result;
      }

      if (a3)
      {
        v8 = 1534617140;
      }

      else
      {
        v8 = 1534621236;
      }

      v10 = 645424692;
      v14 = 645428786;
    }

    else
    {
      if (a2 <= 1)
      {
        if (!a2)
        {
          if (a7 <= 19)
          {
            v8 = 1278226488;
          }

          else
          {
            v8 = 642527288;
          }

          goto LABEL_84;
        }

        if (a2 != 1)
        {
          return result;
        }

        if (a3)
        {
          v8 = 1530422832;
        }

        else
        {
          v8 = 1530426928;
        }

        if (a3)
        {
          v10 = 641230384;
        }

        else
        {
          v10 = 641234480;
        }

        if (a3)
        {
          v13 = 590898736;
        }

        else
        {
          v13 = 590902832;
        }

        if (a8)
        {
          v10 = v13;
        }

        goto LABEL_78;
      }

      if (a2 == 2)
      {
        if (a3)
        {
          v8 = 1530422834;
        }

        else
        {
          v8 = 1530426930;
        }

        v10 = 641230386;
        v9 = a3 == 0;
        v11 = 641234482;
        goto LABEL_76;
      }

      if (a2 != 3)
      {
        return result;
      }

      if (a3)
      {
        v8 = 1530422836;
      }

      else
      {
        v8 = 1530426932;
      }

      v10 = 641230388;
      v14 = 641234482;
    }

    v11 = v14 + 2;
    v9 = a3 == 0;
    goto LABEL_76;
  }

  if (result)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v8 = 1882468914;
        v15 = a3 == 0;
        v12 = 1885745714;
        goto LABEL_82;
      }

      if (a2 != 3)
      {
        return result;
      }

      v8 = 1882469428;
      v12 = 1885746228;
    }

    else
    {
      if (!a2)
      {
        if (result >= 3)
        {
          v8 = 1278226742;
        }

        else
        {
          v8 = 1278226736;
        }

        goto LABEL_84;
      }

      if (a2 != 1)
      {
        return result;
      }

      v8 = 1882468912;
      v12 = 1885745712;
    }

LABEL_81:
    v15 = a3 == 0;
LABEL_82:
    if (!v15)
    {
      v8 = v12;
    }

    goto LABEL_84;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v12 = 875704934;
      v8 = 875704950;
      goto LABEL_81;
    }

    if (a2 != 3)
    {
      return result;
    }

    if (a3)
    {
      v8 = 875836518;
    }

    else
    {
      v8 = 875836534;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v12 = 875704422;
      goto LABEL_81;
    }

    v8 = 1278226488;
  }

LABEL_84:
  *a4 = v8;
  return result;
}

void setIntValue(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t CreateCompressedPixelBufferAttributesDictionary(int a1, int a2, int a3, int a4, int a5, char *a6, int a7, unint64_t a8, __CFDictionary **a9, int a10, int a11, int a12, int a13, int a14)
{
  v52 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v23 = 0;
    goto LABEL_17;
  }

  v23 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v23)
  {
    goto LABEL_17;
  }

  v46 = a5;
  if (a7 < 1)
  {
LABEL_7:
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E30], v23);
    CFRelease(v23);
    v23 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v23)
    {
      goto LABEL_17;
    }

    v27 = MEMORY[0x277CBED28];
    v28 = v46;
    if (a8)
    {
      v29 = *MEMORY[0x277CD2B70];
      if (HIDWORD(a8) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v49 = "CreateCompressedPixelBufferAttributesDictionary";
        v50 = 1024;
        v51 = 912;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
      }

      setIntValue(v23, v29, a8);
      CFDictionaryAddValue(v23, *MEMORY[0x277CD29F8], *v27);
    }

    valuePtr = 0;
    if (a1 < 20)
    {
      v45 = a4;
      if (a1 < 14)
      {
        valuePtr = 128;
        v35 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
        v36 = MEMORY[0x277CC4D88];
      }

      else
      {
        valuePtr = 4;
        v33 = *MEMORY[0x277CBECE8];
        v34 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D88], v34);
        if (v34)
        {
          CFRelease(v34);
        }

        *buf = 256;
        v35 = CFNumberCreate(v33, kCFNumberIntType, buf);
        v36 = MEMORY[0x277CC4D80];
      }

      CFDictionarySetValue(Mutable, *v36, v35);
      if (v35)
      {
        CFRelease(v35);
      }

      v37 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      v38 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v39 = *MEMORY[0x277CD2B28];
      setIntValue(v38, *MEMORY[0x277CD2B28], a11);
      v40 = *MEMORY[0x277CD2B48];
      setIntValue(v38, *MEMORY[0x277CD2B48], a12);
      v41 = *MEMORY[0x277CD2B10];
      addNumberToDictionary(v38, *MEMORY[0x277CD2B10], 3);
      CFArrayAppendValue(v37, v38);
      if (v38)
      {
        CFRelease(v38);
      }

      v42 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      setIntValue(v42, v39, a13);
      setIntValue(v42, v40, a14);
      addNumberToDictionary(v42, v41, 3);
      CFArrayAppendValue(v37, v42);
      if (v42)
      {
        CFRelease(v42);
      }

      CFDictionaryAddValue(v23, *MEMORY[0x277CC4F70], v37);
      a4 = v45;
      v28 = v46;
      if (!v37)
      {
        goto LABEL_37;
      }

      v31 = v37;
    }

    else
    {
      *buf = 128;
      v30 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, buf);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D80], v30);
      if (!v30)
      {
LABEL_37:
        CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v23);
        addNumberToDictionary(Mutable, *MEMORY[0x277CC4D60], 64);
        addNumberToDictionary(Mutable, *MEMORY[0x277CC4EC8], a2);
        addNumberToDictionary(Mutable, *MEMORY[0x277CC4DD8], a3);
        addNumberToDictionary(Mutable, *MEMORY[0x277CC4E38], 256);
        if (v28 >= a3)
        {
          v43 = v28 - a3;
        }

        else
        {
          v43 = 0;
        }

        if (a4 > a2)
        {
          addNumberToDictionary(Mutable, *MEMORY[0x277CC4DB8], a4 - a2);
        }

        if (v43)
        {
          addNumberToDictionary(Mutable, *MEMORY[0x277CC4DA0], v43);
        }

        if (a1 >= 26)
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E60], *MEMORY[0x277CBED28]);
        }

        v32 = 0;
        *a9 = Mutable;
LABEL_47:
        CFRelease(v23);
        return v32;
      }

      v31 = v30;
    }

    CFRelease(v31);
    goto LABEL_37;
  }

  v24 = a7;
  while (1)
  {
    v25 = CFNumberCreate(0, kCFNumberSInt32Type, a6);
    if (!v25)
    {
      break;
    }

    v26 = v25;
    CFArrayAppendValue(v23, v25);
    CFRelease(v26);
    a6 += 4;
    if (!--v24)
    {
      goto LABEL_7;
    }
  }

LABEL_17:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v49 = "CreateCompressedPixelBufferAttributesDictionary";
    v50 = 1024;
    v51 = -12904;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v32 = 4294954392;
  if (v23)
  {
    goto LABEL_47;
  }

  return v32;
}

uint64_t CreatePixelBufferAttributesDictionary(int a1, int a2, int a3, int a4, int a5, _DWORD *a6, int a7, unint64_t a8, __CFDictionary **a9, char a10)
{
  v50 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v19 = 0;
    goto LABEL_25;
  }

  v19 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v19)
  {
    goto LABEL_25;
  }

  v43 = a4;
  v44 = a5;
  v45 = a2;
  v20 = 64;
  if (a7 < 1)
  {
LABEL_9:
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E30], v19);
    CFRelease(v19);
    v19 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v19)
    {
      goto LABEL_25;
    }

    v24 = MEMORY[0x277CBED28];
    if (a8)
    {
      v25 = MEMORY[0x277CBED28];
      v26 = *MEMORY[0x277CD2B70];
      if (HIDWORD(a8) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v47 = "CreatePixelBufferAttributesDictionary";
        v48 = 1024;
        v49 = 1406;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
      }

      setIntValue(v19, v26, a8);
      v24 = v25;
      CFDictionaryAddValue(v19, *MEMORY[0x277CD29F8], *v25);
    }

    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v19);
    addNumberToDictionary(Mutable, *MEMORY[0x277CC4D60], v20);
    addNumberToDictionary(Mutable, *MEMORY[0x277CC4EC8], v45);
    addNumberToDictionary(Mutable, *MEMORY[0x277CC4DD8], a3);
    addNumberToDictionary(Mutable, *MEMORY[0x277CC4E38], 256);
    if (a10)
    {
      v27 = a1;
      if (a1 < 20)
      {
        v37 = v43 + 15;
        if (v43 < -15)
        {
          v37 = v43 + 30;
        }

        v29 = (v37 & 0xFFFFFFF0) + 16;
        v38 = v44 + 7;
        if (v44 < -7)
        {
          v38 = v44 + 14;
        }

        v31 = (v38 & 0xFFFFFFF8) + 8;
        v39 = v44 / 2 + 14;
        if (v44 / 2 >= -7)
        {
          v39 = v44 / 2 + 7;
        }

        v33 = ((2 * v39) & 0xFFFFFFF0) + 16;
      }

      else
      {
        v28 = v43 + 31;
        if (v43 < -31)
        {
          v28 = v43 + 62;
        }

        v29 = v28 & 0xFFFFFFE0;
        v30 = v44 + 31;
        if (v44 < -31)
        {
          v30 = v44 + 62;
        }

        v31 = v30 & 0xFFFFFFE0;
        v32 = v44 / 2 + 30;
        if (v44 / 2 >= -15)
        {
          v32 = v44 / 2 + 15;
        }

        v33 = (2 * v32) & 0xFFFFFFE0;
      }

      if (v31 <= v33)
      {
        v31 = v33;
      }

      v40 = __OFSUB__(v31, a3);
      v41 = v31 - a3;
      if ((v41 < 0) ^ v40 | (v41 == 0))
      {
        v36 = 0;
      }

      else
      {
        v36 = v41;
      }

      v35 = v29 - v45;
      if (v29 <= v45)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v43 >= v45)
      {
        v35 = v43 - v45;
      }

      else
      {
        v35 = -v45 & 0xF;
      }

      v36 = v44 - a3;
      v27 = a1;
      if (v44 < a3)
      {
        v36 = -a3 & 0xF;
      }
    }

    if (v35)
    {
      addNumberToDictionary(Mutable, *MEMORY[0x277CC4DB8], v35);
    }

LABEL_51:
    if (v36)
    {
      addNumberToDictionary(Mutable, *MEMORY[0x277CC4DA0], v36);
    }

    if (v27 >= 26)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E60], *v24);
    }

    v34 = 0;
    *a9 = Mutable;
LABEL_56:
    CFRelease(v19);
    return v34;
  }

  v21 = a7;
  while (1)
  {
    if ((*a6 | 0x10) == 0x34343476)
    {
      v20 = 128;
    }

    v22 = CFNumberCreate(0, kCFNumberSInt32Type, a6);
    if (!v22)
    {
      break;
    }

    v23 = v22;
    CFArrayAppendValue(v19, v22);
    CFRelease(v23);
    ++a6;
    if (!--v21)
    {
      goto LABEL_9;
    }
  }

LABEL_25:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v47 = "CreatePixelBufferAttributesDictionary";
    v48 = 1024;
    v49 = -12904;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v34 = 4294954392;
  if (v19)
  {
    goto LABEL_56;
  }

  return v34;
}

uint64_t InitDisplayPixelBufferCompressionNotSupported(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, unint64_t a11, CFTypeRef *a12, CFTypeRef *a13, char a14, int a15)
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = 1;
  if (*a13)
  {
    CFRelease(*a13);
    *a13 = 0;
  }

  createPixelFormatList(a8, a9, a10, 1, v34, &v29, 0, a3, a14, a15, 0, 0);
  DispPixelBufferAttributesDictionary = CreateDispPixelBufferAttributesDictionary(a3, a4, a5, a6, a7, v34, v29, a11, a13);
  if (!DispPixelBufferAttributesDictionary)
  {
    if (*a12)
    {
      CFRelease(*a12);
      *a12 = 0;
    }

    VTDecoderSessionSetPixelBufferAttributes();
    *a12 = 0;
    v23 = AppleAVDSetParameter(a2, 73, *a13);
    if (v23)
    {
      v24 = v23;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 4294954385;
      }
    }

    else
    {
      result = AppleAVDSetParameter(a2, 4, *a12);
      if (!result)
      {
        return result;
      }

      v24 = result;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 4294954385;
      }
    }

    *buf = 136315394;
    v31 = "InitDisplayPixelBufferCompressionNotSupported";
    v32 = 1024;
    v33 = v24;
    v21 = MEMORY[0x277D86220];
    v22 = "AppleAVD: %s(): Failed to set parameter! ERROR! Status: 0x%x";
    goto LABEL_14;
  }

  v20 = DispPixelBufferAttributesDictionary;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "InitDisplayPixelBufferCompressionNotSupported";
    v32 = 1024;
    v33 = v20;
    v21 = MEMORY[0x277D86220];
    v22 = "AppleAVD: %s(): Failed to create display pixel buffer attributes dictionary! ERROR! Status: 0x%x";
LABEL_14:
    _os_log_impl(&dword_277606000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0x12u);
  }

  return 4294954385;
}

uint64_t InitReferencePixelBufferCompressionNotSupported(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, unint64_t a11, int a12, int a13, int a14, int a15, int a16, CFTypeRef *a17, CFTypeRef *a18)
{
  v49 = *MEMORY[0x277D85DE8];
  valuePtr = 6;
  v43 = 1;
  if (*a18)
  {
    CFRelease(*a18);
    *a18 = 0;
  }

  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if ((a12 == 1 || a9 == 0) && a3 < 20 || DescriptionWithPixelFormatType == 0)
  {
    createPixelFormatListRef(a8, a9, a10, v48, &v43, 0, a3, 0);
    UncompressedPixelBufferAttributesDictionary = CreateUncompressedPixelBufferAttributesDictionary(a3, a4, a5, a6, a7, v48, v43, a11, a18);
  }

  else
  {
    createPixelFormatListRef(a8, a9, a10, v48, &v43, 1, a3, a12 == 1);
    UncompressedPixelBufferAttributesDictionary = CreateCompressedPixelBufferAttributesDictionary(a3, a4, a5, a6, a7, v48, v43, a11, a18, v39, a13, a14, a15, a16);
  }

  v28 = UncompressedPixelBufferAttributesDictionary;
  if (UncompressedPixelBufferAttributesDictionary)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v45 = "InitReferencePixelBufferCompressionNotSupported";
      v46 = 1024;
      v47 = v28;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Failed to create reference pixel buffer attributes dictionary! ERROR! Status: 0x%x", buf, 0x12u);
    }

    return 4294954385;
  }

  v30 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v32 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E50], v32);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E58], @"AVD video decoder - references");
  if (*a17)
  {
    CFRelease(*a17);
    *a17 = 0;
  }

  v33 = CVPixelBufferPoolCreate(v30, Mutable, *a18, a17);
  if (v33 || !*a17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v45 = "InitReferencePixelBufferCompressionNotSupported";
      v46 = 1024;
      v47 = v33;
      v34 = MEMORY[0x277D86220];
      v35 = "AppleAVD: %s(): Failed to Create Pixel Buffer Pool! ERROR! CVReturnStatus: 0x%x";
LABEL_24:
      _os_log_impl(&dword_277606000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0x12u);
    }
  }

  else
  {
    v37 = AppleAVDSetParameter(a2, 72, *a18);
    if (v37)
    {
      v38 = v37;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 136315394;
      v45 = "InitReferencePixelBufferCompressionNotSupported";
      v46 = 1024;
      v47 = v38;
      v34 = MEMORY[0x277D86220];
      v35 = "AppleAVD: %s(): Failed to set parameter! ERROR! Status: 0x%x";
      goto LABEL_24;
    }

    v29 = AppleAVDSetParameter(a2, 3, *a17);
    if (!v29)
    {
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v45 = "InitReferencePixelBufferCompressionNotSupported";
      v46 = 1024;
      v47 = v29;
      v34 = MEMORY[0x277D86220];
      v35 = "AppleAVD: %s(): Failed to set parameter! ERROR! Status: 0x%x";
      goto LABEL_24;
    }
  }

LABEL_25:
  v29 = 4294954385;
LABEL_26:
  if (v32)
  {
    CFRelease(v32);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v29;
}

uint64_t InitPixelBufferCompressionSupported(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, unint64_t a11, int a12, int a13, int a14, int a15, CFTypeRef *a16, CFTypeRef *a17, char a18, int a19, char a20, char a21)
{
  v21 = a3;
  v22 = a17;
  v24 = a14;
  v23 = a15;
  v48 = *MEMORY[0x277D85DE8];
  v42 = 1;
  if (*a17)
  {
    v26 = a8;
    CFRelease(*a17);
    a8 = v26;
    v23 = a15;
    v24 = a14;
    v21 = a3;
    v22 = a17;
    *a17 = 0;
  }

  createPixelFormatList(a8, a9, a10, 1, v47, &v42, 1, v21, a18, a19, a20, a21);
  CompressedPixelBufferAttributesDictionary = CreateCompressedPixelBufferAttributesDictionary(v21, a4, a5, a6, a7, v47, v42, a11, v22, v36, a12, a13, v24, v23);
  if (CompressedPixelBufferAttributesDictionary)
  {
    v28 = CompressedPixelBufferAttributesDictionary;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 4294954385;
    }

    *buf = 136315394;
    v44 = "InitPixelBufferCompressionSupported";
    v45 = 1024;
    v46 = v28;
    v29 = MEMORY[0x277D86220];
    v30 = "AppleAVD: %s(): Failed to create compressed pixel buffer attributes dictionary! ERROR! Status: 0x%x";
    goto LABEL_6;
  }

  if (*a16)
  {
    CFRelease(*a16);
    *a16 = 0;
  }

  VTDecoderSessionSetPixelBufferAttributes();
  PixelBufferPool = VTDecoderSessionGetPixelBufferPool();
  *a16 = PixelBufferPool;
  if (!PixelBufferPool)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 4294954385;
    }

    *buf = 136315138;
    v44 = "InitPixelBufferCompressionSupported";
    v29 = MEMORY[0x277D86220];
    v30 = "AppleAVD: %s(): VT Failed to get Pixel Buffer Pool! ERROR!";
    v31 = 12;
    goto LABEL_7;
  }

  CFRetain(PixelBufferPool);
  v34 = AppleAVDSetParameter(a2, 72, *v22);
  if (v34)
  {
    v35 = v34;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 4294954385;
    }

    goto LABEL_15;
  }

  result = AppleAVDSetParameter(a2, 3, 0);
  if (result)
  {
    v35 = result;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 4294954385;
    }

LABEL_15:
    *buf = 136315394;
    v44 = "InitPixelBufferCompressionSupported";
    v45 = 1024;
    v46 = v35;
    v29 = MEMORY[0x277D86220];
    v30 = "AppleAVD: %s(): Failed to set parameter! ERROR! Status: 0x%x";
LABEL_6:
    v31 = 18;
LABEL_7:
    _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, v31);
    return 4294954385;
  }

  return result;
}

BOOL check_cropping(unsigned int a1, unsigned int a2)
{
  if (a1 <= 0xC0)
  {
    v2 = 192;
  }

  else
  {
    v2 = a1;
  }

  v3 = (v2 + 15) & 0xFFFFFFF0;
  if (a2 <= 0x60)
  {
    v4 = 96;
  }

  else
  {
    v4 = a2;
  }

  v5 = v3 + 31;
  v6 = (v3 + 31) >> 5;
  v7 = ((v4 + 15) & 0xFFFFFFF0) + 31;
  if (v5 < 0x40)
  {
    v9 = 0;
  }

  else
  {
    v8 = v6 - 1;
    v9 = 1;
    if (v6 != 2)
    {
      do
      {
        ++v9;
        v10 = v8 > 3;
        v8 >>= 1;
      }

      while (v10);
    }
  }

  v11 = a2 & 0xFFFFFFFE;
  v12 = v7 >> 5;
  if (v7 < 0x40)
  {
    v14 = 0;
  }

  else
  {
    v13 = v12 - 1;
    v14 = 1;
    if (v12 != 2)
    {
      do
      {
        ++v14;
        v10 = v13 > 3;
        v13 >>= 1;
      }

      while (v10);
    }
  }

  v15 = (a1 & 0xFFFFFFFE) + 31;
  v16 = v11 + 31;
  v17 = (v11 + 31) >> 5;
  v18 = (v15 >> 5) - 1;
  if (v15 < 0x40)
  {
    v19 = 0;
  }

  else
  {
    v19 = 1;
    if (v15 >> 5 != 2)
    {
      v20 = (v15 >> 5) - 1;
      do
      {
        ++v19;
        v10 = v20 > 3;
        v20 >>= 1;
      }

      while (v10);
    }
  }

  v21 = v17 - 1;
  if (v16 < 0x40)
  {
    v22 = 0;
  }

  else
  {
    v22 = 1;
    if (v17 != 2)
    {
      v23 = v17 - 1;
      do
      {
        ++v22;
        v10 = v23 > 3;
        v23 >>= 1;
      }

      while (v10);
    }
  }

  if (v9 >= v14)
  {
    v9 = v14;
  }

  v24 = vdupq_n_s32(v18);
  v25 = vdupq_n_s32(v21);
  if (v9)
  {
    v26 = (v9 + 3) & 0xFFFFFFFC;
    v27 = vdupq_n_s32(v9 - 1);
    v28 = xmmword_27775DC50;
    v29 = 0uLL;
    v30.i64[0] = 0x100000001;
    v30.i64[1] = 0x100000001;
    v31.i64[0] = 0x400000004;
    v31.i64[1] = 0x400000004;
    do
    {
      v32 = v29;
      v33 = v28;
      v34 = vnegq_s32(v28);
      v35 = vaddq_s32(v33, v33);
      v29 = vorrq_s8(vorrq_s8(vshlq_u32(vandq_s8(vshlq_u32(v24, v34), v30), v35), vshlq_u32(vandq_s8(vshlq_u32(v25, v34), v30), (*&v35 | __PAIR128__(0x100000001, 0x100000001)))), v32);
      v28 = vaddq_s32(v28, v31);
      v26 -= 4;
    }

    while (v26);
    v36 = vbslq_s8(vcgtq_u32(v33, v27), v32, v29);
    *v36.i8 = vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
    v37 = v36.i32[0] | v36.i32[1];
  }

  else
  {
    v37 = 0;
  }

  if (v19 >= v22)
  {
    v19 = v22;
  }

  if (v19)
  {
    v38 = (v19 + 3) & 0xFFFFFFFC;
    v39 = vdupq_n_s32(v19 - 1);
    v40 = xmmword_27775DC50;
    v41 = 0uLL;
    v42.i64[0] = 0x100000001;
    v42.i64[1] = 0x100000001;
    v43.i64[0] = 0x400000004;
    v43.i64[1] = 0x400000004;
    do
    {
      v44 = v41;
      v45 = v40;
      v46 = vnegq_s32(v40);
      v47 = vaddq_s32(v45, v45);
      v41 = vorrq_s8(vorrq_s8(vshlq_u32(vandq_s8(vshlq_u32(v24, v46), v42), v47), vshlq_u32(vandq_s8(vshlq_u32(v25, v46), v42), (*&v47 | __PAIR128__(0x100000001, 0x100000001)))), v44);
      v40 = vaddq_s32(v40, v43);
      v38 -= 4;
    }

    while (v38);
    v48 = vbslq_s8(vcgtq_u32(v45, v39), v44, v41);
    *v48.i8 = vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
    v49 = v48.i32[0] | v48.i32[1];
  }

  else
  {
    v49 = 0;
  }

  return v12 * (v6 << 10) + (32 * (v37 | ((v21 | v18) >> v9 << (2 * v9)))) != (v6 << 10) * v17 + (32 * (v49 | ((v21 | v18) >> v19 << (2 * v19))));
}

BOOL isEligibleToUseCompression(int a1, signed int a2, signed int a3, signed int a4, signed int a5, int a6, int a7)
{
  v25 = *MEMORY[0x277D85DE8];
  v14 = MGGetBoolAnswer();
  if (a6 != -1 && v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315394;
      *v21 = "isEligibleToUseCompression";
      *&v21[8] = 1024;
      *v22 = a6;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: INFO: %s internal build, useCompression %d", &v20, 0x12u);
    }

    if (!a6)
    {
      return 0;
    }

    if (a6 == 1)
    {
      return 1;
    }
  }

  if (!a7)
  {
    if (a1 >= 20)
    {
      if (a2 < 130 || a3 < 66 || (v19 = check_cropping(a2, a3), a5 < a3) || a4 < a2 || v19 || a4 - a2 > 15 || a5 - a3 >= 16)
      {
        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v20 = 67109888;
        *v21 = a2;
        *&v21[4] = 1024;
        *&v21[6] = a3;
        *v22 = 1024;
        *&v22[2] = a4;
        v23 = 1024;
        v24 = a5;
        v16 = MEMORY[0x277D86220];
        v17 = "AppleAVD: INFO: padding ineligible for compression w x h = %d %d, cw x cw = %d %d";
        v18 = 26;
        goto LABEL_21;
      }
    }

    return 1;
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!result)
  {
    return result;
  }

  LOWORD(v20) = 0;
  v16 = MEMORY[0x277D86220];
  v17 = "AppleAVD: INFO: Paravirtualized sessions - ineligible for compressed output!";
  v18 = 2;
LABEL_21:
  _os_log_impl(&dword_277606000, v16, OS_LOG_TYPE_DEFAULT, v17, &v20, v18);
  return 0;
}

uint64_t isEligibleToUseSharedDestPixelBuffer(int a1, int a2, int a3)
{
  if (!a1 && a2)
  {
    return 0;
  }

  if (a1 != 2)
  {
    return 1;
  }

  result = 0;
  if (a2 == 1 && !a3)
  {
    return 1;
  }

  return result;
}

uint64_t filterSmallDeltaFPS(int a1, int a2)
{
  v2 = a1 * 0.15 + 0.5;
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (v2 + a1 >= a2 && a1 - v2 <= a2)
  {
    return v3;
  }

  else
  {
    return a2;
  }
}

uint64_t GetIOSurfaceTypeFromSessionPixelBufferAttributes(uint64_t a1, _DWORD *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  value = 0;
  theDict = 0;
  valuePtr = 0;
  *a2 = 0;
  v3 = VTDecoderSessionCopyResolvedPixelBufferAttributes();
  if (v3)
  {
    v4 = v3;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 136315394;
    v18 = "GetIOSurfaceTypeFromSessionPixelBufferAttributes";
    v19 = 1024;
    LODWORD(v20) = v4;
    v5 = MEMORY[0x277D86220];
    v6 = "AppleAVD: ERROR: %s(): VTDecoderSessionCopyResolvedPixelBufferAttributes failed with %d\n";
    v7 = 18;
    goto LABEL_21;
  }

  if (!CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CC4E30], &value))
  {
    v4 = 3758097136;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 136315138;
    v18 = "GetIOSurfaceTypeFromSessionPixelBufferAttributes";
    v5 = MEMORY[0x277D86220];
    v6 = "AppleAVD: ERROR: %s(): kCVPixelBufferPixelFormatTypeKey was not present in retrieved dictionary\n";
    goto LABEL_20;
  }

  v8 = CFGetTypeID(value);
  if (v8 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(value);
    if (Count >= 2)
    {
      v10 = Count;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "GetIOSurfaceTypeFromSessionPixelBufferAttributes";
        v19 = 2048;
        v20 = v10;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s(): Pixel Buffer Format array has %ld entries!\n", buf, 0x16u);
      }
    }

    ValueAtIndex = CFArrayGetValueAtIndex(value, 0);
  }

  else
  {
    v12 = CFGetTypeID(value);
    if (v12 != CFNumberGetTypeID())
    {
      v4 = 3758097084;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 136315138;
      v18 = "GetIOSurfaceTypeFromSessionPixelBufferAttributes";
      v5 = MEMORY[0x277D86220];
      v6 = "AppleAVD: ERROR: %s(): Retrieved kCVPixelBufferPixelFormatTypeKey entry was not a CFNumber or CFArray!\n";
      goto LABEL_20;
    }

    ValueAtIndex = value;
  }

  if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr))
  {
    v4 = 0;
    *a2 = getIOSurfaceCompressionType(valuePtr);
    goto LABEL_22;
  }

  v4 = 3758097084;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "GetIOSurfaceTypeFromSessionPixelBufferAttributes";
    v5 = MEMORY[0x277D86220];
    v6 = "AppleAVD: ERROR: %s(): Failed to properly convert Pixel Buffer Format CFNumber to an integer!\n";
LABEL_20:
    v7 = 12;
LABEL_21:
    _os_log_impl(&dword_277606000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, v7);
  }

LABEL_22:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v4;
}

uint64_t getIOSurfaceCompressionType(int a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1 <= 1530422831)
  {
    if (a1 <= 645424687)
    {
      if (a1 <= 642527535)
      {
        if ((a1 - 641230384) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0 || (a1 - 641234480) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0)
        {
          goto LABEL_80;
        }

        v2 = 12344;
        goto LABEL_27;
      }

      if (a1 > 645280823)
      {
        if (a1 > 645411383)
        {
          if (a1 == 645411384)
          {
            goto LABEL_80;
          }

          v9 = 13368;
        }

        else
        {
          if (a1 == 645280824)
          {
            goto LABEL_80;
          }

          v9 = 12344;
        }

        v6 = v9 | 0x26780000;
      }

      else
      {
        if (a1 <= 645279799)
        {
          if (a1 != 642527536)
          {
            v2 = 12598;
LABEL_27:
            v6 = v2 | 0x264C0000;
            goto LABEL_79;
          }

LABEL_80:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136316162;
            v17 = "getIOSurfaceCompressionType";
            v18 = 1024;
            v19 = HIBYTE(a1);
            v20 = 1024;
            v21 = BYTE2(a1);
            v22 = 1024;
            v23 = BYTE1(a1);
            v24 = 1024;
            v25 = a1;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: INFO: %s(): pixel buffer format: %c%c%c%c - kIOSurfaceCompressionTypeAGX\n", &v16, 0x24u);
          }

          return 2;
        }

        if (a1 == 645279800)
        {
          goto LABEL_80;
        }

        v6 = 645280312;
      }

LABEL_79:
      if (a1 == v6)
      {
        goto LABEL_80;
      }

      goto LABEL_94;
    }

    if (a1 <= 875704437)
    {
      if ((a1 - 645424688) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0 || (a1 - 645428784) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0)
      {
        goto LABEL_80;
      }

      v4 = 12390;
      goto LABEL_32;
    }

    if (a1 > 875836533)
    {
      if (a1 > 1278226735)
      {
        if (a1 == 1278226736)
        {
          goto LABEL_90;
        }

        v10 = 12598;
      }

      else
      {
        if (a1 == 875836534)
        {
          goto LABEL_90;
        }

        v10 = 12344;
      }

      v7 = v10 | 0x4C300000;
    }

    else
    {
      if (a1 <= 875704949)
      {
        if (a1 != 875704438)
        {
          v4 = 12902;
LABEL_32:
          v7 = v4 | 0x34320000;
          goto LABEL_89;
        }

LABEL_90:
        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v16 = 136316162;
        v17 = "getIOSurfaceCompressionType";
        v18 = 1024;
        v19 = HIBYTE(a1);
        v20 = 1024;
        v21 = BYTE2(a1);
        v22 = 1024;
        v23 = BYTE1(a1);
        v24 = 1024;
        v25 = a1;
        v14 = MEMORY[0x277D86220];
        v15 = "AppleAVD: INFO: %s(): pixel buffer format: %c%c%c%c - kIOSurfaceCompressionTypeNone\n";
        goto LABEL_92;
      }

      if (a1 == 875704950)
      {
        goto LABEL_90;
      }

      v7 = 875836518;
    }

LABEL_89:
    if (a1 == v7)
    {
      goto LABEL_90;
    }

LABEL_94:
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v16 = 136316162;
    v17 = "getIOSurfaceCompressionType";
    v18 = 1024;
    v19 = HIBYTE(a1);
    v20 = 1024;
    v21 = BYTE2(a1);
    v22 = 1024;
    v23 = BYTE1(a1);
    v24 = 1024;
    v25 = a1;
    v14 = MEMORY[0x277D86220];
    v15 = "AppleAVD: ERROR: %s(): Unrecognized pixel buffer format: %c%c%c%c - defaulting to kIOSurfaceCompressionTypeNone\n";
LABEL_92:
    _os_log_impl(&dword_277606000, v14, OS_LOG_TYPE_DEFAULT, v15, &v16, 0x24u);
    return 0;
  }

  if (a1 > 1885745711)
  {
    if (a1 <= 2016567607)
    {
      if (a1 <= 1982882103)
      {
        if (a1 == 1885745712 || a1 == 1885745714)
        {
          goto LABEL_90;
        }

        v7 = 1885746228;
      }

      else if (a1 > 1983144247)
      {
        if (a1 == 1983144248)
        {
          goto LABEL_90;
        }

        v7 = 2016436536;
      }

      else
      {
        if (a1 == 1982882104)
        {
          goto LABEL_90;
        }

        v7 = 1983013176;
      }
    }

    else if (a1 > 2016698679)
    {
      if (a1 > 2019963441)
      {
        if (a1 == 2019963956)
        {
          goto LABEL_90;
        }

        v11 = 12850;
      }

      else
      {
        if (a1 == 2016698680)
        {
          goto LABEL_90;
        }

        v11 = 12848;
      }

      v7 = v11 | 0x78660000;
    }

    else
    {
      if (a1 > 2016686641)
      {
        if (a1 == 2016686642)
        {
          goto LABEL_90;
        }

        v5 = 13364;
      }

      else
      {
        if (a1 == 2016567608)
        {
          goto LABEL_90;
        }

        v5 = 12848;
      }

      v7 = v5 | 0x78340000;
    }

    goto LABEL_89;
  }

  if (a1 <= 1534617135)
  {
    if ((a1 - 1530422832) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0)
    {
      goto LABEL_61;
    }

    v8 = -1530426928;
  }

  else
  {
    if (a1 <= 1534621231)
    {
      v3 = -26160;
    }

    else
    {
      if (a1 > 1882468911)
      {
        if (a1 == 1882468912 || a1 == 1882468914)
        {
          goto LABEL_90;
        }

        v7 = 1882469428;
        goto LABEL_89;
      }

      v3 = -30256;
    }

    v8 = v3 | 0xA4870000;
  }

  v12 = a1 + v8;
  if (v12 > 4 || ((1 << v12) & 0x15) == 0)
  {
    goto LABEL_94;
  }

LABEL_61:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136316162;
    v17 = "getIOSurfaceCompressionType";
    v18 = 1024;
    v19 = HIBYTE(a1);
    v20 = 1024;
    v21 = BYTE2(a1);
    v22 = 1024;
    v23 = BYTE1(a1);
    v24 = 1024;
    v25 = a1;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: INFO: %s(): pixel buffer format: %c%c%c%c - kIOSurfaceCompressionTypeHTPC\n", &v16, 0x24u);
  }

  return 1;
}

void PrepareHistogramDump(FILE **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = 0;
  setlocale(0, &unk_27777977E);
  time(&v6);
  v2 = localtime(&v6);
  strftime(__s, 0x14uLL, "%m%d%g_%H%M%S", v2);
  v5.tv_sec = 0;
  *&v5.tv_usec = 0;
  v4 = 0;
  gettimeofday(&v5, &v4);
  snprintf(__str, 5uLL, "_%03d", v5.tv_usec / 1000);
  strlen(__str);
  __strncat_chk();
  strcpy(__filename, "/var/mobile/Library/Caches/com.apple.videocodecd/com.apple.appleavd/");
  strlen(__s);
  __strncat_chk();
  __strncat_chk();
  v3 = fopen(__filename, "wbx");
  *a1 = v3;
  if (!v3)
  {
    *a1 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = __filename;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVD hevc histogram dump: could not open file %s\n", buf, 0xCu);
    }
  }
}

uint64_t AppleAVDSetCryptSession(uint64_t a1)
{
  outputStructCnt = 4;
  *&v9[4] = 0;
  outputStruct = 0;
  inputStruct = *(a1 + 1464);
  *v9 = *(a1 + 8);
  v8 = *(a1 + 1460);
  v2 = IOConnectCallStructMethod(*a1, 6u, &inputStruct, 0x18uLL, &outputStruct, &outputStructCnt);
  v3 = *(a1 + 3824);
  if (v3)
  {
    AppleAVDCommandBuilder::updateDecryptionState(v3, outputStruct, v8);
    AppleAVDCommandBuilder::updateDecryptionParams(*(a1 + 3824), *(a1 + 1036));
  }

  return v2;
}

uint64_t GetSupportBitsFromIORegistry(void)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = 0;
  *existing = 0;
  v0 = MEMORY[0x277CAE880](0, &existing[1]);
  if (v0)
  {
    v1 = v0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "GetSupportBitsFromIORegistry";
      v19 = 1024;
      v20 = v1;
      v2 = MEMORY[0x277D86220];
      v3 = "AppleAVD: ERROR: %s(): IOMainPort failed! (error = %d)\n";
LABEL_7:
      _os_log_impl(&dword_277606000, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 0x12u);
      return v1;
    }

    return v1;
  }

  v4 = existing[1];
  v5 = IOServiceMatching("AppleAVD");
  MatchingServices = IOServiceGetMatchingServices(v4, v5, existing);
  if (!MatchingServices)
  {
    v8 = IOIteratorNext(existing[0]);
    if (!v8)
    {
      v1 = 3758097084;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v18 = "GetSupportBitsFromIORegistry";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): IOIteratorNext failed!\n", buf, 0xCu);
      }

      v11 = 0;
      goto LABEL_25;
    }

    v9 = v8;
    CFProperty = IORegistryEntryCreateCFProperty(v8, @"AVCSupported", *MEMORY[0x277CBECE8], 0);
    v11 = CFProperty;
    if (CFProperty)
    {
      v12 = CFGetTypeID(CFProperty);
      if (v12 == CFNumberGetTypeID())
      {
        if (CFNumberGetValue(v11, kCFNumberSInt64Type, &v15))
        {
          v1 = 0;
          sSupportBits = v15;
LABEL_24:
          IOObjectRelease(v9);
LABEL_25:
          if (existing[0])
          {
            IOObjectRelease(existing[0]);
            existing[0] = 0;
          }

          if (v11)
          {
            CFRelease(v11);
          }

          return v1;
        }

        v1 = 3758097084;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        *buf = 136315138;
        v18 = "GetSupportBitsFromIORegistry";
        v13 = MEMORY[0x277D86220];
        v14 = "AppleAVD: ERROR: %s(): Could not retrieve support bits from CFNumberRef!\n";
      }

      else
      {
        v1 = 3758097084;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        *buf = 136315138;
        v18 = "GetSupportBitsFromIORegistry";
        v13 = MEMORY[0x277D86220];
        v14 = "AppleAVD: ERROR: %s(): AVCSupported is not CFNumberType!\n";
      }
    }

    else
    {
      v1 = 3758097136;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 136315138;
      v18 = "GetSupportBitsFromIORegistry";
      v13 = MEMORY[0x277D86220];
      v14 = "AppleAVD: ERROR: %s(): Couldn't get AVCSupported property from IORegistry!\n";
    }

    _os_log_impl(&dword_277606000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
    goto LABEL_24;
  }

  v1 = MatchingServices;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "GetSupportBitsFromIORegistry";
    v19 = 1024;
    v20 = v1;
    v2 = MEMORY[0x277D86220];
    v3 = "AppleAVD: ERROR: %s(): IOServiceGetMatchingServices failed! (error = %d)\n";
    goto LABEL_7;
  }

  return v1;
}

uint64_t AppleAVDCheckPlatform(unint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = 0xCAFECAFECAFECAFELL;
  if (sSupportBits == 0xCAFECAFECAFECAFELL)
  {
    SupportBitsFromIORegistry = GetSupportBitsFromIORegistry();
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (SupportBitsFromIORegistry)
    {
      if (v4)
      {
        v6 = 136315394;
        v7 = "AppleAVDCheckPlatform";
        v8 = 1024;
        LODWORD(v9) = SupportBitsFromIORegistry;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to successfully retrieve support bits! (error = %d)\n", &v6, 0x12u);
      }
    }

    else
    {
      if (v4)
      {
        v6 = 136315394;
        v7 = "AppleAVDCheckPlatform";
        v8 = 2048;
        v9 = sSupportBits;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: INFO: %s(): Successfully retrieved support bits! 0x%llx\n", &v6, 0x16u);
      }

      SupportBitsFromIORegistry = 0;
      v2 = sSupportBits;
    }
  }

  else
  {
    SupportBitsFromIORegistry = 0;
    v2 = sSupportBits;
  }

  *a1 = v2;
  return SupportBitsFromIORegistry;
}

uint64_t AppleAVDCloseConnection(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 1288);
  if (v3)
  {
    DestroyAVDFrameReceiver(v3, v2 + 1296);
    *(v2 + 1288) = 0;
  }

  pthread_mutex_destroy((v2 + 784));
  pthread_cond_destroy((v2 + 1376));
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = *(v2 + 200 + 8 * v4);
    if (v7)
    {
      BufferPool::~BufferPool(v7);
      MEMORY[0x277CAEC20]();
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  v8 = IOServiceClose(*v2);
  if (*(v2 + 3588))
  {
    v9 = *(v2 + 3608);
    if (!v9 || (CVPixelBufferRelease(v9), *(v2 + 3588)))
    {
      v10 = *(v2 + 3616);
      if (v10)
      {
        CVPixelBufferRelease(v10);
      }
    }
  }

  free(*(v2 + 3904));
  free(v2);
  *a1 = 0;
  return v8;
}

uint64_t AppleAVDAllocateCVPixelBuffer(uint64_t a1, unsigned int a2)
{
  v43 = *MEMORY[0x277D85DE8];
  pixelBufferAttributes = 0;
  valuePtr = 875704438;
  switch(a2)
  {
    case '\x7F':
      v4 = (a1 + 3656);
      break;
    case '}':
      v4 = (a1 + 3672);
      if (*(a1 + 848) == 1)
      {
        v5 = *(a1 + 776);
        if (v5 <= 0x13)
        {
          v6 = 1530426928;
        }

        else
        {
          v6 = 641234480;
        }

        valuePtr = v6;
        v7 = CreateCompressedPixelBufferAttributesDictionary(v5, *(a1 + 8), *(a1 + 12), *(a1 + 856), *(a1 + 860), &valuePtr, 1, 0, &pixelBufferAttributes, *(a1 + 888), 5, 4, 2, 2);
        if (!v7)
        {
          Mutable = pixelBufferAttributes;
          goto LABEL_33;
        }

LABEL_45:
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_48;
        }

        *buf = 136315138;
        v38 = "AppleAVDAllocateCVPixelBuffer";
        v27 = MEMORY[0x277D86220];
        v28 = "AppleAVD: %s() :  ERROR: CreateUncompressedPixelBufferAttributesDictionaryRVRA() failed!";
        v29 = 12;
        goto LABEL_47;
      }

      break;
    case '~':
      v4 = (a1 + 3664);
      break;
    default:
      v4 = 0;
      break;
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = *(a1 + 856);
  v12 = *(a1 + 860);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v13 = 0;
LABEL_38:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v38 = "CreateUncompressedPixelBufferAttributesDictionaryRVRA";
      v39 = 1024;
      v40 = -12904;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v7 = 4294954392;
    goto LABEL_45;
  }

  v13 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v13)
  {
    goto LABEL_38;
  }

  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (!v14)
  {
    goto LABEL_38;
  }

  v15 = v14;
  CFArrayAppendValue(v13, v14);
  CFRelease(v15);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E30], v13);
  CFRelease(v13);
  v16 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = v16;
  if (!v16)
  {
    goto LABEL_38;
  }

  CFDictionaryAddValue(v16, *MEMORY[0x277CD29F8], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v13);
  addNumberToDictionary(Mutable, *MEMORY[0x277CC4D60], 64);
  addNumberToDictionary(Mutable, *MEMORY[0x277CC4EC8], v9);
  addNumberToDictionary(Mutable, *MEMORY[0x277CC4DD8], v10);
  addNumberToDictionary(Mutable, *MEMORY[0x277CC4E38], 256);
  v17 = v11 + 31;
  if (v11 < -31)
  {
    v17 = v11 + 62;
  }

  v18 = v17 & 0xFFFFFFE0;
  v19 = v12 + 31;
  if (v12 < -31)
  {
    v19 = v12 + 62;
  }

  v20 = v19 & 0xFFFFFFE0;
  v21 = v12 / 2 + 30;
  if (v12 / 2 >= -15)
  {
    v21 = v12 / 2 + 15;
  }

  v22 = (2 * v21) & 0xFFFFFFE0;
  if (v20 <= v22)
  {
    v20 = v22;
  }

  v23 = __OFSUB__(v20, v10);
  v24 = v20 - v10;
  if ((v24 < 0) ^ v23 | (v24 == 0))
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  if (v18 > v9)
  {
    addNumberToDictionary(Mutable, *MEMORY[0x277CC4DB8], v18 - v9);
  }

  if (v25)
  {
    addNumberToDictionary(Mutable, *MEMORY[0x277CC4DA0], v25);
  }

  pixelBufferAttributes = Mutable;
  CFRelease(v13);
LABEL_33:
  v26 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], *(a1 + 8), *(a1 + 12), valuePtr, Mutable, v4);
  if (v26)
  {
    v7 = v26;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    *buf = 136315394;
    v38 = "AppleAVDAllocateCVPixelBuffer";
    v39 = 1024;
    v40 = a2;
    v27 = MEMORY[0x277D86220];
    v28 = "AppleAVD: %s() :  ERROR: CVPixelBufferCreate failed refSurfaceListIndx:%d";
    goto LABEL_36;
  }

  IOSurface = CVPixelBufferGetIOSurface(*v4);
  if (IOSurface)
  {
    v32 = IOSurface;
    switch(a2)
    {
      case '\x7F':
        v33 = @"AVD video decoder RVRABuffFirst";
        break;
      case '~':
        v33 = @"AVD video decoder RVRABuffSecond";
        break;
      case '}':
        v33 = @"AVD video decoder MuxedAlphaChromaScratchBuff";
        break;
      default:
LABEL_61:
        ID = IOSurfaceGetID(v32);
        v7 = AppleAVDMapPixelBuffer(a1, a2, ID, 0);
        if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v38 = "AppleAVDAllocateCVPixelBuffer";
          v39 = 1024;
          v40 = v7;
          v41 = 1024;
          v42 = a2;
          v27 = MEMORY[0x277D86220];
          v28 = "AppleAVD: %s(): buffer map failed error: %d refSurfaceListIndx:%d\n";
          v29 = 24;
          goto LABEL_47;
        }

        goto LABEL_48;
    }

    IOSurfaceSetValue(IOSurface, *MEMORY[0x277CD2A50], v33);
    goto LABEL_61;
  }

  v7 = 3758097085;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v38 = "AppleAVDAllocateCVPixelBuffer";
    v39 = 1024;
    v40 = a2;
    v27 = MEMORY[0x277D86220];
    v28 = "AppleAVD: %s() :  ioSurfaceRef for refSurfaceListIndx:%d is NULL!";
LABEL_36:
    v29 = 18;
LABEL_47:
    _os_log_impl(&dword_277606000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, v29);
  }

LABEL_48:
  if (pixelBufferAttributes)
  {
    CFRelease(pixelBufferAttributes);
  }

  return v7;
}

uint64_t AppleAVDTerminateDecoder(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 960);
  if (v2)
  {
    CPBManager::waitForCPBsOutstanding(v2, 0);
  }

  StopAVDFrameReceiver(*(a1 + 1288), (a1 + 1360));
  if (*(a1 + 3716) == 1)
  {
    v3 = *(a1 + 3696);
    if (v3)
    {
      free(v3);
    }

    v4 = *(a1 + 3688);
    if (v4)
    {
      free(v4);
    }
  }

  *(a1 + 3704) = 0;
  v5 = *(a1 + 960);
  if (v5)
  {
    CPBManager::~CPBManager(v5);
    MEMORY[0x277CAEC20]();
    *(a1 + 960) = 0;
  }

  v6 = *(a1 + 3640);
  if (v6)
  {
    v7 = IOSurfaceUnlock(*(a1 + 3640), 0, 0);
    CFRelease(v6);
    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315394;
        v15 = "DeleteCompressedBitBuffer";
        v16 = 1024;
        v17 = v7;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", &v14, 0x12u);
      }
    }
  }

  v8 = *(a1 + 3656);
  if (v8)
  {
    CVPixelBufferRelease(v8);
  }

  v9 = *(a1 + 3664);
  if (v9)
  {
    CVPixelBufferRelease(v9);
  }

  v10 = *(a1 + 3672);
  if (v10)
  {
    CVPixelBufferRelease(v10);
  }

  v11 = *(a1 + 3776);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 3776) = 0;
  }

  v12 = AppleAVDDestroyDecodeDeviceInternal(a1);
  if (v12 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "AppleAVDTerminateDecoder";
    v16 = 1024;
    v17 = v12;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed error: %d \n", &v14, 0x12u);
  }

  return v12;
}

uint64_t parseAvcSps(unsigned __int8 *a1, int a2, int *a3, int *a4, int *a5, int *a6, int *a7, int *a8)
{
  v74 = *MEMORY[0x277D85DE8];
  v16 = operator new(0x48uLL, MEMORY[0x277D826F0]);
  if (!v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v70 = "parseAvcSps";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s: error creating rbsp!\n", buf, 0xCu);
    }

    v32 = 4294967290;
    goto LABEL_29;
  }

  v17 = v16;
  v66 = a3;
  AVC_RBSP::AVC_RBSP(v16);
  v18 = operator new[](0x11600uLL, MEMORY[0x277D826F0]);
  v19 = v18;
  if (!v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v70 = "parseAvcSps";
      v33 = MEMORY[0x277D86220];
      v34 = "AppleAVD: ERROR: %s: error creating sps list!\n";
LABEL_21:
      _os_log_impl(&dword_277606000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 0xCu);
    }

LABEL_22:
    v21 = 0;
    v31 = 0;
    v32 = 4294967290;
    goto LABEL_23;
  }

  v65 = a4;
  bzero(v18, 0x11600uLL);
  v20 = operator new[](0x25C00uLL, MEMORY[0x277D826F0]);
  if (!v20)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v70 = "parseAvcSps";
      v33 = MEMORY[0x277D86220];
      v34 = "AppleAVD: ERROR: %s: error creating pps list!\n";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v21 = v20;
  v63 = a6;
  v64 = a5;
  v22 = a2 & 0xFFFFFF;
  v67 = &a1[v22];
  v23 = a2 >> 24;
  bzero(v20, 0x25C00uLL);
  v24 = 3;
  v25 = 32;
  do
  {
    *(v19 + v24) = 32;
    v24 += 2224;
    --v25;
  }

  while (v25);
  v26 = 256;
  v27 = v21;
  do
  {
    *v27 = 256;
    v27 += 302;
    --v26;
  }

  while (v26);
  if (v23 > v22)
  {
LABEL_9:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:
      v31 = 0;
      v32 = 305;
      goto LABEL_23;
    }

    *buf = 136315138;
    *v70 = "parseAvcSps";
    v28 = MEMORY[0x277D86220];
    v29 = "AppleAVD: %s(): cannot find SPS";
    goto LABEL_11;
  }

  if (v23 > 4 || ((1 << SHIBYTE(a2)) & 0x16) == 0)
  {
    v31 = 0;
    v32 = 317;
    goto LABEL_23;
  }

  v61 = v21;
  v62 = a7;
  v60 = a8;
  v36 = 0;
  v37 = 0;
  v38 = a1;
  do
  {
    v39 = *v38;
    if (v23 == 2)
    {
      v39 = v38[1] | (v39 << 8);
      v40 = v38 + 2;
      v41 = v39 + 2;
    }

    else if (v23 == 4)
    {
      v39 = v38[3] | (((v39 << 16) | (v38[1] << 8) | v38[2]) << 8);
      v40 = v38 + 4;
      v41 = v39 + 4;
    }

    else
    {
      v40 = v38 + 1;
      v41 = v39 + 1;
    }

    if (&v40[v39] > v67)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *v70 = "parseAvcSps";
        *&v70[8] = 1024;
        *&v70[10] = v39;
        v71 = 2048;
        *v72 = v40;
        *&v72[8] = 2048;
        v73 = v67;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s NALU too big! %d nal_ptr:%p, buf_end:%p", buf, 0x26u);
      }

      v31 = 0;
      v32 = 318;
      goto LABEL_23;
    }

    AVC_RBSP::setRBSP(v17, v40, v39);
    if ((AVC_RBSP::parseNAL(v17, v68, 0) & 1) == 0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136315138;
      *v70 = "parseAvcSps";
      v28 = MEMORY[0x277D86220];
      v29 = "AppleAVD: %s(): rbsp parseNAL return error";
LABEL_11:
      v30 = 12;
LABEL_12:
      _os_log_impl(&dword_277606000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, v30);
      goto LABEL_13;
    }

    v42 = v68[0] >> 3;
    if (v42 == 8)
    {
      if (AVC_RBSP::parsePPS(v17, v21, v19) == -1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        *buf = 67109378;
        *v70 = -1;
        *&v70[4] = 2080;
        *&v70[6] = "OSStatus parseAvcSps(unsigned char *, int, uint32_t *, uint32_t *, uint32_t *, uint32_t *, uint32_t *, uint32_t *)";
        v28 = MEMORY[0x277D86220];
        v29 = "AppleAVD: bad PPS index %d %s\n";
LABEL_70:
        v30 = 18;
        goto LABEL_12;
      }
    }

    else
    {
      if (v42 != 7)
      {
        goto LABEL_57;
      }

      v43 = AVC_RBSP::parseSPS(v17, v19);
      v44 = v43;
      if (v43 == -1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        *buf = 67109378;
        *v70 = -1;
        *&v70[4] = 2080;
        *&v70[6] = "OSStatus parseAvcSps(unsigned char *, int, uint32_t *, uint32_t *, uint32_t *, uint32_t *, uint32_t *, uint32_t *)";
        v28 = MEMORY[0x277D86220];
        v29 = "AppleAVD: bad SPS index %d %s\n";
        goto LABEL_70;
      }

      v45 = (v19 + 2224 * v43);
      if ((v37 & 1) == 0)
      {
        *v66 = v45[4];
        *v65 = v45[6];
        *v64 = v45[7];
        *v63 = calcAvcDpbMaxSize(v19 + 2224 * v43);
        *v62 = v45[1562];
        if (v45[1574])
        {
          *v60 = (v45[1582] >> 6) & 1;
        }

        v37 = 1;
        goto LABEL_57;
      }

      v46 = *v66;
      v47 = v45[4];
      if (*v66 != v47)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *v70 = "parseAvcSps";
          *&v70[8] = 1024;
          *&v70[10] = v46;
          v71 = 1024;
          *v72 = v44;
          *&v72[4] = 1024;
          *&v72[6] = v47;
          v57 = MEMORY[0x277D86220];
          v58 = "AppleAVD: %s(): chroma_format_idc inconsistent. First SPS = %d. Subsequent SPS with sps_id %d = %d";
          goto LABEL_79;
        }

LABEL_80:
        v31 = 0;
        v32 = 305;
        v21 = v61;
        goto LABEL_23;
      }

      v48 = *v65;
      v49 = v45[6];
      if (*v65 != v49)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_80;
        }

        *buf = 136315906;
        *v70 = "parseAvcSps";
        *&v70[8] = 1024;
        *&v70[10] = v48;
        v71 = 1024;
        *v72 = v44;
        *&v72[4] = 1024;
        *&v72[6] = v49;
        v57 = MEMORY[0x277D86220];
        v58 = "AppleAVD: %s(): bit_depth_luma_minus8 inconsistent. First SPS = %d. Subsequent SPS with sps_id %d = %d";
LABEL_79:
        _os_log_impl(&dword_277606000, v57, OS_LOG_TYPE_DEFAULT, v58, buf, 0x1Eu);
        goto LABEL_80;
      }

      v50 = *v64;
      v51 = v45[7];
      if (*v64 != v51)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_80;
        }

        *buf = 136315906;
        *v70 = "parseAvcSps";
        *&v70[8] = 1024;
        *&v70[10] = v50;
        v71 = 1024;
        *v72 = v44;
        *&v72[4] = 1024;
        *&v72[6] = v51;
        v57 = MEMORY[0x277D86220];
        v58 = "AppleAVD: %s(): bit_depth_chroma_minus8 inconsistent. First SPS = %d. Subsequent SPS with sps_id %d = %d";
        goto LABEL_79;
      }

      v52 = calcAvcDpbMaxSize(v19 + 2224 * v43);
      v53 = *v63;
      if (*v63 != v52)
      {
        v59 = v52;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_80;
        }

        *buf = 136315906;
        *v70 = "parseAvcSps";
        *&v70[8] = 1024;
        *&v70[10] = v53;
        v71 = 1024;
        *v72 = v44;
        *&v72[4] = 1024;
        *&v72[6] = v59;
        v57 = MEMORY[0x277D86220];
        v58 = "AppleAVD: %s(): maxDpbSize inconsistent. First SPS = %d. Subsequent SPS with sps_id %d = %d";
        goto LABEL_79;
      }

      v54 = *v62;
      v55 = v45[1562];
      if (*v62 != v55)
      {
        v21 = v61;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        *buf = 136315906;
        *v70 = "parseAvcSps";
        *&v70[8] = 1024;
        *&v70[10] = v54;
        v71 = 1024;
        *v72 = v44;
        *&v72[4] = 1024;
        *&v72[6] = v55;
        v28 = MEMORY[0x277D86220];
        v29 = "AppleAVD: %s(): frame_mbs_only_flag inconsistent. First SPS = %d. Subsequent SPS with sps_id %d = %d";
        v30 = 30;
        goto LABEL_12;
      }

      v37 = 1;
      v21 = v61;
    }

LABEL_57:
    v36 += v41;
    v38 = &a1[v36];
  }

  while (&v38[v23] <= v67);
  if ((v37 & 1) == 0)
  {
    goto LABEL_9;
  }

  v32 = 0;
  v31 = 1;
LABEL_23:
  (*(*v17 + 8))(v17);
  if (v19)
  {
    MEMORY[0x277CAEC00](v19, 0x1000C80FEE9FA54);
  }

  if (v21)
  {
    MEMORY[0x277CAEC00](v21, 0x1000C807CDE6A40);
  }

  if (v31)
  {
    return 0;
  }

LABEL_29:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v70 = "parseAvcSps";
    *&v70[8] = 1024;
    *&v70[10] = v32;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

  return v32;
}