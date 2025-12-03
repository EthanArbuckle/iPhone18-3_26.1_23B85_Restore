@interface TRIFetchFactorPackSetTask
+ (id)_namespaceNamesFromExperimentRecord:(id)record;
+ (id)parseFromData:(id)data;
+ (id)taskWithFactorPackSetId:(id)id taskAttribution:(id)attribution rolloutDeployment:(id)deployment capabilityModifier:(id)modifier;
- (BOOL)_downloadAndSaveCKAssetsWithMetadata:(id)metadata artifactProvider:(id)provider options:(id)options downloadNotificationKey:(id)key context:(id)context assetsDownloadSize:(unint64_t *)size errorResult:(id *)result fetchError:(id *)self0;
- (BOOL)_downloadAndSaveMAAssets:(id)assets options:(id)options downloadNotificationKey:(id)key context:(id)context assetsDownloadSize:(unint64_t *)size errorResult:(id *)result fetchError:(id *)error;
- (BOOL)_saveFactorPackSet:(id)set requiredAssetMap:(id)map context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSArray)dependencies;
- (NSArray)tags;
- (NSString)description;
- (TRIFetchFactorPackSetTask)initWithCoder:(id)coder;
- (TRIFetchFactorPackSetTask)initWithFactorPackSetId:(id)id taskAttribution:(id)attribution rolloutDeployment:(id)deployment capabilityModifier:(id)modifier;
- (TRIFetchFactorPackSetTask)initWithFactorPackSetId:(id)id treatmentId:(id)treatmentId isCounterfactualTreatment:(BOOL)treatment taskAttribution:(id)attribution experimentDeployment:(id)deployment;
- (id)_asPersistedTask;
- (id)_downloadSetArtifactWithProvider:(id)provider downloadOptions:(id)options downloadNotificationKey:(id)key errorResult:(id *)result setArtifactFetchError:(id *)error;
- (id)_requiredAssetsForFactorPackSet:(id)set context:(id)context;
- (id)_subscribedOnDemandFactorsForAssets:(id)assets factorPackSet:(id)set context:(id)context;
- (id)_uniqueUninstalledAssets:(id)assets;
- (id)dimensions;
- (id)metrics;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (id)trialSystemTelemetry;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)_addMetricForFetchFactorPackSetTaskError:(int)error;
- (void)_logOnDemandFactor:(id)factor metricName:(id)name namespaceName:(id)namespaceName client:(id)client error:(id)error;
- (void)_recordExperimentFetchFailedWithReason:(id)reason context:(id)context;
- (void)_recordExperimentFetchFailedWithTaskError:(int)error context:(id)context;
- (void)_removeDownloadableRecord:(id)record;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIFetchFactorPackSetTask

- (NSArray)tags
{
  tags = [(TRIRolloutTaskSupport *)self->_rolloutSupport tags];
  v4 = tags;
  if (!tags)
  {
    tags = MEMORY[0x277CBEBF8];
  }

  v5 = [tags mutableCopy];
  [TRITaskUtils addAttribution:self->_taskAttribution toTaskTags:v5];

  return v5;
}

- (NSArray)dependencies
{
  v7[1] = *MEMORY[0x277D85DE8];
  experimentDeployment = self->_experimentDeployment;
  if (experimentDeployment)
  {
    v3 = [TRIFetchExperimentTask taskWithExperimentDeployment:experimentDeployment taskAttributing:self->_taskAttribution];
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (TRIFetchFactorPackSetTask)initWithFactorPackSetId:(id)id taskAttribution:(id)attribution rolloutDeployment:(id)deployment capabilityModifier:(id)modifier
{
  idCopy = id;
  attributionCopy = attribution;
  deploymentCopy = deployment;
  modifierCopy = modifier;
  if (idCopy)
  {
    if (attributionCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"taskAttribution"}];

    if (deploymentCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];

  if (!attributionCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (deploymentCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"rolloutDeployment"}];

LABEL_4:
  v44.receiver = self;
  v44.super_class = TRIFetchFactorPackSetTask;
  v16 = [(TRIFetchFactorPackSetTask *)&v44 init];
  v17 = v16;
  if (v16)
  {
    v40 = modifierCopy;
    objc_storeStrong(&v16->_factorPackSetId, id);
    objc_storeStrong(&v17->_taskAttribution, attribution);
    v17->_construct = 0;
    objc_storeStrong(&v17->_rolloutDeployment, deployment);
    v18 = [[TRIRolloutTaskSupport alloc] initWithRolloutDeployment:v17->_rolloutDeployment];
    rolloutSupport = v17->_rolloutSupport;
    v17->_rolloutSupport = v18;

    objc_storeStrong(&v17->_capabilityModifier, modifier);
    factorRecordsByAssetId = v17->_factorRecordsByAssetId;
    v17->_factorRecordsByAssetId = 0;

    v21 = objc_alloc(MEMORY[0x277D425F8]);
    v22 = objc_opt_new();
    v23 = [v21 initWithGuardedData:v22];
    guardedDownloadableRecord = v17->_guardedDownloadableRecord;
    v17->_guardedDownloadableRecord = v23;

    v25 = objc_opt_new();
    rolloutId = [(TRIRolloutDeployment *)v17->_rolloutDeployment rolloutId];
    ensureRolloutFields = [v25 ensureRolloutFields];
    [ensureRolloutFields setClientRolloutId:rolloutId];

    v28 = loggableFactorPackSetIdFromFactorPackSetId(idCopy);
    ensureRolloutFields2 = [v25 ensureRolloutFields];
    [ensureRolloutFields2 setClientFactorPackSetId:v28];

    v30 = [MEMORY[0x277CCABB0] numberWithInt:{-[TRIRolloutDeployment deploymentId](v17->_rolloutDeployment, "deploymentId")}];
    stringValue = [v30 stringValue];
    [v25 setClientDeploymentId:stringValue];

    v32 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:attributionCopy];
    [(TRIRolloutTaskSupport *)v17->_rolloutSupport mergeTelemetry:v25];
    [(TRIRolloutTaskSupport *)v17->_rolloutSupport mergeTelemetry:v32];
    networkOptions = [attributionCopy networkOptions];
    allowsCellularAccess = [networkOptions allowsCellularAccess];

    if (allowsCellularAccess)
    {
      v35 = v17->_rolloutSupport;
      v36 = MEMORY[0x277D73B40];
      networkOptions2 = [attributionCopy networkOptions];
      v38 = [v36 metricWithName:@"allows_cellular_download" integerValue:{objc_msgSend(networkOptions2, "allowsCellularAccess")}];
      [(TRIRolloutTaskSupport *)v35 addMetric:v38];
    }

    modifierCopy = v40;
  }

  return v17;
}

- (TRIFetchFactorPackSetTask)initWithFactorPackSetId:(id)id treatmentId:(id)treatmentId isCounterfactualTreatment:(BOOL)treatment taskAttribution:(id)attribution experimentDeployment:(id)deployment
{
  idCopy = id;
  treatmentIdCopy = treatmentId;
  attributionCopy = attribution;
  deploymentCopy = deployment;
  if (idCopy)
  {
    if (attributionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v40 = deploymentCopy;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];

    deploymentCopy = v40;
    if (attributionCopy)
    {
      goto LABEL_3;
    }
  }

  v41 = deploymentCopy;
  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"taskAttribution"}];

  deploymentCopy = v41;
LABEL_3:
  v17 = deploymentCopy;
  if (!deploymentCopy)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment"}];
  }

  v44.receiver = self;
  v44.super_class = TRIFetchFactorPackSetTask;
  v18 = [(TRIFetchFactorPackSetTask *)&v44 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_factorPackSetId, id);
    objc_storeStrong(&v19->_treatmentId, treatmentId);
    v19->_isCounterfactualTreatment = treatment;
    objc_storeStrong(&v19->_taskAttribution, attribution);
    v19->_construct = 1;
    objc_storeStrong(&v19->_experimentDeployment, deployment);
    v20 = [[TRIExperimentTaskSupport alloc] initWithExperimentDeployment:v17];
    experimentSupport = v19->_experimentSupport;
    v19->_experimentSupport = v20;

    v22 = objc_opt_new();
    capabilityModifier = v19->_capabilityModifier;
    v19->_capabilityModifier = v22;

    factorRecordsByAssetId = v19->_factorRecordsByAssetId;
    v19->_factorRecordsByAssetId = 0;

    v25 = v17;
    v26 = objc_alloc(MEMORY[0x277D425F8]);
    v27 = objc_opt_new();
    v28 = [v26 initWithGuardedData:v27];
    guardedDownloadableRecord = v19->_guardedDownloadableRecord;
    v19->_guardedDownloadableRecord = v28;

    v30 = objc_opt_new();
    experimentId = [(TRIExperimentDeployment *)v19->_experimentDeployment experimentId];
    ensureExperimentFields = [v30 ensureExperimentFields];
    [ensureExperimentFields setClientExperimentId:experimentId];

    ensureExperimentFields2 = [v30 ensureExperimentFields];
    [ensureExperimentFields2 setClientTreatmentId:treatmentIdCopy];

    v34 = [MEMORY[0x277CCABB0] numberWithInt:{-[TRIExperimentDeployment deploymentId](v19->_experimentDeployment, "deploymentId")}];
    stringValue = [v34 stringValue];
    [v30 setClientDeploymentId:stringValue];

    v36 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:attributionCopy];
    [(TRIExperimentTaskSupport *)v19->_experimentSupport mergeTelemetry:v30];
    [(TRIExperimentTaskSupport *)v19->_experimentSupport mergeTelemetry:v36];

    v17 = v25;
  }

  return v19;
}

+ (id)taskWithFactorPackSetId:(id)id taskAttribution:(id)attribution rolloutDeployment:(id)deployment capabilityModifier:(id)modifier
{
  modifierCopy = modifier;
  deploymentCopy = deployment;
  attributionCopy = attribution;
  idCopy = id;
  v14 = [[self alloc] initWithFactorPackSetId:idCopy taskAttribution:attributionCopy rolloutDeployment:deploymentCopy capabilityModifier:modifierCopy];

  return v14;
}

- (void)_recordExperimentFetchFailedWithTaskError:(int)error context:(id)context
{
  contextCopy = context;
  v7 = fetchTaskErrorAsString(error);
  [(TRIFetchFactorPackSetTask *)self _recordExperimentFetchFailedWithReason:v7 context:contextCopy];
}

- (void)_recordExperimentFetchFailedWithReason:(id)reason context:(id)context
{
  contextCopy = context;
  if (self->_construct != 1)
  {
    goto LABEL_13;
  }

  v25 = contextCopy;
  reasonCopy = reason;
  experimentDeployment = [(TRIFetchFactorPackSetTask *)self experimentDeployment];

  if (!experimentDeployment)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:227 description:{@"Invalid parameter not satisfying: %@", @"self.experimentDeployment"}];
  }

  experimentDeployment2 = [(TRIFetchFactorPackSetTask *)self experimentDeployment];
  experimentId = [experimentDeployment2 experimentId];

  if (!experimentId)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:228 description:{@"Invalid parameter not satisfying: %@", @"self.experimentDeployment.experimentId"}];
  }

  if (!self->_treatmentId)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:229 description:{@"Invalid parameter not satisfying: %@", @"_treatmentId"}];

    if (reasonCopy)
    {
      goto LABEL_8;
    }

LABEL_17:
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"failureReason"}];

    goto LABEL_8;
  }

  if (!reasonCopy)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (!v25)
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v12 = [TRIExperimentPostLaunchRecorder recorderFromContext:?];
  experimentDeployment3 = [(TRIFetchFactorPackSetTask *)self experimentDeployment];
  experimentId2 = [experimentDeployment3 experimentId];
  experimentDeployment4 = [(TRIFetchFactorPackSetTask *)self experimentDeployment];
  v16 = +[TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:deploymentId:treatmentId:](TRIExperimentDeploymentTreatment, "treatmentTripleWithExperimentId:deploymentId:treatmentId:", experimentId2, [experimentDeployment4 deploymentId], self->_treatmentId);

  v17 = [TRIExperimentPostLaunchEvent failureEventWithEventType:7 treatmentTriple:v16 failureReason:reasonCopy];

  v18 = v17;
  if (!v18)
  {
    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:243 description:{@"Expression was unexpectedly nil/false: %@", @"failureEvent"}];
  }

  [v12 recordEvent:v18];

  contextCopy = v25;
LABEL_13:
}

- (void)_removeDownloadableRecord:(id)record
{
  recordCopy = record;
  guardedDownloadableRecord = self->_guardedDownloadableRecord;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__TRIFetchFactorPackSetTask__removeDownloadableRecord___block_invoke;
  v7[3] = &unk_279DE3EE0;
  v8 = recordCopy;
  v6 = recordCopy;
  [(_PASLock *)guardedDownloadableRecord runWithLockAcquired:v7];
}

