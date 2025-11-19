@interface PSGExperimentResolver
+ (PSGExperimentResolver)sharedInstance;
+ (id)sharedWordBoundaryQueue;
+ (id)sharedZKWQueue;
- (PSGExperimentResolver)init;
- (id)_getDefaultResponseSuggestionsExperimentConfig:(id)a3;
- (id)_getDefaultWordBoundarySuggestionsExperimentConfig:(id)a3;
- (id)getResponseSuggestionsExperimentConfig:(id)a3 shouldDownloadAssets:(BOOL)a4;
- (id)getWordBoundarySuggestionsExperimentConfig:(id)a3 shouldDownloadAssets:(BOOL)a4;
- (void)warmupForLocale:(id)a3;
@end

@implementation PSGExperimentResolver

+ (PSGExperimentResolver)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PSGExperimentResolver_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken3 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken3, block);
  }

  v2 = sharedInstance__pasExprOnceResult;

  return v2;
}

+ (id)sharedWordBoundaryQueue
{
  if (sharedWordBoundaryQueue__pasOnceToken4 != -1)
  {
    dispatch_once(&sharedWordBoundaryQueue__pasOnceToken4, &__block_literal_global_991);
  }

  v3 = sharedWordBoundaryQueue__pasExprOnceResult;

  return v3;
}

+ (id)sharedZKWQueue
{
  if (sharedZKWQueue__pasOnceToken5 != -1)
  {
    dispatch_once(&sharedZKWQueue__pasOnceToken5, &__block_literal_global_79);
  }

  v3 = sharedZKWQueue__pasExprOnceResult;

  return v3;
}

- (id)_getDefaultWordBoundarySuggestionsExperimentConfig:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)_getDefaultResponseSuggestionsExperimentConfig:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)getResponseSuggestionsExperimentConfig:(id)a3 shouldDownloadAssets:(BOOL)a4
{
  v6 = a3;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy_;
  v43 = __Block_byref_object_dispose_;
  v44 = 0;
  if ([v6 length])
  {
    v7 = [MEMORY[0x277D02548] languageForLocaleIdentifier:v6];
    v8 = [(NSDictionary *)self->_zkwLangAndNamespaces objectForKey:v7];
    if (v8)
    {
      responseSuggestionsConfigLock = self->_responseSuggestionsConfigLock;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __85__PSGExperimentResolver_getResponseSuggestionsExperimentConfig_shouldDownloadAssets___block_invoke;
      v36[3] = &unk_279ABE2C0;
      v38 = &v39;
      v10 = v7;
      v37 = v10;
      [(_PASLock *)responseSuggestionsConfigLock runWithLockAcquired:v36];
      v11 = v40[5];
      if (v11)
      {
        goto LABEL_9;
      }

      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy_;
      v34 = __Block_byref_object_dispose_;
      v35 = 0;
      objc_initWeak(&location, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85__PSGExperimentResolver_getResponseSuggestionsExperimentConfig_shouldDownloadAssets___block_invoke_2;
      block[3] = &unk_279ABE310;
      objc_copyWeak(&v27, &location);
      v26 = &v30;
      v24 = v8;
      v12 = v10;
      v25 = v12;
      v28 = a4;
      v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      v14 = [objc_opt_class() sharedZKWQueue];
      dispatch_async(v14, v13);

      v15 = dispatch_time(0, 1000000000);
      dispatch_block_wait(v13, v15);
      objc_storeStrong(v40 + 5, v31[5]);
      if (!v40[5])
      {
        v16 = psg_default_log_handle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v22[0] = 0;
          _os_log_impl(&dword_260D36000, v16, OS_LOG_TYPE_DEFAULT, "Smart Reply config not valid, using defaults", v22, 2u);
        }

        v17 = [(PSGExperimentResolver *)self _getDefaultResponseSuggestionsExperimentConfig:v12];
        v18 = v40[5];
        v40[5] = v17;
      }

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
      _Block_object_dispose(&v30, 8);

      v11 = v40[5];
      if (v11)
      {
LABEL_9:
        v19 = v11;
      }

      else
      {
        v19 = [(PSGExperimentResolver *)self _getDefaultResponseSuggestionsExperimentConfig:v12];
      }

      v20 = v19;
    }

    else
    {
      v20 = [(PSGExperimentResolver *)self _getDefaultResponseSuggestionsExperimentConfig:v7];
    }
  }

  else
  {
    v20 = [(PSGExperimentResolver *)self _getDefaultResponseSuggestionsExperimentConfig:0];
  }

  _Block_object_dispose(&v39, 8);

  return v20;
}

