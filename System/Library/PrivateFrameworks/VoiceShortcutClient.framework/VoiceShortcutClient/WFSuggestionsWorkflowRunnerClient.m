@interface WFSuggestionsWorkflowRunnerClient
- (WFSuggestionsWorkflowRunnerClient)initWithINShortcut:(id)a3 executionContext:(int64_t)a4 remoteDialogPresenterEndpoint:(id)a5;
- (WFSuggestionsWorkflowRunnerClient)initWithLinkAction:(id)a3 bundleIdentifier:(id)a4 resultSurface:(unint64_t)a5;
@end

@implementation WFSuggestionsWorkflowRunnerClient

- (WFSuggestionsWorkflowRunnerClient)initWithINShortcut:(id)a3 executionContext:(int64_t)a4 remoteDialogPresenterEndpoint:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 intent];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [WFWorkflowDatabaseRunDescriptor alloc];
    v12 = [v10 workflow];
    v13 = [v12 vocabularyIdentifier];
    v14 = [v10 workflow];
    v15 = [v14 spokenPhrase];
    v16 = [(WFWorkflowDatabaseRunDescriptor *)v11 initWithIdentifier:v13 name:v15];

    v17 = 1;
  }

  else
  {

    v16 = [[WFINShortcutRunDescriptor alloc] initWithShortcut:v8];
    v17 = 0;
  }

  v18 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:v17];
  if (a4 > 0xA)
  {
    v19 = @"unknown";
  }

  else
  {
    v19 = off_1E7AFFFD8[a4];
  }

  v20 = v19;
  [(WFWorkflowRunRequest *)v18 setRunSource:v20];

  [(WFWorkflowRunRequest *)v18 setRemoteDialogPresenterEndpoint:v9];
  v23.receiver = self;
  v23.super_class = WFSuggestionsWorkflowRunnerClient;
  v21 = [(WFWorkflowRunnerClient *)&v23 initWithDescriptor:v16 runRequest:v18];

  return v21;
}

- (WFSuggestionsWorkflowRunnerClient)initWithLinkAction:(id)a3 bundleIdentifier:(id)a4 resultSurface:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFSuggestionsWorkflowRunnerClient.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"WFSuggestionsWorkflowRunnerClient.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

LABEL_3:
  v12 = [[WFLinkContextualAction alloc] initWithAction:v9 appBundleIdentifier:v11 extensionBundleIdentifier:0 authenticationPolicy:0];
  v13 = [[WFContextualActionContext alloc] initWithSurface:8];
  v14 = [[WFContextualActionRunDescriptor alloc] initWithAction:v12 context:v13];
  v15 = [[WFContextualActionRunRequest alloc] initWithAction:v12 actionContext:v13];
  [(WFWorkflowRunRequest *)v15 setPresentationMode:1];
  if (a5 - 1 > 2)
  {
    v16 = WFWorkflowRunSourceUnknown;
  }

  else
  {
    v16 = off_1E7AFF9E0[a5 - 1];
  }

  [(WFWorkflowRunRequest *)v15 setRunSource:*v16];
  v17 = [(WFWorkflowRunnerClient *)self initWithDescriptor:v14 runRequest:v15];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  return v18;
}

@end