void __55__TRIFetchFactorPackSetTask__removeDownloadableRecord___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 containsObject:*(a1 + 32)])
  {
    [v3 removeObject:*(a1 + 32)];
  }

  else
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Missing %@ in _guardedDownloadableRecord", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_downloadSetArtifactWithProvider:(id)provider downloadOptions:(id)options downloadNotificationKey:(id)key errorResult:(id *)result setArtifactFetchError:(id *)error
{
  providerCopy = provider;
  optionsCopy = options;
  keyCopy = key;
  if ([@"empty-fp-set" isEqualToString:self->_factorPackSetId])
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Factor pack set is empty by definition; skipping CloudKit fetch.", buf, 2u);
    }

    v16 = [TRIFactorPackSet alloc];
    v17 = [(TRIFactorPackSet *)v16 initWithIdent:@"empty-fp-set" packs:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v18 = dispatch_semaphore_create(0);
    v19 = [TRIFetchOptions alloc];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:3];
    v21 = [(TRIFetchOptions *)v19 initWithDownloadOptions:optionsCopy cacheDeleteAvailableSpaceClass:v20];

    *buf = 0;
    v37 = buf;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__48;
    v40 = __Block_byref_object_dispose__48;
    v41 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    factorPackSetId = self->_factorPackSetId;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __136__TRIFetchFactorPackSetTask__downloadSetArtifactWithProvider_downloadOptions_downloadNotificationKey_errorResult_setArtifactFetchError___block_invoke;
    v25[3] = &unk_279DE3F08;
    v25[4] = self;
    v28 = &v32;
    resultCopy = result;
    errorCopy = error;
    v26 = keyCopy;
    v29 = buf;
    v23 = v18;
    v27 = v23;
    [providerCopy fetchFactorPackSetWithId:factorPackSetId options:v21 completion:v25];
    dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v33 + 6))
    {
      [(TRIFetchFactorPackSetTask *)self _addMetricForFetchFactorPackSetTaskError:?];
    }

    v17 = *(v37 + 5);

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(buf, 8);
  }

  return v17;
}

void __136__TRIFetchFactorPackSetTask__downloadSetArtifactWithProvider_downloadOptions_downloadNotificationKey_errorResult_setArtifactFetchError___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (a2 != 4)
  {
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(a1 + 32) + 120);
      v26 = 138543618;
      v27 = v17;
      v28 = 2114;
      v29 = v13;
      _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Unable to fetch factor pack set %{public}@: %{public}@", &v26, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 32;
    v18 = *(a1 + 32);
    v19 = 1;
    goto LABEL_10;
  }

  if (!v11)
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(*(a1 + 32) + 120);
      v26 = 138543362;
      v27 = v21;
      _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "No valid factor set could be downloaded for %{public}@.", &v26, 0xCu);
    }

    [MEMORY[0x277D73698] notifyDownloadFailedForKey:*(a1 + 40) withCloudKitError:v13];
    *(*(*(a1 + 56) + 8) + 24) = 31;
    v18 = *(a1 + 32);
    v19 = 3;
LABEL_10:
    v22 = [v18 _taskResultForStatus:v19 reportResultToServer:1 earliestRetryDate:v12];
    v23 = *(a1 + 72);
    v24 = *v23;
    *v23 = v22;

    v14 = *(a1 + 80);
    v15 = a6;
    goto LABEL_11;
  }

  v14 = (*(*(a1 + 64) + 8) + 40);
  v15 = a3;
LABEL_11:
  objc_storeStrong(v14, v15);
  dispatch_semaphore_signal(*(a1 + 48));

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_requiredAssetsForFactorPackSet:(id)set context:(id)context
{
  v52 = *MEMORY[0x277D85DE8];
  setCopy = set;
  contextCopy = context;
  v7 = [TRIAssetStore alloc];
  paths = [contextCopy paths];
  v42 = [(TRIAssetStore *)v7 initWithPaths:paths];

  v41 = objc_opt_new();
  v37 = contextCopy;
  keyValueStore = [contextCopy keyValueStore];
  v40 = [TRINamespaceFactorSubscriptionSettings settingsWithKeyValueStore:keyValueStore];

  v10 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v38 = setCopy;
  obj = [setCopy packs];
  v11 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    v14 = v10;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v45 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        selectedNamespace = [v16 selectedNamespace];
        hasName = [selectedNamespace hasName];

        v20 = 0x279DDD000uLL;
        if (hasName)
        {
          selectedNamespace2 = [v16 selectedNamespace];
          name = [selectedNamespace2 name];
          v23 = [TRIClientFactorPackUtils aliasesInNamespace:name];

          v20 = 0x279DDD000;
        }

        else
        {
          selectedNamespace2 = TRILogCategory_Server();
          if (os_log_type_enabled(selectedNamespace2, OS_LOG_TYPE_ERROR))
          {
            factorPackId = [v16 factorPackId];
            *buf = 138543362;
            v50 = factorPackId;
            _os_log_error_impl(&dword_26F567000, selectedNamespace2, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has missing namespace name.", buf, 0xCu);
          }

          v23 = 0;
        }

        v24 = [*(v20 + 3112) requiredAssetsForInstallationWithFactorPack:v16 assetStore:v42 maProvider:v41 subscriptionSettings:v40 aliasToUnaliasMap:v23];
        if (!v24)
        {

          objc_autoreleasePoolPop(v17);
          v32 = 0;
          v10 = v14;
          goto LABEL_18;
        }

        v25 = v24;
        cloudKit = [v24 cloudKit];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __69__TRIFetchFactorPackSetTask__requiredAssetsForFactorPackSet_context___block_invoke;
        v44[3] = &unk_279DE3F30;
        v44[4] = v16;
        [cloudKit enumerateObjectsUsingBlock:v44];

        mobileAsset = [v25 mobileAsset];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __69__TRIFetchFactorPackSetTask__requiredAssetsForFactorPackSet_context___block_invoke_395;
        v43[3] = &unk_279DE3F58;
        v43[4] = v16;
        [mobileAsset enumerateObjectsUsingBlock:v43];

        factorPackId2 = [v16 factorPackId];
        v29 = TRIValidateFactorPackId();

        if (!v29)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:378 description:{@"Expression was unexpectedly nil/false: %@", @"TRIValidateFactorPackId(pack.factorPackId)"}];
        }

        v10 = v14;
        [v14 setObject:v25 forKeyedSubscript:v29];

        objc_autoreleasePoolPop(v17);
        ++v15;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v32 = v10;
LABEL_18:

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

void __69__TRIFetchFactorPackSetTask__requiredAssetsForFactorPackSet_context___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isInstalled] & 1) == 0)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) factorPackId];
      v6 = [v3 assetId];
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Factor pack %{public}@ requires Trial-CK asset %{public}@ which is not already on disk; will be downloaded.", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __69__TRIFetchFactorPackSetTask__requiredAssetsForFactorPackSet_context___block_invoke_395(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isInstalled] & 1) == 0)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) factorPackId];
      v6 = [v3 fullAssetId];
      v7 = [v6 type];
      v8 = [v3 fullAssetId];
      v9 = [v8 specifier];
      v10 = [v3 fullAssetId];
      v11 = [v10 version];
      v13 = 138544130;
      v14 = v5;
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Factor pack %{public}@ requires MAAsset %{public}@.%{public}@.%{public}@ which is not already on disk; will be downloaded.", &v13, 0x2Au);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_uniqueUninstalledAssets:(id)assets
{
  assetsCopy = assets;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __54__TRIFetchFactorPackSetTask__uniqueUninstalledAssets___block_invoke;
  v14 = &unk_279DE3F80;
  v15 = v4;
  v16 = v5;
  v6 = v5;
  v7 = v4;
  [assetsCopy enumerateKeysAndObjectsUsingBlock:&v11];

  v8 = [TRIGenericUniqueRequiredAssets alloc];
  v9 = [(TRIGenericUniqueRequiredAssets *)v8 initWithCloudKit:v7 mobileAsset:v6, v11, v12, v13, v14];

  return v9;
}

void __54__TRIFetchFactorPackSetTask__uniqueUninstalledAssets___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 cloudKit];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__TRIFetchFactorPackSetTask__uniqueUninstalledAssets___block_invoke_2;
  v9[3] = &unk_279DE3F30;
  v10 = *(a1 + 32);
  [v5 enumerateObjectsUsingBlock:v9];

  v6 = [v4 mobileAsset];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__TRIFetchFactorPackSetTask__uniqueUninstalledAssets___block_invoke_3;
  v7[3] = &unk_279DE3F58;
  v8 = *(a1 + 40);
  [v6 enumerateObjectsUsingBlock:v7];
}

void __54__TRIFetchFactorPackSetTask__uniqueUninstalledAssets___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([v6 isInstalled] & 1) == 0)
  {
    v3 = [v6 metadata];
    v4 = *(a1 + 32);
    v5 = [v6 assetId];
    [v4 setObject:v3 forKeyedSubscript:v5];
  }
}

void __54__TRIFetchFactorPackSetTask__uniqueUninstalledAssets___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 metadata];
  v4 = *(a1 + 32);
  v5 = [v3 fullAssetId];

  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (id)_subscribedOnDemandFactorsForAssets:(id)assets factorPackSet:(id)set context:(id)context
{
  v48 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  setCopy = set;
  keyValueStore = [context keyValueStore];
  v35 = [TRINamespaceFactorSubscriptionSettings settingsWithKeyValueStore:keyValueStore];

  v36 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v31 = setCopy;
  obj = [setCopy packs];
  v9 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        if (![v13 hasSelectedNamespace] || (objc_msgSend(v13, "selectedNamespace"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "hasName"), v14, (v15 & 1) == 0))
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:417 description:@"factor pack is missing namespace"];
        }

        selectedNamespace = [v13 selectedNamespace];
        name = [selectedNamespace name];

        v19 = [v35 subscribedFactorsForNamespaceName:name];
        if (([v13 hasFactorPackId] & 1) == 0)
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:421 description:@"factor pack is missing factor pack identifier"];
        }

        factorPackId = [v13 factorPackId];
        v21 = TRIValidateFactorPackId();

        if (!v21)
        {
          currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:422 description:{@"Expression was unexpectedly nil/false: %@", @"TRIValidateFactorPackId(pack.factorPackId)"}];
        }

        v22 = [assetsCopy objectForKeyedSubscript:v21];
        if (!v22)
        {
          currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:423 description:{@"Expression was unexpectedly nil/false: %@", @"assets[factorPackId]"}];
        }

        cloudKit = [v22 cloudKit];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __87__TRIFetchFactorPackSetTask__subscribedOnDemandFactorsForAssets_factorPackSet_context___block_invoke;
        v38[3] = &unk_279DE3FA8;
        v39 = v19;
        v40 = name;
        v41 = v13;
        v42 = v36;
        v24 = name;
        v25 = v19;
        [cloudKit enumerateObjectsUsingBlock:v38];
      }

      v10 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v10);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v36;
}

void __87__TRIFetchFactorPackSetTask__subscribedOnDemandFactorsForAssets_factorPackSet_context___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isOnDemand])
  {
    v4 = *(a1 + 32);
    v5 = [v3 factorName];
    LODWORD(v4) = [v4 containsObject:v5];

    if (v4)
    {
      v6 = [TRIFactorNamespaceRecord alloc];
      v7 = [v3 factorName];
      v8 = [(TRIFactorNamespaceRecord *)v6 initWithFactorName:v7 namespaceName:*(a1 + 40)];

      v9 = TRILogCategory_Server();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 48) factorPackId];
        v11 = [v3 assetId];
        v12 = [v3 factorName];
        v23 = 138543874;
        v24 = v10;
        v25 = 2114;
        v26 = v11;
        v27 = 2114;
        v28 = v12;
        _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "Factor pack %{public}@ has asset %{public}@ associated with on-demand factor name %{public}@", &v23, 0x20u);
      }

      v13 = *(a1 + 56);
      v14 = [v3 assetId];
      v15 = [v13 objectForKeyedSubscript:v14];

      if (v15 && ([v15 isEqualToFactorRecord:v8] & 1) == 0)
      {
        v16 = TRILogCategory_Server();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v3 assetId];
          v18 = [v15 factorName];
          v19 = [v3 factorName];
          v23 = 138543874;
          v24 = v17;
          v25 = 2114;
          v26 = v18;
          v27 = 2114;
          v28 = v19;
          _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Warning:same assetId %{public}@ with different on-demand factor names %{public}@ and %{public}@; ; ignoring the former", &v23, 0x20u);
        }
      }

      v20 = *(a1 + 56);
      v21 = [v3 assetId];
      [v20 setObject:v8 forKeyedSubscript:v21];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_downloadAndSaveCKAssetsWithMetadata:(id)metadata artifactProvider:(id)provider options:(id)options downloadNotificationKey:(id)key context:(id)context assetsDownloadSize:(unint64_t *)size errorResult:(id *)result fetchError:(id *)self0
{
  metadataCopy = metadata;
  providerCopy = provider;
  optionsCopy = options;
  keyCopy = key;
  contextCopy = context;
  if ([metadataCopy count])
  {
    v59 = contextCopy;
    v22 = providerCopy;
    v23 = a2;
    v24 = objc_opt_new();
    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 3221225472;
    v116[2] = __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke;
    v116[3] = &unk_279DE3FD0;
    v25 = v24;
    v117 = v25;
    [metadataCopy enumerateKeysAndObjectsUsingBlock:v116];
    v60 = optionsCopy;
    v26 = dispatch_semaphore_create(0);
    v110 = 0;
    v111 = &v110;
    v112 = 0x3032000000;
    v113 = __Block_byref_object_copy__48;
    v114 = __Block_byref_object_dispose__48;
    v115 = 0;
    sizeCopy = size;
    *size = 0;
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_2;
    v102[3] = &unk_279DE3FF8;
    selfCopy = self;
    v102[4] = self;
    v57 = keyCopy;
    v28 = keyCopy;
    v103 = v28;
    resultCopy = result;
    v29 = v23;
    providerCopy = v22;
    errorCopy = error;
    v30 = metadataCopy;
    v104 = v30;
    v106 = &v110;
    v109 = v29;
    v31 = v26;
    optionsCopy = v60;
    v105 = v31;
    v58 = v25;
    v32 = v25;
    v33 = v31;
    v34 = [v22 fetchRecordIdsForAssetsWithIds:v32 options:v60 completion:v102];
    [MEMORY[0x277D425A0] waitForSemaphore:v33];
    if (v111[5])
    {
      v56 = v22;
      v35 = objc_alloc(MEMORY[0x277CBEB38]);
      v36 = [v35 initWithCapacity:{objc_msgSend(v111[5], "count")}];
      v37 = v111[5];
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_418;
      v97[3] = &unk_279DE4020;
      v38 = v30;
      v101 = v29;
      v98 = v38;
      v99 = selfCopy;
      v39 = v36;
      v100 = v39;
      [v37 enumerateKeysAndObjectsUsingBlock:v97];
      v91 = 0;
      v92 = &v91;
      v93 = 0x3032000000;
      v94 = __Block_byref_object_copy__48;
      v95 = __Block_byref_object_dispose__48;
      v96 = 0;
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_2_424;
      v88[3] = &unk_279DE4070;
      v89 = v39;
      v90 = selfCopy;
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_4;
      v84[3] = &unk_279DE40C0;
      v85 = v89;
      v86 = selfCopy;
      v40 = v59;
      v87 = v40;
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_6;
      v77[3] = &unk_279DE40E8;
      v77[4] = selfCopy;
      resultCopy2 = result;
      v78 = v28;
      v41 = v38;
      v79 = v41;
      v81 = &v91;
      v83 = v29;
      v42 = v33;
      v80 = v42;
      v54 = v85;
      optionsCopy = v60;
      v43 = [v56 fetchAssetsWithRecordIds:v85 options:v60 perRecordProgress:0 perRecordCompletionBlockOnSuccess:v88 perRecordCompletionBlockOnError:v84 completion:v77];
      [MEMORY[0x277D425A0] waitForSemaphore:v42];
      if (v92[5])
      {
        v73 = 0;
        v74 = &v73;
        v75 = 0x2020000000;
        v76 = 1;
        v44 = [TRIAssetStore alloc];
        paths = [v40 paths];
        downloadOptions = [v60 downloadOptions];
        activity = [downloadOptions activity];
        v48 = [(TRIAssetStore *)v44 initWithPaths:paths monitoredActivity:activity];

        v49 = v92[5];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_428;
        v64[3] = &unk_279DE4110;
        v70 = v29;
        v65 = v41;
        v66 = selfCopy;
        v50 = v48;
        v67 = v50;
        v69 = &v73;
        v68 = v60;
        resultCopy3 = result;
        v72 = sizeCopy;
        [v49 enumerateKeysAndObjectsUsingBlock:v64];
        v62[0] = 0;
        v62[1] = v62;
        v62[2] = 0x2020000000;
        v63 = 1;
        v51 = v92[5];
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_2_431;
        v61[3] = &unk_279DE4138;
        v61[4] = v62;
        [v51 enumerateKeysAndObjectsUsingBlock:v61];
        providerCopy = v56;
        v52 = *(v74 + 24);
        _Block_object_dispose(v62, 8);

        _Block_object_dispose(&v73, 8);
        optionsCopy = v60;
      }

      else
      {
        v52 = 0;
        providerCopy = v56;
      }

      _Block_object_dispose(&v91, 8);
    }

    else
    {
      v52 = 0;
    }

    _Block_object_dispose(&v110, 8);
    keyCopy = v57;
    contextCopy = v59;
  }

  else
  {
    v52 = 1;
  }

  return v52 & 1;
}

