uint64_t SSEIsFeatureSupported(int a1)
{
  v8 = 0;
  v7 = 0;
  init();
  if ((_hasSSE & 1) == 0)
  {
    SSEIsFeatureSupported_cold_1(&v9);
    return v9;
  }

  if (SSEGetVersion(&v8))
  {
    SSEIsFeatureSupported_cold_2();
    return v9;
  }

  result = 0;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
      return result;
    case 7:
    case 11:
    case 15:
    case 26:
    case 27:
    case 28:
      v3 = HIWORD(v8);
      goto LABEL_8;
    case 12:
    case 25:
      v6 = v8 > 1;
      goto LABEL_23;
    case 13:
    case 14:
      v6 = v8 > 2;
      goto LABEL_23;
    case 16:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
      v3 = v8 >> 18;
      goto LABEL_8;
    case 17:
    case 40:
      v4 = v8;
      v5 = 393215;
      goto LABEL_22;
    case 29:
    case 30:
    case 31:
      v3 = v8 >> 17;
      goto LABEL_8;
    case 32:
    case 45:
    case 46:
    case 47:
    case 48:
      v3 = v8 >> 19;
LABEL_8:
      if (v3)
      {
        return 0;
      }

      else
      {
        return 4294967279;
      }

    case 33:
      v4 = v8;
      v5 = 655359;
      goto LABEL_22;
    case 34:
      if (getDeviceFeatures(&v7))
      {
        SSEIsFeatureSupported_cold_3();
        return v9;
      }

      if (v7)
      {
        result = 0;
      }

      else
      {
        result = 4294967279;
      }

      break;
    case 41:
    case 42:
      v6 = HIWORD(v8) > 4u;
      goto LABEL_23;
    case 43:
    case 44:
      v4 = v8;
      v5 = 458751;
      goto LABEL_22;
    case 49:
      v4 = v8;
      v5 = 589823;
LABEL_22:
      v6 = v4 > v5;
LABEL_23:
      if (v6)
      {
        return 0;
      }

      else
      {
        return 4294967279;
      }

    default:
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        SSEIsFeatureSupported_cold_4();
      }

      return 4294967279;
  }

  return result;
}

uint64_t SSEGetVersion(_DWORD *a1)
{
  if (SSEGetVersion_protocolVersion)
  {
    result = 0;
    if (!a1)
    {
      return result;
    }

    goto LABEL_11;
  }

  inputStruct = 0x153534563;
  outputStruct = 0;
  if (init())
  {
    SSEGetVersion_cold_1();
    goto LABEL_17;
  }

  v4 = 4;
  if (IOConnectCallStructMethod(_MergedGlobals_0, 0, &inputStruct, 8uLL, &outputStruct, &v4))
  {
    SSEGetVersion_cold_2();
    goto LABEL_17;
  }

  if (v4 != 4)
  {
    SSEGetVersion_cold_3();
    goto LABEL_17;
  }

  v3 = outputStruct;
  if (!outputStruct)
  {
    SSEGetVersion_cold_4();
LABEL_17:
    result = v7;
    if (!a1)
    {
      return result;
    }

    goto LABEL_11;
  }

  result = 0;
  if (outputStruct >= 0xA0000)
  {
    v3 = 655360;
  }

  SSEGetVersion_protocolVersion = v3;
  if (a1)
  {
LABEL_11:
    *a1 = SSEGetVersion_protocolVersion;
  }

  return result;
}

uint64_t getDeviceFeatures(void *a1)
{
  if (!a1)
  {
    getDeviceFeatures_cold_5();
    return inputStruct;
  }

  if ((getDeviceFeatures_featuresValid & 1) == 0)
  {
    v6[0] = 0;
    if (!SSEGetVersion(v6))
    {
      if (v6[0] >= 0x30000u)
      {
        outputStruct = 0;
        inputStruct = 0x1E53534563;
        if (init())
        {
          getDeviceFeatures_cold_2();
        }

        else
        {
          v3 = 8;
          if (IOConnectCallStructMethod(_MergedGlobals_0, 0, &inputStruct, 8uLL, &outputStruct, &v3))
          {
            getDeviceFeatures_cold_3();
          }

          else
          {
            if (v3 == 8)
            {
              getDeviceFeatures_deviceFeatures = outputStruct;
              goto LABEL_9;
            }

            getDeviceFeatures_cold_4();
          }
        }

        return v6[1];
      }

LABEL_9:
      getDeviceFeatures_featuresValid = 1;
      goto LABEL_10;
    }

    getDeviceFeatures_cold_1();
    return inputStruct;
  }

LABEL_10:
  result = 0;
  *a1 = getDeviceFeatures_deviceFeatures;
  return result;
}

uint64_t init()
{
  v21 = *MEMORY[0x29EDCA608];
  if ((_initialized & 1) == 0)
  {
    if (isRestoreMode_onceToken != -1)
    {
      init_cold_1();
    }

    if (isRestoreMode_restoreMode & 1) != 0 || (_sseSkipSEAvailabilityCheck)
    {
      _hasSSE = 1;
    }

    else
    {
      if (getMGAnswers_onceToken != -1)
      {
        init_cold_2();
      }

      _hasSSE = getMGAnswers_cachedHasSE;
      if ((getMGAnswers_cachedHasSE & 1) == 0)
      {
        _initialized = 1;
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          init_cold_3();
        }

        goto LABEL_33;
      }
    }

    v0 = *MEMORY[0x29EDBB118];
    v1 = IOServiceMatching("AppleSSE");
    MatchingService = IOServiceGetMatchingService(v0, v1);
    if (!MatchingService)
    {
      init_cold_9(v19);
      v17 = v19[0];
      goto LABEL_34;
    }

    v3 = MatchingService;
    v4 = IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, &_MergedGlobals_0);
    if (v4)
    {
      v17 = v4;
      init_cold_4(v4, v3);
      goto LABEL_34;
    }

    v5 = IONotificationPortCreate(v0);
    qword_2A197E220 = v5;
    if (!v5)
    {
      if (init_cold_5(v19))
      {
LABEL_17:
        if (getMGAnswers_onceToken != -1)
        {
          init_cold_7();
        }

        if (getMGAnswers_cachedIsInternal == 1)
        {
          if (isRestoreMode_onceToken != -1)
          {
            init_cold_8();
          }

          if ((isRestoreMode_restoreMode & 1) == 0)
          {
            _logFile = fopen("/var/mobile/Library/Logs/AppleSSE.log", "a");
            if (_logFile)
            {
              if (MEMORY[0x29C2B6230]() < 1)
              {
                chmod("/var/mobile/Library/Logs/AppleSSE.log", 0x1B6u);
              }

              else
              {
                fputs("\n", _logFile);
              }

              v19[1] = 0;
              *v20 = 0x4100000001;
              v18 = 16;
              v19[0] = 0;
              sysctl(v20, 2u, v19, &v18, 0, 0);
              logLine("AppleSSE Log Starts - System Version %s", v7, v8, v9, v10, v11, v12, v13, v19);
              logState(0, 0);
            }
          }
        }

        _initialized = 1;
        v14 = dispatch_get_global_queue(21, 0);
        dispatch_async(v14, &__block_literal_global);

        IOObjectRelease(v3);
        goto LABEL_29;
      }

      v5 = v19[0];
    }

    v6 = dispatch_get_global_queue(21, 0);
    IONotificationPortSetDispatchQueue(v5, v6);

    if (IOServiceAddInterestNotification(qword_2A197E220, v3, "IOGeneralInterest", serviceNotificationHandler, 0, &dword_2A197E21C))
    {
      init_cold_6();
    }

    goto LABEL_17;
  }

  if ((_hasSSE & 1) == 0)
  {
LABEL_33:
    v17 = -17;
LABEL_34:
    init_cold_10(v17, v19);
    result = LODWORD(v19[0]);
    goto LABEL_30;
  }

LABEL_29:
  result = 0;
LABEL_30:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t logCmdCall(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 || a3) && _logFile)
  {
    logLine("%s() -> %d", a2, a3, a4, a5, a6, a7, a8, result);

    return logState(a4, a5);
  }

  return result;
}

uint64_t getCertificatesFromBuffer(int *a1, unint64_t a2, void *a3, _DWORD *a4)
{
  v8 = [MEMORY[0x29EDB8DE8] array];
  if (!a1)
  {
    getCertificatesFromBuffer_cold_8();
LABEL_19:
    v16 = v18;
    goto LABEL_16;
  }

  if (!a2)
  {
    getCertificatesFromBuffer_cold_7();
    goto LABEL_19;
  }

  if (a1 > a2)
  {
    getCertificatesFromBuffer_cold_6();
    goto LABEL_19;
  }

  if (!a3)
  {
    getCertificatesFromBuffer_cold_5();
    goto LABEL_19;
  }

  if (!a4)
  {
    getCertificatesFromBuffer_cold_4();
    goto LABEL_19;
  }

  if (a1 >= a2)
  {
    goto LABEL_14;
  }

  if (a2 - a1 <= 3)
  {
    getCertificatesFromBuffer_cold_3();
    goto LABEL_19;
  }

  v9 = *a1;
  if (*a1)
  {
    v10 = 0;
    v11 = (a1 + 1);
    while (1)
    {
      if (a2 - v11 <= 3)
      {
        getCertificatesFromBuffer_cold_2();
        goto LABEL_19;
      }

      v14 = *v11;
      v12 = v11 + 1;
      v13 = v14;
      if ((a2 - v12) < v14)
      {
        break;
      }

      v15 = [MEMORY[0x29EDB8DA0] dataWithBytes:v12 length:v13];
      [v8 addObject:v15];

      v11 = (v12 + v13);
      v10 += v13 + 4;
      if (!--v9)
      {
        goto LABEL_15;
      }
    }

    getCertificatesFromBuffer_cold_1();
    goto LABEL_19;
  }

LABEL_14:
  v10 = 0;
LABEL_15:
  v16 = 0;
  *a3 = v8;
  *a4 = v10;
LABEL_16:

  return v16;
}

