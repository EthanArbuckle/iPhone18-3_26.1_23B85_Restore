@interface SearchUIPerformIntentHandler
- (id)destinationApplicationBundleIdentifier;
- (void)getUserActivityForCommand:(id)a3 environment:(id)a4 completionHandler:(id)a5;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6;
@end

@implementation SearchUIPerformIntentHandler

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v6 = a3;
  v7 = [v6 intentMessageData];
  if (!v7)
  {
    v16 = SearchUIGeneralLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SearchUIPerformIntentHandler performCommand:v16 triggerEvent:? environment:?];
    }

    goto LABEL_22;
  }

  if (![v6 isRunnableWorkflow])
  {
    v17 = [v6 intentMessageName];
    v9 = INIntentCreate();

    if (!v9)
    {
      v22 = 0;
      v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v22];
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
    v10 = [(SearchUICommandHandler *)self rowModel];
    v11 = [v10 cardSection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(SearchUICommandHandler *)self rowModel];
      v13 = [v12 identifyingResult];
      v14 = [v13 isLocalApplicationResult];

      if (v14)
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
      v21 = [(SearchUIPerformIntentHandler *)self runViewSource];
      [v16 setRunViewSource:v21];
    }

    [v16 setDelegate:self];
    [v16 start];
    [(SearchUIPerformIntentHandler *)self setRunnerClient:v16];
    objc_storeStrong(&s_intentHandler, self);
LABEL_22:
  }
}

- (void)getUserActivityForCommand:(id)a3 environment:(id)a4 completionHandler:(id)a5
{
  v12 = a3;
  v6 = a5;
  v7 = [v12 intentMessageName];
  v8 = [v12 intentMessageData];
  v9 = INIntentCreate();

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithIntent:v9];
    [v10 _setExecutionContext:5];
    v11 = [v12 applicationBundleIdentifier];
    v6[2](v6, v10, v11);
  }
}

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = SearchUITapLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SearchUIPerformIntentHandler workflowRunnerClient:v10 didFinishRunningWorkflowWithOutput:v11 error:? cancelled:?];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = [v8 runViewSource];
    [v12 postNotificationName:@"SearchUICommandHandlerShortcutDidEndNotification" object:v13];
  }
}

- (id)destinationApplicationBundleIdentifier
{
  v2 = [(SearchUICommandHandler *)self command];
  v3 = [v2 applicationBundleIdentifier];

  return v3;
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