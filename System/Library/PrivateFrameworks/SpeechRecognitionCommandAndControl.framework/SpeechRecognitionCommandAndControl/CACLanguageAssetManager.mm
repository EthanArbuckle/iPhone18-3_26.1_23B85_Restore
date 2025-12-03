@interface CACLanguageAssetManager
+ (BOOL)isAssetsInstalledForBestLocale;
+ (BOOL)isAssetsInstalledForLocale:(id)locale;
+ (id)downloadedLocaleIdentifiers;
+ (id)downloadingLocaleIdentifiers;
+ (id)sharedManager;
- (CACLanguageAssetManager)init;
- (id)downloadProgressForLanguage:(id)language;
- (id)installationStatus;
- (id)purgeInstalledAsset;
- (id)supportedLocaleIdentifiers;
- (unint64_t)errorStatusForLanguage:(id)language;
- (void)_downloadProgressCallback:(__CFDictionary *)callback;
- (void)_fetchInstallationStatusSynchronously:(BOOL)synchronously completion:(id)completion;
- (void)_handleErrorInDownloadForLanguage:(id)language;
- (void)_sendProgressNotificationIfNeededForLanguage:(id)language;
- (void)_updateInstallationStatusFromDownloadStatus:(__CFDictionary *)status;
- (void)registerForCallback;
- (void)startDownloadOfLanguage:(id)language;
@end

@implementation CACLanguageAssetManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[CACLanguageAssetManager sharedManager];
  }

  v3 = sCACLanguageAssetManager;

  return v3;
}

uint64_t __40__CACLanguageAssetManager_sharedManager__block_invoke()
{
  sCACLanguageAssetManager = [objc_allocWithZone(CACLanguageAssetManager) init];

  return MEMORY[0x2821F96F8]();
}

- (CACLanguageAssetManager)init
{
  v10.receiver = self;
  v10.super_class = CACLanguageAssetManager;
  v2 = [(CACLanguageAssetManager *)&v10 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    downloadProgressDictionary = v2->_downloadProgressDictionary;
    v2->_downloadProgressDictionary = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    lastReportedProgressDictionary = v2->_lastReportedProgressDictionary;
    v2->_lastReportedProgressDictionary = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    downloadErrorDictionary = v2->_downloadErrorDictionary;
    v2->_downloadErrorDictionary = dictionary3;

    v2->_isInstallationStatusStale = 1;
  }

  return v2;
}

- (void)_fetchInstallationStatusSynchronously:(BOOL)synchronously completion:(id)completion
{
  synchronouslyCopy = synchronously;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__CACLanguageAssetManager__fetchInstallationStatusSynchronously_completion___block_invoke;
  aBlock[3] = &unk_279CEBA28;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__CACLanguageAssetManager__fetchInstallationStatusSynchronously_completion___block_invoke_2;
  v18[3] = &unk_279CEBA70;
  v18[4] = self;
  v8 = _Block_copy(v18);
  v9 = v8;
  if (synchronouslyCopy)
  {
    v10 = (*(v8 + 2))(v8);
    v7[2](v7, v10);
    completionCopy[2](completionCopy, v10);
  }

  else
  {
    installationStatusQueue = self->_installationStatusQueue;
    if (!installationStatusQueue)
    {
      v12 = dispatch_queue_create("com.apple.commandandcontrol.installationStatusQueue", 0);
      v13 = self->_installationStatusQueue;
      self->_installationStatusQueue = v12;

      installationStatusQueue = self->_installationStatusQueue;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__CACLanguageAssetManager__fetchInstallationStatusSynchronously_completion___block_invoke_4;
    block[3] = &unk_279CEBAC0;
    v15 = v9;
    v16 = v7;
    v17 = completionCopy;
    dispatch_async(installationStatusQueue, block);

    v10 = v15;
  }
}

uint64_t __76__CACLanguageAssetManager__fetchInstallationStatusSynchronously_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setCachedInstallationStatus:a2];
  [*(a1 + 32) setInstallationStatusAvailable:1];
  [*(a1 + 32) setIsInstallationStatusStale:0];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_markInstallationStatusStale object:0];
  v3 = *(a1 + 32);

  return [v3 performSelector:sel_markInstallationStatusStale withObject:0 afterDelay:10.0];
}

