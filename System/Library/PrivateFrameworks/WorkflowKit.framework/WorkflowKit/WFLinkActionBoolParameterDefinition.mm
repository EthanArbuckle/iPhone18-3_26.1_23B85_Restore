@interface WFLinkActionBoolParameterDefinition
- (WFLinkActionBoolParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)falseDisplayName;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
- (id)trueDisplayName;
@end

@implementation WFLinkActionBoolParameterDefinition

- (id)falseDisplayName
{
  v3 = *MEMORY[0x1E69AC540];
  v4 = objc_opt_class();

  return [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:v3 ofClass:v4];
}

- (id)parameterDefinitionDictionary
{
  v3 = objc_opt_new();
  trueDisplayName = [(WFLinkActionBoolParameterDefinition *)self trueDisplayName];
  wf_localizedString = [trueDisplayName wf_localizedString];
  [v3 setValue:wf_localizedString forKey:@"OnDisplayName"];

  falseDisplayName = [(WFLinkActionBoolParameterDefinition *)self falseDisplayName];
  wf_localizedString2 = [falseDisplayName wf_localizedString];
  [v3 setValue:wf_localizedString2 forKey:@"OffDisplayName"];

  v11.receiver = self;
  v11.super_class = WFLinkActionBoolParameterDefinition;
  parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v11 parameterDefinitionDictionary];
  v9 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v3];

  return v9;
}

- (id)trueDisplayName
{
  v3 = *MEMORY[0x1E69AC548];
  v4 = objc_opt_class();

  return [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:v3 ofClass:v4];
}

- (id)localizedTitleForLinkValue:(id)value
{
  value = [value value];
  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = value;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  bOOLValue = [v6 BOOLValue];
  if (bOOLValue)
  {
    trueDisplayName = [(WFLinkActionBoolParameterDefinition *)self trueDisplayName];
    if (trueDisplayName)
    {
      trueDisplayName2 = [(WFLinkActionBoolParameterDefinition *)self trueDisplayName];
LABEL_11:
      v10 = trueDisplayName2;
      wf_localizedString = [trueDisplayName2 wf_localizedString];

      goto LABEL_15;
    }

    v12 = @"True";
  }

  else
  {
    trueDisplayName = [(WFLinkActionBoolParameterDefinition *)self falseDisplayName];
    if (trueDisplayName)
    {
      trueDisplayName2 = [(WFLinkActionBoolParameterDefinition *)self falseDisplayName];
      goto LABEL_11;
    }

    v12 = @"False";
  }

  wf_localizedString = WFLocalizedString(v12);
LABEL_15:

  return wf_localizedString;
}

- (id)parameterStateFromLinkValue:(id)value
{
  v18 = *MEMORY[0x1E69E9840];
  value = [value value];
  if (value)
  {
    valueType = [(WFLinkActionParameterDefinition *)self valueType];
    v6 = [valueType objectIsMemberOfType:value];

    if (v6)
    {
      v7 = -[WFBooleanSubstitutableState initWithBoolValue:]([WFBooleanSubstitutableState alloc], "initWithBoolValue:", [value BOOLValue]);
      goto LABEL_8;
    }

    v8 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      v12 = 136315650;
      v13 = "[WFLinkActionBoolParameterDefinition parameterStateFromLinkValue:]";
      v14 = 2114;
      v15 = value;
      v16 = 2114;
      v17 = valueType2;
    }
  }

  v7 = 0;
LABEL_8:

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  actionCopy = action;
  v8 = stateCopy;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    number = [v8 number];
    v10 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:number];
  }

  else
  {

    v12.receiver = self;
    v12.super_class = WFLinkActionBoolParameterDefinition;
    v10 = [(WFLinkActionParameterDefinition *)&v12 linkValueFromParameterState:v8 action:actionCopy];
  }

  return v10;
}

- (WFLinkActionBoolParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC938];
  metadataCopy = metadata;
  bOOLValueType = [v4 BOOLValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionBoolParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:bOOLValueType parameterMetadata:metadataCopy];

  return v7;
}

@end