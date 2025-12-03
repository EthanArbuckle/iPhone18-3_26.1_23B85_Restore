@interface WFLinkActionSystemShortcutParameterDefinition
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionSystemShortcutParameterDefinition

- (id)parameterStateFromLinkValue:(id)value
{
  v14 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  value = [valueCopy value];
  if (value)
  {
    v5 = [MEMORY[0x1E69E09F8] systemActionWithValue:valueCopy];
    if (v5)
    {
      v6 = [(WFVariableSubstitutableParameterState *)[WFSystemShortcutPickerParameterState alloc] initWithValue:v5];
    }

    else
    {
      v7 = getWFGeneralLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "[WFLinkActionSystemShortcutParameterDefinition parameterStateFromLinkValue:]";
        v12 = 2112;
        v13 = valueCopy;
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Could not get system action from link value: %@", &v10, 0x16u);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (valueCopy)
  {
    objc_opt_class();
    v12 = objc_opt_isKindOfClass() & 1;
    if (v12)
    {
      v13 = valueCopy;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    if (v12)
    {
      asLNValue = [valueCopy asLNValue];
      (v11)[2](v11, asLNValue, 0);
    }

    else
    {
      v16 = getWFGeneralLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315394;
        v19 = "[WFLinkActionSystemShortcutParameterDefinition getLinkValueFromProcessedParameterValue:parameterState:permissionRequestor:runningFromToolKit:action:parameterKey:completionHandler:]";
        v20 = 2112;
        v21 = valueCopy;
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_DEBUG, "%s Could not get system action from processed parameter value: %@", &v18, 0x16u);
      }

      v11[2](v11, 0, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  actionCopy = action;
  v7 = stateCopy;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    value = [v7 value];
    asLNValue = [value asLNValue];
  }

  else
  {
    asLNValue = 0;
  }

  return asLNValue;
}

@end