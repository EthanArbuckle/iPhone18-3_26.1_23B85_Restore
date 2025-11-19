@interface WFUIPresenterXPCConnection
- (WFUIPresenterXPCConnection)initWithConnection:(id)a3;
- (WFUIPresenterXPCConnection)initWithEndpoint:(id)a3;
- (WFUIPresenterXPCConnection)initWithMachServiceName:(id)a3;
- (WFUIPresenterXPCConnection)initWithServiceName:(id)a3;
- (id)presenterWithErrorHandler:(id)a3;
- (id)synchronousPresenterWithErrorHandler:(id)a3;
- (void)resumeConnectionIfNecessary;
- (void)setHost:(id)a3;
@end

@implementation WFUIPresenterXPCConnection

- (void)setHost:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__WFUIPresenterXPCConnection_setHost___block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  self->_host = v4;
  [(NSXPCConnection *)self->_connection setExportedObject:v4];
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4AAD268];
  [(NSXPCConnection *)self->_connection setExportedInterface:v6];

  v5[2](v5);
}

- (id)synchronousPresenterWithErrorHandler:(id)a3
{
  v4 = a3;
  [(WFUIPresenterXPCConnection *)self resumeConnectionIfNecessary];
  [(WFUIPresenterXPCConnection *)self setErrorHandler:v4];
  v5 = [(WFUIPresenterXPCConnection *)self connection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)presenterWithErrorHandler:(id)a3
{
  v4 = a3;
  [(WFUIPresenterXPCConnection *)self resumeConnectionIfNecessary];
  [(WFUIPresenterXPCConnection *)self setErrorHandler:v4];
  v5 = [(WFUIPresenterXPCConnection *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)resumeConnectionIfNecessary
{
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__WFUIPresenterXPCConnection_resumeConnectionIfNecessary__block_invoke;
  aBlock[3] = &unk_1E837FA70;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if (![(WFUIPresenterXPCConnection *)self connected])
  {
    v4 = [(WFUIPresenterXPCConnection *)self connection];
    [v4 resume];

    [(WFUIPresenterXPCConnection *)self setConnected:1];
  }

  v3[2](v3);
}

- (WFUIPresenterXPCConnection)initWithConnection:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = WFUIPresenterXPCConnection;
  v6 = [(WFUIPresenterXPCConnection *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_connection, a3);
    [(NSXPCConnection *)v7->_connection setInvalidationHandler:&__block_literal_global_172_22695];
    objc_initWeak(&location, v7);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __49__WFUIPresenterXPCConnection_initWithConnection___block_invoke_173;
    v14 = &unk_1E837B8F8;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)v7->_connection setInterruptionHandler:&v11];
    v8 = WFUIPresenterXPCInterface();
    [(NSXPCConnection *)v7->_connection setRemoteObjectInterface:v8, v11, v12, v13, v14];

    v9 = v7;
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __49__WFUIPresenterXPCConnection_initWithConnection___block_invoke_173(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained errorHandler];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 errorHandler];
    v6 = WFRunnerFailureErrorMessage(0);
    (v5)[2](v5, v6);

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 setErrorHandler:0];
  }
}

void __49__WFUIPresenterXPCConnection_initWithConnection___block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = getWFDialogLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "[WFUIPresenterXPCConnection initWithConnection:]_block_invoke";
    _os_log_impl(&dword_1CA256000, v0, OS_LOG_TYPE_ERROR, "%s Connection to remote UI presenter was invalidated.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (WFUIPresenterXPCConnection)initWithServiceName:(id)a3
{
  v4 = MEMORY[0x1E696B0B8];
  v5 = a3;
  v6 = [[v4 alloc] initWithServiceName:v5 options:0];

  v7 = [(WFUIPresenterXPCConnection *)self initWithConnection:v6];
  return v7;
}

- (WFUIPresenterXPCConnection)initWithEndpoint:(id)a3
{
  v4 = MEMORY[0x1E696B0B8];
  v5 = a3;
  v6 = [[v4 alloc] initWithListenerEndpoint:v5];

  v7 = [(WFUIPresenterXPCConnection *)self initWithConnection:v6];
  return v7;
}

- (WFUIPresenterXPCConnection)initWithMachServiceName:(id)a3
{
  v4 = MEMORY[0x1E696B0B8];
  v5 = a3;
  v6 = [[v4 alloc] initWithMachServiceName:v5 options:0];

  v7 = [(WFUIPresenterXPCConnection *)self initWithConnection:v6];
  return v7;
}

@end