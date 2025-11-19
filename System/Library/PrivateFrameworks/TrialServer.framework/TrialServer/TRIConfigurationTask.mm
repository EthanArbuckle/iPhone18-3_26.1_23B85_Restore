@interface TRIConfigurationTask
+ (id)parseFromData:(id)a3;
- (TRIConfigurationTask)initWithCoder:(id)a3;
- (id)_asPersistedTask;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIConfigurationTask

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v4 = a3;
  v5 = [TRISystemConfiguration alloc];
  v6 = [v4 paths];

  v7 = [(TRISystemConfiguration *)v5 initWithPaths:v6];
  v8 = [(TRISystemConfiguration *)v7 createPersistentDeviceIdentifier];
  if (v8)
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
  v4 = [(TRIConfigurationTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRIConfigurationTask.m" lineNumber:45 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [(TRIPBMessage *)TRIConfigurationPersistedTask parseFromData:a3 error:&v9];
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

- (TRIConfigurationTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIConfigurationTask;
  v5 = [(TRIConfigurationTask *)&v9 init];
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
    [v6 handleFailureInMethod:a2 object:self file:@"TRIConfigurationTask.m" lineNumber:62 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRIConfigurationTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end