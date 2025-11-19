@interface NSUserDefaults(SafariCoreExtras)
+ (id)_safari_browserDefaults;
+ (id)as_developerDefaults;
+ (id)pm_defaults;
+ (id)safari_browserDefaults;
+ (id)safari_browserSharedDefaults;
+ (id)safari_cloudBookmarksDefaults;
+ (id)safari_standardUserDefaultsWithOptimizedKeyValueObserving;
- (WBSUserDefaultObservation)safari_observeValueForKey:()SafariCoreExtras onQueue:notifyForInitialValue:handler:;
- (WBSUserDefaultObservation)safari_observeValuesForKeys:()SafariCoreExtras onQueue:notifyForInitialValue:handler:;
- (double)safari_doubleForKey:()SafariCoreExtras defaultValue:;
- (id)safari_dateForKey:()SafariCoreExtras;
- (id)safari_numberForKey:()SafariCoreExtras;
- (uint64_t)safari_BOOLForKey:()SafariCoreExtras defaultValue:;
- (uint64_t)safari_enableAdvancedPrivacyProtections:()SafariCoreExtras;
- (uint64_t)safari_integerForKey:()SafariCoreExtras defaultValue:;
- (uint64_t)safari_toggleBoolAndNotifyForKey:()SafariCoreExtras;
- (uint64_t)safari_toggleBoolForKey:()SafariCoreExtras;
- (void)safari_addStringValue:()SafariCoreExtras toArrayWithKey:;
- (void)safari_incrementNumberForKey:()SafariCoreExtras;
- (void)safari_modifyDictionaryForKey:()SafariCoreExtras block:;
- (void)safari_removeObjectsForKeysWithPrefix:()SafariCoreExtras;
- (void)safari_removeStringValue:()SafariCoreExtras fromArrayWithKey:;
- (void)safari_setBool:()SafariCoreExtras andNotifyForKey:;
- (void)safari_setBool:()SafariCoreExtras forKey:andNotifyWithUserInfo:;
- (void)safari_setInteger:()SafariCoreExtras andNotifyForKey:;
- (void)safari_setObject:()SafariCoreExtras andNotifyForKey:;
- (void)safari_stringForKey:()SafariCoreExtras defaultValue:;
@end

@implementation NSUserDefaults(SafariCoreExtras)

+ (id)safari_browserDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__NSUserDefaults_SafariCoreExtras__safari_browserDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (safari_browserDefaults_onceToken != -1)
  {
    dispatch_once(&safari_browserDefaults_onceToken, block);
  }

  v1 = safari_browserDefaults_userDefaults;

  return v1;
}

+ (id)_safari_browserDefaults
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.mobilesafari"];

  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
LABEL_6:
    v5 = v3;
    goto LABEL_8;
  }

  getpid();
  v4 = sandbox_container_path_for_pid();
  if (([v0 safari_isPasswordsAppBundle] & 1) == 0 && !v4)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobilesafari"];
    goto LABEL_6;
  }

  WBSSetUpAccessToAppDataContainerWithIdentifier(@"com.apple.mobilesafari");
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 safari_mobileSafariContainerDirectoryURL];

  v5 = [objc_alloc(MEMORY[0x1E695E000]) _initWithSuiteName:@"com.apple.mobilesafari" container:v7];
LABEL_8:

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)safari_browserSharedDefaults
{
  if (safari_browserSharedDefaults_onceToken != -1)
  {
    +[NSUserDefaults(SafariCoreExtras) safari_browserSharedDefaults];
  }

  v1 = safari_browserSharedDefaults_safariSharedDefaults;

  return v1;
}

+ (id)pm_defaults
{
  if (pm_defaults_onceToken != -1)
  {
    +[NSUserDefaults(SafariCoreExtras) pm_defaults];
  }

  v1 = pm_defaults_userDefaults;

  return v1;
}

+ (id)safari_standardUserDefaultsWithOptimizedKeyValueObserving
{
  if (safari_standardUserDefaultsWithOptimizedKeyValueObserving_onceToken != -1)
  {
    +[NSUserDefaults(SafariCoreExtras) safari_standardUserDefaultsWithOptimizedKeyValueObserving];
  }

  v1 = safari_standardUserDefaultsWithOptimizedKeyValueObserving_userDefaults;

  return v1;
}

- (id)safari_numberForKey:()SafariCoreExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)safari_incrementNumberForKey:()SafariCoreExtras
{
  v4 = a3;
  [a1 setInteger:objc_msgSend(a1 forKey:{"integerForKey:", v4) + 1, v4}];
}

- (id)safari_dateForKey:()SafariCoreExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (double)safari_doubleForKey:()SafariCoreExtras defaultValue:
{
  v3 = [a1 safari_numberForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    a2 = v5;
  }

  return a2;
}

- (uint64_t)safari_integerForKey:()SafariCoreExtras defaultValue:
{
  v6 = a3;
  v7 = [a1 objectForKey:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a4 = [a1 integerForKey:v6];
  }

  return a4;
}

- (uint64_t)safari_toggleBoolForKey:()SafariCoreExtras
{
  v4 = a3;
  v5 = [a1 BOOLForKey:v4];
  [a1 setBool:v5 ^ 1u forKey:v4];

  return v5 ^ 1u;
}

