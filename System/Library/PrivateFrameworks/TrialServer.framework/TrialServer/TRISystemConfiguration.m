@interface TRISystemConfiguration
+ (id)_sharedSystemInfo;
+ (id)sharedInstance;
+ (void)updateSystemInfoUsingContext:(id)a3;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)marketingOSVersion;
- (BOOL)_updateSystemInfo:(id)a3;
- (BOOL)deleteDeviceIdentifierWithPath:(id)a3;
- (BOOL)hasAne;
- (BOOL)isAutomatedTestDevice;
- (BOOL)isBetaUserWithIsStale:(BOOL *)a3;
- (BOOL)isDiagnosticsAndUsageEnabled;
- (BOOL)resetDeviceIdentifier;
- (BOOL)setDeviceIdentifier:(id)a3 path:(id)a4;
- (BOOL)userSettingsIsSiriEnabled;
- (TRISystemConfiguration)initWithPaths:(id)a3;
- (id)_dispatchQueueForCarrierInfoGathering;
- (id)_systemInfoWithIsStale:(BOOL *)a3;
- (id)_trialVersion;
- (id)activeDictationLocales;
- (id)aneVersion;
- (id)carrierBundleIdentifier;
- (id)carrierCountryIsoCode;
- (id)createDeviceIdentifierWithPath:(id)a3;
- (id)deviceClass;
- (id)deviceHardwareModel;
- (id)deviceId;
- (id)deviceInfoForQuestion:(id)a3;
- (id)deviceModelCode;
- (id)deviceSystemId;
- (id)enabledInputModeIdentifiers;
- (id)iCloudId;
- (id)mapsBucketId;
- (id)mapsDeviceCountryCode;
- (id)osBuild;
- (id)readDeviceIdentifierWithPath:(id)a3;
- (id)reloadDeviceId;
- (id)reloadSystemInfo;
- (id)siriDeviceAggregationIdRotationDate;
- (id)userSettingsBCP47DeviceLocale;
- (id)userSettingsLanguageCode;
- (id)userSettingsRegionCode;
- (id)userSettingsSiriLocale;
- (int)populationType;
- (int64_t)appleIntelligenceState;
- (int64_t)deviceChipId;
- (unint64_t)trialVersionMajor;
- (unint64_t)trialVersionMinor;
@end

@implementation TRISystemConfiguration

- (TRISystemConfiguration)initWithPaths:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRISystemConfiguration;
  v5 = [(TRISystemConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 deviceIdentifierFile];
    persistentDeviceIdentifierPath = v5->_persistentDeviceIdentifierPath;
    v5->_persistentDeviceIdentifierPath = v6;
  }

  return v5;
}

+ (id)sharedInstance
{
  if (qword_281597740 != -1)
  {
    dispatch_once(&qword_281597740, &__block_literal_global_15);
  }

  v3 = _MergedGlobals_34;

  return v3;
}

void __40__TRISystemConfiguration_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [TRISystemConfiguration alloc];
  v2 = [MEMORY[0x277D737E0] sharedPaths];
  v3 = [(TRISystemConfiguration *)v1 initWithPaths:v2];
  v4 = _MergedGlobals_34;
  _MergedGlobals_34 = v3;

  objc_autoreleasePoolPop(v0);
}

+ (id)_sharedSystemInfo
{
  if (qword_281597750 != -1)
  {
    dispatch_once(&qword_281597750, &__block_literal_global_44);
  }

  v3 = qword_281597748;

  return v3;
}

void __43__TRISystemConfiguration__sharedSystemInfo__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  *(v1 + 8) = 1;
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v1];
  v4 = qword_281597748;
  qword_281597748 = v3;

  objc_autoreleasePoolPop(v0);
}

