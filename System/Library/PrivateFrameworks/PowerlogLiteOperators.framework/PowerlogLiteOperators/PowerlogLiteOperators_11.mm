uint64_t UtraFddStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v96 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v96 & 0x7F) << v5;
        if ((v96 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x80u;
          while (1)
          {
            v108 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v108 & 0x7F) << v13;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_168:
              v94 = 40;
              goto LABEL_189;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_168;
        case 2u:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 64) |= 2u;
          while (1)
          {
            v107 = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              v68 = [a2 data];
              [v68 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v65 |= (v107 & 0x7F) << v63;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v11 = v64++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_172;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v65;
          }

LABEL_172:
          v94 = 16;
          goto LABEL_189;
        case 3u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 64) |= 0x200u;
          while (1)
          {
            v106 = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v106 & 0x7F) << v45;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_156;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v47;
          }

LABEL_156:
          v94 = 48;
          goto LABEL_189;
        case 4u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 64) |= 0x40u;
          while (1)
          {
            v105 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v105 & 0x7F) << v51;
            if ((v105 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_160;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v53;
          }

LABEL_160:
          v94 = 36;
          goto LABEL_189;
        case 5u:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 64) |= 0x100u;
          while (1)
          {
            v104 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v104 & 0x7F) << v26;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_144;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v28;
          }

LABEL_144:
          v94 = 44;
          goto LABEL_189;
        case 6u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 64) |= 0x20u;
          while (1)
          {
            v103 = 0;
            v72 = [a2 position] + 1;
            if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
            {
              v74 = [a2 data];
              [v74 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v71 |= (v103 & 0x7F) << v69;
            if ((v103 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v11 = v70++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_176;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v71;
          }

LABEL_176:
          v94 = 32;
          goto LABEL_189;
        case 7u:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 64) |= 0x800u;
          while (1)
          {
            v102 = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              v81 = [a2 data];
              [v81 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v78 |= (v102 & 0x7F) << v76;
            if ((v102 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v11 = v77++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_180;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v78;
          }

LABEL_180:
          v94 = 56;
          goto LABEL_189;
        case 8u:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 64) |= 0x1000u;
          while (1)
          {
            v101 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v101 & 0x7F) << v57;
            if ((v101 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v11 = v58++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_164;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v59;
          }

LABEL_164:
          v94 = 60;
          goto LABEL_189;
        case 9u:
          v88 = 0;
          v89 = 0;
          v90 = 0;
          *(a1 + 64) |= 0x400u;
          while (1)
          {
            v100 = 0;
            v91 = [a2 position] + 1;
            if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
            {
              v93 = [a2 data];
              [v93 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v90 |= (v100 & 0x7F) << v88;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v88 += 7;
            v11 = v89++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_188;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v90;
          }

LABEL_188:
          v94 = 52;
          goto LABEL_189;
        case 0xAu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            v99 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v99 & 0x7F) << v39;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_152;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v41;
          }

LABEL_152:
          v94 = 24;
          goto LABEL_189;
        case 0xBu:
          v82 = 0;
          v83 = 0;
          v84 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            v98 = 0;
            v85 = [a2 position] + 1;
            if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
            {
              v87 = [a2 data];
              [v87 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v84 |= (v98 & 0x7F) << v82;
            if ((v98 & 0x80) == 0)
            {
              break;
            }

            v82 += 7;
            v11 = v83++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_184;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v84;
          }

LABEL_184:
          v94 = 28;
          goto LABEL_189;
        case 0xCu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            v97 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v97 & 0x7F) << v20;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_140;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v22;
          }

LABEL_140:
          v94 = 20;
LABEL_189:
          *(a1 + v94) = v19;
          goto LABEL_190;
        case 0xDu:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 64) |= 1u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_190;
      }

      while (1)
      {
        v109 = 0;
        v35 = [a2 position] + 1;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
        {
          v37 = [a2 data];
          [v37 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v34 |= (v109 & 0x7F) << v32;
        if ((v109 & 0x80) == 0)
        {
          break;
        }

        v32 += 7;
        v11 = v33++ >= 9;
        if (v11)
        {
          v38 = 0;
          goto LABEL_148;
        }
      }

      v38 = [a2 hasError] ? 0 : v34;
LABEL_148:
      *(a1 + 8) = v38;
LABEL_190:
      v95 = [a2 position];
    }

    while (v95 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __PLLogWifi_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "wifi");
  qword_2811F66F0 = v0;

  return MEMORY[0x2821F96F8](v0);
}

void WiFiDeviceAttached(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __WiFiDeviceAttached_block_invoke;
  block[3] = &unk_2782591D0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void WiFiVirtualInterfaceCallback(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__17;
  v22 = __Block_byref_object_dispose__17;
  v5 = a2;
  v23 = v5;
  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"LINK_CHANGED_IS_LINKDOWN"];

    if (v6)
    {
      v7 = [v4 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __WiFiVirtualInterfaceCallback_block_invoke;
      block[3] = &unk_278261A28;
      v16 = v4;
      v17 = &v18;
      dispatch_async(v7, block);
    }
  }

  v8 = v19[5];
  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D297F8]];
    if (v9)
    {
      v10 = [v19[5] objectForKeyedSubscript:*MEMORY[0x277D297F0]];

      if (v10)
      {
        v11 = [v4 workQueue];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __WiFiVirtualInterfaceCallback_block_invoke_2;
        v12[3] = &unk_278261A28;
        v13 = v4;
        v14 = &v18;
        dispatch_async(v11, v12);
      }
    }
  }

  _Block_object_dispose(&v18, 8);
}

void WiFiDeviceAvailableCallback(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE");
    if (CFBooleanGetValue(Value))
    {
      if (CFDictionaryContainsKey(a2, @"IO80211InterfaceWoWWakeUpParams"))
      {
        v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:CFDictionaryGetValue(a2 copyItems:{@"IO80211InterfaceWoWWakeUpParams", 1}];
      }

      else
      {
        v5 = 0;
      }

      [v6 logFromWiFiNoAvailableCallback:@"WiFiDeviceAvailableCallback" withAvailability:1 withWakeParams:v5];
    }
  }
}

void WiFiClientScanCacheCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__17;
  v18 = __Block_byref_object_dispose__17;
  v19 = a5;
  if (a2)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      CFRetain(a2);
      v7 = a2;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v7];
      v9 = v8;
      if (v15[5] && v8)
      {
        CFRelease(v7);
        v10 = [v15[5] workQueue];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __WiFiClientScanCacheCallback_block_invoke;
        v11[3] = &unk_27825F6D0;
        v13 = &v14;
        v12 = v9;
        dispatch_async(v10, v11);
      }
    }
  }

  _Block_object_dispose(&v14, 8);
}

void sub_21A9013A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WiFiDeviceLinkQualityChanged(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [v4 remainingAllowedRSSIEntryCount];
  if (a2 && v5)
  {
    v6 = a2;
    v7 = [v4 workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __WiFiDeviceLinkQualityChanged_block_invoke;
    v9[3] = &unk_278259658;
    v10 = v4;
    v11 = v6;
    v8 = v6;
    dispatch_async(v7, v9);
  }
}

void __WiFiDeviceAttached_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) findWifiDevice];

  objc_autoreleasePoolPop(v2);
}

void __WiFiVirtualInterfaceCallback_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) logEventForwardAWDLState:*(*(*(a1 + 40) + 8) + 40)];

  objc_autoreleasePoolPop(v2);
}

void __WiFiVirtualInterfaceCallback_block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) logEventForwardHotspotState:*(*(*(a1 + 40) + 8) + 40)];

  objc_autoreleasePoolPop(v2);
}

void __WiFiDeviceLinkQualityChanged_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) logEventForwardRSSI:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

id PLLogSensor()
{
  if (qword_2811F6900 != -1)
  {
    dispatch_once(&qword_2811F6900, &__block_literal_global_57);
  }

  v1 = _MergedGlobals_1_56;

  return v1;
}

uint64_t __PLLogSensor_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "sensor");
  _MergedGlobals_1_56 = v0;

  return MEMORY[0x2821F96F8](v0);
}

