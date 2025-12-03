@interface SPAdvertisementCache
- (SPAdvertisementCache)init;
- (SPAdvertisementCacheXPCProtocol)proxy;
- (id)remoteInterface;
- (void)advertisementsForSearchCriteria:(id)criteria completion:(id)completion;
- (void)beaconAdvertisementAtFileURL:(id)l beaconIdentifier:(id)identifier scanDate:(id)date completion:(id)completion;
- (void)beaconPayloadsForSearchCriteria:(id)criteria completion:(id)completion;
- (void)clearCacheWithCompletion:(id)completion;
- (void)dealloc;
- (void)markAdvertisementsProcessed:(id)processed completion:(id)completion;
- (void)markBeaconPayloadsProcessed:(id)processed completion:(id)completion;
- (void)markRecordsProcessed:(id)processed completion:(id)completion;
- (void)mockingEnabled:(BOOL)enabled;
- (void)saveAdvertisements:(id)advertisements completion:(id)completion;
- (void)saveBeaconPayloads:(id)payloads completion:(id)completion;
@end

@implementation SPAdvertisementCache

- (SPAdvertisementCacheXPCProtocol)proxy
{
  v18 = *MEMORY[0x277D85DE8];
  queue = [(SPAdvertisementCache *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(SPAdvertisementCache *)self session];

  if (!session)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    serviceDescription = [(SPAdvertisementCache *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:serviceDescription];
    [(SPAdvertisementCache *)self setSession:v7];

    v8 = LogCategory_AdvertisementCache();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      serviceDescription2 = [(SPAdvertisementCache *)self serviceDescription];
      machService = [serviceDescription2 machService];
      v16 = 138412290;
      v17 = machService;
      _os_log_impl(&dword_2643BF000, v8, OS_LOG_TYPE_DEFAULT, "SPAdvertisementCache: Establishing XPC connection to %@", &v16, 0xCu);
    }

    session2 = [(SPAdvertisementCache *)self session];
    [session2 resume];
  }

  session3 = [(SPAdvertisementCache *)self session];
  proxy = [session3 proxy];

  v14 = *MEMORY[0x277D85DE8];

  return proxy;
}

- (SPAdvertisementCache)init
{
  v11.receiver = self;
  v11.super_class = SPAdvertisementCache;
  v2 = [(SPAdvertisementCache *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.icloud.searchpartyd.advertisementcache", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc(MEMORY[0x277D07BA0]);
    remoteInterface = [(SPAdvertisementCache *)v2 remoteInterface];
    v8 = [v6 initWithMachServiceName:@"com.apple.icloud.searchpartyd.advertisementcache" options:0 remoteObjectInterface:remoteInterface interruptionHandler:0 invalidationHandler:0];
    serviceDescription = v2->_serviceDescription;
    v2->_serviceDescription = v8;
  }

  return v2;
}

- (void)dealloc
{
  session = [(SPAdvertisementCache *)self session];
  [session invalidate];

  [(SPAdvertisementCache *)self setSession:0];
  v4.receiver = self;
  v4.super_class = SPAdvertisementCache;
  [(SPAdvertisementCache *)&v4 dealloc];
}

- (id)remoteInterface
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2875DBB40];
  v3 = MEMORY[0x277CBEB98];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v8[4] = objc_opt_class();
  v8[5] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:6];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_advertisementsForSearchCriteria_completion_ argumentIndex:0 ofReply:1];

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)mockingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v15 = *MEMORY[0x277D85DE8];
  v5 = LogCategory_AdvertisementCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = enabledCopy;
    _os_log_impl(&dword_2643BF000, v5, OS_LOG_TYPE_DEFAULT, "mockingEnabled: %i", buf, 8u);
  }

  v6 = objc_alloc(MEMORY[0x277D07B80]);
  v7 = [v6 initWithDescription:@"SPAdvertisementCacheMocking" andTimeout:*MEMORY[0x277D07BB0]];
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __39__SPAdvertisementCache_mockingEnabled___block_invoke;
  activity_block[3] = &unk_279B57958;
  v12 = enabledCopy;
  activity_block[4] = self;
  v11 = v7;
  v8 = v7;
  _os_activity_initiate(&dword_2643BF000, "SPAdvertisementCache advertisementCacheSimulation:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  [v8 wait];
  v9 = *MEMORY[0x277D85DE8];
}

void __39__SPAdvertisementCache_mockingEnabled___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__SPAdvertisementCache_mockingEnabled___block_invoke_2;
  v3[3] = &unk_279B57930;
  objc_copyWeak(&v5, &location);
  v6 = *(a1 + 48);
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__SPAdvertisementCache_mockingEnabled___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained proxy];
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__SPAdvertisementCache_mockingEnabled___block_invoke_3;
  v5[3] = &unk_279B57908;
  v6 = *(a1 + 32);
  [v3 advertisementCacheSimulation:v4 completion:v5];
}

