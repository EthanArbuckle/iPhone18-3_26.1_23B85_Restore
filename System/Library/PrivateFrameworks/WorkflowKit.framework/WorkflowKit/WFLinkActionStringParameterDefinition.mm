@interface WFLinkActionStringParameterDefinition
- (WFLinkActionStringParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)autocapitalizationTypeFromStringCapitalizationType:(int64_t)type;
- (id)keyboardTypeFromStringKeyboardType:(int64_t)type;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
@end

@implementation WFLinkActionStringParameterDefinition

- (id)autocapitalizationTypeFromStringCapitalizationType:(int64_t)type
{
  if (type > 3)
  {
    v3 = MEMORY[0x1E69E1268];
  }

  else
  {
    v3 = qword_1E837ED78[type];
  }

  return *v3;
}

- (id)keyboardTypeFromStringKeyboardType:(int64_t)type
{
  if (type > 3)
  {
    v3 = MEMORY[0x1E69E1288];
  }

  else
  {
    v3 = qword_1E837ED58[type];
  }

  return *v3;
}

- (id)localizedTitleForLinkValue:(id)value
{
  value = [value value];
  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = value;
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

  return v4;
}

- (id)parameterStateFromLinkValue:(id)value
{
  v19 = *MEMORY[0x1E69E9840];
  value = [value value];
  if (value)
  {
    valueType = [(WFLinkActionParameterDefinition *)self valueType];
    v6 = [valueType objectIsMemberOfType:value];

    if (v6)
    {
      v7 = [[WFVariableString alloc] initWithString:value];
      v8 = [[WFVariableStringParameterState alloc] initWithVariableString:v7];

      goto LABEL_8;
    }

    v9 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      v13 = 136315650;
      v14 = "[WFLinkActionStringParameterDefinition parameterStateFromLinkValue:]";
      v15 = 2114;
      v16 = value;
      v17 = 2114;
      v18 = valueType2;
    }
  }

  v8 = 0;
LABEL_8:

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  actionCopy = action;
  v8 = stateCopy;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    variableString = [v8 variableString];
    stringByRemovingVariables = [variableString stringByRemovingVariables];

    v11 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:stringByRemovingVariables];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)parameterDefinitionDictionary
{
  v24[7] = *MEMORY[0x1E69E9840];
  v3 = [(WFLinkActionParameterDefinition *)self BOOLForTypeSpecificMetadataKey:*MEMORY[0x1E69AC610] defaultValue:1];
  v4 = [(WFLinkActionParameterDefinition *)self BOOLForTypeSpecificMetadataKey:*MEMORY[0x1E69AC628] defaultValue:0];
  v5 = [(WFLinkActionParameterDefinition *)self BOOLForTypeSpecificMetadataKey:*MEMORY[0x1E69AC630] defaultValue:1];
  v6 = [(WFLinkActionParameterDefinition *)self BOOLForTypeSpecificMetadataKey:*MEMORY[0x1E69AC638] defaultValue:1];
  v7 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC620] defaultValue:4];
  v8 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC618] defaultValue:2];
  v9 = [WFParameterDefinition alloc];
  v24[0] = *MEMORY[0x1E69E12D0];
  v23[0] = @"TextAlignment";
  v23[1] = @"DisableAutocorrection";
  v10 = [MEMORY[0x1E696AD98] numberWithInt:!v3];
  v24[1] = v10;
  v23[2] = @"Multiline";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v24[2] = v11;
  v23[3] = @"DisableSmartDashes";
  v12 = [MEMORY[0x1E696AD98] numberWithInt:!v5];
  v24[3] = v12;
  v23[4] = @"DisableSmartQuotes";
  v13 = [MEMORY[0x1E696AD98] numberWithInt:!v6];
  v24[4] = v13;
  v23[5] = @"KeyboardType";
  v14 = [(WFLinkActionStringParameterDefinition *)self keyboardTypeFromStringKeyboardType:v7];
  v24[5] = v14;
  v23[6] = @"AutocapitalizationType";
  v15 = [(WFLinkActionStringParameterDefinition *)self autocapitalizationTypeFromStringCapitalizationType:v8];
  v24[6] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:7];
  v17 = [(WFParameterDefinition *)v9 initWithDictionary:v16];

  v22.receiver = self;
  v22.super_class = WFLinkActionStringParameterDefinition;
  parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v22 parameterDefinitionDictionary];
  v19 = [parameterDefinitionDictionary definitionByMergingWithDefinition:v17];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (WFLinkActionStringParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC938];
  metadataCopy = metadata;
  stringValueType = [v4 stringValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionStringParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:stringValueType parameterMetadata:metadataCopy];

  return v7;
}

@end