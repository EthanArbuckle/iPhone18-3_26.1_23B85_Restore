@interface REApplicationCache
+ (id)sharedInstance;
- (BOOL)_queue_applicationIsRemoved:(id)removed;
- (BOOL)_queue_applicationIsRestricted:(id)restricted;
- (BOOL)applicationIsRemote:(id)remote;
- (BOOL)applicationIsRemoved:(id)removed;
- (BOOL)applicationIsRestricted:(id)restricted;
- (id)_init;
- (id)localApplicationForRemoteApplication:(id)application;
- (id)remoteApplicationForLocalApplication:(id)application;
- (id)watchKitExtensionForApplication:(id)application;
- (unint64_t)_trackedApplicationCount;
- (unint64_t)typeForApplication:(id)application;
- (void)_accessRemoteApplicationsMapWithCompletion:(id)completion;
- (void)_clearApplicationTypesMap;
- (void)_init_loadApplicationTypesMapFromWorkspace:(id)workspace;
- (void)_queue_applicationsDidChange:(id)change;
- (void)_queue_loadRemoteAppsCompletion:(id)completion;
- (void)_queue_loadStateForBundleID:(id)d;
- (void)applicationStateDidChange:(id)change;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)clearNanoRegistryApplications;
- (void)dealloc;
@end

@implementation REApplicationCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[REApplicationCache sharedInstance];
  }

  v3 = sharedInstance_cache;

  return v3;
}

