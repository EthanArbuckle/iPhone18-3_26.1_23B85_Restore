@interface WFWorkflowController
- (BOOL)action:(id)action canProvideInputForParameter:(id)parameter;
- (BOOL)isRunningFromSpotlight;
- (BOOL)isTesting;
- (BOOL)runningAsStepWiseExecutor;
- (BOOL)setContent:(id)content forVariableWithName:(id)name;
- (NSMapTable)environmentValueTable;
- (NSMapTable)variableTable;
- (WFAction)currentAction;
- (WFContentCollection)capturedFiles;
- (WFContentItemCache)contentItemCache;
- (WFControlFlowAttributionTracker)flowTracker;
- (WFSmartPromptsExfiltrationLogger)exfiltrationLogger;
- (WFWorkflowController)init;
- (WFWorkflowControllerDelegate)delegate;
- (WFWorkflowControllerState)currentState;
- (WFWorkflowRunningContext)runningContext;
- (id)actionReversalStateForAction:(id)action;
- (id)contentForPrivateVariableKey:(id)key;
- (id)contentForVariableWithName:(id)name;
- (id)currentStateWithContext:(id)context;
- (id)environmentValueForKey:(id)key;
- (id)errorByAddingActionIndex:(int64_t)index toError:(id)error;
- (id)parameterInputProviderForAction:(id)action;
- (id)remoteDialogPresenterEndpointForRunWorkflowAction:(id)action;
- (id)stateWithActionIndex:(unint64_t)index input:(id)input processedParameters:(id)parameters;
- (id)userInterface;
- (void)_finishStepWithError:(id)error;
- (void)_run;
- (void)_step;
- (void)acquireAssertionIfNeeded;
- (void)action:(id)action didGenerateReversalState:(id)state;
- (void)action:(id)action handleTestingEvent:(id)event completionHandler:(id)handler;
- (void)action:(id)action provideInputForParameters:(id)parameters withDefaultStates:(id)states prompts:(id)prompts completionHandler:(id)handler;
- (void)autoreleaseSelf;
- (void)captureFileRepresentation:(id)representation;
- (void)dealloc;
- (void)dialogTransformerWillDisplayDialog:(id)dialog;
- (void)didFinishRunningWithError:(id)error cancelled:(BOOL)cancelled;
- (void)didRunAction:(id)action error:(id)error withCompletion:(id)completion;
- (void)handleControlFlowActionCompletion:(id)completion actionGroupSkipped:(BOOL)skipped;
- (void)handleError:(id)error fromAction:(id)action completionHandler:(id)handler;
- (void)invalidateAssertionIfNeeded;
- (void)noInputBehavior:(id)behavior wantsToRunAction:(id)action completionHandler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareToRunAction:(id)action withInput:(id)input completionHandler:(id)handler;
- (void)publishActionProgress;
- (void)publishRunningState:(int64_t)state;
- (void)queue_reset;
- (void)queue_setWorkflow:(id)workflow;
- (void)queue_stopWithError:(id)error;
- (void)requestAccessToFileAtLocations:(id)locations completionHandler:(id)handler;
- (void)requestAccessToFileAtURLs:(id)ls completionHandler:(id)handler;
- (void)reset;
- (void)resetEvaluationCriteriaForControlFlowActions;
- (void)resolveWorkflowInputWithCompletion:(id)completion;
- (void)restorePendingStateIfNecessary;
- (void)run;
- (void)runAction:(id)action withInput:(id)input completionHandler:(id)handler;
- (void)setContent:(id)content forPrivateVariableKey:(id)key;
- (void)setCurrentActionProgress:(id)progress;
- (void)setEnvironmentValue:(id)value forKey:(id)key;
- (void)setUpProgress;
- (void)setUpRunState;
- (void)setWorkflow:(id)workflow;
- (void)step;
- (void)stop;
- (void)stopShortcutNotificationReceived:(id)received;
- (void)stopWithError:(id)error;
- (void)workflowControllerWillRun:(id)run;
@end

@implementation WFWorkflowController

- (WFWorkflowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)userInterface
{
  delegate = [(WFWorkflowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFWorkflowController *)self delegate];
    v6 = [delegate2 userInterfaceForWorkflowController:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WFAction)currentAction
{
  currentIndex = [(WFWorkflowController *)self currentIndex];
  workflow = [(WFWorkflowController *)self workflow];
  actions = [workflow actions];

  if (-[WFWorkflowController isRunning](self, "isRunning") && currentIndex < [actions count])
  {
    v6 = [actions objectAtIndex:currentIndex];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)invalidateAssertionIfNeeded
{
  v14 = *MEMORY[0x1E69E9840];
  workflowRunAssertion = [(WFWorkflowController *)self workflowRunAssertion];

  if (workflowRunAssertion)
  {
    workflowRunAssertion2 = [(WFWorkflowController *)self workflowRunAssertion];
    v9 = 0;
    v5 = [workflowRunAssertion2 invalidateWithError:&v9];
    v6 = v9;

    if ((v5 & 1) == 0)
    {
      v7 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "[WFWorkflowController invalidateAssertionIfNeeded]";
        v12 = 2114;
        v13 = v6;
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Failed to invalidate existing workflow run assertion: %{public}@", buf, 0x16u);
      }
    }

    [(WFWorkflowController *)self setWorkflowRunAssertion:0];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __28__WFWorkflowController__run__block_invoke_233(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) executionQueue];
  dispatch_assert_queue_V2(v6);

  if (v5)
  {
    if ([v5 wf_isUserCancelledError])
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    [*(a1 + 32) didFinishRunningWithError:v7 cancelled:?];
  }

  else
  {
    [*(a1 + 32) setInput:v8];
    [*(a1 + 32) _step];
  }
}

- (void)_step
{
  v43 = *MEMORY[0x1E69E9840];
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(executionQueue);

  if (![(WFWorkflowController *)self isStepping])
  {
    workflow = [(WFWorkflowController *)self workflow];
    actions = [workflow actions];
    if (![actions count] && -[WFWorkflowController runningAsStepWiseExecutor](self, "runningAsStepWiseExecutor"))
    {
      v7 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v38 = "[WFWorkflowController _step]";
        v39 = 2048;
        currentIndex = [(WFWorkflowController *)self currentIndex];
        v41 = 2048;
        v42 = [actions count];
        v8 = "%s Step-wise executor: no actions yet (ci: %lu, actions count: %lu), ending step";
LABEL_20:
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0x20u);
        goto LABEL_40;
      }

      goto LABEL_40;
    }

    currentIndex2 = [(WFWorkflowController *)self currentIndex];
    currentIndex3 = [(WFWorkflowController *)self currentIndex];
    if (currentIndex2)
    {
      if (currentIndex3 >= [actions count])
      {
        if (![(WFWorkflowController *)self runningAsStepWiseExecutor])
        {
          if (([(WFWorkflowController *)self outputBehavior]& 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            lastObject = [actions lastObject];
            output = [lastObject output];
            [(WFWorkflowController *)self setOutput:output];

            contentItemCache = [(WFWorkflowController *)self contentItemCache];
            output2 = [(WFWorkflowController *)self output];
            [contentItemCache addContentCollection:output2];
          }

          v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:7 userInfo:0];
          [(WFWorkflowController *)self _finishStepWithError:v7];
          goto LABEL_40;
        }

        v7 = getWFWorkflowExecutionLogObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v38 = "[WFWorkflowController _step]";
          v39 = 2048;
          currentIndex = [(WFWorkflowController *)self currentIndex];
          v41 = 2048;
          v42 = [actions count];
          v8 = "%s Step-wise executor: nowhere to step, holding (ci: %lu, actions count: %lu)";
          goto LABEL_20;
        }

LABEL_40:

        goto LABEL_41;
      }

      v11 = [actions objectAtIndex:{-[WFWorkflowController currentIndex](self, "currentIndex")}];
      v12 = [actions objectAtIndex:{-[WFWorkflowController currentIndex](self, "currentIndex") - 1}];
      if ([MEMORY[0x1E695E000] forceSpotlightImplicitResult] && -[WFWorkflowController isRunningFromSpotlight](self, "isRunningFromSpotlight") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        currentIndex2 = [v12 output];
      }

      else
      {
        currentIndex2 = 0;
      }

      if ([v11 usesLegacyInputBehavior])
      {
        workflow2 = [(WFWorkflowController *)self workflow];
        v14 = [v11 legacyBehaviorIgnoresOutputFromAction:v12 inWorkflow:workflow2];

        if ((v14 & 1) == 0)
        {
          output3 = [v12 output];

          currentIndex2 = output3;
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v12 mode])
      {
        [v12 resetOutput];
      }

      contentItemCache2 = [(WFWorkflowController *)self contentItemCache];
      output4 = [v12 output];
      [contentItemCache2 addContentCollection:output4];
    }

    else
    {
      v11 = [actions objectAtIndex:currentIndex3];
    }

    input = [(WFWorkflowController *)self input];

    if (input)
    {
      workflow3 = [(WFWorkflowController *)self workflow];
      actionTree = [workflow3 actionTree];
      isShortcutInputVariableUsed = [actionTree isShortcutInputVariableUsed];

      if (isShortcutInputVariableUsed)
      {
        input2 = [(WFWorkflowController *)self input];
        [(WFWorkflowController *)self setContent:input2 forVariableWithName:@"FB539828-643B-41E5-BA20-9C1717057230-workflowinput"];
      }

      if ([v11 usesLegacyInputBehavior])
      {
        input3 = [(WFWorkflowController *)self input];

        currentIndex2 = input3;
      }

      [(WFWorkflowController *)self setInput:0];
    }

    pendingActionInput = [(WFWorkflowController *)self pendingActionInput];

    if (pendingActionInput)
    {
      pendingActionInput2 = [(WFWorkflowController *)self pendingActionInput];

      [(WFWorkflowController *)self setPendingActionInput:0];
      currentIndex2 = pendingActionInput2;
    }

    pendingProcessedParameters = [(WFWorkflowController *)self pendingProcessedParameters];

    if (pendingProcessedParameters)
    {
      pendingProcessedParameters2 = [(WFWorkflowController *)self pendingProcessedParameters];
      [v11 setProcessedParameters:pendingProcessedParameters2];

      [(WFWorkflowController *)self setPendingProcessedParameters:0];
    }

    [(WFWorkflowController *)self setStepping:1];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __29__WFWorkflowController__step__block_invoke;
    v34[3] = &unk_1E837C1E8;
    v34[4] = self;
    v35 = v11;
    v36 = currentIndex2;
    v28 = currentIndex2;
    v7 = v11;
    [(WFWorkflowController *)self prepareToRunAction:v7 withInput:v28 completionHandler:v34];

    goto LABEL_40;
  }

  v4 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v38 = "[WFWorkflowController _step]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_ERROR, "%s Step called while already stepping.", buf, 0xCu);
  }

  workflow = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:37 userInfo:0];
  [(WFWorkflowController *)self _finishStepWithError:workflow];
