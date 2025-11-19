uint64_t _IPv4ToHostByteOrder(void *a1)
{
  v4 = 0;
  v1 = inet_pton(2, [a1 UTF8String], &v4);
  v2 = bswap32(v4);
  if (v1 == 1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

id _IPv6ToHostByteOrder(void *a1)
{
  v5 = 0uLL;
  v1 = 0;
  if (inet_pton(30, [a1 UTF8String], &v5) == 1)
  {
    v2 = [MEMORY[0x277CBEB28] dataWithLength:16];
    v1 = v2;
    if (v5 == 254 && (BYTE1(v5) & 0xC0) == 0x80)
    {
      v3 = [v2 mutableBytes];
      *v3 = v5;
      *([v1 mutableBytes] + 2) = 0;
      *([v1 mutableBytes] + 3) = 0;
    }
  }

  return v1;
}

id _IPAddress(int a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0;
  v4 = getifaddrs(&v12);
  v5 = 0;
  v6 = v12;
  if (!v4 && v12)
  {
    while (1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6->ifa_name];
      if ([v7 isEqualToString:v3])
      {
        ifa_addr = v6->ifa_addr;
        if (ifa_addr->sa_family == a1 && !getnameinfo(ifa_addr, ifa_addr->sa_len, v13, 0x401u, 0, 0, 2))
        {
          break;
        }
      }

      v6 = v6->ifa_next;

      if (!v6)
      {
        v5 = 0;
        goto LABEL_9;
      }
    }

    v5 = v13;
LABEL_9:
    v6 = v12;
  }

  if (v6)
  {
    MEMORY[0x26D6AE8C0](v6);
  }

  if (v5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void sub_26CD7A9E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_26CD7AEA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26CD7BE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __CurrentTimeStamp_block_invoke()
{
  CurrentTimeStamp_ISO8601DateFormatter = objc_alloc_init(MEMORY[0x277CCAA68]);

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_26CD7CFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t softBKSHIDServicesRequestProximityDetectionMode(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getBKSHIDServicesRequestProximityDetectionModeSymbolLoc_ptr;
  v9 = getBKSHIDServicesRequestProximityDetectionModeSymbolLoc_ptr;
  if (!getBKSHIDServicesRequestProximityDetectionModeSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getBKSHIDServicesRequestProximityDetectionModeSymbolLoc_block_invoke;
    v5[3] = &unk_279D6BDB8;
    v5[4] = &v6;
    __getBKSHIDServicesRequestProximityDetectionModeSymbolLoc_block_invoke(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v4 = softBKSHIDServicesRequestProximityDetectionMode_cold_1();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  return v2(a1);
}

void sub_26CD7DE1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void *__getBKSHIDServicesRequestProximityDetectionModeSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!BackBoardServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __BackBoardServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279D6BDD8;
    v8 = 0;
    BackBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = BackBoardServicesLibraryCore_frameworkLibrary;
    if (BackBoardServicesLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = BackBoardServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "BKSHIDServicesRequestProximityDetectionMode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBKSHIDServicesRequestProximityDetectionModeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __BackBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BackBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void _UnregisterHIDSystemClient(void *a1)
{
  v1 = a1;
  if (v1[1])
  {
    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _UnregisterHIDSystemClient_cold_1();
    }

    v2 = _TVLLogDefault_log_2;
    if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_26CD78000, v2, OS_LOG_TYPE_INFO, "UnregisterHIDSystemClient", v4, 2u);
    }

    CFRunLoopGetMain();
    v3 = *MEMORY[0x277CBF048];
    IOHIDEventSystemClientUnscheduleWithRunLoop();
    IOHIDEventSystemClientUnregisterEventCallback();
    v1[1] = 0;
  }
}

void _ALSIOHIDEventCallback(void *a1, uint64_t a2, __IOHIDServiceClient *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  if (_TVLLogDefault_onceToken_2 != -1)
  {
    _UnregisterHIDSystemClient_cold_1();
  }

  v5 = _TVLLogDefault_log_2;
  if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26CD78000, v5, OS_LOG_TYPE_INFO, "ALSIOHIDEventCallback", buf, 2u);
  }

  v6 = a1;
  if (IOHIDEventGetType() == 12)
  {
    v7 = MEMORY[0x26D6AEC20](*(v6 + 2));
    if (a3)
    {
      v8 = IOHIDServiceClientCopyProperty(a3, @"LocationID");
      a3 = IOHIDServiceClientCopyProperty(a3, @"Built-In");
      if (v8 && [v8 intValue])
      {
        [v8 intValue];
      }

      if (([(__IOHIDServiceClient *)a3 BOOLValue]& 1) != 0)
      {
        v52 = a3;
        IOHIDEventGetFloatValue();
        v10 = v9;
        IOHIDEventGetDoubleValue();
        v12 = v11;
        IOHIDEventGetDoubleValue();
        v14 = v13;
        IOHIDEventGetDoubleValue();
        v16 = v15;
        IOHIDEventGetDoubleValue();
        v18 = v17;
        v59 = 0u;
        memset(v60, 0, 25);
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        *buf = 0u;
        v54 = 0u;
        Children = IOHIDEventGetChildren();
        if (Children)
        {
          if (CFArrayGetValueAtIndex(Children, 0))
          {
            DataValue = IOHIDEventGetDataValue();
            if (DataValue)
            {
              v21 = DataValue;
              if (IOHIDEventGetIntegerValue() == 137)
              {
                v58 = v21[5];
                v59 = v21[6];
                v60[0] = v21[7];
                *(v60 + 9) = *(v21 + 121);
                v54 = v21[1];
                v55 = v21[2];
                v56 = v21[3];
                v57 = v21[4];
                *buf = *v21;
                v22 = buf[4];
LABEL_28:
                v27 = objc_alloc_init(TVLALSData);
                v24 = v12;
                *&v28 = v24;
                v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
                [(TVLALSData *)v27 setX:v29];

                v25 = v14;
                *&v30 = v25;
                v31 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
                [(TVLALSData *)v27 setY:v31];

                v26 = v16;
                *&v32 = v26;
                v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
                [(TVLALSData *)v27 setZ:v33];

                *&v34 = v10;
                v35 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
                [(TVLALSData *)v27 setLux:v35];

                *&v36 = v18;
                v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
                [(TVLALSData *)v27 setCct:v37];

                v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
                if (v22)
                {
                  v40 = &v54 + 3;
                  v41 = v22;
                  do
                  {
                    v42 = *v40++;
                    LODWORD(v39) = v42;
                    v43 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
                    [v38 addObject:v43];

                    --v41;
                  }

                  while (v41);
                }

                v44 = [MEMORY[0x277CBEA60] arrayWithArray:v38];
                [(TVLALSData *)v27 setChannelData:v44];

                if (_TVLLogDefault_onceToken_2 != -1)
                {
                  _ALSIOHIDEventCallback_cold_2();
                }

                a3 = v52;
                v45 = _TVLLogDefault_log_2;
                if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
                {
                  v46 = *(v6 + 4);
                  *v61 = 134217984;
                  v62 = v46;
                  _os_log_impl(&dword_26CD78000, v45, OS_LOG_TYPE_INFO, "ALSIOHIDEventCallback store ALS result (remaining count=%lu)", v61, 0xCu);
                }

                [*(v6 + 3) addObject:v27];
                v47 = *(v6 + 4);
                v48 = v47 > 1;
                v49 = v47 - 1;
                if (v48)
                {
                  *(v6 + 4) = v49;
                }

                else
                {
                  *(v6 + 4) = 0;
                  if (v7)
                  {
                    v50 = [*(v6 + 3) copy];
                    (v7)[2](v7, v50);
                  }
                }

LABEL_40:
                goto LABEL_41;
              }

              if (_TVLLogDefault_onceToken_2 != -1)
              {
                _ALSIOHIDEventCallback_cold_2();
              }

              if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_FAULT))
              {
                _ALSIOHIDEventCallback_cold_3();
              }
            }
          }
        }

        v22 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v8 = 0;
    }

    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _ALSIOHIDEventCallback_cold_2();
    }

    v23 = _TVLLogDefault_log_2;
    if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26CD78000, v23, OS_LOG_TYPE_INFO, "ALSIOHIDEventCallback external event", buf, 2u);
    }

    if (v7)
    {
      v7[2](v7, 0);
    }

    goto LABEL_40;
  }

