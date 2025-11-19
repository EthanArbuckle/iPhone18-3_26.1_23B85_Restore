@interface SURollbackController
- (BOOL)isRollingBack;
- (SUManagerCore)core;
- (SURollbackController)initWithCore:(id)a3;
- (id)availableRollback;
- (id)previousRollback;
- (void)rollbackCompleted:(id)a3 withError:(id)a4;
- (void)rollbackReadyForReboot:(id)a3;
- (void)rollbackStarted:(id)a3;
- (void)rollbackUpdateWithOptions:(id)a3 completion:(id)a4;
- (void)setRollingBack:(BOOL)a3;
@end

@implementation SURollbackController

- (SURollbackController)initWithCore:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SURollbackController;
  v5 = [(SURollbackController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_core, v4);
    v6->_rollingBack = 0;
  }

  return v6;
}

- (void)rollbackUpdateWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SURollbackController *)self core];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = +[SUPreferences sharedInstance];
  LODWORD(v9) = [v10 disableRollback];

  if (!v9)
  {
    v19 = [(SURollbackController *)self core];
    v18 = [v19 eligibleRollbackWithOptions:v6];

    if (v18)
    {
      v27 = [SUManagerEngine rollbackDescriptorForSUCoreRollbackDescriptor:v18];
      if (!v6)
      {
        v6 = objc_alloc_init(SURollbackOptions);
      }

      v28 = [(SURollbackController *)self core];
      v29 = [v28 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__SURollbackController_rollbackUpdateWithOptions_completion___block_invoke;
      block[3] = &unk_279CAD0C0;
      v37 = v7;
      v33 = v27;
      v34 = self;
      v35 = v18;
      v6 = v6;
      v36 = v6;
      v30 = v27;
      dispatch_async(v29, block);
    }

    else
    {
      SULogInfo(@"Unable to rollback update. No eligible rollback found", v20, v21, v22, v23, v24, v25, v26, v31);
      if (!v7)
      {
        goto LABEL_11;
      }

      v30 = [SUUtility errorWithCode:89];
      (*(v7 + 2))(v7, 0, 0, v30);
    }

    goto LABEL_11;
  }

  SULogInfo(@"Preventing rollback due to preferences", v11, v12, v13, v14, v15, v16, v17, v31);
  if (v7)
  {
    v18 = [SUUtility errorWithCode:88];
    (*(v7 + 2))(v7, 0, 0, v18);
LABEL_11:
  }
}

void __61__SURollbackController_rollbackUpdateWithOptions_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    (*(v2 + 16))(v2, 1, *(a1 + 32), 0);
  }

  v3 = +[SUPreferences sharedInstance];
  v4 = [v3 fakeSplatInstalled];

  if (v4)
  {
    SULogInfo(@"%s: To rollback the fake splat...", v5, v6, v7, v8, v9, v10, v11, "[SURollbackController rollbackUpdateWithOptions:completion:]_block_invoke");
    v12 = [*(a1 + 40) core];
    v13 = [v12 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SURollbackController_rollbackUpdateWithOptions_completion___block_invoke_2;
    block[3] = &unk_279CAA7C0;
    v14 = *(a1 + 48);
    block[4] = *(a1 + 40);
    v20 = v14;
    dispatch_async(v13, block);
  }

  else
  {
    v15 = [*(a1 + 40) core];
    v16 = [v15 engine];
    [v16 createBrainLoadLockAssertion:&__block_literal_global_23];

    v18 = [*(a1 + 40) core];
    v17 = [v18 engine];
    [v17 rollbackUpdateWithOptions:*(a1 + 56)];
  }
}

void __61__SURollbackController_rollbackUpdateWithOptions_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) rollbackStarted:*(a1 + 40)];
  v2 = [*(a1 + 32) core];
  v3 = [v2 workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__SURollbackController_rollbackUpdateWithOptions_completion___block_invoke_3;
  v5[3] = &unk_279CAA7C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, v5);
}

void __61__SURollbackController_rollbackUpdateWithOptions_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    SULogInfo(@"%s: Failed to create brain load lock assertion: %@", a2, a3, a4, a5, a6, a7, a8, "[SURollbackController rollbackUpdateWithOptions:completion:]_block_invoke_4");
  }
}

