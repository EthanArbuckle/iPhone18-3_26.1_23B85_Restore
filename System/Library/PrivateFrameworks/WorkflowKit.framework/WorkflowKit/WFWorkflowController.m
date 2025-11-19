@interface WFWorkflowController
- (BOOL)action:(id)a3 canProvideInputForParameter:(id)a4;
- (BOOL)isRunningFromSpotlight;
- (BOOL)isTesting;
- (BOOL)runningAsStepWiseExecutor;
- (BOOL)setContent:(id)a3 forVariableWithName:(id)a4;
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
- (id)actionReversalStateForAction:(id)a3;
- (id)contentForPrivateVariableKey:(id)a3;
- (id)contentForVariableWithName:(id)a3;
- (id)currentStateWithContext:(id)a3;
- (id)environmentValueForKey:(id)a3;
- (id)errorByAddingActionIndex:(int64_t)a3 toError:(id)a4;
- (id)parameterInputProviderForAction:(id)a3;
- (id)remoteDialogPresenterEndpointForRunWorkflowAction:(id)a3;
- (id)stateWithActionIndex:(unint64_t)a3 input:(id)a4 processedParameters:(id)a5;
- (id)userInterface;
- (void)_finishStepWithError:(id)a3;
- (void)_run;
- (void)_step;
- (void)acquireAssertionIfNeeded;
- (void)action:(id)a3 didGenerateReversalState:(id)a4;
- (void)action:(id)a3 handleTestingEvent:(id)a4 completionHandler:(id)a5;
- (void)action:(id)a3 provideInputForParameters:(id)a4 withDefaultStates:(id)a5 prompts:(id)a6 completionHandler:(id)a7;
- (void)autoreleaseSelf;
- (void)captureFileRepresentation:(id)a3;
- (void)dealloc;
- (void)dialogTransformerWillDisplayDialog:(id)a3;
- (void)didFinishRunningWithError:(id)a3 cancelled:(BOOL)a4;
- (void)didRunAction:(id)a3 error:(id)a4 withCompletion:(id)a5;
- (void)handleControlFlowActionCompletion:(id)a3 actionGroupSkipped:(BOOL)a4;
- (void)handleError:(id)a3 fromAction:(id)a4 completionHandler:(id)a5;
- (void)invalidateAssertionIfNeeded;
- (void)noInputBehavior:(id)a3 wantsToRunAction:(id)a4 completionHandler:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareToRunAction:(id)a3 withInput:(id)a4 completionHandler:(id)a5;
- (void)publishActionProgress;
- (void)publishRunningState:(int64_t)a3;
- (void)queue_reset;
- (void)queue_setWorkflow:(id)a3;
- (void)queue_stopWithError:(id)a3;
- (void)requestAccessToFileAtLocations:(id)a3 completionHandler:(id)a4;
- (void)requestAccessToFileAtURLs:(id)a3 completionHandler:(id)a4;
- (void)reset;
- (void)resetEvaluationCriteriaForControlFlowActions;
- (void)resolveWorkflowInputWithCompletion:(id)a3;
- (void)restorePendingStateIfNecessary;
- (void)run;
- (void)runAction:(id)a3 withInput:(id)a4 completionHandler:(id)a5;
- (void)setContent:(id)a3 forPrivateVariableKey:(id)a4;
- (void)setCurrentActionProgress:(id)a3;
- (void)setEnvironmentValue:(id)a3 forKey:(id)a4;
- (void)setUpProgress;
- (void)setUpRunState;
- (void)setWorkflow:(id)a3;
- (void)step;
- (void)stop;
- (void)stopShortcutNotificationReceived:(id)a3;
- (void)stopWithError:(id)a3;
- (void)workflowControllerWillRun:(id)a3;
@end

@implementation WFWorkflowController

