@interface WFAppIntentExecutionAction
- (BOOL)actionIsExecutedFromAnotherDevice;
- (BOOL)defaultParameterSummaryContainsRequiredParameters;
- (BOOL)enumeration:(id)a3 shouldStripSenstitiveContentFromValue:(id)a4;
- (BOOL)isApprovedForPublicShortcutsDrawer;
- (BOOL)opensWhenRun;
- (BOOL)progressIsPersistentInSystemApertureForExecutor:(id)a3;
- (BOOL)requiresUnlock;
- (BOOL)shouldLoadDefaultStateAsynchronouslyForEnumeration:(id)a3;
- (BOOL)valueShouldStripSensitiveContent:(id)a3;
- (BOOL)visibleForUse:(int64_t)a3;
- (Class)toolkitValueClassForParameter:(id)a3;
- (LNActionConfigurationContext)actionConfigurationContext;
- (LNActionExecutorOptions)executorOptions;
- (LNAppIntentConnectionPolicy)connectionPolicy;
- (LNConnection)connection;
- (LNConnectionPolicySignals)connectionPolicySignals;
- (NSNumber)opensWhenRunIfApplicable;
- (NSString)displayableAppBundleIdentifier;
- (WFAppIntentExecutionAction)initWithIdentifier:(id)a3 metadata:(id)a4 definition:(id)a5 serializedParameters:(id)a6 appIntentDescriptor:(id)a7 fullyQualifiedActionIdentifier:(id)a8;
- (id)actionArchivingQueue;
- (id)alertForLinkActionConfirmationWithActionMetadata:(id)a3 dialogString:(id)a4 request:(id)a5 encodedSnippetActionToolInvocation:(id)a6;
- (id)alertForLinkConfirmationDialogRequest:(id)a3 preferredStyle:(int64_t)a4 handler:(id)a5;
- (id)backingActionIdentifiers;
- (id)bundleIdentifier;
- (id)copyForProcessing;
- (id)copyWithSerializedParameters:(id)a3;
- (id)createStateForParameter:(id)a3 fromSerializedRepresentation:(id)a4;
- (id)defaultSerializedRepresentationForEnumeration:(id)a3;
- (id)defaultSerializedRepresentationForEnumeration:(id)a3 result:(id)a4;
- (id)displayableAppDescriptor;
- (id)entityMetadataForIdentifier:(id)a3;
- (id)enumeration:(id)a3 accessoryImageForPossibleState:(id)a4;
- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4;
- (id)linkActionWithParameterStates:(id)a3 usingConnectionPolicy:(BOOL)a4;
- (id)linkActionWithParameters:(id)a3;
- (id)localizedDefaultOutputNameWithContext:(id)a3;
- (id)outputDictionary;
- (id)parameterMetadataForIdentifier:(id)a3;
- (id)parametersNeedingDisplayRepresentation;
- (id)sessionKitSessionInvocationType;
- (id)valueForParameterData:(id)a3 withParameterState:(id)a4;
- (int64_t)runKind;
- (unsigned)runSource;
- (void)alertForLinkActionConfirmationWithParameterMetadata:(id)a3 dialogString:(id)a4 request:(id)a5 completionHandler:(id)a6;
- (void)askForParameterValueForParameterName:(id)a3 request:(id)a4 dialogString:(id)a5;
- (void)completeLoadingPossibleStatesForEnumerationParameter:(id)a3 result:(id)a4 error:(id)a5 completionHandler:(id)a6;
- (void)configureParameter:(id)a3;
- (void)confirmActionWithRequest:(id)a3 dialogString:(id)a4;
- (void)confirmContinueInAppWithRequest:(id)a3 dialogString:(id)a4;
- (void)confirmParameterValueForParameterName:(id)a3 request:(id)a4 dialogString:(id)a5;
- (void)disambiguateParameterForParameterName:(id)a3 request:(id)a4 dialogString:(id)a5;
- (void)executor:(id)a3 environmentForViewSnippetWithCompletion:(id)a4;
- (void)executor:(id)a3 needsActionConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsContinueInAppWithRequest:(id)a4;
- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4;
- (void)executor:(id)a3 needsValueWithRequest:(id)a4;
- (void)executor:(id)a3 preferredContentSizeForViewSnippetWithCompletion:(id)a4;
- (void)executorWillLaunchApplicationInForeground:(id)a3;
- (void)fetchMissingDisplayRepresentationValuesWithCompletionHandler:(id)a3;
- (void)finishRunningWithError:(id)a3;
- (void)generateShortcutRepresentation:(id)a3;
- (void)generateStandaloneShortcutRepresentation:(id)a3;
- (void)getLinkActionWithProcessedParameters:(id)a3 forFocusConfiguration:(BOOL)a4 fallingBackToDefaultValue:(BOOL)a5 completionHandler:(id)a6;
- (void)loadDefaultResultForEnumeration:(id)a3 completionHandler:(id)a4;
- (void)loadDefaultSerializedRepresentationForEnumeration:(id)a3 completionHandler:(id)a4;
- (void)loadDynamicResultForEnumeration:(id)a3 searchTerm:(id)a4 optionsProviderReference:(id)a5 completionHandler:(id)a6;
- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5;
- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 optionsProviderReference:(id)a5 completionHandler:(id)a6;
- (void)postProcessToolKitProcessedValue:(id)a3 forParameter:(id)a4 completionHandler:(id)a5;
- (void)processEncodedValue:(id)a3 withToolKitInvocation:(id)a4 forParameter:(id)a5 completionHandler:(id)a6;
- (void)processValueForParameter:(id)a3 withToolKitInvocation:(id)a4 completionHandler:(id)a5;
- (void)showChronoControlIfPossibleForIntent:(id)a3 completionHandler:(id)a4;
- (void)willBeginProcessingParameterStates;
@end

@implementation WFAppIntentExecutionAction

- (LNActionConfigurationContext)actionConfigurationContext
{
  actionConfigurationContext = self->_actionConfigurationContext;
  if (!actionConfigurationContext)
  {
    v4 = objc_opt_new();
    v5 = self->_actionConfigurationContext;
    self->_actionConfigurationContext = v4;

    actionConfigurationContext = self->_actionConfigurationContext;
  }

  return actionConfigurationContext;
}

- (id)actionArchivingQueue
{
  os_unfair_lock_lock(&self->_actionArchivingQueueLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__WFAppIntentExecutionAction_actionArchivingQueue__block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  actionArchivingQueue = self->_actionArchivingQueue;
  if (actionArchivingQueue)
  {
    v5 = actionArchivingQueue;
  }

  else
  {
    v6 = [(WFAction *)self runningDelegate];
    if (v6 && ([(WFAction *)self runningDelegate], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) != 0))
    {
      v9 = [(WFAction *)self runningDelegate];
      v5 = [v9 executionQueue];
    }

    else
    {
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_DEFAULT, 0);
      v5 = dispatch_queue_create("com.apple.shortcuts.WFAppIntentExecutionAction.archiving-link-action-outside-of-shortcut-run", v10);
    }

    objc_storeStrong(&self->_actionArchivingQueue, v5);
  }

  v3[2](v3);

  return v5;
}

- (LNAppIntentConnectionPolicy)connectionPolicy
{
  os_unfair_lock_lock(&self->_policyLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__WFAppIntentExecutionAction_connectionPolicy__block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(WFAppIntentExecutionAction *)self metadata];
  v5 = [v4 effectiveBundleIdentifiers];
  v6 = &OBJC_IVAR___WFAppIntentExecutionAction__policyLock;
  if ([v5 count] != 1)
  {
    goto LABEL_40;
  }

  v7 = [(WFAppIntentExecutionAction *)self metadata];
  v8 = [v7 effectiveBundleIdentifiers];
  v9 = [v8 firstObject];
  v10 = [v9 type];

  v6 = &OBJC_IVAR___WFAppIntentExecutionAction__policyLock;
  if (v10 != 3)
  {
    goto LABEL_41;
  }

  v4 = [(WFAction *)self parameterValueForKey:@"app" ofClass:objc_opt_class()];
  if (!v4)
  {
    v11 = [(WFAction *)self parameterStateForKey:@"app"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [v13 value];
    v4 = [v14 value];
  }

  v15 = [v4 value];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v44 = [(WFAction *)self parameterValueForKey:@"processInstanceIdentifier" ofClass:objc_opt_class()];
  v18 = [v44 value];
  if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v19 = [(WFAction *)self parameterStateForKey:@"processInstanceIdentifier"];
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

    v21 = v20;

    v22 = [v21 variableString];
    v18 = [v22 stringByRemovingVariables];
  }

  v23 = [(WFAppIntentExecutionAction *)self connectionPolicySignals];
  v24 = [v23 preferredBundleIdentifier];
  v25 = v17;
  v5 = v25;
  if (v24 == v25)
  {
  }

  else
  {
    v26 = v25;
    v27 = v24;
    if (!v25 || (v26 = v25, (v27 = v24) == 0))
    {
LABEL_36:

LABEL_37:
LABEL_38:
      connectionPolicy = self->_connectionPolicy;
      self->_connectionPolicy = 0;

      v32 = objc_opt_new();
      connectionPolicySignals = self->_connectionPolicySignals;
      self->_connectionPolicySignals = v32;

      [(LNConnectionPolicySignals *)self->_connectionPolicySignals setPreferredBundleIdentifier:v5];
      [(LNConnectionPolicySignals *)self->_connectionPolicySignals setProcessInstanceIdentifier:v18];
      goto LABEL_39;
    }

    v28 = [v24 isEqual:v25];

    if (!v28)
    {
      goto LABEL_37;
    }
  }

  v27 = [(WFAppIntentExecutionAction *)self connectionPolicySignals];
  v26 = [v27 processInstanceIdentifier];
  v29 = v18;
  v30 = v29;
  if (v26 != v29)
  {
    if (v29 && v26)
    {
      v43 = [v26 isEqual:v29];

      if (v43)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    goto LABEL_36;
  }

LABEL_39:
  v6 = &OBJC_IVAR___WFAppIntentExecutionAction__policyLock;
LABEL_40:

LABEL_41:
  v34 = v6[7];
  v35 = *(&self->super.super.isa + v34);
  if (!v35)
  {
    v36 = MEMORY[0x1E69ACE60];
    v37 = [(WFAppIntentExecutionAction *)self metadata];
    v38 = [(WFAppIntentExecutionAction *)self connectionPolicySignals];
    v39 = [v36 policyWithActionMetadata:v37 signals:v38];
    v40 = *(&self->super.super.isa + v34);
    *(&self->super.super.isa + v34) = v39;

    v35 = *(&self->super.super.isa + v34);
  }

  v41 = v35;
  v3[2](v3);

  return v41;
}

- (LNConnectionPolicySignals)connectionPolicySignals
{
  os_unfair_lock_lock(&self->_signalsLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__WFAppIntentExecutionAction_connectionPolicySignals__block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  connectionPolicySignals = self->_connectionPolicySignals;
  if (!connectionPolicySignals)
  {
    v5 = objc_opt_new();
    v6 = self->_connectionPolicySignals;
    self->_connectionPolicySignals = v5;

    v7 = [(WFAppIntentExecutionAction *)self preferredExtensionBundleIdentifier];
    [(LNConnectionPolicySignals *)self->_connectionPolicySignals setPreferredBundleIdentifier:v7];

    connectionPolicySignals = self->_connectionPolicySignals;
  }

  v8 = connectionPolicySignals;
  v3[2](v3);

  return v8;
}

- (LNConnection)connection
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_connectionLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__WFAppIntentExecutionAction_connection__block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(WFAppIntentExecutionAction *)self connectionPolicy];
  v10 = 0;
  v5 = [v4 connectionWithError:&v10];
  v6 = v10;

  if (!v5)
  {
    v7 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[WFAppIntentExecutionAction connection]";
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Failed to initialize LNConnection: %{public}@.", buf, 0x16u);
    }
  }

  v3[2](v3);
  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)defaultSerializedRepresentationForEnumeration:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 value];
    v10 = [v9 valueType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v12 = [v8 value];
    v13 = v12;
    if (isKindOfClass)
    {
      v14 = [v12 value];

      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v19 = v15;

      v20 = MEMORY[0x1E695E0F0];
      if (v19)
      {
        v20 = v19;
      }

      v21 = v20;

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __83__WFAppIntentExecutionAction_defaultSerializedRepresentationForEnumeration_result___block_invoke;
      v23[3] = &unk_1E837CEF0;
      v24 = v6;
      v17 = [v21 if_map:v23];
    }

    else
    {
      [v8 setContainsSensitiveContent:{-[WFAppIntentExecutionAction valueShouldStripSensitiveContent:](self, "valueShouldStripSensitiveContent:", v12)}];

      v17 = [objc_msgSend(v6 "singleStateClass")];
    }
  }

  else
  {
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v6;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = v16;
    v17 = [v18 serializedDefaultParameterOption];

    if (v17)
    {
      v17 = [v18 serializedDefaultParameterOption];
    }
  }

  return v17;
}

id __83__WFAppIntentExecutionAction_defaultSerializedRepresentationForEnumeration_result___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 singleStateClass];
  v5 = [objc_alloc(MEMORY[0x1E69ACEC8]) initWithValue:v3 indentationLevel:0];

  v6 = [v4 serializedRepresentationFromValue:v5];

  return v6;
}

- (void)loadDefaultResultForEnumeration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WFAction *)self shouldSkipLoadingAsynchronousDefaultValue]|| [(WFAction *)self isRunning])
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__WFAppIntentExecutionAction_loadDefaultResultForEnumeration_completionHandler___block_invoke;
    v8[3] = &unk_1E837CEC8;
    v10 = v7;
    v8[4] = self;
    v9 = v6;
    [(WFAppIntentExecutionAction *)self getLinkActionForArchivingWithCompletionHandler:v8];
  }
}

void __80__WFAppIntentExecutionAction_loadDefaultResultForEnumeration_completionHandler___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    v6 = a1[6];
    v7 = [a1[4] localizedErrorWithLinkError:a3];
    v6[2](v6, 0, v7);
  }

  v8 = [a1[4] connection];
  v9 = [a1[4] metadata];
  v10 = [a1[5] key];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__WFAppIntentExecutionAction_loadDefaultResultForEnumeration_completionHandler___block_invoke_2;
  v11[3] = &unk_1E837CEA0;
  v12 = a1[6];
  [v8 fetchDefaultValueForAction:v5 actionMetadata:v9 parameterIdentifier:v10 completionHandler:v11];
}

- (void)loadDefaultSerializedRepresentationForEnumeration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __98__WFAppIntentExecutionAction_loadDefaultSerializedRepresentationForEnumeration_completionHandler___block_invoke;
  v10[3] = &unk_1E837CE78;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(WFAppIntentExecutionAction *)self loadDefaultResultForEnumeration:v8 completionHandler:v10];
}