id __76__CACLanguageAssetManager__fetchInstallationStatusSynchronously_completion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isInstallationStatusStale])
  {
    v2 = RXObjectCopyProperty();
    v3 = [v2 mutableCopy];

    v4 = +[CACPreferences sharedPreferences];
    v5 = [v4 userSelectableLocaleIdentifiers];
    v6 = [v5 ax_mappedArrayUsingBlock:&__block_literal_global_325];

    v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v3 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if (([v7 containsObject:v13] & 1) == 0)
          {
            [v3 removeObjectForKey:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v3 = [*(a1 + 32) cachedInstallationStatus];
  }

  return v3;
}

void __76__CACLanguageAssetManager__fetchInstallationStatusSynchronously_completion___block_invoke_4(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CACLanguageAssetManager__fetchInstallationStatusSynchronously_completion___block_invoke_5;
  block[3] = &unk_279CEBA98;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v8 = *(a1 + 48);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __76__CACLanguageAssetManager__fetchInstallationStatusSynchronously_completion___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)installationStatus
{
  if ([(CACLanguageAssetManager *)self isInstallationStatusStale])
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__0;
    v10 = __Block_byref_object_dispose__0;
    v11 = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __45__CACLanguageAssetManager_installationStatus__block_invoke;
    v5[3] = &unk_279CEBAE8;
    v5[4] = &v6;
    [(CACLanguageAssetManager *)self _fetchInstallationStatusSynchronously:1 completion:v5];
    cachedInstallationStatus = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    cachedInstallationStatus = [(CACLanguageAssetManager *)self cachedInstallationStatus];
  }

  return cachedInstallationStatus;
}

- (void)startDownloadOfLanguage:(id)language
{
  languageCopy = language;
  installationStatus = [(CACLanguageAssetManager *)self installationStatus];
  v5 = [installationStatus objectForKey:languageCopy];

  if (([v5 hasPrefix:@"Version:"] & 1) == 0)
  {
    [(CACLanguageAssetManager *)self registerForCallback];
  }

  RXObjectSetProperty();
}

- (id)purgeInstalledAsset
{
  v3 = RXObjectCopyProperty();
  [(CACLanguageAssetManager *)self markInstallationStatusStale];

  return v3;
}

- (id)supportedLocaleIdentifiers
{
  v2 = RXObjectCopyProperty();

  return v2;
}

- (id)downloadProgressForLanguage:(id)language
{
  languageCopy = language;
  downloadProgressDictionary = [(CACLanguageAssetManager *)self downloadProgressDictionary];
  v6 = [downloadProgressDictionary objectForKey:languageCopy];

  return v6;
}

- (unint64_t)errorStatusForLanguage:(id)language
{
  languageCopy = language;
  downloadErrorDictionary = [(CACLanguageAssetManager *)self downloadErrorDictionary];
  v6 = [downloadErrorDictionary objectForKey:languageCopy];

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)registerForCallback
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__CACLanguageAssetManager_registerForCallback__block_invoke;
  v2[3] = &unk_279CEBB10;
  objc_copyWeak(&v3, &location);
  MEMORY[0x26D676850](v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __46__CACLanguageAssetManager_registerForCallback__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _downloadProgressCallback:a2];
}

+ (BOOL)isAssetsInstalledForBestLocale
{
  v3 = +[CACPreferences sharedPreferences];
  bestLocaleIdentifier = [v3 bestLocaleIdentifier];
  LOBYTE(self) = [self isAssetsInstalledForLocale:bestLocaleIdentifier];

  return self;
}

+ (BOOL)isAssetsInstalledForLocale:(id)locale
{
  localeCopy = locale;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  downloadedLocaleIdentifiers = [self downloadedLocaleIdentifiers];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__CACLanguageAssetManager_isAssetsInstalledForLocale___block_invoke;
  v8[3] = &unk_279CEBB38;
  v6 = localeCopy;
  v9 = v6;
  v10 = &v11;
  [downloadedLocaleIdentifiers enumerateObjectsUsingBlock:v8];

  LOBYTE(downloadedLocaleIdentifiers) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return downloadedLocaleIdentifiers;
}

void __54__CACLanguageAssetManager_isAssetsInstalledForLocale___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [CACLocaleUtilities normalizedLocaleIdentifier:a2];
  v6 = [CACLocaleUtilities normalizedLocaleIdentifier:*(a1 + 32)];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

