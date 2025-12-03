@interface WFLinkActionURLParameterDefinition
- (WFLinkActionURLParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionURLParameterDefinition

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

  absoluteString = [v5 absoluteString];

  return absoluteString;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  valueCopy = value;
  stateCopy = state;
  requestorCopy = requestor;
  actionCopy = action;
  keyCopy = key;
  handlerCopy = handler;
  v23 = valueCopy;
  if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = objc_alloc(MEMORY[0x1E69ACA90]);
    valueType = [(WFLinkActionParameterDefinition *)self valueType];
    v22 = [v20 initWithValue:v23 valueType:valueType];
    handlerCopy[2](handlerCopy, v22, 0);
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
      v11 = [MEMORY[0x1E695DFF8] URLWithString:stringByRemovingVariables];
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

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = valueCopy;
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
  absoluteString = [v5 absoluteString];

  return absoluteString;
}

- (id)parameterStateFromLinkValue:(id)value
{
  v25 = *MEMORY[0x1E69E9840];
  value = [value value];
  if (!value)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  valueType = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = [valueType objectIsMemberOfType:value];

  if ((v6 & 1) == 0)
  {
    v15 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      v19 = 136315650;
      v20 = "[WFLinkActionURLParameterDefinition parameterStateFromLinkValue:]";
      v21 = 2114;
      v22 = value;
      v23 = 2114;
      v24 = valueType2;
    }

    goto LABEL_12;
  }

  v7 = value;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = 0;
  if (isKindOfClass)
  {
    v12 = [WFVariableString alloc];
    absoluteString = [v7 absoluteString];
    v14 = [(WFVariableString *)v12 initWithString:absoluteString];

    v11 = [[WFVariableStringParameterState alloc] initWithVariableString:v14];
  }

LABEL_13:
  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)parameterDefinitionDictionary
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = WFLinkActionURLParameterDefinition;
  parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v7 parameterDefinitionDictionary];
  v8 = @"TextAlignment";
  v9[0] = *MEMORY[0x1E69E12D0];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (WFLinkActionURLParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC938];
  metadataCopy = metadata;
  uRLValueType = [v4 URLValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionURLParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:uRLValueType parameterMetadata:metadataCopy];

  return v7;
}

@end