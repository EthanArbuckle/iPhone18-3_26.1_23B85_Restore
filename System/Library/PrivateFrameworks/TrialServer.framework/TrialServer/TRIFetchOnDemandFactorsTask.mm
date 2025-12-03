@interface TRIFetchOnDemandFactorsTask
+ (id)parseFromData:(id)data;
+ (id)taskWithAssetIndexesByTreatment:(id)treatment experimentId:(id)id assetIdsByFactorPack:(id)pack rolloutFactorNames:(id)names rolloutDeployment:(id)deployment namespaceName:(id)name taskAttributing:(id)attributing notificationKey:(id)self0 capabilityModifier:(id)self1;
- ($A5A652246548B43F8BC05201A1C72A70)_saveIndexedAssetURLs:(id)ls withTreatmentId:(id)id usingAssetMetadata:(id)metadata downloadOptions:(id)options paths:(id)paths downloadSize:(unint64_t *)size error:(id *)error;
- ($A5A652246548B43F8BC05201A1C72A70)_saveNamedAssetURLs:(id)ls usingAssetMetadata:(id)metadata downloadOptions:(id)options downloadSize:(unint64_t *)size paths:(id)paths error:(id *)error;
- (BOOL)_updateFactorPacksByMergingAssets:(id)assets context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSArray)tags;
- (NSString)description;
- (TRIFetchOnDemandFactorsTask)initWithAssetIndexesByTreatment:(id)treatment experimentId:(id)id assetIdsByFactorPack:(id)pack rolloutFactorNames:(id)names rolloutDeployment:(id)deployment namespaceName:(id)name taskAttributing:(id)attributing notificationKey:(id)self0 capabilityModifier:(id)self1;
- (TRIFetchOnDemandFactorsTask)initWithCoder:(id)coder;
- (id)_asPersistedTask;
- (id)_assetIdsFromKeysInDictionary:(id)dictionary;
- (id)_currentTaskStatus;
- (id)_fetchDiffsFromAssetDiffRecordsWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size options:(id)options;
- (id)_fetchOptionsWithDownloadOptions:(id)options paths:(id)paths;
- (id)_planForFetchingAssetDiffsWithContext:(id)context downloadOptions:(id)options updatingAggregateProgress:(id)progress nonDiffableAssetIds:(id *)ids unlinkedMAAssetsOnDisk:(id *)disk;
- (id)_planForFetchingAssetsFromFactorPacksWithContext:(id)context assetDiffFetchPlan:(id)plan requiredAssetIds:(id)ids downloadOptions:(id)options updatingAggregateProgress:(id)progress;
- (id)_planForFetchingAssetsFromTreatmentRecordsWithContext:(id)context downloadOptions:(id)options updatingAggregateProgress:(id)progress;
- (id)_telemetryForFactorPackIds:(id)ids rolloutDeployment:(id)deployment treatmentIds:(id)treatmentIds experimentId:(id)id namespaceName:(id)name taskAttributing:(id)attributing;
- (id)dimensions;
- (id)metrics;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (unint64_t)_requiredDiskSpaceForPlan:(id)plan;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)_addDimension:(id)dimension;
- (void)_addMetric:(id)metric;
- (void)_addMetricForFetchOnDemandFactorsTaskError:(int)error;
- (void)_asyncFetchAssetsFromTreatmentRecordsWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size downloadOptions:(id)options group:(id)group;
- (void)_asyncFetchCKAssetsFromAssetRecordsWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size options:(id)options group:(id)group;
- (void)_asyncFetchMAAssetsFromFactorPacksWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size options:(id)options group:(id)group;
- (void)_completeTaskWithStatus:(int)status earliestRetryDate:(id)date error:(id)error aggregateProgress:(id)progress context:(id)context;
- (void)_logOnDemandFactor:(id)factor metricName:(id)name namespaceName:(id)namespaceName client:(id)client error:(id)error;
- (void)encodeWithCoder:(id)coder;
- (void)removeDownloadableFactorNames:(id)names;
@end

@implementation TRIFetchOnDemandFactorsTask

- (TRIFetchOnDemandFactorsTask)initWithAssetIndexesByTreatment:(id)treatment experimentId:(id)id assetIdsByFactorPack:(id)pack rolloutFactorNames:(id)names rolloutDeployment:(id)deployment namespaceName:(id)name taskAttributing:(id)attributing notificationKey:(id)self0 capabilityModifier:(id)self1
{
  v53 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  obj = id;
  idCopy = id;
  packCopy = pack;
  packCopy2 = pack;
  namesCopy = names;
  namesCopy2 = names;
  deploymentCopy = deployment;
  nameCopy = name;
  nameCopy2 = name;
  attributingCopy = attributing;
  keyCopy = key;
  modifierCopy = modifier;
  v50.receiver = self;
  v50.super_class = TRIFetchOnDemandFactorsTask;
  v21 = [(TRIFetchOnDemandFactorsTask *)&v50 init];
  v22 = v21;
  if (v21)
  {
    v44 = treatmentCopy;
    objc_storeStrong(&v21->_assetIndexesByTreatment, treatment);
    objc_storeStrong(&v22->_experimentId, obj);
    objc_storeStrong(&v22->_assetIdsByFactorPack, packCopy);
    objc_storeStrong(&v22->_rolloutFactorNames, namesCopy);
    objc_storeStrong(&v22->_deployment, deployment);
    objc_storeStrong(&v22->_namespaceName, nameCopy);
    objc_storeStrong(&v22->_taskAttributing, attributing);
    v22->_retryCount = 0;
    objc_storeStrong(&v22->_notificationKey, key);
    objc_storeStrong(&v22->_capabilityModifier, modifier);
    atomic_store(0, &v22->_isCurrentlyExecuting);
    allKeys = [packCopy2 allKeys];
    if ([allKeys count] >= 2)
    {
      v24 = TRILogCategory_Server();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v52 = allKeys;
        _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "On-demand factor fetch was initiated for >1 factor pack and will be excluded from telemetry. Got %{public}@", buf, 0xCu);
      }
    }

    allKeys2 = [v44 allKeys];
    v26 = [(TRIFetchOnDemandFactorsTask *)v22 _telemetryForFactorPackIds:allKeys rolloutDeployment:deploymentCopy treatmentIds:allKeys2 experimentId:idCopy namespaceName:nameCopy2 taskAttributing:attributingCopy];
    trialSystemTelemetry = v22->_trialSystemTelemetry;
    v22->_trialSystemTelemetry = v26;

    v28 = objc_opt_new();
    v29 = objc_opt_new();
    v30 = *(v28 + 8);
    *(v28 + 8) = v29;

    *(v28 + 16) = 0;
    v31 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v22->_rolloutFactorNames];
    v32 = *(v28 + 40);
    *(v28 + 40) = v31;

    v33 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v28];
    lock = v22->_lock;
    v22->_lock = v33;

    v35 = objc_opt_new();
    factorNameByAssetId = v22->_factorNameByAssetId;
    v22->_factorNameByAssetId = v35;

    treatmentCopy = v44;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)taskWithAssetIndexesByTreatment:(id)treatment experimentId:(id)id assetIdsByFactorPack:(id)pack rolloutFactorNames:(id)names rolloutDeployment:(id)deployment namespaceName:(id)name taskAttributing:(id)attributing notificationKey:(id)self0 capabilityModifier:(id)self1
{
  modifierCopy = modifier;
  keyCopy = key;
  attributingCopy = attributing;
  nameCopy = name;
  deploymentCopy = deployment;
  namesCopy = names;
  packCopy = pack;
  idCopy = id;
  treatmentCopy = treatment;
  v27 = [[self alloc] initWithAssetIndexesByTreatment:treatmentCopy experimentId:idCopy assetIdsByFactorPack:packCopy rolloutFactorNames:namesCopy rolloutDeployment:deploymentCopy namespaceName:nameCopy taskAttributing:attributingCopy notificationKey:keyCopy capabilityModifier:modifierCopy];

  return v27;
}

- (id)_telemetryForFactorPackIds:(id)ids rolloutDeployment:(id)deployment treatmentIds:(id)treatmentIds experimentId:(id)id namespaceName:(id)name taskAttributing:(id)attributing
{
  idsCopy = ids;
  deploymentCopy = deployment;
  treatmentIdsCopy = treatmentIds;
  idCopy = id;
  attributingCopy = attributing;
  nameCopy = name;
  v19 = objc_opt_new();
  networkOptions = [attributingCopy networkOptions];
  [v19 setFieldsForDownloadOptions:networkOptions];

  ensureFactorFields = [v19 ensureFactorFields];
  [ensureFactorFields setNamespaceName:nameCopy];

  if ([idsCopy count] == 1)
  {
    firstObject = [idsCopy firstObject];
    ensureFactorFields2 = [v19 ensureFactorFields];
    [ensureFactorFields2 setClientFactorPackId:firstObject];
  }

  if (deploymentCopy)
  {
    [v19 setFieldsForRolloutDeployment:deploymentCopy];
  }

  if (idCopy)
  {
    ensureExperimentFields = [v19 ensureExperimentFields];
    [ensureExperimentFields setClientExperimentId:idCopy];
  }

  if ([treatmentIdsCopy count] == 1)
  {
    firstObject2 = [treatmentIdsCopy firstObject];
    ensureExperimentFields2 = [v19 ensureExperimentFields];
    [ensureExperimentFields2 setClientTreatmentId:firstObject2];
  }

  v27 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:attributingCopy];
  [v19 mergeFrom:v27];

  return v19;
}

- (NSArray)tags
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (self->_notificationKey)
  {
    v5[0] = self->_notificationKey;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- ($A5A652246548B43F8BC05201A1C72A70)_saveIndexedAssetURLs:(id)ls withTreatmentId:(id)id usingAssetMetadata:(id)metadata downloadOptions:(id)options paths:(id)paths downloadSize:(unint64_t *)size error:(id *)error
{
  lsCopy = ls;
  idCopy = id;
  metadataCopy = metadata;
  optionsCopy = options;
  pathsCopy = paths;
  v20 = [TRIAssetStore alloc];
  activity = [optionsCopy activity];
  v22 = [(TRIAssetStore *)v20 initWithPaths:pathsCopy monitoredActivity:activity];

  v43 = 0;
  v44 = &v43;
  v45 = 0x2810000000;
  v46 = &unk_26F7089E2;
  v47 = 1;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__50;
  v41 = __Block_byref_object_dispose__50;
  v42 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __129__TRIFetchOnDemandFactorsTask__saveIndexedAssetURLs_withTreatmentId_usingAssetMetadata_downloadOptions_paths_downloadSize_error___block_invoke;
  v29[3] = &unk_279DE4340;
  v35 = a2;
  v29[4] = self;
  v23 = idCopy;
  v30 = v23;
  v24 = lsCopy;
  v31 = v24;
  v25 = v22;
  v32 = v25;
  v33 = &v37;
  v34 = &v43;
  sizeCopy = size;
  [metadataCopy enumerateKeysAndObjectsUsingBlock:v29];
  if (error)
  {
    *error = v38[5];
  }

  v26.var0 = *(v44 + 32);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  return v26;
}

void __129__TRIFetchOnDemandFactorsTask__saveIndexedAssetURLs_withTreatmentId_usingAssetMetadata_downloadOptions_paths_downloadSize_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 treatmentIndex];
  if (!v9)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:302 description:{@"Expression was unexpectedly nil/false: %@", @"metadata.treatmentIndex"}];
  }

  v10 = *(a1 + 40);
  v11 = [v9 treatmentId];
  LODWORD(v10) = [v10 isEqualToString:v11];

  if (v10)
  {
    v12 = *(a1 + 48);
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "index")}];
    v14 = [v12 objectForKeyedSubscript:v13];

    if (v14)
    {
      v15 = *(a1 + 56);
      v16 = *(*(a1 + 64) + 8);
      obj = *(v16 + 40);
      v17 = [v15 saveAssetWithIdentifier:v7 assetURL:v14 metadata:v8 error:&obj];
      objc_storeStrong((v16 + 40), obj);
      if (v17 == 1)
      {
        **(a1 + 88) += [v8 downloadSize];
      }

      else
      {
        *(*(*(a1 + 72) + 8) + 32) = v17;
        *a4 = 1;
      }
    }
  }
}

- ($A5A652246548B43F8BC05201A1C72A70)_saveNamedAssetURLs:(id)ls usingAssetMetadata:(id)metadata downloadOptions:(id)options downloadSize:(unint64_t *)size paths:(id)paths error:(id *)error
{
  lsCopy = ls;
  metadataCopy = metadata;
  optionsCopy = options;
  pathsCopy = paths;
  v18 = [TRIAssetStore alloc];
  activity = [optionsCopy activity];
  v20 = [(TRIAssetStore *)v18 initWithPaths:pathsCopy monitoredActivity:activity];

  v40 = 0;
  v41 = &v40;
  v42 = 0x2810000000;
  v43 = &unk_26F7089E2;
  v44 = 1;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__50;
  v38 = __Block_byref_object_dispose__50;
  v39 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __111__TRIFetchOnDemandFactorsTask__saveNamedAssetURLs_usingAssetMetadata_downloadOptions_downloadSize_paths_error___block_invoke;
  v26[3] = &unk_279DE4368;
  v21 = metadataCopy;
  v32 = a2;
  v27 = v21;
  selfCopy = self;
  v22 = v20;
  v29 = v22;
  v30 = &v34;
  v31 = &v40;
  sizeCopy = size;
  [lsCopy enumerateKeysAndObjectsUsingBlock:v26];
  if (error)
  {
    *error = v35[5];
  }

  v23.var0 = *(v41 + 32);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  return v23;
}

void __111__TRIFetchOnDemandFactorsTask__saveNamedAssetURLs_usingAssetMetadata_downloadOptions_downloadSize_paths_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = [v7 objectForKeyedSubscript:v9];
  if (!v10)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:343 description:{@"Expression was unexpectedly nil/false: %@", @"assetMetadata[assetId]"}];
  }

  v11 = *(a1 + 48);
  v12 = *(*(a1 + 56) + 8);
  obj = *(v12 + 40);
  v13 = [v11 saveAssetWithIdentifier:v9 assetURL:v8 metadata:v10 error:&obj];

  objc_storeStrong((v12 + 40), obj);
  if (v13 == 1)
  {
    **(a1 + 80) += [v10 downloadSize];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 32) = v13;
    *a4 = 1;
  }
}

- (BOOL)_updateFactorPacksByMergingAssets:(id)assets context:(id)context
{
  assetsCopy = assets;
  contextCopy = context;
  v8 = [TRIFactorPackStorage alloc];
  paths = [contextCopy paths];
  v10 = [(TRIFactorPackStorage *)v8 initWithPaths:paths];

  LOBYTE(v8) = _os_feature_enabled_impl();
  LOBYTE(paths) = _os_feature_enabled_impl();
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  assetIdsByFactorPack = self->_assetIdsByFactorPack;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__TRIFetchOnDemandFactorsTask__updateFactorPacksByMergingAssets_context___block_invoke;
  v16[3] = &unk_279DE4390;
  v12 = assetsCopy;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  selfCopy = self;
  v21 = &v24;
  v22 = paths;
  v14 = contextCopy;
  v20 = v14;
  v23 = v8;
  [(NSDictionary *)assetIdsByFactorPack enumerateKeysAndObjectsUsingBlock:v16];
  LOBYTE(contextCopy) = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return contextCopy;
}

