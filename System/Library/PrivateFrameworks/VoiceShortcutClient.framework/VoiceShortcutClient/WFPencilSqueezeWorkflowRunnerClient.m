@interface WFPencilSqueezeWorkflowRunnerClient
+ (id)defaultContextualActionContext;
- (BOOL)hasCompletedRun;
- (WFPencilSqueezeWorkflowRunnerClient)initWithSystemAction:(id)a3 preciseTimeStamp:(id)a4;
- (void)start;
- (void)startWithPreciseTimeStamp:(id)a3;
@end

@implementation WFPencilSqueezeWorkflowRunnerClient

- (BOOL)hasCompletedRun
{
  v3 = [(WFPencilSqueezeWorkflowRunnerClient *)self hasStartedRun];
  if (v3)
  {
    LOBYTE(v3) = ![(WFWorkflowRunnerClient *)self isRunning];
  }

  return v3;
}

- (void)start
{
  v3.receiver = self;
  v3.super_class = WFPencilSqueezeWorkflowRunnerClient;
  [(WFSystemActionRunnerClient *)&v3 start];
  [(WFPencilSqueezeWorkflowRunnerClient *)self setHasStartedRun:1];
}

- (void)startWithPreciseTimeStamp:(id)a3
{
  v6 = a3;
  v4 = [(WFSystemActionRunnerClient *)self actionContext];

  if (v4)
  {
    v5 = [(WFSystemActionRunnerClient *)self actionContext];
    [v5 setPreciseTimestamp:v6];
  }

  if (![(WFPencilSqueezeWorkflowRunnerClient *)self hasStartedRun])
  {
    [(WFPencilSqueezeWorkflowRunnerClient *)self start];
  }
}

- (WFPencilSqueezeWorkflowRunnerClient)initWithSystemAction:(id)a3 preciseTimeStamp:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"WFPencilSqueezeWorkflowRunnerClient.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"systemAction"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"WFPencilSqueezeWorkflowRunnerClient.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"preciseTimestamp"}];

LABEL_3:
  v10 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "[WFPencilSqueezeWorkflowRunnerClient initWithSystemAction:preciseTimeStamp:]";
    v25 = 2048;
    v26 = v9;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_DEFAULT, "%s Initializing B532 runner - preciseTimestamp: %p, action: %@", buf, 0x20u);
  }

  v22.receiver = self;
  v22.super_class = WFPencilSqueezeWorkflowRunnerClient;
  v11 = [(WFSystemActionRunnerClient *)&v22 initWithSystemAction:v7];
  v12 = [(WFWorkflowRunnerClient *)v11 runRequest];
  [v12 setRunSource:@"pencil-squeeze"];

  v13 = [(WFSystemActionRunnerClient *)v11 actionContext];
  [v13 setSurface:13];

  v14 = [(WFSystemActionRunnerClient *)v11 actionContext];
  [v14 setPreciseTimestamp:v9];

  v15 = [(WFWorkflowRunnerClient *)v11 runRequest];
  v16 = [(WFWorkflowRunnerClient *)v11 descriptor];
  v17 = [(WFWorkflowRunnerClient *)v11 createRunningContextFromRequestIfNecessary:v15 descriptor:v16];

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)defaultContextualActionContext
{
  v2 = [[WFContextualActionContext alloc] initWithSurface:13];

  return v2;
}

@end