@interface TRIFetchMultipleExperimentNotificationsTask
+ (id)parseFromData:(id)a3;
- (BOOL)_checkIfAnyTreatmentPresent:(id)a3 usingContext:(id)a4;
- (BOOL)_processExperiment:(id)a3 taskContext:(id)a4 taskQueue:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSArray)tags;
- (TRIFetchMultipleExperimentNotificationsTask)initWithCoder:(id)a3;
- (TRIFetchMultipleExperimentNotificationsTask)initWithStartingFetchDateOverride:(id)a3 container:(int)a4 team:(id)a5 rollbacksOnly:(BOOL)a6 withNamespaceNames:(id)a7;
- (TRIFetchMultipleExperimentNotificationsTask)initWithStartingFetchDateOverride:(id)a3 namespaceNames:(id)a4 taskAttributing:(id)a5 rollbacksOnly:(BOOL)a6 limitedCarryOnly:(BOOL)a7;
- (id)_asPersistedTask;
- (id)_getNextTaskForExperiment:(id)a3 taskContext:(id)a4 taskQueue:(id)a5;
- (id)dimensions;
- (id)metrics;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)_addDimension:(id)a3;
- (void)_addMetric:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateStatusForNamespacesWithContext:(id)a3;
@end

@implementation TRIFetchMultipleExperimentNotificationsTask

- (NSArray)tags
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v9.receiver = self;
  v9.super_class = TRIFetchMultipleExperimentNotificationsTask;
  v4 = [(TRIBaseTask *)&v9 tags];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [v3 initWithArray:v6];

  if (self->_rollbacksOnly)
  {
    [v7 addObject:@"rollbacksOnly"];
  }

  [TRITaskUtils addAttribution:self->_taskAttributing toTaskTags:v7];

  return v7;
}

- (TRIFetchMultipleExperimentNotificationsTask)initWithStartingFetchDateOverride:(id)a3 namespaceNames:(id)a4 taskAttributing:(id)a5 rollbacksOnly:(BOOL)a6 limitedCarryOnly:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v21.receiver = self;
  v21.super_class = TRIFetchMultipleExperimentNotificationsTask;
  v16 = [(TRIFetchMultipleExperimentNotificationsTask *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_startingFetchDateOverride, a3);
    v17->_rollbacksOnly = a6;
    v17->_limitedCarryOnly = a7;
    objc_storeStrong(&v17->_taskAttributing, a5);
    v18 = objc_opt_new();
    nextTasks = v17->_nextTasks;
    v17->_nextTasks = v18;

    objc_storeStrong(&v17->_namespaceNames, a4);
  }

  return v17;
}

- (TRIFetchMultipleExperimentNotificationsTask)initWithStartingFetchDateOverride:(id)a3 container:(int)a4 team:(id)a5 rollbacksOnly:(BOOL)a6 withNamespaceNames:(id)a7
{
  v11 = a3;
  v12 = a7;
  v18.receiver = self;
  v18.super_class = TRIFetchMultipleExperimentNotificationsTask;
  v13 = [(TRIFetchMultipleExperimentNotificationsTask *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_startingFetchDateOverride, a3);
    v14->_rollbacksOnly = a6;
    objc_storeStrong(&v14->_namespaceNames, a7);
    v15 = objc_opt_new();
    nextTasks = v14->_nextTasks;
    v14->_nextTasks = v15;
  }

  return v14;
}

