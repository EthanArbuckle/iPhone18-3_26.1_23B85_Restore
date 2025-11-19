@interface WFQuantityFieldParameter
- (WFQuantityFieldParameter)initWithDefinition:(id)a3;
- (id)defaultSerializedRepresentation;
- (id)defaultUnit;
- (void)setPossibleUnits:(id)a3;
@end

@implementation WFQuantityFieldParameter

- (id)defaultSerializedRepresentation
{
  v10.receiver = self;
  v10.super_class = WFQuantityFieldParameter;
  v3 = [(WFParameter *)&v10 defaultSerializedRepresentation];
  if (v3)
  {
    v4 = [(WFVariableSubstitutableParameterState *)[WFNumberStringSubstitutableState alloc] initWithSerializedRepresentation:v3 variableProvider:0 parameter:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = [WFQuantityParameterState alloc];
  v6 = [(WFQuantityFieldParameter *)self defaultUnit];
  v7 = [(WFQuantityParameterState *)v5 initWithMagnitudeState:v4 unitString:v6];
  v8 = [(WFQuantityParameterState *)v7 serializedRepresentation];

  return v8;
}

- (id)defaultUnit
{
  v2 = [(WFQuantityFieldParameter *)self possibleUnits];
  v3 = [v2 firstObject];

  return v3;
}

- (void)setPossibleUnits:(id)a3
{
  v4 = [a3 copy];
  possibleUnits = self->_possibleUnits;
  self->_possibleUnits = v4;

  [(WFParameter *)self attributesDidChange];
}

- (WFQuantityFieldParameter)initWithDefinition:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WFQuantityFieldParameter;
  v5 = [(WFNumberFieldParameter *)&v17 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"PossibleUnits"];
    v7 = objc_opt_class();
    v8 = v6;
    if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = getWFGeneralLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = objc_opt_class();
        *buf = 136315906;
        v19 = "WFEnforceClass";
        v20 = 2114;
        v21 = v8;
        v22 = 2114;
        v23 = v11;
        v24 = 2114;
        v25 = v7;
        v12 = v11;
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
      }

      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_possibleUnits, v13);

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end