@interface SearchUIPerformIntentHandler
- (id)destinationApplicationBundleIdentifier;
- (void)getUserActivityForCommand:(id)command environment:(id)environment completionHandler:(id)handler;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
@end

@implementation SearchUIPerformIntentHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  commandCopy = command;
  intentMessageData = [commandCopy intentMessageData];
  if (!intentMessageData)
  {
    v16 = SearchUIGeneralLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SearchUIPerformIntentHandler performCommand:v16 triggerEvent:? environment:?];
    }

    goto LABEL_22;
  }

  if (![commandCopy isRunnableWorkflow])
  {
    intentMessageName = [commandCopy intentMessageName];
    v9 = INIntentCreate();

    if (!v9)
    {
      v22 = 0;
      v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:intentMessageData error:&v22];
      v18 = v22;
      if (v18)
      {
        v19 = SearchUIGeneralLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [SearchUIPerformIntentHandler performCommand:v18 triggerEvent:v19 environment:?];
        }
      }
    }

    v20 = [objc_alloc(MEMORY[0x1E69E0D58]) initWithIntent:v9 executionContext:5];
    goto LABEL_19;
  }

  v8 = WFSpotlightResultRunnableFromData();
  if (v8)
  {
    v9 = v8;
    rowModel = [(SearchUICommandHandler *)self rowModel];
    cardSection = [rowModel cardSection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rowModel2 = [(SearchUICommandHandler *)self rowModel];
      identifyingResult = [rowModel2 identifyingResult];
      isLocalApplicationResult = [identifyingResult isLocalApplicationResult];

      if (isLocalApplicationResult)
      {
        v15 = 4;
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {

      v15 = 1;
    }

    v20 = [objc_alloc(MEMORY[0x1E69E0D58]) initWithRunnable:v9 surface:v15];
LABEL_19:
    v16 = v20;
    if (objc_opt_respondsToSelector())
    {
      runViewSource = [(SearchUIPerformIntentHandler *)self runViewSource];
      [v16 setRunViewSource:runViewSource];
    }

    [v16 setDelegate:self];
    [v16 start];
    [(SearchUIPerformIntentHandler *)self setRunnerClient:v16];
    objc_storeStrong(&s_intentHandler, self);
LABEL_22:
  }
}

- (void)getUserActivityForCommand:(id)command environment:(id)environment completionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  intentMessageName = [commandCopy intentMessageName];
  intentMessageData = [commandCopy intentMessageData];
  v9 = INIntentCreate();

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithIntent:v9];
    [v10 _setExecutionContext:5];
    applicationBundleIdentifier = [commandCopy applicationBundleIdentifier];
    handlerCopy[2](handlerCopy, v10, applicationBundleIdentifier);
  }
}

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled
{
  clientCopy = client;
  outputCopy = output;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = SearchUITapLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SearchUIPerformIntentHandler workflowRunnerClient:errorCopy didFinishRunningWorkflowWithOutput:v11 error:? cancelled:?];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    runViewSource = [clientCopy runViewSource];
    [defaultCenter postNotificationName:@"SearchUICommandHandlerShortcutDidEndNotification" object:runViewSource];
  }
}

- (id)destinationApplicationBundleIdentifier
{
  command = [(SearchUICommandHandler *)self command];
  applicationBundleIdentifier = [command applicationBundleIdentifier];

  return applicationBundleIdentifier;
}

- (void)performCommand:(uint64_t)a1 triggerEvent:(NSObject *)a2 environment:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "SearchuiPerformIntentHandler: %@", &v2, 0xCu);
}

- (void)workflowRunnerClient:(uint64_t)a1 didFinishRunningWorkflowWithOutput:(NSObject *)a2 error:cancelled:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "SearchUIPerformIntentHandler: workflowRunnerClient didFinishRunningWorkflowWithError: %@", &v2, 0xCu);
}

@end