@interface WFHandleCustomIntentAction
- (BOOL)enumerationAllowsMultipleValues:(id)a3;
- (BOOL)hasLocationParameter;
- (BOOL)intentDescriptorIsSyncedFromOtherDevices;
- (BOOL)isDiscontinued;
- (BOOL)shouldInsertExpandingParameterForParameter:(id)a3;
- (NSString)appIdentifier;
- (WFHandleCustomIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 schema:(id)a6 intent:(id)a7 className:(id)a8 bundleIdentifier:(id)a9 stringLocalizer:(id)a10;
- (WFHandleCustomIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 schema:(id)a6 intent:(id)a7 resolvedIntentDescriptor:(id)a8 stringLocalizer:(id)a9;
- (WFHandleCustomIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 stringLocalizer:(id)a6;
- (WFHandleCustomIntentAction)initWithIdentifier:(id)a3 intent:(id)a4 className:(id)a5 bundleIdentifier:(id)a6;
- (id)actionForAppIdentifier:(id)a3;
- (id)codableDescription;
- (id)copyWithSerializedParameters:(id)a3;
- (id)createBundleAccessGrant;
- (id)createStateForParameter:(id)a3 fromSerializedRepresentation:(id)a4;
- (id)disabledOnPlatforms;
- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4;
- (id)generatedIntentWithIdentifier:(id)a3 input:(id)a4 processedParameters:(id)a5 error:(id *)a6;
- (id)generatedResourceNodes;
- (id)inputDictionary;
- (id)intentDescription;
- (id)localizedConfigurationPromptDialogForPamameter:(id)a3;
- (id)localizedDefaultOutputNameWithContext:(id)a3;
- (id)localizedDescriptionSummaryWithContext:(id)a3;
- (id)localizedKeyParameterDisplayName;
- (id)localizedNameWithContext:(id)a3;
- (id)outputDictionary;
- (id)parameterDefinitions;
- (id)parameterKeysIgnoredForParameterSummary;
- (id)parameterSummary;
- (id)parametersByIntentSlotName;
- (id)prettyErrorForIntentsExtensionError:(id)a3;
- (id)resolver;
- (id)responseCodableDescription;
- (id)serializedParametersForDonatedIntent:(id)a3 allowDroppingUnconfigurableValues:(BOOL)a4;
- (id)slots;
- (id)titleForINShortcut:(id)a3;
- (int64_t)intentCategory;
- (void)configureResourcesForParameter:(id)a3;
- (void)dynamicResolveParameterDidEndResolutionSession:(id)a3;
- (void)generateSkeletonIntentForDynamicResolver:(id)a3 withCompletionBlock:(id)a4;
- (void)initializeParameters;
- (void)loadDefaultSerializedRepresentationForEnumeration:(id)a3 completionHandler:(id)a4;
- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5;
- (void)localizedDisambiguationPromptForItems:(id)a3 intent:(id)a4 dynamicResolveParameter:(id)a5 completion:(id)a6;
- (void)parameterDefaultSerializedRepresentationDidChange:(id)a3;
- (void)resolveOptionsForUserInput:(id)a3 forDynamicResolveParameter:(id)a4 completion:(id)a5;
- (void)setUpResolverIfNeededForParameter:(id)a3 withCompletionBlock:(id)a4;
- (void)setupParameter:(id)a3;
- (void)startExecutingIntent:(id)a3;
@end

@implementation WFHandleCustomIntentAction

- (void)dynamicResolveParameterDidEndResolutionSession:(id)a3
{
  v3 = [(WFHandleCustomIntentAction *)self dynamicResolver];
  [v3 endSession];
}

- (void)localizedDisambiguationPromptForItems:(id)a3 intent:(id)a4 dynamicResolveParameter:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [a5 codableAttribute];
  [(WFHandleIntentAction *)self localizedDisambiguationPromptForAttribute:v13 intent:v11 disambiguationItems:v12 completion:v10];
}

- (void)resolveOptionsForUserInput:(id)a3 forDynamicResolveParameter:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFHandleCustomIntentAction *)self lastDynamicResolutionRequest];
  [v11 cancel];

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__WFHandleCustomIntentAction_resolveOptionsForUserInput_forDynamicResolveParameter_completion___block_invoke;
  v14[3] = &unk_1E8378328;
  objc_copyWeak(&v17, &location);
  v12 = v10;
  v16 = v12;
  v13 = v8;
  v15 = v13;
  [(WFHandleCustomIntentAction *)self setUpResolverIfNeededForParameter:v9 withCompletionBlock:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __95__WFHandleCustomIntentAction_resolveOptionsForUserInput_forDynamicResolveParameter_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [v8 resolveWithUserInput:*(a1 + 32) completionBlock:*(a1 + 40)];
    [WeakRetained setLastDynamicResolutionRequest:v7];
  }
}

- (void)generateSkeletonIntentForDynamicResolver:(id)a3 withCompletionBlock:(id)a4
{
  v5 = a4;
  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__WFHandleCustomIntentAction_generateSkeletonIntentForDynamicResolver_withCompletionBlock___block_invoke;
  v8[3] = &unk_1E8378300;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(WFAction *)self processParametersWithoutAskingForValuesWithInput:0 workQueue:v6 completionHandler:v8];
}

- (void)setUpResolverIfNeededForParameter:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __84__WFHandleCustomIntentAction_setUpResolverIfNeededForParameter_withCompletionBlock___block_invoke;
  v27 = &unk_1E837E1F8;
  v28 = self;
  v8 = v7;
  v29 = v8;
  v9 = _Block_copy(&v24);
  v10 = [(WFHandleCustomIntentAction *)self dynamicResolver:v24];
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = v10;
  v12 = [(WFHandleCustomIntentAction *)self dynamicResolver];
  v13 = [v12 intentKeyPathToResolve];
  v14 = [v6 key];
  v15 = [v13 isEqualToString:v14];

  if ((v15 & 1) == 0)
  {
LABEL_5:
    v19 = [(WFHandleCustomIntentAction *)self dynamicResolver];
    [v19 endSession];

    v20 = [WFIntentDynamicResolver alloc];
    v21 = [v6 key];
    v22 = [(WFIntentDynamicResolver *)v20 initWithIntentKeyPathToResolve:v21 dataSource:self];
    dynamicResolver = self->_dynamicResolver;
    self->_dynamicResolver = v22;

    goto LABEL_6;
  }

  v16 = [(WFHandleCustomIntentAction *)self dynamicResolver];
  v17 = [v16 state];

  if (v17 != 1)
  {
LABEL_6:
    v9[2](v9);
    goto LABEL_7;
  }

  v18 = [(WFHandleCustomIntentAction *)self dynamicResolver];
  (*(v8 + 2))(v8, v18, 0);

