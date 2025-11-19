@interface WFLinkActionFileParameterDefinition
- (NSArray)supportedUTIs;
- (WFLinkActionFileParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionFileParameterDefinition

- (NSArray)supportedUTIs
{
  v3 = *MEMORY[0x1E69AC5A0];
  v4 = objc_opt_class();

  return [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:v3 ofClass:v4];
}

- (id)parameterStateFromLinkValue:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [a3 value];
  if (!v4)
  {
LABEL_12:
    v19 = 0;
    goto LABEL_19;
  }

  v5 = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = [v5 objectIsMemberOfType:v4];

  if ((v6 & 1) == 0)
  {
    v17 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(WFLinkActionParameterDefinition *)self valueType];
      v23 = 136315650;
      v24 = "[WFLinkActionFileParameterDefinition parameterStateFromLinkValue:]";
      v25 = 2114;
      v26 = v4;
      v27 = 2114;
      v28 = v18;
    }

    goto LABEL_12;
  }

  v7 = v4;
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

  v11 = [v7 _bookmarkData];

  if (v11)
  {
    v12 = [WFFileValue alloc];
    v13 = [v7 _bookmarkData];
    v14 = [v7 filename];
    v15 = [v7 filename];
    v16 = [(WFFileValue *)v12 initWithBookmarkData:v13 filename:v14 displayName:v15];

    goto LABEL_15;
  }

  v19 = [v7 fileURL];

  if (v19)
  {
    v20 = [WFFileValue alloc];
    v13 = [v7 fileURL];
    v16 = [(WFFileValue *)v20 initWithURL:v13];
LABEL_15:

    if (v16)
    {
      v19 = [(WFVariableSubstitutableParameterState *)[WFFileParameterState alloc] initWithValue:v16];

      goto LABEL_18;
    }

LABEL_17:
    v19 = 0;
  }

LABEL_18:

LABEL_19:
  v21 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v11 = a3;
  v12 = a4;
  v13 = a9;
  v14 = v13;
  if (v11)
  {
    v15 = MEMORY[0x1E696E840];
    v16 = [(WFLinkActionFileParameterDefinition *)self supportedUTIs];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __171__WFLinkActionFileParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke;
    v17[3] = &unk_1E837D470;
    v17[4] = self;
    v18 = v14;
    [v15 wf_processParameterValue:v11 parameterState:v12 coerceToSupportedUTIs:v16 array:0 dynamicOptions:0 completionHandler:v17];
  }

  else
  {
    (*(v13 + 2))(v13, 0, 0);
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

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 value];
      v10 = [v9 bookmarkData];

      if (v10)
      {
        v11 = MEMORY[0x1E696E840];
        v12 = [v9 bookmarkData];
        v13 = [v9 filename];
        v14 = [v11 wf_fileWithBookmarkData:v12 filename:v13];
      }

      else if (v7)
      {
        v17 = [v7 workflow];
        v14 = [v17 workflowID];

        v25 = 0;
        v18 = [v9 resolveURLWithWorkflowID:v14 error:&v25];
        if (!v18)
        {
          v15 = 0;
          goto LABEL_6;
        }

        v19 = v18;
        v20 = MEMORY[0x1E696E840];
        v21 = [v9 filename];
        v22 = [v19 wfFileType];
        v23 = [v22 string];
        v24 = [v20 fileWithFileURL:v19 filename:v21 typeIdentifier:v23];

        v14 = v24;
        if (!v24)
        {
          v15 = 0;
          goto LABEL_7;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v14];
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
  v3 = [(WFLinkActionFileParameterDefinition *)self supportedUTIs];
  v4 = [v3 count];

  if (v4)
  {
    v11.receiver = self;
    v11.super_class = WFLinkActionFileParameterDefinition;
    v5 = [(WFLinkActionParameterDefinition *)&v11 parameterDefinitionDictionary];
    v13 = @"FilePickerSupportedTypes";
    v6 = [(WFLinkActionFileParameterDefinition *)self supportedUTIs];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v5 definitionByAddingEntriesInDictionary:v7];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WFLinkActionFileParameterDefinition;
    v8 = [(WFLinkActionParameterDefinition *)&v12 parameterDefinitionDictionary];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)localizedTitleForLinkValue:(id)a3
{
  v3 = [a3 value];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
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

  v6 = [v5 filename];

  return v6;
}

- (WFLinkActionFileParameterDefinition)initWithParameterMetadata:(id)a3
{
  v4 = MEMORY[0x1E69AC888];
  v5 = a3;
  v6 = [v4 fileValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionFileParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:v6 parameterMetadata:v5];

  return v7;
}

@end