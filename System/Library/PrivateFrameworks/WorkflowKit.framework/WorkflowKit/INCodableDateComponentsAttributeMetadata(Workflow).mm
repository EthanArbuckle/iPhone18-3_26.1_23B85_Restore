@interface INCodableDateComponentsAttributeMetadata(Workflow)
- (WFDateFieldParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:;
@end

@implementation INCodableDateComponentsAttributeMetadata(Workflow)

- (WFDateFieldParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v6;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
      v11 = [v9 _intents_readableTitleWithLocalizer:v10 metadata:self];

      v12 = [[WFVariableString alloc] initWithString:v11];
      v13 = [(WFVariableStringParameterState *)[WFDateFieldParameterState alloc] initWithVariableString:v12];

      goto LABEL_8;
    }

    v14 = getWFGeneralLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v20 = "WFEnforceClass";
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = v8;
      v15 = v24;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
    }
  }

  v18.receiver = self;
  v18.super_class = &off_1F4AFD808;
  v13 = objc_msgSendSuper2(&v18, sel_wf_parameterStateForIntentValue_parameterDefinition_, v9, v7);
LABEL_8:

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = &off_1F4AFD808;
  v2 = objc_msgSendSuper2(&v10, sel_wf_updatedParameterDefinition_forCodableAttribute_localizer_);
  type = [self type];
  if (type <= 2 && (v4 = *off_1E8375DE0[type]) != 0)
  {
    v5 = v4;
    v11 = @"HintDateMode";
    v12[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v7 = [v2 definitionByAddingEntriesInDictionary:v6];
  }

  else
  {
    v7 = v2;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end