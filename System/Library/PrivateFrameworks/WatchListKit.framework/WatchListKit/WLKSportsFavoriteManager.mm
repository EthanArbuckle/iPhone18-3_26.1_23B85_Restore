@interface WLKSportsFavoriteManager
+ (id)defaultManager;
- (WLKSportsFavoriteManager)initWithCache:(id)cache;
- (id)_connection;
- (id)caller;
- (void)_getFavoritesIgnoringCache:(BOOL)cache overrideLastModifiedDate:(BOOL)date completion:(id)completion;
- (void)_invalidationHandler;
- (void)_perform:(id)_perform completion:(id)completion;
- (void)_performAction:(unint64_t)action withIDs:(id)ds caller:(id)caller completion:(id)completion;
- (void)_performUserSettingsOperation:(id)operation completion:(id)completion;
- (void)addFavorites:(id)favorites completion:(id)completion;
- (void)dealloc;
- (void)deleteLegacyCache;
- (void)handleAccountDidChange:(id)change;
- (void)handleRefreshCacheNotification;
- (void)handleSyncSettingChangedNotification;
- (void)isOnboarded:(id)onboarded;
- (void)removeFavorites:(id)favorites completion:(id)completion;
- (void)watchlistd_performAction:(unint64_t)action withIDs:(id)ds caller:(id)caller overrideLastModifiedDate:(BOOL)date completion:(id)completion;
- (void)watchlistd_performUserSettingsAction:(unint64_t)action setFavoritesSyncEnabled:(BOOL)enabled caller:(id)caller overrideLastModifiedDate:(BOOL)date completion:(id)completion;
@end

@implementation WLKSportsFavoriteManager

+ (id)defaultManager
{
  if (defaultManager___once_0 != -1)
  {
    +[WLKSportsFavoriteManager defaultManager];
  }

  v3 = defaultManager___defaultManager_0;

  return v3;
}

void __42__WLKSportsFavoriteManager_defaultManager__block_invoke()
{
  v0 = [WLKSportsFavoriteCache alloc];
  v1 = [MEMORY[0x277CBEBD0] wlk_userDefaults];
  v4 = [(WLKSportsFavoriteCache *)v0 initWithUserDefaults:v1];

  v2 = [[WLKSportsFavoriteManager alloc] initWithCache:v4];
  v3 = defaultManager___defaultManager_0;
  defaultManager___defaultManager_0 = v2;
}

- (WLKSportsFavoriteManager)initWithCache:(id)cache
{
  cacheCopy = cache;
  v19.receiver = self;
  v19.super_class = WLKSportsFavoriteManager;
  v6 = [(WLKSportsFavoriteManager *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v6->_xpcLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->__cache, cache);
    [(WLKSportsFavoriteManager *)v7 deleteLegacyCache];
    v8 = dispatch_queue_create("WLKSportsFavoriteManagerQueue", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    objc_initWeak(&location, v7);
    v10 = MEMORY[0x277D85CD0];
    v11 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__WLKSportsFavoriteManager_initWithCache___block_invoke;
    handler[3] = &unk_279E5EA18;
    objc_copyWeak(&v17, &location);
    notify_register_dispatch("com.apple.WatchListKit.WLKSportsFavoriteOptInStatusChangedNotification", &v7->_sportsFavoriteSyncSettingChangedNotificationToken, v10, handler);

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__WLKSportsFavoriteManager_initWithCache___block_invoke_155;
    v14[3] = &unk_279E5EA18;
    objc_copyWeak(&v15, &location);
    notify_register_dispatch("com.apple.WatchListKit.WLKSportsFavoriteCacheSyncNotification", &v7->_favoritesCacheSyncNotificationToken, v10, v14);

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_handleAccountDidChange_ name:@"WLKAccountMonitorAccountDidChange" object:0];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __42__WLKSportsFavoriteManager_initWithCache___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WLKIsDaemon() & 1) == 0)
  {
    v2 = WLKSystemLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - Received opt in status changed notification, fetching cache", buf, 2u);
    }

    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __42__WLKSportsFavoriteManager_initWithCache___block_invoke_150;
    v3[3] = &unk_279E60708;
    v4 = WeakRetained;
    [v4 isOnboarded:v3];
  }
}

