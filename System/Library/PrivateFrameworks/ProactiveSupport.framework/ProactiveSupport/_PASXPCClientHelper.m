@interface _PASXPCClientHelper
- (_PASXPCClientHelper)initWithServiceName:(id)a3 connectionOptions:(unint64_t)a4 allowlistedServerInterface:(id)a5 allowlistedClientInterface:(id)a6 serverInitiatedRequestHandler:(id)a7 allowSystemToUserConnection:(BOOL)a8 interruptionHandler:(id)a9 invalidationHandler:(id)a10 logHandle:(id)a11;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)_locked_establishConnection;
- (void)dealloc;
@end

@implementation _PASXPCClientHelper

- (void)_locked_establishConnection
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_conn)
  {
    logHandle = self->_logHandle;
    if (logHandle && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = self->_serviceName;
      *buf = 138412290;
      v15 = serviceName;
      _os_log_impl(&dword_1A7F47000, logHandle, OS_LOG_TYPE_DEFAULT, "Establishing new connection to %@ .", buf, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_serviceName options:self->_connectionOptions];
    conn = self->_conn;
    self->_conn = v5;

    [(NSXPCConnection *)self->_conn setRemoteObjectInterface:self->_allowlistedServerInterface];
    [(NSXPCConnection *)self->_conn setExportedObject:self->_serverInitiatedRequestHandler];
    [(NSXPCConnection *)self->_conn setExportedInterface:self->_allowlistedClientInterface];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50___PASXPCClientHelper__locked_establishConnection__block_invoke;
    v11[3] = &unk_1E77F22C0;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)self->_conn setInterruptionHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50___PASXPCClientHelper__locked_establishConnection__block_invoke_7;
    v9[3] = &unk_1E77F22C0;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)self->_conn setInvalidationHandler:v9];
    if (self->_allowSystemToUserConnection && xpc_user_sessions_enabled())
    {
      xpc_user_sessions_get_foreground_uid();
      v7 = [(NSXPCConnection *)self->_conn _xpcConnection];
      xpc_connection_set_target_user_session_uid();
    }

    [(NSXPCConnection *)self->_conn resume];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_connLock);
  [(NSXPCConnection *)self->_conn invalidate];
  v3.receiver = self;
  v3.super_class = _PASXPCClientHelper;
  [(_PASXPCClientHelper *)&v3 dealloc];
}

- (id)remoteObjectProxy
{
  pthread_mutex_lock(&self->_connLock);
  [(_PASXPCClientHelper *)self _locked_establishConnection];
  v3 = [(NSXPCConnection *)self->_conn remoteObjectProxy];
  pthread_mutex_unlock(&self->_connLock);

  return v3;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_connLock);
  [(_PASXPCClientHelper *)self _locked_establishConnection];
  v5 = [(NSXPCConnection *)self->_conn synchronousRemoteObjectProxyWithErrorHandler:v4];

  pthread_mutex_unlock(&self->_connLock);

  return v5;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_connLock);
  [(_PASXPCClientHelper *)self _locked_establishConnection];
  v5 = [(NSXPCConnection *)self->_conn remoteObjectProxyWithErrorHandler:v4];

  pthread_mutex_unlock(&self->_connLock);

  return v5;
}

- (_PASXPCClientHelper)initWithServiceName:(id)a3 connectionOptions:(unint64_t)a4 allowlistedServerInterface:(id)a5 allowlistedClientInterface:(id)a6 serverInitiatedRequestHandler:(id)a7 allowSystemToUserConnection:(BOOL)a8 interruptionHandler:(id)a9 invalidationHandler:(id)a10 logHandle:(id)a11
{
  v31 = a3;
  v30 = a5;
  v29 = a6;
  v28 = a7;
  v17 = a9;
  v18 = a10;
  v19 = a11;
  v32.receiver = self;
  v32.super_class = _PASXPCClientHelper;
  v20 = [(_PASXPCClientHelper *)&v32 init];
  v21 = v20;
  if (v20)
  {
    pthread_mutex_init(&v20->_connLock, 0);
    objc_storeStrong(&v21->_serviceName, a3);
    v21->_connectionOptions = a4;
    objc_storeStrong(&v21->_allowlistedServerInterface, a5);
    objc_storeStrong(&v21->_allowlistedClientInterface, a6);
    objc_storeStrong(&v21->_serverInitiatedRequestHandler, a7);
    v22 = MEMORY[0x1AC566DD0](v17);
    interruptionHandler = v21->_interruptionHandler;
    v21->_interruptionHandler = v22;

    v24 = MEMORY[0x1AC566DD0](v18);
    invalidationHandler = v21->_invalidationHandler;
    v21->_invalidationHandler = v24;

    objc_storeStrong(&v21->_logHandle, a11);
    v21->_allowSystemToUserConnection = a8;
  }

  return v21;
}

@end