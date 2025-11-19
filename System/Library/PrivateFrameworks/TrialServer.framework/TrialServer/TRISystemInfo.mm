@interface TRISystemInfo
+ (BOOL)_hasAne;
+ (BOOL)_isAutomatedTestDevice;
+ (BOOL)_isDiagnosticsAndUsageEnabled;
+ (BOOL)_isVirtualMachine;
+ (BOOL)_sysIsEnrolledInBetaProgram;
+ (id)_aneVersion;
+ (id)_carrierBundleIdentifier;
+ (id)_carrierCountryIsoCode;
+ (id)_iCloudIdentifier;
+ (id)_persistentSystemInfoPath;
+ (id)_sysEnabledInputModeIdentifiers;
+ (id)createSystemInfoWithFactorProvider:(id)a3;
+ (id)info;
+ (id)loadSystemInfo;
+ (id)systemInfoFromFile:(id)a3;
+ (int64_t)_appleIntelligenceState:(id)a3;
- (BOOL)save;
- (BOOL)saveToFile:(id)a3;
- (TRISystemInfo)initWithCoder:(id)a3;
- (id)_getSiriDeviceAggregationIdRotationDate;
- (id)externalParamManager;
- (id)initFromSystemWithFactorProvider:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRISystemInfo

+ (id)_persistentSystemInfoPath
{
  v2 = [MEMORY[0x277D737E0] sharedPaths];
  v3 = [v2 systemDataFile];

  return v3;
}

+ (id)info
{
  v3 = [a1 loadSystemInfo];
  if (!v3)
  {
    if (([MEMORY[0x277D737A8] hostingProcessIsTriald] & 1) != 0 || objc_msgSend(MEMORY[0x277D737A8], "hostingProcessIsTrialdSystem"))
    {
      v3 = [a1 createSystemInfoWithFactorProvider:0];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

+ (id)loadSystemInfo
{
  v3 = [a1 _persistentSystemInfoPath];
  v4 = [a1 systemInfoFromFile:v3];

  return v4;
}

+ (id)systemInfoFromFile:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v4 fileExistsAtPath:v3])
  {
    v12 = 0;
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3 options:2 error:&v12];
    v6 = v12;
    if (v5)
    {
      v11 = v6;
      v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v11];
      v8 = v6;
      v6 = v11;
    }

    else
    {
      v8 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v14 = v3;
        v15 = 2112;
        v16 = v6;
        _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "failed to read system info from file %@: %@", buf, 0x16u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)createSystemInfoWithFactorProvider:(id)a3
{
  v3 = a3;
  v4 = [[TRISystemInfo alloc] initFromSystemWithFactorProvider:v3];

  return v4;
}

- (id)initFromSystemWithFactorProvider:(id)a3
{
  v20.receiver = self;
  v20.super_class = TRISystemInfo;
  v3 = [(TRISystemInfo *)&v20 init];
  if (v3)
  {
    v4 = objc_alloc_init(TRIXPCCovariateFetcher);
    v3->_isEnrolledInBetaProgram = [objc_opt_class() _sysIsEnrolledInBetaProgram];
    v5 = [objc_opt_class() _sysEnabledInputModeIdentifiers];
    enabledInputModeIdentifiers = v3->_enabledInputModeIdentifiers;
    v3->_enabledInputModeIdentifiers = v5;

    v7 = [objc_opt_class() _carrierBundleIdentifier];
    carrierBundleIdentifier = v3->_carrierBundleIdentifier;
    v3->_carrierBundleIdentifier = v7;

    v9 = [objc_opt_class() _carrierCountryIsoCode];
    carrierCountryIsoCode = v3->_carrierCountryIsoCode;
    v3->_carrierCountryIsoCode = v9;

    v11 = [objc_opt_class() _iCloudIdentifier];
    iCloudIdentifier = v3->_iCloudIdentifier;
    v3->_iCloudIdentifier = v11;

    v3->_isDiagnosticsAndUsageEnabled = [objc_opt_class() _isDiagnosticsAndUsageEnabled];
    v3->_hasAne = [objc_opt_class() _hasAne];
    v13 = [objc_opt_class() _aneVersion];
    aneVersion = v3->_aneVersion;
    v3->_aneVersion = v13;

    v3->_isAutomatedTestDevice = [objc_opt_class() _isAutomatedTestDevice];
    v15 = [(TRISystemInfo *)v3 _getSiriDeviceAggregationIdRotationDate];
    siriDeviceAggregationIdRotationDate = v3->_siriDeviceAggregationIdRotationDate;
    v3->_siriDeviceAggregationIdRotationDate = v15;

    v3->_appleIntelligenceState = [objc_opt_class() _appleIntelligenceState:v4];
    v17 = [objc_opt_class() _mapsBucketId:v4];
    mapsBucketId = v3->_mapsBucketId;
    v3->_mapsBucketId = v17;
  }

  return v3;
}

