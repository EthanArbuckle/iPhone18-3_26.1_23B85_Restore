@interface SRDefaultsManager
+ (id)defaultProperties;
+ (id)defaultValueWithKey:(id)a3;
+ (id)sharedDefaultsManager;
+ (id)userDefaults;
+ (int64_t)version;
+ (void)removeDefaults;
+ (void)removeKey:(id)a3;
+ (void)setDefaultWithKey:(id)a3 value:(id)a4;
+ (void)setVersionWithValue:(int64_t)a3;
- (BOOL)didFetchForLanguage:(id)a3;
- (SRDefaultsManager)init;
- (id)allLoadedAssets;
- (id)assertionsDump;
- (id)assetConfigDump;
- (id)assetsFromResourcePath:(id)a3 deliveryType:(id)a4 assetType:(id)a5 language:(id)a6 force:(BOOL)a7;
- (id)currentAssetTypes;
- (id)currentNamespaceDescription;
- (id)currentNamespaces;
- (id)currentNamespacesForClient:(id)a3;
- (id)fetchedLanguages;
- (id)loadOTAAssetsForLanguage:(id)a3 updateCache:(BOOL)a4 assetTypes:(id)a5 force:(BOOL)a6;
- (id)parametersOfNamespaceWithName:(id)a3;
- (id)parametersOfNamespaceWithName:(id)a3 client:(id)a4;
- (id)resourceBundle;
- (id)trialConfigDump;
- (void)_loadAssets:(id)a3 shouldUpdate:(BOOL)a4;
- (void)_unloadAssetsForLocale:(id)a3;
- (void)addFetchForLanguage:(id)a3;
- (void)dealloc;
- (void)didUpdateAssetsWithType:(id)a3;
- (void)didUpdateTrialNamespace:(id)a3;
- (void)loadDefaultsFromDefaultAssets:(id)a3;
- (void)loadFactorsAtPath:(id)a3 namespaceId:(id)a4;
- (void)loadSystemAssetsForLanguage:(id)a3 assetTypes:(id)a4;
- (void)loadTestAssetsForLanguage:(id)a3 assetTypes:(id)a4;
- (void)notifyObserversWithLanguage:(id)a3 bundleVersions:(id)a4 reloadFromCache:(BOOL)a5 force:(BOOL)a6;
- (void)refreshCacheForLanguages:(id)a3 force:(BOOL)a4 completion:(id)a5;
- (void)registerDelegate:(id)a3;
- (void)removeFetchForLanguage:(id)a3;
- (void)requestAssetsForLanguages:(id)a3 removeExisting:(BOOL)a4 force:(BOOL)a5;
- (void)requestCatalogUpdate;
- (void)unloadDefaultsForLocale:(id)a3;
- (void)unregisterDelegate:(id)a3;
- (void)updateFetchedLanguages:(id)a3;
- (void)updateParameter:(id)a3 inNamespace:(id)a4 withValue:(id)a5;
@end

@implementation SRDefaultsManager

+ (id)sharedDefaultsManager
{
  if (sharedDefaultsManager_onceToken != -1)
  {
    +[SRDefaultsManager sharedDefaultsManager];
  }

  v3 = sharedDefaultsManager_gDefaultsManager;

  return v3;
}

- (SRDefaultsManager)init
{
  v53 = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = SRDefaultsManager;
  v2 = [(SRDefaultsManager *)&v50 init];
  if (v2)
  {
    v3 = +[SRAssetConfiguration configuration];
    assetConfig = v2->_assetConfig;
    v2->_assetConfig = v3;

    v5 = +[SRTrialConfiguration configuration];
    trialConfig = v2->_trialConfig;
    v2->_trialConfig = v5;

    v7 = +[SRLanguageConfiguration configuration];
    langConfig = v2->_langConfig;
    v2->_langConfig = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assets = v2->_assets;
    v2->_assets = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    parameters = v2->_parameters;
    v2->_parameters = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    fetchedLanguages = v2->_fetchedLanguages;
    v2->_fetchedLanguages = v13;

    v2->_fetchedRoot = 0;
    v15 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegates = v2->_delegates;
    v2->_delegates = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    cachedOTALanguages = v2->_cachedOTALanguages;
    v2->_cachedOTALanguages = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    requestedOTALanguages = v2->_requestedOTALanguages;
    v2->_requestedOTALanguages = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_attr_make_with_qos_class(v21, QOS_CLASS_BACKGROUND, 0);

    v23 = dispatch_queue_create("com.apple.spotlightresources.ddsLoading", v22);
    ddsQueue = v2->_ddsQueue;
    v2->_ddsQueue = v23;

    v25 = dispatch_queue_create("com.apple.spotlightresources.defaultsLoading", v22);
    defaultsQueue = v2->_defaultsQueue;
    v2->_defaultsQueue = v25;

    v27 = dispatch_queue_create("com.apple.spotlightresources.delegates", v22);
    delegatesQueue = v2->_delegatesQueue;
    v2->_delegatesQueue = v27;

    v29 = dispatch_queue_create("com.apple.spotlightresources.notifyDelegates", v22);
    notifyQueue = v2->_notifyQueue;
    v2->_notifyQueue = v29;

    v31 = dispatch_queue_create("com.apple.spotlightresources.notifyDelegatesAsync", v22);
    notifyQueueNonBlocking = v2->_notifyQueueNonBlocking;
    v2->_notifyQueueNonBlocking = v31;

    v33 = [MEMORY[0x1E6999960] sharedInstance];
    [v33 registerDelegate:v2];

    v34 = [SRDefaultsManager defaultValueWithKey:@"IgnoreOTAEmbeddings"];
    v2->_ignoreOTAEmbeddings = [v34 BOOLValue];

    sandboxExtensionHandlers = v2->_sandboxExtensionHandlers;
    v2->_sandboxExtensionHandlers = 0;

    SRIsRunningInServer();
    v36 = [(SRDefaultsManager *)v2 resourceBundle];
    v37 = [v36 pathForResource:@"RequiredAssets_root" ofType:@"bundle"];
    v38 = [MEMORY[0x1E696AC08] defaultManager];
    v39 = [v38 fileExistsAtPath:v37];

    if (v39)
    {
      v40 = SRLogCategoryAssets();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v37 UTF8String];
        *buf = 136315138;
        v52 = v41;
        _os_log_impl(&dword_1AE58E000, v40, OS_LOG_TYPE_DEFAULT, "Loading RequiredAssets_root at path <%s>", buf, 0xCu);
      }

      v42 = [(SRDefaultsManager *)v2 assetsFromResourcePath:v37 deliveryType:@"Required" assetType:0 language:@"root" force:0];
      [(SRDefaultsManager *)v2 loadDefaultsFromDefaultAssets:v42];
      v43 = [(SRAssetConfiguration *)v2->_assetConfig assetTypes];
      v44 = [MEMORY[0x1E6999960] sharedInstance];
      v45 = objc_alloc(MEMORY[0x1E695DFD8]);
      v46 = [v43 allKeys];
      v47 = [v45 initWithArray:v46];
      [v44 setAssetTypesForDelegates:v47];
    }
  }

  v48 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t __42__SRDefaultsManager_sharedDefaultsManager__block_invoke()
{
  sharedDefaultsManager_gDefaultsManager = objc_alloc_init(SRDefaultsManager);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)defaultProperties
{
  v2 = [objc_opt_class() userDefaults];
  v3 = [v2 dictionaryRepresentation];
  v4 = [v3 objectForKey:@"Defaults"];

  return v4;
}

+ (id)userDefaults
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v3 = +[SRDefaultsManager identifier];
  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

- (id)resourceBundle
{
  p_customBundle = &self->_customBundle;
  v3 = self->_customBundle;
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@System/Library/PrivateFrameworks/SpotlightResources.framework", @"/"];
    v3 = [MEMORY[0x1E696AAE8] bundleWithPath:v4];
    if (!v3)
    {
      v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.SpotlightResources"];
    }

    objc_storeStrong(p_customBundle, v3);
  }

  return v3;
}

- (id)currentNamespaceDescription
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [(SRDefaultsManager *)self defaultsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__SRDefaultsManager_currentNamespaceDescription__block_invoke;
  v6[3] = &unk_1E7A2B280;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __48__SRDefaultsManager_currentNamespaceDescription__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 16) namespaceTypes];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v23 = *v31;
    do
    {
      v2 = 0;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v2;
        v3 = *(*(&v30 + 1) + 8 * v2);
        v4 = [v3 namespaceId];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v5 = [v3 parameterNames];
        v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v27;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v27 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v26 + 1) + 8 * i);
              v11 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v4];
              if (v11)
              {
                v12 = v11;
                v13 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v4];
                v14 = [v13 objectForKeyedSubscript:v10];

                if (v14)
                {
                  v15 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v4];
                  v16 = [v15 objectForKeyedSubscript:v10];

                  v17 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v4];

                  if (!v17)
                  {
                    v18 = *(*(*(a1 + 40) + 8) + 40);
                    v19 = [MEMORY[0x1E695DF70] array];
                    [v18 setObject:v19 forKey:v4];
                  }

                  v20 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v4];
                  [v20 addObject:v16];
                }
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v7);
        }

        v2 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)currentAssetTypes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(SRDefaultsManager *)self defaultsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__SRDefaultsManager_currentAssetTypes__block_invoke;
  v6[3] = &unk_1E7A2B258;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)currentNamespaces
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(SRDefaultsManager *)self defaultsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__SRDefaultsManager_currentNamespaces__block_invoke;
  v6[3] = &unk_1E7A2B258;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __38__SRDefaultsManager_currentNamespaces__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) namespaceDescription];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __38__SRDefaultsManager_currentAssetTypes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) assetTypes];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

+ (void)setDefaultWithKey:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v10 = [objc_opt_class() userDefaults];
  v7 = [objc_opt_class() defaultProperties];
  if (v7)
  {
    v8 = [objc_opt_class() defaultProperties];
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v9 setObject:v5 forKey:v6];
  [v10 setObject:v9 forKey:@"Defaults"];
}

+ (id)defaultValueWithKey:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() defaultProperties];
  if (!v4)
  {
    v5 = SRLogCategoryAssets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1AE58E000, v5, OS_LOG_TYPE_INFO, "Defaults are null", v8, 2u);
    }
  }

  v6 = [v4 objectForKey:v3];

  return v6;
}

+ (void)removeKey:(id)a3
{
  v3 = a3;
  v6 = [objc_opt_class() userDefaults];
  v4 = [objc_opt_class() defaultProperties];
  v5 = [v4 mutableCopy];

  [v5 removeObjectForKey:v3];
  [v6 setObject:v5 forKey:@"Defaults"];
}

+ (void)removeDefaults
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = +[SRDefaultsManager identifier];
  [v2 removePersistentDomainForName:v3];

  v4 = MEMORY[0x1E695E000];

  [v4 resetStandardUserDefaults];
}

+ (void)setVersionWithValue:(int64_t)a3
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v4 setDefaultWithKey:@"Version" value:v5];
}

+ (int64_t)version
{
  v2 = [SRDefaultsManager defaultValueWithKey:@"Version"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (void)loadDefaultsFromDefaultAssets:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__0;
  v24[4] = __Block_byref_object_dispose__0;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__0;
  v22[4] = __Block_byref_object_dispose__0;
  v23 = +[SRAssetConfiguration configuration];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__0;
  v20[4] = __Block_byref_object_dispose__0;
  v21 = +[SRTrialConfiguration configuration];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__SRDefaultsManager_loadDefaultsFromDefaultAssets___block_invoke;
  v19[3] = &unk_1E7A2B1E0;
  v19[6] = v22;
  v19[7] = &v32;
  v19[4] = self;
  v19[5] = v20;
  v19[8] = &v26;
  v19[9] = v24;
  [v4 enumerateObjectsUsingBlock:v19];
  if (v33[3])
  {
    v5 = [(SRDefaultsManager *)self defaultsQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SRDefaultsManager_loadDefaultsFromDefaultAssets___block_invoke_418;
    block[3] = &unk_1E7A2B208;
    block[4] = self;
    block[5] = v22;
    block[6] = v20;
    block[7] = v24;
    dispatch_sync(v5, block);

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v27[5];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v36 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 contentType];
          v12 = [v10 pathWithName:@"factors.mdplist"];
          [(SRDefaultsManager *)self loadFactorsAtPath:v12 namespaceId:v11];
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v36 count:16];
      }

      while (v7);
    }
  }

  _Block_object_dispose(v20, 8);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  v13 = *MEMORY[0x1E69E9840];
}

