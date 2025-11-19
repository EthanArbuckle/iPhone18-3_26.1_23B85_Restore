@interface WFLinkAction
+ (Class)classForLinkActionWithIdentifier:(id)a3 metadata:(id)a4;
+ (id)inputParameterMetadataWithActionMetadata:(id)a3;
+ (id)linkActionClassOverrides;
+ (id)linkProtocolClassOverrides;
+ (id)providedActionWithIdentifier:(id)a3 serializedParameters:(id)a4;
- (BOOL)canOfferSuggestionsForParameterWithKey:(id)a3;
- (BOOL)openWhenRunParameterIsHidden;
- (BOOL)setParameterState:(id)a3 forKey:(id)a4;
- (BOOL)showWhenRunParameterIsHidden;
- (BOOL)showsWhenRun;
- (BOOL)updateParameterSummaryIfNeededWithLinkAction:(id)a3;
- (NSNumber)showsWhenRunIfApplicable;
- (NSString)developerSpecifiedTitle;
- (WFLinkAction)initWithIdentifier:(id)a3 metadata:(id)a4 definition:(id)a5 serializedParameters:(id)a6 appIntentDescriptor:(id)a7 fullyQualifiedActionIdentifier:(id)a8;
- (WFLinkAction)linkActionWithSerializedParameters;
- (id)currentParameterStates;
- (id)generatedResourceNodes;
- (id)icon;
- (id)iconName;
- (id)inputDictionary;
- (id)localizedCategoryWithContext:(id)a3;
- (id)localizedDefaultOutputNameWithContext:(id)a3;
- (id)localizedDescriptionSummaryWithContext:(id)a3;
- (id)localizedDiscontinuedDescriptionWithContext:(id)a3;
- (id)localizedKeywordsWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
- (id)outputMeasurementUnitType;
- (id)parameterDefinitions;
- (id)serializedParametersForDonatedIntent:(id)a3 allowDroppingUnconfigurableValues:(BOOL)a4;
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (id)supportedAppIdentifiers;
- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4;
- (void)dealloc;
- (void)deregisterExecutorProgressListeners;
- (void)documentsValueFromRepresentation:(id)a3 valueType:(id)a4 completionHandler:(id)a5;
- (void)executor:(id)a3 didPerformActionWithResult:(id)a4 error:(id)a5;
- (void)executor:(id)a3 needsChoiceWithRequest:(id)a4;
- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4;
- (void)executor:(id)a3 needsValueWithRequest:(id)a4;
- (void)fetchSuggestedEntitiesForParameterWithKey:(id)a3 completionHandler:(id)a4;
- (void)finishRunningWithResult:(id)a3 error:(id)a4;
- (void)forceUpdateParameterVisibility;
- (void)getAlertForLinkResult:(id)a3 encodedSnippetActionToolInvocation:(id)a4 handler:(id)a5 completionHandler:(id)a6;
- (void)getContentDestinationWithCompletionHandler:(id)a3;
- (void)getDocumentsLinkValueFromParameterMetadata:(id)a3 processedParameters:(id)a4 parameterState:(id)a5 valueType:(id)a6 completionHandler:(id)a7;
- (void)initializeParameters;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performPresentationAction:(id)a3;
- (void)performPresentationActionWithResult:(id)a3;
- (void)presentAlertForChoiceRequest:(id)a3 dialogString:(id)a4;
- (void)requestUnlock:(id)a3;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)runAsynchronouslyWithLinkAction:(id)a3;
- (void)runSnippetActionWithLinkAction:(id)a3;
- (void)serializeAppIntentDescriptorIfNecessary;
- (void)setExecutorProgress:(id)a3;
- (void)showResultIfNeeded:(id)a3 completionHandler:(id)a4;
- (void)updateParameterSummaryIfNeeded:(id)a3;
- (void)updateParameterVisibility;
- (void)wasAddedToWorkflow:(id)a3;
@end

@implementation WFLinkAction

+ (id)linkActionClassOverrides
{
  if (linkActionClassOverrides_token != -1)
  {
    dispatch_once(&linkActionClassOverrides_token, &__block_literal_global_1294);
  }

  v3 = linkActionClassOverrides_linkActionClassOverrides;

  return v3;
}

+ (id)linkProtocolClassOverrides
{
  if (linkProtocolClassOverrides_token != -1)
  {
    dispatch_once(&linkProtocolClassOverrides_token, &__block_literal_global_1398);
  }

  v3 = linkProtocolClassOverrides_linkProtocolClassOverrides;

  return v3;
}

- (void)initializeParameters
{
  v3.receiver = self;
  v3.super_class = WFLinkAction;
  [(WFAction *)&v3 initializeParameters];
  [(WFLinkAction *)self serializeAppIntentDescriptorIfNecessary];
}

- (id)parameterDefinitions
{
  v39 = *MEMORY[0x1E69E9840];
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
    v33.receiver = self;
    v33.super_class = WFLinkAction;
    v6 = [(WFAction *)&v33 parameterDefinitions];
    if ([(NSArray *)v6 count])
    {
      parameterDefinitions = 0;
      v5 = v6;
    }

    else
    {
      v7 = objc_opt_new();
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v8 = [(WFAppIntentExecutionAction *)self metadata];
      v9 = [v8 wf_parameterDefinitions];

      v10 = [v9 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v30;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [v7 addObject:*(*(&v29 + 1) + 8 * i)];
          }

          v11 = [v9 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v11);
      }

      if (![(WFLinkAction *)self showWhenRunParameterIsHidden])
      {
        v14 = [WFParameterDefinition alloc];
        v37[0] = @"ShowWhenRun";
        v36[0] = @"Key";
        v36[1] = @"Class";
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v37[1] = v16;
        v37[2] = MEMORY[0x1E695E118];
        v36[2] = @"DefaultValue";
        v36[3] = @"Label";
        v17 = WFLocalizedString(@"Show When Run");
        v37[3] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:4];
        v19 = [(WFParameterDefinition *)v14 initWithDictionary:v18];

        [v7 addObject:v19];
      }

      if (![(WFLinkAction *)self openWhenRunParameterIsHidden])
      {
        v20 = [WFParameterDefinition alloc];
        v35[0] = @"OpenWhenRun";
        v34[0] = @"Key";
        v34[1] = @"Class";
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v35[1] = v22;
        v35[2] = MEMORY[0x1E695E118];
        v34[2] = @"DefaultValue";
        v34[3] = @"Label";
        v23 = WFLocalizedString(@"Open When Run");
        v35[3] = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:4];
        v25 = [(WFParameterDefinition *)v20 initWithDictionary:v24];

        [v7 addObject:v25];
      }

      v5 = [v7 copy];

      if (v5)
      {
        v26 = v5;
      }

      else
      {
        v26 = [MEMORY[0x1E695DFB0] null];
      }

      parameterDefinitions = self->_parameterDefinitions;
      self->_parameterDefinitions = v26;
    }
  }

  v27 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)showWhenRunParameterIsHidden
{
  v2 = [(WFAppIntentExecutionAction *)self metadata];
  v3 = ([v2 outputFlags] & 0x26) == 0;

  return v3;
}

- (BOOL)openWhenRunParameterIsHidden
{
  v3 = [(WFAppIntentExecutionAction *)self metadata];
  v4 = [v3 outputFlags];

  v5 = [(WFAppIntentExecutionAction *)self metadata];
  v6 = [v5 supportedModes];

  v7 = [(WFAppIntentExecutionAction *)self metadata];
  if (([v7 supportedModes] & 8) != 0)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v8 = [(WFAppIntentExecutionAction *)self metadata];
    if (([v8 supportedModes] & 4) != 0)
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      v9 = [(WFAppIntentExecutionAction *)self metadata];
      v10 = ([v9 supportedModes] >> 1) & 1;
    }
  }

  return ((v4 & 1) == 0) & (((v6 & 1) == 0) | v10 ^ 1);
}

- (void)serializeAppIntentDescriptorIfNecessary
{
  v3 = [(WFAction *)self serializedParameters];
  v4 = [v3 objectForKey:@"AppIntentDescriptor"];

  if (v4)
  {
    return;
  }

  v5 = MEMORY[0x1E6963620];
  v6 = [(WFAppIntentExecutionAction *)self fullyQualifiedLinkActionIdentifier];
  v7 = [v6 bundleIdentifier];
  v8 = [v5 bundleRecordWithBundleIdentifier:v7 allowPlaceholder:0 error:0];

  v15 = v8;
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v15 containingBundleRecord];

      if (!v9)
      {
        goto LABEL_9;
      }

LABEL_7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = objc_alloc(MEMORY[0x1E696E740]);
        v11 = [(WFAppIntentExecutionAction *)self metadata];
        v12 = [v11 identifier];
        v13 = [v10 initWithIntentIdentifier:v12 applicationRecord:v9];

        v14 = [v13 serializedRepresentation];
        [(WFAction *)self setSupplementalParameterValue:v14 forKey:@"AppIntentDescriptor"];
      }

      goto LABEL_9;
    }
  }

  v9 = v15;
  if (v9)
  {
    goto LABEL_7;
  }

LABEL_9:
}

- (void)dealloc
{
  [(WFLinkAction *)self deregisterExecutorProgressListeners];
  v3.receiver = self;
  v3.super_class = WFLinkAction;
  [(WFLinkAction *)&v3 dealloc];
}

- (void)deregisterExecutorProgressListeners
{
  v3 = [(WFLinkAction *)self executorProgress];
  [v3 removeObserver:self forKeyPath:@"localizedDescription" context:WFProgressLocalizedDescriptionContext];

  v4 = [(WFLinkAction *)self executorProgress];
  [v4 removeObserver:self forKeyPath:@"localizedAdditionalDescription" context:WFProgressLocalizedAdditionalDescriptionContext];
}

- (id)inputDictionary
{
  v28[3] = *MEMORY[0x1E69E9840];
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
    v26.receiver = self;
    v26.super_class = WFLinkAction;
    v6 = [(WFAction *)&v26 inputDictionary];
    v7 = objc_opt_class();
    v8 = [(WFAppIntentExecutionAction *)self metadata];
    inputDictionary = [v7 inputParameterMetadataWithActionMetadata:v8];

    if (inputDictionary)
    {
      v9 = [(NSDictionary *)inputDictionary valueType];
      v10 = [(WFAppIntentExecutionAction *)self fullyQualifiedLinkActionIdentifier];
      v5 = [v10 bundleIdentifier];
      v11 = [v9 wf_contentItemClassesWithAppBundleIdentifier:v5];

      if (v11)
      {
        v12 = [v6 mutableCopy];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = objc_opt_new();
        }

        v16 = v14;

        v27[0] = @"Multiple";
        v17 = MEMORY[0x1E696AD98];
        objc_opt_class();
        v18 = [v17 numberWithBool:objc_opt_isKindOfClass() & 1];
        v28[0] = v18;
        v27[1] = @"Types";
        [v11 if_map:&__block_literal_global_235];
        v19 = v25 = v9;
        v28[1] = v19;
        v27[2] = @"ParameterKey";
        v20 = [(NSDictionary *)inputDictionary name];
        v28[2] = v20;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
        [v16 addEntriesFromDictionary:v21];

        v9 = v25;
        v5 = [v16 copy];
      }

      else
      {
        v15 = v6;
      }

      if (v11)
      {
        if (v5)
        {
          v22 = v5;
        }

        else
        {
          v22 = [MEMORY[0x1E695DFB0] null];
        }

        inputDictionary = self->_inputDictionary;
        self->_inputDictionary = v22;
        goto LABEL_19;
      }

      inputDictionary = 0;
    }

    v5 = v6;
  }