void __42__WLKSportsFavoriteManager_initWithCache___block_invoke_150(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v9 setObject:v10 forKey:@"WLKSportsFavoriteSyncSettingChangedNotificationOnboardingStatusKey"];

  if (v7)
  {
    [v9 setObject:v7 forKey:@"WLKSportsFavoriteSyncSettingChangedNotificationLastModifiedDateKey"];
  }

  if (v8)
  {
    [v9 setObject:v8 forKey:@"WLKSportsFavoriteSyncSettingChangedNotificationErrorKey"];
  }

  v11 = WLKSystemLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_272A0F000, v11, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - Firing local opt in status changed notification", v13, 2u);
  }

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"WLKSportsFavoriteSyncSettingChangedNotification" object:*(a1 + 32) userInfo:v9];
}

void __42__WLKSportsFavoriteManager_initWithCache___block_invoke_155(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WLKIsDaemon() & 1) == 0)
  {
    v2 = WLKSystemLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - Received cache sync invalidation notification, fetching cache", buf, 2u);
    }

    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __42__WLKSportsFavoriteManager_initWithCache___block_invoke_156;
    v3[3] = &unk_279E60730;
    v4 = WeakRetained;
    [v4 favoritesWithCompletion:v3];
  }
}

void __42__WLKSportsFavoriteManager_initWithCache___block_invoke_156(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v7)
  {
    v11 = [v7 copy];
    [v10 setObject:v11 forKey:@"WLKSportsFavoriteSyncCompletionNotificationFavoritesKey"];
  }

  if (v8)
  {
    [v10 setObject:v8 forKey:@"WLKSportsFavoriteSyncCompletionNotificationLastModifiedDateKey"];
  }

  if (v9)
  {
    [v10 setObject:v9 forKey:@"WLKSportsFavoriteSyncCompletionNotificationErrorKey"];
  }

  v12 = WLKSystemLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_272A0F000, v12, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - Firing local cache sync complete notification", v14, 2u);
  }

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 postNotificationName:@"WLKSportsFavoriteSyncCompletionNotification" object:*(a1 + 32) userInfo:v10];
}

- (void)deleteLegacyCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__WLKSportsFavoriteManager_deleteLegacyCache__block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  if (deleteLegacyCache___once != -1)
  {
    dispatch_once(&deleteLegacyCache___once, block);
  }
}

- (void)handleAccountDidChange:(id)change
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WLKSportsFavoriteManager_handleAccountDidChange___block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __51__WLKSportsFavoriteManager_handleAccountDidChange___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) invalidate];
  v1 = MEMORY[0x277D6C470];

  return [v1 accountDidChange];
}

- (id)caller
{
  if (WLKIsNewsApp())
  {
    return @"apple-news";
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  favoritesCacheSyncNotificationToken = self->_favoritesCacheSyncNotificationToken;
  if (favoritesCacheSyncNotificationToken)
  {
    notify_cancel(favoritesCacheSyncNotificationToken);
  }

  sportsFavoriteSyncSettingChangedNotificationToken = self->_sportsFavoriteSyncSettingChangedNotificationToken;
  if (sportsFavoriteSyncSettingChangedNotificationToken)
  {
    notify_cancel(sportsFavoriteSyncSettingChangedNotificationToken);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = WLKSportsFavoriteManager;
  [(WLKSportsFavoriteManager *)&v6 dealloc];
}

- (id)_connection
{
  os_unfair_lock_lock(&self->_xpcLock);
  if (!self->_connection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    connection = self->_connection;
    self->_connection = v3;

    v5 = self->_connection;
    v6 = WLKConnectionClientInterface();
    [(NSXPCConnection *)v5 setExportedInterface:v6];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v7 = self->_connection;
    v8 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_168];
    objc_initWeak(&location, self);
    v9 = self->_connection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __39__WLKSportsFavoriteManager__connection__block_invoke_169;
    v15 = &unk_279E5EC50;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:&v12];
    [(NSXPCConnection *)self->_connection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_xpcLock);
  v10 = self->_connection;

  return v10;
}

void __39__WLKSportsFavoriteManager__connection__block_invoke()
{
  v0 = WLKSystemLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_272A0F000, v0, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - Connection interrupted.", v1, 2u);
  }
}