void __51__SRDefaultsManager_loadDefaultsFromDefaultAssets___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v169 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 contentType];
  v8 = [v7 isEqualToString:@"Defaults"];

  if (v8)
  {
    v120 = v6;
    if (SRIsAppleInternalInstall())
    {
      v9 = [v6 pathWithName:@"defaultsTest.plist"];
      v10 = [MEMORY[0x1E696AC08] defaultManager];
      v11 = [v10 fileExistsAtPath:v9];

      if (v11)
      {
        sHasTestAssets = 1;
        if (v9)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }

    v9 = [v6 pathWithName:@"defaults.plist"];
    v23 = [MEMORY[0x1E696AC08] defaultManager];
    v24 = [v23 fileExistsAtPath:v9];

    if ((v24 & 1) == 0)
    {
      v26 = SRLogCategoryAssets();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __51__SRDefaultsManager_loadDefaultsFromDefaultAssets___block_invoke_cold_1();
      }

      goto LABEL_131;
    }

    if (!v9)
    {
      v25 = MEMORY[0x1E695E0F8];
LABEL_22:
      v27 = 0x1E695D000uLL;
      objc_opt_class();
      v119 = v9;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        *(*(a1[7] + 8) + 24) = 0;
        *a4 = 1;
        v107 = v25;
LABEL_125:
        if (sHasTestAssets)
        {
          v108 = @"localesTest.plist";
        }

        else
        {
          v108 = @"locales.plist";
        }

        v109 = [v120 pathWithName:v108];
        [*(a1[4] + 24) setHasTestAssets:sHasTestAssets];
        if (v109)
        {
          [*(a1[4] + 24) loadSupportedLanguages:v109];
        }

LABEL_131:
        v6 = v120;
        goto LABEL_132;
      }

      v118 = v25;
      v28 = [v25 objectForKeyedSubscript:@"DefaultsCompatibilityVersion"];
      if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v28 integerValue] == 3)
      {
        v29 = [v25 objectForKeyedSubscript:@"Clients"];

        if (!v29)
        {
LABEL_118:
          v28 = 0;
          goto LABEL_121;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
          v158 = 0u;
          v159 = 0u;
          v160 = 0u;
          v161 = 0u;
          v126 = [v30 countByEnumeratingWithState:&v158 objects:v168 count:16];
          obj = v30;
          if (v126)
          {
            v31 = 0x1E696A000uLL;
            v125 = *v159;
            v32 = 0x1E695D000;
            v128 = a1;
            do
            {
              for (i = 0; i != v126; ++i)
              {
                if (*v159 != v125)
                {
                  objc_enumerationMutation(obj);
                }

                v34 = *(*(&v158 + 1) + 8 * i);

                v35 = *(v31 + 3776);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v30 = [obj objectForKeyedSubscript:v34];
                  v36 = *(v27 + 3872);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v124 = i;
                    v37 = v30;
                    v38 = [v37 objectForKeyedSubscript:@"Trial"];
                    v30 = v37;
                    v129 = v34;
                    v123 = v38;
                    if (v38)
                    {
                      v39 = v38;
                      v40 = [v38 objectForKeyedSubscript:@"Namespaces"];
                      v30 = v37;
                      if (v40)
                      {
                        v41 = v40;
                        v42 = [v39 objectForKeyedSubscript:@"Namespaces"];
                        v43 = *(v27 + 3872);
                        objc_opt_class();
                        isKindOfClass = objc_opt_isKindOfClass();

                        v30 = v37;
                        if (isKindOfClass)
                        {
                          v44 = [v39 objectForKeyedSubscript:@"Namespaces"];
                          v154 = 0u;
                          v155 = 0u;
                          v156 = 0u;
                          v157 = 0u;
                          v45 = [v44 countByEnumeratingWithState:&v154 objects:v167 count:16];
                          v121 = v37;
                          if (v45)
                          {
                            v46 = v45;
                            v47 = *v155;
                            v139 = v44;
                            do
                            {
                              for (j = 0; j != v46; ++j)
                              {
                                if (*v155 != v47)
                                {
                                  objc_enumerationMutation(v44);
                                }

                                v49 = *(*(&v154 + 1) + 8 * j);

                                v50 = *(v31 + 3776);
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v37 = [v44 objectForKeyedSubscript:v49];
                                  v51 = *(v27 + 3872);
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v52 = v37;
                                    v53 = [v52 objectForKey:@"Namespace"];
                                    if (v53)
                                    {
                                      v54 = v53;
                                      v55 = [v52 objectForKeyedSubscript:@"Namespace"];
                                      objc_opt_class();
                                      v56 = objc_opt_isKindOfClass();

                                      v27 = 0x1E695D000uLL;
                                      if (v56)
                                      {
                                        v57 = [v52 objectForKeyedSubscript:@"Namespace"];
                                        if (v57)
                                        {
                                          v58 = v57;
                                          v165[0] = @"namespaceId";
                                          v165[1] = @"namespaceName";
                                          v166[0] = v49;
                                          v166[1] = v57;
                                          v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v166 forKeys:v165 count:2];
                                          [*(*(v128[5] + 8) + 40) setProperties:v59 client:v129];

                                          v27 = 0x1E695D000;
                                        }
                                      }
                                    }

                                    v31 = 0x1E696A000;
                                    v44 = v139;
                                  }
                                }

                                else
                                {
                                  v37 = v49;
                                }

                                v34 = v129;
                              }

                              v46 = [v44 countByEnumeratingWithState:&v154 objects:v167 count:16];
                            }

                            while (v46);
                          }

                          v30 = 0;
                          a1 = v128;
                          v32 = 0x1E695D000uLL;
                          v37 = v121;
                        }
                      }
                    }

                    v60 = [v37 objectForKeyedSubscript:@"MobileAssets"];
                    if (v60)
                    {
                      v122 = v37;
                      v152 = 0u;
                      v153 = 0u;
                      v150 = 0u;
                      v151 = 0u;
                      v133 = v60;
                      v61 = 0x1E695D000uLL;
                      v131 = [v60 countByEnumeratingWithState:&v150 objects:v164 count:16];
                      if (v131)
                      {
                        v130 = *v151;
                        do
                        {
                          v62 = 0;
                          do
                          {
                            if (*v151 != v130)
                            {
                              v63 = v62;
                              objc_enumerationMutation(v133);
                              v62 = v63;
                            }

                            v134 = v62;
                            v64 = *(*(&v150 + 1) + 8 * v62);

                            v65 = *(v31 + 3776);
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v66 = *(v32 + 3984);
                              v67 = v64;
                              v68 = objc_alloc_init(v66);
                              [v68 setObject:v67 forKey:@"AssetType"];
                              [v68 setObject:v34 forKey:@"Client"];
                              v69 = objc_alloc_init(*(v32 + 3984));
                              v140 = v68;
                              [v68 setObject:v69 forKey:@"DeliveryTypes"];

                              v30 = [v133 objectForKeyedSubscript:v67];
                              v132 = v67;

                              if (v30)
                              {
                                v70 = *(v27 + 3872);
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v71 = [v133 objectForKeyedSubscript:v67];
                                  v72 = [v71 objectForKeyedSubscript:@"MobileAssetPropertiesPath"];

                                  if (v72 && (v73 = *(v31 + 3776), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v149 = 0;
                                    v74 = v72;
                                    v75 = getMobileAssetPropertiesFromPath(v74, &v149);
                                    [v140 setObject:v75 forKey:@"AssetProperties"];
                                    [v140 setObject:v74 forKey:@"ResourcePath"];
                                  }

                                  else
                                  {
                                    v76 = [v133 objectForKeyedSubscript:v132];
                                    v74 = [v76 objectForKeyedSubscript:@"MobileAssetProperties"];

                                    if (v74)
                                    {
                                      v77 = *(v27 + 3872);
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        [v140 setObject:v74 forKey:@"AssetProperties"];
                                      }
                                    }
                                  }

                                  v78 = [v133 objectForKeyedSubscript:v132];
                                  v30 = [v78 objectForKeyedSubscript:@"DeliveryTypes"];

                                  if (v30)
                                  {
                                    v79 = *(v27 + 3872);
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v80 = v30;
                                      v145 = 0u;
                                      v146 = 0u;
                                      v147 = 0u;
                                      v148 = 0u;
                                      v81 = v80;
                                      v137 = [v80 countByEnumeratingWithState:&v145 objects:v163 count:16];
                                      if (v137)
                                      {
                                        v82 = *v146;
                                        v81 = v80;
                                        v135 = *v146;
                                        v136 = v80;
                                        do
                                        {
                                          for (k = 0; k != v137; ++k)
                                          {
                                            if (*v146 != v82)
                                            {
                                              objc_enumerationMutation(v80);
                                            }

                                            v84 = *(*(&v145 + 1) + 8 * k);

                                            if (v84)
                                            {
                                              v85 = *(v31 + 3776);
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v86 = v84;
                                                v87 = [v140 objectForKeyedSubscript:@"DeliveryTypes"];

                                                if (!v87)
                                                {
                                                  v88 = objc_alloc_init(*(v32 + 3984));
                                                  [v140 setObject:v88 forKeyedSubscript:@"DeliveryTypes"];
                                                }

                                                v89 = [v140 objectForKeyedSubscript:@"DeliveryTypes"];
                                                v90 = [v89 objectForKeyedSubscript:v86];

                                                if (!v90)
                                                {
                                                  v91 = objc_alloc_init(*(v61 + 3952));
                                                  v92 = [v140 objectForKeyedSubscript:@"DeliveryTypes"];
                                                  [v92 setObject:v91 forKeyedSubscript:v86];
                                                }

                                                v80 = v136;
                                                v81 = [v136 objectForKeyedSubscript:v86];

                                                if (v81)
                                                {
                                                  v93 = *(v27 + 3872);
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v94 = [v136 objectForKeyedSubscript:v86];
                                                    v95 = [v94 objectForKeyedSubscript:@"ContentTypes"];

                                                    if (v95)
                                                    {
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v96 = v95;
                                                        v141 = 0u;
                                                        v142 = 0u;
                                                        v143 = 0u;
                                                        v144 = 0u;
                                                        v97 = [v96 countByEnumeratingWithState:&v141 objects:v162 count:16];
                                                        v98 = v96;
                                                        if (v97)
                                                        {
                                                          v99 = v97;
                                                          v100 = *v142;
                                                          v98 = v96;
                                                          do
                                                          {
                                                            for (m = 0; m != v99; ++m)
                                                            {
                                                              v102 = v98;
                                                              if (*v142 != v100)
                                                              {
                                                                objc_enumerationMutation(v96);
                                                              }

                                                              v98 = *(*(&v141 + 1) + 8 * m);

                                                              if (v98)
                                                              {
                                                                v103 = *(v31 + 3776);
                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v104 = v98;
                                                                  v105 = [v140 objectForKeyedSubscript:@"DeliveryTypes"];
                                                                  v106 = [v105 objectForKeyedSubscript:v86];
                                                                  [v106 addObject:v104];

                                                                  v31 = 0x1E696A000;
                                                                }
                                                              }
                                                            }

                                                            v99 = [v96 countByEnumeratingWithState:&v141 objects:v162 count:16];
                                                          }

                                                          while (v99);
                                                        }

                                                        v81 = 0;
                                                        v27 = 0x1E695D000;
                                                        v32 = 0x1E695D000;
                                                        v61 = 0x1E695D000;
                                                      }

                                                      else
                                                      {
                                                        v81 = v95;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v81 = 0;
                                                    }

                                                    v80 = v136;
                                                  }
                                                }

                                                v82 = v135;
                                              }

                                              else
                                              {
                                                v81 = v84;
                                              }
                                            }

                                            else
                                            {
                                              v81 = 0;
                                            }
                                          }

                                          v137 = [v80 countByEnumeratingWithState:&v145 objects:v163 count:16];
                                        }

                                        while (v137);
                                      }

                                      v30 = 0;
                                      a1 = v128;
                                      v34 = v129;
                                    }
                                  }
                                }
                              }

                              [*(*(a1[6] + 8) + 40) setProperties:v140 client:v34];
                            }

                            else
                            {
                              v30 = v64;
                            }

                            v62 = v134 + 1;
                          }

                          while (v134 + 1 != v131);
                          v131 = [v133 countByEnumeratingWithState:&v150 objects:v164 count:16];
                        }

                        while (v131);
                      }

                      v30 = 0;
                      v37 = v122;
                      v60 = v133;
                    }

                    i = v124;
                  }
                }

                else
                {
                  v30 = v34;
                }
              }

              v126 = [obj countByEnumeratingWithState:&v158 objects:v168 count:16];
            }

            while (v126);
          }

          goto LABEL_118;
        }

        v28 = v29;
      }

      else
      {
        *(*(a1[7] + 8) + 24) = 0;
        *a4 = 1;
      }

LABEL_121:
      v107 = [v118 objectForKeyedSubscript:@"MobileAssetsContentVersion"];

      if (v107)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong((a1[4] + 72), v107);
        }
      }

      goto LABEL_125;
    }

LABEL_17:
    v25 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v9];
    goto LABEL_22;
  }

  v12 = [v6 pathWithName:@"factors.mdplist"];
  if (v12)
  {
    goto LABEL_9;
  }

  v13 = a1;
  v14 = v6;
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [v6 contentType];
  v16 = [v15 initWithFormat:@"default_factors_%@.pb", v12];
  v17 = [v6 pathWithName:v16];
  if (v17)
  {

    a1 = v13;
LABEL_9:

    goto LABEL_10;
  }

  v111 = objc_alloc(MEMORY[0x1E696AEC0]);
  v112 = [v6 contentType];
  v113 = [v111 initWithFormat:@"default_factors_%@_fbs.bin", v112];
  v114 = [v14 pathWithName:v113];

  v6 = v14;
  a1 = v13;
  if (!v114)
  {
    v18 = *(*(v13[9] + 8) + 40);
    if (v18)
    {
      goto LABEL_13;
    }

    v115 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v116 = *(v13[9] + 8);
    v117 = *(v116 + 40);
    *(v116 + 40) = v115;

    v22 = v13[9];
    goto LABEL_12;
  }

LABEL_10:
  v18 = *(*(a1[8] + 8) + 40);
  if (!v18)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = *(a1[8] + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v22 = a1[8];
LABEL_12:
    v18 = *(*(v22 + 8) + 40);
  }

LABEL_13:
  [v18 addObject:v6];
LABEL_132:

  v110 = *MEMORY[0x1E69E9840];
}

uint64_t __51__SRDefaultsManager_loadDefaultsFromDefaultAssets___block_invoke_418(void *a1)
{
  objc_storeStrong((a1[4] + 8), *(*(a1[5] + 8) + 40));
  objc_storeStrong((a1[4] + 16), *(*(a1[6] + 8) + 40));
  v2 = a1[4];
  v3 = *(*(a1[7] + 8) + 40);

  return [v2 _loadAssets:v3 shouldUpdate:1];
}

- (void)_loadAssets:(id)a3 shouldUpdate:(BOOL)a4
{
  v6 = a3;
  v7 = [(SRDefaultsManager *)self defaultsQueue];
  dispatch_assert_queue_V2(v7);

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SRDefaultsManager__loadAssets_shouldUpdate___block_invoke;
  v8[3] = &unk_1E7A2B230;
  v8[4] = self;
  v9 = a4;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __46__SRDefaultsManager__loadAssets_shouldUpdate___block_invoke(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 57) == 1)
  {
    v5 = [v3 contentType];
    if ([v5 isEqualToString:@"Embedding"])
    {
      v6 = [v4 deliveryTypeString];
      v7 = [v6 isEqualToString:@"Required"];

      if ((v7 & 1) == 0)
      {
        v8 = SRLogCategoryAssets();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v4 contentType];
          v10 = [v9 UTF8String];
          v11 = [v4 deliveryTypeString];
          *buf = 136315394;
          v62 = v10;
          v63 = 2080;
          v64 = [v11 UTF8String];
          _os_log_impl(&dword_1AE58E000, v8, OS_LOG_TYPE_DEFAULT, "(_loadAssets) skipping over asset: %s, %s", buf, 0x16u);
        }

LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
    }
  }

  v12 = *(*(a1 + 32) + 32);
  v13 = [v4 localeIdentifier];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = *(*(a1 + 32) + 32);
    v17 = [v4 localeIdentifier];
    [v16 setObject:v15 forKeyedSubscript:v17];
  }

  v18 = *(*(a1 + 32) + 32);
  v19 = [v4 localeIdentifier];
  v20 = [v18 objectForKeyedSubscript:v19];
  v21 = [v4 contentType];
  v22 = [v20 objectForKeyedSubscript:v21];

  if (!v22)
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v24 = *(*(a1 + 32) + 32);
    v25 = [v4 localeIdentifier];
    v26 = [v24 objectForKeyedSubscript:v25];
    v27 = [v4 contentType];
    [v26 setObject:v23 forKeyedSubscript:v27];
  }

  v28 = *(*(a1 + 32) + 32);
  v29 = [v4 localeIdentifier];
  v30 = [v28 objectForKeyedSubscript:v29];
  v31 = [v4 contentType];
  v32 = [v30 objectForKeyedSubscript:v31];
  v33 = [v4 deliveryTypeString];
  v34 = [v32 objectForKeyedSubscript:v33];
  if (v34)
  {
    v35 = *(a1 + 40);

    if ((v35 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v36 = SRLogCategoryAssets();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v4 localeIdentifier];
    v60 = [v37 UTF8String];
    v38 = [v4 contentType];
    v39 = [v38 UTF8String];
    v40 = [v4 deliveryTypeString];
    v41 = [v40 UTF8String];
    v42 = [v4 contentPaths];
    v43 = [v42 componentsJoinedByString:{@", "}];
    *buf = 136315906;
    v62 = v60;
    v63 = 2080;
    v64 = v39;
    v65 = 2080;
    v66 = v41;
    v67 = 2080;
    v68 = [v43 UTF8String];
    _os_log_impl(&dword_1AE58E000, v36, OS_LOG_TYPE_DEFAULT, "(_loadAssets) loading asset: %s, %s, %s, %s", buf, 0x2Au);
  }

  v44 = *(*(a1 + 32) + 32);
  v45 = [v4 localeIdentifier];
  v46 = [v44 objectForKeyedSubscript:v45];
  v47 = [v4 contentType];
  v48 = [v46 objectForKeyedSubscript:v47];
  v49 = [v4 deliveryTypeString];
  [v48 setObject:v4 forKeyedSubscript:v49];

  v50 = [v4 contentType];
  LODWORD(v45) = [v50 isEqualToString:@"Safety"];

  if (v45)
  {
    v51 = SRLogCategorySafety();
    v8 = v51;
    v52 = sSafetyLoadAssetSignpostID;
    v53 = ++sSafetyLoadAssetSignpostID;
    if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
    {
      v54 = [v4 deliveryType];
      v55 = [v4 localeIdentifier];
      v56 = [v55 UTF8String];
      *buf = 134218242;
      v62 = v54;
      v63 = 2080;
      v64 = v56;
      _os_signpost_emit_with_name_impl(&dword_1AE58E000, v8, OS_SIGNPOST_EVENT, v53, "SRSafetyLoad", "(%ld, %s)", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v57 = [v4 contentType];
  v58 = [v57 isEqualToString:@"Defaults"];

  if (v58)
  {
    v8 = [v4 pathWithName:@"locales.plist"];
    if (v8)
    {
      [*(*(a1 + 32) + 24) loadSupportedLanguages:v8];
    }

    goto LABEL_24;
  }

LABEL_25:

  v59 = *MEMORY[0x1E69E9840];
}

- (void)_unloadAssetsForLocale:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SRDefaultsManager *)self defaultsQueue];
  dispatch_assert_queue_V2(v5);

  v6 = languageCodeForLocale(v4);
  if (([v6 isEqualToString:@"root"] & 1) == 0)
  {
    v7 = SRLogCategoryAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 localeIdentifier];
      v19 = 136315138;
      v20 = [v8 UTF8String];
      _os_log_impl(&dword_1AE58E000, v7, OS_LOG_TYPE_DEFAULT, "(_unloadAssetsForLocale) unloading assets for locale: %s", &v19, 0xCu);
    }

    v9 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:v6];
    if (v9)
    {
      v10 = v9;
      v11 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:v6];
      v12 = [v11 objectForKeyedSubscript:@"Safety"];

      if (v12)
      {
        v13 = SRLogCategorySafety();
        v14 = v13;
        v15 = sSafetyUnloadAssetSignpostID;
        v16 = ++sSafetyUnloadAssetSignpostID;
        if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
        {
          v17 = [v6 UTF8String];
          v19 = 136315138;
          v20 = v17;
          _os_signpost_emit_with_name_impl(&dword_1AE58E000, v14, OS_SIGNPOST_EVENT, v16, "SRSafetyUnload", "loc:%s", &v19, 0xCu);
        }
      }
    }

    [(NSMutableDictionary *)self->_assets removeObjectForKey:v6];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)currentNamespacesForClient:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = [(SRDefaultsManager *)self defaultsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SRDefaultsManager_currentNamespacesForClient___block_invoke;
  block[3] = &unk_1E7A2B2A8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __48__SRDefaultsManager_currentNamespacesForClient___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 16) namespaceTypesForClient:a1[5]];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(a1[6] + 8) + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) namespaceId];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)fetchedLanguages
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(SRDefaultsManager *)self defaultsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__SRDefaultsManager_fetchedLanguages__block_invoke;
  v6[3] = &unk_1E7A2B258;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__SRDefaultsManager_fetchedLanguages__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) mutableCopy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(a1 + 32) + 56) == 1)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);

    [v5 addObject:@"root"];
  }
}

