@interface SRResourcesManager
+ (BOOL)parsecEnabled;
+ (id)defaultParameterWithType:(int64_t)type value:(id)value name:(id)name;
+ (id)sharedResourcesManager;
+ (id)trialOverrideList;
+ (id)trialParameterList;
+ (int64_t)parameterTypeFromString:(id)string;
+ (unint64_t)lastLoadedBundleVersion;
+ (void)dumpParameterList:(id)list;
+ (void)fetchOverrideList;
+ (void)fetchParameterList;
+ (void)fetchUserDefaults;
+ (void)initialize;
+ (void)setTrialUpdateHandler;
+ (void)updateDefaultParameter:(id)parameter withValue:(id)value;
- (BOOL)overrideFactor:(id)factor client:(id)client type:(id)type value:(id)value;
- (SRResourcesManager)initWithOptions:(id)options;
- (id)allLoadedAssets;
- (id)assetConfigDump;
- (id)resourcesForClient:(id)client locale:(id)locale options:(id)options;
- (id)resourcesForClient:(id)client options:(id)options;
- (id)trialConfigDump;
- (void)fetchAllParametersForLanguages:(id)languages;
- (void)handleAssetsCommand:(id)command;
- (void)loadAllParameters;
- (void)loadAllParametersForClient:(id)client;
- (void)loadAllParametersForClient:(id)client locale:(id)locale options:(id)options;
- (void)loadAllParametersForClient:(id)client locales:(id)locales options:(id)options;
- (void)loadDataSource:(id)source force:(BOOL)force;
- (void)refreshTrialForClient:(id)client;
@end

@implementation SRResourcesManager

+ (void)initialize
{
  +[SRDefaultsManager sharedDefaultsManager];

  [self setTrialUpdateHandler];
}

+ (void)setTrialUpdateHandler
{
  v2 = sTrialUpdateHandler;
  sTrialUpdateHandler = &__block_literal_global_440;

  [SSTrialManager setTrialUpdateHandler:&__block_literal_global_440];

  +[SSTrialManager setTrialOverridePath];
}

+ (id)sharedResourcesManager
{
  if (sharedResourcesManager_onceToken != -1)
  {
    +[SRResourcesManager sharedResourcesManager];
  }

  v3 = sharedResourcesManager_resourcesManager;

  return v3;
}

uint64_t __44__SRResourcesManager_sharedResourcesManager__block_invoke()
{
  v0 = [SRResourcesManager alloc];
  sharedResourcesManager_resourcesManager = [(SRResourcesManager *)v0 initWithOptions:MEMORY[0x1E695E0F8]];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)fetchParameterList
{
  if (fetchParameterList_trialListOnceToken != -1)
  {
    +[SRResourcesManager fetchParameterList];
  }

  [self fetchUserDefaults];
  if (SRIsAppleInternalInstall())
  {

    [self fetchOverrideList];
  }
}

void __40__SRResourcesManager_fetchParameterList__block_invoke()
{
  v31 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&sTrialParameterListLock);
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = sTrialParameterList;
  sTrialParameterList = v0;

  v2 = +[SRDefaultsManager sharedDefaultsManager];
  v3 = [v2 currentNamespaceDescription];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v18 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v18)
  {
    v17 = *v26;
    do
    {
      v4 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v4;
        v5 = *(*(&v25 + 1) + 8 * v4);
        v6 = [MEMORY[0x1E695DF90] dictionary];
        [sTrialParameterList setObject:v6 forKeyedSubscript:v5];

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v7 = [obj objectForKeyedSubscript:v5];
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
          do
          {
            v11 = 0;
            do
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v21 + 1) + 8 * v11);
              v13 = [[SRTrialParameter alloc] initWithParameter:v12];
              v14 = [sTrialParameterList objectForKeyedSubscript:v5];
              v15 = [v12 name];
              [v14 setObject:v13 forKeyedSubscript:v15];

              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v9);
        }

        v4 = v20 + 1;
      }

      while (v20 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v18);
  }

  os_unfair_lock_unlock(&sTrialParameterListLock);
  v16 = *MEMORY[0x1E69E9840];
}

+ (void)fetchUserDefaults
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SRResourcesManager_fetchUserDefaults__block_invoke;
  v7[3] = &unk_1E7A2B060;
  v8 = v3;
  selfCopy = self;
  v5 = fetchUserDefaults_userListOnceToken;
  v6 = v3;
  if (v5 != -1)
  {
    dispatch_once(&fetchUserDefaults_userListOnceToken, v7);
  }
}

