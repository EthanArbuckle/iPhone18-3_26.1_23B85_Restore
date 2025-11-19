@interface VSTrialService
+ (VSTrialService)sharedService;
+ (id)defaultDownloadOptions;
- (NSArray)cachedResources;
- (NSArray)cachedVoices;
- (VSTrialService)init;
- (id)_definedVoicesWithLanguage:(id)a3 name:(id)a4 type:(int64_t)a5 footprint:(int64_t)a6;
- (id)_directoryOfFactorName:(id)a3;
- (id)_fileOfFactorName:(id)a3;
- (id)definedVoiceResourcesWithLanguage:(id)a3;
- (id)definedVoicesWithAssets:(id)a3;
- (id)definedVoicesWithLanguage:(id)a3 name:(id)a4 type:(int64_t)a5 footprint:(int64_t)a6;
- (id)selectVoiceResourceWithLanguage:(id)a3;
- (id)selectVoiceWithLanguage:(id)a3 name:(id)a4 type:(int64_t)a5 footprint:(int64_t)a6;
- (void)_downloadFactorName:(id)a3 withOptions:(id)a4 progress:(id)a5 completion:(id)a6;
- (void)_removeAssetWithFactorName:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)downloadNamespaceImmediatelyIfNeededWithOption:(id)a3 completion:(id)a4;
- (void)downloadVoice:(id)a3 withOptions:(id)a4 progress:(id)a5 completion:(id)a6;
- (void)downloadVoiceResource:(id)a3 withOptions:(id)a4 progress:(id)a5 completion:(id)a6;
- (void)refreshTrialClient;
- (void)removeVoice:(id)a3 completion:(id)a4;
- (void)removeVoiceResource:(id)a3 completion:(id)a4;
@end

@implementation VSTrialService

- (void)_removeAssetWithFactorName:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = VSGetLogEvent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_272850000, v8, OS_LOG_TYPE_DEFAULT, "#Trial Removing asset with factor name: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  triClient = self->_triClient;
  v18 = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__VSTrialService__removeAssetWithFactorName_completion___block_invoke;
  v14[3] = &unk_279E4FAE0;
  v11 = v6;
  v15 = v11;
  objc_copyWeak(&v17, buf);
  v12 = v7;
  v16 = v12;
  [(TRIClient *)triClient removeLevelsForFactors:v10 withNamespace:@"SIRI_TEXT_TO_SPEECH" queue:0 completion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x277D85DE8];
}

void __56__VSTrialService__removeAssetWithFactorName_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = VSGetLogEvent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_272850000, v6, OS_LOG_TYPE_DEFAULT, "#Trial Removed asset with factor name: %@", &v12, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained refreshTrialClient];
  }

  else
  {
    WeakRetained = VSGetLogDefault();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 138412546;
      v13 = v11;
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&dword_272850000, WeakRetained, OS_LOG_TYPE_ERROR, "#Trial Unable to remove asset with factor name '%@', error: %@", &v12, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_downloadFactorName:(id)a3 withOptions:(id)a4 progress:(id)a5 completion:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = VSGetLogEvent();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v31 = v10;
    v32 = 1024;
    v33 = [v11 allowDiscretionary];
    v34 = 1024;
    v35 = [v11 allowCellularData];
    _os_log_impl(&dword_272850000, v14, OS_LOG_TYPE_DEFAULT, "#Trial Downloading asset with factor name: %@, discretionary:%d, allowCellular:%d", buf, 0x18u);
  }

  if (v11)
  {
    v15 = objc_alloc_init(MEMORY[0x277D736A8]);
    [v15 setAllowsCellularAccess:{objc_msgSend(v11, "allowCellularData")}];
    if ([v11 allowDiscretionary])
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    [v15 setDiscretionaryBehavior:v16];
  }

  else
  {
    v15 = +[VSTrialService defaultDownloadOptions];
  }

  objc_initWeak(buf, self);
  triClient = self->_triClient;
  v29 = v10;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __70__VSTrialService__downloadFactorName_withOptions_progress_completion___block_invoke;
  v27[3] = &unk_279E4FAB8;
  v19 = v12;
  v28 = v19;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __70__VSTrialService__downloadFactorName_withOptions_progress_completion___block_invoke_2;
  v23[3] = &unk_279E4FAE0;
  v20 = v10;
  v24 = v20;
  objc_copyWeak(&v26, buf);
  v21 = v13;
  v25 = v21;
  [(TRIClient *)triClient downloadLevelsForFactors:v18 withNamespace:@"SIRI_TEXT_TO_SPEECH" queue:0 options:v15 progress:v27 completion:v23];

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __70__VSTrialService__downloadFactorName_withOptions_progress_completion___block_invoke(uint64_t a1, unint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(a2 / 100.0);
  }

  return result;
}