LABEL_41:

  v51 = *MEMORY[0x277D85DE8];
}

id _TVLLogDefault()
{
  if (_TVLLogDefault_onceToken_2 != -1)
  {
    _UnregisterHIDSystemClient_cold_1();
  }

  v1 = _TVLLogDefault_log_2;

  return v1;
}

void sub_26CD804D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CFTypeID __isInternalBuild_block_invoke()
{
  result = MGCopyAnswer();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    result = CFBooleanGetTypeID();
    if (v2 == result)
    {
      result = CFBooleanGetValue(v1);
      isInternalBuild_internalBuild = result != 0;
    }
  }

  return result;
}

void print_HmClData(char *a1, os_log_t oslog)
{
  *(&v60[9] + 4) = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    print_HmClData_cold_22();
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmClData_cold_1();
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmClData_cold_2(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmClData_cold_3(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmClData_cold_4(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmClData_cold_5(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmClData_cold_6(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmClData_cold_7(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmClData_cold_8(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmClData_cold_9(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmClData_cold_10();
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmClData_cold_11();
  }

  v4 = 0;
  v5 = 1;
  v6 = "%f\t";
  do
  {
    v7 = v5;
    v8 = &a1[5080 * v4 + 76];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v18 = *v8;
      *buf = 67109120;
      LODWORD(v58) = v18;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "source:           %d\n", buf, 8u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v19 = v8[1];
      *buf = 67109120;
      LODWORD(v58) = v19;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "algo_version:       %d\n", buf, 8u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(v8 + 1);
      *buf = 67109120;
      LODWORD(v58) = v20;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "size:               %d\n", buf, 8u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v21 = v8[4];
      *buf = 67109120;
      LODWORD(v58) = v21;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "numChannels:        %d\n", buf, 8u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v22 = v8[5];
      *buf = 67109120;
      LODWORD(v58) = v22;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "numGains:           %d\n", buf, 8u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(v8 + 3);
      *buf = 67109120;
      LODWORD(v58) = v23;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "slow_int:           %d\n", buf, 8u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(v8 + 4);
      *buf = 67109120;
      LODWORD(v58) = v24;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "fast_int:           %d\n", buf, 8u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(v8 + 5);
      *buf = 67109120;
      LODWORD(v58) = v25;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "rapid_int:          %d\n", buf, 8u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(v8 + 6);
      *buf = 67109120;
      LODWORD(v58) = v26;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "occlusion_int:      %d\n", buf, 8u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      print_HmClData_cold_12();
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      print_HmClData_cold_13();
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      print_HmClData_cold_14();
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      print_HmClData_cold_15();
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      print_HmClData_cold_16(v59, v8, v60, oslog);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      print_HmClData_cold_17(&v53, v54);
    }

    if (v8[4])
    {
      v9 = v6;
      v10 = 0;
      v11 = (v8 + 20);
      do
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          LODWORD(v58) = v10;
          _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "\tch%d: ", buf, 8u);
        }

        v12 = v8[5];
        if (v12)
        {
          for (i = 0; i < v12; ++i)
          {
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              v14 = vcvts_n_f32_u32(*&v11[2 * i], 0xEuLL);
              *buf = 134217984;
              v58 = v14;
              _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "%f\t", buf, 0xCu);
              v12 = v8[5];
            }
          }
        }

        ++v10;
        v15 = v8[4];
        v11 += 18;
      }

      while (v10 < v15);
      v6 = v9;
    }

    else
    {
      LODWORD(v15) = 0;
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "azOffset: ", buf, 2u);
      LODWORD(v15) = v8[4];
      if (!v8[4])
      {
        goto LABEL_75;
      }
    }

    else if (!v15)
    {
      goto LABEL_75;
    }

    v16 = 0;
    do
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v17 = *&v8[2 * v16 + 128];
        *buf = 67109120;
        LODWORD(v58) = v17;
        _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "%d\t", buf, 8u);
        LODWORD(v15) = v8[4];
      }

      ++v16;
    }

    while (v16 < v15);
