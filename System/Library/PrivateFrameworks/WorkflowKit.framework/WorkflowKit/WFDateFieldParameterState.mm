@interface WFDateFieldParameterState
+ (id)processingValueClasses;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFDateFieldParameterState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableStringParameterState *)self variableString];
  v12 = [v11 variablesOfType:@"Ask"];
  v13 = [v12 count];

  v14 = [v8 parameter];
  v15 = [v14 resultType];

  if (([v15 isEqualToString:@"String"] & 1) != 0 || v13)
  {
    v30.receiver = self;
    v30.super_class = WFDateFieldParameterState;
    [(WFVariableStringParameterState *)&v30 processWithContext:v8 userInputRequiredHandler:v9 valueHandler:v10];
  }

  else
  {
    v16 = [v15 isEqualToString:@"WFDetectedDate"];
    v17 = [(WFDateFieldParameterState *)self preprocessedDate];

    if (v17)
    {
      if (v16)
      {
        v18 = objc_alloc(MEMORY[0x1E6996DD0]);
        v19 = [(WFDateFieldParameterState *)self preprocessedDate];
        v20 = [v18 initWithDate:v19 timeIsSignificant:1];
        v10[2](v10, v20, 0);
      }

      else
      {
        v19 = [(WFDateFieldParameterState *)self preprocessedDate];
        v10[2](v10, v19, 0);
      }
    }

    else
    {
      v21 = [(WFVariableStringParameterState *)self variableString];
      if ([v21 representsSingleContentVariable])
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __86__WFDateFieldParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
        v27[3] = &unk_1E8378C50;
        v22 = &v28;
        v28 = v10;
        v29 = v16;
        [v21 processIntoContentItemsWithContext:v8 completionHandler:v27];
      }

      else
      {
        v23 = [(WFVariableStringParameterState *)self variableString];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __86__WFDateFieldParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_3;
        v24[3] = &unk_1E8378C78;
        v26 = v16;
        v22 = &v25;
        v25 = v10;
        [v23 processWithContext:v8 completionHandler:v24];
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