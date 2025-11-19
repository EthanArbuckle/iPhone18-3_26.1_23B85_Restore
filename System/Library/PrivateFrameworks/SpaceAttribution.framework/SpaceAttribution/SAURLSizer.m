@interface SAURLSizer
- (SAURLSizer)init;
- (void)callHandlerWithError:(id)a3;
- (void)invalidateConnection;
- (void)startObservingURLs:(id)a3 updateHandler:(id)a4;
- (void)stopObserving;
@end

@implementation SAURLSizer

- (SAURLSizer)init
{
  v3.receiver = self;
  v3.super_class = SAURLSizer;
  result = [(SAURLSizer *)&v3 init];
  if (result)
  {
    *&result->_alreadyObservingURLs = 0;
  }

  return result;
}

- (void)invalidateConnection
{
  [(SADaemonXPC *)self->_xpcOut invalidate];
  xpcOut = self->_xpcOut;
  self->_xpcOut = 0;
}

- (void)callHandlerWithError:(id)a3
{
  v4 = a3;
  sarc = self->_sarc;
  if (sarc && !self->_alreadyReportedXPCError)
  {
    self->_alreadyReportedXPCError = 1;
    [(SAReplyController *)sarc callURLSizerHandlerWithError:v4];
    v6 = self->_sarc;
    self->_sarc = 0;

    [(SAURLSizer *)self invalidateConnection];
  }

  MEMORY[0x2821F96F8]();
}

- (void)startObservingURLs:(id)a3 updateHandler:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = self;
    objc_sync_enter(v8);
    if (v8->_alreadyObservingURLs)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s can't be called more than once per URLSizer instance", "-[SAURLSizer startObservingURLs:updateHandler:]"];
      v10 = SALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        -[SAURLSizer startObservingURLs:updateHandler:].cold.1([v9 UTF8String], buf, v10);
      }

      v11 = MEMORY[0x277CCA9B8];
      v38 = *MEMORY[0x277CCA470];
      v39 = v9;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v13 = [v11 errorWithDomain:*MEMORY[0x277CCA5B8] code:17 userInfo:v12];

      v7[2](v7, 0, v13);
    }

    else
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke;
      v37[3] = &unk_279CD6CF8;
      v37[4] = v8;
      v21 = [SADaemonXPC newWithInvalidationHandler:v37];
      xpcOut = v8->_xpcOut;
      v8->_xpcOut = v21;

      v23 = objc_opt_new();
      sarc = v8->_sarc;
      v8->_sarc = v23;

      [(SAReplyController *)v8->_sarc setUrlSizerUpdateHandler:v7];
      v8->_alreadyReportedXPCError = 0;
      v25 = v8->_xpcOut;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_2;
      v35[3] = &unk_279CD6D20;
      v35[4] = v8;
      v36 = 0;
      v26 = [(SADaemonXPC *)v25 synchronousRemoteObjectProxyWithErrorHandler:v35];
      v27 = v8->_sarc;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_3;
      v34[3] = &unk_279CD6D48;
      v34[4] = v8;
      [v26 addURLSizerHandler:v27 withURLs:v6 reply:v34];

      v8->_alreadyObservingURLs = 1;
      v28 = v8->_xpcOut;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_4;
      v33[3] = &unk_279CD6CF8;
      v33[4] = v8;
      v29 = [(SADaemonXPC *)v28 remoteObjectProxyWithErrorHandler:v33];
      sizerID = v8->_sizerID;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_5;
      v32[3] = &unk_279CD6CF8;
      v32[4] = v8;
      [v29 runURLSizerWithID:sizerID reply:v32];

      v9 = 0;
      v13 = 0;
    }

    objc_sync_exit(v8);
  }

  else
  {
    v13 = SALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SAURLSizer *)v13 startObservingURLs:v14 updateHandler:v15, v16, v17, v18, v19, v20];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 16) setControllerID:v3];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;
}

void __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_5_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    [*(*(a1 + 32) + 16) callURLSizerHandlerWithError:v3];
  }
}

- (void)stopObserving
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_26B26B000, a1, a3, "%s handler is not registered", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __27__SAURLSizer_stopObserving__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __27__SAURLSizer_stopObserving__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    [*(a1 + 32) callHandlerWithError:v3];
  }
}

- (void)startObservingURLs:(os_log_t)log updateHandler:.cold.1(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_26B26B000, log, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
}

- (void)startObservingURLs:(uint64_t)a3 updateHandler:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_26B26B000, a1, a3, "%s: updateHandler is nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_5_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_26B26B000, a2, a3, "runURLSizerWithID failed with error %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __27__SAURLSizer_stopObserving__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_26B26B000, a2, a3, "stopObserving error %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end