LABEL_41:

  v29 = *MEMORY[0x1E69E9840];
}

- (void)resetEvaluationCriteriaForControlFlowActions
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  workflow = [(WFWorkflowController *)self workflow];
  actions = [workflow actions];

  v5 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(actions);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 resetEvaluationCriteriaWithVariableSource:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setUpProgress
{
  objc_initWeak(&location, self);
  runningContext = [(WFWorkflowController *)self runningContext];
  workflow = [(WFWorkflowController *)self workflow];
  actions = [workflow actions];
  v6 = WFProgressUnitsBetweenActions(actions, 0, 0);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __37__WFWorkflowController_setUpProgress__block_invoke;
  v11 = &unk_1E837B8F8;
  objc_copyWeak(&v12, &location);
  v7 = [runningContext progressForPublishingWithTotalUnitCount:v6 cancellationHandler:&v8];
  [(WFWorkflowController *)self setProgress:v7, v8, v9, v10, v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)setUpRunState
{
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(executionQueue);

  [(WFWorkflowController *)self registerForNotifications];
  [(WFWorkflowController *)self logStartEvent];
  [(WFWorkflowController *)self setUpProgress];
  v4 = [(WFWorkflowController *)self currentIndex]- 1;
  if (v4 >= 0)
  {
    workflow = [(WFWorkflowController *)self workflow];
    actions = [workflow actions];
    v7 = [actions count];

    if (v4 < v7)
    {
      workflow2 = [(WFWorkflowController *)self workflow];
      actions2 = [workflow2 actions];
      v10 = [actions2 objectAtIndexedSubscript:v4];

      workflow3 = [(WFWorkflowController *)self workflow];
      actions3 = [workflow3 actions];
      v13 = WFProgressUnitsBetweenActions(actions3, 0, v10);
      progress = [(WFWorkflowController *)self progress];
      [progress setCompletedUnitCount:v13];
    }
  }

  [(WFWorkflowController *)self setRunning:1];
  [(WFWorkflowController *)self publishRunningState:1];
  startDate = [(WFWorkflowController *)self startDate];

  if (!startDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(WFWorkflowController *)self setStartDate:date];
  }
}

- (WFWorkflowRunningContext)runningContext
{
  runningContext = self->_runningContext;
  if (!runningContext)
  {
    if (self->_workflow)
    {
      v4 = objc_alloc(MEMORY[0x1E69E0E38]);
      workflow = [(WFWorkflowController *)self workflow];
      workflowID = [workflow workflowID];
      v7 = [v4 initWithWorkflowIdentifier:workflowID];

      runSource = [(WFWorkflowController *)self runSource];
      [v7 setRunSource:runSource];

      [v7 setOutputBehavior:{-[WFWorkflowController outputBehavior](self, "outputBehavior")}];
      v9 = self->_runningContext;
      self->_runningContext = v7;

      runningContext = self->_runningContext;
    }

    else
    {
      runningContext = 0;
    }
  }

  return runningContext;
}

- (void)_run
{
  v25 = *MEMORY[0x1E69E9840];
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(executionQueue);

  v4 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    workflow = [(WFWorkflowController *)self workflow];
    *buf = 136315394;
    v22 = "[WFWorkflowController _run]";
    v23 = 2112;
    v24 = workflow;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s Starting workflow execution: %@", buf, 0x16u);
  }

  workflow2 = [(WFWorkflowController *)self workflow];
  if ([workflow2 disabledOnLockScreen])
  {
    v7 = +[WFCompactUnlockService isDeviceLocked];

    if (v7)
    {
      v8 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        workflow3 = [(WFWorkflowController *)self workflow];
        *buf = 136315394;
        v22 = "[WFWorkflowController _run]";
        v23 = 2112;
        v24 = workflow3;
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Cancelling workflow execution because the device is locked and this workflow is disabled on the lock screen: %@", buf, 0x16u);
      }

      configurationForContinuityDisplay = +[WFSmartPromptState localizedUnlockedDeviceRequiredError];
      selfCopy2 = self;
      v12 = configurationForContinuityDisplay;
      goto LABEL_18;
    }
  }

  else
  {
  }

  configurationForContinuityDisplay = [MEMORY[0x1E699FAF8] configurationForContinuityDisplay];
  [configurationForContinuityDisplay setNeedsUserInteractivePriority:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __28__WFWorkflowController__run__block_invoke;
  v20[3] = &unk_1E837F8C0;
  v20[4] = self;
  [configurationForContinuityDisplay setTransitionHandler:v20];
  v13 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:configurationForContinuityDisplay];
  [(WFWorkflowController *)self setDisplayLayoutMonitor:v13];

  [(WFWorkflowController *)self restorePendingStateIfNecessary];
  workflow4 = [(WFWorkflowController *)self workflow];
  if ([workflow4 hasActions])
  {
  }

  else
  {
    runningAsStepWiseExecutor = [(WFWorkflowController *)self runningAsStepWiseExecutor];

    if (!runningAsStepWiseExecutor)
    {
      selfCopy2 = self;
      v12 = 0;
LABEL_18:
      [(WFWorkflowController *)selfCopy2 didFinishRunningWithError:v12 cancelled:0];
      goto LABEL_19;
    }
  }

  if ([(WFWorkflowController *)self canRun])
  {
    [(WFWorkflowController *)self setActionDidRunRemotely:0];
    [(WFWorkflowController *)self setUpRunState];
    [(WFWorkflowController *)self workflowControllerWillRun:self];
    [(WFWorkflowController *)self resetEvaluationCriteriaForControlFlowActions];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __28__WFWorkflowController__run__block_invoke_233;
    v19[3] = &unk_1E837E750;
    v19[4] = self;
    [(WFWorkflowController *)self resolveWorkflowInputWithCompletion:v19];
  }

  else
  {
    v16 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      workflow5 = [(WFWorkflowController *)self workflow];
      *buf = 136315394;
      v22 = "[WFWorkflowController _run]";
      v23 = 2112;
      v24 = workflow5;
      _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_INFO, "%s Workflow is already running, returning early: %@", buf, 0x16u);
    }
  }

LABEL_19:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)queue_reset
{
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(executionQueue);

  [(WFWorkflowController *)self queue_stopWithError:0];
  workflow = [(WFWorkflowController *)self workflow];
  actions = [workflow actions];
  [actions makeObjectsPerformSelector:sel_resetOutput];

  [(WFWorkflowController *)self setOutput:0];
  [(WFWorkflowController *)self setLastExecutedAction:0];
  variableTable = [(WFWorkflowController *)self variableTable];
  [variableTable removeAllObjects];

  actionOutputsByWorkflowIndex = [(WFWorkflowController *)self actionOutputsByWorkflowIndex];
  [actionOutputsByWorkflowIndex removeAllObjects];

  environmentValueTable = [(WFWorkflowController *)self environmentValueTable];
  [environmentValueTable removeAllObjects];

  contentItemCache = [(WFWorkflowController *)self contentItemCache];
  [contentItemCache clear];
}

- (void)acquireAssertionIfNeeded
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(WFWorkflowController *)self acquiresAssertionWhileRunning])
  {
    workflowRunAssertion = [(WFWorkflowController *)self workflowRunAssertion];

    if (!workflowRunAssertion)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2050000000;
      v4 = getRBSAssertionClass_softClass;
      v24 = getRBSAssertionClass_softClass;
      if (!getRBSAssertionClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getRBSAssertionClass_block_invoke;
        v27 = &unk_1E837FAC0;
        v28 = &v21;
        __getRBSAssertionClass_block_invoke(buf);
        v4 = v22[3];
      }

      v5 = v4;
      _Block_object_dispose(&v21, 8);
      v6 = [v4 alloc];
      v21 = 0;
      v22 = &v21;
      v23 = 0x2050000000;
      v7 = getRBSTargetClass_softClass;
      v24 = getRBSTargetClass_softClass;
      if (!getRBSTargetClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getRBSTargetClass_block_invoke;
        v27 = &unk_1E837FAC0;
        v28 = &v21;
        __getRBSTargetClass_block_invoke(buf);
        v7 = v22[3];
      }

      v8 = v7;
      _Block_object_dispose(&v21, 8);
      currentProcess = [v7 currentProcess];
      v21 = 0;
      v22 = &v21;
      v23 = 0x2050000000;
      v10 = getRBSDomainAttributeClass_softClass;
      v24 = getRBSDomainAttributeClass_softClass;
      if (!getRBSDomainAttributeClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getRBSDomainAttributeClass_block_invoke;
        v27 = &unk_1E837FAC0;
        v28 = &v21;
        __getRBSDomainAttributeClass_block_invoke(buf);
        v10 = v22[3];
      }

      v11 = v10;
      _Block_object_dispose(&v21, 8);
      v12 = [v10 attributeWithDomain:@"com.apple.shortcuts" name:@"RunningBackground"];
      v25 = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v14 = [v6 initWithExplanation:@"Running shortcuts in background" target:currentProcess attributes:v13];
      [(WFWorkflowController *)self setWorkflowRunAssertion:v14];

      workflowRunAssertion2 = [(WFWorkflowController *)self workflowRunAssertion];
      v20 = 0;
      v16 = [workflowRunAssertion2 acquireWithError:&v20];
      v17 = v20;

      if ((v16 & 1) == 0)
      {
        v18 = getWFWorkflowExecutionLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "[WFWorkflowController acquireAssertionIfNeeded]";
          *&buf[12] = 2114;
          *&buf[14] = v17;
          _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_ERROR, "%s Unable to acquire workflow run assertion: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (NSMapTable)environmentValueTable
{
  environmentValueTable = self->_environmentValueTable;
  if (!environmentValueTable)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v5 = self->_environmentValueTable;
    self->_environmentValueTable = strongToStrongObjectsMapTable;

    environmentValueTable = self->_environmentValueTable;
  }

  return environmentValueTable;
}

- (WFContentItemCache)contentItemCache
{
  contentItemCache = self->_contentItemCache;
  if (!contentItemCache)
  {
    v4 = objc_alloc_init(WFContentItemCache);
    v5 = self->_contentItemCache;
    self->_contentItemCache = v4;

    contentItemCache = self->_contentItemCache;
  }

  return contentItemCache;
}

- (WFWorkflowController)init
{
  v10.receiver = self;
  v10.super_class = WFWorkflowController;
  v2 = [(WFWorkflowController *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_donateInteraction = 1;
    v2->_acquiresAssertionWhileRunning = 1;
    v2->_resumed = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.shortcuts.workflow-execution", v5);
    executionQueue = v3->_executionQueue;
    v3->_executionQueue = v6;

    objc_storeStrong(&v3->_delegateQueue, MEMORY[0x1E69E96A0]);
    v8 = v3;
  }

  return v3;
}

- (NSMapTable)variableTable
{
  variableTable = self->_variableTable;
  if (!variableTable)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v5 = self->_variableTable;
    self->_variableTable = strongToStrongObjectsMapTable;

    variableTable = self->_variableTable;
  }

  return variableTable;
}

- (void)run
{
  v3 = voucher_copy();
  [(WFWorkflowController *)self setExecutionVoucher:v3];

  executionQueue = [(WFWorkflowController *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__WFWorkflowController_run__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(executionQueue, block);
}

void __28__WFWorkflowController__run__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3 && a4)
  {
    v5 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) workflow];
      *buf = 136315394;
      v15 = "[WFWorkflowController _run]_block_invoke";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Cancelling workflow execution because iPhone Mirroring session was stopped: %@", buf, 0x16u);
    }

    v7 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v8 = WFLocalizedString(@"Shortcuts was interrupted.");
    v13 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = [v7 errorWithDomain:@"WFWorkflowControllerErrorDomain" code:0 userInfo:{v9, v12}];

    [*(a1 + 32) stopWithError:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)runningAsStepWiseExecutor
{
  runningContext = [(WFWorkflowController *)self runningContext];
  isStepwise = [runningContext isStepwise];

  return isStepwise;
}