void hidEventCallback(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (IOHIDEventGetType() == 14)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v3 = IntegerValue & 0x400;
    v4 = PLLogSensor();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      v17 = IntegerValue;
      v18 = 1024;
      v19 = v3 >> 10;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Proximity event: Mask 0x%x, PocketState: %d", buf, 0xEu);
    }

    v5 = [v1 stateTracker];
    v6 = [v5 getCurrState:4];

    if ([v6 BOOLValue])
    {
      v14 = @"State";
      v7 = [MEMORY[0x277CCABB0] numberWithBool:v3 != 0];
      v15 = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      [v1 logEventPointProximity:v8];
    }

    else if ([v1 firstProximityEvent])
    {
      v9 = [MEMORY[0x277CCABB0] numberWithBool:{v3 != 0, @"State"}];
      v13 = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      [v1 logEventPointProximity:v10];

      [v1 setFirstProximityEvent:0];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t KCellularDownlinkIpPacketFilterStatusReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v52[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52[0] & 0x7F) << v5;
        if ((v52[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 == 4)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 40) |= 0x10u;
        while (1)
        {
          LOBYTE(v52[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v52[0] & 0x7F) << v35;
          if ((v52[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_79;
          }
        }

        v20 = (v37 != 0) & ~[a2 hasError];
LABEL_79:
        v48 = 37;
        goto LABEL_82;
      }

      if (v13 != 5)
      {
        if (v13 == 15)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 40) |= 4u;
          while (1)
          {
            LOBYTE(v52[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v52[0] & 0x7F) << v21;
            if ((v52[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_86;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_86:
          v49 = 32;
          goto LABEL_91;
        }

LABEL_60:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_92;
      }

      v47 = objc_alloc_init(Filter);
      [a1 addFilters:v47];
      v52[0] = 0;
      v52[1] = 0;
      if (!PBReaderPlaceMark() || !FilterReadFrom(v47, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_92:
      v50 = [a2 position];
      if (v50 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v52[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v52[0] & 0x7F) << v28;
          if ((v52[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

LABEL_77:
        *(a1 + 8) = v34;
        goto LABEL_92;
      case 2:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          LOBYTE(v52[0]) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v52[0] & 0x7F) << v41;
          if ((v52[0] & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_90;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v43;
        }

LABEL_90:
        v49 = 16;
LABEL_91:
        *(a1 + v49) = v27;
        goto LABEL_92;
      case 3:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 8u;
        while (1)
        {
          LOBYTE(v52[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v52[0] & 0x7F) << v14;
          if ((v52[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_81;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_81:
        v48 = 36;
LABEL_82:
        *(a1 + v48) = v20;
        goto LABEL_92;
    }

    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogSocPerfLevelsMBinReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v40 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v40 & 0x7F) << v28;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v30;
        }

LABEL_56:
        v35 = 20;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v39 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v39 & 0x7F) << v21;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_52:
          *(a1 + 8) = v27;
          goto LABEL_62;
        }

        if (v13 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_62;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v38 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v14;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_60;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_60:
        v35 = 16;
      }

      *(a1 + v35) = v20;
LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PLLogProximity()
{
  if (qword_2811F6918 != -1)
  {
    dispatch_once(&qword_2811F6918, &__block_literal_global_58);
  }

  v1 = qword_2811F6910;

  return v1;
}

uint64_t __PLLogProximity_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "proximity");
  qword_2811F6910 = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t AWDMETRICSKCellularPowerLogNRSub6SINRHistReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45[0] & 0x7F) << v5;
        if ((v45[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v45[0] & 0x7F) << v35;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_76;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

LABEL_76:
        *(a1 + 8) = v41;
        goto LABEL_79;
      }

      if (v13 != 2)
      {
        goto LABEL_62;
      }

      v21 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRSub6SINRHistMBin);
      [a1 addBin:v21];
      v45[0] = 0;
      v45[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogNRSub6SINRHistMBinReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_79:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 36) |= 4u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v45[0] & 0x7F) << v22;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_67:
        v42 = 28;
        goto LABEL_72;
      case 4:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v45[0] & 0x7F) << v29;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_71;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v31;
        }

LABEL_71:
        v42 = 24;
LABEL_72:
        *(a1 + v42) = v28;
        goto LABEL_79;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 36) |= 8u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v45[0] & 0x7F) << v14;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_78;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_78:
        *(a1 + 32) = v20;
        goto LABEL_79;
    }

LABEL_62:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_79;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogAcmPerfLevelsReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45[0] & 0x7F) << v5;
        if ((v45[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        a1[40] |= 2u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v45[0] & 0x7F) << v35;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_75;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v37;
        }

LABEL_75:
        v42 = 16;
        goto LABEL_76;
      }

      if (v13 != 2)
      {
        goto LABEL_62;
      }

      v21 = objc_alloc_init(AWDMETRICSKCellularPowerLogAcmPerfLevelsMBin);
      [a1 addBin:v21];
      v45[0] = 0;
      v45[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogAcmPerfLevelsMBinReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_82:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        a1[40] |= 8u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v45[0] & 0x7F) << v22;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v24;
        }

LABEL_67:
        v41 = 36;
        goto LABEL_81;
      case 4:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        a1[40] |= 1u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v45[0] & 0x7F) << v28;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_71;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

LABEL_71:
        v42 = 8;
LABEL_76:
        *&a1[v42] = v34;
        goto LABEL_82;
      case 0xF:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        a1[40] |= 4u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v45[0] & 0x7F) << v14;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_80;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_80:
        v41 = 32;
LABEL_81:
        *&a1[v41] = v20;
        goto LABEL_82;
    }

LABEL_62:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_82;
  }

  return [a2 hasError] ^ 1;
}

void TestEntryQueriesRequested(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.testMonotonicAggregateEntries"])
  {
    [v5 testMonotonicAggregateEntries];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.testMonotonicAggregateEntriesExtendedTime"])
  {
    [v5 testMonotonicAggregateEntriesExtendedTime];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.testProportionateAggregateEntries"])
  {
    [v5 testProportionateAggregateEntries];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.testEntryQueries"])
  {
    [v5 testEntryQueries];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.testEntryDelete"])
  {
    [v5 testEntryDelete];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.testEntryApplicationAgent"])
  {
    [v5 testEntryApplicationAgent];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.testEntrySleep"])
  {
    [v5 testEntrySleep];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.testEntryWake"])
  {
    [v5 testEntryWake];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.testAllEntryKeyRequests"])
  {
    [v5 testAllEntryKeyRequests];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.testFastInserts"])
  {
    [v5 testFastInserts];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.QMI"])
  {
    [v5 testABM];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.TestArrays"])
  {
    [v5 testArray];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.generateOTASubmission"])
  {
    [v5 testGenerateOTASubmission];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.generateSafeguardSubmission"])
  {
    [v5 testGenerateSafeguardSubmission];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.scheduleSafeguardSubmission"])
  {
    [v5 testScheduleSafeguardSubmission];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.stressTaskingSubmission"])
  {
    [v5 stressTaskingSubmission];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.dailyTasks"])
  {
    [v5 testDailyTasks];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.archive"])
  {
    [v5 testArchive];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.trimEPSQL"])
  {
    [v5 testTrimEPSQL];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.trimCESQL"])
  {
    [v5 testTrimCESQL];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.trimXCSQL"])
  {
    [v5 testTrimXCSQL];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.trimBGSQL"])
  {
    [v5 testTrimBGSQL];
    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.logSizeOfStagingEntryCache"])
  {
    v4 = [MEMORY[0x277D3F228] sharedStorageCache];
    [v4 logSizeOfStagingEntryCache];
LABEL_76:

    goto LABEL_77;
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.dumpStagingEntryCache"])
  {
    v4 = [MEMORY[0x277D3F228] sharedStorageCache];
    [v4 dumpStagingEntryCache];
    goto LABEL_76;
  }

  if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.stresstimer"])
  {
    if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.stressplentry"])
    {
      if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.stresscache"])
      {
        if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.stresscachesmall"])
        {
          if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.stressObjectForKey"])
          {
            if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.stressSetObjectForKey"])
            {
              if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.stressActivityScheduler"])
              {
                if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.stressMidnightCalculation"])
                {
                  if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.stressMonotonicTimer"])
                  {
                    if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.stressMonotonicTimer2"])
                    {
                      if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.stressMonotonicTimer3"])
                      {
                        if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.testMonotonicTimerThroughSleep"])
                        {
                          if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.currentBasebandTime"])
                          {
                            if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.testExit"])
                            {
                              if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.testQuarantineExit"])
                              {
                                if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.testBlockingFlushCaches"])
                                {
                                  if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.stressAggregateSmall"])
                                  {
                                    if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.stressAggregateVerySmall"])
                                    {
                                      if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.testUTF8"])
                                      {
                                        if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.testCompression"])
                                        {
                                          if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.fireSBC"])
                                          {
                                            if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.aggregateDataFromSignpost"])
                                            {
                                              if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.appIdentifierTables"])
                                              {
                                                if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.DMATables"])
                                                {
                                                  if ([a3 caseInsensitiveCompare:@"com.apple.powerlogd.appIdentifierColumns"])
                                                  {
                                                    if (![a3 caseInsensitiveCompare:@"com.apple.powerlogd.trimQueries"])
                                                    {
                                                      [v5 constructTrimQueries];
                                                    }
                                                  }

                                                  else
                                                  {
                                                    [v5 constructAppIdentifierColumns];
                                                  }
                                                }

                                                else
                                                {
                                                  [v5 constructDMATables];
                                                }
                                              }

                                              else
                                              {
                                                [v5 constructAppIdentifierTables];
                                              }
                                            }

                                            else
                                            {
                                              [v5 aggregateDataFromSignpost];
                                            }
                                          }

                                          else
                                          {
                                            [v5 fireSignificantBatteryChangeNotification];
                                          }
                                        }

                                        else
                                        {
                                          [v5 testCompression];
                                        }
                                      }

                                      else
                                      {
                                        [v5 testUTF8];
                                      }
                                    }

                                    else
                                    {
                                      [v5 stressAggregateVerySmall];
                                    }
                                  }

                                  else
                                  {
                                    [v5 stressAggregateSmall];
                                  }
                                }

                                else
                                {
                                  [v5 testBlockingFlushCaches];
                                }
                              }

                              else
                              {
                                [v5 testQuarantineExit];
                              }
                            }

                            else
                            {
                              [v5 testExit];
                            }
                          }

                          else
                          {
                            [v5 currentBasebandTime];
                          }
                        }

                        else
                        {
                          [v5 testMonotonicTimerThroughSleep];
                        }
                      }

                      else
                      {
                        [v5 stressMonotonicTimer3];
                      }
                    }

                    else
                    {
                      [v5 stressMonotonicTimer2];
                    }
                  }

                  else
                  {
                    [v5 stressMonotonicTimer];
                  }
                }

                else
                {
                  [v5 stressMidnightCalculation];
                }
              }

              else
              {
                [v5 stressActivityScheduler];
              }
            }

            else
            {
              [v5 stressSetObjectForKey];
            }
          }

          else
          {
            [v5 stressObjectForKey];
          }
        }

        else
        {
          [v5 stressCacheSmall];
        }
      }

      else
      {
        [v5 stressCache];
      }
    }

    else
    {
      [v5 stressPLEntry];
    }
  }

  else
  {
    [v5 stressTimer];
  }

LABEL_77:
}

void TestEntryLogRequested(uint64_t a1, void *a2, void *a3)
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"com.apple.powerlogd.testEntryLog." withString:&stru_282B650A0];
  [a2 testEntryLogRequestedForEntryKey:v4];
}

void sub_21A92DE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21A932B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void testLogEvents(uint64_t a1, void *a2)
{
  v89[4] = *MEMORY[0x277D85DE8];
  v88[0] = @"bundleID";
  v88[1] = @"updateType";
  v89[0] = @"cloudphotod";
  v89[1] = &unk_282C130B0;
  v88[2] = @"eventIntervals";
  v85[0] = @"startDate";
  v2 = MEMORY[0x277CBEAA8];
  v51 = a2;
  v3 = [v2 dateWithTimeIntervalSince1970:0.0];
  v85[1] = @"endDate";
  v86[0] = v3;
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:3.0];
  v86[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
  v87[0] = v5;
  v83[0] = @"startDate";
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:8.0];
  v83[1] = @"endDate";
  v84[0] = v6;
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:25.0];
  v84[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
  v87[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
  v88[3] = @"childBundleIDToWeight";
  v89[2] = v9;
  v89[3] = &unk_282C19D68;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:4];

  v81[0] = @"bundleID";
  v81[1] = @"updateType";
  v82[0] = @"com.apple.bird";
  v82[1] = &unk_282C130B0;
  v81[2] = @"eventIntervals";
  v78[0] = @"startDate";
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v79[0] = v10;
  v78[1] = @"endDate";
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:5.0];
  v79[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
  v80[0] = v12;
  v76[0] = @"startDate";
  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:7.0];
  v77[0] = v13;
  v76[1] = @"endDate";
  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:12.0];
  v77[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
  v80[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
  v82[2] = v16;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:3];

  v74[0] = @"bundleID";
  v74[1] = @"updateType";
  v75[0] = @"nsurlsessiond";
  v75[1] = &unk_282C130B0;
  v74[2] = @"eventIntervals";
  v71[0] = @"startDate";
  v48 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v71[1] = @"endDate";
  v72[0] = v48;
  v47 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1.0];
  v72[1] = v47;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
  v73[0] = v46;
  v69[0] = @"startDate";
  v45 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1.0];
  v69[1] = @"endDate";
  v70[0] = v45;
  v44 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1.0];
  v70[1] = v44;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
  v73[1] = v43;
  v67[0] = @"startDate";
  v42 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1.0];
  v67[1] = @"endDate";
  v68[0] = v42;
  v41 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1.0];
  v68[1] = v41;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
  v73[2] = v40;
  v65[0] = @"startDate";
  v39 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1.0];
  v65[1] = @"endDate";
  v66[0] = v39;
  v38 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:2.0];
  v66[1] = v38;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
  v73[3] = v37;
  v63[0] = @"startDate";
  v36 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:2.0];
  v63[1] = @"endDate";
  v64[0] = v36;
  v35 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:7.0];
  v64[1] = v35;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
  v73[4] = v34;
  v61[0] = @"startDate";
  v33 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:7.0];
  v61[1] = @"endDate";
  v62[0] = v33;
  v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:14.0];
  v62[1] = v32;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
  v73[5] = v31;
  v59[0] = @"startDate";
  v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:20.0];
  v59[1] = @"endDate";
  v60[0] = v30;
  v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:24.0];
  v60[1] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  v73[6] = v18;
  v57[0] = @"startDate";
  v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:27.0];
  v57[1] = @"endDate";
  v58[0] = v19;
  v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:34.0];
  v58[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
  v73[7] = v21;
  v55[0] = @"startDate";
  v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:34.0];
  v55[1] = @"endDate";
  v56[0] = v22;
  v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:40.0];
  v56[1] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
  v73[8] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:9];
  v75[2] = v25;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:3];

  v52[0] = v50;
  v52[1] = v49;
  v52[2] = v29;
  v53 = @"events";
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
  v54 = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];

  [v51 didReceiveEventWithPayload:v27];
  v28 = *MEMORY[0x277D85DE8];
}