void __73__TRIFetchOnDemandFactorsTask__updateFactorPacksByMergingAssets_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = objc_opt_new();
  v8 = [*(a1 + 32) cloudKit];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __73__TRIFetchOnDemandFactorsTask__updateFactorPacksByMergingAssets_context___block_invoke_2;
  v34[3] = &unk_279DE3F30;
  v9 = v7;
  v35 = v9;
  [v8 enumerateObjectsUsingBlock:v34];

  v10 = [*(a1 + 32) mobileAsset];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __73__TRIFetchOnDemandFactorsTask__updateFactorPacksByMergingAssets_context___block_invoke_3;
  v32[3] = &unk_279DE3F58;
  v11 = v9;
  v33 = v11;
  [v10 enumerateObjectsUsingBlock:v32];

  v12 = [*(a1 + 40) loadFactorPackWithId:v6 namespaceName:*(*(a1 + 48) + 48)];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 selectedNamespace];
    v15 = [v14 hasName];

    if (v15)
    {
      v16 = [v13 selectedNamespace];
      v17 = [v16 name];
      v18 = [TRIClientFactorPackUtils aliasesInNamespace:v17];
    }

    else
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v29 = [v13 factorPackId];
        *buf = 138543362;
        v37 = v29;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has missing namespace name.", buf, 0xCu);
      }

      v18 = 0;
    }

    if ([*(a1 + 40) updateSavedFactorPackWithId:v6 namespaceName:*(*(a1 + 48) + 48) populatingAssetsForFactorNames:v11 aliasToUnaliasMap:v18])
    {
      if (*(a1 + 72) == 1)
      {
        v20 = [*(a1 + 40) pathForFactorPackWithId:v6 namespaceName:*(*(a1 + 48) + 48)];
        v21 = [MEMORY[0x277CCAA00] defaultManager];
        v22 = [v20 stringByAppendingPathComponent:@"factorPack.fb"];
        v31 = v21;
        if ([v21 fileExistsAtPath:v22])
        {
          v30 = v20;
          v23 = [TRIFBFactorPackStorage alloc];
          v24 = [*(a1 + 56) paths];
          v25 = [(TRIFBFactorPackStorage *)v23 initWithPaths:v24];

          if (([v25 updateSavedFactorLevelsWithFactorPackId:v6 namespaceName:*(*(a1 + 48) + 48) populatingAssetsForFactorNames:v11 aliasToUnaliasMap:v18]& 1) != 0)
          {
            v20 = v30;
          }

          else
          {
            v27 = TRILogCategory_Server();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v37 = v6;
              _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Could not update factor levels storage for factor pack id: %@", buf, 0xCu);
            }

            v20 = v30;
            if (*(a1 + 73) == 1)
            {
              *(*(*(a1 + 64) + 8) + 24) = 0;
              *a4 = 1;
            }
          }
        }

        else
        {
          v25 = TRILogCategory_Server();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = *(*(a1 + 48) + 48);
            *buf = 138412546;
            v37 = v6;
            v38 = 2112;
            v39 = v26;
            _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Could not update factor levels for factor pack id: %@ because the flatbuffer file was absent for namespace name: %@", buf, 0x16u);
          }
        }
      }
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  else
  {
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v37 = v6;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Unexpected failure to load factor pack: %{public}@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a4 = 1;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __73__TRIFetchOnDemandFactorsTask__updateFactorPacksByMergingAssets_context___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 factorName];
  [v2 addObject:v3];
}

void __73__TRIFetchOnDemandFactorsTask__updateFactorPacksByMergingAssets_context___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 factorName];
  [v2 addObject:v3];
}

- (id)_assetIdsFromKeysInDictionary:(id)dictionary
{
  v17 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = dictionaryCopy;
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

        [v4 addObject:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_fetchOptionsWithDownloadOptions:(id)options paths:(id)paths
{
  v6 = MEMORY[0x277D73688];
  pathsCopy = paths;
  optionsCopy = options;
  v9 = [[v6 alloc] initWithPaths:pathsCopy];
  v10 = [objc_alloc(MEMORY[0x277D737B0]) initWithPaths:pathsCopy namespaceMetadataStorage:v9];

  v11 = [v10 availableSpaceClassForFactorNames:self->_rolloutFactorNames namespaceName:self->_namespaceName];
  v12 = [TRIFetchOptions alloc];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
  v14 = [(TRIFetchOptions *)v12 initWithDownloadOptions:optionsCopy cacheDeleteAvailableSpaceClass:v13];

  return v14;
}

- (void)removeDownloadableFactorNames:(id)names
{
  namesCopy = names;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__TRIFetchOnDemandFactorsTask_removeDownloadableFactorNames___block_invoke;
  v7[3] = &unk_279DE43B8;
  v8 = namesCopy;
  v6 = namesCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __61__TRIFetchOnDemandFactorsTask_removeDownloadableFactorNames___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3[5] containsObject:*(a1 + 32)])
  {
    [v3[5] removeObject:*(a1 + 32)];
  }

  else
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Missing TRIFactorName %@ in downloadableFactorNames", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  v115 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  v89 = os_transaction_create();
  atomic_store(1u, &self->_isCurrentlyExecuting);
  v106[0] = MEMORY[0x277D85DD0];
  v106[1] = 3221225472;
  v106[2] = __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke;
  v106[3] = &unk_279DDF7A0;
  v106[4] = self;
  v7 = contextCopy;
  v107 = v7;
  v90 = MEMORY[0x2743948D0](v106);
  keyValueStore = [v7 keyValueStore];
  v92 = [TRIFetchDateManager managerWithKeyValueStore:keyValueStore];

  namespaceDatabase = [v7 namespaceDatabase];
  paths = [v7 paths];
  namespaceDescriptorsDefaultDir = [paths namespaceDescriptorsDefaultDir];
  v91 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:namespaceDatabase defaultDescriptorDirectoryPath:namespaceDescriptorsDefaultDir];

  applicationBundleIdentifier = [(TRITaskAttributing *)self->_taskAttributing applicationBundleIdentifier];
  v13 = objc_autoreleasePoolPush();
  v14 = MEMORY[0x277D73750];
  namespaceName = self->_namespaceName;
  paths2 = [v7 paths];
  namespaceDescriptorsDefaultDir2 = [paths2 namespaceDescriptorsDefaultDir];
  v18 = [v14 loadWithNamespaceName:namespaceName fromDirectory:namespaceDescriptorsDefaultDir2];

  resourceAttributionIdentifier = [v18 resourceAttributionIdentifier];
  v20 = resourceAttributionIdentifier;
  if (resourceAttributionIdentifier)
  {
    v21 = resourceAttributionIdentifier;
  }

  else
  {
    v21 = applicationBundleIdentifier;
  }

  v22 = v21;

  expensiveNetworkingAllowed = [v18 expensiveNetworkingAllowed];
  v23 = TRILogCategory_Server();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = self->_namespaceName;
    *buf = 138543618;
    *&buf[4] = v24;
    v109 = 2114;
    v110 = v22;
    _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_INFO, "attributing on-demand factors fetch for %{public}@ to %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  deployment = [(TRIFetchOnDemandFactorsTask *)self deployment];

  if (deployment)
  {
    rolloutDatabase = [v7 rolloutDatabase];
    deployment2 = [(TRIFetchOnDemandFactorsTask *)self deployment];
    v28 = [rolloutDatabase recordWithDeployment:deployment2 usingTransaction:0];

    if (v28)
    {
      rampId = [v28 rampId];

      if (!rampId)
      {
LABEL_13:

        goto LABEL_14;
      }

      v30 = objc_opt_new();
      rampId2 = [v28 rampId];
      ensureRolloutFields = [v30 ensureRolloutFields];
      [ensureRolloutFields setClientRampId:rampId2];

      [(TRITrialSystemTelemetry *)self->_trialSystemTelemetry mergeFrom:v30];
    }

    else
    {
      v30 = TRILogCategory_Server();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        deployment3 = [(TRIFetchOnDemandFactorsTask *)self deployment];
        shortDesc = [deployment3 shortDesc];
        *buf = 138543362;
        *&buf[4] = shortDesc;
        _os_log_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEFAULT, "Warning: unable to find TRIRolloutRecord for deployment %{public}@; issuing incomplete telemetry.", buf, 0xCu);
      }
    }

    goto LABEL_13;
  }

LABEL_14:
  triCloudKitContainer = [(TRITaskAttributing *)self->_taskAttributing triCloudKitContainer];
  teamIdentifier = [(TRITaskAttributing *)self->_taskAttributing teamIdentifier];
  v37 = [TRICKNativeArtifactProvider providerForContainer:triCloudKitContainer teamId:teamIdentifier bundleId:v22 dateProvider:v92 namespaceDescriptorProvider:v91 serverContext:v7];
  artifactProvider = self->_artifactProvider;
  self->_artifactProvider = v37;

  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_39];
  networkOptions = [(TRITaskAttributing *)self->_taskAttributing networkOptions];
  if (![networkOptions discretionaryBehavior])
  {
    goto LABEL_25;
  }

  stateProvider = [(TRIBaseTask *)self stateProvider];
  v41 = [stateProvider activeActivityDescriptorGrantingCapability:16];
  activity = [v41 activity];
  if (!activity)
  {
    v67 = TRILogCategory_Server();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v67, OS_LOG_TYPE_DEFAULT, "no xpc activity designated for discretionary operation, failing with retry", buf, 2u);
    }

    [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:1 earliestRetryDate:0 error:0 aggregateProgress:0 context:v7];
    [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:3];
    _currentTaskStatus = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
    goto LABEL_48;
  }

  [networkOptions setActivity:activity];
  v43 = [stateProvider activeActivityDescriptorGrantingCapability:1];

  allowsCellularAccess = [networkOptions allowsCellularAccess];
  if (v43)
  {
    v45 = 0;
  }

  else
  {
    v45 = allowsCellularAccess;
  }

  if (v45 == 1 && (!v22 || (([v22 length] != 0) & expensiveNetworkingAllowed) == 0))
  {
    v69 = TRILogCategory_Server();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v75 = self->_namespaceName;
      anyObject = [(NSSet *)self->_rolloutFactorNames anyObject];
      v77 = anyObject;
      v78 = @"NO";
      *buf = 138544130;
      *&buf[4] = v75;
      v109 = 2114;
      if (expensiveNetworkingAllowed)
      {
        v78 = @"YES";
      }

      v110 = anyObject;
      v111 = 2114;
      v112 = v22;
      v113 = 2114;
      v114 = v78;
      _os_log_error_impl(&dword_26F567000, v69, OS_LOG_TYPE_ERROR, "preventing fetch for (%{public}@, %{public}@) on cellular, resourceAttributionBundleIdentifier: %{public}@ expensiveNetworkingAllowed: %{public}@", buf, 0x2Au);
    }

    [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:1 earliestRetryDate:0 error:0 aggregateProgress:0 context:v7];
    [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:23];
    _currentTaskStatus = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
LABEL_48:
    _currentTaskStatus2 = _currentTaskStatus;

    goto LABEL_63;
  }

  if ([networkOptions allowsCellularAccess])
  {
    v46 = [MEMORY[0x277D73B40] metricWithName:@"allows_cellular_download" integerValue:{objc_msgSend(networkOptions, "allowsCellularAccess")}];
    [(TRIFetchOnDemandFactorsTask *)self _addMetric:v46];
  }

LABEL_25:
  v47 = [TRIAggregateFetchRecordsProgress alloc];
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke_455;
  v105[3] = &unk_279DE4428;
  v105[4] = self;
  v48 = [(TRIAggregateFetchRecordsProgress *)v47 initWithProgressBlock:v105];
  v49 = [(TRIFetchOnDemandFactorsTask *)self _planForFetchingAssetsFromTreatmentRecordsWithContext:v7 downloadOptions:networkOptions updatingAggregateProgress:v48];
  if (v49)
  {
    *buf = 0;
    v104 = 0;
    v50 = [(TRIFetchOnDemandFactorsTask *)self _planForFetchingAssetDiffsWithContext:v7 downloadOptions:networkOptions updatingAggregateProgress:v48 nonDiffableAssetIds:buf unlinkedMAAssetsOnDisk:&v104];
    if (!v50)
    {
      goto LABEL_41;
    }

    if (!*buf)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:602 description:{@"Invalid parameter not satisfying: %@", @"requiredNonDiffableAssetIds"}];
    }

    v51 = [TRIFetchOnDemandFactorsTask _planForFetchingAssetsFromFactorPacksWithContext:"_planForFetchingAssetsFromFactorPacksWithContext:assetDiffFetchPlan:requiredAssetIds:downloadOptions:updatingAggregateProgress:" assetDiffFetchPlan:v7 requiredAssetIds:v50 downloadOptions:? updatingAggregateProgress:?];

    if (!v51)
    {
LABEL_41:
      [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:4];
      _currentTaskStatus2 = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
LABEL_61:

      goto LABEL_62;
    }

    if (![TRICacheDeleteUtils hasSufficientDiskSpaceForDownload:[(TRIFetchOnDemandFactorsTask *)self _requiredDiskSpaceForPlan:v51]])
    {
      v70 = TRILogCategory_Server();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *v103 = 0;
        _os_log_error_impl(&dword_26F567000, v70, OS_LOG_TYPE_ERROR, "Insufficient disk space for on-demand factor fetch. Stopping the task before starting the download", v103, 2u);
      }

      [MEMORY[0x277D73698] notifyDownloadFailedForKey:self->_notificationKey withError:4];
      [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:v48 context:v7];
      [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:24];
      _currentTaskStatus3 = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
      goto LABEL_52;
    }

    paths3 = [v7 paths];
    v85 = [(TRIFetchOnDemandFactorsTask *)self _fetchOptionsWithDownloadOptions:networkOptions paths:paths3];

    v53 = dispatch_group_create();
    *v103 = 0;
    v54 = [(TRIFetchOnDemandFactorsTask *)self _fetchDiffsFromAssetDiffRecordsWithContext:v7 plan:v51 aggregateProgress:v48 downloadSize:v103 options:v85];
    v87 = v54;
    if (v54)
    {
      if (![v54 count])
      {
LABEL_36:
        *v102 = 0;
        [(TRIFetchOnDemandFactorsTask *)self _asyncFetchCKAssetsFromAssetRecordsWithContext:v7 plan:v51 aggregateProgress:v48 downloadSize:v102 options:v85 group:v53];
        v101 = 0;
        v59 = v53;
        [(TRIFetchOnDemandFactorsTask *)self _asyncFetchMAAssetsFromFactorPacksWithContext:v7 plan:v51 aggregateProgress:v48 downloadSize:&v101 options:v85 group:v53];
        v60 = dispatch_group_create();
        v100 = 0;
        [(TRIFetchOnDemandFactorsTask *)self _asyncFetchAssetsFromTreatmentRecordsWithContext:v7 plan:v49 aggregateProgress:v48 downloadSize:&v100 downloadOptions:networkOptions group:v60];
        dispatch_group_enter(v60);
        v61 = dispatch_get_global_queue(17, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke_465;
        block[3] = &unk_279DE4450;
        block[4] = self;
        v51 = v51;
        v95 = v51;
        v96 = v104;
        v83 = v7;
        v97 = v83;
        v81 = v48;
        v98 = v81;
        v62 = v60;
        v99 = v62;
        dispatch_group_notify(v59, v61, block);

        v63 = TRILogCategory_Server();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *v93 = 0;
          _os_log_impl(&dword_26F567000, v63, OS_LOG_TYPE_DEFAULT, "TRIFetchOnDemandFactorsTask waiting for group completion.", v93, 2u);
        }

        [MEMORY[0x277D425A0] waitForGroup:v62];
        v64 = TRILogCategory_Server();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *v93 = 0;
          _os_log_impl(&dword_26F567000, v64, OS_LOG_TYPE_DEFAULT, "TRIFetchOnDemandFactorsTask group complete.", v93, 2u);
        }

        [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:2 earliestRetryDate:0 error:0 aggregateProgress:v81 context:v83];
        _currentTaskStatus3 = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
LABEL_52:
        _currentTaskStatus2 = _currentTaskStatus3;
LABEL_60:

        goto LABEL_61;
      }

      v55 = [*buf setByAddingObjectsFromSet:v87];
      v80 = [(TRIFetchOnDemandFactorsTask *)self _planForFetchingAssetsFromFactorPacksWithContext:v7 assetDiffFetchPlan:v51 requiredAssetIds:v55 downloadOptions:networkOptions updatingAggregateProgress:v48];
      v82 = v53;

      if (!v80)
      {
        [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:4];
        _currentTaskStatus2 = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
LABEL_59:

        v51 = v85;
        goto LABEL_60;
      }

      dictionary = [MEMORY[0x277CBEAC0] dictionary];
      v57 = [v80 copyWithReplacementRecordIdsForDiffableAssetIds:dictionary];
      v58 = [(TRIFetchOnDemandFactorsTask *)self _requiredDiskSpaceForPlan:v57];

      if ([TRICacheDeleteUtils hasSufficientDiskSpaceForDownload:v58])
      {
        v51 = v80;
        v53 = v82;
        goto LABEL_36;
      }

      v71 = TRILogCategory_Server();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *v102 = 0;
        _os_log_error_impl(&dword_26F567000, v71, OS_LOG_TYPE_ERROR, "Fetch plan was changed due to incomplete diff download. We now have insufficient disk space for on-demand factor fetch. Stopping the task early.", v102, 2u);
      }

      [MEMORY[0x277D73698] notifyDownloadFailedForKey:self->_notificationKey withError:4];
      [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:v48 context:v7];
      [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:24];
      _currentTaskStatus2 = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
      v51 = v80;
    }

    else
    {
      [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:10];
      _currentTaskStatus2 = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
      v82 = v53;
    }

    goto LABEL_59;
  }

  [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:6];
  _currentTaskStatus2 = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
