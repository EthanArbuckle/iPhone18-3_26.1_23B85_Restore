@interface WLAppMigrator
+ (id)_ssItemForiTunesStoreIdentifier:(id)identifier;
+ (void)_sendStoreDownloadRequestForFreeMigratableApps:(id)apps completion:(id)completion;
+ (void)installMigratableApps:(id)apps completion:(id)completion;
- (WLAppMigrator)initWithDevice:(id)device sqlController:(id)controller;
- (WLFeaturePayload)featurePayload;
- (void)_insertMatchingApps:(id)apps;
- (void)_lookupStoreItemsMatchingExternalIDs:(id)ds attempt:(unint64_t)attempt completion:(id)completion;
- (void)estimateItemSizeForSummary:(id)summary account:(id)account;
- (void)importDataFromProvider:(id)provider forSummaries:(id)summaries summaryStart:(id)start summaryCompletion:(id)completion;
@end

@implementation WLAppMigrator

- (WLAppMigrator)initWithDevice:(id)device sqlController:(id)controller
{
  deviceCopy = device;
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = WLAppMigrator;
  v8 = [(WLAppMigrator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(WLAppMigrator *)v8 setDevice:deviceCopy];
    [(WLAppMigrator *)v9 setSqlController:controllerCopy];
  }

  return v9;
}

- (void)estimateItemSizeForSummary:(id)summary account:(id)account
{
  summaryCopy = summary;
  if (![summaryCopy itemSize])
  {
    [summaryCopy setItemSize:5242880];
  }
}

- (void)importDataFromProvider:(id)provider forSummaries:(id)summaries summaryStart:(id)start summaryCompletion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  summariesCopy = summaries;
  startCopy = start;
  completionCopy = completion;
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(summariesCopy, "count")}];
  selfCopy = self;
  _WLLog();

  v13 = objc_alloc(MEMORY[0x277CBEB18]);
  v14 = [summariesCopy count];
  v15 = v13;
  v16 = startCopy;
  v37 = [v15 initWithCapacity:v14];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = summariesCopy;
  v17 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  v38 = startCopy;
  v39 = providerCopy;
  if (v17)
  {
    v18 = v17;
    v19 = *v48;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v48 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v47 + 1) + 8 * i);
        v16[2](v16, v21);
        v22 = objc_autoreleasePoolPush();
        v23 = (*(providerCopy + 2))(providerCopy, v21);
        if (v23)
        {
          v46 = 0;
          v24 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v23 options:0 error:&v46];
          v25 = v46;
          if (v25 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            _WLLog();
          }

          else
          {
            v26 = [v24 mutableCopy];
            [v26 removeObjectForKey:@"itemIcon"];
            _WLLog();
            v27 = [v26 objectForKeyedSubscript:{@"itemExternalID", selfCopy, v26}];
            if (v27)
            {
              [v37 addObject:v27];
            }

            v16 = v38;
            providerCopy = v39;
          }
        }

        else
        {
          v25 = 0;
        }

        objc_autoreleasePoolPop(v22);
        completionCopy[2](completionCopy, v21, v25);
      }

      v18 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v18);
  }

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v37, "count")}];
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(obj, "count")}];
  _WLLog();

  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = dispatch_semaphore_create(0);
  if ([v37 count])
  {
    do
    {
      if ([v37 count] <= 0x32)
      {
        v31 = [v37 count];
      }

      else
      {
        v31 = 50;
      }

      v32 = [v37 subarrayWithRange:{0, v31}];
      [v37 removeObjectsInRange:{0, v31}];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __84__WLAppMigrator_importDataFromProvider_forSummaries_summaryStart_summaryCompletion___block_invoke;
      v43[3] = &unk_279EB5560;
      v44 = v29;
      v33 = v30;
      v45 = v33;
      [(WLAppMigrator *)selfCopy _lookupStoreItemsMatchingExternalIDs:v32 attempt:1 completion:v43];
      dispatch_semaphore_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
    }

    while ([v37 count]);
  }

  [(WLAppMigrator *)selfCopy _insertMatchingApps:v29];

  v34 = *MEMORY[0x277D85DE8];
}

