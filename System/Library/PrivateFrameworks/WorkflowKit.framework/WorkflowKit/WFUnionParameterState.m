@interface WFUnionParameterState
- (BOOL)isEqual:(id)a3;
- (NSArray)containedVariables;
- (NSString)description;
- (WFPropertyListObject)serializedRepresentation;
- (WFUnionParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFUnionParameterState)initWithWhich:(id)a3 states:(id)a4;
- (unint64_t)hash;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFUnionParameterState

- (NSArray)containedVariables
{
  v2 = [(WFUnionParameterState *)self states];
  v3 = [v2 allValues];
  v4 = [v3 valueForKeyPath:@"@unionOfArrays.containedVariables"];

  return v4;
}

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(WFUnionParameterState *)self states];
  v11 = [(WFUnionParameterState *)self which];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    [v12 processWithContext:v13 userInputRequiredHandler:v8 valueHandler:v9];
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

- (unint64_t)hash
{
  v3 = [(WFUnionParameterState *)self which];
  v4 = [v3 hash];
  v5 = [(WFUnionParameterState *)self states];
  v6 = [v5 hash];

  return v6 ^ v4;
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
      v5 = [(WFUnionParameterState *)v4 which];
      v6 = [(WFUnionParameterState *)self which];
      if ([v5 isEqualToString:v6])
      {
        v7 = 0;
      }

      else
      {
        v8 = [(WFUnionParameterState *)v4 states];
        v9 = [(WFUnionParameterState *)self states];
        v7 = [v8 isEqualToDictionary:v9];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFPropertyListObject)serializedRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(WFUnionParameterState *)self states];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(WFUnionParameterState *)self states];
        v11 = [v10 objectForKey:v9];
        v12 = [v11 serializedRepresentation];
        [v3 setObject:v12 forKey:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  v21[0] = @"which";
  v13 = [(WFUnionParameterState *)self which];
  v21[1] = @"states";
  v22[0] = v13;
  v22[1] = v3;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (WFUnionParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v36 = a4;
  v9 = a5;
  v10 = objc_opt_class();
  v11 = WFEnforceClass_1501(v8, v10);
  v12 = objc_opt_class();
  v13 = WFEnforceClass_1501(v9, v12);
  v14 = v13;
  if (v11)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v32 = v9;
    v33 = self;
    v34 = v8;
    v30 = [v11 objectForKey:@"which"];
    v31 = v11;
    v17 = [v11 objectForKey:@"states"];
    v35 = [MEMORY[0x1E695DF90] dictionary];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v37 + 1) + 8 * i);
          v24 = [v18 objectForKey:v23];
          v25 = [v14 subdefinitionForType:v23];
          if (v25)
          {
            v26 = [WFParameter parameterWithDefinition:v25];
            v27 = [objc_alloc(objc_msgSend(v26 "singleStateClass"))];
            [v35 setObject:v27 forKey:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v20);
    }

    self = [(WFUnionParameterState *)v33 initWithWhich:v30 states:v35];
    v16 = self;
    v8 = v34;
    v11 = v31;
    v9 = v32;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v16;
}

- (WFUnionParameterState)initWithWhich:(id)a3 states:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFUnionParameterState.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"which"}];
  }

  v17.receiver = self;
  v17.super_class = WFUnionParameterState;
  v9 = [(WFUnionParameterState *)&v17 init];
  if (v9)
  {
    v10 = [v7 copy];
    which = v9->_which;
    v9->_which = v10;

    if (v8)
    {
      v12 = [v8 copy];
    }

    else
    {
      v12 = MEMORY[0x1E695E0F8];
    }

    states = v9->_states;
    v9->_states = v12;

    v14 = v9;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(WFUnionParameterState *)self which];
  v6 = [(WFUnionParameterState *)self states];
  v7 = [v3 stringWithFormat:@"%@ {\n    which: %@\n    %@}", v4, v5, v6];

  return v7;
}

@end