uint64_t __85__PSGExperimentResolver_getResponseSuggestionsExperimentConfig_shouldDownloadAssets___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __85__PSGExperimentResolver_getResponseSuggestionsExperimentConfig_shouldDownloadAssets___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __85__PSGExperimentResolver_getResponseSuggestionsExperimentConfig_shouldDownloadAssets___block_invoke_3;
    v13[3] = &unk_279ABE2C0;
    v15 = *(a1 + 48);
    v14 = *(a1 + 32);
    [v4 runWithLockAcquired:v13];
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v5 = [[PSGResponseSuggestionsExpConfig alloc] initWithNamespaceName:*(a1 + 32) withLanguage:*(a1 + 40) withTrialClient:v3[3] shouldDownloadAssets:*(a1 + 64)];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = *(a1 + 48);
      if (*(*(v8 + 8) + 40))
      {
        v9 = v3[1];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __85__PSGExperimentResolver_getResponseSuggestionsExperimentConfig_shouldDownloadAssets___block_invoke_4;
        v10[3] = &unk_279ABE2C0;
        v12 = v8;
        v11 = *(a1 + 32);
        [v9 runWithLockAcquired:v10];
      }
    }
  }
}

uint64_t __85__PSGExperimentResolver_getResponseSuggestionsExperimentConfig_shouldDownloadAssets___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)getWordBoundarySuggestionsExperimentConfig:(id)a3 shouldDownloadAssets:(BOOL)a4
{
  v6 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = 0;
  if ([v6 length])
  {
    v7 = [MEMORY[0x277D02548] languageForLocaleIdentifier:v6];
    v8 = [(NSDictionary *)self->_wordBoundaryLangAndNamespaces objectForKey:v7];
    if (v8)
    {
      wordBoundaryConfigLock = self->_wordBoundaryConfigLock;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __89__PSGExperimentResolver_getWordBoundarySuggestionsExperimentConfig_shouldDownloadAssets___block_invoke;
      v34[3] = &unk_279ABE2C0;
      v36 = &v37;
      v10 = v7;
      v35 = v10;
      [(_PASLock *)wordBoundaryConfigLock runWithLockAcquired:v34];
      v11 = v38[5];
      if (v11)
      {
        goto LABEL_9;
      }

      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy_;
      v32 = __Block_byref_object_dispose_;
      v33 = 0;
      objc_initWeak(&location, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89__PSGExperimentResolver_getWordBoundarySuggestionsExperimentConfig_shouldDownloadAssets___block_invoke_2;
      block[3] = &unk_279ABE2E8;
      objc_copyWeak(&v25, &location);
      v24 = &v28;
      v23 = v8;
      v26 = a4;
      v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      v13 = [objc_opt_class() sharedWordBoundaryQueue];
      dispatch_async(v13, v12);

      v14 = dispatch_time(0, 1000000000);
      dispatch_block_wait(v12, v14);
      objc_storeStrong(v38 + 5, v29[5]);
      if (!v38[5])
      {
        v15 = psg_default_log_handle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 0;
          _os_log_impl(&dword_260D36000, v15, OS_LOG_TYPE_DEFAULT, "Smart Reply config not valid, using defaults", &v21, 2u);
        }

        v16 = [(PSGExperimentResolver *)self _getDefaultWordBoundarySuggestionsExperimentConfig:v10];
        v17 = v38[5];
        v38[5] = v16;
      }

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
      _Block_object_dispose(&v28, 8);

      v11 = v38[5];
      if (v11)
      {
LABEL_9:
        v18 = v11;
      }

      else
      {
        v18 = [(PSGExperimentResolver *)self _getDefaultWordBoundarySuggestionsExperimentConfig:v10];
      }

      v19 = v18;
    }

    else
    {
      v19 = [(PSGExperimentResolver *)self _getDefaultWordBoundarySuggestionsExperimentConfig:v7];
    }
  }

  else
  {
    v19 = [(PSGExperimentResolver *)self _getDefaultWordBoundarySuggestionsExperimentConfig:0];
  }

  _Block_object_dispose(&v37, 8);

  return v19;
}

