@interface WFFileEntityParameterState
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFFileEntityParameterState

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self variable];
    if (variable2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      prompt = [variable2 prompt];
      handlerCopy[2](handlerCopy, prompt, 0);
    }

    else
    {

      processingValueClass = [objc_opt_class() processingValueClass];
      if ([processingValueClass isEqual:objc_opt_class()] && (-[WFVariableSubstitutableParameterState variable](self, "variable"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "possibleContentClasses"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(objc_msgSend(objc_msgSend(v16, "firstObject"), "superclass"), "isEqual:", objc_opt_class()), v16, v15, (v17 & 1) == 0))
      {
        variable3 = [(WFVariableSubstitutableParameterState *)self variable];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __87__WFFileEntityParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
        v23[3] = &unk_1E83796D8;
        v24 = valueHandlerCopy;
        [variable3 getFileRepresentationWithContext:contextCopy completionHandler:v23];

        variable2 = v24;
      }

      else
      {
        variable4 = [(WFVariableSubstitutableParameterState *)self variable];
        v19 = objc_opt_class();
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __87__WFFileEntityParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
        v21[3] = &unk_1E83796B0;
        v22 = valueHandlerCopy;
        [variable4 getObjectRepresentationForClass:v19 context:contextCopy completionHandler:v21];

        variable2 = v22;
      }
    }
  }

  else
  {
    v25.receiver = self;
    v25.super_class = WFFileEntityParameterState;
    [(WFFileParameterState *)&v25 processWithContext:contextCopy userInputRequiredHandler:handlerCopy valueHandler:valueHandlerCopy];
  }
}

@end