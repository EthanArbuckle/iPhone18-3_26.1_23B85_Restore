@interface WFLinkActionDynamicOptionsParameterDefinition
- (WFLinkActionDynamicOptionsParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionDynamicOptionsParameterDefinition

- (id)parameterStateFromLinkValue:(id)value
{
  v27 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  value = [valueCopy value];
  if (value)
  {
    valueType = [(WFLinkActionParameterDefinition *)self valueType];
    v7 = [valueType objectIsMemberOfType:value];

    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E69ACEC8]) initWithValue:valueCopy indentationLevel:0];
      v9 = [WFLinkDynamicOptionSubstitutableState alloc];
      title = [v8 title];
      wf_localizedString = [title wf_localizedString];
      subtitle = [v8 subtitle];
      wf_localizedString2 = [subtitle wf_localizedString];
      image = [v8 image];
      wf_image = [image wf_image];
      v16 = [(WFLinkDynamicOptionSubstitutableState *)v9 initWithValue:v8 localizedTitle:wf_localizedString localizedSubtitle:wf_localizedString2 image:wf_image];

      goto LABEL_8;
    }

    v17 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      v21 = 136315650;
      v22 = "[WFLinkActionDynamicOptionsParameterDefinition parameterStateFromLinkValue:]";
      v23 = 2114;
      v24 = value;
      v25 = 2114;
      v26 = valueType2;
    }
  }

  v16 = 0;
LABEL_8:

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  valueCopy = value;
  handlerCopy = handler;
  if (valueCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v11 = valueCopy;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    if (isKindOfClass)
    {
      v13 = valueCopy;
    }

    else
    {
      v13 = 0;
    }

    handlerCopy[2](handlerCopy, v13, 0);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  actionCopy = action;
  v7 = stateCopy;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    value = [v7 value];
    v8Value = [value value];
  }

  else
  {
    v8Value = 0;
  }

  return v8Value;
}

- (id)localizedTitleForLinkValue:(id)value
{
  valueCopy = value;
  valueType = [valueCopy valueType];
  parameterMetadata = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  v7 = [valueType wf_parameterDefinitionWithParameterMetadata:parameterMetadata dynamicOptionsSupport:0];
  v8 = [v7 localizedTitleForLinkValue:valueCopy];

  return v8;
}

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value
{
  valueCopy = value;
  if (valueCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:@"LNValueTypeSpecificMetadataKeyLinkEnumerationMetadata" ofClass:objc_opt_class()];
    cases = [v5 cases];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __114__WFLinkActionDynamicOptionsParameterDefinition_defaultSerializedRepresentationFromParameterMetadataDefaultValue___block_invoke;
    v19[3] = &unk_1E837F1B0;
    v7 = valueCopy;
    v20 = v7;
    v8 = [cases if_firstObjectPassingTest:v19];

    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E69AC890]);
      identifier = [v5 identifier];
      v11 = [v9 initWithEnumerationIdentifier:identifier];

      v12 = objc_alloc(MEMORY[0x1E69ACA90]);
      identifier2 = [v8 identifier];
      displayRepresentation = [v8 displayRepresentation];
      v15 = [v12 initWithValue:identifier2 valueType:v11 displayRepresentation:displayRepresentation];

      v16 = [objc_alloc(MEMORY[0x1E69ACEC8]) initWithValue:v15 indentationLevel:0];
      v17 = [WFLinkDynamicOptionSubstitutableState serializedRepresentationFromValue:v16];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {

    v17 = 0;
  }

  return v17;
}

uint64_t __114__WFLinkActionDynamicOptionsParameterDefinition_defaultSerializedRepresentationFromParameterMetadataDefaultValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (WFLinkActionDynamicOptionsParameterDefinition)initWithParameterMetadata:(id)metadata
{
  metadataCopy = metadata;
  valueType = [metadataCopy valueType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memberValueType = [valueType memberValueType];

    valueType = memberValueType;
  }

  v9.receiver = self;
  v9.super_class = WFLinkActionDynamicOptionsParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:valueType parameterMetadata:metadataCopy];

  return v7;
}

@end