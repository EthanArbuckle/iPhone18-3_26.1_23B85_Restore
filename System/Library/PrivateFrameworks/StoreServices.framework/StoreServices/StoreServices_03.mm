uint64_t SSCompareProductVersions(void *a1, void *a2)
{
  v4 = [objc_msgSend(MEMORY[0x1E696AB08] "decimalDigitCharacterSet")];
  v5 = [a1 componentsSeparatedByCharactersInSet:v4];
  v6 = [v5 count];
  v7 = [a2 componentsSeparatedByCharactersInSet:v4];
  v8 = [v7 count];
  v9 = v8;
  if (v6 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10 - 1;
  if (v10 < 1)
  {
    if (v6 < v8)
    {
      return -1;
    }

    else
    {
      return v6 > v8;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = [objc_msgSend(v5 objectAtIndex:{v13), "intValue"}];
      v15 = [objc_msgSend(v7 objectAtIndex:{v13), "intValue"}];
      if (v14 > v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = v12;
      }

      if (v14 < v15)
      {
        v12 = -1;
      }

      else
      {
        v12 = v16;
      }

      if (v14 != v15)
      {
        break;
      }
    }

    while (v11 != v13++);
    v18 = v6 > v9;
    if (v6 < v9)
    {
      v18 = -1;
    }

    if (!v12)
    {
      return v18;
    }
  }

  return v12;
}

uint64_t SSNetworkTypeApplyBlock(uint64_t a1)
{
  v2 = 0;
  do
  {
    v5 = 0;
    result = (*(a1 + 16))(a1, qword_1D4B38DC0[v2], &v5);
    if (v5)
    {
      break;
    }
  }

  while (v2++ != 9);
  return result;
}

void *SSErrorBySettingUserInfoValue(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([v5 userInfo])
    {
      [v6 addEntriesFromDictionary:{objc_msgSend(v5, "userInfo")}];
    }

    if (a3)
    {
      [v6 setObject:a3 forKey:a2];
    }

    else
    {
      [v6 removeObjectForKey:a2];
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:objc_msgSend(v5 code:"domain") userInfo:{objc_msgSend(v5, "code"), v6}];

    return v7;
  }

  return result;
}

uint64_t SSErrorIsNetworkError(void *a1)
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x1E696A978]])
  {
    LOBYTE(v3) = 1;
  }

  else if ([v2 isEqualToString:@"SSErrorDomain"])
  {
    v4 = [a1 code];
    v3 = 0x181u >> (v4 - 102);
    if ((v4 - 102) > 8)
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t SSErrorWithUnderlyingErrorAndInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  if (!(a4 | a5))
  {
    v8 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DEFAULT_ERROR_TITLE", &stru_1F503F418, 0}];
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = v12;
  if (a6)
  {
    [v12 addEntriesFromDictionary:a6];
  }

  if (a1)
  {
    [v13 setObject:a1 forKey:*MEMORY[0x1E696AA08]];
  }

  if (v8)
  {
    [v13 setObject:v8 forKey:*MEMORY[0x1E696A578]];
  }

  if (a5)
  {
    [v13 setObject:a5 forKey:*MEMORY[0x1E696A588]];
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:a2 code:a3 userInfo:v13];

  return v14;
}

unint64_t SSGetUnsignedLongLongFromValue(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [a1 unsignedLongLongValue];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v3 = [a1 UTF8String]) != 0)
    {

      return strtoull(v3, 0, 10);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t SSGetNotEnoughDiskSpaceErrorWithCount(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"NOT_ENOUGH_SPACE_TITLE", &stru_1F503F418, 0}];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (a1 == 1)
  {
    v4 = @"NOT_ENOUGH_SPACE_SINGULAR";
  }

  else
  {
    v4 = @"NOT_ENOUGH_SPACE_PLURAL";
  }

  v5 = SSErrorWithUnderlyingErrorAndInfo(0, @"SSErrorDomain", 103, v2, [v3 localizedStringForKey:v4 value:&stru_1F503F418 table:0], 0);
  v6 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"NOT_ENOUGH_SPACE_SETTINGS", &stru_1F503F418, 0}];

  return __ErrorByAddingRecoveryButton(v5, v6, @"OpenURL");
}

uint64_t __ErrorByAddingRecoveryButton(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([a1 userInfo])
  {
    [v6 addEntriesFromDictionary:{objc_msgSend(a1, "userInfo")}];
  }

  [v6 setObject:@"prefs:root=General&path=USAGE" forKey:@"SSDialogErrorKeyRecoveryButtonParameter"];
  if (a3)
  {
    [v6 setObject:a3 forKey:@"SSDialogErrorKeyRecoveryButtonAction"];
  }

  if (a2)
  {
    [v6 setObject:a2 forKey:@"SSDialogErrorKeyRecoveryTitle"];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:objc_msgSend(a1 code:"domain") userInfo:{objc_msgSend(a1, "code"), v6}];

  return v7;
}

uint64_t SSGetNotEnoughDiskSpaceErrorWithName(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"NOT_ENOUGH_SPACE_SPECIFIC_%@", &stru_1F503F418, 0), a1];
    v3 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"NOT_ENOUGH_SPACE_TITLE", &stru_1F503F418, 0}];
    v4 = SSErrorWithUnderlyingErrorAndInfo(0, @"SSErrorDomain", 103, v3, v2, 0);
    v5 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"NOT_ENOUGH_SPACE_SETTINGS", &stru_1F503F418, 0}];

    return __ErrorByAddingRecoveryButton(v4, v5, @"OpenURL");
  }

  else
  {

    return SSGetNotEnoughDiskSpaceErrorWithCount(1);
  }
}

__CFString *SSGetStringForURLBagType(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E84AD200[a1];
  }
}

uint64_t SSNetworkTypeIsCellularType(uint64_t a1)
{
  result = 0;
  if (a1 <= 1999)
  {
    if (!a1 || a1 == 1000)
    {
      return result;
    }

    return 1;
  }

  if (a1 != 2000 && a1 != 3000)
  {
    return 1;
  }

  return result;
}

uint64_t SSSafeCast(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t SSURLBagTypeForString(void *a1)
{
  if ([a1 isEqualToString:@"external-prod"])
  {
    return 2;
  }

  else
  {
    return [a1 isEqualToString:@"sandbox"];
  }
}

BOOL SSVUserDefaultsIsWritable(void *a1)
{
  v1 = __PathForUserDefaultsDomain(a1);

  return SSFileIsLocalWritable(v1);
}

uint64_t SSGetFinalizedDirectoryForAssetType(uint64_t a1)
{
  v2 = [(NSString *)NSHomeDirectory() stringByAppendingPathComponent:@"Media"];
  if (a1 > 8)
  {
    if (a1 > 10)
    {
      if (a1 != 11)
      {
        if (a1 == 15)
        {
          v2 = [(NSString *)NSHomeDirectory() stringByAppendingPathComponent:@"Library"];
          v3 = @"Updates";
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else if (a1 != 9)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (a1 <= 4)
  {
    if (a1 == 2)
    {
      v2 = [(NSString *)v2 stringByAppendingPathComponent:@"Books"];
      goto LABEL_18;
    }

    if (a1 == 4)
    {
LABEL_13:
      v3 = @"ManagedPurchases/TVApp";
      goto LABEL_19;
    }

LABEL_18:
    v3 = @"Purchases";
    goto LABEL_19;
  }

  if ((a1 - 5) >= 2)
  {
    if (a1 == 8)
    {
      v3 = @"Podcasts";
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v2 = [(NSString *)v2 stringByAppendingPathComponent:@"Music"];
  v3 = @"Downloads";
LABEL_19:

  return [(NSString *)v2 stringByAppendingPathComponent:v3];
}

void sub_1D499E004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 131);
}

{
}

uint64_t SSGetAssetTypeForLegacyAssetType(uint64_t result)
{
  if (result <= 63)
  {
    if (result <= 7)
    {
      if (result == 2)
      {
        return 5;
      }

      if (result == 4)
      {
        return 9;
      }
    }

    else
    {
      if (result == 8)
      {
        return result;
      }

      if (result == 16 || result == 32)
      {
        return 4;
      }
    }
  }

  else if (result > 511)
  {
    switch(result)
    {
      case 512:
        return 12;
      case 1024:
        return 3;
      case 2048:
        return 7;
    }
  }

  else
  {
    switch(result)
    {
      case 64:
        return 10;
      case 128:
        return 1;
      case 256:
        return 6;
    }
  }

  return 0;
}

uint64_t SSGetAssetTypeForPersistentString(void *a1)
{
  v2 = &off_1E84AD370;
  v3 = 16;
  while (![a1 isEqualToString:*v2])
  {
    v2 += 2;
    if (!--v3)
    {
      return 0;
    }
  }

  return *(v2 - 1);
}

uint64_t SSGetDownloadDirectoryForAssetType()
{
  v0 = [(NSString *)NSHomeDirectory() stringByAppendingPathComponent:@"Media"];

  return [(NSString *)v0 stringByAppendingPathComponent:@"Downloads"];
}

__CFString *SSGetPersistentStringForAssetType(__CFString *a1)
{
  v2 = &off_1E84AD370;
  v3 = 16;
  result = @"other";
  while (*(v2 - 1) != a1)
  {
    v2 += 2;
    if (!--v3)
    {
      return result;
    }
  }

  return *v2;
}

void sub_1D499F870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SSIsAppStoreDaemon()
{
  v0 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];

  return [v0 isEqualToString:@"com.apple.appstored"];
}

uint64_t SSDebugFileLevel()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __DebugFileLevel;
}

uint64_t SSDebugLevel()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __DebugLevel;
}

void SSDebugLog(unint64_t a1, NSString *format, ...)
{
  va_start(va, format);
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  if (__DebugLevel >= a1)
  {
    NSLogv(format, va);
    if (__SetupDebugUserDefaults_sSetupOnce != -1)
    {
      SSDebugLog_cold_2();
    }
  }

  if (__DebugFileLevel >= a1)
  {
    pthread_mutex_lock(&__FileLogLock);
    v4 = __FileLog;
    if (__FileLogDateFormatter)
    {
      v5 = CFRetain(__FileLogDateFormatter);
    }

    else
    {
      v5 = 0;
    }

    pthread_mutex_unlock(&__FileLogLock);
    if (v4)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:format arguments:va];
      Current = CFAbsoluteTimeGetCurrent();
      StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v5, Current);
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ [%d]: %@\n", StringWithAbsoluteTime, getpid(), v6];
      [v4 writeString:v9];

      CFRelease(StringWithAbsoluteTime);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t SSDebugAlwaysSendGUID()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __AlwaysSendGUID;
}

uint64_t SSDebugBagOverrideCardEnrollmentManual()
{
  if (!+[SSDevice deviceIsInternalBuild])
  {
    return 0;
  }

  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __BagOverrideCardEnrollmentManual;
}

uint64_t SSDebugSetFileLoggingOptions(uint64_t a1)
{
  pthread_mutex_lock(&__FileLogLock);
  if (!__FileLogDateFormatter)
  {
    __FileLogDateFormatter = CFDateFormatterCreate(0, 0, kCFDateFormatterShortStyle, kCFDateFormatterFullStyle);
    CFDateFormatterSetFormat(__FileLogDateFormatter, @"yyyy-MM-dd HH:mm:ss.SSS");
  }

  if (a1)
  {
    v2 = [[SSRollableLog alloc] initWithLogOptions:a1];
  }

  else
  {
    v2 = 0;
  }

  __FileLog = v2;

  return pthread_mutex_unlock(&__FileLogLock);
}

uint64_t SSDebugShouldAllowDuplicateAccounts()
{
  if (+[SSDevice deviceIsInternalBuild])
  {
    if (__SetupDebugUserDefaults_sSetupOnce != -1)
    {
      SSDebugFileLevel_cold_1();
    }

    v0 = __ShouldAllowDuplicateAccounts;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t SSDebugShouldBackgroundRefreshReceipts()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __ShouldBackgroundRefreshReceipts;
}

uint64_t SSDebugShouldDisableServerPrompts()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __ShouldDisableServerPrompts;
}

uint64_t SSDebugShouldIncludeFullResponseBodiesInNetworkLogs()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __ShouldIncludeFullResponseBodiesInNetworkLogs;
}

uint64_t SSDebugShouldDisableGDPR()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __ShouldDisableGDPR;
}

uint64_t SSDebugShouldDisableInstallAttributionPingbackDelay()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __ShouldDisableInstallAttributionPingbackDelay;
}

uint64_t SSDebugShouldDisableNetworkLogging()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __ShouldDisableNetworkLogging;
}

uint64_t SSDebugShouldLogAppInstallMetrics()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __LogAppInstallMetrics;
}

uint64_t SSDebugShouldLogIncomingHeaders()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __LogIncomingHeaders;
}

uint64_t SSDebugShouldLogNetworkTimingMetrics()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __LogNetworkTimingMetrics;
}

uint64_t SSDebugShouldLogOutgoingHeaders()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __LogOutgoingHeaders;
}

uint64_t SSDebugShouldLogResponseBodies()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __LogResponseBodies;
}

uint64_t SSDebugShouldLogFullMetricsRequest()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __LogFullMetricsRequest;
}

uint64_t SSDebugShouldScoreDevice()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __ShouldScoreDevice;
}

uint64_t SSDebugShouldSendCacheBuster()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __ShouldSendCacheBuster;
}

uint64_t SSDebugShouldIgnoreExtendedValidation()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __ShouldIgnoreExtendedValidation;
}

uint64_t SSDebugShouldTrackPerformance()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __ShouldTrackPerformance;
}

uint64_t SSDebugShouldUseAttestationPipeline()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __ShouldUseAttestationPipeline;
}

uint64_t SSDebugShouldUseFileBasedPaymentSheetProxy()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __ShouldUseFileBasedPaymentSheetProxy;
}

uint64_t SSDebugShouldUseNewBag()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __ShouldUseNewBag;
}

uint64_t SSDebugShouldUseAppstored()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __UseAppstored;
}

uint64_t SSDebugShouldUseAppstoredUpdates()
{
  if (__SetupDebugUserDefaults_sSetupOnce != -1)
  {
    SSDebugFileLevel_cold_1();
  }

  return __UseAppstoredUpdates;
}

void __DebugUserDefaultsChangedNotification()
{
  CFPreferencesAppSynchronize(@"com.apple.itunesstored");

  __ReloadDebugUserDefaults();
}

