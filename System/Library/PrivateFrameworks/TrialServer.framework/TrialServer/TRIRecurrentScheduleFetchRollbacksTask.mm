@interface TRIRecurrentScheduleFetchRollbacksTask
+ (id)parseFromData:(id)data;
+ (id)taskWithAttribution:(id)attribution;
- (BOOL)isEqual:(id)equal;
- (NSArray)tags;
- (TRIRecurrentScheduleFetchRollbacksTask)initWithCoder:(id)coder;
- (TRIRecurrentScheduleFetchRollbacksTask)initWithTaskAttribution:(id)attribution isRepeatedInstance:(BOOL)instance;
- (id)_asPersistedTask;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIRecurrentScheduleFetchRollbacksTask

+ (id)taskWithAttribution:(id)attribution
{
  attributionCopy = attribution;
  v4 = [[TRIRecurrentScheduleFetchRollbacksTask alloc] initWithTaskAttribution:attributionCopy isRepeatedInstance:0];

  return v4;
}

- (TRIRecurrentScheduleFetchRollbacksTask)initWithTaskAttribution:(id)attribution isRepeatedInstance:(BOOL)instance
{
  attributionCopy = attribution;
  v11.receiver = self;
  v11.super_class = TRIRecurrentScheduleFetchRollbacksTask;
  v8 = [(TRIRecurrentScheduleFetchRollbacksTask *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_taskAttribution, attribution);
    v9->_isRepeatedInstance = instance;
  }

  return v9;
}

- (NSArray)tags
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v9.receiver = self;
  v9.super_class = TRIRecurrentScheduleFetchRollbacksTask;
  tags = [(TRIBaseTask *)&v9 tags];
  v5 = tags;
  if (tags)
  {
    v6 = tags;
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

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = TRIRecurrentScheduleFetchRollbacksTask;
    if ([(TRIBaseTask *)&v14 isEqual:equalCopy])
    {
      taskAttribution = self->_taskAttribution;
      v6 = equalCopy;
      asPersistedTaskAttribution = [(TRITaskAttributing *)taskAttribution asPersistedTaskAttribution];
      data = [asPersistedTaskAttribution data];
      v9 = v6->_taskAttribution;

      asPersistedTaskAttribution2 = [(TRITaskAttributing *)v9 asPersistedTaskAttribution];
      data2 = [asPersistedTaskAttribution2 data];
      v12 = [data isEqual:data2];
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
  teamIdentifier = [(TRITaskAttributing *)self->_taskAttribution teamIdentifier];
  v6 = [teamIdentifier hash] + 37 * v4;

  return v6;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  asPersistedTaskAttribution = [(TRITaskAttributing *)self->_taskAttribution asPersistedTaskAttribution];
  [v3 setTaskAttribution:asPersistedTaskAttribution];

  [v3 setIsRepeatedInstance:self->_isRepeatedInstance];

  return v3;
}

- (id)serialize
{
  _asPersistedTask = [(TRIRecurrentScheduleFetchRollbacksTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRecurrentScheduleFetchRollbacksTask.m" lineNumber:113 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v3 = [(TRIPBMessage *)TRIRecurrentScheduleFetchRollbacksPersistedTask parseFromData:data error:&v15];
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

  taskAttribution = [v3 taskAttribution];
  v6 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:taskAttribution];

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
  networkOptions = [(TRITaskAttributing *)self->_taskAttribution networkOptions];
  requiredCapability = [networkOptions requiredCapability];

  return requiredCapability;
}

- (TRIRecurrentScheduleFetchRollbacksTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIRecurrentScheduleFetchRollbacksTask;
  v5 = [(TRIRecurrentScheduleFetchRollbacksTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRecurrentScheduleFetchRollbacksTask.m" lineNumber:146 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIRecurrentScheduleFetchRollbacksTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end