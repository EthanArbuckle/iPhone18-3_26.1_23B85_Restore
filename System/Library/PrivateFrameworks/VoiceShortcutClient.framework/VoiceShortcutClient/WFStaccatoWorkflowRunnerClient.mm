@interface WFStaccatoWorkflowRunnerClient
+ (id)defaultContextualActionContext;
- (BOOL)hasCompletedRun;
- (NSString)presentableIdentifier;
- (NSString)presentableRequester;
- (WFStaccatoWorkflowRunnerClient)initWithStaccatoAction:(id)action;
- (WFStaccatoWorkflowRunnerClient)initWithStaccatoAction:(id)action interactionType:(id)type preciseTimeStamp:(id)stamp;
- (void)start;
- (void)startWithInteractionType:(id)type preciseTimeStamp:(id)stamp;
@end

@implementation WFStaccatoWorkflowRunnerClient

- (BOOL)hasCompletedRun
{
  hasStartedRun = [(WFStaccatoWorkflowRunnerClient *)self hasStartedRun];
  if (hasStartedRun)
  {
    action = [(WFSystemActionRunnerClient *)self action];
    identifier = [action identifier];
    v6 = [identifier isEqualToString:@"com.apple.VoiceMemos.ToggleRecording"];

    if (v6)
    {
      LOBYTE(hasStartedRun) = 1;
    }

    else
    {
      LOBYTE(hasStartedRun) = ![(WFWorkflowRunnerClient *)self isRunning];
    }
  }

  return hasStartedRun;
}

- (void)start
{
  v21 = *MEMORY[0x1E69E9840];
  actionContext = [(WFSystemActionRunnerClient *)self actionContext];

  v4 = getWFStaccatoLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (actionContext)
  {
    if (v5)
    {
      actionContext2 = [(WFSystemActionRunnerClient *)self actionContext];
      staccatoInteractionType = [actionContext2 staccatoInteractionType];
      actionContext3 = [(WFSystemActionRunnerClient *)self actionContext];
      preciseTimestamp = [actionContext3 preciseTimestamp];
      action = [(WFSystemActionRunnerClient *)self action];
      *buf = 136315906;
      v14 = "[WFStaccatoWorkflowRunnerClient start]";
      v15 = 2112;
      v16 = staccatoInteractionType;
      v17 = 2048;
      v18 = preciseTimestamp;
      v19 = 2112;
      v20 = action;
      _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_DEFAULT, "%s Running from staccato interaction type: %@, preciseTimestamp: %p, action: %@", buf, 0x2Au);

LABEL_6:
    }
  }

  else if (v5)
  {
    actionContext2 = [(WFSystemActionRunnerClient *)self action];
    *buf = 136315394;
    v14 = "[WFStaccatoWorkflowRunnerClient start]";
    v15 = 2112;
    v16 = actionContext2;
    _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_DEFAULT, "%s Running from staccato action: %@", buf, 0x16u);
    goto LABEL_6;
  }

  v12.receiver = self;
  v12.super_class = WFStaccatoWorkflowRunnerClient;
  [(WFSystemActionRunnerClient *)&v12 start];
  [(WFStaccatoWorkflowRunnerClient *)self setHasStartedRun:1];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)startWithInteractionType:(id)type preciseTimeStamp:(id)stamp
{
  typeCopy = type;
  stampCopy = stamp;
  actionContext = [(WFSystemActionRunnerClient *)self actionContext];

  if (actionContext)
  {
    actionContext2 = [(WFSystemActionRunnerClient *)self actionContext];
    [actionContext2 setStaccatoInteractionType:typeCopy];

    actionContext3 = [(WFSystemActionRunnerClient *)self actionContext];
    [actionContext3 setPreciseTimestamp:stampCopy];
  }

  if (![(WFStaccatoWorkflowRunnerClient *)self hasStartedRun])
  {
    [(WFStaccatoWorkflowRunnerClient *)self start];
  }
}

