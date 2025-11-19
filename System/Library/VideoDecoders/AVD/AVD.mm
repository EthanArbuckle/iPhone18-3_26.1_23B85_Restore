void AVDFrameReceiverEntry(char *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  os_retain(*(*(a1 + 16) + 40));
  voucher_adopt();
  *(a1 + 15) = 0;
  v2 = operator new(0x50uLL, MEMORY[0x277D826F0]);
  if (v2)
  {
    v4 = v2;
    v5 = *(a1 + 16);
    v2[10] = *v5;
    *(v2 + 6) = *(v5 + 24);
    *(v2 + 72) = *(v5 + 32);
    *(v2 + 8) = *(v5 + 16);
    *(v2 + 7) = **(v5 + 8);
    *(v2 + 74) = *(v5 + 33);
    *(v2 + 4) = 0;
    *(v2 + 73) = 0;
    *(v2 + 1) = 0;
    *(v2 + 2) = 0;
    if (AVDFrameReceiver::Setup(v2))
    {
      MEMORY[0x277CAEC20](v4, 0x10A0C40FE0E7621);
      *a1 = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AVDFrameReceiver ERROR: receiver->Setup failed.", buf, 2u);
      }
    }

    else
    {
      *(a1 + 15) = v4;
      pthread_setname_np("AVDFrameReceiver");
      pthread_mutex_lock((a1 + 56));
      *a1 = 1;
      pthread_cond_signal((a1 + 8));
      pthread_mutex_unlock((a1 + 56));
      CFRunLoopRun();
    }
  }

  else
  {
    v3 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "Assert - (%s) - f: %s l: %d\n", "receiver != NULL", "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp", 556);
    fwrite("AVDFrameReceiver ERROR: new AVDFrameReceiver failed.\n", 0x35uLL, 1uLL, *v3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = "receiver != NULL";
      v9 = 2080;
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp";
      v11 = 1024;
      v12 = 556;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert - (%s) - f: %s l: %d\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AVDFrameReceiver ERROR: new AVDFrameReceiver failed.\n", buf, 2u);
    }

    *a1 = 1;
  }

  v6 = voucher_adopt();
  os_release(v6);
  pthread_exit(0);
}

uint64_t AVDFrameReceiver::Setup(mach_port_t *this)
{
  v14 = *MEMORY[0x277D85DE8];
  Current = CFRunLoopGetCurrent();
  *this = Current;
  if (!Current)
  {
    v6 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "Assert - (%s) - f: %s l: %d\n", "m_CFRunLoopRef != NULL", "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp", 111);
    fwrite("AVDFrameReceiver ERROR: CFRunLoopGetCurrent failed.\n", 0x34uLL, 1uLL, *v6);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v9 = "m_CFRunLoopRef != NULL";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp";
      v12 = 1024;
      v13 = 111;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert - (%s) - f: %s l: %d\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AVDFrameReceiver ERROR: CFRunLoopGetCurrent failed.\n", buf, 2u);
    }

    v5 = 3758097085;
    goto LABEL_15;
  }

  CFRetain(Current);
  v3 = AVDFrameReceiver::AddIODispatcherToRunLoop(this);
  if (v3)
  {
    v4 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "Assert - (%s) - f: %s l: %d\n", "err == kIOReturnSuccess", "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp", 120);
    fwrite("AVDFrameReceiver ERROR: AddIODispatcherToRunLoop failed.\n", 0x39uLL, 1uLL, *v4);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v9 = "err == kIOReturnSuccess";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp";
      v12 = 1024;
      v13 = 120;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert - (%s) - f: %s l: %d\n", buf, 0x1Cu);
    }

    v5 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AVDFrameReceiver ERROR: AddIODispatcherToRunLoop failed.\n", buf, 2u);
    }

LABEL_15:
    if (*this)
    {
      CFRelease(*this);
      *this = 0;
    }

    return v5;
  }

  if (*(this + 72) == 1)
  {
    setpriority(3, 0, 4096);
  }

  else if (*(this + 74) == 1)
  {
    AVDFrameReceiver::MakeCurrentThreadTimeConstraintThread(v3);
  }

  return 0;
}

uint64_t AVDFrameReceiver::AddIODispatcherToRunLoop(mach_port_t *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = 3758097085;
  if (IOCreateReceivePort(0x39u, this + 6))
  {
    return 3758097084;
  }

  shouldFreeInfo = 0;
  context.version = 1;
  context.info = this;
  memset(&context.retain, 0, 24);
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], this[6], MEMORY[0x277CD27F0], &context, &shouldFreeInfo);
  *(this + 4) = v4;
  if (v4)
  {
    v5 = shouldFreeInfo == 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    *(this + 4) = 0;
LABEL_11:
    AVDFrameReceiver::RemoveIODispatcherFromRunLoop(this);
    return v2;
  }

  RunLoopSource = CFMachPortCreateRunLoopSource(v3, v4, 0);
  *(this + 2) = RunLoopSource;
  if (!RunLoopSource)
  {
    goto LABEL_11;
  }

  CFRunLoopAddSource(*this, RunLoopSource, *MEMORY[0x277CBF058]);
  inputStruct[1] = this;
  outputStructCnt = 4;
  inputStruct[0] = AVDFrameReceiver::FrameDone;
  *reference = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = IOConnectCallAsyncMethod(this[10], 8u, this[6], reference, 8u, 0, 0, inputStruct, 0x10uLL, 0, 0, v8, &outputStructCnt);
  if (v2)
  {
    goto LABEL_11;
  }

  return v2;
}

uint64_t CreateHeaderBuffer(uint64_t a1, CMFormatDescriptionRef desc)
{
  v35 = *MEMORY[0x277D85DE8];
  Extension = CMFormatDescriptionGetExtension(desc, *MEMORY[0x277CC03B0]);
  if (!Extension || (v4 = Extension, TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(v4)) || (Value = CFDictionaryGetValue(v4, @"av1C")) == 0 || (ValueAtIndex = Value, v8 = CFArrayGetTypeID(), v8 == CFGetTypeID(ValueAtIndex)) && (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) == 0 || (v9 = CFDataGetTypeID(), v9 != CFGetTypeID(ValueAtIndex)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: FGHDecoder ERROR: ConfigRecordData error - Cannot find config record", &v31, 2u);
    }

    v14 = 4294958325;
    goto LABEL_13;
  }

  BytePtr = CFDataGetBytePtr(ValueAtIndex);
  Length = CFDataGetLength(ValueAtIndex);
  if (Length <= 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      v12 = MEMORY[0x277D86220];
      v13 = "AppleAVD: ERROR, config record is too short\n";
LABEL_35:
      v22 = 2;
LABEL_36:
      _os_log_impl(&dword_277606000, v12, OS_LOG_TYPE_DEFAULT, v13, &v31, v22);
      goto LABEL_37;
    }

    goto LABEL_37;
  }

  if (*BytePtr != 129)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      v12 = MEMORY[0x277D86220];
      v13 = "AppleAVD: ERROR, invalid marker bit and/or version number\n";
      goto LABEL_35;
    }

LABEL_37:
    v14 = 4294954386;
    goto LABEL_13;
  }

  v17 = BytePtr[1];
  v18 = v17 >> 5;
  if (v17 >= 0x20 && v18 != 2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v31 = 67109120;
    LODWORD(v32) = v18;
    v12 = MEMORY[0x277D86220];
    v13 = "AppleAVD: ERROR, unsupported profile %d\n";
LABEL_40:
    v22 = 8;
    goto LABEL_36;
  }

  if (v18 != 2 || (BytePtr[2] & 0x40) == 0)
  {
    if (v17 > 0x5F)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      LOWORD(v31) = 0;
      v12 = MEMORY[0x277D86220];
      v13 = "AppleAVD: ERROR, invalid profile\n";
      goto LABEL_35;
    }

    if ((BytePtr[2] & 0x40) != 0)
    {
      v21 = 10;
    }

    else
    {
      v21 = 8;
    }
  }

  else if ((BytePtr[2] & 0x20) != 0)
  {
    v21 = 12;
  }

  else
  {
    v21 = 10;
  }

  v24 = v21 - 8;
  *(a1 + 5345) = v24;
  *(a1 + 5346) = v24;
  v25 = (BytePtr[2] >> 2) & 7;
  if (v25 == 7)
  {
    v26 = 0;
  }

  else
  {
    if (v25 != 3)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v29 = *(a1 + 5344);
      v31 = 67109120;
      LODWORD(v32) = v29;
      v12 = MEMORY[0x277D86220];
      v13 = "AppleAVD: ERROR, unsupported chroma format %d\n";
      goto LABEL_40;
    }

    v26 = 1;
  }

  *(a1 + 5344) = v26;
  v27 = Length - 4;
  if (Length == 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315138;
      v32 = "CreateHeaderBuffer";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: WARNING, no configOBUs[]\n", &v31, 0xCu);
    }

    if (*(a1 + 5232) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315138;
      v32 = "CreateHeaderBuffer";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: WARNING, initial_obu_buffer isn't empty like it should\n", &v31, 0xCu);
    }

    v30 = malloc_type_malloc(1uLL, 0x5657692BuLL);
    *(a1 + 5232) = v30;
    if (v30)
    {
      v14 = 0;
      *(a1 + 5240) = 0;
      return v14;
    }
  }

  else
  {
    *(a1 + 5240) = v27;
    if (*(a1 + 5232) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315138;
      v32 = "CreateHeaderBuffer";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: WARNING, initial_obu_buffer isn't empty like it should\n", &v31, 0xCu);
      v27 = *(a1 + 5240);
    }

    v28 = malloc_type_malloc(v27, 0x3CC0A544uLL);
    *(a1 + 5232) = v28;
    if (v28)
    {
      memcpy(v28, BytePtr + 4, *(a1 + 5240));
      return 0;
    }
  }

  v14 = 4294954392;
LABEL_13:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136315394;
    v32 = "CreateHeaderBuffer";
    v33 = 1024;
    v34 = v14;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", &v31, 0x12u);
  }

  v15 = *(a1 + 5232);
  if (v15)
  {
    free(v15);
    *(a1 + 5232) = 0;
  }

  return v14;
}

uint64_t CreateHeaderBuffer_0(uint64_t a1, CMFormatDescriptionRef desc)
{
  v152 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 5232);
  *(a1 + 8164) = 0;
  Extension = CMFormatDescriptionGetExtension(desc, *MEMORY[0x277CC03B0]);
  if (!Extension)
  {
    goto LABEL_320;
  }

  v5 = Extension;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v5))
  {
    goto LABEL_320;
  }

  Value = CFDictionaryGetValue(v5, @"hvcC");
  ValueAtIndex = CFDictionaryGetValue(v5, @"lhvC");
  if (Value)
  {
    v9 = CFArrayGetTypeID();
    if (v9 == CFGetTypeID(Value))
    {
      Value = CFArrayGetValueAtIndex(Value, 0);
    }
  }

  if (ValueAtIndex)
  {
    v10 = CFArrayGetTypeID();
    if (v10 == CFGetTypeID(ValueAtIndex))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    }
  }

  if (!Value || (v11 = CFDataGetTypeID(), v11 != CFGetTypeID(Value)))
  {
LABEL_320:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: HEVCDecoder ERROR: ConfigRecordData error - Cannot find config record", buf, 2u);
    }

    v16 = 4294958325;
    goto LABEL_17;
  }

  BytePtr = CFDataGetBytePtr(Value);
  Length = CFDataGetLength(Value);
  if (ValueAtIndex)
  {
    v14 = CFDataGetTypeID();
    if (v14 == CFGetTypeID(ValueAtIndex))
    {
      v15 = CFDataGetBytePtr(ValueAtIndex);
      ValueAtIndex = CFDataGetLength(ValueAtIndex);
      *(a1 + 8164) = 0x100000001;
    }

    else
    {
      v15 = 0;
      ValueAtIndex = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  if ((*(a1 + 8153) & 1) != 0 || !*(a1 + 8168))
  {
    *(a1 + 8164) = 0;
  }

  v146 = 0;
  v144 = 0;
  v145 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  *&__n[1] = 0;
  __n[0] = 0;
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  if (safeGetByte(BytePtr, &v146 + 1, &__n[3], Length))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -10;
    goto LABEL_62;
  }

  if (safeGetByte(BytePtr, &v146, &__n[3], Length))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -11;
    goto LABEL_62;
  }

  LOBYTE(v146) = v146 >> 6;
  if (safeGet32(BytePtr, &v145, &__n[3], Length))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -12;
    goto LABEL_62;
  }

  if (safeGet32(BytePtr, &v144, &__n[3], Length))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -13;
    goto LABEL_62;
  }

  if (safeGetShort(BytePtr, &v143, &__n[3], Length))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -14;
    goto LABEL_62;
  }

  if (safeGetByte(BytePtr, &v142, &__n[3], Length))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -15;
    goto LABEL_62;
  }

  if (safeGetShort(BytePtr, &v141, &__n[3], Length))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -16;
    goto LABEL_62;
  }

  v129 = ValueAtIndex;
  v130 = v15;
  v141 &= 0xFFFu;
  if (safeGetByte(BytePtr, &v140 + 1, &__n[3], Length))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -17;
    goto LABEL_62;
  }

  v24 = v3;
  HIBYTE(v140) &= 3u;
  v127 = BytePtr;
  v128 = Length;
  if (safeGetByte(BytePtr, &v140, &__n[3], Length))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -18;
    goto LABEL_61;
  }

  LOBYTE(v140) = v140 & 3;
  if (safeGetByte(BytePtr, &v139 + 1, &__n[3], Length))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -19;
    goto LABEL_61;
  }

  HIBYTE(v139) &= 7u;
  if (safeGetByte(BytePtr, &v139, &__n[3], Length))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -20;
    goto LABEL_61;
  }

  LOBYTE(v139) = v139 & 7;
  if (safeGetShort(BytePtr, &v138, &__n[3], Length))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -21;
    goto LABEL_61;
  }

  if (safeGetByte(BytePtr, &v137 + 1, &__n[3], Length))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -22;
    goto LABEL_61;
  }

  v25 = HIBYTE(v137);
  HIBYTE(v137) >>= 5;
  if (safeGetByte(v127, &v137, &__n[3], Length))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -23;
    goto LABEL_61;
  }

  *(a1 + 5624) = (v25 & 3) + 1;
  v135 = 0;
  v134 = *&__n[3];
  v133 = 0;
  if (v137)
  {
    v123 = 0;
    LOBYTE(v125) = 0;
    LOBYTE(__dst) = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    while (1)
    {
      if (safeGetByte(v127, &v135, &v134, v128))
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = -24;
        goto LABEL_61;
      }

      v135 &= 0x3Fu;
      if (safeGetShort(v127, &v133, &v134, v128))
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = -25;
        goto LABEL_61;
      }

      switch(v135)
      {
        case '""':
          v32 = v133;
          if (!v133 || (__dst = v133 + __dst, __dst >= 0x41))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *v148 = "decodeHEVCDecoderConfigurationRecord";
              *&v148[8] = 1024;
              *v149 = v32;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s too many PPS %d", buf, 0x12u);
            }

            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = -31;
            goto LABEL_61;
          }

          for (i = 0; i < v133; ++i)
          {
            if (safeGetShort(v127, __n, &v134, v128))
            {
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = -32;
              goto LABEL_61;
            }

            if (!__n[0])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *v148 = "decodeHEVCDecoderConfigurationRecord";
                _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s PPS size <= 0", buf, 0xCu);
              }

              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = -33;
              goto LABEL_61;
            }

            if (__n[0] > v28)
            {
              v28 = __n[0];
            }

            v134 += __n[0];
          }

          break;
        case '!':
          v34 = v133;
          if (!v133 || (v125 = v133 + v125, v125 >= 0x11))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *v148 = "decodeHEVCDecoderConfigurationRecord";
              *&v148[8] = 1024;
              *v149 = v34;
              v56 = MEMORY[0x277D86220];
              goto LABEL_221;
            }

            goto LABEL_222;
          }

          for (j = 0; j < v133; ++j)
          {
            if (safeGetShort(v127, &__n[1], &v134, v128))
            {
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = -29;
              goto LABEL_61;
            }

            if (!__n[1])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *v148 = "decodeHEVCDecoderConfigurationRecord";
                _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s SPS size <= 0", buf, 0xCu);
              }

              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = -30;
              goto LABEL_61;
            }

            if (__n[1] > v29)
            {
              v29 = __n[1];
            }

            v134 += __n[1];
          }

          break;
        case ' ':
          v30 = v133;
          if (!v133 || v133 + v123 >= 9)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *v148 = "decodeHEVCDecoderConfigurationRecord";
              *&v148[8] = 1024;
              *v149 = v30;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s too many VPS %d", buf, 0x12u);
            }

            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = -26;
            goto LABEL_61;
          }

          v31 = 0;
          v123 = (v133 + v123);
          do
          {
            if (safeGetShort(v127, &__n[2], &v134, v128))
            {
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = -27;
              goto LABEL_61;
            }

            if (!__n[2])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *v148 = "decodeHEVCDecoderConfigurationRecord";
                _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s VPS size <= 0", buf, 0xCu);
              }

              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = -28;
              goto LABEL_61;
            }

            if (__n[2] > v26)
            {
              v26 = __n[2];
            }

            v134 += __n[2];
            ++v31;
          }

          while (v31 < v133);
          break;
      }

      if (++v27 >= v137)
      {
        goto LABEL_107;
      }
    }
  }

  v29 = 0;
  v28 = 0;
  v26 = 0;
  LOBYTE(__dst) = 0;
  LOBYTE(v125) = 0;
  v123 = 0;
LABEL_107:
  v132 = 5;
  v131 = 0;
  if (v15)
  {
    if (safeGetByte(v15, &v131, &v132, v129))
    {
      goto LABEL_109;
    }

    if (v131)
    {
      v36 = 0;
      while (1)
      {
        if (safeGetByte(v130, &v135, &v132, v129))
        {
          goto LABEL_109;
        }

        v135 &= 0x3Fu;
        if (safeGetShort(v130, &v133, &v132, v129))
        {
          goto LABEL_109;
        }

        if (v135 == 34)
        {
          v39 = v133;
          if (((v133 - 65) >> 6) <= 0x3FEu)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_109;
            }

            *buf = 136315394;
            *v148 = "decodeHEVCDecoderConfigurationRecord";
            *&v148[8] = 1024;
            *v149 = v39;
            v57 = MEMORY[0x277D86220];
            v58 = "AppleAVD: %s too many PPS %d";
            v59 = 18;
          }

          else
          {
            v40 = 0;
            LOBYTE(__dst) = __dst + v133;
            while (1)
            {
              if (safeGetShort(v130, __n, &v132, v129))
              {
                goto LABEL_109;
              }

              if (!__n[0])
              {
                break;
              }

              if (__n[0] > v28)
              {
                v28 = __n[0];
              }

              v132 += __n[0];
              if (++v40 >= v133)
              {
                goto LABEL_132;
              }
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_109;
            }

            *buf = 136315138;
            *v148 = "decodeHEVCDecoderConfigurationRecord";
            v57 = MEMORY[0x277D86220];
            v58 = "AppleAVD: %s PPS size <= 0";
LABEL_227:
            v59 = 12;
          }

          _os_log_impl(&dword_277606000, v57, OS_LOG_TYPE_DEFAULT, v58, buf, v59);
          goto LABEL_109;
        }

        if (v135 == 33)
        {
          break;
        }

LABEL_132:
        if (++v36 >= v131)
        {
          goto LABEL_133;
        }
      }

      v37 = v133;
      if (((v133 - 17) >> 4) <= 0xFFEu)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *v148 = "decodeHEVCDecoderConfigurationRecord";
          *&v148[8] = 1024;
          *v149 = v37;
          v56 = MEMORY[0x277D86220];
LABEL_221:
          _os_log_impl(&dword_277606000, v56, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s too many SPS %d", buf, 0x12u);
        }

LABEL_222:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = -12902;
        goto LABEL_61;
      }

      v38 = 0;
      LOBYTE(v125) = v125 + v133;
      while (1)
      {
        if (safeGetShort(v130, &__n[1], &v132, v129))
        {
          goto LABEL_109;
        }

        if (!__n[1])
        {
          break;
        }

        if (__n[1] > v29)
        {
          v29 = __n[1];
        }

        v132 += __n[1];
        if (++v38 >= v133)
        {
          goto LABEL_132;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *v148 = "decodeHEVCDecoderConfigurationRecord";
        v57 = MEMORY[0x277D86220];
        v58 = "AppleAVD: %s SPS size <= 0";
        goto LABEL_227;
      }

LABEL_109:
      v20 = 0;
      v21 = 0;
      v22 = 0;
LABEL_110:
      v23 = -4;
      goto LABEL_61;
    }
  }

LABEL_133:
  v20 = 0;
  v23 = -5;
  if (!v123 || !v26 || (v125 - 17) < 0xF0u || !v29 || (__dst - 65) < 0xC0u)
  {
    v21 = 0;
    v22 = 0;
    goto LABEL_61;
  }

  v21 = 0;
  v22 = 0;
  if (!v28)
  {
    goto LABEL_62;
  }

  *(a1 + 5608) = v123;
  v41 = malloc_type_malloc(v123 * v26, 0x100004077774924uLL);
  v22 = v41;
  if (!v41)
  {
    v20 = 0;
    v21 = 0;
    goto LABEL_212;
  }

  *(a1 + 5232) = v41;
  *(a1 + 5612) = v125;
  v42 = malloc_type_malloc(v125 * v29, 0x100004077774924uLL);
  v21 = v42;
  if (!v42)
  {
    v20 = 0;
    goto LABEL_212;
  }

  *(a1 + 5240) = v42;
  *(a1 + 5616) = __dst;
  v43 = malloc_type_malloc(__dst * v28, 0x100004077774924uLL);
  v20 = v43;
  if (!v43)
  {
LABEL_212:
    v23 = -6;
    goto LABEL_61;
  }

  v118 = a1 + 5256;
  *(a1 + 5248) = v43;
  v133 = 0;
  v134 = *&__n[3];
  v44 = v43;
  v120 = a1 + 5352;
  __dsta = v21;
  v124 = (a1 + 5352);
  v126 = (a1 + 5288);
  v119 = a1 + 5288;
  if (!v137)
  {
LABEL_170:
    if (v130)
    {
      v133 = 0;
      v132 = 6;
      if (v131)
      {
        v51 = 0;
        while (!safeGetByte(v130, &v135, &v132, v129))
        {
          v135 &= 0x3Fu;
          if (safeGetShort(v130, &v133, &v132, v129))
          {
            break;
          }

          if (v135 == 33)
          {
            if (v133)
            {
              v53 = 0;
              while (!safeGetShort(v130, &__n[1], &v132, v129) && __n[1] && v129 >= v132 + __n[1])
              {
                memcpy(__dsta, (v130 + v132), __n[1]);
                v132 += __n[1];
                __dsta += __n[1];
                *v126++ = __n[1];
                if (++v53 >= v133)
                {
                  goto LABEL_190;
                }
              }

              goto LABEL_110;
            }
          }

          else if (v135 == 34 && v133)
          {
            v52 = 0;
            while (!safeGetShort(v130, __n, &v132, v129) && __n[0] && v129 >= v132 + __n[0])
            {
              memcpy(v44, (v130 + v132), __n[0]);
              v132 += __n[0];
              v44 += __n[0];
              *v124++ = __n[0];
              if (++v52 >= v133)
              {
                goto LABEL_190;
              }
            }

            goto LABEL_110;
          }

LABEL_190:
          if (++v51 >= v131)
          {
            goto LABEL_191;
          }
        }

        goto LABEL_110;
      }
    }

LABEL_191:
    v54 = *(a1 + 5624);
    switch(v54)
    {
      case 1:
        v55 = 3;
        break;
      case 4:
        v55 = 5;
        break;
      case 2:
        v55 = 4;
        break;
      default:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v148 = v54;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD:  ERROR:  kJVTLibCompressedDataFormat_WrappedNALU_* :: NOT SUPPORTED, storage->naluLengthSize %d", buf, 8u);
        }

        v16 = 4294954386;
        goto LABEL_261;
    }

    *(a1 + 5620) = v55;
    v60 = *(a1 + 5608);
    if (v60)
    {
      v61 = 0;
      v62 = (a1 + 5256);
      do
      {
        v63 = *v62++;
        v61 += v63;
        --v60;
      }

      while (v60);
    }

    else
    {
      v61 = 0;
    }

    v64 = *(a1 + 5612);
    if (v64)
    {
      v65 = (a1 + 5288);
      do
      {
        v66 = *v65++;
        v61 += v66;
        --v64;
      }

      while (v64);
    }

    v67 = *(a1 + 5616);
    if (v67)
    {
      v68 = (a1 + 5352);
      do
      {
        v69 = *v68++;
        v61 += v69;
        --v67;
      }

      while (v67);
    }

    v70 = *(a1 + 5632);
    if (v70)
    {
      free(v70);
    }

    v71 = malloc_type_malloc(v61 + 1024, 0x100004077774924uLL);
    *(a1 + 5632) = v71;
    if (v71)
    {
      v72 = *(a1 + 5620);
      switch(v72)
      {
        case 3:
          if (*(a1 + 5608))
          {
            v79 = 0;
            v80 = 0;
            v81 = *v24;
            do
            {
              v82 = (v118 + 4 * v79);
              v83 = *v82;
              v84 = v80 + v83 + 1;
              memcpy((*(a1 + 5632) + v80 + 1), v81, v83);
              *(*(a1 + 5632) + v80) = *(v82 + 3);
              v81 += *v82;
              ++v79;
              v80 = v84;
            }

            while (v79 < *(a1 + 5608));
          }

          else
          {
            v84 = 0;
          }

          if (*(a1 + 5612))
          {
            v97 = 0;
            v98 = *(a1 + 5240);
            do
            {
              v99 = *(v119 + 4 * v97);
              v100 = v84 + v99 + 1;
              memcpy((*(a1 + 5632) + v84 + 1), v98, v99);
              *(*(a1 + 5632) + v84) = *(v119 + 4 * v97);
              v98 += *(v119 + 4 * v97++);
              v84 = v100;
            }

            while (v97 < *(a1 + 5612));
          }

          else
          {
            v100 = v84;
          }

          if (*(a1 + 5616))
          {
            v110 = 0;
            v111 = *(a1 + 5248);
            do
            {
              v112 = *(v120 + 4 * v110);
              v109 = v100 + v112 + 1;
              memcpy((*(a1 + 5632) + v100 + 1), v111, v112);
              *(*(a1 + 5632) + v100) = *(v120 + 4 * v110);
              v111 += *(v120 + 4 * v110++);
              v100 = v109;
            }

            while (v110 < *(a1 + 5616));
          }

          else
          {
            v109 = v100;
          }

          v116 = 0x1000000;
          break;
        case 4:
          if (*(a1 + 5608))
          {
            v85 = 0;
            v86 = 0;
            v87 = *v24;
            do
            {
              v88 = (v118 + 4 * v85);
              v89 = *v88;
              v90 = v86 + v89 + 2;
              memcpy((*(a1 + 5632) + v86 + 2), v87, v89);
              *(*(a1 + 5632) + v86) = *(v88 + 3);
              *(*(a1 + 5632) + v86 + 1) = *(v88 + 1);
              v87 += *v88;
              ++v85;
              v86 = v90;
            }

            while (v85 < *(a1 + 5608));
          }

          else
          {
            v90 = 0;
          }

          if (*(a1 + 5612))
          {
            v101 = 0;
            v102 = *(a1 + 5240);
            do
            {
              v103 = *(v119 + 4 * v101);
              v104 = v90 + v103 + 2;
              memcpy((*(a1 + 5632) + v90 + 2), v102, v103);
              *(*(a1 + 5632) + v90) = BYTE1(*(v119 + 4 * v101));
              *(*(a1 + 5632) + v90 + 1) = *(v119 + 4 * v101);
              v102 += *(v119 + 4 * v101++);
              v90 = v104;
            }

            while (v101 < *(a1 + 5612));
          }

          else
          {
            v104 = v90;
          }

          if (*(a1 + 5616))
          {
            v113 = 0;
            v114 = *(a1 + 5248);
            do
            {
              v115 = *(v120 + 4 * v113);
              v109 = v104 + v115 + 2;
              memcpy((*(a1 + 5632) + v104 + 2), v114, v115);
              *(*(a1 + 5632) + v104) = BYTE1(*(v120 + 4 * v113));
              *(*(a1 + 5632) + v104 + 1) = *(v120 + 4 * v113);
              v114 += *(v120 + 4 * v113++);
              v104 = v109;
            }

            while (v113 < *(a1 + 5616));
          }

          else
          {
            v109 = v104;
          }

          v116 = 0x2000000;
          break;
        case 5:
          if (*(a1 + 5608))
          {
            v73 = 0;
            v74 = 0;
            v75 = *v24;
            do
            {
              v76 = (v118 + 4 * v73);
              v77 = *v76;
              v78 = v74 + v77 + 4;
              memcpy((*(a1 + 5632) + v74 + 4), v75, v77);
              *(*(a1 + 5632) + v74) = *(v76 + 3);
              *(*(a1 + 5632) + v74 + 1) = *(v76 + 1);
              *(*(a1 + 5632) + v74 + 2) = BYTE1(*v76);
              *(*(a1 + 5632) + v74 + 3) = *v76;
              v75 += *v76;
              ++v73;
              v74 = v78;
            }

            while (v73 < *(a1 + 5608));
          }

          else
          {
            v78 = 0;
          }

          if (*(a1 + 5612))
          {
            v92 = 0;
            v93 = *(a1 + 5240);
            do
            {
              v94 = (v119 + 4 * v92);
              v95 = *v94;
              v96 = v78 + v95 + 4;
              memcpy((*(a1 + 5632) + v78 + 4), v93, v95);
              *(*(a1 + 5632) + v78) = *(v94 + 3);
              *(*(a1 + 5632) + v78 + 1) = *(v94 + 1);
              *(*(a1 + 5632) + v78 + 2) = BYTE1(*v94);
              *(*(a1 + 5632) + v78 + 3) = *v94;
              v93 += *v94;
              ++v92;
              v78 = v96;
            }

            while (v92 < *(a1 + 5612));
          }

          else
          {
            v96 = v78;
          }

          if (*(a1 + 5616))
          {
            v105 = 0;
            v106 = *(a1 + 5248);
            do
            {
              v107 = (v120 + 4 * v105);
              v108 = *v107;
              v109 = v96 + v108 + 4;
              memcpy((*(a1 + 5632) + v96 + 4), v106, v108);
              *(*(a1 + 5632) + v96) = *(v107 + 3);
              *(*(a1 + 5632) + v96 + 1) = *(v107 + 1);
              *(*(a1 + 5632) + v96 + 2) = BYTE1(*v107);
              *(*(a1 + 5632) + v96 + 3) = *v107;
              v106 += *v107;
              ++v105;
              v96 = v109;
            }

            while (v105 < *(a1 + 5616));
          }

          else
          {
            v109 = v96;
          }

          v116 = 0x4000000;
          break;
        default:
          v91 = 0;
LABEL_317:
          v16 = 0;
          *(a1 + 5640) = v91;
          v3 = v24;
          goto LABEL_21;
      }

      v91 = v116 & 0xFF000000 | v109 & 0xFFFFFF;
      goto LABEL_317;
    }

    v16 = 4294954392;
