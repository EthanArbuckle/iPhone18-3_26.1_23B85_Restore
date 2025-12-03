@interface WFHomeWorkflowController
- (WFHomeWorkflowController)init;
- (WFHomeWorkflowController)initWithWorkflow:(id)workflow;
- (WFOutOfProcessWorkflowController)workflowController;
- (void)outOfProcessWorkflowController:(id)controller didFinishWithResult:(id)result dialogAttribution:(id)attribution runResidency:(unint64_t)residency;
- (void)startWithCompletionHandler:(id)handler;
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

- (void)outOfProcessWorkflowController:(id)controller didFinishWithResult:(id)result dialogAttribution:(id)attribution runResidency:(unint64_t)residency
{
  resultCopy = result;
  error = [resultCopy error];
  if (error)
  {
    error2 = [resultCopy error];
    v9 = WFMakeHomeError(2, error2);
  }

  else
  {
    v9 = 0;
  }

  isCancelled = [resultCopy isCancelled];
  completionHandler = [(WFHomeWorkflowController *)self completionHandler];
  v12 = completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 16))(completionHandler, v9, isCancelled);
  }

  if (error)
  {
  }

  [(WFHomeWorkflowController *)self setCompletionHandler:0];
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [WFHomeWorkflowRunDescriptor alloc];
  workflow = [(WFHomeWorkflowController *)self workflow];
  v7 = [(WFHomeWorkflowRunDescriptor *)v5 initWithHomeWorkflow:workflow];

  v8 = [objc_alloc(MEMORY[0x1E69E0E20]) initWithInput:0 presentationMode:3];
  [v8 setRunSource:*MEMORY[0x1E69E1390]];
  workflowController = [(WFHomeWorkflowController *)self workflowController];
  v13 = 0;
  v10 = [workflowController runWorkflowWithDescriptor:v7 request:v8 error:&v13];
  v11 = v13;

  if (v10)
  {
    [(WFHomeWorkflowController *)self setCompletionHandler:handlerCopy];
  }

  else
  {
    v12 = WFMakeHomeError(1, v11);
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v12, 0);
    }
  }
}

- (WFHomeWorkflowController)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Not implemented"];

  return 0;
}

- (WFHomeWorkflowController)initWithWorkflow:(id)workflow
{
  workflowCopy = workflow;
  if (!workflowCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHomeWorkflowController.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"workflow"}];
  }

  v12.receiver = self;
  v12.super_class = WFHomeWorkflowController;
  v7 = [(WFHomeWorkflowController *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_workflow, workflow);
    v9 = v8;
  }

  return v8;
}

@end