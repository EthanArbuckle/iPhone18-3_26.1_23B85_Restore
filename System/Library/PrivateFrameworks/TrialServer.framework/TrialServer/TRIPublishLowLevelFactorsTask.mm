@interface TRIPublishLowLevelFactorsTask
+ (id)parseFromData:(id)data;
- (TRIPublishLowLevelFactorsTask)init;
- (TRIPublishLowLevelFactorsTask)initWithCoder:(id)coder;
- (TRIPublishLowLevelFactorsTask)initWithLaunchdConnection:(id)connection;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIPublishLowLevelFactorsTask

- (TRIPublishLowLevelFactorsTask)init
{
  v3 = objc_opt_new();
  v4 = [(TRIPublishLowLevelFactorsTask *)self initWithLaunchdConnection:v3];

  return v4;
}

- (TRIPublishLowLevelFactorsTask)initWithLaunchdConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = TRIPublishLowLevelFactorsTask;
  v6 = [(TRIPublishLowLevelFactorsTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_launchdConnection, connection);
  }

  return v7;
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  contextCopy = context;
  v6 = [[TRIActiveEnvVarFactorsPublisher alloc] initWithServerContext:contextCopy];
  [(TRIActiveEnvVarFactorsPublisher *)v6 publishLowLevelFactors];
  LODWORD(self) = [(TRILaunchdInterface *)self->_launchdConnection requestReloadLowLevelFactors];

  v7 = [[TRIActiveSysctlFactorsPublisher alloc] initWithServerContext:contextCopy];
  LODWORD(contextCopy) = [(TRIActiveSysctlFactorsPublisher *)v7 publishSysctlFactors];

  if ((self & contextCopy) != 0)
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

+ (id)parseFromData:(id)data
{
  v3 = objc_opt_new();

  return v3;
}

- (id)serialize
{
  v4 = objc_opt_new();
  data = [v4 data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIPublishLowLevelFactorsTask.m" lineNumber:63 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

- (TRIPublishLowLevelFactorsTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIPublishLowLevelFactorsTask;
  v5 = [(TRIPublishLowLevelFactorsTask *)&v9 init];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIPublishLowLevelFactorsTask.m" lineNumber:71 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIPublishLowLevelFactorsTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end