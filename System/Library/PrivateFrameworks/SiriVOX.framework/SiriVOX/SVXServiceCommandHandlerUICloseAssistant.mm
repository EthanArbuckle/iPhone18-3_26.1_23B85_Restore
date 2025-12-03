@interface SVXServiceCommandHandlerUICloseAssistant
- (SVXServiceCommandHandlerUICloseAssistant)initWithSessionManager:(id)manager;
- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion;
@end

@implementation SVXServiceCommandHandlerUICloseAssistant

- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion
{
  completionCopy = completion;
  commandCopy = command;
  v11 = mach_absolute_time();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUICloseAssistant.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUICloseAssistant class]]"}];
  }

  sessionManager = self->_sessionManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __93__SVXServiceCommandHandlerUICloseAssistant_handleCommand_withContext_taskTracker_completion___block_invoke;
  v16[3] = &__block_descriptor_40_e20_v16__0__SVXSession_8l;
  v16[4] = v11;
  [(SVXSessionManager *)sessionManager getCurrentSessionUsingBlock:v16];
  if (completionCopy)
  {
    v14 = +[SVXServiceCommandResult resultSuccess];
    completionCopy[2](completionCopy, v14);
  }
}

void __93__SVXServiceCommandHandlerUICloseAssistant_handleCommand_withContext_taskTracker_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SVXDeactivationContext alloc];
  v5 = *(a1 + 32);
  v7 = SVXClientInfoGetCurrent();
  v6 = [(SVXDeactivationContext *)v4 initWithSource:4 timestamp:v5 buttonEvent:0 clientInfo:v7 userInfo:0 options:0];
  [v3 deactivateWithContext:v6 completion:0];
}

- (SVXServiceCommandHandlerUICloseAssistant)initWithSessionManager:(id)manager
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = SVXServiceCommandHandlerUICloseAssistant;
  v6 = [(SVXServiceCommandHandlerUICloseAssistant *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionManager, manager);
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    supportedCommandClass = [objc_opt_class() supportedCommandClass];
    v10 = NSStringFromClass(supportedCommandClass);
    v11 = [v8 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v10];
    identifier = v7->_identifier;
    v7->_identifier = v11;
  }

  return v7;
}

@end