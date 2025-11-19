@interface WBSOnDeviceSearchSuggestionsModelManager
+ (WBSOnDeviceSearchSuggestionsModelManager)sharedManager;
- (BOOL)haveModelForLocale:(id)a3;
- (BOOL)isLocaleSupported:(id)a3;
- (BOOL)needsSupportedLocaleUpdate;
- (WBSOnDeviceSearchSuggestionsModelManager)init;
- (id)_dictionaryToSave;
- (id)currentChecksumForModelWithLocale:(id)a3;
- (id)fileURLForModelWithLocale:(id)a3;
- (id)fileURLForModelWithLocaleIfDownloaded:(id)a3;
- (void)_updateModelFileOnDisk;
- (void)addOrUpdateModelForLocale:(id)a3 withChecksum:(id)a4;
- (void)clearModels;
- (void)updateSupportedModelLocales:(id)a3;
@end

@implementation WBSOnDeviceSearchSuggestionsModelManager

+ (WBSOnDeviceSearchSuggestionsModelManager)sharedManager
{
  if (sharedManager_onceToken_4 != -1)
  {
    +[WBSOnDeviceSearchSuggestionsModelManager sharedManager];
  }

  v3 = sharedManager_sharedManager_2;

  return v3;
}

- (WBSOnDeviceSearchSuggestionsModelManager)init
{
  v18.receiver = self;
  v18.super_class = WBSOnDeviceSearchSuggestionsModelManager;
  v2 = [(WBSOnDeviceSearchSuggestionsModelManager *)&v18 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = urlForOfflineSearchDirectory();
    v5 = [v3 safari_ensureDirectoryExists:v4];

    v6 = urlForOfflineSearchModelPlist();
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v6 path];
    v9 = [v7 fileExistsAtPath:v8];

    if (v9)
    {
      v10 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfURL:v6];
      v11 = [v10 objectForKeyedSubscript:@"SupportedLocales"];
      [(WBSOnDeviceSearchSuggestionsModelManager *)v2 updateSupportedModelLocales:v11];

      v12 = [v10 objectForKeyedSubscript:@"DownloadedModels"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 mutableCopy];
      }

      else
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      localeIdentifiersToChecksums = v2->_localeIdentifiersToChecksums;
      v2->_localeIdentifiersToChecksums = v13;
    }

    else
    {
      v14 = [MEMORY[0x1E695DF90] dictionary];
      v10 = v2->_localeIdentifiersToChecksums;
      v2->_localeIdentifiersToChecksums = v14;
    }

    v2->_modelDataLock._os_unfair_lock_opaque = 0;
    v16 = v2;
  }

  return v2;
}

- (void)_updateModelFileOnDisk
{
  asyncWriter = self->_asyncWriter;
  if (!asyncWriter)
  {
    v4 = objc_alloc(MEMORY[0x1E69C8840]);
    v5 = urlForOfflineSearchModelPlist();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__WBSOnDeviceSearchSuggestionsModelManager__updateModelFileOnDisk__block_invoke;
    v8[3] = &unk_1E7FC8968;
    v8[4] = self;
    v6 = [v4 initWithName:@"OfflineModelPlist" fileURL:v5 dataSourceBlock:v8];
    v7 = self->_asyncWriter;
    self->_asyncWriter = v6;

    asyncWriter = self->_asyncWriter;
  }

  [(WBSCoalescedAsynchronousWriter *)asyncWriter scheduleWrite];
}

- (BOOL)needsSupportedLocaleUpdate
{
  v2 = self;
  os_unfair_lock_lock(&self->_modelDataLock);
  v3 = v2->_supportedLocaleIdentifiers;
  os_unfair_lock_unlock(&v2->_modelDataLock);
  LOBYTE(v2) = [(NSSet *)v3 count]== 0;

  return v2;
}

void __57__WBSOnDeviceSearchSuggestionsModelManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WBSOnDeviceSearchSuggestionsModelManager);
  v1 = sharedManager_sharedManager_2;
  sharedManager_sharedManager_2 = v0;
}

- (void)addOrUpdateModelForLocale:(id)a3 withChecksum:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_modelDataLock);
  localeIdentifiersToChecksums = self->_localeIdentifiersToChecksums;
  v9 = [v7 safari_localeStringInOfflineSearchModelFormat];

  [(NSMutableDictionary *)localeIdentifiersToChecksums setObject:v6 forKeyedSubscript:v9];
  os_unfair_lock_unlock(&self->_modelDataLock);

  [(WBSOnDeviceSearchSuggestionsModelManager *)self _updateModelFileOnDisk];
}

