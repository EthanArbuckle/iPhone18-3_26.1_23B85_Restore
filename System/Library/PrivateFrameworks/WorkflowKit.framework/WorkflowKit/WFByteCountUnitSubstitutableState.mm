@interface WFByteCountUnitSubstitutableState
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFByteCountUnitSubstitutableState

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

      variable3 = [(WFVariableSubstitutableParameterState *)self variable];
      v15 = objc_opt_class();
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __94__WFByteCountUnitSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v17[3] = &unk_1E837DE50;
      v18 = valueHandlerCopy;
      [variable3 getObjectRepresentationForClass:v15 context:contextCopy completionHandler:v17];

      variable2 = v18;
    }
  }

  else
  {
    number = [(WFNumberSubstitutableState *)self number];
    (*(valueHandlerCopy + 2))(valueHandlerCopy, number, 0);
  }
}

void __94__WFByteCountUnitSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = &unk_1F4A9B638;
  v9 = [&unk_1F4A9B638 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(&unk_1F4A9B638);
        }

        v13 = WFLabelForByteCountUnit([*(*(&v17 + 1) + 8 * v12) unsignedIntegerValue]);
        v14 = [v6 rangeOfString:v13 options:1];

        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          (*(*(a1 + 32) + 16))();

          goto LABEL_11;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [&unk_1F4A9B638 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  (*(*(a1 + 32) + 16))();
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
}

@end