void __70__VSTrialService__downloadFactorName_withOptions_progress_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = VSGetLogEvent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_272850000, v6, OS_LOG_TYPE_DEFAULT, "#Trial Downloaded asset with factor name: %@", &v12, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained refreshTrialClient];
  }

  else
  {
    WeakRetained = VSGetLogDefault();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 138412546;
      v13 = v11;
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&dword_272850000, WeakRetained, OS_LOG_TYPE_ERROR, "#Trial Unable to download asset with factor name: %@, error: %@", &v12, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)downloadNamespaceImmediatelyIfNeededWithOption:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  downloadQueue = self->_downloadQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__VSTrialService_downloadNamespaceImmediatelyIfNeededWithOption_completion___block_invoke;
  block[3] = &unk_279E4FA90;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(downloadQueue, block);
}

void __76__VSTrialService_downloadNamespaceImmediatelyIfNeededWithOption_completion___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) rolloutIdentifiersWithNamespaceName:@"SIRI_TEXT_TO_SPEECH"];
  if (v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else if ([*(a1 + 40) allowDiscretionary])
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272850000, v3, OS_LOG_TYPE_DEFAULT, "Skip immediate namespace download due to discretionary download option.", buf, 2u);
    }

    v4 = *(a1 + 48);
    v5 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"immediateDownloadForNamespaceNames cannot use discretionary download option.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v7 = [v5 errorWithDomain:@"VSTrialServiceErrorDomain" code:3 userInfo:v6];
    (*(v4 + 16))(v4, 0, v7);
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] setWithObject:@"SIRI_TEXT_TO_SPEECH"];
    v9 = VSGetLogDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272850000, v9, OS_LOG_TYPE_DEFAULT, "#Trial Start downloading SIRI_TEXT_TO_SPEECH namespace.", buf, 2u);
    }

    v10 = *(*(a1 + 32) + 8);
    v11 = [*(a1 + 40) allowCellularData];
    v17 = 0;
    v12 = [v10 immediateDownloadForNamespaceNames:v8 allowExpensiveNetworking:v11 error:&v17];
    v13 = v17;
    v14 = VSGetLogDefault();
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272850000, v15, OS_LOG_TYPE_DEFAULT, "#Trial Finished downloading SIRI_TEXT_TO_SPEECH namespace.", buf, 2u);
      }

      [*(a1 + 32) refreshTrialClient];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v13;
        _os_log_error_impl(&dword_272850000, v15, OS_LOG_TYPE_ERROR, "#Trial Unable to download Trial namespace. Error: %@", buf, 0xCu);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_fileOfFactorName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TRIClient *)self->_triClient levelForFactor:v4 withNamespaceName:@"SIRI_TEXT_TO_SPEECH"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 fileValue];
    if (v7)
    {
      v8 = v7;
      if ([v7 hasPath])
      {
        v9 = [v8 path];
        v10 = [v9 length];

        if (v10)
        {
          v8 = v8;
          v11 = v8;
          goto LABEL_15;
        }
      }

      v12 = VSGetLogDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v4;
        _os_log_impl(&dword_272850000, v12, OS_LOG_TYPE_INFO, "#Trial Factor '%@' is not downloaded yet.", &v16, 0xCu);
      }
    }

    else
    {
      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = v4;
        _os_log_error_impl(&dword_272850000, v13, OS_LOG_TYPE_ERROR, "#Trial Factor '%@' doesn't seem to be a file.", &v16, 0xCu);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_error_impl(&dword_272850000, v8, OS_LOG_TYPE_ERROR, "#Trial Unable to find asset for factor name '%@'.", &v16, 0xCu);
    }
  }

  v11 = 0;
