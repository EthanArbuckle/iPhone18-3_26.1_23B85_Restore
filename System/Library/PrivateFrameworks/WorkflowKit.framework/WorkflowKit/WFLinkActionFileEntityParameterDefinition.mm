@interface WFLinkActionFileEntityParameterDefinition
- (BOOL)supportsDynamicOptions;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
- (id)supportedUTIs;
@end

@implementation WFLinkActionFileEntityParameterDefinition

- (id)parameterStateFromLinkValue:(id)value
{
  valueCopy = value;
  if ([(WFLinkActionFileEntityParameterDefinition *)self supportsDynamicOptions])
  {
    v19.receiver = self;
    v19.super_class = WFLinkActionFileEntityParameterDefinition;
    v5 = [(WFLinkActionDynamicOptionsParameterDefinition *)&v19 parameterStateFromLinkValue:valueCopy];

    goto LABEL_18;
  }

  value = [valueCopy value];

  if (value)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = value;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_15;
    }

    _bookmarkData = [value _bookmarkData];

    if (_bookmarkData)
    {
      v11 = [WFFileValue alloc];
      _bookmarkData2 = [value _bookmarkData];
      filename = [value filename];
      filename2 = [value filename];
      v15 = [(WFFileValue *)v11 initWithBookmarkData:_bookmarkData2 filename:filename displayName:filename2];
    }

    else
    {
      fileURL = [value fileURL];

      if (!fileURL)
      {
        goto LABEL_15;
      }

      v17 = [WFFileValue alloc];
      _bookmarkData2 = [value fileURL];
      v15 = [(WFFileValue *)v17 initWithURL:_bookmarkData2];
    }

    if (v15)
    {
      v5 = [(WFVariableSubstitutableParameterState *)[WFFileEntityParameterState alloc] initWithValue:v15];

LABEL_16:
      goto LABEL_17;
    }

LABEL_15:
    v5 = 0;
    goto LABEL_16;
  }

  v5 = 0;
LABEL_17:

LABEL_18:

  return v5;
}

void __177__WFLinkActionFileEntityParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
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
  v28.receiver = self;
  v28.super_class = WFLinkActionFileEntityParameterDefinition;
  v8 = [(WFLinkActionDynamicOptionsParameterDefinition *)&v28 linkValueFromParameterState:stateCopy action:actionCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    goto LABEL_12;
  }

  v11 = stateCopy;
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = 0;
    goto LABEL_11;
  }

  value = [v11 value];
  bookmarkData = [value bookmarkData];

  if (bookmarkData)
  {
    v14 = MEMORY[0x1E696E840];
    bookmarkData2 = [value bookmarkData];
    filename = [value filename];
    workflowID = [v14 wf_fileWithBookmarkData:bookmarkData2 filename:filename];
  }

  else if (actionCopy)
  {
    workflow = [actionCopy workflow];
    workflowID = [workflow workflowID];

    v27 = 0;
    v20 = [value resolveURLWithWorkflowID:workflowID error:&v27];
    if (!v20)
    {
      v10 = 0;
      goto LABEL_8;
    }

    v21 = v20;
    v25 = MEMORY[0x1E696E840];
    filename2 = [value filename];
    wfFileType = [v21 wfFileType];
    string = [wfFileType string];
    v26 = [v25 fileWithFileURL:v21 filename:filename2 typeIdentifier:string];

    workflowID = v26;
    if (!v26)
    {
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    workflowID = 0;
  }

  v10 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:workflowID];
LABEL_8:

LABEL_9:
LABEL_11:

LABEL_12:

  return v10;
}

- (id)parameterDefinitionDictionary
{
  v11[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = WFLinkActionFileEntityParameterDefinition;
  parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v9 parameterDefinitionDictionary];
  v10 = @"FilePickerSupportedTypes";
  supportedUTIs = [(WFLinkActionFileEntityParameterDefinition *)self supportedUTIs];
  v11[0] = supportedUTIs;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v6 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)supportedUTIs
{
  v3 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC5A0] ofClass:objc_opt_class()];
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v5 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata" ofClass:objc_opt_class()];
    systemProtocolMetadata = [v5 systemProtocolMetadata];
    v7 = [systemProtocolMetadata objectForKeyedSubscript:*MEMORY[0x1E69AC2C0]];

    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    supportedContentTypes = [v9 supportedContentTypes];
    v11 = [supportedContentTypes count];

    if (v11)
    {
      supportedContentTypes2 = [v9 supportedContentTypes];
      v4 = [supportedContentTypes2 if_map:&__block_literal_global_11312];
    }

    else
    {
      v4 = MEMORY[0x1E695E0F0];
    }
  }

  return v4;
}

- (BOOL)supportsDynamicOptions
{
  parameterMetadata = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  v3 = [parameterMetadata dynamicOptionsSupport] == 2;

  return v3;
}

@end