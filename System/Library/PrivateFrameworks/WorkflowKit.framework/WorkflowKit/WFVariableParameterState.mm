@interface WFVariableParameterState
- (BOOL)isEqual:(id)equal;
- (NSArray)containedVariables;
- (WFPropertyListObject)serializedRepresentation;
- (WFVariableParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFVariableParameterState)initWithVariable:(id)variable;
- (unint64_t)hash;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFVariableParameterState

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variable = [(WFVariableParameterState *)self variable];
  if (variable && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    prompt = [variable prompt];
    handlerCopy[2](handlerCopy, prompt, 0);
  }

  else
  {

    variable2 = [(WFVariableParameterState *)self variable];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85__WFVariableParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
    v14[3] = &unk_1E837DC20;
    v15 = valueHandlerCopy;
    [variable2 getContentWithContext:contextCopy completionHandler:v14];

    variable = v15;
  }
}

- (NSArray)containedVariables
{
  v6[1] = *MEMORY[0x1E69E9840];
  variable = [(WFVariableParameterState *)self variable];
  v6[0] = variable;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  variable = [(WFVariableParameterState *)self variable];
  v3 = [variable hash];

  return v3 ^ 0xADFAF12DLL;
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
      variable = [(WFVariableParameterState *)self variable];
      if (variable || ([(WFVariableParameterState *)equalCopy variable], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        variable2 = [(WFVariableParameterState *)self variable];
        variable3 = [(WFVariableParameterState *)equalCopy variable];
        v9 = [variable2 isEqual:variable3];

        if (variable)
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
  variable = [(WFVariableParameterState *)self variable];
  v3 = WFSerializedVariableObject(variable);

  return v3;
}

- (WFVariableParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v27 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  v11 = objc_opt_class();
  v12 = representationCopy;
  if (!v12)
  {
LABEL_8:
    selfCopy = 0;
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

  v13 = WFDeserializedVariableObject(v12, providerCopy, parameterCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(WFVariableParameterState *)self initWithVariable:v13];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_11:
  v17 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (WFVariableParameterState)initWithVariable:(id)variable
{
  variableCopy = variable;
  if (!variableCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFVariableParameterState.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"variable"}];
  }

  v12.receiver = self;
  v12.super_class = WFVariableParameterState;
  v7 = [(WFVariableParameterState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_variable, variable);
    v9 = v8;
  }

  return v8;
}

@end