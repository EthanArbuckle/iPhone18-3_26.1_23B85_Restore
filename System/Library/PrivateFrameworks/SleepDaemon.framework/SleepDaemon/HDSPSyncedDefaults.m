@interface HDSPSyncedDefaults
- (BOOL)hksp_BOOLForKey:(id)a3;
- (BOOL)syncDisabled;
- (HDSPSyncedDefaults)initWithEnvironment:(id)a3 configuration:(id)a4;
- (HDSPSyncedDefaults)initWithEnvironment:(id)a3 configuration:(id)a4 nanoDefaultsProvider:(id)a5 cloudDefaultsProvider:(id)a6 throttleInterval:(double)a7;
- (HDSPSyncedUserDefaultsExternalChangeDelegate)delegate;
- (float)hksp_floatForKey:(id)a3;
- (id)_cloudDefaultsProvider;
- (id)_defaultsForKey:(id)a3;
- (id)_nanoDefaultsProvider;
- (id)hksp_dataForKey:(id)a3;
- (id)hksp_dictionaryRepresentation;
- (id)hksp_dictionaryRepresentationForKeys:(id)a3;
- (id)hksp_objectForKey:(id)a3;
- (int64_t)hksp_integerForKey:(id)a3;
- (void)_cloudDefaultsDidReceiveExternalChange;
- (void)_cloudDefaultsDidReceiveExternalChangeForKeys:(id)a3;
- (void)_differentialCloudKitSync;
- (void)_differentialCloudKitSyncForKeySet:(id)a3;
- (void)_hksp_synchronizeKeys:(id)a3;
- (void)_initialCloudKitSync;
- (void)_nanoDefaultsDidReceiveExternalChange;
- (void)_nanoDefaultsDidReceiveExternalChangeForKeys:(id)a3;
- (void)_setDefaultForKey:(id)a3 setBlock:(id)a4 syncToCloudKit:(BOOL)a5;
- (void)_syncCloudKitToLocal;
- (void)_syncKeysFromCloudKit:(id)a3;
- (void)_syncKeysToCloudKit:(id)a3;
- (void)_syncLocalToCloudKit;
- (void)_throttled_synchronizeKeys:(id)a3;
- (void)_withLock:(id)a3;
- (void)hdsp_forceSynchronizeWithCompletion:(id)a3;
- (void)hdsp_setExternalChangeDelegate:(id)a3;
- (void)hksp_removeObjectForKey:(id)a3;
- (void)hksp_removeObjectsForKeys:(id)a3 syncToCloudKit:(BOOL)a4;
- (void)hksp_setBool:(BOOL)a3 forKey:(id)a4;
- (void)hksp_setFloat:(float)a3 forKey:(id)a4;
- (void)hksp_setInteger:(int64_t)a3 forKey:(id)a4;
- (void)hksp_setObject:(id)a3 forKey:(id)a4;
- (void)hksp_synchronize;
- (void)resetCloudData;
- (void)saveCloudDataVersion;
- (void)saveDataVersion;
- (void)syncedUserDefaults:(id)a3 didChangeExternallyForKeys:(id)a4;
- (void)syncedUserDefaultsDidChangeExternally:(id)a3;
@end

@implementation HDSPSyncedDefaults

- (id)_nanoDefaultsProvider
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__HDSPSyncedDefaults__nanoDefaultsProvider__block_invoke;
  v4[3] = &unk_279C7C310;
  v4[4] = self;
  v2 = MEMORY[0x26D64B6C0](v4, a2);

  return v2;
}

HDSPNanoDefaults *__43__HDSPSyncedDefaults__nanoDefaultsProvider__block_invoke(uint64_t a1)
{
  v2 = [HDSPNanoDefaults alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = [(HDSPNanoDefaults *)v2 initWithEnvironment:WeakRetained configuration:*(*(a1 + 32) + 16)];

  return v4;
}

- (id)_cloudDefaultsProvider
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__HDSPSyncedDefaults__cloudDefaultsProvider__block_invoke;
  v4[3] = &unk_279C7C310;
  v4[4] = self;
  v2 = MEMORY[0x26D64B6C0](v4, a2);

  return v2;
}

