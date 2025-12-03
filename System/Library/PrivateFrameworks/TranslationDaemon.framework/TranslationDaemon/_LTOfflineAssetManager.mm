@interface _LTOfflineAssetManager
+ (id)assetDirectory;
+ (id)fallBackAssetResourcePath;
+ (void)assetDirectory;
+ (void)initialize;
- (_LTOfflineAssetManager)init;
- (id)_assetIdentifiersForLanguagePairDirectory:(id)directory;
- (id)_speechTranslationAssetInfoForLocalePair:(id)pair error:(id *)error;
- (id)_speechTranslationAssetInfoForLocalePair:(id)pair installedAssets:(id)assets catalogAssets:(id)catalogAssets offlineConfig:(id)config error:(id *)error;
- (id)assetIdentifierReferenceCountDictionary;
- (id)endpointAssetInfoWithContext:(id)context error:(id *)error;
- (id)getEndpointerAssetWithType:(unint64_t)type error:(id *)error;
- (id)languageDetectorAssetWithError:(id *)error;
- (id)modelURLsForLanguagePair:(id)pair;
- (id)speechTranslationAssetInfoForLocalePair:(id)pair taskHint:(int64_t)hint error:(id *)error;
- (void)_downloadPassthroughAssetForLocale:(id)locale userInitiated:(BOOL)initiated completion:(id)completion;
- (void)_queryLanguagePairStatusWithCompletion:(id)completion;
- (void)_updateAsset:(id)asset catalogAssets:(id)assets downloadGroup:(id)group completion:(id)completion;
- (void)assetIdentifierReferenceCountDictionary;
- (void)assetSize:(id)size;
- (void)debugDumpAssets:(id)assets;
- (void)deleteAsset:(id)asset completion:(id)completion;
- (void)offlineLanguageStatus:(id)status;
- (void)purgeAllAssetsExcludingConfig:(BOOL)config completion:(id)completion;
- (void)removeObsoleteAssets;
- (void)updateAllAssets:(id)assets;
- (void)updateAssetSymLinksForLocalePairs:(id)pairs;
@end

@implementation _LTOfflineAssetManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _queue = dispatch_queue_create("com.apple.Translator.EMTAssetManager", 0);

    MEMORY[0x2821F96F8]();
  }
}

- (_LTOfflineAssetManager)init
{
  v7.receiver = self;
  v7.super_class = _LTOfflineAssetManager;
  v2 = [(_LTOfflineAssetManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(_LTOfflineAssetManager *)v2 _removeOldAssetDirectory];
    v4 = +[_LTHotfixManager shared];
    hotfixMgr = v3->_hotfixMgr;
    v3->_hotfixMgr = v4;
  }

  return v3;
}

- (void)removeObsoleteAssets
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Error querying offline configuration for language pair status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queryLanguagePairStatusWithCompletion:(id)completion
{
  v50 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v48 = 0;
  v5 = [_LTDConfigurationService offlineConfigurationWithError:&v48];
  v6 = v48;
  if (!v6)
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v32 = _LTOSLogAssets();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager _queryLanguagePairStatusWithCompletion:v32];
      if (completionCopy)
      {
        goto LABEL_19;
      }
    }

    else if (completionCopy)
    {
LABEL_19:
      v33 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE1C58] code:5 userInfo:0];
      completionCopy[2](completionCopy, 0, v33);

      v7 = 0;
      goto LABEL_24;
    }

