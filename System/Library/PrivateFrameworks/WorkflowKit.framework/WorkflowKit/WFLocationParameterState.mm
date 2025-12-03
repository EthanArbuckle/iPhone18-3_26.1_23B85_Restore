@interface WFLocationParameterState
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFLocationParameterState)initWithValue:(id)value;
- (void)getContentCollectionWithContext:(id)context completionHandler:(id)handler;
- (void)getContentItemFromValue:(id)value withContext:(id)context completionHandler:(id)handler;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFLocationParameterState

- (void)getContentItemFromValue:(id)value withContext:(id)context completionHandler:(id)handler
{
  valueCopy = value;
  contextCopy = context;
  handlerCopy = handler;
  parameter = [contextCopy parameter];
  v11 = objc_opt_class();
  v12 = WFEnforceClass_1501(parameter, v11);

  if (![v12 allowsCurrentLocation] || !objc_msgSend(valueCopy, "isCurrentLocation"))
  {
    legacyVariableString = [valueCopy legacyVariableString];

    if (legacyVariableString)
    {
      legacyVariableString2 = [valueCopy legacyVariableString];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __82__WFLocationParameterState_getContentItemFromValue_withContext_completionHandler___block_invoke_2;
      v25[3] = &unk_1E8376DD8;
      v26 = handlerCopy;
      [legacyVariableString2 processWithContext:contextCopy completionHandler:v25];

      v16 = v26;
      goto LABEL_7;
    }

    placemark = [valueCopy placemark];

    if (placemark)
    {
      v20 = MEMORY[0x1E6996D58];
      placemark2 = [valueCopy placemark];
    }

    else
    {
      if (![v12 allowsTextOnlyLocations])
      {
        goto LABEL_14;
      }

      locationName = [valueCopy locationName];

      if (!locationName)
      {
        goto LABEL_14;
      }

      v20 = MEMORY[0x1E6996D58];
      placemark2 = [valueCopy locationName];
    }

    v22 = placemark2;
    v23 = [v20 itemWithObject:placemark2];

    (*(handlerCopy + 2))(handlerCopy, v23, 0);
    goto LABEL_15;
  }

  if ([v12 skipsProcessingCurrentLocation])
  {
LABEL_14:
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    goto LABEL_15;
  }

  environment = [contextCopy environment];
  [v12 currentLocationAccuracy];
  v15 = v14;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __82__WFLocationParameterState_getContentItemFromValue_withContext_completionHandler___block_invoke;
  v27[3] = &unk_1E83769F0;
  v28 = handlerCopy;
  [WFLocator determineLocationWithWorkflowEnvironment:environment desiredAccuracy:v27 completion:v15];
  v16 = v28;
LABEL_7:

LABEL_15:
}

void __82__WFLocationParameterState_getContentItemFromValue_withContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = MEMORY[0x1E6996E90];
    v4 = [MEMORY[0x1E6996D78] locationLocation];
    v5 = [v3 itemWithObject:v6 origin:v4 disclosureLevel:1];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __82__WFLocationParameterState_getContentItemFromValue_withContext_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [MEMORY[0x1E6996D58] itemWithObject:a2];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (void)getContentCollectionWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self variable];
    [variable2 getContentWithContext:contextCopy completionHandler:handlerCopy];
  }

  else
  {
    value = [(WFVariableSubstitutableParameterState *)self value];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__WFLocationParameterState_getContentCollectionWithContext_completionHandler___block_invoke;
    v11[3] = &unk_1E83769C8;
    v12 = handlerCopy;
    [(WFLocationParameterState *)self getContentItemFromValue:value withContext:contextCopy completionHandler:v11];
  }
}

void __78__WFLocationParameterState_getContentCollectionWithContext_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = MEMORY[0x1E6996D40];
    v10 = a2;
    v5 = MEMORY[0x1E695DEC8];
    v6 = a2;
    v7 = [v5 arrayWithObjects:&v10 count:1];
    v8 = [v4 collectionWithItems:{v7, v10, v11}];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, a3);
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variable = [(WFVariableSubstitutableParameterState *)self variable];
  if (variable && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    prompt = [variable prompt];
    handlerCopy[2](handlerCopy, prompt, 0);
  }

  else
  {

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__WFLocationParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
    v13[3] = &unk_1E837DAB0;
    v15 = valueHandlerCopy;
    v14 = contextCopy;
    [(WFLocationParameterState *)self getContentCollectionWithContext:v14 completionHandler:v13];

    variable = v15;
  }
}

void __85__WFLocationParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) parameter];
    v5 = objc_opt_class();
    v6 = WFEnforceClass_1501(v4, v5);

    v13[0] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    if ([v6 allowsTextOnlyLocations])
    {
      v12[0] = objc_opt_class();
      v12[1] = objc_opt_class();
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

      v7 = v8;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__WFLocationParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
    v10[3] = &unk_1E837DBF8;
    v11 = *(a1 + 40);
    [v3 generateCollectionByCoercingToItemClasses:v7 completionHandler:v10];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (WFLocationParameterState)initWithValue:(id)value
{
  valueCopy = value;
  legacyVariableString = [valueCopy legacyVariableString];
  v6 = legacyVariableString;
  if (legacyVariableString && [legacyVariableString representsSingleContentVariable])
  {
    variables = [v6 variables];
    firstObject = [variables firstObject];

    v9 = [(WFVariableSubstitutableParameterState *)self initWithVariable:firstObject];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFLocationParameterState;
    v9 = [(WFVariableSubstitutableParameterState *)&v11 initWithValue:valueCopy];
  }

  return v9;
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v10 = [[WFVariableString alloc] initWithString:representationCopy];
LABEL_6:
    v11 = [[WFLocationValue alloc] initWithLegacyVariableString:v10];

    goto LABEL_8;
  }

  v10 = WFDeserializedVariableObject(representationCopy, providerCopy, parameterCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

LABEL_7:
  v11 = [[WFLocationValue alloc] initWithSerializedRepresentation:representationCopy variableProvider:providerCopy parameter:parameterCopy];
LABEL_8:

  return v11;
}

@end