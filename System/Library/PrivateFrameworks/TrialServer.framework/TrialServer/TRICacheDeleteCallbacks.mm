@interface TRICacheDeleteCallbacks
+ (id)_assetPurger:(id)purger experimentDatabase:(id)database rolloutDatabase:(id)rolloutDatabase taskQueue:(id)queue loggingClient:(id)client;
+ (void)registerCallbacksWithPaths:(id)paths experimentDatabase:(id)database rolloutDatabase:(id)rolloutDatabase taskQueue:(id)queue loggingClient:(id)client;
- (BOOL)_trialVolumeIsEqualToVolume:(id)volume;
- (TRICacheDeleteCallbacks)initWithPaths:(id)paths assetPurger:(id)purger loggingClient:(id)client;
- (void)cancel:(id)cancel;
@end

@implementation TRICacheDeleteCallbacks

- (TRICacheDeleteCallbacks)initWithPaths:(id)paths assetPurger:(id)purger loggingClient:(id)client
{
  pathsCopy = paths;
  purgerCopy = purger;
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = TRICacheDeleteCallbacks;
  v12 = [(TRICacheDeleteCallbacks *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_paths, paths);
    objc_storeStrong(&v13->_assetPurger, purger);
    objc_storeStrong(&v13->_loggingClient, client);
  }

  return v13;
}

- (void)cancel:(id)cancel
{
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEBUG, "Cancel CacheDelete callback invoked", v4, 2u);
  }
}

- (BOOL)_trialVolumeIsEqualToVolume:(id)volume
{
  v20 = *MEMORY[0x277D85DE8];
  paths = self->_paths;
  volumeCopy = volume;
  trialVolume = [(TRIPaths *)paths trialVolume];
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (trialVolume)
    {
      v8 = trialVolume;
    }

    else
    {
      v8 = @"nil";
    }

    v16 = 138412290;
    v17 = v8;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_INFO, "Found the following trial directory volume: %@", &v16, 0xCu);
  }

  v9 = [(TRIPaths *)self->_paths volumeForDirectory:volumeCopy];

  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"nil";
    }

    v16 = 138412290;
    v17 = v11;
    _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_INFO, "Found the following cache delete requested volume: %@", &v16, 0xCu);
  }

  if (!trialVolume || !v9)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Invalid trial or cache delete requested volume", &v16, 2u);
    }

    goto LABEL_19;
  }

  if (([(__CFString *)v9 isEqualToString:trialVolume]& 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = trialVolume;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Cache delete request for %@ does not match expected volume %@", &v16, 0x16u);
    }

LABEL_19:

    v12 = 0;
    goto LABEL_20;
  }

  v12 = 1;
LABEL_20:

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (void)registerCallbacksWithPaths:(id)paths experimentDatabase:(id)database rolloutDatabase:(id)rolloutDatabase taskQueue:(id)queue loggingClient:(id)client
{
  pathsCopy = paths;
  databaseCopy = database;
  rolloutDatabaseCopy = rolloutDatabase;
  queueCopy = queue;
  clientCopy = client;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __113__TRICacheDeleteCallbacks_registerCallbacksWithPaths_experimentDatabase_rolloutDatabase_taskQueue_loggingClient___block_invoke;
  v31[3] = &unk_279DDFE28;
  v32 = pathsCopy;
  v33 = databaseCopy;
  v34 = rolloutDatabaseCopy;
  v35 = queueCopy;
  v36 = clientCopy;
  selfCopy = self;
  v17 = clientCopy;
  v18 = queueCopy;
  v19 = rolloutDatabaseCopy;
  v20 = databaseCopy;
  v21 = pathsCopy;
  v22 = MEMORY[0x2743948D0](v31);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __113__TRICacheDeleteCallbacks_registerCallbacksWithPaths_experimentDatabase_rolloutDatabase_taskQueue_loggingClient___block_invoke_2;
  v29[3] = &unk_279DDFE50;
  v23 = v22;
  v30 = v23;
  v24 = MEMORY[0x2743948D0](v29);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __113__TRICacheDeleteCallbacks_registerCallbacksWithPaths_experimentDatabase_rolloutDatabase_taskQueue_loggingClient___block_invoke_3;
  v27[3] = &unk_279DDFE50;
  v28 = v23;
  v25 = v23;
  v26 = MEMORY[0x2743948D0](v27);
  CacheDeleteRegisterInfoCallbacks();
}

TRICacheDeleteCallbacks *__113__TRICacheDeleteCallbacks_registerCallbacksWithPaths_experimentDatabase_rolloutDatabase_taskQueue_loggingClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 72) _assetPurger:*(a1 + 32) experimentDatabase:*(a1 + 40) rolloutDatabase:*(a1 + 48) taskQueue:*(a1 + 56) loggingClient:*(a1 + 64)];
  v3 = [[TRICacheDeleteCallbacks alloc] initWithPaths:*(a1 + 32) assetPurger:v2 loggingClient:*(a1 + 64)];

  return v3;
}

id __113__TRICacheDeleteCallbacks_registerCallbacksWithPaths_experimentDatabase_rolloutDatabase_taskQueue_loggingClient___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = a3;
  v7 = v5(v4);
  v8 = [v7 purgeable:v6 urgency:a2];

  v9 = v8;
  return v9;
}

id __113__TRICacheDeleteCallbacks_registerCallbacksWithPaths_experimentDatabase_rolloutDatabase_taskQueue_loggingClient___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = a3;
  v7 = v5(v4);
  v8 = [v7 purge:v6 urgency:a2];

  v9 = v8;
  return v9;
}

+ (id)_assetPurger:(id)purger experimentDatabase:(id)database rolloutDatabase:(id)rolloutDatabase taskQueue:(id)queue loggingClient:(id)client
{
  clientCopy = client;
  queueCopy = queue;
  rolloutDatabaseCopy = rolloutDatabase;
  databaseCopy = database;
  purgerCopy = purger;
  v23 = [[TRIAssetStore alloc] initWithPaths:purgerCopy];
  v16 = [objc_alloc(MEMORY[0x277D73688]) initWithPaths:purgerCopy];
  v17 = [[TRIPurgeableNamespacesProvider alloc] initWithPaths:purgerCopy clientNamespaceMetadataStorage:v16];
  v18 = [objc_alloc(MEMORY[0x277D73778]) initWithPaths:purgerCopy];
  v19 = [[TRIPurgeableOnDemandFactorsEnumerator alloc] initWithPaths:purgerCopy namespaceResolver:v18];
  v20 = [[TRIPurgeableExperimentAndRolloutProvider alloc] initWithPaths:purgerCopy experimentDatabase:databaseCopy rolloutDatabase:rolloutDatabaseCopy];

  v21 = [[TRIAssetPurger alloc] initWithPaths:purgerCopy assetStore:v23 purgeableNamespacesProvider:v17 purgeableFactorPacksEnumerator:v19 purgeableExperimentAndRolloutProvider:v20 taskQueue:queueCopy loggingClient:clientCopy];

  return v21;
}

@end