HDSPCloudDefaults *__44__HDSPSyncedDefaults__cloudDefaultsProvider__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained behavior];
  v4 = [v3 features];
  v5 = [v4 sleepCloudKitSync];

  if (v5)
  {
    v6 = [HDSPCloudDefaults alloc];
    v7 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v8 = [(HDSPCloudDefaults *)v6 initWithEnvironment:v7 configuration:*(*(a1 + 32) + 16)];
  }

  else
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v14 = 138543362;
      v15 = objc_opt_class();
      v11 = v15;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] cloud sync is disabled", &v14, 0xCu);
    }

    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HDSPSyncedDefaults)initWithEnvironment:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDSPSyncedDefaults *)self _nanoDefaultsProvider];
  v9 = [(HDSPSyncedDefaults *)self _cloudDefaultsProvider];
  v10 = [(HDSPSyncedDefaults *)self initWithEnvironment:v7 configuration:v6 nanoDefaultsProvider:v8 cloudDefaultsProvider:v9 throttleInterval:0.25];

  return v10;
}

- (HDSPSyncedDefaults)initWithEnvironment:(id)a3 configuration:(id)a4 nanoDefaultsProvider:(id)a5 cloudDefaultsProvider:(id)a6 throttleInterval:(double)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v36.receiver = self;
  v36.super_class = HDSPSyncedDefaults;
  v16 = [(HDSPSyncedDefaults *)&v36 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_environment, v12);
    objc_storeStrong(&v17->_configuration, a4);
    v18 = [v12 userDefaults];
    localDefaults = v17->_localDefaults;
    v17->_localDefaults = v18;

    v20 = v14[2](v14);
    nanoDefaults = v17->_nanoDefaults;
    v17->_nanoDefaults = v20;

    v22 = v15[2](v15);
    cloudDefaults = v17->_cloudDefaults;
    v17->_cloudDefaults = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
    keysNeedingSynchronize = v17->_keysNeedingSynchronize;
    v17->_keysNeedingSynchronize = v24;

    objc_initWeak(&location, v17);
    v26 = objc_alloc(MEMORY[0x277D623F8]);
    v33 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v34, &location);
    v27 = [v12 defaultCallbackScheduler];
    v28 = [v12 mutexGenerator];
    v29 = [v26 initWithInterval:&v33 updateBlock:v27 scheduler:v28 mutexGenerator:a7];
    syncAccumulator = v17->_syncAccumulator;
    v17->_syncAccumulator = v29;

    v17->_lock._os_unfair_lock_opaque = 0;
    v31 = v17;
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v17;
}

void __116__HDSPSyncedDefaults_initWithEnvironment_configuration_nanoDefaultsProvider_cloudDefaultsProvider_throttleInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _throttled_synchronizeKeys:v3];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)syncDisabled
{
  v2 = self;
  v3 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
  v4 = [v3 cloudSyncEnabledKey];
  LOBYTE(v2) = [(HDSPSyncedDefaults *)v2 hksp_BOOLForKey:v4];

  return v2 ^ 1;
}

- (id)hksp_dictionaryRepresentation
{
  v3 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration allKeysToPersist];
  v4 = [(HDSPSyncedDefaults *)self hksp_dictionaryRepresentationForKeys:v3];

  return v4;
}