void __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_25;
      }

      v19 = TRILogCategory_Server();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(*(a1 + 32) + 120);
        *buf = 138543362;
        v40 = v20;
        _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "Fetch of factor pack set %{public}@ was canceled.", buf, 0xCu);
      }

      v21 = *(a1 + 32);
      v22 = 4;
    }

    else
    {
      v27 = TRILogCategory_Server();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(*(a1 + 32) + 120);
        *buf = 138543618;
        v40 = v28;
        v41 = 2114;
        v42 = v12;
        _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "Unable to fetch CKRecordIDs for factor pack set %{public}@, will not retry: %{public}@", buf, 0x16u);
      }

      [MEMORY[0x277D73698] notifyDownloadFailedForKey:*(a1 + 40) withCloudKitError:v12];
      v21 = *(a1 + 32);
      v22 = 3;
    }

    v25 = 0;
LABEL_23:
    v29 = [v21 _taskResultForStatus:v22 reportResultToServer:1 earliestRetryDate:v25];
    v30 = *(a1 + 72);
    v31 = *v30;
    *v30 = v29;

    v17 = *(a1 + 80);
    v18 = a5;
LABEL_24:
    objc_storeStrong(v17, v18);
    goto LABEL_25;
  }

  switch(a2)
  {
    case 2:
      v23 = TRILogCategory_Server();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(*(a1 + 32) + 120);
        *buf = 138543874;
        v40 = v24;
        v41 = 2114;
        v42 = v11;
        v43 = 2114;
        v44 = v12;
        _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_DEFAULT, "Unable to fetch CKRecordIDs for factor pack set %{public}@, will retry after %{public}@: %{public}@", buf, 0x20u);
      }

      v21 = *(a1 + 32);
      v22 = 1;
      v25 = v11;
      goto LABEL_23;
    case 3:
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:*(a1 + 88) object:*(a1 + 32) file:@"TRIFetchFactorPackSetTask.m" lineNumber:514 description:{@"Unexpected TRIFetchStatus %tu", 3}];

      break;
    case 4:
      if (v10)
      {
        v13 = [v10 count];
        if (v13 == [*(a1 + 48) count])
        {
          v14 = TRILogCategory_Server();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [*(a1 + 48) count];
            v16 = *(*(a1 + 32) + 120);
            *buf = 134218242;
            v40 = v15;
            v41 = 2114;
            v42 = v16;
            _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Retrieved %tu CKRecordIDs for assets in factor pack set %{public}@.", buf, 0x16u);
          }

          v17 = (*(*(a1 + 64) + 8) + 40);
          v18 = a3;
          goto LABEL_24;
        }
      }

      v33 = TRILogCategory_Server();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v37 = *(*(a1 + 32) + 120);
        v38 = [*(a1 + 48) count];
        *buf = 138543874;
        v40 = v37;
        v41 = 2048;
        v42 = v38;
        v43 = 2048;
        v44 = [v10 count];
        _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "Retrieved wrong number of CKRecordIDs for assets in factor pack set %{public}@ (exp %tu, act %tu).", buf, 0x20u);
      }

      v34 = [*(a1 + 32) _taskResultForStatus:3 reportResultToServer:1 earliestRetryDate:0];
      v35 = *(a1 + 72);
      v36 = *v35;
      *v35 = v34;

      break;
  }

LABEL_25:
  dispatch_semaphore_signal(*(a1 + 56));

  v32 = *MEMORY[0x277D85DE8];
}

void __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_418(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKeyedSubscript:v7];
  if (!v8)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"TRIFetchFactorPackSetTask.m" lineNumber:529 description:{@"Expression was unexpectedly nil/false: %@", @"assetMetadata[assetId]"}];
  }

  v9 = [v8 downloadSize];

  v11 = [[TRISizedCKRecordID alloc] initWithRecordId:v6 downloadSize:v9];
  [*(a1 + 48) setObject:v11 forKeyedSubscript:v7];
}

void __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_2_424(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_3;
  v8[3] = &unk_279DE4048;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v7 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

void __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = *(a1 + 32);
  v8 = [a3 recordId];
  LODWORD(v7) = [v7 isEqual:v8];

  v9 = v11;
  if (v7)
  {
    v10 = [*(*(a1 + 40) + 80) objectForKeyedSubscript:v11];
    if (v10)
    {
      [*(a1 + 40) _removeDownloadableRecord:v10];
    }

    *a4 = 1;

    v9 = v11;
  }
}

void __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_5;
  v13[3] = &unk_279DE4098;
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];
  v14 = v6;
  v15 = v8;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];
}

void __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_5(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v16 = a2;
  v7 = *(a1 + 32);
  v8 = [a3 recordId];
  LODWORD(v7) = [v7 isEqual:v8];

  v9 = v16;
  if (v7)
  {
    v10 = [*(*(a1 + 40) + 80) objectForKeyedSubscript:v16];
    v11 = v10;
    if (v10)
    {
      v12 = *(a1 + 40);
      v13 = [v10 factorName];
      v14 = [v11 namespaceName];
      v15 = [*(a1 + 48) client];
      [v12 _logOnDemandFactor:v13 metricName:@"on_demand_factor_failed_to_download_by_subscription" namespaceName:v14 client:v15 error:*(a1 + 56)];

      [*(a1 + 40) _removeDownloadableRecord:v11];
    }

    *a4 = 1;

    v9 = v16;
  }
}

void __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_27;
      }

      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(*(a1 + 32) + 120);
        *buf = 138543362;
        v36 = v19;
        _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEFAULT, "Fetch of factor pack set %{public}@ was canceled.", buf, 0xCu);
      }

      v15 = *(a1 + 32);
      v16 = 4;
LABEL_25:
      v17 = 0;
LABEL_26:
      v31 = [v15 _taskResultForStatus:v16 reportResultToServer:1 earliestRetryDate:v17];
      v32 = *(a1 + 72);
      v33 = *v32;
      *v32 = v31;

      goto LABEL_27;
    }

    v27 = TRILogCategory_Server();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(*(a1 + 32) + 120);
      *buf = 138543618;
      v36 = v28;
      v37 = 2114;
      v38 = v12;
      _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "Unable to fetch all assets for factor pack set %{public}@, will not retry: %{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D73698] notifyDownloadFailedForKey:*(a1 + 40) withCloudKitError:v12];
LABEL_24:
    v15 = *(a1 + 32);
    v16 = 3;
    goto LABEL_25;
  }

  switch(a2)
  {
    case 4:
      v20 = [v10 count];
      v21 = [*(a1 + 48) count];
      v22 = TRILogCategory_Server();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v20 == v21)
      {
        if (v23)
        {
          v24 = [*(a1 + 48) count];
          v25 = *(*(a1 + 32) + 120);
          *buf = 134218242;
          v36 = v24;
          v37 = 2114;
          v38 = v25;
          _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "Finished downloading %tu assets for factor pack set %{public}@.", buf, 0x16u);
        }

        objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
        break;
      }

      if (v23)
      {
        v29 = *(*(a1 + 32) + 120);
        v30 = [*(a1 + 48) count];
        *buf = 138543874;
        v36 = v29;
        v37 = 2048;
        v38 = v30;
        v39 = 2048;
        v40 = [v10 count];
        _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "Downloaded wrong number of assets for factor pack set %{public}@ (exp %tu, act %tu).", buf, 0x20u);
      }

      goto LABEL_24;
    case 3:
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIFetchFactorPackSetTask.m" lineNumber:606 description:{@"Unexpected TRIFetchStatus %tu", 3}];

      break;
    case 2:
      v13 = TRILogCategory_Server();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*(a1 + 32) + 120);
        *buf = 138543874;
        v36 = v14;
        v37 = 2114;
        v38 = v11;
        v39 = 2114;
        v40 = v12;
        _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Unable to fetch all assets for factor pack set %{public}@, will retry after %{public}@: %{public}@", buf, 0x20u);
      }

      v15 = *(a1 + 32);
      v16 = 1;
      v17 = v11;
      goto LABEL_26;
  }

LABEL_27:
  dispatch_semaphore_signal(*(a1 + 56));

  v34 = *MEMORY[0x277D85DE8];
}

void __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_428(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = [v7 objectForKeyedSubscript:v9];
  if (!v10)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"TRIFetchFactorPackSetTask.m" lineNumber:623 description:{@"Expression was unexpectedly nil/false: %@", @"assetMetadata[assetId]"}];
  }

  v11 = *(a1 + 48);
  v24 = 0;
  v12 = [v11 saveAssetWithIdentifier:v9 assetURL:v8 metadata:v10 error:&v24];

  v13 = v24;
  if (v12 == 2)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    [*(a1 + 40) setWasDeferred:1];
    v20 = [*(a1 + 40) _taskResultForStatus:1 reportResultToServer:1 earliestRetryDate:0];
    v21 = *(a1 + 80);
    v22 = *v21;
    *v21 = v20;

    *a4 = 1;
  }

  else if (v12)
  {
    **(a1 + 88) += [v10 downloadSize];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v14 = [*(a1 + 56) downloadOptions];
    v15 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:v13 options:v14];

    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = 3;
    }

    v17 = [*(a1 + 40) _taskResultForStatus:v16 reportResultToServer:1 earliestRetryDate:v15];
    v18 = *(a1 + 80);
    v19 = *v18;
    *v18 = v17;

    *a4 = 1;
  }
}

void __165__TRIFetchFactorPackSetTask__downloadAndSaveCKAssetsWithMetadata_artifactProvider_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke_2_431(uint64_t a1, uint64_t a2, void *a3)
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
        *buf = 138543618;
        v17 = v4;
        v18 = 2114;
        v19 = v7;
        _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to clean up CK cached asset %{public}@: %{public}@", buf, 0x16u);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_downloadAndSaveMAAssets:(id)assets options:(id)options downloadNotificationKey:(id)key context:(id)context assetsDownloadSize:(unint64_t *)size errorResult:(id *)result fetchError:(id *)error
{
  assetsCopy = assets;
  optionsCopy = options;
  keyCopy = key;
  contextCopy = context;
  if ([assetsCopy count])
  {
    v18 = objc_opt_new();
    ensureMobileAssetOriginFields = [v18 ensureMobileAssetOriginFields];
    [ensureMobileAssetOriginFields setIsMobileAsset:1];

    rolloutSupport = self->_rolloutSupport;
    if (rolloutSupport || (rolloutSupport = self->_experimentSupport) != 0)
    {
      [rolloutSupport mergeTelemetry:v18];
    }

    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__48;
    v40 = __Block_byref_object_dispose__48;
    v41 = 0;
    v21 = dispatch_semaphore_create(0);
    v22 = objc_opt_new();
    taskAttribution = self->_taskAttribution;
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __136__TRIFetchFactorPackSetTask__downloadAndSaveMAAssets_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke;
    v31 = &unk_279DE4160;
    v34 = &v36;
    errorCopy = error;
    selfCopy = self;
    v24 = v21;
    v33 = v24;
    v25 = [v22 downloadAssets:assetsCopy attribution:taskAttribution aggregateProgress:0 group:0 completion:&v28];
    dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    if (result)
    {
      objc_storeStrong(result, v37[5]);
    }

    v26 = [v37[5] runStatus] == 2;

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v26 = 1;
  }

  return v26;
}

