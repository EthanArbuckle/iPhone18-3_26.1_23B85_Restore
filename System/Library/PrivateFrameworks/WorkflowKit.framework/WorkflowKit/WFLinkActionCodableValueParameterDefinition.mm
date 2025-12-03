@interface WFLinkActionCodableValueParameterDefinition
- (WFLinkActionCodableValueParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterDefinitions;
- (id)parameterStateFromLinkValue:(id)value;
@end

@implementation WFLinkActionCodableValueParameterDefinition

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
      v22 = "[WFLinkActionCodableValueParameterDefinition parameterStateFromLinkValue:]";
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

- (WFLinkActionCodableValueParameterDefinition)initWithParameterMetadata:(id)metadata
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
      [currentHandler handleFailureInMethod:a2 object:self file:@"WFLinkActionCodableValueParameterDefinition.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"valueType"}];
      valueType = 0;
    }
  }

  parameterDefinitions = [(WFLinkActionCodableValueParameterDefinition *)self parameterDefinitions];
  identifier = [valueType identifier];
  v14 = [parameterDefinitions objectForKeyedSubscript:identifier];

  if (v14)
  {
    v15 = [[v14 alloc] initWithValueType:valueType parameterMetadata:metadataCopy];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = WFLinkActionCodableValueParameterDefinition;
    v15 = [(WFLinkActionParameterDefinition *)&v18 initWithValueType:valueType parameterMetadata:metadataCopy];
    self = v15;
  }

  v16 = v15;

  return v16;
}

- (id)parameterDefinitions
{
  v9[3] = *MEMORY[0x1E69E9840];
  wf_dateIntervalIdentifier = [MEMORY[0x1E69AC750] wf_dateIntervalIdentifier];
  v8[0] = wf_dateIntervalIdentifier;
  v9[0] = objc_opt_class();
  wf_durationIdentifier = [MEMORY[0x1E69AC750] wf_durationIdentifier];
  v8[1] = wf_durationIdentifier;
  v9[1] = objc_opt_class();
  wf_personNameComponentsIdentifier = [MEMORY[0x1E69AC750] wf_personNameComponentsIdentifier];
  v8[2] = wf_personNameComponentsIdentifier;
  v9[2] = objc_opt_class();
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end