@interface VSAppsOperation
- (VSAppsOperation)initWithIdentityProvider:(id)provider accountChannels:(id)channels;
- (id)createAppsResult;
- (void)executionDidBegin;
- (void)fetchChannelAppsWithCompletion:(id)completion;
- (void)filterVisionOSCompatibleApps:(id)apps;
@end

@implementation VSAppsOperation

- (VSAppsOperation)initWithIdentityProvider:(id)provider accountChannels:(id)channels
{
  providerCopy = provider;
  channelsCopy = channels;
  v14.receiver = self;
  v14.super_class = VSAppsOperation;
  v9 = [(VSAppsOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identityProvider, provider);
    objc_storeStrong(&v10->_accountChannels, channels);
    v11 = dispatch_group_create();
    dispatchGroup = v10->_dispatchGroup;
    v10->_dispatchGroup = v11;
  }

  return v10;
}

- (void)fetchChannelAppsWithCompletion:(id)completion
{
  completionCopy = completion;
  identityProvider = [(VSAppsOperation *)self identityProvider];
  uniqueID = [identityProvider uniqueID];
  forceUnwrapObject = [uniqueID forceUnwrapObject];

  v8 = [[VSIdentityProviderFetchAppsOperation alloc] initWithProviderIdentifier:forceUnwrapObject andType:3];
  objc_initWeak(&location, v8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__VSAppsOperation_fetchChannelAppsWithCompletion___block_invoke;
  v10[3] = &unk_279E1A660;
  v9 = completionCopy;
  v11 = v9;
  objc_copyWeak(&v12, &location);
  [(VSIdentityProviderFetchAppsOperation *)v8 setCompletionBlock:v10];
  [(VSAsyncOperation *)v8 start];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
}

void __50__VSAppsOperation_fetchChannelAppsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained result];
  v3 = [v2 object];
  (*(v1 + 16))(v1, v3);
}

- (id)createAppsResult
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(VSApps);
  identityProvider = [(VSAppsOperation *)self identityProvider];
  nonChannelAppDescriptions = [identityProvider nonChannelAppDescriptions];
  v6 = nonChannelAppDescriptions;
  v7 = MEMORY[0x277CBEBF8];
  if (nonChannelAppDescriptions)
  {
    v8 = nonChannelAppDescriptions;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  [(VSApps *)v3 setNonChannelApps:v8];

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__4;
  v44 = __Block_byref_object_dispose__4;
  v45 = 0;
  channelAppsFailable = [(VSAppsOperation *)self channelAppsFailable];
  v34 = channelAppsFailable;
  if (channelAppsFailable)
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __35__VSAppsOperation_createAppsResult__block_invoke;
    v39[3] = &unk_279E1A688;
    v39[4] = &v40;
    [channelAppsFailable unwrapObject:v39 error:&__block_literal_global_20];
    accountChannels = [(VSAppsOperation *)self accountChannels];
    allApps = [v41[5] allApps];
    v12 = allApps;
    if (allApps)
    {
      v13 = allApps;
    }

    else
    {
      v13 = v7;
    }

    [(VSApps *)v3 setAvailableApps:v13];

    availableApps = [(VSApps *)v3 availableApps];
    -[VSApps setHasChannelApps:](v3, "setHasChannelApps:", [availableApps count] != 0);

    appsByChannelID = [v41[5] appsByChannelID];
    if ([appsByChannelID count])
    {
      channelIDs = [accountChannels channelIDs];
      v16 = [channelIDs count] != 0;
    }

    else
    {
      v16 = 0;
    }

    [(VSApps *)v3 setHasUserChannelList:v16];
    if (v16)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v19 = objc_alloc(MEMORY[0x277CBEB18]);
      availableApps2 = [(VSApps *)v3 availableApps];
      v21 = [v19 initWithArray:availableApps2];

      [accountChannels channelIDs];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v22 = v36 = 0u;
      v23 = [v22 countByEnumeratingWithState:&v35 objects:v46 count:16];
      if (v23)
      {
        v24 = *v36;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v36 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v35 + 1) + 8 * i);
            appsByChannelID2 = [v41[5] appsByChannelID];
            v28 = [appsByChannelID2 objectForKey:v26];

            if (v28)
            {
              [v21 removeObjectsInArray:v28];
              [v18 addObjectsFromArray:v28];
            }
          }

          v23 = [v22 countByEnumeratingWithState:&v35 objects:v46 count:16];
        }

        while (v23);
      }

      v29 = [v21 copy];
      [(VSApps *)v3 setAvailableApps:v29];

      allObjects = [v18 allObjects];
      [(VSApps *)v3 setSubscribedApps:allObjects];
    }

    v17 = v3;
  }

  else
  {
    accountChannels = VSErrorLogObject();
    if (os_log_type_enabled(accountChannels, OS_LOG_TYPE_ERROR))
    {
      [(VSAppsOperation *)accountChannels createAppsResult];
    }

    v17 = 0;
  }

  _Block_object_dispose(&v40, 8);
  v31 = *MEMORY[0x277D85DE8];

  return v17;
}

