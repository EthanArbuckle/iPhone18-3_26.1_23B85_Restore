@interface WFLinkActionEnumParameterDefinition
- (WFLinkActionEnumParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value;
- (id)enumMetadata;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionEnumParameterDefinition

- (id)parameterDefinitionDictionary
{
  v46 = *MEMORY[0x1E69E9840];
  enumMetadata = [(WFLinkActionEnumParameterDefinition *)self enumMetadata];
  selfCopy = self;
  v4 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC5A8] ofClass:objc_opt_class()];
  v36 = objc_opt_new();
  v35 = objc_opt_new();
  v34 = objc_opt_new();
  v33 = objc_opt_new();
  v31 = enumMetadata;
  v32 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [enumMetadata cases];
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
          identifier = [*(*(&v41 + 1) + 8 * i) identifier];
          v8 = [v4 containsObject:identifier];

          if (!v8)
          {
            continue;
          }
        }

        identifier2 = [v6 identifier];
        wf_localizedDisplayName = [v6 wf_localizedDisplayName];
        wf_localizedSubtitle = [v6 wf_localizedSubtitle];
        v12 = wf_localizedSubtitle;
        if (wf_localizedSubtitle)
        {
          v13 = wf_localizedSubtitle;
        }

        else
        {
          v13 = &stru_1F4A1C408;
        }

        v14 = v13;

        wf_symbolName = [v6 wf_symbolName];
        v16 = wf_symbolName;
        if (wf_symbolName)
        {
          v17 = wf_symbolName;
        }

        else
        {
          v17 = &stru_1F4A1C408;
        }

        v18 = v17;

        displayRepresentation = [v6 displayRepresentation];
        image = [displayRepresentation image];
        wf_image = [image wf_image];
        v22 = wf_image;
        if (wf_image)
        {
          null = wf_image;
        }

        else
        {
          null = [MEMORY[0x1E695DFB0] null];
        }

        v24 = null;

        if (identifier2 && wf_localizedDisplayName)
        {
          [v36 addObject:identifier2];
          [v35 addObject:wf_localizedDisplayName];
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
  v40.receiver = selfCopy;
  v40.super_class = WFLinkActionEnumParameterDefinition;
  parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v40 parameterDefinitionDictionary];
  v27 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v25];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)enumMetadata
{
  v3 = objc_opt_class();

  return [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:@"LNValueTypeSpecificMetadataKeyLinkEnumerationMetadata" ofClass:v3];
}

- (id)localizedTitleForLinkValue:(id)value
{
  valueCopy = value;
  displayRepresentation = [valueCopy displayRepresentation];
  title = [displayRepresentation title];
  wf_localizedString = [title wf_localizedString];

  if (wf_localizedString)
  {
    wf_localizedDisplayName = wf_localizedString;
  }

  else
  {
    enumMetadata = [(WFLinkActionEnumParameterDefinition *)self enumMetadata];
    cases = [enumMetadata cases];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__WFLinkActionEnumParameterDefinition_localizedTitleForLinkValue___block_invoke;
    v13[3] = &unk_1E837F1B0;
    v14 = valueCopy;
    v11 = [cases if_firstObjectPassingTest:v13];
    wf_localizedDisplayName = [v11 wf_localizedDisplayName];
  }

  return wf_localizedDisplayName;
}

uint64_t __66__WFLinkActionEnumParameterDefinition_localizedTitleForLinkValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) value];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)parameterStateFromLinkValue:(id)value
{
  v22 = *MEMORY[0x1E69E9840];
  value = [value value];
  if (!value)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  valueType = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = [valueType objectIsMemberOfType:value];

  if ((v6 & 1) == 0)
  {
    v12 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      v16 = 136315650;
      v17 = "[WFLinkActionEnumParameterDefinition parameterStateFromLinkValue:]";
      v18 = 2114;
      v19 = value;
      v20 = 2114;
      v21 = valueType2;
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

  v11 = 0;
  if (isKindOfClass)
  {
    v11 = [(WFVariableSubstitutableParameterState *)[WFLinkEnumerationSubstitutableState alloc] initWithValue:v7];
  }

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  valueCopy = value;
  handlerCopy = handler;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = valueCopy;
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

  handlerCopy[2](handlerCopy, v13, 0);
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  actionCopy = action;
  v8 = stateCopy;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    value = [v8 value];
    if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:value];
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

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value
{
  valueCopy = value;
  if (valueCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    enumMetadata = [(WFLinkActionEnumParameterDefinition *)self enumMetadata];
    cases = [enumMetadata cases];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __104__WFLinkActionEnumParameterDefinition_defaultSerializedRepresentationFromParameterMetadataDefaultValue___block_invoke;
    v11[3] = &unk_1E837F1B0;
    v12 = valueCopy;
    v7 = valueCopy;
    v8 = [cases if_firstObjectPassingTest:v11];

    identifier = [v8 identifier];
  }

  else
  {

    identifier = 0;
  }

  return identifier;
}

uint64_t __104__WFLinkActionEnumParameterDefinition_defaultSerializedRepresentationFromParameterMetadataDefaultValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (WFLinkActionEnumParameterDefinition)initWithParameterMetadata:(id)metadata
{
  metadataCopy = metadata;
  valueType = [metadataCopy valueType];
  if (!valueType || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    valueType2 = [metadataCopy valueType];
    if (valueType2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = valueType2;
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

    memberValueType = [v9 memberValueType];

    if (memberValueType && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      currentHandler = memberValueType;
      valueType = currentHandler;
    }

    else
    {

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"WFLinkActionEnumParameterDefinition.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"valueType"}];
      valueType = 0;
    }
  }

  v14.receiver = self;
  v14.super_class = WFLinkActionEnumParameterDefinition;
  v12 = [(WFLinkActionParameterDefinition *)&v14 initWithValueType:valueType parameterMetadata:metadataCopy];

  return v12;
}

@end