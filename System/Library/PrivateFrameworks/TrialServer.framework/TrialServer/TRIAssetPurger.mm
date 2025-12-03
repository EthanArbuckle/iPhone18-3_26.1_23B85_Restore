@interface TRIAssetPurger
- (TRIAssetPurger)initWithPaths:(id)paths assetStore:(id)store purgeableNamespacesProvider:(id)provider purgeableFactorPacksEnumerator:(id)enumerator purgeableExperimentAndRolloutProvider:(id)rolloutProvider taskQueue:(id)queue loggingClient:(id)client;
- (void)_enumeratePurgeCandidatesForPurgeableConstructs:(id)constructs block:(id)block;
- (void)_logDeactivationsMetricWithConcludedInTime:(BOOL)time;
@end

@implementation TRIAssetPurger

- (TRIAssetPurger)initWithPaths:(id)paths assetStore:(id)store purgeableNamespacesProvider:(id)provider purgeableFactorPacksEnumerator:(id)enumerator purgeableExperimentAndRolloutProvider:(id)rolloutProvider taskQueue:(id)queue loggingClient:(id)client
{
  pathsCopy = paths;
  storeCopy = store;
  providerCopy = provider;
  enumeratorCopy = enumerator;
  rolloutProviderCopy = rolloutProvider;
  queueCopy = queue;
  clientCopy = client;
  v26.receiver = self;
  v26.super_class = TRIAssetPurger;
  v18 = [(TRIAssetPurger *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_paths, paths);
    objc_storeStrong(&v19->_assetStore, store);
    objc_storeStrong(&v19->_purgeableNamespacesProvider, provider);
    objc_storeStrong(&v19->_purgeableFactorPacksEnumerator, enumerator);
    objc_storeStrong(&v19->_purgeableExperimentAndRolloutProvider, rolloutProvider);
    objc_storeStrong(&v19->_taskQueue, queue);
    objc_storeStrong(&v19->_loggingClient, client);
  }

  return v19;
}

void __57__TRIAssetPurger_purgeableAssetSizeForPurgeabilityLevel___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = [*(a1 + 32) objectForKeyedSubscript:v9];
        if (v11)
        {
          [*(a1 + 32) setObject:v11 forKeyedSubscript:v9];
        }

        else
        {
          v12 = objc_opt_new();
          [*(a1 + 32) setObject:v12 forKeyedSubscript:v9];
        }

        v13 = [*(a1 + 32) objectForKeyedSubscript:v9];
        [v13 unionSet:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __57__TRIAssetPurger_purgeableAssetSizeForPurgeabilityLevel___block_invoke_119(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v10];
  if (v7)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v10];
  }

  else
  {
    v8 = objc_opt_new();
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v10];
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:v10];
  [v9 unionSet:v6];
}

void __57__TRIAssetPurger_purgeableAssetSizeForPurgeabilityLevel___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v10];
  if (v7)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v10];
  }

  else
  {
    v8 = objc_opt_new();
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v10];
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:v10];
  [v9 unionSet:v6];
}