- (NSString)presentableRequester
{
  action = [(WFSystemActionRunnerClient *)self action];
  identifier = [action identifier];
  v5 = [identifier isEqualToString:@"is.workflow.actions.openapp"];

  if (v5)
  {
    action2 = [(WFSystemActionRunnerClient *)self action];
    associatedBundleIdentifier = [action2 associatedBundleIdentifier];
  }

  else
  {
    associatedBundleIdentifier = @"com.apple.ShortcutsUI";
    v8 = @"com.apple.ShortcutsUI";
  }

  return associatedBundleIdentifier;
}

- (NSString)presentableIdentifier
{
  context = [(WFWorkflowRunnerClient *)self context];
  v3 = WFApertureStatusViewControllerIdentityFromRunningContext(context);

  return v3;
}

- (WFStaccatoWorkflowRunnerClient)initWithStaccatoAction:(id)action interactionType:(id)type preciseTimeStamp:(id)stamp
{
  v40 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  typeCopy = type;
  stampCopy = stamp;
  if (actionCopy)
  {
    if (typeCopy)
    {
      goto LABEL_3;
    }

LABEL_15:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFStaccatoWorkflowRunnerClient.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"interactionType"}];

    if (stampCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFStaccatoWorkflowRunnerClient.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"action"}];

  if (!typeCopy)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (stampCopy)
  {
    goto LABEL_4;
  }

LABEL_16:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFStaccatoWorkflowRunnerClient.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"preciseTimestamp"}];

LABEL_4:
  v12 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v33 = "[WFStaccatoWorkflowRunnerClient initWithStaccatoAction:interactionType:preciseTimeStamp:]";
    v34 = 2112;
    v35 = typeCopy;
    v36 = 2048;
    v37 = stampCopy;
    v38 = 2112;
    v39 = actionCopy;
    _os_log_impl(&dword_1B1DE3000, v12, OS_LOG_TYPE_DEFAULT, "%s Initializing Staccato runner interaction type: %@, preciseTimestamp: %p, action: %@", buf, 0x2Au);
  }

  v13 = actionCopy;
  if (actionCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v31.receiver = self;
  v31.super_class = WFStaccatoWorkflowRunnerClient;
  v16 = [(WFSystemActionRunnerClient *)&v31 initWithSystemAction:v15];
  sectionIdentifier = [v13 sectionIdentifier];

  LOBYTE(v15) = [sectionIdentifier isEqualToString:@"Shortcuts"];
  if ((v15 & 1) == 0)
  {
    runRequest = [(WFWorkflowRunnerClient *)v16 runRequest];
    [runRequest setPresentationMode:3];
  }

  runRequest2 = [(WFWorkflowRunnerClient *)v16 runRequest];
  [runRequest2 setRunSource:@"action-button"];

  actionContext = [(WFSystemActionRunnerClient *)v16 actionContext];
  [actionContext setStaccatoInteractionType:typeCopy];

  actionContext2 = [(WFSystemActionRunnerClient *)v16 actionContext];
  [actionContext2 setSurface:12];

  actionContext3 = [(WFSystemActionRunnerClient *)v16 actionContext];
  [actionContext3 setPreciseTimestamp:stampCopy];

  runRequest3 = [(WFWorkflowRunnerClient *)v16 runRequest];
  descriptor = [(WFWorkflowRunnerClient *)v16 descriptor];
  v25 = [(WFWorkflowRunnerClient *)v16 createRunningContextFromRequestIfNecessary:runRequest3 descriptor:descriptor];

  v26 = *MEMORY[0x1E69E9840];
  return v16;
}

- (WFStaccatoWorkflowRunnerClient)initWithStaccatoAction:(id)action
{
  actionCopy = action;
  v5 = objc_opt_new();
  v6 = [(WFStaccatoWorkflowRunnerClient *)self initWithStaccatoAction:actionCopy interactionType:@"WFStaccatoActionInteractionTypeUnknown" preciseTimeStamp:v5];

  return v6;
}

+ (id)defaultContextualActionContext
{
  v2 = [[WFContextualActionContext alloc] initWithSurface:12];

  return v2;
}

@end