void __136__TRIFetchFactorPackSetTask__downloadAndSaveMAAssets_options_downloadNotificationKey_context_assetsDownloadSize_errorResult_fetchError___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v16 = a4;
  v9 = a5;
  if (a3)
  {
    [*(a1 + 32) setWasDeferred:1];
  }

  v10 = *(a1 + 56);
  v11 = *v10;
  *v10 = v9;
  v12 = v9;

  v13 = [*(a1 + 32) _taskResultForStatus:a2 reportResultToServer:1 earliestRetryDate:v16];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_saveFactorPackSet:(id)set requiredAssetMap:(id)map context:(id)context
{
  v92 = *MEMORY[0x277D85DE8];
  setCopy = set;
  mapCopy = map;
  contextCopy = context;
  v56 = _os_feature_enabled_impl();
  v8 = [TRIFactorPackStorage alloc];
  v55 = contextCopy;
  paths = [contextCopy paths];
  v65 = [(TRIFactorPackStorage *)v8 initWithPaths:paths];

  v10 = [TRIFBFactorPackStorage alloc];
  paths2 = [v55 paths];
  v53 = [(TRIFBFactorPackStorage *)v10 initWithPaths:paths2];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = [setCopy packs];
  v61 = [(TRIFactorPackSetStorage *)obj countByEnumeratingWithState:&v78 objects:v91 count:16];
  if (!v61)
  {
    goto LABEL_34;
  }

  v57 = *v79;
  while (2)
  {
    v12 = 0;
    do
    {
      if (*v79 != v57)
      {
        v13 = v12;
        objc_enumerationMutation(obj);
        v12 = v13;
      }

      v63 = v12;
      v14 = *(*(&v78 + 1) + 8 * v12);
      v64 = objc_autoreleasePoolPush();
      factorPackId = &stru_287FA0430;
      if ([v14 hasFactorPackId])
      {
        factorPackId = [v14 factorPackId];
      }

      if (![v14 hasFactorPackId] || (TRIValidateFactorPackId(), (v69 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:731 description:{@"Unexpected failure to validate factor pack set id: %@", factorPackId}];

        v69 = 0;
      }

      if (![v14 hasSelectedNamespace] || (objc_msgSend(v14, "selectedNamespace"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "hasName"), v16, (v17 & 1) == 0))
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:733 description:{@"Factor pack %@ has unexpectedly-empty namespace name", factorPackId}];
      }

      v19 = objc_opt_new();
      v20 = [mapCopy objectForKeyedSubscript:v69];
      if (!v20)
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:737 description:{@"Expression was unexpectedly nil/false: %@", @"requiredAssetMap[factorPackId]"}];
      }

      cloudKit = [v20 cloudKit];
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __73__TRIFetchFactorPackSetTask__saveFactorPackSet_requiredAssetMap_context___block_invoke;
      v76[3] = &unk_279DE3F30;
      v22 = v19;
      v77 = v22;
      [cloudKit enumerateObjectsUsingBlock:v76];

      mobileAsset = [v20 mobileAsset];
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __73__TRIFetchFactorPackSetTask__saveFactorPackSet_requiredAssetMap_context___block_invoke_2;
      v74[3] = &unk_279DE3F58;
      v66 = v22;
      v75 = v66;
      [mobileAsset enumerateObjectsUsingBlock:v74];

      selectedNamespace = [v14 selectedNamespace];
      LODWORD(v22) = [selectedNamespace hasName];

      if (v22)
      {
        selectedNamespace2 = [v14 selectedNamespace];
        name = [selectedNamespace2 name];
        v67 = [TRIClientFactorPackUtils aliasesInNamespace:name];
      }

      else
      {
        selectedNamespace2 = TRILogCategory_Server();
        if (os_log_type_enabled(selectedNamespace2, OS_LOG_TYPE_ERROR))
        {
          factorPackId2 = [v14 factorPackId];
          LODWORD(v86) = 138543362;
          *(&v86 + 4) = factorPackId2;
          _os_log_error_impl(&dword_26F567000, selectedNamespace2, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has missing namespace name.", &v86, 0xCu);
        }

        v67 = 0;
      }

      selectedNamespace3 = [v14 selectedNamespace];
      name2 = [selectedNamespace3 name];
      v29 = [(TRIFactorPackStorage *)v65 pathForFactorPackWithId:v69 namespaceName:name2];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v31 = [v29 stringByAppendingPathComponent:@"factorPack.fb"];
      if (v31)
      {
        v32 = [defaultManager fileExistsAtPath:v31];
        if (v29)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v32 = 0;
        if (v29)
        {
LABEL_23:
          context = objc_autoreleasePoolPush();
          keyValueStore = [v55 keyValueStore];
          v34 = [TRINamespaceFactorSubscriptionSettings settingsWithKeyValueStore:keyValueStore];

          selectedNamespace4 = [v14 selectedNamespace];
          name3 = [selectedNamespace4 name];
          v37 = [v34 subscribedFactorsForNamespaceName:name3];

          *&v86 = 0;
          *(&v86 + 1) = &v86;
          v87 = 0x3032000000;
          v88 = __Block_byref_object_copy__48;
          v89 = __Block_byref_object_dispose__48;
          v90 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __73__TRIFetchFactorPackSetTask__saveFactorPackSet_requiredAssetMap_context___block_invoke_453;
          v70[3] = &unk_279DE4188;
          v38 = v67;
          v71 = v38;
          v39 = v37;
          v72 = v39;
          v73 = &v86;
          [v14 enumerateFactorLevelsWithBlock:v70];
          selectedNamespace5 = [v14 selectedNamespace];
          name4 = [selectedNamespace5 name];
          [(TRIFactorPackStorage *)v65 updateSavedFactorPackWithId:v69 namespaceName:name4 populatingAssetsForFactorNames:*(*(&v86 + 1) + 40) aliasToUnaliasMap:v38];

          if ((v32 & v56) == 1)
          {
            selectedNamespace6 = [v14 selectedNamespace];
            name5 = [selectedNamespace6 name];
            [(TRIFBFactorPackStorage *)v53 updateSavedFactorLevelsWithFactorPackId:v69 namespaceName:name5 populatingAssetsForFactorNames:*(*(&v86 + 1) + 40) aliasToUnaliasMap:v38];
          }

          v44 = TRILogCategory_Server();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v83 = v69;
            v84 = 2114;
            v85 = v29;
            _os_log_impl(&dword_26F567000, v44, OS_LOG_TYPE_DEFAULT, "Factor pack %{public}@ is already on disk (path: %{public}@), updating on-demand assets", buf, 0x16u);
          }

          _Block_object_dispose(&v86, 8);
          objc_autoreleasePoolPop(context);
          goto LABEL_32;
        }
      }

      if (![(TRIFactorPackStorage *)v65 saveFactorPack:v14 populatingAssetsForFactorNames:v66 aliasToUnaliasMap:v67 factorPackByNamePath:0 factorPackByIdPath:0]|| v56 && ![(TRIFBFactorPackStorage *)v53 saveFactorLevelsForFactorPack:v14 populatingAssetsForFactorNames:v66 aliasToUnaliasMap:v67 factorLevelsByNamePath:0 factorLevelsByIdPath:0])
      {
        [(TRIFetchFactorPackSetTask *)self _addMetricForFetchFactorPackSetTaskError:16];

        objc_autoreleasePoolPop(v64);
        goto LABEL_38;
      }

LABEL_32:

      objc_autoreleasePoolPop(v64);
      v12 = v63 + 1;
    }

    while (v61 != v63 + 1);
    v61 = [(TRIFactorPackSetStorage *)obj countByEnumeratingWithState:&v78 objects:v91 count:16];
    if (v61)
    {
      continue;
    }

    break;
  }

LABEL_34:

  v47 = [TRIFactorPackSetStorage alloc];
  paths3 = [v55 paths];
  obj = [(TRIFactorPackSetStorage *)v47 initWithPaths:paths3];

  if ([(TRIFactorPackSetStorage *)obj saveFactorPackSet:setCopy])
  {
    v49 = 1;
  }

  else
  {
    [(TRIFetchFactorPackSetTask *)self _addMetricForFetchFactorPackSetTaskError:16];
LABEL_38:
    v49 = 0;
  }

  v50 = *MEMORY[0x277D85DE8];
  return v49;
}

void __73__TRIFetchFactorPackSetTask__saveFactorPackSet_requiredAssetMap_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 factorName];
  [v2 addObject:v3];
}

void __73__TRIFetchFactorPackSetTask__saveFactorPackSet_requiredAssetMap_context___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 factorName];
  [v2 addObject:v3];
}

void __73__TRIFetchFactorPackSetTask__saveFactorPackSet_requiredAssetMap_context___block_invoke_453(uint64_t a1, void *a2)
{
  v12 = a2;
  if ([v12 hasLevel])
  {
    v3 = [v12 level];
    v4 = [v3 isFactorOnDemand];

    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = [v12 factor];
      v7 = [v6 name];
      v8 = [v5 objectForKeyedSubscript:v7];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v11 = [v12 factor];
        v10 = [v11 name];
      }

      if ([*(a1 + 40) containsObject:v10])
      {
        [*(*(*(a1 + 48) + 8) + 40) addObject:v10];
      }
    }
  }
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  v328 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v247 = os_transaction_create();
  v307[0] = MEMORY[0x277D85DD0];
  v307[1] = 3221225472;
  v307[2] = __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke;
  v307[3] = &unk_279DDF7A0;
  v262 = selfCopy;
  v307[4] = selfCopy;
  v261 = contextCopy;
  v308 = v261;
  v248 = MEMORY[0x2743948D0](v307);
  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v55 = objc_opt_class();
    factorPackSetId = selfCopy->_factorPackSetId;
    *buf = 138543618;
    *&buf[4] = v55;
    *&buf[12] = 2114;
    *&buf[14] = factorPackSetId;
    _os_log_debug_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEBUG, "starting %{public}@ with factor pack set id %{public}@", buf, 0x16u);
  }

  construct = selfCopy->_construct;
  if (construct != 1)
  {
    if (construct)
    {
      v238 = 0;
      v249 = 0;
      v242 = 0;
      v258 = 0;
      namespaces = 0;
      goto LABEL_57;
    }

    rolloutDatabase = [v261 rolloutDatabase];
    v258 = [rolloutDatabase recordWithDeployment:selfCopy->_rolloutDeployment usingTransaction:0];

    if (!v258)
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        shortDesc = [(TRIRolloutDeployment *)selfCopy->_rolloutDeployment shortDesc];
        *buf = 138543362;
        *&buf[4] = shortDesc;
        _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Warning: record for Rollout deployment %{public}@ not available; issuing incomplete telemetry.", buf, 0xCu);
      }

LABEL_25:

      v31 = [TRIFactorPackSetStorage alloc];
      paths = [v261 paths];
      v24 = [(TRIFactorPackSetStorage *)v31 initWithPaths:paths];

      *v322 = 0;
      v238 = [(TRIFactorPackSetStorage *)v24 hasFactorPackSetWithId:selfCopy->_factorPackSetId path:v322];
      if (v238)
      {
        namespaceDatabase = [v261 namespaceDatabase];
        paths2 = [v261 paths];
        namespaceDescriptorsDefaultDir = [paths2 namespaceDescriptorsDefaultDir];
        v36 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:namespaceDatabase defaultDescriptorDirectoryPath:namespaceDescriptorsDefaultDir];

        if (v258)
        {
          artifact = [(TRIFactorPackSetStorage *)v258 artifact];
          rollout = [artifact rollout];
          v39 = [TRISetupAssistantFetchUtils getIncompatibleNamespaceNamesForTriClientRollout:rollout namespaceDescriptorProvider:v36];

          v40 = [v39 count];
          v41 = objc_opt_new();
          v42 = selfCopy->_factorPackSetId;
          v304[0] = MEMORY[0x277D85DD0];
          v304[1] = 3221225472;
          v304[2] = __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_462;
          v304[3] = &unk_279DE30F0;
          v306 = a2;
          v304[4] = selfCopy;
          v43 = v41;
          v305 = v43;
          [(TRIFactorPackSetStorage *)v24 enumerateCompatibleFactorPacksForFactorPackSet:v42 usingLegacyPaths:0 withBlock:v304];
          artifact2 = [(TRIFactorPackSetStorage *)v258 artifact];
          rollout2 = [artifact2 rollout];
          selectedNamespaceArray_Count = [rollout2 selectedNamespaceArray_Count];
          v48 = selectedNamespaceArray_Count != [v43 count] && v40 == 0;

          v49 = TRILogCategory_Server();
          v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
          if (v48)
          {
            if (v50)
            {
              v51 = v262->_factorPackSetId;
              *buf = 138543362;
              *&buf[4] = v51;
              _os_log_impl(&dword_26F567000, v49, OS_LOG_TYPE_DEFAULT, "Factor pack set %{public}@ contains ineligible factor pack. Re-fetching factor pack to find replacement.", buf, 0xCu);
            }
          }

          else
          {
            if (v50)
            {
              v58 = v262->_factorPackSetId;
              *buf = 138543618;
              *&buf[4] = v58;
              *&buf[12] = 2112;
              *&buf[14] = *v322;
              _os_log_impl(&dword_26F567000, v49, OS_LOG_TYPE_DEFAULT, "Factor pack set %{public}@ is already present; skipping download of factor packs. Path: %@", buf, 0x16u);
            }

            v253 = [(TRIFetchFactorPackSetTask *)v262 _taskResultForStatus:2 reportResultToServer:0 earliestRetryDate:0];
          }

          if (v48)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v54 = TRILogCategory_Server();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v224 = selfCopy->_factorPackSetId;
            shortDesc2 = [(TRIRolloutDeployment *)selfCopy->_rolloutDeployment shortDesc];
            *buf = 138543618;
            *&buf[4] = v224;
            *&buf[12] = 2114;
            *&buf[14] = shortDesc2;
            _os_log_error_impl(&dword_26F567000, v54, OS_LOG_TYPE_ERROR, "Unable to update preexisting factor pack set %{public}@ for %{public}@: record not found in database.", buf, 0x16u);
          }

          [(TRIFetchFactorPackSetTask *)selfCopy _addMetricForFetchFactorPackSetTaskError:29];
          v253 = [(TRIFetchFactorPackSetTask *)selfCopy _taskResultForStatus:3 reportResultToServer:1 earliestRetryDate:0];
        }

        goto LABEL_259;
      }

