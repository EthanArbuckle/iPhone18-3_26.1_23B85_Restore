@interface WFLibraryRunCoordinator
- (WFLibraryRunCoordinator)initWithSource:(id)source database:(id)database;
- (WFLibraryRunCoordinatorDelegate)delegate;
- (id)view;
- (void)accessibilityAnnounce:(id)announce;
- (void)dealloc;
- (void)didFinishRunningWorkflow:(id)workflow withError:(id)error;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openWorkflowReferenceAndRun:(id)run fromSource:(id)source withInput:(id)input state:(id)state requestOutput:(BOOL)output runViewSource:(id)viewSource completionHandler:(id)handler;
- (void)registerObserver:(id)observer;
- (void)runAppShortcut:(id)shortcut withLNAction:(id)action andMetadata:(id)metadata;
- (void)runContextualAction:(id)action;
- (void)setRunningWorkflowProgress:(id)progress;
- (void)stop;
- (void)unregisterObserver:(id)observer;
- (void)updateProgress:(double)progress waiting:(BOOL)waiting cancelled:(BOOL)cancelled forWorkflow:(id)workflow;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress;
@end

@implementation WFLibraryRunCoordinator

- (WFLibraryRunCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  v58[1] = *MEMORY[0x277D85DE8];
  outputCopy = output;
  errorCopy = error;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  runningWorkflow = [(WFLibraryRunCoordinator *)self runningWorkflow];
  if (errorCopy)
  {
    v12 = 1;
  }

  else
  {
    v12 = cancelledCopy;
  }

  if (v12)
  {
    v13 = -1.0;
  }

  else
  {
    v13 = 1.0;
  }

  runningWorkflow2 = [(WFLibraryRunCoordinator *)self runningWorkflow];
  [(WFLibraryRunCoordinator *)self updateProgress:0 waiting:cancelledCopy cancelled:runningWorkflow2 forWorkflow:v13];

  [(WFLibraryRunCoordinator *)self progress];
  if (v15 != -1.0)
  {
    runningWorkflow3 = [(WFLibraryRunCoordinator *)self runningWorkflow];
    [(WFLibraryRunCoordinator *)self updateProgress:0 waiting:0 cancelled:runningWorkflow3 forWorkflow:-1.0];
  }

  [(WFLibraryRunCoordinator *)self setRunningWorkflow:0];
  [(WFLibraryRunCoordinator *)self setRunViewSource:0];
  runningAppShortcut = [(WFLibraryRunCoordinator *)self runningAppShortcut];
  [(WFLibraryRunCoordinator *)self setRunningAppShortcut:0];
  userInfo = [errorCopy userInfo];
  v19 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D7D098]];

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

  if (errorCopy)
  {
    if (WFErrorIsRemoteQuarantineDenialError())
    {
      v51 = MEMORY[0x277D85DD0];
      v52 = 3221225472;
      v53 = __99__WFLibraryRunCoordinator_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke;
      v54 = &unk_279EE8C58;
      selfCopy = self;
      v56 = runningWorkflow;
      v22 = WFAddRecoveryOptionsToRemoteQuarantineDenialError();

      errorCopy = v22;
    }

    else if (v21)
    {
      delegate = [(WFLibraryRunCoordinator *)self delegate];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        userInfo2 = [errorCopy userInfo];
        v26 = [userInfo2 mutableCopy];

        v27 = WFLocalizedString(@"Show");
        v28 = WFLocalizedString(@"OK");
        v45 = v28;
        v46 = runningAppShortcut;
        v44 = v27;
        if (runningAppShortcut)
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
        v48 = runningWorkflow;
        selfCopy2 = self;
        v50 = v21;
        v32 = [v31 initWithHandlerBlock:v47];
        [v26 setObject:v32 forKeyedSubscript:*MEMORY[0x277CCA658]];
        v33 = MEMORY[0x277CCA9B8];
        [errorCopy domain];
        v35 = v34 = v26;
        v36 = [v33 errorWithDomain:v35 code:objc_msgSend(errorCopy userInfo:{"code"), v34}];

        errorCopy = v36;
        runningAppShortcut = v46;
      }
    }
  }

  completionHandler = [(WFLibraryRunCoordinator *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFLibraryRunCoordinator *)self completionHandler];
    (completionHandler2)[2](completionHandler2, outputCopy, cancelledCopy, errorCopy);

    [(WFLibraryRunCoordinator *)self setCompletionHandler:0];
  }

  if (cancelledCopy)
  {
    userCancelledError = [MEMORY[0x277CCA9B8] userCancelledError];
    [(WFLibraryRunCoordinator *)self didFinishRunningWorkflow:runningWorkflow withError:userCancelledError];

    if (errorCopy)
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

  [(WFLibraryRunCoordinator *)self didFinishRunningWorkflow:runningWorkflow withError:errorCopy];
  if (!errorCopy)
  {
    goto LABEL_31;
  }

  if (!completionHandler)
  {
    delegate2 = [(WFLibraryRunCoordinator *)self delegate];
    v42 = [delegate2 runCoordinator:self userInterfaceForWorkflow:runningWorkflow];

    v43 = [MEMORY[0x277CFC218] alertWithError:errorCopy];
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

- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress
{
  [(WFLibraryRunCoordinator *)self setRunningWorkflowProgress:progress];
  runningWorkflow = [(WFLibraryRunCoordinator *)self runningWorkflow];
  [(WFLibraryRunCoordinator *)self updateProgress:0 waiting:0 cancelled:runningWorkflow forWorkflow:0.0];

  v6 = WFLocalizedString(@"Running shortcut");
  [(WFLibraryRunCoordinator *)self accessibilityAnnounce:v6];
}

- (void)accessibilityAnnounce:(id)announce
{
  announceCopy = announce;
  delegate = [(WFLibraryRunCoordinator *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFLibraryRunCoordinator *)self delegate];
    [delegate2 runCoordinator:self accessibilityAnnounce:announceCopy];
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(WFLibraryRunCoordinator *)self observers];
  [observers removeObject:observerCopy];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(WFLibraryRunCoordinator *)self observers];
  [observers addObject:observerCopy];
}