void __98__WFAppIntentExecutionAction_loadDefaultSerializedRepresentationForEnumeration_completionHandler___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[5];
  v4 = a1[6];
  v6 = a1[4];
  v7 = a3;
  v8 = [v6 defaultSerializedRepresentationForEnumeration:v5 result:a2];
  (*(v4 + 16))(v4, v8, v7);
}

- (id)defaultSerializedRepresentationForEnumeration:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  v6 = [(WFAppIntentExecutionAction *)self parameterMetadataForIdentifier:v5];

  v7 = [v6 valueType];
  v8 = [v7 wf_parameterDefinitionWithParameterMetadata:v6];
  v9 = [v6 typeSpecificMetadata];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69AC590]];
  v11 = [v8 linkValueWithValue:v10];

  v12 = [objc_alloc(MEMORY[0x1E69ACEC8]) initWithValue:v11 indentationLevel:0];
  v13 = [(WFAppIntentExecutionAction *)self defaultSerializedRepresentationForEnumeration:v4 result:v12];

  return v13;
}

- (BOOL)shouldLoadDefaultStateAsynchronouslyForEnumeration:(id)a3
{
  v4 = [a3 key];
  v5 = [(WFAppIntentExecutionAction *)self parameterMetadataForIdentifier:v4];

  v6 = [v5 valueType];
  v7 = [v6 wf_parameterDefinitionWithParameterMetadata:v5];
  v8 = [v5 typeSpecificMetadata];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69AC590]];
  v10 = [v7 linkValueWithValue:v9];

  v12 = ([v5 capabilities] & 1) == 0 || v10 == 0;
  return v12;
}

- (id)createStateForParameter:(id)a3 fromSerializedRepresentation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
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
  [v9 setDataSource:self];

  v12.receiver = self;
  v12.super_class = WFAppIntentExecutionAction;
  v10 = [(WFAction *)&v12 createStateForParameter:v6 fromSerializedRepresentation:v7];

  return v10;
}

- (BOOL)valueShouldStripSensitiveContent:(id)a3
{
  v4 = a3;
  if (-[WFAppIntentExecutionAction shouldStripSensitiveContentFromParameterSerialization](self, "shouldStripSensitiveContentFromParameterSerialization") && ([v4 valueType], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "wf_entityValueType"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [v4 valueType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v9 = [v4 value];
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

      v17 = v10;

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __63__WFAppIntentExecutionAction_valueShouldStripSensitiveContent___block_invoke;
      v18[3] = &unk_1E837CE50;
      v18[4] = &v19;
      [v17 enumerateObjectsUsingBlock:v18];

      v11 = *(v20 + 24);
      _Block_object_dispose(&v19, 8);
    }

    else
    {
      v13 = [v4 value];
      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      v16 = [v15 isTransient];
      v11 = v16 ^ 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __63__WFAppIntentExecutionAction_valueShouldStripSensitiveContent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 value];
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

  v9 = [v8 isTransient];
  *(*(*(a1 + 32) + 8) + 24) = v9 ^ 1;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

- (BOOL)enumeration:(id)a3 shouldStripSenstitiveContentFromValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 value];
    v9 = [(WFAppIntentExecutionAction *)self valueShouldStripSensitiveContent:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)enumeration:(id)a3 accessoryImageForPossibleState:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 image];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4
{
  v5 = a4;
  if ([v5 valueNeedsDisplayRepresentation])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__WFAppIntentExecutionAction_enumeration_localizedLabelForPossibleState___block_invoke;
    v8[3] = &unk_1E837CE28;
    v8[4] = self;
    [(WFAppIntentExecutionAction *)self fetchMissingDisplayRepresentationValuesWithCompletionHandler:v8];
    v6 = 0;
  }

  else
  {
    v6 = [v5 localizedTitle];
  }

  return v6;
}

void __73__WFAppIntentExecutionAction_enumeration_localizedLabelForPossibleState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = getWFActionsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 allKeys];
    *buf = 136315650;
    v16 = "[WFAppIntentExecutionAction enumeration:localizedLabelForPossibleState:]_block_invoke";
    v17 = 2114;
    v18 = v8;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Fetched missing display representations for parameters: %{public}@, error: %@", buf, 0x20u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__WFAppIntentExecutionAction_enumeration_localizedLabelForPossibleState___block_invoke_406;
  v12[3] = &unk_1E837F870;
  v9 = *(a1 + 32);
  v13 = v5;
  v14 = v9;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __73__WFAppIntentExecutionAction_enumeration_localizedLabelForPossibleState___block_invoke_406(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__WFAppIntentExecutionAction_enumeration_localizedLabelForPossibleState___block_invoke_2;
  v3[3] = &unk_1E837CE00;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __73__WFAppIntentExecutionAction_enumeration_localizedLabelForPossibleState___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(a1 + 32);
  if (isKindOfClass)
  {
    v8 = 0;
  }

  else
  {
    v8 = v9;
  }

  [*(a1 + 32) setParameterState:v8 forKey:v5];
}

- (void)completeLoadingPossibleStatesForEnumerationParameter:(id)a3 result:(id)a4 error:(id)a5 completionHandler:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v24 = [(WFAction *)self localizedErrorWithLinkError:v12];
    v13[2](v13, 0, v24);
LABEL_10:

    goto LABEL_11;
  }

  v14 = [v11 dependentParameterIdentifiers];
  v15 = [(WFAppIntentExecutionAction *)self dependentParameterIdentifiers];
  v16 = [v10 key];
  [v15 setObject:v14 forKeyedSubscript:v16];

  v17 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v10 key];
    *buf = 136315650;
    v35 = "[WFAppIntentExecutionAction completeLoadingPossibleStatesForEnumerationParameter:result:error:completionHandler:]";
    v36 = 2112;
    v37 = v18;
    v38 = 2112;
    v39 = v11;
    _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEFAULT, "%s Completing loading possible states for parameter: %@ with result: %@.", buf, 0x20u);
  }

  v19 = [v11 usesIndexedCollation];
  v20 = [v11 promptLabel];
  v21 = [v20 localizedStringForLocaleIdentifier:0];
  [v10 setLocalizedPrompt:v21];

  v22 = [v11 sections];

  if (!v22)
  {
    v25 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v35 = "[WFAppIntentExecutionAction completeLoadingPossibleStatesForEnumerationParameter:result:error:completionHandler:]";
      _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_ERROR, "%s Result collection does not contain any sections.", buf, 0xCu);
    }

    v26 = objc_alloc(MEMORY[0x1E696E918]);
    v24 = [v26 initWithItems:MEMORY[0x1E695E0F0]];
    (v13)[2](v13, v24, 0);
    goto LABEL_10;
  }

  v23 = [v11 sections];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __114__WFAppIntentExecutionAction_completeLoadingPossibleStatesForEnumerationParameter_result_error_completionHandler___block_invoke;
  v32[3] = &unk_1E837CDB0;
  v32[4] = self;
  v33 = v10;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __114__WFAppIntentExecutionAction_completeLoadingPossibleStatesForEnumerationParameter_result_error_completionHandler___block_invoke_3;
  v28[3] = &unk_1E837CDD8;
  v31 = v19;
  v29 = v33;
  v30 = v13;
  [v23 if_mapAsynchronously:v32 completionHandler:v28];

LABEL_11:
  v27 = *MEMORY[0x1E69E9840];
}

void __114__WFAppIntentExecutionAction_completeLoadingPossibleStatesForEnumerationParameter_result_error_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __114__WFAppIntentExecutionAction_completeLoadingPossibleStatesForEnumerationParameter_result_error_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E837CD38;
  v8 = v6;
  v22 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [v8 options];

  if (v10)
  {
    v11 = [v8 options];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __114__WFAppIntentExecutionAction_completeLoadingPossibleStatesForEnumerationParameter_result_error_completionHandler___block_invoke_402;
    v19[3] = &unk_1E837CD60;
    v12 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v20 = v12;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __114__WFAppIntentExecutionAction_completeLoadingPossibleStatesForEnumerationParameter_result_error_completionHandler___block_invoke_2_404;
    v16[3] = &unk_1E837CD88;
    v17 = v9;
    v18 = v7;
    [v11 if_mapAsynchronously:v19 completionHandler:v16];
  }

  else
  {
    v13 = (*(v9 + 2))(v9, MEMORY[0x1E695E0F0]);
    v14 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "[WFAppIntentExecutionAction completeLoadingPossibleStatesForEnumerationParameter:result:error:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Result collection section does not contain any items.", buf, 0xCu);
    }

    (*(v7 + 2))(v7, v13, 0);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __114__WFAppIntentExecutionAction_completeLoadingPossibleStatesForEnumerationParameter_result_error_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696E918];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithSections:v7];

  [v8 setUsesIndexedCollation:*(a1 + 48)];
  v9 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) key];
    v12 = 136315650;
    v13 = "[WFAppIntentExecutionAction completeLoadingPossibleStatesForEnumerationParameter:result:error:completionHandler:]_block_invoke_3";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s Completed loading possible states for parameter: %@ with result: %@.", &v12, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x1E69E9840];
}

id __114__WFAppIntentExecutionAction_completeLoadingPossibleStatesForEnumerationParameter_result_error_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696E928];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) title];
  v7 = [v6 wf_localizedString];
  v8 = [*(a1 + 32) subtitle];
  v9 = [v8 wf_localizedString];
  v10 = [*(a1 + 32) image];
  v11 = [v10 inImage];
  v12 = [v5 initWithTitle:v7 subtitle:v9 image:v11 items:v4];

  return v12;
}

void __114__WFAppIntentExecutionAction_completeLoadingPossibleStatesForEnumerationParameter_result_error_completionHandler___block_invoke_402(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  v9 = [v8 value];
  [v8 setContainsSensitiveContent:{objc_msgSend(v6, "valueShouldStripSensitiveContent:", v9)}];

  v10 = objc_alloc([*(a1 + 40) singleStateClass]);
  v17 = [v8 title];
  v11 = [v17 wf_localizedString];
  v12 = [v8 subtitle];
  v13 = [v12 wf_localizedString];
  v14 = [v8 image];
  v15 = [v14 wf_image];
  v16 = [v10 initWithValue:v8 localizedTitle:v11 localizedSubtitle:v13 image:v15];

  v7[2](v7, v16, 0);
}

void __114__WFAppIntentExecutionAction_completeLoadingPossibleStatesForEnumerationParameter_result_error_completionHandler___block_invoke_2_404(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

- (void)loadDynamicResultForEnumeration:(id)a3 searchTerm:(id)a4 optionsProviderReference:(id)a5 completionHandler:(id)a6
{
  v58[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = [v15 parameterMetadata];
  v17 = [v15 searchType];

  if (v17 == 2 && [v11 length])
  {
    v18 = [v16 typeSpecificMetadata];
    v19 = [v18 objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];

    v20 = [(WFAppIntentExecutionAction *)self connection];
    v21 = v20;
    if (v19 && v20)
    {
      v43 = v12;
      v44 = [_TtC11WorkflowKit25WFSpotlightQueryCondition searchTerm:v11];
      v22 = [_TtC11WorkflowKit25WFSpotlightQueryCondition alloc];
      v23 = *MEMORY[0x1E69ACCD8];
      v42 = v21;
      v24 = [v19 identifier];
      v25 = [_TtC11WorkflowKit21WFSpotlightQueryValue string:v24];
      v41 = [(WFSpotlightQueryCondition *)v22 initWithKey:v23 operator:4 value:v25];

      v26 = [[_TtC11WorkflowKit23WFSpotlightQueryBuilder alloc] initWithOperator:0];
      v27 = [(WFSpotlightQueryBuilder *)v26 addCondition:v41];
      v28 = [v27 addCondition:v44];
      v29 = [v28 buildQueryString];

      v30 = objc_alloc_init(MEMORY[0x1E6964E70]);
      [v30 setMaxCount:30];
      [v30 setDisableSemanticSearch:0];
      v31 = [(WFAppIntentExecutionAction *)self connection];
      v32 = [v31 bundleIdentifier];
      v58[0] = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
      [v30 setBundleIDs:v33];

      [v30 setFetchAttributes:&unk_1F4A9B740];
      v34 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:v29 queryContext:v30];
      v35 = objc_opt_new();
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __116__WFAppIntentExecutionAction_loadDynamicResultForEnumeration_searchTerm_optionsProviderReference_completionHandler___block_invoke;
      v55[3] = &unk_1E837D580;
      v36 = v35;
      v56 = v36;
      v37 = v19;
      v57 = v37;
      [v34 setFoundItemsHandler:v55];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __116__WFAppIntentExecutionAction_loadDynamicResultForEnumeration_searchTerm_optionsProviderReference_completionHandler___block_invoke_2;
      v50[3] = &unk_1E837CCE8;
      v51 = v36;
      v38 = v37;
      v21 = v42;
      v52 = v38;
      v53 = v42;
      v54 = v13;
      v39 = v36;
      [v34 setCompletionHandler:v50];
      [v34 start];

      v12 = v43;
    }

    else
    {
      (*(v13 + 2))(v13, 0, 0);
    }
  }

  else
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __116__WFAppIntentExecutionAction_loadDynamicResultForEnumeration_searchTerm_optionsProviderReference_completionHandler___block_invoke_5;
    v45[3] = &unk_1E837CD10;
    v49 = v13;
    v45[4] = self;
    v46 = v16;
    v47 = v12;
    v48 = v11;
    [(WFAppIntentExecutionAction *)self getLinkActionForArchivingWithCompletionHandler:v45];

    v19 = v49;
  }

  v40 = *MEMORY[0x1E69E9840];
}

void __116__WFAppIntentExecutionAction_loadDynamicResultForEnumeration_searchTerm_optionsProviderReference_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v8 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"_kMDItemAppEntityInstanceIdentifier"];
        v9 = [v7 attributeSet];
        v10 = [v9 valueForCustomKey:v8];

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

        v13 = *(a1 + 32);
        v14 = objc_alloc(MEMORY[0x1E69AC7D8]);
        v15 = [*(a1 + 40) identifier];
        v16 = [v14 initWithTypeIdentifier:v15 instanceIdentifier:v12];

        [v13 addObject:v16];
        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __116__WFAppIntentExecutionAction_loadDynamicResultForEnumeration_searchTerm_optionsProviderReference_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69ACF08]) initWithEntityIdentifiers:*(a1 + 32)];
  v3 = [objc_alloc(MEMORY[0x1E69ACFC0]) initWithEntityMetadata:*(a1 + 40)];
  v4 = [objc_alloc(MEMORY[0x1E69ACE00]) initWithQueryType:v2 target:v3 options:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __116__WFAppIntentExecutionAction_loadDynamicResultForEnumeration_searchTerm_optionsProviderReference_completionHandler___block_invoke_3;
  v6[3] = &unk_1E837CCC0;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v5 performConfigurableQuery:v4 completionHandler:v6];
}

