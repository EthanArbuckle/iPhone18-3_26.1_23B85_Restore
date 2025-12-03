@interface PREExperimentResolver
+ (id)sharedInstance;
+ (id)sharedQueue;
- (PREExperimentResolver)init;
- (id)_getDefaultResponseSuggestionsExperimentConfig:(id)config;
- (id)getResponseSuggestionsExperimentConfig:(id)config shouldDownloadAssets:(BOOL)assets;
@end

@implementation PREExperimentResolver

- (id)_getDefaultResponseSuggestionsExperimentConfig:(id)config
{
  v3 = [[PREResponseSuggestionsExpConfig alloc] initWithNamespaceName:0 withTrialClient:self->_trialClient shouldDownloadAssets:0];

  return v3;
}

- (id)getResponseSuggestionsExperimentConfig:(id)config shouldDownloadAssets:(BOOL)assets
{
  configCopy = config;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  if ([configCopy length])
  {
    v7 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:configCopy];

    v8 = [(NSDictionary *)self->_smartReplyLangAndNamespaces objectForKey:v7];
    v9 = v8;
    if (v8)
    {
      guardedSmartReplyConfig = self->_guardedSmartReplyConfig;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __85__PREExperimentResolver_getResponseSuggestionsExperimentConfig_shouldDownloadAssets___block_invoke;
      v35[3] = &unk_279ABAFC0;
      v37 = &v38;
      v11 = v8;
      v36 = v11;
      [(_PASLock *)guardedSmartReplyConfig runWithLockAcquired:v35];
      v12 = v39[5];
      if (!v12)
      {
        *buf = 0;
        v30 = buf;
        v31 = 0x3032000000;
        v32 = __Block_byref_object_copy_;
        v33 = __Block_byref_object_dispose_;
        v34 = 0;
        objc_initWeak(&location, self);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __85__PREExperimentResolver_getResponseSuggestionsExperimentConfig_shouldDownloadAssets___block_invoke_2;
        block[3] = &unk_279ABAFE8;
        objc_copyWeak(&v26, &location);
        v25 = buf;
        v24 = v11;
        assetsCopy = assets;
        v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
        sharedQueue = [objc_opt_class() sharedQueue];
        dispatch_async(sharedQueue, v13);

        v15 = dispatch_time(0, 1000000000);
        dispatch_block_wait(v13, v15);
        objc_storeStrong(v39 + 5, *(v30 + 5));
        if (!v39[5])
        {
          v16 = pre_responses_handle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 0;
            _os_log_impl(&dword_260CE3000, v16, OS_LOG_TYPE_DEFAULT, "Smart Reply config not valid, using defaults", &v22, 2u);
          }

          v17 = [(PREExperimentResolver *)self _getDefaultResponseSuggestionsExperimentConfig:v7];
          v18 = v39[5];
          v39[5] = v17;
        }

        objc_destroyWeak(&v26);
        objc_destroyWeak(&location);
        _Block_object_dispose(buf, 8);

        v12 = v39[5];
        if (!v12)
        {
          v19 = pre_responses_handle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_260CE3000, v19, OS_LOG_TYPE_FAULT, "No Smart Reply experiment configuration found, no default supplied", buf, 2u);
          }

          v12 = v39[5];
        }
      }

      v20 = v12;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v7 = configCopy;
  }

  _Block_object_dispose(&v38, 8);

  return v20;
}

uint64_t __85__PREExperimentResolver_getResponseSuggestionsExperimentConfig_shouldDownloadAssets___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __85__PREExperimentResolver_getResponseSuggestionsExperimentConfig_shouldDownloadAssets___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __85__PREExperimentResolver_getResponseSuggestionsExperimentConfig_shouldDownloadAssets___block_invoke_3;
    v15[3] = &unk_279ABAFC0;
    v11 = *(a1 + 32);
    v5 = v11;
    v16 = v11;
    [v4 runWithLockAcquired:v15];
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v6 = [[PREResponseSuggestionsExpConfig alloc] initWithNamespaceName:*(a1 + 32) withTrialClient:v3[2] shouldDownloadAssets:*(a1 + 56)];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = *(a1 + 40);
      if (*(*(v9 + 8) + 40))
      {
        v10 = v3[1];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __85__PREExperimentResolver_getResponseSuggestionsExperimentConfig_shouldDownloadAssets___block_invoke_4;
        v12[3] = &unk_279ABAFC0;
        v14 = v9;
        v13 = *(a1 + 32);
        [v10 runWithLockAcquired:v12];
      }
    }
  }
}

