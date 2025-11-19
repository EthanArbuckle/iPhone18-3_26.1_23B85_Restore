uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26AB0763C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SUBLoggingInit()
{
  if (SUBLoggingInit_onceToken != -1)
  {
    SUBLoggingInit_cold_1();
  }
}

uint64_t __SUBLoggingInit_block_invoke()
{
  softwareupdatebridge_log = os_log_create("com.apple.subridge", "Logging");

  return MEMORY[0x2821F96F8]();
}

void SUBIPCEncodeObject(void *a1, const char *a2, void *a3)
{
  if (a1 && a2 && a3)
  {
    v5 = MEMORY[0x277CCAAB0];
    v6 = a3;
    v7 = a1;
    v11 = [[v5 alloc] initRequiringSecureCoding:1];
    [v11 encodeObject:v6 forKey:*MEMORY[0x277CCA308]];

    [v11 finishEncoding];
    v8 = [v11 encodedData];
    v9 = [v8 bytes];
    v10 = [v11 encodedData];
    xpc_dictionary_set_data(v7, a2, v9, [v10 length]);
  }
}

id SUBIPCDecodeObjectForKey(void *a1, const char *a2, uint64_t a3)
{
  data = 0;
  if (a1)
  {
    if (a2)
    {
      length = 0;
      data = xpc_dictionary_get_data(a1, a2, &length);
      if (data)
      {
        v5 = objc_alloc(MEMORY[0x277CCAAC8]);
        v6 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
        v7 = [v5 initForReadingFromData:v6 error:0];

        data = [v7 decodeObjectOfClass:a3 forKey:*MEMORY[0x277CCA308]];
        [v7 finishDecoding];
      }
    }
  }

  return data;
}

id SUBIPCDecodeObjectsForKey(void *a1, const char *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  data = 0;
  if (a1)
  {
    if (a2)
    {
      length = 0;
      data = xpc_dictionary_get_data(a1, a2, &length);
      if (data)
      {
        v7 = objc_alloc(MEMORY[0x277CCAAC8]);
        v8 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
        v9 = [v7 initForReadingFromData:v8 error:0];

        v10 = *MEMORY[0x277CCA308];
        v15 = 0;
        data = [v9 decodeTopLevelObjectOfClasses:v5 forKey:v10 error:&v15];
        v11 = v15;
        [v9 finishDecoding];
        if (v11)
        {
          v12 = softwareupdatebridge_log;
          if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v18 = a2;
            v19 = 2112;
            v20 = v11;
            _os_log_impl(&dword_26AB06000, v12, OS_LOG_TYPE_DEFAULT, "Error decoding %s: %@", buf, 0x16u);
          }
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return data;
}

BOOL SUBIPCClientIsEntitled()
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  xpc_connection_get_audit_token();
  v0 = *MEMORY[0x277CBECE8];
  memset(&token, 0, sizeof(token));
  v1 = SecTaskCreateWithAuditToken(v0, &token);
  if (v1)
  {
    v2 = v1;
    error = 0;
    v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.private.allow-subridge", &error);
    v4 = error;
    if (v3)
    {
      v5 = v3;
      v6 = CFGetTypeID(v3);
      if (v6 == CFBooleanGetTypeID())
      {
        v7 = CFBooleanGetValue(v5) != 0;
      }

      else
      {
        v13 = softwareupdatebridge_log;
        v7 = 0;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(token.val[0]) = 0;
          _os_log_impl(&dword_26AB06000, v13, OS_LOG_TYPE_DEFAULT, "entitlement has wrong type", &token, 2u);
          v7 = 0;
        }
      }

      CFRelease(v2);
      goto LABEL_16;
    }

    v8 = softwareupdatebridge_log;
    v9 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v9)
      {
        token.val[0] = 138543362;
        *&token.val[1] = v4;
        v10 = "unable to look up client entitlement: %{public}@";
        v11 = v8;
        v12 = 12;
LABEL_14:
        _os_log_impl(&dword_26AB06000, v11, OS_LOG_TYPE_DEFAULT, v10, &token, v12);
      }
    }

    else if (v9)
    {
      LOWORD(token.val[0]) = 0;
      v10 = "client is not entitled";
      v11 = v8;
      v12 = 2;
      goto LABEL_14;
    }

    v7 = 0;
    v5 = v2;
LABEL_16:
    CFRelease(v5);

    goto LABEL_17;
  }

  v7 = 0;
LABEL_17:
  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