void testReportEnergy(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [a2 energyResponse];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyResponse=%@", v2];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testReportEnergy"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:697];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void testStopEvent2(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v9[1] = @"info";
  v10[0] = @"diagnosticd";
  v7[0] = &unk_282C130B0;
  v7[1] = &unk_282C130F8;
  v8[0] = &unk_282C1CC48;
  v8[1] = &unk_282C1CC58;
  v9[0] = @"bundleID";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v5 = [v2 didReceiveStopEventWithPayload:v4];

  v6 = *MEMORY[0x277D85DE8];
}

void testCapping(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = 0;
  v4 = 0.0;
  do
  {
    v17 = v3;
    v5 = -20;
    v6 = 0.0;
    do
    {
      [v2 capUtilizationInSeconds:v4 withUpperBoundInError:90.0 withCapInError:1.0 withCappedUpperBound:30.0];
      v8 = v7;
      [v2 capUtilizationInSeconds:v6 withUpperBoundInError:90.0 withCapInError:10.0 withCappedUpperBound:30.0];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f, %f => %f, %f", *&v4, *&v6, v8, v9];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testCappingWithInput"];
      [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:1047];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v6 = v6 + 20.0;
      v5 += 20;
    }

    while (v5 < 0xB4);
    v4 = v4 + 20.0;
    v3 = v17 + 20;
  }

  while (v17 < 0xB4);

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t EutraStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v79 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v79 & 0x7F) << v5;
        if ((v79 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 52) |= 0x10u;
            while (1)
            {
              v88 = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                v45 = [a2 data];
                [v45 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v88 & 0x7F) << v40;
              if ((v88 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v11 = v41++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_133;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v42;
            }

LABEL_133:
            v77 = 28;
          }

          else
          {
            if (v13 != 2)
            {
              goto LABEL_120;
            }

            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v87 = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v87 & 0x7F) << v28;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_125;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v30;
            }

LABEL_125:
            v77 = 16;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v52 = 0;
              v53 = 0;
              v54 = 0;
              *(a1 + 52) |= 0x40u;
              while (1)
              {
                v86 = 0;
                v55 = [a2 position] + 1;
                if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                {
                  v57 = [a2 data];
                  [v57 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v54 |= (v86 & 0x7F) << v52;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                v11 = v53++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_141;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v54;
              }

LABEL_141:
              v77 = 36;
              break;
            case 4:
              v64 = 0;
              v65 = 0;
              v66 = 0;
              *(a1 + 52) |= 8u;
              while (1)
              {
                v85 = 0;
                v67 = [a2 position] + 1;
                if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
                {
                  v69 = [a2 data];
                  [v69 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v66 |= (v85 & 0x7F) << v64;
                if ((v85 & 0x80) == 0)
                {
                  break;
                }

                v64 += 7;
                v11 = v65++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_157;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v66;
              }

LABEL_157:
              v77 = 24;
              break;
            case 5:
              v14 = 0;
              v15 = 0;
              v16 = 0;
              *(a1 + 52) |= 0x20u;
              while (1)
              {
                v84 = 0;
                v17 = [a2 position] + 1;
                if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
                {
                  v19 = [a2 data];
                  [v19 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v84 & 0x7F) << v14;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v14 += 7;
                v11 = v15++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_149;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v16;
              }

LABEL_149:
              v77 = 32;
              break;
            default:
              goto LABEL_120;
          }
        }

        goto LABEL_162;
      }

      if (v13 <= 7)
      {
        if (v13 == 6)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 52) |= 4u;
          while (1)
          {
            v83 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v83 & 0x7F) << v46;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_137;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v48;
          }

LABEL_137:
          v77 = 20;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_120:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_163;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 52) |= 0x100u;
          while (1)
          {
            v82 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v82 & 0x7F) << v34;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_129;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v36;
          }

LABEL_129:
          v77 = 44;
        }

        goto LABEL_162;
      }

      if (v13 == 8)
      {
        break;
      }

      if (v13 == 9)
      {
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 52) |= 0x80u;
        while (1)
        {
          v80 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v80 & 0x7F) << v70;
          if ((v80 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_161;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v72;
        }

LABEL_161:
        v77 = 40;
LABEL_162:
        *(a1 + v77) = v20;
        goto LABEL_163;
      }

      if (v13 != 10)
      {
        goto LABEL_120;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 52) |= 1u;
      while (1)
      {
        v89 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v89 & 0x7F) << v21;
        if ((v89 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_153;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

LABEL_153:
      *(a1 + 8) = v27;
LABEL_163:
      v78 = [a2 position];
      if (v78 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v58 = 0;
    v59 = 0;
    v60 = 0;
    *(a1 + 52) |= 0x200u;
    while (1)
    {
      v81 = 0;
      v61 = [a2 position] + 1;
      if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
      {
        v63 = [a2 data];
        [v63 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v60 |= (v81 & 0x7F) << v58;
      if ((v81 & 0x80) == 0)
      {
        break;
      }

      v58 += 7;
      v11 = v59++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_145;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v60;
    }

LABEL_145:
    v77 = 48;
    goto LABEL_162;
  }

  return [a2 hasError] ^ 1;
}

uint64_t RfBandDurationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 32) |= 0x20u;
            while (1)
            {
              v52 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v52 & 0x7F) << v33;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___RfBandDuration__utraTddRfBand;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___RfBandDuration__utraTddRfBand;
            goto LABEL_86;
          case 5:
            v43 = 0;
            v44 = 0;
            v16 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v51 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v51 & 0x7F) << v43;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v20 = v44++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___RfBandDuration__eutraRfBand;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___RfBandDuration__eutraRfBand;
LABEL_86:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_89:
            *(a1 + *v22) = v21;
            goto LABEL_90;
          case 6:
            v23 = 0;
            v24 = 0;
            v16 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v56 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v56 & 0x7F) << v23;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v20 = v24++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___RfBandDuration__durationMs;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___RfBandDuration__durationMs;
            goto LABEL_86;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 32) |= 8u;
            while (1)
            {
              v55 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v55 & 0x7F) << v28;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___RfBandDuration__rat;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___RfBandDuration__rat;
            goto LABEL_86;
          case 2:
            v38 = 0;
            v39 = 0;
            v16 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v54 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v54 & 0x7F) << v38;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v20 = v39++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___RfBandDuration__geraRfBand;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___RfBandDuration__geraRfBand;
            goto LABEL_86;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 0x10u;
            while (1)
            {
              v53 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v53 & 0x7F) << v14;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___RfBandDuration__utraFddRfBand;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___RfBandDuration__utraFddRfBand;
            goto LABEL_86;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_90:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularPmuAverageCurrentReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 15)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v31[0] & 0x7F) << v22;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_46:
        *(a1 + 24) = v28;
      }

      else if (v13 == 2)
      {
        v21 = objc_alloc_init(RegulatorAverageCurrent);
        [a1 addRegulatorCurrent:v21];
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !RegulatorAverageCurrentReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_50:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __PLLogApplication_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "application");
  _MergedGlobals_1_60 = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_21A94A8E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 240));
  _Unwind_Resume(a1);
}

