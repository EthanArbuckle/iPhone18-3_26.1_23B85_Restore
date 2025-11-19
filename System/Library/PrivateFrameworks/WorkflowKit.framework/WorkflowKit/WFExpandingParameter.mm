@interface WFExpandingParameter
- (NSString)hintLabel;
- (WFExpandingParameter)initWithDefinition:(id)a3;
- (WFExpandingParameterHintProvider)hintProvider;
@end

@implementation WFExpandingParameter

- (WFExpandingParameterHintProvider)hintProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_hintProvider);

  return WeakRetained;
}

- (NSString)hintLabel
{
  v3 = [(WFExpandingParameter *)self hintProvider];
  if (v3)
  {
    v4 = [(WFExpandingParameter *)self hintProvider];
    v5 = [v4 hintForExpandingParameter:self];
  }

  else
  {
    v5 = self->_hintLabel;
  }

  return v5;
}

- (WFExpandingParameter)initWithDefinition:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WFExpandingParameter;
  v5 = [(WFParameter *)&v17 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"HintLabel"];
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

    hintLabel = v5->_hintLabel;
    v5->_hintLabel = v9;

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end