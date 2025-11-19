@interface WFShojiSystemActionsRunnerClient
- (WFShojiSystemActionsRunnerClient)initWithContextualAction:(id)a3;
- (void)handleWorkflowRunResult:(id)a3 completion:(id)a4;
@end

@implementation WFShojiSystemActionsRunnerClient

- (void)handleWorkflowRunResult:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFWorkflowRunnerClient *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = v6;
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

    v13 = [(WFWorkflowRunnerClient *)self descriptor];
    if (v13)
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

    v16 = [v15 action];

    if ([v16 isReversible])
    {
      v17 = [v12 reversalState];

      if (v17)
      {
        v18 = [WFReverseContextualAction alloc];
        v19 = [v12 reversalState];
        v17 = [(WFReverseContextualAction *)v18 initWithActionToReverse:v16 reversalState:v19];
      }
    }

    else
    {
      v17 = 0;
    }

    v20 = [(WFWorkflowRunnerClient *)self delegate];
    [v20 workflowRunnerClient:self didFinishRunningAction:v16 withReverseAction:v17];
  }

  else
  {
    v21.receiver = self;
    v21.super_class = WFShojiSystemActionsRunnerClient;
    [(WFWorkflowRunnerClient *)&v21 handleWorkflowRunResult:v6 completion:v7];
  }
}

- (WFShojiSystemActionsRunnerClient)initWithContextualAction:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFShojiSystemActionsRunnerClient.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v6 = [[WFContextualActionContext alloc] initWithSurface:9];
  v7 = [[WFContextualActionRunDescriptor alloc] initWithAction:v5 context:v6];
  v8 = [[WFContextualActionRunRequest alloc] initWithAction:v5 actionContext:v6];
  v12.receiver = self;
  v12.super_class = WFShojiSystemActionsRunnerClient;
  v9 = [(WFWorkflowRunnerClient *)&v12 initWithDescriptor:v7 runRequest:v8];

  return v9;
}

@end