void sub_21A94CD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21A9503B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21A950828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Unwind_Resume(a1);
}

void sub_21A950BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21A950F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __PLLogLocation_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "Location");
  _MergedGlobals_1_63 = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t AWDMETRICSKCellularPowerLogGSMRABModeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v53[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v53[0] & 0x7F) << v5;
        if ((v53[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v53[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v53[0] & 0x7F) << v29;
          if ((v53[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_80;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v31;
        }

LABEL_80:
        *(a1 + 8) = v35;
        goto LABEL_96;
      }

      if (v13 != 2)
      {
        if (v13 == 3)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            LOBYTE(v53[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v53[0] & 0x7F) << v21;
            if ((v53[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_94;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_94:
          v50 = 24;
          goto LABEL_95;
        }

LABEL_54:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_96;
      }

      v49 = objc_alloc_init(AWDMETRICSKCellularPowerLogGSMRABModeMBin);
      [a1 addBin:v49];
      v53[0] = 0;
      v53[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogGSMRABModeMBinReadFrom(v49, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_96:
      v51 = [a2 position];
      if (v51 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 48) |= 0x10u;
        while (1)
        {
          LOBYTE(v53[0]) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v53[0] & 0x7F) << v42;
          if ((v53[0] & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            LOBYTE(v48) = 0;
            goto LABEL_86;
          }
        }

        v48 = (v44 != 0) & ~[a2 hasError];
LABEL_86:
        *(a1 + 44) = v48;
        goto LABEL_96;
      }

      if (v13 == 7)
      {
        v27 = PBReaderReadData();
        v28 = *(a1 + 32);
        *(a1 + 32) = v27;

        goto LABEL_96;
      }
    }

    else
    {
      if (v13 == 4)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 48) |= 8u;
        while (1)
        {
          LOBYTE(v53[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v53[0] & 0x7F) << v36;
          if ((v53[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_84;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v38;
        }

LABEL_84:
        v50 = 40;
        goto LABEL_95;
      }

      if (v13 == 5)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 4u;
        while (1)
        {
          LOBYTE(v53[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v53[0] & 0x7F) << v14;
          if ((v53[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_90;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_90:
        v50 = 28;
LABEL_95:
        *(a1 + v50) = v20;
        goto LABEL_96;
      }
    }

    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

uint64_t GeraStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          v44 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v44 & 0x7F) << v35;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_75;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v37;
        }

LABEL_75:
        v41 = 20;
LABEL_76:
        *(a1 + v41) = v20;
        goto LABEL_77;
      }

      if (v13 != 4)
      {
LABEL_40:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_77;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 28) |= 1u;
      while (1)
      {
        v47 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v47 & 0x7F) << v21;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_67;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

LABEL_67:
      *(a1 + 8) = v27;
LABEL_77:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 28) |= 2u;
      while (1)
      {
        v46 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v46 & 0x7F) << v29;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_71;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v31;
      }

LABEL_71:
      v41 = 16;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_40;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 28) |= 8u;
      while (1)
      {
        v45 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v45 & 0x7F) << v14;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_63;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_63:
      v41 = 24;
    }

    goto LABEL_76;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogNrCaConfigActivateStatsMBinReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v57 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v57 & 0x7F) << v33;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v35;
            }

LABEL_87:
            v53 = 16;
            break;
          case 5:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 32) |= 0x20u;
            while (1)
            {
              v61 = 0;
              v49 = [a2 position] + 1;
              if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
              {
                v51 = [a2 data];
                [v51 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v48 |= (v61 & 0x7F) << v46;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v11 = v47++ >= 9;
              if (v11)
              {
                LOBYTE(v52) = 0;
                goto LABEL_104;
              }
            }

            v52 = (v48 != 0) & ~[a2 hasError];
LABEL_104:
            *(a1 + 28) = v52;
            goto LABEL_101;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 32) |= 0x10u;
            while (1)
            {
              v56 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v56 & 0x7F) << v21;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_95:
            v53 = 24;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_101;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v59 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v59 & 0x7F) << v27;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v29;
            }

LABEL_83:
            v53 = 12;
            break;
          case 2:
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v58 = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                v45 = [a2 data];
                [v45 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v58 & 0x7F) << v40;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v11 = v41++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_99;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v42;
            }

LABEL_99:
            v53 = 8;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 8u;
            while (1)
            {
              v60 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v60 & 0x7F) << v14;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_91:
            v53 = 20;
            break;
          default:
            goto LABEL_60;
        }
      }

      *(a1 + v53) = v20;
LABEL_101:
      v54 = [a2 position];
    }

    while (v54 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogServiceStatusEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v45 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v45 & 0x7F) << v35;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v37;
          }

LABEL_75:
          v41 = 16;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_77;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 8u;
          while (1)
          {
            v47 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v47 & 0x7F) << v21;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_67:
          v41 = 24;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v44 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_71:
          *(a1 + 8) = v34;
          goto LABEL_77;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          v46 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v46 & 0x7F) << v14;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_63:
        v41 = 20;
      }

      *(a1 + v41) = v20;
LABEL_77:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularLteDataInactivityBeforeIdleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 15)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v39 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39 & 0x7F) << v28;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_56:
        v35 = 20;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 24) |= 1u;
            while (1)
            {
              v38 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v38 & 0x7F) << v14;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_61:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_62;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v40 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v40 & 0x7F) << v21;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        v35 = 16;
      }

      *(a1 + v35) = v27;
LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogGPSStatesReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v44[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44[0] & 0x7F) << v5;
        if ((v44[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v44[0] & 0x7F) << v27;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v29;
        }

LABEL_67:
        v41 = 24;
        goto LABEL_80;
      }

      if (v13 != 4)
      {
        if (v13 == 15)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            LOBYTE(v44[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v44[0] & 0x7F) << v14;
            if ((v44[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_75:
          v41 = 28;
LABEL_80:
          *(a1 + v41) = v20;
          goto LABEL_81;
        }

        goto LABEL_62;
      }

      v33 = objc_alloc_init(AWDMETRICSKCellularPowerLogGPSStatesMBin);
      [a1 addBin:v33];
      v44[0] = 0;
      v44[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogGPSStatesMBinReadFrom(v33, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_81:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        LOBYTE(v44[0]) = 0;
        v37 = [a2 position] + 1;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
        {
          v39 = [a2 data];
          [v39 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v36 |= (v44[0] & 0x7F) << v34;
        if ((v44[0] & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v11 = v35++ >= 9;
        if (v11)
        {
          v40 = 0;
          goto LABEL_71;
        }
      }

      if ([a2 hasError])
      {
        v40 = 0;
      }

      else
      {
        v40 = v36;
      }

LABEL_71:
      *(a1 + 8) = v40;
      goto LABEL_81;
    }

    if (v13 == 2)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 36) |= 8u;
      while (1)
      {
        LOBYTE(v44[0]) = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v44[0] & 0x7F) << v21;
        if ((v44[0] & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_79;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v23;
      }

LABEL_79:
      v41 = 32;
      goto LABEL_80;
    }

LABEL_62:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_81;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __PLLogPMUMetrics_block_invoke()
{
  v0 = os_log_create("com.apple.PerfPowerServicesAgent", "pmumetrics");
  _MergedGlobals_1_65 = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t AWDMETRICSKCellularPowerLogNRNSAENDCEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v58 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 10)
      {
        break;
      }

      if (v13 <= 13)
      {
        if (v13 == 11)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 48) |= 0x10u;
          while (1)
          {
            v63 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v63 & 0x7F) << v42;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v11 = v43++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_90;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v44;
          }

LABEL_90:
          v56 = 40;
        }

        else
        {
          if (v13 != 12)
          {
            goto LABEL_62;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v62 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v62 & 0x7F) << v14;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_94;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_94:
          v56 = 24;
        }

LABEL_105:
        *(a1 + v56) = v20;
        goto LABEL_106;
      }

      if (v13 == 14)
      {
        v48 = PBReaderReadData();
        v49 = *(a1 + 32);
        *(a1 + 32) = v48;
      }

      else
      {
        if (v13 != 15)
        {
LABEL_62:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_106;
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 48) |= 0x20u;
        while (1)
        {
          v64 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v64 & 0x7F) << v27;
          if ((v64 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            LOBYTE(v33) = 0;
            goto LABEL_96;
          }
        }

        v33 = (v29 != 0) & ~[a2 hasError];
LABEL_96:
        *(a1 + 44) = v33;
      }

LABEL_106:
      v57 = [a2 position];
      if (v57 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          v59 = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v59 & 0x7F) << v34;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v40 = 0;
            goto LABEL_86;
          }
        }

        if ([a2 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v36;
        }

LABEL_86:
        *(a1 + 8) = v40;
        goto LABEL_106;
      case 2:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          v61 = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v61 & 0x7F) << v50;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_104;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v52;
        }

