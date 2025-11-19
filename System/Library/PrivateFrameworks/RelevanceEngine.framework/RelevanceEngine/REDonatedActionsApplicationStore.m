@interface REDonatedActionsApplicationStore
- (BOOL)_shouldFilterDonation:(id)a3;
- (REDonatedActionsApplicationStore)init;
- (REDonatedActionsApplicationStore)initWithLocationManager:(id)a3;
- (void)_notify;
- (void)_notifyApplicationsUpdates;
- (void)_queue_loadApplicationsIfNeededWithCompletion:(id)a3;
- (void)_sortDonationsByCount:(id)a3 completion:(id)a4;
- (void)donatedActionFilteredCacheDidAddDonation:(id)a3;
- (void)donatedActionFilteredCacheDonationRemoved;
- (void)fetchApplicationsProvidingDonations:(id)a3;
- (void)fetchDonationWithIdentifier:(id)a3 completion:(id)a4;
- (void)fetchTopDonationsForApplications:(id)a3 fromOnlyRecentPlatform:(BOOL)a4 block:(id)a5;
@end

@implementation REDonatedActionsApplicationStore

- (REDonatedActionsApplicationStore)init
{
  v3 = +[RELocationManager simulatedLocationManager];
  v4 = [(REDonatedActionsApplicationStore *)self initWithLocationManager:v3];

  return v4;
}

- (REDonatedActionsApplicationStore)initWithLocationManager:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = REDonatedActionsApplicationStore;
  v5 = [(REDonatedActionsApplicationStore *)&v37 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.RelevanceEngine.REDonatedActionsApplicationStore", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = +[REMutableRelevanceEngineConfiguration defaultConfiguration];
    [v8 setWantsImmutableContent:1];
    [v8 setAllowsRemoteTraining:1];
    [v8 setTrainingBehavior:1];
    [v8 setModelStorageBehavior:1];
    v31 = v4;
    [v8 setLocationManager:v4];
    v9 = +[REDataSourceLoader disabledDataSourceLoader];
    [v8 setDataSourceLoader:v9];

    [v8 removeAllInteractions];
    [v8 removeAllSections];
    v10 = [RESectionDescriptor defaultSectionDescriptorForIdentifier:@"defaultSectionIdentifier"];
    [v10 setHistoricSectionDescriptor:0];
    v11 = [v10 rules];
    v12 = [v11 mutableCopy];

    v13 = [REFilteringRule alloc];
    v14 = +[RECondition trueCondition];
    v15 = [(REFilteringRule *)v13 initWithCondition:v14 type:1];

    LODWORD(v16) = 1.0;
    [(RERule *)v15 setPriority:v16];
    [v12 addObject:v15];
    [v10 setRules:v12];
    [v8 addSectionWithDescriptor:v10];
    v17 = objc_alloc_init(REInteractionDescriptor);
    [(REInteractionDescriptor *)v17 setName:@"REElementInteractionTap"];
    [v8 addInteractionWithDescriptor:v17];
    v18 = [[RERelevanceEngine alloc] initWithName:@"REDonatedActionsApplicationStore-Filtering" configuration:v8];
    filteringEngine = v5->_filteringEngine;
    v5->_filteringEngine = v18;

    [(RERelevanceEngine *)v5->_filteringEngine setAutomaticallyResumeEngine:0];
    [(RERelevanceEngine *)v5->_filteringEngine resume];
    v20 = [(RERelevanceEngine *)v5->_filteringEngine elementRankerForSection:@"defaultSectionIdentifier"];
    elementRanker = v5->_elementRanker;
    v5->_elementRanker = v20;

    objc_initWeak(&location, v5);
    v22 = v5->_queue;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __60__REDonatedActionsApplicationStore_initWithLocationManager___block_invoke;
    v34[3] = &unk_2785F9A90;
    objc_copyWeak(&v35, &location);
    v23 = [REUpNextScheduler schedulerWithQueue:v22 delay:v34 updateBlock:0.1];
    scheduler = v5->_scheduler;
    v5->_scheduler = v23;

    v25 = v5->_queue;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __60__REDonatedActionsApplicationStore_initWithLocationManager___block_invoke_2;
    v32[3] = &unk_2785F9A90;
    objc_copyWeak(&v33, &location);
    v26 = [REUpNextScheduler schedulerWithQueue:v25 delay:v32 updateBlock:0.1];
    applicationScheduler = v5->_applicationScheduler;
    v5->_applicationScheduler = v26;

    v28 = objc_alloc_init(REDonatedActionFilteredCache);
    cache = v5->_cache;
    v5->_cache = v28;

    [(REDonatedActionFilteredCache *)v5->_cache setDelegate:v5];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);

    v4 = v31;
  }

  return v5;
}