- (id)hksp_dictionaryRepresentationForKeys:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v45 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration allDefaultValues];
  v41 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration allPerGizmoKeys];
  v42 = v4;
  v6 = [v4 na_setByRemovingObjectsFromSet:v41];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v51 objects:v62 count:16];
  v43 = v6;
  if (v7)
  {
    v8 = v7;
    v9 = *v52;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v51 + 1) + 8 * i);
        v12 = [(HKSPUserDefaults *)self->_localDefaults hksp_objectForKey:v11];
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }

        else
        {
          v13 = [v45 objectForKeyedSubscript:v11];
          if (v13)
          {
            v14 = HKSPLogForCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = objc_opt_class();
              *buf = 138543874;
              v57 = v15;
              v58 = 2114;
              v59 = v13;
              v60 = 2114;
              v61 = v11;
              v16 = v15;
              _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading default value %{public}@ for key: %{public}@", buf, 0x20u);

              v6 = v43;
            }

            [v5 setObject:v13 forKeyedSubscript:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v51 objects:v62 count:16];
    }

    while (v8);
  }

  [v42 na_setByIntersectingWithSet:v41];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v17 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v17)
  {
    v18 = v17;
    v46 = *v48;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v48 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v47 + 1) + 8 * j);
        v21 = HKSPLogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = objc_opt_class();
          *buf = 138543618;
          v57 = v22;
          v58 = 2114;
          v59 = v20;
          v23 = v22;
          _os_log_impl(&dword_269B11000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading value for per-gizmo key: %{public}@", buf, 0x16u);
        }

        v24 = [(HDSPSyncedUserDefaults *)self->_nanoDefaults hksp_objectForKey:v20];
        v25 = HKSPLogForCategory();
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v24)
        {
          if (v26)
          {
            v27 = objc_opt_class();
            *buf = 138543874;
            v57 = v27;
            v58 = 2114;
            v59 = v24;
            v60 = 2114;
            v61 = v20;
            v28 = v27;
            _os_log_impl(&dword_269B11000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading value %{public}@ for per-gizmo key: %{public}@", buf, 0x20u);
          }

          [v5 setObject:v24 forKeyedSubscript:v20];
        }

        else
        {
          if (v26)
          {
            v29 = objc_opt_class();
            *buf = 138543618;
            v57 = v29;
            v58 = 2114;
            v59 = v20;
            v30 = v29;
            _os_log_impl(&dword_269B11000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] found nil value for per-gizmo key: %{public}@", buf, 0x16u);
          }

          v31 = [v45 objectForKeyedSubscript:v20];
          v32 = HKSPLogForCategory();
          v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          if (v31)
          {
            if (v33)
            {
              v34 = objc_opt_class();
              *buf = 138543874;
              v57 = v34;
              v58 = 2114;
              v59 = v31;
              v60 = 2114;
              v61 = v20;
              v35 = v34;
              _os_log_impl(&dword_269B11000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading default value %{public}@ for per-gizmo key: %{public}@", buf, 0x20u);
            }

            [v5 setObject:v31 forKeyedSubscript:v20];
          }

          else
          {
            if (v33)
            {
              v36 = objc_opt_class();
              *buf = 138543618;
              v57 = v36;
              v58 = 2114;
              v59 = v20;
              v37 = v36;
              _os_log_impl(&dword_269B11000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] no default value for per-gizmo key: %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v18);
  }

  v38 = [v5 copy];

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)hksp_removeObjectsForKeys:(id)a3 syncToCloudKit:(BOOL)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [HDSPSyncedDefaults _setDefaultForKey:"_setDefaultForKey:setBlock:syncToCloudKit:" setBlock:? syncToCloudKit:?];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setDefaultForKey:(id)a3 setBlock:(id)a4 syncToCloudKit:(BOOL)a5
{
  v5 = a5;
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([(HDSPSyncedDefaultsConfiguration *)self->_configuration shouldPersistKey:v8])
  {
    v10 = [(HDSPSyncedDefaults *)self _defaultsForKey:v8];
    v9[2](v9, v10);
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    v12 = [WeakRetained behavior];
    v13 = [v12 features];
    v14 = [v13 sleepCloudKitSync];

    if (!v14)
    {
LABEL_11:
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __64__HDSPSyncedDefaults__setDefaultForKey_setBlock_syncToCloudKit___block_invoke;
      v26[3] = &unk_279C7B2D0;
      v26[4] = self;
      v27 = v8;
      [(HDSPSyncedDefaults *)self _withLock:v26];

      goto LABEL_12;
    }

    if ([(HDSPSyncedDefaults *)self syncDisabled])
    {
      v15 = HKSPLogForCategory();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        goto LABEL_11;
      }

      *buf = 138543362;
      v29 = objc_opt_class();
      v16 = v29;
      v17 = "[%{public}@] not syncing to CloudKit because sync disabled";
    }

    else
    {
      if (![(HDSPSyncedDefaults *)self needsInitialSync])
      {
        v19 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
        v20 = [v19 cloudSyncEnabledKey];
        v21 = [v8 isEqualToString:v20];

        if (v21)
        {
          v22 = HKSPLogForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v29 = objc_opt_class();
            v23 = v29;
            _os_log_impl(&dword_269B11000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] sync now enabled, syncing from CloudKit", buf, 0xCu);
          }

          [(HDSPSyncedDefaults *)self setNeedsSyncFromCloud:1];
        }

        else if (v5 && [(HDSPSyncedDefaultsConfiguration *)self->_configuration shouldSyncKey:v8])
        {
          v24 = HKSPLogForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v29 = objc_opt_class();
            v30 = 2112;
            v31 = v8;
            v25 = v29;
            _os_log_impl(&dword_269B11000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] syncing key to CloudKit: %@", buf, 0x16u);
          }

          v9[2](v9, self->_cloudDefaults);
        }

        goto LABEL_11;
      }

      v15 = HKSPLogForCategory();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      *buf = 138543362;
      v29 = objc_opt_class();
      v16 = v29;
      v17 = "[%{public}@] not syncing to CloudKit because initial sync needed";
    }

    _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);

    goto LABEL_10;
  }

LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] doing a full CloudKit sync", buf, 0xCu);
  }

  cloudDefaults = self->_cloudDefaults;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__HDSPSyncedDefaults_hdsp_forceSynchronizeWithCompletion___block_invoke;
  v10[3] = &unk_279C7C3B0;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [(HDSPSyncedUserDefaults *)cloudDefaults hdsp_forceSynchronizeWithCompletion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __58__HDSPSyncedDefaults_hdsp_forceSynchronizeWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setNeedsInitialSync:a2 ^ 1];
  if ((a2 ^ 1))
  {
    v6 = HKSPLogForCategory();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v11 = *(a1 + 32);
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v5;
    v8 = v13;
    _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] full CloudKit sync failed: %{public}@", &v12, 0x16u);
    goto LABEL_4;
  }

  [*(a1 + 32) _initialCloudKitSync];
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v12 = 138543362;
    v13 = objc_opt_class();
    v8 = v13;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] full CloudKit sync completed", &v12, 0xCu);
LABEL_4:
  }

LABEL_6:

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v5, v9);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)hdsp_setExternalChangeDelegate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v4;
    v6 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] hdsp_setExternalChangeDelegate %{public}@", &v8, 0x16u);
  }

  [(HDSPSyncedDefaults *)self setDelegate:v4];
  [(HDSPSyncedUserDefaults *)self->_nanoDefaults hdsp_setExternalChangeDelegate:self];
  [(HDSPSyncedUserDefaults *)self->_cloudDefaults hdsp_setExternalChangeDelegate:self];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_defaultsForKey:(id)a3
{
  configuration = self->_configuration;
  v5 = a3;
  v6 = [(HDSPSyncedDefaultsConfiguration *)configuration allPerGizmoKeys];
  v7 = [v6 containsObject:v5];

  v8 = 24;
  if (v7)
  {
    v8 = 32;
  }

  v9 = *(&self->super.isa + v8);
  v10 = v9;

  return v9;
}

- (id)hksp_objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(HDSPSyncedDefaults *)self _defaultsForKey:v4];
  v6 = [v5 hksp_objectForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration allDefaultValues];
    v8 = [v9 objectForKeyedSubscript:v4];
  }

  return v8;
}

- (void)hksp_setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__HDSPSyncedDefaults_hksp_setObject_forKey___block_invoke;
  v10[3] = &unk_279C7C360;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(HDSPSyncedDefaults *)self _setDefaultForKey:v8 setBlock:v10];
}

- (void)hksp_removeObjectForKey:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__HDSPSyncedDefaults_hksp_removeObjectForKey___block_invoke;
  v6[3] = &unk_279C7C388;
  v7 = v4;
  v5 = v4;
  [(HDSPSyncedDefaults *)self _setDefaultForKey:v5 setBlock:v6];
}

- (BOOL)hksp_BOOLForKey:(id)a3
{
  v3 = [(HDSPSyncedDefaults *)self hksp_objectForKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)hksp_setBool:(BOOL)a3 forKey:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HDSPSyncedDefaults_hksp_setBool_forKey___block_invoke;
  v8[3] = &unk_279C7C3D8;
  v10 = a3;
  v9 = v6;
  v7 = v6;
  [(HDSPSyncedDefaults *)self _setDefaultForKey:v7 setBlock:v8];
}

- (float)hksp_floatForKey:(id)a3
{
  v3 = [(HDSPSyncedDefaults *)self hksp_objectForKey:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)hksp_setFloat:(float)a3 forKey:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HDSPSyncedDefaults_hksp_setFloat_forKey___block_invoke;
  v8[3] = &unk_279C7C400;
  v10 = a3;
  v9 = v6;
  v7 = v6;
  [(HDSPSyncedDefaults *)self _setDefaultForKey:v7 setBlock:v8];
}

- (int64_t)hksp_integerForKey:(id)a3
{
  v3 = [(HDSPSyncedDefaults *)self hksp_objectForKey:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (void)hksp_setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HDSPSyncedDefaults_hksp_setInteger_forKey___block_invoke;
  v8[3] = &unk_279C7C428;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [(HDSPSyncedDefaults *)self _setDefaultForKey:v7 setBlock:v8];
}

- (id)hksp_dataForKey:(id)a3
{
  v4 = a3;
  v5 = [(HDSPSyncedDefaults *)self _defaultsForKey:v4];
  v6 = [v5 hksp_dataForKey:v4];

  return v6;
}

- (void)hksp_synchronize
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__11;
  v8 = __Block_byref_object_dispose__11;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__HDSPSyncedDefaults_hksp_synchronize__block_invoke;
  v3[3] = &unk_279C7B678;
  v3[4] = self;
  v3[5] = &v4;
  [(HDSPSyncedDefaults *)self _withLock:v3];
  [(HDSPSyncedDefaults *)self _hksp_synchronizeKeys:v5[5]];
  _Block_object_dispose(&v4, 8);
}

