@interface WFLocationParameterState
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFLocationParameterState)initWithValue:(id)a3;
- (void)getContentCollectionWithContext:(id)a3 completionHandler:(id)a4;
- (void)getContentItemFromValue:(id)a3 withContext:(id)a4 completionHandler:(id)a5;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFLocationParameterState

- (void)getContentItemFromValue:(id)a3 withContext:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 parameter];
  v11 = objc_opt_class();
  v12 = WFEnforceClass_1501(v10, v11);

  if (![v12 allowsCurrentLocation] || !objc_msgSend(v7, "isCurrentLocation"))
  {
    v17 = [v7 legacyVariableString];

    if (v17)
    {
      v18 = [v7 legacyVariableString];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __82__WFLocationParameterState_getContentItemFromValue_withContext_completionHandler___block_invoke_2;
      v25[3] = &unk_1E8376DD8;
      v26 = v9;
      [v18 processWithContext:v8 completionHandler:v25];

      v16 = v26;
      goto LABEL_7;
    }

    v19 = [v7 placemark];

    if (v19)
    {
      v20 = MEMORY[0x1E6996D58];
      v21 = [v7 placemark];
    }

    else
    {
      if (![v12 allowsTextOnlyLocations])
      {
        goto LABEL_14;
      }

      v24 = [v7 locationName];

      if (!v24)
      {
        goto LABEL_14;
      }

      v20 = MEMORY[0x1E6996D58];
      v21 = [v7 locationName];
    }

    v22 = v21;
    v23 = [v20 itemWithObject:v21];

    (*(v9 + 2))(v9, v23, 0);
    goto LABEL_15;
  }

  if ([v12 skipsProcessingCurrentLocation])
  {
LABEL_14:
    (*(v9 + 2))(v9, 0, 0);
    goto LABEL_15;
  }

  v13 = [v8 environment];
  [v12 currentLocationAccuracy];
  v15 = v14;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __82__WFLocationParameterState_getContentItemFromValue_withContext_completionHandler___block_invoke;
  v27[3] = &unk_1E83769F0;
  v28 = v9;
  [WFLocator determineLocationWithWorkflowEnvironment:v13 desiredAccuracy:v27 completion:v15];
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

- (void)getContentCollectionWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v8)
  {
    v9 = [(WFVariableSubstitutableParameterState *)self variable];
    [v9 getContentWithContext:v7 completionHandler:v6];
  }

  else
  {
    v10 = [(WFVariableSubstitutableParameterState *)self value];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__WFLocationParameterState_getContentCollectionWithContext_completionHandler___block_invoke;
    v11[3] = &unk_1E83769C8;
    v12 = v6;
    [(WFLocationParameterState *)self getContentItemFromValue:v10 withContext:v7 completionHandler:v11];
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

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableSubstitutableParameterState *)self variable];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [v11 prompt];
    v9[2](v9, v12, 0);
  }

  else
  {

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__WFLocationParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
    v13[3] = &unk_1E837DAB0;
    v15 = v10;
    v14 = v8;
    [(WFLocationParameterState *)self getContentCollectionWithContext:v14 completionHandler:v13];

    v11 = v15;
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

- (WFLocationParameterState)initWithValue:(id)a3
{
  v4 = a3;
  v5 = [v4 legacyVariableString];
  v6 = v5;
  if (v5 && [v5 representsSingleContentVariable])
  {
    v7 = [v6 variables];
    v8 = [v7 firstObject];

    v9 = [(WFVariableSubstitutableParameterState *)self initWithVariable:v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFLocationParameterState;
    v9 = [(WFVariableSubstitutableParameterState *)&v11 initWithValue:v4];
  }

  return v9;
}

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v10 = [[WFVariableString alloc] initWithString:v7];
LABEL_6:
    v11 = [[WFLocationValue alloc] initWithLegacyVariableString:v10];

    goto LABEL_8;
  }

  v10 = WFDeserializedVariableObject(v7, v8, v9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

LABEL_7:
  v11 = [[WFLocationValue alloc] initWithSerializedRepresentation:v7 variableProvider:v8 parameter:v9];
LABEL_8:

  return v11;
}

@end