LABEL_15:

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_directoryOfFactorName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TRIClient *)self->_triClient levelForFactor:v4 withNamespaceName:@"SIRI_TEXT_TO_SPEECH"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 directoryValue];
    if (v7)
    {
      v8 = v7;
      if ([v7 hasPath])
      {
        v9 = [v8 path];
        v10 = [v9 length];

        if (v10)
        {
          v8 = v8;
          v11 = v8;
          goto LABEL_15;
        }
      }

      v12 = VSGetLogDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v4;
        _os_log_impl(&dword_272850000, v12, OS_LOG_TYPE_INFO, "#Trial Factor '%@' is not downloaded yet.", &v16, 0xCu);
      }
    }

    else
    {
      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = v4;
        _os_log_error_impl(&dword_272850000, v13, OS_LOG_TYPE_ERROR, "#Trial Factor '%@' doesn't seem to be directory.", &v16, 0xCu);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_error_impl(&dword_272850000, v8, OS_LOG_TYPE_ERROR, "#Trial Unable to find asset for factor name '%@'.", &v16, 0xCu);
    }
  }

  v11 = 0;
LABEL_15:

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSArray)cachedResources
{
  v20 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_clientRefreshLock lock];
  v3 = self->_cachedResources;
  if (![(NSArray *)v3 count])
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(TRIClient *)self->_triClient factorLevelsWithNamespaceName:@"SIRI_TEXT_TO_SPEECH"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [[VSTrialVoiceResource alloc] initWithFactorLevel:*(*(&v15 + 1) + 8 * i)];
          if (v10)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v11 = v4;

    cachedResources = self->_cachedResources;
    self->_cachedResources = v11;

    v3 = v11;
  }

  [(NSLock *)self->_clientRefreshLock unlock];
  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)cachedVoices
{
  v17 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_clientRefreshLock lock];
  v3 = self->_cachedVoices;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = [(TRIClient *)self->_triClient factorLevelsWithNamespaceName:@"SIRI_TEXT_TO_SPEECH"];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
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

          v9 = [[VSTrialVoice alloc] initWithFactorLevel:*(*(&v12 + 1) + 8 * i)];
          if (v9)
          {
            [(NSArray *)v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    objc_storeStrong(&self->_cachedVoices, v3);
  }

  [(NSLock *)self->_clientRefreshLock unlock];
  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)refreshTrialClient
{
  [(TRIClient *)self->_triClient refresh];
  [(NSLock *)self->_clientRefreshLock lock];
  cachedVoices = self->_cachedVoices;
  self->_cachedVoices = 0;

  cachedResources = self->_cachedResources;
  self->_cachedResources = 0;

  clientRefreshLock = self->_clientRefreshLock;

  [(NSLock *)clientRefreshLock unlock];
}

- (void)dealloc
{
  [(TRIClient *)self->_triClient removeUpdateHandlerForToken:self->_trialNotificationToken];
  v3.receiver = self;
  v3.super_class = VSTrialService;
  [(VSTrialService *)&v3 dealloc];
}

- (VSTrialService)init
{
  v16.receiver = self;
  v16.super_class = VSTrialService;
  v2 = [(VSTrialService *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D73668] clientWithIdentifier:118];
    triClient = v2->_triClient;
    v2->_triClient = v3;

    v5 = dispatch_queue_create("VSTrialService.downloadQueue", 0);
    downloadQueue = v2->_downloadQueue;
    v2->_downloadQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    clientRefreshLock = v2->_clientRefreshLock;
    v2->_clientRefreshLock = v7;

    objc_initWeak(&location, v2);
    v9 = v2->_triClient;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __22__VSTrialService_init__block_invoke;
    v13[3] = &unk_279E4FA48;
    objc_copyWeak(&v14, &location);
    v10 = [(TRIClient *)v9 addUpdateHandlerForNamespaceName:@"SIRI_TEXT_TO_SPEECH" usingBlock:v13];
    trialNotificationToken = v2->_trialNotificationToken;
    v2->_trialNotificationToken = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __22__VSTrialService_init__block_invoke(uint64_t a1)
{
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_272850000, v2, OS_LOG_TYPE_DEFAULT, "#Trial Received namespace 'SIRI_TEXT_TO_SPEECH' update", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshTrialClient];
}

+ (id)defaultDownloadOptions
{
  v2 = objc_alloc_init(MEMORY[0x277D736A8]);
  [v2 setAllowsCellularAccess:0];
  [v2 setDiscretionaryBehavior:0];

  return v2;
}

+ (VSTrialService)sharedService
{
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, &__block_literal_global_3941);
  }

  v3 = sharedService___sharedService;

  return v3;
}

void __31__VSTrialService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(VSTrialService);
  v1 = sharedService___sharedService;
  sharedService___sharedService = v0;
}