void __39__WLKSportsFavoriteManager__connection__block_invoke_169(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidationHandler];
}

- (void)_invalidationHandler
{
  v3 = WLKSystemLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - Connection invalidated.", v5, 2u);
  }

  os_unfair_lock_lock(&self->_xpcLock);
  connection = self->_connection;
  self->_connection = 0;

  os_unfair_lock_unlock(&self->_xpcLock);
}

- (void)handleRefreshCacheNotification
{
  if ((WLKIsDaemon() & 1) != 0 || WLKIsRunningTest())
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__WLKSportsFavoriteManager_handleRefreshCacheNotification__block_invoke;
    block[3] = &unk_279E5EE08;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)handleSyncSettingChangedNotification
{
  if ((WLKIsDaemon() & 1) != 0 || WLKIsRunningTest())
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__WLKSportsFavoriteManager_handleSyncSettingChangedNotification__block_invoke;
    block[3] = &unk_279E5EE08;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)isOnboarded:(id)onboarded
{
  onboardedCopy = onboarded;
  v11 = 0;
  v5 = WLKCheckAuthentication(&v11);
  v6 = v11;
  if (v5)
  {
    cache = self->__cache;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__WLKSportsFavoriteManager_isOnboarded___block_invoke;
    v9[3] = &unk_279E607F0;
    v9[4] = self;
    v10 = onboardedCopy;
    [(WLKSportsFavoriteCaching *)cache hasFavoritesSyncEnabledKey:v9];
  }

  else
  {
    v8 = WLKSystemLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WLKSportsFavoriteManager isOnboarded:];
    }

    (*(onboardedCopy + 2))(onboardedCopy, 0, 0, v6);
  }
}

void __40__WLKSportsFavoriteManager_isOnboarded___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__WLKSportsFavoriteManager_isOnboarded___block_invoke_2;
    v8[3] = &unk_279E60778;
    v9 = *(a1 + 40);
    [v3 isOptedIn:v8];
    v4 = v9;
  }

  else
  {
    v5 = *(v2 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__WLKSportsFavoriteManager_isOnboarded___block_invoke_176;
    block[3] = &unk_279E5EFC0;
    block[4] = v2;
    v7 = *(a1 + 40);
    dispatch_async(v5, block);
    v4 = v7;
  }
}

void __40__WLKSportsFavoriteManager_isOnboarded___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = WLKSystemLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - isOnboarded reply with cached onboarding state: %d, lastModified: %@", v8, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

void __40__WLKSportsFavoriteManager_isOnboarded___block_invoke_176(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 caller];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__WLKSportsFavoriteManager_isOnboarded___block_invoke_2_177;
  v5[3] = &unk_279E607C8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _performUserSettingsAction:0 setFavoritesSyncEnabled:0 caller:v3 completion:v5];
}

void __40__WLKSportsFavoriteManager_isOnboarded___block_invoke_2_177(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__WLKSportsFavoriteManager_isOnboarded___block_invoke_3;
  v7[3] = &unk_279E607A0;
  v8 = v4;
  v9 = *(a1 + 40);
  v6 = v4;
  [v5 isOptedIn:v7];
}