LABEL_261:
    v3 = v24;
    goto LABEL_19;
  }

  v117 = 0;
  v45 = (a1 + 5256);
  v124 = (a1 + 5352);
  v126 = (a1 + 5288);
  v46 = v22;
  __dsta = v21;
  v44 = v43;
  while (1)
  {
    if (safeGetByte(v127, &v135, &v134, v128))
    {
      v23 = -34;
      goto LABEL_61;
    }

    v135 &= 0x3Fu;
    if (safeGetShort(v127, &v133, &v134, v128))
    {
      v23 = -35;
      goto LABEL_61;
    }

    if (v135 == 32)
    {
      break;
    }

    if (v135 == 33)
    {
      if (v133)
      {
        v50 = 0;
        while (!safeGetShort(v127, &__n[1], &v134, v128))
        {
          if (!__n[1] || v128 < v134 + __n[1])
          {
            v23 = -39;
            goto LABEL_61;
          }

          memcpy(__dsta, (v127 + v134), __n[1]);
          v134 += __n[1];
          __dsta += __n[1];
          *v126++ = __n[1];
          if (++v50 >= v133)
          {
            goto LABEL_169;
          }
        }

        v23 = -38;
        goto LABEL_61;
      }
    }

    else if (v135 == 34 && v133)
    {
      v47 = 0;
      while (1)
      {
        if (safeGetShort(v127, __n, &v134, v128))
        {
          v23 = -40;
          goto LABEL_61;
        }

        v48 = __n[0];
        if (!__n[0] || v128 < v134 + __n[0])
        {
          break;
        }

        memcpy(v44, (v127 + v134), __n[0]);
        v134 += __n[0];
        v44 += __n[0];
        *v124++ = __n[0];
        if (++v47 >= v133)
        {
          goto LABEL_169;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *v148 = v48;
        *&v148[4] = 1024;
        *&v148[6] = v134;
        *v149 = 2048;
        *&v149[2] = v128;
        v150 = 1024;
        v151 = v47;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ppsNALUAndRBSPSize %d size1 %d configRecordSize %zu i %d\n", buf, 0x1Eu);
      }

      v23 = -41;
      goto LABEL_61;
    }

LABEL_169:
    if (++v117 >= v137)
    {
      goto LABEL_170;
    }
  }

  if (!v133)
  {
    goto LABEL_169;
  }

  v49 = 0;
  while (!safeGetShort(v127, &__n[2], &v134, v128))
  {
    if (!__n[2] || v128 < v134 + __n[2])
    {
      v23 = -37;
      goto LABEL_61;
    }

    memcpy(v46, (v127 + v134), __n[2]);
    v134 += __n[2];
    v46 += __n[2];
    *v45++ = __n[2];
    if (++v49 >= v133)
    {
      goto LABEL_169;
    }
  }

  v23 = -36;
LABEL_61:
  v3 = v24;
LABEL_62:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v148 = "decodeHEVCDecoderConfigurationRecord";
    *&v148[8] = 1024;
    *v149 = v23;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

  if (v22)
  {
    free(v22);
    *v3 = 0;
  }

  if (v21)
  {
    free(v21);
    *(a1 + 5240) = 0;
  }

  if (v20)
  {
    free(v20);
    *(a1 + 5248) = 0;
  }

  v16 = 4294967292;
LABEL_17:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v148 = "SeqAndPicParamSetFromImageDescExt";
    *&v148[8] = 1024;
    *v149 = v16;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

LABEL_19:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v148 = "CreateHeaderBuffer";
    *&v148[8] = 1024;
    *v149 = v16;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

LABEL_21:
  if (*v3)
  {
    free(*v3);
  }

  *(a1 + 5232) = 0;
  v17 = *(a1 + 5240);
  if (v17)
  {
    free(v17);
  }

  *(a1 + 5240) = 0;
  v18 = *(a1 + 5248);
  if (v18)
  {
    free(v18);
  }

  *(a1 + 5248) = 0;
  return v16;
}

uint64_t CreateHeaderBuffer_1(uint64_t a1, CMFormatDescriptionRef desc)
{
  v90 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 5232);
  Extension = CMFormatDescriptionGetExtension(desc, *MEMORY[0x277CC03B0]);
  if (!Extension || (v5 = Extension, TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(v5)) || (Value = CFDictionaryGetValue(v5, @"avcC")) == 0 || (ValueAtIndex = Value, v9 = CFArrayGetTypeID(), v9 == CFGetTypeID(ValueAtIndex)) && (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) == 0 || (v10 = CFDataGetTypeID(), v10 != CFGetTypeID(ValueAtIndex)))
  {
    v15 = 4294958325;
LABEL_21:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v87 = "SeqAndPicParamSetFromImageDescExt";
      v88 = 1024;
      v89 = v15;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_H264VideoDecoder ERROR: SeqAndPicParamSetFromImageDescExt returned error", buf, 2u);
    }

    goto LABEL_25;
  }

  BytePtr = CFDataGetBytePtr(ValueAtIndex);
  Length = CFDataGetLength(ValueAtIndex);
  v85 = 1;
  v84 = 0;
  v83 = 0;
  v82 = -1;
  v81 = -31;
  v80 = 0;
  __n = 0;
  *v3 = 0;
  v3[1] = 0;
  if (safeGetByte(BytePtr, &v85, &__n + 1, Length))
  {
    goto LABEL_13;
  }

  if (safeGetByte(BytePtr, &v84, &__n + 1, Length))
  {
    goto LABEL_13;
  }

  if (safeGetByte(BytePtr, &v83 + 1, &__n + 1, Length))
  {
    goto LABEL_13;
  }

  if (safeGetByte(BytePtr, &v83, &__n + 1, Length))
  {
    goto LABEL_13;
  }

  if (safeGetByte(BytePtr, &v82, &__n + 1, Length))
  {
    goto LABEL_13;
  }

  *(a1 + 6412) = (v82 & 3) + 1;
  if (safeGetByte(BytePtr, &v81, &__n + 1, Length))
  {
    goto LABEL_13;
  }

  v78 = HIDWORD(__n);
  v18 = v81 & 0x1F;
  *(a1 + 6400) = v18;
  if (v18)
  {
    LODWORD(v19) = 0;
    while (!safeGetShort(BytePtr, &__n + 1, &v78, Length) && WORD1(__n) && Length >= v78 + WORD1(__n))
    {
      v19 = v19 + WORD1(__n);
      v78 += WORD1(__n);
      if (!--v18)
      {
        v77 = v3;
        goto LABEL_40;
      }
    }

LABEL_13:
    v13 = 0;
    v14 = 0;
    v15 = 4294967292;
LABEL_14:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v87 = "JVTLibCompDecodeAVCDecoderConfigurationRecord";
      v88 = 1024;
      v89 = v15;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
    }

    if (v13)
    {
      free(v13);
      *v3 = 0;
    }

    if (v14)
    {
      free(v14);
      *(a1 + 5240) = 0;
    }

    goto LABEL_21;
  }

  v77 = v3;
  v19 = 0;
LABEL_40:
  v20 = malloc_type_malloc(v19, 0x100004077774924uLL);
  v13 = v20;
  if (!v20)
  {
    v14 = 0;
    goto LABEL_51;
  }

  v21 = a1 + 5248;
  *(a1 + 5232) = v20;
  v22 = *(a1 + 6400);
  if (v22)
  {
    v23 = (a1 + 5248);
    v24 = v20;
    while (!safeGetShort(BytePtr, &__n + 1, &__n + 1, Length) && WORD1(__n) && Length >= HIDWORD(__n) + WORD1(__n))
    {
      memcpy(v24, &BytePtr[HIDWORD(__n)], WORD1(__n));
      HIDWORD(__n) += WORD1(__n);
      v24 += WORD1(__n);
      *v23++ = WORD1(__n);
      if (!--v22)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_48;
  }

LABEL_47:
  if (safeGetByte(BytePtr, &v80, &__n + 1, Length))
  {
LABEL_48:
    v14 = 0;
LABEL_49:
    v15 = 4294967292;
LABEL_52:
    v3 = v77;
    goto LABEL_14;
  }

  v25 = v80;
  *(a1 + 6404) = v80;
  v78 = HIDWORD(__n);
  if (v25)
  {
    LODWORD(v26) = 0;
    while (!safeGetShort(BytePtr, &__n, &v78, Length) && __n && Length >= v78 + __n)
    {
      v26 = v26 + __n;
      --v80;
      v78 += __n;
      if (!v80)
      {
        goto LABEL_61;
      }
    }

    goto LABEL_48;
  }

  v26 = 0;
LABEL_61:
  v27 = malloc_type_malloc(v26, 0x100004077774924uLL);
  v14 = v27;
  if (!v27)
  {
LABEL_51:
    v15 = 4294967290;
    goto LABEL_52;
  }

  v28 = a1 + 5376;
  *(a1 + 5240) = v27;
  v80 = *(a1 + 6404);
  if (v80)
  {
    v29 = (a1 + 5376);
    v30 = v27;
    while (!safeGetShort(BytePtr, &__n, &__n + 1, Length) && __n && Length >= HIDWORD(__n) + __n)
    {
      memcpy(v30, &BytePtr[HIDWORD(__n)], __n);
      v31 = __n;
      v30 += __n;
      *v29++ = __n;
      --v80;
      HIDWORD(__n) += v31;
      if (!v80)
      {
        goto LABEL_68;
      }
    }

    goto LABEL_49;
  }

LABEL_68:
  v32 = *(a1 + 6412);
  switch(v32)
  {
    case 1:
      v33 = 3;
      break;
    case 4:
      v33 = 5;
      break;
    case 2:
      v33 = 4;
      break;
    default:
      v15 = 4294954386;
      goto LABEL_94;
  }

  *(a1 + 6408) = v33;
  v34 = *(a1 + 6400);
  if (v34)
  {
    v35 = 0;
    v36 = *(a1 + 6400);
    v37 = (a1 + 5248);
    do
    {
      v38 = *v37++;
      v35 += v38;
      --v36;
    }

    while (v36);
  }

  else
  {
    v35 = 0;
  }

  v39 = v35 + v34 * v32;
  v40 = *(a1 + 6404);
  if (v40)
  {
    v41 = *(a1 + 6404);
    v42 = (a1 + 5376);
    do
    {
      v43 = *v42++;
      v39 += v43;
      --v41;
    }

    while (v41);
  }

  v44 = v40 * v32;
  v45 = *(a1 + 6416);
  if (v45)
  {
    free(v45);
  }

  v46 = malloc_type_malloc(v39 + v44 + 1024, 0x100004077774924uLL);
  *(a1 + 6416) = v46;
  if (v46)
  {
    v47 = *(a1 + 6408);
    switch(v47)
    {
      case 3:
        if (*(a1 + 6400))
        {
          v59 = 0;
          v60 = 0;
          v61 = *v77;
          do
          {
            v62 = *(v21 + 4 * v59);
            v63 = v60 + v62 + 1;
            memcpy((*(a1 + 6416) + v60 + 1), v61, v62);
            *(*(a1 + 6416) + v60) = *(v21 + 4 * v59);
            v61 += *(v21 + 4 * v59++);
            v60 = v63;
          }

          while (v59 < *(a1 + 6400));
        }

        else
        {
          v63 = 0;
        }

        if (*(a1 + 6404))
        {
          v74 = 0;
          v75 = *(a1 + 5240);
          do
          {
            v76 = *(v28 + 4 * v74);
            v68 = v63 + v76 + 1;
            memcpy((*(a1 + 6416) + v63 + 1), v75, v76);
            *(*(a1 + 6416) + v63) = *(v28 + 4 * v74);
            v75 += *(v28 + 4 * v74++);
            v63 = v68;
          }

          while (v74 < *(a1 + 6404));
        }

        else
        {
          v68 = v63;
        }

        v69 = 0x1000000;
        break;
      case 4:
        if (*(a1 + 6400))
        {
          v54 = 0;
          v55 = 0;
          v56 = *v77;
          do
          {
            v57 = *(v21 + 4 * v54);
            v58 = v55 + v57 + 2;
            memcpy((*(a1 + 6416) + v55 + 2), v56, v57);
            *(*(a1 + 6416) + v55) = BYTE1(*(v21 + 4 * v54));
            *(*(a1 + 6416) + v55 + 1) = *(v21 + 4 * v54);
            v56 += *(v21 + 4 * v54++);
            v55 = v58;
          }

          while (v54 < *(a1 + 6400));
        }

        else
        {
          v58 = 0;
        }

        if (*(a1 + 6404))
        {
          v65 = 0;
          v66 = *(a1 + 5240);
          do
          {
            v67 = *(v28 + 4 * v65);
            v68 = v58 + v67 + 2;
            memcpy((*(a1 + 6416) + v58 + 2), v66, v67);
            *(*(a1 + 6416) + v58) = BYTE1(*(v28 + 4 * v65));
            *(*(a1 + 6416) + v58 + 1) = *(v28 + 4 * v65);
            v66 += *(v28 + 4 * v65++);
            v58 = v68;
          }

          while (v65 < *(a1 + 6404));
        }

        else
        {
          v68 = v58;
        }

        v69 = 0x2000000;
        break;
      case 5:
        if (*(a1 + 6400))
        {
          v48 = 0;
          v49 = 0;
          v50 = *v77;
          do
          {
            v51 = (v21 + 4 * v48);
            v52 = *v51;
            v53 = v49 + v52 + 4;
            memcpy((*(a1 + 6416) + v49 + 4), v50, v52);
            *(*(a1 + 6416) + v49) = *(v51 + 3);
            *(*(a1 + 6416) + v49 + 1) = *(v51 + 1);
            *(*(a1 + 6416) + v49 + 2) = BYTE1(*v51);
            *(*(a1 + 6416) + v49 + 3) = *v51;
            v50 += *v51;
            ++v48;
            v49 = v53;
          }

          while (v48 < *(a1 + 6400));
        }

        else
        {
          v53 = 0;
        }

        if (*(a1 + 6404))
        {
          v70 = 0;
          v71 = *(a1 + 5240);
          do
          {
            v72 = (v28 + 4 * v70);
            v73 = *v72;
            v68 = v53 + v73 + 4;
            memcpy((*(a1 + 6416) + v53 + 4), v71, v73);
            *(*(a1 + 6416) + v53) = *(v72 + 3);
            *(*(a1 + 6416) + v53 + 1) = *(v72 + 1);
            *(*(a1 + 6416) + v53 + 2) = BYTE1(*v72);
            *(*(a1 + 6416) + v53 + 3) = *v72;
            v71 += *v72;
            ++v70;
            v53 = v68;
          }

          while (v70 < *(a1 + 6404));
        }

        else
        {
          v68 = v53;
        }

        v69 = 0x4000000;
        break;
      default:
        v64 = 0;
LABEL_126:
        v15 = 0;
        *(a1 + 6424) = v64;
        v3 = v77;
        goto LABEL_27;
    }

    v64 = v69 & 0xFF000000 | v68 & 0xFFFFFF;
    goto LABEL_126;
  }

  v15 = 4294954392;
LABEL_94:
  v3 = v77;
LABEL_25:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v87 = "CreateHeaderBuffer";
    v88 = 1024;
    v89 = v15;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

LABEL_27:
  if (*v3)
  {
    free(*v3);
  }

  *(a1 + 5232) = 0;
  v16 = *(a1 + 5240);
  if (v16)
  {
    free(v16);
  }

  *(a1 + 5240) = 0;
  return v15;
}

uint64_t AppleAVDWrapperHEVCDecoderCreateInstance(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetClassID();
  v4 = CMDerivedObjectCreate();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "AppleAVDWrapperHEVCDecoderCreateInstance";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): FigDerivedObjectCreate failed", buf, 0xCu);
  }

  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "AppleAVDWrapperHEVCDecoderCreateInstance";
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

  *a3 = 0;
  return v4;
}

uint64_t AppleAVDWrapperHEVCDecoderStartTileSession(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v35 = 0;
  cf = 0;
  v55[0] = 875704438;
  v34 = 1;
  pixelBufferOut = 0;
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "AppleAVDWrapperHEVCDecoderStartTileSession";
      v8 = MEMORY[0x277D86220];
      v9 = "AppleAVD: ERROR: %s no instance storage!";
      v10 = 12;
      goto LABEL_7;
    }

    return 4294954387;
  }

  v6 = DerivedStorage;
  v7 = *(DerivedStorage + 5204);
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AppleAVDWrapperHEVCDecoderStartTileSession";
      *&buf[12] = 1024;
      *&buf[14] = v7;
      v8 = MEMORY[0x277D86220];
      v9 = "AppleAVD: %s ERROR: pluginState isn't kPluginCreated, is %d";
      v10 = 18;
LABEL_7:
      _os_log_impl(&dword_277606000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, v10);
      return 4294954387;
    }

    return 4294954387;
  }

  v54 = 0;
  v12 = (DerivedStorage + 16848);
  v13 = (DerivedStorage + 5201);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  memset(buf, 0, sizeof(buf));
  readPreferences(buf);
  v14 = buf[12];
  *(v6 + 16872) = DWORD1(v53);
  pthread_mutex_init((v6 + 5648), 0);
  pthread_mutex_lock((v6 + 5648));
  *(v6 + 8) = a2;
  *(v6 + 16) = 1;
  FigFormatDescriptionRelease();
  v15 = FigFormatDescriptionRetain();
  *(v6 + 24) = v15;
  Dimensions = CMVideoFormatDescriptionGetDimensions(v15);
  v17 = Dimensions;
  v18 = HIDWORD(Dimensions);
  *(v6 + 5212) = Dimensions;
  *(v6 + 5208) = 1;
  *(v6 + 5632) = 0;
  *(v6 + 5644) = 0;
  *(v6 + 16865) = 1;
  *v12 = 0;
  *(v6 + 16856) = 0;
  *(v6 + 16860) = 0;
  *(v6 + 16869) = DWORD2(v52) != 0;
  *(v6 + 16876) = HIDWORD(v54);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 136316418;
    v38 = "AppleAVDWrapperHEVCDecoderStartTileSession";
    v39 = 1024;
    v40 = v17;
    v41 = 1024;
    v42 = v18;
    v43 = 2048;
    v44 = v6;
    v45 = 2080;
    v46 = "06:37:33";
    v47 = 2080;
    v48 = "Oct 23 2025";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() codecType: HEVC, %d x %d, session: %p, built %s %s", v37, 0x36u);
  }

  HeaderBuffer_0 = CreateHeaderBuffer_0(v6, a3);
  if (HeaderBuffer_0)
  {
    v11 = HeaderBuffer_0;
    Mutable = 0;
    goto LABEL_34;
  }

  AVDHEVCInstance = CreateAVDHEVCInstance(v6, v14);
  if (AVDHEVCInstance)
  {
    v22 = AVDHEVCInstance;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCVideoDecoder ERROR: CreateAVDHEVCInstance returned error", v37, 2u);
    }

    if (*(v6 + 5204) != 1)
    {
      ReleaseHeaderBufferAndCloseFileIO(v6);
    }

    Mutable = 0;
    if (v22 == -536870210)
    {
      v11 = 4294954383;
    }

    else
    {
      v11 = 4294954385;
    }

    goto LABEL_34;
  }

  if (*(v6 + 8028))
  {
    DumpHevcStream(v6);
  }

  else
  {
    *(v6 + 8064) = 0;
    *(v6 + 8048) = 0u;
    *(v6 + 8032) = 0u;
  }

  v23 = *(v6 + 5745);
  if ((v23 | 2) != 2 || v23 != *(v6 + 5746))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(v6 + 5746);
      *v37 = 136315650;
      v38 = "AppleAVDWrapperHEVCDecoderStartTileSession";
      v39 = 1024;
      v40 = v23;
      v41 = 1024;
      v42 = v29;
      v26 = MEMORY[0x277D86220];
      v27 = "AppleAVD: ERROR: %s(): invalid bit depth [luma depth minus 8 = %d, chroma depth minus 8 = %d]\n";
      v28 = 24;
      goto LABEL_31;
    }

LABEL_32:
    Mutable = 0;
LABEL_33:
    v11 = 4294954385;
LABEL_34:
    FigFormatDescriptionRelease();
    *(v6 + 24) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 136315394;
      v38 = "AppleAVDWrapperHEVCDecoderStartTileSession";
      v39 = 1024;
      v40 = v11;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", v37, 0x12u);
    }

    goto LABEL_36;
  }

  createPixelFormatList(v23, *(v6 + 5744), *(v6 + 5801), 1, v55, &v34, 0, *(v6 + 5220), 0, 0, 0, 0);
  v24 = *(v6 + 5712);
  *(v6 + 5224) = v24;
  v25 = *(v6 + 5716);
  *(v6 + 5228) = v25;
  if (CreateDispPixelBufferAttributesDictionary(*(v6 + 5220), v17, v18, v24, v25, v55, v34, 0, &cf))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      v26 = MEMORY[0x277D86220];
      v27 = "AppleAVD: AppleAVD_HEVCVideoDecoder ERROR: CreateDispPixelBufferAttributesDictionary failed";
      v28 = 2;
LABEL_31:
      _os_log_impl(&dword_277606000, v26, OS_LOG_TYPE_DEFAULT, v27, v37, v28);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  setSIntValue(Mutable, *MEMORY[0x277CE2AF0], 8);
  setSIntValue(Mutable, *MEMORY[0x277CE2AE8], 8);
  setSIntValue(Mutable, *MEMORY[0x277CE2AE0], 64);
  setSIntValue(Mutable, *MEMORY[0x277CE2AB0], 0x10000);
  setSIntValue(Mutable, *MEMORY[0x277CE2AD0], 64);
  setSIntValue(Mutable, *MEMORY[0x277CE2AB8], 0x10000);
  setSIntValue(Mutable, *MEMORY[0x277CE2AD8], 64);
  setSIntValue(Mutable, *MEMORY[0x277CE2AA0], 262080);
  setSIntValue(Mutable, *MEMORY[0x277CE2AC8], 64);
  setSIntValue(Mutable, *MEMORY[0x277CE2AC0], 64);
  VTTileDecoderSessionSetTileDecodeRequirements();
  if (CreateUncompressedPixelBufferAttributesDictionary(*(v6 + 5220), *(v6 + 5224), *(v6 + 5228), *(v6 + 5224), *(v6 + 5228), v55, v34, 0, &v35))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *v37 = 0;
    v31 = MEMORY[0x277D86220];
    v32 = "AppleAVD: AppleAVD_HEVCVideoDecoder ERROR: CreatePixelBufferAttributesDictionary failed";
LABEL_50:
    _os_log_impl(&dword_277606000, v31, OS_LOG_TYPE_DEFAULT, v32, v37, 2u);
    goto LABEL_33;
  }

  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], *(v6 + 5224), *(v6 + 5228), v55[0], v35, &pixelBufferOut))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *v37 = 0;
    v31 = MEMORY[0x277D86220];
    v32 = "AppleAVD: AppleAVD_HEVCVideoDecoder ERROR: CVPixelBufferCreate failed";
    goto LABEL_50;
  }

  if (AppleAVDSetParameter(*(v6 + 5184), 28, pixelBufferOut))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCVideoDecoder ERROR: AppleAVDSetParameter:kAppleAVDSetTileCVPixelBufRefDecode failed", v37, 2u);
    }

    if (pixelBufferOut)
    {
      CVPixelBufferRelease(pixelBufferOut);
    }

    goto LABEL_33;
  }

  v11 = 0;
  *v13 = 1;
  *(v6 + 5204) = 2;
LABEL_36:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v35)
  {
    CFRelease(v35);
    v35 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  pthread_mutex_unlock((v6 + 5648));
  return v11;
}

uint64_t safeGetByte(uint64_t a1, _BYTE *a2, _DWORD *a3, unint64_t a4)
{
  v4 = *a3;
  if ((v4 + 1) > a4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = *(a1 + v4);
  ++*a3;
  return result;
}

uint64_t AppleAVDCreateDecodeDeviceInternal(uint64_t a1, unsigned __int8 a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, int a7, int a8)
{
  v58 = *MEMORY[0x277D85DE8];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v10 = a1 + 1020;
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  v57 = 0;
  v47 = 0u;
  memset(v46, 0, sizeof(v46));
  v45 = 0u;
  memset(outputStruct, 0, sizeof(outputStruct));
  outputStructCnt = 192;
  inputStruct = __PAIR64__(a4, a3);
  BYTE9(v55) = *(a1 + 968);
  *&v56 = a5;
  DWORD2(v56) = *(a1 + 972);
  v11 = *(a1 + 1432);
  v49 = a6;
  v50 = v11;
  v51 = *(a1 + 3724);
  v12 = *(a1 + 988);
  if (*(a1 + 992))
  {
    v13 = 1;
  }

  else
  {
    v13 = *(a1 + 988);
  }

  LOBYTE(v52) = v13;
  BYTE6(v52) = v12;
  v14 = *(a1 + 1016);
  v53[31] = *v10;
  BYTE7(v52) = *(a1 + 1028);
  v15 = *(a1 + 1460);
  *(&v53[1] + 4) = *(a1 + 1032);
  *(&v53[2] + 4) = *(a1 + 1040);
  v16 = *(a1 + 1056);
  v17 = *(a1 + 1072);
  v18 = *(a1 + 1088);
  *(&v53[10] + 4) = *(a1 + 1104);
  *(&v53[8] + 4) = v18;
  *(&v53[6] + 4) = v17;
  *(&v53[4] + 4) = v16;
  *(&v53[12] + 4) = *(a1 + 1120);
  BYTE8(v52) = *(a1 + 3718);
  BYTE9(v52) = *(a1 + 3720);
  v19 = *(a1 + 3732);
  HIDWORD(v53[0]) = v14;
  HIDWORD(v52) = v19;
  v20 = *(a1 + 1136);
  v21 = *(a1 + 1152);
  v22 = *(a1 + 1168);
  *(&v53[20] + 4) = *(a1 + 1184);
  *(&v53[18] + 4) = v22;
  *(&v53[16] + 4) = v21;
  *(&v53[14] + 4) = v20;
  v23 = *(a1 + 1200);
  v24 = *(a1 + 1216);
  *(&v53[26] + 4) = *(a1 + 1232);
  *(&v53[24] + 4) = v24;
  *(&v53[22] + 4) = v23;
  *(&v53[28] + 4) = *(a1 + 1248);
  BYTE2(v52) = 1;
  v25 = *(a1 + 232);
  HIDWORD(v53[30]) = v15;
  LODWORD(v53[1]) = v25;
  if (*(a1 + 1268) == 2)
  {
    BYTE5(v52) = 1;
  }

  if (*(a1 + 240) || *(a1 + 768))
  {
    BYTE2(v52) = 0;
  }

  BYTE3(v52) = *(a1 + 853) & 1;
  BYTE4(v52) = a7 != 0;
  LODWORD(v54) = *(a1 + 48);
  DWORD1(v54) = *(a1 + 56);
  BYTE8(v54) = *(a1 + 3800);
  if (*(a1 + 228) == 4)
  {
    BYTE2(v52) = 1;
    HIDWORD(v54) = a8;
  }

  LOBYTE(v55) = *(a1 + 3820);
  BYTE1(v55) = *(a1 + 3832);
  DWORD1(v55) = *(a1 + 3888);
  BYTE8(v55) = *(a1 + 3852);
  HIDWORD(v56) = *(a1 + 3916);
  LOBYTE(v57) = *(a1 + 3588) != 0;
  v26 = IOConnectCallStructMethod(*a1, 0, &inputStruct, 0x160uLL, outputStruct, &outputStructCnt);
  if (v26)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v41 = "AppleAVDCreateDecodeDeviceInternal";
      v42 = 1024;
      v43 = v26;
      v27 = MEMORY[0x277D86220];
      v28 = "AppleAVD: %s(): failed error: %d \n";
      v29 = 18;
LABEL_14:
      _os_log_impl(&dword_277606000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, v29);
    }
  }

  else
  {
    LOBYTE(v53[0]) = BYTE12(v47);
    *(a1 + 3896) = *(&v45 + 1);
    v30 = operator new(0x18A0uLL, MEMORY[0x277D826F0]);
    v31 = v30;
    if (v30)
    {
      AppleAVDCommandBuilder::AppleAVDCommandBuilder(v30, v46[0].i32[0], a2);
    }

    *(a1 + 3824) = v31;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v41 = "AppleAVDCreateDecodeDeviceInternal";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: INFO: %s(): Allocating new AppleAVDCommandBuilder\n", buf, 0xCu);
      v31 = *(a1 + 3824);
    }

    if (!v31)
    {
      v26 = 3758097084;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v26;
      }

      *buf = 136315138;
      v41 = "AppleAVDCreateDecodeDeviceInternal";
      v27 = MEMORY[0x277D86220];
      v28 = "AppleAVD: ERROR: %s(): Allocating new AppleAVDCommandBuilder failed\n";
      v29 = 12;
      goto LABEL_14;
    }

    if (AppleAVDCommandBuilder::createDecoder(v31, &inputStruct, outputStruct, a1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v41 = "AppleAVDCreateDecodeDeviceInternal";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): failed cmdBuilder->createDecoder!\n", buf, 0xCu);
      }

      v33 = *(a1 + 3824);
      if (v33)
      {
        AppleAVDCommandBuilder::~AppleAVDCommandBuilder(v33);
        MEMORY[0x277CAEC20]();
      }

      v26 = 3758097084;
      *(a1 + 3824) = 0;
    }

    else
    {
      if (v46[2].u8[8] > 3uLL)
      {
        v32 = 0uLL;
      }

      else
      {
        v32.i32[0] = dword_27775DC80[v46[2].u8[8]];
        v32.i32[1] = dword_27775DC70[v46[2].u8[8]];
      }

      *(a1 + 776) = v46[0].i32[0];
      *(a1 + 1440) = vmulq_s32(vextq_s8(v46[1], v46[1], 8uLL), vzip1q_s32(v32, v32));
      *(a1 + 196) = v47;
      *(v10 + 2716) = *(outputStruct + 8);
      *(a1 + 969) = BYTE4(v47) ^ 1;
      if (MGGetBoolAnswer())
      {
        *(a1 + 984) = DWORD2(v47);
      }

      v26 = 0;
      if ((*(a1 + 228) - 1) <= 3)
      {
        v34 = outputStruct[0];
        *(a1 + 232) = outputStruct[0];
        v46[2].i8[11] = v34;
        *(a1 + 952) = v46[6].i64[1];
        v35 = *(&v46[1] + 8);
        *(a1 + 856) = *(v46 + 8);
        *(a1 + 872) = v35;
        v36 = *(&v46[3] + 8);
        v37 = *(&v46[5] + 8);
        *(a1 + 920) = *(&v46[4] + 8);
        *(a1 + 936) = v37;
        *(a1 + 888) = *(&v46[2] + 8);
        *(a1 + 904) = v36;
      }
    }
  }

  return v26;
}

