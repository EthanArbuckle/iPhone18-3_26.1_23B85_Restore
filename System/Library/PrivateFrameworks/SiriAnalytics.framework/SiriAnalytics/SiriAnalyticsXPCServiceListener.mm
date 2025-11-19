@interface SiriAnalyticsXPCServiceListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SiriAnalyticsXPCServiceListener)initWithMachServiceName:(id)a3 entitlementsKey:(id)a4 queue:(id)a5 delegate:(id)a6;
@end

@implementation SiriAnalyticsXPCServiceListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 processIdentifier];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v7 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[SiriAnalyticsXPCServiceListener listener:shouldAcceptNewConnection:]";
    v22 = 2112;
    v23 = v5;
    v24 = 1024;
    v25 = v6;
    _os_log_impl(&dword_1D9863000, v7, OS_LOG_TYPE_INFO, "%s %@ Siri Analytics Connection Connected (pid=%d])", buf, 0x1Cu);
  }

  v8 = [SiriAnalyticsXPCConnectionHandler alloc];
  entitlementsKey = self->_entitlementsKey;
  queue = self->_queue;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [(SiriAnalyticsXPCConnectionHandler *)v8 initWithConnection:v5 entitlementsKey:entitlementsKey queue:queue delegate:WeakRetained];

  v13 = SiriAnalyticsXPCServiceInterface();
  [v5 setExportedInterface:v13];

  [v5 setExportedObject:v12];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__SiriAnalyticsXPCServiceListener_listener_shouldAcceptNewConnection___block_invoke;
  v18[3] = &__block_descriptor_36_e5_v8__0l;
  v19 = v6;
  [v5 setInvalidationHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__SiriAnalyticsXPCServiceListener_listener_shouldAcceptNewConnection___block_invoke_2;
  v16[3] = &__block_descriptor_36_e5_v8__0l;
  v17 = v6;
  [v5 setInterruptionHandler:v16];
  [v5 _setQueue:self->_queue];
  [v5 resume];

  v14 = *MEMORY[0x1E69E9840];
  return 1;
}

void __70__SiriAnalyticsXPCServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v2 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[SiriAnalyticsXPCServiceListener listener:shouldAcceptNewConnection:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1D9863000, v2, OS_LOG_TYPE_INFO, "%s Siri Analytics Connection Invalidated (pid=%d)", &v5, 0x12u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __70__SiriAnalyticsXPCServiceListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v2 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[SiriAnalyticsXPCServiceListener listener:shouldAcceptNewConnection:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1D9863000, v2, OS_LOG_TYPE_INFO, "%s Siri Analytics Connection Interrupted (pid=%d)", &v5, 0x12u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (SiriAnalyticsXPCServiceListener)initWithMachServiceName:(id)a3 entitlementsKey:(id)a4 queue:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = SiriAnalyticsXPCServiceListener;
  v14 = [(SiriAnalyticsXPCServiceListener *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, a5);
    objc_storeWeak(&v15->_delegate, v13);
    objc_storeStrong(&v15->_entitlementsKey, a4);
    v16 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v10];
    listener = v15->_listener;
    v15->_listener = v16;

    [(NSXPCListener *)v15->_listener setDelegate:v15];
    [(NSXPCListener *)v15->_listener _setQueue:v12];
    [(NSXPCListener *)v15->_listener resume];
  }

  return v15;
}

@end