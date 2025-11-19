@interface WFLinkActionURLParameterDefinition
- (WFLinkActionURLParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionURLParameterDefinition

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

  v6 = [v5 absoluteString];

  return v6;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v23 = v14;
  if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = objc_alloc(MEMORY[0x1E69ACA90]);
    v21 = [(WFLinkActionParameterDefinition *)self valueType];
    v22 = [v20 initWithValue:v23 valueType:v21];
    v19[2](v19, v22, 0);
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
      v11 = [MEMORY[0x1E695DFF8] URLWithString:v10];
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

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3
{
  v3 = a3;
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
  v6 = [v5 absoluteString];

  return v6;
}

- (id)parameterStateFromLinkValue:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [a3 value];
  if (!v4)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v5 = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = [v5 objectIsMemberOfType:v4];

  if ((v6 & 1) == 0)
  {
    v15 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [(WFLinkActionParameterDefinition *)self valueType];
      v19 = 136315650;
      v20 = "[WFLinkActionURLParameterDefinition parameterStateFromLinkValue:]";
      v21 = 2114;
      v22 = v4;
      v23 = 2114;
      v24 = v16;
    }

    goto LABEL_12;
  }

  v7 = v4;
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
    v13 = [v7 absoluteString];
    v14 = [(WFVariableString *)v12 initWithString:v13];

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
  v2 = [(WFLinkActionParameterDefinition *)&v7 parameterDefinitionDictionary];
  v8 = @"TextAlignment";
  v9[0] = *MEMORY[0x1E69E12D0];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [v2 definitionByAddingEntriesInDictionary:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (WFLinkActionURLParameterDefinition)initWithParameterMetadata:(id)a3
{
  v4 = MEMORY[0x1E69AC938];
  v5 = a3;
  v6 = [v4 URLValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionURLParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:v6 parameterMetadata:v5];

  return v7;
}

@end