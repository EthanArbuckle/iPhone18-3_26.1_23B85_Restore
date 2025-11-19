@interface WFFiniteRepeatAction
- (BOOL)shouldRepeatWithVariableSource:(id)a3;
- (id)outputVariableWithVariableProvider:(id)a3 UUIDProvider:(id)a4;
- (id)repeatCountVariableName;
- (id)repeatInputVariableName;
- (id)repeatInputWithVariableSource:(id)a3;
- (int64_t)repeatCountWithVariableSource:(id)a3;
- (void)resetEvaluationCriteriaWithVariableSource:(id)a3;
- (void)runWithInput:(id)a3 error:(id *)a4;
- (void)runWithInput:(id)a3 userInterface:(id)a4 runningDelegate:(id)a5 variableSource:(id)a6 workQueue:(id)a7 completionHandler:(id)a8;
- (void)setRepeatCount:(int64_t)a3 withVariableSource:(id)a4;
- (void)setRepeatInput:(id)a3 withVariableSource:(id)a4;
@end

@implementation WFFiniteRepeatAction

- (void)runWithInput:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v25.receiver = self;
  v25.super_class = WFFiniteRepeatAction;
  [(WFRepeatAction *)&v25 runWithInput:v6 error:a4];
  v7 = [(WFAction *)self variableSource];
  v8 = [(WFControlFlowAction *)self mode];
  if (v8 == 2)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = [v6 items];
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v21 + 1) + 8 * i);
          v19 = [(WFAction *)self output];
          [v19 addItem:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v15);
    }
  }

  else if (!v8)
  {
    v9 = [(WFFiniteRepeatAction *)self repeatInputWithVariableSource:v7];

    if (v9)
    {
LABEL_6:
      v12 = [(WFFiniteRepeatAction *)self repeatInputWithVariableSource:v7];
      [(WFAction *)self setOutput:v12];

      [(WFFiniteRepeatAction *)self setRepeatCount:[(WFFiniteRepeatAction *)self repeatCountWithVariableSource:v7]- 1 withVariableSource:v7];
      goto LABEL_15;
    }

    v10 = [(WFAction *)self parameterValueForKey:@"WFRepeatCount" ofClass:objc_opt_class()];
    v11 = [v10 integerValue];

    if (v11)
    {
      [(WFFiniteRepeatAction *)self setRepeatInput:v6 withVariableSource:v7];
      [(WFFiniteRepeatAction *)self setRepeatCount:v11 withVariableSource:v7];
      self->_numberOfLoops = v11;
      goto LABEL_6;
    }

    if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:0 userInfo:0];
    }
  }

LABEL_15:

  v20 = *MEMORY[0x1E69E9840];
}

- (int64_t)repeatCountWithVariableSource:(id)a3
{
  v4 = a3;
  v5 = [(WFFiniteRepeatAction *)self repeatCountVariableName];
  v6 = [v4 contentForVariableWithName:v5];

  v7 = [v6 items];
  v8 = [v7 firstObject];
  v9 = [v8 number];
  v10 = [v9 integerValue];

  return v10;
}

- (void)setRepeatCount:(int64_t)a3 withVariableSource:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  if (a3)
  {
    v10 = MEMORY[0x1E6996D40];
    v11 = MEMORY[0x1E6996D58];
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v5 = [v11 itemWithObject:v4];
    v15[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v12 = [v10 collectionWithItems:v6];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(WFFiniteRepeatAction *)self repeatCountVariableName];
  [v9 setContent:v12 forVariableWithName:v13];

  if (a3)
  {
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)repeatInputWithVariableSource:(id)a3
{
  v4 = a3;
  v5 = [(WFFiniteRepeatAction *)self repeatInputVariableName];
  v6 = [v4 contentForVariableWithName:v5];

  return v6;
}

- (void)setRepeatInput:(id)a3 withVariableSource:(id)a4
{
  v6 = a4;
  v8 = [a3 copy];
  v7 = [(WFFiniteRepeatAction *)self repeatInputVariableName];
  [v6 setContent:v8 forVariableWithName:v7];
}

- (id)repeatCountVariableName
{
  v2 = [(WFAction *)self groupingIdentifier];
  v3 = [v2 stringByAppendingString:@"-count"];

  return v3;
}

- (id)repeatInputVariableName
{
  v2 = [(WFAction *)self groupingIdentifier];
  v3 = [v2 stringByAppendingString:@"-input"];

  return v3;
}

- (id)outputVariableWithVariableProvider:(id)a3 UUIDProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WFControlFlowAction *)self mode]== 2)
  {
    v10.receiver = self;
    v10.super_class = WFFiniteRepeatAction;
    v8 = [(WFAction *)&v10 outputVariableWithVariableProvider:v6 UUIDProvider:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)runWithInput:(id)a3 userInterface:(id)a4 runningDelegate:(id)a5 variableSource:(id)a6 workQueue:(id)a7 completionHandler:(id)a8
{
  v31[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (![(WFControlFlowAction *)self mode])
  {
    v20 = [(WFAction *)self processedParameters];

    if (!v20)
    {
      v28 = [(WFFiniteRepeatAction *)self repeatCountVariableName];
      v21 = [v17 contentForVariableWithName:v28];
      v22 = [v21 items];
      v23 = [v22 firstObject];

      v24 = v23;
      if (v23)
      {
        v30 = @"WFRepeatCount";
        v25 = [v23 number];
        v31[0] = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
        [(WFAction *)self setProcessedParameters:v26];
      }
    }
  }

  v29.receiver = self;
  v29.super_class = WFFiniteRepeatAction;
  [(WFAction *)&v29 runWithInput:v14 userInterface:v15 runningDelegate:v16 variableSource:v17 workQueue:v18 completionHandler:v19];

  v27 = *MEMORY[0x1E69E9840];
}

- (void)resetEvaluationCriteriaWithVariableSource:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFFiniteRepeatAction;
  v4 = a3;
  [(WFRepeatAction *)&v5 resetEvaluationCriteriaWithVariableSource:v4];
  [(WFFiniteRepeatAction *)self setRepeatInput:0 withVariableSource:v4, v5.receiver, v5.super_class];
  [(WFFiniteRepeatAction *)self setRepeatCount:0 withVariableSource:v4];
}

- (BOOL)shouldRepeatWithVariableSource:(id)a3
{
  v5 = a3;
  if ([(WFControlFlowAction *)self mode])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFFiniteRepeatAction.m" lineNumber:27 description:@"Only open action can determine control flow"];
  }

  v6 = [(WFFiniteRepeatAction *)self repeatCountWithVariableSource:v5]> 0;

  return v6;
}

@end