LABEL_104:
        v56 = 16;
        break;
      case 3:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 48) |= 4u;
        while (1)
        {
          v60 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v60 & 0x7F) << v21;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_100;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_100:
        v56 = 20;
        break;
      default:
        goto LABEL_62;
    }

    goto LABEL_105;
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularProtocolStackHistReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v235 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v235 & 0x7F) << v5;
        if ((v235 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      switch((v12 >> 3))
      {
        case 1u:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 156) |= 1uLL;
          while (1)
          {
            v235 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v235 & 0x7F) << v14;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
LABEL_409:
              *(a1 + 8) = v20;
              goto LABEL_491;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

          goto LABEL_409;
        case 2u:
          v112 = 0;
          v113 = 0;
          v114 = 0;
          *(a1 + 156) |= 0x200000000uLL;
          while (1)
          {
            v235 = 0;
            v115 = [a2 position] + 1;
            if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
            {
              v117 = [a2 data];
              [v117 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v114 |= (v235 & 0x7F) << v112;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v112 += 7;
            v11 = v113++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_413;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v114;
          }

LABEL_413:
          v233 = 144;
          goto LABEL_490;
        case 3u:
          v88 = 0;
          v89 = 0;
          v90 = 0;
          *(a1 + 156) |= 2uLL;
          while (1)
          {
            v235 = 0;
            v91 = [a2 position] + 1;
            if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
            {
              v93 = [a2 data];
              [v93 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v90 |= (v235 & 0x7F) << v88;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v88 += 7;
            v11 = v89++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_389;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v90;
          }

LABEL_389:
          v233 = 16;
          goto LABEL_490;
        case 4u:
          v100 = 0;
          v101 = 0;
          v102 = 0;
          *(a1 + 156) |= 4uLL;
          while (1)
          {
            v235 = 0;
            v103 = [a2 position] + 1;
            if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
            {
              v105 = [a2 data];
              [v105 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v102 |= (v235 & 0x7F) << v100;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v100 += 7;
            v11 = v101++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_401;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v102;
          }

LABEL_401:
          v233 = 20;
          goto LABEL_490;
        case 5u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 156) |= 0x2000uLL;
          while (1)
          {
            v235 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v235 & 0x7F) << v58;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v11 = v59++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_369;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v60;
          }

LABEL_369:
          v233 = 64;
          goto LABEL_490;
        case 6u:
          v142 = 0;
          v143 = 0;
          v144 = 0;
          *(a1 + 156) |= 0x1000000uLL;
          while (1)
          {
            v235 = 0;
            v145 = [a2 position] + 1;
            if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
            {
              v147 = [a2 data];
              [v147 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v144 |= (v235 & 0x7F) << v142;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v142 += 7;
            v11 = v143++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_433;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v144;
          }

LABEL_433:
          v233 = 108;
          goto LABEL_490;
        case 7u:
          v160 = 0;
          v161 = 0;
          v162 = 0;
          *(a1 + 156) |= 0x8000000uLL;
          while (1)
          {
            v235 = 0;
            v163 = [a2 position] + 1;
            if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
            {
              v165 = [a2 data];
              [v165 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v162 |= (v235 & 0x7F) << v160;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v160 += 7;
            v11 = v161++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_445;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v162;
          }

LABEL_445:
          v233 = 120;
          goto LABEL_490;
        case 8u:
          v106 = 0;
          v107 = 0;
          v108 = 0;
          *(a1 + 156) |= 0x10000000uLL;
          while (1)
          {
            v235 = 0;
            v109 = [a2 position] + 1;
            if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
            {
              v111 = [a2 data];
              [v111 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v108 |= (v235 & 0x7F) << v106;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v106 += 7;
            v11 = v107++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_405;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v108;
          }

LABEL_405:
          v233 = 124;
          goto LABEL_490;
        case 9u:
          v178 = 0;
          v179 = 0;
          v180 = 0;
          *(a1 + 156) |= 0x20000000uLL;
          while (1)
          {
            v235 = 0;
            v181 = [a2 position] + 1;
            if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
            {
              v183 = [a2 data];
              [v183 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v180 |= (v235 & 0x7F) << v178;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v178 += 7;
            v11 = v179++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_457;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v180;
          }

LABEL_457:
          v233 = 128;
          goto LABEL_490;
        case 0xAu:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 156) |= 0x40000000uLL;
          while (1)
          {
            v235 = 0;
            v73 = [a2 position] + 1;
            if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
            {
              v75 = [a2 data];
              [v75 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v72 |= (v235 & 0x7F) << v70;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v11 = v71++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_377;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v72;
          }

LABEL_377:
          v233 = 132;
          goto LABEL_490;
        case 0xBu:
          v172 = 0;
          v173 = 0;
          v174 = 0;
          *(a1 + 156) |= 0x80000000uLL;
          while (1)
          {
            v235 = 0;
            v175 = [a2 position] + 1;
            if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
            {
              v177 = [a2 data];
              [v177 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v174 |= (v235 & 0x7F) << v172;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v172 += 7;
            v11 = v173++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_453;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v174;
          }

LABEL_453:
          v233 = 136;
          goto LABEL_490;
        case 0xCu:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 156) |= 0x100000000uLL;
          while (1)
          {
            v235 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v235 & 0x7F) << v52;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_365;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v54;
          }

LABEL_365:
          v233 = 140;
          goto LABEL_490;
        case 0xDu:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 156) |= 8uLL;
          while (1)
          {
            v235 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v235 & 0x7F) << v64;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v11 = v65++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_373;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v66;
          }

LABEL_373:
          v233 = 24;
          goto LABEL_490;
        case 0xEu:
          v154 = 0;
          v155 = 0;
          v156 = 0;
          *(a1 + 156) |= 0x10uLL;
          while (1)
          {
            v235 = 0;
            v157 = [a2 position] + 1;
            if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
            {
              v159 = [a2 data];
              [v159 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v156 |= (v235 & 0x7F) << v154;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v154 += 7;
            v11 = v155++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_441;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v156;
          }

LABEL_441:
          v233 = 28;
          goto LABEL_490;
        case 0xFu:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 156) |= 0x20uLL;
          while (1)
          {
            v235 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v235 & 0x7F) << v40;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_357;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v42;
          }

LABEL_357:
          v233 = 32;
          goto LABEL_490;
        case 0x10u:
          v94 = 0;
          v95 = 0;
          v96 = 0;
          *(a1 + 156) |= 0x40uLL;
          while (1)
          {
            v235 = 0;
            v97 = [a2 position] + 1;
            if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
            {
              v99 = [a2 data];
              [v99 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v96 |= (v235 & 0x7F) << v94;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v94 += 7;
            v11 = v95++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_393;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v96;
          }

LABEL_393:
          v233 = 36;
          goto LABEL_490;
        case 0x11u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 156) |= 0x80uLL;
          while (1)
          {
            v235 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v235 & 0x7F) << v34;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_353;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v36;
          }

LABEL_353:
          v233 = 40;
          goto LABEL_490;
        case 0x12u:
          v124 = 0;
          v125 = 0;
          v126 = 0;
          *(a1 + 156) |= 0x100uLL;
          while (1)
          {
            v235 = 0;
            v127 = [a2 position] + 1;
            if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
            {
              v129 = [a2 data];
              [v129 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v126 |= (v235 & 0x7F) << v124;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v124 += 7;
            v11 = v125++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_421;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v126;
          }

LABEL_421:
          v233 = 44;
          goto LABEL_490;
        case 0x13u:
          v166 = 0;
          v167 = 0;
          v168 = 0;
          *(a1 + 156) |= 0x200uLL;
          while (1)
          {
            v235 = 0;
            v169 = [a2 position] + 1;
            if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
            {
              v171 = [a2 data];
              [v171 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v168 |= (v235 & 0x7F) << v166;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v166 += 7;
            v11 = v167++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_449;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v168;
          }

LABEL_449:
          v233 = 48;
          goto LABEL_490;
        case 0x14u:
          v202 = 0;
          v203 = 0;
          v204 = 0;
          *(a1 + 156) |= 0x400uLL;
          while (1)
          {
            v235 = 0;
            v205 = [a2 position] + 1;
            if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 1, v206 <= objc_msgSend(a2, "length")))
            {
              v207 = [a2 data];
              [v207 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v204 |= (v235 & 0x7F) << v202;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v202 += 7;
            v11 = v203++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_473;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v204;
          }

LABEL_473:
          v233 = 52;
          goto LABEL_490;
        case 0x15u:
          v136 = 0;
          v137 = 0;
          v138 = 0;
          *(a1 + 156) |= 0x800uLL;
          while (1)
          {
            v235 = 0;
            v139 = [a2 position] + 1;
            if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
            {
              v141 = [a2 data];
              [v141 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v138 |= (v235 & 0x7F) << v136;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v136 += 7;
            v11 = v137++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_429;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v138;
          }

LABEL_429:
          v233 = 56;
          goto LABEL_490;
        case 0x16u:
          v148 = 0;
          v149 = 0;
          v150 = 0;
          *(a1 + 156) |= 0x1000uLL;
          while (1)
          {
            v235 = 0;
            v151 = [a2 position] + 1;
            if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
            {
              v153 = [a2 data];
              [v153 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v150 |= (v235 & 0x7F) << v148;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v148 += 7;
            v11 = v149++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_437;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v150;
          }

LABEL_437:
          v233 = 60;
          goto LABEL_490;
        case 0x17u:
          v196 = 0;
          v197 = 0;
          v198 = 0;
          *(a1 + 156) |= 0x4000uLL;
          while (1)
          {
            v235 = 0;
            v199 = [a2 position] + 1;
            if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
            {
              v201 = [a2 data];
              [v201 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v198 |= (v235 & 0x7F) << v196;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v196 += 7;
            v11 = v197++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_469;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v198;
          }

LABEL_469:
          v233 = 68;
          goto LABEL_490;
        case 0x18u:
          v208 = 0;
          v209 = 0;
          v210 = 0;
          *(a1 + 156) |= 0x8000uLL;
          while (1)
          {
            v235 = 0;
            v211 = [a2 position] + 1;
            if (v211 >= [a2 position] && (v212 = objc_msgSend(a2, "position") + 1, v212 <= objc_msgSend(a2, "length")))
            {
              v213 = [a2 data];
              [v213 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v210 |= (v235 & 0x7F) << v208;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v208 += 7;
            v11 = v209++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_477;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v210;
          }

LABEL_477:
          v233 = 72;
          goto LABEL_490;
        case 0x19u:
          v82 = 0;
          v83 = 0;
          v84 = 0;
          *(a1 + 156) |= 0x10000uLL;
          while (1)
          {
            v235 = 0;
            v85 = [a2 position] + 1;
            if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
            {
              v87 = [a2 data];
              [v87 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v84 |= (v235 & 0x7F) << v82;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v82 += 7;
            v11 = v83++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_385;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v84;
          }

LABEL_385:
          v233 = 76;
          goto LABEL_490;
        case 0x1Au:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 156) |= 0x20000uLL;
          while (1)
          {
            v235 = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              v81 = [a2 data];
              [v81 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v78 |= (v235 & 0x7F) << v76;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v11 = v77++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_381;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v78;
          }

LABEL_381:
          v233 = 80;
          goto LABEL_490;
        case 0x1Bu:
          v226 = 0;
          v227 = 0;
          v228 = 0;
          *(a1 + 156) |= 0x40000uLL;
          while (1)
          {
            v235 = 0;
            v229 = [a2 position] + 1;
            if (v229 >= [a2 position] && (v230 = objc_msgSend(a2, "position") + 1, v230 <= objc_msgSend(a2, "length")))
            {
              v231 = [a2 data];
              [v231 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v228 |= (v235 & 0x7F) << v226;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v226 += 7;
            v11 = v227++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_489;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v228;
          }

LABEL_489:
          v233 = 84;
          goto LABEL_490;
        case 0x1Cu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 156) |= 0x80000uLL;
          while (1)
          {
            v235 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v235 & 0x7F) << v28;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_349;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v30;
          }

LABEL_349:
          v233 = 88;
          goto LABEL_490;
        case 0x1Du:
          v214 = 0;
          v215 = 0;
          v216 = 0;
          *(a1 + 156) |= 0x100000uLL;
          while (1)
          {
            v235 = 0;
            v217 = [a2 position] + 1;
            if (v217 >= [a2 position] && (v218 = objc_msgSend(a2, "position") + 1, v218 <= objc_msgSend(a2, "length")))
            {
              v219 = [a2 data];
              [v219 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v216 |= (v235 & 0x7F) << v214;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v214 += 7;
            v11 = v215++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_481;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v216;
          }

LABEL_481:
          v233 = 92;
          goto LABEL_490;
        case 0x1Eu:
          v220 = 0;
          v221 = 0;
          v222 = 0;
          *(a1 + 156) |= 0x200000uLL;
          while (1)
          {
            v235 = 0;
            v223 = [a2 position] + 1;
            if (v223 >= [a2 position] && (v224 = objc_msgSend(a2, "position") + 1, v224 <= objc_msgSend(a2, "length")))
            {
              v225 = [a2 data];
              [v225 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v222 |= (v235 & 0x7F) << v220;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v220 += 7;
            v11 = v221++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_485;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v222;
          }

LABEL_485:
          v233 = 96;
          goto LABEL_490;
        case 0x1Fu:
          v184 = 0;
          v185 = 0;
          v186 = 0;
          *(a1 + 156) |= 0x400000uLL;
          while (1)
          {
            v235 = 0;
            v187 = [a2 position] + 1;
            if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
            {
              v189 = [a2 data];
              [v189 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v186 |= (v235 & 0x7F) << v184;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v184 += 7;
            v11 = v185++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_461;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v186;
          }

LABEL_461:
          v233 = 100;
          goto LABEL_490;
        case 0x20u:
          v118 = 0;
          v119 = 0;
          v120 = 0;
          *(a1 + 156) |= 0x800000uLL;
          while (1)
          {
            v235 = 0;
            v121 = [a2 position] + 1;
            if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
            {
              v123 = [a2 data];
              [v123 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v120 |= (v235 & 0x7F) << v118;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v118 += 7;
            v11 = v119++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_417;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v120;
          }

LABEL_417:
          v233 = 104;
          goto LABEL_490;
        case 0x21u:
          v190 = 0;
          v191 = 0;
          v192 = 0;
          *(a1 + 156) |= 0x2000000uLL;
          while (1)
          {
            v235 = 0;
            v193 = [a2 position] + 1;
            if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
            {
              v195 = [a2 data];
              [v195 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v192 |= (v235 & 0x7F) << v190;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v190 += 7;
            v11 = v191++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_465;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v192;
          }

LABEL_465:
          v233 = 112;
          goto LABEL_490;
        case 0x22u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 156) |= 0x4000000uLL;
          while (1)
          {
            v235 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v235 & 0x7F) << v46;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_361;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v48;
          }

LABEL_361:
          v233 = 116;
          goto LABEL_490;
        default:
          if (v13 == 126)
          {
            v130 = 0;
            v131 = 0;
            v132 = 0;
            *(a1 + 156) |= 0x400000000uLL;
            while (1)
            {
              v235 = 0;
              v133 = [a2 position] + 1;
              if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
              {
                v135 = [a2 data];
                [v135 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v132 |= (v235 & 0x7F) << v130;
              if ((v235 & 0x80) == 0)
              {
                break;
              }

              v130 += 7;
              v11 = v131++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_425;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v132;
            }

LABEL_425:
            v233 = 148;
            goto LABEL_490;
          }

          if (v13 == 127)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 156) |= 0x800000000uLL;
            while (1)
            {
              v235 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v235 & 0x7F) << v21;
              if ((v235 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_397;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v23;
            }

LABEL_397:
            v233 = 152;
LABEL_490:
            *(a1 + v233) = v27;
            goto LABEL_491;
          }

          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

LABEL_491:
          v234 = [a2 position];
          if (v234 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          break;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t HistogramReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(HistogramBin);
        [a1 addBin:v20];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HistogramBinReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 16) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogPLMNSearchHistMBinReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 10)
      {
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 20) |= 4u;
        while (1)
        {
          v37 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v37 & 0x7F) << v28;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPLMNSearchHistMBin__searchDurationBinIndex;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPLMNSearchHistMBin__searchDurationBinIndex;
        goto LABEL_52;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v36 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v14;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPLMNSearchHistMBin__binId;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPLMNSearchHistMBin__binId;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 20) |= 2u;
    while (1)
    {
      v38 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v38 & 0x7F) << v23;
      if ((v38 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        v21 = 0;
        v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPLMNSearchHistMBin__duration;
        goto LABEL_55;
      }
    }

    v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogPLMNSearchHistMBin__duration;
LABEL_52:
    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v16;
    }

LABEL_55:
    *(a1 + *v22) = v21;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogCpuPerfLevelsReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45[0] & 0x7F) << v5;
        if ((v45[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        a1[40] |= 2u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v45[0] & 0x7F) << v35;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_75;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v37;
        }

LABEL_75:
        v42 = 16;
        goto LABEL_76;
      }

      if (v13 != 2)
      {
        goto LABEL_62;
      }

      v21 = objc_alloc_init(AWDMETRICSKCellularPowerLogCpuPerfLevelsMBin);
      [a1 addBin:v21];
      v45[0] = 0;
      v45[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogCpuPerfLevelsMBinReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_82:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        a1[40] |= 8u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v45[0] & 0x7F) << v22;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v24;
        }

LABEL_67:
        v41 = 36;
        goto LABEL_81;
      case 4:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        a1[40] |= 1u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v45[0] & 0x7F) << v28;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_71;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

LABEL_71:
        v42 = 8;
LABEL_76:
        *&a1[v42] = v34;
        goto LABEL_82;
      case 0xF:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        a1[40] |= 4u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v45[0] & 0x7F) << v14;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_80;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_80:
        v41 = 32;
LABEL_81:
        *&a1[v41] = v20;
        goto LABEL_82;
    }

LABEL_62:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_82;
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularPmicHwStatsReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v180 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v180 & 0x7F) << v6;
      if ((v180 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 120) |= 1u;
        while (1)
        {
          v180 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v180 & 0x7F) << v14;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_315:
            *(a1 + 8) = v20;
            goto LABEL_373;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_315;
      case 2u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 120) |= 0x40u;
        while (1)
        {
          v180 = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v180 & 0x7F) << v94;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v12 = v95++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_319;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v96;
        }

LABEL_319:
        v179 = 36;
        goto LABEL_372;
      case 3u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 120) |= 0x400000u;
        while (1)
        {
          v180 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v180 & 0x7F) << v70;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_299;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v72;
        }

LABEL_299:
        v179 = 100;
        goto LABEL_372;
      case 4u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 120) |= 2u;
        while (1)
        {
          v180 = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v180 & 0x7F) << v82;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v12 = v83++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_307;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v84;
        }

LABEL_307:
        v179 = 16;
        goto LABEL_372;
      case 5u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 120) |= 0x800000u;
        while (1)
        {
          v180 = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v180 & 0x7F) << v40;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v12 = v41++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_279;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v42;
        }

LABEL_279:
        v179 = 104;
        goto LABEL_372;
      case 6u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        *(a1 + 120) |= 0x4000u;
        while (1)
        {
          v180 = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v180 & 0x7F) << v112;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_331;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v114;
        }

LABEL_331:
        v179 = 68;
        goto LABEL_372;
      case 7u:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        *(a1 + 120) |= 0x10000u;
        while (1)
        {
          v180 = 0;
          v133 = [a2 position] + 1;
          if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
          {
            v135 = [a2 data];
            [v135 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v132 |= (v180 & 0x7F) << v130;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v12 = v131++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_343;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v132;
        }

LABEL_343:
        v179 = 76;
        goto LABEL_372;
      case 8u:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 120) |= 0x200u;
        while (1)
        {
          v180 = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v180 & 0x7F) << v88;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v12 = v89++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_311;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v90;
        }

LABEL_311:
        v179 = 48;
        goto LABEL_372;
      case 9u:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        *(a1 + 120) |= 0x100u;
        while (1)
        {
          v180 = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            v153 = [a2 data];
            [v153 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (v180 & 0x7F) << v148;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v12 = v149++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_355;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v150;
        }

LABEL_355:
        v179 = 44;
        goto LABEL_372;
      case 0xAu:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 120) |= 0x8000u;
        while (1)
        {
          v180 = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v180 & 0x7F) << v52;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v12 = v53++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_287;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v54;
        }

LABEL_287:
        v179 = 72;
        goto LABEL_372;
      case 0xBu:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 120) |= 0x4000000u;
        while (1)
        {
          v180 = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            v147 = [a2 data];
            [v147 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v144 |= (v180 & 0x7F) << v142;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v12 = v143++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_351;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v144;
        }

LABEL_351:
        v179 = 116;
        goto LABEL_372;
      case 0xCu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 120) |= 0x1000000u;
        while (1)
        {
          v180 = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v180 & 0x7F) << v34;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_275;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v36;
        }

LABEL_275:
        v179 = 108;
        goto LABEL_372;
      case 0xDu:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 120) |= 0x400u;
        while (1)
        {
          v180 = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v180 & 0x7F) << v46;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v12 = v47++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_283;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v48;
        }

LABEL_283:
        v179 = 52;
        goto LABEL_372;
      case 0xEu:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 120) |= 0x1000u;
        while (1)
        {
          v180 = 0;
          v127 = [a2 position] + 1;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
          {
            v129 = [a2 data];
            [v129 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v126 |= (v180 & 0x7F) << v124;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v12 = v125++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_339;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v126;
        }

LABEL_339:
        v179 = 60;
        goto LABEL_372;
      case 0xFu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 120) |= 0x800u;
        while (1)
        {
          v180 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v180 & 0x7F) << v28;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_271;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_271:
        v179 = 56;
        goto LABEL_372;
      case 0x10u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 120) |= 0x200000u;
        while (1)
        {
          v180 = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v180 & 0x7F) << v76;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v12 = v77++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_303;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v78;
        }

LABEL_303:
        v179 = 96;
        goto LABEL_372;
      case 0x11u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 120) |= 0x40000u;
        while (1)
        {
          v180 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v180 & 0x7F) << v21;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_267;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_267:
        v179 = 84;
        goto LABEL_372;
      case 0x12u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 120) |= 0x80000u;
        while (1)
        {
          v180 = 0;
          v103 = [a2 position] + 1;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
          {
            v105 = [a2 data];
            [v105 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v102 |= (v180 & 0x7F) << v100;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v12 = v101++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_323;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v102;
        }

LABEL_323:
        v179 = 88;
        goto LABEL_372;
      case 0x13u:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *(a1 + 120) |= 4u;
        while (1)
        {
          v180 = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            v141 = [a2 data];
            [v141 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (v180 & 0x7F) << v136;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v12 = v137++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_347;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v138;
        }

LABEL_347:
        v179 = 20;
        goto LABEL_372;
      case 0x14u:
        v160 = 0;
        v161 = 0;
        v162 = 0;
        *(a1 + 120) |= 8u;
        while (1)
        {
          v180 = 0;
          v163 = [a2 position] + 1;
          if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
          {
            v165 = [a2 data];
            [v165 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v162 |= (v180 & 0x7F) << v160;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v12 = v161++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_363;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v162;
        }

LABEL_363:
        v179 = 24;
        goto LABEL_372;
      case 0x15u:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        *(a1 + 120) |= 0x80u;
        while (1)
        {
          v180 = 0;
          v109 = [a2 position] + 1;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
          {
            v111 = [a2 data];
            [v111 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v108 |= (v180 & 0x7F) << v106;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v12 = v107++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_327;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v108;
        }

LABEL_327:
        v179 = 40;
        goto LABEL_372;
      case 0x16u:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        *(a1 + 120) |= 0x2000000u;
        while (1)
        {
          v180 = 0;
          v121 = [a2 position] + 1;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
          {
            v123 = [a2 data];
            [v123 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v120 |= (v180 & 0x7F) << v118;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v12 = v119++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_335;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v120;
        }

LABEL_335:
        v179 = 112;
        goto LABEL_372;
      case 0x17u:
        v154 = 0;
        v155 = 0;
        v156 = 0;
        *(a1 + 120) |= 0x2000u;
        while (1)
        {
          v180 = 0;
          v157 = [a2 position] + 1;
          if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
          {
            v159 = [a2 data];
            [v159 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v156 |= (v180 & 0x7F) << v154;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v12 = v155++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_359;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v156;
        }

LABEL_359:
        v179 = 64;
        goto LABEL_372;
      case 0x18u:
        v166 = 0;
        v167 = 0;
        v168 = 0;
        *(a1 + 120) |= 0x20000u;
        while (1)
        {
          v180 = 0;
          v169 = [a2 position] + 1;
          if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
          {
            v171 = [a2 data];
            [v171 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v168 |= (v180 & 0x7F) << v166;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v166 += 7;
          v12 = v167++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_367;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v168;
        }

LABEL_367:
        v179 = 80;
        goto LABEL_372;
      case 0x19u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 120) |= 0x10u;
        while (1)
        {
          v180 = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v180 & 0x7F) << v64;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_295;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v66;
        }

LABEL_295:
        v179 = 28;
        goto LABEL_372;
      case 0x1Au:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 120) |= 0x20u;
        while (1)
        {
          v180 = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v180 & 0x7F) << v58;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v12 = v59++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_291;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v60;
        }

LABEL_291:
        v179 = 32;
        goto LABEL_372;
      case 0x1Bu:
        v172 = 0;
        v173 = 0;
        v174 = 0;
        *(a1 + 120) |= 0x100000u;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v180 = 0;
      v175 = [a2 position] + 1;
      if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
      {
        v177 = [a2 data];
        [v177 getBytes:&v180 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v174 |= (v180 & 0x7F) << v172;
      if ((v180 & 0x80) == 0)
      {
        break;
      }

      v172 += 7;
      v12 = v173++ >= 9;
      if (v12)
      {
        v27 = 0;
        goto LABEL_371;
      }
    }

    if ([a2 hasError])
    {
      v27 = 0;
    }

    else
    {
      v27 = v174;
    }

LABEL_371:
    v179 = 92;
LABEL_372:
    *(a1 + v179) = v27;
LABEL_373:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogLteRrcStateChangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v62 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62 & 0x7F) << v5;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              v63 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v63 & 0x7F) << v34;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v40 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v40 = 0;
            }

            else
            {
              v40 = v36;
            }

LABEL_94:
            *(a1 + 8) = v40;
            goto LABEL_118;
          case 2:
            v54 = 0;
            v55 = 0;
            v56 = 0;
            *(a1 + 40) |= 0x20u;
            while (1)
            {
              v65 = 0;
              v57 = [a2 position] + 1;
              if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
              {
                v59 = [a2 data];
                [v59 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v56 |= (v65 & 0x7F) << v54;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              v11 = v55++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_116;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v56;
            }

LABEL_116:
            v60 = 32;
            break;
          case 3:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 40) |= 0x10u;
            while (1)
            {
              v68 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v68 & 0x7F) << v21;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_112;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_112:
            v60 = 28;
            break;
          default:
            goto LABEL_62;
        }

        goto LABEL_117;
      }

      if (v13 <= 5)
      {
        break;
      }

      if (v13 == 6)
      {
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          v66 = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v66 & 0x7F) << v48;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_102;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v50;
        }

LABEL_102:
        v60 = 16;
LABEL_117:
        *(a1 + v60) = v20;
        goto LABEL_118;
      }

      if (v13 != 7)
      {
LABEL_62:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_118;
      }

      v27 = 0;
      v28 = 0;
      v29 = 0;
      *(a1 + 40) |= 0x40u;
      while (1)
      {
        v69 = 0;
        v30 = [a2 position] + 1;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v29 |= (v69 & 0x7F) << v27;
        if ((v69 & 0x80) == 0)
        {
          break;
        }

        v27 += 7;
        v11 = v28++ >= 9;
        if (v11)
        {
          LOBYTE(v33) = 0;
          goto LABEL_108;
        }
      }

      v33 = (v29 != 0) & ~[a2 hasError];
LABEL_108:
      *(a1 + 36) = v33;
LABEL_118:
      v61 = [a2 position];
      if (v61 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 4)
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      *(a1 + 40) |= 4u;
      while (1)
      {
        v67 = 0;
        v45 = [a2 position] + 1;
        if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
        {
          v47 = [a2 data];
          [v47 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v44 |= (v67 & 0x7F) << v42;
        if ((v67 & 0x80) == 0)
        {
          break;
        }

        v42 += 7;
        v11 = v43++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_98;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v44;
      }

LABEL_98:
      v60 = 20;
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_62;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 8u;
      while (1)
      {
        v64 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v64 & 0x7F) << v14;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_106;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_106:
      v60 = 24;
    }

    goto LABEL_117;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogGsmRrcStateChangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v61 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v61 & 0x7F) << v34;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v36;
            }

LABEL_87:
            v53 = 24;
            break;
          case 5:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              v60 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v60 & 0x7F) << v47;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v11 = v48++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_103;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v49;
            }

LABEL_103:
            v53 = 32;
            break;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v57 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v57 & 0x7F) << v21;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_95:
            v53 = 16;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_105;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v56 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v56 & 0x7F) << v27;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v33 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v33 = 0;
            }

            else
            {
              v33 = v29;
            }

LABEL_83:
            *(a1 + 8) = v33;
            goto LABEL_105;
          case 2:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v59 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v59 & 0x7F) << v41;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_99;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v43;
            }

LABEL_99:
            v53 = 28;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v58 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v58 & 0x7F) << v14;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_91:
            v53 = 20;
            break;
          default:
            goto LABEL_60;
        }
      }

      *(a1 + v53) = v20;
LABEL_105:
      v54 = [a2 position];
    }

    while (v54 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __PLLogXPC_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "xpc");
  qword_2811F6E00 = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_21A9C26EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t KCellularPerClientProfileTriggerCountReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_46;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_46:
        *(a1 + 16) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularLteRadioLinkFailureReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v61 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v61 & 0x7F) << v5;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 6)
      {
        switch(v13)
        {
          case 1:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              v62 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v62 & 0x7F) << v33;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v39 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v35;
            }

