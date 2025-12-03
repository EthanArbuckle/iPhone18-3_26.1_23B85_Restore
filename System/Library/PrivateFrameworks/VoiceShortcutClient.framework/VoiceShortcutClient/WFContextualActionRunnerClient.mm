@interface WFContextualActionRunnerClient
- (WFContextualActionRunnerClient)initWithContextualAction:(id)action actionContext:(id)context;
- (void)handleWorkflowRunResult:(id)result completion:(id)completion;
- (void)start;
- (void)startFromQueue;
@end

@implementation WFContextualActionRunnerClient

- (void)startFromQueue
{
  descriptor = [(WFWorkflowRunnerClient *)self descriptor];
  if (descriptor)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = descriptor;
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
  context = [v5 context];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__WFContextualActionRunnerClient_startFromQueue__block_invoke;
  v9[3] = &unk_1E7AFFA78;
  v9[4] = self;
  v10 = context;
  v8 = context;
  [action configureIfNeededForContext:v8 completion:v9];
}

void __48__WFContextualActionRunnerClient_startFromQueue__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [[WFContextualActionRunRequest alloc] initWithAction:v5 actionContext:*(a1 + 40)];
    v9 = [[WFContextualActionRunDescriptor alloc] initWithAction:v5 context:*(a1 + 40)];
    [*(a1 + 32) setRunRequest:v8];
    [*(a1 + 32) setDescriptor:v9];
    v10 = [*(a1 + 32) runRequest];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = v11;

    v14 = [v13 action];
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [v13 actionContext];
    [v16 wf_launchAppIfNeededUsingSurface:{objc_msgSend(v17, "surface")}];

    v18.receiver = *(a1 + 32);
    v18.super_class = WFContextualActionRunnerClient;
    objc_msgSendSuper2(&v18, sel_start);
  }

  else
  {
    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    }

    v8 = v12;
    v9 = [[WFWorkflowRunResult alloc] initWithError:v12];
    [*(a1 + 32) dispatchWorkflowResultHandlingWithResult:v9];
  }
}

- (void)start
{
  v3 = +[WFContextualActionRunQueue sharedQueue];
  [v3 enqueueRun:self];
}

- (void)handleWorkflowRunResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  v8 = +[WFContextualActionRunQueue sharedQueue];
  [v8 runFinished:self];

  delegate = [(WFWorkflowRunnerClient *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = resultCopy;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      delegate2 = [(WFWorkflowRunnerClient *)self delegate];
      files = [v11 files];
      error = [v11 error];
      [delegate2 workflowRunnerClient:self didFinishRunningWorkflowWithOutputFiles:files error:error cancelled:{objc_msgSend(v11, "isCancelled")}];
    }

    else
    {

      delegate3 = [(WFWorkflowRunnerClient *)self delegate];
      delegate2 = [v11 error];
      [delegate3 workflowRunnerClient:self didFinishRunningWorkflowWithOutputFiles:0 error:delegate2 cancelled:{objc_msgSend(v11, "isCancelled")}];
      v11 = delegate3;
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    v16.receiver = self;
    v16.super_class = WFContextualActionRunnerClient;
    [(WFWorkflowRunnerClient *)&v16 handleWorkflowRunResult:resultCopy completion:completionCopy];
  }
}

- (WFContextualActionRunnerClient)initWithContextualAction:(id)action actionContext:(id)context
{
  contextCopy = context;
  actionCopy = action;
  v8 = [[WFContextualActionRunDescriptor alloc] initWithAction:actionCopy context:contextCopy];
  v9 = [[WFContextualActionRunRequest alloc] initWithAction:actionCopy actionContext:contextCopy];

  v10 = [(WFWorkflowRunnerClient *)self initWithDescriptor:v8 runRequest:v9];
  return v10;
}

@end