LABEL_19:

  v23 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)documentsValueFromRepresentation:(id)a3 valueType:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (a3)
  {
    v10 = [MEMORY[0x1E6996D58] itemWithFile:a3];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__WFLinkAction_Documents__documentsValueFromRepresentation_valueType_completionHandler___block_invoke;
    v11[3] = &unk_1E8375EE8;
    v13 = v9;
    v12 = v7;
    [v10 getObjectRepresentation:v11 forClass:objc_opt_class()];
  }

  else
  {
    (*(v8 + 2))(v8, 0, 0);
  }
}

void __88__WFLinkAction_Documents__documentsValueFromRepresentation_valueType_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = MEMORY[0x1E69ACA90];
  v5 = a2;
  v6 = [[v4 alloc] initWithValue:v5 valueType:*(a1 + 32)];

  (*(v3 + 16))(v3, v6, 0);
}

- (void)getDocumentsLinkValueFromParameterMetadata:(id)a3 processedParameters:(id)a4 parameterState:(id)a5 valueType:(id)a6 completionHandler:(id)a7
{
  v11 = a6;
  v12 = a7;
  v13 = a4;
  v14 = [a3 name];
  v15 = [v13 objectForKeyedSubscript:v14];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v11;
    v17 = v15;
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v21 = v18;

    if ([v21 count])
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __133__WFLinkAction_Documents__getDocumentsLinkValueFromParameterMetadata_processedParameters_parameterState_valueType_completionHandler___block_invoke;
      v26[3] = &unk_1E8375EC0;
      v26[4] = self;
      v27 = v16;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __133__WFLinkAction_Documents__getDocumentsLinkValueFromParameterMetadata_processedParameters_parameterState_valueType_completionHandler___block_invoke_2;
      v23[3] = &unk_1E837F020;
      v25 = v12;
      v24 = v27;
      [v21 if_mapAsynchronously:v26 completionHandler:v23];
    }

    else
    {
      (*(v12 + 2))(v12, 0, 0);
    }
  }

  else
  {
    v19 = v15;
    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = v20;

    [(WFLinkAction *)self documentsValueFromRepresentation:v22 valueType:v11 completionHandler:v12];
  }
}

void __133__WFLinkAction_Documents__getDocumentsLinkValueFromParameterMetadata_processedParameters_parameterState_valueType_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a2;
  v6 = a4;
  v7 = *(a1 + 32);
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [*(a1 + 40) memberValueType];
  [v7 documentsValueFromRepresentation:v9 valueType:v10 completionHandler:v6];
}

void __133__WFLinkAction_Documents__getDocumentsLinkValueFromParameterMetadata_processedParameters_parameterState_valueType_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = MEMORY[0x1E69ACA90];
  v7 = a3;
  v8 = a2;
  v9 = [v6 alloc];
  v11 = [*(a1 + 32) memberValueType];
  v10 = [v9 initWithValues:v8 memberValueType:v11];

  (*(v5 + 16))(v5, v10, v7);
}

+ (Class)classForLinkActionWithIdentifier:(id)a3 metadata:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [a1 linkActionClassOverrides];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
LABEL_14:
    if ([v10 isSubclassOfClass:objc_opt_class()])
    {
      goto LABEL_15;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"WFLinkActionOverrides.m" lineNumber:2165 description:@"Link override class must be a WFAction"];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [v8 systemProtocols];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v21 = a2;
      v14 = *v23;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v22 + 1) + 8 * v15) identifier];
          if (v16)
          {
            v17 = [a1 linkProtocolClassOverrides];
            v10 = [v17 objectForKeyedSubscript:v16];

            if (v10)
            {

              a2 = v21;
              goto LABEL_14;
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
  }

LABEL_15:
  v18 = v10;

  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

void __53__WFLinkAction_Overrides__linkProtocolClassOverrides__block_invoke()
{
  v14[10] = *MEMORY[0x1E69E9840];
  v13[0] = *MEMORY[0x1E69AC340];
  v0 = objc_opt_self();
  v14[0] = v0;
  v13[1] = *MEMORY[0x1E69AC398];
  v1 = objc_opt_self();
  v14[1] = v1;
  v13[2] = *MEMORY[0x1E69AC400];
  v2 = objc_opt_self();
  v14[2] = v2;
  v13[3] = *MEMORY[0x1E69AC380];
  v3 = objc_opt_self();
  v14[3] = v3;
  v13[4] = *MEMORY[0x1E69AC488];
  v4 = objc_opt_self();
  v14[4] = v4;
  v13[5] = *MEMORY[0x1E69AC350];
  v5 = objc_opt_self();
  v14[5] = v5;
  v13[6] = *MEMORY[0x1E69AC3F0];
  v6 = objc_opt_self();
  v14[6] = v6;
  v13[7] = *MEMORY[0x1E69AC370];
  v7 = objc_opt_self();
  v14[7] = v7;
  v13[8] = *MEMORY[0x1E69AC4F0];
  v8 = objc_opt_self();
  v14[8] = v8;
  v13[9] = *MEMORY[0x1E69AC3D0];
  v9 = objc_opt_self();
  v14[9] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:10];
  v11 = linkProtocolClassOverrides_linkProtocolClassOverrides;
  linkProtocolClassOverrides_linkProtocolClassOverrides = v10;

  v12 = *MEMORY[0x1E69E9840];
}

