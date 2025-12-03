@interface TRIScheduleFetchExperimentNotificationsTask
+ (id)parseFromData:(id)data;
- (BOOL)isEqual:(id)equal;
- (TRIScheduleFetchExperimentNotificationsTask)initWithCoder:(id)coder;
- (TRIScheduleFetchExperimentNotificationsTask)initWithRollbacksOnly:(BOOL)only downloadOptions:(id)options;
- (id)_asPersistedTask;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIScheduleFetchExperimentNotificationsTask

- (TRIScheduleFetchExperimentNotificationsTask)initWithRollbacksOnly:(BOOL)only downloadOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = TRIScheduleFetchExperimentNotificationsTask;
  v8 = [(TRIScheduleFetchExperimentNotificationsTask *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_rollbacksOnly = only;
    objc_storeStrong(&v8->_options, options);
  }

  return v9;
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  v59 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  callerBundleId = [MEMORY[0x277D737A8] callerBundleId];
  v8 = [[TRITaskAttributionInternalInsecure alloc] initWithTeamIdentifier:0 triCloudKitContainer:1 applicationBundleIdentifier:callerBundleId networkOptions:self->_options];
  v49 = contextCopy;
  if ([TRIUserAdjustableSettings getExperimentOptOut:contextCopy])
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
    selfCopy = self;
    v23 = MEMORY[0x2743948D0](v54);
    namespaceDatabase = [v49 namespaceDatabase];
    v25 = [namespaceDatabase enumerateAppContainerIdsForContainer:2 block:v23];

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
        v46 = callerBundleId;
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
            namespaceDatabase2 = [v49 namespaceDatabase];
            teamIdentifier = [v30 teamIdentifier];
            if (!teamIdentifier)
            {
              currentHandler = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler handleFailureInMethod:v43 object:self file:@"TRIScheduleFetchExperimentNotificationsTask.m" lineNumber:104 description:{@"Expression was unexpectedly nil/false: %@", @"taskAttributing.teamIdentifier"}];
            }

            v33 = [namespaceDatabase2 hasUnfetchedNamespaceForTeamId:teamIdentifier];

            rollbacksOnly = self->_rollbacksOnly;
            if (rollbacksOnly || v33)
            {
              distantPast = [MEMORY[0x277CBEAA8] distantPast];
              rollbacksOnly = self->_rollbacksOnly;
            }

            else
            {
              distantPast = 0;
            }

            v36 = self->_nextTasks;
            v37 = [TRIFetchMultipleExperimentNotificationsTask taskWithStartingFetchDateOverride:distantPast namespaceNames:0 taskAttributing:v30 rollbacksOnly:rollbacksOnly limitedCarryOnly:0];
            [(NSMutableArray *)v36 addObject:v37];
          }

          v27 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
        }

        while (v27);
        v39 = 2;
        v8 = v45;
        callerBundleId = v46;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = TRIScheduleFetchExperimentNotificationsTask;
  if ([(TRIBaseTask *)&v7 isEqual:equalCopy]&& self->_rollbacksOnly == *(equalCopy + 24))
  {
    v5 = [(TRIDownloadOptions *)self->_options isEqual:equalCopy[5]];
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
  serializeToPersistedBehavior = [(TRIDownloadOptions *)self->_options serializeToPersistedBehavior];
  [v3 setNetworkBehavior:serializeToPersistedBehavior];

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRIScheduleFetchExperimentNotificationsTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIScheduleFetchExperimentNotificationsTask.m" lineNumber:160 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = [(TRIPBMessage *)TRIScheduleFetchExperimentNotificationsPersistedTask parseFromData:data error:&v12];
  v4 = v12;
  if (!v3)
  {
    networkBehavior = TRILogCategory_Server();
    if (os_log_type_enabled(networkBehavior, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v4;
      _os_log_error_impl(&dword_26F567000, networkBehavior, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIScheduleFetchExperimentNotificationsPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (([v3 hasRollbacksOnly] & 1) == 0)
  {
    networkBehavior = TRILogCategory_Server();
    if (os_log_type_enabled(networkBehavior, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412290;
      v14 = v11;
      _os_log_error_impl(&dword_26F567000, networkBehavior, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: rollbacksOnly", buf, 0xCu);
    }

LABEL_11:
    v7 = 0;
    goto LABEL_15;
  }

  if ([v3 hasNetworkBehavior])
  {
    networkBehavior = [v3 networkBehavior];
    if (networkBehavior)
    {
      inexpensiveOptions = [objc_alloc(MEMORY[0x277D736A0]) initFromPersistedBehavior:networkBehavior];
      if (inexpensiveOptions)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    networkBehavior = 0;
  }

  inexpensiveOptions = [MEMORY[0x277D736A0] inexpensiveOptions];
LABEL_14:
  v7 = +[TRIScheduleFetchExperimentNotificationsTask taskWithRollbacksOnly:downloadOptions:](TRIScheduleFetchExperimentNotificationsTask, "taskWithRollbacksOnly:downloadOptions:", [v3 rollbacksOnly], inexpensiveOptions);

LABEL_15:
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (TRIScheduleFetchExperimentNotificationsTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIScheduleFetchExperimentNotificationsTask;
  v5 = [(TRIScheduleFetchExperimentNotificationsTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIScheduleFetchExperimentNotificationsTask.m" lineNumber:185 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIScheduleFetchExperimentNotificationsTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end