@interface SFCredentialProviderExtensionManager
+ (SFCredentialProviderExtensionManager)sharedManager;
- (BOOL)atLeastOneAvailableExtensionSupportsCredentialExchange:(id)a3;
- (BOOL)atLeastOneEnabledExtensionSupportsCredentialUpdate;
- (BOOL)atLeastOneEnabledExtensionSupportsOneTimeCodes;
- (BOOL)atLeastOneEnabledExtensionSupportsPasskeys;
- (BOOL)extensionSupportsConditionalPasskeyRegistration:(id)a3;
- (BOOL)extensionSupportsCredentialExchange:(id)a3;
- (BOOL)extensionSupportsCredentialUpdate:(id)a3;
- (BOOL)extensionSupportsOneTimeCodes:(id)a3;
- (BOOL)extensionSupportsPasskeys:(id)a3;
- (BOOL)extensionSupportsPasswords:(id)a3;
- (BOOL)extensionSupportsTextInsertion:(id)a3;
- (BOOL)shouldShowConfigurationUIForEnablingExtension:(id)a3;
- (NSArray)enabledExtensions;
- (NSArray)getEnabledExtensionsSynchronously;
- (NSSet)extensions;
- (NSSet)extensionsSync;
- (SFCredentialProviderExtensionManager)init;
- (id)_extensions;
- (id)displayNameForExtension:(id)a3;
- (id)enabledExtensionWithContainingAppBundleID:(id)a3;
- (id)extensionSupportedCredentialExchangeFormatVersions:(id)a3;
- (id)supportedCredentialTypesStringForExtension:(id)a3;
- (unint64_t)_numberOfAutoFillProvidersEnabledWithExtensions:(id)a3;
- (unint64_t)numberOfAutoFillProvidersEnabled;
- (void)_addObserverOnInternalQueue:(id)a3 shouldHoldWeakly:(BOOL)a4;
- (void)_beginExtensionDiscovery;
- (void)_endExtensionDiscovery;
- (void)_getExtensionsIncludingDisabled:(BOOL)a3 completionHandler:(id)a4;
- (void)_notifyObservers:(id)a3;
- (void)_observerWasRemovedOnInternalQueue;
- (void)_updateExtensions:(id)a3;
- (void)addObserver:(id)a3;
- (void)addWeakObserver:(id)a3;
- (void)dealloc;
- (void)getAllExtensionsForContainingApp:(id)a3 completion:(id)a4;
- (void)getExtensionWithBundleID:(id)a3 completion:(id)a4;
- (void)numberOfAutoFillProvidersEnabledWithCompletion:(id)a3;
- (void)removeObserver:(id)a3;
- (void)sentinelDidDeallocateWithContext:(id)a3;
- (void)setExtension:(id)a3 isEnabled:(BOOL)a4;
@end

@implementation SFCredentialProviderExtensionManager

+ (SFCredentialProviderExtensionManager)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SFCredentialProviderExtensionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

uint64_t __53__SFCredentialProviderExtensionManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (SFCredentialProviderExtensionManager)init
{
  v12.receiver = self;
  v12.super_class = SFCredentialProviderExtensionManager;
  v2 = [(SFCredentialProviderExtensionManager *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.AuthenticationServices.%@.%p", objc_opt_class(), v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [MEMORY[0x277CBEB40] orderedSet];
    observers = v2->_observers;
    v2->_observers = v6;

    v2->_observerLock.ourl_lock._os_unfair_lock_opaque = 0;
    v2->_observerLock.ourl_count = 0;
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    weakObservers = v2->_weakObservers;
    v2->_weakObservers = v8;

    v10 = v2;
  }

  return v2;
}

- (void)_beginExtensionDiscovery
{
  if (!self->_extensionMatchingToken)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x277CCA9C8];
    v4 = extensionMatchingAttributes(0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__SFCredentialProviderExtensionManager__beginExtensionDiscovery__block_invoke;
    v7[3] = &unk_279B618B8;
    objc_copyWeak(&v8, &location);
    v5 = [v3 beginMatchingExtensionsWithAttributes:v4 completion:v7];
    extensionMatchingToken = self->_extensionMatchingToken;
    self->_extensionMatchingToken = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __64__SFCredentialProviderExtensionManager__beginExtensionDiscovery__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__SFCredentialProviderExtensionManager__beginExtensionDiscovery__block_invoke_2;
    block[3] = &unk_279B61420;
    block[4] = WeakRetained;
    v11 = v6;
    v12 = v5;
    dispatch_async(v9, block);
  }
}