void __51__WFLinkAction_Overrides__linkActionClassOverrides__block_invoke()
{
  v111[87] = *MEMORY[0x1E69E9840];
  v110[0] = @"com.apple.mobiletimer.StartStopwatchIntent";
  v101 = objc_opt_self();
  v111[0] = v101;
  v110[1] = @"com.apple.mobiletimer.DeleteAlarmIntent";
  v100 = objc_opt_self();
  v111[1] = v100;
  v110[2] = @"com.apple.mobilecal.Close";
  v99 = objc_opt_self();
  v111[2] = v99;
  v110[3] = @"com.apple.mobilecal.CreateCalendar";
  v98 = objc_opt_self();
  v111[3] = v98;
  v110[4] = @"com.apple.mobilecal.DeleteCalendar";
  v97 = objc_opt_self();
  v111[4] = v97;
  v110[5] = @"com.apple.mobilecal.OpenScreen";
  v96 = objc_opt_self();
  v111[5] = v96;
  v110[6] = @"com.apple.iBooks.BookReaderChangePageNavigationIntent";
  v95 = objc_opt_self();
  v111[6] = v95;
  v110[7] = @"com.apple.iBooks.BookReaderChangeThemeIntent";
  v94 = objc_opt_self();
  v111[7] = v94;
  v110[8] = @"com.apple.iBooks.BookReaderNavigatePagesIntent";
  v93 = objc_opt_self();
  v111[8] = v93;
  v110[9] = @"com.apple.iBooks.BookAppEntity";
  v92 = objc_opt_self();
  v111[9] = v92;
  v110[10] = @"com.apple.mobilenotes.AddTagsToNotesLinkAction";
  v91 = objc_opt_self();
  v111[10] = v91;
  v110[11] = @"com.apple.mobilenotes.RemoveTagsFromNotesLinkAction";
  v90 = objc_opt_self();
  v111[11] = v90;
  v110[12] = @"com.apple.mobilenotes.MoveNotesToFolderLinkAction";
  v89 = objc_opt_self();
  v111[12] = v89;
  v110[13] = @"com.apple.mobilenotes.OpenAppLocationLinkAction";
  v88 = objc_opt_self();
  v111[13] = v88;
  v110[14] = @"com.apple.mobilenotes.PinNotesLinkAction";
  v87 = objc_opt_self();
  v111[14] = v87;
  v110[15] = @"com.apple.mobilenotes.CreateFolderLinkAction";
  v86 = objc_opt_self();
  v111[15] = v86;
  v110[16] = @"com.apple.mobilenotes.CreateTagLinkAction";
  v85 = objc_opt_self();
  v111[16] = v85;
  v110[17] = @"com.apple.mobilenotes.DeleteTagsLinkAction";
  v84 = objc_opt_self();
  v111[17] = v84;
  v110[18] = @"com.apple.mobilenotes.DeleteFoldersLinkAction";
  v83 = objc_opt_self();
  v111[18] = v83;
  v110[19] = @"com.apple.mobilenotes.OpenFolderLinkAction";
  v82 = objc_opt_self();
  v111[19] = v82;
  v110[20] = @"com.apple.mobilenotes.OpenTagLinkAction";
  v81 = objc_opt_self();
  v111[20] = v81;
  v110[21] = @"com.apple.mobilenotes.OpenAccountLinkAction";
  v80 = objc_opt_self();
  v111[21] = v80;
  v110[22] = @"com.apple.mobilenotes.ChangeSettingLinkAction";
  v79 = objc_opt_self();
  v111[22] = v79;
  v110[23] = @"is.workflow.actions.filter.notes";
  v78 = objc_opt_self();
  v111[23] = v78;
  v110[24] = @"com.apple.VoiceMemos.ChangeRecordingPlaybackSetting";
  v77 = objc_opt_self();
  v111[24] = v77;
  v110[25] = @"com.apple.VoiceMemos.PlaybackVoiceMemoIntent";
  v76 = objc_opt_self();
  v111[25] = v76;
  v110[26] = @"com.apple.VoiceMemos.SearchRecordings";
  v75 = objc_opt_self();
  v111[26] = v75;
  v110[27] = @"com.apple.VoiceMemos.CreateFolder";
  v74 = objc_opt_self();
  v111[27] = v74;
  v110[28] = @"com.apple.VoiceMemos.DeleteFolder";
  v73 = objc_opt_self();
  v111[28] = v73;
  v110[29] = @"com.apple.VoiceMemos.DeleteRecording";
  v72 = objc_opt_self();
  v111[29] = v72;
  v110[30] = @"com.apple.VoiceMemos.OpenFolder";
  v71 = objc_opt_self();
  v111[30] = v71;
  v110[31] = @"com.apple.VoiceMemos.SelectRecording";
  v70 = objc_opt_self();
  v111[31] = v70;
  v110[32] = @"com.apple.VoiceMemos.RCRecordingEntity";
  v69 = objc_opt_self();
  v111[32] = v69;
  v110[33] = @"com.apple.reminders.TTRCreateListAppIntent";
  v68 = objc_opt_self();
  v111[33] = v68;
  v110[34] = @"com.apple.reminders.TTROpenSmartListAppIntent";
  v67 = objc_opt_self();
  v111[34] = v67;
  v110[35] = @"com.apple.mobilesafari.CreateNewTab";
  v66 = objc_opt_self();
  v111[35] = v66;
  v110[36] = @"com.apple.mobilesafari.CreateNewPrivateTab";
  v65 = objc_opt_self();
  v111[36] = v65;
  v110[37] = @"com.apple.mobilesafari.CloseTab";
  v64 = objc_opt_self();
  v111[37] = v64;
  v110[38] = @"com.apple.mobilesafari.CreateNewTabGroup";
  v63 = objc_opt_self();
  v111[38] = v63;
  v110[39] = @"com.apple.mobilesafari.OpenTabGroup";
  v62 = objc_opt_self();
  v111[39] = v62;
  v110[40] = @"com.apple.mobilesafari.OpenTab";
  v61 = objc_opt_self();
  v111[40] = v61;
  v110[41] = @"com.apple.mobilesafari.OpenBookmark";
  v60 = objc_opt_self();
  v111[41] = v60;
  v110[42] = @"com.apple.mobilesafari.OpenReadingListItem";
  v59 = objc_opt_self();
  v111[42] = v59;
  v110[43] = @"com.apple.mobilesafari.OpenView";
  v58 = objc_opt_self();
  v111[43] = v58;
  v110[44] = @"com.apple.mobilesafari.BookmarkEntity";
  v57 = objc_opt_self();
  v111[44] = v57;
  v110[45] = @"com.apple.mobilesafari.ReadingListItemEntity";
  v56 = objc_opt_self();
  v111[45] = v56;
  v110[46] = @"com.apple.mobilesafari.TabEntity";
  v55 = objc_opt_self();
  v111[46] = v55;
  v110[47] = @"com.apple.mobilesafari.TabGroupEntity";
  v54 = objc_opt_self();
  v111[47] = v54;
  v110[48] = @"com.apple.mobilesafari.ChangeReaderModeState";
  v53 = objc_opt_self();
  v111[48] = v53;
  v110[49] = @"com.apple.musicrecognition.RecognizeMusicIntent";
  v52 = objc_opt_self();
  v111[49] = v52;
  v110[50] = @"com.apple.shortcuts.CreateWorkflowAction";
  v51 = objc_opt_self();
  v111[50] = v51;
  v110[51] = @"com.apple.shortcuts.DeleteWorkflowAction";
  v50 = objc_opt_self();
  v111[51] = v50;
  v110[52] = @"com.apple.shortcuts.SearchShortcutsAction";
  v49 = objc_opt_self();
  v111[52] = v49;
  v110[53] = @"com.apple.shortcuts.CreateShortcutiCloudLinkAction";
  v48 = objc_opt_self();
  v111[53] = v48;
  v110[54] = @"com.apple.shortcuts.RunShortcutIntent";
  v111[54] = objc_opt_class();
  v110[55] = @"com.apple.shortcuts.RunShortcutConfigurationIntent";
  v111[55] = objc_opt_class();
  v110[56] = @"com.apple.shortcuts.WFShortcutsSmallWidgetConfigurationIntent";
  v111[56] = objc_opt_class();
  v110[57] = @"com.apple.shortcuts.WFShortcutsWidgetConfigurationIntent";
  v111[57] = objc_opt_class();
  v110[58] = @"com.apple.shortcuts.SetDataRoamingAction";
  v47 = objc_opt_self();
  v111[58] = v47;
  v110[59] = @"com.apple.shortcuts.SetDefaultCellularPlanAction";
  v46 = objc_opt_self();
  v111[59] = v46;
  v110[60] = @"com.apple.shortcuts.ResetCellularDataStatisticsAction";
  v45 = objc_opt_self();
  v111[60] = v45;
  v110[61] = @"com.apple.shortcuts.ToggleCellularPlanAction";
  v44 = objc_opt_self();
  v111[61] = v44;
  v110[62] = @"com.apple.WritingTools.WritingToolsAppIntentsExtension.AdjustToneIntent";
  v43 = objc_opt_self();
  v111[62] = v43;
  v110[63] = @"com.apple.WritingTools.WritingToolsAppIntentsExtension.FormatListIntent";
  v42 = objc_opt_self();
  v111[63] = v42;
  v110[64] = @"com.apple.WritingTools.WritingToolsAppIntentsExtension.FormatTableIntent";
  v41 = objc_opt_self();
  v111[64] = v41;
  v110[65] = @"com.apple.WritingTools.WritingToolsAppIntentsExtension.ProofreadIntent";
  v40 = objc_opt_self();
  v111[65] = v40;
  v110[66] = @"com.apple.WritingTools.WritingToolsAppIntentsExtension.RewriteTextIntent";
  v39 = objc_opt_self();
  v111[66] = v39;
  v110[67] = @"com.apple.WritingTools.WritingToolsAppIntentsExtension.SummarizeTextIntent";
  v38 = objc_opt_self();
  v111[67] = v38;
  v110[68] = @"com.apple.UIKitCore.InsertIntelligenceText";
  v37 = objc_opt_self();
  v111[68] = v37;
  v110[69] = @"com.apple.AppKit.InsertIntelligenceText";
  v36 = objc_opt_self();
  v111[69] = v36;
  v110[70] = @"com.apple.intelligenceplatform.IntelligencePlatform.IntelligencePlatformDataActionsAppIntentsExtension.FindSportsEvents";
  v35 = objc_opt_self();
  v111[70] = v35;
  v110[71] = @"com.apple.intelligenceplatform.IntelligencePlatform.IntelligencePlatformDataActionsAppIntentsExtension.CalculateAppUsageIntent";
  v34 = objc_opt_self();
  v111[71] = v34;
  v110[72] = *MEMORY[0x1E69E1218];
  v33 = objc_opt_self();
  v111[72] = v33;
  v110[73] = @"com.apple.ShortcutsActions.OpenCameraAction";
  v32 = objc_opt_self();
  v111[73] = v32;
  v110[74] = @"com.apple.AppKit.RunIntelligenceCommandForKey";
  v31 = objc_opt_self();
  v111[74] = v31;
  v110[75] = @"com.apple.siri.VisualIntelligenceCameraLaunch";
  v30 = objc_opt_self();
  v111[75] = v30;
  v110[76] = @"com.apple.GenerativePlaygroundApp.GenerateImageIntent";
  v29 = objc_opt_self();
  v111[76] = v29;
  v110[77] = @"com.apple.Photos.OpenMemoryCreationViewIntent";
  v28 = objc_opt_self();
  v111[77] = v28;
  v110[78] = @"com.apple.mobileslideshow.OpenMemoryCreationViewIntent";
  v27 = objc_opt_self();
  v111[78] = v27;
  v110[79] = @"com.apple.Home.ToggleIntent";
  v0 = objc_opt_self();
  v111[79] = v0;
  v110[80] = @"com.apple.Home.CameraClipEntity";
  v1 = objc_opt_self();
  v111[80] = v1;
  v110[81] = @"com.apple.Home.DeviceEntity";
  v2 = objc_opt_self();
  v111[81] = v2;
  v110[82] = @"com.apple.Home.RoomEntity";
  v3 = objc_opt_self();
  v111[82] = v3;
  v110[83] = @"com.apple.Home.SceneEntity";
  v4 = objc_opt_self();
  v111[83] = v4;
  v110[84] = @"com.apple.Home.HomeEntity";
  v5 = objc_opt_self();
  v111[84] = v5;
  v110[85] = @"com.apple.Home.SelectedHomeEntity";
  v6 = objc_opt_self();
  v111[85] = v6;
  v110[86] = @"com.apple.Home.ZoneEntity";
  v7 = objc_opt_self();
  v111[86] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:87];
  v9 = linkActionClassOverrides_linkActionClassOverrides;
  linkActionClassOverrides_linkActionClassOverrides = v8;

  if (NSClassFromString(&cfstr_Wfcreatenoteac.isa))
  {
    v10 = linkActionClassOverrides_linkActionClassOverrides;
    v108[0] = @"com.apple.mobilenotes.SharingExtension";
    v109[0] = NSClassFromString(&cfstr_Wfcreatenoteac.isa);
    v108[1] = @"is.workflow.actions.appendnote";
    v109[1] = NSClassFromString(&cfstr_Wfappendtonote.isa);
    v108[2] = @"is.workflow.actions.shownote";
    v109[2] = NSClassFromString(&cfstr_Wfshownoteacti.isa);
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:3];
    v12 = [v10 if_dictionaryByAddingEntriesFromDictionary:v11];
    v13 = linkActionClassOverrides_linkActionClassOverrides;
    linkActionClassOverrides_linkActionClassOverrides = v12;
  }

  if (NSClassFromString(&cfstr_Wfstarttimerac.isa))
  {
    v14 = linkActionClassOverrides_linkActionClassOverrides;
    v106[0] = @"is.workflow.actions.timer.start";
    v107[0] = NSClassFromString(&cfstr_Wfstarttimerac.isa);
    v106[1] = @"com.apple.mobiletimer.INCreateTimerIntent";
    v107[1] = NSClassFromString(&cfstr_Wfstarttimerac.isa);
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:2];
    v16 = [v14 if_dictionaryByAddingEntriesFromDictionary:v15];
    v17 = linkActionClassOverrides_linkActionClassOverrides;
    linkActionClassOverrides_linkActionClassOverrides = v16;
  }

  if (NSClassFromString(&cfstr_Wflinkclockcre.isa))
  {
    v18 = linkActionClassOverrides_linkActionClassOverrides;
    v104[0] = @"com.apple.mobiletimer-framework.MobileTimerIntents.MTCreateAlarmIntent";
    v105[0] = NSClassFromString(&cfstr_Wflinkclockcre.isa);
    v104[1] = @"com.apple.mobiletimer.CreateAlarmIntent";
    v105[1] = NSClassFromString(&cfstr_Wflinkclockcre.isa);
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:2];
    v20 = [v18 if_dictionaryByAddingEntriesFromDictionary:v19];
    v21 = linkActionClassOverrides_linkActionClassOverrides;
    linkActionClassOverrides_linkActionClassOverrides = v20;
  }

  if (NSClassFromString(&cfstr_Wflinkclocktog.isa))
  {
    v22 = linkActionClassOverrides_linkActionClassOverrides;
    v102[0] = @"com.apple.mobiletimer-framework.MobileTimerIntents.MTToggleAlarmIntent";
    v103[0] = NSClassFromString(&cfstr_Wflinkclocktog.isa);
    v102[1] = @"com.apple.mobiletimer.ToggleAlarmIntent";
    v103[1] = NSClassFromString(&cfstr_Wflinkclocktog.isa);
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:2];
    v24 = [v22 if_dictionaryByAddingEntriesFromDictionary:v23];
    v25 = linkActionClassOverrides_linkActionClassOverrides;
    linkActionClassOverrides_linkActionClassOverrides = v24;
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4
{
  v5 = [(WFLinkAction *)self linkActionWithSerializedParametersUsingConnectionPolicy:0, a4];
  [(WFLinkAction *)self updateParameterSummaryIfNeededWithLinkAction:v5];
}

