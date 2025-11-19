@interface WFRepeatAction
- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)a3 inWorkflow:(id)a4;
- (BOOL)outputsMultipleItems;
- (NSString)indexVariableName;
- (id)createAccompanyingActions;
- (id)localizedDefaultOutputNameWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
- (void)resetEvaluationCriteriaWithVariableSource:(id)a3;
- (void)runWithInput:(id)a3 error:(id *)a4;
@end

@implementation WFRepeatAction

- (NSString)indexVariableName
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(WFAction *)self workflow];
  v4 = [v3 actionTree];
  v5 = [v4 outputsForAction:self];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = @"Repeat Index";
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 outputType] == 2)
        {
          v9 = [v11 variableName];
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = @"Repeat Index";
  }

LABEL_12:

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)localizedDefaultOutputNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Repeat Results", @"Repeat Results");
  v5 = [v3 localize:v4];

  return v5;
}

- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)a3 inWorkflow:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WFControlFlowAction *)self mode])
  {
    v8 = v6 == 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFRepeatAction;
    v8 = [(WFAction *)&v10 legacyBehaviorIgnoresOutputFromAction:v6 inWorkflow:v7];
  }

  return v8;
}

- (void)runWithInput:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = [(WFRepeatAction *)self indexVariableName:a3];
  if (v5 && ![(WFControlFlowAction *)self mode])
  {
    v6 = [(WFAction *)self variableSource];
    v7 = [v6 contentForVariableWithName:v5];
    v8 = [v7 items];
    v9 = [v8 firstObject];
    v10 = [v9 number];
    v11 = [v10 integerValue];

    v12 = [(WFAction *)self variableSource];
    v13 = MEMORY[0x1E6996D40];
    v14 = MEMORY[0x1E6996D58];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v11 + 1];
    v16 = [v14 itemWithObject:v15];
    v20[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v18 = [v13 collectionWithItems:v17];
    [v12 setContent:v18 forVariableWithName:v5];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)resetEvaluationCriteriaWithVariableSource:(id)a3
{
  v4 = a3;
  v5 = [(WFRepeatAction *)self indexVariableName];
  [v4 setContent:0 forVariableWithName:v5];
}

- (BOOL)outputsMultipleItems
{
  if ([(WFControlFlowAction *)self mode]== 2)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = WFRepeatAction;
  return [(WFAction *)&v4 outputsMultipleItems];
}

- (id)createAccompanyingActions
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(WFControlFlowAction *)self mode])
  {
    v7.receiver = self;
    v7.super_class = WFRepeatAction;
    v3 = [(WFAction *)&v7 createAccompanyingActions];
  }

  else
  {
    v4 = [(WFControlFlowAction *)self createAccompanyingActionWithMode:2];
    v8[0] = v4;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  if ([(WFControlFlowAction *)self mode]== 2)
  {
    v5 = WFLocalizedStringResourceWithKey(@"WFRepeatAction - End Repeat", @"End Repeat");
    v6 = [v4 localize:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFRepeatAction;
    v6 = [(WFAction *)&v8 localizedNameWithContext:v4];
  }

  return v6;
}

@end