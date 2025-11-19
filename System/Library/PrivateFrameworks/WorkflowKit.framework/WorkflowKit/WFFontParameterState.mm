@interface WFFontParameterState
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
@end

@implementation WFFontParameterState

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = v5;
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = getWFGeneralLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315906;
      v15 = "WFEnforceClass";
      v16 = 2114;
      v17 = v7;
      v18 = 2114;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v6;
      v10 = v19;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v14, 0x2Au);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if ([v8 count])
  {
    v11 = [WFFontDescriptor descriptorWithSerializedRepresentation:v8];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)serializedRepresentationFromValue:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v5)
    {
LABEL_3:
      v6 = [v5 serializedRepresentation];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"WFFontParameterState.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[WFFontDescriptor class]]"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

@end