- (int)populationType
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = +[TRICKServerEnvironmentReader currentPopulation];
  if (v3)
  {
    v4 = v3;
    v5 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = v4;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Using population override: %d", v8, 8u);
    }
  }

  else if ([(TRISystemConfiguration *)self isInternalBuild])
  {
    v4 = 3;
  }

  else if ([(TRISystemConfiguration *)self isBetaUserWithIsStale:0])
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_systemInfoWithIsStale:(BOOL *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__14;
  v12 = __Block_byref_object_dispose__14;
  v13 = 0;
  v4 = [objc_opt_class() _sharedSystemInfo];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__TRISystemConfiguration__systemInfoWithIsStale___block_invoke;
  v7[3] = &unk_279DE1298;
  v7[4] = &v8;
  v7[5] = a3;
  [v4 runWithLockAcquired:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __49__TRISystemConfiguration__systemInfoWithIsStale___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!*(v3 + 2))
  {
    v4 = +[TRISystemInfo info];
    v5 = v7[2];
    v7[2] = v4;

    v3 = v7;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    *v6 = *(v3 + 8);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), *(v3 + 2));
}

- (BOOL)_updateSystemInfo:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [objc_opt_class() _sharedSystemInfo];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__TRISystemConfiguration__updateSystemInfo___block_invoke;
  v7[3] = &unk_279DE12C0;
  v5 = v3;
  v8 = v5;
  v9 = &v10;
  [v4 runWithLockAcquired:v7];

  LOBYTE(v4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
}

void __44__TRISystemConfiguration__updateSystemInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  objc_storeStrong((a2 + 16), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)reloadSystemInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__14;
  v11 = 0;
  v2 = [objc_opt_class() _sharedSystemInfo];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__TRISystemConfiguration_reloadSystemInfo__block_invoke;
  v5[3] = &unk_279DE12E8;
  v5[4] = &v6;
  [v2 runWithLockAcquired:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__TRISystemConfiguration_reloadSystemInfo__block_invoke(uint64_t a1, _BYTE *a2)
{
  a2[8] = 0;
  v5 = a2;
  v3 = +[TRISystemInfo info];
  v4 = v5[2];
  v5[2] = v3;

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v5[2]);
}

- (id)_trialVersion
{
  v2 = MEMORY[0x277D73800];
  v3 = [(TRISystemConfiguration *)self trialVersionTag];
  v4 = [v2 parseVersionFromString:v3 withPrefix:@"TrialXP-"];

  return v4;
}

- (unint64_t)trialVersionMajor
{
  v2 = [(TRISystemConfiguration *)self _trialVersion];
  v3 = [v2 majorVersion];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unint64_t)trialVersionMinor
{
  v2 = [(TRISystemConfiguration *)self _trialVersion];
  v3 = [v2 minorVersion];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (BOOL)isBetaUserWithIsStale:(BOOL *)a3
{
  if ([(TRISystemConfiguration *)self isInternalBuild])
  {
    v5 = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

  else
  {
    v6 = [(TRISystemConfiguration *)self _systemInfoWithIsStale:a3];
    v7 = v6;
    if (!a3 || v6)
    {
      if (v6)
      {
        v5 = [v6 isEnrolledInBetaProgram];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
      *a3 = 1;
    }
  }

  return v5;
}

- (id)readDeviceIdentifierWithPath:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:a3 encoding:4 error:&v9];
  v4 = v9;
  if (!v3)
  {
    v5 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 description];
      *buf = 138412290;
      v11 = v8;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Persistent identifier file read error: %@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)resetDeviceIdentifier
{
  if (![(TRISystemConfiguration *)self deleteDeviceIdentifier])
  {
    return 0;
  }

  v3 = [(TRISystemConfiguration *)self createPersistentDeviceIdentifier];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)deleteDeviceIdentifierWithPath:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  if (![v4 fileExistsAtPath:v3] || ((v14 = 0, v5 = objc_msgSend(v4, "removeItemAtPath:error:", v3, &v14), v6 = v14, v5) ? (v7 = v6 == 0) : (v7 = 0), v7))
  {
    v10 = 1;
  }

  else
  {
    v8 = v6;
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = [v8 description];
      *buf = 138412290;
      v16 = v13;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Error deleting persistent identifier file: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)setDeviceIdentifier:(id)a3 path:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  v9 = [v8 triCreateDirectoryForPath:v7 isDirectory:0 error:&v21];
  v10 = v21;
  if (v10)
  {
    v11 = v10;
    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(TRISystemConfiguration *)v11 description];
      *buf = 138412290;
      v23 = v13;
      v14 = "Error creating persistent identifier folder: %@";
LABEL_10:
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
    }
  }

  else
  {
    v20 = 0;
    [v6 writeToFile:v7 atomically:1 encoding:4 error:&v20];
    v15 = v20;
    if (!v15)
    {
      v11 = self;
      objc_sync_enter(v11);
      cachedDeviceIdentifier = v11->_cachedDeviceIdentifier;
      v11->_cachedDeviceIdentifier = 0;

      objc_sync_exit(v11);
      v16 = 1;
      goto LABEL_7;
    }

    v11 = v15;
    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(TRISystemConfiguration *)v11 description];
      *buf = 138412290;
      v23 = v13;
      v14 = "Error writing persistent identifier: %@";
      goto LABEL_10;
    }
  }

  v16 = 0;
