@interface HDSPNanoDefaults
- (BOOL)hksp_BOOLForKey:(id)a3;
- (HDSPNanoDefaults)initWithEnvironment:(id)a3 configuration:(id)a4;
- (HDSPSyncedUserDefaultsExternalChangeDelegate)delegate;
- (NPSDomainAccessor)npsDomainAccessor;
- (float)hksp_floatForKey:(id)a3;
- (id)_keysForChangeNotification:(id)a3;
- (id)hksp_dataForKey:(id)a3;
- (id)hksp_dictionaryRepresentation;
- (id)hksp_dictionaryRepresentationForKeys:(id)a3;
- (id)hksp_objectForKey:(id)a3;
- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4;
- (int64_t)hksp_integerForKey:(id)a3;
- (void)_handleActivePairedDeviceDidChange:(id)a3;
- (void)_handleNanoPreferencesSync:(id)a3;
- (void)_registerForNotifications;
- (void)_resetNPSDomainAccessor;
- (void)hdsp_forceSynchronizeWithCompletion:(id)a3;
- (void)hdsp_setExternalChangeDelegate:(id)a3;
- (void)hksp_removeObjectForKey:(id)a3;
- (void)hksp_removeObjectsForKeys:(id)a3;
- (void)hksp_saveDictionary:(id)a3;
- (void)hksp_setFloat:(float)a3 forKey:(id)a4;
- (void)hksp_setInteger:(int64_t)a3 forKey:(id)a4;
- (void)hksp_setObject:(id)a3 forKey:(id)a4;
- (void)hksp_synchronize;
- (void)hksp_synchronizeKeys:(id)a3;
@end

@implementation HDSPNanoDefaults

- (HDSPNanoDefaults)initWithEnvironment:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = HDSPNanoDefaults;
  v8 = [(HDSPNanoDefaults *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, v6);
    objc_storeStrong(&v9->_configuration, a4);
    v10 = objc_alloc_init(MEMORY[0x277D2BA60]);
    npsManager = v9->_npsManager;
    v9->_npsManager = v10;

    v12 = dispatch_queue_create("com.apple.sleep.NPSDomainAccessor.serial", 0);
    npsDomainAccessorQueue = v9->_npsDomainAccessorQueue;
    v9->_npsDomainAccessorQueue = v12;

    objc_initWeak(&location, v9);
    v14 = objc_alloc(MEMORY[0x277D623F8]);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __54__HDSPNanoDefaults_initWithEnvironment_configuration___block_invoke;
    v19[3] = &unk_279C7C338;
    objc_copyWeak(&v20, &location);
    v15 = [v14 initWithInterval:v19 updateBlock:0.5];
    notifyAccumulator = v9->_notifyAccumulator;
    v9->_notifyAccumulator = v15;

    v17 = v9;
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __54__HDSPNanoDefaults_initWithEnvironment_configuration___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v3;
    v6 = v13;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] notifying for external change for keys: %{public}@", &v12, 0x16u);
  }

  v7 = [WeakRetained delegate];
  v8 = objc_opt_respondsToSelector();

  v9 = [WeakRetained delegate];
  v10 = v9;
  if (v8)
  {
    [v9 syncedUserDefaults:WeakRetained didChangeExternallyForKeys:v3];
  }

  else
  {
    [v9 syncedUserDefaultsDidChangeExternally:WeakRetained];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_keysForChangeNotification:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.sleep.sync.SleepScheduleDidChange"])
  {
    configuration = self->_configuration;
LABEL_7:
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(HDSPSyncedDefaultsConfiguration *)configuration keySetForIdentifier:v7];
    v9 = [v8 keysToSync];

    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"com.apple.sleep.sync.SleepSettingsDidChange"])
  {
    configuration = self->_configuration;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"com.apple.sleep.sync.SleepRecordDidChange"])
  {
    configuration = self->_configuration;
    goto LABEL_7;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB98]);
LABEL_8:

  return v9;
}

