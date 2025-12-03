@interface TVLALSDataExtractor
+ (id)extractALSCalibrationData;
+ (unsigned)_displayID;
+ (void)extract:(unint64_t)extract ALSReadings:(id)readings;
+ (void)extractALSCalibrationData;
+ (void)extractALSData:(id)data;
- (TVLALSDataExtractor)init;
- (void)dealloc;
@end

@implementation TVLALSDataExtractor

- (TVLALSDataExtractor)init
{
  v6.receiver = self;
  v6.super_class = TVLALSDataExtractor;
  v2 = [(TVLALSDataExtractor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    results = v2->_results;
    v2->_results = v3;
  }

  return v2;
}

- (void)dealloc
{
  _UnregisterHIDSystemClient(self);
  v3.receiver = self;
  v3.super_class = TVLALSDataExtractor;
  [(TVLALSDataExtractor *)&v3 dealloc];
}

+ (id)extractALSCalibrationData
{
  v105 = *MEMORY[0x277D85DE8];
  v3 = AMFDRSealingMapCopyLocalDataForClass();
  Length = CFDataGetLength(v3);
  if (Length == 10440)
  {
    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _ALSIOHIDEventCallback_cold_2();
    }

    v5 = _TVLLogDefault_log_2;
    if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26CD78000, v5, OS_LOG_TYPE_INFO, "Found HmClData_VD6287", buf, 2u);
    }

    CFDataGetBytePtr(v3);
    v6 = convertNighthawkHmClv1Tov3();
    if (v6)
    {
      v7 = v6;
      CFRelease(v3);
      v8 = CFDataGetLength(v7);
      if (_TVLLogDefault_onceToken_2 != -1)
      {
        _ALSIOHIDEventCallback_cold_2();
      }

      v9 = _TVLLogDefault_log_2;
      if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v104 = v8;
        _os_log_impl(&dword_26CD78000, v9, OS_LOG_TYPE_INFO, "FDR calibration data converted from v1 to v3. New size = %ld\n", buf, 0xCu);
      }

      v3 = v7;
    }

    else
    {
      v8 = 10440;
    }
  }

  else
  {
    v8 = Length;
  }

  v10 = objc_alloc_init(TVLALSCalibrationData);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "_displayID")}];
  [(TVLALSCalibrationData *)v10 setDisplayID:v11];

  if (v8 > 10235)
  {
    if (v8 == 10348)
    {
      if (_TVLLogDefault_onceToken_2 != -1)
      {
        _ALSIOHIDEventCallback_cold_2();
      }

      v76 = _TVLLogDefault_log_2;
      if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26CD78000, v76, OS_LOG_TYPE_INFO, "Found HmClData_VD6287_v3", buf, 2u);
      }

      BytePtr = CFDataGetBytePtr(v3);
      if (isInternalBuild_onceToken != -1)
      {
        +[TVLALSDataExtractor extractALSCalibrationData];
      }

      if (isInternalBuild_internalBuild == 1)
      {
        if (_TVLLogDefault_onceToken_2 != -1)
        {
          _ALSIOHIDEventCallback_cold_2();
        }

        print_HmCl_VD6287_v3(BytePtr, _TVLLogDefault_log_2);
      }

      if (BytePtr[10] != 2)
      {
        if (_TVLLogDefault_onceToken_2 != -1)
        {
          _ALSIOHIDEventCallback_cold_2();
        }

        if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_ERROR))
        {
          +[(TVLALSDataExtractor *)BytePtr];
        }

        goto LABEL_130;
      }

      v78 = BytePtr + 4096;
      if (BytePtr[5214] != 1)
      {
        if (_TVLLogDefault_onceToken_2 != -1)
        {
          _ALSIOHIDEventCallback_cold_2();
        }

        if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_ERROR))
        {
          +[(TVLALSDataExtractor *)BytePtr];
        }

        goto LABEL_130;
      }

      if (BytePtr[5218] == 5)
      {
        [(TVLALSCalibrationData *)v10 setVersion:&unk_287E0E9B8];
        v79 = [MEMORY[0x277CCABB0] numberWithInt:BytePtr[5218]];
        [(TVLALSCalibrationData *)v10 setChannels:v79];

        v80 = [MEMORY[0x277CCABB0] numberWithInt:*(BytePtr + 5443)];
        [(TVLALSCalibrationData *)v10 setWavelengthStartVisible:v80];

        v81 = [MEMORY[0x277CCABB0] numberWithInt:*(BytePtr + 5445)];
        [(TVLALSCalibrationData *)v10 setWavelengthStartNIR:v81];

        v82 = [MEMORY[0x277CCABB0] numberWithInt:*(BytePtr + 5447)];
        [(TVLALSCalibrationData *)v10 setWavelengthEnd:v82];

        v83 = [MEMORY[0x277CCABB0] numberWithInt:BytePtr[5449]];
        [(TVLALSCalibrationData *)v10 setWavelengthStep:v83];

        v84 = [MEMORY[0x277CCABB0] numberWithInt:*(BytePtr + 5415)];
        [(TVLALSCalibrationData *)v10 setNormalizationFactor:v84];

        v85 = *(BytePtr + 5447);
        v86 = *(BytePtr + 5443);
        v87 = BytePtr[5449];
        v102 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (!BytePtr[5218])
        {
          goto LABEL_50;
        }

        v100 = v3;
        v101 = v10;
        v88 = 0;
        v89 = (~v86 + v85 + v87) / v87;
        v90 = BytePtr + 5452;
        do
        {
          v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v92 = v90;
          v93 = (v89 & ~(v89 >> 31)) + 1;
          if ((v89 & 0x80000000) == 0)
          {
            do
            {
              v94 = *v92;
              v92 += 2;
              v95 = [MEMORY[0x277CCABB0] numberWithInt:{v94, v100, v101}];
              [v91 addObject:v95];

              --v93;
            }

            while (v93);
          }

          v96 = [MEMORY[0x277CBEA60] arrayWithArray:{v91, v100, v101}];
          [v102 addObject:v96];

          ++v88;
          v90 += 802;
        }

        while (v88 < v78[1122]);
        goto LABEL_49;
      }

      v97 = _TVLLogDefault();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        +[(TVLALSDataExtractor *)BytePtr];
      }

      goto LABEL_129;
    }

    if (v8 == 10236)
    {
      if (_TVLLogDefault_onceToken_2 != -1)
      {
        _ALSIOHIDEventCallback_cold_2();
      }

      v33 = _TVLLogDefault_log_2;
      if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26CD78000, v33, OS_LOG_TYPE_INFO, "Found HmClData", buf, 2u);
      }

      v34 = CFDataGetBytePtr(v3);
      if (isInternalBuild_onceToken != -1)
      {
        +[TVLALSDataExtractor extractALSCalibrationData];
      }

      if (isInternalBuild_internalBuild == 1)
      {
        if (_TVLLogDefault_onceToken_2 != -1)
        {
          _ALSIOHIDEventCallback_cold_2();
        }

        print_HmClData(v34, _TVLLogDefault_log_2);
      }

      [(TVLALSCalibrationData *)v10 setVersion:&unk_287E0E9A0];
      v35 = [MEMORY[0x277CCABB0] numberWithInt:v34[80]];
      [(TVLALSCalibrationData *)v10 setChannels:v35];

      v36 = [MEMORY[0x277CCABB0] numberWithInt:*(v34 + 168)];
      [(TVLALSCalibrationData *)v10 setWavelengthStartVisible:v36];

      v37 = [MEMORY[0x277CCABB0] numberWithInt:*(v34 + 169)];
      [(TVLALSCalibrationData *)v10 setWavelengthStartNIR:v37];

      v38 = [MEMORY[0x277CCABB0] numberWithInt:*(v34 + 170)];
      [(TVLALSCalibrationData *)v10 setWavelengthEnd:v38];

      v39 = [MEMORY[0x277CCABB0] numberWithInt:v34[342]];
      [(TVLALSCalibrationData *)v10 setWavelengthStep:v39];

      v40 = [MEMORY[0x277CCABB0] numberWithInt:*(v34 + 74)];
      [(TVLALSCalibrationData *)v10 setNormalizationFactor:v40];

      v41 = *(v34 + 170);
      v42 = *(v34 + 168);
      v43 = v34[342];
      v102 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (!v34[80])
      {
        goto LABEL_50;
      }

      v100 = v3;
      v101 = v10;
      v44 = 0;
      v45 = (~v42 + v41 + v43) / v43;
      v46 = v34 + 344;
      do
      {
        v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v48 = v46;
        v49 = (v45 & ~(v45 >> 31)) + 1;
        if ((v45 & 0x80000000) == 0)
        {
          do
          {
            v50 = *v48;
            v48 += 2;
            v51 = [MEMORY[0x277CCABB0] numberWithInt:{v50, v100, v101}];
            [v47 addObject:v51];

            --v49;
          }

          while (v49);
        }

        v52 = [MEMORY[0x277CBEA60] arrayWithArray:{v47, v100, v101}];
        [v102 addObject:v52];

        ++v44;
        v46 += 802;
      }

      while (v44 < v34[80]);
      goto LABEL_49;
    }

    goto LABEL_53;
  }

  if (v8 == 8672)
  {
    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _ALSIOHIDEventCallback_cold_2();
    }

    v56 = _TVLLogDefault_log_2;
    if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26CD78000, v56, OS_LOG_TYPE_INFO, "Found HmClData_VD6287_v4", buf, 2u);
    }

    v13 = CFDataGetBytePtr(v3);
    if (strncmp(v13, "lCmH", 5uLL))
    {
      if (v13[4] == 4)
      {
        if (v13[10] == 2)
        {
          v57 = v13 + 4096;
          if (v13[4376] == 1)
          {
            if (v13[4380] == 5)
            {
              [(TVLALSCalibrationData *)v10 setVersion:&unk_287E0E9B8];
              v58 = [MEMORY[0x277CCABB0] numberWithInt:v13[4380]];
              [(TVLALSCalibrationData *)v10 setChannels:v58];

              v59 = [MEMORY[0x277CCABB0] numberWithInt:*(v13 + 4571)];
              [(TVLALSCalibrationData *)v10 setWavelengthStartVisible:v59];

              v60 = [MEMORY[0x277CCABB0] numberWithInt:*(v13 + 4573)];
              [(TVLALSCalibrationData *)v10 setWavelengthStartNIR:v60];

              v61 = [MEMORY[0x277CCABB0] numberWithInt:*(v13 + 4575)];
              [(TVLALSCalibrationData *)v10 setWavelengthEnd:v61];

              v62 = [MEMORY[0x277CCABB0] numberWithInt:v13[4577]];
              [(TVLALSCalibrationData *)v10 setWavelengthStep:v62];

              v63 = [MEMORY[0x277CCABB0] numberWithInt:*(v13 + 4547)];
              [(TVLALSCalibrationData *)v10 setNormalizationFactor:v63];

              v64 = *(v13 + 4575);
              v65 = *(v13 + 4571);
              v66 = v13[4577];
              v102 = objc_alloc_init(MEMORY[0x277CBEB18]);
              if (!v13[4380])
              {
                goto LABEL_50;
              }

              v100 = v3;
              v101 = v10;
              v67 = 0;
              v68 = (~v65 + v64 + v66) / v66;
              v69 = v13 + 4578;
              do
              {
                v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v71 = v69;
                v72 = (v68 & ~(v68 >> 31)) + 1;
                if ((v68 & 0x80000000) == 0)
                {
                  do
                  {
                    v73 = *v71;
                    v71 += 2;
                    v74 = [MEMORY[0x277CCABB0] numberWithInt:{v73, v100, v101}];
                    [v70 addObject:v74];

                    --v72;
                  }

                  while (v72);
                }

                v75 = [MEMORY[0x277CBEA60] arrayWithArray:{v70, v100, v101}];
                [v102 addObject:v75];

                ++v67;
                v69 += 802;
              }

              while (v67 < v57[284]);
              goto LABEL_49;
            }

            v97 = _TVLLogDefault();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
            {
              +[(TVLALSDataExtractor *)v13];
            }
          }

          else
          {
            v97 = _TVLLogDefault();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
            {
              +[(TVLALSDataExtractor *)v13];
            }
          }

          goto LABEL_129;
        }

        v97 = _TVLLogDefault();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_116;
        }

        goto LABEL_129;
      }

      if (_TVLLogDefault_onceToken_2 != -1)
      {
        _ALSIOHIDEventCallback_cold_2();
      }

      if (!os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_130;
      }

      goto LABEL_106;
    }

    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _ALSIOHIDEventCallback_cold_2();
    }

    if (!os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_130;
    }

