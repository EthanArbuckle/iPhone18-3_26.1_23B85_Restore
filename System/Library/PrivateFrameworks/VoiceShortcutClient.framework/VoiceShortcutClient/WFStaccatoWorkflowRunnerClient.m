@interface WFStaccatoWorkflowRunnerClient
+ (id)defaultContextualActionContext;
- (BOOL)hasCompletedRun;
- (NSString)presentableIdentifier;
- (NSString)presentableRequester;
- (WFStaccatoWorkflowRunnerClient)initWithStaccatoAction:(id)a3;
- (WFStaccatoWorkflowRunnerClient)initWithStaccatoAction:(id)a3 interactionType:(id)a4 preciseTimeStamp:(id)a5;
- (void)start;
- (void)startWithInteractionType:(id)a3 preciseTimeStamp:(id)a4;
@end

@implementation WFStaccatoWorkflowRunnerClient

- (BOOL)hasCompletedRun
{
  v3 = [(WFStaccatoWorkflowRunnerClient *)self hasStartedRun];
  if (v3)
  {
    v4 = [(WFSystemActionRunnerClient *)self action];
    v5 = [v4 identifier];
    v6 = [v5 isEqualToString:@"com.apple.VoiceMemos.ToggleRecording"];

    if (v6)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = ![(WFWorkflowRunnerClient *)self isRunning];
    }
  }

  return v3;
}

- (void)start
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(WFSystemActionRunnerClient *)self actionContext];

  v4 = getWFStaccatoLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [(WFSystemActionRunnerClient *)self actionContext];
      v7 = [v6 staccatoInteractionType];
      v8 = [(WFSystemActionRunnerClient *)self actionContext];
      v9 = [v8 preciseTimestamp];
      v10 = [(WFSystemActionRunnerClient *)self action];
      *buf = 136315906;
      v14 = "[WFStaccatoWorkflowRunnerClient start]";
      v15 = 2112;
      v16 = v7;
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_DEFAULT, "%s Running from staccato interaction type: %@, preciseTimestamp: %p, action: %@", buf, 0x2Au);

LABEL_6:
    }
  }

  else if (v5)
  {
    v6 = [(WFSystemActionRunnerClient *)self action];
    *buf = 136315394;
    v14 = "[WFStaccatoWorkflowRunnerClient start]";
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_DEFAULT, "%s Running from staccato action: %@", buf, 0x16u);
    goto LABEL_6;
  }

  v12.receiver = self;
  v12.super_class = WFStaccatoWorkflowRunnerClient;
  [(WFSystemActionRunnerClient *)&v12 start];
  [(WFStaccatoWorkflowRunnerClient *)self setHasStartedRun:1];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)startWithInteractionType:(id)a3 preciseTimeStamp:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(WFSystemActionRunnerClient *)self actionContext];

  if (v7)
  {
    v8 = [(WFSystemActionRunnerClient *)self actionContext];
    [v8 setStaccatoInteractionType:v10];

    v9 = [(WFSystemActionRunnerClient *)self actionContext];
    [v9 setPreciseTimestamp:v6];
  }

  if (![(WFStaccatoWorkflowRunnerClient *)self hasStartedRun])
  {
    [(WFStaccatoWorkflowRunnerClient *)self start];
  }
}

- (NSString)presentableRequester
{
  v3 = [(WFSystemActionRunnerClient *)self action];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"is.workflow.actions.openapp"];

  if (v5)
  {
    v6 = [(WFSystemActionRunnerClient *)self action];
    v7 = [v6 associatedBundleIdentifier];
  }

  else
  {
    v7 = @"com.apple.ShortcutsUI";
    v8 = @"com.apple.ShortcutsUI";
  }

  return v7;
}

- (NSString)presentableIdentifier
{
  v2 = [(WFWorkflowRunnerClient *)self context];
  v3 = WFApertureStatusViewControllerIdentityFromRunningContext(v2);

  return v3;
}

- (WFStaccatoWorkflowRunnerClient)initWithStaccatoAction:(id)a3 interactionType:(id)a4 preciseTimeStamp:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_15:
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"WFStaccatoWorkflowRunnerClient.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"interactionType"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"WFStaccatoWorkflowRunnerClient.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"action"}];

  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_16:
  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"WFStaccatoWorkflowRunnerClient.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"preciseTimestamp"}];

LABEL_4:
  v12 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v33 = "[WFStaccatoWorkflowRunnerClient initWithStaccatoAction:interactionType:preciseTimeStamp:]";
    v34 = 2112;
    v35 = v10;
    v36 = 2048;
    v37 = v11;
    v38 = 2112;
    v39 = v9;
    _os_log_impl(&dword_1B1DE3000, v12, OS_LOG_TYPE_DEFAULT, "%s Initializing Staccato runner interaction type: %@, preciseTimestamp: %p, action: %@", buf, 0x2Au);
  }

  v13 = v9;
  if (v9)
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
  v17 = [v13 sectionIdentifier];

  LOBYTE(v15) = [v17 isEqualToString:@"Shortcuts"];
  if ((v15 & 1) == 0)
  {
    v18 = [(WFWorkflowRunnerClient *)v16 runRequest];
    [v18 setPresentationMode:3];
  }

  v19 = [(WFWorkflowRunnerClient *)v16 runRequest];
  [v19 setRunSource:@"action-button"];

  v20 = [(WFSystemActionRunnerClient *)v16 actionContext];
  [v20 setStaccatoInteractionType:v10];

  v21 = [(WFSystemActionRunnerClient *)v16 actionContext];
  [v21 setSurface:12];

  v22 = [(WFSystemActionRunnerClient *)v16 actionContext];
  [v22 setPreciseTimestamp:v11];

  v23 = [(WFWorkflowRunnerClient *)v16 runRequest];
  v24 = [(WFWorkflowRunnerClient *)v16 descriptor];
  v25 = [(WFWorkflowRunnerClient *)v16 createRunningContextFromRequestIfNecessary:v23 descriptor:v24];

  v26 = *MEMORY[0x1E69E9840];
  return v16;
}

- (WFStaccatoWorkflowRunnerClient)initWithStaccatoAction:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(WFStaccatoWorkflowRunnerClient *)self initWithStaccatoAction:v4 interactionType:@"WFStaccatoActionInteractionTypeUnknown" preciseTimeStamp:v5];

  return v6;
}

+ (id)defaultContextualActionContext
{
  v2 = [[WFContextualActionContext alloc] initWithSurface:12];

  return v2;
}

@end