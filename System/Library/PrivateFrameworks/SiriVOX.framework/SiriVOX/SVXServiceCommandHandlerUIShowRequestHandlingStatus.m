@interface SVXServiceCommandHandlerUIShowRequestHandlingStatus
- (SVXServiceCommandHandlerUIShowRequestHandlingStatus)initWithSessionManager:(id)a3 performer:(id)a4;
- (SVXServiceCommandHandlerUIShowRequestHandlingStatus)initWithSessionManager:(id)a3 performer:(id)a4 afPreferencesProvider:(id)a5;
- (void)_clearLEDs;
- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6;
- (void)sessionDidResignActiveWithDeactivationContext:(id)a3;
@end

@implementation SVXServiceCommandHandlerUIShowRequestHandlingStatus

- (void)sessionDidResignActiveWithDeactivationContext:(id)a3
{
  performer = self->_performer;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __101__SVXServiceCommandHandlerUIShowRequestHandlingStatus_sessionDidResignActiveWithDeactivationContext___block_invoke;
  v4[3] = &unk_279C68FC0;
  v4[4] = self;
  [(SVXPerforming *)performer performBlock:v4 afterDelay:4.0];
}

- (void)_clearLEDs
{
  debugInterface = self->_debugInterface;
  v3 = [(SVXLEDStatusFactory *)self->_ledStatusFactory createClearLEDStatus];
  [(SBSDebugInterface *)debugInterface sendLEDCommand:v3];
}

- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (self->_shouldShowStatus)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIShowRequestHandlingStatus.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUIShowRequestHandlingStatus class]]"}];
    }

    v16 = v11;
    ledStatusFactory = self->_ledStatusFactory;
    v18 = [v16 requestHandlingStatus];
    v19 = [(SVXLEDStatusFactory *)ledStatusFactory createCommandForStatus:v18];

    if (v19)
    {
      v20 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
      {
        v24 = v20;
        v25 = [v16 requestHandlingStatus];
        *buf = 136315650;
        v28 = "[SVXServiceCommandHandlerUIShowRequestHandlingStatus handleCommand:withContext:taskTracker:completion:]";
        v29 = 2112;
        v30 = v25;
        v31 = 2112;
        v32 = v19;
        _os_log_debug_impl(&dword_2695B9000, v24, OS_LOG_TYPE_DEBUG, "%s Handling requestHandlingStatus [%@] with command [%@]", buf, 0x20u);
      }

      [(SBSDebugInterface *)self->_debugInterface sendLEDCommand:v19];
    }

    if (v15)
    {
      v21 = +[SVXServiceCommandResult resultSuccess];
      (v15)[2](v15, v21);
    }
  }

  else if (v14)
  {
    v22 = +[SVXServiceCommandResult resultSuccess];
    (v15)[2](v15, v22);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (SVXServiceCommandHandlerUIShowRequestHandlingStatus)initWithSessionManager:(id)a3 performer:(id)a4 afPreferencesProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = SVXServiceCommandHandlerUIShowRequestHandlingStatus;
  v11 = [(SVXServiceCommandHandlerUIShowRequestHandlingStatus *)&v23 init];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = [objc_opt_class() supportedCommandClass];
    v14 = NSStringFromClass(v13);
    v15 = [v12 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v14];
    identifier = v11->_identifier;
    v11->_identifier = v15;

    v17 = [v10 get];
    v11->_shouldShowStatus = [v17 siriXDebugStatusEnabled];

    if (v11->_shouldShowStatus)
    {
      objc_storeStrong(&v11->_performer, a4);
      v18 = objc_alloc_init(getSBSDebugInterfaceClass());
      debugInterface = v11->_debugInterface;
      v11->_debugInterface = v18;

      v20 = objc_alloc_init(SVXLEDStatusFactory);
      ledStatusFactory = v11->_ledStatusFactory;
      v11->_ledStatusFactory = v20;

      [v8 addActivityListener:v11];
    }
  }

  return v11;
}

- (SVXServiceCommandHandlerUIShowRequestHandlingStatus)initWithSessionManager:(id)a3 performer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(SVXAFPreferencesProvider);
  v9 = [(SVXServiceCommandHandlerUIShowRequestHandlingStatus *)self initWithSessionManager:v7 performer:v6 afPreferencesProvider:v8];

  return v9;
}

@end