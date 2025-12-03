@interface TPSCommonDefines
+ (BOOL)callerIsTipsdWithSource:(id)source;
+ (BOOL)hardwareChanged;
+ (BOOL)isAppRestrictedWithBundleIdentifier:(id)identifier;
+ (BOOL)isAppValidWithBundleIdentifier:(id)identifier;
+ (BOOL)isCellularChinaSKUDevice;
+ (BOOL)isChecklistCollectionWithIdentifier:(id)identifier;
+ (BOOL)isMacUI;
+ (BOOL)isPadUI;
+ (BOOL)isPhoneUI;
+ (BOOL)isRecordValid:(id)valid;
+ (BOOL)isSeniorUser;
+ (BOOL)isVisionUI;
+ (BOOL)isWatchUI;
+ (BOOL)supportsEntitlement:(id)entitlement;
+ (BOOL)supportsOpenSensitiveURL;
+ (id)_tipStatusArchivalURL;
+ (id)deviceClass;
+ (id)deviceFamily;
+ (id)deviceGuideIdentifier;
+ (id)deviceMarketingName;
+ (id)deviceName;
+ (id)deviceSymbol;
+ (id)mainBundleIdentifier;
+ (id)osBuild;
+ (id)productVersion;
+ (id)sharedInstance;
+ (id)tipsCoreFrameworkBundle;
- (BOOL)hasLocaleChanged;
- (NSDate)lastMajorVersionUpdateDate;
- (NSMutableDictionary)collectionStatusMap;
- (NSString)userLanguage;
- (TPSCommonDefines)init;
- (id)appBundleIDForInstalledAppWithIdentifier:(id)identifier;
- (id)archivedTipStatuses;
- (id)collectionIdentifierForCurrentUserType;
- (id)collectionIdentifierToUseForCollectionIdentifiers:(id)identifiers;
- (id)collectionStatusForCollectionIdentifier:(id)identifier;
- (id)dateForCollectionIdentifier:(id)identifier dateType:(unint64_t)type;
- (id)reloadAppGroupDefaults;
- (int64_t)daysSinceLastMajorVersionUpdate;
- (int64_t)userType;
- (void)activatedCollection:(id)collection;
- (void)archivedTipStatuses;
- (void)clearDataCache;
- (void)deleteTipStatusArchivalDirectory;
- (void)featuredCollection:(id)collection;
- (void)notifiedCollection:(id)collection;
- (void)reloadModelInformation;
- (void)resetCollectionStatusMap;
- (void)setUserLanguage:(id)language;
- (void)syncCollectionStatusMap;
- (void)updateCollectionStatus:(unint64_t)status collections:(id)collections;
- (void)viewedCollection:(id)collection;
@end

@implementation TPSCommonDefines

+ (id)sharedInstance
{
  if (sharedInstance_predicate_4 != -1)
  {
    +[TPSCommonDefines sharedInstance];
  }

  v3 = sharedInstance_gTPSCommonDefines;

  return v3;
}

uint64_t __34__TPSCommonDefines_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(TPSCommonDefines);
  v1 = sharedInstance_gTPSCommonDefines;
  sharedInstance_gTPSCommonDefines = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)tipsCoreFrameworkBundle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__TPSCommonDefines_tipsCoreFrameworkBundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (tipsCoreFrameworkBundle_predicate != -1)
  {
    dispatch_once(&tipsCoreFrameworkBundle_predicate, block);
  }

  v2 = tipsCoreFrameworkBundle_gTipsCoreFrameworkBundle;

  return v2;
}

uint64_t __43__TPSCommonDefines_tipsCoreFrameworkBundle__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = tipsCoreFrameworkBundle_gTipsCoreFrameworkBundle;
  tipsCoreFrameworkBundle_gTipsCoreFrameworkBundle = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

+ (BOOL)isPhoneUI
{
  deviceClass = [objc_opt_class() deviceClass];
  v3 = [deviceClass isEqualToString:@"iPhone"];

  return v3;
}

+ (BOOL)isPadUI
{
  deviceClass = [objc_opt_class() deviceClass];
  v3 = [deviceClass isEqualToString:@"iPad"];

  return v3;
}

+ (BOOL)isMacUI
{
  deviceClass = [objc_opt_class() deviceClass];
  v3 = [deviceClass isEqualToString:@"Mac"];

  return v3;
}

+ (BOOL)isVisionUI
{
  deviceClass = [objc_opt_class() deviceClass];
  v3 = [deviceClass isEqualToString:@"apple-vision-pro"];

  return v3;
}

