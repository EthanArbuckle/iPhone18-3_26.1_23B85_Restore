@interface POPreferences
+ (BOOL)BOOLValueForKey:(__CFString *)key defaultValue:(BOOL)value;
+ (BOOL)buddyTestMode;
+ (BOOL)forceKerberosTGTExchange;
+ (BOOL)requireRootCAInSystemTrustStore;
+ (BOOL)skipPreMDMDeviceRegistration;
+ (NSNumber)forceExtensionSDKVersion;
+ (id)numberValueForKey:(__CFString *)key defaultValue:(id)value;
@end

@implementation POPreferences

+ (BOOL)BOOLValueForKey:(__CFString *)key defaultValue:(BOOL)value
{
  v6 = *MEMORY[0x277CBF010];
  v7 = CFPreferencesCopyValue(key, @"com.apple.PlatformSSO", *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);
  if (v7 || (v7 = CFPreferencesCopyValue(key, @"com.apple.PlatformSSO", *MEMORY[0x277CBF040], v6)) != 0)
  {
    v8 = v7;
    value = [v7 BOOLValue];
  }

  return value;
}

+ (id)numberValueForKey:(__CFString *)key defaultValue:(id)value
{
  v5 = *MEMORY[0x277CBF020];
  v6 = *MEMORY[0x277CBF010];
  valueCopy = value;
  v8 = CFPreferencesCopyValue(key, @"com.apple.PlatformSSO", v5, v6);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = CFPreferencesCopyValue(key, @"com.apple.PlatformSSO", *MEMORY[0x277CBF040], v6);
  }

  v11 = v10;

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = valueCopy;
  }

  v13 = v12;

  return v12;
}

+ (BOOL)requireRootCAInSystemTrustStore
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__POPreferences_requireRootCAInSystemTrustStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (requireRootCAInSystemTrustStore_onceToken != -1)
  {
    dispatch_once(&requireRootCAInSystemTrustStore_onceToken, block);
  }

  return requireRootCAInSystemTrustStore_requireRootCAInSystemTrustStore;
}

void __48__POPreferences_requireRootCAInSystemTrustStore__block_invoke(uint64_t a1)
{
  if (AppSSOCoreLibraryCore() && ![getSOUtilsClass() isInternalBuild])
  {
    v3 = 1;
  }

  else
  {
    v2 = *MEMORY[0x277CBF030];
    CFPreferencesSynchronize(@"com.apple.PlatformSSO", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
    CFPreferencesSynchronize(@"com.apple.PlatformSSO", *MEMORY[0x277CBF040], v2);
    v3 = [*(a1 + 32) BOOLValueForKey:@"RequireRootCAInSystemTrustStore" defaultValue:1];
  }

  requireRootCAInSystemTrustStore_requireRootCAInSystemTrustStore = v3;
  v4 = PO_LOG_POPreferences();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __48__POPreferences_requireRootCAInSystemTrustStore__block_invoke_cold_1();
  }
}

+ (BOOL)forceKerberosTGTExchange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__POPreferences_forceKerberosTGTExchange__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (forceKerberosTGTExchange_onceToken != -1)
  {
    dispatch_once(&forceKerberosTGTExchange_onceToken, block);
  }

  return forceKerberosTGTExchange_forceKerberosTGTExchange;
}

void __41__POPreferences_forceKerberosTGTExchange__block_invoke(uint64_t a1)
{
  v2 = [getSOUtilsClass() isInternalBuild];
  if (v2)
  {
    CFPreferencesSynchronize(@"com.apple.PlatformSSO", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
    LOBYTE(v2) = [*(a1 + 32) BOOLValueForKey:@"ForceKerberosTGTExchange" defaultValue:0];
  }

  forceKerberosTGTExchange_forceKerberosTGTExchange = v2;
  v3 = PO_LOG_POPreferences();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __41__POPreferences_forceKerberosTGTExchange__block_invoke_cold_1();
  }
}

+ (NSNumber)forceExtensionSDKVersion
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__POPreferences_forceExtensionSDKVersion__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (forceExtensionSDKVersion_onceToken != -1)
  {
    dispatch_once(&forceExtensionSDKVersion_onceToken, block);
  }

  v2 = forceExtensionSDKVersion_forceExtensionSDKVersion;

  return v2;
}

void __41__POPreferences_forceExtensionSDKVersion__block_invoke(uint64_t a1)
{
  if ([getSOUtilsClass() isInternalBuild])
  {
    CFPreferencesSynchronize(@"com.apple.PlatformSSO", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
    v2 = [*(a1 + 32) numberValueForKey:@"ForceExtensionSDKVersion" defaultValue:0];
  }

  else
  {
    v2 = 0;
  }

  v3 = forceExtensionSDKVersion_forceExtensionSDKVersion;
  forceExtensionSDKVersion_forceExtensionSDKVersion = v2;

  v4 = PO_LOG_POPreferences();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __41__POPreferences_forceExtensionSDKVersion__block_invoke_cold_1();
  }
}

+ (BOOL)skipPreMDMDeviceRegistration
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__POPreferences_skipPreMDMDeviceRegistration__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (skipPreMDMDeviceRegistration_onceToken != -1)
  {
    dispatch_once(&skipPreMDMDeviceRegistration_onceToken, block);
  }

  return skipPreMDMDeviceRegistration_skipPreMDMDeviceRegistration;
}

void __45__POPreferences_skipPreMDMDeviceRegistration__block_invoke(uint64_t a1)
{
  if ([getSOUtilsClass() isInternalBuild])
  {
    CFPreferencesSynchronize(@"com.apple.PlatformSSO", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
    skipPreMDMDeviceRegistration_skipPreMDMDeviceRegistration = [*(a1 + 32) BOOLValueForKey:@"skipPreMDMDeviceRegistration" defaultValue:0];
    v2 = PO_LOG_POPreferences();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __45__POPreferences_skipPreMDMDeviceRegistration__block_invoke_cold_1();
    }
  }

  else
  {
    skipPreMDMDeviceRegistration_skipPreMDMDeviceRegistration = 0;
  }
}

+ (BOOL)buddyTestMode
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__POPreferences_buddyTestMode__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (buddyTestMode_onceToken != -1)
  {
    dispatch_once(&buddyTestMode_onceToken, block);
  }

  return buddyTestMode_buddyTestMode;
}

void __30__POPreferences_buddyTestMode__block_invoke(uint64_t a1)
{
  if ([getSOUtilsClass() isInternalBuild])
  {
    CFPreferencesSynchronize(@"com.apple.PlatformSSO", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
    buddyTestMode_buddyTestMode = [*(a1 + 32) BOOLValueForKey:@"BuddyTestMode" defaultValue:0];
    v2 = PO_LOG_POPreferences();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __30__POPreferences_buddyTestMode__block_invoke_cold_1();
    }
  }

  else
  {
    buddyTestMode_buddyTestMode = 0;
  }
}

void __48__POPreferences_requireRootCAInSystemTrustStore__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_6(&dword_25E8B1000, v0, v1, "requireRootCAInSystemTrustStore=%{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __41__POPreferences_forceKerberosTGTExchange__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_6(&dword_25E8B1000, v0, v1, "forceKerberosTGTExchange=%{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __41__POPreferences_forceExtensionSDKVersion__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_6(&dword_25E8B1000, v0, v1, "forceExtensionSDKVersion=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __45__POPreferences_skipPreMDMDeviceRegistration__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_6(&dword_25E8B1000, v0, v1, "skipPreMDMDeviceRegistration=%{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __30__POPreferences_buddyTestMode__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_6(&dword_25E8B1000, v0, v1, "buddyTestMode=%{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end