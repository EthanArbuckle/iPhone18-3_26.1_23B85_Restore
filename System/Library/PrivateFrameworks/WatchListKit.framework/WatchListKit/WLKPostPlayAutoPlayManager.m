@interface WLKPostPlayAutoPlayManager
+ (id)defaultManager;
- (BOOL)_hasPreviousPreferenceAsDisableAutoPlay;
- (BOOL)isEnabledForType:(unint64_t)a3;
- (WLKPostPlayAutoPlayManager)initWithCache:(id)a3;
- (void)_fetchStatusForType:(unint64_t)a3 withCompletion:(id)a4;
- (void)_handleAccountDidChange:(id)a3;
- (void)_migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion:(id)a3;
- (void)_migrateOffStatusWithCompletion:(id)a3;
- (void)_networkReachabilityDidChange:(id)a3;
- (void)_performUserSettingsOperation:(id)a3 dsid:(id)a4 completion:(id)a5;
- (void)fetchStatusForAllTypesWithCompletion:(id)a3;
- (void)getStatusForType:(unint64_t)a3 withCompletion:(id)a4;
- (void)setSettings:(id)a3 completion:(id)a4;
@end

@implementation WLKPostPlayAutoPlayManager

+ (id)defaultManager
{
  if (defaultManager___once != -1)
  {
    +[WLKPostPlayAutoPlayManager defaultManager];
  }

  v3 = defaultManager___defaultManager;

  return v3;
}

void __44__WLKPostPlayAutoPlayManager_defaultManager__block_invoke()
{
  v3 = [MEMORY[0x277CBEBD0] wlk_userDefaults];
  v0 = [[WLKPostPlayAutoPlayCache alloc] initWithUserDefaults:v3];
  v1 = [[WLKPostPlayAutoPlayManager alloc] initWithCache:v0];
  v2 = defaultManager___defaultManager;
  defaultManager___defaultManager = v1;
}

- (BOOL)_hasPreviousPreferenceAsDisableAutoPlay
{
  v2 = +[WLKSystemPreferencesStore sharedPreferences];
  v3 = +[WLKSettingsStore sharedSettings];
  if ([v2 hasPostPlayAutoPlayNextVideoPreferences])
  {
    v4 = WLKSystemLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Migrating post play auto-play from WLKSystemPreferencesStore", buf, 2u);
    }

    v5 = v2;
  }

  else
  {
    if (![v3 hasPostPlayAutoPlayNextVideoPreferences])
    {
      LOBYTE(v6) = 0;
      goto LABEL_11;
    }

    v4 = WLKSystemLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Migrating post play auto-play from WLKSettingsStore", v8, 2u);
    }

    v5 = v3;
  }

  v6 = [v5 postPlayAutoPlayNextVideo] ^ 1;
LABEL_11:

  return v6;
}

- (WLKPostPlayAutoPlayManager)initWithCache:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = WLKPostPlayAutoPlayManager;
  v6 = [(WLKPostPlayAutoPlayManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cache, a3);
    v8 = dispatch_queue_create("WLKPostPlayAutoPlayManagerPersistentCacheQueue", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ongoingUpdateOperations = v7->_ongoingUpdateOperations;
    v7->_ongoingUpdateOperations = v10;

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v7 selector:sel__handleAccountDidChange_ name:@"WLKAccountMonitorAccountDidChange" object:0];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = +[WLKReachabilityMonitor sharedInstance];
    [v13 addObserver:v7 selector:sel__networkReachabilityDidChange_ name:@"WLKReachabilityMonitorReachabilityDidChange" object:v14];

    [(WLKPostPlayAutoPlayManager *)v7 _migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion:0];
  }

  return v7;
}

- (BOOL)isEnabledForType:(unint64_t)a3
{
  v4 = [(WLKPostPlayAutoPlayManager *)self cache];
  LOBYTE(a3) = [v4 currentSettingForType:a3];

  return a3;
}

