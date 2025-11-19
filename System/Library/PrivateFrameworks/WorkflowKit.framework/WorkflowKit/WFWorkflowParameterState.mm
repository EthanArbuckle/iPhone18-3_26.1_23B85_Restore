@interface WFWorkflowParameterState
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (id)legacySerializedRepresentation;
- (void)processValue:(id)a3 withContext:(id)a4 valueHandler:(id)a5;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFWorkflowParameterState

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [[WFWorkflowParameterStateDescriptor alloc] initWithWorkflowName:v6 workflowIdentifier:0 isSelf:0];
LABEL_11:
    v12 = v7;
    goto LABEL_12;
  }

  v8 = objc_opt_class();
  v9 = v5;
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

+ (id)serializedRepresentationFromValue:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v5)
    {
LABEL_3:
      v6 = [(MTLJSONAdapter *)WFPropertyListJSONAdapter JSONDictionaryFromModel:v5 error:0];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"WFWorkflowParameterState.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[WFWorkflowParameterStateDescriptor class]]"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)processValue:(id)a3 withContext:(id)a4 valueHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v13 = [a4 parameter];
  v9 = [v13 workflow];
  v10 = [v9 reference];

  v11 = +[WFDatabaseProxy defaultDatabase];
  v12 = [v8 matchingWorkflowInDatabase:v11 containingWorkflow:v10];

  v7[2](v7, v12, 0);
}

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v11)
  {
    v12 = [(WFVariableSubstitutableParameterState *)self variable];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = [v12 prompt];
      v9[2](v9, v13, 0);
    }

    else
    {

      v14 = [(WFVariableSubstitutableParameterState *)self variable];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __85__WFWorkflowParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v15[3] = &unk_1E837FF40;
      v17 = v10;
      v15[4] = self;
      v16 = v8;
      [v14 getContentWithContext:v16 completionHandler:v15];

      v12 = v17;
    }
  }

  else
  {
    v12 = [(WFVariableSubstitutableParameterState *)self value];
    [(WFWorkflowParameterState *)self processValue:v12 withContext:v8 valueHandler:v10];
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
  v3 = [(WFVariableSubstitutableParameterState *)self value];

  if (v3)
  {
    v4 = [(WFVariableSubstitutableParameterState *)self value];
    v5 = [v4 workflowName];
  }

  else
  {
    v5 = [(WFVariableSubstitutableParameterState *)self serializedRepresentation];
  }

  return v5;
}

@end