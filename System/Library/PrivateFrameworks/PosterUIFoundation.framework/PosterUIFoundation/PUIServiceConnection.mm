@interface PUIServiceConnection
+ (PUIServiceConnection)defaultConnection;
- (id)connectionActivateIfNeededWithError:(id *)error;
- (id)initToEndpoint:(id)endpoint;
- (id)initToServiceName:(id)name;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
@end

@implementation PUIServiceConnection

+ (PUIServiceConnection)defaultConnection
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PUIServiceConnection_defaultConnection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultConnection_onceToken != -1)
  {
    dispatch_once(&defaultConnection_onceToken, block);
  }

  v2 = defaultConnection___result;

  return v2;
}

uint64_t __41__PUIServiceConnection_defaultConnection__block_invoke(uint64_t a1)
{
  defaultConnection___result = [objc_alloc(*(a1 + 32)) initToServiceName:@"com.apple.springboard.SBRendererService"];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initToServiceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    [PUIServiceConnection initToServiceName:a2];
  }

  v6 = nameCopy;
  v11.receiver = self;
  v11.super_class = PUIServiceConnection;
  v7 = [(PUIServiceConnection *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    serviceName = v7->_serviceName;
    v7->_serviceName = v8;

    v7->_connectionLock = 0;
  }

  return v7;
}

- (id)initToEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (!endpointCopy)
  {
    [PUIServiceConnection initToEndpoint:a2];
  }

  v7 = endpointCopy;
  v11.receiver = self;
  v11.super_class = PUIServiceConnection;
  v8 = [(PUIServiceConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_endpoint, endpoint);
    v9->_connectionLock = 0;
  }

  return v9;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  v9 = 0;
  handlerCopy = handler;
  v5 = [(PUIServiceConnection *)self connectionActivateIfNeededWithError:&v9];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, v9);
    v7 = 0;
  }

  return v7;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  v9 = 0;
  handlerCopy = handler;
  v5 = [(PUIServiceConnection *)self connectionActivateIfNeededWithError:&v9];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, v9);
    v7 = 0;
  }

  return v7;
}

- (id)connectionActivateIfNeededWithError:(id *)error
{
  v28[2] = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  if (self->_lock_connection)
  {
    goto LABEL_11;
  }

  if (self->_serviceName)
  {
    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:self->_serviceName];
  }

  else
  {
    if (!self->_endpoint)
    {
      goto LABEL_7;
    }

    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:self->_endpoint];
  }

  lock_connection = self->_lock_connection;
  self->_lock_connection = v5;

LABEL_7:
  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1CCDFA0];
  v8 = +[PUICARemoteRenderer secureCodableRequestClasses];
  [v7 setClasses:v8 forSelector:sel_renderRequest_reply_ argumentIndex:0 ofReply:0];

  v9 = +[PUIAnalysisService secureCodableRequestClasses];
  [v7 setClasses:v9 forSelector:sel_executeAnalysisRequest_reply_ argumentIndex:0 ofReply:0];

  v10 = +[PUIAnalysisService secureCodableResponseClasses];
  [v7 setClasses:v10 forSelector:sel_executeAnalysisRequest_reply_ argumentIndex:0 ofReply:1];

  v11 = +[PUIAnalysisService secureCodableResponseClasses];
  [v7 setClasses:v11 forSelector:sel_executeAnalysisRequest_reply_ argumentIndex:1 ofReply:1];

  v12 = +[PUIAnalysisService secureCodableRequestClasses];
  [v7 setClasses:v12 forSelector:sel_executeAnalysisRequest_error_ argumentIndex:0 ofReply:0];

  v13 = +[PUIAnalysisService secureCodableRequestClasses];
  [v7 setClasses:v13 forSelector:sel_executeAnalysisRequest_error_ argumentIndex:1 ofReply:0];

  v14 = +[PUIAnalysisService secureCodableRequestClasses];
  [v7 setClasses:v14 forSelector:sel_cancelRequest_ argumentIndex:0 ofReply:0];

  [(NSXPCConnection *)self->_lock_connection setRemoteObjectInterface:v7];
  objc_initWeak(&location, self);
  v15 = self->_lock_connection;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __60__PUIServiceConnection_connectionActivateIfNeededWithError___block_invoke;
  v24 = &unk_1E7854B70;
  objc_copyWeak(&v25, &location);
  [(NSXPCConnection *)v15 setInvalidationHandler:&v21];
  [(NSXPCConnection *)self->_lock_connection activate];
  if (error && !self->_lock_connection)
  {
    v16 = MEMORY[0x1E696ABC0];
    v27[0] = *MEMORY[0x1E696A580];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Connection to service (%@) refused on activation.", self->_serviceName, v21, v22, v23, v24];
    v27[1] = *MEMORY[0x1E696A588];
    v28[0] = v17;
    v28[1] = @"Ensure this process has the correct sandbox for connection and that the service is not crashing or failing to load.";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    *error = [v16 errorWithDomain:*MEMORY[0x1E696A798] code:61 userInfo:v18];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

LABEL_11:
  os_unfair_recursive_lock_unlock();
  v19 = self->_lock_connection;

  return v19;
}

void __60__PUIServiceConnection_connectionActivateIfNeededWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_recursive_lock_lock_with_options();
    v2 = v3[4];
    v3[4] = 0;

    os_unfair_recursive_lock_unlock();
    WeakRetained = v3;
  }
}

- (void)dealloc
{
  os_unfair_recursive_lock_lock_with_options();
  lock_connection = self->_lock_connection;
  if (lock_connection)
  {
    [(NSXPCConnection *)lock_connection invalidate];
    v4 = self->_lock_connection;
    self->_lock_connection = 0;
  }

  os_unfair_recursive_lock_unlock();
  v5.receiver = self;
  v5.super_class = PUIServiceConnection;
  [(PUIServiceConnection *)&v5 dealloc];
}

- (void)initToServiceName:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"serviceName"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"PUIServiceConnection.m";
    v9 = 1024;
    v10 = 40;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initToEndpoint:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"endpoint"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"PUIServiceConnection.m";
    v9 = 1024;
    v10 = 50;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end