- (WFWorkflowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)userInterface
{
  v3 = [(WFWorkflowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFWorkflowController *)self delegate];
    v6 = [v5 userInterfaceForWorkflowController:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WFAction)currentAction
{
  v3 = [(WFWorkflowController *)self currentIndex];
  v4 = [(WFWorkflowController *)self workflow];
  v5 = [v4 actions];

  if (-[WFWorkflowController isRunning](self, "isRunning") && v3 < [v5 count])
  {
    v6 = [v5 objectAtIndex:v3];
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
  v3 = [(WFWorkflowController *)self workflowRunAssertion];

  if (v3)
  {
    v4 = [(WFWorkflowController *)self workflowRunAssertion];
    v9 = 0;
    v5 = [v4 invalidateWithError:&v9];
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
  v3 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(v3);

  if (![(WFWorkflowController *)self isStepping])
  {
    v5 = [(WFWorkflowController *)self workflow];
    v6 = [v5 actions];
    if (![v6 count] && -[WFWorkflowController runningAsStepWiseExecutor](self, "runningAsStepWiseExecutor"))
    {
      v7 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v38 = "[WFWorkflowController _step]";
        v39 = 2048;
        v40 = [(WFWorkflowController *)self currentIndex];
        v41 = 2048;
        v42 = [v6 count];
        v8 = "%s Step-wise executor: no actions yet (ci: %lu, actions count: %lu), ending step";
LABEL_20:
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0x20u);
        goto LABEL_40;
      }

      goto LABEL_40;
    }

    v9 = [(WFWorkflowController *)self currentIndex];
    v10 = [(WFWorkflowController *)self currentIndex];
    if (v9)
    {
      if (v10 >= [v6 count])
      {
        if (![(WFWorkflowController *)self runningAsStepWiseExecutor])
        {
          if (([(WFWorkflowController *)self outputBehavior]& 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v30 = [v6 lastObject];
            v31 = [v30 output];
            [(WFWorkflowController *)self setOutput:v31];

            v32 = [(WFWorkflowController *)self contentItemCache];
            v33 = [(WFWorkflowController *)self output];
            [v32 addContentCollection:v33];
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
          v40 = [(WFWorkflowController *)self currentIndex];
          v41 = 2048;
          v42 = [v6 count];
          v8 = "%s Step-wise executor: nowhere to step, holding (ci: %lu, actions count: %lu)";
          goto LABEL_20;
        }

LABEL_40:

        goto LABEL_41;
      }

      v11 = [v6 objectAtIndex:{-[WFWorkflowController currentIndex](self, "currentIndex")}];
      v12 = [v6 objectAtIndex:{-[WFWorkflowController currentIndex](self, "currentIndex") - 1}];
      if ([MEMORY[0x1E695E000] forceSpotlightImplicitResult] && -[WFWorkflowController isRunningFromSpotlight](self, "isRunningFromSpotlight") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v9 = [v12 output];
      }

      else
      {
        v9 = 0;
      }

      if ([v11 usesLegacyInputBehavior])
      {
        v13 = [(WFWorkflowController *)self workflow];
        v14 = [v11 legacyBehaviorIgnoresOutputFromAction:v12 inWorkflow:v13];

        if ((v14 & 1) == 0)
        {
          v15 = [v12 output];

          v9 = v15;
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v12 mode])
      {
        [v12 resetOutput];
      }

      v16 = [(WFWorkflowController *)self contentItemCache];
      v17 = [v12 output];
      [v16 addContentCollection:v17];
    }

    else
    {
      v11 = [v6 objectAtIndex:v10];
    }

    v18 = [(WFWorkflowController *)self input];

    if (v18)
    {
      v19 = [(WFWorkflowController *)self workflow];
      v20 = [v19 actionTree];
      v21 = [v20 isShortcutInputVariableUsed];

      if (v21)
      {
        v22 = [(WFWorkflowController *)self input];
        [(WFWorkflowController *)self setContent:v22 forVariableWithName:@"FB539828-643B-41E5-BA20-9C1717057230-workflowinput"];
      }

      if ([v11 usesLegacyInputBehavior])
      {
        v23 = [(WFWorkflowController *)self input];

        v9 = v23;
      }

      [(WFWorkflowController *)self setInput:0];
    }

    v24 = [(WFWorkflowController *)self pendingActionInput];

    if (v24)
    {
      v25 = [(WFWorkflowController *)self pendingActionInput];

      [(WFWorkflowController *)self setPendingActionInput:0];
      v9 = v25;
    }

    v26 = [(WFWorkflowController *)self pendingProcessedParameters];

    if (v26)
    {
      v27 = [(WFWorkflowController *)self pendingProcessedParameters];
      [v11 setProcessedParameters:v27];

      [(WFWorkflowController *)self setPendingProcessedParameters:0];
    }

    [(WFWorkflowController *)self setStepping:1];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __29__WFWorkflowController__step__block_invoke;
    v34[3] = &unk_1E837C1E8;
    v34[4] = self;
    v35 = v11;
    v36 = v9;
    v28 = v9;
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

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:37 userInfo:0];
  [(WFWorkflowController *)self _finishStepWithError:v5];
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
  v3 = [(WFWorkflowController *)self workflow];
  v4 = [v3 actions];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
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
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setUpProgress
{
  objc_initWeak(&location, self);
  v3 = [(WFWorkflowController *)self runningContext];
  v4 = [(WFWorkflowController *)self workflow];
  v5 = [v4 actions];
  v6 = WFProgressUnitsBetweenActions(v5, 0, 0);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __37__WFWorkflowController_setUpProgress__block_invoke;
  v11 = &unk_1E837B8F8;
  objc_copyWeak(&v12, &location);
  v7 = [v3 progressForPublishingWithTotalUnitCount:v6 cancellationHandler:&v8];
  [(WFWorkflowController *)self setProgress:v7, v8, v9, v10, v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)setUpRunState
{
  v3 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(v3);

  [(WFWorkflowController *)self registerForNotifications];
  [(WFWorkflowController *)self logStartEvent];
  [(WFWorkflowController *)self setUpProgress];
  v4 = [(WFWorkflowController *)self currentIndex]- 1;
  if (v4 >= 0)
  {
    v5 = [(WFWorkflowController *)self workflow];
    v6 = [v5 actions];
    v7 = [v6 count];

    if (v4 < v7)
    {
      v8 = [(WFWorkflowController *)self workflow];
      v9 = [v8 actions];
      v10 = [v9 objectAtIndexedSubscript:v4];

      v11 = [(WFWorkflowController *)self workflow];
      v12 = [v11 actions];
      v13 = WFProgressUnitsBetweenActions(v12, 0, v10);
      v14 = [(WFWorkflowController *)self progress];
      [v14 setCompletedUnitCount:v13];
    }
  }

  [(WFWorkflowController *)self setRunning:1];
  [(WFWorkflowController *)self publishRunningState:1];
  v15 = [(WFWorkflowController *)self startDate];

  if (!v15)
  {
    v16 = [MEMORY[0x1E695DF00] date];
    [(WFWorkflowController *)self setStartDate:v16];
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
      v5 = [(WFWorkflowController *)self workflow];
      v6 = [v5 workflowID];
      v7 = [v4 initWithWorkflowIdentifier:v6];

      v8 = [(WFWorkflowController *)self runSource];
      [v7 setRunSource:v8];

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
  v3 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(WFWorkflowController *)self workflow];
    *buf = 136315394;
    v22 = "[WFWorkflowController _run]";
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s Starting workflow execution: %@", buf, 0x16u);
  }

  v6 = [(WFWorkflowController *)self workflow];
  if ([v6 disabledOnLockScreen])
  {
    v7 = +[WFCompactUnlockService isDeviceLocked];

    if (v7)
    {
      v8 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(WFWorkflowController *)self workflow];
        *buf = 136315394;
        v22 = "[WFWorkflowController _run]";
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Cancelling workflow execution because the device is locked and this workflow is disabled on the lock screen: %@", buf, 0x16u);
      }

      v10 = +[WFSmartPromptState localizedUnlockedDeviceRequiredError];
      v11 = self;
      v12 = v10;
      goto LABEL_18;
    }
  }

  else
  {
  }

  v10 = [MEMORY[0x1E699FAF8] configurationForContinuityDisplay];
  [v10 setNeedsUserInteractivePriority:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __28__WFWorkflowController__run__block_invoke;
  v20[3] = &unk_1E837F8C0;
  v20[4] = self;
  [v10 setTransitionHandler:v20];
  v13 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:v10];
  [(WFWorkflowController *)self setDisplayLayoutMonitor:v13];

  [(WFWorkflowController *)self restorePendingStateIfNecessary];
  v14 = [(WFWorkflowController *)self workflow];
  if ([v14 hasActions])
  {
  }

  else
  {
    v15 = [(WFWorkflowController *)self runningAsStepWiseExecutor];

    if (!v15)
    {
      v11 = self;
      v12 = 0;
LABEL_18:
      [(WFWorkflowController *)v11 didFinishRunningWithError:v12 cancelled:0];
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
      v17 = [(WFWorkflowController *)self workflow];
      *buf = 136315394;
      v22 = "[WFWorkflowController _run]";
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_INFO, "%s Workflow is already running, returning early: %@", buf, 0x16u);
    }
  }

LABEL_19:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)queue_reset
{
  v3 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(v3);

  [(WFWorkflowController *)self queue_stopWithError:0];
  v4 = [(WFWorkflowController *)self workflow];
  v5 = [v4 actions];
  [v5 makeObjectsPerformSelector:sel_resetOutput];

  [(WFWorkflowController *)self setOutput:0];
  [(WFWorkflowController *)self setLastExecutedAction:0];
  v6 = [(WFWorkflowController *)self variableTable];
  [v6 removeAllObjects];

  v7 = [(WFWorkflowController *)self actionOutputsByWorkflowIndex];
  [v7 removeAllObjects];

  v8 = [(WFWorkflowController *)self environmentValueTable];
  [v8 removeAllObjects];

  v9 = [(WFWorkflowController *)self contentItemCache];
  [v9 clear];
}

- (void)acquireAssertionIfNeeded
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(WFWorkflowController *)self acquiresAssertionWhileRunning])
  {
    v3 = [(WFWorkflowController *)self workflowRunAssertion];

    if (!v3)
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
      v9 = [v7 currentProcess];
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
      v14 = [v6 initWithExplanation:@"Running shortcuts in background" target:v9 attributes:v13];
      [(WFWorkflowController *)self setWorkflowRunAssertion:v14];

      v15 = [(WFWorkflowController *)self workflowRunAssertion];
      v20 = 0;
      v16 = [v15 acquireWithError:&v20];
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
    v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v5 = self->_environmentValueTable;
    self->_environmentValueTable = v4;

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
    v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v5 = self->_variableTable;
    self->_variableTable = v4;

    variableTable = self->_variableTable;
  }

  return variableTable;
}