- (BOOL)isRollingBack
{
  v3 = [(SURollbackController *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  return self->_rollingBack;
}

- (void)setRollingBack:(BOOL)a3
{
  v5 = [(SURollbackController *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  self->_rollingBack = a3;
}

- (void)rollbackStarted:(id)a3
{
  v4 = a3;
  v5 = [(SURollbackController *)self core];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  SULogInfo(@"Rollback Started: %@", v7, v8, v9, v10, v11, v12, v13, v4);
  self->_rollingBack = 1;
  v14 = [(SURollbackController *)self core];
  v15 = [v14 delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(SURollbackController *)self core];
    v18 = [v17 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__SURollbackController_rollbackStarted___block_invoke;
    block[3] = &unk_279CAA7C0;
    block[4] = self;
    v20 = v4;
    dispatch_async(v18, block);
  }
}

void __40__SURollbackController_rollbackStarted___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 rollbackDidStart:*(a1 + 40)];
}

- (void)rollbackCompleted:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SURollbackController *)self core];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  self->_rollingBack = 0;
  v10 = [MEMORY[0x277D64420] sharedDevice];
  LODWORD(v9) = [v10 hasSemiSplatActive];

  if (v9)
  {
    SULogInfo(@"Rollback already applied, just proceed to reboot", v11, v12, v13, v14, v15, v16, v17, v43);
LABEL_6:
    SULogInfo(@"Rollback succeeded: %@. Informing clients", v11, v12, v13, v14, v15, v16, v17, v6);
    if (v6 || (-[SURollbackController core](self, "core"), v25 = objc_claimAutoreleasedReturnValue(), [v25 eligibleRollbackWithOptions:0], v6 = objc_claimAutoreleasedReturnValue(), v25, v6))
    {
      v26 = [v6 productBuildVersion];
      SULogInfo(@"Adding %@ to rolledBackDescritor list", v27, v28, v29, v30, v31, v32, v33, v26);

      v34 = [(SURollbackController *)self core];
      v35 = [v34 state];
      v36 = [v6 productBuildVersion];
      [v35 addRolledBackBuildVersion:v36];

      v37 = [(SURollbackController *)self core];
      v38 = [v37 state];
      [v38 save];
    }

    v39 = [(SURollbackController *)self core];
    v40 = [v39 delegate];
    v41 = objc_opt_respondsToSelector();

    if (v41)
    {
      v24 = [(SURollbackController *)self core];
      v42 = [v24 externWorkQueue];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __52__SURollbackController_rollbackCompleted_withError___block_invoke_2;
      v44[3] = &unk_279CAA7C0;
      v44[4] = self;
      v23 = &v45;
      v6 = v6;
      v45 = v6;
      dispatch_async(v42, v44);

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!v7)
  {
    goto LABEL_6;
  }

  SULogInfo(@"Rollback failed with error: %@", v11, v12, v13, v14, v15, v16, v17, v7);
  v18 = [(SURollbackController *)self core];
  v19 = [v18 delegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = [(SURollbackController *)self core];
    v22 = [v21 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SURollbackController_rollbackCompleted_withError___block_invoke;
    block[3] = &unk_279CAA798;
    block[4] = self;
    v23 = &v47;
    v6 = v6;
    v47 = v6;
    v48 = v7;
    dispatch_async(v22, block);

    v24 = v48;
LABEL_11:
  }

LABEL_12:
}

void __52__SURollbackController_rollbackCompleted_withError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 rollbackDidFail:*(a1 + 40) withError:*(a1 + 48)];
}

void __52__SURollbackController_rollbackCompleted_withError___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 rollbackSucceeded:*(a1 + 40)];
}

- (void)rollbackReadyForReboot:(id)a3
{
  v4 = a3;
  v5 = [(SURollbackController *)self core];
  v6 = [v5 delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SURollbackController *)self core];
    v9 = [v8 externWorkQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__SURollbackController_rollbackReadyForReboot___block_invoke;
    v10[3] = &unk_279CAA7C0;
    v10[4] = self;
    v11 = v4;
    dispatch_async(v9, v10);
  }
}

void __47__SURollbackController_rollbackReadyForReboot___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 rollbackReadyForReboot:*(a1 + 40)];
}

- (id)availableRollback
{
  v3 = [(SURollbackController *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(SURollbackController *)self core];
  v6 = [v5 engine];
  v7 = [v6 availableRollback];

  return v7;
}

- (id)previousRollback
{
  v3 = [(SURollbackController *)self core];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(SURollbackController *)self core];
  v6 = [v5 engine];
  v7 = [v6 previousRollback];

  return v7;
}

- (SUManagerCore)core
{
  WeakRetained = objc_loadWeakRetained(&self->_core);

  return WeakRetained;
}

@end