- (void)updateFetchedLanguages:(id)a3
{
  v4 = a3;
  v5 = [(SRDefaultsManager *)self defaultsQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SRDefaultsManager_updateFetchedLanguages___block_invoke;
  v7[3] = &unk_1E7A2AFF0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __44__SRDefaultsManager_updateFetchedLanguages___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 48);
  if (([v2 isEqualToSet:*(a1 + 40)] & 1) == 0)
  {
    v3 = SRLogCategoryAssets();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v9 = 138412546;
      v10 = v2;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_1AE58E000, v3, OS_LOG_TYPE_DEFAULT, "(fetchedLanguages) update fetched languages: %@ --> %@", &v9, 0x16u);
    }
  }

  [*(*(a1 + 32) + 48) removeAllObjects];
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 48);
  v7 = [v5 allObjects];
  [v6 addObjectsFromArray:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addFetchForLanguage:(id)a3
{
  v4 = a3;
  v5 = [(SRDefaultsManager *)self defaultsQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__SRDefaultsManager_addFetchForLanguage___block_invoke;
  v7[3] = &unk_1E7A2AFF0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

uint64_t __41__SRDefaultsManager_addFetchForLanguage___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = SRLogCategoryAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UTF8String];
    v7 = 136315138;
    v8 = v3;
    _os_log_impl(&dword_1AE58E000, v2, OS_LOG_TYPE_DEFAULT, "(fetchedLanguages) add fetch for language: %s", &v7, 0xCu);
  }

  result = [*(a1 + 32) isEqualToString:@"root"];
  v5 = *(a1 + 40);
  if (result)
  {
    *(v5 + 56) = 1;
  }

  else
  {
    result = [*(v5 + 48) addObject:*(a1 + 32)];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeFetchForLanguage:(id)a3
{
  v4 = a3;
  v5 = [(SRDefaultsManager *)self defaultsQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SRDefaultsManager_removeFetchForLanguage___block_invoke;
  v7[3] = &unk_1E7A2AFF0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

uint64_t __44__SRDefaultsManager_removeFetchForLanguage___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = SRLogCategoryAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UTF8String];
    v7 = 136315138;
    v8 = v3;
    _os_log_impl(&dword_1AE58E000, v2, OS_LOG_TYPE_DEFAULT, "(fetchedLanguages) remove fetch for language: %s", &v7, 0xCu);
  }

  result = [*(a1 + 32) isEqualToString:@"root"];
  v5 = *(a1 + 40);
  if (result)
  {
    *(v5 + 56) = 0;
  }

  else
  {
    result = [*(v5 + 48) removeObject:*(a1 + 32)];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)didFetchForLanguage:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(SRDefaultsManager *)self defaultsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SRDefaultsManager_didFetchForLanguage___block_invoke;
  block[3] = &unk_1E7A2B2D0;
  v10 = self;
  v11 = &v12;
  v9 = v4;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v4;
}

void __41__SRDefaultsManager_didFetchForLanguage___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isEqualToString:@"root"])
  {
    *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 40) + 56);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(*(a1 + 40) + 48);
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if ([*(*(&v8 + 1) + 8 * i) isEqualToString:{*(a1 + 32), v8}])
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
            goto LABEL_13;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)assetsFromResourcePath:(id)a3 deliveryType:(id)a4 assetType:(id)a5 language:(id)a6 force:(BOOL)a7
{
  v7 = a7;
  v101 = *MEMORY[0x1E69E9840];
  v69 = a3;
  v70 = a4;
  v72 = a5;
  v66 = a6;
  LODWORD(a5) = SRIsRunningInServer();
  v12 = SRLogCategoryAssets();
  v65 = a5 ^ 1;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (v7)
    {
      v57 = @"Force-";
    }

    else
    {
      v57 = &stru_1F2422260;
    }

    v58 = [v72 assetType];
    *v96 = 67110402;
    *&v96[4] = v65;
    *v97 = 2112;
    *&v97[2] = v57;
    *&v97[10] = 2112;
    *&v97[12] = v58;
    *&v97[20] = 2112;
    *&v97[22] = v70;
    *&v97[30] = 2112;
    v98 = v66;
    v99 = 2112;
    v100 = v69;
    _os_log_debug_impl(&dword_1AE58E000, v12, OS_LOG_TYPE_DEBUG, "[%d] %@Loading (%@, %@, %@) assets at %@", v96, 0x3Au);
  }

  *v96 = 0;
  *v97 = v96;
  *&v97[8] = 0x3032000000;
  *&v97[16] = __Block_byref_object_copy__0;
  *&v97[24] = __Block_byref_object_dispose__0;
  v87 = 0;
  v13 = getMobileAssetPropertiesFromPath(v69, &v87);
  v14 = v87;
  v98 = v13;
  if (!v70 || ([v70 isEqualToString:@"Required"] & 1) != 0 || (objc_msgSend(v70, "hasSuffix:", @"Test") & 1) != 0)
  {
    goto LABEL_16;
  }

  v15 = [v14 domain];
  if (![v15 isEqualToString:*MEMORY[0x1E696A250]])
  {
    goto LABEL_15;
  }

  v16 = [v14 code] == 257;

  if (v16)
  {
    v17 = SRLogCategoryAssets();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [SRDefaultsManager assetsFromResourcePath:deliveryType:assetType:language:force:];
    }

    sandboxExtensionHandlers = self->_sandboxExtensionHandlers;
    if (!sandboxExtensionHandlers)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v20 = self->_sandboxExtensionHandlers;
      self->_sandboxExtensionHandlers = v19;

      sandboxExtensionHandlers = self->_sandboxExtensionHandlers;
    }

    v21 = [v72 assetType];
    v22 = [(NSMutableDictionary *)sandboxExtensionHandlers objectForKeyedSubscript:v21];
    v23 = v22 == 0;

    if (v23)
    {
      v24 = [SRMASandboxExtensionHandler alloc];
      v25 = [v72 assetType];
      v26 = [(SRMASandboxExtensionHandler *)v24 initWithAssetType:v25];
      v27 = self->_sandboxExtensionHandlers;
      v28 = [v72 assetType];
      [(NSMutableDictionary *)v27 setObject:v26 forKeyedSubscript:v28];
    }

    if (!v7)
    {
      objc_initWeak(&buf, self);
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_438;
      v78[3] = &unk_1E7A2B320;
      objc_copyWeak(&v83, &buf);
      v82 = v96;
      v79 = v69;
      v80 = v66;
      v60 = v72;
      v81 = v60;
      v61 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v78);
      v62 = self->_sandboxExtensionHandlers;
      v63 = [v60 assetType];
      v64 = [(NSMutableDictionary *)v62 objectForKeyedSubscript:v63];
      [v64 executeBlock:v61 wait:0];

      objc_destroyWeak(&v83);
      objc_destroyWeak(&buf);
      v67 = 0;
      goto LABEL_39;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke;
    block[3] = &unk_1E7A2B258;
    v86 = v96;
    v85 = v69;
    v29 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    v30 = self->_sandboxExtensionHandlers;
    v31 = [v72 assetType];
    v32 = [(NSMutableDictionary *)v30 objectForKeyedSubscript:v31];
    [v32 executeBlock:v29 wait:1];

    v15 = v85;
LABEL_15:
  }

LABEL_16:
  v33 = *(*v97 + 40);
  if (v33 && ([v33 objectForKeyedSubscript:@"AssetLocale"], (v34 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(*(*v97 + 40), "objectForKeyedSubscript:", @"Contents"), v35 = objc_claimAutoreleasedReturnValue(), v36 = v35 == 0, v35, v34, !v36))
  {
    v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(*v97 + 40) objectForKeyedSubscript:@"Contents"];
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    obj = v75 = 0u;
    v37 = [obj countByEnumeratingWithState:&v74 objects:v95 count:16];
    if (v37)
    {
      v71 = *v75;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v75 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v74 + 1) + 8 * i);
          v40 = [v39 objectForKeyedSubscript:@"ContentType"];
          if (!v72 || ([v72 deliveryTypeMap], v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "objectForKeyedSubscript:", v40), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "containsObject:", v70), v42, v41, (v43 & 1) != 0))
          {
            v44 = [v39 objectForKeyedSubscript:@"ContentPath"];
            v45 = [v39 objectForKeyedSubscript:@"Locale"];
            v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/AssetData/%@", v69, v44];
            v47 = [MEMORY[0x1E696AC08] defaultManager];
            v73 = v14;
            v48 = [v47 contentsOfDirectoryAtPath:v46 error:&v73];
            v49 = v73;

            if (!v49)
            {
              v50 = [SRAsset assetWithLocaleIdentifier:v45 contentType:v40 deliveryType:deliveryTypeID(v70) resourceRoot:v46 pathNames:v48];
              if (v50)
              {
                [v67 addObject:v50];
              }
            }

            v14 = v49;
          }
        }

        v37 = [obj countByEnumeratingWithState:&v74 objects:v95 count:16];
      }

      while (v37);
    }

    v51 = SRLogCategoryAssets();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [v67 count];
      v53 = [v72 assetType];
      LODWORD(buf) = 67109890;
      HIDWORD(buf) = v65;
      v89 = 2048;
      v90 = v52;
      v91 = 2112;
      v92 = v53;
      v93 = 2112;
      v94 = v70;
      _os_log_impl(&dword_1AE58E000, v51, OS_LOG_TYPE_DEFAULT, "[%d] Loading %ld assets for (%@, %@)", &buf, 0x26u);
    }
  }

  else
  {
    v54 = SRLogCategoryAssets();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v59 = [v72 assetType];
      LODWORD(buf) = 67109634;
      HIDWORD(buf) = v65;
      v89 = 2112;
      v90 = v59;
      v91 = 2112;
      v92 = v70;
      _os_log_error_impl(&dword_1AE58E000, v54, OS_LOG_TYPE_ERROR, "[%d] Error loading (%@, %@) assets", &buf, 0x1Cu);
    }

    v67 = MEMORY[0x1E695E0F0];
  }

LABEL_39:
  _Block_object_dispose(v96, 8);

  v55 = *MEMORY[0x1E69E9840];

  return v67;
}

void __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = 0;
  v3 = getMobileAssetPropertiesFromPath(v2, &v8);
  v4 = v8;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (v4)
  {
    v7 = SRLogCategoryAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_cold_1();
    }
  }
}

void __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_438(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = *(a1 + 32);
  v21 = 0;
  v4 = getMobileAssetPropertiesFromPath(v3, &v21);
  v5 = v21;
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (v5)
  {
    v8 = SRLogCategoryAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_438_cold_1();
    }
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) assetType];
    v22 = v10;
    v23[0] = *(a1 + 48);
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v12 = [WeakRetained loadOTAAssetsForLanguage:v9 updateCache:0 assetTypes:v11 force:0];

    objc_initWeak(&location, WeakRetained);
    v13 = [WeakRetained notifyQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_439;
    v16[3] = &unk_1E7A2B2F8;
    objc_copyWeak(&v19, &location);
    v17 = *(a1 + 40);
    v18 = v12;
    v14 = v12;
    dispatch_async(v13, v16);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_439(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained notifyObserversWithLanguage:*(a1 + 32) bundleVersions:*(a1 + 40) reloadFromCache:0 force:0];
}

