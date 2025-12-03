@interface SFXPCClient
- (BOOL)shouldEscapeXpcTryCatch;
- (SFXPCClient)init;
- (id)exportedInterface;
- (id)machServiceName;
- (id)remoteObjectInterface;
- (void)_activate;
- (void)_invalidate;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)connectionEstablished;
- (void)dealloc;
- (void)getRemoteObjectProxyOnQueue:(id)queue;
- (void)interrupted;
- (void)invalidated;
- (void)onqueue_activate;
- (void)onqueue_connectionEstablished;
- (void)onqueue_connectionInterrupted;
- (void)onqueue_connectionInvalidated;
- (void)onqueue_ensureConnectionEstablished;
- (void)onqueue_ensureXPCStarted;
- (void)onqueue_getRemoteObjectProxyOnQueue:(id)queue;
- (void)onqueue_interrupted;
- (void)onqueue_invalidate;
- (void)onqueue_invalidated;
- (void)setDispatchQueue:(id)queue;
@end

@implementation SFXPCClient

- (void)onqueue_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_connection)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    machServiceName = [(SFXPCClient *)self machServiceName];
    v5 = [v3 initWithMachServiceName:machServiceName options:0];
    connection = self->_connection;
    self->_connection = v5;

    if ([(SFXPCClient *)self shouldEscapeXpcTryCatch])
    {
      [(NSXPCConnection *)self->_connection setDelegate:self];
    }

    [(NSXPCConnection *)self->_connection _setQueue:self->_dispatchQueue];
    remoteObjectInterface = [(SFXPCClient *)self remoteObjectInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:remoteObjectInterface];

    exportedInterface = [(SFXPCClient *)self exportedInterface];
    [(NSXPCConnection *)self->_connection setExportedInterface:exportedInterface];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__SFXPCClient_onqueue_ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E788B4D0;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__SFXPCClient_onqueue_ensureXPCStarted__block_invoke_2;
    v10[3] = &unk_1E788B4D0;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v10];
    [(NSXPCConnection *)self->_connection resume];
    v9 = daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SFXPCClient onqueue_ensureXPCStarted];
    }

    [(SFXPCClient *)self onqueue_ensureConnectionEstablished];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (SFXPCClient)init
{
  v6.receiver = self;
  v6.super_class = SFXPCClient;
  v2 = [(SFXPCClient *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_connection)
  {
    v4 = [SFXPCClient dealloc];
    [(SFXPCClient *)v4 setDispatchQueue:v5, v6];
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    if (dispatchQueue)
    {
      self->_dispatchQueue = 0;
    }

    v7.receiver = self;
    v7.super_class = SFXPCClient;
    [(SFXPCClient *)&v7 dealloc];
  }
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activateCalled)
  {
    FatalErrorF();
    __break(1u);
  }

  else
  {
    dispatchQueue = obj->_dispatchQueue;
    obj->_dispatchQueue = queueCopy;

    objc_sync_exit(obj);
  }
}

- (void)getRemoteObjectProxyOnQueue:(id)queue
{
  queueCopy = queue;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SFXPCClient_getRemoteObjectProxyOnQueue___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)onqueue_getRemoteObjectProxyOnQueue:(id)queue
{
  queueCopy = queue;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activateCalled)
  {
    [(SFXPCClient *)self onqueue_ensureXPCStarted];
    v4 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_25];
    queueCopy[2](queueCopy, v4);
  }

  else
  {
    v5 = [SFXPCClient onqueue_getRemoteObjectProxyOnQueue:];
    __51__SFXPCClient_onqueue_getRemoteObjectProxyOnQueue___block_invoke(v5);
  }
}

void __51__SFXPCClient_onqueue_getRemoteObjectProxyOnQueue___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __51__SFXPCClient_onqueue_getRemoteObjectProxyOnQueue___block_invoke_cold_1(v2, v3);
  }
}