uint64_t __64__SFCredentialProviderExtensionManager__beginExtensionDiscovery__block_invoke_2(uint64_t result)
{
  *(*(result + 32) + 48) = *(result + 40) != 0;
  if (!*(result + 40))
  {
    return [*(result + 32) _updateExtensions:*(result + 48)];
  }

  return result;
}

- (void)dealloc
{
  if (self->_extensionMatchingToken)
  {
    [MEMORY[0x277CCA9C8] endMatchingExtensions:?];
  }

  v3.receiver = self;
  v3.super_class = SFCredentialProviderExtensionManager;
  [(SFCredentialProviderExtensionManager *)&v3 dealloc];
}

- (void)getExtensionWithBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    queue = self->_queue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __76__SFCredentialProviderExtensionManager_getExtensionWithBundleID_completion___block_invoke;
    v10[3] = &unk_279B617F0;
    v12 = v7;
    v11 = v6;
    dispatch_async(queue, v10);
  }
}

void __76__SFCredentialProviderExtensionManager_getExtensionWithBundleID_completion___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v2 = MEMORY[0x277CCA9C8];
  v3 = extensionMatchingAttributes(1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__SFCredentialProviderExtensionManager_getExtensionWithBundleID_completion___block_invoke_7;
  v6[3] = &unk_279B617C8;
  v9 = v11;
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v10 = &v13;
  v4 = [v2 beginMatchingExtensionsWithAttributes:v3 completion:v6];
  v5 = v14[5];
  v14[5] = v4;

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
}

void __76__SFCredentialProviderExtensionManager_getExtensionWithBundleID_completion___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(*(a1 + 48) + 8);
  if ((*(v8 + 24) & 1) == 0)
  {
    *(v8 + 24) = 1;
    v9 = *(a1 + 40);
    v25 = v6;
    v10 = *(a1 + 32);
    v26 = v5;
    [v5 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_179];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v30 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = [v16 sf_bundleIdentifierForContainingApp];
          v18 = [v17 isEqualToString:v10];

          if (v18)
          {
            v20 = v16;

            goto LABEL_14;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v19 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __76__SFCredentialProviderExtensionManager_getExtensionWithBundleID_completion___block_invoke_7_cold_1(v19);
    }

    v20 = [v11 firstObject];
LABEL_14:
    v7 = v25;
    v5 = v26;

    (*(v9 + 16))(v9, v20);
  }

  v21 = *(*(a1 + 56) + 8);
  v22 = *(v21 + 40);
  if (v22)
  {
    *(v21 + 40) = 0;
    v23 = v22;

    [MEMORY[0x277CCA9C8] endMatchingExtensions:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)getAllExtensionsForContainingApp:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__SFCredentialProviderExtensionManager_getAllExtensionsForContainingApp_completion___block_invoke;
  v10[3] = &unk_279B61840;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(SFCredentialProviderExtensionManager *)self getAllExtensionsWithCompletion:v10];
}

void __84__SFCredentialProviderExtensionManager_getAllExtensionsForContainingApp_completion___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__SFCredentialProviderExtensionManager_getAllExtensionsForContainingApp_completion___block_invoke_2;
  v5[3] = &unk_279B61818;
  v6 = *(a1 + 32);
  v4 = [a2 safari_filterObjectsUsingBlock:v5];
  (*(*(a1 + 40) + 16))();
}

uint64_t __84__SFCredentialProviderExtensionManager_getAllExtensionsForContainingApp_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 sf_applicationRecordForContainingApp];
  v4 = [v3 applicationIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)_getExtensionsIncludingDisabled:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __90__SFCredentialProviderExtensionManager__getExtensionsIncludingDisabled_completionHandler___block_invoke;
    v9[3] = &unk_279B61890;
    v11 = a3;
    v10 = v6;
    dispatch_async(queue, v9);
  }
}