uint64_t SSEGetEntangledAuthorizationRandom(int a1, const __CFData *a2, char a3, CFDataRef *a4, CFDataRef *a5)
{
  v29 = *MEMORY[0x29EDCA608];
  v26 = a1;
  memset(inputStruct, 0, sizeof(inputStruct));
  v25 = 0;
  if (!a2)
  {
    SSEGetEntangledAuthorizationRandom_cold_13();
LABEL_21:
    v19 = v27;
    goto LABEL_16;
  }

  if (!a4)
  {
    SSEGetEntangledAuthorizationRandom_cold_12();
    goto LABEL_21;
  }

  if (!a5)
  {
    SSEGetEntangledAuthorizationRandom_cold_11();
    goto LABEL_21;
  }

  v10 = malloc_type_calloc(1uLL, 0x108uLL, 0x10000400BDB4DB4uLL);
  if (!v10)
  {
    SSEGetEntangledAuthorizationRandom_cold_10();
    goto LABEL_21;
  }

  v11 = v10;
  if (init())
  {
    SSEGetEntangledAuthorizationRandom_cold_1();
LABEL_29:
    v19 = v27;
    goto LABEL_15;
  }

  strcpy(inputStruct, "cESS");
  *&inputStruct[8] = a1;
  if (CFDataGetLength(a2) >= 0x19)
  {
    SSEGetEntangledAuthorizationRandom_cold_9();
    goto LABEL_29;
  }

  v30.length = CFDataGetLength(a2);
  v30.location = 0;
  CFDataGetBytes(a2, v30, (inputStruct | 0xC));
  inputStruct[36] = a3;
  v25 = 264;
  if (IOConnectCallStructMethod(_MergedGlobals_0, 0, inputStruct, 0x25uLL, v11, &v25))
  {
    SSEGetEntangledAuthorizationRandom_cold_2();
    goto LABEL_29;
  }

  v12 = v25;
  if (v25 <= 7)
  {
    SSEGetEntangledAuthorizationRandom_cold_8();
    goto LABEL_29;
  }

  if (v25 >= 0x109)
  {
    SSEGetEntangledAuthorizationRandom_cold_7();
    goto LABEL_29;
  }

  v13 = *v11;
  if (v25 - 8 < v13)
  {
    SSEGetEntangledAuthorizationRandom_cold_6();
    goto LABEL_29;
  }

  v14 = *MEMORY[0x29EDB8ED8];
  v15 = CFDataCreate(*MEMORY[0x29EDB8ED8], v11 + 8, v13);
  if (!v15)
  {
    SSEGetEntangledAuthorizationRandom_cold_5();
    goto LABEL_29;
  }

  v16 = v15;
  v17 = *(v11 + 1);
  if ((v12 - (*v11 + 8)) < v17)
  {
    SSEGetEntangledAuthorizationRandom_cold_4();
LABEL_32:
    v19 = v27;
    CFRelease(v16);
    goto LABEL_15;
  }

  v18 = CFDataCreate(v14, &v11[*v11 + 8], v17);
  if (!v18)
  {
    SSEGetEntangledAuthorizationRandom_cold_3();
    goto LABEL_32;
  }

  v19 = 0;
  *a4 = v16;
  *a5 = v18;
LABEL_15:
  free(v11);
LABEL_16:
  logCmdCall("SSEGetEntangledAuthorizationRandom", v19, 1, &v26, inputStruct | 0xC, v20, v21, v22);
  v23 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t SSEGetAttV2AuthKey(const __CFData *a1, const __CFData *a2, CFDataRef *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v18 = 0;
  v17 = 0u;
  v16 = 0u;
  v13 = 0;
  if (!a1)
  {
    SSEGetAttV2AuthKey_cold_11();
LABEL_19:
    v10 = v14;
    goto LABEL_14;
  }

  if (!a2)
  {
    SSEGetAttV2AuthKey_cold_10();
    goto LABEL_19;
  }

  if (!a3)
  {
    SSEGetAttV2AuthKey_cold_9();
    goto LABEL_19;
  }

  v6 = malloc_type_calloc(1uLL, 0x4000uLL, 0x1000040B13BED9EuLL);
  if (!v6)
  {
    SSEGetAttV2AuthKey_cold_8();
    goto LABEL_19;
  }

  v7 = v6;
  if (init())
  {
    SSEGetAttV2AuthKey_cold_1();
LABEL_27:
    v10 = v14;
    goto LABEL_13;
  }

  strcpy(inputStruct, "cESS#");
  if (CFDataGetLength(a1) >= 0x19)
  {
    SSEGetAttV2AuthKey_cold_7();
    goto LABEL_27;
  }

  v20.length = CFDataGetLength(a1);
  v20.location = 0;
  CFDataGetBytes(a1, v20, &v16 + 2);
  if (CFDataGetLength(a2) >= 9)
  {
    SSEGetAttV2AuthKey_cold_6();
    goto LABEL_27;
  }

  v21.length = CFDataGetLength(a2);
  v21.location = 0;
  CFDataGetBytes(a2, v21, &v17 + 10);
  v13 = 0x4000;
  if (IOConnectCallStructMethod(_MergedGlobals_0, 0, inputStruct, 0x28uLL, v7, &v13))
  {
    SSEGetAttV2AuthKey_cold_2();
    goto LABEL_27;
  }

  if (v13 <= 3)
  {
    SSEGetAttV2AuthKey_cold_5();
    goto LABEL_27;
  }

  v8 = *v7;
  if (v13 - 4 != v8)
  {
    SSEGetAttV2AuthKey_cold_3();
    goto LABEL_27;
  }

  v9 = CFDataCreate(*MEMORY[0x29EDB8ED8], v7 + 4, v8);
  if (!v9)
  {
    SSEGetAttV2AuthKey_cold_4();
    goto LABEL_27;
  }

  v10 = 0;
  *a3 = v9;
LABEL_13:
  free(v7);
LABEL_14:
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t SSESetSEPubKey(const __CFData *a1, const __CFData *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  *buffer = 0;
  v16 = 0;
  v18 = 0;
  v17 = 0;
  if (!a1)
  {
    SSESetSEPubKey_cold_8();
LABEL_21:
    v11 = v14;
    goto LABEL_16;
  }

  if (!a2)
  {
    SSESetSEPubKey_cold_7();
    goto LABEL_21;
  }

  v4 = malloc_type_calloc(1uLL, 0x4000uLL, 0x1000040B13BED9EuLL);
  if (!v4)
  {
    SSESetSEPubKey_cold_6();
    goto LABEL_21;
  }

  v5 = v4;
  if (init())
  {
    SSESetSEPubKey_cold_1();
  }

  else
  {
    Length = CFDataGetLength(a1);
    if (Length >= 0x19)
    {
      SSESetSEPubKey_cold_5();
    }

    else
    {
      v20.length = Length;
      v20.location = 0;
      CFDataGetBytes(a1, v20, buffer);
      if (CFDataGetLength(a2) < 0x100000000)
      {
        v18 = CFDataGetLength(a2);
        v7 = [MEMORY[0x29EDB8DF8] dataWithBytes:buffer length:28];
        [v7 appendData:a2];
        if ([v7 length] >> 32)
        {
          SSESetSEPubKey_cold_3(v7);
          v11 = 4294967292;
        }

        else
        {
          LODWORD(v8) = 0;
          while (1)
          {
            strcpy(v5, "cESS%");
            v9 = ([v7 length] - v8) >> 2 > 0xFFA ? 16364 : objc_msgSend(v7, "length") - v8;
            *(v5 + 2) = [v7 length];
            *(v5 + 3) = v8;
            *(v5 + 4) = v9;
            [v7 bytes];
            __memcpy_chk();
            v10 = IOConnectCallStructMethod(_MergedGlobals_0, 0, v5, v9 + 20, 0, 0);
            if (v10)
            {
              break;
            }

            v8 = v9 + v8;
            if ([v7 length] <= v8)
            {

              v11 = 0;
              goto LABEL_15;
            }
          }

          v11 = v10;
          SSESetSEPubKey_cold_2(v10, v7);
        }

        goto LABEL_15;
      }

      SSESetSEPubKey_cold_4();
    }
  }

  v11 = v14;
LABEL_15:
  free(v5);
LABEL_16:
  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t SSEPerformAuthKeySharing(const __CFData *a1, const __CFData *a2, const __CFData *a3, CFDataRef *a4, CFDataRef *a5)
{
  v28 = 0;
  if (!a1)
  {
    SSEPerformAuthKeySharing_cold_18();
    return v29;
  }

  if (!a2)
  {
    SSEPerformAuthKeySharing_cold_17();
    return v29;
  }

  if (!a3)
  {
    SSEPerformAuthKeySharing_cold_16();
    return v29;
  }

  if (!a4)
  {
    SSEPerformAuthKeySharing_cold_15();
    return v29;
  }

  if (!a5)
  {
    SSEPerformAuthKeySharing_cold_14();
    return v29;
  }

  v10 = malloc_type_calloc(1uLL, 0x4000uLL, 0x1000040B13BED9EuLL);
  if (!v10)
  {
    SSEPerformAuthKeySharing_cold_13();
    return v29;
  }

  v11 = v10;
  v12 = malloc_type_calloc(1uLL, 0x4000uLL, 0x1000040B13BED9EuLL);
  if (!v12)
  {
    SSEPerformAuthKeySharing_cold_12(v11);
    return 4294967291;
  }

  v13 = v12;
  if (init())
  {
    SSEPerformAuthKeySharing_cold_1();
LABEL_39:
    v26 = v29;
    goto LABEL_20;
  }

  strcpy(v11, "cESS$");
  if (CFDataGetLength(a1) >= 0x19)
  {
    SSEPerformAuthKeySharing_cold_11();
    goto LABEL_39;
  }

  v30.length = CFDataGetLength(a1);
  v30.location = 0;
  CFDataGetBytes(a1, v30, v11 + 8);
  Length = CFDataGetLength(a2);
  if (Length >= 0x3FD9)
  {
    SSEPerformAuthKeySharing_cold_10();
    goto LABEL_39;
  }

  v15 = Length;
  *(v11 + 8) = Length;
  v31.location = 0;
  v31.length = Length;
  CFDataGetBytes(a2, v31, v11 + 40);
  v16 = &v11[v15 + 40];
  v17 = CFDataGetLength(a3);
  if (16344 - v15 < v17)
  {
    SSEPerformAuthKeySharing_cold_9();
    goto LABEL_39;
  }

  v18 = v17;
  *(v11 + 9) = v17;
  v32.location = 0;
  v32.length = v17;
  CFDataGetBytes(a3, v32, v16);
  v28 = 0x4000;
  if (IOConnectCallStructMethod(_MergedGlobals_0, 0, v11, &v16[v18] - v11, v13, &v28))
  {
    SSEPerformAuthKeySharing_cold_2();
    goto LABEL_39;
  }

  v19 = v28;
  if (v28 <= 7)
  {
    SSEPerformAuthKeySharing_cold_8();
    goto LABEL_39;
  }

  if (v28 > 0x4000)
  {
    SSEPerformAuthKeySharing_cold_7();
    goto LABEL_39;
  }

  v20 = *v13;
  if (v28 - 8 < v20)
  {
    SSEPerformAuthKeySharing_cold_6();
    goto LABEL_39;
  }

  v21 = *MEMORY[0x29EDB8ED8];
  v22 = CFDataCreate(*MEMORY[0x29EDB8ED8], v13 + 8, v20);
  if (!v22)
  {
    SSEPerformAuthKeySharing_cold_5();
    goto LABEL_39;
  }

  v23 = v22;
  v24 = *(v13 + 1);
  if ((v19 - (*v13 + 8)) < v24)
  {
    SSEPerformAuthKeySharing_cold_4();
LABEL_42:
    v26 = v29;
    CFRelease(v23);
    goto LABEL_20;
  }

  v25 = CFDataCreate(v21, &v13[*v13 + 8], v24);
  if (!v25)
  {
    SSEPerformAuthKeySharing_cold_3();
    goto LABEL_42;
  }

  v26 = 0;
  *a4 = v23;
  *a5 = v25;
LABEL_20:
  free(v11);
  free(v13);
  return v26;
}

void serviceNotificationHandler(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == -469794813)
  {
    v5 = _authKeyRevocationNtfQueue;
    v6 = v5;
    if (!v5)
    {
      v6 = dispatch_get_global_queue(21, 0);
    }

    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __serviceNotificationHandler_block_invoke_3;
    v9[3] = &__block_descriptor_40_e5_v8__0l;
    v9[4] = a4;
    v7 = v9;
    goto LABEL_13;
  }

  if (a3 == -469794814)
  {
    if ((_sseDoNotIssueNewBAACertificate & 1) == 0)
    {
      v8 = dispatch_get_global_queue(21, 0);
      dispatch_async(v8, &__block_literal_global_176);
    }

    goto LABEL_9;
  }

  if (a3 != -469794815)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_15;
  }

  v5 = _effacemenNtfQueue;
  v6 = v5;
  if (!v5)
  {
    v6 = dispatch_get_global_queue(21, 0);
  }

  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __serviceNotificationHandler_block_invoke;
  v10[3] = &__block_descriptor_40_e5_v8__0l;
  v10[4] = a4;
  v7 = v10;
LABEL_13:
  dispatch_async(v6, v7);
  if (!v5)
  {
  }

LABEL_15:
}

void *__init_block_invoke()
{
  if (baaInit_onceToken != -1)
  {
    __init_block_invoke_cold_1();
  }

  result = _baaSupportClass;
  if (_baaSupportClass)
  {

    return [result prepareLazily];
  }

  return result;
}

const char *__isRestoreMode_block_invoke()
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 1024;
  result = sysctlbyname("kern.bootargs", __str, &v3, 0, 0);
  if (!result)
  {
    __lasts = 0;
    result = strtok_r(__str, " \t", &__lasts);
    if (result)
    {
      while (1)
      {
        result = strcmp(result, "rd=md0");
        if (!result)
        {
          break;
        }

        result = strtok_r(0, " \t", &__lasts);
        if (!result)
        {
          goto LABEL_2;
        }
      }

      isRestoreMode_restoreMode = 1;
    }
  }

LABEL_2:
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getMGAnswers_block_invoke()
{
  result = dlopen("/usr/lib/libMobileGestalt.dylib", 1);
  if (result)
  {
    v1 = result;
    v2 = dlsym(result, "MGGetBoolAnswer");
    if (v2)
    {
      v3 = v2;
      getMGAnswers_cachedHasSE = v2(@"0dnM19zBqLw5ZPhIo4GEkg");
      getMGAnswers_cachedIsInternal = v3(@"InternalBuild");
    }

    return dlclose(v1);
  }

  return result;
}

uint64_t __serviceNotificationHandler_block_invoke(uint64_t a1)
{
  result = _effacemenNtfHandler;
  if (_effacemenNtfHandler)
  {
    v3 = *(a1 + 32);
    return (*(_effacemenNtfHandler + 16))();
  }

  return result;
}

void *__serviceNotificationHandler_block_invoke_2()
{
  if (baaInit_onceToken != -1)
  {
    __init_block_invoke_cold_1();
  }

  result = _baaSupportClass;
  if (_baaSupportClass)
  {

    return [result issueNewCertificate];
  }

  return result;
}

uint64_t __serviceNotificationHandler_block_invoke_3(uint64_t a1)
{
  result = _authKeyRevocationNtfHandler;
  if (_authKeyRevocationNtfHandler)
  {
    v3 = *(a1 + 32);
    return (*(_authKeyRevocationNtfHandler + 16))();
  }

  return result;
}

const char *logLine(const char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v17 = *MEMORY[0x29EDCA608];
  if (_logFile)
  {
    v9 = result;
    *v15 = 0u;
    v16 = 0u;
    v14 = time(0);
    v10 = localtime(&v14);
    strftime(v15, 0x20uLL, "%F %T (%z)", v10);
    v11 = _logFile;
    v12 = getprogname();
    fprintf(v11, "%s [%s]: ", v15, v12);
    vfprintf(_logFile, v9, &a9);
    fputs("\n", _logFile);
    result = fflush(_logFile);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t logState(uint64_t result, uint64_t a2)
{
  if (_logFile)
  {
    v3 = result;
    inputStruct = 0x953534563;
    v7 = 0u;
    v8 = 0u;
    outputStruct = 0u;
    outputStructCnt = 48;
    result = IOConnectCallStructMethod(_MergedGlobals_0, 0, &inputStruct, 8uLL, &outputStruct, &outputStructCnt);
    if (!result)
    {
      if (v3)
      {
        fprintf(_logFile, "\tuserID        = %u\n", *v3);
      }

      if (a2)
      {
        fwrite("\tseid          = ", 0x11uLL, 1uLL, _logFile);
        for (i = 0; i != 24; ++i)
        {
          fprintf(_logFile, "%02x", *(a2 + i));
        }

        fputs("\n", _logFile);
      }

      fprintf(_logFile, "\tsseKey hash   = %016llx\n", outputStruct);
      fprintf(_logFile, "\tauthRand hash = %016llx\n", *(&outputStruct + 1));
      fprintf(_logFile, "\tsubcounter    = %llu\n", v7);
      fprintf(_logFile, "\tentropy hash  = %016llx\n", *(&v7 + 1));
      fprintf(_logFile, "\tkeybag hash   = %016llx\n", v8);
      fprintf(_logFile, "\tnoPasscodeCnt = %u\n", DWORD2(v8));
      return fflush(_logFile);
    }
  }

  return result;
}

void __baaInit_block_invoke()
{
  if (isRestoreMode_onceToken != -1)
  {
    init_cold_1();
  }

  if ((isRestoreMode_restoreMode & 1) == 0)
  {
    init();
    if (_hasSSE == 1)
    {
      if (isEntitledForBAA_onceToken != -1)
      {
        __baaInit_block_invoke_cold_2();
      }

      if (isEntitledForBAA_entitled == 1)
      {
        if (dlopen("/usr/lib/libAppleSSEExt.dylib", 1))
        {
          Class = objc_getClass("BAASupport");
          _baaSupportClass = Class;
          if (!Class)
          {
            __baaInit_block_invoke_cold_3(&v1);
            Class = v1;
          }

          [(objc_class *)Class setDelegate:objc_opt_class()];
        }

        else
        {
          __baaInit_block_invoke_cold_4();
        }
      }
    }
  }
}

void __isEntitledForBAA_block_invoke()
{
  v14 = *MEMORY[0x29EDCA608];
  v0 = [MEMORY[0x29EDBA0B0] processInfo];
  v1 = [v0 processName];
  v2 = [v1 isEqualToString:@"nfcd"];

  if (v2)
  {
    isEntitledForBAA_entitled = 1;
  }

  else
  {
    v3 = dlopen("/System/Library/Frameworks/Security.framework/Security", 1);
    if (v3)
    {
      v4 = v3;
      v5 = dlsym(v3, "SecTaskCreateFromSelf");
      if (v5)
      {
        v6 = v5(*MEMORY[0x29EDB8ED8]);
        if (v6)
        {
          v7 = v6;
          v8 = dlsym(v4, "SecTaskCopyValueForEntitlement");
          if (v8)
          {
            v9 = v8;
            v10 = v8(v7, @"com.apple.private.applesse.allow", 0);
            v11 = v9(v7, @"com.apple.private.applesse.baa", 0);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v10 BOOLValue])
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if ([v11 BOOLValue])
                  {
                    isEntitledForBAA_entitled = 1;
                  }
                }
              }
            }
          }

          CFRelease(v7);
        }
      }

      dlclose(v4);
    }
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = isEntitledForBAA_entitled;
    _os_log_impl(&dword_299EC0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "isEntitledForBAA(): entitled = %u", v13, 8u);
  }

  v12 = *MEMORY[0x29EDCA608];
}

void OUTLINED_FUNCTION_19(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

void SSEIsFeatureSupported_cold_1(_DWORD *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v4, v5, v6, v7, v8);
  }

  *a1 = -17;
  v2 = *MEMORY[0x29EDCA608];
}

void SSEIsFeatureSupported_cold_2()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEIsFeatureSupported_cold_3()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEIsFeatureSupported_cold_4()
{
  v7 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x29EDCA608];
}

void SSEGetVersion_cold_1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetVersion_cold_2()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetVersion_cold_3()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetVersion_cold_4()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void getDeviceFeatures_cold_1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

void getDeviceFeatures_cold_2()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

void getDeviceFeatures_cold_3()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

void getDeviceFeatures_cold_4()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void getDeviceFeatures_cold_5()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void init_cold_3()
{
  v7 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x29EDCA608];
}

uint64_t init_cold_4(uint64_t a1, io_object_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v6, v7, v8, v9, v10);
  }

  result = IOObjectRelease(a2);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL init_cold_5(void *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v6, v7, v8, v9, v10);
  }

  v2 = qword_2A197E220;
  *a1 = qword_2A197E220;
  result = v2 == 0;
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void init_cold_6()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  v0 = *MEMORY[0x29EDCA608];
}

void init_cold_9(_DWORD *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v4, v5, v6, v7, v8);
  }

  *a1 = -20;
  v2 = *MEMORY[0x29EDCA608];
}

uint64_t init_cold_10(int a1, _DWORD *a2)
{
  if (dword_2A197E21C)
  {
    IOObjectRelease(dword_2A197E21C);
    dword_2A197E21C = 0;
  }

  if (qword_2A197E220)
  {
    IONotificationPortDestroy(qword_2A197E220);
    qword_2A197E220 = 0;
  }

  result = _MergedGlobals_0;
  if (_MergedGlobals_0)
  {
    result = IOServiceClose(_MergedGlobals_0);
    _MergedGlobals_0 = 0;
  }

  *a2 = a1;
  return result;
}

void getCertificatesFromBuffer_cold_1()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void getCertificatesFromBuffer_cold_2()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void getCertificatesFromBuffer_cold_3()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void getCertificatesFromBuffer_cold_4()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void getCertificatesFromBuffer_cold_5()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void getCertificatesFromBuffer_cold_6()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void getCertificatesFromBuffer_cold_7()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void getCertificatesFromBuffer_cold_8()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetEntangledAuthorizationRandom_cold_1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetEntangledAuthorizationRandom_cold_2()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetEntangledAuthorizationRandom_cold_3()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_12();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetEntangledAuthorizationRandom_cold_4()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetEntangledAuthorizationRandom_cold_5()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_12();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetEntangledAuthorizationRandom_cold_6()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetEntangledAuthorizationRandom_cold_7()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetEntangledAuthorizationRandom_cold_8()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetEntangledAuthorizationRandom_cold_9()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetEntangledAuthorizationRandom_cold_10()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_12();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetEntangledAuthorizationRandom_cold_11()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetEntangledAuthorizationRandom_cold_12()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetEntangledAuthorizationRandom_cold_13()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetAttV2AuthKey_cold_1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetAttV2AuthKey_cold_2()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetAttV2AuthKey_cold_3()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetAttV2AuthKey_cold_4()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_12();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetAttV2AuthKey_cold_5()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetAttV2AuthKey_cold_6()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetAttV2AuthKey_cold_7()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetAttV2AuthKey_cold_8()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_12();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetAttV2AuthKey_cold_9()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetAttV2AuthKey_cold_10()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEGetAttV2AuthKey_cold_11()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSESetSEPubKey_cold_1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

void SSESetSEPubKey_cold_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v4, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v5, v6, v7, v8, 2u);
  }

  v3 = *MEMORY[0x29EDCA608];
}

void SSESetSEPubKey_cold_3(void *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v4, v5, v6, v7, v8);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void SSESetSEPubKey_cold_4()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSESetSEPubKey_cold_5()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSESetSEPubKey_cold_6()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_12();
  v0 = *MEMORY[0x29EDCA608];
}

void SSESetSEPubKey_cold_7()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSESetSEPubKey_cold_8()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_2()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_21();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_3()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_12();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_4()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_5()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_12();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_6()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_7()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_8()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_9()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_10()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_11()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_12(void *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v4, v5, v6, v7, v8);
  }

  free(a1);
  v2 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_13()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_12();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_14()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_15()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_16()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_17()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void SSEPerformAuthKeySharing_cold_18()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x29EDCA608];
}

void __baaInit_block_invoke_cold_3(void *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v4, v5, v6, v7, v8);
  }

  *a1 = _baaSupportClass;
  v2 = *MEMORY[0x29EDCA608];
}