- (TRISystemInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = TRISystemInfo;
  v5 = [(TRISystemInfo *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isBetaUser"];
    v5->_isEnrolledInBetaProgram = [v6 BOOLValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"carrierBundleIdentifier"];
    carrierBundleIdentifier = v5->_carrierBundleIdentifier;
    v5->_carrierBundleIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"carrierCountryIsoCode"];
    carrierCountryIsoCode = v5->_carrierCountryIsoCode;
    v5->_carrierCountryIsoCode = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudIdentifier"];
    iCloudIdentifier = v5->_iCloudIdentifier;
    v5->_iCloudIdentifier = v11;

    v5->_isDiagnosticsAndUsageEnabled = [v4 decodeBoolForKey:@"isDiagnosticsAndUsageEnabled"];
    v5->_hasAne = [v4 decodeBoolForKey:@"hasAne"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"aneVersion"];
    aneVersion = v5->_aneVersion;
    v5->_aneVersion = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"enabledInputModeIdentifiers"];
    enabledInputModeIdentifiers = v5->_enabledInputModeIdentifiers;
    v5->_enabledInputModeIdentifiers = v18;

    v20 = [v4 containsValueForKey:@"logUserSettingsRegionCode"];
    if (v20)
    {
      LOBYTE(v20) = [v4 decodeBoolForKey:@"logUserSettingsRegionCode"];
    }

    v5->_logUserSettingsRegionCode = v20;
    v21 = [v4 containsValueForKey:@"logUserSettingsLanguageCode"];
    if (v21)
    {
      LOBYTE(v21) = [v4 decodeBoolForKey:@"logUserSettingsLanguageCode"];
    }

    v5->_logUserSettingsLanguageCode = v21;
    v22 = [v4 containsValueForKey:@"logUserKeyboardEnabledInputMode"];
    if (v22)
    {
      LOBYTE(v22) = [v4 decodeBoolForKey:@"logUserKeyboardEnabledInputMode"];
    }

    v5->_logUserKeyboardEnabledInputMode = v22;
    if (!v5->_enabledInputModeIdentifiers)
    {
      v23 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "initWithCoder: enabledInputModeIdentifiers is nil", buf, 2u);
      }

      v24 = v5->_enabledInputModeIdentifiers;
      v5->_enabledInputModeIdentifiers = MEMORY[0x277CBEBF8];
    }

    v5->_isAutomatedTestDevice = [v4 decodeBoolForKey:@"isAutomatedTestDevice"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"siriDeviceAggregationIdRotationDate"];
    siriDeviceAggregationIdRotationDate = v5->_siriDeviceAggregationIdRotationDate;
    v5->_siriDeviceAggregationIdRotationDate = v25;

    v5->_appleIntelligenceState = [v4 decodeIntegerForKey:@"appleIntelligenceState"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapsBucketId"];
    mapsBucketId = v5->_mapsBucketId;
    v5->_mapsBucketId = v27;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TRISystemInfo *)self enabledInputModeIdentifiers];

  if (!v5)
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "encodeWithCoder: enabledInputModeIdentifiers is nil", v17, 2u);
    }
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[TRISystemInfo isEnrolledInBetaProgram](self, "isEnrolledInBetaProgram")}];
  [v4 encodeObject:v7 forKey:@"isBetaUser"];

  v8 = [(TRISystemInfo *)self carrierBundleIdentifier];
  [v4 encodeObject:v8 forKey:@"carrierBundleIdentifier"];

  v9 = [(TRISystemInfo *)self carrierCountryIsoCode];
  [v4 encodeObject:v9 forKey:@"carrierCountryIsoCode"];

  [v4 encodeBool:-[TRISystemInfo isDiagnosticsAndUsageEnabled](self forKey:{"isDiagnosticsAndUsageEnabled"), @"isDiagnosticsAndUsageEnabled"}];
  [v4 encodeBool:-[TRISystemInfo hasAne](self forKey:{"hasAne"), @"hasAne"}];
  v10 = [(TRISystemInfo *)self aneVersion];
  [v4 encodeObject:v10 forKey:@"aneVersion"];

  v11 = [(TRISystemInfo *)self enabledInputModeIdentifiers];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  [v4 encodeObject:v13 forKey:@"enabledInputModeIdentifiers"];

  [v4 encodeBool:-[TRISystemInfo logUserSettingsRegionCode](self forKey:{"logUserSettingsRegionCode"), @"logUserSettingsRegionCode"}];
  [v4 encodeBool:-[TRISystemInfo logUserSettingsLanguageCode](self forKey:{"logUserSettingsLanguageCode"), @"logUserSettingsLanguageCode"}];
  [v4 encodeBool:-[TRISystemInfo logUserKeyboardEnabledInputMode](self forKey:{"logUserKeyboardEnabledInputMode"), @"logUserKeyboardEnabledInputMode"}];
  [v4 encodeBool:-[TRISystemInfo isAutomatedTestDevice](self forKey:{"isAutomatedTestDevice"), @"isAutomatedTestDevice"}];
  v14 = [(TRISystemInfo *)self siriDeviceAggregationIdRotationDate];
  [v4 encodeObject:v14 forKey:@"siriDeviceAggregationIdRotationDate"];

  v15 = [(TRISystemInfo *)self iCloudIdentifier];
  [v4 encodeObject:v15 forKey:@"cloudIdentifier"];

  [v4 encodeInteger:-[TRISystemInfo appleIntelligenceState](self forKey:{"appleIntelligenceState"), @"appleIntelligenceState"}];
  v16 = [(TRISystemInfo *)self mapsBucketId];
  [v4 encodeObject:v16 forKey:@"mapsBucketId"];
}