LABEL_75:
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "adcOffset: ", buf, 2u);
      LODWORD(v15) = v8[4];
      if (!v8[4])
      {
        goto LABEL_83;
      }
    }

    else if (!v15)
    {
      goto LABEL_83;
    }

    v27 = 0;
    do
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v28 = vcvts_n_f32_s32(*&v8[2 * v27 + 140], 8uLL);
        *buf = 134217984;
        v58 = v28;
        _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "%f\t", buf, 0xCu);
        LODWORD(v15) = v8[4];
      }

      ++v27;
    }

    while (v27 < v15);
LABEL_83:
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "darkCounts: ", buf, 2u);
      LODWORD(v15) = v8[4];
      if (!v8[4])
      {
        goto LABEL_91;
      }
    }

    else if (!v15)
    {
      goto LABEL_91;
    }

    v29 = 0;
    do
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v30 = v8[v29 + 152];
        *buf = 67109120;
        LODWORD(v58) = v30;
        _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "%d\t", buf, 8u);
        LODWORD(v15) = v8[4];
      }

      ++v29;
    }

    while (v29 < v15);
LABEL_91:
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "backlightCounts: ", buf, 2u);
      LODWORD(v15) = v8[4];
      if (!v8[4])
      {
        goto LABEL_99;
      }
    }

    else if (!v15)
    {
      goto LABEL_99;
    }

    v31 = 0;
    do
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v32 = v8[v31 + 158];
        *buf = 67109120;
        LODWORD(v58) = v32;
        _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "%d\t", buf, 8u);
        LODWORD(v15) = v8[4];
      }

      ++v31;
    }

    while (v31 < v15);
LABEL_99:
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "luxCoeff: ", buf, 2u);
      LODWORD(v15) = v8[4];
      if (!v8[4])
      {
        goto LABEL_107;
      }
    }

    else if (!v15)
    {
      goto LABEL_107;
    }

    v33 = 0;
    do
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v34 = (*&v8[4 * v33 + 164] * 0.000015259);
        *buf = 134217984;
        v58 = v34;
        _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "%f\t", buf, 0xCu);
        LODWORD(v15) = v8[4];
      }

      ++v33;
    }

    while (v33 < v15);
LABEL_107:
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "cctCoeff: ", buf, 2u);
      LODWORD(v15) = v8[4];
      if (!v8[4])
      {
        goto LABEL_115;
      }
    }

    else if (!v15)
    {
      goto LABEL_115;
    }

    v35 = 0;
    do
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v36 = (*&v8[4 * v35 + 188] * 0.000015259);
        *buf = 134217984;
        v58 = v36;
        _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "%f\t", buf, 0xCu);
        LODWORD(v15) = v8[4];
      }

      ++v35;
    }

    while (v35 < v15);
