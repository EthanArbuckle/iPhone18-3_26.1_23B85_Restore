@interface PRRegulatoryAssistanceEndpoint
+ (id)endpointWithQueue:(id)queue;
- (id)initInternalWithQueue:(id)queue;
- (void)connectWithCompletionHandler:(id)handler;
- (void)provideIsoCode:(id)code;
@end

@implementation PRRegulatoryAssistanceEndpoint

- (id)initInternalWithQueue:(id)queue
{
  queueCopy = queue;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "#reg-assist, initInternalWithQueue called.", buf, 2u);
  }

  v15.receiver = self;
  v15.super_class = PRRegulatoryAssistanceEndpoint;
  v7 = [(PRRegulatoryAssistanceEndpoint *)&v15 init];
  if (v7)
  {
    v8 = os_log_create("com.apple.nearbyd", "RegulatoryAssistanceEndpoint");
    v9 = v7->_logger;
    v7->_logger = v8;

    objc_storeStrong(&v7->_queue, queue);
    v10 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.nearbyd.xpc.diagnostics" options:4096];
    conn = v7->_conn;
    v7->_conn = v10;

    v12 = v7->_conn;
    v13 = PRMakeRegulatoryAssistanceEndpointXPCInterface();
    [(NSXPCConnection *)v12 setRemoteObjectInterface:v13];

    [(NSXPCConnection *)v7->_conn _setQueue:v7->_queue];
    [(NSXPCConnection *)v7->_conn resume];
  }

  return v7;
}

+ (id)endpointWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[PRRegulatoryAssistanceEndpoint alloc] initInternalWithQueue:queueCopy];

  return v4;
}

- (void)connectWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy_;
  v9[4] = __Block_byref_object_dispose_;
  v10 = MEMORY[0x23191F360]();
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "#reg-assist, connectWithCompletionHandler called.", buf, 2u);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_conn remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__PRRegulatoryAssistanceEndpoint_connectWithCompletionHandler___block_invoke;
  v7[3] = &unk_2788F3C18;
  v7[4] = self;
  v7[5] = v9;
  [remoteObjectProxy prepareForRegulatoryAssistance:v7];

  _Block_object_dispose(v9, 8);
}

void __63__PRRegulatoryAssistanceEndpoint_connectWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v5 = a2;
  dispatch_assert_queue_V2(v3);
  v4 = *(a1 + 32);
  (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
}

- (void)provideIsoCode:(id)code
{
  codeCopy = code;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "#reg-assist, provideIsoCode called.", v7, 2u);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_conn remoteObjectProxy];
  [remoteObjectProxy injectIsoCode:codeCopy];
}

@end