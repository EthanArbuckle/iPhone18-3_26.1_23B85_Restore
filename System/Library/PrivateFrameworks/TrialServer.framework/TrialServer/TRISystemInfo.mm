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
+ (id)createSystemInfoWithFactorProvider:(id)provider;
+ (id)info;
+ (id)loadSystemInfo;
+ (id)systemInfoFromFile:(id)file;
+ (int64_t)_appleIntelligenceState:(id)state;
- (BOOL)save;
- (BOOL)saveToFile:(id)file;
- (TRISystemInfo)initWithCoder:(id)coder;
- (id)_getSiriDeviceAggregationIdRotationDate;
- (id)externalParamManager;
- (id)initFromSystemWithFactorProvider:(id)provider;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRISystemInfo

+ (id)_persistentSystemInfoPath
{
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  systemDataFile = [mEMORY[0x277D737E0] systemDataFile];

  return systemDataFile;
}

+ (id)info
{
  loadSystemInfo = [self loadSystemInfo];
  if (!loadSystemInfo)
  {
    if (([MEMORY[0x277D737A8] hostingProcessIsTriald] & 1) != 0 || objc_msgSend(MEMORY[0x277D737A8], "hostingProcessIsTrialdSystem"))
    {
      loadSystemInfo = [self createSystemInfoWithFactorProvider:0];
    }

    else
    {
      loadSystemInfo = 0;
    }
  }

  return loadSystemInfo;
}

+ (id)loadSystemInfo
{
  _persistentSystemInfoPath = [self _persistentSystemInfoPath];
  v4 = [self systemInfoFromFile:_persistentSystemInfoPath];

  return v4;
}

+ (id)systemInfoFromFile:(id)file
{
  v17 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:fileCopy])
  {
    v12 = 0;
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:fileCopy options:2 error:&v12];
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
        v14 = fileCopy;
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

+ (id)createSystemInfoWithFactorProvider:(id)provider
{
  providerCopy = provider;
  v4 = [[TRISystemInfo alloc] initFromSystemWithFactorProvider:providerCopy];

  return v4;
}

- (id)initFromSystemWithFactorProvider:(id)provider
{
  v20.receiver = self;
  v20.super_class = TRISystemInfo;
  v3 = [(TRISystemInfo *)&v20 init];
  if (v3)
  {
    v4 = objc_alloc_init(TRIXPCCovariateFetcher);
    v3->_isEnrolledInBetaProgram = [objc_opt_class() _sysIsEnrolledInBetaProgram];
    _sysEnabledInputModeIdentifiers = [objc_opt_class() _sysEnabledInputModeIdentifiers];
    enabledInputModeIdentifiers = v3->_enabledInputModeIdentifiers;
    v3->_enabledInputModeIdentifiers = _sysEnabledInputModeIdentifiers;

    _carrierBundleIdentifier = [objc_opt_class() _carrierBundleIdentifier];
    carrierBundleIdentifier = v3->_carrierBundleIdentifier;
    v3->_carrierBundleIdentifier = _carrierBundleIdentifier;

    _carrierCountryIsoCode = [objc_opt_class() _carrierCountryIsoCode];
    carrierCountryIsoCode = v3->_carrierCountryIsoCode;
    v3->_carrierCountryIsoCode = _carrierCountryIsoCode;

    _iCloudIdentifier = [objc_opt_class() _iCloudIdentifier];
    iCloudIdentifier = v3->_iCloudIdentifier;
    v3->_iCloudIdentifier = _iCloudIdentifier;

    v3->_isDiagnosticsAndUsageEnabled = [objc_opt_class() _isDiagnosticsAndUsageEnabled];
    v3->_hasAne = [objc_opt_class() _hasAne];
    _aneVersion = [objc_opt_class() _aneVersion];
    aneVersion = v3->_aneVersion;
    v3->_aneVersion = _aneVersion;

    v3->_isAutomatedTestDevice = [objc_opt_class() _isAutomatedTestDevice];
    _getSiriDeviceAggregationIdRotationDate = [(TRISystemInfo *)v3 _getSiriDeviceAggregationIdRotationDate];
    siriDeviceAggregationIdRotationDate = v3->_siriDeviceAggregationIdRotationDate;
    v3->_siriDeviceAggregationIdRotationDate = _getSiriDeviceAggregationIdRotationDate;

    v3->_appleIntelligenceState = [objc_opt_class() _appleIntelligenceState:v4];
    v17 = [objc_opt_class() _mapsBucketId:v4];
    mapsBucketId = v3->_mapsBucketId;
    v3->_mapsBucketId = v17;
  }

  return v3;
}

