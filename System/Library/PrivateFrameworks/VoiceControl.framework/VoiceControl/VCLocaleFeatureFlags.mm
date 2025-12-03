@interface VCLocaleFeatureFlags
+ (void)initialize;
@end

@implementation VCLocaleFeatureFlags

+ (void)initialize
{
  if (objc_opt_class() == self && initialize_onceToken != -1)
  {
    +[VCLocaleFeatureFlags initialize];
  }
}

void __34__VCLocaleFeatureFlags_initialize__block_invoke()
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v1 = objc_opt_new();
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/FeatureFlags/Domain/VoiceControlLocales.plist" isDirectory:0];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v2];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        [v9 cStringUsingEncoding:4];
        if (_os_feature_enabled_impl())
        {
          v10 = v0;
        }

        else
        {
          v10 = v1;
        }

        [v10 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  v11 = [v0 sortedArrayUsingSelector:sel_compare_];
  v12 = sEnabledLocales;
  sEnabledLocales = v11;

  v13 = [v1 sortedArrayUsingSelector:sel_compare_];
  v14 = sDisabledLocales;
  sDisabledLocales = v13;

  v15 = [VCLog logForCategory:@"locale"];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [sEnabledLocales componentsJoinedByString:{@", "}];
    *buf = 138543362;
    v25 = v16;
    _os_log_impl(&dword_2723CB000, v15, OS_LOG_TYPE_INFO, "Locales enabled by feature flags: [%{public}@]", buf, 0xCu);
  }

  v17 = [VCLog logForCategory:@"locale"];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [sDisabledLocales componentsJoinedByString:{@", "}];
    *buf = 138543362;
    v25 = v18;
    _os_log_impl(&dword_2723CB000, v17, OS_LOG_TYPE_INFO, "Locales disabled by feature flags: [%{public}@]", buf, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end