- (void)getStatusForType:(unint64_t)a3 withCompletion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v19 = 0;
  v7 = WLKPostPlayAutoPlayCheckHasActiveAccount(&v19);
  v8 = v19;
  if (v7)
  {
    v9 = [(WLKPostPlayAutoPlayManager *)self cache];
    v10 = [v9 hasCacheForType:a3];

    if (v10)
    {
      v11 = [(WLKPostPlayAutoPlayManager *)self cache];
      v12 = [v11 currentSettingForType:a3];

      v13 = WLKSystemLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
        *buf = 138412546;
        v21 = v14;
        v22 = 1024;
        v23 = v12;
        _os_log_impl(&dword_272A0F000, v13, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - getStatusForType: %@, replied with cached state: %d", buf, 0x12u);
      }

      if (v6)
      {
        v6[2](v6, v12, 0);
      }
    }

    else
    {
      v16 = WLKSystemLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
        *buf = 138412290;
        v21 = v17;
        _os_log_impl(&dword_272A0F000, v16, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - getStatusForType: %@, no cache found.", buf, 0xCu);
      }

      [(WLKPostPlayAutoPlayManager *)self _fetchStatusForType:a3 withCompletion:v6];
    }
  }

  else
  {
    v15 = WLKSystemLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [WLKPostPlayAutoPlayManager getStatusForType:withCompletion:];
    }

    if (v6)
    {
      (v6)[2](v6, 1, v8);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setSettings:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v8 = WLKPostPlayAutoPlayCheckHasActiveAccount(&v16);
  v9 = v16;
  v10 = WLKSystemLogObject();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_272A0F000, v11, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - setSettings: %@", buf, 0xCu);
    }

    if ([v6 _hasValues])
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __53__WLKPostPlayAutoPlayManager_setSettings_completion___block_invoke;
      v14[3] = &unk_279E5FEC0;
      v15 = v7;
      [(WLKPostPlayAutoPlayManager *)self _performUserSettingsAction:1 settings:v6 dsid:0 isMigration:0 completion:v14];
    }

    else
    {
      v12 = WLKSystemLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272A0F000, v12, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Nothing to update since settings has no values set", buf, 2u);
      }

      if (v7)
      {
        (*(v7 + 2))(v7, v6, 0);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WLKPostPlayAutoPlayManager getStatusForType:withCompletion:];
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0, v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __53__WLKPostPlayAutoPlayManager_setSettings_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchStatusForAllTypesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = WLKSystemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - fetchStatusForAllTypesWithCompletion", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke;
  block[3] = &unk_279E5F908;
  objc_copyWeak(&v10, buf);
  block[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (![WeakRetained isFetchingAllStatusInProgress])
  {
    [WeakRetained setIsFetchingAllStatusInProgress:1];
    objc_initWeak(buf, WeakRetained);
    v5 = [WeakRetained cache];
    v6 = [v5 isWaitingForConnection];

    if (v6)
    {
      v7 = WLKSystemLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Retry sending request for current settings.", v24, 2u);
      }

      if (![WeakRetained _hasPreviousPreferenceAsDisableAutoPlay])
      {
        v13 = [a1[4] cache];
        v14 = [v13 currentSettings];

        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke_2;
        v18[3] = &unk_279E5FEE8;
        objc_copyWeak(&v20, buf);
        v19 = a1[5];
        [WeakRetained _performUserSettingsAction:1 settings:v14 dsid:0 isMigration:0 completion:v18];

        objc_destroyWeak(&v20);
        goto LABEL_21;
      }

      v8 = v21;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke_51;
      v21[3] = &unk_279E5E660;
      objc_copyWeak(&v23, buf);
      v22 = a1[5];
      [WeakRetained _migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion:v21];
      v9 = v22;
    }

    else
    {
      if ([WeakRetained isMigrationInProgress])
      {
        v10 = WLKSystemLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - There is ongoing migration. Skip the GET action", v24, 2u);
        }

        [WeakRetained setIsFetchingAllStatusInProgress:0];
        v11 = a1[5];
        if (v11)
        {
          v11[2]();
        }

        goto LABEL_21;
      }

      v12 = WLKSystemLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_272A0F000, v12, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - _performUserSettingsAction GET", v24, 2u);
      }

      v8 = v15;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke_52;
      v15[3] = &unk_279E5FEE8;
      objc_copyWeak(&v17, buf);
      v16 = a1[5];
      [WeakRetained _performUserSettingsAction:0 settings:0 dsid:0 isMigration:0 completion:v15];
      v9 = v16;
    }

    objc_destroyWeak(v8 + 5);
LABEL_21:
    objc_destroyWeak(buf);
    goto LABEL_22;
  }

  v3 = WLKSystemLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - There is ongoing fetchStatusForAllTypesWithCompletion. Skip this one.", buf, 2u);
  }

  v4 = a1[5];
  if (v4)
  {
    v4[2]();
  }