id SUBIPCDictionaryToXPC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = xpc_dictionary_create(0, 0, 0);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __SUBIPCDictionaryToXPC_block_invoke;
  v9[3] = &unk_279CA7980;
  v7 = v6;
  v10 = v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __SUBIPCDictionaryToXPC_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = xpc_string_create([v7 UTF8String]);
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = xpc_data_create([v7 bytes], objc_msgSend(v7, "length"));
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = xpc_int64_create([v7 integerValue]);
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:
  v10 = *(a1 + 32);
  v11 = v12;
  xpc_dictionary_set_value(v10, [v12 UTF8String], v9);
  *a4 = 0;
}

id SUBIPCXPCToDictionary(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && MEMORY[0x26D6678D0](v1) == MEMORY[0x277D86468])
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __SUBIPCXPCToDictionary_block_invoke;
    applier[3] = &unk_279CA79A8;
    v3 = v4;
    v7 = v3;
    xpc_dictionary_apply(v2, applier);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __SUBIPCXPCToDictionary_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x26D6678D0]();
  if (v6 == MEMORY[0x277D864C0])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v5)];
  }

  else if (v6 == MEMORY[0x277D86458])
  {
    v8 = MEMORY[0x277CBEA90];
    bytes_ptr = xpc_data_get_bytes_ptr(v5);
    v7 = [v8 dataWithBytes:bytes_ptr length:xpc_data_get_length(v5)];
  }

  else
  {
    if (v6 != MEMORY[0x277D86498])
    {
      goto LABEL_9;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:xpc_int64_get_value(v5)];
  }

  v10 = v7;
  if (v7)
  {
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    [v11 setObject:v10 forKey:v12];
  }

LABEL_9:

  return 1;
}

id SUBError(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = SUBErrorUserInfoV(a1, a2, 0, a3, a4, &a9);

  return v9;
}

id SUBErrorUserInfoV(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v12)
  {
    v15 = [v12 mutableCopy];
  }

  else
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
  }

  v16 = v15;
  if (v14)
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v14 arguments:a6];
    if (v17)
    {
      [v16 setObject:v17 forKeyedSubscript:*MEMORY[0x277CCA450]];
    }
  }

  if (v13)
  {
    [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:v11 code:a2 userInfo:v16];

  return v18;
}

id SUBErrorUserInfo(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = SUBErrorUserInfoV(a1, a2, a3, a4, a5, &a9);

  return v9;
}

uint64_t SUBIsChargerConnected()
{
  v0 = IOServiceMatching("IOPMPowerSource");
  if (!v0)
  {
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v0);
  if (!MatchingService)
  {
    return 0;
  }

  v2 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"ExternalConnected", *MEMORY[0x277CBECE8], 0);
  IOObjectRelease(v2);
  if (!CFProperty)
  {
    return 0;
  }

  Value = CFBooleanGetValue(CFProperty);
  CFRelease(CFProperty);
  return Value;
}

id SUBActiveNRDevice()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D2BCF8] sharedInstance];
  v1 = [v0 getAllDevices];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v6 = *MEMORY[0x277D2BB20];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 valueForProperty:{v6, v14}];
        v10 = [v9 BOOLValue];

        if (v10)
        {
          v11 = v8;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t SUBIsRunningInStoreDemoMode()
{
  if (SUBIsRunningInStoreDemoMode_lockDispatchOnce != -1)
  {
    SUBIsRunningInStoreDemoMode_cold_1();
  }

  v0 = SUBIsRunningInStoreDemoMode_lock;
  objc_sync_enter(v0);
  if (SUBIsRunningInStoreDemoMode_onceToken != -1)
  {
    SUBIsRunningInStoreDemoMode_cold_2();
  }

  v1 = SUBIsRunningInStoreDemoMode_result;
  objc_sync_exit(v0);

  return v1;
}

uint64_t __SUBIsRunningInStoreDemoMode_block_invoke()
{
  SUBIsRunningInStoreDemoMode_lock = objc_alloc_init(MEMORY[0x277CCABB0]);

  return MEMORY[0x2821F96F8]();
}

void __SUBIsRunningInStoreDemoMode_block_invoke_2()
{
  v8 = *MEMORY[0x277D85DE8];
  SUBIsRunningInStoreDemoMode_result = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0) != 0;
  out_token = 0;
  v0 = dispatch_get_global_queue(25, 0);
  v1 = notify_register_dispatch("com.apple.demo-settings.changed", &out_token, v0, &__block_literal_global_297);

  if (v1)
  {
    v2 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      if (SUBIsRunningInStoreDemoMode_result)
      {
        v3 = @"Enabled";
      }

      else
      {
        v3 = @"Disabled";
      }

      *buf = 138412290;
      v7 = v3;
      _os_log_impl(&dword_26AB06000, v2, OS_LOG_TYPE_DEFAULT, "Failed to register for storeDemoMode state change notifications. StoreDemoMode currently %@", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __SUBIsRunningInStoreDemoMode_block_invoke_3()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = SUBIsRunningInStoreDemoMode_lock;
  objc_sync_enter(v0);
  SUBIsRunningInStoreDemoMode_result = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0) != 0;
  v1 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    if (SUBIsRunningInStoreDemoMode_result)
    {
      v2 = @"Enabled";
    }

    else
    {
      v2 = @"Disabled";
    }

    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_26AB06000, v1, OS_LOG_TYPE_DEFAULT, "StoreDemoMode settings changed. StoreDemoMode is now %@", &v4, 0xCu);
  }

  objc_sync_exit(v0);

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t SUBIsRunningInStandaloneGizmoMode()
{
  if (SUBIsRunningInStandaloneGizmoMode_onceToken != -1)
  {
    SUBIsRunningInStandaloneGizmoMode_cold_1();
  }

  return SUBIsRunningInStandaloneGizmoMode_result;
}