LABEL_115:
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      print_HmClData_cold_18(&v51, v52);
    }

    for (j = 0; j != 8; j += 2)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v38 = vcvts_n_f32_u32(*&v8[j + 212], 0xFuLL);
        *buf = 134217984;
        v58 = v38;
        _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, v6, buf, 0xCu);
      }
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      print_HmClData_cold_19(v55, v8, &v56, oslog);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      print_HmClData_cold_20(&v49, v50);
    }

    v39 = v8[4];
    if (v8[4])
    {
      v40 = 0;
      do
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          v41 = (*&v8[4 * v40 + 224] * 0.000015259);
          *buf = 134217984;
          v58 = v41;
          _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "%f\t", buf, 0xCu);
          v39 = v8[4];
        }

        ++v40;
      }

      while (v40 < v39);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "pia: ", buf, 2u);
      v39 = v8[4];
      if (!v8[4])
      {
        goto LABEL_138;
      }
    }

    else if (!v39)
    {
      goto LABEL_138;
    }

    v42 = 0;
    do
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v43 = vcvts_n_f32_u32(*&v8[2 * v42 + 248], 0xEuLL);
        *buf = 134217984;
        v58 = v43;
        _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "%f\t", buf, 0xCu);
        v39 = v8[4];
      }

      ++v42;
    }

    while (v42 < v39);
LABEL_138:
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v44 = *(v8 + 130);
      *buf = 67109120;
      LODWORD(v58) = v44;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "wavelength_start_visible:           %d\n", buf, 8u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v45 = *(v8 + 131);
      *buf = 67109120;
      LODWORD(v58) = v45;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "wavelength_start_nir:               %d\n", buf, 8u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v46 = *(v8 + 132);
      *buf = 67109120;
      LODWORD(v58) = v46;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "wavelength_end:                     %d\n", buf, 8u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v47 = v8[266];
      *buf = 67109120;
      LODWORD(v58) = v47;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "wavelength_step:                    %d\n", buf, 8u);
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmClData_cold_21();
  }

  v48 = *MEMORY[0x277D85DE8];
}

