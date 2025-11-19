@interface WFLinkActionAttributedStringParameterDefinition
- (WFLinkActionAttributedStringParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionAttributedStringParameterDefinition

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

  v6 = [v5 string];

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
  v20 = v14;
  if (!v20)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v22 = v20;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v22];
      v24 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v23];
      v19[2](v19, v24, 0);

LABEL_8:
      goto LABEL_10;
    }

    v22 = v22;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __183__WFLinkActionAttributedStringParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke;
      v25[3] = &unk_1E837D748;
      v25[4] = self;
      v26 = v19;
      [v22 getRichTextRepresentation:v25];

      goto LABEL_8;
    }

LABEL_9:

    v19[2](v19, 0, 0);
    goto LABEL_10;
  }

  v21 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v20];
  v19[2](v19, v21, 0);

LABEL_10:
}

void __183__WFLinkActionAttributedStringParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v10 = v5;
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x1E69ACA90]);
    v8 = [*(a1 + 32) valueType];
    v9 = [v7 initWithValue:v10 valueType:v8];
    (*(v6 + 16))(v6, v9, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, a3);
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

    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10];
    v12 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
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
      v20 = "[WFLinkActionAttributedStringParameterDefinition parameterStateFromLinkValue:]";
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
    v13 = [v7 string];
    v14 = [(WFVariableString *)v12 initWithString:v13];

    v11 = [[WFVariableStringParameterState alloc] initWithVariableString:v14];
  }

LABEL_13:
  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)parameterDefinitionDictionary
{
  v10[4] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = WFLinkActionAttributedStringParameterDefinition;
  v2 = [(WFLinkActionParameterDefinition *)&v8 parameterDefinitionDictionary];
  v3 = *MEMORY[0x1E69E12D0];
  v9[0] = @"TextAlignment";
  v9[1] = @"Multiline";
  v10[0] = v3;
  v10[1] = MEMORY[0x1E695E118];
  v9[2] = @"ProcessIntoContentItems";
  v9[3] = @"PrefersAttributedString";
  v10[2] = MEMORY[0x1E695E118];
  v10[3] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v5 = [v2 definitionByAddingEntriesInDictionary:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (WFLinkActionAttributedStringParameterDefinition)initWithParameterMetadata:(id)a3
{
  v4 = MEMORY[0x1E69AC938];
  v5 = a3;
  v6 = [v4 attributedStringValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionAttributedStringParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:v6 parameterMetadata:v5];

  return v7;
}

@end