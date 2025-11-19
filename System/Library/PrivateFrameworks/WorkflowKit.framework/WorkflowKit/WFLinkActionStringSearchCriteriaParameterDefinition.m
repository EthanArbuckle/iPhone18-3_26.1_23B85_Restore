@interface WFLinkActionStringSearchCriteriaParameterDefinition
- (WFLinkActionStringSearchCriteriaParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionStringSearchCriteriaParameterDefinition

- (id)parameterStateFromLinkValue:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [a3 value];
  if (v4)
  {
    v5 = [(WFLinkActionParameterDefinition *)self valueType];
    v6 = [v5 objectIsMemberOfType:v4];

    if (v6)
    {
      v7 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      v10 = [WFVariableString alloc];
      v11 = [v9 term];
      v12 = [(WFVariableString *)v10 initWithString:v11];

      v13 = [WFVariableStringParameterState alloc];
      v14 = [(WFVariableStringParameterState *)v13 initWithVariableString:v12];

      goto LABEL_11;
    }

    v15 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [(WFLinkActionParameterDefinition *)self valueType];
      v19 = 136315650;
      v20 = "[WFLinkActionStringSearchCriteriaParameterDefinition parameterStateFromLinkValue:]";
      v21 = 2114;
      v22 = v4;
      v23 = 2114;
      v24 = v16;
    }
  }

  v14 = 0;
LABEL_11:

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v18 = a3;
  v10 = a9;
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v18;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = v12;
  v14 = &stru_1F4A1C408;
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [objc_alloc(MEMORY[0x1E69AC9F8]) initWithTerm:v15];
  v17 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v16];
  v10[2](v10, v17, 0);
}

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 variableString];
  v11 = [v10 stringByRemovingVariables];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E69AC9F8]);
    v13 = [v9 variableString];
    v14 = [v13 stringByRemovingVariables];
    v15 = [v12 initWithTerm:v14];

    v16 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)parameterDefinitionDictionary
{
  v12[5] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = WFLinkActionStringSearchCriteriaParameterDefinition;
  v2 = [(WFLinkActionParameterDefinition *)&v10 parameterDefinitionDictionary];
  v3 = *MEMORY[0x1E69E12D0];
  v11[0] = @"TextAlignment";
  v11[1] = @"KeyboardType";
  v4 = *MEMORY[0x1E69E1288];
  v12[0] = v3;
  v12[1] = v4;
  v5 = *MEMORY[0x1E69E1268];
  v11[2] = @"AutocapitalizationType";
  v11[3] = @"DisableSmartDashes";
  v12[2] = v5;
  v12[3] = MEMORY[0x1E695E110];
  v11[4] = @"DisableSmartQuotes";
  v12[4] = MEMORY[0x1E695E110];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v7 = [v2 definitionByAddingEntriesInDictionary:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (WFLinkActionStringSearchCriteriaParameterDefinition)initWithParameterMetadata:(id)a3
{
  v4 = MEMORY[0x1E69AC9B8];
  v5 = a3;
  v6 = [v4 stringValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionStringSearchCriteriaParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:v6 parameterMetadata:v5];

  return v7;
}

@end