void print_HmCl_VD6287_v3(unsigned __int8 *a1, os_log_t oslog)
{
  v125 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmCl_VD6287_v3_cold_1();
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmCl_VD6287_v3_cold_2(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmCl_VD6287_v3_cold_3(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmCl_VD6287_v3_cold_4(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmCl_VD6287_v3_cold_5(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmCl_VD6287_v3_cold_6(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmCl_VD6287_v3_cold_7(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmCl_VD6287_v3_cold_8(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmCl_VD6287_v3_cold_9(a1);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmCl_VD6287_v3_cold_10(a1);
  }

  v4 = 0;
  v5 = a1 + 80;
  v6 = 1;
  do
  {
    v7 = v6;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109378;
      v12 = "ASYNC";
      if (v7)
      {
        v12 = "SYNC";
      }

      v112 = v4;
      v113 = 2080;
      *v114 = v12;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d] (%s)\n", buf, 0x12u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v13 = v5[5134 * v4];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v13;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].source = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v14 = v5[5134 * v4 + 1];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v14;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].algo_version = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v15 = *&v5[5134 * v4 + 2];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v15;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].size = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v16 = v5[5134 * v4 + 4];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v16;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].num_channels = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v17 = v5[5134 * v4 + 5];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v17;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].num_gains = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v18 = v5[5134 * v4 + 6];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v18;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].lux_coefficient_gain = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v19 = *&v5[5134 * v4 + 7];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v19;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].lux_coefficient_tint_time = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v20 = *&v5[5134 * v4 + 9];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v20;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].lux_coefficient_tint_nsamples = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v21 = &v5[5134 * v4];
      v22 = v21[11];
      v23 = v21[12];
      v24 = v21[13];
      v25 = v21[14];
      v26 = v21[15];
      LODWORD(v21) = v21[16];
      *buf = 67110656;
      v112 = v4;
      v113 = 1024;
      *v114 = v22;
      *&v114[4] = 1024;
      *&v114[6] = v23;
      v115 = 1024;
      v116 = v24;
      v117 = 1024;
      v118 = v25;
      v119 = 1024;
      v120 = v26;
      v121 = 1024;
      v122 = v21;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].occlusion = [%u,%u,%u,%u,%u,%u]\n", buf, 0x2Cu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v27 = *&v5[5134 * v4 + 17];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v27;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].temperature_mod100 = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v28 = *&v5[5134 * v4 + 19];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v28;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].lux_correction_mod16384 = %u\n", buf, 0xEu);
    }

    v8 = 0;
    v9 = &a1[5134 * v4 + 101];
    do
    {
      for (i = 0; i != 9; ++i)
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          v11 = *(v9 + 2 * i);
          *buf = 67109888;
          v112 = v4;
          v113 = 1024;
          *v114 = v8;
          *&v114[4] = 1024;
          *&v114[6] = i;
          v115 = 1024;
          v116 = v11;
          _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].gain_scaling_mod16384[%u][%u] = %u\n", buf, 0x1Au);
        }
      }

      ++v8;
      v9 += 18;
    }

    while (v8 != 6);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v29 = &v5[5134 * v4];
      v30 = *(v29 + 129);
      v31 = *(v29 + 131);
      v32 = *(v29 + 133);
      v33 = *(v29 + 135);
      v34 = *(v29 + 137);
      LODWORD(v29) = *(v29 + 139);
      *buf = 67110656;
      v112 = v4;
      v113 = 1024;
      *v114 = v30;
      *&v114[4] = 1024;
      *&v114[6] = v31;
      v115 = 1024;
      v116 = v32;
      v117 = 1024;
      v118 = v33;
      v119 = 1024;
      v120 = v34;
      v121 = 1024;
      v122 = v29;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].dark_counts_offset = [%d,%d,%d,%d,%d,%d]\n", buf, 0x2Cu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v35 = &v5[5134 * v4];
      v36 = *(v35 + 141);
      v37 = *(v35 + 143);
      v38 = *(v35 + 145);
      v39 = *(v35 + 147);
      v40 = *(v35 + 149);
      LODWORD(v35) = *(v35 + 151);
      *buf = 67110656;
      v112 = v4;
      v113 = 1024;
      *v114 = v36;
      *&v114[4] = 1024;
      *&v114[6] = v37;
      v115 = 1024;
      v116 = v38;
      v117 = 1024;
      v118 = v39;
      v119 = 1024;
      v120 = v40;
      v121 = 1024;
      v122 = v35;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].cnt_ratio_mod16384 = [%d,%d,%d,%d,%d,%d]\n", buf, 0x2Cu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v41 = &v5[5134 * v4];
      v42 = *(v41 + 153);
      v43 = *(v41 + 157);
      v44 = *(v41 + 161);
      v45 = *(v41 + 165);
      v46 = *(v41 + 169);
      LODWORD(v41) = *(v41 + 173);
      *buf = 67110656;
      v112 = v4;
      v113 = 1024;
      *v114 = v42;
      *&v114[4] = 1024;
      *&v114[6] = v43;
      v115 = 1024;
      v116 = v44;
      v117 = 1024;
      v118 = v45;
      v119 = 1024;
      v120 = v46;
      v121 = 1024;
      v122 = v41;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].lux_coefficient_mod65536 = [%d,%d,%d,%d,%d,%d]\n", buf, 0x2Cu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v47 = &v5[5134 * v4];
      v48 = *(v47 + 177);
      v49 = *(v47 + 181);
      v50 = *(v47 + 185);
      v51 = *(v47 + 189);
      v52 = *(v47 + 193);
      LODWORD(v47) = *(v47 + 197);
      *buf = 67110656;
      v112 = v4;
      v113 = 1024;
      *v114 = v48;
      *&v114[4] = 1024;
      *&v114[6] = v49;
      v115 = 1024;
      v116 = v50;
      v117 = 1024;
      v118 = v51;
      v119 = 1024;
      v120 = v52;
      v121 = 1024;
      v122 = v47;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].cct_coefficient_mod256 = [%d,%d,%d,%d,%d,%d]\n", buf, 0x2Cu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v53 = *&v5[5134 * v4 + 201];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v53;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].normalization_factor_mod65536 = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v54 = &v5[5134 * v4];
      v55 = *(v54 + 205);
      v56 = *(v54 + 209);
      v57 = *(v54 + 213);
      v58 = *(v54 + 217);
      v59 = *(v54 + 221);
      LODWORD(v54) = *(v54 + 225);
      *buf = 67110656;
      v112 = v4;
      v113 = 1024;
      *v114 = v55;
      *&v114[4] = 1024;
      *&v114[6] = v56;
      v115 = 1024;
      v116 = v57;
      v117 = 1024;
      v118 = v58;
      v119 = 1024;
      v120 = v59;
      v121 = 1024;
      v122 = v54;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].nir_scaling_mod65536 = [%d,%d,%d,%d,%d,%d]\n", buf, 0x2Cu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v60 = *&v5[5134 * v4 + 229];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v60;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].wl_start_visible = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v61 = *&v5[5134 * v4 + 231];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v61;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].wl_start_nir = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v62 = *&v5[5134 * v4 + 233];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v62;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].wl_end = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v63 = v5[5134 * v4 + 235];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v63;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].wl_step = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v64 = *&v5[5134 * v4 + 5050];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v64;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].alsh.als_location_x = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v65 = *&v5[5134 * v4 + 5052];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v65;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].alsh.als_location_y = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v66 = v5[5134 * v4 + 5054];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v66;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].alsh.num_nits = %u\n", buf, 0xEu);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v67 = *&v5[5134 * v4 + 5055];
      v68 = *&v5[5134 * v4 + 5057];
      v69 = *&v5[5134 * v4 + 5059];
      v70 = *&v5[5134 * v4 + 5061];
      v71 = *&v5[5134 * v4 + 5063];
      v72 = *&v5[5134 * v4 + 5065];
      v73 = *&v5[5134 * v4 + 5067];
      *buf = 67110912;
      v112 = v4;
      v113 = 1024;
      *v114 = v67;
      *&v114[4] = 1024;
      *&v114[6] = v68;
      v115 = 1024;
      v116 = v69;
      v117 = 1024;
      v118 = v70;
      v119 = 1024;
      v120 = v71;
      v121 = 1024;
      v122 = v72;
      v123 = 1024;
      v124 = v73;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].alsh.nits = [%u,%u,%u,%u,%u,%u,%u]\n", buf, 0x32u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v74 = *&v5[5134 * v4 + 5069];
      v75 = *&v5[5134 * v4 + 5071];
      v76 = *&v5[5134 * v4 + 5073];
      v77 = *&v5[5134 * v4 + 5075];
      v78 = *&v5[5134 * v4 + 5077];
      v79 = *&v5[5134 * v4 + 5079];
      v80 = *&v5[5134 * v4 + 5081];
      *buf = 67110912;
      v112 = v4;
      v113 = 1024;
      *v114 = v74;
      *&v114[4] = 1024;
      *&v114[6] = v75;
      v115 = 1024;
      v116 = v76;
      v117 = 1024;
      v118 = v77;
      v119 = 1024;
      v120 = v78;
      v121 = 1024;
      v122 = v79;
      v123 = 1024;
      v124 = v80;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].alsh.line_delay = [%u,%u,%u,%u,%u,%u,%u]\n", buf, 0x32u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v81 = v5[5134 * v4 + 5097];
      v82 = v5[5134 * v4 + 5098];
      v83 = v5[5134 * v4 + 5099];
      v84 = v5[5134 * v4 + 5100];
      v85 = v5[5134 * v4 + 5101];
      v86 = v5[5134 * v4 + 5102];
      v87 = v5[5134 * v4 + 5103];
      *buf = 67110912;
      v112 = v4;
      v113 = 1024;
      *v114 = v81;
      *&v114[4] = 1024;
      *&v114[6] = v82;
      v115 = 1024;
      v116 = v83;
      v117 = 1024;
      v118 = v84;
      v119 = 1024;
      v120 = v85;
      v121 = 1024;
      v122 = v86;
      v123 = 1024;
      v124 = v87;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].alsh.tint_gain = [%u,%u,%u,%u,%u,%u,%u]\n", buf, 0x32u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v88 = *&v5[5134 * v4 + 5083];
      v89 = *&v5[5134 * v4 + 5085];
      v90 = *&v5[5134 * v4 + 5087];
      v91 = *&v5[5134 * v4 + 5089];
      v92 = *&v5[5134 * v4 + 5091];
      v93 = *&v5[5134 * v4 + 5093];
      v94 = *&v5[5134 * v4 + 5095];
      *buf = 67110912;
      v112 = v4;
      v113 = 1024;
      *v114 = v88;
      *&v114[4] = 1024;
      *&v114[6] = v89;
      v115 = 1024;
      v116 = v90;
      v117 = 1024;
      v118 = v91;
      v119 = 1024;
      v120 = v92;
      v121 = 1024;
      v122 = v93;
      v123 = 1024;
      v124 = v94;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].alsh.tint_time = [%u,%u,%u,%u,%u,%u,%u]\n", buf, 0x32u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v95 = &v5[5134 * v4];
      v96 = v95[2559];
      v97 = v95[2560];
      v98 = v95[2561];
      v99 = v95[2562];
      v100 = v95[2563];
      v101 = v95[2564];
      LODWORD(v95) = v95[2565];
      *buf = 67110912;
      v112 = v4;
      v113 = 1024;
      *v114 = v96;
      *&v114[4] = 1024;
      *&v114[6] = v97;
      v115 = 1024;
      v116 = v98;
      v117 = 1024;
      v118 = v99;
      v119 = 1024;
      v120 = v100;
      v121 = 1024;
      v122 = v101;
      v123 = 1024;
      v124 = v95;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].alsh.tint_interval = [%u,%u,%u,%u,%u,%u,%u]\n", buf, 0x32u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v102 = &v5[5134 * v4];
      v103 = v102[2552];
      v104 = v102[2553];
      v105 = v102[2554];
      v106 = v102[2555];
      v107 = v102[2556];
      v108 = v102[2557];
      LODWORD(v102) = v102[2558];
      *buf = 67110912;
      v112 = v4;
      v113 = 1024;
      *v114 = v103;
      *&v114[4] = 1024;
      *&v114[6] = v104;
      v115 = 1024;
      v116 = v105;
      v117 = 1024;
      v118 = v106;
      v119 = 1024;
      v120 = v107;
      v121 = 1024;
      v122 = v108;
      v123 = 1024;
      v124 = v102;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].alsh.tint_nsamples = [%u,%u,%u,%u,%u,%u,%u]\n", buf, 0x32u);
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v109 = v5[5134 * v4 + 5132];
      *buf = 67109376;
      v112 = v4;
      v113 = 1024;
      *v114 = v109;
      _os_log_debug_impl(&dword_26CD78000, oslog, OS_LOG_TYPE_DEBUG, "blobs[%d].alsh.num_regions = %u\n", buf, 0xEu);
    }

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    print_HmCl_VD6287_v3_cold_11();
  }

  v110 = *MEMORY[0x277D85DE8];
}