void CAVDHevcDecoder::CAVDHevcDecoder(CAVDHevcDecoder *this, void *a2, int a3, int a4)
{
  CAVDDecoder::CAVDDecoder(this, a2, a3);
  *v7 = &unk_288665968;
  *(v7 + 8608) = 0;
  *(v7 + 9128) = 0;
  v8 = (v7 + 8344);
  *(v7 + 2960) = 0;
  v9 = v7 + 8920;
  v10 = (v7 + 8956);
  *(v7 + 2968) = 0u;
  *(v7 + 2981) = 0;
  v11 = v7 + 8976;
  *(v7 + 2992) = 0u;
  *(v7 + 3008) = 0;
  bzero((v7 + 3016), 0x204uLL);
  bzero(this + 3712, 0x11A0uLL);
  *(this + 2078) = 0;
  *(this + 1038) = 0;
  *(this + 518) = 0u;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  v8[4] = 0u;
  v8[5] = 0u;
  v8[6] = 0u;
  v8[7] = 0u;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  *v10 = 0;
  *(v10 + 5) = 0;
  *(this + 561) = 0u;
  *(v11 + 15) = 0;
  *(this + 928) = -1;
  *(this + 1042) = 0;
  *(this + 520) = 0u;
  *(this + 293) = a2;
  *(this + 2052) = -1;
  *(this + 2055) = 0x7FFFFFFF;
  if (a4)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  *(this + 661) = v12;
  *(this + 727) = 0;
  *(this + 2892) = 0uLL;
  bzero(this + 24, 0x810uLL);
}

uint64_t AppleAVDCommandBuilder::createDecoder(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v8 = a1 + 4096;
  *(a1 + 6040) = *(a2 + 9);
  v43 = 0;
  *a1 = a4;
  v9 = *a2;
  *(a1 + 5893) = 0;
  v10 = a2 + 30;
  *(a1 + 5892) = *(a2 + 30);
  *(a1 + 5648) = 0;
  *(a1 + 5644) = 0;
  *(a1 + 8) = 0;
  *(a1 + 6017) = 0;
  *(a1 + 5676) = 1;
  v11 = *(a1 + 5408);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v19 = operator new(0x4A80uLL, MEMORY[0x277D826F0]);
      v14 = v19;
      if (v19)
      {
        CAVDLghDecoder::CAVDLghDecoder(v19, a1, *(a1 + 5608), *(a2 + 27) != 0);
      }
    }

    else
    {
      if (v11 != 4)
      {
        goto LABEL_15;
      }

      v15 = operator new(0x9458uLL, MEMORY[0x277D826F0]);
      v14 = v15;
      if (v15)
      {
        CAVDAvxDecoder::CAVDAvxDecoder(v15, a1, *(a1 + 5608), *(a2 + 27) != 0);
      }
    }
  }

  else if (v11 == 1)
  {
    v16 = *(a1 + 5608);
    if (v16 < 0xD)
    {
      goto LABEL_15;
    }

    v17 = operator new(0x1CE0uLL, MEMORY[0x277D826F0]);
    v14 = v17;
    if (v17)
    {
      CAVDAvcDecoder::CAVDAvcDecoder(v17, a1, v16, *(a2 + 27) != 0);
    }
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_15;
    }

    v12 = *(a4 + 56);
    if (v12 != 1)
    {
      if (!v12)
      {
        v13 = operator new(0x23B0uLL, MEMORY[0x277D826F0]);
        v14 = v13;
        if (v13)
        {
          CAVDHevcDecoder::CAVDHevcDecoder(v13, a1, *(a1 + 5608), *(a2 + 27) != 0);
        }

        goto LABEL_22;
      }

LABEL_15:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "createDecoder";
        *&buf[12] = 1024;
        *&buf[14] = v11;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): unsupported codec type %d\n", buf, 0x12u);
      }

      return 310;
    }

    v20 = operator new(0x2F28uLL, MEMORY[0x277D826F0]);
    v14 = v20;
    if (v20)
    {
      CAVDMvHevcDecoder::CAVDMvHevcDecoder(v20, a1, *(a1 + 5608), *(a2 + 27) != 0);
    }
  }

LABEL_22:
  *(a1 + 8) = v14;
  if (!v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "createDecoder";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): AVD decoder null\n", buf, 0xCu);
    }

    return 312;
  }

  v21 = (*(*v14 + 16))(v14);
  if (v21)
  {
    v18 = v21;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 136315394;
    *&buf[4] = "createDecoder";
    *&buf[12] = 1024;
    *&buf[14] = v18;
    v22 = MEMORY[0x277D86220];
    v23 = "AppleAVD: ERROR: %s(): Initialization of decoder object failed with %u\n";
    goto LABEL_26;
  }

  v26 = (a1 + 8);
  v25 = *(a1 + 8);
  v25[8] = *(a2 + 26) != 0;
  v25[9] = *(a2 + 28) != 0;
  *(a1 + 5616) = v9;
  *(a1 + 5656) = *(a2 + 3);
  *(v8 + 1540) = a2[2];
  v25[11] = *(a2 + 304);
  v25[2356] = *(a2 + 40);
  v27 = *(a2 + 71);
  *(a1 + 6240) = *(a3 + 68);
  *(a1 + 5880) = v27;
  (*(*v25 + 104))(v25, 33, a1 + 6240);
  v43 = *(a2 + 29);
  (*(**v26 + 104))(*v26, 27, &v43);
  v18 = (*(**v26 + 104))(*v26, 23, v10);
  if (v18)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 67109120;
    *&buf[4] = v18;
    v22 = MEMORY[0x277D86220];
    v23 = "AppleAVD: AppleAVDUserClient::createDecoder kVASetUsageMode error: %d \n";
    v24 = 8;
    goto LABEL_33;
  }

  v18 = (*(**(a1 + 8) + 104))(*(a1 + 8), 55, a2 + 316);
  if (v18)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v18;
    }

    *buf = 67109120;
    *&buf[4] = v18;
    v29 = MEMORY[0x277D86220];
    v30 = "AppleAVD: ERROR: kVASetSliceHeaderThreshold error: %d \n";
    goto LABEL_47;
  }

  v18 = (*(**(a1 + 8) + 104))(*(a1 + 8), 58, a2 + 340);
  if (v18)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v18;
    }

    *buf = 67109120;
    *&buf[4] = v18;
    v29 = MEMORY[0x277D86220];
    v30 = "AppleAVD: ERROR: kVASetMultiVPParsing error: %d \n";
    goto LABEL_47;
  }

  v18 = (*(**(a1 + 8) + 104))(*(a1 + 8), 56, a2 + 40);
  if (v18)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v18;
    }

    *buf = 67109120;
    *&buf[4] = v18;
    v29 = MEMORY[0x277D86220];
    v30 = "AppleAVD: ERROR: kVASetUnlimitedResolution error: %d \n";
LABEL_47:
    v31 = 8;
    goto LABEL_36;
  }

  v33 = (a3 + 48);
  *(v8 + 1316) = *(a3 + 48) != 0;
  (*(**(a1 + 8) + 104))(*(a1 + 8), 30, a3 + 48);
  v34 = *(a2 + 84);
  *(a1 + 5600) = *(a3 + 16);
  *(a1 + 6232) = *(a3 + 24);
  *(a1 + 6288) = *(a3 + 40);
  v35 = a2[41];
  *(a1 + 5648) = v35;
  if (!v35)
  {
    v18 = 3758097085;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "createDecoder";
      v22 = MEMORY[0x277D86220];
      v23 = "AppleAVD: %s(): error null input buffer";
      v24 = 12;
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v36 = *(a1 + 5408);
  if ((v36 - 1) < 2)
  {
    v38 = *(a2 + 2);
    if ((v38 & 0xFFFFFF) <= v34)
    {
      goto LABEL_64;
    }

    v18 = 3758097090;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    goto LABEL_62;
  }

  if (v36 == 3)
  {
    v38 = *(a2 + 2);
    if (v38 <= v34)
    {
      goto LABEL_64;
    }

    v18 = 3758097090;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

LABEL_62:
    *buf = 136315650;
    *&buf[4] = "createDecoder";
    *&buf[12] = 1024;
    *&buf[14] = v38;
    *&buf[18] = 1024;
    *&buf[20] = v34;
    v22 = MEMORY[0x277D86220];
    v23 = "AppleAVD: ERROR: %s(): Bad input size %d > allocated size (%d)";
    v24 = 24;
    goto LABEL_33;
  }

  if (v36 == 4)
  {
    v37 = *(a2 + 2);
    if (v37 > v34)
    {
      v18 = 3758097090;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v18;
      }

      *buf = 136315650;
      *&buf[4] = "createDecoder";
      *&buf[12] = 1024;
      *&buf[14] = v37;
      *&buf[18] = 1024;
      *&buf[20] = v34;
      v29 = MEMORY[0x277D86220];
      v30 = "AppleAVD: ERROR: %s(): Bad input size %d > allocated size (%d)";
      v31 = 24;
      goto LABEL_36;
    }

    (*(**(a1 + 8) + 104))(*(a1 + 8), 53, a2 + 308);
  }

LABEL_64:
  if (!*(a1 + 8))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "createDecoder";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed ", buf, 0xCu);
    }

    v18 = 312;
    goto LABEL_34;
  }

  if (*v33 == 1)
  {
    AppleAVDCommandBuilder::updateDecryptionParams(a1, *(a2 + 14));
  }

  v39 = *(a1 + 5608);
  if (v39 != 28 && v39 < 0x12F || (*(a1 + 6040) & 8) == 0)
  {
LABEL_77:
    v18 = (*(**(a1 + 8) + 24))(*(a1 + 8), v35, *(a2 + 2));
    if (!v18)
    {
      v40 = (a1 + 8);
      (*(**(a1 + 8) + 216))(*(a1 + 8), *(a4 + 3896));
      (*(**v40 + 96))(*v40, 0, a3);
      (*(**v40 + 96))(*v40, 3, a3 + 72);
      if (*(a1 + 5408) == 4)
      {
        *(a1 + 5616) = vmax_u32(*(a3 + 164), *(a1 + 5616));
      }

      (*(**(a1 + 8) + 96))(*(a1 + 8), 4, a3 + 176);
      *(a1 + 5676) = *(a3 + 176);
      v49[0] = *(a1 + 5616);
      (*(**(a1 + 8) + 104))(*(a1 + 8), 12, v49);
      if (*(a3 + 48))
      {
        v42 = *(a2 + 12);
        v41 = a2 + 6;
        if (v42 < 1 || ((*(**(a1 + 8) + 104))(*(a1 + 8), 31, v41), *v33))
        {
          if (*(a1 + 5408) == 4)
          {
            v48 = 0u;
            v47 = 0u;
            v46 = 0u;
            v45 = 0u;
            memset(&buf[8], 0, 32);
            buf[32] = *(a1 + 5640);
            *buf = *(a1 + 5616);
            buf[33] = *(a1 + 5636);
            *&buf[28] = 128;
            (*(**(a1 + 8) + 104))(*(a1 + 8), 52, buf);
          }
        }
      }

      v18 = 0;
      *(a1 + 5624) = *(a3 + 72);
      return v18;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 136315394;
    *&buf[4] = "createDecoder";
    *&buf[12] = 1024;
    *&buf[14] = v18;
    v22 = MEMORY[0x277D86220];
    v23 = "AppleAVD: %s(): VAStartDecode failed error: %d ";
    goto LABEL_26;
  }

  v18 = CAVDDecoder::allocAVDMem(*(a1 + 8), (a1 + 6048), 0x2000, 7, 1, 0);
  if (!v18)
  {
    *(a3 + 8) = *(a1 + 6048);
    *(v8 + 2128) = 1;
    (*(**(a1 + 8) + 104))(*(a1 + 8), 47, v8 + 2128);
    goto LABEL_77;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "createDecoder";
    *&buf[12] = 1024;
    *&buf[14] = v18;
    v22 = MEMORY[0x277D86220];
    v23 = "AppleAVD: %s(): Failed to create histogram stat buffer! status: 0x%x";
LABEL_26:
    v24 = 18;
LABEL_33:
    _os_log_impl(&dword_277606000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
  }

LABEL_34:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(a1 + 8);
    *buf = 136315650;
    *&buf[4] = "createDecoder";
    *&buf[12] = 1024;
    *&buf[14] = v18;
    *&buf[18] = 2048;
    *&buf[20] = v28;
    v29 = MEMORY[0x277D86220];
    v30 = "AppleAVD: %s(): error %d and decoder is %p";
    v31 = 28;
LABEL_36:
    _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, v31);
  }

  return v18;
}

void CAVDDecoder::CAVDDecoder(CAVDDecoder *this, void *a2, int a3)
{
  *this = &unk_288667238;
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 2088) = 0u;
  *(this + 292) = a2;
  *(this + 293) = 0;
  *(this + 588) = a3;
  *(this + 2356) = 0;
  v4 = (this + 2708);
  *(this + 680) = 0;
  *(this + 1362) = 0;
  v5 = (this + 2728);
  *(this + 722) = 0;
  v6 = this + 2912;
  *(this + 738) = 0;
  v7 = (this + 2360);
  *(this + 2956) = 0;
  bzero(this + 24, 0x810uLL);
  *(this + 333) = 0;
  v7[17] = 0u;
  v7[18] = 0u;
  v7[15] = 0u;
  v7[16] = 0u;
  v7[13] = 0u;
  v7[14] = 0u;
  v7[11] = 0u;
  v7[12] = 0u;
  v7[9] = 0u;
  v7[10] = 0u;
  v7[7] = 0u;
  v7[8] = 0u;
  v7[5] = 0u;
  v7[6] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  *v7 = 0u;
  *(this + 2704) = 0;
  *v4 = 0;
  *(this + 2716) = 0;
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  *(v5 + 44) = 0u;
  *(this + 182) = 0u;
  *(this + 183) = 0u;
  *(v6 + 29) = 0;
  *(this + 668) = 1;
  *(this + 168) = 0u;
}

uint64_t BufferPool::releaseBuffer(BufferPool *this, uint64_t a2, unsigned int a3, char a4)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(this + 34) <= a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315394;
      v32 = "releaseBuffer";
      v33 = 1024;
      v34 = a2;
      v13 = MEMORY[0x277D86220];
      v14 = "AppleAVD: %s(): error index %d \n";
      v15 = 18;
LABEL_17:
      _os_log_impl(&dword_277606000, v13, OS_LOG_TYPE_DEFAULT, v14, &v31, v15);
    }
  }

  else
  {
    if (*(this + 15))
    {
      v8 = a2;
      kdebug_trace();
      pthread_mutex_lock(this);
      v9 = *(this + 15);
      if ((a4 & 1) != 0 || (v10 = *(v9 + 184 * v8 + 40), v10 <= a3))
      {
        v16 = (v9 + 184 * v8);
        v17 = *v16;
        if (*v16 == 1)
        {
          v18 = *(v16 + 9);
          v19 = __OFSUB__(v18, 1);
          v20 = v18 - 1;
          if (v20 < 0 != v19)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v31 = 136315138;
              v32 = "releaseBuffer";
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): buffer ref_count is already zero\n", &v31, 0xCu);
            }
          }

          else
          {
            *(v16 + 9) = v20;
            if (*(this + 160) == 1 && *(this + 35) == 1 && v20)
            {
              CVPixelBufferRelease(v16[2]);
            }
          }

          v23 = *(this + 15);
          v24 = v23 + 184 * v8;
          if (*(v24 + 36))
          {
            v21 = 0;
          }

          else
          {
            if ((*(this + 160) & 1) == 0)
            {
              v28 = *(v24 + 152);
              if ((v28 & 0x80000000) == 0 && v28 < *(this + 34))
              {
                if (*(v23 + 184 * v28 + 176) == 1)
                {
                  AppleAVDUnmapPixelBuffer(*(this + 18), v28);
                  v23 = *(this + 15);
                  *(v23 + 184 * v28 + 176) = 0;
                }

                v29 = *(v23 + 184 * v28 + 24);
                if (v29)
                {
                  CFRelease(v29);
                  v23 = *(this + 15);
                  *(v23 + 184 * v28 + 24) = 0;
                }

                CVPixelBufferRelease(*(v23 + 184 * v28 + 16));
                v23 = *(this + 15);
                v30 = v23 + 184 * v28;
                *v30 = 0;
                *(v30 + 32) = 0;
                *(v30 + 8) = 0;
                *(v30 + 16) = 0;
                *(v23 + 184 * v8 + 152) = -1;
                ++*(this + 39);
              }
            }

            if (*(v23 + 184 * v8 + 176) == 1)
            {
              AppleAVDUnmapPixelBuffer(*(this + 18), a2);
              v23 = *(this + 15);
              *(v23 + 184 * v8 + 176) = 0;
            }

            v25 = *(v23 + 184 * v8 + 24);
            if (v25)
            {
              CFRelease(v25);
              v23 = *(this + 15);
              *(v23 + 184 * v8 + 24) = 0;
            }

            if (*(this + 160) != 1 || *(this + 35) == 1)
            {
              CVPixelBufferRelease(*(v23 + 184 * v8 + 16));
            }

            v21 = 0;
            v26 = *(this + 15) + 184 * v8;
            *(v26 + 32) = 0;
            *v26 = 0;
            *(v26 + 8) = 0;
            *(v26 + 16) = 0;
            *(v26 + 160) = 0;
            *(v26 + 168) = 0;
            ++*(this + 39);
          }

          goto LABEL_36;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(this + 35);
          v31 = 136315906;
          v32 = "releaseBuffer";
          v33 = 1024;
          v34 = v22;
          v35 = 1024;
          v36 = a2;
          v37 = 1024;
          v38 = v17;
          v11 = MEMORY[0x277D86220];
          v12 = "AppleAVD: %s(): BufferPoolId[%d]: Index %d is not in use! in_use: %d\n";
          goto LABEL_21;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136315906;
        v32 = "releaseBuffer";
        v33 = 1024;
        v34 = a2;
        v35 = 1024;
        v36 = a3;
        v37 = 1024;
        v38 = v10;
        v11 = MEMORY[0x277D86220];
        v12 = "AppleAVD: %s(): WARNING! index: %d - trying to release! frameNum (%d) < get frameNum (%d), returning early!";
LABEL_21:
        _os_log_impl(&dword_277606000, v11, OS_LOG_TYPE_DEFAULT, v12, &v31, 0x1Eu);
      }

      v21 = 0xFFFFFFFFLL;
LABEL_36:
      pthread_cond_signal((this + 64));
      pthread_mutex_unlock(this);
      kdebug_trace();
      return v21;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315138;
      v32 = "releaseBuffer";
      v13 = MEMORY[0x277D86220];
      v14 = "AppleAVD: %s(): m_p_buf_pool is NULL \n";
      v15 = 12;
      goto LABEL_17;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t AVDFrameReceiver::FrameDone(AVDFrameReceiver *this, void *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = a2;
  v24 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  if (a3)
  {
    if (this)
    {
      if (v5)
      {
        v7 = MEMORY[0x277D85DF8];
        fprintf(*MEMORY[0x277D85DF8], "Assert - (%s) - f: %s l: %d\n", "commandResult == kIOReturnSuccess", "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp", 296);
        fwrite("AVDFrameReceiver ERROR: commandResult != kIOReturnSuccess.\n", 0x3BuLL, 1uLL, *v7);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v19 = "commandResult == kIOReturnSuccess";
          v20 = 2080;
          v21 = "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp";
          v22 = 1024;
          v23 = 296;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert - (%s) - f: %s l: %d\n", buf, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v8 = MEMORY[0x277D86220];
          v9 = "AVDFrameReceiver ERROR: commandResult != kIOReturnSuccess.\n";
LABEL_16:
          _os_log_impl(&dword_277606000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
        }
      }

      else
      {
        v12 = *a3;
        if (HIDWORD(*a3) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v19 = "FrameDone";
          v20 = 1024;
          LODWORD(v21) = 298;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v12 = *a3;
        }

        v13 = a3[1];
        if (HIDWORD(v13) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v19 = "FrameDone";
          v20 = 1024;
          LODWORD(v21) = 299;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v13 = a3[1];
        }

        v14 = a3[2];
        if (HIDWORD(v14) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v19 = "FrameDone";
          v20 = 1024;
          LODWORD(v21) = 300;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v14 = a3[2];
        }

        v15 = a3[3];
        if (HIDWORD(v15) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v19 = "FrameDone";
          v20 = 1024;
          LODWORD(v21) = 301;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v15 = a3[3];
        }

        if (*(this + 73) == 1)
        {
          if (*(this + 72) == 1)
          {
            setpriority(3, 0, 4096);
          }

          else
          {
            v16 = setpriority(3, 0, 0);
            if (*(this + 74) == 1)
            {
              AVDFrameReceiver::MakeCurrentThreadTimeConstraintThread(v16);
            }
          }

          *(this + 73) = 0;
        }

        (*(this + 8))(*(this + 7), 0, v12, v13, v14, v15);
      }
    }

    else
    {
      v11 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "Assert - (%s) - f: %s l: %d\n", "frContext != NULL", "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp", 295);
      fwrite("AVDFrameReceiver ERROR: context == NULL.\n", 0x29uLL, 1uLL, *v11);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v19 = "frContext != NULL";
        v20 = 2080;
        v21 = "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp";
        v22 = 1024;
        v23 = 295;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert - (%s) - f: %s l: %d\n", buf, 0x1Cu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = MEMORY[0x277D86220];
        v9 = "AVDFrameReceiver ERROR: context == NULL.\n";
        goto LABEL_16;
      }
    }
  }

  else
  {
    v10 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "Assert - (%s) - f: %s l: %d\n", "args != NULL", "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp", 294);
    fwrite("AVDFrameReceiver ERROR: args == NULL.\n", 0x26uLL, 1uLL, *v10);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v19 = "args != NULL";
      v20 = 2080;
      v21 = "/Library/Caches/com.apple.xbs/Sources/AppleAVD/framework/AppleAVDFrameReceiver.cpp";
      v22 = 1024;
      v23 = 294;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert - (%s) - f: %s l: %d\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = MEMORY[0x277D86220];
      v9 = "AVDFrameReceiver ERROR: args == NULL.\n";
      goto LABEL_16;
    }
  }

  return kdebug_trace();
}

uint64_t CPBManager::releaseOneCPB(CPBManager *this, int a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  pthread_mutex_lock(this);
  v6 = 0;
  ++*(this + 56);
  while (*(this + v6 + 137) != 1 || *(this + v6 + 120) != a2)
  {
    v6 += 24;
    if (v6 == 72)
    {
      goto LABEL_5;
    }
  }

  v10 = this + v6;
  v11 = *(v10 + 31);
  v12 = *(v10 + 16);
  v13 = v10[136];
  v10[137] = 0;
  *(v10 + 30) = -1;
  if (!v12)
  {
LABEL_5:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "releaseOneCPB";
      v21 = 1024;
      v22 = a2;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() frameNum %d was not found in flight! Something is wrong", &v19, 0x12u);
    }

    v7 = 1;
    goto LABEL_8;
  }

  v14 = *(this + 24);
  v15 = *(v14 + 980);
  if (v15)
  {
    v16 = (*(this + 25) + 4);
    while (*v16 != a2)
    {
      v16 += 6;
      if (!--v15)
      {
        goto LABEL_20;
      }
    }

    *v16 = -1;
    if (a3)
    {
      v7 = 0;
      *(v16 - 1) = 2;
      goto LABEL_8;
    }

    *(v16 - 1) = 0;
  }

  else
  {
LABEL_20:
    if (a3)
    {
      AppleAVDUnmapPixelBuffer(v14, v13);
    }
  }

  *(this + v13 + 93) = 0;
  v17 = MEMORY[0x277CAF070](*MEMORY[0x277D85F48], v12, v11);
  if (v17)
  {
    v18 = v17;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136316162;
      v20 = "releaseOneCPB";
      v21 = 1024;
      v22 = v18;
      v23 = 1024;
      v24 = a2;
      v25 = 2048;
      v26 = v12;
      v27 = 1024;
      v28 = v11;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): WARNING! vm_deallocate failed! status: 0x%x Check for leaks! frameNumber: %d - addr = 0x%llx - roundedUpSize: 0x%x", &v19, 0x28u);
    }
  }

  v7 = 0;
  --*(this + 53);
LABEL_8:
  if (!*(this + 112))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "releaseOneCPB";
      v21 = 1024;
      v22 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): m_num_CPBs_on_the_fly:%d == 0. Cannot release further.", &v19, 0x12u);
    }

    goto LABEL_13;
  }

  if (v7)
  {
LABEL_13:
    v8 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  v8 = 0;
  --*(this + 112);
LABEL_14:
  pthread_cond_signal((this + 64));
  pthread_mutex_unlock(this);
  kdebug_trace();
  return v8;
}

uint64_t AppleAVDReleaseCVPixelBuffer(uint64_t a1, uint64_t a2, int a3, unsigned int a4, char a5)
{
  v5 = a2;
  v12 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8 * a3 + 200);
  if (v6)
  {

    return BufferPool::releaseBuffer(v6, a2, a4, a5);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109376;
      v9[1] = a3;
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: pBufferPool[%d] is NULL cvPixBufIndex:%d!", v9, 0xEu);
    }

    return 314;
  }
}