LABEL_7:
}

void __84__WFHandleCustomIntentAction_setUpResolverIfNeededForParameter_withCompletionBlock___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) dynamicResolver];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __84__WFHandleCustomIntentAction_setUpResolverIfNeededForParameter_withCompletionBlock___block_invoke_2;
  v3[3] = &unk_1E83782D8;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  [v2 beginSessionWithCompletionBlock:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __84__WFHandleCustomIntentAction_setUpResolverIfNeededForParameter_withCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v5 = [WeakRetained dynamicResolver];
  (*(v4 + 16))(v4, v5, v3);
}

- (id)prettyErrorForIntentsExtensionError:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x1E696EB00]];

  v7 = MEMORY[0x1E696AA08];
  if (v6)
  {
    v8 = [v4 code];
    if (v8 <= 1002)
    {
      if ((v8 - 1000) < 2)
      {
        v9 = @"The options provided were not valid.";
        goto LABEL_18;
      }

      if (v8 == 1002)
      {
        v9 = @"No options were provided for this parameter";
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (v8 == 1003)
    {
      v9 = @"No default value was provided for this parameter";
LABEL_18:
      v23 = WFLocalizedString(v9);
      if (v23)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (v8 == 1004)
    {
      v13 = [v4 userInfo];
      v14 = [v13 objectForKey:*v7];
      v23 = [v14 localizedDescription];
      goto LABEL_27;
    }

LABEL_19:
    v23 = WFLocalizedString(@"An unknown error occurred.");
    goto LABEL_20;
  }

  v10 = [v4 domain];
  if (![v10 isEqualToString:@"WFIntentExecutorErrorDomain"])
  {

    goto LABEL_19;
  }

  v11 = [v4 code];

  if (v11 != 100)
  {
    goto LABEL_19;
  }

  v12 = [v4 userInfo];
  v13 = [v12 objectForKey:*v7];

  v14 = [v13 domain];
  if ([v14 isEqualToString:*MEMORY[0x1E696E568]])
  {
    v15 = [v13 code];

    if (v15 != 3006)
    {
      v23 = 0;
      goto LABEL_28;
    }

    v16 = [(WFHandleIntentAction *)self appDescriptor];
    v17 = [v16 localizedName];
    v18 = [v17 length];

    v19 = MEMORY[0x1E696AEC0];
    if (v18)
    {
      v14 = WFLocalizedString(@"The action “%1$@” could not run. Open %2$@ to continue.");
      v20 = [(WFAction *)self localizedName];
      v21 = [(WFHandleIntentAction *)self appDescriptor];
      v22 = [v21 localizedName];
      v23 = [v19 localizedStringWithFormat:v14, v20, v22];
    }

    else
    {
      v14 = WFLocalizedString(@"The action “%@” could not run. Open the app to continue.");
      v20 = [(WFAction *)self localizedName];
      v23 = [v19 localizedStringWithFormat:v14, v20];
    }
  }

  else
  {
    v23 = 0;
  }

LABEL_27:

LABEL_28:
  if (!v23)
  {
    goto LABEL_19;
  }

LABEL_20:
  v24 = MEMORY[0x1E696ABC0];
  v25 = *v7;
  v30[0] = *MEMORY[0x1E696A578];
  v30[1] = v25;
  v31[0] = v23;
  v31[1] = v4;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v27 = [v24 errorWithDomain:@"WFIntentExecutorErrorDomain" code:100 userInfo:v26];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (BOOL)enumerationAllowsMultipleValues:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = WFEnforceClass_30212(v3, v4);

  v6 = [v5 codableAttribute];

  if (v6)
  {
    v7 = [v6 modifier] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = WFEnforceClass_30212(v7, v8);

  v10 = [v9 codableAttribute];

  v11 = [v10 metadata];
  v12 = [v6 value];
  [v11 wf_updateWithParameterValue:v12];

  v13 = [v6 value];

  v14 = [(WFHandleIntentAction *)self stringLocalizer];
  v15 = [v10 metadata];
  v16 = [v13 _intents_readableTitleWithLocalizer:v14 metadata:v15];

  return v16;
}

- (id)localizedConfigurationPromptDialogForPamameter:(id)a3
{
  v4 = a3;
  v5 = [(WFHandleIntentAction *)self generatedIntentWithInput:0 processedParameters:0 error:0];
  v6 = [v4 codableAttribute];

  v7 = [v6 promptDialogWithType:6];
  v8 = [(WFHandleIntentAction *)self stringLocalizer];
  v9 = [v7 localizedDialogWithIntent:v5 tokens:0 localizer:v8];

  return v9;
}

- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__WFHandleCustomIntentAction_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke;
  v15[3] = &unk_1E83782B0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  [(WFAction *)self processParametersWithoutAskingForValuesWithInput:0 workQueue:v11 completionHandler:v15];
}

void __92__WFHandleCustomIntentAction_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __92__WFHandleCustomIntentAction_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_2;
    v13[3] = &unk_1E8378288;
    v7 = *(a1 + 56);
    *&v8 = *(a1 + 40);
    *(&v8 + 1) = *(a1 + 32);
    v12 = v8;
    *&v9 = *(a1 + 48);
    *(&v9 + 1) = v7;
    v14 = v12;
    v15 = v9;
    [v6 generatePopulatedIntentFromInput:a3 processedParameters:a2 completion:v13];
  }

  else
  {
    v10 = *(a1 + 56);
    v11 = *(*(a1 + 56) + 16);

    v11();
  }
}

void __92__WFHandleCustomIntentAction_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5 || a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) definition];
    v7 = [v6 objectForKey:@"IntentSlotName"];
    v8 = objc_opt_class();
    v9 = WFEnforceClass_30212(v7, v8);

    v10 = [v5 _codableDescription];
    v11 = [v10 attributeByName:v9];

    v12 = [WFIntentExecutor alloc];
    v13 = [*(a1 + 40) remoteWidgetConnection];
    v14 = [(WFIntentExecutor *)v12 initWithIntent:v5 donateInteraction:0 groupIdentifier:0 remoteWidgetConnection:v13];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __92__WFHandleCustomIntentAction_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_3;
    v18[3] = &unk_1E83790F0;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v19 = v11;
    v20 = v16;
    v18[4] = *(a1 + 40);
    v17 = v11;
    [(WFIntentExecutor *)v14 getDynamicOptionsForParameterNamed:v9 searchTerm:v15 completionHandler:v18];
  }
}

