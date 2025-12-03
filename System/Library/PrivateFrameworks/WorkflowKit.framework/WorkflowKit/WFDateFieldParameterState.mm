@interface WFDateFieldParameterState
+ (id)processingValueClasses;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFDateFieldParameterState

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variableString = [(WFVariableStringParameterState *)self variableString];
  v12 = [variableString variablesOfType:@"Ask"];
  v13 = [v12 count];

  parameter = [contextCopy parameter];
  resultType = [parameter resultType];

  if (([resultType isEqualToString:@"String"] & 1) != 0 || v13)
  {
    v30.receiver = self;
    v30.super_class = WFDateFieldParameterState;
    [(WFVariableStringParameterState *)&v30 processWithContext:contextCopy userInputRequiredHandler:handlerCopy valueHandler:valueHandlerCopy];
  }

  else
  {
    v16 = [resultType isEqualToString:@"WFDetectedDate"];
    preprocessedDate = [(WFDateFieldParameterState *)self preprocessedDate];

    if (preprocessedDate)
    {
      if (v16)
      {
        v18 = objc_alloc(MEMORY[0x1E6996DD0]);
        preprocessedDate2 = [(WFDateFieldParameterState *)self preprocessedDate];
        v20 = [v18 initWithDate:preprocessedDate2 timeIsSignificant:1];
        valueHandlerCopy[2](valueHandlerCopy, v20, 0);
      }

      else
      {
        preprocessedDate2 = [(WFDateFieldParameterState *)self preprocessedDate];
        valueHandlerCopy[2](valueHandlerCopy, preprocessedDate2, 0);
      }
    }

    else
    {
      variableString2 = [(WFVariableStringParameterState *)self variableString];
      if ([variableString2 representsSingleContentVariable])
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __86__WFDateFieldParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
        v27[3] = &unk_1E8378C50;
        v22 = &v28;
        v28 = valueHandlerCopy;
        v29 = v16;
        [variableString2 processIntoContentItemsWithContext:contextCopy completionHandler:v27];
      }

      else
      {
        variableString3 = [(WFVariableStringParameterState *)self variableString];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __86__WFDateFieldParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_3;
        v24[3] = &unk_1E8378C78;
        v26 = v16;
        v22 = &v25;
        v25 = valueHandlerCopy;
        [variableString3 processWithContext:contextCopy completionHandler:v24];
      }
    }
  }
}

void __86__WFDateFieldParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __86__WFDateFieldParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
    v4[3] = &unk_1E8378C28;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v3 getObjectRepresentation:v4 forClass:objc_opt_class()];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __86__WFDateFieldParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x1E6996DC0];
  if (*(a1 + 40) == 1)
  {
    v17 = a5;
    v9 = a5;
    v10 = &v17;
    v11 = [v8 detectedDatesInString:a2 error:&v17];
  }

  else
  {
    v16 = a5;
    v12 = a5;
    v10 = &v16;
    v11 = [v8 datesInString:a2 error:&v16];
  }

  v13 = v11;
  v14 = *v10;

  v15 = [v13 firstObject];

  (*(*(a1 + 32) + 16))(*(a1 + 32), v15);
}

void __86__WFDateFieldParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (v12)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    if (v9 == 1)
    {
      v11 = [objc_alloc(MEMORY[0x1E6996DD0]) initWithDate:v12 timeIsSignificant:1];
      (*(v10 + 16))(v10, v11, 0);
    }

    else
    {
      (*(v10 + 16))(v10);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

+ (id)processingValueClasses
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end