+ (BOOL)isWatchUI
{
  deviceClass = [objc_opt_class() deviceClass];
  v3 = [deviceClass isEqualToString:@"Watch"];

  return v3;
}

+ (BOOL)isCellularChinaSKUDevice
{
  if (isCellularChinaSKUDevice_onceToken != -1)
  {
    +[TPSCommonDefines isCellularChinaSKUDevice];
  }

  return isCellularChinaSKUDevice_deviceIsCellularChinaSKU;
}

uint64_t __44__TPSCommonDefines_isCellularChinaSKUDevice__block_invoke()
{
  result = MGGetBoolAnswer();
  isCellularChinaSKUDevice_deviceIsCellularChinaSKU = result;
  return result;
}

+ (id)osBuild
{
  if (osBuild_onceToken != -1)
  {
    +[TPSCommonDefines osBuild];
  }

  v3 = osBuild_gOSBuild;

  return v3;
}

void __27__TPSCommonDefines_osBuild__block_invoke()
{
  v0 = MGCopyAnswer();
  v2 = v0;
  if (v0)
  {
    v0 = [@"iOS-" stringByAppendingString:v0];
  }

  v1 = osBuild_gOSBuild;
  osBuild_gOSBuild = v0;
}

+ (id)deviceFamily
{
  v2 = MGCopyAnswer();
  v3 = [v2 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F3F2F4B8];

  return v3;
}

+ (id)deviceMarketingName
{
  v2 = MGCopyAnswer();
  v3 = objc_msgSend(v2, "rangeOfString:", @" (");
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v2 substringToIndex:v3];

    v2 = v4;
  }

  return v2;
}

+ (BOOL)hardwareChanged
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = MGCopyAnswer();
  v4 = [v3 hash];
  v5 = [standardUserDefaults objectForKey:@"CurrentProductHash"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (unsignedIntegerValue != v4)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    [standardUserDefaults setObject:v7 forKey:@"CurrentProductHash"];

    [standardUserDefaults synchronize];
  }

  return unsignedIntegerValue != v4;
}

+ (BOOL)callerIsTipsdWithSource:(id)source
{
  sourceCopy = source;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__TPSCommonDefines_callerIsTipsdWithSource___block_invoke;
  v9[3] = &unk_1E8102698;
  v10 = sourceCopy;
  selfCopy = self;
  v5 = callerIsTipsdWithSource__predicate;
  v6 = sourceCopy;
  if (v5 != -1)
  {
    dispatch_once(&callerIsTipsdWithSource__predicate, v9);
  }

  v7 = callerIsTipsdWithSource__gCallerIsTipsd;

  return v7;
}

void __44__TPSCommonDefines_callerIsTipsdWithSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) mainBundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.tipsd"];
  callerIsTipsdWithSource__gCallerIsTipsd = v3;
  v4 = +[TPSLogger default];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __44__TPSCommonDefines_callerIsTipsdWithSource___block_invoke_cold_2(a1, v4);
    }
  }

  else if (v5)
  {
    __44__TPSCommonDefines_callerIsTipsdWithSource___block_invoke_cold_1(a1, v2, v4);
  }
}

+ (BOOL)isSeniorUser
{
  if (isSeniorUser_predicate != -1)
  {
    +[TPSCommonDefines isSeniorUser];
  }

  return isSeniorUser_kIsSeniorUser;
}

void __32__TPSCommonDefines_isSeniorUser__block_invoke()
{
  v1 = [MEMORY[0x1E698DC80] sharedInstance];
  v0 = [v1 primaryAuthKitAccount];
  isSeniorUser_kIsSeniorUser = [v1 userIsSeniorForAccount:v0];
}

+ (BOOL)isChecklistCollectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[TPSCommonDefines checklistCollectionIdentifier];
  v5 = [identifierCopy isEqualToString:v4];

  return v5;
}

+ (id)productVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)deviceClass
{
  if (deviceClass_onceToken != -1)
  {
    +[TPSCommonDefines deviceClass];
  }

  v3 = deviceClass_deviceClass;

  return v3;
}

void __31__TPSCommonDefines_deviceClass__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = deviceClass_deviceClass;
  deviceClass_deviceClass = v0;

  if ([deviceClass_deviceClass isEqualToString:@"RealityDevice"])
  {
    v2 = deviceClass_deviceClass;
    deviceClass_deviceClass = @"apple-vision-pro";
  }
}

+ (id)deviceGuideIdentifier
{
  deviceClass = [self deviceClass];
  lowercaseString = [deviceClass lowercaseString];

  return lowercaseString;
}

