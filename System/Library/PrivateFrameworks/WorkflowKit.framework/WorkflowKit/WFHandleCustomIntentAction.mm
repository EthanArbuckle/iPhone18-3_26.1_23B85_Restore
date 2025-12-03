@interface WFHandleCustomIntentAction
- (BOOL)enumerationAllowsMultipleValues:(id)values;
- (BOOL)hasLocationParameter;
- (BOOL)intentDescriptorIsSyncedFromOtherDevices;
- (BOOL)isDiscontinued;
- (BOOL)shouldInsertExpandingParameterForParameter:(id)parameter;
- (NSString)appIdentifier;
- (WFHandleCustomIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters schema:(id)schema intent:(id)intent className:(id)name bundleIdentifier:(id)bundleIdentifier stringLocalizer:(id)self0;
- (WFHandleCustomIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters schema:(id)schema intent:(id)intent resolvedIntentDescriptor:(id)descriptor stringLocalizer:(id)localizer;
- (WFHandleCustomIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters stringLocalizer:(id)localizer;
- (WFHandleCustomIntentAction)initWithIdentifier:(id)identifier intent:(id)intent className:(id)name bundleIdentifier:(id)bundleIdentifier;
- (id)actionForAppIdentifier:(id)identifier;
- (id)codableDescription;
- (id)copyWithSerializedParameters:(id)parameters;
- (id)createBundleAccessGrant;
- (id)createStateForParameter:(id)parameter fromSerializedRepresentation:(id)representation;
- (id)disabledOnPlatforms;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (id)generatedIntentWithIdentifier:(id)identifier input:(id)input processedParameters:(id)parameters error:(id *)error;
- (id)generatedResourceNodes;
- (id)inputDictionary;
- (id)intentDescription;
- (id)localizedConfigurationPromptDialogForPamameter:(id)pamameter;
- (id)localizedDefaultOutputNameWithContext:(id)context;
- (id)localizedDescriptionSummaryWithContext:(id)context;
- (id)localizedKeyParameterDisplayName;
- (id)localizedNameWithContext:(id)context;
- (id)outputDictionary;
- (id)parameterDefinitions;
- (id)parameterKeysIgnoredForParameterSummary;
- (id)parameterSummary;
- (id)parametersByIntentSlotName;
- (id)prettyErrorForIntentsExtensionError:(id)error;
- (id)resolver;
- (id)responseCodableDescription;
- (id)serializedParametersForDonatedIntent:(id)intent allowDroppingUnconfigurableValues:(BOOL)values;
- (id)slots;
- (id)titleForINShortcut:(id)shortcut;
- (int64_t)intentCategory;
- (void)configureResourcesForParameter:(id)parameter;
- (void)dynamicResolveParameterDidEndResolutionSession:(id)session;
- (void)generateSkeletonIntentForDynamicResolver:(id)resolver withCompletionBlock:(id)block;
- (void)initializeParameters;
- (void)loadDefaultSerializedRepresentationForEnumeration:(id)enumeration completionHandler:(id)handler;
- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler;
- (void)localizedDisambiguationPromptForItems:(id)items intent:(id)intent dynamicResolveParameter:(id)parameter completion:(id)completion;
- (void)parameterDefaultSerializedRepresentationDidChange:(id)change;
- (void)resolveOptionsForUserInput:(id)input forDynamicResolveParameter:(id)parameter completion:(id)completion;
- (void)setUpResolverIfNeededForParameter:(id)parameter withCompletionBlock:(id)block;
- (void)setupParameter:(id)parameter;
- (void)startExecutingIntent:(id)intent;
@end

@implementation WFHandleCustomIntentAction

- (void)dynamicResolveParameterDidEndResolutionSession:(id)session
{
  dynamicResolver = [(WFHandleCustomIntentAction *)self dynamicResolver];
  [dynamicResolver endSession];
}

- (void)localizedDisambiguationPromptForItems:(id)items intent:(id)intent dynamicResolveParameter:(id)parameter completion:(id)completion
{
  completionCopy = completion;
  intentCopy = intent;
  itemsCopy = items;
  codableAttribute = [parameter codableAttribute];
  [(WFHandleIntentAction *)self localizedDisambiguationPromptForAttribute:codableAttribute intent:intentCopy disambiguationItems:itemsCopy completion:completionCopy];
}

- (void)resolveOptionsForUserInput:(id)input forDynamicResolveParameter:(id)parameter completion:(id)completion
{
  inputCopy = input;
  parameterCopy = parameter;
  completionCopy = completion;
  lastDynamicResolutionRequest = [(WFHandleCustomIntentAction *)self lastDynamicResolutionRequest];
  [lastDynamicResolutionRequest cancel];

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__WFHandleCustomIntentAction_resolveOptionsForUserInput_forDynamicResolveParameter_completion___block_invoke;
  v14[3] = &unk_1E8378328;
  objc_copyWeak(&v17, &location);
  v12 = completionCopy;
  v16 = v12;
  v13 = inputCopy;
  v15 = v13;
  [(WFHandleCustomIntentAction *)self setUpResolverIfNeededForParameter:parameterCopy withCompletionBlock:v14];

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

- (void)generateSkeletonIntentForDynamicResolver:(id)resolver withCompletionBlock:(id)block
{
  blockCopy = block;
  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__WFHandleCustomIntentAction_generateSkeletonIntentForDynamicResolver_withCompletionBlock___block_invoke;
  v8[3] = &unk_1E8378300;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(WFAction *)self processParametersWithoutAskingForValuesWithInput:0 workQueue:v6 completionHandler:v8];
}

- (void)setUpResolverIfNeededForParameter:(id)parameter withCompletionBlock:(id)block
{
  parameterCopy = parameter;
  blockCopy = block;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __84__WFHandleCustomIntentAction_setUpResolverIfNeededForParameter_withCompletionBlock___block_invoke;
  v27 = &unk_1E837E1F8;
  selfCopy = self;
  v8 = blockCopy;
  v29 = v8;
  v9 = _Block_copy(&v24);
  v10 = [(WFHandleCustomIntentAction *)self dynamicResolver:v24];
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = v10;
  dynamicResolver = [(WFHandleCustomIntentAction *)self dynamicResolver];
  intentKeyPathToResolve = [dynamicResolver intentKeyPathToResolve];
  v14 = [parameterCopy key];
  v15 = [intentKeyPathToResolve isEqualToString:v14];

  if ((v15 & 1) == 0)
  {
LABEL_5:
    dynamicResolver2 = [(WFHandleCustomIntentAction *)self dynamicResolver];
    [dynamicResolver2 endSession];

    v20 = [WFIntentDynamicResolver alloc];
    v21 = [parameterCopy key];
    v22 = [(WFIntentDynamicResolver *)v20 initWithIntentKeyPathToResolve:v21 dataSource:self];
    dynamicResolver = self->_dynamicResolver;
    self->_dynamicResolver = v22;

    goto LABEL_6;
  }

  dynamicResolver3 = [(WFHandleCustomIntentAction *)self dynamicResolver];
  state = [dynamicResolver3 state];

  if (state != 1)
  {
LABEL_6:
    v9[2](v9);
    goto LABEL_7;
  }

  dynamicResolver4 = [(WFHandleCustomIntentAction *)self dynamicResolver];
  (*(v8 + 2))(v8, dynamicResolver4, 0);

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

- (id)prettyErrorForIntentsExtensionError:(id)error
{
  v31[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x1E696EB00]];

  v7 = MEMORY[0x1E696AA08];
  if (v6)
  {
    code = [errorCopy code];
    if (code <= 1002)
    {
      if ((code - 1000) < 2)
      {
        v9 = @"The options provided were not valid.";
        goto LABEL_18;
      }

      if (code == 1002)
      {
        v9 = @"No options were provided for this parameter";
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (code == 1003)
    {
      v9 = @"No default value was provided for this parameter";
LABEL_18:
      localizedDescription = WFLocalizedString(v9);
      if (localizedDescription)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (code == 1004)
    {
      userInfo = [errorCopy userInfo];
      domain3 = [userInfo objectForKey:*v7];
      localizedDescription = [domain3 localizedDescription];
      goto LABEL_27;
    }

LABEL_19:
    localizedDescription = WFLocalizedString(@"An unknown error occurred.");
    goto LABEL_20;
  }

  domain2 = [errorCopy domain];
  if (![domain2 isEqualToString:@"WFIntentExecutorErrorDomain"])
  {

    goto LABEL_19;
  }

  code2 = [errorCopy code];

  if (code2 != 100)
  {
    goto LABEL_19;
  }

  userInfo2 = [errorCopy userInfo];
  userInfo = [userInfo2 objectForKey:*v7];

  domain3 = [userInfo domain];
  if ([domain3 isEqualToString:*MEMORY[0x1E696E568]])
  {
    code3 = [userInfo code];

    if (code3 != 3006)
    {
      localizedDescription = 0;
      goto LABEL_28;
    }

    appDescriptor = [(WFHandleIntentAction *)self appDescriptor];
    localizedName = [appDescriptor localizedName];
    v18 = [localizedName length];

    v19 = MEMORY[0x1E696AEC0];
    if (v18)
    {
      domain3 = WFLocalizedString(@"The action “%1$@” could not run. Open %2$@ to continue.");
      localizedName2 = [(WFAction *)self localizedName];
      appDescriptor2 = [(WFHandleIntentAction *)self appDescriptor];
      localizedName3 = [appDescriptor2 localizedName];
      localizedDescription = [v19 localizedStringWithFormat:domain3, localizedName2, localizedName3];
    }

    else
    {
      domain3 = WFLocalizedString(@"The action “%@” could not run. Open the app to continue.");
      localizedName2 = [(WFAction *)self localizedName];
      localizedDescription = [v19 localizedStringWithFormat:domain3, localizedName2];
    }
  }

  else
  {
    localizedDescription = 0;
  }

LABEL_27:

LABEL_28:
  if (!localizedDescription)
  {
    goto LABEL_19;
  }

LABEL_20:
  v24 = MEMORY[0x1E696ABC0];
  v25 = *v7;
  v30[0] = *MEMORY[0x1E696A578];
  v30[1] = v25;
  v31[0] = localizedDescription;
  v31[1] = errorCopy;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v27 = [v24 errorWithDomain:@"WFIntentExecutorErrorDomain" code:100 userInfo:v26];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (BOOL)enumerationAllowsMultipleValues:(id)values
{
  valuesCopy = values;
  v4 = objc_opt_class();
  v5 = WFEnforceClass_30212(valuesCopy, v4);

  codableAttribute = [v5 codableAttribute];

  if (codableAttribute)
  {
    v7 = [codableAttribute modifier] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  stateCopy = state;
  enumerationCopy = enumeration;
  v8 = objc_opt_class();
  v9 = WFEnforceClass_30212(enumerationCopy, v8);

  codableAttribute = [v9 codableAttribute];

  metadata = [codableAttribute metadata];
  value = [stateCopy value];
  [metadata wf_updateWithParameterValue:value];

  value2 = [stateCopy value];

  stringLocalizer = [(WFHandleIntentAction *)self stringLocalizer];
  metadata2 = [codableAttribute metadata];
  v16 = [value2 _intents_readableTitleWithLocalizer:stringLocalizer metadata:metadata2];

  return v16;
}

- (id)localizedConfigurationPromptDialogForPamameter:(id)pamameter
{
  pamameterCopy = pamameter;
  v5 = [(WFHandleIntentAction *)self generatedIntentWithInput:0 processedParameters:0 error:0];
  codableAttribute = [pamameterCopy codableAttribute];

  v7 = [codableAttribute promptDialogWithType:6];
  stringLocalizer = [(WFHandleIntentAction *)self stringLocalizer];
  v9 = [v7 localizedDialogWithIntent:v5 tokens:0 localizer:stringLocalizer];

  return v9;
}

- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler
{
  enumerationCopy = enumeration;
  termCopy = term;
  handlerCopy = handler;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__WFHandleCustomIntentAction_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke;
  v15[3] = &unk_1E83782B0;
  v15[4] = self;
  v16 = enumerationCopy;
  v17 = termCopy;
  v18 = handlerCopy;
  v12 = termCopy;
  v13 = enumerationCopy;
  v14 = handlerCopy;
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

- (void)loadDefaultSerializedRepresentationForEnumeration:(id)enumeration completionHandler:(id)handler
{
  enumerationCopy = enumeration;
  handlerCopy = handler;
  if ([(WFAction *)self shouldSkipLoadingAsynchronousDefaultValue])
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    v24 = 0;
    v8 = [(WFHandleIntentAction *)self generatedIntentWithInput:0 processedParameters:0 error:&v24];
    v9 = v24;
    v10 = v9;
    if (!v8 || v9)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v9);
    }

    else
    {
      definition = [enumerationCopy definition];
      v12 = [definition objectForKey:@"IntentSlotName"];
      v13 = objc_opt_class();
      v14 = WFEnforceClass_30212(v12, v13);

      _codableDescription = [v8 _codableDescription];
      v16 = [_codableDescription attributeByName:v14];

      v17 = [WFIntentExecutor alloc];
      remoteWidgetConnection = [(WFHandleCustomIntentAction *)self remoteWidgetConnection];
      v19 = [(WFIntentExecutor *)v17 initWithIntent:v8 donateInteraction:0 groupIdentifier:0 remoteWidgetConnection:remoteWidgetConnection];

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __98__WFHandleCustomIntentAction_loadDefaultSerializedRepresentationForEnumeration_completionHandler___block_invoke;
      v21[3] = &unk_1E837C818;
      v22 = v16;
      v23 = handlerCopy;
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
  disabledOnPlatforms = [(WFHandleIntentAction *)&v4 disabledOnPlatforms];

  return disabledOnPlatforms;
}

- (id)localizedDefaultOutputNameWithContext:(id)context
{
  contextCopy = context;
  responseCodableDescription = [(WFHandleCustomIntentAction *)self responseCodableDescription];
  outputAttribute = [responseCodableDescription outputAttribute];
  if (outputAttribute)
  {
    stringLocalizer = [contextCopy stringLocalizer];

    v8 = [outputAttribute wf_outputDisplayNameWithLocalizer:stringLocalizer];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFHandleCustomIntentAction;
    v8 = [(WFAction *)&v10 localizedDefaultOutputNameWithContext:contextCopy];
  }

  return v8;
}

- (id)outputDictionary
{
  v26[2] = *MEMORY[0x1E69E9840];
  outputDictionary = self->_outputDictionary;
  null = [MEMORY[0x1E695DFB0] null];

  if (outputDictionary == null)
  {
    outputDictionary = 0;
  }

  else if (outputDictionary)
  {
    outputDictionary = outputDictionary;
    outputDictionary = outputDictionary;
  }

  else
  {
    v23.receiver = self;
    v23.super_class = WFHandleCustomIntentAction;
    outputDictionary = [(WFAction *)&v23 outputDictionary];
    responseCodableDescription = [(WFHandleCustomIntentAction *)self responseCodableDescription];
    outputAttribute = [responseCodableDescription outputAttribute];
    if (outputAttribute && ([outputDictionary objectForKeyedSubscript:@"Types"], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8) && (v11 = objc_msgSend(outputAttribute, "wf_contentItemClass")) != 0)
    {
      v12 = v11;
      modifier = [outputAttribute modifier];
      v14 = [outputDictionary mutableCopy];
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
      v21 = [MEMORY[0x1E696AD98] numberWithBool:modifier == 0];
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
        null2 = v22;
      }

      else
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      outputDictionary = self->_outputDictionary;
      self->_outputDictionary = null2;
      outputDictionary = v22;
    }

    else
    {

      outputDictionary = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return outputDictionary;
}

- (id)inputDictionary
{
  v31[4] = *MEMORY[0x1E69E9840];
  inputDictionary = self->_inputDictionary;
  null = [MEMORY[0x1E695DFB0] null];

  if (inputDictionary == null)
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
    inputDictionary = [(WFAction *)&v28 inputDictionary];
    if ([inputDictionary count])
    {
      inputDictionary = 0;
      v5 = inputDictionary;
    }

    else
    {
      codableDescription = [(WFHandleCustomIntentAction *)self codableDescription];
      inputAttribute = [codableDescription inputAttribute];
      v9 = inputAttribute;
      if (inputAttribute && (v10 = [inputAttribute wf_contentItemClass]) != 0)
      {
        v26 = v10;
        modifier = [v9 modifier];
        definition = [(WFAction *)self definition];
        v12 = [definition objectForKey:@"ParameterOverrides"];

        propertyName = [v9 propertyName];
        v27 = v12;
        v14 = [v12 objectForKeyedSubscript:propertyName];
        v15 = [v14 objectForKey:@"Key"];
        v16 = v15;
        if (v15)
        {
          propertyName2 = v15;
        }

        else
        {
          propertyName2 = [v9 propertyName];
        }

        v25 = propertyName2;

        v30[0] = @"Multiple";
        v24 = [MEMORY[0x1E696AD98] numberWithBool:modifier == 0];
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
          null2 = v5;
        }

        else
        {
          null2 = [MEMORY[0x1E695DFB0] null];
        }

        inputDictionary = self->_inputDictionary;
        self->_inputDictionary = null2;
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
  null = [MEMORY[0x1E695DFB0] null];

  if (parameterSummary != null)
  {
    if (parameterSummary)
    {
      parameterSummary = parameterSummary;
      v5 = parameterSummary;
      goto LABEL_20;
    }

    v22.receiver = self;
    v22.super_class = WFHandleCustomIntentAction;
    parameterSummary = [(WFAction *)&v22 parameterSummary];
    if (parameterSummary)
    {
      v5 = parameterSummary;
      parameterSummary = 0;
      goto LABEL_20;
    }

    codableDescription = [(WFHandleCustomIntentAction *)self codableDescription];
    definition = [(WFAction *)self definition];
    v5 = [definition objectForKey:@"ParameterOverrides"];

    schema = [(WFHandleCustomIntentAction *)self schema];

    if (schema)
    {
      schema2 = [(WFHandleCustomIntentAction *)self schema];
      className = [codableDescription className];
      intent = [schema2 _configurableParameterCombinationsForClassName:className];
    }

    else
    {
      intent = [(WFHandleCustomIntentAction *)self intent];

      if (!intent)
      {
LABEL_11:
        if ([intent count])
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
          [intent enumerateKeysAndObjectsUsingBlock:v19];
          v16 = [v15 count];
          if (v16)
          {
            v5 = [[WFActionParameterSummary alloc] initWithValues:v15];
          }

          if (v16)
          {
            if (v5)
            {
              null2 = v5;
            }

            else
            {
              null2 = [MEMORY[0x1E695DFB0] null];
            }

            parameterSummary = self->_parameterSummary;
            self->_parameterSummary = null2;
            goto LABEL_20;
          }
        }

        else
        {
        }

        parameterSummary = 0;
        goto LABEL_19;
      }

      schema2 = [(WFHandleCustomIntentAction *)self intent];
      intent = [schema2 _parameterCombinations];
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
  null = [MEMORY[0x1E695DFB0] null];

  if (parameterDefinitions == null)
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
    parameterDefinitions = [(WFAction *)&v31 parameterDefinitions];
    if ([parameterDefinitions count])
    {
      parameterDefinitions = 0;
      v5 = parameterDefinitions;
    }

    else
    {
      definition = [(WFAction *)self definition];
      v8 = [definition objectForKey:@"ParameterOverrides"];

      createBundleAccessGrant = [(WFHandleCustomIntentAction *)self createBundleAccessGrant];
      [createBundleAccessGrant acquire];
      codableDescription = [(WFHandleCustomIntentAction *)self codableDescription];
      v5 = objc_opt_new();
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v25 = codableDescription;
      v26 = v8;
      v11 = [codableDescription wf_actionParameterDefinitionsWithOverrides:v8];
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

      [createBundleAccessGrant relinquish];

      if (v5)
      {
        null2 = v5;
      }

      else
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      parameterDefinitions = self->_parameterDefinitions;
      self->_parameterDefinitions = null2;
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)localizedKeyParameterDisplayName
{
  localizedKeyParameterDisplayName = self->_localizedKeyParameterDisplayName;
  null = [MEMORY[0x1E695DFB0] null];

  if (localizedKeyParameterDisplayName == null)
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
    createBundleAccessGrant = [(WFHandleCustomIntentAction *)self createBundleAccessGrant];
    [createBundleAccessGrant acquire];
    codableDescription = [(WFHandleCustomIntentAction *)self codableDescription];
    keyAttribute = [codableDescription keyAttribute];
    stringLocalizer = [(WFHandleIntentAction *)self stringLocalizer];
    v5 = [keyAttribute localizedDisplayNameWithLocalizer:stringLocalizer];

    [createBundleAccessGrant relinquish];
    if (v5)
    {
      null2 = v5;
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    localizedKeyParameterDisplayName = self->_localizedKeyParameterDisplayName;
    self->_localizedKeyParameterDisplayName = null2;
  }

  return v5;
}

- (id)localizedDescriptionSummaryWithContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = WFHandleCustomIntentAction;
  v5 = [(WFAction *)&v13 localizedDescriptionSummaryWithContext:contextCopy];
  if (!v5)
  {
    createBundleAccessGrant = [(WFHandleCustomIntentAction *)self createBundleAccessGrant];
    [createBundleAccessGrant acquire];
    codableDescription = [(WFHandleCustomIntentAction *)self codableDescription];
    stringLocalizer = [contextCopy stringLocalizer];
    v9 = [codableDescription localizedDescriptiveTextWithLocalizer:stringLocalizer];
    v10 = v9;
    v11 = &stru_1F4A1C408;
    if (v9)
    {
      v11 = v9;
    }

    v5 = v11;

    [createBundleAccessGrant relinquish];
  }

  return v5;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  definition = [(WFAction *)self definition];
  name = [definition name];

  if (name)
  {
    v7 = [contextCopy localize:name];
  }

  else
  {
    createBundleAccessGrant = [(WFHandleCustomIntentAction *)self createBundleAccessGrant];
    [createBundleAccessGrant acquire];
    codableDescription = [(WFHandleCustomIntentAction *)self codableDescription];
    stringLocalizer = [contextCopy stringLocalizer];
    v11 = [codableDescription localizedTitleWithLocalizer:stringLocalizer];

    [createBundleAccessGrant relinquish];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v14.receiver = self;
      v14.super_class = WFHandleCustomIntentAction;
      v12 = [(WFHandleIntentAction *)&v14 localizedNameWithContext:contextCopy];
    }

    v7 = v12;
  }

  return v7;
}

- (BOOL)isDiscontinued
{
  codableDescription = [(WFHandleCustomIntentAction *)self codableDescription];
  isDeprecated = [codableDescription isDeprecated];

  return isDeprecated;
}

- (id)responseCodableDescription
{
  responseCodableDescription = self->_responseCodableDescription;
  null = [MEMORY[0x1E695DFB0] null];

  if (responseCodableDescription == null)
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
    schema = [(WFHandleCustomIntentAction *)self schema];
    intentDescriptor = [(WFHandleCustomIntentAction *)self intentDescriptor];
    intentClassName = [intentDescriptor intentClassName];
    v5 = [schema intentResponseCodableDescriptionWithIntentClassName:intentClassName];

    if (v5)
    {
      null2 = v5;
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    responseCodableDescription = self->_responseCodableDescription;
    self->_responseCodableDescription = null2;
  }

  return v5;
}

- (id)codableDescription
{
  schema = [(WFHandleCustomIntentAction *)self schema];

  if (schema)
  {
    codableDescription = self->_codableDescription;
    null = [MEMORY[0x1E695DFB0] null];

    if (codableDescription == null)
    {
      intent = 0;
      goto LABEL_13;
    }

    if (!codableDescription)
    {
      schema2 = [(WFHandleCustomIntentAction *)self schema];
      intentDescriptor = [(WFHandleCustomIntentAction *)self intentDescriptor];
      intentClassName = [intentDescriptor intentClassName];
      intent = [schema2 intentCodableDescriptionWithIntentClassName:intentClassName];

      if (intent)
      {
        null2 = intent;
      }

      else
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      codableDescription = self->_codableDescription;
      self->_codableDescription = null2;
      goto LABEL_13;
    }

    _codableDescription = codableDescription;
    codableDescription = _codableDescription;
  }

  else
  {
    intent = [(WFHandleCustomIntentAction *)self intent];

    if (!intent)
    {
      goto LABEL_14;
    }

    codableDescription = [(WFHandleCustomIntentAction *)self intent];
    _codableDescription = [(INIntentCodableDescription *)codableDescription _codableDescription];
  }

  intent = _codableDescription;
LABEL_13:

LABEL_14:

  return intent;
}

- (id)createBundleAccessGrant
{
  intentDescriptor = [(WFHandleCustomIntentAction *)self intentDescriptor];
  bundleIdentifier = [intentDescriptor bundleIdentifier];
  if (bundleIdentifier)
  {
    extensionBundleIdentifier = bundleIdentifier;

LABEL_4:
    mEMORY[0x1E696E768] = [MEMORY[0x1E696E768] sharedManager];
    v8 = [mEMORY[0x1E696E768] grantForBundleIdentifier:extensionBundleIdentifier error:0];

    goto LABEL_5;
  }

  intentDescriptor2 = [(WFHandleCustomIntentAction *)self intentDescriptor];
  extensionBundleIdentifier = [intentDescriptor2 extensionBundleIdentifier];

  if (extensionBundleIdentifier)
  {
    goto LABEL_4;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (id)titleForINShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  appDescriptor = [(WFHandleIntentAction *)self appDescriptor];
  bundleIdentifier = [appDescriptor bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:@"com.apple.Bridge"];

  if (v7)
  {
    localizedName = [(WFAction *)self localizedName];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFHandleCustomIntentAction;
    localizedName = [(WFHandleIntentAction *)&v11 titleForINShortcut:shortcutCopy];
  }

  v9 = localizedName;

  return v9;
}

- (void)startExecutingIntent:(id)intent
{
  v23 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  _codableDescription = [intentCopy _codableDescription];
  attributes = [_codableDescription attributes];
  allValues = [attributes allValues];

  v8 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        metadata = [v12 metadata];
        propertyName = [v12 propertyName];
        v15 = [(WFAction *)self parameterStateForKey:propertyName];
        [metadata wf_updateWithParameterState:v15];
      }

      v9 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v17.receiver = self;
  v17.super_class = WFHandleCustomIntentAction;
  [(WFHandleIntentAction *)&v17 startExecutingIntent:intentCopy];

  v16 = *MEMORY[0x1E69E9840];
}

- (id)generatedIntentWithIdentifier:(id)identifier input:(id)input processedParameters:(id)parameters error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  schema = [(WFHandleCustomIntentAction *)self schema];

  if (schema)
  {
    v10 = objc_alloc(MEMORY[0x1E696E880]);
    schema2 = [(WFHandleCustomIntentAction *)self schema];
    intentDescriptor = [(WFHandleCustomIntentAction *)self intentDescriptor];
    intentClassName = [intentDescriptor intentClassName];
    intent = [v10 _initWithIdentifier:identifierCopy schema:schema2 name:intentClassName data:0];
  }

  else
  {
    intent = [(WFHandleCustomIntentAction *)self intent];
  }

  intentDescriptor2 = [(WFHandleCustomIntentAction *)self intentDescriptor];
  bundleIdentifier = [intentDescriptor2 bundleIdentifier];
  [intent _setLaunchId:bundleIdentifier];

  intentDescriptor3 = [(WFHandleCustomIntentAction *)self intentDescriptor];
  extensionBundleIdentifier = [intentDescriptor3 extensionBundleIdentifier];
  [intent _setExtensionBundleId:extensionBundleIdentifier];

  if (error && !intent)
  {
    v19 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696AA08];
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:11 userInfo:0];
    v25[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    *error = [v19 errorWithDomain:@"WFActionErrorDomain" code:1 userInfo:v21];
  }

  v22 = *MEMORY[0x1E69E9840];

  return intent;
}

- (int64_t)intentCategory
{
  codableDescription = [(WFHandleCustomIntentAction *)self codableDescription];
  intentCategory = [codableDescription intentCategory];

  return intentCategory;
}

- (id)slots
{
  codableDescription = [(WFHandleCustomIntentAction *)self codableDescription];
  displayOrderedAttributes = [codableDescription displayOrderedAttributes];
  array = [displayOrderedAttributes array];

  return array;
}

- (id)intentDescription
{
  schema = [(WFHandleCustomIntentAction *)self schema];

  if (schema)
  {
    v4 = objc_alloc(MEMORY[0x1E696E880]);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    schema2 = [(WFHandleCustomIntentAction *)self schema];
    intentDescriptor = [(WFHandleCustomIntentAction *)self intentDescriptor];
    intentClassName = [intentDescriptor intentClassName];
    v10 = [v4 _initWithIdentifier:uUIDString schema:schema2 name:intentClassName data:0];
    _intentInstanceDescription = [v10 _intentInstanceDescription];

LABEL_5:
    goto LABEL_6;
  }

  intent = [(WFHandleCustomIntentAction *)self intent];

  if (intent)
  {
    uUID = [(WFHandleCustomIntentAction *)self intent];
    _intentInstanceDescription = [uUID _intentInstanceDescription];
    goto LABEL_5;
  }

  _intentInstanceDescription = 0;
LABEL_6:

  return _intentInstanceDescription;
}

- (void)configureResourcesForParameter:(id)parameter
{
  v27 = *MEMORY[0x1E69E9840];
  parameterCopy = parameter;
  v5 = [parameterCopy key];
  v6 = [v5 isEqualToString:@"ShowWhenRun"];

  if (v6)
  {
    responseCodableDescription = [(WFHandleCustomIntentAction *)self responseCodableDescription];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    responseCodes = [responseCodableDescription responseCodes];
    v9 = [responseCodes countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = *v23;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(responseCodes);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if ([v12 isSuccess])
          {
            conciseFormatString = [v12 conciseFormatString];
            if ([conciseFormatString length])
            {

LABEL_14:
              v9 = 1;
              goto LABEL_15;
            }

            formatString = [v12 formatString];
            v15 = [formatString length];

            if (v15)
            {
              goto LABEL_14;
            }
          }
        }

        v9 = [responseCodes countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v16 = [WFIntentResultUIAvailableResource alloc];
    intentDescriptor = [(WFHandleCustomIntentAction *)self intentDescriptor];
    v18 = [(WFIntentResultUIAvailableResource *)v16 initWithDefinition:MEMORY[0x1E695E0F8] resolvedIntentDescriptor:intentDescriptor hasSuccessResponseWithDialog:v9];

    resourceManager = [parameterCopy resourceManager];
    [resourceManager addResource:v18];
  }

  v21.receiver = self;
  v21.super_class = WFHandleCustomIntentAction;
  [(WFAction *)&v21 configureResourcesForParameter:parameterCopy];

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasLocationParameter
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  codableDescription = [(WFHandleCustomIntentAction *)self codableDescription];
  attributes = [codableDescription attributes];
  allValues = [attributes allValues];

  v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        metadata = [*(*(&v12 + 1) + 8 * i) metadata];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  generatedResourceNodes = [(WFAction *)&v32 generatedResourceNodes];
  v4 = [generatedResourceNodes mutableCopy];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (!v6)
  {
    v8 = 0;
    requiredResourcesForIntentAvailableResource = v5;
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
      resource = [v11 resource];
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
    requiredResourcesForIntentAvailableResource = [(WFHandleCustomIntentAction *)self requiredResourcesForIntentAvailableResource];
    v16 = [requiredResourcesForIntentAvailableResource if_map:&__block_literal_global_272];
    v17 = [WFResourceNode alloc];
    resource2 = [v8 resource];
    v19 = [(WFResourceNode *)v17 initWithResource:resource2 subnodes:v16];

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
  schema = [(WFHandleCustomIntentAction *)self schema];
  isSyncedFromOtherDevice = [schema isSyncedFromOtherDevice];

  return isSyncedFromOtherDevice;
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

- (void)parameterDefaultSerializedRepresentationDidChange:(id)change
{
  changeCopy = change;
  v5 = [changeCopy key];
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

  defaultSerializedRepresentation = [changeCopy defaultSerializedRepresentation];
  if (!defaultSerializedRepresentation || ([(WFHandleCustomIntentAction *)self createStateForParameter:changeCopy fromSerializedRepresentation:defaultSerializedRepresentation], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_7:
    v11.receiver = self;
    v11.super_class = WFHandleCustomIntentAction;
    [(WFAction *)&v11 parameterDefaultSerializedRepresentationDidChange:changeCopy];
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [changeCopy key];
  [(WFAction *)self setParameterState:v9 forKey:v10];

LABEL_8:
}

- (BOOL)shouldInsertExpandingParameterForParameter:(id)parameter
{
  parameterCopy = parameter;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    definition = [parameterCopy definition];
    v6 = [definition objectForKey:@"IntentSlotName"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_30212(v6, v7);

    codableDescription = [(WFHandleCustomIntentAction *)self codableDescription];
    v10 = [codableDescription attributeByName:v8];

    if ([parameterCopy allowsMultipleValues])
    {
      if ([v10 supportsSearch])
      {
        isRangedSizeArray = 1;
      }

      else
      {
        isRangedSizeArray = [parameterCopy isRangedSizeArray];
      }
    }

    else
    {
      isRangedSizeArray = 0;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFHandleCustomIntentAction;
    isRangedSizeArray = [(WFAction *)&v13 shouldInsertExpandingParameterForParameter:parameterCopy];
  }

  return isRangedSizeArray;
}

- (id)actionForAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  intentDescriptor = [(WFHandleCustomIntentAction *)self intentDescriptor];
  bundleIdentifier = [intentDescriptor bundleIdentifier];

  if (bundleIdentifier && (VCIsShortcutsAppBundleIdentifier() & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFHandleCustomIntentAction;
    v7 = [(WFAction *)&v9 actionForAppIdentifier:identifierCopy];
  }

  return v7;
}

- (void)setupParameter:(id)parameter
{
  parameterCopy = parameter;
  v19 = parameterCopy;
  if (parameterCopy)
  {
    if ([parameterCopy conformsToProtocol:&unk_1F4AD41D0])
    {
      definition = [v19 definition];
      v6 = [definition objectForKey:@"IntentSlotName"];
      v7 = objc_opt_class();
      v8 = WFEnforceClass_30212(v6, v7);

      codableDescription = [(WFHandleCustomIntentAction *)self codableDescription];
      v10 = [codableDescription attributeByName:v8];

      [v19 setCodableAttribute:v10];
      stringLocalizer = [(WFHandleIntentAction *)self stringLocalizer];
      [v19 setStringLocalizer:stringLocalizer];

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
  parameters = [(WFAction *)self parameters];
  v4 = [parameters countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(parameters);
        }

        [(WFHandleCustomIntentAction *)self setupParameter:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [parameters countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)createStateForParameter:(id)parameter fromSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  parameterCopy = parameter;
  [(WFHandleCustomIntentAction *)self setupParameter:parameterCopy];
  v10.receiver = self;
  v10.super_class = WFHandleCustomIntentAction;
  v8 = [(WFAction *)&v10 createStateForParameter:parameterCopy fromSerializedRepresentation:representationCopy];

  return v8;
}

- (id)serializedParametersForDonatedIntent:(id)intent allowDroppingUnconfigurableValues:(BOOL)values
{
  intentCopy = intent;
  parametersByIntentSlotName = [(WFHandleCustomIntentAction *)self parametersByIntentSlotName];
  stringLocalizer = [(WFHandleIntentAction *)self stringLocalizer];
  v9 = WFSerializedParametersForDonatedIntent(intentCopy, 0, values, parametersByIntentSlotName, stringLocalizer);

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
  parameters = [(WFAction *)self parameters];
  v5 = [parameters countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(parameters);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        intentSlotName = [v9 intentSlotName];

        if (intentSlotName)
        {
          intentSlotName2 = [v9 intentSlotName];
          [v3 setObject:v9 forKey:intentSlotName2];
        }
      }

      v6 = [parameters countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)copyWithSerializedParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = objc_alloc(objc_opt_class());
  identifier = [(WFAction *)self identifier];
  definition = [(WFAction *)self definition];
  schema = [(WFHandleCustomIntentAction *)self schema];
  intent = [(WFHandleCustomIntentAction *)self intent];
  intentDescriptor = [(WFHandleCustomIntentAction *)self intentDescriptor];
  stringLocalizer = [(WFHandleIntentAction *)self stringLocalizer];
  v12 = [v5 initWithIdentifier:identifier definition:definition serializedParameters:parametersCopy schema:schema intent:intent resolvedIntentDescriptor:intentDescriptor stringLocalizer:stringLocalizer];

  remoteWidgetConnection = [(WFHandleCustomIntentAction *)self remoteWidgetConnection];
  [v12 setRemoteWidgetConnection:remoteWidgetConnection];

  return v12;
}

- (WFHandleCustomIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters schema:(id)schema intent:(id)intent resolvedIntentDescriptor:(id)descriptor stringLocalizer:(id)localizer
{
  v87[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  definitionCopy = definition;
  parametersCopy = parameters;
  obj = schema;
  schemaCopy = schema;
  intentCopy = intent;
  intentCopy2 = intent;
  descriptorCopy = descriptor;
  localizerCopy = localizer;
  if (!definitionCopy)
  {
    v19 = [WFActionDefinition alloc];
    definitionCopy = [(WFActionDefinition *)v19 initWithDictionary:MEMORY[0x1E695E0F8]];
  }

  v72 = *MEMORY[0x1E696EAF8];
  v20 = [*MEMORY[0x1E696EAF8] stringByAppendingString:identifierCopy];
  v79 = [WFIntentActionProvider disabledPlatformsForIntentWithTypeName:v20];
  v21 = WFInjectDisabledPlatformsInActionDefinition(v79, definitionCopy);

  v22 = objc_opt_new();
  displayableBundleIdentifier = [descriptorCopy displayableBundleIdentifier];
  v24 = displayableBundleIdentifier;
  if (displayableBundleIdentifier)
  {
    v82 = displayableBundleIdentifier;
  }

  else
  {
    bundleIdentifier = [descriptorCopy bundleIdentifier];
    v26 = bundleIdentifier;
    if (bundleIdentifier)
    {
      extensionBundleIdentifier = bundleIdentifier;
    }

    else
    {
      extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
    }

    v82 = extensionBundleIdentifier;
  }

  displayableApplicationRecord = [descriptorCopy displayableApplicationRecord];
  v75 = v22;
  v76 = displayableApplicationRecord;
  v29 = 1;
  if (displayableApplicationRecord && ([displayableApplicationRecord wf_isAvailableInContext:1] & 1) == 0)
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

    v32 = localizerCopy;
    v33 = v31;

    v34 = [v33 mutableCopy];
    v35 = identifierCopy;
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
    identifierCopy = v35;
    localizerCopy = v32;
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
    intentClassName = [descriptorCopy intentClassName];
    [v22 setObject:intentClassName forKeyedSubscript:@"IntentName"];
  }

  extensionBundleIdentifier2 = [descriptorCopy extensionBundleIdentifier];
  if (extensionBundleIdentifier2)
  {
    bundleIdentifier2 = extensionBundleIdentifier2;
  }

  else
  {
    bundleIdentifier2 = [descriptorCopy bundleIdentifier];
    if (!bundleIdentifier2)
    {
      goto LABEL_32;
    }
  }

  v51 = [v21 objectForKey:@"IntentIdentifier"];

  if (!v51)
  {
    intentClassName2 = [descriptorCopy intentClassName];
    v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", v72, bundleIdentifier2, intentClassName2];
    [v22 setObject:v53 forKeyedSubscript:@"IntentIdentifier"];
  }

LABEL_32:
  v54 = [v21 definitionByAddingEntriesInDictionary:v22];

  v83.receiver = self;
  v83.super_class = WFHandleCustomIntentAction;
  v55 = [(WFHandleIntentAction *)&v83 initWithIdentifier:identifierCopy definition:v54 serializedParameters:parametersCopy stringLocalizer:localizerCopy];
  v56 = v55;
  if (v55)
  {
    v78 = v20;
    v57 = localizerCopy;
    v58 = identifierCopy;
    objc_storeStrong(&v55->_schema, obj);
    objc_storeStrong(&v56->_intent, intentCopy);
    v59 = [v82 copy];
    appIdentifier = v56->_appIdentifier;
    v56->_appIdentifier = v59;

    v61 = [parametersCopy objectForKey:@"IntentAppDefinition"];
    v62 = objc_opt_class();
    v63 = WFEnforceClass_30212(v61, v62);

    if (v63)
    {
      v64 = [objc_alloc(MEMORY[0x1E696E890]) initWithSerializedRepresentation:v63];
    }

    else
    {
      v64 = descriptorCopy;
    }

    v65 = v64;
    resolver = [(WFHandleCustomIntentAction *)v56 resolver];
    v67 = [resolver resolvedIntentMatchingDescriptor:v65];
    intentDescriptor = v56->_intentDescriptor;
    v56->_intentDescriptor = v67;

    v69 = v56;
    identifierCopy = v58;
    localizerCopy = v57;
    v20 = v78;
    v22 = v75;
  }

  v70 = *MEMORY[0x1E69E9840];
  return v56;
}

- (WFHandleCustomIntentAction)initWithIdentifier:(id)identifier intent:(id)intent className:(id)name bundleIdentifier:(id)bundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  intentCopy = intent;
  identifierCopy = identifier;
  v14 = [WFActionDefinition alloc];
  v15 = [(WFActionDefinition *)v14 initWithDictionary:MEMORY[0x1E695E0F8]];
  v16 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
  v17 = [(WFHandleCustomIntentAction *)self initWithIdentifier:identifierCopy definition:v15 serializedParameters:0 schema:0 intent:intentCopy className:nameCopy bundleIdentifier:bundleIdentifierCopy stringLocalizer:v16];

  return v17;
}

- (WFHandleCustomIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters schema:(id)schema intent:(id)intent className:(id)name bundleIdentifier:(id)bundleIdentifier stringLocalizer:(id)self0
{
  v17 = MEMORY[0x1E696E890];
  localizerCopy = localizer;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  intentCopy = intent;
  schemaCopy = schema;
  parametersCopy = parameters;
  definitionCopy = definition;
  identifierCopy = identifier;
  v25 = [[v17 alloc] initWithIntentClassName:nameCopy launchableAppBundleId:bundleIdentifierCopy];

  resolver = [(WFHandleCustomIntentAction *)self resolver];
  v27 = [resolver resolvedIntentMatchingDescriptor:v25];

  v28 = [(WFHandleCustomIntentAction *)self initWithIdentifier:identifierCopy definition:definitionCopy serializedParameters:parametersCopy schema:schemaCopy intent:intentCopy resolvedIntentDescriptor:v27 stringLocalizer:localizerCopy];
  return v28;
}

- (WFHandleCustomIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters stringLocalizer:(id)localizer
{
  v68 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  definitionCopy = definition;
  parametersCopy = parameters;
  localizerCopy = localizer;
  v10 = getWFGeneralLogObject();
  spid = os_signpost_id_generate(v10);

  v11 = getWFGeneralLogObject();
  v12 = v11;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 138412290;
    *&buf[4] = identifierCopy;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v12, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CustomIntentActionInitialization", "identifier=%{signpost.description:attribute}@", buf, 0xCu);
  }

  v13 = [definitionCopy objectForKey:@"IntentIdentifier"];
  v14 = objc_opt_class();
  v15 = WFEnforceClass_30212(v13, v14);

  if (![v15 length])
  {
    v16 = [definitionCopy objectForKey:@"AppDefinition"];
    v17 = objc_opt_class();
    v18 = WFEnforceClass_30212(v16, v17);

    v19 = [v18 objectForKey:*MEMORY[0x1E69E0908]];
    v20 = objc_opt_class();
    v21 = WFEnforceClass_30212(v19, v20);

    v22 = [definitionCopy objectForKey:@"IntentName"];
    v23 = objc_opt_class();
    v24 = WFEnforceClass_30212(v22, v23);

    if ([v21 length])
    {
      v25 = +[WFInterchangeAppRegistry sharedRegistry];
      v26 = [v25 appWithIdentifier:v21];
      bundleIdentifier = [v26 bundleIdentifier];

      if ([bundleIdentifier length] && objc_msgSend(v24, "length"))
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", *MEMORY[0x1E696EAF8], bundleIdentifier, v24];

        v15 = v28;
      }
    }
  }

  if (!v15)
  {
    v15 = identifierCopy;
  }

  v62 = 0;
  v63 = 0;
  v29 = INSchemaWithTypeName();
  v30 = 0;
  v31 = 0;
  if (v31 && v30)
  {
    v32 = [objc_alloc(MEMORY[0x1E696E890]) initWithIntentClassName:v30 launchableAppBundleId:v31];
    resolver = [(WFHandleCustomIntentAction *)self resolver];
    v34 = [resolver resolvedIntentMatchingDescriptor:v32];

    bundleIdentifier2 = [v34 bundleIdentifier];
    v36 = bundleIdentifier2;
    if (bundleIdentifier2)
    {
      extensionBundleIdentifier = bundleIdentifier2;
    }

    else
    {
      extensionBundleIdentifier = [v34 extensionBundleIdentifier];
    }

    v39 = extensionBundleIdentifier;

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v65 = __Block_byref_object_copy__30291;
    v66 = __Block_byref_object_dispose__30292;
    v67 = 0;
    mEMORY[0x1E696E878] = [MEMORY[0x1E696E878] sharedConnection];
    v41 = [MEMORY[0x1E695DFD8] setWithObject:v39];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __97__WFHandleCustomIntentAction_initWithIdentifier_definition_serializedParameters_stringLocalizer___block_invoke;
    v53[3] = &unk_1E83781F0;
    v61 = buf;
    selfCopy = self;
    v55 = identifierCopy;
    v56 = definitionCopy;
    v57 = parametersCopy;
    v58 = v29;
    v42 = v34;
    v59 = v42;
    v60 = localizerCopy;
    [mEMORY[0x1E696E878] wf_accessBundleContentForBundleIdentifiers:v41 withBlock:v53];

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