- (void)requestAssetsForLanguages:(id)a3 removeExisting:(BOOL)a4 force:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__0;
  v24[4] = __Block_byref_object_dispose__0;
  v25 = [(SRDefaultsManager *)self currentAssetTypes];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke;
  block[3] = &unk_1E7A2B348;
  block[4] = v24;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v10 = [(SRDefaultsManager *)self ddsQueue];
  if (v5)
  {
    dispatch_sync(v10, v9);
  }

  else
  {
    dispatch_async(v10, v9);
  }

  v11 = objc_autoreleasePoolPush();
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_465;
  v15[3] = &unk_1E7A2B460;
  objc_copyWeak(&v19, &location);
  v18 = v24;
  v20 = a4;
  v12 = v8;
  v21 = v5;
  v16 = v12;
  v17 = self;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v15);
  v14 = [(SRDefaultsManager *)self ddsQueue];
  if (v5)
  {
    dispatch_sync(v14, v13);
  }

  else
  {
    dispatch_async(v14, v13);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v11);

  _Block_object_dispose(v24, 8);
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2;
  block[3] = &unk_1E7A2B348;
  block[4] = *(a1 + 32);
  if (sLastLoadedBundleVersion_block_invoke_onceToken != -1)
  {
    dispatch_once(&sLastLoadedBundleVersion_block_invoke_onceToken, block);
  }
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v49 = a1;
  obj = [*(*(*(a1 + 32) + 8) + 40) allValues];
  v2 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v62;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v62 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v61 + 1) + 8 * i);
        v7 = MEMORY[0x1E695DFF8];
        v8 = SRGetResourcePath();
        v9 = [v7 fileURLWithPath:v8 isDirectory:1];

        v10 = objc_alloc(MEMORY[0x1E6999988]);
        v11 = [v6 assetType];
        v12 = [v10 initWithXPCServiceName:v11 assertionStorageDirectoryURL:v9];

        v13 = [MEMORY[0x1E6999980] sharedInstanceWithConfiguration:v12];
        v14 = sAssetServer;
        sAssetServer = v13;

        v15 = SRLogCategoryAssets();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v6 assetType];
          v17 = [v16 UTF8String];
          v18 = [v6 compatibilityVersion];
          *buf = 136315394;
          v68 = v17;
          v69 = 2048;
          v70 = v18;
          _os_log_impl(&dword_1AE58E000, v15, OS_LOG_TYPE_DEFAULT, "(AssetServerInit) configure asset type: %s (%lu)", buf, 0x16u);
        }

        v19 = sAssetServer;
        v20 = [v6 compatibilityVersion];
        v21 = [v6 assetType];
        [v19 setCompatabilityVersion:v20 forAssetType:v21];

        v22 = [MEMORY[0x1E6999960] sharedInstance];
        v23 = [v6 xpcName];
        v24 = [v6 assetType];
        [v22 setXPCServiceName:v23 forAssetType:v24];
      }

      v3 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v3);
  }

  v25 = +[SRDefaultsManager version];
  if (v25 != 3)
  {
    v26 = v25;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v47 = *(*(*(v49 + 32) + 8) + 40);
    v50 = [v47 countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v50)
    {
      v48 = *v58;
      do
      {
        v27 = 0;
        do
        {
          if (*v58 != v48)
          {
            objc_enumerationMutation(v47);
          }

          v51 = v27;
          v28 = [*(*(*(v49 + 32) + 8) + 40) objectForKeyedSubscript:*(*(&v57 + 1) + 8 * v27)];
          v29 = [MEMORY[0x1E6999960] sharedInstance];
          v30 = [v28 assetType];
          v31 = [v29 assertionIDsForClientID:@"SpotlightResources" assetType:v30];
          v32 = v31;
          if (v31)
          {
            v33 = v31;
          }

          else
          {
            v33 = [MEMORY[0x1E695DFD8] set];
          }

          v34 = v33;

          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v35 = v34;
          v36 = [v35 countByEnumeratingWithState:&v53 objects:v65 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v54;
            do
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v54 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = *(*(&v53 + 1) + 8 * j);
                v41 = SRLogCategoryAssets();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = [v40 UTF8String];
                  *buf = 134218242;
                  v68 = v26;
                  v69 = 2080;
                  v70 = v42;
                  _os_log_impl(&dword_1AE58E000, v41, OS_LOG_TYPE_DEFAULT, "(assertions) (version %ld) removing assertion: %s", buf, 0x16u);
                }

                v43 = [MEMORY[0x1E6999960] sharedInstance];
                v44 = [v28 assetType];
                [v43 removeAssertionWithIdentifier:v40 assetType:v44];
              }

              v37 = [v35 countByEnumeratingWithState:&v53 objects:v65 count:16];
            }

            while (v37);
          }

          v27 = v51 + 1;
        }

        while (v51 + 1 != v50);
        v50 = [v47 countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v50);
    }
  }

  [SRDefaultsManager setVersionWithValue:3];
  objc_autoreleasePoolPop(context);
  v45 = *MEMORY[0x1E69E9840];
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_465(uint64_t a1)
{
  v131 = *MEMORY[0x1E69E9840];
  val = objc_loadWeakRetained((a1 + 56));
  v123[0] = 0;
  v123[1] = v123;
  v123[2] = 0x3032000000;
  v123[3] = __Block_byref_object_copy__0;
  v123[4] = __Block_byref_object_dispose__0;
  v124 = 0;
  group = dispatch_group_create();
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v64 = a1;
  obj = [*(*(*(a1 + 48) + 8) + 40) allValues];
  v54 = [obj countByEnumeratingWithState:&v119 objects:v130 count:16];
  if (v54)
  {
    v55 = *v120;
    v52 = v76;
    v53 = v117;
    v50 = v82;
    v51 = v88;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v120 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v68 = *(*(&v119 + 1) + 8 * i);
        v2 = [MEMORY[0x1E6999960] sharedInstance];
        v3 = [v68 assetType];
        v4 = [v2 assertionIDsForClientID:@"SpotlightResources" assetType:v3];
        v5 = v4;
        if (v4)
        {
          v62 = v4;
        }

        else
        {
          v62 = [MEMORY[0x1E695DFD8] set];
        }

        v61 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        if (*(v64 + 64) == 1)
        {
          v116[0] = MEMORY[0x1E69E9820];
          v116[1] = 3221225472;
          v117[0] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_466;
          v117[1] = &unk_1E7A2B370;
          v118 = v61;
          [v62 enumerateObjectsUsingBlock:v116];
        }

        v114[0] = 0;
        v114[1] = v114;
        v114[2] = 0x3032000000;
        v114[3] = __Block_byref_object_copy__0;
        v114[4] = __Block_byref_object_dispose__0;
        v115 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v112[0] = 0;
        v112[1] = v112;
        v112[2] = 0x3032000000;
        v112[3] = __Block_byref_object_copy__0;
        v112[4] = __Block_byref_object_dispose__0;
        v113 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v58 = *(v64 + 32);
        v6 = [v58 countByEnumeratingWithState:&v108 objects:v129 count:16];
        if (v6)
        {
          v59 = *v109;
          do
          {
            for (j = 0; j != v6; ++j)
            {
              if (*v109 != v59)
              {
                objc_enumerationMutation(v58);
              }

              v7 = *(*(&v108 + 1) + 8 * j);
              v104 = 0u;
              v105 = 0u;
              v106 = 0u;
              v107 = 0u;
              v8 = [v68 deliveryTypes];
              v9 = [v8 countByEnumeratingWithState:&v104 objects:v128 count:16];
              if (v9)
              {
                v10 = *v105;
                v65 = *v105;
                do
                {
                  v70 = v9;
                  for (k = 0; k != v70; ++k)
                  {
                    if (*v105 != v10)
                    {
                      objc_enumerationMutation(v8);
                    }

                    v12 = *(*(&v104 + 1) + 8 * k);
                    if (([v12 isEqualToString:@"Required"] & 1) == 0 && (objc_msgSend(v12, "hasSuffix:", @"Test") & 1) == 0)
                    {
                      v67 = ddsAssetQuery(v7, v68, v12);
                      v13 = [SRAssertion alloc];
                      v14 = [v68 assetType];
                      v69 = [(SRAssertion *)v13 initWithAssetType:v14 language:v7 deliveryType:v12];

                      v15 = [(SRAssertion *)v69 assertionID];
                      if ([v62 containsObject:v15])
                      {
                        v16 = SRLogCategoryAssets();
                        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                        {
                          v17 = v15;
                          v18 = [v15 UTF8String];
                          *buf = 136315138;
                          v127 = v18;
                          _os_log_impl(&dword_1AE58E000, v16, OS_LOG_TYPE_DEFAULT, "(assertions) keeping assertion : %s", buf, 0xCu);
                        }

                        [v61 removeObject:v69];
                      }

                      else
                      {
                        v19 = objc_alloc_init(MEMORY[0x1E6999968]);
                        v20 = SRLogCategoryAssets();
                        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                        {
                          v21 = v15;
                          v22 = [v15 UTF8String];
                          *buf = 136315138;
                          v127 = v22;
                          _os_log_impl(&dword_1AE58E000, v20, OS_LOG_TYPE_DEFAULT, "(assertions) adding assertion : %s", buf, 0xCu);
                        }

                        v23 = [MEMORY[0x1E6999960] sharedInstance];
                        [v23 addAssertionForAssetsWithQuery:v67 policy:v19 assertionID:v15 clientID:@"SpotlightResources"];
                      }

                      dispatch_group_enter(group);
                      objc_initWeak(buf, val);
                      v24 = [MEMORY[0x1E6999960] sharedInstance];
                      v91[0] = MEMORY[0x1E69E9820];
                      v91[1] = 3221225472;
                      v91[2] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_470;
                      v91[3] = &unk_1E7A2B3E8;
                      v25 = v15;
                      v92 = v25;
                      v10 = v65;
                      objc_copyWeak(&v102, buf);
                      v26 = v67;
                      v93 = v26;
                      v94 = v7;
                      v95 = v68;
                      v96 = v12;
                      v103 = *(v64 + 65);
                      v27 = *(v64 + 40);
                      v99 = v123;
                      v97 = v27;
                      v100 = v112;
                      v101 = v114;
                      v98 = group;
                      [v24 updateAssetForQuery:v26 callback:v91];

                      objc_destroyWeak(&v102);
                      objc_destroyWeak(buf);
                    }
                  }

                  v9 = [v8 countByEnumeratingWithState:&v104 objects:v128 count:16];
                }

                while (v9);
              }
            }

            v6 = [v58 countByEnumeratingWithState:&v108 objects:v129 count:16];
          }

          while (v6);
        }

        objc_initWeak(&location, val);
        if (*(v64 + 65) == 1)
        {
          dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
          v28 = [val defaultsQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          v88[0] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_480;
          v88[1] = &unk_1E7A2B410;
          objc_copyWeak(&v89, &location);
          v88[2] = v114;
          v29 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
          dispatch_sync(v28, v29);

          v30 = [val notifyQueue];
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v82[0] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_481;
          v82[1] = &unk_1E7A2B438;
          v83 = *(v64 + 32);
          v84 = v112;
          objc_copyWeak(&v86, &location);
          v85 = v123;
          v31 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v81);
          dispatch_sync(v30, v31);

          objc_destroyWeak(&v86);
          objc_destroyWeak(&v89);
        }

        else
        {
          v32 = [val notifyQueue];
          v75[0] = MEMORY[0x1E69E9820];
          v75[1] = 3221225472;
          v76[0] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_482;
          v76[1] = &unk_1E7A2B438;
          v77 = *(v64 + 32);
          v78 = v112;
          objc_copyWeak(&v80, &location);
          v79 = v123;
          v33 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v75);
          dispatch_group_notify(group, v32, v33);

          objc_destroyWeak(&v80);
        }

        if (*(v64 + 64) == 1)
        {
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v34 = v61;
          v35 = [v34 countByEnumeratingWithState:&v71 objects:v125 count:16];
          if (v35)
          {
            v36 = *v72;
            do
            {
              for (m = 0; m != v35; ++m)
              {
                if (*v72 != v36)
                {
                  objc_enumerationMutation(v34);
                }

                v38 = *(*(&v71 + 1) + 8 * m);
                v39 = [v38 assertionID];
                v40 = SRLogCategoryAssets();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = v39;
                  v42 = [v39 UTF8String];
                  *buf = 136315138;
                  v127 = v42;
                  _os_log_impl(&dword_1AE58E000, v40, OS_LOG_TYPE_DEFAULT, "(assertions) removing assertion : %s", buf, 0xCu);
                }

                v43 = [MEMORY[0x1E6999960] sharedInstance];
                v44 = [v68 assetType];
                [v43 removeAssertionWithIdentifier:v39 assetType:v44];

                v45 = +[SRAssetBundleCache sharedInstance];
                v46 = [v38 assetType];
                v47 = [v38 language];
                v48 = [v38 deliveryType];
                [v45 removeAssetBundleWithAssetType:v46 language:v47 deliveryType:v48];
              }

              v35 = [v34 countByEnumeratingWithState:&v71 objects:v125 count:16];
            }

            while (v35);
          }
        }

        objc_destroyWeak(&location);
        _Block_object_dispose(v112, 8);

        _Block_object_dispose(v114, 8);
      }

      v54 = [obj countByEnumeratingWithState:&v119 objects:v130 count:16];
    }

    while (v54);
  }

  _Block_object_dispose(v123, 8);
  v49 = *MEMORY[0x1E69E9840];
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_466(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[SRAssertion alloc] initWithAssertionID:v3];

  [v2 addObject:v4];
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_470(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SRLogCategoryAssets();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_1AE58E000, v7, OS_LOG_TYPE_DEFAULT, "(updateAssetForQuery) updated assets for %@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 112));
    v10 = [WeakRetained ddsQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_471;
    block[3] = &unk_1E7A2B3C0;
    v16 = *(a1 + 40);
    v11 = *(a1 + 64);
    v17 = *(a1 + 48);
    v21 = *(a1 + 120);
    v18 = v11;
    v14 = *(a1 + 80);
    v20 = *(a1 + 96);
    v12 = v14;
    v19 = v14;
    dispatch_async(v10, block);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_470_cold_1(a1);
    }

    dispatch_group_leave(*(a1 + 80));
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_471(uint64_t a1)
{
  v2 = [MEMORY[0x1E6999960] sharedInstance];
  v3 = [v2 assetsForQuery:*(a1 + 32) error:0];

  if ([v3 count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_472;
    v7[3] = &unk_1E7A2B398;
    v4 = *(a1 + 40);
    v5 = *(a1 + 80);
    v12 = *(a1 + 104);
    v6 = *(a1 + 56);
    v8 = v4;
    v9 = v6;
    v10 = v5;
    v11 = *(a1 + 96);
    [v3 enumerateObjectsUsingBlock:v7];
  }

  dispatch_group_leave(*(a1 + 72));
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_472(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = *(*(*(a1 + 64) + 8) + 40);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = *(*(*(a1 + 64) + 8) + 40);
  }

  v7 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(*(*(a1 + 64) + 8) + 40) setObject:v8 forKeyedSubscript:*(a1 + 32)];
  }

  v9 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
  v10 = [*(a1 + 40) assetType];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
    v14 = [*(a1 + 40) assetType];
    [v13 setObject:v12 forKeyedSubscript:v14];
  }

  v15 = [v28 attributes];
  v16 = [v15 objectForKeyedSubscript:@"SRBundleVersion"];

  if (v16)
  {
    v17 = [[SRAssetBundleVersion alloc] initWithBundleVersion:v16];
  }

  else
  {
    v17 = 0;
  }

  v18 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
  v19 = [*(a1 + 40) assetType];
  v20 = [v18 objectForKeyedSubscript:v19];
  [v20 setObject:v17 forKeyedSubscript:*(a1 + 48)];

  v21 = [v28 localURL];
  v22 = [v21 path];
  v23 = [v22 stringByDeletingLastPathComponent];

  v24 = +[SRAssetBundleCache sharedInstance];
  v25 = [*(a1 + 40) assetType];
  v26 = [v24 upsertAssetBundleWithAssetType:v25 language:*(a1 + 32) deliveryType:*(a1 + 48) bundleVersion:v17 path:v23];

  if (v26)
  {
    [*(*(*(a1 + 72) + 8) + 40) addObject:*(a1 + 32)];
    if (*(a1 + 88) == 1)
    {
      v27 = [*(a1 + 56) assetsFromResourcePath:v23 deliveryType:*(a1 + 48) assetType:*(a1 + 40) language:*(a1 + 32) force:1];
      if (v27)
      {
        [*(*(*(a1 + 80) + 8) + 40) addObjectsFromArray:v27];
      }
    }
  }
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_480(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _loadAssets:*(*(*(a1 + 32) + 8) + 40) shouldUpdate:1];
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_481(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = SRLogCategoryAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_481_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:{v9, v12}];
        [WeakRetained notifyObserversWithLanguage:v9 bundleVersions:v10 reloadFromCache:0 force:1];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_482(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = SRLogCategoryAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_482_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:{v9, v12}];
        [WeakRetained notifyObserversWithLanguage:v9 bundleVersions:v10 reloadFromCache:1 force:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)requestCatalogUpdate
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__SRDefaultsManager_requestCatalogUpdate__block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v3 = SRLogCategoryAssets();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE58E000, v3, OS_LOG_TYPE_DEFAULT, "Assets are available, requesting downloads", buf, 2u);
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v4 addObject:@"root"];
    v5 = [MEMORY[0x1E695DF58] preferredLanguages];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = normalizedLocaleForIdentifier(*(*(&v13 + 1) + 8 * v9));
          v11 = languageCodeForLocale(v10);
          [v4 addObject:v11];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }

    [*(a1 + 32) requestAssetsForLanguages:v4 removeExisting:0 force:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)loadSystemAssetsForLanguage:(id)a3 assetTypes:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([v6 isEqualToString:@"root"] & 1) == 0 && -[SRLanguageConfiguration isSupportedLanguage:deliveryType:](self->_langConfig, "isSupportedLanguage:deliveryType:", v6, @"Required"))
  {
    v8 = [(SRDefaultsManager *)self resourceBundle];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RequiredAssets_%@", v6];
    v10 = [v8 pathForResource:v9 ofType:@"bundle"];
    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = [v11 fileExistsAtPath:v10];

    v13 = SRLogCategoryAssets();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v22 = [v9 UTF8String];
        v23 = 2080;
        v24 = [v10 UTF8String];
        _os_log_impl(&dword_1AE58E000, v14, OS_LOG_TYPE_DEFAULT, "Loading %s at path <%s>", buf, 0x16u);
      }

      v15 = [v7 objectForKeyedSubscript:@"com.apple.MobileAsset.SpotlightResources"];
      v16 = [(SRDefaultsManager *)self assetsFromResourcePath:v10 deliveryType:@"Required" assetType:v15 language:v6 force:0];

      v17 = [(SRDefaultsManager *)self defaultsQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__SRDefaultsManager_loadSystemAssetsForLanguage_assetTypes___block_invoke;
      block[3] = &unk_1E7A2AFF0;
      block[4] = self;
      v20 = v16;
      v14 = v16;
      dispatch_sync(v17, block);
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SRDefaultsManager loadSystemAssetsForLanguage:v9 assetTypes:v10];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)loadTestAssetsForLanguage:(id)a3 assetTypes:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (sHasTestAssets == 1 && (SRIgnoreOTAAssets() & 1) == 0)
  {
    v42 = [(SRDefaultsManager *)self resourceBundle];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v36 = v6;
    obj = [v6 allValues];
    v7 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v52;
      v10 = @"Test";
      v37 = *v52;
      do
      {
        v11 = 0;
        v38 = v8;
        do
        {
          if (*v52 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v51 + 1) + 8 * v11);
          v13 = [v12 assetType];
          v14 = [v13 isEqualToString:@"com.apple.MobileAsset.SpotlightResources"];

          if (v14)
          {
            v40 = v11;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v41 = v12;
            v15 = [v12 deliveryTypes];
            v16 = [v15 countByEnumeratingWithState:&v47 objects:v59 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v48;
              v43 = v15;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v48 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v47 + 1) + 8 * i);
                  if ([v20 hasSuffix:v10] && -[SRLanguageConfiguration isSupportedLanguage:deliveryType:](self->_langConfig, "isSupportedLanguage:deliveryType:", v5, v20))
                  {
                    v21 = v10;
                    v22 = v5;
                    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Assets_%@", v20, v5];
                    v24 = [v42 pathForResource:v23 ofType:@"bundle"];
                    v25 = [MEMORY[0x1E696AC08] defaultManager];
                    v26 = [v25 fileExistsAtPath:v24];

                    v27 = SRLogCategoryAssets();
                    v28 = v27;
                    if (v26)
                    {
                      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                      {
                        v29 = [v23 UTF8String];
                        v30 = [v24 UTF8String];
                        *buf = 136315394;
                        v56 = v29;
                        v57 = 2080;
                        v58 = v30;
                        _os_log_impl(&dword_1AE58E000, v28, OS_LOG_TYPE_DEFAULT, "Loading %s at path <%s>", buf, 0x16u);
                      }

                      v31 = [(SRDefaultsManager *)self assetsFromResourcePath:v24 deliveryType:v20 assetType:v41 language:v22 force:0];
                      v32 = [(SRDefaultsManager *)self defaultsQueue];
                      block[0] = MEMORY[0x1E69E9820];
                      block[1] = 3221225472;
                      block[2] = __58__SRDefaultsManager_loadTestAssetsForLanguage_assetTypes___block_invoke;
                      block[3] = &unk_1E7A2AFF0;
                      block[4] = self;
                      v46 = v31;
                      v28 = v31;
                      dispatch_sync(v32, block);
                    }

                    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                    {
                      v33 = [v23 UTF8String];
                      v34 = [v24 UTF8String];
                      *buf = 136315394;
                      v56 = v33;
                      v57 = 2080;
                      v58 = v34;
                      _os_log_error_impl(&dword_1AE58E000, v28, OS_LOG_TYPE_ERROR, "%s does not exist at path <%s>", buf, 0x16u);
                    }

                    v10 = v21;
                    v5 = v22;
                    v15 = v43;
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v47 objects:v59 count:16];
              }

              while (v17);
            }

            v9 = v37;
            v8 = v38;
            v11 = v40;
          }

          ++v11;
        }

        while (v11 != v8);
        v8 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v8);
    }

    v6 = v36;
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (id)loadOTAAssetsForLanguage:(id)a3 updateCache:(BOOL)a4 assetTypes:(id)a5 force:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v78 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  if ((SRIgnoreOTAAssets() & 1) != 0 || sHasTestAssets == 1)
  {
    v12 = SRLogCategoryAssets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE58E000, v12, OS_LOG_TYPE_DEFAULT, "Skipping OTA asset loading", buf, 2u);
    }

    v13 = 0;
  }

  else
  {
    v14 = sIndex++;
    v15 = SRLogCategoryAssets();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v35 = [v11 allKeys];
      *buf = 134219010;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 1024;
      *v77 = v8;
      *&v77[4] = 1024;
      *&v77[6] = v6;
      *&v77[10] = 2112;
      *&v77[12] = v35;
      _os_log_debug_impl(&dword_1AE58E000, v15, OS_LOG_TYPE_DEBUG, "loadOTA[%llu] (%@, %d, %d, %@)", buf, 0x2Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *v77 = __Block_byref_object_copy__0;
    *&v77[8] = __Block_byref_object_dispose__0;
    *&v77[16] = objc_alloc_init(MEMORY[0x1E695DF70]);
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy__0;
    v73 = __Block_byref_object_dispose__0;
    v74 = 0;
    objc_initWeak(&location, self);
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    if (SRIsRunningInServer())
    {
      v16 = [(SRDefaultsManager *)self ddsQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504;
      block[3] = &unk_1E7A2B690;
      objc_copyWeak(v48, &location);
      v17 = v10;
      v49 = v8;
      v42 = v17;
      v48[1] = v14;
      v18 = v11;
      v50 = v6;
      v45 = &v69;
      v46 = buf;
      v47 = &v64;
      v43 = v18;
      v44 = self;
      v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
      dispatch_sync(v16, v19);

      objc_destroyWeak(v48);
    }

    else
    {
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke;
      v62[3] = &unk_1E7A2AFF0;
      v62[4] = self;
      v20 = v11;
      v63 = v20;
      if (loadOTAAssetsForLanguage_updateCache_assetTypes_force__onceToken != -1)
      {
        dispatch_once(&loadOTAAssetsForLanguage_updateCache_assetTypes_force__onceToken, v62);
      }

      v75 = v10;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
      v22 = [v20 allKeys];
      v23 = assetBundleCacheQuery(v21, v22, sHasTestAssets);

      v24 = [(SRDefaultsManager *)self ddsQueue];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_494;
      v51[3] = &unk_1E7A2B5C8;
      objc_copyWeak(v59, &location);
      v25 = v10;
      v60 = v8;
      v59[1] = v14;
      v52 = v25;
      v53 = v23;
      v26 = v20;
      v61 = v6;
      v56 = &v69;
      v57 = buf;
      v58 = &v64;
      v54 = v26;
      v55 = self;
      v27 = v23;
      v28 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v51);
      dispatch_sync(v24, v28);

      objc_destroyWeak(v59);
    }

    if ([*(*&buf[8] + 40) count])
    {
      v29 = [(SRDefaultsManager *)self defaultsQueue];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_510;
      v40[3] = &unk_1E7A2B6B8;
      v40[4] = self;
      v40[5] = buf;
      v40[6] = v14;
      v30 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v40);
      dispatch_sync(v29, v30);
    }

    if (v6 && *(v65 + 24) == 1)
    {
      v31 = [(SRDefaultsManager *)self notifyQueue];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_511;
      v36[3] = &unk_1E7A2B550;
      v39 = v14;
      v36[4] = self;
      v37 = v10;
      v38 = &v69;
      v32 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v36);
      dispatch_sync(v31, v32);
    }

    v13 = v70[5];
    _Block_object_dispose(&v64, 8);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v69, 8);

    _Block_object_dispose(buf, 8);
  }

  v33 = *MEMORY[0x1E69E9840];

  return v13;
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) ddsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_2;
  block[3] = &unk_1E7A2B1B8;
  v5 = *(a1 + 40);
  dispatch_async(v3, block);

  objc_autoreleasePoolPop(v2);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v1 = [*(a1 + 32) allValues];
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        v7 = SRLogCategoryAssets();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v6 assetType];
          v9 = [v8 UTF8String];
          v10 = [v6 compatibilityVersion];
          *buf = 136315394;
          v20 = v9;
          v21 = 2048;
          v22 = v10;
          _os_log_impl(&dword_1AE58E000, v7, OS_LOG_TYPE_DEFAULT, "(AssetServerInit) configuring asset type: %s (%lu)", buf, 0x16u);
        }

        v11 = [MEMORY[0x1E6999960] sharedInstance];
        v12 = [v6 compatibilityVersion];
        v13 = [v6 assetType];
        [v11 setCompatabilityVersion:v12 forAssetType:v13];
      }

      v3 = [v1 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v3);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_494(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = [WeakRetained cachedOTALanguages];
  v4 = [v3 containsObject:*(a1 + 32)];

  v5 = [WeakRetained requestedOTALanguages];
  v6 = [v5 containsObject:*(a1 + 32)];

  if (*(a1 + 104) & 1) != 0 || ((v4 ^ 1))
  {
    v11 = *(a1 + 105);
    v12 = SRLogCategoryAssets();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v13)
      {
        __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_494_cold_3(a1);
      }

      *v56 = 0;
      *&v56[8] = v56;
      *&v56[16] = 0x3032000000;
      v57 = __Block_byref_object_copy__0;
      v58 = __Block_byref_object_dispose__0;
      v59 = 0;
      v14 = SRLogCategoryAssets();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 32) UTF8String];
        *buf = 136315138;
        v55 = v15;
        _os_log_impl(&dword_1AE58E000, v14, OS_LOG_TYPE_DEFAULT, "(forceLoad) Sending query to server for %s", buf, 0xCu);
      }

      v16 = *(a1 + 40);
      v17 = *(a1 + 105);
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_497;
      v48[3] = &unk_1E7A2B4D8;
      v18 = *(a1 + 96);
      v48[4] = v56;
      v48[5] = v18;
      refreshCacheWithQuery(v16, v17, v48);
      if (*(*&v56[8] + 40))
      {
        v19 = SRLogCategoryAssets();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [*(a1 + 32) UTF8String];
          *buf = 136315138;
          v55 = v20;
          _os_log_impl(&dword_1AE58E000, v19, OS_LOG_TYPE_DEFAULT, "(forceLoad) Got asset bundles from server for %s", buf, 0xCu);
        }

        v21 = +[SRAssetBundleCache sharedInstance];
        [v21 updateCacheWithResults:*(*&v56[8] + 40) loading:1];

        v22 = *(*&v56[8] + 40);
        v23 = *(a1 + 32);
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_499;
        v43[3] = &unk_1E7A2B500;
        v46 = *(a1 + 64);
        v43[4] = WeakRetained;
        v44 = *(a1 + 48);
        v45 = *(a1 + 32);
        v47 = *(a1 + 72);
        [v22 enumerateEntriesForLanguage:v23 block:v43];
        v24 = [WeakRetained cachedOTALanguages];
        [v24 addObject:*(a1 + 32)];
      }

      v25 = [WeakRetained requestedOTALanguages];
      [v25 removeObject:*(a1 + 32)];

      _Block_object_dispose(v56, 8);
    }

    else if (v6)
    {
      if (v13)
      {
        v35 = *(a1 + 96);
        v36 = *(a1 + 104);
        v37 = *(a1 + 105);
        *v56 = 134219008;
        *&v56[4] = v35;
        *&v56[12] = 1024;
        *&v56[14] = v36;
        *&v56[18] = 1024;
        *&v56[20] = v4;
        LOWORD(v57) = 1024;
        *(&v57 + 2) = v37;
        HIWORD(v57) = 1024;
        LODWORD(v58) = 1;
        _os_log_debug_impl(&dword_1AE58E000, v12, OS_LOG_TYPE_DEBUG, "loadOTA[%llu] client 4 skipping (%d, %d, %d, %d)", v56, 0x24u);
      }
    }

    else
    {
      if (v13)
      {
        __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_494_cold_2(a1);
      }

      v26 = SRLogCategoryAssets();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [*(a1 + 32) UTF8String];
        *v56 = 136315138;
        *&v56[4] = v27;
        _os_log_impl(&dword_1AE58E000, v26, OS_LOG_TYPE_DEFAULT, "Sending query to server for %s", v56, 0xCu);
      }

      v28 = [WeakRetained requestedOTALanguages];
      [v28 addObject:*(a1 + 32)];

      v29 = *(a1 + 40);
      v30 = *(a1 + 105);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_500;
      v38[3] = &unk_1E7A2B5A0;
      v42 = *(a1 + 96);
      v38[4] = WeakRetained;
      v31 = *(a1 + 32);
      v32 = *(a1 + 80);
      v33 = *(a1 + 56);
      v39 = v31;
      v40 = v33;
      v41 = v32;
      refreshCacheWithQuery(v29, v30, v38);
    }
  }

  else
  {
    v7 = SRLogCategoryAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_494_cold_1(a1);
    }

    v8 = +[SRAssetBundleCache sharedInstance];
    [v8 queryCache:*(a1 + 40) loading:1];

    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_495;
    v49[3] = &unk_1E7A2B4B0;
    v49[4] = WeakRetained;
    v50 = *(a1 + 48);
    v51 = *(a1 + 32);
    v53 = *(a1 + 105);
    v52 = *(a1 + 64);
    [v9 enumerateEntriesForLanguage:v10 block:v49];
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_495(uint64_t a1, void *a2)
{
  v29 = a2;
  if (([v29 loaded] & 1) == 0)
  {
    v3 = [v29 bundleVersion];

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = [v29 path];
      v6 = [v29 deliveryTypeString];
      v7 = *(a1 + 40);
      v8 = [v29 assetTypeString];
      v9 = [v7 objectForKeyedSubscript:v8];
      v10 = [v4 assetsFromResourcePath:v5 deliveryType:v6 assetType:v9 language:*(a1 + 48) force:*(a1 + 72)];

      if (v10)
      {
        v11 = *(*(*(a1 + 56) + 8) + 40);
        if (!v11)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v13 = *(*(a1 + 56) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;

          v11 = *(*(*(a1 + 56) + 8) + 40);
        }

        v15 = [v29 assetTypeString];
        v16 = [v11 objectForKeyedSubscript:v15];

        if (!v16)
        {
          v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v18 = *(*(*(a1 + 56) + 8) + 40);
          v19 = [v29 assetTypeString];
          [v18 setObject:v17 forKeyedSubscript:v19];
        }

        v20 = [v29 bundleVersion];
        v21 = *(*(*(a1 + 56) + 8) + 40);
        v22 = [v29 assetTypeString];
        v23 = [v21 objectForKeyedSubscript:v22];
        v24 = [v29 deliveryTypeString];
        [v23 setObject:v20 forKeyedSubscript:v24];

        [*(*(*(a1 + 64) + 8) + 40) addObjectsFromArray:v10];
      }

      else
      {
        v25 = +[SRAssetBundleCache sharedInstance];
        v26 = *(a1 + 48);
        v27 = [v29 assetTypeString];
        v28 = [v29 deliveryTypeString];
        [v25 loadFailedForLanguage:v26 assetType:v27 deliveryType:v28];
      }
    }
  }
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_497(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SRLogCategoryAssets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_497_cold_1(a1);
  }

  if (v6)
  {
    v8 = SRLogCategoryAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_497_cold_2();
    }
  }

  else
  {
    v9 = *(*(a1 + 32) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_499(void *a1, void *a2)
{
  v3 = a2;
  if (([v3 loaded] & 1) == 0)
  {
    v4 = [v3 bundleVersion];

    if (v4)
    {
      v5 = *(*(a1[7] + 8) + 40);
      if (!v5)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v7 = *(a1[7] + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        v5 = *(*(a1[7] + 8) + 40);
      }

      v9 = [v3 assetTypeString];
      v10 = [v5 objectForKeyedSubscript:v9];

      if (!v10)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v12 = *(*(a1[7] + 8) + 40);
        v13 = [v3 assetTypeString];
        [v12 setObject:v11 forKeyedSubscript:v13];
      }

      v14 = [v3 bundleVersion];
      v15 = *(*(a1[7] + 8) + 40);
      v16 = [v3 assetTypeString];
      v17 = [v15 objectForKeyedSubscript:v16];
      v18 = [v3 deliveryTypeString];
      [v17 setObject:v14 forKeyedSubscript:v18];

      v19 = a1[4];
      v20 = [v3 path];
      v21 = [v3 deliveryTypeString];
      v22 = a1[5];
      v23 = [v3 assetTypeString];
      v24 = [v22 objectForKeyedSubscript:v23];
      v25 = [v19 assetsFromResourcePath:v20 deliveryType:v21 assetType:v24 language:a1[6] force:1];

      if (v25)
      {
        [*(*(a1[8] + 8) + 40) addObjectsFromArray:v25];
      }

      else
      {
        v26 = SRLogCategoryAssets();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_499_cold_1(v3);
        }
      }

      *(*(a1[9] + 8) + 24) = 1;
    }
  }
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_500(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SRLogCategoryAssets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_500_cold_1(a1);
  }

  objc_initWeak(&location, *(a1 + 32));
  v8 = [*(a1 + 32) ddsQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_501;
  v12[3] = &unk_1E7A2B578;
  v17[1] = *(a1 + 64);
  objc_copyWeak(v17, &location);
  v13 = v6;
  v14 = v5;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v12);
  dispatch_async(v8, v11);

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_501(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = SRLogCategoryAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_501_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__0;
  v22[4] = __Block_byref_object_dispose__0;
  v23 = 0;
  if (*(a1 + 32))
  {
    v4 = SRLogCategoryAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_501_cold_2((a1 + 32));
    }
  }

  else
  {
    if (!*(a1 + 40))
    {
      goto LABEL_11;
    }

    v5 = SRLogCategoryAssets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 48) UTF8String];
      *buf = 136315138;
      v25 = v6;
      _os_log_impl(&dword_1AE58E000, v5, OS_LOG_TYPE_DEFAULT, "Got asset bundles from server for %s", buf, 0xCu);
    }

    v7 = +[SRAssetBundleCache sharedInstance];
    [v7 updateCacheWithResults:*(a1 + 40) loading:0];

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_502;
    v21[3] = &unk_1E7A2B528;
    v10 = *(a1 + 64);
    v21[4] = v22;
    v21[5] = v10;
    [v8 enumerateEntriesForLanguage:v9 block:v21];
    v4 = [WeakRetained cachedOTALanguages];
    [v4 addObject:*(a1 + 48)];
  }