LABEL_6:
    selfCopy = self;
    v37 = completionCopy;
    languagePairs = [v5 languagePairs];
    v10 = [MEMORY[0x277CBEB58] set];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v11 = languagePairs;
    v12 = [v11 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v45;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [MEMORY[0x277CE1B38] pairWithIdentifiers:*(*(&v44 + 1) + 8 * i)];
          [v10 addObject:v16];
          v17 = objc_alloc(MEMORY[0x277CE1B38]);
          sourceLocale = [v16 sourceLocale];
          sourceLocale2 = [v16 sourceLocale];
          v20 = [v17 initWithSourceLocale:sourceLocale targetLocale:sourceLocale2];
          [v10 addObject:v20];

          v21 = objc_alloc(MEMORY[0x277CE1B38]);
          targetLocale = [v16 targetLocale];
          targetLocale2 = [v16 targetLocale];
          v24 = [v21 initWithSourceLocale:targetLocale targetLocale:targetLocale2];
          [v10 addObject:v24];
        }

        v13 = [v11 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v13);
    }

    v25 = MEMORY[0x277CBEB18];
    allObjects = [v10 allObjects];
    v27 = [v25 arrayWithArray:allObjects];

    [v27 sortUsingComparator:&__block_literal_global_21];
    v43 = 0;
    v28 = [_LTDAssetService installedAssetsWithError:&v43];
    v29 = v43;
    v42 = v29;
    v30 = [_LTDAssetService catalogAssetsWithError:&v42];
    v7 = v42;

    if (!v7)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __65___LTOfflineAssetManager__queryLanguagePairStatusWithCompletion___block_invoke_9;
      v38[3] = &unk_2789B6DD0;
      v38[4] = selfCopy;
      v39 = v28;
      v40 = v30;
      v41 = v5;
      v34 = [v27 _ltCompactMap:v38];
      completionCopy = v37;
      if (v37)
      {
        (v37)[2](v37, v34, 0);
      }

      goto LABEL_23;
    }

    v31 = _LTOSLogAssets();
    completionCopy = v37;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager _queryLanguagePairStatusWithCompletion:];
      if (!v37)
      {
        goto LABEL_23;
      }
    }

    else if (!v37)
    {
LABEL_23:

      goto LABEL_24;
    }

    v37[2](v37, 0, v7);
    goto LABEL_23;
  }

  v7 = v6;
  v8 = _LTOSLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [_LTOfflineAssetManager removeObsoleteAssets];
    if (!completionCopy)
    {
      goto LABEL_24;
    }

    goto LABEL_4;
  }

  if (completionCopy)
  {
LABEL_4:
    completionCopy[2](completionCopy, 0, v7);
  }

LABEL_24:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)deleteAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49___LTOfflineAssetManager_deleteAsset_completion___block_invoke;
  v7[3] = &unk_2789B6DF8;
  v8 = completionCopy;
  v6 = completionCopy;
  [_LTDAssetService purgeAsset:asset completion:v7];
}

- (void)offlineLanguageStatus:(id)status
{
  statusCopy = status;
  v5 = _queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48___LTOfflineAssetManager_offlineLanguageStatus___block_invoke;
  v7[3] = &unk_2789B6B60;
  v7[4] = self;
  v8 = statusCopy;
  v6 = statusCopy;
  dispatch_async(v5, v7);
}

+ (id)assetDirectory
{
  v2 = assetDirectory__assetURL;
  if (assetDirectory__assetURL)
  {
LABEL_2:
    v3 = v2;
    goto LABEL_7;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0;
  v5 = [_LTDConfigurationService assetConfigurationWithError:&v17];
  v6 = v17;
  if (!v6)
  {
    v10 = +[_LTDAssetService assetDirectoryURL];
    currentAssetDirectoryName = [v5 currentAssetDirectoryName];
    v12 = [v10 URLByAppendingPathComponent:currentAssetDirectoryName];
    v13 = assetDirectory__assetURL;
    assetDirectory__assetURL = v12;

    v16 = 0;
    [defaultManager createDirectoryAtURL:assetDirectory__assetURL withIntermediateDirectories:1 attributes:0 error:&v16];
    v14 = v16;
    if (v14)
    {
      v15 = _LTOSLogAssets();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[_LTOfflineAssetManager assetDirectory];
      }
    }

    v2 = assetDirectory__assetURL;
    goto LABEL_2;
  }

  v7 = v6;
  v8 = _LTOSLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[_LTOfflineAssetManager assetDirectory];
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (id)_assetIdentifiersForLanguagePairDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = [directoryCopy URLByAppendingPathComponent:@"assets.json"];
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4];
  if (!v5)
  {
    v7 = 0;
LABEL_9:
    allKeys = MEMORY[0x277CBEBF8];
    goto LABEL_10;
  }

  v11 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v11];
  v7 = v11;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_9;
  }

  allKeys = [v6 allKeys];

  if (!allKeys)
  {
    v9 = _LTOSLogAssets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager _assetIdentifiersForLanguagePairDirectory:];
    }

    allKeys = 0;
  }

LABEL_10:

  return allKeys;
}

