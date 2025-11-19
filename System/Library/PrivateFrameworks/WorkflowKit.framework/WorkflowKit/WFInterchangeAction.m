@interface WFInterchangeAction
- (BOOL)callbackIsCurrentlyDisabled;
- (BOOL)inputPassthrough;
- (BOOL)inputRequired;
- (BOOL)inputsMultipleItems;
- (BOOL)isDiscontinued;
- (BOOL)mappedValueIsTrue:(id)a3 forContentMapping:(id)a4;
- (BOOL)outputsMultipleItems;
- (BOOL)requiresCallback;
- (BOOL)shouldSuppressCallback;
- (BOOL)visibleForUse:(int64_t)a3;
- (WFInterchangeAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (WFInterchangeAction)initWithInterchangeAction:(id)a3 identifier:(id)a4 definition:(id)a5 serializedParameters:(id)a6;
- (id)app;
- (id)appDescriptor;
- (id)appDescriptorFromWFInterchangeApp:(id)a3;
- (id)description;
- (id)descriptionDefinition;
- (id)disabledPlatformsForInterchangeActionWithIdentifier:(id)a3;
- (id)inputContentClasses;
- (id)inputParameterKey;
- (id)localizedCategoryWithContext:(id)a3;
- (id)localizedKeywordsWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
- (id)outputContentClasses;
- (id)parameterSummary;
- (id)requiredResources;
- (id)specifiedInputContentClasses;
- (id)specifiedOutputContentClasses;
- (id)userInterfaceTypes;
- (void)performActionWithInput:(id)a3 parameters:(id)a4 userInterface:(id)a5 successHandler:(id)a6 errorHandler:(id)a7;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFInterchangeAction

- (id)disabledPlatformsForInterchangeActionWithIdentifier:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if (v7 == @"com.apple.iBooks.openin" || (v8 = v7, v9 = [(__CFString *)v7 isEqualToString:@"com.apple.iBooks.openin"], v8, v9))
    {
      v14[0] = @"Watch";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      goto LABEL_7;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFInterchangeAction.m" lineNumber:409 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v10 = MEMORY[0x1E695E0F0];
LABEL_7:

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)performActionWithInput:(id)a3 parameters:(id)a4 userInterface:(id)a5 successHandler:(id)a6 errorHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(WFInterchangeAction *)self interchangeAction];
  [v17 performActionWithInput:v16 parameters:v15 userInterface:v14 successHandler:v13 errorHandler:v12];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  if ([(WFInterchangeAction *)self requiresCallback])
  {
    v5 = [(WFAction *)self runningDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(WFAction *)self runningDelegate];
      v8 = [v7 currentRunningContextForAction:self];

      LOBYTE(v7) = [v8 isShortcutsApp];
      if ((v7 & 1) == 0)
      {
LABEL_4:
        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:2 userInfo:0];
        [(WFAction *)self finishRunningWithError:v9];
        goto LABEL_9;
      }
    }

    else
    {
      v10 = [MEMORY[0x1E6996CA8] sharedContext];
      v11 = [v10 applicationOrNil];

      if (!v11)
      {
        goto LABEL_4;
      }
    }
  }

  v12 = [(WFAction *)self processedParameters];
  v9 = [v12 mutableCopy];

  if ([(WFInterchangeAction *)self shouldSuppressCallback])
  {
    [v9 setObject:MEMORY[0x1E695E118] forKey:@"DisableCallback"];
  }

  v13 = [(WFAction *)self userInterface];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__WFInterchangeAction_runAsynchronouslyWithInput___block_invoke;
  v15[3] = &unk_1E837E5B8;
  v15[4] = self;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__WFInterchangeAction_runAsynchronouslyWithInput___block_invoke_2;
  v14[3] = &unk_1E837E5E0;
  v14[4] = self;
  [(WFInterchangeAction *)self performActionWithInput:v4 parameters:v9 userInterface:v13 successHandler:v15 errorHandler:v14];

LABEL_9:
}

void __50__WFInterchangeAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7 = v5;
  if (!a3)
  {
    v6 = 0;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = [MEMORY[0x1E696ABC0] userCancelledError];
  if (v7)
  {
LABEL_5:
    [*(a1 + 32) setOutput:v7];
  }

LABEL_6:
  [*(a1 + 32) finishRunningWithError:v6];
}

