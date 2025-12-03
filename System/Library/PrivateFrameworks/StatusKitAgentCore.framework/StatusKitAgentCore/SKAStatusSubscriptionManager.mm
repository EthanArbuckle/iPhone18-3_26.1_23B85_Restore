@interface SKAStatusSubscriptionManager
+ (id)logger;
- (BOOL)_activePersistentPresenceSubscriptionsExist;
- (BOOL)_activeTransientPresenceSubscriptionsExist;
- (BOOL)_activeTransientStatusSubscriptionsExist;
- (BOOL)_addTransientPresenceSubscriptionAssertionForClient:(id)client channelIdentifier:(id)identifier presenceIdentifier:(id)presenceIdentifier;
- (BOOL)_addTransientStatusSubscriptionAssertionForClient:(id)client subscriptionIdentifier:(id)identifier;
- (BOOL)_haveExceededPresenceSubscriptionCount;
- (BOOL)_removeTransientPresenceSubscriptionAssertionForClient:(id)client channelIdentifier:(id)identifier;
- (BOOL)_removeTransientStatusSubscriptionAssertionForClient:(id)client subscriptionIdentifier:(id)identifier;
- (BOOL)activePresenceSubscriptionAssertionsExistForChannelIdentifier:(id)identifier;
- (BOOL)isSubscriptionPersistentForChannelIdentifier:(id)identifier;
- (SKAStatusSubscriptionManager)initWithDatabaseManager:(id)manager channelManager:(id)channelManager pushManager:(id)pushManager;
- (double)_presenceSubscriptionTTL;
- (double)_statusSubscriptionTTL;
- (id)_allPersonalChannelIdentifiersRequiringSelfSubscriptionWithDatabaseContext:(id)context;
- (id)_enforceSubscriptionsHardCapOnSubscriptionIdentifiers:(id)identifiers;
- (id)_fetchAllActivePersistentPresenceSubscriptions;
- (id)_fetchAllActiveSubscriptionAssertionsWithCache;
- (id)_fetchAllActiveTransientPresenceSubscriptions;
- (id)_fetchAllClientActiveSubscriptionAssertions;
- (id)_filterSubscriptionIdentifierToPresence:(id)presence;
- (id)_filterSubscriptionIdentifierToStatus:(id)status;
- (id)_recalculateSubscriptionsForActiveStatusSubscriptions:(id)subscriptions activePresenceSubscriptions:(id)presenceSubscriptions currentSubscriptions:(id)currentSubscriptions;
- (id)_recentlyReleasedTransientSubscriptionAssertionIdentifiersExcludingSubscriptionIdentifiers:(id)identifiers count:(int64_t)count presenceCount:(int64_t)presenceCount databaseContext:(id)context;
- (id)_sortAndDedupeSubscriptionIdentifiers:(id)identifiers;
- (int64_t)_hardMaxSubscriptionCount;
- (int64_t)_maxPresenceSubscriptionCacheCount;
- (int64_t)_maxSubscriptionCacheCount;
- (void)_markCacheSubscriptionDateForChannelIdentifier:(id)identifier changeTime:(id)time;
- (void)allStatusSubscriptionIdentifiersWithActiveSubscriptionsWithCompletion:(id)completion;
- (void)allSubscriptionIdentifiersWithActiveAssertionsForStatusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)releaseAllTransientPresenceSubscriptionsAssociatedWithClient:(id)client completion:(id)completion;
- (void)releaseAllTransientSubscriptionAssertionsAssociatedWithClient:(id)client completion:(id)completion;
- (void)releasePersistentPresenceSubscriptionForChannelIdentifier:(id)identifier completion:(id)completion;
- (void)releasePersistentPresenceSubscriptionForPresenceIdentifier:(id)identifier completion:(id)completion;
- (void)releasePersistentSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier applicationIdentifier:(id)applicationIdentifier completion:(id)completion;
- (void)releaseTransientPresenceSubscriptionForChannelIdentifier:(id)identifier client:(id)client completion:(id)completion;
- (void)releaseTransientSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier client:(id)client completion:(id)completion;
- (void)retainPersistentPresenceSubscriptionForPresenceIdentifier:(id)identifier channelIdentifier:(id)channelIdentifier completion:(id)completion;
- (void)retainPersistentSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier applicationIdentifier:(id)applicationIdentifier completion:(id)completion;
- (void)retainTransientPresenceSubscriptionForPresenceIdentifier:(id)identifier channelIdentifier:(id)channelIdentifier client:(id)client completion:(id)completion;
- (void)retainTransientSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier client:(id)client completion:(id)completion;
- (void)updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:(id)completion;
@end

@implementation SKAStatusSubscriptionManager

- (SKAStatusSubscriptionManager)initWithDatabaseManager:(id)manager channelManager:(id)channelManager pushManager:(id)pushManager
{
  managerCopy = manager;
  channelManagerCopy = channelManager;
  pushManagerCopy = pushManager;
  v22.receiver = self;
  v22.super_class = SKAStatusSubscriptionManager;
  v12 = [(SKAStatusSubscriptionManager *)&v22 init];
  if (v12)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    activeTransientStatusSubscriptionsByClient = v12->_activeTransientStatusSubscriptionsByClient;
    v12->_activeTransientStatusSubscriptionsByClient = weakToStrongObjectsMapTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    activeTransientPresenceSubscriptionsByClient = v12->_activeTransientPresenceSubscriptionsByClient;
    v12->_activeTransientPresenceSubscriptionsByClient = weakToStrongObjectsMapTable2;

    objc_storeStrong(&v12->_databaseManager, manager);
    objc_storeStrong(&v12->_channelManager, channelManager);
    objc_storeStrong(&v12->_pushManager, pushManager);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_DEFAULT, 0);

    v19 = dispatch_queue_create("com.apple.StatusKitAgent.SubscriptionManager", v18);
    internalWorkQueue = v12->_internalWorkQueue;
    v12->_internalWorkQueue = v19;

    *&v12->_transientSubscriptionsLock._os_unfair_lock_opaque = 0;
  }

  return v12;
}

- (void)retainTransientSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier client:(id)client completion:(id)completion
{
  identifierCopy = identifier;
  clientCopy = client;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __133__SKAStatusSubscriptionManager_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_client_completion___block_invoke;
  v16[3] = &unk_27843F448;
  objc_copyWeak(&v21, &location);
  v17 = clientCopy;
  v18 = identifierCopy;
  selfCopy = self;
  v20 = completionCopy;
  v13 = completionCopy;
  v14 = identifierCopy;
  v15 = clientCopy;
  dispatch_async(internalWorkQueue, v16);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __133__SKAStatusSubscriptionManager_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_client_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (([WeakRetained _addTransientStatusSubscriptionAssertionForClient:*(a1 + 32) subscriptionIdentifier:*(a1 + 40)] & 1) == 0)
  {
    v3 = +[SKAStatusSubscriptionManager logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Transient subscription assertion already existed, but still refreshing registered subscription assertions, to ensure apsd is in sync.", buf, 2u);
    }
  }

  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [MEMORY[0x277CBEAA8] now];
  [v4 _markCacheSubscriptionDateForChannelIdentifier:v5 changeTime:v6];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __133__SKAStatusSubscriptionManager_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_client_completion___block_invoke_10;
  v8[3] = &unk_27843F090;
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  [v7 updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:v8];
}

