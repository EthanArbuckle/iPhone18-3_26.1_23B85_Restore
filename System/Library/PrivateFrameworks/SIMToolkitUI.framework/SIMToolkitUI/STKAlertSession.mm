@interface STKAlertSession
- (BOOL)hasSentResponse;
- (SBSRemoteAlertHandle)alertHandle;
- (STKAlertSession)initWithLogger:(id)logger responseProvider:(id)provider options:(id)options sound:(id)sound;
- (void)_lock_sendResponse:(int64_t)response;
- (void)dealloc;
- (void)invalidate;
- (void)presentRemoteAlertHandle:(id)handle withAction:(id)action;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)sendResponse:(int64_t)response;
- (void)sendResponse:(int64_t)response withStringResult:(id)result;
@end

@implementation STKAlertSession

- (STKAlertSession)initWithLogger:(id)logger responseProvider:(id)provider options:(id)options sound:(id)sound
{
  v24 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  providerCopy = provider;
  optionsCopy = options;
  soundCopy = sound;
  _requiresResponseProvider = [objc_opt_class() _requiresResponseProvider];
  if (!providerCopy && _requiresResponseProvider)
  {
    [STKAlertSession initWithLogger:responseProvider:options:sound:];
    if (optionsCopy)
    {
      goto LABEL_4;
    }

LABEL_9:
    [STKAlertSession initWithLogger:responseProvider:options:sound:];
    goto LABEL_4;
  }

  if (!optionsCopy)
  {
    goto LABEL_9;
  }

LABEL_4:
  v21.receiver = self;
  v21.super_class = STKAlertSession;
  v16 = [(STKAlertSession *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_logger, logger);
    v17->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v17->_responseProvider, provider);
    objc_storeStrong(&v17->_options, options);
    objc_storeStrong(&v17->_sound, sound);
    logger = v17->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = v17;
      _os_log_impl(&dword_262BB4000, logger, OS_LOG_TYPE_DEFAULT, "Session <%p> - Created", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (SBSRemoteAlertHandle)alertHandle
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__STKAlertSession_alertHandle__block_invoke;
  v4[3] = &unk_279B4C860;
  v4[4] = self;
  v4[5] = &v5;
  _STKWithLock(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)presentRemoteAlertHandle:(id)handle withAction:(id)action
{
  handleCopy = handle;
  actionCopy = action;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__STKAlertSession_presentRemoteAlertHandle_withAction___block_invoke;
  v11[3] = &unk_279B4C4A0;
  v11[4] = self;
  v12 = actionCopy;
  v13 = handleCopy;
  v14 = a2;
  v9 = handleCopy;
  v10 = actionCopy;
  _STKWithLock(self, v11);
}

void __55__STKAlertSession_presentRemoteAlertHandle_withAction___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v2 + 41))
  {
    v4 = *(v2 + 48);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *v3;
      *buf = 134217984;
      *&buf[4] = v5;
      _os_log_impl(&dword_262BB4000, v4, OS_LOG_TYPE_DEFAULT, "Session <%p> - Attempted to present an already invalidated session.  Ignoring.", buf, 0xCu);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      [v6 invalidate];
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__STKAlertSession_presentRemoteAlertHandle_withAction___block_invoke_88;
      block[3] = &unk_279B4C428;
      v13 = v7;
      dispatch_async(v8, block);
    }
  }

  else
  {
    if (*(v2 + 24))
    {
      __55__STKAlertSession_presentRemoteAlertHandle_withAction___block_invoke_cold_1(a1, (a1 + 32), buf);
      v2 = *buf;
    }

    objc_storeStrong((v2 + 32), *(a1 + 40));
    objc_storeStrong((*(a1 + 32) + 24), *(a1 + 48));
    [*(*(a1 + 32) + 24) addObserver:?];
    v9 = *(*(a1 + 32) + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v3;
      *buf = 134217984;
      *&buf[4] = v10;
      _os_log_impl(&dword_262BB4000, v9, OS_LOG_TYPE_DEFAULT, "Session <%p> - Presenting remote alert", buf, 0xCu);
    }

    [*(*v3 + 24) activateWithContext:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasSentResponse
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__STKAlertSession_hasSentResponse__block_invoke;
  v4[3] = &unk_279B4C860;
  v4[4] = self;
  v4[5] = &v5;
  _STKWithLock(self, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __34__STKAlertSession_hasSentResponse__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) hasSentResponse];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)invalidate
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __29__STKAlertSession_invalidate__block_invoke;
  v2[3] = &unk_279B4C428;
  v2[4] = self;
  _STKWithLock(self, v2);
}

