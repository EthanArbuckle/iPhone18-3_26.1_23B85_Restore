@interface TRIRolloutTargetingTask
+ (id)parseFromData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSArray)dependencies;
- (NSString)description;
- (TRIRolloutTargetingTask)initWithCoder:(id)coder;
- (TRIRolloutTargetingTask)initWithRolloutDeployment:(id)deployment includeDependencies:(BOOL)dependencies taskAttribution:(id)attribution triggerEvent:(unint64_t)event;
- (id)_asPersistedTask;
- (id)_categoricalValueForTriggerEvent:(unint64_t)event;
- (id)_runTaskUsingContext:(id)context withTaskQueue:(id)queue rolloutTargeter:(id)targeter error:(id *)error;
- (id)_systemCovariatesWithPaths:(id)paths;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)runDequeueHandlerUsingContext:(id)context;
- (void)runEnqueueHandlerUsingContext:(id)context;
@end

@implementation TRIRolloutTargetingTask

- (TRIRolloutTargetingTask)initWithRolloutDeployment:(id)deployment includeDependencies:(BOOL)dependencies taskAttribution:(id)attribution triggerEvent:(unint64_t)event
{
  deploymentCopy = deployment;
  attributionCopy = attribution;
  if (!deploymentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"rolloutDeployment"}];
  }

  if ([deploymentCopy deploymentId] == -1)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"rolloutDeployment.deploymentId != kTRIUnspecifiedDeploymentId"}];
  }

  v29.receiver = self;
  v29.super_class = TRIRolloutTargetingTask;
  v13 = [(TRIRolloutTargetingTask *)&v29 init];
  if (v13)
  {
    v14 = [[TRIRolloutTaskSupport alloc] initWithRolloutDeployment:deploymentCopy];
    support = v13->_support;
    v13->_support = v14;

    v13->_includeDependencies = dependencies;
    objc_storeStrong(&v13->_taskAttribution, attribution);
    v13->_triggerEvent = event;
    v16 = objc_opt_new();
    rolloutId = [deploymentCopy rolloutId];
    ensureRolloutFields = [v16 ensureRolloutFields];
    [ensureRolloutFields setClientRolloutId:rolloutId];

    v19 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(deploymentCopy, "deploymentId")}];
    stringValue = [v19 stringValue];
    [v16 setClientDeploymentId:stringValue];

    v21 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:attributionCopy];
    v22 = v13->_support;
    v23 = MEMORY[0x277D73B40];
    v24 = [(TRIRolloutTargetingTask *)v13 _categoricalValueForTriggerEvent:v13->_triggerEvent];
    v25 = [v23 metricWithName:@"trigger_event" categoricalValue:v24];
    [(TRIRolloutTaskSupport *)v22 addMetric:v25];

    [(TRIRolloutTaskSupport *)v13->_support mergeTelemetry:v16];
    [(TRIRolloutTaskSupport *)v13->_support mergeTelemetry:v21];
  }

  return v13;
}

- (NSArray)dependencies
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (self->_includeDependencies)
  {
    rolloutDeployment = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    v4 = [TRIFetchSingleRolloutNotificationTask taskWithDeployment:rolloutDeployment taskAttributing:self->_taskAttribution];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)runEnqueueHandlerUsingContext:(id)context
{
  contextCopy = context;
  rolloutDeployment = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  v7 = [TRIContentTracker contentIdentifierForRolloutArtifactWithDeployment:rolloutDeployment];

  contentTracker = [contextCopy contentTracker];

  [contentTracker addRefWithContentIdentifier:v7];
}

- (void)runDequeueHandlerUsingContext:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  rolloutDeployment = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  v6 = [TRIContentTracker contentIdentifierForRolloutArtifactWithDeployment:rolloutDeployment];

  contentTracker = [contextCopy contentTracker];

  LOBYTE(contextCopy) = [contentTracker dropRefWithContentIdentifier:v6];
  if ((contextCopy & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      rolloutDeployment2 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
      shortDesc = [rolloutDeployment2 shortDesc];
      v12 = 138543362;
      v13 = shortDesc;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for rollout %{public}@", &v12, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_systemCovariatesWithPaths:(id)paths
{
  pathsCopy = paths;
  v4 = [[TRISystemCovariates alloc] initWithPaths:pathsCopy];

  return v4;
}

- (id)_runTaskUsingContext:(id)context withTaskQueue:(id)queue rolloutTargeter:(id)targeter error:(id *)error
{
  v86[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  targeterCopy = targeter;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"context != nil"}];
  }

  v69 = queueCopy;
  if (!queueCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"taskQueue != nil"}];
  }

  if (targeterCopy)
  {
    if (error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"targeter != nil"}];

    if (error)
    {
      goto LABEL_7;
    }
  }

  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];