LABEL_7:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)createDeviceIdentifierWithPath:(id)a3
{
  v4 = a3;
  v5 = [(TRISystemConfiguration *)self readDeviceIdentifierWithPath:v4];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    v7 = [v6 UUIDString];

    if ([(TRISystemConfiguration *)self setDeviceIdentifier:v7 path:v4])
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)deviceInfoForQuestion:(id)a3
{
  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = v5;

  return v5;
}

- (id)reloadDeviceId
{
  v2 = self;
  objc_sync_enter(v2);
  cachedDeviceIdentifier = v2->_cachedDeviceIdentifier;
  v2->_cachedDeviceIdentifier = 0;

  objc_sync_exit(v2);

  return [(TRISystemConfiguration *)v2 deviceId];
}

- (id)deviceId
{
  v2 = self;
  objc_sync_enter(v2);
  cachedDeviceIdentifier = v2->_cachedDeviceIdentifier;
  if (!cachedDeviceIdentifier)
  {
    v4 = [(TRISystemConfiguration *)v2 storedDeviceIdentifier];
    v5 = v2->_cachedDeviceIdentifier;
    v2->_cachedDeviceIdentifier = v4;

    cachedDeviceIdentifier = v2->_cachedDeviceIdentifier;
  }

  v6 = cachedDeviceIdentifier;
  objc_sync_exit(v2);

  return v6;
}

- (id)deviceSystemId
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__TRISystemConfiguration_deviceSystemId__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  if (qword_281597760 != -1)
  {
    dispatch_once(&qword_281597760, block);
  }

  return qword_281597758;
}

uint64_t __40__TRISystemConfiguration_deviceSystemId__block_invoke(uint64_t a1)
{
  qword_281597758 = [*(a1 + 32) deviceInfoForQuestion:@"UniqueDeviceID"];

  return MEMORY[0x2821F96F8]();
}

- (id)iCloudId
{
  v2 = [(TRISystemConfiguration *)self systemInfo];
  v3 = [v2 iCloudIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_287FA0430;
  }

  v6 = v5;

  return v5;
}

- (id)deviceClass
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TRISystemConfiguration_deviceClass__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  if (qword_281597770 != -1)
  {
    dispatch_once(&qword_281597770, block);
  }

  return qword_281597768;
}

uint64_t __37__TRISystemConfiguration_deviceClass__block_invoke(uint64_t a1)
{
  qword_281597768 = [*(a1 + 32) deviceInfoForQuestion:@"DeviceClass"];

  return MEMORY[0x2821F96F8]();
}

- (id)deviceModelCode
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__TRISystemConfiguration_deviceModelCode__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  if (qword_281597780 != -1)
  {
    dispatch_once(&qword_281597780, block);
  }

  return qword_281597778;
}

