@interface TRIFetchSingleRolloutNotificationTask
+ (id)parseFromData:(id)data;
+ (id)taskWithDeployment:(id)deployment taskAttributing:(id)attributing;
- (BOOL)isEqual:(id)equal;
- (NSArray)tags;
- (NSString)description;
- (TRIFetchSingleRolloutNotificationTask)initWithCoder:(id)coder;
- (TRIFetchSingleRolloutNotificationTask)initWithDeployment:(id)deployment taskAttributing:(id)attributing;
- (id)_asPersistedTask;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)encodeWithCoder:(id)coder;
- (void)runDequeueHandlerUsingContext:(id)context;
- (void)runEnqueueHandlerUsingContext:(id)context;
@end

@implementation TRIFetchSingleRolloutNotificationTask

- (NSArray)tags
{
  tags = [(TRIRolloutTaskSupport *)self->_support tags];
  v4 = tags;
  if (!tags)
  {
    tags = MEMORY[0x277CBEBF8];
  }

  v5 = [tags mutableCopy];

  [TRITaskUtils addAttribution:self->_taskAttributing toTaskTags:v5];

  return v5;
}

- (TRIFetchSingleRolloutNotificationTask)initWithDeployment:(id)deployment taskAttributing:(id)attributing
{
  deploymentCopy = deployment;
  attributingCopy = attributing;
  v10 = attributingCopy;
  if (deploymentCopy)
  {
    if (attributingCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchSingleRolloutNotificationTask.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFetchSingleRolloutNotificationTask.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"taskAttributing"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = TRIFetchSingleRolloutNotificationTask;
  v11 = [(TRIFetchSingleRolloutNotificationTask *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_deployment, deployment);
    objc_storeStrong(&v12->_taskAttributing, attributing);
    v13 = [[TRIRolloutTaskSupport alloc] initWithRolloutDeployment:deploymentCopy];
    support = v12->_support;
    v12->_support = v13;

    v15 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:v10];
    [(TRIRolloutTaskSupport *)v12->_support mergeTelemetry:v15];
  }

  return v12;
}

+ (id)taskWithDeployment:(id)deployment taskAttributing:(id)attributing
{
  attributingCopy = attributing;
  deploymentCopy = deployment;
  v8 = [[self alloc] initWithDeployment:deploymentCopy taskAttributing:attributingCopy];

  return v8;
}

- (void)runEnqueueHandlerUsingContext:(id)context
{
  deployment = self->_deployment;
  contextCopy = context;
  v6 = [TRIContentTracker contentIdentifierForRolloutArtifactWithDeployment:deployment];
  contentTracker = [contextCopy contentTracker];

  [contentTracker addRefWithContentIdentifier:v6];
}

- (void)runDequeueHandlerUsingContext:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  deployment = self->_deployment;
  contextCopy = context;
  v6 = [TRIContentTracker contentIdentifierForRolloutArtifactWithDeployment:deployment];
  contentTracker = [contextCopy contentTracker];

  LOBYTE(contextCopy) = [contentTracker dropRefWithContentIdentifier:v6];
  if ((contextCopy & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      shortDesc = [(TRIRolloutDeployment *)self->_deployment shortDesc];
      v11 = 138543362;
      v12 = shortDesc;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for rollout %{public}@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  v94 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dsema = a2;
  v61 = os_transaction_create();
  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v52 = objc_opt_class();
    shortDesc = [(TRIRolloutDeployment *)selfCopy->_deployment shortDesc];
    *buf = 138543618;
    *&buf[4] = v52;
    *&buf[12] = 2114;
    *&buf[14] = shortDesc;
    _os_log_debug_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEBUG, "starting %{public}@ with rollout %{public}@", buf, 0x16u);
  }

  rolloutDatabase = [contextCopy rolloutDatabase];
  v12 = [rolloutDatabase recordWithDeployment:selfCopy->_deployment usingTransaction:0];

  if (!v12)
  {
    keyValueStore = [contextCopy keyValueStore];
    v18 = [TRIFetchDateManager managerWithKeyValueStore:keyValueStore];

    namespaceDatabase = [contextCopy namespaceDatabase];
    paths = [contextCopy paths];
    namespaceDescriptorsDefaultDir = [paths namespaceDescriptorsDefaultDir];
    v22 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:namespaceDatabase defaultDescriptorDirectoryPath:namespaceDescriptorsDefaultDir];

    triCloudKitContainer = [(TRITaskAttributing *)selfCopy->_taskAttributing triCloudKitContainer];
    teamIdentifier = [(TRITaskAttributing *)selfCopy->_taskAttributing teamIdentifier];
    applicationBundleIdentifier = [(TRITaskAttributing *)selfCopy->_taskAttributing applicationBundleIdentifier];
    v12 = [TRICKNativeArtifactProvider providerForContainer:triCloudKitContainer teamId:teamIdentifier bundleId:applicationBundleIdentifier dateProvider:v18 namespaceDescriptorProvider:v22 serverContext:contextCopy];

    networkOptions = [(TRITaskAttributing *)selfCopy->_taskAttributing networkOptions];
    if ([networkOptions allowsCellularAccess])
    {
      support = selfCopy->_support;
      v28 = [MEMORY[0x277D73B40] metricWithName:@"allows_cellular_download" integerValue:{objc_msgSend(networkOptions, "allowsCellularAccess")}];
      [(TRIRolloutTaskSupport *)support addMetric:v28];
    }

    if ([networkOptions discretionaryBehavior])
    {
      stateProvider = [(TRIBaseTask *)selfCopy stateProvider];
      v30 = [stateProvider activeActivityGrantingCapability:{objc_msgSend(networkOptions, "requiredCapability")}];

      if (!v30)
      {
        v49 = TRILogCategory_Server();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F567000, v49, OS_LOG_TYPE_DEFAULT, "no xpc activity designated for discretionary operation, failing with retry", buf, 2u);
        }

        v16 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
        goto LABEL_34;
      }

      [networkOptions setActivity:v30];
    }

    v58 = [[TRIFetchOptions alloc] initWithDownloadOptions:networkOptions cacheDeleteAvailableSpaceClass:&unk_287FC4D50];
    v31 = dispatch_semaphore_create(0);
    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    v82 = 2;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v91 = __Block_byref_object_copy__52;
    v92 = __Block_byref_object_dispose__52;
    v93 = 0;
    v73 = 0;
    v74 = &v73;
    v75 = 0x3032000000;
    v76 = __Block_byref_object_copy__52;
    v77 = __Block_byref_object_dispose__52;
    v78 = 0;
    v32 = TRILogCategory_Server();
    v33 = os_signpost_id_generate(v32);

    v34 = TRILogCategory_Server();
    v35 = v34;
    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      rolloutId = [(TRIRolloutDeployment *)selfCopy->_deployment rolloutId];
      deploymentId = [(TRIRolloutDeployment *)selfCopy->_deployment deploymentId];
      *v84 = 138543618;
      v85 = rolloutId;
      v86 = 1024;
      LODWORD(v87) = deploymentId;
      _os_signpost_emit_with_name_impl(&dword_26F567000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v33, "FetchRolloutNotificationWithDeployment", "r: %{public}@, d: %d", v84, 0x12u);
    }

    deployment = selfCopy->_deployment;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __71__TRIFetchSingleRolloutNotificationTask_runUsingContext_withTaskQueue___block_invoke;
    v66[3] = &unk_279DE4950;
    v66[4] = selfCopy;
    v69 = &v79;
    v70 = buf;
    v71 = &v73;
    v72 = dsema;
    v67 = contextCopy;
    dsemaa = v31;
    v68 = dsemaa;
    [v12 fetchRolloutNotificationWithDeployment:deployment options:v58 completion:v66];
    dispatch_semaphore_wait(dsemaa, 0xFFFFFFFFFFFFFFFFLL);
    v39 = TRILogCategory_Server();
    v40 = v39;
    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      rolloutId2 = [(TRIRolloutDeployment *)selfCopy->_deployment rolloutId];
      deploymentId2 = [(TRIRolloutDeployment *)selfCopy->_deployment deploymentId];
      *v84 = 138543618;
      v85 = rolloutId2;
      v86 = 1024;
      LODWORD(v87) = deploymentId2;
      _os_signpost_emit_with_name_impl(&dword_26F567000, v40, OS_SIGNPOST_INTERVAL_END, v33, "FetchRolloutNotificationWithDeployment", "r: %{public}@, d: %d", v84, 0x12u);
    }

    v43 = TRILogCategory_Server();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v54 = objc_opt_class();
      shortDesc2 = [(TRIRolloutDeployment *)selfCopy->_deployment shortDesc];
      v56 = *(v80 + 6);
      if (v56 >= 5)
      {
        v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *(v80 + 6)];
      }

      else
      {
        v57 = off_279DE4970[v56];
      }

      *v84 = 138543874;
      v85 = v54;
      v86 = 2114;
      v87 = shortDesc2;
      v88 = 2114;
      v89 = v57;
      _os_log_debug_impl(&dword_26F567000, v43, OS_LOG_TYPE_DEBUG, "Finished %{public}@ with rollout %{public}@: %{public}@", v84, 0x20u);
    }

    if (v74[5])
    {
      selfCopy->wasDeferred = [TRICKNativeArtifactProvider isActivityDeferralError:?];
      v44 = TRIFetchErrorParseToMetrics(v74[5]);
      if ([v44 count])
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v45 = v44;
        v46 = [v45 countByEnumeratingWithState:&v62 objects:v83 count:16];
        if (v46)
        {
          v47 = *v63;
          do
          {
            for (i = 0; i != v46; ++i)
            {
              if (*v63 != v47)
              {
                objc_enumerationMutation(v45);
              }

              [(TRIRolloutTaskSupport *)selfCopy->_support addMetric:*(*(&v62 + 1) + 8 * i)];
            }

            v46 = [v45 countByEnumeratingWithState:&v62 objects:v83 count:16];
          }

          while (v46);
        }
      }
    }

    v16 = [TRITaskRunResult resultWithRunStatus:*(v80 + 6) reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:*(*&buf[8] + 40)];

    _Block_object_dispose(&v73, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v79, 8);