LABEL_62:

LABEL_63:
  v72 = v90;
  if (v90)
  {
    (*(v90 + 2))();
    v72 = v90;
  }

  v73 = *MEMORY[0x277D85DE8];

  return _currentTaskStatus2;
}

void __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  atomic_store(0, (*(a1 + 32) + 88));
  v2 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = *MEMORY[0x277CCA450];
  v14[0] = @"on_demand_requested_factor_failed_to_download_without_asset_fetch";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v4 = [v2 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v3];

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 128);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke_2;
  v10[3] = &unk_279DE43E0;
  v10[4] = v6;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  [v7 runWithLockAcquired:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a2 + 40);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if (v8)
        {
          v9 = *(a1 + 32);
          v10 = v9[6];
          v11 = [*(a1 + 40) client];
          [v9 _logOnDemandFactor:v8 metricName:@"on_demand_factor_failed_to_download_by_request" namespaceName:v10 client:v11 error:*(a1 + 48)];
        }

        else
        {
          v11 = TRILogCategory_Server();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 32);
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            *buf = 138412290;
            v21 = v14;
            _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Missing factorname in %@", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke_446(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  v2 = *(a2 + 24);
  *(a2 + 24) = 0;
  v3 = a2;

  v4 = v3[4];
  v3[4] = 0;
}

uint64_t __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke_455(uint64_t result, double a2)
{
  v2 = *(*(result + 32) + 72);
  if (v2)
  {
    return [MEMORY[0x277D73698] notifyDownloadProgressForKey:v2 withProgress:(a2 * 99.0)];
  }

  return result;
}

void __61__TRIFetchOnDemandFactorsTask_runUsingContext_withTaskQueue___block_invoke_465(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentTaskStatus];
  v3 = [v2 runStatus];

  if (!v3)
  {
    v4 = [*(a1 + 40) metadataForRequestedUnlinkedAssets];
    v5 = [v4 mobileAsset];
    v6 = [v5 mutableCopy];

    v7 = [*(a1 + 48) allObjects];
    [v6 addObjectsFromArray:v7];

    v8 = [*(a1 + 40) metadataForRequestedUnlinkedAssets];
    v9 = [v8 copyWithReplacementMobileAsset:v6];

    if (([*(a1 + 32) _updateFactorPacksByMergingAssets:v9 context:*(a1 + 56)] & 1) == 0)
    {
      [*(a1 + 32) _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:*(a1 + 64) context:*(a1 + 56)];
      [*(a1 + 32) _addMetricForFetchOnDemandFactorsTaskError:14];
    }
  }

  v10 = *(a1 + 72);

  dispatch_group_leave(v10);
}

- (unint64_t)_requiredDiskSpaceForPlan:(id)plan
{
  planCopy = plan;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  recordIdsForDiffableAssetIds = [planCopy recordIdsForDiffableAssetIds];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__TRIFetchOnDemandFactorsTask__requiredDiskSpaceForPlan___block_invoke;
  v12[3] = &unk_279DE4478;
  v12[4] = &v13;
  [recordIdsForDiffableAssetIds enumerateKeysAndObjectsUsingBlock:v12];

  recordIdsForNonDiffableAssetIds = [planCopy recordIdsForNonDiffableAssetIds];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__TRIFetchOnDemandFactorsTask__requiredDiskSpaceForPlan___block_invoke_2;
  v11[3] = &unk_279DE4478;
  v11[4] = &v13;
  [recordIdsForNonDiffableAssetIds enumerateKeysAndObjectsUsingBlock:v11];

  metadataForRequestedUnlinkedAssets = [planCopy metadataForRequestedUnlinkedAssets];
  mobileAsset = [metadataForRequestedUnlinkedAssets mobileAsset];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__TRIFetchOnDemandFactorsTask__requiredDiskSpaceForPlan___block_invoke_3;
  v10[3] = &unk_279DE44A0;
  v10[4] = &v13;
  [mobileAsset enumerateObjectsUsingBlock:v10];

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __57__TRIFetchOnDemandFactorsTask__requiredDiskSpaceForPlan___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 downloadSize];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t __57__TRIFetchOnDemandFactorsTask__requiredDiskSpaceForPlan___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 downloadSize];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void __57__TRIFetchOnDemandFactorsTask__requiredDiskSpaceForPlan___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 metadata];
  *(*(*(a1 + 32) + 8) + 24) += [v3 downloadSize];
}

- (void)_completeTaskWithStatus:(int)status earliestRetryDate:(id)date error:(id)error aggregateProgress:(id)progress context:(id)context
{
  dateCopy = date;
  errorCopy = error;
  progressCopy = progress;
  lock = self->_lock;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __105__TRIFetchOnDemandFactorsTask__completeTaskWithStatus_earliestRetryDate_error_aggregateProgress_context___block_invoke;
  v18[3] = &unk_279DE44C8;
  statusCopy = status;
  v18[4] = self;
  v19 = errorCopy;
  v20 = dateCopy;
  v21 = progressCopy;
  v15 = progressCopy;
  v16 = dateCopy;
  v17 = errorCopy;
  [(_PASLock *)lock runWithLockAcquired:v18];
}

void __105__TRIFetchOnDemandFactorsTask__completeTaskWithStatus_earliestRetryDate_error_aggregateProgress_context___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 64);
  if (v4 == 2)
  {
    goto LABEL_16;
  }

  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Early termination of TRIFetchOnDemandFactorsTask. Cancelling remaining fetch operations", buf, 2u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v3[1];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v27 + 1) + 8 * i) cancel];
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v8);
  }

  v11 = *(a1 + 32);
  if (*(v11 + 144))
  {
    v12 = 1;
  }

  else
  {
    v12 = [TRICKNativeArtifactProvider isActivityDeferralError:*(a1 + 40)];
    v11 = *(a1 + 32);
  }

  *(v11 + 144) = v12;
  v4 = *(a1 + 64);
  if (v4 != 3 || *(v3 + 4) == 3)
  {
LABEL_16:
    if (!*(v3 + 4))
    {
      v14 = v3[3];
      *(v3 + 4) = v4;
      if (!v14)
      {
        objc_storeStrong(v3 + 3, *(a1 + 48));
      }

      if (!v3[4])
      {
        objc_storeStrong(v3 + 4, *(a1 + 40));
      }

      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        *buf = 138543618;
        v32 = v16;
        v33 = 2114;
        v34 = v3;
        _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ complete with %{public}@", buf, 0x16u);
      }

      v17 = *(a1 + 64);
      if (v17 == 2)
      {
        [MEMORY[0x277D73790] notifyUpdateForNamespaceName:*(*(a1 + 32) + 48)];
        v18 = *(*(a1 + 32) + 72);
        if (v18)
        {
          [MEMORY[0x277D73698] notifyDownloadProgressForKey:v18 withProgress:100];
          [MEMORY[0x277D73698] notifyDownloadCompletedForKey:*(*(a1 + 32) + 72)];
        }

        v17 = *(a1 + 64);
      }

      if (v17 == 4)
      {
        v19 = *(*(a1 + 32) + 72);
        if (!v19)
        {
          goto LABEL_17;
        }

        [MEMORY[0x277D73698] notifyDownloadFailedForKey:v19 withError:3];
        v17 = *(a1 + 64);
      }

      if (v17 == 1)
      {
        v20 = *(*(a1 + 32) + 72);
        if (v20)
        {
          v21 = *(a1 + 56);
          if (v21)
          {
            [v21 fractionCompleted];
            v23 = (v22 * 100.0);
            v20 = *(*(a1 + 32) + 72);
          }

          else
          {
            v23 = 0;
          }

          [MEMORY[0x277D73698] notifyDownloadStalledForKey:v20 withProgress:{v23, v27}];
        }
      }
    }
  }

  else
  {
    *(v3 + 4) = 3;
    objc_storeStrong(v3 + 3, *(a1 + 48));
    objc_storeStrong(v3 + 4, *(a1 + 40));
    v24 = TRILogCategory_Server();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 32);
      *buf = 138543618;
      v32 = v25;
      v33 = 2114;
      v34 = v3;
      _os_log_impl(&dword_26F567000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ failed with %{public}@", buf, 0x16u);
    }

    v26 = *(*(a1 + 32) + 72);
    if (v26)
    {
      [MEMORY[0x277D73698] notifyDownloadFailedForKey:v26 withError:0];
    }
  }

LABEL_17:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_currentTaskStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__50;
  v10 = __Block_byref_object_dispose__50;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__TRIFetchOnDemandFactorsTask__currentTaskStatus__block_invoke;
  v5[3] = &unk_279DE44F0;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __49__TRIFetchOnDemandFactorsTask__currentTaskStatus__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [TRITaskRunResult alloc];
  v5 = *(v3 + 4);
  v6 = v3[3];

  v7 = [(TRITaskRunResult *)v4 initWithRunStatus:v5 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:v6];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return MEMORY[0x2821F96F8]();
}

- (id)_planForFetchingAssetsFromTreatmentRecordsWithContext:(id)context downloadOptions:(id)options updatingAggregateProgress:(id)progress
{
  v132 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  optionsCopy = options;
  progressCopy = progress;
  context = objc_autoreleasePoolPush();
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Beginning plan for fetching assets from treatment records.", buf, 2u);
  }

  v74 = dispatch_group_create();
  v8 = objc_alloc(MEMORY[0x277D425F8]);
  v9 = objc_opt_new();
  v76 = [v8 initWithGuardedData:v9];

  v73 = [[TRIFetchOptions alloc] initWithDownloadOptions:optionsCopy cacheDeleteAvailableSpaceClass:&unk_287FC4CF0];
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = self->_assetIndexesByTreatment;
  v10 = [(NSDictionary *)obj countByEnumeratingWithState:&v117 objects:v131 count:16];
  if (v10)
  {
    v11 = *v118;
    v12 = MEMORY[0x277D85DD0];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v118 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v117 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        dispatch_group_enter(v74);
        artifactProvider = self->_artifactProvider;
        v110[0] = v12;
        v110[1] = 3221225472;
        v110[2] = __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke;
        v110[3] = &unk_279DE4540;
        v110[4] = self;
        v111 = progressCopy;
        v112 = contextCopy;
        v116 = a2;
        v113 = v76;
        v114 = v14;
        v115 = v74;
        v17 = [(TRIArtifactProvider *)artifactProvider fetchTreatmentWithId:v14 options:v73 completion:v110];
        lock = self->_lock;
        v108[0] = v12;
        v108[1] = 3221225472;
        v108[2] = __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_476;
        v108[3] = &unk_279DE43B8;
        v109 = v17;
        v19 = v17;
        [(_PASLock *)lock runWithLockAcquired:v108];

        objc_autoreleasePoolPop(v15);
      }

      v10 = [(NSDictionary *)obj countByEnumeratingWithState:&v117 objects:v131 count:16];
    }

    while (v10);
  }

  [MEMORY[0x277D425A0] waitForGroup:v74];
  _currentTaskStatus = [(TRIFetchOnDemandFactorsTask *)self _currentTaskStatus];
  v21 = [_currentTaskStatus runStatus] == 0;

  if (v21)
  {
    v70 = objc_opt_new();
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v23 = self->_assetIndexesByTreatment;
    v24 = [(NSDictionary *)v23 countByEnumeratingWithState:&v104 objects:v130 count:16];
    if (v24)
    {
      v25 = *v105;
      while (2)
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v105 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v104 + 1) + 8 * j);
          v28 = objc_autoreleasePoolPush();
          v29 = [TRIClientTreatmentStorage alloc];
          paths = [contextCopy paths];
          v31 = [(TRIClientTreatmentStorage *)v29 initWithPaths:paths];

          v32 = [(TRIClientTreatmentStorage *)v31 loadTreatmentWithTreatmentId:v27 isFilePresent:0];
          v33 = v32;
          if (!v32)
          {
            [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:progressCopy context:contextCopy];
            [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:13];

            objc_autoreleasePoolPop(v28);
LABEL_39:
            v22 = 0;
            goto LABEL_44;
          }

          unlinkedOnDemandAssets = [v32 unlinkedOnDemandAssets];
          if (unlinkedOnDemandAssets)
          {
            v35 = [(NSDictionary *)self->_assetIndexesByTreatment objectForKeyedSubscript:v27];
            if (!v35)
            {
              currentHandler = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:932 description:{@"Expression was unexpectedly nil/false: %@", @"self->_assetIndexesByTreatment[treatmentId]", context}];
            }

            v100[0] = MEMORY[0x277D85DD0];
            v100[1] = 3221225472;
            v100[2] = __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_2_481;
            v100[3] = &unk_279DE4568;
            v103 = a2;
            v100[4] = self;
            v101 = v35;
            v102 = v70;
            v36 = v35;
            [unlinkedOnDemandAssets enumerateKeysAndObjectsUsingBlock:v100];
          }

          else
          {
            [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:progressCopy context:contextCopy];
            [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:12];
          }

          objc_autoreleasePoolPop(v28);
          if (!unlinkedOnDemandAssets)
          {
            goto LABEL_39;
          }
        }

        v24 = [(NSDictionary *)v23 countByEnumeratingWithState:&v104 objects:v130 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v37 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSDictionary count](self->_assetIndexesByTreatment, "count")}];
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v38 = self->_assetIndexesByTreatment;
    obja = [(NSDictionary *)v38 countByEnumeratingWithState:&v96 objects:v129 count:16];
    if (obja)
    {
      v39 = 0;
      v69 = *v97;
      do
      {
        for (k = 0; k != obja; k = k + 1)
        {
          if (*v97 != v69)
          {
            objc_enumerationMutation(v38);
          }

          v41 = *(*(&v96 + 1) + 8 * k);
          v42 = objc_autoreleasePoolPush();
          v43 = objc_opt_new();
          v44 = [TRIAssetStore alloc];
          paths2 = [contextCopy paths];
          v46 = [(TRIAssetStore *)v44 initWithPaths:paths2];

          v91[0] = MEMORY[0x277D85DD0];
          v91[1] = 3221225472;
          v91[2] = __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_3;
          v91[3] = &unk_279DE4568;
          v92 = v46;
          v47 = v43;
          v93 = v47;
          selfCopy = self;
          v95 = a2;
          v48 = v46;
          [v70 enumerateKeysAndObjectsUsingBlock:v91];
          v49 = v47;

          if ([v49 count])
          {
            unsafeGuardedData = [v76 unsafeGuardedData];
            v51 = [unsafeGuardedData objectForKeyedSubscript:v41];

            if (!v51)
            {
              currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:959 description:{@"Expression was unexpectedly nil/false: %@", @"[guardedRecordIdForTreatment unsafeGuardedData][treatmentId]"}];
            }

            v52 = [[TRITreatmentRecordFetchPlan alloc] initWithRecordId:v51 assetIndexes:v49];
            [v37 setObject:v52 forKeyedSubscript:v41];
          }

          v53 = [v49 count];

          objc_autoreleasePoolPop(v42);
          v39 += v53;
        }

        obja = [(NSDictionary *)v38 countByEnumeratingWithState:&v96 objects:v129 count:16];
      }

      while (obja);
    }

    else
    {
      v39 = 0;
    }

    v55 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v37, "count")}];
    v87 = 0;
    v88 = &v87;
    v89 = 0x2020000000;
    v90 = 0;
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_4;
    v82[3] = &unk_279DE4590;
    v86 = a2;
    v82[4] = self;
    v23 = v37;
    v83 = v23;
    v56 = v55;
    v84 = v56;
    v85 = &v87;
    [v70 enumerateKeysAndObjectsUsingBlock:v82];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_490;
    v80[3] = &unk_279DE45B8;
    v81 = progressCopy;
    [v56 enumerateKeysAndObjectsUsingBlock:v80];
    v57 = TRILogCategory_Server();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = [v70 count];
      v59 = [(NSDictionary *)self->_assetIndexesByTreatment count];
      v60 = v88[3];
      *buf = 134218752;
      v122 = v58;
      v123 = 2048;
      v124 = v59;
      v125 = 2048;
      v126 = v39;
      v127 = 2048;
      v128 = v60 / 1000000.0;
      _os_log_impl(&dword_26F567000, v57, OS_LOG_TYPE_DEFAULT, "Treatment fetch planning phase complete.  On-demand fetch task will result in linking %tu assets into %tu treatment(s); %tu assets require download.  Total download size for Treatment record assets: %.2f MB", buf, 0x2Au);
    }

    v61 = [TRIGenericUniqueRequiredAssets alloc];
    v62 = objc_opt_new();
    v63 = [(TRIGenericUniqueRequiredAssets *)v61 initWithCloudKit:v70 mobileAsset:v62];

    v22 = [[TRITreatmentAssetFetchPlan alloc] initWithMetadataForRequestedUnlinkedAssets:v63 fetchPlansForTreatmentIds:v23];
    _Block_object_dispose(&v87, 8);

