@interface SURollbackController
- (BOOL)isRollingBack;
- (SUManagerCore)core;
- (SURollbackController)initWithCore:(id)core;
- (id)availableRollback;
- (id)previousRollback;
- (void)rollbackCompleted:(id)completed withError:(id)error;
- (void)rollbackReadyForReboot:(id)reboot;
- (void)rollbackStarted:(id)started;
- (void)rollbackUpdateWithOptions:(id)options completion:(id)completion;
- (void)setRollingBack:(BOOL)back;
@end

@implementation SURollbackController

- (SURollbackController)initWithCore:(id)core
{
  coreCopy = core;
  v8.receiver = self;
  v8.super_class = SURollbackController;
  v5 = [(SURollbackController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_core, coreCopy);
    v6->_rollingBack = 0;
  }

  return v6;
}

- (void)rollbackUpdateWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  core = [(SURollbackController *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = +[SUPreferences sharedInstance];
  LODWORD(workQueue) = [v10 disableRollback];

  if (!workQueue)
  {
    core2 = [(SURollbackController *)self core];
    v18 = [core2 eligibleRollbackWithOptions:optionsCopy];

    if (v18)
    {
      v27 = [SUManagerEngine rollbackDescriptorForSUCoreRollbackDescriptor:v18];
      if (!optionsCopy)
      {
        optionsCopy = objc_alloc_init(SURollbackOptions);
      }

      core3 = [(SURollbackController *)self core];
      workQueue2 = [core3 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__SURollbackController_rollbackUpdateWithOptions_completion___block_invoke;
      block[3] = &unk_279CAD0C0;
      v37 = completionCopy;
      v33 = v27;
      selfCopy = self;
      v35 = v18;
      optionsCopy = optionsCopy;
      v36 = optionsCopy;
      v30 = v27;
      dispatch_async(workQueue2, block);
    }

    else
    {
      SULogInfo(@"Unable to rollback update. No eligible rollback found", v20, v21, v22, v23, v24, v25, v26, v31);
      if (!completionCopy)
      {
        goto LABEL_11;
      }

      v30 = [SUUtility errorWithCode:89];
      (*(completionCopy + 2))(completionCopy, 0, 0, v30);
    }

    goto LABEL_11;
  }

  SULogInfo(@"Preventing rollback due to preferences", v11, v12, v13, v14, v15, v16, v17, v31);
  if (completionCopy)
  {
    v18 = [SUUtility errorWithCode:88];
    (*(completionCopy + 2))(completionCopy, 0, 0, v18);
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
  core = [(SURollbackController *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_rollingBack;
}

- (void)setRollingBack:(BOOL)back
{
  core = [(SURollbackController *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  self->_rollingBack = back;
}

- (void)rollbackStarted:(id)started
{
  startedCopy = started;
  core = [(SURollbackController *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  SULogInfo(@"Rollback Started: %@", v7, v8, v9, v10, v11, v12, v13, startedCopy);
  self->_rollingBack = 1;
  core2 = [(SURollbackController *)self core];
  delegate = [core2 delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    core3 = [(SURollbackController *)self core];
    externWorkQueue = [core3 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__SURollbackController_rollbackStarted___block_invoke;
    block[3] = &unk_279CAA7C0;
    block[4] = self;
    v20 = startedCopy;
    dispatch_async(externWorkQueue, block);
  }
}

void __40__SURollbackController_rollbackStarted___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 rollbackDidStart:*(a1 + 40)];
}

- (void)rollbackCompleted:(id)completed withError:(id)error
{
  completedCopy = completed;
  errorCopy = error;
  core = [(SURollbackController *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  self->_rollingBack = 0;
  mEMORY[0x277D64420] = [MEMORY[0x277D64420] sharedDevice];
  LODWORD(workQueue) = [mEMORY[0x277D64420] hasSemiSplatActive];

  if (workQueue)
  {
    SULogInfo(@"Rollback already applied, just proceed to reboot", v11, v12, v13, v14, v15, v16, v17, v43);
LABEL_6:
    SULogInfo(@"Rollback succeeded: %@. Informing clients", v11, v12, v13, v14, v15, v16, v17, completedCopy);
    if (completedCopy || (-[SURollbackController core](self, "core"), v25 = objc_claimAutoreleasedReturnValue(), [v25 eligibleRollbackWithOptions:0], completedCopy = objc_claimAutoreleasedReturnValue(), v25, completedCopy))
    {
      productBuildVersion = [completedCopy productBuildVersion];
      SULogInfo(@"Adding %@ to rolledBackDescritor list", v27, v28, v29, v30, v31, v32, v33, productBuildVersion);

      core2 = [(SURollbackController *)self core];
      state = [core2 state];
      productBuildVersion2 = [completedCopy productBuildVersion];
      [state addRolledBackBuildVersion:productBuildVersion2];

      core3 = [(SURollbackController *)self core];
      state2 = [core3 state];
      [state2 save];
    }

    core4 = [(SURollbackController *)self core];
    delegate = [core4 delegate];
    v41 = objc_opt_respondsToSelector();

    if (v41)
    {
      core5 = [(SURollbackController *)self core];
      externWorkQueue = [core5 externWorkQueue];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __52__SURollbackController_rollbackCompleted_withError___block_invoke_2;
      v44[3] = &unk_279CAA7C0;
      v44[4] = self;
      v23 = &v45;
      completedCopy = completedCopy;
      v45 = completedCopy;
      dispatch_async(externWorkQueue, v44);

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!errorCopy)
  {
    goto LABEL_6;
  }

  SULogInfo(@"Rollback failed with error: %@", v11, v12, v13, v14, v15, v16, v17, errorCopy);
  core6 = [(SURollbackController *)self core];
  delegate2 = [core6 delegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    core7 = [(SURollbackController *)self core];
    externWorkQueue2 = [core7 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SURollbackController_rollbackCompleted_withError___block_invoke;
    block[3] = &unk_279CAA798;
    block[4] = self;
    v23 = &v47;
    completedCopy = completedCopy;
    v47 = completedCopy;
    v48 = errorCopy;
    dispatch_async(externWorkQueue2, block);

    core5 = v48;
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

- (void)rollbackReadyForReboot:(id)reboot
{
  rebootCopy = reboot;
  core = [(SURollbackController *)self core];
  delegate = [core delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    core2 = [(SURollbackController *)self core];
    externWorkQueue = [core2 externWorkQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__SURollbackController_rollbackReadyForReboot___block_invoke;
    v10[3] = &unk_279CAA7C0;
    v10[4] = self;
    v11 = rebootCopy;
    dispatch_async(externWorkQueue, v10);
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
  core = [(SURollbackController *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  core2 = [(SURollbackController *)self core];
  engine = [core2 engine];
  availableRollback = [engine availableRollback];

  return availableRollback;
}

- (id)previousRollback
{
  core = [(SURollbackController *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  core2 = [(SURollbackController *)self core];
  engine = [core2 engine];
  previousRollback = [engine previousRollback];

  return previousRollback;
}

- (SUManagerCore)core
{
  WeakRetained = objc_loadWeakRetained(&self->_core);

  return WeakRetained;
}

@end