- (void)run
{
  v3 = voucher_copy();
  [(WFWorkflowController *)self setExecutionVoucher:v3];

  v4 = [(WFWorkflowController *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__WFWorkflowController_run__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(v4, block);
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
  v2 = [(WFWorkflowController *)self runningContext];
  v3 = [v2 isStepwise];

  return v3;
}

- (void)restorePendingStateIfNecessary
{
  v3 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(WFWorkflowController *)self pendingState];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 variables];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __54__WFWorkflowController_restorePendingStateIfNecessary__block_invoke;
    v30[3] = &unk_1E8377C90;
    v30[4] = self;
    [v6 enumerateKeysAndObjectsUsingBlock:v30];

    v7 = [v5 currentInput];
    [(WFWorkflowController *)self setPendingActionInput:v7];

    -[WFWorkflowController setCurrentIndex:](self, "setCurrentIndex:", [v5 currentActionIndex]);
    v8 = [v5 currentProcessedParameters];
    [(WFWorkflowController *)self setPendingProcessedParameters:v8];

    -[WFWorkflowController setOutputBehavior:](self, "setOutputBehavior:", [v5 outputBehavior]);
    v9 = [v5 runningContext];

    if (v9)
    {
      v10 = [(WFWorkflowController *)self runningContext];
      v11 = [v10 originatingBundleIdentifier];

      v12 = [v5 runningContext];
      [v12 setOriginatingBundleIdentifier:v11];

      v13 = [v5 runningContext];
      [(WFWorkflowController *)self setRunningContext:v13];
    }

    v14 = [v5 contentItemCache];
    [(WFWorkflowController *)self setContentItemCache:v14];

    v15 = [v5 flowTracker];
    [(WFWorkflowController *)self setFlowTracker:v15];

    v16 = [v5 currentActionIndex];
    v17 = [(WFWorkflowController *)self workflow];
    v18 = [v17 actions];
    v19 = [v18 count];

    if (v16 < v19)
    {
      v20 = [(WFWorkflowController *)self workflow];
      v21 = [v20 actions];
      v22 = [v21 objectAtIndex:{objc_msgSend(v5, "currentActionIndex")}];

      v23 = [v5 currentActionContentAttributionTracker];
      [v22 setContentAttributionTracker:v23];

      v24 = [v5 allowedOnceSmartPromptStates];
      [v22 setAllowedOnceSmartPromptStates:v24];
    }

    v25 = [v5 startDate];
    [(WFWorkflowController *)self setStartDate:v25];

    [(WFWorkflowController *)self setResumed:1];
    [(WFWorkflowController *)self setPendingState:0];
    v26 = [(WFWorkflowController *)self userInterface];
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      v28 = [(WFWorkflowController *)self userInterface];
      v29 = [v28 dialogTransformer];

      if (v29)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v29 setNumberOfDialogsPresented:{objc_msgSend(v5, "numberOfDialogsPresented")}];
        }
      }
    }
  }
}

- (void)dialogTransformerWillDisplayDialog:(id)a3
{
  v4 = [(WFWorkflowController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFWorkflowController *)self delegate];
    [v6 workflowControllerWillDisplayDialog];
  }

  [(WFWorkflowController *)self publishRunningState:2];
}

- (void)noInputBehavior:(id)a3 wantsToRunAction:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__WFWorkflowController_noInputBehavior_wantsToRunAction_completionHandler___block_invoke;
  v11[3] = &unk_1E837ECE0;
  v12 = v7;
  v13 = self;
  v14 = v8;
  v9 = v8;
  v10 = v7;
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