+ (id)downloadedLocaleIdentifiers
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = [MEMORY[0x277CBEB58] set];
  v2 = +[CACLanguageAssetManager sharedManager];
  installationStatus = [v2 installationStatus];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = +[CACLanguageAssetManager sharedManager];
  supportedLocaleIdentifiers = [v4 supportedLocaleIdentifiers];

  obj = supportedLocaleIdentifiers;
  v6 = [supportedLocaleIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
        v12 = [installationStatus objectForKey:v11];
        if ([v12 hasPrefix:@"Version:"])
        {
          [v14 addObject:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v14;
}

+ (id)downloadingLocaleIdentifiers
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = +[CACLanguageAssetManager sharedManager];
  installationStatus = [v2 installationStatus];

  v3 = +[CACLanguageAssetManager downloadedLocaleIdentifiers];
  v21 = [MEMORY[0x277CBEB58] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = +[CACPreferences sharedPreferences];
  userSelectableLocaleIdentifiers = [v4 userSelectableLocaleIdentifiers];

  obj = userSelectableLocaleIdentifiers;
  v6 = [userSelectableLocaleIdentifiers countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if (([v3 containsObject:v10] & 1) == 0)
        {
          v11 = [v10 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
          v12 = [installationStatus objectForKey:v11];
          v13 = +[CACLanguageAssetManager sharedManager];
          v14 = [v13 downloadProgressForLanguage:v11];

          v15 = [v14 objectForKey:@"DownloadProgressDictionaryKeyPercentage"];
          [v15 floatValue];
          v17 = v16;

          if (v12 || ([v14 objectForKey:@"DownloadProgressDictionaryKeyCompleted"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, (v19 & 1) == 0) && v17 > 0.0)
          {
            [v21 addObject:v10];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  return v21;
}

- (void)_downloadProgressCallback:(__CFDictionary *)callback
{
  [(CACLanguageAssetManager *)self setDownloadProgress:?];
  [(CACLanguageAssetManager *)self _updateInstallationStatusFromDownloadStatus:callback];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"CACNotificationAssetDownloadProgressChanged" object:0];
}

- (void)_updateInstallationStatusFromDownloadStatus:(__CFDictionary *)status
{
  v38[4] = *MEMORY[0x277D85DE8];
  v5 = CFDictionaryGetValue(status, @"Language");
  v6 = CFDictionaryGetValue(status, @"Phase");
  if ([v6 isEqualToString:@"Idle"])
  {
    goto LABEL_2;
  }

  if ([v6 isEqualToString:@"DownloadFailed"])
  {
    [(CACLanguageAssetManager *)self markInstallationStatusStale];
    if (CFDictionaryGetValue(status, @"Error") != *MEMORY[0x277CBEEE8] && CFDictionaryGetValue(status, @"Error"))
    {
      v7 = CFDictionaryGetValue(status, @"Error");
      v8 = CACLogAssetDownload();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CACLanguageAssetManager _updateInstallationStatusFromDownloadStatus:];
      }

      if (v5)
      {
        downloadErrorDictionary = [(CACLanguageAssetManager *)self downloadErrorDictionary];
        [downloadErrorDictionary setObject:&unk_287BEFCA0 forKey:v5];

        [(CACLanguageAssetManager *)self _handleErrorInDownloadForLanguage:v5];
      }
    }

    goto LABEL_2;
  }

  if ([v6 isEqualToString:@"Stalled"])
  {
    downloadErrorDictionary2 = [(CACLanguageAssetManager *)self downloadErrorDictionary];
    [downloadErrorDictionary2 setObject:&unk_287BEFCB8 forKey:v5];

    [(CACLanguageAssetManager *)self _handleErrorInDownloadForLanguage:v5];
    goto LABEL_2;
  }

  if ([v6 isEqualToString:@"Downloaded"])
  {
    [(CACLanguageAssetManager *)self markInstallationStatusStale];
    downloadErrorDictionary3 = [(CACLanguageAssetManager *)self downloadErrorDictionary];
    [downloadErrorDictionary3 setObject:&unk_287BEFCD0 forKey:v5];

    [(CACLanguageAssetManager *)self _handleErrorInDownloadForLanguage:v5];
    downloadProgressDictionary = [(CACLanguageAssetManager *)self downloadProgressDictionary];
    v13 = [downloadProgressDictionary objectForKey:v5];
    [v13 setObject:MEMORY[0x277CBEC38] forKey:@"DownloadProgressDictionaryKeyCompleted"];

    v14 = CACLogAssetDownload();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(CACLanguageAssetManager *)v5 _updateInstallationStatusFromDownloadStatus:?];
    }

LABEL_22:
    [(CACLanguageAssetManager *)self _sendProgressNotificationIfNeededForLanguage:v5];
    goto LABEL_2;
  }

  if (([v6 isEqualToString:@"Cancelled"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"CancelFailed"))
  {
    v15 = CACLogAssetDownload();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(CACLanguageAssetManager *)v6 _updateInstallationStatusFromDownloadStatus:v15];
    }

    downloadProgressDictionary2 = [(CACLanguageAssetManager *)self downloadProgressDictionary];
    v17 = [downloadProgressDictionary2 objectForKey:v5];
    [v17 setObject:MEMORY[0x277CBEC28] forKey:@"DownloadProgressDictionaryKeyCompleted"];

    downloadProgressDictionary3 = [(CACLanguageAssetManager *)self downloadProgressDictionary];
    v19 = [downloadProgressDictionary3 objectForKey:v5];
    [v19 setObject:&unk_287BEFCE8 forKey:@"DownloadProgressDictionaryKeyPercentage"];

    [(CACLanguageAssetManager *)self markInstallationStatusStale];
    goto LABEL_22;
  }

  if (![v6 isEqualToString:@"Downloading"])
  {
    [(CACLanguageAssetManager *)self markInstallationStatusStale];
    v25 = CACLogAssetDownload();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CACLanguageAssetManager _updateInstallationStatusFromDownloadStatus:];
    }

    goto LABEL_31;
  }

  downloadErrorDictionary4 = [(CACLanguageAssetManager *)self downloadErrorDictionary];
  [downloadErrorDictionary4 setObject:&unk_287BEFCD0 forKey:v5];

  [(CACLanguageAssetManager *)self _handleErrorInDownloadForLanguage:v5];
  valuePtr = -1.0;
  Value = CFDictionaryGetValue(status, @"TimeRemaining");
  CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
  v35 = -1.0;
  v22 = CFDictionaryGetValue(status, @"BytesWritten");
  CFNumberGetValue(v22, kCFNumberFloatType, &v35);
  v34 = -1.0;
  v23 = CFDictionaryGetValue(status, @"BytesTotal");
  CFNumberGetValue(v23, kCFNumberFloatType, &v34);
  if (valuePtr == -1.0 && v35 == -1.0 && v34 <= 0.0)
  {
    v25 = CACLogAssetDownload();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CACLanguageAssetManager _updateInstallationStatusFromDownloadStatus:];
    }