- (BOOL)mappedValueIsTrue:(id)a3 forContentMapping:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 stringValue];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = [v6 valueMapping];
  v10 = [v9 objectForKey:v8];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  v13 = v12;

  if (objc_opt_respondsToSelector())
  {
    v14 = [v13 BOOLValue];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)callbackIsCurrentlyDisabled
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(WFInterchangeAction *)self shouldSuppressCallback])
  {
    v3 = 1;
    goto LABEL_20;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(WFInterchangeAction *)self interchangeAction];
  v5 = [v4 inputMapping];

  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v23 + 1) + 8 * v9);
      v11 = [v10 destinationType];
      if (![v11 isEqualToString:@"DisableCallback"])
      {
        goto LABEL_12;
      }

      v12 = [v10 sourceType];
      v13 = [v12 isEqualToString:@"Parameter"];

      if (v13)
      {
        break;
      }

LABEL_13:
      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    v14 = [(WFAction *)self processedParameters];

    if (v14)
    {
      v11 = [(WFAction *)self processedParameters];
      v19 = [v10 sourceKey];
      v20 = [v11 objectForKey:v19];
      v3 = [(WFInterchangeAction *)self mappedValueIsTrue:v20 forContentMapping:v10];

LABEL_18:
      goto LABEL_19;
    }

    v15 = [v10 sourceKey];
    v16 = [(WFAction *)self parameterStateForKey:v15];
    v17 = objc_opt_class();
    v11 = WFEnforceClass_1501(v16, v17);

    v18 = [v11 value];

    if (v18)
    {
      v19 = [v11 value];
      v3 = [(WFInterchangeAction *)self mappedValueIsTrue:v19 forContentMapping:v10];
      goto LABEL_18;
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_15:
  v3 = 0;
LABEL_19:

LABEL_20:
  v21 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)shouldSuppressCallback
{
  v3 = [MEMORY[0x1E6996CA8] sharedContext];
  v4 = [v3 provider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v6 = [(WFAction *)self workflow];
  v7 = [v6 actions];

  v8 = [v7 indexOfObject:self];
  v9 = v8 == [v7 count] - 1;

  return v9;
}

- (BOOL)requiresCallback
{
  v3 = [(WFInterchangeAction *)self interchangeAction];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(WFInterchangeAction *)self interchangeAction];
    if ([v4 isCallbackAction])
    {
      v5 = ![(WFInterchangeAction *)self callbackIsCurrentlyDisabled];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)outputsMultipleItems
{
  if ([(WFInterchangeAction *)self inputPassthrough])
  {

    return [(WFInterchangeAction *)self inputsMultipleItems];
  }

  else
  {
    v4 = [(WFInterchangeAction *)self interchangeAction];
    v5 = [v4 outputsMultipleItems];

    return v5;
  }
}

- (BOOL)inputsMultipleItems
{
  v2 = [(WFInterchangeAction *)self interchangeAction];
  v3 = [v2 inputsMultipleItems];

  return v3;
}

- (id)outputContentClasses
{
  v3 = [(WFInterchangeAction *)self interchangeAction];
  v4 = [v3 outputContentClasses];

  if ([v4 count])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(WFInterchangeAction *)self inputContentClasses];
  }

  v6 = v5;

  return v6;
}

- (id)specifiedOutputContentClasses
{
  v3 = [(WFInterchangeAction *)self interchangeAction];
  v4 = [v3 outputContentClasses];

  if ([v4 count])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(WFInterchangeAction *)self specifiedInputContentClasses];
  }

  v6 = v5;

  return v6;
}