void __60__REDonatedActionsApplicationStore_initWithLocationManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notify];
}

void __60__REDonatedActionsApplicationStore_initWithLocationManager___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyApplicationsUpdates];
}

- (void)fetchApplicationsProvidingDonations:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__REDonatedActionsApplicationStore_fetchApplicationsProvidingDonations___block_invoke;
    v7[3] = &unk_2785F9A40;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __72__REDonatedActionsApplicationStore_fetchApplicationsProvidingDonations___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__REDonatedActionsApplicationStore_fetchApplicationsProvidingDonations___block_invoke_2;
  v4[3] = &unk_2785FA150;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _queue_loadApplicationsIfNeededWithCompletion:v4];
}

void __72__REDonatedActionsApplicationStore_fetchApplicationsProvidingDonations___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 40) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)fetchDonationWithIdentifier:(id)a3 completion:(id)a4
{
  if (a4)
  {
    [(REDonatedActionFilteredCache *)self->_cache fetchDonationWithIdentifier:a3 completion:?];
  }
}

- (void)fetchTopDonationsForApplications:(id)a3 fromOnlyRecentPlatform:(BOOL)a4 block:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    if ([v8 count])
    {
      if (v6)
      {
        v10 = objc_alloc_init(_MultiplatformDonationRecencyStore);
      }

      else
      {
        v10 = 0;
      }

      v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
      cache = self->_cache;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __98__REDonatedActionsApplicationStore_fetchTopDonationsForApplications_fromOnlyRecentPlatform_block___block_invoke;
      v21[3] = &unk_2785FDAE8;
      v22 = v8;
      v23 = self;
      v24 = v11;
      v26 = v6;
      v25 = v10;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __98__REDonatedActionsApplicationStore_fetchTopDonationsForApplications_fromOnlyRecentPlatform_block___block_invoke_2;
      v15[3] = &unk_2785FDB38;
      v20 = v6;
      v16 = v25;
      v17 = v24;
      v18 = self;
      v19 = v9;
      v13 = v24;
      v14 = v25;
      [(REDonatedActionFilteredCache *)cache fetchAllUniqueActions:v21 completion:v15];
    }

    else
    {
      (*(v9 + 2))(v9, MEMORY[0x277CBEC10]);
    }
  }
}

void __98__REDonatedActionsApplicationStore_fetchTopDonationsForApplications_fromOnlyRecentPlatform_block___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 bundleIdentifier];
  if (v3 && [*(a1 + 32) containsObject:v3] && (objc_msgSend(*(a1 + 40), "_shouldFilterDonation:", v9) & 1) == 0)
  {
    v4 = [*(a1 + 48) objectForKeyedSubscript:v3];
    if (!v4)
    {
      v4 = [MEMORY[0x277CBEB18] array];
      [*(a1 + 48) setObject:v4 forKeyedSubscript:v3];
    }

    [v4 addObject:v9];
    if (*(a1 + 64) == 1)
    {
      v5 = [v9 remoteBundleIdentifier];
      v6 = [v9 localBundleIdentifier];
      if ([v9 isLocalDonation])
      {
        v7 = 0;
      }

      else
      {
        v7 = [v9 creationDate];
      }

      if ([v9 isLocalDonation])
      {
        v8 = [v9 creationDate];
      }

      else
      {
        v8 = 0;
      }

      [*(a1 + 56) updateDataWithRemoteBundleIdentifier:v5 remoteDate:v7 localBundleIdentifier:v6 localDate:v8];
    }
  }
}

