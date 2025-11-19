@interface TRIRetargetAllTask
+ (id)parseFromData:(id)a3;
+ (id)task;
+ (id)taskWithTaskAttribution:(id)a3;
- (TRIRetargetAllTask)initWithCoder:(id)a3;
- (TRIRetargetAllTask)initWithTaskAttribution:(id)a3;
- (id)_asPersistedTask;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIRetargetAllTask

+ (id)taskWithTaskAttribution:(id)a3
{
  v3 = a3;
  v4 = [[TRIRetargetAllTask alloc] initWithTaskAttribution:v3];

  return v4;
}

- (TRIRetargetAllTask)initWithTaskAttribution:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = TRIRetargetAllTask;
  v6 = [(TRIRetargetAllTask *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskAttribution, a3);
    if (!v7->_taskAttribution)
    {
      v8 = [MEMORY[0x277D737A8] callerBundleId];
      v9 = [TRITaskAttributionInternalInsecure alloc];
      v10 = [MEMORY[0x277D736A0] inexpensiveOptions];
      v11 = [(TRITaskAttributionInternalInsecure *)v9 initWithTeamIdentifier:0 triCloudKitContainer:1 applicationBundleIdentifier:v8 networkOptions:v10];
      taskAttribution = v7->_taskAttribution;
      v7->_taskAttribution = v11;
    }
  }

  return v7;
}

+ (id)task
{
  v2 = [[TRIRetargetAllTask alloc] initWithTaskAttribution:0];

  return v2;
}

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_287FC4D80, &unk_287FC4D98, &unk_287FC4DB0, 0}];
  objc_autoreleasePoolPop(v9);
  v11 = [v6 experimentDatabase];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __52__TRIRetargetAllTask_runUsingContext_withTaskQueue___block_invoke;
  v24[3] = &unk_279DE08A8;
  v24[4] = self;
  v12 = v8;
  v25 = v12;
  v13 = [v11 enumerateExperimentRecordsMatchingStatuses:v10 block:v24];
  v14 = [v6 rolloutDatabase];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __52__TRIRetargetAllTask_runUsingContext_withTaskQueue___block_invoke_40;
  v22[3] = &unk_279DE4D60;
  v22[4] = self;
  v15 = v12;
  v23 = v15;
  v16 = [v14 enumerateActiveRecordsUsingTransaction:0 block:v22];
  v17 = 3;
  if (v13 && v16)
  {
    [(TRIRetargetAllTask *)self setNextTasks:v15];
    v17 = 2;
  }

  [TRISystemConfiguration updateSystemInfoUsingContext:v6];
  v18 = [(TRIRetargetAllTask *)self nextTasks];
  v19 = [v18 copy];
  v20 = [TRITaskRunResult resultWithRunStatus:v17 reportResultToServer:1 nextTasks:v19 earliestRetryDate:0];

  return v20;
}

void __52__TRIRetargetAllTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isManuallyTargeted])
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 experimentDeployment];
      v6 = [v5 shortDesc];
      v11 = 138412290;
      v12 = v6;
      v7 = "Retargeting is being suppressed for manually-targeted experiment: %@";
LABEL_4:
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, v7, &v11, 0xCu);
    }
  }

  else
  {
    if (![v3 isExpiredExperiment] || objc_msgSend(v3, "status") != 4)
    {
      v8 = [v3 experimentDeployment];
      v9 = [TRITargetingTask taskWithExperiment:v8 includeDependencies:0 taskAttribution:*(*(a1 + 32) + 24)];

      [*(a1 + 40) addObject:v9];
      goto LABEL_11;
    }

    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 experimentDeployment];
      v6 = [v5 shortDesc];
      v11 = 138412290;
      v12 = v6;
      v7 = "Retargeting is being suppressed for expired and ineligible experiment: %@";
      goto LABEL_4;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
}

void __52__TRIRetargetAllTask_runUsingContext_withTaskQueue___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = [a2 deployment];
  v4 = [TRIRolloutTargetingTask taskWithRolloutDeployment:v3 includeDependencies:0 taskAttribution:*(*(a1 + 32) + 24) triggerEvent:2];

  [*(a1 + 40) addObject:v4];
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  v4 = [(TRITaskAttributing *)self->_taskAttribution asPersistedTaskAttribution];
  [v3 setTaskAttribution:v4];

  return v3;
}

- (id)serialize
{
  v4 = [(TRIRetargetAllTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRIRetargetAllTask.m" lineNumber:133 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v4 = [(TRIPBMessage *)TRIRetargetAllPersistedTask parseFromData:a3 error:&v14];
  v5 = v14;
  if (!v4)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v5;
      v8 = "Unable to parse buffer as TRIRetargetAllPersistedTask: %{public}@";
      v9 = v7;
      v10 = 12;
      goto LABEL_14;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_10;
  }

  if ([v4 hasTaskAttribution])
  {
    v6 = [v4 taskAttribution];
    v7 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:v6];

    if (!v7)
    {
      v7 = TRILogCategory_Server();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v8 = "invalid de-serialized TRITaskAttribution pb message";
        v9 = v7;
        v10 = 2;
LABEL_14:
        _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
        goto LABEL_7;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = [[a1 alloc] initWithTaskAttribution:v7];
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (TRIRetargetAllTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIRetargetAllTask;
  v5 = [(TRIRetargetAllTask *)&v9 init];
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
    [v6 handleFailureInMethod:a2 object:self file:@"TRIRetargetAllTask.m" lineNumber:159 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRIRetargetAllTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end