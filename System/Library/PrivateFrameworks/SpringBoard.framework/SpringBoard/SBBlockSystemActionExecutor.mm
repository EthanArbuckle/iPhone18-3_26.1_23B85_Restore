@interface SBBlockSystemActionExecutor
- (BOOL)_requiresAuthenticationAtLeastOnceSinceBootBeforeExecution;
- (SBBlockSystemActionExecutor)initWithSystemAction:(id)action;
- (SBSystemActionActionBlockProviding)systemAction;
- (id)_beginInteractiveExecutionWithContext:(id)context executionHandler:(id)handler error:(id *)error;
- (id)_previewWithCoordinator:(id)coordinator;
- (void)_cancelPreviewing;
@end

@implementation SBBlockSystemActionExecutor

- (SBBlockSystemActionExecutor)initWithSystemAction:(id)action
{
  v4.receiver = self;
  v4.super_class = SBBlockSystemActionExecutor;
  return [(SBAbstractSystemActionExecutor *)&v4 initWithSystemAction:action];
}

- (SBSystemActionActionBlockProviding)systemAction
{
  v4.receiver = self;
  v4.super_class = SBBlockSystemActionExecutor;
  systemAction = [(SBAbstractSystemActionExecutor *)&v4 systemAction];

  return systemAction;
}

- (BOOL)_requiresAuthenticationAtLeastOnceSinceBootBeforeExecution
{
  systemAction = [(SBBlockSystemActionExecutor *)self systemAction];
  configuredAction = [systemAction configuredAction];
  identifier = [configuredAction identifier];

  LOBYTE(systemAction) = [identifier hasSuffix:*MEMORY[0x277D66958]];
  return systemAction;
}

- (id)_previewWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  systemAction = [(SBBlockSystemActionExecutor *)self systemAction];
  v6 = [coordinatorCopy showPreviewForAction:systemAction withContext:0];

  previewAssertion = self->_previewAssertion;
  self->_previewAssertion = v6;

  return 0;
}

- (void)_cancelPreviewing
{
  [(SBSystemActionPreviewInvalidatable *)self->_previewAssertion invalidateAfterDefaultTimeoutForActionCancelled];
  previewAssertion = self->_previewAssertion;
  self->_previewAssertion = 0;
}

- (id)_beginInteractiveExecutionWithContext:(id)context executionHandler:(id)handler error:(id *)error
{
  contextCopy = context;
  previewAssertion = self->_previewAssertion;
  handlerCopy = handler;
  acquireAssertionForInvalidatingAfterDefaultTimeoutForActionPerformed = [(SBSystemActionPreviewInvalidatable *)previewAssertion acquireAssertionForInvalidatingAfterDefaultTimeoutForActionPerformed];
  v11 = self->_previewAssertion;
  self->_previewAssertion = 0;

  self->_executing = 1;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__SBBlockSystemActionExecutor__beginInteractiveExecutionWithContext_executionHandler_error___block_invoke;
  v15[3] = &unk_2783B27A0;
  v15[4] = self;
  v16 = contextCopy;
  v12 = contextCopy;
  v13 = MEMORY[0x223D6F7F0](v15);
  handlerCopy[2](handlerCopy, v13);

  return acquireAssertionForInvalidatingAfterDefaultTimeoutForActionPerformed;
}

void __92__SBBlockSystemActionExecutor__beginInteractiveExecutionWithContext_executionHandler_error___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 systemAction];
    v5 = [v4 actionBlock];

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __92__SBBlockSystemActionExecutor__beginInteractiveExecutionWithContext_executionHandler_error___block_invoke_2;
    v7[3] = &unk_2783B0F28;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    (v5)[2](v5, v6, v7);
  }

  else
  {

    [v3 _handleExecutionBlockFinishedWithResult:?];
  }
}

@end