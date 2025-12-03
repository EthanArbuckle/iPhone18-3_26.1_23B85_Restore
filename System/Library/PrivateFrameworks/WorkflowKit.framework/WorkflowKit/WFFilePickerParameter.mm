@interface WFFilePickerParameter
- (BOOL)parameterStateIsValid:(id)valid;
- (WFFilePickerParameter)initWithDefinition:(id)definition;
- (WFWorkflow)workflow;
- (id)defaultSerializedRepresentation;
@end

@implementation WFFilePickerParameter

- (WFWorkflow)workflow
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);

  return WeakRetained;
}

- (id)defaultSerializedRepresentation
{
  definition = [(WFParameter *)self definition];
  v4 = [definition objectForKey:@"DefaultsToShortcutsFolder"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  bOOLValue = [v6 BOOLValue];
  if (bOOLValue)
  {
    workflow = [(WFFilePickerParameter *)self workflow];
    workflowID = [workflow workflowID];
    v10 = [WFFileValue defaultValueWithWorkflowID:workflowID];

    if (v10)
    {
      v11 = [(WFVariableSubstitutableParameterState *)[WFFileParameterState alloc] initWithValue:v10];
      serializedRepresentation = [(WFVariableSubstitutableParameterState *)v11 serializedRepresentation];
LABEL_21:
      v22 = serializedRepresentation;

      goto LABEL_23;
    }
  }

  definition2 = [(WFParameter *)self definition];
  v10 = [definition2 objectForKey:@"DefaultValue"];

  definition3 = [(WFParameter *)self definition];
  v15 = [definition3 objectForKey:@"AllowsMultipleValues"];

  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  bOOLValue2 = [v17 BOOLValue];
  if (v10)
  {
    v19 = 0x1E695DEC8;
    if (!bOOLValue2)
    {
      v19 = 0x1E695DF20;
    }

    v20 = *v19;
    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v11;
    }

    else
    {
      v21 = 0;
    }

    serializedRepresentation = v21;
    goto LABEL_21;
  }

  v22 = 0;
LABEL_23:

  return v22;
}

- (BOOL)parameterStateIsValid:(id)valid
{
  validCopy = valid;
  variable = [validCopy variable];

  if (variable)
  {
    v8.receiver = self;
    v8.super_class = WFFilePickerParameter;
    v6 = [(WFParameter *)&v8 parameterStateIsValid:validCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (WFFilePickerParameter)initWithDefinition:(id)definition
{
  v23[1] = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  v22.receiver = self;
  v22.super_class = WFFilePickerParameter;
  v5 = [(WFParameter *)&v22 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"AllowsMultipleValues"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    v5->_allowsMultipleSelection = [v8 BOOLValue];

    v9 = [definitionCopy objectForKey:@"ShowsFullContextualPath"];
    v10 = objc_opt_class();
    v11 = WFEnforceClass_1501(v9, v10);
    v5->_shouldShowFullContextualPath = [v11 BOOLValue];

    v12 = [definitionCopy objectForKey:@"FilePickerSupportedTypes"];
    v13 = objc_opt_class();
    v14 = WFEnforceClass_1501(v12, v13);
    v15 = [v14 if_compactMap:&__block_literal_global_29529];
    supportedTypes = v5->_supportedTypes;
    v5->_supportedTypes = v15;

    if (![(NSArray *)v5->_supportedTypes count])
    {
      v23[0] = *MEMORY[0x1E6982E48];
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      v18 = v5->_supportedTypes;
      v5->_supportedTypes = v17;
    }

    v19 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

@end