void __ReloadDebugUserDefaults()
{
  v0 = MGGetBoolAnswer();
  __AlwaysSendGUID = CFPreferencesGetAppBooleanValue(@"ISAlwaysSendGuid", @"com.apple.itunesstored", 0) != 0;
  keyExistsAndHasValidFormat = 0;
  __BagOverrideCardEnrollmentManual = CFPreferencesGetAppIntegerValue(@"ISBagOverrideCardEnrollmentManual", @"com.apple.itunesstored", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat && v0)
  {
    __BagOverrideCardEnrollmentManual = 0;
    CFPreferencesSetAppValue(@"ISBagOverrideCardEnrollmentManual", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0], @"com.apple.itunesstored");
  }

  __DebugFileLevel = CFPreferencesGetAppIntegerValue(@"DebugFileLevel", @"com.apple.itunesstored", &keyExistsAndHasValidFormat);
  if (((keyExistsAndHasValidFormat == 0) & v0) == 1)
  {
    __DebugFileLevel = 3;
    CFPreferencesSetAppValue(@"DebugFileLevel", [MEMORY[0x1E696AD98] numberWithInteger:3], @"com.apple.itunesstored");
  }

  __DebugLevel = CFPreferencesGetAppIntegerValue(@"DebugLevel", @"com.apple.itunesstored", 0);
  __LogAppInstallMetrics = CFPreferencesGetAppBooleanValue(@"LogAppInstallMetrics", @"com.apple.itunesstored", 0) != 0;
  __LogIncomingHeaders = CFPreferencesGetAppBooleanValue(@"LogIncomingHeaders", @"com.apple.itunesstored", &keyExistsAndHasValidFormat) != 0;
  if (((keyExistsAndHasValidFormat == 0) & v0) == 1)
  {
    __LogIncomingHeaders = 1;
    CFPreferencesSetAppValue(@"LogIncomingHeaders", [MEMORY[0x1E696AD98] numberWithBool:1], @"com.apple.itunesstored");
  }

  __LogNetworkTimingMetrics = CFPreferencesGetAppBooleanValue(@"LogNetworkTimingMetrics", @"com.apple.itunesstored", 0) != 0;
  __LogOutgoingHeaders = CFPreferencesGetAppBooleanValue(@"LogOutgoingHeaders", @"com.apple.itunesstored", &keyExistsAndHasValidFormat) != 0;
  if (((keyExistsAndHasValidFormat == 0) & v0) == 1)
  {
    __LogOutgoingHeaders = 1;
    CFPreferencesSetAppValue(@"LogOutgoingHeaders", [MEMORY[0x1E696AD98] numberWithBool:1], @"com.apple.itunesstored");
  }

  __LogResponseBodies = CFPreferencesGetAppBooleanValue(@"LogXML", @"com.apple.itunesstored", 0) != 0;
  __LogFullMetricsRequest = CFPreferencesGetAppBooleanValue(@"LogFullMetricsRequest", @"com.apple.itunesstored", 0) != 0;
  __ShouldDisableGDPR = CFPreferencesGetAppBooleanValue(@"DisableGDPR", @"com.apple.itunesstored", 0) != 0;
  __ShouldDisableInstallAttributionPingbackDelay = CFPreferencesGetAppBooleanValue(@"DisableInstallAttributionPingbackDelay", @"com.apple.itunesstored", 0) != 0;
  __ShouldDisableNetworkLogging = CFPreferencesGetAppBooleanValue(@"DisableNetworkLogging", @"com.apple.itunesstored", 0) != 0;
  __ShouldDisableServerPrompts = CFPreferencesGetAppBooleanValue(@"DisableServerPrompts", @"com.apple.itunesstored", 0) != 0;
  __ShouldIncludeFullResponseBodiesInNetworkLogs = CFPreferencesGetAppBooleanValue(@"IncludeFullResponseBodiesInNetworkLogs", @"com.apple.itunesstored", 0) != 0;
  __ShouldAllowDuplicateAccounts = CFPreferencesGetAppBooleanValue(@"AllowDuplicateAccounts", @"com.apple.itunesstored", 0) != 0;
  __ShouldBackgroundRefreshReceipts = CFPreferencesGetAppBooleanValue(@"ISAppReceiptRevocationEnabled", @"com.apple.itunesstored", 0) != 0;
  __ShouldIgnoreExtendedValidation = CFPreferencesGetAppBooleanValue(@"ISIgnoreExtendedValidation", @"com.apple.itunesstored", 0) != 0;
  __ShouldScoreDevice = CFPreferencesGetAppBooleanValue(@"ISScoreDevice", @"com.apple.itunesstored", 0) != 0;
  __ShouldSendCacheBuster = CFPreferencesGetAppBooleanValue(@"ISCacheBuster", @"com.apple.itunesstored", 0) != 0;
  __ShouldTrackPerformance = CFPreferencesGetAppBooleanValue(@"ISTrackPerformance", @"com.apple.itunesstored", 0) != 0;
  CFPreferencesGetAppBooleanValue(@"UseAccountsFramework", @"com.apple.itunesstored", &keyExistsAndHasValidFormat);
  __ShouldUseAttestationPipeline = CFPreferencesGetAppBooleanValue(@"UseAttestationPipeline", @"com.apple.itunesstored", 0) != 0;
  __ShouldUseFileBasedPaymentSheetProxy = CFPreferencesGetAppBooleanValue(@"UseFileBasedPaymentSheetProxy", @"com.apple.itunesstored", 0) != 0;
  __ShouldUseNewBag = CFPreferencesGetAppBooleanValue(@"UseSSBag", @"com.apple.itunesstored", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    __ShouldUseNewBag = 1;
    CFPreferencesSetAppValue(@"UseSSBag", [MEMORY[0x1E696AD98] numberWithBool:1], @"com.apple.itunesstored");
  }

  __UseAppstored = CFPreferencesGetAppBooleanValue(@"UseAppstored2", @"com.apple.itunesstored", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    __UseAppstored = 1;
    CFPreferencesSetAppValue(@"UseAppstored2", [MEMORY[0x1E696AD98] numberWithBool:1], @"com.apple.itunesstored");
  }

  __UseAppstoredUpdates = CFPreferencesGetAppBooleanValue(@"UseAppstoredUpdates2", @"com.apple.itunesstored", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    __UseAppstoredUpdates = 1;
    CFPreferencesSetAppValue(@"UseAppstoredUpdates2", [MEMORY[0x1E696AD98] numberWithBool:1], @"com.apple.itunesstored");
  }
}

void sub_1D49A0D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SSVAnisetteAddHeadersToURLRequest(void *a1, uint64_t a2, __CFString **a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  qi864985u0(a2, &v62, &v61, &v60, &v59);
  if (!v6)
  {
    if (!v62)
    {
      goto LABEL_30;
    }

    v20 = objc_alloc(MEMORY[0x1E695DEF0]);
    v21 = [v20 initWithBytesNoCopy:v62 length:v61 freeWhenDone:0];
    v22 = [v21 base64EncodedStringWithOptions:0];
    if (!v22)
    {
LABEL_29:
      jk24uiwqrg(v62);

LABEL_30:
      if (!v60)
      {
        v7 = 0;
        if (!a3)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      v38 = objc_alloc(MEMORY[0x1E695DEF0]);
      v8 = [v38 initWithBytesNoCopy:v60 length:v59 freeWhenDone:0];
      v11 = [v8 base64EncodedStringWithOptions:0];
      if (!v11)
      {
        goto LABEL_46;
      }

      v39 = SSHTTPHeaderXAppleAMD;
      if (a2 != -1)
      {
        v39 = SSHTTPHeaderXAppleMD;
      }

      v40 = *v39;
      [v5 setValue:v11 forHTTPHeaderField:v40];
      v41 = +[SSLogConfig sharedAccountsConfig];
      if (!v41)
      {
        v41 = +[SSLogConfig sharedConfig];
      }

      v42 = [v41 shouldLog];
      if ([v41 shouldLogToDisk])
      {
        v43 = v42 | 2;
      }

      else
      {
        v43 = v42;
      }

      v44 = [v41 OSLogObject];
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v43 &= 2u;
      }

      if (v43)
      {
        v45 = [v5 URL];
        v46 = SSHashIfNeeded(v11);
        v63 = 138543874;
        v64 = v45;
        v65 = 2114;
        v66 = v40;
        v67 = 2114;
        v68 = v46;
        LODWORD(v57) = 32;
        v47 = _os_log_send_and_compose_impl();

        if (!v47)
        {
LABEL_45:

LABEL_46:
          jk24uiwqrg(v60);
          v7 = 0;
          goto LABEL_47;
        }

        v44 = [MEMORY[0x1E696AEC0] stringWithCString:v47 encoding:{4, &v63, v57}];
        free(v47);
        SSFileLog(v41, @"%@", v48, v49, v50, v51, v52, v53, v44);
      }

      goto LABEL_45;
    }

    v23 = SSHTTPHeaderXAppleAMDM;
    if (a2 != -1)
    {
      v23 = SSHTTPHeaderXAppleMDM;
    }

    v58 = *v23;
    [v5 setValue:v22 forHTTPHeaderField:?];
    v24 = +[SSLogConfig sharedAccountsConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v25 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 = v25 | 2;
    }

    else
    {
      v26 = v25;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 2;
    }

    if (v28)
    {
      v29 = [v5 URL];
      v30 = SSHashIfNeeded(v22);
      v63 = 138543874;
      v64 = v29;
      v65 = 2114;
      v66 = v58;
      v67 = 2114;
      v68 = v30;
      LODWORD(v57) = 32;
      v56 = &v63;
      v31 = _os_log_send_and_compose_impl();

      if (!v31)
      {
LABEL_28:

        goto LABEL_29;
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:{4, &v63, v57}];
      free(v31);
      SSFileLog(v24, @"%@", v32, v33, v34, v35, v36, v37, v27);
    }

    goto LABEL_28;
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSVFairPlayErrorDomain" code:v6 userInfo:0];
  v8 = +[SSLogConfig sharedAccountsConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v12 = [v5 URL];
    v63 = 138543618;
    v64 = v12;
    v65 = 2112;
    v66 = v7;
    LODWORD(v57) = 22;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_48;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v63, v57}];
    free(v13);
    SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, v11);
  }

LABEL_47:

LABEL_48:
  if (a3)
  {
LABEL_49:
    v54 = v7;
    *a3 = v7;
  }

LABEL_50:

  return 0;
}

void SSVAnisetteProvisioningEnd(int a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a2;
  [v7 bytes];
  [v7 length];

  [v6 bytes];
  [v6 length];

  uv5t6nhkui();
}

void SSVAnisetteProvisioningStart(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  v11 = a2;
  v12 = [v11 bytes];
  v13 = [v11 length];

  rsegvyrt87(a1, v12, v13, a3, a4, a5);
}

void SSVAnisetteSynchronize(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  v13 = a2;
  v14 = [v13 bytes];
  v15 = [v13 length];

  tn46gtiuhw(a1, v14, v15, a3, a4, a5, a6);
}

CFDataRef SSVCreateDataWithADIBytes(const UInt8 *a1, unsigned int a2)
{
  v7 = *byte_1F5025260;
  v4 = CFAllocatorCreate(0, &v7);
  v5 = CFDataCreateWithBytesNoCopy(0, a1, a2, v4);
  CFRelease(v4);
  return v5;
}

uint64_t SSVCreateDataWithFairPlayBytes(uint64_t a1, unsigned int a2)
{
  v4 = objc_alloc(MEMORY[0x1E695DEF0]);

  return [v4 initWithBytesNoCopy:a1 length:a2 deallocator:&__block_literal_global_3];
}

uint64_t SSVFairPlayContextIdentifier()
{
  v4[3] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&SSVFairPlayContextIdentifier_sMutex);
  if (SSVFairPlayContextIdentifier_sContextID)
  {
    df35957c4e0();
    if (v0)
    {
      SSVFairPlayContextIdentifier_sContextID = 0;
    }

    else if (SSVFairPlayContextIdentifier_sContextID)
    {
      goto LABEL_7;
    }
  }

  memset(v4, 0, 24);
  if (SSVFairPlayGetHardwareInfo(v4))
  {
    v1 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"iTunes_Control", @"iTunes", 0}];
    v2 = [MEMORY[0x1E696AEC0] pathWithComponents:v1];
    XtCqEf5X(0, v4, [v2 UTF8String], &SSVFairPlayContextIdentifier_sContextID);
  }

LABEL_7:
  pthread_mutex_unlock(&SSVFairPlayContextIdentifier_sMutex);
  return SSVFairPlayContextIdentifier_sContextID;
}

BOOL SSVFairPlayGetHardwareInfo(_DWORD *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswer();
  if (!v2)
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v52 = 136446466;
      v53 = "BOOL SSVFairPlayGetHardwareInfo(FairPlayHWInfo *)";
      v54 = 2048;
      v55 = -1;
      LODWORD(v51) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_16:

        return 0;
      }

      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v52, v51}];
      free(v14);
      SSFileLog(v9, @"%@", v15, v16, v17, v18, v19, v20, v12);
    }

    goto LABEL_16;
  }

  v3 = v2;
  SystemEncoding = CFStringGetSystemEncoding();
  ExternalRepresentation = CFStringCreateExternalRepresentation(0, v3, SystemEncoding, 0);
  v6 = ExternalRepresentation;
  if (ExternalRepresentation)
  {
    BytePtr = CFDataGetBytePtr(ExternalRepresentation);
    Length = CFDataGetLength(v6);
    goto LABEL_30;
  }

  v22 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v22)
  {
    v22 = +[SSLogConfig sharedConfig];
  }

  v23 = [v22 shouldLog];
  if ([v22 shouldLogToDisk])
  {
    v24 = v23 | 2;
  }

  else
  {
    v24 = v23;
  }

  v25 = [v22 OSLogObject];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = v24;
  }

  else
  {
    v26 = v24 & 2;
  }

  if (!v26)
  {
    goto LABEL_28;
  }

  v52 = 136446210;
  v53 = "BOOL SSVFairPlayGetHardwareInfo(FairPlayHWInfo *)";
  LODWORD(v51) = 12;
  v50 = &v52;
  v27 = _os_log_send_and_compose_impl();

  if (v27)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:{4, &v52, v51}];
    free(v27);
    SSFileLog(v22, @"%@", v28, v29, v30, v31, v32, v33, v25);
LABEL_28:
  }

  Length = 0;
  BytePtr = 0;
LABEL_30:
  zxcm2Qme0x(BytePtr, Length, a1);
  v35 = *a1 - 1;
  v21 = v35 < 0x14;
  if (v35 >= 0x14)
  {
    v36 = v34;
    v37 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v37)
    {
      v37 = +[SSLogConfig sharedConfig];
    }

    v38 = [v37 shouldLog];
    if ([v37 shouldLogToDisk])
    {
      v39 = v38 | 2;
    }

    else
    {
      v39 = v38;
    }

    v40 = [v37 OSLogObject];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = v39;
    }

    else
    {
      v41 = v39 & 2;
    }

    if (v41)
    {
      v52 = 136446466;
      v53 = "BOOL SSVFairPlayGetHardwareInfo(FairPlayHWInfo *)";
      v54 = 2048;
      v55 = v36;
      LODWORD(v51) = 22;
      v42 = _os_log_send_and_compose_impl();

      if (!v42)
      {
LABEL_43:

        goto LABEL_44;
      }

      v40 = [MEMORY[0x1E696AEC0] stringWithCString:v42 encoding:{4, &v52, v51}];
      free(v42);
      SSFileLog(v37, @"%@", v43, v44, v45, v46, v47, v48, v40);
    }

    goto LABEL_43;
  }

LABEL_44:
  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(v3);
  return v21;
}

uint64_t SSVFairPlayCopyKeyBagSyncData(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  v4 = __SSVGetFairPlayContext();
  Mt76Vq80ux(v4, a1, 0, a2, &v8, &v7);
  if (!v5)
  {
    return [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v8 length:v7 deallocator:&__block_literal_global_3];
  }

  if (v8)
  {
    jEHf8Xzsv8K(v8);
  }

  return 0;
}

uint64_t __SSVGetFairPlayContext()
{
  v1 = 0;
  if (__SSVGetFairPlayContext_sOnce != -1)
  {
    __SSVGetFairPlayContext_cold_1();
  }

  XtCqEf5X(0, &__SSVGetFairPlayContext_sHardwareInfo, [__SSVGetFairPlayContext_sFolderPath UTF8String], &v1);
  return v1;
}

BOOL SSVFairPlayImportKeybagData(void *a1)
{
  v1 = a1;
  if (v1)
  {
    __SSVGetFairPlayContext();
    [v1 bytes];
    [v1 length];
    ha0dkchaters6();
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

BOOL SSVApplicationIsPlayable(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v1];
    v4 = [v3 bundleURL];
    v5 = [v4 path];

    v6 = [v3 bundleExecutable];
    v7 = [v6 stringByAppendingPathExtension:@"sinf"];

    if (v5)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v5, @"SC_Info", v7, 0}];
      v11 = [MEMORY[0x1E696AEC0] pathWithComponents:v10];
      v12 = v11;
      if (v11)
      {
        v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v11];
        v14 = v13;
        if (v13)
        {
          v18[0] = [v13 length];
          v18[1] = [v14 bytes];
          v18[2] = 0;
          v18[3] = 0;
          v15 = __SSVGetFairPlayContext();
          HN0R(v15, v18);
          v9 = v16 == 0;
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 1;
      }
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

void sub_1D49A3364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __Block_byref_object_dispose__6(uint64_t a1)
{
}

{
}

void sub_1D49A4CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49A4F18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void SSVAddMediaSocialHeadersToURLRequest(void *a1)
{
  v4 = a1;
  v1 = +[SSDevice currentDevice];
  v2 = [v1 uniqueDeviceIdentifier];
  if (v2)
  {
    [v4 setValue:v2 forHTTPHeaderField:@"Apple-Guid"];
  }

  v3 = [v1 serialNumber];
  if (v3)
  {
    [v4 setValue:v3 forHTTPHeaderField:@"Apple-Serial-No"];
  }
}

