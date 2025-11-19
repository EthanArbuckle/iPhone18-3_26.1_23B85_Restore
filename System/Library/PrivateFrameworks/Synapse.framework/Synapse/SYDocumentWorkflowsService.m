@interface SYDocumentWorkflowsService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
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
  v3 = [(SYDocumentWorkflowsService *)self listener];

  if (!v3)
  {
    v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_225901000, v4, OS_LOG_TYPE_DEFAULT, "Starting Document Workflows Service...", v12, 2u);
    }

    v5 = objc_alloc(MEMORY[0x277CCAE98]);
    v6 = [objc_opt_class() serviceName];
    v7 = [v5 initWithMachServiceName:v6];
    [(SYDocumentWorkflowsService *)self setListener:v7];

    v8 = [(SYDocumentWorkflowsService *)self listener];
    v9 = [(SYDocumentWorkflowsService *)self serviceQueue];
    [v8 _setQueue:v9];

    v10 = [(SYDocumentWorkflowsService *)self listener];
    [v10 setDelegate:self];

    v11 = [(SYDocumentWorkflowsService *)self listener];
    [v11 resume];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SYDocumentWorkflowsService *)self listener];

  if (v8 == v6)
  {
    v9 = [(SYDocumentWorkflowsService *)self serviceQueue];
    [v7 _setQueue:v9];

    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F6570];
    [v7 setExportedInterface:v10];

    v11 = [[SYDocumentWorkflowsServiceHandle alloc] initWithRepository:self->_repository];
    [v7 setExportedObject:v11];

    [v7 resume];
  }

  v12 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109376;
    v15[1] = [v7 processIdentifier];
    v16 = 1024;
    v17 = v8 == v6;
    _os_log_impl(&dword_225901000, v12, OS_LOG_TYPE_DEFAULT, "Service should accept new connection from PID: %d, accepted: %d", v15, 0xEu);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8 == v6;
}

@end