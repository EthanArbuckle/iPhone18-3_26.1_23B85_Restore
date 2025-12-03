@interface RTAccountManager
+ (BOOL)supportsNotificationName:(id)name;
+ (id)accountStatusToString:(int64_t)string;
+ (id)cloudSyncAuthorizationToString:(int64_t)string;
- (RTAccountManager)initWithAccountStore:(id)store lifecycleManager:(id)manager defaultsManager:(id)defaultsManager;
- (RTAccountManager)initWithLifecycleManager:(id)manager defaultsManager:(id)defaultsManager;
- (id)_primaryiCloudAccount;
- (int64_t)accountStatus;
- (void)_handleSiriCloudSyncPreferenceChangedNotification;
- (void)_lookupAccount:(id)account;
- (void)_onDefaultsUpdate:(id)update;
- (void)_setup;
- (void)_shutdownWithHandler:(id)handler;
- (void)_updateCloudSyncAuthorizationState:(BOOL)state;
- (void)currentAccount:(id)account;
- (void)dealloc;
- (void)fetchCloudSyncAuthorizationState:(id)state;
- (void)handleSiriCloudSyncPreferenceChangedNotification;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)lookupAccount:(id)account;
- (void)onDefaultsUpdate:(id)update;
- (void)updateCloudSyncAuthorizationState:(BOOL)state;
- (void)updateCloudSyncProvisionedForAccount:(BOOL)account handler:(id)handler;
@end

@implementation RTAccountManager

- (RTAccountManager)initWithLifecycleManager:(id)manager defaultsManager:(id)defaultsManager
{
  defaultsManagerCopy = defaultsManager;
  managerCopy = manager;
  v8 = objc_opt_new();
  v9 = [(RTAccountManager *)self initWithAccountStore:v8 lifecycleManager:managerCopy defaultsManager:defaultsManagerCopy];

  return v9;
}

- (RTAccountManager)initWithAccountStore:(id)store lifecycleManager:(id)manager defaultsManager:(id)defaultsManager
{
  v31 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  managerCopy = manager;
  defaultsManagerCopy = defaultsManager;
  if (storeCopy)
  {
    if (managerCopy)
    {
      goto LABEL_3;
    }

LABEL_12:
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[RTAccountManager initWithAccountStore:lifecycleManager:defaultsManager:]";
      v29 = 1024;
      v30 = 101;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: lifecycleManager (in %s:%d)", buf, 0x12u);
    }

    if (defaultsManagerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "[RTAccountManager initWithAccountStore:lifecycleManager:defaultsManager:]";
    v29 = 1024;
    v30 = 100;
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: accountStore (in %s:%d)", buf, 0x12u);
  }

  if (!managerCopy)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (defaultsManagerCopy)
  {
LABEL_4:
    selfCopy = 0;
    if (storeCopy && managerCopy)
    {
      v26.receiver = self;
      v26.super_class = RTAccountManager;
      v13 = [(RTNotifier *)&v26 init];
      if (v13)
      {
        v14 = [RTInvocationDispatcher alloc];
        queue = [(RTNotifier *)v13 queue];
        v16 = [(RTInvocationDispatcher *)v14 initWithQueue:queue];
        dispatcher = v13->_dispatcher;
        v13->_dispatcher = v16;

        objc_storeStrong(&v13->_accountStore, store);
        objc_storeStrong(&v13->_lifecycleManager, manager);
        objc_storeStrong(&v13->_defaultsManager, defaultsManager);
        v13->_cloudSyncAuthorizationState = -1;
        v13->_authorizationChangeExitTimeInterval = 30.0;
        v18 = objc_opt_new();
        notificationHelper = v13->_notificationHelper;
        v13->_notificationHelper = v18;

        mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
        siriPreferences = v13->_siriPreferences;
        v13->_siriPreferences = mEMORY[0x277CEF368];

        v13->_siriCloudSyncEnabled = [(AFPreferences *)v13->_siriPreferences cloudSyncEnabled];
        [(RTAccountManager *)v13 updateCloudSyncAuthorizationState:0];
        [(RTService *)v13 setup];
      }

      self = v13;
      selfCopy = self;
    }

    goto LABEL_18;
  }

LABEL_15:
  v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "[RTAccountManager initWithAccountStore:lifecycleManager:defaultsManager:]";
    v29 = 1024;
    v30 = 102;
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager (in %s:%d)", buf, 0x12u);
  }

  selfCopy = 0;