- (void)resolveWorkflowInputWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFWorkflowController.m" lineNumber:1430 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];
  }

  v6 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(WFWorkflowController *)self input];
  v8 = [v7 numberOfItems];

  if (v8 < 1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__WFWorkflowController_resolveWorkflowInputWithCompletion___block_invoke;
    aBlock[3] = &unk_1E837E1F8;
    aBlock[4] = self;
    v10 = v5;
    v26 = v10;
    v11 = _Block_copy(aBlock);
    v12 = [(WFWorkflowController *)self workflow];
    v13 = [v12 workflowTypes];
    v14 = [v13 containsObject:*MEMORY[0x1E69E1450]];

    if (v14)
    {
      v15 = [(WFWorkflowController *)self workflow];
      v16 = [v15 inputClasses];

      v17 = objc_alloc_init(MEMORY[0x1E69E0C08]);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __59__WFWorkflowController_resolveWorkflowInputWithCompletion___block_invoke_4;
      v20[3] = &unk_1E8377D08;
      v21 = v16;
      v22 = self;
      v23 = v10;
      v24 = v11;
      v18 = v16;
      [v17 getOnScreenContentForInputContentClasses:v18 completionHandler:v20];
    }

    else
    {
      v11[2](v11);
    }
  }

  else
  {
    v9 = [(WFWorkflowController *)self input];
    (*(v5 + 2))(v5, v9, 0);
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

- (id)errorByAddingActionIndex:(int64_t)a3 toError:(id)a4
{
  v5 = a4;
  v6 = [v5 userInfo];
  v7 = [v6 mutableCopy];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v7 setObject:v8 forKeyedSubscript:@"WFActionIndex"];

  v9 = MEMORY[0x1E696ABC0];
  v10 = [v5 domain];
  v11 = [v5 code];

  v12 = [v9 errorWithDomain:v10 code:v11 userInfo:v7];

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

- (void)handleControlFlowActionCompletion:(id)a3 actionGroupSkipped:(BOOL)a4
{
  v4 = a4;
  v84[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(v7);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v8 groupedOpenAction];
    v10 = [v8 groupedCloseAction];
    v11 = [(WFWorkflowController *)self workflow];
    v12 = [v11 actions];
    v13 = WFProgressUnitsBetweenActions(v12, v9, v10);
    v14 = [v9 numberOfLoops] * v13;
    v15 = [v9 progress];
    [v15 setTotalUnitCount:v14];

    if ([v8 mode] != 2 && !v4)
    {
      goto LABEL_34;
    }

    if (v4)
    {
      v16 = objc_opt_new();
      [v10 setOutput:v16 onVariableSource:self];
    }

    if (![v9 shouldRepeatWithVariableSource:self])
    {
      [v9 resetEvaluationCriteriaWithVariableSource:self];
      [v9 setProgress:0];
LABEL_34:

LABEL_35:
LABEL_44:

      goto LABEL_45;
    }

    v80 = [v9 progress];
    v17 = [(WFWorkflowController *)self workflow];
    v18 = [v17 actions];
    v19 = [v18 indexOfObject:v9];

    if (v19 < [(WFWorkflowController *)self currentIndex]- 1)
    {
      v20 = v19;
      do
      {
        v21 = [(WFWorkflowController *)self workflow];
        v22 = [v21 actions];
        v23 = [v22 objectAtIndexedSubscript:v20];
        [v23 resetOutput];

        ++v20;
      }

      while (v20 < [(WFWorkflowController *)self currentIndex]- 1);
    }

    v24 = v80;
    [v9 setProgress:v80];
    [(WFWorkflowController *)self setCurrentIndex:v19];
LABEL_33:

    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v25 = [v8 groupedOpenAction];
    v26 = [v8 groupedIntermediaryActions];
    v27 = [v26 firstObject];

    v28 = [v8 groupedCloseAction];
    if ([v8 mode] && objc_msgSend(v8, "mode") != 1)
    {
      if ([v8 mode] == 2 || v4)
      {
        [v25 resetEvaluationCriteriaWithVariableSource:self];
        [v25 setProgress:0];
      }

      goto LABEL_43;
    }

    v29 = [v25 truthWithVariableSource:self];
    if (_os_feature_enabled_impl())
    {
      v30 = MEMORY[0x1E6996D40];
      v79 = v27;
      v31 = MEMORY[0x1E6996CC0];
      v75 = [MEMORY[0x1E696AD98] numberWithBool:v29];
      v32 = [v31 itemWithObject:v75];
      v84[0] = v32;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
      v33 = v78 = v28;
      v34 = [v30 collectionWithItems:v33];
      [(WFWorkflowController *)self actionOutputsByWorkflowIndex];
      v29 = v77 = v29;
      v81 = v25;
      v35 = MEMORY[0x1E696AD98];
      v36 = [(WFWorkflowController *)self workflow];
      v37 = [v36 actions];
      v38 = [v35 numberWithUnsignedInteger:{objc_msgSend(v37, "indexOfObject:", v81)}];
      [v29 setObject:v34 forKeyedSubscript:v38];

      v25 = v81;
      LODWORD(v29) = v77;

      v28 = v78;
      v27 = v79;

      if (v79)
      {
        v39 = MEMORY[0x1E6996D40];
        v40 = MEMORY[0x1E6996CC0];
        v76 = [MEMORY[0x1E696AD98] numberWithBool:v77 ^ 1u];
        v41 = [v40 itemWithObject:v76];
        v83 = v41;
        v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
        v43 = [v39 collectionWithItems:v42];
        v44 = [(WFWorkflowController *)self actionOutputsByWorkflowIndex];
        v45 = MEMORY[0x1E696AD98];
        v29 = [(WFWorkflowController *)self workflow];
        v46 = [v29 actions];
        v47 = [v45 numberWithUnsignedInteger:{objc_msgSend(v46, "indexOfObject:", v79)}];
        [v44 setObject:v43 forKeyedSubscript:v47];

        v25 = v81;
        LODWORD(v29) = v77;

        v28 = v78;
        v27 = v79;
      }
    }

    if (([v8 mode] != 0) | v29 & 1)
    {
      if ((([v8 mode] == 1) & v29) != 1)
      {
LABEL_39:
        v67 = [(WFWorkflowController *)self workflow];
        v68 = [v67 actions];
        v69 = v68;
        if (v29)
        {
          v70 = v25;
          v71 = v27;
        }

        else
        {
          v70 = v27;
          v71 = v28;
        }

        v72 = WFProgressUnitsBetweenActions(v68, v70, v71);
        v73 = [v25 progress];
        [v73 setTotalUnitCount:v72];

LABEL_43:
        goto LABEL_44;
      }

      v48 = [v8 output];
      [v28 setOutput:v48];
    }

    else
    {
      v59 = [v8 output];
      if (v27)
      {
        [v27 setOutput:v59];

        v60 = [(WFWorkflowController *)self workflow];
        v61 = [v60 actions];
        v62 = [v61 indexOfObject:v27] + 1;
LABEL_38:
        [(WFWorkflowController *)self setCurrentIndex:v62];

        goto LABEL_39;
      }

      [v28 setOutput:v59];
    }

    v60 = [(WFWorkflowController *)self workflow];
    v61 = [v60 actions];
    v62 = [v61 indexOfObject:v28];
    goto LABEL_38;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v8 groupedOpenAction];
    if ([v8 mode] && objc_msgSend(v8, "mode") != 1)
    {
      goto LABEL_35;
    }

    if ([v8 latestMenuChoice] == -1)
    {
      v10 = [v8 groupedCloseAction];
      v63 = [v8 output];
      [v10 setOutput:v63];

      v64 = [v9 progress];
      v65 = [v64 totalUnitCount];
      v66 = [v9 progress];
      [v66 setCompletedUnitCount:v65];

      v24 = [(WFWorkflowController *)self workflow];
      v51 = [v24 actions];
      -[WFWorkflowController setCurrentIndex:](self, "setCurrentIndex:", [v51 indexOfObject:v10]);
    }

    else
    {
      v49 = [(WFWorkflowController *)self workflow];
      v10 = [v49 actionsGroupedWithAction:v8];

      v50 = [v8 groupedIntermediaryActions];
      v24 = [v50 objectAtIndex:{objc_msgSend(v8, "latestMenuChoice")}];

      v51 = [v10 objectAtIndex:{objc_msgSend(v10, "indexOfObject:", v24) + 1}];
      v52 = [(WFWorkflowController *)self workflow];
      v53 = [v52 actions];
      v54 = WFProgressUnitsBetweenActions(v53, v24, v51);
      [v9 progress];
      v55 = v82 = v9;
      [v55 setTotalUnitCount:v54];

      v56 = [v8 output];
      [v24 setOutput:v56];

      v57 = [(WFWorkflowController *)self workflow];
      v58 = [v57 actions];
      -[WFWorkflowController setCurrentIndex:](self, "setCurrentIndex:", [v58 indexOfObject:v24] + 1);

      v9 = v82;
    }

    goto LABEL_33;
  }

