id hv_default_log_handle()
{
  if (hv_default_log_handle__pasOnceToken2 != -1)
  {
    dispatch_once(&hv_default_log_handle__pasOnceToken2, &__block_literal_global_1168);
  }

  v1 = hv_default_log_handle__pasExprOnceResult;

  return v1;
}

void HVDataSourceAssertSingleSource(uint64_t a1)
{
  if ((a1 ^ (a1 - 1)) <= a1 - 1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HVDataSourceAssertSingleSource(HVDataSources)"];
    [v4 handleFailureInFunction:v3 file:@"HVDataSources.m" lineNumber:167 description:{@"HVDataSourceAssertSingleSource(%u) failed.", a1}];
  }
}

uint64_t HVDataSourceForBundleIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.mobilemail"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"com.apple.MobileSMS"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"com.apple.news"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"com.apple.mobilenotes"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"com.apple.parsecd"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"com.apple.mobileslideshow"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"com.apple.reminders"])
  {
    v2 = 128;
  }

  else if ([v1 isEqualToString:@"com.apple.mobilesafari"])
  {
    v2 = 256;
  }

  else if ([v1 isEqualToString:@"com.apple.siri"])
  {
    v2 = 512;
  }

  else if ([v1 isEqualToString:@"com.apple.usernotificationsd"])
  {
    v2 = 0x4000;
  }

  else if ([v1 hasPrefix:@"com.apple."])
  {
    v2 = 0;
  }

  else
  {
    v2 = 1024;
  }

  return v2;
}