void __133__SKAStatusSubscriptionManager_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_client_completion___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusSubscriptionManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __133__SKAStatusSubscriptionManager_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_client_completion___block_invoke_10_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated registered subscriptions following transient assertion retain", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)releaseTransientSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier client:(id)client completion:(id)completion
{
  identifierCopy = identifier;
  clientCopy = client;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __134__SKAStatusSubscriptionManager_releaseTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_client_completion___block_invoke;
  v16[3] = &unk_27843F448;
  objc_copyWeak(&v21, &location);
  v17 = clientCopy;
  v18 = identifierCopy;
  selfCopy = self;
  v20 = completionCopy;
  v13 = completionCopy;
  v14 = identifierCopy;
  v15 = clientCopy;
  dispatch_async(internalWorkQueue, v16);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __134__SKAStatusSubscriptionManager_releaseTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_client_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained _removeTransientStatusSubscriptionAssertionForClient:*(a1 + 32) subscriptionIdentifier:*(a1 + 40)];
  v4 = +[SKAStatusSubscriptionManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully removed transient subscription assertion from in memory model for subscription identifier: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __134__SKAStatusSubscriptionManager_releaseTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_client_completion___block_invoke_cold_1((a1 + 40), v5, v7, v8, v9, v10, v11, v12);
  }

  v14 = *(a1 + 40);
  v13 = *(a1 + 48);
  v15 = [MEMORY[0x277CBEAA8] now];
  [v13 _markCacheSubscriptionDateForChannelIdentifier:v14 changeTime:v15];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __134__SKAStatusSubscriptionManager_releaseTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_client_completion___block_invoke_13;
  v18[3] = &unk_27843F090;
  v16 = *(a1 + 48);
  v19 = *(a1 + 56);
  [v16 updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __134__SKAStatusSubscriptionManager_releaseTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_client_completion___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusSubscriptionManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __134__SKAStatusSubscriptionManager_releaseTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_client_completion___block_invoke_13_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated registered subscriptions following transient assertion release", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)releaseAllTransientSubscriptionAssertionsAssociatedWithClient:(id)client completion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__SKAStatusSubscriptionManager_releaseAllTransientSubscriptionAssertionsAssociatedWithClient_completion___block_invoke;
  block[3] = &unk_27843F470;
  objc_copyWeak(&v15, &location);
  selfCopy = self;
  v14 = completionCopy;
  v12 = clientCopy;
  v9 = completionCopy;
  v10 = clientCopy;
  dispatch_async(internalWorkQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __105__SKAStatusSubscriptionManager_releaseAllTransientSubscriptionAssertionsAssociatedWithClient_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  os_unfair_lock_lock(WeakRetained + 2);
  v3 = [*(WeakRetained + 2) objectForKey:*(a1 + 32)];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
  }

  if ([v3 count])
  {
    v4 = +[SKAStatusSubscriptionManager logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v11 = [v3 count];
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Disconnecting client had %ld transient subscription assertion, removing transient assertions and updating registrations for channels: %@", buf, 0x16u);
    }

    [*(WeakRetained + 2) removeObjectForKey:*(a1 + 32)];
    os_unfair_lock_unlock(WeakRetained + 2);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __105__SKAStatusSubscriptionManager_releaseAllTransientSubscriptionAssertionsAssociatedWithClient_completion___block_invoke_15;
    v8[3] = &unk_27843F090;
    v5 = *(a1 + 40);
    v9 = *(a1 + 48);
    [v5 updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:v8];
  }

  else
  {
    os_unfair_lock_unlock(WeakRetained + 2);
    v6 = +[SKAStatusSubscriptionManager logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Disconnecting client had no active transient subscription assertions, not updating registered subscriptions", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __105__SKAStatusSubscriptionManager_releaseAllTransientSubscriptionAssertionsAssociatedWithClient_completion___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusSubscriptionManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __105__SKAStatusSubscriptionManager_releaseAllTransientSubscriptionAssertionsAssociatedWithClient_completion___block_invoke_15_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated registered subscriptions following client disconnect", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)retainPersistentSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier applicationIdentifier:(id)applicationIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  applicationIdentifierCopy = applicationIdentifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __149__SKAStatusSubscriptionManager_retainPersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke;
  block[3] = &unk_27843F498;
  objc_copyWeak(&v25, &location);
  v20 = identifierCopy;
  v21 = applicationIdentifierCopy;
  v22 = typeIdentifierCopy;
  selfCopy = self;
  v24 = completionCopy;
  v15 = completionCopy;
  v16 = typeIdentifierCopy;
  v17 = applicationIdentifierCopy;
  v18 = identifierCopy;
  dispatch_async(internalWorkQueue, block);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __149__SKAStatusSubscriptionManager_retainPersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained databaseManager];
  v4 = [v3 newBackgroundContext];
  v5 = [v3 existingSubscriptionAssertionForSubscriptionIdentifier:*(a1 + 32) applicationIdentifier:*(a1 + 40) databaseContext:v4];
  if (v5)
  {
    v6 = +[SKAStatusSubscriptionManager logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __149__SKAStatusSubscriptionManager_retainPersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = [v3 createSubscriptionAssertionForSubscriptionIdentifier:*(a1 + 32) applicationIdentifier:*(a1 + 40) statusTypeIdentifier:*(a1 + 48) databaseContext:v4];
    v7 = +[SKAStatusSubscriptionManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Created subscription assertion: %@", buf, 0xCu);
    }
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __149__SKAStatusSubscriptionManager_retainPersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_16;
  v10[3] = &unk_27843F090;
  v8 = *(a1 + 56);
  v11 = *(a1 + 64);
  [v8 updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __149__SKAStatusSubscriptionManager_retainPersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusSubscriptionManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __149__SKAStatusSubscriptionManager_retainPersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_16_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated registered subscriptions following persistent assertion retain", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)releasePersistentSubscriptionAssertionForSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier applicationIdentifier:(id)applicationIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __150__SKAStatusSubscriptionManager_releasePersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke;
  v16[3] = &unk_27843F448;
  objc_copyWeak(&v21, &location);
  v17 = identifierCopy;
  v18 = applicationIdentifierCopy;
  selfCopy = self;
  v20 = completionCopy;
  v13 = completionCopy;
  v14 = applicationIdentifierCopy;
  v15 = identifierCopy;
  dispatch_async(internalWorkQueue, v16);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __150__SKAStatusSubscriptionManager_releasePersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained databaseManager];
  v4 = [v3 newBackgroundContext];
  v5 = [v3 deleteSubscriptionAssertionWithSubscriptionIdentifier:*(a1 + 32) applicationIdentifier:*(a1 + 40) databaseContext:v4];
  v6 = +[SKAStatusSubscriptionManager logger];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Successfully removed persistent subscription assertion from database for subscription identifier: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __150__SKAStatusSubscriptionManager_releasePersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_cold_1((a1 + 32), v7, v9, v10, v11, v12, v13, v14);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __150__SKAStatusSubscriptionManager_releasePersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_17;
  v17[3] = &unk_27843F090;
  v15 = *(a1 + 48);
  v18 = *(a1 + 56);
  [v15 updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __150__SKAStatusSubscriptionManager_releasePersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusSubscriptionManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __150__SKAStatusSubscriptionManager_releasePersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_17_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated registered subscriptions following persistent assertion release", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)allSubscriptionIdentifiersWithActiveAssertionsForStatusTypeIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__SKAStatusSubscriptionManager_allSubscriptionIdentifiersWithActiveAssertionsForStatusTypeIdentifier_completion___block_invoke;
  block[3] = &unk_27843F4C0;
  objc_copyWeak(&v10, &location);
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(internalWorkQueue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __113__SKAStatusSubscriptionManager_allSubscriptionIdentifiersWithActiveAssertionsForStatusTypeIdentifier_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _fetchAllClientActiveSubscriptionAssertions];
  v4 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = [v3 count];
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Returning %lu active assertions.", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)allStatusSubscriptionIdentifiersWithActiveSubscriptionsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__SKAStatusSubscriptionManager_allStatusSubscriptionIdentifiersWithActiveSubscriptionsWithCompletion___block_invoke;
  block[3] = &unk_27843F4C0;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(internalWorkQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __102__SKAStatusSubscriptionManager_allStatusSubscriptionIdentifiersWithActiveSubscriptionsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained channelManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __102__SKAStatusSubscriptionManager_allStatusSubscriptionIdentifiersWithActiveSubscriptionsWithCompletion___block_invoke_2;
  v4[3] = &unk_27843E248;
  v5 = *(a1 + 32);
  [v3 activeStatusChannelSubscriptionsWithCompletion:v4];
}

void __102__SKAStatusSubscriptionManager_allStatusSubscriptionIdentifiersWithActiveSubscriptionsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = [v3 count];
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Returning %lu active subscriptions.", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)retainPersistentPresenceSubscriptionForPresenceIdentifier:(id)identifier channelIdentifier:(id)channelIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  channelIdentifierCopy = channelIdentifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __119__SKAStatusSubscriptionManager_retainPersistentPresenceSubscriptionForPresenceIdentifier_channelIdentifier_completion___block_invoke;
  v15[3] = &unk_27843F4E8;
  objc_copyWeak(&v19, &location);
  v15[4] = self;
  v16 = channelIdentifierCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  v12 = identifierCopy;
  v13 = channelIdentifierCopy;
  v14 = completionCopy;
  dispatch_async(internalWorkQueue, v15);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __119__SKAStatusSubscriptionManager_retainPersistentPresenceSubscriptionForPresenceIdentifier_channelIdentifier_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ([*(a1 + 32) _haveExceededPresenceSubscriptionCount])
  {
    v3 = *(a1 + 56);
    v4 = [SKAError errorWithCode:903];
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    v5 = [WeakRetained databaseManager];
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = [*(a1 + 32) databaseManager];
    v9 = [v8 newBackgroundContext];
    v10 = [v5 createOrUpdatePresenceSubscriptionForChannelIdentifier:v7 presenceIdentifier:v6 databaseContext:v9];

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x277CBEAA8] now];
    [v11 _markCacheSubscriptionDateForChannelIdentifier:v12 changeTime:v13];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __119__SKAStatusSubscriptionManager_retainPersistentPresenceSubscriptionForPresenceIdentifier_channelIdentifier_completion___block_invoke_2;
    v14[3] = &unk_27843F090;
    v15 = *(a1 + 56);
    [WeakRetained updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:v14];
  }
}

void __119__SKAStatusSubscriptionManager_retainPersistentPresenceSubscriptionForPresenceIdentifier_channelIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusSubscriptionManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __119__SKAStatusSubscriptionManager_retainPersistentPresenceSubscriptionForPresenceIdentifier_channelIdentifier_completion___block_invoke_2_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated registered subscriptions following presence assertion retain", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)releasePersistentPresenceSubscriptionForChannelIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__SKAStatusSubscriptionManager_releasePersistentPresenceSubscriptionForChannelIdentifier_completion___block_invoke;
  block[3] = &unk_27843F510;
  objc_copyWeak(&v15, &location);
  v12 = identifierCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(internalWorkQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __101__SKAStatusSubscriptionManager_releasePersistentPresenceSubscriptionForChannelIdentifier_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained databaseManager];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) databaseManager];
  v6 = [v5 newBackgroundContext];
  [v3 deletePresenceSubscriptionsForChannelIdentifier:v4 databaseContext:v6];

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = [MEMORY[0x277CBEAA8] now];
  [v7 _markCacheSubscriptionDateForChannelIdentifier:v8 changeTime:v9];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__SKAStatusSubscriptionManager_releasePersistentPresenceSubscriptionForChannelIdentifier_completion___block_invoke_2;
  v10[3] = &unk_27843F090;
  v11 = *(a1 + 48);
  [WeakRetained updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:v10];
}

