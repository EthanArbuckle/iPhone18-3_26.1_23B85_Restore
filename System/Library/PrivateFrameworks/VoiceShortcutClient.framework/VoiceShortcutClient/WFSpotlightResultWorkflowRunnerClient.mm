@interface WFSpotlightResultWorkflowRunnerClient
- (BOOL)runnableRequiresSpotlightRefresh:(id)refresh;
- (WFSpotlightResultWorkflowRunnerClient)initWithIntent:(id)intent;
- (WFSpotlightResultWorkflowRunnerClient)initWithIntent:(id)intent executionContext:(int64_t)context;
- (WFSpotlightResultWorkflowRunnerClient)initWithRunnable:(id)runnable surface:(unint64_t)surface;
- (void)handleWorkflowRunResult:(id)result completion:(id)completion;
- (void)start;
@end

@implementation WFSpotlightResultWorkflowRunnerClient

- (BOOL)runnableRequiresSpotlightRefresh:(id)refresh
{
  refreshCopy = refresh;
  v6 = refreshCopy;
  if (!refreshCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSpotlightResultWorkflowRunnerClient.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"runnable"}];

    v9 = 0;
    goto LABEL_5;
  }

  v7 = refreshCopy;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v10 = v7;
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();
LABEL_5:

    goto LABEL_6;
  }

  v9 = 1;
LABEL_6:

  return v9 & 1;
}

- (void)start
{
  runRequest = [(WFWorkflowRunnerClient *)self runRequest];
  if (runRequest)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = runRequest;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  action = [v5 action];
  if (action)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = action;
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

  v8 = v7;

  actionContext = [v5 actionContext];
  [v8 wf_launchAppIfNeededUsingSurface:{objc_msgSend(actionContext, "surface")}];

  v10.receiver = self;
  v10.super_class = WFSpotlightResultWorkflowRunnerClient;
  [(WFWorkflowRunnerClient *)&v10 start];
}

- (void)handleWorkflowRunResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__WFSpotlightResultWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke;
  v11[3] = &unk_1E7B01F90;
  v12 = resultCopy;
  v13 = completionCopy;
  v11[4] = self;
  v10.receiver = self;
  v10.super_class = WFSpotlightResultWorkflowRunnerClient;
  v8 = resultCopy;
  v9 = completionCopy;
  [(WFWorkflowRunnerClient *)&v10 handleWorkflowRunResult:v8 completion:v11];
}

uint64_t __76__WFSpotlightResultWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[11];
  }

  v7 = v2;
  v3 = [*(a1 + 40) error];
  if (v3)
  {
    goto LABEL_4;
  }

  v4 = [*(a1 + 40) isCancelled];
  v5 = v7;
  if (v7)
  {
    if ((v4 & 1) == 0)
    {
      v4 = [*(a1 + 32) runnableRequiresSpotlightRefresh:v7];
      v5 = v7;
      if (v4)
      {
        v3 = [MEMORY[0x1E696AD88] defaultCenter];
        [v3 postNotificationName:@"com.apple.shortcuts.spotlight.refresh" object:0];
LABEL_4:

        v5 = v7;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (WFSpotlightResultWorkflowRunnerClient)initWithIntent:(id)intent executionContext:(int64_t)context
{
  v6 = MEMORY[0x1E696EA38];
  intentCopy = intent;
  v8 = [[v6 alloc] _initWithIntent:intentCopy];

  v9 = WFWorkflowRunDescriptorForINShortcut(v8);

  v10 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:1];
  v11 = WFRunSourceForSpotlightExecutionContext(context);
  [(WFWorkflowRunRequest *)v10 setRunSource:v11];

  [(WFWorkflowRunRequest *)v10 setDonateInteraction:0];
  v12 = [(WFWorkflowRunnerClient *)self initWithDescriptor:v9 runRequest:v10];

  return v12;
}

- (WFSpotlightResultWorkflowRunnerClient)initWithIntent:(id)intent
{
  v3 = [(WFSpotlightResultWorkflowRunnerClient *)self initWithIntent:intent executionContext:0];
  v4 = v3;
  if (v3)
  {
    runRequest = [(WFWorkflowRunnerClient *)v3 runRequest];
    [runRequest setRunSource:@"spotlight-search-detail-page"];

    v6 = v4;
  }

  return v4;
}

- (WFSpotlightResultWorkflowRunnerClient)initWithRunnable:(id)runnable surface:(unint64_t)surface
{
  runnableCopy = runnable;
  objc_storeStrong(&self->_runnable, runnable);
  v8 = [runnableCopy runDescriptorForSurface:surface];
  v9 = [runnableCopy runRequestForSurface:surface];
  settingBiomeStreamIdentifier = [runnableCopy settingBiomeStreamIdentifier];

  if (settingBiomeStreamIdentifier)
  {
    [v9 setPresentationMode:3];
  }

  v11 = [(WFWorkflowRunnerClient *)self initWithDescriptor:v8 runRequest:v9];

  return v11;
}

@end