void __98__REDonatedActionsApplicationStore_fetchTopDonationsForApplications_fromOnlyRecentPlatform_block___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) bundlesFromMostRecentlyProvidingPlatforms];
  }

  else
  {
    [*(a1 + 40) allKeys];
  }
  v2 = ;
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v4 = objc_alloc_init(REExpectation);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v2;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        [(REExpectation *)v4 beginOperation];
        v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
        v11 = *(a1 + 48);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __98__REDonatedActionsApplicationStore_fetchTopDonationsForApplications_fromOnlyRecentPlatform_block___block_invoke_3;
        v20[3] = &unk_2785FDB10;
        v20[4] = v11;
        v21 = v3;
        v22 = v9;
        v23 = v4;
        [v11 _sortDonationsByCount:v10 completion:v20];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v12 = *(*(a1 + 48) + 32);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __98__REDonatedActionsApplicationStore_fetchTopDonationsForApplications_fromOnlyRecentPlatform_block___block_invoke_5;
  v17[3] = &unk_2785FA150;
  v13 = *(a1 + 56);
  v18 = v3;
  v19 = v13;
  v14 = v3;
  [(REExpectation *)v4 notifyOperationsCompleteOnQueue:v12 block:v17];

  v15 = *MEMORY[0x277D85DE8];
}

void __98__REDonatedActionsApplicationStore_fetchTopDonationsForApplications_fromOnlyRecentPlatform_block___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __98__REDonatedActionsApplicationStore_fetchTopDonationsForApplications_fromOnlyRecentPlatform_block___block_invoke_4;
  v9[3] = &unk_2785FA4C0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  v12 = v3;
  v13 = v7;
  v8 = v3;
  dispatch_async(v4, v9);
}

uint64_t __98__REDonatedActionsApplicationStore_fetchTopDonationsForApplications_fromOnlyRecentPlatform_block___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
  v2 = *(a1 + 56);

  return [v2 endOperation];
}

void __98__REDonatedActionsApplicationStore_fetchTopDonationsForApplications_fromOnlyRecentPlatform_block___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)_shouldFilterDonation:(id)a3
{
  v4 = a3;
  v5 = [v4 relevanceProviders];
  if ([v5 count])
  {
    v6 = [REElement alloc];
    v7 = objc_opt_new();
    v8 = [v4 relevanceProviders];
    v9 = [(REElement *)v6 initWithIdentifier:@"filtering-element" content:v7 action:0 relevanceProviders:v8];

    v10 = [(REMLElementRanker *)self->_elementRanker shouldHideElement:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_sortDonationsByCount:(id)a3 completion:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 count] > 1)
    {
      v22 = v7;
      v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
      v10 = dispatch_group_create();
      v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v23 = v6;
      obj = v6;
      v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v35;
        do
        {
          v15 = 0;
          do
          {
            if (*v35 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v34 + 1) + 8 * v15);
            dispatch_group_enter(v10);
            cache = self->_cache;
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __69__REDonatedActionsApplicationStore__sortDonationsByCount_completion___block_invoke;
            v29[3] = &unk_2785FDB88;
            v29[4] = v16;
            v30 = v10;
            v31 = self;
            v32 = v9;
            v33 = v11;
            [(REDonatedActionFilteredCache *)cache fetchCountForAction:v16 usingBlock:v29];

            ++v15;
          }

          while (v13 != v15);
          v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v13);
      }

      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__REDonatedActionsApplicationStore__sortDonationsByCount_completion___block_invoke_3;
      block[3] = &unk_2785F99C8;
      v26 = v11;
      v27 = v9;
      v7 = v22;
      v28 = v22;
      v19 = v9;
      v20 = v11;
      dispatch_group_notify(v10, queue, block);

      v6 = v23;
    }

    else
    {
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = MEMORY[0x277CBEBF8];
      }

      (*(v7 + 2))(v7, v8);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __69__REDonatedActionsApplicationStore__sortDonationsByCount_completion___block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = [*(a1 + 32) type];
  if (a2 > 1 || v4 == 2)
  {
    v6 = *(*(a1 + 48) + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__REDonatedActionsApplicationStore__sortDonationsByCount_completion___block_invoke_2;
    block[3] = &unk_2785FDB60;
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    v14 = a2;
    v12 = *(a1 + 64);
    v13 = *(a1 + 40);
    dispatch_async(v6, block);
  }

  else
  {
    v5 = *(a1 + 40);

    dispatch_group_leave(v5);
  }
}