void __116__WFAppIntentExecutionAction_loadDynamicResultForEnumeration_searchTerm_optionsProviderReference_completionHandler___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  if (!v14)
  {
    v5 = *(a1 + 64);
    v6 = [*(a1 + 32) localizedErrorWithLinkError:a3];
    (*(v5 + 16))(v5, 0, v6);
  }

  v7 = [*(a1 + 32) connection];
  v8 = [*(a1 + 32) metadata];
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = [MEMORY[0x1E695DF58] currentLocale];
  v13 = [v12 localeIdentifier];
  [v7 fetchOptionsForAction:v14 actionMetadata:v8 parameterMetadata:v9 optionsProviderReference:v10 searchTerm:v11 localeIdentifier:v13 completionHandler:*(a1 + 64)];
}

void __116__WFAppIntentExecutionAction_loadDynamicResultForEnumeration_searchTerm_optionsProviderReference_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 value];
  v8 = [v7 valueType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v5 value];
    v11 = [v10 value];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [v13 if_map:&__block_literal_global_395];

    v15 = [objc_alloc(MEMORY[0x1E69ACEE8]) initWithOptions:v14 title:0];
    v16 = objc_alloc(MEMORY[0x1E69ACED0]);
    v20[0] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v18 = [v16 initWithSections:v17 usesIndexedCollation:0 promptLabel:0 dependentParameterIdentifiers:MEMORY[0x1E695E0F0]];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
}

id __116__WFAppIntentExecutionAction_loadDynamicResultForEnumeration_searchTerm_optionsProviderReference_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69ACEC8];
  v3 = a2;
  v4 = [[v2 alloc] initWithValue:v3 indentationLevel:0];

  return v4;
}

- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 optionsProviderReference:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __117__WFAppIntentExecutionAction_loadPossibleStatesForEnumeration_searchTerm_optionsProviderReference_completionHandler___block_invoke;
  v16[3] = &unk_1E837CC78;
  v17 = v10;
  v18 = v11;
  v19 = self;
  v20 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  [(WFAppIntentExecutionAction *)self loadDynamicResultForEnumeration:v15 searchTerm:v14 optionsProviderReference:a5 completionHandler:v16];
}

void __117__WFAppIntentExecutionAction_loadPossibleStatesForEnumeration_searchTerm_optionsProviderReference_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) key];
    v9 = *(a1 + 40);
    v11 = 136315650;
    v12 = "[WFAppIntentExecutionAction loadPossibleStatesForEnumeration:searchTerm:optionsProviderReference:completionHandler:]_block_invoke";
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Loading possible states for parameter: %@, search term: %@.", &v11, 0x20u);
  }

  [*(a1 + 48) completeLoadingPossibleStatesForEnumerationParameter:*(a1 + 32) result:v6 error:v5 completionHandler:*(a1 + 56)];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92__WFAppIntentExecutionAction_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke;
  v12[3] = &unk_1E837CC50;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(WFAppIntentExecutionAction *)self loadDynamicResultForEnumeration:v11 searchTerm:a4 completionHandler:v12];
}

- (void)fetchMissingDisplayRepresentationValuesWithCompletionHandler:(id)a3
{
  v80 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFAppIntentExecutionAction *)self parametersNeedingDisplayRepresentation];
  if ([v5 count])
  {
    v45 = v4;
    v6 = MEMORY[0x1E695DFD8];
    v7 = [v5 valueForKey:@"name"];
    v8 = [v6 setWithArray:v7];
    [(WFAppIntentExecutionAction *)self setFetchingDisplayRepresentationParameterKeys:v8];

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v5;
    v49 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
    if (v49)
    {
      v47 = *v72;
      v48 = v5;
      v10 = 0x1E695D000uLL;
      do
      {
        v11 = 0;
        do
        {
          if (*v72 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v71 + 1) + 8 * v11);
          v13 = [v12 typeSpecificMetadata];
          v54 = [v13 objectForKey:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];

          v53 = v12;
          v14 = [v12 name];
          v15 = [(WFAction *)self parameterStateForKey:v14 fallingBackToDefaultValue:0];

          objc_opt_class();
          v50 = v15;
          v51 = v11;
          if (objc_opt_isKindOfClass())
          {
            v16 = [v15 parameterStates];
            v17 = [v16 if_compactMap:&__block_literal_global_359];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v78 = v15;
              v17 = [*(v10 + 3784) arrayWithObjects:&v78 count:1];
            }

            else
            {
              v17 = 0;
            }
          }

          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          v67 = 0u;
          v52 = v17;
          v56 = [v52 countByEnumeratingWithState:&v67 objects:v77 count:16];
          if (v56)
          {
            v55 = *v68;
            do
            {
              for (i = 0; i != v56; ++i)
              {
                if (*v68 != v55)
                {
                  objc_enumerationMutation(v52);
                }

                v19 = [*(*(&v67 + 1) + 8 * i) value];
                v20 = [v19 value];
                v21 = WFSerializedIdentifierFromLinkValue(v20);

                if (v21)
                {
                  v22 = objc_alloc(MEMORY[0x1E69AC7D8]);
                  v23 = [v54 identifier];
                  v24 = [v22 initWithTypeIdentifier:v23 instanceIdentifier:v21];

                  v25 = self;
                  v26 = [(WFAppIntentExecutionAction *)self connection];
                  v27 = [v26 bundleIdentifier];
                  v28 = [v54 mangledTypeNameForBundleIdentifier:v27];

                  v29 = [v9 objectForKey:v28];
                  if (v29 && (v30 = *(v10 + 3784), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v31 = [v29 mutableCopy];
                    [v31 addObject:v24];
                    v32 = [v31 copy];

                    v10 = 0x1E695D000;
                  }

                  else
                  {

                    v76 = v24;
                    v32 = [*(v10 + 3784) arrayWithObjects:&v76 count:1];
                  }

                  v33 = v9;
                  [v9 setObject:v32 forKey:v28];
                  v34 = [v57 objectForKey:v24];
                  if (v34 && (v35 = *(v10 + 3784), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v36 = [v34 mutableCopy];
                    v37 = [v53 name];
                    [v36 addObject:v37];

                    v38 = [v36 copy];
                  }

                  else
                  {

                    v36 = [v53 name];
                    v75 = v36;
                    v38 = [*(v10 + 3784) arrayWithObjects:&v75 count:1];
                  }

                  [v57 setObject:v38 forKey:v24];
                  self = v25;
                  v9 = v33;
                  v10 = 0x1E695D000;
                }
              }

              v56 = [v52 countByEnumeratingWithState:&v67 objects:v77 count:16];
            }

            while (v56);
          }

          v11 = v51 + 1;
          v5 = v48;
        }

        while (v51 + 1 != v49);
        v49 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
      }

      while (v49);
    }

    v39 = objc_opt_new();
    v40 = [v9 allKeys];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __91__WFAppIntentExecutionAction_fetchMissingDisplayRepresentationValuesWithCompletionHandler___block_invoke_2;
    v62[3] = &unk_1E837CC28;
    v63 = v9;
    v64 = self;
    v65 = v57;
    v66 = v39;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __91__WFAppIntentExecutionAction_fetchMissingDisplayRepresentationValuesWithCompletionHandler___block_invoke_3_376;
    v58[3] = &unk_1E837ECB8;
    v60 = self;
    v61 = v45;
    v59 = v66;
    v41 = v9;
    v42 = v57;
    v43 = v66;
    [v40 if_enumerateAsynchronouslyInSequence:v62 completionHandler:v58];

    v4 = v45;
  }

  else
  {
    (*(v4 + 2))(v4, MEMORY[0x1E695E0F8], 0);
  }

  v44 = *MEMORY[0x1E69E9840];
}

void __91__WFAppIntentExecutionAction_fetchMissingDisplayRepresentationValuesWithCompletionHandler___block_invoke_2(id *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [a1[4] objectForKey:v6];
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

  v10 = v9;

  v11 = [objc_alloc(MEMORY[0x1E69ACFB0]) initWithIdentifiers:v10 entityMangledTypeName:v6];
  v12 = [a1[5] connection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91__WFAppIntentExecutionAction_fetchMissingDisplayRepresentationValuesWithCompletionHandler___block_invoke_3;
  v18[3] = &unk_1E837CC00;
  v19 = v10;
  v20 = v6;
  v24 = v7;
  v21 = a1[6];
  v13 = a1[7];
  v14 = a1[5];
  v22 = v13;
  v23 = v14;
  v15 = v7;
  v16 = v6;
  v17 = v10;
  [v12 performQuery:v11 completionHandler:v18];
}

uint64_t __91__WFAppIntentExecutionAction_fetchMissingDisplayRepresentationValuesWithCompletionHandler___block_invoke_3_376(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 setFetchingDisplayRepresentationParameterKeys:0];
}

void __91__WFAppIntentExecutionAction_fetchMissingDisplayRepresentationValuesWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v112 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v77 = v4;
  if (v4 || !v5)
  {
    v76 = v5;
    if (v4)
    {
      v11 = [v4 value];
      v12 = [v11 value];

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

      v16 = v13;

      v75 = v16;
      if ([v16 count])
      {
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        obj = v16;
        v17 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
        v18 = a1;
        if (v17)
        {
          v19 = v17;
          v20 = *v96;
          v21 = 0x1E69AC000uLL;
          v22 = &off_1E836E000;
          v78 = *v96;
          do
          {
            v23 = 0;
            v79 = v19;
            do
            {
              if (*v96 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v95 + 1) + 8 * v23);
              v25 = [v24 valueType];
              v26 = *(v21 + 2072);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v28 = [v24 value];
                if (v28)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v29 = v28;
                  }

                  else
                  {
                    v29 = 0;
                  }
                }

                else
                {
                  v29 = 0;
                }

                v30 = v29;

                v32 = [v30 identifier];
                if (v32)
                {
                  v33 = [*(a1 + 48) objectForKey:v32];
                  v81 = v30;
                  v82 = v23;
                  v86 = v24;
                  v83 = v32;
                  if (v33)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v34 = v33;
                    }

                    else
                    {
                      v34 = 0;
                    }
                  }

                  else
                  {
                    v34 = 0;
                  }

                  v36 = v34;

                  v94 = 0u;
                  v92 = 0u;
                  v93 = 0u;
                  v91 = 0u;
                  v37 = v36;
                  v38 = [v37 countByEnumeratingWithState:&v91 objects:v102 count:16];
                  v18 = a1;
                  if (v38)
                  {
                    v39 = v38;
                    v40 = *v92;
                    v85 = v37;
                    do
                    {
                      v41 = 0;
                      v87 = v39;
                      do
                      {
                        if (*v92 != v40)
                        {
                          objc_enumerationMutation(v37);
                        }

                        v42 = *(*(&v91 + 1) + 8 * v41);
                        v43 = [*(v18 + 64) parameterForKey:v42];
                        v44 = [v43 singleStateClass];
                        v45 = v22[255];
                        if ([(objc_class *)v44 isSubclassOfClass:objc_opt_class()])
                        {
                          v46 = [*(v18 + 56) objectForKeyedSubscript:v42];
                          v47 = v46;
                          if (v46)
                          {
                            v48 = v46;
                          }

                          else
                          {
                            v48 = [*(v18 + 64) parameterStateForKey:v42];
                          }

                          v49 = v48;

                          v50 = v22[255];
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v51 = v49;
                            if (v51)
                            {
                              v52 = v22[255];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v53 = v51;
                              }

                              else
                              {
                                v53 = 0;
                              }
                            }

                            else
                            {
                              v53 = 0;
                            }

                            v56 = v53;

                            v57 = [v56 value];

                            v58 = objc_alloc(MEMORY[0x1E69ACEC8]);
                            if (v57)
                            {
                              v59 = [v57 indentationLevel];
                            }

                            else
                            {
                              v59 = 0;
                            }

                            v60 = [v58 initWithValue:v86 indentationLevel:v59];
                            v61 = [[v44 alloc] initWithValue:v60];
                            [*(v18 + 56) setObject:v61 forKey:v42];

                            goto LABEL_62;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v54 = v49;
                            if (v54)
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v55 = v54;
                              }

                              else
                              {
                                v55 = 0;
                              }
                            }

                            else
                            {
                              v55 = 0;
                            }

                            v62 = v55;

                            v63 = [v62 parameterStates];
                            v89[0] = MEMORY[0x1E69E9820];
                            v89[1] = 3221225472;
                            v89[2] = __91__WFAppIntentExecutionAction_fetchMissingDisplayRepresentationValuesWithCompletionHandler___block_invoke_370;
                            v89[3] = &unk_1E837CBB0;
                            v90 = v83;
                            v64 = [v63 indexesOfObjectsPassingTest:v89];

                            v65 = [v62 parameterStates];
                            v66 = [v65 objectsAtIndexes:v64];
                            v88[0] = MEMORY[0x1E69E9820];
                            v88[1] = 3221225472;
                            v88[2] = __91__WFAppIntentExecutionAction_fetchMissingDisplayRepresentationValuesWithCompletionHandler___block_invoke_2_372;
                            v88[3] = &unk_1E837CBD8;
                            v88[4] = v86;
                            v88[5] = v44;
                            v67 = [v66 if_map:v88];

                            v68 = [v62 stateByReplacingValueAtIndexes:v64 withValues:v67];

                            [*(a1 + 56) setObject:v68 forKey:v42];
                            v18 = a1;

                            v57 = v90;
LABEL_62:

                            v22 = &off_1E836E000;
                            v37 = v85;
                          }

                          v39 = v87;
                        }

                        ++v41;
                      }

                      while (v39 != v41);
                      v39 = [v37 countByEnumeratingWithState:&v91 objects:v102 count:16];
                    }

                    while (v39);
                  }

                  v35 = v37;
                  v20 = v78;
                  v19 = v79;
                  v21 = 0x1E69AC000;
                  v30 = v81;
                  v23 = v82;
                  v32 = v83;
                }

                else
                {
                  v35 = getWFActionsLogObject();
                  v18 = a1;
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v105 = "[WFAppIntentExecutionAction fetchMissingDisplayRepresentationValuesWithCompletionHandler:]_block_invoke";
                    v106 = 2112;
                    v107 = v24;
                    _os_log_impl(&dword_1CA256000, v35, OS_LOG_TYPE_ERROR, "%s Unable to get entityIdentifier from value: %@", buf, 0x16u);
                  }
                }
              }

              else
              {
                v30 = getWFActionsLogObject();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
                {
                  v31 = [v24 valueType];
                  *buf = 136315394;
                  v105 = "[WFAppIntentExecutionAction fetchMissingDisplayRepresentationValuesWithCompletionHandler:]_block_invoke";
                  v106 = 2112;
                  v107 = v31;
                  _os_log_impl(&dword_1CA256000, v30, OS_LOG_TYPE_FAULT, "%s Fetching display representations returned a value that wasn't an entity: expected LNEntityValueType, got %@", buf, 0x16u);
                }

                v18 = a1;
              }

              ++v23;
            }

            while (v23 != v19);
            v19 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
          }

          while (v19);
        }

        (*(*(v18 + 72) + 16))();
      }

      else
      {
        v69 = getWFActionsLogObject();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v70 = *(a1 + 32);
          v71 = *(a1 + 40);
          *buf = 136315906;
          v105 = "[WFAppIntentExecutionAction fetchMissingDisplayRepresentationValuesWithCompletionHandler:]_block_invoke_3";
          v106 = 2114;
          v107 = v70;
          v108 = 2112;
          v109 = v71;
          v110 = 2112;
          v111 = v16;
          _os_log_impl(&dword_1CA256000, v69, OS_LOG_TYPE_DEFAULT, "%s Fetching display representations for entity identifiers: %{public}@, mangledTypeName: %@ returned an invalid number of items: %@", buf, 0x2Au);
        }

        v72 = *(a1 + 72);
        v73 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:5 userInfo:MEMORY[0x1E695E0F8]];
        (*(v72 + 16))(v72, v73);
      }

      v15 = v75;
    }

    else
    {
      v14 = *(a1 + 32);
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __91__WFAppIntentExecutionAction_fetchMissingDisplayRepresentationValuesWithCompletionHandler___block_invoke_362;
      v99[3] = &unk_1E837CB88;
      v100 = *(a1 + 48);
      v101 = *(a1 + 56);
      [v14 enumerateObjectsUsingBlock:v99];
      (*(*(a1 + 72) + 16))();

      v15 = v100;
    }

    v10 = v76;
    goto LABEL_76;
  }

  v6 = v5;
  v7 = getWFActionsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 136315650;
    v105 = "[WFAppIntentExecutionAction fetchMissingDisplayRepresentationValuesWithCompletionHandler:]_block_invoke_3";
    v106 = 2114;
    v107 = v8;
    v108 = 2112;
    v109 = v9;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Failed to fetch display representation for entity identifiers: %{public}@, mangledTypeName: %@", buf, 0x20u);
  }

  v10 = v6;
  (*(*(a1 + 72) + 16))();