- (void)removeVoiceResource:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 factorName];
  [(VSTrialService *)self _removeAssetWithFactorName:v7 completion:v6];
}

- (void)downloadVoiceResource:(id)a3 withOptions:(id)a4 progress:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 factorName];
  [(VSTrialService *)self _downloadFactorName:v13 withOptions:v12 progress:v11 completion:v10];
}

- (id)selectVoiceResourceWithLanguage:(id)a3
{
  if (a3)
  {
    v3 = [(VSTrialService *)self definedVoiceResourcesWithLanguage:?];
    if ([v3 count] >= 2)
    {
      v4 = VSGetLogDefault();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *v8 = 0;
        _os_log_fault_impl(&dword_272850000, v4, OS_LOG_TYPE_FAULT, "Unexpected multiple resources from Trial.", v8, 2u);
      }
    }

    v5 = [v3 firstObject];
    if ([v5 isLocal])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)definedVoiceResourcesWithLanguage:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TRIClient *)self->_triClient rolloutIdentifiersWithNamespaceName:@"SIRI_TEXT_TO_SPEECH"];

  if (v5)
  {
    v6 = [(VSTrialService *)self cachedResources];
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if (v4)
          {
            v14 = [*(*(&v19 + 1) + 8 * i) language];
            v15 = [v14 isEqualToString:v4];

            if (!v15)
            {
              continue;
            }
          }

          [v7 addObject:{v13, v19}];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v10);
    }

    if (![v7 count])
    {
      v16 = VSGetLogDefault();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v24 = v4;
        _os_log_fault_impl(&dword_272850000, v16, OS_LOG_TYPE_FAULT, "#Trial Cannot find any Trial resource for language %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)removeVoice:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 factorName];
  [(VSTrialService *)self _removeAssetWithFactorName:v7 completion:v6];
}

- (void)downloadVoice:(id)a3 withOptions:(id)a4 progress:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 factorName];
  [(VSTrialService *)self _downloadFactorName:v13 withOptions:v12 progress:v11 completion:v10];
}

- (id)selectVoiceWithLanguage:(id)a3 name:(id)a4 type:(int64_t)a5 footprint:(int64_t)a6
{
  v6 = 0;
  if (a3 && a4 && a5 && a6)
  {
    v7 = [VSTrialService definedVoicesWithLanguage:"definedVoicesWithLanguage:name:type:footprint:" name:? type:? footprint:?];
    if ([v7 count] >= 2)
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *v11 = 0;
        _os_log_fault_impl(&dword_272850000, v8, OS_LOG_TYPE_FAULT, "Unexpected multiple voices.", v11, 2u);
      }
    }

    v9 = [v7 firstObject];
    if ([v9 isLocal])
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_definedVoicesWithLanguage:(id)a3 name:(id)a4 type:(int64_t)a5 footprint:(int64_t)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v10 = a4;
  v11 = [(VSTrialService *)self cachedVoices];
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        if ((!a5 || [*(*(&v26 + 1) + 8 * i) type] == a5) && (!a6 || objc_msgSend(v17, "footprint") == a6))
        {
          if (!v10 || ([v17 name], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v10, "isEqualToString:", v18), v18, v19))
          {
            if (!v25 || ([v17 language], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v25, "isEqualToString:", v20), v20, v21))
            {
              [v24 addObject:{v17, v24}];
            }
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)definedVoicesWithLanguage:(id)a3 name:(id)a4 type:(int64_t)a5 footprint:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(TRIClient *)self->_triClient rolloutIdentifiersWithNamespaceName:@"SIRI_TEXT_TO_SPEECH"];

  if (v12)
  {
    v13 = [(VSTrialService *)self _definedVoicesWithLanguage:v10 name:v11 type:a5 footprint:a6];
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (id)definedVoicesWithAssets:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TRIClient *)self->_triClient rolloutIdentifiersWithNamespaceName:@"SIRI_TEXT_TO_SPEECH"];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v4;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [v11 languages];
          v13 = [v12 firstObject];
          v14 = [v11 name];
          v15 = -[VSTrialService _definedVoicesWithLanguage:name:type:footprint:](self, "_definedVoicesWithLanguage:name:type:footprint:", v13, v14, [v11 type], objc_msgSend(v11, "footprint"));
          [v6 addObjectsFromArray:v15];
        }

        v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v4 = v18;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

@end