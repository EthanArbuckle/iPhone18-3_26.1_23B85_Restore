@interface TRISetupAssistantFetchTask
+ (id)parseFromData:(id)data;
+ (id)task;
- (TRISetupAssistantFetchTask)initWithCoder:(id)coder;
- (id)_asPersistedTask;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRISetupAssistantFetchTask

+ (id)task
{
  v2 = objc_opt_new();

  return v2;
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  v54 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  v7 = objc_opt_new();
  v8 = MEMORY[0x277D73750];
  paths = [contextCopy paths];
  namespaceDescriptorsDefaultDir = [paths namespaceDescriptorsDefaultDir];
  v11 = [v8 descriptorsForDirectory:namespaceDescriptorsDefaultDir filterBlock:&__block_literal_global_43];

  v12 = [v11 count];
  v13 = TRILogCategory_Server();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    v43 = contextCopy;
    if (v14)
    {
      *buf = 134217984;
      v50 = [v11 count];
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "TRISetupAssistantFetchTask: found %lu descriptors with enableFetchDuringSetupAssistant enabled", buf, 0xCu);
    }

    v44 = v7;
    v42 = queueCopy;

    v15 = objc_opt_new();
    v16 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v17 = v11;
    v18 = [v17 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v46;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v45 + 1) + 8 * i);
          if (![(__CFString *)v20 length])
          {
            resourceAttributionIdentifier = [v23 resourceAttributionIdentifier];

            v20 = resourceAttributionIdentifier;
          }

          namespaceName = [v23 namespaceName];
          [v16 addObject:namespaceName];

          namespaceName2 = [v23 namespaceName];
          [v15 addObject:namespaceName2];
        }

        v19 = [v17 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v19);
    }

    else
    {
      v20 = 0;
    }

    if (![(__CFString *)v20 length])
    {

      v20 = @"com.apple.triald";
    }

    contextCopy = v43;
    v7 = v44;
    if ([TRISetupAssistantFetchUtils removeNamespaceNamesWithRolloutForServerContext:v43 namespaceNames:v16])
    {
      if ([v16 count])
      {
        [v15 minusSet:v16];
        if ([v15 count])
        {
          v28 = TRILogCategory_Server();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            allObjects = [v15 allObjects];
            allObjects2 = [v16 allObjects];
            *buf = 138412546;
            v50 = allObjects;
            v51 = 2114;
            v52 = allObjects2;
            _os_log_impl(&dword_26F567000, v28, OS_LOG_TYPE_DEFAULT, "TRISetupAssistantFetchTask: ncv-compatible rollout v2 are present for namespace names: %@ and are NOT present for  namespace names: %{public}@", buf, 0x16u);
          }
        }

        v31 = [objc_alloc(MEMORY[0x277D736A0]) initWithAllowsCellular:0 discretionaryBehavior:0];
        v32 = [[TRITaskAttributionInternalInsecure alloc] initWithTeamIdentifier:0 triCloudKitContainer:1 applicationBundleIdentifier:v20 networkOptions:v31];
        v33 = TRILogCategory_Server();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v50 = v16;
          v51 = 2112;
          v52 = v32;
          _os_log_impl(&dword_26F567000, v33, OS_LOG_TYPE_DEFAULT, "TRISetupAssistantFetchTask: submitting TRISelectRolloutNotificationListTask with the following namespace names: %{public}@ and task attributing: %@", buf, 0x16u);
        }

        v34 = [TRISelectRolloutNotificationListTask taskWithNamespaceNames:v16 taskAttribution:v32];
        [v44 addObject:v34];

        v35 = [v44 copy];
        v27 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:1 nextTasks:v35 earliestRetryDate:0];

        v7 = v44;
        goto LABEL_36;
      }

      v39 = TRILogCategory_Server();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v39, OS_LOG_TYPE_DEFAULT, "TRISetupAssistantFetchTask: download is not needed, ncv-compatible rollouts v2 are all present on the device for namespaces names with enableFetchDuringSetupAssistant flag enabled", buf, 2u);
      }

      v37 = MEMORY[0x277CBEBF8];
      v38 = 2;
    }

    else
    {
      v36 = TRILogCategory_Server();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "The rollout database query failed.", buf, 2u);
      }

      v37 = MEMORY[0x277CBEBF8];
      v38 = 3;
    }

    v27 = [TRITaskRunResult resultWithRunStatus:v38 reportResultToServer:1 nextTasks:v37 earliestRetryDate:0];
LABEL_36:

    queueCopy = v42;
    goto LABEL_37;
  }

  if (v14)
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "TRISetupAssistantFetchTask: did not find descriptors with enableFetchDuringSetupAssistant enabled", buf, 2u);
  }

  v27 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
LABEL_37:

  v40 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_asPersistedTask
{
  v2 = objc_opt_new();

  return v2;
}

- (id)serialize
{
  _asPersistedTask = [(TRISetupAssistantFetchTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRISetupAssistantFetchTask.m" lineNumber:141 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [(TRIPBMessage *)TRISetupAssistantFetchPersistedTask parseFromData:data error:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = objc_opt_new();
  }

  else
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRISetupAssistantFetchTask: %{public}@", buf, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (TRISetupAssistantFetchTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRISetupAssistantFetchTask;
  v5 = [(TRISetupAssistantFetchTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRISetupAssistantFetchTask.m" lineNumber:158 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRISetupAssistantFetchTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end