@interface SBInCallPresentationRequestServer
- (SBInCallPresentationRequestServer)init;
- (SBInCallPresentationRequestServerDelegate)delegate;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)presentWithConfiguration:(id)a3 completion:(id)a4;
@end

@implementation SBInCallPresentationRequestServer

- (SBInCallPresentationRequestServer)init
{
  v14.receiver = self;
  v14.super_class = SBInCallPresentationRequestServer;
  v2 = [(SBInCallPresentationRequestServer *)&v14 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.inCallPresentation"];
    clientAuthenticator = v2->_clientAuthenticator;
    v2->_clientAuthenticator = v3;

    v5 = dispatch_queue_create("com.apple.SpringBoard.SBSInCallPresentationRequestServer.queue", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = MEMORY[0x277CF32A0];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__SBInCallPresentationRequestServer_init__block_invoke;
    v12[3] = &unk_2783A9A18;
    v8 = v2;
    v13 = v8;
    v9 = [v7 listenerWithConfigurator:v12];
    connectionListener = v8->_connectionListener;
    v8->_connectionListener = v9;
  }

  return v2;
}

void __41__SBInCallPresentationRequestServer_init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66AF8] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogInCallPresentation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Received Connection: %{public}@", buf, 0xCu);
  }

  clientAuthenticator = self->_clientAuthenticator;
  v9 = [v6 remoteProcess];
  v10 = [v9 auditToken];
  LODWORD(clientAuthenticator) = [(FBServiceClientAuthenticator *)clientAuthenticator authenticateAuditToken:v10];

  if (clientAuthenticator)
  {
    queue = self->_queue;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __79__SBInCallPresentationRequestServer_listener_didReceiveConnection_withContext___block_invoke;
    v17 = &unk_2783A92D8;
    v12 = v6;
    v18 = v12;
    v19 = self;
    dispatch_sync(queue, &v14);
    [v12 activate];
  }

  else
  {
    v13 = SBLogInCallPresentation();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SBInCallPresentationRequestServer listener:v13 didReceiveConnection:? withContext:?];
    }

    [v6 invalidate];
  }
}

void __79__SBInCallPresentationRequestServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [[_SBInCallPresentationRequestServerTarget alloc] initWithConnection:*(a1 + 32) proxyInterface:*(a1 + 40)];
  objc_initWeak(&location, v2);
  objc_initWeak(&from, *(a1 + 40));
  v3 = *(a1 + 32);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __79__SBInCallPresentationRequestServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v15 = &unk_2783ADBA8;
  v4 = v2;
  v16 = v4;
  objc_copyWeak(&v18, &from);
  objc_copyWeak(&v19, &location);
  v17 = *(a1 + 40);
  [v3 configureConnection:&v12];
  v5 = SBLogInCallPresentation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v23 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Adding Connection: %{public}@", buf, 0xCu);
  }

  v7 = *(*(a1 + 40) + 8);
  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v9 = [v8 initWithCapacity:{1, v12, v13, v14, v15, v16}];
    v10 = *(a1 + 40);
    v11 = *(v10 + 8);
    *(v10 + 8) = v9;

    v7 = *(*(a1 + 40) + 8);
  }

  [v7 addObject:{v4, v12, v13, v14, v15}];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __79__SBInCallPresentationRequestServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D66AF8] serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = [MEMORY[0x277D66AF8] interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __79__SBInCallPresentationRequestServer_listener_didReceiveConnection_withContext___block_invoke_3;
  v9 = &unk_2783ADB80;
  objc_copyWeak(&v10, (a1 + 48));
  objc_copyWeak(&v11, (a1 + 56));
  [v3 setInvalidationHandler:&v6];
  [v3 setTargetQueue:{*(*(a1 + 40) + 32), v6, v7, v8, v9}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
}

void __79__SBInCallPresentationRequestServer_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogInCallPresentation();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 138543362;
    v11 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Received Connection Invalidation: %{public}@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = v6;
  if (WeakRetained && v6)
  {
    [WeakRetained[1] removeObject:v6];
    v8 = objc_loadWeakRetained(WeakRetained + 5);
    v9 = [v7 clientIdentifier];
    [v8 inCallPresentationRequestServer:WeakRetained clientWithIdentifierDidInvalidate:v9];
  }
}

- (void)presentWithConfiguration:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[_SBInCallPresentationRequestServerTarget currentTarget];
  v9 = SBLogInCallPresentation();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v6;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Received presentation request with config: %{public}@", &v13, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [v8 clientIdentifier];
    [WeakRetained inCallPresentationRequestServer:self clientWithIdentifier:v12 requestsPresentationWithConfiguration:v6 completion:v7];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBInCallPresentationRequestServer presentWithConfiguration:v6 completion:v10];
    }

    if (v7)
    {
      v7[2](v7, 0);
    }
  }
}

- (SBInCallPresentationRequestServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)presentWithConfiguration:(void *)a1 completion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 sceneBundleIdentifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Received presentation request for scene bundle identifier: %{public}@, but no target was found.", &v4, 0xCu);
}

@end