void HVDataSourceRunBlockPerSetBit(int a1, void *a2)
{
  v3 = a2;
  v5 = 0;
  for (i = 1; (i & a1) == 0; i = (2 * i))
  {
    if (i > 0x4000)
    {
      goto LABEL_8;
    }

LABEL_7:
    ;
  }

  v3[2](v3, i, &v5);
  if (i <= 0x4000 && (v5 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
}

id HVDataSourceDescription(int a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (!a1)
  {
    v4 = @"None";
LABEL_36:
    [v3 addObject:v4];
    goto LABEL_37;
  }

  if (a1)
  {
    [v2 addObject:@"Mail"];
    if ((a1 & 2) == 0)
    {
LABEL_4:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v3 addObject:@"Messages"];
  if ((a1 & 4) == 0)
  {
LABEL_5:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 addObject:@"News"];
  if ((a1 & 8) == 0)
  {
LABEL_6:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 addObject:@"Notes"];
  if ((a1 & 0x10) == 0)
  {
LABEL_7:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 addObject:@"Parsec"];
  if ((a1 & 0x20) == 0)
  {
LABEL_8:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 addObject:@"Photos Photo View"];
  if ((a1 & 0x40) == 0)
  {
LABEL_9:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 addObject:@"Photos KnowledgeGraph"];
  if ((a1 & 0x80) == 0)
  {
LABEL_10:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 addObject:@"Reminders"];
  if ((a1 & 0x100) == 0)
  {
LABEL_11:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 addObject:@"Safari"];
  if ((a1 & 0x200) == 0)
  {
LABEL_12:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v3 addObject:@"Siri"];
  if ((a1 & 0x400) == 0)
  {
LABEL_13:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 addObject:@"Third Party App"];
  if ((a1 & 0x800) == 0)
  {
LABEL_14:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 addObject:@"Interaction"];
  if ((a1 & 0x1000) == 0)
  {
LABEL_15:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 addObject:@"UserActivity Metadata"];
  if ((a1 & 0x2000) == 0)
  {
LABEL_16:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    [v3 addObject:@"Notifications"];
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_33:
  [v3 addObject:@"Searchable UserActivity"];
  if ((a1 & 0x4000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((a1 & 0x8000) != 0)
  {
LABEL_35:
    v4 = @"Notification Stacks";
    goto LABEL_36;
  }

LABEL_37:
  v5 = [v3 _pas_componentsJoinedByString:{@", "}];

  return v5;
}

double _refillState(uint64_t a1)
{
  if (!+[HVUserDefaults harvestBudgetRefillDisabled])
  {
    if (*a1 != -1804290770)
    {
      *a1 = -1804290770;
      *(a1 + 20) = 0;
      *(a1 + 24) = 0;
    }

    v3 = +[HVUserDefaults harvestBudgetNumberOfOperations];
    +[HVUserDefaults harvestBudgetCPUTimeSeconds];
    v5 = 0x7FFFFFFFLL;
    if (v3 < 0x7FFFFFFF)
    {
      v5 = v3;
    }

    *(a1 + 4) = v5 & ~(v5 >> 63);
    result = v4 * 1000000000.0;
    *(a1 + 8) = result;
    *(a1 + 16) = 200;
  }

  return result;
}

void HVDataSourceForContentClass(uint64_t a1)
{
  if (objc_opt_class() != a1 && objc_opt_class() != a1 && objc_opt_class() != a1 && objc_opt_class() != a1 && objc_opt_class() != a1 && objc_opt_class() != a1 && objc_opt_class() != a1 && objc_opt_class() != a1 && objc_opt_class() != a1 && objc_opt_class() != a1 && objc_opt_class() != a1 && objc_opt_class() != a1 && objc_opt_class() != a1 && objc_opt_class() != a1 && objc_opt_class() != a1 && objc_opt_class() != a1)
  {
    v2 = MEMORY[0x277CBEAD8];
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"HVDataSourceForContentClass got unexpected class %@", a1];
    [v2 raise:@"HVDataSourceForContentClassUnexpectedClass" format:v3];

    __break(1u);
  }
}

uint64_t HVIsConnectedToPower()
{
  v1 = isConnectedToPowerOverrideForTesting;
  if (isConnectedToPowerOverrideForTesting)
  {

    return [v1 BOOLValue];
  }

  else
  {
    if (initBatteryMonitoring_onceToken != -1)
    {
      dispatch_once(&initBatteryMonitoring_onceToken, &__block_literal_global);
    }

    v3 = atomic_load(&powerConnectionState);
    if (!v3)
    {
      updatePowerConnectionState();
      v3 = atomic_load(&powerConnectionState);
    }

    return v3 == 1;
  }
}

uint64_t HVPBDataSourceContentStateReadFrom(void *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HVPBDeprecatedContentStateEntry);
        [a1 addDeprecatedDeferredContentStates:v13];
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !HVPBDeprecatedContentStateEntryReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(HVPBContentStateEntry);
    [a1 addDeferredContentStates:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !HVPBContentStateEntryReadFrom(&v13->super.super.isa, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void HVSHA256String(void *a1, CC_SHA256_CTX *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a1;
  CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
  if (CStringPtr)
  {
    CC_SHA256_Update(a2, CStringPtr, [(__CFString *)v3 length]);
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    *buffer = 0u;
    v10 = 0u;
    usedBufLen = 0;
    v6 = [(__CFString *)v3 length];
    v7 = 0;
    while (1)
    {
      v42.location = v7;
      v42.length = v6;
      if (!CFStringGetBytes(v3, v42, 0x8000100u, 0, 0, buffer, 512, &usedBufLen))
      {
        break;
      }

      CC_SHA256_Update(a2, buffer, usedBufLen);
      v7 += usedBufLen;
      v6 -= usedBufLen;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t HVPBContentStateEntryReadFrom(id *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HVPBContentState);
        objc_storeStrong(a1 + 1, v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HVPBContentStateReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    if (v13)
    {
      [a1 addUniqueIds:v13];
    }

LABEL_24:

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HVPBContentStateReadFrom(uint64_t a1, void *a2)
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
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v24 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24 & 0x7F) << v14;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_36:
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        if (v13)
        {
          [a1 addConsumers:v13];
        }
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id HVDataSourceContentStateKey(int a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  HIDWORD(v7) = a1 - 1024;
  LODWORD(v7) = a1 - 1024;
  v6 = v7 >> 10;
  v8 = v6 > 7;
  v9 = (1 << v6) & 0x8B;
  if (!v8 && v9 != 0)
  {
    v11 = [v3 bundleId];
    [v5 addObject:v11];
  }

  v12 = [v3 uniqueId];
  [v5 addObject:v12];

  if (objc_opt_respondsToSelector())
  {
    v13 = [v3 personaId];
    if (v13)
    {
      [v5 addObject:v13];
    }
  }

  v14 = [v5 _pas_componentsJoinedByString:@":"];

  objc_autoreleasePoolPop(v4);

  return v14;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void HVBatteryMonitoringStart()
{
  if (initBatteryMonitoring_onceToken != -1)
  {
    dispatch_once(&initBatteryMonitoring_onceToken, &__block_literal_global);
  }
}

void __initBatteryMonitoring_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);

  v2 = dispatch_queue_create("HVBatteryMonitoring", v1);
  out_token = 0;
  notify_register_dispatch("com.apple.system.powersources.source", &out_token, v2, &__block_literal_global_6);
}

void __initBatteryMonitoring_block_invoke_2()
{
  updatePowerConnectionState();
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"kHVBatteryStateChangedNotification" object:0];
}

void updatePowerConnectionState()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = IOPSGetTimeRemainingEstimate();
  if (v0 == -2.0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  atomic_store(v1, &powerConnectionState);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3[0] = 67109120;
    v3[1] = v0 == -2.0;
    _os_log_debug_impl(&dword_2321EC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "AC: %i", v3, 8u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void sub_2321F2E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2321F4A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  _Block_object_dispose(&a17, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HVDataSourceFileProtection(uint64_t a1)
{
  v1 = a1;
  HVDataSourceAssertSingleSource(a1);
  if (v1 <= 127)
  {
    if ((v1 - 1) <= 0x3F)
    {
      if (((1 << (v1 - 1)) & 0x800000008000808ALL) != 0)
      {
        goto LABEL_10;
      }

      if (v1 == 1)
      {
        v3 = MEMORY[0x277CCA190];
        goto LABEL_25;
      }
    }

    if (v1)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (v1 <= 2047)
  {
    if (v1 > 511)
    {
      if (v1 != 512)
      {
        if (v1 != 1024)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    else if (v1 != 128 && v1 != 256)
    {
      goto LABEL_26;
    }

LABEL_10:
    v3 = MEMORY[0x277CCA1A0];
LABEL_25:
    v2 = *v3;
    goto LABEL_26;
  }

  if (v1 >= 0x2000)
  {
    if (v1 != 0x2000)
    {
      if (v1 != 0x8000 && v1 != 0x4000)
      {
        goto LABEL_26;
      }

      goto LABEL_10;
    }

LABEL_24:
    v3 = MEMORY[0x277CCA1B8];
    goto LABEL_25;
  }

  if (v1 == 2048 || v1 == 4096)
  {
    goto LABEL_24;
  }

LABEL_26:

  return v2;
}

uint64_t HVDataSourceUsedForMultipleBundles(int a1)
{
  HIDWORD(v1) = a1 - 1024;
  LODWORD(v1) = a1 - 1024;
  return ((v1 >> 10) < 8) & (0x8Bu >> (v1 >> 10));
}

void sub_2321F774C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__312(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2321F8BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2321F8E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2321F919C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t HVPBDeprecatedContentStateEntryReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(HVPBContentState);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !HVPBContentStateReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

BOOL HVCaseInsensitiveEqual(const __CFString *a1, const __CFString *a2)
{
  Length = CFStringGetLength(a1);
  if (Length != CFStringGetLength(a2))
  {
    return 0;
  }

  v6.location = 0;
  v6.length = Length;
  return CFStringCompareWithOptions(a1, a2, v6, 1uLL) == kCFCompareEqualTo;
}

uint64_t HVCaseInsensitiveStringHash(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  if (Length)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, 0);
    if (CharacterAtIndex > 0x7F)
    {
      v4 = __tolower(CharacterAtIndex);
    }

    else if (CharacterAtIndex - 65 >= 0x1A)
    {
      v4 = CharacterAtIndex;
    }

    else
    {
      v4 = CharacterAtIndex | 0x20;
    }

    if (Length != 1)
    {
      v5 = CFStringGetCharacterAtIndex(a1, Length - 1);
      if (v5 > 0x7F)
      {
        v6 = __tolower(v5);
      }

      else if (v5 - 65 >= 0x1A)
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 | 0x20;
      }

      v4 = (v4 | (v4 << 16)) + v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return (v4 * Length);
}

void sub_2321FAF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__594(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2321FE0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__691(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2321FE75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2321FEA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322002D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232200B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232201950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_232201AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232201CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__971(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232202940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

void sub_232203734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__248(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x238381E60](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_232204DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_232205C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232206874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232206F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232207550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1095(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232207754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232207BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23220801C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_23220889C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232208B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_232208C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232209234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_2322094A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __hv_default_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.ProactiveHarvesting", "Default");
  v2 = hv_default_log_handle__pasExprOnceResult;
  hv_default_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id hv_xpc_server_log_handle()
{
  if (hv_xpc_server_log_handle__pasOnceToken3 != -1)
  {
    dispatch_once(&hv_xpc_server_log_handle__pasOnceToken3, &__block_literal_global_9);
  }

  v1 = hv_xpc_server_log_handle__pasExprOnceResult;

  return v1;
}

void __hv_xpc_server_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.ProactiveHarvesting", "XPCServer");
  v2 = hv_xpc_server_log_handle__pasExprOnceResult;
  hv_xpc_server_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id hv_default_signpost_handle()
{
  if (hv_default_signpost_handle__pasOnceToken4 != -1)
  {
    dispatch_once(&hv_default_signpost_handle__pasOnceToken4, &__block_literal_global_12);
  }

  v1 = hv_default_signpost_handle__pasExprOnceResult;

  return v1;
}

void __hv_default_signpost_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.ProactiveHarvesting.Signposts", "Default");
  v2 = hv_default_signpost_handle__pasExprOnceResult;
  hv_default_signpost_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id hv_scheduled_task_signpost_handle()
{
  if (hv_scheduled_task_signpost_handle__pasOnceToken5 != -1)
  {
    dispatch_once(&hv_scheduled_task_signpost_handle__pasOnceToken5, &__block_literal_global_14);
  }

  v1 = hv_scheduled_task_signpost_handle__pasExprOnceResult;

  return v1;
}

void __hv_scheduled_task_signpost_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.ProactiveHarvesting.Signposts", "ScheduledTask");
  v2 = hv_scheduled_task_signpost_handle__pasExprOnceResult;
  hv_scheduled_task_signpost_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_23220A87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1209(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23220FD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1752(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23220FF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2322101B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2322103E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2322105A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_23221077C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_232210950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_232210B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_232210CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_232210ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void __bomData_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v3 = -257;
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v3 length:2];
  v2 = bomData__pasExprOnceResult;
  bomData__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id nullByteData()
{
  if (nullByteData__pasOnceToken2 != -1)
  {
    dispatch_once(&nullByteData__pasOnceToken2, &__block_literal_global_1839);
  }

  v1 = nullByteData__pasExprOnceResult;

  return v1;
}

void __nullByteData_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:"" length:1];
  v2 = nullByteData__pasExprOnceResult;
  nullByteData__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_232211E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322136E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void charactersSAX(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (v5 && a3 && a2 && (v5[18] & 1) == 0)
  {
    v6 = v5;
    [v5[16] appendBytes:a2 length:a3];
    v5 = v6;
  }
}

void endElementSAX(void *a1, uint64_t a2)
{
  v6 = a1;
  if (!strcmp(a2, "title") || !strcmp(a2, "script") || !strcmp(a2, "style"))
  {
    v4 = v6;
    if (v6)
    {
      v6[144] = 0;
    }
  }

  else if (*a2 == 98 && *(a2 + 1) == 114 && !*(a2 + 2))
  {
    v4 = v6;
    if (v6)
    {
      v6[120] = 0;
      [(HVHtmlParser *)v6 _newBlock];
      v4 = v6;
    }
  }

  else
  {
    v3 = htmlTagLookup(a2);
    v4 = v6;
    if (v3)
    {
      if (!v3->isinline)
      {
        v5 = strcmp(a2, "pre");
        [(HVHtmlParser *)v6 _newBlock];
        v4 = v6;
        if (v6)
        {
          if (!v5 && v6[145] == 1)
          {
            v6[145] = 0;
          }
        }
      }
    }
  }

  [(HVHtmlParser *)v4 _tagEnd];
}

void startElementSAX(void *a1, uint64_t a2, uint64_t a3)
{
  v110 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    ++v5[23];
  }

  if (!strcmp(a2, "title") || !strcmp(a2, "script") || !strcmp(a2, "style"))
  {
    if (v6)
    {
      *(v6 + 144) = 1;
    }
  }

  else if (*a2 != 98 || *(a2 + 1) != 114 || *(a2 + 2))
  {
    v7 = htmlTagLookup(a2);
    if (v7)
    {
      if (!v7->isinline)
      {
        v8 = strcmp(a2, "pre");
        if (v6 && !v8)
        {
          *(v6 + 145) = 1;
        }

        [(HVHtmlParser *)v6 _newBlock];
        if (!strcmp(a2, "table"))
        {
          if (!v6)
          {
            goto LABEL_155;
          }

          v24 = *(v6 + 160);
        }

        else
        {
          if (strcmp(a2, "blockquote"))
          {
            if (!strcmp(a2, "div"))
            {
              if (a3)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v9 = strcmp(a2, "pre");
              if (a3 && !v9)
              {
LABEL_19:
                v10 = *a3;
                while (1)
                {
                  if (!strcmp(v10, "class"))
                  {
                    v12 = *(a3 + 8);
                    if (v12)
                    {
                      if (!strcmp(a2, "div") && (strstr(v12, "gmail_quote") || strstr(v12, "yahoo_quoted") || !strcmp(v12, "domino-section")))
                      {
                        goto LABEL_100;
                      }

                      v93 = 0u;
                      v94 = 0u;
                      v91 = 0u;
                      v92 = 0u;
                      v13 = [&unk_284752A98 countByEnumeratingWithState:&v91 objects:buffer count:16];
                      if (v13)
                      {
                        break;
                      }
                    }
                  }

LABEL_21:
                  v11 = *(a3 + 16);
                  a3 += 16;
                  v10 = v11;
                  if (!v11)
                  {
                    goto LABEL_155;
                  }
                }

                v14 = v13;
                v15 = *v92;
LABEL_30:
                v16 = 0;
                while (1)
                {
                  if (*v92 != v15)
                  {
                    objc_enumerationMutation(&unk_284752A98);
                  }

                  if (strstr(v12, [*(*(&v91 + 1) + 8 * v16) UTF8String]))
                  {
                    break;
                  }

                  if (v14 == ++v16)
                  {
                    v14 = [&unk_284752A98 countByEnumeratingWithState:&v91 objects:buffer count:16];
                    if (v14)
                    {
                      goto LABEL_30;
                    }

                    goto LABEL_21;
                  }
                }

                if (!v6)
                {
                  goto LABEL_155;
                }

                v24 = *(v6 + 168);
                goto LABEL_105;
              }
            }

            if (*a2 == 104 && *(a2 + 1) == 114 && a3 && !*(a2 + 2))
            {
              v52 = *a3;
              v51 = (a3 + 16);
              v50 = v52;
              while (1)
              {
                if (*v50 == 105 && v50[1] == 100 && !v50[2])
                {
                  v53 = *(v51 - 1);
                  if (v53)
                  {
                    if (!strcmp(v53, "stopSpelling"))
                    {
                      break;
                    }
                  }
                }

                v54 = *v51;
                v51 += 2;
                v50 = v54;
                if (!v54)
                {
                  goto LABEL_155;
                }
              }

              if (v6 && *(v6 + 224) == 0x7FFFFFFFFFFFFFFFLL)
              {
                *(v6 + 224) = *(v6 + 112);
              }
            }

            goto LABEL_155;
          }

LABEL_100:
          if (!v6)
          {
            goto LABEL_155;
          }

          v24 = *(v6 + 152);
        }

LABEL_105:
        [(HVHtmlParser *)v6 _enterRegion:v24];
        goto LABEL_155;
      }
    }
  }

  if (*a2 != 97 || !a3 || *(a2 + 1))
  {
    goto LABEL_155;
  }

  while (1)
  {
    v17 = objc_autoreleasePoolPush();
    if (!strcmp(*a3, "href"))
    {
      break;
    }

    objc_autoreleasePoolPop(v17);
    v18 = *(a3 + 16);
    a3 += 16;
    if (!v18)
    {
      goto LABEL_155;
    }
  }

  v19 = *(a3 + 8);
  if (!v19)
  {
    goto LABEL_154;
  }

  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v19 encoding:4];
  if (!v20)
  {
    goto LABEL_153;
  }

  v21 = 0x277CBE000uLL;
  v22 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v20];
  if (v22)
  {
    v23 = v22;
    goto LABEL_142;
  }

  v25 = objc_autoreleasePoolPush();
  v26 = v20;
  v27 = objc_opt_self();

  if (!v27)
  {
    goto LABEL_102;
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  *buffer = 0u;
  v96 = 0u;
  Length = CFStringGetLength(v26);
  theString = v26;
  v106 = 0;
  v107 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v26);
  CStringPtr = 0;
  v104 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v26, 0x600u);
  }

  v108 = 0;
  v109 = 0;
  v105 = CStringPtr;
  if (Length <= 0)
  {
LABEL_102:

    goto LABEL_141;
  }

  v86 = v26;
  v87 = v25;
  v88 = v20;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 64;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  v37 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if (v33 >= 4)
    {
      v38 = 4;
    }

    else
    {
      v38 = v33;
    }

    v39 = v107;
    if (v107 <= v33)
    {
      goto LABEL_85;
    }

    if (v104)
    {
      v40 = &v104[v106];
LABEL_62:
      v41 = v40[v33];
      goto LABEL_65;
    }

    if (!v105)
    {
      if (v109 <= v33 || v32 > v33)
      {
        v46 = v38 + v31;
        v47 = v34 - v38;
        v48 = v33 - v38;
        v89 = v35;
        v49 = v48 + 64;
        if (v48 + 64 >= v107)
        {
          v49 = v107;
        }

        v108 = v48;
        v109 = v49;
        if (v107 >= v47)
        {
          v39 = v47;
        }

        v111.location = v48 + v106;
        v111.length = v39 + v46;
        CFStringGetCharacters(theString, v111, buffer);
        v35 = v89;
        v32 = v108;
      }

      v40 = &buffer[-v32];
      goto LABEL_62;
    }

    v41 = v105[v106 + v33];
LABEL_65:
    if (v41 == 35)
    {
      if (v37 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v37 = v33;
      }
    }

    else if (v41 == 63)
    {
      if (v37 == 0x7FFFFFFFFFFFFFFFLL && v36 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = v33;
      }
    }

    else if (v41 == 47 && v36 == 0x7FFFFFFFFFFFFFFFLL && v37 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = 0x7FFFFFFFFFFFFFFFLL;
      if (v35 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = 0x7FFFFFFFFFFFFFFFLL;
        v35 = v33;
      }

      else
      {
        if (v33 == v35 + 1)
        {
          v35 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v36 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

LABEL_85:
    ++v33;
    --v31;
    ++v34;
  }

  while (Length != v33);
  v90 = v35;
  v26 = v86;

  if (v37 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v85 = [(__CFString *)v86 length]- (v37 + 1);
    v55 = [(__CFString *)v86 substringWithRange:v37 + 1];
    v56 = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
    v57 = [v55 stringByAddingPercentEncodingWithAllowedCharacters:v56];

    if (v57)
    {
      v58 = [(__CFString *)v86 stringByReplacingCharactersInRange:v37 + 1 withString:v85, v57];

      v26 = v58;
    }
  }

  if (v36 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = [(__CFString *)v26 length];
    if (v37 >= v59)
    {
      v60 = v59;
    }

    else
    {
      v60 = v37;
    }

    v61 = v60 - (v36 + 1);
    v62 = [(__CFString *)v26 substringWithRange:v36 + 1, v61];
    v63 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
    v64 = [v62 stringByAddingPercentEncodingWithAllowedCharacters:v63];

    if (v64)
    {
      v65 = [(__CFString *)v26 stringByReplacingCharactersInRange:v36 + 1 withString:v61, v64];

      v26 = v65;
    }
  }

  if (v90 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = v87;
    v20 = v88;
    v21 = 0x277CBE000;
  }

  else
  {
    if (v37 >= v36)
    {
      v66 = v36;
    }

    else
    {
      v66 = v37;
    }

    v67 = [(__CFString *)v26 length];
    if (v66 >= v67)
    {
      v68 = v67;
    }

    else
    {
      v68 = v66;
    }

    v69 = v68 - (v90 + 1);
    v70 = [(__CFString *)v26 substringWithRange:v90 + 1, v69];
    v71 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v72 = [v70 stringByAddingPercentEncodingWithAllowedCharacters:v71];

    if (v72)
    {
      v73 = [(__CFString *)v26 stringByReplacingCharactersInRange:v90 + 1 withString:v69, v72];

      v26 = v73;
    }

    v25 = v87;
    v20 = v88;
    v21 = 0x277CBE000uLL;
  }

LABEL_141:
  v74 = [(__CFString *)v26 stringByReplacingOccurrencesOfString:@" " withString:@"%20" options:2 range:0, [(__CFString *)v26 length]];

  v23 = [objc_alloc(*(v21 + 3008)) initWithString:v74];
  objc_autoreleasePoolPop(v25);
  if (v23)
  {
LABEL_142:
    v75 = [v23 host];
    if ([v75 compare:@"apple.com" options:3] && objc_msgSend(v75, "rangeOfString:options:", @".apple.com", 15) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v76 = v75;
      if ([v76 compare:@"icloud.com" options:3])
      {
        v77 = [v76 rangeOfString:@".icloud.com" options:15];

        if (v77 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (!v6)
          {
LABEL_152:

            goto LABEL_153;
          }

LABEL_151:
          v78 = *(v6 + 240);
          v79 = *(v6 + 184);
          v80 = v23;
          [v78 addIndex:v79];
          v81 = [(HVHtmlParser *)v6 _currentOutputLength];
          v82 = *(v6 + 248);
          v83 = [[HVHtmlParserHyperlink alloc] initWithURL:v80 range:v81, 0];

          [v82 addObject:v83];
          goto LABEL_152;
        }

LABEL_150:
        [*(v6 + 232) addObject:v23];
        goto LABEL_151;
      }
    }

    goto LABEL_150;
  }

LABEL_153:

LABEL_154:
  objc_autoreleasePoolPop(v17);
LABEL_155:

  v84 = *MEMORY[0x277D85DE8];
}

void sub_232227B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232228118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}