void __39__SRResourcesManager_fetchUserDefaults__block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&sUserDefaultsParameterListLock);
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = sUserDefaultsParameterList;
  sUserDefaultsParameterList = v2;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = [&unk_1F2427B48 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v40;
    do
    {
      v7 = 0;
      do
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(&unk_1F2427B48);
        }

        v8 = *(*(&v39 + 1) + 8 * v7);
        v9 = +[SRDefaultsManager sharedDefaultsManager];
        v10 = [v9 parametersOfNamespaceWithName:v8];

        if (v10)
        {
          v11 = [&unk_1F2427B70 objectForKeyedSubscript:v8];
          v12 = [*(a1 + 32) objectForKey:v11];
          if (v12)
          {
            v13 = [v10 allValues];
            v14 = [v13 firstObject];

            v15 = [*(a1 + 40) defaultParameterWithType:objc_msgSend(v14 value:"type") name:{v12, v8}];
            [sUserDefaultsParameterList setObject:v15 forKeyedSubscript:v8];
          }
        }

        else
        {
          v11 = SRLogCategoryTrial();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v45 = v8;
            _os_log_debug_impl(&dword_1AE58E000, v11, OS_LOG_TYPE_DEBUG, "User default is not set for parameter %@", buf, 0xCu);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [&unk_1F2427B48 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v5);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = [&unk_1F2427B70 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v16)
  {
    v18 = v16;
    v19 = *v36;
    *&v17 = 138412290;
    v33 = v17;
    v20 = &unk_1F2427B70;
    do
    {
      v21 = 0;
      v34 = v18;
      do
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v20);
        }

        v22 = *(*(&v35 + 1) + 8 * v21);
        v23 = +[SRDefaultsManager sharedDefaultsManager];
        v24 = [v23 parametersOfNamespaceWithName:v22];

        if (v24)
        {
          v25 = [v20 objectForKeyedSubscript:v22];
          v26 = [*(a1 + 32) objectForKey:v25];
          if (v26)
          {
            v27 = [v24 allValues];
            [v27 firstObject];
            v28 = v19;
            v30 = v29 = v20;

            v31 = [*(a1 + 40) defaultParameterWithType:objc_msgSend(v30 value:"type") name:{v26, v22}];
            [sUserDefaultsParameterList setObject:v31 forKeyedSubscript:v22];

            v20 = v29;
            v19 = v28;
            v18 = v34;
          }
        }

        else
        {
          v25 = SRLogCategoryTrial();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = v33;
            v45 = v22;
            _os_log_debug_impl(&dword_1AE58E000, v25, OS_LOG_TYPE_DEBUG, "User default is not set for parameter %@", buf, 0xCu);
          }
        }

        ++v21;
      }

      while (v18 != v21);
      v18 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v18);
  }

  os_unfair_lock_unlock(&sUserDefaultsParameterListLock);
  v32 = *MEMORY[0x1E69E9840];
}

