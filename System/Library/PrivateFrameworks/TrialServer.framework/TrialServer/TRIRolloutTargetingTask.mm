@interface TRIRolloutTargetingTask
+ (id)parseFromData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSArray)dependencies;
- (NSString)description;
- (TRIRolloutTargetingTask)initWithCoder:(id)a3;
- (TRIRolloutTargetingTask)initWithRolloutDeployment:(id)a3 includeDependencies:(BOOL)a4 taskAttribution:(id)a5 triggerEvent:(unint64_t)a6;
- (id)_asPersistedTask;
- (id)_categoricalValueForTriggerEvent:(unint64_t)a3;
- (id)_runTaskUsingContext:(id)a3 withTaskQueue:(id)a4 rolloutTargeter:(id)a5 error:(id *)a6;
- (id)_systemCovariatesWithPaths:(id)a3;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)runDequeueHandlerUsingContext:(id)a3;
- (void)runEnqueueHandlerUsingContext:(id)a3;
@end

@implementation TRIRolloutTargetingTask

- (TRIRolloutTargetingTask)initWithRolloutDeployment:(id)a3 includeDependencies:(BOOL)a4 taskAttribution:(id)a5 triggerEvent:(unint64_t)a6
{
  v11 = a3;
  v12 = a5;
  if (!v11)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"rolloutDeployment"}];
  }

  if ([v11 deploymentId] == -1)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"rolloutDeployment.deploymentId != kTRIUnspecifiedDeploymentId"}];
  }

  v29.receiver = self;
  v29.super_class = TRIRolloutTargetingTask;
  v13 = [(TRIRolloutTargetingTask *)&v29 init];
  if (v13)
  {
    v14 = [[TRIRolloutTaskSupport alloc] initWithRolloutDeployment:v11];
    support = v13->_support;
    v13->_support = v14;

    v13->_includeDependencies = a4;
    objc_storeStrong(&v13->_taskAttribution, a5);
    v13->_triggerEvent = a6;
    v16 = objc_opt_new();
    v17 = [v11 rolloutId];
    v18 = [v16 ensureRolloutFields];
    [v18 setClientRolloutId:v17];

    v19 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "deploymentId")}];
    v20 = [v19 stringValue];
    [v16 setClientDeploymentId:v20];

    v21 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:v12];
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
    v3 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    v4 = [TRIFetchSingleRolloutNotificationTask taskWithDeployment:v3 taskAttributing:self->_taskAttribution];
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

- (void)runEnqueueHandlerUsingContext:(id)a3
{
  v4 = a3;
  v5 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  v7 = [TRIContentTracker contentIdentifierForRolloutArtifactWithDeployment:v5];

  v6 = [v4 contentTracker];

  [v6 addRefWithContentIdentifier:v7];
}