LABEL_11:
  v11 = [WeakRetained requestedOTALanguages];
  [v11 removeObject:*(a1 + 48)];

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v12 = [WeakRetained notifyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_2_503;
    block[3] = &unk_1E7A2B550;
    v20 = *(a1 + 80);
    v16 = *(a1 + 48);
    v13 = v16.i64[0];
    v18 = vextq_s8(v16, v16, 8uLL);
    v19 = v22;
    v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    dispatch_async(v12, v14);
  }

  _Block_object_dispose(v22, 8);

  v15 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_502(uint64_t a1, void *a2)
{
  v18 = a2;
  if (([v18 loaded] & 1) == 0)
  {
    v3 = [v18 bundleVersion];

    if (v3)
    {
      v4 = *(*(*(a1 + 32) + 8) + 40);
      if (!v4)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v6 = *(*(a1 + 32) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;

        v4 = *(*(*(a1 + 32) + 8) + 40);
      }

      v8 = [v18 assetTypeString];
      v9 = [v4 objectForKeyedSubscript:v8];

      if (!v9)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11 = *(*(*(a1 + 32) + 8) + 40);
        v12 = [v18 assetTypeString];
        [v11 setObject:v10 forKeyedSubscript:v12];
      }

      v13 = [v18 bundleVersion];
      v14 = *(*(*(a1 + 32) + 8) + 40);
      v15 = [v18 assetTypeString];
      v16 = [v14 objectForKeyedSubscript:v15];
      v17 = [v18 deliveryTypeString];
      [v16 setObject:v13 forKeyedSubscript:v17];

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

uint64_t __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_2_503(uint64_t a1)
{
  v2 = SRLogCategoryAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_2_503_cold_1(a1);
  }

  return [*(a1 + 32) notifyObserversWithLanguage:*(a1 + 40) bundleVersions:*(*(*(a1 + 48) + 8) + 40) reloadFromCache:1 force:0];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504(uint64_t a1)
{
  v85[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = [WeakRetained cachedOTALanguages];
  v4 = [v3 containsObject:*(a1 + 32)];

  v5 = [WeakRetained requestedOTALanguages];
  v6 = [v5 containsObject:*(a1 + 32)];

  if ((*(a1 + 96) & 1) != 0 || !v4)
  {
    v15 = *(a1 + 97);
    v10 = SRLogCategoryAssets();
    v16 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v15 == 1)
    {
      if (v16)
      {
        __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_3(a1);
      }

      v66 = 0u;
      v65 = 0u;
      v64 = 0u;
      v63 = 0u;
      obj = [*(a1 + 40) allValues];
      v42 = [obj countByEnumeratingWithState:&v63 objects:v84 count:16];
      if (v42)
      {
        v41 = *v64;
        do
        {
          v17 = 0;
          do
          {
            if (*v64 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v43 = v17;
            v18 = *(*(&v63 + 1) + 8 * v17);
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v19 = [v18 deliveryTypes];
            v20 = [v19 countByEnumeratingWithState:&v59 objects:v83 count:16];
            if (v20)
            {
              v21 = v20;
              v45 = v18;
              v46 = *v60;
              v44 = v19;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v60 != v46)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v23 = *(*(&v59 + 1) + 8 * i);
                  if (([v23 isEqualToString:@"Required"] & 1) == 0 && (objc_msgSend(v23, "hasSuffix:", @"Test") & 1) == 0)
                  {
                    v24 = ddsAssetQuery(*(a1 + 32), v18, v23);
                    v25 = [MEMORY[0x1E6999960] sharedInstance];
                    v26 = [v25 assetsForQuery:v24 error:0];

                    if ([v26 count])
                    {
                      v54[0] = MEMORY[0x1E69E9820];
                      v54[1] = 3221225472;
                      v54[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_506;
                      v54[3] = &unk_1E7A2B618;
                      v57 = *(a1 + 56);
                      v54[4] = v18;
                      v54[5] = v23;
                      v55 = *(a1 + 32);
                      v56 = WeakRetained;
                      v58 = *(a1 + 64);
                      [v26 enumerateObjectsUsingBlock:v54];
                    }

                    else
                    {
                      v27 = +[SRAssetBundleCache sharedInstance];
                      [v18 assetType];
                      v29 = v28 = WeakRetained;
                      [v27 removeAssetBundleWithAssetType:v29 language:*(a1 + 32) deliveryType:v23];

                      WeakRetained = v28;
                    }

                    v19 = v44;
                    v18 = v45;
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v59 objects:v83 count:16];
              }

              while (v21);
            }

            v17 = v43 + 1;
          }

          while (v43 + 1 != v42);
          v42 = [obj countByEnumeratingWithState:&v63 objects:v84 count:16];
        }

        while (v42);
      }

      v30 = SRLogCategoryAssets();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_4(a1);
      }

      v31 = [WeakRetained cachedOTALanguages];
      [v31 addObject:*(a1 + 32)];

      v10 = [WeakRetained requestedOTALanguages];
      [v10 removeObject:*(a1 + 32)];
    }

    else if (v6)
    {
      if (v16)
      {
        v32 = *(a1 + 88);
        v33 = *(a1 + 96);
        v34 = *(a1 + 97);
        *buf = 134219008;
        v74 = v32;
        v75 = 1024;
        v76 = v33;
        v77 = 1024;
        v78 = v4;
        v79 = 1024;
        v80 = v34;
        v81 = 1024;
        v82 = 1;
        _os_log_debug_impl(&dword_1AE58E000, v10, OS_LOG_TYPE_DEBUG, "loadOTA[%llu] server 4 skipping (%d, %d, %d, %d)", buf, 0x24u);
      }
    }

    else
    {
      if (v16)
      {
        __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_2(a1);
      }

      v35 = [WeakRetained requestedOTALanguages];
      [v35 addObject:*(a1 + 32)];

      v36 = [WeakRetained ddsQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_507;
      block[3] = &unk_1E7A2B668;
      v53 = *(a1 + 88);
      v48 = *(a1 + 40);
      v37 = *(a1 + 32);
      v38 = *(a1 + 72);
      v49 = v37;
      v50 = WeakRetained;
      v51 = *(a1 + 48);
      v52 = v38;
      dispatch_async(v36, block);

      v10 = v48;
    }
  }

  else
  {
    v7 = SRLogCategoryAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_1(a1);
    }

    v85[0] = *(a1 + 32);
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:1];
    v9 = [*(a1 + 40) allKeys];
    v10 = assetBundleCacheQuery(v8, v9, sHasTestAssets);

    v11 = +[SRAssetBundleCache sharedInstance];
    [v11 queryCache:v10 loading:1];

    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_505;
    v67[3] = &unk_1E7A2B5F0;
    v70 = *(a1 + 56);
    v67[4] = WeakRetained;
    v12 = *(a1 + 32);
    v68 = *(a1 + 40);
    v13 = *(a1 + 32);
    v72 = *(a1 + 97);
    v14 = *(a1 + 64);
    v69 = v13;
    v71 = v14;
    [v10 enumerateEntriesForLanguage:v12 block:v67];
  }

  v39 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_505(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 loaded] & 1) == 0)
  {
    v4 = [v3 bundleVersion];

    if (v4)
    {
      v5 = *(*(*(a1 + 56) + 8) + 40);
      if (!v5)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v7 = *(*(a1 + 56) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        v5 = *(*(*(a1 + 56) + 8) + 40);
      }

      v9 = [v3 assetTypeString];
      v10 = [v5 objectForKeyedSubscript:v9];

      if (!v10)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v12 = *(*(*(a1 + 56) + 8) + 40);
        v13 = [v3 assetTypeString];
        [v12 setObject:v11 forKeyedSubscript:v13];
      }

      v14 = [v3 bundleVersion];
      v15 = *(*(*(a1 + 56) + 8) + 40);
      v16 = [v3 assetTypeString];
      v17 = [v15 objectForKeyedSubscript:v16];
      v18 = [v3 deliveryTypeString];
      [v17 setObject:v14 forKeyedSubscript:v18];

      v19 = sLastLoadedBundleVersion;
      if (!sLastLoadedBundleVersion || ([v3 bundleVersion], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "compare:", v20), v20, v21 == -1))
      {
        v22 = [v3 bundleVersion];
        v23 = sLastLoadedBundleVersion;
        sLastLoadedBundleVersion = v22;
      }

      v24 = *(a1 + 32);
      v25 = [v3 path];
      v26 = [v3 deliveryTypeString];
      v27 = *(a1 + 40);
      v28 = [v3 assetTypeString];
      v29 = [v27 objectForKeyedSubscript:v28];
      v30 = [v24 assetsFromResourcePath:v25 deliveryType:v26 assetType:v29 language:*(a1 + 48) force:*(a1 + 72)];

      if (v30)
      {
        [*(*(*(a1 + 64) + 8) + 40) addObjectsFromArray:v30];
      }

      else
      {
        v31 = SRLogCategoryAssets();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_505_cold_1(v3);
        }
      }
    }
  }
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_506(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 64) + 8) + 40);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 64) + 8) + 40);
  }

  v8 = [*(a1 + 32) assetType];
  v9 = [v4 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = *(*(*(a1 + 64) + 8) + 40);
    v12 = [*(a1 + 32) assetType];
    [v11 setObject:v10 forKeyedSubscript:v12];
  }

  v13 = [v3 attributes];
  v14 = [v13 objectForKeyedSubscript:@"SRBundleVersion"];

  if (v14)
  {
    v15 = [[SRAssetBundleVersion alloc] initWithBundleVersion:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = *(*(*(a1 + 64) + 8) + 40);
  v17 = [*(a1 + 32) assetType];
  v18 = [v16 objectForKeyedSubscript:v17];
  [v18 setObject:v15 forKeyedSubscript:*(a1 + 40)];

  v19 = [v3 localURL];
  v20 = [v19 path];
  v21 = [v20 stringByDeletingLastPathComponent];

  v22 = +[SRAssetBundleCache sharedInstance];
  v23 = [*(a1 + 32) assetType];
  v24 = [v22 upsertAssetBundleWithAssetType:v23 language:*(a1 + 48) deliveryType:*(a1 + 40) bundleVersion:v15 path:v21];

  if (v24)
  {
    v25 = [*(a1 + 56) assetsFromResourcePath:v21 deliveryType:*(a1 + 40) assetType:*(a1 + 32) language:*(a1 + 48) force:1];
    if (v25)
    {
      [*(*(*(a1 + 72) + 8) + 40) addObjectsFromArray:v25];
    }

    else
    {
      v26 = SRLogCategoryAssets();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_506_cold_1();
      }
    }

    *(*(*(a1 + 80) + 8) + 24) = 1;
  }
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_507(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = SRLogCategoryAssets();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_507_cold_1(a1);
  }

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__0;
  v43[4] = __Block_byref_object_dispose__0;
  v44 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v2 = a1;
  obj = [*(a1 + 32) allValues];
  v24 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v24)
  {
    v23 = *v40;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v39 + 1) + 8 * i);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v4 = [v3 deliveryTypes];
        v5 = [v4 countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v5)
        {
          v6 = *v36;
          do
          {
            for (j = 0; j != v5; ++j)
            {
              if (*v36 != v6)
              {
                objc_enumerationMutation(v4);
              }

              v8 = *(*(&v35 + 1) + 8 * j);
              if (([v8 isEqualToString:@"Required"] & 1) == 0 && (objc_msgSend(v8, "hasSuffix:", @"Test") & 1) == 0)
              {
                v9 = ddsAssetQuery(*(v2 + 40), v3, v8);
                v10 = [MEMORY[0x1E6999960] sharedInstance];
                v11 = [v10 assetsForQuery:v9 error:0];

                if ([v11 count])
                {
                  v31[0] = MEMORY[0x1E69E9820];
                  v31[1] = 3221225472;
                  v31[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_508;
                  v31[3] = &unk_1E7A2B640;
                  v33 = v43;
                  v31[4] = v3;
                  v31[5] = v8;
                  v12 = *(a1 + 40);
                  v13 = *(a1 + 64);
                  v32 = v12;
                  v34 = v13;
                  [v11 enumerateObjectsUsingBlock:v31];
                }

                else
                {
                  v14 = +[SRAssetBundleCache sharedInstance];
                  v15 = [v3 assetType];
                  [v14 removeAssetBundleWithAssetType:v15 language:*(a1 + 40) deliveryType:v8];
                }

                v2 = a1;
              }
            }

            v5 = [v4 countByEnumeratingWithState:&v35 objects:v45 count:16];
          }

          while (v5);
        }

        v2 = a1;
      }

      v24 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v24);
  }

  v16 = SRLogCategoryAssets();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_507_cold_2(a1);
  }

  v17 = [*(a1 + 48) cachedOTALanguages];
  [v17 addObject:*(a1 + 40)];

  v18 = [*(a1 + 48) requestedOTALanguages];
  [v18 removeObject:*(a1 + 40)];

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v19 = [*(a1 + 48) notifyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_509;
    block[3] = &unk_1E7A2B550;
    v20 = *(a1 + 56);
    v30 = *(a1 + 72);
    block[4] = v20;
    v28 = *(a1 + 40);
    v29 = v43;
    dispatch_async(v19, block);
  }

  _Block_object_dispose(v43, 8);

  v21 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_508(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = *(*(*(a1 + 56) + 8) + 40);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = *(*(*(a1 + 56) + 8) + 40);
  }

  v7 = [*(a1 + 32) assetType];
  v8 = [v3 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = *(*(*(a1 + 56) + 8) + 40);
    v11 = [*(a1 + 32) assetType];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }

  v12 = [v24 attributes];
  v13 = [v12 objectForKeyedSubscript:@"SRBundleVersion"];

  if (v13)
  {
    v14 = [[SRAssetBundleVersion alloc] initWithBundleVersion:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*(*(a1 + 56) + 8) + 40);
  v16 = [*(a1 + 32) assetType];
  v17 = [v15 objectForKeyedSubscript:v16];
  [v17 setObject:v14 forKeyedSubscript:*(a1 + 40)];

  v18 = [v24 localURL];
  v19 = [v18 path];
  v20 = [v19 stringByDeletingLastPathComponent];

  v21 = +[SRAssetBundleCache sharedInstance];
  v22 = [*(a1 + 32) assetType];
  v23 = [v21 upsertAssetBundleWithAssetType:v22 language:*(a1 + 48) deliveryType:*(a1 + 40) bundleVersion:v14 path:v20];

  if (v23)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

uint64_t __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_509(uint64_t a1)
{
  v2 = SRLogCategoryAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_509_cold_1(a1);
  }

  return [*(a1 + 32) notifyObserversWithLanguage:*(a1 + 40) bundleVersions:*(*(*(a1 + 48) + 8) + 40) reloadFromCache:1 force:0];
}