- (id)_getNextTaskForExperiment:(id)a3 taskContext:(id)a4 taskQueue:(id)a5
{
  *&v59[5] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 experimentDeployment];

  if (!v12)
  {
    v51 = [MEMORY[0x277CCA890] currentHandler];
    [v51 handleFailureInMethod:a2 object:self file:@"TRIFetchMultipleExperimentNotificationsTask.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"artifact.experimentDeployment"}];
  }

  v13 = [v9 experimentId];

  if (!v13)
  {
    v52 = [MEMORY[0x277CCA890] currentHandler];
    [v52 handleFailureInMethod:a2 object:self file:@"TRIFetchMultipleExperimentNotificationsTask.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"artifact.experimentId"}];
  }

  v14 = [v10 experimentDatabase];
  v15 = [v9 experimentType];
  v16 = 0;
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v31 = TRILogCategory_Server();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v9 experimentDeployment];
        v33 = [v32 experimentId];
        *buf = 138543362;
        *v59 = v33;
        _os_log_impl(&dword_26F567000, v31, OS_LOG_TYPE_DEFAULT, "rolling back experiment id: %{public}@", buf, 0xCu);
      }

      v34 = [v9 experimentDeployment];

      if (v34)
      {
        v35 = [v9 experimentId];
        [v11 cancelTasksWithTag:v35];

        v36 = [v9 experimentDeployment];
        v37 = [v36 taskTag];

        if (!v37)
        {
          v53 = [MEMORY[0x277CCA890] currentHandler];
          [v53 handleFailureInMethod:a2 object:self file:@"TRIFetchMultipleExperimentNotificationsTask.m" lineNumber:179 description:{@"Expression was unexpectedly nil/false: %@", @"artifact.experimentDeployment.taskTag"}];
        }

        [v11 cancelTasksWithTag:v37];

        v38 = [v9 experimentId];
        v16 = +[TRIDeactivateTreatmentTask taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:](TRIDeactivateTreatmentTask, "taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:", v38, [v9 deploymentId], 0, 4, self->_taskAttributing);

        nextTasks = self->_nextTasks;
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __95__TRIFetchMultipleExperimentNotificationsTask__getNextTaskForExperiment_taskContext_taskQueue___block_invoke;
        v56[3] = &unk_279DE42E8;
        v57 = v9;
        v40 = [(NSMutableArray *)nextTasks _pas_filteredArrayWithTest:v56];
        v41 = [v40 mutableCopy];
        v42 = self->_nextTasks;
        self->_nextTasks = v41;

        v21 = v57;
        goto LABEL_26;
      }

      v21 = TRILogCategory_Server();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v43 = "Unable to rollback because the artifact contains no deployment";
      goto LABEL_40;
    }

    if (v15 != 3)
    {
      if (v15 != 5)
      {
        goto LABEL_27;
      }

      v17 = [v9 experiment];

      if (v17)
      {
        v18 = [v9 experiment];
        v19 = [v18 hasEndDate];

        if (v19)
        {
          if ([v9 experimentState])
          {
            v20 = [v9 experimentDeployment];
            v21 = [v14 experimentRecordWithExperimentDeployment:v20];

            if (v21)
            {
              v55 = [[TRIExperimentUpdateProcessor alloc] initWithExperimentDatabase:v14];
              v22 = [v9 experiment];
              v23 = [v22 endDate];
              v24 = [v23 date];

              if (!v24)
              {
                v54 = [MEMORY[0x277CCA890] currentHandler];
                [v54 handleFailureInMethod:a2 object:self file:@"TRIFetchMultipleExperimentNotificationsTask.m" lineNumber:222 description:{@"Expression was unexpectedly nil/false: %@", @"artifact.experiment.endDate.date"}];
              }

              v25 = [v9 experimentDeployment];
              v16 = [(TRIExperimentUpdateProcessor *)v55 processUpdateOperationForExistingExperimentWithEndDate:v24 withExperimentDeployment:v25];

              if (v16)
              {
                v26 = v16;
              }

              goto LABEL_26;
            }

            v48 = TRILogCategory_Server();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v49 = [v9 experimentDeployment];
              v50 = [v49 experimentId];
              *buf = 138543362;
              *v59 = v50;
              _os_log_error_impl(&dword_26F567000, v48, OS_LOG_TYPE_ERROR, "Missing existing experiment for an experiment update, ignoring. ID: %{public}@", buf, 0xCu);
            }

            v21 = 0;
            goto LABEL_25;
          }

          v21 = TRILogCategory_Server();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v44 = [v9 experimentDeployment];
            v45 = [v44 experimentId];
            *buf = 138543362;
            *v59 = v45;
            _os_log_impl(&dword_26F567000, v21, OS_LOG_TYPE_INFO, "Update notification marked inactive, ignoring. ID: %{public}@", buf, 0xCu);
            goto LABEL_45;
          }
        }

        else
        {
          v21 = TRILogCategory_Server();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v44 = [v9 experimentDeployment];
            v45 = [v44 experimentId];
            *buf = 138543362;
            *v59 = v45;
            _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Experiment update notification missing end date. ID: %{public}@", buf, 0xCu);
LABEL_45:
          }
        }