void __90__SFCredentialProviderExtensionManager__getExtensionsIncludingDisabled_completionHandler___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v2 = MEMORY[0x277CCA9C8];
  v3 = extensionMatchingAttributes((*(a1 + 40) & 1) == 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__SFCredentialProviderExtensionManager__getExtensionsIncludingDisabled_completionHandler___block_invoke_2;
  v6[3] = &unk_279B61868;
  v8 = v11;
  v10 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = &v13;
  v4 = [v2 beginMatchingExtensionsWithAttributes:v3 completion:v6];
  v5 = v14[5];
  v14[5] = v4;

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
}

void __90__SFCredentialProviderExtensionManager__getExtensionsIncludingDisabled_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    *(v6 + 24) = 1;
    v7 = *(a1 + 32);
    if (*(a1 + 56) == 1)
    {
      (*(v7 + 16))(*(a1 + 32), v12);
    }

    else
    {
      v8 = [v12 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_179];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  if (v10)
  {
    *(v9 + 40) = 0;
    v11 = v10;

    [MEMORY[0x277CCA9C8] endMatchingExtensions:v11];
  }
}

- (void)_endExtensionDiscovery
{
  if (self->_extensionMatchingToken)
  {
    [MEMORY[0x277CCA9C8] endMatchingExtensions:?];
    extensionMatchingToken = self->_extensionMatchingToken;
    self->_extensionMatchingToken = 0;

    extensions = self->_extensions;
    self->_extensions = 0;
  }
}

- (void)_updateExtensions:(id)a3
{
  v4 = [a3 safari_filterObjectsUsingBlock:&__block_literal_global_4];
  v10 = v4;
  if (v4)
  {
    [MEMORY[0x277CBEB98] setWithArray:v4];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v5 = ;
  extensions = self->_extensions;
  self->_extensions = v5;

  v7 = [(NSMutableOrderedSet *)self->_observers array];
  v8 = [(NSHashTable *)self->_weakObservers allObjects];
  v9 = [v7 arrayByAddingObjectsFromArray:v8];

  [(SFCredentialProviderExtensionManager *)self _notifyObservers:v9];
}

- (void)_notifyObservers:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
  v7 = v20[5];
  v20[5] = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [v20[5] addPointer:*(*(&v15 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v5);
  v12 = dispatch_get_global_queue(21, 0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__SFCredentialProviderExtensionManager__notifyObservers___block_invoke;
  v14[3] = &unk_279B61900;
  v14[4] = self;
  v14[5] = &v19;
  dispatch_async(v12, v14);

  _Block_object_dispose(&v19, 8);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __57__SFCredentialProviderExtensionManager__notifyObservers___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  v3 = objc_autoreleasePoolPush();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v14 + 1) + 8 * v8++) credentialProviderExtensionManagerExtensionListDidChange:{*(a1 + 32), v14}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [*(*(*(a1 + 40) + 8) + 40) setCount:0];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  objc_autoreleasePoolPop(v3);
  v11 = *(a1 + 32);
  result = os_unfair_recursive_lock_unlock();
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSSet)extensions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SFCredentialProviderExtensionManager_extensions__block_invoke;
  v5[3] = &unk_279B61448;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __50__SFCredentialProviderExtensionManager_extensions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _extensions];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSSet)extensionsSync
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SFCredentialProviderExtensionManager_extensionsSync__block_invoke;
  v5[3] = &unk_279B61448;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__SFCredentialProviderExtensionManager_extensionsSync__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 24));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = MEMORY[0x277CCA9C8];
    v3 = extensionMatchingAttributes(0);
    v7 = [v2 extensionsWithMatchingAttributes:v3 error:0];

    v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v7];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)_extensions
{
  if (self->_errorEncounteredDuringLastExtensionDiscovery)
  {
    extensionMatchingToken = self->_extensionMatchingToken;
    self->_extensionMatchingToken = 0;

    [(SFCredentialProviderExtensionManager *)self _beginExtensionDiscovery];
  }

  extensions = self->_extensions;

  return extensions;
}

