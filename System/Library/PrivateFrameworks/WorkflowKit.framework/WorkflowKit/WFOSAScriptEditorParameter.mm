@interface WFOSAScriptEditorParameter
- (WFOSAScriptEditorParameter)initWithDefinition:(id)definition;
- (WFOSAScriptEditorParameterDelegate)delegate;
- (id)defaultSerializedRepresentation;
@end

@implementation WFOSAScriptEditorParameter

- (WFOSAScriptEditorParameterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)defaultSerializedRepresentation
{
  v6.receiver = self;
  v6.super_class = WFOSAScriptEditorParameter;
  defaultSerializedRepresentation = [(WFParameter *)&v6 defaultSerializedRepresentation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localize = defaultSerializedRepresentation;
LABEL_5:
    v4 = localize;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localize = [defaultSerializedRepresentation localize];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (WFOSAScriptEditorParameter)initWithDefinition:(id)definition
{
  v26 = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  v17.receiver = self;
  v17.super_class = WFOSAScriptEditorParameter;
  v5 = [(WFParameter *)&v17 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"LanguageName"];
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
      v13 = @"AppleScript";
    }

    objc_storeStrong(&v5->_languageName, v13);

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end