LABEL_31:

    goto LABEL_2;
  }

  if (v35 == -1.0 || v34 <= 0.0)
  {
    v25 = CACLogAssetDownload();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CACLanguageAssetManager _updateInstallationStatusFromDownloadStatus:];
    }

    goto LABEL_31;
  }

  if (valuePtr == -1.0)
  {
    v25 = CACLogAssetDownload();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CACLanguageAssetManager _updateInstallationStatusFromDownloadStatus:];
    }

    goto LABEL_31;
  }

  v37[0] = @"DownloadProgressDictionaryKeyPercentage";
  *&v24 = v35 / v34;
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  v38[0] = v26;
  v37[1] = @"DownloadProgressDictionaryKeyTimeRemaining";
  *&v27 = valuePtr;
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v38[1] = v28;
  v37[2] = @"DownloadProgressDictionaryKeyTotalBytes";
  *&v29 = v34;
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v37[3] = @"DownloadProgressDictionaryKeyCompleted";
  v38[2] = v30;
  v38[3] = MEMORY[0x277CBEC28];
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
  v32 = [v31 mutableCopy];

  if (v32)
  {
    downloadProgressDictionary4 = [(CACLanguageAssetManager *)self downloadProgressDictionary];
    [downloadProgressDictionary4 setObject:v32 forKey:v5];
  }

  [(CACLanguageAssetManager *)self _sendProgressNotificationIfNeededForLanguage:v5];

LABEL_2:
}

