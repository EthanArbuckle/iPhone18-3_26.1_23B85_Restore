@interface WFIntentDescriptorParameterState
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFIntentDescriptorParameterState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = WFLocalizedString(@"Select an app");
  v12 = [(WFVariableSubstitutableParameterState *)self value];
  v13 = [v12 requiresUserConfirmation];

  if (v13)
  {
    goto LABEL_7;
  }

  v14 = [(WFVariableSubstitutableParameterState *)self variable];

  if (!v14)
  {
    v17.receiver = self;
    v17.super_class = WFIntentDescriptorParameterState;
    [(WFVariableSubstitutableParameterState *)&v17 processWithContext:v8 userInputRequiredHandler:v9 valueHandler:v10];
    goto LABEL_9;
  }

  v15 = [(WFVariableSubstitutableParameterState *)self variable];
  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_7:
    v9[2](v9, v11, 0);
    goto LABEL_9;
  }

  v16 = [v15 prompt];
  v9[2](v9, v16, 0);

LABEL_9:
}

+ (id)serializedRepresentationFromValue:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"WFAppDescriptorParameterState.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[INIntentDescriptor class]]"}];
  }

  v6 = v5;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 serializedRepresentation];

  return v9;
}

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = v5;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = [objc_alloc(MEMORY[0x1E696E890]) initWithSerializedRepresentation:v7];
      v9 = [MEMORY[0x1E696E748] sharedResolver];
      v10 = [v9 resolvedIntentMatchingDescriptor:v8];

      goto LABEL_8;
    }

    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v15 = 136315906;
      v16 = "WFEnforceClass";
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = v6;
      v12 = v20;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s No serialized representation to make an app descriptor", &v15, 0x2Au);
    }
  }

  v10 = 0;
LABEL_8:

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

@end