- (id)inputContentClasses
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = 360;
  contentClasses = self->_contentClasses;
  if (!contentClasses)
  {
    v5 = [(WFInterchangeAction *)self interchangeAction];
    v6 = [v5 skipItemClassesSupportingInput];

    if (v6)
    {
      v7 = [(WFInterchangeAction *)self interchangeAction];
      v8 = [v7 inputContentClasses];
      v9 = [v8 copy];
      v10 = self->_contentClasses;
      self->_contentClasses = v9;
    }

    else
    {
      v36 = 360;
      v7 = objc_opt_new();
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v11 = [(WFInterchangeAction *)self interchangeAction];
      v12 = [v11 inputContentClasses];

      v13 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0x1E6996000uLL;
        v16 = *v44;
        v17 = 0x1E6996000uLL;
        v18 = 0x1E6996000uLL;
        v37 = *v44;
        v38 = v12;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v44 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v20 = *(*(&v43 + 1) + 8 * i);
            v21 = *(v15 + 3936);
            if (v20 == objc_opt_class() || (v22 = *(v17 + 3976), v20 == objc_opt_class()) || (v23 = *(v18 + 3664), v20 == objc_opt_class()) || v20 == objc_opt_class())
            {
              [v7 addObject:{v20, v36}];
            }

            else
            {
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v24 = [v20 ownedTypes];
              v25 = [v24 countByEnumeratingWithState:&v39 objects:v47 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v40;
                do
                {
                  for (j = 0; j != v26; ++j)
                  {
                    if (*v40 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v29 = *(*(&v39 + 1) + 8 * j);
                    v30 = [MEMORY[0x1E6996D68] sharedRegistry];
                    v31 = [v30 contentItemClassesSupportingType:v29];
                    [v7 unionSet:v31];
                  }

                  v26 = [v24 countByEnumeratingWithState:&v39 objects:v47 count:16];
                }

                while (v26);
              }

              v16 = v37;
              v12 = v38;
              v15 = 0x1E6996000;
              v17 = 0x1E6996000;
              v18 = 0x1E6996000;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v14);
      }

      v32 = [v7 array];
      v3 = v36;
      v33 = *(&self->super.super.isa + v36);
      *(&self->super.super.isa + v36) = v32;
    }

    contentClasses = *(&self->super.super.isa + v3);
  }

  v34 = *MEMORY[0x1E69E9840];

  return contentClasses;
}

- (id)specifiedInputContentClasses
{
  v2 = [(WFInterchangeAction *)self interchangeAction];
  v3 = [v2 inputContentClasses];

  return v3;
}

- (id)inputParameterKey
{
  v2 = [(WFInterchangeAction *)self interchangeAction];
  v3 = [v2 inputParameterSourceKey];

  return v3;
}

- (BOOL)inputPassthrough
{
  v2 = [(WFInterchangeAction *)self interchangeAction];
  v3 = [v2 outputContentClasses];
  v4 = [v3 count] == 0;

  return v4;
}

- (BOOL)inputRequired
{
  v2 = [(WFInterchangeAction *)self interchangeAction];
  v3 = [v2 inputRequired];

  return v3;
}

- (id)app
{
  v2 = [(WFInterchangeAction *)self interchangeAction];
  v3 = [v2 app];

  return v3;
}

- (id)userInterfaceTypes
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(WFInterchangeAction *)self interchangeAction];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9[0] = *MEMORY[0x1E6997170];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFInterchangeAction;
    v5 = [(WFAction *)&v8 userInterfaceTypes];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)requiredResources
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(WFInterchangeAction *)self interchangeAction];
  v5 = [v4 requiredResourceNames];

  v6 = [(WFInterchangeAction *)self interchangeAction];
  v7 = [v6 definition];
  v8 = [v7 objectForKey:@"RequiredResources"];

  v9 = v8;
  if (!v8)
  {
    if (v5)
    {
      v33 = v5;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = v5;
      v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v36;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v36 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v35 + 1) + 8 * i);
            if (([v14 isEqualToString:@"WFAppInstalledResource"] & 1) == 0)
            {
              v15 = v3;
              v16 = objc_opt_new();
              [v16 setObject:v14 forKey:@"WFResourceClass"];
              v17 = [(WFInterchangeAction *)self interchangeAction];
              v18 = [v17 app];
              v19 = [v18 identifier];
              [v16 setObject:v19 forKey:@"AppIdentifier"];

              v20 = [(WFInterchangeAction *)self interchangeAction];
              objc_opt_class();
              LOBYTE(v19) = objc_opt_isKindOfClass();

              if (v19)
              {
                v21 = [(WFInterchangeAction *)self interchangeAction];
                v22 = [v21 scheme];
                v23 = [v22 scheme];
                [v16 setObject:v23 forKey:@"UtilizedScheme"];
              }

              v3 = v15;
              [v15 addObject:v16];
            }
          }

          v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v11);
      }

      v8 = 0;
      v5 = v33;
    }

    v24 = [(WFInterchangeAction *)self interchangeAction];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v26 = off_1E836F448;
    if ((isKindOfClass & 1) == 0)
    {
      v26 = off_1E836F4A0;
    }

    v27 = *v26;
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    [v3 addObject:v29];

    v9 = v3;
  }

  v30 = v9;

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)appDescriptor
{
  appDescriptor = self->_appDescriptor;
  if (!appDescriptor)
  {
    v4 = [(WFInterchangeAction *)self interchangeAction];
    v5 = [v4 app];
    v6 = [(WFInterchangeAction *)self appDescriptorFromWFInterchangeApp:v5];

    v7 = objc_alloc(MEMORY[0x1E69635F8]);
    v8 = [(WFInterchangeAction *)self interchangeAction];
    v9 = [v8 app];
    v10 = [v9 bundleIdentifier];
    v11 = [v7 initWithBundleIdentifier:v10 allowPlaceholder:0 error:0];

    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = [MEMORY[0x1E696E748] sharedResolver];
    v13 = [v12 resolvedAppMatchingDescriptor:v6];
    v14 = self->_appDescriptor;
    self->_appDescriptor = v13;

    appDescriptor = self->_appDescriptor;
  }

  v6 = appDescriptor;
LABEL_5:

  return v6;
}