LABEL_22:
}

void __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke_51(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsFetchingAllStatusInProgress:0];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

void __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsFetchingAllStatusInProgress:0];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

void __67__WLKPostPlayAutoPlayManager_fetchStatusForAllTypesWithCompletion___block_invoke_52(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsFetchingAllStatusInProgress:0];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (void)_migrateOffStatusWithCompletion:(id)a3
{
  v4 = a3;
  v14 = 0;
  v5 = WLKPostPlayAutoPlayCheckHasActiveAccount(&v14);
  v6 = v14;
  v7 = WLKSystemLogObject();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - _migrateOffStatusWithCompletion", buf, 2u);
    }

    v9 = objc_alloc_init(WLKPostPlayAutoPlaySettings);
    v10 = MEMORY[0x277CBEC28];
    [(WLKPostPlayAutoPlaySettings *)v9 setNextEpisodeSettingValue:MEMORY[0x277CBEC28]];
    [(WLKPostPlayAutoPlaySettings *)v9 setRecommendedItemsSettingValue:v10];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__WLKPostPlayAutoPlayManager__migrateOffStatusWithCompletion___block_invoke;
    v11[3] = &unk_279E5FEC0;
    v12 = v4;
    [(WLKPostPlayAutoPlayManager *)self _performUserSettingsAction:1 settings:v9 dsid:0 isMigration:1 completion:v11];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WLKPostPlayAutoPlayManager getStatusForType:withCompletion:];
    }

    if (v4)
    {
      (*(v4 + 2))(v4, v6);
    }
  }
}

uint64_t __62__WLKPostPlayAutoPlayManager__migrateOffStatusWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)_migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion:(id)a3
{
  v4 = a3;
  v5 = WLKSystemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - _migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__WLKPostPlayAutoPlayManager__migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion___block_invoke;
  v8[3] = &unk_279E5E660;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __94__WLKPostPlayAutoPlayManager__migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isMigrationInProgress])
  {
    v3 = WLKSystemLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Migration is in progress, ignoring this call _migrateFromSystemPreferencesStoreOrSettingsStore.", buf, 2u);
    }
  }

  else if ([WeakRetained _hasPreviousPreferenceAsDisableAutoPlay])
  {
    [WeakRetained setIsMigrationInProgress:1];
    objc_initWeak(buf, WeakRetained);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __94__WLKPostPlayAutoPlayManager__migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion___block_invoke_2;
    v5[3] = &unk_279E5FF10;
    objc_copyWeak(&v7, buf);
    v6 = *(a1 + 32);
    [WeakRetained _migrateOffStatusWithCompletion:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
    goto LABEL_9;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }

LABEL_9:
}

void __94__WLKPostPlayAutoPlayManager__migrateFromSystemPreferencesStoreOrSettingsStoreWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!v7)
  {
    v3 = +[WLKSystemPreferencesStore sharedPreferences];
    [v3 removePostPlayAutoPlayNextVideoPreferences];
    v4 = +[WLKSettingsStore sharedSettings];
    [v4 removePostPlayAutoPlayNextVideoPreferences];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsMigrationInProgress:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

- (void)_handleAccountDidChange:(id)a3
{
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Invalidate cache due to _handleAccountDidChange", v5, 2u);
  }

  [(WLKPostPlayAutoPlayCache *)self->_cache invalidate];
  [(WLKPostPlayAutoPlayManager *)self fetchStatusForAllTypesWithCompletion:0];
}

- (void)_networkReachabilityDidChange:(id)a3
{
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - _networkReachabilityDidChange", buf, 2u);
  }

  v5 = +[WLKReachabilityMonitor sharedInstance];
  v6 = [v5 isNetworkReachable];

  if (v6)
  {
    v7 = WLKSystemLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Device is back online.", v8, 2u);
    }

    [(WLKPostPlayAutoPlayManager *)self fetchStatusForAllTypesWithCompletion:0];
  }
}

- (void)_fetchStatusForType:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v15 = 0;
  v7 = WLKPostPlayAutoPlayCheckHasActiveAccount(&v15);
  v8 = v15;
  if (v7)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__WLKPostPlayAutoPlayManager__fetchStatusForType_withCompletion___block_invoke;
    block[3] = &unk_279E5FF60;
    objc_copyWeak(v13, &location);
    v13[1] = a3;
    v12 = v6;
    dispatch_async(queue, block);

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = WLKSystemLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WLKPostPlayAutoPlayManager getStatusForType:withCompletion:];
    }

    if (v6)
    {
      (*(v6 + 2))(v6, 1, v8);
    }
  }
}