LABEL_44:
  }

  else
  {
    v22 = 0;
  }

  objc_autoreleasePoolPop(context);
  v64 = *MEMORY[0x277D85DE8];

  return v22;
}

void __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v31 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_15;
      }

      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v20 = 4;
      v21 = 0;
      v22 = 0;
LABEL_14:
      [v17 _completeTaskWithStatus:v20 earliestRetryDate:v21 error:v22 aggregateProgress:v18 context:v19];
      goto LABEL_15;
    }

    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v20 = 3;
    v21 = 0;
LABEL_13:
    v22 = v15;
    goto LABEL_14;
  }

  switch(a2)
  {
    case 2:
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v20 = 1;
      v21 = v14;
      goto LABEL_13;
    case 3:
      v23 = [MEMORY[0x277CCA890] currentHandler];
      [v23 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:859 description:{@"Unexpected TRIFetchStatus %tu", 3}];

      break;
    case 4:
      if (v12)
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_2;
        v27[3] = &unk_279DE4518;
        v16 = *(a1 + 56);
        v27[4] = *(a1 + 64);
        v28 = v12;
        [v16 runWithLockAcquired:v27];
      }

      else
      {
        v25 = TRILogCategory_Server();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = *(a1 + 64);
          *buf = 138412290;
          v30 = v26;
          _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "CloudKit fetch succeeded, but a valid treatment artifact was not obtained for treatment %@.", buf, 0xCu);
        }

        [*(a1 + 32) _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:*(a1 + 40) context:*(a1 + 48)];
        [*(a1 + 32) _addMetricForFetchOnDemandFactorsTaskError:25];
      }

      break;
  }

LABEL_15:
  dispatch_group_leave(*(a1 + 72));

  v24 = *MEMORY[0x277D85DE8];
}

void __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_2_481(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 treatmentIndex];
  if (!v6)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:934 description:{@"Expression was unexpectedly nil/false: %@", @"metadata.treatmentIndex"}];
  }

  v7 = [v6 index];

  if ([*(a1 + 40) containsIndex:v7])
  {
    [*(a1 + 48) setObject:v5 forKeyedSubscript:v9];
  }
}

uint64_t __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  if (([*(a1 + 32) hasAssetWithIdentifier:a2 type:0] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [v9 treatmentIndex];
    if (!v6)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:*(a1 + 56) object:*(a1 + 48) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:953 description:{@"Expression was unexpectedly nil/false: %@", @"metadata.treatmentIndex"}];
    }

    [v5 addIndex:{objc_msgSend(v6, "index")}];
  }

  return MEMORY[0x2821F96F8]();
}

void __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_4(void *a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v4 = [v17 treatmentIndex];
  if (!v4)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a1[8] object:a1[4] file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:973 description:{@"Expression was unexpectedly nil/false: %@", @"metadata.treatmentIndex"}];
  }

  v5 = a1[5];
  v6 = [v4 treatmentId];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 assetIndexes];
    v9 = [v8 containsIndex:{objc_msgSend(v4, "index")}];

    if (v9)
    {
      v10 = a1[6];
      v11 = [v7 recordId];
      v12 = [v10 objectForKeyedSubscript:v11];

      if (!v12)
      {
        v12 = &unk_287FC4D08;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v17, "downloadSize") + objc_msgSend(v12, "unsignedLongLongValue")}];
      v14 = a1[6];
      v15 = [v7 recordId];
      [v14 setObject:v13 forKeyedSubscript:v15];

      *(*(a1[7] + 8) + 24) += [v17 downloadSize];
    }
  }
}

void __127__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromTreatmentRecordsWithContext_downloadOptions_updatingAggregateProgress___block_invoke_490(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 registerRecordId:v5 withExpectedSize:{objc_msgSend(a3, "unsignedLongLongValue")}];
}

- (id)_planForFetchingAssetDiffsWithContext:(id)context downloadOptions:(id)options updatingAggregateProgress:(id)progress nonDiffableAssetIds:(id *)ids unlinkedMAAssetsOnDisk:(id *)disk
{
  v117 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  optionsCopy = options;
  progressCopy = progress;
  context = objc_autoreleasePoolPush();
  v12 = [TRIAssetStore alloc];
  paths = [contextCopy paths];
  v14 = [(TRIAssetStore *)v12 initWithPaths:paths];

  v15 = objc_opt_new();
  v16 = [TRIFactorPackStorage alloc];
  paths2 = [contextCopy paths];
  v18 = [(TRIFactorPackStorage *)v16 initWithPaths:paths2];

  v19 = [TRIFBFactorPackStorage alloc];
  paths3 = [contextCopy paths];
  v21 = [(TRIFBFactorPackStorage *)v19 initWithPaths:paths3];

  LOBYTE(paths3) = _os_feature_enabled_impl();
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__50;
  v111 = __Block_byref_object_dispose__50;
  v112 = objc_opt_new();
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = __Block_byref_object_copy__50;
  v105 = __Block_byref_object_dispose__50;
  v106 = objc_opt_new();
  assetIdsByFactorPack = self->_assetIdsByFactorPack;
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke;
  v90[3] = &unk_279DE4658;
  v90[4] = self;
  v100 = paths3;
  v55 = v21;
  v91 = v55;
  v97 = &v107;
  v54 = v18;
  v92 = v54;
  v61 = contextCopy;
  v93 = v61;
  v60 = v14;
  v94 = v60;
  v53 = v15;
  v95 = v53;
  diskCopy = disk;
  v23 = progressCopy;
  v96 = v23;
  v98 = &v101;
  [(NSDictionary *)assetIdsByFactorPack enumerateKeysAndObjectsUsingBlock:v90];
  if (v108[5])
  {
    v24 = objc_opt_new();
    v25 = objc_opt_new();
    v26 = v108[5];
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_3;
    v86[3] = &unk_279DE4680;
    v27 = v60;
    v87 = v27;
    v28 = v24;
    v88 = v28;
    v52 = v25;
    v89 = v52;
    [v26 enumerateObjectsUsingBlock:v86];
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v29, OS_LOG_TYPE_DEFAULT, "Beginning plan for fetching asset diffs from AssetDiff records for use in factor packs.", buf, 2u);
    }

    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_499;
    v84[3] = &unk_279DE28B0;
    v85 = v27;
    v58 = MEMORY[0x2743948D0](v84);
    v30 = [[TRIFetchOptions alloc] initWithDownloadOptions:optionsCopy cacheDeleteAvailableSpaceClass:&unk_287FC4D20];
    *buf = 0;
    v79 = buf;
    v80 = 0x3032000000;
    v81 = __Block_byref_object_copy__50;
    v82 = __Block_byref_object_dispose__50;
    v83 = 0;
    v31 = dispatch_semaphore_create(0);
    artifactProvider = self->_artifactProvider;
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_503;
    v72[3] = &unk_279DE46A8;
    v72[4] = self;
    v33 = v23;
    v73 = v33;
    v76 = buf;
    v77 = a2;
    v74 = v61;
    v34 = v31;
    v75 = v34;
    v35 = [(TRIArtifactProvider *)artifactProvider fetchDiffSourceRecordIdsWithTargetAssetIds:v52 isAcceptableSourceAssetId:v58 options:v30 completion:v72];
    lock = self->_lock;
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_2_505;
    v70[3] = &unk_279DE43B8;
    v37 = v35;
    v71 = v37;
    [(_PASLock *)lock runWithLockAcquired:v70];
    [MEMORY[0x277D425A0] waitForSemaphore:v34];
    if (*(v79 + 5))
    {
      v38 = [v28 mutableCopy];
      v66 = 0;
      v67 = &v66;
      v68 = 0x2020000000;
      v69 = 0;
      v39 = *(v79 + 5);
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_3_506;
      v62[3] = &unk_279DE46D0;
      v40 = v38;
      v63 = v40;
      v64 = v33;
      v65 = &v66;
      [v39 enumerateKeysAndObjectsUsingBlock:v62];
      v41 = TRILogCategory_Server();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [*(v79 + 5) count];
        v43 = v67[3] / 1000000.0;
        *v113 = 134218240;
        v114 = v42;
        v115 = 2048;
        v116 = v43;
        _os_log_impl(&dword_26F567000, v41, OS_LOG_TYPE_DEFAULT, "Factor pack asset diff fetch planning phase complete.  On-demand fetch task will construct %tu assets from asset diffs.  Total factor pack asset diff download size: %.2f MB", v113, 0x16u);
      }

      objc_storeStrong(ids, v38);
      v44 = [TRIGenericRequiredAssets alloc];
      v45 = [(TRIGenericRequiredAssets *)v44 initWithCloudKit:v108[5] mobileAsset:v102[5]];
      v46 = [TRIFactorPackAssetFetchPlan alloc];
      v47 = [(TRIFactorPackAssetFetchPlan *)v46 initWithMetadataForRequestedUnlinkedAssets:v45 recordIdsForDiffableAssetIds:*(v79 + 5) recordIdsForNonDiffableAssetIds:MEMORY[0x277CBEC10]];

      _Block_object_dispose(&v66, 8);
    }

    else
    {
      v47 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(TRIFetchOnDemandFactorsTask *)self _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:v23 context:v61];
    [(TRIFetchOnDemandFactorsTask *)self _addMetricForFetchOnDemandFactorsTaskError:11];
    v47 = 0;
  }

  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v107, 8);

  objc_autoreleasePoolPop(context);
  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

void __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_new();
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_2;
  v53[3] = &unk_279DE45E0;
  v9 = v8;
  v10 = *(a1 + 32);
  v54 = v9;
  v55 = v10;
  [v7 enumerateObjectsUsingBlock:v53];

  v46 = [TRIClientFactorPackUtils aliasesInNamespace:*(*(a1 + 32) + 48)];
  if (*(a1 + 112) != 1)
  {
    goto LABEL_14;
  }

  v11 = [*(a1 + 40) pathForFactorLevelsWithFactorPackId:v6 namespaceName:*(*(a1 + 32) + 48)];
  if (!v11)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v42 = *(*(a1 + 32) + 48);
      *buf = 138412546;
      v57 = v42;
      v58 = 2112;
      v59 = v6;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Could not find path for flatbuffers for namespace:%@ and factorpackId:%@", buf, 0x16u);
    }

    v12 = 0;
    goto LABEL_13;
  }

  v12 = v11;
  v13 = [v11 stringByAppendingPathComponent:@"factorPack.fb"];
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v14 fileExistsAtPath:v13];

  if (!v15)
  {
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v43 = *(*(a1 + 32) + 48);
      *buf = 138412290;
      v57 = v43;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "flatbuffer file missing for namespace name:%@", buf, 0xCu);
    }

LABEL_13:
LABEL_14:
    v16 = 0;
    v18 = 0;
    goto LABEL_15;
  }

  v16 = v12;
  v17 = [*(a1 + 40) loadFactorLevelsWithDir:v16 bufferSize:0];
  if (!v17)
  {
    v40 = *(*(a1 + 88) + 8);
    v41 = *(v40 + 40);
    *(v40 + 40) = 0;

    *a4 = 1;
    v18 = v16;
    goto LABEL_30;
  }

  v18 = v17;

  if (*(a1 + 112))
  {
    v44 = v9;
    v13 = 0;
    goto LABEL_21;
  }

LABEL_15:
  v20 = v16;
  v16 = [*(a1 + 48) pathForFactorPackWithId:v6 namespaceName:*(*(a1 + 32) + 48)];

  v21 = [*(a1 + 48) loadFactorPackWithId:v6 namespaceName:*(*(a1 + 32) + 48)];
  v13 = v21;
  if (v16)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = *(*(a1 + 88) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = 0;

    *a4 = 1;
    goto LABEL_30;
  }

  v44 = v9;