void __101__SKAStatusSubscriptionManager_releasePersistentPresenceSubscriptionForChannelIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusSubscriptionManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __101__SKAStatusSubscriptionManager_releasePersistentPresenceSubscriptionForChannelIdentifier_completion___block_invoke_2_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated registered subscriptions following presence assertion release", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)releasePersistentPresenceSubscriptionForPresenceIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__SKAStatusSubscriptionManager_releasePersistentPresenceSubscriptionForPresenceIdentifier_completion___block_invoke;
  block[3] = &unk_27843F510;
  objc_copyWeak(&v15, &location);
  v12 = identifierCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(internalWorkQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __102__SKAStatusSubscriptionManager_releasePersistentPresenceSubscriptionForPresenceIdentifier_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained databaseManager];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) databaseManager];
  v6 = [v5 newBackgroundContext];
  [v3 deletePresenceSubscriptionsForPresenceIdentifier:v4 databaseContext:v6];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __102__SKAStatusSubscriptionManager_releasePersistentPresenceSubscriptionForPresenceIdentifier_completion___block_invoke_2;
  v7[3] = &unk_27843F090;
  v8 = *(a1 + 48);
  [WeakRetained updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:v7];
}

void __102__SKAStatusSubscriptionManager_releasePersistentPresenceSubscriptionForPresenceIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusSubscriptionManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __101__SKAStatusSubscriptionManager_releasePersistentPresenceSubscriptionForChannelIdentifier_completion___block_invoke_2_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated registered subscriptions following presence assertion release", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)retainTransientPresenceSubscriptionForPresenceIdentifier:(id)identifier channelIdentifier:(id)channelIdentifier client:(id)client completion:(id)completion
{
  identifierCopy = identifier;
  channelIdentifierCopy = channelIdentifier;
  clientCopy = client;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __125__SKAStatusSubscriptionManager_retainTransientPresenceSubscriptionForPresenceIdentifier_channelIdentifier_client_completion___block_invoke;
  block[3] = &unk_27843F538;
  objc_copyWeak(&v24, &location);
  v22 = identifierCopy;
  v23 = completionCopy;
  block[4] = self;
  v20 = clientCopy;
  v21 = channelIdentifierCopy;
  v15 = identifierCopy;
  v16 = channelIdentifierCopy;
  v17 = clientCopy;
  v18 = completionCopy;
  dispatch_async(internalWorkQueue, block);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __125__SKAStatusSubscriptionManager_retainTransientPresenceSubscriptionForPresenceIdentifier_channelIdentifier_client_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if ([*(a1 + 32) _haveExceededPresenceSubscriptionCount])
  {
    v3 = *(a1 + 64);
    v4 = [SKAError errorWithCode:903];
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    if (([WeakRetained _addTransientPresenceSubscriptionAssertionForClient:*(a1 + 40) channelIdentifier:*(a1 + 48) presenceIdentifier:*(a1 + 56)] & 1) == 0)
    {
      v5 = +[SKAStatusSubscriptionManager logger];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Presence subscription assertion already existed, but still refreshing registered subscription assertions, to ensure apsd is in sync.", buf, 2u);
      }
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x277CBEAA8] now];
    [v6 _markCacheSubscriptionDateForChannelIdentifier:v7 changeTime:v8];

    v9 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __125__SKAStatusSubscriptionManager_retainTransientPresenceSubscriptionForPresenceIdentifier_channelIdentifier_client_completion___block_invoke_20;
    v10[3] = &unk_27843F090;
    v11 = *(a1 + 64);
    [v9 updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:v10];
  }
}

void __125__SKAStatusSubscriptionManager_retainTransientPresenceSubscriptionForPresenceIdentifier_channelIdentifier_client_completion___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusSubscriptionManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __119__SKAStatusSubscriptionManager_retainPersistentPresenceSubscriptionForPresenceIdentifier_channelIdentifier_completion___block_invoke_2_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated registered subscriptions following presence assertion retain", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)releaseTransientPresenceSubscriptionForChannelIdentifier:(id)identifier client:(id)client completion:(id)completion
{
  identifierCopy = identifier;
  clientCopy = client;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __107__SKAStatusSubscriptionManager_releaseTransientPresenceSubscriptionForChannelIdentifier_client_completion___block_invoke;
  v15[3] = &unk_27843F448;
  objc_copyWeak(&v20, &location);
  v16 = clientCopy;
  v17 = identifierCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = clientCopy;
  dispatch_async(internalWorkQueue, v15);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __107__SKAStatusSubscriptionManager_releaseTransientPresenceSubscriptionForChannelIdentifier_client_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained _removeTransientPresenceSubscriptionAssertionForClient:*(a1 + 32) channelIdentifier:*(a1 + 40)];
  v4 = +[SKAStatusSubscriptionManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully removed presence subscription assertion from in memory model for subscription identifier: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __107__SKAStatusSubscriptionManager_releaseTransientPresenceSubscriptionForChannelIdentifier_client_completion___block_invoke_cold_1((a1 + 40), v5, v7, v8, v9, v10, v11, v12);
  }

  v14 = *(a1 + 40);
  v13 = *(a1 + 48);
  v15 = [MEMORY[0x277CBEAA8] now];
  [v13 _markCacheSubscriptionDateForChannelIdentifier:v14 changeTime:v15];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __107__SKAStatusSubscriptionManager_releaseTransientPresenceSubscriptionForChannelIdentifier_client_completion___block_invoke_21;
  v18[3] = &unk_27843F090;
  v16 = *(a1 + 48);
  v19 = *(a1 + 56);
  [v16 updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __107__SKAStatusSubscriptionManager_releaseTransientPresenceSubscriptionForChannelIdentifier_client_completion___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusSubscriptionManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __101__SKAStatusSubscriptionManager_releasePersistentPresenceSubscriptionForChannelIdentifier_completion___block_invoke_2_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated registered subscriptions following presence assertion release", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)releaseAllTransientPresenceSubscriptionsAssociatedWithClient:(id)client completion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalWorkQueue = self->_internalWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__SKAStatusSubscriptionManager_releaseAllTransientPresenceSubscriptionsAssociatedWithClient_completion___block_invoke;
  block[3] = &unk_27843F470;
  objc_copyWeak(&v15, &location);
  selfCopy = self;
  v14 = completionCopy;
  v12 = clientCopy;
  v9 = completionCopy;
  v10 = clientCopy;
  dispatch_async(internalWorkQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __104__SKAStatusSubscriptionManager_releaseAllTransientPresenceSubscriptionsAssociatedWithClient_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  os_unfair_lock_lock(WeakRetained + 3);
  v3 = [*(WeakRetained + 3) objectForKey:*(a1 + 32)];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
  }

  if ([v3 count])
  {
    v4 = +[SKAStatusSubscriptionManager logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v11 = [v3 count];
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Disconnecting presence client had %ld transient subscription assertion, removing transient assertions and updating registrations for channels: %@", buf, 0x16u);
    }

    [*(WeakRetained + 3) removeObjectForKey:*(a1 + 32)];
    os_unfair_lock_unlock(WeakRetained + 3);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __104__SKAStatusSubscriptionManager_releaseAllTransientPresenceSubscriptionsAssociatedWithClient_completion___block_invoke_22;
    v8[3] = &unk_27843F090;
    v5 = *(a1 + 40);
    v9 = *(a1 + 48);
    [v5 updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:v8];
  }

  else
  {
    os_unfair_lock_unlock(WeakRetained + 3);
    v6 = +[SKAStatusSubscriptionManager logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Disconnecting presence client had no active transient subscription assertions, not updating registered subscriptions", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __104__SKAStatusSubscriptionManager_releaseAllTransientPresenceSubscriptionsAssociatedWithClient_completion___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAStatusSubscriptionManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __105__SKAStatusSubscriptionManager_releaseAllTransientSubscriptionAssertionsAssociatedWithClient_completion___block_invoke_15_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated registered subscriptions following client disconnect", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (BOOL)isSubscriptionPersistentForChannelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  databaseManager = [(SKAStatusSubscriptionManager *)self databaseManager];
  databaseManager2 = [(SKAStatusSubscriptionManager *)self databaseManager];
  newBackgroundContext = [databaseManager2 newBackgroundContext];
  v8 = [databaseManager activePresenceSubscriptionForChannelIdentifier:identifierCopy databaseContext:newBackgroundContext];

  return v8;
}

- (BOOL)activePresenceSubscriptionAssertionsExistForChannelIdentifier:(id)identifier
{
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_presenceSubscriptionsLock);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  obj = [(NSMapTable *)self->_activeTransientPresenceSubscriptionsByClient objectEnumerator];
  v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v25 = 0;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(v10);
              }

              channelIdentifier = [*(*(&v26 + 1) + 8 * j) channelIdentifier];
              v16 = [channelIdentifier isEqualToString:identifierCopy];

              if (v16)
              {
                v25 = 1;
                goto LABEL_16;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  else
  {
    v25 = 0;
  }

  os_unfair_lock_unlock(&selfCopy->_presenceSubscriptionsLock);
  databaseManager = [(SKAStatusSubscriptionManager *)selfCopy databaseManager];
  databaseManager2 = [(SKAStatusSubscriptionManager *)selfCopy databaseManager];
  newBackgroundContext = [databaseManager2 newBackgroundContext];
  v20 = [databaseManager activePresenceSubscriptionForChannelIdentifier:identifierCopy databaseContext:newBackgroundContext];

  v21 = *MEMORY[0x277D85DE8];
  return (v25 | v20) & 1;
}

- (void)updateRegisteredSubscriptionsForActiveAssertionsWithCompletion:(id)completion
{
  completionCopy = completion;
  channelManager = [(SKAStatusSubscriptionManager *)self channelManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __95__SKAStatusSubscriptionManager_updateRegisteredSubscriptionsForActiveAssertionsWithCompletion___block_invoke;
  v7[3] = &unk_27843F5D8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [channelManager activeStatusChannelSubscriptionsWithCompletion:v7];
}

void __95__SKAStatusSubscriptionManager_updateRegisteredSubscriptionsForActiveAssertionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) channelManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __95__SKAStatusSubscriptionManager_updateRegisteredSubscriptionsForActiveAssertionsWithCompletion___block_invoke_2;
  v7[3] = &unk_27843F5B0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 activePresenceChannelSubscriptionsWithCompletion:v7];
}