LABEL_45:

  v74 = *MEMORY[0x1E69E9840];
}

- (void)handleError:(id)a3 fromAction:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"WFWorkflowController.m" lineNumber:1171 description:{@"Invalid parameter not satisfying: %@", @"error"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v44 = [MEMORY[0x1E696AAA8] currentHandler];
  [v44 handleFailureInMethod:a2 object:self file:@"WFWorkflowController.m" lineNumber:1172 description:{@"Invalid parameter not satisfying: %@", @"action"}];

LABEL_3:
  v12 = [v9 domain];
  v13 = [v9 code];
  v14 = [v12 isEqualToString:@"WFActionErrorDomain"];
  v15 = [v12 isEqualToString:*MEMORY[0x1E6997158]];
  if (v13 == 2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v14 && v13 == 4)
  {
    v17 = [(WFWorkflowController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke;
    block[3] = &unk_1E837F870;
    block[4] = self;
    v18 = v10;
    v56 = v18;
    dispatch_async(v17, block);

    v19 = [(WFWorkflowController *)self outputBehavior];
    if (v19 <= 3 && v19 != 1)
    {
      v20 = [v18 output];
      [(WFWorkflowController *)self setOutput:v20];
    }

    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:7 userInfo:0];

    v11[2](v11, v21);
    v9 = v21;
  }

  else
  {
    if (v13)
    {
      v22 = 0;
    }

    else
    {
      v22 = v15;
    }

    if (v22 == 1 && ([(WFWorkflowController *)self delegate], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_opt_respondsToSelector(), v23, (v24 & 1) != 0))
    {
      v25 = [v9 userInfo];
      v26 = [v25 objectForKey:@"ActionInput"];

      v27 = [v9 userInfo];
      v28 = [v27 objectForKey:@"ActionProcessedParameters"];

      v29 = [(WFWorkflowController *)self workflow];
      v30 = [v29 actions];
      v31 = -[WFWorkflowController stateWithActionIndex:input:processedParameters:](self, "stateWithActionIndex:input:processedParameters:", [v30 indexOfObject:v10], v26, v28);

      v32 = [(WFWorkflowController *)self delegateQueue];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke_2;
      v50[3] = &unk_1E837CAF0;
      v50[4] = self;
      v51 = v10;
      v52 = v31;
      v54 = v11;
      v9 = v9;
      v53 = v9;
      v33 = v31;
      dispatch_async(v32, v50);

      v34 = v51;
    }

    else
    {
      if (!v16 || ([(WFWorkflowController *)self delegate], v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_opt_respondsToSelector(), v35, (v36 & 1) == 0))
      {
        v11[2](v11, v9);
        goto LABEL_23;
      }

      v37 = [v9 userInfo];
      v26 = [v37 objectForKey:@"ActionInput"];

      v38 = [v9 userInfo];
      v28 = [v38 objectForKey:@"ActionProcessedParameters"];

      v39 = [(WFWorkflowController *)self workflow];
      v40 = [v39 actions];
      v41 = -[WFWorkflowController stateWithActionIndex:input:processedParameters:](self, "stateWithActionIndex:input:processedParameters:", [v40 indexOfObject:v10], v26, v28);

      v42 = [(WFWorkflowController *)self delegateQueue];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __65__WFWorkflowController_handleError_fromAction_completionHandler___block_invoke_6;
      v45[3] = &unk_1E837CAF0;
      v45[4] = self;
      v46 = v10;
      v47 = v41;
      v49 = v11;
      v9 = v9;
      v48 = v9;
      v33 = v41;
      dispatch_async(v42, v45);

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

- (id)parameterInputProviderForAction:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFWorkflowController *)self delegate];
    v8 = [v7 workflowController:self parameterInputProviderForAction:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)didRunAction:(id)a3 error:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(WFWorkflowController *)self userInterface];
  v13 = v12;
  if (v12 && [v12 isRunningWithSiriUI])
  {
    v14 = [v8 identifier];
    [v13 didFinishActionWithIdentifier:v14];
  }

  v15 = [(WFWorkflowController *)self delegateQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__WFWorkflowController_didRunAction_error_withCompletion___block_invoke;
  v19[3] = &unk_1E837F510;
  v19[4] = self;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  dispatch_async(v15, v19);
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

- (void)runAction:(id)a3 withInput:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(WFWorkflowController *)self userInterface];
  v13 = v12;
  if (v12 && [v12 isRunningWithSiriUI])
  {
    v14 = [v8 identifier];
    [v13 didStartActionWithIdentifier:v14];
  }

  v15 = [(WFWorkflowController *)self userInterface];
  v16 = [(WFWorkflowController *)self executionQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__WFWorkflowController_runAction_withInput_completionHandler___block_invoke;
  v18[3] = &unk_1E837DAB0;
  v18[4] = self;
  v19 = v9;
  v17 = v9;
  [v8 runWithInput:v10 userInterface:v15 runningDelegate:self variableSource:self workQueue:v16 completionHandler:v18];
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

- (void)prepareToRunAction:(id)a3 withInput:(id)a4 completionHandler:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(v11);

  v12 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[WFWorkflowController prepareToRunAction:withInput:completionHandler:]";
    v23 = 2114;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s Preparing to run action: %{public}@, with input: %@", buf, 0x20u);
  }

  v13 = [(WFWorkflowController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(WFWorkflowController *)self delegateQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__WFWorkflowController_prepareToRunAction_withInput_completionHandler___block_invoke;
    v17[3] = &unk_1E837F510;
    v17[4] = self;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    dispatch_async(v15, v17);
  }

  else
  {
    v10[2](v10);
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

- (void)didFinishRunningWithError:(id)a3 cancelled:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(v8);

  if (v7 && v4)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"WFWorkflowController.m" lineNumber:1075 description:@"Clients of WFWorkflowController should never receive both cancelled = YES and an error; they are mutually exclusive"];
  }

  v9 = [(WFWorkflowController *)self displayLayoutMonitor];
  [v9 invalidate];

  [(WFWorkflowController *)self setDisplayLayoutMonitor:0];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [(WFWorkflowController *)self workflow];
  v11 = [v10 actions];

  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = [v16 extendedOperation];

        if (v17)
        {
          v18 = [v16 extendedOperation];
          [v18 cancel];

          [v16 setExtendedOperation:0];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  [(WFWorkflowController *)self setResumed:0];
  [(WFWorkflowController *)self autoreleaseSelf];
  v19 = [(WFWorkflowController *)self delegateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WFWorkflowController_didFinishRunningWithError_cancelled___block_invoke;
  block[3] = &unk_1E8377C58;
  block[4] = self;
  v24 = v7;
  v25 = v4;
  v20 = v7;
  dispatch_async(v19, block);

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

- (void)workflowControllerWillRun:(id)a3
{
  v4 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(v4);

  [(WFWorkflowController *)self retainSelf];
  [(WFWorkflowController *)self acquireAssertionIfNeeded];
  v5 = [(WFWorkflowController *)self delegateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WFWorkflowController_workflowControllerWillRun___block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_sync(v5, block);
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

- (void)stopShortcutNotificationReceived:(id)a3
{
  v4 = [a3 object];
  v5 = [(WFWorkflowController *)self runningContext];
  v6 = [v5 identifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [(WFWorkflowController *)self runningContext];
    v9 = [v8 isStepwise];

    if (v9)
    {
      v10 = [(WFWorkflowController *)self currentAction];
      v11 = [v10 isRunning];

      if (v11)
      {
        v12 = [(WFWorkflowController *)self currentAction];
        [v12 cancel];
      }
    }

    else
    {

      [(WFWorkflowController *)self stop];
    }
  }
}

- (BOOL)action:(id)a3 canProvideInputForParameter:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFWorkflowController *)self parameterInputProviderForAction:v7];
  v9 = [v8 action:v7 canProvideInputForParameter:v6];

  return v9;
}

- (void)action:(id)a3 provideInputForParameters:(id)a4 withDefaultStates:(id)a5 prompts:(id)a6 completionHandler:(id)a7
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(WFWorkflowController *)self parameterInputProviderForAction:v12];
  if (v17)
  {
    v18 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = 136315394;
      v21 = "[WFWorkflowController action:provideInputForParameters:withDefaultStates:prompts:completionHandler:]";
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_INFO, "%s Asking input provider to provide input for parameters: %{public}@", &v20, 0x16u);
    }

    [v17 action:v12 provideInputForParameters:v13 withDefaultStates:v14 prompts:v15 completionHandler:v16];
  }

  else
  {
    (*(v16 + 2))(v16, 0, 0, 0);
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

- (void)action:(id)a3 handleTestingEvent:(id)a4 completionHandler:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(WFWorkflowController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(WFWorkflowController *)self delegate];
    [v10 workflowController:self handleTestingEvent:v11 completionHandler:v7];
  }

  else
  {
    v7[2](v7, 1, 0);
  }
}