LABEL_25:
        v16 = 0;
        goto LABEL_26;
      }

      v21 = TRILogCategory_Server();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v43 = "Experiment update notification missing artifact";
LABEL_40:
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, v43, buf, 2u);
      goto LABEL_25;
    }

LABEL_23:
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v46 = [v9 experimentType];
      v47 = [v9 experimentId];
      *buf = 67240450;
      v59[0] = v46;
      LOWORD(v59[1]) = 2114;
      *(&v59[1] + 2) = v47;
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "unsupported experiment of type %{public}d for experiment id: %{public}@", buf, 0x12u);
    }

    goto LABEL_25;
  }

  if (!v15)
  {
    goto LABEL_23;
  }

  if (v15 != 1)
  {
    goto LABEL_27;
  }

  v27 = TRILogCategory_Server();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v9 experimentId];
    *buf = 138543362;
    *v59 = v28;
    _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "submit targeting task for experiment id: %{public}@", buf, 0xCu);
  }

  v21 = [v9 experimentDeployment];
  v16 = [TRITargetingTask taskWithExperiment:v21 includeDependencies:0 taskAttribution:self->_taskAttributing];
LABEL_26:

LABEL_27:
  v29 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __95__TRIFetchMultipleExperimentNotificationsTask__getNextTaskForExperiment_taskContext_taskQueue___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 experiment], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "experimentDeployment"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqualToDeployment:", v5), v5, v4, v6))
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) experimentId];
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Clearing out targeting task due to found rollback for %{public}@", &v12, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_processExperiment:(id)a3 taskContext:(id)a4 taskQueue:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 experimentDatabase];
  v11 = [v8 namespaceDatabase];
  v12 = [v8 paths];
  v13 = [v7 experimentDeployment];
  v14 = 0;
  if ([v7 hasDeploymentId])
  {
    if (v13)
    {
      v15 = [v10 experimentRecordWithExperimentDeployment:v13];
      v14 = v15;
      if (v15)
      {
        if ([v15 isManuallyTargeted])
        {
          v16 = TRILogCategory_Server();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v51 = v13;
            _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Found existing manually targeted experiment record for %{public}@. Not processing this experiment notification", buf, 0xCu);
          }

          v17 = 0;
          goto LABEL_44;
        }
      }
    }
  }

  v42 = v13;
  v43 = v12;
  v44 = v10;
  v18 = [v7 experimentType];
  v19 = [v7 experimentType];
  v20 = [v7 encodedExperimentDefinition];
  if (v20)
  {
    v21 = [v7 encodedExperimentDefinition];
    v22 = [v21 length] != 0;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v7 experimentId];
  if (v23)
  {
    v24 = v18 == 2 || v22;

    if (v24)
    {
      if (v18 != 2 && v19 != 5 && ([v7 saveWithDatabase:v44 paths:v43] & 1) == 0)
      {
        v16 = TRILogCategory_Server();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v38 = -[TRIFetchMultipleExperimentNotificationsTask _nameForNotificationType:](self, "_nameForNotificationType:", [v7 experimentType]);
          v39 = [v7 experimentId];
          *buf = 138543618;
          v51 = v38;
          v52 = 2114;
          v53 = v39;
          _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Unable to save %{public}@ with id %{public}@.", buf, 0x16u);
        }

        v17 = 0;
LABEL_37:
        v12 = v43;
        v10 = v44;
        v13 = v42;
        goto LABEL_44;
      }

LABEL_23:
      v25 = [v7 namespaces];

      if (v25)
      {
        v40 = v9;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v26 = [v7 namespaces];
        v27 = [v26 countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v46;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v46 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v45 + 1) + 8 * i);
              v32 = [v11 dynamicNamespaceRecordWithNamespaceName:v31];

              if (v32)
              {
                [v11 setFetched:1 forDynamicNamespaceName:v31];
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v45 objects:v49 count:16];
          }

          while (v28);
        }

        v9 = v40;
      }

      v16 = [(TRIFetchMultipleExperimentNotificationsTask *)self _getNextTaskForExperiment:v7 taskContext:v8 taskQueue:v9];
      if (v16)
      {
        [(TRIFetchMultipleExperimentNotificationsTask *)self _addNextTask:v16];
      }

      v17 = 1;
      goto LABEL_37;
    }

    if (v19 == 5)
    {
      goto LABEL_23;
    }
  }

  v33 = [v7 experimentType];
  v34 = TRILogCategory_Server();
  v16 = v34;
  if (v33 == 3)
  {
    v13 = v42;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Unable to process deprecated rollout V1 experiment artifact", buf, 2u);
    }
  }

  else
  {
    v13 = v42;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = -[TRIFetchMultipleExperimentNotificationsTask _nameForNotificationType:](self, "_nameForNotificationType:", [v7 experimentType]);
      *buf = 138543362;
      v51 = v35;
      _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "empty %{public}@", buf, 0xCu);
    }
  }

  v17 = 0;
  v12 = v43;
  v10 = v44;