uint64_t AppleAVDDecodeFrameResponse(unsigned __int8 *a1, int a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v41 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v11 = *(a1 + 468);
  v12 = v11 + 3656 * a5;
  v13 = a4 - 315;
  if (a4 - 315 <= 1)
  {
    *buf = 1;
    (*(**(*(a1 + 478) + 8) + 104))(*(*(a1 + 478) + 8), 18, buf);
  }

  if (*(a1 + 906) && *(a1 + 57) == 2 && *(a1 + 194) <= 0x13u)
  {
    (*(**(*(a1 + 478) + 8) + 96))(*(*(a1 + 478) + 8), 6, buf);
    if (v13 <= 1)
    {
      bzero(*buf, *&buf[16]);
      bzero(*&buf[8], *v40);
    }

    (*(**(*(a1 + 478) + 8) + 104))(*(*(a1 + 478) + 8), 26, buf);
    *(v12 + 3584) = *v40;
    *(v12 + 3592) = *&v40[8];
  }

  v14 = *(v12 + 3432);
  if (*(v12 + 3645) == 1)
  {
    *buf = 1;
    (*(**(*(a1 + 478) + 8) + 104))(*(*(a1 + 478) + 8), 37, buf);
  }

  if (v14 && v14 != 409 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AppleAVDDecodeFrameResponse";
    *&buf[12] = 1024;
    *&buf[14] = a3;
    *&buf[18] = 1024;
    *v40 = v14;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Frame# %d DecodeFrame failed with error 0x%08x\n", buf, 0x18u);
  }

  v15 = *(v12 + 3576);
  *(a1 + 889) = v15;
  v16 = *(v12 + 3616);
  v37 = *(v12 + 3620);
  if (v15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v15;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVDDecodeFrameResponse() failed - decryptError: %d \n", buf, 8u);
  }

  *(a1 + 908) = *(v12 + 3580);
  *(a1 + 907) = *(v12 + 3648);
  if (*(a1 + 467))
  {
    v17 = *(a1 + 194);
    if ((v17 == 28 || v17 >= 0x12F) && (a1[3732] & 8) != 0)
    {
      v36 = a6;
      v38 = 0;
      v18 = a1[848];
      v19 = 3448;
      if (a1[848])
      {
        v19 = 3452;
      }

      v20 = *(v12 + v19);
      if (v20 == -1 || (v21 = *&a1[8 * (v18 ^ 1) + 200]) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = "AppleAVDDecodeFrameResponse";
          *&buf[12] = 1024;
          *&buf[14] = v20;
          *&buf[18] = 1024;
          *v40 = v18 ^ 1;
          *&v40[4] = 1024;
          *&v40[6] = v18;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Invalid dispbufIndex=%u or ctx->pBufferPool[poolIndex=%u] is NULL!, ctx->noSecondWrite %d", buf, 0x1Eu);
        }
      }

      else
      {
        BufferPool::getBufferInfo(v21, v20, &v38);
      }

      if (v38 && *(v38 + 40) == a3)
      {
        attachHistogramToIOSurface(a1, a3, *(v38 + 16));
      }

      a6 = v36;
    }
  }

  if ((*(v12 + 3612) | 2) == 2)
  {
    AppleAVDDisplayCallback(a1, a3, *(v12 + 3448), *(v12 + 3452), *(v12 + 3584), *(v12 + 3592), *(v12 + 3596), *(v12 + 3604), a4, v16, v37);
  }

  v22 = *(a1 + 57);
  if (v22 < 3)
  {
    if (*(a1 + 2) && !a1[848])
    {
LABEL_38:
      v23 = 1;
      AppleAVDReleaseCVPixelBuffer(a1, *(v12 + 3440), 1, a3, 0);
      goto LABEL_50;
    }

LABEL_49:
    v23 = 0;
    goto LABEL_50;
  }

  if (v22 != 4)
  {
    goto LABEL_49;
  }

  if (*(a1 + 2) && (a1[848] & 1) == 0 && !a1[3588])
  {
    AppleAVDUnmapCVPixelBuffer(a1, *(v12 + 3440), 1, a3, 0);
  }

  if (v13 > 1 || !*(a1 + 2))
  {
    goto LABEL_49;
  }

  v23 = 0;
  if (!a6 && (a1[848] & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_50:
  if (a1[3832] == 1)
  {
    v24 = *(a1 + 480);
    if (v24)
    {
      v24(*(a1 + 3));
    }
  }

  v25 = 3656 * a5;
  if (a1[848] == 1)
  {
    v26 = v13 < 2 && a6 == 0;
    v27 = v26;
    if (*(a1 + 57) != 4 || v27)
    {
      AppleAVDReleaseCVPixelBuffer(a1, *(v12 + 3444), 0, a3, 0);
    }
  }

  v28 = 0;
  v29 = 0;
  v30 = v12 + 2;
  v31 = v25 + v11 + 4;
  v32 = 1;
  do
  {
    v33 = v32;
    if ((a1[848] & 1) == 0)
    {
      v28 &= v23;
    }

    if (v28)
    {
      break;
    }

    if (*(v30 + v29) - 1 <= 0x1F)
    {
      v34 = 0;
      do
      {
        AppleAVDReleaseCVPixelBuffer(a1, *(v31 + 32 * v29 + v34++), v29, a3, 0);
      }

      while (v34 < *(v30 + v29));
    }

    v32 = 0;
    v28 = 1;
    v29 = 1;
  }

  while ((v33 & 1) != 0);
  if (v37 || !*(v12 + 3624) || !*(a1 + 2))
  {
    AppleAVDReleaseOneCPB(a1, *(v12 + 3628), *(v12 + 3644));
  }

  if (a1[1424] == 1)
  {
    pthread_mutex_lock((a1 + 784));
    *(a1 + 357) = a3;
    pthread_cond_signal((a1 + 1376));
    pthread_mutex_unlock((a1 + 784));
  }

  else
  {
    *(a1 + 357) = a3;
  }

  return kdebug_trace();
}

uint64_t CAVDDecoder::VAUnmapPixelBuffer(CAVDDecoder *this, int a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = this + 24;
  v6 = this + 1056;
  if (a3 == 1)
  {
    v7 = this + 24;
  }

  else
  {
    v7 = this + 1056;
  }

  v8 = *&v7[8 * a2];
  if (!v8)
  {
    v10 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(v8 + 169);
  }

  v11 = *(this + 293);
  v21 = 4;
  v12 = *(v8 + 8);
  v13 = *(v8 + 40);
  *&inputStruct[16] = *(v8 + 24);
  v24 = v13;
  *inputStruct = v12;
  v14 = *(v8 + 56);
  v15 = *(v8 + 72);
  v16 = *(v8 + 104);
  v27 = *(v8 + 88);
  v28 = v16;
  v25 = v14;
  v26 = v15;
  v17 = *(v8 + 120);
  v18 = *(v8 + 136);
  v19 = *(v8 + 168);
  v31 = *(v8 + 152);
  v32 = v19;
  v29 = v17;
  v30 = v18;
  v33 = v9 & 1;
  v10 = IOConnectCallStructMethod(**v11, 4u, inputStruct, 0xB8uLL, outputStruct, &v21);
  if (!v10)
  {
    free(v8);
LABEL_13:
    if (a3 == 1)
    {
      *&v5[8 * a2] = 0;
    }

    else
    {
      *&v6[8 * a2] = 0;
    }

    return v10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *inputStruct = 136315650;
    *&inputStruct[4] = "VAUnmapPixelBuffer";
    *&inputStruct[12] = 1024;
    *&inputStruct[14] = a2;
    *&inputStruct[18] = 1024;
    *&inputStruct[20] = a3;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): error deallocating AVD surface index %d from pool %u\n", inputStruct, 0x18u);
  }

  return v10;
}

uint64_t AppleAVDUnmapPixelBuffer(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v10 = *MEMORY[0x277D85DE8];
  if (a2 < 0x81)
  {
    v4 = *(*(a1 + 3824) + 8);
    if (v4)
    {
      v3 = (*(*v4 + 64))(v4, a2);
      if (!v3)
      {
        return v3;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "AppleAVDUnmapPixelBuffer";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): NULL DECODER type", &v6, 0xCu);
      }

      v3 = 312;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "AppleAVDUnmapPixelBuffer";
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed error: %d \n", &v6, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "AppleAVDUnmapPixelBuffer";
      v8 = 1024;
      v9 = v2;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): bad buffer index %d\n", &v6, 0x12u);
    }

    return 308;
  }

  return v3;
}

void AppleAVDDisplayCallback(uint64_t a1, unsigned int a2, int a3, unsigned int a4, unint64_t a5, CMTagCategory a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, int a11)
{
  v110 = *MEMORY[0x277D85DE8];
  v94 = 0;
  v95 = 0;
  v93 = -1;
  if (a3 != -1)
  {
    v16 = a3;
    v17 = *(a1 + 200);
    if (v17 && *(a1 + 208))
    {
      BufferPool::getBufferInfo(v17, a4, &v94);
      BufferPool::getBufferInfo(*(a1 + 208), v16, &v95);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0].category) = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: pBufferPool[AVD_PIXBUF_DEC] && pBufferPool[AVD_PIXBUF_DISP] are NULL!", buf, 2u);
    }

LABEL_14:
    v88 = 1;
    goto LABEL_15;
  }

  if (a4 == -1 || *(a1 + 848) != 1 || (v18 = *(a1 + 200)) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 848);
      buf[0].category = 136315650;
      *&buf[0].dataType = "AppleAVDDisplayCallback";
      WORD2(buf[0].value) = 1024;
      *(&buf[0].value + 6) = a4;
      HIWORD(buf[1].category) = 1024;
      buf[1].dataType = v19;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s invalid dispbufIndex, refBufIndex = %d ctx->noSecondWrite %d or ctx->pBufferPool[AVD_PIXBUF_DEC] is NULL! \n", buf, 0x18u);
    }

    v16 = -1;
    goto LABEL_14;
  }

  BufferPool::getBufferInfo(v18, a4, &v94);
  v88 = 0;
  v95 = v94;
  v16 = a4;
LABEL_15:
  v87 = a2;
  if (!v95 || !v94)
  {
    v23 = 0xFFFFFFFFLL;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      buf[0].category = 136316418;
      *&buf[0].dataType = "AppleAVDDisplayCallback";
      WORD2(buf[0].value) = 1024;
      *(&buf[0].value + 6) = a2;
      HIWORD(buf[1].category) = 1024;
      buf[1].dataType = v16;
      LOWORD(buf[1].value) = 1024;
      *(&buf[1].value + 2) = a4;
      HIWORD(buf[1].value) = 1024;
      LODWORD(v101) = -1;
      WORD2(v101) = 1024;
      *(&v101 + 6) = -1;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): %d %d %d %d - errorStatus %d\n", buf, 0x2Au);
    }

    goto LABEL_72;
  }

  v20 = *(v95 + 16);
  v21 = *(v94 + 16);
  if (v20)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0xFFFFFFFFLL;
    goto LABEL_72;
  }

  v83 = a5;
  CVPixelBufferGetIOSurface(v20);
  if (*(a1 + 228) == 4 && (*(a1 + 3816) | 2) != 2)
  {
    extraRowsOnBottom = 0;
    v90 = 0u;
    v91 = 0u;
    *extraColumnsOnRight = 0u;
    v81 = a6;
    CVPixelBufferGetIOSurface(v20);
    v109 = 0;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    memset(buf, 0, sizeof(buf));
    DataProperty = IOSurfaceGetDataProperty();
    if (DataProperty)
    {
      v25 = DataProperty;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v97 = 136315650;
        *&v97[4] = "AppleAVDDisplayCallback";
        *&v97[12] = 1024;
        *&v97[14] = v25;
        v98 = 1024;
        v99 = 454;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): IOSurfaceGetDataProperty returned error (0x%x). Line = %d\n", v97, 0x18u);
      }
    }

    a6 = v81;
  }

  IOSurfaceSetCompressedTileDataRegionMemoryUsedOfPlane();
  IOSurfaceSetCompressedTileDataRegionMemoryUsedOfPlane();
  if (*(a1 + 988) == 1 && *(a1 + 3628) == 1 && *(a1 + 228) == 2)
  {
    v26 = CVPixelBufferLockBaseAddress(v20, 0);
    v27 = CVPixelBufferLockBaseAddress(v21, 0);
    if (v26 | v27)
    {
      if (v27)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    v82 = a6;
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v20, 1uLL);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v20, 1uLL);
    if (CVPixelBufferGetBytesPerRowOfPlane(v20, 1uLL) != BytesPerRowOfPlane && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      buf[0].category = 136315394;
      *&buf[0].dataType = "AppleAVDDisplayCallback";
      WORD2(buf[0].value) = 1024;
      *(&buf[0].value + 6) = 712;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    }

    v80 = CVPixelBufferGetBytesPerRowOfPlane(v20, 1uLL);
    v29 = v20;
    if (*(a1 + 776) < 0x14u)
    {
      theDict = CVPixelBufferGetBaseAddressOfPlane(v21, 1uLL);
      v41 = CVPixelBufferGetBytesPerRowOfPlane(v21, 1uLL);
      if (CVPixelBufferGetBytesPerRowOfPlane(v21, 1uLL) != v41 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        buf[0].category = 136315394;
        *&buf[0].dataType = "AppleAVDDisplayCallback";
        WORD2(buf[0].value) = 1024;
        *(&buf[0].value + 6) = 726;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
      }

      v42 = CVPixelBufferGetBytesPerRowOfPlane(v21, 1uLL);
      *v97 = 0;
      extraColumnsOnRight[0] = 0;
      extraRowsOnTop = 0;
      extraRowsOnBottom = 0;
      CVPixelBufferGetExtendedPixels(v21, v97, extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
      Height = CVPixelBufferGetHeight(v21);
      v44 = (Height >> 1) + extraRowsOnBottom;
      v45 = CVPixelBufferGetHeight(v21);
      if (v44 != extraRowsOnBottom + (v45 >> 1) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        buf[0].category = 136315394;
        *&buf[0].dataType = "AppleAVDDisplayCallback";
        WORD2(buf[0].value) = 1024;
        *(&buf[0].value + 6) = 729;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
      }

      v46 = CVPixelBufferGetHeight(v21);
      LODWORD(v39) = ((v46 >> 1) + extraRowsOnBottom) * v42;
      v40 = malloc_type_malloc(v39, 0x100004077774924uLL);
      memset(buf, 0, sizeof(buf));
      v101 = 0u;
    }

    else
    {
      CVPixelBufferGetIOSurface(v21);
      theDict = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
      CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
      v31 = IOSurfaceGetWidthInCompressedTilesOfPlane() * CompressedTileWidthOfPlane;
      v32 = IOSurfaceGetCompressedTileWidthOfPlane();
      if (v31 != IOSurfaceGetWidthInCompressedTilesOfPlane() * v32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        buf[0].category = 136315394;
        *&buf[0].dataType = "AppleAVDDisplayCallback";
        WORD2(buf[0].value) = 1024;
        *(&buf[0].value + 6) = 718;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
      }

      v33 = IOSurfaceGetCompressedTileWidthOfPlane();
      v34 = IOSurfaceGetWidthInCompressedTilesOfPlane() * v33;
      CompressedTileHeightOfPlane = IOSurfaceGetCompressedTileHeightOfPlane();
      v36 = IOSurfaceGetHeightInCompressedTilesOfPlane() * CompressedTileHeightOfPlane;
      v37 = IOSurfaceGetCompressedTileHeightOfPlane();
      if (v36 != IOSurfaceGetHeightInCompressedTilesOfPlane() * v37 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        buf[0].category = 136315394;
        *&buf[0].dataType = "AppleAVDDisplayCallback";
        WORD2(buf[0].value) = 1024;
        *(&buf[0].value + 6) = 719;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
      }

      v38 = IOSurfaceGetCompressedTileHeightOfPlane();
      v39 = IOSurfaceGetHeightInCompressedTilesOfPlane() * v38 * v34;
      v40 = malloc_type_malloc(v39, 0x100004077774924uLL);
      a2 = v87;
    }

    if (!v40)
    {
      v20 = v29;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v97 = 136315138;
        *&v97[4] = "AppleAVDDisplayCallback";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Error allocating temp buffer for RVRAInLoopChromaFilter() \n", v97, 0xCu);
      }

      goto LABEL_68;
    }

    if (*(a1 + 776) >= 0x14u)
    {
      InLoopChromaFilterInterchangeFormat(BaseAddressOfPlane, theDict, *(a1 + 3564), *(a1 + 3568), v80, *(a1 + 3632), v40);
LABEL_67:
      free(v40);
      v20 = v29;
LABEL_68:
      CVPixelBufferUnlockBaseAddress(v21, 0);
LABEL_69:
      if (!v26)
      {
        CVPixelBufferUnlockBaseAddress(v20, 0);
      }

      goto LABEL_71;
    }

    if (*(a1 + 3680))
    {
      v47 = *(a1 + 3648);
      HIDWORD(v101) = v83;
      *&v101 = v47;
      *&buf[1].category = HIDWORD(v83);
      buf[0].category = v82;
      buf[0].dataType = kCMTagDataType_Invalid;
      if (!RVRAInLoopChromaFilter(BaseAddressOfPlane, theDict, *(a1 + 3564), *(a1 + 3568), v80, *(a1 + 3632), buf, v40, v39) || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }

      *v97 = 136315138;
      *&v97[4] = "AppleAVDDisplayCallback";
      v48 = MEMORY[0x277D86220];
      v49 = "AppleAVD: %s(): RVRAInLoopChromaFilter() failed! \n";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }

      *v97 = 136315138;
      *&v97[4] = "AppleAVDDisplayCallback";
      v48 = MEMORY[0x277D86220];
      v49 = "AppleAVD: %s(): chromaFilterHdrBuff is not allocated! \n";
    }

    _os_log_impl(&dword_277606000, v48, OS_LOG_TYPE_DEFAULT, v49, v97, 0xCu);
    goto LABEL_67;
  }

LABEL_71:
  v23 = a9;
  if (!a9)
  {
    v50 = 0;
    goto LABEL_80;
  }

LABEL_72:
  if ((v23 - 409) >= 2)
  {
    v50 = 4294954387;
  }

  else
  {
    v50 = 4294949602;
  }

  if (a9 == 409)
  {
    goto LABEL_79;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    buf[0].category = 136315906;
    *&buf[0].dataType = "AppleAVDDisplayCallback";
    WORD2(buf[0].value) = 1024;
    *(&buf[0].value + 6) = a2;
    HIWORD(buf[1].category) = 1024;
    buf[1].dataType = v50;
    LOWORD(buf[1].value) = 1024;
    *(&buf[1].value + 2) = v23;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Asking fig to drop frame # %d with err %d - internalStatus: %d\n", buf, 0x1Eu);
  }

  if (*(a1 + 3560))
  {
LABEL_79:
    v20 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      buf[0].category = 136315394;
      *&buf[0].dataType = "AppleAVDDisplayCallback";
      WORD2(buf[0].value) = 1024;
      *(&buf[0].value + 6) = v23;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s sending error %d to test app main\n", buf, 0x12u);
    }

    v20 = 0;
    *(a1 + 3560) = v23;
  }

LABEL_80:
  v84 = v16;
  if (!*(a1 + 3768))
  {
    v62 = v50;
    v63 = v20;
    LODWORD(v20) = 0;
    v64 = 0;
    goto LABEL_124;
  }

  *v97 = 0;
  extraColumnsOnRight[0] = 0;
  *(a1 + 3792) = 0;
  LODWORD(extraRowsOnTop) = a10;
  v51 = *MEMORY[0x277CBECE8];
  v52 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &extraRowsOnTop);
  v86 = v23;
  if (!v52)
  {
    goto LABEL_98;
  }

  v53 = *(a1 + 3768);
  v111.length = CFArrayGetCount(v53);
  v111.location = 0;
  if (!CFArrayContainsValue(v53, v111, v52))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v65 = extraRowsOnTop;
      Count = CFArrayGetCount(*(a1 + 3768));
      buf[0].category = 136316162;
      *&buf[0].dataType = "AppleAVDDisplayCallback";
      WORD2(buf[0].value) = 1024;
      *(&buf[0].value + 6) = v87;
      HIWORD(buf[1].category) = 1024;
      buf[1].dataType = kCMTagDataType_Invalid;
      LOWORD(buf[1].value) = 1024;
      *(&buf[1].value + 2) = v65;
      HIWORD(buf[1].value) = 1024;
      LODWORD(v101) = Count;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): frame %d layerpresent %d layerID %d numLayers %d \n", buf, 0x24u);
    }

LABEL_98:
    Mutable = 0;
    v57 = 0;
    goto LABEL_99;
  }

  v54 = MEMORY[0x277CBF128];
  Mutable = CFArrayCreateMutable(v51, 0, MEMORY[0x277CBF128]);
  v56 = CFArrayCreateMutable(v51, 0, v54);
  v57 = v56;
  v58 = 0;
  if (Mutable && v56)
  {
    *&buf[0].category = 0;
    buf[0].value = 0;
    buf[0] = CMTagMakeWithSInt64Value(kCMTagCategory_VideoLayerID, extraRowsOnTop);
    v59 = CMTagCollectionCreate(v51, buf, 1, v97);
    v60 = 0;
    if (!v59)
    {
      if (v20)
      {
        CFArrayAppendValue(Mutable, *v97);
        CFArrayAppendValue(v57, v20);
        v60 = MEMORY[0x277CAE650](v51, Mutable, v57, extraColumnsOnRight);
        if (!v60)
        {
          CFArrayAppendValue(*(a1 + 3784), extraColumnsOnRight[0]);
          v60 = 0;
        }
      }
    }

    v58 = v60 | v59;
  }

  buf[0].category = v58 | v50;
  v61 = CFNumberCreate(v51, kCFNumberIntType, buf);
  if (v61)
  {
    CFArrayAppendValue(*(a1 + 3776), v61);
  }

LABEL_99:
  v62 = v50;
  v63 = v20;
  if (a11)
  {
    if (CFArrayGetCount(*(a1 + 3776)) < 1)
    {
      CFArrayRemoveAllValues(*(a1 + 3776));
    }

    else
    {
      v67 = 0;
      LODWORD(v20) = 0;
      do
      {
        buf[0].category = kCMTagCategory_Undefined;
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3776), v67);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, buf);
        v20 = (buf[0].category | v20);
        ++v67;
      }

      while (v67 < CFArrayGetCount(*(a1 + 3776)));
      CFArrayRemoveAllValues(*(a1 + 3776));
      if (v20 == -17694)
      {
        v64 = v20;
        goto LABEL_116;
      }

      if (v20)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          buf[0].category = 136315650;
          *&buf[0].dataType = "AppleAVDDisplayCallback";
          WORD2(buf[0].value) = 1024;
          *(&buf[0].value + 6) = v20;
          HIWORD(buf[1].category) = 1024;
          buf[1].dataType = kCMTagDataType_Invalid;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): allLayersDecodeErr = %d, finalTagBufErr = %d\n", buf, 0x18u);
        }

        v64 = 4294954387;
        goto LABEL_116;
      }
    }

    CMTaggedBufferGroupCreateCombined(v51, *(a1 + 3784), (a1 + 3792));
    v69 = CFArrayGetCount(*(a1 + 3784));
    if (v69 >= 1)
    {
      v70 = v69;
      for (i = 0; i != v70; ++i)
      {
        v72 = CFArrayGetValueAtIndex(*(a1 + 3784), i);
        if (v72)
        {
          CFRelease(v72);
        }
      }
    }

    CFArrayRemoveAllValues(*(a1 + 3784));
  }

  LODWORD(v20) = 0;
  v64 = 0;
LABEL_116:
  if (*v97)
  {
    CFRelease(*v97);
    *v97 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  v23 = v86;
  if (v52)
  {
    CFRelease(v52);
  }

LABEL_124:
  v73 = *(a1 + 16);
  if (v73)
  {
    if (*(a1 + 3768))
    {
      if (a11)
      {
        if (v20 != -17694 && v20)
        {
          v74 = v87;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            buf[0].category = 136316418;
            *&buf[0].dataType = "AppleAVDDisplayCallback";
            WORD2(buf[0].value) = 1024;
            *(&buf[0].value + 6) = v87;
            HIWORD(buf[1].category) = 1024;
            buf[1].dataType = v84;
            LOWORD(buf[1].value) = 1024;
            *(&buf[1].value + 2) = v23;
            HIWORD(buf[1].value) = 1024;
            LODWORD(v101) = v20;
            WORD2(v101) = 1024;
            *(&v101 + 6) = v64;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): frameNum %d dispIndx %d errorStatus %d allLayersDecodeErr %d multiImageDecodeErr %d - multi-image emit displayCallBack callback\n", buf, 0x2Au);
            v73 = *(a1 + 16);
          }
        }

        else
        {
          v74 = v87;
        }

        v75 = *(a1 + 24);
        v76 = *(a1 + 3792);
        v77 = v74;
        v78 = v64;
        goto LABEL_134;
      }
    }

    else if (!a10 || *(a1 + 228) == 4)
    {
      v75 = *(a1 + 24);
      v77 = v87;
      v76 = v63;
      v78 = v62;
LABEL_134:
      v73(v75, v77, v76, v78, v23);
    }
  }

  if (*(a1 + 228) == 4 && v93 != -1)
  {
    if (*(a1 + 8 * v88 + 200))
    {
      AppleAVDReleaseCVPixelBuffer(a1, v93, v88, v87, 1);
    }
  }
}

uint64_t AppleAVDReleaseOneCPB(uint64_t a1, int a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 960);
  if (!v3)
  {
    return 0;
  }

  v4 = CPBManager::releaseOneCPB(v3, a2, a3);
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "AppleAVDReleaseOneCPB";
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() releaseOneCPB returned %d\n", &v6, 0x12u);
  }

  return v4;
}

uint64_t CreateAVDFrameReceiver(void *a1, uint64_t a2, pthread_attr_t *a3, pthread_t *a4, _DWORD *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v28[0] = 0;
  v10 = 3758097084;
  v31 = 0;
  v32 = a2;
  v11 = pthread_mutex_init(&v30, 0);
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "CreateAVDFrameReceiver";
      v22 = 1024;
      v23 = v12;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Cannot initialize mutex, Error = %d", buf, 0x12u);
    }
  }

  else
  {
    v13 = pthread_cond_init(&v29, 0);
    if (v13)
    {
      v14 = v13;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "CreateAVDFrameReceiver";
        v22 = 1024;
        v23 = v14;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Cannot initialize condition variable, Error = %d", buf, 0x12u);
      }

      pthread_mutex_destroy(&v30);
    }

    else
    {
      pthread_attr_init(a3);
      pthread_attr_setdetachstate(a3, 1);
      if ((*(a2 + 33) & 1) != 0 || (pthread_attr_getschedparam(a3, &v19), v19.sched_priority = 53, !pthread_attr_setschedparam(a3, &v19)) && (*a5 = 53, !pthread_attr_setschedpolicy(a3, 2)))
      {
        pthread_create(a4, a3, AVDFrameReceiverEntry, v28);
        pthread_mutex_lock(&v30);
        v18 = xmmword_27775E0D0;
        if (v28[0])
        {
LABEL_10:
          pthread_mutex_unlock(&v30);
          *a1 = v31;
        }

        else
        {
          v15 = 0;
          v16 = 1;
          while (v16 != 5 && (!v15 || v15 == 60))
          {
            v15 = pthread_cond_timedwait_relative_np(&v29, &v30, &v18);
            ++v16;
            if (v28[0])
            {
              goto LABEL_10;
            }
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v21 = "CreateAVDFrameReceiver";
            v22 = 1024;
            v23 = v16;
            v24 = 1024;
            v25 = 4;
            v26 = 1024;
            v27 = v15;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): threadReady state false. Exiting due to timeout (waitCount=%u of %d sec) or error (=%d)", buf, 0x1Eu);
          }

          if (a3)
          {
            pthread_attr_destroy(a3);
          }

          pthread_mutex_unlock(&v30);
        }
      }

      pthread_mutex_destroy(&v30);
      pthread_cond_destroy(&v29);
      if (*a1)
      {
        return 0;
      }

      else
      {
        return 3758097084;
      }
    }
  }

  return v10;
}

void AppleAVDCommandBuilder::AppleAVDCommandBuilder(AppleAVDCommandBuilder *this, int a2, int a3)
{
  *(this + 1402) = a2;
  *(this + 1352) = a3;
  *(this + 6244) = 0;
  *(this + 787) = 0;
  *(this + 782) = 0;
  *(this + 784) = 0;
  *(this + 783) = 0;
  *(this + 1570) = 0;
  *(this + 1556) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 1470) = 6;
  *(this + 1560) = 0;
  *(this + 1) = 0u;
  *(this + 268) = 0u;
}

uint64_t CAVDHevcDecoder::VAInit(CAVDHevcDecoder *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = malloc_type_calloc(0x5A88uLL, 0x10uLL, 0x1020040B352C60DuLL);
  *(this + 1021) = v2;
  if (!v2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v11 = 136315138;
    v12 = "VAInit";
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: ERROR: CAVDHevcDecoder::%s() m_sps_list mem alloc failed";
LABEL_15:
    _os_log_impl(&dword_277606000, v9, OS_LOG_TYPE_DEFAULT, v10, &v11, 0xCu);
    return 301;
  }

  v3 = v2 + 3588;
  v4 = 16;
  do
  {
    *v3 = -1;
    v3 += 5794;
    --v4;
  }

  while (v4);
  v5 = malloc_type_calloc(0x2680uLL, 0x40uLL, 0x1010040C250A272uLL);
  *(this + 1022) = v5;
  if (!v5)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 301;
    }

    v11 = 136315138;
    v12 = "VAInit";
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: ERROR: CAVDHevcDecoder::%s() m_pps_list mem alloc failed";
    goto LABEL_15;
  }

  for (i = 0; i != 630784; i += 9856)
  {
    *&v5[i] = -1;
  }

  v7 = malloc_type_calloc(0x938uLL, 0x258uLL, 0x103004003D24251uLL);
  *(this + 1023) = v7;
  if (v7)
  {
    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "VAInit";
    v9 = MEMORY[0x277D86220];
    v10 = "AppleAVD: ERROR: CAVDHevcDecoder::%s() m_slices mem alloc failed";
    goto LABEL_15;
  }

  return 301;
}