+ (id)deviceName
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)deviceSymbol
{
  v3 = MEMORY[0x1E696AD60];
  deviceGuideIdentifier = [self deviceGuideIdentifier];
  v5 = [v3 stringWithString:deviceGuideIdentifier];

  if ([self isPadUI])
  {
    if (([self supportsFaceID] & 1) == 0)
    {
      buttonType = [self buttonType];
      if (buttonType < 2)
      {
        v7 = @".gen1";
LABEL_7:
        [v5 appendString:v7];
        goto LABEL_8;
      }

      if (buttonType == 2)
      {
        v7 = @".gen2";
        goto LABEL_7;
      }
    }

LABEL_8:
    [v5 appendString:@".landscape"];
  }

  return v5;
}

+ (BOOL)supportsOpenSensitiveURL
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__TPSCommonDefines_supportsOpenSensitiveURL__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (supportsOpenSensitiveURL_onceToken != -1)
  {
    dispatch_once(&supportsOpenSensitiveURL_onceToken, block);
  }

  return supportsOpenSensitiveURL_gSupportsSensitiveURL;
}

uint64_t __44__TPSCommonDefines_supportsOpenSensitiveURL__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = [objc_opt_class() supportsEntitlement:@"com.apple.springboard.opensensitiveurl"];
  supportsOpenSensitiveURL_gSupportsSensitiveURL = result;
  return result;
}

+ (BOOL)supportsEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v4 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v4)
  {
    v5 = v4;
    v6 = SecTaskCopyValueForEntitlement(v4, entitlementCopy, 0);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      v9 = v8 == CFBooleanGetTypeID() && CFBooleanGetValue(v7) != 0;
      CFRelease(v7);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TPSCommonDefines)init
{
  v44 = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = TPSCommonDefines;
  v2 = [(TPSCommonDefines *)&v39 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.TipsCore.TPSCommonDefine", v3);
    syncQueue = v2->_syncQueue;
    v2->_syncQueue = v4;

    v2->_tipsAccessAllowed = [objc_opt_class() supportsEntitlement:@"com.apple.private.tips.allow"];
    v2->_maxVersion = +[TPSCommonDefines maxRequestVersion];
    v6 = MGCopyAnswer();
    v7 = [v6 componentsSeparatedByString:@"."];
    firstObject = [v7 firstObject];
    majorVersion = v2->_majorVersion;
    v2->_majorVersion = firstObject;

    if ([(NSString *)v2->_majorVersion intValue]> v2->_maxVersion)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v2->_maxVersion];
      v11 = v2->_majorVersion;
      v2->_majorVersion = v10;
    }

    if (!v2->_tipsAccessAllowed)
    {
      goto LABEL_26;
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.tips"];

    v14 = +[TPSLogger data];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v13;
      _os_log_impl(&dword_1C00A7000, v14, OS_LOG_TYPE_DEFAULT, "App group path %@", buf, 0xCu);
    }

    v15 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"group.com.apple.tips"];
    appGroupDefaults = v2->_appGroupDefaults;
    v2->_appGroupDefaults = v15;

    v17 = [[TPSTipStatusController alloc] initWithAppGroupDefaults:v2->_appGroupDefaults];
    tipStatusController = v2->_tipStatusController;
    v2->_tipStatusController = v17;

    v19 = MGCopyAnswer();
    v20 = [v19 componentsSeparatedByString:@"."];
    firstObject2 = [v20 firstObject];
    integerValue = [firstObject2 integerValue];

    if (integerValue >= v2->_maxVersion)
    {
      maxVersion = v2->_maxVersion;
    }

    else
    {
      maxVersion = integerValue;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    appBundleIDMap = v2->_appBundleIDMap;
    v2->_appBundleIDMap = dictionary;

    [(TPSCommonDefines *)v2 reloadModelInformation];
    v26 = +[TPSDefaultsManager assetRatioIdentifier];
    v27 = v26;
    if (v26)
    {
      integerValue2 = [v26 integerValue];
      if (integerValue2 <= 1)
      {
        v29 = integerValue2;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      if (!MGGetBoolAnswer())
      {
        v2->_assetRatioType = 0;
        goto LABEL_17;
      }

      v29 = 1;
    }

    v2->_assetRatioType = v29;
LABEL_17:
    v30 = [(NSUserDefaults *)v2->_appGroupDefaults integerForKey:@"appGroupLastCleanupMajorVersion"];
    v31 = +[TPSDefaultsManager resetDataCache];
    if (v30 != maxVersion || v31)
    {
      v32 = +[TPSLogger data];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v41 = v30;
        v42 = 2048;
        v43 = maxVersion;
        _os_log_impl(&dword_1C00A7000, v32, OS_LOG_TYPE_DEFAULT, "Clean up app group defaults as major version changed from version %zd to %zd", buf, 0x16u);
      }

      v33 = v2->_appGroupDefaults;
      tps_userLanguageCode = [MEMORY[0x1E695DF58] tps_userLanguageCode];
      [(NSUserDefaults *)v33 setObject:tps_userLanguageCode forKey:@"TPSUserLanguage"];

      v35 = v2->_appGroupDefaults;
      v36 = [MEMORY[0x1E696AD98] numberWithInteger:maxVersion];
      [(NSUserDefaults *)v35 setObject:v36 forKey:@"appGroupLastCleanupMajorVersion"];

      [(NSUserDefaults *)v2->_appGroupDefaults removeObjectForKey:@"collectionStatusMap"];
      [(NSUserDefaults *)v2->_appGroupDefaults removeObjectForKey:@"TPSLaunchedFromWidgetKey"];
      [(NSUserDefaults *)v2->_appGroupDefaults removeObjectForKey:@"TipsUserType"];
      [(NSUserDefaults *)v2->_appGroupDefaults removeObjectForKey:@"TPSWidgetDocument"];
      [(NSUserDefaults *)v2->_appGroupDefaults removeObjectForKey:@"TPSWidgetTip"];
      [(NSUserDefaults *)v2->_appGroupDefaults removeObjectForKey:@"specialTargetCacheMap"];
      [(NSUserDefaults *)v2->_appGroupDefaults removeObjectForKey:@"TPSViewedTipIdentifiers"];
      [(NSUserDefaults *)v2->_appGroupDefaults removeObjectForKey:@"TPSImageCacheIdentifier"];
      [(NSUserDefaults *)v2->_appGroupDefaults removeObjectForKey:@"TPSVideoCacheIdentifier"];
      [(NSUserDefaults *)v2->_appGroupDefaults removeObjectForKey:@"TPSFileCacheIdentifier"];
      [(NSUserDefaults *)v2->_appGroupDefaults removeObjectForKey:@"TPSExperimentCamp"];
      [(NSUserDefaults *)v2->_appGroupDefaults removeObjectForKey:@"TPSValidTipIdentifiers"];
      [(NSUserDefaults *)v2->_appGroupDefaults removeObjectForKey:@"collectionActivationMap"];
      [(NSUserDefaults *)v2->_appGroupDefaults removeObjectForKey:@"specialTargetCache"];
      [(NSUserDefaults *)v2->_appGroupDefaults removeObjectForKey:@"appGroupLastWipeMajorVersion"];
      [(NSUserDefaults *)v2->_appGroupDefaults synchronize];
    }

    else if (![(TPSCommonDefines *)v2 hasLocaleChanged])
    {
      goto LABEL_25;
    }

    [(TPSCommonDefines *)v2 clearDataCache];
LABEL_25:

LABEL_26:
  }

  v37 = *MEMORY[0x1E69E9840];
  return v2;
}