- (id)assetIdentifierReferenceCountDictionary
{
  v37 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = +[_LTOfflineAssetManager assetDirectory];
  v34 = 0;
  v20 = defaultManager;
  v5 = [defaultManager contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:0 error:&v34];
  v6 = v34;

  if (v6)
  {
    v7 = _LTOSLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager assetIdentifierReferenceCountDictionary];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v24 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v24)
  {
    v22 = *v31;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v8;
        v9 = [(_LTOfflineAssetManager *)self _assetIdentifiersForLanguagePairDirectory:*(*(&v30 + 1) + 8 * v8)];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v27;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v27 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v26 + 1) + 8 * i);
              v15 = [dictionary objectForKeyedSubscript:v14];
              if (v15)
              {
                v16 = v15;
                v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "integerValue") + 1}];
              }

              else
              {
                v17 = &unk_2848680F8;
              }

              [dictionary setObject:v17 forKeyedSubscript:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v26 objects:v35 count:16];
          }

          while (v11);
        }

        v8 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v24);
  }

  v18 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)purgeAllAssetsExcludingConfig:(BOOL)config completion:(id)completion
{
  configCopy = config;
  v60 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _LTOSLogAssets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = configCopy;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "Requested to delete all offline assets, excluding config: %{BOOL}i", buf, 8u);
  }

  *buf = 0;
  v58[0] = buf;
  v58[1] = 0x3032000000;
  v58[2] = __Block_byref_object_copy__9;
  v58[3] = __Block_byref_object_dispose__9;
  v59 = 0;
  v6 = +[_LTOfflineAssetManager assetDirectory];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = v58[0];
  obj = *(v58[0] + 40);
  v9 = [defaultManager removeItemAtURL:v6 error:&obj];
  v28 = v6;
  objc_storeStrong((v8 + 40), obj);

  if ((v9 & 1) == 0)
  {
    v10 = _LTOSLogAssets();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager purgeAllAssetsExcludingConfig:v58 completion:?];
    }
  }

  v11 = *(v58[0] + 40);
  *(v58[0] + 40) = 0;

  v12 = v58[0];
  v52 = *(v58[0] + 40);
  v30 = [_LTDAssetService installedAssetsWithError:&v52];
  objc_storeStrong((v12 + 40), v52);
  if (v30)
  {
    if ([v30 count])
    {
      v13 = dispatch_group_create();
      v45[0] = 0;
      v45[1] = v45;
      v45[2] = 0x3032000000;
      v45[3] = __Block_byref_object_copy__9;
      v45[4] = __Block_byref_object_dispose__9;
      v46 = 0;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v14 = v30;
      v15 = [v14 countByEnumeratingWithState:&v41 objects:v56 count:16];
      v16 = 0;
      if (v15)
      {
        v17 = *v42;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v42 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v41 + 1) + 8 * i);
            if (([v19 isConfig] & configCopy & 1) == 0)
            {
              dispatch_group_enter(v13);
              v38[0] = MEMORY[0x277D85DD0];
              v38[1] = 3221225472;
              v38[2] = __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_24;
              v38[3] = &unk_2789B55F0;
              v40 = v45;
              v39 = v13;
              [(_LTOfflineAssetManager *)self deleteAsset:v19 completion:v38];

              ++v16;
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v41 objects:v56 count:16];
        }

        while (v15);
      }

      dispatch_group_enter(v13);
      hotfixMgr = self->_hotfixMgr;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_2_25;
      v35[3] = &unk_2789B55F0;
      v37 = v45;
      v21 = v13;
      v36 = v21;
      [(_LTHotfixManager *)hotfixMgr deleteHotfix:v35];
      v22 = _LTOSLogAssets();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *v54 = 134217984;
        v55 = v16;
        _os_log_impl(&dword_232E53000, v22, OS_LOG_TYPE_INFO, "Waiting for %zd assets to be deleted", v54, 0xCu);
      }

      v23 = _queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_27;
      block[3] = &unk_2789B6E48;
      v34 = v45;
      v33 = completionCopy;
      dispatch_group_notify(v21, v23, block);

      _Block_object_dispose(v45, 8);
    }

    else
    {
      v26 = self->_hotfixMgr;
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_2;
      v47[3] = &unk_2789B5D20;
      v48 = completionCopy;
      [(_LTHotfixManager *)v26 deleteHotfix:v47];
      v21 = v48;
    }
  }

  else
  {
    v24 = _LTOSLogAssets();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager purgeAllAssetsExcludingConfig:v58 completion:?];
    }

    v25 = _queue;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke;
    v49[3] = &unk_2789B6980;
    v50 = completionCopy;
    v51 = buf;
    dispatch_async(v25, v49);
    v21 = v50;
  }

  _Block_object_dispose(buf, 8);
  v27 = *MEMORY[0x277D85DE8];
}