- (void)runDequeueHandlerUsingContext:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  v6 = [TRIContentTracker contentIdentifierForRolloutArtifactWithDeployment:v5];

  v7 = [v4 contentTracker];

  LOBYTE(v4) = [v7 dropRefWithContentIdentifier:v6];
  if ((v4 & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
      v11 = [v10 shortDesc];
      v12 = 138543362;
      v13 = v11;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for rollout %{public}@", &v12, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_systemCovariatesWithPaths:(id)a3
{
  v3 = a3;
  v4 = [[TRISystemCovariates alloc] initWithPaths:v3];

  return v4;
}

- (id)_runTaskUsingContext:(id)a3 withTaskQueue:(id)a4 rolloutTargeter:(id)a5 error:(id *)a6
{
  v86[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v71 = a5;
  if (!v11)
  {
    v63 = [MEMORY[0x277CCA890] currentHandler];
    [v63 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"context != nil"}];
  }

  v69 = v12;
  if (!v12)
  {
    v64 = [MEMORY[0x277CCA890] currentHandler];
    [v64 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"taskQueue != nil"}];
  }

  if (v71)
  {
    if (a6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v65 = [MEMORY[0x277CCA890] currentHandler];
    [v65 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"targeter != nil"}];

    if (a6)
    {
      goto LABEL_7;
    }
  }

  v66 = [MEMORY[0x277CCA890] currentHandler];
  [v66 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];

LABEL_7:
  v13 = [v11 rolloutDatabase];
  v14 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  v15 = [v13 recordWithDeployment:v14 usingTransaction:0];

  if (v15)
  {
    v16 = [v15 rampId];

    if (v16)
    {
      v17 = objc_opt_new();
      v18 = [v15 rampId];
      v19 = [v17 ensureRolloutFields];
      [v19 setClientRampId:v18];

      [(TRIRolloutTaskSupport *)self->_support mergeTelemetry:v17];
    }
  }

  else
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
      v22 = [v21 shortDesc];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v22;
      _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "Warning: unable to find TRIRolloutRecord for deployment %{public}@; issuing incomplete telemetry.", &buf, 0xCu);
    }
  }

  v77 = 0;
  v76 = 1;
  v75 = 0;
  v23 = [TRIRolloutTargetingOperation alloc];
  v24 = [v11 rolloutDatabase];
  v70 = [(TRIRolloutTargetingOperation *)v23 initWithRolloutTargeter:v71 rolloutDatabase:v24 context:v11];

  v25 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  LOBYTE(v23) = [(TRIRolloutTargetingOperation *)v70 targetRolloutDeployment:v25 appendingTelemetryToSupport:self->_support reportTelemetryToServer:&v76 factorPackSetIdToActivate:&v77 shouldDisenroll:&v75 error:a6];

  if ((v23 & 1) == 0)
  {
    v34 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    v35 = [v34 rolloutId];
    v36 = [v15 rampId];
    v37 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    v38 = [v37 deploymentId];
    LOBYTE(v67) = 0;
    [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:5 forRollout:v35 ramp:v36 deployment:v38 fps:v77 namespaces:0 telemetryMetric:0 rolloutRecord:v15 isBecomingObsolete:v67 context:v11];

    v39 = [(TRIRolloutTargetingTask *)self _taskResultWithStatus:3 reportResults:1 nextTasks:0];
LABEL_17:
    v33 = v39;
    goto LABEL_26;
  }

  if (v75 == 1)
  {
    v26 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    v27 = [v26 rolloutId];
    v86[0] = self;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:1];
    [v69 cancelTasksWithTag:v27 excludingTasks:v28];

    v29 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    v30 = [v29 rolloutId];
    v31 = [TRIDisenrollRolloutTask taskWithRolloutId:v30 triggerEvent:2];
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
    v40 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    v41 = [v40 rolloutId];
    v84 = self;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
    [v69 cancelTasksWithTag:v41 excludingTasks:v42];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__42;
  v82 = __Block_byref_object_dispose__42;
  v83 = objc_opt_new();
  v43 = [(TRITaskAttributing *)self->_taskAttribution networkOptions];
  v44 = [v43 allowsCellularAccess];

  if (v44)
  {
    v45 = objc_autoreleasePoolPush();
    v46 = [v11 rolloutDatabase];
    v47 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    v48 = [v46 recordWithDeployment:v47 usingTransaction:0];

    if (v48)
    {
      v49 = [v48 artifact];
      v50 = [v49 rollout];

      v51 = [v50 selectedNamespaceArray];
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __84__TRIRolloutTargetingTask__runTaskUsingContext_withTaskQueue_rolloutTargeter_error___block_invoke;
      v72[3] = &unk_279DE3A78;
      v73 = v11;
      p_buf = &buf;
      [v51 enumerateObjectsUsingBlock:v72];
    }

    objc_autoreleasePoolPop(v45);
  }

  v52 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  v53 = [v77 ident];
  v54 = [TRIActivateTargetedRolloutDeploymentTask taskWithDeployment:v52 factorPackSetId:v53 taskAttribution:self->_taskAttribution capabilityModifier:*(*(&buf + 1) + 40)];
  v78 = v54;
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];

  v55 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  v56 = [v55 rolloutId];
  v57 = [v15 rampId];
  v58 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  v59 = [v58 deploymentId];
  v60 = [v77 ident];
  LOBYTE(v67) = 0;
  [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:1 forRollout:v56 ramp:v57 deployment:v59 fps:v60 namespaces:0 telemetryMetric:0 rolloutRecord:v15 isBecomingObsolete:v67 context:v11];

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

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [v6 paths];
  v10 = [(TRIRolloutTargetingTask *)self _systemCovariatesWithPaths:v9];

  v11 = [[TRIUserCovariates alloc] initWithContext:v6];
  v12 = [TRIRolloutTargeter alloc];
  v13 = [v6 rolloutDatabase];
  v14 = [(TRIRolloutTargeter *)v12 initWithDatabase:v13 systemCovariateProvider:v10 userCovariateProvider:v11];

  v17 = 0;
  v15 = [(TRIRolloutTargetingTask *)self _runTaskUsingContext:v6 withTaskQueue:v7 rolloutTargeter:v14 error:&v17];

  objc_autoreleasePoolPop(v8);

  return v15;
}

- (id)_categoricalValueForTriggerEvent:(unint64_t)a3
{
  if (a3 == 1)
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
  v4 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  v5 = [v4 rolloutId];
  [v3 setRolloutId:v5];

  v6 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  [v3 setDeploymentId:{objc_msgSend(v6, "deploymentId")}];

  [v3 setIncludeDependencies:self->_includeDependencies];
  v7 = [(TRITaskAttributing *)self->_taskAttribution asPersistedTaskAttribution];
  [v3 setTaskAttribution:v7];

  triggerEvent = self->_triggerEvent;
  if (triggerEvent <= 2)
  {
    [v3 setTriggerEvent:(triggerEvent + 1)];
  }

  return v3;
}

- (id)serialize
{
  v4 = [(TRIRolloutTargetingTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:310 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v3 = [(TRIPBMessage *)TRIRolloutTargetingPersistedTask parseFromData:a3 error:&v27];
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

  v5 = [v3 rolloutId];
  v6 = [v5 length];

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

  v7 = [v3 taskAttribution];
  v8 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:v7];

  if (v8)
  {
    if ([v3 hasTriggerEvent])
    {
      v9 = [v3 triggerEvent];
      if (v9 == 3)
      {
        v10 = 2;
      }

      else
      {
        v10 = v9 == 2;
      }
    }

    else
    {
      v10 = 0;
    }

    v25 = objc_alloc(MEMORY[0x277D737C8]);
    v26 = [v3 rolloutId];
    v24 = [v25 initWithRolloutId:v26 deploymentId:{objc_msgSend(v3, "deploymentId")}];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TRIRolloutTargetingTask;
  if ([(TRIBaseTask *)&v10 isEqual:v4])
  {
    v5 = v4;
    v6 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
    v7 = [v5 rolloutDeployment];

    v8 = [v6 isEqualToDeployment:v7];
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
  v4 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  v5 = [v4 hash] + 37 * v3;

  return v5;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = [(TRIRolloutTargetingTask *)self rolloutDeployment];
  v6 = [v5 shortDesc];
  v7 = [v3 initWithFormat:@"<%@:%@>", v4, v6];

  return v7;
}

- (TRIRolloutTargetingTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIRolloutTargetingTask;
  v5 = [(TRIRolloutTargetingTask *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pb"];
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

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIRolloutTargetingTask.m" lineNumber:385 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRIRolloutTargetingTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end