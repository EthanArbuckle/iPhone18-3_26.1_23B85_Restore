@interface HDSPCloudDefaults
- (HDSPCloudDefaults)initWithEnvironment:(id)a3 configuration:(id)a4;
- (HDSPSyncedUserDefaultsExternalChangeDelegate)delegate;
- (float)hksp_floatForKey:(id)a3;
- (id)_createKVS;
- (id)hksp_dictionaryRepresentationForKeys:(id)a3;
- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4;
- (int64_t)hksp_integerForKey:(id)a3;
- (void)hdsp_forceSynchronizeWithCompletion:(id)a3;
- (void)hdsp_setExternalChangeDelegate:(id)a3;
- (void)hksp_removeObjectsForKeys:(id)a3;
- (void)hksp_saveDictionary:(id)a3;
- (void)hksp_setFloat:(float)a3 forKey:(id)a4;
- (void)hksp_setInteger:(int64_t)a3 forKey:(id)a4;
- (void)hksp_synchronizeKeys:(id)a3;
- (void)keyValueStoreDidChange:(id)a3;
@end

@implementation HDSPCloudDefaults

- (HDSPCloudDefaults)initWithEnvironment:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = HDSPCloudDefaults;
  v9 = [(HDSPCloudDefaults *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_environment, a3);
    objc_storeStrong(&v10->_configuration, a4);
    v11 = [(HDSPCloudDefaults *)v10 _createKVS];
    store = v10->_store;
    v10->_store = v11;

    objc_initWeak(&location, v10);
    v13 = objc_alloc(MEMORY[0x277D623F8]);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __55__HDSPCloudDefaults_initWithEnvironment_configuration___block_invoke;
    v18[3] = &unk_279C7C338;
    objc_copyWeak(&v19, &location);
    v14 = [v13 initWithInterval:v18 updateBlock:0.5];
    accumulator = v10->_accumulator;
    v10->_accumulator = v14;

    v16 = v10;
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __55__HDSPCloudDefaults_initWithEnvironment_configuration___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = [WeakRetained delegate];
  v7 = v6;
  if (v5)
  {
    [v6 syncedUserDefaults:WeakRetained didChangeExternallyForKeys:v8];
  }

  else
  {
    [v6 syncedUserDefaultsDidChangeExternally:WeakRetained];
  }
}

- (id)_createKVS
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAD80]);
  v4 = [(HDSPEnvironment *)self->_environment behavior];
  v5 = [v4 features];
  v6 = [v3 initWithStoreIdentifier:@"com.apple.sleepd" type:{objc_msgSend(v5, "sleepCloudKitManatee")}];

  if (!v6)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v11 = 138543362;
      *&v11[4] = objc_opt_class();
      v10 = *&v11[4];
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to create NSUbiquitousKeyValueStore", v11, 0xCu);
    }
  }

  [v6 synchronize];
  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)keyValueStoreDidChange:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543618;
    v18 = objc_opt_class();
    v19 = 2114;
    v20 = v4;
    v6 = v18;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] keyValueStoreDidChange: %{public}@", &v17, 0x16u);
  }

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA7B0]];
  v9 = [v8 integerValue];

  v10 = [v4 userInfo];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA7B8]];
  v12 = v11;
  v13 = MEMORY[0x277CBEBF8];
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  if ((v9 - 1) >= 3)
  {
    if (!v9)
    {
      [(HKSPAccumulator *)self->_accumulator accumulateValues:v14];
    }
  }

  else
  {
    v15 = [(HDSPCloudDefaults *)self delegate];
    [v15 syncedUserDefaultsDidChangeExternally:self];
  }

  v16 = *MEMORY[0x277D85DE8];
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

  store = self->_store;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HDSPCloudDefaults_hdsp_forceSynchronizeWithCompletion___block_invoke;
  v10[3] = &unk_279C7C878;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [(NSUbiquitousKeyValueStore *)store synchronizeWithCompletionHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __57__HDSPCloudDefaults_hdsp_forceSynchronizeWithCompletion___block_invoke(uint64_t a1, void *a2)
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

  [(HDSPCloudDefaults *)self setDelegate:v4];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_keyValueStoreDidChange_ name:*MEMORY[0x277CCA7C0] object:self->_store];

  v8 = [(HDSPEnvironment *)self->_environment notificationListener];
  [v8 addObserver:self];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 isEqualToString:@"com.apple.kvs.store-did-change.com.apple.sleepd"])
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 138543618;
      *&v11[4] = objc_opt_class();
      *&v11[12] = 2114;
      *&v11[14] = v5;
      v7 = *&v11[4];
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] received %{public}@, synchronizing...", v11, 0x16u);
    }

    [(HDSPCloudDefaults *)self hksp_synchronize];
  }

  v8 = [MEMORY[0x277D2C900] futureWithNoResult];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (float)hksp_floatForKey:(id)a3
{
  v3 = [(NSUbiquitousKeyValueStore *)self->_store objectForKey:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)hksp_setFloat:(float)a3 forKey:(id)a4
{
  store = self->_store;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  *&v8 = a3;
  v9 = [v6 numberWithFloat:v8];
  [(NSUbiquitousKeyValueStore *)store setObject:v9 forKey:v7];
}

- (int64_t)hksp_integerForKey:(id)a3
{
  v3 = [(NSUbiquitousKeyValueStore *)self->_store objectForKey:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (void)hksp_setInteger:(int64_t)a3 forKey:(id)a4
{
  store = self->_store;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [(NSUbiquitousKeyValueStore *)store setObject:v8 forKey:v7];
}

- (id)hksp_dictionaryRepresentationForKeys:(id)a3
{
  v4 = a3;
  v5 = [(HDSPCloudDefaults *)self hksp_dictionaryRepresentation];
  v6 = [v5 hksp_dictionaryByFilteringKeys:v4];

  return v6;
}

- (void)hksp_saveDictionary:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__HDSPCloudDefaults_hksp_saveDictionary___block_invoke;
  v3[3] = &unk_279C7C8A0;
  v3[4] = self;
  [a3 na_each:v3];
}

- (void)hksp_removeObjectsForKeys:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__HDSPCloudDefaults_hksp_removeObjectsForKeys___block_invoke;
  v3[3] = &unk_279C7C8C8;
  v3[4] = self;
  [a3 na_each:v3];
}

- (void)hksp_synchronizeKeys:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v4;
    v6 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_INFO, "[%{public}@] syncing keys: %{public}@", &v8, 0x16u);
  }

  [(HDSPCloudDefaults *)self hksp_synchronize];
  v7 = *MEMORY[0x277D85DE8];
}

- (HDSPSyncedUserDefaultsExternalChangeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end