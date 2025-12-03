@interface WFLinkActionFileParameterDefinition
- (NSArray)supportedUTIs;
- (WFLinkActionFileParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionFileParameterDefinition

- (NSArray)supportedUTIs
{
  v3 = *MEMORY[0x1E69AC5A0];
  v4 = objc_opt_class();

  return [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:v3 ofClass:v4];
}

- (id)parameterStateFromLinkValue:(id)value
{
  v29 = *MEMORY[0x1E69E9840];
  value = [value value];
  if (!value)
  {
LABEL_12:
    fileURL = 0;
    goto LABEL_19;
  }

  valueType = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = [valueType objectIsMemberOfType:value];

  if ((v6 & 1) == 0)
  {
    v17 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      v23 = 136315650;
      v24 = "[WFLinkActionFileParameterDefinition parameterStateFromLinkValue:]";
      v25 = 2114;
      v26 = value;
      v27 = 2114;
      v28 = valueType2;
    }

    goto LABEL_12;
  }

  v7 = value;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_17;
  }

  _bookmarkData = [v7 _bookmarkData];

  if (_bookmarkData)
  {
    v12 = [WFFileValue alloc];
    _bookmarkData2 = [v7 _bookmarkData];
    filename = [v7 filename];
    filename2 = [v7 filename];
    v16 = [(WFFileValue *)v12 initWithBookmarkData:_bookmarkData2 filename:filename displayName:filename2];

    goto LABEL_15;
  }

  fileURL = [v7 fileURL];

  if (fileURL)
  {
    v20 = [WFFileValue alloc];
    _bookmarkData2 = [v7 fileURL];
    v16 = [(WFFileValue *)v20 initWithURL:_bookmarkData2];
LABEL_15:

    if (v16)
    {
      fileURL = [(WFVariableSubstitutableParameterState *)[WFFileParameterState alloc] initWithValue:v16];

      goto LABEL_18;
    }

LABEL_17:
    fileURL = 0;
  }

LABEL_18:

LABEL_19:
  v21 = *MEMORY[0x1E69E9840];

  return fileURL;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  valueCopy = value;
  stateCopy = state;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (valueCopy)
  {
    v15 = MEMORY[0x1E696E840];
    supportedUTIs = [(WFLinkActionFileParameterDefinition *)self supportedUTIs];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __171__WFLinkActionFileParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke;
    v17[3] = &unk_1E837D470;
    v17[4] = self;
    v18 = v14;
    [v15 wf_processParameterValue:valueCopy parameterState:stateCopy coerceToSupportedUTIs:supportedUTIs array:0 dynamicOptions:0 completionHandler:v17];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __171__WFLinkActionFileParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v5 = [*(a1 + 32) linkValueWithValue:a2];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4);
  }
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  actionCopy = action;
  v8 = stateCopy;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = [v8 value];
      bookmarkData = [value bookmarkData];

      if (bookmarkData)
      {
        v11 = MEMORY[0x1E696E840];
        bookmarkData2 = [value bookmarkData];
        filename = [value filename];
        workflowID = [v11 wf_fileWithBookmarkData:bookmarkData2 filename:filename];
      }

      else if (actionCopy)
      {
        workflow = [actionCopy workflow];
        workflowID = [workflow workflowID];

        v25 = 0;
        v18 = [value resolveURLWithWorkflowID:workflowID error:&v25];
        if (!v18)
        {
          v15 = 0;
          goto LABEL_6;
        }

        v19 = v18;
        v20 = MEMORY[0x1E696E840];
        filename2 = [value filename];
        wfFileType = [v19 wfFileType];
        string = [wfFileType string];
        v24 = [v20 fileWithFileURL:v19 filename:filename2 typeIdentifier:string];

        workflowID = v24;
        if (!v24)
        {
          v15 = 0;
          goto LABEL_7;
        }
      }

      else
      {
        workflowID = 0;
      }

      v15 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:workflowID];
LABEL_6:

LABEL_7:
      goto LABEL_9;
    }
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (id)parameterDefinitionDictionary
{
  v14[1] = *MEMORY[0x1E69E9840];
  supportedUTIs = [(WFLinkActionFileParameterDefinition *)self supportedUTIs];
  v4 = [supportedUTIs count];

  if (v4)
  {
    v11.receiver = self;
    v11.super_class = WFLinkActionFileParameterDefinition;
    parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v11 parameterDefinitionDictionary];
    v13 = @"FilePickerSupportedTypes";
    supportedUTIs2 = [(WFLinkActionFileParameterDefinition *)self supportedUTIs];
    v14[0] = supportedUTIs2;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    parameterDefinitionDictionary2 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v7];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WFLinkActionFileParameterDefinition;
    parameterDefinitionDictionary2 = [(WFLinkActionParameterDefinition *)&v12 parameterDefinitionDictionary];
  }

  v9 = *MEMORY[0x1E69E9840];

  return parameterDefinitionDictionary2;
}

- (id)localizedTitleForLinkValue:(id)value
{
  value = [value value];
  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = value;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  filename = [v5 filename];

  return filename;
}

- (WFLinkActionFileParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC888];
  metadataCopy = metadata;
  fileValueType = [v4 fileValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionFileParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:fileValueType parameterMetadata:metadataCopy];

  return v7;
}

@end