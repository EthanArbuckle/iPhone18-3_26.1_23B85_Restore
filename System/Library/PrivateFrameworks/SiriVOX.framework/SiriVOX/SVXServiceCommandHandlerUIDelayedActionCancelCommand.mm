@interface SVXServiceCommandHandlerUIDelayedActionCancelCommand
- (SVXServiceCommandHandlerUIDelayedActionCancelCommand)initWithDelayedActionStore:(id)store performer:(id)performer;
- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion;
@end

@implementation SVXServiceCommandHandlerUIDelayedActionCancelCommand

- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIDelayedActionCancelCommand.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUIDelayedActionCancelCommand class]]"}];
  }

  delayedActionAceId = [commandCopy delayedActionAceId];
  performer = self->_performer;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __105__SVXServiceCommandHandlerUIDelayedActionCancelCommand_handleCommand_withContext_taskTracker_completion___block_invoke;
  v16[3] = &unk_279C68EA8;
  v16[4] = self;
  v17 = delayedActionAceId;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = delayedActionAceId;
  [(SVXPerforming *)performer performBlock:v16];
}

void __105__SVXServiceCommandHandlerUIDelayedActionCancelCommand_handleCommand_withContext_taskTracker_completion___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 8) actionForKey:a1[5]];
  if (v5)
  {
    [*(a1[4] + 8) removeActionForKey:a1[5]];
    v2 = a1[6];
    if (!v2)
    {
      goto LABEL_7;
    }

    v3 = +[SVXServiceCommandResult resultSuccess];
  }

  else
  {
    v2 = a1[6];
    if (!v2)
    {
      goto LABEL_7;
    }

    v3 = [SVXServiceCommandResult resultFailureWithErrorCode:0 reason:@"Unable to find the delayed action cached locally to cancel."];
  }

  v4 = v3;
  (*(v2 + 16))(v2, v3);

LABEL_7:
}

- (SVXServiceCommandHandlerUIDelayedActionCancelCommand)initWithDelayedActionStore:(id)store performer:(id)performer
{
  storeCopy = store;
  performerCopy = performer;
  v17.receiver = self;
  v17.super_class = SVXServiceCommandHandlerUIDelayedActionCancelCommand;
  v9 = [(SVXServiceCommandHandlerUIDelayedActionCancelCommand *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_delayedActionStore, store);
    objc_storeStrong(&v10->_performer, performer);
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    supportedCommandClass = [objc_opt_class() supportedCommandClass];
    v13 = NSStringFromClass(supportedCommandClass);
    v14 = [v11 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v13];
    identifier = v10->_identifier;
    v10->_identifier = v14;
  }

  return v10;
}

@end