@interface WFLinkActionDateParameterDefinition
- (WFLinkActionDateParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)dateFromStringValue:(id)a3 error:(id *)a4;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionDateParameterDefinition

- (id)localizedTitleForLinkValue:(id)a3
{
  v4 = a3;
  v5 = [WFDateFieldParameter alloc];
  v6 = [(WFLinkActionDateParameterDefinition *)self parameterDefinitionDictionary];
  v7 = [(WFDateFieldParameter *)v5 initWithDefinition:v6];

  v8 = [v4 value];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [(WFDateFieldParameter *)v7 hintDateFormatter];
  v12 = [v11 stringFromDate:v10];

  return v12;
}

- (id)parameterStateFromLinkValue:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [a3 value];
  if (v4)
  {
    v5 = [(WFLinkActionParameterDefinition *)self valueType];
    v6 = [v5 objectIsMemberOfType:v4];

    if (v6)
    {
      v7 = [WFDateFieldParameter alloc];
      v8 = [(WFLinkActionDateParameterDefinition *)self parameterDefinitionDictionary];
      v9 = [(WFDateFieldParameter *)v7 initWithDefinition:v8];

      v10 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v13 = [(WFDateFieldParameter *)v9 hintDateFormatter];
      v14 = [v13 stringFromDate:v12];

      v15 = [[WFVariableString alloc] initWithString:v14];
      v16 = [WFDateFieldParameterState alloc];

      v17 = [(WFVariableStringParameterState *)v16 initWithVariableString:v15];
      goto LABEL_11;
    }

    v18 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [(WFLinkActionParameterDefinition *)self valueType];
      v22 = 136315650;
      v23 = "[WFLinkActionDateParameterDefinition parameterStateFromLinkValue:]";
      v24 = 2114;
      v25 = v4;
      v26 = 2114;
      v27 = v19;
    }
  }

  v17 = 0;
LABEL_11:

  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)dateFromStringValue:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E6996DC0] datesInString:v5 error:a4];
  v7 = [v6 firstObject];

  if (a4 && !v7)
  {
    v8 = getWFActionsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a4;
      v12 = 136315650;
      v13 = "[WFLinkActionDateParameterDefinition dateFromStringValue:error:]";
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Unable to get date for parameter value: %@, error: %@", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v21 = v14;
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v21];
    v19[2](v19, v20, 0);
  }

  else
  {

    v19[2](v19, 0, 0);
  }
}

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 variableString];
    v10 = [v9 stringByRemovingVariables];

    if (v10)
    {
      v11 = [(WFLinkActionDateParameterDefinition *)self dateFromStringValue:v10 error:0];
      v12 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)parameterDefinitionDictionary
{
  v3 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC578] defaultValue:2];
  v4 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC580] defaultValue:0];
  v5 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC568] defaultValue:2];
  v6 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC570] defaultValue:2];
  v7 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC588] ofClass:objc_opt_class()];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v8 setValue:*MEMORY[0x1E69E12D0] forKey:@"TextAlignment"];
  if (v3 > 2)
  {
    v9 = WFDateFieldHintDateModeDateAndTime;
  }

  else
  {
    v9 = off_1E8377F68[v3];
  }

  [v8 setValue:*v9 forKey:@"HintDateMode"];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v4 == 1];
  [v8 setValue:v10 forKey:@"DateFormatterAllowsRelative"];

  [v8 setValue:v7 forKey:@"DateFormatterTemplate"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  [v8 setValue:v11 forKey:@"DateFormatterDateStyle"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  [v8 setValue:v12 forKey:@"DateFormatterTimeStyle"];

  v16.receiver = self;
  v16.super_class = WFLinkActionDateParameterDefinition;
  v13 = [(WFLinkActionParameterDefinition *)&v16 parameterDefinitionDictionary];
  v14 = [v13 definitionByAddingEntriesInDictionary:v8];

  return v14;
}

- (WFLinkActionDateParameterDefinition)initWithParameterMetadata:(id)a3
{
  v4 = MEMORY[0x1E69AC938];
  v5 = a3;
  v6 = [v4 dateValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionDateParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:v6 parameterMetadata:v5];

  return v7;
}

@end