void __baaInit_block_invoke_cold_4()
{
  v7 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19(&dword_299EC0000, MEMORY[0x29EDCA988], v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v2, v3, v4, v5, v6);
  }

  v0 = *MEMORY[0x29EDCA608];
}

void SLAM::ScriptResult::~ScriptResult(SLAM::ScriptResult *this)
{
  if (*(this + 64) == 1)
  {
    v3 = (this + 40);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (*(this + 32) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      *(this + 2) = v2;
      operator delete(v2);
    }
  }
}

uint64_t SLAM::ScriptResult::Failure@<X0>(std::string **this@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 2;
  a2[8] = 0;
  a2[32] = 0;
  a2[40] = 0;
  a2[64] = 0;
  return std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error const&,void>((a2 + 40), this);
}

SLAM::Error *SLAM::Error::Error(SLAM::Error *this, const char *a2, ...)
{
  va_start(va, a2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  va_copy(v21, va);
  v22.__first_ = 0;
  vasprintf(&v22, a2, va);
  if (v22.__first_)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, v22.__first_);
    free(v22.__first_);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "<FAILED TO VASPRINTF>");
  }

  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *this) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *this) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v22.__end_cap_.__value_ = this;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v9);
    }

    v10 = 24 * v6;
    v11 = *__p;
    *(v10 + 16) = v20;
    *v10 = v11;
    __p[1] = 0;
    v20 = 0;
    __p[0] = 0;
    v12 = 24 * v6 + 24;
    v13 = *(this + 1) - *this;
    v14 = 24 * v6 - v13;
    memcpy((v10 - v13), *this, v13);
    v15 = *this;
    *this = v14;
    *(this + 1) = v12;
    v16 = *(this + 2);
    *(this + 2) = 0;
    v22.__end_ = v15;
    v22.__end_cap_.__value_ = v16;
    v22.__first_ = v15;
    v22.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v22);
    v17 = SHIBYTE(v20);
    *(this + 1) = v12;
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = *__p;
    *(v4 + 16) = v20;
    *v4 = v5;
    *(this + 1) = v4 + 24;
  }

  return this;
}

void sub_299EC91B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void SLAM::SLAM::PerformScript(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a1, *(a1 + 8));
  }

  else
  {
    v9 = *a1;
  }

  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *a3;
  v8 = a3[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  SLAM::SLAM::PerformScriptWithResult();
}

void SLAM::SLAMPrivateInterface::PerformRecovery(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[1];
  v8 = *a1;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[1];
  v7 = *a2;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v6 = *a3;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  SLAM::SLAMPrivateInterface::PerformRecoveryWithResult();
}

void sub_299EC9D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  SLAM::ScriptResult::~ScriptResult(va);
  _Unwind_Resume(a1);
}

SLAM::Error *SLAM::Error::Add(SLAM::Error *this, const char *a2, ...)
{
  va_start(va, a2);
  va_copy(v21, va);
  v22.__first_ = 0;
  vasprintf(&v22, a2, va);
  if (v22.__first_)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, v22.__first_);
    free(v22.__first_);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "<FAILED TO VASPRINTF>");
  }

  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *this) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *this) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v22.__end_cap_.__value_ = this;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v9);
    }

    v10 = 24 * v6;
    v11 = *__p;
    *(v10 + 16) = v20;
    *v10 = v11;
    __p[1] = 0;
    v20 = 0;
    __p[0] = 0;
    v12 = 24 * v6 + 24;
    v13 = *(this + 1) - *this;
    v14 = 24 * v6 - v13;
    memcpy((v10 - v13), *this, v13);
    v15 = *this;
    *this = v14;
    *(this + 1) = v12;
    v16 = *(this + 2);
    *(this + 2) = 0;
    v22.__end_ = v15;
    v22.__end_cap_.__value_ = v16;
    v22.__first_ = v15;
    v22.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v22);
    v17 = SHIBYTE(v20);
    *(this + 1) = v12;
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = *__p;
    *(v4 + 16) = v20;
    *v4 = v5;
    *(this + 1) = v4 + 24;
  }

  return this;
}

void sub_299EC9F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SLAM::Impl::PerformScriptWithResult(uint64_t a1@<X0>, const char *a2@<X1>, _BYTE *a3@<X8>)
{
  v35 = *MEMORY[0x29EDCA608];
  SLAM::Impl::GetChipId(a1, v28);
  if ((v29 & 1) == 0)
  {
    SLAM::ScriptResult::Failure(v28, a3);
    goto LABEL_42;
  }

  v6 = *caulk::expected<unsigned char,SLAM::Error>::value(v28);
  v7 = 1;
  if (v6 > 0xC7)
  {
    if (v6 == 200 || v6 == 210)
    {
      goto LABEL_10;
    }
  }

  else if (v6 == 100 || v6 == 115)
  {
    goto LABEL_10;
  }

  v7 = 2;
LABEL_10:
  SLAM::Impl::QueryMigrationInfo(a1, v33);
  if (v34)
  {
    v8 = caulk::expected<SLAM::MigrationInfo,SLAM::Error>::value(v33);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v25, *(v8 + 16), *(v8 + 24), *(v8 + 24) - *(v8 + 16));
    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a2[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 1));
    }

    else
    {
      v24 = *a2;
    }

    __p = 0;
    v22 = 0;
    v23 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v25, v26, v26 - v25);
    (**v10)(&v30, v10, &v24, &__p, v7);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v32)
    {
      v12 = *(a1 + 64);
      v11 = *(a1 + 72);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      v13 = caulk::expected<SLAM::Script,SLAM::Error>::value(&v30);
      SLAM::Logger::Log(v12, 1, "PerformScriptWithResult", 314, "Executing script %s ID 0x%llX", a2, *v13);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v14 = caulk::expected<SLAM::Script,SLAM::Error>::value(&v30);
      v15 = caulk::expected<SLAM::MigrationInfo,SLAM::Error>::value(v33);
      SLAM::Impl::PerformScriptWithResult(a1, v14, v15, a3);
    }

    else
    {
      memset(v20, 0, sizeof(v20));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v20, v30, v31, 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3));
      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      ctu::hex();
      if (v19 >= 0)
      {
        v16 = v18;
      }

      else
      {
        v16 = v18[0];
      }

      SLAM::Error::Add(v20, "with name %s, pkHash %s, platformCategory %d", a2, v16, v7);
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      SLAM::ScriptResult::Failure(v20, a3);
      v18[0] = v20;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v18);
    }

    caulk::__expected_detail::base<SLAM::Script,SLAM::Error>::~base(&v30);
    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }
  }

  else
  {
    SLAM::ScriptResult::Failure(v33, a3);
  }

  caulk::__expected_detail::base<SLAM::MigrationInfo,SLAM::Error>::~base(v33);
LABEL_42:
  if ((v29 & 1) == 0)
  {
    v30 = v28;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v30);
  }

  v17 = *MEMORY[0x29EDCA608];
}

void sub_299ECA250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37, char *a38)
{
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  caulk::__expected_detail::base<SLAM::MigrationInfo,SLAM::Error>::~base(v39 - 128);
  if ((a37 & 1) == 0)
  {
    a38 = &a34;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a38);
  }

  _Unwind_Resume(a1);
}

void sub_299ECA64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v30 - 144);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&a19);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  SLAM::ScriptResult::~ScriptResult(v28);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

uint64_t SLAM::Impl::PerformRecoveryWithResult@<X0>(void (***this)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v64 = *MEMORY[0x29EDCA608];
  SLAM::Impl::QueryMigrationInfo(this, &v61);
  v54 = 0;
  LOBYTE(v55) = 0;
  v57 = 0;
  LOBYTE(v58.__begin_) = 0;
  v59 = 0;
  if (v63)
  {
    v20 = 0;
    std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100](&v21, &v55);
    std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100](&v24, &v58);
    LOBYTE(v27) = 0;
    LOBYTE(v28) = 0;
    v30 = 0;
    if (v23 == 1)
    {
      v28 = v21;
      v29 = v22;
      v22 = 0;
      v21 = 0uLL;
      v30 = 1;
    }

    LOBYTE(v31) = 0;
    v33 = 0;
    if (v26 == 1)
    {
      v31 = v24;
      v32 = v25;
      v25 = 0;
      v24 = 0uLL;
      v33 = 1;
    }

    LOBYTE(v13) = v54;
    std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100](v14, &v55);
    std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100](&v17, &v58);
    v34 = v13;
    LOBYTE(v35) = 0;
    v37 = 0;
    if (v16 == 1)
    {
      v35 = *v14;
      v36 = v15;
      v14[1] = 0;
      v15 = 0;
      v14[0] = 0;
      v37 = 1;
    }

    LOBYTE(v38) = 0;
    v40 = 0;
    if (v19 == 1)
    {
      v38 = v17;
      v39 = v18;
      v18 = 0;
      v17 = 0uLL;
      v40 = 1;
    }

    LOBYTE(v6) = v54;
    std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100](v7, &v55);
    std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100](&v10, &v58);
    v41 = v6;
    LOBYTE(v42) = 0;
    v44 = 0;
    if (v9 == 1)
    {
      v42 = *v7;
      v43 = v8;
      v7[1] = 0;
      v8 = 0;
      v7[0] = 0;
      v44 = 1;
    }

    LOBYTE(v45) = 0;
    v47 = 0;
    if (v12 == 1)
    {
      v45 = v10;
      v46 = v11;
      v11 = 0;
      v10 = 0uLL;
      v47 = 1;
    }

    v48 = this;
    v49 = this;
    if (v62 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v60 = &v27;
    (off_2A2026A78[v62])(&v50, &v60, &v61);
    v54 = v50;
    std::__optional_storage_base<std::vector<SLAM::ExecutionMessage>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<SLAM::ExecutionMessage>,false>>(&v55, &__p);
    std::__optional_storage_base<SLAM::Error,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<SLAM::Error,false>>(&v58, v53);
    if (v53[24] == 1)
    {
      v60 = v53;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v60);
    }

    if (v52 == 1 && __p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    if (v47 == 1)
    {
      v60 = &v45;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v60);
    }

    if (v44 == 1 && v42)
    {
      *(&v42 + 1) = v42;
      operator delete(v42);
    }

    if (v40 == 1)
    {
      v60 = &v38;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v60);
    }

    if (v37 == 1 && v35)
    {
      *(&v35 + 1) = v35;
      operator delete(v35);
    }

    if (v33 == 1)
    {
      v60 = &v31;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v60);
    }

    if (v30 == 1 && v28)
    {
      *(&v28 + 1) = v28;
      operator delete(v28);
    }

    if (v12 == 1)
    {
      v60 = &v10;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v60);
    }

    if (v9 == 1 && v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }

    if (v19 == 1)
    {
      v6 = &v17;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
    }

    if (v16 == 1 && v14[0])
    {
      v14[1] = v14[0];
      operator delete(v14[0]);
    }

    if (v26 == 1)
    {
      v13 = &v24;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
    }

    if (v23 == 1 && v21)
    {
      *(&v21 + 1) = v21;
      operator delete(v21);
    }

    *a2 = v54;
    *(a2 + 8) = 0;
    *(a2 + 32) = 0;
    if (v57 == 1)
    {
      *(a2 + 8) = v55;
      *(a2 + 24) = v56;
      v56 = 0;
      v55 = 0uLL;
      *(a2 + 32) = 1;
    }

    *(a2 + 40) = 0;
    *(a2 + 64) = 0;
    if (v59 == 1)
    {
      *(a2 + 40) = v58;
      memset(&v58, 0, sizeof(v58));
      *(a2 + 64) = 1;
      v27 = &v58;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
    }
  }

  else
  {
    SLAM::ScriptResult::Failure(&v61, a2);
  }

  if (v57 == 1 && v55)
  {
    *(&v55 + 1) = v55;
    operator delete(v55);
  }

  result = caulk::__expected_detail::base<SLAM::MigrationInfo,SLAM::Error>::~base(&v61);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299ECACD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SLAM::Impl::GetChipId@<X0>(void (***this)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  SLAM::SelectISDCommand::SelectISDCommand(__p);
  SLAM::TransceiverWrapper::TransceiveAndCheckSW(this + 1, v20);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v20[24])
  {
    LODWORD(v11) = 2141178496;
    BYTE4(v11) = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v14, &v11, &v11 + 5, 5);
    SLAM::TransceiverWrapper::TransceiveAndCheckSW(this + 1, __p);
    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    if (v19)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v13[0] = *caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(__p);
      v4 = caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(__p);
      v13[1] = v4[1] - *v4;
      v5 = DERDecodeItem(v13, &v14);
      if (v5)
      {
        SLAM::Error::Unexpected("Failed to decode CPLC data top level tag %d", &v11, v5);
LABEL_20:
        *a2 = v11;
        *(a2 + 16) = v12;
        v12 = 0;
        v11 = 0uLL;
        *(a2 + 24) = 0;
        v21 = &v11;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
        goto LABEL_21;
      }

      if (v14 != 0x800000000000007FLL)
      {
        SLAM::Error::Unexpected("Unexpected CPLC data top level tag %llu", &v11, v14);
        goto LABEL_20;
      }

      if (v16 <= 3)
      {
        SLAM::Error::Unexpected("Unexpected length for CPLC data %zu", &v11, v16);
        goto LABEL_20;
      }

      v9 = v15[3];
    }

    else
    {
      v7 = this[8];
      v8 = this[9];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SLAM::Logger::Log(v7, 1, "GetChipId", 670, "Failed to read CPLC data; defaulting to SN210V");
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v9 = -46;
    }

    *a2 = v9;
    *(a2 + 24) = 1;
LABEL_21:
    caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(__p);
    return caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v20);
  }

  v6 = SLAM::Error::Add(v20, "Failed to select ISD");
  SLAM::Error::Unexpected(v6, __p);
  *a2 = *__p;
  *(a2 + 16) = v18;
  __p[1] = 0;
  v18 = 0;
  __p[0] = 0;
  *(a2 + 24) = 0;
  v14 = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  return caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v20);
}

void sub_299ECB008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(&a19);
  caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v19 - 56);
  _Unwind_Resume(a1);
}

void sub_299ECB06C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x299ECB064);
}

uint64_t caulk::expected<unsigned char,SLAM::Error>::value(uint64_t result)
{
  v1 = result;
  if ((*(result + 24) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    memset(v3, 0, 24);
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v3, *v1, v1[1], 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 3));
    caulk::bad_expected_access<SLAM::Error>::bad_expected_access(exception, v3);
  }

  return result;
}

void sub_299ECB128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t SLAM::Impl::QueryMigrationInfo@<X0>(void (***this)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v77 = *MEMORY[0x29EDCA608];
  SLAM::SelectISDCommand::SelectISDCommand(__p);
  SLAM::TransceiverWrapper::TransceiveAndCheckSW(this + 1, v70);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v71)
  {
    caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v70);
    LODWORD(v75[0]) = 240256;
    BYTE4(v75[0]) = 0;
    __p[1] = 0;
    v68 = 0;
    __p[0] = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, v75, v75 + 5, 5);
    SLAM::TransceiverWrapper::TransceiveAndCheckSW(this + 1, v70);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v71)
    {
      v4 = caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(v70);
      v75[0] = 0xC000000000000000;
      SLAM::DERParseSequenceToMap(v4, v75, 1, __p);
      if ((v69 & 1) == 0)
      {
        v33 = SLAM::Error::Add(__p, "While parsing migration state");
        memset(v75, 0, sizeof(v75));
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v75, *v33, v33[1], 0xAAAAAAAAAAAAAAABLL * ((v33[1] - *v33) >> 3));
        SLAM::Error::Unexpected(v75, v64);
        *a2 = *v64;
        *(a2 + 16) = v65;
        v64[1] = 0;
        v65 = 0;
        v64[0] = 0;
        *(a2 + 48) = 0;
        *&v73 = v64;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v73);
        v64[0] = v75;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v64);
LABEL_50:
        caulk::__expected_detail::base<std::map<unsigned long long,DERItem>,SLAM::Error>::~base(__p);
        goto LABEL_51;
      }

      *&v73 = 0x53DF02FE00CA80;
      v64[1] = 0;
      v65 = 0;
      v64[0] = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v64, &v73, &v73 + 8, 8);
      SLAM::TransceiverWrapper::TransceiveAndCheckSW(this + 1, v75);
      if (v64[0])
      {
        v64[1] = v64[0];
        operator delete(v64[0]);
      }

      if ((v76 & 1) == 0)
      {
        v34 = SLAM::Error::Add(v75, "While querying SLAM state");
        SLAM::Error::Unexpected(v34, v64);
        *a2 = *v64;
        *(a2 + 16) = v65;
        v64[1] = 0;
        v65 = 0;
        v64[0] = 0;
        *(a2 + 48) = 0;
        *&v73 = v64;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v73);