void __92__WFHandleCustomIntentAction_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) prettyErrorForIntentsExtensionError:v6];
    (*(v7 + 16))(v7, 0, v8);
  }

  else if (v5)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __92__WFHandleCustomIntentAction_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_4;
    v15[3] = &unk_1E8378260;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v16 = v9;
    v17 = v10;
    v11 = [v5 wf_mapObjectsUsingBlock:v15];
    (*(*(a1 + 48) + 16))(*(a1 + 48), v11, 0, v12);
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E696E918]);
    v14 = [v13 initWithItems:MEMORY[0x1E695E0F0]];
    (*(*(a1 + 48) + 16))();
  }
}

WFCodableAttributeBackedSubstitutableState *__92__WFHandleCustomIntentAction_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFCodableAttributeBackedSubstitutableState alloc];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) stringLocalizer];
  v7 = [(WFCodableAttributeBackedSubstitutableState *)v4 initWithValue:v3 codableAttribute:v5 stringLocalizer:v6];

  return v7;
}

- (void)loadDefaultSerializedRepresentationForEnumeration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WFAction *)self shouldSkipLoadingAsynchronousDefaultValue])
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    v24 = 0;
    v8 = [(WFHandleIntentAction *)self generatedIntentWithInput:0 processedParameters:0 error:&v24];
    v9 = v24;
    v10 = v9;
    if (!v8 || v9)
    {
      (*(v7 + 2))(v7, 0, v9);
    }

    else
    {
      v11 = [v6 definition];
      v12 = [v11 objectForKey:@"IntentSlotName"];
      v13 = objc_opt_class();
      v14 = WFEnforceClass_30212(v12, v13);

      v15 = [v8 _codableDescription];
      v16 = [v15 attributeByName:v14];

      v17 = [WFIntentExecutor alloc];
      v18 = [(WFHandleCustomIntentAction *)self remoteWidgetConnection];
      v19 = [(WFIntentExecutor *)v17 initWithIntent:v8 donateInteraction:0 groupIdentifier:0 remoteWidgetConnection:v18];

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __98__WFHandleCustomIntentAction_loadDefaultSerializedRepresentationForEnumeration_completionHandler___block_invoke;
      v21[3] = &unk_1E837C818;
      v22 = v16;
      v23 = v7;
      v21[4] = self;
      v20 = v16;
      [(WFIntentExecutor *)v19 getDefaultValueForParameterNamed:v14 completionHandler:v21];
    }
  }
}

void __98__WFHandleCustomIntentAction_loadDefaultSerializedRepresentationForEnumeration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
LABEL_4:
    if (v16)
    {
      v9 = [WFCodableAttributeBackedSubstitutableState alloc];
      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) stringLocalizer];
      v12 = [(WFCodableAttributeBackedSubstitutableState *)v9 initWithValue:v16 codableAttribute:v10 stringLocalizer:v11];
    }

    else
    {
      v12 = 0;
    }

    v14 = *(a1 + 48);
    v15 = [(WFCodableAttributeBackedSubstitutableState *)v12 serializedRepresentation];
    (*(v14 + 16))(v14, v15, 0);

    goto LABEL_10;
  }

  v7 = [v5 domain];
  if ([v7 isEqualToString:*MEMORY[0x1E696EB00]])
  {
    v8 = [v6 code];

    if (v8 == 1003)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v13 = *(a1 + 48);
  v12 = [*(a1 + 32) prettyErrorForIntentsExtensionError:v6];
  (*(v13 + 16))(v13, 0, v12);
LABEL_10:
}

- (id)disabledOnPlatforms
{
  v4.receiver = self;
  v4.super_class = WFHandleCustomIntentAction;
  v2 = [(WFHandleIntentAction *)&v4 disabledOnPlatforms];

  return v2;
}

- (id)localizedDefaultOutputNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFHandleCustomIntentAction *)self responseCodableDescription];
  v6 = [v5 outputAttribute];
  if (v6)
  {
    v7 = [v4 stringLocalizer];

    v8 = [v6 wf_outputDisplayNameWithLocalizer:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFHandleCustomIntentAction;
    v8 = [(WFAction *)&v10 localizedDefaultOutputNameWithContext:v4];
  }

  return v8;
}

