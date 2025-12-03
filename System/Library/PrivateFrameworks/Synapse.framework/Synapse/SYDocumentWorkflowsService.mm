@interface SYDocumentWorkflowsService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SYDocumentWorkflowsService)init;
- (void)beginListeningToConnections;
- (void)dealloc;
@end

@implementation SYDocumentWorkflowsService

- (SYDocumentWorkflowsService)init
{
  v9.receiver = self;
  v9.super_class = SYDocumentWorkflowsService;
  v2 = [(SYDocumentWorkflowsService *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.synapse.DocumentWorkflowsService", v3);
    serviceQueue = v2->_serviceQueue;
    v2->_serviceQueue = v4;

    v6 = objc_alloc_init(SYDocumentWorkflowsRepository);
    repository = v2->_repository;
    v2->_repository = v6;
  }

  return v2;
}

- (void)dealloc
{
  v3 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_225901000, v3, OS_LOG_TYPE_DEFAULT, "Document Workflows Service deallocated", buf, 2u);
  }

  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  listener = self->_listener;
  self->_listener = 0;

  v5.receiver = self;
  v5.super_class = SYDocumentWorkflowsService;
  [(SYDocumentWorkflowsService *)&v5 dealloc];
}

- (void)beginListeningToConnections
{
  listener = [(SYDocumentWorkflowsService *)self listener];

  if (!listener)
  {
    v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_225901000, v4, OS_LOG_TYPE_DEFAULT, "Starting Document Workflows Service...", v12, 2u);
    }

    v5 = objc_alloc(MEMORY[0x277CCAE98]);
    serviceName = [objc_opt_class() serviceName];
    v7 = [v5 initWithMachServiceName:serviceName];
    [(SYDocumentWorkflowsService *)self setListener:v7];

    listener2 = [(SYDocumentWorkflowsService *)self listener];
    serviceQueue = [(SYDocumentWorkflowsService *)self serviceQueue];
    [listener2 _setQueue:serviceQueue];

    listener3 = [(SYDocumentWorkflowsService *)self listener];
    [listener3 setDelegate:self];

    listener4 = [(SYDocumentWorkflowsService *)self listener];
    [listener4 resume];
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v18 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  listener = [(SYDocumentWorkflowsService *)self listener];

  if (listener == listenerCopy)
  {
    serviceQueue = [(SYDocumentWorkflowsService *)self serviceQueue];
    [connectionCopy _setQueue:serviceQueue];

    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F6570];
    [connectionCopy setExportedInterface:v10];

    v11 = [[SYDocumentWorkflowsServiceHandle alloc] initWithRepository:self->_repository];
    [connectionCopy setExportedObject:v11];

    [connectionCopy resume];
  }

  v12 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109376;
    v15[1] = [connectionCopy processIdentifier];
    v16 = 1024;
    v17 = listener == listenerCopy;
    _os_log_impl(&dword_225901000, v12, OS_LOG_TYPE_DEFAULT, "Service should accept new connection from PID: %d, accepted: %d", v15, 0xEu);
  }

  v13 = *MEMORY[0x277D85DE8];
  return listener == listenerCopy;
}

@end