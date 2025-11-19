@interface TRICacheDeleteCallbacks
+ (id)_assetPurger:(id)a3 experimentDatabase:(id)a4 rolloutDatabase:(id)a5 taskQueue:(id)a6 loggingClient:(id)a7;
+ (void)registerCallbacksWithPaths:(id)a3 experimentDatabase:(id)a4 rolloutDatabase:(id)a5 taskQueue:(id)a6 loggingClient:(id)a7;
- (BOOL)_trialVolumeIsEqualToVolume:(id)a3;
- (TRICacheDeleteCallbacks)initWithPaths:(id)a3 assetPurger:(id)a4 loggingClient:(id)a5;
- (void)cancel:(id)a3;
@end

@implementation TRICacheDeleteCallbacks

- (TRICacheDeleteCallbacks)initWithPaths:(id)a3 assetPurger:(id)a4 loggingClient:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TRICacheDeleteCallbacks;
  v12 = [(TRICacheDeleteCallbacks *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_paths, a3);
    objc_storeStrong(&v13->_assetPurger, a4);
    objc_storeStrong(&v13->_loggingClient, a5);
  }

  return v13;
}

- (void)cancel:(id)a3
{
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEBUG, "Cancel CacheDelete callback invoked", v4, 2u);
  }
}

- (BOOL)_trialVolumeIsEqualToVolume:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  paths = self->_paths;
  v5 = a3;
  v6 = [(TRIPaths *)paths trialVolume];
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"nil";
    }

    v16 = 138412290;
    v17 = v8;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_INFO, "Found the following trial directory volume: %@", &v16, 0xCu);
  }

  v9 = [(TRIPaths *)self->_paths volumeForDirectory:v5];

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

  if (!v6 || !v9)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Invalid trial or cache delete requested volume", &v16, 2u);
    }

    goto LABEL_19;
  }

  if (([(__CFString *)v9 isEqualToString:v6]& 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v6;
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

+ (void)registerCallbacksWithPaths:(id)a3 experimentDatabase:(id)a4 rolloutDatabase:(id)a5 taskQueue:(id)a6 loggingClient:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __113__TRICacheDeleteCallbacks_registerCallbacksWithPaths_experimentDatabase_rolloutDatabase_taskQueue_loggingClient___block_invoke;
  v31[3] = &unk_279DDFE28;
  v32 = v12;
  v33 = v13;
  v34 = v14;
  v35 = v15;
  v36 = v16;
  v37 = a1;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
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

+ (id)_assetPurger:(id)a3 experimentDatabase:(id)a4 rolloutDatabase:(id)a5 taskQueue:(id)a6 loggingClient:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v23 = [[TRIAssetStore alloc] initWithPaths:v15];
  v16 = [objc_alloc(MEMORY[0x277D73688]) initWithPaths:v15];
  v17 = [[TRIPurgeableNamespacesProvider alloc] initWithPaths:v15 clientNamespaceMetadataStorage:v16];
  v18 = [objc_alloc(MEMORY[0x277D73778]) initWithPaths:v15];
  v19 = [[TRIPurgeableOnDemandFactorsEnumerator alloc] initWithPaths:v15 namespaceResolver:v18];
  v20 = [[TRIPurgeableExperimentAndRolloutProvider alloc] initWithPaths:v15 experimentDatabase:v14 rolloutDatabase:v13];

  v21 = [[TRIAssetPurger alloc] initWithPaths:v15 assetStore:v23 purgeableNamespacesProvider:v17 purgeableFactorPacksEnumerator:v19 purgeableExperimentAndRolloutProvider:v20 taskQueue:v12 loggingClient:v11];

  return v21;
}

@end