void __65__WLKPostPlayAutoPlayManager__fetchStatusForType_withCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isMigrationInProgress])
  {
    v3 = [WeakRetained cache];
    v4 = [v3 currentSettingForType:*(a1 + 48)];

    v5 = WLKSystemLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v15) = v4;
      _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - fetchStatus replied with cached state because there is ongoing migration: %d", buf, 8u);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, v4, 0);
    }
  }

  else
  {
    objc_initWeak(&location, WeakRetained);
    v7 = WLKSystemLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - fetchStatusForType: %@", buf, 0xCu);
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__WLKPostPlayAutoPlayManager__fetchStatusForType_withCompletion___block_invoke_56;
    v10[3] = &unk_279E5FF38;
    objc_copyWeak(v12, &location);
    v12[1] = *(a1 + 48);
    v11 = *(a1 + 32);
    [WeakRetained _performUserSettingsAction:0 settings:0 dsid:0 isMigration:0 completion:v10];

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __65__WLKPostPlayAutoPlayManager__fetchStatusForType_withCompletion___block_invoke_56(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained cache];
  v7 = [v6 currentSettingForType:*(a1 + 48)];

  v8 = WLKSystemLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 localizedDescription];
    v12[0] = 67109378;
    v12[1] = v7;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - fetchStatus replied with fresh state: %d, error: %@", v12, 0x12u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v7, v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __94__WLKPostPlayAutoPlayManager__performUserSettingsAction_settings_dsid_isMigration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v6)
  {
    if ([v6 code] == -1009 && *(a1 + 56) == 1 && *(a1 + 64) == 1)
    {
      v8 = WLKSystemLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - No internet connection. Retry later when device is back online", v21, 2u);
      }

      v9 = [WeakRetained cache];
      [v9 setIsWaitingForConnection:1];
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(a1 + 56);
      if (v11 != 1)
      {
        if (!v11)
        {
          v12 = [WeakRetained cache];
          v13 = [v12 currentSettings];

          (*(*(a1 + 40) + 16))();
        }

        goto LABEL_21;
      }

      v20 = *(a1 + 32);
      v19 = *(v10 + 16);
LABEL_20:
      v19();
    }
  }

  else if (*(a1 + 56) <= 1uLL)
  {
    if (v5 && (*(a1 + 64) & 1) != 0)
    {
      v14 = [v5 postPlayAutoPlaySettings];
      if (!v14)
      {
        __94__WLKPostPlayAutoPlayManager__performUserSettingsAction_settings_dsid_isMigration_completion___block_invoke_cold_1();
      }

      v15 = v14;
      v16 = [WeakRetained cache];
      [v16 updateWithSettings:v15];
    }

    v17 = *(a1 + 40);
    if (v17)
    {
      v18 = *(a1 + 32);
      v19 = *(v17 + 16);
      goto LABEL_20;
    }
  }

LABEL_21:
}

