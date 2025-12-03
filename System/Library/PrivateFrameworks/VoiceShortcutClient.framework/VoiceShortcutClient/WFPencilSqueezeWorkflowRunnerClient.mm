@interface WFPencilSqueezeWorkflowRunnerClient
+ (id)defaultContextualActionContext;
- (BOOL)hasCompletedRun;
- (WFPencilSqueezeWorkflowRunnerClient)initWithSystemAction:(id)action preciseTimeStamp:(id)stamp;
- (void)start;
- (void)startWithPreciseTimeStamp:(id)stamp;
@end

@implementation WFPencilSqueezeWorkflowRunnerClient

- (BOOL)hasCompletedRun
{
  hasStartedRun = [(WFPencilSqueezeWorkflowRunnerClient *)self hasStartedRun];
  if (hasStartedRun)
  {
    LOBYTE(hasStartedRun) = ![(WFWorkflowRunnerClient *)self isRunning];
  }

  return hasStartedRun;
}

- (void)start
{
  v3.receiver = self;
  v3.super_class = WFPencilSqueezeWorkflowRunnerClient;
  [(WFSystemActionRunnerClient *)&v3 start];
  [(WFPencilSqueezeWorkflowRunnerClient *)self setHasStartedRun:1];
}

- (void)startWithPreciseTimeStamp:(id)stamp
{
  stampCopy = stamp;
  actionContext = [(WFSystemActionRunnerClient *)self actionContext];

  if (actionContext)
  {
    actionContext2 = [(WFSystemActionRunnerClient *)self actionContext];
    [actionContext2 setPreciseTimestamp:stampCopy];
  }

  if (![(WFPencilSqueezeWorkflowRunnerClient *)self hasStartedRun])
  {
    [(WFPencilSqueezeWorkflowRunnerClient *)self start];
  }
}

- (WFPencilSqueezeWorkflowRunnerClient)initWithSystemAction:(id)action preciseTimeStamp:(id)stamp
{
  v29 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  stampCopy = stamp;
  v9 = stampCopy;
  if (actionCopy)
  {
    if (stampCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFPencilSqueezeWorkflowRunnerClient.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"systemAction"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFPencilSqueezeWorkflowRunnerClient.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"preciseTimestamp"}];

LABEL_3:
  v10 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "[WFPencilSqueezeWorkflowRunnerClient initWithSystemAction:preciseTimeStamp:]";
    v25 = 2048;
    v26 = v9;
    v27 = 2112;
    v28 = actionCopy;
    _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_DEFAULT, "%s Initializing B532 runner - preciseTimestamp: %p, action: %@", buf, 0x20u);
  }

  v22.receiver = self;
  v22.super_class = WFPencilSqueezeWorkflowRunnerClient;
  v11 = [(WFSystemActionRunnerClient *)&v22 initWithSystemAction:actionCopy];
  runRequest = [(WFWorkflowRunnerClient *)v11 runRequest];
  [runRequest setRunSource:@"pencil-squeeze"];

  actionContext = [(WFSystemActionRunnerClient *)v11 actionContext];
  [actionContext setSurface:13];

  actionContext2 = [(WFSystemActionRunnerClient *)v11 actionContext];
  [actionContext2 setPreciseTimestamp:v9];

  runRequest2 = [(WFWorkflowRunnerClient *)v11 runRequest];
  descriptor = [(WFWorkflowRunnerClient *)v11 descriptor];
  v17 = [(WFWorkflowRunnerClient *)v11 createRunningContextFromRequestIfNecessary:runRequest2 descriptor:descriptor];

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)defaultContextualActionContext
{
  v2 = [[WFContextualActionContext alloc] initWithSurface:13];

  return v2;
}

@end