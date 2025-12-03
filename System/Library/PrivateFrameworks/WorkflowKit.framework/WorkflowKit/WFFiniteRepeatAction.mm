@interface WFFiniteRepeatAction
- (BOOL)shouldRepeatWithVariableSource:(id)source;
- (id)outputVariableWithVariableProvider:(id)provider UUIDProvider:(id)dProvider;
- (id)repeatCountVariableName;
- (id)repeatInputVariableName;
- (id)repeatInputWithVariableSource:(id)source;
- (int64_t)repeatCountWithVariableSource:(id)source;
- (void)resetEvaluationCriteriaWithVariableSource:(id)source;
- (void)runWithInput:(id)input error:(id *)error;
- (void)runWithInput:(id)input userInterface:(id)interface runningDelegate:(id)delegate variableSource:(id)source workQueue:(id)queue completionHandler:(id)handler;
- (void)setRepeatCount:(int64_t)count withVariableSource:(id)source;
- (void)setRepeatInput:(id)input withVariableSource:(id)source;
@end

@implementation WFFiniteRepeatAction

- (void)runWithInput:(id)input error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  v25.receiver = self;
  v25.super_class = WFFiniteRepeatAction;
  [(WFRepeatAction *)&v25 runWithInput:inputCopy error:error];
  variableSource = [(WFAction *)self variableSource];
  mode = [(WFControlFlowAction *)self mode];
  if (mode == 2)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    items = [inputCopy items];
    v14 = [items countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(items);
          }

          v18 = *(*(&v21 + 1) + 8 * i);
          output = [(WFAction *)self output];
          [output addItem:v18];
        }

        v15 = [items countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v15);
    }
  }

  else if (!mode)
  {
    v9 = [(WFFiniteRepeatAction *)self repeatInputWithVariableSource:variableSource];

    if (v9)
    {
LABEL_6:
      v12 = [(WFFiniteRepeatAction *)self repeatInputWithVariableSource:variableSource];
      [(WFAction *)self setOutput:v12];

      [(WFFiniteRepeatAction *)self setRepeatCount:[(WFFiniteRepeatAction *)self repeatCountWithVariableSource:variableSource]- 1 withVariableSource:variableSource];
      goto LABEL_15;
    }

    v10 = [(WFAction *)self parameterValueForKey:@"WFRepeatCount" ofClass:objc_opt_class()];
    integerValue = [v10 integerValue];

    if (integerValue)
    {
      [(WFFiniteRepeatAction *)self setRepeatInput:inputCopy withVariableSource:variableSource];
      [(WFFiniteRepeatAction *)self setRepeatCount:integerValue withVariableSource:variableSource];
      self->_numberOfLoops = integerValue;
      goto LABEL_6;
    }

    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:0 userInfo:0];
    }
  }

LABEL_15:

  v20 = *MEMORY[0x1E69E9840];
}

- (int64_t)repeatCountWithVariableSource:(id)source
{
  sourceCopy = source;
  repeatCountVariableName = [(WFFiniteRepeatAction *)self repeatCountVariableName];
  v6 = [sourceCopy contentForVariableWithName:repeatCountVariableName];

  items = [v6 items];
  firstObject = [items firstObject];
  number = [firstObject number];
  integerValue = [number integerValue];

  return integerValue;
}

- (void)setRepeatCount:(int64_t)count withVariableSource:(id)source
{
  v15[1] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (count)
  {
    v10 = MEMORY[0x1E6996D40];
    v11 = MEMORY[0x1E6996D58];
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    v5 = [v11 itemWithObject:v4];
    v15[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v12 = [v10 collectionWithItems:v6];
  }

  else
  {
    v12 = 0;
  }

  repeatCountVariableName = [(WFFiniteRepeatAction *)self repeatCountVariableName];
  [sourceCopy setContent:v12 forVariableWithName:repeatCountVariableName];

  if (count)
  {
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)repeatInputWithVariableSource:(id)source
{
  sourceCopy = source;
  repeatInputVariableName = [(WFFiniteRepeatAction *)self repeatInputVariableName];
  v6 = [sourceCopy contentForVariableWithName:repeatInputVariableName];

  return v6;
}

- (void)setRepeatInput:(id)input withVariableSource:(id)source
{
  sourceCopy = source;
  v8 = [input copy];
  repeatInputVariableName = [(WFFiniteRepeatAction *)self repeatInputVariableName];
  [sourceCopy setContent:v8 forVariableWithName:repeatInputVariableName];
}

- (id)repeatCountVariableName
{
  groupingIdentifier = [(WFAction *)self groupingIdentifier];
  v3 = [groupingIdentifier stringByAppendingString:@"-count"];

  return v3;
}

- (id)repeatInputVariableName
{
  groupingIdentifier = [(WFAction *)self groupingIdentifier];
  v3 = [groupingIdentifier stringByAppendingString:@"-input"];

  return v3;
}

- (id)outputVariableWithVariableProvider:(id)provider UUIDProvider:(id)dProvider
{
  providerCopy = provider;
  dProviderCopy = dProvider;
  if ([(WFControlFlowAction *)self mode]== 2)
  {
    v10.receiver = self;
    v10.super_class = WFFiniteRepeatAction;
    v8 = [(WFAction *)&v10 outputVariableWithVariableProvider:providerCopy UUIDProvider:dProviderCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)runWithInput:(id)input userInterface:(id)interface runningDelegate:(id)delegate variableSource:(id)source workQueue:(id)queue completionHandler:(id)handler
{
  v31[1] = *MEMORY[0x1E69E9840];
  inputCopy = input;
  interfaceCopy = interface;
  delegateCopy = delegate;
  sourceCopy = source;
  queueCopy = queue;
  handlerCopy = handler;
  if (![(WFControlFlowAction *)self mode])
  {
    processedParameters = [(WFAction *)self processedParameters];

    if (!processedParameters)
    {
      repeatCountVariableName = [(WFFiniteRepeatAction *)self repeatCountVariableName];
      v21 = [sourceCopy contentForVariableWithName:repeatCountVariableName];
      items = [v21 items];
      firstObject = [items firstObject];

      v24 = firstObject;
      if (firstObject)
      {
        v30 = @"WFRepeatCount";
        number = [firstObject number];
        v31[0] = number;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
        [(WFAction *)self setProcessedParameters:v26];
      }
    }
  }

  v29.receiver = self;
  v29.super_class = WFFiniteRepeatAction;
  [(WFAction *)&v29 runWithInput:inputCopy userInterface:interfaceCopy runningDelegate:delegateCopy variableSource:sourceCopy workQueue:queueCopy completionHandler:handlerCopy];

  v27 = *MEMORY[0x1E69E9840];
}

- (void)resetEvaluationCriteriaWithVariableSource:(id)source
{
  v5.receiver = self;
  v5.super_class = WFFiniteRepeatAction;
  sourceCopy = source;
  [(WFRepeatAction *)&v5 resetEvaluationCriteriaWithVariableSource:sourceCopy];
  [(WFFiniteRepeatAction *)self setRepeatInput:0 withVariableSource:sourceCopy, v5.receiver, v5.super_class];
  [(WFFiniteRepeatAction *)self setRepeatCount:0 withVariableSource:sourceCopy];
}

- (BOOL)shouldRepeatWithVariableSource:(id)source
{
  sourceCopy = source;
  if ([(WFControlFlowAction *)self mode])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFiniteRepeatAction.m" lineNumber:27 description:@"Only open action can determine control flow"];
  }

  v6 = [(WFFiniteRepeatAction *)self repeatCountWithVariableSource:sourceCopy]> 0;

  return v6;
}

@end