@interface TRIDisenrollRolloutTask
+ (id)parseFromData:(id)data;
+ (id)taskWithRolloutId:(id)id;
+ (id)taskWithRolloutId:(id)id triggerEvent:(unint64_t)event;
- (BOOL)isEqual:(id)equal;
- (NSArray)tags;
- (TRIDisenrollRolloutTask)initWithCoder:(id)coder;
- (TRIDisenrollRolloutTask)initWithRolloutId:(id)id triggerEvent:(unint64_t)event;
- (id)_asPersistedTask;
- (id)metrics;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (id)trialSystemTelemetry;
- (unint64_t)hash;
- (void)addMetric:(id)metric;
- (void)encodeWithCoder:(id)coder;
- (void)mergeTelemetry:(id)telemetry;
@end

@implementation TRIDisenrollRolloutTask

- (TRIDisenrollRolloutTask)initWithRolloutId:(id)id triggerEvent:(unint64_t)event
{
  v24 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDisenrollRolloutTask.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"rolloutId"}];
  }

  v21.receiver = self;
  v21.super_class = TRIDisenrollRolloutTask;
  v9 = [(TRIDisenrollRolloutTask *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rolloutId, id);
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if (event - 1 > 2)
      {
        v19 = @"unknown";
      }

      else
      {
        v19 = off_279DE3DF8[event - 1];
      }

      *buf = 138412290;
      v23 = v19;
      _os_log_debug_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEBUG, "Initiating TRIDisenrollRolloutTask with trigger event: %@", buf, 0xCu);
    }

    v10->_triggerEvent = event;
    v12 = objc_opt_new();
    v13 = v12[1];
    v12[1] = 0;

    v14 = v12[2];
    v12[2] = 0;

    v15 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v12];
    lock = v10->_lock;
    v10->_lock = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)taskWithRolloutId:(id)id
{
  idCopy = id;
  v5 = [[self alloc] initWithRolloutId:idCopy triggerEvent:0];

  return v5;
}

+ (id)taskWithRolloutId:(id)id triggerEvent:(unint64_t)event
{
  idCopy = id;
  v7 = [[self alloc] initWithRolloutId:idCopy triggerEvent:event];

  return v7;
}

- (NSArray)tags
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self->_rolloutId;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  v87 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__45;
  v84 = __Block_byref_object_dispose__45;
  v85 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__45;
  v74 = __Block_byref_object_dispose__45;
  v75 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__45;
  v68 = __Block_byref_object_dispose__45;
  v69 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__45;
  v62 = __Block_byref_object_dispose__45;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__45;
  v56 = __Block_byref_object_dispose__45;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__45;
  v50 = __Block_byref_object_dispose__45;
  v51 = objc_opt_new();
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __57__TRIDisenrollRolloutTask_runUsingContext_withTaskQueue___block_invoke;
  v36[3] = &unk_279DE3D38;
  v39 = &v76;
  v8 = contextCopy;
  v37 = v8;
  selfCopy = self;
  v40 = &v52;
  v41 = &v58;
  v42 = &v70;
  v43 = &v46;
  v44 = &v64;
  v45 = &v80;
  v9 = MEMORY[0x2743948D0](v36);
  rolloutDatabase = [v8 rolloutDatabase];
  [rolloutDatabase writeTransactionWithFailableBlock:v9];

  if (*(v77 + 24) == 1)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = v81[5];
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v86 count:16];
    if (v12)
    {
      v13 = *v33;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [MEMORY[0x277D73790] notifyUpdateForNamespaceName:*(*(&v32 + 1) + 8 * i)];
        }

        v12 = [v11 countByEnumeratingWithState:&v32 objects:v86 count:16];
      }

      while (v12);
    }
  }

  v15 = self->_triggerEvent - 1;
  if (v15 > 2)
  {
    v16 = @"unknown";
  }

  else
  {
    v16 = off_279DE3DF8[v15];
  }

  v17 = [MEMORY[0x277D73B40] metricWithName:@"trigger_event" categoricalValue:v16];
  [(TRIDisenrollRolloutTask *)self addMetric:v17];

  if (*(v77 + 24))
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  v19 = v65[5];
  if (v77[3])
  {
    if (!v19)
    {
      goto LABEL_22;
    }

    v20 = v47[5];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __57__TRIDisenrollRolloutTask_runUsingContext_withTaskQueue___block_invoke_65;
    v29[3] = &unk_279DE3D60;
    v31 = &v64;
    v30 = v8;
    [v20 enumerateKeysAndObjectsUsingBlock:v29];
    rolloutId = v30;
  }

  else
  {
    if (!v19)
    {
      goto LABEL_22;
    }

    rolloutId = [v53[5] rolloutId];
    v22 = v71[5];
    deploymentId = [v53[5] deploymentId];
    LOBYTE(v28) = 0;
    [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:8 forRollout:rolloutId ramp:v22 deployment:deploymentId fps:v59[5] namespaces:0 telemetryMetric:0 rolloutRecord:v65[5] isBecomingObsolete:v28 context:v8];
  }