LABEL_44:

  v36 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)updateStatusForNamespacesWithContext:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = self->_namespaceNames;
  v27 = [(NSSet *)v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v27)
  {
    v26 = *v29;
    *&v7 = 138543362;
    v24 = v7;
    v25 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        v10 = [v4 namespaceDatabase];
        v11 = [v10 dynamicNamespaceRecordWithNamespaceName:v9];

        v12 = [v4 paths];
        if (v12)
        {
          v13 = [objc_alloc(MEMORY[0x277D73788]) initWithPaths:v12];
          v14 = [v13 statusForNamespaceWithName:v9];
          if (v14)
          {
            v15 = v14;
            v16 = [v14 copyWithReplacementLastFetchAttempt:v5];

            v17 = [v16 copyWithReplacementLastFetchWasSuccess:1];
          }

          else
          {
            v19 = v5;
            v20 = MEMORY[0x277D73750];
            v21 = [v12 namespaceDescriptorsDefaultDir];
            v16 = [v20 loadWithNamespaceName:v9 fromDirectory:v21];

            if (!(v16 | v11))
            {
              v17 = TRILogCategory_Server();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = v24;
                v33 = v9;
                _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "expected namespace to be registered, but could not find descriptor: %{public}@", buf, 0xCu);
              }

              v5 = v19;
              v6 = v25;
              goto LABEL_20;
            }

            if (v16)
            {
              v22 = [v16 downloadNCV];
            }

            else
            {
              v22 = [v11 compatibilityVersion];
            }

            v5 = v19;
            v17 = [objc_alloc(MEMORY[0x277D73780]) initWithNamespaceName:v9 compatibilityVersion:v22 lastFetchAttempt:v19 lastFetchWasSuccess:1];
            v6 = v25;
          }

          [v13 saveStatus:v17];
        }

        else
        {
          v13 = TRILogCategory_Server();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_21;
          }

          v17 = [v11 appContainer];
          v18 = [v17 identifier];
          *buf = v24;
          v33 = v18;
          _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "updateStatusForNamespacesWithContext skipping missing app container: %{public}@", buf, 0xCu);
        }

LABEL_20:

