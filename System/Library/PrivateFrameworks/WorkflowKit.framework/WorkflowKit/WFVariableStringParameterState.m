@interface WFVariableStringParameterState
+ (id)parameterStateFromModelOutput:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldSerializeAsPlainString;
- (NSArray)containedVariables;
- (WFPropertyListObject)serializedRepresentation;
- (WFVariableStringParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFVariableStringParameterState)initWithVariable:(id)a3;
- (WFVariableStringParameterState)initWithVariableString:(id)a3 userInputInsertionIndex:(int64_t)a4;
- (id)parameterStateByRemovingAskVariablesAndPopulatingInsertionIndex;
- (id)stateByReplacingVariable:(id)a3 withVariable:(id)a4;
- (unint64_t)hash;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFVariableStringParameterState

- (BOOL)shouldSerializeAsPlainString
{
  v2 = [(WFVariableStringParameterState *)self variableString];
  v3 = [v2 variables];
  v4 = [v3 count] == 0;

  return v4;
}

- (id)parameterStateByRemovingAskVariablesAndPopulatingInsertionIndex
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v2 = [(WFVariableStringParameterState *)self variableString];
  v3 = [v2 stringsAndVariables];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__WFVariableStringParameterState_parameterStateByRemovingAskVariablesAndPopulatingInsertionIndex__block_invoke;
  v9[3] = &unk_1E8376A90;
  v9[4] = &v11;
  v9[5] = v10;
  v4 = [v3 if_map:v9];
  v5 = [[WFVariableString alloc] initWithStringsAndVariables:v4];
  v6 = objc_alloc(objc_opt_class());
  v7 = [v6 initWithVariableString:v5 userInputInsertionIndex:v12[3]];

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v11, 8);

  return v7;
}

__CFString *__97__WFVariableStringParameterState_parameterStateByRemovingAskVariablesAndPopulatingInsertionIndex__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 type];
  v7 = [v6 isEqualToString:@"Ask"];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24);
    v8 = &stru_1F4A1C408;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) += [v3 wf_lengthInVariableString];
    v8 = v3;
  }

  return v8;
}

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableStringParameterState *)self variableString];

  if (v11)
  {
    v12 = [(WFVariableStringParameterState *)self variableString];
    v13 = [v12 variablesOfType:@"Ask"];
    v14 = [v13 firstObject];

    if (v14 && [v8 isInputParameter])
    {
      v15 = [(WFVariableStringParameterState *)self parameterStateByRemovingAskVariablesAndPopulatingInsertionIndex];
      v16 = [v14 prompt];
      v9[2](v9, v16, v15);
    }

    else
    {
      v17 = [(WFVariableStringParameterState *)self variableString];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __91__WFVariableStringParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v19[3] = &unk_1E8376D08;
      v20 = v14;
      v21 = self;
      v22 = v9;
      v23 = v10;
      v18 = v14;
      [v17 processWithContext:v8 completionHandler:v19];
    }
  }

  else
  {
    (*(v10 + 2))(v10, 0, 0);
  }
}

void __91__WFVariableStringParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v18 = a4;
  if (a1[4])
  {
    v11 = a1 + 5;
    v10 = a1[5];
    v9 = v11[1];
    v12 = a2;
    v13 = objc_alloc(objc_opt_class());
    v14 = [[WFVariableString alloc] initWithString:v12];

    v15 = [v13 initWithVariableString:v14 userInputInsertionIndex:a3];
    (*(v9 + 16))(v9, v18, v15);
  }

  else
  {
    v16 = a1[7];
    v17 = *(v16 + 16);
    v14 = a2;
    v17(v16, v14, a5);
  }
}

- (NSArray)containedVariables
{
  v2 = [(WFVariableStringParameterState *)self variableString];
  v3 = [v2 variables];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(WFVariableStringParameterState *)self variableString];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFVariableStringParameterState *)v4 variableString];
      v6 = [(WFVariableStringParameterState *)self variableString];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)stateByReplacingVariable:(id)a3 withVariable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFVariableStringParameterState *)self variableString];
  v9 = [v8 stringsAndVariables];
  v10 = [v9 mutableCopy];

  if (v6 && (v11 = [v10 indexOfObject:v6], v11 != 0x7FFFFFFFFFFFFFFFLL))
  {
    if (v7)
    {
      [v10 replaceObjectAtIndex:v11 withObject:v7];
    }

    else
    {
      [v10 removeObjectAtIndex:v11];
    }

    v12 = [[WFVariableString alloc] initWithStringsAndVariables:v10];
  }

  else if (v7)
  {
    v12 = [[WFVariableString alloc] initWithVariable:v7];
  }

  else
  {
    v12 = objc_alloc_init(WFVariableString);
  }

  v13 = v12;
  v14 = [objc_alloc(objc_opt_class()) initWithVariableString:v12];

  return v14;
}

- (WFPropertyListObject)serializedRepresentation
{
  v3 = [(WFVariableStringParameterState *)self variableString];
  v4 = [v3 variables];
  v5 = [v4 count];

  v6 = [(WFVariableStringParameterState *)self variableString];
  v7 = v6;
  if (v5)
  {
    WFSerializedVariableObject(v6);
  }

  else
  {
    [v6 stringByRemovingVariables];
  }
  v8 = ;

  return v8;
}

- (WFVariableStringParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [[WFVariableString alloc] initWithString:v8];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v11 = WFDeserializedVariableObject(v8, v9, v10);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = 0;
      goto LABEL_4;
    }
  }

  self = [(WFVariableStringParameterState *)self initWithVariableString:v11];
  v12 = self;
LABEL_4:

LABEL_9:
  return v12;
}

- (WFVariableStringParameterState)initWithVariable:(id)a3
{
  v4 = a3;
  v5 = [[WFVariableString alloc] initWithVariable:v4];

  v6 = [(WFVariableStringParameterState *)self initWithVariableString:v5];
  return v6;
}

- (WFVariableStringParameterState)initWithVariableString:(id)a3 userInputInsertionIndex:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFVariableStringParameterState.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"variableString"}];
  }

  v17.receiver = self;
  v17.super_class = WFVariableStringParameterState;
  v8 = [(WFVariableStringParameterState *)&v17 init];
  if (v8)
  {
    v9 = [v7 copy];
    variableString = v8->_variableString;
    v8->_variableString = v9;

    v8->_userInputInsertionIndex = a4;
    v11 = [v7 variables];
    v12 = [v11 firstObject];
    variable = v8->_variable;
    v8->_variable = v12;

    v14 = v8;
  }

  return v8;
}

+ (id)parameterStateFromModelOutput:(id)a3
{
  v3 = a3;
  v4 = [[WFVariableString alloc] initWithString:v3];

  v5 = [[WFVariableStringParameterState alloc] initWithVariableString:v4];

  return v5;
}

@end