LABEL_18:

  return selfCopy;
}

- (void)_setup
{
  v3 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsAccountManagerAuthorizationChangeExitTimeInterval"];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
  }

  else
  {
    v5 = 30.0;
  }

  self->_authorizationChangeExitTimeInterval = v5;
  defaultsManager = self->_defaultsManager;
  v7 = +[(RTNotification *)RTDefaultsManagerNotificationDefaultsChanged];
  [(RTNotifier *)defaultsManager addObserver:self selector:sel_onDefaultsUpdate_ name:v7];

  [(RTDarwinNotificationHelper *)self->_notificationHelper addObserver:self center:CFNotificationCenterGetDarwinNotifyCenter() key:*MEMORY[0x277CEF590] callback:onSiriCloudSyncPreferenceChangedNotification info:0 suspensionBehavior:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __26__RTAccountManager__setup__block_invoke;
  v10[3] = &unk_2788C9A58;
  v10[4] = self;
  [(RTAccountManager *)self _lookupAccount:v10];
  mEMORY[0x277CB8FC0] = [MEMORY[0x277CB8FC0] sharedSubscriber];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __26__RTAccountManager__setup__block_invoke_57;
  v9[3] = &unk_2788C9AA8;
  v9[4] = self;
  [mEMORY[0x277CB8FC0] registerAccountChangeEventHandler:v9];
}

void __26__RTAccountManager__setup__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityAccount);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "Finished looking up account, %@", &v5, 0xCu);
    }
  }

  *(*(a1 + 32) + 32) = 1;
  if ([*(*(a1 + 32) + 56) invocationsPending])
  {
    [*(*(a1 + 32) + 56) dispatchPendingInvocations];
  }
}

void __26__RTAccountManager__setup__block_invoke_57(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__RTAccountManager__setup__block_invoke_2;
  block[3] = &unk_2788C9A80;
  v12 = a3;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __26__RTAccountManager__setup__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if ((v2 - 4) < 2 || v2 == 2)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityAccount);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 48);
      v10 = 67109120;
      v11 = v9;
      _os_log_fault_impl(&dword_2304B3000, v4, OS_LOG_TYPE_FAULT, "unexected AccountChangeType, %d", &v10, 8u);
    }
  }

  else
  {
    v5 = v2 == 1;
    v6 = [*(a1 + 32) coreRoutineDataclassEnabled];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityAccount);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 48);
        v10 = 67109376;
        v11 = v8;
        v12 = 1024;
        v13 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "received account change event, changeType, %d, routineDataclassEnabled, %d", &v10, 0xEu);
      }
    }

    [*(a1 + 40) updateCloudSyncProvisionedForAccount:v5 & v6 handler:&__block_literal_global_44];
  }
}

void __26__RTAccountManager__setup__block_invoke_58(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _rt_log_facility_get_os_log(RTLogFacilityAccount);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Error setting the routine cloud sync provisioning state, %@", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "successfully updated routine cloud sync provisioning state", &v5, 2u);
  }
}

- (void)dealloc
{
  [(RTDarwinNotificationHelper *)self->_notificationHelper removeObserver:self center:CFNotificationCenterGetDarwinNotifyCenter() key:*MEMORY[0x277CEF590] info:0];
  v3.receiver = self;
  v3.super_class = RTAccountManager;
  [(RTAccountManager *)&v3 dealloc];
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  dispatcher = [(RTAccountManager *)self dispatcher];
  [dispatcher shutdown];

  [(RTDarwinNotificationHelper *)self->_notificationHelper removeObserver:self center:CFNotificationCenterGetDarwinNotifyCenter() key:*MEMORY[0x277CEF590] info:0];
  v5 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v5 = handlerCopy;
  }
}