uint64_t __38__HDSPSyncedDefaults_hksp_synchronize__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_hksp_synchronizeKeys:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HDSPSyncedDefaults *)self saveDataVersion];
  [(HDSPSyncedDefaults *)self saveCloudDataVersion];
  v5 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
  v6 = [v5 dataVersionKey];
  v14[0] = v6;
  v7 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
  v8 = [v7 cloudDataVersionKey];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v10 = [v4 setByAddingObjectsFromArray:v9];

  syncAccumulator = self->_syncAccumulator;
  v12 = [v10 allObjects];
  [(HKSPAccumulator *)syncAccumulator accumulateValues:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_throttled_synchronizeKeys:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = objc_opt_class();
    v21 = 2114;
    v22 = v4;
    v6 = v20;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] synchronizing keys: %{public}@", buf, 0x16u);
  }

  [(HKSPUserDefaults *)self->_localDefaults hksp_synchronizeKeys:v4];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v8 = [WeakRetained behavior];
  v9 = [v8 supportsNanoSync];

  if (v9)
  {
    [(HDSPSyncedUserDefaults *)self->_nanoDefaults hksp_synchronizeKeys:v4];
  }

  v10 = objc_loadWeakRetained(&self->_environment);
  v11 = [v10 behavior];
  v12 = [v11 features];
  if (![v12 sleepCloudKitSync])
  {

    goto LABEL_10;
  }

  v13 = [(HDSPSyncedDefaults *)self syncDisabled];

  if (!v13)
  {
    if ([(HDSPSyncedDefaults *)self needsInitialSync])
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __49__HDSPSyncedDefaults__throttled_synchronizeKeys___block_invoke;
      v18[3] = &unk_279C7C0C8;
      v18[4] = self;
      [(HDSPSyncedDefaults *)self hdsp_forceSynchronizeWithCompletion:v18];
      goto LABEL_11;
    }

    if (![(HDSPSyncedDefaults *)self needsSyncFromCloud])
    {
      [(HDSPSyncedUserDefaults *)self->_cloudDefaults hksp_synchronizeKeys:v4];
      goto LABEL_11;
    }

    [(HDSPSyncedDefaults *)self setNeedsSyncFromCloud:0];
    [(HDSPSyncedDefaults *)self _syncCloudKitToLocal];
    v10 = [(HDSPSyncedDefaults *)self delegate];
    [v10 syncedUserDefaultsDidChangeExternally:self];
LABEL_10:
  }

LABEL_11:
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__HDSPSyncedDefaults__throttled_synchronizeKeys___block_invoke_2;
  v16[3] = &unk_279C7B2D0;
  v16[4] = self;
  v17 = v4;
  v14 = v4;
  [(HDSPSyncedDefaults *)self _withLock:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __49__HDSPSyncedDefaults__throttled_synchronizeKeys___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 syncedUserDefaultsDidChangeExternally:*(a1 + 32)];
}

- (void)saveDataVersion
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
  v4 = [v3 dataVersionKey];
  v5 = [(HDSPSyncedDefaults *)self hksp_integerForKey:v4];

  v6 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
  v7 = [v6 currentDataVersion];

  if (v5 < v7)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 138543874;
      *&v26[4] = objc_opt_class();
      *&v26[12] = 2048;
      *&v26[14] = v5;
      *&v26[22] = 2048;
      v27 = v7;
      v9 = *&v26[4];
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating stored data version from %lu to %lu", v26, 0x20u);
    }

    v10 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
    v11 = [v10 dataVersionKey];
    [(HDSPSyncedDefaults *)self hksp_setInteger:v7 forKey:v11];

LABEL_5:
    goto LABEL_9;
  }

  if (v5 > v7)
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 138543874;
      *&v26[4] = objc_opt_class();
      *&v26[12] = 2048;
      *&v26[14] = v5;
      *&v26[22] = 2048;
      v27 = v7;
      v12 = *&v26[4];
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] not updating newer stored data version from %lu to %lu", v26, 0x20u);
    }

    goto LABEL_5;
  }