- (BOOL)hasLocaleChanged
{
  v3 = [(NSUserDefaults *)self->_appGroupDefaults objectForKey:@"lastViewedLocale"];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  v6 = [v3 isEqualToString:firstObject];
  if ((v6 & 1) == 0)
  {
    [(NSUserDefaults *)self->_appGroupDefaults setObject:firstObject forKey:@"lastViewedLocale"];
    [(NSUserDefaults *)self->_appGroupDefaults synchronize];
  }

  return v6 ^ 1;
}

- (id)reloadAppGroupDefaults
{
  if (self->_tipsAccessAllowed)
  {
    if (!self->_appGroupDefaults)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v5 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.tips"];

      v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"group.com.apple.tips"];
      appGroupDefaults = self->_appGroupDefaults;
      self->_appGroupDefaults = v6;
    }

    if ([(TPSCommonDefines *)self hasLocaleChanged])
    {
      [(TPSCommonDefines *)self clearDataCache];
    }

    syncQueue = [(TPSCommonDefines *)self syncQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__TPSCommonDefines_reloadAppGroupDefaults__block_invoke;
    block[3] = &unk_1E8101340;
    block[4] = self;
    dispatch_async(syncQueue, block);

    [(TPSTipStatusController *)self->_tipStatusController setAppGroupDefaults:self->_appGroupDefaults];
    v9 = self->_appGroupDefaults;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)userLanguage
{
  userLanguage = self->_userLanguage;
  if (!userLanguage)
  {
    v4 = [(NSUserDefaults *)self->_appGroupDefaults stringForKey:@"TPSUserLanguage"];
    v5 = self->_userLanguage;
    self->_userLanguage = v4;

    userLanguage = self->_userLanguage;
  }

  return userLanguage;
}

