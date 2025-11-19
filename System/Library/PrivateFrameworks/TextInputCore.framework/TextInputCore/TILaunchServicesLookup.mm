@interface TILaunchServicesLookup
+ (id)genreIDsForApplicationIdentifier:(id)a3;
+ (id)lookupAppNames;
+ (id)sharedInstance;
+ (void)enumerateInstalledApplicationNames:(id)a3;
- (TILaunchServicesLookup)init;
- (id)appNames;
- (id)tryCache;
- (void)cacheNames:(id)a3;
- (void)dealloc;
- (void)enumerateAppNames:(id)a3;
- (void)handleMemoryPressureLevel:(unint64_t)a3 excessMemoryInBytes:(unint64_t)a4;
- (void)resetCache;
@end

@implementation TILaunchServicesLookup

- (void)handleMemoryPressureLevel:(unint64_t)a3 excessMemoryInBytes:(unint64_t)a4
{
  if (a3 == 3)
  {
    [(TILaunchServicesLookup *)self resetCache:3];
  }
}

- (void)enumerateAppNames:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(TILaunchServicesLookup *)self appNames];
    v15 = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v14 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v9), &v15);
        if (v15)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)appNames
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(TILaunchServicesLookup *)self tryCache];
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[TILaunchServicesLookup appNames]";
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  Requesting installed app names from LaunchServices.", &v7, 0xCu);
    }

    v3 = +[TILaunchServicesLookup lookupAppNames];
    [(TILaunchServicesLookup *)self cacheNames:v3];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [v3 count];
    v7 = 136315394;
    v8 = "[TILaunchServicesLookup appNames]";
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  Got installed app names (count = %lu).", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)resetCache
{
  obj = self;
  objc_sync_enter(obj);
  [(TILaunchServicesLookup *)obj setCache:0];
  [(TILaunchServicesLookup *)obj setLastCacheUpdate:0];
  objc_sync_exit(obj);
}

- (void)cacheNames:(id)a3
{
  obj = self;
  v4 = a3;
  objc_sync_enter(obj);
  [(TILaunchServicesLookup *)obj setCache:v4];

  v5 = [MEMORY[0x277CBEAA8] date];
  [(TILaunchServicesLookup *)obj setLastCacheUpdate:v5];

  objc_sync_exit(obj);
}

- (id)tryCache
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(TILaunchServicesLookup *)v2 cache];
  if (v3 && (v4 = v3, [(TILaunchServicesLookup *)v2 lastCacheUpdate], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [(TILaunchServicesLookup *)v2 lastCacheUpdate];
    v8 = [v7 dateByAddingTimeInterval:1200.0];

    v9 = [v6 earlierDate:v8];

    if (v9 == v6)
    {
      v10 = [(TILaunchServicesLookup *)v2 cache];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(v2);

  return v10;
}

- (void)dealloc
{
  v3 = +[TIKeyboardActivityController sharedController];
  [v3 removeActivityObserver:self];

  v4.receiver = self;
  v4.super_class = TILaunchServicesLookup;
  [(TILaunchServicesLookup *)&v4 dealloc];
}

- (TILaunchServicesLookup)init
{
  v5.receiver = self;
  v5.super_class = TILaunchServicesLookup;
  v2 = [(TILaunchServicesLookup *)&v5 init];
  if (v2)
  {
    v3 = +[TIKeyboardActivityController sharedController];
    [v3 addActivityObserver:v2];
  }

  return v2;
}

+ (id)genreIDsForApplicationIdentifier:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (__disableForTesting)
  {
    v4 = 0;
  }

  else
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2050000000;
    v5 = getLSApplicationProxyClass_softClass_9054;
    v40 = getLSApplicationProxyClass_softClass_9054;
    if (!getLSApplicationProxyClass_softClass_9054)
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __getLSApplicationProxyClass_block_invoke_9055;
      v36[3] = &unk_278733760;
      v36[4] = &v37;
      __getLSApplicationProxyClass_block_invoke_9055(v36);
      v5 = v38[3];
    }

    v6 = v5;
    _Block_object_dispose(&v37, 8);
    v7 = [v5 applicationProxyForIdentifier:v3];
    v8 = [v7 bundleContainerURL];
    v9 = [v8 path];
    v10 = [v9 stringByAppendingPathComponent:@"iTunesMetadata.plist"];

    v11 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v10];
    v12 = [v11 objectForKey:@"subgenres"];
    v13 = [MEMORY[0x277CBEB58] set];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v11;
      v30 = v10;
      v31 = v3;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v28 = v12;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v33;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v33 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v32 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [v19 objectForKey:@"genreId"];
              if ([v20 integerValue] < 7001)
              {
                v21 = v13;
                v22 = v20;
              }

              else
              {
                v21 = v13;
                v22 = &unk_28400BE38;
              }

              [v21 addObject:v22];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v16);
      }

      v3 = v31;
      v11 = v29;
      v10 = v30;
      v12 = v28;
    }

    v23 = [v11 objectForKey:@"genreId"];
    if ([v23 integerValue] < 7001)
    {
      v25 = v13;
      v24 = v23;
    }

    else
    {
      v24 = &unk_28400BE38;
      v25 = v13;
    }

    [v25 addObject:v24];
    if ([v13 count])
    {
      v4 = v13;
    }

    else
    {
      v4 = 0;
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)lookupAppNames
{
  v2 = [MEMORY[0x277CBEB18] array];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = getLSApplicationWorkspaceClass_softClass;
  v14 = getLSApplicationWorkspaceClass_softClass;
  if (!getLSApplicationWorkspaceClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getLSApplicationWorkspaceClass_block_invoke;
    v10[3] = &unk_278733760;
    v10[4] = &v11;
    __getLSApplicationWorkspaceClass_block_invoke(v10);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  v5 = [v3 defaultWorkspace];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__TILaunchServicesLookup_lookupAppNames__block_invoke;
  v8[3] = &unk_278730BC8;
  v6 = v2;
  v9 = v6;
  [v5 enumerateBundlesOfType:1 block:v8];

  return v6;
}

void __40__TILaunchServicesLookup_lookupAppNames__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  if ([*(a1 + 32) count] >= 0x12C)
  {
    *a3 = 1;
    goto LABEL_10;
  }

  v5 = v12;
  v6 = [v5 applicationType];
  if ([v6 isEqualToString:@"Internal"])
  {
    goto LABEL_8;
  }

  v7 = [v5 applicationType];
  if ([v7 isEqualToString:@"Hidden"])
  {
    goto LABEL_7;
  }

  v8 = [v5 appTags];
  if ([v8 containsObject:@"hidden"])
  {

LABEL_7:
    goto LABEL_8;
  }

  v9 = [v5 bundleIdentifier];
  v10 = [v9 isEqualToString:@"com.apple.webapp1"];

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = [v5 objectForInfoDictionaryKey:@"SBIconVisibilityDefaultVisible" ofClass:objc_opt_class()];
  v6 = v11;
  if (!v11 || [v11 BOOLValue])
  {
    v7 = [v5 localizedName];
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
LABEL_10:
}

+ (void)enumerateInstalledApplicationNames:(id)a3
{
  if ((__disableForTesting & 1) == 0)
  {
    v4 = a3;
    v5 = +[TILaunchServicesLookup sharedInstance];
    [v5 enumerateAppNames:v4];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9097 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9097, &__block_literal_global_9098);
  }

  v3 = sharedInstance_instance_9099;

  return v3;
}

uint64_t __40__TILaunchServicesLookup_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(TILaunchServicesLookup);
  v1 = sharedInstance_instance_9099;
  sharedInstance_instance_9099 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end