LABEL_7:
  rolloutDatabase = [contextCopy rolloutDatabase];
  rolloutDeployment = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  v15 = [rolloutDatabase recordWithDeployment:rolloutDeployment usingTransaction:0];

  if (v15)
  {
    rampId = [v15 rampId];

    if (rampId)
    {
      v17 = objc_opt_new();
      rampId2 = [v15 rampId];
      ensureRolloutFields = [v17 ensureRolloutFields];
      [ensureRolloutFields setClientRampId:rampId2];

      [(TRIRolloutTaskSupport *)self->_support mergeTelemetry:v17];
    }
  }

  else
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      rolloutDeployment2 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
      shortDesc = [rolloutDeployment2 shortDesc];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = shortDesc;
      _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "Warning: unable to find TRIRolloutRecord for deployment %{public}@; issuing incomplete telemetry.", &buf, 0xCu);
    }
  }

  v77 = 0;
  v76 = 1;
  v75 = 0;
  v23 = [TRIRolloutTargetingOperation alloc];
  rolloutDatabase2 = [contextCopy rolloutDatabase];
  v70 = [(TRIRolloutTargetingOperation *)v23 initWithRolloutTargeter:targeterCopy rolloutDatabase:rolloutDatabase2 context:contextCopy];

  rolloutDeployment3 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  LOBYTE(v23) = [(TRIRolloutTargetingOperation *)v70 targetRolloutDeployment:rolloutDeployment3 appendingTelemetryToSupport:self->_support reportTelemetryToServer:&v76 factorPackSetIdToActivate:&v77 shouldDisenroll:&v75 error:error];

  if ((v23 & 1) == 0)
  {
    rolloutDeployment4 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    rolloutId = [rolloutDeployment4 rolloutId];
    rampId3 = [v15 rampId];
    rolloutDeployment5 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    deploymentId = [rolloutDeployment5 deploymentId];
    LOBYTE(v67) = 0;
    [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:5 forRollout:rolloutId ramp:rampId3 deployment:deploymentId fps:v77 namespaces:0 telemetryMetric:0 rolloutRecord:v15 isBecomingObsolete:v67 context:contextCopy];

    v39 = [(TRIRolloutTargetingTask *)self _taskResultWithStatus:3 reportResults:1 nextTasks:0];
LABEL_17:
    v33 = v39;
    goto LABEL_26;
  }

  if (v75 == 1)
  {
    rolloutDeployment6 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    rolloutId2 = [rolloutDeployment6 rolloutId];
    v86[0] = self;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:1];
    [v69 cancelTasksWithTag:rolloutId2 excludingTasks:v28];

    rolloutDeployment7 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    rolloutId3 = [rolloutDeployment7 rolloutId];
    v31 = [TRIDisenrollRolloutTask taskWithRolloutId:rolloutId3 triggerEvent:2];
    v85 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];

    v33 = [(TRIRolloutTargetingTask *)self _taskResultWithStatus:2 reportResults:v76 nextTasks:v32];

    goto LABEL_26;
  }

  if (!v77)
  {
    v39 = [(TRIRolloutTargetingTask *)self _taskResultWithStatus:2 reportResults:0 nextTasks:0];
    goto LABEL_17;
  }

  if (self->_triggerEvent != 2)
  {
    rolloutDeployment8 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    rolloutId4 = [rolloutDeployment8 rolloutId];
    selfCopy = self;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
    [v69 cancelTasksWithTag:rolloutId4 excludingTasks:v42];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__42;
  v82 = __Block_byref_object_dispose__42;
  v83 = objc_opt_new();
  networkOptions = [(TRITaskAttributing *)self->_taskAttribution networkOptions];
  allowsCellularAccess = [networkOptions allowsCellularAccess];

  if (allowsCellularAccess)
  {
    v45 = objc_autoreleasePoolPush();
    rolloutDatabase3 = [contextCopy rolloutDatabase];
    rolloutDeployment9 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    v48 = [rolloutDatabase3 recordWithDeployment:rolloutDeployment9 usingTransaction:0];

    if (v48)
    {
      artifact = [v48 artifact];
      rollout = [artifact rollout];

      selectedNamespaceArray = [rollout selectedNamespaceArray];
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __84__TRIRolloutTargetingTask__runTaskUsingContext_withTaskQueue_rolloutTargeter_error___block_invoke;
      v72[3] = &unk_279DE3A78;
      v73 = contextCopy;
      p_buf = &buf;
      [selectedNamespaceArray enumerateObjectsUsingBlock:v72];
    }

    objc_autoreleasePoolPop(v45);
  }

  rolloutDeployment10 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  ident = [v77 ident];
  v54 = [TRIActivateTargetedRolloutDeploymentTask taskWithDeployment:rolloutDeployment10 factorPackSetId:ident taskAttribution:self->_taskAttribution capabilityModifier:*(*(&buf + 1) + 40)];
  v78 = v54;
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];

  rolloutDeployment11 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  rolloutId5 = [rolloutDeployment11 rolloutId];
  rampId4 = [v15 rampId];
  rolloutDeployment12 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  deploymentId2 = [rolloutDeployment12 deploymentId];
  ident2 = [v77 ident];
  LOBYTE(v67) = 0;
  [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:1 forRollout:rolloutId5 ramp:rampId4 deployment:deploymentId2 fps:ident2 namespaces:0 telemetryMetric:0 rolloutRecord:v15 isBecomingObsolete:v67 context:contextCopy];

  v33 = [(TRIRolloutTargetingTask *)self _taskResultWithStatus:2 reportResults:v76 nextTasks:v68];

  _Block_object_dispose(&buf, 8);