- (void)setUserLanguage:(id)language
{
  languageCopy = language;
  if (![(NSString *)self->_userLanguage isEqualToString:?])
  {
    objc_storeStrong(&self->_userLanguage, language);
    [(NSUserDefaults *)self->_appGroupDefaults setObject:self->_userLanguage forKey:@"TPSUserLanguage"];
    [(NSUserDefaults *)self->_appGroupDefaults synchronize];
  }
}

- (void)clearDataCache
{
  +[TPSDataCacheController removeAllDataCache];
  v3 = +[TPSJSONCacheController sharedInstance];
  [v3 removeAllDataCache];

  v4 = +[TPSAssetCacheController sharedInstance];
  [v4 removeAllDataCache];

  [(NSUserDefaults *)self->_appGroupDefaults removeObjectForKey:@"TPSDataCacheIdentifier"];
  [(NSUserDefaults *)self->_appGroupDefaults removeObjectForKey:@"TPSAssetCacheIdentifier"];
  [(NSUserDefaults *)self->_appGroupDefaults removeObjectForKey:@"TPSJSONCacheIdentifier"];
  [(NSUserDefaults *)self->_appGroupDefaults removeObjectForKey:@"TPSStringCacheIdentifier"];
  appGroupDefaults = self->_appGroupDefaults;

  [(NSUserDefaults *)appGroupDefaults synchronize];
}

- (id)collectionIdentifierToUseForCollectionIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v4 = +[TPSCommonDefines softwareWelcomeCollectionIdentifier];
  v5 = +[TPSCommonDefines checklistCollectionIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__TPSCommonDefines_collectionIdentifierToUseForCollectionIdentifiers___block_invoke;
  v11[3] = &unk_1E81026C0;
  v15 = &v17;
  v6 = v4;
  v12 = v6;
  v16 = &v21;
  v7 = v5;
  v13 = v7;
  v8 = identifiersCopy;
  v14 = v8;
  [v8 enumerateObjectsUsingBlock:v11];
  if (*(v18 + 24) == 1)
  {
    objc_storeStrong(v22 + 5, v4);
  }

  v9 = v22[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

uint64_t __70__TPSCommonDefines_collectionIdentifierToUseForCollectionIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) != 0 || (v7 = v4, v4 = [v4 isEqualToString:*(a1 + 32)], v5 = v7, !v4))
  {
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v8 = v5;
      if (![0 isEqualToString:*(a1 + 40)] || (v4 = objc_msgSend(*(a1 + 48), "count"), v5 = v8, v4 <= 1))
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
        v5 = v8;
      }
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (NSMutableDictionary)collectionStatusMap
{
  collectionStatusMap = self->_collectionStatusMap;
  if (!collectionStatusMap)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [v4 setWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
    v9 = [TPSSecureArchivingUtilities unarchivedObjectOfClasses:v8 forKey:@"collectionStatusMap" userDefaults:self->_appGroupDefaults];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = [MEMORY[0x1E695E0F8] mutableCopy];
    }

    v11 = self->_collectionStatusMap;
    self->_collectionStatusMap = v10;

    collectionStatusMap = self->_collectionStatusMap;
  }

  return collectionStatusMap;
}

- (void)notifiedCollection:(id)collection
{
  if (collection)
  {
    canNotify = [(TPSCommonDefines *)self collectionStatusForCollectionIdentifier:?];
    v5 = canNotify;
    if (canNotify)
    {
      v6 = canNotify;
      canNotify = [canNotify canNotify];
      v5 = v6;
      if (canNotify)
      {
        [v6 setCanNotify:0];
        canNotify = [(TPSCommonDefines *)self syncCollectionStatusMap];
        v5 = v6;
      }
    }

    MEMORY[0x1EEE66BB8](canNotify, v5);
  }
}

- (void)featuredCollection:(id)collection
{
  if (collection)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObject:?];
    [(TPSCommonDefines *)self updateCollectionStatus:2 collections:v4];
  }
}

- (void)viewedCollection:(id)collection
{
  if (collection)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObject:?];
    [(TPSCommonDefines *)self updateCollectionStatus:1 collections:v4];
  }
}