+ (void)fetchOverrideList
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = NSHomeDirectory();
  v4 = [v2 initWithFormat:@"%@/Library/Spotlight/overrides.plist", v3];
  v5 = sOverridesPath;
  sOverridesPath = v4;

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(v3) = [defaultManager fileExistsAtPath:sOverridesPath];

  if (v3)
  {
    v7 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:sOverridesPath];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"UsingOverrides"];

      if (v9)
      {
        v10 = [v8 objectForKeyedSubscript:@"UsingOverrides"];
        sUsingOverrides = [v10 BOOLValue];

        if (sUsingOverrides == 1)
        {
          v11 = SRLogCategoryTrial();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AE58E000, v11, OS_LOG_TYPE_DEFAULT, "Using overrides.plist", buf, 2u);
          }

          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v45 = [&unk_1F2427BC0 countByEnumeratingWithState:&v54 objects:v63 count:16];
          if (v45)
          {
            v43 = *v55;
            do
            {
              v12 = 0;
              do
              {
                if (*v55 != v43)
                {
                  objc_enumerationMutation(&unk_1F2427BC0);
                }

                v46 = v12;
                v13 = *(*(&v54 + 1) + 8 * v12);
                dictionary2 = [MEMORY[0x1E695DF90] dictionary];
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                v49 = v13;
                obj = [v8 objectForKeyedSubscript:v13];
                v14 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
                if (v14)
                {
                  v15 = v14;
                  v16 = *v51;
                  do
                  {
                    for (i = 0; i != v15; ++i)
                    {
                      if (*v51 != v16)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v18 = *(*(&v50 + 1) + 8 * i);
                      if (([v18 isEqualToString:@"SampleOverrideParameter"] & 1) == 0)
                      {
                        v19 = [v8 objectForKeyedSubscript:v49];
                        v20 = [v19 objectForKeyedSubscript:v18];
                        v21 = [v20 objectForKeyedSubscript:@"Type"];

                        if (v21)
                        {
                          if (![v21 isEqualToString:@"Boolean"])
                          {
                            if ([v21 isEqualToString:@"Long"])
                            {
                              v27 = [v8 objectForKeyedSubscript:v49];
                              v28 = [v27 objectForKeyedSubscript:v18];
                              v24 = [v28 objectForKeyedSubscript:@"Value"];

                              if (!v24)
                              {
                                goto LABEL_35;
                              }

                              v25 = +[SRParameter parameterWithLong:name:](SRParameter, "parameterWithLong:name:", [v24 longValue], v18);
                            }

                            else if ([v21 isEqualToString:@"Double"])
                            {
                              v29 = [v8 objectForKeyedSubscript:v49];
                              v30 = [v29 objectForKeyedSubscript:v18];
                              v24 = [v30 objectForKeyedSubscript:@"Value"];

                              if (!v24)
                              {
                                goto LABEL_35;
                              }

                              [v24 doubleValue];
                              v25 = [SRParameter parameterWithDouble:v18 name:?];
                            }

                            else
                            {
                              if (([v21 isEqualToString:@"String"] & 1) == 0 && !objc_msgSend(v21, "isEqualToString:", @"File"))
                              {
                                goto LABEL_42;
                              }

                              v31 = [v8 objectForKeyedSubscript:v49];
                              v32 = [v31 objectForKeyedSubscript:v18];
                              v24 = [v32 objectForKeyedSubscript:@"Value"];

                              if (!v24)
                              {
                                goto LABEL_35;
                              }

                              v25 = [SRParameter parameterWithString:v24 name:v18];
                            }

LABEL_34:
                            v26 = v25;
                            goto LABEL_36;
                          }

                          v22 = [v8 objectForKeyedSubscript:v49];
                          v23 = [v22 objectForKeyedSubscript:v18];
                          v24 = [v23 objectForKeyedSubscript:@"Value"];

                          if (v24)
                          {
                            v25 = +[SRParameter parameterWithBoolean:name:](SRParameter, "parameterWithBoolean:name:", [v24 BOOLValue], v18);
                            goto LABEL_34;
                          }

LABEL_35:
                          v26 = 0;
LABEL_36:

                          if (v26)
                          {
                            [dictionary2 setObject:v26 forKeyedSubscript:v18];
                            v33 = SRLogCategoryLifeCycle();
                            v34 = v33;
                            v35 = fetchOverrideList_index;
                            v36 = ++fetchOverrideList_index;
                            if (v35 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
                            {
                              [v26 typeString];
                              v38 = v37 = v8;
                              *buf = 138412546;
                              v59 = v18;
                              v60 = 2112;
                              v61 = v38;
                              _os_signpost_emit_with_name_impl(&dword_1AE58E000, v34, OS_SIGNPOST_EVENT, v36, "SRResourcesFactorOverride", "Overriding factor %@ of type %@", buf, 0x16u);

                              v8 = v37;
                            }

                            goto LABEL_41;
                          }
                        }

                        else
                        {
                          v26 = SRLogCategoryTrial();
                          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            v59 = v18;
                            _os_log_error_impl(&dword_1AE58E000, v26, OS_LOG_TYPE_ERROR, "Overrides.plist has no type for parameter %@, skipping", buf, 0xCu);
                          }

LABEL_41:
                        }

LABEL_42:

                        continue;
                      }
                    }

                    v15 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
                  }

                  while (v15);
                }

                v39 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary2];
                [dictionary setObject:v39 forKeyedSubscript:v49];

                v12 = v46 + 1;
              }

              while (v46 + 1 != v45);
              v45 = [&unk_1F2427BC0 countByEnumeratingWithState:&v54 objects:v63 count:16];
            }

            while (v45);
          }

          v40 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
          v41 = sOverrideList;
          sOverrideList = v40;
        }
      }
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = SRLogCategoryTrial();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v7;
    _os_log_impl(&dword_1AE58E000, v9, OS_LOG_TYPE_DEFAULT, "Trial update handler called for namespace %@", buf, 0xCu);
  }

  v10 = [v8 getLevelForFactor:@"ExpConfig"];
  if (!v10)
  {
    v19 = 0;
    goto LABEL_22;
  }

  v11 = SRLogCategoryTrial();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_cold_1();
  }

  v12 = [v10 stringValue];
  v13 = v6;
  v14 = MEMORY[0x1E696ACB0];
  v15 = [v12 dataUsingEncoding:4];
  *buf = 0;
  v16 = [v14 JSONObjectWithData:v15 options:0 error:buf];
  v17 = *buf;

  if (!v17)
  {
    v19 = [MEMORY[0x1E695DF90] dictionary];
    if ([v13 isEqualToString:@"Spotlight"] && (objc_msgSend(v16, "objectForKeyedSubscript:", @"spotlightConfigParams"), v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
    {
      v21 = @"spotlightConfigParams";
    }

    else
    {
      if (![v13 isEqualToString:@"Mail"] || (objc_msgSend(v16, "objectForKeyedSubscript:", @"mailConfigParams"), v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
      {
        [v19 setObject:v16 forKeyedSubscript:v13];
LABEL_19:
        v18 = SRLogCategoryTrial();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_cold_3();
        }

        goto LABEL_21;
      }

      v21 = @"mailConfigParams";
    }

    v23 = [v16 objectForKeyedSubscript:v21];
    [v19 setObject:v23 forKeyedSubscript:v13];

    goto LABEL_19;
  }

  v18 = SRLogCategoryTrial();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_cold_2();
  }

  v19 = 0;
LABEL_21:

LABEL_22:
  v24 = [v8 getLevelForFactor:@"factors"];
  if (v24)
  {
    v25 = SRLogCategoryTrial();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_cold_4();
    }

    v26 = [v24 fileValue];
    v27 = [v26 path];

    v28 = +[SRDefaultsManager sharedDefaultsManager];
    [v28 loadFactorsAtPath:v27 namespaceId:v7];
  }

  os_unfair_lock_lock(&sTrialParameterListLock);
  v29 = [sTrialParameterList objectForKeyedSubscript:v7];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447;
  v36[3] = &unk_1E7A2B038;
  v30 = v7;
  v37 = v30;
  v31 = v8;
  v38 = v31;
  v32 = v19;
  v39 = v32;
  [v29 enumerateKeysAndObjectsUsingBlock:v36];

  os_unfair_lock_unlock(&sTrialParameterListLock);
  [v31 setWasLoadedSinceLaunch:1];
  v33 = +[SRDefaultsManager sharedDefaultsManager];
  [v33 didUpdateTrialNamespace:v30];

  v34 = SRLogCategoryTrial();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v30;
    _os_log_impl(&dword_1AE58E000, v34, OS_LOG_TYPE_DEFAULT, "Trial update handler completed for namespace %@", buf, 0xCu);
  }

  v35 = *MEMORY[0x1E69E9840];
}

