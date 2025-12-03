@interface WFSuggestionsWorkflowRunnerClient
- (WFSuggestionsWorkflowRunnerClient)initWithINShortcut:(id)shortcut executionContext:(int64_t)context remoteDialogPresenterEndpoint:(id)endpoint;
- (WFSuggestionsWorkflowRunnerClient)initWithLinkAction:(id)action bundleIdentifier:(id)identifier resultSurface:(unint64_t)surface;
@end

@implementation WFSuggestionsWorkflowRunnerClient

- (WFSuggestionsWorkflowRunnerClient)initWithINShortcut:(id)shortcut executionContext:(int64_t)context remoteDialogPresenterEndpoint:(id)endpoint
{
  shortcutCopy = shortcut;
  endpointCopy = endpoint;
  intent = [shortcutCopy intent];
  if (intent && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [WFWorkflowDatabaseRunDescriptor alloc];
    workflow = [intent workflow];
    vocabularyIdentifier = [workflow vocabularyIdentifier];
    workflow2 = [intent workflow];
    spokenPhrase = [workflow2 spokenPhrase];
    v16 = [(WFWorkflowDatabaseRunDescriptor *)v11 initWithIdentifier:vocabularyIdentifier name:spokenPhrase];

    v17 = 1;
  }

  else
  {

    v16 = [[WFINShortcutRunDescriptor alloc] initWithShortcut:shortcutCopy];
    v17 = 0;
  }

  v18 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:v17];
  if (context > 0xA)
  {
    v19 = @"unknown";
  }

  else
  {
    v19 = off_1E7AFFFD8[context];
  }

  v20 = v19;
  [(WFWorkflowRunRequest *)v18 setRunSource:v20];

  [(WFWorkflowRunRequest *)v18 setRemoteDialogPresenterEndpoint:endpointCopy];
  v23.receiver = self;
  v23.super_class = WFSuggestionsWorkflowRunnerClient;
  v21 = [(WFWorkflowRunnerClient *)&v23 initWithDescriptor:v16 runRequest:v18];

  return v21;
}

- (WFSuggestionsWorkflowRunnerClient)initWithLinkAction:(id)action bundleIdentifier:(id)identifier resultSurface:(unint64_t)surface
{
  actionCopy = action;
  identifierCopy = identifier;
  v11 = identifierCopy;
  if (actionCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSuggestionsWorkflowRunnerClient.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFSuggestionsWorkflowRunnerClient.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

LABEL_3:
  v12 = [[WFLinkContextualAction alloc] initWithAction:actionCopy appBundleIdentifier:v11 extensionBundleIdentifier:0 authenticationPolicy:0];
  v13 = [[WFContextualActionContext alloc] initWithSurface:8];
  v14 = [[WFContextualActionRunDescriptor alloc] initWithAction:v12 context:v13];
  v15 = [[WFContextualActionRunRequest alloc] initWithAction:v12 actionContext:v13];
  [(WFWorkflowRunRequest *)v15 setPresentationMode:1];
  if (surface - 1 > 2)
  {
    v16 = WFWorkflowRunSourceUnknown;
  }

  else
  {
    v16 = off_1E7AFF9E0[surface - 1];
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