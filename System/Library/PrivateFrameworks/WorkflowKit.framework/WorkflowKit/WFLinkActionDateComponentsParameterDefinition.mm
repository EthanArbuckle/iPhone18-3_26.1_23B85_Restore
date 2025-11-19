@interface WFLinkActionDateComponentsParameterDefinition
- (WFLinkActionDateComponentsParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)dateComponentsFromDateValue:(id)a3;
- (id)dateComponentsFromStringValue:(id)a3 error:(id *)a4;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionDateComponentsParameterDefinition

- (id)localizedTitleForLinkValue:(id)a3
{
  v4 = a3;
  v5 = [(WFLinkActionDateComponentsParameterDefinition *)self dateFormat];
  v6 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC580] defaultValue:0];
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
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

  v11 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v12 = v11;
  if (v6 == 1)
  {
    [v11 setCalendar:v7];
    [v12 setUnitsStyle:2];
    v13 = 252;
    if (!v5)
    {
      v13 = 28;
    }

    if (v5 == 1)
    {
      v14 = 224;
    }

    else
    {
      v14 = v13;
    }

    [v12 setAllowedUnits:v14];
    v15 = [v12 stringFromDateComponents:v10];
  }

  else
  {
    v16 = [WFDateFieldParameter alloc];
    v17 = [(WFLinkActionDateComponentsParameterDefinition *)self parameterDefinitionDictionary];
    v18 = [(WFDateFieldParameter *)v16 initWithDefinition:v17];

    v19 = [v7 dateFromComponents:v10];

    v20 = [(WFDateFieldParameter *)v18 hintDateFormatter];
    v15 = [v20 stringFromDate:v19];

    v10 = v18;
  }

  return v15;
}

- (id)parameterStateFromLinkValue:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = [a3 value];
  if (!v4)
  {
LABEL_16:
    v20 = 0;
    goto LABEL_19;
  }

  v5 = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = [v5 objectIsMemberOfType:v4];

  if ((v6 & 1) == 0)
  {
    v18 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [(WFLinkActionParameterDefinition *)self valueType];
      v29 = 136315650;
      v30 = "[WFLinkActionDateComponentsParameterDefinition parameterStateFromLinkValue:]";
      v31 = 2114;
      v32 = v4;
      v33 = 2114;
      v34 = v19;
    }

    goto LABEL_16;
  }

  v7 = [(WFLinkActionDateComponentsParameterDefinition *)self dateFormat];
  v8 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC580] defaultValue:0];
  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
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

  v13 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v14 = v13;
  if (v8 == 1)
  {
    [v13 setCalendar:v9];
    [v14 setUnitsStyle:2];
    v15 = 252;
    if (!v7)
    {
      v15 = 28;
    }

    if (v7 == 1)
    {
      v16 = 224;
    }

    else
    {
      v16 = v15;
    }

    [v14 setAllowedUnits:v16];
    v17 = [v14 stringFromDateComponents:v12];
  }

  else
  {
    v21 = [WFDateFieldParameter alloc];
    v22 = [(WFLinkActionDateComponentsParameterDefinition *)self parameterDefinitionDictionary];
    v23 = [(WFDateFieldParameter *)v21 initWithDefinition:v22];

    v24 = [v9 dateFromComponents:v12];
    v25 = [(WFDateFieldParameter *)v23 hintDateFormatter];
    v17 = [v25 stringFromDate:v24];
  }

  v26 = [[WFVariableString alloc] initWithString:v17];
  v20 = [(WFVariableStringParameterState *)[WFDateFieldParameterState alloc] initWithVariableString:v26];

LABEL_19:
  v27 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)dateComponentsFromDateValue:(id)a3
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [(WFLinkActionDateComponentsParameterDefinition *)self dateFormat];
  v8 = 252;
  if (!v7)
  {
    v8 = 28;
  }

  if (v7 == 1)
  {
    v9 = 224;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v6 components:v9 fromDate:v5];

  return v10;
}

- (id)dateComponentsFromStringValue:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E6996DC0] datesInString:v6 error:a4];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = [(WFLinkActionDateComponentsParameterDefinition *)self dateComponentsFromDateValue:v8];
    goto LABEL_10;
  }

  v10 = getWFActionsLogObject();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (a4)
  {
    if (v11)
    {
      v12 = *a4;
      v18 = 136315650;
      v19 = "[WFLinkActionDateComponentsParameterDefinition dateComponentsFromStringValue:error:]";
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v12;
      v13 = "%s Unable to detect dates from parameter string value: %@ with error: %@";
      v14 = v10;
      v15 = 32;
LABEL_8:
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, v13, &v18, v15);
    }
  }

  else if (v11)
  {
    v18 = 136315394;
    v19 = "[WFLinkActionDateComponentsParameterDefinition dateComponentsFromStringValue:error:]";
    v20 = 2112;
    v21 = v6;
    v13 = "%s Unable to detect dates from parameter string value: %@";
    v14 = v10;
    v15 = 22;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_10:

  v16 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = v14;
  v26 = v20;
  if (!v20)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v26];
    v19[2](v19, v21, 0);

    goto LABEL_7;
  }

  v22 = v26;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v20 = v26;
  if (isKindOfClass)
  {
    v24 = [(WFLinkActionDateComponentsParameterDefinition *)self dateComponentsFromDateValue:v22];
    v25 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v24];
    v19[2](v19, v25, 0);
  }

  else
  {
LABEL_6:

    v19[2](v19, 0, 0);
  }

LABEL_7:
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
      v11 = [(WFLinkActionDateComponentsParameterDefinition *)self dateComponentsFromStringValue:v10 error:0];
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
  v3 = [(WFLinkActionDateComponentsParameterDefinition *)self dateFormat];
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
  v16.super_class = WFLinkActionDateComponentsParameterDefinition;
  v13 = [(WFLinkActionParameterDefinition *)&v16 parameterDefinitionDictionary];
  v14 = [v13 definitionByAddingEntriesInDictionary:v8];

  return v14;
}

- (WFLinkActionDateComponentsParameterDefinition)initWithParameterMetadata:(id)a3
{
  v4 = MEMORY[0x1E69AC938];
  v5 = a3;
  v6 = [v4 dateComponentsValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionDateComponentsParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:v6 parameterMetadata:v5];

  return v7;
}

@end