void SSVAddMediaSocialHeadersToURLRequestProperties(void *a1)
{
  v4 = a1;
  v1 = +[SSDevice currentDevice];
  v2 = [v1 uniqueDeviceIdentifier];
  if (v2)
  {
    [v4 setValue:v2 forHTTPHeaderField:@"Apple-Guid"];
  }

  v3 = [v1 serialNumber];
  if (v3)
  {
    [v4 setValue:v3 forHTTPHeaderField:@"Apple-Serial-No"];
  }
}

void sub_1D49A7428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D49A7888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SSVMediaContentTasteController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D49A79D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1D49A7B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t SSVPBPlayActivityEnqueuerPropertiesReadFrom(uint64_t a1, void *a2)
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
        v47 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
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
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v21 = PBReaderReadString();
            v22 = 32;
          }

          else
          {
            if (v13 != 4)
            {
              goto LABEL_71;
            }

            v21 = PBReaderReadString();
            v22 = 56;
          }
        }

        else if (v13 == 1)
        {
          v21 = PBReaderReadString();
          v22 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_71;
          }

          v21 = PBReaderReadString();
          v22 = 24;
        }
      }

      else
      {
        if (v13 <= 6)
        {
          if (v13 == 5)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 68) |= 2u;
            while (1)
            {
              v48 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v48 & 0x7F) << v36;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_82;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v38;
            }

LABEL_82:
            *(a1 + 48) = v42;
            goto LABEL_86;
          }

          if (v13 != 6)
          {
LABEL_71:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_86;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            v50 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v50 & 0x7F) << v23;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_74;
            }
          }

          v20 = (v25 != 0) & ~[a2 hasError];
LABEL_74:
          v45 = 65;
          goto LABEL_85;
        }

        if (v13 == 7)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            v51 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v51 & 0x7F) << v29;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_78;
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

LABEL_78:
          *(a1 + 8) = v35;
          goto LABEL_86;
        }

        if (v13 != 8)
        {
          if (v13 != 9)
          {
            goto LABEL_71;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            v49 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v49 & 0x7F) << v14;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_84;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_84:
          v45 = 64;
LABEL_85:
          *(a1 + v45) = v20;
          goto LABEL_86;
        }

        v21 = PBReaderReadString();
        v22 = 40;
      }

      v43 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_86:
      v46 = [a2 position];
    }

    while (v46 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1D49AC8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Unwind_Resume(a1);
}

void sub_1D49ACFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SSVURLBagGetSignaturePolicyDictionaryForURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  v20 = 0;
  v5 = [v3 path];
  v6 = [v5 lastPathComponent];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __SSVURLBagGetSignaturePolicyDictionaryForURL_block_invoke;
  v11[3] = &unk_1E84ADD58;
  v7 = v5;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  v14 = &v15;
  [v4 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void sub_1D49ADCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SSVURLBagShouldSendAMDForURL(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 host];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 hasPrefix:{@".", v15}])
        {
          if ([v4 hasSuffix:v10])
          {
            goto LABEL_16;
          }
        }

        else if ([v10 hasPrefix:@"*"])
        {
          v11 = 1;
          v12 = [v10 substringFromIndex:1];
          v13 = [v4 hasSuffix:v12];

          if (v13)
          {
            goto LABEL_17;
          }
        }

        else if (![v10 caseInsensitiveCompare:v4])
        {
LABEL_16:
          v11 = 1;
          goto LABEL_17;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_17:

  return v11;
}

void __SSVURLBagGetSignaturePolicyDictionaryForURL_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 32) rangeOfString:v9 options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v7 objectForKey:*(a1 + 40)];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
    }

    *a4 = 1;
  }
}

void sub_1D49AEB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49AEC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49AED4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49AEE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49AEF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1DA6DFBB0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __Block_byref_object_dispose__14(uint64_t a1)
{
}

{
}

void sub_1D49AF10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49AF21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49AF338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49AF48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49AF5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49AF6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49B0124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49B0260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49B043C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49B0E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v61 - 256), 8);
  _Block_object_dispose((v61 - 224), 8);
  _Unwind_Resume(a1);
}

id HeaderValueForKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v4 lowercaseString];
    v7 = [v3 objectForKey:v8];
  }

  return v7;
}

void sub_1D49B16FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49B1F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id URLByAppendingQueryParameter(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = MEMORY[0x1E696AB08];
  v8 = a3;
  v9 = [v7 URLQueryAllowedCharacterSet];
  v10 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v9];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E696AD60]);
    v12 = [v5 absoluteString];
    v13 = [v11 initWithString:v12];

    v14 = [v5 query];

    if (v14)
    {
      v15 = @"&%@=%@";
    }

    else
    {
      v15 = @"?%@=%@";
    }

    [v13 appendFormat:v15, v6, v10];
    v16 = [MEMORY[0x1E695DFF8] URLWithString:v13];

    v5 = v16;
  }

  return v5;
}

void sub_1D49B3184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49B3504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1D49B3A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

id SSVLegacyUserAgent()
{
  v0 = +[SSDevice currentDevice];
  v1 = [v0 userAgent];

  return v1;
}

void sub_1D49BD3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49BDF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49BE13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49BE34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49BE488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49BF3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49BFB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SSApplicationWithIdentifierIsAvailable(uint64_t a1)
{
  v2 = SBSCopyDisplayIdentifiers();
  v3 = [v2 containsObject:a1];

  return v3;
}

__CFString *SSItemMediaKindForItemKind(void *a1, void *a2)
{
  v4 = @"software";
  if (([a1 isEqualToString:@"software"] & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"software-update") & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", @"newsstand") & 1) == 0)
  {
    if ([a1 isEqualToString:@"audiobook"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"song"))
    {
      return @"audio";
    }

    else if ([a1 isEqualToString:@"movie"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"music-video") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"tv-episode") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"tv-season"))
    {
      return @"video";
    }

    else if (([a1 isEqualToString:@"podcast"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"podcast-episode") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"itunes-u") & 1) != 0 || objc_msgSend(a1, "isEqualToString:", @"course"))
    {
      if (a2)
      {
        v4 = @"video";
        if ([a2 rangeOfString:@"video" options:1] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v4 = @"audio";
          if ([a2 rangeOfString:@"audio" options:1] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([a2 rangeOfString:@"document" options:1] == 0x7FFFFFFFFFFFFFFFLL)
            {
              return @"unknown";
            }

            else
            {
              return @"document";
            }
          }
        }
      }

      else
      {
        return @"unknown";
      }
    }

    else if ([a1 isEqualToString:@"document"])
    {
      return @"document";
    }

    else
    {
      return @"unknown";
    }
  }

  return v4;
}

__CFString *SSDownloadKindForItemKind(void *a1)
{
  if ([a1 isEqualToString:@"audiobook"])
  {
    v2 = SSDownloadKindAudiobook;
    return *v2;
  }

  if ([a1 isEqualToString:@"eBook"])
  {
    v2 = SSDownloadKindEBook;
    return *v2;
  }

  if ([a1 isEqualToString:@"movie"])
  {
    v2 = SSDownloadKindMovie;
    return *v2;
  }

  if ([a1 isEqualToString:@"music-video"])
  {
    v2 = SSDownloadKindMusicVideo;
    return *v2;
  }

  if (([a1 isEqualToString:@"podcast"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"podcast-episode") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"itunes-u") & 1) != 0 || objc_msgSend(a1, "isEqualToString:", @"course"))
  {
    v2 = SSDownloadKindPodcast;
    return *v2;
  }

  if ([a1 isEqualToString:@"ringtone"])
  {
    v2 = SSDownloadKindRingtone;
    return *v2;
  }

  if (([a1 isEqualToString:@"software"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"software-update") & 1) != 0 || objc_msgSend(a1, "isEqualToString:", @"newsstand"))
  {
    v2 = SSDownloadKindSoftwareApplication;
    return *v2;
  }

  if (([a1 isEqualToString:@"song"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"album") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"mix") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"nagano") & 1) != 0 || objc_msgSend(a1, "isEqualToString:", @"wemix"))
  {
    v2 = SSDownloadKindMusic;
    return *v2;
  }

  if ([a1 isEqualToString:@"tone"])
  {
    v2 = SSDownloadKindTone;
    return *v2;
  }

  if (([a1 isEqualToString:@"tv-episode"] & 1) != 0 || objc_msgSend(a1, "isEqualToString:", @"tv-season"))
  {
    v2 = SSDownloadKindTelevisionEpisode;
    return *v2;
  }

  if ([a1 isEqualToString:@"document"])
  {
    return @"document";
  }

  else
  {
    return @"other";
  }
}

uint64_t SSItemStoreFrontURLForItemKind(uint64_t a1)
{
  if (SSItemStoreFrontURLForItemKind_sOnce != -1)
  {
    SSItemStoreFrontURLForItemKind_cold_1();
  }

  v2 = [SSItemStoreFrontURLForItemKind_sItemKinds count];
  if (v2 < 1)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  for (i = 0; i != v3; ++i)
  {
    if ([objc_msgSend(SSItemStoreFrontURLForItemKind_sItemKinds objectAtIndex:{i), "isEqualToString:", a1}])
    {
      v4 = [MEMORY[0x1E695DFF8] URLWithString:{objc_msgSend(SSItemStoreFrontURLForItemKind_sURLStrings, "objectAtIndex:", i)}];
    }
  }

  return v4;
}

uint64_t __SSItemStoreFrontURLForItemKind_block_invoke()
{
  SSItemStoreFrontURLForItemKind_sItemKinds = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"audiobook", @"course", @"itunes-u", @"movie", @"music-video", @"newsstand", @"podcast", @"podcast-episode", @"ringtone", @"software", @"software-update", @"song", @"tone", @"tv-episode", @"tv-season", 0}];
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"itms://?action=audiobooks", @"itms://?action=itunes-u", @"itms://?action=itunes-u", @"itms://?action=movies", @"itms://?action=music-videos", @"itms-apps://?action=newsstand", @"itms://?action=podcasts", @"itms://?action=podcasts", @"itms://?action=ringtones", @"itms-apps://?action=software", @"itms-apps://?action=updates", @"itms://?action=music", @"itms://?action=ringtones", @"itms://?action=tv-shows", @"itms://?action=tv-shows", 0}];
  SSItemStoreFrontURLForItemKind_sURLStrings = result;
  return result;
}

void sub_1D49C3958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49C3AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49C3D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49C3E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49C3FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49C41CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *SSAccountGetUniqueIdentifierFromValue(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{strtoull(objc_msgSend(v1, "UTF8String"), 0, 10)}];

    v1 = v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void sub_1D49C4830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49C49D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49C76D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49C80A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SSAccountScopeStringForType(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"sandbox";
  }

  else
  {
    return @"production";
  }
}

__CFString *SSAccountSourceStringForSource(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"iTunes";
  }

  else
  {
    return @"device";
  }
}

void sub_1D49CC740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49CE6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1D49CE848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49CE964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1DA6DFBB0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1D49CEE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1D49CF3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D49D03D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 176));
  _Unwind_Resume(a1);
}

void sub_1D49D72F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49D7FB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1D49D8524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SSVGetMetricsPageDescriptionWithPlatformDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"metricsBase"];
  if (!v2)
  {
    v2 = [v1 objectForKey:@"metrics_base"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"page"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 copy];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *SSVMediaSocialPostItemTypeForStorePlatformKind(void *a1)
{
  v1 = a1;
  v2 = @"album";
  if (([v1 isEqualToString:@"album"] & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"preorderAlbum") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"iMix") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"itunesMix") & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", @"mix") & 1) == 0)
  {
    if ([v1 isEqualToString:@"activity"])
    {
      v2 = @"activityCurator";
    }

    else
    {
      v2 = @"artist";
      if (([v1 isEqualToString:@"artist"] & 1) == 0)
      {
        v2 = @"brand";
        if (([v1 isEqualToString:@"brand"] & 1) == 0)
        {
          v2 = @"comment";
          if (([v1 isEqualToString:@"comment"] & 1) == 0)
          {
            v2 = @"interview";
            if (([v1 isEqualToString:@"interview"] & 1) == 0)
            {
              v2 = @"iTunesBrand";
              if (([v1 isEqualToString:@"iTunesBrand"] & 1) == 0)
              {
                v2 = @"musicVideo";
                if (([v1 isEqualToString:@"musicVideo"] & 1) == 0)
                {
                  v2 = @"playlist";
                  if (([v1 isEqualToString:@"playlist"] & 1) == 0)
                  {
                    if ([v1 isEqualToString:@"socialActivity"])
                    {
                      v2 = @"activity";
                    }

                    else if ([v1 isEqualToString:@"radioStation"])
                    {
                      v2 = @"radio";
                    }

                    else if ([v1 isEqualToString:@"song"])
                    {
                      v2 = @"track";
                    }

                    else
                    {
                      v2 = @"uploadedAudio";
                      if (([v1 isEqualToString:@"uploadedAudio"] & 1) == 0)
                      {
                        v2 = @"uploadedVideo";
                        if (![v1 isEqualToString:@"uploadedVideo"])
                        {
                          v2 = @"unknown";
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void __AccountsChanged()
{
  v0 = +[SSLogConfig sharedAccountsConfig];
  if (!v0)
  {
    v0 = +[SSLogConfig sharedConfig];
  }

  v1 = [v0 shouldLog];
  if ([v0 shouldLogToDisk])
  {
    v2 = v1 | 2;
  }

  else
  {
    v2 = v1;
  }

  v3 = [v0 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 & 2;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v14[0] = 0;
  LODWORD(v13) = 2;
  v5 = _os_log_send_and_compose_impl();

  if (v5)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:{4, v14, v13}];
    free(v5);
    SSFileLog(v0, @"%@", v6, v7, v8, v9, v10, v11, v3);
LABEL_12:
  }

  v12 = +[SSAccountStore defaultStore];
  [v12 _postAccountStoreChangeNotification];
}

void __AccountsChangedInternal()
{
  v0 = +[SSLogConfig sharedAccountsConfig];
  if (!v0)
  {
    v0 = +[SSLogConfig sharedConfig];
  }

  v1 = [v0 shouldLog];
  if ([v0 shouldLogToDisk])
  {
    v2 = v1 | 2;
  }

  else
  {
    v2 = v1;
  }

  v3 = [v0 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 & 2;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v14[0] = 0;
  LODWORD(v13) = 2;
  v5 = _os_log_send_and_compose_impl();

  if (v5)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:{4, v14, v13}];
    free(v5);
    SSFileLog(v0, @"%@", v6, v7, v8, v9, v10, v11, v3);
LABEL_12:
  }

  v12 = +[SSAccountStore defaultStore];
  [v12 clearCachedAccounts];
}

void __ActiveAccountChanged()
{
  v0 = +[SSLogConfig sharedAccountsConfig];
  if (!v0)
  {
    v0 = +[SSLogConfig sharedConfig];
  }

  v1 = [v0 shouldLog];
  if ([v0 shouldLogToDisk])
  {
    v2 = v1 | 2;
  }

  else
  {
    v2 = v1;
  }

  v3 = [v0 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 & 2;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v14[0] = 0;
  LODWORD(v13) = 2;
  v5 = _os_log_send_and_compose_impl();

  if (v5)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:{4, v14, v13}];
    free(v5);
    SSFileLog(v0, @"%@", v6, v7, v8, v9, v10, v11, v3);
LABEL_12:
  }

  v12 = +[SSAccountStore defaultStore];
  [v12 _postActiveAccountChangedNotification];
}

void __AuthenticationStateChanged()
{
  v0 = +[SSAccountStore defaultStore];
  [v0 _postAuthenticationActivityNotification];
}

__CFString *SSAccountsUserDefaultLastAuthTimeKeyForTokenType(uint64_t a1)
{
  if (a1 == 1)
  {
    return [@"LastAuthTime" stringByAppendingFormat:@"-%@", @"InAppPurchase"];
  }

  else
  {
    return @"LastAuthTime";
  }
}

void sub_1D49DF604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D49E0C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D49E14B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D49E4F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D49E9E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D49EA280(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D49EA9FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 80));
  objc_destroyWeak((v22 + 72));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 - 96));
  _Unwind_Resume(a1);
}

void sub_1D49EB12C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D49EBD30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D49EC6F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t initBYSetupAssistantNeedsToRun()
{
  if (SetupAssistantLibrary_sOnce != -1)
  {
    initBYSetupAssistantNeedsToRun_cold_1();
  }

  v0 = dlsym(SetupAssistantLibrary_sLib, "BYSetupAssistantNeedsToRun");
  softLinkBYSetupAssistantNeedsToRun[0] = v0;

  return v0();
}

void *__SetupAssistantLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SetupAssistant.framework/SetupAssistant", 2);
  SetupAssistantLibrary_sLib = result;
  return result;
}

uint64_t SSRestrictionsIsTrustExtendedValidation(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  HIDWORD(v34) = 0;
  v1 = MEMORY[0x1DA6DF300]();
  v2 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  if (os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 & 2;
  }

  if (v5)
  {
    v35 = 134218240;
    v36 = v1;
    v37 = 1024;
    v38 = 0;
    LODWORD(v34) = 18;
    v33 = &v35;
    v6 = _os_log_send_and_compose_impl();
    if (v6)
    {
      v7 = v6;
      v8 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:{4, &v35, v34}];
      free(v7);
      SSFileLog(v2, @"%@", v9, v10, v11, v12, v13, v14, v8);
    }
  }

  v15 = MGCopyAnswer();
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v17 = CFGetTypeID(v15);
  if (v17 == CFBooleanGetTypeID() && CFBooleanGetValue(v16) && SSDebugShouldIgnoreExtendedValidation())
  {
    v18 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    if (os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 2;
    }

    if (v21)
    {
      LOWORD(v35) = 0;
      LODWORD(v34) = 2;
      v22 = _os_log_send_and_compose_impl();
      if (v22)
      {
        v23 = v22;
        v24 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v35, v34}];
        free(v23);
        SSFileLog(v18, @"%@", v25, v26, v27, v28, v29, v30, v24);
      }
    }

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  CFRelease(v16);
  return v31;
}

uint64_t SSRestrictionsIsOnDeviceAutomaticAppDownloadsAllowed()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];

  return [v0 isAutomaticAppDownloadsAllowed];
}

uint64_t SSRestrictionsIsOnDeviceAppAnalyticsAllowed()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];

  return [v0 isAppAnalyticsAllowed];
}