uint64_t __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_510(uint64_t a1)
{
  v2 = SRLogCategoryAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_510_cold_1(a1);
  }

  return [*(a1 + 32) _loadAssets:*(*(*(a1 + 40) + 8) + 40) shouldUpdate:1];
}

uint64_t __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_511(uint64_t a1)
{
  v2 = SRIsRunningInServer();
  v3 = SRLogCategoryAssets();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_511_cold_2(a1);
    }
  }

  else if (v4)
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_511_cold_1(a1);
  }

  return [*(a1 + 32) notifyObserversWithLanguage:*(a1 + 40) bundleVersions:*(*(*(a1 + 48) + 8) + 40) reloadFromCache:0 force:1];
}

- (void)unloadDefaultsForLocale:(id)a3
{
  v4 = a3;
  v5 = languageCodeForLocale(v4);
  [(SRDefaultsManager *)self removeFetchForLanguage:v5];
  v6 = [(SRDefaultsManager *)self defaultsQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__SRDefaultsManager_unloadDefaultsForLocale___block_invoke;
  v8[3] = &unk_1E7A2AFF0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)loadFactorsAtPath:(id)a3 namespaceId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SRLogCategoryTrial();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SRDefaultsManager loadFactorsAtPath:namespaceId:];
  }

  v9 = [PlistReader plistReaderWithResourcePath:v6];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 plist];
    v12 = v11;
    if (v11 && [v11 count])
    {
      v13 = [(SRDefaultsManager *)self defaultsQueue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __51__SRDefaultsManager_loadFactorsAtPath_namespaceId___block_invoke;
      v14[3] = &unk_1E7A2B6E0;
      v15 = v6;
      v16 = v12;
      v17 = self;
      v18 = v7;
      dispatch_sync(v13, v14);
    }
  }
}

void __51__SRDefaultsManager_loadFactorsAtPath_namespaceId___block_invoke(uint64_t a1)
{
  v107 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v86 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = [MEMORY[0x1E695DFF8] URLWithString:*(a1 + 32)];
  v3 = [v2 URLByDeletingLastPathComponent];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v83 = v3;
  v5 = [v4 enumeratorAtURL:v3 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:4 errorHandler:0];

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v101 objects:v106 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v102;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v102 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v101 + 1) + 8 * i);
        v11 = [v10 lastPathComponent];
        if (([v11 hasPrefix:@"assets_"] & 1) == 0 && (objc_msgSend(v11, "hasPrefix:", @"default_factors_") & 1) == 0 && (objc_msgSend(v11, "hasPrefix:", @"factors.mdplist") & 1) == 0)
        {
          v12 = [v10 path];
          [v86 setObject:v12 forKey:v11];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v101 objects:v106 count:16];
    }

    while (v7);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v93 = *(a1 + 40);
  v13 = [v93 countByEnumeratingWithState:&v97 objects:v105 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0x1E696A000uLL;
    v96 = *v98;
    v85 = a1;
    while (1)
    {
      v17 = 0;
      v92 = v14;
      do
      {
        if (*v98 != v96)
        {
          objc_enumerationMutation(v93);
        }

        v18 = *(*(&v97 + 1) + 8 * v17);

        v19 = *(v16 + 3776);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = v18;
          goto LABEL_117;
        }

        v20 = v18;
        v21 = [*(a1 + 40) objectForKeyedSubscript:v20];
        v22 = [v21 objectForKeyedSubscript:@"Type"];
        if (v22)
        {
          v23 = v22;
          v24 = [*(a1 + 40) objectForKeyedSubscript:v20];
          v25 = [v24 objectForKeyedSubscript:@"Type"];
          v26 = *(v16 + 3776);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [*(a1 + 40) objectForKeyedSubscript:v20];
            v28 = [v27 objectForKeyedSubscript:@"Type"];
          }

          else
          {
            v28 = 0;
          }

          v15 = v20;
          if (!v28)
          {
            goto LABEL_116;
          }

          v29 = [*(a1 + 40) objectForKeyedSubscript:v20];
          v30 = [v29 objectForKeyedSubscript:@"IrisName"];
          if (v30)
          {
            v31 = [*(a1 + 40) objectForKeyedSubscript:v20];
            v32 = [v31 objectForKeyedSubscript:@"IrisName"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = [*(a1 + 40) objectForKeyedSubscript:v20];
              v95 = [v33 objectForKeyedSubscript:@"IrisName"];
            }

            else
            {
              v95 = 0;
            }
          }

          else
          {
            v95 = 0;
          }

          v34 = [*(a1 + 40) objectForKeyedSubscript:v20];
          v35 = [v34 objectForKeyedSubscript:@"Legacy"];
          if (v35)
          {
            v36 = [*(a1 + 40) objectForKeyedSubscript:v20];
            v37 = [v36 objectForKeyedSubscript:@"Legacy"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = [*(a1 + 40) objectForKeyedSubscript:v20];
              v39 = [v38 objectForKeyedSubscript:@"Legacy"];
              v89 = [v39 BOOLValue];
            }

            else
            {
              v89 = 0;
            }
          }

          else
          {
            v89 = 0;
          }

          v40 = [*(a1 + 40) objectForKeyedSubscript:v20];
          v41 = [v40 objectForKeyedSubscript:@"UserDefault"];
          if (v41)
          {
            v42 = [*(a1 + 40) objectForKeyedSubscript:v20];
            v43 = [v42 objectForKeyedSubscript:@"UserDefault"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v44 = [*(a1 + 40) objectForKeyedSubscript:v20];
              v45 = [v44 objectForKeyedSubscript:@"UserDefault"];
              v91 = [v45 BOOLValue] ^ 1;
            }

            else
            {
              v91 = 1;
            }
          }

          else
          {
            v91 = 1;
          }

          v46 = [*(a1 + 40) objectForKeyedSubscript:v20];
          v47 = [v46 objectForKeyedSubscript:@"Current"];
          if (v47)
          {
            v48 = [*(a1 + 40) objectForKeyedSubscript:v20];
            v49 = [v48 objectForKeyedSubscript:@"Current"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v50 = [*(a1 + 40) objectForKeyedSubscript:v20];
              v51 = [v50 objectForKeyedSubscript:@"Current"];
              v90 = [v51 BOOLValue] ^ 1;
            }

            else
            {
              v90 = 1;
            }
          }

          else
          {
            v90 = 1;
          }

          v52 = [*(a1 + 40) objectForKeyedSubscript:v20];
          v53 = [v52 objectForKeyedSubscript:@"UserDefaultFirst"];
          if (v53)
          {
            v54 = [*(a1 + 40) objectForKeyedSubscript:v20];
            v55 = [v54 objectForKeyedSubscript:@"UserDefaultFirst"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v56 = [*(a1 + 40) objectForKeyedSubscript:v20];
              v57 = [v56 objectForKeyedSubscript:@"UserDefaultFirst"];
              v58 = v28;
              v59 = [v57 BOOLValue] ^ 1;

              v60 = v59;
              v28 = v58;
              a1 = v85;
            }

            else
            {
              v60 = 1;
            }
          }

          else
          {
            v60 = 1;
          }

          v61 = [v28 isEqualToString:@"String"];
          if (v61)
          {
            v62 = 0;
            v87 = 0;
            v88 = 0;
            v63 = 0;
            goto LABEL_65;
          }

          if ([v28 isEqualToString:@"File"])
          {
            v87 = 0;
            v88 = 0;
            v63 = 0;
            v62 = 1;
            goto LABEL_65;
          }

          if ([v28 isEqualToString:@"Long"])
          {
            v62 = 0;
            v87 = 0;
            v88 = 0;
            v63 = 1;
            goto LABEL_65;
          }

          if ([v28 isEqualToString:@"Double"])
          {
            v62 = 0;
            v63 = 0;
            v87 = 1;
            v88 = 0;
            goto LABEL_65;
          }

          v64 = [v28 isEqualToString:@"Boolean"];
          v15 = v20;
          v65 = v95;
          if (v64)
          {
            v62 = 0;
            v63 = 0;
            v87 = 0;
            v88 = 1;
LABEL_65:
            v66 = [*(a1 + 40) objectForKeyedSubscript:v20];
            v15 = [v66 objectForKeyedSubscript:@"Value"];

            if (v15)
            {
LABEL_66:
              v67 = v89;
              goto LABEL_67;
            }

            v74 = [*(a1 + 40) objectForKeyedSubscript:v20];
            v15 = [v74 objectForKeyedSubscript:@"Platforms"];

            if (v15)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_66;
              }

              v75 = [v15 objectForKeyedSubscript:@"ios"];

              if (v75)
              {
                v67 = 0;
                v15 = v75;
LABEL_67:
                v68 = v67 == 0;
                v69 = 2;
                if (v68)
                {
                  v69 = 0;
                }

                if (!v90)
                {
                  v69 |= 4uLL;
                }

                if (!v91)
                {
                  v69 |= 8uLL;
                }

                if (v60)
                {
                  v70 = v69;
                }

                else
                {
                  v70 = v69 | 0x10;
                }

                if (v61)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v71 = [SRParameter parameterWithString:v15 name:v20];
                    goto LABEL_106;
                  }
                }

                if (v62)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v72 = [v86 objectForKeyedSubscript:v15];
                    if (v72)
                    {
                      v73 = [SRParameter parameterWithFilePath:v72 name:v20];
                    }

                    else
                    {
                      v73 = 0;
                    }

                    goto LABEL_108;
                  }
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if (v88)
                  {
                    v71 = +[SRParameter parameterWithBoolean:name:](SRParameter, "parameterWithBoolean:name:", [v15 BOOLValue], v20);
LABEL_106:
                    v73 = v71;
                    goto LABEL_108;
                  }

                  if (v63)
                  {
                    v71 = +[SRParameter parameterWithLong:name:](SRParameter, "parameterWithLong:name:", [v15 longValue], v20);
                    goto LABEL_106;
                  }

                  if (v87)
                  {
                    [v15 doubleValue];
                    v71 = [SRParameter parameterWithDouble:v20 name:?];
                    goto LABEL_106;
                  }
                }

                v73 = 0;
                goto LABEL_108;
              }
            }

            v76 = v61 | v62 | v88 | v63;
            v77 = &unk_1F2427C20;
            if (v88)
            {
              v77 = MEMORY[0x1E695E110];
            }

            v78 = &stru_1F2422260;
            if (!(v61 | v62))
            {
              v78 = v77;
            }

            if (v76)
            {
              v15 = v78;
            }

            else
            {
              v15 = &unk_1F2427C68;
            }

            if ((v76 | v87) == 1)
            {
              goto LABEL_66;
            }

            v15 = 0;
            v73 = 0;
            v70 = 0;
LABEL_108:
            v65 = v95;
            if (v95)
            {
              [v73 setIrisName:v95];
              v65 = v95;
            }

            if (v73)
            {
              [v73 setFlag:v70];
              [*(*(a1 + 48) + 16) setParameterName:v20 namespaceId:*(a1 + 56)];
              v79 = [*(*(a1 + 48) + 40) objectForKeyedSubscript:*(a1 + 56)];

              if (!v79)
              {
                v80 = objc_alloc_init(MEMORY[0x1E695DF90]);
                [*(*(a1 + 48) + 40) setObject:v80 forKeyedSubscript:*(a1 + 56)];
              }

              v81 = [*(*(a1 + 48) + 40) objectForKeyedSubscript:*(a1 + 56)];
              [v81 setObject:v73 forKeyedSubscript:v20];

              v65 = v95;
            }
          }

          goto LABEL_115;
        }

        v28 = v21;
        v15 = v20;
LABEL_115:

LABEL_116:
        v14 = v92;
        v16 = 0x1E696A000;
