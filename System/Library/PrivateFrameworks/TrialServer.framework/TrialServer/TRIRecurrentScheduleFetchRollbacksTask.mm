@interface TRIRecurrentScheduleFetchRollbacksTask
+ (id)parseFromData:(id)a3;
+ (id)taskWithAttribution:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSArray)tags;
- (TRIRecurrentScheduleFetchRollbacksTask)initWithCoder:(id)a3;
- (TRIRecurrentScheduleFetchRollbacksTask)initWithTaskAttribution:(id)a3 isRepeatedInstance:(BOOL)a4;
- (id)_asPersistedTask;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIRecurrentScheduleFetchRollbacksTask

+ (id)taskWithAttribution:(id)a3
{
  v3 = a3;
  v4 = [[TRIRecurrentScheduleFetchRollbacksTask alloc] initWithTaskAttribution:v3 isRepeatedInstance:0];

  return v4;
}

- (TRIRecurrentScheduleFetchRollbacksTask)initWithTaskAttribution:(id)a3 isRepeatedInstance:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TRIRecurrentScheduleFetchRollbacksTask;
  v8 = [(TRIRecurrentScheduleFetchRollbacksTask *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_taskAttribution, a3);
    v9->_isRepeatedInstance = a4;
  }

  return v9;
}

- (NSArray)tags
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v9.receiver = self;
  v9.super_class = TRIRecurrentScheduleFetchRollbacksTask;
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

  [v7 addObject:@"ScheduleFetchRollbacks"];
  [TRITaskUtils addAttribution:self->_taskAttribution toTaskTags:v7];

  return v7;
}

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "TRIRecurrentScheduleFetchRollbacksTask is deprecated. Completing task without completing any work", v7, 2u);
  }

  v5 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:0 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = TRIRecurrentScheduleFetchRollbacksTask;
    if ([(TRIBaseTask *)&v14 isEqual:v4])
    {
      taskAttribution = self->_taskAttribution;
      v6 = v4;
      v7 = [(TRITaskAttributing *)taskAttribution asPersistedTaskAttribution];
      v8 = [v7 data];
      v9 = v6->_taskAttribution;

      v10 = [(TRITaskAttributing *)v9 asPersistedTaskAttribution];
      v11 = [v10 data];
      v12 = [v8 isEqual:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = TRIRecurrentScheduleFetchRollbacksTask;
  v3 = 37 * [(TRIBaseTask *)&v8 hash];
  v4 = v3 + [(TRITaskAttributing *)self->_taskAttribution triCloudKitContainer];
  v5 = [(TRITaskAttributing *)self->_taskAttribution teamIdentifier];
  v6 = [v5 hash] + 37 * v4;

  return v6;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  v4 = [(TRITaskAttributing *)self->_taskAttribution asPersistedTaskAttribution];
  [v3 setTaskAttribution:v4];

  [v3 setIsRepeatedInstance:self->_isRepeatedInstance];

  return v3;
}

- (id)serialize
{
  v4 = [(TRIRecurrentScheduleFetchRollbacksTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRIRecurrentScheduleFetchRollbacksTask.m" lineNumber:113 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v3 = [(TRIPBMessage *)TRIRecurrentScheduleFetchRollbacksPersistedTask parseFromData:a3 error:&v15];
  v4 = v15;
  if (!v3)
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v4;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIRecurrentScheduleFetchRollbacksPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if (([v3 hasTaskAttribution] & 1) == 0)
  {
    v6 = TRILogCategory_Server();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138412290;
    v17 = v9;
    v10 = "Cannot decode message of type %@ with missing field: taskAttribution";
LABEL_12:
    _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);

    goto LABEL_16;
  }

  if (([v3 hasIsRepeatedInstance] & 1) == 0)
  {
    v6 = TRILogCategory_Server();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v11 = objc_opt_class();
    v9 = NSStringFromClass(v11);
    *buf = 138412290;
    v17 = v9;
    v10 = "Cannot decode message of type %@ with missing field: isRepeatedInstance";
    goto LABEL_12;
  }

  v5 = [v3 taskAttribution];
  v6 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:v5];

  if (v6)
  {
    v7 = -[TRIRecurrentScheduleFetchRollbacksTask initWithTaskAttribution:isRepeatedInstance:]([TRIRecurrentScheduleFetchRollbacksTask alloc], "initWithTaskAttribution:isRepeatedInstance:", v6, [v3 isRepeatedInstance]);
    goto LABEL_17;
  }

  v12 = TRILogCategory_Server();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "failed to construct TRITaskAttributionInternalInsecure object", buf, 2u);
  }

  v6 = 0;
LABEL_16:
  v7 = 0;
LABEL_17:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unint64_t)requiredCapabilities
{
  v2 = [(TRITaskAttributing *)self->_taskAttribution networkOptions];
  v3 = [v2 requiredCapability];

  return v3;
}

- (TRIRecurrentScheduleFetchRollbacksTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIRecurrentScheduleFetchRollbacksTask;
  v5 = [(TRIRecurrentScheduleFetchRollbacksTask *)&v9 init];
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
    [v6 handleFailureInMethod:a2 object:self file:@"TRIRecurrentScheduleFetchRollbacksTask.m" lineNumber:146 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRIRecurrentScheduleFetchRollbacksTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end