LABEL_26:

  v61 = *MEMORY[0x277D85DE8];

  return v33;
}

void __84__TRIRolloutTargetingTask__runTaskUsingContext_withTaskQueue_rolloutTargeter_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = MEMORY[0x277D73750];
  v8 = [v6 name];
  v9 = [*(a1 + 32) paths];
  v10 = [v9 namespaceDescriptorsDefaultDir];
  v11 = [v7 loadWithNamespaceName:v8 fromDirectory:v10];

  if (([v11 expensiveNetworkingAllowed] & 1) == 0)
  {
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 name];
      v18 = 138412290;
      v19 = v13;
      _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Changing TRIFetchFactorPackSetTask to require inexpensive networking since %@ does not support expensive networking", &v18, 0xCu);
    }

    v14 = [[TRITaskCapabilityModifier alloc] initWithAdd:1 remove:2];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *a4 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  contextCopy = context;
  queueCopy = queue;
  v8 = objc_autoreleasePoolPush();
  paths = [contextCopy paths];
  v10 = [(TRIRolloutTargetingTask *)self _systemCovariatesWithPaths:paths];

  v11 = [[TRIUserCovariates alloc] initWithContext:contextCopy];
  v12 = [TRIRolloutTargeter alloc];
  rolloutDatabase = [contextCopy rolloutDatabase];
  v14 = [(TRIRolloutTargeter *)v12 initWithDatabase:rolloutDatabase systemCovariateProvider:v10 userCovariateProvider:v11];

  v17 = 0;
  v15 = [(TRIRolloutTargetingTask *)self _runTaskUsingContext:contextCopy withTaskQueue:queueCopy rolloutTargeter:v14 error:&v17];

  objc_autoreleasePoolPop(v8);

  return v15;
}

