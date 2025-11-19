@interface URTAlertService
- (URTAlertService)initWithDomain:(id)a3;
- (URTAlertServiceDelegate)delegate;
- (id)_connectionQueue_alertConnectionForConnection:(id)a3;
- (void)_connectionQueue_addConnection:(id)a3;
- (void)_connectionQueue_dismissAlert:(id)a3 forConnection:(id)a4;
- (void)_connectionQueue_presentAlert:(id)a3 preferringPresentationStyle:(int64_t)a4 forConnection:(id)a5;
- (void)_connectionQueue_removeConnection:(id)a3;
- (void)_performClientActionForAlert:(id)a3 clientAction:(id)a4;
- (void)invalidate;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation URTAlertService

- (URTAlertService)initWithDomain:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v32.receiver = self;
  v32.super_class = URTAlertService;
  v6 = [(URTAlertService *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domain, a3);
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    connections = v7->_connections;
    v7->_connections = v8;

    v10 = [[URTAlertServiceDelegateProxy alloc] initWithService:v7];
    delegateProxy = v7->_delegateProxy;
    v7->_delegateProxy = v10;

    v12 = [MEMORY[0x277CF0C18] serial];
    v13 = BSDispatchQueueCreate();
    connectionQueue = v7->_connectionQueue;
    v7->_connectionQueue = v13;

    v15 = MEMORY[0x277CF32A0];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __34__URTAlertService_initWithDomain___block_invoke;
    v29 = &unk_279E0BD88;
    v16 = v5;
    v30 = v16;
    v17 = v7;
    v31 = v17;
    v18 = [v15 listenerWithConfigurator:&v26];
    listener = v17->_listener;
    v17->_listener = v18;

    v20 = URTLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = v17->_listener;
      *buf = 138412290;
      v34 = v21;
      _os_log_impl(&dword_270835000, v20, OS_LOG_TYPE_INFO, "Activating listener! %@", buf, 0xCu);
    }

    [(BSServiceConnectionListener *)v17->_listener activate:v26];
    v22 = [MEMORY[0x277CF32D0] activateManualDomain:v16];
    domainActivationToken = v17->_domainActivationToken;
    v17->_domainActivationToken = v22;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

void __34__URTAlertService_initWithDomain___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setDomain:v3];
  v4 = +[URTAlertServiceSpecification identifier];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 40)];
}

- (void)invalidate
{
  v3 = [(URTAlertService *)self domainActivationToken];
  [v3 invalidate];

  v4 = [(URTAlertService *)self listener];
  [v4 invalidate];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = URTLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 instance];
    *buf = 138412546;
    v23 = v6;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_270835000, v7, OS_LOG_TYPE_INFO, "Received connection! %@, reason: %@", buf, 0x16u);
  }

  v9 = [v6 remoteProcess];
  v10 = +[URTAlertServiceSpecification entitlementName];
  v11 = [v9 valueForEntitlement:v10];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (-[URTAlertService domain](self, "domain"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v11 containsObject:v12], v12, (v13))
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __61__URTAlertService_listener_didReceiveConnection_withContext___block_invoke;
    v21[3] = &unk_279E0BDD8;
    v21[4] = self;
    [v6 configureConnection:v21];
    v14 = URTLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&dword_270835000, v14, OS_LOG_TYPE_INFO, "Activating connection... %@", buf, 0xCu);
    }

    v15 = [(URTAlertService *)self connectionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__URTAlertService_listener_didReceiveConnection_withContext___block_invoke_90;
    block[3] = &unk_279E0BE00;
    block[4] = self;
    v16 = v6;
    v20 = v16;
    dispatch_async(v15, block);

    [v16 activate];
  }

  else
  {
    v17 = URTLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [URTAlertService listener:v6 didReceiveConnection:self withContext:v17];
    }

    [v6 invalidate];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __61__URTAlertService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[URTAlertServiceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[URTAlertServiceSpecification interface];
  [v3 setInterface:v5];

  v6 = [*(a1 + 32) delegateProxy];
  [v3 setInterfaceTarget:v6];

  objc_initWeak(&location, *(a1 + 32));
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__URTAlertService_listener_didReceiveConnection_withContext___block_invoke_2;
  v11 = &unk_279E0BDB0;
  objc_copyWeak(&v12, &location);
  [v3 setInvalidationHandler:&v8];
  v7 = [*(a1 + 32) connectionQueue];
  [v3 setTargetQueue:v7];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __61__URTAlertService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = URTLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_270835000, v4, OS_LOG_TYPE_INFO, "Connection invalidated! %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionQueue_removeConnection:v3];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_connectionQueue_addConnection:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(URTAlertService *)self connectionQueue];
  BSDispatchQueueAssert();

  v6 = [[URTAlertConnection alloc] initWithConnection:v4];
  v7 = [(URTAlertService *)self connections];
  [v7 addObject:v6];

  v8 = URTLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(URTAlertService *)self connections];
    v11 = 138412546;
    v12 = v4;
    v13 = 2048;
    v14 = [v9 count];
    _os_log_impl(&dword_270835000, v8, OS_LOG_TYPE_INFO, "Added connection %@, connection count: %ld", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_connectionQueue_alertConnectionForConnection:(id)a3
{
  v4 = a3;
  v5 = [(URTAlertService *)self connectionQueue];
  BSDispatchQueueAssert();

  v6 = [(URTAlertService *)self connections];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__URTAlertService__connectionQueue_alertConnectionForConnection___block_invoke;
  v10[3] = &unk_279E0BE28;
  v11 = v4;
  v7 = v4;
  v8 = [v6 bs_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __65__URTAlertService__connectionQueue_alertConnectionForConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_connectionQueue_presentAlert:(id)a3 preferringPresentationStyle:(int64_t)a4 forConnection:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(URTAlertService *)self connectionQueue];
  BSDispatchQueueAssert();

  v10 = [(URTAlertService *)self _connectionQueue_alertConnectionForConnection:v8];
  v11 = v10;
  if (v10)
  {
    [v10 setAlert:v7];
  }

  objc_initWeak(location, self);
  objc_initWeak(&from, v7);
  v12 = [v7 defaultAction];

  if (v12)
  {
    v13 = [v7 defaultAction];
    v14 = [v13 title];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __91__URTAlertService__connectionQueue_presentAlert_preferringPresentationStyle_forConnection___block_invoke;
    v33[3] = &unk_279E0BE70;
    objc_copyWeak(&v34, location);
    objc_copyWeak(&v35, &from);
    v15 = [URTAlertAction actionWithTitle:v14 handler:v33];
    [v7 setDefaultAction:v15];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v34);
  }

  v16 = [v7 otherAction];

  if (v16)
  {
    v17 = [v7 otherAction];
    v18 = [v17 title];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __91__URTAlertService__connectionQueue_presentAlert_preferringPresentationStyle_forConnection___block_invoke_2;
    v30[3] = &unk_279E0BE70;
    objc_copyWeak(&v31, location);
    objc_copyWeak(&v32, &from);
    v19 = [URTAlertAction actionWithTitle:v18 handler:v30];
    [v7 setOtherAction:v19];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);
  }

  v20 = [v7 cancelAction];

  if (v20)
  {
    v21 = [v7 cancelAction];
    v22 = [v21 title];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __91__URTAlertService__connectionQueue_presentAlert_preferringPresentationStyle_forConnection___block_invoke_2_101;
    v27[3] = &unk_279E0BE70;
    objc_copyWeak(&v28, location);
    objc_copyWeak(&v29, &from);
    v23 = [URTAlertAction actionWithTitle:v22 handler:v27];
    [v7 setCancelAction:v23];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);
  }

  v24 = [(URTAlertService *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v24 alertService:self wantsPresentationForAlert:v7 preferredPresentationStyle:v26];
  }

  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