LABEL_94:
            *(a1 + 8) = v39;
            goto LABEL_120;
          case 4:
            v53 = 0;
            v54 = 0;
            v55 = 0;
            *(a1 + 40) |= 8u;
            while (1)
            {
              v64 = 0;
              v56 = [a2 position] + 1;
              if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
              {
                v58 = [a2 data];
                [v58 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v55 |= (v64 & 0x7F) << v53;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v11 = v54++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_118;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v55;
            }

LABEL_118:
            v59 = 24;
            break;
          case 5:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 40) |= 2u;
            while (1)
            {
              v68 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v68 & 0x7F) << v21;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_114;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_114:
            v59 = 16;
            break;
          default:
            goto LABEL_62;
        }
      }

      else if (v13 > 11)
      {
        if (v13 == 12)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 40) |= 0x10u;
          while (1)
          {
            v66 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v66 & 0x7F) << v47;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_102;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v49;
          }

LABEL_102:
          v59 = 28;
        }

        else
        {
          if (v13 != 15)
          {
LABEL_62:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_120;
          }

          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 40) |= 0x40u;
          while (1)
          {
            v65 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v65 & 0x7F) << v27;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_110;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v29;
          }

LABEL_110:
          v59 = 36;
        }
      }

      else if (v13 == 7)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          v67 = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v67 & 0x7F) << v41;
          if ((v67 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_98;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v43;
        }

LABEL_98:
        v59 = 20;
      }

      else
      {
        if (v13 != 11)
        {
          goto LABEL_62;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 0x20u;
        while (1)
        {
          v63 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v63 & 0x7F) << v14;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_106;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_106:
        v59 = 32;
      }

      *(a1 + v59) = v20;
LABEL_120:
      v60 = [a2 position];
    }

    while (v60 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogSystemEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v68 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v68 & 0x7F) << v5;
        if ((v68 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v59 = 0;
            v60 = 0;
            v61 = 0;
            *(a1 + 44) |= 8u;
            while (1)
            {
              v73 = 0;
              v62 = [a2 position] + 1;
              if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
              {
                v64 = [a2 data];
                [v64 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v61 |= (v73 & 0x7F) << v59;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v59 += 7;
              v11 = v60++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_115;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v61;
            }

LABEL_115:
            v66 = 24;
          }

          else
          {
            if (v13 != 8)
            {
LABEL_100:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_133;
            }

            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 44) |= 0x10u;
            while (1)
            {
              v70 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v70 & 0x7F) << v33;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_131;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v35;
            }

LABEL_131:
            v66 = 28;
          }
        }

        else if (v13 == 5)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 44) |= 0x20u;
          while (1)
          {
            v75 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v75 & 0x7F) << v46;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_109;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v48;
          }