- (BOOL)isTesting
{
  v3 = [(WFWorkflowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(WFWorkflowController *)self delegate];
  v6 = [v5 workflowControllerIsTesting:self];

  return v6;
}

- (void)action:(id)a3 didGenerateReversalState:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(WFWorkflowController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(WFWorkflowController *)self delegate];
    [v9 workflowController:self didGenerateReversalState:v6 forAction:v10];
  }
}

- (id)actionReversalStateForAction:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFWorkflowController *)self delegate];
    v8 = [v7 workflowController:self actionReversalStateForAction:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)remoteDialogPresenterEndpointForRunWorkflowAction:(id)a3
{
  v4 = [(WFWorkflowController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFWorkflowController *)self delegate];
    v7 = [v6 remoteDialogPresenterEndpointForController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setEnvironmentValue:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(WFWorkflowController *)self environmentValueTable];
  v8 = v7;
  if (v9)
  {
    [v7 setObject:v9 forKey:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
  }
}

- (id)environmentValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowController *)self environmentValueTable];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)requestAccessToFileAtURLs:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v14 = [(WFWorkflowController *)self userInterface];
  v8 = [(WFWorkflowController *)self workflow];
  v9 = [v8 name];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F4A1C408;
  }

  v12 = [(WFWorkflowController *)self workflow];
  v13 = [v12 workflowID];
  [v14 requestFileAccessForURLs:v7 workflowName:v11 workflowID:v13 completionHandler:v6];
}

- (void)requestAccessToFileAtLocations:(id)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = getWFFilesLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[WFWorkflowController requestAccessToFileAtLocations:completionHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
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
  v9 = [v6 if_compactMap:v13];
  if ([v9 count])
  {
    [(WFWorkflowController *)self requestAccessToFileAtURLs:v9 completionHandler:v7];
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

    (*(v7 + 2))(v7, 0, 0);
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

- (void)captureFileRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowController *)self capturedFiles];
  [v5 addFile:v4];
}

- (id)contentForPrivateVariableKey:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowController *)self variableTable];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setContent:(id)a3 forPrivateVariableKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(WFWorkflowController *)self variableTable];
  v8 = v7;
  if (v9)
  {
    [v7 setObject:v9 forKey:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
  }
}

