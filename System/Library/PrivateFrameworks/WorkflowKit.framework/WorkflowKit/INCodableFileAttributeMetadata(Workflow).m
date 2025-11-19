@interface INCodableFileAttributeMetadata(Workflow)
- (WFFileParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:;
- (uint64_t)wf_processParameterValue:()Workflow forParameter:parameterState:codableAttribute:completionHandler:;
@end

@implementation INCodableFileAttributeMetadata(Workflow)

- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8.receiver = a1;
  v8.super_class = &off_1F4B118E8;
  v2 = objc_msgSendSuper2(&v8, sel_wf_updatedParameterDefinition_forCodableAttribute_localizer_);
  v9 = @"FilePickerSupportedTypes";
  v3 = [a1 UTIs];
  v10[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = [v2 definitionByAddingEntriesInDictionary:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (WFFileParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 _bookmarkData];

  if (v9)
  {
    v10 = [WFFileValue alloc];
    v11 = [v8 _bookmarkData];
    v12 = [v8 filename];
    v13 = [v8 filename];
    v14 = [(WFFileValue *)v10 initWithBookmarkData:v11 filename:v12 displayName:v13];
  }

  else
  {
    v15 = [v8 fileURL];

    if (!v15)
    {
      goto LABEL_12;
    }

    v16 = [WFFileValue alloc];
    v11 = [v8 fileURL];
    v14 = [(WFFileValue *)v16 initWithURL:v11];
  }

  if (v14)
  {
    v17 = [(WFVariableSubstitutableParameterState *)[WFFileParameterState alloc] initWithValue:v14];

    goto LABEL_13;
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (uint64_t)wf_processParameterValue:()Workflow forParameter:parameterState:codableAttribute:completionHandler:
{
  v11 = MEMORY[0x1E696E840];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [a1 UTIs];
  v17 = [v13 wf_multipleValues];
  v18 = [v13 supportsDynamicEnumeration];

  v19 = [v11 wf_processParameterValue:v15 parameterState:v14 coerceToSupportedUTIs:v16 array:v17 dynamicOptions:v18 completionHandler:v12];
  return v19;
}

@end