uint64_t __85__PREExperimentResolver_getResponseSuggestionsExperimentConfig_shouldDownloadAssets___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (PREExperimentResolver)init
{
  v32 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = PREExperimentResolver;
  v2 = [(PREExperimentResolver *)&v27 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D73660] clientWithIdentifier:101];
    trialClient = v2->_trialClient;
    v2->_trialClient = v3;

    v5 = pre_responses_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 101;
      _os_log_impl(&dword_260CE3000, v5, OS_LOG_TYPE_DEFAULT, "PREExperimentResolver -- setting up trial client for client id %d", buf, 8u);
    }

    v29[0] = @"en";
    v29[1] = @"es";
    v30[0] = @"SMART_REPLY_EN";
    v30[1] = @"SMART_REPLY_ES";
    v29[2] = @"fr";
    v29[3] = @"hi";
    v30[2] = @"SMART_REPLY_FR";
    v30[3] = @"SMART_REPLY_HI";
    v29[4] = @"hi-Latn";
    v29[5] = @"ja";
    v30[4] = @"SMART_REPLY_HI_LATN";
    v30[5] = @"SMART_REPLY_JP";
    v29[6] = @"zh-Hans";
    v30[6] = @"SMART_REPLY_ZH_HANS";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:7];
    smartReplyLangAndNamespaces = v2->_smartReplyLangAndNamespaces;
    v2->_smartReplyLangAndNamespaces = v6;

    v8 = objc_alloc(MEMORY[0x277D425F8]);
    v9 = objc_opt_new();
    v10 = [v8 initWithGuardedData:v9];
    guardedSmartReplyConfig = v2->_guardedSmartReplyConfig;
    v2->_guardedSmartReplyConfig = v10;

    objc_initWeak(buf, v2);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    allValues = [(NSDictionary *)v2->_smartReplyLangAndNamespaces allValues];
    v13 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = *v24;
      do
      {
        v15 = 0;
        do
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(allValues);
          }

          v16 = *(*(&v23 + 1) + 8 * v15);
          v17 = v2->_trialClient;
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __29__PREExperimentResolver_init__block_invoke;
          v21[3] = &unk_279ABAF98;
          objc_copyWeak(&v22, buf);
          v21[4] = v16;
          v18 = [(TRIClient *)v17 addUpdateHandlerForNamespaceName:v16 usingBlock:v21];
          objc_destroyWeak(&v22);
          ++v15;
        }

        while (v13 != v15);
        v13 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
    }

    objc_destroyWeak(buf);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

void __29__PREExperimentResolver_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __29__PREExperimentResolver_init__block_invoke_2;
  v9 = &unk_279ABB310;
  objc_copyWeak(&v11, (a1 + 40));
  v10 = *(a1 + 32);
  v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &v6);
  v5 = [PREExperimentResolver sharedQueue:v6];
  dispatch_async(v5, v4);

  objc_destroyWeak(&v11);
}

void __29__PREExperimentResolver_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __29__PREExperimentResolver_init__block_invoke_3;
    v13[3] = &unk_279ABAF48;
    v13[4] = *(a1 + 32);
    [v4 runWithLockAcquired:v13];
    v5 = [[PREResponseSuggestionsExpConfig alloc] initWithNamespaceName:*(a1 + 32) withTrialClient:v3[2] shouldDownloadAssets:0];
    v6 = v5;
    if (v5)
    {
      v7 = v3[1];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __29__PREExperimentResolver_init__block_invoke_4;
      v10[3] = &unk_279ABAF70;
      v8 = v5;
      v9 = *(a1 + 32);
      v11 = v8;
      v12 = v9;
      [v7 runWithLockAcquired:v10];
    }
  }
}

+ (id)sharedQueue
{
  if (sharedQueue__pasOnceToken4 != -1)
  {
    dispatch_once(&sharedQueue__pasOnceToken4, &__block_literal_global_1328);
  }

  v3 = sharedQueue__pasExprOnceResult;

  return v3;
}

void __36__PREExperimentResolver_sharedQueue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PREResponseSuggestions-initNamespace" qosClass:17];
  v2 = sharedQueue__pasExprOnceResult;
  sharedQueue__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PREExperimentResolver_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken3 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken3, block);
  }

  v2 = sharedInstance__pasExprOnceResult_1331;

  return v2;
}

void __39__PREExperimentResolver_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_1331;
  sharedInstance__pasExprOnceResult_1331 = v4;

  objc_autoreleasePoolPop(v2);
}

@end