LABEL_21:
  v25 = [*(a1 + 56) keyValueStore];
  v26 = [TRINamespaceFactorSubscriptionSettings settingsWithKeyValueStore:v25];

  if (v26)
  {
    v27 = [v26 subscribedFactorsForNamespaceName:*(*(a1 + 32) + 48)];
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
  }

  v28 = [TRIClientFactorPackUtils unlinkedOnDemandAssetsWithFactorPack:v13 flatbufferFactorLevels:v18 factorPackPath:v16 assetStore:*(a1 + 64) maProvider:*(a1 + 72) aliasToUnaliasMap:v46 subscribedFactors:v27 unlinkedMAAssetsOnDisk:*(a1 + 104)];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 cloudKit];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_497;
    v50[3] = &unk_279DE4608;
    v31 = v44;
    v32 = *(a1 + 88);
    v51 = v31;
    v52 = v32;
    [v30 enumerateObjectsUsingBlock:v50];

    v33 = [v29 mobileAsset];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_2_498;
    v47[3] = &unk_279DE4630;
    v34 = v31;
    v35 = *(a1 + 96);
    v48 = v34;
    v49 = v35;
    [v33 enumerateObjectsUsingBlock:v47];
  }

  else
  {
    v36 = TRILogCategory_Server();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "Failed to enumerate unlinked on-demand assets", buf, 2u);
    }

    [*(a1 + 32) _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:*(a1 + 80) context:*(a1 + 56)];
    [*(a1 + 32) _addMetricForFetchOnDemandFactorsTaskError:8];
    v37 = *(*(a1 + 88) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = 0;

    *a4 = 1;
  }

  v9 = v44;
LABEL_30:

  v39 = *MEMORY[0x277D85DE8];
}

void __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 factorName];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 factorName];
    [v5 addObject:v6];

    v7 = *(*(a1 + 40) + 136);
    v8 = [v3 assetId];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9 && ([v3 factorName], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, (v11 & 1) == 0))
    {
      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v3 assetId];
        v17 = [v3 factorName];
        v19 = 138543874;
        v20 = v16;
        v21 = 2114;
        v22 = v9;
        v23 = 2114;
        v24 = v17;
        _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Warning:same assetId %{public}@ with different factor names %{public}@ and %{public}@; ignoring the latter", &v19, 0x20u);
      }
    }

    else
    {
      v12 = [v3 factorName];
      v13 = *(*(a1 + 40) + 136);
      v14 = [v3 assetId];
      [v13 setObject:v12 forKeyedSubscript:v14];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_497(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 factorName];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }
}

void __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_2_498(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 factorName];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }
}

void __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v11 = v3;
  v5 = [v3 assetId];
  LOBYTE(v4) = [v4 hasAssetWithIdentifier:v5 type:0];

  if ((v4 & 1) == 0)
  {
    v6 = a1[5];
    v7 = [v11 assetId];
    [v6 addObject:v7];

    v8 = [v11 metadata];
    LODWORD(v7) = [v8 type];

    if (v7 == 1)
    {
      v9 = a1[6];
      v10 = [v11 assetId];
      [v9 addObject:v10];
    }
  }
}

void __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_503(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v19 = a3;
  v9 = a4;
  v10 = a5;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_17;
      }

      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = 4;
      v16 = 0;
      v17 = 0;
      goto LABEL_16;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = 3;
    v16 = 0;
LABEL_15:
    v17 = v10;
LABEL_16:
    [v12 _completeTaskWithStatus:v15 earliestRetryDate:v16 error:v17 aggregateProgress:v13 context:v14];
    goto LABEL_17;
  }

  switch(a2)
  {
    case 2:
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = 1;
      v16 = v9;
      goto LABEL_15;
    case 3:
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1182 description:{@"Unexpected TRIFetchStatus %tu", 3}];

      break;
    case 4:
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        v11 = MEMORY[0x277CBEC10];
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v11);
      break;
  }

LABEL_17:
  dispatch_semaphore_signal(*(a1 + 56));
}

void __154__TRIFetchOnDemandFactorsTask__planForFetchingAssetDiffsWithContext_downloadOptions_updatingAggregateProgress_nonDiffableAssetIds_unlinkedMAAssetsOnDisk___block_invoke_3_506(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  [v5 removeObject:a2];
  v7 = a1[5];
  v8 = [v6 recordId];
  [v7 registerRecordId:v8 withExpectedSize:{objc_msgSend(v6, "downloadSize")}];

  v9 = [v6 downloadSize];
  *(*(a1[6] + 8) + 24) += v9;
}

- (id)_planForFetchingAssetsFromFactorPacksWithContext:(id)context assetDiffFetchPlan:(id)plan requiredAssetIds:(id)ids downloadOptions:(id)options updatingAggregateProgress:(id)progress
{
  v110 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  planCopy = plan;
  idsCopy = ids;
  optionsCopy = options;
  progressCopy = progress;
  context = objc_autoreleasePoolPush();
  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Beginning plan for fetching assets from Asset records for use in factor packs.", buf, 2u);
  }

  v58 = [[TRIFetchOptions alloc] initWithDownloadOptions:optionsCopy cacheDeleteAvailableSpaceClass:&unk_287FC4D20];
  v15 = dispatch_semaphore_create(0);
  *buf = 0;
  v96 = buf;
  v97 = 0x3032000000;
  v98 = __Block_byref_object_copy__50;
  v99 = __Block_byref_object_dispose__50;
  v100 = 0;
  artifactProvider = self->_artifactProvider;
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __158__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromFactorPacksWithContext_assetDiffFetchPlan_requiredAssetIds_downloadOptions_updatingAggregateProgress___block_invoke;
  v88[3] = &unk_279DE46F8;
  v88[4] = self;
  v57 = progressCopy;
  v89 = v57;
  v56 = contextCopy;
  v90 = v56;
  v94 = a2;
  v91 = idsCopy;
  v93 = buf;
  v17 = v15;
  v92 = v17;
  v61 = v91;
  v18 = [(TRIArtifactProvider *)artifactProvider fetchRecordIdsForAssetsWithIds:v91 options:v58 completion:v88];
  lock = self->_lock;
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __158__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromFactorPacksWithContext_assetDiffFetchPlan_requiredAssetIds_downloadOptions_updatingAggregateProgress___block_invoke_2;
  v86[3] = &unk_279DE43B8;
  v20 = v18;
  v87 = v20;
  [(_PASLock *)lock runWithLockAcquired:v86];
  [MEMORY[0x277D425A0] waitForSemaphore:v17];
  v52 = v17;
  v54 = v20;
  if (*(v96 + 5))
  {
    metadataForRequestedUnlinkedAssets = [planCopy metadataForRequestedUnlinkedAssets];
    v65 = [TRIClientFactorPackUtils uniqueAssets:metadataForRequestedUnlinkedAssets];

    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 0;
    v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v61, "count")}];
    v64 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v61, "count")}];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v61;
    v23 = [obj countByEnumeratingWithState:&v78 objects:v109 count:16];
    if (v23)
    {
      v24 = *v79;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v79 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v78 + 1) + 8 * i);
          v27 = [*(v96 + 5) objectForKeyedSubscript:v26];
          if (!v27)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1282 description:{@"Expression was unexpectedly nil/false: %@", @"recordIdsForAssetIds[assetId]"}];
          }

          v28 = [v22 objectForKeyedSubscript:v27];
          if (v28)
          {
            v29 = v28;
          }

          else
          {
            v29 = &unk_287FC4D08;
          }

          cloudKit = [v65 cloudKit];
          v31 = [cloudKit objectForKeyedSubscript:v26];

          if (!v31)
          {
            currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1287 description:{@"Expression was unexpectedly nil/false: %@", @"uniquePlannedAssets.cloudKit[assetId]"}];
          }

          downloadSize = [v31 downloadSize];

          v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v29, "unsignedLongLongValue") + downloadSize}];
          [v22 setObject:v33 forKeyedSubscript:v27];
          v34 = [[TRISizedCKRecordID alloc] initWithRecordId:v27 downloadSize:downloadSize];
          [v64 setObject:v34 forKeyedSubscript:v26];

          v83[3] += downloadSize;
        }

        v23 = [obj countByEnumeratingWithState:&v78 objects:v109 count:16];
      }

      while (v23);
    }

    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __158__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromFactorPacksWithContext_assetDiffFetchPlan_requiredAssetIds_downloadOptions_updatingAggregateProgress___block_invoke_3;
    v76[3] = &unk_279DE45B8;
    v37 = v57;
    v77 = v37;
    [v22 enumerateKeysAndObjectsUsingBlock:v76];
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v75 = 1;
    mobileAsset = [v65 mobileAsset];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __158__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromFactorPacksWithContext_assetDiffFetchPlan_requiredAssetIds_downloadOptions_updatingAggregateProgress___block_invoke_4;
    v66[3] = &unk_279DE4720;
    v70 = &v82;
    v67 = v37;
    selfCopy = self;
    v69 = v56;
    v71 = &v72;
    [mobileAsset enumerateKeysAndObjectsUsingBlock:v66];

    if (v73[3])
    {
      v39 = TRILogCategory_Server();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        metadataForRequestedUnlinkedAssets2 = [planCopy metadataForRequestedUnlinkedAssets];
        cloudKit2 = [metadataForRequestedUnlinkedAssets2 cloudKit];
        v42 = [cloudKit2 count];
        metadataForRequestedUnlinkedAssets3 = [planCopy metadataForRequestedUnlinkedAssets];
        mobileAsset2 = [metadataForRequestedUnlinkedAssets3 mobileAsset];
        v45 = [mobileAsset2 count];
        v46 = [(NSDictionary *)self->_assetIdsByFactorPack count];
        v47 = [obj count];
        v48 = v83[3];
        *v101 = 134218752;
        v102 = v45 + v42;
        v103 = 2048;
        v104 = v46;
        v105 = 2048;
        v106 = v47;
        v107 = 2048;
        v108 = v48 / 1000000.0;
        _os_log_impl(&dword_26F567000, v39, OS_LOG_TYPE_DEFAULT, "Factor pack asset fetch planning phase complete.  On-demand fetch task will result in linking %lu assets into %tu factor pack(s); %tu assets require full (unpatched) asset download.  Total factor pack unpatched asset download size: %.2f MB", v101, 0x2Au);
      }

      v49 = [planCopy copyWithReplacementRecordIdsForNonDiffableAssetIds:v64];
    }

    else
    {
      v49 = 0;
    }

    _Block_object_dispose(&v72, 8);
    _Block_object_dispose(&v82, 8);
  }

  else
  {
    v49 = 0;
  }

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(context);

  v50 = *MEMORY[0x277D85DE8];

  return v49;
}

void __158__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromFactorPacksWithContext_assetDiffFetchPlan_requiredAssetIds_downloadOptions_updatingAggregateProgress___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v23 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_18;
      }

      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v17 = 4;
      v18 = 0;
      v19 = 0;
      goto LABEL_17;
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = 3;
    v18 = 0;
LABEL_16:
    v19 = v11;
LABEL_17:
    [v14 _completeTaskWithStatus:v17 earliestRetryDate:v18 error:v19 aggregateProgress:v15 context:v16];
    goto LABEL_18;
  }

  switch(a2)
  {
    case 2:
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v17 = 1;
      v18 = v10;
      goto LABEL_16;
    case 3:
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1250 description:{@"Unexpected TRIFetchStatus %tu", 3}];

      break;
    case 4:
      v12 = v23;
      if (!v23)
      {
        v21 = [MEMORY[0x277CCA890] currentHandler];
        [v21 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1254 description:{@"Invalid parameter not satisfying: %@", @"innerRecordIdsForAssetIds"}];

        v12 = 0;
      }

      v13 = [v12 count];
      if (v13 != [*(a1 + 56) count])
      {
        v22 = [MEMORY[0x277CCA890] currentHandler];
        [v22 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1255 description:{@"Invalid parameter not satisfying: %@", @"innerRecordIdsForAssetIds.count == requiredAssetIds.count"}];
      }

      objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
      break;
  }

LABEL_18:
  dispatch_semaphore_signal(*(a1 + 64));
}

void __158__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromFactorPacksWithContext_assetDiffFetchPlan_requiredAssetIds_downloadOptions_updatingAggregateProgress___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = a2;
  [v5 unregisterRecordId:v9];
  v7 = *(a1 + 32);
  v8 = [v6 unsignedLongLongValue];

  [v7 registerRecordId:v9 withExpectedSize:v8];
}

void __158__TRIFetchOnDemandFactorsTask__planForFetchingAssetsFromFactorPacksWithContext_assetDiffFetchPlan_requiredAssetIds_downloadOptions_updatingAggregateProgress___block_invoke_4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a3 downloadSize];
  if (!v8)
  {
    location = 0;
    v11 = objc_opt_new();
    v12 = [v11 createAutoAssetWithId:v7 decryptionKey:0 error:&location];
    if (!v12)
    {
      v20 = TRILogCategory_Server();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v37 = location;
        _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Failed to instantiate MAAutoAsset: %{public}@", buf, 0xCu);
      }

      [*(a1 + 40) _completeTaskWithStatus:3 earliestRetryDate:0 error:location aggregateProgress:*(a1 + 32) context:*(a1 + 48)];
      *(*(*(a1 + 64) + 8) + 24) = 0;
      *a4 = 1;
      goto LABEL_25;
    }

    v13 = v12;
    v14 = location;
    location = 0;

    obj = location;
    v34 = 0;
    v15 = [v13 determineIfAvailableSync:@"determine Trial asset availability" withTimeout:30 discoveredAttributes:&v34 error:&obj];
    v16 = v34;
    objc_storeStrong(&location, obj);
    if (v15)
    {
      v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D28908]];
      [*(a1 + 32) registerMAAsset:v7 withExpectedSize:{objc_msgSend(v17, "unsignedLongLongValue")}];
      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v17 unsignedLongLongValue];
        *buf = 134218242;
        v37 = v19;
        v38 = 2112;
        v39 = v7;
        _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEFAULT, "Registering MA asset with size: %llu for assetId: %@", buf, 0x16u);
      }

      *(*(*(a1 + 56) + 8) + 24) += [v17 unsignedLongLongValue];
      goto LABEL_24;
    }

    if (location)
    {
      v21 = [location domain];
      if ([v21 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
      {
        v22 = [location code];

        if (v22 == 6105)
        {
          v23 = TRILogCategory_Server();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v37 = v13;
            _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Timeout while checking availability of MAAutoAsset %{public}@", buf, 0xCu);
          }

          v24 = location;
          v26 = *(a1 + 32);
          v25 = *(a1 + 40);
          v27 = *(a1 + 48);
          v28 = 1;
LABEL_23:
          [v25 _completeTaskWithStatus:v28 earliestRetryDate:0 error:v24 aggregateProgress:v26 context:v27];
          *(*(*(a1 + 64) + 8) + 24) = 0;
          *a4 = 1;
LABEL_24:

LABEL_25:
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v31 = [*(*(a1 + 40) + 32) allKeys];
      v32 = [v31 firstObject];
      *buf = 138543618;
      v37 = v32;
      v38 = 2114;
      v39 = v13;
      _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ requires unavailable MAAutoAsset: %{public}@", buf, 0x16u);
    }

    v24 = location;
    v26 = *(a1 + 32);
    v25 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = 3;
    goto LABEL_23;
  }

  v9 = v8;
  [*(a1 + 32) registerMAAsset:v7 withExpectedSize:v8];
  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v37 = v9;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Registering MA asset with size: %llu for assetId: %@", buf, 0x16u);
  }

  *(*(*(a1 + 56) + 8) + 24) += v9;
LABEL_26:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_asyncFetchAssetsFromTreatmentRecordsWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size downloadOptions:(id)options group:(id)group
{
  contextCopy = context;
  planCopy = plan;
  progressCopy = progress;
  optionsCopy = options;
  groupCopy = group;
  v19 = dispatch_group_create();
  *size = 0;
  fetchPlansForTreatmentIds = [planCopy fetchPlansForTreatmentIds];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke;
  v37[3] = &unk_279DE4798;
  v38 = v19;
  v39 = optionsCopy;
  selfCopy = self;
  v21 = progressCopy;
  v41 = v21;
  v22 = contextCopy;
  v42 = v22;
  v44 = a2;
  v23 = planCopy;
  v43 = v23;
  sizeCopy = size;
  v24 = optionsCopy;
  v25 = v19;
  [fetchPlansForTreatmentIds enumerateKeysAndObjectsUsingBlock:v37];

  dispatch_group_enter(groupCopy);
  v26 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke_2_531;
  block[3] = &unk_279DE47C0;
  block[4] = self;
  v33 = v22;
  v34 = v23;
  v35 = v21;
  v36 = groupCopy;
  v27 = groupCopy;
  v28 = v21;
  v29 = v23;
  v30 = v22;
  dispatch_group_notify(v25, v26, block);
}

void __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_group_enter(*(a1 + 32));
  v7 = [[TRIFetchOptions alloc] initWithDownloadOptions:*(a1 + 40) cacheDeleteAvailableSpaceClass:&unk_287FC4CF0];
  v8 = *(*(a1 + 48) + 120);
  v9 = [v6 assetIndexes];
  v10 = [v6 recordId];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke_2;
  v31[3] = &unk_279DE4748;
  v32 = *(a1 + 56);
  v33 = v6;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke_3;
  v21[3] = &unk_279DE4770;
  v11 = *(a1 + 56);
  v21[4] = *(a1 + 48);
  v22 = v11;
  v23 = *(a1 + 64);
  v24 = v33;
  v12 = *(a1 + 72);
  v29 = *(a1 + 80);
  v25 = v5;
  v26 = v12;
  v27 = v7;
  v30 = *(a1 + 88);
  v28 = *(a1 + 32);
  v13 = v7;
  v14 = v5;
  v15 = v33;
  v16 = [v8 fetchAssetsWithIndexes:v9 fromTreatmentWithRecordId:v10 options:v13 progress:v31 completion:v21];

  v17 = *(*(a1 + 48) + 128);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke_529;
  v19[3] = &unk_279DE43B8;
  v20 = v16;
  v18 = v16;
  [v17 runWithLockAcquired:v19];
}