uint64_t __41__TRISystemConfiguration_deviceModelCode__block_invoke(uint64_t a1)
{
  qword_281597778 = [*(a1 + 32) deviceInfoForQuestion:@"ProductType"];

  return MEMORY[0x2821F96F8]();
}

- (id)osBuild
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__TRISystemConfiguration_osBuild__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  if (qword_281597790 != -1)
  {
    dispatch_once(&qword_281597790, block);
  }

  return qword_281597788;
}

uint64_t __33__TRISystemConfiguration_osBuild__block_invoke(uint64_t a1)
{
  qword_281597788 = [*(a1 + 32) deviceInfoForQuestion:@"BuildVersion"];

  return MEMORY[0x2821F96F8]();
}

- (id)userSettingsLanguageCode
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 languageCode];

  return v3;
}

- (id)userSettingsRegionCode
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 countryCode];

  return v3;
}

- (id)userSettingsBCP47DeviceLocale
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 languageCode];

  v4 = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [v4 countryCode];

  v6 = &stru_287FA0430;
  if (v5)
  {
    v6 = v5;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v3, v6];

  return v7;
}

- (id)_dispatchQueueForCarrierInfoGathering
{
  if (qword_2815977A0 != -1)
  {
    dispatch_once(&qword_2815977A0, &__block_literal_global_84);
  }

  v3 = qword_281597798;

  return v3;
}

void __63__TRISystemConfiguration__dispatchQueueForCarrierInfoGathering__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.trial.system-config.carrier" qosClass:17];
  v2 = qword_281597798;
  qword_281597798 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)carrierBundleIdentifier
{
  v2 = [(TRISystemConfiguration *)self systemInfo];
  v3 = [v2 carrierBundleIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_287FA0430;
  }

  v6 = v5;

  return v5;
}

- (id)carrierCountryIsoCode
{
  v2 = [(TRISystemConfiguration *)self systemInfo];
  v3 = [v2 carrierCountryIsoCode];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_287FA0430;
  }

  v6 = v5;

  return v5;
}

- (BOOL)isDiagnosticsAndUsageEnabled
{
  v2 = [(TRISystemConfiguration *)self systemInfo];
  v3 = [v2 isDiagnosticsAndUsageEnabled];

  return v3;
}

- (BOOL)hasAne
{
  v2 = [(TRISystemConfiguration *)self systemInfo];
  v3 = [v2 hasAne];

  return v3;
}

- (id)aneVersion
{
  v2 = [(TRISystemConfiguration *)self systemInfo];
  v3 = [v2 aneVersion];

  return v3;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)marketingOSVersion
{
  v4 = [MEMORY[0x277CCAC38] processInfo];
  if (v4)
  {
    v6 = v4;
    [v4 operatingSystemVersion];
    v4 = v6;
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (id)enabledInputModeIdentifiers
{
  v2 = [(TRISystemConfiguration *)self systemInfo];
  v3 = [v2 enabledInputModeIdentifiers];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (BOOL)isAutomatedTestDevice
{
  v2 = [(TRISystemConfiguration *)self systemInfo];
  v3 = [v2 isAutomatedTestDevice];

  return v3;
}

- (id)siriDeviceAggregationIdRotationDate
{
  v2 = [(TRISystemConfiguration *)self systemInfo];
  v3 = [v2 siriDeviceAggregationIdRotationDate];

  return v3;
}

- (int64_t)appleIntelligenceState
{
  v2 = [(TRISystemConfiguration *)self systemInfo];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 appleIntelligenceState];
  }

  else
  {
    v5 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Error: systemInfo is null.", v7, 2u);
    }

    v4 = 2;
  }

  return v4;
}

- (int64_t)deviceChipId
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__TRISystemConfiguration_deviceChipId__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  if (qword_2815977B0 != -1)
  {
    dispatch_once(&qword_2815977B0, block);
  }

  return qword_2815977A8;
}

void __38__TRISystemConfiguration_deviceChipId__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceInfoForQuestion:@"ChipID"];
  qword_2815977A8 = [v1 integerValue];
}