- (void)activatedCollection:(id)collection
{
  if (collection)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObject:?];
    [(TPSCommonDefines *)self updateCollectionStatus:0 collections:v4];
  }
}

- (void)reloadModelInformation
{
  v3 = +[TPSDefaultsManager deviceModel];
  v8 = v3;
  if (v3)
  {
    v4 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F3F2F4B8];
    model = self->_model;
    self->_model = v4;

    v3 = v8;
  }

  if (!self->_model)
  {
    v6 = MGCopyAnswer();
    v7 = self->_model;
    self->_model = v6;

    v3 = v8;
  }
}

- (void)updateCollectionStatus:(unint64_t)status collections:(id)collections
{
  v27 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  if (![collectionsCopy count])
  {
    goto LABEL_27;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = collectionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v8)
  {

    goto LABEL_27;
  }

  v9 = v8;
  v20 = collectionsCopy;
  v21 = 0;
  v10 = *v23;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v22 + 1) + 8 * i);
      v13 = [(TPSCommonDefines *)self dateForCollectionIdentifier:v12 dateType:status, v20];
      if (v13)
      {
        date = v13;
        goto LABEL_22;
      }

      v15 = [(TPSCommonDefines *)self collectionStatusForCollectionIdentifier:v12];
      if (v15)
      {
        date = [MEMORY[0x1E695DF00] date];
        if (status == 2)
        {
          featuredDate = [v15 featuredDate];

          if (!featuredDate)
          {
            [v15 setFeaturedDate:date];
            goto LABEL_20;
          }
        }

        else
        {
          if (status != 1)
          {
            if (status)
            {
              goto LABEL_21;
            }

            activatedDate = [v15 activatedDate];

            if (activatedDate)
            {
              goto LABEL_21;
            }

            [v15 setActivatedDate:date];
            goto LABEL_20;
          }

          firstViewedDate = [v15 firstViewedDate];

          if (!firstViewedDate)
          {
            [v15 setFirstViewedDate:date];
LABEL_20:
            v21 = 1;
          }
        }
      }

      else
      {
        date = 0;
      }

LABEL_21:

LABEL_22:
    }

    v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v9);

  collectionsCopy = v20;
  if (v21)
  {
    [(TPSCommonDefines *)self syncCollectionStatusMap];
  }

LABEL_27:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)resetCollectionStatusMap
{
  [(NSUserDefaults *)self->_appGroupDefaults removeObjectForKey:@"collectionStatusMap"];
  appGroupDefaults = self->_appGroupDefaults;

  [(NSUserDefaults *)appGroupDefaults synchronize];
}

- (void)syncCollectionStatusMap
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__3;
  v9 = __Block_byref_object_dispose__3;
  v10 = 0;
  syncQueue = [(TPSCommonDefines *)self syncQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__TPSCommonDefines_syncCollectionStatusMap__block_invoke;
  v4[3] = &unk_1E8101368;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(syncQueue, v4);

  [TPSSecureArchivingUtilities archivedDataWithRootObject:v6[5] forKey:@"collectionStatusMap" userDefaults:self->_appGroupDefaults];
  _Block_object_dispose(&v5, 8);
}

uint64_t __43__TPSCommonDefines_syncCollectionStatusMap__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionStatusMap];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)collectionStatusForCollectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  syncQueue = [(TPSCommonDefines *)self syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__TPSCommonDefines_collectionStatusForCollectionIdentifier___block_invoke;
  block[3] = &unk_1E8101EE0;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(syncQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __60__TPSCommonDefines_collectionStatusForCollectionIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionStatusMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    if ([*(a1 + 40) length])
    {
      v6 = [[TPSCollectionStatus alloc] initWithIdentifier:*(a1 + 40)];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = [*(a1 + 32) syncQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__TPSCommonDefines_collectionStatusForCollectionIdentifier___block_invoke_2;
      block[3] = &unk_1E8102408;
      v10 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v11 = v10;
      v12 = *(a1 + 48);
      v14 = v11;
      v15 = v12;
      dispatch_async(v9, block);
    }
  }
}

void __60__TPSCommonDefines_collectionStatusForCollectionIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(a1 + 32) collectionStatusMap];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (id)dateForCollectionIdentifier:(id)identifier dateType:(unint64_t)type
{
  v5 = [(TPSCommonDefines *)self collectionStatusForCollectionIdentifier:identifier];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_6;
  }

  if (type == 2)
  {
    featuredDate = [v5 featuredDate];
    goto LABEL_9;
  }

  if (type == 1)
  {
    featuredDate = [v5 firstViewedDate];
    goto LABEL_9;
  }

  if (type)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_10;
  }

  featuredDate = [v5 activatedDate];