void __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke_2(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) recordId];
  [v3 setFractionCompleted:v4 forRecordId:a2];
}

void __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v23 = [MEMORY[0x277CCA890] currentHandler];
        [v23 handleFailureInMethod:*(a1 + 96) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1410 description:{@"Unexpected TRIFetchStatus %tu", 3}];
LABEL_15:

        goto LABEL_23;
      }

      if (a2 == 4)
      {
        if (v9)
        {
          v12 = [v9 count];
          v13 = [*(a1 + 56) assetIndexes];
          v14 = [v13 count];

          if (v12 == v14)
          {
            v15 = *(a1 + 32);
            v16 = *(a1 + 64);
            v17 = [*(a1 + 72) metadataForRequestedUnlinkedAssets];
            v18 = [v17 cloudKit];
            v19 = [*(a1 + 80) downloadOptions];
            v20 = [*(a1 + 48) paths];
            v21 = *(a1 + 104);
            v35 = 0;
            v22 = [v15 _saveIndexedAssetURLs:v9 withTreatmentId:v16 usingAssetMetadata:v18 downloadOptions:v19 paths:v20 downloadSize:v21 error:&v35];
            v23 = v35;

            if (v22 != 1)
            {
              if (v22 == 2)
              {
                v24 = 1;
                [*(a1 + 32) setWasDeferred:1];
              }

              else
              {
                v24 = 3;
              }

              [*(a1 + 32) _completeTaskWithStatus:v24 earliestRetryDate:0 error:v23 aggregateProgress:*(a1 + 40) context:*(a1 + 48)];
            }

            goto LABEL_15;
          }
        }

        v31 = TRILogCategory_Server();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v33 = *(*(a1 + 32) + 48);
          v34 = *(a1 + 64);
          *buf = 138543618;
          v37 = v33;
          v38 = 2112;
          v39 = v34;
          _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "No assets received after fetching on-demand factors for namespace %{public}@, treatment %@", buf, 0x16u);
        }

        v25 = *(a1 + 32);
        v26 = *(a1 + 40);
        v27 = *(a1 + 48);
        v28 = 3;
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = 1;
    v29 = v10;
LABEL_17:
    v30 = v11;
LABEL_22:
    [v25 _completeTaskWithStatus:v28 earliestRetryDate:v29 error:v30 aggregateProgress:v26 context:v27];
    goto LABEL_23;
  }

  if (!a2)
  {
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = 3;
    v29 = 0;
    goto LABEL_17;
  }

  if (a2 == 1)
  {
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = 4;
LABEL_21:
    v29 = 0;
    v30 = 0;
    goto LABEL_22;
  }

LABEL_23:
  dispatch_group_leave(*(a1 + 88));

  v32 = *MEMORY[0x277D85DE8];
}

void __138__TRIFetchOnDemandFactorsTask__asyncFetchAssetsFromTreatmentRecordsWithContext_plan_aggregateProgress_downloadSize_downloadOptions_group___block_invoke_2_531(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _currentTaskStatus];
  v3 = [v2 runStatus];

  if (!v3)
  {
    v4 = [TRIClientTreatmentStorage alloc];
    v5 = [*(a1 + 40) paths];
    v20 = [(TRIClientTreatmentStorage *)v4 initWithPaths:v5];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = *(*(a1 + 32) + 24);
    v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = *(a1 + 32);
          v12 = [*(a1 + 48) metadataForRequestedUnlinkedAssets];
          v13 = [v12 cloudKit];
          v14 = [v11 _assetIdsFromKeysInDictionary:v13];
          v15 = objc_autoreleasePoolPush();
          v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{*(*(a1 + 32) + 48), 0}];
          objc_autoreleasePoolPop(v15);
          v17 = [(TRIClientTreatmentStorage *)v20 updateSavedTreatmentWithTreatmentId:v10 linkingNewAssetIds:v14 forNamespaceNames:v16];

          if (!v17)
          {
            [*(a1 + 32) _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:*(a1 + 56) context:*(a1 + 40)];
            [*(a1 + 32) _addMetricForFetchOnDemandFactorsTaskError:22];
            goto LABEL_12;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  dispatch_group_leave(*(a1 + 64));
  v18 = *MEMORY[0x277D85DE8];
}

- (id)_fetchDiffsFromAssetDiffRecordsWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size options:(id)options
{
  contextCopy = context;
  planCopy = plan;
  progressCopy = progress;
  optionsCopy = options;
  v32 = dispatch_semaphore_create(0);
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__50;
  v64 = __Block_byref_object_dispose__50;
  v15 = objc_alloc(MEMORY[0x277CBEB58]);
  recordIdsForDiffableAssetIds = [planCopy recordIdsForDiffableAssetIds];
  v65 = [v15 initWithCapacity:{objc_msgSend(recordIdsForDiffableAssetIds, "count")}];

  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  artifactProvider = self->_artifactProvider;
  recordIdsForDiffableAssetIds2 = [planCopy recordIdsForDiffableAssetIds];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke;
  v54[3] = &unk_279DE47E8;
  v55 = progressCopy;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_2;
  v51[3] = &unk_279DE4070;
  v52 = planCopy;
  selfCopy = self;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_535;
  v47[3] = &unk_279DE40C0;
  v48 = v52;
  selfCopy2 = self;
  v50 = contextCopy;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_538;
  v37[3] = &unk_279DE4860;
  v37[4] = self;
  v19 = v55;
  v38 = v19;
  v20 = v50;
  v45 = a2;
  v39 = v20;
  v43 = &v56;
  v21 = v48;
  v40 = v21;
  v22 = optionsCopy;
  sizeCopy = size;
  v41 = v22;
  v44 = &v60;
  v23 = v32;
  v42 = v23;
  v24 = [(TRIArtifactProvider *)artifactProvider fetchDiffsWithRecordIds:recordIdsForDiffableAssetIds2 options:v22 perRecordProgress:v54 perRecordCompletionBlockOnSuccess:v51 perRecordCompletionBlockOnError:v47 completion:v37];

  lock = self->_lock;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_548;
  v35[3] = &unk_279DE43B8;
  v26 = v24;
  v36 = v26;
  [(_PASLock *)lock runWithLockAcquired:v35];
  [MEMORY[0x277D425A0] waitForSemaphore:v23];
  if (v57[3])
  {
    v27 = objc_alloc(MEMORY[0x277CBEB58]);
    recordIdsForDiffableAssetIds3 = [v21 recordIdsForDiffableAssetIds];
    allKeys = [recordIdsForDiffableAssetIds3 allKeys];
    v30 = [v27 initWithArray:allKeys];

    [v30 minusSet:v61[5]];
  }

  else
  {
    v30 = 0;
  }

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);

  return v30;
}

void __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) recordIdsForDiffableAssetIds];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_3;
  v8[3] = &unk_279DE4048;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
}

void __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = [a3 recordId];
  LODWORD(v8) = [v8 isEqual:v9];

  if (v8)
  {
    v10 = [*(*(a1 + 40) + 136) objectForKeyedSubscript:v7];
    if (v10)
    {
      [*(a1 + 40) removeDownloadableFactorNames:v10];
    }

    else
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v7;
        _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Missing factorname for diffable assetId %{public}@", &v13, 0xCu);
      }
    }

    *a4 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_535(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) recordIdsForDiffableAssetIds];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_2_536;
  v13[3] = &unk_279DE4098;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v14 = v6;
  v15 = v9;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v13];
}

void __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_2_536(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = [a3 recordId];
  LODWORD(v8) = [v8 isEqual:v9];

  if (v8)
  {
    v10 = [*(*(a1 + 40) + 136) objectForKeyedSubscript:v7];
    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = v11[6];
      v13 = [*(a1 + 48) client];
      [v11 _logOnDemandFactor:v10 metricName:@"on_demand_factor_failed_to_download_by_request" namespaceName:v12 client:v13 error:*(a1 + 56)];

      [*(a1 + 40) removeDownloadableFactorNames:v10];
    }

    else
    {
      v14 = TRILogCategory_Server();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = v7;
        _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Missing factorname for diffable assetId %{public}@", &v16, 0xCu);
      }
    }

    *a4 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_538(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_16;
      }

      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      v26 = *(a1 + 48);
      v27 = 4;
      v28 = 0;
      v29 = 0;
LABEL_15:
      [v24 _completeTaskWithStatus:v27 earliestRetryDate:v28 error:v29 aggregateProgress:v25 context:v26];
      goto LABEL_16;
    }

    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v27 = 3;
    v28 = 0;
LABEL_14:
    v29 = v11;
    goto LABEL_15;
  }

  if (a2 == 2)
  {
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v27 = 1;
    v28 = v10;
    goto LABEL_14;
  }

  if (a2 == 3)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:*(a1 + 96) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1535 description:{@"Unexpected TRIFetchStatus %tu", 3}];

    goto LABEL_16;
  }

  if (a2 != 4)
  {
LABEL_16:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v45 = 1;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_547;
    v37[3] = &unk_279DE4838;
    v37[4] = buf;
    [v9 enumerateKeysAndObjectsUsingBlock:v37];
    dispatch_semaphore_signal(*(a1 + 72));
    _Block_object_dispose(buf, 8);
    goto LABEL_17;
  }

  *(*(*(a1 + 80) + 8) + 24) = 1;
  if (v9)
  {
    v12 = [v9 count];
    v13 = [*(a1 + 56) recordIdsForDiffableAssetIds];
    v14 = [v13 count];

    if (v12 == v14)
    {
      v15 = [TRIAssetStore alloc];
      v16 = [*(a1 + 48) paths];
      v17 = [*(a1 + 64) downloadOptions];
      v18 = [v17 activity];
      v19 = [(TRIAssetStore *)v15 initWithPaths:v16 monitoredActivity:v18];

      v20 = [*(a1 + 56) metadataForRequestedUnlinkedAssets];
      v21 = [TRIClientFactorPackUtils uniqueAssets:v20];

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_2_539;
      v38[3] = &unk_279DE4810;
      v39 = v21;
      v40 = v19;
      v41 = *(a1 + 32);
      v43 = *(a1 + 104);
      v42 = *(a1 + 88);
      v22 = v19;
      v23 = v21;
      [v9 enumerateKeysAndObjectsUsingBlock:v38];

      goto LABEL_16;
    }
  }

  v32 = TRILogCategory_Server();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = *(a1 + 32);
    v34 = *(v33 + 48);
    v35 = [*(v33 + 32) allKeys];
    v36 = [v35 componentsJoinedByString:{@", "}];
    *buf = 138543618;
    *&buf[4] = v34;
    *&buf[12] = 2114;
    *&buf[14] = v36;
    _os_log_error_impl(&dword_26F567000, v32, OS_LOG_TYPE_ERROR, "No diffs received after fetching asset diffs for on-demand factors for namespace %{public}@, factor packs [%{public}@]", buf, 0x16u);
  }

LABEL_17:
  v31 = *MEMORY[0x277D85DE8];
}

void __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_2_539(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) cloudKit];
  v6 = [v4 destAssetId];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v17 = 0;
    v8 = *(a1 + 40);
    v9 = [v4 destAssetId];
    v10 = [v4 sourceAssetId];
    v11 = [v4 diff];
    v12 = [v11 path];

    if (!v12)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:*(a1 + 64) object:*(a1 + 48) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1552 description:{@"Expression was unexpectedly nil/false: %@", @"artifact.diff.path"}];
    }

    v13 = [v8 saveAssetWithIdentifier:v9 builtFromAssetWithIdentifier:v10 patchFilename:v12 metadata:v7 error:&v17];

    if (v13)
    {
      **(a1 + 72) += [v4 diffSize];
      v14 = *(*(*(a1 + 56) + 8) + 40);
      v15 = [v4 destAssetId];
      [v14 addObject:v15];
    }
  }
}

void __118__TRIFetchOnDemandFactorsTask__fetchDiffsFromAssetDiffRecordsWithContext_plan_aggregateProgress_downloadSize_options___block_invoke_547(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v4 diff];
  v17 = 0;
  v7 = [v5 removeItemAtURL:v6 error:&v17];
  v8 = v17;

  if ((v7 & 1) == 0)
  {
    v9 = [v8 domain];
    v10 = v9;
    if (v9 != *MEMORY[0x277CCA050])
    {

      goto LABEL_5;
    }

    v11 = [v8 code];

    if (v11 != 4)
    {
LABEL_5:
      v12 = *(*(*(a1 + 32) + 8) + 24);
      v13 = TRILogCategory_Server();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (v12 == 1)
      {
        if (v14)
        {
          goto LABEL_11;
        }
      }

      else if (v14)
      {
LABEL_11:
        v16 = [v4 diff];
        *buf = 138412546;
        v19 = v16;
        v20 = 2114;
        v21 = v8;
        _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Failed to clean up CK cached asset %@: %{public}@", buf, 0x16u);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_asyncFetchCKAssetsFromAssetRecordsWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size options:(id)options group:(id)group
{
  contextCopy = context;
  planCopy = plan;
  progressCopy = progress;
  optionsCopy = options;
  groupCopy = group;
  dispatch_group_enter(groupCopy);
  *size = 0;
  artifactProvider = self->_artifactProvider;
  recordIdsForNonDiffableAssetIds = [planCopy recordIdsForNonDiffableAssetIds];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke;
  v47[3] = &unk_279DE47E8;
  v48 = progressCopy;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_2;
  v44[3] = &unk_279DE4070;
  v45 = planCopy;
  selfCopy = self;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_549;
  v40[3] = &unk_279DE40C0;
  v41 = v45;
  selfCopy2 = self;
  v43 = contextCopy;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_551;
  v32[3] = &unk_279DE4888;
  v32[4] = self;
  v33 = v48;
  v34 = v43;
  v35 = v41;
  v38 = a2;
  sizeCopy = size;
  v36 = optionsCopy;
  v37 = groupCopy;
  v22 = groupCopy;
  v23 = optionsCopy;
  v24 = v41;
  v25 = v43;
  v26 = v48;
  v27 = [(TRIArtifactProvider *)artifactProvider fetchAssetsWithRecordIds:recordIdsForNonDiffableAssetIds options:v23 perRecordProgress:v47 perRecordCompletionBlockOnSuccess:v44 perRecordCompletionBlockOnError:v40 completion:v32];

  lock = self->_lock;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_553;
  v30[3] = &unk_279DE43B8;
  v31 = v27;
  v29 = v27;
  [(_PASLock *)lock runWithLockAcquired:v30];
}

void __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) recordIdsForNonDiffableAssetIds];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_3;
  v8[3] = &unk_279DE4048;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
}