LABEL_49:
        caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v75);
        goto LABEL_50;
      }

      v5 = caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(v75);
      v73 = xmmword_299F28980;
      SLAM::DERParseSequenceToMap(v5, &v73, 2, v64);
      if (v66)
      {
        v6 = caulk::expected<std::map<unsigned long long,DERItem>,SLAM::Error>::value(v64);
        v9 = *(v6 + 8);
        v7 = (v6 + 8);
        v8 = v9;
        if (v9)
        {
          v10 = v7;
          do
          {
            v11 = v8[4];
            v12 = v11 >= 0x8000000000000003;
            v13 = v11 < 0x8000000000000003;
            if (v12)
            {
              v10 = v8;
            }

            v8 = v8[v13];
          }

          while (v8);
          if (v10 != v7 && v10[4] <= 0x8000000000000003 && v10[6] == 32)
          {
            v14 = v10[5];
            v73 = 0uLL;
            v74 = 0;
            std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v73, v14, v14 + 32, 32);
            v15 = v73;
            v16 = v74;
            v17 = caulk::expected<std::map<unsigned long long,DERItem>,SLAM::Error>::value(v64);
            v20 = *(v17 + 8);
            v18 = v17 + 8;
            v19 = v20;
            if (!v20)
            {
              goto LABEL_52;
            }

            v21 = v18;
            do
            {
              v22 = *(v19 + 32);
              if (v22 < 0)
              {
                v21 = v19;
              }

              v19 = *(v19 + (~(v22 >> 60) & 8));
            }

            while (v19);
            if (v21 == v18 || *(v21 + 32) > 0x8000000000000000 || *(v21 + 48) != 1)
            {
LABEL_52:
              SLAM::Error::Unexpected("Missing or wrong length tag 0x%llx", &v73, 0x8000000000000000);
              goto LABEL_53;
            }

            if (**(v21 + 40) < 2u)
            {
              v30 = 0;
            }

            else
            {
              v23 = caulk::expected<std::map<unsigned long long,DERItem>,SLAM::Error>::value(v64);
              v26 = *(v23 + 8);
              v24 = v23 + 8;
              v25 = v26;
              if (!v26)
              {
                goto LABEL_69;
              }

              v27 = v24;
              do
              {
                v28 = *(v25 + 32);
                v12 = v28 >= 0x8000000000000004;
                v29 = v28 < 0x8000000000000004;
                if (v12)
                {
                  v27 = v25;
                }

                v25 = *(v25 + 8 * v29);
              }

              while (v25);
              if (v27 == v24 || *(v27 + 32) > 0x8000000000000004 || *(v27 + 48) != 2)
              {
LABEL_69:
                SLAM::Error::Unexpected("Missing or wrong length tag 0x%llx", &v73, 0x8000000000000004);
                goto LABEL_53;
              }

              v30 = bswap32(**(v27 + 40)) >> 16;
            }

            v38 = caulk::expected<std::map<unsigned long long,DERItem>,SLAM::Error>::value(__p);
            v41 = *(v38 + 8);
            v39 = v38 + 8;
            v40 = v41;
            if (!v41)
            {
              goto LABEL_68;
            }

            v42 = v39;
            do
            {
              v43 = *(v40 + 32);
              v12 = v43 >= 0xC000000000000009;
              v44 = v43 < 0xC000000000000009;
              if (v12)
              {
                v42 = v40;
              }

              v40 = *(v40 + 8 * v44);
            }

            while (v40);
            if (v42 != v39 && *(v42 + 32) <= 0xC000000000000009 && *(v42 + 48) == 2)
            {
              if (**(v42 + 40) == 23130)
              {
                *a2 = 0;
                *(a2 + 8) = 1;
LABEL_67:
                *(a2 + 16) = v15;
                *(a2 + 32) = v16;
                *(a2 + 40) = v30;
                *(a2 + 48) = 1;
                goto LABEL_48;
              }

              v45 = caulk::expected<std::map<unsigned long long,DERItem>,SLAM::Error>::value(__p);
              v48 = *(v45 + 8);
              v46 = v45 + 8;
              v47 = v48;
              if (!v48)
              {
                goto LABEL_83;
              }

              v49 = v46;
              do
              {
                v50 = *(v47 + 32);
                v12 = v50 >= 0xC00000000000000BLL;
                v51 = v50 < 0xC00000000000000BLL;
                if (v12)
                {
                  v49 = v47;
                }

                v47 = *(v47 + 8 * v51);
              }

              while (v47);
              if (v49 != v46 && *(v49 + 32) <= 0xC00000000000000BLL && *(v49 + 48) == 2)
              {
                v52 = bswap32(**(v49 + 40)) >> 16;
                if (v52 != 13260)
                {
                  if (v52 == 52275)
                  {
                    v53 = 0;
                    v54 = 3;
                  }

                  else if (v52 == 42405)
                  {
                    v53 = 0;
                    v54 = 2;
                  }

                  else
                  {
                    v54 = 0;
                    v53 = 0;
                  }

                  goto LABEL_96;
                }

                v55 = caulk::expected<std::map<unsigned long long,DERItem>,SLAM::Error>::value(v64);
                v58 = *(v55 + 8);
                v56 = v55 + 8;
                v57 = v58;
                if (v58)
                {
                  v59 = v56;
                  do
                  {
                    v60 = *(v57 + 32);
                    v12 = v60 >= 0x8000000000000002;
                    v61 = v60 < 0x8000000000000002;
                    if (v12)
                    {
                      v59 = v57;
                    }

                    v57 = *(v57 + 8 * v61);
                  }

                  while (v57);
                  if (v59 != v56 && *(v59 + 32) <= 0x8000000000000002 && *(v59 + 48) == 8)
                  {
                    v53 = bswap64(**(v59 + 40));
                    v54 = 4;
LABEL_96:
                    *a2 = v53;
                    *(a2 + 8) = v54;
                    *(a2 + 12) = 0;
                    goto LABEL_67;
                  }
                }

                SLAM::Error::Unexpected("Missing or wrong length tag 0x%llx", &v73, 0x8000000000000002);
              }

              else
              {
LABEL_83:
                SLAM::Error::Unexpected("Missing or wrong length tag 0x%llx", &v73, 0xC00000000000000BLL);
              }
            }

            else
            {
LABEL_68:
              SLAM::Error::Unexpected("Missing or wrong length tag 0x%llx", &v73, 0xC000000000000009);
            }

LABEL_53:
            *a2 = v73;
            *(a2 + 16) = v74;
            v74 = 0;
            v73 = 0uLL;
            *(a2 + 48) = 0;
            *&v62 = &v73;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v62);
            if (v15)
            {
              operator delete(v15);
            }

            goto LABEL_48;
          }
        }

        SLAM::Error::Unexpected("Missing or wrong length tag 0x%llx", &v73, 0x8000000000000003);
        *a2 = v73;
        *(a2 + 16) = v74;
        v74 = 0;
        v73 = 0uLL;
        *(a2 + 48) = 0;
      }

      else
      {
        v35 = SLAM::Error::Add(v64, "While parsing the respons from SLAM state");
        v73 = 0uLL;
        v74 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v73, *v35, v35[1], 0xAAAAAAAAAAAAAAABLL * ((v35[1] - *v35) >> 3));
        SLAM::Error::Unexpected(&v73, &v62);
        *a2 = v62;
        *(a2 + 16) = v63;
        v63 = 0;
        v62 = 0uLL;
        *(a2 + 48) = 0;
        v72 = &v62;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v72);
      }

      *&v62 = &v73;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v62);
LABEL_48:
      caulk::__expected_detail::base<std::map<unsigned long long,DERItem>,SLAM::Error>::~base(v64);
      goto LABEL_49;
    }

    v32 = SLAM::Error::Add(v70, "While querying migration state");
    SLAM::Error::Unexpected(v32, __p);
  }

  else
  {
    v31 = SLAM::Error::Add(v70, "While selecting ISD");
    SLAM::Error::Unexpected(v31, __p);
  }

  *a2 = *__p;
  *(a2 + 16) = v68;
  __p[1] = 0;
  v68 = 0;
  __p[0] = 0;
  *(a2 + 48) = 0;
  v75[0] = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v75);
LABEL_51:
  result = caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v70);
  v37 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299ECB90C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (v24)
  {
    operator delete(v24);
  }

  caulk::__expected_detail::base<std::map<unsigned long long,DERItem>,SLAM::Error>::~base(&__p);
  caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v25 - 88);
  caulk::__expected_detail::base<std::map<unsigned long long,DERItem>,SLAM::Error>::~base(&a19);
  caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(&a24);
  _Unwind_Resume(a1);
}

void SLAM::Impl::PerformScriptWithResult(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *a2;
  v17[0] = a1;
  v17[1] = a1;
  v17[2] = v5;
  v6 = *(a3 + 8);
  if (v6 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v21[0] = v17;
  (off_2A2026A50[v6])(v23, v21, a3);
  if (v24 == 1)
  {
    SLAM::ScriptResult::Failure(v23, a4);
  }

  else
  {
    v10 = *(a3 + 16);
    v11 = *(a3 + 24) - v10;
    v12 = *(a2 + 8);
    if (v11 == *(a2 + 16) - v12 && !memcmp(v10, v12, v11))
    {
      SLAM::Impl::ExecuteScript(a1, (a2 + 40), v17);
      if (v18 == 1)
      {
        SLAM::ScriptResult::Failure(v17, a4);
        if (v18 == 1)
        {
          v21[0] = v17;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v21);
        }
      }

      else
      {
        *a4 = 0;
        a4[8] = 0;
        a4[32] = 0;
        a4[40] = 0;
        a4[64] = 0;
      }
    }

    else
    {
      ctu::hex();
      v13 = v22;
      v14 = v21[0];
      ctu::hex();
      v15 = v21;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if (v20 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      SLAM::Error::Error(v17, "Mismatched signing keys device %s script %s", v15, p_p);
      SLAM::ScriptResult::Failure(v17, a4);
      v25 = v17;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
      if (v20 < 0)
      {
        operator delete(__p);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }
    }
  }

  if (v24 == 1)
  {
    v17[0] = v23;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  }
}

void sub_299ECBBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 == 1)
  {
    a22 = &a12;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  }

  if (*(v27 - 64) == 1)
  {
    a12 = v27 - 88;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::expected<SLAM::Script,SLAM::Error>::value(uint64_t result)
{
  v1 = result;
  if ((*(result + 96) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    memset(v3, 0, 24);
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v3, *v1, v1[1], 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 3));
    caulk::bad_expected_access<SLAM::Error>::bad_expected_access(exception, v3);
  }

  return result;
}

void sub_299ECBD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t caulk::expected<SLAM::MigrationInfo,SLAM::Error>::value(uint64_t result)
{
  v1 = result;
  if ((*(result + 48) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    memset(v3, 0, 24);
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v3, *v1, v1[1], 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 3));
    caulk::bad_expected_access<SLAM::Error>::bad_expected_access(exception, v3);
  }

  return result;
}

void sub_299ECBE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void SLAM::Logger::Log(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char *a5, ...)
{
  va_start(va, a5);
  va_copy(v15, va);
  __s.__r_.__value_.__r.__words[0] = 0;
  vasprintf(&__s.__r_.__value_.__l.__data_, a5, va);
  if (__s.__r_.__value_.__r.__words[0])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, __s.__r_.__value_.__l.__data_);
    free(__s.__r_.__value_.__l.__data_);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "<FAILED TO VASPRINTF>");
  }

  v9 = __p;
  if (v14 < 0)
  {
    v9 = __p[0];
  }

  SLAM::StringUtil::Format("%s/%d : %s", &__s, a3, a4, v9);
  boost::circular_buffer<std::string,std::allocator<std::string>>::push_back_impl<std::string const&>(a1 + 16, &__s);
  if (a2 == 1)
  {
    v10 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (**v10)(v10, &__s);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_299ECBF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void SLAM::Impl::PerformScript(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  SLAM::Impl::PerformScriptWithResult(a1, a2, a3, v5);
  if (v5[0] == 2)
  {
    std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100](a4, v9);
  }

  else
  {
    *a4 = 0;
    a4[24] = 0;
  }

  if (v9[24] == 1)
  {
    v10 = v9;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
  }

  if (v8 == 1)
  {
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }
}

void SLAM::Impl::ExecuteScript(void *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  SLAM::Impl::ExecuteScriptWithResult(a1, a2, v4);
  if (v4[0] == 2)
  {
    std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100](a3, v8);
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }

  if (v8[24] == 1)
  {
    v9 = v8;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  if (v7 == 1)
  {
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void SLAM::Impl::PerformRecovery(void (***this)(__int128 *__return_ptr)@<X0>, _BYTE *a2@<X8>)
{
  SLAM::Impl::PerformRecoveryWithResult(this, v3);
  if (v3[0] == 2)
  {
    std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100](a2, v7);
  }

  else
  {
    *a2 = 0;
    a2[24] = 0;
  }

  if (v7[24] == 1)
  {
    v8 = v7;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  }

  if (v6 == 1)
  {
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }
}

uint64_t SLAM::overloaded<SLAM::Impl::PerformRecoveryWithResult(void)::$_0,SLAM::Impl::PerformRecoveryWithResult(void)::$_1,SLAM::Impl::PerformRecoveryWithResult(void)::$_2,SLAM::Impl::PerformRecoveryWithResult(void)::$_3,SLAM::Impl::PerformRecoveryWithResult(void)::$_4>::~overloaded(uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {
    v6 = (a1 + 184);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*(a1 + 176) == 1)
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      *(a1 + 160) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 136) == 1)
  {
    v6 = (a1 + 112);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*(a1 + 104) == 1)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      *(a1 + 88) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 64) == 1)
  {
    v6 = (a1 + 40);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*(a1 + 32) == 1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      *(a1 + 16) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

void SLAM::Impl::ExecuteScriptWithResult(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a2;
  v25[0] = 0;
  LOBYTE(v26[0]) = 0;
  v28 = 0;
  LOBYTE(v29) = 0;
  v31 = 0;
  if (v5 == v6)
  {
    goto LABEL_20;
  }

  LODWORD(v9) = 0;
  v10 = (v5 - v6) >> 3;
  while (2)
  {
    v11 = 0;
    while (1)
    {
      SLAM::TransceiverWrapper::Transceive(a1 + 1, v6, v23);
      if ((v24 & 1) == 0)
      {
        SLAM::Error::Error(__p, "While executing APDU %d", v11);
        SLAM::ScriptResult::Failure(__p, a3);
        v32[0] = __p;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v32);
        goto LABEL_31;
      }

      v12 = caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(v23);
      v13 = v12[1];
      if ((v13 - *v12) < 2)
      {
        LOWORD(v15) = -16468;
        v19 = 49068;
LABEL_27:
        LOWORD(v20) = v15;
        HIDWORD(v20) = v11;
        SLAM::ScriptResult::addMessage(v25, &v20);
        SLAM::Error::Error(__p, "Failed SW 0x%hX at idx %d", v19, v11);
        v25[0] = 2;
        std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error const&,void>(&v29, __p);
        v32[0] = __p;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v32);
        *a3 = v25[0];
        *(a3 + 8) = 0;
        *(a3 + 32) = 0;
        if (v28 == 1)
        {
          *(a3 + 8) = *v26;
          *(a3 + 24) = v27;
          v26[1] = 0;
          v27 = 0;
          v26[0] = 0;
          *(a3 + 32) = 1;
        }

        *(a3 + 40) = 0;
        *(a3 + 64) = 0;
        if (v31 == 1)
        {
          *(a3 + 40) = v29;
          *(a3 + 56) = v30;
          v30 = 0;
          v29 = 0uLL;
          *(a3 + 64) = 1;
        }

LABEL_31:
        caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v23);
        if ((v31 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v14 = *(v13 - 2);
      v15 = __rev16(v14);
      if ((v15 & 0xFFF0) == 0x63C0)
      {
        v9 = (v9 + 1);
        if (v10 > v9)
        {
          break;
        }
      }

      if (v14 != 144)
      {
        v19 = v15;
        goto LABEL_27;
      }

      caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v23);
      v6 += 24;
      ++v11;
      if (v6 == v5)
      {
        goto LABEL_20;
      }
    }

    LOWORD(v32[0]) = v15;
    HIDWORD(v32[0]) = v11;
    SLAM::ScriptResult::addMessage(v25, v32);
    v25[0] = 1;
    v17 = a1[8];
    v16 = a1[9];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(v23);
    ctu::hex();
    v18 = __p;
    if (v22 < 0)
    {
      v18 = __p[0];
    }

    SLAM::Logger::Log(v17, 1, "ExecuteScriptWithResult", 482, "Warning APDU: %s idx %d replaying %d", v18, v11, v9);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v23);
    v6 = *a2;
    v5 = a2[1];
    if (*a2 != v5)
    {
      continue;
    }

    break;
  }

LABEL_20:
  *a3 = v25[0];
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
  if (v28)
  {
    *(a3 + 8) = *v26;
    *(a3 + 24) = v27;
    v26[1] = 0;
    v27 = 0;
    v26[0] = 0;
    *(a3 + 32) = 1;
  }

  *(a3 + 40) = 0;
  *(a3 + 64) = 0;
  if (v31 == 1)
  {
    *(a3 + 40) = v29;
    *(a3 + 56) = v30;
    v30 = 0;
    v29 = 0uLL;
    *(a3 + 64) = 1;
LABEL_32:
    v23[0] = &v29;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v23);
  }