- (BOOL)save
{
  v3 = [objc_opt_class() _persistentSystemInfoPath];
  LOBYTE(self) = [(TRISystemInfo *)self saveToFile:v3];

  return self;
}

- (BOOL)saveToFile:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v20];
  v6 = v20;
  if (!v5)
  {
    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v6;
      v13 = "failed to encode system info -- %@";
      v14 = v12;
      v15 = 12;
      goto LABEL_8;
    }

LABEL_12:

    v10 = 0;
    goto LABEL_13;
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = v6;
  v8 = [v7 triCreateDirectoryForPath:v4 isDirectory:0 error:&v19];
  v9 = v19;

  if (!v8)
  {
    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = v4;
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "failed to create directory for path %@ -- %@", buf, 0x16u);
    }

    v6 = v9;
    goto LABEL_12;
  }

  v18 = v9;
  v10 = 1;
  v11 = [v5 writeToFile:v4 options:1 error:&v18];
  v6 = v18;

  if ((v11 & 1) == 0)
  {
    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = v4;
      v23 = 2112;
      v24 = v6;
      v13 = "failed to write system info to path %@ -- %@";
      v14 = v12;
      v15 = 22;
LABEL_8:
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)externalParamManager
{
  if (qword_2815977D8 != -1)
  {
    dispatch_once(&qword_2815977D8, &__block_literal_global_16);
  }

  v3 = qword_2815977D0;

  return v3;
}

void __37__TRISystemInfo_externalParamManager__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(TRIExternalParameterManager);
  v2 = qword_2815977D0;
  qword_2815977D0 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)_getSiriDeviceAggregationIdRotationDate
{
  v2 = [(TRISystemInfo *)self externalParamManager];
  v3 = [v2 siriDeviceAggregationIdRotationDate];

  return v3;
}

+ (int64_t)_appleIntelligenceState:(id)a3
{
  v5 = a3;
  v3 = [v5 appleIntelligenceState];

  return v3;
}

+ (BOOL)_sysIsEnrolledInBetaProgram
{
  v2 = [a1 _isSeedBuild];
  v3 = TRILogCategory_ClientFramework();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v9 = 0;
      v5 = "RC_SEED_BUILD is true. Considering device as enrolled in beta program";
      v6 = &v9;
LABEL_6:
      _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    v8 = 0;
    v5 = "RC_SEED_BUILD is false. Not considering device as enrolled in beta program";
    v6 = &v8;
    goto LABEL_6;
  }

  return v2;
}

+ (id)_sysEnabledInputModeIdentifiers
{
  v2 = objc_autoreleasePoolPush();
  if (qword_2815977E8 != -1)
  {
    dispatch_once(&qword_2815977E8, &__block_literal_global_97);
  }

  v3 = qword_2815977E0;
  objc_autoreleasePoolPop(v2);

  return v3;
}

void __48__TRISystemInfo__sysEnabledInputModeIdentifiers__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  gotLoadHelper_x8__OBJC_CLASS___TIInputModeController(v1);
  v3 = *(v2 + 896);
  v4 = objc_opt_new();
  v5 = [v4 enabledInputModeIdentifiers];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__TRISystemInfo__sysEnabledInputModeIdentifiers__block_invoke_2;
  v10[3] = &unk_279DE1310;
  v11 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:v10];
  v8 = [v7 copy];

  v9 = qword_2815977E0;
  qword_2815977E0 = v8;

  objc_autoreleasePoolPop(v0);
}

