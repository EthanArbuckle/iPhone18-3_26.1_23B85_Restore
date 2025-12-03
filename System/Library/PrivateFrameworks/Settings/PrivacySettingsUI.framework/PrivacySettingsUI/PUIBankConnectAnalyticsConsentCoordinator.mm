@interface PUIBankConnectAnalyticsConsentCoordinator
- (PUIBankConnectAnalyticsConsentCoordinator)init;
- (void)dealloc;
- (void)fetchStateWithCompletion:(id)completion;
- (void)registerForUpdatesWithHandler:(id)handler;
@end

@implementation PUIBankConnectAnalyticsConsentCoordinator

- (PUIBankConnectAnalyticsConsentCoordinator)init
{
  v10.receiver = self;
  v10.super_class = PUIBankConnectAnalyticsConsentCoordinator;
  v2 = [(PUIBankConnectAnalyticsConsentCoordinator *)&v10 init];
  if (v2)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v3 = getFKBankConnectOfflineLabConsentCoordinatorClass_softClass;
    v15 = getFKBankConnectOfflineLabConsentCoordinatorClass_softClass;
    if (!getFKBankConnectOfflineLabConsentCoordinatorClass_softClass)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __getFKBankConnectOfflineLabConsentCoordinatorClass_block_invoke;
      v11[3] = &unk_279BA0D08;
      v11[4] = &v12;
      __getFKBankConnectOfflineLabConsentCoordinatorClass_block_invoke(v11);
      v3 = v13[3];
    }

    v4 = v3;
    _Block_object_dispose(&v12, 8);
    v5 = objc_alloc_init(v3);
    offlineLabConsentCoordinator = v2->_offlineLabConsentCoordinator;
    v2->_offlineLabConsentCoordinator = v5;

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_shouldShare = [standardUserDefaults BOOLForKey:@"shouldShareBankConnectData"];

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_showPreference = [standardUserDefaults2 BOOLForKey:@"showBankConnectPreference"];
  }

  return v2;
}

- (void)fetchStateWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  offlineLabConsentCoordinator = self->_offlineLabConsentCoordinator;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__PUIBankConnectAnalyticsConsentCoordinator_fetchStateWithCompletion___block_invoke;
  v7[3] = &unk_279BA0E78;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [offlineLabConsentCoordinator loadOfflineLabSharingPreferenceWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __70__PUIBankConnectAnalyticsConsentCoordinator_fetchStateWithCompletion___block_invoke(uint64_t a1, char a2, char a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__PUIBankConnectAnalyticsConsentCoordinator_fetchStateWithCompletion___block_invoke_2;
  block[3] = &unk_279BA0E50;
  objc_copyWeak(&v8, (a1 + 40));
  v9 = a2;
  v10 = a3;
  v7 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

uint64_t __70__PUIBankConnectAnalyticsConsentCoordinator_fetchStateWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateCachedPermission:*(a1 + 48)];

  v3 = objc_loadWeakRetained((a1 + 40));
  if (([v3 showPreference] & 1) == 0)
  {
    v4 = *(a1 + 49);

    if (v4 != 1)
    {
      goto LABEL_5;
    }

    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 updateCachedVisibility:*(a1 + 49)];
  }

LABEL_5:
  v5 = *(*(a1 + 32) + 16);

  return v5();
}

- (void)registerForUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  [(PUIBankConnectAnalyticsConsentCoordinator *)self setUpdateHandler:handlerCopy];
  objc_initWeak(&location, self);
  offlineLabConsentCoordinator = self->_offlineLabConsentCoordinator;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__PUIBankConnectAnalyticsConsentCoordinator_registerForUpdatesWithHandler___block_invoke;
  v12[3] = &unk_279BA0EC8;
  objc_copyWeak(&v13, &location);
  [offlineLabConsentCoordinator loadOfflineLabSharingPreferenceWithCompletion:v12];
  syncedKeychainNotifyToken = self->_syncedKeychainNotifyToken;
  p_syncedKeychainNotifyToken = &self->_syncedKeychainNotifyToken;
  if (!syncedKeychainNotifyToken)
  {
    v8 = MEMORY[0x277D85CD0];
    v9 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __75__PUIBankConnectAnalyticsConsentCoordinator_registerForUpdatesWithHandler___block_invoke_3;
    handler[3] = &unk_279BA0EF0;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch("com.apple.security.keychainchanged", p_syncedKeychainNotifyToken, v8, handler);

    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __75__PUIBankConnectAnalyticsConsentCoordinator_registerForUpdatesWithHandler___block_invoke(uint64_t a1, char a2, char a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__PUIBankConnectAnalyticsConsentCoordinator_registerForUpdatesWithHandler___block_invoke_2;
  v5[3] = &unk_279BA0EA0;
  objc_copyWeak(&v6, (a1 + 32));
  v7 = a2;
  v8 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v6);
}

void __75__PUIBankConnectAnalyticsConsentCoordinator_registerForUpdatesWithHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained updateHandler];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 shouldShare];
    v6 = *(a1 + 40);

    if (v6 != v5)
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      [v7 updateCachedPermission:*(a1 + 40)];
    }

    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 showPreference];
    v10 = *(a1 + 41);

    if (v10 == v9)
    {
      if (v6 == v5)
      {
        return;
      }

      v12 = 0;
    }

    else
    {
      v11 = objc_loadWeakRetained((a1 + 32));
      [v11 updateCachedVisibility:*(a1 + 41)];

      v12 = 1;
    }

    v14 = objc_loadWeakRetained((a1 + 32));
    v13 = [v14 updateHandler];
    v13[2](v13, v12);
  }
}

void __75__PUIBankConnectAnalyticsConsentCoordinator_registerForUpdatesWithHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained shouldShare];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 showPreference];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__PUIBankConnectAnalyticsConsentCoordinator_registerForUpdatesWithHandler___block_invoke_4;
  v7[3] = &unk_279BA0EA0;
  objc_copyWeak(&v8, (a1 + 32));
  v9 = v5;
  v10 = v3;
  [v6 fetchStateWithCompletion:v7];

  objc_destroyWeak(&v8);
}

void __75__PUIBankConnectAnalyticsConsentCoordinator_registerForUpdatesWithHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained updateHandler];

  if (!v3)
  {
    return;
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  if (![v4 showPreference])
  {

    goto LABEL_6;
  }

  v5 = *(a1 + 40);

  if (v5)
  {
LABEL_6:
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 shouldShare];
    v9 = *(a1 + 41);

    if (v9 == v8)
    {
      return;
    }

    v6 = 0;
    goto LABEL_9;
  }

  v6 = 1;
LABEL_9:
  v11 = objc_loadWeakRetained((a1 + 32));
  v10 = [v11 updateHandler];
  v10[2](v10, v6);
}

void __76__PUIBankConnectAnalyticsConsentCoordinator_setAnalyticsConsent_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _PUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __76__PUIBankConnectAnalyticsConsentCoordinator_setAnalyticsConsent_completion___block_invoke_cold_1(v3, v4);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained updateCachedPermission:*(a1 + 48)];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)dealloc
{
  notify_cancel(self->_syncedKeychainNotifyToken);
  v3.receiver = self;
  v3.super_class = PUIBankConnectAnalyticsConsentCoordinator;
  [(PUIBankConnectAnalyticsConsentCoordinator *)&v3 dealloc];
}

void __76__PUIBankConnectAnalyticsConsentCoordinator_setAnalyticsConsent_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[PUIBankConnectAnalyticsConsentCoordinator setAnalyticsConsent:completion:]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "%s, Error when saving OfflineLab analytics consent, error: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end