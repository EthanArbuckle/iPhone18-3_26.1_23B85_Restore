@interface WFLinkActionDoubleParameterDefinition
- (Class)parameterClass;
- (WFLinkActionDoubleParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
@end

@implementation WFLinkActionDoubleParameterDefinition

- (id)localizedTitleForLinkValue:(id)value
{
  value = [value value];
  if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v4 setNumberStyle:1];
    v5 = [v4 stringFromNumber:value];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
      v13 = "[WFLinkActionDoubleParameterDefinition parameterStateFromLinkValue:]";
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

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value
{
  v8.receiver = self;
  v8.super_class = WFLinkActionDoubleParameterDefinition;
  v3 = [(WFLinkActionParameterDefinition *)&v8 defaultSerializedRepresentationFromParameterMetadataDefaultValue:value];
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

  stringValue = [v5 stringValue];

  return stringValue;
}

- (id)parameterDefinitionDictionary
{
  v3 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC5D8] ofClass:objc_opt_class()];
  v4 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC5E8] ofClass:objc_opt_class()];
  v5 = 1;
  v6 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC5D0] defaultValue:1];
  v7 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC5E0] defaultValue:0];
  if (v3)
  {
    [v3 doubleValue];
    v5 = v8 < 0.0;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ((v7 - 3) <= 1)
  {
    v10 = MEMORY[0x1E696AD98];
    [v4 doubleValue];
    v12 = [v10 numberWithDouble:v11 + -2.22507386e-308];

    v4 = v12;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      [v9 setValue:*MEMORY[0x1E69E12D0] forKey:@"TextAlignment"];
      [v9 setValue:MEMORY[0x1E695E118] forKey:@"AllowsDecimalNumbers"];
      v15 = [MEMORY[0x1E696AD98] numberWithBool:v5];
      [v9 setValue:v15 forKey:@"AllowsNegativeNumbers"];

      goto LABEL_17;
    }

    if (v6 == 2)
    {
      if (v3 | v4)
      {
        if (v4)
        {
          if (!v3)
          {
            v13 = MEMORY[0x1E696AD98];
            [v4 doubleValue];
            v3 = [v13 numberWithDouble:v14 + -1.0];
          }
        }

        else
        {
          v22 = MEMORY[0x1E696AD98];
          [v3 doubleValue];
          v4 = [v22 numberWithDouble:v23 + 1.0];
        }
      }

      else
      {
        v4 = &unk_1F4A9A6F0;
        v3 = &unk_1F4A9A6D8;
      }
    }
  }

  else
  {
    parameterMetadata = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    wf_localizedTitle = [parameterMetadata wf_localizedTitle];
    [v9 setValue:wf_localizedTitle forKey:@"StepperDescription"];

    v18 = MEMORY[0x1E696AEC0];
    parameterMetadata2 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    wf_localizedTitle2 = [parameterMetadata2 wf_localizedTitle];
    v21 = [v18 localizedStringWithFormat:@"%@: %@", wf_localizedTitle2, @"%ld"];
    [v9 setValue:v21 forKey:@"StepperNoun"];
  }

  [v9 setValue:v3 forKey:@"MinimumValue"];
  [v9 setValue:v4 forKey:@"MaximumValue"];
LABEL_17:
  v27.receiver = self;
  v27.super_class = WFLinkActionDoubleParameterDefinition;
  parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v27 parameterDefinitionDictionary];
  v25 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v9];

  return v25;
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  if (!stateCopy)
  {
    v11.receiver = self;
    v11.super_class = WFLinkActionDoubleParameterDefinition;
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

- (Class)parameterClass
{
  v2 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC5D0] defaultValue:1];
  v3 = off_1E836F2D0;
  v4 = off_1E836F340;
  if (v2)
  {
    v4 = off_1E836EC08;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  v5 = *v3;
  v6 = objc_opt_class();

  return v6;
}

- (WFLinkActionDoubleParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC938];
  metadataCopy = metadata;
  doubleValueType = [v4 doubleValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionDoubleParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:doubleValueType parameterMetadata:metadataCopy];

  return v7;
}

@end