uint64_t SSRestrictionsIsOnDeviceDiagnosticsAllowed()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];

  return [v0 isDiagnosticSubmissionAllowed];
}

BOOL SSRestrictionsIsOnDeviceAppInstallationAllowed()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];
  if ([v0 effectiveBoolValueForSetting:*MEMORY[0x1E69ADD98]] == 2)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  return [v2 effectiveBoolValueForSetting:*MEMORY[0x1E69ADF70]] != 2;
}

id SSRestrictionsCopyRankForMediaType(unint64_t a1)
{
  if (a1 > 2 || (v1 = **(&unk_1E84AECD8 + a1)) == 0 || (result = [objc_msgSend(MEMORY[0x1E69ADFB8] "sharedConnection")]) == 0)
  {
    v3 = objc_alloc(MEMORY[0x1E696AD98]);

    return [v3 initWithInteger:1000];
  }

  return result;
}

uint64_t __UserDefaultsKeyForExplicitRestrictionAlertType(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return 0;
    }

    v1 = @"SSRestrictionsExplicitRestrictionAlertTypeOnContainerLoadCount";
  }

  else
  {
    v1 = @"SSRestrictionsExplicitRestrictionAlertTypeOnLaunchCount";
  }

  v2 = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
  if (!v2)
  {
    return v1;
  }

  v3 = v2;
  v4 = [(__CFString *)v1 stringByAppendingString:@"."];

  return [v4 stringByAppendingString:v3];
}

void __SSSoftwareUpdatesResetStaleUpdatesTimerWithCommand(__CFString *a1, __CFString *a2)
{
  v4 = SSXPCCreateMessageDictionary(84);
  SSXPCDictionarySetCFObject(v4, "1", a1);
  SSXPCDictionarySetCFObject(v4, "2", a2);
  v5 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  [(SSXPCConnection *)v5 sendMessage:v4];

  xpc_release(v4);
}

void sub_1D49F5B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SSUIApplication()
{
  pthread_once(&__SSLoadUIKitOnce, __SSLoadUIKit);
  v0 = NSClassFromString(&cfstr_Uiapplication.isa);

  return [(objc_class *)v0 sharedApplication];
}

void __SSLoadUIKit()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSystemRootDirectory(), @"System", @"Library", @"Frameworks", @"UIKit.framework", @"UIKit", 0}];
  __SSUIKit = dlopen([objc_msgSend(MEMORY[0x1E696AEC0] pathWithComponents:{v0), "fileSystemRepresentation"}], 1);
}

void sub_1D49F6ED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1D49F74C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D49FA2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SSGetStringForNetworkType(uint64_t a1)
{
  v1 = @"8G";
  v2 = @"9G";
  v3 = @"WiFi";
  if (a1 != 1000)
  {
    v3 = 0;
  }

  if (a1 != 8)
  {
    v2 = v3;
  }

  if (a1 != 7)
  {
    v1 = v2;
  }

  v4 = @"7G";
  if (a1 != 6)
  {
    v4 = 0;
  }

  if (a1 == 5)
  {
    v4 = @"6G";
  }

  if (a1 <= 6)
  {
    v1 = v4;
  }

  v5 = @"4G";
  v6 = @"5G";
  if (a1 != 4)
  {
    v6 = 0;
  }

  if (a1 != 3)
  {
    v5 = v6;
  }

  v7 = @"3G";
  if (a1 != 2)
  {
    v7 = 0;
  }

  if (a1 == 1)
  {
    v7 = @"2G";
  }

  if (a1 <= 2)
  {
    v5 = v7;
  }

  if (a1 <= 4)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

void sub_1D49FA6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SSGetNetworkTypeForString(void *a1)
{
  if ([a1 isEqualToString:@"2G"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"3G"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"4G"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"5G"])
  {
    return 4;
  }

  if ([a1 isEqualToString:@"6G"])
  {
    return 5;
  }

  if ([a1 isEqualToString:@"7G"])
  {
    return 6;
  }

  if ([a1 isEqualToString:@"8G"])
  {
    return 7;
  }

  if ([a1 isEqualToString:@"9G"])
  {
    return 8;
  }

  if ([a1 isEqualToString:@"WiFi"])
  {
    return 1000;
  }

  return 0;
}

void *SSNetworkTooSlowError(uint64_t a1, void *a2, void *a3, int a4)
{
  v9 = MGGetBoolAnswer();
  if (a4 && (SSDownloadKindIsEBookKind(a3, v8) & 1) == 0)
  {
    v10 = [a3 isEqualToString:@"os-update"] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  if ([a2 length] && ((v9 | v10) & 1) != 0)
  {
    v12 = @"TOO_BIG_FOR_NETWORK_SPECIFIC_NO_ITUNES_%@";
    if ((v9 & v10) != 0)
    {
      v12 = @"TOO_BIG_FOR_NETWORK_SPECIFIC_%@";
    }

    if (v9)
    {
      v13 = v12;
    }

    else
    {
      v13 = @"TOO_BIG_FOR_NETWORK_SPECIFIC_NO_WIFI_%@";
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", v13, &stru_1F503F418, 0), a2];
  }

  if (SSDownloadKindIsSoftwareKind(a3))
  {
    if (v11)
    {
      v14 = @"TOO_BIG_FOR_NETWORK_TITLE";
      goto LABEL_32;
    }

    v15 = @"TOO_BIG_FOR_NETWORK_BODY_NO_ITUNES";
    if ((v9 & v10) != 0)
    {
      v15 = @"TOO_BIG_FOR_NETWORK_BODY";
    }

    v16 = v9 | v10;
    if (v9)
    {
      v17 = v15;
    }

    else
    {
      v17 = @"TOO_BIG_FOR_NETWORK_BODY_NO_WIFI";
    }

    v14 = @"TOO_BIG_FOR_NETWORK_TITLE";
    if (v16)
    {
LABEL_24:
      v11 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", v17, &stru_1F503F418, 0}];
      goto LABEL_32;
    }
  }

  else
  {
    if (v11)
    {
      v14 = @"ITEM_TOO_BIG_FOR_NETWORK_TITLE";
      goto LABEL_32;
    }

    v18 = @"ITEM_TOO_BIG_FOR_NETWORK_BODY_NO_ITUNES";
    if ((v9 & v10) != 0)
    {
      v18 = @"ITEM_TOO_BIG_FOR_NETWORK_BODY";
    }

    v19 = v9 | v10;
    if (v9)
    {
      v17 = v18;
    }

    else
    {
      v17 = @"ITEM_TOO_BIG_FOR_NETWORK_BODY_NO_WIFI";
    }

    v14 = @"ITEM_TOO_BIG_FOR_NETWORK_TITLE";
    if (v19)
    {
      goto LABEL_24;
    }
  }

  v11 = 0;
LABEL_32:
  v20 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", v14, &stru_1F503F418, 0}];
  if (a1 < 1)
  {
    v23 = v11;
    v11 = 0;
    v22 = 0;
  }

  else
  {
    v21 = v20;
    v22 = CPFSSizeStringsWithStyle();
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithValidatedFormat:v21 validFormatSpecifiers:@"%@" error:0, v22];
  }

  v24 = SSError(@"SSErrorDomain", 102, v23, v11);
  v25 = SSErrorBySettingUserInfoValue(v24, @"SSErrorNetworkSizeLimitBytesKey", [MEMORY[0x1E696AD98] numberWithLongLong:a1]);
  v26 = v25;
  if (v22)
  {
    v26 = SSErrorBySettingUserInfoValue(v25, @"SSErrorNetworkSizeLimitKey", v22);
  }

  return v26;
}

void sub_1D49FC1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL ConditionResultForComparisonResult(unint64_t a1, uint64_t a2)
{
  v2 = a1 == 1;
  v3 = a1 + 1 < 2;
  v4 = a1 < 2;
  if (a2 != 5)
  {
    v4 = 0;
  }

  if (a2 != 4)
  {
    v3 = v4;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  v5 = a1 == 0;
  v6 = a1 != 0;
  v7 = a1 == -1;
  if (a2 != 2)
  {
    v7 = 0;
  }

  if (a2 != 1)
  {
    v6 = v7;
  }

  if (a2)
  {
    v5 = v6;
  }

  if (a2 <= 2)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t SSIsiPhoneWithExpandedScreen()
{
  v0 = +[SSDevice deviceIsiPhone];
  v1 = MGGetSInt32Answer();
  v2 = 0xC8000u >> v1;
  if (v1 > 0x13)
  {
    v2 = 0;
  }

  if (v1 - 9 >= 2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  return v0 & v3;
}

void *SSDeviceIsHDRCapable()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v0 = SSVQuartzCoreFramework();
  result = [SSVWeakLinkedClassForString(&cfstr_Cadisplay.isa v0)];
  if (result)
  {
    result = [result name];
    if (result)
    {
      v2[0] = result;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
      return (MTShouldPlayHDRVideo() != 0);
    }
  }

  return result;
}

uint64_t SSDeviceSupportsHDRDownload()
{
  v0 = SSDeviceIsHDRCapable();
  CFPreferencesAppSynchronize(@"com.apple.mobileipod");
  keyExistsAndHasValidFormat = 1;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"VideosAllowHDREnabledSetting", @"com.apple.mobileipod", &keyExistsAndHasValidFormat);
  v2 = keyExistsAndHasValidFormat == 0;
  if (AppBooleanValue)
  {
    v2 = 1;
  }

  return v0 & v2;
}

uint64_t __CellularNetworkingChangedNotification(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];

  return [v3 postNotificationName:@"SSDeviceCellularNetworkingAllowedChangedNotification" object:a2];
}

void sub_1D49FD5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __Block_byref_object_dispose__22(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 131);
}

{
}

void sub_1D49FD708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49FDC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49FED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49FF094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49FF83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49FF990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D49FFB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A00FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A02DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1D4A03088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1DA6DFBB0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1D4A07270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id URLEscapedQueryParameter(void *a1)
{
  v1 = MEMORY[0x1E696AB08];
  v2 = a1;
  v3 = [v1 URLQueryAllowedCharacterSet];
  v4 = [v2 stringByAddingPercentEncodingWithAllowedCharacters:v3];

  return v4;
}

void sub_1D4A075F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id stringForHTTPHeaderDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E696AB78];
    v2 = a1;
    v3 = objc_alloc_init(v1);
    [v3 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss z"];
    v4 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [v3 setLocale:v4];

    v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v3 setTimeZone:v5];

    v6 = [v3 stringFromDate:v2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __Block_byref_object_copy__323(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1DA6DFBB0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1D4A0DCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SSURLResponseCacheControlMaxAge(void *a1)
{
  v1 = [a1 allHeaderFields];
  result = [v1 objectForKey:@"Cache-Control"];
  if (result || (result = [v1 objectForKey:{objc_msgSend(@"Cache-Control", "lowercaseString")}]) != 0)
  {
    v3 = result;
    v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v5 = [v3 componentsSeparatedByString:{@", "}];
    result = [v5 count];
    if (result >= 1)
    {
      v6 = result;
      v7 = 0;
      while (1)
      {
        v8 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v7), "stringByTrimmingCharactersInSet:", v4), "componentsSeparatedByString:", @"="}];
        result = [v8 count];
        if (result == 2)
        {
          result = [objc_msgSend(v8 objectAtIndex:{0), "hasPrefix:", @"max-age"}];
          if (result)
          {
            break;
          }
        }

        if (v6 == ++v7)
        {
          return result;
        }
      }

      v9 = [v8 objectAtIndex:1];

      return [v9 doubleValue];
    }
  }

  return result;
}

id SSCodingCreateArchivableData(void *a1)
{
  v1 = [a1 copyXPCEncoding];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = SSXPCCreateCFObjectFromXPCObject(v1);
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:0];
  }

  else
  {
    v5 = 0;
  }

  xpc_release(v2);
  return v5;
}

uint64_t SSCodingCreateObjectWithArchivedData(uint64_t a1, objc_class *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = [MEMORY[0x1E696AE40] propertyListWithData:a1 options:0 format:0 error:0];
  if (!v3)
  {
    return 0;
  }

  v4 = SSXPCCreateXPCObjectFromCFObject(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [[a2 alloc] initWithXPCEncoding:v4];
  xpc_release(v5);
  return v6;
}

xpc_object_t SSCodingCreateXPCObjectForNSSecureCodingObject(void *a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v23 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = [a1 domain];
    v4 = [a1 code];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = [a1 localizedDescription];
    a1 = [v2 errorWithDomain:v3 code:v4 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v29, &v28, 1)}];
  }

  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v23];
  if (v23)
  {
    v6 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    if (os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 2;
    }

    if (v9)
    {
      v24 = 136446466;
      v25 = "xpc_object_t SSCodingCreateXPCObjectForNSSecureCodingObject(id<NSObject,NSSecureCoding>)";
      v26 = 2114;
      v27 = v23;
      LODWORD(v22) = 22;
      v21 = &v24;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v24, v22}];
        free(v11);
        SSFileLog(v6, @"%@", v13, v14, v15, v16, v17, v18, v12);
      }
    }
  }

  if ([v5 length])
  {
    v19 = xpc_data_create([v5 bytes], objc_msgSend(v5, "length"));
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_1D4A0F05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SSNetworkQualityInquiryReportMake_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (LinkQualityDataKeyIsAllowed_onceToken != -1)
  {
    __SSNetworkQualityInquiryReportMake_block_invoke_cold_1();
  }

  if ([LinkQualityDataKeyIsAllowed_allowedkeys containsObject:v7])
  {
    v6 = [MEMORY[0x1E695DFB0] null];

    if (v6 != v5)
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
    }
  }
}

void __LinkQualityDataKeyIsAllowed_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"dataStalls", @"isKnownGood", @"lastReportedRxSignalStrength", @"linkQuality", @"isLowInternetDL", @"isLowInternetUL", @"loadedLQM", @"LQM", @"radioTechnology", 0}];
  v1 = LinkQualityDataKeyIsAllowed_allowedkeys;
  LinkQualityDataKeyIsAllowed_allowedkeys = v0;
}

uint64_t SSValueForFirstAvailableKey(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = &a9;
  if (!a2)
  {
    return 0;
  }

  v9 = a2;
  do
  {
    result = [a1 objectForKey:v9];
    v12 = v14++;
    v9 = *v12;
    if (*v12)
    {
      v13 = result == 0;
    }

    else
    {
      v13 = 0;
    }
  }

  while (v13);
  return result;
}

