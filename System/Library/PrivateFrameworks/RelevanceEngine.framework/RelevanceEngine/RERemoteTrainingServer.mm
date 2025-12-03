@interface RERemoteTrainingServer
- (RERemoteTrainingServer)initWithTargetProcessName:(id)name;
- (void)_clearConnection;
- (void)_queue_setupConnectionIfNeeded;
- (void)performTrainingWithElements:(id)elements events:(id)events interactions:(id)interactions completion:(id)completion;
- (void)updateRemoteAttribute:(id)attribute forKey:(id)key completion:(id)completion;
@end

@implementation RERemoteTrainingServer

- (RERemoteTrainingServer)initWithTargetProcessName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = RERemoteTrainingServer;
  v5 = [(RERemoteTrainingServer *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    processName = v5->_processName;
    v5->_processName = v6;
  }

  return v5;
}

- (void)_queue_setupConnectionIfNeeded
{
  if (!self->_connection)
  {
    v3 = RERemoteTrainingMachServiceForProcessName(self->_processName);
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v3 options:4096];
    connection = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = RERemoteTrainingServerInterface();
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    v8 = self->_connection;
    v9 = RERemoteTrainingClientInterface();
    [(NSXPCConnection *)v8 setExportedInterface:v9];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    objc_initWeak(&location, self);
    v10 = self->_connection;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __56__RERemoteTrainingServer__queue_setupConnectionIfNeeded__block_invoke;
    v14 = &unk_2785F9A90;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)v10 setInterruptionHandler:&v11];
    [(NSXPCConnection *)self->_connection setInvalidationHandler:&__block_literal_global_61, v11, v12, v13, v14];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __56__RERemoteTrainingServer__queue_setupConnectionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = RELogForDomain(17);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_DEFAULT, "REPredictedActionServer XPC connection interrupted.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearConnection];
}

void __56__RERemoteTrainingServer__queue_setupConnectionIfNeeded__block_invoke_1()
{
  v0 = RELogForDomain(17);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_22859F000, v0, OS_LOG_TYPE_DEFAULT, "REPredictedActionServer XPC connection invalidated.", v1, 2u);
  }
}

- (void)_clearConnection
{
  connection = self->_connection;
  self->_connection = 0;
  MEMORY[0x2821F96F8]();
}

- (void)updateRemoteAttribute:(id)attribute forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  attributeCopy = attribute;
  [(RERemoteTrainingServer *)self _queue_setupConnectionIfNeeded];
  v11 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_4_1];
  [v11 updateRemoteAttribute:attributeCopy forKey:keyCopy completion:completionCopy];
}

void __66__RERemoteTrainingServer_updateRemoteAttribute_forKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = RELogForDomain(17);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 localizedDescription];
    v6 = 136315138;
    v7 = [v4 UTF8String];
    _os_log_impl(&dword_22859F000, v3, OS_LOG_TYPE_DEFAULT, "Failed to get server proxy: %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)performTrainingWithElements:(id)elements events:(id)events interactions:(id)interactions completion:(id)completion
{
  completionCopy = completion;
  interactionsCopy = interactions;
  eventsCopy = events;
  elementsCopy = elements;
  [(RERemoteTrainingServer *)self _queue_setupConnectionIfNeeded];
  v14 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_6_0];
  [v14 performTrainingWithElements:elementsCopy events:eventsCopy interactions:interactionsCopy completion:completionCopy];
}

void __85__RERemoteTrainingServer_performTrainingWithElements_events_interactions_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = RELogForDomain(17);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 localizedDescription];
    v6 = 136315138;
    v7 = [v4 UTF8String];
    _os_log_impl(&dword_22859F000, v3, OS_LOG_TYPE_DEFAULT, "Failed to get server proxy: %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end