LABEL_98:
    +[TVLALSDataExtractor extractALSCalibrationData];
LABEL_130:
    v54 = 0;
    goto LABEL_131;
  }

  if (v8 != 8760)
  {
LABEL_53:
    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _ALSIOHIDEventCallback_cold_2();
    }

    v55 = _TVLLogDefault_log_2;
    if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_FAULT))
    {
      +[(TVLALSDataExtractor *)v8];
    }

    goto LABEL_130;
  }

  if (_TVLLogDefault_onceToken_2 != -1)
  {
    _ALSIOHIDEventCallback_cold_2();
  }

  v12 = _TVLLogDefault_log_2;
  if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26CD78000, v12, OS_LOG_TYPE_INFO, "Found HmClData_VD6287_v4_od", buf, 2u);
  }

  v13 = CFDataGetBytePtr(v3);
  if (!strncmp(v13, "lCmH", 5uLL))
  {
    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _ALSIOHIDEventCallback_cold_2();
    }

    if (!os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_130;
    }

    goto LABEL_98;
  }

  if (v13[4] != 4)
  {
    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _ALSIOHIDEventCallback_cold_2();
    }

    if (!os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_130;
    }

LABEL_106:
    +[(TVLALSDataExtractor *)v13];
    goto LABEL_130;
  }

  if (v13[10] != 2)
  {
    v97 = _TVLLogDefault();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
LABEL_116:
      +[(TVLALSDataExtractor *)v13];
    }

