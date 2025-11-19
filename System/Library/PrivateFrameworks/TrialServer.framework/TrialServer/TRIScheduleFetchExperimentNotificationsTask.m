@interface TRIScheduleFetchExperimentNotificationsTask
+ (id)parseFromData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TRIScheduleFetchExperimentNotificationsTask)initWithCoder:(id)a3;
- (TRIScheduleFetchExperimentNotificationsTask)initWithRollbacksOnly:(BOOL)a3 downloadOptions:(id)a4;
- (id)_asPersistedTask;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIScheduleFetchExperimentNotificationsTask

- (TRIScheduleFetchExperimentNotificationsTask)initWithRollbacksOnly:(BOOL)a3 downloadOptions:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TRIScheduleFetchExperimentNotificationsTask;
  v8 = [(TRIScheduleFetchExperimentNotificationsTask *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_rollbacksOnly = a3;
    objc_storeStrong(&v8->_options, a4);
  }

  return v9;
}

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277D737A8] callerBundleId];
  v8 = [[TRITaskAttributionInternalInsecure alloc] initWithTeamIdentifier:0 triCloudKitContainer:1 applicationBundleIdentifier:v7 networkOptions:self->_options];
  v49 = v6;
  if ([TRIUserAdjustableSettings getExperimentOptOut:v6])
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "Skipping scheduling of experiment notification fetch task due to user opt-out of experiments", buf, 2u);
    }

    v10 = objc_opt_new();
    nextTasks = self->_nextTasks;
    self->_nextTasks = v10;

    if (!self->_rollbacksOnly)
    {
      v12 = self->_nextTasks;
      v13 = [TRISelectRolloutNotificationListTask taskWithNamespaceNames:0 taskAttribution:v8];
      [(NSMutableArray *)v12 addObject:v13];
    }

    v14 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:1 nextTasks:self->_nextTasks earliestRetryDate:0];
  }

  else
  {
    v15 = objc_opt_new();
    v16 = self->_nextTasks;
    self->_nextTasks = v15;

    v17 = self->_nextTasks;
    v18 = [TRIFetchMultipleExperimentNotificationsTask taskWithStartingFetchDateOverride:0 namespaceNames:0 taskAttributing:v8 rollbacksOnly:self->_rollbacksOnly limitedCarryOnly:0];
    [(NSMutableArray *)v17 addObject:v18];

    if (!self->_rollbacksOnly)
    {
      v19 = self->_nextTasks;
      v20 = [TRISelectRolloutNotificationListTask taskWithNamespaceNames:0 taskAttribution:v8];
      [(NSMutableArray *)v19 addObject:v20];
    }

    v21 = objc_opt_new();
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __77__TRIScheduleFetchExperimentNotificationsTask_runUsingContext_withTaskQueue___block_invoke;
    v54[3] = &unk_279DE4D88;
    v22 = v21;
    v55 = v22;
    v56 = self;
    v23 = MEMORY[0x2743948D0](v54);
    v24 = [v49 namespaceDatabase];
    v25 = [v24 enumerateAppContainerIdsForContainer:2 block:v23];

    if (v25)
    {
      v47 = v23;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = [v22 allValues];
      v26 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v26)
      {
        v27 = v26;
        v43 = a2;
        v44 = v22;
        v45 = v8;
        v46 = v7;
        v28 = *v51;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v51 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v50 + 1) + 8 * i);
            v31 = [v49 namespaceDatabase];
            v32 = [v30 teamIdentifier];
            if (!v32)
            {
              v38 = [MEMORY[0x277CCA890] currentHandler];
              [v38 handleFailureInMethod:v43 object:self file:@"TRIScheduleFetchExperimentNotificationsTask.m" lineNumber:104 description:{@"Expression was unexpectedly nil/false: %@", @"taskAttributing.teamIdentifier"}];
            }

            v33 = [v31 hasUnfetchedNamespaceForTeamId:v32];

            rollbacksOnly = self->_rollbacksOnly;
            if (rollbacksOnly || v33)
            {
              v35 = [MEMORY[0x277CBEAA8] distantPast];
              rollbacksOnly = self->_rollbacksOnly;
            }

            else
            {
              v35 = 0;
            }

            v36 = self->_nextTasks;
            v37 = [TRIFetchMultipleExperimentNotificationsTask taskWithStartingFetchDateOverride:v35 namespaceNames:0 taskAttributing:v30 rollbacksOnly:rollbacksOnly limitedCarryOnly:0];
            [(NSMutableArray *)v36 addObject:v37];
          }

          v27 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
        }

        while (v27);
        v39 = 2;
        v8 = v45;
        v7 = v46;
        v22 = v44;
      }

      else
      {
        v39 = 2;
      }

      v23 = v47;
    }

    else
    {
      obj = TRILogCategory_Server();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, obj, OS_LOG_TYPE_ERROR, "failed to schedule fetching experiments for all containers", buf, 2u);
      }

      v39 = 3;
    }

    v40 = [(NSMutableArray *)self->_nextTasks copy];
    v14 = [TRITaskRunResult resultWithRunStatus:v39 reportResultToServer:1 nextTasks:v40 earliestRetryDate:0];
  }

  v41 = *MEMORY[0x277D85DE8];

  return v14;
}

