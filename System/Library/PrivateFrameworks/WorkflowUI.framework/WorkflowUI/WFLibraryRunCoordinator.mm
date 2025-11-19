@interface WFLibraryRunCoordinator
- (WFLibraryRunCoordinator)initWithSource:(id)a3 database:(id)a4;
- (WFLibraryRunCoordinatorDelegate)delegate;
- (id)view;
- (void)accessibilityAnnounce:(id)a3;
- (void)dealloc;
- (void)didFinishRunningWorkflow:(id)a3 withError:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)openWorkflowReferenceAndRun:(id)a3 fromSource:(id)a4 withInput:(id)a5 state:(id)a6 requestOutput:(BOOL)a7 runViewSource:(id)a8 completionHandler:(id)a9;
- (void)registerObserver:(id)a3;
- (void)runAppShortcut:(id)a3 withLNAction:(id)a4 andMetadata:(id)a5;
- (void)runContextualAction:(id)a3;
- (void)setRunningWorkflowProgress:(id)a3;
- (void)stop;
- (void)unregisterObserver:(id)a3;
- (void)updateProgress:(double)a3 waiting:(BOOL)a4 cancelled:(BOOL)a5 forWorkflow:(id)a6;
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6;
- (void)workflowRunnerClient:(id)a3 didStartRunningWorkflowWithProgress:(id)a4;
@end

@implementation WFLibraryRunCoordinator

- (WFLibraryRunCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6
{
  v6 = a6;
  v58[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v11 = [(WFLibraryRunCoordinator *)self runningWorkflow];
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v6;
  }

  if (v12)
  {
    v13 = -1.0;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = [(WFLibraryRunCoordinator *)self runningWorkflow];
  [(WFLibraryRunCoordinator *)self updateProgress:0 waiting:v6 cancelled:v14 forWorkflow:v13];

  [(WFLibraryRunCoordinator *)self progress];
  if (v15 != -1.0)
  {
    v16 = [(WFLibraryRunCoordinator *)self runningWorkflow];
    [(WFLibraryRunCoordinator *)self updateProgress:0 waiting:0 cancelled:v16 forWorkflow:-1.0];
  }

  [(WFLibraryRunCoordinator *)self setRunningWorkflow:0];
  [(WFLibraryRunCoordinator *)self setRunViewSource:0];
  v17 = [(WFLibraryRunCoordinator *)self runningAppShortcut];
  [(WFLibraryRunCoordinator *)self setRunningAppShortcut:0];
  v18 = [v10 userInfo];
  v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277D7D098]];

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

  if (v10)
  {
    if (WFErrorIsRemoteQuarantineDenialError())
    {
      v51 = MEMORY[0x277D85DD0];
      v52 = 3221225472;
      v53 = __99__WFLibraryRunCoordinator_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke;
      v54 = &unk_279EE8C58;
      v55 = self;
      v56 = v11;
      v22 = WFAddRecoveryOptionsToRemoteQuarantineDenialError();

      v10 = v22;
    }

    else if (v21)
    {
      v23 = [(WFLibraryRunCoordinator *)self delegate];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        v25 = [v10 userInfo];
        v26 = [v25 mutableCopy];

        v27 = WFLocalizedString(@"Show");
        v28 = WFLocalizedString(@"OK");
        v45 = v28;
        v46 = v17;
        v44 = v27;
        if (v17)
        {
          v58[0] = v28;
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
          v30 = &unk_2883C1DA8;
        }

        else
        {
          v57[0] = v27;
          v57[1] = v28;
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
          v30 = &unk_2883C1DC0;
        }

        [v26 setObject:v29 forKeyedSubscript:*MEMORY[0x277CCA480]];

        [v26 setObject:v30 forKeyedSubscript:*MEMORY[0x277CFC6D0]];
        v31 = objc_alloc(MEMORY[0x277CFC268]);
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __99__WFLibraryRunCoordinator_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke_220;
        v47[3] = &unk_279EE7E38;
        v48 = v11;
        v49 = self;
        v50 = v21;
        v32 = [v31 initWithHandlerBlock:v47];
        [v26 setObject:v32 forKeyedSubscript:*MEMORY[0x277CCA658]];
        v33 = MEMORY[0x277CCA9B8];
        [v10 domain];
        v35 = v34 = v26;
        v36 = [v33 errorWithDomain:v35 code:objc_msgSend(v10 userInfo:{"code"), v34}];

        v10 = v36;
        v17 = v46;
      }
    }
  }

  v37 = [(WFLibraryRunCoordinator *)self completionHandler];

  if (v37)
  {
    v38 = [(WFLibraryRunCoordinator *)self completionHandler];
    (v38)[2](v38, v9, v6, v10);

    [(WFLibraryRunCoordinator *)self setCompletionHandler:0];
  }

  if (v6)
  {
    v39 = [MEMORY[0x277CCA9B8] userCancelledError];
    [(WFLibraryRunCoordinator *)self didFinishRunningWorkflow:v11 withError:v39];

    if (v10)
    {
      v40 = @"Shortcut stopped";
LABEL_32:
      v42 = WFLocalizedString(v40);
      [(WFLibraryRunCoordinator *)self accessibilityAnnounce:v42];
      goto LABEL_33;
    }

LABEL_31:
    v40 = @"Shortcut finished";
    goto LABEL_32;
  }

  [(WFLibraryRunCoordinator *)self didFinishRunningWorkflow:v11 withError:v10];
  if (!v10)
  {
    goto LABEL_31;
  }

  if (!v37)
  {
    v41 = [(WFLibraryRunCoordinator *)self delegate];
    v42 = [v41 runCoordinator:self userInterfaceForWorkflow:v11];

    v43 = [MEMORY[0x277CFC218] alertWithError:v10];
    [v42 presentAlert:v43];

LABEL_33:
  }
}

