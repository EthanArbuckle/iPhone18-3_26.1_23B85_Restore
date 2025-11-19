@interface STKSIMToolkitAlertSession
- (STKSIMToolkitAlertSession)initWithLogger:(id)a3 responseProvider:(id)a4 event:(int64_t)a5 options:(id)a6 behavior:(id)a7 sound:(id)a8;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)sendResponse:(int64_t)a3 withBOOLResult:(BOOL)a4;
- (void)sendSuccessWithSelectedIndex:(unint64_t)a3;
@end

@implementation STKSIMToolkitAlertSession

- (STKSIMToolkitAlertSession)initWithLogger:(id)a3 responseProvider:(id)a4 event:(int64_t)a5 options:(id)a6 behavior:(id)a7 sound:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (!v17)
  {
    [STKSIMToolkitAlertSession initWithLogger:responseProvider:event:options:behavior:sound:];
  }

  v22.receiver = self;
  v22.super_class = STKSIMToolkitAlertSession;
  v19 = [(STKAlertSession *)&v22 initWithLogger:v14 responseProvider:v15 options:v16 sound:v18];
  v20 = v19;
  if (v19)
  {
    v19->_event = a5;
    objc_storeStrong(&v19->_behavior, a7);
  }

  return v20;
}

- (void)sendResponse:(int64_t)a3 withBOOLResult:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__STKSIMToolkitAlertSession_sendResponse_withBOOLResult___block_invoke;
  v4[3] = &unk_279B4C820;
  v4[4] = self;
  v4[5] = a3;
  v5 = a4;
  _STKWithLock(self, v4);
}

uint64_t __57__STKSIMToolkitAlertSession_sendResponse_withBOOLResult___block_invoke(uint64_t result)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  if ((*(v1 + 41) & 1) == 0)
  {
    v2 = result;
    v3 = *(v1 + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v2 + 32);
      v4 = *(v2 + 40);
      v6 = v3;
      v7 = NSStringFromSTKSessionResponseType(v4);
      v8 = *(v2 + 48);
      v10 = 134218498;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&dword_262BB4000, v6, OS_LOG_TYPE_DEFAULT, "Session <%p> - Sending response with type: %{public}@ - BOOL result: %d", &v10, 0x1Cu);
    }

    result = [*(*(v2 + 32) + 16) sendResponse:*(v2 + 40) withBOOLResult:*(v2 + 48)];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)sendSuccessWithSelectedIndex:(unint64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__STKSIMToolkitAlertSession_sendSuccessWithSelectedIndex___block_invoke;
  v3[3] = &unk_279B4C390;
  v3[4] = self;
  v3[5] = a3;
  _STKWithLock(self, v3);
}

uint64_t __58__STKSIMToolkitAlertSession_sendSuccessWithSelectedIndex___block_invoke(uint64_t result)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  if ((*(v1 + 41) & 1) == 0)
  {
    v2 = result;
    v3 = *(v1 + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v2 + 32);
      v5 = *(v2 + 40);
      v7 = 134218498;
      v8 = v4;
      v9 = 2114;
      v10 = @"Success";
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_262BB4000, v3, OS_LOG_TYPE_DEFAULT, "Session <%p> - Sending response with type: %{public}@ - index result: %lu", &v7, 0x20u);
    }

    result = [*(*(v2 + 32) + 16) sendSuccessWithSelectedIndex:*(v2 + 40)];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = STKSIMToolkitAlertSession;
  [(STKAlertSession *)&v8 remoteAlertHandleDidActivate:a3];
  logger = self->super._logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = self;
    _os_log_impl(&dword_262BB4000, logger, OS_LOG_TYPE_DEFAULT, "Session <%p> - UI was presented.", buf, 0xCu);
  }

  v5 = [(STKSIMToolkitAlertSession *)self behavior];
  v6 = [v5 shouldSendResponseUponDisplay];

  if (v6)
  {
    [(STKAlertSession *)self sendResponse:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithLogger:responseProvider:event:options:behavior:sound:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  [v0 handleFailureInMethod:@"behavior" object:? file:? lineNumber:? description:?];
}

@end