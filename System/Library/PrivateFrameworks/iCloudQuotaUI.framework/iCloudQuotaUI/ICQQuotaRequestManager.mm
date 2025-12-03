@interface ICQQuotaRequestManager
+ (id)noAccountError;
+ (id)sharedManager;
- (ICQQuotaRequestManager)init;
- (id)_sendSynchronousAARequest:(id)request;
- (id)appDetailsForBundleIDs:(id)ds error:(id *)error;
- (id)quotaInfoDetailed:(BOOL)detailed error:(id *)error;
- (void)clearCachedAppDetails;
- (void)clearCachedQuotaInfo;
- (void)getAppDetailsForBundleIDs:(id)ds handler:(id)handler;
- (void)getQuotaInfoDetailed:(BOOL)detailed handler:(id)handler;
- (void)noteQuotaInfoChanged;
@end

@implementation ICQQuotaRequestManager

+ (id)sharedManager
{
  if (sharedManager_once != -1)
  {
    +[ICQQuotaRequestManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

void __39__ICQQuotaRequestManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(ICQQuotaRequestManager);
  v1 = sharedManager_manager;
  sharedManager_manager = v0;
}

+ (id)noAccountError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"No Primary Account" forKey:*MEMORY[0x277CCA450]];
  v4 = [v2 errorWithDomain:@"com.apple.appleaccount" code:0 userInfo:v3];

  return v4;
}

- (ICQQuotaRequestManager)init
{
  v10.receiver = self;
  v10.super_class = ICQQuotaRequestManager;
  v2 = [(ICQQuotaRequestManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appDetailsCache = v2->_appDetailsCache;
    v2->_appDetailsCache = v5;

    v7 = dispatch_queue_create("com.apple.preferences.quota_info_queue", 0);
    quota_info_queue = v2->_quota_info_queue;
    v2->_quota_info_queue = v7;
  }

  return v2;
}

- (void)clearCachedQuotaInfo
{
  quota_info_queue = self->_quota_info_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ICQQuotaRequestManager_clearCachedQuotaInfo__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(quota_info_queue, block);
}

void __46__ICQQuotaRequestManager_clearCachedQuotaInfo__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (void)noteQuotaInfoChanged
{
  [(ICQQuotaRequestManager *)self clearCachedQuotaInfo];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"QuotaInformationChanged" object:0];
}

- (id)_sendSynchronousAARequest:(id)request
{
  requestCopy = request;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = objc_alloc(MEMORY[0x277CEC840]);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __52__ICQQuotaRequestManager__sendSynchronousAARequest___block_invoke;
  v15 = &unk_27A65B770;
  v17 = &v18;
  v7 = v5;
  v16 = v7;
  v8 = [v6 initWithRequest:requestCopy handler:&v12];
  [(NSOperationQueue *)self->_requestQueue addOperation:v8, v12, v13, v14, v15];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v19[5];
  if (!v9)
  {
    __assert_rtn("[ICQQuotaRequestManager _sendSynchronousAARequest:]", "ICQQuotaRequestManager.m", 77, "response");
  }

  v10 = v9;

  _Block_object_dispose(&v18, 8);

  return v10;
}

void __52__ICQQuotaRequestManager__sendSynchronousAARequest___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)quotaInfoDetailed:(BOOL)detailed error:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  quota_info_queue = self->_quota_info_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__ICQQuotaRequestManager_quotaInfoDetailed_error___block_invoke;
  v9[3] = &unk_27A65B798;
  detailedCopy = detailed;
  v9[4] = self;
  v9[5] = &v11;
  v9[6] = &v17;
  dispatch_sync(quota_info_queue, v9);
  if (error)
  {
    v6 = v12[5];
    if (v6)
    {
      *error = v6;
    }
  }

  v7 = v18[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v7;
}

