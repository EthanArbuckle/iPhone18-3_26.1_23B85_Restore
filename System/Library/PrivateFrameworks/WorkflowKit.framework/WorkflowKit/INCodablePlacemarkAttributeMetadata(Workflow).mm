@interface INCodablePlacemarkAttributeMetadata(Workflow)
- (WFLocationParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:;
@end

@implementation INCodablePlacemarkAttributeMetadata(Workflow)

- (WFLocationParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  CLPlacemarkClass = getCLPlacemarkClass();
  v9 = v6;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = [[WFLocationValue alloc] initWithPlacemark:v9];
      v11 = [[WFLocationParameterState alloc] initWithValue:v10];

      goto LABEL_8;
    }

    v12 = getWFGeneralLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v18 = "WFEnforceClass";
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = objc_opt_class();
      v23 = 2114;
      v24 = CLPlacemarkClass;
      v13 = v22;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
    }
  }

  v16.receiver = self;
  v16.super_class = &off_1F4B0CBF8;
  v11 = objc_msgSendSuper2(&v16, sel_wf_parameterStateForIntentValue_parameterDefinition_, v9, v7);
LABEL_8:

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &off_1F4B0CBF8;
  v2 = objc_msgSendSuper2(&v7, sel_wf_updatedParameterDefinition_forCodableAttribute_localizer_);
  if ([self type] == 2)
  {
    v8 = @"CurrentLocationAccuracy";
    v9[0] = @"ThreeKilometers";
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v4 = [v2 definitionByAddingEntriesInDictionary:v3];

    v2 = v4;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

@end