uint64_t __SUBIsRunningInStandaloneGizmoMode_block_invoke()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    result = CFPreferencesGetAppBooleanValue(@"StandAloneGizmoMode", @"com.apple.subridge", 0);
    v1 = result != 0;
  }

  else
  {
    v1 = 0;
  }

  SUBIsRunningInStandaloneGizmoMode_result = v1;
  return result;
}

id copySUBSimulationFileName()
{
  if (copySUBSimulationFileName_onceToken != -1)
  {
    copySUBSimulationFileName_cold_1();
  }

  v1 = copySUBSimulationFileName_simulationFileName;

  return v1;
}

void __copySUBSimulationFileName_block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  if (MGGetBoolAnswer())
  {
    v0 = CFPreferencesCopyValue(@"SimulationFileName", @"com.apple.subridge", @"mobile", *MEMORY[0x277CBF010]);
    v1 = copySUBSimulationFileName_simulationFileName;
    copySUBSimulationFileName_simulationFileName = v0;

    if (copySUBSimulationFileName_simulationFileName)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          v6 = 138412290;
          v7 = copySUBSimulationFileName_simulationFileName;
          _os_log_impl(&dword_26AB06000, v2, OS_LOG_TYPE_DEFAULT, "Found default for simulator file %@", &v6, 0xCu);
        }

        v3 = *MEMORY[0x277D85DE8];
        return;
      }

      v4 = copySUBSimulationFileName_simulationFileName;
    }

    else
    {
      v4 = 0;
    }

    copySUBSimulationFileName_simulationFileName = 0;
  }

  else
  {
    v4 = copySUBSimulationFileName_simulationFileName;
    copySUBSimulationFileName_simulationFileName = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

__CFString *stringForMAAssetCancelResult(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_279CA79E8 + a1);
  }
}

__CFString *stringForMAAssetPurgeResult(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_279CA7A20 + a1);
  }
}

void enableNotification(const char *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "Notification", a1);
  xpc_set_event();
}

char *SUBResultTypeForMessageType(const char *a1)
{
  if (!strcmp(a1, SUBMessageTypeScanForUpdates))
  {
    return SUBMessageTypeScanResult;
  }

  if (!strcmp(a1, SUBMessageTypeStartDownload))
  {
    return SUBMessageTypeDownloadProgress;
  }

  if (!strcmp(a1, SUBMessageTypeInstallUpdate))
  {
    return SUBMessageTypeInstallResult;
  }

  if (!strcmp(a1, SUBMessageTypeSetUserInstallRequestType))
  {
    return SUBMessageTypeSetUserInstallRequestTypeCompletion;
  }

  if (!strcmp(a1, SUBMessageTypeUserDidAcceptTermsAndConditions))
  {
    return SUBMessageTypeUserDidAcceptTermsAndConditionsCompletion;
  }

  return 0;
}

__CFString *SUBStringForManagerState(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_279CA7B08 + a1 - 1);
  }
}

const char *SUBStringForUserInstallRequestType(unint64_t a1)
{
  if (a1 > 3)
  {
    return "unknown";
  }

  else
  {
    return off_279CA7B58[a1];
  }
}