void __50__ICQQuotaRequestManager_quotaInfoDetailed_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3 || *(a1 + 56) == 1 && (*(v2 + 32) & 1) == 0)
  {
    *(v2 + 24) = 0;

    v4 = [MEMORY[0x277CB8F48] defaultStore];
    v5 = [v4 aa_primaryAppleAccount];
    if (v5)
    {
      v6 = [[ICQQuotaInfoRequest alloc] initWithAccount:v5 accountStore:v4 detailed:*(a1 + 56)];
      v7 = [*(a1 + 32) _sendSynchronousAARequest:v6];
      v8 = [v7 error];

      if (v8)
      {
        v9 = [v7 error];
        v10 = *(*(a1 + 40) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }

      else
      {
        objc_storeStrong((*(a1 + 32) + 24), v7);
        *(*(a1 + 32) + 32) = *(a1 + 56);
      }
    }

    else
    {
      v12 = [objc_opt_class() noAccountError];
      v13 = *(*(a1 + 40) + 8);
      v6 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v3 = *(*(a1 + 32) + 24);
  }

  v14 = (*(*(a1 + 48) + 8) + 40);

  objc_storeStrong(v14, v3);
}

- (void)getQuotaInfoDetailed:(BOOL)detailed handler:(id)handler
{
  handlerCopy = handler;
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ICQQuotaRequestManager_getQuotaInfoDetailed_handler___block_invoke;
  block[3] = &unk_27A65B7E8;
  detailedCopy = detailed;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

void __55__ICQQuotaRequestManager_getQuotaInfoDetailed_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v10 = 0;
  v4 = [v2 quotaInfoDetailed:v3 error:&v10];
  v5 = v10;
  if (*(a1 + 40))
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__ICQQuotaRequestManager_getQuotaInfoDetailed_handler___block_invoke_2;
    v6[3] = &unk_27A65B7C0;
    v9 = *(a1 + 40);
    v7 = v4;
    v8 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

- (void)clearCachedAppDetails
{
  obj = self->_appDetailsCache;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)self->_appDetailsCache removeAllObjects];
  objc_sync_exit(obj);
}

- (id)appDetailsForBundleIDs:(id)ds error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v27 = self->_appDetailsCache;
  objc_sync_enter(v27);
  array = [MEMORY[0x277CBEB18] array];
  v8 = [dsCopy mutableCopy];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = dsCopy;
  v9 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_appDetailsCache objectForKey:v12];
        if (v13)
        {
          [v8 removeObject:v12];
          [array addObject:v13];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  if (![v8 count])
  {
    goto LABEL_26;
  }

  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  if (!aa_primaryAppleAccount)
  {
    if (error)
    {
      *error = [objc_opt_class() noAccountError];
    }

    goto LABEL_26;
  }

  v24 = [(ICQQuotaRequestManager *)self quotaInfoDetailed:0 error:error];
  if (v24)
  {
    v14 = [[ICQQuotaAppDetailsRequest alloc] initWithAccount:aa_primaryAppleAccount accountStore:defaultStore bundleIDs:v8 quotaInfo:v24];
    [(ICQQuotaRequestManager *)self _sendSynchronousAARequest:v14];
    v23 = v14;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v28 = v31 = 0u;
    apps = [(ICQQuotaAppDetailsResponse *)v28 apps];
    v16 = [apps countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v16)
    {
      v17 = *v31;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(apps);
          }

          v19 = *(*(&v30 + 1) + 8 * j);
          appDetailsCache = self->_appDetailsCache;
          bundleID = [v19 bundleID];
          [(NSMutableDictionary *)appDetailsCache setObject:v19 forKey:bundleID];
        }

        v16 = [apps countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v28 = 0;
  }

  if (!v28)
  {
LABEL_26:
    v28 = objc_alloc_init(ICQQuotaAppDetailsResponse);
  }

  [(ICQQuotaAppDetailsResponse *)v28 addApps:array];

  objc_sync_exit(v27);

  return v28;
}

- (void)getAppDetailsForBundleIDs:(id)ds handler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ICQQuotaRequestManager_getAppDetailsForBundleIDs_handler___block_invoke;
  block[3] = &unk_27A65B060;
  block[4] = self;
  v12 = dsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dsCopy;
  dispatch_async(v8, block);
}

void __60__ICQQuotaRequestManager_getAppDetailsForBundleIDs_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = [v2 appDetailsForBundleIDs:v3 error:&v13];
  v5 = v13;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__ICQQuotaRequestManager_getAppDetailsForBundleIDs_handler___block_invoke_2;
  v9[3] = &unk_27A65B7C0;
  v6 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v10 = v4;
  v7 = v5;
  v8 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

@end