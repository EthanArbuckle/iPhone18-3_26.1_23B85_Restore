@interface WFIntentDescriptorParameterState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFIntentDescriptorParameterState

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  v11 = WFLocalizedString(@"Select an app");
  value = [(WFVariableSubstitutableParameterState *)self value];
  requiresUserConfirmation = [value requiresUserConfirmation];

  if (requiresUserConfirmation)
  {
    goto LABEL_7;
  }

  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (!variable)
  {
    v17.receiver = self;
    v17.super_class = WFIntentDescriptorParameterState;
    [(WFVariableSubstitutableParameterState *)&v17 processWithContext:contextCopy userInputRequiredHandler:handlerCopy valueHandler:valueHandlerCopy];
    goto LABEL_9;
  }

  variable2 = [(WFVariableSubstitutableParameterState *)self variable];
  if (!variable2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_7:
    handlerCopy[2](handlerCopy, v11, 0);
    goto LABEL_9;
  }

  prompt = [variable2 prompt];
  handlerCopy[2](handlerCopy, prompt, 0);

LABEL_9:
}

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAppDescriptorParameterState.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[INIntentDescriptor class]]"}];
  }

  v6 = valueCopy;
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

  serializedRepresentation = [v8 serializedRepresentation];

  return serializedRepresentation;
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v23 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v6 = objc_opt_class();
  v7 = representationCopy;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = [objc_alloc(MEMORY[0x1E696E890]) initWithSerializedRepresentation:v7];
      mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
      v10 = [mEMORY[0x1E696E748] resolvedIntentMatchingDescriptor:v8];

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