void __40__WLKSportsFavoriteManager_isOnboarded___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = WLKSystemLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 debugDescription];
    v8 = [*(a1 + 32) localizedDescription];
    v11[0] = 67109634;
    v11[1] = a2;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - isOnboarded reply with fresh onboarding state: %d, lastModified: %@, error: %@", v11, 0x1Cu);
  }

  v9 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __54__WLKSportsFavoriteManager_setOptInStatus_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)addFavorites:(id)favorites completion:(id)completion
{
  completionCopy = completion;
  favoritesCopy = favorites;
  caller = [(WLKSportsFavoriteManager *)self caller];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__WLKSportsFavoriteManager_addFavorites_completion___block_invoke;
  v10[3] = &unk_279E60818;
  v11 = completionCopy;
  v9 = completionCopy;
  [(WLKSportsFavoriteManager *)self _performAction:1 withIDs:favoritesCopy caller:caller completion:v10];
}

- (void)removeFavorites:(id)favorites completion:(id)completion
{
  completionCopy = completion;
  favoritesCopy = favorites;
  caller = [(WLKSportsFavoriteManager *)self caller];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__WLKSportsFavoriteManager_removeFavorites_completion___block_invoke;
  v10[3] = &unk_279E60818;
  v11 = completionCopy;
  v9 = completionCopy;
  [(WLKSportsFavoriteManager *)self _performAction:2 withIDs:favoritesCopy caller:caller completion:v10];
}

- (void)_getFavoritesIgnoringCache:(BOOL)cache overrideLastModifiedDate:(BOOL)date completion:(id)completion
{
  completionCopy = completion;
  v15 = 0;
  v8 = WLKCheckAuthentication(&v15);
  v9 = v15;
  if (v8)
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __91__WLKSportsFavoriteManager__getFavoritesIgnoringCache_overrideLastModifiedDate_completion___block_invoke;
    v12[3] = &unk_279E603B8;
    v12[4] = self;
    cacheCopy = cache;
    v13 = completionCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v11 = WLKSystemLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WLKSportsFavoriteManager isOnboarded:];
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v9);
  }
}

void __91__WLKSportsFavoriteManager__getFavoritesIgnoringCache_overrideLastModifiedDate_completion___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 40) hasCache] && (*(a1 + 48) & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __91__WLKSportsFavoriteManager__getFavoritesIgnoringCache_overrideLastModifiedDate_completion___block_invoke_2;
    v5[3] = &unk_279E60840;
    v6 = *(a1 + 40);
    [v3 getFavoritesWithCompletion:v5];
  }

  else
  {
    v2 = *(a1 + 32);
    v4 = [v2 caller];
    [v2 _performAction:0 withIDs:0 caller:v4 completion:*(a1 + 40)];
  }
}

- (void)_performAction:(unint64_t)action withIDs:(id)ds caller:(id)caller completion:(id)completion
{
  dsCopy = ds;
  callerCopy = caller;
  completionCopy = completion;
  v32 = 0;
  v13 = WLKCheckAuthentication(&v32);
  v14 = v32;
  if (v13)
  {
    if (WLKIsDaemon() & 1) != 0 || (WLKIsRunningTest())
    {
      [(WLKSportsFavoriteManager *)self watchlistd_performAction:action withIDs:dsCopy caller:callerCopy overrideLastModifiedDate:0 completion:completionCopy];
    }

    else
    {
      v30[0] = 0;
      v30[1] = v30;
      v30[2] = 0x2020000000;
      v31 = 0;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __69__WLKSportsFavoriteManager__performAction_withIDs_caller_completion___block_invoke;
      v27[3] = &unk_279E60868;
      v29 = v30;
      v28 = completionCopy;
      v16 = MEMORY[0x2743D2DF0](v27);
      v17 = WLKSystemLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272A0F000, v17, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - Performing sports favorites action over xpc.", buf, 2u);
      }

      _connection = [(WLKSportsFavoriteManager *)self _connection];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __69__WLKSportsFavoriteManager__performAction_withIDs_caller_completion___block_invoke_180;
      v24[3] = &unk_279E5EB38;
      v19 = v16;
      v25 = v19;
      v20 = [_connection remoteObjectProxyWithErrorHandler:v24];

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __69__WLKSportsFavoriteManager__performAction_withIDs_caller_completion___block_invoke_182;
      v22[3] = &unk_279E60818;
      v21 = v19;
      v23 = v21;
      [v20 performSportsFavoritesAction:action ids:dsCopy caller:callerCopy completion:v22];

      _Block_object_dispose(v30, 8);
    }
  }

  else
  {
    v15 = WLKSystemLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [WLKSportsFavoriteManager isOnboarded:];
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v14);
  }
}

