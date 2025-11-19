@interface WFLinkActionFileEntityParameterDefinition
- (BOOL)supportsDynamicOptions;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)a3;
- (id)supportedUTIs;
@end

@implementation WFLinkActionFileEntityParameterDefinition

- (id)parameterStateFromLinkValue:(id)a3
{
  v4 = a3;
  if ([(WFLinkActionFileEntityParameterDefinition *)self supportsDynamicOptions])
  {
    v19.receiver = self;
    v19.super_class = WFLinkActionFileEntityParameterDefinition;
    v5 = [(WFLinkActionDynamicOptionsParameterDefinition *)&v19 parameterStateFromLinkValue:v4];

    goto LABEL_18;
  }

  v6 = [v4 value];

  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = v6;
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

    v10 = [v6 _bookmarkData];

    if (v10)
    {
      v11 = [WFFileValue alloc];
      v12 = [v6 _bookmarkData];
      v13 = [v6 filename];
      v14 = [v6 filename];
      v15 = [(WFFileValue *)v11 initWithBookmarkData:v12 filename:v13 displayName:v14];
    }

    else
    {
      v16 = [v6 fileURL];

      if (!v16)
      {
        goto LABEL_15;
      }

      v17 = [WFFileValue alloc];
      v12 = [v6 fileURL];
      v15 = [(WFFileValue *)v17 initWithURL:v12];
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

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = WFLinkActionFileEntityParameterDefinition;
  v8 = [(WFLinkActionDynamicOptionsParameterDefinition *)&v28 linkValueFromParameterState:v6 action:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    goto LABEL_12;
  }

  v11 = v6;
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = 0;
    goto LABEL_11;
  }

  v12 = [v11 value];
  v13 = [v12 bookmarkData];

  if (v13)
  {
    v14 = MEMORY[0x1E696E840];
    v15 = [v12 bookmarkData];
    v16 = [v12 filename];
    v17 = [v14 wf_fileWithBookmarkData:v15 filename:v16];
  }

  else if (v7)
  {
    v19 = [v7 workflow];
    v17 = [v19 workflowID];

    v27 = 0;
    v20 = [v12 resolveURLWithWorkflowID:v17 error:&v27];
    if (!v20)
    {
      v10 = 0;
      goto LABEL_8;
    }

    v21 = v20;
    v25 = MEMORY[0x1E696E840];
    v22 = [v12 filename];
    v24 = [v21 wfFileType];
    v23 = [v24 string];
    v26 = [v25 fileWithFileURL:v21 filename:v22 typeIdentifier:v23];

    v17 = v26;
    if (!v26)
    {
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
  }

  v10 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v17];
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
  v3 = [(WFLinkActionParameterDefinition *)&v9 parameterDefinitionDictionary];
  v10 = @"FilePickerSupportedTypes";
  v4 = [(WFLinkActionFileEntityParameterDefinition *)self supportedUTIs];
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v6 = [v3 definitionByAddingEntriesInDictionary:v5];

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
    v6 = [v5 systemProtocolMetadata];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69AC2C0]];

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

    v10 = [v9 supportedContentTypes];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [v9 supportedContentTypes];
      v4 = [v12 if_map:&__block_literal_global_11312];
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
  v2 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  v3 = [v2 dynamicOptionsSupport] == 2;

  return v3;
}

@end