void SSDialogGetDaemonDialogState(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v2 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    if (os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 2;
    }

    if (v5)
    {
      v19 = 136446210;
      v20 = "SSDialogGetDaemonDialogState";
      LODWORD(v17) = 12;
      v6 = _os_log_send_and_compose_impl();
      if (v6)
      {
        v7 = v6;
        v8 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:{4, &v19, v17}];
        free(v7);
        SSFileLog(v2, @"%@", v9, v10, v11, v12, v13, v14, v8);
      }
    }
  }

  v15 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v16 = SSXPCCreateMessageDictionary(131);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __SSDialogGetDaemonDialogState_block_invoke;
  v18[3] = &unk_1E84AC7E0;
  v18[4] = a1;
  [(SSXPCConnection *)v15 sendMessage:v16 withReply:v18];
  xpc_release(v16);
}

uint64_t __SSDialogGetDaemonDialogState_block_invoke(uint64_t a1, void *a2)
{
  if (a2 && MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
  {
    xpc_dictionary_get_BOOL(a2, "0");
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

uint64_t SSItemImageSizeEqualToSize(double a1, double a2, double a3, double a4)
{
  result = 1;
  if (a2 != 0.0 && a1 != 0.0 && a4 != 0.0 && a3 != 0.0 && a1 / a2 != a3 / a4)
  {
    return 0;
  }

  return result;
}

uint64_t __ImageSizeSort(void *a1, void *a2)
{
  [a1 imageSize];
  v4 = v3;
  [a2 imageSize];
  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v4 > v5;
  }
}

void sub_1D4A16970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t initISCopyDecompressedGZipDataForData(uint64_t a1)
{
  if (iTunesStoreLibrary_sOnce != -1)
  {
    initISCopyDecompressedGZipDataForData_cold_1();
  }

  v2 = dlsym(iTunesStoreLibrary_sLib, "ISCopyDecompressedGZipDataForData");
  softLinkISCopyDecompressedGZipDataForData[0] = v2;

  return (v2)(a1);
}

void *__iTunesStoreLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/iTunesStore.framework/iTunesStore", 2);
  iTunesStoreLibrary_sLib = result;
  return result;
}

void sub_1D4A1B834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SSXPCArraySetCFObject(void *a1, size_t a2, __CFString *a3)
{
  v5 = SSXPCCreateXPCObjectFromCFObject(a3);
  if (v5)
  {
    v6 = v5;
    xpc_array_set_value(a1, a2, v5);

    xpc_release(v6);
  }
}

uint64_t __SSXPCCreateCFObjectFromXPCObject_block_invoke_2(void *a1, const char *a2, uint64_t a3)
{
  result = SSXPCCreateCFObjectFromXPCObject(a3);
  if (result)
  {
    v6 = result;
    v7 = CFStringCreateWithCString(*MEMORY[0x1E695E4A8], a2, 0x8000100u);
    if (v7)
    {
      *(a1[5] + 8 * *(*(a1[4] + 8) + 24)) = v7;
      v9 = a1[5];
      v8 = a1[6];
      v10 = *(a1[4] + 8);
      v11 = *(v10 + 24);
      *(v10 + 24) = v11 + 1;
      *(v9 + 8 * v8 + 8 * v11) = v6;
      return 1;
    }

    else
    {
      CFRelease(v6);
      return 0;
    }
  }

  return result;
}

id SSXPCCreateNSArrayFromCFTypeArray(void *a1, uint64_t a2)
{
  if (!a1 || MEMORY[0x1DA6E0380]() != MEMORY[0x1E69E9E50])
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SSXPCCreateNSArrayFromCFTypeArray_block_invoke;
  v6[3] = &unk_1E84B0558;
  v6[4] = a2;
  v6[5] = v4;
  xpc_array_apply(a1, v6);
  return v4;
}

uint64_t __SSXPCCreateNSArrayFromCFTypeArray_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v4 = SSXPCCreateCFObjectFromXPCObject(a3);
  if (v4)
  {
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 40) addObject:v5];
    }

    CFRelease(v5);
  }

  return 1;
}

id SSXPCCreateNSArrayFromXPCEncodedArray(void *a1, uint64_t a2)
{
  if (!a1 || MEMORY[0x1DA6E0380]() != MEMORY[0x1E69E9E50])
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SSXPCCreateNSArrayFromXPCEncodedArray_block_invoke;
  v6[3] = &unk_1E84B0558;
  v6[4] = a2;
  v6[5] = v4;
  xpc_array_apply(a1, v6);
  return v4;
}

uint64_t __SSXPCCreateNSArrayFromXPCEncodedArray_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_alloc(*(a1 + 32)) initWithXPCEncoding:a3];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 40) addObject:v4];
  }

  return 1;
}

void sub_1D4A1FD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A23B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A26E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D4A273E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D4A27918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A27A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __DaemonLaunchNotification_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____DaemonLaunchNotification_block_invoke_0;
  block[3] = &unk_1E84AC408;
  block[4] = a2;
  dispatch_async(v2, block);
}

void sub_1D4A28D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A28EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A29610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A29C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SSCheckInAppPurchaseQueue(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (SSIsDaemon())
  {
    v5 = [NSClassFromString(&cfstr_Micropaymentqu.isa) sharedInstance];
    [v5 checkQueueForClientWithIdentifier:v4 URLBagContext:v3];
  }

  else
  {
    v5 = SSXPCCreateMessageDictionary(83);
    SSXPCDictionarySetObject(v5, "1", v4);

    SSXPCDictionarySetObject(v5, "2", v3);
    v4 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    [(SSXPCConnection *)v4 sendMessage:v5];
  }
}

void sub_1D4A2EAD8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1D4A2EA78);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1D4A2F0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1D4A2F250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SSVURLPathMatchesActionDictionary(void *a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [a1 lastPathComponent];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SSVURLPathMatchesActionDictionary_block_invoke;
  v7[3] = &unk_1E84B0A90;
  v7[5] = v4;
  v7[6] = &v8;
  v7[4] = a1;
  [a2 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_1D4A2FF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SSVURLPathMatchesActionDictionary_block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      result = [*(a1 + 32) rangeOfString:a2];
      if (result != 0x7FFFFFFFFFFFFFFFLL)
      {
        result = [a3 containsObject:*(a1 + 40)];
        *(*(*(a1 + 48) + 8) + 24) = result;
        v9 = *(*(*(a1 + 48) + 8) + 24);
        if ((v9 & 1) == 0)
        {
          v19 = a1;
          v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
          v11 = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v12 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(a3);
                }

                v16 = [*(*(&v20 + 1) + 8 * i) mutableCopy];
                v17 = [v16 rangeOfCharacterFromSet:v11 options:0 range:{0, objc_msgSend(v16, "length")}];
                if (v17 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  for (j = v17; j != 0x7FFFFFFFFFFFFFFFLL; j = [v16 rangeOfCharacterFromSet:v11 options:0 range:{j + 2, objc_msgSend(v16, "length") - (j + 2)}])
                  {
                    [v16 insertString:@"-" atIndex:j];
                  }
                }

                [v10 addObject:{objc_msgSend(v16, "lowercaseString")}];
              }

              v13 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
            }

            while (v13);
          }

          result = [v10 containsObject:*(v19 + 40)];
          *(*(*(v19 + 48) + 8) + 24) = result;
          v9 = *(*(*(v19 + 48) + 8) + 24);
        }

        *a4 = v9;
      }
    }
  }

  return result;
}

void SSVUpdateDeferredInAppPurchase(void *a1, int64_t a2)
{
  v3 = a1;
  v5 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v4 = SSXPCCreateMessageDictionary(143);
  SSXPCDictionarySetCFObject(v4, "1", v3);

  xpc_dictionary_set_int64(v4, "2", a2);
  [(SSXPCConnection *)v5 sendMessage:v4];
}

void sub_1D4A31500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A31B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A31F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getAAFollowUpUserInfoAccountIdentifier()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAAFollowUpUserInfoAccountIdentifierSymbolLoc_ptr;
  v7 = getAAFollowUpUserInfoAccountIdentifierSymbolLoc_ptr;
  if (!getAAFollowUpUserInfoAccountIdentifierSymbolLoc_ptr)
  {
    v1 = AppleAccountLibrary();
    v5[3] = dlsym(v1, "AAFollowUpUserInfoAccountIdentifier");
    getAAFollowUpUserInfoAccountIdentifierSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getAAFollowUpUserInfoAccountIdentifier_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1D4A3239C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAAFollowUpUserInfoAltDSID()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAAFollowUpUserInfoAltDSIDSymbolLoc_ptr;
  v7 = getAAFollowUpUserInfoAltDSIDSymbolLoc_ptr;
  if (!getAAFollowUpUserInfoAltDSIDSymbolLoc_ptr)
  {
    v1 = AppleAccountLibrary();
    v5[3] = dlsym(v1, "AAFollowUpUserInfoAltDSID");
    getAAFollowUpUserInfoAltDSIDSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getAAFollowUpUserInfoAltDSID_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1D4A32834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A331C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFLFollowUpControllerClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary();
  result = objc_getClass("FLFollowUpController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFLFollowUpControllerClass_block_invoke_cold_1();
  }

  getFLFollowUpControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreFollowUpLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!CoreFollowUpLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __CoreFollowUpLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E84B0B60;
    v4 = 0;
    CoreFollowUpLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreFollowUpLibraryCore_frameworkLibrary;
  if (!CoreFollowUpLibraryCore_frameworkLibrary)
  {
    CoreFollowUpLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __CoreFollowUpLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreFollowUpLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAAFollowUpUserInfoAccountIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleAccountLibrary();
  result = dlsym(v2, "AAFollowUpUserInfoAccountIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAFollowUpUserInfoAccountIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AppleAccountLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AppleAccountLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E84B0B78;
    v4 = 0;
    AppleAccountLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AppleAccountLibraryCore_frameworkLibrary;
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    AppleAccountLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __AppleAccountLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleAccountLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAAFollowUpUserInfoAltDSIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleAccountLibrary();
  result = dlsym(v2, "AAFollowUpUserInfoAltDSID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAFollowUpUserInfoAltDSIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getFLFollowUpActionClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary();
  result = objc_getClass("FLFollowUpAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFLFollowUpActionClass_block_invoke_cold_1();
  }

  getFLFollowUpActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAFollowUpActionPrimarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleAccountLibrary();
  result = dlsym(v2, "AAFollowUpActionPrimary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAFollowUpActionPrimarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAFollowUpUserInfoClientNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleAccountLibrary();
  result = dlsym(v2, "AAFollowUpUserInfoClientName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAFollowUpUserInfoClientNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getFLFollowUpItemClass_block_invoke(uint64_t a1)
{
  CoreFollowUpLibrary();
  result = objc_getClass("FLFollowUpItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFLFollowUpItemClass_block_invoke_cold_1();
  }

  getFLFollowUpItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFLGroupIdentifierAccountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreFollowUpLibrary();
  result = dlsym(v2, "FLGroupIdentifierAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFLGroupIdentifierAccountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __DaemonLaunchNotification_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____DaemonLaunchNotification_block_invoke_1;
  block[3] = &unk_1E84AC408;
  block[4] = a2;
  dispatch_async(v2, block);
}

void sub_1D4A3631C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A380C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A390A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A3BEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A3D354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __DaemonLaunchNotification_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____DaemonLaunchNotification_block_invoke_2;
  block[3] = &unk_1E84AC408;
  block[4] = a2;
  dispatch_async(v2, block);
}

void sub_1D4A3DB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A3ED38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A3F240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A3F628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A3FAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A40194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A41528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A426D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A42BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A43288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A43580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A43D18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D4A44014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A44270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v23 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1D4A455A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A4590C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

Class initCLLocation()
{
  if (CoreLocationLibrary_sOnce != -1)
  {
    initCLLocation_cold_1();
  }

  result = objc_getClass("CLLocation");
  classCLLocation = result;
  getCLLocationClass = CLLocationFunction;
  return result;
}

void *__CoreLocationLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreLocation.framework/CoreLocation", 2);
  CoreLocationLibrary_sLib = result;
  return result;
}

void sub_1D4A4786C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A490B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SSVAuthKitFramework()
{
  if (SSVAuthKitFramework_sOnce != -1)
  {
    SSVAuthKitFramework_cold_1();
  }

  return SSVAuthKitFramework_sHandle;
}

void *__SSVAuthKitFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AuthKit.framework/AuthKit", 1);
  SSVAuthKitFramework_sHandle = result;
  return result;
}

uint64_t SSVAuthKitUIFramework()
{
  if (SSVAuthKitUIFramework_sOnce != -1)
  {
    SSVAuthKitUIFramework_cold_1();
  }

  return SSVAuthKitUIFramework_sHandle;
}

void *__SSVAuthKitUIFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AuthKitUI.framework/AuthKitUI", 1);
  SSVAuthKitUIFramework_sHandle = result;
  return result;
}

uint64_t SSVAccountsFramework()
{
  if (SSVAccountsFramework_sOnce != -1)
  {
    SSVAccountsFramework_cold_1();
  }

  return SSVAccountsFramework_sHandle;
}

void *__SSVAccountsFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 1);
  SSVAccountsFramework_sHandle = result;
  return result;
}

uint64_t SSVAppleAccountFramework()
{
  if (SSVAppleAccountFramework_sOnce != -1)
  {
    SSVAppleAccountFramework_cold_1();
  }

  return SSVAppleAccountFramework_sHandle;
}

void *__SSVAppleAccountFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleAccount.framework/AppleAccount", 1);
  SSVAppleAccountFramework_sHandle = result;
  return result;
}

uint64_t SSVAppstoreDaemonFramework()
{
  if (SSVAppstoreDaemonFramework_sOnce != -1)
  {
    SSVAppstoreDaemonFramework_cold_1();
  }

  return SSVAppstoreDaemonFramework_sHandle;
}

void *__SSVAppstoreDaemonFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppStoreDaemon.framework/AppStoreDaemon", 1);
  SSVAppstoreDaemonFramework_sHandle = result;
  return result;
}

uint64_t SSVAVFoundationFramework()
{
  if (SSVAVFoundationFramework_sOnce != -1)
  {
    SSVAVFoundationFramework_cold_1();
  }

  return SSVAVFoundationFramework_sHandle;
}

void *__SSVAVFoundationFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AVFoundation.framework/AVFoundation", 1);
  SSVAVFoundationFramework_sHandle = result;
  return result;
}

uint64_t SSVCoreTelephonyFramework()
{
  if (SSVCoreTelephonyFramework_sOnce != -1)
  {
    SSVCoreTelephonyFramework_cold_1();
  }

  return SSVCoreTelephonyFramework_sHandle;
}

void *__SSVCoreTelephonyFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony", 1);
  SSVCoreTelephonyFramework_sHandle = result;
  return result;
}

uint64_t SSVCoreText()
{
  if (SSVCoreText_sOnce != -1)
  {
    SSVCoreText_cold_1();
  }

  return SSVCoreText_sHandle;
}

void *__SSVCoreText_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreText.framework/CoreText", 1);
  SSVCoreText_sHandle = result;
  return result;
}

uint64_t SSVFrontBoardServicesFramework()
{
  if (SSVFrontBoardServicesFramework_sOnce != -1)
  {
    SSVFrontBoardServicesFramework_cold_1();
  }

  return SSVFrontBoardServicesFramework_sHandle;
}

void *__SSVFrontBoardServicesFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 1);
  SSVFrontBoardServicesFramework_sHandle = result;
  return result;
}

uint64_t SSVFTServicesFramework()
{
  if (SSVFTServicesFramework_sOnce != -1)
  {
    SSVFTServicesFramework_cold_1();
  }

  return SSVFTServicesFramework_sHandle;
}

void *__SSVFTServicesFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FTServices.framework/FTServices", 1);
  SSVFTServicesFramework_sHandle = result;
  return result;
}

uint64_t SSViCloudNotificationFramework()
{
  if (SSViCloudNotificationFramework_sOnce != -1)
  {
    SSViCloudNotificationFramework_cold_1();
  }

  return SSViCloudNotificationFramework_sHandle;
}

void *__SSViCloudNotificationFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/iCloudNotification.framework/iCloudNotification", 1);
  SSViCloudNotificationFramework_sHandle = result;
  return result;
}

uint64_t SSViTunesStoreFramework()
{
  if (SSViTunesStoreFramework_sOnce != -1)
  {
    SSViTunesStoreFramework_cold_1();
  }

  return SSViTunesStoreFramework_sHandle;
}

