@interface WFLinkActionEntityParameterDefinition
- (BOOL)isUniqueEntity;
- (NSDictionary)parameterDefinitions;
- (WFLinkActionEntityParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)entityMetadata;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit completionHandler:(id)handler;
@end

@implementation WFLinkActionEntityParameterDefinition

- (BOOL)isUniqueEntity
{
  entityMetadata = [(WFLinkActionEntityParameterDefinition *)self entityMetadata];
  systemProtocolMetadata = [entityMetadata systemProtocolMetadata];
  v4 = [systemProtocolMetadata objectForKeyedSubscript:*MEMORY[0x1E69AC2D8]];
  v5 = v4 != 0;

  return v5;
}

- (id)entityMetadata
{
  typeSpecificMetadata = [(WFLinkActionParameterDefinition *)self typeSpecificMetadata];
  v3 = [typeSpecificMetadata objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];

  return v3;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:value];
  if (v9)
  {
    valueType = [(WFLinkActionParameterDefinition *)self valueType];
    if (valueType)
    {
      objc_opt_class();
      v11 = (objc_opt_isKindOfClass() & 1) != 0 ? valueType : 0;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    identifier = [v12 identifier];

    valueType2 = [v9 valueType];
    if (valueType2)
    {
      objc_opt_class();
      v15 = (objc_opt_isKindOfClass() & 1) != 0 ? valueType2 : 0;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    identifier2 = [v16 identifier];

    LODWORD(v16) = [identifier isEqualToString:identifier2];
    if (v16)
    {
      v18 = objc_alloc(MEMORY[0x1E69ACA90]);
      value = [v9 value];
      valueType3 = [(WFLinkActionParameterDefinition *)self valueType];
      v21 = [v18 initWithValue:value valueType:valueType3];

      v9 = v21;
    }
  }

  handlerCopy[2](handlerCopy, v9, 0);
}

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
      v22 = "[WFLinkActionEntityParameterDefinition parameterStateFromLinkValue:]";
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
  displayRepresentation = [value displayRepresentation];
  title = [displayRepresentation title];
  wf_localizedString = [title wf_localizedString];

  return wf_localizedString;
}

- (WFLinkActionEntityParameterDefinition)initWithParameterMetadata:(id)metadata
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
      [currentHandler handleFailureInMethod:a2 object:self file:@"WFLinkActionEntityParameterDefinition.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"valueType"}];
      valueType = 0;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[WFLinkActionEntityParameterDefinition parameterDefinitions](self, "parameterDefinitions"), v12 = objc_claimAutoreleasedReturnValue(), [valueType identifier], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "objectForKeyedSubscript:", v13), v13, v12, v14))
  {
    v15 = [[v14 alloc] initWithValueType:valueType parameterMetadata:metadataCopy];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = WFLinkActionEntityParameterDefinition;
    v15 = [(WFLinkActionParameterDefinition *)&v18 initWithValueType:valueType parameterMetadata:metadataCopy];
    self = v15;
  }

  v16 = v15;

  return v16;
}

- (NSDictionary)parameterDefinitions
{
  v7[1] = *MEMORY[0x1E69E9840];
  wf_placeDescriptorEntityIdentifier = [MEMORY[0x1E69ACA38] wf_placeDescriptorEntityIdentifier];
  v6 = wf_placeDescriptorEntityIdentifier;
  v7[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end