void __39__SPAdvertisementCache_mockingEnabled___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = LogCategory_AdvertisementCache();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__SPAdvertisementCache_mockingEnabled___block_invoke_3_cold_1(v3, v4);
    }
  }

  [*(a1 + 32) signal];
}

- (void)markRecordsProcessed:(id)processed completion:(id)completion
{
  processedCopy = processed;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __56__SPAdvertisementCache_markRecordsProcessed_completion___block_invoke;
  activity_block[3] = &unk_279B57798;
  activity_block[4] = self;
  v11 = processedCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = processedCopy;
  _os_activity_initiate(&dword_2643BF000, "SPAdvertisementCache markAdvertisementsProcessed:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __56__SPAdvertisementCache_markRecordsProcessed_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__SPAdvertisementCache_markRecordsProcessed_completion___block_invoke_2;
  v3[3] = &unk_279B57770;
  objc_copyWeak(&v6, &location);
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, v3);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __56__SPAdvertisementCache_markRecordsProcessed_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained proxy];
  [v2 markAdvertisementsProcessed:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)saveAdvertisements:(id)advertisements completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  advertisementsCopy = advertisements;
  completionCopy = completion;
  v8 = LogCategory_AdvertisementCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [advertisementsCopy count];
    _os_log_impl(&dword_2643BF000, v8, OS_LOG_TYPE_DEFAULT, "saveAdvertisements: %lu", buf, 0xCu);
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __54__SPAdvertisementCache_saveAdvertisements_completion___block_invoke;
  activity_block[3] = &unk_279B57798;
  activity_block[4] = self;
  v13 = advertisementsCopy;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = advertisementsCopy;
  _os_activity_initiate(&dword_2643BF000, "SPAdvertisementCache saveAdvertisements:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v11 = *MEMORY[0x277D85DE8];
}

void __54__SPAdvertisementCache_saveAdvertisements_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__SPAdvertisementCache_saveAdvertisements_completion___block_invoke_2;
  v3[3] = &unk_279B57770;
  objc_copyWeak(&v6, &location);
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, v3);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __54__SPAdvertisementCache_saveAdvertisements_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained proxy];
  [v2 saveAdvertisements:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)advertisementsForSearchCriteria:(id)criteria completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  completionCopy = completion;
  v8 = LogCategory_AdvertisementCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = criteriaCopy;
    _os_log_impl(&dword_2643BF000, v8, OS_LOG_TYPE_DEFAULT, "advertisementsForSearchCriteria: %@", buf, 0xCu);
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __67__SPAdvertisementCache_advertisementsForSearchCriteria_completion___block_invoke;
  activity_block[3] = &unk_279B57798;
  activity_block[4] = self;
  v13 = criteriaCopy;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = criteriaCopy;
  _os_activity_initiate(&dword_2643BF000, "SPAdvertisementCache advertisementsForSearchCriteria:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v11 = *MEMORY[0x277D85DE8];
}