- (void)restorePendingStateIfNecessary
{
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(executionQueue);

  pendingState = [(WFWorkflowController *)self pendingState];
  v5 = pendingState;
  if (pendingState)
  {
    variables = [pendingState variables];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __54__WFWorkflowController_restorePendingStateIfNecessary__block_invoke;
    v30[3] = &unk_1E8377C90;
    v30[4] = self;
    [variables enumerateKeysAndObjectsUsingBlock:v30];

    currentInput = [v5 currentInput];
    [(WFWorkflowController *)self setPendingActionInput:currentInput];

    -[WFWorkflowController setCurrentIndex:](self, "setCurrentIndex:", [v5 currentActionIndex]);
    currentProcessedParameters = [v5 currentProcessedParameters];
    [(WFWorkflowController *)self setPendingProcessedParameters:currentProcessedParameters];

    -[WFWorkflowController setOutputBehavior:](self, "setOutputBehavior:", [v5 outputBehavior]);
    runningContext = [v5 runningContext];

    if (runningContext)
    {
      runningContext2 = [(WFWorkflowController *)self runningContext];
      originatingBundleIdentifier = [runningContext2 originatingBundleIdentifier];

      runningContext3 = [v5 runningContext];
      [runningContext3 setOriginatingBundleIdentifier:originatingBundleIdentifier];

      runningContext4 = [v5 runningContext];
      [(WFWorkflowController *)self setRunningContext:runningContext4];
    }

    contentItemCache = [v5 contentItemCache];
    [(WFWorkflowController *)self setContentItemCache:contentItemCache];

    flowTracker = [v5 flowTracker];
    [(WFWorkflowController *)self setFlowTracker:flowTracker];

    currentActionIndex = [v5 currentActionIndex];
    workflow = [(WFWorkflowController *)self workflow];
    actions = [workflow actions];
    v19 = [actions count];

    if (currentActionIndex < v19)
    {
      workflow2 = [(WFWorkflowController *)self workflow];
      actions2 = [workflow2 actions];
      v22 = [actions2 objectAtIndex:{objc_msgSend(v5, "currentActionIndex")}];

      currentActionContentAttributionTracker = [v5 currentActionContentAttributionTracker];
      [v22 setContentAttributionTracker:currentActionContentAttributionTracker];

      allowedOnceSmartPromptStates = [v5 allowedOnceSmartPromptStates];
      [v22 setAllowedOnceSmartPromptStates:allowedOnceSmartPromptStates];
    }

    startDate = [v5 startDate];
    [(WFWorkflowController *)self setStartDate:startDate];

    [(WFWorkflowController *)self setResumed:1];
    [(WFWorkflowController *)self setPendingState:0];
    userInterface = [(WFWorkflowController *)self userInterface];
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      userInterface2 = [(WFWorkflowController *)self userInterface];
      dialogTransformer = [userInterface2 dialogTransformer];

      if (dialogTransformer)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [dialogTransformer setNumberOfDialogsPresented:{objc_msgSend(v5, "numberOfDialogsPresented")}];
        }
      }
    }
  }
}

- (void)dialogTransformerWillDisplayDialog:(id)dialog
{
  delegate = [(WFWorkflowController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFWorkflowController *)self delegate];
    [delegate2 workflowControllerWillDisplayDialog];
  }

  [(WFWorkflowController *)self publishRunningState:2];
}

- (void)noInputBehavior:(id)behavior wantsToRunAction:(id)action completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__WFWorkflowController_noInputBehavior_wantsToRunAction_completionHandler___block_invoke;
  v11[3] = &unk_1E837ECE0;
  v12 = actionCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = actionCopy;
  [(WFWorkflowController *)self prepareToRunAction:v10 withInput:0 completionHandler:v11];
}

void __75__WFWorkflowController_noInputBehavior_wantsToRunAction_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [*(a1 + 40) userInterface];
  v3 = *(a1 + 40);
  v4 = [v3 executionQueue];
  [v2 runWithInput:0 userInterface:v5 runningDelegate:v3 variableSource:0 workQueue:v4 completionHandler:*(a1 + 48)];
}

- (void)resolveWorkflowInputWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowController.m" lineNumber:1430 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];
  }

  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(executionQueue);

  input = [(WFWorkflowController *)self input];
  numberOfItems = [input numberOfItems];

  if (numberOfItems < 1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__WFWorkflowController_resolveWorkflowInputWithCompletion___block_invoke;
    aBlock[3] = &unk_1E837E1F8;
    aBlock[4] = self;
    v10 = completionCopy;
    v26 = v10;
    v11 = _Block_copy(aBlock);
    workflow = [(WFWorkflowController *)self workflow];
    workflowTypes = [workflow workflowTypes];
    v14 = [workflowTypes containsObject:*MEMORY[0x1E69E1450]];

    if (v14)
    {
      workflow2 = [(WFWorkflowController *)self workflow];
      inputClasses = [workflow2 inputClasses];

      v17 = objc_alloc_init(MEMORY[0x1E69E0C08]);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __59__WFWorkflowController_resolveWorkflowInputWithCompletion___block_invoke_4;
      v20[3] = &unk_1E8377D08;
      v21 = inputClasses;
      selfCopy = self;
      v23 = v10;
      v24 = v11;
      v18 = inputClasses;
      [v17 getOnScreenContentForInputContentClasses:v18 completionHandler:v20];
    }

    else
    {
      v11[2](v11);
    }
  }

  else
  {
    input2 = [(WFWorkflowController *)self input];
    (*(completionCopy + 2))(completionCopy, input2, 0);
  }
}

void __59__WFWorkflowController_resolveWorkflowInputWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workflow];
  v3 = [v2 noInputBehavior];

  if (v3)
  {
    v4 = [*(a1 + 32) workflow];
    v5 = [v4 noInputBehavior];
    v6 = [*(a1 + 32) userInterface];
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__WFWorkflowController_resolveWorkflowInputWithCompletion___block_invoke_2;
    v9[3] = &unk_1E837DAB0;
    v9[4] = v7;
    v10 = *(a1 + 40);
    [v5 resolveWithUserInterface:v6 runningDelegate:v7 completionHandler:v9];
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);

    v8();
  }
}

void __59__WFWorkflowController_resolveWorkflowInputWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 numberOfItems])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__WFWorkflowController_resolveWorkflowInputWithCompletion___block_invoke_5;
    v10[3] = &unk_1E8377CE0;
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v10[4] = *(a1 + 40);
    v11 = v5;
    v12 = *(a1 + 56);
    [v3 generateCollectionByCoercingToItemClasses:v4 completionHandler:v10];

    v6 = v11;
  }

  else
  {
    v7 = [*(a1 + 40) executionQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__WFWorkflowController_resolveWorkflowInputWithCompletion___block_invoke_7;
    v8[3] = &unk_1E837F4E8;
    v9 = *(a1 + 56);
    dispatch_async(v7, v8);

    v6 = v9;
  }
}

void __59__WFWorkflowController_resolveWorkflowInputWithCompletion___block_invoke_5(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__WFWorkflowController_resolveWorkflowInputWithCompletion___block_invoke_6;
  block[3] = &unk_1E8377CB8;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __59__WFWorkflowController_resolveWorkflowInputWithCompletion___block_invoke_6(uint64_t a1)
{
  if ([*(a1 + 32) numberOfItems])
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    return v5();
  }
}

void __59__WFWorkflowController_resolveWorkflowInputWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__WFWorkflowController_resolveWorkflowInputWithCompletion___block_invoke_3;
  block[3] = &unk_1E837ECE0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (id)errorByAddingActionIndex:(int64_t)index toError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v7 = [userInfo mutableCopy];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  [v7 setObject:v8 forKeyedSubscript:@"WFActionIndex"];

  v9 = MEMORY[0x1E696ABC0];
  domain = [errorCopy domain];
  code = [errorCopy code];

  v12 = [v9 errorWithDomain:domain code:code userInfo:v7];

  return v12;
}

void __37__WFWorkflowController_setUpProgress__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[WFWorkflowController setUpProgress]_block_invoke";
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_DEFAULT, "%s Stopping from progress cancellation", &v4, 0xCu);
  }

  [WeakRetained stop];
  v3 = *MEMORY[0x1E69E9840];
}

void __54__WFWorkflowController_restorePendingStateIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 variableTable];
  [v7 setObject:v5 forKey:v6];
}