LABEL_9:
  v13 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info:*v26];
  v14 = [v13 localDataVersionKey];
  v15 = [(HDSPSyncedDefaults *)self hksp_integerForKey:v14];

  v16 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
  v17 = [v16 currentLocalDataVersion];

  if (v15 >= v17)
  {
    if (v15 <= v17)
    {
      goto LABEL_17;
    }

    v21 = HKSPLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      *v26 = 138543874;
      *&v26[4] = v23;
      *&v26[12] = 2048;
      *&v26[14] = v15;
      *&v26[22] = 2048;
      v27 = v17;
      v24 = v23;
      _os_log_impl(&dword_269B11000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] not updating newer stored local data version from %lu to %lu", v26, 0x20u);
    }
  }

  else
  {
    v18 = HKSPLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      *v26 = 138543874;
      *&v26[4] = v19;
      *&v26[12] = 2048;
      *&v26[14] = v15;
      *&v26[22] = 2048;
      v27 = v17;
      v20 = v19;
      _os_log_impl(&dword_269B11000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating stored local data version from %lu to %lu", v26, 0x20u);
    }

    v21 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
    v22 = [v21 localDataVersionKey];
    [(HDSPSyncedDefaults *)self hksp_setInteger:v17 forKey:v22];
  }

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)saveCloudDataVersion
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v4 = [WeakRetained behavior];
  v5 = [v4 features];
  v6 = [v5 sleepCloudKitSync];

  if (v6 && ![(HDSPSyncedDefaults *)self syncDisabled]&& ![(HDSPSyncedDefaults *)self needsInitialSync])
  {
    v7 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
    v8 = [v7 cloudDataVersionKey];
    v9 = [(HDSPSyncedDefaults *)self hksp_integerForKey:v8];

    v10 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
    v11 = [v10 currentCloudDataVersion];

    if (v9 >= v11)
    {
      if (v9 <= v11)
      {
        goto LABEL_12;
      }

      v14 = HKSPLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543874;
        v19 = objc_opt_class();
        v20 = 2048;
        v21 = v9;
        v22 = 2048;
        v23 = v11;
        v16 = v19;
        _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] not updating newer stored cloud data version from %lu to %lu", &v18, 0x20u);
      }
    }

    else
    {
      v12 = HKSPLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543874;
        v19 = objc_opt_class();
        v20 = 2048;
        v21 = v9;
        v22 = 2048;
        v23 = v11;
        v13 = v19;
        _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating stored cloud data version from %lu to %lu", &v18, 0x20u);
      }

      v14 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
      v15 = [v14 cloudDataVersionKey];
      [(HDSPSyncedDefaults *)self hksp_setInteger:v11 forKey:v15];
    }
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)syncedUserDefaultsDidChangeExternally:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_nanoDefaults == v4)
  {
    [(HDSPSyncedDefaults *)self _nanoDefaultsDidReceiveExternalChange];
  }

  else if (self->_cloudDefaults == v4)
  {
    [(HDSPSyncedDefaults *)self _cloudDefaultsDidReceiveExternalChange];
  }

  v5 = [(HDSPSyncedDefaults *)self delegate];
  [v5 syncedUserDefaultsDidChangeExternally:self];
}

- (void)syncedUserDefaults:(id)a3 didChangeExternallyForKeys:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (self->_nanoDefaults == v11)
  {
    [(HDSPSyncedDefaults *)self _nanoDefaultsDidReceiveExternalChangeForKeys:v6];
  }

  else if (self->_cloudDefaults == v11)
  {
    [(HDSPSyncedDefaults *)self _cloudDefaultsDidReceiveExternalChangeForKeys:v6];
  }

  v7 = [(HDSPSyncedDefaults *)self delegate];
  v8 = objc_opt_respondsToSelector();

  v9 = [(HDSPSyncedDefaults *)self delegate];
  v10 = v9;
  if (v8)
  {
    [v9 syncedUserDefaults:self didChangeExternallyForKeys:v6];
  }

  else
  {
    [v9 syncedUserDefaultsDidChangeExternally:self];
  }
}

