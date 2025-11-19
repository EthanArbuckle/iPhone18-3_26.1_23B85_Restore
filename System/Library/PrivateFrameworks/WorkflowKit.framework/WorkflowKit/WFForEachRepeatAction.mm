@interface WFForEachRepeatAction
- (BOOL)shouldRepeatWithVariableSource:(id)a3;
- (NSString)itemVariableName;
- (id)outputVariableWithVariableProvider:(id)a3 UUIDProvider:(id)a4;
- (id)repeatCollectionWithVariableSource:(id)a3;
- (void)resetEvaluationCriteriaWithVariableSource:(id)a3;
- (void)runWithInput:(id)a3 error:(id *)a4;
- (void)setRepeatCollection:(id)a3 withVariableSource:(id)a4;
@end

@implementation WFForEachRepeatAction

- (NSString)itemVariableName
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(WFAction *)self workflow];
  v4 = [v3 actionTree];
  v5 = [v4 outputsForAction:self];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 outputType] == 3)
        {
          v6 = [v9 variableName];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)outputVariableWithVariableProvider:(id)a3 UUIDProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WFControlFlowAction *)self mode])
  {
    v11.receiver = self;
    v11.super_class = WFForEachRepeatAction;
    v8 = [(WFAction *)&v11 outputVariableWithVariableProvider:v6 UUIDProvider:v7];
  }

  else
  {
    v9 = [(WFForEachRepeatAction *)self itemVariableName];
    if (v9)
    {
      v8 = [[WFUserDefinedVariable alloc] initWithName:v9 variableProvider:v6 aggrandizements:0];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)runWithInput:(id)a3 error:(id *)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v32.receiver = self;
  v32.super_class = WFForEachRepeatAction;
  [(WFRepeatAction *)&v32 runWithInput:v6 error:a4];
  v7 = [(WFAction *)self variableSource];
  v8 = [(WFControlFlowAction *)self mode];
  if (v8 == 2)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = [v6 items];
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        v24 = 0;
        do
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v28 + 1) + 8 * v24);
          v26 = [(WFAction *)self output];
          [v26 addItem:v25];

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v22);
    }

    v11 = [(WFControlFlowAction *)self controlFlowTracker];
    [v11 leftScopeOfControlFlowAction:self];
    goto LABEL_20;
  }

  if (!v8)
  {
    v9 = [(WFForEachRepeatAction *)self repeatCollectionWithVariableSource:v7];

    if (!v9)
    {
      [(WFForEachRepeatAction *)self setRepeatCollection:v6 withVariableSource:v7];
      self->_numberOfLoops = [v6 numberOfItems];
      v10 = [(WFControlFlowAction *)self controlFlowTracker];
      [v10 enteredScopeOfControlFlowAction:self withInput:v6];
    }

    v11 = [(WFForEachRepeatAction *)self repeatCollectionWithVariableSource:v7];
    v12 = [v11 items];
    v13 = [v12 firstObject];

    if (v13)
    {
      v14 = MEMORY[0x1E6996D40];
      v34[0] = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
      v16 = [v14 collectionWithItems:v15];
      [(WFAction *)self setOutput:v16];

      [v11 removeItem:v13];
      v17 = [(WFForEachRepeatAction *)self itemVariableName];
      if (v17)
      {
        v18 = [(WFAction *)self variableSource];
        v19 = [(WFAction *)self output];
        [v18 setContent:v19 forVariableWithName:v17];
      }
    }

    else if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:0 userInfo:0];
    }

LABEL_20:
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)repeatCollectionWithVariableSource:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self groupingIdentifier];
  v6 = [v5 stringByAppendingString:@"-collection"];
  v7 = [v4 contentForVariableWithName:v6];

  v8 = [v7 getListRepresentation];

  return v8;
}

- (void)setRepeatCollection:(id)a3 withVariableSource:(id)a4
{
  v6 = a4;
  v9 = [a3 copy];
  v7 = [(WFAction *)self groupingIdentifier];
  v8 = [v7 stringByAppendingString:@"-collection"];
  [v6 setContent:v9 forVariableWithName:v8];
}

- (void)resetEvaluationCriteriaWithVariableSource:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFForEachRepeatAction;
  v4 = a3;
  [(WFRepeatAction *)&v5 resetEvaluationCriteriaWithVariableSource:v4];
  [(WFForEachRepeatAction *)self setRepeatCollection:0 withVariableSource:v4, v5.receiver, v5.super_class];
}

- (BOOL)shouldRepeatWithVariableSource:(id)a3
{
  v5 = a3;
  if ([(WFControlFlowAction *)self mode])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFForEachRepeatAction.m" lineNumber:26 description:@"Only open action can determine control flow"];
  }

  v6 = [(WFForEachRepeatAction *)self repeatCollectionWithVariableSource:v5];
  v7 = [v6 numberOfItems] > 0;

  return v7;
}

@end