- (TRISystemInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = TRISystemInfo;
  v5 = [(TRISystemInfo *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isBetaUser"];
    v5->_isEnrolledInBetaProgram = [v6 BOOLValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"carrierBundleIdentifier"];
    carrierBundleIdentifier = v5->_carrierBundleIdentifier;
    v5->_carrierBundleIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"carrierCountryIsoCode"];
    carrierCountryIsoCode = v5->_carrierCountryIsoCode;
    v5->_carrierCountryIsoCode = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudIdentifier"];
    iCloudIdentifier = v5->_iCloudIdentifier;
    v5->_iCloudIdentifier = v11;

    v5->_isDiagnosticsAndUsageEnabled = [coderCopy decodeBoolForKey:@"isDiagnosticsAndUsageEnabled"];
    v5->_hasAne = [coderCopy decodeBoolForKey:@"hasAne"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aneVersion"];
    aneVersion = v5->_aneVersion;
    v5->_aneVersion = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"enabledInputModeIdentifiers"];
    enabledInputModeIdentifiers = v5->_enabledInputModeIdentifiers;
    v5->_enabledInputModeIdentifiers = v18;

    v20 = [coderCopy containsValueForKey:@"logUserSettingsRegionCode"];
    if (v20)
    {
      LOBYTE(v20) = [coderCopy decodeBoolForKey:@"logUserSettingsRegionCode"];
    }

    v5->_logUserSettingsRegionCode = v20;
    v21 = [coderCopy containsValueForKey:@"logUserSettingsLanguageCode"];
    if (v21)
    {
      LOBYTE(v21) = [coderCopy decodeBoolForKey:@"logUserSettingsLanguageCode"];
    }

    v5->_logUserSettingsLanguageCode = v21;
    v22 = [coderCopy containsValueForKey:@"logUserKeyboardEnabledInputMode"];
    if (v22)
    {
      LOBYTE(v22) = [coderCopy decodeBoolForKey:@"logUserKeyboardEnabledInputMode"];
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

    v5->_isAutomatedTestDevice = [coderCopy decodeBoolForKey:@"isAutomatedTestDevice"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"siriDeviceAggregationIdRotationDate"];
    siriDeviceAggregationIdRotationDate = v5->_siriDeviceAggregationIdRotationDate;
    v5->_siriDeviceAggregationIdRotationDate = v25;

    v5->_appleIntelligenceState = [coderCopy decodeIntegerForKey:@"appleIntelligenceState"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapsBucketId"];
    mapsBucketId = v5->_mapsBucketId;
    v5->_mapsBucketId = v27;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  enabledInputModeIdentifiers = [(TRISystemInfo *)self enabledInputModeIdentifiers];

  if (!enabledInputModeIdentifiers)
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "encodeWithCoder: enabledInputModeIdentifiers is nil", v17, 2u);
    }
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[TRISystemInfo isEnrolledInBetaProgram](self, "isEnrolledInBetaProgram")}];
  [coderCopy encodeObject:v7 forKey:@"isBetaUser"];

  carrierBundleIdentifier = [(TRISystemInfo *)self carrierBundleIdentifier];
  [coderCopy encodeObject:carrierBundleIdentifier forKey:@"carrierBundleIdentifier"];

  carrierCountryIsoCode = [(TRISystemInfo *)self carrierCountryIsoCode];
  [coderCopy encodeObject:carrierCountryIsoCode forKey:@"carrierCountryIsoCode"];

  [coderCopy encodeBool:-[TRISystemInfo isDiagnosticsAndUsageEnabled](self forKey:{"isDiagnosticsAndUsageEnabled"), @"isDiagnosticsAndUsageEnabled"}];
  [coderCopy encodeBool:-[TRISystemInfo hasAne](self forKey:{"hasAne"), @"hasAne"}];
  aneVersion = [(TRISystemInfo *)self aneVersion];
  [coderCopy encodeObject:aneVersion forKey:@"aneVersion"];

  enabledInputModeIdentifiers2 = [(TRISystemInfo *)self enabledInputModeIdentifiers];
  v12 = enabledInputModeIdentifiers2;
  if (enabledInputModeIdentifiers2)
  {
    v13 = enabledInputModeIdentifiers2;
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  [coderCopy encodeObject:v13 forKey:@"enabledInputModeIdentifiers"];

  [coderCopy encodeBool:-[TRISystemInfo logUserSettingsRegionCode](self forKey:{"logUserSettingsRegionCode"), @"logUserSettingsRegionCode"}];
  [coderCopy encodeBool:-[TRISystemInfo logUserSettingsLanguageCode](self forKey:{"logUserSettingsLanguageCode"), @"logUserSettingsLanguageCode"}];
  [coderCopy encodeBool:-[TRISystemInfo logUserKeyboardEnabledInputMode](self forKey:{"logUserKeyboardEnabledInputMode"), @"logUserKeyboardEnabledInputMode"}];
  [coderCopy encodeBool:-[TRISystemInfo isAutomatedTestDevice](self forKey:{"isAutomatedTestDevice"), @"isAutomatedTestDevice"}];
  siriDeviceAggregationIdRotationDate = [(TRISystemInfo *)self siriDeviceAggregationIdRotationDate];
  [coderCopy encodeObject:siriDeviceAggregationIdRotationDate forKey:@"siriDeviceAggregationIdRotationDate"];

  iCloudIdentifier = [(TRISystemInfo *)self iCloudIdentifier];
  [coderCopy encodeObject:iCloudIdentifier forKey:@"cloudIdentifier"];

  [coderCopy encodeInteger:-[TRISystemInfo appleIntelligenceState](self forKey:{"appleIntelligenceState"), @"appleIntelligenceState"}];
  mapsBucketId = [(TRISystemInfo *)self mapsBucketId];
  [coderCopy encodeObject:mapsBucketId forKey:@"mapsBucketId"];
}

