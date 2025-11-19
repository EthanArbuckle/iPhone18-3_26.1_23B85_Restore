@interface WFOutputAction
- (BOOL)getInputContentFromVariablesInParameterState:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (BOOL)hasOutputFallback;
- (BOOL)outputSurfaceIsAvailable;
- (BOOL)setParameterState:(id)a3 forKey:(id)a4;
- (id)outputContentClasses;
- (id)outputVariableString;
- (id)runSource;
- (id)runningContext;
- (unint64_t)outputBehavior;
- (void)finishRunningWithOutput:(id)a3 error:(id)a4;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFOutputAction

- (id)outputContentClasses
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [(WFOutputAction *)self outputVariableString];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 variables];
    v5 = [v4 count];
    v6 = [v3 stringsAndVariables];
    v7 = [v6 count];

    if (v5 == v7)
    {
      v8 = objc_opt_new();
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = [v3 variables];
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v18 + 1) + 8 * i) possibleAggrandizedContentClasses];
            [v8 unionOrderedSet:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v11);
      }

      v15 = [v8 array];
    }

    else
    {
      v22 = objc_opt_class();
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    }
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)getInputContentFromVariablesInParameterState:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (WFGetVariableInputContentForPreviewing(v8, v9, v10))
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFOutputAction;
    v11 = [(WFAction *)&v13 getInputContentFromVariablesInParameterState:v8 context:v9 completionHandler:v10];
  }

  return v11;
}

- (id)outputVariableString
{
  v2 = [(WFAction *)self parameterStateForKey:@"WFOutput"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 variableString];

  return v5;
}

- (BOOL)hasOutputFallback
{
  v2 = [(WFAction *)self parameterStateForKey:@"WFNoOutputSurfaceBehavior"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 value];

  LOBYTE(v4) = [v5 isEqualToString:@"Do Nothing"];
  return v4 ^ 1;
}

- (id)runningContext
{
  v3 = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFAction *)self runningDelegate];
    v6 = [v5 currentRunningContextForAction:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)runSource
{
  v2 = [(WFOutputAction *)self runningContext];
  v3 = [v2 runSource];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = *MEMORY[0x1E69E1428];
  }

  v6 = v5;

  return v5;
}

- (unint64_t)outputBehavior
{
  v2 = [(WFOutputAction *)self runningContext];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 outputBehavior];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)outputSurfaceIsAvailable
{
  v3 = [(WFOutputAction *)self runSource];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69E13D8]];

  return (v4 & 1) != 0 || [(WFOutputAction *)self outputBehavior]!= 1;
}

- (BOOL)setParameterState:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = WFOutputAction;
  v7 = [(WFAction *)&v16 setParameterState:a3 forKey:v6];
  if (v7)
  {
    v8 = [(WFAction *)self parameterStateForKey:@"WFResponse"];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [v6 isEqualToString:@"WFNoOutputSurfaceBehavior"];
    v12 = [v10 variableString];

    v13 = [v12 isEmpty];
    if (v11 && v13)
    {
      v14 = [(WFAction *)self parameterStateForKey:@"WFOutput"];
      [(WFOutputAction *)self setParameterState:v14 forKey:@"WFResponse"];
    }
  }

  return v7;
}

- (void)finishRunningWithOutput:(id)a3 error:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = *MEMORY[0x1E69E9840];

    [(WFAction *)self finishRunningWithError:a4];
  }

  else
  {
    [(WFAction *)self setOutput:a3];
    v6 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A588];
    v7 = WFLocalizedString(@"User requested shortcut exit.");
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v6 errorWithDomain:@"WFActionErrorDomain" code:4 userInfo:v8];

    [(WFAction *)self finishRunningWithError:v9];
    v10 = *MEMORY[0x1E69E9840];
  }
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self parameterValueForKey:@"WFNoOutputSurfaceBehavior" ofClass:objc_opt_class()];
  if (-[WFOutputAction outputSurfaceIsAvailable](self, "outputSurfaceIsAvailable") || ![v4 numberOfItems])
  {
    v8 = self;
    v9 = v4;
  }

  else
  {
    if ([v5 isEqualToString:@"Respond"])
    {
      v6 = [(WFAction *)self parameterValueForKey:@"WFResponse" ofClass:objc_opt_class()];
      if (!v6)
      {
        [(WFOutputAction *)self finishRunningWithOutput:0 error:0];
        goto LABEL_13;
      }

      v7 = [(WFAction *)self userInterface];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __45__WFOutputAction_runAsynchronouslyWithInput___block_invoke;
      v15[3] = &unk_1E837E5E0;
      v15[4] = self;
      WFShowResult(v6, v7, 1, v15);
LABEL_10:

LABEL_13:
      goto LABEL_14;
    }

    if ([v5 isEqualToString:@"Copy to Clipboard"])
    {
      v10 = +[WFActionRegistry sharedRegistry];
      v6 = [v10 createActionWithIdentifier:@"is.workflow.actions.setclipboard" serializedParameters:0];

      v7 = [(WFAction *)self userInterface];
      v11 = [(WFAction *)self runningDelegate];
      v12 = [(WFAction *)self variableSource];
      v13 = [(WFAction *)self workQueue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __45__WFOutputAction_runAsynchronouslyWithInput___block_invoke_2;
      v14[3] = &unk_1E837E750;
      v14[4] = self;
      [v6 runWithInput:v4 userInterface:v7 runningDelegate:v11 variableSource:v12 workQueue:v13 completionHandler:v14];

      goto LABEL_10;
    }

    v8 = self;
    v9 = 0;
  }

  [(WFOutputAction *)v8 finishRunningWithOutput:v9 error:0];
LABEL_14:
}

@end