- (void)getAlertForLinkResult:(id)a3 encodedSnippetActionToolInvocation:(id)a4 handler:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__WFLinkAction_getAlertForLinkResult_encodedSnippetActionToolInvocation_handler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8377A00;
  v13 = v9;
  v26 = v13;
  v14 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __99__WFLinkAction_getAlertForLinkResult_encodedSnippetActionToolInvocation_handler_completionHandler___block_invoke_3;
  v20[3] = &unk_1E8377A28;
  v21 = v13;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v15 = v14[2];
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v13;
  v15(v14, v20);
}

void __99__WFLinkAction_getAlertForLinkResult_encodedSnippetActionToolInvocation_handler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WFLocalizedString(@"Action completed successfully.");
  v5 = [*(a1 + 32) output];
  v6 = [v5 dialog];

  if (v6)
  {
    v7 = [*(a1 + 32) output];
    v8 = [v7 dialog];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __99__WFLinkAction_getAlertForLinkResult_encodedSnippetActionToolInvocation_handler_completionHandler___block_invoke_2;
    v9[3] = &unk_1E83783B0;
    v10 = v4;
    v11 = v3;
    [v8 getResultWithCompletionHandler:v9];
  }

  else
  {
    (*(v3 + 2))(v3, v4);
  }
}

void __99__WFLinkAction_getAlertForLinkResult_encodedSnippetActionToolInvocation_handler_completionHandler___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = [WFLinkResultDialogRequest alloc];
  v5 = a1[4];
  v6 = [objc_alloc(MEMORY[0x1E69E0A98]) initWithTitle:0 icon:0];
  v12 = [(WFLinkResultDialogRequest *)v4 initWithSuccessResult:v5 attribution:v6 encodedSnippetActionToolInvocation:a1[5]];

  v7 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
  [v7 setMessage:v3];

  v8 = MEMORY[0x1E6996C78];
  v9 = [(WFLinkResultDialogRequest *)v12 doneButton];
  v10 = [v9 title];
  v11 = [v8 buttonWithTitle:v10 style:0 handler:a1[6]];

  [v7 addButton:v11];
  (*(a1[7] + 16))();
}

void __99__WFLinkAction_getAlertForLinkResult_encodedSnippetActionToolInvocation_handler_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 print];
  v4 = [v3 firstObject];

  v5 = [v4 length];
  v6 = v4;
  if (!v5)
  {
    v6 = *(a1 + 32);
  }

  v7 = v6;

  (*(*(a1 + 40) + 16))();
}

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v7 = a3;
  v8 = MEMORY[0x1E696AEC0];
  v9 = a5;
  v10 = a4;
  if (v7)
  {
    v11 = WFLocalizedString(@"Allow “%@” to share %@ with “%@”?");
    [v8 localizedStringWithFormat:v11, v9, v7, v10];
  }

  else
  {
    v11 = WFLocalizedString(@"Allow “%@” to run actions from “%@”?");
    [v8 localizedStringWithFormat:v11, v9, v10, v14];
  }
  v12 = ;

  return v12;
}

- (void)getContentDestinationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFAppIntentExecutionAction *)self appDescriptor];

  if (v5 && !self->_isBuiltIn)
  {
    v6 = [(WFAppIntentExecutionAction *)self metadata];
    v7 = [v6 systemProtocols];
    v8 = [MEMORY[0x1E69ACA50] requiresMDMChecksProtocol];
    v9 = [v7 containsObject:v8];

    if (v9)
    {
      v10 = [(WFAction *)self processedParameters];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __59__WFLinkAction_getContentDestinationWithCompletionHandler___block_invoke;
      v15[3] = &unk_1E83779D8;
      v15[4] = self;
      v16 = v4;
      [(WFAppIntentExecutionAction *)self getLinkActionWithProcessedParameters:v10 completionHandler:v15];
    }

    else
    {
      v11 = MEMORY[0x1E6996C90];
      v12 = [(WFAppIntentExecutionAction *)self displayableAppDescriptor];
      if (v12)
      {
        v13 = [v11 locationWithAppDescriptor:v12];
      }

      else
      {
        v14 = [(WFAppIntentExecutionAction *)self appDescriptor];
        v13 = [v11 locationWithAppDescriptor:v14];
      }

      (*(v4 + 2))(v4, v13, 0);
    }
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

void __59__WFLinkAction_getContentDestinationWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) connection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__WFLinkAction_getContentDestinationWithCompletionHandler___block_invoke_347;
    v11[3] = &unk_1E837B490;
    v8 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v8;
    [v7 fetchDestinationMDMAccountIdentifierForAction:v5 completionHandler:v11];
  }

  else
  {
    v9 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[WFLinkAction getContentDestinationWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Failed to get LNAction for MDM accountIdentifier fetch.", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __59__WFLinkAction_getContentDestinationWithCompletionHandler___block_invoke_347(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = getWFAppIntentsLogObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      v16 = 136315394;
      v17 = "[WFLinkAction getContentDestinationWithCompletionHandler:]_block_invoke";
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEBUG, "%s MDM: Setting an account destination with identifier %@.", &v16, 0x16u);
    }

    v9 = MEMORY[0x1E6996C68];
    v10 = [*(a1 + 32) appDescriptor];
    v11 = [v9 locationWithAccountIdentifier:v5 appDescriptor:v10];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v8)
    {
      v16 = 136315138;
      v17 = "[WFLinkAction getContentDestinationWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEBUG, "%s LNAction returned a nil accountIdentifier.", &v16, 0xCu);
    }

    v12 = MEMORY[0x1E6996C90];
    v13 = *(a1 + 40);
    v11 = [*(a1 + 32) appDescriptor];
    v14 = [v12 locationWithAppDescriptor:v11];
    (*(v13 + 16))(v13, v14, v6);

    v6 = v14;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)executor:(id)a3 didPerformActionWithResult:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__WFLinkAction_executor_didPerformActionWithResult_error___block_invoke;
    v9[3] = &unk_1E837C1E8;
    v9[4] = self;
    v10 = v7;
    v11 = v8;
    [(WFLinkAction *)self showResultIfNeeded:v10 completionHandler:v9];
  }

  else
  {
    [(WFLinkAction *)self finishRunningWithResult:0 error:v8];
  }
}

- (void)executor:(id)a3 needsChoiceWithRequest:(id)a4
{
  v5 = a4;
  v6 = [v5 options];
  v7 = [v6 count];

  if (v7 < 9)
  {
    v11 = [(WFAction *)self userInterface];
    v12 = [v5 dialog];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__WFLinkAction_executor_needsChoiceWithRequest___block_invoke_2;
    v13[3] = &unk_1E83779B0;
    v14 = v5;
    [v11 showLinkChoice:v14 dialog:v12 completionHandler:v13];

    v10 = v14;
  }

  else
  {
    v8 = [v5 dialog];

    if (!v8)
    {
      [(WFLinkAction *)self presentAlertForChoiceRequest:v5 dialogString:0];
      goto LABEL_6;
    }

    v9 = [v5 dialog];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__WFLinkAction_executor_needsChoiceWithRequest___block_invoke;
    v15[3] = &unk_1E837CA78;
    v15[4] = self;
    v16 = v5;
    [v9 getResultWithCompletionHandler:v15];

    v10 = v16;
  }

LABEL_6:
}

void __48__WFLinkAction_executor_needsChoiceWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [a2 captionPrint];
  v4 = [v5 firstObject];
  [v2 presentAlertForChoiceRequest:v3 dialogString:v4];
}

void __48__WFLinkAction_executor_needsChoiceWithRequest___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) requestWithContext:?];
  v4 = [*(a1 + 32) options];
  v5 = [v4 objectAtIndexedSubscript:a2];
  [v6 respondWithOption:v5];
}

- (void)presentAlertForChoiceRequest:(id)a3 dialogString:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
  v20 = v6;
  [v7 setTitle:v6];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [v5 options];
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = MEMORY[0x1E6996C78];
        v14 = [v12 title];
        v15 = [v14 wf_localizedString];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __58__WFLinkAction_presentAlertForChoiceRequest_dialogString___block_invoke;
        v22[3] = &unk_1E837F870;
        v23 = v5;
        v24 = v12;
        v16 = [v13 buttonWithTitle:v15 style:0 handler:v22];
        [v7 addButton:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v17 = [(WFAction *)self userInterface];
  [v17 presentAlert:v7];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4
{
  v5 = a4;
  v6 = [v5 dialog];

  if (v6)
  {
    v7 = [v5 dialog];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__WFLinkAction_executor_needsDisambiguationWithRequest___block_invoke;
    v9[3] = &unk_1E837CA78;
    v9[4] = self;
    v10 = v5;
    [v7 getResultWithCompletionHandler:v9];
  }

  else
  {
    v8 = [v5 parameterName];
    [(WFAppIntentExecutionAction *)self disambiguateParameterForParameterName:v8 request:v5 dialogString:0];
  }
}

void __56__WFLinkAction_executor_needsDisambiguationWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v9 = [v4 parameterName];
  v6 = *(a1 + 40);
  v7 = [v5 captionPrint];

  v8 = [v7 firstObject];
  [v3 disambiguateParameterForParameterName:v9 request:v6 dialogString:v8];
}

- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4
{
  v5 = a4;
  v6 = [v5 dialog];

  if (v6)
  {
    v7 = [v5 dialog];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__WFLinkAction_executor_needsConfirmationWithRequest___block_invoke;
    v9[3] = &unk_1E837CA78;
    v9[4] = self;
    v10 = v5;
    [v7 getResultWithCompletionHandler:v9];
  }

  else
  {
    v8 = [v5 parameterName];
    [(WFAppIntentExecutionAction *)self confirmParameterValueForParameterName:v8 request:v5 dialogString:0];
  }
}

void __54__WFLinkAction_executor_needsConfirmationWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v9 = [v4 parameterName];
  v6 = *(a1 + 40);
  v7 = [v5 captionPrint];

  v8 = [v7 firstObject];
  [v3 confirmParameterValueForParameterName:v9 request:v6 dialogString:v8];
}

- (void)executor:(id)a3 needsValueWithRequest:(id)a4
{
  v5 = a4;
  v6 = [v5 dialog];

  if (v6)
  {
    v7 = [v5 dialog];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__WFLinkAction_executor_needsValueWithRequest___block_invoke;
    v9[3] = &unk_1E837CA78;
    v9[4] = self;
    v10 = v5;
    [v7 getResultWithCompletionHandler:v9];
  }

  else
  {
    v8 = [v5 parameterName];
    [(WFAppIntentExecutionAction *)self askForParameterValueForParameterName:v8 request:v5 dialogString:0];
  }
}

