@interface TRIConfigurationTask
+ (id)parseFromData:(id)data;
- (TRIConfigurationTask)initWithCoder:(id)coder;
- (id)_asPersistedTask;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIConfigurationTask

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  contextCopy = context;
  v5 = [TRISystemConfiguration alloc];
  paths = [contextCopy paths];

  v7 = [(TRISystemConfiguration *)v5 initWithPaths:paths];
  createPersistentDeviceIdentifier = [(TRISystemConfiguration *)v7 createPersistentDeviceIdentifier];
  if (createPersistentDeviceIdentifier)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  v10 = [TRITaskRunResult resultWithRunStatus:v9 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];

  return v10;
}

- (id)_asPersistedTask
{
  v2 = objc_opt_new();

  return v2;
}

- (id)serialize
{
  _asPersistedTask = [(TRIConfigurationTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIConfigurationTask.m" lineNumber:45 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [(TRIPBMessage *)TRIConfigurationPersistedTask parseFromData:data error:&v9];
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
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIConfigurationPersistedTask: %{public}@", buf, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (TRIConfigurationTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIConfigurationTask;
  v5 = [(TRIConfigurationTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIConfigurationTask.m" lineNumber:62 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIConfigurationTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end