uint64_t __36__REApplicationCache_sharedInstance__block_invoke()
{
  v0 = [[REApplicationCache alloc] _init];
  v1 = sharedInstance_cache;
  sharedInstance_cache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_init
{
  v19.receiver = self;
  v19.super_class = REApplicationCache;
  v2 = [(REApplicationCache *)&v19 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    restrictedApps = v2->_restrictedApps;
    v2->_restrictedApps = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    removedApps = v2->_removedApps;
    v2->_removedApps = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    applicationTypes = v2->_applicationTypes;
    v2->_applicationTypes = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    watchKitExtensions = v2->_watchKitExtensions;
    v2->_watchKitExtensions = dictionary4;

    v11 = dispatch_queue_create("com.apple.relevanceengine.systemapplicationcache", 0);
    queue = v2->_queue;
    v2->_queue = v11;

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [(REApplicationCache *)v2 _init_loadApplicationTypesMapFromWorkspace:defaultWorkspace];
    [defaultWorkspace addObserver:v2];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v14 = getCSLPRFDefaultAppDataProviderClass_softClass;
    v24 = getCSLPRFDefaultAppDataProviderClass_softClass;
    if (!getCSLPRFDefaultAppDataProviderClass_softClass)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __getCSLPRFDefaultAppDataProviderClass_block_invoke;
      v20[3] = &unk_2785F9BC0;
      v20[4] = &v21;
      __getCSLPRFDefaultAppDataProviderClass_block_invoke(v20);
      v14 = v22[3];
    }

    v15 = v14;
    _Block_object_dispose(&v21, 8);
    v16 = objc_alloc_init(v14);
    appProvider = v2->_appProvider;
    v2->_appProvider = v16;

    [(CSLPRFDefaultAppDataProvider *)v2->_appProvider setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  v4.receiver = self;
  v4.super_class = REApplicationCache;
  [(REApplicationCache *)&v4 dealloc];
}

- (BOOL)applicationIsRemoved:(id)removed
{
  removedCopy = removed;
  dispatch_assert_queue_not_V2(self->_queue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__REApplicationCache_applicationIsRemoved___block_invoke;
  block[3] = &unk_2785FC2F0;
  v9 = removedCopy;
  v10 = &v11;
  block[4] = self;
  v6 = removedCopy;
  dispatch_sync(queue, block);
  LOBYTE(removedCopy) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return removedCopy;
}

uint64_t __43__REApplicationCache_applicationIsRemoved___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_applicationIsRemoved:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_queue_applicationIsRemoved:(id)removed
{
  removedCopy = removed;
  v5 = [(NSMutableDictionary *)self->_removedApps objectForKeyedSubscript:removedCopy];
  if (!v5)
  {
    [(REApplicationCache *)self _queue_loadStateForBundleID:removedCopy];
    v5 = [(NSMutableDictionary *)self->_removedApps objectForKeyedSubscript:removedCopy];
  }

  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)applicationIsRestricted:(id)restricted
{
  restrictedCopy = restricted;
  dispatch_assert_queue_not_V2(self->_queue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__REApplicationCache_applicationIsRestricted___block_invoke;
  block[3] = &unk_2785FC2F0;
  v9 = restrictedCopy;
  v10 = &v11;
  block[4] = self;
  v6 = restrictedCopy;
  dispatch_sync(queue, block);
  LOBYTE(restrictedCopy) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return restrictedCopy;
}

uint64_t __46__REApplicationCache_applicationIsRestricted___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_applicationIsRestricted:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_queue_applicationIsRestricted:(id)restricted
{
  restrictedCopy = restricted;
  v5 = [(NSMutableDictionary *)self->_restrictedApps objectForKeyedSubscript:restrictedCopy];
  if (!v5)
  {
    [(REApplicationCache *)self _queue_loadStateForBundleID:restrictedCopy];
    v5 = [(NSMutableDictionary *)self->_restrictedApps objectForKeyedSubscript:restrictedCopy];
  }

  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)applicationIsRemote:(id)remote
{
  remoteCopy = remote;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__16;
  v14 = __Block_byref_object_dispose__16;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__REApplicationCache_applicationIsRemote___block_invoke;
  v7[3] = &unk_2785FC318;
  v9 = &v10;
  v5 = remoteCopy;
  v8 = v5;
  [(REApplicationCache *)self _accessRemoteApplicationsMapWithCompletion:v7];
  LOBYTE(self) = v11[5] != 0;

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __42__REApplicationCache_applicationIsRemote___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (id)localApplicationForRemoteApplication:(id)application
{
  applicationCopy = application;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__16;
  v20 = __Block_byref_object_dispose__16;
  v21 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __59__REApplicationCache_localApplicationForRemoteApplication___block_invoke;
  v13 = &unk_2785FC318;
  v15 = &v16;
  v5 = applicationCopy;
  v14 = v5;
  [(REApplicationCache *)self _accessRemoteApplicationsMapWithCompletion:&v10];
  null = [MEMORY[0x277CBEB68] null];
  if ([null isEqual:v17[5]])
  {
    v7 = 0;
  }

  else
  {
    v7 = v17[5];
  }

  v8 = v7;

  _Block_object_dispose(&v16, 8);

  return v8;
}

uint64_t __59__REApplicationCache_localApplicationForRemoteApplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (id)remoteApplicationForLocalApplication:(id)application
{
  applicationCopy = application;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__16;
  v20 = __Block_byref_object_dispose__16;
  v21 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __59__REApplicationCache_remoteApplicationForLocalApplication___block_invoke;
  v13 = &unk_2785FC318;
  v15 = &v16;
  v5 = applicationCopy;
  v14 = v5;
  [(REApplicationCache *)self _accessRemoteApplicationsMapWithCompletion:&v10];
  null = [MEMORY[0x277CBEB68] null];
  if ([null isEqual:v17[5]])
  {
    v7 = 0;
  }

  else
  {
    v7 = v17[5];
  }

  v8 = v7;

  _Block_object_dispose(&v16, 8);

  return v8;
}

uint64_t __59__REApplicationCache_remoteApplicationForLocalApplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 keyForValue:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)_accessRemoteApplicationsMapWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__REApplicationCache__accessRemoteApplicationsMapWithCompletion___block_invoke;
  v7[3] = &unk_2785F9A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(queue, v7);
}

void __65__REApplicationCache__accessRemoteApplicationsMapWithCompletion___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 48))
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = dispatch_semaphore_create(0);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__REApplicationCache__accessRemoteApplicationsMapWithCompletion___block_invoke_2;
    v8[3] = &unk_2785FAE80;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = v4;
    v10 = v6;
    v8[4] = *(a1 + 32);
    v7 = v4;
    [v5 _queue_loadRemoteAppsCompletion:v8];
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  }
}