uint64_t AppleAVDSetParameter(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 312;
  }

  result = 3758097095;
  switch(a2)
  {
    case 1:
      result = 0;
      *(a1 + 16) = *a3;
      return result;
    case 2:
      result = 0;
      *(a1 + 24) = a3;
      return result;
    case 3:
      result = 0;
      *(a1 + 40) = a3;
      return result;
    case 4:
      result = 0;
      *(a1 + 32) = a3;
      return result;
    case 5:
      result = 0;
      *(a1 + 56) = *a3;
      return result;
    case 7:
      result = 0;
      *(a1 + 48) = *a3;
      return result;
    case 9:
      result = 0;
      *(a1 + 240) = a3;
      return result;
    case 11:
      result = 0;
      *(a1 + 760) = a3;
      return result;
    case 13:
      result = 0;
      *(a1 + 852) = *a3;
      return result;
    case 14:
      result = 0;
      *(a1 + 752) = a3;
      return result;
    case 15:
      result = 0;
      *(a1 + 768) = a3;
      return result;
    case 16:
      result = 0;
      *(a1 + 780) = *a3;
      return result;
    case 17:
      v19 = *a3;
      if (*a3 == 42 || v19 == 20 || v19 == 1)
      {
        result = 0;
        *(a1 + 988) = v19;
      }

      else
      {
        result = 0;
        *(a1 + 988) = 0;
      }

      return result;
    case 19:
      result = 0;
      *(a1 + 3624) = *a3;
      return result;
    case 20:
      result = 0;
      *(a1 + 3628) = *a3;
      return result;
    case 21:
      result = 0;
      *(a1 + 3572) = *a3;
      return result;
    case 22:
      result = 0;
      *(a1 + 1268) = *a3;
      return result;
    case 23:
      result = 0;
      *(a1 + 1272) = *a3;
      return result;
    case 24:
      v18 = *a3;
      *(a1 + 1460) = *a3;
      if (v18 == 6)
      {
        goto LABEL_92;
      }

      result = 0;
      *(a1 + 1456) = 1;
      return result;
    case 25:
      *(a1 + 1464) = a3;
      AppleAVDSetCryptSession(a1);
      goto LABEL_92;
    case 26:
      result = 0;
      *(a1 + 1472) = a3;
      return result;
    case 28:
      result = 0;
      *(a1 + 3608) = a3;
      *(a1 + 3588) = 1;
      return result;
    case 29:
      result = 0;
      *(a1 + 3616) = a3;
      return result;
    case 30:
      result = 0;
      *(a1 + 996) = *a3;
      return result;
    case 31:
      v20 = *a3;
      v21 = *(a1 + 3564);
      if (*a3 <= v21 && *(a3 + 1) <= *(a1 + 3568))
      {
        result = 0;
        *(a1 + 1000) = v20;
        *(a1 + 1004) = *(a3 + 1);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a3 + 1);
          v23 = *(a1 + 3568);
          v26[0] = 67109888;
          v26[1] = v20;
          v27 = 1024;
          v28 = v21;
          v29 = 1024;
          v30 = v22;
          v31 = 1024;
          v32 = v23;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: VRA illegal size %u %u %u %u", v26, 0x1Au);
        }

        return 308;
      }

      return result;
    case 32:
      result = 0;
      *(a1 + 1016) = *a3;
      return result;
    case 33:
      result = 0;
      *(a1 + 3564) = *a3;
      *(a1 + 3568) = *(a3 + 1);
      return result;
    case 34:
      result = 0;
      *(a1 + 3576) = *a3;
      return result;
    case 35:
      result = 0;
      *(a1 + 1264) = *a3;
      return result;
    case 36:
      result = 0;
      *(a1 + 3853) = *a3;
      return result;
    case 37:
      result = 0;
      *(a1 + 3856) = *a3;
      return result;
    case 38:
      result = 0;
      *(a1 + 3708) = *a3;
      return result;
    case 39:
      result = 0;
      *(a1 + 64) = *a3;
      v7 = *(a3 + 1);
      v8 = *(a3 + 2);
      v9 = *(a3 + 4);
      *(a1 + 112) = *(a3 + 3);
      *(a1 + 128) = v9;
      *(a1 + 80) = v7;
      *(a1 + 96) = v8;
      v10 = *(a3 + 5);
      v11 = *(a3 + 6);
      v12 = *(a3 + 7);
      *(a1 + 192) = *(a3 + 64);
      *(a1 + 160) = v11;
      *(a1 + 176) = v12;
      *(a1 + 144) = v10;
      return result;
    case 40:
      result = 0;
      *(a1 + 1028) = *a3;
      return result;
    case 41:
      result = 0;
      *(a1 + 1032) = *a3;
      return result;
    case 42:
      result = 0;
      *(a1 + 1036) = *a3;
      return result;
    case 43:
      for (i = 0; i != 96; ++i)
      {
        result = 0;
        *(a1 + 1040 + i) = a3[i];
      }

      return result;
    case 44:
      for (j = 0; j != 64; ++j)
      {
        result = 0;
        *(a1 + 1136 + j) = a3[j];
      }

      return result;
    case 45:
      for (k = 0; k != 48; ++k)
      {
        result = 0;
        *(a1 + 1200 + k) = a3[k];
      }

      return result;
    case 46:
      for (m = 0; m != 16; ++m)
      {
        result = 0;
        *(a1 + 1248 + m) = a3[m];
      }

      return result;
    case 47:
      result = 0;
      *(a1 + 3717) = *a3;
      return result;
    case 48:
      result = 0;
      *(a1 + 232) = *a3;
      return result;
    case 49:
      result = 0;
      *(a1 + 992) = *a3;
      return result;
    case 51:
      result = 0;
      *(a1 + 3718) = *a3;
      return result;
    case 52:
      v16 = *a3;
      *(a1 + 3720) = *a3;
      if (v16 >= 0x74)
      {
        result = 0;
        v17 = 115;
LABEL_91:
        *(a1 + 3720) = v17;
        return result;
      }

      if (v16 <= 0x59)
      {
        result = 0;
        v17 = 90;
        goto LABEL_91;
      }

LABEL_92:
      result = 0;
      break;
    case 53:
      result = 0;
      *(a1 + 1020) = *a3;
      return result;
    case 54:
      result = 0;
      *(a1 + 1024) = *a3;
      return result;
    case 57:
      result = 0;
      *(a1 + 976) = *a3;
      return result;
    case 58:
      result = 0;
      *(a1 + 980) = *a3;
      return result;
    case 59:
      result = 0;
      v6 = *a3;
      goto LABEL_94;
    case 60:
      result = 0;
      *(a1 + 3916) = *a3;
      return result;
    case 61:
      v25 = *(a1 + 3732);
      result = 0;
      if (*a3 == 1)
      {
        v6 = v25 | 8;
      }

      else
      {
        v6 = v25 & 0xFFFFFFF7;
      }

LABEL_94:
      *(a1 + 3732) = v6;
      return result;
    case 62:
      result = 0;
      *(a1 + 3752) = a3;
      return result;
    case 63:
      result = 0;
      *(a1 + 3800) = *a3;
      return result;
    case 64:
      result = 0;
      *(a1 + 3808) = *a3;
      return result;
    case 65:
      result = 0;
      *(a1 + 3816) = *a3;
      return result;
    case 67:
      result = 0;
      *(a1 + 3784) = a3;
      return result;
    case 68:
    case 69:
      result = 0;
      *(a1 + 3768) = a3;
      return result;
    case 70:
      result = 0;
      *(a1 + 3832) = *a3;
      return result;
    case 71:
      result = 0;
      *(a1 + 3840) = *a3;
      return result;
    case 72:
      result = 0;
      *(a1 + 3864) = a3;
      return result;
    case 73:
      result = 0;
      *(a1 + 3872) = a3;
      return result;
    case 75:
      result = 0;
      *(a1 + 3820) = *a3;
      return result;
    case 76:
      result = 0;
      *(a1 + 3888) = *a3;
      return result;
    case 77:
      result = 0;
      *(a1 + 848) = *a3;
      return result;
    case 78:
      result = 0;
      *(a1 + 3912) = *a3;
      return result;
    default:
      return result;
  }

  return result;
}

void readPreferences(int *a1)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v31 = 136315138;
    *v32 = "readPreferences";
    v28 = MEMORY[0x277D86220];
    v29 = "AppleAVD: %s called with NULL prefs ptr";
    v30 = 12;
    goto LABEL_12;
  }

  *(a1 + 12) = 0;
  *a1 = xmmword_27775DFE0;
  *(a1 + 1) = xmmword_27775DFF0;
  *(a1 + 2) = xmmword_27775E000;
  *(a1 + 3) = xmmword_27775E010;
  *(a1 + 4) = xmmword_27775E020;
  *(a1 + 5) = xmmword_27775E030;
  a1[24] = 0;
  if (MGGetBoolAnswer())
  {
    a1[9] = VideoDecoder_getCFPreferenceNumber(@"AVD_EnableFileDump", @"com.apple.coremedia", 0);
    *a1 = VideoDecoder_getCFPreferenceNumber(@"AVD_AllowADSOnUnsupported", @"com.apple.coremedia", 0);
    a1[1] = VideoDecoder_getCFPreferenceNumber(@"AVD_AllowBitstreamToChangeFrameDimensions", @"com.apple.coremedia", 0);
    a1[2] = VideoDecoder_getCFPreferenceNumber(@"AVD_avdCoreControlPerfWeight", @"com.apple.coremedia", 90);
    a1[3] = VideoDecoder_getCFPreferenceNumber(@"AVD_CoreSelect", @"com.apple.coremedia", 32);
    a1[4] = VideoDecoder_getCFPreferenceNumber(@"AVD_AvdFilmGrainMode", @"com.apple.coremedia", 1);
    a1[5] = VideoDecoder_getCFPreferenceNumber(@"AVD_AvdOpPoint", @"com.apple.coremedia", 0);
    a1[6] = VideoDecoder_getCFPreferenceNumber(@"AVD_CPBCacheBufferSizeFactor", @"com.apple.coremedia", 2);
    a1[7] = VideoDecoder_getCFPreferenceNumber(@"AVD_CPBCacheNumBuffers", @"com.apple.coremedia", 4);
    a1[8] = VideoDecoder_getCFPreferenceNumber(@"AVD_CheckWireLimit", @"com.apple.coremedia", 1);
    a1[10] = VideoDecoder_getCFPreferenceNumber(@"AVD_EnableIdleTimer", @"com.apple.coremedia", 1);
    a1[11] = VideoDecoder_getCFPreferenceNumber(@"AVD_IdleTimerNumClients", @"com.apple.coremedia", 4);
    a1[12] = VideoDecoder_getCFPreferenceNumber(@"AVD_IdleTimerTimeout", @"com.apple.coremedia", 50);
    a1[13] = VideoDecoder_getCFPreferenceNumber(@"AVD_InhibitADSForAVCHEVC", @"com.apple.coremedia", 0);
    a1[14] = VideoDecoder_getCFPreferenceNumber(@"AVD_InhibitADSForVP9", @"com.apple.coremedia", 0);
    a1[15] = VideoDecoder_getCFPreferenceNumber(@"AVD_LogSliceHeaderLongerThan", @"com.apple.coremedia", 0xFFFFFFFFLL);
    a1[16] = VideoDecoder_getCFPreferenceNumber(@"AVD_MCacheMode", @"com.apple.coremedia", 0xFFFFFFFFLL);
    a1[17] = VideoDecoder_getCFPreferenceNumber(@"AVD_OnDemandDartMap", @"com.apple.coremedia", 1);
    a1[18] = VideoDecoder_getCFPreferenceNumber(@"AVD_RejectFormatDescription", @"com.apple.coremedia", 0);
    a1[19] = VideoDecoder_getCFPreferenceNumber(@"AVD_TryAllFrames", @"com.apple.coremedia", 0);
    a1[20] = VideoDecoder_getCFPreferenceNumber(@"AVD_EnableHistogram", @"com.apple.coremedia", 1);
    a1[21] = VideoDecoder_getCFPreferenceNumber(@"AVDUseCompression", @"com.apple.coremedia", 0xFFFFFFFFLL);
    a1[22] = VideoDecoder_getCFPreferenceNumber(@"AVD_EnableSliceQpExtraction", @"com.apple.coremedia", 0);
    a1[23] = VideoDecoder_getCFPreferenceNumber(@"AVD_EnableHistogramDump", @"com.apple.coremedia", 0);
    a1[24] = VideoDecoder_getCFPreferenceNumber(@"support_mvhevcwithalpha_decoding", @"com.apple.coremedia", 0);
    a1[25] = VideoDecoder_getCFPreferenceNumber(@"AVD_EnableMultiVPParsing", @"com.apple.coremedia", 0);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = a1[9];
    v3 = *a1;
    v4 = a1[1];
    v5 = a1[2];
    v6 = a1[3];
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v31 = 67110912;
    *v32 = v2;
    *&v32[4] = 1024;
    *&v32[6] = v3;
    v33 = 1024;
    v34 = v4;
    v35 = 1024;
    v36 = v5;
    v37 = 1024;
    v38 = v6;
    v39 = 1024;
    v40 = v7;
    v41 = 1024;
    v42 = v8;
    v43 = 1024;
    v44 = v9;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: cfg1: %d %d %d %d %d %d %d %d", &v31, 0x32u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[7];
    v11 = a1[8];
    v12 = a1[10];
    v13 = a1[11];
    v14 = a1[12];
    v15 = a1[13];
    v16 = a1[14];
    v17 = a1[15];
    v31 = 67110912;
    *v32 = v10;
    *&v32[4] = 1024;
    *&v32[6] = v11;
    v33 = 1024;
    v34 = v12;
    v35 = 1024;
    v36 = v13;
    v37 = 1024;
    v38 = v14;
    v39 = 1024;
    v40 = v15;
    v41 = 1024;
    v42 = v16;
    v43 = 1024;
    v44 = v17;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: cfg2: %d %d %d %d %d %d %d %d", &v31, 0x32u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18 = a1[16];
    v19 = a1[17];
    v20 = a1[18];
    v21 = a1[19];
    v22 = a1[20];
    v23 = a1[21];
    v24 = a1[22];
    v25 = a1[23];
    v26 = a1[24];
    v27 = a1[25];
    v31 = 67111424;
    *v32 = v18;
    *&v32[4] = 1024;
    *&v32[6] = v19;
    v33 = 1024;
    v34 = v20;
    v35 = 1024;
    v36 = v21;
    v37 = 1024;
    v38 = v22;
    v39 = 1024;
    v40 = v23;
    v41 = 1024;
    v42 = v24;
    v43 = 1024;
    v44 = v25;
    v45 = 1024;
    v46 = v26;
    v47 = 1024;
    v48 = v27;
    v28 = MEMORY[0x277D86220];
    v29 = "AppleAVD: cfg3: %d %d %d %d %d %d %d %d %d %d";
    v30 = 62;
LABEL_12:
    _os_log_impl(&dword_277606000, v28, OS_LOG_TYPE_DEFAULT, v29, &v31, v30);
  }
}

uint64_t VideoDecoder_getCFPreferenceNumber(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = CFPreferencesCopyValue(a1, a2, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v7);
      if ((IntValue & 0x80000000) != 0)
      {
        IntValue = 1;
        if (CFStringCompare(v7, @"true", 1uLL))
        {
          IntValue = 1;
          if (CFStringCompare(v7, @"yes", 1uLL))
          {
            if (CFStringCompare(v7, @"false", 1uLL) == kCFCompareEqualTo || (IntValue = a3, CFStringCompare(v7, @"no", 1uLL) == kCFCompareEqualTo))
            {
              IntValue = 0;
            }
          }
        }
      }

      goto LABEL_20;
    }

    v10 = CFGetTypeID(v7);
    if (v10 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(v7, kCFNumberIntType, &valuePtr))
      {
        a3 = valuePtr;
        goto LABEL_19;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 134218240;
      v17 = a1;
      v18 = 2048;
      v19 = a2;
      v12 = MEMORY[0x277D86220];
      v13 = "AppleAVD: AppleAVD_HEVCDecoder: cannot convert number %p %p";
    }

    else
    {
      v11 = CFGetTypeID(v7);
      if (v11 == CFBooleanGetTypeID())
      {
        IntValue = CFEqual(v7, *MEMORY[0x277CBED28]);
LABEL_20:
        CFRelease(v7);
        return IntValue;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:
        IntValue = a3;
        goto LABEL_20;
      }

      *buf = 134218240;
      v17 = a1;
      v18 = 2048;
      v19 = a2;
      v12 = MEMORY[0x277D86220];
      v13 = "AppleAVD: AppleAVD_HEVCDecoder: Cannot use type of %p %p";
    }

    _os_log_impl(&dword_277606000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
    goto LABEL_19;
  }

  return a3;
}

uint64_t safeGet32(uint64_t a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  v4 = *a3;
  if ((v4 + 4) > a4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = bswap32(*(a1 + v4));
  *a3 += 4;
  return result;
}

uint64_t safeGetShort(uint64_t a1, _WORD *a2, _DWORD *a3, unint64_t a4)
{
  v4 = *a3;
  v5 = (v4 + 2);
  if (v5 > a4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = bswap32(*(a1 + v4)) >> 16;
  *a3 = v5;
  return result;
}

uint64_t CreateAVDHEVCInstance(uint64_t a1, unsigned __int8 a2)
{
  v42 = *MEMORY[0x277D85DE8];
  *v36 = 0;
  v3 = AppleAVDOpenConnection(v36, 2, 1, a2);
  if (!v3)
  {
    v9 = *v36;
    *(a1 + 5184) = *v36;
    *(a1 + 5204) = 1;
    v10 = *(a1 + 8076);
    if (v10 != -1)
    {
      LODWORD(v33) = *(a1 + 8076);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v38 = v10;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: #HEVC# storage->memCacheMode = %d", buf, 8u);
        v9 = *(a1 + 5184);
      }

      if (AppleAVDSetParameter(v9, 40, &v33) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCVideoDecoder ERROR: kAppleAVDMemCacheMode set failed", buf, 2u);
      }

      v9 = *(a1 + 5184);
    }

    v35 = *(a1 + 8072);
    if (AppleAVDSetParameter(v9, 49, &v35) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCVideoDecoder ERROR: kAppleAVDSetTryEveryFrame set failed", buf, 2u);
    }

    if (AppleAVDSetParameter(*(a1 + 5184), 51, (a1 + 8080)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v38 = "CreateAVDHEVCInstance";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetOnDemandDVAMap failed", buf, 0xCu);
    }

    if (AppleAVDSetParameter(*(a1 + 5184), 52, (a1 + 16844)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v38 = "CreateAVDHEVCInstance";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetAVDCoreControlPerfWeight failed", buf, 0xCu);
    }

    if (AppleAVDSetParameter(*(a1 + 5184), 57, (a1 + 16832)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v38 = "CreateAVDHEVCInstance";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetCPBCacheBufferSizeFactor failed", buf, 0xCu);
    }

    if (AppleAVDSetParameter(*(a1 + 5184), 58, (a1 + 16836)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v38 = "CreateAVDHEVCInstance";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetCPBCacheNumBuffers failed", buf, 0xCu);
    }

    if (AppleAVDSetParameter(*(a1 + 5184), 59, (a1 + 8084)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v38 = "CreateAVDHEVCInstance";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetMiscPreferences failed", buf, 0xCu);
    }

    if (AppleAVDSetParameter(*(a1 + 5184), 60, (a1 + 16876)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v38 = "CreateAVDHEVCInstance";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetMultiVPParsing failed", buf, 0xCu);
    }

    v34 = *(a1 + 5832);
    v11 = AppleAVDSetParameter(*(a1 + 5184), 24, &v34);
    if (v11)
    {
      v4 = v11;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 5208);
        *buf = 67109376;
        *v38 = v12;
        *&v38[4] = 1024;
        *&v38[6] = v4;
        v5 = MEMORY[0x277D86220];
        v6 = "AppleAVD: AppleAVD_HEVCVideoDecoder: frame# %d, Could not set kAppleAVDSetCryptScheme, err %d\n";
        v7 = buf;
        v8 = 14;
        goto LABEL_37;
      }

      return v4;
    }

    v33 = DisplayCallBack_0;
    v14 = AppleAVDSetParameter(*v36, 1, &v33);
    if (v14)
    {
      v4 = v14;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v4;
      }

      *buf = 0;
      v5 = MEMORY[0x277D86220];
      v6 = "AppleAVD: AppleAVD_HEVCDecoder - ERROR setting parameter kAppleAVDDisplayCallBack";
      goto LABEL_4;
    }

    if (*(a1 + 16840))
    {
      v15 = PostEmitCleanUpCallBack_0;
    }

    else
    {
      v15 = 0;
    }

    v32 = v15;
    v16 = AppleAVDSetParameter(*v36, 71, &v32);
    if (v16)
    {
      v4 = v16;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v4;
      }

      *buf = 0;
      v5 = MEMORY[0x277D86220];
      v6 = "AppleAVD: AppleAVD_HEVCDecoder - ERROR setting parameter kAppleAVDPostEmitCleanUpCallBack";
      goto LABEL_4;
    }

    v17 = AppleAVDSetParameter(*v36, 70, (a1 + 16840));
    if (v17)
    {
      v4 = v17;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v4;
      }

      *buf = 0;
      v5 = MEMORY[0x277D86220];
      v6 = "AppleAVD: AppleAVD_HEVCDecoder - ERROR setting parameter kAppleAVDSetParavirtualizedSession";
      goto LABEL_4;
    }

    v18 = AppleAVDSetParameter(*v36, 2, a1);
    if (v18)
    {
      v4 = v18;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v4;
      }

      *buf = 0;
      v5 = MEMORY[0x277D86220];
      v6 = "AppleAVD: AppleAVD_HEVCDecoder - ERROR setting parameter kAppleAVDFIGUserRefCon";
      goto LABEL_4;
    }

    v19 = AppleAVDSetParameter(*(a1 + 5184), 9, 0);
    if (v19)
    {
      v4 = v19;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v4;
      }

      *buf = 0;
      v5 = MEMORY[0x277D86220];
      v6 = "AppleAVD: AppleAVD_HEVCDecoder - ERROR setting parameter kAppleAVDSetOutputFileName";
      goto LABEL_4;
    }

    v20 = AppleAVDSetParameter(*(a1 + 5184), 17, (a1 + 5816));
    if (v20)
    {
      v4 = v20;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v4;
      }

      *buf = 136315138;
      *v38 = "CreateAVDHEVCInstance";
      v5 = MEMORY[0x277D86220];
      v6 = "AppleAVD: %s(): AppleAVD_HEVCDecoder - ERROR setting parameter kAppleAVDSetUsageMode";
      v7 = buf;
      v8 = 12;
      goto LABEL_37;
    }

    if (AppleAVDSetParameter(*(a1 + 5184), 19, (a1 + 5828)))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v21 = MEMORY[0x277D86220];
        v22 = "AppleAVD: AppleAVD_HEVCDecoder - AppleAVDSetParameter kAppleAVDExtraInloopFilter returned ERROR";
LABEL_83:
        _os_log_impl(&dword_277606000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
      }
    }

    else
    {
      if (AppleAVDSetParameter(*(a1 + 5184), 7, (a1 + 8153)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *v38 = "CreateAVDHEVCInstance";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR setting kAppleAVDSetSkipVPSExtParsing failed", buf, 0xCu);
      }

      v23 = AppleAVDSetParameter(*(a1 + 5184), 67, *(a1 + 16824));
      v24 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        if (v24)
        {
          *buf = 0;
          v21 = MEMORY[0x277D86220];
          v22 = "AppleAVD: AppleAVD_HEVCDecoder - AppleAVDSetParameter kAppleAVDSetTaggedBufGroupArray returned ERROR";
          goto LABEL_83;
        }
      }

      else
      {
        if (v24)
        {
          v25 = *(a1 + 8164);
          *buf = 67109120;
          *v38 = v25;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCDecoder - setting parameter kAppleAVDMultiViewDecodeClient %d ", buf, 8u);
        }

        if (AppleAVDSetParameter(*(a1 + 5184), 5, (a1 + 8164)))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v21 = MEMORY[0x277D86220];
            v22 = "AppleAVD: AppleAVD_HEVCDecoder - AppleAVDSetParameter kAppleAVDMultiViewDecodeClient returned ERROR";
            goto LABEL_83;
          }
        }

        else if (AppleAVDSetParameter(*(a1 + 5184), 35, (a1 + 5820)))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v21 = MEMORY[0x277D86220];
            v22 = "AppleAVD: AppleAVD_HEVCDecoder - AppleAVDSetParameter kAppleAVDEnableRVRA returned ERROR";
            goto LABEL_83;
          }
        }

        else if (AppleAVDSetParameter(*(a1 + 5184), 36, (a1 + 16848)))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v21 = MEMORY[0x277D86220];
            v22 = "AppleAVD: AppleAVD_HEVCDecoder - AppleAVDSetParameter kAppleAVDSetEnableMuxedAlpha returned ERROR";
            goto LABEL_83;
          }
        }

        else
        {
          if (!AppleAVDSetParameter(*(a1 + 5184), 37, (a1 + 16860)))
          {
            *&v38[4] = 0u;
            v39 = 0u;
            v40 = 0u;
            v41 = 0;
            *buf = 2;
            *v38 = *(a1 + 5212);
            *&v38[12] = *(a1 + 5632);
            v26 = *(a1 + 5624);
            LODWORD(v39) = *(a1 + 5640);
            DWORD1(v39) = v26;
            BYTE8(v40) = *(a1 + 5644);
            BYTE2(v41) = *(a1 + 16) == 1;
            v27 = AppleAVDInitializeDecoder(*(a1 + 5184), buf);
            if (v27)
            {
              v4 = v27;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return v4;
              }

              *v31 = 0;
              v5 = MEMORY[0x277D86220];
              v6 = "AppleAVD: AppleAVD_HEVCDecoder ERROR: AppleAVDInitializeDecoder : init decoder device";
            }

            else
            {
              v28 = AppleAVDGetParameter(*v36, 8, (a1 + 5220));
              if (v28)
              {
                v4 = v28;
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  return v4;
                }

                *v31 = 0;
                v5 = MEMORY[0x277D86220];
                v6 = "AppleAVD: AppleAVD_HEVCDecoder - AppleAVDDeviceType returned ERROR";
              }

              else
              {
                v29 = AppleAVDGetParameter(*(a1 + 5184), 12, (a1 + 5712));
                if (v29)
                {
                  v4 = v29;
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    return v4;
                  }

                  *v31 = 0;
                  v5 = MEMORY[0x277D86220];
                  v6 = "AppleAVD: AppleAVD_HEVCDecoder ERROR: kAppleAVDGetSequenceParams : Could not get Params";
                }

                else
                {
                  v30 = AppleAVDGetParameter(*(a1 + 5184), 6, (a1 + 8160));
                  if (!v30)
                  {
                    if (*(a1 + 5712) >= 0x40u && *(a1 + 5716) > 0x3Fu)
                    {
                      return 0;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *v31 = 0;
                      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCDecoder ERROR: Unsupported picture size!", v31, 2u);
                    }

                    return 305;
                  }

                  v4 = v30;
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    return v4;
                  }

                  *v31 = 0;
                  v5 = MEMORY[0x277D86220];
                  v6 = "AppleAVD: AppleAVD_HEVCDecoder ERROR: kAppleAVDGetNumLayersMultiViewClient : Could not get Params";
                }
              }
            }

            v7 = v31;
            goto LABEL_5;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v21 = MEMORY[0x277D86220];
            v22 = "AppleAVD: AppleAVD_HEVCDecoder - AppleAVDSetParameter kAppleAVDSetMuxedAlphaStartingPlaneOffset returned ERROR";
            goto LABEL_83;
          }
        }
      }
    }

    return 4294954385;
  }

  v4 = v3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v5 = MEMORY[0x277D86220];
    v6 = "AppleAVD: AppleAVD_HEVCDecoder - ERROR opening kernel connection";
LABEL_4:
    v7 = buf;
LABEL_5:
    v8 = 2;
LABEL_37:
    _os_log_impl(&dword_277606000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, v8);
  }

  return v4;
}