void *__SSViTunesStoreFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/iTunesStore.framework/iTunesStore", 1);
  SSViTunesStoreFramework_sHandle = result;
  return result;
}

uint64_t SSVIMSharedUtilities()
{
  if (SSVIMSharedUtilities_sOnce != -1)
  {
    SSVIMSharedUtilities_cold_1();
  }

  return SSVIMSharedUtilities_sHandle;
}

void *__SSVIMSharedUtilities_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IMSharedUtilities.framework/IMSharedUtilities", 1);
  SSVIMSharedUtilities_sHandle = result;
  return result;
}

uint64_t SSVLocalAuthenticationFramework()
{
  if (SSVLocalAuthenticationFramework_sOnce != -1)
  {
    SSVLocalAuthenticationFramework_cold_1();
  }

  return SSVLocalAuthenticationFramework_sHandle;
}

void *__SSVLocalAuthenticationFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/LocalAuthentication.framework/LocalAuthentication", 1);
  SSVLocalAuthenticationFramework_sHandle = result;
  return result;
}

uint64_t SSVMobileInstallationFramework()
{
  if (SSVMobileInstallationFramework_sOnce != -1)
  {
    SSVMobileInstallationFramework_cold_1();
  }

  return SSVMobileInstallationFramework_sHandle;
}

void *__SSVMobileInstallationFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 1);
  SSVMobileInstallationFramework_sHandle = result;
  return result;
}

uint64_t SSVNanoRegistryFramework()
{
  if (SSVNanoRegistryFramework_sOnce != -1)
  {
    SSVNanoRegistryFramework_cold_1();
  }

  return SSVNanoRegistryFramework_sHandle;
}

void *__SSVNanoRegistryFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry", 1);
  SSVNanoRegistryFramework_sHandle = result;
  return result;
}

uint64_t SSVPassKitFramework()
{
  if (SSVPassKitFramework_sOnce != -1)
  {
    SSVPassKitFramework_cold_1();
  }

  return SSVPassKitFramework_sHandle;
}

void *__SSVPassKitFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/PassKit.framework/PassKit", 1);
  SSVPassKitFramework_sHandle = result;
  return result;
}

uint64_t SSVPreferencesFramework()
{
  if (SSVPreferencesFramework_sOnce != -1)
  {
    SSVPreferencesFramework_cold_1();
  }

  return SSVPreferencesFramework_sHandle;
}

void *__SSVPreferencesFramework_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Preferences.framework/Preferences", 1);
  SSVPreferencesFramework_sHandle = result;
  return result;
}

uint64_t SSVQuartzCoreFramework()
{
  if (SSVQuartzCoreFramework_sOnce != -1)
  {
    SSVQuartzCoreFramework_cold_1();
  }

  return SSVQuartzCoreFramework_sHandle;
}

void *__SSVQuartzCoreFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/QuartzCore.framework/QuartzCore", 1);
  SSVQuartzCoreFramework_sHandle = result;
  return result;
}

uint64_t SSVSymptomPresentationFeed()
{
  if (SSVSymptomPresentationFeed_sOnce != -1)
  {
    SSVSymptomPresentationFeed_cold_1();
  }

  return SSVSymptomPresentationFeed_sHandle;
}

void *__SSVSymptomPresentationFeed_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomPresentationFeed.framework/SymptomPresentationFeed", 1);
  SSVSymptomPresentationFeed_sHandle = result;
  return result;
}

uint64_t SSVUIKitFramework()
{
  if (SSVUIKitFramework_sOnce != -1)
  {
    SSVUIKitFramework_cold_1();
  }

  return SSVUIKitFramework_sHandle;
}

void *__SSVUIKitFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 1);
  SSVUIKitFramework_sHandle = result;
  return result;
}

void *SSVWeakLinkedSymbolForString(char *__symbol, void *__handle)
{
  if (__handle)
  {
    return dlsym(__handle, __symbol);
  }

  else
  {
    return 0;
  }
}

id *SSVWeakLinkedStringConstantForString(char *__symbol, void *__handle)
{
  if (__handle)
  {
    v2 = dlsym(__handle, __symbol);
    if (v2)
    {
      v2 = *v2;
    }
  }

  else
  {
    NSLog(&cfstr_CouldNotLoadLi.isa, 0);
    v2 = 0;
  }

  return v2;
}

uint64_t SSPaymentSheetImagePlaceholderCountTags(void *a1)
{
  v1 = a1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [v1 string];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SSPaymentSheetImagePlaceholderCountTags_block_invoke;
  v7[3] = &unk_1E84B1550;
  v3 = v2;
  v8 = v3;
  v9 = &v10;
  v4 = MEMORY[0x1DA6DFBB0](v7);
  (v4)[2](v4, @"%%image_");
  (v4)[2](v4, @"%%IMAGE_");
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_1D4A4D4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SSPaymentSheetImagePlaceholderCountTags_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) rangeOfString:?];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v3; i != 0x7FFFFFFFFFFFFFFFLL; i = [*(a1 + 32) rangeOfString:v5 options:0 range:{i + 1, objc_msgSend(*(a1 + 32), "length") + ~i}])
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }
}

id SSPaymentSheetImagePlaceholderRemoveAllTags(void *a1)
{
  v1 = [a1 mutableCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SSPaymentSheetImagePlaceholderRemoveAllTags_block_invoke;
  v6[3] = &unk_1E84B1578;
  v7 = v1;
  v2 = v1;
  v3 = MEMORY[0x1DA6DFBB0](v6);
  (v3)[2](v3, @"%%image_");
  (v3)[2](v3, @"%%IMAGE_");
  v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v2];

  return v4;
}

void __SSPaymentSheetImagePlaceholderRemoveAllTags_block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) mutableString];
  v4 = [v3 rangeOfString:v9];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v6 = v4;
    do
    {
      v7 = [v3 rangeOfString:@"%%" options:0 range:{v6 + 1, objc_msgSend(v3, "length") + ~v6}];
      [*(a1 + 32) replaceCharactersInRange:v6 withString:{v8 - v6 + v7, &stru_1F503F418}];
      v5 = [*(a1 + 32) mutableString];

      v6 = [v5 rangeOfString:v9];
      v3 = v5;
    }

    while (v6 != 0x7FFFFFFFFFFFFFFFLL);
  }
}

id SSPaymentSheetImagePlaceholderReplaceTagWithImageDataAndTint(void *a1, void *a2, void *a3, float a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [a1 mutableCopy];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __SSPaymentSheetImagePlaceholderReplaceTagWithImageDataAndTint_block_invoke;
  v20 = &unk_1E84B15A0;
  v21 = v7;
  v22 = v9;
  v23 = v8;
  v24 = a4;
  v10 = v8;
  v11 = v9;
  v12 = v7;
  v13 = MEMORY[0x1DA6DFBB0](&v17);
  (v13)[2](v13, @"%%image_");
  (v13)[2](v13, @"%%IMAGE_");
  v14 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = [v14 initWithAttributedString:{v11, v17, v18, v19, v20}];

  return v15;
}

void __SSPaymentSheetImagePlaceholderReplaceTagWithImageDataAndTint_block_invoke(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", a2, *(a1 + 32), @"%%"];
  v4 = [*(a1 + 40) mutableString];
  v5 = [v4 rangeOfString:v3];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v5;
    v9 = &dword_1EC7E2000;
    v10 = &dword_1EC7E2000;
    while (1)
    {
      [*(a1 + 40) replaceCharactersInRange:v8 withString:{v6, @" "}];
      if (*(a1 + 48))
      {
        break;
      }

LABEL_44:
      v7 = [*(a1 + 40) mutableString];

      v8 = [v7 rangeOfString:v3];
      v4 = v7;
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_45;
      }
    }

    if (!*(v9 + 326))
    {
      v11 = SSVPassKitFramework();
      v12 = SSVWeakLinkedStringConstantForString("PKPaymentContentItemImageAttachment", v11);
      v13 = *(v9 + 326);
      *(v9 + 326) = v12;
    }

    if (!SSPaymentSheetAppleIDUppercaseReplacementPattern_block_invoke_kPKPaymentContentItemImageAndScaleAttachment)
    {
      v14 = SSVPassKitFramework();
      v15 = SSVWeakLinkedStringConstantForString("PKPaymentContentItemImageAndScaleAttachment", v14);
      v16 = SSPaymentSheetAppleIDUppercaseReplacementPattern_block_invoke_kPKPaymentContentItemImageAndScaleAttachment;
      SSPaymentSheetAppleIDUppercaseReplacementPattern_block_invoke_kPKPaymentContentItemImageAndScaleAttachment = v15;
    }

    if (!*(v10 + 328))
    {
      v17 = SSVPassKitFramework();
      v18 = SSVWeakLinkedStringConstantForString("PKPaymentContentItemImageKey", v17);
      v19 = *(v10 + 328);
      *(v10 + 328) = v18;
    }

    if (!SSPaymentSheetAppleIDUppercaseReplacementPattern_block_invoke_kPKPaymentContentItemScaleKey)
    {
      v20 = SSVPassKitFramework();
      v21 = SSVWeakLinkedStringConstantForString("PKPaymentContentItemScaleKey", v20);
      v22 = SSPaymentSheetAppleIDUppercaseReplacementPattern_block_invoke_kPKPaymentContentItemScaleKey;
      SSPaymentSheetAppleIDUppercaseReplacementPattern_block_invoke_kPKPaymentContentItemScaleKey = v21;
    }

    if (!SSPaymentSheetAppleIDUppercaseReplacementPattern_block_invoke_kPKPaymentContentItemTintMatchingTextKey)
    {
      v23 = SSVPassKitFramework();
      v24 = SSVWeakLinkedStringConstantForString("PKPaymentContentItemTintMatchingTextKey", v23);
      v25 = SSPaymentSheetAppleIDUppercaseReplacementPattern_block_invoke_kPKPaymentContentItemTintMatchingTextKey;
      SSPaymentSheetAppleIDUppercaseReplacementPattern_block_invoke_kPKPaymentContentItemTintMatchingTextKey = v24;
    }

    if (!SSPaymentSheetAppleIDUppercaseReplacementPattern_block_invoke_kPKPaymentContentItemImageAndScaleAttachment || !*(v10 + 328) || !SSPaymentSheetAppleIDUppercaseReplacementPattern_block_invoke_kPKPaymentContentItemScaleKey || *(a1 + 56) <= 0.0)
    {
      v42 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v42)
      {
        v42 = +[SSLogConfig sharedConfig];
      }

      v43 = [v42 shouldLog];
      if ([v42 shouldLogToDisk])
      {
        v44 = v43 | 2;
      }

      else
      {
        v44 = v43;
      }

      v45 = [v42 OSLogObject];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = v44;
      }

      else
      {
        v46 = v44 & 2;
      }

      if (v46)
      {
        v47 = *(a1 + 32);
        v57 = 138543362;
        v58 = v47;
        LODWORD(v56) = 12;
        v55 = &v57;
        v48 = _os_log_send_and_compose_impl();

        v9 = &dword_1EC7E2000;
        if (v48)
        {
          v45 = [MEMORY[0x1E696AEC0] stringWithCString:v48 encoding:{4, &v57, v56}];
          free(v48);
          SSFileLog(v42, @"%@", v49, v50, v51, v52, v53, v54, v45);
          goto LABEL_42;
        }
      }

      else
      {
        v9 = &dword_1EC7E2000;
LABEL_42:
      }

      [*(a1 + 40) addAttribute:*(v9 + 326) value:*(a1 + 48) range:{v8, 1}];
      v10 = &dword_1EC7E2000;
      goto LABEL_44;
    }

    v26 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    v27 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v27 |= 2u;
    }

    v28 = [v26 OSLogObject];
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v27 &= 2u;
    }

    if (v27)
    {
      v30 = *(a1 + 32);
      LODWORD(v29) = *(a1 + 56);
      v31 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
      v57 = 138543618;
      v58 = v30;
      v9 = &dword_1EC7E2000;
      v59 = 2114;
      v60 = v31;
      LODWORD(v56) = 22;
      v55 = &v57;
      v32 = _os_log_send_and_compose_impl();

      if (!v32)
      {
LABEL_29:

        v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v10 = &dword_1EC7E2000;
        [v39 setObject:*(a1 + 48) forKey:SSPaymentSheetAppleIDUppercaseReplacementPattern_block_invoke_kPKPaymentContentItemImageKey];
        LODWORD(v40) = *(a1 + 56);
        v41 = [MEMORY[0x1E696AD98] numberWithFloat:v40];
        [v39 setObject:v41 forKey:SSPaymentSheetAppleIDUppercaseReplacementPattern_block_invoke_kPKPaymentContentItemScaleKey];

        [*(a1 + 40) addAttribute:SSPaymentSheetAppleIDUppercaseReplacementPattern_block_invoke_kPKPaymentContentItemImageAndScaleAttachment value:v39 range:{v8, 1}];
        goto LABEL_44;
      }

      v28 = [MEMORY[0x1E696AEC0] stringWithCString:v32 encoding:{4, &v57, v56}];
      free(v32);
      SSFileLog(v26, @"%@", v33, v34, v35, v36, v37, v38, v28);
    }

    goto LABEL_29;
  }

  v7 = v4;
LABEL_45:
}

void sub_1D4A53B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A53C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A56DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A57F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A599C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak((v20 - 72));
  _Unwind_Resume(a1);
}

void sub_1D4A59D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A5A4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A5A740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A5C454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A5D488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D4A5DC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A5E130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A5F074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A5F1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A5F6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D4A5F878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A5F9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __DaemonLaunchNotification_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____DaemonLaunchNotification_block_invoke_3;
  block[3] = &unk_1E84AC408;
  block[4] = a2;
  dispatch_async(v2, block);
}

void sub_1D4A5FF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A6003C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A67A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SSVXPCDictionaryCopyPlayActivityEventsArray(void *a1, const char *a2)
{
  v3 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__55;
  v15 = __Block_byref_object_dispose__55;
  v16 = 0;
  v4 = xpc_dictionary_get_value(v3, a2);
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E50])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __SSVXPCDictionaryCopyPlayActivityEventsArray_block_invoke;
    v8[3] = &unk_1E84B1CA0;
    v10 = &v11;
    v9 = v5;
    xpc_array_apply(v9, v8);
  }

  v6 = v12[5];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_1D4A685C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SSVXPCDictionaryCopyPlayActivityEventsArray_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E70])
  {
    length = xpc_data_get_length(v5);
    if (length)
    {
      length = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:xpc_data_get_bytes_ptr(v5) length:length freeWhenDone:0];
    }

    v7 = [[SSVPlayActivityEvent alloc] initWithDataRepresentation:length];
    if (v7)
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      if (!v8)
      {
        v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:xpc_array_get_count(*(a1 + 32))];
        v10 = *(*(a1 + 40) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        v8 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v8 addObject:v7];
    }
  }

  return 1;
}

void SSVXPCDictionarySetPlayActivityEventsArray(void *a1, const char *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v13 + 1) + 8 * i) dataRepresentation];
        if ([v12 length])
        {
          if (!v9)
          {
            v9 = xpc_array_create(0, 0);
          }

          xpc_array_set_data(v9, 0xFFFFFFFFFFFFFFFFLL, [v12 bytes], objc_msgSend(v12, "length"));
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
    if (v9)
    {
      xpc_dictionary_set_value(v5, a2, v9);
    }
  }
}

void sub_1D4A68AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A68C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A68D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1DA6DFBB0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1D4A69BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A6A1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D4A6A4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A6B410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A6B838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A6BDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A70184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A70308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A70B48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

uint64_t SSSQLiteCopyFoundationValueForStatementColumn(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_type(a1, a2);
  if (v4 > 2)
  {
    if (v4 == 5)
    {
      return 0;
    }

    if (v4 != 3)
    {
LABEL_12:
      v10 = sqlite3_column_blob(a1, a2);
      v11 = sqlite3_column_bytes(a1, a2);
      v12 = objc_alloc(MEMORY[0x1E695DEF0]);

      return [v12 initWithBytes:v10 length:v11];
    }

    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = sqlite3_column_text(a1, a2);

    return [v8 initWithUTF8String:v9];
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v5 = objc_alloc(MEMORY[0x1E696AD98]);
        v6 = sqlite3_column_double(a1, a2);

        return [v5 initWithDouble:v6];
      }

      goto LABEL_12;
    }

    v13 = objc_alloc(MEMORY[0x1E696AD98]);
    v14 = sqlite3_column_int64(a1, a2);

    return [v13 initWithLongLong:v14];
  }
}