void __67__SPAdvertisementCache_advertisementsForSearchCriteria_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__SPAdvertisementCache_advertisementsForSearchCriteria_completion___block_invoke_2;
  v3[3] = &unk_279B57770;
  objc_copyWeak(&v6, &location);
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, v3);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __67__SPAdvertisementCache_advertisementsForSearchCriteria_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained proxy];
  [v2 advertisementsForSearchCriteria:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)markAdvertisementsProcessed:(id)processed completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  processedCopy = processed;
  completionCopy = completion;
  v8 = LogCategory_AdvertisementCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = [processedCopy count];
    _os_log_impl(&dword_2643BF000, v8, OS_LOG_TYPE_DEFAULT, "markAdvertisementsProcessed: %lu", buf, 0xCu);
  }

  v9 = [processedCopy fm_map:&__block_literal_global_0];
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __63__SPAdvertisementCache_markAdvertisementsProcessed_completion___block_invoke_2;
  activity_block[3] = &unk_279B57798;
  activity_block[4] = self;
  v14 = v9;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = v9;
  _os_activity_initiate(&dword_2643BF000, "SPAdvertisementCache markRecordsProcessed:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)saveBeaconPayloads:(id)payloads completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  payloadsCopy = payloads;
  completionCopy = completion;
  v8 = LogCategory_AdvertisementCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [payloadsCopy count];
    _os_log_impl(&dword_2643BF000, v8, OS_LOG_TYPE_DEFAULT, "saveBeaconPayload: %lu", buf, 0xCu);
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __54__SPAdvertisementCache_saveBeaconPayloads_completion___block_invoke;
  activity_block[3] = &unk_279B57798;
  activity_block[4] = self;
  v13 = payloadsCopy;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = payloadsCopy;
  _os_activity_initiate(&dword_2643BF000, "SPAdvertisementCache saveBeaconPayloads:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v11 = *MEMORY[0x277D85DE8];
}

void __54__SPAdvertisementCache_saveBeaconPayloads_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__SPAdvertisementCache_saveBeaconPayloads_completion___block_invoke_2;
  v3[3] = &unk_279B57770;
  objc_copyWeak(&v6, &location);
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, v3);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __54__SPAdvertisementCache_saveBeaconPayloads_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained proxy];
  [v2 saveBeaconPayloads:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)beaconPayloadsForSearchCriteria:(id)criteria completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  completionCopy = completion;
  v8 = LogCategory_AdvertisementCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = criteriaCopy;
    _os_log_impl(&dword_2643BF000, v8, OS_LOG_TYPE_DEFAULT, "beaconPayloadsForSearchCriteria: %@", buf, 0xCu);
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __67__SPAdvertisementCache_beaconPayloadsForSearchCriteria_completion___block_invoke;
  activity_block[3] = &unk_279B57798;
  activity_block[4] = self;
  v13 = criteriaCopy;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = criteriaCopy;
  _os_activity_initiate(&dword_2643BF000, "SPAdvertisementCache beaconPayloadsForSearchCriteria:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v11 = *MEMORY[0x277D85DE8];
}

void __67__SPAdvertisementCache_beaconPayloadsForSearchCriteria_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__SPAdvertisementCache_beaconPayloadsForSearchCriteria_completion___block_invoke_2;
  v3[3] = &unk_279B57770;
  objc_copyWeak(&v6, &location);
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, v3);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __67__SPAdvertisementCache_beaconPayloadsForSearchCriteria_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained proxy];
  [v2 beaconPayloadsForSearchCriteria:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)markBeaconPayloadsProcessed:(id)processed completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  processedCopy = processed;
  completionCopy = completion;
  v8 = LogCategory_AdvertisementCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [processedCopy count];
    _os_log_impl(&dword_2643BF000, v8, OS_LOG_TYPE_DEFAULT, "markBeaconPayloadsProcessed: %lu", buf, 0xCu);
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __63__SPAdvertisementCache_markBeaconPayloadsProcessed_completion___block_invoke;
  activity_block[3] = &unk_279B57798;
  activity_block[4] = self;
  v13 = processedCopy;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = processedCopy;
  _os_activity_initiate(&dword_2643BF000, "SPAdvertisementCache markFilesProcessed:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v11 = *MEMORY[0x277D85DE8];
}

void __63__SPAdvertisementCache_markBeaconPayloadsProcessed_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__SPAdvertisementCache_markBeaconPayloadsProcessed_completion___block_invoke_2;
  v3[3] = &unk_279B57770;
  objc_copyWeak(&v6, &location);
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, v3);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __63__SPAdvertisementCache_markBeaconPayloadsProcessed_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained proxy];
  [v2 markFilesProcessed:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)beaconAdvertisementAtFileURL:(id)l beaconIdentifier:(id)identifier scanDate:(id)date completion:(id)completion
{
  lCopy = l;
  identifierCopy = identifier;
  dateCopy = date;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = [(SPAdvertisementCache *)self queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__SPAdvertisementCache_beaconAdvertisementAtFileURL_beaconIdentifier_scanDate_completion___block_invoke;
  v19[3] = &unk_279B579A0;
  objc_copyWeak(&v24, &location);
  v20 = lCopy;
  v21 = identifierCopy;
  v22 = dateCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = dateCopy;
  v17 = identifierCopy;
  v18 = lCopy;
  dispatch_async(queue, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __90__SPAdvertisementCache_beaconAdvertisementAtFileURL_beaconIdentifier_scanDate_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained proxy];
  [v2 beaconAdvertisementAtFileURL:*(a1 + 32) beaconIdentifier:*(a1 + 40) scanDate:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)clearCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = [(SPAdvertisementCache *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SPAdvertisementCache_clearCacheWithCompletion___block_invoke;
  block[3] = &unk_279B577C0;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__SPAdvertisementCache_clearCacheWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained proxy];
  [v2 clearCacheWithCompletion:*(a1 + 32)];
}

void __39__SPAdvertisementCache_mockingEnabled___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2643BF000, a2, OS_LOG_TYPE_ERROR, "Failed to change mocking state: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end