uint64_t __89__PSGExperimentResolver_getWordBoundarySuggestionsExperimentConfig_shouldDownloadAssets___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __89__PSGExperimentResolver_getWordBoundarySuggestionsExperimentConfig_shouldDownloadAssets___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __89__PSGExperimentResolver_getWordBoundarySuggestionsExperimentConfig_shouldDownloadAssets___block_invoke_3;
    v15[3] = &unk_279ABE2C0;
    v11 = *(a1 + 32);
    v5 = v11;
    v16 = v11;
    [v4 runWithLockAcquired:v15];
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v6 = [[PSGWordBoundarySuggestionsExpConfig alloc] initWithNamespaceName:*(a1 + 32) withTrialClient:v3[3] shouldDownloadAssets:*(a1 + 56)];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = *(a1 + 40);
      if (*(*(v9 + 8) + 40))
      {
        v10 = v3[2];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __89__PSGExperimentResolver_getWordBoundarySuggestionsExperimentConfig_shouldDownloadAssets___block_invoke_4;
        v12[3] = &unk_279ABE2C0;
        v14 = v9;
        v13 = *(a1 + 32);
        [v10 runWithLockAcquired:v12];
      }
    }
  }
}

uint64_t __89__PSGExperimentResolver_getWordBoundarySuggestionsExperimentConfig_shouldDownloadAssets___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)warmupForLocale:(id)a3
{
  v6 = a3;
  v4 = [(PSGExperimentResolver *)self getWordBoundarySuggestionsExperimentConfig:v6 shouldDownloadAssets:1];
  v5 = [(PSGExperimentResolver *)self getResponseSuggestionsExperimentConfig:v6 shouldDownloadAssets:1];
}

- (PSGExperimentResolver)init
{
  v58 = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = PSGExperimentResolver;
  v2 = [(PSGExperimentResolver *)&v50 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D73660] clientWithIdentifier:103];
    trialClient = v2->_trialClient;
    v2->_trialClient = v3;

    v5 = psg_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 103;
      _os_log_impl(&dword_260D36000, v5, OS_LOG_TYPE_DEFAULT, "PSGExperimentResolver -- setting up trial client for client id %d", buf, 8u);
    }

    v55[0] = @"en";
    v55[1] = @"zh-Hans";
    v56[0] = @"QUICK_TYPE_ZKW_EN";
    v56[1] = @"QUICK_TYPE_ZKW_ZH_HANS";
    v55[2] = @"ja";
    v55[3] = @"es";
    v56[2] = @"QUICK_TYPE_ZKW_JP";
    v56[3] = @"QUICK_TYPE_ZKW_ES";
    v55[4] = @"fr";
    v56[4] = @"QUICK_TYPE_ZKW_FR";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:5];
    zkwLangAndNamespaces = v2->_zkwLangAndNamespaces;
    v2->_zkwLangAndNamespaces = v6;

    v53[0] = @"en";
    v53[1] = @"zh-Hans";
    v54[0] = @"QUICK_TYPE_WB_EN";
    v54[1] = @"QUICK_TYPE_WB_ZH_HANS";
    v53[2] = @"ja";
    v53[3] = @"es";
    v54[2] = @"QUICK_TYPE_WB_JP";
    v54[3] = @"QUICK_TYPE_WB_ES";
    v53[4] = @"fr";
    v54[4] = @"QUICK_TYPE_WB_FR";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:5];
    wordBoundaryLangAndNamespaces = v2->_wordBoundaryLangAndNamespaces;
    v2->_wordBoundaryLangAndNamespaces = v8;

    v10 = objc_alloc(MEMORY[0x277D425F8]);
    v11 = objc_opt_new();
    v12 = [v10 initWithGuardedData:v11];
    responseSuggestionsConfigLock = v2->_responseSuggestionsConfigLock;
    v2->_responseSuggestionsConfigLock = v12;

    v14 = objc_alloc(MEMORY[0x277D425F8]);
    v15 = objc_opt_new();
    v16 = [v14 initWithGuardedData:v15];
    wordBoundaryConfigLock = v2->_wordBoundaryConfigLock;
    v2->_wordBoundaryConfigLock = v16;

    objc_initWeak(buf, v2);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v18 = [(NSDictionary *)v2->_zkwLangAndNamespaces allKeys];
    v19 = [v18 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v19)
    {
      v20 = *v47;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v46 + 1) + 8 * i);
          v23 = [(NSDictionary *)v2->_zkwLangAndNamespaces objectForKeyedSubscript:v22];
          v24 = v2->_trialClient;
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __29__PSGExperimentResolver_init__block_invoke;
          v42[3] = &unk_279ABE228;
          objc_copyWeak(&v45, buf);
          v25 = v23;
          v43 = v25;
          v44 = v22;
          v26 = [(TRIClient *)v24 addUpdateHandlerForNamespaceName:v25 usingBlock:v42];

          objc_destroyWeak(&v45);
        }

        v19 = [v18 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v19);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v27 = [(NSDictionary *)v2->_wordBoundaryLangAndNamespaces allValues];
    v28 = [v27 countByEnumeratingWithState:&v38 objects:v51 count:16];
    if (v28)
    {
      v29 = *v39;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v38 + 1) + 8 * j);
          v32 = v2->_trialClient;
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __29__PSGExperimentResolver_init__block_invoke_5;
          v36[3] = &unk_279ABE278;
          objc_copyWeak(&v37, buf);
          v36[4] = v31;
          v33 = [(TRIClient *)v32 addUpdateHandlerForNamespaceName:v31 usingBlock:v36];
          objc_destroyWeak(&v37);
        }

        v28 = [v27 countByEnumeratingWithState:&v38 objects:v51 count:16];
      }

      while (v28);
    }

    objc_destroyWeak(buf);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v2;
}