void __71__TRIAssetPurger_purgeAssetsForPurgeabilityLevel_requestedPurgeAmount___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 factorPackId];
  v8 = @"factor pack";
  if (!v7)
  {
    v8 = @"treatment";
  }

  v9 = v8;

  v10 = [v6 factorPackId];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v6 treatmentId];
  }

  v13 = v12;

  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v6 namespaceName];
    v16 = [v6 purgeableAssetFactorNames];
    *buf = 138413058;
    v64 = v9;
    v65 = 2114;
    v66 = v13;
    v67 = 2114;
    v68 = v15;
    v69 = 2048;
    v70 = [v16 count];
    _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Found purgeable %@ %{public}@ for namespace %{public}@ with %lu purgeable factors", buf, 0x2Au);
  }

  v17 = [v6 purgeableAssetFactorNames];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [v6 factorPackId];

    if (v19)
    {
      v61 = v13;
      v20 = [[TRIFactorPackStorage alloc] initWithPaths:*(*(a1 + 32) + 8)];
      v21 = [v6 factorPackId];
      v22 = [v6 namespaceName];
      v23 = [v6 purgeableAssetFactorNames];
      v24 = [(TRIFactorPackStorage *)v20 updateSavedFactorPackWithId:v21 namespaceName:v22 deletingAssetsWithFactorNames:v23 inUseAssetBehavior:*(a1 + 56)];

      if (_os_feature_enabled_impl())
      {
        v60 = v9;
        v25 = [v6 factorPackId];
        v26 = [v6 namespaceName];
        v27 = [(TRIFactorPackStorage *)v20 pathForFactorPackWithId:v25 namespaceName:v26];

        v28 = [MEMORY[0x277CCAA00] defaultManager];
        v29 = [v27 stringByAppendingPathComponent:@"factorPack.fb"];
        if ([v28 fileExistsAtPath:v29])
        {
          v58 = v27;
          v59 = a4;
          v30 = [[TRIFBFactorPackStorage alloc] initWithPaths:*(*(a1 + 32) + 8)];
          v31 = [v6 factorPackId];
          v32 = [v6 namespaceName];
          v33 = [v6 purgeableAssetFactorNames];
          v57 = v30;
          LOBYTE(v30) = [(TRIFBFactorPackStorage *)v30 updateSavedFactorLevelsWithFactorPackId:v31 namespaceName:v32 deletingAssetsWithFactorNames:v33 inUseAssetBehavior:*(a1 + 56)];

          if ((v30 & 1) == 0)
          {
            v34 = TRILogCategory_Server();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v56 = [v6 factorPackId];
              *buf = 138412290;
              v64 = v56;
              _os_log_error_impl(&dword_26F567000, v34, OS_LOG_TYPE_ERROR, "Flatbuffer Factor Storage: Not able to delete assets in FactorPack %@", buf, 0xCu);
            }
          }

          v27 = v58;
          a4 = v59;
        }

        v9 = v60;
      }

      v35 = a4;

      v13 = v61;
    }

    else
    {
      v35 = a4;
      v24 = 1;
    }

    v36 = [v6 treatmentId];

    if (v36)
    {
      v37 = [[TRIClientTreatmentStorage alloc] initWithPaths:*(*(a1 + 32) + 8)];
      v38 = [v6 treatmentId];
      v39 = [v6 purgeableAssetFactorNames];
      v40 = [v6 namespaceName];
      v41 = [(TRIClientTreatmentStorage *)v37 updateSavedTreatmentWithTreatmentId:v38 deletingAssetsWithFactorNames:v39 forNamespaceName:v40 inUseAssetDeletionBehavior:*(a1 + 56)];
      if (!v41)
      {
        LOBYTE(v24) = 0;
      }

      if (v24)
      {
        goto LABEL_24;
      }
    }

    else if (v24)
    {
LABEL_24:
      v42 = TRILogCategory_Server();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [v6 purgeableAssetFactorNames];
        v44 = [v43 count];
        *buf = 134218498;
        v64 = v44;
        v65 = 2112;
        v66 = v9;
        v67 = 2114;
        v68 = v13;
        _os_log_impl(&dword_26F567000, v42, OS_LOG_TYPE_DEFAULT, "Successfully removed %lu factors from %@ %{public}@", buf, 0x20u);
      }

      v45 = MEMORY[0x277D73790];
      v46 = [v6 namespaceName];
      [v45 notifyUpdateForNamespaceName:v46];

      v62 = 0;
      [*(*(a1 + 32) + 48) collectGarbageOlderThanNumScans:0 deletedAssetSize:&v62];
      v47 = v62;
      if (!v62)
      {
        v48 = TRILogCategory_Server();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_26F567000, v48, OS_LOG_TYPE_ERROR, "Running garbage collection after removing factors from factor pack did not result in any purged assets", buf, 2u);
        }

        v47 = v62;
      }

      *(*(*(a1 + 40) + 8) + 24) += v47;
      v49 = TRILogCategory_Server();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *(*(*(a1 + 40) + 8) + 24);
        *buf = 134217984;
        v64 = v50;
        _os_log_impl(&dword_26F567000, v49, OS_LOG_TYPE_DEFAULT, "Cache delete update: Purged %llu bytes so far", buf, 0xCu);
      }

      if (*(*(*(a1 + 40) + 8) + 24) >= *(a1 + 48))
      {
        v51 = TRILogCategory_Server();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = *(a1 + 48);
          v53 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 134218240;
          v64 = v53;
          v65 = 2048;
          v66 = v52;
          _os_log_impl(&dword_26F567000, v51, OS_LOG_TYPE_DEFAULT, "Found %llu bytes to purge. Cache delete only requested %llu so no need to continue purging.", buf, 0x16u);
        }

        *v35 = 1;
      }

      goto LABEL_40;
    }

    v54 = TRILogCategory_Server();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v64 = v9;
      v65 = 2112;
      v66 = v13;
      _os_log_impl(&dword_26F567000, v54, OS_LOG_TYPE_DEFAULT, "Not able to delete assets in %@ %@, moving on to next object", buf, 0x16u);
    }
  }

LABEL_40:

  v55 = *MEMORY[0x277D85DE8];
}