void __95__SKAStatusSubscriptionManager_updateRegisteredSubscriptionsForActiveAssertionsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) internalWorkQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __95__SKAStatusSubscriptionManager_updateRegisteredSubscriptionsForActiveAssertionsWithCompletion___block_invoke_3;
  v7[3] = &unk_27843F588;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v10 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v4, v7);
}

void __95__SKAStatusSubscriptionManager_updateRegisteredSubscriptionsForActiveAssertionsWithCompletion___block_invoke_3(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v44 = [*(a1 + 32) _fetchAllActiveSubscriptionAssertionsWithCache];
  v2 = [*(a1 + 32) _recalculateSubscriptionsForActiveStatusSubscriptions:*(a1 + 40) activePresenceSubscriptions:*(a1 + 48) currentSubscriptions:?];
  v3 = [v2 channelsForAction:0];
  v4 = [v2 channelsForAction:2];
  v45 = 1;
  v5 = [v2 channelsForAction:1];
  v6 = [v2 channelsForAction:3];
  v7 = [*(a1 + 32) channelManager];
  [v7 unsubscribeFromStatusChannels:v3];

  v8 = [*(a1 + 32) channelManager];
  [v8 unsubscribeFromPresenceChannels:v5];

  v9 = [*(a1 + 32) channelManager];
  [v9 subscribeToStatusChannels:v4];

  v10 = [*(a1 + 32) channelManager];
  [v10 subscribeToPresenceChannels:v6];

  v11 = [*(a1 + 32) databaseManager];
  v12 = [v11 newBackgroundContext];

  v43 = v3;
  v13 = [v3 arrayByAddingObjectsFromArray:v5];
  v14 = v4;
  v15 = [v4 arrayByAddingObjectsFromArray:v6];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __95__SKAStatusSubscriptionManager_updateRegisteredSubscriptionsForActiveAssertionsWithCompletion___block_invoke_4;
  v48[3] = &unk_27843F560;
  v48[4] = *(a1 + 32);
  v16 = v12;
  v49 = v16;
  v42 = v13;
  v17 = [v13 __imArrayByApplyingBlock:v48];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __95__SKAStatusSubscriptionManager_updateRegisteredSubscriptionsForActiveAssertionsWithCompletion___block_invoke_5;
  v46[3] = &unk_27843F560;
  v46[4] = *(a1 + 32);
  v18 = v16;
  v47 = v18;
  v41 = v15;
  v19 = [v15 __imArrayByApplyingBlock:v46];
  v20 = +[SKAPowerLogger shared];
  v40 = v17;
  [v20 logEvent:9 ofType:0 onDatabaseChannels:v17];

  v21 = +[SKAPowerLogger shared];
  [v21 logEvent:7 ofType:0 onDatabaseChannels:v19];

  if (([*(a1 + 32) _activeTransientPresenceSubscriptionsExist] & 1) == 0)
  {
    v45 = [*(a1 + 32) _activePersistentPresenceSubscriptionsExist];
  }

  if ([*(a1 + 32) _activeTransientStatusSubscriptionsExist])
  {
    v22 = _os_feature_enabled_impl();
    v23 = [*(a1 + 32) pushManager];
    v24 = v23;
    if (v22)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }
  }

  else
  {
    v23 = [*(a1 + 32) pushManager];
    v24 = v23;
    v25 = 0;
  }

  [v23 switchTopic:0 toFilter:v25];

  if (v45)
  {
    v26 = _os_feature_enabled_impl();
    v27 = [*(a1 + 32) pushManager];
    v28 = v27;
    if (v26)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }
  }

  else
  {
    v27 = [*(a1 + 32) pushManager];
    v28 = v27;
    v29 = 0;
  }

  [v27 switchTopic:1 toFilter:v29];

  v30 = [v2 hasSubscriptionChanges];
  v31 = +[SKAStatusSubscriptionManager logger];
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (v30)
  {
    v33 = v43;
    if (v32)
    {
      *buf = 138413058;
      v51 = v6;
      v52 = 2112;
      v53 = v14;
      v54 = 2112;
      v55 = v5;
      v56 = 2112;
      v57 = v43;
      v34 = "Subscriptions changed after recalculation. Subscribed to (presence channels: %@, status channels: %@) Unsubscribed to (presence channels: %@, status channels: %@)";
      v35 = v31;
      v36 = 42;
LABEL_18:
      _os_log_impl(&dword_220099000, v35, OS_LOG_TYPE_DEFAULT, v34, buf, v36);
    }
  }

  else
  {
    v33 = v43;
    if (v32)
    {
      v38 = *(a1 + 40);
      v37 = *(a1 + 48);
      *buf = 138412546;
      v51 = v37;
      v52 = 2112;
      v53 = v38;
      v34 = "Subscriptions not changed after recalculation. Currently subscribed to presence channels: %@, status channels: %@";
      v35 = v31;
      v36 = 22;
      goto LABEL_18;
    }
  }

  (*(*(a1 + 56) + 16))();
  v39 = *MEMORY[0x277D85DE8];
}

id __95__SKAStatusSubscriptionManager_updateRegisteredSubscriptionsForActiveAssertionsWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 databaseManager];
  v6 = [v5 existingChannelForSubscriptionIdentifier:v4 databaseContext:*(a1 + 40)];

  return v6;
}

id __95__SKAStatusSubscriptionManager_updateRegisteredSubscriptionsForActiveAssertionsWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 databaseManager];
  v6 = [v5 existingChannelForSubscriptionIdentifier:v4 databaseContext:*(a1 + 40)];

  return v6;
}

