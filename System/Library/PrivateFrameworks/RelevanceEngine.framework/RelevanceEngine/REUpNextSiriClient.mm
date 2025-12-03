@interface REUpNextSiriClient
- (REUpNextSiriClient)init;
- (void)_performOnRemoteObject:(id)object;
- (void)completedRequestWithDomain:(id)domain;
- (void)dealloc;
@end

@implementation REUpNextSiriClient

- (REUpNextSiriClient)init
{
  v12.receiver = self;
  v12.super_class = REUpNextSiriClient;
  v2 = [(REUpNextSiriClient *)&v12 init];
  if (v2)
  {
    v3 = RECreateSharedQueueWithQOS(@"upnext.siriclient", QOS_CLASS_UTILITY);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.NanoTimeKit.Siri" options:4096];
    connection = v2->_connection;
    v2->_connection = v5;

    v7 = v2->_connection;
    v8 = REUpNextSiriServerInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    [(NSXPCConnection *)v2->_connection setExportedObject:v2];
    v9 = v2->_connection;
    v10 = REUpNextSiriClientInterface();
    [(NSXPCConnection *)v9 setExportedInterface:v10];

    [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global_8];
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:&__block_literal_global_4];
    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

void __26__REUpNextSiriClient_init__block_invoke()
{
  v0 = RELogForDomain(9);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __26__REUpNextSiriClient_init__block_invoke_cold_1(v0);
  }
}

void __26__REUpNextSiriClient_init__block_invoke_2()
{
  v0 = RELogForDomain(9);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __26__REUpNextSiriClient_init__block_invoke_2_cold_1(v0);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = REUpNextSiriClient;
  [(REUpNextSiriClient *)&v3 dealloc];
}

- (void)completedRequestWithDomain:(id)domain
{
  domainCopy = domain;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__REUpNextSiriClient_completedRequestWithDomain___block_invoke;
  v6[3] = &unk_2785FA380;
  v7 = domainCopy;
  v5 = domainCopy;
  [(REUpNextSiriClient *)self _performOnRemoteObject:v6];
}

- (void)_performOnRemoteObject:(id)object
{
  objectCopy = object;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__REUpNextSiriClient__performOnRemoteObject___block_invoke;
  v7[3] = &unk_2785F9A40;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_async(queue, v7);
}

void __45__REUpNextSiriClient__performOnRemoteObject___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) remoteObjectProxyWithErrorHandler:&__block_literal_global_10_0];
  (*(*(a1 + 40) + 16))();
}

void __45__REUpNextSiriClient__performOnRemoteObject___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = RELogForDomain(9);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__REUpNextSiriClient__performOnRemoteObject___block_invoke_2_cold_1(v2, v3);
  }
}

void __45__REUpNextSiriClient__performOnRemoteObject___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "XPC Siri connection error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end