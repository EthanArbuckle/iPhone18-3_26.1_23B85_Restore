@interface WFCalendarUnitSubstitutableState
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFCalendarUnitSubstitutableState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v11)
  {
    v12 = [(WFVariableSubstitutableParameterState *)self variable];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = [v12 prompt];
      v9[2](v9, v13, 0);
    }

    else
    {

      v14 = [(WFVariableSubstitutableParameterState *)self variable];
      v15 = objc_opt_class();
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __93__WFCalendarUnitSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v17[3] = &unk_1E837DE50;
      v18 = v10;
      [v14 getObjectRepresentationForClass:v15 context:v8 completionHandler:v17];

      v12 = v18;
    }
  }

  else
  {
    v16 = [(WFNumberSubstitutableState *)self number];
    (*(v10 + 2))(v10, v16, 0);
  }
}

void __93__WFCalendarUnitSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = &unk_1F4A9B620;
  v9 = [&unk_1F4A9B620 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(&unk_1F4A9B620);
        }

        v13 = WFLabelForCalendarUnit([*(*(&v17 + 1) + 8 * v12) unsignedIntegerValue], 0, 1);
        v14 = [v6 rangeOfString:v13 options:1];

        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          (*(*(a1 + 32) + 16))();

          goto LABEL_11;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [&unk_1F4A9B620 countByEnumeratingWithState:&v17 objects:v21 count:16];
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