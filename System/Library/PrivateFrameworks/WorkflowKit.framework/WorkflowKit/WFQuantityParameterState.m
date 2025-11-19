@interface WFQuantityParameterState
- (BOOL)isEqual:(id)a3;
- (NSArray)containedVariables;
- (WFPropertyListObject)serializedRepresentation;
- (WFQuantityParameterState)initWithMagnitudeState:(id)a3 unitString:(id)a4;
- (WFQuantityParameterState)initWithMagnitudeState:(id)a3 unitString:(id)a4 variable:(id)a5;
- (WFQuantityParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFQuantityParameterState)initWithVariable:(id)a3;
- (unint64_t)hash;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFQuantityParameterState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFQuantityParameterState *)self magnitudeState];
  v12 = [v11 decimalNumber];
  if (v12)
  {
  }

  else
  {
    v13 = [(WFQuantityParameterState *)self magnitudeState];
    v14 = [v13 variable];

    if (!v14)
    {
      (*(v10 + 2))(v10, 0, 0);
      goto LABEL_5;
    }
  }

  v15 = [(WFQuantityParameterState *)self magnitudeState];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__WFQuantityParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
  v18[3] = &unk_1E8376038;
  v18[4] = self;
  v19 = v9;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__WFQuantityParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
  v16[3] = &unk_1E8376060;
  v16[4] = self;
  v17 = v10;
  [v15 processWithContext:v8 userInputRequiredHandler:v18 valueHandler:v16];

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
  v2 = [(WFQuantityParameterState *)self magnitudeState];
  v3 = [v2 containedVariables];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(WFQuantityParameterState *)self magnitudeState];
  v4 = [v3 hash];
  v5 = [(WFQuantityParameterState *)self unitString];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(WFQuantityParameterState *)v6 magnitudeState];
      v8 = [(WFQuantityParameterState *)self magnitudeState];
      if (v7 == v8 || (-[WFQuantityParameterState magnitudeState](v6, "magnitudeState"), v3 = objc_claimAutoreleasedReturnValue(), -[WFQuantityParameterState magnitudeState](self, "magnitudeState"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v10 = [(WFQuantityParameterState *)v6 unitString];
        v11 = [(WFQuantityParameterState *)self unitString];
        if (v10 == v11)
        {
          v9 = 1;
        }

        else
        {
          v12 = [(WFQuantityParameterState *)v6 unitString];
          v13 = [(WFQuantityParameterState *)self unitString];
          v9 = [v12 isEqualToString:v13];
        }

        if (v7 == v8)
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
  v3 = [(WFQuantityParameterState *)self magnitudeState];
  v4 = [v3 variable];
  v5 = [v4 serializedRepresentation];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v3 serializedRepresentation];
  }

  v8 = v7;

  v9 = objc_opt_new();
  [v9 setValue:v8 forKey:*MEMORY[0x1E6997128]];
  v10 = [(WFQuantityParameterState *)self unitString];
  [v9 setValue:v10 forKey:*MEMORY[0x1E6997130]];

  v14[0] = @"WFSerializationType";
  v14[1] = @"Value";
  v15[0] = @"WFQuantityFieldValue";
  v15[1] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (WFQuantityParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = WFEnforceClass_1501(v10, v11);

  if (v12)
  {
    v13 = [v12 objectForKey:@"Value"];
    v14 = objc_opt_class();
    v15 = WFEnforceClass_1501(v13, v14);

    if (v15)
    {
      v16 = [(WFQuantityParameterState *)v15 objectForKeyedSubscript:*MEMORY[0x1E6997128]];
      v17 = [(WFQuantityParameterState *)v15 objectForKeyedSubscript:*MEMORY[0x1E6997130]];
      v18 = objc_opt_class();
      v19 = WFEnforceClass_1501(v17, v18);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [[WFVariable alloc] initWithDictionary:v16 variableProvider:v8];
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
        v21 = [(WFVariableSubstitutableParameterState *)[WFNumberStringSubstitutableState alloc] initWithSerializedRepresentation:v16 variableProvider:v8 parameter:v9];
      }

      self = [(WFQuantityParameterState *)self initWithMagnitudeState:v21 unitString:v19];

      v15 = self;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (WFQuantityParameterState)initWithVariable:(id)a3
{
  v4 = a3;
  v5 = [(WFVariableSubstitutableParameterState *)[WFNumberStringSubstitutableState alloc] initWithVariable:v4];
  v6 = [(WFQuantityParameterState *)self initWithMagnitudeState:v5 unitString:0 variable:v4];

  return v6;
}

- (WFQuantityParameterState)initWithMagnitudeState:(id)a3 unitString:(id)a4 variable:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = WFQuantityParameterState;
  v12 = [(WFQuantityParameterState *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_magnitudeState, a3);
    v14 = [v10 copy];
    unitString = v13->_unitString;
    v13->_unitString = v14;

    objc_storeStrong(&v13->_variable, a5);
    v16 = v13;
  }

  return v13;
}

- (WFQuantityParameterState)initWithMagnitudeState:(id)a3 unitString:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WFQuantityParameterState;
  v9 = [(WFQuantityParameterState *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_magnitudeState, a3);
    v11 = [v8 copy];
    unitString = v10->_unitString;
    v10->_unitString = v11;

    v13 = v10;
  }

  return v10;
}

@end