- (void)handleControlFlowActionCompletion:(id)completion actionGroupSkipped:(BOOL)skipped
{
  skippedCopy = skipped;
  v84[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(executionQueue);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = completionCopy;
    groupedOpenAction = [v8 groupedOpenAction];
    groupedCloseAction = [v8 groupedCloseAction];
    workflow = [(WFWorkflowController *)self workflow];
    actions = [workflow actions];
    v13 = WFProgressUnitsBetweenActions(actions, groupedOpenAction, groupedCloseAction);
    v14 = [groupedOpenAction numberOfLoops] * v13;
    progress = [groupedOpenAction progress];
    [progress setTotalUnitCount:v14];

    if ([v8 mode] != 2 && !skippedCopy)
    {
      goto LABEL_34;
    }

    if (skippedCopy)
    {
      v16 = objc_opt_new();
      [groupedCloseAction setOutput:v16 onVariableSource:self];
    }

    if (![groupedOpenAction shouldRepeatWithVariableSource:self])
    {
      [groupedOpenAction resetEvaluationCriteriaWithVariableSource:self];
      [groupedOpenAction setProgress:0];
LABEL_34:

LABEL_35:
LABEL_44:

      goto LABEL_45;
    }

    progress2 = [groupedOpenAction progress];
    workflow2 = [(WFWorkflowController *)self workflow];
    actions2 = [workflow2 actions];
    v19 = [actions2 indexOfObject:groupedOpenAction];

    if (v19 < [(WFWorkflowController *)self currentIndex]- 1)
    {
      v20 = v19;
      do
      {
        workflow3 = [(WFWorkflowController *)self workflow];
        actions3 = [workflow3 actions];
        v23 = [actions3 objectAtIndexedSubscript:v20];
        [v23 resetOutput];

        ++v20;
      }

      while (v20 < [(WFWorkflowController *)self currentIndex]- 1);
    }

    workflow8 = progress2;
    [groupedOpenAction setProgress:progress2];
    [(WFWorkflowController *)self setCurrentIndex:v19];
LABEL_33:

    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = completionCopy;
    groupedOpenAction2 = [v8 groupedOpenAction];
    groupedIntermediaryActions = [v8 groupedIntermediaryActions];
    firstObject = [groupedIntermediaryActions firstObject];

    groupedCloseAction2 = [v8 groupedCloseAction];
    if ([v8 mode] && objc_msgSend(v8, "mode") != 1)
    {
      if ([v8 mode] == 2 || skippedCopy)
      {
        [groupedOpenAction2 resetEvaluationCriteriaWithVariableSource:self];
        [groupedOpenAction2 setProgress:0];
      }

      goto LABEL_43;
    }

    workflow5 = [groupedOpenAction2 truthWithVariableSource:self];
    if (_os_feature_enabled_impl())
    {
      v30 = MEMORY[0x1E6996D40];
      v79 = firstObject;
      v31 = MEMORY[0x1E6996CC0];
      v75 = [MEMORY[0x1E696AD98] numberWithBool:workflow5];
      v32 = [v31 itemWithObject:v75];
      v84[0] = v32;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
      v33 = v78 = groupedCloseAction2;
      v34 = [v30 collectionWithItems:v33];
      [(WFWorkflowController *)self actionOutputsByWorkflowIndex];
      workflow5 = v77 = workflow5;
      v81 = groupedOpenAction2;
      v35 = MEMORY[0x1E696AD98];
      workflow4 = [(WFWorkflowController *)self workflow];
      actions4 = [workflow4 actions];
      v38 = [v35 numberWithUnsignedInteger:{objc_msgSend(actions4, "indexOfObject:", v81)}];
      [workflow5 setObject:v34 forKeyedSubscript:v38];

      groupedOpenAction2 = v81;
      LODWORD(workflow5) = v77;

      groupedCloseAction2 = v78;
      firstObject = v79;

      if (v79)
      {
        v39 = MEMORY[0x1E6996D40];
        v40 = MEMORY[0x1E6996CC0];
        v76 = [MEMORY[0x1E696AD98] numberWithBool:v77 ^ 1u];
        v41 = [v40 itemWithObject:v76];
        v83 = v41;
        v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
        v43 = [v39 collectionWithItems:v42];
        actionOutputsByWorkflowIndex = [(WFWorkflowController *)self actionOutputsByWorkflowIndex];
        v45 = MEMORY[0x1E696AD98];
        workflow5 = [(WFWorkflowController *)self workflow];
        actions5 = [workflow5 actions];
        v47 = [v45 numberWithUnsignedInteger:{objc_msgSend(actions5, "indexOfObject:", v79)}];
        [actionOutputsByWorkflowIndex setObject:v43 forKeyedSubscript:v47];

        groupedOpenAction2 = v81;
        LODWORD(workflow5) = v77;

        groupedCloseAction2 = v78;
        firstObject = v79;
      }
    }

    if (([v8 mode] != 0) | workflow5 & 1)
    {
      if ((([v8 mode] == 1) & workflow5) != 1)
      {
LABEL_39:
        workflow6 = [(WFWorkflowController *)self workflow];
        actions6 = [workflow6 actions];
        v69 = actions6;
        if (workflow5)
        {
          v70 = groupedOpenAction2;
          v71 = firstObject;
        }

        else
        {
          v70 = firstObject;
          v71 = groupedCloseAction2;
        }

        v72 = WFProgressUnitsBetweenActions(actions6, v70, v71);
        progress3 = [groupedOpenAction2 progress];
        [progress3 setTotalUnitCount:v72];

LABEL_43:
        goto LABEL_44;
      }

      output = [v8 output];
      [groupedCloseAction2 setOutput:output];
    }

    else
    {
      output2 = [v8 output];
      if (firstObject)
      {
        [firstObject setOutput:output2];

        workflow7 = [(WFWorkflowController *)self workflow];
        actions7 = [workflow7 actions];
        v62 = [actions7 indexOfObject:firstObject] + 1;
LABEL_38:
        [(WFWorkflowController *)self setCurrentIndex:v62];

        goto LABEL_39;
      }

      [groupedCloseAction2 setOutput:output2];
    }

    workflow7 = [(WFWorkflowController *)self workflow];
    actions7 = [workflow7 actions];
    v62 = [actions7 indexOfObject:groupedCloseAction2];
    goto LABEL_38;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = completionCopy;
    groupedOpenAction = [v8 groupedOpenAction];
    if ([v8 mode] && objc_msgSend(v8, "mode") != 1)
    {
      goto LABEL_35;
    }

    if ([v8 latestMenuChoice] == -1)
    {
      groupedCloseAction = [v8 groupedCloseAction];
      output3 = [v8 output];
      [groupedCloseAction setOutput:output3];

      progress4 = [groupedOpenAction progress];
      totalUnitCount = [progress4 totalUnitCount];
      progress5 = [groupedOpenAction progress];
      [progress5 setCompletedUnitCount:totalUnitCount];

      workflow8 = [(WFWorkflowController *)self workflow];
      actions8 = [workflow8 actions];
      -[WFWorkflowController setCurrentIndex:](self, "setCurrentIndex:", [actions8 indexOfObject:groupedCloseAction]);
    }

    else
    {
      workflow9 = [(WFWorkflowController *)self workflow];
      groupedCloseAction = [workflow9 actionsGroupedWithAction:v8];

      groupedIntermediaryActions2 = [v8 groupedIntermediaryActions];
      workflow8 = [groupedIntermediaryActions2 objectAtIndex:{objc_msgSend(v8, "latestMenuChoice")}];

      actions8 = [groupedCloseAction objectAtIndex:{objc_msgSend(groupedCloseAction, "indexOfObject:", workflow8) + 1}];
      workflow10 = [(WFWorkflowController *)self workflow];
      actions9 = [workflow10 actions];
      v54 = WFProgressUnitsBetweenActions(actions9, workflow8, actions8);
      [groupedOpenAction progress];
      v55 = v82 = groupedOpenAction;
      [v55 setTotalUnitCount:v54];

      output4 = [v8 output];
      [workflow8 setOutput:output4];

      workflow11 = [(WFWorkflowController *)self workflow];
      actions10 = [workflow11 actions];
      -[WFWorkflowController setCurrentIndex:](self, "setCurrentIndex:", [actions10 indexOfObject:workflow8] + 1);

      groupedOpenAction = v82;
    }

    goto LABEL_33;
  }

LABEL_45:

  v74 = *MEMORY[0x1E69E9840];
}

- (void)handleError:(id)error fromAction:(id)action completionHandler:(id)handler
{
  errorCopy = error;
  actionCopy = action;
  handlerCopy = handler;
  if (errorCopy)
  {
    if (actionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowController.m" lineNumber:1171 description:{@"Invalid parameter not satisfying: %@", @"error"}];

    if (actionCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFWorkflowController.m" lineNumber:1172 description:{@"Invalid parameter not satisfying: %@", @"action"}];

LABEL_3:
  domain = [errorCopy domain];
  code = [errorCopy code];
  v14 = [domain isEqualToString:@"WFActionErrorDomain"];
  v15 = [domain isEqualToString:*MEMORY[0x1E6997158]];
  if (code == 2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v14 && code == 4)
  {
    delegateQueue = [(WFWorkflowController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke;
    block[3] = &unk_1E837F870;
    block[4] = self;
    v18 = actionCopy;
    v56 = v18;
    dispatch_async(delegateQueue, block);

    outputBehavior = [(WFWorkflowController *)self outputBehavior];
    if (outputBehavior <= 3 && outputBehavior != 1)
    {
      output = [v18 output];
      [(WFWorkflowController *)self setOutput:output];
    }

    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:7 userInfo:0];

    handlerCopy[2](handlerCopy, v21);
    errorCopy = v21;
  }

  else
  {
    if (code)
    {
      v22 = 0;
    }

    else
    {
      v22 = v15;
    }

    if (v22 == 1 && ([(WFWorkflowController *)self delegate], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_opt_respondsToSelector(), v23, (v24 & 1) != 0))
    {
      userInfo = [errorCopy userInfo];
      v26 = [userInfo objectForKey:@"ActionInput"];

      userInfo2 = [errorCopy userInfo];
      v28 = [userInfo2 objectForKey:@"ActionProcessedParameters"];

      workflow = [(WFWorkflowController *)self workflow];
      actions = [workflow actions];
      v31 = -[WFWorkflowController stateWithActionIndex:input:processedParameters:](self, "stateWithActionIndex:input:processedParameters:", [actions indexOfObject:actionCopy], v26, v28);

      delegateQueue2 = [(WFWorkflowController *)self delegateQueue];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke_2;
      v50[3] = &unk_1E837CAF0;
      v50[4] = self;
      v51 = actionCopy;
      v52 = v31;
      v54 = handlerCopy;
      errorCopy = errorCopy;
      v53 = errorCopy;
      v33 = v31;
      dispatch_async(delegateQueue2, v50);

      v34 = v51;
    }

    else
    {
      if (!v16 || ([(WFWorkflowController *)self delegate], v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_opt_respondsToSelector(), v35, (v36 & 1) == 0))
      {
        handlerCopy[2](handlerCopy, errorCopy);
        goto LABEL_23;
      }

      userInfo3 = [errorCopy userInfo];
      v26 = [userInfo3 objectForKey:@"ActionInput"];

      userInfo4 = [errorCopy userInfo];
      v28 = [userInfo4 objectForKey:@"ActionProcessedParameters"];

      workflow2 = [(WFWorkflowController *)self workflow];
      actions2 = [workflow2 actions];
      v41 = -[WFWorkflowController stateWithActionIndex:input:processedParameters:](self, "stateWithActionIndex:input:processedParameters:", [actions2 indexOfObject:actionCopy], v26, v28);

      delegateQueue3 = [(WFWorkflowController *)self delegateQueue];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke_6;
      v45[3] = &unk_1E837CAF0;
      v45[4] = self;
      v46 = actionCopy;
      v47 = v41;
      v49 = handlerCopy;
      errorCopy = errorCopy;
      v48 = errorCopy;
      v33 = v41;
      dispatch_async(delegateQueue3, v45);

      v34 = v46;
    }
  }

LABEL_23:
}

void __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 workflowController:*(a1 + 32) actionDidRequestWorkflowExit:*(a1 + 40)];
  }
}

void __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke_3;
  v10[3] = &unk_1E837FA10;
  v10[4] = v3;
  v11 = *(a1 + 64);
  LOBYTE(v3) = [v2 workflowController:v3 handleUnsupportedUserInterfaceForAction:v4 currentState:v5 completionHandler:v10];

  if ((v3 & 1) == 0)
  {
    v6 = [*(a1 + 32) executionQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke_5;
    v7[3] = &unk_1E837E1F8;
    v9 = *(a1 + 64);
    v8 = *(a1 + 56);
    dispatch_async(v6, v7);
  }
}

void __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke_7;
  v10[3] = &unk_1E837FF40;
  v10[4] = v4;
  v11 = v3;
  v12 = *(a1 + 64);
  LOBYTE(v4) = [v2 workflowController:v4 handleUnsupportedEnvironmentForAction:v11 currentState:v5 completionHandler:v10];

  if ((v4 & 1) == 0)
  {
    v6 = [*(a1 + 32) executionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke_9;
    block[3] = &unk_1E837E1F8;
    v9 = *(a1 + 64);
    v8 = *(a1 + 56);
    dispatch_async(v6, block);
  }
}

void __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke_7(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke_8;
  block[3] = &unk_1E837CAF0;
  v12 = a1[5];
  v13 = v5;
  v14 = a1[4];
  v8 = a1[6];
  v15 = v6;
  v16 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) setOutput:*(a1 + 40)];
  [*(a1 + 32) setOutput:*(a1 + 40) onVariableSource:*(a1 + 48)];
  v2 = *(a1 + 56);
  v3 = *(*(a1 + 64) + 16);

  return v3();
}