- (id)deviceHardwareModel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__TRISystemConfiguration_deviceHardwareModel__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  if (qword_2815977C0 != -1)
  {
    dispatch_once(&qword_2815977C0, block);
  }

  if (qword_2815977B8)
  {
    v2 = qword_2815977B8;
  }

  else
  {
    v2 = @"unknown";
  }

  return v2;
}

uint64_t __45__TRISystemConfiguration_deviceHardwareModel__block_invoke(uint64_t a1)
{
  qword_2815977B8 = [*(a1 + 32) deviceInfoForQuestion:@"HWModelStr"];

  return MEMORY[0x2821F96F8]();
}

- (id)mapsBucketId
{
  v2 = [(TRISystemConfiguration *)self systemInfo];
  v3 = [v2 mapsBucketId];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_287FC47B0;
  }

  return v5;
}

- (id)mapsDeviceCountryCode
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(TRIXPCCovariateFetcher);
  v4 = [(TRIXPCCovariateFetcher *)v3 mapsDeviceCountryCode];

  objc_autoreleasePoolPop(v2);

  return v4;
}

- (BOOL)userSettingsIsSiriEnabled
{
  v2 = CFPreferencesCopyAppValue(@"Assistant Enabled", @"com.apple.assistant.support");
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)userSettingsSiriLocale
{
  if ([(TRISystemConfiguration *)self userSettingsIsSiriEnabled])
  {
    v2 = CFPreferencesCopyAppValue(@"Session Language", @"com.apple.assistant.backedup");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)activeDictationLocales
{
  v36 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D737A8] callerIsRunningFromSystemContext])
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v3 = CFPreferencesCopyAppValue(@"Dictation Enabled", @"com.apple.assistant.support");
    if (objc_opt_respondsToSelector() & 1) != 0 && ([v3 BOOLValue])
    {
      v4 = [MEMORY[0x277CBEB58] set];
      v5 = CFPreferencesCopyAppValue(@"DictationLanguagesEnabled", @"com.apple.keyboard.preferences");
      objc_opt_class();
      v24 = v5;
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v8 = [v7 allKeys];
      v9 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v30;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v30 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v29 + 1) + 8 * i);
            v14 = [v7 objectForKeyedSubscript:v13];
            v15 = [v14 BOOLValue];

            if (v15)
            {
              [v4 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v10);
      }

      v2 = objc_opt_new();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = v4;
      v17 = [v16 countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v26;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:*(*(&v25 + 1) + 8 * j)];
            [v2 addObject:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v25 objects:v34 count:16];
        }

        while (v18);
      }
    }

    else
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Dictation is not enabled. Returning an empty locale array.", buf, 2u);
      }

      v2 = MEMORY[0x277CBEBF8];
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)updateSystemInfoUsingContext:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Updating system info.", &v19, 2u);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [TRISystemConfiguration alloc];
  v7 = [v3 paths];
  v8 = [(TRISystemConfiguration *)v6 initWithPaths:v7];

  v9 = [(TRISystemConfiguration *)v8 deviceId];

  if (!v9)
  {
    v10 = [(TRISystemConfiguration *)v8 createPersistentDeviceIdentifier];
  }

  v11 = [v3 client];
  v12 = [TRISystemInfo createSystemInfoWithFactorProvider:v11];

  if (v12 && ([v12 save] & 1) != 0)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Update sysconfig", &v19, 2u);
    }

    v14 = [(TRISystemConfiguration *)v8 reloadSystemInfo];
  }

  else
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      v20 = @"Failed to create system info";
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
    }

    v16 = [v3 client];
    v17 = [v16 shouldLogAtLevel:50 withPrivacyRadar:54260918];

    if (v17)
    {
      [v3 logErrorMetric:@"Failed to create system info"];
    }
  }

  objc_autoreleasePoolPop(v5);
  notify_post("com.apple.trial.covariates-updated");

  v18 = *MEMORY[0x277D85DE8];
}

@end