LABEL_117:
        ++v17;
      }

      while (v14 != v17);
      v14 = [v93 countByEnumeratingWithState:&v97 objects:v105 count:16];
      if (!v14)
      {

        break;
      }
    }
  }

  objc_autoreleasePoolPop(context);
  v82 = *MEMORY[0x1E69E9840];
}

- (id)parametersOfNamespaceWithName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = [(SRDefaultsManager *)self defaultsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SRDefaultsManager_parametersOfNamespaceWithName___block_invoke;
  block[3] = &unk_1E7A2B2A8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __51__SRDefaultsManager_parametersOfNamespaceWithName___block_invoke(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [*(a1[4] + 16) namespaceTypes];
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [v7 parameterNames];
        v9 = [v8 containsObject:a1[5]];

        if (v9)
        {
          v10 = [v7 namespaceId];
          v11 = [*(a1[4] + 40) objectForKeyedSubscript:v10];
          if (v11)
          {
            v12 = v11;
            v13 = [*(a1[4] + 40) objectForKeyedSubscript:v10];
            v14 = [v13 objectForKeyedSubscript:a1[5]];

            if (v14)
            {
              v15 = *(*(a1[6] + 8) + 40);
              if (!v15)
              {
                v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
                v17 = *(a1[6] + 8);
                v18 = *(v17 + 40);
                *(v17 + 40) = v16;

                v15 = *(*(a1[6] + 8) + 40);
              }

              v19 = [*(a1[4] + 40) objectForKeyedSubscript:v10];
              v20 = [v19 objectForKeyedSubscript:a1[5]];
              [v15 setObject:v20 forKey:v10];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v4);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)parametersOfNamespaceWithName:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v8 = [(SRDefaultsManager *)self defaultsQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__SRDefaultsManager_parametersOfNamespaceWithName_client___block_invoke;
  v13[3] = &unk_1E7A2B708;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v16 = &v17;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __58__SRDefaultsManager_parametersOfNamespaceWithName_client___block_invoke(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 16) namespaceTypesForClient:a1[5]];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [v7 namespaceId];
        v9 = [v7 parameterNames];
        v10 = [v9 containsObject:a1[6]];

        if (v10)
        {
          v11 = [*(a1[4] + 40) objectForKeyedSubscript:v8];
          if (v11)
          {
            v12 = v11;
            v13 = [*(a1[4] + 40) objectForKeyedSubscript:v8];
            v14 = [v13 objectForKeyedSubscript:a1[6]];

            if (v14)
            {
              if (!*(*(a1[7] + 8) + 40))
              {
                v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
                v16 = *(a1[7] + 8);
                v17 = *(v16 + 40);
                *(v16 + 40) = v15;
              }

              v18 = [*(a1[4] + 40) objectForKeyedSubscript:v8];
              v19 = [v18 objectForKeyedSubscript:a1[6]];
              [*(*(a1[7] + 8) + 40) setObject:v19 forKeyedSubscript:v8];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __55__SRDefaultsManager_assetBundleForLocale_client_force___block_invoke(uint64_t a1)
{
  v1 = a1;
  v104 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [*(v1[4] + 8) contentTypesForClient:v1[5]];
  v66 = [*(v1[4] + 16) namespaceTypesForClient:v1[5]];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v3;
  v67 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
  if (v67)
  {
    v65 = *v96;
    v73 = WeakRetained;
    v81 = v1;
    do
    {
      v4 = 0;
      do
      {
        if (*v96 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v68 = v4;
        v5 = *(*(&v95 + 1) + 8 * v4);
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v6 = v1[6];
        v7 = v1[7];
        v101[0] = @"root";
        v101[1] = v6;
        v101[2] = v7;
        v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:3];
        v71 = [v69 countByEnumeratingWithState:&v91 objects:v102 count:16];
        if (v71)
        {
          v70 = *v92;
          do
          {
            v8 = 0;
            do
            {
              if (*v92 != v70)
              {
                objc_enumerationMutation(v69);
              }

              v72 = v8;
              v9 = *(*(&v91 + 1) + 8 * v8);
              v10 = [WeakRetained[4] objectForKeyedSubscript:v9];
              if (v10)
              {
                v11 = v10;
                v12 = [WeakRetained[4] objectForKeyedSubscript:v9];
                v13 = [v12 objectForKeyedSubscript:v5];

                if (v13)
                {
                  v14 = 0;
                  v15 = 64;
                  if (!sHasTestAssets)
                  {
                    v15 = 0;
                  }

                  v75 = v15;
                  do
                  {
                    v16 = v75;
                    if (!v14)
                    {
                      v16 = 0;
                    }

                    v17 = v16 | v14;
                    v18 = deliveryTypeString(v16 | v14);
                    v19 = [WeakRetained[4] objectForKeyedSubscript:v9];
                    v20 = [v19 objectForKeyedSubscript:v5];
                    v76 = v18;
                    v21 = [v20 objectForKeyedSubscript:v18];

                    if (v21)
                    {
                      if (*(v81[4] + 57) == 1 && (v22 = [v5 isEqualToString:@"Embedding"], v17) && v22)
                      {
                        v23 = SRLogCategoryAssets();
                        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1AE58E000, v23, OS_LOG_TYPE_DEFAULT, "Ignoring OTA embeddings assets", buf, 2u);
                        }
                      }

                      else
                      {
                        v74 = v14;
                        v24 = [WeakRetained[4] objectForKeyedSubscript:v9];
                        v25 = [v24 objectForKeyedSubscript:v5];
                        v23 = [v25 objectForKeyedSubscript:v18];

                        v88 = 0u;
                        v89 = 0u;
                        v86 = 0u;
                        v87 = 0u;
                        v77 = [v23 contentNames];
                        v26 = [v77 countByEnumeratingWithState:&v86 objects:v100 count:16];
                        if (v26)
                        {
                          v27 = v26;
                          v79 = *v87;
                          do
                          {
                            for (i = 0; i != v27; ++i)
                            {
                              if (*v87 != v79)
                              {
                                objc_enumerationMutation(v77);
                              }

                              v29 = *(*(&v86 + 1) + 8 * i);
                              v30 = v23;
                              v31 = [v23 pathWithName:v29];
                              v32 = [*(*(v81[8] + 8) + 40) objectForKeyedSubscript:v5];

                              if (!v32)
                              {
                                v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                [*(*(v81[8] + 8) + 40) setObject:v33 forKeyedSubscript:v5];
                              }

                              v34 = [*(*(v81[8] + 8) + 40) objectForKeyedSubscript:v5];
                              v35 = [v34 objectForKeyedSubscript:v9];

                              if (!v35)
                              {
                                v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                v37 = [*(*(v81[8] + 8) + 40) objectForKeyedSubscript:v5];
                                [v37 setObject:v36 forKeyedSubscript:v9];
                              }

                              v38 = [*(*(v81[8] + 8) + 40) objectForKeyedSubscript:v5];
                              v39 = [v38 objectForKeyedSubscript:v9];
                              [v39 setObject:v31 forKey:v29];

                              v23 = v30;
                            }

                            v27 = [v77 countByEnumeratingWithState:&v86 objects:v100 count:16];
                          }

                          while (v27);
                        }

                        WeakRetained = v73;
                        v14 = v74;
                      }
                    }

                    ++v14;
                  }

                  while (v14 != 6);
                }
              }

              v8 = v72 + 1;
            }

            while (v72 + 1 != v71);
            v71 = [v69 countByEnumeratingWithState:&v91 objects:v102 count:16];
          }

          while (v71);
        }

        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v40 = v66;
        v41 = [v40 countByEnumeratingWithState:&v82 objects:v99 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v83;
          v78 = *v83;
          v80 = v40;
          do
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v83 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = *(*(&v82 + 1) + 8 * j);
              v46 = [v45 parameterNames];
              v47 = [v46 containsObject:v5];

              if (v47)
              {
                v48 = [v45 namespaceId];
                v49 = [WeakRetained[5] objectForKeyedSubscript:v48];
                if (v49)
                {
                  v50 = v49;
                  v51 = [WeakRetained[5] objectForKeyedSubscript:v48];
                  v52 = [v51 objectForKeyedSubscript:v5];

                  if (v52)
                  {
                    v53 = [*(v81[4] + 40) objectForKeyedSubscript:v48];
                    v54 = [v53 objectForKeyedSubscript:v5];

                    v55 = [*(*(v81[8] + 8) + 40) objectForKeyedSubscript:v5];
                    v56 = [v55 objectForKeyedSubscript:@"trial"];

                    if (!v56)
                    {
                      v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
                      v58 = [*(*(v81[8] + 8) + 40) objectForKeyedSubscript:v5];
                      [v58 setObject:v57 forKeyedSubscript:@"trial"];
                    }

                    v59 = [*(*(v81[8] + 8) + 40) objectForKeyedSubscript:v5];
                    v60 = [v59 objectForKeyedSubscript:@"trial"];
                    v61 = [v54 getFilePathValue];
                    v62 = [v54 getFilePathNameValue];
                    [v60 setValue:v61 forKey:v62];

                    WeakRetained = v73;
                    v43 = v78;
                    v40 = v80;
                  }
                }
              }
            }

            v42 = [v40 countByEnumeratingWithState:&v82 objects:v99 count:16];
          }

          while (v42);
        }

        v4 = v68 + 1;
        v1 = v81;
      }

      while (v68 + 1 != v67);
      v67 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
    }

    while (v67);
  }

  v63 = *MEMORY[0x1E69E9840];
}

- (void)registerDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SRDefaultsManager *)self delegatesQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__SRDefaultsManager_registerDelegate___block_invoke;
  v7[3] = &unk_1E7A2AFF0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)unregisterDelegate:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = [(SRDefaultsManager *)self delegatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SRDefaultsManager_unregisterDelegate___block_invoke;
  block[3] = &unk_1E7A2B2A8;
  block[4] = self;
  v6 = v4;
  v8 = v6;
  v9 = &v10;
  dispatch_sync(v5, block);

  [(SRDefaultsManager *)self updateFetchedLanguages:v11[5]];
  _Block_object_dispose(&v10, 8);
}

void __40__SRDefaultsManager_unregisterDelegate___block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1[4] + 144) removeObject:a1[5]];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1[4] + 144);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v12 + 1) + 8 * v6) locale];
        v8 = v7;
        if (v7)
        {
          v9 = *(*(a1[6] + 8) + 40);
          v10 = languageCodeForLocale(v7);
          [v9 addObject:v10];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)notifyObserversWithLanguage:(id)a3 bundleVersions:(id)a4 reloadFromCache:(BOOL)a5 force:(BOOL)a6
{
  v6 = a6;
  v41 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v23 = a4;
  if (v23)
  {
    if (v6)
    {
      location = 0;
      p_location = &location;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__0;
      v38 = __Block_byref_object_dispose__0;
      v39 = 0;
      v11 = [(SRDefaultsManager *)self delegatesQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __86__SRDefaultsManager_notifyObserversWithLanguage_bundleVersions_reloadFromCache_force___block_invoke;
      block[3] = &unk_1E7A2B258;
      block[4] = self;
      block[5] = &location;
      dispatch_sync(v11, block);

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v12 = p_location[5];
      v13 = [v12 countByEnumeratingWithState:&v29 objects:v40 count:16];
      if (v13)
      {
        v14 = *v30;
        do
        {
          v15 = 0;
          do
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v29 + 1) + 8 * v15);
            if (([v10 isEqualToString:@"root"] & 1) != 0 || (objc_msgSend(v16, "locale"), v17 = objc_claimAutoreleasedReturnValue(), languageCodeForLocale(v17), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v10, "isEqualToString:", v18), v18, v17, v19))
            {
              [v16 didUpdateDefaultsWithBundleVersions:v23 trial:0];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v12 countByEnumeratingWithState:&v29 objects:v40 count:16];
        }

        while (v13);
      }

      _Block_object_dispose(&location, 8);
    }

    else
    {
      objc_initWeak(&location, self);
      v20 = [(SRDefaultsManager *)self notifyQueueNonBlocking];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __86__SRDefaultsManager_notifyObserversWithLanguage_bundleVersions_reloadFromCache_force___block_invoke_2;
      v24[3] = &unk_1E7A2B758;
      objc_copyWeak(&v27, &location);
      v28 = a5;
      v25 = v10;
      v26 = v23;
      v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v24);
      dispatch_async(v20, v21);

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __86__SRDefaultsManager_notifyObserversWithLanguage_bundleVersions_reloadFromCache_force___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 144) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __86__SRDefaultsManager_notifyObserversWithLanguage_bundleVersions_reloadFromCache_force___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(a1 + 56) == 1)
  {
    v4 = WeakRetained;
    v5 = [WeakRetained currentAssetTypes];
    v6 = [v4 loadOTAAssetsForLanguage:*(a1 + 32) updateCache:0 assetTypes:v5 force:0];

    v3 = v4;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__0;
  v33 = __Block_byref_object_dispose__0;
  v34 = 0;
  v7 = [v3 delegatesQueue];
  v8 = v3;
  v9 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__SRDefaultsManager_notifyObserversWithLanguage_bundleVersions_reloadFromCache_force___block_invoke_3;
  block[3] = &unk_1E7A2B258;
  block[4] = v8;
  block[5] = &v29;
  v21 = v8;
  dispatch_sync(v7, block);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v30[5];
  v10 = [obj countByEnumeratingWithState:&v24 objects:v35 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        if ([*(a1 + 32) isEqualToString:@"root"])
        {
          goto LABEL_10;
        }

        v14 = *(a1 + 32);
        v15 = [v13 locale];
        v16 = languageCodeForLocale(v15);
        LODWORD(v14) = [v14 isEqualToString:v16];

        if (v14)
        {
LABEL_10:
          v17 = [v21 notifyQueue];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __86__SRDefaultsManager_notifyObserversWithLanguage_bundleVersions_reloadFromCache_force___block_invoke_4;
          v22[3] = &unk_1E7A2AFF0;
          v22[4] = v13;
          v23 = *(a1 + 40);
          v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v22);
          dispatch_async(v17, v18);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v24 objects:v35 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(&v29, 8);
  v19 = *MEMORY[0x1E69E9840];
}

void __86__SRDefaultsManager_notifyObserversWithLanguage_bundleVersions_reloadFromCache_force___block_invoke_3(uint64_t a1)
{
  v5 = [*(a1 + 32) delegates];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)didUpdateAssetsWithType:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SRLogCategoryAssets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = [v4 UTF8String];
    _os_log_impl(&dword_1AE58E000, v5, OS_LOG_TYPE_DEFAULT, "Got updated assets from DDS for %s", buf, 0xCu);
  }

  v6 = [(SRDefaultsManager *)self currentAssetTypes];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [v6 objectForKeyedSubscript:v4];
  [v7 setObject:v8 forKeyedSubscript:v4];

  v9 = [(SRDefaultsManager *)self fetchedLanguages];
  v10 = [v9 allObjects];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(SRDefaultsManager *)self loadOTAAssetsForLanguage:*(*(&v19 + 1) + 8 * v15++) updateCache:1 assetTypes:v7 force:0, v19];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  if (SRIsRunningInServer())
  {
    v17 = +[SRAssetBundleCache sharedInstance];
    [v17 flushCacheToFile];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)updateParameter:(id)a3 inNamespace:(id)a4 withValue:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  parameters = self->_parameters;
  if (parameters)
  {
    v12 = [(NSMutableDictionary *)parameters objectForKeyedSubscript:v9];

    if (v12)
    {
      v13 = [v10 copy];
      v14 = [(NSMutableDictionary *)self->_parameters objectForKeyedSubscript:v9];
      v15 = [v14 objectForKeyedSubscript:v8];

      v16 = [(NSMutableDictionary *)self->_parameters objectForKeyedSubscript:v9];
      [v16 setObject:v13 forKeyedSubscript:v8];

      if (v15)
      {
        v17 = SRLogCategoryTrial();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
LABEL_13:

          goto LABEL_14;
        }

        v18 = +[SRParameter typeStringFromParameterType:](SRParameter, "typeStringFromParameterType:", [v10 type]);
        v19 = [v13 value];
        v23 = 138413058;
        v24 = v8;
        v25 = 2112;
        v26 = v18;
        v27 = 2112;
        v28 = v9;
        v29 = 2112;
        v30 = v19;
        v20 = "Updating parameter %@ of type %@ in namespace %@ to value %@";
      }

      else
      {
        trialConfig = self->_trialConfig;
        if (trialConfig)
        {
          [(SRTrialConfiguration *)trialConfig setParameterName:v8 namespaceId:v9];
        }

        v17 = SRLogCategoryTrial();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_13;
        }

        v18 = +[SRParameter typeStringFromParameterType:](SRParameter, "typeStringFromParameterType:", [v10 type]);
        v19 = [v13 value];
        v23 = 138413058;
        v24 = v8;
        v25 = 2112;
        v26 = v18;
        v27 = 2112;
        v28 = v19;
        v29 = 2112;
        v30 = v9;
        v20 = "Adding parameter %@ of type %@ and value %@ to namespace %@";
      }

      _os_log_debug_impl(&dword_1AE58E000, v17, OS_LOG_TYPE_DEBUG, v20, &v23, 0x2Au);

      goto LABEL_13;
    }

    v13 = SRLogCategoryTrial();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SRDefaultsManager updateParameter:inNamespace:withValue:];
    }
  }

  else
  {
    v13 = SRLogCategoryTrial();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SRDefaultsManager updateParameter:inNamespace:withValue:];
    }
  }