void __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) executionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke_4;
  v7[3] = &unk_1E837E1F8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (id)parameterInputProviderForAction:(id)action
{
  actionCopy = action;
  delegate = [(WFWorkflowController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WFWorkflowController *)self delegate];
    v8 = [delegate2 workflowController:self parameterInputProviderForAction:actionCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)didRunAction:(id)action error:(id)error withCompletion:(id)completion
{
  actionCopy = action;
  errorCopy = error;
  completionCopy = completion;
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(executionQueue);

  userInterface = [(WFWorkflowController *)self userInterface];
  v13 = userInterface;
  if (userInterface && [userInterface isRunningWithSiriUI])
  {
    identifier = [actionCopy identifier];
    [v13 didFinishActionWithIdentifier:identifier];
  }

  delegateQueue = [(WFWorkflowController *)self delegateQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__WFWorkflowController_didRunAction_error_withCompletion___block_invoke;
  v19[3] = &unk_1E837F510;
  v19[4] = self;
  v20 = actionCopy;
  v21 = errorCopy;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = errorCopy;
  v18 = actionCopy;
  dispatch_async(delegateQueue, v19);
}

void __58__WFWorkflowController_didRunAction_error_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = [*(a1 + 32) delegate];
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__WFWorkflowController_didRunAction_error_withCompletion___block_invoke_2;
    v14[3] = &unk_1E837E1F8;
    v14[4] = v5;
    v7 = *(a1 + 48);
    v15 = *(a1 + 56);
    [v4 workflowController:v5 didRunAction:v6 error:v7 completionHandler:v14];

    v8 = v15;
  }

  else
  {
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      return;
    }

    v10 = [*(a1 + 32) delegate];
    [v10 workflowController:*(a1 + 32) didRunAction:*(a1 + 40) error:*(a1 + 48)];

    v11 = [*(a1 + 32) executionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__WFWorkflowController_didRunAction_error_withCompletion___block_invoke_4;
    block[3] = &unk_1E837F4E8;
    v13 = *(a1 + 56);
    dispatch_async(v11, block);

    v8 = v13;
  }
}

void __58__WFWorkflowController_didRunAction_error_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__WFWorkflowController_didRunAction_error_withCompletion___block_invoke_3;
  block[3] = &unk_1E837F4E8;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

- (void)runAction:(id)action withInput:(id)input completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  inputCopy = input;
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(executionQueue);

  userInterface = [(WFWorkflowController *)self userInterface];
  v13 = userInterface;
  if (userInterface && [userInterface isRunningWithSiriUI])
  {
    identifier = [actionCopy identifier];
    [v13 didStartActionWithIdentifier:identifier];
  }

  userInterface2 = [(WFWorkflowController *)self userInterface];
  executionQueue2 = [(WFWorkflowController *)self executionQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__WFWorkflowController_runAction_withInput_completionHandler___block_invoke;
  v18[3] = &unk_1E837DAB0;
  v18[4] = self;
  v19 = handlerCopy;
  v17 = handlerCopy;
  [actionCopy runWithInput:inputCopy userInterface:userInterface2 runningDelegate:self variableSource:self workQueue:executionQueue2 completionHandler:v18];
}

void __62__WFWorkflowController_runAction_withInput_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) executionQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__WFWorkflowController_runAction_withInput_completionHandler___block_invoke_2;
  v11[3] = &unk_1E837F510;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t __62__WFWorkflowController_runAction_withInput_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) executionVoucher];
  objc_claimAutoreleasedReturnValue();

  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 16);

  return v4();
}

- (void)prepareToRunAction:(id)action withInput:(id)input completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  inputCopy = input;
  handlerCopy = handler;
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(executionQueue);

  v12 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[WFWorkflowController prepareToRunAction:withInput:completionHandler:]";
    v23 = 2114;
    v24 = actionCopy;
    v25 = 2112;
    v26 = inputCopy;
    _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s Preparing to run action: %{public}@, with input: %@", buf, 0x20u);
  }

  delegate = [(WFWorkflowController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegateQueue = [(WFWorkflowController *)self delegateQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__WFWorkflowController_prepareToRunAction_withInput_completionHandler___block_invoke;
    v17[3] = &unk_1E837F510;
    v17[4] = self;
    v18 = actionCopy;
    v19 = inputCopy;
    v20 = handlerCopy;
    dispatch_async(delegateQueue, v17);
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __71__WFWorkflowController_prepareToRunAction_withInput_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__WFWorkflowController_prepareToRunAction_withInput_completionHandler___block_invoke_2;
  v6[3] = &unk_1E837E1F8;
  v6[4] = v3;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 workflowController:v3 prepareToRunAction:v4 withInput:v5 completionHandler:v6];
}

void __71__WFWorkflowController_prepareToRunAction_withInput_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) executionQueue];
  dispatch_async(v2, *(a1 + 40));
}

- (void)didFinishRunningWithError:(id)error cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  v31 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(executionQueue);

  if (errorCopy && cancelledCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowController.m" lineNumber:1075 description:@"Clients of WFWorkflowController should never receive both cancelled = YES and an error; they are mutually exclusive"];
  }

  displayLayoutMonitor = [(WFWorkflowController *)self displayLayoutMonitor];
  [displayLayoutMonitor invalidate];

  [(WFWorkflowController *)self setDisplayLayoutMonitor:0];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  workflow = [(WFWorkflowController *)self workflow];
  actions = [workflow actions];

  v12 = [actions countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(actions);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        extendedOperation = [v16 extendedOperation];

        if (extendedOperation)
        {
          extendedOperation2 = [v16 extendedOperation];
          [extendedOperation2 cancel];

          [v16 setExtendedOperation:0];
        }
      }

      v13 = [actions countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  [(WFWorkflowController *)self setResumed:0];
  [(WFWorkflowController *)self autoreleaseSelf];
  delegateQueue = [(WFWorkflowController *)self delegateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WFWorkflowController_didFinishRunningWithError_cancelled___block_invoke;
  block[3] = &unk_1E8377C58;
  block[4] = self;
  v24 = errorCopy;
  v25 = cancelledCopy;
  v20 = errorCopy;
  dispatch_async(delegateQueue, block);

  [(WFWorkflowController *)self invalidateAssertionIfNeeded];
  v21 = *MEMORY[0x1E69E9840];
}

void __60__WFWorkflowController_didFinishRunningWithError_cancelled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 workflowController:*(a1 + 32) didFinishRunningWithError:*(a1 + 40) cancelled:*(a1 + 48)];
  }
}

- (void)workflowControllerWillRun:(id)run
{
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(executionQueue);

  [(WFWorkflowController *)self retainSelf];
  [(WFWorkflowController *)self acquireAssertionIfNeeded];
  delegateQueue = [(WFWorkflowController *)self delegateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WFWorkflowController_workflowControllerWillRun___block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_sync(delegateQueue, block);
}

void __50__WFWorkflowController_workflowControllerWillRun___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 workflowControllerWillRun:*(a1 + 32)];
  }
}

- (void)stopShortcutNotificationReceived:(id)received
{
  object = [received object];
  runningContext = [(WFWorkflowController *)self runningContext];
  identifier = [runningContext identifier];
  v7 = [object isEqualToString:identifier];

  if (v7)
  {
    runningContext2 = [(WFWorkflowController *)self runningContext];
    isStepwise = [runningContext2 isStepwise];

    if (isStepwise)
    {
      currentAction = [(WFWorkflowController *)self currentAction];
      isRunning = [currentAction isRunning];

      if (isRunning)
      {
        currentAction2 = [(WFWorkflowController *)self currentAction];
        [currentAction2 cancel];
      }
    }

    else
    {

      [(WFWorkflowController *)self stop];
    }
  }
}

- (BOOL)action:(id)action canProvideInputForParameter:(id)parameter
{
  parameterCopy = parameter;
  actionCopy = action;
  v8 = [(WFWorkflowController *)self parameterInputProviderForAction:actionCopy];
  v9 = [v8 action:actionCopy canProvideInputForParameter:parameterCopy];

  return v9;
}

- (void)action:(id)action provideInputForParameters:(id)parameters withDefaultStates:(id)states prompts:(id)prompts completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  parametersCopy = parameters;
  statesCopy = states;
  promptsCopy = prompts;
  handlerCopy = handler;
  v17 = [(WFWorkflowController *)self parameterInputProviderForAction:actionCopy];
  if (v17)
  {
    v18 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = 136315394;
      v21 = "[WFWorkflowController action:provideInputForParameters:withDefaultStates:prompts:completionHandler:]";
      v22 = 2114;
      v23 = parametersCopy;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_INFO, "%s Asking input provider to provide input for parameters: %{public}@", &v20, 0x16u);
    }

    [v17 action:actionCopy provideInputForParameters:parametersCopy withDefaultStates:statesCopy prompts:promptsCopy completionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)autoreleaseSelf
{
  p_strongSelf = &self->_strongSelf;
  strongSelf = self->_strongSelf;
  v4 = strongSelf;
  objc_storeStrong(p_strongSelf, strongSelf);
  v5 = *p_strongSelf;
  *p_strongSelf = 0;
}