- (void)updateSupportedModelLocales:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    os_unfair_lock_lock(&self->_modelDataLock);
    v4 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    supportedLocaleIdentifiers = self->_supportedLocaleIdentifiers;
    self->_supportedLocaleIdentifiers = v4;

    os_unfair_lock_unlock(&self->_modelDataLock);
    [(WBSOnDeviceSearchSuggestionsModelManager *)self _updateModelFileOnDisk];
  }
}

- (void)clearModels
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = urlForOfflineSearchDirectory();
  [v3 safari_removeContentsOfDirectory:v4];

  os_unfair_lock_lock(&self->_modelDataLock);
  [(NSMutableDictionary *)self->_localeIdentifiersToChecksums removeAllObjects];
  supportedLocaleIdentifiers = self->_supportedLocaleIdentifiers;
  self->_supportedLocaleIdentifiers = 0;

  os_unfair_lock_unlock(&self->_modelDataLock);
}

- (id)fileURLForModelWithLocale:(id)a3
{
  v3 = a3;
  v4 = urlForOfflineSearchDirectory();
  v5 = MEMORY[0x1E696AEC0];
  v6 = [v3 safari_localeStringInOfflineSearchModelFormat];

  v7 = [v5 stringWithFormat:@"%@.bin", v6];
  v8 = [v4 URLByAppendingPathComponent:v7];

  return v8;
}

- (id)fileURLForModelWithLocaleIfDownloaded:(id)a3
{
  v4 = a3;
  if ([(WBSOnDeviceSearchSuggestionsModelManager *)self haveModelForLocale:v4])
  {
    v5 = [(WBSOnDeviceSearchSuggestionsModelManager *)self fileURLForModelWithLocale:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)haveModelForLocale:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_modelDataLock);
  localeIdentifiersToChecksums = self->_localeIdentifiersToChecksums;
  v6 = [v4 safari_localeStringInOfflineSearchModelFormat];

  v7 = [(NSMutableDictionary *)localeIdentifiersToChecksums objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_modelDataLock);
  return v7 != 0;
}

- (BOOL)isLocaleSupported:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_modelDataLock);
  supportedLocaleIdentifiers = self->_supportedLocaleIdentifiers;
  v6 = [v4 safari_localeStringInOfflineSearchModelFormat];

  LOBYTE(v4) = [(NSSet *)supportedLocaleIdentifiers containsObject:v6];
  os_unfair_lock_unlock(&self->_modelDataLock);
  return v4;
}

- (id)currentChecksumForModelWithLocale:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_modelDataLock);
  localeIdentifiersToChecksums = self->_localeIdentifiersToChecksums;
  v6 = [v4 safari_localeStringInOfflineSearchModelFormat];

  v7 = [(NSMutableDictionary *)localeIdentifiersToChecksums objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_modelDataLock);

  return v7;
}

id __66__WBSOnDeviceSearchSuggestionsModelManager__updateModelFileOnDisk__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AE40];
  v2 = [*(a1 + 32) _dictionaryToSave];
  v7 = 0;
  v3 = [v1 dataWithPropertyList:v2 format:200 options:0 error:&v7];
  v4 = v7;

  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __66__WBSOnDeviceSearchSuggestionsModelManager__updateModelFileOnDisk__block_invoke_cold_1(v5, v4);
    }
  }

  return v3;
}

- (id)_dictionaryToSave
{
  v14[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_modelDataLock);
  v3 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__WBSOnDeviceSearchSuggestionsModelManager__dictionaryToSave__block_invoke;
  v12[3] = &unk_1E7FB6D90;
  v12[4] = self;
  [v3 setHandler:v12];
  v13[0] = @"SupportedLocales";
  v4 = [(NSSet *)self->_supportedLocaleIdentifiers allObjects];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v13[1] = @"DownloadedModels";
  v14[0] = v6;
  v7 = [(NSMutableDictionary *)self->_localeIdentifiersToChecksums copy];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v9 = v7;
  }

  v14[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v10;
}

void __66__WBSOnDeviceSearchSuggestionsModelManager__updateModelFileOnDisk__block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_ERROR, "Failed to serialize OfflineSearch plist: %{public}@", &v5, 0xCu);
}

@end