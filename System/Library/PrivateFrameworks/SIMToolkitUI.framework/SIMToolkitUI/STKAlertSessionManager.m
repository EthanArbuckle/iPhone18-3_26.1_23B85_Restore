@interface STKAlertSessionManager
- (STKAlertSessionManager)initWithEventQueue:(id)a3 logger:(id)a4;
- (void)enqueuePresentationForSession:(id)a3 completion:(id)a4;
@end

@implementation STKAlertSessionManager

- (STKAlertSessionManager)initWithEventQueue:(id)a3 logger:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = STKAlertSessionManager;
  v9 = [(STKAlertSessionManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventQueue, a3);
    objc_storeStrong(&v10->_log, a4);
  }

  return v10;
}

- (void)enqueuePresentationForSession:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(STKAlertSessionManager *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = v6;
    _os_log_impl(&dword_262BB4000, v8, OS_LOG_TYPE_DEFAULT, "Session <%p> - Enqueing for presentation", buf, 0xCu);
  }

  eventQueue = self->_eventQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__STKAlertSessionManager_enqueuePresentationForSession_completion___block_invoke;
  v13[3] = &unk_279B4C3E0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [(STKAlertSessionEventQueue *)eventQueue enqueue:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __67__STKAlertSessionManager_enqueuePresentationForSession_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) remoteAlertDescriptorForSession:*(a1 + 40)];
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v23 = 134218242;
    v24 = v4;
    v25 = 2114;
    v26 = v2;
    _os_log_impl(&dword_262BB4000, v3, OS_LOG_TYPE_DEFAULT, "Session <%p> - Remote alert descriptor: %{public}@", &v23, 0x16u);
  }

  if ([v2 isValid])
  {
    v5 = objc_alloc(MEMORY[0x277D66BD8]);
    v6 = [v2 serviceIdentifier];
    v7 = [v2 viewControllerName];
    v8 = [v5 initWithServiceName:v6 viewControllerClassName:v7];

    v9 = objc_alloc_init(MEMORY[0x277D66BD0]);
    v10 = MEMORY[0x277CBEB98];
    v11 = [v2 BSAction];
    v12 = [v10 setWithObject:v11];
    [v9 setActions:v12];

    v13 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [*(a1 + 40) ussdListener];
      v15 = [v14 endpoint];
      v16 = [v15 _endpoint];
      [v9 setXpcEndpoint:v16];
    }

    v17 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v8 configurationContext:v9];
    [*(a1 + 32) _willPresentAlertHandle:v17];
    v18 = *(a1 + 40);
    v19 = [v2 action];
    [v18 presentRemoteAlertHandle:v17 withAction:v19];

    if (!v17)
    {
      [*(a1 + 40) sendResponse:5];
      [*(a1 + 40) invalidate];
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v17 != 0);
  }

  else
  {
    v20 = [*(a1 + 32) log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 40);
      v23 = 134217984;
      v24 = v21;
      _os_log_impl(&dword_262BB4000, v20, OS_LOG_TYPE_DEFAULT, "Session <%p> - Failed to create a remote alert.  Invalidating.", &v23, 0xCu);
    }

    [*(a1 + 40) invalidate];
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end