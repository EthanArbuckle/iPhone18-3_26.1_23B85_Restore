@interface WFLinkActionDateComponentsParameterDefinition
- (WFLinkActionDateComponentsParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)dateComponentsFromDateValue:(id)value;
- (id)dateComponentsFromStringValue:(id)value error:(id *)error;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionDateComponentsParameterDefinition

- (id)localizedTitleForLinkValue:(id)value
{
  valueCopy = value;
  dateFormat = [(WFLinkActionDateComponentsParameterDefinition *)self dateFormat];
  v6 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC580] defaultValue:0];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  value = [valueCopy value];

  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = value;
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
    [v11 setCalendar:currentCalendar];
    [v12 setUnitsStyle:2];
    v13 = 252;
    if (!dateFormat)
    {
      v13 = 28;
    }

    if (dateFormat == 1)
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
    parameterDefinitionDictionary = [(WFLinkActionDateComponentsParameterDefinition *)self parameterDefinitionDictionary];
    v18 = [(WFDateFieldParameter *)v16 initWithDefinition:parameterDefinitionDictionary];

    v19 = [currentCalendar dateFromComponents:v10];

    hintDateFormatter = [(WFDateFieldParameter *)v18 hintDateFormatter];
    v15 = [hintDateFormatter stringFromDate:v19];

    v10 = v18;
  }

  return v15;
}

- (id)parameterStateFromLinkValue:(id)value
{
  v35 = *MEMORY[0x1E69E9840];
  value = [value value];
  if (!value)
  {
LABEL_16:
    v20 = 0;
    goto LABEL_19;
  }

  valueType = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = [valueType objectIsMemberOfType:value];

  if ((v6 & 1) == 0)
  {
    v18 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      v29 = 136315650;
      v30 = "[WFLinkActionDateComponentsParameterDefinition parameterStateFromLinkValue:]";
      v31 = 2114;
      v32 = value;
      v33 = 2114;
      v34 = valueType2;
    }

    goto LABEL_16;
  }

  dateFormat = [(WFLinkActionDateComponentsParameterDefinition *)self dateFormat];
  v8 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC580] defaultValue:0];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = value;
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
    [v13 setCalendar:currentCalendar];
    [v14 setUnitsStyle:2];
    v15 = 252;
    if (!dateFormat)
    {
      v15 = 28;
    }

    if (dateFormat == 1)
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
    parameterDefinitionDictionary = [(WFLinkActionDateComponentsParameterDefinition *)self parameterDefinitionDictionary];
    v23 = [(WFDateFieldParameter *)v21 initWithDefinition:parameterDefinitionDictionary];

    v24 = [currentCalendar dateFromComponents:v12];
    hintDateFormatter = [(WFDateFieldParameter *)v23 hintDateFormatter];
    v17 = [hintDateFormatter stringFromDate:v24];
  }

  v26 = [[WFVariableString alloc] initWithString:v17];
  v20 = [(WFVariableStringParameterState *)[WFDateFieldParameterState alloc] initWithVariableString:v26];

LABEL_19:
  v27 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)dateComponentsFromDateValue:(id)value
{
  v4 = MEMORY[0x1E695DEE8];
  valueCopy = value;
  currentCalendar = [v4 currentCalendar];
  dateFormat = [(WFLinkActionDateComponentsParameterDefinition *)self dateFormat];
  v8 = 252;
  if (!dateFormat)
  {
    v8 = 28;
  }

  if (dateFormat == 1)
  {
    v9 = 224;
  }

  else
  {
    v9 = v8;
  }

  v10 = [currentCalendar components:v9 fromDate:valueCopy];

  return v10;
}

- (id)dateComponentsFromStringValue:(id)value error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v7 = [MEMORY[0x1E6996DC0] datesInString:valueCopy error:error];
  firstObject = [v7 firstObject];

  if (firstObject)
  {
    v9 = [(WFLinkActionDateComponentsParameterDefinition *)self dateComponentsFromDateValue:firstObject];
    goto LABEL_10;
  }

  v10 = getWFActionsLogObject();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (error)
  {
    if (v11)
    {
      v12 = *error;
      v18 = 136315650;
      v19 = "[WFLinkActionDateComponentsParameterDefinition dateComponentsFromStringValue:error:]";
      v20 = 2112;
      v21 = valueCopy;
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
    v21 = valueCopy;
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

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  valueCopy = value;
  stateCopy = state;
  requestorCopy = requestor;
  actionCopy = action;
  keyCopy = key;
  handlerCopy = handler;
  v20 = valueCopy;
  v26 = v20;
  if (!v20)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v26];
    handlerCopy[2](handlerCopy, v21, 0);

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
    handlerCopy[2](handlerCopy, v25, 0);
  }

  else
  {
LABEL_6:

    handlerCopy[2](handlerCopy, 0, 0);
  }

LABEL_7:
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

    if (stringByRemovingVariables)
    {
      v11 = [(WFLinkActionDateComponentsParameterDefinition *)self dateComponentsFromStringValue:stringByRemovingVariables error:0];
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
  dateFormat = [(WFLinkActionDateComponentsParameterDefinition *)self dateFormat];
  v4 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC580] defaultValue:0];
  v5 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC568] defaultValue:2];
  v6 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC570] defaultValue:2];
  v7 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC588] ofClass:objc_opt_class()];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v8 setValue:*MEMORY[0x1E69E12D0] forKey:@"TextAlignment"];
  if (dateFormat > 2)
  {
    v9 = WFDateFieldHintDateModeDateAndTime;
  }

  else
  {
    v9 = off_1E8377F68[dateFormat];
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
  parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v16 parameterDefinitionDictionary];
  v14 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v8];

  return v14;
}

- (WFLinkActionDateComponentsParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC938];
  metadataCopy = metadata;
  dateComponentsValueType = [v4 dateComponentsValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionDateComponentsParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:dateComponentsValueType parameterMetadata:metadataCopy];

  return v7;
}

@end