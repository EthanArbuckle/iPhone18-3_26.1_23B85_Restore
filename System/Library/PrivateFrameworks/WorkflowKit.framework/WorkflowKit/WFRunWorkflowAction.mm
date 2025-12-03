@interface WFRunWorkflowAction
- (BOOL)canOfferSuggestionsForParameterWithKey:(id)key;
- (BOOL)workflowController:(id)controller handleUnsupportedEnvironmentForAction:(id)action currentState:(id)state completionHandler:(id)handler;
- (WFWorkflowController)workflowController;
- (id)contentDestinationWithError:(id *)error;
- (id)getWorkflowWithError:(id *)error;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (id)workflowNameFromParameter;
- (void)beginPersistentModeForSpotlightWhenReady;
- (void)beginPersistentModeIfReady;
- (void)cancel;
- (void)endPersistentModeWithError:(id)error;
- (void)fetchSuggestedEntitiesForParameterWithKey:(id)key completionHandler:(id)handler;
- (void)getHandoffWorkflowControllerState:(id)state;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performWithSandboxExtensions:(id)extensions;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)setHandoffWorkflowControllerState:(id)state;
- (void)stop;
- (void)workflowController:(id)controller didFinishRunningWithError:(id)error cancelled:(BOOL)cancelled;
- (void)workflowController:(id)controller didRunAction:(id)action error:(id)error;
- (void)workflowController:(id)controller prepareToRunAction:(id)action withInput:(id)input completionHandler:(id)handler;
@end

@implementation WFRunWorkflowAction

- (WFWorkflowController)workflowController
{
  WeakRetained = objc_loadWeakRetained(&self->_workflowController);

  return WeakRetained;
}

- (void)fetchSuggestedEntitiesForParameterWithKey:(id)key completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [(WFAction *)self systemEntityCollectionIdentifierForDisambiguatingParameterWithKey:key];
  if (v6)
  {
    v7 = +[WFDatabaseProxy defaultDatabase];
    v8 = [v7 collectionWithIdentifier:v6 error:0];
    v9 = [v7 sortedVisibleWorkflowsInCollection:v8 error:0];
    v10 = [v9 if_map:&__block_literal_global_252];
    handlerCopy[2](handlerCopy, v10, 0);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }
}

id __83__WFRunWorkflowAction_fetchSuggestedEntitiesForParameterWithKey_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFWorkflowParameterStateDescriptor alloc] initWithWorkflowReference:v2 isSelf:0];
  v4 = [(WFVariableSubstitutableParameterState *)[WFWorkflowParameterState alloc] initWithValue:v3];
  v5 = [v2 associatedAppBundleIdentifier];
  if (v5 && (v6 = v5, [v2 associatedAppBundleIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = objc_alloc(MEMORY[0x1E69E0960]);
    v10 = [v2 associatedAppBundleIdentifier];
    v11 = [v9 initWithBundleIdentifier:v10];
  }

  else
  {
    v10 = [v2 icon];
    v11 = [v10 icon];
  }

  v12 = v11;

  v13 = objc_alloc(MEMORY[0x1E69E09E8]);
  v14 = [v2 identifier];
  v15 = [v2 name];
  v16 = [(WFVariableSubstitutableParameterState *)v4 serializedRepresentation];
  v17 = [v13 initWithIdentifier:v14 name:v15 entryIcon:v12 accessoryIcon:0 serializedParameterState:v16];

  return v17;
}

- (BOOL)canOfferSuggestionsForParameterWithKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (keyCopy == @"WFWorkflow")
  {
    v6 = 1;
  }

  else if (keyCopy)
  {
    v6 = [(__CFString *)keyCopy isEqualToString:@"WFWorkflow"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(WFAction *)self systemEntityCollectionIdentifierForDisambiguatingParameterWithKey:v5];

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  v5 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  v7 = WFLocalizedString(@"Allow “%1$@” to run another shortcut?");
  nameCopy = [v5 localizedStringWithFormat:v7, nameCopy];

  return nameCopy;
}

- (BOOL)workflowController:(id)controller handleUnsupportedEnvironmentForAction:(id)action currentState:(id)state completionHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  actionCopy = action;
  controllerCopy = controller;
  userInterface = [(WFAction *)self userInterface];
  runningDelegate = [(WFAction *)self runningDelegate];
  runSource = [controllerCopy runSource];

  v17 = WFRemoteExecuteActionIfApplicable(actionCopy, stateCopy, userInterface, runningDelegate, runSource, handlerCopy);
  if ((v17 & 1) == 0)
  {
    [(WFRunWorkflowAction *)self setHandoffWorkflowControllerState:stateCopy];
  }

  return v17;
}