CFDataRef convertNighthawkHmClv1Tov3()
{
  v0 = MEMORY[0x28223BE20]();
  v33 = *MEMORY[0x277D85DE8];
  bzero(v32, 0x281CuLL);
  v1 = 0;
  *bytes = *v0;
  v25 = *(v0 + 8);
  v26 = *(v0 + 12);
  v27 = *(v0 + 20);
  *&v29[12] = *(v0 + 52);
  v2 = v0 + 80;
  v3 = 1;
  *v29 = *(v0 + 40);
  v4 = *(v0 + 24);
  v30 = *(v0 + 68);
  v31 = *(v0 + 76);
  v28 = v4;
  do
  {
    v5 = 0;
    v6 = v2 + 5180 * v1;
    v7 = &v32[2567 * v1];
    *v7 = *v6;
    *(v7 + 4) = *(v6 + 4);
    v8 = v3;
    *(v7 + 5) = *(v6 + 5);
    *(v7 + 7) = -1;
    *(v7 + 11) = *(v6 + 9);
    *(v7 + 15) = *(v6 + 13);
    *(v7 + 17) = *(v6 + 19);
    *(v7 + 19) = *(v6 + 21);
    v9 = *(v6 + 23);
    v10 = *(v6 + 39);
    *(v7 + 53) = *(v6 + 55);
    *(v7 + 37) = v10;
    *(v7 + 21) = v9;
    v11 = *(v6 + 71);
    v12 = *(v6 + 87);
    v13 = *(v6 + 103);
    *(v7 + 113) = *(v6 + 115);
    *(v7 + 101) = v13;
    *(v7 + 85) = v12;
    *(v7 + 69) = v11;
    do
    {
      *(&v7[v5 + 64] + 1) = *(v6 + 137 + v5);
      ++v5;
    }

    while (v5 != 6);
    *(v7 + 141) = *(v6 + 143);
    *(v7 + 149) = *(v6 + 151);
    *(v7 + 153) = *(v6 + 155);
    *(v7 + 169) = *(v6 + 171);
    *(v7 + 177) = *(v6 + 179);
    *(v7 + 193) = *(v6 + 195);
    *(v7 + 201) = *(v6 + 203);
    *(v7 + 221) = *(v6 + 223);
    *(v7 + 205) = *(v6 + 207);
    *(v7 + 229) = *(v6 + 231);
    *(v7 + 231) = *(v6 + 233);
    *(v7 + 235) = *(v6 + 237);
    memcpy(v7 + 119, (v6 + 239), 0x12D0uLL);
    LOWORD(v14) = *(v6 + 5055) + 1;
    *(v7 + 5054) = *(v6 + 5055) + 1;
    *(v7 + 5057) = *(v6 + 5056);
    v15 = *(v6 + 5064);
    *(v7 + 5071) = v15;
    *(v7 + 5069) = v15;
    if ((v14 & 0x100) == 0)
    {
      v16 = v7 + 5097;
      v17 = v7 + 2559;
      v14 = v14;
      v18 = *(v6 + 5072);
      v19 = *(v6 + 5073);
      v20 = *(v6 + 5077);
      v21 = *(v6 + 5075);
      do
      {
        *(v17 - 35) = v19;
        *v16++ = v18;
        *(v17 - 7) = v20;
        *v17++ = v21;
        --v14;
      }

      while (v14);
    }

    v3 = 0;
    *(v7 + 5132) = *(v6 + 5079);
    v1 = 1;
  }

  while ((v8 & 1) != 0);
  result = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 10348);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