- (BOOL)save
{
  _persistentSystemInfoPath = [objc_opt_class() _persistentSystemInfoPath];
  LOBYTE(self) = [(TRISystemInfo *)self saveToFile:_persistentSystemInfoPath];

  return self;
}

- (BOOL)saveToFile:(id)file
{
  v25 = *MEMORY[0x277D85DE8];
  fileCopy = file;
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

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v19 = v6;
  v8 = [defaultManager triCreateDirectoryForPath:fileCopy isDirectory:0 error:&v19];
  v9 = v19;

  if (!v8)
  {
    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = fileCopy;
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "failed to create directory for path %@ -- %@", buf, 0x16u);
    }

    v6 = v9;
    goto LABEL_12;
  }

  v18 = v9;
  v10 = 1;
  v11 = [v5 writeToFile:fileCopy options:1 error:&v18];
  v6 = v18;

  if ((v11 & 1) == 0)
  {
    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = fileCopy;
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
  externalParamManager = [(TRISystemInfo *)self externalParamManager];
  siriDeviceAggregationIdRotationDate = [externalParamManager siriDeviceAggregationIdRotationDate];

  return siriDeviceAggregationIdRotationDate;
}

+ (int64_t)_appleIntelligenceState:(id)state
{
  stateCopy = state;
  appleIntelligenceState = [stateCopy appleIntelligenceState];

  return appleIntelligenceState;
}

+ (BOOL)_sysIsEnrolledInBetaProgram
{
  _isSeedBuild = [self _isSeedBuild];
  v3 = TRILogCategory_ClientFramework();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (_isSeedBuild)
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

  return _isSeedBuild;
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
  carrierBundleIdentifier = [v2 carrierBundleIdentifier];

  return carrierBundleIdentifier;
}

+ (id)_carrierCountryIsoCode
{
  v2 = +[TRICellularParameterManager sharedInstance];
  carrierCountryIsoCode = [v2 carrierCountryIsoCode];

  return carrierCountryIsoCode;
}

+ (id)_iCloudIdentifier
{
  v14 = *MEMORY[0x277D85DE8];
  if (_iCloudIdentifier__pasOnceToken13 != -1)
  {
    dispatch_once(&_iCloudIdentifier__pasOnceToken13, &__block_literal_global_107);
  }

  Helper_x8__OBJC_CLASS___ACAccountStore = gotLoadHelper_x8__OBJC_CLASS___ACAccountStore(v2);
  defaultStore = [*(v4 + 3912) defaultStore];
  v6 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
    v12 = 138412290;
    v13 = aa_primaryAppleAccount;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Updating iCloudID using Alt. DSID of account: %@", &v12, 0xCu);
  }

  aa_primaryAppleAccount2 = [defaultStore aa_primaryAppleAccount];
  aa_altDSID = [aa_primaryAppleAccount2 aa_altDSID];

  v10 = *MEMORY[0x277D85DE8];

  return aa_altDSID;
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
  mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
  optInApple = [mEMORY[0x277D36B80] optInApple];

  return optInApple;
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
  automatedDeviceGroup = [MEMORY[0x277D36B80] automatedDeviceGroup];
  if (automatedDeviceGroup)
  {
    _isVirtualMachine = 1;
  }

  else
  {
    _isVirtualMachine = [self _isVirtualMachine];
  }

  return _isVirtualMachine;
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