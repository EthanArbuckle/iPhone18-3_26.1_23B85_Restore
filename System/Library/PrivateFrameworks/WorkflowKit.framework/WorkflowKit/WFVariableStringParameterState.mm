@interface WFVariableStringParameterState
+ (id)parameterStateFromModelOutput:(id)output;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldSerializeAsPlainString;
- (NSArray)containedVariables;
- (WFPropertyListObject)serializedRepresentation;
- (WFVariableStringParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFVariableStringParameterState)initWithVariable:(id)variable;
- (WFVariableStringParameterState)initWithVariableString:(id)string userInputInsertionIndex:(int64_t)index;
- (id)parameterStateByRemovingAskVariablesAndPopulatingInsertionIndex;
- (id)stateByReplacingVariable:(id)variable withVariable:(id)withVariable;
- (unint64_t)hash;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFVariableStringParameterState

- (BOOL)shouldSerializeAsPlainString
{
  variableString = [(WFVariableStringParameterState *)self variableString];
  variables = [variableString variables];
  v4 = [variables count] == 0;

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
  variableString = [(WFVariableStringParameterState *)self variableString];
  stringsAndVariables = [variableString stringsAndVariables];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__WFVariableStringParameterState_parameterStateByRemovingAskVariablesAndPopulatingInsertionIndex__block_invoke;
  v9[3] = &unk_1E8376A90;
  v9[4] = &v11;
  v9[5] = v10;
  v4 = [stringsAndVariables if_map:v9];
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

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variableString = [(WFVariableStringParameterState *)self variableString];

  if (variableString)
  {
    variableString2 = [(WFVariableStringParameterState *)self variableString];
    v13 = [variableString2 variablesOfType:@"Ask"];
    firstObject = [v13 firstObject];

    if (firstObject && [contextCopy isInputParameter])
    {
      parameterStateByRemovingAskVariablesAndPopulatingInsertionIndex = [(WFVariableStringParameterState *)self parameterStateByRemovingAskVariablesAndPopulatingInsertionIndex];
      prompt = [firstObject prompt];
      handlerCopy[2](handlerCopy, prompt, parameterStateByRemovingAskVariablesAndPopulatingInsertionIndex);
    }

    else
    {
      variableString3 = [(WFVariableStringParameterState *)self variableString];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __91__WFVariableStringParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v19[3] = &unk_1E8376D08;
      v20 = firstObject;
      selfCopy = self;
      v22 = handlerCopy;
      v23 = valueHandlerCopy;
      v18 = firstObject;
      [variableString3 processWithContext:contextCopy completionHandler:v19];
    }
  }

  else
  {
    (*(valueHandlerCopy + 2))(valueHandlerCopy, 0, 0);
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
  variableString = [(WFVariableStringParameterState *)self variableString];
  variables = [variableString variables];

  return variables;
}

- (unint64_t)hash
{
  variableString = [(WFVariableStringParameterState *)self variableString];
  v3 = [variableString hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      variableString = [(WFVariableStringParameterState *)equalCopy variableString];
      variableString2 = [(WFVariableStringParameterState *)self variableString];
      v7 = [variableString isEqual:variableString2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)stateByReplacingVariable:(id)variable withVariable:(id)withVariable
{
  variableCopy = variable;
  withVariableCopy = withVariable;
  variableString = [(WFVariableStringParameterState *)self variableString];
  stringsAndVariables = [variableString stringsAndVariables];
  v10 = [stringsAndVariables mutableCopy];

  if (variableCopy && (v11 = [v10 indexOfObject:variableCopy], v11 != 0x7FFFFFFFFFFFFFFFLL))
  {
    if (withVariableCopy)
    {
      [v10 replaceObjectAtIndex:v11 withObject:withVariableCopy];
    }

    else
    {
      [v10 removeObjectAtIndex:v11];
    }

    v12 = [[WFVariableString alloc] initWithStringsAndVariables:v10];
  }

  else if (withVariableCopy)
  {
    v12 = [[WFVariableString alloc] initWithVariable:withVariableCopy];
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
  variableString = [(WFVariableStringParameterState *)self variableString];
  variables = [variableString variables];
  v5 = [variables count];

  variableString2 = [(WFVariableStringParameterState *)self variableString];
  v7 = variableString2;
  if (v5)
  {
    WFSerializedVariableObject(variableString2);
  }

  else
  {
    [variableString2 stringByRemovingVariables];
  }
  v8 = ;

  return v8;
}

- (WFVariableStringParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [[WFVariableString alloc] initWithString:representationCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      selfCopy = 0;
      goto LABEL_9;
    }

    v11 = WFDeserializedVariableObject(representationCopy, providerCopy, parameterCopy);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      selfCopy = 0;
      goto LABEL_4;
    }
  }

  self = [(WFVariableStringParameterState *)self initWithVariableString:v11];
  selfCopy = self;
LABEL_4:

LABEL_9:
  return selfCopy;
}

- (WFVariableStringParameterState)initWithVariable:(id)variable
{
  variableCopy = variable;
  v5 = [[WFVariableString alloc] initWithVariable:variableCopy];

  v6 = [(WFVariableStringParameterState *)self initWithVariableString:v5];
  return v6;
}

- (WFVariableStringParameterState)initWithVariableString:(id)string userInputInsertionIndex:(int64_t)index
{
  stringCopy = string;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFVariableStringParameterState.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"variableString"}];
  }

  v17.receiver = self;
  v17.super_class = WFVariableStringParameterState;
  v8 = [(WFVariableStringParameterState *)&v17 init];
  if (v8)
  {
    v9 = [stringCopy copy];
    variableString = v8->_variableString;
    v8->_variableString = v9;

    v8->_userInputInsertionIndex = index;
    variables = [stringCopy variables];
    firstObject = [variables firstObject];
    variable = v8->_variable;
    v8->_variable = firstObject;

    v14 = v8;
  }

  return v8;
}

+ (id)parameterStateFromModelOutput:(id)output
{
  outputCopy = output;
  v4 = [[WFVariableString alloc] initWithString:outputCopy];

  v5 = [[WFVariableStringParameterState alloc] initWithVariableString:v4];

  return v5;
}

@end