- (id)_recalculateSubscriptionsForActiveStatusSubscriptions:(id)subscriptions activePresenceSubscriptions:(id)presenceSubscriptions currentSubscriptions:(id)currentSubscriptions
{
  v81 = *MEMORY[0x277D85DE8];
  subscriptionsCopy = subscriptions;
  presenceSubscriptionsCopy = presenceSubscriptions;
  currentSubscriptionsCopy = currentSubscriptions;
  v11 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v62 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v67 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v65 = subscriptionsCopy;
  v66 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v12 = [subscriptionsCopy arrayByAddingObjectsFromArray:presenceSubscriptionsCopy];
  v63 = currentSubscriptionsCopy;
  v60 = [(SKAStatusSubscriptionManager *)self _sortAndDedupeSubscriptionIdentifiers:currentSubscriptionsCopy];
  v13 = [(SKAStatusSubscriptionManager *)self _enforceSubscriptionsHardCapOnSubscriptionIdentifiers:?];
  v14 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v80 = v13;
    _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "StatusKitAgent wants to be subscribed to: %@", buf, 0xCu);
  }

  selfCopy = self;
  v61 = v12;
  v15 = [(SKAStatusSubscriptionManager *)self _sortAndDedupeSubscriptionIdentifiers:v12];
  v16 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v80 = v15;
    _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "StatusKitAgent was previously subscribed to: %@", buf, 0xCu);
  }

  v58 = v15;
  v68 = [v13 differenceFromArray:v15];
  removals = [v68 removals];
  v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v19 = removals;
  v20 = [v19 countByEnumeratingWithState:&v73 objects:v78 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v74;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v74 != v22)
        {
          objc_enumerationMutation(v19);
        }

        object = [*(*(&v73 + 1) + 8 * i) object];
        if ([object length])
        {
          [v18 addObject:object];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v73 objects:v78 count:16];
    }

    while (v21);
  }

  v25 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v80 = v18;
    _os_log_impl(&dword_220099000, v25, OS_LOG_TYPE_DEFAULT, "Unsubscribing from channels: %@", buf, 0xCu);
  }

  v59 = v13;
  if ([v18 count])
  {
    v26 = objc_alloc(MEMORY[0x277CBEB58]);
    v27 = MEMORY[0x277CBEBF8];
    if (v65)
    {
      v28 = v65;
    }

    else
    {
      v28 = MEMORY[0x277CBEBF8];
    }

    v29 = [v26 initWithArray:v28];
    [v29 intersectSet:v18];
    allObjects = [v29 allObjects];
    if ([allObjects count])
    {
      v31 = allObjects;

      v11 = v31;
    }

    v32 = objc_alloc(MEMORY[0x277CBEB58]);
    if (presenceSubscriptionsCopy)
    {
      v33 = presenceSubscriptionsCopy;
    }

    else
    {
      v33 = v27;
    }

    v34 = [v32 initWithArray:v33];
    [v34 intersectSet:v18];
    allObjects2 = [v34 allObjects];
    v36 = v11;
    if ([allObjects2 count])
    {
      v37 = allObjects2;

      v67 = v37;
    }

    v38 = presenceSubscriptionsCopy;
  }

  else
  {
    v36 = v11;
    v38 = presenceSubscriptionsCopy;
  }

  insertions = [v68 insertions];
  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v41 = insertions;
  v42 = [v41 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v70;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v70 != v44)
        {
          objc_enumerationMutation(v41);
        }

        object2 = [*(*(&v69 + 1) + 8 * j) object];
        if ([object2 length])
        {
          [v40 addObject:object2];
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v43);
  }

  if ([v40 count])
  {
    v47 = +[SKAStatusSubscriptionManager logger];
    v48 = v38;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v80 = v40;
      _os_log_impl(&dword_220099000, v47, OS_LOG_TYPE_DEFAULT, "Subscribing to channels: %@", buf, 0xCu);
    }

    v49 = [(SKAStatusSubscriptionManager *)selfCopy _filterSubscriptionIdentifierToStatus:v40];
    v50 = v36;
    v51 = v62;
    if ([v49 count])
    {
      v52 = v49;

      v51 = v52;
    }

    v53 = [(SKAStatusSubscriptionManager *)selfCopy _filterSubscriptionIdentifierToPresence:v40];
    if ([v53 count])
    {
      v54 = v53;

      v66 = v54;
    }
  }

  else
  {
    v48 = v38;
    v50 = v36;
    v51 = v62;
  }

  v55 = [[SKASubscriptionChanges alloc] initWithStatusUnsubscriptions:v50 presenceUnsubscriptions:v67 statusSubscriptions:v51 presenceSubscriptions:v66];

  v56 = *MEMORY[0x277D85DE8];

  return v55;
}

- (BOOL)_addTransientPresenceSubscriptionAssertionForClient:(id)client channelIdentifier:(id)identifier presenceIdentifier:(id)presenceIdentifier
{
  v39 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  identifierCopy = identifier;
  presenceIdentifierCopy = presenceIdentifier;
  dispatch_assert_queue_V2(self->_internalWorkQueue);
  os_unfair_lock_lock(&self->_presenceSubscriptionsLock);
  selfCopy = self;
  v27 = clientCopy;
  v10 = [(NSMapTable *)self->_activeTransientPresenceSubscriptionsByClient objectForKey:clientCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB40]);
    [(NSMapTable *)self->_activeTransientPresenceSubscriptionsByClient setObject:v10 forKey:clientCopy];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v12)
  {
    v13 = 0;
    v14 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        channelIdentifier = [v16 channelIdentifier];
        v18 = [channelIdentifier isEqualToString:identifierCopy];

        if (v18)
        {
          v19 = +[SKAStatusSubscriptionManager logger];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v33 = identifierCopy;
            v34 = 2112;
            v35 = v27;
            v36 = 2112;
            v37 = v16;
            _os_log_impl(&dword_220099000, v19, OS_LOG_TYPE_DEFAULT, "Found an existing presence subscription assertion for %@ and client: %@. ExistingAssertion: %@", buf, 0x20u);
          }

          v13 = 1;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v12);

    if (v13)
    {
      v20 = +[SKAStatusSubscriptionManager logger];
      if (os_log_type_enabled(&v20->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, &v20->super, OS_LOG_TYPE_DEFAULT, "Not creating a new presence subscription assertion, one already exists.", buf, 2u);
      }

      v21 = 0;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v20 = [[SKAPresenceSubscriptionAssertion alloc] initWithChannelIdentifier:identifierCopy presenceIdentifier:presenceIdentifierCopy];
  [v11 addObject:v20];
  v22 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = identifierCopy;
    _os_log_impl(&dword_220099000, v22, OS_LOG_TYPE_DEFAULT, "Successfully added presence subscription assertion to in memory model for subscription identifier: %@", buf, 0xCu);
  }

  v21 = 1;
LABEL_22:

  os_unfair_lock_unlock(&selfCopy->_presenceSubscriptionsLock);
  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)_removeTransientPresenceSubscriptionAssertionForClient:(id)client channelIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_internalWorkQueue);
  os_unfair_lock_lock(&self->_presenceSubscriptionsLock);
  v8 = [(NSMapTable *)self->_activeTransientPresenceSubscriptionsByClient objectForKey:clientCopy];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB40]);
  }

  v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __105__SKAStatusSubscriptionManager__removeTransientPresenceSubscriptionAssertionForClient_channelIdentifier___block_invoke;
  v21 = &unk_27843F600;
  v10 = identifierCopy;
  v22 = v10;
  v11 = v9;
  v23 = v11;
  [v8 enumerateObjectsUsingBlock:&v18];
  v12 = [v11 count];
  if (v12)
  {
    v13 = [v8 count];
    [v8 removeObjectsAtIndexes:v11];
    v14 = [v8 count];
    v15 = +[SKAStatusSubscriptionManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v25 = v10;
      v26 = 2048;
      v27 = v13;
      v28 = 2048;
      v29 = v14;
      v30 = 2112;
      v31 = clientCopy;
      _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Successfully removed presence subscription assertion for identifier: %@. Client had %ld transient subscription assertions, now has %ld. Client: %@", buf, 0x2Au);
    }
  }

  else
  {
    v15 = +[SKAStatusSubscriptionManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v25 = v10;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = clientCopy;
      _os_log_error_impl(&dword_220099000, v15, OS_LOG_TYPE_ERROR, "Could not find presence subscription assertion for subscription identifier: %@. Active transient subscription assertions: %@ for client: %@", buf, 0x20u);
    }
  }

  os_unfair_lock_unlock(&self->_presenceSubscriptionsLock);
  v16 = *MEMORY[0x277D85DE8];
  return v12 != 0;
}

void __105__SKAStatusSubscriptionManager__removeTransientPresenceSubscriptionAssertionForClient_channelIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 channelIdentifier];
  LODWORD(v5) = [v5 isEqualToString:v6];

  if (v5)
  {
    v7 = *(a1 + 40);

    [v7 addIndex:a3];
  }
}

- (BOOL)_activeTransientPresenceSubscriptionsExist
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_presenceSubscriptionsLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  objectEnumerator = [(NSMapTable *)self->_activeTransientPresenceSubscriptionsByClient objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v9 + 1) + 8 * i) count])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_presenceSubscriptionsLock);
  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_fetchAllActivePersistentPresenceSubscriptions
{
  v22 = *MEMORY[0x277D85DE8];
  databaseManager = [(SKAStatusSubscriptionManager *)self databaseManager];
  databaseManager2 = [(SKAStatusSubscriptionManager *)self databaseManager];
  newBackgroundContext = [databaseManager2 newBackgroundContext];
  v6 = [databaseManager allExistingPresenceSubscriptionsForDatabaseContext:newBackgroundContext];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        channelIdentifier = [*(*(&v17 + 1) + 8 * i) channelIdentifier];
        [v7 addObject:channelIdentifier];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)_activePersistentPresenceSubscriptionsExist
{
  _fetchAllActivePersistentPresenceSubscriptions = [(SKAStatusSubscriptionManager *)self _fetchAllActivePersistentPresenceSubscriptions];
  v3 = [_fetchAllActivePersistentPresenceSubscriptions count] != 0;

  return v3;
}

