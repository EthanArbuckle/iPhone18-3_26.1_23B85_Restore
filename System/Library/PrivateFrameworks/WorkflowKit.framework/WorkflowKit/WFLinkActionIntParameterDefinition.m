@interface WFLinkActionIntParameterDefinition
- (Class)parameterClass;
- (WFLinkActionIntParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)a3;
@end

@implementation WFLinkActionIntParameterDefinition

- (id)localizedTitleForLinkValue:(id)a3
{
  v3 = [a3 value];
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
      v13 = "[WFLinkActionIntParameterDefinition parameterStateFromLinkValue:]";
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
  if (!v6)
  {
    v11.receiver = self;
    v11.super_class = WFLinkActionIntParameterDefinition;
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
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [v10 setValue:v11 forKey:@"AllowsNegativeNumbers"];
  }

  else
  {
    v12 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    v13 = [v12 wf_localizedTitle];
    [v10 setValue:v13 forKey:@"StepperDescription"];

    v14 = MEMORY[0x1E696AEC0];
    v11 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    v15 = [v11 wf_localizedTitle];
    v16 = [v14 localizedStringWithFormat:@"%@: %@", v15, @"%ld"];
    [v10 setValue:v16 forKey:@"StepperNoun"];
  }

LABEL_10:
  v20.receiver = self;
  v20.super_class = WFLinkActionIntParameterDefinition;
  v17 = [(WFLinkActionParameterDefinition *)&v20 parameterDefinitionDictionary];
  v18 = [v17 definitionByAddingEntriesInDictionary:v10];

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

- (WFLinkActionIntParameterDefinition)initWithParameterMetadata:(id)a3
{
  v4 = MEMORY[0x1E69AC938];
  v5 = a3;
  v6 = [v4 intValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionIntParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:v6 parameterMetadata:v5];

  return v7;
}

@end