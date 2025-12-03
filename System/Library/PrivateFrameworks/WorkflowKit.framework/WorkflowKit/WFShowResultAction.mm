@interface WFShowResultAction
- (BOOL)getInputContentFromVariablesInParameterState:(id)state context:(id)context completionHandler:(id)handler;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFShowResultAction

- (BOOL)getInputContentFromVariablesInParameterState:(id)state context:(id)context completionHandler:(id)handler
{
  stateCopy = state;
  contextCopy = context;
  handlerCopy = handler;
  if (WFGetVariableInputContentForPreviewing(stateCopy, contextCopy, handlerCopy))
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFShowResultAction;
    v11 = [(WFAction *)&v13 getInputContentFromVariablesInParameterState:stateCopy context:contextCopy completionHandler:handlerCopy];
  }

  return v11;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  userInterface = [(WFAction *)self userInterface];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__WFShowResultAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_1E837E5E0;
  v6[4] = self;
  WFShowResult(inputCopy, userInterface, 1, v6);
}

@end