void __77__TRIScheduleFetchExperimentNotificationsTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v12 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v9 = v8;
  if (!v8 || ([v8 applicationBundleIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v10, a4 == 2) && !v10)
  {
    v11 = [[TRITaskAttributionInternalInsecure alloc] initWithTeamIdentifier:v7 triCloudKitContainer:2 applicationBundleIdentifier:v12 networkOptions:*(*(a1 + 40) + 40)];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v7];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TRIScheduleFetchExperimentNotificationsTask;
  if ([(TRIBaseTask *)&v7 isEqual:v4]&& self->_rollbacksOnly == *(v4 + 24))
  {
    v5 = [(TRIDownloadOptions *)self->_options isEqual:v4[5]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = TRIScheduleFetchExperimentNotificationsTask;
  return self->_rollbacksOnly + 37 * [(TRIBaseTask *)&v3 hash];
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  [v3 setRollbacksOnly:self->_rollbacksOnly];
  v4 = [(TRIDownloadOptions *)self->_options serializeToPersistedBehavior];
  [v3 setNetworkBehavior:v4];

  return v3;
}

- (id)serialize
{
  v4 = [(TRIScheduleFetchExperimentNotificationsTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRIScheduleFetchExperimentNotificationsTask.m" lineNumber:160 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = [(TRIPBMessage *)TRIScheduleFetchExperimentNotificationsPersistedTask parseFromData:a3 error:&v12];
  v4 = v12;
  if (!v3)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v4;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIScheduleFetchExperimentNotificationsPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (([v3 hasRollbacksOnly] & 1) == 0)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412290;
      v14 = v11;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: rollbacksOnly", buf, 0xCu);
    }

LABEL_11:
    v7 = 0;
    goto LABEL_15;
  }

  if ([v3 hasNetworkBehavior])
  {
    v5 = [v3 networkBehavior];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277D736A0]) initFromPersistedBehavior:v5];
      if (v6)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277D736A0] inexpensiveOptions];
LABEL_14:
  v7 = +[TRIScheduleFetchExperimentNotificationsTask taskWithRollbacksOnly:downloadOptions:](TRIScheduleFetchExperimentNotificationsTask, "taskWithRollbacksOnly:downloadOptions:", [v3 rollbacksOnly], v6);

LABEL_15:
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (TRIScheduleFetchExperimentNotificationsTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIScheduleFetchExperimentNotificationsTask;
  v5 = [(TRIScheduleFetchExperimentNotificationsTask *)&v9 init];
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
    [v6 handleFailureInMethod:a2 object:self file:@"TRIScheduleFetchExperimentNotificationsTask.m" lineNumber:185 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRIScheduleFetchExperimentNotificationsTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end