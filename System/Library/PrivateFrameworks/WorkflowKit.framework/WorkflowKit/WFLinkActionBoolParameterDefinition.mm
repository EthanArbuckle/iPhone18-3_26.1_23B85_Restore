@interface WFLinkActionBoolParameterDefinition
- (WFLinkActionBoolParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)falseDisplayName;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)a3;
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
  v4 = [(WFLinkActionBoolParameterDefinition *)self trueDisplayName];
  v5 = [v4 wf_localizedString];
  [v3 setValue:v5 forKey:@"OnDisplayName"];

  v6 = [(WFLinkActionBoolParameterDefinition *)self falseDisplayName];
  v7 = [v6 wf_localizedString];
  [v3 setValue:v7 forKey:@"OffDisplayName"];

  v11.receiver = self;
  v11.super_class = WFLinkActionBoolParameterDefinition;
  v8 = [(WFLinkActionParameterDefinition *)&v11 parameterDefinitionDictionary];
  v9 = [v8 definitionByAddingEntriesInDictionary:v3];

  return v9;
}

- (id)trueDisplayName
{
  v3 = *MEMORY[0x1E69AC548];
  v4 = objc_opt_class();

  return [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:v3 ofClass:v4];
}

- (id)localizedTitleForLinkValue:(id)a3
{
  v4 = [a3 value];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

  v7 = [v6 BOOLValue];
  if (v7)
  {
    v8 = [(WFLinkActionBoolParameterDefinition *)self trueDisplayName];
    if (v8)
    {
      v9 = [(WFLinkActionBoolParameterDefinition *)self trueDisplayName];
LABEL_11:
      v10 = v9;
      v11 = [v9 wf_localizedString];

      goto LABEL_15;
    }

    v12 = @"True";
  }

  else
  {
    v8 = [(WFLinkActionBoolParameterDefinition *)self falseDisplayName];
    if (v8)
    {
      v9 = [(WFLinkActionBoolParameterDefinition *)self falseDisplayName];
      goto LABEL_11;
    }

    v12 = @"False";
  }

  v11 = WFLocalizedString(v12);
LABEL_15:

  return v11;
}

- (id)parameterStateFromLinkValue:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [a3 value];
  if (v4)
  {
    v5 = [(WFLinkActionParameterDefinition *)self valueType];
    v6 = [v5 objectIsMemberOfType:v4];

    if (v6)
    {
      v7 = -[WFBooleanSubstitutableState initWithBoolValue:]([WFBooleanSubstitutableState alloc], "initWithBoolValue:", [v4 BOOLValue]);
      goto LABEL_8;
    }

    v8 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(WFLinkActionParameterDefinition *)self valueType];
      v12 = 136315650;
      v13 = "[WFLinkActionBoolParameterDefinition parameterStateFromLinkValue:]";
      v14 = 2114;
      v15 = v4;
      v16 = 2114;
      v17 = v9;
    }
  }

  v7 = 0;
LABEL_8:

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 number];
    v10 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v9];
  }

  else
  {

    v12.receiver = self;
    v12.super_class = WFLinkActionBoolParameterDefinition;
    v10 = [(WFLinkActionParameterDefinition *)&v12 linkValueFromParameterState:v8 action:v7];
  }

  return v10;
}

- (WFLinkActionBoolParameterDefinition)initWithParameterMetadata:(id)a3
{
  v4 = MEMORY[0x1E69AC938];
  v5 = a3;
  v6 = [v4 BOOLValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionBoolParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:v6 parameterMetadata:v5];

  return v7;
}

@end