uint64_t SSVSQLiteResetDatabaseAtPath(void *a1)
{
  ppDb = 0;
  if (sqlite3_open_v2([a1 fileSystemRepresentation], &ppDb, 2, 0))
  {
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v2 = CPSqliteDatabaseDelete();
    v3 = v2 ^ 1;
  }

  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v2 = [v4 removeItemAtPath:a1 error:0];
  }

  return v2;
}

BOOL SSFileIsLocalWritable(void *a1)
{
  [a1 fileSystemRepresentation];
  getpid();
  return sandbox_check() == 0;
}

void sub_1D4A73218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A74E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A768AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A78090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A78284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A78EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A79138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A79388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SSPromiseLogConfig()
{
  if (SSPromiseLogConfig_onceToken != -1)
  {
    SSPromiseLogConfig_cold_1();
  }

  v1 = SSPromiseLogConfig_logConfig;

  return v1;
}

void __SSPromiseLogConfig_block_invoke()
{
  v2 = objc_alloc_init(SSMutableLogConfig);
  [(SSLogConfig *)v2 setSubsystem:@"com.apple.StoreServices"];
  [(SSLogConfig *)v2 setCategory:@"promise"];
  v0 = [(SSMutableLogConfig *)v2 copy];
  v1 = SSPromiseLogConfig_logConfig;
  SSPromiseLogConfig_logConfig = v0;
}

void sub_1D4A79F2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D4A7A110(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D4A7A8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A7AA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A7ABD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A7AF40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1D4A7B224(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1D4A7C148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A7C3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A7E61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expception occurred during write to socket. Exception=%@"];
    SSError(@"SSHTTPServerResponseErrorDomain", 500, @"Write Error", v10);
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    if (!v9)
    {
      JUMPOUT(0x1D4A7E5ECLL);
    }

    JUMPOUT(0x1D4A7E5DCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D4A7FDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1D4A801BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1D4A80994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 208), 8);
  _Block_object_dispose((v39 - 176), 8);
  _Block_object_dispose((v39 - 144), 8);
  _Block_object_dispose((v39 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1D4A81A48(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1D4A84BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a56, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A85330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A854A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A85AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4A86A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A89694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SSVMediaSocialAttachmentTypeForTypeIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    if (UTTypeConformsTo(v3, *MEMORY[0x1E69637F8]))
    {
      v4 = 2;
    }

    else if (([(__CFString *)v3 isEqualToString:@"com.apple.coreaudio-format"]& 1) != 0)
    {
      v4 = 3;
    }

    else if (UTTypeConformsTo(v3, *MEMORY[0x1E6963748]))
    {
      v4 = 1;
    }

    else if (UTTypeConformsTo(v3, *MEMORY[0x1E6963850]) || UTTypeConformsTo(v3, *MEMORY[0x1E69638E0]))
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1D4A8B6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t get_mac_address(uint64_t a1, unsigned int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (get_mac_address_onceToken != -1)
  {
    get_mac_address_cold_1();
  }

  if (a2 >= 6)
  {
    if (!get_mac_address_kernResult)
    {
      v4 = get_mac_address_stMacAddressBuffer;
      *(a1 + 4) = word_1EC7E2A84;
      *a1 = v4;
      return 1;
    }

    return 0;
  }

  v6 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  if (os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    result = v8;
  }

  else
  {
    result = v8 & 2;
  }

  if (result)
  {
    v18 = 136315650;
    v19 = "get_mac_address";
    v20 = 1024;
    v21 = a2;
    v22 = 1024;
    v23 = 6;
    LODWORD(v17) = 24;
    result = _os_log_send_and_compose_impl();
    if (result)
    {
      v9 = result;
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:result encoding:{4, &v18, v17}];
      free(v9);
      SSFileLog(v6, @"%@", v11, v12, v13, v14, v15, v16, v10);
      return 0;
    }
  }

  return result;
}

uint64_t __get_mac_address_block_invoke()
{
  v120 = *MEMORY[0x1E69E9840];
  existing = 0;
  v0 = IOServiceMatching("IONetworkController");
  v1 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v1)
  {
    v1 = +[SSLogConfig sharedConfig];
  }

  v2 = [v1 shouldLog];
  if ([v1 shouldLogToDisk])
  {
    v3 = v2 | 2;
  }

  else
  {
    v3 = v2;
  }

  if (os_log_type_enabled([v1 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 & 2;
  }

  if (v4)
  {
    v118 = 138412290;
    v119 = v0;
    LODWORD(v115) = 12;
    v113 = &v118;
    v5 = _os_log_send_and_compose_impl();
    if (v5)
    {
      v6 = v5;
      v7 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:{4, &v118, v115}];
      free(v6);
      SSFileLog(v1, @"%@", v8, v9, v10, v11, v12, v13, v7);
    }
  }

  if (!v0)
  {
    v30 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v30)
    {
      v30 = +[SSLogConfig sharedConfig];
    }

    v35 = [v30 shouldLog];
    if ([v30 shouldLogToDisk])
    {
      v36 = v35 | 2;
    }

    else
    {
      v36 = v35;
    }

    if (os_log_type_enabled([v30 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v37 = v36;
    }

    else
    {
      v37 = v36 & 2;
    }

    if (!v37 || (LOWORD(v118) = 0, LODWORD(v115) = 2, v114 = &v118, (v38 = _os_log_send_and_compose_impl()) == 0))
    {
      get_mac_address_kernResult = 5;
      goto LABEL_105;
    }

    v34 = v38;
    MatchingServices = 5;
    goto LABEL_49;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v15 = Mutable;
    CFDictionarySetValue(Mutable, @"IOPrimaryInterface", *MEMORY[0x1E695E4D0]);
    CFDictionarySetValue(v0, @"IOPropertyMatch", v15);
    CFRelease(v15);
  }

  else
  {
    v83 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v83)
    {
      v83 = +[SSLogConfig sharedConfig];
    }

    v84 = [v83 shouldLog];
    if ([v83 shouldLogToDisk])
    {
      v85 = v84 | 2;
    }

    else
    {
      v85 = v84;
    }

    if (os_log_type_enabled([v83 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v86 = v85;
    }

    else
    {
      v86 = v85 & 2;
    }

    if (v86)
    {
      LOWORD(v118) = 0;
      LODWORD(v115) = 2;
      v113 = &v118;
      v87 = _os_log_send_and_compose_impl();
      if (v87)
      {
        v88 = v87;
        v89 = [MEMORY[0x1E696AEC0] stringWithCString:v87 encoding:{4, &v118, v115}];
        free(v88);
        SSFileLog(v83, @"%@", v90, v91, v92, v93, v94, v95, v89);
      }
    }
  }

  MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x1E696CD68], v0, &existing);
  if (MatchingServices)
  {
    v17 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    if (os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 2;
    }

    if (v20)
    {
      v118 = 67109120;
      LODWORD(v119) = MatchingServices;
      LODWORD(v115) = 8;
      v113 = &v118;
      v21 = _os_log_send_and_compose_impl();
      if (v21)
      {
        v22 = v21;
        v23 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v118, v115}];
        free(v22);
        SSFileLog(v17, @"%@", v24, v25, v26, v27, v28, v29, v23);
      }
    }
  }

  v30 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v30)
  {
    v30 = +[SSLogConfig sharedConfig];
  }

  v31 = [v30 shouldLog];
  if ([v30 shouldLogToDisk])
  {
    v32 = v31 | 2;
  }

  else
  {
    v32 = v31;
  }

  if (os_log_type_enabled([v30 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v33 = v32;
  }

  else
  {
    v33 = v32 & 2;
  }

  if (v33)
  {
    v118 = 67109120;
    LODWORD(v119) = existing;
    LODWORD(v115) = 8;
    v114 = &v118;
    v34 = _os_log_send_and_compose_impl();
    if (v34)
    {
LABEL_49:
      v39 = [MEMORY[0x1E696AEC0] stringWithCString:v34 encoding:{4, &v118, v115}];
      free(v34);
      SSFileLog(v30, @"%@", v40, v41, v42, v43, v44, v45, v39);
    }
  }

  get_mac_address_kernResult = MatchingServices;
  if (!MatchingServices)
  {
    v46 = existing;
    parent = 0;
    get_mac_address_stMacAddressBuffer = 0;
    word_1EC7E2A84 = 0;
    v47 = IOIteratorNext(existing);
    if (v47)
    {
      v48 = v47;
      v49 = *MEMORY[0x1E695E480];
      while (1)
      {
        ParentEntry = IORegistryEntryGetParentEntry(v48, "IOService", &parent);
        if (ParentEntry)
        {
          v51 = ParentEntry;
          v52 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v52)
          {
            v52 = +[SSLogConfig sharedConfig];
          }

          v53 = [v52 shouldLog];
          if ([v52 shouldLogToDisk])
          {
            v54 = v53 | 2;
          }

          else
          {
            v54 = v53;
          }

          if (os_log_type_enabled([v52 OSLogObject], OS_LOG_TYPE_DEBUG))
          {
            v55 = v54;
          }

          else
          {
            v55 = v54 & 2;
          }

          if (v55)
          {
            v118 = 67109120;
            LODWORD(v119) = v51;
            LODWORD(v115) = 8;
            v114 = &v118;
            v56 = _os_log_send_and_compose_impl();
            if (v56)
            {
              v57 = v56;
              v58 = [MEMORY[0x1E696AEC0] stringWithCString:v56 encoding:{4, &v118, v115}];
              free(v57);
              SSFileLog(v52, @"%@", v59, v60, v61, v62, v63, v64, v58);
            }
          }

          goto LABEL_91;
        }

        CFProperty = IORegistryEntryCreateCFProperty(parent, @"IOMACAddress", v49, 0);
        if (CFProperty)
        {
          break;
        }

        v67 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v67)
        {
          v67 = +[SSLogConfig sharedConfig];
        }

        v72 = [v67 shouldLog];
        if ([v67 shouldLogToDisk])
        {
          v73 = v72 | 2;
        }

        else
        {
          v73 = v72;
        }

        if (os_log_type_enabled([v67 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v74 = v73;
        }

        else
        {
          v74 = v73 & 2;
        }

        if (!v74)
        {
          v51 = 5;
          goto LABEL_90;
        }

        LOWORD(v118) = 0;
        LODWORD(v115) = 2;
        v114 = &v118;
        v71 = _os_log_send_and_compose_impl();
        v51 = 5;
        if (v71)
        {
          goto LABEL_87;
        }

LABEL_90:
        IOObjectRelease(parent);
LABEL_91:
        IOObjectRelease(v48);
        v48 = IOIteratorNext(v46);
        if (!v48)
        {
          goto LABEL_116;
        }
      }

      v66 = CFProperty;
      v121.location = 0;
      v121.length = 6;
      CFDataGetBytes(CFProperty, v121, &get_mac_address_stMacAddressBuffer);
      CFRelease(v66);
      v67 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v67)
      {
        v67 = +[SSLogConfig sharedConfig];
      }

      v68 = [v67 shouldLog];
      if ([v67 shouldLogToDisk])
      {
        v69 = v68 | 2;
      }

      else
      {
        v69 = v68;
      }

      if (os_log_type_enabled([v67 OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v70 = v69;
      }

      else
      {
        v70 = v69 & 2;
      }

      if (!v70)
      {
        v51 = 0;
        goto LABEL_90;
      }

      LOWORD(v118) = 0;
      LODWORD(v115) = 2;
      v114 = &v118;
      v71 = _os_log_send_and_compose_impl();
      v51 = 0;
      if (!v71)
      {
        goto LABEL_90;
      }

LABEL_87:
      v75 = v71;
      v76 = [MEMORY[0x1E696AEC0] stringWithCString:v71 encoding:{4, &v118}];
      free(v75);
      SSFileLog(v67, @"%@", v77, v78, v79, v80, v81, v82, v76);
      goto LABEL_90;
    }

    v51 = 5;
LABEL_116:
    get_mac_address_kernResult = v51;
    v96 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v96)
    {
      v96 = +[SSLogConfig sharedConfig];
    }

    v100 = [v96 shouldLog];
    if ([v96 shouldLogToDisk])
    {
      v101 = v100 | 2;
    }

    else
    {
      v101 = v100;
    }

    if (os_log_type_enabled([v96 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v102 = v101;
    }

    else
    {
      v102 = v101 & 2;
    }

    if (v102)
    {
      v118 = 67109120;
      LODWORD(v119) = get_mac_address_kernResult;
      LODWORD(v115) = 8;
LABEL_126:
      v103 = _os_log_send_and_compose_impl();
      if (v103)
      {
        v104 = v103;
        v105 = [MEMORY[0x1E696AEC0] stringWithCString:v103 encoding:{4, &v118, v115}];
        free(v104);
        SSFileLog(v96, @"%@", v106, v107, v108, v109, v110, v111, v105);
      }

      return IOObjectRelease(existing);
    }

    return IOObjectRelease(existing);
  }

LABEL_105:
  v96 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v96)
  {
    v96 = +[SSLogConfig sharedConfig];
  }

  v97 = [v96 shouldLog];
  if ([v96 shouldLogToDisk])
  {
    v98 = v97 | 2;
  }

  else
  {
    v98 = v97;
  }

  if (os_log_type_enabled([v96 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v99 = v98;
  }

  else
  {
    v99 = v98 & 2;
  }

  if (v99)
  {
    v118 = 67109120;
    LODWORD(v119) = get_mac_address_kernResult;
    LODWORD(v115) = 8;
    goto LABEL_126;
  }

  return IOObjectRelease(existing);
}

void sub_1D4A91CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A9222C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A929B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A93D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A94EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A95090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4A95A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initISURLOperation()
{
  if (iTunesStoreLibrary_sOnce_0 != -1)
  {
    initISURLOperation_cold_1();
  }

  result = objc_getClass("ISURLOperation");
  classISURLOperation = result;
  getISURLOperationClass = ISURLOperationFunction;
  return result;
}

void *__iTunesStoreLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/iTunesStore.framework/iTunesStore", 2);
  iTunesStoreLibrary_sLib_0 = result;
  return result;
}

void sub_1D4A99890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t SSVPBPlayActivityEventReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v204[0]) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v204[0] & 0x7F) << v6;
      if ((v204[0] & 0x80) == 0)
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
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 168;
        goto LABEL_304;
      case 2u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 408) |= 0x40000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v204[0] & 0x7F) << v73;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v12 = v74++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_342;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v75;
        }

LABEL_342:
        v193 = 176;
        goto LABEL_402;
      case 3u:
        v14 = PBReaderReadString();
        v15 = 184;
        goto LABEL_304;
      case 4u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 408) |= 0x100000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            v100 = [a2 data];
            [v100 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (v204[0] & 0x7F) << v95;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v12 = v96++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_354;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v97;
        }

LABEL_354:
        v193 = 196;
        goto LABEL_402;
      case 5u:
        *(a1 + 408) |= 0x10u;
        v204[0] = 0;
        v134 = [a2 position] + 8;
        if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 8, v135 <= objc_msgSend(a2, "length")))
        {
          v201 = [a2 data];
          [v201 getBytes:v204 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v197 = v204[0];
        v198 = 40;
        goto LABEL_416;
      case 6u:
        *(a1 + 408) |= 0x20u;
        v204[0] = 0;
        v101 = [a2 position] + 8;
        if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 8, v102 <= objc_msgSend(a2, "length")))
        {
          v200 = [a2 data];
          [v200 getBytes:v204 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v197 = v204[0];
        v198 = 48;
        goto LABEL_416;
      case 7u:
        v14 = PBReaderReadString();
        v15 = 224;
        goto LABEL_304;
      case 8u:
        v14 = PBReaderReadString();
        v15 = 232;
        goto LABEL_304;
      case 9u:
        *(a1 + 408) |= 0x80u;
        v204[0] = 0;
        v87 = [a2 position] + 8;
        if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 8, v88 <= objc_msgSend(a2, "length")))
        {
          v199 = [a2 data];
          [v199 getBytes:v204 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v197 = v204[0];
        v198 = 64;
        goto LABEL_416;
      case 0xAu:
        *(a1 + 408) |= 0x100u;
        v204[0] = 0;
        v79 = [a2 position] + 8;
        if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 8, v80 <= objc_msgSend(a2, "length")))
        {
          v196 = [a2 data];
          [v196 getBytes:v204 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v197 = v204[0];
        v198 = 72;
        goto LABEL_416;
      case 0xBu:
        *(a1 + 408) |= 0x200u;
        v204[0] = 0;
        v136 = [a2 position] + 8;
        if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 8, v137 <= objc_msgSend(a2, "length")))
        {
          v202 = [a2 data];
          [v202 getBytes:v204 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v197 = v204[0];
        v198 = 80;
LABEL_416:
        *(a1 + v198) = v197;
        goto LABEL_417;
      case 0xCu:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 408) |= 0x400000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v204[0] & 0x7F) << v61;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v12 = v62++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_334;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v63;
        }

