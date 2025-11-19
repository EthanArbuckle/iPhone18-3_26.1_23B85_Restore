@interface PPXPCClientHelper
- (PPXPCClientHelper)initWithServiceName:(id)a3 allowedServerInterface:(id)a4 allowedClientInterface:(id)a5 clientExportedObject:(id)a6 interruptionHandler:(id)a7 invalidationHandler:(id)a8;
- (id)remoteObjectProxy;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)_locked_establishConnection;
- (void)dealloc;
@end

@implementation PPXPCClientHelper

- (id)remoteObjectProxy
{
  pthread_mutex_lock(&self->_connLock);
  [(PPXPCClientHelper *)self _locked_establishConnection];
  v3 = [(NSXPCConnection *)self->_conn remoteObjectProxy];
  pthread_mutex_unlock(&self->_connLock);

  return v3;
}

- (void)_locked_establishConnection
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_conn)
  {
    v3 = pp_xpc_client_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = self->_serviceName;
      *buf = 138412290;
      v17 = serviceName;
      _os_log_impl(&dword_1A7FD3000, v3, OS_LOG_TYPE_DEFAULT, "Establishing new connection to %@ .", buf, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_serviceName options:0];
    conn = self->_conn;
    self->_conn = v5;

    [(NSXPCConnection *)self->_conn setRemoteObjectInterface:self->_allowedServerInterface];
    WeakRetained = objc_loadWeakRetained(&self->_clientExportedObject);
    [(NSXPCConnection *)self->_conn setExportedObject:WeakRetained];

    if (self->_allowedClientInterface)
    {
      [(NSXPCConnection *)self->_conn setExportedInterface:?];
    }

    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__PPXPCClientHelper__locked_establishConnection__block_invoke;
    v14[3] = &unk_1E77F7970;
    objc_copyWeak(&v15, buf);
    [(NSXPCConnection *)self->_conn setInterruptionHandler:v14];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __48__PPXPCClientHelper__locked_establishConnection__block_invoke_7;
    v12 = &unk_1E77F7970;
    objc_copyWeak(&v13, buf);
    [(NSXPCConnection *)self->_conn setInvalidationHandler:&v9];
    [(NSXPCConnection *)self->_conn resume:v9];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_connLock);
  [(PPXPCClientHelper *)self _locked_establishConnection];
  v5 = [(NSXPCConnection *)self->_conn synchronousRemoteObjectProxyWithErrorHandler:v4];

  pthread_mutex_unlock(&self->_connLock);

  return v5;
}

void __48__PPXPCClientHelper__locked_establishConnection__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = pp_xpc_client_log_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = WeakRetained[10];
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v5, 0xCu);
    }

    (*(WeakRetained[14] + 16))();
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __48__PPXPCClientHelper__locked_establishConnection__block_invoke_7(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = pp_xpc_client_log_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(WeakRetained + 10);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_INFO, "Connection to %@ invalidated.", &v6, 0xCu);
    }

    (*(*(WeakRetained + 15) + 16))();
    pthread_mutex_lock((WeakRetained + 8));
    v4 = *(WeakRetained + 9);
    *(WeakRetained + 9) = 0;

    pthread_mutex_unlock((WeakRetained + 8));
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_conn invalidate];
  pthread_mutex_destroy(&self->_connLock);
  v3.receiver = self;
  v3.super_class = PPXPCClientHelper;
  [(PPXPCClientHelper *)&v3 dealloc];
}

- (PPXPCClientHelper)initWithServiceName:(id)a3 allowedServerInterface:(id)a4 allowedClientInterface:(id)a5 clientExportedObject:(id)a6 interruptionHandler:(id)a7 invalidationHandler:(id)a8
{
  v27 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v28.receiver = self;
  v28.super_class = PPXPCClientHelper;
  v20 = [(PPXPCClientHelper *)&v28 init];
  v21 = v20;
  if (v20)
  {
    pthread_mutex_init(&v20->_connLock, 0);
    objc_storeStrong(&v21->_serviceName, a3);
    objc_storeStrong(&v21->_allowedServerInterface, a4);
    objc_storeStrong(&v21->_allowedClientInterface, a5);
    objc_storeWeak(&v21->_clientExportedObject, v17);
    v22 = MEMORY[0x1AC568040](v18);
    interruptionHandler = v21->_interruptionHandler;
    v21->_interruptionHandler = v22;

    v24 = MEMORY[0x1AC568040](v19);
    invalidationHandler = v21->_invalidationHandler;
    v21->_invalidationHandler = v24;
  }

  return v21;
}

@end