- (id)_primaryiCloudAccount
{
  accountStore = [(RTAccountManager *)self accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

- (void)lookupAccount:(id)account
{
  accountCopy = account;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__RTAccountManager_lookupAccount___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = accountCopy;
  v6 = accountCopy;
  dispatch_async(queue, v7);
}

- (void)_lookupAccount:(id)account
{
  v30 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (accountCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityAccount);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "starting lookup for icloud account", buf, 2u);
      }
    }

    _primaryiCloudAccount = [(RTAccountManager *)self _primaryiCloudAccount];
    v7 = _primaryiCloudAccount;
    if (_primaryiCloudAccount)
    {
      self->_cloudSyncProvisionedForAccount = [_primaryiCloudAccount coreRoutineDataclassEnabled];
      [(RTAccountManager *)self _updateCloudSyncAuthorizationState:0];
      mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
      aa_altDSID = [v7 aa_altDSID];
      v23 = 0;
      v10 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:aa_altDSID error:&v23];
      v11 = v23;

      v12 = 0;
      if (!v11)
      {
        mEMORY[0x277CF0130]2 = [MEMORY[0x277CF0130] sharedInstance];
        v12 = [mEMORY[0x277CF0130]2 userUnderAgeForAccount:v10];
      }

      v14 = [[RTAccount alloc] initWithACAccount:v7 underageAccount:v12];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityAccount);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v25 = v14;
          v26 = 1024;
          v27 = v12;
          v28 = 2112;
          v29 = v11;
          _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "finished lookup for primary icloud account %@, underage, %d, error, %@", buf, 0x1Cu);
        }
      }

      account = self->_account;
      v17 = v14;
      v18 = self->_account;
      self->_account = v17;
      accountCopy2 = account;

      accountCopy[2](accountCopy, v17);
      v20 = [[RTAccountManagerNotificationAccountChanged alloc] initWithLatestAccount:self->_account oldAccount:accountCopy2];

      if (v20)
      {
        [(RTNotifier *)self postNotification:v20];
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v21 = _rt_log_facility_get_os_log(RTLogFacilityAccount);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "primary icloud account is nil because there isn't one logged in, returning", buf, 2u);
        }
      }

      v11 = [[RTAccountManagerNotificationAccountChanged alloc] initWithLatestAccount:0 oldAccount:self->_account];
      if (v11)
      {
        [(RTNotifier *)self postNotification:v11];
      }

      v22 = self->_account;
      self->_account = 0;

      accountCopy[2](accountCopy, 0);
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTAccountManager _lookupAccount:]";
      v26 = 1024;
      v27 = 229;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)currentAccount:(id)account
{
  v15 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (accountCopy)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__RTAccountManager_currentAccount___block_invoke;
    block[3] = &unk_2788C6300;
    block[4] = self;
    v9 = accountCopy;
    v10 = a2;
    dispatch_async(queue, block);
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[RTAccountManager currentAccount:]";
      v13 = 1024;
      v14 = 278;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __35__RTAccountManager_currentAccount___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityAccount);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(*(a1 + 32) + 48);
        *buf = 138412290;
        v10 = v4;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "returning current account, %@", buf, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(v2 + 56);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__RTAccountManager_currentAccount___block_invoke_2;
    v7[3] = &unk_2788C4938;
    v7[4] = v2;
    v8 = *(a1 + 40);
    v6 = NSStringFromSelector(*(a1 + 48));
    [v5 enqueueBlock:v7 description:{@"%@", v6}];
  }
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  nameCopy = name;
  if (([objc_opt_class() supportsNotificationName:nameCopy] & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityAccount);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v17, 0xCu);
    }
  }

  v9 = +[(RTNotification *)RTAccountManagerNotificationCloudSyncAuthorizationStateChanged];
  v10 = [nameCopy isEqualToString:v9];

  if (v10)
  {
    v11 = [[RTAccountManagerNotificationCloudSyncAuthorizationStateChanged alloc] initWithCloudSyncAuthorizationState:self->_cloudSyncAuthorizationState];
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v12 = +[(RTNotification *)RTAccountManagerNotificationAccountChanged];
  v13 = [nameCopy isEqualToString:v12];

  if (v13)
  {
    v14 = [RTAccountManagerNotificationAccountChanged alloc];
    account = [(RTAccountManager *)self account];
    account2 = [(RTAccountManager *)self account];
    v11 = [(RTAccountManagerNotificationAccountChanged *)v14 initWithLatestAccount:account oldAccount:account2];

    if (v11)
    {
LABEL_10:
      [(RTNotifier *)self postNotification:v11 toObserver:observerCopy];
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v11->super.super, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412802;
      v18 = nameCopy;
      v19 = 2080;
      v20 = "[RTAccountManager internalAddObserver:name:]";
      v21 = 1024;
      v22 = 322;
      _os_log_error_impl(&dword_2304B3000, &v11->super.super, OS_LOG_TYPE_ERROR, "unhandled notification name, %@ (in %s:%d)", &v17, 0x1Cu);
    }
  }

LABEL_13:
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v8 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (([objc_opt_class() supportsNotificationName:nameCopy] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAccount);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v6, 0xCu);
    }
  }
}