- (void)_nanoDefaultsDidReceiveExternalChange
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] _nanoDefaultsDidReceiveExternalChange", &v9, 0xCu);
  }

  [(HKSPUserDefaults *)self->_localDefaults hksp_synchronize];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = [WeakRetained behavior];
  v7 = [v6 isAppleWatch];

  if ((v7 & 1) == 0)
  {
    [(HDSPSyncedDefaults *)self _differentialCloudKitSync];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_nanoDefaultsDidReceiveExternalChangeForKeys:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = v4;
    v6 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] _nanoDefaultsDidReceiveExternalChangeForKeys: %{public}@", &v11, 0x16u);
  }

  [(HKSPUserDefaults *)self->_localDefaults hksp_synchronizeKeys:v4];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v8 = [WeakRetained behavior];
  v9 = [v8 isAppleWatch];

  if ((v9 & 1) == 0)
  {
    [(HDSPSyncedDefaults *)self _syncKeysToCloudKit:v4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_cloudDefaultsDidReceiveExternalChange
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] _cloudDefaultsDidReceiveExternalChange", &v6, 0xCu);
  }

  [(HDSPSyncedDefaults *)self _differentialCloudKitSync];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_cloudDefaultsDidReceiveExternalChangeForKeys:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v4;
    v6 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] _cloudDefaultsDidReceiveExternalChangeForKeys: %{public}@", &v8, 0x16u);
  }

  [(HDSPSyncedDefaults *)self _syncKeysFromCloudKit:v4];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_initialCloudKitSync
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v4 = [WeakRetained behavior];
  v5 = [v4 features];
  v6 = [v5 sleepCloudKitSync];

  if (v6 && ![(HDSPSyncedDefaults *)self syncDisabled])
  {
    [(HDSPSyncedDefaults *)self setNeedsInitialSync:0];
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543362;
      v25 = objc_opt_class();
      v8 = v25;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing initial sync", &v24, 0xCu);
    }

    cloudDefaults = self->_cloudDefaults;
    v10 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
    v11 = [v10 cloudDataVersionKey];
    v12 = [(HDSPSyncedUserDefaults *)cloudDefaults hksp_integerForKey:v11];

    localDefaults = self->_localDefaults;
    v14 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
    v15 = [v14 cloudDataVersionKey];
    v16 = [(HKSPUserDefaults *)localDefaults hksp_integerForKey:v15];

    v17 = HKSPLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v24 = 138543618;
      v25 = v18;
      v26 = 2048;
      v27 = v12;
      v19 = v18;
      _os_log_impl(&dword_269B11000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] serverCloudKitDataVersion %lu", &v24, 0x16u);
    }

    v20 = HKSPLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v24 = 138543618;
      v25 = v21;
      v26 = 2048;
      v27 = v16;
      v22 = v21;
      _os_log_impl(&dword_269B11000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] localCloudKitDataVersion %lu", &v24, 0x16u);
    }

    if (v12 | v16)
    {
      if (v12 && !v16)
      {
        [(HDSPSyncedDefaults *)self _syncCloudKitToLocal];
      }
    }

    else
    {
      [(HDSPSyncedDefaults *)self _syncLocalToCloudKit];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_syncLocalToCloudKit
{
  v3 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration allKeysToSync];
  [(HDSPSyncedDefaults *)self _syncKeysToCloudKit:v3];
}

- (void)_syncKeysToCloudKit:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = [WeakRetained behavior];
  v7 = [v6 features];
  v8 = [v7 sleepCloudKitSync];

  if (v8 && ![(HDSPSyncedDefaults *)self syncDisabled])
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543618;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = v4;
      v10 = v24;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] syncing to CloudKit: %{public}@", &v23, 0x16u);
    }

    v11 = [(HDSPSyncedDefaults *)self hksp_dictionaryRepresentationForKeys:v4];
    v12 = MEMORY[0x277CBEB98];
    v13 = [v11 allKeys];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 na_setByRemovingObjectsFromSet:v14];

    [(HDSPSyncedUserDefaults *)self->_cloudDefaults hksp_saveDictionary:v11];
    [(HDSPSyncedUserDefaults *)self->_cloudDefaults hksp_removeObjectsForKeys:v15];
    [(HDSPSyncedUserDefaults *)self->_cloudDefaults hksp_synchronizeKeys:v4];
    [(HDSPSyncedDefaults *)self saveCloudDataVersion];
    v16 = HKSPLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v23 = 138543618;
      v24 = v17;
      v25 = 2114;
      v26 = v11;
      v18 = v17;
      _os_log_impl(&dword_269B11000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] updates: %{public}@", &v23, 0x16u);
    }

    v19 = HKSPLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v23 = 138543618;
      v24 = v20;
      v25 = 2114;
      v26 = v15;
      v21 = v20;
      _os_log_impl(&dword_269B11000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] removes: %{public}@", &v23, 0x16u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_syncCloudKitToLocal
{
  v3 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration allKeysToSync];
  [(HDSPSyncedDefaults *)self _syncKeysFromCloudKit:v3];
}

