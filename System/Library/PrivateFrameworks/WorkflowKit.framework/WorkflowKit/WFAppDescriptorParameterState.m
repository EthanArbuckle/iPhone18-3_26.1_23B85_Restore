@interface WFAppDescriptorParameterState
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (id)legacySerializedRepresentation;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFAppDescriptorParameterState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = WFLocalizedString(@"Select an app");
  v12 = [(WFVariableSubstitutableParameterState *)self value];
  v13 = [v12 requiresUserConfirmation];

  if (v13)
  {
    v9[2](v9, v11, 0);
  }

  else
  {
    v14 = [(WFVariableSubstitutableParameterState *)self variable];

    if (v14)
    {
      v15 = [(WFVariableSubstitutableParameterState *)self variable];
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v16 = [v15 prompt];
        v9[2](v9, v16, 0);
      }

      else
      {

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __90__WFAppDescriptorParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
        aBlock[3] = &unk_1E837DE28;
        v27 = v9;
        v26 = v11;
        v28 = v10;
        v17 = _Block_copy(aBlock);
        v18 = [(WFVariableSubstitutableParameterState *)self variable];
        v19 = objc_opt_class();
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __90__WFAppDescriptorParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
        v22[3] = &unk_1E837DE78;
        v24 = v17;
        v22[4] = self;
        v23 = v8;
        v20 = v17;
        [v18 getObjectRepresentationForClass:v19 context:v23 completionHandler:v22];

        v15 = v27;
      }
    }

    else
    {
      v21.receiver = self;
      v21.super_class = WFAppDescriptorParameterState;
      [(WFVariableSubstitutableParameterState *)&v21 processWithContext:v8 userInputRequiredHandler:v9 valueHandler:v10];
    }
  }
}

void __90__WFAppDescriptorParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = MEMORY[0x1E696E720];
  v6 = a2;
  v7 = [v5 alloc];
  v8 = [v6 localizedName];
  v9 = [v6 bundleIdentifier];

  v10 = [v7 initWithLocalizedName:v8 bundleIdentifier:v9 extensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 supportedIntents:0 bundleURL:0 documentTypes:0];
  v11 = [MEMORY[0x1E696E748] sharedResolver];
  v12 = [v11 resolvedAppMatchingDescriptor:v10];

  if ([v12 requiresUserConfirmation])
  {
    v13 = a1[4];
    v14 = *(a1[5] + 16);
  }

  else
  {
    v14 = *(a1[6] + 16);
  }

  v14();
}

void __90__WFAppDescriptorParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) variable];
    v6 = objc_opt_class();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __90__WFAppDescriptorParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_3;
    v8[3] = &unk_1E837DE50;
    v7 = *(a1 + 40);
    v9 = *(a1 + 48);
    [v5 getObjectRepresentationForClass:v6 context:v7 completionHandler:v8];
  }
}

void __90__WFAppDescriptorParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = MEMORY[0x1E6996C80];
  v8 = a5;
  v9 = [v7 findAppWithBundleIdentifier:a2 name:a2];
  (*(*(a1 + 32) + 16))();
}

- (id)legacySerializedRepresentation
{
  v3 = [(WFVariableSubstitutableParameterState *)self value];
  v4 = v3;
  if (v3)
  {
    [v3 bundleIdentifier];
  }

  else
  {
    [(WFVariableSubstitutableParameterState *)self serializedRepresentation];
  }
  v5 = ;

  return v5;
}

+ (id)serializedRepresentationFromValue:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"WFAppDescriptorParameterState.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[INAppDescriptor class]]"}];
  }

  v6 = v5;
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

  v9 = [v8 serializedRepresentation];

  return v9;
}

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v7;
  if (!v10)
  {
    v13 = 0;
    v15 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = v10;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v12)
  {
    v16 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v12];
    if (!v16)
    {
LABEL_12:
      v16 = getWFActionsLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315138;
        v23 = "+[WFAppDescriptorParameterState valueFromSerializedRepresentation:variableProvider:parameter:]";
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s No serialized representation to make an app descriptor", &v22, 0xCu);
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (!v15)
    {
      v13 = 0;
      goto LABEL_12;
    }

    v16 = [objc_alloc(MEMORY[0x1E696E720]) initWithSerializedRepresentation:v15];
    v15 = v13;
    v13 = 0;
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  v17 = [MEMORY[0x1E696E748] sharedResolver];
  v18 = [v17 resolvedAppMatchingDescriptor:v16];

  if (v18)
  {
    goto LABEL_21;
  }

  v19 = getWFActionsLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v22 = 136315394;
    v23 = "+[WFAppDescriptorParameterState valueFromSerializedRepresentation:variableProvider:parameter:]";
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_ERROR, "%s Unable to resolve descriptor: %@", &v22, 0x16u);
  }

LABEL_20:
  v18 = 0;
LABEL_21:

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

@end