- (BOOL)_addTransientStatusSubscriptionAssertionForClient:(id)client subscriptionIdentifier:(id)identifier
{
  v36 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_internalWorkQueue);
  os_unfair_lock_lock(&self->_transientSubscriptionsLock);
  selfCopy = self;
  v24 = clientCopy;
  v8 = [(NSMapTable *)self->_activeTransientStatusSubscriptionsByClient objectForKey:clientCopy];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB40]);
    [(NSMapTable *)self->_activeTransientStatusSubscriptionsByClient setObject:v8 forKey:clientCopy];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        subscriptionIdentifier = [v14 subscriptionIdentifier];
        v16 = [subscriptionIdentifier isEqualToString:identifierCopy];

        if (v16)
        {
          v17 = +[SKAStatusSubscriptionManager logger];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v30 = identifierCopy;
            v31 = 2112;
            v32 = v24;
            v33 = 2112;
            v34 = v14;
            _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Found an existing transient subscription assertion for %@ and client: %@. ExistingAssertion: %@", buf, 0x20u);
          }

          v11 = 1;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v10);

    if (v11)
    {
      v18 = +[SKAStatusSubscriptionManager logger];
      if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, &v18->super, OS_LOG_TYPE_DEFAULT, "Not creating a new transient subscription assertion, one already exists.", buf, 2u);
      }

      v19 = 0;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v18 = [[SKATransientSubscriptionAssertion alloc] initWithSubscriptionIdentifier:identifierCopy];
  [v9 addObject:v18];
  v20 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = identifierCopy;
    _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "Successfully added transient subscription assertion to in memory model for subscription identifier: %@", buf, 0xCu);
  }

  v19 = 1;
LABEL_22:

  os_unfair_lock_unlock(&selfCopy->_transientSubscriptionsLock);
  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_removeTransientStatusSubscriptionAssertionForClient:(id)client subscriptionIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_internalWorkQueue);
  os_unfair_lock_lock(&self->_transientSubscriptionsLock);
  v8 = [(NSMapTable *)self->_activeTransientStatusSubscriptionsByClient objectForKey:clientCopy];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB40]);
  }

  v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __108__SKAStatusSubscriptionManager__removeTransientStatusSubscriptionAssertionForClient_subscriptionIdentifier___block_invoke;
  v21 = &unk_27843F628;
  v10 = identifierCopy;
  v22 = v10;
  v11 = v9;
  v23 = v11;
  [v8 enumerateObjectsUsingBlock:&v18];
  v12 = [v11 count];
  if (v12)
  {
    v13 = [v8 count];
    [v8 removeObjectsAtIndexes:v11];
    v14 = [v8 count];
    v15 = +[SKAStatusSubscriptionManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v25 = v10;
      v26 = 2048;
      v27 = v13;
      v28 = 2048;
      v29 = v14;
      v30 = 2112;
      v31 = clientCopy;
      _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Successfully removed transient subscription assertion for identifier: %@. Client had %ld transient subscription assertions, now has %ld. Client: %@", buf, 0x2Au);
    }
  }

  else
  {
    v15 = +[SKAStatusSubscriptionManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v25 = v10;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = clientCopy;
      _os_log_error_impl(&dword_220099000, v15, OS_LOG_TYPE_ERROR, "Could not find transient subscription assertion for subscription identifier: %@. Active transient subscription assertions: %@ for client: %@", buf, 0x20u);
    }
  }

  os_unfair_lock_unlock(&self->_transientSubscriptionsLock);
  v16 = *MEMORY[0x277D85DE8];
  return v12 != 0;
}

void __108__SKAStatusSubscriptionManager__removeTransientStatusSubscriptionAssertionForClient_subscriptionIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 subscriptionIdentifier];
  LODWORD(v5) = [v5 isEqualToString:v6];

  if (v5)
  {
    v7 = *(a1 + 40);

    [v7 addIndex:a3];
  }
}

- (BOOL)_activeTransientStatusSubscriptionsExist
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_transientSubscriptionsLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  objectEnumerator = [(NSMapTable *)self->_activeTransientStatusSubscriptionsByClient objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v9 + 1) + 8 * i) count])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_transientSubscriptionsLock);
  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_haveExceededPresenceSubscriptionCount
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  _fetchAllActiveTransientPresenceSubscriptions = [(SKAStatusSubscriptionManager *)self _fetchAllActiveTransientPresenceSubscriptions];
  v5 = [v3 initWithArray:_fetchAllActiveTransientPresenceSubscriptions];

  _fetchAllActivePersistentPresenceSubscriptions = [(SKAStatusSubscriptionManager *)self _fetchAllActivePersistentPresenceSubscriptions];
  [v5 addObjectsFromArray:_fetchAllActivePersistentPresenceSubscriptions];

  v7 = [(SKAStatusSubscriptionManager *)self _sortAndDedupeSubscriptionIdentifiers:v5];
  v8 = [v7 count];
  LOBYTE(self) = v8 >= [(SKAStatusSubscriptionManager *)self _maxPresenceSubscriptionCacheCount];

  return self;
}

