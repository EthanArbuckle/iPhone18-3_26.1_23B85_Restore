@interface WFLinkActionEnumParameterDefinition
- (WFLinkActionEnumParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3;
- (id)enumMetadata;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionEnumParameterDefinition

- (id)parameterDefinitionDictionary
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [(WFLinkActionEnumParameterDefinition *)self enumMetadata];
  v30 = self;
  v4 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC5A8] ofClass:objc_opt_class()];
  v36 = objc_opt_new();
  v35 = objc_opt_new();
  v34 = objc_opt_new();
  v33 = objc_opt_new();
  v31 = v3;
  v32 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [v3 cases];
  v39 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v39)
  {
    v38 = *v42;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v42 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v41 + 1) + 8 * i);
        if (v4)
        {
          v7 = [*(*(&v41 + 1) + 8 * i) identifier];
          v8 = [v4 containsObject:v7];

          if (!v8)
          {
            continue;
          }
        }

        v9 = [v6 identifier];
        v10 = [v6 wf_localizedDisplayName];
        v11 = [v6 wf_localizedSubtitle];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = &stru_1F4A1C408;
        }

        v14 = v13;

        v15 = [v6 wf_symbolName];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = &stru_1F4A1C408;
        }

        v18 = v17;

        v19 = [v6 displayRepresentation];
        v20 = [v19 image];
        v21 = [v20 wf_image];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = [MEMORY[0x1E695DFB0] null];
        }

        v24 = v23;

        if (v9 && v10)
        {
          [v36 addObject:v9];
          [v35 addObject:v10];
          [v34 addObject:v14];
          [v33 addObject:v18];
          [v32 addObject:v24];
        }
      }

      v39 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v39);
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v25 setValue:v36 forKey:@"Items"];
  [v25 setValue:v35 forKey:@"ItemDisplayNames"];
  [v25 setValue:v34 forKey:@"ItemSubtitles"];
  [v25 setValue:v33 forKey:@"ItemIconNames"];
  [v25 setValue:v32 forKey:@"ItemImages"];
  v40.receiver = v30;
  v40.super_class = WFLinkActionEnumParameterDefinition;
  v26 = [(WFLinkActionParameterDefinition *)&v40 parameterDefinitionDictionary];
  v27 = [v26 definitionByAddingEntriesInDictionary:v25];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)enumMetadata
{
  v3 = objc_opt_class();

  return [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:@"LNValueTypeSpecificMetadataKeyLinkEnumerationMetadata" ofClass:v3];
}

- (id)localizedTitleForLinkValue:(id)a3
{
  v4 = a3;
  v5 = [v4 displayRepresentation];
  v6 = [v5 title];
  v7 = [v6 wf_localizedString];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(WFLinkActionEnumParameterDefinition *)self enumMetadata];
    v10 = [v9 cases];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__WFLinkActionEnumParameterDefinition_localizedTitleForLinkValue___block_invoke;
    v13[3] = &unk_1E837F1B0;
    v14 = v4;
    v11 = [v10 if_firstObjectPassingTest:v13];
    v8 = [v11 wf_localizedDisplayName];
  }

  return v8;
}

uint64_t __66__WFLinkActionEnumParameterDefinition_localizedTitleForLinkValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) value];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)parameterStateFromLinkValue:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [a3 value];
  if (!v4)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v5 = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = [v5 objectIsMemberOfType:v4];

  if ((v6 & 1) == 0)
  {
    v12 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(WFLinkActionParameterDefinition *)self valueType];
      v16 = 136315650;
      v17 = "[WFLinkActionEnumParameterDefinition parameterStateFromLinkValue:]";
      v18 = 2114;
      v19 = v4;
      v20 = 2114;
      v21 = v13;
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

  v11 = 0;
  if (isKindOfClass)
  {
    v11 = [(WFVariableSubstitutableParameterState *)[WFLinkEnumerationSubstitutableState alloc] initWithValue:v7];
  }

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v14 = a3;
  v10 = a9;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v12];

  v10[2](v10, v13, 0);
}

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 value];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFLinkActionEnumParameterDefinition *)self enumMetadata];
    v6 = [v5 cases];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __104__WFLinkActionEnumParameterDefinition_defaultSerializedRepresentationFromParameterMetadataDefaultValue___block_invoke;
    v11[3] = &unk_1E837F1B0;
    v12 = v4;
    v7 = v4;
    v8 = [v6 if_firstObjectPassingTest:v11];

    v9 = [v8 identifier];
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

uint64_t __104__WFLinkActionEnumParameterDefinition_defaultSerializedRepresentationFromParameterMetadataDefaultValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (WFLinkActionEnumParameterDefinition)initWithParameterMetadata:(id)a3
{
  v5 = a3;
  v6 = [v5 valueType];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v7 = [v5 valueType];
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

    v10 = [v9 memberValueType];

    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = v10;
      v6 = v11;
    }

    else
    {

      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"WFLinkActionEnumParameterDefinition.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"valueType"}];
      v6 = 0;
    }
  }

  v14.receiver = self;
  v14.super_class = WFLinkActionEnumParameterDefinition;
  v12 = [(WFLinkActionParameterDefinition *)&v14 initWithValueType:v6 parameterMetadata:v5];

  return v12;
}

@end