void __99__WFLibraryRunCoordinator_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 deleteReference:*(a1 + 40) error:0];
}

void __99__WFLibraryRunCoordinator_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke_220(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v16 = a2;
  v9 = a4;
  v10 = a5;
  if (!a3 && *(a1 + 32))
  {
    v11 = [*(a1 + 40) delegate];
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = [*(a1 + 48) integerValue];
    v15 = [v16 localizedDescription];
    [v11 runCoordinator:v12 openWorkflow:v13 scrolledToActionIndex:v14 message:v15];
  }

  if (v10)
  {
    v10[2](v10, 1, 0);
  }
}

- (void)workflowRunnerClient:(id)a3 didStartRunningWorkflowWithProgress:(id)a4
{
  [(WFLibraryRunCoordinator *)self setRunningWorkflowProgress:a4];
  v5 = [(WFLibraryRunCoordinator *)self runningWorkflow];
  [(WFLibraryRunCoordinator *)self updateProgress:0 waiting:0 cancelled:v5 forWorkflow:0.0];

  v6 = WFLocalizedString(@"Running shortcut");
  [(WFLibraryRunCoordinator *)self accessibilityAnnounce:v6];
}

- (void)accessibilityAnnounce:(id)a3
{
  v7 = a3;
  v4 = [(WFLibraryRunCoordinator *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFLibraryRunCoordinator *)self delegate];
    [v6 runCoordinator:self accessibilityAnnounce:v7];
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFLibraryRunCoordinator *)self observers];
  [v5 removeObject:v4];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFLibraryRunCoordinator *)self observers];
  [v5 addObject:v4];
}