LABEL_21:
        ++v8;
      }

      while (v27 != v8);
      v27 = [(NSSet *)v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v27);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)_checkIfAnyTreatmentPresent:(id)a3 usingContext:(id)a4
{
  v5 = MEMORY[0x277D73760];
  v6 = a3;
  v7 = [a4 paths];
  v8 = [v5 factorProviderWithPaths:v7 namespaceName:v6];

  LOBYTE(v7) = [v8 hasAnyTreatmentInLayers:39];
  return v7;
}

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v108 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![TRIUserAdjustableSettings getExperimentOptOut:v6])
  {
    v10 = self;
    objc_sync_enter(v10);
    v55 = os_transaction_create();
    v11 = [v6 keyValueStore];
    v61 = [TRIFetchDateManager managerWithKeyValueStore:v11];

    v12 = [v6 namespaceDatabase];
    v13 = [v6 paths];
    v14 = [v13 namespaceDescriptorsDefaultDir];
    v60 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:v12 defaultDescriptorDirectoryPath:v14];

    v15 = [(TRITaskAttributing *)v10->_taskAttributing triCloudKitContainer];
    v16 = [(TRITaskAttributing *)v10->_taskAttributing teamIdentifier];
    v17 = [(TRITaskAttributing *)v10->_taskAttributing applicationBundleIdentifier];
    v56 = [TRICKNativeArtifactProvider providerForContainer:v15 teamId:v16 bundleId:v17 dateProvider:v61 namespaceDescriptorProvider:v60 serverContext:v6];

    v62 = [(TRITaskAttributing *)v10->_taskAttributing networkOptions];
    v18 = v56;
    if ([v62 allowsCellularAccess])
    {
      v19 = [MEMORY[0x277D73B40] metricWithName:@"allows_cellular_download" integerValue:{objc_msgSend(v62, "allowsCellularAccess")}];
      [(TRIFetchMultipleExperimentNotificationsTask *)v10 _addMetric:v19];
    }

    if ([v62 discretionaryBehavior])
    {
      v20 = [(TRIBaseTask *)v10 stateProvider];
      v21 = [v20 activeActivityGrantingCapability:{objc_msgSend(v62, "requiredCapability")}];

      if (!v21)
      {
        v42 = TRILogCategory_Server();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F567000, v42, OS_LOG_TYPE_DEFAULT, "no xpc activity designated for discretionary operation, failing with retry", buf, 2u);
        }

        v43 = [(NSMutableArray *)v10->_nextTasks copy];
        v9 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:v43 earliestRetryDate:0];
        goto LABEL_60;
      }

      [v62 setActivity:v21];
    }

    v58 = [[TRIFetchOptions alloc] initWithDownloadOptions:v62 cacheDeleteAvailableSpaceClass:&unk_287FC4CD8];
    v22 = dispatch_semaphore_create(0);
    *buf = 0;
    v98 = buf;
    v99 = 0x3032000000;
    v100 = __Block_byref_object_copy__49;
    v101 = __Block_byref_object_dispose__49;
    v102 = 0;
    v93 = 0;
    v94 = &v93;
    v95 = 0x2020000000;
    v96 = 0;
    v89 = 0;
    v90 = &v89;
    v91 = 0x2020000000;
    v92 = 0;
    v83 = 0;
    v84 = &v83;
    v85 = 0x3032000000;
    v86 = __Block_byref_object_copy__49;
    v87 = __Block_byref_object_dispose__49;
    v88 = 0;
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __77__TRIFetchMultipleExperimentNotificationsTask_runUsingContext_withTaskQueue___block_invoke;
    v75[3] = &unk_279DE4310;
    v80 = &v83;
    v81 = buf;
    v79 = &v93;
    v75[4] = v10;
    v23 = v6;
    v76 = v23;
    v77 = v7;
    v82 = &v89;
    dsema = v22;
    v78 = dsema;
    v59 = MEMORY[0x2743948D0](v75);
    v54 = [v23 xpcActivityManager];
    v24 = [v23 limitedCarryManager];

    if (v24)
    {
      if (!v10->_rollbacksOnly)
      {
        v25 = [v23 limitedCarryManager];
        [v56 fetchExperimentNotificationsForLimitedCarryExperimentWithManager:v25 options:v58 rollbacksOnly:0 completion:v59];

        dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
      }

      v26 = [v23 limitedCarryManager];
      [v56 fetchExperimentNotificationsForLimitedCarryExperimentWithManager:v26 options:v58 rollbacksOnly:1 completion:v59];

      dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
      if (v10->_limitedCarryOnly)
      {
        v27 = *(v94 + 6);
        if (v27 == 2)
        {
          [v54 postponeCellularActivity];
          v27 = *(v94 + 6);
        }

        v28 = [(NSMutableArray *)v10->_nextTasks copy];
        v29 = [TRITaskRunResult resultWithRunStatus:v27 reportResultToServer:1 nextTasks:v28 earliestRetryDate:*(v98 + 5)];
        goto LABEL_59;
      }
    }

    else
    {
      v30 = TRILogCategory_Server();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v52 = [v23 limitedCarryManager];
        *v106 = 138543362;
        v107 = v52;
        _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Unable to fetch limited carry experiments as limitedCarryManager is: %{public}@", v106, 0xCu);
      }
    }

    [v56 fetchExperimentNotificationsWithNamespaceNames:v10->_namespaceNames rollbacksOnly:v10->_rollbacksOnly lastFetchDateOverride:v10->_startingFetchDateOverride options:v58 completion:v59];
    dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
    if (v84[5])
    {
      v10->wasDeferred = [TRICKNativeArtifactProvider isActivityDeferralError:?];
      v31 = TRIFetchErrorParseToMetrics(v84[5]);
      if ([v31 count])
      {
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v32 = v31;
        v33 = [v32 countByEnumeratingWithState:&v71 objects:v105 count:16];
        if (v33)
        {
          v34 = *v72;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v72 != v34)
              {
                objc_enumerationMutation(v32);
              }

              [(TRIFetchMultipleExperimentNotificationsTask *)v10 _addMetric:*(*(&v71 + 1) + 8 * i)];
            }

            v33 = [v32 countByEnumeratingWithState:&v71 objects:v105 count:16];
          }

          while (v33);
        }

        v18 = v56;
      }
    }

    v36 = *(v94 + 6);
    if (v36 == 3)
    {
      namespaceNames = v10->_namespaceNames;
      if (!namespaceNames)
      {
LABEL_58:
        v49 = *(v94 + 6);
        v28 = [(NSMutableArray *)v10->_nextTasks copy];
        v29 = [TRITaskRunResult resultWithRunStatus:v49 reportResultToServer:1 nextTasks:v28 earliestRetryDate:*(v98 + 5)];
LABEL_59:
        v9 = v29;

        _Block_object_dispose(&v83, 8);
        _Block_object_dispose(&v89, 8);
        _Block_object_dispose(&v93, 8);
        _Block_object_dispose(buf, 8);

        v43 = v58;
LABEL_60:

        objc_sync_exit(v10);
        goto LABEL_61;
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v37 = namespaceNames;
      v45 = [(NSSet *)v37 countByEnumeratingWithState:&v63 objects:v103 count:16];
      if (!v45)
      {
LABEL_57:

        goto LABEL_58;
      }

      v53 = v7;
      v46 = *v64;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v64 != v46)
          {
            objc_enumerationMutation(v37);
          }

          v48 = *(*(&v63 + 1) + 8 * j);
          [MEMORY[0x277D73788] updateStatusFetchSuccess:0 forNamespaceName:v48 withContext:{v23, v53}];
          [MEMORY[0x277D73698] notifyDownloadFailedForKey:v48 withError:0];
        }

        v45 = [(NSSet *)v37 countByEnumeratingWithState:&v63 objects:v103 count:16];
      }

      while (v45);
    }

    else
    {
      if (v36 != 2)
      {
        goto LABEL_58;
      }

      [v54 postponeCellularActivity];
      [(TRIFetchMultipleExperimentNotificationsTask *)v10 updateStatusForNamespacesWithContext:v23];
      if (v90[3])
      {
        goto LABEL_58;
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v37 = v10->_namespaceNames;
      v38 = [(NSSet *)v37 countByEnumeratingWithState:&v67 objects:v104 count:16];
      if (!v38)
      {
        goto LABEL_57;
      }

      v53 = v7;
      v39 = *v68;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v68 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v67 + 1) + 8 * k);
          if ([(TRIFetchMultipleExperimentNotificationsTask *)v10 _checkIfAnyTreatmentPresent:v41 usingContext:v23, v53])
          {
            [MEMORY[0x277D73698] notifyDownloadCompletedForKey:v41];
          }

          else
          {
            [MEMORY[0x277D73788] updateStatusFetchSuccess:0 forNamespaceName:v41 withContext:v23];
            [MEMORY[0x277D73698] notifyDownloadFailedForKey:v41 withError:0];
          }
        }

        v38 = [(NSSet *)v37 countByEnumeratingWithState:&v67 objects:v104 count:16];
      }

      while (v38);
    }

    v7 = v53;
    v18 = v56;
    goto LABEL_57;
  }

  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Skipping scheduled fetch of experiment notifications due to user opt-out of experiments", buf, 2u);
  }

  v9 = [TRITaskRunResult resultWithRunStatus:4 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
LABEL_61:

  v50 = *MEMORY[0x277D85DE8];

  return v9;
}