LABEL_76:

  v74 = *MEMORY[0x1E69E9840];
}

void __91__WFAppIntentExecutionAction_fetchMissingDisplayRepresentationValuesWithCompletionHandler___block_invoke_362(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
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

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __91__WFAppIntentExecutionAction_fetchMissingDisplayRepresentationValuesWithCompletionHandler___block_invoke_2_363;
  v6[3] = &unk_1E83800A8;
  v7 = *(a1 + 40);
  [v5 enumerateObjectsUsingBlock:v6];
}

uint64_t __91__WFAppIntentExecutionAction_fetchMissingDisplayRepresentationValuesWithCompletionHandler___block_invoke_370(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = [v3 value];
  v6 = [v5 value];
  v7 = [v6 value];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
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

  v10 = [v9 identifier];

  v11 = *(a1 + 32);
  v12 = v10;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = 0;
    if (v12 && v13)
    {
      v15 = [v12 isEqual:v13];
    }
  }

  return v15;
}

id __91__WFAppIntentExecutionAction_fetchMissingDisplayRepresentationValuesWithCompletionHandler___block_invoke_2_372(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = objc_alloc(MEMORY[0x1E69ACEC8]);
  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = [v3 indentationLevel];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 initWithValue:v5 indentationLevel:v6];
  v8 = [objc_alloc(*(a1 + 40)) initWithValue:v7];

  return v8;
}

void __91__WFAppIntentExecutionAction_fetchMissingDisplayRepresentationValuesWithCompletionHandler___block_invoke_2_363(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E695DFB0];
  v4 = a2;
  v5 = [v3 null];
  [v2 setObject:v5 forKey:v4];
}

void *__91__WFAppIntentExecutionAction_fetchMissingDisplayRepresentationValuesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)parametersNeedingDisplayRepresentation
{
  v3 = [(WFAppIntentExecutionAction *)self metadata];
  v4 = [v3 parameters];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__WFAppIntentExecutionAction_parametersNeedingDisplayRepresentation__block_invoke;
  v7[3] = &unk_1E837CB40;
  v7[4] = self;
  v5 = [v4 if_objectsPassingTest:v7];

  return v5;
}

uint64_t __68__WFAppIntentExecutionAction_parametersNeedingDisplayRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) fetchingDisplayRepresentationParameterKeys];
  v5 = [v3 name];
  v6 = [v4 containsObject:v5];

  if ((v6 & 1) == 0)
  {
    v8 = *(a1 + 32);
    v9 = [v3 name];
    v10 = [v8 parameterStateForKey:v9];

    v11 = v10;
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = 0;
        v17 = &v16;
        v18 = 0x2020000000;
        v19 = 0;
        v12 = [v11 value];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __68__WFAppIntentExecutionAction_parametersNeedingDisplayRepresentation__block_invoke_2;
        v15[3] = &unk_1E837CB18;
        v15[4] = &v16;
        [v12 enumerateObjectsUsingBlock:v15];

        v7 = *(v17 + 24);
        _Block_object_dispose(&v16, 8);

LABEL_9:
        goto LABEL_10;
      }

      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v7 = WFLinkActionParameterStateNeedingDisplayRepresentation(v13);
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7 & 1;
}

void __68__WFAppIntentExecutionAction_parametersNeedingDisplayRepresentation__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 parameterState];
  *(*(*(a1 + 32) + 8) + 24) = WFLinkActionParameterStateNeedingDisplayRepresentation(v6);

  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

- (id)alertForLinkConfirmationDialogRequest:(id)a3 preferredStyle:(int64_t)a4 handler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E6996C70];
  v9 = a3;
  v10 = [v8 alertWithPreferredStyle:a4];
  v11 = [v9 title];
  [v10 setTitle:v11];

  v12 = MEMORY[0x1E6996C78];
  v13 = [v9 yesButton];
  v14 = [v13 title];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __91__WFAppIntentExecutionAction_alertForLinkConfirmationDialogRequest_preferredStyle_handler___block_invoke;
  v28[3] = &unk_1E837F4E8;
  v15 = v7;
  v29 = v15;
  v16 = [v12 buttonWithTitle:v14 style:0 handler:v28];

  v17 = MEMORY[0x1E6996C78];
  v18 = [v9 noButton];

  v19 = [v18 title];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __91__WFAppIntentExecutionAction_alertForLinkConfirmationDialogRequest_preferredStyle_handler___block_invoke_2;
  v26 = &unk_1E837F4E8;
  v27 = v15;
  v20 = v15;
  v21 = [v17 buttonWithTitle:v19 style:1 handler:&v23];

  [v10 addButton:{v16, v23, v24, v25, v26}];
  [v10 addButton:v21];

  return v10;
}

- (void)alertForLinkActionConfirmationWithParameterMetadata:(id)a3 dialogString:(id)a4 request:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__WFAppIntentExecutionAction_alertForLinkActionConfirmationWithParameterMetadata_dialogString_request_completionHandler___block_invoke;
  block[3] = &unk_1E837CAF0;
  v19 = v12;
  v20 = self;
  v21 = v10;
  v22 = v11;
  v23 = v13;
  v14 = v13;
  v15 = v11;
  v16 = v10;
  v17 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __121__WFAppIntentExecutionAction_alertForLinkActionConfirmationWithParameterMetadata_dialogString_request_completionHandler___block_invoke(id *a1)
{
  v2 = [a1[4] value];
  v3 = [v2 valueType];
  v4 = [a1[4] value];
  v5 = [a1[5] fullyQualifiedLinkActionIdentifier];
  v6 = [v5 bundleIdentifier];
  v7 = [a1[5] displayableAppBundleIdentifier];
  v8 = [v3 wf_contentItemFromLinkValue:v4 appBundleIdentifier:v6 displayedBundleIdentifier:v7 teamIdentifier:0 disclosureLevel:1];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __121__WFAppIntentExecutionAction_alertForLinkActionConfirmationWithParameterMetadata_dialogString_request_completionHandler___block_invoke_2;
  v11[3] = &unk_1E837CAC8;
  v12 = a1[6];
  v13 = a1[7];
  v10 = *(a1 + 2);
  v9 = v10.i64[0];
  v14 = vextq_s8(v10, v10, 8uLL);
  v15 = a1[8];
  [v8 encodedTypedValueWithCompletion:v11];
}

void __121__WFAppIntentExecutionAction_alertForLinkActionConfirmationWithParameterMetadata_dialogString_request_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E0C28];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) name];
  v7 = [v5 initWithParameterKey:v6 parameterValue:v4];

  v8 = objc_alloc(MEMORY[0x1E69E0BB0]);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = [objc_alloc(MEMORY[0x1E69E0A98]) initWithTitle:0 icon:0];
  v12 = [v8 initWithActionParameterMetadata:v9 dialogString:v10 viewSnippet:0 snippetAction:0 encodedSnippetActionToolInvocation:0 attribution:v11 parameterInfo:v7];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __121__WFAppIntentExecutionAction_alertForLinkActionConfirmationWithParameterMetadata_dialogString_request_completionHandler___block_invoke_3;
  v15[3] = &unk_1E837CAA0;
  v13 = *(a1 + 48);
  v16 = *(a1 + 56);
  v14 = [v13 alertForLinkConfirmationDialogRequest:v12 preferredStyle:0 handler:v15];
  (*(*(a1 + 64) + 16))();
}

- (id)alertForLinkActionConfirmationWithActionMetadata:(id)a3 dialogString:(id)a4 request:(id)a5 encodedSnippetActionToolInvocation:(id)a6
{
  v9 = a5;
  v10 = MEMORY[0x1E695DF58];
  v39 = a6;
  v37 = a4;
  v11 = a3;
  v12 = [v10 currentLocale];
  v13 = [v12 localeIdentifier];

  v14 = [v9 result];
  v15 = [v14 output];
  v16 = [v15 confirmationActionName];

  v17 = objc_alloc(MEMORY[0x1E69E0BB0]);
  v41 = [v9 result];
  v38 = [v41 output];
  v18 = [v38 shouldShowPrompt];
  v32 = v9;
  v36 = [v9 result];
  v35 = [v36 output];
  v30 = [v35 viewSnippet];
  v34 = [v9 result];
  v33 = [v34 output];
  v19 = [v33 snippetAction];
  v20 = [v16 acceptLabel];
  v40 = v13;
  v21 = [v20 localizedStringForLocaleIdentifier:v13];
  v22 = [v16 denyLabel];
  v23 = [v22 localizedStringForLocaleIdentifier:v13];
  v24 = [objc_alloc(MEMORY[0x1E69E0A98]) initWithTitle:0 icon:0];
  LOBYTE(v29) = [v16 destructive];
  LOBYTE(v28) = 0;
  v31 = [v17 initWithActionMetadata:v11 showPrompt:v18 dialogString:v37 viewSnippet:v30 snippetAction:v19 encodedSnippetActionToolInvocation:v39 yesText:v21 noText:v23 attribution:v24 parameterInfo:0 isContinueInAppRequest:v28 systemStyle:0 destructive:v29];

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __135__WFAppIntentExecutionAction_alertForLinkActionConfirmationWithActionMetadata_dialogString_request_encodedSnippetActionToolInvocation___block_invoke;
  v43[3] = &unk_1E837CAA0;
  v44 = v32;
  v25 = v32;
  v26 = [(WFAppIntentExecutionAction *)self alertForLinkConfirmationDialogRequest:v31 preferredStyle:0 handler:v43];

  return v26;
}

- (void)confirmContinueInAppWithRequest:(id)a3 dialogString:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695DFF8];
  v8 = a4;
  v9 = [v7 fileURLWithPath:@"/System/Library/Frameworks/AppIntents.framework"];
  v10 = [objc_alloc(MEMORY[0x1E69AC9E0]) initWithKey:@"Continue" table:0 bundleURL:v9];
  v11 = [objc_alloc(MEMORY[0x1E69AC9E0]) initWithKey:@"Cancel" table:0 bundleURL:v9];
  v12 = objc_alloc(MEMORY[0x1E69ACE18]);
  v13 = [v12 initWithType:0 destructive:0 acceptLabel:v10 acceptAlternatives:MEMORY[0x1E695E0F0] denyLabel:v11 denyAlternatives:MEMORY[0x1E695E0F0]];
  v14 = [(WFAction *)self userInterface];
  v15 = [(WFAppIntentExecutionAction *)self metadata];
  v16 = [v6 dialog];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__WFAppIntentExecutionAction_confirmContinueInAppWithRequest_dialogString___block_invoke;
  v19[3] = &unk_1E837CA00;
  v20 = v6;
  v17 = v6;
  LOBYTE(v18) = 1;
  [v14 showLinkActionConfirmationWithActionMetadata:v15 showPrompt:1 dialog:v16 dialogString:v8 viewSnippet:0 snippetAction:0 encodedSnippetActionToolInvocation:0 confirmationActionName:v13 isContinueInAppRequest:v18 systemStyle:0 completionHandler:v19];
}

void __75__WFAppIntentExecutionAction_confirmContinueInAppWithRequest_dialogString___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*(a1 + 32) requestWithContext:a4];
  if (!a2 || a2 == 2)
  {
    v7 = v5;
    v6 = [MEMORY[0x1E696ABC0] userCancelledError];
    [v7 respondWithError:v6];
  }

  else
  {
    if (a2 != 1)
    {
      goto LABEL_7;
    }

    v7 = v5;
    [v5 respondWithSuccess];
  }

  v5 = v7;
LABEL_7:
}

- (BOOL)progressIsPersistentInSystemApertureForExecutor:(id)a3
{
  v4 = [(WFAction *)self userInterface];

  if (!v4)
  {
    return 0;
  }

  v5 = [(WFAction *)self userInterface];
  v6 = [v5 progressIsPersistentInSystemAperture];

  return v6;
}

- (void)executorWillLaunchApplicationInForeground:(id)a3
{
  v4 = [(WFAction *)self userInterface];

  if (v4)
  {
    v5 = [(WFAction *)self userInterface];
    [v5 applicationWillLaunchInForeground];
  }
}