+ (BOOL)supportsNotificationName:(id)name
{
  nameCopy = name;
  v4 = +[(RTNotification *)RTAccountManagerNotificationAccountChanged];
  if ([nameCopy isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[(RTNotification *)RTAccountManagerNotificationCloudSyncAuthorizationStateChanged];
    v5 = [nameCopy isEqualToString:v6];
  }

  return v5;
}

- (void)fetchCloudSyncAuthorizationState:(id)state
{
  v15 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (stateCopy)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__RTAccountManager_fetchCloudSyncAuthorizationState___block_invoke;
    block[3] = &unk_2788C6300;
    block[4] = self;
    v9 = stateCopy;
    v10 = a2;
    dispatch_async(queue, block);
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[RTAccountManager fetchCloudSyncAuthorizationState:]";
      v13 = 1024;
      v14 = 351;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __53__RTAccountManager_fetchCloudSyncAuthorizationState___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityAccount);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 80);
      v6 = *(v4 + 33);
      v7 = *(v4 + 34);
      *buf = 134218496;
      v13 = v5;
      v14 = 2048;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEFAULT, "returning cloud sync auth state, %ld, based on, siriCloudSyncEnabled, %ld, cloudSyncProvisioned, %ld", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = *(v2 + 56);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__RTAccountManager_fetchCloudSyncAuthorizationState___block_invoke_2;
    v10[3] = &unk_2788C4938;
    v10[4] = v2;
    v11 = *(a1 + 40);
    v9 = NSStringFromSelector(*(a1 + 48));
    [v8 enqueueBlock:v10 description:{@"%@", v9}];
  }
}

- (void)updateCloudSyncProvisionedForAccount:(BOOL)account handler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__RTAccountManager_updateCloudSyncProvisionedForAccount_handler___block_invoke;
  v10[3] = &unk_2788C9AD0;
  accountCopy = account;
  v10[4] = self;
  v11 = handlerCopy;
  v12 = a2;
  v9 = handlerCopy;
  dispatch_async(queue, v10);
}

void __65__RTAccountManager_updateCloudSyncProvisionedForAccount_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    v3 = *(a1 + 56);
    if (*(v2 + 34) != v3)
    {
      *(v2 + 34) = v3;
      [*(a1 + 32) _updateCloudSyncAuthorizationState:1];
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }

  else
  {
    v6 = *(v2 + 56);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__RTAccountManager_updateCloudSyncProvisionedForAccount_handler___block_invoke_2;
    v8[3] = &unk_2788C5048;
    v8[4] = v2;
    v10 = *(a1 + 56);
    v9 = *(a1 + 40);
    v7 = NSStringFromSelector(*(a1 + 48));
    [v6 enqueueBlock:v8 description:{@"%@", v7}];
  }
}

+ (id)cloudSyncAuthorizationToString:(int64_t)string
{
  if (string > 2)
  {
    return @"<Invalid>";
  }

  else
  {
    return off_2788C9AF0[string];
  }
}