- (void)workflowController:(id)controller didFinishRunningWithError:(id)error cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  controllerCopy = controller;
  errorCopy = error;
  [(WFRunWorkflowAction *)self endPersistentModeWithError:errorCopy];
  userInterface = [(WFAction *)self userInterface];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    userInterface2 = [(WFAction *)self userInterface];
    dialogTransformer = [userInterface2 dialogTransformer];
    [dialogTransformer setCurrentAction:self];

    userInterface3 = [(WFAction *)self userInterface];
    dialogTransformer2 = [userInterface3 dialogTransformer];
    workflow = [(WFAction *)self workflow];
    [dialogTransformer2 setWorkflow:workflow];
  }

  if (cancelledCopy)
  {
    v18.receiver = self;
    v18.super_class = WFRunWorkflowAction;
    [(WFAction *)&v18 cancel];
  }

  else
  {
    output = [controllerCopy output];
    [(WFAction *)self setOutput:output];

    [(WFAction *)self finishRunningWithError:errorCopy];
  }
}

- (void)workflowController:(id)controller didRunAction:(id)action error:(id)error
{
  controllerCopy = controller;
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    mEMORY[0x1E69E0C70] = [MEMORY[0x1E69E0C70] sharedManager];
    v12 = 0;
    v10 = [mEMORY[0x1E69E0C70] retakeResignedExtensionsWithReason:@"Run Workflow finished Run Workflow" error:&v12];
    v11 = v12;

    if ((v10 & 1) == 0)
    {
      [controllerCopy stopWithError:v11];
    }
  }
}

- (void)workflowController:(id)controller prepareToRunAction:(id)action withInput:(id)input completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  userInterface = [(WFAction *)self userInterface];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    userInterface2 = [(WFAction *)self userInterface];
    dialogTransformer = [userInterface2 dialogTransformer];
    [dialogTransformer setCurrentAction:actionCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mEMORY[0x1E69E0C70] = [MEMORY[0x1E69E0C70] sharedManager];
    [mEMORY[0x1E69E0C70] resignIssuedExtensionsWithReason:@"Run Workflow running Run Workflow"];

    handlerCopy[2](handlerCopy);
  }

  else
  {
    v15 = NSClassFromString(&cfstr_Wfhealthkitres.isa);
    if (!v15 || ([MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), v15, 0}], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    }

    resourceManager = [actionCopy resourceManager];
    v18 = [resourceManager resourceObjectsOfClasses:v16];
    v19 = [v18 if_compactMap:&__block_literal_global_238_60907];

    mEMORY[0x1E69E0C70]2 = [MEMORY[0x1E69E0C70] sharedManager];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __89__WFRunWorkflowAction_workflowController_prepareToRunAction_withInput_completionHandler___block_invoke_2;
    v21[3] = &unk_1E837D0D0;
    v22 = handlerCopy;
    [mEMORY[0x1E69E0C70]2 requestSandboxExtensionForRunningActionWithAccessResources:v19 completion:v21];
  }
}

id __89__WFRunWorkflowAction_workflowController_prepareToRunAction_withInput_completionHandler___block_invoke()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  if ([MEMORY[0x1E69E0C68] hasExtensionForResourceClassName:v1])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)getHandoffWorkflowControllerState:(id)state
{
  stateCopy = state;
  processedParameters = [(WFAction *)self processedParameters];
  v5 = [processedParameters objectForKey:@"WFHandoffWorkflowControllerState"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E696ACD0];
    v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v8 = [v6 wf_securelyUnarchiveObjectWithData:v5 allowedClasses:v7 completionHandler:stateCopy];
  }

  else
  {
    stateCopy[2](stateCopy, 0);
  }
}

- (void)setHandoffWorkflowControllerState:(id)state
{
  v9 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:state deletionResponsibility:1];
  processedParameters = [(WFAction *)self processedParameters];
  v5 = [processedParameters mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  [v8 setObject:v9 forKey:@"WFHandoffWorkflowControllerState"];
  [(WFAction *)self setProcessedParameters:v8];
}