intptr_t __65__REApplicationCache__accessRemoteApplicationsMapWithCompletion___block_invoke_2(void *a1)
{
  v2 = *(a1[4] + 48);
  (*(a1[6] + 16))();
  v3 = a1[5];

  return dispatch_semaphore_signal(v3);
}

- (id)watchKitExtensionForApplication:(id)application
{
  applicationCopy = application;
  dispatch_assert_queue_not_V2(self->_queue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__REApplicationCache_watchKitExtensionForApplication___block_invoke;
  block[3] = &unk_2785F9F58;
  block[4] = self;
  v10 = applicationCopy;
  v11 = &v12;
  v6 = applicationCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __54__REApplicationCache_watchKitExtensionForApplication___block_invoke(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v3 = 0x277CBE000;
  if (!v2)
  {
    v4 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:a1[5]];
    v5 = v4;
    if (v4 && [v4 isWatchKitApp])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v6 = [v5 plugInKitPlugins];
      v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v21;
LABEL_6:
        v10 = 0;
        while (1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          v12 = [v11 protocol];
          v13 = [v12 isEqualToString:@"com.apple.watchkit"];

          if (v13)
          {
            break;
          }

          if (v8 == ++v10)
          {
            v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v8)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }

        v2 = [v11 bundleIdentifier];

        v3 = 0x277CBE000uLL;
        if (v2)
        {
          goto LABEL_15;
        }
      }

      else
      {
LABEL_12:

        v3 = 0x277CBE000;
      }
    }

    v2 = [*(v3 + 2920) null];
LABEL_15:
    [*(a1[4] + 40) setObject:v2 forKeyedSubscript:a1[5]];
  }

  v14 = [*(v3 + 2920) null];
  v15 = [v14 isEqual:v2];

  v16 = *(a1[6] + 8);
  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v2;
  }

  v18 = *(v16 + 40);
  *(v16 + 40) = v17;

  v19 = *MEMORY[0x277D85DE8];
}

- (unint64_t)typeForApplication:(id)application
{
  applicationCopy = application;
  dispatch_assert_queue_not_V2(self->_queue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__REApplicationCache_typeForApplication___block_invoke;
  block[3] = &unk_2785F9F58;
  block[4] = self;
  v10 = applicationCopy;
  v11 = &v12;
  v6 = applicationCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __41__REApplicationCache_typeForApplication___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v3 = v2;
    *(*(a1[6] + 8) + 24) = [v2 unsignedIntegerValue];
    v2 = v3;
  }
}

- (unint64_t)_trackedApplicationCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__REApplicationCache__trackedApplicationCount__block_invoke;
  v5[3] = &unk_2785FADB8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __46__REApplicationCache__trackedApplicationCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)clearNanoRegistryApplications
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__REApplicationCache_clearNanoRegistryApplications__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __51__REApplicationCache_clearNanoRegistryApplications__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__REApplicationCache_clearNanoRegistryApplications__block_invoke_2;
  block[3] = &unk_2785F9AB8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__REApplicationCache_clearNanoRegistryApplications__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"REApplicationStateDidChange" object:*(a1 + 32)];
}

- (void)_queue_loadRemoteAppsCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = dispatch_get_global_queue(33, 0);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    appProvider = self->_appProvider;
    *buf = 138412802;
    selfCopy = self;
    v14 = 2112;
    v15 = appProvider;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_22859F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, ">>>> %@ is loading apps using %@, completionQueue %@", buf, 0x20u);
  }

  v7 = self->_appProvider;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__REApplicationCache__queue_loadRemoteAppsCompletion___block_invoke;
  v10[3] = &unk_2785FC368;
  v10[4] = self;
  v11 = completionCopy;
  v8 = completionCopy;
  [(CSLPRFDefaultAppDataProvider *)v7 loadAppsWithCompletion:v10 completionQueue:v5];

  v9 = *MEMORY[0x277D85DE8];
}

