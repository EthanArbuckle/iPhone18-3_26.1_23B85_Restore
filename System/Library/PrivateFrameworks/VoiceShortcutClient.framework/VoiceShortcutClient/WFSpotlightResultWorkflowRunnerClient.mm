@interface WFSpotlightResultWorkflowRunnerClient
- (BOOL)runnableRequiresSpotlightRefresh:(id)a3;
- (WFSpotlightResultWorkflowRunnerClient)initWithIntent:(id)a3;
- (WFSpotlightResultWorkflowRunnerClient)initWithIntent:(id)a3 executionContext:(int64_t)a4;
- (WFSpotlightResultWorkflowRunnerClient)initWithRunnable:(id)a3 surface:(unint64_t)a4;
- (void)handleWorkflowRunResult:(id)a3 completion:(id)a4;
- (void)start;
@end

@implementation WFSpotlightResultWorkflowRunnerClient

- (BOOL)runnableRequiresSpotlightRefresh:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFSpotlightResultWorkflowRunnerClient.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"runnable"}];

    v9 = 0;
    goto LABEL_5;
  }

  v7 = v5;
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
  v3 = [(WFWorkflowRunnerClient *)self runRequest];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
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

  v6 = [v5 action];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
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

  v9 = [v5 actionContext];
  [v8 wf_launchAppIfNeededUsingSurface:{objc_msgSend(v9, "surface")}];

  v10.receiver = self;
  v10.super_class = WFSpotlightResultWorkflowRunnerClient;
  [(WFWorkflowRunnerClient *)&v10 start];
}

- (void)handleWorkflowRunResult:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__WFSpotlightResultWorkflowRunnerClient_handleWorkflowRunResult_completion___block_invoke;
  v11[3] = &unk_1E7B01F90;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v10.receiver = self;
  v10.super_class = WFSpotlightResultWorkflowRunnerClient;
  v8 = v6;
  v9 = v7;
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

- (WFSpotlightResultWorkflowRunnerClient)initWithIntent:(id)a3 executionContext:(int64_t)a4
{
  v6 = MEMORY[0x1E696EA38];
  v7 = a3;
  v8 = [[v6 alloc] _initWithIntent:v7];

  v9 = WFWorkflowRunDescriptorForINShortcut(v8);

  v10 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:1];
  v11 = WFRunSourceForSpotlightExecutionContext(a4);
  [(WFWorkflowRunRequest *)v10 setRunSource:v11];

  [(WFWorkflowRunRequest *)v10 setDonateInteraction:0];
  v12 = [(WFWorkflowRunnerClient *)self initWithDescriptor:v9 runRequest:v10];

  return v12;
}

- (WFSpotlightResultWorkflowRunnerClient)initWithIntent:(id)a3
{
  v3 = [(WFSpotlightResultWorkflowRunnerClient *)self initWithIntent:a3 executionContext:0];
  v4 = v3;
  if (v3)
  {
    v5 = [(WFWorkflowRunnerClient *)v3 runRequest];
    [v5 setRunSource:@"spotlight-search-detail-page"];

    v6 = v4;
  }

  return v4;
}

- (WFSpotlightResultWorkflowRunnerClient)initWithRunnable:(id)a3 surface:(unint64_t)a4
{
  v7 = a3;
  objc_storeStrong(&self->_runnable, a3);
  v8 = [v7 runDescriptorForSurface:a4];
  v9 = [v7 runRequestForSurface:a4];
  v10 = [v7 settingBiomeStreamIdentifier];

  if (v10)
  {
    [v9 setPresentationMode:3];
  }

  v11 = [(WFWorkflowRunnerClient *)self initWithDescriptor:v8 runRequest:v9];

  return v11;
}

@end