- (id)outputDictionary
{
  v26[2] = *MEMORY[0x1E69E9840];
  outputDictionary = self->_outputDictionary;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (outputDictionary == v4)
  {
    v5 = 0;
  }

  else if (outputDictionary)
  {
    outputDictionary = outputDictionary;
    v5 = outputDictionary;
  }

  else
  {
    v23.receiver = self;
    v23.super_class = WFHandleCustomIntentAction;
    v5 = [(WFAction *)&v23 outputDictionary];
    v6 = [(WFHandleCustomIntentAction *)self responseCodableDescription];
    v7 = [v6 outputAttribute];
    if (v7 && ([v5 objectForKeyedSubscript:@"Types"], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8) && (v11 = objc_msgSend(v7, "wf_contentItemClass")) != 0)
    {
      v12 = v11;
      v13 = [v7 modifier];
      v14 = [v5 mutableCopy];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = objc_opt_new();
      }

      v22 = v16;

      v25[0] = @"Multiple";
      v21 = [MEMORY[0x1E696AD98] numberWithBool:v13 == 0];
      v25[1] = @"Types";
      v26[0] = v21;
      v17 = NSStringFromClass(v12);
      v24 = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      v26[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
      [v22 addEntriesFromDictionary:v19];

      if (v22)
      {
        v20 = v22;
      }

      else
      {
        v20 = [MEMORY[0x1E695DFB0] null];
      }

      outputDictionary = self->_outputDictionary;
      self->_outputDictionary = v20;
      v5 = v22;
    }

    else
    {

      outputDictionary = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)inputDictionary
{
  v31[4] = *MEMORY[0x1E69E9840];
  inputDictionary = self->_inputDictionary;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (inputDictionary == v4)
  {
    v5 = 0;
  }

  else if (inputDictionary)
  {
    inputDictionary = inputDictionary;
    v5 = inputDictionary;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = WFHandleCustomIntentAction;
    v6 = [(WFAction *)&v28 inputDictionary];
    if ([v6 count])
    {
      inputDictionary = 0;
      v5 = v6;
    }

    else
    {
      v7 = [(WFHandleCustomIntentAction *)self codableDescription];
      v8 = [v7 inputAttribute];
      v9 = v8;
      if (v8 && (v10 = [v8 wf_contentItemClass]) != 0)
      {
        v26 = v10;
        v23 = [v9 modifier];
        v11 = [(WFAction *)self definition];
        v12 = [v11 objectForKey:@"ParameterOverrides"];

        v13 = [v9 propertyName];
        v27 = v12;
        v14 = [v12 objectForKeyedSubscript:v13];
        v15 = [v14 objectForKey:@"Key"];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = [v9 propertyName];
        }

        v25 = v17;

        v30[0] = @"Multiple";
        v24 = [MEMORY[0x1E696AD98] numberWithBool:v23 == 0];
        v31[0] = v24;
        v31[1] = MEMORY[0x1E695E118];
        v30[1] = @"Required";
        v30[2] = @"ParameterKey";
        v31[2] = v25;
        v30[3] = @"Types";
        v18 = NSStringFromClass(v26);
        v29 = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
        v31[3] = v19;
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];

        if (v5)
        {
          v20 = v5;
        }

        else
        {
          v20 = [MEMORY[0x1E695DFB0] null];
        }

        inputDictionary = self->_inputDictionary;
        self->_inputDictionary = v20;
      }

      else
      {

        inputDictionary = 0;
        v5 = MEMORY[0x1E695E0F8];
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)parameterSummary
{
  parameterSummary = self->_parameterSummary;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (parameterSummary != v4)
  {
    if (parameterSummary)
    {
      parameterSummary = parameterSummary;
      v5 = parameterSummary;
      goto LABEL_20;
    }

    v22.receiver = self;
    v22.super_class = WFHandleCustomIntentAction;
    v6 = [(WFAction *)&v22 parameterSummary];
    if (v6)
    {
      v5 = v6;
      parameterSummary = 0;
      goto LABEL_20;
    }

    v7 = [(WFHandleCustomIntentAction *)self codableDescription];
    v8 = [(WFAction *)self definition];
    v5 = [v8 objectForKey:@"ParameterOverrides"];

    v9 = [(WFHandleCustomIntentAction *)self schema];

    if (v9)
    {
      v10 = [(WFHandleCustomIntentAction *)self schema];
      v11 = [v7 className];
      v12 = [v10 _configurableParameterCombinationsForClassName:v11];
    }

    else
    {
      v12 = [(WFHandleCustomIntentAction *)self intent];

      if (!v12)
      {
LABEL_11:
        if ([v12 count])
        {
          v13 = objc_opt_new();
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __46__WFHandleCustomIntentAction_parameterSummary__block_invoke;
          v19[3] = &unk_1E8378238;
          v19[4] = self;
          v14 = v5;
          v20 = v14;
          v15 = v13;
          v21 = v15;
          [v12 enumerateKeysAndObjectsUsingBlock:v19];
          v16 = [v15 count];
          if (v16)
          {
            v5 = [[WFActionParameterSummary alloc] initWithValues:v15];
          }

          if (v16)
          {
            if (v5)
            {
              v17 = v5;
            }

            else
            {
              v17 = [MEMORY[0x1E695DFB0] null];
            }

            parameterSummary = self->_parameterSummary;
            self->_parameterSummary = v17;
            goto LABEL_20;
          }
        }

        else
        {
        }

        parameterSummary = 0;
        goto LABEL_19;
      }

      v10 = [(WFHandleCustomIntentAction *)self intent];
      v12 = [v10 _parameterCombinations];
    }

    goto LABEL_11;
  }

LABEL_19:
  v5 = 0;
LABEL_20:

  return v5;
}

void __46__WFHandleCustomIntentAction_parameterSummary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = a1;
  v9 = [*(a1 + 32) stringLocalizer];
  v10 = [v6 localizedTitleFormatStringWithLocalizer:v9];
  v11 = [v10 mutableCopy];

  if (v11)
  {
    v12 = v7;
    v26 = v6;
    v27 = v5;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v5;
    v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = [*(v8 + 40) objectForKeyedSubscript:v17];
          v19 = [v18 objectForKey:@"Key"];

          if (v19)
          {
            v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"${%@}", v17];
            v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"${%@}", v19];
            [v11 replaceOccurrencesOfString:v20 withString:v21 options:0 range:{0, objc_msgSend(v11, "length")}];
            [v12 addObject:v19];
          }

          else
          {
            [v12 addObject:v17];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }

    v7 = v12;
    v22 = [v12 componentsJoinedByString:{@", "}];
    v23 = *(v8 + 48);
    v24 = [[WFActionParameterSummaryValue alloc] initWithKey:v22 localizedSummaryString:v11];
    [v23 addObject:v24];

    v6 = v26;
    v5 = v27;
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)parameterDefinitions
{
  v35 = *MEMORY[0x1E69E9840];
  parameterDefinitions = self->_parameterDefinitions;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (parameterDefinitions == v4)
  {
    v5 = 0;
  }

  else if (parameterDefinitions)
  {
    parameterDefinitions = parameterDefinitions;
    v5 = parameterDefinitions;
  }

  else
  {
    v31.receiver = self;
    v31.super_class = WFHandleCustomIntentAction;
    v6 = [(WFAction *)&v31 parameterDefinitions];
    if ([v6 count])
    {
      parameterDefinitions = 0;
      v5 = v6;
    }

    else
    {
      v7 = [(WFAction *)self definition];
      v8 = [v7 objectForKey:@"ParameterOverrides"];

      v9 = [(WFHandleCustomIntentAction *)self createBundleAccessGrant];
      [v9 acquire];
      v10 = [(WFHandleCustomIntentAction *)self codableDescription];
      v5 = objc_opt_new();
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v25 = v10;
      v26 = v8;
      v11 = [v10 wf_actionParameterDefinitionsWithOverrides:v8];
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [v5 addObject:*(*(&v27 + 1) + 8 * i)];
          }

          v13 = [v11 countByEnumeratingWithState:&v27 objects:v34 count:16];
        }

        while (v13);
      }

      if ([(WFHandleCustomIntentAction *)self intentCategory]!= 4)
      {
        v16 = [WFParameterDefinition alloc];
        v33[0] = @"ShowWhenRun";
        v32[0] = @"Key";
        v32[1] = @"Class";
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v33[1] = v18;
        v33[2] = MEMORY[0x1E695E118];
        v32[2] = @"DefaultValue";
        v32[3] = @"Label";
        v19 = WFLocalizedStringResourceWithKey(@"Show When Run", @"Show When Run");
        v33[3] = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:4];
        v21 = [(WFParameterDefinition *)v16 initWithDictionary:v20];

        [v5 addObject:v21];
      }

      [v9 relinquish];

      if (v5)
      {
        v22 = v5;
      }

      else
      {
        v22 = [MEMORY[0x1E695DFB0] null];
      }

      parameterDefinitions = self->_parameterDefinitions;
      self->_parameterDefinitions = v22;
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)localizedKeyParameterDisplayName
{
  localizedKeyParameterDisplayName = self->_localizedKeyParameterDisplayName;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (localizedKeyParameterDisplayName == v4)
  {
    v5 = 0;
  }

  else if (localizedKeyParameterDisplayName)
  {
    localizedKeyParameterDisplayName = localizedKeyParameterDisplayName;
    v5 = localizedKeyParameterDisplayName;
  }

  else
  {
    v6 = [(WFHandleCustomIntentAction *)self createBundleAccessGrant];
    [v6 acquire];
    v7 = [(WFHandleCustomIntentAction *)self codableDescription];
    v8 = [v7 keyAttribute];
    v9 = [(WFHandleIntentAction *)self stringLocalizer];
    v5 = [v8 localizedDisplayNameWithLocalizer:v9];

    [v6 relinquish];
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
    }

    localizedKeyParameterDisplayName = self->_localizedKeyParameterDisplayName;
    self->_localizedKeyParameterDisplayName = v10;
  }

  return v5;
}

