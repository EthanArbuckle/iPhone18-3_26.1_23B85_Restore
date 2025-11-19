@interface WFVariableParameterState
- (BOOL)isEqual:(id)a3;
- (NSArray)containedVariables;
- (WFPropertyListObject)serializedRepresentation;
- (WFVariableParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFVariableParameterState)initWithVariable:(id)a3;
- (unint64_t)hash;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFVariableParameterState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableParameterState *)self variable];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [v11 prompt];
    v9[2](v9, v12, 0);
  }

  else
  {

    v13 = [(WFVariableParameterState *)self variable];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85__WFVariableParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
    v14[3] = &unk_1E837DC20;
    v15 = v10;
    [v13 getContentWithContext:v8 completionHandler:v14];

    v11 = v15;
  }
}

- (NSArray)containedVariables
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(WFVariableParameterState *)self variable];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(WFVariableParameterState *)self variable];
  v3 = [v2 hash];

  return v3 ^ 0xADFAF12DLL;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(WFVariableParameterState *)self variable];
      if (v6 || ([(WFVariableParameterState *)v5 variable], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v7 = [(WFVariableParameterState *)self variable];
        v8 = [(WFVariableParameterState *)v5 variable];
        v9 = [v7 isEqual:v8];

        if (v6)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      else
      {
        v9 = 1;
      }

      goto LABEL_11;
    }

    v9 = 0;
  }

LABEL_12:

  return v9;
}

- (WFPropertyListObject)serializedRepresentation
{
  v2 = [(WFVariableParameterState *)self variable];
  v3 = WFSerializedVariableObject(v2);

  return v3;
}

- (WFVariableParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = v8;
  if (!v12)
  {
LABEL_8:
    v14 = 0;
    goto LABEL_11;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = getWFGeneralLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v19 = 136315906;
      v20 = "WFEnforceClass";
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = v11;
      v16 = v24;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v19, 0x2Au);
    }

    goto LABEL_8;
  }

  v13 = WFDeserializedVariableObject(v12, v9, v10);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(WFVariableParameterState *)self initWithVariable:v13];
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

LABEL_11:
  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

- (WFVariableParameterState)initWithVariable:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFVariableParameterState.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"variable"}];
  }

  v12.receiver = self;
  v12.super_class = WFVariableParameterState;
  v7 = [(WFVariableParameterState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_variable, a3);
    v9 = v8;
  }

  return v8;
}

@end