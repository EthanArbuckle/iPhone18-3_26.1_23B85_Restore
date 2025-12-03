@interface SBLinkSystemActionExecutor
- (SBLinkSystemActionExecutor)initWithSystemAction:(id)action;
- (id)_beginInteractiveExecutionWithContext:(id)context executionHandler:(id)handler error:(id *)error;
- (id)_previewWithCoordinator:(id)coordinator;
- (void)_cancelPreviewing;
- (void)_finishExecutingWithResult:(id)result;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
@end

@implementation SBLinkSystemActionExecutor

- (SBLinkSystemActionExecutor)initWithSystemAction:(id)action
{
  v7.receiver = self;
  v7.super_class = SBLinkSystemActionExecutor;
  v3 = [(SBAbstractSystemActionExecutor *)&v7 initWithSystemAction:action];
  if (v3)
  {
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    prewarmQueue = v3->_prewarmQueue;
    v3->_prewarmQueue = SerialWithQoS;
  }

  return v3;
}

- (id)_previewWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  systemAction = [(SBAbstractSystemActionExecutor *)self systemAction];
  configuredAction = [systemAction configuredAction];
  v8 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    associatedBundleIdentifier = configuredAction;
    intent = [associatedBundleIdentifier intent];
    linkAction = [(SBSystemActionPreviewContext *)intent linkAction];
    if (!linkAction)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) Cannot execute action without link action app intent: %@, configured action: %@", self, intent, associatedBundleIdentifier];;
      v32 = SBLogSystemActionExecution();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        [(SBLinkSystemActionExecutor *)v31 _previewWithCoordinator:v32];
      }

      v18 = SBSystemActionExecutionErrorCreate(1, v31);

      goto LABEL_29;
    }
  }

  associatedBundleIdentifier = [configuredAction associatedBundleIdentifier];
  if (associatedBundleIdentifier)
  {
    sectionIdentifier = [configuredAction sectionIdentifier];
    v14 = [sectionIdentifier isEqualToString:@"Shortcuts"];

    v15 = self->_runnerClient;
    if (v15)
    {
      v16 = v15;
      intent = 0;
LABEL_20:
      prewarmQueue = self->_prewarmQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__SBLinkSystemActionExecutor__previewWithCoordinator___block_invoke;
      block[3] = &unk_2783A8C18;
      block[4] = self;
      dispatch_async(prewarmQueue, block);
      if (intent)
      {
        v25 = 0;
      }

      else
      {
        v25 = v14;
      }

      if (v25 == 1)
      {
        intent = objc_alloc_init(SBSystemActionPreviewContext);
        presentableRequester = [v16 presentableRequester];
        [(SBSystemActionPreviewContext *)intent setClientIdentifier:presentableRequester];

        presentableIdentifier = [v16 presentableIdentifier];
        [(SBSystemActionPreviewContext *)intent setElementIdentifier:presentableIdentifier];

        userInfo = [(SBSystemActionPreviewContext *)intent userInfo];
        [userInfo setObject:v16 forKey:@"SBLinkSystemActionRunnerClient"];
      }

      v29 = [coordinatorCopy showPreviewForAction:systemAction withContext:intent];
      previewAssertion = self->_previewAssertion;
      self->_previewAssertion = v29;

      v18 = 0;
      goto LABEL_29;
    }

    v35 = a2;
    v19 = [coordinatorCopy previewContextForAction:systemAction];
    v20 = v19;
    if (v19)
    {
      v21 = v14;
    }

    else
    {
      v21 = 0;
    }

    if (v21 == 1)
    {
      userInfo2 = [v19 userInfo];
      v16 = [userInfo2 objectForKey:@"SBLinkSystemActionRunnerClient"];

      if (v16)
      {
        action = [v16 action];
        v34 = [action isEqual:configuredAction];

        if ((v34 & 1) == 0)
        {
          [(SBLinkSystemActionExecutor *)v16 _previewWithCoordinator:v35, self];
        }

        if (![v16 hasCompletedRun])
        {
          intent = v20;
          goto LABEL_19;
        }
      }
    }

    v16 = [objc_alloc(MEMORY[0x277D7A138]) initWithStaccatoAction:configuredAction];
    intent = 0;
LABEL_19:
    [v16 setDelegate:self];
    objc_storeStrong(&self->_runnerClient, v16);

    goto LABEL_20;
  }

  intent = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) Cannot execute action without bundle ID configured action: %@", self, configuredAction];;
  v17 = SBLogSystemActionExecution();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [(SBLinkSystemActionExecutor *)intent _previewWithCoordinator:v17];
  }

  v18 = SBSystemActionExecutionErrorCreate(1, intent);