uint64_t AppleAVDOpenConnection(io_connect_t **a1, int a2, char a3, unsigned __int8 a4)
{
  v38 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v8 = malloc_type_calloc(1uLL, 0xF50uLL, 0x10F0040FA2938B8uLL);
  connect = v8;
  if (!v8)
  {
    return 4294967294;
  }

  v9 = v8;
  existing = 0;
  v31 = 0;
  bzero(v8, 0xF50uLL);
  v9[365] = 6;
  *(v9 + 488) = malloc_type_calloc(1uLL, 0x220uLL, 0x833C8B52uLL);
  MatchingServices = MEMORY[0x277CAE880](0, &v31);
  if (MatchingServices || (v11 = v31, v12 = IOServiceMatching("AppleAVD"), MatchingServices = IOServiceGetMatchingServices(v11, v12, &existing), MatchingServices))
  {
    AVDFrameReceiver = MatchingServices;
  }

  else
  {
    v13 = IOIteratorNext(existing);
    if (v13)
    {
      v14 = v13;
      if (IOServiceOpen(v13, *MEMORY[0x277D85F48], a3 & 1 | (16 * a2) | (a4 << 12) | 0x100, connect))
      {
        AppleAVDOpenConnection_cold_2(buf);
        AVDFrameReceiver = *buf;
      }

      else
      {
        *buf = *connect;
        v35 = 0;
        *&v34[4] = &connect;
        *&v34[12] = AppleAVDDecodeFrameResponse;
        v36 = *(connect + 1436);
        object = voucher_copy();
        AVDFrameReceiver = CreateAVDFrameReceiver(connect + 161, buf, (connect + 324), connect + 170, connect + 342);
        os_release(object);
        if (!AVDFrameReceiver)
        {
          pthread_mutex_init((connect + 196), 0);
          pthread_cond_init((connect + 344), 0);
          v16 = connect;
          *(connect + 3716) = 0;
          v16[257] = -1;
          v17 = MGGetBoolAnswer();
          v18 = connect;
          if (!v17)
          {
LABEL_38:
            *a1 = v18;
            IOObjectRelease(v14);
            IOObjectRelease(existing);
            return 0;
          }

          *(connect + 3716) = 1;
          v19 = v18[921];
          v20 = CFPreferencesCopyValue(@"VXD_DebugMetaDataSEI", @"com.apple.coremedia", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
          if (!v20)
          {
LABEL_35:
            v18 = connect;
            connect[921] = v19;
            if (v19 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v34 = v19;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: avdDec - Setting CFDebugMetaDataSEI to %d\n", buf, 8u);
              v18 = connect;
            }

            goto LABEL_38;
          }

          v21 = v20;
          v22 = CFGetTypeID(v20);
          if (v22 == CFStringGetTypeID())
          {
            IntValue = CFStringGetIntValue(v21);
            if (IntValue < 0)
            {
              IntValue = 1;
              if (CFStringCompare(v21, @"true", 1uLL))
              {
                IntValue = 1;
                if (CFStringCompare(v21, @"yes", 1uLL))
                {
                  if (CFStringCompare(v21, @"false", 1uLL) == kCFCompareEqualTo || (IntValue = v19, CFStringCompare(v21, @"no", 1uLL) == kCFCompareEqualTo))
                  {
                    IntValue = 0;
                  }
                }
              }
            }

            goto LABEL_34;
          }

          v24 = CFGetTypeID(v21);
          if (v24 == CFNumberGetTypeID())
          {
            valuePtr = 0;
            if (CFNumberGetValue(v21, kCFNumberIntType, &valuePtr))
            {
              v19 = valuePtr;
              goto LABEL_33;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_33;
            }

            *buf = 134218240;
            *v34 = @"VXD_DebugMetaDataSEI";
            *&v34[8] = 2048;
            *&v34[10] = @"com.apple.coremedia";
            v26 = MEMORY[0x277D86220];
            v27 = "AppleAVD: ERROR: H3H264VideoDecoder FIG: cannot convert number %p %p";
          }

          else
          {
            v25 = CFGetTypeID(v21);
            if (v25 == CFBooleanGetTypeID())
            {
              IntValue = CFEqual(v21, *MEMORY[0x277CBED28]);
LABEL_34:
              CFRelease(v21);
              v19 = IntValue;
              goto LABEL_35;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
LABEL_33:
              IntValue = v19;
              goto LABEL_34;
            }

            *buf = 134218240;
            *v34 = @"VXD_DebugMetaDataSEI";
            *&v34[8] = 2048;
            *&v34[10] = @"com.apple.coremedia";
            v26 = MEMORY[0x277D86220];
            v27 = "AppleAVD: ERROR: H3H264VideoDecoder FIG: Cannot use type of %p %p";
          }

          _os_log_impl(&dword_277606000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0x16u);
          goto LABEL_33;
        }

        AppleAVDOpenConnection_cold_1(buf, &connect, AVDFrameReceiver);
      }

      IOObjectRelease(v14);
    }

    else
    {
      AVDFrameReceiver = 3758097088;
    }

    IOObjectRelease(existing);
  }

  if (connect)
  {
    free(connect);
  }

  return AVDFrameReceiver;
}

uint64_t CAVDDecoder::allocAVDMem(uint64_t a1, _OWORD *a2, uint64_t a3, int a4, int a5, char a6)
{
  v26 = *MEMORY[0x277D85DE8];
  address = 0;
  v11 = (*MEMORY[0x277D85F70] + a3) & ~*MEMORY[0x277D85F70];
  v12 = vm_allocate(*MEMORY[0x277D85F48], &address, v11, 1);
  v13 = address;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = address == 0;
  }

  if (v14)
  {
    v15 = v12;
    v16 = 3758097085;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v21 = "allocAVDMem";
      v22 = 1024;
      v23 = v15;
      v24 = 2048;
      v25 = v13;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR! vm_allocate failed! allocStatus: %d - addr: 0x%lx\n", buf, 0x1Cu);
    }
  }

  else
  {
    HIBYTE(v18) = a6;
    LOBYTE(v18) = 0;
    return CAVDDecoder::mapAVDMemory(v12, *(a1 + 2344), 0, v11, a5, a4, a2, 0, 0, address, v11, v18);
  }

  return v16;
}

uint64_t CAVDHevcDecoder::VAStartDecode(CAVDHevcDecoder *this, unsigned __int8 *a2, int a3)
{
  v52 = *MEMORY[0x277D85DE8];
  *(this + 2716) = 0;
  *(this + 749) = a3 >> 24;
  v6 = operator new(0xB0uLL, MEMORY[0x277D826F0]);
  if (!v6)
  {
    *(this + 375) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v46 = "VAStartDecode";
      v10 = MEMORY[0x277D86220];
      v11 = "AppleAVD: ERROR: %s: error creating rbsp!\n";
LABEL_7:
      _os_log_impl(&dword_277606000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
    }

    return 304;
  }

  v7 = v6;
  HEVC_RBSP::HEVC_RBSP(v6);
  *(this + 375) = v7;
  v8 = (*(*this + 288))(this, 1);
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v46 = "VAStartDecode";
      v47 = 1024;
      v48 = v9;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to allocate members (error = %u)!\n", buf, 0x12u);
    }

    return v9;
  }

  **(this + 1116) = 0;
  **(this + 1117) = 0;
  HwDecoder = CAVDHevcDecoder::allocateHwDecoder(this);
  *(this + 262) = HwDecoder;
  if (!HwDecoder)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 304;
    }

    *buf = 136315138;
    v46 = "VAStartDecode";
    v10 = MEMORY[0x277D86220];
    v11 = "AppleAVD: ERROR: %s(): Failed to create HW Decoder object!\n";
    goto LABEL_7;
  }

  if (!(*(*HwDecoder + 16))(HwDecoder))
  {
    if ((*(**(this + 262) + 168))(*(this + 262)))
    {
      v14 = a3 & 0xFFFFFF;
      *(this + 746) = 1;
      *(this + 8996) = 1;
      *(this + 4499) = 0;
      LODWORD(v15) = *(this + 749);
      if (v15 <= v14)
      {
        v19 = 0;
        v20 = 0;
        v40 = 0;
        v41 = 0;
        v21 = 0;
        v22 = &a2[v14];
        v23 = a2;
        do
        {
          switch(v15)
          {
            case 1:
              v29 = *v23;
              v24 = v23 + 1;
              v26 = v29;
              v27 = v29 + 1;
              break;
            case 2:
              v28 = *v23;
              v24 = v23 + 2;
              v26 = __rev16(v28);
              v27 = v26 + 2;
              break;
            case 4:
              v25 = *v23;
              v24 = v23 + 4;
              v26 = bswap32(v25);
              v27 = v26 + 4;
              break;
            default:
              return 317;
          }

          if (&v24[v26] > v22)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v46 = "VAStartDecode";
              v47 = 1024;
              v48 = v26;
              v49 = 2048;
              *v50 = v24;
              *&v50[8] = 2048;
              v51 = v22;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s NALU too big! %d nal_ptr:%p, buf_end:%p", buf, 0x26u);
            }

            return 318;
          }

          HEVC_RBSP::setRBSP(*(this + 375), v24, v26);
          if (!HEVC_RBSP::parseNAL(*(this + 375), &v42, 0))
          {
            return 305;
          }

          switch(v43)
          {
            case '""':
              if ((HEVC_RBSP::parsePPS(*(this + 375), *(this + 1022), *(this + 1021)) & 0x80000000) != 0)
              {
                return 305;
              }

              v40 = 1;
              break;
            case '!':
              v30 = HEVC_RBSP::parseSPS(*(this + 375), this + 3712, *(this + 1021), v44, 0);
              v19 = v30;
              if ((v30 & 0x80000000) != 0)
              {
                return 305;
              }

              v31 = (*(*this + 424))(this, *(this + 1021) + 23176 * v30);
              v32 = (*(this + 1021) + 23176 * v19);
              v32[5793] = CAVDHevcDecoder::DpbMaxSize(v31, v32);
              v21 = 1;
              break;
            case ' ':
              if ((HEVC_RBSP::parseVPS(*(this + 375), this + 928, 0, 0) & 1) == 0)
              {
                return 305;
              }

              v41 = 1;
              break;
          }

          v20 += v27;
          v23 = &a2[v20];
          v15 = *(this + 749);
        }

        while (&v23[v15] <= v22);
        if ((v41 & 1) == 0)
        {
          goto LABEL_19;
        }

        if (v21 & v40)
        {
          *(this + 2052) = v19;
          v33 = *(this + 1021);
          v34 = v33 + 23176 * v19;
          *&v35 = *(v34 + 3608);
          v36 = (v34 + 3636);
          v37 = *(v34 + 3600);
          DWORD2(v35) = *v36;
          HIDWORD(v35) = v37;
          *(this + 182) = v35;
          if (v37)
          {
            v37 = *(v33 + 23176 * v19 + 3640);
          }

          *(this + 2239) = v37;
          v38 = v33 + 23176 * v19;
          *(this + 2240) = *(v38 + 22872);
          v39 = *(v38 + 23172);
          *(this + 2241) = v39;
          *(this + 8968) = *(v38 + 3604);
          *(this + 748) = v39 + 6;
          (*(*this + 240))(this);
          CAVDDecoder::isADSDecryption(this);
          v9 = 0;
          *(this + 685) = 0;
          *(this + 2716) = 1;
          return v9;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 305;
        }

        *buf = 136315906;
        v46 = "VAStartDecode";
        v47 = 1024;
        v48 = 1;
        v49 = 1024;
        *v50 = v21 & 1;
        *&v50[4] = 1024;
        *&v50[6] = v40 & 1;
        v16 = MEMORY[0x277D86220];
        v17 = "AppleAVD: %s Parameter Set missing %d %d %d";
        v18 = 30;
      }

      else
      {
LABEL_19:
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 305;
        }

        *buf = 136315394;
        v46 = "VAStartDecode";
        v47 = 1024;
        v48 = 0;
        v16 = MEMORY[0x277D86220];
        v17 = "AppleAVD: %s Parameter Set missing %d";
        v18 = 18;
      }

      _os_log_impl(&dword_277606000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, v18);
      return 305;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v46 = "VAStartDecode";
      v10 = MEMORY[0x277D86220];
      v11 = "AppleAVD: ERROR: %s(): HW Decoder failed to allocate decodeBuffer!\n";
      goto LABEL_7;
    }

    return 304;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v46 = "VAStartDecode";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to initialize HW Decoder object!\n", buf, 0xCu);
  }

  return 307;
}

void HEVC_RBSP::HEVC_RBSP(HEVC_RBSP *this)
{
  *this = &unk_2886653C8;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 40) = 0;
  *(this + 19) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 72) = -1;
  HEVC_RBSP::initScanOrder(this);
}

void HEVC_RBSP::initScanOrder(HEVC_RBSP *this)
{
  v1 = this;
  v2 = 0;
  v3 = this + 8;
  do
  {
    for (i = 8; i != 32; i += 8)
    {
      v5 = malloc_type_calloc(4uLL, (4 << v2 << (v2 + 2)), 0x100004052888210uLL);
      *(v1 + i) = v5;
    }

    HEVC_RBSP::calcScanOrder(v5, 4 << v2, *&v3[24 * v2], *&v3[24 * v2 + 8], *&v3[24 * v2 + 16]);
    ++v2;
    v1 = (v1 + 24);
  }

  while (v2 != 4);
}

uint64_t CAHDecCatnipHevc::init(CAHDecCatnipHevc *this)
{
  v11 = *MEMORY[0x277D85DE8];
  result = CAVDDecoder::allocAVDMem(*(this + 32), (this + 280), *(this + 114), 6, 1, 0);
  if (result)
  {
    v3 = result;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = "init";
      v7 = 1024;
      v8 = 0;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to allocate m_decodeBufferMemInfo[%d]! Got %d\n", &v5, 0x18u);
    }

    return 301;
  }

  else
  {
    v4 = *(this + 35);
    *(this + 13) = 0;
    *(this + 33) = v4;
    *(this + 34) = v4;
  }

  return result;
}

uint64_t CAVDHevcDecoder::DpbMaxSize(uint64_t a1, unsigned int *a2)
{
  v2 = a2[16];
  if (v2)
  {
    v3 = a2[903] * a2[902];
    v4 = v2 / 3;
    if (v4 <= 29)
    {
      v11 = 36864;
      if (v4 == 21)
      {
        v12 = 245760;
      }

      else
      {
        v12 = 0;
      }

      if (v4 == 20)
      {
        v13 = 122880;
      }

      else
      {
        v13 = v12;
      }

      v14 = v4 == 10;
    }

    else
    {
      if (v4 <= 0x3E)
      {
        if (((1 << v4) & 0x1C000000000000) != 0)
        {
          v5 = 8912896;
          goto LABEL_32;
        }

        if (((1 << v4) & 0x7000000000000000) != 0)
        {
          v5 = 35651584;
          goto LABEL_32;
        }

        if (((1 << v4) & 0x30000000000) != 0)
        {
          v5 = 2228224;
LABEL_32:
          if (v3 <= v5 >> 2)
          {
            return 16;
          }

          if (v3 <= v5 >> 1)
          {
            return 12;
          }

          if (v3 <= (3 * v5) >> 2)
          {
            return 8;
          }

          return 6;
        }
      }

      v11 = 552960;
      if (v4 == 31)
      {
        v13 = 983040;
      }

      else
      {
        v13 = 0;
      }

      v14 = v4 == 30;
    }

    if (v14)
    {
      v5 = v11;
    }

    else
    {
      v5 = v13;
    }

    goto LABEL_32;
  }

  v6 = &a2[a2[1]];
  v7 = v6[977];
  v8 = v6[913];
  if (v7 <= v8 + 1)
  {
    v7 = v8 + 1;
  }

  if (v6[1041])
  {
    v9 = v6[5729];
    if (v7 <= v9)
    {
      v7 = v9;
    }
  }

  if (v7 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v7;
  }
}