- (id)localizedDescriptionSummaryWithContext:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WFHandleCustomIntentAction;
  v5 = [(WFAction *)&v13 localizedDescriptionSummaryWithContext:v4];
  if (!v5)
  {
    v6 = [(WFHandleCustomIntentAction *)self createBundleAccessGrant];
    [v6 acquire];
    v7 = [(WFHandleCustomIntentAction *)self codableDescription];
    v8 = [v4 stringLocalizer];
    v9 = [v7 localizedDescriptiveTextWithLocalizer:v8];
    v10 = v9;
    v11 = &stru_1F4A1C408;
    if (v9)
    {
      v11 = v9;
    }

    v5 = v11;

    [v6 relinquish];
  }

  return v5;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self definition];
  v6 = [v5 name];

  if (v6)
  {
    v7 = [v4 localize:v6];
  }

  else
  {
    v8 = [(WFHandleCustomIntentAction *)self createBundleAccessGrant];
    [v8 acquire];
    v9 = [(WFHandleCustomIntentAction *)self codableDescription];
    v10 = [v4 stringLocalizer];
    v11 = [v9 localizedTitleWithLocalizer:v10];

    [v8 relinquish];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v14.receiver = self;
      v14.super_class = WFHandleCustomIntentAction;
      v12 = [(WFHandleIntentAction *)&v14 localizedNameWithContext:v4];
    }

    v7 = v12;
  }

  return v7;
}

- (BOOL)isDiscontinued
{
  v2 = [(WFHandleCustomIntentAction *)self codableDescription];
  v3 = [v2 isDeprecated];

  return v3;
}

- (id)responseCodableDescription
{
  responseCodableDescription = self->_responseCodableDescription;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (responseCodableDescription == v4)
  {
    v5 = 0;
  }

  else if (responseCodableDescription)
  {
    responseCodableDescription = responseCodableDescription;
    v5 = responseCodableDescription;
  }

  else
  {
    v6 = [(WFHandleCustomIntentAction *)self schema];
    v7 = [(WFHandleCustomIntentAction *)self intentDescriptor];
    v8 = [v7 intentClassName];
    v5 = [v6 intentResponseCodableDescriptionWithIntentClassName:v8];

    if (v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
    }

    responseCodableDescription = self->_responseCodableDescription;
    self->_responseCodableDescription = v9;
  }

  return v5;
}

- (id)codableDescription
{
  v3 = [(WFHandleCustomIntentAction *)self schema];

  if (v3)
  {
    codableDescription = self->_codableDescription;
    v5 = [MEMORY[0x1E695DFB0] null];

    if (codableDescription == v5)
    {
      v7 = 0;
      goto LABEL_13;
    }

    if (!codableDescription)
    {
      v8 = [(WFHandleCustomIntentAction *)self schema];
      v9 = [(WFHandleCustomIntentAction *)self intentDescriptor];
      v10 = [v9 intentClassName];
      v7 = [v8 intentCodableDescriptionWithIntentClassName:v10];

      if (v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = [MEMORY[0x1E695DFB0] null];
      }

      codableDescription = self->_codableDescription;
      self->_codableDescription = v11;
      goto LABEL_13;
    }

    v6 = codableDescription;
    codableDescription = v6;
  }

  else
  {
    v7 = [(WFHandleCustomIntentAction *)self intent];

    if (!v7)
    {
      goto LABEL_14;
    }

    codableDescription = [(WFHandleCustomIntentAction *)self intent];
    v6 = [(INIntentCodableDescription *)codableDescription _codableDescription];
  }

  v7 = v6;
LABEL_13:

LABEL_14:

  return v7;
}

- (id)createBundleAccessGrant
{
  v3 = [(WFHandleCustomIntentAction *)self intentDescriptor];
  v4 = [v3 bundleIdentifier];
  if (v4)
  {
    v5 = v4;

LABEL_4:
    v7 = [MEMORY[0x1E696E768] sharedManager];
    v8 = [v7 grantForBundleIdentifier:v5 error:0];

    goto LABEL_5;
  }

  v6 = [(WFHandleCustomIntentAction *)self intentDescriptor];
  v5 = [v6 extensionBundleIdentifier];

  if (v5)
  {
    goto LABEL_4;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (id)titleForINShortcut:(id)a3
{
  v4 = a3;
  v5 = [(WFHandleIntentAction *)self appDescriptor];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.Bridge"];

  if (v7)
  {
    v8 = [(WFAction *)self localizedName];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFHandleCustomIntentAction;
    v8 = [(WFHandleIntentAction *)&v11 titleForINShortcut:v4];
  }

  v9 = v8;

  return v9;
}

- (void)startExecutingIntent:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 _codableDescription];
  v6 = [v5 attributes];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 metadata];
        v14 = [v12 propertyName];
        v15 = [(WFAction *)self parameterStateForKey:v14];
        [v13 wf_updateWithParameterState:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v17.receiver = self;
  v17.super_class = WFHandleCustomIntentAction;
  [(WFHandleIntentAction *)&v17 startExecutingIntent:v4];

  v16 = *MEMORY[0x1E69E9840];
}

- (id)generatedIntentWithIdentifier:(id)a3 input:(id)a4 processedParameters:(id)a5 error:(id *)a6
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(WFHandleCustomIntentAction *)self schema];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E696E880]);
    v11 = [(WFHandleCustomIntentAction *)self schema];
    v12 = [(WFHandleCustomIntentAction *)self intentDescriptor];
    v13 = [v12 intentClassName];
    v14 = [v10 _initWithIdentifier:v8 schema:v11 name:v13 data:0];
  }

  else
  {
    v14 = [(WFHandleCustomIntentAction *)self intent];
  }

  v15 = [(WFHandleCustomIntentAction *)self intentDescriptor];
  v16 = [v15 bundleIdentifier];
  [v14 _setLaunchId:v16];

  v17 = [(WFHandleCustomIntentAction *)self intentDescriptor];
  v18 = [v17 extensionBundleIdentifier];
  [v14 _setExtensionBundleId:v18];

  if (a6 && !v14)
  {
    v19 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696AA08];
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:11 userInfo:0];
    v25[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    *a6 = [v19 errorWithDomain:@"WFActionErrorDomain" code:1 userInfo:v21];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v14;
}