LABEL_22:
  v24 = [TRITaskRunResult alloc];
  v25 = [(TRITaskRunResult *)v24 initWithRunStatus:v18 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __57__TRIDisenrollRolloutTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) rolloutDatabase];
  *(*(*(a1 + 48) + 8) + 24) = [v4 deactivateDeploymentsWithRolloutId:*(*(a1 + 40) + 24) deactivatedDeployment:*(*(a1 + 56) + 8) + 40 deactivatedFactorPackSetId:*(*(a1 + 64) + 8) + 40 deactivatedRampId:*(*(a1 + 72) + 8) + 40 deactivationStateTransitions:*(*(*(a1 + 80) + 8) + 40) usingTransaction:v3];

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v5 = [TRIContentTracker contentIdentifierForRolloutArtifactWithDeployment:?];
      v6 = [*(a1 + 32) contentTracker];
      v7 = [v6 dropRefWithContentIdentifier:v5];

      if ((v7 & 1) == 0)
      {
        v8 = TRILogCategory_Server();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v42 = [*(*(*(a1 + 56) + 8) + 40) rolloutId];
          v43 = [*(*(*(a1 + 56) + 8) + 40) deploymentId];
          v44 = *(a1 + 40);
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          *buf = 138543874;
          v49 = v42;
          v50 = 1024;
          v51 = v43;
          v52 = 2114;
          v53 = v46;
          _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Unable to decrement ref for rollout deployment: (r: %{public}@, d: %d) in %{public}@", buf, 0x1Cu);
        }
      }

      if (*(*(*(a1 + 56) + 8) + 40) && *(*(*(a1 + 64) + 8) + 40))
      {
        v9 = [*(a1 + 32) activationEventDatabase];
        v10 = [*(*(*(a1 + 56) + 8) + 40) rolloutId];
        v11 = [v9 activationEventRecordWithParentId:v10 factorPackSetId:*(*(*(a1 + 64) + 8) + 40) deploymentId:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "deploymentId")}];

        if (v11)
        {
          v12 = objc_opt_new();
          v13 = [v11 osBuild];
          [v12 setPrevOsBuild:v13];

          v14 = [v11 regionCode];
          [v12 setPrevRegionCode:v14];

          v15 = [v11 languageCode];
          [v12 setPrevLanguageCode:v15];

          v16 = MEMORY[0x277CCACA8];
          v17 = [v11 languageCode];
          v18 = [v11 regionCode];
          if (v18)
          {
            v19 = [v11 regionCode];
            v20 = [v16 stringWithFormat:@"%@-%@", v17, v19];
          }

          else
          {
            v20 = [v16 stringWithFormat:@"%@-%@", v17, &stru_287FA0430];
          }

          [v12 setPrevBcp47DeviceLocale:v20];
          v22 = [v11 carrierBundleIdentifier];
          [v12 setPrevCarrierBundleIdentifier:v22];

          v23 = [v11 carrierCountryIsoCode];
          [v12 setPrevCarrierCountryIsoCode:v23];

          [*(a1 + 40) mergeTelemetry:v12];
          v24 = [*(a1 + 32) activationEventDatabase];
          v25 = [*(*(*(a1 + 56) + 8) + 40) rolloutId];
          v26 = [v24 deleteRecordWithParentId:v25 factorPackSetId:*(*(*(a1 + 64) + 8) + 40) deploymentId:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "deploymentId")}];

          if (!v26)
          {
            v27 = TRILogCategory_Server();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v47 = [*(*(*(a1 + 56) + 8) + 40) rolloutId];
              *buf = 138543362;
              v49 = v47;
              _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Unable to clear record for dis-enrolled rollout: %{public}@", buf, 0xCu);
            }
          }
        }
      }
    }

    v28 = [TRINamespaceResolverStorage alloc];
    v29 = [*(a1 + 32) paths];
    v30 = [(TRINamespaceResolverStorage *)v28 initWithPaths:v29];

    *(*(*(a1 + 48) + 8) + 24) = [(TRINamespaceResolverStorage *)v30 overwriteActiveFactorProvidersUsingTransaction:v3 fromContext:*(a1 + 32)];
    v31 = MEMORY[0x277D42678];
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      if (*(*(*(a1 + 56) + 8) + 40))
      {
        v32 = [*(a1 + 32) rolloutDatabase];
        v33 = [v32 recordWithDeployment:*(*(*(a1 + 56) + 8) + 40) usingTransaction:v3];
        v34 = *(*(a1 + 88) + 8);
        v35 = *(v34 + 40);
        *(v34 + 40) = v33;

        v36 = *(*(*(a1 + 88) + 8) + 40);
        if (v36)
        {
          v37 = [v36 namespaces];
          v38 = *(*(a1 + 96) + 8);
          v39 = *(v38 + 40);
          *(v38 + 40) = v37;
        }
      }

      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v31 = MEMORY[0x277D42670];
      }
    }

    v21 = *v31;
  }

  else
  {
    v21 = *MEMORY[0x277D42678];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v21;
}

