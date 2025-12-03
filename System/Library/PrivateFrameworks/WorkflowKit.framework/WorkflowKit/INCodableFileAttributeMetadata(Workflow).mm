@interface INCodableFileAttributeMetadata(Workflow)
- (WFFileParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:;
- (uint64_t)wf_processParameterValue:()Workflow forParameter:parameterState:codableAttribute:completionHandler:;
@end

@implementation INCodableFileAttributeMetadata(Workflow)

- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = &off_1F4B118E8;
  v2 = objc_msgSendSuper2(&v8, sel_wf_updatedParameterDefinition_forCodableAttribute_localizer_);
  v9 = @"FilePickerSupportedTypes";
  uTIs = [self UTIs];
  v10[0] = uTIs;
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
  _bookmarkData = [v8 _bookmarkData];

  if (_bookmarkData)
  {
    v10 = [WFFileValue alloc];
    _bookmarkData2 = [v8 _bookmarkData];
    filename = [v8 filename];
    filename2 = [v8 filename];
    v14 = [(WFFileValue *)v10 initWithBookmarkData:_bookmarkData2 filename:filename displayName:filename2];
  }

  else
  {
    fileURL = [v8 fileURL];

    if (!fileURL)
    {
      goto LABEL_12;
    }

    v16 = [WFFileValue alloc];
    _bookmarkData2 = [v8 fileURL];
    v14 = [(WFFileValue *)v16 initWithURL:_bookmarkData2];
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
  uTIs = [self UTIs];
  wf_multipleValues = [v13 wf_multipleValues];
  supportsDynamicEnumeration = [v13 supportsDynamicEnumeration];

  v19 = [v11 wf_processParameterValue:v15 parameterState:v14 coerceToSupportedUTIs:uTIs array:wf_multipleValues dynamicOptions:supportsDynamicEnumeration completionHandler:v12];
  return v19;
}

@end