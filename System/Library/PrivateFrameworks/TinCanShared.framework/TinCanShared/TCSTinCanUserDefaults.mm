@interface TCSTinCanUserDefaults
+ (NSString)allowListKey;
+ (NSString)storeDemoAllowlistKey;
+ (NSString)suggestionExpiryReasonAllowlistedValue;
+ (id)defaults;
- (void)clearUserData;
@end

@implementation TCSTinCanUserDefaults

+ (NSString)allowListKey
{
  if (allowListKey_onceToken != -1)
  {
    +[TCSTinCanUserDefaults allowListKey];
  }

  v3 = allowListKey_TCSDefaultsAllowlistKey;

  return v3;
}

void __37__TCSTinCanUserDefaults_allowListKey__block_invoke()
{
  v2 = [@"tel" mutableCopy];
  [v2 appendString:@"ist"];
  [v2 insertString:@"Whi" atIndex:0];
  v0 = [v2 copy];
  v1 = allowListKey_TCSDefaultsAllowlistKey;
  allowListKey_TCSDefaultsAllowlistKey = v0;
}

+ (NSString)storeDemoAllowlistKey
{
  v2 = [a1 allowListKey];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__TCSTinCanUserDefaults_storeDemoAllowlistKey__block_invoke;
  block[3] = &unk_279DC19E0;
  v9 = v2;
  v3 = storeDemoAllowlistKey_onceToken;
  v4 = v2;
  if (v3 != -1)
  {
    dispatch_once(&storeDemoAllowlistKey_onceToken, block);
  }

  v5 = storeDemoAllowlistKey_TCSDefaultsStoreDemoAllowlistKey;
  v6 = storeDemoAllowlistKey_TCSDefaultsStoreDemoAllowlistKey;

  return v5;
}

void __46__TCSTinCanUserDefaults_storeDemoAllowlistKey__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mutableCopy];
  [v3 insertString:@"StoreDemo" atIndex:0];
  v1 = [v3 copy];
  v2 = storeDemoAllowlistKey_TCSDefaultsStoreDemoAllowlistKey;
  storeDemoAllowlistKey_TCSDefaultsStoreDemoAllowlistKey = v1;
}

+ (NSString)suggestionExpiryReasonAllowlistedValue
{
  v2 = [a1 allowListKey];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TCSTinCanUserDefaults_suggestionExpiryReasonAllowlistedValue__block_invoke;
  block[3] = &unk_279DC19E0;
  v9 = v2;
  v3 = suggestionExpiryReasonAllowlistedValue_onceToken;
  v4 = v2;
  if (v3 != -1)
  {
    dispatch_once(&suggestionExpiryReasonAllowlistedValue_onceToken, block);
  }

  v5 = suggestionExpiryReasonAllowlistedValue_TCSDefaultsSuggestionExpiryReasonAllowlistedValue;
  v6 = suggestionExpiryReasonAllowlistedValue_TCSDefaultsSuggestionExpiryReasonAllowlistedValue;

  return v5;
}

void __63__TCSTinCanUserDefaults_suggestionExpiryReasonAllowlistedValue__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mutableCopy];
  [v3 appendString:@"ed"];
  v1 = [v3 copy];
  v2 = suggestionExpiryReasonAllowlistedValue_TCSDefaultsSuggestionExpiryReasonAllowlistedValue;
  suggestionExpiryReasonAllowlistedValue_TCSDefaultsSuggestionExpiryReasonAllowlistedValue = v1;
}

+ (id)defaults
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [@"com.apple.tincan" isEqualToString:v4];

  if (v5)
  {
    v6 = [a1 standardUserDefaults];
  }

  else
  {
    v6 = [[a1 alloc] initWithSuiteName:@"com.apple.tincan"];
  }

  v7 = v6;
  if (+[TCSBehavior isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot])
  {
    [v7 _tcsEnsureProtectionClass];
  }

  else
  {
    _TCSInitializeLogging();
    v8 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_26F110000, v8, OS_LOG_TYPE_DEFAULT, "TCSTinCanUserDefaults waiting for first-unlock.", v12, 2u);
    }

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = +[TCSBehavior sharedBehavior];
    [v9 addObserver:v7 selector:sel__tcsHandleDeviceFirstUnlock name:@"TCSFirstUnlockNotification" object:v10];
  }

  return v7;
}

- (void)clearUserData
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TCSTinCanUserDefaults clearUserData]";
  _os_log_error_impl(&dword_26F110000, log, OS_LOG_TYPE_ERROR, "%s: attempt to clear user data before first device unlock.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __38__TCSTinCanUserDefaults_clearUserData__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB58];
  v3 = +[TCSTinCanUserDefaults allowListKey];
  v4 = [v2 setWithObjects:{@"Unavailable", v3, @"Suggestions", @"SuggestionsFirstGenerated", @"SuggestionsPreviouslyGenerated", @"ContactPhotoHashes", 0}];

  _TCSInitializeLogging();
  v5 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F110000, v5, OS_LOG_TYPE_DEFAULT, "Clearing Walkie-Talkie user data from defaults.", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (([@"AppIsInstalled" isEqualToString:v11] & 1) == 0)
        {
          [*(a1 + 32) removeObjectForKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  if (NPSHasCompletedInitialSync())
  {
    [v6 removeObject:@"ContactPhotoHashes"];
    v12 = objc_opt_new();
    [v12 synchronizeUserDefaultsDomain:@"com.apple.tincan" keys:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end