void __47__WFLinkAction_executor_needsValueWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v9 = [v4 parameterName];
  v6 = *(a1 + 40);
  v7 = [v5 captionPrint];

  v8 = [v7 firstObject];
  [v3 askForParameterValueForParameterName:v9 request:v6 dialogString:v8];
}

- (void)performPresentationAction:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(WFAppIntentExecutionAction *)self setDidRunOpensIntent:1];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 valueForKey:@"url"], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(WFAppIntentExecutionAction *)self connection];
    v7 = [(WFAppIntentExecutionAction *)self executorOptions];
    v8 = [v6 executorForAction:v4 options:v7 delegate:self];

    [v8 perform];
  }

  else
  {
    v9 = objc_opt_new();
    v10 = [(WFAppIntentExecutionAction *)self fullyQualifiedLinkActionIdentifier];
    v11 = [v10 bundleIdentifier];
    v12 = [v4 identifier];
    v26 = 0;
    v13 = [v9 actionForBundleIdentifier:v11 andActionIdentifier:v12 error:&v26];
    v14 = v26;

    if (v13)
    {
      os_unfair_lock_lock(&self->_connectionLock);
      v15 = MEMORY[0x1E69ACE60];
      v16 = [(WFAppIntentExecutionAction *)self connectionPolicySignals];
      v17 = [v15 policyWithActionMetadata:v13 signals:v16];

      v25 = v14;
      v18 = [v17 connectionWithError:&v25];
      v19 = v25;

      os_unfair_lock_unlock(&self->_connectionLock);
      if (v18)
      {
        v20 = [v4 parameters];
        v21 = [v17 actionWithParameters:v20];

        v22 = [(WFAppIntentExecutionAction *)self executorOptions];
        v23 = [v18 executorForAction:v21 options:v22 delegate:self];

        [v23 perform];
        v4 = v21;
      }

      else
      {
        v23 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v28 = "[WFLinkAction performPresentationAction:]";
          v29 = 2114;
          v30 = v19;
          _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s Failed to initialize LNConnection: %{public}@.", buf, 0x16u);
        }
      }
    }

    else
    {
      [(WFAppIntentExecutionAction *)self finishRunningWithError:v14];
      v19 = v14;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)performPresentationActionWithResult:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 output];
  v6 = [v5 showOutputAction];

  if (v6)
  {
    v7 = [(WFAction *)self userInterface];
    v8 = [v7 isRunningWithExternalUI];

    if (v8)
    {
      v9 = objc_opt_new();
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = [v6 parameters];
      v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v28;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v28 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v27 + 1) + 8 * i);
            v16 = [v15 value];

            if (v16)
            {
              v17 = [v15 value];
              v18 = [v15 identifier];
              [v9 setObject:v17 forKey:v18];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v12);
      }

      v19 = [(WFAppIntentExecutionAction *)self fullyQualifiedLinkActionIdentifier];
      v20 = [v19 bundleIdentifier];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __52__WFLinkAction_performPresentationActionWithResult___block_invoke;
      v23[3] = &unk_1E8377988;
      v23[4] = self;
      v24 = v6;
      v25 = v9;
      v26 = v4;
      v21 = v9;
      [WFToolInvocation invocationFrom:v24 bundleIdentifier:v20 deviceIdentifier:0 completionHandler:v23];
    }

    else
    {
      [(WFLinkAction *)self performPresentationAction:v6];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __52__WFLinkAction_performPresentationActionWithResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v16 = [*(a1 + 32) userInterface];
    v8 = [*(a1 + 32) fullyQualifiedLinkActionIdentifier];
    v9 = [v8 bundleIdentifier];
    v10 = [*(a1 + 40) identifier];
    v11 = *(a1 + 48);
    v12 = [v5 encodeAndReturnError:0];
    v13 = [*(a1 + 56) output];
    v14 = [v13 showOutputActionOptions];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __52__WFLinkAction_performPresentationActionWithResult___block_invoke_2;
    v17[3] = &unk_1E837C4D8;
    v15 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v15;
    [v16 shouldRunFollowUpActionWithBundleIdentifier:v9 actionIdentifier:v10 parameterValues:v11 encodedToolInvocation:v12 showOutputActionOptions:v14 completionHandler:v17];
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:16 userInfo:0];
    }

    [*(a1 + 32) finishRunningWithError:v7];
  }
}

uint64_t __52__WFLinkAction_performPresentationActionWithResult___block_invoke_2(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 performPresentationAction:*(a1 + 40)];
  }

  else
  {
    return [v3 finishRunningWithError:0];
  }
}

- (void)showResultIfNeeded:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 output];
  v9 = [v8 showOutputAction];
  if (!v9)
  {
    goto LABEL_5;
  }

  if ([(WFAppIntentExecutionAction *)self opensWhenRun])
  {

    goto LABEL_8;
  }

  if ([(WFAppIntentExecutionAction *)self runKind]!= 1)
  {
    v10 = [v6 output];
    v11 = [v10 showOutputActionHint];

    if (v11 == 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_5:
  }

  if (![(WFLinkAction *)self showsWhenRun])
  {
LABEL_9:
    v7[2](v7);
    goto LABEL_10;
  }

  v8 = [(WFAction *)self userInterface];
  if ([v8 isRunningWithSiriUI])
  {
LABEL_8:

    goto LABEL_9;
  }

  v12 = [v6 output];
  v13 = [v12 dialog];
  if (v13)
  {
    goto LABEL_16;
  }

  v13 = [v6 output];
  v14 = [v13 viewSnippet];
  if (v14)
  {

LABEL_16:
    goto LABEL_17;
  }

  v23 = [v6 output];
  v24 = [v23 snippetAction];

  if (!v24)
  {
    goto LABEL_9;
  }

LABEL_17:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__WFLinkAction_showResultIfNeeded_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8377960;
  aBlock[4] = self;
  v15 = v6;
  v28 = v15;
  v29 = v7;
  v16 = _Block_copy(aBlock);
  v17 = [v15 output];
  v18 = [v17 snippetAction];

  if (v18)
  {
    v19 = [v15 output];
    v20 = [v19 snippetAction];
    v21 = [(WFAppIntentExecutionAction *)self fullyQualifiedLinkActionIdentifier];
    v22 = [v21 bundleIdentifier];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __53__WFLinkAction_showResultIfNeeded_completionHandler___block_invoke_4;
    v25[3] = &unk_1E837CA50;
    v26 = v16;
    [WFToolInvocation invocationFrom:v20 bundleIdentifier:v22 deviceIdentifier:0 completionHandler:v25];
  }

  else
  {
    (*(v16 + 2))(v16, 0);
  }

LABEL_10:
}

void __53__WFLinkAction_showResultIfNeeded_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actionIsExecutedFromAnotherDevice];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53__WFLinkAction_showResultIfNeeded_completionHandler___block_invoke_2;
    v16[3] = &unk_1E837C898;
    v16[4] = v5;
    [v5 getAlertForLinkResult:v6 encodedSnippetActionToolInvocation:v3 handler:v7 completionHandler:v16];
  }

  else
  {
    v8 = [v5 userInterface];
    v9 = *(a1 + 40);
    v10 = [v9 output];
    v11 = [v10 dialog];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__WFLinkAction_showResultIfNeeded_completionHandler___block_invoke_3;
    v13[3] = &unk_1E8377938;
    v12 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v12;
    v15 = *(a1 + 48);
    [v8 showLinkResult:v9 dialog:v11 encodedSnippetActionToolInvocation:v3 completionHandler:v13];
  }
}

void __53__WFLinkAction_showResultIfNeeded_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 encodeAndReturnError:0];
  (*(v2 + 16))(v2, v3);
}

void __53__WFLinkAction_showResultIfNeeded_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 userInterface];
  [v4 presentAlert:v3];
}

uint64_t __53__WFLinkAction_showResultIfNeeded_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    [*(a1 + 32) performPresentationActionWithResult:*(a1 + 40)];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)finishRunningWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 output];
  v9 = [v8 value];

  if (v9)
  {
    v10 = [v9 valueType];
    v11 = [(WFAppIntentExecutionAction *)self fullyQualifiedLinkActionIdentifier];
    v12 = [v11 bundleIdentifier];
    v13 = [(WFAppIntentExecutionAction *)self outputOriginDisplayableAppBundleIdentifier];
    v14 = [v10 wf_contentCollectionFromLinkValue:v9 appBundleIdentifier:v12 displayedBundleIdentifier:v13 disclosureLevel:{-[WFAction outputDisclosureLevel](self, "outputDisclosureLevel")}];
    [(WFAction *)self setOutput:v14];
  }

  v15 = [v6 output];
  v16 = [v15 undoContext];
  [(WFAppIntentExecutionAction *)self setUndoContext:v16];

  v17 = [v6 output];
  v18 = [v17 attribution];
  [(WFAppIntentExecutionAction *)self setAttribution:v18];

  v19 = [v6 output];
  v20 = [v19 showOutputAction];

  if (v20)
  {
    v21 = [(WFAppIntentExecutionAction *)self opensWhenRun];
    if ([(WFAppIntentExecutionAction *)self runKind]== 1)
    {
      if (v21)
      {
LABEL_6:
        [(WFLinkAction *)self performPresentationActionWithResult:v6];
        goto LABEL_12;
      }
    }

    else
    {
      v22 = [v6 output];
      v23 = [v22 showOutputActionHint];

      if (v23)
      {
        v24 = [v6 output];
        v25 = [v24 showOutputActionHint];

        if (v25 == 1)
        {
          goto LABEL_6;
        }
      }

      else if (v21)
      {
        goto LABEL_6;
      }
    }
  }

  if (v7)
  {
    [(WFAppIntentExecutionAction *)self finishRunningWithError:v7];
  }

  else
  {
    v26 = [(WFAppIntentExecutionAction *)self metadata];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __46__WFLinkAction_finishRunningWithResult_error___block_invoke;
    v27[3] = &unk_1E837E5E0;
    v27[4] = self;
    [(WFAppIntentExecutionAction *)self showChronoControlIfPossibleForIntent:v26 completionHandler:v27];
  }

LABEL_12:
}

- (WFLinkAction)linkActionWithSerializedParameters
{
  v3 = [(WFLinkAction *)self currentParameterStates];
  v4 = [(WFAppIntentExecutionAction *)self linkActionWithParameterStates:v3 usingConnectionPolicy:1];

  return v4;
}