- (void)executor:(id)a3 needsContinueInAppWithRequest:(id)a4
{
  v5 = a4;
  v6 = [v5 dialog];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__WFAppIntentExecutionAction_executor_needsContinueInAppWithRequest___block_invoke;
  v8[3] = &unk_1E837CA78;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 getResultWithCompletionHandler:v8];
}

void __69__WFAppIntentExecutionAction_executor_needsContinueInAppWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [a2 captionPrint];
  v4 = [v5 firstObject];
  [v2 confirmContinueInAppWithRequest:v3 dialogString:v4];
}

- (void)executor:(id)a3 preferredContentSizeForViewSnippetWithCompletion:(id)a4
{
  v10 = a4;
  v5 = [(WFAction *)self userInterface];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFAppIntentExecutionAction *)self metadata];
    v8 = ([v7 outputFlags] >> 2) & 1;

    v9 = [(WFAction *)self userInterface];
    [v9 getPreferredSizeForLinkViewSnippetWithDialog:v8 completion:v10];
  }

  else
  {
    v10[2](v10, 0);
  }
}

- (void)executor:(id)a3 environmentForViewSnippetWithCompletion:(id)a4
{
  v10 = a4;
  v5 = [(WFAction *)self userInterface];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFAppIntentExecutionAction *)self metadata];
    v8 = ([v7 outputFlags] >> 2) & 1;

    v9 = [(WFAction *)self userInterface];
    [v9 getEnvironmentForLinkViewSnippetWithDialog:v8 completion:v10];
  }

  else
  {
    v10[2](v10, 0);
  }
}

- (void)executor:(id)a3 needsActionConfirmationWithRequest:(id)a4
{
  v5 = a4;
  v6 = [v5 result];
  v7 = [v6 output];
  v8 = [v7 dialog];

  if (v8)
  {
    v9 = [v5 result];
    v10 = [v9 output];
    v11 = [v10 dialog];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__WFAppIntentExecutionAction_executor_needsActionConfirmationWithRequest___block_invoke;
    v12[3] = &unk_1E837CA78;
    v12[4] = self;
    v13 = v5;
    [v11 getResultWithCompletionHandler:v12];
  }

  else
  {
    [(WFAppIntentExecutionAction *)self confirmActionWithRequest:v5 dialogString:0];
  }
}

void __74__WFAppIntentExecutionAction_executor_needsActionConfirmationWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [a2 captionPrint];
  v4 = [v5 firstObject];
  [v2 confirmActionWithRequest:v3 dialogString:v4];
}

- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4
{
  v5 = a3;
  v6 = a4;
  [MEMORY[0x1E695DF30] raise:@"Subclass must override" format:@"Subclasses must override executor:needsDisambiguationWithRequest:"];
  __break(1u);
}

- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4
{
  v5 = a3;
  v6 = a4;
  [MEMORY[0x1E695DF30] raise:@"Subclass must override" format:@"Subclasses must override executor:needsConfirmationWithRequest:"];
  __break(1u);
}

- (void)executor:(id)a3 needsValueWithRequest:(id)a4
{
  v5 = a3;
  v6 = a4;
  [MEMORY[0x1E695DF30] raise:@"Subclass must override" format:@"Subclasses must override executor:needsValueWithRequest:"];
  __break(1u);
}

- (void)confirmActionWithRequest:(id)a3 dialogString:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__WFAppIntentExecutionAction_confirmActionWithRequest_dialogString___block_invoke;
  aBlock[3] = &unk_1E837CA28;
  aBlock[4] = self;
  v8 = v7;
  v22 = v8;
  v9 = v6;
  v23 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [v9 result];
  v12 = [v11 output];
  v13 = [v12 snippetAction];

  if (v13)
  {
    v14 = [v9 result];
    v15 = [v14 output];
    v16 = [v15 snippetAction];
    v17 = [(WFAppIntentExecutionAction *)self fullyQualifiedLinkActionIdentifier];
    v18 = [v17 bundleIdentifier];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__WFAppIntentExecutionAction_confirmActionWithRequest_dialogString___block_invoke_3;
    v19[3] = &unk_1E837CA50;
    v20 = v10;
    [WFToolInvocation invocationFrom:v16 bundleIdentifier:v18 deviceIdentifier:0 completionHandler:v19];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

void __68__WFAppIntentExecutionAction_confirmActionWithRequest_dialogString___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 actionIsExecutedFromAnotherDevice];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [*(a1 + 32) metadata];
    v31 = [v6 alertForLinkActionConfirmationWithActionMetadata:v7 dialogString:*(a1 + 40) request:*(a1 + 48) encodedSnippetActionToolInvocation:v4];

    v8 = [*(a1 + 48) result];
    v9 = [v8 output];
    v10 = [v9 dialog];
    [v31 setLinkDialog:v10];

    v11 = [*(a1 + 32) userInterface];
    [v11 presentAlert:v31];
  }

  else
  {
    v12 = [*(a1 + 32) userInterface];
    v26 = [*(a1 + 32) metadata];
    v32 = [*(a1 + 48) result];
    v30 = [v32 output];
    v13 = [v30 shouldShowPrompt];
    v29 = [*(a1 + 48) result];
    v28 = [v29 output];
    v21 = [v28 dialog];
    v22 = *(a1 + 40);
    v27 = [*(a1 + 48) result];
    v25 = [v27 output];
    v20 = [v25 viewSnippet];
    v24 = [*(a1 + 48) result];
    v23 = [v24 output];
    v14 = [v23 snippetAction];
    v15 = [*(a1 + 48) result];
    v16 = [v15 output];
    v17 = [v16 confirmationActionName];
    v18 = [*(a1 + 48) systemStyle];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __68__WFAppIntentExecutionAction_confirmActionWithRequest_dialogString___block_invoke_2;
    v33[3] = &unk_1E837CA00;
    v34 = *(a1 + 48);
    LOBYTE(v19) = 0;
    [v12 showLinkActionConfirmationWithActionMetadata:v26 showPrompt:v13 dialog:v21 dialogString:v22 viewSnippet:v20 snippetAction:v14 encodedSnippetActionToolInvocation:v4 confirmationActionName:v17 isContinueInAppRequest:v19 systemStyle:v18 completionHandler:v33];
  }
}

void __68__WFAppIntentExecutionAction_confirmActionWithRequest_dialogString___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 encodeAndReturnError:0];
  (*(v2 + 16))(v2, v3);
}

void __68__WFAppIntentExecutionAction_confirmActionWithRequest_dialogString___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v10 = a3;
  v7 = [*(a1 + 32) requestWithContext:a4];
  v8 = v7;
  if (a2)
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        goto LABEL_7;
      }

      [v7 respondWithValue:v10];
    }

    [v8 respondWithConfirmation:0];
  }

  v9 = [MEMORY[0x1E696ABC0] userCancelledError];
  [v8 respondWithError:v9];

LABEL_7:
}

- (void)disambiguateParameterForParameterName:(id)a3 request:(id)a4 dialogString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = [v9 parameterName];
  }

  v12 = v11;
  v13 = [(WFAppIntentExecutionAction *)self parameterMetadataForIdentifier:v11];
  if (v13)
  {
    v14 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:1];
    if ([v10 length])
    {
      [v14 setTitle:v10];
    }

    else
    {
      v16 = [(WFAction *)self localizedDefaultDisambiguationPrompt];
      [v14 setTitle:v16];
    }

    v17 = [v9 providedValues];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __89__WFAppIntentExecutionAction_disambiguateParameterForParameterName_request_dialogString___block_invoke;
    v35[3] = &unk_1E837C960;
    v36 = v13;
    v37 = self;
    v18 = [v17 if_compactMap:v35];

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __89__WFAppIntentExecutionAction_disambiguateParameterForParameterName_request_dialogString___block_invoke_2;
    v32[3] = &unk_1E837C9B0;
    v33 = v14;
    v19 = v9;
    v34 = v19;
    v20 = v14;
    [v18 enumerateObjectsUsingBlock:v32];
    v21 = MEMORY[0x1E6996C78];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __89__WFAppIntentExecutionAction_disambiguateParameterForParameterName_request_dialogString___block_invoke_4;
    v30 = &unk_1E837C9D8;
    v22 = v19;
    v31 = v22;
    v23 = [v21 cancelButtonWithContextAwareHandler:&v27];
    [v20 addButton:{v23, v27, v28, v29, v30}];

    v24 = [v12 copy];
    [v20 setAssociatedParameterKey:v24];

    v25 = [v22 dialog];
    [v20 setLinkDialog:v25];

    v26 = [(WFAction *)self userInterface];
    [v26 presentAlert:v20];
  }

  else
  {
    v15 = WFLinkActionInvalidMetadataError();
    [(WFAppIntentExecutionAction *)self finishRunningWithError:v15];
  }
}

id __89__WFAppIntentExecutionAction_disambiguateParameterForParameterName_request_dialogString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueType];
  v5 = [v4 wf_parameterDefinitionWithParameterMetadata:*(a1 + 32)];

  v6 = [v5 valueType];
  v7 = [*(a1 + 40) fullyQualifiedLinkActionIdentifier];
  v8 = [v7 bundleIdentifier];
  v9 = [*(a1 + 40) displayableAppBundleIdentifier];
  v10 = [v6 wf_contentItemFromLinkValue:v3 appBundleIdentifier:v8 displayedBundleIdentifier:v9 teamIdentifier:0 disclosureLevel:1];

  return v10;
}

void __89__WFAppIntentExecutionAction_disambiguateParameterForParameterName_request_dialogString___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E6996D28];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __89__WFAppIntentExecutionAction_disambiguateParameterForParameterName_request_dialogString___block_invoke_3;
  v11 = &unk_1E837C988;
  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = a3;
  v7 = [v5 buttonWithContentItem:a2 selected:0 stickySelection:0 contextAwareHandler:&v8];
  [v6 addButton:{v7, v8, v9, v10, v11}];
}

void __89__WFAppIntentExecutionAction_disambiguateParameterForParameterName_request_dialogString___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 linkResponseContext];
  v5 = [v2 requestWithContext:v3];

  v4 = [MEMORY[0x1E696ABC0] userCancelledError];
  [v5 respondWithError:v4];
}

void __89__WFAppIntentExecutionAction_disambiguateParameterForParameterName_request_dialogString___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 linkResponseContext];
  v5 = [v3 requestWithContext:v4];

  [v5 respondWithSelectedIndex:*(a1 + 40)];
}

- (void)askForParameterValueForParameterName:(id)a3 request:(id)a4 dialogString:(id)a5
{
  v45[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = [v9 parameterName];
  }

  v12 = v11;
  v13 = [(WFAppIntentExecutionAction *)self parameterMetadataForIdentifier:v11];
  if (v13)
  {
    v14 = [(WFAction *)self parameterForKey:v12];
    v15 = [(WFAction *)self runningDelegate];
    v16 = [v15 action:self canProvideInputForParameter:v14];

    if (v16)
    {
      v17 = [v14 key];
      v18 = [(WFAction *)self parameterStateForKey:v17];

      v19 = [(WFAction *)self processedParameters];
      v20 = [v19 mutableCopy];

      v21 = [v14 key];
      [v20 setObject:0 forKeyedSubscript:v21];

      [(WFAction *)self setProcessedParameters:v20];
      v37 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObject:v14];
      v38 = v18;
      if (v18)
      {
        v31 = [v14 key];
        v44 = v31;
        v45[0] = v18;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      }

      else
      {
        v36 = MEMORY[0x1E695E0F8];
      }

      v35 = [v14 key];
      v42 = v35;
      v24 = [WFParameterPrompt alloc];
      v25 = v10;
      v34 = v10;
      if (!v10)
      {
        v25 = [v14 localizedPrompt];
      }

      [v9 dialog];
      v33 = v32 = v25;
      v26 = [(WFParameterPrompt *)v24 initWithPrompt:v25 linkDialog:v33];
      v43 = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v28 = [(WFAction *)self input];
      v29 = dispatch_get_global_queue(0, 0);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __88__WFAppIntentExecutionAction_askForParameterValueForParameterName_request_dialogString___block_invoke;
      v39[3] = &unk_1E837C938;
      v39[4] = self;
      v40 = v13;
      v41 = v9;
      [(WFAction *)self askForValuesOfParameters:v37 withDefaultStates:v36 prompts:v27 input:v28 workQueue:v29 completionHandler:v39];

      v10 = v34;
      if (!v34)
      {
      }

      if (v38)
      {
      }
    }

    else
    {
      v23 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
      [(WFAppIntentExecutionAction *)self finishRunningWithError:v23];
    }
  }

  else
  {
    v22 = WFLinkActionInvalidMetadataError();
    [(WFAppIntentExecutionAction *)self finishRunningWithError:v22];
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __88__WFAppIntentExecutionAction_askForParameterValueForParameterName_request_dialogString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = *(a1 + 32);
  if (a4)
  {
    [v10 finishRunningWithError:a4];
  }

  else
  {
    v11 = [v10 processedParameters];
    v12 = [v11 if_dictionaryByAddingEntriesFromDictionary:v8];
    [*(a1 + 32) setProcessedParameters:v12];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__WFAppIntentExecutionAction_askForParameterValueForParameterName_request_dialogString___block_invoke_2;
    aBlock[3] = &unk_1E837C910;
    v13 = *(a1 + 40);
    aBlock[4] = *(a1 + 32);
    v23 = v13;
    v24 = v8;
    v25 = *(a1 + 48);
    v26 = v9;
    v14 = _Block_copy(aBlock);
    v15 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = *(a1 + 32);
      v17 = [v16 userInterface];
      v18 = [*(a1 + 32) runningDelegate];
      v19 = [v18 contentItemCache];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __88__WFAppIntentExecutionAction_askForParameterValueForParameterName_request_dialogString___block_invoke_4;
      v20[3] = &unk_1E837FA10;
      v20[4] = *(a1 + 32);
      v21 = v14;
      [v16 performDeletionAuthorizationChecksWithUserInterface:v17 contentItemCache:v19 completionHandler:v20];
    }

    else
    {
      v14[2](v14);
    }
  }
}

void __88__WFAppIntentExecutionAction_askForParameterValueForParameterName_request_dialogString___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__WFAppIntentExecutionAction_askForParameterValueForParameterName_request_dialogString___block_invoke_3;
  v5[3] = &unk_1E837C8E8;
  v5[4] = v2;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 getValueForParameterData:v3 ofProcessedParameters:v4 completionHandler:v5];
}

