@interface SVXServiceCommandHandlerClientCoordinationPhoneCall
- (SVXServiceCommandHandlerClientCoordinationPhoneCall)initWithSessionManager:(id)manager;
- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion;
@end

@implementation SVXServiceCommandHandlerClientCoordinationPhoneCall

- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerClientCoordinationPhoneCall.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAPhoneClientCoordinationPhoneCall class]]"}];
  }

  if ([commandCopy emergencyCall])
  {
    sessionManager = self->_sessionManager;
    if (objc_opt_respondsToSelector())
    {
      [(SVXSessionManager *)self->_sessionManager initiateEmergency:completionCopy];
    }
  }

  else if (completionCopy)
  {
    v11 = [SVXServiceCommandResult resultFailureWithErrorCode:-1 reason:@"unsupported type"];
    completionCopy[2](completionCopy, v11);
  }
}

- (SVXServiceCommandHandlerClientCoordinationPhoneCall)initWithSessionManager:(id)manager
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = SVXServiceCommandHandlerClientCoordinationPhoneCall;
  v6 = [(SVXServiceCommandHandlerClientCoordinationPhoneCall *)&v14 init];
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