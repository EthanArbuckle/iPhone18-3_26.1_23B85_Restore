@interface WFForEachRepeatAction
- (BOOL)shouldRepeatWithVariableSource:(id)source;
- (NSString)itemVariableName;
- (id)outputVariableWithVariableProvider:(id)provider UUIDProvider:(id)dProvider;
- (id)repeatCollectionWithVariableSource:(id)source;
- (void)resetEvaluationCriteriaWithVariableSource:(id)source;
- (void)runWithInput:(id)input error:(id *)error;
- (void)setRepeatCollection:(id)collection withVariableSource:(id)source;
@end

@implementation WFForEachRepeatAction

- (NSString)itemVariableName
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  workflow = [(WFAction *)self workflow];
  actionTree = [workflow actionTree];
  v5 = [actionTree outputsForAction:self];

  variableName = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (variableName)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != variableName; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 outputType] == 3)
        {
          variableName = [v9 variableName];
          goto LABEL_11;
        }
      }

      variableName = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (variableName)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return variableName;
}

- (id)outputVariableWithVariableProvider:(id)provider UUIDProvider:(id)dProvider
{
  providerCopy = provider;
  dProviderCopy = dProvider;
  if ([(WFControlFlowAction *)self mode])
  {
    v11.receiver = self;
    v11.super_class = WFForEachRepeatAction;
    v8 = [(WFAction *)&v11 outputVariableWithVariableProvider:providerCopy UUIDProvider:dProviderCopy];
  }

  else
  {
    itemVariableName = [(WFForEachRepeatAction *)self itemVariableName];
    if (itemVariableName)
    {
      v8 = [[WFUserDefinedVariable alloc] initWithName:itemVariableName variableProvider:providerCopy aggrandizements:0];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)runWithInput:(id)input error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  inputCopy = input;
  v32.receiver = self;
  v32.super_class = WFForEachRepeatAction;
  [(WFRepeatAction *)&v32 runWithInput:inputCopy error:error];
  variableSource = [(WFAction *)self variableSource];
  mode = [(WFControlFlowAction *)self mode];
  if (mode == 2)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    items = [inputCopy items];
    v21 = [items countByEnumeratingWithState:&v28 objects:v33 count:16];
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
            objc_enumerationMutation(items);
          }

          v25 = *(*(&v28 + 1) + 8 * v24);
          output = [(WFAction *)self output];
          [output addItem:v25];

          ++v24;
        }

        while (v22 != v24);
        v22 = [items countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v22);
    }

    controlFlowTracker = [(WFControlFlowAction *)self controlFlowTracker];
    [controlFlowTracker leftScopeOfControlFlowAction:self];
    goto LABEL_20;
  }

  if (!mode)
  {
    v9 = [(WFForEachRepeatAction *)self repeatCollectionWithVariableSource:variableSource];

    if (!v9)
    {
      [(WFForEachRepeatAction *)self setRepeatCollection:inputCopy withVariableSource:variableSource];
      self->_numberOfLoops = [inputCopy numberOfItems];
      controlFlowTracker2 = [(WFControlFlowAction *)self controlFlowTracker];
      [controlFlowTracker2 enteredScopeOfControlFlowAction:self withInput:inputCopy];
    }

    controlFlowTracker = [(WFForEachRepeatAction *)self repeatCollectionWithVariableSource:variableSource];
    items2 = [controlFlowTracker items];
    firstObject = [items2 firstObject];

    if (firstObject)
    {
      v14 = MEMORY[0x1E6996D40];
      v34[0] = firstObject;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
      v16 = [v14 collectionWithItems:v15];
      [(WFAction *)self setOutput:v16];

      [controlFlowTracker removeItem:firstObject];
      itemVariableName = [(WFForEachRepeatAction *)self itemVariableName];
      if (itemVariableName)
      {
        variableSource2 = [(WFAction *)self variableSource];
        output2 = [(WFAction *)self output];
        [variableSource2 setContent:output2 forVariableWithName:itemVariableName];
      }
    }

    else if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:0 userInfo:0];
    }

LABEL_20:
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)repeatCollectionWithVariableSource:(id)source
{
  sourceCopy = source;
  groupingIdentifier = [(WFAction *)self groupingIdentifier];
  v6 = [groupingIdentifier stringByAppendingString:@"-collection"];
  v7 = [sourceCopy contentForVariableWithName:v6];

  getListRepresentation = [v7 getListRepresentation];

  return getListRepresentation;
}

- (void)setRepeatCollection:(id)collection withVariableSource:(id)source
{
  sourceCopy = source;
  v9 = [collection copy];
  groupingIdentifier = [(WFAction *)self groupingIdentifier];
  v8 = [groupingIdentifier stringByAppendingString:@"-collection"];
  [sourceCopy setContent:v9 forVariableWithName:v8];
}

- (void)resetEvaluationCriteriaWithVariableSource:(id)source
{
  v5.receiver = self;
  v5.super_class = WFForEachRepeatAction;
  sourceCopy = source;
  [(WFRepeatAction *)&v5 resetEvaluationCriteriaWithVariableSource:sourceCopy];
  [(WFForEachRepeatAction *)self setRepeatCollection:0 withVariableSource:sourceCopy, v5.receiver, v5.super_class];
}

- (BOOL)shouldRepeatWithVariableSource:(id)source
{
  sourceCopy = source;
  if ([(WFControlFlowAction *)self mode])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFForEachRepeatAction.m" lineNumber:26 description:@"Only open action can determine control flow"];
  }

  v6 = [(WFForEachRepeatAction *)self repeatCollectionWithVariableSource:sourceCopy];
  v7 = [v6 numberOfItems] > 0;

  return v7;
}

@end