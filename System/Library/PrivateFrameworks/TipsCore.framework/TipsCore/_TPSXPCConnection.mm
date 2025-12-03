@interface _TPSXPCConnection
- (_TPSXPCConnection)initWithListenerEndpoint:(id)endpoint;
- (_TPSXPCConnection)initWithMachServiceName:(id)name options:(unint64_t)options;
- (_TPSXPCConnection)initWithServiceName:(id)name;
- (_TPSXPCConnection)initWithUnderlyingConnection:(id)connection;
- (_TPSXPCExportable)exportedObject;
- (void)dealloc;
- (void)resume;
- (void)setInterruptionHandler:(id)handler;
- (void)setInvalidationHandler:(id)handler;
@end

@implementation _TPSXPCConnection

- (void)dealloc
{
  [(NSXPCConnection *)self->_underlyingConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_underlyingConnection invalidate];
  v3.receiver = self;
  v3.super_class = _TPSXPCConnection;
  [(_TPSXPCConnection *)&v3 dealloc];
}

- (_TPSXPCConnection)initWithServiceName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:nameCopy];
  if (v5)
  {
    self = [(_TPSXPCConnection *)self initWithUnderlyingConnection:v5];
    selfCopy = self;
  }

  else
  {
    v7 = +[TPSLogger data];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_TPSXPCConnection *)nameCopy initWithServiceName:v7];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (_TPSXPCConnection)initWithMachServiceName:(id)name options:(unint64_t)options
{
  nameCopy = name;
  v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:nameCopy options:options];
  if (v7)
  {
    self = [(_TPSXPCConnection *)self initWithUnderlyingConnection:v7];
    selfCopy = self;
  }

  else
  {
    v9 = +[TPSLogger data];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_TPSXPCConnection *)nameCopy initWithServiceName:v9];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (_TPSXPCConnection)initWithListenerEndpoint:(id)endpoint
{
  v4 = MEMORY[0x1E696B0B8];
  endpointCopy = endpoint;
  v6 = [[v4 alloc] initWithListenerEndpoint:endpointCopy];

  v7 = [(_TPSXPCConnection *)self initWithUnderlyingConnection:v6];
  return v7;
}

- (_TPSXPCConnection)initWithUnderlyingConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = _TPSXPCConnection;
  v6 = [(_TPSXPCConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingConnection, connection);
    [(_TPSXPCConnection *)v7 setInterruptionHandler:0];
    [(_TPSXPCConnection *)v7 setInvalidationHandler:0];
  }

  return v7;
}

- (void)resume
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  if (WeakRetained)
  {
    if (self->_debugIdentifier)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", self->_debugIdentifier];
    }

    else
    {
      v4 = &stru_1F3F2F4B8;
    }

    serviceName = [(NSXPCConnection *)self->_underlyingConnection serviceName];
    v6 = serviceName;
    v7 = @"<anonymous>";
    if (serviceName)
    {
      v7 = serviceName;
    }

    v8 = v7;

    objc_initWeak(&location, self);
    underlyingConnection = self->_underlyingConnection;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __27___TPSXPCConnection_resume__block_invoke;
    v24[3] = &unk_1E8102E98;
    objc_copyWeak(&v27, &location);
    v10 = v4;
    v25 = v10;
    v11 = v8;
    v26 = v11;
    [(NSXPCConnection *)underlyingConnection setInterruptionHandler:v24];
    v12 = self->_underlyingConnection;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __27___TPSXPCConnection_resume__block_invoke_12;
    v20[3] = &unk_1E8102E98;
    objc_copyWeak(&v23, &location);
    v13 = v10;
    v21 = v13;
    v14 = v11;
    v22 = v14;
    [(NSXPCConnection *)v12 setInvalidationHandler:v20];
    v15 = self->_underlyingConnection;
    exportedInterface = [WeakRetained exportedInterface];
    [(NSXPCConnection *)v15 setExportedInterface:exportedInterface];

    v17 = self->_underlyingConnection;
    remoteInterface = [WeakRetained remoteInterface];
    [(NSXPCConnection *)v17 setRemoteObjectInterface:remoteInterface];

    v19 = objc_alloc_init(_TPSXPCExportedObjectProxy);
    [(_TPSXPCExportedObjectProxy *)v19 setWeakExportedObject:WeakRetained];
    [(NSXPCConnection *)self->_underlyingConnection setExportedObject:v19];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained connectionConfigured];
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  [(NSXPCConnection *)self->_underlyingConnection resume];
}

- (void)setInterruptionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44___TPSXPCConnection_setInterruptionHandler___block_invoke;
    v7[3] = &unk_1E8101890;
    objc_copyWeak(&v8, &location);
    handlerCopy = _Block_copy(v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  v5 = _Block_copy(handlerCopy);
  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = v5;
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44___TPSXPCConnection_setInvalidationHandler___block_invoke;
    v7[3] = &unk_1E8101890;
    objc_copyWeak(&v8, &location);
    handlerCopy = _Block_copy(v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  v5 = _Block_copy(handlerCopy);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v5;
}

- (_TPSXPCExportable)exportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  return WeakRetained;
}

- (void)initWithServiceName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_ERROR, "Could not establish connection with %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end