- (void)debugDumpAssets:(id)assets
{
  v31 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = assets;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = _LTOSLogAssets();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = v8;
          assetTypeName = [v7 assetTypeName];
          assetVersion = [v7 assetVersion];
          requiredCapabilityIdentifier = [v7 requiredCapabilityIdentifier];
          identifier = [v7 identifier];
          *buf = 138413314;
          v21 = v7;
          v22 = 2112;
          v23 = assetTypeName;
          v24 = 2048;
          v25 = assetVersion;
          v26 = 2048;
          v27 = requiredCapabilityIdentifier;
          v28 = 2112;
          v29 = identifier;
          _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "%@ %@ Version %zd Capability %zd %@", buf, 0x34u);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v30 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateAsset:(id)asset catalogAssets:(id)assets downloadGroup:(id)group completion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  assetsCopy = assets;
  groupCopy = group;
  completionCopy = completion;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = [assetsCopy countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v40;
    *&v15 = 138544130;
    v30 = v15;
    v31 = completionCopy;
    v32 = assetCopy;
    do
    {
      v18 = 0;
      v33 = v16;
      do
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v19 = *(*(&v39 + 1) + 8 * v18);
        if ([v19 isNewerCompatibleVersionThan:{assetCopy, v30}])
        {
          v20 = _LTOSLogAssets();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = v20;
            [v19 assetTypeName];
            v23 = v22 = self;
            v24 = v17;
            v25 = groupCopy;
            v26 = assetsCopy;
            assetVersion = [v19 assetVersion];
            identifier = [v19 identifier];
            *buf = v30;
            v44 = v19;
            v45 = 2114;
            v46 = v23;
            v47 = 2048;
            v48 = assetVersion;
            assetsCopy = v26;
            groupCopy = v25;
            v17 = v24;
            v49 = 2114;
            v50 = identifier;
            _os_log_impl(&dword_232E53000, v21, OS_LOG_TYPE_INFO, "update asset: %{public}@; type: %{public}@; version: %zd; name: %{public}@", buf, 0x2Au);

            self = v22;
            completionCopy = v31;
            assetCopy = v32;
          }

          dispatch_group_enter(groupCopy);
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __78___LTOfflineAssetManager__updateAsset_catalogAssets_downloadGroup_completion___block_invoke;
          v34[3] = &unk_2789B6E70;
          v35 = groupCopy;
          v38 = completionCopy;
          selfCopy = self;
          v37 = assetCopy;
          [_LTDAssetService downloadAsset:v19 options:2 progress:0 completion:v34];

          v16 = v33;
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [assetsCopy countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v16);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)updateAllAssets:(id)assets
{
  v50 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v4 = _LTOSLogAssets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to update all assets", buf, 2u);
  }

  v48 = 0;
  assetsCopy = [_LTDAssetService installedAssetsWithError:&v48, assetsCopy];
  v5 = v48;
  v47 = v5;
  v28 = [_LTDAssetService catalogAssetsWithError:&v47];
  v6 = v47;

  if (v6)
  {
    v7 = _LTOSLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager updateAllAssets:];
    }

    (v25)[2](v25, v6);
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v46 = 0;
    v8 = [_LTDConfigurationService offlineConfigurationWithError:&v46];
    v9 = v46;
    if (v9)
    {
      v6 = v9;
      v10 = _LTOSLogAssets();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_LTOfflineAssetManager updateAllAssets:];
      }

      (v25)[2](v25, v6);
    }

    else
    {
      languagePairs = [v8 languagePairs];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = languagePairs;
      v6 = 0;
      v12 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
      if (v12)
      {
        v13 = *v43;
        do
        {
          v14 = 0;
          v15 = v6;
          do
          {
            if (*v43 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v16 = [MEMORY[0x277CE1B38] pairWithIdentifiers:*(*(&v42 + 1) + 8 * v14)];
            v41 = v15;
            v17 = [(_LTOfflineAssetManager *)self _speechTranslationAssetInfoForLocalePair:v16 installedAssets:assetsCopy catalogAssets:v28 offlineConfig:v8 error:&v41];
            v6 = v41;

            availabilityInfo = [v17 availabilityInfo];
            if ([availabilityInfo pairState] == 2)
            {
              [array addObject:v16];
            }

            ++v14;
            v15 = v6;
          }

          while (v12 != v14);
          v12 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
        }

        while (v12);
      }

      v19 = _LTOSLogAssets();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v19, OS_LOG_TYPE_INFO, "----------------------------- check config asset for update ------------------------------------ ", buf, 2u);
      }

      v20 = [_LTDAssetService filterConfigAssetFromAssets:assetsCopy];
      v21 = dispatch_group_create();
      *buf = 0;
      v38 = buf;
      v39 = 0x2020000000;
      v40 = 0;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __42___LTOfflineAssetManager_updateAllAssets___block_invoke;
      v36[3] = &unk_2789B6E98;
      v36[4] = buf;
      [(_LTOfflineAssetManager *)self _updateAsset:v20 catalogAssets:v28 downloadGroup:v21 completion:v36];
      v22 = _queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42___LTOfflineAssetManager_updateAllAssets___block_invoke_2;
      block[3] = &unk_2789B6F08;
      v34 = v25;
      block[4] = self;
      v31 = v28;
      v32 = assetsCopy;
      v33 = array;
      v35 = buf;
      dispatch_group_notify(v21, v22, block);

      _Block_object_dispose(buf, 8);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)updateAssetSymLinksForLocalePairs:(id)pairs
{
  v34 = *MEMORY[0x277D85DE8];
  pairsCopy = pairs;
  if ([pairsCopy count])
  {
    v32 = 0;
    v5 = [_LTDConfigurationService offlineConfigurationWithError:&v32];
    v6 = v32;
    v31 = v6;
    v7 = [_LTDAssetService installedAssetsWithError:&v31];
    v8 = v31;

    v30 = v8;
    v9 = [_LTDAssetService catalogAssetsWithError:&v30];
    v10 = v30;

    v11 = _LTOSLogAssets();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_LTOfflineAssetManager updateAssetSymLinksForLocalePairs:];
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_INFO, "Fixing symlinks", buf, 2u);
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v22 = pairsCopy;
      obj = pairsCopy;
      v13 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v13)
      {
        v14 = v13;
        v10 = 0;
        v15 = *v26;
        do
        {
          v16 = 0;
          v17 = v10;
          do
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v25 + 1) + 8 * v16);
            v24 = v17;
            v19 = [(_LTOfflineAssetManager *)self _speechTranslationAssetInfoForLocalePair:v18 installedAssets:v7 catalogAssets:v9 offlineConfig:v5 error:&v24];
            v10 = v24;

            availabilityInfo = [v19 availabilityInfo];
            if ([availabilityInfo pairState] == 2)
            {
              [v19 createSymlinkDirectoryForMTAssets];
            }

            ++v16;
            v17 = v10;
          }

          while (v14 != v16);
          v14 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v14);
      }

      else
      {
        v10 = 0;
      }

      pairsCopy = v22;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_downloadPassthroughAssetForLocale:(id)locale userInitiated:(BOOL)initiated completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  completionCopy = completion;
  [_LTDTTSAssetService downloadVoiceAssetsForLanguagePair:localeCopy];
  sourceLocale = [localeCopy sourceLocale];
  v17 = 0;
  v9 = [_LTDAssetService matchingASRAssetForLocale:sourceLocale error:&v17];
  v10 = v17;

  if (v10)
  {
    v11 = _LTOSLogAssets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager _downloadPassthroughAssetForLocale:userInitiated:completion:];
    }

    completionCopy[2](completionCopy, v10);
  }

  if ([v9 isInstalled])
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v12 = _LTOSLogAssets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_INFO, "Starting download for passthrough asset with attributes: %{public}@", buf, 0xCu);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __86___LTOfflineAssetManager__downloadPassthroughAssetForLocale_userInitiated_completion___block_invoke;
    v14[3] = &unk_2789B58D0;
    v15 = localeCopy;
    v16 = completionCopy;
    [_LTDAssetService downloadAsset:v9 options:2 progress:0 completion:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)modelURLsForLanguagePair:(id)pair
{
  v19 = *MEMORY[0x277D85DE8];
  pairCopy = pair;
  v5 = +[_LTOfflineAssetManager assetDirectory];
  canonicalIdentifier = [pairCopy canonicalIdentifier];

  v7 = [v5 URLByAppendingPathComponent:canonicalIdentifier];

  hotfixURL = [(_LTHotfixManager *)self->_hotfixMgr hotfixURL];
  v9 = hotfixURL;
  if (hotfixURL)
  {
    v17 = hotfixURL;
    v18 = v7;
    v10 = MEMORY[0x277CBEA60];
    v11 = &v17;
    v12 = 2;
  }

  else
  {
    v16 = v7;
    v10 = MEMORY[0x277CBEA60];
    v11 = &v16;
    v12 = 1;
  }

  v13 = [v10 arrayWithObjects:v11 count:{v12, v16, v17, v18, v19}];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)speechTranslationAssetInfoForLocalePair:(id)pair taskHint:(int64_t)hint error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  pairCopy = pair;
  v9 = [(_LTOfflineAssetManager *)self _speechTranslationAssetInfoForLocalePair:pairCopy error:error];
  v10 = v9;
  if (v9)
  {
    if ([v9 isCompletePassthroughModelForTaskHint:hint] || (objc_msgSend(v10, "isCompleteBidirectionalModelForTaskHint:", hint) & 1) != 0)
    {
      v11 = v10;
      goto LABEL_14;
    }

    v15 = MEMORY[0x277CCACA8];
    v16 = [pairCopy description];
    v17 = _LTTranslationTaskHintString();
    v18 = [v15 stringWithFormat:@"Incomplete speech translation model for %@ taksHint: %@", v16, v17];

    v19 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:19 description:v18 userInfo:0];
    v20 = _LTOSLogAssets();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v24 = v20;
      v25 = _LTTranslationTaskHintString();
      *buf = 138543874;
      v27 = pairCopy;
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      v31 = v25;
      _os_log_error_impl(&dword_232E53000, v24, OS_LOG_TYPE_ERROR, "Can't get speech asset info for pair %{public}@ because we don't have a complete bi-directional model: %@ taksHint: %@", buf, 0x20u);

      if (!error)
      {
        goto LABEL_12;
      }
    }

    else if (!error)
    {
LABEL_12:

      goto LABEL_13;
    }

    v21 = v19;
    *error = v19;
    goto LABEL_12;
  }

  v12 = [MEMORY[0x277CCA9B8] lt_unsupporedLocalePairError:pairCopy];
  v13 = _LTOSLogAssets();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [_LTOfflineAssetManager speechTranslationAssetInfoForLocalePair:taskHint:error:];
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (error)
  {
LABEL_7:
    v14 = v12;
    *error = v12;
  }