- (void)updateParameterVisibility
{
  v2 = self;
  v46 = *MEMORY[0x1E69E9840];
  v3 = [(WFAppIntentExecutionAction *)self actionSummary];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 summaryString];
    v6 = [v5 parameterIdentifiers];
    if ([v6 count])
    {
    }

    else
    {
      v7 = [v4 otherParameterIdentifiers];
      v8 = [v7 count];

      if (!v8)
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        obj = [(WFAction *)v2 parameters];
        v30 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v41;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v41 != v32)
              {
                objc_enumerationMutation(obj);
              }

              [*(*(&v40 + 1) + 8 * i) setHidden:0];
            }

            v31 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
          }

          while (v31);
        }

        goto LABEL_17;
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = [(WFAppIntentExecutionAction *)v2 metadata];
    v10 = [v9 parameters];

    obj = v10;
    v11 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      v34 = v2;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [*(*(&v36 + 1) + 8 * j) name];
          v16 = [(WFAction *)v2 parameterForKey:v15];

          v17 = [v4 summaryString];
          v18 = [v17 parameterIdentifiers];
          v19 = [v16 key];
          if ([v18 containsObject:v19])
          {
            [v16 setHidden:0];
          }

          else
          {
            [v4 otherParameterIdentifiers];
            v20 = v12;
            v21 = v13;
            v23 = v22 = v4;
            v24 = [v16 key];
            [v16 setHidden:{objc_msgSend(v23, "containsObject:", v24) ^ 1}];

            v4 = v22;
            v13 = v21;
            v12 = v20;
            v2 = v34;
          }

          if ([(WFAction *)v2 shouldInsertExpandingParameterForParameter:v16])
          {
            v25 = MEMORY[0x1E696AEC0];
            v26 = [v16 key];
            v27 = [v25 stringWithFormat:@"Show-%@", v26];

            v28 = [(WFAction *)v2 parameterForKey:v27];
            [v28 setHidden:{objc_msgSend(v16, "isHidden")}];
          }

          [v16 attributesDidChange];
        }

        v12 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v12);
    }

LABEL_17:
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)forceUpdateParameterVisibility
{
  v3 = [(WFLinkAction *)self linkActionWithSerializedParametersUsingConnectionPolicy:0];
  v4 = [(WFLinkAction *)self updateParameterSummaryIfNeededWithLinkAction:v3];

  if (!v4)
  {

    [(WFLinkAction *)self updateParameterVisibility];
  }
}

- (id)currentParameterStates
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(WFAction *)self parameters];
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 key];
        v12 = [(WFAction *)self parameterStateForKey:v11];
        v13 = [v10 key];
        [v4 if_setValueIfNonNil:v12 forKey:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)generatedResourceNodes
{
  v34 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = WFLinkAction;
  v3 = [(WFAction *)&v27 generatedResourceNodes];
  v22 = [v3 mutableCopy];

  v4 = [(WFLinkAction *)self parameterDefinitions];
  v5 = [v4 if_compactMap:&__block_literal_global_320];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v31[0] = @"WFResourceClass";
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v31[1] = @"RequiredResources";
        v32[0] = v12;
        v28[0] = @"WFResourceClass";
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v29[0] = v14;
        v29[1] = v10;
        v28[1] = @"WFParameterKey";
        v28[2] = @"WFParameterValue";
        v29[2] = &unk_1F4A99D70;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
        v30 = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        v32[1] = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];

        v18 = [[WFResourceNode alloc] initWithDefinition:v17];
        [v22 addObject:v18];
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v22;
}

id __38__WFLinkAction_generatedResourceNodes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKey:@"Class"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = NSClassFromString(v5);
  if (v6 == objc_opt_class())
  {
    v8 = [v2 objectForKey:@"Key"];
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

    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)showsWhenRun
{
  v2 = [(WFLinkAction *)self showsWhenRunIfApplicable];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSNumber)showsWhenRunIfApplicable
{
  v3 = [(WFAction *)self parameterForKey:@"ShowWhenRun"];
  v4 = v3;
  if (v3 && ([v3 isHidden] & 1) == 0 && (objc_msgSend(v4, "resourceManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "resourcesRequiredForDisplayAvailable"), v5, v6))
  {
    v7 = [(WFAction *)self parameterValueForKey:@"ShowWhenRun" ofClass:objc_opt_class()];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)outputMeasurementUnitType
{
  outputMeasurementUnitType = self->_outputMeasurementUnitType;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (outputMeasurementUnitType != v4)
  {
    if (outputMeasurementUnitType)
    {
      outputMeasurementUnitType = outputMeasurementUnitType;
      v5 = outputMeasurementUnitType;
      goto LABEL_10;
    }

    v6 = [(WFAppIntentExecutionAction *)self metadata];
    v7 = [v6 outputType];
    v8 = [v7 wf_objectValueType];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [MEMORY[0x1E69E0BE8] unitTypeFromLinkMeasurementUnitType:{objc_msgSend(v8, "unitType")}];

        if (v5)
        {
          v9 = v5;
        }

        else
        {
          v9 = [MEMORY[0x1E695DFB0] null];
        }

        outputMeasurementUnitType = self->_outputMeasurementUnitType;
        self->_outputMeasurementUnitType = v9;
        goto LABEL_10;
      }
    }

    outputMeasurementUnitType = 0;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)serializedParametersForDonatedIntent:(id)a3 allowDroppingUnconfigurableValues:(BOOL)a4
{
  v6 = a3;
  v7 = [(WFAppIntentExecutionAction *)self metadata];
  v8 = [v7 customIntentClassName];
  v9 = [v6 _className];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = [(WFAction *)self parametersByKey];
    v12 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
    v13 = WFSerializedParametersForDonatedIntent(v6, 1, a4, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)setParameterState:(id)a3 forKey:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WFAction *)self parameterStateForKey:v7];
  v9 = [v8 isEqual:v6];

  v33.receiver = self;
  v33.super_class = WFLinkAction;
  v10 = [(WFAction *)&v33 setParameterState:v6 forKey:v7];
  v11 = v10;
  if (!v6 || (v9 & 1) == 0)
  {
    v24 = v10;
    v12 = [(WFAppIntentExecutionAction *)self dependentParameterIdentifiers];
    v13 = [v12 objectForKeyedSubscript:v7];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          v20 = [(WFAction *)self parameterForKey:v19];
          if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __41__WFLinkAction_setParameterState_forKey___block_invoke;
            v25[3] = &unk_1E83778F0;
            v25[4] = self;
            v26 = v20;
            v27 = v19;
            v28 = v26;
            [(WFAppIntentExecutionAction *)self loadDefaultSerializedRepresentationForEnumeration:v26 completionHandler:v25];
          }

          else
          {
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v16);
    }

    v21 = [(WFAppIntentExecutionAction *)self dependentParameterIdentifiers];
    [v21 removeAllObjects];

    v11 = v24;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

void __41__WFLinkAction_setParameterState_forKey___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) createStateForParameter:*(a1 + 40) fromSerializedRepresentation:a2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__WFLinkAction_setParameterState_forKey___block_invoke_2;
  v6[3] = &unk_1E837F848;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v4 = *(a1 + 56);
  v8 = *(a1 + 48);
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __41__WFLinkAction_setParameterState_forKey___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setParameterState:*(a1 + 40) forKey:*(a1 + 48)];
  v2 = *(a1 + 56);

  return [v2 attributesDidChange];
}

- (BOOL)updateParameterSummaryIfNeededWithLinkAction:(id)a3
{
  v4 = a3;
  v5 = [(WFAppIntentExecutionAction *)self metadata];
  v6 = [v5 actionConfiguration];
  v7 = [(WFAppIntentExecutionAction *)self actionConfigurationContext];
  v8 = [v6 actionConfigurationByEvaluatingAction:v4 context:v7];

  v9 = v8;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [(WFAppIntentExecutionAction *)self actionSummary];
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  if (!v11)
  {
    v16 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v14 = [(WFAppIntentExecutionAction *)self actionSummary];
  v15 = [v14 isEqual:v11];

  if ((v15 & 1) == 0)
  {
LABEL_10:
    [(WFAppIntentExecutionAction *)self setActionSummary:v11];
    v13 = [v11 localizedFormatStringForLocaleIdentifier:0];
    if (v13)
    {
      v17 = [[WFActionParameterSummary alloc] initWithLocalizedString:v13];
      [(WFAppIntentExecutionAction *)self setParameterSummary:v17];
    }

    [(WFLinkAction *)self updateParameterVisibility];
    v16 = 1;
    goto LABEL_14;
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (void)updateParameterSummaryIfNeeded:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__WFLinkAction_updateParameterSummaryIfNeeded___block_invoke;
  aBlock[3] = &unk_1E83779D8;
  aBlock[4] = self;
  v5 = v4;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(WFAction *)self toolInvocation];

  if (v7)
  {
    v8 = [(WFAction *)self input];
    v9 = [(WFAppIntentExecutionAction *)self actionArchivingQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__WFLinkAction_updateParameterSummaryIfNeeded___block_invoke_2;
    v11[3] = &unk_1E8378300;
    v11[4] = self;
    v12 = v6;
    [(WFAction *)self processParametersWithoutAskingForValuesWithInput:v8 workQueue:v9 completionHandler:v11];
  }

  else
  {
    v10 = [(WFLinkAction *)self linkActionWithSerializedParameters];
    (*(v6 + 2))(v6, v10, 0);
  }
}

void __47__WFLinkAction_updateParameterSummaryIfNeeded___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(a1 + 32) updateParameterSummaryIfNeededWithLinkAction:v5];
    v8 = *(a1 + 40);
    v9.receiver = *(a1 + 32);
    v9.super_class = WFLinkAction;
    objc_msgSendSuper2(&v9, sel_updateParameterSummaryIfNeeded_, v8);
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:16 userInfo:MEMORY[0x1E695E0F8]];
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __47__WFLinkAction_updateParameterSummaryIfNeeded___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = getWFToolKitExecutionLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[WFLinkAction updateParameterSummaryIfNeeded:]_block_invoke_2";
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Failed to process all parameters when updating parameter summary, this is not an fatal error continuing %@", buf, 0x16u);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__WFLinkAction_updateParameterSummaryIfNeeded___block_invoke_291;
  v11[3] = &unk_1E83778C8;
  v9 = *(a1 + 32);
  v12 = *(a1 + 40);
  [v9 getLinkActionWithProcessedParameters:v6 completionHandler:v11];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v10;
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (WFProgressLocalizedDescriptionContext == a6)
      {
        v14 = [v12 localizedDescription];
        v15 = [(WFAction *)self progress];
        [v15 setLocalizedDescription:v14];
      }

      else
      {
        v13 = v12;
        if (WFProgressLocalizedAdditionalDescriptionContext != a6)
        {
          goto LABEL_11;
        }

        v14 = [v12 localizedAdditionalDescription];
        v15 = [(WFAction *)self progress];
        [v15 setLocalizedAdditionalDescription:v14];
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
      v14 = v12;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

LABEL_11:
}

- (void)setExecutorProgress:(id)a3
{
  v4 = a3;
  [(WFLinkAction *)self deregisterExecutorProgressListeners];
  executorProgress = self->_executorProgress;
  self->_executorProgress = v4;
  v6 = v4;

  v7 = [(WFLinkAction *)self executorProgress];
  [v7 addObserver:self forKeyPath:@"localizedDescription" options:5 context:WFProgressLocalizedDescriptionContext];

  v8 = [(WFLinkAction *)self executorProgress];
  [v8 addObserver:self forKeyPath:@"localizedAdditionalDescription" options:5 context:WFProgressLocalizedAdditionalDescriptionContext];
}