LABEL_9:
  v8 = featuredDate;
LABEL_10:

  return v8;
}

- (id)appBundleIDForInstalledAppWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  syncQueue = [(TPSCommonDefines *)self syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__TPSCommonDefines_appBundleIDForInstalledAppWithIdentifier___block_invoke;
  block[3] = &unk_1E8101EE0;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(syncQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __61__TPSCommonDefines_appBundleIDForInstalledAppWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40) && ([*(a1 + 40) hasPrefix:@"*"] & 1) == 0 && objc_msgSend(*(a1 + 40), "length"))
  {
    v5 = [*(a1 + 40) hasPrefix:@"com.apple."];
    v6 = *(a1 + 40);
    if (v5)
    {
      v7 = *(*(a1 + 48) + 8);
      v8 = v6;
      v9 = *(v7 + 40);
      *(v7 + 40) = v8;
    }

    else
    {
      v10 = [@"com.apple." stringByAppendingString:v6];
      v11 = *(*(a1 + 48) + 8);
      v9 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    v12 = *(a1 + 32);
    if ([objc_opt_class() isAppValidWithBundleIdentifier:*(*(*(a1 + 48) + 8) + 40)])
    {
      v13 = [*(a1 + 32) syncQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__TPSCommonDefines_appBundleIDForInstalledAppWithIdentifier___block_invoke_2;
      block[3] = &unk_1E8102408;
      v14 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v15 = v14;
      v16 = *(a1 + 48);
      v20 = v15;
      v21 = v16;
      dispatch_async(v13, block);
    }

    else
    {
      v17 = *(*(a1 + 48) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = 0;
    }
  }
}

void __61__TPSCommonDefines_appBundleIDForInstalledAppWithIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(a1 + 32) appBundleIDMap];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (int64_t)userType
{
  if (userType_onceToken != -1)
  {
    [TPSCommonDefines userType];
  }

  return userType_gUserType;
}

void __28__TPSCommonDefines_userType__block_invoke()
{
  v0 = +[TPSUserTypeChecker userTypeOverride];
  if (v0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v1 = +[TPSCommonDefines sharedInstance];
    v2 = [v1 appGroupDefaults];

    v3 = [v2 objectForKey:@"TipsUserType"];
    v4 = v3;
    if (!v3 || (v0 = [v3 integerValue], v0 >= 3))
    {
      v0 = +[TPSUserTypeChecker userType];
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:v0];
      [v2 setObject:v5 forKey:@"TipsUserType"];

      [v2 synchronize];
    }
  }

  userType_gUserType = v0;
}

- (id)collectionIdentifierForCurrentUserType
{
  userType = [(TPSCommonDefines *)self userType];
  if (userType == 2)
  {
    v3 = +[TPSCommonDefines switcherWelcomeCollectionIdentifier];
  }

  else
  {
    if (userType)
    {
      +[TPSCommonDefines softwareWelcomeCollectionIdentifier];
    }

    else
    {
      +[TPSCommonDefines hardwareWelcomeCollectionIdentifier];
    }
    v3 = ;
  }

  return v3;
}

- (NSDate)lastMajorVersionUpdateDate
{
  v3 = +[TPSDefaultsManager lastMajorVersionUpdateDate];
  if (!v3)
  {
    v3 = [(NSUserDefaults *)self->_appGroupDefaults objectForKey:@"TPSLastMajorVersionUpdateDate"];
  }

  return v3;
}