LABEL_34:

    goto LABEL_35;
  }

  v13 = TRILogCategory_Server();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    shortDesc3 = [(TRIRolloutDeployment *)selfCopy->_deployment shortDesc];
    *buf = 138543362;
    *&buf[4] = shortDesc3;
    _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Skipping CloudKit fetch of rollout notification for %{public}@: already present.", buf, 0xCu);
  }

  v15 = [TRITaskRunResult alloc];
  v16 = [(TRITaskRunResult *)v15 initWithRunStatus:2 reportResultToServer:0 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
LABEL_35:

  objc_sync_exit(selfCopy);
  v50 = *MEMORY[0x277D85DE8];

  return v16;
}

void __71__TRIFetchSingleRolloutNotificationTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 == 4)
  {
    if (v9)
    {
      v12 = [v9 namespaceNames];

      if (!v12)
      {
        v32 = [MEMORY[0x277CCA890] currentHandler];
        [v32 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIFetchSingleRolloutNotificationTask.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"artifact.namespaceNames"}];
      }

      v13 = [v9 rollout];
      v14 = [v13 hasRampId];

      if (v14)
      {
        v15 = [v9 rollout];
        v16 = [v15 rampId];

        if (!v16)
        {
          v33 = [MEMORY[0x277CCA890] currentHandler];
          [v33 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIFetchSingleRolloutNotificationTask.m" lineNumber:175 description:{@"Expression was unexpectedly nil/false: %@", @"artifact.rollout.rampId"}];
        }

        v17 = TRIValidateRampId();

        if (v17 && *(*(a1 + 32) + 40))
        {
          v18 = objc_opt_new();
          v19 = [v18 ensureRolloutFields];
          [v19 setClientRampId:v17];

          [*(*(a1 + 32) + 40) mergeTelemetry:v18];
        }
      }

      else
      {
        v17 = 0;
      }

      v24 = [TRIRolloutRecord alloc];
      v25 = *(*(a1 + 32) + 24);
      v26 = [v9 namespaceNames];
      v27 = [(TRIRolloutRecord *)v24 initWithDeployment:v25 rampId:v17 activeFactorPackSetId:0 activeTargetingRuleIndex:0 targetedFactorPackSetId:0 targetedTargetingRuleIndex:0 status:0 namespaces:v26 artifact:v9];

      v28 = [*(a1 + 40) rolloutDatabase];
      LOBYTE(v26) = [v28 addNewRolloutWithRecord:v27];

      if ((v26 & 1) == 0)
      {
        v29 = TRILogCategory_Server();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v31 = [*(*(a1 + 32) + 24) shortDesc];
          *buf = 138543362;
          v35 = v31;
          _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Unexpected conflict when saving rollout to database: %{public}@", buf, 0xCu);
        }

        *(*(*(a1 + 56) + 8) + 24) = 3;
      }
    }

    else
    {
      v22 = TRILogCategory_Server();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [*(*(a1 + 32) + 24) shortDesc];
        *buf = 138543362;
        v35 = v23;
        _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "No valid and compatible rollout artifact was received for %{public}@.", buf, 0xCu);
      }

      *(*(*(a1 + 56) + 8) + 24) = 3;
    }
  }

  else
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(*(a1 + 32) + 24) shortDesc];
      *buf = 138543618;
      v35 = v21;
      v36 = 2114;
      v37 = v11;
      _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "Unable to fetch rollout notification %{public}@: %{public}@", buf, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a5);
  }

  dispatch_semaphore_signal(*(a1 + 48));

  v30 = *MEMORY[0x277D85DE8];
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
    v8.super_class = TRIFetchSingleRolloutNotificationTask;
    if ([(TRIBaseTask *)&v8 isEqual:equalCopy]&& [(TRIFetchSingleRolloutNotificationTask *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      if ([(TRIRolloutDeployment *)self->_deployment isEqualToDeployment:v5->_deployment])
      {
        v6 = [(TRITaskAttributing *)self->_taskAttributing isEqual:v5->_taskAttributing];
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
  v6.super_class = TRIFetchSingleRolloutNotificationTask;
  v3 = [(TRIBaseTask *)&v6 hash];
  v4 = [(TRIRolloutDeployment *)self->_deployment hash]+ 37 * v3;
  return [(TRITaskAttributing *)self->_taskAttributing hash]+ 37 * v4;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  rolloutId = [(TRIRolloutDeployment *)self->_deployment rolloutId];
  [v3 setRolloutId:rolloutId];

  [v3 setDeploymentId:{-[TRIRolloutDeployment deploymentId](self->_deployment, "deploymentId")}];
  asPersistedTaskAttribution = [(TRITaskAttributing *)self->_taskAttributing asPersistedTaskAttribution];
  [v3 setTaskAttribution:asPersistedTaskAttribution];

  [v3 setRetryCount:{-[TRIFetchSingleRolloutNotificationTask retryCount](self, "retryCount")}];

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRIFetchSingleRolloutNotificationTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchSingleRolloutNotificationTask.m" lineNumber:280 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v3 = [(TRIPBMessage *)TRIFetchSingleRolloutNotificationPersistedTask parseFromData:data error:&v25];
  v4 = v25;
  if (!v3)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v4;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIFetchSingleRolloutNotificationPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_24;
  }

  if (([v3 hasRolloutId] & 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138412290;
      v27 = v24;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: rolloutId", buf, 0xCu);
    }

    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138412290;
    v27 = v15;
    v16 = "Cannot decode message of type %@ with missing field: rolloutId";
    goto LABEL_23;
  }

  rolloutId = [v3 rolloutId];
  v6 = [rolloutId length];

  if (!v6)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v17 = objc_opt_class();
    v15 = NSStringFromClass(v17);
    *buf = 138412290;
    v27 = v15;
    v16 = "Cannot decode message of type %@ with field of length 0: rolloutId";
LABEL_23:
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);

    goto LABEL_24;
  }

  if (([v3 hasDeploymentId] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v18 = objc_opt_class();
    v15 = NSStringFromClass(v18);
    *buf = 138412290;
    v27 = v15;
    v16 = "Cannot decode message of type %@ with missing field: deploymentId";
    goto LABEL_23;
  }

  if (([v3 hasTaskAttribution] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v19 = objc_opt_class();
    v15 = NSStringFromClass(v19);
    *buf = 138412290;
    v27 = v15;
    v16 = "Cannot decode message of type %@ with missing field: taskAttribution";
    goto LABEL_23;
  }

  if (([v3 hasRetryCount] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v15 = NSStringFromClass(v20);
      *buf = 138412290;
      v27 = v15;
      v16 = "Cannot decode message of type %@ with missing field: retryCount";
      goto LABEL_23;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  taskAttribution = [v3 taskAttribution];
  v8 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:taskAttribution];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D737C8]);
    rolloutId2 = [v3 rolloutId];
    v11 = [v9 initWithRolloutId:rolloutId2 deploymentId:{objc_msgSend(v3, "deploymentId")}];

    v12 = [objc_opt_class() taskWithDeployment:v11 taskAttributing:v8];
    [v12 setRetryCount:{objc_msgSend(v3, "retryCount")}];
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Invalid de-serialized TRITaskAttribution pb message", buf, 2u);
    }

    v12 = 0;
  }

LABEL_25:
  v21 = *MEMORY[0x277D85DE8];

  return v12;
}

- (unint64_t)requiredCapabilities
{
  networkOptions = [(TRITaskAttributing *)self->_taskAttributing networkOptions];
  requiredCapability = [networkOptions requiredCapability];

  if ([(TRIFetchSingleRolloutNotificationTask *)self retryCount])
  {
    return requiredCapability | 4;
  }

  else
  {
    return requiredCapability;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  shortDesc = [(TRIRolloutDeployment *)self->_deployment shortDesc];
  v6 = [v3 stringWithFormat:@"<%@:%@, r:%d>", v4, shortDesc, -[TRIFetchSingleRolloutNotificationTask retryCount](self, "retryCount")];

  return v6;
}

- (TRIFetchSingleRolloutNotificationTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIFetchSingleRolloutNotificationTask;
  v5 = [(TRIFetchSingleRolloutNotificationTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchSingleRolloutNotificationTask.m" lineNumber:322 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIFetchSingleRolloutNotificationTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end