LABEL_129:

    goto LABEL_130;
  }

  v14 = v13 + 4096;
  if (v13[4420] != 1)
  {
    v97 = _TVLLogDefault();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      +[(TVLALSDataExtractor *)v13];
    }

    goto LABEL_129;
  }

  if (v13[4424] != 5)
  {
    v97 = _TVLLogDefault();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      +[(TVLALSDataExtractor *)v13];
    }

    goto LABEL_129;
  }

  [(TVLALSCalibrationData *)v10 setVersion:&unk_287E0E9B8];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:v13[4424]];
  [(TVLALSCalibrationData *)v10 setChannels:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithInt:*(v13 + 4657)];
  [(TVLALSCalibrationData *)v10 setWavelengthStartVisible:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:*(v13 + 4659)];
  [(TVLALSCalibrationData *)v10 setWavelengthStartNIR:v17];

  v18 = [MEMORY[0x277CCABB0] numberWithInt:*(v13 + 4661)];
  [(TVLALSCalibrationData *)v10 setWavelengthEnd:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithInt:v13[4663]];
  [(TVLALSCalibrationData *)v10 setWavelengthStep:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithInt:*(v13 + 4591)];
  [(TVLALSCalibrationData *)v10 setNormalizationFactor:v20];

  v21 = *(v13 + 4661);
  v22 = *(v13 + 4657);
  v23 = v13[4663];
  v102 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v13[4424])
  {
    v100 = v3;
    v101 = v10;
    v24 = 0;
    v25 = (~v22 + v21 + v23) / v23;
    v26 = v13 + 4664;
    do
    {
      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v28 = v26;
      v29 = (v25 & ~(v25 >> 31)) + 1;
      if ((v25 & 0x80000000) == 0)
      {
        do
        {
          v30 = *v28;
          v28 += 2;
          v31 = [MEMORY[0x277CCABB0] numberWithInt:{v30, v100, v101}];
          [v27 addObject:v31];

          --v29;
        }

        while (v29);
      }

      v32 = [MEMORY[0x277CBEA60] arrayWithArray:{v27, v100, v101}];
      [v102 addObject:v32];

      ++v24;
      v26 += 802;
    }

    while (v24 < v14[328]);
LABEL_49:
    v3 = v100;
    v10 = v101;
  }