void __48__TRISystemInfo__sysEnabledInputModeIdentifiers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAC80];
  v4 = a2;
  v5 = [[v3 alloc] initWithString:v4];

  v6 = objc_alloc_init(MEMORY[0x277CCACA8]);
  v8 = v6;
  [v5 scanUpToString:@"@" intoString:&v8];
  v7 = v8;

  [*(a1 + 32) addObject:v7];
}

+ (id)_carrierBundleIdentifier
{
  v2 = +[TRICellularParameterManager sharedInstance];
  v3 = [v2 carrierBundleIdentifier];

  return v3;
}

+ (id)_carrierCountryIsoCode
{
  v2 = +[TRICellularParameterManager sharedInstance];
  v3 = [v2 carrierCountryIsoCode];

  return v3;
}

+ (id)_iCloudIdentifier
{
  v14 = *MEMORY[0x277D85DE8];
  if (_iCloudIdentifier__pasOnceToken13 != -1)
  {
    dispatch_once(&_iCloudIdentifier__pasOnceToken13, &__block_literal_global_107);
  }

  Helper_x8__OBJC_CLASS___ACAccountStore = gotLoadHelper_x8__OBJC_CLASS___ACAccountStore(v2);
  v5 = [*(v4 + 3912) defaultStore];
  v6 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 aa_primaryAppleAccount];
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Updating iCloudID using Alt. DSID of account: %@", &v12, 0xCu);
  }

  v8 = [v5 aa_primaryAppleAccount];
  v9 = [v8 aa_altDSID];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __34__TRISystemInfo__iCloudIdentifier__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  gotLoadHelper_x8__AAErrorDomain(v1);
  objc_storeStrong(&dummyValue, **(v2 + 1720));

  objc_autoreleasePoolPop(v0);
}

+ (BOOL)_isDiagnosticsAndUsageEnabled
{
  v2 = [MEMORY[0x277D36B80] sharedInstance];
  v3 = [v2 optInApple];

  return v3;
}

+ (BOOL)_hasAne
{
  v2 = objc_autoreleasePoolPush();
  if (qword_2815977F0 != -1)
  {
    dispatch_once(&qword_2815977F0, &__block_literal_global_111);
  }

  v3 = _MergedGlobals_35 != 0;
  objc_autoreleasePoolPop(v2);
  return v3;
}

void __24__TRISystemInfo__hasAne__block_invoke()
{
  v1 = objc_autoreleasePoolPush();
  gotLoadHelper_x20__OBJC_CLASS____ANEDeviceInfo(v2);
  v3 = *(v0 + 2400);
  v4 = objc_opt_class();
  if (v4)
  {
    LODWORD(v4) = [*(v0 + 2400) hasANE];
  }

  _MergedGlobals_35 = v4;

  objc_autoreleasePoolPop(v1);
}

+ (id)_aneVersion
{
  v2 = objc_autoreleasePoolPush();
  if (qword_281597800 != -1)
  {
    dispatch_once(&qword_281597800, &__block_literal_global_114);
  }

  v3 = qword_2815977F8;
  objc_autoreleasePoolPop(v2);

  return v3;
}

void __28__TRISystemInfo__aneVersion__block_invoke()
{
  v1 = objc_autoreleasePoolPush();
  gotLoadHelper_x20__OBJC_CLASS____ANEDeviceInfo(v2);
  v3 = *(v0 + 2400);
  v4 = objc_opt_class();
  if (v4)
  {
    v4 = [*(v0 + 2400) aneSubType];
  }

  v5 = qword_2815977F8;
  qword_2815977F8 = v4;

  objc_autoreleasePoolPop(v1);
}

+ (BOOL)_isAutomatedTestDevice
{
  v3 = [MEMORY[0x277D36B80] automatedDeviceGroup];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [a1 _isVirtualMachine];
  }

  return v4;
}

+ (BOOL)_isVirtualMachine
{
  if (qword_281597808 != -1)
  {
    dispatch_once(&qword_281597808, &__block_literal_global_116);
  }

  return dword_2815977CC != 0;
}

void __34__TRISystemInfo__isVirtualMachine__block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v6 = 0;
  v5 = 4;
  v1 = sysctlbyname("kern.hv_vmm_present", &v6, &v5, 0, 0);
  if (v1)
  {
    v2 = v1;
    v3 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v2;
      _os_log_error_impl(&dword_26F567000, v3, OS_LOG_TYPE_ERROR, "Unable to read 'kern.hv_vmm_present' code: %d", buf, 8u);
    }
  }

  dword_2815977CC = v6 != 0;
  objc_autoreleasePoolPop(v0);
  v4 = *MEMORY[0x277D85DE8];
}

@end