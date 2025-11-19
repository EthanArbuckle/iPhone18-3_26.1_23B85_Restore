@interface SNLPSSUConfig
+ (BOOL)isInternalInstall;
+ (id)loadAppShortcutAlwaysTriggeredAllowList;
+ (id)loadAppShortcutAlwaysTriggeredAllowListPlist;
+ (id)loadAppShortcutAlwaysTriggeredAllowListUserDefaults;
@end

@implementation SNLPSSUConfig

+ (id)loadAppShortcutAlwaysTriggeredAllowList
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [a1 loadAppShortcutAlwaysTriggeredAllowListPlist];
  [v3 addObjectsFromArray:v4];

  if ([a1 isInternalInstall])
  {
    v5 = [a1 loadAppShortcutAlwaysTriggeredAllowListUserDefaults];
    [v3 addObjectsFromArray:v5];
  }

  return v3;
}

+ (id)loadAppShortcutAlwaysTriggeredAllowListPlist
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v4 = [v3 URLForResource:@"SSUAppShortcutAlwaysTriggeredAllowList" withExtension:@"plist"];

  if (!v4)
  {
    v8 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = @"SSUAppShortcutAlwaysTriggeredAllowList";
      _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_ERROR, "Could not load framework plist: %@. Returning no plist allowlist entries.", buf, 0xCu);
    }

    goto LABEL_21;
  }

  v5 = [a1 loadPlistArrayFromURL:v4];
  if (!v5)
  {
    v15 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = @"SSUAppShortcutAlwaysTriggeredAllowList";
      _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "Could not load array contents of framework plist: %@. Returning no plist allowlist entries.", buf, 0xCu);
    }

    v8 = 0;
LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  v6 = v5;
  v7 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 addObject:v13];
        }

        else
        {
          v14 = SNLPOSLoggerForCategory(8);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v23 = v13;
            v24 = 2112;
            v25 = @"SSUAppShortcutAlwaysTriggeredAllowList";
            _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_ERROR, "Found non-string entry (%@) in framework plist: %@. Skipping.", buf, 0x16u);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v10);
  }

LABEL_22:
  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (BOOL)isInternalInstall
{
  if (isInternalInstall_onceToken != -1)
  {
    dispatch_once(&isInternalInstall_onceToken, &__block_literal_global_2621);
  }

  return isInternalInstall_isInternalBuild;
}

+ (id)loadAppShortcutAlwaysTriggeredAllowListUserDefaults
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.SiriNaturalLanguageParsing"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringArrayForKey:@"SSUAppShortcutAlwaysTriggeredAllowList"];
    if (v4)
    {
      goto LABEL_9;
    }

    v5 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = @"SSUAppShortcutAlwaysTriggeredAllowList";
      v6 = "User defaults string array key not configured: %@. Returning no user defaults.";
LABEL_7:
      _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, v6, &v9, 0xCu);
    }
  }

  else
  {
    v5 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = @"com.apple.SiriNaturalLanguageParsing";
      v6 = "User defaults suite not configured: %@. Returning no user defaults.";
      goto LABEL_7;
    }
  }

  v4 = 0;
LABEL_9:

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __34__SNLPSSUConfig_isInternalInstall__block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  isInternalInstall_isInternalBuild = result;
  return result;
}

@end