- (NPSDomainAccessor)npsDomainAccessor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  npsDomainAccessorQueue = self->_npsDomainAccessorQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__HDSPNanoDefaults_npsDomainAccessor__block_invoke;
  v5[3] = &unk_279C7B130;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(npsDomainAccessorQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __37__HDSPNanoDefaults_npsDomainAccessor__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v15 = 138543362;
      v16 = objc_opt_class();
      v5 = v16;
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] initializing NPSDomainAccessor", &v15, 0xCu);
    }

    v6 = objc_alloc(MEMORY[0x277D2BA58]);
    v7 = [v6 initWithDomain:*MEMORY[0x277D62050]];
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = v7;

    v2 = *(*(a1 + 32) + 48);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v15 = 138543362;
      v16 = v13;
      v14 = v13;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] failed to create NPSDomainAccessor", &v15, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resetNPSDomainAccessor
{
  npsDomainAccessorQueue = self->_npsDomainAccessorQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HDSPNanoDefaults__resetNPSDomainAccessor__block_invoke;
  block[3] = &unk_279C7B108;
  block[4] = self;
  dispatch_sync(npsDomainAccessorQueue, block);
}

void __43__HDSPNanoDefaults__resetNPSDomainAccessor__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] re-creating NPSDomainAccessor", &v8, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = 0;

  v7 = *MEMORY[0x277D85DE8];
}

- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (([v5 isEqualToString:@"com.apple.sleep.sync.SleepScheduleDidChange"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"com.apple.sleep.sync.SleepSettingsDidChange") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.sleep.sync.SleepRecordDidChange"))
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 138543618;
      *&v12[4] = objc_opt_class();
      *&v12[12] = 2114;
      *&v12[14] = v5;
      v7 = *&v12[4];
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] received %{public}@", v12, 0x16u);
    }

    v8 = [(HDSPNanoDefaults *)self _keysForChangeNotification:v5];
    [(HDSPNanoDefaults *)self _handleNanoPreferencesSync:v8];
  }

  v9 = [MEMORY[0x277D2C900] futureWithNoResult];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_handleActivePairedDeviceDidChange:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v4;
    v6 = v10;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] _handleActivePairedDeviceDidChange: %{public}@", &v9, 0x16u);
  }

  [(HDSPNanoDefaults *)self _resetNPSDomainAccessor];
  v7 = [(HDSPNanoDefaults *)self delegate];
  [v7 syncedUserDefaultsDidChangeExternally:self];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleNanoPreferencesSync:(id)a3
{
  v4 = a3;
  v5 = [(HDSPNanoDefaults *)self npsDomainAccessor];
  v6 = [v5 synchronize];

  notifyAccumulator = self->_notifyAccumulator;
  v8 = [v4 allObjects];

  [(HKSPAccumulator *)notifyAccumulator accumulateValues:v8];
}

- (void)hdsp_forceSynchronizeWithCompletion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing full sync", buf, 0xCu);
  }

  v7 = [(HDSPNanoDefaults *)self npsDomainAccessor];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HDSPNanoDefaults_hdsp_forceSynchronizeWithCompletion___block_invoke;
  v10[3] = &unk_279C7C878;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [v7 synchronizeWithCompletionHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __56__HDSPNanoDefaults_hdsp_forceSynchronizeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v3;
      v7 = v12;
      _os_log_error_impl(&dword_269B11000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] full sync failed with error: %{public}@", &v11, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138543362;
    v12 = objc_opt_class();
    v7 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] successfully completed full sync", &v11, 0xCu);
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3 == 0, v3, v9);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)hdsp_setExternalChangeDelegate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = v4;
    v6 = v11;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] hdsp_setExternalChangeDelegate %{public}@", &v10, 0x16u);
  }

  [(HDSPNanoDefaults *)self setDelegate:v4];
  [(HDSPNanoDefaults *)self _registerForNotifications];
  v7 = [(HDSPNanoDefaults *)self npsDomainAccessor];
  v8 = [v7 synchronize];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNotifications
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v4 = [WeakRetained notificationListener];
  [v4 addObserver:self];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__handleActivePairedDeviceDidChange_ name:*MEMORY[0x277D2BC48] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel__handleActivePairedDeviceDidChange_ name:*MEMORY[0x277D2BC68] object:0];
}

- (id)hksp_objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(HDSPNanoDefaults *)self npsDomainAccessor];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)hksp_setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDSPNanoDefaults *)self npsDomainAccessor];
  [v8 setObject:v7 forKey:v6];
}

- (void)hksp_removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(HDSPNanoDefaults *)self npsDomainAccessor];
  [v5 removeObjectForKey:v4];
}

- (BOOL)hksp_BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [(HDSPNanoDefaults *)self npsDomainAccessor];
  v6 = [v5 BOOLForKey:v4];

  return v6;
}