uint64_t __69__WLKSportsFavoriteManager__performAction_withIDs_caller_completion___block_invoke(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __69__WLKSportsFavoriteManager__performAction_withIDs_caller_completion___block_invoke_180(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = WLKSystemLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - Error: Unable to communicate with the remote object proxy (%@)", &v6, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __69__WLKSportsFavoriteManager__performAction_withIDs_caller_completion___block_invoke_182(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (!v11)
        {
          v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v15 = [WLKSportsFavoriteFactory favoriteWithID:v14];
        [v11 addObject:v15];
      }

      v10 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __97__WLKSportsFavoriteManager__performUserSettingsAction_setFavoritesSyncEnabled_caller_completion___block_invoke(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __97__WLKSportsFavoriteManager__performUserSettingsAction_setFavoritesSyncEnabled_caller_completion___block_invoke_183(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = WLKSystemLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - Error: Unable to communicate with the remote object proxy (%@)", &v6, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)watchlistd_performAction:(unint64_t)action withIDs:(id)ds caller:(id)caller overrideLastModifiedDate:(BOOL)date completion:(id)completion
{
  dsCopy = ds;
  callerCopy = caller;
  completionCopy = completion;
  v26 = 0;
  v15 = WLKCheckAuthentication(&v26);
  v16 = v26;
  if (v15)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__WLKSportsFavoriteManager_watchlistd_performAction_withIDs_caller_overrideLastModifiedDate_completion___block_invoke;
    block[3] = &unk_279E60930;
    actionCopy = action;
    v20 = dsCopy;
    v21 = callerCopy;
    selfCopy = self;
    dateCopy = date;
    v23 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v18 = WLKSystemLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [WLKSportsFavoriteManager isOnboarded:];
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v16);
  }
}

void __104__WLKSportsFavoriteManager_watchlistd_performAction_withIDs_caller_overrideLastModifiedDate_completion___block_invoke(uint64_t a1)
{
  v2 = [[WLKSportsFavoriteRequestOperation alloc] initWithAction:*(a1 + 64) ids:*(a1 + 32) caller:*(a1 + 40)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __104__WLKSportsFavoriteManager_watchlistd_performAction_withIDs_caller_overrideLastModifiedDate_completion___block_invoke_2;
  v5[3] = &unk_279E60908;
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v8 = *(a1 + 64);
  v5[4] = v4;
  v9 = *(a1 + 72);
  v7 = v3;
  v6 = *(a1 + 32);
  [v4 _perform:v2 completion:v5];
}

void __104__WLKSportsFavoriteManager_watchlistd_performAction_withIDs_caller_overrideLastModifiedDate_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 == 2)
  {
    if (!v6)
    {
      v19 = *(a1 + 40);
      if (v19)
      {
        v20 = *(*(a1 + 32) + 40);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __104__WLKSportsFavoriteManager_watchlistd_performAction_withIDs_caller_overrideLastModifiedDate_completion___block_invoke_5;
        v25[3] = &unk_279E608E0;
        v12 = &v27;
        v21 = *(a1 + 48);
        v14 = &v26;
        v26 = 0;
        v27 = v21;
        [v20 removeFavorites:v19 completion:v25];
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

  if (v8 == 1)
  {
    if (!v6)
    {
      v15 = *(a1 + 40);
      if (v15)
      {
        v16 = *(*(a1 + 32) + 40);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __104__WLKSportsFavoriteManager_watchlistd_performAction_withIDs_caller_overrideLastModifiedDate_completion___block_invoke_4;
        v28[3] = &unk_279E608E0;
        v12 = &v30;
        v17 = *(a1 + 48);
        v14 = &v29;
        v29 = 0;
        v30 = v17;
        [v16 addFavorites:v15 completion:v28];
        goto LABEL_11;
      }
    }

LABEL_10:
    v18 = *(*(a1 + 32) + 40);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __104__WLKSportsFavoriteManager_watchlistd_performAction_withIDs_caller_overrideLastModifiedDate_completion___block_invoke_6;
    v22[3] = &unk_279E608E0;
    v12 = &v24;
    v24 = *(a1 + 48);
    v14 = &v23;
    v23 = v7;
    [v18 getFavoritesWithCompletion:v22];
    goto LABEL_11;
  }

  if (v8 || v6)
  {
    goto LABEL_10;
  }

  v9 = *(*(a1 + 32) + 40);
  v10 = [v5 favorites];
  v11 = *(a1 + 64);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __104__WLKSportsFavoriteManager_watchlistd_performAction_withIDs_caller_overrideLastModifiedDate_completion___block_invoke_3;
  v31[3] = &unk_279E608B8;
  v12 = &v33;
  v13 = *(a1 + 48);
  v14 = &v32;
  v32 = 0;
  v33 = v13;
  v34 = *(a1 + 64);
  [v9 setCache:v10 overrideLastModifiedDate:v11 completion:v31];

LABEL_11:
}

uint64_t __104__WLKSportsFavoriteManager_watchlistd_performAction_withIDs_caller_overrideLastModifiedDate_completion___block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    v4 = WLKSystemLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "com.apple.WatchListKit.WLKSportsFavoriteCacheSyncNotification";
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - posting (cross process) notification %s", &v6, 0xCu);
    }

    result = notify_post("com.apple.WatchListKit.WLKSportsFavoriteCacheSyncNotification");
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __104__WLKSportsFavoriteManager_watchlistd_performAction_withIDs_caller_overrideLastModifiedDate_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, a3, *(a1 + 32));
  v3 = WLKSystemLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "com.apple.WatchListKit.WLKSportsFavoriteCacheSyncNotification";
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - posting (cross process) notification %s", &v6, 0xCu);
  }

  result = notify_post("com.apple.WatchListKit.WLKSportsFavoriteCacheSyncNotification");
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __104__WLKSportsFavoriteManager_watchlistd_performAction_withIDs_caller_overrideLastModifiedDate_completion___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, a3, *(a1 + 32));
  v3 = WLKSystemLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "com.apple.WatchListKit.WLKSportsFavoriteCacheSyncNotification";
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - posting (cross process) notification %s", &v6, 0xCu);
  }

  result = notify_post("com.apple.WatchListKit.WLKSportsFavoriteCacheSyncNotification");
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)watchlistd_performUserSettingsAction:(unint64_t)action setFavoritesSyncEnabled:(BOOL)enabled caller:(id)caller overrideLastModifiedDate:(BOOL)date completion:(id)completion
{
  callerCopy = caller;
  completionCopy = completion;
  v25 = 0;
  v14 = WLKCheckAuthentication(&v25);
  v15 = v25;
  if (v14)
  {
    queue = self->_queue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __132__WLKSportsFavoriteManager_watchlistd_performUserSettingsAction_setFavoritesSyncEnabled_caller_overrideLastModifiedDate_completion___block_invoke;
    v18[3] = &unk_279E609D0;
    actionCopy = action;
    enabledCopy = enabled;
    v19 = callerCopy;
    selfCopy = self;
    v21 = completionCopy;
    dateCopy = date;
    dispatch_async(queue, v18);
  }

  else
  {
    v17 = WLKSystemLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [WLKSportsFavoriteManager isOnboarded:];
    }

    (*(completionCopy + 2))(completionCopy, 0, v15);
  }
}

