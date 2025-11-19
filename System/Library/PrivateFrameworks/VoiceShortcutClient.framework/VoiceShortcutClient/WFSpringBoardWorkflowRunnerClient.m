@interface WFSpringBoardWorkflowRunnerClient
- (WFSpringBoardWorkflowRunnerClient)initWithWebClipMetadata:(id)a3;
- (WFSpringBoardWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3;
- (void)showSingleStepCompletionWithCompletion:(id)a3;
- (void)start;
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6;
@end

@implementation WFSpringBoardWorkflowRunnerClient

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6
{
  retainedSelf = self->_retainedSelf;
  self->_retainedSelf = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)start
{
  objc_storeStrong(&self->_retainedSelf, self);
  v3.receiver = self;
  v3.super_class = WFSpringBoardWorkflowRunnerClient;
  [(WFWorkflowRunnerClient *)&v3 start];
}

- (void)showSingleStepCompletionWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(WFSpringBoardWorkflowRunnerClient *)self metadata];

  if (!v6)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFSpringBoardWorkflowRunnerClient.m" lineNumber:106 description:@"Class must be initialized with web clip metadata before showing single step completion"];
  }

  v9 = +[VCVoiceShortcutClient standardClient];
  v7 = [(WFSpringBoardWorkflowRunnerClient *)self metadata];
  [v9 showSingleStepCompletionForWebClip:v7 completion:v5];
}

- (WFSpringBoardWorkflowRunnerClient)initWithWorkflowIdentifier:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 hasPrefix:@"app-shortcut:"])
  {
    v5 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v28 = "[WFSpringBoardWorkflowRunnerClient initWithWorkflowIdentifier:]";
      _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_DEBUG, "%s Will run App Shortcut from base64 encoding.", buf, 0xCu);
    }

    v6 = [v4 substringFromIndex:{objc_msgSend(@"app-shortcut:", "length")}];

    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
    v26 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v26];
    v9 = v26;
    if (v8)
    {
      v10 = [WFAutoShortcutContextualAction alloc];
      v11 = [v8 underlyingAutoShortcut];
      v12 = [v8 phrase];
      v13 = [v8 underlyingAutoShortcut];
      [v13 bundleIdentifier];
      v24 = v7;
      v14 = v6;
      v16 = v15 = v9;
      v17 = [(WFAutoShortcutContextualAction *)v10 initWithAutoShortcut:v11 phrase:v12 alternativePhrases:0 bundleIdentifier:v16];

      v18 = [[WFContextualActionContext alloc] initWithSurface:5];
      v19 = [[WFContextualActionRunDescriptor alloc] initWithAction:v17 context:v18];

      v9 = v15;
      v6 = v14;
      v7 = v24;
    }

    else
    {
      v17 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v28 = "[WFSpringBoardWorkflowRunnerClient initWithWorkflowIdentifier:]";
        v29 = 2112;
        v30 = v9;
        _os_log_impl(&dword_1B1DE3000, v17, OS_LOG_TYPE_ERROR, "%s Failed to decode app shortcut with error: %@", buf, 0x16u);
      }

      v19 = 0;
    }

    if (!v8)
    {
      v21 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v19 = [[WFWorkflowDatabaseRunDescriptor alloc] initWithIdentifier:v4];
  }

  v20 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:1];
  [(WFWorkflowRunRequest *)v20 setRunSource:@"homescreen"];
  v25.receiver = self;
  v25.super_class = WFSpringBoardWorkflowRunnerClient;
  self = [(WFWorkflowRunnerClient *)&v25 initWithDescriptor:v19 runRequest:v20];

  v21 = self;
LABEL_12:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (WFSpringBoardWorkflowRunnerClient)initWithWebClipMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 shortcutIdentifier];
  v6 = [(WFSpringBoardWorkflowRunnerClient *)self initWithWorkflowIdentifier:v5];

  [(WFSpringBoardWorkflowRunnerClient *)v6 setMetadata:v4];
  [(WFWorkflowRunnerClient *)v6 setDelegate:v6];

  return v6;
}

@end