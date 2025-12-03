@interface SpotlightSettingsUtilities
+ (BOOL)isAppWithBundleIDPresent:(id)present;
+ (void)logSearchPreferencesModificationState;
+ (void)updateSearchPreferencesModificationForKeys:(id)keys;
@end

@implementation SpotlightSettingsUtilities

+ (BOOL)isAppWithBundleIDPresent:(id)present
{
  v3 = MEMORY[0x277CC1E70];
  presentCopy = present;
  v9 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:presentCopy allowPlaceholder:1 error:&v9];

  if (v9)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    applicationState = [v5 applicationState];
    if ([applicationState isInstalled])
    {
      v6 = [applicationState isPlaceholder] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

+ (void)logSearchPreferencesModificationState
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = CFPreferencesCopyAppValue(@"SBSearchPreferencesModification", @"com.apple.spotlightui");
  v3 = [v2 mutableCopy];

  v4 = spotlightSettingsLogHandles;
  if (!spotlightSettingsLogHandles)
  {
    SpotlightSettingsInitLogging();
    v4 = spotlightSettingsLogHandles;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_26B81B000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)updateSearchPreferencesModificationForKeys:(id)keys
{
  v24 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v4 = CFPreferencesCopyAppValue(@"SBSearchPreferencesModification", @"com.apple.spotlightui");
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = objc_opt_new();
  }

  v6 = [MEMORY[0x277CBEAA8] now];
  v18 = [v6 description];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleIdentifier = [v7 bundleIdentifier];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = keysCopy;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v12, @"_DATE"];
        [v5 setObject:v18 forKey:v13];

        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v12, @"_SOURCE"];
        [v5 setObject:bundleIdentifier forKey:v14];
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  CFPreferencesSetAppValue(@"SBSearchPreferencesModification", v5, @"com.apple.spotlightui");
  v15 = *MEMORY[0x277D85DE8];
}

@end