LABEL_51:

      selfCopy = v262;
      namespaces = [(TRIFactorPackSetStorage *)v258 namespaces];
      if (v258)
      {
        v53 = [MEMORY[0x277D73698] immediateDownloadNotificationKeyForNamespaceNames:namespaces];
        v249 = v53;
LABEL_53:

        v242 = 0;
        selfCopy = v262;
        goto LABEL_57;
      }

      v249 = 0;
      v242 = 0;
      goto LABEL_56;
    }

    v11 = objc_opt_new();
    rampId = [(TRIFactorPackSetStorage *)v258 rampId];

    if (rampId)
    {
      rampId2 = [(TRIFactorPackSetStorage *)v258 rampId];
      ensureRolloutFields = [v11 ensureRolloutFields];
      [ensureRolloutFields setClientRampId:rampId2];
    }

    v15 = selfCopy->_factorPackSetId;
    targetedFactorPackSetId = [(TRIFactorPackSetStorage *)v258 targetedFactorPackSetId];
    if ([(TRIFactorPackSetId *)v15 isEqual:targetedFactorPackSetId])
    {
      targetedTargetingRuleIndex = [(TRIFactorPackSetStorage *)v258 targetedTargetingRuleIndex];
      v18 = targetedTargetingRuleIndex == 0;

      if (v18)
      {
LABEL_12:
        [(TRIRolloutTaskSupport *)selfCopy->_rolloutSupport mergeTelemetry:v11];
        goto LABEL_25;
      }

      targetedFactorPackSetId = [(TRIFactorPackSetStorage *)v258 targetedTargetingRuleIndex];
      intValue = [targetedFactorPackSetId intValue];
      ensureRolloutFields2 = [v11 ensureRolloutFields];
      [ensureRolloutFields2 setClientTargetingRuleGroupOrdinal:intValue];
    }

    goto LABEL_12;
  }

  experimentDatabase = [v261 experimentDatabase];
  v258 = [experimentDatabase experimentRecordWithExperimentDeployment:selfCopy->_experimentDeployment];

  v22 = [TRIFactorPackSetStorage alloc];
  paths3 = [v261 paths];
  v24 = [(TRIFactorPackSetStorage *)v22 initWithPaths:paths3];

  *v322 = 0;
  if (![(TRIFactorPackSetStorage *)v24 hasFactorPackSetWithId:selfCopy->_factorPackSetId path:v322])
  {

    if (!v258)
    {
      v53 = TRILogCategory_Server();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        shortDesc3 = [(TRIExperimentDeployment *)selfCopy->_experimentDeployment shortDesc];
        *buf = 138543362;
        *&buf[4] = shortDesc3;
        _os_log_error_impl(&dword_26F567000, v53, OS_LOG_TYPE_ERROR, "Warning: record for experiment deployment %{public}@ not available.", buf, 0xCu);
      }

      v238 = 0;
      v249 = 0;
      v258 = 0;
      namespaces = 0;
      goto LABEL_53;
    }

    namespaces = [objc_opt_class() _namespaceNamesFromExperimentRecord:v258];
    v249 = [MEMORY[0x277D73698] immediateDownloadNotificationKeyForNamespaceNames:namespaces];
    v238 = 0;
    v242 = v258;
LABEL_56:
    v258 = 0;
