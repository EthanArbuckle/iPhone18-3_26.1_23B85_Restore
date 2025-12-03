@interface SVXServiceCommandHandlerUIDelayedActionCommand
- (SVXServiceCommandHandlerUIDelayedActionCommand)initWithDelayedActionStore:(id)store sessionManager:(id)manager performer:(id)performer;
- (void)_performDelayedAction:(id)action;
- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion;
@end

@implementation SVXServiceCommandHandlerUIDelayedActionCommand

- (void)_performDelayedAction:(id)action
{
  actionCopy = action;
  command = [actionCopy command];
  commands = [command commands];
  taskTracker = [actionCopy taskTracker];

  sessionManager = self->_sessionManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__SVXServiceCommandHandlerUIDelayedActionCommand__performDelayedAction___block_invoke;
  v11[3] = &unk_279C67838;
  v12 = commands;
  v13 = taskTracker;
  v9 = taskTracker;
  v10 = commands;
  [(SVXSessionManager *)sessionManager getCurrentSessionUsingBlock:v11];
}

void __72__SVXServiceCommandHandlerUIDelayedActionCommand__performDelayedAction___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 handleCommand:*(*(&v10 + 1) + 8 * v8++) taskTracker:{*(a1 + 40), v10}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion
{
  commandCopy = command;
  trackerCopy = tracker;
  completionCopy = completion;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIDelayedActionCommand.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUIDelayedActionCommand class]]"}];
  }

  v13 = commandCopy;
  aceId = [v13 aceId];
  performer = self->_performer;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __99__SVXServiceCommandHandlerUIDelayedActionCommand_handleCommand_withContext_taskTracker_completion___block_invoke;
  v28[3] = &unk_279C68930;
  v16 = v13;
  v29 = v16;
  v17 = trackerCopy;
  v30 = v17;
  selfCopy = self;
  v18 = aceId;
  v32 = v18;
  [(SVXPerforming *)performer performBlock:v28];
  timerValue = [v16 timerValue];
  [timerValue doubleValue];
  v21 = v20;

  v22 = self->_performer;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __99__SVXServiceCommandHandlerUIDelayedActionCommand_handleCommand_withContext_taskTracker_completion___block_invoke_2;
  v26[3] = &unk_279C68FE8;
  v26[4] = self;
  v23 = v18;
  v27 = v23;
  [(SVXPerforming *)v22 performBlock:v26 afterDelay:v21 / 1000.0];
  if (completionCopy)
  {
    v24 = +[SVXServiceCommandResult resultSuccess];
    completionCopy[2](completionCopy, v24);
  }
}

void __99__SVXServiceCommandHandlerUIDelayedActionCommand_handleCommand_withContext_taskTracker_completion___block_invoke(void *a1)
{
  v2 = [[SVXServiceCommandDelayedAction alloc] initWithCommand:a1[4] taskTracker:a1[5]];
  [*(a1[6] + 8) setAction:v2 forKey:a1[7]];
}

uint64_t __99__SVXServiceCommandHandlerUIDelayedActionCommand_handleCommand_withContext_taskTracker_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) actionForKey:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _performDelayedAction:v2];
    [*(*(a1 + 32) + 8) removeActionForKey:*(a1 + 40)];
  }

  return MEMORY[0x2821F96F8]();
}

- (SVXServiceCommandHandlerUIDelayedActionCommand)initWithDelayedActionStore:(id)store sessionManager:(id)manager performer:(id)performer
{
  storeCopy = store;
  managerCopy = manager;
  performerCopy = performer;
  v20.receiver = self;
  v20.super_class = SVXServiceCommandHandlerUIDelayedActionCommand;
  v12 = [(SVXServiceCommandHandlerUIDelayedActionCommand *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_delayedActionStore, store);
    objc_storeStrong(&v13->_sessionManager, manager);
    objc_storeStrong(&v13->_performer, performer);
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    supportedCommandClass = [objc_opt_class() supportedCommandClass];
    v16 = NSStringFromClass(supportedCommandClass);
    v17 = [v14 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v16];
    identifier = v13->_identifier;
    v13->_identifier = v17;
  }

  return v13;
}

@end