- (float)hksp_floatForKey:(id)a3
{
  v4 = a3;
  v5 = [(HDSPNanoDefaults *)self npsDomainAccessor];
  [v5 floatForKey:v4];
  v7 = v6;

  return v7;
}

- (void)hksp_setFloat:(float)a3 forKey:(id)a4
{
  v6 = a4;
  v8 = [(HDSPNanoDefaults *)self npsDomainAccessor];
  *&v7 = a3;
  [v8 setFloat:v6 forKey:v7];
}

- (int64_t)hksp_integerForKey:(id)a3
{
  v4 = a3;
  v5 = [(HDSPNanoDefaults *)self npsDomainAccessor];
  v6 = [v5 integerForKey:v4];

  return v6;
}

- (void)hksp_setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(HDSPNanoDefaults *)self npsDomainAccessor];
  [v7 setInteger:a3 forKey:v6];
}

- (id)hksp_dataForKey:(id)a3
{
  v4 = a3;
  v5 = [(HDSPNanoDefaults *)self npsDomainAccessor];
  v6 = [v5 dataForKey:v4];

  return v6;
}

- (id)hksp_dictionaryRepresentation
{
  v2 = [(HDSPNanoDefaults *)self npsDomainAccessor];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

- (id)hksp_dictionaryRepresentationForKeys:(id)a3
{
  v4 = a3;
  v5 = [(HDSPNanoDefaults *)self hksp_dictionaryRepresentation];
  v6 = [v5 hksp_dictionaryByFilteringKeys:v4];

  return v6;
}

- (void)hksp_saveDictionary:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__HDSPNanoDefaults_hksp_saveDictionary___block_invoke;
  v3[3] = &unk_279C7C8A0;
  v3[4] = self;
  [a3 na_each:v3];
}

- (void)hksp_removeObjectsForKeys:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__HDSPNanoDefaults_hksp_removeObjectsForKeys___block_invoke;
  v3[3] = &unk_279C7C8C8;
  v3[4] = self;
  [a3 na_each:v3];
}

- (void)hksp_synchronize
{
  v3 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration allKeysToSync];
  [(HDSPNanoDefaults *)self hksp_synchronizeKeys:v3];
}

- (void)hksp_synchronizeKeys:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDSPNanoDefaults *)self npsDomainAccessor];
  v6 = [v5 synchronize];

  if (v6)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v23 = 138543618;
      *&v23[4] = objc_opt_class();
      *&v23[12] = 2114;
      *&v23[14] = v6;
      v8 = *&v23[4];
      v9 = "[%{public}@] synchronize failed with error %{public}@";
      v10 = v7;
      v11 = 22;
LABEL_4:
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, v9, v23, v11);
    }
  }

  else
  {
    if (!self->_npsManager)
    {
      v7 = HKSPLogForCategory();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *v23 = 138543362;
      *&v23[4] = objc_opt_class();
      v8 = *&v23[4];
      v9 = "[%{public}@] npsManager is nil when syncing";
      v10 = v7;
      v11 = 12;
      goto LABEL_4;
    }

    v12 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration allPerGizmoKeys];
    v7 = [v4 na_setByRemovingObjectsFromSet:v12];

    v13 = [v7 count];
    v14 = MEMORY[0x277D62050];
    if (v13)
    {
      v15 = HKSPLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v23 = 138543618;
        *&v23[4] = objc_opt_class();
        *&v23[12] = 2114;
        *&v23[14] = v7;
        v16 = *&v23[4];
        _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_INFO, "[%{public}@] syncing keys: %{public}@", v23, 0x16u);
      }

      [(NPSManager *)self->_npsManager synchronizeUserDefaultsDomain:*v14 keys:v7];
    }

    v17 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration allPerGizmoKeys:*v23];
    v18 = [v4 na_setByIntersectingWithSet:v17];

    if ([v18 count])
    {
      v19 = HKSPLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        *v23 = 138543618;
        *&v23[4] = v20;
        *&v23[12] = 2114;
        *&v23[14] = v18;
        v21 = v20;
        _os_log_impl(&dword_269B11000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] syncing per-gizmo keys: %{public}@", v23, 0x16u);
      }

      [(NPSManager *)self->_npsManager synchronizeNanoDomain:*v14 keys:v18];
    }
  }

LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
}

- (HDSPSyncedUserDefaultsExternalChangeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end