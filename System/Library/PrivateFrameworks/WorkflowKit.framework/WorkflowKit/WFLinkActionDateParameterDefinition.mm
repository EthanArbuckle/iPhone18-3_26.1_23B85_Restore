@interface WFLinkActionDateParameterDefinition
- (WFLinkActionDateParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)dateFromStringValue:(id)value error:(id *)error;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionDateParameterDefinition

- (id)localizedTitleForLinkValue:(id)value
{
  valueCopy = value;
  v5 = [WFDateFieldParameter alloc];
  parameterDefinitionDictionary = [(WFLinkActionDateParameterDefinition *)self parameterDefinitionDictionary];
  v7 = [(WFDateFieldParameter *)v5 initWithDefinition:parameterDefinitionDictionary];

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

  hintDateFormatter = [(WFDateFieldParameter *)v7 hintDateFormatter];
  v12 = [hintDateFormatter stringFromDate:v10];

  return v12;
}

- (id)parameterStateFromLinkValue:(id)value
{
  v28 = *MEMORY[0x1E69E9840];
  value = [value value];
  if (value)
  {
    valueType = [(WFLinkActionParameterDefinition *)self valueType];
    v6 = [valueType objectIsMemberOfType:value];

    if (v6)
    {
      v7 = [WFDateFieldParameter alloc];
      parameterDefinitionDictionary = [(WFLinkActionDateParameterDefinition *)self parameterDefinitionDictionary];
      v9 = [(WFDateFieldParameter *)v7 initWithDefinition:parameterDefinitionDictionary];

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

      hintDateFormatter = [(WFDateFieldParameter *)v9 hintDateFormatter];
      v14 = [hintDateFormatter stringFromDate:v12];

      v15 = [[WFVariableString alloc] initWithString:v14];
      v16 = [WFDateFieldParameterState alloc];

      v17 = [(WFVariableStringParameterState *)v16 initWithVariableString:v15];
      goto LABEL_11;
    }

    v18 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      v22 = 136315650;
      v23 = "[WFLinkActionDateParameterDefinition parameterStateFromLinkValue:]";
      v24 = 2114;
      v25 = value;
      v26 = 2114;
      v27 = valueType2;
    }
  }

  v17 = 0;
LABEL_11:

  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)dateFromStringValue:(id)value error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v6 = [MEMORY[0x1E6996DC0] datesInString:valueCopy error:error];
  firstObject = [v6 firstObject];

  if (error && !firstObject)
  {
    v8 = getWFActionsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *error;
      v12 = 136315650;
      v13 = "[WFLinkActionDateParameterDefinition dateFromStringValue:error:]";
      v14 = 2112;
      v15 = valueCopy;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Unable to get date for parameter value: %@, error: %@", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  valueCopy = value;
  stateCopy = state;
  requestorCopy = requestor;
  actionCopy = action;
  keyCopy = key;
  handlerCopy = handler;
  v21 = valueCopy;
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v21];
    handlerCopy[2](handlerCopy, v20, 0);
  }

  else
  {

    handlerCopy[2](handlerCopy, 0, 0);
  }
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
      v11 = [(WFLinkActionDateParameterDefinition *)self dateFromStringValue:stringByRemovingVariables error:0];
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
  parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v16 parameterDefinitionDictionary];
  v14 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v8];

  return v14;
}

- (WFLinkActionDateParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC938];
  metadataCopy = metadata;
  dateValueType = [v4 dateValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionDateParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:dateValueType parameterMetadata:metadataCopy];

  return v7;
}

@end