_BYTE *OUTLINED_FUNCTION_5(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_6(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

void TapToRadar()
{
  v28 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCACE0];
  v1 = [MEMORY[0x277CBEBC0] URLWithString:@"tap-to-radar://new"];
  v2 = [v0 componentsWithURL:v1 resolvingAgainstBaseURL:0];

  v21 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentName" value:@"AMP tvOS Core"];
  v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentVersion" value:@"AV Calibration"];
  v19 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentID" value:@"992338"];
  v3 = [MEMORY[0x277CCAD18] queryItemWithName:@"DeviceClasses" value:{@"iPhone, AppleTV"}];
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:@"AutoDiagnostics" value:@"phone"];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = +[TVLPersistenceManager allRecordingPaths];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v22 + 1) + 8 * v10) path];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v12 = MEMORY[0x277CCAD18];
  v13 = [v5 componentsJoinedByString:{@", "}];
  v14 = [v12 queryItemWithName:@"Attachments" value:v13];

  v26[0] = v21;
  v26[1] = v20;
  v26[2] = v19;
  v26[3] = v3;
  v26[4] = v4;
  v26[5] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:6];
  [v2 setQueryItems:v15];

  v16 = [v2 URL];
  v17 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v17 openURL:v16 configuration:0 completionHandler:0];

  v18 = *MEMORY[0x277D85DE8];
}

void sub_26CD82E6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_26CD83060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CD8323C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CD838BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CD83D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CD84414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CD84858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __DeviceProductType_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {

      objc_storeStrong(&DeviceProductType_type, v1);
    }
  }
}

void __OSBuildVersion_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {

      objc_storeStrong(&OSBuildVersion_build, v1);
    }
  }
}

CFTypeID __isInternalBuild_block_invoke_0()
{
  result = MGCopyAnswer();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    result = CFBooleanGetTypeID();
    if (v2 == result)
    {
      result = CFBooleanGetValue(v1);
      isInternalBuild_internalBuild_0 = result != 0;
    }
  }

  return result;
}

NSObject *tvl_schedule_block_at_time(dispatch_time_t a1, NSObject *a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, a2);
  v7 = v6;
  if (v6)
  {
    dispatch_source_set_timer(v6, a1, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(v7, v5);
    dispatch_resume(v7);
  }

  return v7;
}

void sub_26CD85C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CD86664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CD86F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CD87234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __DeviceProductType_block_invoke_0()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {

      objc_storeStrong(&DeviceProductType_type_0, v1);
    }
  }
}