LABEL_33:
  if (v28 == 1)
  {
    if (v26[0])
    {
      v26[1] = v26[0];
      operator delete(v26[0]);
    }
  }
}

void sub_299ECC5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(&a19);
  SLAM::ScriptResult::~ScriptResult(&a23);
  _Unwind_Resume(a1);
}

void SLAM::TransceiverWrapper::Transceive(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1[3];
  v6 = a1[4];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::hex();
  if (v15 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  SLAM::Logger::Log(v7, 0, "Transceive", 49, "> %s", v8);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v9 = a1[1];
  v10 = a1[2];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v9)(v9, a2);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*(a3 + 24))
  {
    v12 = a1[3];
    v11 = a1[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(a3);
    ctu::hex();
    if (v15 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    SLAM::Logger::Log(v12, 0, "Transceive", 54, "< %s", v13);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void sub_299ECC7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v15);
  _Unwind_Resume(a1);
}

uint64_t caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(uint64_t result)
{
  v1 = result;
  if ((*(result + 24) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    memset(v3, 0, 24);
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v3, *v1, v1[1], 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 3));
    caulk::bad_expected_access<SLAM::Error>::bad_expected_access(exception, v3);
  }

  return result;
}

void sub_299ECC8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void SLAM::ScriptResult::addMessage(uint64_t a1, void *a2)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    __p = 0uLL;
    v18 = 0;
    std::optional<std::vector<SLAM::ExecutionMessage>>::operator=[abi:ne200100]<std::vector<SLAM::ExecutionMessage>,void>(a1 + 8, &__p);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v5 >= v4)
  {
    v7 = *(a1 + 8);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SLAM::ExecutionMessage>>(a1 + 8, v11);
    }

    v12 = (8 * v8);
    *v12 = *a2;
    v6 = 8 * v8 + 8;
    v13 = *(a1 + 8);
    v14 = *(a1 + 16) - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(a1 + 8);
    *(a1 + 8) = v15;
    *(a1 + 16) = v6;
    *(a1 + 24) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 16) = v6;
}

void sub_299ECCA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SLAM::Impl::PerformTermination@<X0>(void (***this)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v11 = 371328;
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, &v11, &v12, 4);
  SLAM::TransceiverWrapper::TransceiveAndCheckSW(this + 1, v10);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v10[24])
  {
    v4 = 0;
    *a2 = 0;
  }

  else
  {
    v5 = SLAM::Error::Add(v10, "While terminating");
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 3));
    v4 = 1;
  }

  *(a2 + 24) = v4;
  return caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(v10);
}

uint64_t SLAM::TransceiverWrapper::TransceiveAndCheckSW@<X0>(void (***a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  (**a1)(&v12);
  if ((v14 & 1) == 0)
  {
    *(a2 + 24) = v14;
    *a2 = v12;
    *(a2 + 16) = v13;
    v12 = 0uLL;
    v13 = 0;
    return caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(&v12);
  }

  v3 = caulk::expected<std::vector<unsigned char>,SLAM::Error>::value(&v12);
  v4 = v3[1];
  if ((v4 - *v3) < 2)
  {
    v8 = 49068;
LABEL_9:
    SLAM::Error::Unexpected("Unexpected SW 0x%hX", &v10, v8);
    *a2 = v10;
    *(a2 + 16) = v11;
    v11 = 0;
    v10 = 0uLL;
    *(a2 + 24) = 0;
    v15 = &v10;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
    return caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(&v12);
  }

  v5 = *(v4 - 2);
  if (v5 != 144)
  {
    v8 = __rev16(v5);
    goto LABEL_9;
  }

  v6 = v12;
  if (*(&v12 + 1) - v12 > 1uLL)
  {
    v7 = *(&v12 + 1) - 2;
    *(&v12 + 1) -= 2;
  }

  else
  {
    std::vector<unsigned char>::__append(&v12, 0xFFFFFFFFFFFFFFFELL);
    v7 = *(&v12 + 1);
    v6 = v12;
  }

  *(a2 + 24) = v14;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v13;
  v13 = 0;
  v12 = 0uLL;
  return caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(&v12);
}

void sub_299ECCC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(va);
  _Unwind_Resume(a1);
}

void SLAM::Error::Unexpected(SLAM::Error *this@<X0>, uint64_t a2@<X8>)
{
  v4 = 0uLL;
  v5 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v4, *this, *(this + 1), 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3));
  *a2 = v4;
  *(a2 + 16) = v5;
  v5 = 0;
  v4 = 0uLL;
  v6 = &v4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void SLAM::DERParseSequenceToMap(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1[1] - *a1;
  v20[0] = *a1;
  v20[1] = v5;
  if (a3)
  {
    v7 = 8 * a3;
    while (1)
    {
      v12 = 0;
      v13 = 0uLL;
      v8 = DERDecodeItem(v20, &v12);
      v9 = *a2;
      if (v8 || v12 != v9)
      {
        break;
      }

      *v20 = v13;
      ++a2;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    SLAM::Error::Unexpected("Failed to decode ret %d tag 0x%llx exoected 0x%llx", &v18, v8, v12, v9);
    *a4 = v18;
    *(a4 + 16) = v19;
    v19 = 0;
    v18 = 0uLL;
    *(a4 + 24) = 0;
    v21 = &v18;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
  }

  else
  {
LABEL_6:
    v12 = 0;
    *&v13 = &v12;
    *(&v13 + 1) = 0x4002000000;
    v14 = __Block_byref_object_copy_;
    v17[0] = 0;
    v17[1] = 0;
    v15 = __Block_byref_object_dispose_;
    v16 = v17;
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 0x40000000;
    v11[2] = ___ZN4SLAML21DERParseSequenceToMapERNSt3__16vectorIhNS0_9allocatorIhEEEESt16initializer_listIyE_block_invoke;
    v11[3] = &unk_29F290D08;
    v11[4] = &v12;
    v10 = DERDecodeSequenceContentWithBlock(v20, v11);
    if (v10)
    {
      SLAM::Error::Unexpected("DecodeSequenceContent returned %d", &v18, v10);
      *a4 = v18;
      *(a4 + 16) = v19;
      v19 = 0;
      v18 = 0uLL;
      *(a4 + 24) = 0;
      v21 = &v18;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
    }

    else
    {
      std::map<unsigned long long,DERItem>::map[abi:ne200100](a4, v13 + 40);
      *(a4 + 24) = 1;
    }

    _Block_object_dispose(&v12, 8);
    std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::destroy(&v16, v17[0]);
  }
}

void sub_299ECCEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  _Block_object_dispose(&a17, 8);
  std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::destroy(v23 + 40, a23);
  _Unwind_Resume(a1);
}

uint64_t caulk::expected<std::map<unsigned long long,DERItem>,SLAM::Error>::value(uint64_t result)
{
  v1 = result;
  if ((*(result + 24) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    memset(v3, 0, 24);
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v3, *v1, v1[1], 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 3));
    caulk::bad_expected_access<SLAM::Error>::bad_expected_access(exception, v3);
  }

  return result;
}

void sub_299ECCFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void SLAM::Error::Unexpected(SLAM::Error *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  va_copy(v8, va);
  __s[0] = 0;
  vasprintf(__s, this, va);
  if (__s[0])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, __s[0]);
    free(__s[0]);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "<FAILED TO VASPRINTF>");
  }

  SLAM::Error::Error(__s, __p);
  *a2 = *__s;
  *(a2 + 16) = v5;
  __s[1] = 0;
  v5 = 0;
  __s[0] = 0;
  v9 = __s;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_299ECD0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SLAM::Impl::~Impl(SLAM::Impl *this)
{
  SLAM::Impl::~Impl(this);

  JUMPOUT(0x29C2B5F30);
}

{
  *this = &unk_2A2026928;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *(this + 1) = &unk_2A20269B0;
  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<SLAM::Error,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<SLAM::Error,false> const&>(a1, a2);
  return a1;
}

void sub_299ECD1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<SLAM::Error,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<SLAM::Error,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error const&,void>(uint64_t a1, std::string **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    *(a1 + 24) = 1;
  }

  return a1;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
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
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *SLAM::Impl::Impl(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  *a1 = &unk_2A2026928;
  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a3;
  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a1[1] = &unk_2A20269B0;
  a1[2] = v7;
  a1[3] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a1[4] = v10;
  a1[5] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v11 = a4[1];
  a1[6] = *a4;
  a1[7] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a3[1];
  a1[8] = *a3;
  a1[9] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void SLAM::TransceiverWrapper::~TransceiverWrapper(SLAM::TransceiverWrapper *this)
{
  *this = &unk_2A20269B0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_2A20269B0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x29C2B5F30);
}

__n128 std::__optional_storage_base<std::vector<SLAM::ExecutionMessage>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<SLAM::ExecutionMessage>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {

      result.n128_u64[0] = std::vector<SLAM::ExecutionMessage>::__move_assign(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 24))
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

__n128 std::vector<SLAM::ExecutionMessage>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 std::__optional_storage_base<SLAM::Error,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<SLAM::Error,false>>(std::vector<std::string> *this, uint64_t a2)
{
  if (LOBYTE(this[1].__begin_) == *(a2 + 24))
  {
    if (LOBYTE(this[1].__begin_))
    {
      std::vector<std::string>::__vdeallocate(this);
      result = *a2;
      *&this->__begin_ = *a2;
      this->__end_cap_.__value_ = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }
  }

  else if (LOBYTE(this[1].__begin_))
  {
    v5 = this;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
    LOBYTE(this[1].__begin_) = 0;
  }

  else
  {
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    result = *a2;
    *this = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    LOBYTE(this[1].__begin_) = 1;
  }

  return result;
}

std::string *ctu::join<std::__wrap_iter<std::string const*>>@<X0>(std::string *__str@<X0>, std::string *a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (__str != a2)
  {
    v8 = __str;
    __str = std::string::operator=(a5, __str);
    for (i = v8 + 1; i != a2; ++i)
    {
      if (a3)
      {
        if (a4 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (a4 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v21) = a4;
        if (a4)
        {
          memmove(&__dst, a3, a4);
        }

        *(&__dst + a4) = 0;
        v13 = HIBYTE(v21);
        v12 = __dst;
        v11 = v20;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        __dst = 0;
        v20 = 0;
        v21 = 0;
      }

      if ((v13 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = v12;
      }

      if ((v13 & 0x80u) == 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }

      std::string::append(a5, p_dst, v15);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__dst);
      }

      v16 = SHIBYTE(i->__r_.__value_.__r.__words[2]);
      if (v16 >= 0)
      {
        v17 = i;
      }

      else
      {
        v17 = i->__r_.__value_.__r.__words[0];
      }

      if (v16 >= 0)
      {
        size = HIBYTE(i->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = i->__r_.__value_.__l.__size_;
      }

      __str = std::string::append(a5, v17, size);
    }
  }

  return __str;
}

void sub_299ECDEB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::for_each[abi:ne200100]<boost::cb_details::iterator<boost::circular_buffer<std::string,std::allocator<std::string>>,boost::cb_details::const_traits<std::allocator<std::string>>>,std::function<void ()(std::string const&)>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a2 != a3)
  {
    v8 = a2;
    do
    {
      v10 = *(a4 + 24);
      if (!v10)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v10 + 48))(v10, v8);
      v11 = v8 + 24;
      if (v8 + 24 == a1[1])
      {
        v11 = *a1;
      }

      if (v11 == a1[3])
      {
        v8 = 0;
      }

      else
      {
        v8 = v11;
      }
    }

    while (v8 != a3);
  }

  return std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](a5, a4);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void caulk::bad_expected_access<SLAM::Error>::~bad_expected_access(std::exception *a1)
{
  a1->__vftable = &unk_2A2026A20;
  v2 = a1 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::exception::~exception(a1);
}

void *caulk::bad_expected_access<SLAM::Error>::bad_expected_access(void *a1, uint64_t *a2)
{
  *a1 = &unk_2A2026A20;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 1), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

uint64_t caulk::bad_expected_access<SLAM::Error>::~bad_expected_access(std::exception *a1)
{
  a1->__vftable = &unk_2A2026A20;
  v3 = a1 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::exception::~exception(a1);
  return MEMORY[0x29C2B5F30]();
}

uint64_t caulk::__expected_detail::base<SLAM::MigrationInfo,SLAM::Error>::~base(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      *(a1 + 24) = v2;
      operator delete(v2);
    }
  }

  else
  {
    v4 = a1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return a1;
}

uint64_t caulk::__expected_detail::base<SLAM::Script,SLAM::Error>::~base(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    caulk::__expected_detail::destroy<SLAM::Script,(void *)0>(a1);
  }

  else
  {
    v3 = a1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

void caulk::__expected_detail::destroy<SLAM::Script,(void *)0>(uint64_t a1)
{
  v3 = (a1 + 40);
  std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned char>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<unsigned char>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_299ECE468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void SLAM::StringUtil::Format(SLAM::StringUtil *this@<X0>, _BYTE *a2@<X8>, ...)
{
  va_start(va, a2);
  __s = 0;
  vasprintf(&__s, this, va);
  if (__s)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, __s);
    free(__s);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "<FAILED TO VASPRINTF>");
  }
}

void boost::circular_buffer<std::string,std::allocator<std::string>>::push_back_impl<std::string const&>(uint64_t a1, const std::string *a2)
{
  v3 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3) == *(a1 + 32))
  {
    if (v3 != *a1)
    {
      std::string::operator=(*(a1 + 24), a2);
      v4 = *(a1 + 24) + 24;
      *(a1 + 24) = v4;
      if (v4 == *(a1 + 8))
      {
        v4 = *a1;
        *(a1 + 24) = *a1;
      }

      *(a1 + 16) = v4;
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v5, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v6 = *&a2->__r_.__value_.__l.__data_;
      v5->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&v5->__r_.__value_.__l.__data_ = v6;
    }

    v7 = *(a1 + 24) + 24;
    *(a1 + 24) = v7;
    if (v7 == *(a1 + 8))
    {
      *(a1 + 24) = *a1;
    }

    ++*(a1 + 32);
  }
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_0,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_1,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_2,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_3,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,SLAM::MigrationInfo::Idle,SLAM::MigrationInfo::SecureChannel,SLAM::MigrationInfo::Termination,SLAM::MigrationInfo::SLAM> const&>(uint64_t a1@<X8>)
{
  SLAM::Error::Error(&v2, "Cannot proceed in OSU state");
  *a1 = v2;
  *(a1 + 16) = v3;
  v3 = 0;
  v2 = 0uLL;
  *(a1 + 24) = 1;
  v4 = &v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_0,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_1,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_2,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_3,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,SLAM::MigrationInfo::Idle,SLAM::MigrationInfo::SecureChannel,SLAM::MigrationInfo::Termination,SLAM::MigrationInfo::SLAM> const&>(uint64_t a1@<X8>)
{
  SLAM::Error::Error(&v2, "Cannot proceed in SC state");
  *a1 = v2;
  *(a1 + 16) = v3;
  v3 = 0;
  v2 = 0uLL;
  *(a1 + 24) = 1;
  v4 = &v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_0,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_1,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_2,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_3,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,SLAM::MigrationInfo::Idle,SLAM::MigrationInfo::SecureChannel,SLAM::MigrationInfo::Termination,SLAM::MigrationInfo::SLAM> const&>@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = **a1;
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SLAM::Logger::Log(v4, 1, "operator()", 344, "Recovering incomplete termination");
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return SLAM::Impl::PerformTermination(v3, a2);
}

void sub_299ECE778(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_0,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_1,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_2,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_3,SLAM::Impl::PerformScriptWithResult(SLAM::Script const&,SLAM::MigrationInfo const&)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,SLAM::MigrationInfo::Idle,SLAM::MigrationInfo::SecureChannel,SLAM::MigrationInfo::Termination,SLAM::MigrationInfo::SLAM> const&>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  v7 = *a2;
  v8 = *(v6 + 64);
  v9 = *(v6 + 72);
  if (v5 == *a2)
  {
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *(v4 + 16);
    }

    SLAM::Logger::Log(v8, 1, "operator()", 357, "Resuming interrupted script 0x%llx", v5);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

LABEL_11:
    *a3 = 0;
    a3[24] = 0;
    return;
  }

  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *a2;
    v5 = *(v4 + 16);
  }

  SLAM::Logger::Log(v8, 1, "operator()", 352, "Recover interrupted script 0x%llx before running 0x%llx", v7, v5);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  SLAM::Impl::PerformRecovery(v6, a3);
  if ((a3[24] & 1) == 0)
  {
    goto LABEL_11;
  }
}

void sub_299ECE87C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformRecoveryWithResult(void)::$_0,SLAM::Impl::PerformRecoveryWithResult(void)::$_1,SLAM::Impl::PerformRecoveryWithResult(void)::$_2,SLAM::Impl::PerformRecoveryWithResult(void)::$_3,SLAM::Impl::PerformRecoveryWithResult(void)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,std::__variant_detail::_Trait::Idle,std::__variant_detail::_Trait::SecureChannel,std::__variant_detail::_Trait::Termination,std::__variant_detail::_Trait::SLAM> const&>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  *a2 = *(*a1 + 72);
  std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100]((a2 + 8), v3 + 80);
  return std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100]((a2 + 40), v3 + 112);
}