+ (BOOL)parsecEnabled
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"SBSearchDisabledDomains"];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [v4 containsObject:@"DOMAIN_PARSEC"] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SRLogCategoryTrial();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_1(v5, a1);
  }

  v8 = [v6 parameter];
  [v6 setHasValueFromTrial:0];
  v9 = [*(a1 + 40) getLevelForFactor:v5];
  if (v9)
  {
    v10 = SRLogCategoryTrial();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_2();
    }

    v11 = [v8 type];
    if (v11 <= 1)
    {
      if (!v11)
      {
        [v8 updateWithBoolean:{objc_msgSend(v9, "BOOLeanValue")}];
        goto LABEL_23;
      }

      if (v11 != 1)
      {
LABEL_60:
        v46 = SRLogCategoryTrial();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_5(v8, v46);
        }

        goto LABEL_25;
      }

      [v8 updateWithLong:{objc_msgSend(v9, "longValue")}];
      if ([v5 isEqualToString:@"MaxSectionsBelowSuggestions"])
      {
        v14 = SRLogCategoryTrial();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    else
    {
      if (v11 != 2)
      {
        if (v11 == 3)
        {
          v12 = [v9 stringValue];
          [v8 updateWithString:v12];
          goto LABEL_21;
        }

        if (v11 == 4)
        {
          v12 = [v9 fileValue];
          v13 = [v12 path];
          [v8 updateWithFilePath:v13];

LABEL_21:
          goto LABEL_23;
        }

        goto LABEL_60;
      }

      [v9 doubleValue];
      [v8 updateWithDouble:?];
      if ([v5 isEqualToString:@"LocalSuggestionThreshold"])
      {
        v14 = SRLogCategoryTrial();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
LABEL_18:
          __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_3();
        }

LABEL_19:

        v15 = v6;
        v16 = 0;
LABEL_24:
        [v15 setHasValueFromTrial:v16];
        goto LABEL_25;
      }
    }

LABEL_23:
    v17 = +[SRDefaultsManager sharedDefaultsManager];
    [v17 updateParameter:v5 inNamespace:*(a1 + 32) withValue:v8];

    v15 = v6;
    v16 = 1;
    goto LABEL_24;
  }

LABEL_25:
  v18 = [v8 irisName];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v5;
  }

  v21 = v20;

  v22 = SRLogCategoryTrial();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_6();
  }

  v23 = MEMORY[0x1E696AEC0];
  v24 = [v21 substringToIndex:1];
  v25 = [v24 lowercaseString];
  v26 = [v21 substringFromIndex:1];
  v49 = [v23 stringWithFormat:@"%@%@", v25, v26];

  v27 = *(a1 + 48);
  if (v27)
  {
    v28 = [*(a1 + 40) client];
    v29 = [v27 objectForKeyedSubscript:v28];
    if (v29)
    {
      v30 = *(a1 + 48);
      [*(a1 + 40) client];
      v48 = a1;
      v31 = v21;
      v32 = v8;
      v33 = v5;
      v34 = v9;
      v36 = v35 = v6;
      v37 = [v30 objectForKeyedSubscript:v36];
      v27 = [v37 objectForKeyedSubscript:v49];

      v6 = v35;
      v9 = v34;
      v5 = v33;
      v8 = v32;
      v21 = v31;
      a1 = v48;
    }

    else
    {
      v27 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = [v27 copy];
    if ([v38 count])
    {
      v39 = [v38 componentsJoinedByString:{@", "}];
    }

    else
    {
      v39 = 0;
    }

    v27 = v39;
  }

  if (v27)
  {
    v40 = SRLogCategoryTrial();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_7();
    }

    v41 = [v8 type];
    if (v41 <= 1)
    {
      if (v41)
      {
        if (v41 == 1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v8 updateWithLong:{objc_msgSend(v27, "longValue")}];
            goto LABEL_59;
          }

          v47 = SRLogCategoryTrial();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_74;
          }

          goto LABEL_75;
        }

LABEL_63:
        v47 = SRLogCategoryTrial();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_13(v8, v49, v47);
        }

        goto LABEL_75;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 updateWithBoolean:{objc_msgSend(v27, "BOOLValue")}];
        goto LABEL_59;
      }

      v47 = SRLogCategoryTrial();
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }
    }

    else
    {
      switch(v41)
      {
        case 2:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v27 doubleValue];
            [v8 updateWithDouble:?];
            goto LABEL_59;
          }

          v47 = SRLogCategoryTrial();
          if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }

          break;
        case 3:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v8 updateWithString:v27];
            goto LABEL_59;
          }

          v47 = SRLogCategoryTrial();
          if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }

          break;
        case 4:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v8 updateWithFilePath:v27];