- (NSArray)enabledExtensions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__SFCredentialProviderExtensionManager_enabledExtensions__block_invoke;
  v5[3] = &unk_279B61448;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __57__SFCredentialProviderExtensionManager_enabledExtensions__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _extensions];
  v2 = [v6 allObjects];
  v3 = [v2 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_179];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (NSArray)getEnabledExtensionsSynchronously
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SFCredentialProviderExtensionManager_getEnabledExtensionsSynchronously__block_invoke;
  block[3] = &unk_279B61928;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(queue, block);
  if (*(v16 + 24) == 1)
  {
    v3 = v10[5];
  }

  else
  {
    v4 = MEMORY[0x277CCA9C8];
    v5 = extensionMatchingAttributes(1);
    v6 = [v4 extensionsWithMatchingAttributes:v5 error:0];
    v3 = [v6 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_179];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v3;
}

void __73__SFCredentialProviderExtensionManager_getEnabledExtensionsSynchronously__block_invoke(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 16) && *(v1 + 24))
  {
    *(*(a1[5] + 8) + 24) = 1;
    v6 = [*(a1[4] + 24) allObjects];
    v3 = [v6 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_179];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (id)enabledExtensionWithContainingAppBundleID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SFCredentialProviderExtensionManager *)self getEnabledExtensionsSynchronously];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v11 = [v10 sf_bundleIdentifierForContainingApp];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  v14 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [SFCredentialProviderExtensionManager enabledExtensionWithContainingAppBundleID:v14];
  }

  v13 = 0;
LABEL_14:

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SFCredentialProviderExtensionManager_addObserver___block_invoke;
  v7[3] = &unk_279B611D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addWeakObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SFCredentialProviderExtensionManager_addWeakObserver___block_invoke;
  v7[3] = &unk_279B611D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SFCredentialProviderExtensionManager_removeObserver___block_invoke;
  v7[3] = &unk_279B611D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
  os_unfair_recursive_lock_unlock();
}

uint64_t __55__SFCredentialProviderExtensionManager_removeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _observerWasRemovedOnInternalQueue];
}

- (void)_addObserverOnInternalQueue:(id)a3 shouldHoldWeakly:(BOOL)a4
{
  v4 = a4;
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NSMutableOrderedSet *)self->_observers count];
  v8 = [(NSHashTable *)self->_weakObservers allObjects];
  v9 = [v8 count];

  if (v4)
  {
    [(NSHashTable *)self->_weakObservers addObject:v6];
    [v6 safari_setDeallocationSentinelForObserver:self];
  }

  else
  {
    [(NSMutableOrderedSet *)self->_observers addObject:v6];
  }

  v10 = v9 + v7;
  v11 = [(NSMutableOrderedSet *)self->_observers count];
  v12 = [(NSHashTable *)self->_weakObservers allObjects];
  v13 = [v12 count] + v11;

  if (v13 == 1)
  {
    [(SFCredentialProviderExtensionManager *)self _beginExtensionDiscovery];
  }

  if (v13 > v10 && self->_extensions)
  {
    v16[0] = v6;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [(SFCredentialProviderExtensionManager *)self _notifyObservers:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_observerWasRemovedOnInternalQueue
{
  v3 = [(NSMutableOrderedSet *)self->_observers count];
  v4 = [(NSHashTable *)self->_weakObservers allObjects];
  v5 = [v4 count];

  if (!(v3 + v5))
  {

    [(SFCredentialProviderExtensionManager *)self _endExtensionDiscovery];
  }
}

- (void)setExtension:(id)a3 isEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6 && [(SFCredentialProviderExtensionManager *)self extensionIsEnabled:v6]!= v4)
  {
    if (!v4)
    {
      v7 = 2;
      goto LABEL_7;
    }

    if ([(SFCredentialProviderExtensionManager *)self canEnableCredentialProviderExtension])
    {
      v7 = 1;
LABEL_7:
      v8 = [v6 _plugIn];
      [v8 setUserElection:v7];

      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__SFCredentialProviderExtensionManager_setExtension_isEnabled___block_invoke;
      block[3] = &unk_279B613D8;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

void __63__SFCredentialProviderExtensionManager_setExtension_isEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) array];
  v3 = [*(*(a1 + 32) + 40) allObjects];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  [*(a1 + 32) _notifyObservers:v4];
}

- (unint64_t)numberOfAutoFillProvidersEnabled
{
  v3 = +[SFCredentialProviderExtensionManager sharedManager];
  v4 = [v3 getEnabledExtensionsSynchronously];

  v5 = [(SFCredentialProviderExtensionManager *)self _numberOfAutoFillProvidersEnabledWithExtensions:v4];
  return v5;
}

- (void)numberOfAutoFillProvidersEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__SFCredentialProviderExtensionManager_numberOfAutoFillProvidersEnabledWithCompletion___block_invoke;
  v6[3] = &unk_279B61950;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SFCredentialProviderExtensionManager *)self getEnabledExtensionsWithCompletion:v6];
}

uint64_t __87__SFCredentialProviderExtensionManager_numberOfAutoFillProvidersEnabledWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _numberOfAutoFillProvidersEnabledWithExtensions:a2];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (unint64_t)_numberOfAutoFillProvidersEnabledWithExtensions:(id)a3
{
  v3 = a3;
  v4 = +[SFAutoFillFeatureManager sharedFeatureManager];
  v5 = [v4 shouldAutoFillPasswordsFromKeychain];

  v6 = [v3 count];
  return v6 + v5;
}

- (id)displayNameForExtension:(id)a3
{
  v4 = a3;
  v5 = [v4 _plugIn];
  v6 = [v5 containingUrl];

  v7 = [v4 _plugIn];
  v8 = [v7 localizedContainingName];

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v9 = [(SFCredentialProviderExtensionManager *)self extensionsSync];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __64__SFCredentialProviderExtensionManager_displayNameForExtension___block_invoke;
  v19 = &unk_279B61978;
  v10 = v6;
  v20 = v10;
  v21 = v22;
  v11 = [v9 objectsPassingTest:&v16];

  if ([v11 count] == 1)
  {
    v12 = v8;
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [v4 objectForInfoDictionaryKey:*MEMORY[0x277CBEC40]];
    v12 = [v13 stringWithFormat:@"%@ — %@", v8, v14, v16, v17, v18, v19];
  }

  _Block_object_dispose(v22, 8);

  return v12;
}

uint64_t __64__SFCredentialProviderExtensionManager_displayNameForExtension___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 _plugIn];
  v6 = [v5 containingUrl];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = *(*(a1 + 40) + 8);
    if (*(v8 + 24) == 1)
    {
      *a3 = 1;
    }

    else
    {
      *(v8 + 24) = 1;
    }
  }

  return v7;
}

- (BOOL)shouldShowConfigurationUIForEnablingExtension:(id)a3
{
  v3 = a3;
  v4 = [v3 attributes];
  v5 = [v4 safari_dictionaryForKey:@"ASCredentialProviderExtensionCapabilities"];

  v6 = [v5 safari_numberForKey:@"ShowsConfigurationUI"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v9 = [v3 attributes];
    v8 = [v9 safari_BOOLForKey:@"ASCredentialProviderExtensionShowsConfigurationUI"];
  }

  return v8;
}

- (BOOL)extensionSupportsPasskeys:(id)a3
{
  v3 = [a3 attributes];
  v4 = [v3 safari_dictionaryForKey:@"ASCredentialProviderExtensionCapabilities"];

  LOBYTE(v3) = [v4 safari_BOOLForKey:@"ProvidesPasskeys"];
  return v3;
}

- (BOOL)extensionSupportsConditionalPasskeyRegistration:(id)a3
{
  v3 = [a3 attributes];
  v4 = [v3 safari_dictionaryForKey:@"ASCredentialProviderExtensionCapabilities"];

  LOBYTE(v3) = [v4 safari_BOOLForKey:@"SupportsConditionalPasskeyRegistration"];
  return v3;
}

- (BOOL)atLeastOneEnabledExtensionSupportsPasskeys
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_shouldOverrideAtLeastOneExtensionSupportsPasskeys)
  {
    LOBYTE(v3) = self->_overrideAtLeastOneExtensionSupportsPasskeysValue;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(SFCredentialProviderExtensionManager *)self getEnabledExtensionsSynchronously];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v3 = 0;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v3 |= [(SFCredentialProviderExtensionManager *)self extensionSupportsPasskeys:*(*(&v11 + 1) + 8 * i)];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