void __88__WFAppIntentExecutionAction_askForParameterValueForParameterName_request_dialogString___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[WFAppIntentExecutionAction askForParameterValueForParameterName:request:dialogString:]_block_invoke_4";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Interrupting WFLinkDeleteEntityAction because of missing deletion authorization: %@", &v6, 0x16u);
    }

    [*(a1 + 32) finishRunningWithError:v3];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __88__WFAppIntentExecutionAction_askForParameterValueForParameterName_request_dialogString___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (v8)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) linkResponseContext];
    v7 = [v5 requestWithContext:v6];

    [v7 respondWithValue:v8];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:a3];
  }
}

- (void)confirmParameterValueForParameterName:(id)a3 request:(id)a4 dialogString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = [v9 parameterName];
  }

  v12 = v11;
  v13 = [(WFAppIntentExecutionAction *)self parameterMetadataForIdentifier:v11];
  if (v13)
  {
    if ([(WFAppIntentExecutionAction *)self actionIsExecutedFromAnotherDevice])
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __89__WFAppIntentExecutionAction_confirmParameterValueForParameterName_request_dialogString___block_invoke;
      v29[3] = &unk_1E837C898;
      v29[4] = self;
      [(WFAppIntentExecutionAction *)self alertForLinkActionConfirmationWithParameterMetadata:v13 dialogString:v10 request:v9 completionHandler:v29];
    }

    else
    {
      v24 = [v9 value];
      v15 = [v24 valueType];
      v16 = [v9 value];
      v17 = [(WFAppIntentExecutionAction *)self fullyQualifiedLinkActionIdentifier];
      [v17 bundleIdentifier];
      v18 = v26 = v12;
      [(WFAppIntentExecutionAction *)self displayableAppBundleIdentifier];
      v20 = v19 = v10;
      v25 = [v15 wf_contentItemFromLinkValue:v16 appBundleIdentifier:v18 displayedBundleIdentifier:v20 teamIdentifier:0 disclosureLevel:1];

      v10 = v19;
      v21 = [(WFAction *)self userInterface];
      v22 = [v9 dialog];
      v23 = [v9 viewSnippet];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __89__WFAppIntentExecutionAction_confirmParameterValueForParameterName_request_dialogString___block_invoke_2;
      v27[3] = &unk_1E837C8C0;
      v28 = v9;
      [v21 showLinkParameterConfirmationWithActionMetadata:v13 dialog:v22 dialogString:v19 viewSnippet:v23 parameterValue:v25 completionHandler:v27];

      v12 = v26;
    }
  }

  else
  {
    v14 = WFLinkActionInvalidMetadataError();
    [(WFAppIntentExecutionAction *)self finishRunningWithError:v14];
  }
}

void __89__WFAppIntentExecutionAction_confirmParameterValueForParameterName_request_dialogString___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 userInterface];
  [v4 presentAlert:v3];
}

void __89__WFAppIntentExecutionAction_confirmParameterValueForParameterName_request_dialogString___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) requestWithContext:?];
  if (a2)
  {
    if (a2 == 2)
    {
      v6 = v3;
      v4 = 0;
    }

    else
    {
      if (a2 != 1)
      {
        goto LABEL_9;
      }

      v6 = v3;
      v4 = 1;
    }

    [v3 respondWithConfirmation:v4];
  }

  else
  {
    v6 = v3;
    v5 = [MEMORY[0x1E696ABC0] userCancelledError];
    [v6 respondWithError:v5];
  }

  v3 = v6;
LABEL_9:
}

uint64_t __99__WFAppIntentExecutionAction_getLinkActionForArchivingFallingBackToDefaultValue_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) getLinkActionWithProcessedParameters:a2 forFocusConfiguration:1 fallingBackToDefaultValue:*(a1 + 48) completionHandler:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (id)valueForParameterData:(id)a3 withParameterState:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFAppIntentExecutionAction.m" lineNumber:828 description:{@"Invalid parameter not satisfying: %@", @"parameterMetadata"}];
  }

  v9 = [v7 valueType];
  v10 = [(WFAction *)self identifier];
  v11 = [v9 wf_parameterDefinitionWithParameterMetadata:v7 actionIdentifier:v10];
  v12 = [v11 linkValueFromParameterState:v8 action:self];

  return v12;
}

- (id)linkActionWithParameterStates:(id)a3 usingConnectionPolicy:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(WFAppIntentExecutionAction *)self metadata];
  v8 = [v7 parameters];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __82__WFAppIntentExecutionAction_linkActionWithParameterStates_usingConnectionPolicy___block_invoke;
  v22 = &unk_1E837C848;
  v9 = v6;
  v23 = v9;
  v24 = self;
  v10 = [v8 if_map:&v19];

  if (v4)
  {
    v11 = [(WFAppIntentExecutionAction *)self linkActionWithParameters:v10, v19, v20, v21, v22];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E69AC648]);
    v13 = [(WFAppIntentExecutionAction *)self metadata:v19];
    v14 = [(WFAppIntentExecutionAction *)self metadata];
    v15 = [v14 effectiveBundleIdentifiers];
    v16 = [v15 firstObject];
    v17 = [v16 bundleIdentifier];
    v11 = [v12 initWithMetadata:v13 bundleIdentifier:v17 parameters:v10];
  }

  return v11;
}

id __82__WFAppIntentExecutionAction_linkActionWithParameterStates_usingConnectionPolicy___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 name];
  v6 = [v3 objectForKeyedSubscript:v5];

  v7 = [*(a1 + 40) valueForParameterData:v4 withParameterState:v6];
  v8 = objc_alloc(MEMORY[0x1E69AC950]);
  v9 = [v4 name];

  v10 = [v8 initWithIdentifier:v9 value:v7];

  return v10;
}

- (unsigned)runSource
{
  v3 = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 4;
  }

  v5 = [(WFAction *)self runningDelegate];
  v6 = [v5 currentRunningContextForAction:self];

  v7 = [v6 runSource];
  if (([v7 isEqualToString:*MEMORY[0x1E69E13E8]] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69E1380]) & 1) == 0)
  {
    if ([v7 isEqualToString:*MEMORY[0x1E69E1368]])
    {
      v8 = 6;
      goto LABEL_5;
    }

    if ([v7 isEqualToString:*MEMORY[0x1E69E13E0]])
    {
      v8 = 8;
      goto LABEL_5;
    }

    IsSpotlight = WFRunSourceIsSpotlight();

    if (IsSpotlight)
    {
      return 7;
    }

    return 4;
  }

  v8 = 3;
LABEL_5:

  return v8;
}

- (int64_t)runKind
{
  v3 = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(WFAction *)self runningDelegate];
  v6 = [v5 currentRunningContextForAction:self];

  v7 = [v6 runKind];
  if ([v7 isEqualToString:*MEMORY[0x1E69E1360]] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69E1358]))
  {
    v8 = 1;
  }

  else if ([v7 isEqualToString:*MEMORY[0x1E69E1348]])
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (LNActionExecutorOptions)executorOptions
{
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x1E69ACF10]);
  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [v5 localeIdentifier];
  v7 = [v4 initWithLocaleIdentifier:v6];
  [v3 setEnvironment:v7];

  [v3 setClientLabel:@"Shortcuts"];
  [v3 setSource:{-[WFAppIntentExecutionAction runSource](self, "runSource")}];
  [v3 setKind:{-[WFAppIntentExecutionAction runKind](self, "runKind")}];
  [v3 setAllowsPrepareBeforePerform:1];
  if ([(WFAppIntentExecutionAction *)self shouldDisableConnectionOperationTimeout])
  {
    [v3 setConnectionOperationTimeout:*MEMORY[0x1E69ACB68]];
  }

  v8 = [(WFAction *)self runningDelegate];
  v9 = [v8 currentRunningContextForAction:self];

  v10 = [v9 automationType];
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  [v3 setPriority:v11];

  v12 = [v9 runSource];
  if (WFRunSourceIsToolKit())
  {
    v13 = [(WFAppIntentExecutionAction *)self linkSystemContext];

    if (!v13)
    {
      v14 = objc_alloc_init(MEMORY[0x1E69AD048]);
      [(WFAppIntentExecutionAction *)self setLinkSystemContext:v14];
    }

    v15 = [(WFAction *)self toolInvocation];
    v16 = [v15 options];

    v17 = objc_alloc(MEMORY[0x1E69ACD78]);
    v18 = [v9 identifier];
    v19 = [v16 requestIdentifier];
    v20 = [v16 locale];
    v21 = [v17 initWithSessionIdentifier:v18 requestIdentifier:v19 locale:v20];
    v22 = [(WFAppIntentExecutionAction *)self linkSystemContext];
    [v22 setAssistantContext:v21];

    [v3 setInteractionMode:{objc_msgSend(v16, "lnInteractionMode")}];
    v23 = [v16 lnInterfaceIdiom];
    v24 = [(WFAppIntentExecutionAction *)self linkSystemContext];
    [v24 setInterfaceIdiom:v23];
  }

  else
  {
    v25 = [(WFAppIntentExecutionAction *)self opensWhenRunIfApplicable];

    if (v25)
    {
      if ([(WFAppIntentExecutionAction *)self opensWhenRun])
      {
        v26 = 1;
      }

      else
      {
        v26 = 4;
      }

      [v3 setInteractionMode:v26];
    }
  }

  v27 = [(WFAppIntentExecutionAction *)self linkSystemContext];

  if (v27)
  {
    v28 = [(WFAppIntentExecutionAction *)self linkSystemContext];
    [v3 setSystemContext:v28];
  }

  return v3;
}

- (Class)toolkitValueClassForParameter:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  v6 = [(WFAppIntentExecutionAction *)self parameterMetadataForIdentifier:v5];

  v7 = [v6 valueType];
  v8 = [v7 wf_parameterDefinitionWithParameterMetadata:v6];

  v9 = v8;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 memberParameterDefinition];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v12 = v9;
    if (isKindOfClass)
    {
      v13 = [v9 memberParameterDefinition];
      v14 = [v13 valueType];
      v15 = [v14 wf_objectClass];

      v12 = v9;
      goto LABEL_14;
    }
  }

  else
  {

    v12 = 0;
  }

  v17 = v9;
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if (v18)
  {
    goto LABEL_12;
  }

  v19 = v17;
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if (v20)
  {
    goto LABEL_12;
  }

  v21 = v19;
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22 & 1) != 0 || (v23 = v21, objc_opt_class(), v24 = objc_opt_isKindOfClass(), v23, (v24))
  {
LABEL_12:
    v16 = objc_opt_class();
    goto LABEL_13;
  }

  v26 = v23;
  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if ((v27 & 1) == 0)
  {
LABEL_6:
    v16 = [v4 toolkitValueClass];
LABEL_13:
    v15 = v16;
    goto LABEL_14;
  }

  v28 = v26;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;

  v31 = [v30 parameterMetadata];

  v32 = [v31 valueType];
  v33 = [MEMORY[0x1E69AC888] applicationValueType];
  v34 = [v32 isEqual:v33];

  if (v34)
  {
    v15 = objc_opt_class();
  }

  else
  {
    v35 = [v31 valueType];
    v36 = [v35 wf_enumValueType];

    v37 = 0x1E69ACA90;
    if (v36)
    {
      v37 = off_1E836E810;
    }

    v38 = *v37;
    v15 = objc_opt_class();
  }

LABEL_14:

  return v15;
}

- (void)showChronoControlIfPossibleForIntent:(id)a3 completionHandler:(id)a4
{
  v8 = a4;
  v6 = [a3 associatedControl];
  if (v6)
  {
    v7 = [(WFAction *)self userInterface];
    [v6 presentIfPossibleInUserInterface:v7 completionBlock:v8];
  }

  else
  {
    v8[2](v8, 0);
  }
}

- (void)finishRunningWithError:(id)a3
{
  v4 = [(WFAction *)self localizedErrorWithLinkError:a3];
  connectionPolicy = self->_connectionPolicy;
  self->_connectionPolicy = 0;

  v6.receiver = self;
  v6.super_class = WFAppIntentExecutionAction;
  [(WFAction *)&v6 finishRunningWithError:v4];
}

- (BOOL)requiresUnlock
{
  v3 = [(WFAction *)self userInterface];
  v4 = [v3 isRunningWithToolKitClient];

  if (v4)
  {
    goto LABEL_2;
  }

  if ([(WFAppIntentExecutionAction *)self authenticationPolicy]== 1)
  {
LABEL_4:
    v5 = 1;
    return v5 & 1;
  }

  if ([(WFAppIntentExecutionAction *)self authenticationPolicy]== 2)
  {
    goto LABEL_2;
  }

  v7 = [(WFAppIntentExecutionAction *)self metadata];
  v8 = [v7 authenticationPolicy];

  if (v8 == 2)
  {
    goto LABEL_4;
  }

  if (!v8)
  {
LABEL_2:
    v5 = 0;
    return v5 & 1;
  }

  v9 = [(WFAction *)self userInterface];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(WFAction *)self userInterface];
    v11 = [v10 requestedFromAnotherDevice];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(WFAction *)self userInterface];
  if (objc_opt_respondsToSelector())
  {
    v13 = [(WFAction *)self userInterface];
    v14 = [v13 requestedInHomeResident];
  }

  else
  {
    v14 = 0;
  }

  v5 = (v11 | v14) ^ 1;
  return v5 & 1;
}

- (id)sessionKitSessionInvocationType
{
  v3 = [(WFAppIntentExecutionAction *)self metadata];
  v4 = [v3 systemProtocols];
  v5 = [MEMORY[0x1E69ACA50] sessionStartingProtocol];
  if ([v4 containsObject:v5])
  {
    goto LABEL_4;
  }

  v6 = [(WFAppIntentExecutionAction *)self metadata];
  v7 = [v6 systemProtocols];
  v8 = [MEMORY[0x1E69ACA50] audioStartingProtocol];
  if ([v7 containsObject:v8])
  {

LABEL_4:
LABEL_5:
    v9 = @"Manual";
    v10 = @"Manual";
    goto LABEL_6;
  }

  v12 = [(WFAppIntentExecutionAction *)self metadata];
  v13 = [v12 systemProtocols];
  v14 = [MEMORY[0x1E69ACA50] audioRecordingProtocol];
  v15 = [v13 containsObject:v14];

  if (v15)
  {
    goto LABEL_5;
  }

  v16.receiver = self;
  v16.super_class = WFAppIntentExecutionAction;
  v9 = [(WFAction *)&v16 sessionKitSessionInvocationType];
LABEL_6:

  return v9;
}

