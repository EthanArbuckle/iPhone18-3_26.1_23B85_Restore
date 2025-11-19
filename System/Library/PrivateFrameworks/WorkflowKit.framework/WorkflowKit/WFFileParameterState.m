@interface WFFileParameterState
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (id)processForMultipleStateWithContext:(id)a3 error:(id *)a4 resolution:(int64_t *)a5;
- (id)resolveFileURLWithContext:(id)a3 error:(id *)a4;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
- (void)requestAccessToFileWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation WFFileParameterState

- (void)requestAccessToFileWithContext:(id)a3 completionHandler:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WFVariableSubstitutableParameterState *)self value];
  v9 = [v8 fileLocation];

  if (v9)
  {
    v10 = [v6 variableSource];
    v11 = [v8 fileLocation];
    v18[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__WFFileParameterState_requestAccessToFileWithContext_completionHandler___block_invoke;
    v14[3] = &unk_1E8375A88;
    v17 = v7;
    v15 = v6;
    v16 = v8;
    [v10 requestAccessToFileAtLocations:v12 completionHandler:v14];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __73__WFFileParameterState_requestAccessToFileWithContext_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) parameter];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 workflow];

    v10 = [v9 workflowID];

    v11 = *(a1 + 40);
    v14 = v5;
    v12 = [v11 resolveURLWithWorkflowID:v10 error:&v14];
    v13 = v14;

    (*(*(a1 + 48) + 16))();
    v5 = v13;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)resolveFileURLWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFVariableSubstitutableParameterState *)self value];
  if (![v7 isSupportedOnCurrentDevice])
  {
    v10 = 0;
    goto LABEL_16;
  }

  v8 = [v6 parameter];
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
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;

  v12 = [v11 workflow];

  v13 = [v12 workflowID];

  v14 = [v7 resolveURLWithWorkflowID:v13 error:a4];
  if (!v14)
  {
    v18 = [v7 fileLocation];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v20 = [v7 fileLocation];
    v22 = 0;
    v17 = [v20 resolveLocationWithError:&v22];

    v10 = [MEMORY[0x1E6996E20] fileWithURL:v17 options:8];
    goto LABEL_13;
  }

  v10 = [MEMORY[0x1E6996E20] fileWithURL:v14 options:8];
  v15 = [v10 fileURL];
  v16 = [v15 wf_fileIsDirectory];

  if (v16)
  {
    v17 = [v6 variableSource];
    [v17 captureFileRepresentation:v10];
LABEL_13:
  }

LABEL_15:

LABEL_16:

  return v10;
}

- (id)processForMultipleStateWithContext:(id)a3 error:(id *)a4 resolution:(int64_t *)a5
{
  v7 = [(WFFileParameterState *)self resolveFileURLWithContext:a3 error:?];
  v8 = v7;
  if (a5)
  {
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v10 = WFShouldRequestAccessToFile(*a4);
      v9 = 2;
      if (!v10)
      {
        v9 = 0;
      }
    }

    *a5 = v9;
  }

  return v8;
}

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v11)
  {
    v19.receiver = self;
    v19.super_class = WFFileParameterState;
    [(WFVariableSubstitutableParameterState *)&v19 processWithContext:v8 userInputRequiredHandler:v9 valueHandler:v10];
  }

  else
  {
    v18 = 0;
    v12 = [(WFFileParameterState *)self resolveFileURLWithContext:v8 error:&v18];
    v13 = v18;
    v14 = v13;
    if (v12)
    {
      v10[2](v10, v12, 0);
    }

    else if (WFShouldRequestAccessToFile(v13))
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __81__WFFileParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v15[3] = &unk_1E837DCC8;
      v17 = v10;
      v16 = v8;
      [(WFFileParameterState *)self requestAccessToFileWithContext:v16 completionHandler:v15];
    }

    else
    {
      (v10)[2](v10, 0, v14);
    }
  }
}

void __81__WFFileParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v8 = [MEMORY[0x1E6996E20] fileWithURL:a2 options:8];
    v3 = [v8 fileURL];
    v4 = [v3 wf_fileIsDirectory];

    if (v4)
    {
      v5 = [*(a1 + 32) variableSource];
      [v5 captureFileRepresentation:v8];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

+ (id)serializedRepresentationFromValue:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"WFFileParameterState.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[WFFileValue class]]"}];
  }

  v6 = [v5 serializedRepresentation];

  return v6;
}

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[WFFileValue alloc] initWithSerializedRepresentation:v9 variableProvider:v8 parameter:v7];

  return v10;
}

@end