LABEL_8:

LABEL_13:
  v11 = 0;
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_speechTranslationAssetInfoForLocalePair:(id)pair error:(id *)error
{
  pairCopy = pair;
  v26 = 0;
  v7 = [_LTDConfigurationService offlineConfigurationWithError:&v26];
  v8 = v26;
  if (v8)
  {
    v9 = v8;
    v10 = _LTOSLogAssets();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager _speechTranslationAssetInfoForLocalePair:error:];
      if (error)
      {
        goto LABEL_4;
      }
    }

    else if (error)
    {
LABEL_4:
      v11 = v9;
      v12 = 0;
      *error = v9;
      goto LABEL_27;
    }

    goto LABEL_13;
  }

  if (!v7)
  {
    v18 = _LTOSLogAssets();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager _speechTranslationAssetInfoForLocalePair:error:];
    }

    v9 = 0;
LABEL_13:
    v12 = 0;
    goto LABEL_27;
  }

  v25 = 0;
  v13 = [_LTDAssetService installedAssetsWithError:&v25];
  v14 = v25;
  v24 = v14;
  v15 = [_LTDAssetService catalogAssetsWithError:&v24];
  v9 = v24;

  if (!v9)
  {
    v23 = 0;
    v19 = [(_LTOfflineAssetManager *)self _speechTranslationAssetInfoForLocalePair:pairCopy installedAssets:v13 catalogAssets:v15 offlineConfig:v7 error:&v23];
    v9 = v23;
    if (!v9)
    {
      v12 = v19;
      goto LABEL_25;
    }

    v20 = _LTOSLogAssets();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager _speechTranslationAssetInfoForLocalePair:error:];
      if (error)
      {
        goto LABEL_17;
      }
    }

    else if (error)
    {
LABEL_17:
      v21 = v9;
      v12 = 0;
      *error = v9;
LABEL_25:

      goto LABEL_26;
    }

    v12 = 0;
    goto LABEL_25;
  }

  v16 = _LTOSLogAssets();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [_LTOfflineAssetManager _speechTranslationAssetInfoForLocalePair:error:];
    if (error)
    {
      goto LABEL_9;
    }