LABEL_57:
    applicationBundleIdentifier = [(TRITaskAttributing *)selfCopy->_taskAttribution applicationBundleIdentifier];
    keyValueStore = [v261 keyValueStore];
    v60 = [TRIFetchDateManager managerWithKeyValueStore:keyValueStore];

    namespaceDatabase2 = [v261 namespaceDatabase];
    paths4 = [v261 paths];
    namespaceDescriptorsDefaultDir2 = [paths4 namespaceDescriptorsDefaultDir];
    v64 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:namespaceDatabase2 defaultDescriptorDirectoryPath:namespaceDescriptorsDefaultDir2];

    triCloudKitContainer = [(TRITaskAttributing *)v262->_taskAttribution triCloudKitContainer];
    teamIdentifier = [(TRITaskAttributing *)v262->_taskAttribution teamIdentifier];
    v250 = [TRICKNativeArtifactProvider providerForContainer:triCloudKitContainer teamId:teamIdentifier bundleId:applicationBundleIdentifier dateProvider:v60 namespaceDescriptorProvider:v64 serverContext:v261];

    v67 = v262;
    networkOptions = [(TRITaskAttributing *)v262->_taskAttribution networkOptions];
    stateProvider = [(TRIBaseTask *)v262 stateProvider];
    if ([networkOptions discretionaryBehavior])
    {
      v68 = [stateProvider activeActivityGrantingCapability:16];
      if (!v68)
      {
        v164 = TRILogCategory_Server();
        if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F567000, v164, OS_LOG_TYPE_DEFAULT, "no xpc activity designated for discretionary operation, failing with retry", buf, 2u);
        }

        [(TRIFetchFactorPackSetTask *)v262 _addMetricForFetchFactorPackSetTaskError:3];
        v253 = [(TRIFetchFactorPackSetTask *)v262 _taskResultForStatus:1 reportResultToServer:1 earliestRetryDate:0];
        goto LABEL_258;
      }

      [networkOptions setActivity:v68];

      v67 = v262;
    }

    v303 = 0;
    v302 = 0;
    v69 = [(TRIFetchFactorPackSetTask *)v67 _downloadSetArtifactWithProvider:v250 downloadOptions:networkOptions downloadNotificationKey:v249 errorResult:&v303 setArtifactFetchError:&v302];
    if ([v303 runStatus] != 2)
    {
      v67->wasDeferred = [TRICKNativeArtifactProvider isActivityDeferralError:v302];
      if (v302)
      {
        v70 = TRIFetchErrorParseToMetrics(v302);
        if ([v70 count] && (v67->_rolloutSupport || v67->_experimentSupport))
        {
          v300 = 0u;
          v301 = 0u;
          v298 = 0u;
          v299 = 0u;
          v71 = v70;
          v72 = [v71 countByEnumeratingWithState:&v298 objects:v327 count:16];
          if (!v72)
          {
            goto LABEL_76;
          }

          v73 = *v299;
          while (1)
          {
            for (i = 0; i != v72; ++i)
            {
              if (*v299 != v73)
              {
                objc_enumerationMutation(v71);
              }

              v75 = v67->_construct;
              p_rolloutSupport = &v67->_rolloutSupport;
              if (v75)
              {
                if (v75 != 1)
                {
                  continue;
                }

                p_rolloutSupport = &v67->_experimentSupport;
              }

              [*p_rolloutSupport addMetric:*(*(&v298 + 1) + 8 * i)];
            }

            v72 = [v71 countByEnumeratingWithState:&v298 objects:v327 count:16];
            if (!v72)
            {
LABEL_76:

              break;
            }
          }
        }

        v67 = v262;
      }
    }

    if (!v69)
    {
      if ([v303 runStatus] == 3)
      {
        [(TRIFetchFactorPackSetTask *)v67 _recordExperimentFetchFailedWithReason:@"FactorPackNotFound" context:v261];
      }

      v253 = v303;
      if (!v253)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v262 file:@"TRIFetchFactorPackSetTask.m" lineNumber:1052 description:{@"Expression was unexpectedly nil/false: %@", @"taskResult"}];
        v253 = 0;
      }

      goto LABEL_257;
    }

    v260 = objc_opt_new();
    for (j = 0; ; ++j)
    {
      packs = [v69 packs];
      v79 = j < [packs count];

      if (!v79)
      {
        break;
      }

      v80 = objc_autoreleasePoolPush();
      packs2 = [v69 packs];
      v82 = [packs2 objectAtIndexedSubscript:j];

      if (([v82 hasFactorPackId] & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        ident = [v69 ident];
        [currentHandler2 handleFailureInMethod:a2 object:v262 file:@"TRIFetchFactorPackSetTask.m" lineNumber:1061 description:{@"Factor pack set %@ has factor pack with missing id", ident}];
      }

      selectedNamespace = [v82 selectedNamespace];
      hasName = [selectedNamespace hasName];

      if ((hasName & 1) == 0)
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        factorPackId = [v82 factorPackId];
        [currentHandler3 handleFailureInMethod:a2 object:v262 file:@"TRIFetchFactorPackSetTask.m" lineNumber:1062 description:{@"No namespace name on factor pack %@", factorPackId}];
      }

      v85 = MEMORY[0x277D73750];
      selectedNamespace2 = [v82 selectedNamespace];
      name = [selectedNamespace2 name];
      paths5 = [v261 paths];
      namespaceDescriptorsDefaultDir3 = [paths5 namespaceDescriptorsDefaultDir];
      v90 = [v85 loadWithNamespaceName:name fromDirectory:namespaceDescriptorsDefaultDir3];

      if (v90)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v314) = 0;
        selectedNamespace3 = [v82 selectedNamespace];
        compatibilityVersionArray = [selectedNamespace3 compatibilityVersionArray];
        v295[0] = MEMORY[0x277D85DD0];
        v295[1] = 3221225472;
        v295[2] = __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_485;
        v295[3] = &unk_279DE41D8;
        v93 = v90;
        v296 = v93;
        v297 = buf;
        [compatibilityVersionArray enumerateValuesWithBlock:v295];

        if ((*(*&buf[8] + 24) & 1) == 0)
        {
          v94 = TRILogCategory_Server();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
          {
            factorPackId2 = [v82 factorPackId];
            selectedNamespace4 = [v82 selectedNamespace];
            name2 = [selectedNamespace4 name];
            downloadNCV = [v93 downloadNCV];
            *v322 = 138543874;
            *&v322[4] = factorPackId2;
            v323 = 2114;
            v324 = name2;
            v325 = 1024;
            v326 = downloadNCV;
            _os_log_impl(&dword_26F567000, v94, OS_LOG_TYPE_DEFAULT, "Factor pack %{public}@ does not declare compatibility with NCV (%{public}@, %u); will be omitted from installation.", v322, 0x1Cu);
          }

          [v260 addIndex:j];
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v99 = TRILogCategory_Server();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          selectedNamespace5 = [v82 selectedNamespace];
          name3 = [selectedNamespace5 name];
          ident2 = [v69 ident];
          *buf = 138543618;
          *&buf[4] = name3;
          *&buf[12] = 2114;
          *&buf[14] = ident2;
          _os_log_impl(&dword_26F567000, v99, OS_LOG_TYPE_DEFAULT, "Could not load namespace descriptor for namespace %{public}@ found in factor pack set %{public}@. Skipping download of factor pack for that namespace.", buf, 0x16u);
        }

        [v260 addIndex:j];
      }

      objc_autoreleasePoolPop(v80);
    }

    packs3 = [v69 packs];
    v108 = [packs3 mutableCopy];

    [v108 removeObjectsAtIndexes:v260];
    v243 = [v69 copyWithReplacementPacks:v108];

    v241 = [(TRIFetchFactorPackSetTask *)v262 _requiredAssetsForFactorPackSet:v243 context:v261];
    if (!v241)
    {
      [(TRIFetchFactorPackSetTask *)v262 _addMetricForFetchFactorPackSetTaskError:5];
      [(TRIFetchFactorPackSetTask *)v262 _recordExperimentFetchFailedWithTaskError:5 context:v261];
      v253 = [(TRIFetchFactorPackSetTask *)v262 _taskResultForStatus:3 reportResultToServer:1 earliestRetryDate:0];
LABEL_256:

LABEL_257:
LABEL_258:

      v24 = v258;
      v258 = namespaces;
      goto LABEL_259;
    }

    v240 = [(TRIFetchFactorPackSetTask *)v262 _uniqueUninstalledAssets:?];
    v109 = TRILogCategory_Server();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      ident3 = [v243 ident];
      cloudKit = [v240 cloudKit];
      v112 = [cloudKit count];
      mobileAsset = [v240 mobileAsset];
      v114 = [mobileAsset count];
      *buf = 138543618;
      *&buf[4] = ident3;
      *&buf[12] = 2048;
      *&buf[14] = v114 + v112;
      _os_log_impl(&dword_26F567000, v109, OS_LOG_TYPE_DEFAULT, "Factor pack set %{public}@ references %tu assets which are required for enrollment and are not already on disk.", buf, 0x16u);
    }

    v115 = [(TRIFetchFactorPackSetTask *)v262 _subscribedOnDemandFactorsForAssets:v241 factorPackSet:v243 context:v261];
    factorRecordsByAssetId = v262->_factorRecordsByAssetId;
    v262->_factorRecordsByAssetId = v115;

    guardedDownloadableRecord = v262->_guardedDownloadableRecord;
    v294[0] = MEMORY[0x277D85DD0];
    v294[1] = 3221225472;
    v294[2] = __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_487;
    v294[3] = &unk_279DE3EE0;
    v294[4] = v262;
    [(_PASLock *)guardedDownloadableRecord runWithLockAcquired:v294];
    v252 = [stateProvider activeActivityDescriptorGrantingCapability:1];

    discretionaryBehavior = [networkOptions discretionaryBehavior];
    if (v262->_experimentDeployment)
    {
      v119 = discretionaryBehavior == 0;
    }

    else
    {
      v119 = 0;
    }

    v120 = !v119;
    v259 = v120;
    v290 = 0u;
    v291 = 0u;
    v292 = 0u;
    v293 = 0u;
    packs4 = [v243 packs];
    v122 = [(TRIFetchOptions *)packs4 countByEnumeratingWithState:&v290 objects:v321 count:16];
    obj = packs4;
    v123 = 0;
    if (v122)
    {
      v124 = *v291;
      do
      {
        v125 = 0;
        do
        {
          if (*v291 != v124)
          {
            objc_enumerationMutation(obj);
          }

          v126 = *(*(&v290 + 1) + 8 * v125);
          v127 = objc_autoreleasePoolPush();
          v128 = MEMORY[0x277D73750];
          selectedNamespace6 = [v126 selectedNamespace];
          name4 = [selectedNamespace6 name];
          paths6 = [v261 paths];
          namespaceDescriptorsDefaultDir4 = [paths6 namespaceDescriptorsDefaultDir];
          v133 = [v128 loadWithNamespaceName:name4 fromDirectory:namespaceDescriptorsDefaultDir4];

          purgeabilityLevel = [v133 purgeabilityLevel];
          if (v123 <= purgeabilityLevel)
          {
            v123 = purgeabilityLevel;
          }

          else
          {
            v123 = v123;
          }

          if (!v259 || ((v135 = [networkOptions allowsCellularAccess], !v252) ? (v136 = v135) : (v136 = 0), v136 != 1 || applicationBundleIdentifier && objc_msgSend(applicationBundleIdentifier, "length") && (objc_msgSend(v133, "expensiveNetworkingAllowed") & 1) != 0))
          {
            v137 = 1;
          }

          else
          {
            v138 = v262->_construct;
            if (v138)
            {
              if (v138 == 1)
              {
                experimentId = [(TRIExperimentDeployment *)v262->_experimentDeployment experimentId];
                v140 = @"Experiment";
              }

              else
              {
                experimentId = 0;
                v140 = 0;
              }
            }

            else
            {
              experimentId = [(TRIRolloutDeployment *)v262->_rolloutDeployment rolloutId];
              v140 = @"Rollout";
            }

            v141 = TRILogCategory_Server();
            if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
            {
              v254 = v262->_factorPackSetId;
              firstObject = [(TRIFactorPackSetStorage *)namespaces firstObject];
              expensiveNetworkingAllowed = [v133 expensiveNetworkingAllowed];
              *buf = 138413570;
              v144 = @"NO";
              if (expensiveNetworkingAllowed)
              {
                v144 = @"YES";
              }

              *&buf[4] = v254;
              *&buf[12] = 2112;
              *&buf[14] = firstObject;
              *&buf[22] = 2112;
              v314 = v140;
              v315 = 2112;
              v316 = experimentId;
              v317 = 2112;
              v318 = applicationBundleIdentifier;
              v319 = 2112;
              v320 = v144;
              _os_log_error_impl(&dword_26F567000, v141, OS_LOG_TYPE_ERROR, "preventing fetch of factor pack set %@ on cellular for namespace %@ of %@ %@, resourceAttributionBundleIdentifier: %@ expensiveNetworkingAllowed: %@", buf, 0x3Eu);
            }

            [(TRIFetchFactorPackSetTask *)v262 _addMetricForFetchFactorPackSetTaskError:23];
            v253 = [(TRIFetchFactorPackSetTask *)v262 _taskResultForStatus:1 reportResultToServer:0 earliestRetryDate:0];

            v137 = 0;
          }

          objc_autoreleasePoolPop(v127);
          if (!v137)
          {
            goto LABEL_255;
          }

          ++v125;
        }

        while (v122 != v125);
        v145 = [(TRIFetchOptions *)obj countByEnumeratingWithState:&v290 objects:v321 count:16];
        v122 = v145;
      }

      while (v145);
    }

    v146 = [MEMORY[0x277D737B0] availableSpaceClassFromPurgeabilityLevel:v123];
    v147 = [TRIFetchOptions alloc];
    v148 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v146];
    obj = [(TRIFetchOptions *)v147 initWithDownloadOptions:networkOptions cacheDeleteAvailableSpaceClass:v148];

    v149 = objc_opt_new();
    cloudKit2 = [v240 cloudKit];
    v288[0] = MEMORY[0x277D85DD0];
    v288[1] = 3221225472;
    v288[2] = __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_501;
    v288[3] = &unk_279DE3FD0;
    v151 = v149;
    v289 = v151;
    [cloudKit2 enumerateKeysAndObjectsUsingBlock:v288];

    *v322 = 0;
    v287 = 0;
    v286 = 0;
    cloudKit3 = [v240 cloudKit];
    paths7 = [v261 paths];
    v285[0] = MEMORY[0x277D85DD0];
    v285[1] = 3221225472;
    v285[2] = __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_2_503;
    v285[3] = &unk_279DE4200;
    v285[4] = v262;
    v283[0] = MEMORY[0x277D85DD0];
    v283[1] = 3221225472;
    v283[2] = __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_3;
    v283[3] = &unk_279DE4228;
    v283[4] = v262;
    v154 = v261;
    v284 = v154;
    v155 = [TRIDiffableAssetBuilder buildAndSaveDiffableAssetsWithAssetIds:v151 metadataForAssetId:cloudKit3 artifactProvider:v250 options:obj paths:paths7 assetsDownloadSize:&v286 perAssetIdCompletionBlockOnSuccess:v285 perAssetIdCompletionBlockOnError:v283 retryAfter:v322 error:&v287];

    if (v155)
    {
      if ([v155 count])
      {
        v156 = TRILogCategory_Server();
        if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
        {
          v157 = [v155 count];
          cloudKit4 = [v240 cloudKit];
          v159 = [cloudKit4 count];
          *buf = 134218240;
          *&buf[4] = v157;
          *&buf[12] = 2048;
          *&buf[14] = v159;
          _os_log_impl(&dword_26F567000, v156, OS_LOG_TYPE_DEFAULT, "%tu of %tu required assets are being handled by patching preexisting assets.", buf, 0x16u);
        }
      }

      cloudKit5 = [v240 cloudKit];
      v161 = [cloudKit5 mutableCopy];

      v281[0] = MEMORY[0x277D85DD0];
      v281[1] = 3221225472;
      v281[2] = __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_506;
      v281[3] = &unk_279DE4250;
      v162 = v161;
      v282 = v162;
      [v155 enumerateObjectsUsingBlock:v281];
      v163 = [v240 copyWithReplacementCloudKit:v162];

      v240 = v163;
LABEL_170:

      if (v155)
      {
        downloadOptions = [(TRIFetchOptions *)obj downloadOptions];
        activity = [downloadOptions activity];

        if (activity && xpc_activity_should_defer(activity))
        {
          v176 = TRILogCategory_Server();
          if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26F567000, v176, OS_LOG_TYPE_DEFAULT, "XPC activity was deferred before asset download.", buf, 2u);
          }

          [(TRIFetchFactorPackSetTask *)v262 setWasDeferred:1];
          [(TRIFetchFactorPackSetTask *)v262 _addMetricForFetchFactorPackSetTaskError:1];
          v253 = [(TRIFetchFactorPackSetTask *)v262 _taskResultForStatus:1 reportResultToServer:1 earliestRetryDate:0];

          goto LABEL_255;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v314 = 0;
        cloudKit6 = [v240 cloudKit];
        v276[0] = MEMORY[0x277D85DD0];
        v276[1] = 3221225472;
        v276[2] = __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_508;
        v276[3] = &unk_279DE4278;
        v276[4] = buf;
        [cloudKit6 enumerateKeysAndObjectsUsingBlock:v276];

        mobileAsset2 = [v240 mobileAsset];
        v275[0] = MEMORY[0x277D85DD0];
        v275[1] = 3221225472;
        v275[2] = __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_2_509;
        v275[3] = &unk_279DE42A0;
        v275[4] = buf;
        [mobileAsset2 enumerateKeysAndObjectsUsingBlock:v275];

        if ([TRICacheDeleteUtils hasSufficientDiskSpaceForDownload:*(*&buf[8] + 24)])
        {
          _Block_object_dispose(buf, 8);
          *v322 = 0;
          v287 = 0;
          cloudKit7 = [v240 cloudKit];
          v180 = [(TRIFetchFactorPackSetTask *)v262 _downloadAndSaveCKAssetsWithMetadata:cloudKit7 artifactProvider:v250 options:obj downloadNotificationKey:v249 context:v154 assetsDownloadSize:&v287 errorResult:&v303 fetchError:v322];

          v181 = v262;
          if ([v303 runStatus] != 2 && *v322)
          {
            v182 = TRIFetchErrorParseToMetrics(*v322);
            if ([v182 count] && (v262->_rolloutSupport || v262->_experimentSupport))
            {
              v273 = 0u;
              v274 = 0u;
              v271 = 0u;
              v272 = 0u;
              v183 = v182;
              v184 = [v183 countByEnumeratingWithState:&v271 objects:v311 count:16];
              if (!v184)
              {
                goto LABEL_193;
              }

              v185 = *v272;
              while (1)
              {
                for (k = 0; k != v184; ++k)
                {
                  if (*v272 != v185)
                  {
                    objc_enumerationMutation(v183);
                  }

                  v187 = v262->_construct;
                  p_experimentSupport = &v262->_rolloutSupport;
                  if (v187)
                  {
                    if (v187 != 1)
                    {
                      continue;
                    }

                    p_experimentSupport = &v262->_experimentSupport;
                  }

                  [*p_experimentSupport addMetric:*(*(&v271 + 1) + 8 * k)];
                }

                v184 = [v183 countByEnumeratingWithState:&v271 objects:v311 count:16];
                if (!v184)
                {
LABEL_193:

                  break;
                }
              }
            }

            v181 = v262;
          }

          if (v180)
          {
            v189 = *v322;
            *v322 = 0;

            v287 = 0;
            mobileAsset3 = [v240 mobileAsset];
            v191 = [(TRIFetchFactorPackSetTask *)v262 _downloadAndSaveMAAssets:mobileAsset3 options:obj downloadNotificationKey:v249 context:v154 assetsDownloadSize:&v287 errorResult:&v303 fetchError:v322];

            v192 = v262;
            if ([v303 runStatus] != 2 && *v322)
            {
              v193 = TRIFetchErrorParseToMetrics(*v322);
              if ([v193 count] && v262->_rolloutSupport)
              {
                v269 = 0u;
                v270 = 0u;
                v267 = 0u;
                v268 = 0u;
                v194 = v193;
                v195 = [v194 countByEnumeratingWithState:&v267 objects:v310 count:16];
                if (!v195)
                {
                  goto LABEL_211;
                }

                v196 = *v268;
                while (1)
                {
                  for (m = 0; m != v195; ++m)
                  {
                    if (*v268 != v196)
                    {
                      objc_enumerationMutation(v194);
                    }

                    v198 = v262->_construct;
                    v199 = &v262->_rolloutSupport;
                    if (v198)
                    {
                      if (v198 != 1)
                      {
                        continue;
                      }

                      v199 = &v262->_experimentSupport;
                    }

                    [*v199 addMetric:*(*(&v267 + 1) + 8 * m)];
                  }

                  v195 = [v194 countByEnumeratingWithState:&v267 objects:v310 count:16];
                  if (!v195)
                  {
LABEL_211:

                    break;
                  }
                }
              }

              v192 = v262;
            }

            if (v191)
            {
              if ([(TRIFetchFactorPackSetTask *)v192 _saveFactorPackSet:v243 requiredAssetMap:v241 context:v154])
              {
                if (v192->_experimentDeployment)
                {
                  if (v192->_treatmentId)
                  {
                    if (!v192->_isCounterfactualTreatment)
                    {
                      experimentDatabase2 = [v154 experimentDatabase];
                      v201 = [experimentDatabase2 setTreatmentId:v192->_treatmentId factorPackSetId:v192->_factorPackSetId forExperimentDeployment:v192->_experimentDeployment usingTransaction:0];

                      v192 = v262;
                      if ((v201 & 1) == 0)
                      {
                        v234 = TRILogCategory_Server();
                        if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
                        {
                          treatmentId = v262->_treatmentId;
                          experimentId2 = [(TRIExperimentDeployment *)v262->_experimentDeployment experimentId];
                          *buf = 138412546;
                          *&buf[4] = treatmentId;
                          *&buf[12] = 2114;
                          *&buf[14] = experimentId2;
                          _os_log_error_impl(&dword_26F567000, v234, OS_LOG_TYPE_ERROR, "failed to save treatment id %@ to database for experiment %{public}@", buf, 0x16u);
                        }

                        v253 = [(TRIFetchFactorPackSetTask *)v262 _taskResultForStatus:1 reportResultToServer:0 earliestRetryDate:0];
                        goto LABEL_254;
                      }
                    }
                  }
                }

                if (v238)
                {
                  v265 = 0u;
                  v266 = 0u;
                  v263 = 0u;
                  v264 = 0u;
                  v202 = namespaces;
                  v203 = [(TRIFactorPackSetStorage *)v202 countByEnumeratingWithState:&v263 objects:v309 count:16];
                  if (v203)
                  {
                    v204 = *v264;
                    do
                    {
                      for (n = 0; n != v203; ++n)
                      {
                        if (*v264 != v204)
                        {
                          objc_enumerationMutation(v202);
                        }

                        v206 = *(*(&v263 + 1) + 8 * n);
                        v207 = TRILogCategory_Server();
                        if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138543362;
                          *&buf[4] = v206;
                          _os_log_impl(&dword_26F567000, v207, OS_LOG_TYPE_DEFAULT, "notify about updates to namespace %{public}@", buf, 0xCu);
                        }

                        [MEMORY[0x277D73790] notifyUpdateForNamespaceName:v206];
                      }

                      v203 = [(TRIFactorPackSetStorage *)v202 countByEnumeratingWithState:&v263 objects:v309 count:16];
                    }

                    while (v203);
                  }

                  v192 = v262;
                }

                if (v258)
                {
                  deployment = [(TRIFactorPackSetStorage *)v258 deployment];
                  rolloutId = [deployment rolloutId];
                  rampId3 = [(TRIFactorPackSetStorage *)v258 rampId];
                  deployment2 = [(TRIFactorPackSetStorage *)v258 deployment];
                  LOBYTE(v237) = 0;
                  +[TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:forRollout:ramp:deployment:fps:namespaces:telemetryMetric:rolloutRecord:isBecomingObsolete:context:](TRITaskUtils, "updateRolloutHistoryDatabaseWithAllocationStatus:forRollout:ramp:deployment:fps:namespaces:telemetryMetric:rolloutRecord:isBecomingObsolete:context:", 2, rolloutId, rampId3, [deployment2 deploymentId], v192->_factorPackSetId, 0, 0, v258, v237, v154);

                  v192 = v262;
                }

                if (v242)
                {
                  if (v192->_isCounterfactualTreatment)
                  {
                    v212 = TRILogCategory_Server();
                    if (os_log_type_enabled(v212, OS_LOG_TYPE_DEBUG))
                    {
                      v213 = v262->_treatmentId;
                      v214 = v262->_factorPackSetId;
                      *buf = 138412546;
                      *&buf[4] = v213;
                      *&buf[12] = 2112;
                      *&buf[14] = v214;
                      _os_log_debug_impl(&dword_26F567000, v212, OS_LOG_TYPE_DEBUG, "Skipping post-launch FPS task telemetry for counterfactual treatment: %@ (FPS: %@)", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v212 = [TRIExperimentPostLaunchEvent fetchedEventWithExperimentRecord:v242];
                    v231 = [TRIExperimentPostLaunchRecorder recorderFromContext:v154];
                    [v231 recordEvent:v212];
                  }

                  v230 = 2;
                  v192 = v262;
                }

                else
                {
                  v230 = 2;
                }
              }

              else
              {
                if (v258)
                {
                  deployment3 = [(TRIFactorPackSetStorage *)v258 deployment];
                  rolloutId2 = [deployment3 rolloutId];
                  rampId4 = [(TRIFactorPackSetStorage *)v258 rampId];
                  deployment4 = [(TRIFactorPackSetStorage *)v258 deployment];
                  LOBYTE(v237) = 0;
                  +[TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:forRollout:ramp:deployment:fps:namespaces:telemetryMetric:rolloutRecord:isBecomingObsolete:context:](TRITaskUtils, "updateRolloutHistoryDatabaseWithAllocationStatus:forRollout:ramp:deployment:fps:namespaces:telemetryMetric:rolloutRecord:isBecomingObsolete:context:", 6, rolloutId2, rampId4, [deployment4 deploymentId], v192->_factorPackSetId, 0, 0, v258, v237, v154);

                  v192 = v262;
                }

                if (v242)
                {
                  [(TRIFetchFactorPackSetTask *)v192 _recordExperimentFetchFailedWithReason:@"FailedToSaveFactorPack" context:v154];
                }

                v230 = 3;
              }

              v253 = [(TRIFetchFactorPackSetTask *)v192 _taskResultForStatus:v230 reportResultToServer:1 earliestRetryDate:0];
LABEL_254:

              goto LABEL_255;
            }

            if ([v303 runStatus] == 3)
            {
              v218 = objc_alloc(MEMORY[0x277CCACA8]);
              domain = [*v322 domain];
              v220 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*v322, "code")}];
              stringValue = [v220 stringValue];
              v221 = [v218 initWithFormat:@"MAError: %@ %@", domain, stringValue];

              [(TRIFetchFactorPackSetTask *)v262 _recordExperimentFetchFailedWithReason:v221 context:v154];
            }

            v216 = v303;
            if (v216)
            {
LABEL_244:
              v253 = v216;

              goto LABEL_254;
            }

            currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler4 handleFailureInMethod:a2 object:v262 file:@"TRIFetchFactorPackSetTask.m" lineNumber:1359 description:{@"Expression was unexpectedly nil/false: %@", @"taskResult"}];
          }

          else
          {
            if ([v303 runStatus] == 3)
            {
              v215 = TRIFetchErrorParseToPostLaunchMetric(*v322);
              [(TRIFetchFactorPackSetTask *)v181 _recordExperimentFetchFailedWithReason:v215 context:v154];
            }

            v216 = v303;
            if (v216)
            {
              goto LABEL_244;
            }

            currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler4 handleFailureInMethod:a2 object:v262 file:@"TRIFetchFactorPackSetTask.m" lineNumber:1319 description:{@"Expression was unexpectedly nil/false: %@", @"taskResult"}];
          }

          goto LABEL_244;
        }

        [MEMORY[0x277D73698] notifyDownloadFailedForKey:v249 withError:4];
        [(TRIFetchFactorPackSetTask *)v262 _addMetricForFetchFactorPackSetTaskError:24];
        [(TRIFetchFactorPackSetTask *)v262 _recordExperimentFetchFailedWithTaskError:24 context:v154];
        v253 = [(TRIFetchFactorPackSetTask *)v262 _taskResultForStatus:3 reportResultToServer:1 earliestRetryDate:0];
        _Block_object_dispose(buf, 8);
      }

