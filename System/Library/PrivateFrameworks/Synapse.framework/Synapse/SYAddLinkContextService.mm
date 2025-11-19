@interface SYAddLinkContextService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SYAddLinkContextServiceDelegate)delegate;
- (id)_listenerEndpoint;
- (id)initForTesting:(BOOL)a3;
- (void)beginListeningToConnections;
- (void)dealloc;
- (void)userDidRemoveContentItemDatas:(id)a3;
- (void)userEditDidAddContentItemDatas:(id)a3;
- (void)userWillAddLinkWithActivityData:(id)a3 completion:(id)a4;
@end

@implementation SYAddLinkContextService

- (void)beginListeningToConnections
{
  v3 = [(SYAddLinkContextService *)self _listener];

  if (!v3)
  {
    v4 = [(SYAddLinkContextService *)self _forTesting];
    v5 = os_log_create("com.apple.synapse", "AddLinkContext");
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "AddLinkContextService: Starting Add Link Context Service with anonymous listener for testing", buf, 2u);
      }

      v7 = [MEMORY[0x277CCAE98] anonymousListener];
    }

    else
    {
      if (v6)
      {
        *v13 = 0;
        _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "AddLinkContextService: Starting Add Link Context Service", v13, 2u);
      }

      v7 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.synapse.add-link-context-service"];
    }

    v8 = v7;
    [(SYAddLinkContextService *)self set_listener:v7];

    v9 = [(SYAddLinkContextService *)self _listener];
    v10 = [(SYAddLinkContextService *)self _serviceQueue];
    [v9 _setQueue:v10];

    v11 = [(SYAddLinkContextService *)self _listener];
    [v11 setDelegate:self];

    v12 = [(SYAddLinkContextService *)self _listener];
    [v12 resume];
  }
}

- (id)initForTesting:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = SYAddLinkContextService;
  v4 = [(SYAddLinkContextService *)&v9 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.synapse.AddLinkContextService", v5);
    serviceQueue = v4->__serviceQueue;
    v4->__serviceQueue = v6;

    v4->__forTesting = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(SYAddLinkContextService *)self _listener];
  [v3 setDelegate:0];

  v4 = [(SYAddLinkContextService *)self _listener];
  [v4 invalidate];

  [(SYAddLinkContextService *)self set_listener:0];
  v5.receiver = self;
  v5.super_class = SYAddLinkContextService;
  [(SYAddLinkContextService *)&v5 dealloc];
}

- (void)userWillAddLinkWithActivityData:(id)a3 completion:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(SYAddLinkContextService *)self delegate];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityData:v13];
    v9 = v8;
    if (v8 && ([v8 activityType], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277CCA850]), v10, v11))
    {
      v12 = [(SYAddLinkContextService *)self delegate];
      [v12 userWillAddLinkWithActivityData:v13 completion:v6];
    }

    else if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)userDidRemoveContentItemDatas:(id)a3
{
  v6 = a3;
  v4 = [(SYAddLinkContextService *)self delegate];

  if (v4)
  {
    v5 = [(SYAddLinkContextService *)self delegate];
    [v5 userDidRemoveContentItemDatas:v6];
  }
}

- (void)userEditDidAddContentItemDatas:(id)a3
{
  v6 = a3;
  v4 = [(SYAddLinkContextService *)self delegate];

  if (v4)
  {
    v5 = [(SYAddLinkContextService *)self delegate];
    [v5 userEditDidAddContentItemDatas:v6];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [SYAddLinkContextService listener:a2 shouldAcceptNewConnection:self];
  }

  v9 = [(SYAddLinkContextService *)self _listener];

  if (v9 != v7)
  {
    goto LABEL_4;
  }

  if (![(SYAddLinkContextService *)self _forTesting])
  {
    v18 = [v8 valueForEntitlement:@"com.apple.synapse.allowAddLinkContextRequests"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v18 BOOLValue])
    {
      v19 = os_log_create("com.apple.synapse", "AddLinkContext");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SYAddLinkContextService listener:v8 shouldAcceptNewConnection:v19];
      }

LABEL_4:
      v10 = 0;
      goto LABEL_7;
    }
  }

  v11 = [(SYAddLinkContextService *)self _serviceQueue];
  [v8 _setQueue:v11];

  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F5698];
  [v8 setExportedInterface:v12];

  [v8 setExportedObject:self];
  [v8 resume];
  v10 = 1;
LABEL_7:
  v13 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v8 processIdentifier];
    v15 = @"No";
    if (v10)
    {
      v15 = @"Yes";
    }

    v20 = 134218242;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    _os_log_impl(&dword_225901000, v13, OS_LOG_TYPE_INFO, "AddLinkContextService: Listener should accept connection from pid %ld: %@", &v20, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_listenerEndpoint
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  v3 = [(SYAddLinkContextService *)self _serviceQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SYAddLinkContextService__listenerEndpoint__block_invoke;
  v6[3] = &unk_27856B858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __44__SYAddLinkContextService__listenerEndpoint__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _listener];
  v2 = [v5 endpoint];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (SYAddLinkContextServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYAddLinkContextService.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"newConnection"}];
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "AddLinkContextService: Refusing connection from non-entitled client with connection: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end