- (void)_sendProgressNotificationIfNeededForLanguage:(id)language
{
  v37 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  downloadProgressDictionary = [(CACLanguageAssetManager *)self downloadProgressDictionary];
  v6 = [downloadProgressDictionary objectForKey:languageCopy];

  lastReportedProgressDictionary = [(CACLanguageAssetManager *)self lastReportedProgressDictionary];
  v8 = [lastReportedProgressDictionary objectForKey:languageCopy];

  v9 = [v6 objectForKey:@"DownloadProgressDictionaryKeyPercentage"];
  [v9 floatValue];
  v11 = v10;

  v12 = [v6 objectForKey:@"DownloadProgressDictionaryKeyTotalBytes"];
  [v12 floatValue];
  v14 = v13;

  v15 = [v6 objectForKey:@"DownloadProgressDictionaryKeyTimeRemaining"];
  [v15 floatValue];
  v17 = v16;

  v18 = [v8 objectForKey:@"DownloadProgressDictionaryKeyPercentage"];
  [v18 floatValue];
  v20 = v19;

  v21 = [v8 objectForKey:@"DownloadProgressDictionaryKeyTotalBytes"];
  [v21 floatValue];
  v23 = v22;

  v24 = [v8 objectForKey:@"DownloadProgressDictionaryKeyTimeRemaining"];
  [v24 floatValue];
  v26 = v25;

  v27 = [v6 objectForKey:@"DownloadProgressDictionaryKeyCompleted"];
  bOOLValue = [v27 BOOLValue];

  if (!v6 || bOOLValue || v20 != v11 || v26 != v17 || v23 != v14)
  {
    if (v6)
    {
      lastReportedProgressDictionary2 = [(CACLanguageAssetManager *)self lastReportedProgressDictionary];
      [lastReportedProgressDictionary2 setObject:v6 forKey:languageCopy];
    }

    v30 = CACLogAssetDownload();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 138412546;
      v34 = languageCopy;
      v35 = 2048;
      v36 = v11;
      _os_log_impl(&dword_26B354000, v30, OS_LOG_TYPE_DEFAULT, "percent %@: %f", &v33, 0x16u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationAssetDownloadProgressChanged", 0, 0, 1u);
    v32 = CACLogAssetDownload();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [CACLanguageAssetManager _sendProgressNotificationIfNeededForLanguage:];
    }
  }
}

- (void)_handleErrorInDownloadForLanguage:(id)language
{
  v16 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  downloadErrorDictionary = [(CACLanguageAssetManager *)self downloadErrorDictionary];
  v6 = [downloadErrorDictionary objectForKey:languageCopy];
  integerValue = [v6 integerValue];

  v8 = CACLogAssetDownload();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(CACLanguageAssetManager *)languageCopy _handleErrorInDownloadForLanguage:?];
  }

  if (integerValue)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationAssetDownloadProgressErrorOccured", 0, 0, 1u);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"CACNotificationAssetDownloadErrorOccured" object:languageCopy];

    v11 = CACLogAssetDownload();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = @"CACNotificationAssetDownloadProgressErrorOccured";
      v14 = 2112;
      v15 = languageCopy;
      _os_log_impl(&dword_26B354000, v11, OS_LOG_TYPE_INFO, "Sent error notification %@ for language %@", &v12, 0x16u);
    }
  }
}

- (void)_updateInstallationStatusFromDownloadStatus:(uint64_t)a1 .cold.5(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_26B354000, a2, OS_LOG_TYPE_DEBUG, "Received Cancel phase %@", &v2, 0xCu);
}

- (void)_updateInstallationStatusFromDownloadStatus:(uint64_t)a1 .cold.6(uint64_t a1, void *a2)
{
  v2 = [a2 downloadProgressDictionary];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_26B354000, v3, v4, "Setting completion dict for language %@: %@", v5, v6, v7, v8, 2u);
}

- (void)_sendProgressNotificationIfNeededForLanguage:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412546;
  v2 = @"CACNotificationAssetDownloadProgressChanged";
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_26B354000, v0, OS_LOG_TYPE_DEBUG, "Sent notification %@ for language %@", &v1, 0x16u);
}

- (void)_handleErrorInDownloadForLanguage:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 downloadErrorDictionary];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_26B354000, v3, v4, "Error for  language %@. Error Dictionary: %@", v5, v6, v7, v8, 2u);
}

@end