void __57__TRIDisenrollRolloutTask_runUsingContext_withTaskQueue___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = a2;
  v6 = [v15 isEqualToString:@"obsoleted-unknown-previous-state"];
  v7 = [v5 deployment];
  v8 = [v7 rolloutId];
  v9 = [v5 rampId];
  v10 = [v5 deployment];
  v11 = [v10 deploymentId];
  if (v6)
  {
    v12 = [v5 targetedFactorPackSetId];
    v13 = [v5 namespaces];

    LOBYTE(v14) = 1;
    [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:4 forRollout:v8 ramp:v9 deployment:v11 fps:v12 namespaces:v13 telemetryMetric:0 rolloutRecord:*(*(*(a1 + 40) + 8) + 40) isBecomingObsolete:v14 context:*(a1 + 32)];
  }

  else
  {
    v12 = [v5 activeFactorPackSetId];
    v13 = [v5 namespaces];

    LOBYTE(v14) = 0;
    [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:4 forRollout:v8 ramp:v9 deployment:v11 fps:v12 namespaces:v13 telemetryMetric:v15 rolloutRecord:*(*(*(a1 + 40) + 8) + 40) isBecomingObsolete:v14 context:*(a1 + 32)];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TRIDisenrollRolloutTask;
    v5 = [(TRIBaseTask *)&v7 isEqual:equalCopy]&& [(TRIDisenrollRolloutTask *)equalCopy isMemberOfClass:objc_opt_class()]&& [(NSString *)self->_rolloutId isEqualToString:equalCopy->_rolloutId];
  }

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = TRIDisenrollRolloutTask;
  v3 = [(TRIBaseTask *)&v5 hash];
  return [(NSString *)self->_rolloutId hash]+ 37 * v3;
}

- (void)addMetric:(id)metric
{
  metricCopy = metric;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__TRIDisenrollRolloutTask_addMetric___block_invoke;
  v7[3] = &unk_279DE3D88;
  v8 = metricCopy;
  v6 = metricCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __37__TRIDisenrollRolloutTask_addMetric___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  if (!v3)
  {
    v5 = a2;
    v6 = objc_opt_new();
    v7 = a2[1];
    a2[1] = v6;

    v3 = a2[1];
  }

  v8 = *(a1 + 32);

  return [v3 addObject:v8];
}