- (id)bundleIdentifier
{
  v2 = [(WFAppIntentExecutionAction *)self appDescriptor];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (void)processValueForParameter:(id)a3 withToolKitInvocation:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 key];
  v12 = [(WFAppIntentExecutionAction *)self parameterMetadataForIdentifier:v11];

  v13 = [v12 valueType];
  v14 = [v13 wf_unionValueType];

  if (v14)
  {
    v15 = [(WFAction *)self variableSource];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __95__WFAppIntentExecutionAction_processValueForParameter_withToolKitInvocation_completionHandler___block_invoke;
    v24[3] = &unk_1E837C818;
    v16 = &v25;
    v24[4] = self;
    v25 = v8;
    v17 = &v26;
    v26 = v10;
    v18 = v10;
    [v9 processUnionWithParameter:v8 variableSource:v15 completionHandler:v24];
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __95__WFAppIntentExecutionAction_processValueForParameter_withToolKitInvocation_completionHandler___block_invoke_3;
    v21[3] = &unk_1E837C818;
    v16 = &v22;
    v21[4] = self;
    v22 = v8;
    v17 = &v23;
    v23 = v10;
    v20.receiver = self;
    v20.super_class = WFAppIntentExecutionAction;
    v19 = v10;
    [(WFAction *)&v20 processValueForParameter:v8 withToolKitInvocation:v9 completionHandler:v21];
  }
}

void __95__WFAppIntentExecutionAction_processValueForParameter_withToolKitInvocation_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__WFAppIntentExecutionAction_processValueForParameter_withToolKitInvocation_completionHandler___block_invoke_2;
  v10[3] = &unk_1E837D7E8;
  v8 = *(a1 + 48);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v6 postProcessToolKitProcessedValue:a2 forParameter:v7 completionHandler:v10];
}

void __95__WFAppIntentExecutionAction_processValueForParameter_withToolKitInvocation_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__WFAppIntentExecutionAction_processValueForParameter_withToolKitInvocation_completionHandler___block_invoke_4;
  v10[3] = &unk_1E837D7E8;
  v8 = *(a1 + 48);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v6 postProcessToolKitProcessedValue:a2 forParameter:v7 completionHandler:v10];
}

- (void)processEncodedValue:(id)a3 withToolKitInvocation:(id)a4 forParameter:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__WFAppIntentExecutionAction_processEncodedValue_withToolKitInvocation_forParameter_completionHandler___block_invoke;
  v15[3] = &unk_1E837C818;
  v15[4] = self;
  v16 = v10;
  v17 = v11;
  v14.receiver = self;
  v14.super_class = WFAppIntentExecutionAction;
  v12 = v11;
  v13 = v10;
  [(WFAction *)&v14 processEncodedValue:a3 withToolKitInvocation:a4 forParameter:v13 completionHandler:v15];
}

void __103__WFAppIntentExecutionAction_processEncodedValue_withToolKitInvocation_forParameter_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__WFAppIntentExecutionAction_processEncodedValue_withToolKitInvocation_forParameter_completionHandler___block_invoke_2;
  v10[3] = &unk_1E837D7E8;
  v8 = *(a1 + 48);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v6 postProcessToolKitProcessedValue:a2 forParameter:v7 completionHandler:v10];
}

- (void)postProcessToolKitProcessedValue:(id)a3 forParameter:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 key];
  v12 = [(WFAppIntentExecutionAction *)self parameterMetadataForIdentifier:v11];

  v13 = [v12 valueType];
  v14 = [v13 wf_parameterDefinitionWithParameterMetadata:v12];

  v15 = v14;
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = [v15 memberParameterDefinition];
    v17 = 1;
    v42 = v15;
  }

  else
  {
    v17 = 0;
    v42 = 0;
    v16 = v15;
  }

  v18 = v16;
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v21 = v18;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = v22;

  if (v20 | v23)
  {
    v41 = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__WFAppIntentExecutionAction_postProcessToolKitProcessedValue_forParameter_completionHandler___block_invoke;
    aBlock[3] = &unk_1E837C7C8;
    v50 = v23;
    v38 = _Block_copy(aBlock);
    v40 = v8;
    v24 = v8;
    if (v24)
    {
      objc_opt_class();
      v25 = objc_opt_isKindOfClass() & 1;
      if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;

      if ((v25 & v17) == 1)
      {
        v28 = [v12 valueType];
        v29 = [v28 wf_objectValueType];

        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __94__WFAppIntentExecutionAction_postProcessToolKitProcessedValue_forParameter_completionHandler___block_invoke_245;
        v46[3] = &unk_1E837C7F0;
        v30 = v38;
        v47 = v29;
        v48 = v38;
        v31 = v29;
        v32 = [v27 if_map:v46];
        v10[2](v10, v32);

        v27 = v24;
LABEL_26:

        v8 = v40;
        v9 = v41;
        goto LABEL_27;
      }
    }

    else
    {
      v27 = 0;
    }

    if (v20 && ([v12 valueType], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "wf_unionValueType"), v34 = objc_claimAutoreleasedReturnValue(), v34, v33, v34))
    {
      v35 = [(WFAction *)self toolInvocation];
      v36 = [v41 key];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __94__WFAppIntentExecutionAction_postProcessToolKitProcessedValue_forParameter_completionHandler___block_invoke_2_247;
      v43[3] = &unk_1E837F560;
      v45 = v10;
      v44 = v24;
      [v35 valueTypeForParameterWithKey:v36 completionHandler:v43];

      v31 = v45;
      v30 = v38;
    }

    else
    {
      v37 = [v18 valueType];
      v31 = v39[2](v39, v24, v37);

      v30 = v39;
      v10[2](v10, v31);
    }

    goto LABEL_26;
  }

  v10[2](v10, v8);
LABEL_27:
}

id __94__WFAppIntentExecutionAction_postProcessToolKitProcessedValue_forParameter_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v12 = 0;
    goto LABEL_24;
  }

  objc_opt_class();
  v7 = objc_opt_isKindOfClass() & 1;
  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v7)
  {
    v10 = [v5 bundleIdentifier];

    v11 = v10;
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = v5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [*(a1 + 32) enumMetadata];
    v14 = [v13 cases];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __94__WFAppIntentExecutionAction_postProcessToolKitProcessedValue_forParameter_completionHandler___block_invoke_2;
    v22[3] = &unk_1E837F1B0;
    v11 = v11;
    v23 = v11;
    v15 = [v14 if_firstObjectPassingTest:v22];

    if (v15)
    {
      v12 = [v15 identifier];
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x1E69ACA90]);
      v18 = [v11 identifier];
      v12 = [v17 initWithValue:v18 valueType:v6];
    }

    goto LABEL_23;
  }

LABEL_13:

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v11;
    v11 = v16;
  }

  else
  {
    if (([v6 objectIsMemberOfType:v11] & 1) == 0)
    {
      v19 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v25 = "[WFAppIntentExecutionAction postProcessToolKitProcessedValue:forParameter:completionHandler:]_block_invoke";
        v26 = 2112;
        v27 = v11;
        v28 = 2112;
        v29 = v6;
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_ERROR, "%s Unable to make LNValue from %@ because %@ doesn't accept it", buf, 0x20u);
      }

      v12 = 0;
      goto LABEL_23;
    }

    v16 = [objc_alloc(MEMORY[0x1E69ACA90]) initWithValue:v11 valueType:v6];
  }

  v12 = v16;
LABEL_23:

LABEL_24:
  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

void __94__WFAppIntentExecutionAction_postProcessToolKitProcessedValue_forParameter_completionHandler___block_invoke_2_247(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = MEMORY[0x1E69ACA90];
  v5 = a2;
  v6 = [[v4 alloc] initWithValue:*(a1 + 32) valueType:v5];

  (*(v3 + 16))(v3, v6);
}

uint64_t __94__WFAppIntentExecutionAction_postProcessToolKitProcessedValue_forParameter_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)willBeginProcessingParameterStates
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(WFAppIntentExecutionAction *)self setParameterIdentifiersNeedingValues:v3];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(WFAction *)self parameters];
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 key];
        v10 = [(WFAction *)self parameterStateForKey:v9];

        v11 = [v10 containedVariables];
        v12 = NSStringFromSelector(sel_type);
        v13 = [v11 filteredArrayForKey:v12 value:@"Ask"];

        v14 = [v8 key];
        v15 = [(WFAction *)self canOfferSuggestionsForParameterWithKey:v14];

        if ([v13 count] && !v15)
        {
          v16 = [v8 key];
          [(WFAction *)self setParameterState:0 forKey:v16];

          v17 = [(WFAppIntentExecutionAction *)self parameterIdentifiersNeedingValues];
          v18 = [v8 key];
          [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v18];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)configureParameter:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = WFAppIntentExecutionAction;
  [(WFAction *)&v24 configureParameter:v4];
  v5 = v4;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setAction:self];
      v6 = v5;
    }

    else
    {

      v6 = 0;
    }

    v7 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 key];
      v9 = [(WFAppIntentExecutionAction *)self parameterMetadataForIdentifier:v8];

      v10 = [v9 valueType];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = [v7 definition];
        v13 = [v12 objectForKey:@"LinkUnionSubparameterMetadata"];

        if (v13)
        {
          v14 = [v7 definition];
          v15 = [v14 objectForKey:@"LinkUnionSubparameterMetadata"];

          v9 = v15;
        }
      }

      if (v9)
      {
        [v7 setAction:self];
        [v7 setDataSource:self];
        [v7 setParameterMetadata:v9];
        v16 = [v9 valueType];
        v17 = [v16 wf_parameterDefinitionWithParameterMetadata:v9 dynamicOptionsSupport:0];

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

        v22 = [v21 isUniqueEntity];
        if (v22)
        {
          [v7 setHidden:1];
        }
      }

      else
      {
        v19 = getWFWorkflowExecutionLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          v20 = [v7 key];
          *buf = 136315394;
          v26 = "[WFAppIntentExecutionAction configureParameter:]";
          v27 = 2112;
          v28 = v20;
          _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_FAULT, "%s Could not get parameter metadata with key %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)isApprovedForPublicShortcutsDrawer
{
  v3 = [(WFAppIntentExecutionAction *)self metadata];
  v4 = [v3 assistantDefinedSchemas];
  v5 = [v4 if_firstObjectPassingTest:&__block_literal_global_225_60212];

  if (v5)
  {
    return 0;
  }

  v7 = [(WFAppIntentExecutionAction *)self fullyQualifiedLinkActionIdentifier];
  v8 = [WFLinkActionProvider approvedForPublicDrawerToDisplayActionIdentifier:v7];

  return v8;
}

uint64_t __64__WFAppIntentExecutionAction_isApprovedForPublicShortcutsDrawer__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"ShowVisualSearchResultsInAppIntent"];

  return v3;
}

- (BOOL)visibleForUse:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = WFAppIntentExecutionAction;
  if (![(WFAction *)&v8 visibleForUse:?])
  {
    return 0;
  }

  v5 = [(WFAppIntentExecutionAction *)self metadata];
  v6 = [v5 visibleForUse:a3];

  return v6;
}

- (BOOL)opensWhenRun
{
  v2 = [(WFAppIntentExecutionAction *)self opensWhenRunIfApplicable];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSNumber)opensWhenRunIfApplicable
{
  v3 = [(WFAction *)self parameterForKey:@"OpenWhenRun"];
  v4 = v3;
  if (v3 && ([v3 isHidden] & 1) == 0 && (objc_msgSend(v4, "resourceManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "resourcesRequiredForDisplayAvailable"), v5, v6))
  {
    v7 = [(WFAction *)self parameterValueForKey:@"OpenWhenRun" ofClass:objc_opt_class()];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)displayableAppBundleIdentifier
{
  v2 = [(WFAppIntentExecutionAction *)self displayableAppDescriptor];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)displayableAppDescriptor
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(WFAction *)self definition];
  v4 = [v3 objectForKey:@"LinkActionDisableDisplayedAppDescriptor"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 BOOLValue];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(WFAction *)self definition];
    v10 = [v9 objectForKey:@"LinkActionDisplayedAppDescriptor"];

    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E696E720]) initWithSerializedRepresentation:v10];
      v8 = v11;
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v13 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v18 = "[WFAppIntentExecutionAction displayableAppDescriptor]";
          _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Found a serialized representation for displayedAppDescriptor, but failed to deserialize it.", buf, 0xCu);
        }
      }
    }

    else
    {
      v16.receiver = self;
      v16.super_class = WFAppIntentExecutionAction;
      v8 = [(WFAction *)&v16 displayableAppDescriptor];
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)linkActionWithParameters:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_connectionLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__WFAppIntentExecutionAction_linkActionWithParameters___block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = [(WFAppIntentExecutionAction *)self connectionPolicy];
  v7 = [v6 actionWithParameters:v4];

  v5[2](v5);

  return v7;
}

- (BOOL)actionIsExecutedFromAnotherDevice
{
  v3 = [(WFAction *)self userInterface];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(WFAction *)self userInterface];
    v5 = [v4 requestedFromAnotherDevice];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)entityMetadataForIdentifier:(id)a3
{
  v4 = MEMORY[0x1E69E0970];
  v5 = a3;
  v6 = [v4 sharedProvider];
  v7 = [(WFAppIntentExecutionAction *)self fullyQualifiedLinkActionIdentifier];
  v8 = [v7 bundleIdentifier];
  v9 = [v6 entityWithIdentifier:v5 fromBundleIdentifier:v8];

  return v9;
}

- (id)backingActionIdentifiers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(WFAction *)self identifier];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)parameterMetadataForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@"~"];
  v6 = [(WFAppIntentExecutionAction *)self metadata];
  v7 = [v6 parameters];
  v8 = [v5 firstObject];
  v9 = [v7 if_firstObjectWithValue:v8 forKey:@"name"];

  v10 = [v9 valueType];
  v11 = [v10 wf_unionValueType];

  if (v11)
  {
    v12 = [WFLinkActionUnionParameterDefinition alloc];
    v13 = [v9 valueType];
    v14 = [v13 wf_unionValueType];
    v15 = [(WFLinkActionUnionParameterDefinition *)v12 initWithValueType:v14 parameterMetadata:v9];

    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [(WFLinkActionUnionParameterDefinition *)v15 parameterMetadataForIdentifier:v4];

        goto LABEL_7;
      }
    }
  }

  v16 = v9;
LABEL_7:

  return v16;
}

- (void)getLinkActionWithProcessedParameters:(id)a3 forFocusConfiguration:(BOOL)a4 fallingBackToDefaultValue:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(WFAppIntentExecutionAction *)self metadata];
  v13 = [v12 parameters];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __133__WFAppIntentExecutionAction_getLinkActionWithProcessedParameters_forFocusConfiguration_fallingBackToDefaultValue_completionHandler___block_invoke;
  v18[3] = &unk_1E837C780;
  v18[4] = self;
  v19 = v10;
  v20 = a5;
  v21 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __133__WFAppIntentExecutionAction_getLinkActionWithProcessedParameters_forFocusConfiguration_fallingBackToDefaultValue_completionHandler___block_invoke_5;
  v16[3] = &unk_1E837F020;
  v16[4] = self;
  v17 = v11;
  v14 = v11;
  v15 = v10;
  [v13 if_mapAsynchronously:v18 completionHandler:v16];
}