void __77__TRIFetchMultipleExperimentNotificationsTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 == 2)
  {
    v12 = *(*(a1 + 64) + 8);
    if (v10)
    {
      *(v12 + 24) = 1;
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), a4);
LABEL_7:
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), a5);
      goto LABEL_8;
    }

LABEL_6:
    *(v12 + 24) = 3;
    goto LABEL_7;
  }

  if (!a2)
  {
    v12 = *(*(a1 + 64) + 8);
    goto LABEL_6;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v9);
        }

        [*(a1 + 32) _processExperiment:*(*(&v20 + 1) + 8 * v17) taskContext:*(a1 + 40) taskQueue:*(a1 + 48)];
        ++*(*(*(a1 + 88) + 8) + 24);
        ++v17;
      }

      while (v15 != v17);
      v15 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  if (a2 == 4 && v9)
  {
    if (![v9 count])
    {
      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEFAULT, "Fetch status success but 0 results fetched.", v19, 2u);
      }
    }

    *(*(*(a1 + 64) + 8) + 24) = 2;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 2;
    if (a2 == 3)
    {
      goto LABEL_9;
    }
  }

LABEL_8:
  dispatch_semaphore_signal(*(a1 + 56));
LABEL_9:

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = TRIFetchMultipleExperimentNotificationsTask;
    if ([(TRIBaseTask *)&v14 isEqual:v4])
    {
      v5 = v4;
      if (![(TRITaskAttributing *)self->_taskAttributing isEqual:v5->_taskAttributing])
      {
        goto LABEL_19;
      }

      startingFetchDateOverride = self->_startingFetchDateOverride;
      if (startingFetchDateOverride | v5->_startingFetchDateOverride)
      {
        if (![(NSDate *)startingFetchDateOverride isEqual:?])
        {
          goto LABEL_19;
        }
      }

      v7 = self->_namespaceNames;
      v8 = v5->_namespaceNames;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        if (v7)
        {
          v10 = v8 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {

          goto LABEL_19;
        }

        v12 = [(NSSet *)v7 isEqualToSet:v8];

        if (!v12)
        {
          goto LABEL_19;
        }
      }

      if (self->_rollbacksOnly == v5->_rollbacksOnly)
      {
        v11 = self->_limitedCarryOnly == v5->_limitedCarryOnly;
LABEL_20:

        goto LABEL_21;
      }

LABEL_19:
      v11 = 0;
      goto LABEL_20;
    }

    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = TRIFetchMultipleExperimentNotificationsTask;
  v3 = [(TRIBaseTask *)&v8 hash];
  startingFetchDateOverride = self->_startingFetchDateOverride;
  if (startingFetchDateOverride)
  {
    v5 = [(NSDate *)startingFetchDateOverride hash];
  }

  else
  {
    v5 = 0;
  }

  namespaceNames = self->_namespaceNames;
  if (namespaceNames)
  {
    namespaceNames = [(NSSet *)namespaceNames hash];
  }

  return self->_limitedCarryOnly + 37 * (self->_rollbacksOnly + 37 * (namespaceNames + 1369 * v3 + 37 * v5));
}