LABEL_22:
    v12 = 0;
    goto LABEL_26;
  }

  if (!error)
  {
    goto LABEL_22;
  }

LABEL_9:
  v17 = v9;
  v12 = 0;
  *error = v9;
LABEL_26:

LABEL_27:

  return v12;
}

- (id)_speechTranslationAssetInfoForLocalePair:(id)pair installedAssets:(id)assets catalogAssets:(id)catalogAssets offlineConfig:(id)config error:(id *)error
{
  pairCopy = pair;
  assetsCopy = assets;
  catalogAssetsCopy = catalogAssets;
  configCopy = config;
  canonicalLocalePair = [pairCopy canonicalLocalePair];
  canonicalIdentifier = [canonicalLocalePair canonicalIdentifier];
  v18 = [configCopy offlinePairConfigurationWithIdentifier:canonicalIdentifier];

  pairAssetList = [v18 pairAssetList];
  if ([pairAssetList count])
  {

LABEL_4:
    v21 = [[_LTSpeechTranslationAssetInfo alloc] initWithInstalledAssets:assetsCopy catalogAssets:catalogAssetsCopy localePair:canonicalLocalePair offlineConfig:v18 assetManager:self];
    goto LABEL_5;
  }

  isPassthrough = [canonicalLocalePair isPassthrough];

  if (isPassthrough)
  {
    goto LABEL_4;
  }

  v23 = [MEMORY[0x277CCA9B8] lt_unsupporedLocalePairError:pairCopy];
  v24 = _LTOSLogAssets();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [_LTOfflineAssetManager _speechTranslationAssetInfoForLocalePair:installedAssets:catalogAssets:offlineConfig:error:];
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (error)
  {
LABEL_10:
    v25 = v23;
    *error = v23;
  }

LABEL_11:

  v21 = 0;
LABEL_5:

  return v21;
}