- (int64_t)daysSinceLastMajorVersionUpdate
{
  lastMajorVersionUpdateDate = [(TPSCommonDefines *)self lastMajorVersionUpdateDate];
  if (lastMajorVersionUpdateDate)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    date = [MEMORY[0x1E695DF00] date];
    v5 = [currentCalendar components:16 fromDate:lastMajorVersionUpdateDate toDate:date options:0];

    v6 = [v5 day];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (id)archivedTipStatuses
{
  v37[2] = *MEMORY[0x1E69E9840];
  _tipStatusArchivalURL = [objc_opt_class() _tipStatusArchivalURL];
  if (_tipStatusArchivalURL)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v4 = *MEMORY[0x1E695DB78];
    v37[0] = *MEMORY[0x1E695DC30];
    v37[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v22 = _tipStatusArchivalURL;
    v6 = [defaultManager enumeratorAtURL:_tipStatusArchivalURL includingPropertiesForKeys:v5 options:4 errorHandler:&__block_literal_global_242];

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v27 = 0;
          [v12 getResourceValue:&v27 forKey:v4 error:0];
          v13 = v27;
          if (([v13 BOOLValue] & 1) == 0)
          {
            v26 = v9;
            v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v12 options:1 error:&v26];
            v15 = v26;

            if (v14)
            {
              v16 = MEMORY[0x1E696ACD0];
              v17 = objc_opt_class();
              v25 = v15;
              v18 = [v16 unarchivedObjectOfClass:v17 fromData:v14 error:&v25];
              v9 = v25;

              if (v18)
              {
                [v23 addObject:v18];
              }

              else
              {
                v19 = +[TPSLogger default];
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                {
                  [(TPSCommonDefines *)v34 archivedTipStatuses:v12];
                }
              }
            }

            else
            {
              v18 = +[TPSLogger default];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v33 = v15;
                _os_log_error_impl(&dword_1C00A7000, v18, OS_LOG_TYPE_ERROR, "Failed to unarchive tip status. Error: %@", buf, 0xCu);
              }

              v9 = v15;
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    _tipStatusArchivalURL = v22;
  }

  else
  {
    v23 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v23;
}

uint64_t __39__TPSCommonDefines_archivedTipStatuses__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v5 code] != 260)
  {
    v6 = +[TPSLogger default];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __39__TPSCommonDefines_archivedTipStatuses__block_invoke_cold_1(v4, v5, v6);
    }
  }

  return 1;
}

- (void)deleteTipStatusArchivalDirectory
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_ERROR, "Failed to remove item with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (id)_tipStatusArchivalURL
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.tips"];

  v4 = [v3 URLByAppendingPathComponent:@"Library/Archived" isDirectory:1];

  return v4;
}

+ (id)mainBundleIdentifier
{
  if (mainBundleIdentifier_onceToken != -1)
  {
    +[TPSCommonDefines mainBundleIdentifier];
  }

  v3 = mainBundleIdentifier_gMainBundleIdentifier;

  return v3;
}

void __40__TPSCommonDefines_mainBundleIdentifier__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = v0;
  if (v0)
  {
    v1 = [v0 bundleIdentifier];
  }

  else
  {
    MainBundle = CFBundleGetMainBundle();
    if (!MainBundle)
    {
      goto LABEL_6;
    }

    v1 = CFBundleGetValueForInfoDictionaryKey(MainBundle, *MEMORY[0x1E695E4F0]);
  }

  v3 = mainBundleIdentifier_gMainBundleIdentifier;
  mainBundleIdentifier_gMainBundleIdentifier = v1;

LABEL_6:
}

+ (BOOL)isAppValidWithBundleIdentifier:(id)identifier
{
  v4 = sub_1C014C230();
  v6 = v5;
  v7 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v8 = sub_1C0130D58(v4, v6, 1);
  if (!v8)
  {
    return 0;
  }

  v10 = v8;
  isRecordValid_ = [self isRecordValid_];

  return isRecordValid_;
}

+ (BOOL)isAppRestrictedWithBundleIdentifier:(id)identifier
{
  v3 = sub_1C014C230();
  v5 = v4;
  v6 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v7 = sub_1C0130D58(v3, v5, 1);
  if (!v7)
  {
    return 0;
  }

  v9 = v7;
  applicationState = [v7 applicationState];
  isRestricted = [applicationState isRestricted];

  return isRestricted;
}

+ (BOOL)isRecordValid:(id)valid
{
  validCopy = valid;
  applicationState = [validCopy applicationState];
  if ([applicationState isRestricted])
  {
    isPlaceholder = 0;
  }

  else if ([applicationState isInstalled])
  {
    isPlaceholder = 1;
  }

  else
  {
    isPlaceholder = [applicationState isPlaceholder];
  }

  return isPlaceholder;
}

void __44__TPSCommonDefines_callerIsTipsdWithSource___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1C00A7000, log, OS_LOG_TYPE_DEBUG, "%@: Caller is not tipsd. Caller is: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __44__TPSCommonDefines_callerIsTipsdWithSource___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_DEBUG, "%@: Caller is tipsd.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)archivedTipStatuses
{
  path = [a2 path];
  *self = 138412290;
  *a3 = path;
  _os_log_debug_impl(&dword_1C00A7000, a4, OS_LOG_TYPE_DEBUG, "Skipping unrecognized archive: %@", self, 0xCu);
}

void __39__TPSCommonDefines_archivedTipStatuses__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1C00A7000, log, OS_LOG_TYPE_ERROR, "Error enumerating archived tip status directory. URL: %@ Error: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end