- (void)_addMetric:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  metrics = v4->_metrics;
  if (!metrics)
  {
    v6 = objc_opt_new();
    v7 = v4->_metrics;
    v4->_metrics = v6;

    metrics = v4->_metrics;
  }

  [(NSMutableArray *)metrics addObject:v8];
  objc_sync_exit(v4);
}

- (void)_addDimension:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  dimensions = v4->_dimensions;
  if (!dimensions)
  {
    v6 = objc_opt_new();
    v7 = v4->_dimensions;
    v4->_dimensions = v6;

    dimensions = v4->_dimensions;
  }

  [(NSMutableArray *)dimensions addObject:v8];
  objc_sync_exit(v4);
}

- (id)metrics
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_metrics copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)dimensions
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_dimensions copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  v4 = [(TRITaskAttributing *)self->_taskAttributing asPersistedTaskAttribution];
  [v3 setTaskAttribution:v4];

  if (self->_startingFetchDateOverride)
  {
    v5 = [objc_alloc(MEMORY[0x277D73B88]) initWithDate:self->_startingFetchDateOverride];
    [v3 setEarliestTimestamp:v5];
  }

  if ([(NSSet *)self->_namespaceNames count])
  {
    v6 = [(NSSet *)self->_namespaceNames allObjects];
    v7 = [v6 mutableCopy];
    [v3 setNamespacesArray:v7];
  }

  [v3 setRollbacksOnly:self->_rollbacksOnly];
  [v3 setLimitedCarryOnly:self->_limitedCarryOnly];
  [v3 setRetryCount:{-[TRIFetchMultipleExperimentNotificationsTask retryCount](self, "retryCount")}];

  return v3;
}