LABEL_59:
            +[SRDefaultsManager sharedDefaultsManager];
            v42 = v5;
            v43 = v9;
            v45 = v44 = v6;
            [v45 updateParameter:v42 inNamespace:*(a1 + 32) withValue:v8];

            v6 = v44;
            v9 = v43;
            v5 = v42;
            [v6 setHasValueFromTrial:1];
            goto LABEL_76;
          }

          v47 = SRLogCategoryTrial();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            break;
          }

LABEL_75:

          goto LABEL_76;
        default:
          goto LABEL_63;
      }
    }

LABEL_74:
    __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_8();
    goto LABEL_75;
  }

LABEL_76:
}

- (SRResourcesManager)initWithOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = SRResourcesManager;
  v3 = [(SRResourcesManager *)&v6 init];
  if (v3)
  {
    +[SRResourcesManager fetchParameterList];
  }

  else
  {
    v4 = SRLogCategoryGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SRResourcesManager initWithOptions:v4];
    }
  }

  return v3;
}

+ (unint64_t)lastLoadedBundleVersion
{
  v2 = +[SRDefaultsManager lastLoadedBundleVersion];
  v3 = [v2 componentsSeparatedByString:@"."];
  v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v4 setNumberStyle:1];
  firstObject = [v3 firstObject];
  v6 = [v4 numberFromString:firstObject];

  unsignedLongLongValue = [v6 unsignedLongLongValue];
  return unsignedLongLongValue;
}

+ (id)defaultParameterWithType:(int64_t)type value:(id)value name:(id)name
{
  valueCopy = value;
  nameCopy = name;
  if (valueCopy)
  {
    if (type <= 1)
    {
      if (type)
      {
        if (type == 1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = +[SRParameter parameterWithLong:name:](SRParameter, "parameterWithLong:name:", [valueCopy longValue], nameCopy);
            goto LABEL_19;
          }
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = +[SRParameter parameterWithBoolean:name:](SRParameter, "parameterWithBoolean:name:", [valueCopy BOOLValue], nameCopy);
          goto LABEL_19;
        }
      }
    }

    else
    {
      switch(type)
      {
        case 2:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [valueCopy doubleValue];
            v9 = [SRParameter parameterWithDouble:nameCopy name:?];
            goto LABEL_19;
          }

          break;
        case 3:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [SRParameter parameterWithString:valueCopy name:nameCopy];
            goto LABEL_19;
          }

          break;
        case 4:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [SRParameter parameterWithFilePath:valueCopy name:nameCopy];
            goto LABEL_19;
          }

          break;
      }
    }
  }

  v9 = [SRParameter nilParameterWithType:type];
LABEL_19:
  v10 = v9;

  return v10;
}

+ (void)updateDefaultParameter:(id)parameter withValue:(id)value
{
  parameterCopy = parameter;
  valueCopy = value;
  type = [parameterCopy type];
  if (valueCopy)
  {
    if (type <= 1)
    {
      if (type)
      {
        if (type == 1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [parameterCopy updateWithLong:{objc_msgSend(valueCopy, "longValue")}];
          }
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [parameterCopy updateWithBoolean:{objc_msgSend(valueCopy, "BOOLValue")}];
        }
      }
    }

    else
    {
      switch(type)
      {
        case 2:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [valueCopy doubleValue];
            [parameterCopy updateWithDouble:?];
          }

          break;
        case 3:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [parameterCopy updateWithString:valueCopy];
          }

          break;
        case 4:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [parameterCopy updateWithFilePath:valueCopy];
          }

          break;
      }
    }
  }
}

+ (int64_t)parameterTypeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Boolean"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"Long"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Double"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"String"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"File"])
  {
    v4 = 4;
  }

  else
  {
    v5 = SRLogCategoryTrial();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[SRResourcesManager parameterTypeFromString:];
    }

    v4 = -1;
  }

  return v4;
}

+ (id)trialOverrideList
{
  v2 = [sOverrideList copy];

  return v2;
}