uint64_t HEVC_RBSP::parseSPS(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v251 = *MEMORY[0x277D85DE8];
  bzero(__src, 0xDF8uLL);
  v9 = *(a1 + 104);
  *(a1 + 164) += 4;
  HEVC_RBSP::flush_bits(a1, 4);
  if (a5)
  {
    v10 = *(a1 + 104);
    *(a1 + 164) += 3;
    v11 = v10 >> 61;
    HEVC_RBSP::flush_bits(a1, 3);
    if (a4)
    {
      if (v11 == 7)
      {
        LOBYTE(v12) = 0;
        LODWORD(v11) = 0;
        v13 = 7;
        goto LABEL_9;
      }

      v13 = v11;
      LODWORD(v11) = 0;
    }

    else
    {
      v13 = 0;
    }

    v16 = *(a1 + 104);
    ++*(a1 + 164);
    v12 = v16 >> 63;
    HEVC_RBSP::flush_bits(a1, 1);
    HEVC_RBSP::parseProfileTierLevel(a1, __src, 1, v11);
  }

  else
  {
    v14 = *(a1 + 104);
    *(a1 + 164) += 3;
    v11 = v14 >> 61;
    HEVC_RBSP::flush_bits(a1, 3);
    v15 = *(a1 + 104);
    ++*(a1 + 164);
    v12 = v15 >> 63;
    HEVC_RBSP::flush_bits(a1, 1);
    HEVC_RBSP::parseProfileTierLevel(a1, __src, 1, v11);
    v13 = 0;
  }

LABEL_9:
  v238 = a4;
  v17 = *(a1 + 104);
  if ((v17 & 0x8000000000000000) != 0)
  {
    ++*(a1 + 164);
    HEVC_RBSP::flush_bits(a1, 1);
    v24 = 0;
    goto LABEL_18;
  }

  v18 = HIDWORD(v17);
  v19 = -32;
  do
  {
    LODWORD(v18) = 2 * v18;
    v20 = v19 + 1;
    if ((v18 & 0x80000000) != 0)
    {
      break;
    }

    v21 = v19 + 32;
    ++v19;
  }

  while (v21 < 0x1E);
  *(a1 + 164) += v20 + 33;
  HEVC_RBSP::flush_bits(a1, v20 + 33);
  v22 = *(a1 + 108);
  *(a1 + 164) += v20 + 32;
  v23 = v22 >> -v20;
  HEVC_RBSP::flush_bits(a1, v20 + 32);
  v24 = v23 + ~(-2 << (v20 + 31));
  if (v24 < 0x10)
  {
LABEL_18:
    v25 = a3 + 23176 * v24;
    HEVCReleaseSPS(v25);
    bzero((v25 + 8), 0x5A80uLL);
    memcpy((v25 + 12), __src, 0xDF8uLL);
    v26 = a4 != 0;
    if (a5)
    {
      v27 = v13;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    if (v13 != 7)
    {
      v26 = 0;
    }

    *(v25 + 22847) = v26;
    *(v25 + 22848) = v27;
    *v25 = v9 >> 60;
    *(v25 + 4) = v11;
    if (v11 < 7)
    {
      *(v25 + 8) = v12;
      *(v25 + 3588) = v24;
      v32 = *(a1 + 104);
      if (v26)
      {
        ++*(a1 + 164);
        HEVC_RBSP::flush_bits(a1, 1);
        *(v25 + 3592) = v32 < 0;
        if (v32 < 0)
        {
          v33 = *(a1 + 111);
          *(a1 + 164) += 8;
          HEVC_RBSP::flush_bits(a1, 8);
          *(v25 + 3596) = v33;
        }
      }

      else
      {
        if (v32 < 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          *(v25 + 3600) = 0;
        }

        else
        {
          v34 = HIDWORD(v32);
          v35 = -32;
          do
          {
            LODWORD(v34) = 2 * v34;
            v36 = v35 + 1;
            if ((v34 & 0x80000000) != 0)
            {
              break;
            }

            v37 = v35 + 32;
            ++v35;
          }

          while (v37 < 0x1E);
          *(a1 + 164) += v36 + 33;
          HEVC_RBSP::flush_bits(a1, v36 + 33);
          v38 = *(a1 + 108);
          *(a1 + 164) += v36 + 32;
          v39 = v38 >> -v36;
          HEVC_RBSP::flush_bits(a1, v36 + 32);
          v40 = v39 + ~(-2 << (v36 + 31));
          *(v25 + 3600) = v40;
          if (v40 >= 4)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_28;
            }

            *buf = 136316418;
            *v240 = "parseSPS";
            *&v240[8] = 1024;
            v241 = 2479;
            v242 = 2080;
            v243 = "sps->chroma_format_idc";
            v244 = 1024;
            v245 = v40;
            v246 = 1024;
            v247 = 0;
            v248 = 1024;
            v249 = 3;
            v28 = MEMORY[0x277D86220];
            v29 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
            goto LABEL_26;
          }

          if (v40 == 3)
          {
            v41 = *(a1 + 104);
            ++*(a1 + 164);
            v42 = v41 >> 63;
            HEVC_RBSP::flush_bits(a1, 1);
            *(v25 + 3604) = v42;
          }
        }

        v43 = *(a1 + 104);
        if ((v43 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v50 = 0;
        }

        else
        {
          v44 = HIDWORD(v43);
          v45 = -32;
          do
          {
            LODWORD(v44) = 2 * v44;
            v46 = v45 + 1;
            if ((v44 & 0x80000000) != 0)
            {
              break;
            }

            v47 = v45 + 32;
            ++v45;
          }

          while (v47 < 0x1E);
          *(a1 + 164) += v46 + 33;
          HEVC_RBSP::flush_bits(a1, v46 + 33);
          v48 = *(a1 + 108);
          *(a1 + 164) += v46 + 32;
          v49 = v48 >> -v46;
          HEVC_RBSP::flush_bits(a1, v46 + 32);
          v50 = v49 + ~(-2 << (v46 + 31));
        }

        *(v25 + 3608) = v50;
        v51 = *(a1 + 104);
        if ((v51 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v58 = 0;
        }

        else
        {
          v52 = HIDWORD(v51);
          v53 = -32;
          do
          {
            LODWORD(v52) = 2 * v52;
            v54 = v53 + 1;
            if ((v52 & 0x80000000) != 0)
            {
              break;
            }

            v55 = v53 + 32;
            ++v53;
          }

          while (v55 < 0x1E);
          *(a1 + 164) += v54 + 33;
          HEVC_RBSP::flush_bits(a1, v54 + 33);
          v56 = *(a1 + 108);
          *(a1 + 164) += v54 + 32;
          v57 = v56 >> -v54;
          HEVC_RBSP::flush_bits(a1, v54 + 32);
          v58 = v57 + ~(-2 << (v54 + 31));
        }

        *(v25 + 3612) = v58;
        v59 = *(v25 + 3608);
        if ((v59 - 65537) < 0xFFFF000F || v58 - 65537 <= 0xFFFF000E)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          *buf = 67109376;
          *v240 = v59;
          *&v240[4] = 1024;
          *&v240[6] = v58;
          v28 = MEMORY[0x277D86220];
          v29 = "AppleAVD: Unsupported sps->pic_width_in_luma_samples:%d or sps->pic_height_in_luma_samples:%d";
          v30 = 14;
          goto LABEL_27;
        }

        v60 = *(a1 + 104);
        ++*(a1 + 164);
        HEVC_RBSP::flush_bits(a1, 1);
        *(v25 + 3616) = v60 < 0;
        if (v60 < 0)
        {
          *(v25 + 3620) = HEVC_RBSP::ue_v(a1);
          *(v25 + 3624) = HEVC_RBSP::ue_v(a1);
          *(v25 + 3628) = HEVC_RBSP::ue_v(a1);
          *(v25 + 3632) = HEVC_RBSP::ue_v(a1);
        }

        *(v25 + 3636) = HEVC_RBSP::ue_v(a1);
        v61 = HEVC_RBSP::ue_v(a1);
        *(v25 + 3640) = v61;
        if (v61 >= 9)
        {
          v62 = v61;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          *buf = 136316418;
          *v240 = "parseSPS";
          *&v240[8] = 1024;
          v241 = 2506;
          v242 = 2080;
          v243 = "sps->bit_depth_chroma_minus8";
          v244 = 1024;
          v245 = v62;
          v246 = 1024;
          v247 = 0;
          v248 = 1024;
          v249 = 8;
          v28 = MEMORY[0x277D86220];
          v29 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
          goto LABEL_26;
        }
      }

      v63 = *(a1 + 104);
      if ((v63 & 0x8000000000000000) != 0)
      {
        ++*(a1 + 164);
        HEVC_RBSP::flush_bits(a1, 1);
        v71 = (v25 + 3644);
        *(v25 + 3644) = 0;
      }

      else
      {
        v64 = HIDWORD(v63);
        v65 = -32;
        do
        {
          LODWORD(v64) = 2 * v64;
          v66 = v65 + 1;
          if ((v64 & 0x80000000) != 0)
          {
            break;
          }

          v67 = v65 + 32;
          ++v65;
        }

        while (v67 < 0x1E);
        *(a1 + 164) += v66 + 33;
        HEVC_RBSP::flush_bits(a1, v66 + 33);
        v68 = *(a1 + 108);
        *(a1 + 164) += v66 + 32;
        v69 = v68 >> -v66;
        HEVC_RBSP::flush_bits(a1, v66 + 32);
        v70 = v69 + ~(-2 << (v66 + 31));
        *(v25 + 3644) = v70;
        if (v70 >= 0xD)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          *buf = 136316418;
          *v240 = "parseSPS";
          *&v240[8] = 1024;
          v241 = 2512;
          v242 = 2080;
          v243 = "sps->log2_max_pic_order_cnt_lsb_minus4";
          v244 = 1024;
          v245 = v70;
          v246 = 1024;
          v247 = 0;
          v248 = 1024;
          v249 = 12;
          v28 = MEMORY[0x277D86220];
          v29 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
          goto LABEL_26;
        }

        v71 = (v25 + 3644);
      }

      if (!*(v25 + 22847))
      {
        v236 = v71;
        v72 = *(a1 + 104);
        ++*(a1 + 164);
        HEVC_RBSP::flush_bits(a1, 1);
        *(v25 + 3648) = v72 < 0;
        v73 = v72 < 0 ? 0 : *(v25 + 4);
        v74 = v25 + 3652;
        v75 = v25 + 3908;
        v76 = v25 + 4164;
        do
        {
          v77 = *(a1 + 104);
          if ((v77 & 0x8000000000000000) != 0)
          {
            ++*(a1 + 164);
            HEVC_RBSP::flush_bits(a1, 1);
            v84 = 0;
          }

          else
          {
            v78 = HIDWORD(v77);
            v79 = -32;
            do
            {
              LODWORD(v78) = 2 * v78;
              v80 = v79 + 1;
              if ((v78 & 0x80000000) != 0)
              {
                break;
              }

              v81 = v79 + 32;
              ++v79;
            }

            while (v81 < 0x1E);
            *(a1 + 164) += v80 + 33;
            HEVC_RBSP::flush_bits(a1, v80 + 33);
            v82 = *(a1 + 108);
            *(a1 + 164) += v80 + 32;
            v83 = v82 >> -v80;
            HEVC_RBSP::flush_bits(a1, v80 + 32);
            v84 = v83 + ~(-2 << (v80 + 31));
          }

          *(v74 + 4 * v73) = v84;
          v85 = *(a1 + 104);
          if ((v85 & 0x8000000000000000) != 0)
          {
            ++*(a1 + 164);
            HEVC_RBSP::flush_bits(a1, 1);
            v92 = 0;
          }

          else
          {
            v86 = HIDWORD(v85);
            v87 = -32;
            do
            {
              LODWORD(v86) = 2 * v86;
              v88 = v87 + 1;
              if ((v86 & 0x80000000) != 0)
              {
                break;
              }

              v89 = v87 + 32;
              ++v87;
            }

            while (v89 < 0x1E);
            *(a1 + 164) += v88 + 33;
            HEVC_RBSP::flush_bits(a1, v88 + 33);
            v90 = *(a1 + 108);
            *(a1 + 164) += v88 + 32;
            v91 = v90 >> -v88;
            HEVC_RBSP::flush_bits(a1, v88 + 32);
            v92 = v91 + ~(-2 << (v88 + 31));
          }

          *(v75 + 4 * v73) = v92;
          v93 = *(a1 + 104);
          if ((v93 & 0x8000000000000000) != 0)
          {
            ++*(a1 + 164);
            HEVC_RBSP::flush_bits(a1, 1);
            v101 = 0;
            v102 = 4164;
          }

          else
          {
            v94 = HIDWORD(v93);
            v95 = -32;
            do
            {
              LODWORD(v94) = 2 * v94;
              v96 = v95 + 1;
              if ((v94 & 0x80000000) != 0)
              {
                break;
              }

              v97 = v95 + 32;
              ++v95;
            }

            while (v97 < 0x1E);
            *(a1 + 164) += v96 + 33;
            HEVC_RBSP::flush_bits(a1, v96 + 33);
            v98 = *(a1 + 108);
            *(a1 + 164) += v96 + 32;
            v99 = v98 >> -v96;
            HEVC_RBSP::flush_bits(a1, v96 + 32);
            v100 = v99 + ~(-2 << (v96 + 31));
            *(v76 + 4 * v73) = v100;
            v101 = v100 + *(v75 + 4 * v73) - 1;
            v102 = 22916;
          }

          *(v25 + v102 + 4 * v73++) = v101;
          v103 = *(v25 + 4);
        }

        while (v73 <= v103);
        v71 = v236;
        if (!*(v25 + 3648))
        {
          if (v103)
          {
            v104 = 0;
            v105 = (v25 + 3652);
            do
            {
              *v105 = *(v74 + 4 * v103);
              v105[64] = *(v75 + 4 * v103);
              v105[128] = *(v76 + 4 * v103);
              ++v104;
              ++v105;
            }

            while (v104 < v103);
          }
        }
      }

      v106 = *(a1 + 104);
      if ((v106 & 0x8000000000000000) != 0)
      {
        ++*(a1 + 164);
        HEVC_RBSP::flush_bits(a1, 1);
        v113 = 0;
      }

      else
      {
        v107 = HIDWORD(v106);
        v108 = -32;
        do
        {
          LODWORD(v107) = 2 * v107;
          v109 = v108 + 1;
          if ((v107 & 0x80000000) != 0)
          {
            break;
          }

          v110 = v108 + 32;
          ++v108;
        }

        while (v110 < 0x1E);
        *(a1 + 164) += v109 + 33;
        HEVC_RBSP::flush_bits(a1, v109 + 33);
        v111 = *(a1 + 108);
        *(a1 + 164) += v109 + 32;
        v112 = v111 >> -v109;
        HEVC_RBSP::flush_bits(a1, v109 + 32);
        v113 = v112 + ~(-2 << (v109 + 31));
      }

      *(v25 + 4420) = v113;
      v114 = *(a1 + 104);
      if ((v114 & 0x8000000000000000) != 0)
      {
        ++*(a1 + 164);
        HEVC_RBSP::flush_bits(a1, 1);
        v121 = 0;
      }

      else
      {
        v115 = HIDWORD(v114);
        v116 = -32;
        do
        {
          LODWORD(v115) = 2 * v115;
          v117 = v116 + 1;
          if ((v115 & 0x80000000) != 0)
          {
            break;
          }

          v118 = v116 + 32;
          ++v116;
        }

        while (v118 < 0x1E);
        *(a1 + 164) += v117 + 33;
        HEVC_RBSP::flush_bits(a1, v117 + 33);
        v119 = *(a1 + 108);
        *(a1 + 164) += v117 + 32;
        v120 = v119 >> -v117;
        HEVC_RBSP::flush_bits(a1, v117 + 32);
        v121 = v120 + ~(-2 << (v117 + 31));
      }

      *(v25 + 4424) = v121;
      v122 = *(a1 + 104);
      if ((v122 & 0x8000000000000000) != 0)
      {
        ++*(a1 + 164);
        HEVC_RBSP::flush_bits(a1, 1);
        v129 = 0;
      }

      else
      {
        v123 = HIDWORD(v122);
        v124 = -32;
        do
        {
          LODWORD(v123) = 2 * v123;
          v125 = v124 + 1;
          if ((v123 & 0x80000000) != 0)
          {
            break;
          }

          v126 = v124 + 32;
          ++v124;
        }

        while (v126 < 0x1E);
        *(a1 + 164) += v125 + 33;
        HEVC_RBSP::flush_bits(a1, v125 + 33);
        v127 = *(a1 + 108);
        *(a1 + 164) += v125 + 32;
        v128 = v127 >> -v125;
        HEVC_RBSP::flush_bits(a1, v125 + 32);
        v129 = v128 + ~(-2 << (v125 + 31));
      }

      *(v25 + 4428) = v129;
      v130 = *(a1 + 104);
      if ((v130 & 0x8000000000000000) != 0)
      {
        ++*(a1 + 164);
        HEVC_RBSP::flush_bits(a1, 1);
        v137 = 0;
      }

      else
      {
        v131 = HIDWORD(v130);
        v132 = -32;
        do
        {
          LODWORD(v131) = 2 * v131;
          v133 = v132 + 1;
          if ((v131 & 0x80000000) != 0)
          {
            break;
          }

          v134 = v132 + 32;
          ++v132;
        }

        while (v134 < 0x1E);
        *(a1 + 164) += v133 + 33;
        HEVC_RBSP::flush_bits(a1, v133 + 33);
        v135 = *(a1 + 108);
        *(a1 + 164) += v133 + 32;
        v136 = v135 >> -v133;
        HEVC_RBSP::flush_bits(a1, v133 + 32);
        v137 = v136 + ~(-2 << (v133 + 31));
      }

      *(v25 + 4432) = v137;
      v138 = *(a1 + 104);
      if ((v138 & 0x8000000000000000) != 0)
      {
        ++*(a1 + 164);
        HEVC_RBSP::flush_bits(a1, 1);
        v145 = 0;
      }

      else
      {
        v139 = HIDWORD(v138);
        v140 = -32;
        do
        {
          LODWORD(v139) = 2 * v139;
          v141 = v140 + 1;
          if ((v139 & 0x80000000) != 0)
          {
            break;
          }

          v142 = v140 + 32;
          ++v140;
        }

        while (v142 < 0x1E);
        *(a1 + 164) += v141 + 33;
        HEVC_RBSP::flush_bits(a1, v141 + 33);
        v143 = *(a1 + 108);
        *(a1 + 164) += v141 + 32;
        v144 = v143 >> -v141;
        HEVC_RBSP::flush_bits(a1, v141 + 32);
        v145 = v144 + ~(-2 << (v141 + 31));
      }

      *(v25 + 4436) = v145;
      v146 = *(a1 + 104);
      if ((v146 & 0x8000000000000000) != 0)
      {
        ++*(a1 + 164);
        HEVC_RBSP::flush_bits(a1, 1);
        v153 = 0;
      }

      else
      {
        v147 = HIDWORD(v146);
        v148 = -32;
        do
        {
          LODWORD(v147) = 2 * v147;
          v149 = v148 + 1;
          if ((v147 & 0x80000000) != 0)
          {
            break;
          }

          v150 = v148 + 32;
          ++v148;
        }

        while (v150 < 0x1E);
        *(a1 + 164) += v149 + 33;
        HEVC_RBSP::flush_bits(a1, v149 + 33);
        v151 = *(a1 + 108);
        *(a1 + 164) += v149 + 32;
        v152 = v151 >> -v149;
        HEVC_RBSP::flush_bits(a1, v149 + 32);
        v153 = v152 + ~(-2 << (v149 + 31));
      }

      *(v25 + 4440) = v153;
      v154 = *(a1 + 104);
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      *(v25 + 4444) = v154 < 0;
      if (v154 < 0)
      {
        *(v25 + 4445) = 0;
        if (*(v25 + 22847) && (v155 = *(a1 + 104), ++*(a1 + 164), HEVC_RBSP::flush_bits(a1, 1), *(v25 + 4445) = v155 < 0, v155 < 0))
        {
          v158 = *(a1 + 104);
          *(a1 + 164) += 6;
          v159 = v158 >> 58;
          HEVC_RBSP::flush_bits(a1, 6);
          *(v25 + 4446) = v159;
        }

        else
        {
          v156 = *(a1 + 104);
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          *(v25 + 4447) = v156 < 0;
          v157 = v25 + 4448;
          if (v156 < 0)
          {
            if ((HEVC_RBSP::parseScalingListData(a1, v157) & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            HEVC_RBSP::setDefaultScalingListData(a1, v157);
          }
        }
      }

      v160 = *(a1 + 104);
      ++*(a1 + 164);
      v161 = v160 >> 63;
      HEVC_RBSP::flush_bits(a1, 1);
      *(v25 + 10648) = v161;
      v162 = *(a1 + 104);
      ++*(a1 + 164);
      v163 = v162 >> 63;
      HEVC_RBSP::flush_bits(a1, 1);
      *(v25 + 10649) = v163;
      v164 = *(a1 + 104);
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      *(v25 + 10650) = v164 < 0;
      if (v164 < 0)
      {
        v165 = *(a1 + 104);
        *(a1 + 164) += 4;
        v166 = v165 >> 60;
        HEVC_RBSP::flush_bits(a1, 4);
        *(v25 + 10652) = v166;
        v167 = *(a1 + 104);
        *(a1 + 164) += 4;
        v168 = v167 >> 60;
        HEVC_RBSP::flush_bits(a1, 4);
        *(v25 + 10656) = v168;
        v169 = *(a1 + 104);
        if ((v169 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v176 = 0;
        }

        else
        {
          v170 = HIDWORD(v169);
          v171 = -32;
          do
          {
            LODWORD(v170) = 2 * v170;
            v172 = v171 + 1;
            if ((v170 & 0x80000000) != 0)
            {
              break;
            }

            v173 = v171 + 32;
            ++v171;
          }

          while (v173 < 0x1E);
          *(a1 + 164) += v172 + 33;
          HEVC_RBSP::flush_bits(a1, v172 + 33);
          v174 = *(a1 + 108);
          *(a1 + 164) += v172 + 32;
          v175 = v174 >> -v172;
          HEVC_RBSP::flush_bits(a1, v172 + 32);
          v176 = v175 + ~(-2 << (v172 + 31));
        }

        *(v25 + 10660) = v176;
        v177 = *(a1 + 104);
        if ((v177 & 0x8000000000000000) != 0)
        {
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          v184 = 0;
        }

        else
        {
          v178 = HIDWORD(v177);
          v179 = -32;
          do
          {
            LODWORD(v178) = 2 * v178;
            v180 = v179 + 1;
            if ((v178 & 0x80000000) != 0)
            {
              break;
            }

            v181 = v179 + 32;
            ++v179;
          }

          while (v181 < 0x1E);
          *(a1 + 164) += v180 + 33;
          HEVC_RBSP::flush_bits(a1, v180 + 33);
          v182 = *(a1 + 108);
          *(a1 + 164) += v180 + 32;
          v183 = v182 >> -v180;
          HEVC_RBSP::flush_bits(a1, v180 + 32);
          v184 = v183 + ~(-2 << (v180 + 31));
        }

        *(v25 + 10664) = v184;
        v185 = *(a1 + 104);
        ++*(a1 + 164);
        v186 = v185 >> 63;
        HEVC_RBSP::flush_bits(a1, 1);
        *(v25 + 10668) = v186;
      }

      v187 = *(a1 + 104);
      if ((v187 & 0x8000000000000000) != 0)
      {
        ++*(a1 + 164);
        HEVC_RBSP::flush_bits(a1, 1);
        *(v25 + 10672) = 0;
LABEL_170:
        v196 = *(a1 + 104);
        ++*(a1 + 164);
        HEVC_RBSP::flush_bits(a1, 1);
        *(v25 + 22116) = v196 < 0;
        if (v196 < 0)
        {
          v207 = HEVC_RBSP::ue_v(a1);
          v208 = v207;
          *(v25 + 22120) = v207;
          if (v207 >= 0x21)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_28;
            }

            *buf = 136316418;
            *v240 = "parseSPS";
            *&v240[8] = 1024;
            v241 = 2599;
            v242 = 2080;
            v243 = "sps->num_long_term_ref_pics_sps";
            v244 = 1024;
            v245 = v208;
            v246 = 1024;
            v247 = 0;
            v248 = 1024;
            v249 = 32;
            v28 = MEMORY[0x277D86220];
            v29 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
            goto LABEL_26;
          }

          if (v207)
          {
            v229 = 0;
            v230 = *v71 + 4;
            v231 = 28 - *v71;
            do
            {
              v232 = *(a1 + 108);
              *(a1 + 164) += v230;
              v233 = v232 >> v231;
              HEVC_RBSP::flush_bits(a1, v230);
              *(v25 + 22124 + 4 * v229) = v233;
              v234 = *(a1 + 104);
              ++*(a1 + 164);
              v235 = v234 >> 63;
              HEVC_RBSP::flush_bits(a1, 1);
              *(v25 + 22252 + v229++) = v235;
            }

            while (v229 < *(v25 + 22120));
          }
        }

        v197 = *(a1 + 104);
        ++*(a1 + 164);
        v198 = v197 >> 63;
        HEVC_RBSP::flush_bits(a1, 1);
        *(v25 + 22284) = v198;
        v199 = *(a1 + 104);
        ++*(a1 + 164);
        v200 = v199 >> 63;
        HEVC_RBSP::flush_bits(a1, 1);
        *(v25 + 22285) = v200;
        v201 = *(a1 + 104);
        ++*(a1 + 164);
        HEVC_RBSP::flush_bits(a1, 1);
        *(v25 + 22286) = v201 < 0;
        if ((v201 & 0x8000000000000000) == 0 || HEVC_RBSP::parseVUI(a1, v25 + 22288, *(v25 + 4)))
        {
          v202 = *(a1 + 104);
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          *(v25 + 22832) = v202 < 0;
          if (v202 < 0)
          {
            v209 = *(a1 + 104);
            ++*(a1 + 164);
            v210 = v209 >> 63;
            HEVC_RBSP::flush_bits(a1, 1);
            *(v25 + 22833) = v210;
            v211 = *(a1 + 104);
            ++*(a1 + 164);
            v212 = v211 >> 63;
            HEVC_RBSP::flush_bits(a1, 1);
            *(v25 + 22834) = v212;
            v213 = *(a1 + 104);
            *(a1 + 164) += 6;
            v214 = v213 >> 58;
            HEVC_RBSP::flush_bits(a1, 6);
            *(v25 + 22835) = v214;
            if (*(v25 + 22833))
            {
              HEVC_RBSP::parseSpsRangeExtension(a1, (v25 + 22836));
            }

            if (*(v25 + 22834))
            {
              v215 = *(a1 + 104);
              ++*(a1 + 164);
              v216 = v215 >> 63;
              HEVC_RBSP::flush_bits(a1, 1);
              *(v25 + 22845) = v216;
            }

            if (*(v25 + 22835))
            {
              while (1)
              {
                v217 = *(a1 + 152);
                if (v217)
                {
                  v217.i32[0] = vaddlv_u8(vcnt_s8(v217)) & 0x78;
                }

                if (*(a1 + 112) + v217.i32[0] + 8 * (*(a1 + 160) + *(a1 + 136) - *(a1 + 120)) + 32 < 9)
                {
                  break;
                }

                v218 = *(a1 + 104);
                ++*(a1 + 164);
                v219 = v218 >> 63;
                HEVC_RBSP::flush_bits(a1, 1);
                *(v25 + 22846) = v219;
              }
            }
          }

          v203 = HEVC_RBSP::byte_alignment(a1);
          if (!*(v25 + 22847) || !HEVC_RBSP::calcRepFormat(v203, a2, v25, v238))
          {
            v204 = *(v25 + 3600);
            if (v204 >= 4)
            {
              v205 = *(v25 + 22852);
              v206 = *(v25 + 22856);
            }

            else
            {
              v205 = dword_27775DC70[v204];
              v206 = dword_27775DC80[v204];
              *(v25 + 22852) = v205;
              *(v25 + 22856) = v206;
            }

            v220 = *(v25 + 4420) + 3;
            *(v25 + 22860) = v220;
            v221 = *(v25 + 4424) + v220;
            *(v25 + 22864) = v221;
            *(v25 + 22868) = 1 << v220;
            *(v25 + 22872) = 1 << v221;
            v222 = *(v25 + 3608);
            v223 = v222 >> v220;
            *(v25 + 22876) = v222 >> v220;
            v224 = (1 << v221) - 1;
            v225 = (v224 + v222) >> v221;
            *(v25 + 22880) = v225;
            v226 = *(v25 + 3612);
            v227 = v226 >> v220;
            *(v25 + 22884) = v227;
            v228 = (v224 + v226) >> v221;
            *(v25 + 22888) = v228;
            *(v25 + 22892) = v227 * v223;
            *(v25 + 22896) = v228 * v225;
            *(v25 + 22900) = v226 * v222;
            *(v25 + 22904) = v222 / v205;
            *(v25 + 22908) = v226 / v206;
            *(v25 + 22912) = 1 << (*(v25 + 3644) + 4);
            return v24;
          }
        }
      }

      else
      {
        v188 = HIDWORD(v187);
        v189 = -32;
        do
        {
          LODWORD(v188) = 2 * v188;
          v190 = v189 + 1;
          if ((v188 & 0x80000000) != 0)
          {
            break;
          }

          v191 = v189 + 32;
          ++v189;
        }

        while (v191 < 0x1E);
        *(a1 + 164) += v190 + 33;
        HEVC_RBSP::flush_bits(a1, v190 + 33);
        v192 = *(a1 + 108);
        *(a1 + 164) += v190 + 32;
        v193 = v192 >> -v190;
        HEVC_RBSP::flush_bits(a1, v190 + 32);
        v194 = v193 + ~(-2 << (v190 + 31));
        *(v25 + 10672) = v194;
        if (v194 <= 0x40)
        {
          v195 = 0;
          while ((HEVC_RBSP::parseShortTermRefPicSet(a1, v25 + 10676, v195, v194) & 1) != 0)
          {
            ++v195;
            v194 = *(v25 + 10672);
            if (v195 >= v194)
            {
              goto LABEL_170;
            }
          }

          goto LABEL_28;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          *v240 = "parseSPS";
          *&v240[8] = 1024;
          v241 = 2582;
          v242 = 2080;
          v243 = "sps->num_short_term_ref_pic_sets";
          v244 = 1024;
          v245 = v193 + ~(-2 << (v190 + 31));
          v246 = 1024;
          v247 = 0;
          v248 = 1024;
          v249 = 64;
          v28 = MEMORY[0x277D86220];
          v29 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
          goto LABEL_26;
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      *v240 = "parseSPS";
      *&v240[8] = 1024;
      v241 = 2462;
      v242 = 2080;
      v243 = "sps->sps_max_sub_layers_minus1";
      v244 = 1024;
      v245 = v11;
      v246 = 1024;
      v247 = 0;
      v248 = 1024;
      v249 = 6;
      v28 = MEMORY[0x277D86220];
      v29 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
LABEL_26:
      v30 = 46;
LABEL_27:
      _os_log_impl(&dword_277606000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, v30);
    }

LABEL_28:
    HEVCReleaseSPS(v25);
    v24 = 0xFFFFFFFFLL;
    *(v25 + 3588) = -1;
    return v24;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v240 = "int32_t HEVC_RBSP::parseSPS(hevc_video_parameter_set_t *, hevc_sequence_parameter_set_t *, int, int)";
    *&v240[8] = 1024;
    v241 = v24;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s out of range SPS id %u", buf, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t AppleAVDInitializeDecoder(uint64_t a1, int *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 948);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = (v7 + 15) & 0xFFFFFFF0;
  if (*a2 == 4)
  {
    v8 = a2[2];
  }

  *(a1 + 8) = v6;
  *(a1 + 12) = v8;
  *(a1 + 228) = v5;
  *(a1 + 1424) = 0;
  *(a1 + 848) = 0;
  *(a1 + 3724) = *(a2 + 5);
  *(a1 + 3852) = *(a2 + 56);
  *(a1 + 3848) = *(a2 + 57);
  *(a1 + 3680) = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *(a1 + 3776) = Mutable;
  *(a1 + 3656) = 0u;
  *(a1 + 3588) = *(a2 + 58);
  if (Mutable)
  {
    v10 = operator new(0x108uLL, MEMORY[0x277D826F0]);
    if (v10)
    {
      v11 = v10;
      CPBManager::CPBManager(v10, a1);
      v12 = (a1 + 960);
      *(a1 + 960) = v11;
      inited = CPBManager::initCache(v11);
      if (inited)
      {
        v14 = inited;
        goto LABEL_21;
      }

      v18 = (a2[6] & 0xFFFFFF);
      __dst[0] = 0;
      __dst[1] = v18;
      v24 = -559038737;
      v14 = AppleAVDGetParameter(a1, 55, __dst);
      if (v14)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        *buf = 136315394;
        v26 = "AppleAVDInitializeDecoder";
        v27 = 1024;
        v28 = v14;
        v15 = MEMORY[0x277D86220];
        v16 = "AppleAVD: ERROR: %s(): AppleAVDGetParameter [kAppleAVDGetCompressedPictureBuffer] failed with %d\n";
      }

      else
      {
        v19 = *(a2 + 2);
        if (v19)
        {
          memcpy(__dst[0], v19, a2[6] & 0xFFFFFF);
        }

        v20 = a2[6];
        *(a1 + 1432) = v20 >> 24;
        v14 = AppleAVDCreateDecodeDeviceInternal(a1, v5, *(a1 + 8), *(a1 + 12), __dst[0], v20, a2[8], a2[13]);
        if (!v14)
        {
          if (*(a1 + 228) == 4)
          {
            *(a1 + 8) = vmax_u32(*v4, *(a1 + 8));
          }

          if (*(a1 + 3716) == 1 && *(a1 + 3684))
          {
            v22 = 3 * v6 * v7;
            *(a1 + 3688) = malloc_type_malloc(v22, 0x100004077774924uLL);
            *(a1 + 3696) = malloc_type_malloc(v22, 0x100004077774924uLL);
          }

          v14 = 0;
          *(a1 + 3704) = 0;
          goto LABEL_21;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
LABEL_21:
          if (*v12 && __dst[0])
          {
            AppleAVDReleaseOneCPB(a1, -559038737, (*(a1 + 969) & 1) == 0);
          }

          if (v14)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v26 = "AppleAVDInitializeDecoder";
              v27 = 1024;
              v28 = v14;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed with error = %d", buf, 0x12u);
            }

            if (*v12)
            {
              CPBManager::~CPBManager(*v12);
              MEMORY[0x277CAEC20]();
              *v12 = 0;
            }
          }

          return v14;
        }

        *buf = 136315394;
        v26 = "AppleAVDInitializeDecoder";
        v27 = 1024;
        v28 = v14;
        v15 = MEMORY[0x277D86220];
        v16 = "AppleAVD: ERROR: %s(): AppleAVDCreateDecodeDeviceInternal failed: %d";
      }

      v17 = 18;
    }

    else
    {
      v14 = 3758097085;
      v12 = (a1 + 960);
      *(a1 + 960) = 0;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 136315138;
      v26 = "AppleAVDInitializeDecoder";
      v15 = MEMORY[0x277D86220];
      v16 = "AppleAVD: ERROR: %s(): Create CPBManager Failed";
      v17 = 12;
    }

    _os_log_impl(&dword_277606000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, v17);
    goto LABEL_21;
  }

  v14 = 3758097085;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "AppleAVDInitializeDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR: Create layersErrorStatus Failed", buf, 0xCu);
  }

  return v14;
}

uint64_t CAVDHevcDecoder::allocateMembersPerLayer(CAVDHevcDecoder *this, int a2)
{
  v27 = *MEMORY[0x277D85DE8];
  *(this + 2283) = a2;
  if (a2 >= 1)
  {
    bzero(this + 3016, 8 * a2);
    v4 = 0;
    v5 = MEMORY[0x277D826F0];
    while (1)
    {
      v6 = operator new(0x19D0uLL, v5);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      HEVC_RLM::HEVC_RLM(v6, this);
      *(this + v4++ + 377) = v7;
      if (a2 == v4)
      {
        goto LABEL_5;
      }
    }

    *(this + v4 + 377) = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 304;
    }

    v23 = 136315394;
    v24 = "allocateMembersPerLayer";
    v25 = 1024;
    v26 = v4;
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: ERROR: %s(): [layer %d] error creating rlm!\n";
    goto LABEL_24;
  }

LABEL_5:
  v8 = malloc_type_calloc(0x80uLL, 16 * a2, 0x10200405A8C63A5uLL);
  *(this + 1041) = v8;
  if (!v8)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 304;
    }

    v23 = 136315138;
    v24 = "allocateMembersPerLayer";
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: %s m_curAu mem alloc failed ";
LABEL_51:
    v22 = 12;
    goto LABEL_52;
  }

  *(this + 2084) = 16 * a2;
  v9 = malloc_type_calloc(0x68uLL, a2, 0x10000404C263E51uLL);
  *(this + 1024) = v9;
  if (!v9)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 304;
    }

    v23 = 136315138;
    v24 = "allocateMembersPerLayer";
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: %s m_spsInfo mem alloc failed ";
    goto LABEL_51;
  }

  v10 = malloc_type_calloc(0xB4uLL, a2, 0x1000040A69A29C8uLL);
  *(this + 1025) = v10;
  if (!v10)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 304;
    }

    v23 = 136315138;
    v24 = "allocateMembersPerLayer";
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: %s m_spsInfo mem alloc failed ";
    goto LABEL_51;
  }

  v11 = malloc_type_calloc(8uLL, a2, 0x10040436913F5uLL);
  *(this + 1036) = v11;
  if (!v11)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 304;
    }

    v23 = 136315138;
    v24 = "allocateMembersPerLayer";
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: %s m_dec_pb_idx mem alloc failed ";
    goto LABEL_51;
  }

  v12 = malloc_type_calloc(8uLL, a2, 0x10040436913F5uLL);
  *(this + 1037) = v12;
  if (!v12)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 304;
    }

    v23 = 136315138;
    v24 = "allocateMembersPerLayer";
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: %s m_disp_pb_idx mem alloc failed ";
    goto LABEL_51;
  }

  v13 = malloc_type_calloc(8uLL, a2, 0x10040436913F5uLL);
  *(this + 1038) = v13;
  if (!v13)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 304;
    }

    v23 = 136315138;
    v24 = "allocateMembersPerLayer";
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: %s m_second_dec_pb_idx mem alloc failed ";
    goto LABEL_51;
  }

  if (a2 >= 1)
  {
    v14 = 0;
    while (1)
    {
      *(*(this + 1036) + 8 * v14) = malloc_type_calloc(4uLL, 0x10uLL, 0x100004052888210uLL);
      if (!*(*(this + 1036) + 8 * v14))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 304;
        }

        v23 = 136315394;
        v24 = "allocateMembersPerLayer";
        v25 = 1024;
        v26 = v14;
        v20 = MEMORY[0x277D86220];
        v21 = "AppleAVD: ERROR: %s(): [layer %d] Failed to allocate m_dec_pb_idx!\n";
        goto LABEL_24;
      }

      *(*(this + 1037) + 8 * v14) = malloc_type_calloc(4uLL, 0x10uLL, 0x100004052888210uLL);
      if (!*(*(this + 1037) + 8 * v14))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 304;
        }

        v23 = 136315394;
        v24 = "allocateMembersPerLayer";
        v25 = 1024;
        v26 = v14;
        v20 = MEMORY[0x277D86220];
        v21 = "AppleAVD: ERROR: %s(): [layer %d] Failed to allocate m_disp_pb_idx!\n";
        goto LABEL_24;
      }

      *(*(this + 1038) + 8 * v14) = malloc_type_calloc(4uLL, 0x10uLL, 0x100004052888210uLL);
      if (!*(*(this + 1038) + 8 * v14))
      {
        break;
      }

      if (a2 == ++v14)
      {
        goto LABEL_17;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 304;
    }

    v23 = 136315394;
    v24 = "allocateMembersPerLayer";
    v25 = 1024;
    v26 = v14;
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: ERROR: %s(): [layer %d] Failed to allocate m_second_dec_pb_idx!\n";
LABEL_24:
    v22 = 18;
LABEL_52:
    _os_log_impl(&dword_277606000, v20, OS_LOG_TYPE_DEFAULT, v21, &v23, v22);
    return 304;
  }

LABEL_17:
  v15 = malloc_type_calloc(4uLL, a2, 0x100004052888210uLL);
  *(this + 1116) = v15;
  if (!v15)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 304;
    }

    v23 = 136315138;
    v24 = "allocateMembersPerLayer";
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: %s m_dec_pb_idx mem alloc failed ";
    goto LABEL_51;
  }

  v16 = malloc_type_calloc(4uLL, a2, 0x100004052888210uLL);
  *(this + 1117) = v16;
  if (!v16)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 304;
    }

    v23 = 136315138;
    v24 = "allocateMembersPerLayer";
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: %s m_dec_pb_idx mem alloc failed ";
    goto LABEL_51;
  }

  v17 = malloc_type_calloc(4uLL, a2, 0x100004052888210uLL);
  *(this + 1122) = v17;
  if (!v17)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 304;
    }

    v23 = 136315138;
    v24 = "allocateMembersPerLayer";
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: %s m_dec_pb_idx mem alloc failed ";
    goto LABEL_51;
  }

  v18 = malloc_type_calloc(4uLL, a2, 0x100004052888210uLL);
  *(this + 1123) = v18;
  if (v18)
  {
    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315138;
    v24 = "allocateMembersPerLayer";
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: %s m_dec_pb_idx mem alloc failed ";
    goto LABEL_51;
  }

  return 304;
}

void HEVC_RLM::HEVC_RLM(HEVC_RLM *this, CAVDHevcDecoder *a2)
{
  *(this + 708) = 0;
  *(this + 824) = 0;
  *(this + 1650) = 0;
  *(this + 355) = 0;
  *this = &unk_2886653E8;
  *(this + 1) = a2;
  bzero(this + 16, 0xB00uLL);
  v3 = 0;
  v4 = (this + 60);
  do
  {
    *v4 = v3;
    v4 += 44;
    ++v3;
  }

  while (v3 != 16);
  bzero(this + 2848, 0x3A0uLL);
}

CAHDec *createCatnipHevcDecoder(void *a1)
{
  v2 = operator new(0x2E38uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDec::CAHDec(v2);
    *v3 = &unk_288665828;
    *(v3 + 32) = a1;
    *(v3 + 114) = 420332;
    *(v3 + 2) = 2924;
    *(v3 + 1) = xmmword_27775BBF0;
    *(v3 + 8) = 2;
    *(v3 + 7) = a1;
    bzero(v3 + 528, 0x2C00uLL);
  }

  return v3;
}

void CAHDec::CAHDec(CAHDec *this)
{
  *this = &unk_288665468;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 148) = 0u;
  *(this + 164) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0u;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 15) = 0u;
}