- (id)contentForVariableWithName:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"user-%@", a3];
  v5 = [(WFWorkflowController *)self variableTable];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (BOOL)setContent:(id)a3 forVariableWithName:(id)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"user-%@", a4];
  if (v6)
  {
    v8 = [(WFWorkflowController *)self flowTracker];
    v9 = [v8 contentCollectionByTaintingContentCollection:v6];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    v12 = v11;

    v13 = [(WFWorkflowController *)self variableTable];
    [v13 setObject:v12 forKey:v7];

    v14 = [(WFWorkflowController *)self contentItemCache];
    [v14 addContentCollection:v12];
  }

  else
  {
    v15 = [(WFWorkflowController *)self contentItemCache];
    v16 = [(WFWorkflowController *)self variableTable];
    v17 = [v16 objectForKey:v7];
    [v15 deleteContentCollection:v17];

    v12 = [(WFWorkflowController *)self variableTable];
    [v12 removeObjectForKey:v7];
  }

  return 1;
}

- (void)reset
{
  v3 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_not_V2(v3);

  v4 = [(WFWorkflowController *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__WFWorkflowController_reset__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)step
{
  v3 = [(WFWorkflowController *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__WFWorkflowController_step__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)queue_stopWithError:(id)a3
{
  v6 = a3;
  v4 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(v4);

  LODWORD(v4) = self->_running;
  [(WFWorkflowController *)self setFinishedRunningWithSuccess:0];
  if (v4 == 1)
  {
    v5 = [(WFWorkflowController *)self currentAction];
    if ([v5 isRunning])
    {
      if (v6)
      {
        [v5 finishRunningWithError:?];
      }

      else
      {
        [v5 cancel];
      }
    }

    else
    {
      [WFWorkflowController didFinishRunningWithError:"didFinishRunningWithError:cancelled:" cancelled:?];
    }
  }
}

- (void)stopWithError:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowController *)self executionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__WFWorkflowController_stopWithError___block_invoke;
  v7[3] = &unk_1E837F870;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)stop
{
  v3 = [(WFWorkflowController *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__WFWorkflowController_stop__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_finishStepWithError:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v3 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(WFWorkflowController *)self currentAction];
  [(WFWorkflowController *)self setLastExecutedAction:v4];

  v5 = [v25 domain];
  v6 = *MEMORY[0x1E696A798];
  if ([v5 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v7 = v25;
    v8 = [v25 code];

    if (v8 == 37)
    {
      goto LABEL_31;
    }
  }

  else
  {

    v7 = v25;
  }

  v9 = [v7 domain];
  if ([v9 isEqualToString:v6])
  {
    v10 = [v25 code];

    if (v10 == 7)
    {
      [(WFWorkflowController *)self setCurrentIndex:0];
      v11 = dispatch_group_create();
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v12 = [(WFWorkflowController *)self workflow];
      v13 = [v12 actions];

      v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v14)
      {
        v15 = *v32;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v31 + 1) + 8 * i);
            v18 = [v17 extendedOperation];

            if (v18)
            {
              dispatch_group_enter(v11);
              objc_initWeak(&location, v17);
              v19 = [v17 extendedOperation];
              v27[0] = MEMORY[0x1E69E9820];
              v27[1] = 3221225472;
              v27[2] = __45__WFWorkflowController__finishStepWithError___block_invoke;
              v27[3] = &unk_1E8377C00;
              objc_copyWeak(&v29, &location);
              v28 = v11;
              [v19 addCompletionHandlerIfRunning:v27];

              objc_destroyWeak(&v29);
              objc_destroyWeak(&location);
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v14);
      }

      v20 = [(WFWorkflowController *)self executionQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__WFWorkflowController__finishStepWithError___block_invoke_2;
      block[3] = &unk_1E837FA70;
      block[4] = self;
      dispatch_group_notify(v11, v20, block);

      goto LABEL_30;
    }
  }

  else
  {
  }

  v7 = v25;
  if ([v25 wf_isUserCancelledError])
  {
    [(WFWorkflowController *)self didFinishRunningWithError:0 cancelled:1];
    [(WFWorkflowController *)self setCurrentIndex:0];
    v21 = [(WFWorkflowController *)self progress];
LABEL_29:
    v22 = v21;
    [v21 unpublish];

    [(WFWorkflowController *)self setProgress:0];
LABEL_30:
    v7 = v25;
    goto LABEL_31;
  }

  if (v25)
  {
    if ([v25 wf_isUnsupportedUserInterfaceError])
    {
      [(WFWorkflowController *)self setFinishedRunningWithSuccess:0];
      [(WFWorkflowController *)self didFinishRunningWithError:v25 cancelled:0];
      v21 = [(WFWorkflowController *)self progress];
      goto LABEL_29;
    }

    if (![(WFWorkflowController *)self runningAsStepWiseExecutor])
    {
      [(WFWorkflowController *)self setFinishedRunningWithSuccess:0];
      [(WFWorkflowController *)self didFinishRunningWithError:v25 cancelled:0];
      [(WFWorkflowController *)self setCurrentIndex:0];
      v21 = [(WFWorkflowController *)self progress];
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

  v4 = [(WFWorkflowController *)self runSource];
  v5 = *MEMORY[0x1E69E1410];
  v6 = v4;
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

- (void)setCurrentActionProgress:(id)a3
{
  v4 = a3;
  [(NSProgress *)self->_currentActionProgress removeObserver:self forKeyPath:@"fractionCompleted" context:WFCurrentActionFractionCompletedContext];
  currentActionProgress = self->_currentActionProgress;
  self->_currentActionProgress = v4;
  v6 = v4;

  [(NSProgress *)self->_currentActionProgress addObserver:self forKeyPath:@"fractionCompleted" options:4 context:WFCurrentActionFractionCompletedContext];
}

- (void)publishActionProgress
{
  v15 = objc_opt_new();
  v3 = [(WFWorkflowController *)self currentActionProgress];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69E1330]];
  [v15 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69E1308]];

  v6 = [(WFWorkflowController *)self currentAction];
  LOBYTE(v4) = [v6 isProgressIndeterminate];

  if ((v4 & 1) == 0)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(WFWorkflowController *)self currentActionProgress];
    [v8 fractionCompleted];
    v9 = [v7 numberWithDouble:?];
    [v15 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69E1310]];

    v10 = [(WFWorkflowController *)self currentActionProgress];
    v11 = [v10 localizedDescription];
    [v15 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69E1320]];

    v12 = [(WFWorkflowController *)self currentActionProgress];
    v13 = [v12 localizedAdditionalDescription];
    [v15 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69E1318]];
  }

  v14 = [(WFWorkflowController *)self progress];
  [v14 setUserInfoObject:v15 forKey:*MEMORY[0x1E69E1328]];
}