- (void)action:(id)action handleTestingEvent:(id)event completionHandler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  delegate = [(WFWorkflowController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(WFWorkflowController *)self delegate];
    [delegate2 workflowController:self handleTestingEvent:eventCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (BOOL)isTesting
{
  delegate = [(WFWorkflowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(WFWorkflowController *)self delegate];
  v6 = [delegate2 workflowControllerIsTesting:self];

  return v6;
}

- (void)action:(id)action didGenerateReversalState:(id)state
{
  actionCopy = action;
  stateCopy = state;
  delegate = [(WFWorkflowController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(WFWorkflowController *)self delegate];
    [delegate2 workflowController:self didGenerateReversalState:stateCopy forAction:actionCopy];
  }
}

- (id)actionReversalStateForAction:(id)action
{
  actionCopy = action;
  delegate = [(WFWorkflowController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WFWorkflowController *)self delegate];
    v8 = [delegate2 workflowController:self actionReversalStateForAction:actionCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)remoteDialogPresenterEndpointForRunWorkflowAction:(id)action
{
  delegate = [(WFWorkflowController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFWorkflowController *)self delegate];
    v7 = [delegate2 remoteDialogPresenterEndpointForController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setEnvironmentValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  environmentValueTable = [(WFWorkflowController *)self environmentValueTable];
  v8 = environmentValueTable;
  if (valueCopy)
  {
    [environmentValueTable setObject:valueCopy forKey:keyCopy];
  }

  else
  {
    [environmentValueTable removeObjectForKey:keyCopy];
  }
}

- (id)environmentValueForKey:(id)key
{
  keyCopy = key;
  environmentValueTable = [(WFWorkflowController *)self environmentValueTable];
  v6 = [environmentValueTable objectForKey:keyCopy];

  return v6;
}

- (void)requestAccessToFileAtURLs:(id)ls completionHandler:(id)handler
{
  handlerCopy = handler;
  lsCopy = ls;
  userInterface = [(WFWorkflowController *)self userInterface];
  workflow = [(WFWorkflowController *)self workflow];
  name = [workflow name];
  v10 = name;
  if (name)
  {
    v11 = name;
  }

  else
  {
    v11 = &stru_1F4A1C408;
  }

  workflow2 = [(WFWorkflowController *)self workflow];
  workflowID = [workflow2 workflowID];
  [userInterface requestFileAccessForURLs:lsCopy workflowName:v11 workflowID:workflowID completionHandler:handlerCopy];
}

- (void)requestAccessToFileAtLocations:(id)locations completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  handlerCopy = handler;
  v8 = getWFFilesLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[WFWorkflowController requestAccessToFileAtLocations:completionHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = locationsCopy;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Requesting file access to %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v19 = __Block_byref_object_copy__27632;
  v20 = __Block_byref_object_dispose__27633;
  v21 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__WFWorkflowController_requestAccessToFileAtLocations_completionHandler___block_invoke;
  v13[3] = &unk_1E8377C28;
  v13[4] = buf;
  v9 = [locationsCopy if_compactMap:v13];
  if ([v9 count])
  {
    [(WFWorkflowController *)self requestAccessToFileAtURLs:v9 completionHandler:handlerCopy];
  }

  else
  {
    v10 = getWFFilesLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*&buf[8] + 40);
      *v14 = 136315394;
      v15 = "[WFWorkflowController requestAccessToFileAtLocations:completionHandler:]";
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s Could not resolve location with error: %@", v14, 0x16u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  _Block_object_dispose(buf, 8);
  v12 = *MEMORY[0x1E69E9840];
}

id __73__WFWorkflowController_requestAccessToFileAtLocations_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  obj = *(v2 + 40);
  v3 = [a2 resolveLocationWithError:&obj];
  objc_storeStrong((v2 + 40), obj);

  return v3;
}

- (void)captureFileRepresentation:(id)representation
{
  representationCopy = representation;
  capturedFiles = [(WFWorkflowController *)self capturedFiles];
  [capturedFiles addFile:representationCopy];
}

- (id)contentForPrivateVariableKey:(id)key
{
  keyCopy = key;
  variableTable = [(WFWorkflowController *)self variableTable];
  v6 = [variableTable objectForKey:keyCopy];

  return v6;
}

- (void)setContent:(id)content forPrivateVariableKey:(id)key
{
  contentCopy = content;
  keyCopy = key;
  variableTable = [(WFWorkflowController *)self variableTable];
  v8 = variableTable;
  if (contentCopy)
  {
    [variableTable setObject:contentCopy forKey:keyCopy];
  }

  else
  {
    [variableTable removeObjectForKey:keyCopy];
  }
}

- (id)contentForVariableWithName:(id)name
{
  name = [MEMORY[0x1E696AEC0] stringWithFormat:@"user-%@", name];
  variableTable = [(WFWorkflowController *)self variableTable];
  v6 = [variableTable objectForKey:name];

  return v6;
}

- (BOOL)setContent:(id)content forVariableWithName:(id)name
{
  contentCopy = content;
  name = [MEMORY[0x1E696AEC0] stringWithFormat:@"user-%@", name];
  if (contentCopy)
  {
    flowTracker = [(WFWorkflowController *)self flowTracker];
    v9 = [flowTracker contentCollectionByTaintingContentCollection:contentCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = contentCopy;
    }

    variableTable3 = v11;

    variableTable = [(WFWorkflowController *)self variableTable];
    [variableTable setObject:variableTable3 forKey:name];

    contentItemCache = [(WFWorkflowController *)self contentItemCache];
    [contentItemCache addContentCollection:variableTable3];
  }

  else
  {
    contentItemCache2 = [(WFWorkflowController *)self contentItemCache];
    variableTable2 = [(WFWorkflowController *)self variableTable];
    v17 = [variableTable2 objectForKey:name];
    [contentItemCache2 deleteContentCollection:v17];

    variableTable3 = [(WFWorkflowController *)self variableTable];
    [variableTable3 removeObjectForKey:name];
  }

  return 1;
}

- (void)reset
{
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_not_V2(executionQueue);

  executionQueue2 = [(WFWorkflowController *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__WFWorkflowController_reset__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_sync(executionQueue2, block);
}

- (void)step
{
  executionQueue = [(WFWorkflowController *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__WFWorkflowController_step__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(executionQueue, block);
}

- (void)queue_stopWithError:(id)error
{
  errorCopy = error;
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(executionQueue);

  LODWORD(executionQueue) = self->_running;
  [(WFWorkflowController *)self setFinishedRunningWithSuccess:0];
  if (executionQueue == 1)
  {
    currentAction = [(WFWorkflowController *)self currentAction];
    if ([currentAction isRunning])
    {
      if (errorCopy)
      {
        [currentAction finishRunningWithError:?];
      }

      else
      {
        [currentAction cancel];
      }
    }

    else
    {
      [WFWorkflowController didFinishRunningWithError:"didFinishRunningWithError:cancelled:" cancelled:?];
    }
  }
}

- (void)stopWithError:(id)error
{
  errorCopy = error;
  executionQueue = [(WFWorkflowController *)self executionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__WFWorkflowController_stopWithError___block_invoke;
  v7[3] = &unk_1E837F870;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(executionQueue, v7);
}

- (void)stop
{
  executionQueue = [(WFWorkflowController *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__WFWorkflowController_stop__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(executionQueue, block);
}

- (void)_finishStepWithError:(id)error
{
  v36 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(executionQueue);

  currentAction = [(WFWorkflowController *)self currentAction];
  [(WFWorkflowController *)self setLastExecutedAction:currentAction];

  domain = [errorCopy domain];
  v6 = *MEMORY[0x1E696A798];
  if ([domain isEqualToString:*MEMORY[0x1E696A798]])
  {
    v7 = errorCopy;
    code = [errorCopy code];

    if (code == 37)
    {
      goto LABEL_31;
    }
  }

  else
  {

    v7 = errorCopy;
  }

  domain2 = [v7 domain];
  if ([domain2 isEqualToString:v6])
  {
    code2 = [errorCopy code];

    if (code2 == 7)
    {
      [(WFWorkflowController *)self setCurrentIndex:0];
      v11 = dispatch_group_create();
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      workflow = [(WFWorkflowController *)self workflow];
      actions = [workflow actions];

      v14 = [actions countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v14)
      {
        v15 = *v32;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(actions);
            }

            v17 = *(*(&v31 + 1) + 8 * i);
            extendedOperation = [v17 extendedOperation];

            if (extendedOperation)
            {
              dispatch_group_enter(v11);
              objc_initWeak(&location, v17);
              extendedOperation2 = [v17 extendedOperation];
              v27[0] = MEMORY[0x1E69E9820];
              v27[1] = 3221225472;
              v27[2] = __45__WFWorkflowController__finishStepWithError___block_invoke;
              v27[3] = &unk_1E8377C00;
              objc_copyWeak(&v29, &location);
              v28 = v11;
              [extendedOperation2 addCompletionHandlerIfRunning:v27];

              objc_destroyWeak(&v29);
              objc_destroyWeak(&location);
            }
          }

          v14 = [actions countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v14);
      }

      executionQueue2 = [(WFWorkflowController *)self executionQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__WFWorkflowController__finishStepWithError___block_invoke_2;
      block[3] = &unk_1E837FA70;
      block[4] = self;
      dispatch_group_notify(v11, executionQueue2, block);

      goto LABEL_30;
    }
  }

  else
  {
  }

  v7 = errorCopy;
  if ([errorCopy wf_isUserCancelledError])
  {
    [(WFWorkflowController *)self didFinishRunningWithError:0 cancelled:1];
    [(WFWorkflowController *)self setCurrentIndex:0];
    progress = [(WFWorkflowController *)self progress];
LABEL_29:
    v22 = progress;
    [progress unpublish];

    [(WFWorkflowController *)self setProgress:0];
LABEL_30:
    v7 = errorCopy;
    goto LABEL_31;
  }

  if (errorCopy)
  {
    if ([errorCopy wf_isUnsupportedUserInterfaceError])
    {
      [(WFWorkflowController *)self setFinishedRunningWithSuccess:0];
      [(WFWorkflowController *)self didFinishRunningWithError:errorCopy cancelled:0];
      progress = [(WFWorkflowController *)self progress];
      goto LABEL_29;
    }

    if (![(WFWorkflowController *)self runningAsStepWiseExecutor])
    {
      [(WFWorkflowController *)self setFinishedRunningWithSuccess:0];
      [(WFWorkflowController *)self didFinishRunningWithError:errorCopy cancelled:0];
      [(WFWorkflowController *)self setCurrentIndex:0];
      progress = [(WFWorkflowController *)self progress];
      goto LABEL_29;
    }
  }

  if (![(WFWorkflowController *)self runningAsStepWiseExecutor])
  {
    if (!self->_running)
    {
      [(WFWorkflowController *)self didFinishRunningWithError:0 cancelled:1];
      [(WFWorkflowController *)self setCurrentIndex:0];
      goto LABEL_31;
    }

    [(WFWorkflowController *)self setResumed:0];
  }

  [(WFWorkflowController *)self _step];
LABEL_31:

  v23 = *MEMORY[0x1E69E9840];
}

void __45__WFWorkflowController__finishStepWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setExtendedOperation:0];
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __45__WFWorkflowController__finishStepWithError___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFinishedRunningWithSuccess:1];
  [*(a1 + 32) didFinishRunningWithError:0 cancelled:0];
  v2 = [*(a1 + 32) progress];
  [v2 unpublish];

  v3 = *(a1 + 32);

  return [v3 setProgress:0];
}

void __29__WFWorkflowController__step__block_invoke(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) executionQueue];
  dispatch_assert_queue_V2(v2);

  v3 = [*(v1 + 32) progress];
  v4 = *(v1 + 40);
  v5 = off_1E836E000;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([*(v1 + 40) mode] || (objc_msgSend(*(v1 + 40), "progress"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6)))
  {
    v7 = 0;
LABEL_5:

    v3 = v7;
  }

  else
  {
    v8 = [*(v1 + 32) currentIndex];
    if (v8 - 1 >= 0)
    {
      v9 = v8;
      v42 = v3;
      do
      {
        --v9;
        v10 = [*(v1 + 32) workflow];
        v11 = [v10 actions];
        v12 = [v11 objectAtIndex:v9];

        v13 = v5[22];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v12 groupedOpenAction];
          v15 = [v12 groupedCloseAction];
          v16 = [*(v1 + 32) workflow];
          v17 = [v16 actions];
          v18 = [v17 indexOfObject:v14];
          if (v18 >= [*(v1 + 32) currentIndex])
          {
          }

          else
          {
            v19 = [*(v1 + 32) workflow];
            [v19 actions];
            v21 = v20 = v5;
            v43 = [v21 indexOfObject:v15];
            v44 = v15;
            v22 = v1;
            v23 = [*(v1 + 32) currentIndex];

            v5 = v20;
            v24 = v43 > v23;
            v1 = v22;
            v15 = v44;
            if (v24)
            {
              v7 = [v14 progress];

              v3 = v12;
              goto LABEL_5;
            }
          }
        }
      }

      while (v9 > 0);
      v3 = v42;
    }
  }

  if (![*(v1 + 40) hasChildren] || (objc_msgSend(*(v1 + 40), "progress"), v25 = objc_claimAutoreleasedReturnValue(), v25, !v25))
  {
    v26 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    [*(v1 + 40) setProgress:v26];
  }

  v27 = [*(v1 + 40) progress];

  if (v27)
  {
    v28 = [*(v1 + 40) progress];
    [v3 addChild:v28 withPendingUnitCount:1];

    v29 = [*(v1 + 40) progress];
    v30 = v1;
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(v1 + 32), "currentIndex")}];
    [v29 setUserInfoObject:v31 forKey:*MEMORY[0x1E69E1330]];

    v1 = v30;
    v32 = [*(v30 + 40) progress];
    [*(v30 + 32) setCurrentActionProgress:v32];
  }

  if ([*(v1 + 32) resumed])
  {
    v33 = [*(v1 + 40) progress];
    [v33 setUserInfoObject:MEMORY[0x1E695E118] forKey:@"WFActionDidResume"];
  }

  [*(v1 + 40) setDidRunRemotely:0];
  [*(v1 + 32) logStartActionEventWithAction:*(v1 + 40)];
  v34 = *(v1 + 40);
  if (v34)
  {
    v35 = v5[22];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

  v38 = [*(v1 + 32) flowTracker];
  [v37 setControlFlowTracker:v38];

  v40 = *(v1 + 32);
  v39 = *(v1 + 40);
  v41 = *(v1 + 48);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __29__WFWorkflowController__step__block_invoke_2;
  v45[3] = &unk_1E8377BD8;
  v45[4] = v40;
  v46 = v39;
  [v40 runAction:v46 withInput:v41 completionHandler:v45];
}

void __29__WFWorkflowController__step__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) executionQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [*(a1 + 32) errorByAddingActionIndex:objc_msgSend(*(a1 + 32) toError:{"currentIndex"), v4}];

    if (v6)
    {
      v7 = [v6 domain];
      if ([v7 isEqualToString:@"WFActionErrorDomain"])
      {
        v8 = [v6 code];

        if (!v8)
        {
          v9 = 1;
          goto LABEL_8;
        }
      }

      else
      {
      }

      v19 = *(a1 + 32);
      v18 = *(a1 + 40);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __29__WFWorkflowController__step__block_invoke_3;
      v26[3] = &unk_1E8377B88;
      v20 = v18;
      v21 = *(a1 + 32);
      v27 = v20;
      v28 = v21;
      [v19 handleError:v6 fromAction:v20 completionHandler:v26];
      v17 = v27;
      goto LABEL_16;
    }

    v9 = 0;
  }

  else
  {
    v9 = 0;
    v6 = 0;
  }

