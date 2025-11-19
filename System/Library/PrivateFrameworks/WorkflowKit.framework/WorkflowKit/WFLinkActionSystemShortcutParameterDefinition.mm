@interface WFLinkActionSystemShortcutParameterDefinition
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionSystemShortcutParameterDefinition

- (id)parameterStateFromLinkValue:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 value];
  if (v4)
  {
    v5 = [MEMORY[0x1E69E09F8] systemActionWithValue:v3];
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
        v13 = v3;
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

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a9;
  v11 = v10;
  if (v9)
  {
    objc_opt_class();
    v12 = objc_opt_isKindOfClass() & 1;
    if (v12)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    if (v12)
    {
      v15 = [v9 asLNValue];
      (v11)[2](v11, v15, 0);
    }

    else
    {
      v16 = getWFGeneralLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315394;
        v19 = "[WFLinkActionSystemShortcutParameterDefinition getLinkValueFromProcessedParameterValue:parameterState:permissionRequestor:runningFromToolKit:action:parameterKey:completionHandler:]";
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_DEBUG, "%s Could not get system action from processed parameter value: %@", &v18, 0x16u);
      }

      v11[2](v11, 0, 0);
    }
  }

  else
  {
    (*(v10 + 2))(v10, 0, 0);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 value];
    v9 = [v8 asLNValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end