void __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = [a3 recordId];
  LODWORD(v8) = [v8 isEqual:v9];

  if (v8)
  {
    v10 = [*(*(a1 + 40) + 136) objectForKeyedSubscript:v7];
    if (v10)
    {
      [*(a1 + 40) removeDownloadableFactorNames:v10];
    }

    else
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v7;
        _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Missing factorname for assetId %{public}@", &v13, 0xCu);
      }
    }

    *a4 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_549(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) recordIdsForNonDiffableAssetIds];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_2_550;
  v13[3] = &unk_279DE4098;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v14 = v6;
  v15 = v9;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v13];
}

void __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_2_550(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = [a3 recordId];
  LODWORD(v8) = [v8 isEqual:v9];

  if (v8)
  {
    v10 = [*(*(a1 + 40) + 136) objectForKeyedSubscript:v7];
    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = v11[6];
      v13 = [*(a1 + 48) client];
      [v11 _logOnDemandFactor:v10 metricName:@"on_demand_factor_failed_to_download_by_request" namespaceName:v12 client:v13 error:*(a1 + 56)];

      [*(a1 + 40) removeDownloadableFactorNames:v10];
    }

    else
    {
      v14 = TRILogCategory_Server();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = v7;
        _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Missing factorname for assetId %{public}@", &v16, 0xCu);
      }
    }

    *a4 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_551(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_18;
      }

      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v28 = 4;
      v29 = 0;
      v30 = 0;
LABEL_17:
      [v25 _completeTaskWithStatus:v28 earliestRetryDate:v29 error:v30 aggregateProgress:v26 context:v27];
      goto LABEL_18;
    }

    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = 3;
    v29 = 0;
LABEL_16:
    v30 = v11;
    goto LABEL_17;
  }

  switch(a2)
  {
    case 2:
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v28 = 1;
      v29 = v10;
      goto LABEL_16;
    case 3:
      v31 = [MEMORY[0x277CCA890] currentHandler];
      [v31 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1654 description:{@"Unexpected TRIFetchStatus %tu", 3}];

      break;
    case 4:
      if (v9 && (v12 = [v9 count], objc_msgSend(*(a1 + 56), "recordIdsForNonDiffableAssetIds"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12 == v14))
      {
        v15 = [*(a1 + 56) metadataForRequestedUnlinkedAssets];
        v16 = [TRIClientFactorPackUtils uniqueAssets:v15];

        v17 = *(a1 + 32);
        v18 = [v16 cloudKit];
        v19 = [*(a1 + 64) downloadOptions];
        v20 = *(a1 + 88);
        v21 = [*(a1 + 48) paths];
        v39 = 0;
        v22 = [v17 _saveNamedAssetURLs:v9 usingAssetMetadata:v18 downloadOptions:v19 downloadSize:v20 paths:v21 error:&v39];
        v23 = v39;

        if (v22 != 1)
        {
          if (v22 == 2)
          {
            [*(a1 + 32) setWasDeferred:1];
            v24 = 1;
          }

          else
          {
            v24 = 3;
          }

          [*(a1 + 32) _completeTaskWithStatus:v24 earliestRetryDate:0 error:v23 aggregateProgress:*(a1 + 40) context:*(a1 + 48)];
        }
      }

      else
      {
        v33 = TRILogCategory_Server();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = *(a1 + 32);
          v35 = *(v34 + 48);
          v36 = [*(v34 + 32) allKeys];
          v37 = [v36 componentsJoinedByString:{@", "}];
          *buf = 138543618;
          *&buf[4] = v35;
          *&buf[12] = 2114;
          *&buf[14] = v37;
          _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "No assets received after fetching on-demand factors for namespace %{public}@, factor packs [%{public}@]", buf, 0x16u);
        }

        [*(a1 + 32) _completeTaskWithStatus:3 earliestRetryDate:0 error:0 aggregateProgress:*(a1 + 40) context:*(a1 + 48)];
      }

      break;
  }

LABEL_18:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v41 = 1;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_552;
  v38[3] = &unk_279DE4138;
  v38[4] = buf;
  [v9 enumerateKeysAndObjectsUsingBlock:v38];
  dispatch_group_leave(*(a1 + 72));
  _Block_object_dispose(buf, 8);

  v32 = *MEMORY[0x277D85DE8];
}

void __128__TRIFetchOnDemandFactorsTask__asyncFetchCKAssetsFromAssetRecordsWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_552(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v6 = [v5 removeItemAtURL:v4 error:&v15];
  v7 = v15;

  if ((v6 & 1) == 0)
  {
    v8 = [v7 domain];
    v9 = v8;
    if (v8 != *MEMORY[0x277CCA050])
    {

      goto LABEL_5;
    }

    v10 = [v7 code];

    if (v10 != 4)
    {
LABEL_5:
      v11 = *(*(*(a1 + 32) + 8) + 24);
      v12 = TRILogCategory_Server();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (v11 == 1)
      {
        if (v13)
        {
          goto LABEL_11;
        }
      }

      else if (v13)
      {
LABEL_11:
        *buf = 138412546;
        v17 = v4;
        v18 = 2114;
        v19 = v7;
        _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to clean up CK cached asset %@: %{public}@", buf, 0x16u);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_asyncFetchMAAssetsFromFactorPacksWithContext:(id)context plan:(id)plan aggregateProgress:(id)progress downloadSize:(unint64_t *)size options:(id)options group:(id)group
{
  contextCopy = context;
  progressCopy = progress;
  groupCopy = group;
  *size = 0;
  metadataForRequestedUnlinkedAssets = [plan metadataForRequestedUnlinkedAssets];
  v17 = [TRIClientFactorPackUtils uniqueAssets:metadataForRequestedUnlinkedAssets];

  mobileAsset = [v17 mobileAsset];
  v19 = [mobileAsset count];

  if (v19)
  {
    v20 = objc_opt_new();
    mobileAsset2 = [v17 mobileAsset];
    taskAttributing = self->_taskAttributing;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __127__TRIFetchOnDemandFactorsTask__asyncFetchMAAssetsFromFactorPacksWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke;
    v27[3] = &unk_279DE48B0;
    v27[4] = self;
    v28 = progressCopy;
    v29 = contextCopy;
    v23 = [v20 downloadAssets:mobileAsset2 attribution:taskAttributing aggregateProgress:v28 group:groupCopy completion:v27];

    if (v23)
    {
      lock = self->_lock;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __127__TRIFetchOnDemandFactorsTask__asyncFetchMAAssetsFromFactorPacksWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke_2;
      v25[3] = &unk_279DE43B8;
      v26 = v23;
      [(_PASLock *)lock runWithLockAcquired:v25];
    }
  }

  else
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "Fetch plan includes no MAAutoAssets.", buf, 2u);
    }
  }
}

void __127__TRIFetchOnDemandFactorsTask__asyncFetchMAAssetsFromFactorPacksWithContext_plan_aggregateProgress_downloadSize_options_group___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v10 = a4;
  v9 = a5;
  if (a3)
  {
    [*(a1 + 32) setWasDeferred:1];
  }

  if (a2 != 2)
  {
    [*(a1 + 32) _completeTaskWithStatus:a2 earliestRetryDate:v10 error:v9 aggregateProgress:*(a1 + 40) context:*(a1 + 48)];
  }
}

void __70__TRIFetchOnDemandFactorsTask_willBeCancelledByTaskQueue_withContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a2 + 8);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_addMetricForFetchOnDemandFactorsTaskError:(int)error
{
  v4 = MEMORY[0x277D73B40];
  v5 = fetchTaskErrorAsString(error);
  v6 = [v4 metricWithName:@"fetchondemandfactorstask_error" categoricalValue:v5];

  [(TRIFetchOnDemandFactorsTask *)self _addMetric:v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = TRIFetchOnDemandFactorsTask;
  if ([(TRIBaseTask *)&v16 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (![(NSDictionary *)self->_assetIndexesByTreatment isEqualToDictionary:*(v5 + 3)])
    {
      goto LABEL_27;
    }

    v6 = self->_experimentId;
    v7 = *(v5 + 20);
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      if (v6)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v11 = [(NSString *)v6 isEqualToString:v7];

      if (!v11)
      {
        goto LABEL_27;
      }
    }

    if (![(NSDictionary *)self->_assetIdsByFactorPack isEqualToDictionary:*(v5 + 4)]|| ![(NSSet *)self->_rolloutFactorNames isEqual:*(v5 + 5)])
    {
      goto LABEL_27;
    }

    v6 = self->_deployment;
    v12 = *(v5 + 19);
    v8 = v12;
    if (v6 == v12)
    {

      goto LABEL_22;
    }

    v10 = 0;
    if (v6 && v12)
    {
      v13 = [(NSString *)v6 isEqualToDeployment:v12];

      if ((v13 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_22:
      if ([(NSString *)self->_namespaceName isEqualToString:*(v5 + 6)])
      {
        v6 = self->_notificationKey;
        v14 = *(v5 + 9);
        v8 = v14;
        if (v6 == v14)
        {
          v10 = 1;
        }

        else
        {
          v10 = 0;
          if (v6 && v14)
          {
            v10 = [(NSString *)v6 isEqualToString:v14];
          }
        }

        goto LABEL_10;
      }

LABEL_27:
      v10 = 0;
      goto LABEL_28;
    }

LABEL_10:

LABEL_28:
    goto LABEL_29;
  }

  v10 = 0;
LABEL_29:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSDictionary *)self->_assetIndexesByTreatment hash];
  v4 = [(NSDictionary *)self->_assetIdsByFactorPack hash]+ 37 * v3;
  v5 = [(NSSet *)self->_rolloutFactorNames hash]+ 37 * v4;
  v6 = [(NSString *)self->_namespaceName hash]+ 37 * v5;
  return [(NSString *)self->_notificationKey hash]+ 37 * v6;
}

- (void)_addMetric:(id)metric
{
  metricCopy = metric;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  metrics = selfCopy->_metrics;
  if (!metrics)
  {
    v6 = objc_opt_new();
    v7 = selfCopy->_metrics;
    selfCopy->_metrics = v6;

    metrics = selfCopy->_metrics;
  }

  [(NSMutableArray *)metrics addObject:metricCopy];
  objc_sync_exit(selfCopy);
}

- (void)_addDimension:(id)dimension
{
  dimensionCopy = dimension;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dimensions = selfCopy->_dimensions;
  if (!dimensions)
  {
    v6 = objc_opt_new();
    v7 = selfCopy->_dimensions;
    selfCopy->_dimensions = v6;

    dimensions = selfCopy->_dimensions;
  }

  [(NSMutableArray *)dimensions addObject:dimensionCopy];
  objc_sync_exit(selfCopy);
}

- (id)metrics
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "TRIFetchOnDemandFactorsTask gather metrics", buf, 2u);
  }

  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_metrics)
  {
    [v5 addObjectsFromArray:?];
  }

  objc_sync_exit(selfCopy);

  lock = selfCopy->_lock;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __38__TRIFetchOnDemandFactorsTask_metrics__block_invoke;
  v14[3] = &unk_279DE43B8;
  v8 = v5;
  v15 = v8;
  [(_PASLock *)lock runWithLockAcquired:v14];
  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v8;
    _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "TRIFetchOnDemandFactorsTask metrics: %@", buf, 0xCu);
  }

  if ([v8 count])
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_autoreleasePoolPop(v4);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __38__TRIFetchOnDemandFactorsTask_metrics__block_invoke(uint64_t a1, void *a2)
{
  if (a2[4])
  {
    v4 = a2;
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "TRIFetchOnDemandFactorsTask gather metrics for fetchError", v8, 2u);
    }

    v6 = a2[4];
    v7 = TRIFetchErrorParseToMetrics(v6);
    if (v7)
    {
      [*(a1 + 32) addObjectsFromArray:v7];
    }
  }
}

- (id)dimensions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_dimensions copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_logOnDemandFactor:(id)factor metricName:(id)name namespaceName:(id)namespaceName client:(id)client error:(id)error
{
  factorCopy = factor;
  nameCopy = name;
  namespaceNameCopy = namespaceName;
  clientCopy = client;
  errorCopy = error;
  if (clientCopy && [clientCopy shouldLogAtLevel:20])
  {
    context = objc_autoreleasePoolPush();
    v16 = [MEMORY[0x277D73B40] metricWithName:nameCopy];
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v16, 0}];
    if (errorCopy)
    {
      v18 = TRIFetchErrorParseToMetrics(errorCopy);
      if (v18)
      {
        [v17 addObjectsFromArray:v18];
      }

      else
      {
        v19 = MEMORY[0x277D73B40];
        localizedDescription = [errorCopy localizedDescription];
        v21 = [v19 metricWithName:localizedDescription];
        [v17 addObject:v21];
      }
    }

    trialSystemTelemetry = [(TRIFetchOnDemandFactorsTask *)self trialSystemTelemetry];
    v23 = [trialSystemTelemetry copy];

    ensureOnDemandFactorFields = [v23 ensureOnDemandFactorFields];
    [ensureOnDemandFactorFields setFactorName:factorCopy];

    ensureOnDemandFactorFields2 = [v23 ensureOnDemandFactorFields];
    [ensureOnDemandFactorFields2 setNamespaceName:namespaceNameCopy];

    logger = [clientCopy logger];
    trackingId = [clientCopy trackingId];
    dimensions = [(TRIFetchOnDemandFactorsTask *)self dimensions];
    [logger logWithTrackingId:trackingId metrics:v17 dimensions:dimensions trialSystemTelemetry:v23];

    objc_autoreleasePoolPop(context);
  }
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  assetIndexesByTreatment = self->_assetIndexesByTreatment;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __47__TRIFetchOnDemandFactorsTask__asPersistedTask__block_invoke;
  v21[3] = &unk_279DE48D8;
  v6 = v4;
  v22 = v6;
  [(NSDictionary *)assetIndexesByTreatment enumerateKeysAndObjectsUsingBlock:v21];
  [v3 setTreatmentAssetIndexesArray:v6];
  v7 = objc_opt_new();
  assetIdsByFactorPack = self->_assetIdsByFactorPack;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __47__TRIFetchOnDemandFactorsTask__asPersistedTask__block_invoke_3;
  v19 = &unk_279DE4900;
  v9 = v7;
  v20 = v9;
  [(NSDictionary *)assetIdsByFactorPack enumerateKeysAndObjectsUsingBlock:&v16];
  [v3 setFactorPackAssetIdsArray:{v9, v16, v17, v18, v19}];
  v10 = [(NSSet *)self->_rolloutFactorNames mutableCopy];
  [v3 setRolloutFactorNamesArray:v10];

  asPersistedTaskAttribution = [(TRITaskAttributing *)self->_taskAttributing asPersistedTaskAttribution];
  [v3 setTaskAttribution:asPersistedTaskAttribution];

  [v3 setNamespaceName:self->_namespaceName];
  [v3 setRetryCount:self->_retryCount];
  if (self->_notificationKey)
  {
    [v3 setNotificationKey:?];
  }

  if (self->_experimentId)
  {
    [v3 setExperimentId:?];
  }

  deployment = self->_deployment;
  if (deployment)
  {
    rolloutId = [(TRIRolloutDeployment *)deployment rolloutId];
    [v3 setRolloutId:rolloutId];

    [v3 setDeploymentId:{-[TRIRolloutDeployment deploymentId](self->_deployment, "deploymentId")}];
  }

  asPersistedModifier = [(TRITaskCapabilityModifier *)self->_capabilityModifier asPersistedModifier];
  [v3 setCapabilityModifier:asPersistedModifier];

  return v3;
}