LABEL_8:
  [*(a1 + 32) setStepping:0];
  if (_os_feature_enabled_impl() && [*(a1 + 32) outputBehavior] == 3)
  {
    v10 = [*(a1 + 32) actionOutputsByWorkflowIndex];

    if (!v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [*(a1 + 32) setActionOutputsByWorkflowIndex:v11];
    }

    v12 = [*(a1 + 40) output];
    v13 = [*(a1 + 32) actionOutputsByWorkflowIndex];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "currentIndex")}];
    [v13 setObject:v12 forKeyedSubscript:v14];
  }

  [*(a1 + 32) setCurrentIndex:{objc_msgSend(*(a1 + 32), "currentIndex") + 1}];
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __29__WFWorkflowController__step__block_invoke_5;
  v22[3] = &unk_1E8377BB0;
  v25 = v9;
  v22[4] = v16;
  v23 = v15;
  v6 = v6;
  v24 = v6;
  [v16 didRunAction:v23 error:0 withCompletion:v22];

  v17 = v23;
LABEL_16:
}

void __29__WFWorkflowController__step__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v9 = (a1 + 40);
    [*(a1 + 40) setStepping:0];
    goto LABEL_5;
  }

  v4 = objc_alloc_init(WFRunShortcutErrorEvent);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "code")}];
  v6 = [v5 stringValue];
  [(WFRunShortcutErrorEvent *)v4 setErrorCode:v6];

  v7 = [v3 domain];
  [(WFRunShortcutErrorEvent *)v4 setErrorDomain:v7];

  v8 = [*(a1 + 32) identifier];
  [(WFRunShortcutErrorEvent *)v4 setActionIdentifier:v8];

  -[WFRunShortcutErrorEvent setDidRunRemotely:](v4, "setDidRunRemotely:", [*(a1 + 32) didRunRemotely]);
  v9 = (a1 + 40);
  v10 = [*(a1 + 40) runSource];
  [(WFRunShortcutErrorEvent *)v4 setRunSource:v10];

  v11 = [*(a1 + 40) automationType];
  [(WFRunShortcutErrorEvent *)v4 setAutomationType:v11];

  [(WFEvent *)v4 track];
  [*(a1 + 40) setStepping:0];
  if ([*(a1 + 40) runningAsStepWiseExecutor])
  {
LABEL_5:
    [*v9 setCurrentIndex:{objc_msgSend(*v9, "currentIndex") + 1}];
  }

  v12 = [v3 wf_isSiriPunchOutError];
  v13 = *v9;
  if (v12)
  {
    [*v9 _step];
  }

  else
  {
    v14 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __29__WFWorkflowController__step__block_invoke_4;
    v17[3] = &unk_1E837C1E8;
    v18 = v14;
    v15 = v3;
    v16 = *(a1 + 40);
    v19 = v15;
    v20 = v16;
    [v13 didRunAction:v18 error:v15 withCompletion:v17];
  }
}

uint64_t __29__WFWorkflowController__step__block_invoke_5(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) workflow];
    v3 = [v2 actionsGroupedWithAction:*(a1 + 40)];
    v4 = [v3 lastObject];

    v5 = [*(a1 + 32) workflow];
    v6 = [v5 actions];
    [*(a1 + 32) setCurrentIndex:{objc_msgSend(v6, "indexOfObject:", v4) + 1}];
  }

  if (([*(a1 + 40) hasChildren] & 1) == 0 && (objc_msgSend(*(a1 + 48), "wf_isUserCancelledError") & 1) == 0)
  {
    v7 = [*(a1 + 40) progress];
    v8 = [v7 totalUnitCount];
    v9 = [*(a1 + 40) progress];
    [v9 setCompletedUnitCount:v8];
  }

  [*(a1 + 32) logFinishActionEventWithAction:*(a1 + 40) completed:*(a1 + 48) == 0 error:?];
  [*(a1 + 32) handleControlFlowActionCompletion:*(a1 + 40) actionGroupSkipped:*(a1 + 56)];
  v10 = *(a1 + 32);

  return [v10 _finishStepWithError:0];
}

uint64_t __29__WFWorkflowController__step__block_invoke_4(id *a1)
{
  if (([a1[4] hasChildren] & 1) == 0 && (objc_msgSend(a1[5], "wf_isUserCancelledError") & 1) == 0)
  {
    v2 = [a1[4] progress];
    v3 = [v2 totalUnitCount];
    v4 = [a1[4] progress];
    [v4 setCompletedUnitCount:v3];
  }

  [a1[6] logFinishActionEventWithAction:a1[4] completed:a1[5] == 0 error:?];
  v6 = a1[5];
  v5 = a1[6];

  return [v5 _finishStepWithError:v6];
}

- (BOOL)isRunningFromSpotlight
{
  if ([MEMORY[0x1E695E000] forceSpotlightRunSource])
  {
    return 1;
  }

  runSource = [(WFWorkflowController *)self runSource];
  v5 = *MEMORY[0x1E69E1410];
  v6 = runSource;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
    if (v6 && v7)
    {
      v3 = [v6 isEqualToString:v7];
    }
  }

  return v3;
}