- (id)getWorkflowWithError:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = [(WFAction *)self parameterValueForKey:@"WFWorkflow" ofClass:objc_opt_class()];
  if (!v4)
  {
    if (!error)
    {
      goto LABEL_16;
    }

    v10 = MEMORY[0x1E696ABC0];
    v25[0] = *MEMORY[0x1E696A588];
    v5 = WFLocalizedString(@"Shortcut Not Found");
    v26[0] = v5;
    v25[1] = *MEMORY[0x1E696A578];
    v9 = WFLocalizedString(@"Make sure a valid shortcut is selected in the Run Shortcut action.");
    v26[1] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    *error = [v10 errorWithDomain:@"WFActionErrorDomain" code:5 userInfo:v11];

LABEL_14:
    error = 0;
    goto LABEL_15;
  }

  v5 = +[WFDatabaseProxy defaultDatabase];
  v6 = [v5 workflowRecordForDescriptor:v4 error:error];
  v7 = objc_opt_class();
  v8 = v6;
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = getWFGeneralLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v28 = "WFEnforceClass";
      v29 = 2114;
      v30 = v8;
      v31 = 2114;
      v32 = objc_opt_class();
      v33 = 2114;
      v34 = v7;
      v13 = v32;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Returning nil to avoid prompting for recursion.", buf, 0x2Au);
    }

    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (!v9)
  {
    if (!error)
    {
      v9 = 0;
      goto LABEL_15;
    }

    v14 = MEMORY[0x1E696ABC0];
    v23[0] = *MEMORY[0x1E696A588];
    v15 = WFLocalizedString(@"Shortcut Not Found");
    v24[0] = v15;
    v23[1] = *MEMORY[0x1E696A578];
    v16 = MEMORY[0x1E696AEC0];
    v17 = WFLocalizedString(@"An occurred while preparing “%@” to run.");
    name = [v4 name];
    v19 = [v16 stringWithFormat:v17, name];
    v24[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    *error = [v14 errorWithDomain:@"WFActionErrorDomain" code:5 userInfo:v20];

    v9 = 0;
    goto LABEL_14;
  }

  error = [[WFWorkflow alloc] initWithRecord:v9 reference:v4 storageProvider:0 migrateIfNecessary:1 environment:0 error:error];
LABEL_15:

LABEL_16:
  v21 = *MEMORY[0x1E69E9840];

  return error;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (WFRunWorkflowActionProgressContext == context)
  {
    v7 = [(WFRunWorkflowAction *)self workflowController:path];
    progress = [v7 progress];

    [progress fractionCompleted];
    v9 = (v8 * 100.0);
    progress2 = [(WFAction *)self progress];
    [progress2 setCompletedUnitCount:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WFRunWorkflowAction;
    [(WFRunWorkflowAction *)&v12 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)endPersistentModeWithError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(WFRunWorkflowAction *)self hasBegunPersistentMode])
  {
    userInterfaceForPersistentMode = [(WFRunWorkflowAction *)self userInterfaceForPersistentMode];
    dialogTransformer = [userInterfaceForPersistentMode dialogTransformer];
    userInterfacePresenter = [dialogTransformer userInterfacePresenter];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:error == 0];
    workflowController = [(WFRunWorkflowAction *)self workflowController];
    runningContext = [workflowController runningContext];
    [userInterfacePresenter completePersistentModeWithSuccess:v7 runningContext:runningContext completionHandler:&__block_literal_global_60950];

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[WFRunWorkflowAction endPersistentModeWithError:]";
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Persistent mode has not begun yet, so can't be ended.", buf, 0xCu);
    }

    v12 = *MEMORY[0x1E69E9840];
  }
}