- (BOOL)atLeastOneEnabledExtensionSupportsOneTimeCodes
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(SFCredentialProviderExtensionManager *)self getEnabledExtensionsSynchronously];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([(SFCredentialProviderExtensionManager *)self extensionSupportsOneTimeCodes:*(*(&v11 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)extensionSupportsOneTimeCodes:(id)a3
{
  v3 = [a3 attributes];
  v4 = [v3 safari_dictionaryForKey:@"ASCredentialProviderExtensionCapabilities"];

  LOBYTE(v3) = [v4 safari_BOOLForKey:@"ProvidesOneTimeCodes"];
  return v3;
}

- (BOOL)extensionSupportsTextInsertion:(id)a3
{
  v3 = [a3 attributes];
  v4 = [v3 safari_dictionaryForKey:@"ASCredentialProviderExtensionCapabilities"];

  LOBYTE(v3) = [v4 safari_BOOLForKey:@"ProvidesTextToInsert"];
  return v3;
}

- (BOOL)extensionSupportsPasswords:(id)a3
{
  v3 = a3;
  v4 = [v3 attributes];
  v5 = [v4 safari_dictionaryForKey:@"ASCredentialProviderExtensionCapabilities"];

  if (v5 && [v3 _sf_credentialProviderExtensionNeedsToDeclarePasswordSupport])
  {
    v6 = [v5 safari_BOOLForKey:@"ProvidesPasswords"];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)supportedCredentialTypesStringForExtension:(id)a3
{
  v4 = a3;
  v5 = [(SFCredentialProviderExtensionManager *)self extensionSupportsPasswords:v4];
  v6 = [(SFCredentialProviderExtensionManager *)self extensionSupportsPasskeys:v4];
  v7 = [(SFCredentialProviderExtensionManager *)self extensionSupportsOneTimeCodes:v4];

  if (v5 || v6 || v7)
  {
    v8 = _WBSLocalizedString();
  }

  else
  {
    v8 = &stru_2875FD420;
  }

  return v8;
}

- (BOOL)extensionSupportsCredentialExchange:(id)a3
{
  v3 = a3;
  v4 = [v3 attributes];
  v5 = [v4 safari_dictionaryForKey:@"ASCredentialProviderExtensionCapabilities"];

  v6 = [v5 safari_BOOLForKey:@"SupportsCredentialExchange"];
  v7 = [v5 safari_arrayForKey:@"SupportedCredentialExchangeVersions"];
  v8 = v7;
  if (v6)
  {
    if (![v7 count])
    {
      v9 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(SFCredentialProviderExtensionManager *)v9 extensionSupportsCredentialExchange:v3];
      }
    }

    LOBYTE(v6) = [v8 count] != 0;
  }

  return v6;
}

- (BOOL)atLeastOneAvailableExtensionSupportsCredentialExchange:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(SFCredentialProviderExtensionManager *)self extensionsSync];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 sf_bundleIdentifierForContainingApp];
        v12 = [v4 isEqualToString:v11];

        if ((v12 & 1) == 0 && [(SFCredentialProviderExtensionManager *)self extensionSupportsCredentialExchange:v10])
        {

          v13 = 1;
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if ([v4 isEqualToString:*MEMORY[0x277D49CC0]])
  {
    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x277D49A08] isPasswordsAppInstalled];
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)extensionSupportedCredentialExchangeFormatVersions:(id)a3
{
  v3 = [a3 attributes];
  v4 = [v3 safari_dictionaryForKey:@"ASCredentialProviderExtensionCapabilities"];

  v5 = [v4 safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:@"SupportedCredentialExchangeVersions"];

  return v5;
}

- (BOOL)atLeastOneEnabledExtensionSupportsCredentialUpdate
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(SFCredentialProviderExtensionManager *)self getEnabledExtensionsSynchronously];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([(SFCredentialProviderExtensionManager *)self extensionSupportsCredentialUpdate:*(*(&v11 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)extensionSupportsCredentialUpdate:(id)a3
{
  v3 = [a3 attributes];
  v4 = [v3 safari_dictionaryForKey:@"ASCredentialProviderExtensionCapabilities"];

  LOBYTE(v3) = [v4 safari_BOOLForKey:@"SupportsCredentialUpdate"];
  return v3;
}

- (void)sentinelDidDeallocateWithContext:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SFCredentialProviderExtensionManager_sentinelDidDeallocateWithContext___block_invoke;
  block[3] = &unk_279B613D8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)extensionSupportsCredentialExchange:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 _localizedName];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_26450F000, v3, OS_LOG_TYPE_ERROR, "%{public}@ supports credential exchange but does not specify supported format versions", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end