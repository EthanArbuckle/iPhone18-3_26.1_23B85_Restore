@interface INCodableScalarAttribute(Workflow)
- (id)wf_objectClass;
- (id)wf_parameterClass;
- (id)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (void)wf_updatedParameterDefinition:()Workflow parameterClass:localizer:;
@end

@implementation INCodableScalarAttribute(Workflow)

- (id)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  v6 = a3;
  v7 = a4;
  if ([a1 type] != 7)
  {
    v16.receiver = a1;
    v16.super_class = &off_1F4B05710;
    v12 = objc_msgSendSuper2(&v16, sel_wf_parameterStateForIntentValue_parameterDefinition_, v6, v7);
    goto LABEL_11;
  }

  if (![a1 modifier])
  {
    v13 = objc_opt_class();
    v9 = WFEnforceClass_1501(v6, v13);
    if (v9)
    {
      v14 = [WFMultipleValueParameterState alloc];
      v10 = [v9 if_compactMap:&__block_literal_global_42508];
      v11 = [(WFMultipleValueParameterState *)v14 initWithParameterStates:v10];
      goto LABEL_8;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v8 = objc_opt_class();
  v9 = WFEnforceClass_1501(v6, v8);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [[WFVariableString alloc] initWithString:v9];
  v11 = [[WFVariableStringParameterState alloc] initWithVariableString:v10];
LABEL_8:
  v12 = v11;

LABEL_10:
LABEL_11:

  return v12;
}

- (void)wf_updatedParameterDefinition:()Workflow parameterClass:localizer:
{
  v34[1] = *MEMORY[0x1E69E9840];
  v26.receiver = a1;
  v26.super_class = &off_1F4B05710;
  v2 = objc_msgSendSuper2(&v26, sel_wf_updatedParameterDefinition_parameterClass_localizer_);
  if (([a1 supportsDynamicEnumeration] & 1) == 0 && objc_msgSend(a1, "type") == 7)
  {
    v3 = [a1 metadata];
    v4 = objc_opt_class();
    v5 = WFEnforceClass_1501(v3, v4);

    v33 = @"TextAlignment";
    v6 = [v5 isMultiline];
    v7 = @"Right";
    if (v6)
    {
      v7 = @"Left";
    }

    v34[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v9 = [v2 definitionByAddingEntriesInDictionary:v8];

    v10 = [v5 localizedDefaultValue];
    v11 = v10;
    if (v10)
    {
      v31 = @"DefaultValue";
      v32 = v10;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v13 = [v9 definitionByAddingEntriesInDictionary:v12];

      v9 = v13;
    }

    v29[0] = @"Multiline";
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isMultiline")}];
    v30[0] = v14;
    v29[1] = @"DisableAutocorrection";
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "disableAutocorrect")}];
    v30[1] = v15;
    v29[2] = @"DisableSmartDashes";
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "disableSmartDashes")}];
    v30[2] = v16;
    v29[3] = @"DisableSmartQuotes";
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "disableSmartQuotes")}];
    v30[3] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];
    v2 = [v9 definitionByAddingEntriesInDictionary:v18];

    v19 = [v5 capitalization];
    if (v19 <= 3)
    {
      v20 = off_1E8379D48[v19];
      v27 = @"AutocapitalizationType";
      v28 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v22 = [v2 definitionByAddingEntriesInDictionary:v21];

      v2 = v22;
    }
  }

  v23 = v2;

  v24 = *MEMORY[0x1E69E9840];
  return v2;
}

- (id)wf_parameterClass
{
  if ([a1 type] == 7)
  {
    v1 = objc_opt_class();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)wf_objectClass
{
  v1 = [a1 type];
  v2 = 0;
  if (v1 <= 5)
  {
    if (v1 >= 6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v1 == 6)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v2 = objc_opt_class();
  }

  else if (v1 == 7 || v1 == 8)
  {
LABEL_3:
    v2 = objc_opt_class();
  }

LABEL_4:

  return v2;
}

@end