void sub_299ECE8E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      *(v1 + 16) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformRecoveryWithResult(void)::$_0,SLAM::Impl::PerformRecoveryWithResult(void)::$_1,SLAM::Impl::PerformRecoveryWithResult(void)::$_2,SLAM::Impl::PerformRecoveryWithResult(void)::$_3,SLAM::Impl::PerformRecoveryWithResult(void)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,std::__variant_detail::_Trait::Idle,std::__variant_detail::_Trait::SecureChannel,std::__variant_detail::_Trait::Termination,std::__variant_detail::_Trait::SLAM> const&>@<X0>(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = (*a1 + 40);
  *a2 = **a1;
  std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100]((a2 + 8), (v3 + 8));
  return std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100]((a2 + 40), v4);
}

void sub_299ECE964(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      *(v1 + 16) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformRecoveryWithResult(void)::$_0,SLAM::Impl::PerformRecoveryWithResult(void)::$_1,SLAM::Impl::PerformRecoveryWithResult(void)::$_2,SLAM::Impl::PerformRecoveryWithResult(void)::$_3,SLAM::Impl::PerformRecoveryWithResult(void)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,std::__variant_detail::_Trait::Idle,std::__variant_detail::_Trait::SecureChannel,std::__variant_detail::_Trait::Termination,std::__variant_detail::_Trait::SLAM> const&>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  *a2 = *(*a1 + 144);
  std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100]((a2 + 8), v3 + 152);
  return std::__optional_copy_base<SLAM::Error,false>::__optional_copy_base[abi:ne200100]((a2 + 40), v3 + 184);
}

void sub_299ECE9DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      *(v1 + 16) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformRecoveryWithResult(void)::$_0,SLAM::Impl::PerformRecoveryWithResult(void)::$_1,SLAM::Impl::PerformRecoveryWithResult(void)::$_2,SLAM::Impl::PerformRecoveryWithResult(void)::$_3,SLAM::Impl::PerformRecoveryWithResult(void)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,std::__variant_detail::_Trait::Idle,std::__variant_detail::_Trait::SecureChannel,std::__variant_detail::_Trait::Termination,std::__variant_detail::_Trait::SLAM> const&>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 216);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SLAM::Logger::Log(v4, 1, "operator()", 412, "Recovering incomplete termination");
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  SLAM::Impl::PerformTermination(v3, v6);
  if (v7 == 1)
  {
    SLAM::ScriptResult::Failure(v6, a2);
    if (v7)
    {
      v8 = v6;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
    }
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
    a2[32] = 0;
    a2[40] = 0;
    a2[64] = 0;
  }
}

void sub_299ECEACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, char *a14)
{
  if (a13 == 1)
  {
    a14 = &a10;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SLAM::overloaded<SLAM::Impl::PerformRecoveryWithResult(void)::$_0,SLAM::Impl::PerformRecoveryWithResult(void)::$_1,SLAM::Impl::PerformRecoveryWithResult(void)::$_2,SLAM::Impl::PerformRecoveryWithResult(void)::$_3,SLAM::Impl::PerformRecoveryWithResult(void)::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SLAM::MigrationInfo::OSU,std::__variant_detail::_Trait::Idle,std::__variant_detail::_Trait::SecureChannel,std::__variant_detail::_Trait::Termination,std::__variant_detail::_Trait::SLAM> const&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = *(*a1 + 224);
  v6 = v5[6];
  v7 = v5[7];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a2;
  (*(*v6 + 1))(v26);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v28)
  {
    SLAM::Impl::ExecuteScriptWithResult(v5, v27, &v19);
    if (v24 == 1)
    {
      v10 = v5[8];
      v9 = v5[9];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *a2;
      ctu::join<std::__wrap_iter<std::string const*>>(v23[0], v23[1], ", ", 2uLL, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      SLAM::Logger::Log(v10, 1, "operator()", 436, "Failed recovery with scriptID 0x%llx, error was %s", v11, p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      SLAM::Impl::PerformTermination(v5, &__p);
      if (v18 == 1)
      {
        SLAM::ScriptResult::Failure(&__p, a3);
        if (v18)
        {
          v25 = &__p;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        *(a3 + 64) = 0;
      }

      if (v24)
      {
        __p.__r_.__value_.__r.__words[0] = v23;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      }
    }

    else
    {
      *a3 = v19;
      *(a3 + 8) = 0;
      *(a3 + 32) = 0;
      if (v22 == 1)
      {
        *(a3 + 8) = *v20;
        *(a3 + 24) = v21;
        v20[1] = 0;
        v21 = 0;
        v20[0] = 0;
        *(a3 + 32) = 1;
      }

      *(a3 + 40) = 0;
      *(a3 + 64) = 0;
    }

    if (v22 == 1 && v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }
  }

  else
  {
    v13 = v5[8];
    v14 = v5[9];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SLAM::Logger::Log(v13, 1, "operator()", 424, "Recovery script 0x%llx not found, terminating!", *a2);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    SLAM::Impl::PerformTermination(v5, &v19);
    if (v21 == 1)
    {
      SLAM::ScriptResult::Failure(&v19, a3);
      if (v21)
      {
        __p.__r_.__value_.__r.__words[0] = &v19;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 64) = 0;
    }
  }

  result = caulk::__expected_detail::base<SLAM::Script,SLAM::Error>::~base(v26);
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299ECEDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void **p_p, char a31)
{
  if (a17 == 1)
  {
    p_p = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  }

  SLAM::ScriptResult::~ScriptResult(&a19);
  caulk::__expected_detail::base<SLAM::Script,SLAM::Error>::~base(&a31);
  _Unwind_Resume(a1);
}

void sub_299ECEEA0()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x299ECEE98);
}

uint64_t std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<std::vector<SLAM::ExecutionMessage>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false> const&>(a1, a2);
  return a1;
}

void sub_299ECEEE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<std::vector<SLAM::ExecutionMessage>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<SLAM::ExecutionMessage>::__init_with_size[abi:ne200100]<SLAM::ExecutionMessage*,SLAM::ExecutionMessage*>(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<SLAM::ExecutionMessage>::__init_with_size[abi:ne200100]<SLAM::ExecutionMessage*,SLAM::ExecutionMessage*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SLAM::ExecutionMessage>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_299ECEFB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SLAM::ExecutionMessage>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SLAM::ExecutionMessage>>(a1, a2);
  }

  std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SLAM::ExecutionMessage>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::optional<std::vector<SLAM::ExecutionMessage>>::operator=[abi:ne200100]<std::vector<SLAM::ExecutionMessage>,void>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::vector<SLAM::ExecutionMessage>::__move_assign(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t caulk::__expected_detail::base<std::vector<unsigned char>,SLAM::Error>::~base(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }
  }

  else
  {
    v4 = a1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return a1;
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_299ECF2A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
}

SLAM::SelectISDCommand *SLAM::SelectISDCommand::SelectISDCommand(SLAM::SelectISDCommand *this)
{
  *&v7[2] = *MEMORY[0x29EDCA608];
  v4 = 0xA0080004A400;
  v5 = 20737;
  v6 = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this, &v4, v7, 14);
  v2 = *MEMORY[0x29EDCA608];
  return this;
}

void *__Block_byref_object_copy_(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *std::map<unsigned long long,DERItem>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned long long,DERItem>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long long,DERItem>,std::__tree_node<std::__value_type<unsigned long long,DERItem>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned long long,DERItem>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long long,DERItem>,std::__tree_node<std::__value_type<unsigned long long,DERItem>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::__emplace_hint_unique_key_args<unsigned long long,std::pair<unsigned long long const,DERItem> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::__emplace_hint_unique_key_args<unsigned long long,std::pair<unsigned long long const,DERItem> const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::__find_equal<unsigned long long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::__find_equal<unsigned long long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *SLAM::Error::Error(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a1, &__p, &v6, 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_299ECFB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t caulk::__expected_detail::base<std::map<unsigned long long,DERItem>,SLAM::Error>::~base(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    std::__tree<std::__value_type<unsigned long long,DERItem>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DERItem>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DERItem>>>::destroy(a1, *(a1 + 8));
  }

  else
  {
    v3 = a1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *_ZNSt3__120__shared_ptr_emplaceIN4SLAM21DefaultScriptProviderENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2026AB0;
  std::allocator<SLAM::DefaultScriptProvider>::construct[abi:ne200100]<SLAM::DefaultScriptProvider>(&v3, a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<SLAM::DefaultScriptProvider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2026AB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void std::allocator<SLAM::DefaultScriptProvider>::construct[abi:ne200100]<SLAM::DefaultScriptProvider>(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "/usr/standalone/firmware/SLAM/SLAM.sefw");
  SLAM::DefaultScriptProvider::DefaultScriptProvider(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_299ECFF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<SLAM::Logger>::__shared_ptr_emplace[abi:ne200100]<gsl::not_null<std::shared_ptr<SLAM::LogSink>> const&,std::allocator<SLAM::Logger>,0>(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2026AE8;
  std::allocator<SLAM::Logger>::construct[abi:ne200100]<SLAM::Logger,gsl::not_null<std::shared_ptr<SLAM::LogSink>> const&>(&v2, a1 + 3, a2);
}

void std::__shared_ptr_emplace<SLAM::Logger>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2026AE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void std::allocator<SLAM::Logger>::construct[abi:ne200100]<SLAM::Logger,gsl::not_null<std::shared_ptr<SLAM::LogSink>> const&>(uint64_t a1, void *a2, void *a3)
{
  v3 = a3[1];
  v4[0] = *a3;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  SLAM::Logger::Logger(a2, v4);
}

void sub_299ED0140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SLAM::Logger::Logger(void *a1, void *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6] = 0;
  operator new();
}

void sub_299ED01BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<SLAM::Logger>::__on_zero_shared_impl[abi:ne200100]<std::allocator<SLAM::Logger>,0>(uint64_t a1)
{
  boost::circular_buffer<std::string,std::allocator<std::string>>::destroy((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void boost::circular_buffer<std::string,std::allocator<std::string>>::destroy(uint64_t *a1)
{
  boost::circular_buffer<std::string,std::allocator<std::string>>::destroy_content(a1);
  if (*a1)
  {
    operator delete(*a1);
  }
}

void boost::circular_buffer<std::string,std::allocator<std::string>>::destroy_content(uint64_t *a1)
{
  if (a1[4])
  {
    v2 = 0;
    v3 = a1[2];
    do
    {
      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
        v3 = a1[2];
      }

      v3 += 24;
      a1[2] = v3;
      if (v3 == a1[1])
      {
        v3 = *a1;
        a1[2] = *a1;
      }

      ++v2;
    }

    while (v2 < a1[4]);
  }
}

void *std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A2026B20;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A2026B20;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

uint64_t std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A2026B20;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformScriptWithResult(std::string,gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v2)(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_299ED0500(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A2026B68;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_2A2026B68;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

uint64_t std::__function::__func<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A2026B68;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0,std::allocator<SLAM::SLAMPrivateInterface::PerformRecoveryWithResult(gsl::not_null<std::shared_ptr<SLAM::SEHandle>>,gsl::not_null<std::shared_ptr<SLAM::LogSink>>,gsl::not_null<std::shared_ptr<SLAM::ScriptProvider>>)::$_0>,void ()(std::string const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v2)(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_299ED0744(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_299ED07BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_copy_base<std::vector<SLAM::ExecutionMessage>,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void *SLAM::DefaultScriptProvider::DefaultScriptProvider(void *a1, uint64_t a2)
{
  *a1 = &unk_2A2026BB0;
  applesauce::v1::mapped_file::mapped_file(a1 + 1, a2, 1);
  return a1;
}

uint64_t SLAM::DefaultScriptProvider::GetScriptByID@<X0>(SLAM::DefaultScriptProvider *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6[4] = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6[0] = &unk_2A2026C60;
  v6[1] = &v5;
  v6[3] = v6;
  SLAM::DefaultScriptProvider::FindScriptMatching(this, v6, a3);
  result = std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299ED08C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void SLAM::DefaultScriptProvider::FindScriptMatching(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92[4] = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v7 < 7 || (*SLAM::DefaultScriptProvider::FindScriptMatching(std::function<BOOL ()(SLAMScriptDERObj const&)>)::plist_header == *v8 ? (v9 = *&SLAM::DefaultScriptProvider::FindScriptMatching(std::function<BOOL ()(SLAMScriptDERObj const&)>)::plist_header[4] == *(v8 + 4)) : (v9 = 0), !v9))
  {
    v89[0] = *(a1 + 8);
    v89[1] = v7;
    v87 = 0u;
    v88 = 0u;
    v10 = DERParseSequence(v89, slamSEFWItemSpecLen, &slamSEFWItemSpec, &v87, 0x20uLL);
    if (v10)
    {
      SLAM::Error::Unexpected("Failed to parse top level %d", &v76, v10);
LABEL_18:
      *a3 = v76;
      *(a3 + 16) = v77;
      v77 = 0;
      v76 = 0uLL;
      *(a3 + 96) = 0;
      *&v53 = &v76;
      v14 = &v53;
      goto LABEL_19;
    }

    if (*(&v87 + 1) != 4)
    {
      SLAM::Error::Unexpected("Unexpected SLAM version length %zu", &v76, *(&v87 + 1));
      goto LABEL_18;
    }

    v83 = 0;
    v84 = &v83;
    v85 = 0x2020000000;
    v11 = bswap32(*v87);
    v86 = v11;
    if ((v11 - 1) >= 3)
    {
      SLAM::Error::Unexpected("Unexpected SLAM SEFW version %u", &v76, v11);
      *a3 = v76;
      *(a3 + 16) = v77;
      v77 = 0;
      v76 = 0uLL;
      *(a3 + 96) = 0;
      *&v53 = &v76;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
LABEL_22:
      _Block_object_dispose(&v83, 8);
      goto LABEL_20;
    }

    *&v76 = 0;
    *(&v76 + 1) = &v76;
    v77 = 0xB812000000;
    v78 = __Block_byref_object_copy__0;
    v79 = __Block_byref_object_dispose__0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v68 = 0;
    v69 = &v68;
    v70 = 0x5012000000;
    v71 = __Block_byref_object_copy__5;
    v72 = __Block_byref_object_dispose__6;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x3812000000;
    v63 = __Block_byref_object_copy__7;
    v64 = __Block_byref_object_dispose__8;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v91[0] = MEMORY[0x29EDCA5F8];
    v91[1] = 3321888768;
    v91[2] = ___ZN4SLAM21DefaultScriptProvider18FindScriptMatchingENSt3__18functionIFbRK16SLAMScriptDERObjEEE_block_invoke;
    v91[3] = &unk_2A2026BD8;
    v91[4] = &v83;
    v91[5] = &v68;
    v91[6] = &v60;
    std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::__value_func[abi:ne200100](v92, a2);
    v91[7] = &v76;
    v12 = DERDecodeSequenceContentWithBlock(&v88, v91);
    if (v12)
    {
      SLAM::Error::Unexpected("Failed to decode script %d", &v53, v12);
      *a3 = v53;
      *(a3 + 16) = v54;
      *&v54 = 0;
      v53 = 0uLL;
      *(a3 + 96) = 0;
      *&v38 = &v53;
      p_p = &v38;
LABEL_12:
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](p_p);
LABEL_13:
      std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::~__value_func[abi:ne200100](v92);
      _Block_object_dispose(&v60, 8);
      _Block_object_dispose(&v68, 8);
      if (v75 == 1)
      {
        *&v53 = &v74;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
      }

      _Block_object_dispose(&v76, 8);
      goto LABEL_22;
    }

    if (*(v69 + 72) == 1)
    {
      ctu::join<std::__wrap_iter<std::string const*>>(v69[6], v69[7], ", ", 2uLL, &__p);
      SLAM::Error::Error(&v38, &__p);
      v53 = 0uLL;
      *&v54 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v53, v38, *(&v38 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v38 + 1) - v38) >> 3));
      *a3 = v53;
      *(a3 + 16) = v54;
      *&v54 = 0;
      v53 = 0uLL;
      *(a3 + 96) = 0;
      v45[0] = &v53;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v45);
      v45[0] = &v38;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v45);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_13;
    }

    if ((*(*(&v76 + 1) + 176) & 1) == 0)
    {
      SLAM::Error::Error(&v38, "Could not find script within SEFW");
      v53 = 0uLL;
      *&v54 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v53, v38, *(&v38 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v38 + 1) - v38) >> 3));
      *a3 = v53;
      *(a3 + 16) = v54;
      *&v54 = 0;
      v53 = 0uLL;
      *(a3 + 96) = 0;
      __p.__r_.__value_.__r.__words[0] = &v53;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      __p.__r_.__value_.__r.__words[0] = &v38;
      p_p = &__p;
      goto LABEL_12;
    }

    v16 = *(*(&v76 + 1) + 128);
    v57[0] = *(*(&v76 + 1) + 112);
    v57[1] = v16;
    v17 = *(*(&v76 + 1) + 160);
    v58 = *(*(&v76 + 1) + 144);
    *v59 = v17;
    v18 = *(*(&v76 + 1) + 64);
    v53 = *(*(&v76 + 1) + 48);
    v54 = v18;
    v19 = *(*(&v76 + 1) + 96);
    v55 = *(*(&v76 + 1) + 80);
    v56 = v19;
    __p.__r_.__value_.__r.__words[0] = 0;
    __p.__r_.__value_.__l.__size_ = &__p;
    __p.__r_.__value_.__r.__words[2] = 0x4812000000;
    v49 = __Block_byref_object_copy__14;
    v50 = __Block_byref_object_dispose__15;
    v51 = "";
    memset(v52, 0, sizeof(v52));
    v47[0] = MEMORY[0x29EDCA5F8];
    v47[1] = 3221225472;
    v47[2] = ___ZN4SLAM21DefaultScriptProvider18FindScriptMatchingENSt3__18functionIFbRK16SLAMScriptDERObjEEE_block_invoke_16;
    v47[3] = &unk_29F290D30;
    v47[4] = &__p;
    v20 = DERDecodeSequenceContentWithBlock(v57, v47);
    if (v20)
    {
      SLAM::Error::Unexpected("Failed to decode APDUs %d", &v38, v20);
      *a3 = v38;
      *(a3 + 16) = v39;
      *&v39 = 0;
      v38 = 0uLL;
      *(a3 + 96) = 0;
      v45[0] = &v38;
      v21 = v45;
LABEL_29:
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v21);
LABEL_30:
      _Block_object_dispose(&__p, 8);
      *&v38 = v52;
      std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&v38);
      goto LABEL_13;
    }

    v22 = *(v84 + 6) <= 2u || v59[1] == 0;
    v23 = !v22;
    if (v22)
    {
      v24 = 0;
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      if (DERParseSequenceContent(v59, slamScriptMemoryItemSpecLen, &slamScriptMemoryItemSpec, &v38, 0x40uLL))
      {
        SLAM::Error::Error(&v43, "Could not parse memory constraints within SEFW");
        v45[0] = 0;
        v45[1] = 0;
        v46 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v45, v43, v44, 0xAAAAAAAAAAAAAAABLL * ((v44 - v43) >> 3));
        *a3 = *v45;
        *(a3 + 16) = v46;
        v45[1] = 0;
        v46 = 0;
        v45[0] = 0;
        *(a3 + 96) = 0;
        v90 = v45;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v90);
        v90 = &v43;
        v21 = &v90;
        goto LABEL_29;
      }

      v24 = v38;
      v3 = v39;
      v4 = v40;
    }

    v45[1] = 0;
    v46 = 0;
    v45[0] = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v45, v55, v55 + *(&v55 + 1), *(&v55 + 1));
    v27 = v58;
    if (v58)
    {
      v27 = bswap32(*v58);
    }

    if (v23)
    {
      v28 = bswap32(*v24);
      v25 = bswap32(*v3);
      v26 = bswap32(*v4);
      v29 = 1;
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    v30 = bswap64(*v53);
    v31 = v46;
    v32 = *v45;
    v45[0] = 0;
    v45[1] = 0;
    v46 = 0;
    size = __p.__r_.__value_.__l.__size_;
    v34 = *(__p.__r_.__value_.__l.__size_ + 48);
    v35 = *(__p.__r_.__value_.__l.__size_ + 56);
    v36 = 0xAAAAAAAAAAAAAAABLL * ((*(__p.__r_.__value_.__l.__size_ + 56) - v34) >> 3);
    *(__p.__r_.__value_.__l.__size_ + 56) = 0;
    *(size + 64) = 0;
    *(size + 48) = 0;
    *v42 = v27;
    LOBYTE(size) = *(v61 + 52);
    *&v42[4] = *(v61 + 12);
    v42[8] = size;
    *&v42[12] = v28;
    *&v42[16] = v25;
    *&v42[20] = v26;
    v42[24] = v29;
    *a3 = v30;
    *(a3 + 8) = v32;
    v38 = v30;
    v39 = 0uLL;
    *(a3 + 24) = v31;
    *(a3 + 32) = v36;
    *(a3 + 40) = v34;
    v41 = 0uLL;
    v40 = v36;
    *(a3 + 73) = *&v42[9];
    v37 = *v42;
    *(a3 + 48) = v35;
    *(a3 + 64) = v37;
    *(a3 + 96) = 1;
    SLAM::Script::~Script(&v38);
    if (v45[0])
    {
      v45[1] = v45[0];
      operator delete(v45[0]);
    }

    goto LABEL_30;
  }

  SLAM::Error::Error(&v53, "Legacy (plist) SLAM SEFW path is no longer supported");
  v76 = 0uLL;
  v77 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v76, v53, *(&v53 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v53 + 1) - v53) >> 3));
  *a3 = v76;
  *(a3 + 16) = v77;
  v77 = 0;
  v76 = 0uLL;
  *(a3 + 96) = 0;
  *&v38 = &v76;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v38);
  *&v38 = &v53;
  v14 = &v38;