void __71__TRIAssetPurger_purgeAssetsForPurgeabilityLevel_requestedPurgeAmount___block_invoke_141()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.trial.status" qosClass:17];
  v2 = _MergedGlobals_30;
  _MergedGlobals_30 = v1;

  objc_autoreleasePoolPop(v0);
}

intptr_t __71__TRIAssetPurger_purgeAssetsForPurgeabilityLevel_requestedPurgeAmount___block_invoke_2(uint64_t a1)
{
  v2 = TRILogCategory_Server();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F567000, v2, OS_LOG_TYPE_DEFAULT, "Task queue completion notification received for cache delete deactivation tasks.", v4, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_logDeactivationsMetricWithConcludedInTime:(BOOL)time
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D73B40] metricWithName:@"cache_delete_deactivations_concluded_in_time" integerValue:time];
  logger = [(TRIClient *)self->_loggingClient logger];
  trackingId = [(TRIClient *)self->_loggingClient trackingId];
  v9[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [logger logWithTrackingId:trackingId metrics:v7 dimensions:0 trialSystemTelemetry:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_enumeratePurgeCandidatesForPurgeableConstructs:(id)constructs block:(id)block
{
  constructsCopy = constructs;
  blockCopy = block;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __72__TRIAssetPurger__enumeratePurgeCandidatesForPurgeableConstructs_block___block_invoke;
  v26[3] = &unk_279DDFDD8;
  v27 = blockCopy;
  v8 = blockCopy;
  v9 = MEMORY[0x2743948D0](v26);
  v10 = MEMORY[0x277CBEB98];
  eagerPurgeableFactorsByNamespaceName = [constructsCopy eagerPurgeableFactorsByNamespaceName];
  allKeys = [eagerPurgeableFactorsByNamespaceName allKeys];
  v13 = [v10 setWithArray:allKeys];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__TRIAssetPurger__enumeratePurgeCandidatesForPurgeableConstructs_block___block_invoke_2;
  v24[3] = &unk_279DDFE00;
  v14 = constructsCopy;
  v25 = v14;
  v15 = MEMORY[0x2743948D0](v24);
  [(TRIPurgeableOnDemandFactorsEnumerating *)self->_purgeableFactorPacksEnumerator enumerateRolloutOnDemandFactorsPurgeCandidatesFromNamespaceNames:v13 purgeableFactorFilterBlock:v15 block:v9];
  [(TRIPurgeableOnDemandFactorsEnumerating *)self->_purgeableFactorPacksEnumerator enumerateExperimentOnDemandFactorsPurgeCandidatesFromNamespaceNames:v13 purgeableFactorFilterBlock:v15 block:v9];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__TRIAssetPurger__enumeratePurgeCandidatesForPurgeableConstructs_block___block_invoke_3;
  v22[3] = &unk_279DDFE00;
  v23 = v14;
  v16 = v14;
  v17 = MEMORY[0x2743948D0](v22);
  purgeableFactorPacksEnumerator = self->_purgeableFactorPacksEnumerator;
  namespaceNamesPurgeableAtNamespaceLevel = [v16 namespaceNamesPurgeableAtNamespaceLevel];
  [(TRIPurgeableOnDemandFactorsEnumerating *)purgeableFactorPacksEnumerator enumerateRolloutOnDemandFactorsPurgeCandidatesFromNamespaceNames:namespaceNamesPurgeableAtNamespaceLevel purgeableFactorFilterBlock:v17 block:v9];

  v20 = self->_purgeableFactorPacksEnumerator;
  namespaceNamesPurgeableAtNamespaceLevel2 = [v16 namespaceNamesPurgeableAtNamespaceLevel];
  [(TRIPurgeableOnDemandFactorsEnumerating *)v20 enumerateExperimentOnDemandFactorsPurgeCandidatesFromNamespaceNames:namespaceNamesPurgeableAtNamespaceLevel2 purgeableFactorFilterBlock:v17 block:v9];
}

uint64_t __72__TRIAssetPurger__enumeratePurgeCandidatesForPurgeableConstructs_block___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 eagerPurgeableFactorsByNamespaceName];
  v8 = [v7 objectForKeyedSubscript:v5];

  v9 = [v8 containsObject:v6];
  return v9;
}

uint64_t __72__TRIAssetPurger__enumeratePurgeCandidatesForPurgeableConstructs_block___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 cacheDeleteableFactorsByNamespaceName];
  v8 = [v7 objectForKeyedSubscript:v5];

  LODWORD(v5) = [v8 containsObject:v6];
  return v5 ^ 1;
}

@end