- (void)mergeTelemetry:(id)telemetry
{
  telemetryCopy = telemetry;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__TRIDisenrollRolloutTask_mergeTelemetry___block_invoke;
  v7[3] = &unk_279DE3D88;
  v8 = telemetryCopy;
  v6 = telemetryCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __42__TRIDisenrollRolloutTask_mergeTelemetry___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = v6[2];
  if (v3)
  {
    [v3 mergeFrom:*(a1 + 32)];
  }

  else
  {
    v4 = [*(a1 + 32) copy];
    v5 = v6[2];
    v6[2] = v4;
  }
}

- (id)metrics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__45;
  v10 = __Block_byref_object_dispose__45;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__TRIDisenrollRolloutTask_metrics__block_invoke;
  v5[3] = &unk_279DE3DB0;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void *__34__TRIDisenrollRolloutTask_metrics__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    v4 = [result copy];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)trialSystemTelemetry
{
  v3 = objc_autoreleasePoolPush();
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__45;
  v12 = __Block_byref_object_dispose__45;
  v13 = 0;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__TRIDisenrollRolloutTask_trialSystemTelemetry__block_invoke;
  v7[3] = &unk_279DE3DD8;
  v7[4] = self;
  v7[5] = &v8;
  [(_PASLock *)lock runWithLockAcquired:v7];
  v5 = [v9[5] copy];
  _Block_object_dispose(&v8, 8);

  objc_autoreleasePoolPop(v3);

  return v5;
}

void __47__TRIDisenrollRolloutTask_trialSystemTelemetry__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = v12[2];
  if (v3)
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = v3;
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D73BE0]);
    v8 = *(*(a1 + 40) + 8);
    v6 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v9 = *(a1 + 40);
  v10 = *(*(a1 + 32) + 24);
  v11 = [*(*(v9 + 8) + 40) ensureRolloutFields];
  [v11 setClientRolloutId:v10];
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  [v3 setRolloutId:self->_rolloutId];
  triggerEvent = self->_triggerEvent;
  if (triggerEvent <= 3)
  {
    [v3 setTriggerEvent:(triggerEvent + 1)];
  }

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRIDisenrollRolloutTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDisenrollRolloutTask.m" lineNumber:303 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v4 = [(TRIPBMessage *)TRIDisenrollRolloutPersistedTask parseFromData:data error:&v21];
  v5 = v21;
  if (!v4)
  {
    rolloutId2 = TRILogCategory_Server();
    if (os_log_type_enabled(rolloutId2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v5;
      _os_log_error_impl(&dword_26F567000, rolloutId2, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIDisenrollRolloutPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (([v4 hasRolloutId] & 1) == 0)
  {
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138412290;
      v23 = v19;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: rolloutId", buf, 0xCu);
    }

    rolloutId2 = TRILogCategory_Server();
    if (!os_log_type_enabled(rolloutId2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138412290;
    v23 = v14;
    v15 = "Cannot decode message of type %@ with missing field: rolloutId";
    goto LABEL_20;
  }

  rolloutId = [v4 rolloutId];
  v7 = [rolloutId length];

  if (v7)
  {
    v8 = [v4 triggerEvent] - 2;
    if (v8 < 3)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 0;
    }

    rolloutId2 = [v4 rolloutId];
    v11 = [self taskWithRolloutId:rolloutId2 triggerEvent:v9];
    goto LABEL_16;
  }

  rolloutId2 = TRILogCategory_Server();
  if (os_log_type_enabled(rolloutId2, OS_LOG_TYPE_ERROR))
  {
    v20 = objc_opt_class();
    v14 = NSStringFromClass(v20);
    *buf = 138412290;
    v23 = v14;
    v15 = "Cannot decode message of type %@ with field of length 0: rolloutId";
LABEL_20:
    _os_log_error_impl(&dword_26F567000, rolloutId2, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
  }

LABEL_15:
  v11 = 0;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (TRIDisenrollRolloutTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIDisenrollRolloutTask;
  v5 = [(TRIDisenrollRolloutTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDisenrollRolloutTask.m" lineNumber:346 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIDisenrollRolloutTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end