LABEL_50:
  v53 = [MEMORY[0x277CBEA60] arrayWithArray:v102];
  [(TVLALSCalibrationData *)v10 setSpectrumNom:v53];

  if (v3)
  {
    CFRelease(v3);
  }

  v54 = v10;
LABEL_131:

  v98 = *MEMORY[0x277D85DE8];

  return v54;
}

+ (unsigned)_displayID
{
  *mainPort = 0;
  if (!IOMasterPort(0, mainPort))
  {
    v2 = IORegistryEntryFromPath(mainPort[0], "IODeviceTree:/arm-io/disp0");
    if (v2)
    {
      v3 = v2;
      v4 = IORegistryEntrySearchCFProperty(v2, "IODeviceTree", @"color-accuracy-index", *MEMORY[0x277CBECE8], 1u);
      if (v4)
      {
        v5 = v4;
        v8.location = 0;
        v8.length = 4;
        CFDataGetBytes(v4, v8, &mainPort[1]);
        CFRelease(v5);
      }

      IOObjectRelease(v3);
    }

    if (mainPort[0])
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], mainPort[0]);
    }
  }

  return mainPort[1];
}

+ (void)extractALSData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__TVLALSDataExtractor_extractALSData___block_invoke;
  v6[3] = &unk_279D6BE18;
  v7 = dataCopy;
  v5 = dataCopy;
  [self extract:1 ALSReadings:v6];
}

