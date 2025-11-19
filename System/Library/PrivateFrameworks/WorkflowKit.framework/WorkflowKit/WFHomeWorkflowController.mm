@interface WFHomeWorkflowController
- (WFHomeWorkflowController)init;
- (WFHomeWorkflowController)initWithWorkflow:(id)a3;
- (WFOutOfProcessWorkflowController)workflowController;
- (void)outOfProcessWorkflowController:(id)a3 didFinishWithResult:(id)a4 dialogAttribution:(id)a5 runResidency:(unint64_t)a6;
- (void)startWithCompletionHandler:(id)a3;
@end

@implementation WFHomeWorkflowController

- (WFOutOfProcessWorkflowController)workflowController
{
  workflowController = self->_workflowController;
  if (!workflowController)
  {
    v4 = [objc_alloc(MEMORY[0x1E69E0C20]) initWithEnvironment:1 runningContext:0 presentationMode:0];
    v5 = self->_workflowController;
    self->_workflowController = v4;

    [(WFOutOfProcessWorkflowController *)self->_workflowController setDelegate:self];
    workflowController = self->_workflowController;
  }

  return workflowController;
}

- (void)outOfProcessWorkflowController:(id)a3 didFinishWithResult:(id)a4 dialogAttribution:(id)a5 runResidency:(unint64_t)a6
{
  v13 = a4;
  v8 = [v13 error];
  if (v8)
  {
    v6 = [v13 error];
    v9 = WFMakeHomeError(2, v6);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v13 isCancelled];
  v11 = [(WFHomeWorkflowController *)self completionHandler];
  v12 = v11;
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v10);
  }

  if (v8)
  {
  }

  [(WFHomeWorkflowController *)self setCompletionHandler:0];
}

- (void)startWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [WFHomeWorkflowRunDescriptor alloc];
  v6 = [(WFHomeWorkflowController *)self workflow];
  v7 = [(WFHomeWorkflowRunDescriptor *)v5 initWithHomeWorkflow:v6];

  v8 = [objc_alloc(MEMORY[0x1E69E0E20]) initWithInput:0 presentationMode:3];
  [v8 setRunSource:*MEMORY[0x1E69E1390]];
  v9 = [(WFHomeWorkflowController *)self workflowController];
  v13 = 0;
  v10 = [v9 runWorkflowWithDescriptor:v7 request:v8 error:&v13];
  v11 = v13;

  if (v10)
  {
    [(WFHomeWorkflowController *)self setCompletionHandler:v4];
  }

  else
  {
    v12 = WFMakeHomeError(1, v11);
    if (v4)
    {
      v4[2](v4, v12, 0);
    }
  }
}

- (WFHomeWorkflowController)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Not implemented"];

  return 0;
}

- (WFHomeWorkflowController)initWithWorkflow:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFHomeWorkflowController.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"workflow"}];
  }

  v12.receiver = self;
  v12.super_class = WFHomeWorkflowController;
  v7 = [(WFHomeWorkflowController *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_workflow, a3);
    v9 = v8;
  }

  return v8;
}

@end