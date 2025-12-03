@interface WFContentArrayParameterState
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFContentArrayParameterState

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  valueHandlerCopy = valueHandler;
  handlerCopy = handler;
  contextCopy = context;
  v11 = objc_opt_class();
  values = [(WFArrayParameterState *)self values];
  v13 = objc_opt_class();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__WFContentArrayParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
  v15[3] = &unk_1E837DA88;
  v16 = valueHandlerCopy;
  v14 = valueHandlerCopy;
  [v11 processValues:values context:contextCopy processingClass:v13 userInputRequiredHandler:handlerCopy valueHandler:v15 processSingleVariableStringsAsContentItems:1];
}

void __89__WFContentArrayParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v7 addItem:v13];
          }

          else
          {
            [v7 addObject:{v13, v15}];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end