- (void)runSnippetActionWithLinkAction:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 systemProtocols];
  v6 = [MEMORY[0x1E69ACA50] snippetProtocol];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [(WFAppIntentExecutionAction *)self fullyQualifiedLinkActionIdentifier];
    v9 = [v8 bundleIdentifier];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__WFLinkAction_runSnippetActionWithLinkAction___block_invoke;
    v12[3] = &unk_1E83778A0;
    v12[4] = self;
    v13 = v4;
    [WFToolInvocation invocationFrom:v13 bundleIdentifier:v9 deviceIdentifier:0 completionHandler:v12];
  }

  else
  {
    v10 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v15 = "[WFLinkAction runSnippetActionWithLinkAction:]";
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Trying to run Snippet Action with a non SnippetIntent", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __47__WFLinkAction_runSnippetActionWithLinkAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 userInterface];
  v6 = *(a1 + 40);
  v7 = [v4 encodeAndReturnError:0];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__WFLinkAction_runSnippetActionWithLinkAction___block_invoke_2;
  v8[3] = &unk_1E8377878;
  v8[4] = *(a1 + 32);
  [v5 showSnippetLinkAction:v6 encodedSnippetActionToolInvocation:v7 completionHandler:v8];
}

- (void)runAsynchronouslyWithLinkAction:(id)a3
{
  v64[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(WFAppIntentExecutionAction *)self actionIsExecutedFromAnotherDevice])
  {
    if (-[WFAppIntentExecutionAction opensWhenRun](self, "opensWhenRun") || (-[WFAction disabledOnPlatforms](self, "disabledOnPlatforms"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 containsObject:@"Watch"], v6, v7))
    {
      v8 = WFLocalizedString(@"Sorry, you can’t do that here. Try it on your iPhone instead.");
      v9 = MEMORY[0x1E696ABC0];
      v63[0] = *MEMORY[0x1E696A588];
      v10 = MEMORY[0x1E696AEC0];
      v11 = WFLocalizedString(@"Could Not Run “%@”");
      v12 = [(WFAction *)self localizedName];
      v13 = [v10 localizedStringWithFormat:v11, v12];
      v63[1] = *MEMORY[0x1E696A578];
      v64[0] = v13;
      v64[1] = v8;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
      v15 = [v9 errorWithDomain:@"WFActionErrorDomain" code:15 userInfo:v14];

      [(WFAppIntentExecutionAction *)self finishRunningWithError:v15];
LABEL_34:

      goto LABEL_37;
    }
  }

  v16 = [(WFAction *)self userInterface];
  if (![v16 isRunningWithSiriUI])
  {

    goto LABEL_10;
  }

  v17 = [(WFAppIntentExecutionAction *)self skipExecutingInSiri];

  if (v17)
  {
    goto LABEL_10;
  }

  v18 = objc_alloc(MEMORY[0x1E69E0CD0]);
  v19 = [(WFAppIntentExecutionAction *)self appDescriptor];
  v20 = [v19 bundleIdentifier];
  v21 = [(WFAction *)self localizedName];
  v22 = [v18 initWithAction:v5 bundleIdentifier:v20 nameOverride:v21 showWhenRun:{-[WFLinkAction showsWhenRun](self, "showsWhenRun")}];

  v23 = [(WFAction *)self userInterface];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __48__WFLinkAction_runAsynchronouslyWithLinkAction___block_invoke;
  v61[3] = &unk_1E8377850;
  v61[4] = self;
  v62 = v5;
  LOBYTE(v20) = [v23 performSiriRequest:v22 completionHandler:v61];

  if ((v20 & 1) == 0)
  {
LABEL_10:
    v8 = [(WFAppIntentExecutionAction *)self connection];
    v24 = [MEMORY[0x1E69E0A90] currentDevice];
    v25 = [v24 hasSystemAperture];

    v26 = [(WFLinkAction *)self showsWhenRunIfApplicable];
    v27 = [v26 BOOLValue];

    if (v27 && (v25 & 1) == 0)
    {
      v28 = [(WFAction *)self runningDelegate];
      [v28 action:self didDecideRunningProgressIsAllowed:0];
    }

    v29 = [(WFAppIntentExecutionAction *)self sessionKitSessionInvocationType];

    if (!v29)
    {
      v15 = [(WFAction *)self runningDelegate];
      [v15 action:self didDecideRunningProgressIsAllowed:1];
      goto LABEL_27;
    }

    v30 = [(WFAction *)self sessionKitSessionConfiguration];

    if (v30)
    {
      v31 = [(WFAction *)self sessionKitSessionConfiguration];
      v15 = [v31 bundleIdentifier];

      if (!v15)
      {
        goto LABEL_39;
      }

LABEL_25:
      v43 = [(WFAction *)self sessionKitToastDurationsPerRunSourceDefinition];
      v44 = [[WFActionSessionKitSessionConfiguration alloc] initWithBundleIdentifier:v15 toastDurationPerRunSource:v43];
      v60 = 0;
      v45 = [(WFAction *)self allowSessionKitSessionsIfNeededWithConfiguration:v44 error:&v60];
      v46 = v60;
      v47 = v46;
      if (!v45)
      {
        [(WFAppIntentExecutionAction *)self finishRunningWithError:v46];

        goto LABEL_34;
      }

LABEL_27:
      v48 = [v5 systemProtocols];
      v49 = [MEMORY[0x1E69ACA50] snippetProtocol];
      if ([v48 containsObject:v49])
      {
        v50 = [(WFLinkAction *)self showsWhenRun];

        if (v50)
        {
          [(WFLinkAction *)self runSnippetActionWithLinkAction:v5];
LABEL_37:

          goto LABEL_38;
        }
      }

      else
      {
      }

      v51 = [(WFAppIntentExecutionAction *)self executorOptions];
      v52 = [v8 executorForAction:v5 options:v51 delegate:self];

      if (v52)
      {
        v53 = [v52 progress];
        [(WFLinkAction *)self setExecutorProgress:v53];

        v54 = [(WFAction *)self progress];
        v55 = [(WFLinkAction *)self executorProgress];
        [v54 addChild:v55 withPendingUnitCount:1];

        [v52 perform];
      }

      else
      {
        v56 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:16 userInfo:0];
        [(WFAppIntentExecutionAction *)self finishRunningWithError:v56];
      }

      goto LABEL_37;
    }

    v32 = [(WFAppIntentExecutionAction *)self metadata];
    v33 = [v32 systemProtocols];
    v34 = [MEMORY[0x1E69ACA50] sessionStartingProtocol];
    v35 = [v33 containsObject:v34];

    if (v35)
    {
      v36 = [v8 bundleIdentifier];
    }

    else
    {
      v37 = [(WFAppIntentExecutionAction *)self metadata];
      v38 = [v37 systemProtocols];
      v39 = [MEMORY[0x1E69ACA50] audioStartingProtocol];
      if ([v38 containsObject:v39])
      {
      }

      else
      {
        v40 = [(WFAppIntentExecutionAction *)self metadata];
        v41 = [v40 systemProtocols];
        v42 = [MEMORY[0x1E69ACA50] audioRecordingProtocol];
        v59 = [v41 containsObject:v42];

        if (!v59)
        {
          goto LABEL_39;
        }
      }

      v36 = *MEMORY[0x1E69E0EB0];
    }

    v15 = v36;
    if (v36)
    {
      goto LABEL_25;
    }

LABEL_39:
    v58 = [MEMORY[0x1E696AAA8] currentHandler];
    [v58 handleFailureInMethod:a2 object:self file:@"WFLinkAction.m" lineNumber:389 description:{@"Intent is expected to start live activity, but we couldn't figure out what process will"}];

    v15 = 0;
    goto LABEL_25;
  }

LABEL_38:

  v57 = *MEMORY[0x1E69E9840];
}

void __48__WFLinkAction_runAsynchronouslyWithLinkAction___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 actionOutput];
    if (v4)
    {
    }

    else
    {
      v9 = [v3 error];
      v10 = [v9 wf_isRequiresShortcutsJrError];

      if (v10)
      {
        v11 = *(a1 + 32);
        v12 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
        [v11 finishRunningWithError:v12];

        v8 = v3;
        goto LABEL_14;
      }
    }

    v13 = [v3 actionOutput];
    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x1E69AD030]);
      v15 = *(a1 + 40);
      v16 = [v3 actionOutput];
      v17 = [v14 initWithAction:v15 output:v16 actionAppContext:0 predictions:MEMORY[0x1E695E0F0]];
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a1 + 32);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __48__WFLinkAction_runAsynchronouslyWithLinkAction___block_invoke_270;
    v21[3] = &unk_1E837C1E8;
    v21[4] = v18;
    v22 = v17;
    v23 = v3;
    v8 = v3;
    v19 = v17;
    [v18 showResultIfNeeded:v19 completionHandler:v21];
  }

  else
  {

    v5 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v25 = "[WFLinkAction runAsynchronouslyWithLinkAction:]_block_invoke";
      v26 = 2112;
      v27 = objc_opt_class();
      v6 = v27;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Received unexpected interaction response of type %@", buf, 0x16u);
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    [v7 finishRunningWithError:v8];
  }

LABEL_14:

  v20 = *MEMORY[0x1E69E9840];
}

void __48__WFLinkAction_runAsynchronouslyWithLinkAction___block_invoke_270(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) error];
  [v1 finishRunningWithResult:v2 error:v3];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = [(WFAction *)self processedParameters];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__WFLinkAction_runAsynchronouslyWithInput___block_invoke;
  v5[3] = &unk_1E837B428;
  v5[4] = self;
  [(WFAppIntentExecutionAction *)self getLinkActionWithProcessedParameters:v4 completionHandler:v5];
}

void __43__WFLinkAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = [[WFActionWillRunLNActionTestingEvent alloc] initWithAction:*(a1 + 32) lnAction:v5];
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__WFLinkAction_runAsynchronouslyWithInput___block_invoke_2;
    v8[3] = &unk_1E837C698;
    v8[4] = v7;
    v9 = v5;
    [v7 handleTestingEvent:v6 completionHandler:v8];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:a3];
  }
}

uint64_t __43__WFLinkAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 runAsynchronouslyWithLinkAction:*(a1 + 40)];
  }

  else
  {
    return [v3 finishRunningWithError:?];
  }
}

- (id)localizedDiscontinuedDescriptionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAppIntentExecutionAction *)self metadata];
  v6 = [v5 deprecationMetadata];

  if (v6)
  {
    v7 = [v6 messageText];
    v8 = [v4 locale];
    v9 = [v8 localeIdentifier];
    v10 = [v7 localizedStringForLocaleIdentifier:v9];

    v11 = [(WFAction *)self definition];
    v12 = [v11 objectForKey:@"DiscontinuedReplacementTitle"];

    if (v12)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = WFLocalizedStringResourceWithKey(@"Please use “%@” instead.", @"Please use “%@” instead.");
      v15 = [v4 localize:v14];
      [v4 locale];
      v17 = v16 = v10;
      v18 = [v17 localeIdentifier];
      v19 = [v12 localizedStringForLocaleIdentifier:v18];
      v20 = [v13 localizedStringWithFormat:v15, v19];

      v10 = v16;
      v21 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@ %@", v16, v20];
    }

    else
    {
      v21 = v10;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)localizedCategoryWithContext:(id)a3
{
  v4 = a3;
  if (self->_isBuiltIn)
  {
    v14.receiver = self;
    v14.super_class = WFLinkAction;
    v5 = [(WFAction *)&v14 localizedCategoryWithContext:v4];
  }

  else
  {
    v6 = [(WFAppIntentExecutionAction *)self metadata];
    v7 = [v6 descriptionMetadata];
    v8 = [v7 categoryName];
    v9 = [v8 title];

    if (v9)
    {
      v10 = [v4 locale];
      v11 = [v10 localeIdentifier];
      v5 = [v9 localizedStringForLocaleIdentifier:v11];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = WFLinkAction;
      v5 = [(WFAction *)&v13 localizedCategoryWithContext:v4];
    }
  }

  return v5;
}

- (id)localizedKeywordsWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAppIntentExecutionAction *)self metadata];
  v6 = [v5 descriptionMetadata];
  v7 = [v6 searchKeywords];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__WFLinkAction_localizedKeywordsWithContext___block_invoke;
  v11[3] = &unk_1E837D6B8;
  v12 = v4;
  v8 = v4;
  v9 = [v7 if_map:v11];

  return v9;
}

id __45__WFLinkAction_localizedKeywordsWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 locale];
  v5 = [v4 localeIdentifier];
  v6 = [v3 localizedStringForLocaleIdentifier:v5];

  return v6;
}

- (id)localizedDefaultOutputNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAppIntentExecutionAction *)self metadata];
  v6 = [v5 descriptionMetadata];
  v7 = [v6 resultValueName];

  if (v7)
  {
    v8 = [v4 locale];

    v9 = [v8 localeIdentifier];
    v10 = [v7 localizedStringForLocaleIdentifier:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WFLinkAction;
    v10 = [(WFAppIntentExecutionAction *)&v12 localizedDefaultOutputNameWithContext:v4];
  }

  return v10;
}

- (id)localizedDescriptionSummaryWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 localizationUsage];
  v6 = *MEMORY[0x1E69E1070];

  v7 = [(WFAppIntentExecutionAction *)self metadata];
  v8 = [v7 descriptionMetadata];
  v9 = [v8 descriptionText];

  if (v5 == v6)
  {
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v9;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v4 locale];

    v14 = [v13 localeIdentifier];
    v15 = [v12 localizedStringForLocaleIdentifier:v14 kind:*MEMORY[0x1E69AC260]];
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = v10;

    v13 = [v4 locale];

    v14 = [v13 localeIdentifier];
    v15 = [v12 localizedStringForLocaleIdentifier:v14];
  }

  v16 = v15;

  return v16;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAppIntentExecutionAction *)self metadata];
  v6 = [v5 title];
  v7 = [v4 locale];

  v8 = [v7 localeIdentifier];
  v9 = [v6 localizedStringForLocaleIdentifier:v8];

  return v9;
}

- (NSString)developerSpecifiedTitle
{
  v2 = [(WFAppIntentExecutionAction *)self metadata];
  v3 = [v2 title];
  v4 = [v3 localizedStringForLocaleIdentifier:0];

  return v4;
}

- (id)supportedAppIdentifiers
{
  v7.receiver = self;
  v7.super_class = WFLinkAction;
  v3 = [(WFAction *)&v7 supportedAppIdentifiers];
  v4 = v3;
  if (self->_isBuiltIn || ([v3 containsObject:*MEMORY[0x1E69E0F48]] & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (id)iconName
{
  if (self->_isBuiltIn)
  {
    v4 = 0;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = WFLinkAction;
    v4 = [(WFAction *)&v6 iconName];
  }

  return v4;
}

- (id)icon
{
  v3 = [(WFAppIntentExecutionAction *)self metadata];
  v4 = [v3 descriptionMetadata];
  v5 = [v4 icon];

  if (!v5)
  {
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = v5;
    v5 = 0;
    goto LABEL_8;
  }

  v6 = [v5 bundleURL];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E696AAE8]);
    v8 = [v5 bundleURL];
    v9 = [v7 _initUniqueWithURL:v8];

    v10 = MEMORY[0x1E69E0B58];
    v11 = [v5 name];
    v12 = [v10 imageNamed:v11 inBundle:v9];

    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E69E0B60]) initWithImage:v12];

      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_9:
  v15.receiver = self;
  v15.super_class = WFLinkAction;
  v13 = [(WFAction *)&v15 icon];
LABEL_10:

  return v13;
}

- (void)wasAddedToWorkflow:(id)a3
{
  v4.receiver = self;
  v4.super_class = WFLinkAction;
  [(WFAction *)&v4 wasAddedToWorkflow:a3];
  [(WFLinkAction *)self forceUpdateParameterVisibility];
  [(WFAction *)self preloadDefaultParameterStatesIfNecessaryWithCompletionHandler:&__block_literal_global_26990];
}

void __35__WFLinkAction_wasAddedToWorkflow___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[WFLinkAction wasAddedToWorkflow:]_block_invoke";
    v7 = 2114;
    v8 = v2;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Failed to preload default parameter states: %{public}@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (WFLinkAction)initWithIdentifier:(id)a3 metadata:(id)a4 definition:(id)a5 serializedParameters:(id)a6 appIntentDescriptor:(id)a7 fullyQualifiedActionIdentifier:(id)a8
{
  v14 = a4;
  v19.receiver = self;
  v19.super_class = WFLinkAction;
  v15 = [(WFAppIntentExecutionAction *)&v19 initWithIdentifier:a3 metadata:v14 definition:a5 serializedParameters:a6 appIntentDescriptor:a7 fullyQualifiedActionIdentifier:a8];
  if (v15)
  {
    v16 = [v14 shortcutsActionMetadata];
    v15->_isBuiltIn = v16 != 0;

    [(WFAction *)v15 addEventObserver:v15];
    v17 = v15;
  }

  return v15;
}

+ (id)inputParameterMetadataWithActionMetadata:(id)a3
{
  v3 = a3;
  v4 = [v3 parameters];
  v5 = [v4 if_firstObjectPassingTest:&__block_literal_global_225_27000];

  if (!v5)
  {
    v6 = [v3 parameters];
    v7 = [v6 if_objectsPassingTest:&__block_literal_global_227];

    if ([v7 count] == 1)
    {
      v8 = [v7 firstObject];

      goto LABEL_6;
    }
  }

  v8 = v5;
LABEL_6:

  return v8;
}

BOOL __57__WFLinkAction_inputParameterMetadataWithActionMetadata___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueType];
  v4 = [v3 wf_entityValueType];
  if (v4)
  {
    v5 = [v2 inputConnectionBehavior] != 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)providedActionWithIdentifier:(id)a3 serializedParameters:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = +[WFLinkActionProvider sharedProvider];
  v8 = [[WFActionRequest alloc] initWithActionIdentifier:v6 serializedParameters:v5];

  v15[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v7 createActionsForRequests:v9];

  v10 = [(WFActionRequest *)v8 result];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)requestUnlock:(id)a3
{
  v4 = a3;
  if ([(WFLinkAction *)self usesCompactUnlockService])
  {
    v5 = objc_alloc_init(WFCompactUnlockService);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__WFLinkAction_RequestUnlock__requestUnlock___block_invoke;
    v7[3] = &unk_1E837D770;
    v8 = v5;
    v9 = v4;
    v6 = v5;
    [(WFCompactUnlockService *)v6 requestUnlockIfNeeded:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFLinkAction;
    [(WFAction *)&v10 requestUnlock:v4];
  }
}

void __45__WFLinkAction_RequestUnlock__requestUnlock___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4, 1, 0);
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] userCancelledError];
    (*(v2 + 16))(v2, 0, v5);
  }
}

- (void)fetchSuggestedEntitiesForParameterWithKey:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFAction *)self parameterForKey:v6];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [(WFAction *)self parameterStateForKey:v6];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v11 variable];

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = [v14 collectionFilter];

    v16 = [v15 namedQueryReference];

    if (v16)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __90__WFLinkAction_NamedQueries__fetchSuggestedEntitiesForParameterWithKey_completionHandler___block_invoke;
      v17[3] = &unk_1E837D448;
      v19 = v7;
      v18 = v8;
      [(WFAppIntentExecutionAction *)self loadPossibleStatesForEnumeration:v18 searchTerm:0 optionsProviderReference:v16 completionHandler:v17];
    }

    else
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }

  else
  {

    (*(v7 + 2))(v7, 0, 0);
  }
}

void __90__WFLinkAction_NamedQueries__fetchSuggestedEntitiesForParameterWithKey_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 allItems];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __90__WFLinkAction_NamedQueries__fetchSuggestedEntitiesForParameterWithKey_completionHandler___block_invoke_2;
    v7[3] = &unk_1E837D420;
    v8 = *(a1 + 32);
    v4 = [v3 if_compactMap:v7];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

id __90__WFLinkAction_NamedQueries__fetchSuggestedEntitiesForParameterWithKey_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [*(a1 + 32) accessoryImageForPossibleState:v5];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if ([v6 representationType] == 4)
    {
      v9 = objc_alloc(MEMORY[0x1E69E0D70]);
      v10 = [v7 symbolName];
      v11 = objc_alloc(MEMORY[0x1E69E0B48]);
      v12 = [MEMORY[0x1E69E09E0] clearColor];
      v13 = [v11 initWithColor:v12];
      v14 = [v9 initWithSymbolName:v10 background:v13];
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E69E0B60]) initWithImage:v7];
    }

    v15 = objc_alloc(MEMORY[0x1E69E09E8]);
    v16 = [v5 value];
    v17 = [v16 value];
    v18 = WFSerializedIdentifierFromLinkValue(v17);
    v19 = [*(a1 + 32) localizedLabelForPossibleState:v5];
    v20 = [v5 serializedRepresentation];
    v8 = [v15 initWithIdentifier:v18 name:v19 entryIcon:v14 accessoryIcon:0 serializedParameterState:v20];
  }

  return v8;
}

- (BOOL)canOfferSuggestionsForParameterWithKey:(id)a3
{
  v3 = [(WFAction *)self parameterStateForKey:a3];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 variable];

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

  v9 = [v8 collectionFilter];

  v10 = [v9 namedQueryReference];
  LOBYTE(v8) = v10 != 0;

  return v8;
}

@end