- (id)appDescriptorFromWFInterchangeApp:(id)a3
{
  v3 = MEMORY[0x1E696E720];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 localizedName];
  v7 = [v4 bundleIdentifier];

  v8 = [v5 initWithLocalizedName:v6 bundleIdentifier:v7 extensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 supportedIntents:0 bundleURL:0 documentTypes:0];

  return v8;
}

- (BOOL)visibleForUse:(int64_t)a3
{
  if (a3)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = WFInterchangeAction;
  if (![(WFAction *)&v7 visibleForUse:?])
  {
    return 0;
  }

  v4 = [(WFInterchangeAction *)self interchangeAction];
  v5 = [v4 isDiscoverable];

  return v5;
}

- (BOOL)isDiscontinued
{
  v2 = [(WFInterchangeAction *)self interchangeAction];
  v3 = [v2 isDiscontinued];

  return v3;
}

- (id)localizedKeywordsWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFInterchangeAction *)self interchangeAction];
  v6 = [v5 keywords];

  if (v6)
  {
    v7 = [v4 localize:v6];
    v8 = [v7 componentsSeparatedByString:@"|"];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)descriptionDefinition
{
  v2 = [(WFInterchangeAction *)self interchangeAction];
  v3 = [v2 descriptionDefinition];

  return v3;
}

- (id)localizedCategoryWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFInterchangeAction *)self interchangeAction];
  v6 = [v5 localizedSubcategoryWithContext:v4];

  return v6;
}

- (id)parameterSummary
{
  v2 = [(WFInterchangeAction *)self interchangeAction];
  v3 = [v2 parameterSummaryDefinition];

  return v3;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFInterchangeAction *)self interchangeAction];
  v6 = [v5 localizedNameWithContext:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = WFLocalizedStringResourceWithKey(@"Unknown Action", @"Unknown Action");
    v7 = [v4 localize:v8];
  }

  return v7;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = WFInterchangeAction;
  v3 = [(WFAction *)&v7 description];
  v4 = [(WFInterchangeAction *)self app];
  v5 = [v3 stringByAppendingFormat:@": %@", v4];

  return v5;
}

