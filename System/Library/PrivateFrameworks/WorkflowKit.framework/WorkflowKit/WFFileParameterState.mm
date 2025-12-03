@interface WFFileParameterState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (id)processForMultipleStateWithContext:(id)context error:(id *)error resolution:(int64_t *)resolution;
- (id)resolveFileURLWithContext:(id)context error:(id *)error;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
- (void)requestAccessToFileWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WFFileParameterState

- (void)requestAccessToFileWithContext:(id)context completionHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  value = [(WFVariableSubstitutableParameterState *)self value];
  fileLocation = [value fileLocation];

  if (fileLocation)
  {
    variableSource = [contextCopy variableSource];
    fileLocation2 = [value fileLocation];
    v18[0] = fileLocation2;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__WFFileParameterState_requestAccessToFileWithContext_completionHandler___block_invoke;
    v14[3] = &unk_1E8375A88;
    v17 = handlerCopy;
    v15 = contextCopy;
    v16 = value;
    [variableSource requestAccessToFileAtLocations:v12 completionHandler:v14];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
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

- (id)resolveFileURLWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  value = [(WFVariableSubstitutableParameterState *)self value];
  if (![value isSupportedOnCurrentDevice])
  {
    v10 = 0;
    goto LABEL_16;
  }

  parameter = [contextCopy parameter];
  if (parameter)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = parameter;
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

  workflow = [v11 workflow];

  workflowID = [workflow workflowID];

  v14 = [value resolveURLWithWorkflowID:workflowID error:error];
  if (!v14)
  {
    fileLocation = [value fileLocation];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v10 = 0;
      goto LABEL_15;
    }

    fileLocation2 = [value fileLocation];
    v22 = 0;
    variableSource = [fileLocation2 resolveLocationWithError:&v22];

    v10 = [MEMORY[0x1E6996E20] fileWithURL:variableSource options:8];
    goto LABEL_13;
  }

  v10 = [MEMORY[0x1E6996E20] fileWithURL:v14 options:8];
  fileURL = [v10 fileURL];
  wf_fileIsDirectory = [fileURL wf_fileIsDirectory];

  if (wf_fileIsDirectory)
  {
    variableSource = [contextCopy variableSource];
    [variableSource captureFileRepresentation:v10];
LABEL_13:
  }

LABEL_15:

LABEL_16:

  return v10;
}

- (id)processForMultipleStateWithContext:(id)context error:(id *)error resolution:(int64_t *)resolution
{
  v7 = [(WFFileParameterState *)self resolveFileURLWithContext:context error:?];
  v8 = v7;
  if (resolution)
  {
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v10 = WFShouldRequestAccessToFile(*error);
      v9 = 2;
      if (!v10)
      {
        v9 = 0;
      }
    }

    *resolution = v9;
  }

  return v8;
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    v19.receiver = self;
    v19.super_class = WFFileParameterState;
    [(WFVariableSubstitutableParameterState *)&v19 processWithContext:contextCopy userInputRequiredHandler:handlerCopy valueHandler:valueHandlerCopy];
  }

  else
  {
    v18 = 0;
    v12 = [(WFFileParameterState *)self resolveFileURLWithContext:contextCopy error:&v18];
    v13 = v18;
    v14 = v13;
    if (v12)
    {
      valueHandlerCopy[2](valueHandlerCopy, v12, 0);
    }

    else if (WFShouldRequestAccessToFile(v13))
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __81__WFFileParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v15[3] = &unk_1E837DCC8;
      v17 = valueHandlerCopy;
      v16 = contextCopy;
      [(WFFileParameterState *)self requestAccessToFileWithContext:v16 completionHandler:v15];
    }

    else
    {
      (valueHandlerCopy)[2](valueHandlerCopy, 0, v14);
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

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileParameterState.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[WFFileValue class]]"}];
  }

  serializedRepresentation = [valueCopy serializedRepresentation];

  return serializedRepresentation;
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  parameterCopy = parameter;
  providerCopy = provider;
  representationCopy = representation;
  v10 = [[WFFileValue alloc] initWithSerializedRepresentation:representationCopy variableProvider:providerCopy parameter:parameterCopy];

  return v10;
}

@end