void __35__VSAppsOperation_createAppsResult__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __35__VSAppsOperation_createAppsResult__block_invoke_2_cold_1(v2, v3);
  }
}

- (void)filterVisionOSCompatibleApps:(id)apps
{
  v3 = MEMORY[0x277CCAC30];
  appsCopy = apps;
  v11 = [v3 predicateWithBlock:&__block_literal_global_9];
  availableApps = [appsCopy availableApps];
  v6 = [availableApps filteredArrayUsingPredicate:v11];
  [appsCopy setAvailableApps:v6];

  subscribedApps = [appsCopy subscribedApps];
  v8 = [subscribedApps filteredArrayUsingPredicate:v11];
  [appsCopy setSubscribedApps:v8];

  nonChannelApps = [appsCopy nonChannelApps];
  v10 = [nonChannelApps filteredArrayUsingPredicate:v11];
  [appsCopy setNonChannelApps:v10];
}

uint64_t __48__VSAppsOperation_filterVisionOSCompatibleApps___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isVisionOSCompatible];
  if (v3)
  {
    v4 = [v2 isVisionOSCompatible];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)executionDidBegin
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[VSAppsOperation executionDidBegin]";
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  accountChannels = [(VSAppsOperation *)self accountChannels];
  v5 = accountChannels == 0;

  if (v5)
  {
    dispatchGroup = [(VSAppsOperation *)self dispatchGroup];
    dispatch_group_enter(dispatchGroup);

    mEMORY[0x277CE21C8] = [MEMORY[0x277CE21C8] sharedCenter];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __36__VSAppsOperation_executionDidBegin__block_invoke;
    v15[3] = &unk_279E1A6D0;
    objc_copyWeak(&v16, buf);
    [mEMORY[0x277CE21C8] fetchAccountChannelsWithCompletionHandler:v15];

    objc_destroyWeak(&v16);
  }

  dispatchGroup2 = [(VSAppsOperation *)self dispatchGroup];
  dispatch_group_enter(dispatchGroup2);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__VSAppsOperation_executionDidBegin__block_invoke_2;
  v13[3] = &unk_279E1A6F8;
  objc_copyWeak(&v14, buf);
  [(VSAppsOperation *)self fetchChannelAppsWithCompletion:v13];
  dispatchGroup3 = [(VSAppsOperation *)self dispatchGroup];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__VSAppsOperation_executionDidBegin__block_invoke_3;
  block[3] = &unk_279E19D48;
  objc_copyWeak(&v12, buf);
  dispatch_group_notify(dispatchGroup3, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x277D85DE8];
}

void __36__VSAppsOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAccountChannels:v3];

  v4 = [WeakRetained dispatchGroup];
  dispatch_group_leave(v4);
}

void __36__VSAppsOperation_executionDidBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setChannelAppsFailable:v3];

  v4 = [WeakRetained dispatchGroup];
  dispatch_group_leave(v4);
}

void __36__VSAppsOperation_executionDidBegin__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained createAppsResult];
  [WeakRetained setResult:v1];
  [WeakRetained finishExecutionIfPossible];
}

void __35__VSAppsOperation_createAppsResult__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Error fetching channel apps: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end