void __OSBuildVersion_block_invoke_0()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {

      objc_storeStrong(&OSBuildVersion_build_0, v1);
    }
  }
}

void sub_26CD8883C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_26CD89BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26CD8A2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26CD8ADB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PriorityOfAVAudioSessionOrientation(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277CB8108]])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CB80F8]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CB8110]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277CB8118]))
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CB8100]])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CB8120]])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t softBKSHIDServicesRequestProximityDetectionMode_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __43__TVLRGBColorDetector__prepareForDetection__block_invoke_cold_1(v0);
}

void print_HmClData_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void print_HmClData_cold_2(char *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1[3];
  v2 = a1[2];
  v3 = a1[1];
  v4 = *a1;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Au);
  v10 = *MEMORY[0x277D85DE8];
}

void print_HmClData_cold_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4);
  v2 = *(a1 + 5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xEu);
  v8 = *MEMORY[0x277D85DE8];
}

void print_HmClData_cold_4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 6);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void print_HmClData_cold_5(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 10);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void print_HmClData_cold_6(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void print_HmClData_cold_7(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void print_HmClData_cold_8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void print_HmClData_cold_9(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 17);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void print_HmClData_cold_10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void print_HmClData_cold_11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void print_HmClData_cold_12()
{
  OUTLINED_FUNCTION_3_0();
  v1 = ldexp(1.0, *(v0 + 14));
  OUTLINED_FUNCTION_7(v1, 3.852e-34);
  OUTLINED_FUNCTION_2_0(&dword_26CD78000, v2, v3, "slow_gain:           %f\n");
}

void print_HmClData_cold_13()
{
  OUTLINED_FUNCTION_3_0();
  v1 = ldexp(1.0, *(v0 + 15));
  OUTLINED_FUNCTION_7(v1, 3.852e-34);
  OUTLINED_FUNCTION_2_0(&dword_26CD78000, v2, v3, "fast_gain:           %f\n");
}

void print_HmClData_cold_14()
{
  OUTLINED_FUNCTION_3_0();
  v1 = ldexp(1.0, *(v0 + 16));
  OUTLINED_FUNCTION_7(v1, 3.852e-34);
  OUTLINED_FUNCTION_2_0(&dword_26CD78000, v2, v3, "rapid_gain:          %f\n");
}

void print_HmClData_cold_15()
{
  OUTLINED_FUNCTION_3_0();
  v1 = ldexp(1.0, *(v0 + 17));
  OUTLINED_FUNCTION_7(v1, 3.852e-34);
  OUTLINED_FUNCTION_2_0(&dword_26CD78000, v2, v3, "occlusion_gain:      %f\n");
}

double print_HmClData_cold_16(uint8_t *buf, uint64_t a2, double *a3, os_log_t log)
{
  v4 = vcvts_n_f32_u32(*(a2 + 18), 0xEuLL);
  *buf = 134217984;
  *a3 = v4;
  _os_log_debug_impl(&dword_26CD78000, log, OS_LOG_TYPE_DEBUG, "lux_correction:      %f\n", buf, 0xCu);
  return result;
}

double print_HmClData_cold_19(uint8_t *buf, uint64_t a2, double *a3, os_log_t log)
{
  v4 = (*(a2 + 220) * 0.000015259);
  *buf = 134217984;
  *a3 = v4;
  _os_log_debug_impl(&dword_26CD78000, log, OS_LOG_TYPE_DEBUG, "spectrum_normalization:      %f\n", buf, 0xCu);
  return result;
}

void print_HmClData_cold_21()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void print_HmCl_VD6287_v3_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void print_HmCl_VD6287_v3_cold_2(unsigned __int8 *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Au);
  v10 = *MEMORY[0x277D85DE8];
}

void print_HmCl_VD6287_v3_cold_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void print_HmCl_VD6287_v3_cold_4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void print_HmCl_VD6287_v3_cold_5(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 6);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void print_HmCl_VD6287_v3_cold_6(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void print_HmCl_VD6287_v3_cold_7(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 10);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void print_HmCl_VD6287_v3_cold_8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void print_HmCl_VD6287_v3_cold_9(unsigned __int8 *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1[12];
  v2 = a1[13];
  v3 = a1[14];
  v4 = a1[15];
  v5 = a1[16];
  v6 = a1[17];
  v7 = a1[18];
  v8 = a1[19];
  v9 = a1[20];
  v10 = a1[21];
  v11 = a1[22];
  v12 = a1[23];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v13, v14, v15, v16, v17, 0x4Au);
  v18 = *MEMORY[0x277D85DE8];
}

void print_HmCl_VD6287_v3_cold_10(unsigned __int8 *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1[68];
  v2 = a1[69];
  v3 = a1[70];
  v4 = a1[71];
  v5 = a1[72];
  v6 = a1[73];
  v7 = a1[74];
  v8 = a1[75];
  v9 = a1[76];
  v10 = a1[77];
  v11 = a1[78];
  v12 = a1[79];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v13, v14, v15, v16, v17, 0x4Au);
  v18 = *MEMORY[0x277D85DE8];
}

void print_HmCl_VD6287_v3_cold_11()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}