- (void)_performUserSettingsOperation:(id)a3 dsid:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__WLKPostPlayAutoPlayManager__performUserSettingsOperation_dsid_completion___block_invoke;
  v15[3] = &unk_279E5FFD8;
  objc_copyWeak(&v20, &location);
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(queue, v15);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __76__WLKPostPlayAutoPlayManager__performUserSettingsOperation_dsid_completion___block_invoke(uint64_t a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ([*(a1 + 32) action] != 1 || (objc_msgSend(*(a1 + 32), "userSettings"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [*(a1 + 32) userSettings];
    v5 = [v4 postPlayAutoPlaySettings];

    v6 = [*(a1 + 32) action];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (!v8)
    {
      v8 = &unk_288222CB0;
    }

    v9 = v8;
    if (v6 == 1)
    {
      v10 = [WeakRetained ongoingUpdateOperations];
      v11 = [v10 objectForKey:v9];

      if (v11 && ([v11 isCancelled] & 1) == 0)
      {
        v18 = WLKSystemLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&dword_272A0F000, v18, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - There is ongoing operation.", location, 2u);
        }

        v19 = [v11 userSettings];
        v27 = [v19 postPlayAutoPlaySettings];

        LODWORD(v19) = [v27 isEqual:v5];
        v20 = WLKSystemLogObject();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          if (v21)
          {
            LOWORD(location[0]) = 0;
            _os_log_impl(&dword_272A0F000, v20, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - The ongoing operation has the same settings, skipping the latest one.", location, 2u);
          }

          (*(*(a1 + 56) + 16))();
          goto LABEL_12;
        }

        if (v21)
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&dword_272A0F000, v20, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - The ongoing operation has different settings, cancel the ongoing operation.", location, 2u);
        }

        [v11 cancel];
        v22 = [WeakRetained ongoingUpdateOperations];
        [v22 removeObjectForKey:v9];

        v26 = [v5 _newSettingsMergedWithPreviousSettings:v27];
        v23 = WLKSystemLogObject();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v26;
          _os_log_impl(&dword_272A0F000, v23, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - New settings: %@", location, 0xCu);
        }

        v24 = [[WLKUserSettings alloc] initWithPostPlayAutoPlaySettings:v26];
        v25 = -[WLKUserSettingsRequestOperation initWithAction:userSettings:]([WLKUserSettingsRequestOperation alloc], "initWithAction:userSettings:", [*(a1 + 32) action], v24);

        v7 = v25;
      }

      else
      {
      }
    }

    objc_initWeak(location, v7);
    objc_initWeak(&from, WeakRetained);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __76__WLKPostPlayAutoPlayManager__performUserSettingsOperation_dsid_completion___block_invoke_64;
    v28[3] = &unk_279E5FFB0;
    objc_copyWeak(&v31, location);
    v30 = *(a1 + 56);
    objc_copyWeak(&v32, &from);
    v33 = v6 == 1;
    v28[4] = *(a1 + 48);
    v12 = v9;
    v29 = v12;
    [(WLKUserSettingsRequestOperation *)v7 setCompletionBlock:v28];
    if (v6 == 1)
    {
      v13 = [WeakRetained ongoingUpdateOperations];
      [v13 setObject:v7 forKey:v12];
    }

    v14 = [MEMORY[0x277CCABD8] wlkDefaultQueue];
    [v14 addOperation:v7];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
LABEL_12:

    goto LABEL_13;
  }

  v16 = WLKSystemLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_272A0F000, v16, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Post play auto-play (user settings) action will not be executed -- empty userSettings parameter.", location, 2u);
  }

  v17 = *(a1 + 56);
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKPostPlayAutoPlayErrorDomain" code:-1 userInfo:0];
  (*(v17 + 16))(v17, 0, v5);
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
}

void __76__WLKPostPlayAutoPlayManager__performUserSettingsOperation_dsid_completion___block_invoke_64(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained error];
  v4 = WLKSystemLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [v3 localizedDescription];
      *buf = 138412546;
      v18 = v6;
      v19 = 2048;
      v20 = [WeakRetained action];
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Post play auto-play (user settings) action failed -- %@. Request -- %lu", buf, 0x16u);
    }

    v7 = *(a1 + 48);
    v8 = [WeakRetained response];
    (*(v7 + 16))(v7, v8, v3);
  }

  else
  {
    if (v5)
    {
      v9 = [0 localizedDescription];
      *buf = 138412546;
      v18 = v9;
      v19 = 2048;
      v20 = [WeakRetained action];
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Post play auto-play (user settings) action succeeded -- %@. Request -- %lu", buf, 0x16u);
    }

    v10 = *(a1 + 48);
    v8 = [WeakRetained response];
    (*(v10 + 16))(v10, v8, 0);
  }

  v11 = objc_loadWeakRetained((a1 + 64));
  v12 = v11;
  if (*(a1 + 72) == 1)
  {
    v13 = *(*(a1 + 32) + 8);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__WLKPostPlayAutoPlayManager__performUserSettingsOperation_dsid_completion___block_invoke_65;
    v15[3] = &unk_279E5E5F8;
    v15[4] = v11;
    v16 = *(a1 + 40);
    dispatch_async(v13, v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __76__WLKPostPlayAutoPlayManager__performUserSettingsOperation_dsid_completion___block_invoke_65(uint64_t a1)
{
  v2 = [*(a1 + 32) ongoingUpdateOperations];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)getStatusForType:withCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_272A0F000, v0, v1, "WLKPostPlayAutoPlay - User is not signed in, returning early with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end