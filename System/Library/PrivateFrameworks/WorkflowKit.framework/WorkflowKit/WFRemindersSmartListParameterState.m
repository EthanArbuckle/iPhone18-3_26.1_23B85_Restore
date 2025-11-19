@interface WFRemindersSmartListParameterState
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (id)legacySerializedRepresentation;
@end

@implementation WFRemindersSmartListParameterState

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v24 = @"identifier";
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.reminders.smartlist.%@", v11];
    v25[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

    if (v13)
    {
      v14 = v11;
      v11 = v13;
    }

    else
    {
      v18 = getWFActionsLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "+[WFRemindersSmartListParameterState valueFromSerializedRepresentation:variableProvider:parameter:]";
        v22 = 2114;
        v23 = v11;
        _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_DEFAULT, "%s Found unexpected Reminders Smart List: %{public}@", buf, 0x16u);
      }

      v14 = v11;
      v11 = 0;
    }
  }

  else
  {

    v14 = 0;
  }

  v19.receiver = a1;
  v19.super_class = &OBJC_METACLASS___WFRemindersSmartListParameterState;
  v15 = objc_msgSendSuper2(&v19, sel_valueFromSerializedRepresentation_variableProvider_parameter_, v11, v9, v10);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)legacySerializedRepresentation
{
  v2 = [(WFVariableSubstitutableParameterState *)self value];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 value];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = [v3 value];
      if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v5 = [v4 identifier];
        v6 = [v5 instanceIdentifier];

        if (v6)
        {
          v7 = [v6 componentsSeparatedByString:@"."];
          v8 = [v7 lastObject];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end