+ (void)dumpParameterList:(id)list
{
  v39 = *MEMORY[0x1E69E9840];
  listCopy = list;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = SRLogCategoryGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE58E000, v5, OS_LOG_TYPE_DEFAULT, "entry is a dictionary:", buf, 2u);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    allKeys = [listCopy allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v30;
      *&v8 = 138412290;
      v24 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = [listCopy objectForKey:{v12, v24}];
          if (v13)
          {
            v14 = SRLogCategoryGeneral();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v24;
              v34 = v12;
              _os_log_impl(&dword_1AE58E000, v14, OS_LOG_TYPE_DEFAULT, "dumping entry [%@]:", buf, 0xCu);
            }

            [self dumpParameterList:v13];
          }
        }

        v9 = [allKeys countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v9);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = SRLogCategoryGeneral();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE58E000, v15, OS_LOG_TYPE_DEFAULT, "entry is an array:", buf, 2u);
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      allKeys = listCopy;
      v16 = [allKeys countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(allKeys);
            }

            [self dumpParameterList:*(*(&v25 + 1) + 8 * j)];
          }

          v17 = [allKeys countByEnumeratingWithState:&v25 objects:v37 count:16];
        }

        while (v17);
      }
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      allKeys = SRLogCategoryGeneral();
      v21 = os_log_type_enabled(allKeys, OS_LOG_TYPE_DEFAULT);
      if (isKindOfClass)
      {
        if (v21)
        {
          *buf = 138412290;
          v34 = listCopy;
          _os_log_impl(&dword_1AE58E000, allKeys, OS_LOG_TYPE_DEFAULT, "entry is a parameter = (%@)", buf, 0xCu);
        }
      }

      else if (v21)
      {
        *buf = 138412546;
        v34 = objc_opt_class();
        v35 = 2112;
        v36 = listCopy;
        v22 = v34;
        _os_log_impl(&dword_1AE58E000, allKeys, OS_LOG_TYPE_DEFAULT, "entry has type %@ and is (%@)", buf, 0x16u);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)resourcesForClient:(id)client locale:(id)locale options:(id)options
{
  v29 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  localeCopy = locale;
  optionsCopy = options;
  v11 = optionsCopy;
  if (optionsCopy)
  {
    v12 = [optionsCopy objectForKeyedSubscript:@"SRResourcesOwner"];
  }

  else
  {
    v12 = 0;
  }

  v13 = SRLogCategoryLifeCycle();
  v14 = v13;
  v15 = resourcesForClient_locale_options__index;
  v16 = ++resourcesForClient_locale_options__index;
  if (v15 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
  {
    goto LABEL_13;
  }

  uTF8String = [clientCopy UTF8String];
  if (localeCopy)
  {
    localeIdentifier = [localeCopy localeIdentifier];
    uTF8String2 = [localeIdentifier UTF8String];
    if (v12)
    {
LABEL_8:
      uTF8String3 = [v12 UTF8String];
      goto LABEL_11;
    }
  }

  else
  {
    uTF8String2 = "none";
    if (v12)
    {
      goto LABEL_8;
    }
  }

  uTF8String3 = "unknown";
LABEL_11:
  v23 = 136315650;
  v24 = uTF8String;
  v25 = 2080;
  v26 = uTF8String2;
  v27 = 2080;
  v28 = uTF8String3;
  _os_signpost_emit_with_name_impl(&dword_1AE58E000, v14, OS_SIGNPOST_EVENT, v16, "SRResourcesCreate", "client=%s, locale=%s, caller=%s", &v23, 0x20u);
  if (localeCopy)
  {
  }

LABEL_13:

  v20 = [[SRResources alloc] initWithClient:clientCopy locale:localeCopy options:v11];
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)resourcesForClient:(id)client options:(id)options
{
  v6 = MEMORY[0x1E695DF58];
  optionsCopy = options;
  clientCopy = client;
  currentLocale = [v6 currentLocale];
  v10 = [(SRResourcesManager *)self resourcesForClient:clientCopy locale:currentLocale options:optionsCopy];

  return v10;
}

- (void)refreshTrialForClient:(id)client
{
  clientCopy = client;
  if ([clientCopy isEqualToString:@"Spotlight"])
  {
    v3 = +[SSTrialManager sharedSpotlightModelTrialManager];
    v4 = v3;
    if (v3)
    {
      [v3 refreshTrackingId];
    }

    v5 = +[SSTrialManager sharedSpotlightUITrialManager];

    if (v5)
    {
      [v5 refreshTrackingId];
    }

    v6 = +[SSTrialManager sharedSpotlightRankingTrialManager];

    if (v6)
    {
      [v6 refreshTrackingId];
    }

    v7 = +[SSTrialManager sharedSpotlightPolicyTrialManager];

    if (!v7)
    {
      goto LABEL_10;
    }

LABEL_9:
    [v7 refreshTrackingId];
LABEL_10:

    goto LABEL_11;
  }

  if ([clientCopy isEqualToString:@"SpotlightKnowledge"])
  {
    v8 = +[SSTrialManager sharedSpotlightKnowledgeTrialManager];
    goto LABEL_18;
  }

  if ([clientCopy isEqualToString:@"Mail"])
  {
    v8 = +[SSTrialManager sharedSpotlightUITrialManager];
LABEL_18:
    v7 = v8;
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
}

- (void)loadDataSource:(id)source force:(BOOL)force
{
  sourceCopy = source;
  v5 = +[SRDefaultsManager sharedDefaultsManager];
  currentNamespaces = [v5 currentNamespaces];

  if (!currentNamespaces)
  {
    goto LABEL_19;
  }

  v7 = [currentNamespaces objectForKeyedSubscript:sourceCopy];
  v8 = [v7 isEqualToString:@"SPOTLIGHT_BLENDING_MODEL"];

  if (!v8)
  {
    v10 = [currentNamespaces objectForKeyedSubscript:sourceCopy];
    v11 = [v10 isEqualToString:@"SPOTLIGHT_UI"];

    if (v11)
    {
      v9 = +[SSTrialManager sharedSpotlightUITrialManager];
      goto LABEL_8;
    }

    v12 = [currentNamespaces objectForKeyedSubscript:sourceCopy];
    v13 = [v12 isEqualToString:@"SPOTLIGHT_RANKING_RULES"];

    if (v13)
    {
      v9 = +[SSTrialManager sharedSpotlightRankingTrialManager];
      goto LABEL_8;
    }

    v15 = [currentNamespaces objectForKeyedSubscript:sourceCopy];
    v16 = [v15 isEqualToString:@"SPOTLIGHT_RANKING_POLICY"];

    if (v16)
    {
      v17 = +[SSTrialManager sharedSpotlightPolicyTrialManager];
LABEL_16:
      v14 = v17;
      goto LABEL_20;
    }

    v18 = [currentNamespaces objectForKeyedSubscript:sourceCopy];
    v19 = [v18 isEqualToString:@"SPOTLIGHT_KNOWLEDGE_BEHAVIOR"];

    if (v19)
    {
      v17 = +[SSTrialManager sharedSpotlightKnowledgeTrialManager];
      goto LABEL_16;
    }

    v20 = [currentNamespaces objectForKeyedSubscript:sourceCopy];
    v21 = [v20 isEqualToString:@"SPOTLIGHT_MAIL_APP"];

    if (v21)
    {
      v9 = +[SSTrialManager sharedSpotlightMailTrialManager];
      goto LABEL_8;
    }

LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v9 = +[SSTrialManager sharedSpotlightModelTrialManager];
LABEL_8:
  v14 = v9;
  if (v9 && (force || ([v9 wasLoadedSinceLaunch] & 1) == 0))
  {
    [v14 loadWithUpdateHandler:sTrialUpdateHandler];
  }

LABEL_20:
}

- (void)loadAllParametersForClient:(id)client locales:(id)locales options:(id)options
{
  v63 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  localesCopy = locales;
  v9 = [options objectForKey:@"forceLoad"];
  bOOLValue = [v9 BOOLValue];

  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v11 = localesCopy;
  v12 = [v11 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v57;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v57 != v14)
        {
          objc_enumerationMutation(v11);
        }

        localeIdentifier = [*(*(&v56 + 1) + 8 * i) localeIdentifier];
        v17 = normalizedLocaleForIdentifier(localeIdentifier);
        v18 = languageCodeForLocale(v17);
        [v10 addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v13);
  }

  v19 = 0x1E7A2A000uLL;
  v43 = v11;
  if (SRIsRunningInServer() & 1) != 0 || (+[SRDefaultsManager sharedDefaultsManager](SRDefaultsManager, "sharedDefaultsManager"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 hasTestAssets], v20, (v21))
  {
    v22 = +[SRDefaultsManager sharedDefaultsManager];
    v23 = [v22 loadAssetsForLanguage:@"root" reload:0 force:bOOLValue];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v24 = v10;
    v25 = [v24 countByEnumeratingWithState:&v50 objects:v61 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v51;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v51 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v50 + 1) + 8 * j);
          if (([v29 isEqualToString:@"root"] & 1) == 0)
          {
            [*(v19 + 2856) sharedDefaultsManager];
            v31 = v30 = v19;
            v32 = [v31 loadAssetsForLanguage:v29 reload:0 force:bOOLValue];

            v19 = v30;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v50 objects:v61 count:16];
      }

      while (v26);
    }
  }

  else
  {
    [v10 addObject:@"root"];
    v33 = +[SRDefaultsManager sharedDefaultsManager];
    allObjects = [v10 allObjects];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __65__SRResourcesManager_loadAllParametersForClient_locales_options___block_invoke;
    v54[3] = &unk_1E7A2B088;
    v55 = v10;
    [v33 refreshCacheForLanguages:allObjects force:bOOLValue completion:v54];

    v24 = v55;
  }

  sharedDefaultsManager = [*(v19 + 2856) sharedDefaultsManager];
  v36 = [sharedDefaultsManager currentNamespacesForClient:clientCopy];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v37 = v36;
  v38 = [v37 countByEnumeratingWithState:&v46 objects:v60 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v47;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v47 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [(SRResourcesManager *)self loadDataSource:*(*(&v46 + 1) + 8 * k) force:0];
      }

      v39 = [v37 countByEnumeratingWithState:&v46 objects:v60 count:16];
    }

    while (v39);
  }

  v42 = *MEMORY[0x1E69E9840];
}