- (void)updateProgress:(double)a3 waiting:(BOOL)a4 cancelled:(BOOL)a5 forWorkflow:(id)a6
{
  v17 = a5;
  v6 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v9 = a6;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  *&v10 = a3;
  [(WFLibraryRunCoordinator *)self setProgress:v10];
  [(WFLibraryRunCoordinator *)self setWaiting:v6];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(WFLibraryRunCoordinator *)self observers];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 runCoordinator:self didChangeRunningStateWithProgress:v6 waiting:v9 forWorkflow:a3];
        }

        if (objc_opt_respondsToSelector())
        {
          [v16 runCoordinator:self didChangeRunningStateWithProgress:v6 waiting:v17 cancelled:v9 forWorkflow:a3];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (void)didFinishRunningWorkflow:(id)a3 withError:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(WFLibraryRunCoordinator *)self observers];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 runCoordinator:self didFinishRunningWorkflow:v6 withError:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  workflowRunnerClient = self->_workflowRunnerClient;
  self->_workflowRunnerClient = 0;

  [(WFLibraryRunCoordinator *)self setRunningWorkflowProgress:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (WFWorkflowControllerProgressContext == a6 || WFWorkflowControllerRunningStateContext == a6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__WFLibraryRunCoordinator_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_279EE8A78;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFLibraryRunCoordinator;
    [(WFLibraryRunCoordinator *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

void __74__WFLibraryRunCoordinator_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) workflowRunnerClient];
  if ([v11 isRunning])
  {
    v2 = [*(a1 + 32) runningWorkflowProgress];

    if (!v2)
    {
      return;
    }

    v3 = [*(a1 + 32) runningWorkflowProgress];
    v4 = [v3 userInfo];
    v5 = [v4 objectForKey:*MEMORY[0x277D7A808]];
    v6 = [v5 integerValue];

    v7 = *(a1 + 32);
    v11 = [v7 runningWorkflowProgress];
    [v11 fractionCompleted];
    v9 = v8;
    v10 = [*(a1 + 32) runningWorkflow];
    [v7 updateProgress:v6 == 2 waiting:0 cancelled:v10 forWorkflow:v9];
  }
}

- (id)view
{
  v3 = [(WFLibraryRunCoordinator *)self delegate];
  v4 = [(WFLibraryRunCoordinator *)self runningWorkflow];
  v5 = [v3 runCoordinator:self userInterfaceForWorkflow:v4];

  v6 = [v5 userInterfaceType];
  LODWORD(v4) = [v6 isEqualToString:*MEMORY[0x277CFC710]];

  if (v4)
  {
    v7 = WFViewControllerFromUserInterface();
    v8 = [v7 view];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)stop
{
  v2 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [v2 stop];
}

- (void)openWorkflowReferenceAndRun:(id)a3 fromSource:(id)a4 withInput:(id)a5 state:(id)a6 requestOutput:(BOOL)a7 runViewSource:(id)a8 completionHandler:(id)a9
{
  v10 = a7;
  v26 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  if (!v15)
  {
    v15 = [(WFLibraryRunCoordinator *)self source];
  }

  [(WFLibraryRunCoordinator *)self setCompletionHandler:v19];
  v20 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [v20 stop];

  [(WFLibraryRunCoordinator *)self setRunningWorkflow:v26];
  [(WFLibraryRunCoordinator *)self setRunViewSource:v18];
  v21 = [objc_alloc(MEMORY[0x277D7C8A0]) initWithWorkflow:v26 state:v17 runSource:v15 input:v16 remoteDialogPresenterEndpoint:0 requestOutput:v10];
  [(WFLibraryRunCoordinator *)self setWorkflowRunnerClient:v21];

  v22 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [v22 setDelegate:self];

  v23 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  v24 = [v23 runRequest];
  [v24 setRunViewSource:v18];

  v25 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [v25 start];
}

- (void)runContextualAction:(id)a3
{
  v4 = a3;
  v5 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [v5 stop];

  v6 = [objc_alloc(MEMORY[0x277D7C8A0]) initWithContextualAction:v4];
  [(WFLibraryRunCoordinator *)self setWorkflowRunnerClient:v6];

  v7 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [v7 setDelegate:self];

  v8 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [v8 start];
}

- (void)runAppShortcut:(id)a3 withLNAction:(id)a4 andMetadata:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [v11 stop];

  v12 = objc_alloc(MEMORY[0x277D23850]);
  v13 = [v10 underlyingAutoShortcut];
  v14 = [v13 actionIdentifier];
  v15 = [v10 underlyingAutoShortcut];
  v16 = [v15 bundleIdentifier];
  v22 = [v12 initWithActionIdentifier:v14 bundleIdentifier:v16];

  [(WFLibraryRunCoordinator *)self setRunningAppShortcut:v10];
  v17 = objc_alloc(MEMORY[0x277D7C8A0]);
  v18 = [v10 triggerPhrase];

  v19 = [v17 initWithIdentifier:v22 name:v18 action:v9 metadata:v8 runSource:*MEMORY[0x277D7A828] remoteDialogPresenterEndpoint:0];
  [(WFLibraryRunCoordinator *)self setWorkflowRunnerClient:v19];

  v20 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [v20 setDelegate:self];

  v21 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [v21 start];
}

- (void)dealloc
{
  [(WFShortcutsAppRunnerClient *)self->_workflowRunnerClient removeObserver:self forKeyPath:@"fractionCompleted" context:WFWorkflowControllerProgressContext];
  workflowRunnerClient = self->_workflowRunnerClient;
  v4 = WFNSProgressCreateUserInfoKeyPathForKey();
  [(WFShortcutsAppRunnerClient *)workflowRunnerClient removeObserver:self forKeyPath:v4 context:WFWorkflowControllerRunningStateContext];

  v5.receiver = self;
  v5.super_class = WFLibraryRunCoordinator;
  [(WFLibraryRunCoordinator *)&v5 dealloc];
}

- (WFLibraryRunCoordinator)initWithSource:(id)a3 database:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFLibraryRunCoordinator.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"source"}];
  }

  v17.receiver = self;
  v17.super_class = WFLibraryRunCoordinator;
  v9 = [(WFLibraryRunCoordinator *)&v17 init];
  if (v9)
  {
    v10 = [v7 copy];
    source = v9->_source;
    v9->_source = v10;

    v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = v12;

    objc_storeStrong(&v9->_database, a4);
    v14 = v9;
  }

  return v9;
}

- (void)setRunningWorkflowProgress:(id)a3
{
  v4 = a3;
  [(NSProgress *)self->_runningWorkflowProgress removeObserver:self forKeyPath:@"fractionCompleted" context:WFWorkflowControllerProgressContext];
  runningWorkflowProgress = self->_runningWorkflowProgress;
  v6 = WFNSProgressCreateUserInfoKeyPathForKey();
  [(NSProgress *)runningWorkflowProgress removeObserver:self forKeyPath:v6 context:WFWorkflowControllerRunningStateContext];

  v7 = self->_runningWorkflowProgress;
  self->_runningWorkflowProgress = v4;
  v8 = v4;

  [(NSProgress *)self->_runningWorkflowProgress addObserver:self forKeyPath:@"fractionCompleted" options:4 context:WFWorkflowControllerProgressContext];
  v9 = self->_runningWorkflowProgress;
  v10 = WFNSProgressCreateUserInfoKeyPathForKey();
  [(NSProgress *)v9 addObserver:self forKeyPath:v10 options:4 context:WFWorkflowControllerRunningStateContext];
}

@end