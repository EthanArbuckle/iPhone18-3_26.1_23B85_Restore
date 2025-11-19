@interface WFLinkActionDoubleParameterDefinition
- (Class)parameterClass;
- (WFLinkActionDoubleParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)a3;
@end

@implementation WFLinkActionDoubleParameterDefinition

- (id)localizedTitleForLinkValue:(id)a3
{
  v3 = [a3 value];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v4 setNumberStyle:1];
    v5 = [v4 stringFromNumber:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
      v7 = [[WFNumberSubstitutableState alloc] initWithNumber:v4];
      goto LABEL_8;
    }

    v8 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(WFLinkActionParameterDefinition *)self valueType];
      v12 = 136315650;
      v13 = "[WFLinkActionDoubleParameterDefinition parameterStateFromLinkValue:]";
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

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFLinkActionDoubleParameterDefinition;
  v3 = [(WFLinkActionParameterDefinition *)&v8 defaultSerializedRepresentationFromParameterMetadataDefaultValue:a3];
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

  v6 = [v5 stringValue];

  return v6;
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
    v16 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    v17 = [v16 wf_localizedTitle];
    [v9 setValue:v17 forKey:@"StepperDescription"];

    v18 = MEMORY[0x1E696AEC0];
    v19 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    v20 = [v19 wf_localizedTitle];
    v21 = [v18 localizedStringWithFormat:@"%@: %@", v20, @"%ld"];
    [v9 setValue:v21 forKey:@"StepperNoun"];
  }

  [v9 setValue:v3 forKey:@"MinimumValue"];
  [v9 setValue:v4 forKey:@"MaximumValue"];
LABEL_17:
  v27.receiver = self;
  v27.super_class = WFLinkActionDoubleParameterDefinition;
  v24 = [(WFLinkActionParameterDefinition *)&v27 parameterDefinitionDictionary];
  v25 = [v24 definitionByAddingEntriesInDictionary:v9];

  return v25;
}

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v6 = a3;
  if (!v6)
  {
    v11.receiver = self;
    v11.super_class = WFLinkActionDoubleParameterDefinition;
    v8 = [(WFLinkActionParameterDefinition *)&v11 linkValueFromParameterState:0 action:a4];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 decimalNumber];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v7 = [v6 number];
  }

  v9 = v7;
  if (v7)
  {
    v8 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v7];

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

- (WFLinkActionDoubleParameterDefinition)initWithParameterMetadata:(id)a3
{
  v4 = MEMORY[0x1E69AC938];
  v5 = a3;
  v6 = [v4 doubleValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionDoubleParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:v6 parameterMetadata:v5];

  return v7;
}

@end