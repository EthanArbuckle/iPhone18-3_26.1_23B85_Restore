@interface SBBlockSystemActionExecutor
- (BOOL)_requiresAuthenticationAtLeastOnceSinceBootBeforeExecution;
- (SBBlockSystemActionExecutor)initWithSystemAction:(id)a3;
- (SBSystemActionActionBlockProviding)systemAction;
- (id)_beginInteractiveExecutionWithContext:(id)a3 executionHandler:(id)a4 error:(id *)a5;
- (id)_previewWithCoordinator:(id)a3;
- (void)_cancelPreviewing;
@end

@implementation SBBlockSystemActionExecutor

- (SBBlockSystemActionExecutor)initWithSystemAction:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBBlockSystemActionExecutor;
  return [(SBAbstractSystemActionExecutor *)&v4 initWithSystemAction:a3];
}

- (SBSystemActionActionBlockProviding)systemAction
{
  v4.receiver = self;
  v4.super_class = SBBlockSystemActionExecutor;
  v2 = [(SBAbstractSystemActionExecutor *)&v4 systemAction];

  return v2;
}

- (BOOL)_requiresAuthenticationAtLeastOnceSinceBootBeforeExecution
{
  v2 = [(SBBlockSystemActionExecutor *)self systemAction];
  v3 = [v2 configuredAction];
  v4 = [v3 identifier];

  LOBYTE(v2) = [v4 hasSuffix:*MEMORY[0x277D66958]];
  return v2;
}

- (id)_previewWithCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(SBBlockSystemActionExecutor *)self systemAction];
  v6 = [v4 showPreviewForAction:v5 withContext:0];

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

- (id)_beginInteractiveExecutionWithContext:(id)a3 executionHandler:(id)a4 error:(id *)a5
{
  v7 = a3;
  previewAssertion = self->_previewAssertion;
  v9 = a4;
  v10 = [(SBSystemActionPreviewInvalidatable *)previewAssertion acquireAssertionForInvalidatingAfterDefaultTimeoutForActionPerformed];
  v11 = self->_previewAssertion;
  self->_previewAssertion = 0;

  self->_executing = 1;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__SBBlockSystemActionExecutor__beginInteractiveExecutionWithContext_executionHandler_error___block_invoke;
  v15[3] = &unk_2783B27A0;
  v15[4] = self;
  v16 = v7;
  v12 = v7;
  v13 = MEMORY[0x223D6F7F0](v15);
  v9[2](v9, v13);

  return v10;
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