LABEL_255:

      goto LABEL_256;
    }

    v165 = v262;
    if (v287)
    {
      v166 = TRIFetchErrorParseToMetrics(v287);
      if ([v166 count] && (v262->_rolloutSupport || v262->_experimentSupport))
      {
        v167 = v154;
        v279 = 0u;
        v280 = 0u;
        v277 = 0u;
        v278 = 0u;
        v168 = v166;
        v169 = [v168 countByEnumeratingWithState:&v277 objects:v312 count:16];
        if (!v169)
        {
          goto LABEL_164;
        }

        v170 = *v278;
        while (1)
        {
          for (ii = 0; ii != v169; ++ii)
          {
            if (*v278 != v170)
            {
              objc_enumerationMutation(v168);
            }

            v172 = v262->_construct;
            v173 = &v262->_rolloutSupport;
            if (v172)
            {
              if (v172 != 1)
              {
                continue;
              }

              v173 = &v262->_experimentSupport;
            }

            [*v173 addMetric:*(*(&v277 + 1) + 8 * ii)];
          }

          v169 = [v168 countByEnumeratingWithState:&v277 objects:v312 count:16];
          if (!v169)
          {
LABEL_164:

            v154 = v167;
            break;
          }
        }
      }

      v165 = v262;
    }

    [(TRIFetchFactorPackSetTask *)v165 _addMetricForFetchFactorPackSetTaskError:15];
    if (*v322)
    {
      [(TRIFetchFactorPackSetTask *)v165 _taskResultForStatus:1 reportResultToServer:1 earliestRetryDate:?];
    }

    else
    {
      [(TRIFetchFactorPackSetTask *)v165 _recordExperimentFetchFailedWithTaskError:15 context:v154];
      [MEMORY[0x277D73698] notifyDownloadFailedForKey:v249 withCloudKitError:v287];
      [(TRIFetchFactorPackSetTask *)v165 _taskResultForStatus:3 reportResultToServer:1 earliestRetryDate:0];
    }
    v253 = ;
    goto LABEL_170;
  }

  v25 = TRILogCategory_Server();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = selfCopy->_factorPackSetId;
    *buf = 138543618;
    *&buf[4] = v26;
    *&buf[12] = 2112;
    *&buf[14] = *v322;
    _os_log_impl(&dword_26F567000, v25, OS_LOG_TYPE_DEFAULT, "Factor pack set %{public}@ is already present; skipping download of factor packs. Path: %@", buf, 0x16u);
  }

  if (v258)
  {
    if (selfCopy->_isCounterfactualTreatment)
    {
      v27 = TRILogCategory_Server();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = selfCopy->_treatmentId;
        v29 = selfCopy->_factorPackSetId;
        *buf = 138412546;
        *&buf[4] = v28;
        *&buf[12] = 2112;
        *&buf[14] = v29;
        _os_log_debug_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEBUG, "Skipping post-launch FPS task telemetry for counterfactual treatment: %@ (FPS: %@)", buf, 0x16u);
      }
    }

    else
    {
      v27 = [TRIExperimentPostLaunchEvent fetchedEventWithExperimentRecord:v258];
      v57 = [TRIExperimentPostLaunchRecorder recorderFromContext:v261];
      [v57 recordEvent:v27];
    }
  }

  else
  {
    v27 = TRILogCategory_Server();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v52 = selfCopy->_factorPackSetId;
      *buf = 138412290;
      *&buf[4] = v52;
      _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Not able to log post-launch telemetry for exp_st_AL. Experiment record not found after downloading FPS: %@", buf, 0xCu);
    }
  }

  v253 = [(TRIFetchFactorPackSetTask *)selfCopy _taskResultForStatus:2 reportResultToServer:0 earliestRetryDate:0];

LABEL_259:
  if (v248)
  {
    v248[2](v248);
  }

  objc_sync_exit(v262);
  v232 = *MEMORY[0x277D85DE8];

  return v253;
}

void __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = *MEMORY[0x277CCA450];
  v14[0] = @"on_demand_subscribed_factor_failed_to_download_without_asset_fetch";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v4 = [v2 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v3];

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 88);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_2;
  v10[3] = &unk_279DE41B0;
  v10[4] = v6;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  [v7 runWithLockAcquired:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v20;
    *&v5 = 138412290;
    v18 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 factorName];

        if (v10)
        {
          v11 = *(a1 + 32);
          v12 = [v9 factorName];
          v13 = [v9 namespaceName];
          v14 = [*(a1 + 40) client];
          [v11 _logOnDemandFactor:v12 metricName:@"on_demand_factor_failed_to_download_by_subscription" namespaceName:v13 client:v14 error:*(a1 + 48)];
        }

        else
        {
          v12 = TRILogCategory_Server();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_11;
          }

          v15 = *(a1 + 32);
          v16 = objc_opt_class();
          v13 = NSStringFromClass(v16);
          *buf = v18;
          v24 = v13;
          _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Missing factorname in %@", buf, 0xCu);
        }

LABEL_11:
      }

      v6 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_462(void *a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v14 | v5)
  {
    if (v5)
    {
      v6 = [v5 namespaceName];

      if (!v6)
      {
        v12 = [MEMORY[0x277CCA890] currentHandler];
        [v12 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIFetchFactorPackSetTask.m" lineNumber:914 description:{@"Invalid parameter not satisfying: %@", @"fbFactorLevel.namespaceName"}];
      }

      v7 = a1[5];
      v8 = [v5 namespaceName];
      v9 = v7;
      goto LABEL_10;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIFetchFactorPackSetTask.m" lineNumber:912 description:{@"Invalid parameter not satisfying: %@", @"pbFactorPack || fbFactorLevel"}];
  }

  v11 = [v14 selectedNamespace];
  v8 = [v11 name];

  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIFetchFactorPackSetTask.m" lineNumber:917 description:{@"Expression was unexpectedly nil/false: %@", @"pbFactorPack.selectedNamespace.name"}];
  }

  v9 = a1[5];
LABEL_10:
  [v9 addObject:v8];
}

uint64_t __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_485(uint64_t a1, int a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) downloadNCV];
  if (result == a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_487(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [*(*(a1 + 32) + 80) allValues];
  [v5 addObjectsFromArray:v4];

  objc_autoreleasePoolPop(v3);
}

void __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_501(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 type] == 1)
  {
    [*(a1 + 32) addObject:v5];
  }
}

uint64_t __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_2_503(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:a2];
  if (v3)
  {
    [*(a1 + 32) _removeDownloadableRecord:v3];
  }

  return MEMORY[0x2821F96F8]();
}

void __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v5 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:a2];
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [v5 factorName];
    v9 = [v6 namespaceName];
    v10 = [*(a1 + 40) client];
    [v7 _logOnDemandFactor:v8 metricName:@"on_demand_factor_failed_to_download_by_subscription" namespaceName:v9 client:v10 error:v11];

    [*(a1 + 32) _removeDownloadableRecord:v6];
  }
}