LABEL_334:
        v193 = 256;
        goto LABEL_402;
      case 0xDu:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 408) |= 0x800000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v204[0] & 0x7F) << v55;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v12 = v56++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_330;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v57;
        }

LABEL_330:
        v193 = 280;
        goto LABEL_402;
      case 0xEu:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(a1 + 408) |= 0x10000000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            v155 = [a2 data];
            [v155 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (v204[0] & 0x7F) << v150;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v12 = v151++ >= 9;
          if (v12)
          {
            LOBYTE(v36) = 0;
            goto LABEL_380;
          }
        }

        v36 = (v152 != 0) & ~[a2 hasError];
LABEL_380:
        v195 = 401;
        goto LABEL_405;
      case 0xFu:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 408) |= 0x400u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v92 = [a2 position] + 1;
          if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
          {
            v94 = [a2 data];
            [v94 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v91 |= (v204[0] & 0x7F) << v89;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v12 = v90++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_350;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v91;
        }

LABEL_350:
        v194 = 88;
        goto LABEL_397;
      case 0x10u:
        v14 = PBReaderReadString();
        v15 = 288;
        goto LABEL_304;
      case 0x11u:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        *(a1 + 408) |= 0x40000000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v141 = [a2 position] + 1;
          if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 1, v142 <= objc_msgSend(a2, "length")))
          {
            v143 = [a2 data];
            [v143 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v140 |= (v204[0] & 0x7F) << v138;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v138 += 7;
          v12 = v139++ >= 9;
          if (v12)
          {
            LOBYTE(v36) = 0;
            goto LABEL_374;
          }
        }

        v36 = (v140 != 0) & ~[a2 hasError];
LABEL_374:
        v195 = 403;
        goto LABEL_405;
      case 0x12u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 408) |= 0x2000000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            v126 = [a2 data];
            [v126 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v204[0] & 0x7F) << v121;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v12 = v122++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_370;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v123;
        }

LABEL_370:
        v193 = 336;
        goto LABEL_402;
      case 0x13u:
        v162 = 0;
        v163 = 0;
        v164 = 0;
        *(a1 + 408) |= 0x4000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v165 = [a2 position] + 1;
          if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
          {
            v167 = [a2 data];
            [v167 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v164 |= (v204[0] & 0x7F) << v162;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v12 = v163++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_388;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v164;
        }

LABEL_388:
        v194 = 120;
        goto LABEL_397;
      case 0x14u:
        v14 = PBReaderReadString();
        v15 = 368;
        goto LABEL_304;
      case 0x15u:
        v14 = PBReaderReadData();
        v15 = 384;
        goto LABEL_304;
      case 0x16u:
        v14 = PBReaderReadData();
        v15 = 392;
        goto LABEL_304;
      case 0x17u:
        v14 = PBReaderReadData();
        v15 = 312;
        goto LABEL_304;
      case 0x18u:
        v14 = PBReaderReadString();
        v15 = 360;
        goto LABEL_304;
      case 0x19u:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        *(a1 + 408) |= 0x200000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v84 = [a2 position] + 1;
          if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
          {
            v86 = [a2 data];
            [v86 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v83 |= (v204[0] & 0x7F) << v81;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v12 = v82++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_346;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v83;
        }

LABEL_346:
        v193 = 216;
        goto LABEL_402;
      case 0x1Au:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 408) |= 0x8000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v204[0] & 0x7F) << v49;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_326;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v51;
        }

LABEL_326:
        v194 = 128;
        goto LABEL_397;
      case 0x1Bu:
        v174 = 0;
        v175 = 0;
        v176 = 0;
        *(a1 + 408) |= 0x800u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v177 = [a2 position] + 1;
          if (v177 >= [a2 position] && (v178 = objc_msgSend(a2, "position") + 1, v178 <= objc_msgSend(a2, "length")))
          {
            v179 = [a2 data];
            [v179 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v176 |= (v204[0] & 0x7F) << v174;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v174 += 7;
          v12 = v175++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_396;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v176;
        }

LABEL_396:
        v194 = 96;
        goto LABEL_397;
      case 0x1Cu:
        v168 = 0;
        v169 = 0;
        v170 = 0;
        *(a1 + 408) |= 0x1000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v171 = [a2 position] + 1;
          if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
          {
            v173 = [a2 data];
            [v173 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v170 |= (v204[0] & 0x7F) << v168;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v168 += 7;
          v12 = v169++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_392;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v170;
        }

LABEL_392:
        v194 = 104;
        goto LABEL_397;
      case 0x1Du:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 408) |= 0x40u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v204[0] & 0x7F) << v67;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_338;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v69;
        }

LABEL_338:
        v194 = 56;
        goto LABEL_397;
      case 0x1Eu:
        v14 = PBReaderReadString();
        v15 = 272;
        goto LABEL_304;
      case 0x1Fu:
        v103 = 0;
        v104 = 0;
        v105 = 0;
        *(a1 + 408) |= 4u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v106 = [a2 position] + 1;
          if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
          {
            v108 = [a2 data];
            [v108 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v105 |= (v204[0] & 0x7F) << v103;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v12 = v104++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_358;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v105;
        }

LABEL_358:
        v194 = 24;
        goto LABEL_397;
      case 0x20u:
        v14 = PBReaderReadString();
        v15 = 240;
        goto LABEL_304;
      case 0x21u:
        v14 = PBReaderReadString();
        v15 = 344;
        goto LABEL_304;
      case 0x22u:
        v14 = PBReaderReadString();
        v15 = 352;
        goto LABEL_304;
      case 0x23u:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        *(a1 + 408) |= 0x2000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v147 = [a2 position] + 1;
          if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 1, v148 <= objc_msgSend(a2, "length")))
          {
            v149 = [a2 data];
            [v149 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v146 |= (v204[0] & 0x7F) << v144;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v12 = v145++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_378;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v146;
        }

LABEL_378:
        v194 = 112;
        goto LABEL_397;
      case 0x24u:
        v14 = PBReaderReadString();
        v15 = 160;
        goto LABEL_304;
      case 0x25u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 408) |= 2u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v204[0] & 0x7F) << v37;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_318;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v39;
        }

LABEL_318:
        v194 = 16;
        goto LABEL_397;
      case 0x26u:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        *(a1 + 408) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v118 = [a2 position] + 1;
          if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
          {
            v120 = [a2 data];
            [v120 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v117 |= (v204[0] & 0x7F) << v115;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v12 = v116++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_366;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v117;
        }

LABEL_366:
        v193 = 304;
        goto LABEL_402;
      case 0x27u:
        v14 = PBReaderReadString();
        v15 = 152;
        goto LABEL_304;
      case 0x28u:
        v14 = PBReaderReadString();
        v15 = 296;
        goto LABEL_304;
      case 0x29u:
        v14 = PBReaderReadString();
        v15 = 320;
        goto LABEL_304;
      case 0x2Au:
        v14 = PBReaderReadString();
        v15 = 328;
        goto LABEL_304;
      case 0x2Bu:
        v156 = 0;
        v157 = 0;
        v158 = 0;
        *(a1 + 408) |= 8u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v159 = [a2 position] + 1;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
          {
            v161 = [a2 data];
            [v161 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v158 |= (v204[0] & 0x7F) << v156;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v156 += 7;
          v12 = v157++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_384;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v158;
        }

LABEL_384:
        v194 = 32;
        goto LABEL_397;
      case 0x2Cu:
        v186 = 0;
        v187 = 0;
        v188 = 0;
        *(a1 + 408) |= 0x8000000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v189 = [a2 position] + 1;
          if (v189 >= [a2 position] && (v190 = objc_msgSend(a2, "position") + 1, v190 <= objc_msgSend(a2, "length")))
          {
            v191 = [a2 data];
            [v191 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v188 |= (v204[0] & 0x7F) << v186;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v186 += 7;
          v12 = v187++ >= 9;
          if (v12)
          {
            LOBYTE(v36) = 0;
            goto LABEL_404;
          }
        }

        v36 = (v188 != 0) & ~[a2 hasError];
LABEL_404:
        v195 = 400;
        goto LABEL_405;
      case 0x2Du:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 408) |= 0x10000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v204[0] & 0x7F) << v43;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_322;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v45;
        }

LABEL_322:
        v194 = 136;
        goto LABEL_397;
      case 0x2Eu:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 408) |= 0x20000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v112 = [a2 position] + 1;
          if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
          {
            v114 = [a2 data];
            [v114 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v111 |= (v204[0] & 0x7F) << v109;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v12 = v110++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_362;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v111;
        }

LABEL_362:
        v194 = 144;
        goto LABEL_397;
      case 0x2Fu:
        v133 = objc_alloc_init(SSVPBPlayActivityEnqueuerProperties);
        objc_storeStrong((a1 + 200), v133);
        v204[0] = 0;
        v204[1] = 0;
        if (PBReaderPlaceMark() && SSVPBPlayActivityEnqueuerPropertiesReadFrom(v133, a2))
        {
          PBReaderRecallMark();

LABEL_417:
          v4 = a2;
          continue;
        }

        return 0;
      case 0x30u:
        v14 = PBReaderReadString();
        v15 = 248;
        goto LABEL_304;
      case 0x31u:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        *(a1 + 408) |= 0x20000000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (v204[0] & 0x7F) << v127;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v12 = v128++ >= 9;
          if (v12)
          {
            LOBYTE(v36) = 0;
            goto LABEL_372;
          }
        }

        v36 = (v129 != 0) & ~[a2 hasError];
LABEL_372:
        v195 = 402;
        goto LABEL_405;
      case 0x32u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 408) |= 0x80000000;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v204[0] & 0x7F) << v30;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            LOBYTE(v36) = 0;
            goto LABEL_314;
          }
        }

        v36 = (v32 != 0) & ~[a2 hasError];
LABEL_314:
        v195 = 404;
LABEL_405:
        *(a1 + v195) = v36;
        goto LABEL_417;
      case 0x33u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 408) |= 0x4000000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v204[0] & 0x7F) << v16;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_308;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_308:
        v193 = 376;
        goto LABEL_402;
      case 0x34u:
        v14 = PBReaderReadString();
        v15 = 208;
        goto LABEL_304;
      case 0x3Du:
        v180 = 0;
        v181 = 0;
        v182 = 0;
        *(a1 + 408) |= 0x80000u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v183 = [a2 position] + 1;
          if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
          {
            v185 = [a2 data];
            [v185 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v182 |= (v204[0] & 0x7F) << v180;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v180 += 7;
          v12 = v181++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_401;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v182;
        }

LABEL_401:
        v193 = 192;
LABEL_402:
        *(a1 + v193) = v22;
        goto LABEL_417;
      case 0x56u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 408) |= 1u;
        while (1)
        {
          LOBYTE(v204[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v204[0] & 0x7F) << v23;
          if ((v204[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_312;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_312:
        v194 = 8;
LABEL_397:
        *(a1 + v194) = v29;
        goto LABEL_417;
      case 0x57u:
        v14 = PBReaderReadString();
        v15 = 264;
LABEL_304:
        v192 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_417;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_417;
    }
  }
}

void sub_1D4AA594C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4AA63FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t _isValidReply(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
  }

  else
  {
    if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
    {
      v6 = 0;
      v7 = 1;
      goto LABEL_10;
    }

    v5 = 111;
  }

  v6 = SSError(@"SSErrorDomain", v5, 0, 0);
  if (a2)
  {
    v6 = v6;
    v7 = 0;
    *a2 = v6;
  }

  else
  {
    v7 = 0;
  }

LABEL_10:

  return v7;
}

void sub_1D4AA77BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4AA8270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AA94B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4AA97BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AAA470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

id SSVSubscriptionBagForDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"sbKeyBag"];
  if (!v2)
  {
    v2 = [v1 objectForKey:@"subKeyBag"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_7:
    v4 = v3;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v2 options:0];
    goto LABEL_7;
  }

  v4 = 0;
LABEL_9:

  return v4;
}

void sub_1D4AAACE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AAB358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AAB5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AAC470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AACCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AACE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AACF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AAD0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1_0(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1DA6DFBB0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1D4AAD6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AADD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1D4AAEA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 192), 8);
  _Block_object_dispose((v37 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t __updateAppPurchaseHistoryFrom7000to8000_block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  result = [*(a1 + 32) statementHasRowAfterStepping:a2];
  if (result)
  {
    result = SSSQLiteCopyFoundationValueForStatementColumn(a2, 0);
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

uint64_t __updateAppPurchaseHistoryFrom7000to8000_block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  result = [*(a1 + 32) statementHasRowAfterStepping:a2];
  if (result)
  {
    result = SSSQLiteCopyFoundationValueForStatementColumn(a2, 0);
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

uint64_t __updateAppPurchaseHistoryFrom7000to8000_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1D4AAF124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AB36A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AB385C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AB4E7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D4AB52AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D4AB54EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D4AB57B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D4AB72D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D4AB7700(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D4AB7940(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D4AB7C0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D4AB87D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SSObservableLogConfig()
{
  if (SSObservableLogConfig_onceToken != -1)
  {
    SSObservableLogConfig_cold_1();
  }

  v1 = SSObservableLogConfig_logConfig;

  return v1;
}

void __SSObservableLogConfig_block_invoke()
{
  v2 = objc_alloc_init(SSMutableLogConfig);
  [(SSLogConfig *)v2 setSubsystem:@"com.apple.StoreServices"];
  [(SSLogConfig *)v2 setCategory:@"observable"];
  v0 = [(SSMutableLogConfig *)v2 copy];
  v1 = SSObservableLogConfig_logConfig;
  SSObservableLogConfig_logConfig = v0;
}

void sub_1D4ABA894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4ABAF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4ABFEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AC0104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SSVProtocolRedirectURLForResponse(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 MIMEType];
  v5 = v4;
  if (!v3 || v4 && [v4 rangeOfString:@"xml" options:1] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v5, "rangeOfString:options:", @"plist", 1) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:0];
    objc_opt_class();
    v6 = 0;
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 objectForKey:@"action"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 objectForKey:@"kind"];
        v10 = [v8 objectForKey:@"url"];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && ![v9 caseInsensitiveCompare:@"Goto"])
        {
          v6 = [MEMORY[0x1E695DFF8] URLWithString:v10];
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

uint64_t __Block_byref_object_copy__5_0(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1DA6DFBB0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1D4AC3AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AC3E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AC4268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1D4AC5484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AC568C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AC6168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AC65F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AC6714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t initSimulateCrash(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = CrashReporterSupportLibrary_sOnce;
  v6 = a3;
  if (v5 != -1)
  {
    initSimulateCrash_cold_1();
  }

  softLinkSimulateCrash = dlsym(CrashReporterSupportLibrary_sLib, "SimulateCrash");
  v7 = (softLinkSimulateCrash)(a1, a2, v6);

  return v7;
}

void *__CrashReporterSupportLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 2);
  CrashReporterSupportLibrary_sLib = result;
  return result;
}

void sub_1D4ACBB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1D4ACBD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1D4ACC76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4ACCB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

id SSVCopyLoadMoreRangesFromArray(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v11 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 objectForKey:@"endId"];
          v9 = [v7 objectForKey:@"startId"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v12 addObject:v9];
              v5 = v11;
              [v12 addObject:v8];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  return v12;
}

void sub_1D4AD0610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AD1290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AD1608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AD19CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AD20D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AD31B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __DownloadMonitorChanged(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____DownloadMonitorChanged_block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = a2;
  dispatch_async(v2, block);
}

void sub_1D4AD8960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AD99C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D4ADBCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1D4ADF1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AE01CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D4AE0768(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D4AE09A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D4AE0C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D4AE102C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1D4AE12A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D4AE1DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AE7358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1D4AE7894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AE81C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AE867C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1D4AE8A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AE8CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4AE95CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}