LABEL_14:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateTrialNamespace:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  trialConfig = self->_trialConfig;
  if (trialConfig)
  {
    v26 = v4;
    v6 = [(SRTrialConfiguration *)trialConfig clientsForNamespace:v4];
    v7 = [MEMORY[0x1E695DFA8] set];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v45 count:16];
    if (v9)
    {
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          if ([SSTrialManager didAllNamespacesLoadForClient:v12])
          {
            [v7 addObject:v12];
            v13 = SRLogCategoryTrial();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              *&buf[4] = v12;
              *&buf[12] = 2112;
              *&buf[14] = v26;
              _os_log_debug_impl(&dword_1AE58E000, v13, OS_LOG_TYPE_DEBUG, "Notifying resources for client %@ of update for Trial namespace %@", buf, 0x16u);
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v32 objects:v45 count:16];
      }

      while (v9);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v42 = __Block_byref_object_copy__0;
    v43 = __Block_byref_object_dispose__0;
    v44 = 0;
    v14 = [(SRDefaultsManager *)self delegatesQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__SRDefaultsManager_didUpdateTrialNamespace___block_invoke;
    block[3] = &unk_1E7A2B258;
    block[4] = self;
    block[5] = buf;
    dispatch_sync(v14, block);

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = *(*&buf[8] + 40);
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v40 count:16];
    if (v16)
    {
      v17 = *v28;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v27 + 1) + 8 * j);
          v20 = SRLogCategoryTrial();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v24 = [v19 client];
            *v36 = 138412546;
            v37 = v19;
            v38 = 2112;
            v39 = v24;
            _os_log_debug_impl(&dword_1AE58E000, v20, OS_LOG_TYPE_DEBUG, "Delegate %@ with client %@", v36, 0x16u);
          }

          v21 = [v19 client];
          v22 = [v7 containsObject:v21];

          if (v22)
          {
            v23 = SRLogCategoryTrial();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *v36 = 138412546;
              v37 = v19;
              v38 = 2112;
              v39 = v26;
              _os_log_debug_impl(&dword_1AE58E000, v23, OS_LOG_TYPE_DEBUG, "Notifying delegate %@ of update for Trial namespace %@", v36, 0x16u);
            }

            [v19 didUpdateDefaultsWithBundleVersions:0 trial:1];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v27 objects:v40 count:16];
      }

      while (v16);
    }

    _Block_object_dispose(buf, 8);
    v4 = v26;
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __45__SRDefaultsManager_didUpdateTrialNamespace___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 144) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E6999960] sharedInstance];
  [v3 unregisterDelegate:self];

  v4.receiver = self;
  v4.super_class = SRDefaultsManager;
  [(SRDefaultsManager *)&v4 dealloc];
}

- (id)assetConfigDump
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v3 = [(SRDefaultsManager *)self currentAssetTypes];
  v4 = [v3 allValues];

  v5 = [(SRDefaultsManager *)self defaultsQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__SRDefaultsManager_assetConfigDump__block_invoke;
  v8[3] = &unk_1E7A2B258;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(v5, v8);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __36__SRDefaultsManager_assetConfigDump__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) debugDescription];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)assertionsDump
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v3 = [(SRDefaultsManager *)self currentAssetTypes];
  v4 = [v3 allValues];

  v5 = [(SRDefaultsManager *)self defaultsQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__SRDefaultsManager_assertionsDump__block_invoke;
  v9[3] = &unk_1E7A2B280;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, v9);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __35__SRDefaultsManager_assertionsDump__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v16 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = [MEMORY[0x1E6999960] sharedInstance];
        v9 = [v7 assetType];
        v10 = [v8 assertionIDsForClientID:@"SpotlightResources" assetType:v9];
        v11 = [v10 allObjects];
        [v2 addObjectsFromArray:v11];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v12 = [v2 debugDescription];
  v13 = *(*(v16 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *MEMORY[0x1E69E9840];
}

- (id)trialConfigDump
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(SRDefaultsManager *)self defaultsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__SRDefaultsManager_trialConfigDump__block_invoke;
  v6[3] = &unk_1E7A2B280;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void *__36__SRDefaultsManager_trialConfigDump__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    v3 = [result debugDescription];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (id)allLoadedAssets
{
  v71 = *MEMORY[0x1E69E9840];
  v50 = [MEMORY[0x1E695DF90] dictionary];
  v34 = self;
  assets = self->_assets;
  if (assets)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = assets;
    v35 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v35)
    {
      v33 = *v64;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v64 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v63 + 1) + 8 * i);
          v6 = [(NSMutableDictionary *)v34->_assets objectForKeyedSubscript:v5];
          v7 = [MEMORY[0x1E695DF90] dictionary];
          v49 = v5;
          [v50 setObject:v7 forKeyedSubscript:v5];

          if (v6)
          {
            v36 = v6;
            v37 = i;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v8 = v6;
            v40 = [v8 countByEnumeratingWithState:&v59 objects:v69 count:16];
            if (v40)
            {
              v38 = v8;
              v39 = *v60;
              do
              {
                for (j = 0; j != v40; ++j)
                {
                  if (*v60 != v39)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v10 = *(*(&v59 + 1) + 8 * j);
                  v11 = [v8 objectForKeyedSubscript:v10];
                  v12 = [MEMORY[0x1E695DF90] dictionary];
                  v13 = [v50 objectForKeyedSubscript:v49];
                  v48 = v10;
                  [v13 setObject:v12 forKeyedSubscript:v10];

                  if (v11)
                  {
                    v41 = v11;
                    v42 = j;
                    v57 = 0u;
                    v58 = 0u;
                    v55 = 0u;
                    v56 = 0u;
                    v45 = v11;
                    v44 = [v45 countByEnumeratingWithState:&v55 objects:v68 count:16];
                    if (v44)
                    {
                      v43 = *v56;
                      do
                      {
                        v14 = 0;
                        do
                        {
                          if (*v56 != v43)
                          {
                            objc_enumerationMutation(v45);
                          }

                          v46 = v14;
                          v15 = *(*(&v55 + 1) + 8 * v14);
                          v16 = [v45 objectForKeyedSubscript:v15];
                          v17 = [MEMORY[0x1E695DF90] dictionary];
                          v18 = [v50 objectForKeyedSubscript:v49];
                          v19 = [v18 objectForKeyedSubscript:v48];
                          [v19 setObject:v17 forKeyedSubscript:v15];

                          v20 = [v16 contentNames];
                          v51 = 0u;
                          v52 = 0u;
                          v53 = 0u;
                          v54 = 0u;
                          v47 = v20;
                          v21 = [v20 countByEnumeratingWithState:&v51 objects:v67 count:16];
                          if (v21)
                          {
                            v22 = v21;
                            v23 = *v52;
                            do
                            {
                              for (k = 0; k != v22; ++k)
                              {
                                if (*v52 != v23)
                                {
                                  objc_enumerationMutation(v47);
                                }

                                v25 = *(*(&v51 + 1) + 8 * k);
                                v26 = [v16 pathWithName:v25];
                                v27 = [v50 objectForKeyedSubscript:v49];
                                v28 = [v27 objectForKeyedSubscript:v48];
                                v29 = [v28 objectForKeyedSubscript:v15];
                                [v29 setObject:v26 forKeyedSubscript:v25];
                              }

                              v22 = [v47 countByEnumeratingWithState:&v51 objects:v67 count:16];
                            }

                            while (v22);
                          }

                          v14 = v46 + 1;
                        }

                        while (v46 + 1 != v44);
                        v44 = [v45 countByEnumeratingWithState:&v55 objects:v68 count:16];
                      }

                      while (v44);
                    }

                    v8 = v38;
                    v11 = v41;
                    j = v42;
                  }
                }

                v40 = [v8 countByEnumeratingWithState:&v59 objects:v69 count:16];
              }

              while (v40);
            }

            v6 = v36;
            i = v37;
          }
        }

        v35 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v35);
    }
  }

  v30 = *MEMORY[0x1E69E9840];

  return v50;
}

- (void)refreshCacheForLanguages:(id)a3 force:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (SRIsRunningInServer())
  {
    v10 = SRLogCategoryAssets();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      refreshCacheWithQuery_cold_2();
    }
  }

  else if ((SRIgnoreOTAAssets() & 1) != 0 || sHasTestAssets == 1)
  {
    v10 = SRLogCategoryAssets();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE58E000, v10, OS_LOG_TYPE_DEFAULT, "Skipping OTA asset loading.", buf, 2u);
    }
  }

  else
  {
    v11 = [(SRDefaultsManager *)self currentAssetTypes];
    v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v8];
    objc_initWeak(&location, self);
    v13 = sIndex++;
    v14 = SRLogCategoryAssets();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v19 = [v11 allKeys];
      *buf = 134218754;
      v29 = v13;
      v30 = 2112;
      v31 = v8;
      v32 = 1024;
      v33 = v6;
      v34 = 2112;
      v35 = v19;
      _os_log_debug_impl(&dword_1AE58E000, v14, OS_LOG_TYPE_DEBUG, "refreshCache[%llu] (%@, %d, %@)", buf, 0x26u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke;
    block[3] = &unk_1E7A2B848;
    objc_copyWeak(&v25, &location);
    v21 = v8;
    v15 = v12;
    v22 = v15;
    v10 = v11;
    v23 = v10;
    v26 = v6;
    v24 = v9;
    v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    v17 = [(SRDefaultsManager *)self ddsQueue];
    if (v6)
    {
      dispatch_sync(v17, v16);
    }

    else
    {
      dispatch_async(v17, v16);
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = *v29;
    do
    {
      v6 = 0;
      do
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v28 + 1) + 8 * v6);
        v8 = [WeakRetained requestedOTALanguages];
        v9 = [v8 containsObject:v7];

        if (v9)
        {
          [*(a1 + 40) removeObject:v7];
        }

        else
        {
          v10 = [WeakRetained requestedOTALanguages];
          [v10 addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v4);
  }

  if ([*(a1 + 40) count])
  {
    v11 = [*(a1 + 40) allObjects];
    v12 = [*(a1 + 48) allKeys];
    v13 = assetBundleCacheQuery(v11, v12, sHasTestAssets);

    objc_initWeak(&location, WeakRetained);
    v14 = *(a1 + 72);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_2;
    v22[3] = &unk_1E7A2B820;
    objc_copyWeak(&v25, &location);
    v26 = *(a1 + 72);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = *(a1 + 56);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    *&v20 = v15;
    *(&v20 + 1) = v16;
    v23 = v20;
    v24 = v19;
    refreshCacheWithQuery(v13, v14 & 1, v22);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  objc_initWeak(&location, WeakRetained);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_3;
  v16 = &unk_1E7A2B7F8;
  v8 = v6;
  v17 = v8;
  objc_copyWeak(&v24, &location);
  v9 = v5;
  v18 = v9;
  v25 = *(a1 + 72);
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = WeakRetained;
  v23 = *(a1 + 56);
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &v13);
  v11 = v10;
  if (*(a1 + 72) == 1)
  {
    (*(v10 + 2))(v10);
  }

  else
  {
    v12 = [WeakRetained ddsQueue];
    dispatch_async(v12, v11);
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

uint64_t __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_3(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = SRLogCategoryAssets();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_3_cold_1(v2, a1);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    WeakRetained = *(a1 + 48);
    v5 = [WeakRetained countByEnumeratingWithState:&v32 objects:v62 count:16];
    if (v5)
    {
      v6 = *v33;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v33 != v6)
          {
            objc_enumerationMutation(WeakRetained);
          }

          v8 = *(*(&v32 + 1) + 8 * i);
          v9 = [*(a1 + 72) requestedOTALanguages];
          [v9 removeObject:v8];
        }

        v5 = [WeakRetained countByEnumeratingWithState:&v32 objects:v62 count:16];
      }

      while (v5);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x3032000000;
    v60[3] = __Block_byref_object_copy__0;
    v60[4] = __Block_byref_object_dispose__0;
    v61 = 0;
    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = +[SRAssetBundleCache sharedInstance];
    [v10 updateCacheWithResults:*(a1 + 40) loading:*(a1 + 96)];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = *(a1 + 48);
    v11 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v11)
    {
      v12 = *v57;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v57 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v56 + 1) + 8 * j);
          v15 = *(a1 + 40);
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_4;
          v50[3] = &unk_1E7A2B780;
          v54 = v60;
          v55 = *(a1 + 96);
          v50[4] = v14;
          v50[5] = WeakRetained;
          v51 = *(a1 + 56);
          v52 = v31;
          v53 = v30;
          [v15 enumerateEntriesForLanguage:v14 block:v50];
          v16 = [WeakRetained cachedOTALanguages];
          [v16 addObject:v14];

          v17 = [WeakRetained requestedOTALanguages];
          [v17 removeObject:v14];
        }

        v11 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v11);
    }

    objc_initWeak(&location, WeakRetained);
    if (*(a1 + 96) == 1)
    {
      v18 = [WeakRetained defaultsQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_570;
      block[3] = &unk_1E7A2B7A8;
      objc_copyWeak(&v48, &location);
      v47 = v31;
      v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
      dispatch_sync(v18, v19);

      v20 = [WeakRetained notifyQueue];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_2_571;
      v41[3] = &unk_1E7A2B7D0;
      v42 = *(a1 + 64);
      v43 = v30;
      v21 = v30;
      objc_copyWeak(&v45, &location);
      v44 = v60;
      v22 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v41);
      dispatch_sync(v20, v22);

      objc_destroyWeak(&v45);
      objc_destroyWeak(&v48);
    }

    else
    {
      v23 = [WeakRetained notifyQueue];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_572;
      v36[3] = &unk_1E7A2B7D0;
      v37 = *(a1 + 64);
      v38 = v30;
      v24 = v30;
      objc_copyWeak(&v40, &location);
      v39 = v60;
      v25 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v36);
      dispatch_async(v23, v25);

      objc_destroyWeak(&v40);
    }

    objc_destroyWeak(&location);

    _Block_object_dispose(v60, 8);
  }

  v26 = *(a1 + 32);
  result = (*(*(a1 + 80) + 16))();
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 loaded] & 1) == 0)
  {
    v4 = [v3 bundleVersion];

    if (v4)
    {
      v5 = *(*(*(a1 + 72) + 8) + 40);
      if (!v5)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v7 = *(*(a1 + 72) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        v5 = *(*(*(a1 + 72) + 8) + 40);
      }

      v9 = [v5 objectForKeyedSubscript:*(a1 + 32)];

      if (!v9)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [*(*(*(a1 + 72) + 8) + 40) setObject:v10 forKeyedSubscript:*(a1 + 32)];
      }

      v11 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
      v12 = [v3 assetTypeString];
      v13 = [v11 objectForKeyedSubscript:v12];

      if (!v13)
      {
        v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v15 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
        v16 = [v3 assetTypeString];
        [v15 setObject:v14 forKeyedSubscript:v16];
      }

      v17 = [v3 bundleVersion];
      v18 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
      v19 = [v3 assetTypeString];
      v20 = [v18 objectForKeyedSubscript:v19];
      v21 = [v3 deliveryTypeString];
      [v20 setObject:v17 forKeyedSubscript:v21];

      if (*(a1 + 80) == 1)
      {
        v22 = *(a1 + 40);
        v23 = [v3 path];
        v24 = [v3 deliveryTypeString];
        v25 = *(a1 + 48);
        v26 = [v3 assetTypeString];
        v27 = [v25 objectForKeyedSubscript:v26];
        v28 = [v22 assetsFromResourcePath:v23 deliveryType:v24 assetType:v27 language:*(a1 + 32) force:1];

        if (v28)
        {
          [*(a1 + 56) addObjectsFromArray:v28];
        }

        else
        {
          v29 = SRLogCategoryAssets();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_499_cold_1(v3);
          }
        }
      }

      [*(a1 + 64) addObject:*(a1 + 32)];
    }
  }
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_570(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _loadAssets:*(a1 + 32) shouldUpdate:1];
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_2_571(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = SRLogCategoryAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_2_571_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:{v9, v12}];
        [WeakRetained notifyObserversWithLanguage:v9 bundleVersions:v10 reloadFromCache:0 force:1];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_572(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = SRLogCategoryAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_572_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:{v9, v12}];
        [WeakRetained notifyObserversWithLanguage:v9 bundleVersions:v10 reloadFromCache:1 force:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __51__SRDefaultsManager_loadDefaultsFromDefaultAssets___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)assetsFromResourcePath:deliveryType:assetType:language:force:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_438_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_470_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6_0(&dword_1AE58E000, v2, v3, "(updateAssetForQuery) failed to update asset for %@ with error %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_481_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x1E69E9840]);
  v2 = *(*(v1 + 8) + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_482_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x1E69E9840]);
  v2 = *(*(v1 + 8) + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)loadSystemAssetsForLanguage:(void *)a1 assetTypes:(void *)a2 .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 UTF8String];
  [a2 UTF8String];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_494_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 96);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v2, v3, "loadOTA[%llu] client 1", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_494_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 96);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v2, v3, "loadOTA[%llu] client 3", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_494_cold_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 96);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v2, v3, "loadOTA[%llu] client 2", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_497_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v2, v3, "loadOTA[%llu] client 2.1", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_497_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_499_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 path];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_500_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 64);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v2, v3, "loadOTA[%llu] client 3.1", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_501_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 80);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v2, v3, "loadOTA[%llu] client 3.2", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_501_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_2_503_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v1, v2, "loadOTA[%llu] client 3.3", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v1, v2, "loadOTA[%llu] server 1", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v1, v2, "loadOTA[%llu] server 3", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v1, v2, "loadOTA[%llu] server 2", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v1, v2, "loadOTA[%llu] server 2.1", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_505_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 path];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_506_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_507_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 72);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v2, v3, "loadOTA[%llu] server 3.1", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_507_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 72);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v2, v3, "loadOTA[%llu] server 3.2", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_509_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v1, v2, "loadOTA[%llu] server 3.3", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_510_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v2, v3, "loadOTA[%llu] load", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_511_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v1, v2, "loadOTA[%llu] client 2.2", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_511_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v1, v2, "loadOTA[%llu] server 2.2", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)loadFactorsAtPath:namespaceId:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(&dword_1AE58E000, v0, OS_LOG_TYPE_DEBUG, "Loading factors from path %@ for namespace %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)updateParameter:inNamespace:withValue:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_0(&dword_1AE58E000, v0, v1, "Failed to update parameter %@ as namespace %@ was not found");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)updateParameter:inNamespace:withValue:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_0(&dword_1AE58E000, v0, v1, "Failed to update parameter %@ for namespace %@ as defaults manager does not have a parameters map");
  v2 = *MEMORY[0x1E69E9840];
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_3_cold_1(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 48);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0(&dword_1AE58E000, v4, v5, "Error: %@ when refreshing assets for %@");
  v6 = *MEMORY[0x1E69E9840];
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_2_571_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_572_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

@end