void __29__PSGExperimentResolver_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__PSGExperimentResolver_init__block_invoke_2;
  block[3] = &unk_279ABE200;
  objc_copyWeak(&v11, (a1 + 48));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v7 = +[PSGExperimentResolver sharedZKWQueue];
  dispatch_async(v7, v6);

  objc_destroyWeak(&v11);
}

void __29__PSGExperimentResolver_init__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __29__PSGExperimentResolver_init__block_invoke_6;
  v9 = &unk_279ABE250;
  objc_copyWeak(&v11, (a1 + 40));
  v10 = *(a1 + 32);
  v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &v6);
  v5 = [PSGExperimentResolver sharedWordBoundaryQueue:v6];
  dispatch_async(v5, v4);

  objc_destroyWeak(&v11);
}

void __29__PSGExperimentResolver_init__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __29__PSGExperimentResolver_init__block_invoke_7;
    v13[3] = &unk_279ABE1B0;
    v13[4] = *(a1 + 32);
    [v4 runWithLockAcquired:v13];
    v5 = [[PSGWordBoundarySuggestionsExpConfig alloc] initWithNamespaceName:*(a1 + 32) withTrialClient:v3[3] shouldDownloadAssets:0];
    v6 = v5;
    if (v5)
    {
      v7 = v3[2];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __29__PSGExperimentResolver_init__block_invoke_8;
      v10[3] = &unk_279ABE1D8;
      v8 = v5;
      v9 = *(a1 + 32);
      v11 = v8;
      v12 = v9;
      [v7 runWithLockAcquired:v10];
    }
  }
}

void __29__PSGExperimentResolver_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __29__PSGExperimentResolver_init__block_invoke_3;
    v11[3] = &unk_279ABE1B0;
    v12 = *(a1 + 32);
    [v4 runWithLockAcquired:v11];
    v5 = [[PSGResponseSuggestionsExpConfig alloc] initWithNamespaceName:*(a1 + 32) withLanguage:*(a1 + 40) withTrialClient:v3[3] shouldDownloadAssets:0];
    v6 = v5;
    if (v5)
    {
      v7 = v3[1];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __29__PSGExperimentResolver_init__block_invoke_4;
      v8[3] = &unk_279ABE1D8;
      v9 = v5;
      v10 = *(a1 + 32);
      [v7 runWithLockAcquired:v8];
    }
  }
}

void __39__PSGExperimentResolver_sharedZKWQueue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PSGResponseSuggestions-initNamespace" qosClass:17];
  v2 = sharedZKWQueue__pasExprOnceResult;
  sharedZKWQueue__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __48__PSGExperimentResolver_sharedWordBoundaryQueue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PSGWordBoundary-initNamespace" qosClass:17];
  v2 = sharedWordBoundaryQueue__pasExprOnceResult;
  sharedWordBoundaryQueue__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __39__PSGExperimentResolver_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v2);
}

@end