void __54__REApplicationCache__queue_loadRemoteAppsCompletion___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138412546;
    v27 = v4;
    v28 = 1024;
    v29 = [v3 count];
    _os_log_impl(&dword_22859F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, ">>>> %@ loaded %d apps, processing", buf, 0x12u);
  }

  v5 = -[REKeyValueMap initWithCapacity:]([REKeyValueMap alloc], "initWithCapacity:", [v3 count]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v3 allValues];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v22 + 1) + 8 * v10) bundleID];
        v12 = [MEMORY[0x277CBEB68] null];
        [(REKeyValueMap *)v5 addKey:v11 withValue:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v8);
  }

  v13 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__REApplicationCache__queue_loadRemoteAppsCompletion___block_invoke_14;
  v20[3] = &unk_2785FC340;
  v14 = v5;
  v21 = v14;
  [v13 enumerateBundlesOfType:1 block:v20];

  objc_storeStrong((*(a1 + 32) + 48), v5);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    v16 = [(REKeyValueMap *)v14 count];
    v17 = MEMORY[0x22AABC5E0](*(a1 + 40));
    *buf = 138412802;
    v27 = v15;
    v28 = 1024;
    v29 = v16;
    v30 = 2112;
    v31 = v17;
    _os_log_impl(&dword_22859F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, ">>>> %@ mapps %d apps, calling %@", buf, 0x1Cu);
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __54__REApplicationCache__queue_loadRemoteAppsCompletion___block_invoke_14(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CC1E60];
  v4 = [a2 bundleURL];
  v5 = [v3 applicationProxyForBundleURL:v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 counterpartIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [*(a1 + 32) valueForKey:v11];

        if (v12)
        {
          v13 = *(a1 + 32);
          v14 = [v5 bundleIdentifier];
          [v13 addKey:v11 withValue:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_clearApplicationTypesMap
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__REApplicationCache__clearApplicationTypesMap__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_init_loadApplicationTypesMapFromWorkspace:(id)workspace
{
  v19 = *MEMORY[0x277D85DE8];
  workspaceCopy = workspace;
  v5 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  nextObject = [v5 nextObject];
  if (nextObject)
  {
    v7 = nextObject;
    do
    {
      applicationState = [v7 applicationState];
      if ([applicationState isInstalled])
      {
        v9 = [v7 developerType] == 1;
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
        applicationTypes = self->_applicationTypes;
        bundleIdentifier = [v7 bundleIdentifier];
        [(NSMutableDictionary *)applicationTypes setObject:v10 forKeyedSubscript:bundleIdentifier];

        nextObject2 = [v5 nextObject];

        v7 = nextObject2;
      }
    }

    while (v7);
  }

  v14 = RELogForDomain(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [(NSMutableDictionary *)self->_applicationTypes count];
    v17 = 134217984;
    v18 = v15;
    _os_log_impl(&dword_22859F000, v14, OS_LOG_TYPE_INFO, "[AppCache] Tracking %lu installed apps.", &v17, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_queue_loadStateForBundleID:(id)d
{
  dCopy = d;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:0];
  applicationState = [v4 applicationState];
  v6 = applicationState;
  if (v4 && [applicationState isValid])
  {
    isRestricted = [v6 isRestricted];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:isRestricted];
    [(NSMutableDictionary *)self->_restrictedApps setObject:v8 forKeyedSubscript:dCopy];

    if ([v6 isInstalled])
    {
      v9 = 0;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:1 error:0];
      applicationState2 = [v10 applicationState];
      v9 = [applicationState2 isPlaceholder] ^ 1;
    }

    v12 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    [(NSMutableDictionary *)self->_removedApps setObject:v12 forKeyedSubscript:dCopy];
  }

  else
  {
    [(NSMutableDictionary *)self->_restrictedApps setObject:MEMORY[0x277CBEC28] forKeyedSubscript:dCopy];
    [(NSMutableDictionary *)self->_removedApps setObject:MEMORY[0x277CBEC38] forKeyedSubscript:dCopy];
  }
}

- (void)applicationStateDidChange:(id)change
{
  v19 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = RELogForDomain(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [changeCopy count];
    v7 = NSStringFromSelector(sel_bundleIdentifier);
    v8 = [changeCopy valueForKeyPath:v7];
    v9 = [v8 componentsJoinedByString:{@", "}];
    *buf = 134218242;
    v16 = v6;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_DEFAULT, "[AppCache] %lu were changed: %{public}@.", buf, 0x16u);
  }

  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__REApplicationCache_applicationStateDidChange___block_invoke;
  v13[3] = &unk_2785F9AE0;
  v13[4] = self;
  v14 = changeCopy;
  v11 = changeCopy;
  dispatch_async(queue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidInstall:(id)install
{
  v22 = *MEMORY[0x277D85DE8];
  installCopy = install;
  v5 = RELogForDomain(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [installCopy count];
    v7 = NSStringFromSelector(sel_bundleIdentifier);
    v8 = [installCopy valueForKeyPath:v7];
    v9 = [v8 componentsJoinedByString:{@", "}];
    *buf = 134218242;
    v19 = v6;
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_DEFAULT, "[AppCache] %lu were installed: %{public}@", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(installCopy, "count")}];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__REApplicationCache_applicationsDidInstall___block_invoke;
  block[3] = &unk_2785FB070;
  block[4] = self;
  v16 = v10;
  v17 = installCopy;
  v12 = installCopy;
  v13 = v10;
  dispatch_async(queue, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __45__REApplicationCache_applicationsDidInstall___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = [*(*(a1 + 32) + 16) allKeys];
  [*(a1 + 40) removeObjectsInArray:v4];
  if ([*(a1 + 40) count])
  {
    v17 = v4;
    v5 = [*(a1 + 40) copy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * v10);
          v12 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v11 allowPlaceholder:0 error:0];
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "_typeForRecord:", v12)}];
          [*(*(a1 + 32) + 16) setObject:v13 forKeyedSubscript:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__REApplicationCache_applicationsDidInstall___block_invoke_2;
    block[3] = &unk_2785F9AE0;
    v14 = *(a1 + 32);
    v19 = v6;
    v20 = v14;
    v15 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v4 = v17;
  }

  [*(a1 + 32) _queue_applicationsDidChange:*(a1 + 48)];

  v16 = *MEMORY[0x277D85DE8];
}

void __45__REApplicationCache_applicationsDidInstall___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = @"REApplicationStateBundleIdentifiers";
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"REApplicationStateDidInstall" object:*(a1 + 40) userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v20 = *MEMORY[0x277D85DE8];
  uninstallCopy = uninstall;
  v5 = RELogForDomain(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [uninstallCopy count];
    v7 = NSStringFromSelector(sel_bundleIdentifier);
    v8 = [uninstallCopy valueForKeyPath:v7];
    v9 = [v8 componentsJoinedByString:{@", "}];
    *buf = 134218242;
    v17 = v6;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_DEFAULT, "[AppCache] %lu were uninstalled: %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__REApplicationCache_applicationsDidUninstall___block_invoke;
  v13[3] = &unk_2785F9AE0;
  v14 = uninstallCopy;
  selfCopy = self;
  v11 = uninstallCopy;
  dispatch_async(queue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __47__REApplicationCache_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v19 + 1) + 8 * v7) bundleIdentifier];
        [v2 addObject:v8];
        [*(*(a1 + 40) + 16) removeObjectForKey:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __47__REApplicationCache_applicationsDidUninstall___block_invoke_2;
  v16 = &unk_2785F9AE0;
  v10 = *(a1 + 40);
  v17 = v9;
  v18 = v10;
  v11 = v9;
  dispatch_async(MEMORY[0x277D85CD0], &v13);
  [*(a1 + 40) _queue_applicationsDidChange:{*(a1 + 32), v13, v14, v15, v16}];

  v12 = *MEMORY[0x277D85DE8];
}

void __47__REApplicationCache_applicationsDidUninstall___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = @"REApplicationStateBundleIdentifiers";
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"REApplicationStateDidUninstall" object:*(a1 + 40) userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_applicationsDidChange:(id)change
{
  v17 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [changeCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(changeCopy);
        }

        bundleIdentifier = [*(*(&v12 + 1) + 8 * v8) bundleIdentifier];
        [(REApplicationCache *)self _queue_loadStateForBundleID:bundleIdentifier];

        ++v8;
      }

      while (v6 != v8);
      v6 = [changeCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_watchKitExtensions removeAllObjects];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__REApplicationCache__queue_applicationsDidChange___block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v10 = *MEMORY[0x277D85DE8];
}

void __51__REApplicationCache__queue_applicationsDidChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"REApplicationStateDidChange" object:*(a1 + 32)];
}

@end