- (void)_syncKeysFromCloudKit:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = [WeakRetained behavior];
  v7 = [v6 features];
  v8 = [v7 sleepCloudKitSync];

  if (v8 && ![(HDSPSyncedDefaults *)self syncDisabled])
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543618;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = v4;
      v10 = v24;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] syncing from CloudKit: %{public}@", &v23, 0x16u);
    }

    v11 = [(HDSPSyncedUserDefaults *)self->_cloudDefaults hksp_dictionaryRepresentationForKeys:v4];
    v12 = MEMORY[0x277CBEB98];
    v13 = [v11 allKeys];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 na_setByRemovingObjectsFromSet:v14];

    [(HDSPSyncedDefaults *)self hksp_saveDictionary:v11 syncToCloudKit:0];
    [(HDSPSyncedDefaults *)self hksp_removeObjectsForKeys:v15 syncToCloudKit:0];
    [(HDSPSyncedDefaults *)self hksp_synchronizeKeys:v4];
    v16 = HKSPLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v23 = 138543618;
      v24 = v17;
      v25 = 2114;
      v26 = v11;
      v18 = v17;
      _os_log_impl(&dword_269B11000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] updates: %{public}@", &v23, 0x16u);
    }

    v19 = HKSPLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v23 = 138543618;
      v24 = v20;
      v25 = 2114;
      v26 = v15;
      v21 = v20;
      _os_log_impl(&dword_269B11000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] removes: %{public}@", &v23, 0x16u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_differentialCloudKitSync
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v4 = [WeakRetained behavior];
  v5 = [v4 features];
  v6 = [v5 sleepCloudKitSync];

  if (v6 && ![(HDSPSyncedDefaults *)self syncDisabled])
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = objc_opt_class();
      v8 = v13;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing differential sync", buf, 0xCu);
    }

    v9 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration keySets];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__HDSPSyncedDefaults__differentialCloudKitSync__block_invoke;
    v11[3] = &unk_279C7C450;
    v11[4] = self;
    [v9 na_each:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_differentialCloudKitSyncForKeySet:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 identifier];
    v29 = 138543618;
    v30 = v6;
    v31 = 2114;
    v32 = v8;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] looking at keySet: %{public}@", &v29, 0x16u);
  }

  cloudDefaults = self->_cloudDefaults;
  v10 = [v4 modificationDateKey];
  v11 = [(HDSPSyncedUserDefaults *)cloudDefaults hksp_objectForKey:v10];

  localDefaults = self->_localDefaults;
  v13 = [v4 modificationDateKey];
  v14 = [(HKSPUserDefaults *)localDefaults hksp_objectForKey:v13];

  v15 = HKSPLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v29 = 138543618;
    v30 = v16;
    v31 = 2114;
    v32 = v14;
    v17 = v16;
    _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] local last modified: %{public}@", &v29, 0x16u);
  }

  v18 = HKSPLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v29 = 138543618;
    v30 = v19;
    v31 = 2114;
    v32 = v11;
    v20 = v19;
    _os_log_impl(&dword_269B11000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] server last modified: %{public}@", &v29, 0x16u);
  }

  if ((NAEqualObjects() & 1) == 0)
  {
    if (v11 && ![v14 hksp_isAfterDate:v11])
    {
      v25 = HKSPLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v29 = 138543362;
        v30 = v26;
        v27 = v26;
        _os_log_impl(&dword_269B11000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] server modified later, syncing from CloudKit", &v29, 0xCu);
      }

      v24 = [v4 keysToSync];
      [(HDSPSyncedDefaults *)self _syncKeysFromCloudKit:v24];
    }

    else
    {
      v21 = HKSPLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        v29 = 138543362;
        v30 = v22;
        v23 = v22;
        _os_log_impl(&dword_269B11000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] local modified later, syncing to CloudKit", &v29, 0xCu);
      }

      v24 = [v4 keysToSync];
      [(HDSPSyncedDefaults *)self _syncKeysToCloudKit:v24];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)resetCloudData
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] resetting", &v6, 0xCu);
  }

  [(HDSPSyncedUserDefaults *)self->_cloudDefaults hksp_reset];
  v5 = *MEMORY[0x277D85DE8];
}

- (HDSPSyncedUserDefaultsExternalChangeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end