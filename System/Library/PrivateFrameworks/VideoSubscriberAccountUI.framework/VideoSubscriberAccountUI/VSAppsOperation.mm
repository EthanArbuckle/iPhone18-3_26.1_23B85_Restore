@interface VSAppsOperation
- (VSAppsOperation)initWithIdentityProvider:(id)a3 accountChannels:(id)a4;
- (id)createAppsResult;
- (void)executionDidBegin;
- (void)fetchChannelAppsWithCompletion:(id)a3;
- (void)filterVisionOSCompatibleApps:(id)a3;
@end

@implementation VSAppsOperation

- (VSAppsOperation)initWithIdentityProvider:(id)a3 accountChannels:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = VSAppsOperation;
  v9 = [(VSAppsOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identityProvider, a3);
    objc_storeStrong(&v10->_accountChannels, a4);
    v11 = dispatch_group_create();
    dispatchGroup = v10->_dispatchGroup;
    v10->_dispatchGroup = v11;
  }

  return v10;
}

- (void)fetchChannelAppsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VSAppsOperation *)self identityProvider];
  v6 = [v5 uniqueID];
  v7 = [v6 forceUnwrapObject];

  v8 = [[VSIdentityProviderFetchAppsOperation alloc] initWithProviderIdentifier:v7 andType:3];
  objc_initWeak(&location, v8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__VSAppsOperation_fetchChannelAppsWithCompletion___block_invoke;
  v10[3] = &unk_279E1A660;
  v9 = v4;
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
  v4 = [(VSAppsOperation *)self identityProvider];
  v5 = [v4 nonChannelAppDescriptions];
  v6 = v5;
  v7 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    v8 = v5;
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
  v9 = [(VSAppsOperation *)self channelAppsFailable];
  v34 = v9;
  if (v9)
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __35__VSAppsOperation_createAppsResult__block_invoke;
    v39[3] = &unk_279E1A688;
    v39[4] = &v40;
    [v9 unwrapObject:v39 error:&__block_literal_global_20];
    v10 = [(VSAppsOperation *)self accountChannels];
    v11 = [v41[5] allApps];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v7;
    }

    [(VSApps *)v3 setAvailableApps:v13];

    v14 = [(VSApps *)v3 availableApps];
    -[VSApps setHasChannelApps:](v3, "setHasChannelApps:", [v14 count] != 0);

    v33 = [v41[5] appsByChannelID];
    if ([v33 count])
    {
      v15 = [v10 channelIDs];
      v16 = [v15 count] != 0;
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
      v20 = [(VSApps *)v3 availableApps];
      v21 = [v19 initWithArray:v20];

      [v10 channelIDs];
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
            v27 = [v41[5] appsByChannelID];
            v28 = [v27 objectForKey:v26];

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

      v30 = [v18 allObjects];
      [(VSApps *)v3 setSubscribedApps:v30];
    }

    v17 = v3;
  }

  else
  {
    v10 = VSErrorLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(VSAppsOperation *)v10 createAppsResult];
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

- (void)filterVisionOSCompatibleApps:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v11 = [v3 predicateWithBlock:&__block_literal_global_9];
  v5 = [v4 availableApps];
  v6 = [v5 filteredArrayUsingPredicate:v11];
  [v4 setAvailableApps:v6];

  v7 = [v4 subscribedApps];
  v8 = [v7 filteredArrayUsingPredicate:v11];
  [v4 setSubscribedApps:v8];

  v9 = [v4 nonChannelApps];
  v10 = [v9 filteredArrayUsingPredicate:v11];
  [v4 setNonChannelApps:v10];
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
  v4 = [(VSAppsOperation *)self accountChannels];
  v5 = v4 == 0;

  if (v5)
  {
    v6 = [(VSAppsOperation *)self dispatchGroup];
    dispatch_group_enter(v6);

    v7 = [MEMORY[0x277CE21C8] sharedCenter];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __36__VSAppsOperation_executionDidBegin__block_invoke;
    v15[3] = &unk_279E1A6D0;
    objc_copyWeak(&v16, buf);
    [v7 fetchAccountChannelsWithCompletionHandler:v15];

    objc_destroyWeak(&v16);
  }

  v8 = [(VSAppsOperation *)self dispatchGroup];
  dispatch_group_enter(v8);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__VSAppsOperation_executionDidBegin__block_invoke_2;
  v13[3] = &unk_279E1A6F8;
  objc_copyWeak(&v14, buf);
  [(VSAppsOperation *)self fetchChannelAppsWithCompletion:v13];
  v9 = [(VSAppsOperation *)self dispatchGroup];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__VSAppsOperation_executionDidBegin__block_invoke_3;
  block[3] = &unk_279E19D48;
  objc_copyWeak(&v12, buf);
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], block);

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