- (int64_t)intentCategory
{
  v2 = [(WFHandleCustomIntentAction *)self codableDescription];
  v3 = [v2 intentCategory];

  return v3;
}

- (id)slots
{
  v2 = [(WFHandleCustomIntentAction *)self codableDescription];
  v3 = [v2 displayOrderedAttributes];
  v4 = [v3 array];

  return v4;
}

- (id)intentDescription
{
  v3 = [(WFHandleCustomIntentAction *)self schema];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696E880]);
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    v7 = [(WFHandleCustomIntentAction *)self schema];
    v8 = [(WFHandleCustomIntentAction *)self intentDescriptor];
    v9 = [v8 intentClassName];
    v10 = [v4 _initWithIdentifier:v6 schema:v7 name:v9 data:0];
    v11 = [v10 _intentInstanceDescription];

LABEL_5:
    goto LABEL_6;
  }

  v12 = [(WFHandleCustomIntentAction *)self intent];

  if (v12)
  {
    v5 = [(WFHandleCustomIntentAction *)self intent];
    v11 = [v5 _intentInstanceDescription];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (void)configureResourcesForParameter:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 key];
  v6 = [v5 isEqualToString:@"ShowWhenRun"];

  if (v6)
  {
    v7 = [(WFHandleCustomIntentAction *)self responseCodableDescription];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [v7 responseCodes];
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = *v23;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if ([v12 isSuccess])
          {
            v13 = [v12 conciseFormatString];
            if ([v13 length])
            {

LABEL_14:
              v9 = 1;
              goto LABEL_15;
            }

            v14 = [v12 formatString];
            v15 = [v14 length];

            if (v15)
            {
              goto LABEL_14;
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v16 = [WFIntentResultUIAvailableResource alloc];
    v17 = [(WFHandleCustomIntentAction *)self intentDescriptor];
    v18 = [(WFIntentResultUIAvailableResource *)v16 initWithDefinition:MEMORY[0x1E695E0F8] resolvedIntentDescriptor:v17 hasSuccessResponseWithDialog:v9];

    v19 = [v4 resourceManager];
    [v19 addResource:v18];
  }

  v21.receiver = self;
  v21.super_class = WFHandleCustomIntentAction;
  [(WFAction *)&v21 configureResourcesForParameter:v4];

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasLocationParameter
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(WFHandleCustomIntentAction *)self codableDescription];
  v3 = [v2 attributes];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) metadata];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)generatedResourceNodes
{
  v36 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = WFHandleCustomIntentAction;
  v3 = [(WFAction *)&v32 generatedResourceNodes];
  v4 = [v3 mutableCopy];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (!v6)
  {
    v8 = 0;
    v15 = v5;
    goto LABEL_13;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v29;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v29 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v28 + 1) + 8 * i);
      v12 = [v11 resource];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v14 = v11;

        v8 = v14;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
  }

  while (v7);

  if (v8)
  {
    v15 = [(WFHandleCustomIntentAction *)self requiredResourcesForIntentAvailableResource];
    v16 = [v15 if_map:&__block_literal_global_272];
    v17 = [WFResourceNode alloc];
    v18 = [v8 resource];
    v19 = [(WFResourceNode *)v17 initWithResource:v18 subnodes:v16];

    [v5 removeObject:v8];
    [v5 addObject:v19];

LABEL_13:
  }

  if ([(WFHandleCustomIntentAction *)self hasLocationParameter])
  {
    v20 = [WFLocationAccessResource alloc];
    v33 = @"WFResourceClass";
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v34 = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v24 = [(WFAccessResource *)v20 initWithDefinition:v23];

    v25 = [[WFResourceNode alloc] initWithResource:v24];
    [v5 addObject:v25];
  }

  v26 = *MEMORY[0x1E69E9840];

  return v5;
}

WFResourceNode *__52__WFHandleCustomIntentAction_generatedResourceNodes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFResourceNode alloc] initWithResource:v2];

  return v3;
}

- (BOOL)intentDescriptorIsSyncedFromOtherDevices
{
  v2 = [(WFHandleCustomIntentAction *)self schema];
  v3 = [v2 isSyncedFromOtherDevice];

  return v3;
}

- (NSString)appIdentifier
{
  if (self->_appIdentifier)
  {
    if (VCIsShortcutsAppBundleIdentifier())
    {
      v3 = 0;
      goto LABEL_7;
    }

    appIdentifier = self->_appIdentifier;
  }

  else
  {
    appIdentifier = 0;
  }

  v3 = appIdentifier;
LABEL_7:

  return v3;
}

- (id)parameterKeysIgnoredForParameterSummary
{
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ShowWhenRun", 0}];

  return v2;
}

- (void)parameterDefaultSerializedRepresentationDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  v6 = [(WFAction *)self parameterStateForKey:v5 fallingBackToDefaultValue:0];

  if (v6)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = [v4 defaultSerializedRepresentation];
  if (!v7 || ([(WFHandleCustomIntentAction *)self createStateForParameter:v4 fromSerializedRepresentation:v7], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_7:
    v11.receiver = self;
    v11.super_class = WFHandleCustomIntentAction;
    [(WFAction *)&v11 parameterDefaultSerializedRepresentationDidChange:v4];
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [v4 key];
  [(WFAction *)self setParameterState:v9 forKey:v10];

LABEL_8:
}

- (BOOL)shouldInsertExpandingParameterForParameter:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 definition];
    v6 = [v5 objectForKey:@"IntentSlotName"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_30212(v6, v7);

    v9 = [(WFHandleCustomIntentAction *)self codableDescription];
    v10 = [v9 attributeByName:v8];

    if ([v4 allowsMultipleValues])
    {
      if ([v10 supportsSearch])
      {
        v11 = 1;
      }

      else
      {
        v11 = [v4 isRangedSizeArray];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFHandleCustomIntentAction;
    v11 = [(WFAction *)&v13 shouldInsertExpandingParameterForParameter:v4];
  }

  return v11;
}

- (id)actionForAppIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFHandleCustomIntentAction *)self intentDescriptor];
  v6 = [v5 bundleIdentifier];

  if (v6 && (VCIsShortcutsAppBundleIdentifier() & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFHandleCustomIntentAction;
    v7 = [(WFAction *)&v9 actionForAppIdentifier:v4];
  }

  return v7;
}