void __38__TVLALSDataExtractor_extractALSData___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3);
}

+ (void)extract:(unint64_t)extract ALSReadings:(id)readings
{
  readingsCopy = readings;
  v6 = objc_alloc_init(TVLALSDataExtractor);
  [(NSTimer *)v6->_timer invalidate];
  v6->_readCount = extract;
  objc_initWeak(&location, v6);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __43__TVLALSDataExtractor_extract_ALSReadings___block_invoke;
  v27[3] = &unk_279D6BE68;
  objc_copyWeak(&v29, &location);
  v7 = readingsCopy;
  v28 = v7;
  v8 = MEMORY[0x26D6AEC20](v27);
  completion = v6->_completion;
  v6->_completion = v8;

  v10 = v6;
  v11 = MEMORY[0x277CBEBB8];
  v12 = v6->_readCount * 1.5;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __43__TVLALSDataExtractor_extract_ALSReadings___block_invoke_3;
  v25 = &unk_279D6BE90;
  v13 = v10;
  v26 = v13;
  v14 = [v11 timerWithTimeInterval:0 repeats:&v22 block:v12];
  timer = v6->_timer;
  v6->_timer = v14;

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:v6->_timer forMode:*MEMORY[0x277CBE738]];

  v17 = v13;
  if (!v17->_ioHIDSystemClient)
  {
    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _ALSIOHIDEventCallback_cold_2();
    }

    v18 = _TVLLogDefault_log_2;
    if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26CD78000, v18, OS_LOG_TYPE_INFO, "ScheduleHIDEventSystemClient", buf, 2u);
    }

    v19 = *MEMORY[0x277CBECE8];
    v20 = IOHIDEventSystemClientCreateWithType();
    IOHIDEventSystemClientRegisterEventCallback();
    CFRunLoopGetMain();
    v21 = *MEMORY[0x277CBF048];
    IOHIDEventSystemClientScheduleWithRunLoop();
    v17->_ioHIDSystemClient = v20;
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __43__TVLALSDataExtractor_extract_ALSReadings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    _UnregisterHIDSystemClient(WeakRetained);
    [v5[5] invalidate];
    v6 = v5[5];
    v5[5] = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__TVLALSDataExtractor_extract_ALSReadings___block_invoke_2;
  v9[3] = &unk_279D6BE40;
  v7 = *(a1 + 32);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __43__TVLALSDataExtractor_extract_ALSReadings___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_TVLLogDefault_onceToken_2 != -1)
  {
    _UnregisterHIDSystemClient_cold_1();
  }

  if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_ERROR))
  {
    __43__TVLALSDataExtractor_extract_ALSReadings___block_invoke_3_cold_2();
  }

  (*(*(*(a1 + 32) + 16) + 16))();
}

+ (void)extractALSCalibrationData
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  selfCopy = self;
  _os_log_fault_impl(&dword_26CD78000, a2, OS_LOG_TYPE_FAULT, "Unsupported HmCl format, size %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __43__TVLALSDataExtractor_extract_ALSReadings___block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end