- (id)getEndpointerAssetWithType:(unint64_t)type error:(id *)error
{
  v18 = 0;
  v6 = [_LTDConfigurationService assetConfigurationWithError:&v18];
  v7 = v18;
  if (!v7)
  {
    currentEndpointAssetType = [v6 currentEndpointAssetType];
    v17 = 0;
    v13 = [_LTDAssetService queryAssetType:currentEndpointAssetType filter:type error:&v17];
    v8 = v17;
    if (!v8)
    {
      v11 = v13;
      goto LABEL_14;
    }

    v14 = _LTOSLogAssets();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager getEndpointerAssetWithType:error:];
      if (error)
      {
        goto LABEL_8;
      }
    }

    else if (error)
    {
LABEL_8:
      v15 = v8;
      v11 = 0;
      *error = v8;
LABEL_14:

      goto LABEL_15;
    }

    v11 = 0;
    goto LABEL_14;
  }

  v8 = v7;
  v9 = _LTOSLogAssets();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [_LTOfflineAssetManager getEndpointerAssetWithType:error:];
    if (error)
    {
      goto LABEL_4;
    }
  }

  else if (error)
  {
LABEL_4:
    v10 = v8;
    v11 = 0;
    *error = v8;
    goto LABEL_15;
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (id)endpointAssetInfoWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = [(_LTOfflineAssetManager *)self getEndpointerAssetWithType:2 error:error];
  if (!v7)
  {
    if (error)
    {
      *error = 0;
    }

    v7 = [(_LTOfflineAssetManager *)self getEndpointerAssetWithType:3 error:error];
  }

  v8 = [[_LTHybridEndpointerAssetInfo alloc] initWithAvailableAssets:v7 context:contextCopy];

  return v8;
}

+ (id)fallBackAssetResourcePath
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  resourceURL = [v2 resourceURL];

  v4 = _LTOSLogAssets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    path = [resourceURL path];
    v9 = 138543362;
    v10 = path;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Fallback asset resource path : %{public}@", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];

  return resourceURL;
}