LABEL_19:
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v14);
LABEL_20:
  v15 = *MEMORY[0x29EDCA608];
}

void sub_299ED113C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  *(v70 - 192) = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v70 - 192));
  _Block_object_dispose(&__p, 8);
  std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::~__value_func[abi:ne200100](v69 + 64);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a69, 8);
  if (LOBYTE(STACK[0x228]) == 1)
  {
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a45);
  }

  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Unwind_Resume(a1);
}

void SLAM::DefaultScriptProvider::GetScript(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *MEMORY[0x29EDCA608];
  v4 = a4;
  operator new();
}

void sub_299ED1328(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  result = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v6;
  *(a1 + 160) = v7;
  *(a1 + 128) = result;
  return result;
}

__n128 __Block_byref_object_copy__5(uint64_t a1, __n128 *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (a2[4].n128_u8[8] == 1)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    result = a2[3];
    *(a1 + 48) = result;
    *(a1 + 64) = a2[4].n128_u64[0];
    a2[3].n128_u64[0] = 0;
    a2[3].n128_u64[1] = 0;
    a2[4].n128_u64[0] = 0;
    *(a1 + 72) = 1;
  }

  return result;
}

void __Block_byref_object_dispose__6(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v3[1] = v1;
    v3[2] = v2;
    v3[0] = (a1 + 48);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v3);
  }
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 52) = *(a2 + 52);
  *(result + 48) = v2;
  return result;
}

unint64_t *___ZN4SLAM21DefaultScriptProvider18FindScriptMatchingENSt3__18functionIFbRK16SLAMScriptDERObjEEE_block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = DERParseSequenceContent((a2 + 8), slamScriptItemSpecLen, &slamScriptItemSpec, &v24, 0x80uLL);
  if (!v5)
  {
    if (*(*(a1[4] + 8) + 24) >= 2u)
    {
      if (*(&v29 + 1) != 4)
      {
        std::string::basic_string[abi:ne200100](__p, v25, *(&v25 + 1));
        if (v22 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        SLAM::Error::Error(&v23, "Platform Category absent for a script with name %s", v6);
        std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error,void>((*(a1[5] + 8) + 48), &v23);
        v32 = &v23;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        *a3 = 1;
      }

      v7 = bswap32(*v29);
      if (v7 >= 3)
      {
        v8 = 0;
      }

      else
      {
        v8 = v7;
      }

      v9 = *(a1[6] + 8);
      *(v9 + 48) = v8;
      *(v9 + 52) = v7 < 3;
      if ((*(*(a1[6] + 8) + 52) & 1) == 0)
      {
        std::string::basic_string[abi:ne200100](__p, v25, *(&v25 + 1));
        if (v22 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        SLAM::Error::Error(&v23, "Platform Category %d is unknown in script with name %s", v7, v10);
        std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error,void>((*(a1[5] + 8) + 48), &v23);
        v32 = &v23;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        *a3 = 1;
      }
    }

    v11 = a1[11];
    if (!v11)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v11 + 48))(v11, &v24))
    {
      v12 = *(a1[7] + 8);
      v13 = v25;
      v15 = v26;
      v14 = v27;
      *(v12 + 48) = v24;
      v16 = v28;
      v18 = v30;
      v17 = v31;
      *(v12 + 128) = v29;
      *(v12 + 144) = v18;
      *(v12 + 160) = v17;
      v19 = *(v12 + 176);
      *(v12 + 64) = v13;
      *(v12 + 80) = v15;
      *(v12 + 96) = v14;
      *(v12 + 112) = v16;
      if ((v19 & 1) == 0)
      {
        *(v12 + 176) = 1;
      }

      *a3 = 1;
    }
  }

  return v5;
}

void sub_299ED1644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v17 - 56) = v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v17 - 56));
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

std::vector<std::string> *std::optional<SLAM::Error>::operator=[abi:ne200100]<SLAM::Error,void>(std::vector<std::string> *this, std::vector<std::string> *a2)
{
  if (LOBYTE(this[1].__begin_) == 1)
  {
    std::vector<std::string>::__vdeallocate(this);
    *&this->__begin_ = *&a2->__begin_;
    this->__end_cap_.__value_ = a2->__end_cap_.__value_;
    a2->__begin_ = 0;
    a2->__end_ = 0;
    a2->__end_cap_.__value_ = 0;
  }

  else
  {
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    *this = *a2;
    a2->__begin_ = 0;
    a2->__end_ = 0;
    a2->__end_cap_.__value_ = 0;
    LOBYTE(this[1].__begin_) = 1;
  }

  return this;
}

__n128 __Block_byref_object_copy__14(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t ___ZN4SLAM21DefaultScriptProvider18FindScriptMatchingENSt3__18functionIFbRK16SLAMScriptDERObjEEE_block_invoke_16(uint64_t a1, void *a2)
{
  if (*a2 != 4)
  {
    return 2;
  }

  v2 = *(*(a1 + 32) + 8);
  v5 = a2[1];
  v4 = a2[2];
  v3 = a2 + 1;
  v9 = v5 + v4;
  v6 = *(v2 + 56);
  if (v6 >= *(v2 + 64))
  {
    v7 = std::vector<std::vector<unsigned char>>::__emplace_back_slow_path<unsigned char *&,unsigned char *>(v2 + 48, v3, &v9);
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v6, v5, v5 + v4, v4);
    v7 = (v6 + 3);
    *(v2 + 56) = v6 + 3;
  }

  result = 0;
  *(v2 + 56) = v7;
  return result;
}

void SLAM::Script::~Script(SLAM::Script *this)
{
  v3 = (this + 40);
  std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void SLAM::DefaultScriptProvider::~DefaultScriptProvider(SLAM::DefaultScriptProvider *this)
{
  *this = &unk_2A2026BB0;
  v2 = *(this + 1);
  if (v2)
  {
    munmap(v2, *(this + 2));
  }

  *(this + 2) = 0;
}

{
  *this = &unk_2A2026BB0;
  v2 = *(this + 1);
  if (v2)
  {
    munmap(v2, *(this + 2));
  }

  *(this + 2) = 0;

  JUMPOUT(0x29C2B5F30);
}

void *applesauce::v1::mapped_file::mapped_file(void *a1, uint64_t a2, __int16 a3)
{
  *a1 = 0;
  a1[1] = 0;
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = open(v6, 0);
  if (v7 < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v22, "open()");
    v15 = __error();
  }

  v8 = v7;
  if (fstat(v7, &v22) < 0)
  {
    v16 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v20, "fstat()");
    v17 = __error();
  }

  st_size = v22.st_size;
  a1[1] = v22.st_size;
  if (a3)
  {
    v10 = 0x7FFFFFFF;
    if (st_size < 0x7FFFFFFF)
    {
      v10 = st_size;
    }

    v21 = v10;
    v20 = 0;
    fcntl(v8, 44, &v20);
    st_size = a1[1];
  }

  if ((a3 & 0x100) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 1025;
  }

  v12 = mmap(0, st_size, 1, v11, v8, 0);
  *a1 = v12;
  if (v12 == -1)
  {
    v18 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v20, "mmap()");
    v19 = __error();
  }

  close(v8);
  return a1;
}

