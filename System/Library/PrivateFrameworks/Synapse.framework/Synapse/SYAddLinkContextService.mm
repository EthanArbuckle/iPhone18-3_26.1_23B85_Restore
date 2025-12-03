@interface SYAddLinkContextService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SYAddLinkContextServiceDelegate)delegate;
- (id)_listenerEndpoint;
- (id)initForTesting:(BOOL)testing;
- (void)beginListeningToConnections;
- (void)dealloc;
- (void)userDidRemoveContentItemDatas:(id)datas;
- (void)userEditDidAddContentItemDatas:(id)datas;
- (void)userWillAddLinkWithActivityData:(id)data completion:(id)completion;
@end

@implementation SYAddLinkContextService

- (void)beginListeningToConnections
{
  _listener = [(SYAddLinkContextService *)self _listener];

  if (!_listener)
  {
    _forTesting = [(SYAddLinkContextService *)self _forTesting];
    v5 = os_log_create("com.apple.synapse", "AddLinkContext");
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (_forTesting)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "AddLinkContextService: Starting Add Link Context Service with anonymous listener for testing", buf, 2u);
      }

      anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    }

    else
    {
      if (v6)
      {
        *v13 = 0;
        _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "AddLinkContextService: Starting Add Link Context Service", v13, 2u);
      }

      anonymousListener = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.synapse.add-link-context-service"];
    }

    v8 = anonymousListener;
    [(SYAddLinkContextService *)self set_listener:anonymousListener];

    _listener2 = [(SYAddLinkContextService *)self _listener];
    _serviceQueue = [(SYAddLinkContextService *)self _serviceQueue];
    [_listener2 _setQueue:_serviceQueue];

    _listener3 = [(SYAddLinkContextService *)self _listener];
    [_listener3 setDelegate:self];

    _listener4 = [(SYAddLinkContextService *)self _listener];
    [_listener4 resume];
  }
}

- (id)initForTesting:(BOOL)testing
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

    v4->__forTesting = testing;
  }

  return v4;
}

- (void)dealloc
{
  _listener = [(SYAddLinkContextService *)self _listener];
  [_listener setDelegate:0];

  _listener2 = [(SYAddLinkContextService *)self _listener];
  [_listener2 invalidate];

  [(SYAddLinkContextService *)self set_listener:0];
  v5.receiver = self;
  v5.super_class = SYAddLinkContextService;
  [(SYAddLinkContextService *)&v5 dealloc];
}

- (void)userWillAddLinkWithActivityData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  delegate = [(SYAddLinkContextService *)self delegate];

  if (delegate)
  {
    v8 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityData:dataCopy];
    v9 = v8;
    if (v8 && ([v8 activityType], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277CCA850]), v10, v11))
    {
      delegate2 = [(SYAddLinkContextService *)self delegate];
      [delegate2 userWillAddLinkWithActivityData:dataCopy completion:completionCopy];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)userDidRemoveContentItemDatas:(id)datas
{
  datasCopy = datas;
  delegate = [(SYAddLinkContextService *)self delegate];

  if (delegate)
  {
    delegate2 = [(SYAddLinkContextService *)self delegate];
    [delegate2 userDidRemoveContentItemDatas:datasCopy];
  }
}

- (void)userEditDidAddContentItemDatas:(id)datas
{
  datasCopy = datas;
  delegate = [(SYAddLinkContextService *)self delegate];

  if (delegate)
  {
    delegate2 = [(SYAddLinkContextService *)self delegate];
    [delegate2 userEditDidAddContentItemDatas:datasCopy];
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v24 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  if (!connectionCopy)
  {
    [SYAddLinkContextService listener:a2 shouldAcceptNewConnection:self];
  }

  _listener = [(SYAddLinkContextService *)self _listener];

  if (_listener != listenerCopy)
  {
    goto LABEL_4;
  }

  if (![(SYAddLinkContextService *)self _forTesting])
  {
    v18 = [connectionCopy valueForEntitlement:@"com.apple.synapse.allowAddLinkContextRequests"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v18 BOOLValue])
    {
      v19 = os_log_create("com.apple.synapse", "AddLinkContext");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SYAddLinkContextService listener:connectionCopy shouldAcceptNewConnection:v19];
      }

LABEL_4:
      v10 = 0;
      goto LABEL_7;
    }
  }

  _serviceQueue = [(SYAddLinkContextService *)self _serviceQueue];
  [connectionCopy _setQueue:_serviceQueue];

  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F5698];
  [connectionCopy setExportedInterface:v12];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];
  v10 = 1;
LABEL_7:
  v13 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    processIdentifier = [connectionCopy processIdentifier];
    v15 = @"No";
    if (v10)
    {
      v15 = @"Yes";
    }

    v20 = 134218242;
    v21 = processIdentifier;
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
  _serviceQueue = [(SYAddLinkContextService *)self _serviceQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SYAddLinkContextService__listenerEndpoint__block_invoke;
  v6[3] = &unk_27856B858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(_serviceQueue, v6);

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