- (id)languageDetectorAssetWithError:(id *)error
{
  v3 = +[_LTOfflineAssetManager fallBackAssetResourcePath];
  v4 = [v3 URLByAppendingPathComponent:@"LanguageDetectorDefaultAsset"];
  v5 = [v4 URLByAppendingPathComponent:@"featureCombinationLID.plist"];
  if (([v5 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {

    v5 = 0;
  }

  v6 = [[_LTLanguageDetectorAssetInfo alloc] initWithAssetUrl:v4 featureCombinationAssetUrl:v5];

  return v6;
}

- (void)assetSize:(id)size
{
  v49 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  v43 = 0;
  v4 = [_LTDConfigurationService assetConfigurationWithError:&v43];
  v5 = v43;
  if (v5)
  {
    v6 = _LTOSLogAssets();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager assetSize:];
      if (!sizeCopy)
      {
        goto LABEL_32;
      }

      goto LABEL_4;
    }

    if (sizeCopy)
    {
LABEL_4:
      sizeCopy[2](sizeCopy, 0, v5);
    }
  }

  else
  {
    v28 = sizeCopy;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    currentSpeechTranslationAssetType = [v4 currentSpeechTranslationAssetType];
    v47[0] = currentSpeechTranslationAssetType;
    v27 = v4;
    currentEndpointAssetType = [v4 currentEndpointAssetType];
    v47[1] = currentEndpointAssetType;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];

    obj = v9;
    v31 = [v9 countByEnumeratingWithState:&v39 objects:v48 count:16];
    v10 = 0;
    if (v31)
    {
      v30 = *v40;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v40 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v39 + 1) + 8 * v11);
          v38 = 0;
          v13 = [_LTDAssetService queryAssetType:v12 filter:2 error:&v38];
          v14 = v38;
          v15 = v14;
          if (!v13)
          {
            v25 = _LTOSLogAssets();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v46 = v15;
              _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_INFO, "Asset size calculation failure: %@", buf, 0xCu);
            }

            sizeCopy = v28;
            v28[2](v28, 0, v15);

            goto LABEL_31;
          }

          v32 = v11;
          v33 = v14;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v16 = v13;
          v17 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v35;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v35 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v34 + 1) + 8 * i);
                if ([v21 unarchivedSize] && objc_msgSend(v21, "unarchivedSize") > 0)
                {
                  v10 += [v21 unarchivedSize];
                }

                else
                {
                  v22 = _LTOSLogAssets();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v46 = v21;
                    _os_log_impl(&dword_232E53000, v22, OS_LOG_TYPE_INFO, "Asset unarchive size is nil or less than 1: %@", buf, 0xCu);
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
            }

            while (v18);
          }

          v11 = v32 + 1;
        }

        while (v32 + 1 != v31);
        v31 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
    v24 = _LTOSLogAssets();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v46 = v23;
      _os_log_impl(&dword_232E53000, v24, OS_LOG_TYPE_INFO, "Asset size calculated as %{public}@", buf, 0xCu);
    }

    sizeCopy = v28;
    (v28)[2](v28, v23, 0);

LABEL_31:
    v5 = 0;
    v4 = v27;
  }

LABEL_32:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_queryLanguagePairStatusWithCompletion:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to read asset catalogs for language pair status query %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)assetDirectory
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to create asset directory %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_assetIdentifiersForLanguagePairDirectory:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Failed to deserialize JSON at path '%{public}@' error %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)assetIdentifierReferenceCountDictionary
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to get language pair asset directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)purgeAssetForLanguagePair:userInitiated:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Failed to purge assets for language pair %{public}@: unable to get asset info: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)purgeAllAssetsExcludingConfig:(uint64_t *)a1 completion:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v3, v4, "Failed to delete asset link directory: %@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)purgeAllAssetsExcludingConfig:(uint64_t *)a1 completion:.cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v3, v4, "Failed asset query: %@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateAllAssets:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to read asset catalogs for asset update %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAllAssets:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to read offline configuration for asset update %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAssetSymLinksForLocalePairs:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to read asset catalogs for symlink update: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_downloadPassthroughAssetForLocale:userInitiated:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Failed to find matching ASR asset for download of pair %{public}@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)speechTranslationAssetInfoForLocalePair:taskHint:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Can't get speech asset info for pair %{public}@ because we couldn't get asset info; it may be unsupported: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_speechTranslationAssetInfoForLocalePair:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Failed to read offline configuration for asset pair %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_speechTranslationAssetInfoForLocalePair:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Failed to read asset catalog for asset pair %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_speechTranslationAssetInfoForLocalePair:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Failed to generate asset info for asset pair %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_speechTranslationAssetInfoForLocalePair:error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to read mt_app.offline.plist for asset pair %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_speechTranslationAssetInfoForLocalePair:installedAssets:catalogAssets:offlineConfig:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Error getting asset info for pair %{public}@; %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getEndpointerAssetWithType:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to read endpointer config: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getEndpointerAssetWithType:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to query endpointer assets: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)assetSize:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Error reading asset configuration: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end