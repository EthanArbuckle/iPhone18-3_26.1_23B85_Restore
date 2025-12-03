@interface WFQuantityParameterState
- (BOOL)isEqual:(id)equal;
- (NSArray)containedVariables;
- (WFPropertyListObject)serializedRepresentation;
- (WFQuantityParameterState)initWithMagnitudeState:(id)state unitString:(id)string;
- (WFQuantityParameterState)initWithMagnitudeState:(id)state unitString:(id)string variable:(id)variable;
- (WFQuantityParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFQuantityParameterState)initWithVariable:(id)variable;
- (unint64_t)hash;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFQuantityParameterState

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  magnitudeState = [(WFQuantityParameterState *)self magnitudeState];
  decimalNumber = [magnitudeState decimalNumber];
  if (decimalNumber)
  {
  }

  else
  {
    magnitudeState2 = [(WFQuantityParameterState *)self magnitudeState];
    variable = [magnitudeState2 variable];

    if (!variable)
    {
      (*(valueHandlerCopy + 2))(valueHandlerCopy, 0, 0);
      goto LABEL_5;
    }
  }

  magnitudeState3 = [(WFQuantityParameterState *)self magnitudeState];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__WFQuantityParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
  v18[3] = &unk_1E8376038;
  v18[4] = self;
  v19 = handlerCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__WFQuantityParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
  v16[3] = &unk_1E8376060;
  v16[4] = self;
  v17 = valueHandlerCopy;
  [magnitudeState3 processWithContext:contextCopy userInputRequiredHandler:v18 valueHandler:v16];

LABEL_5:
}

void __85__WFQuantityParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v9 = objc_alloc(objc_opt_class());
  v11 = [*(a1 + 32) unitString];
  v10 = [v9 initWithMagnitudeState:v7 unitString:v11];

  (*(v5 + 16))(v5, v8, v10);
}

void __85__WFQuantityParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v10 = v5;
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x1E6996F28]);
    v8 = [*(a1 + 32) unitString];
    v9 = [v7 initWithMagnitude:v10 unitString:v8];
    (*(v6 + 16))(v6, v9, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, a3);
  }
}

- (NSArray)containedVariables
{
  magnitudeState = [(WFQuantityParameterState *)self magnitudeState];
  containedVariables = [magnitudeState containedVariables];

  return containedVariables;
}

- (unint64_t)hash
{
  magnitudeState = [(WFQuantityParameterState *)self magnitudeState];
  v4 = [magnitudeState hash];
  unitString = [(WFQuantityParameterState *)self unitString];
  v6 = [unitString hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      magnitudeState = [(WFQuantityParameterState *)equalCopy magnitudeState];
      magnitudeState2 = [(WFQuantityParameterState *)self magnitudeState];
      if (magnitudeState == magnitudeState2 || (-[WFQuantityParameterState magnitudeState](equalCopy, "magnitudeState"), v3 = objc_claimAutoreleasedReturnValue(), -[WFQuantityParameterState magnitudeState](self, "magnitudeState"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        unitString = [(WFQuantityParameterState *)equalCopy unitString];
        unitString2 = [(WFQuantityParameterState *)self unitString];
        if (unitString == unitString2)
        {
          v9 = 1;
        }

        else
        {
          unitString3 = [(WFQuantityParameterState *)equalCopy unitString];
          unitString4 = [(WFQuantityParameterState *)self unitString];
          v9 = [unitString3 isEqualToString:unitString4];
        }

        if (magnitudeState == magnitudeState2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (WFPropertyListObject)serializedRepresentation
{
  v15[2] = *MEMORY[0x1E69E9840];
  magnitudeState = [(WFQuantityParameterState *)self magnitudeState];
  variable = [magnitudeState variable];
  serializedRepresentation = [variable serializedRepresentation];
  v6 = serializedRepresentation;
  if (serializedRepresentation)
  {
    serializedRepresentation2 = serializedRepresentation;
  }

  else
  {
    serializedRepresentation2 = [magnitudeState serializedRepresentation];
  }

  v8 = serializedRepresentation2;

  v9 = objc_opt_new();
  [v9 setValue:v8 forKey:*MEMORY[0x1E6997128]];
  unitString = [(WFQuantityParameterState *)self unitString];
  [v9 setValue:unitString forKey:*MEMORY[0x1E6997130]];

  v14[0] = @"WFSerializationType";
  v14[1] = @"Value";
  v15[0] = @"WFQuantityFieldValue";
  v15[1] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (WFQuantityParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  providerCopy = provider;
  parameterCopy = parameter;
  representationCopy = representation;
  v11 = objc_opt_class();
  v12 = WFEnforceClass_1501(representationCopy, v11);

  if (v12)
  {
    v13 = [v12 objectForKey:@"Value"];
    v14 = objc_opt_class();
    selfCopy = WFEnforceClass_1501(v13, v14);

    if (selfCopy)
    {
      v16 = [(WFQuantityParameterState *)selfCopy objectForKeyedSubscript:*MEMORY[0x1E6997128]];
      v17 = [(WFQuantityParameterState *)selfCopy objectForKeyedSubscript:*MEMORY[0x1E6997130]];
      v18 = objc_opt_class();
      v19 = WFEnforceClass_1501(v17, v18);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [[WFVariable alloc] initWithDictionary:v16 variableProvider:providerCopy];
        if (v20)
        {
          v21 = [(WFVariableSubstitutableParameterState *)[WFNumberStringSubstitutableState alloc] initWithVariable:v20];
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = [(WFVariableSubstitutableParameterState *)[WFNumberStringSubstitutableState alloc] initWithSerializedRepresentation:v16 variableProvider:providerCopy parameter:parameterCopy];
      }

      self = [(WFQuantityParameterState *)self initWithMagnitudeState:v21 unitString:v19];

      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFQuantityParameterState)initWithVariable:(id)variable
{
  variableCopy = variable;
  v5 = [(WFVariableSubstitutableParameterState *)[WFNumberStringSubstitutableState alloc] initWithVariable:variableCopy];
  v6 = [(WFQuantityParameterState *)self initWithMagnitudeState:v5 unitString:0 variable:variableCopy];

  return v6;
}

- (WFQuantityParameterState)initWithMagnitudeState:(id)state unitString:(id)string variable:(id)variable
{
  stateCopy = state;
  stringCopy = string;
  variableCopy = variable;
  v18.receiver = self;
  v18.super_class = WFQuantityParameterState;
  v12 = [(WFQuantityParameterState *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_magnitudeState, state);
    v14 = [stringCopy copy];
    unitString = v13->_unitString;
    v13->_unitString = v14;

    objc_storeStrong(&v13->_variable, variable);
    v16 = v13;
  }

  return v13;
}

- (WFQuantityParameterState)initWithMagnitudeState:(id)state unitString:(id)string
{
  stateCopy = state;
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = WFQuantityParameterState;
  v9 = [(WFQuantityParameterState *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_magnitudeState, state);
    v11 = [stringCopy copy];
    unitString = v10->_unitString;
    v10->_unitString = v11;

    v13 = v10;
  }

  return v10;
}

@end