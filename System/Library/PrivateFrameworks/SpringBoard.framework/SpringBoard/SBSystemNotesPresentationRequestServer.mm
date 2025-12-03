@interface SBSystemNotesPresentationRequestServer
- (SBSystemNotesPresentationRequestServer)init;
- (SBSystemNotesPresentationRequestServerDelegate)delegate;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation SBSystemNotesPresentationRequestServer

- (SBSystemNotesPresentationRequestServer)init
{
  v14.receiver = self;
  v14.super_class = SBSystemNotesPresentationRequestServer;
  v2 = [(SBSystemNotesPresentationRequestServer *)&v14 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.systemNotesPresentation"];
    clientAuthenticator = v2->_clientAuthenticator;
    v2->_clientAuthenticator = v3;

    v5 = dispatch_queue_create("com.apple.SpringBoard.SBSSystemNotesPresentationRequestServer.queue", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = MEMORY[0x277CF32A0];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__SBSystemNotesPresentationRequestServer_init__block_invoke;
    v12[3] = &unk_2783A9A18;
    v8 = v2;
    v13 = v8;
    v9 = [v7 listenerWithConfigurator:v12];
    connectionListener = v8->_connectionListener;
    v8->_connectionListener = v9;
  }

  return v2;
}

void __46__SBSystemNotesPresentationRequestServer_init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66CA0] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = SBLogAppQuitMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v28 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Received Connection: %{public}@", buf, 0xCu);
  }

  v26 = 0;
  v8 = SBIsSystemNotesEnabled(&v26);
  v9 = v26;
  if (v8)
  {
    clientAuthenticator = self->_clientAuthenticator;
    remoteProcess = [connectionCopy remoteProcess];
    auditToken = [remoteProcess auditToken];
    v25 = 0;
    v13 = [(FBServiceClientAuthenticator *)clientAuthenticator authenticateAuditToken:auditToken error:&v25];
    v14 = v25;

    if (v13)
    {
      queue = self->_queue;
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __84__SBSystemNotesPresentationRequestServer_listener_didReceiveConnection_withContext___block_invoke;
      v22 = &unk_2783A92D8;
      selfCopy = self;
      v16 = connectionCopy;
      v24 = v16;
      dispatch_sync(queue, &v19);
      [v16 activate];
    }

    else
    {
      v18 = SBLogSystemNotes();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SBSystemNotesPresentationRequestServer listener:v14 didReceiveConnection:connectionCopy withContext:v18];
      }

      [connectionCopy invalidate];
    }

    v9 = v14;
  }

  else
  {
    v17 = SBLogSystemNotes();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SBSystemNotesPresentationRequestServer listener:v9 didReceiveConnection:v17 withContext:?];
    }

    [connectionCopy invalidate];
  }
}

void __84__SBSystemNotesPresentationRequestServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained server:*(a1 + 32) targetForNewClientConnection:*(a1 + 40)];

  objc_initWeak(&location, *(a1 + 32));
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__SBSystemNotesPresentationRequestServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v6[3] = &unk_2783B5D60;
  v5 = v3;
  v7 = v5;
  objc_copyWeak(&v9, &location);
  v8 = *(a1 + 32);
  [v4 configureConnection:v6];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __84__SBSystemNotesPresentationRequestServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D66CA0] serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = [MEMORY[0x277D66CA0] interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__SBSystemNotesPresentationRequestServer_listener_didReceiveConnection_withContext___block_invoke_3;
  v6[3] = &unk_2783AB6E0;
  objc_copyWeak(&v7, (a1 + 48));
  [v3 setInvalidationHandler:v6];
  [v3 setTargetQueue:*(*(a1 + 40) + 32)];
  objc_destroyWeak(&v7);
}

void __84__SBSystemNotesPresentationRequestServer_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogSystemNotes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Received Connection Invalidation: %{public}@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(WeakRetained + 1);
    [v7 server:v6 connectionDidInvalidate:v3];
  }
}

- (SBSystemNotesPresentationRequestServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(NSObject *)a2 withContext:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Service unavailable. Invalidating connection. Error: %{public}@", &v2, 0xCu);
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(uint64_t)a2 withContext:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Connection did not pass entitlement validation: %{public}@\n %{public}@", &v3, 0x16u);
}

@end