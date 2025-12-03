@interface INCodableBooleanAttributeMetadata(Workflow)
- (WFBooleanSubstitutableState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:;
@end

@implementation INCodableBooleanAttributeMetadata(Workflow)

- (WFBooleanSubstitutableState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v6;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = [(WFNumberSubstitutableState *)[WFBooleanSubstitutableState alloc] initWithNumber:v9];

      goto LABEL_8;
    }

    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v17 = "WFEnforceClass";
      v18 = 2114;
      v19 = v9;
      v20 = 2114;
      v21 = objc_opt_class();
      v22 = 2114;
      v23 = v8;
      v12 = v21;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
    }
  }

  v15.receiver = self;
  v15.super_class = &off_1F4B001E0;
  v10 = objc_msgSendSuper2(&v15, sel_wf_parameterStateForIntentValue_parameterDefinition_, v9, v7);
LABEL_8:

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:
{
  v18[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = &off_1F4B001E0;
  v2 = objc_msgSendSuper2(&v14, sel_wf_updatedParameterDefinition_forCodableAttribute_localizer_);
  defaultValue = [self defaultValue];
  v4 = defaultValue;
  if (defaultValue)
  {
    v5 = defaultValue;
  }

  else
  {
    v5 = MEMORY[0x1E695E110];
  }

  v17 = @"DefaultValue";
  v18[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v7 = [v2 definitionByAddingEntriesInDictionary:v6];

  v15[0] = @"OnDisplayName";
  v8 = [[WFINCodableBooleanAttributeDisplayName alloc] initWithAttribute:self isOn:1];
  v15[1] = @"OffDisplayName";
  v16[0] = v8;
  v9 = [[WFINCodableBooleanAttributeDisplayName alloc] initWithAttribute:self isOn:0];
  v16[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v11 = [v7 definitionByAddingEntriesInDictionary:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end