LABEL_109:
          v66 = 32;
        }

        else
        {
          if (v13 != 6)
          {
            goto LABEL_100;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            v74 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v74 & 0x7F) << v21;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_123;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_123:
          v66 = 20;
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 44) |= 0x80u;
          while (1)
          {
            v72 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v72 & 0x7F) << v52;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              LOBYTE(v58) = 0;
              goto LABEL_111;
            }
          }

          v58 = (v54 != 0) & ~[a2 hasError];
LABEL_111:
          *(a1 + 40) = v58;
          goto LABEL_133;
        }

        if (v13 != 4)
        {
          goto LABEL_100;
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          v76 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v76 & 0x7F) << v27;
          if ((v76 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_127;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v29;
        }

LABEL_127:
        v66 = 16;
      }

      else
      {
        if (v13 == 1)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v69 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v69 & 0x7F) << v39;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v45 = 0;
              goto LABEL_105;
            }
          }

          if ([a2 hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v41;
          }

LABEL_105:
          *(a1 + 8) = v45;
          goto LABEL_133;
        }

        if (v13 != 2)
        {
          goto LABEL_100;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 44) |= 0x40u;
        while (1)
        {
          v71 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v71 & 0x7F) << v14;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_119;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_119:
        v66 = 36;
      }

      *(a1 + v66) = v20;
