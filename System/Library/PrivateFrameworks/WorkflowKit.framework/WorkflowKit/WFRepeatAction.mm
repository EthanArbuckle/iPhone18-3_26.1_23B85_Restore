@interface WFRepeatAction
- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)action inWorkflow:(id)workflow;
- (BOOL)outputsMultipleItems;
- (NSString)indexVariableName;
- (id)createAccompanyingActions;
- (id)localizedDefaultOutputNameWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (void)resetEvaluationCriteriaWithVariableSource:(id)source;
- (void)runWithInput:(id)input error:(id *)error;
@end

@implementation WFRepeatAction

- (NSString)indexVariableName
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  workflow = [(WFAction *)self workflow];
  actionTree = [workflow actionTree];
  v5 = [actionTree outputsForAction:self];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    variableName = @"Repeat Index";
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
          variableName = [v11 variableName];
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
    variableName = @"Repeat Index";
  }

LABEL_12:

  v12 = *MEMORY[0x1E69E9840];

  return variableName;
}

- (id)localizedDefaultOutputNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Repeat Results", @"Repeat Results");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)action inWorkflow:(id)workflow
{
  actionCopy = action;
  workflowCopy = workflow;
  if ([(WFControlFlowAction *)self mode])
  {
    v8 = actionCopy == 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFRepeatAction;
    v8 = [(WFAction *)&v10 legacyBehaviorIgnoresOutputFromAction:actionCopy inWorkflow:workflowCopy];
  }

  return v8;
}

- (void)runWithInput:(id)input error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = [(WFRepeatAction *)self indexVariableName:input];
  if (v5 && ![(WFControlFlowAction *)self mode])
  {
    variableSource = [(WFAction *)self variableSource];
    v7 = [variableSource contentForVariableWithName:v5];
    items = [v7 items];
    firstObject = [items firstObject];
    number = [firstObject number];
    integerValue = [number integerValue];

    variableSource2 = [(WFAction *)self variableSource];
    v13 = MEMORY[0x1E6996D40];
    v14 = MEMORY[0x1E6996D58];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + 1];
    v16 = [v14 itemWithObject:v15];
    v20[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v18 = [v13 collectionWithItems:v17];
    [variableSource2 setContent:v18 forVariableWithName:v5];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)resetEvaluationCriteriaWithVariableSource:(id)source
{
  sourceCopy = source;
  indexVariableName = [(WFRepeatAction *)self indexVariableName];
  [sourceCopy setContent:0 forVariableWithName:indexVariableName];
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
    createAccompanyingActions = [(WFAction *)&v7 createAccompanyingActions];
  }

  else
  {
    v4 = [(WFControlFlowAction *)self createAccompanyingActionWithMode:2];
    v8[0] = v4;
    createAccompanyingActions = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  v5 = *MEMORY[0x1E69E9840];

  return createAccompanyingActions;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  if ([(WFControlFlowAction *)self mode]== 2)
  {
    v5 = WFLocalizedStringResourceWithKey(@"WFRepeatAction - End Repeat", @"End Repeat");
    v6 = [contextCopy localize:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFRepeatAction;
    v6 = [(WFAction *)&v8 localizedNameWithContext:contextCopy];
  }

  return v6;
}

@end