void __133__WFAppIntentExecutionAction_getLinkActionWithProcessedParameters_forFocusConfiguration_fallingBackToDefaultValue_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __133__WFAppIntentExecutionAction_getLinkActionWithProcessedParameters_forFocusConfiguration_fallingBackToDefaultValue_completionHandler___block_invoke_2;
  v13[3] = &unk_1E837C758;
  v13[4] = v8;
  v14 = v6;
  v16 = *(a1 + 49);
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [v8 getValueForParameterData:v12 ofProcessedParameters:v9 fallingBackToDefaultValue:v10 completionHandler:v13];
}

void __133__WFAppIntentExecutionAction_getLinkActionWithProcessedParameters_forFocusConfiguration_fallingBackToDefaultValue_completionHandler___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 40);

    v4(v5, 0);
  }

  else
  {
    v6 = [*(a1 + 32) linkActionWithParameters:a2];
    (*(v3 + 16))(v3, v6, 0);
  }
}

void __133__WFAppIntentExecutionAction_getLinkActionWithProcessedParameters_forFocusConfiguration_fallingBackToDefaultValue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 if_map:&__block_literal_global_201];

      v7 = v8;
    }

    v9 = objc_alloc(MEMORY[0x1E69ACA90]);
    v10 = [v5 valueType];
    v11 = [v5 displayRepresentation];
    v26 = [v9 initWithValue:v7 valueType:v10 displayRepresentation:v11];
  }

  else
  {
    v26 = 0;
  }

  v12 = [*(a1 + 32) parameterIdentifiersNeedingValues];
  v13 = [*(a1 + 40) name];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x1E69AC8F0]);
    [v15 setForcesNeedsValue:1];

    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = v26;
  }

  v27 = v16;
  if (*(a1 + 56) == 1)
  {
    if ([*(a1 + 32) valueShouldStripSensitiveContent:v16])
    {
      [v27 setDisplayRepresentation:0];
      v17 = [v27 valueType];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v19 = [v27 value];
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

        v21 = v20;

        [v21 enumerateObjectsUsingBlock:&__block_literal_global_206_60228];
      }
    }
  }

  v22 = *(a1 + 48);
  v23 = objc_alloc(MEMORY[0x1E69AC8E0]);
  v24 = [*(a1 + 40) name];
  v25 = [v23 initWithIdentifier:v24 value:v27 configuration:v15];
  (*(v22 + 16))(v22, v25, v6);
}

id __133__WFAppIntentExecutionAction_getLinkActionWithProcessedParameters_forFocusConfiguration_fallingBackToDefaultValue_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69ACA90];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 value];
  v6 = [v3 valueType];
  v7 = [v3 displayRepresentation];

  v8 = [v4 initWithValue:v5 valueType:v6 displayRepresentation:v7];

  return v8;
}

- (id)localizedDefaultOutputNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAppIntentExecutionAction *)self metadata];
  v6 = [v5 descriptionMetadata];

  v7 = [v6 resultValueName];

  if (v7)
  {
    v8 = [v6 resultValueName];
    v9 = [v4 locale];
    v10 = [v9 localeIdentifier];
    v11 = [v8 localizedStringForLocaleIdentifier:v10];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFAppIntentExecutionAction;
    v11 = [(WFAction *)&v13 localizedDefaultOutputNameWithContext:v4];
  }

  return v11;
}

- (BOOL)defaultParameterSummaryContainsRequiredParameters
{
  v2 = self;
  v75 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(WFAppIntentExecutionAction *)self actionSummary];
  v5 = [v4 summaryString];
  v6 = [v5 parameterIdentifiers];
  v55 = [v3 setWithArray:v6];

  v7 = MEMORY[0x1E695DFD8];
  v8 = [(WFAppIntentExecutionAction *)v2 metadata];
  v9 = [v8 parameters];
  v10 = [v9 if_map:&__block_literal_global_189_60235];
  v11 = [v7 setWithArray:v10];

  v12 = [(WFAppIntentExecutionAction *)v2 actionSummary];

  if (v12)
  {
    v65 = 0uLL;
    v66 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    obj = v11;
    v58 = [obj countByEnumeratingWithState:&v63 objects:v74 count:16];
    if (v58)
    {
      v51 = v11;
      v57 = *v64;
      v52 = *MEMORY[0x1E69AC590];
      v53 = v2;
      while (2)
      {
        for (i = 0; i != v58; ++i)
        {
          if (*v64 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v63 + 1) + 8 * i);
          v15 = [(WFAppIntentExecutionAction *)v2 parameterMetadataForIdentifier:v14];
          if (v15)
          {
            v16 = v15;
            v17 = [v55 containsObject:v14];
            v18 = [v16 isOptional];
            v19 = [v16 capabilities]& 3;
            v20 = [v16 typeSpecificMetadata];
            v21 = [v20 objectForKey:v52];

            v22 = [v16 dynamicOptionsSupport]& 3;
            v23 = [v16 typeSpecificMetadata];
            v24 = [v23 objectForKey:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];

            if (v24 && [v24 isTransient])
            {
              if (v19)
              {
                v25 = 1;
              }

              else
              {
                v25 = v18;
              }

              if ((v25 & 1) == 0 && !v21 && !v22)
              {
                v46 = getWFActionsLogObject();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  v45 = [(WFAction *)v53 identifier];
                  v48 = [(WFAction *)v53 identifier];
                  *buf = 136315650;
                  v69 = "[WFAppIntentExecutionAction defaultParameterSummaryContainsRequiredParameters]";
                  v70 = 2112;
                  v71 = v45;
                  v72 = 2112;
                  v73 = v48;
                  _os_log_impl(&dword_1CA256000, v46, OS_LOG_TYPE_DEFAULT, "%s Action %@ has transient parameter (%@) without a DOP, parameter is non optional or has no default", buf, 0x20u);

LABEL_53:
                }

                goto LABEL_54;
              }
            }

            else if ((v17 & 1) == 0)
            {
              v26 = v19 ? 1 : v18;
              if ((v26 & 1) == 0 && !v21 && !v22)
              {
                v46 = getWFActionsLogObject();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  v45 = [(WFAction *)v53 identifier];
                  *buf = 136315650;
                  v69 = "[WFAppIntentExecutionAction defaultParameterSummaryContainsRequiredParameters]";
                  v70 = 2112;
                  v71 = v45;
                  v72 = 2112;
                  v73 = v14;
                  _os_log_impl(&dword_1CA256000, v46, OS_LOG_TYPE_DEFAULT, "%s Action %@ does not have all required parameters (%@) in summary", buf, 0x20u);
                  goto LABEL_53;
                }

LABEL_54:

                v11 = v51;
                goto LABEL_55;
              }
            }

            v2 = v53;
          }

          else
          {
            v16 = getWFActionsLogObject();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v69 = "[WFAppIntentExecutionAction defaultParameterSummaryContainsRequiredParameters]";
              _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Did not find parameter for other parameter key this is an error, continuing.", buf, 0xCu);
            }
          }
        }

        v58 = [obj countByEnumeratingWithState:&v63 objects:v74 count:16];
        if (v58)
        {
          continue;
        }

        break;
      }

      v27 = 1;
      v11 = v51;
      goto LABEL_56;
    }

LABEL_46:
    v27 = 1;
    goto LABEL_56;
  }

  v61 = 0uLL;
  v62 = 0uLL;
  v59 = 0uLL;
  v60 = 0uLL;
  v28 = [(WFAppIntentExecutionAction *)v2 metadata];
  v29 = [v28 parameters];

  obj = v29;
  v30 = [v29 countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (!v30)
  {
    goto LABEL_46;
  }

  v31 = v30;
  v54 = v2;
  v32 = v11;
  v33 = *v60;
  v34 = *MEMORY[0x1E69AC590];
  while (2)
  {
    for (j = 0; j != v31; ++j)
    {
      if (*v60 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v36 = *(*(&v59 + 1) + 8 * j);
      v37 = [v36 isOptional];
      v38 = [v36 capabilities];
      v39 = [v36 typeSpecificMetadata];
      v40 = [v39 objectForKey:v34];

      v41 = [v36 dynamicOptionsSupport];
      if ((v37 & 1) == 0)
      {
        v42 = (v38 & 3) == 0 && v40 == 0;
        if (v42 && (v41 & 3) == 0)
        {
          v16 = getWFActionsLogObject();
          v11 = v32;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v44 = [(WFAction *)v54 identifier];
            *buf = 136315394;
            v69 = "[WFAppIntentExecutionAction defaultParameterSummaryContainsRequiredParameters]";
            v70 = 2112;
            v71 = v44;
            _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_DEFAULT, "%s Action %@ has a parameter without a DOP, parameter is non optional or has no default", buf, 0x16u);
          }

LABEL_55:

          v27 = 0;
          goto LABEL_56;
        }
      }
    }

    v31 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
    v27 = 1;
    if (v31)
    {
      continue;
    }

    break;
  }

  v11 = v32;
LABEL_56:

  v49 = *MEMORY[0x1E69E9840];
  return v27;
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
    v24.receiver = self;
    v24.super_class = WFAppIntentExecutionAction;
    v5 = [(WFAction *)&v24 outputDictionary];
    v6 = [(WFAppIntentExecutionAction *)self metadata];
    v7 = [v6 outputType];

    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = [v5 objectForKeyedSubscript:@"Types"];

    if (v8)
    {
      goto LABEL_7;
    }

    v11 = [(WFAppIntentExecutionAction *)self fullyQualifiedLinkActionIdentifier];
    v12 = [v11 bundleIdentifier];
    v13 = [v7 wf_contentItemClassesWithAppBundleIdentifier:v12];

    if (v13)
    {
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

      v17 = v16;

      v25[0] = @"Multiple";
      v18 = MEMORY[0x1E696AD98];
      objc_opt_class();
      v19 = [v18 numberWithBool:objc_opt_isKindOfClass() & 1];
      v25[1] = @"Types";
      v26[0] = v19;
      v20 = [v13 if_compactMap:&__block_literal_global_60246];
      v26[1] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
      [v17 addEntriesFromDictionary:v21];

      v22 = [v17 copy];
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = [MEMORY[0x1E695DFB0] null];
      }

      outputDictionary = self->_outputDictionary;
      self->_outputDictionary = v23;
      v5 = v22;
    }

    else
    {
LABEL_7:

      outputDictionary = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)copyForProcessing
{
  v7.receiver = self;
  v7.super_class = WFAppIntentExecutionAction;
  v3 = [(WFAction *)&v7 copyForProcessing];
  v4 = v3;
  if (v3)
  {
    [v3 setShouldSkipLoadingAsynchronousDefaultValue:1];
    v5 = [(WFAction *)self processedParameters];
    [v4 setProcessedParameters:v5];
  }

  return v4;
}

- (id)copyWithSerializedParameters:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(WFAction *)self identifier];
  v7 = [(WFAppIntentExecutionAction *)self metadata];
  v8 = [(WFAction *)self definition];
  v9 = [(WFAppIntentExecutionAction *)self appIntentDescriptor];
  v10 = [(WFAppIntentExecutionAction *)self fullyQualifiedLinkActionIdentifier];
  v11 = [v5 initWithIdentifier:v6 metadata:v7 definition:v8 serializedParameters:v4 appIntentDescriptor:v9 fullyQualifiedActionIdentifier:v10];

  return v11;
}

- (WFAppIntentExecutionAction)initWithIdentifier:(id)a3 metadata:(id)a4 definition:(id)a5 serializedParameters:(id)a6 appIntentDescriptor:(id)a7 fullyQualifiedActionIdentifier:(id)a8
{
  v15 = a4;
  v35 = a7;
  v16 = a8;
  v17 = a5;
  v18 = a3;
  v19 = [a6 mutableCopy];
  v36.receiver = self;
  v36.super_class = WFAppIntentExecutionAction;
  v20 = [(WFAction *)&v36 initWithIdentifier:v18 definition:v17 serializedParameters:v19];

  if (v20)
  {
    objc_storeStrong(&v20->_metadata, a4);
    objc_storeStrong(&v20->_appIntentDescriptor, a7);
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dependentParameterIdentifiers = v20->_dependentParameterIdentifiers;
    v20->_dependentParameterIdentifiers = v21;

    objc_storeStrong(&v20->_fullyQualifiedLinkActionIdentifier, a8);
    v20->_connectionLock._os_unfair_lock_opaque = 0;
    v20->_policyLock._os_unfair_lock_opaque = 0;
    v20->_signalsLock._os_unfair_lock_opaque = 0;
    v20->_actionArchivingQueueLock._os_unfair_lock_opaque = 0;
    v23 = [v15 actionConfiguration];
    v24 = [(WFAppIntentExecutionAction *)v20 linkActionWithParameterStates:MEMORY[0x1E695E0F8] usingConnectionPolicy:0];
    v25 = [(WFAppIntentExecutionAction *)v20 actionConfigurationContext];
    v26 = [v23 actionConfigurationByEvaluatingAction:v24 context:v25];

    if (v26)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    actionSummary = v20->_actionSummary;
    v20->_actionSummary = v28;

    v30 = [(LNActionSummary *)v20->_actionSummary localizedFormatStringForLocaleIdentifier:0];
    if (v30)
    {
      v31 = [[WFActionParameterSummary alloc] initWithLocalizedString:v30];
      parameterSummary = v20->_parameterSummary;
      v20->_parameterSummary = v31;
    }

    v33 = v20;
  }

  return v20;
}

- (void)generateShortcutRepresentation:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = *MEMORY[0x1E696EAF8];
  v6 = a3;
  v7 = [(WFAction *)self identifier];
  v12 = [v4 stringWithFormat:@"%@%@", v5, v7];

  v8 = [WFHandleCustomIntentAction alloc];
  v9 = [(WFAction *)self definition];
  v10 = [(WFAction *)self serializedParameters];
  v11 = [(WFHandleIntentAction *)v8 initWithIdentifier:v12 definition:v9 serializedParameters:v10];

  if (v11)
  {
    [(WFHandleIntentAction *)v11 generateShortcutRepresentation:v6];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)generateStandaloneShortcutRepresentation:(id)a3
{
  v6 = a3;
  v4 = [(WFAppIntentExecutionAction *)self associatedAppBundleIdentifier];
  if (v4)
  {
    v5 = [[WFStandaloneShortcutRepresentation alloc] initWithBundleIdentifier:v4];
    v6[2](v6, v5);
  }

  else
  {
    v6[2](v6, 0);
  }
}

@end