void __50__WFRunWorkflowAction_endPersistentModeWithError___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = getWFGeneralLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[WFRunWorkflowAction endPersistentModeWithError:]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_ERROR, "%s Failed to complete persistent mode: %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)beginPersistentModeIfReady
{
  v26 = *MEMORY[0x1E69E9840];
  if (![(WFRunWorkflowAction *)self spotlightReadyForPersistentMode])
  {
    goto LABEL_7;
  }

  if ([(WFRunWorkflowAction *)self hasBegunPersistentMode])
  {
    v3 = getWFGeneralLogObject();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_6:

LABEL_7:
      v7 = *MEMORY[0x1E69E9840];
      return;
    }

    *buf = 136315138;
    v25 = "[WFRunWorkflowAction beginPersistentModeIfReady]";
    v4 = "%s Persistent mode has already been started.";
    v5 = v3;
    v6 = OS_LOG_TYPE_INFO;
LABEL_5:
    _os_log_impl(&dword_1CA256000, v5, v6, v4, buf, 0xCu);
    goto LABEL_6;
  }

  if (![(WFAction *)self runningViaSpotlight]&& [(WFRunWorkflowAction *)self spotlightReadyForPersistentMode])
  {
    v3 = getWFGeneralLogObject();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    *buf = 136315138;
    v25 = "[WFRunWorkflowAction beginPersistentModeIfReady]";
    v4 = "%s Persistent mode via WFRunWorkflowAction is currently only supported when running via Spotlight.";
    v5 = v3;
    v6 = OS_LOG_TYPE_ERROR;
    goto LABEL_5;
  }

  userInterface = [(WFAction *)self userInterface];
  dialogTransformer = [userInterface dialogTransformer];
  if (dialogTransformer)
  {
    v9 = dialogTransformer;
    workflowController = [(WFRunWorkflowAction *)self workflowController];
    runningContext = [workflowController runningContext];

    if (runningContext)
    {
      userInterface2 = [(WFAction *)self userInterface];
      [(WFRunWorkflowAction *)self setUserInterfaceForPersistentMode:userInterface2];

      userInterfaceForPersistentMode = [(WFRunWorkflowAction *)self userInterfaceForPersistentMode];
      dialogTransformer2 = [userInterfaceForPersistentMode dialogTransformer];
      userInterfacePresenter = [dialogTransformer2 userInterfacePresenter];
      workflowController2 = [(WFRunWorkflowAction *)self workflowController];
      runningContext2 = [workflowController2 runningContext];
      userInterface3 = [(WFAction *)self userInterface];
      dialogTransformer3 = [userInterface3 dialogTransformer];
      standaloneActionAttribution = [dialogTransformer3 standaloneActionAttribution];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __49__WFRunWorkflowAction_beginPersistentModeIfReady__block_invoke;
      v23[3] = &unk_1E837E5E0;
      v23[4] = self;
      [userInterfacePresenter beginPersistentModeWithRunningContext:runningContext2 attribution:standaloneActionAttribution completionHandler:v23];
    }

    goto LABEL_7;
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __49__WFRunWorkflowAction_beginPersistentModeIfReady__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[WFRunWorkflowAction beginPersistentModeIfReady]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_ERROR, "%s Failed to begin persistent mode: %@", &v6, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) setHasBegunPersistentMode:1];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)beginPersistentModeForSpotlightWhenReady
{
  [(WFRunWorkflowAction *)self setSpotlightReadyForPersistentMode:1];

  [(WFRunWorkflowAction *)self beginPersistentModeIfReady];
}

- (id)contentDestinationWithError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [(WFAction *)self parameterValueForKey:@"WFWorkflow" ofClass:objc_opt_class()];
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v12 = 0;
    goto LABEL_12;
  }

  identifier = [v4 identifier];
  runningDelegate = [(WFAction *)self runningDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    runningDelegate2 = [(WFAction *)self runningDelegate];
    v9 = [runningDelegate2 currentRunningContextForAction:self];
    workflowIdentifier = [v9 workflowIdentifier];

    if ([identifier isEqualToString:workflowIdentifier])
    {
      v11 = getWFSecurityLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v19 = 136315138;
        v20 = "[WFRunWorkflowAction contentDestinationWithError:]";
        _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEBUG, "%s Returning nil to avoid prompting for recursion.", &v19, 0xCu);
      }

      v12 = 0;
      goto LABEL_11;
    }
  }

  v13 = objc_alloc(MEMORY[0x1E696E720]);
  v14 = [v13 initWithBundleIdentifier:*MEMORY[0x1E69E0FB0]];
  mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
  v16 = [mEMORY[0x1E696E748] resolvedAppMatchingDescriptor:v14];

  v12 = [MEMORY[0x1E6996C90] locationWithAppDescriptor:v16 promptingBehaviour:1];

LABEL_11:
LABEL_12:
  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)workflowNameFromParameter
{
  v2 = [(WFAction *)self parameterValueForKey:@"WFWorkflow" ofClass:objc_opt_class()];
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

  name = [v4 name];

  return name;
}

- (void)cancel
{
  [(WFRunWorkflowAction *)self stop];
  v3.receiver = self;
  v3.super_class = WFRunWorkflowAction;
  [(WFAction *)&v3 cancel];
}