void __65__SRResourcesManager_loadAllParametersForClient_locales_options___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SRLogCategoryAssets();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__SRResourcesManager_loadAllParametersForClient_locales_options___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1AE58E000, v5, OS_LOG_TYPE_DEFAULT, "Refreshed cache for %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)loadAllParametersForClient:(id)client locale:(id)locale options:(id)options
{
  v15 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  v8 = MEMORY[0x1E695DEC8];
  optionsCopy = options;
  localeCopy2 = locale;
  clientCopy = client;
  v12 = [v8 arrayWithObjects:&localeCopy count:1];

  [(SRResourcesManager *)self loadAllParametersForClient:clientCopy locales:v12 options:optionsCopy, localeCopy, v15];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)loadAllParametersForClient:(id)client
{
  v4 = MEMORY[0x1E695DF58];
  clientCopy = client;
  currentLocale = [v4 currentLocale];
  [(SRResourcesManager *)self loadAllParametersForClient:clientCopy locale:currentLocale options:0];
}

- (void)loadAllParameters
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [&unk_1F2427BC0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(&unk_1F2427BC0);
        }

        [(SRResourcesManager *)self loadAllParametersForClient:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [&unk_1F2427BC0 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllParametersForLanguages:(id)languages
{
  v20 = *MEMORY[0x1E69E9840];
  languagesCopy = languages;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = languagesCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = normalizedLocaleForIdentifier(*(*(&v15 + 1) + 8 * v10));
        v12 = languageCodeForLocale(v11);
        [v5 addObject:{v12, v15}];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [v5 addObject:@"root"];
  v13 = +[SRDefaultsManager sharedDefaultsManager];
  [v13 requestAssetsForLanguages:v5 removeExisting:1 force:0];

  [(SRResourcesManager *)self loadAllParameters];
  v14 = *MEMORY[0x1E69E9840];
}

- (id)allLoadedAssets
{
  v2 = +[SRDefaultsManager sharedDefaultsManager];
  allLoadedAssets = [v2 allLoadedAssets];

  return allLoadedAssets;
}

- (id)assetConfigDump
{
  v2 = +[SRDefaultsManager sharedDefaultsManager];
  assetConfigDump = [v2 assetConfigDump];

  return assetConfigDump;
}

- (id)trialConfigDump
{
  v2 = objc_alloc(MEMORY[0x1E696AD60]);
  v3 = +[SRDefaultsManager sharedDefaultsManager];
  trialConfigDump = [v3 trialConfigDump];
  v5 = [v2 initWithString:trialConfigDump];

  os_unfair_lock_lock(&sTrialParameterListLock);
  [v5 appendFormat:@"\nFactors:\n%@", sTrialParameterList];
  os_unfair_lock_unlock(&sTrialParameterListLock);
  [v5 appendFormat:@"\n\nOverrides:\n%@", sOverrideList];

  return v5;
}

- (BOOL)overrideFactor:(id)factor client:(id)client type:(id)type value:(id)value
{
  v37[1] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  typeCopy = type;
  valueCopy = value;
  v12 = MEMORY[0x1E695DFF8];
  v13 = sOverridesPath;
  factorCopy = factor;
  v15 = [v12 fileURLWithPath:v13];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [defaultManager fileExistsAtPath:sOverridesPath];

  if ((v17 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v19 = sOverridesPath;
    v36 = *MEMORY[0x1E696A3A0];
    v37[0] = *MEMORY[0x1E696A388];
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    [defaultManager2 createFileAtPath:v19 contents:0 attributes:v20];
  }

  v21 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v15];
  v22 = [v21 mutableCopy];

  if (!v22)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v23 = [v22 objectForKeyedSubscript:clientCopy];

  if (!v23)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v22 setObject:v24 forKeyedSubscript:clientCopy];
  }

  v25 = valueCopy;
  if ([typeCopy isEqualToString:@"Boolean"])
  {
    v26 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(v25, "BOOLValue")}];