- (WFSmartPromptsExfiltrationLogger)exfiltrationLogger
{
  exfiltrationLogger = self->_exfiltrationLogger;
  if (!exfiltrationLogger)
  {
    v4 = objc_alloc_init(WFSmartPromptsExfiltrationLogger);
    v5 = self->_exfiltrationLogger;
    self->_exfiltrationLogger = v4;

    exfiltrationLogger = self->_exfiltrationLogger;
  }

  return exfiltrationLogger;
}

- (WFContentCollection)capturedFiles
{
  capturedFiles = self->_capturedFiles;
  if (!capturedFiles)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6996D40]);
    v5 = self->_capturedFiles;
    self->_capturedFiles = v4;

    capturedFiles = self->_capturedFiles;
  }

  return capturedFiles;
}

- (WFControlFlowAttributionTracker)flowTracker
{
  flowTracker = self->_flowTracker;
  if (!flowTracker)
  {
    v4 = objc_alloc_init(WFControlFlowAttributionTracker);
    v5 = self->_flowTracker;
    self->_flowTracker = v4;

    flowTracker = self->_flowTracker;
  }

  return flowTracker;
}

- (void)setCurrentActionProgress:(id)progress
{
  progressCopy = progress;
  [(NSProgress *)self->_currentActionProgress removeObserver:self forKeyPath:@"fractionCompleted" context:WFCurrentActionFractionCompletedContext];
  currentActionProgress = self->_currentActionProgress;
  self->_currentActionProgress = progressCopy;
  v6 = progressCopy;

  [(NSProgress *)self->_currentActionProgress addObserver:self forKeyPath:@"fractionCompleted" options:4 context:WFCurrentActionFractionCompletedContext];
}

- (void)publishActionProgress
{
  v15 = objc_opt_new();
  currentActionProgress = [(WFWorkflowController *)self currentActionProgress];
  userInfo = [currentActionProgress userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69E1330]];
  [v15 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69E1308]];

  currentAction = [(WFWorkflowController *)self currentAction];
  LOBYTE(userInfo) = [currentAction isProgressIndeterminate];

  if ((userInfo & 1) == 0)
  {
    v7 = MEMORY[0x1E696AD98];
    currentActionProgress2 = [(WFWorkflowController *)self currentActionProgress];
    [currentActionProgress2 fractionCompleted];
    v9 = [v7 numberWithDouble:?];
    [v15 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69E1310]];

    currentActionProgress3 = [(WFWorkflowController *)self currentActionProgress];
    localizedDescription = [currentActionProgress3 localizedDescription];
    [v15 setObject:localizedDescription forKeyedSubscript:*MEMORY[0x1E69E1320]];

    currentActionProgress4 = [(WFWorkflowController *)self currentActionProgress];
    localizedAdditionalDescription = [currentActionProgress4 localizedAdditionalDescription];
    [v15 setObject:localizedAdditionalDescription forKeyedSubscript:*MEMORY[0x1E69E1318]];
  }

  progress = [(WFWorkflowController *)self progress];
  [progress setUserInfoObject:v15 forKey:*MEMORY[0x1E69E1328]];
}

- (void)publishRunningState:(int64_t)state
{
  progress = [(WFWorkflowController *)self progress];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [progress setUserInfoObject:v4 forKey:*MEMORY[0x1E69E1338]];
}

- (id)currentStateWithContext:(id)context
{
  contextCopy = context;
  currentState = [(WFWorkflowController *)self currentState];
  v6 = currentState;
  if (currentState)
  {
    v27 = contextCopy;
    if (contextCopy)
    {
      runningContext = contextCopy;
    }

    else
    {
      runningContext = [currentState runningContext];
    }

    v26 = runningContext;
    v21 = [WFWorkflowControllerState alloc];
    workflow = [v6 workflow];
    variables = [v6 variables];
    currentActionIndex = [v6 currentActionIndex];
    currentInput = [v6 currentInput];
    currentProcessedParameters = [v6 currentProcessedParameters];
    startDate = [v6 startDate];
    currentRunSource = [v6 currentRunSource];
    numberOfDialogsPresented = [v6 numberOfDialogsPresented];
    outputBehavior = [v6 outputBehavior];
    currentActionContentAttributionTracker = [v6 currentActionContentAttributionTracker];
    contentItemCache = [v6 contentItemCache];
    flowTracker = [v6 flowTracker];
    allowedOnceSmartPromptStates = [v6 allowedOnceSmartPromptStates];
    extensionResourceClasses = [v6 extensionResourceClasses];
    LOBYTE(v15) = [v6 shouldDisablePrivacyPrompts];
    v8 = [(WFWorkflowControllerState *)v21 initWithWorkflow:workflow variables:variables currentActionIndex:currentActionIndex runningContext:v26 currentInput:currentInput currentProcessedParameters:currentProcessedParameters startDate:startDate currentRunSource:currentRunSource numberOfDialogsPresented:numberOfDialogsPresented outputBehavior:outputBehavior contentAttributionTracker:currentActionContentAttributionTracker contentItemCache:contentItemCache flowTracker:flowTracker allowedOnceSmartPromptStates:allowedOnceSmartPromptStates extensionResourceClasses:extensionResourceClasses shouldDisablePrivacyPrompts:v15];

    contextCopy = v27;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)stateWithActionIndex:(unint64_t)index input:(id)input processedParameters:(id)parameters
{
  parametersCopy = parameters;
  inputCopy = input;
  variableTable = [(WFWorkflowController *)self variableTable];
  v9 = [variableTable copy];
  dictionaryRepresentation = [v9 dictionaryRepresentation];

  userInterface = [(WFWorkflowController *)self userInterface];
  LOBYTE(v9) = objc_opt_respondsToSelector();

  if (v9)
  {
    userInterface2 = [(WFWorkflowController *)self userInterface];
    dialogTransformer = [userInterface2 dialogTransformer];
    numberOfDialogsPresented = [dialogTransformer numberOfDialogsPresented];
  }

  else
  {
    numberOfDialogsPresented = 0;
  }

  v13 = MEMORY[0x1E695DFD8];
  workflow = [(WFWorkflowController *)self workflow];
  actions = [workflow actions];
  v16 = [actions if_flatMap:&__block_literal_global_27689];
  v41 = [v13 setWithArray:v16];

  v30 = [WFWorkflowControllerState alloc];
  workflow2 = [(WFWorkflowController *)self workflow];
  reference = [workflow2 reference];
  runningContext = [(WFWorkflowController *)self runningContext];
  startDate = [(WFWorkflowController *)self startDate];
  runSource = [(WFWorkflowController *)self runSource];
  outputBehavior = [(WFWorkflowController *)self outputBehavior];
  workflow3 = [(WFWorkflowController *)self workflow];
  actions2 = [workflow3 actions];
  v29 = [actions2 objectAtIndexedSubscript:index];
  contentAttributionTracker = [v29 contentAttributionTracker];
  contentItemCache = [(WFWorkflowController *)self contentItemCache];
  flowTracker = [(WFWorkflowController *)self flowTracker];
  workflow4 = [(WFWorkflowController *)self workflow];
  actions3 = [workflow4 actions];
  v21 = [actions3 objectAtIndexedSubscript:index];
  allowedOnceSmartPromptStates = [v21 allowedOnceSmartPromptStates];
  LOBYTE(v24) = [(WFWorkflowController *)self shouldDisablePrivacyPrompts];
  v34 = [(WFWorkflowControllerState *)v30 initWithWorkflow:reference variables:dictionaryRepresentation currentActionIndex:index runningContext:runningContext currentInput:inputCopy currentProcessedParameters:parametersCopy startDate:startDate currentRunSource:runSource numberOfDialogsPresented:numberOfDialogsPresented outputBehavior:outputBehavior contentAttributionTracker:contentAttributionTracker contentItemCache:contentItemCache flowTracker:flowTracker allowedOnceSmartPromptStates:allowedOnceSmartPromptStates extensionResourceClasses:v41 shouldDisablePrivacyPrompts:v24];

  return v34;
}

id __71__WFWorkflowController_stateWithActionIndex_input_processedParameters___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 resourceManager];
  v3 = [v2 accessResources];
  v4 = [v3 if_compactMap:&__block_literal_global_198];
  v5 = [v4 allObjects];

  return v5;
}

id __71__WFWorkflowController_stateWithActionIndex_input_processedParameters___block_invoke_2()
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

- (WFWorkflowControllerState)currentState
{
  pendingState = [(WFWorkflowController *)self pendingState];

  if (pendingState)
  {
    pendingState2 = [(WFWorkflowController *)self pendingState];
  }

  else
  {
    workflow = [(WFWorkflowController *)self workflow];
    actions = [workflow actions];

    if ([actions count])
    {
      currentIndex = [(WFWorkflowController *)self currentIndex];
      if (currentIndex >= [actions count])
      {
        currentIndex = 0;
      }

      v8 = [actions objectAtIndex:currentIndex];
      input = [v8 input];
      processedParameters = [v8 processedParameters];
      pendingState2 = [(WFWorkflowController *)self stateWithActionIndex:currentIndex input:input processedParameters:processedParameters];
    }

    else
    {
      pendingState2 = 0;
    }
  }

  return pendingState2;
}

- (void)queue_setWorkflow:(id)workflow
{
  workflowCopy = workflow;
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(executionQueue);

  LOBYTE(executionQueue) = [(WFWorkflow *)self->_workflow isEqual:workflowCopy];
  workflow = self->_workflow;
  self->_workflow = workflowCopy;

  if ((executionQueue & 1) == 0)
  {

    [(WFWorkflowController *)self queue_reset];
  }
}

- (void)setWorkflow:(id)workflow
{
  workflowCopy = workflow;
  executionQueue = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_not_V2(executionQueue);

  executionQueue2 = [(WFWorkflowController *)self executionQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__WFWorkflowController_setWorkflow___block_invoke;
  v8[3] = &unk_1E837F870;
  v8[4] = self;
  v9 = workflowCopy;
  v7 = workflowCopy;
  dispatch_sync(executionQueue2, v8);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (WFCurrentActionFractionCompletedContext == context)
  {

    [(WFWorkflowController *)self publishActionProgress:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = WFWorkflowController;
    [(WFWorkflowController *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)dealloc
{
  workflowRunAssertion = [(WFWorkflowController *)self workflowRunAssertion];
  [workflowRunAssertion invalidateWithError:0];

  currentActionProgress = [(WFWorkflowController *)self currentActionProgress];
  [currentActionProgress removeObserver:self forKeyPath:@"fractionCompleted" context:WFCurrentActionFractionCompletedContext];

  [(WFWorkflowController *)self tearDownNotificationObservers];
  v5.receiver = self;
  v5.super_class = WFWorkflowController;
  [(WFWorkflowController *)&v5 dealloc];
}

@end