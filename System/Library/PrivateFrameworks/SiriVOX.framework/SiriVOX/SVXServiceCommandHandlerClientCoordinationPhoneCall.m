@interface SVXServiceCommandHandlerClientCoordinationPhoneCall
- (SVXServiceCommandHandlerClientCoordinationPhoneCall)initWithSessionManager:(id)a3;
- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6;
@end

@implementation SVXServiceCommandHandlerClientCoordinationPhoneCall

- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6
{
  v13 = a3;
  v9 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerClientCoordinationPhoneCall.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAPhoneClientCoordinationPhoneCall class]]"}];
  }

  if ([v13 emergencyCall])
  {
    sessionManager = self->_sessionManager;
    if (objc_opt_respondsToSelector())
    {
      [(SVXSessionManager *)self->_sessionManager initiateEmergency:v9];
    }
  }

  else if (v9)
  {
    v11 = [SVXServiceCommandResult resultFailureWithErrorCode:-1 reason:@"unsupported type"];
    v9[2](v9, v11);
  }
}

- (SVXServiceCommandHandlerClientCoordinationPhoneCall)initWithSessionManager:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SVXServiceCommandHandlerClientCoordinationPhoneCall;
  v6 = [(SVXServiceCommandHandlerClientCoordinationPhoneCall *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionManager, a3);
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = [objc_opt_class() supportedCommandClass];
    v10 = NSStringFromClass(v9);
    v11 = [v8 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v10];
    identifier = v7->_identifier;
    v7->_identifier = v11;
  }

  return v7;
}

@end