uint64_t HEVC_RBSP::parseVUI(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *a2 = v6 < 0;
  if (v6 < 0)
  {
    v7 = *(a1 + 104);
    *(a1 + 164) += 8;
    v8 = HIBYTE(v7);
    HEVC_RBSP::flush_bits(a1, 8);
    *(a2 + 4) = v8;
    if (v8 == 255)
    {
      v9 = *(a1 + 110);
      *(a1 + 164) += 16;
      HEVC_RBSP::flush_bits(a1, 16);
      *(a2 + 8) = v9;
      v10 = *(a1 + 110);
      *(a1 + 164) += 16;
      HEVC_RBSP::flush_bits(a1, 16);
      *(a2 + 12) = v10;
    }
  }

  v11 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 16) = v11 < 0;
  if (v11 < 0)
  {
    v12 = *(a1 + 104);
    ++*(a1 + 164);
    v13 = v12 >> 63;
    HEVC_RBSP::flush_bits(a1, 1);
    *(a2 + 17) = v13;
  }

  v14 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 18) = v14 < 0;
  if (v14 < 0)
  {
    v15 = *(a1 + 104);
    *(a1 + 164) += 3;
    v16 = v15 >> 61;
    HEVC_RBSP::flush_bits(a1, 3);
    *(a2 + 20) = v16;
    v17 = *(a1 + 104);
    ++*(a1 + 164);
    v18 = v17 >> 63;
    HEVC_RBSP::flush_bits(a1, 1);
    *(a2 + 24) = v18;
    v19 = *(a1 + 104);
    ++*(a1 + 164);
    HEVC_RBSP::flush_bits(a1, 1);
    *(a2 + 25) = v19 < 0;
    if (v19 < 0)
    {
      v20 = *(a1 + 111);
      *(a1 + 164) += 8;
      HEVC_RBSP::flush_bits(a1, 8);
      *(a2 + 28) = v20;
      v21 = *(a1 + 111);
      *(a1 + 164) += 8;
      HEVC_RBSP::flush_bits(a1, 8);
      *(a2 + 32) = v21;
      v22 = *(a1 + 111);
      *(a1 + 164) += 8;
      HEVC_RBSP::flush_bits(a1, 8);
      *(a2 + 36) = v22;
    }
  }

  v23 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 40) = v23 < 0;
  if (v23 < 0)
  {
    v24 = *(a1 + 104);
    if ((v24 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v31 = 0;
    }

    else
    {
      v25 = HIDWORD(v24);
      v26 = -32;
      do
      {
        LODWORD(v25) = 2 * v25;
        v27 = v26 + 1;
        if ((v25 & 0x80000000) != 0)
        {
          break;
        }

        v28 = v26 + 32;
        ++v26;
      }

      while (v28 < 0x1E);
      *(a1 + 164) += v27 + 33;
      HEVC_RBSP::flush_bits(a1, v27 + 33);
      v29 = *(a1 + 108);
      *(a1 + 164) += v27 + 32;
      v30 = v29 >> -v27;
      HEVC_RBSP::flush_bits(a1, v27 + 32);
      v31 = v30 + ~(-2 << (v27 + 31));
    }

    *(a2 + 44) = v31;
    v32 = *(a1 + 104);
    if ((v32 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v39 = 0;
    }

    else
    {
      v33 = HIDWORD(v32);
      v34 = -32;
      do
      {
        LODWORD(v33) = 2 * v33;
        v35 = v34 + 1;
        if ((v33 & 0x80000000) != 0)
        {
          break;
        }

        v36 = v34 + 32;
        ++v34;
      }

      while (v36 < 0x1E);
      *(a1 + 164) += v35 + 33;
      HEVC_RBSP::flush_bits(a1, v35 + 33);
      v37 = *(a1 + 108);
      *(a1 + 164) += v35 + 32;
      v38 = v37 >> -v35;
      HEVC_RBSP::flush_bits(a1, v35 + 32);
      v39 = v38 + ~(-2 << (v35 + 31));
    }

    *(a2 + 48) = v39;
  }

  v40 = *(a1 + 104);
  ++*(a1 + 164);
  v41 = v40 >> 63;
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 52) = v41;
  v42 = *(a1 + 104);
  ++*(a1 + 164);
  v43 = v42 >> 63;
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 53) = v43;
  v44 = *(a1 + 104);
  ++*(a1 + 164);
  v45 = v44 >> 63;
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 54) = v45;
  v46 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 55) = v46 < 0;
  if (v46 < 0)
  {
    v47 = *(a1 + 104);
    if ((v47 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v54 = 0;
    }

    else
    {
      v48 = HIDWORD(v47);
      v49 = -32;
      do
      {
        LODWORD(v48) = 2 * v48;
        v50 = v49 + 1;
        if ((v48 & 0x80000000) != 0)
        {
          break;
        }

        v51 = v49 + 32;
        ++v49;
      }

      while (v51 < 0x1E);
      *(a1 + 164) += v50 + 33;
      HEVC_RBSP::flush_bits(a1, v50 + 33);
      v52 = *(a1 + 108);
      *(a1 + 164) += v50 + 32;
      v53 = v52 >> -v50;
      HEVC_RBSP::flush_bits(a1, v50 + 32);
      v54 = v53 + ~(-2 << (v50 + 31));
    }

    *(a2 + 56) = v54;
    v55 = *(a1 + 104);
    if ((v55 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v62 = 0;
    }

    else
    {
      v56 = HIDWORD(v55);
      v57 = -32;
      do
      {
        LODWORD(v56) = 2 * v56;
        v58 = v57 + 1;
        if ((v56 & 0x80000000) != 0)
        {
          break;
        }

        v59 = v57 + 32;
        ++v57;
      }

      while (v59 < 0x1E);
      *(a1 + 164) += v58 + 33;
      HEVC_RBSP::flush_bits(a1, v58 + 33);
      v60 = *(a1 + 108);
      *(a1 + 164) += v58 + 32;
      v61 = v60 >> -v58;
      HEVC_RBSP::flush_bits(a1, v58 + 32);
      v62 = v61 + ~(-2 << (v58 + 31));
    }

    *(a2 + 60) = v62;
    v63 = *(a1 + 104);
    if ((v63 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v70 = 0;
    }

    else
    {
      v64 = HIDWORD(v63);
      v65 = -32;
      do
      {
        LODWORD(v64) = 2 * v64;
        v66 = v65 + 1;
        if ((v64 & 0x80000000) != 0)
        {
          break;
        }

        v67 = v65 + 32;
        ++v65;
      }

      while (v67 < 0x1E);
      *(a1 + 164) += v66 + 33;
      HEVC_RBSP::flush_bits(a1, v66 + 33);
      v68 = *(a1 + 108);
      *(a1 + 164) += v66 + 32;
      v69 = v68 >> -v66;
      HEVC_RBSP::flush_bits(a1, v66 + 32);
      v70 = v69 + ~(-2 << (v66 + 31));
    }

    *(a2 + 64) = v70;
    v71 = *(a1 + 104);
    if ((v71 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v78 = 0;
    }

    else
    {
      v72 = HIDWORD(v71);
      v73 = -32;
      do
      {
        LODWORD(v72) = 2 * v72;
        v74 = v73 + 1;
        if ((v72 & 0x80000000) != 0)
        {
          break;
        }

        v75 = v73 + 32;
        ++v73;
      }

      while (v75 < 0x1E);
      *(a1 + 164) += v74 + 33;
      HEVC_RBSP::flush_bits(a1, v74 + 33);
      v76 = *(a1 + 108);
      *(a1 + 164) += v74 + 32;
      v77 = v76 >> -v74;
      HEVC_RBSP::flush_bits(a1, v74 + 32);
      v78 = v77 + ~(-2 << (v74 + 31));
    }

    *(a2 + 68) = v78;
  }

  v79 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 72) = v79 < 0;
  if ((v79 & 0x8000000000000000) == 0)
  {
    goto LABEL_60;
  }

  v80 = *(a1 + 108);
  *(a1 + 164) += 32;
  HEVC_RBSP::flush_bits(a1, 32);
  *(a2 + 76) = v80;
  v81 = *(a1 + 108);
  *(a1 + 164) += 32;
  HEVC_RBSP::flush_bits(a1, 32);
  *(a2 + 80) = v81;
  v82 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 84) = v82 < 0;
  if (v82 < 0)
  {
    v83 = *(a1 + 104);
    if ((v83 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v90 = 0;
    }

    else
    {
      v84 = HIDWORD(v83);
      v85 = -32;
      do
      {
        LODWORD(v84) = 2 * v84;
        v86 = v85 + 1;
        if ((v84 & 0x80000000) != 0)
        {
          break;
        }

        v87 = v85 + 32;
        ++v85;
      }

      while (v87 < 0x1E);
      *(a1 + 164) += v86 + 33;
      HEVC_RBSP::flush_bits(a1, v86 + 33);
      v88 = *(a1 + 108);
      *(a1 + 164) += v86 + 32;
      v89 = v88 >> -v86;
      HEVC_RBSP::flush_bits(a1, v86 + 32);
      v90 = v89 + ~(-2 << (v86 + 31));
    }

    *(a2 + 88) = v90;
  }

  v91 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 92) = v91 < 0;
  if (v91 < 0 && !HEVC_RBSP::parseHRD(a1, a2 + 96, 1, a3))
  {
    return 0;
  }

LABEL_60:
  v92 = *(a1 + 104);
  ++*(a1 + 164);
  v93 = 1;
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 520) = v92 < 0;
  if (v92 < 0)
  {
    v94 = *(a1 + 104);
    ++*(a1 + 164);
    v95 = v94 >> 63;
    HEVC_RBSP::flush_bits(a1, 1);
    *(a2 + 521) = v95;
    v96 = *(a1 + 104);
    ++*(a1 + 164);
    v97 = v96 >> 63;
    HEVC_RBSP::flush_bits(a1, 1);
    *(a2 + 522) = v97;
    v98 = *(a1 + 104);
    ++*(a1 + 164);
    v99 = v98 >> 63;
    HEVC_RBSP::flush_bits(a1, 1);
    *(a2 + 523) = v99;
    v100 = *(a1 + 104);
    if ((v100 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v107 = 0;
    }

    else
    {
      v101 = HIDWORD(v100);
      v102 = -32;
      do
      {
        LODWORD(v101) = 2 * v101;
        v103 = v102 + 1;
        if ((v101 & 0x80000000) != 0)
        {
          break;
        }

        v104 = v102 + 32;
        ++v102;
      }

      while (v104 < 0x1E);
      *(a1 + 164) += v103 + 33;
      HEVC_RBSP::flush_bits(a1, v103 + 33);
      v105 = *(a1 + 108);
      *(a1 + 164) += v103 + 32;
      v106 = v105 >> -v103;
      HEVC_RBSP::flush_bits(a1, v103 + 32);
      v107 = v106 + ~(-2 << (v103 + 31));
    }

    *(a2 + 524) = v107;
    v108 = *(a1 + 104);
    if ((v108 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v115 = 0;
    }

    else
    {
      v109 = HIDWORD(v108);
      v110 = -32;
      do
      {
        LODWORD(v109) = 2 * v109;
        v111 = v110 + 1;
        if ((v109 & 0x80000000) != 0)
        {
          break;
        }

        v112 = v110 + 32;
        ++v110;
      }

      while (v112 < 0x1E);
      *(a1 + 164) += v111 + 33;
      HEVC_RBSP::flush_bits(a1, v111 + 33);
      v113 = *(a1 + 108);
      *(a1 + 164) += v111 + 32;
      v114 = v113 >> -v111;
      HEVC_RBSP::flush_bits(a1, v111 + 32);
      v115 = v114 + ~(-2 << (v111 + 31));
    }

    *(a2 + 528) = v115;
    v116 = *(a1 + 104);
    if ((v116 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v123 = 0;
    }

    else
    {
      v117 = HIDWORD(v116);
      v118 = -32;
      do
      {
        LODWORD(v117) = 2 * v117;
        v119 = v118 + 1;
        if ((v117 & 0x80000000) != 0)
        {
          break;
        }

        v120 = v118 + 32;
        ++v118;
      }

      while (v120 < 0x1E);
      *(a1 + 164) += v119 + 33;
      HEVC_RBSP::flush_bits(a1, v119 + 33);
      v121 = *(a1 + 108);
      *(a1 + 164) += v119 + 32;
      v122 = v121 >> -v119;
      HEVC_RBSP::flush_bits(a1, v119 + 32);
      v123 = v122 + ~(-2 << (v119 + 31));
    }

    *(a2 + 532) = v123;
    v124 = *(a1 + 104);
    if ((v124 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v131 = 0;
    }

    else
    {
      v125 = HIDWORD(v124);
      v126 = -32;
      do
      {
        LODWORD(v125) = 2 * v125;
        v127 = v126 + 1;
        if ((v125 & 0x80000000) != 0)
        {
          break;
        }

        v128 = v126 + 32;
        ++v126;
      }

      while (v128 < 0x1E);
      *(a1 + 164) += v127 + 33;
      HEVC_RBSP::flush_bits(a1, v127 + 33);
      v129 = *(a1 + 108);
      *(a1 + 164) += v127 + 32;
      v130 = v129 >> -v127;
      HEVC_RBSP::flush_bits(a1, v127 + 32);
      v131 = v130 + ~(-2 << (v127 + 31));
    }

    *(a2 + 536) = v131;
    v132 = *(a1 + 104);
    if ((v132 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v139 = 0;
    }

    else
    {
      v133 = HIDWORD(v132);
      v134 = -32;
      do
      {
        LODWORD(v133) = 2 * v133;
        v135 = v134 + 1;
        if ((v133 & 0x80000000) != 0)
        {
          break;
        }

        v136 = v134 + 32;
        ++v134;
      }

      while (v136 < 0x1E);
      *(a1 + 164) += v135 + 33;
      HEVC_RBSP::flush_bits(a1, v135 + 33);
      v137 = *(a1 + 108);
      *(a1 + 164) += v135 + 32;
      v138 = v137 >> -v135;
      HEVC_RBSP::flush_bits(a1, v135 + 32);
      v139 = v138 + ~(-2 << (v135 + 31));
    }

    *(a2 + 540) = v139;
    return 1;
  }

  return v93;
}

uint64_t CreateDispPixelBufferAttributesDictionary(int a1, int a2, int a3, int a4, int a5, char *a6, int a7, unint64_t a8, __CFDictionary **a9)
{
  v36 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v18 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (v18)
    {
      v31 = a4;
      v19 = a5;
      v20 = a1;
      if (a7 < 1)
      {
LABEL_7:
        CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E30], v18);
        CFRelease(v18);
        v18 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v18)
        {
          v24 = MEMORY[0x277CBED28];
          v25 = v20;
          if (a8)
          {
            v26 = *MEMORY[0x277CD2B70];
            if (HIDWORD(a8) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v33 = "CreateDispPixelBufferAttributesDictionary";
              v34 = 1024;
              v35 = 1159;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            }

            setIntValue(v18, v26, a8);
            CFDictionaryAddValue(v18, *MEMORY[0x277CD29F8], *v24);
          }

          CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v18);
          addNumberToDictionary(Mutable, *MEMORY[0x277CC4D60], 64);
          addNumberToDictionary(Mutable, *MEMORY[0x277CC4EC8], a2);
          addNumberToDictionary(Mutable, *MEMORY[0x277CC4DD8], a3);
          addNumberToDictionary(Mutable, *MEMORY[0x277CC4E38], 256);
          if (v31 >= a2)
          {
            v27 = v31 - a2;
          }

          else
          {
            v27 = -a2 & 0xF;
          }

          if (v19 >= a3)
          {
            v28 = v19 - a3;
          }

          else
          {
            v28 = -a3 & 0xF;
          }

          if (v27)
          {
            addNumberToDictionary(Mutable, *MEMORY[0x277CC4DB8], v27);
          }

          if (v28)
          {
            addNumberToDictionary(Mutable, *MEMORY[0x277CC4DA0], v28);
          }

          if (v25 >= 26)
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E60], *v24);
          }

          v29 = 0;
          *a9 = Mutable;
LABEL_32:
          CFRelease(v18);
          return v29;
        }
      }

      else
      {
        v21 = a7;
        while (1)
        {
          v22 = CFNumberCreate(0, kCFNumberSInt32Type, a6);
          if (!v22)
          {
            break;
          }

          v23 = v22;
          CFArrayAppendValue(v18, v22);
          CFRelease(v23);
          a6 += 4;
          if (!--v21)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  else
  {
    v18 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "CreateDispPixelBufferAttributesDictionary";
    v34 = 1024;
    v35 = -12904;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v29 = 4294954392;
  if (v18)
  {
    goto LABEL_32;
  }

  return v29;
}

void addNumberToDictionary(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a1, a2, v5);
    CFRelease(v6);
  }
}

void setSIntValue(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t AppleAVDGetParameter(uint64_t a1, int a2, unsigned __int8 **a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = 3758097095;
  if (a2 <= 49)
  {
    if (a2 > 11)
    {
      if (a2 == 12)
      {
        v3 = 0;
        v5 = *(a1 + 856);
        v6 = *(a1 + 888);
        *(a3 + 1) = *(a1 + 872);
        *(a3 + 2) = v6;
        *a3 = v5;
        v7 = *(a1 + 904);
        v8 = *(a1 + 920);
        v9 = *(a1 + 936);
        a3[12] = *(a1 + 952);
        *(a3 + 4) = v8;
        *(a3 + 5) = v9;
        *(a3 + 3) = v7;
      }

      else if (a2 == 27)
      {
        v3 = 0;
        v4 = *(a1 + 3560);
        goto LABEL_24;
      }
    }

    else
    {
      if (a2 == 6)
      {
        v3 = 0;
        v4 = *(a1 + 196);
        goto LABEL_24;
      }

      if (a2 == 8)
      {
        v3 = 0;
        v4 = *(a1 + 776);
        goto LABEL_24;
      }
    }
  }

  else if (a2 <= 55)
  {
    if (a2 == 50)
    {
      v3 = 0;
      v4 = 1;
      *(a1 + 1457) = 1;
      goto LABEL_24;
    }

    if (a2 == 55)
    {
      v3 = CPBManager::allocOneCPB(*(a1 + 960), *(a3 + 4), a3[1], (a1 + 972), (a1 + 968), (a1 + 969), a3);
      if (v3)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315394;
          v12 = "AppleAVDGetParameter";
          v13 = 1024;
          v14 = v3;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): allocOneCPB error (%d)!\n", &v11, 0x12u);
        }
      }
    }
  }

  else
  {
    switch(a2)
    {
      case '8':
        v3 = 0;
        *a3 = *(a1 + 969);
        break;
      case 'B':
        v3 = 0;
        *(a3 + 1) = *(a1 + 3884);
        v4 = *(a1 + 3880);
        goto LABEL_24;
      case 'J':
        v3 = 0;
        v4 = *(a1 + 1368);
LABEL_24:
        *a3 = v4;
        break;
    }
  }

  return v3;
}

uint64_t CPBManager::allocOneCPB(CPBManager *this, int a2, unint64_t a3, unsigned int *a4, char *a5, BOOL *a6, vm_address_t *a7)
{
  v51 = *MEMORY[0x277D85DE8];
  address = 0;
  if (a3 <= 0x5F5E100)
  {
    kdebug_trace();
    pthread_mutex_lock(this);
    v14 = *(this + 112);
    if (v14 < 3)
    {
      v16 = 0;
LABEL_15:
      *(this + 112) = v14 + 1;
      v18 = MEMORY[0x277D85F70];
      ++*(this + 55);
      v19 = (*v18 + a3) & ~*v18;
      v20 = *(*(this + 24) + 980);
      if (v20)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = *(this + 25);
        v25 = 16;
        while (1)
        {
          if (*v24)
          {
            if (*v24 == 2)
            {
              v28 = *(this + 52);
              if (v28 < v19)
              {
                v22 = v23;
                goto LABEL_36;
              }

              *v24 = 1;
              *(v24 + 4) = a2;
              *a4 = v28;
              *a5 = *(v24 + 8);
              v39 = *(*(this + 25) + v25);
              v37 = a7;
              *a7 = v39;
              *a6 = 0;
              ++*(this + 57);
LABEL_57:
              if (*(this + 137) == 1)
              {
                if (*(this + 161) == 1)
                {
                  if (*(this + 185))
                  {
                    v8 = 0;
                    goto LABEL_69;
                  }

                  v38 = this + 168;
                }

                else
                {
                  v38 = this + 144;
                }
              }

              else
              {
                v38 = this + 120;
              }

              v8 = 0;
              *v38 = a2;
              *(v38 + 1) = *a4;
              *(v38 + 1) = *v37;
              v38[16] = *a5;
              v38[17] = 1;
              goto LABEL_69;
            }
          }

          else
          {
            v21 = 1;
            v22 = v23;
          }

          ++v23;
          v24 += 24;
          v25 += 24;
          if (v20 == v23)
          {
            v26 = *(this + 52);
            if (((v26 >= v19) & v21) != 1)
            {
              goto LABEL_36;
            }

            v41 = a6;
            v27 = v19;
            *a4 = v26;
            ++*(this + 58);
            goto LABEL_41;
          }
        }
      }

      v22 = 0;
      v21 = 0;
LABEL_36:
      *a4 = v19;
      ++*(this + 59);
      v41 = a6;
      if (*(this + 53) == 3 && CPBManager::evictFromCache(this) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v27 = v19;
        *buf = 136315138;
        v46 = "allocOneCPB";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Did not find free slot to evict from cache", buf, 0xCu);
      }

      else
      {
        v27 = v19;
      }

LABEL_41:
      v29 = vm_allocate(*MEMORY[0x277D85F48], &address, *a4, 1);
      v30 = address;
      if (v29)
      {
        v31 = 1;
      }

      else
      {
        v31 = address == 0;
      }

      if (!v31)
      {
        v33 = 0;
        *a7 = address;
        v34 = this + 216;
        do
        {
          if ((v34[v33] & 1) == 0)
          {
            v34[v33] = 1;
            *a5 = v33 + 123;
            goto LABEL_54;
          }

          ++v33;
        }

        while (v33 != 3);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v46 = "allocOneCPB";
          v47 = 1024;
          *v48 = a2;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): frameNumber = %d - No free slot found to assign bitstreamIndex.", buf, 0x12u);
        }

LABEL_54:
        *v41 = 1;
        v35 = *(this + 52);
        ++*(this + 53);
        if (((v35 >= v27) & v21) == 1)
        {
          v36 = *(this + 25) + 24 * v22;
          *v36 = 1;
          *(v36 + 4) = a2;
          *(v36 + 8) = *a5;
          *(v36 + 16) = address;
        }

        v37 = a7;
        goto LABEL_57;
      }

      v32 = v29;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v46 = "allocOneCPB";
        v47 = 1024;
        *v48 = v32;
        *&v48[4] = 2048;
        *&v48[6] = v30;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR! vm_allocate failed! allocStatus: %d - addr: 0x%llx\n", buf, 0x1Cu);
      }

      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v15 = *(this + 31);
      if (v15)
      {
        v16 = 0;
        while (1)
        {
          v43 = xmmword_27775E080;
          v17 = pthread_cond_timedwait_relative_np((this + 64), this, &v43);
          if (v17)
          {
            v8 = v17;
            if (v17 != 60)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v46 = "allocOneCPB";
                v47 = 1024;
                *v48 = v8;
                _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): pthread_cond_timedwait exited with error: %d", buf, 0x12u);
              }

              goto LABEL_69;
            }

            v16 += 100000000;
          }

          v14 = *(this + 112);
          if (v14 <= 2)
          {
            goto LABEL_15;
          }

          v15 = *(this + 31);
          if (v16 >= v15)
          {
            goto LABEL_26;
          }
        }
      }

      v16 = 0;
LABEL_26:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v46 = "allocOneCPB";
        v47 = 2048;
        *v48 = v16 / 0xF4240;
        *&v48[8] = 1024;
        *&v48[10] = v14;
        v49 = 2048;
        v50 = v15 / 0xF4240;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Timed out, waited at least %llums! m_num_CPBs_on_the_fly=%u timeoutMS=%llu", buf, 0x26u);
      }

      if (*(this + 244) == 1 && *(*(this + 24) + 984))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v46 = "allocOneCPB";
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Forcing panic due to SW timeout.\n", buf, 0xCu);
        }

        MEMORY[0x277CAEFA0](3072, "Timeout hit while allocating a CPB - panicking!\n");
      }

      v8 = 60;
    }

LABEL_69:
    if (*(this + 244) == 1 && *(this + 32) < v16)
    {
      *(this + 32) = v16;
    }

    pthread_mutex_unlock(this);
    kdebug_trace();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v46 = "allocOneCPB";
      v47 = 2048;
      *v48 = a3;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Requested alloc size is = %zu too big\n", buf, 0x16u);
    }

    return 0xFFFFFFFFLL;
  }

  return v8;
}

uint64_t AppleAVDGetPixelBufferFromBufferPool(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a1 + 3848))
  {
    v9 = 50;
  }

  else
  {
    v9 = 5;
  }

  v10 = a1 + 200;
  v11 = *(a1 + 200 + 8 * a3);
  if (v11)
  {
    goto LABEL_5;
  }

  v14 = operator new(0xB8uLL, MEMORY[0x277D826F0]);
  if (v14)
  {
    v15 = v14;
    BufferPool::BufferPool(v14);
    *(v10 + 8 * a3) = v15;
    if (a3 == 1 && *(a1 + 16))
    {
      v16 = *(a1 + 228);
      v17 = 3;
      if (*(a1 + 56) && v16 == 2)
      {
        v17 = 3 * *(a1 + 196);
      }

      if ((v16 - 3) >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 15;
      }
    }

    else
    {
      v21 = *(a1 + 228);
      if ((v21 - 3) < 2)
      {
        v18 = 15;
      }

      else if (v21 == 2)
      {
        if (a3)
        {
          v26 = 1;
        }

        else
        {
          v26 = *(a1 + 1264) == 0;
        }

        v27 = !v26;
        v18 = (*(a1 + 232) + 3) << v27;
        if (*(a1 + 56))
        {
          v18 *= *(a1 + 196);
        }
      }

      else if (v21 == 1)
      {
        v22 = *(a1 + 232);
        v23 = v22 + 3;
        if (v22 >= 18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v29 = 136315394;
            v30 = "AppleAVDGetPixelBufferFromBufferPool";
            v31 = 1024;
            v32 = v23;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): maxCacheSize (%d) Exceeded 20!\n", &v29, 0x12u);
            v15 = *(v10 + 8 * a3);
          }

          v23 = 20;
        }

        if (a3)
        {
          v24 = 1;
        }

        else
        {
          v24 = *(a1 + 1264) == 0;
        }

        v25 = !v24;
        v18 = v23 << v25;
      }

      else if (*(a1 + 8) >= 1280)
      {
        v18 = 10;
      }

      else
      {
        v18 = 18;
      }

      if (!a3)
      {
        if (*(a1 + 848))
        {
          v28 = 2;
        }

        else
        {
          v28 = 1;
        }

        if (BufferPool::initBufferPool(v15, a1, *(a1 + 40), v18, 0, v9, v28))
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 301;
          }

          v29 = 67109120;
          LODWORD(v30) = 0;
          v19 = MEMORY[0x277D86220];
          v20 = "AppleAVD: pBufferPool[%d] initBufferPool allocation failed!";
          goto LABEL_47;
        }

        goto LABEL_56;
      }
    }

    if (BufferPool::initBufferPool(v15, a1, *(a1 + 32), v18, a3, v9, 1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v29 = 67109120;
        LODWORD(v30) = a3;
        v19 = MEMORY[0x277D86220];
        v20 = "AppleAVD: pBufferPool[%d] initBufferPool allocation failed!";
        goto LABEL_47;
      }

      return 301;
    }

LABEL_56:
    v11 = *(v10 + 8 * a3);
    *(v11 + 172) = *(a1 + 3853);
    *(v11 + 176) = *(a1 + 56);
LABEL_5:
    *(v11 + 180) = *(a1 + 52);
    return BufferPool::getBuffer(v11, a2, *(a1 + 224), 0, a4, a5);
  }

  *(v10 + 8 * a3) = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v29 = 67109120;
    LODWORD(v30) = a3;
    v19 = MEMORY[0x277D86220];
    v20 = "AppleAVD: pBufferPool[%d] allocation failed!";
LABEL_47:
    _os_log_impl(&dword_277606000, v19, OS_LOG_TYPE_DEFAULT, v20, &v29, 8u);
  }

  return 301;
}

uint64_t AppleAVDDecodeFrameInternal(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v83 = *MEMORY[0x277D85DE8];
  bzero(v44, 0x910uLL);
  v59 = *(a1 + 1000);
  v66 = *(a1 + 56);
  v16 = *(a1 + 80);
  v67 = *(a1 + 64);
  v17 = *(a1 + 160);
  v74 = *(a1 + 176);
  v73 = v17;
  v18 = *(a1 + 128);
  v72 = *(a1 + 144);
  v71 = v18;
  v19 = *(a1 + 96);
  v70 = *(a1 + 112);
  v69 = v19;
  v32 = 0;
  v31 = 0;
  v82 = a8;
  v39 = a2;
  v77 = *(a1 + 972);
  v78 = *(a1 + 968);
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v53 = *(a1 + 848);
  v45 = *(a1 + 1456);
  v20 = *(a1 + 988);
  if (*(a1 + 992))
  {
    v21 = 1;
  }

  else
  {
    v21 = *(a1 + 988);
  }

  v44[0] = a7;
  v44[2] = v21;
  v51 = v20;
  v52 = *(a1 + 3580);
  v54 = *(a1 + 3584);
  v57 = *(a1 + 1264);
  v58 = *(a1 + 996);
  v60 = *(a1 + 3576);
  v64 = *(a1 + 52);
  v65 = *(a1 + 3760);
  v75 = *(a1 + 192);
  v68 = v16;
  v76 = *(a1 + 196);
  v81 = *(a1 + 3848);
  if (*(a1 + 3853) == 1)
  {
    v62 = 1;
    v63 = *(a1 + 3856);
  }

  if (*(a1 + 3588))
  {
    v55 = *(a1 + 3588);
    v56 = *(a1 + 3592);
  }

  v80 = *(a1 + 3624) != 0;
  v46 = *(a1 + 1480);
  v47 = *(a1 + 1488);
  v22 = *(a1 + 1460);
  if ((v22 & 0xFFFFFFFE) == 4 || *(a1 + 1457) == 1 && v22 <= 3 && v22 != 1)
  {
    v50 = *(a1 + 3552);
    v23 = 4 * v50;
    memcpy(&v48, (a1 + 1504), v23);
    memcpy(&v49, (a1 + 2528), v23);
  }

  else
  {
    v50 = 0;
  }

  v24 = *(a1 + 3712);
  v44[1] = 0;
  v61 = v24;
  v79 = *(a1 + 3816);
  v25 = AppleAVDCommandBuilder::decodeFrameFig(*(a1 + 3824), &v39, &v31);
  if (v25)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v34 = "AppleAVDDecodeFrameInternal";
      v35 = 1024;
      v36 = v25;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): cmdBuilder->decodeFrameFig returned error: %d \n", buf, 0x12u);
    }
  }

  else if (v31 == 503)
  {
    AppleAVDReleaseCVPixelBuffer(a1, a6, 0, a4, 0);
    if (*(a1 + 848) == 1)
    {
      v26 = a6;
      v27 = 0;
    }

    else
    {
      v26 = a5;
      v27 = 1;
    }

    AppleAVDReleaseCVPixelBuffer(a1, v26, v27, a4, 0);
  }

  v28 = HIDWORD(v31);
  *(a1 + 3556) = HIDWORD(v31);
  if (v28 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v34 = "AppleAVDDecodeFrameInternal";
    v35 = 1024;
    v36 = a4;
    v37 = 1024;
    v38 = v28;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Frame# %d, DecodeFrame failed with decryptError: %d\n", buf, 0x18u);
  }

  v29 = v31;
  *(a1 + 3884) = v32;
  *(a1 + 3880) = v29;
  if (v29 && v29 != 503)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v34 = "AppleAVDDecodeFrameInternal";
      v35 = 1024;
      v36 = v29;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed - error: %d \n", buf, 0x12u);
    }

    if (v29 != 305 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v34 = "AppleAVDDecodeFrameInternal";
      v35 = 1024;
      v36 = a4;
      v37 = 1024;
      v38 = v29;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): avdDec - Frame# %6d, DecodeFrame failed with error: 0x%x \n", buf, 0x18u);
    }
  }

  return v25;
}