- (void)setupParameter:(id)a3
{
  v4 = a3;
  v19 = v4;
  if (v4)
  {
    if ([v4 conformsToProtocol:&unk_1F4AD41D0])
    {
      v5 = [v19 definition];
      v6 = [v5 objectForKey:@"IntentSlotName"];
      v7 = objc_opt_class();
      v8 = WFEnforceClass_30212(v6, v7);

      v9 = [(WFHandleCustomIntentAction *)self codableDescription];
      v10 = [v9 attributeByName:v8];

      [v19 setCodableAttribute:v10];
      v11 = [(WFHandleIntentAction *)self stringLocalizer];
      [v19 setStringLocalizer:v11];

      v12 = v19;
    }

    else
    {
      v12 = 0;
      v8 = v19;
    }

    v14 = v19;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    [v16 setDataSource:self];
    v17 = v14;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v17;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    [0 setDataSource:self];
    v12 = 0;
    v13 = 0;
  }

  v18 = v13;

  [v18 setDataSource:self];
}

- (void)initializeParameters
{
  v15 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = WFHandleCustomIntentAction;
  [(WFHandleIntentAction *)&v13 initializeParameters];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(WFAction *)self parameters];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(WFHandleCustomIntentAction *)self setupParameter:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)createStateForParameter:(id)a3 fromSerializedRepresentation:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(WFHandleCustomIntentAction *)self setupParameter:v7];
  v10.receiver = self;
  v10.super_class = WFHandleCustomIntentAction;
  v8 = [(WFAction *)&v10 createStateForParameter:v7 fromSerializedRepresentation:v6];

  return v8;
}

- (id)serializedParametersForDonatedIntent:(id)a3 allowDroppingUnconfigurableValues:(BOOL)a4
{
  v6 = a3;
  v7 = [(WFHandleCustomIntentAction *)self parametersByIntentSlotName];
  v8 = [(WFHandleIntentAction *)self stringLocalizer];
  v9 = WFSerializedParametersForDonatedIntent(v6, 0, a4, v7, v8);

  return v9;
}

- (id)parametersByIntentSlotName
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(WFAction *)self parameters];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 intentSlotName];

        if (v10)
        {
          v11 = [v9 intentSlotName];
          [v3 setObject:v9 forKey:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)resolver
{
  if (resolver_onceToken != -1)
  {
    dispatch_once(&resolver_onceToken, &__block_literal_global_30275);
  }

  v3 = resolver_resolver;

  return v3;
}

void __38__WFHandleCustomIntentAction_resolver__block_invoke()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696E748] sharedResolver];
  v1 = resolver_resolver;
  resolver_resolver = v0;

  v2 = MEMORY[0x1E696E750];
  v6 = *MEMORY[0x1E696E510];
  v7[0] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 optionsWithDictionary:v3];

  [resolver_resolver setOptions:v4];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)copyWithSerializedParameters:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(WFAction *)self identifier];
  v7 = [(WFAction *)self definition];
  v8 = [(WFHandleCustomIntentAction *)self schema];
  v9 = [(WFHandleCustomIntentAction *)self intent];
  v10 = [(WFHandleCustomIntentAction *)self intentDescriptor];
  v11 = [(WFHandleIntentAction *)self stringLocalizer];
  v12 = [v5 initWithIdentifier:v6 definition:v7 serializedParameters:v4 schema:v8 intent:v9 resolvedIntentDescriptor:v10 stringLocalizer:v11];

  v13 = [(WFHandleCustomIntentAction *)self remoteWidgetConnection];
  [v12 setRemoteWidgetConnection:v13];

  return v12;
}

- (WFHandleCustomIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 schema:(id)a6 intent:(id)a7 resolvedIntentDescriptor:(id)a8 stringLocalizer:(id)a9
{
  v87[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  obj = a6;
  v81 = a6;
  v74 = a7;
  v80 = a7;
  v17 = a8;
  v18 = a9;
  if (!v15)
  {
    v19 = [WFActionDefinition alloc];
    v15 = [(WFActionDefinition *)v19 initWithDictionary:MEMORY[0x1E695E0F8]];
  }

  v72 = *MEMORY[0x1E696EAF8];
  v20 = [*MEMORY[0x1E696EAF8] stringByAppendingString:v14];
  v79 = [WFIntentActionProvider disabledPlatformsForIntentWithTypeName:v20];
  v21 = WFInjectDisabledPlatformsInActionDefinition(v79, v15);

  v22 = objc_opt_new();
  v23 = [v17 displayableBundleIdentifier];
  v24 = v23;
  if (v23)
  {
    v82 = v23;
  }

  else
  {
    v25 = [v17 bundleIdentifier];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = [v17 extensionBundleIdentifier];
    }

    v82 = v27;
  }

  v28 = [v17 displayableApplicationRecord];
  v75 = v22;
  v76 = v28;
  v29 = 1;
  if (v28 && ([v28 wf_isAvailableInContext:1] & 1) == 0)
  {
    v30 = [v21 objectForKey:@"RequiredResources"];
    if (v30)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = v18;
    v33 = v31;

    v34 = [v33 mutableCopy];
    v35 = v14;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = objc_opt_new();
    }

    v37 = v36;

    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    [v37 addObject:v39];

    v86 = @"RequiredResources";
    v40 = [v37 copy];
    v87[0] = v40;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
    v42 = [v21 definitionByAddingEntriesInDictionary:v41];

    v29 = 0;
    v21 = v42;
    v14 = v35;
    v18 = v32;
    v22 = v75;
  }

  v43 = [v21 objectForKey:@"Discoverable"];

  if (!v43)
  {
    v44 = [MEMORY[0x1E696AD98] numberWithInt:v29];
    [v22 setObject:v44 forKeyedSubscript:@"Discoverable"];
  }

  if (v82)
  {
    v45 = [v21 objectForKey:@"AppDefinition"];

    if (!v45)
    {
      v84 = *MEMORY[0x1E69E0908];
      v85 = v82;
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
      [v22 setObject:v46 forKeyedSubscript:@"AppDefinition"];
    }
  }

  v47 = [v21 objectForKey:@"IntentName"];

  if (!v47)
  {
    v48 = [v17 intentClassName];
    [v22 setObject:v48 forKeyedSubscript:@"IntentName"];
  }

  v49 = [v17 extensionBundleIdentifier];
  if (v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = [v17 bundleIdentifier];
    if (!v50)
    {
      goto LABEL_32;
    }
  }

  v51 = [v21 objectForKey:@"IntentIdentifier"];

  if (!v51)
  {
    v52 = [v17 intentClassName];
    v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", v72, v50, v52];
    [v22 setObject:v53 forKeyedSubscript:@"IntentIdentifier"];
  }

LABEL_32:
  v54 = [v21 definitionByAddingEntriesInDictionary:v22];

  v83.receiver = self;
  v83.super_class = WFHandleCustomIntentAction;
  v55 = [(WFHandleIntentAction *)&v83 initWithIdentifier:v14 definition:v54 serializedParameters:v16 stringLocalizer:v18];
  v56 = v55;
  if (v55)
  {
    v78 = v20;
    v57 = v18;
    v58 = v14;
    objc_storeStrong(&v55->_schema, obj);
    objc_storeStrong(&v56->_intent, v74);
    v59 = [v82 copy];
    appIdentifier = v56->_appIdentifier;
    v56->_appIdentifier = v59;

    v61 = [v16 objectForKey:@"IntentAppDefinition"];
    v62 = objc_opt_class();
    v63 = WFEnforceClass_30212(v61, v62);

    if (v63)
    {
      v64 = [objc_alloc(MEMORY[0x1E696E890]) initWithSerializedRepresentation:v63];
    }

    else
    {
      v64 = v17;
    }

    v65 = v64;
    v66 = [(WFHandleCustomIntentAction *)v56 resolver];
    v67 = [v66 resolvedIntentMatchingDescriptor:v65];
    intentDescriptor = v56->_intentDescriptor;
    v56->_intentDescriptor = v67;

    v69 = v56;
    v14 = v58;
    v18 = v57;
    v20 = v78;
    v22 = v75;
  }

  v70 = *MEMORY[0x1E69E9840];
  return v56;
}

