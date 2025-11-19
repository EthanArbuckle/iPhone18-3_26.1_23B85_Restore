@interface TRIPublishLowLevelFactorsTask
+ (id)parseFromData:(id)a3;
- (TRIPublishLowLevelFactorsTask)init;
- (TRIPublishLowLevelFactorsTask)initWithCoder:(id)a3;
- (TRIPublishLowLevelFactorsTask)initWithLaunchdConnection:(id)a3;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIPublishLowLevelFactorsTask

- (TRIPublishLowLevelFactorsTask)init
{
  v3 = objc_opt_new();
  v4 = [(TRIPublishLowLevelFactorsTask *)self initWithLaunchdConnection:v3];

  return v4;
}

- (TRIPublishLowLevelFactorsTask)initWithLaunchdConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRIPublishLowLevelFactorsTask;
  v6 = [(TRIPublishLowLevelFactorsTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_launchdConnection, a3);
  }

  return v7;
}

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v5 = a3;
  v6 = [[TRIActiveEnvVarFactorsPublisher alloc] initWithServerContext:v5];
  [(TRIActiveEnvVarFactorsPublisher *)v6 publishLowLevelFactors];
  LODWORD(self) = [(TRILaunchdInterface *)self->_launchdConnection requestReloadLowLevelFactors];

  v7 = [[TRIActiveSysctlFactorsPublisher alloc] initWithServerContext:v5];
  LODWORD(v5) = [(TRIActiveSysctlFactorsPublisher *)v7 publishSysctlFactors];

  if ((self & v5) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  v9 = MEMORY[0x277CBEBF8];

  return [TRITaskRunResult resultWithRunStatus:v8 reportResultToServer:1 nextTasks:v9 earliestRetryDate:0];
}

+ (id)parseFromData:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)serialize
{
  v4 = objc_opt_new();
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRIPublishLowLevelFactorsTask.m" lineNumber:63 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

- (TRIPublishLowLevelFactorsTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIPublishLowLevelFactorsTask;
  v5 = [(TRIPublishLowLevelFactorsTask *)&v9 init];
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
    [v6 handleFailureInMethod:a2 object:self file:@"TRIPublishLowLevelFactorsTask.m" lineNumber:71 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRIPublishLowLevelFactorsTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end