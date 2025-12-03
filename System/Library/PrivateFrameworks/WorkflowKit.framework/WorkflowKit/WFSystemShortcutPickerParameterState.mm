@interface WFSystemShortcutPickerParameterState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFSystemShortcutPickerParameterState

+ (id)serializedRepresentationFromValue:(id)value
{
  v17 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSystemShortcutPickerParameterState.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"[action isKindOfClass:[WFConfiguredSystemAction class]]"}];
  }

  asLNValue = [valueCopy asLNValue];
  v7 = asLNValue;
  if (asLNValue)
  {
    wfSerializedRepresentation = [asLNValue wfSerializedRepresentation];
  }

  else
  {
    v9 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "+[WFSystemShortcutPickerParameterState serializedRepresentationFromValue:]";
      v15 = 2112;
      v16 = valueCopy;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Could not get value from system action: %@", buf, 0x16u);
    }

    wfSerializedRepresentation = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return wfSerializedRepresentation;
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v26 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  if (representationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = representationCopy;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = parameterCopy;
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = v11;
  v16 = v15;
  if (!v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0;
    }

    else
    {
      v16 = representationCopy;
    }
  }

  v17 = MEMORY[0x1E69ACA90];
  v18 = [objc_alloc(MEMORY[0x1E69AC818]) initWithIdentifier:@"ConfiguredShortcut"];
  v19 = [v17 valueFromSerializedRepresentation:v16 valueType:v18 variableProvider:providerCopy parameter:v14 bundleIdentifier:*MEMORY[0x1E69E0F60]];

  if (v19)
  {
    v20 = [MEMORY[0x1E69E09F8] systemActionWithValue:v19];
  }

  else
  {
    v21 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315138;
      v25 = "+[WFSystemShortcutPickerParameterState valueFromSerializedRepresentation:variableProvider:parameter:]";
      _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_ERROR, "%s Failed to system shortcut value", &v24, 0xCu);
    }

    v20 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self variable];
    if (variable2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      prompt = [variable2 prompt];
      handlerCopy[2](handlerCopy, prompt, 0);
    }

    else
    {

      variable2 = [(WFVariableSubstitutableParameterState *)self variable];
      [variable2 getContentWithContext:contextCopy completionHandler:valueHandlerCopy];
    }
  }

  else
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self value];
    valueHandlerCopy[2](valueHandlerCopy, variable2, 0);
  }
}

@end