void __132__WLKSportsFavoriteManager_watchlistd_performUserSettingsAction_setFavoritesSyncEnabled_caller_overrideLastModifiedDate_completion___block_invoke(uint64_t a1)
{
  v2 = [WLKUserSettingsRequestOperation alloc];
  v3 = *(a1 + 56);
  v4 = [[WLKUserSettings alloc] initWithFavoritesSyncEnabled:*(a1 + 64)];
  v5 = [(WLKUserSettingsRequestOperation *)v2 initWithAction:v3 userSettings:v4 caller:*(a1 + 32)];

  v6 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __132__WLKSportsFavoriteManager_watchlistd_performUserSettingsAction_setFavoritesSyncEnabled_caller_overrideLastModifiedDate_completion___block_invoke_2;
  v9[3] = &unk_279E609A8;
  v9[4] = v6;
  v7 = *(a1 + 48);
  v12 = *(a1 + 65);
  v8 = *(a1 + 56);
  v10 = v7;
  v11 = v8;
  [v6 _performUserSettingsOperation:v5 completion:v9];
}

void __132__WLKSportsFavoriteManager_watchlistd_performUserSettingsAction_setFavoritesSyncEnabled_caller_overrideLastModifiedDate_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  if (v6)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __132__WLKSportsFavoriteManager_watchlistd_performUserSettingsAction_setFavoritesSyncEnabled_caller_overrideLastModifiedDate_completion___block_invoke_3;
    v18[3] = &unk_279E60958;
    v8 = &v20;
    v20 = *(a1 + 40);
    v9 = &v19;
    v19 = v6;
    [v7 isOptedIn:v18];
  }

  else
  {
    v10 = [v5 favoritesSyncEnabled];
    v11 = (*(a1 + 56) & 1) != 0 || *(a1 + 48) == 1;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __132__WLKSportsFavoriteManager_watchlistd_performUserSettingsAction_setFavoritesSyncEnabled_caller_overrideLastModifiedDate_completion___block_invoke_189;
    v14[3] = &unk_279E60980;
    v8 = &v15;
    v15 = v5;
    v9 = v16;
    v12 = *(a1 + 40);
    v17 = *(a1 + 56);
    v13 = *(a1 + 48);
    v16[0] = v12;
    v16[1] = v13;
    [v7 setOptInStatus:v10 overrideLastModifiedDate:v11 completion:v14];
  }
}