void __29__STKAlertSession_invalidate__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 41) & 1) == 0)
  {
    v3 = *(v1 + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 134217984;
      v14 = v4;
      _os_log_impl(&dword_262BB4000, v3, OS_LOG_TYPE_DEFAULT, "Session <%p> - Invalidated", buf, 0xCu);
    }

    [*(*(a1 + 32) + 64) stopSound];
    if (([*(*(a1 + 32) + 16) hasSentResponse] & 1) == 0)
    {
      [*(a1 + 32) _lock_sendResponse:1];
    }

    *(*(a1 + 32) + 41) = 1;
    [*(*(a1 + 32) + 24) removeObserver:?];
    [*(*(a1 + 32) + 24) invalidate];
    v5 = *(*(a1 + 32) + 32);
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = 0;

    v8 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__STKAlertSession_invalidate__block_invoke_89;
    block[3] = &unk_279B4C428;
    v12 = v5;
    v9 = v5;
    dispatch_async(v8, block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendResponse:(int64_t)response
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __32__STKAlertSession_sendResponse___block_invoke;
  v3[3] = &unk_279B4C390;
  v3[4] = self;
  v3[5] = response;
  _STKWithLock(self, v3);
}

- (void)sendResponse:(int64_t)response withStringResult:(id)result
{
  resultCopy = result;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__STKAlertSession_sendResponse_withStringResult___block_invoke;
  v8[3] = &unk_279B4C3B8;
  v9 = resultCopy;
  responseCopy = response;
  v8[4] = self;
  v7 = resultCopy;
  _STKWithLock(self, v8);
}

uint64_t __49__STKAlertSession_sendResponse_withStringResult___block_invoke(uint64_t result)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  if ((*(v1 + 41) & 1) == 0)
  {
    v2 = result;
    v3 = *(v1 + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[4];
      v5 = v2[6];
      v6 = v3;
      v7 = NSStringFromSTKSessionResponseType(v5);
      v8 = *(v2[4] + 16);
      v10 = 134218498;
      v11 = v4;
      v12 = 2114;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_262BB4000, v6, OS_LOG_TYPE_DEFAULT, "Session <%p> - Sending response with type: %{public}@ - string result: <redacted> (responsProvider: %@)", &v10, 0x20u);
    }

    result = [*(v2[4] + 16) sendResponse:v2[6] withStringResult:v2[5]];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  sound = [(STKAlertSession *)self sound];
  [sound playSound];
}

- (void)_lock_sendResponse:(int64_t)response
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_invalidated)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v6 = logger;
      v7 = NSStringFromSTKSessionResponseType(response);
      v9 = 134218242;
      selfCopy = self;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_262BB4000, v6, OS_LOG_TYPE_DEFAULT, "Session <%p> - Sending response with type: %{public}@", &v9, 0x16u);
    }

    [(STKAlertSessionResponseProvider *)self->_responseProvider sendResponse:response];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithLogger:responseProvider:options:sound:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:@"responseProvider" object:? file:? lineNumber:? description:?];
}

- (void)initWithLogger:responseProvider:options:sound:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:@"options" object:? file:? lineNumber:? description:?];
}

void __55__STKAlertSession_presentRemoteAlertHandle_withAction___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 56) object:*a2 file:@"STKAlertSession.m" lineNumber:120 description:@"Cannot set multiple alert handles for a given session."];

  *a3 = *a2;
}

@end