void __47__TRIFetchOnDemandFactorsTask__asPersistedTask__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_opt_new();
  [v8 setTreatmentId:v5];
  v9 = [objc_alloc(MEMORY[0x277D73B90]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__TRIFetchOnDemandFactorsTask__asPersistedTask__block_invoke_2;
  v11[3] = &unk_279DE0C98;
  v12 = v9;
  v10 = v9;
  [v6 enumerateIndexesUsingBlock:v11];
  [v8 setIndexArray:v10];
  [*(a1 + 32) addObject:v8];

  objc_autoreleasePoolPop(v7);
}

void __47__TRIFetchOnDemandFactorsTask__asPersistedTask__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_new();
  [v7 setFactorPackId:v6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__TRIFetchOnDemandFactorsTask__asPersistedTask__block_invoke_4;
  v9[3] = &unk_279DE0FE8;
  v10 = v7;
  v8 = v7;
  [v5 enumerateObjectsUsingBlock:v9];

  [*(a1 + 32) addObject:v8];
}

void __47__TRIFetchOnDemandFactorsTask__asPersistedTask__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_opt_new();
  v4 = [v3 assetId];
  [v7 setAssetId:v4];

  v5 = [v3 factorName];

  [v7 setFactorName:v5];
  v6 = [*(a1 + 32) assetIdFactorNameArray];
  [v6 addObject:v7];
}

- (id)serialize
{
  _asPersistedTask = [(TRIFetchOnDemandFactorsTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:1973 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v128 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v121 = 0;
  v4 = [(TRIPBMessage *)TRIFetchOnDemandFactorsPersistedTask parseFromData:dataCopy error:&v121];
  v5 = v121;
  if (!v4)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v127 = v5;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIFetchOnDemandFactorsPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_65;
  }

  if (([v4 hasNamespaceName] & 1) == 0)
  {
    v65 = TRILogCategory_Server();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v76 = objc_opt_class();
      v77 = NSStringFromClass(v76);
      *buf = 138412290;
      v127 = v77;
      _os_log_error_impl(&dword_26F567000, v65, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: namespaceName", buf, 0xCu);
    }

    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_65;
    }

    v66 = objc_opt_class();
    v67 = NSStringFromClass(v66);
    *buf = 138412290;
    v127 = v67;
    v68 = "Cannot decode message of type %@ with missing field: namespaceName";
    goto LABEL_64;
  }

  namespaceName = [v4 namespaceName];
  v7 = [namespaceName length];

  if (!v7)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v69 = objc_opt_class();
      v67 = NSStringFromClass(v69);
      *buf = 138412290;
      v127 = v67;
      v68 = "Cannot decode message of type %@ with field of length 0: namespaceName";
LABEL_64:
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, v68, buf, 0xCu);
    }

LABEL_65:
    v71 = 0;
    goto LABEL_66;
  }

  if (([v4 hasTaskAttribution] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v70 = objc_opt_class();
      v67 = NSStringFromClass(v70);
      *buf = 138412290;
      v127 = v67;
      v68 = "Cannot decode message of type %@ with missing field: taskAttribution";
      goto LABEL_64;
    }

    goto LABEL_65;
  }

  v99 = dataCopy;
  v8 = objc_opt_new();
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = [v4 treatmentAssetIndexesArray];
  v9 = [obj countByEnumeratingWithState:&v117 objects:v125 count:16];
  v101 = v5;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = *v118;
  v97 = v4;
LABEL_7:
  v12 = 0;
  while (1)
  {
    if (*v118 != v11)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v117 + 1) + 8 * v12);
    v14 = objc_autoreleasePoolPush();
    treatmentId = [v13 treatmentId];
    v16 = [treatmentId length];

    if (!v16)
    {
      break;
    }

    if (![v13 indexArray_Count])
    {
      v74 = TRILogCategory_Server();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v75 = "TRIFetchOnDemandFactorsPersistedTask contains empty index array";
LABEL_99:
        _os_log_error_impl(&dword_26F567000, v74, OS_LOG_TYPE_ERROR, v75, buf, 2u);
      }

      goto LABEL_72;
    }

    treatmentId2 = [v13 treatmentId];
    v18 = [v8 objectForKeyedSubscript:treatmentId2];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = objc_opt_new();
    }

    v21 = v20;

    indexArray = [v13 indexArray];
    v115[0] = MEMORY[0x277D85DD0];
    v115[1] = 3221225472;
    v115[2] = __45__TRIFetchOnDemandFactorsTask_parseFromData___block_invoke;
    v115[3] = &unk_279DDF630;
    v116 = v21;
    v23 = v21;
    [indexArray enumerateValuesWithBlock:v115];

    treatmentId3 = [v13 treatmentId];
    [v8 setObject:v23 forKeyedSubscript:treatmentId3];

    objc_autoreleasePoolPop(v14);
    if (v10 == ++v12)
    {
      v10 = [obj countByEnumeratingWithState:&v117 objects:v125 count:16];
      v4 = v97;
      v5 = v101;
      if (!v10)
      {
LABEL_17:

        obj = objc_opt_new();
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        factorPackAssetIdsArray = [v4 factorPackAssetIdsArray];
        v26 = [factorPackAssetIdsArray countByEnumeratingWithState:&v111 objects:v124 count:16];
        if (!v26)
        {
LABEL_51:

          v60 = MEMORY[0x277CBEB98];
          rolloutFactorNamesArray = [v4 rolloutFactorNamesArray];
          v30 = [v60 setWithArray:rolloutFactorNamesArray];

          taskAttribution = [v4 taskAttribution];
          v63 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:taskAttribution];

          if (v63)
          {
            if ([v4 hasExperimentId])
            {
              experimentId = [v4 experimentId];
            }

            else
            {
              experimentId = 0;
            }

            dataCopy = v99;
            v96 = experimentId;
            if ([v4 hasRolloutId] && objc_msgSend(v4, "hasDeploymentId"))
            {
              v79 = objc_alloc(MEMORY[0x277D737C8]);
              rolloutId = [v4 rolloutId];
              v100 = [v79 initWithRolloutId:rolloutId deploymentId:{objc_msgSend(v4, "deploymentId")}];
            }

            else
            {
              v100 = 0;
            }

            if ([v4 hasNotificationKey])
            {
              notificationKey = [v4 notificationKey];
            }

            else
            {
              notificationKey = 0;
            }

            if ([v4 hasCapabilityModifier])
            {
              v82 = [TRITaskCapabilityModifier alloc];
              capabilityModifier = [v4 capabilityModifier];
              v84 = [capabilityModifier add];
              capabilityModifier2 = [v4 capabilityModifier];
              v86 = -[TRITaskCapabilityModifier initWithAdd:remove:](v82, "initWithAdd:remove:", v84, [capabilityModifier2 remove]);
            }

            else
            {
              v86 = objc_opt_new();
            }

            namespaceName2 = [v4 namespaceName];
            v78 = v96;
            v71 = [TRIFetchOnDemandFactorsTask taskWithAssetIndexesByTreatment:v8 experimentId:v96 assetIdsByFactorPack:obj rolloutFactorNames:v30 rolloutDeployment:v100 namespaceName:namespaceName2 taskAttributing:v63 notificationKey:notificationKey capabilityModifier:v86];

            hasRetryCount = [v4 hasRetryCount];
            if (hasRetryCount)
            {
              hasRetryCount = [v4 retryCount];
            }

            v71[16] = hasRetryCount;

            v5 = v101;
          }

          else
          {
            v78 = TRILogCategory_Server();
            dataCopy = v99;
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_26F567000, v78, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
            }

            v71 = 0;
          }

LABEL_96:
          goto LABEL_97;
        }

        v27 = v26;
        v28 = *v112;
        v91 = factorPackAssetIdsArray;
        v93 = *v112;
        while (2)
        {
          v29 = 0;
          dataCopy = v99;
          v90 = v27;
LABEL_20:
          if (*v112 != v28)
          {
            objc_enumerationMutation(factorPackAssetIdsArray);
          }

          v30 = factorPackAssetIdsArray;
          v92 = v29;
          v31 = *(*(&v111 + 1) + 8 * v29);
          v32 = objc_autoreleasePoolPush();
          factorPackId = [v31 factorPackId];
          v34 = TRIValidateFactorPackId();

          if (!v34)
          {
            goto LABEL_77;
          }

          v95 = v34;
          v35 = [obj objectForKeyedSubscript:v34];
          v36 = v35;
          context = v32;
          if (v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = objc_opt_new();
          }

          v38 = v37;
          v28 = v93;

          if ([v31 assetIdFactorNameArray_Count])
          {
            assetIdFactorNameArray_Count = [v31 assetIdFactorNameArray_Count];
            v107 = 0u;
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            assetIdFactorNameArray = [v31 assetIdFactorNameArray];
            v41 = [assetIdFactorNameArray countByEnumeratingWithState:&v107 objects:v123 count:16];
            if (v41)
            {
              v42 = v41;
              v89 = assetIdFactorNameArray_Count;
              v98 = v4;
              v43 = *v108;
              while (2)
              {
                for (i = 0; i != v42; ++i)
                {
                  if (*v108 != v43)
                  {
                    objc_enumerationMutation(assetIdFactorNameArray);
                  }

                  v45 = *(*(&v107 + 1) + 8 * i);
                  assetId = [v45 assetId];
                  v47 = TRIValidateAssetId();

                  if (!v47)
                  {
                    v4 = v98;
                    goto LABEL_75;
                  }

                  v48 = objc_alloc(MEMORY[0x277D73658]);
                  factorName = [v45 factorName];
                  v50 = [v48 initWithAssetId:v47 factorName:factorName];
                  [v38 addObject:v50];
                }

                v42 = [assetIdFactorNameArray countByEnumeratingWithState:&v107 objects:v123 count:16];
                if (v42)
                {
                  continue;
                }

                break;
              }

              v4 = v98;
              goto LABEL_46;
            }

LABEL_47:
            factorPackAssetIdsArray = v30;
          }

          else
          {
            factorPackAssetIdsArray = v30;
            if (![v31 assetIdArray_Count])
            {
              goto LABEL_100;
            }

            assetIdFactorNameArray_Count = [v31 assetIdArray_Count];
            v103 = 0u;
            v104 = 0u;
            v105 = 0u;
            v106 = 0u;
            assetIdFactorNameArray = [v31 assetIdArray];
            v51 = [assetIdFactorNameArray countByEnumeratingWithState:&v103 objects:v122 count:16];
            if (!v51)
            {
              goto LABEL_47;
            }

            v52 = v51;
            v89 = assetIdFactorNameArray_Count;
            v53 = v4;
            v54 = *v104;
            while (2)
            {
              for (j = 0; j != v52; ++j)
              {
                if (*v104 != v54)
                {
                  objc_enumerationMutation(assetIdFactorNameArray);
                }

                v56 = *(*(&v103 + 1) + 8 * j);
                v57 = TRIValidateAssetId();
                if (!v57)
                {
                  v4 = v53;
LABEL_75:
                  v5 = v101;
                  v30 = v91;
                  goto LABEL_76;
                }

                v58 = v57;
                v59 = [objc_alloc(MEMORY[0x277D73658]) initWithAssetId:v57 factorName:0];
                [v38 addObject:v59];
              }

              v52 = [assetIdFactorNameArray countByEnumeratingWithState:&v103 objects:v122 count:16];
              if (v52)
              {
                continue;
              }

              break;
            }

            v4 = v53;
LABEL_46:
            v5 = v101;
            factorPackAssetIdsArray = v91;
            v28 = v93;
            assetIdFactorNameArray_Count = v89;
          }

          if (!assetIdFactorNameArray_Count)
          {
LABEL_100:
            v30 = factorPackAssetIdsArray;
            assetIdFactorNameArray = TRILogCategory_Server();
            if (os_log_type_enabled(assetIdFactorNameArray, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_26F567000, assetIdFactorNameArray, OS_LOG_TYPE_ERROR, "TRIFetchOnDemandFactorsPersistedTask contains empty asset index array", buf, 2u);
            }

LABEL_76:
            v32 = context;

LABEL_77:
            objc_autoreleasePoolPop(v32);
            v71 = 0;
            goto LABEL_96;
          }

          [obj setObject:v38 forKeyedSubscript:v95];

          objc_autoreleasePoolPop(context);
          v29 = v92 + 1;
          if (v92 + 1 == v90)
          {
            v27 = [factorPackAssetIdsArray countByEnumeratingWithState:&v111 objects:v124 count:16];
            if (v27)
            {
              continue;
            }

            goto LABEL_51;
          }

          goto LABEL_20;
        }
      }

      goto LABEL_7;
    }
  }

  v74 = TRILogCategory_Server();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v75 = "TRIFetchOnDemandFactorsPersistedTask contains empty treatmentId";
    goto LABEL_99;
  }

LABEL_72:
  v4 = v97;
  dataCopy = v99;
  v5 = v101;

  objc_autoreleasePoolPop(v14);
  v71 = 0;
LABEL_97:

LABEL_66:
  v72 = *MEMORY[0x277D85DE8];

  return v71;
}

- (unint64_t)requiredCapabilities
{
  networkOptions = [(TRITaskAttributing *)self->_taskAttributing networkOptions];
  requiredCapability = [networkOptions requiredCapability];
  v7.receiver = self;
  v7.super_class = TRIFetchOnDemandFactorsTask;
  v5 = [(TRIBaseTask *)&v7 requiredCapabilities]| requiredCapability | (4 * (self->_retryCount > 0));

  return [(TRITaskCapabilityModifier *)self->_capabilityModifier updateCapability:v5];
}

- (NSString)description
{
  networkOptions = [(TRITaskAttributing *)self->_taskAttributing networkOptions];
  discretionaryBehavior = [networkOptions discretionaryBehavior];
  v5 = @"disc";
  if (!discretionaryBehavior)
  {
    v5 = @"non-disc";
  }

  v6 = v5;

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  namespaceName = self->_namespaceName;
  notificationKey = self->_notificationKey;
  applicationBundleIdentifier = [(TRITaskAttributing *)self->_taskAttributing applicationBundleIdentifier];
  anyObject = [(NSSet *)self->_rolloutFactorNames anyObject];
  v13 = [v7 stringWithFormat:@"<%@:%@, %@, a:%@, d:%@, f:%@, r:%d>", v8, namespaceName, notificationKey, applicationBundleIdentifier, v6, anyObject, -[TRIFetchOnDemandFactorsTask retryCount](self, "retryCount")];

  return v13;
}

- (TRIFetchOnDemandFactorsTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIFetchOnDemandFactorsTask;
  v5 = [(TRIFetchOnDemandFactorsTask *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pb"];
    if (v6)
    {
      v7 = [objc_opt_class() parseFromData:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchOnDemandFactorsTask.m" lineNumber:2098 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIFetchOnDemandFactorsTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end