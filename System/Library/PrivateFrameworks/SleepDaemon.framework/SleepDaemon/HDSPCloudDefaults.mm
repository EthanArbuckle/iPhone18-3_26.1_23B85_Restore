@interface HDSPCloudDefaults
- (HDSPCloudDefaults)initWithEnvironment:(id)environment configuration:(id)configuration;
- (HDSPSyncedUserDefaultsExternalChangeDelegate)delegate;
- (float)hksp_floatForKey:(id)key;
- (id)_createKVS;
- (id)hksp_dictionaryRepresentationForKeys:(id)keys;
- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name;
- (int64_t)hksp_integerForKey:(id)key;
- (void)hdsp_forceSynchronizeWithCompletion:(id)completion;
- (void)hdsp_setExternalChangeDelegate:(id)delegate;
- (void)hksp_removeObjectsForKeys:(id)keys;
- (void)hksp_saveDictionary:(id)dictionary;
- (void)hksp_setFloat:(float)float forKey:(id)key;
- (void)hksp_setInteger:(int64_t)integer forKey:(id)key;
- (void)hksp_synchronizeKeys:(id)keys;
- (void)keyValueStoreDidChange:(id)change;
@end

@implementation HDSPCloudDefaults

- (HDSPCloudDefaults)initWithEnvironment:(id)environment configuration:(id)configuration
{
  environmentCopy = environment;
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = HDSPCloudDefaults;
  v9 = [(HDSPCloudDefaults *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_environment, environment);
    objc_storeStrong(&v10->_configuration, configuration);
    _createKVS = [(HDSPCloudDefaults *)v10 _createKVS];
    store = v10->_store;
    v10->_store = _createKVS;

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
  behavior = [(HDSPEnvironment *)self->_environment behavior];
  features = [behavior features];
  v6 = [v3 initWithStoreIdentifier:@"com.apple.sleepd" type:{objc_msgSend(features, "sleepCloudKitManatee")}];

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

- (void)keyValueStoreDidChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543618;
    v18 = objc_opt_class();
    v19 = 2114;
    v20 = changeCopy;
    v6 = v18;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] keyValueStoreDidChange: %{public}@", &v17, 0x16u);
  }

  userInfo = [changeCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7B0]];
  integerValue = [v8 integerValue];

  userInfo2 = [changeCopy userInfo];
  v11 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA7B8]];
  v12 = v11;
  v13 = MEMORY[0x277CBEBF8];
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  if ((integerValue - 1) >= 3)
  {
    if (!integerValue)
    {
      [(HKSPAccumulator *)self->_accumulator accumulateValues:v14];
    }
  }

  else
  {
    delegate = [(HDSPCloudDefaults *)self delegate];
    [delegate syncedUserDefaultsDidChangeExternally:self];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)hdsp_forceSynchronizeWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
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
  v11 = completionCopy;
  v8 = completionCopy;
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

- (void)hdsp_setExternalChangeDelegate:(id)delegate
{
  v14 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = delegateCopy;
    v6 = v11;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] hdsp_setExternalChangeDelegate %{public}@", &v10, 0x16u);
  }

  [(HDSPCloudDefaults *)self setDelegate:delegateCopy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyValueStoreDidChange_ name:*MEMORY[0x277CCA7C0] object:self->_store];

  notificationListener = [(HDSPEnvironment *)self->_environment notificationListener];
  [notificationListener addObserver:self];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name
{
  v12 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy isEqualToString:@"com.apple.kvs.store-did-change.com.apple.sleepd"])
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 138543618;
      *&v11[4] = objc_opt_class();
      *&v11[12] = 2114;
      *&v11[14] = nameCopy;
      v7 = *&v11[4];
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] received %{public}@, synchronizing...", v11, 0x16u);
    }

    [(HDSPCloudDefaults *)self hksp_synchronize];
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  v9 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

- (float)hksp_floatForKey:(id)key
{
  v3 = [(NSUbiquitousKeyValueStore *)self->_store objectForKey:key];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)hksp_setFloat:(float)float forKey:(id)key
{
  store = self->_store;
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  *&v8 = float;
  v9 = [v6 numberWithFloat:v8];
  [(NSUbiquitousKeyValueStore *)store setObject:v9 forKey:keyCopy];
}

- (int64_t)hksp_integerForKey:(id)key
{
  v3 = [(NSUbiquitousKeyValueStore *)self->_store objectForKey:key];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)hksp_setInteger:(int64_t)integer forKey:(id)key
{
  store = self->_store;
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithInteger:integer];
  [(NSUbiquitousKeyValueStore *)store setObject:v8 forKey:keyCopy];
}

- (id)hksp_dictionaryRepresentationForKeys:(id)keys
{
  keysCopy = keys;
  hksp_dictionaryRepresentation = [(HDSPCloudDefaults *)self hksp_dictionaryRepresentation];
  v6 = [hksp_dictionaryRepresentation hksp_dictionaryByFilteringKeys:keysCopy];

  return v6;
}

- (void)hksp_saveDictionary:(id)dictionary
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__HDSPCloudDefaults_hksp_saveDictionary___block_invoke;
  v3[3] = &unk_279C7C8A0;
  v3[4] = self;
  [dictionary na_each:v3];
}

- (void)hksp_removeObjectsForKeys:(id)keys
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__HDSPCloudDefaults_hksp_removeObjectsForKeys___block_invoke;
  v3[3] = &unk_279C7C8C8;
  v3[4] = self;
  [keys na_each:v3];
}

- (void)hksp_synchronizeKeys:(id)keys
{
  v12 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = keysCopy;
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