@interface WBSOnDeviceSearchSuggestionsModelManager
+ (WBSOnDeviceSearchSuggestionsModelManager)sharedManager;
- (BOOL)haveModelForLocale:(id)locale;
- (BOOL)isLocaleSupported:(id)supported;
- (BOOL)needsSupportedLocaleUpdate;
- (WBSOnDeviceSearchSuggestionsModelManager)init;
- (id)_dictionaryToSave;
- (id)currentChecksumForModelWithLocale:(id)locale;
- (id)fileURLForModelWithLocale:(id)locale;
- (id)fileURLForModelWithLocaleIfDownloaded:(id)downloaded;
- (void)_updateModelFileOnDisk;
- (void)addOrUpdateModelForLocale:(id)locale withChecksum:(id)checksum;
- (void)clearModels;
- (void)updateSupportedModelLocales:(id)locales;
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
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v4 = urlForOfflineSearchDirectory();
    v5 = [defaultManager safari_ensureDirectoryExists:v4];

    v6 = urlForOfflineSearchModelPlist();
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    path = [v6 path];
    v9 = [defaultManager2 fileExistsAtPath:path];

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
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v10 = v2->_localeIdentifiersToChecksums;
      v2->_localeIdentifiersToChecksums = dictionary;
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
  selfCopy = self;
  os_unfair_lock_lock(&self->_modelDataLock);
  v3 = selfCopy->_supportedLocaleIdentifiers;
  os_unfair_lock_unlock(&selfCopy->_modelDataLock);
  LOBYTE(selfCopy) = [(NSSet *)v3 count]== 0;

  return selfCopy;
}

void __57__WBSOnDeviceSearchSuggestionsModelManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WBSOnDeviceSearchSuggestionsModelManager);
  v1 = sharedManager_sharedManager_2;
  sharedManager_sharedManager_2 = v0;
}

- (void)addOrUpdateModelForLocale:(id)locale withChecksum:(id)checksum
{
  checksumCopy = checksum;
  localeCopy = locale;
  os_unfair_lock_lock(&self->_modelDataLock);
  localeIdentifiersToChecksums = self->_localeIdentifiersToChecksums;
  safari_localeStringInOfflineSearchModelFormat = [localeCopy safari_localeStringInOfflineSearchModelFormat];

  [(NSMutableDictionary *)localeIdentifiersToChecksums setObject:checksumCopy forKeyedSubscript:safari_localeStringInOfflineSearchModelFormat];
  os_unfair_lock_unlock(&self->_modelDataLock);

  [(WBSOnDeviceSearchSuggestionsModelManager *)self _updateModelFileOnDisk];
}

- (void)updateSupportedModelLocales:(id)locales
{
  localesCopy = locales;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    os_unfair_lock_lock(&self->_modelDataLock);
    v4 = [MEMORY[0x1E695DFD8] setWithArray:localesCopy];
    supportedLocaleIdentifiers = self->_supportedLocaleIdentifiers;
    self->_supportedLocaleIdentifiers = v4;

    os_unfair_lock_unlock(&self->_modelDataLock);
    [(WBSOnDeviceSearchSuggestionsModelManager *)self _updateModelFileOnDisk];
  }
}

- (void)clearModels
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = urlForOfflineSearchDirectory();
  [defaultManager safari_removeContentsOfDirectory:v4];

  os_unfair_lock_lock(&self->_modelDataLock);
  [(NSMutableDictionary *)self->_localeIdentifiersToChecksums removeAllObjects];
  supportedLocaleIdentifiers = self->_supportedLocaleIdentifiers;
  self->_supportedLocaleIdentifiers = 0;

  os_unfair_lock_unlock(&self->_modelDataLock);
}

- (id)fileURLForModelWithLocale:(id)locale
{
  localeCopy = locale;
  v4 = urlForOfflineSearchDirectory();
  v5 = MEMORY[0x1E696AEC0];
  safari_localeStringInOfflineSearchModelFormat = [localeCopy safari_localeStringInOfflineSearchModelFormat];

  v7 = [v5 stringWithFormat:@"%@.bin", safari_localeStringInOfflineSearchModelFormat];
  v8 = [v4 URLByAppendingPathComponent:v7];

  return v8;
}

- (id)fileURLForModelWithLocaleIfDownloaded:(id)downloaded
{
  downloadedCopy = downloaded;
  if ([(WBSOnDeviceSearchSuggestionsModelManager *)self haveModelForLocale:downloadedCopy])
  {
    v5 = [(WBSOnDeviceSearchSuggestionsModelManager *)self fileURLForModelWithLocale:downloadedCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)haveModelForLocale:(id)locale
{
  localeCopy = locale;
  os_unfair_lock_lock(&self->_modelDataLock);
  localeIdentifiersToChecksums = self->_localeIdentifiersToChecksums;
  safari_localeStringInOfflineSearchModelFormat = [localeCopy safari_localeStringInOfflineSearchModelFormat];

  v7 = [(NSMutableDictionary *)localeIdentifiersToChecksums objectForKeyedSubscript:safari_localeStringInOfflineSearchModelFormat];

  os_unfair_lock_unlock(&self->_modelDataLock);
  return v7 != 0;
}

- (BOOL)isLocaleSupported:(id)supported
{
  supportedCopy = supported;
  os_unfair_lock_lock(&self->_modelDataLock);
  supportedLocaleIdentifiers = self->_supportedLocaleIdentifiers;
  safari_localeStringInOfflineSearchModelFormat = [supportedCopy safari_localeStringInOfflineSearchModelFormat];

  LOBYTE(supportedCopy) = [(NSSet *)supportedLocaleIdentifiers containsObject:safari_localeStringInOfflineSearchModelFormat];
  os_unfair_lock_unlock(&self->_modelDataLock);
  return supportedCopy;
}

- (id)currentChecksumForModelWithLocale:(id)locale
{
  localeCopy = locale;
  os_unfair_lock_lock(&self->_modelDataLock);
  localeIdentifiersToChecksums = self->_localeIdentifiersToChecksums;
  safari_localeStringInOfflineSearchModelFormat = [localeCopy safari_localeStringInOfflineSearchModelFormat];

  v7 = [(NSMutableDictionary *)localeIdentifiersToChecksums objectForKeyedSubscript:safari_localeStringInOfflineSearchModelFormat];

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
  allObjects = [(NSSet *)self->_supportedLocaleIdentifiers allObjects];
  v5 = allObjects;
  if (allObjects)
  {
    v6 = allObjects;
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