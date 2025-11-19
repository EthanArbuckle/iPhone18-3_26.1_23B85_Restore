@interface SVXServiceCommandHandlerUIDelayedActionCommand
- (SVXServiceCommandHandlerUIDelayedActionCommand)initWithDelayedActionStore:(id)a3 sessionManager:(id)a4 performer:(id)a5;
- (void)_performDelayedAction:(id)a3;
- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6;
@end

@implementation SVXServiceCommandHandlerUIDelayedActionCommand

- (void)_performDelayedAction:(id)a3
{
  v4 = a3;
  v5 = [v4 command];
  v6 = [v5 commands];
  v7 = [v4 taskTracker];

  sessionManager = self->_sessionManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__SVXServiceCommandHandlerUIDelayedActionCommand__performDelayedAction___block_invoke;
  v11[3] = &unk_279C67838;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIDelayedActionCommand.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUIDelayedActionCommand class]]"}];
  }

  v13 = v10;
  v14 = [v13 aceId];
  performer = self->_performer;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __99__SVXServiceCommandHandlerUIDelayedActionCommand_handleCommand_withContext_taskTracker_completion___block_invoke;
  v28[3] = &unk_279C68930;
  v16 = v13;
  v29 = v16;
  v17 = v11;
  v30 = v17;
  v31 = self;
  v18 = v14;
  v32 = v18;
  [(SVXPerforming *)performer performBlock:v28];
  v19 = [v16 timerValue];
  [v19 doubleValue];
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
  if (v12)
  {
    v24 = +[SVXServiceCommandResult resultSuccess];
    v12[2](v12, v24);
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

- (SVXServiceCommandHandlerUIDelayedActionCommand)initWithDelayedActionStore:(id)a3 sessionManager:(id)a4 performer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = SVXServiceCommandHandlerUIDelayedActionCommand;
  v12 = [(SVXServiceCommandHandlerUIDelayedActionCommand *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_delayedActionStore, a3);
    objc_storeStrong(&v13->_sessionManager, a4);
    objc_storeStrong(&v13->_performer, a5);
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [objc_opt_class() supportedCommandClass];
    v16 = NSStringFromClass(v15);
    v17 = [v14 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v16];
    identifier = v13->_identifier;
    v13->_identifier = v17;
  }

  return v13;
}

@end