- (WFInterchangeAction)initWithInterchangeAction:(id)a3 identifier:(id)a4 definition:(id)a5 serializedParameters:(id)a6
{
  v48[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"WFInterchangeAction.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v40 = v14;
  v41 = v12;
  if (!v13)
  {
    v15 = [WFActionDefinition alloc];
    v13 = [(WFActionDefinition *)v15 initWithDictionary:MEMORY[0x1E695E0F8]];
  }

  v47[0] = @"AppDefinition";
  v45 = *MEMORY[0x1E69E0908];
  v16 = [v11 app];
  v17 = [v16 identifier];
  v46 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v47[1] = @"ICActionIdentifier";
  v48[0] = v18;
  v19 = [v11 identifier];
  v48[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
  v21 = [(WFActionDefinition *)v13 definitionByAddingEntriesInDictionary:v20];

  v22 = [v21 objectForKey:@"Parameters"];

  if (v22)
  {
    v23 = v40;
  }

  else
  {
    v24 = [v11 inputMapping];
    v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"sourceType = %@", @"Parameter"];
    v26 = [v24 filteredArrayUsingPredicate:v25];

    if ([v26 count])
    {
      v27 = [v26 if_compactMap:&__block_literal_global_67484];
      v43 = @"Parameters";
      v44 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v29 = [v21 definitionByAddingEntriesInDictionary:v28];

      v21 = v29;
    }

    v23 = v40;
  }

  v30 = [v11 identifier];
  v31 = [(WFInterchangeAction *)self disabledPlatformsForInterchangeActionWithIdentifier:v30];

  v32 = WFInjectDisabledPlatformsInActionDefinition(v31, v21);

  v42.receiver = self;
  v42.super_class = WFInterchangeAction;
  v33 = [(WFAction *)&v42 initWithIdentifier:v41 definition:v32 serializedParameters:v23];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_interchangeAction, a3);
    v35 = v34;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v34;
}

id __92__WFInterchangeAction_initWithInterchangeAction_identifier_definition_serializedParameters___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 parameterUI];
  v15 = @"Key";
  v4 = [v2 sourceKey];
  v16[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v6 = [v3 definitionByAddingEntriesInDictionary:v5];

  v7 = [v2 parameterDefault];

  if (v7)
  {
    v13 = @"DefaultValue";
    v8 = [v2 parameterDefault];
    v14 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [v6 definitionByAddingEntriesInDictionary:v9];

    v6 = v10;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (WFInterchangeAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v74 = *MEMORY[0x1E69E9840];
  v57 = a3;
  v7 = a4;
  v54 = a5;
  v8 = [v7 objectForKey:@"AppDefinition"];
  v9 = objc_opt_class();
  v10 = WFEnforceClass_1501(v8, v9);

  v53 = v10;
  v11 = [v10 objectForKey:*MEMORY[0x1E69E0908]];
  v12 = objc_opt_class();
  v13 = WFEnforceClass_1501(v11, v12);

  v55 = v7;
  v14 = [v7 objectForKey:@"ICActionIdentifier"];
  v15 = objc_opt_class();
  v16 = WFEnforceClass_1501(v14, v15);

  if (v13)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v49 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Interchange actions created from the bundled action must include an app identifier and Interchange action identifier" userInfo:0];
    objc_exception_throw(v49);
  }

  v18 = +[WFInterchangeAppRegistry sharedRegistry];
  v52 = v13;
  v19 = [v18 appWithIdentifier:v13];

  v20 = v19;
  v21 = v16;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v58 = v20;
  v22 = [v20 schemes];
  v51 = [v22 countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v51)
  {
    v23 = *v68;
    v50 = *v68;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v68 != v23)
        {
          objc_enumerationMutation(v22);
        }

        v25 = *(*(&v67 + 1) + 8 * i);
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v26 = [v25 actions];
        v27 = [v26 countByEnumeratingWithState:&v63 objects:v72 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v64;
          while (2)
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v64 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v63 + 1) + 8 * j);
              v32 = [v31 identifier];
              v33 = [v32 isEqualToString:v21];

              if (v33)
              {
                v41 = v31;

                goto LABEL_31;
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v63 objects:v72 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }
        }

        v23 = v50;
      }

      v51 = [v22 countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v51);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v22 = [v58 documentActions];
  v34 = [v22 countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v60;
    while (2)
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v60 != v36)
        {
          objc_enumerationMutation(v22);
        }

        v38 = *(*(&v59 + 1) + 8 * k);
        v39 = [v38 identifier];
        v40 = [v39 isEqualToString:v21];

        if (v40)
        {
          v41 = v38;
          goto LABEL_31;
        }
      }

      v35 = [v22 countByEnumeratingWithState:&v59 objects:v71 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  v41 = 0;
LABEL_31:

  if (v41)
  {
    v42 = v57;
    v44 = v54;
    v43 = v55;
    v45 = [(WFInterchangeAction *)self initWithInterchangeAction:v41 identifier:v57 definition:v55 serializedParameters:v54];
    v46 = v45;
  }

  else
  {
    v46 = 0;
    v45 = self;
    v42 = v57;
    v44 = v54;
    v43 = v55;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v46;
}

@end