- (WFHandleCustomIntentAction)initWithIdentifier:(id)a3 intent:(id)a4 className:(id)a5 bundleIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [WFActionDefinition alloc];
  v15 = [(WFActionDefinition *)v14 initWithDictionary:MEMORY[0x1E695E0F8]];
  v16 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
  v17 = [(WFHandleCustomIntentAction *)self initWithIdentifier:v13 definition:v15 serializedParameters:0 schema:0 intent:v12 className:v11 bundleIdentifier:v10 stringLocalizer:v16];

  return v17;
}

- (WFHandleCustomIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 schema:(id)a6 intent:(id)a7 className:(id)a8 bundleIdentifier:(id)a9 stringLocalizer:(id)a10
{
  v17 = MEMORY[0x1E696E890];
  v30 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [[v17 alloc] initWithIntentClassName:v19 launchableAppBundleId:v18];

  v26 = [(WFHandleCustomIntentAction *)self resolver];
  v27 = [v26 resolvedIntentMatchingDescriptor:v25];

  v28 = [(WFHandleCustomIntentAction *)self initWithIdentifier:v24 definition:v23 serializedParameters:v22 schema:v21 intent:v20 resolvedIntentDescriptor:v27 stringLocalizer:v30];
  return v28;
}

- (WFHandleCustomIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 stringLocalizer:(id)a6
{
  v68 = *MEMORY[0x1E69E9840];
  v51 = a3;
  v9 = a4;
  v48 = a5;
  v49 = a6;
  v10 = getWFGeneralLogObject();
  spid = os_signpost_id_generate(v10);

  v11 = getWFGeneralLogObject();
  v12 = v11;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 138412290;
    *&buf[4] = v51;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v12, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CustomIntentActionInitialization", "identifier=%{signpost.description:attribute}@", buf, 0xCu);
  }

  v13 = [v9 objectForKey:@"IntentIdentifier"];
  v14 = objc_opt_class();
  v15 = WFEnforceClass_30212(v13, v14);

  if (![v15 length])
  {
    v16 = [v9 objectForKey:@"AppDefinition"];
    v17 = objc_opt_class();
    v18 = WFEnforceClass_30212(v16, v17);

    v19 = [v18 objectForKey:*MEMORY[0x1E69E0908]];
    v20 = objc_opt_class();
    v21 = WFEnforceClass_30212(v19, v20);

    v22 = [v9 objectForKey:@"IntentName"];
    v23 = objc_opt_class();
    v24 = WFEnforceClass_30212(v22, v23);

    if ([v21 length])
    {
      v25 = +[WFInterchangeAppRegistry sharedRegistry];
      v26 = [v25 appWithIdentifier:v21];
      v27 = [v26 bundleIdentifier];

      if ([v27 length] && objc_msgSend(v24, "length"))
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", *MEMORY[0x1E696EAF8], v27, v24];

        v15 = v28;
      }
    }
  }

  if (!v15)
  {
    v15 = v51;
  }

  v62 = 0;
  v63 = 0;
  v29 = INSchemaWithTypeName();
  v30 = 0;
  v31 = 0;
  if (v31 && v30)
  {
    v32 = [objc_alloc(MEMORY[0x1E696E890]) initWithIntentClassName:v30 launchableAppBundleId:v31];
    v33 = [(WFHandleCustomIntentAction *)self resolver];
    v34 = [v33 resolvedIntentMatchingDescriptor:v32];

    v35 = [v34 bundleIdentifier];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = [v34 extensionBundleIdentifier];
    }

    v39 = v37;

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v65 = __Block_byref_object_copy__30291;
    v66 = __Block_byref_object_dispose__30292;
    v67 = 0;
    v40 = [MEMORY[0x1E696E878] sharedConnection];
    v41 = [MEMORY[0x1E695DFD8] setWithObject:v39];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __97__WFHandleCustomIntentAction_initWithIdentifier_definition_serializedParameters_stringLocalizer___block_invoke;
    v53[3] = &unk_1E83781F0;
    v61 = buf;
    v54 = self;
    v55 = v51;
    v56 = v9;
    v57 = v48;
    v58 = v29;
    v42 = v34;
    v59 = v42;
    v60 = v49;
    [v40 wf_accessBundleContentForBundleIdentifiers:v41 withBlock:v53];

    v43 = getWFGeneralLogObject();
    v44 = v43;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      *v52 = 0;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v44, OS_SIGNPOST_INTERVAL_END, spid, "CustomIntentActionInitialization", "", v52, 2u);
    }

    v38 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v32 = getWFGeneralLogObject();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[WFHandleCustomIntentAction initWithIdentifier:definition:serializedParameters:stringLocalizer:]";
      *&buf[12] = 2114;
      *&buf[14] = v15;
      _os_log_impl(&dword_1CA256000, v32, OS_LOG_TYPE_ERROR, "%s Bundle identifier for type name %{public}@ was nil.", buf, 0x16u);
    }

    v38 = 0;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v38;
}

void __97__WFHandleCustomIntentAction_initWithIdentifier_definition_serializedParameters_stringLocalizer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) initWithIdentifier:*(a1 + 40) definition:*(a1 + 48) serializedParameters:*(a1 + 56) schema:*(a1 + 64) intent:0 resolvedIntentDescriptor:*(a1 + 72) stringLocalizer:*(a1 + 80)];
  v3 = *(*(a1 + 88) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end