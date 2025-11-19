@interface PREXPCClientHelpers
- (PREXPCClientHelpers)initWithServiceName:(id)a3 whitelistedServerInterface:(id)a4 clientExportedObject:(id)a5 interruptionHandler:(id)a6 invalidationHandler:(id)a7;
- (id)remoteObjectProxy;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)_locked_establishConnection;
- (void)dealloc;
@end

@implementation PREXPCClientHelpers

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_connLock);
  [(PREXPCClientHelpers *)self _locked_establishConnection];
  v5 = [(NSXPCConnection *)self->_conn synchronousRemoteObjectProxyWithErrorHandler:v4];

  pthread_mutex_unlock(&self->_connLock);

  return v5;
}

- (id)remoteObjectProxy
{
  pthread_mutex_lock(&self->_connLock);
  [(PREXPCClientHelpers *)self _locked_establishConnection];
  v3 = [(NSXPCConnection *)self->_conn remoteObjectProxy];
  pthread_mutex_unlock(&self->_connLock);

  return v3;
}

- (void)_locked_establishConnection
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_conn)
  {
    v3 = pre_xpc_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = self->_serviceName;
      *buf = 138412290;
      v17 = serviceName;
      _os_log_impl(&dword_260CE3000, v3, OS_LOG_TYPE_DEFAULT, "Establishing new connection to %@ .", buf, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:self->_serviceName options:0];
    conn = self->_conn;
    self->_conn = v5;

    [(NSXPCConnection *)self->_conn setRemoteObjectInterface:self->_whitelistedServerInterface];
    WeakRetained = objc_loadWeakRetained(&self->_clientExportedObject);
    [(NSXPCConnection *)self->_conn setExportedObject:WeakRetained];

    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__PREXPCClientHelpers__locked_establishConnection__block_invoke;
    v14[3] = &unk_279ABAEF8;
    objc_copyWeak(&v15, buf);
    [(NSXPCConnection *)self->_conn setInterruptionHandler:v14];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __50__PREXPCClientHelpers__locked_establishConnection__block_invoke_7;
    v12 = &unk_279ABAEF8;
    objc_copyWeak(&v13, buf);
    [(NSXPCConnection *)self->_conn setInvalidationHandler:&v9];
    [(NSXPCConnection *)self->_conn resume:v9];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __50__PREXPCClientHelpers__locked_establishConnection__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = pre_xpc_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = WeakRetained[10];
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_260CE3000, v2, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v5, 0xCu);
    }

    (*(WeakRetained[13] + 16))();
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __50__PREXPCClientHelpers__locked_establishConnection__block_invoke_7(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = pre_xpc_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(WeakRetained + 10);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_260CE3000, v2, OS_LOG_TYPE_DEFAULT, "Connection to %@ invalidated.", &v6, 0xCu);
    }

    (*(*(WeakRetained + 14) + 16))();
    pthread_mutex_lock((WeakRetained + 8));
    v4 = *(WeakRetained + 9);
    *(WeakRetained + 9) = 0;

    pthread_mutex_unlock((WeakRetained + 8));
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_connLock);
  v3.receiver = self;
  v3.super_class = PREXPCClientHelpers;
  [(PREXPCClientHelpers *)&v3 dealloc];
}

- (PREXPCClientHelpers)initWithServiceName:(id)a3 whitelistedServerInterface:(id)a4 clientExportedObject:(id)a5 interruptionHandler:(id)a6 invalidationHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v25.receiver = self;
  v25.super_class = PREXPCClientHelpers;
  v18 = [(PREXPCClientHelpers *)&v25 init];
  v19 = v18;
  if (v18)
  {
    pthread_mutex_init(&v18->_connLock, 0);
    objc_storeStrong(&v19->_serviceName, a3);
    objc_storeStrong(&v19->_whitelistedServerInterface, a4);
    objc_storeWeak(&v19->_clientExportedObject, v15);
    v20 = MEMORY[0x2666ECBF0](v16);
    interruptionHandler = v19->_interruptionHandler;
    v19->_interruptionHandler = v20;

    v22 = MEMORY[0x2666ECBF0](v17);
    invalidationHandler = v19->_invalidationHandler;
    v19->_invalidationHandler = v22;
  }

  return v19;
}

@end