- (id)_categoricalValueForTriggerEvent:(unint64_t)event
{
  if (event == 1)
  {
    return @"hotfix";
  }

  else
  {
    return @"routine-fetch";
  }
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  rolloutDeployment = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  rolloutId = [rolloutDeployment rolloutId];
  [v3 setRolloutId:rolloutId];

  rolloutDeployment2 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  [v3 setDeploymentId:{objc_msgSend(rolloutDeployment2, "deploymentId")}];

  [v3 setIncludeDependencies:self->_includeDependencies];
  asPersistedTaskAttribution = [(TRITaskAttributing *)self->_taskAttribution asPersistedTaskAttribution];
  [v3 setTaskAttribution:asPersistedTaskAttribution];

  triggerEvent = self->_triggerEvent;
  if (triggerEvent <= 2)
  {
    [v3 setTriggerEvent:(triggerEvent + 1)];
  }

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRIRolloutTargetingTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:310 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v3 = [(TRIPBMessage *)TRIRolloutTargetingPersistedTask parseFromData:data error:&v27];
  v4 = v27;
  if (!v3)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v29 = v4;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIRolloutTargetingPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_27;
  }

  if (([v3 hasRolloutId] & 1) == 0)
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138412290;
      v29 = v23;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: rolloutId", buf, 0xCu);
    }

    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412290;
    v29 = v13;
    v14 = "Cannot decode message of type %@ with missing field: rolloutId";
    goto LABEL_26;
  }

  rolloutId = [v3 rolloutId];
  v6 = [rolloutId length];

  if (!v6)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v15 = objc_opt_class();
    v13 = NSStringFromClass(v15);
    *buf = 138412290;
    v29 = v13;
    v14 = "Cannot decode message of type %@ with field of length 0: rolloutId";
LABEL_26:
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);

    goto LABEL_27;
  }

  if (([v3 hasDeploymentId] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v16 = objc_opt_class();
    v13 = NSStringFromClass(v16);
    *buf = 138412290;
    v29 = v13;
    v14 = "Cannot decode message of type %@ with missing field: deploymentId";
    goto LABEL_26;
  }

  if (([v3 hasIncludeDependencies] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v17 = objc_opt_class();
    v13 = NSStringFromClass(v17);
    *buf = 138412290;
    v29 = v13;
    v14 = "Cannot decode message of type %@ with missing field: includeDependencies";
    goto LABEL_26;
  }

  if (([v3 hasTaskAttribution] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v13 = NSStringFromClass(v18);
      *buf = 138412290;
      v29 = v13;
      v14 = "Cannot decode message of type %@ with missing field: taskAttribution";
      goto LABEL_26;
    }

LABEL_27:
    v19 = 0;
    goto LABEL_28;
  }

  taskAttribution = [v3 taskAttribution];
  v8 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:taskAttribution];

  if (v8)
  {
    if ([v3 hasTriggerEvent])
    {
      triggerEvent = [v3 triggerEvent];
      if (triggerEvent == 3)
      {
        v10 = 2;
      }

      else
      {
        v10 = triggerEvent == 2;
      }
    }

    else
    {
      v10 = 0;
    }

    v25 = objc_alloc(MEMORY[0x277D737C8]);
    rolloutId2 = [v3 rolloutId];
    v24 = [v25 initWithRolloutId:rolloutId2 deploymentId:{objc_msgSend(v3, "deploymentId")}];

    v19 = [objc_opt_class() taskWithRolloutDeployment:v24 includeDependencies:objc_msgSend(v3 taskAttribution:"includeDependencies") triggerEvent:{v8, v10}];
  }

  else
  {
    v24 = TRILogCategory_Server();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
    }

    v19 = 0;
  }

LABEL_28:
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = TRIRolloutTargetingTask;
  if ([(TRIBaseTask *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    rolloutDeployment = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    rolloutDeployment2 = [v5 rolloutDeployment];

    v8 = [rolloutDeployment isEqualToDeployment:rolloutDeployment2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = TRIRolloutTargetingTask;
  v3 = [(TRIBaseTask *)&v7 hash];
  rolloutDeployment = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  v5 = [rolloutDeployment hash] + 37 * v3;

  return v5;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  rolloutDeployment = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  shortDesc = [rolloutDeployment shortDesc];
  v7 = [v3 initWithFormat:@"<%@:%@>", v4, shortDesc];

  return v7;
}

- (TRIRolloutTargetingTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIRolloutTargetingTask;
  v5 = [(TRIRolloutTargetingTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:385 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIRolloutTargetingTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end