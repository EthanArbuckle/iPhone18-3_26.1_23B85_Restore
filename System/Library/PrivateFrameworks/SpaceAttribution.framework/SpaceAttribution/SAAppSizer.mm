@interface SAAppSizer
- (SAAppSizer)init;
- (void)callHandlerWithError:(id)error;
- (void)invalidateConnection;
- (void)startObservingWithScanOptions:(unint64_t)options updateHandler:(id)handler;
- (void)stopObserving;
@end

@implementation SAAppSizer

- (SAAppSizer)init
{
  v3.receiver = self;
  v3.super_class = SAAppSizer;
  result = [(SAAppSizer *)&v3 init];
  if (result)
  {
    *&result->_handlerAlreadyRegistered = 0;
  }

  return result;
}

- (void)invalidateConnection
{
  xpcOut = self->_xpcOut;
  if (xpcOut)
  {
    [(SADaemonXPC *)xpcOut invalidate];
    v4 = self->_xpcOut;
    self->_xpcOut = 0;
  }
}

- (void)callHandlerWithError:(id)error
{
  errorCopy = error;
  sarc = self->_sarc;
  if (sarc && !self->_alreadyReportedXPCError)
  {
    self->_alreadyReportedXPCError = 1;
    [(SAReplyController *)sarc callAppSizerHandlerWithError:errorCopy];
    v6 = self->_sarc;
    self->_sarc = 0;

    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(SAAppSizer *)selfCopy invalidateConnection];
    objc_sync_exit(selfCopy);
  }

  MEMORY[0x2821F96F8]();
}

- (void)startObservingWithScanOptions:(unint64_t)options updateHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_handlerAlreadyRegistered)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s can't be called more than once per AppSizer instance", "-[SAAppSizer startObservingWithScanOptions:updateHandler:]"];
      v9 = SALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        -[SAURLSizer startObservingURLs:updateHandler:].cold.1([v8 UTF8String], buf, v9);
      }

      v10 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CCA470];
      v27 = v8;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v12 = [v10 errorWithDomain:*MEMORY[0x277CCA5B8] code:17 userInfo:v11];

      handlerCopy[2](handlerCopy, 0, v12);
    }

    else
    {
      selfCopy->_alreadyReportedXPCError = 0;
      v13 = objc_opt_new();
      sarc = selfCopy->_sarc;
      selfCopy->_sarc = v13;

      [(SAReplyController *)selfCopy->_sarc setAppSizerUpdateHandler:handlerCopy];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __58__SAAppSizer_startObservingWithScanOptions_updateHandler___block_invoke;
      v25[3] = &unk_279CD6CF8;
      v25[4] = selfCopy;
      v15 = [SADaemonXPC newWithInvalidationHandler:v25];
      xpcOut = selfCopy->_xpcOut;
      selfCopy->_xpcOut = v15;

      v17 = selfCopy->_xpcOut;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __58__SAAppSizer_startObservingWithScanOptions_updateHandler___block_invoke_2;
      v23[3] = &unk_279CD6D20;
      v23[4] = selfCopy;
      v24 = 0;
      v18 = [(SADaemonXPC *)v17 remoteObjectProxyWithErrorHandler:v23];
      v19 = selfCopy->_sarc;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __58__SAAppSizer_startObservingWithScanOptions_updateHandler___block_invoke_3;
      v22[3] = &unk_279CD6D48;
      v22[4] = selfCopy;
      [v18 addAppSizerHandler:v19 reply:v22];
      selfCopy->_handlerAlreadyRegistered = 1;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __58__SAAppSizer_startObservingWithScanOptions_updateHandler___block_invoke_4;
      v21[3] = &unk_279CD6CF8;
      v21[4] = selfCopy;
      [v18 runAppSizerWithScanOptions:options reply:v21];

      v8 = 0;
      v12 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v12 = SALog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SAAppSizer startObservingWithScanOptions:updateHandler:];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __58__SAAppSizer_startObservingWithScanOptions_updateHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = SALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_26B26B000, v4, OS_LOG_TYPE_DEFAULT, "remoteObjectProxyWithErrorHandler repliedkey: bundleID, value: AppPath with err %@", &v6, 0xCu);
    }

    [*(*(a1 + 32) + 16) callAppSizerHandlerWithError:v3];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopObserving
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __27__SAAppSizer_stopObserving__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) callHandlerWithError:v3];
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __27__SAAppSizer_stopObserving__block_invoke_cold_1();
  }
}

- (void)startObservingWithScanOptions:updateHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __27__SAAppSizer_stopObserving__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end