- (void)stop
{
  workflowController = [(WFRunWorkflowAction *)self workflowController];
  [workflowController stop];
}

- (void)performWithSandboxExtensions:(id)extensions
{
  extensionsCopy = extensions;
  mEMORY[0x1E69E0C70] = [MEMORY[0x1E69E0C70] sharedManager];
  v5 = [MEMORY[0x1E69E0C78] all];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__WFRunWorkflowAction_performWithSandboxExtensions___block_invoke;
  v7[3] = &unk_1E837D068;
  v8 = extensionsCopy;
  v6 = extensionsCopy;
  [mEMORY[0x1E69E0C70] performWithSandboxExtensions:v5 asynchronousBlock:v7];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__WFRunWorkflowAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_1E837D040;
  v6[4] = self;
  v7 = inputCopy;
  v5 = inputCopy;
  [(WFRunWorkflowAction *)self performWithSandboxExtensions:v6];
}

void __50__WFRunWorkflowAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a3)
  {
    [v6 finishRunningWithError:a3];
  }

  else
  {
    v27 = 0;
    v7 = [v6 getWorkflowWithError:&v27];
    v8 = v27;
    v9 = *(a1 + 32);
    if (v7)
    {
      v10 = [v9 userInterface];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = [*(a1 + 32) userInterface];
        v13 = [v12 dialogTransformer];
        [v13 setWorkflow:v7];
      }

      v14 = objc_alloc_init(WFWorkflowController);
      [(WFWorkflowController *)v14 setWorkflow:v7];
      [(WFWorkflowController *)v14 setDelegate:*(a1 + 32)];
      [(WFWorkflowController *)v14 setInput:*(a1 + 40)];
      [(WFWorkflowController *)v14 setDonateInteraction:0];
      v15 = [*(a1 + 32) variableSource];
      v16 = [v15 listenerEndpoints];
      [(WFWorkflowController *)v14 setListenerEndpoints:v16];

      [(WFWorkflowController *)v14 setOutputBehavior:2];
      objc_storeWeak((*(a1 + 32) + 352), v14);
      v17 = [*(a1 + 32) progress];
      [v17 setTotalUnitCount:{objc_msgSend(v17, "totalUnitCount") + 100}];

      [(WFWorkflowController *)v14 addObserver:*(a1 + 32) forKeyPath:@"progress.fractionCompleted" options:0 context:WFRunWorkflowActionProgressContext];
      v18 = *(a1 + 32);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __50__WFRunWorkflowAction_runAsynchronouslyWithInput___block_invoke_2;
      v22[3] = &unk_1E837D018;
      v23 = v14;
      v19 = v7;
      v20 = *(a1 + 32);
      v24 = v19;
      v25 = v20;
      v26 = v5;
      v21 = v14;
      [v18 getHandoffWorkflowControllerState:v22];
    }

    else
    {
      [v9 finishRunningWithError:v8];
    }
  }
}

void __50__WFRunWorkflowAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setCurrentState:a2];
  [*(a1 + 32) setRunSource:*MEMORY[0x1E69E13C8]];
  v3 = objc_alloc(MEMORY[0x1E69E0E38]);
  v4 = [*(a1 + 40) workflowID];
  v5 = [v3 initWithWorkflowIdentifier:v4];
  [*(a1 + 32) setRunningContext:v5];

  v6 = *MEMORY[0x1E69E1360];
  v7 = [*(a1 + 32) runningContext];
  [v7 setRunKind:v6];

  v8 = [*(a1 + 48) runningDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [*(a1 + 48) runningDelegate];
    v18 = [v10 currentRunningContextForAction:*(a1 + 48)];

    v11 = v18;
  }

  else
  {
    v11 = 0;
  }

  v19 = v11;
  v12 = [v11 rootWorkflowIdentifier];
  v13 = v12;
  if (!v12)
  {
    v9 = [*(a1 + 48) workflow];
    v13 = [v9 workflowID];
  }

  v14 = [*(a1 + 32) runningContext];
  [v14 setRootWorkflowIdentifier:v13];

  if (!v12)
  {
  }

  v15 = [v19 automationType];
  v16 = [*(a1 + 32) runningContext];
  [v16 setAutomationType:v15];

  v17 = *(a1 + 56);
  if (v17)
  {
    (*(v17 + 16))();
  }

  [*(a1 + 32) run];
  [*(a1 + 48) beginPersistentModeIfReady];
}

@end