uint64_t __132__WLKSportsFavoriteManager_watchlistd_performUserSettingsAction_setFavoritesSyncEnabled_caller_overrideLastModifiedDate_completion___block_invoke_3(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - returning cached value for sports onboarding state: %d", v8, 8u);
  }

  v5 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __132__WLKSportsFavoriteManager_watchlistd_performUserSettingsAction_setFavoritesSyncEnabled_caller_overrideLastModifiedDate_completion___block_invoke_189(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) favoritesSyncEnabled];
    v8 = 67109120;
    LODWORD(v9) = v5;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - returning new value for sports onboarding state: %d", &v8, 8u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) favoritesSyncEnabled], v3);
  if ((*(a1 + 56) & 1) != 0 || *(a1 + 48) == 1)
  {
    v6 = WLKSystemLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "com.apple.WatchListKit.WLKSportsFavoriteOptInStatusChangedNotification";
      _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - posting (cross process) notification %s", &v8, 0xCu);
    }

    notify_post("com.apple.WatchListKit.WLKSportsFavoriteOptInStatusChangedNotification");
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_perform:(id)_perform completion:(id)completion
{
  _performCopy = _perform;
  completionCopy = completion;
  if (([_performCopy action] == 1 || objc_msgSend(_performCopy, "action") == 2) && (objc_msgSend(_performCopy, "ids"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, !v8))
  {
    v10 = WLKSystemLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - Sports favorites action will not be executed -- empty ids parameter.", location, 2u);
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKSportsFavoriteErrorDomain" code:-1 userInfo:0];
    completionCopy[2](completionCopy, 0, v11);
  }

  else
  {
    objc_initWeak(location, _performCopy);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __48__WLKSportsFavoriteManager__perform_completion___block_invoke;
    v15 = &unk_279E5E660;
    objc_copyWeak(&v17, location);
    v16 = completionCopy;
    [_performCopy setCompletionBlock:&v12];
    wlkDefaultQueue = [MEMORY[0x277CCABD8] wlkDefaultQueue];
    [wlkDefaultQueue addOperation:_performCopy];

    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }
}

void __48__WLKSportsFavoriteManager__perform_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];
  v4 = WLKXPCSafeErrorFromError(v3);

  v5 = WLKSystemLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [v4 localizedDescription];
      v13 = 138412546;
      v14 = v7;
      v15 = 2048;
      v16 = [WeakRetained action];
      _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - Sports favorites action failed -- %@. Request -- %lu", &v13, 0x16u);
    }

    v8 = *(a1 + 32);
    v9 = [WeakRetained response];
    (*(v8 + 16))(v8, v9, v4);
  }

  else
  {
    if (v6)
    {
      v10 = [0 localizedDescription];
      v13 = 138412546;
      v14 = v10;
      v15 = 2048;
      v16 = [WeakRetained action];
      _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - Sports favorites action succeeded -- %@. Request -- %lu", &v13, 0x16u);
    }

    v11 = *(a1 + 32);
    v9 = [WeakRetained response];
    (*(v11 + 16))(v11, v9, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_performUserSettingsOperation:(id)operation completion:(id)completion
{
  operationCopy = operation;
  completionCopy = completion;
  if ([operationCopy action] == 1 && (objc_msgSend(operationCopy, "userSettings"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v9 = WLKSystemLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - Sports favorites (user settings) action will not be executed -- empty userSettings parameter.", location, 2u);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKSportsFavoriteErrorDomain" code:-1 userInfo:0];
    completionCopy[2](completionCopy, 0, v10);
  }

  else
  {
    objc_initWeak(location, operationCopy);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __69__WLKSportsFavoriteManager__performUserSettingsOperation_completion___block_invoke;
    v14 = &unk_279E5E660;
    objc_copyWeak(&v16, location);
    v15 = completionCopy;
    [operationCopy setCompletionBlock:&v11];
    wlkDefaultQueue = [MEMORY[0x277CCABD8] wlkDefaultQueue];
    [wlkDefaultQueue addOperation:operationCopy];

    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
  }
}

void __69__WLKSportsFavoriteManager__performUserSettingsOperation_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];
  v4 = WLKXPCSafeErrorFromError(v3);

  v5 = WLKSystemLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [v4 localizedDescription];
      v13 = 138412546;
      v14 = v7;
      v15 = 2048;
      v16 = [WeakRetained action];
      _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - Sports favorites (user settings) action failed -- %@. Request -- %lu", &v13, 0x16u);
    }

    v8 = *(a1 + 32);
    v9 = [WeakRetained response];
    (*(v8 + 16))(v8, v9, v4);
  }

  else
  {
    if (v6)
    {
      v10 = [0 localizedDescription];
      v13 = 138412546;
      v14 = v10;
      v15 = 2048;
      v16 = [WeakRetained action];
      _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - Sports favorites (user settings) action succeeded -- %@. Request -- %lu", &v13, 0x16u);
    }

    v11 = *(a1 + 32);
    v9 = [WeakRetained response];
    (*(v11 + 16))(v11, v9, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)isOnboarded:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_272A0F000, v0, v1, "WLKSportsFavorites - User is not signed in, returning early with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end