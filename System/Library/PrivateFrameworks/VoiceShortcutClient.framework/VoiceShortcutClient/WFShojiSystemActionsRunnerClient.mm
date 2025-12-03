@interface WFShojiSystemActionsRunnerClient
- (WFShojiSystemActionsRunnerClient)initWithContextualAction:(id)action;
- (void)handleWorkflowRunResult:(id)result completion:(id)completion;
@end

@implementation WFShojiSystemActionsRunnerClient

- (void)handleWorkflowRunResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  delegate = [(WFWorkflowRunnerClient *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = resultCopy;
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

    v12 = v11;

    descriptor = [(WFWorkflowRunnerClient *)self descriptor];
    if (descriptor)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = descriptor;
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

    action = [v15 action];

    if ([action isReversible])
    {
      reversalState = [v12 reversalState];

      if (reversalState)
      {
        v18 = [WFReverseContextualAction alloc];
        reversalState2 = [v12 reversalState];
        reversalState = [(WFReverseContextualAction *)v18 initWithActionToReverse:action reversalState:reversalState2];
      }
    }

    else
    {
      reversalState = 0;
    }

    delegate2 = [(WFWorkflowRunnerClient *)self delegate];
    [delegate2 workflowRunnerClient:self didFinishRunningAction:action withReverseAction:reversalState];
  }

  else
  {
    v21.receiver = self;
    v21.super_class = WFShojiSystemActionsRunnerClient;
    [(WFWorkflowRunnerClient *)&v21 handleWorkflowRunResult:resultCopy completion:completionCopy];
  }
}

- (WFShojiSystemActionsRunnerClient)initWithContextualAction:(id)action
{
  actionCopy = action;
  if (!actionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShojiSystemActionsRunnerClient.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v6 = [[WFContextualActionContext alloc] initWithSurface:9];
  v7 = [[WFContextualActionRunDescriptor alloc] initWithAction:actionCopy context:v6];
  v8 = [[WFContextualActionRunRequest alloc] initWithAction:actionCopy actionContext:v6];
  v12.receiver = self;
  v12.super_class = WFShojiSystemActionsRunnerClient;
  v9 = [(WFWorkflowRunnerClient *)&v12 initWithDescriptor:v7 runRequest:v8];

  return v9;
}

@end