void __91__URTAlertService__connectionQueue_presentAlert_preferringPresentationStyle_forConnection___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = URTLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_270835000, v4, OS_LOG_TYPE_DEFAULT, "Alert: default action %@ tapped", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performClientActionForAlert:v7 clientAction:&__block_literal_global_1];

  v8 = *MEMORY[0x277D85DE8];
}

void __91__URTAlertService__connectionQueue_presentAlert_preferringPresentationStyle_forConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = URTLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_270835000, v4, OS_LOG_TYPE_DEFAULT, "Alert: other action %@ tapped", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performClientActionForAlert:v7 clientAction:&__block_literal_global_100];

  v8 = *MEMORY[0x277D85DE8];
}

void __91__URTAlertService__connectionQueue_presentAlert_preferringPresentationStyle_forConnection___block_invoke_2_101(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = URTLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_270835000, v4, OS_LOG_TYPE_DEFAULT, "Alert: cancel action %@ tapped", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performClientActionForAlert:v7 clientAction:&__block_literal_global_104];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_performClientActionForAlert:(id)a3 clientAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(URTAlertService *)self connectionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__URTAlertService__performClientActionForAlert_clientAction___block_invoke;
  block[3] = &unk_279E0BE98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __61__URTAlertService__performClientActionForAlert_clientAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connections];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__URTAlertService__performClientActionForAlert_clientAction___block_invoke_2;
  v10[3] = &unk_279E0BE28;
  v11 = *(a1 + 40);
  v3 = [v2 bs_firstObjectPassingTest:v10];

  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = [v3 connection];
      v6 = [v5 remoteTarget];
      (*(v4 + 16))(v4, v6);
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = [v3 connection];
    [v8 _connectionQueue_dismissAlert:v7 forConnection:v9];
  }
}

uint64_t __61__URTAlertService__performClientActionForAlert_clientAction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 alert];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_connectionQueue_dismissAlert:(id)a3 forConnection:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(URTAlertService *)self connectionQueue];
  BSDispatchQueueAssert();

  v8 = [(URTAlertService *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 alertService:self wantsDismissalForAlert:v11];
  }

  v9 = [(URTAlertService *)self _connectionQueue_alertConnectionForConnection:v6];
  v10 = v9;
  if (v9)
  {
    [v9 setAlert:0];
  }
}

- (void)_connectionQueue_removeConnection:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(URTAlertService *)self connectionQueue];
  BSDispatchQueueAssert();

  v6 = [(URTAlertService *)self _connectionQueue_alertConnectionForConnection:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 alert];
    if (v8)
    {
      v9 = URTLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_270835000, v9, OS_LOG_TYPE_INFO, "Dismissing alert due to client disconnection", &v16, 2u);
      }

      v10 = [(URTAlertService *)self delegateProxy];
      [v10 dismissAlert:v8];
    }

    v11 = [(URTAlertService *)self connections];
    [v11 removeObject:v7];

    v12 = URTLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(URTAlertService *)self connections];
      v14 = [v13 count];
      v16 = 138412546;
      v17 = v4;
      v18 = 2048;
      v19 = v14;
      _os_log_impl(&dword_270835000, v12, OS_LOG_TYPE_INFO, "Removed connection %@, connection count: %ld", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (URTAlertServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(void *)a1 didReceiveConnection:(void *)a2 withContext:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [a1 remoteProcess];
  v6 = +[URTAlertServiceSpecification entitlementName];
  v7 = [a2 domain];
  v9 = 138412802;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  _os_log_error_impl(&dword_270835000, a3, OS_LOG_TYPE_ERROR, "Process %@ does not have an array for the alert entitlement %@ that contains the destination %@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

@end