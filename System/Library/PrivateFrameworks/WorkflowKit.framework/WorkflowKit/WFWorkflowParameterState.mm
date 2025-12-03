@interface WFWorkflowParameterState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (id)legacySerializedRepresentation;
- (void)processValue:(id)value withContext:(id)context valueHandler:(id)handler;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFWorkflowParameterState

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v23 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = representationCopy;
    v7 = [[WFWorkflowParameterStateDescriptor alloc] initWithWorkflowName:v6 workflowIdentifier:0 isSelf:0];
LABEL_11:
    v12 = v7;
    goto LABEL_12;
  }

  v8 = objc_opt_class();
  v9 = representationCopy;
  if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v15 = 136315906;
      v16 = "WFEnforceClass";
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = v8;
      v11 = v20;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v15, 0x2Au);
    }

    v6 = 0;
  }

  else
  {
    v6 = v9;
  }

  if ([v6 count])
  {
    v7 = [(MTLJSONAdapter *)WFPropertyListJSONAdapter modelOfClass:objc_opt_class() fromJSONDictionary:v6 error:0];
    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (valueCopy)
    {
LABEL_3:
      v6 = [(MTLJSONAdapter *)WFPropertyListJSONAdapter JSONDictionaryFromModel:valueCopy error:0];
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowParameterState.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[WFWorkflowParameterStateDescriptor class]]"}];

    if (valueCopy)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)processValue:(id)value withContext:(id)context valueHandler:(id)handler
{
  handlerCopy = handler;
  valueCopy = value;
  parameter = [context parameter];
  workflow = [parameter workflow];
  reference = [workflow reference];

  v11 = +[WFDatabaseProxy defaultDatabase];
  v12 = [valueCopy matchingWorkflowInDatabase:v11 containingWorkflow:reference];

  handlerCopy[2](handlerCopy, v12, 0);
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self variable];
    if (variable2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      prompt = [variable2 prompt];
      handlerCopy[2](handlerCopy, prompt, 0);
    }

    else
    {

      variable3 = [(WFVariableSubstitutableParameterState *)self variable];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __85__WFWorkflowParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v15[3] = &unk_1E837FF40;
      v17 = valueHandlerCopy;
      v15[4] = self;
      v16 = contextCopy;
      [variable3 getContentWithContext:v16 completionHandler:v15];

      variable2 = v17;
    }
  }

  else
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self value];
    [(WFWorkflowParameterState *)self processValue:variable2 withContext:contextCopy valueHandler:valueHandlerCopy];
  }
}

void __85__WFWorkflowParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 numberOfItems])
  {
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__WFWorkflowParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
    v10[3] = &unk_1E837FF18;
    v8 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v8;
    v12 = *(a1 + 48);
    [v5 generateCollectionByCoercingToItemClasses:v7 completionHandler:v10];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __85__WFWorkflowParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = a4;
  v6 = [a2 items];
  v7 = [v6 firstObject];

  v8 = v7;
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

    v10 = v9;

    v11 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v10)
    {
      v14 = [v10 workflowReference];
      v15 = [[WFWorkflowParameterStateDescriptor alloc] initWithWorkflowReference:v14 isSelf:0];
      [*(a1 + 32) processValue:v15 withContext:*(a1 + 40) valueHandler:*(a1 + 48)];

LABEL_12:
      goto LABEL_14;
    }

    if (v13)
    {
      v13 = [v13 string];
      v14 = [[WFWorkflowParameterStateDescriptor alloc] initWithWorkflowName:v13 workflowIdentifier:0 isSelf:0];
      [*(a1 + 32) processValue:v14 withContext:*(a1 + 40) valueHandler:*(a1 + 48)];
      goto LABEL_12;
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_14:
}

- (id)legacySerializedRepresentation
{
  value = [(WFVariableSubstitutableParameterState *)self value];

  if (value)
  {
    value2 = [(WFVariableSubstitutableParameterState *)self value];
    workflowName = [value2 workflowName];
  }

  else
  {
    workflowName = [(WFVariableSubstitutableParameterState *)self serializedRepresentation];
  }

  return workflowName;
}

@end