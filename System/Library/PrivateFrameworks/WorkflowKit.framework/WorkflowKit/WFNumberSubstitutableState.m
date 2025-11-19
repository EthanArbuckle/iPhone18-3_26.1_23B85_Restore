@interface WFNumberSubstitutableState
+ (id)serializedRepresentationFromNumber:(id)a3;
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (NSNumber)number;
- (WFNumberSubstitutableState)initWithNumber:(id)a3;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFNumberSubstitutableState

- (NSNumber)number
{
  v2 = [(WFVariableSubstitutableParameterState *)self value];
  v3 = [v2 number];

  return v3;
}

- (WFNumberSubstitutableState)initWithNumber:(id)a3
{
  v4 = [WFNumberWrapper wrapperWithNumber:a3];
  v5 = [(WFVariableSubstitutableParameterState *)self initWithValue:v4];

  return v5;
}

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v11)
  {
    v13.receiver = self;
    v13.super_class = WFNumberSubstitutableState;
    [(WFVariableSubstitutableParameterState *)&v13 processWithContext:v8 userInputRequiredHandler:v9 valueHandler:v10];
  }

  else
  {
    v12 = [(WFNumberSubstitutableState *)self number];
    v10[2](v10, v12, 0);
  }
}

+ (id)serializedRepresentationFromNumber:(id)a3
{
  v4 = [WFNumberWrapper wrapperWithNumber:a3];
  v5 = [a1 serializedRepresentationFromValue:v4];

  return v5;
}

+ (id)serializedRepresentationFromValue:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"WFNumberSubstitutableState.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[WFNumberWrapper class]]"}];
  }

  v6 = [v5 number];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1F4A1C408;
  }

  v9 = v8;

  return v8;
}

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [WFNumberWrapper wrapperWithNumber:0];
    goto LABEL_10;
  }

  v7 = objc_opt_class();
  v8 = v5;
  if (v8)
  {
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v6 = [WFNumberWrapper wrapperWithNumber:v9];

      goto LABEL_10;
    }

    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315906;
      v15 = "WFEnforceClass";
      v16 = 2114;
      v17 = v9;
      v18 = 2114;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v7;
      v11 = v19;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v14, 0x2Au);
    }
  }

  v6 = 0;
LABEL_10:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

@end