- (id)serialize
{
  v4 = [(TRIFetchMultipleExperimentNotificationsTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRIFetchMultipleExperimentNotificationsTask.m" lineNumber:617 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v4 = [(TRIPBMessage *)TRIFetchExperimentNotificationsPersistedTask parseFromData:a3 error:&v24];
  v5 = v24;
  if (!v4)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v5;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIFetchExperimentNotificationsPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (([v4 hasRollbacksOnly] & 1) == 0)
  {
    v7 = TRILogCategory_Server();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138412290;
    v26 = v11;
    v12 = "Cannot decode message of type %@ with missing field: rollbacksOnly";
LABEL_32:
    _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);

    goto LABEL_12;
  }

  if (([v4 hasTaskAttribution] & 1) == 0)
  {
    v7 = TRILogCategory_Server();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v23 = objc_opt_class();
    v11 = NSStringFromClass(v23);
    *buf = 138412290;
    v26 = v11;
    v12 = "Cannot decode message of type %@ with missing field: taskAttribution";
    goto LABEL_32;
  }

  v6 = [v4 taskAttribution];
  v7 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:v6];

  if (v7)
  {
    if ([v4 hasEarliestTimestamp])
    {
      v8 = [v4 earliestTimestamp];
      v9 = [v8 date];
    }

    else
    {
      v9 = 0;
    }

    if ([v4 namespacesArray_Count])
    {
      v16 = objc_alloc(MEMORY[0x277CBEB98]);
      v17 = [v4 namespacesArray];
      v18 = [v16 initWithArray:v17];
    }

    else
    {
      v18 = 0;
    }

    v19 = [a1 alloc];
    v20 = [v4 rollbacksOnly];
    if ([v4 limitedCarryOnly])
    {
      v21 = [v4 limitedCarryOnly];
    }

    else
    {
      v21 = 0;
    }

    v13 = [v19 initWithStartingFetchDateOverride:v9 namespaceNames:v18 taskAttributing:v7 rollbacksOnly:v20 limitedCarryOnly:v21];
    if ([v4 hasRetryCount])
    {
      v22 = [v4 retryCount];
    }

    else
    {
      v22 = 0;
    }

    [v13 setRetryCount:v22];
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
    }

    v13 = 0;
  }

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (unint64_t)requiredCapabilities
{
  if (self->_rollbacksOnly)
  {
    v3 = 2;
  }

  else
  {
    v4 = [(TRITaskAttributing *)self->_taskAttributing networkOptions];
    v3 = [v4 requiredCapability];
  }

  if ([(TRIFetchMultipleExperimentNotificationsTask *)self retryCount])
  {
    return v3 | 4;
  }

  else
  {
    return v3;
  }
}

- (TRIFetchMultipleExperimentNotificationsTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIFetchMultipleExperimentNotificationsTask;
  v5 = [(TRIFetchMultipleExperimentNotificationsTask *)&v9 init];
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
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFetchMultipleExperimentNotificationsTask.m" lineNumber:664 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRIFetchMultipleExperimentNotificationsTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end