+ (id)as_developerDefaults
{
  if (as_developerDefaults_onceToken != -1)
  {
    +[NSUserDefaults(SafariCoreExtras) as_developerDefaults];
  }

  v1 = as_developerDefaults_userDefaults;

  return v1;
}

+ (id)safari_cloudBookmarksDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__NSUserDefaults_SafariCoreExtras__safari_cloudBookmarksDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (safari_cloudBookmarksDefaults_onceToken != -1)
  {
    dispatch_once(&safari_cloudBookmarksDefaults_onceToken, block);
  }

  v1 = safari_cloudBookmarksDefaults_defaults;

  return v1;
}

- (void)safari_setInteger:()SafariCoreExtras andNotifyForKey:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  [a1 setInteger:a3 forKey:v6];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = [objc_opt_class() safari_notificationNameForUserDefaultsKey:v6];
  v12 = v6;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v13[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  [v7 postNotificationName:v8 object:a1 userInfo:v10];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)safari_setBool:()SafariCoreExtras andNotifyForKey:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  [a1 setBool:a3 forKey:v6];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = [objc_opt_class() safari_notificationNameForUserDefaultsKey:v6];
  v12 = v6;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v13[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  [v7 postNotificationName:v8 object:a1 userInfo:v10];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)safari_setBool:()SafariCoreExtras forKey:andNotifyWithUserInfo:
{
  v8 = a5;
  v9 = a4;
  [a1 setBool:a3 forKey:v9];
  v13 = [v8 mutableCopy];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [v13 setObject:v10 forKeyedSubscript:v9];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = [objc_opt_class() safari_notificationNameForUserDefaultsKey:v9];

  [v11 postNotificationName:v12 object:a1 userInfo:v13];
}

- (void)safari_setObject:()SafariCoreExtras andNotifyForKey:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  [a1 setObject:v7 forKey:v6];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = [objc_opt_class() safari_notificationNameForUserDefaultsKey:v6];
  v12 = v6;
  v13[0] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  [v8 postNotificationName:v9 object:a1 userInfo:v10];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)safari_modifyDictionaryForKey:()SafariCoreExtras block:
{
  v6 = a4;
  v7 = a3;
  v13 = [a1 dictionaryForKey:v7];
  v8 = [v13 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
  }

  v11 = v10;

  v6[2](v6, v11);
  v12 = [v11 copy];
  [a1 setObject:v12 forKey:v7];
}

- (uint64_t)safari_toggleBoolAndNotifyForKey:()SafariCoreExtras
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 safari_toggleBoolForKey:v4];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = [objc_opt_class() safari_notificationNameForUserDefaultsKey:v4];
  v12 = v4;
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  [v6 postNotificationName:v7 object:a1 userInfo:v9];
  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (uint64_t)safari_BOOLForKey:()SafariCoreExtras defaultValue:
{
  v6 = a3;
  v7 = [a1 objectForKey:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a4 = [a1 BOOLForKey:v6];
  }

  return a4;
}

- (void)safari_stringForKey:()SafariCoreExtras defaultValue:
{
  v6 = a4;
  v7 = [a1 stringForKey:a3];
  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v8;
}

- (WBSUserDefaultObservation)safari_observeValueForKey:()SafariCoreExtras onQueue:notifyForInitialValue:handler:
{
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [WBSUserDefaultObservation alloc];
  v18[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

  v15 = [(WBSUserDefaultObservation *)v13 initWithUserDefaults:a1 keys:v14 queue:v11 notifyForInitialValue:a5 handler:v10];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (WBSUserDefaultObservation)safari_observeValuesForKeys:()SafariCoreExtras onQueue:notifyForInitialValue:handler:
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[WBSUserDefaultObservation alloc] initWithUserDefaults:a1 keys:v12 queue:v11 notifyForInitialValue:a5 handler:v10];

  return v13;
}

- (uint64_t)safari_enableAdvancedPrivacyProtections:()SafariCoreExtras
{
  result = [a1 BOOLForKey:@"EnableEnhancedPrivacyInPrivateBrowsing"];
  if (result && (a3 & 1) == 0)
  {

    return [a1 BOOLForKey:@"EnableEnhancedPrivacyInRegularBrowsing"];
  }

  return result;
}

- (void)safari_addStringValue:()SafariCoreExtras toArrayWithKey:
{
  v5 = MEMORY[0x1E695E000];
  v6 = a4;
  v7 = a3;
  v14 = [v5 safari_browserDefaults];
  v8 = MEMORY[0x1E695DFA8];
  v9 = [v14 arrayForKey:v6];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = [v8 setWithArray:v11];

  [v12 addObject:v7];
  v13 = [v12 allObjects];
  [v14 setValue:v13 forKey:v6];
}

- (void)safari_removeStringValue:()SafariCoreExtras fromArrayWithKey:
{
  v14 = a4;
  v5 = MEMORY[0x1E695E000];
  v6 = a3;
  v7 = [v5 safari_browserDefaults];
  v8 = MEMORY[0x1E695DFA8];
  v9 = [v7 arrayForKey:v14];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = [v8 setWithArray:v11];

  [v12 removeObject:v6];
  if ([v12 count])
  {
    v13 = [v12 allObjects];
    [v7 setValue:v13 forKey:v14];
  }

  else
  {
    [v7 removeObjectForKey:v14];
  }
}

- (void)safari_removeObjectsForKeysWithPrefix:()SafariCoreExtras
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a1 dictionaryRepresentation];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 hasPrefix:v4])
        {
          [a1 removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end