void sub_299ED1BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      close(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void applesauce::v1::anonymous namespace::io_failure_exception(const void **a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, std::ios_base::failure *a4@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  v9 = &v19;
  std::string::basic_string[abi:ne200100](&v19, v8 + 13);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v19.__r_.__value_.__r.__words[0];
  }

  if (v8)
  {
    if (*(a1 + 23) >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    memmove(v9, v10, v8);
  }

  strcpy(v9 + v8, " failed for '");
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = std::string::append(&v19, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v20, "'");
  v17 = *&v16->__r_.__value_.__l.__data_;
  __msg.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&__msg.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  *&__ec.__val_ = a3;
  __ec.__cat_ = std::generic_category();
  std::ios_base::failure::failure(a4, &__msg, &__ec);
  if (SHIBYTE(__msg.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__msg.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_299ED1DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t std::__function::__func<SLAM::DefaultScriptProvider::GetScriptByID(unsigned long long)::$_0,std::allocator<SLAM::DefaultScriptProvider::GetScriptByID(unsigned long long)::$_0>,BOOL ()(SLAMScriptDERObj const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2026C60;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 std::__function::__func<SLAM::DefaultScriptProvider::GetScript(std::string,std::vector<unsigned char>,SLAM::PlatformCategory)::$_0,std::allocator<SLAM::DefaultScriptProvider::GetScript(std::string,std::vector<unsigned char>,SLAM::PlatformCategory)::$_0>,BOOL ()(SLAMScriptDERObj const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2026CA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL std::__function::__func<SLAM::DefaultScriptProvider::GetScript(std::string,std::vector<unsigned char>,SLAM::PlatformCategory)::$_0,std::allocator<SLAM::DefaultScriptProvider::GetScript(std::string,std::vector<unsigned char>,SLAM::PlatformCategory)::$_0>,BOOL ()(SLAMScriptDERObj const&)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 88) == 4)
  {
    v4 = bswap32(**(a2 + 80));
  }

  else
  {
    v4 = 1;
  }

  v5 = *(a2 + 24);
  v6 = *(a1 + 8);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (v5 != v6[1])
    {
      return 0;
    }

    v6 = *v6;
  }

  else if (v5 != v7)
  {
    return 0;
  }

  if (memcmp(v6, *(a2 + 16), v5))
  {
    return 0;
  }

  v8 = *(a2 + 40);
  v9 = *(a1 + 16);
  if (v8 != *(v9 + 8) - *v9 || memcmp(*v9, *(a2 + 32), v8))
  {
    return 0;
  }

  return !v4 || **(a1 + 24) == v4;
}

uint64_t std::__function::__value_func<BOOL ()(SLAMScriptDERObj const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::vector<std::vector<unsigned char>>::__emplace_back_slow_path<unsigned char *&,unsigned char *>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v23 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned char>>>(a1, v8);
  }

  v9 = 24 * v3;
  v19 = 0;
  v20 = v9;
  v21 = 24 * v3;
  v22 = 0;
  v10 = *a2;
  v11 = *a3;
  v12 = *a3 - *a2;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(24 * v3, v10, v11, v12);
  v13 = v21 + 24;
  v14 = *(a1 + 8) - *a1;
  v15 = &v20[-v14];
  memcpy(&v20[-v14], *a1, v14);
  v16 = *a1;
  *a1 = v15;
  *(a1 + 8) = v13;
  v17 = *(a1 + 16);
  *(a1 + 16) = v22;
  v21 = v16;
  v22 = v17;
  v19 = v16;
  v20 = v16;
  std::__split_buffer<std::vector<unsigned char>>::~__split_buffer(&v19);
  return v13;
}

void sub_299ED2308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<unsigned char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<unsigned char>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<unsigned char>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<unsigned char>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v5);
  if (!result)
  {
    if (HIDWORD(v5[0]))
    {
      result = 7;
    }

    else
    {
      result = 0;
      *a2 = v5[0];
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v9[3] = *MEMORY[0x29EDCA608];
  memset(v9, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v9, 0);
  if (result)
  {
    goto LABEL_7;
  }

  v6 = v9[0];
  *a2 = v9[0];
  if (v6 >> 1 != 0x1000000000000008)
  {
    result = 2;
    goto LABEL_7;
  }

  if (__CFADD__(v9[1], v9[2]))
  {
    __break(0x5513u);
  }

  else
  {
    v7 = v9[1] + v9[2];
    if (v9[1] <= v9[1] + v9[2])
    {
      result = 0;
      *a3 = v9[1];
      a3[1] = v7;
LABEL_7:
      v8 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v11[2] = *MEMORY[0x29EDCA608];
  v11[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    result = 1;
    goto LABEL_8;
  }

  v11[0] = *a1;
  v11[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v11, a2, 0);
  if (result)
  {
LABEL_8:
    v10 = *MEMORY[0x29EDCA608];
    return result;
  }

  v8 = a2[1];
  v7 = a2[2];
  if (!__CFADD__(v8, v7))
  {
    v9 = v8 + v7;
    if (v9 <= a1[1] && *a1 <= v9)
    {
      result = 0;
      *a1 = v9;
      goto LABEL_8;
    }

    __break(0x5519u);
  }

  __break(0x5513u);
  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v13[3] = *MEMORY[0x29EDCA608];
  memset(v13, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v13, 0);
  if (!result)
  {
    if (v13[0] == 0x2000000000000010)
    {
      result = DERParseSequenceContentToObject(&v13[1], a2, a3, a4, a5, a6);
    }

    else
    {
      result = 2;
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v38 = *MEMORY[0x29EDCA608];
  v36 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v36 = *a1;
  v37 = v13;
  if (a2)
  {
    v14 = 0;
    while (1)
    {
      memset(v35, 170, sizeof(v35));
      v16 = v36;
      v15 = v37;
      result = DERDecodeSeqNext(&v36, v35);
      if (result)
      {
        if (result == 1)
        {
          if (a2 <= v14)
          {
            result = 0;
          }

          else
          {
            v29 = (a3 + 24 * v14 + 16);
            v30 = a2 - v14;
            result = 0;
            while (1)
            {
              v31 = *v29;
              v29 += 12;
              if ((v31 & 1) == 0)
              {
                break;
              }

              if (!--v30)
              {
                goto LABEL_51;
              }
            }

            result = 5;
          }
        }

        goto LABEL_51;
      }

      if (a2 <= v14)
      {
        result = 2;
        goto LABEL_51;
      }

      while (1)
      {
        if (24 * v14 > ~a3)
        {
          goto LABEL_58;
        }

        v18 = a3 + 24 * v14;
        v19 = *(v18 + 16);
        if ((v19 & 2) != 0 || v35[0] == *(v18 + 8))
        {
          break;
        }

        result = 2;
        if ((v19 & 1) != 0 && a2 > ++v14)
        {
          continue;
        }

        goto LABEL_51;
      }

      if ((v19 & 4) == 0)
      {
        v20 = *v18;
        v21 = *v18 + 16;
        if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
        {
          result = 7;
          goto LABEL_51;
        }

        if (v20 > ~a4)
        {
          goto LABEL_58;
        }

        v23 = (a4 + v20);
        v24 = v23 + 16;
        if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
        {
          goto LABEL_59;
        }

        *v23 = *&v35[1];
        if ((v19 & 8) != 0)
        {
          if (v16 >= v35[1])
          {
            if (v15 < v16 || *(v23 + 1) > v15 - v16)
            {
              goto LABEL_59;
            }

            *v23 = v16;
            result = 3;
            goto LABEL_51;
          }

          v27 = *(v23 + 1);
          v28 = v27 + v35[1] - v16;
          if (__CFADD__(v27, v35[1] - v16))
          {
            __break(0x5500u);
            return result;
          }

          if (v15 < v16 || v28 > v15 - v16)
          {
            goto LABEL_59;
          }

          *v23 = v16;
          *(v23 + 1) = v28;
        }
      }

      if (a2 == ++v14)
      {
        if (!__CFADD__(v35[1], v35[2]))
        {
          v32 = a1[1];
          if (!__CFADD__(*a1, v32))
          {
            v11 = v35[1] + v35[2];
            v13 = *a1 + v32;
            break;
          }
        }

LABEL_58:
        __break(0x5513u);
        goto LABEL_59;
      }

      if (a2 <= v14)
      {
        v11 = v36;
        v13 = v37;
        break;
      }
    }
  }

  if (v11 == v13)
  {
    result = 0;
  }

  else
  {
    result = 3;
  }

LABEL_51:
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  memset(v5, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v5, 0);
  if (!result)
  {
    if (v5[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      result = DERDecodeSequenceContentWithBlock(&v5[1], a2);
    }

    else
    {
      result = 2;
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x29EDCA608];
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v10[0] = *a1;
  v10[1] = v4;
  memset(v9, 170, sizeof(v9));
  v8 = 0;
  do
  {
    if (v8)
    {
      result = 0;
      goto LABEL_11;
    }

    LODWORD(result) = DERDecodeSeqNext(v10, v9);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v9, &v8);
  }

  while (!result);
  if (result <= 1)
  {
    result = 0;
  }

  else
  {
    result = result;
  }

LABEL_11:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t DEREncodeLengthSized(unint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (result < 0x80)
  {
    if (a3)
    {
      if (*a4)
      {
        *a2 = result;
        if (*a4)
        {
          v4 = 1;
LABEL_19:
          v9 = 0;
          *a4 = v4;
          return v9;
        }
      }

      goto LABEL_22;
    }

    return 7;
  }

  v5 = 0;
  v6 = result;
  do
  {
    --v5;
    v7 = v6 > 0xFF;
    v6 >>= 8;
  }

  while (v7);
  v8 = -v5;
  v9 = 7;
  if (-v5 >= a3 || v8 > 0x7E)
  {
    return v9;
  }

  if (*a4)
  {
    v4 = 1 - v5;
    *a2 = -v5 | 0x80;
    if (v8 < ~a2)
    {
      v10 = (a2 - v5);
      if (a2 - v5 != -2)
      {
        v11 = (a2 + *a4);
        while (v10 != -1)
        {
          if (v10 >= v11 || v10 < a2)
          {
            goto LABEL_22;
          }

          *v10-- = result;
          v7 = result > 0xFF;
          result >>= 8;
          if (!v7)
          {
            if (v8 >= *a4)
            {
              goto LABEL_22;
            }

            goto LABEL_19;
          }
        }
      }
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(0x5519u);
LABEL_23:
  __break(0x5513u);
  return result;
}

uint64_t DEREncodeTag(uint64_t result, unint64_t a2, unint64_t *a3)
{
  v3 = result & 0x1FFFFFFFFFFFFFFFLL;
  if ((result & 0x1FFFFFFFFFFFFFFFuLL) < 0x1F)
  {
    if (*a3)
    {
      *a2 = HIBYTE(result) & 0xE0 | result;
      v8 = 1;
      goto LABEL_16;
    }

    return 7;
  }

  v4 = 0;
  v5 = result & 0x1FFFFFFFFFFFFFFFLL;
  do
  {
    ++v4;
    v6 = v5 > 0x7F;
    v5 >>= 7;
  }

  while (v6);
  v7 = *a3;
  if (v4 >= *a3)
  {
    return 7;
  }

  if (v4 < ~a2)
  {
    *a2 = HIBYTE(result) | 0x1F;
    if (a2 + v4 != -2)
    {
      v8 = v4 + 1;
      *(a2 + v4) = result & 0x7F;
      if (v3 >= 0x80)
      {
        v9 = (a2 + v4 - 1);
        v10 = (a2 + v7);
        while (v9 != -2)
        {
          if (v9 >= v10 || v9 < a2)
          {
            goto LABEL_19;
          }

          v11 = v3 >> 14;
          v3 >>= 7;
          *v9-- = v3 | 0x80;
          if (!v11)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_20;
      }

LABEL_16:
      if (v8 <= *a3)
      {
        result = 0;
        *a3 = v8;
        return result;
      }

LABEL_19:
      __break(0x5519u);
    }
  }

LABEL_20:
  __break(0x5513u);
  return result;
}

uint64_t DEREncodeSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t *a8)
{
  v48[1] = *MEMORY[0x29EDCA608];
  v8 = ~a6;
  if (~a6 < a7)
  {
    goto LABEL_72;
  }

  v11 = *a8;
  v47 = a7;
  v48[0] = 0;
  if (v11 < a7)
  {
    goto LABEL_73;
  }

  result = DEREncodeTag(a1, a6, &v47);
  if (result)
  {
    goto LABEL_17;
  }

  v17 = v47;
  if (v47 > v8)
  {
    goto LABEL_72;
  }

  v18 = a7 - v47;
  if (a7 >= v47)
  {
    v19 = a6 + a7;
    v20 = a6 + v47;
    if (a6 + v47 >= v19)
    {
LABEL_16:
      result = 7;
      goto LABEL_17;
    }

    result = DERContentLengthOfEncodedSequence(a2, a3, a4, a5, v48);
    if (!result)
    {
      v47 = v18;
      if (v20 > a6 + v11 || v20 < a6 || v18 > v11 - v17)
      {
        goto LABEL_73;
      }

      v45 = a6 + v11;
      v21 = v48[0];
      result = DEREncodeLengthSized(v48[0], a6 + v17, v18, &v47);
      if (!result)
      {
        v22 = v45;
        if (__CFADD__(v20, v47))
        {
          goto LABEL_72;
        }

        v23 = v18 - v47;
        if (v18 >= v47)
        {
          v24 = (v20 + v47);
          if (!__CFADD__(v20 + v47, v21))
          {
            if (&v24[v21] > v19)
            {
              goto LABEL_16;
            }

            if (a4)
            {
              v26 = 0;
              v44 = a2 + a3;
              v43 = ~a5;
              v27 = a5 + 8;
              v42 = 24 * a4;
              do
              {
                if (v26 > v43)
                {
                  goto LABEL_72;
                }

                v28 = *(v27 - 8);
                if (v28 > ~a2)
                {
                  goto LABEL_72;
                }

                v29 = (a2 + v28);
                v30 = *(v27 + 8);
                if ((v30 & 0x200) != 0)
                {
                  v39 = v29 < a2 || (v29 + 2) > v44;
                  if (v39 || v24 > v22 || v24 < a6)
                  {
                    goto LABEL_73;
                  }

                  v37 = v29[1];
                  v38 = v22 - v24;
                }

                else
                {
                  if (v30)
                  {
                    if (v29 < a2 || (v29 + 2) > v44)
                    {
                      goto LABEL_73;
                    }

                    if (!v29[1])
                    {
                      goto LABEL_69;
                    }
                  }

                  v47 = v23;
                  if (v24 > v22 || v24 < a6 || v23 > v22 - v24)
                  {
                    goto LABEL_73;
                  }

                  result = DEREncodeTag(*v27, v24, &v47);
                  if (result)
                  {
                    goto LABEL_17;
                  }

                  if (__CFADD__(v24, v47))
                  {
                    goto LABEL_72;
                  }

                  v32 = v23 - v47;
                  if (v23 < v47)
                  {
                    goto LABEL_74;
                  }

                  if (v29 < a2 || (v29 + 2) > v44)
                  {
                    goto LABEL_73;
                  }

                  v33 = v29[1];
                  v48[0] = v33;
                  v34 = 1;
                  if ((v30 & 0x100) != 0 && v33 && **v29 < 0)
                  {
                    v34 = 0;
                    v48[0] = ++v33;
                  }

                  v35 = &v24[v47];
                  v47 = v23 - v47;
                  if (v35 > v45 || v35 < a6 || v32 > v45 - v35)
                  {
                    goto LABEL_73;
                  }

                  result = DEREncodeLengthSized(v33, v35, v32, &v47);
                  if (result)
                  {
                    goto LABEL_17;
                  }

                  v36 = v47;
                  if (__CFADD__(v35, v47))
                  {
                    goto LABEL_72;
                  }

                  v23 = v32 - v47;
                  if (v32 < v47)
                  {
                    goto LABEL_74;
                  }

                  v24 = (v35 + v47);
                  if ((v34 & 1) == 0)
                  {
                    if (v24 == -1)
                    {
                      goto LABEL_72;
                    }

                    if (v24 >= v45 || v24 < a6)
                    {
                      goto LABEL_73;
                    }

                    *v24 = 0;
                    --v23;
                    if (v32 == v36)
                    {
                      goto LABEL_74;
                    }

                    ++v24;
                  }

                  if (v24 > v45 || v24 < a6)
                  {
                    goto LABEL_73;
                  }

                  v37 = v29[1];
                  v38 = v45 - v24;
                }

                if (v37 > v38)
                {
                  goto LABEL_73;
                }

                result = memmove(v24, *v29, v37);
                if (v24 > &v24[v37])
                {
                  goto LABEL_73;
                }

                v40 = v29[1];
                v22 = v45;
                if (__CFADD__(v24, v40))
                {
                  goto LABEL_72;
                }

                v41 = v23 >= v40;
                v23 -= v40;
                if (!v41)
                {
                  goto LABEL_74;
                }

                v24 += v40;
LABEL_69:
                v27 += 24;
                v26 += 24;
              }

              while (v42 != v26);
            }

            if (&v24[-a6] <= *a8)
            {
              result = 0;
              *a8 = &v24[-a6];
              goto LABEL_17;
            }

LABEL_73:
            __break(0x5519u);
          }

LABEL_72:
          __break(0x5513u);
          goto LABEL_73;
        }

        goto LABEL_74;
      }
    }

LABEL_17:
    v25 = *MEMORY[0x29EDCA608];
    return result;
  }

LABEL_74:
  __break(0x5515u);
  return result;
}

unint64_t DERContentLengthOfEncodedSequence(unint64_t result, unint64_t a2, int a3, uint64_t a4, void *a5)
{
  v5 = 0;
  if (!a3)
  {
LABEL_38:
    result = 0;
LABEL_40:
    *a5 = v5;
    return result;
  }

  v6 = 0;
  v7 = result + a2;
  while (24 * v6 <= ~a4)
  {
    v8 = a4 + 24 * v6;
    v9 = *v8;
    v10 = *v8 > 0xFFFFFFFFFFFFFFEFLL || *v8 + 16 > a2;
    if (v10)
    {
      v5 = 0;
      result = 7;
      goto LABEL_40;
    }

    if (v9 > ~result)
    {
      break;
    }

    v11 = (result + v9);
    v12 = *(v8 + 16);
    if ((v12 & 0x200) == 0)
    {
      if (v12)
      {
        if (v11 < result || (v11 + 2) > v7)
        {
          goto LABEL_43;
        }

        if (!v11[1])
        {
          goto LABEL_37;
        }
      }

      v14 = *(v8 + 8) & 0x1FFFFFFFFFFFFFFFLL;
      v15 = 1;
      if (v14 >= 0x1F)
      {
        do
        {
          ++v15;
          v10 = v14 > 0x7F;
          v14 >>= 7;
        }

        while (v10);
      }

      v16 = __CFADD__(v5, v15);
      v17 = v5 + v15;
      if (v16)
      {
        goto LABEL_42;
      }

      if (v11 < result || (v11 + 2) > v7)
      {
        goto LABEL_43;
      }

      v18 = v11[1];
      if ((v12 & 0x100) != 0)
      {
        if (v18)
        {
          v18 += **v11 >> 7;
          goto LABEL_24;
        }

LABEL_25:
        v19 = 1;
      }

      else
      {
LABEL_24:
        if (v18 < 0x80)
        {
          goto LABEL_25;
        }

        v19 = 1;
        v22 = v18;
        do
        {
          ++v19;
          v10 = v22 > 0xFF;
          v22 >>= 8;
        }

        while (v10);
      }

      v16 = __CFADD__(v17, v19);
      v23 = v17 + v19;
      if (v16)
      {
        goto LABEL_42;
      }

      v16 = __CFADD__(v23, v18);
      v5 = v23 + v18;
      if (v16)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (v11 < result || (v11 + 2) > v7)
    {
      goto LABEL_43;
    }

    v21 = v11[1];
    v16 = __CFADD__(v5, v21);
    v5 += v21;
    if (v16)
    {
      goto LABEL_42;
    }

LABEL_37:
    if (++v6 == a3)
    {
      goto LABEL_38;
    }
  }

  __break(0x5513u);
LABEL_42:
  __break(0x5500u);
LABEL_43:
  __break(0x5519u);
  return result;
}

uint64_t DEREncodeSequence(uint64_t result, unint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  if ((a2 | 0x7FFFFFFFFFFFFFFFLL) >= a2)
  {
    return DEREncodeSequenceFromObject(result, a2, ~a2 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, a5, *a6, a6);
  }

  __break(0x5519u);
  return result;
}

unint64_t DERLengthOfEncodedSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t *a6)
{
  v18[1] = *MEMORY[0x29EDCA608];
  v18[0] = 0;
  result = DERContentLengthOfEncodedSequence(a2, a3, a4, a5, v18);
  if (result)
  {
    goto LABEL_10;
  }

  v9 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  v10 = 1;
  if ((a1 & 0x1FFFFFFFFFFFFFFFuLL) >= 0x1F)
  {
    do
    {
      ++v10;
      v11 = v9 > 0x7F;
      v9 >>= 7;
    }

    while (v11);
  }

  v12 = 1;
  if (v18[0] >= 0x80uLL)
  {
    v13 = v18[0];
    do
    {
      ++v12;
      v11 = v13 > 0xFF;
      v13 >>= 8;
    }

    while (v11);
  }

  v14 = __CFADD__(v10, v12);
  v15 = v10 + v12;
  if (!v14)
  {
    v14 = __CFADD__(v15, v18[0]);
    v16 = v15 + v18[0];
    if (!v14)
    {
      result = 0;
      *a6 = v16;
LABEL_10:
      v17 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  __break(0x5500u);
  return result;
}

uint64_t DERLengthOfEncodedSequence(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v6[1] = *MEMORY[0x29EDCA608];
  v6[0] = 0;
  if ((a2 | 0x7FFFFFFFFFFFFFFFLL) < a2)
  {
    __break(0x5519u);
  }

  if (DERLengthOfEncodedSequenceFromObject(a1, a2, ~a2 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, v6))
  {
    result = 0;
  }

  else
  {
    result = v6[0];
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}