- (void)publishRunningState:(int64_t)a3
{
  v5 = [(WFWorkflowController *)self progress];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setUserInfoObject:v4 forKey:*MEMORY[0x1E69E1338]];
}

- (id)currentStateWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowController *)self currentState];
  v6 = v5;
  if (v5)
  {
    v27 = v4;
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = [v5 runningContext];
    }

    v26 = v7;
    v21 = [WFWorkflowControllerState alloc];
    v20 = [v6 workflow];
    v25 = [v6 variables];
    v24 = [v6 currentActionIndex];
    v23 = [v6 currentInput];
    v22 = [v6 currentProcessedParameters];
    v19 = [v6 startDate];
    v18 = [v6 currentRunSource];
    v9 = [v6 numberOfDialogsPresented];
    v10 = [v6 outputBehavior];
    v17 = [v6 currentActionContentAttributionTracker];
    v16 = [v6 contentItemCache];
    v11 = [v6 flowTracker];
    v12 = [v6 allowedOnceSmartPromptStates];
    v13 = [v6 extensionResourceClasses];
    LOBYTE(v15) = [v6 shouldDisablePrivacyPrompts];
    v8 = [(WFWorkflowControllerState *)v21 initWithWorkflow:v20 variables:v25 currentActionIndex:v24 runningContext:v26 currentInput:v23 currentProcessedParameters:v22 startDate:v19 currentRunSource:v18 numberOfDialogsPresented:v9 outputBehavior:v10 contentAttributionTracker:v17 contentItemCache:v16 flowTracker:v11 allowedOnceSmartPromptStates:v12 extensionResourceClasses:v13 shouldDisablePrivacyPrompts:v15];

    v4 = v27;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)stateWithActionIndex:(unint64_t)a3 input:(id)a4 processedParameters:(id)a5
{
  v37 = a5;
  v36 = a4;
  v8 = [(WFWorkflowController *)self variableTable];
  v9 = [v8 copy];
  v38 = [v9 dictionaryRepresentation];

  v10 = [(WFWorkflowController *)self userInterface];
  LOBYTE(v9) = objc_opt_respondsToSelector();

  if (v9)
  {
    v11 = [(WFWorkflowController *)self userInterface];
    v12 = [v11 dialogTransformer];
    v33 = [v12 numberOfDialogsPresented];
  }

  else
  {
    v33 = 0;
  }

  v13 = MEMORY[0x1E695DFD8];
  v14 = [(WFWorkflowController *)self workflow];
  v15 = [v14 actions];
  v16 = [v15 if_flatMap:&__block_literal_global_27689];
  v41 = [v13 setWithArray:v16];

  v30 = [WFWorkflowControllerState alloc];
  v35 = [(WFWorkflowController *)self workflow];
  v40 = [v35 reference];
  v28 = [(WFWorkflowController *)self runningContext];
  v39 = [(WFWorkflowController *)self startDate];
  v26 = [(WFWorkflowController *)self runSource];
  v27 = [(WFWorkflowController *)self outputBehavior];
  v32 = [(WFWorkflowController *)self workflow];
  v31 = [v32 actions];
  v29 = [v31 objectAtIndexedSubscript:a3];
  v17 = [v29 contentAttributionTracker];
  v25 = [(WFWorkflowController *)self contentItemCache];
  v18 = [(WFWorkflowController *)self flowTracker];
  v19 = [(WFWorkflowController *)self workflow];
  v20 = [v19 actions];
  v21 = [v20 objectAtIndexedSubscript:a3];
  v22 = [v21 allowedOnceSmartPromptStates];
  LOBYTE(v24) = [(WFWorkflowController *)self shouldDisablePrivacyPrompts];
  v34 = [(WFWorkflowControllerState *)v30 initWithWorkflow:v40 variables:v38 currentActionIndex:a3 runningContext:v28 currentInput:v36 currentProcessedParameters:v37 startDate:v39 currentRunSource:v26 numberOfDialogsPresented:v33 outputBehavior:v27 contentAttributionTracker:v17 contentItemCache:v25 flowTracker:v18 allowedOnceSmartPromptStates:v22 extensionResourceClasses:v41 shouldDisablePrivacyPrompts:v24];

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
  v3 = [(WFWorkflowController *)self pendingState];

  if (v3)
  {
    v4 = [(WFWorkflowController *)self pendingState];
  }

  else
  {
    v5 = [(WFWorkflowController *)self workflow];
    v6 = [v5 actions];

    if ([v6 count])
    {
      v7 = [(WFWorkflowController *)self currentIndex];
      if (v7 >= [v6 count])
      {
        v7 = 0;
      }

      v8 = [v6 objectAtIndex:v7];
      v9 = [v8 input];
      v10 = [v8 processedParameters];
      v4 = [(WFWorkflowController *)self stateWithActionIndex:v7 input:v9 processedParameters:v10];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)queue_setWorkflow:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_V2(v5);

  LOBYTE(v5) = [(WFWorkflow *)self->_workflow isEqual:v4];
  workflow = self->_workflow;
  self->_workflow = v4;

  if ((v5 & 1) == 0)
  {

    [(WFWorkflowController *)self queue_reset];
  }
}

- (void)setWorkflow:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowController *)self executionQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(WFWorkflowController *)self executionQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__WFWorkflowController_setWorkflow___block_invoke;
  v8[3] = &unk_1E837F870;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (WFCurrentActionFractionCompletedContext == a6)
  {

    [(WFWorkflowController *)self publishActionProgress:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = WFWorkflowController;
    [(WFWorkflowController *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)dealloc
{
  v3 = [(WFWorkflowController *)self workflowRunAssertion];
  [v3 invalidateWithError:0];

  v4 = [(WFWorkflowController *)self currentActionProgress];
  [v4 removeObserver:self forKeyPath:@"fractionCompleted" context:WFCurrentActionFractionCompletedContext];

  [(WFWorkflowController *)self tearDownNotificationObservers];
  v5.receiver = self;
  v5.super_class = WFWorkflowController;
  [(WFWorkflowController *)&v5 dealloc];
}

@end