void __84__WLAppMigrator_importDataFromProvider_forSummaries_summaryStart_summaryCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [v6 count];
  if (!a3 && v5)
  {
    [*(a1 + 32) addObjectsFromArray:v6];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_lookupStoreItemsMatchingExternalIDs:(id)ds attempt:(unint64_t)attempt completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  _WLLog();
  dsCopy = [[WLAppSearchRequest alloc] initWithAndroidIdentifiers:dsCopy, self, dsCopy];
  v11 = [dsCopy count];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__WLAppMigrator__lookupStoreItemsMatchingExternalIDs_attempt_completion___block_invoke;
  v14[3] = &unk_279EB55B0;
  v16 = completionCopy;
  v17 = v11;
  attemptCopy = attempt;
  v14[4] = self;
  v15 = dsCopy;
  v12 = dsCopy;
  v13 = completionCopy;
  [(WLAppSearchRequest *)dsCopy search:v14];
}

void __73__WLAppMigrator__lookupStoreItemsMatchingExternalIDs_attempt_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  _WLLog();

  if (!v6)
  {
    v13 = [v5 count];
    v14 = *(a1 + 56) - v13;
    v15 = [MEMORY[0x277D7B8D0] sharedInstance];
    [v15 didLookupAppsWithMatchedApps:v13 mismatchedApps:v14];

    v16 = *(a1 + 48);
    if (!v16)
    {
      goto LABEL_9;
    }

    v17 = *(v16 + 16);
LABEL_8:
    v17();
    goto LABEL_9;
  }

  if (![v6 wk_representsTransientConnectivityIssueForAttempt:{*(a1 + 64), v7, v20, v6}])
  {
    v18 = *(a1 + 48);
    if (!v18)
    {
      goto LABEL_9;
    }

    v17 = *(v18 + 16);
    goto LABEL_8;
  }

  v19 = *(a1 + 32);
  _WLLog();
  v8 = dispatch_time(0, 3000000000);
  v9 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__WLAppMigrator__lookupStoreItemsMatchingExternalIDs_attempt_completion___block_invoke_2;
  block[3] = &unk_279EB5588;
  v10 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v10;
  v12 = *(a1 + 64);
  v22 = v11;
  v24 = v12;
  v23 = *(a1 + 48);
  dispatch_after(v8, v9, block);

LABEL_9:
}

- (void)_insertMatchingApps:(id)apps
{
  v29 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(appsCopy, "count")}];
  _WLLog();

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = appsCopy;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v28 count:{16, self, v19}];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v26[0] = @"bundleIdentifier";
        bundleIdentifier = [v9 bundleIdentifier];
        v27[0] = bundleIdentifier;
        v26[1] = @"ITunesStoreIdentifier";
        appStoreIdentifier = [v9 appStoreIdentifier];
        v27[1] = appStoreIdentifier;
        v26[2] = @"isFree";
        v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isFree")}];
        v27[2] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

        bundleIdentifier2 = [v9 bundleIdentifier];
        appStoreIdentifier2 = [v9 appStoreIdentifier];
        v20 = [v13 objectForKeyedSubscript:@"isFree"];
        _WLLog();

        v16 = [(WLAppMigrator *)self sqlController:self];
        device = [(WLAppMigrator *)self device];
        [v16 insertMigratableApp:v13 forDevice:device];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v6);
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)installMigratableApps:(id)apps completion:(id)completion
{
  appsCopy = apps;
  completionCopy = completion;
  v7 = dispatch_get_global_queue(25, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__WLAppMigrator_installMigratableApps_completion___block_invoke;
  v10[3] = &unk_279EB5600;
  v11 = appsCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = appsCopy;
  dispatch_async(v7, v10);
}

void __50__WLAppMigrator_installMigratableApps_completion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50__WLAppMigrator_installMigratableApps_completion___block_invoke_2;
  v2[3] = &unk_279EB55D8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [WLAppMigrator _sendStoreDownloadRequestForFreeMigratableApps:v1 completion:v2];
}

void __50__WLAppMigrator_installMigratableApps_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  _WLLog();

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
  }
}