- (void)_markCacheSubscriptionDateForChannelIdentifier:(id)identifier changeTime:(id)time
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  timeCopy = time;
  v8 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = identifierCopy;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Marking subscription change time for channel %@", &v12, 0xCu);
  }

  newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  v10 = [(SKADatabaseManaging *)self->_databaseManager createOrUpdateTransientSubscriptionHistoryForChannelIdentifier:identifierCopy lastSubscriptionDate:timeCopy databaseContext:newBackgroundContext];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_sortAndDedupeSubscriptionIdentifiers:(id)identifiers
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  identifiersCopy = identifiers;
  v5 = [[v3 alloc] initWithArray:identifiersCopy];

  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_compare_];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_enforceSubscriptionsHardCapOnSubscriptionIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  _hardMaxSubscriptionCount = [(SKAStatusSubscriptionManager *)self _hardMaxSubscriptionCount];
  v6 = [identifiersCopy count];
  if (v6 <= _hardMaxSubscriptionCount)
  {
    v13 = +[SKAStatusSubscriptionManager logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218240;
      v18 = v6;
      v19 = 2048;
      v20 = _hardMaxSubscriptionCount;
      _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Active subscription count %ld does not exceed cap of %ld", &v17, 0x16u);
    }

    v14 = [identifiersCopy copy];
  }

  else
  {
    v7 = CFPreferencesCopyAppValue(@"lastFaultTime", @"com.apple.StatusKitAgent");
    if (v7 && ([MEMORY[0x277CBEAA8] now], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "timeIntervalSinceDate:", v7), v10 = v9, v8, v10 <= 3600.0))
    {
      v12 = +[SKAStatusSubscriptionManager logger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SKAStatusSubscriptionManager _enforceSubscriptionsHardCapOnSubscriptionIdentifiers:];
      }
    }

    else
    {
      v11 = +[SKAStatusSubscriptionManager logger];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [SKAStatusSubscriptionManager _enforceSubscriptionsHardCapOnSubscriptionIdentifiers:];
      }

      v12 = [MEMORY[0x277CBEAA8] now];
      CFPreferencesSetAppValue(@"lastFaultTime", v12, @"com.apple.StatusKitAgent");
    }

    v14 = [identifiersCopy subarrayWithRange:{0, _hardMaxSubscriptionCount}];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_fetchAllClientActiveSubscriptionAssertions
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  os_unfair_lock_lock(&self->_transientSubscriptionsLock);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy = self;
  objectEnumerator = [(NSMapTable *)self->_activeTransientStatusSubscriptionsByClient objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v25;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(v10);
              }

              subscriptionIdentifier = [*(*(&v24 + 1) + 8 * j) subscriptionIdentifier];
              [v3 addObject:subscriptionIdentifier];
            }

            v12 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
          }

          while (v12);
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&selfCopy->_transientSubscriptionsLock);
  v16 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v3;
    _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "Transient subscription assertions: %@", buf, 0xCu);
  }

  newBackgroundContext = [(SKADatabaseManaging *)selfCopy->_databaseManager newBackgroundContext];
  v18 = [(SKADatabaseManaging *)selfCopy->_databaseManager allPersistentSubscriptionAssertionChannelIdentifiersWithDatabaseContext:newBackgroundContext];
  v19 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v18;
    _os_log_impl(&dword_220099000, v19, OS_LOG_TYPE_DEFAULT, "Persistent subscription assertions: %@", buf, 0xCu);
  }

  [v3 addObjectsFromArray:v18];
  v20 = [v3 copy];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_fetchAllActiveSubscriptionAssertionsWithCache
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  os_unfair_lock_lock(&self->_transientSubscriptionsLock);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  selfCopy = self;
  objectEnumerator = [(NSMapTable *)self->_activeTransientStatusSubscriptionsByClient objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v45;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v40 objects:v50 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v41;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v41 != v13)
              {
                objc_enumerationMutation(v10);
              }

              subscriptionIdentifier = [*(*(&v40 + 1) + 8 * j) subscriptionIdentifier];
              [v3 addObject:subscriptionIdentifier];
            }

            v12 = [v10 countByEnumeratingWithState:&v40 objects:v50 count:16];
          }

          while (v12);
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&selfCopy->_transientSubscriptionsLock);
  v16 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v3;
    _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "Transient status subscription assertions: %@", buf, 0xCu);
  }

  _fetchAllActiveTransientPresenceSubscriptions = [(SKAStatusSubscriptionManager *)selfCopy _fetchAllActiveTransientPresenceSubscriptions];
  [v3 addObjectsFromArray:_fetchAllActiveTransientPresenceSubscriptions];
  [v39 addObjectsFromArray:_fetchAllActiveTransientPresenceSubscriptions];
  v18 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = _fetchAllActiveTransientPresenceSubscriptions;
    _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Active transient presence subscription assertions: %@", buf, 0xCu);
  }

  _fetchAllActivePersistentPresenceSubscriptions = [(SKAStatusSubscriptionManager *)selfCopy _fetchAllActivePersistentPresenceSubscriptions];
  [v3 addObjectsFromArray:_fetchAllActivePersistentPresenceSubscriptions];
  [v39 addObjectsFromArray:_fetchAllActivePersistentPresenceSubscriptions];
  v20 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = _fetchAllActivePersistentPresenceSubscriptions;
    _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "Active persistent presence subscription assertions: %@", buf, 0xCu);
  }

  newBackgroundContext = [(SKADatabaseManaging *)selfCopy->_databaseManager newBackgroundContext];
  v22 = [(SKADatabaseManaging *)selfCopy->_databaseManager allPersistentSubscriptionAssertionChannelIdentifiersWithDatabaseContext:newBackgroundContext];
  v23 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v22;
    _os_log_impl(&dword_220099000, v23, OS_LOG_TYPE_DEFAULT, "Persistent status subscription assertions: %@", buf, 0xCu);
  }

  [v3 addObjectsFromArray:v22];
  v24 = [(SKAStatusSubscriptionManager *)selfCopy _allPersonalChannelIdentifiersRequiringSelfSubscriptionWithDatabaseContext:newBackgroundContext];
  v25 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v24;
    _os_log_impl(&dword_220099000, v25, OS_LOG_TYPE_DEFAULT, "Personal channels requiring self subscription: %@", buf, 0xCu);
  }

  [v3 addObjectsFromArray:v24];
  _maxSubscriptionCacheCount = [(SKAStatusSubscriptionManager *)selfCopy _maxSubscriptionCacheCount];
  _maxPresenceSubscriptionCacheCount = [(SKAStatusSubscriptionManager *)selfCopy _maxPresenceSubscriptionCacheCount];
  v28 = [v39 count];
  v29 = [v3 count];
  v30 = (_maxSubscriptionCacheCount - v29) & ~((_maxSubscriptionCacheCount - v29) >> 63);
  v31 = (_maxPresenceSubscriptionCacheCount - v28) & ~((_maxPresenceSubscriptionCacheCount - v28) >> 63);
  v32 = [v3 copy];
  v33 = [(SKAStatusSubscriptionManager *)selfCopy _recentlyReleasedTransientSubscriptionAssertionIdentifiersExcludingSubscriptionIdentifiers:v32 count:v30 presenceCount:v31 databaseContext:newBackgroundContext];

  v34 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v33;
    _os_log_impl(&dword_220099000, v34, OS_LOG_TYPE_DEFAULT, "Cached channels for subscription: %@", buf, 0xCu);
  }

  [v3 addObjectsFromArray:v33];
  v35 = [v3 copy];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)_fetchAllActiveTransientPresenceSubscriptions
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  os_unfair_lock_lock(&self->_presenceSubscriptionsLock);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
  objectEnumerator = [(NSMapTable *)self->_activeTransientPresenceSubscriptionsByClient objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              channelIdentifier = [*(*(&v20 + 1) + 8 * j) channelIdentifier];
              [v3 addObject:channelIdentifier];
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v12);
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&selfCopy->_presenceSubscriptionsLock);
  v16 = [v3 copy];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_recentlyReleasedTransientSubscriptionAssertionIdentifiersExcludingSubscriptionIdentifiers:(id)identifiers count:(int64_t)count presenceCount:(int64_t)presenceCount databaseContext:(id)context
{
  presenceCountCopy = presenceCount;
  v50 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  contextCopy = context;
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(SKAStatusSubscriptionManager *)self _statusSubscriptionTTL];
  v12 = v11;
  [(SKAStatusSubscriptionManager *)self _presenceSubscriptionTTL];
  v14 = v13;
  v15 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    countCopy = count;
    _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Finding at most %ld cached channels to subscribe to", buf, 0xCu);
  }

  -[SKADatabaseManaging existingRecentTransientSubscriptionHistoriesWithLimit:databaseContext:](self->_databaseManager, "existingRecentTransientSubscriptionHistoriesWithLimit:databaseContext:", [identifiersCopy count] + count, contextCopy);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = v44 = 0u;
  v40 = [v16 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v40)
  {
    v37 = 0;
    selfCopy = self;
    v39 = *v42;
LABEL_5:
    v17 = 0;
    while (1)
    {
      if (*v42 != v39)
      {
        objc_enumerationMutation(v16);
      }

      v18 = *(*(&v41 + 1) + 8 * v17);
      if ([v10 count] >= count)
      {
        break;
      }

      databaseManager = [(SKAStatusSubscriptionManager *)self databaseManager];
      channelIdentifier = [v18 channelIdentifier];
      v21 = [databaseManager existingChannelForSubscriptionIdentifier:channelIdentifier databaseContext:contextCopy];

      if (!v21)
      {
        channelIdentifier2 = +[SKAStatusSubscriptionManager logger];
        if (os_log_type_enabled(channelIdentifier2, OS_LOG_TYPE_ERROR))
        {
          [SKAStatusSubscriptionManager _recentlyReleasedTransientSubscriptionAssertionIdentifiersExcludingSubscriptionIdentifiers:buf count:v18 presenceCount:? databaseContext:?];
        }

        goto LABEL_27;
      }

      if ([v21 isDecommissioned])
      {
        channelIdentifier2 = +[SKAStatusSubscriptionManager logger];
        if (os_log_type_enabled(channelIdentifier2, OS_LOG_TYPE_ERROR))
        {
          [SKAStatusSubscriptionManager _recentlyReleasedTransientSubscriptionAssertionIdentifiersExcludingSubscriptionIdentifiers:v46 count:v18 presenceCount:? databaseContext:?];
        }

        goto LABEL_27;
      }

      channelType = [v21 channelType];
      v24 = v12;
      if (channelType == 1)
      {
        v24 = v14;
        if (v37 >= presenceCountCopy)
        {

          break;
        }
      }

      countCopy2 = count;
      v26 = contextCopy;
      v27 = [MEMORY[0x277CBEAA8] now];
      lastSubscriptionDate = [v18 lastSubscriptionDate];
      [v27 timeIntervalSinceDate:lastSubscriptionDate];
      v30 = v29;

      if (v30 <= v24)
      {
        channelIdentifier2 = [v18 channelIdentifier];
        if ([channelIdentifier2 length])
        {
          contextCopy = v26;
          if (([identifiersCopy containsObject:channelIdentifier2] & 1) == 0)
          {
            [v10 addObject:channelIdentifier2];
            v31 = v37;
            if (channelType == 1)
            {
              v31 = v37 + 1;
            }

            v37 = v31;
          }

          goto LABEL_26;
        }
      }

      else
      {
        channelIdentifier2 = +[SKAStatusSubscriptionManager logger];
        if (os_log_type_enabled(channelIdentifier2, OS_LOG_TYPE_DEBUG))
        {
          [SKAStatusSubscriptionManager _recentlyReleasedTransientSubscriptionAssertionIdentifiersExcludingSubscriptionIdentifiers:v45 count:v21 presenceCount:? databaseContext:?];
        }
      }

      contextCopy = v26;
LABEL_26:
      count = countCopy2;
      self = selfCopy;
LABEL_27:

      if (v40 == ++v17)
      {
        v40 = [v16 countByEnumeratingWithState:&v41 objects:v47 count:16];
        if (v40)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  allObjects = [v10 allObjects];

  v33 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (id)_allPersonalChannelIdentifiersRequiringSelfSubscriptionWithDatabaseContext:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _statusTypeIdentifiersRequiringSelfSubscription = [(SKAStatusSubscriptionManager *)self _statusTypeIdentifiersRequiringSelfSubscription];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [_statusTypeIdentifiersRequiringSelfSubscription countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    *&v8 = 138412290;
    v20 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(_statusTypeIdentifiersRequiringSelfSubscription);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [(SKADatabaseManaging *)self->_databaseManager existingPersonalChannelForStatusTypeIdentifier:v12 databaseContext:contextCopy, v20];
        v14 = v13;
        if (v13)
        {
          identifier = [v13 identifier];
          if ([identifier length])
          {
            [v5 addObject:identifier];
          }

          else
          {
            v16 = +[SKAStatusSubscriptionManager logger];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = v20;
              v26 = v14;
              _os_log_error_impl(&dword_220099000, v16, OS_LOG_TYPE_ERROR, "Personal channel has no identifier: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          identifier = +[SKAStatusSubscriptionManager logger];
          if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v20;
            v26 = v12;
            _os_log_impl(&dword_220099000, identifier, OS_LOG_TYPE_DEFAULT, "No personal channel for statusTypeIdentifier: %@", buf, 0xCu);
          }
        }
      }

      v9 = [_statusTypeIdentifiersRequiringSelfSubscription countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }

  v17 = [v5 copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_filterSubscriptionIdentifierToStatus:(id)status
{
  v23 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  databaseManager = [(SKAStatusSubscriptionManager *)self databaseManager];
  newBackgroundContext = [databaseManager newBackgroundContext];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = statusCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        databaseManager2 = [(SKAStatusSubscriptionManager *)self databaseManager];
        v15 = [databaseManager2 existingChannelForSubscriptionIdentifier:v13 databaseContext:newBackgroundContext];

        if (v15 && ![v15 channelType])
        {
          [v5 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_filterSubscriptionIdentifierToPresence:(id)presence
{
  v23 = *MEMORY[0x277D85DE8];
  presenceCopy = presence;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  databaseManager = [(SKAStatusSubscriptionManager *)self databaseManager];
  newBackgroundContext = [databaseManager newBackgroundContext];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = presenceCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        databaseManager2 = [(SKAStatusSubscriptionManager *)self databaseManager];
        v15 = [databaseManager2 existingChannelForSubscriptionIdentifier:v13 databaseContext:newBackgroundContext];

        if (v15 && [v15 channelType] == 1)
        {
          [v5 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (int64_t)_maxSubscriptionCacheCount
{
  v10 = *MEMORY[0x277D85DE8];
  if (+[SKAEnvironment overrideServerBagCheck])
  {
    v2 = 0;
LABEL_8:
    intValue = 35;
    goto LABEL_9;
  }

  v3 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v2 = [v3 objectForKey:@"shared-channels-subscription-cache-size"];

  if (!v2)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  intValue = [v2 intValue];
  v5 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = intValue;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Server bag indicates our max subscription count should be %lu", &v8, 0xCu);
  }

LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return intValue;
}

- (int64_t)_maxPresenceSubscriptionCacheCount
{
  v10 = *MEMORY[0x277D85DE8];
  if (+[SKAEnvironment overrideServerBagCheck])
  {
    v2 = 0;
LABEL_8:
    intValue = 8;
    goto LABEL_9;
  }

  v3 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v2 = [v3 objectForKey:@"activity-presence-max-subscription-size"];

  if (!v2)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  intValue = [v2 intValue];
  v5 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = intValue;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Server bag indicates our max presence subscription count should be %lu", &v8, 0xCu);
  }

LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return intValue;
}

- (int64_t)_hardMaxSubscriptionCount
{
  v10 = *MEMORY[0x277D85DE8];
  if (+[SKAEnvironment overrideServerBagCheck])
  {
    v2 = 0;
LABEL_8:
    intValue = 43;
    goto LABEL_9;
  }

  v3 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v2 = [v3 objectForKey:@"shared-channels-max-subscription-size-v2"];

  if (!v2)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  intValue = [v2 intValue];
  v5 = +[SKAStatusSubscriptionManager logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = intValue;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Server bag indicates our hard max subscription count should be %lu", &v8, 0xCu);
  }

LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return intValue;
}

- (double)_statusSubscriptionTTL
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = 86400.0;
  if (+[SKAEnvironment overrideServerBagCheck])
  {
    v3 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
    v3 = [v4 objectForKey:@"shared-channels-subscription-ttl-minutes"];

    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = (60 * [v3 intValue]);
        v5 = +[SKAStatusSubscriptionManager logger];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 134217984;
          v9 = v2;
          _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Server bag indicates our status subscription TTL should be %f seconds", &v8, 0xCu);
        }
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

- (double)_presenceSubscriptionTTL
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = 3600.0;
  if (+[SKAEnvironment overrideServerBagCheck])
  {
    v3 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
    v3 = [v4 objectForKey:@"activity-presence-subscription-ttl-minutes"];

    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = (60 * [v3 intValue]);
        v5 = +[SKAStatusSubscriptionManager logger];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 134217984;
          v9 = v2;
          _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Server bag indicates our presence subscription TTL should be %f seconds", &v8, 0xCu);
        }
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)logger
{
  if (logger_onceToken_24 != -1)
  {
    +[SKAStatusSubscriptionManager logger];
  }

  v3 = logger__logger_24;

  return v3;
}

uint64_t __38__SKAStatusSubscriptionManager_logger__block_invoke()
{
  logger__logger_24 = os_log_create("com.apple.StatusKit", "SKAStatusSubscriptionManager");

  return MEMORY[0x2821F96F8]();
}

void __133__SKAStatusSubscriptionManager_retainTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_client_completion___block_invoke_10_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Failed to update registered subscriptions following transient assertion retain with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __134__SKAStatusSubscriptionManager_releaseTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_client_completion___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_220099000, a2, a3, "Could not find transient subscription assertion to remove from in memory model for subscription identifier: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __134__SKAStatusSubscriptionManager_releaseTransientSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_client_completion___block_invoke_13_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Failed to update registered subscriptions following transient assertion release with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __105__SKAStatusSubscriptionManager_releaseAllTransientSubscriptionAssertionsAssociatedWithClient_completion___block_invoke_15_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Failed to update registered subscriptions following client disconnect with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __149__SKAStatusSubscriptionManager_retainPersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "A subscription assertion already exists, no need to create a new one. Existing: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __149__SKAStatusSubscriptionManager_retainPersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_16_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Failed to update registered subscriptions following persistent assertion retain with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __150__SKAStatusSubscriptionManager_releasePersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_220099000, a2, a3, "Did not delete persistent subscription assertion because one was not found for subscription identifier: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __150__SKAStatusSubscriptionManager_releasePersistentSubscriptionAssertionForSubscriptionIdentifier_statusTypeIdentifier_applicationIdentifier_completion___block_invoke_17_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Failed to update registered subscriptions following persistent assertion release with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __119__SKAStatusSubscriptionManager_retainPersistentPresenceSubscriptionForPresenceIdentifier_channelIdentifier_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Failed to update registered subscriptions following presence assertion retain with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __101__SKAStatusSubscriptionManager_releasePersistentPresenceSubscriptionForChannelIdentifier_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_220099000, v0, v1, "Failed to update registered subscriptions following presence assertion release with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __107__SKAStatusSubscriptionManager_releaseTransientPresenceSubscriptionForChannelIdentifier_client_completion___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_220099000, a2, a3, "Could not find presence subscription assertion to remove from in memory model for subscription identifier: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_enforceSubscriptionsHardCapOnSubscriptionIdentifiers:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = 2048;
  v5 = v0;
  _os_log_error_impl(&dword_220099000, v1, OS_LOG_TYPE_ERROR, "Active subscription count %ld exceeds cap of %ld", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_enforceSubscriptionsHardCapOnSubscriptionIdentifiers:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = 2048;
  v5 = v0;
  _os_log_fault_impl(&dword_220099000, v1, OS_LOG_TYPE_FAULT, "Active subscription count %ld exceeds cap of %ld", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_recentlyReleasedTransientSubscriptionAssertionIdentifiersExcludingSubscriptionIdentifiers:(uint64_t)a1 count:(uint64_t)a2 presenceCount:databaseContext:.cold.1(uint64_t a1, uint64_t a2)
{
  v5 = [OUTLINED_FUNCTION_2_2(a1 a2)];
  *v4 = 138412290;
  *v3 = v5;
  _os_log_debug_impl(&dword_220099000, v2, OS_LOG_TYPE_DEBUG, "Channel's last subscription date was too old, not returning it from cache. Channel identifier: %@", v4, 0xCu);
}

- (void)_recentlyReleasedTransientSubscriptionAssertionIdentifiersExcludingSubscriptionIdentifiers:(uint64_t)a1 count:(uint64_t)a2 presenceCount:databaseContext:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_2(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_3_1(&dword_220099000, v5, v6, "Channel has been decommissioned: %@");
}

- (void)_recentlyReleasedTransientSubscriptionAssertionIdentifiersExcludingSubscriptionIdentifiers:(uint64_t)a1 count:(uint64_t)a2 presenceCount:databaseContext:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_2(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_3_1(&dword_220099000, v5, v6, "Channel from history is gone from database: %@");
}

@end