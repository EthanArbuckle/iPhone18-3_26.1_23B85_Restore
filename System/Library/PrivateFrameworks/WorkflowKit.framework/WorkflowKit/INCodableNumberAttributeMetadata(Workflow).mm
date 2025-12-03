@interface INCodableNumberAttributeMetadata(Workflow)
- (WFNumberSubstitutableState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (id)wf_parameterClass;
- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:;
@end

@implementation INCodableNumberAttributeMetadata(Workflow)

- (WFNumberSubstitutableState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v6;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      if ([self type])
      {
        v10 = [[WFNumberSubstitutableState alloc] initWithNumber:v9];
      }

      else
      {
        v13 = [WFNumberStringSubstitutableState alloc];
        stringValue = [v9 stringValue];
        v10 = [(WFNumberStringSubstitutableState *)v13 initWithValue:stringValue];
      }

      goto LABEL_11;
    }

    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "WFEnforceClass";
      v20 = 2114;
      v21 = v9;
      v22 = 2114;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = v8;
      v12 = v23;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
    }
  }

  v17.receiver = self;
  v17.super_class = &off_1F4AFF468;
  v10 = objc_msgSendSuper2(&v17, sel_wf_parameterStateForIntentValue_parameterDefinition_, v9, v7);
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:
{
  v49[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v35.receiver = self;
  v35.super_class = &off_1F4AFF468;
  v10 = objc_msgSendSuper2(&v35, sel_wf_updatedParameterDefinition_forCodableAttribute_localizer_, a3, v8, v9);
  type = [self type];
  defaultValue = [self defaultValue];
  if (defaultValue)
  {
    if ([self type])
    {
      v46 = @"DefaultValue";
      v47 = defaultValue;
      stringValue = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v14 = [v10 definitionByAddingEntriesInDictionary:stringValue];
    }

    else
    {
      v48 = @"DefaultValue";
      stringValue = [defaultValue stringValue];
      v49[0] = stringValue;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      v14 = [v10 definitionByAddingEntriesInDictionary:v15];

      v10 = v15;
    }

    v10 = v14;
  }

  v44 = @"AllowsNegativeNumbers";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "supportsNegativeNumbers")}];
  v45 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v18 = [v10 definitionByAddingEntriesInDictionary:v17];

  if (!type)
  {
    v36 = @"AllowsDecimalNumbers";
    valueType = [v8 valueType];
    v32 = MEMORY[0x1E695E110];
    if (valueType == 21)
    {
      v32 = MEMORY[0x1E695E118];
    }

    v37 = v32;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v30 = [v18 definitionByAddingEntriesInDictionary:v25];
    goto LABEL_16;
  }

  minimumValue = [self minimumValue];
  maximumValue = [self maximumValue];
  if (minimumValue)
  {
    v42 = @"MinimumValue";
    v43 = minimumValue;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v22 = [v18 definitionByAddingEntriesInDictionary:v21];

    v18 = v22;
  }

  if (maximumValue)
  {
    v40 = @"MaximumValue";
    v41 = maximumValue;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v24 = [v18 definitionByAddingEntriesInDictionary:v23];

    v18 = v24;
  }

  if (type == 1)
  {
    v38[0] = @"StepperDescription";
    v25 = [v8 localizedDisplayNameWithLocalizer:v9];
    v38[1] = @"StepperNoun";
    v39[0] = v25;
    v26 = MEMORY[0x1E696AEC0];
    v27 = [v8 localizedDisplayNameWithLocalizer:v9];
    v28 = [v26 localizedStringWithFormat:@"%@: %@", v27, @"%ld"];
    v39[1] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v30 = [v18 definitionByAddingEntriesInDictionary:v29];

    v18 = v27;
LABEL_16:

    v18 = v30;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)wf_parameterClass
{
  type = [self type];
  if (type > 2)
  {
    v3 = 0;
  }

  else
  {
    v2 = *off_1E837A4D0[type];
    v3 = objc_opt_class();
  }

  return v3;
}

@end