+ (void)_sendStoreDownloadRequestForFreeMigratableApps:(id)apps completion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  completionCopy = completion;
  v38 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(appsCopy, "count")}];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(appsCopy, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = appsCopy;
  v7 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v52;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v51 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:{@"isFree", v35}];
        bOOLValue = [v12 BOOLValue];

        if (bOOLValue)
        {
          v14 = [v11 objectForKeyedSubscript:@"ITunesStoreIdentifier"];
          v15 = [self _ssItemForiTunesStoreIdentifier:v14];
          if (v15)
          {
            [v38 addObject:v15];
            stringValue = [v14 stringValue];
            uTF8String = [stringValue UTF8String];

            v18 = [v11 objectForKeyedSubscript:@"bundleIdentifier"];
            v19 = v8;
            v20 = v6;
            uTF8String2 = [v18 UTF8String];

            v22 = SBSSpringBoardServerPort();
            v23 = uTF8String2;
            v6 = v20;
            v8 = v19;
            MEMORY[0x2743DEE30](v22, uTF8String, v23);
            v35 = [v11 objectForKeyedSubscript:@"bundleIdentifier"];
            _WLLog();
          }
        }

        else
        {
          [v6 addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v8);
  }

  v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v38, "count")}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v25 = v38;
  v26 = [v25 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v48;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v48 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [objc_alloc(MEMORY[0x277D69C10]) initWithItem:*(*(&v47 + 1) + 8 * j)];
        [v24 addObject:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v27);
  }

  if ([v25 count])
  {
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
    _WLLog();

    v31 = [objc_alloc(MEMORY[0x277D69C20]) initWithPurchases:{v24, v36}];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __75__WLAppMigrator__sendStoreDownloadRequestForFreeMigratableApps_completion___block_invoke;
    v44[3] = &unk_279EB5628;
    v45 = v31;
    v32 = completionCopy;
    v46 = completionCopy;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __75__WLAppMigrator__sendStoreDownloadRequestForFreeMigratableApps_completion___block_invoke_2;
    v41[3] = &unk_279EB5650;
    v43 = v46;
    v42 = v6;
    v33 = v31;
    [v33 startWithPurchaseResponseBlock:v44 completionBlock:v41];
  }

  else
  {
    v32 = completionCopy;
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v6, 0);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __75__WLAppMigrator__sendStoreDownloadRequestForFreeMigratableApps_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v8 = [v9 error];
  _WLLog();

  v3 = [v9 error];
  v4 = [v3 domain];
  if (([v4 isEqualToString:*MEMORY[0x277D6A110]] & 1) == 0)
  {

    goto LABEL_6;
  }

  v5 = [v9 error];
  v6 = [v5 code];

  if (v6 == 16)
  {
    _WLLog();
    [*(a1 + 32) cancel];
    v7 = *(a1 + 40);
    if (v7)
    {
      v3 = [v9 error];
      (*(v7 + 16))(v7, 0, v3);
LABEL_6:
    }
  }
}

void __75__WLAppMigrator__sendStoreDownloadRequestForFreeMigratableApps_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  _WLLog();
  v3 = *(a1 + 40);
  if (v3)
  {
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 32);
    }

    (*(v3 + 16))(v3, v4);
  }
}

+ (id)_ssItemForiTunesStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(MEMORY[0x277D69B18]);
  [v4 setValue:identifierCopy forParameter:*MEMORY[0x277D6A288]];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__WLAppMigrator__ssItemForiTunesStoreIdentifier___block_invoke;
  v10[3] = &unk_279EB5678;
  v6 = identifierCopy;
  v11 = v6;
  v13 = &v14;
  v7 = v5;
  v12 = v7;
  [v4 startWithItemLookupBlock:v10];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __49__WLAppMigrator__ssItemForiTunesStoreIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5)
  {
    v9 = *(a1 + 32);
    _WLLog();
  }

  if (v10 && [v10 count] == 1)
  {
    v6 = [v10 objectAtIndexedSubscript:0];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (WLFeaturePayload)featurePayload
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);

  return WeakRetained;
}

@end