uint64_t __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_508(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 downloadSize];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t __59__TRIFetchFactorPackSetTask_runUsingContext_withTaskQueue___block_invoke_2_509(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 downloadSize];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

+ (id)_namespaceNamesFromExperimentRecord:(id)record
{
  namespaces = [record namespaces];
  v4 = [namespaces _pas_mappedArrayWithTransform:&__block_literal_global_38];

  return v4;
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

    trialSystemTelemetry = [(TRIFetchFactorPackSetTask *)self trialSystemTelemetry];
    v23 = [trialSystemTelemetry copy];

    ensureOnDemandFactorFields = [v23 ensureOnDemandFactorFields];
    [ensureOnDemandFactorFields setFactorName:factorCopy];

    ensureOnDemandFactorFields2 = [v23 ensureOnDemandFactorFields];
    [ensureOnDemandFactorFields2 setNamespaceName:namespaceNameCopy];

    logger = [clientCopy logger];
    trackingId = [clientCopy trackingId];
    dimensions = [(TRIFetchFactorPackSetTask *)self dimensions];
    [logger logWithTrackingId:trackingId metrics:v17 dimensions:dimensions trialSystemTelemetry:v23];

    objc_autoreleasePoolPop(context);
  }
}

- (void)_addMetricForFetchFactorPackSetTaskError:(int)error
{
  p_rolloutSupport = &self->_rolloutSupport;
  if (!self->_rolloutSupport && !self->_experimentSupport)
  {
    return;
  }

  v5 = MEMORY[0x277D73B40];
  v6 = fetchTaskErrorAsString(error);
  v8 = [v5 metricWithName:@"fetchfactorpacksettask_error" categoricalValue:v6];

  construct = self->_construct;
  if (!construct)
  {
    goto LABEL_6;
  }

  if (construct == 1)
  {
    p_rolloutSupport = &self->_experimentSupport;
LABEL_6:
    [*p_rolloutSupport addMetric:v8];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TRIFetchFactorPackSetTask;
    if ([(TRIBaseTask *)&v8 isEqual:equalCopy]&& [(TRIFetchFactorPackSetTask *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      if ([(TRIFactorPackSetId *)self->_factorPackSetId isEqualToString:v5->_factorPackSetId])
      {
        v6 = [(TRITaskAttributing *)self->_taskAttribution isEqual:v5->_taskAttribution];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = TRIFetchFactorPackSetTask;
  v3 = [(TRIBaseTask *)&v6 hash];
  v4 = [(TRIFactorPackSetId *)self->_factorPackSetId hash]+ 37 * v3;
  return [(TRITaskAttributing *)self->_taskAttribution hash]+ 37 * v4;
}

- (id)dimensions
{
  rolloutSupport = self->_rolloutSupport;
  if (rolloutSupport || (rolloutSupport = self->_experimentSupport) != 0)
  {
    rolloutSupport = [rolloutSupport dimensions];
    v2 = vars8;
  }

  return rolloutSupport;
}

- (id)metrics
{
  rolloutSupport = self->_rolloutSupport;
  if (rolloutSupport || (rolloutSupport = self->_experimentSupport) != 0)
  {
    rolloutSupport = [rolloutSupport metrics];
    v2 = vars8;
  }

  return rolloutSupport;
}

- (id)trialSystemTelemetry
{
  rolloutSupport = self->_rolloutSupport;
  if (rolloutSupport || (rolloutSupport = self->_experimentSupport) != 0)
  {
    rolloutSupport = [rolloutSupport trialSystemTelemetry];
    v2 = vars8;
  }

  return rolloutSupport;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  [v3 setFactorPackSetId:self->_factorPackSetId];
  asPersistedTaskAttribution = [(TRITaskAttributing *)self->_taskAttribution asPersistedTaskAttribution];
  [v3 setTaskAttribution:asPersistedTaskAttribution];

  [v3 setRetryCount:{-[TRIFetchFactorPackSetTask retryCount](self, "retryCount")}];
  construct = self->_construct;
  if (construct == 1)
  {
    [v3 setConstruct:3];
    experimentId = [(TRIExperimentDeployment *)self->_experimentDeployment experimentId];
    [v3 setExperimentId:experimentId];

    [v3 setDeploymentId:{-[TRIExperimentDeployment deploymentId](self->_experimentDeployment, "deploymentId")}];
    [v3 setTreatmentId:self->_treatmentId];
    [v3 setIsCounterfactualTreatment:self->_isCounterfactualTreatment];
  }

  else if (!construct)
  {
    [v3 setConstruct:1];
    rolloutId = [(TRIRolloutDeployment *)self->_rolloutDeployment rolloutId];
    [v3 setRolloutId:rolloutId];

    [v3 setDeploymentId:{-[TRIRolloutDeployment deploymentId](self->_rolloutDeployment, "deploymentId")}];
    asPersistedModifier = [(TRITaskCapabilityModifier *)self->_capabilityModifier asPersistedModifier];
    [v3 setCapabilityModifier:asPersistedModifier];
  }

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRIFetchFactorPackSetTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:1541 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v68 = *MEMORY[0x277D85DE8];
  v65 = 0;
  v3 = [(TRIPBMessage *)TRIFetchFactorPackSetPersistedTask parseFromData:data error:&v65];
  v4 = v65;
  if (!v3)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v67 = v4;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIFetchFactorPackSetPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_60;
  }

  if ([v3 hasConstruct] && objc_msgSend(v3, "construct") == 3)
  {
    if ([v3 hasExperimentId])
    {
      experimentId = [v3 experimentId];
      v6 = [experimentId length];

      if (v6)
      {
        if ([v3 hasDeploymentId])
        {
          hasTreatmentId = [v3 hasTreatmentId];
          if ((hasTreatmentId & 1) == 0)
          {
            v8 = TRILogCategory_Server();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              v63 = objc_opt_class();
              v64 = NSStringFromClass(v63);
              *buf = 138412290;
              v67 = v64;
              _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: treatmentId", buf, 0xCu);
            }
          }

          v9 = 0;
          v10 = hasTreatmentId ^ 1;
          goto LABEL_38;
        }

        v22 = TRILogCategory_Server();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        v27 = objc_opt_class();
        v24 = NSStringFromClass(v27);
        *buf = 138412290;
        v67 = v24;
        v25 = "Cannot decode message of type %@ with missing field: deploymentId";
      }

      else
      {
        v22 = TRILogCategory_Server();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
LABEL_36:

          v9 = 0;
          goto LABEL_37;
        }

        v26 = objc_opt_class();
        v24 = NSStringFromClass(v26);
        *buf = 138412290;
        v67 = v24;
        v25 = "Cannot decode message of type %@ with field of length 0: experimentId";
      }
    }

    else
    {
      v21 = TRILogCategory_Server();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        *buf = 138412290;
        v67 = v60;
        _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: experimentId", buf, 0xCu);
      }

      v22 = TRILogCategory_Server();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138412290;
      v67 = v24;
      v25 = "Cannot decode message of type %@ with missing field: experimentId";
    }

    _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, v25, buf, 0xCu);

    goto LABEL_36;
  }

  if (([v3 hasRolloutId] & 1) == 0)
  {
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      *buf = 138412290;
      v67 = v54;
      _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: rolloutId", buf, 0xCu);
    }

    v17 = TRILogCategory_Server();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138412290;
    v67 = v19;
    v20 = "Cannot decode message of type %@ with missing field: rolloutId";
    goto LABEL_67;
  }

  rolloutId = [v3 rolloutId];
  v12 = [rolloutId length];

  if (!v12)
  {
    v17 = TRILogCategory_Server();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_26:

      v9 = 1;
LABEL_37:
      v10 = 1;
      goto LABEL_38;
    }

    v55 = objc_opt_class();
    v19 = NSStringFromClass(v55);
    *buf = 138412290;
    v67 = v19;
    v20 = "Cannot decode message of type %@ with field of length 0: rolloutId";
LABEL_67:
    _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);

    goto LABEL_26;
  }

  hasDeploymentId = [v3 hasDeploymentId];
  if ((hasDeploymentId & 1) == 0)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v61 = objc_opt_class();
      v62 = NSStringFromClass(v61);
      *buf = 138412290;
      v67 = v62;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: deploymentId", buf, 0xCu);
    }
  }

  v10 = hasDeploymentId ^ 1;
  v9 = 1;
LABEL_38:
  if (([v3 hasFactorPackSetId] & 1) == 0)
  {
    v31 = TRILogCategory_Server();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138412290;
      v67 = v52;
      _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: factorPackSetId", buf, 0xCu);
    }

    v15 = TRILogCategory_Server();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    *buf = 138412290;
    v67 = v33;
    v34 = "Cannot decode message of type %@ with missing field: factorPackSetId";
    goto LABEL_59;
  }

  factorPackSetId = [v3 factorPackSetId];
  v29 = [factorPackSetId length];

  if (!v29)
  {
    v15 = TRILogCategory_Server();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v35 = objc_opt_class();
    v33 = NSStringFromClass(v35);
    *buf = 138412290;
    v67 = v33;
    v34 = "Cannot decode message of type %@ with field of length 0: factorPackSetId";
LABEL_59:
    _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, v34, buf, 0xCu);

    goto LABEL_60;
  }

  if (v10)
  {
    v30 = 0;
    goto LABEL_62;
  }

  if (([v3 hasTaskAttribution] & 1) == 0)
  {
    v15 = TRILogCategory_Server();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v47 = objc_opt_class();
    v33 = NSStringFromClass(v47);
    *buf = 138412290;
    v67 = v33;
    v34 = "Cannot decode message of type %@ with missing field: taskAttribution";
    goto LABEL_59;
  }

  if (([v3 hasRetryCount] & 1) == 0)
  {
    v15 = TRILogCategory_Server();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v48 = objc_opt_class();
    v33 = NSStringFromClass(v48);
    *buf = 138412290;
    v67 = v33;
    v34 = "Cannot decode message of type %@ with missing field: retryCount";
    goto LABEL_59;
  }

  factorPackSetId2 = [v3 factorPackSetId];
  v15 = TRIValidateFactorPackSetId();

  if (v15)
  {
    taskAttribution = [v3 taskAttribution];
    v38 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:taskAttribution];

    if (v38)
    {
      if (v9)
      {
        v39 = MEMORY[0x277D737C8];
        rolloutId2 = [v3 rolloutId];
        v41 = [v39 deploymentWithRolloutId:rolloutId2 deploymentId:{objc_msgSend(v3, "deploymentId")}];

        if ([v3 hasCapabilityModifier])
        {
          v42 = [TRITaskCapabilityModifier alloc];
          capabilityModifier = [v3 capabilityModifier];
          v44 = [capabilityModifier add];
          capabilityModifier2 = [v3 capabilityModifier];
          treatmentId = -[TRITaskCapabilityModifier initWithAdd:remove:](v42, "initWithAdd:remove:", v44, [capabilityModifier2 remove]);
        }

        else
        {
          treatmentId = objc_opt_new();
        }

        v58 = [[TRIFetchFactorPackSetTask alloc] initWithFactorPackSetId:v15 taskAttribution:v38 rolloutDeployment:v41 capabilityModifier:treatmentId];
      }

      else
      {
        v56 = MEMORY[0x277D736C0];
        experimentId2 = [v3 experimentId];
        v41 = [v56 deploymentWithExperimentId:experimentId2 deploymentId:{objc_msgSend(v3, "deploymentId")}];

        treatmentId = [v3 treatmentId];
        v58 = -[TRIFetchFactorPackSetTask initWithFactorPackSetId:treatmentId:isCounterfactualTreatment:taskAttribution:experimentDeployment:]([TRIFetchFactorPackSetTask alloc], "initWithFactorPackSetId:treatmentId:isCounterfactualTreatment:taskAttribution:experimentDeployment:", v15, treatmentId, [v3 isCounterfactualTreatment], v38, v41);
      }

      v30 = v58;

      -[TRIFetchFactorPackSetTask setRetryCount:](v30, "setRetryCount:", [v3 retryCount]);
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_61;
  }

LABEL_60:
  v30 = 0;
LABEL_61:

LABEL_62:
  v49 = *MEMORY[0x277D85DE8];

  return v30;
}

- (unint64_t)requiredCapabilities
{
  networkOptions = [(TRITaskAttributing *)self->_taskAttribution networkOptions];
  requiredCapability = [networkOptions requiredCapability];
  v8.receiver = self;
  v8.super_class = TRIFetchFactorPackSetTask;
  v5 = [(TRIBaseTask *)&v8 requiredCapabilities]| requiredCapability;
  v6 = v5 | (4 * ([(TRIFetchFactorPackSetTask *)self retryCount]> 0));

  return [(TRITaskCapabilityModifier *)self->_capabilityModifier updateCapability:v6];
}

- (NSString)description
{
  networkOptions = [(TRITaskAttributing *)self->_taskAttribution networkOptions];
  discretionaryBehavior = [networkOptions discretionaryBehavior];
  v5 = @"disc";
  if (!discretionaryBehavior)
  {
    v5 = @"non-disc";
  }

  v6 = v5;

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  factorPackSetId = self->_factorPackSetId;
  applicationBundleIdentifier = [(TRITaskAttributing *)self->_taskAttribution applicationBundleIdentifier];
  v11 = [v7 stringWithFormat:@"<%@:%@, a:%@, d:%@, r:%d>", v8, factorPackSetId, applicationBundleIdentifier, v6, -[TRIFetchFactorPackSetTask retryCount](self, "retryCount")];

  return v11;
}

- (TRIFetchFactorPackSetTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIFetchFactorPackSetTask;
  v5 = [(TRIFetchFactorPackSetTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchFactorPackSetTask.m" lineNumber:1633 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIFetchFactorPackSetTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end