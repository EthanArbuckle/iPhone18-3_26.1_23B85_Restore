@interface WFLinkActionIntParameterDefinition
- (Class)parameterClass;
- (WFLinkActionIntParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
@end

@implementation WFLinkActionIntParameterDefinition

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

  stringValue = [v5 stringValue];

  return stringValue;
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
      v7 = [[WFNumberSubstitutableState alloc] initWithNumber:value];
      goto LABEL_8;
    }

    v8 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      v12 = 136315650;
      v13 = "[WFLinkActionIntParameterDefinition parameterStateFromLinkValue:]";
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
  if (!stateCopy)
  {
    v11.receiver = self;
    v11.super_class = WFLinkActionIntParameterDefinition;
    v8 = [(WFLinkActionParameterDefinition *)&v11 linkValueFromParameterState:0 action:action];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    decimalNumber = [stateCopy decimalNumber];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    decimalNumber = [stateCopy number];
  }

  v9 = decimalNumber;
  if (decimalNumber)
  {
    v8 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:decimalNumber];

    goto LABEL_10;
  }

LABEL_9:
  v8 = 0;
LABEL_10:

  return v8;
}

- (id)parameterDefinitionDictionary
{
  v3 = 1;
  v4 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC5D0] defaultValue:1];
  v5 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC5E0] defaultValue:0];
  v6 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC5D8] ofClass:objc_opt_class()];
  v7 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC5E8] ofClass:objc_opt_class()];
  if (v6)
  {
    [v6 doubleValue];
    v3 = v8 < 0.0;
  }

  if ((v5 - 3) <= 1)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "integerValue") - 1}];

    v7 = v9;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setValue:v6 forKey:@"MinimumValue"];
  [v10 setValue:v7 forKey:@"MaximumValue"];
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_10;
    }

    [v10 setValue:*MEMORY[0x1E69E12D0] forKey:@"TextAlignment"];
    parameterMetadata2 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [v10 setValue:parameterMetadata2 forKey:@"AllowsNegativeNumbers"];
  }

  else
  {
    parameterMetadata = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    wf_localizedTitle = [parameterMetadata wf_localizedTitle];
    [v10 setValue:wf_localizedTitle forKey:@"StepperDescription"];

    v14 = MEMORY[0x1E696AEC0];
    parameterMetadata2 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    wf_localizedTitle2 = [parameterMetadata2 wf_localizedTitle];
    v16 = [v14 localizedStringWithFormat:@"%@: %@", wf_localizedTitle2, @"%ld"];
    [v10 setValue:v16 forKey:@"StepperNoun"];
  }

LABEL_10:
  v20.receiver = self;
  v20.super_class = WFLinkActionIntParameterDefinition;
  parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v20 parameterDefinitionDictionary];
  v18 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v10];

  return v18;
}

- (Class)parameterClass
{
  v2 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC5D0] defaultValue:1];
  v3 = off_1E836F340;
  if (v2)
  {
    v3 = off_1E836EC08;
  }

  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

- (WFLinkActionIntParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC938];
  metadataCopy = metadata;
  intValueType = [v4 intValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionIntParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:intValueType parameterMetadata:metadataCopy];

  return v7;
}

@end