LABEL_133:
      v67 = [a2 position];
    }

    while (v67 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PLLogXPCService()
{
  if (qword_2811F6E50 != -1)
  {
    dispatch_once(&qword_2811F6E50, &__block_literal_global_67);
  }

  v1 = qword_2811F6E48;

  return v1;
}

uint64_t __PLLogXPCService_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "xpc-service");
  qword_2811F6E48 = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_21A9D0E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose((v68 - 176), 8);
  _Block_object_dispose((v68 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t AWDMETRICSKCellularNrSdmEndcReleaseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v47 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v47 & 0x7F) << v35;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v37;
          }

LABEL_75:
          v41 = 20;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_77;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v45 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v45 & 0x7F) << v21;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_67:
          v41 = 16;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v44 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_71:
          *(a1 + 8) = v34;
          goto LABEL_77;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 8u;
        while (1)
        {
          v46 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v46 & 0x7F) << v14;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_63:
        v41 = 24;
      }

      *(a1 + v41) = v20;
LABEL_77:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularWcdmaIdleToConnectedUserDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v36 = PBReaderReadData();
          v37 = *(a1 + 24);
          *(a1 + 24) = v36;
        }

        else
        {
          if (v13 != 15)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_62;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v42 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v42 & 0x7F) << v21;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_57;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_57:
          *(a1 + 16) = v27;
        }
      }

      else if (v13 == 1)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v40 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v40 & 0x7F) << v29;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_61;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v31;
        }

LABEL_61:
        *(a1 + 8) = v35;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 36) |= 4u;
        while (1)
        {
          v41 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v41 & 0x7F) << v14;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_53;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_53:
        *(a1 + 32) = v20;
      }

LABEL_62:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularLteRrcStateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v61 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v61 & 0x7F) << v34;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v36;
            }

LABEL_87:
            v53 = 24;
            break;
          case 5:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v57 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v57 & 0x7F) << v47;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v11 = v48++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_103;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v49;
            }

LABEL_103:
            v53 = 16;
            break;
          case 0xF:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              v60 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v60 & 0x7F) << v21;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_95:
            v53 = 32;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_105;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v56 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v56 & 0x7F) << v27;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v33 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v33 = 0;
            }

            else
            {
              v33 = v29;
            }

LABEL_83:
            *(a1 + 8) = v33;
            goto LABEL_105;
          case 2:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v59 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v59 & 0x7F) << v41;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_99;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v43;
            }

LABEL_99:
            v53 = 28;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v58 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v58 & 0x7F) << v14;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_91:
            v53 = 20;
            break;
          default:
            goto LABEL_60;
        }
      }

      *(a1 + v53) = v20;
LABEL_105:
      v54 = [a2 position];
    }

    while (v54 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogWCDMACDRXConfigReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v71 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v71 & 0x7F) << v5;
        if ((v71 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 > 11)
      {
        switch(v13)
        {
          case 0xC:
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 48) |= 4u;
            while (1)
            {
              v74 = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v74 & 0x7F) << v48;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_123;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v50;
            }

LABEL_123:
            v68 = 20;
            break;
          case 0xE:
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 48) |= 0x40u;
            while (1)
            {
              v78 = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v78 & 0x7F) << v61;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v11 = v62++ >= 9;
              if (v11)
              {
                LOBYTE(v60) = 0;
                goto LABEL_132;
              }
            }

            v60 = (v63 != 0) & ~[a2 hasError];
LABEL_132:
            v69 = 44;
LABEL_133:
            *(a1 + v69) = v60;
            goto LABEL_134;
          case 0xF:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 48) |= 8u;
            while (1)
            {
              v73 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v73 & 0x7F) << v14;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_129;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_129:
            v68 = 32;
            break;
          default:
            goto LABEL_102;
        }

        goto LABEL_130;
      }

      if (v13 == 5)
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 48) |= 0x80u;
        while (1)
        {
          v79 = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v79 & 0x7F) << v54;
          if ((v79 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v11 = v55++ >= 9;
          if (v11)
          {
            LOBYTE(v60) = 0;
            goto LABEL_125;
          }
        }

        v60 = (v56 != 0) & ~[a2 hasError];
LABEL_125:
        v69 = 45;
        goto LABEL_133;
      }

      if (v13 != 11)
      {
LABEL_102:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_134;
      }

      v33 = PBReaderReadData();
      v34 = *(a1 + 24);
      *(a1 + 24) = v33;

LABEL_134:
      v70 = [a2 position];
      if (v70 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 48) |= 0x10u;
        while (1)
        {
          v76 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v76 & 0x7F) << v42;
          if ((v76 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_119;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v44;
        }

LABEL_119:
        v68 = 36;
      }

      else
      {
        if (v13 != 4)
        {
          goto LABEL_102;
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 48) |= 0x20u;
        while (1)
        {
          v75 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v75 & 0x7F) << v27;
          if ((v75 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_111;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v29;
        }

LABEL_111:
        v68 = 40;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          v72 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v72 & 0x7F) << v35;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_115;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

LABEL_115:
        *(a1 + 8) = v41;
        goto LABEL_134;
      }

      if (v13 != 2)
      {
        goto LABEL_102;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 48) |= 2u;
      while (1)
      {
        v77 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v77 & 0x7F) << v21;
        if ((v77 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_107;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v23;
      }

LABEL_107:
      v68 = 16;
    }

LABEL_130:
    *(a1 + v68) = v20;
    goto LABEL_134;
  }

  return [a2 hasError] ^ 1;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}