LABEL_13:
    v27 = v26;

    goto LABEL_14;
  }

  if ([typeCopy isEqualToString:@"Long"])
  {
    v26 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:{objc_msgSend(v25, "integerValue")}];
    goto LABEL_13;
  }

  v27 = v25;
  if ([typeCopy isEqualToString:@"Double"])
  {
    v28 = objc_alloc(MEMORY[0x1E696AD98]);
    [v25 doubleValue];
    v26 = [v28 initWithDouble:?];
    goto LABEL_13;
  }

LABEL_14:
  v34[0] = @"Type";
  v34[1] = @"Value";
  v35[0] = typeCopy;
  v35[1] = v27;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v30 = [v22 objectForKeyedSubscript:clientCopy];
  [v30 setObject:v29 forKeyedSubscript:factorCopy];

  v31 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
  [v22 setObject:v31 forKeyedSubscript:@"UsingOverrides"];

  LOBYTE(v31) = [v22 writeToURL:v15 error:0];
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)handleAssetsCommand:(id)command
{
  v5 = 0;
  [SRXPCListener handleMessage:command error:&v5];
  v3 = v5;
  if (v3)
  {
    v4 = SRLogCategoryAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SRResourcesManager handleAssetsCommand:];
    }
  }
}

+ (id)trialParameterList
{
  os_unfair_lock_lock(&sTrialParameterListLock);
  v2 = [sTrialParameterList copy];
  os_unfair_lock_unlock(&sTrialParameterListLock);

  return v2;
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "Loading IRIS exp config for namespace %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "Error parsing exp config json: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_1AE58E000, v0, v1, "Got %@ exp config %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "Loading monofactor for namespace %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0(&dword_1AE58E000, v3, v4, "Updating parameter %@ for namespace %@");
  v5 = *MEMORY[0x1E69E9840];
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "Parameter %@ has Trial level", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "Ignoring Trial value for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_5(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  [a1 type];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AE58E000, a2, OS_LOG_TYPE_ERROR, "loadDataSource: invalid SRParameter type %ld", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_6()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_1AE58E000, v0, v1, "Parameter %@ has name %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_7()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_1AE58E000, v0, v1, "Parameter %@ has exp config (%@)");
  v2 = *MEMORY[0x1E69E9840];
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_8()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "Error updating exp config %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__SRResourcesManager_setTrialUpdateHandler__block_invoke_447_cold_13(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 type];
  OUTLINED_FUNCTION_0_0();
  v7 = a2;
  _os_log_error_impl(&dword_1AE58E000, a3, OS_LOG_TYPE_ERROR, "loadDataSource: invalid SRParameter type %ld for exp config %@", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)parameterTypeFromString:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "Invalid parameter type string %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __65__SRResourcesManager_loadAllParametersForClient_locales_options___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1AE58E000, log, OS_LOG_TYPE_ERROR, "Error refreshing cache for languages %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)handleAssetsCommand:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "Error handling message: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end