void __69__REDonatedActionsApplicationStore__sortDonationsByCount_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) identifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  [*(a1 + 48) addObject:*(a1 + 40)];
  v5 = *(a1 + 56);

  dispatch_group_leave(v5);
}

void __69__REDonatedActionsApplicationStore__sortDonationsByCount_completion___block_invoke_3(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__REDonatedActionsApplicationStore__sortDonationsByCount_completion___block_invoke_4;
  v4[3] = &unk_2785FDBB0;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 sortedArrayUsingComparator:v4];
  (*(*(a1 + 48) + 16))();
}

uint64_t __69__REDonatedActionsApplicationStore__sortDonationsByCount_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 identifier];
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &unk_283BBD938;
  }

  v11 = v10;

  v12 = *(a1 + 32);
  v13 = [v6 identifier];

  v14 = [v12 objectForKeyedSubscript:v13];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &unk_283BBD938;
  }

  v17 = v16;

  v18 = [v17 compare:v11];
  return v18;
}

- (void)_notify
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"REDonatedActionsApplicationStoreDidUpdate" object:self];
}

- (void)_notifyApplicationsUpdates
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"REDonatedActionsApplicationStoreDidUpdateApplications" object:0];
}

- (void)_queue_loadApplicationsIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_applications)
  {
    if (v4)
    {
      (*(v4 + 2))(v4);
    }
  }

  else
  {
    v6 = [MEMORY[0x277CBEB58] set];
    cache = self->_cache;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__REDonatedActionsApplicationStore__queue_loadApplicationsIfNeededWithCompletion___block_invoke;
    v12[3] = &unk_2785FDBD8;
    v13 = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__REDonatedActionsApplicationStore__queue_loadApplicationsIfNeededWithCompletion___block_invoke_2;
    v9[3] = &unk_2785F99C8;
    v9[4] = self;
    v10 = v13;
    v11 = v5;
    v8 = v13;
    [(REDonatedActionFilteredCache *)cache fetchAllUniqueActions:v12 completion:v9];
  }
}

uint64_t __82__REDonatedActionsApplicationStore__queue_loadApplicationsIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void __82__REDonatedActionsApplicationStore__queue_loadApplicationsIfNeededWithCompletion___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__REDonatedActionsApplicationStore__queue_loadApplicationsIfNeededWithCompletion___block_invoke_3;
  block[3] = &unk_2785F99C8;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

uint64_t __82__REDonatedActionsApplicationStore__queue_loadApplicationsIfNeededWithCompletion___block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  [*(*(a1 + 32) + 24) schedule];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)donatedActionFilteredCacheDidAddDonation:(id)a3
{
  v4 = [a3 bundleIdentifier];
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__REDonatedActionsApplicationStore_donatedActionFilteredCacheDidAddDonation___block_invoke;
    v7[3] = &unk_2785F9AE0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

uint64_t __77__REDonatedActionsApplicationStore_donatedActionFilteredCacheDidAddDonation___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  [*(*(a1 + 32) + 24) schedule];
  v2 = *(*(a1 + 32) + 16);

  return [v2 schedule];
}

- (void)donatedActionFilteredCacheDonationRemoved
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__REDonatedActionsApplicationStore_donatedActionFilteredCacheDonationRemoved__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __77__REDonatedActionsApplicationStore_donatedActionFilteredCacheDonationRemoved__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  [*(*(a1 + 32) + 24) schedule];
  v4 = *(*(a1 + 32) + 16);

  return [v4 schedule];
}

@end