LABEL_29:

  return v18;
}

- (void)_cancelPreviewing
{
  [(SBSystemActionPreviewInvalidatable *)self->_previewAssertion invalidateAfterDefaultTimeoutForActionCancelled];
  previewAssertion = self->_previewAssertion;
  self->_previewAssertion = 0;
}

- (id)_beginInteractiveExecutionWithContext:(id)context executionHandler:(id)handler error:(id *)error
{
  handlerCopy = handler;
  contextCopy = context;
  workspace = [(SBCameraActivationManager *)contextCopy workspace];
  v10 = *MEMORY[0x277D7A5A0];
  listener = [(SBHomeScreenConfigurationServer *)contextCopy listener];

  if (listener)
  {
    if (listener != 1)
    {
      goto LABEL_6;
    }

    v12 = MEMORY[0x277D7A590];
  }

  else
  {
    v12 = MEMORY[0x277D7A598];
  }

  v13 = *v12;

  v10 = v13;
LABEL_6:
  acquireAssertionForInvalidatingAfterDefaultTimeoutForActionPerformed = [(SBSystemActionPreviewInvalidatable *)self->_previewAssertion acquireAssertionForInvalidatingAfterDefaultTimeoutForActionPerformed];
  previewAssertion = self->_previewAssertion;
  self->_previewAssertion = 0;

  executionGeneration = [(SBAbstractSystemActionExecutor *)self executionGeneration];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__SBLinkSystemActionExecutor__beginInteractiveExecutionWithContext_executionHandler_error___block_invoke;
  v21[3] = &unk_2783BE778;
  v21[4] = self;
  v22 = v10;
  v23 = workspace;
  v24 = executionGeneration;
  v17 = workspace;
  v18 = v10;
  v19 = MEMORY[0x223D6F7F0](v21);
  handlerCopy[2](handlerCopy, v19);

  return acquireAssertionForInvalidatingAfterDefaultTimeoutForActionPerformed;
}

void __91__SBLinkSystemActionExecutor__beginInteractiveExecutionWithContext_executionHandler_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  v5 = *(*(a1 + 32) + 56);
  if (a2)
  {
    [v5 startWithInteractionType:*(a1 + 40) preciseTimeStamp:*(a1 + 48)];
  }

  else if (([v5 isRunning] & 1) == 0)
  {
    v6 = *(a1 + 56);
    if (v6 == [*(a1 + 32) executionGeneration])
    {
      [*(a1 + 32) _finishExecutingWithResult:v7];
    }
  }
}

- (void)_finishExecutingWithResult:(id)result
{
  runnerClient = self->_runnerClient;
  self->_runnerClient = 0;
  resultCopy = result;

  v6.receiver = self;
  v6.super_class = SBLinkSystemActionExecutor;
  [(SBAbstractSystemActionExecutor *)&v6 _finishExecutingWithResult:resultCopy];
}

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  errorCopy = error;
  if (cancelledCopy)
  {
    v10 = errorCopy;
    v9 = SBSystemActionExecutionErrorCreateWithError(2, errorCopy);

    errorCopy = v9;
  }

  v11 = errorCopy;
  [(SBLinkSystemActionExecutor *)self _finishExecutingWithResult:errorCopy];
}

- (void)_previewWithCoordinator:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 action];
  v7 = [v5 stringWithFormat:@"The found runner client should be for the same system action runner client action: %@", v6];;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138544642;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    v15 = 2048;
    v16 = a3;
    v17 = 2114;
    v18 = @"SBLinkSystemActionExecutor.m";
    v19 = 1024;
    v20 = 95;
    v21 = 2114;
    v22 = v7;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_previewWithCoordinator:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_FAULT, "%{public}@", &v2, 0xCu);
}

@end