- (void)updateProgress:(double)progress waiting:(BOOL)waiting cancelled:(BOOL)cancelled forWorkflow:(id)workflow
{
  cancelledCopy = cancelled;
  waitingCopy = waiting;
  v23 = *MEMORY[0x277D85DE8];
  workflowCopy = workflow;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  *&v10 = progress;
  [(WFLibraryRunCoordinator *)self setProgress:v10];
  [(WFLibraryRunCoordinator *)self setWaiting:waitingCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  observers = [(WFLibraryRunCoordinator *)self observers];
  v12 = [observers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(observers);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 runCoordinator:self didChangeRunningStateWithProgress:waitingCopy waiting:workflowCopy forWorkflow:progress];
        }

        if (objc_opt_respondsToSelector())
        {
          [v16 runCoordinator:self didChangeRunningStateWithProgress:waitingCopy waiting:cancelledCopy cancelled:workflowCopy forWorkflow:progress];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [observers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (void)didFinishRunningWorkflow:(id)workflow withError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  workflowCopy = workflow;
  errorCopy = error;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  observers = [(WFLibraryRunCoordinator *)self observers];
  v9 = [observers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(observers);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 runCoordinator:self didFinishRunningWorkflow:workflowCopy withError:errorCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [observers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  workflowRunnerClient = self->_workflowRunnerClient;
  self->_workflowRunnerClient = 0;

  [(WFLibraryRunCoordinator *)self setRunningWorkflowProgress:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (WFWorkflowControllerProgressContext == context || WFWorkflowControllerRunningStateContext == context)
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
    [(WFLibraryRunCoordinator *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
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
  delegate = [(WFLibraryRunCoordinator *)self delegate];
  runningWorkflow = [(WFLibraryRunCoordinator *)self runningWorkflow];
  v5 = [delegate runCoordinator:self userInterfaceForWorkflow:runningWorkflow];

  userInterfaceType = [v5 userInterfaceType];
  LODWORD(runningWorkflow) = [userInterfaceType isEqualToString:*MEMORY[0x277CFC710]];

  if (runningWorkflow)
  {
    v7 = WFViewControllerFromUserInterface();
    view = [v7 view];
  }

  else
  {
    view = 0;
  }

  return view;
}

- (void)stop
{
  workflowRunnerClient = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [workflowRunnerClient stop];
}

- (void)openWorkflowReferenceAndRun:(id)run fromSource:(id)source withInput:(id)input state:(id)state requestOutput:(BOOL)output runViewSource:(id)viewSource completionHandler:(id)handler
{
  outputCopy = output;
  runCopy = run;
  sourceCopy = source;
  inputCopy = input;
  stateCopy = state;
  viewSourceCopy = viewSource;
  handlerCopy = handler;
  if (!sourceCopy)
  {
    sourceCopy = [(WFLibraryRunCoordinator *)self source];
  }

  [(WFLibraryRunCoordinator *)self setCompletionHandler:handlerCopy];
  workflowRunnerClient = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [workflowRunnerClient stop];

  [(WFLibraryRunCoordinator *)self setRunningWorkflow:runCopy];
  [(WFLibraryRunCoordinator *)self setRunViewSource:viewSourceCopy];
  v21 = [objc_alloc(MEMORY[0x277D7C8A0]) initWithWorkflow:runCopy state:stateCopy runSource:sourceCopy input:inputCopy remoteDialogPresenterEndpoint:0 requestOutput:outputCopy];
  [(WFLibraryRunCoordinator *)self setWorkflowRunnerClient:v21];

  workflowRunnerClient2 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [workflowRunnerClient2 setDelegate:self];

  workflowRunnerClient3 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  runRequest = [workflowRunnerClient3 runRequest];
  [runRequest setRunViewSource:viewSourceCopy];

  workflowRunnerClient4 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [workflowRunnerClient4 start];
}

- (void)runContextualAction:(id)action
{
  actionCopy = action;
  workflowRunnerClient = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [workflowRunnerClient stop];

  v6 = [objc_alloc(MEMORY[0x277D7C8A0]) initWithContextualAction:actionCopy];
  [(WFLibraryRunCoordinator *)self setWorkflowRunnerClient:v6];

  workflowRunnerClient2 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [workflowRunnerClient2 setDelegate:self];

  workflowRunnerClient3 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [workflowRunnerClient3 start];
}

- (void)runAppShortcut:(id)shortcut withLNAction:(id)action andMetadata:(id)metadata
{
  metadataCopy = metadata;
  actionCopy = action;
  shortcutCopy = shortcut;
  workflowRunnerClient = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [workflowRunnerClient stop];

  v12 = objc_alloc(MEMORY[0x277D23850]);
  underlyingAutoShortcut = [shortcutCopy underlyingAutoShortcut];
  actionIdentifier = [underlyingAutoShortcut actionIdentifier];
  underlyingAutoShortcut2 = [shortcutCopy underlyingAutoShortcut];
  bundleIdentifier = [underlyingAutoShortcut2 bundleIdentifier];
  v22 = [v12 initWithActionIdentifier:actionIdentifier bundleIdentifier:bundleIdentifier];

  [(WFLibraryRunCoordinator *)self setRunningAppShortcut:shortcutCopy];
  v17 = objc_alloc(MEMORY[0x277D7C8A0]);
  triggerPhrase = [shortcutCopy triggerPhrase];

  v19 = [v17 initWithIdentifier:v22 name:triggerPhrase action:actionCopy metadata:metadataCopy runSource:*MEMORY[0x277D7A828] remoteDialogPresenterEndpoint:0];
  [(WFLibraryRunCoordinator *)self setWorkflowRunnerClient:v19];

  workflowRunnerClient2 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [workflowRunnerClient2 setDelegate:self];

  workflowRunnerClient3 = [(WFLibraryRunCoordinator *)self workflowRunnerClient];
  [workflowRunnerClient3 start];
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

- (WFLibraryRunCoordinator)initWithSource:(id)source database:(id)database
{
  sourceCopy = source;
  databaseCopy = database;
  if (!sourceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFLibraryRunCoordinator.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"source"}];
  }

  v17.receiver = self;
  v17.super_class = WFLibraryRunCoordinator;
  v9 = [(WFLibraryRunCoordinator *)&v17 init];
  if (v9)
  {
    v10 = [sourceCopy copy];
    source = v9->_source;
    v9->_source = v10;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = weakObjectsHashTable;

    objc_storeStrong(&v9->_database, database);
    v14 = v9;
  }

  return v9;
}

- (void)setRunningWorkflowProgress:(id)progress
{
  progressCopy = progress;
  [(NSProgress *)self->_runningWorkflowProgress removeObserver:self forKeyPath:@"fractionCompleted" context:WFWorkflowControllerProgressContext];
  runningWorkflowProgress = self->_runningWorkflowProgress;
  v6 = WFNSProgressCreateUserInfoKeyPathForKey();
  [(NSProgress *)runningWorkflowProgress removeObserver:self forKeyPath:v6 context:WFWorkflowControllerRunningStateContext];

  v7 = self->_runningWorkflowProgress;
  self->_runningWorkflowProgress = progressCopy;
  v8 = progressCopy;

  [(NSProgress *)self->_runningWorkflowProgress addObserver:self forKeyPath:@"fractionCompleted" options:4 context:WFWorkflowControllerProgressContext];
  v9 = self->_runningWorkflowProgress;
  v10 = WFNSProgressCreateUserInfoKeyPathForKey();
  [(NSProgress *)v9 addObserver:self forKeyPath:v10 options:4 context:WFWorkflowControllerRunningStateContext];
}

@end