- (void)_activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__SFXPCClient__activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)onqueue_activate
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  activateCalled = self->_activateCalled;
  v4 = daemon_log();
  v5 = v4;
  if (activateCalled)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SFXPCClient onqueue_activate];
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      machServiceName = [(SFXPCClient *)self machServiceName];
      v8 = 138412290;
      v9 = machServiceName;
      _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Activating %@", &v8, 0xCu);
    }

    self->_activateCalled = 1;
    [(SFXPCClient *)self onqueue_ensureXPCStarted];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SFXPCClient__invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)onqueue_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    connection = self->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection invalidate];
      v4 = self->_connection;
      self->_connection = 0;
    }

    else
    {

      [(SFXPCClient *)self onqueue_invalidated];
    }
  }
}

void __39__SFXPCClient_onqueue_ensureXPCStarted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained shouldEscapeXpcTryCatch];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v3)
  {
    [v4 onqueue_interrupted];
  }

  else
  {
    [v4 interrupted];
  }
}

void __39__SFXPCClient_onqueue_ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained shouldEscapeXpcTryCatch];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v3)
  {
    [v4 onqueue_invalidated];
  }

  else
  {
    [v4 invalidated];
  }
}

- (void)onqueue_ensureConnectionEstablished
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Establishing connection", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SFXPCClient_onqueue_ensureConnectionEstablished__block_invoke;
  v4[3] = &unk_1E788CDE0;
  objc_copyWeak(&v5, buf);
  [(SFXPCClient *)self onqueue_getRemoteObjectProxyOnQueue:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

void __50__SFXPCClient_onqueue_ensureConnectionEstablished__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SFXPCClient_onqueue_ensureConnectionEstablished__block_invoke_2;
  v4[3] = &unk_1E788B4D0;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 establishConnectionWithCompletionHandler:v4];
  objc_destroyWeak(&v5);
}

void __50__SFXPCClient_onqueue_ensureConnectionEstablished__block_invoke_2(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "connection established", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained shouldEscapeXpcTryCatch];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = v5;
  if (v4)
  {
    [v5 onqueue_connectionEstablished];
  }

  else
  {
    [v5 connectionEstablished];
  }
}

- (void)interrupted
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SFXPCClient_interrupted__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)onqueue_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Interrupted", v4, 2u);
  }

  [(SFXPCClient *)self onqueue_connectionInterrupted];
  [(SFXPCClient *)self onqueue_ensureConnectionEstablished];
}

- (void)invalidated
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SFXPCClient_invalidated__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)onqueue_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled)
    {
      v3 = daemon_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [SFXPCClient onqueue_invalidated];
      }
    }

    [(SFXPCClient *)self onqueue_connectionInvalidated];
    connection = self->_connection;
    self->_connection = 0;

    self->_invalidateDone = 1;
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Invalidated", v6, 2u);
    }
  }
}

- (void)connectionEstablished
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SFXPCClient_connectionEstablished__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  invocationCopy = invocation;
  [invocationCopy retainArguments];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SFXPCClient_connection_handleInvocation_isReply___block_invoke;
  block[3] = &unk_1E788B198;
  v10 = invocationCopy;
  v8 = invocationCopy;
  dispatch_async(dispatchQueue, block);
}

- (id)machServiceName
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"Subclass %@ must override %@", v7, v8];
  v10 = [v3 exceptionWithName:v4 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)exportedInterface
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"Subclass %@ must override %@", v7, v8];
  v10 = [v3 exceptionWithName:v4 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)remoteObjectInterface
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"Subclass %@ must override %@", v7, v8];
  v10 = [v3 exceptionWithName:v4 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (BOOL)shouldEscapeXpcTryCatch
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"Subclass %@ must override %@", v7, v8];
  v10 = [v3 exceptionWithName:v4 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)onqueue_connectionEstablished
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "connection established", v3, 2u);
  }
}

- (void)onqueue_connectionInterrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [SFXPCClient onqueue_connectionInterrupted];
  }
}

- (void)onqueue_connectionInvalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [SFXPCClient onqueue_connectionInvalidated];
  }
}

void __51__SFXPCClient_onqueue_getRemoteObjectProxyOnQueue___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 debugDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Failed to get remote object proxy: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end