- (void)updateCloudSyncAuthorizationState:(BOOL)state
{
  queue = [(RTNotifier *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__RTAccountManager_updateCloudSyncAuthorizationState___block_invoke;
  v6[3] = &unk_2788C5070;
  v6[4] = self;
  stateCopy = state;
  dispatch_async(queue, v6);
}

- (void)_updateCloudSyncAuthorizationState:(BOOL)state
{
  stateCopy = state;
  v15 = *MEMORY[0x277D85DE8];
  if (self->_ready)
  {
    if (self->_siriCloudSyncEnabled)
    {
      if (self->_cloudSyncProvisionedForAccount)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 1;
    }

    if (self->_cloudSyncAuthorizationState != v5)
    {
      self->_cloudSyncAuthorizationState = v5;
      v8 = [[RTAccountManagerNotificationCloudSyncAuthorizationStateChanged alloc] initWithCloudSyncAuthorizationState:self->_cloudSyncAuthorizationState];
      if (v8)
      {
        [(RTNotifier *)self postNotification:v8];
      }

      if (stateCopy)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v9 = _rt_log_facility_get_os_log(RTLogFacilityAccount);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "exiting due to cloud auth sync state change", buf, 2u);
          }
        }

        [(RTLifeCycleManager *)self->_lifecycleManager exitWithDelay:30.0];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityAccount);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v14 = v5;
          _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "update cloud sync auth state to %lu", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    dispatcher = self->_dispatcher;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__RTAccountManager__updateCloudSyncAuthorizationState___block_invoke;
    v11[3] = &unk_2788C5070;
    v11[4] = self;
    stateCopy2 = state;
    v7 = NSStringFromSelector(a2);
    [(RTInvocationDispatcher *)dispatcher enqueueBlock:v11 description:@"%@", v7];
  }
}

- (int64_t)accountStatus
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  queue = [(RTNotifier *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__RTAccountManager_accountStatus__block_invoke;
  v8[3] = &unk_2788C4FD8;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(queue, v8);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityAccount);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = v10[3];
      *buf = 134217984;
      v14 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "returning account status, %ld", buf, 0xCu);
    }
  }

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __33__RTAccountManager_accountStatus__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[32])
  {
    v3 = [v2 _primaryiCloudAccount];
    v4 = 1;
    if (v3)
    {
      v4 = 2;
    }

    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

+ (id)accountStatusToString:(int64_t)string
{
  if (string > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_2788C9B08[string];
  }
}

- (void)handleSiriCloudSyncPreferenceChangedNotification
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTAccountManager_handleSiriCloudSyncPreferenceChangedNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleSiriCloudSyncPreferenceChangedNotification
{
  if (self->_ready)
  {
    self->_siriCloudSyncEnabled = [(AFPreferences *)self->_siriPreferences cloudSyncEnabled];

    [(RTAccountManager *)self _updateCloudSyncAuthorizationState:1];
  }

  else
  {
    dispatcher = self->_dispatcher;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __69__RTAccountManager__handleSiriCloudSyncPreferenceChangedNotification__block_invoke;
    v5[3] = &unk_2788C4EA0;
    v5[4] = self;
    v4 = NSStringFromSelector(a2);
    [(RTInvocationDispatcher *)dispatcher enqueueBlock:v5 description:@"%@", v4];
  }
}

- (void)onDefaultsUpdate:(id)update
{
  v19 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  name = [updateCopy name];
  v6 = +[(RTNotification *)RTDefaultsManagerNotificationDefaultsChanged];
  v7 = [name isEqualToString:v6];

  if (v7)
  {
    queue = [(RTNotifier *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__RTAccountManager_onDefaultsUpdate___block_invoke;
    v11[3] = &unk_2788C4A70;
    v11[4] = self;
    v12 = updateCopy;
    dispatch_async(queue, v11);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      name2 = [updateCopy name];
      *buf = 138412802;
      v14 = name2;
      v15 = 2080;
      v16 = "[RTAccountManager onDefaultsUpdate:]";
      v17 = 1024;
      v18 = 511;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unknown notification name %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)_onDefaultsUpdate:(id)update
{
  v15 = *MEMORY[0x277D85DE8];
  name = [update name];
  v5 = +[(RTNotification *)RTDefaultsManagerNotificationDefaultsChanged];
  v6 = [name isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[RTAccountManager _onDefaultsUpdate:]";
      v13 = 1024;
      v14 = 518;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "notification name is not RTDefaultsManagerNotificationDefaultsChanged (in %s:%d)", &v11, 0x12u);
    }
  }

  v8 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsAccountManagerAuthorizationChangeExitTimeInterval"];
  v9 = v8;
  if (v8)
  {
    [v8 doubleValue];
  }

  else
  {
    v10 = 30.0;
  }

  self->_authorizationChangeExitTimeInterval = v10;
}

@end