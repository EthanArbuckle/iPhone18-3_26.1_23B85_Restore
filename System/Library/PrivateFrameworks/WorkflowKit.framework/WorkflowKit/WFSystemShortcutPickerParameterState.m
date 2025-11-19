@interface WFSystemShortcutPickerParameterState
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFSystemShortcutPickerParameterState

+ (id)serializedRepresentationFromValue:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"WFSystemShortcutPickerParameterState.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"[action isKindOfClass:[WFConfiguredSystemAction class]]"}];
  }

  v6 = [v5 asLNValue];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 wfSerializedRepresentation];
  }

  else
  {
    v9 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "+[WFSystemShortcutPickerParameterState serializedRepresentationFromValue:]";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Could not get value from system action: %@", buf, 0x16u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v7;
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
  v12 = v9;
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
      v16 = v7;
    }
  }

  v17 = MEMORY[0x1E69ACA90];
  v18 = [objc_alloc(MEMORY[0x1E69AC818]) initWithIdentifier:@"ConfiguredShortcut"];
  v19 = [v17 valueFromSerializedRepresentation:v16 valueType:v18 variableProvider:v8 parameter:v14 bundleIdentifier:*MEMORY[0x1E69E0F60]];

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

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v10)
  {
    v11 = [(WFVariableSubstitutableParameterState *)self variable];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [v11 prompt];
      v8[2](v8, v12, 0);
    }

    else
    {

      v11 = [(WFVariableSubstitutableParameterState *)self variable];
      [v11 getContentWithContext:v13 completionHandler:v9];
    }
  }

  else
  {
    v11 = [(WFVariableSubstitutableParameterState *)self value];
    v9[2](v9, v11, 0);
  }
}

@end