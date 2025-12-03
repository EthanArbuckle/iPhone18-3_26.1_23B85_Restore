@interface ICRemoteRequestOperationController
+ (ICRemoteRequestOperationController)sharedRemoteRequestOperationController;
- (id)_clientConnection;
- (id)_init;
- (void)_cancelClientConnectionInvalidationTimer;
- (void)_clientConnectionInvalidationTimerDidExpire;
- (void)_didEndExecutingRemoteRequestOperation;
- (void)_invalidateClientConnection;
- (void)_scheduleInvalidationOfClientConnection;
- (void)_willBeginExecutingRemoteRequestOperation;
- (void)performRemoteRequestOperationWithExecutionContext:(id)context completionHandler:(id)handler;
@end

@implementation ICRemoteRequestOperationController

- (void)_willBeginExecutingRemoteRequestOperation
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__ICRemoteRequestOperationController__willBeginExecutingRemoteRequestOperation__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void *__79__ICRemoteRequestOperationController__willBeginExecutingRemoteRequestOperation__block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 16);
  result = *(a1 + 32);
  if (result[2] == 1)
  {
    return [result _cancelClientConnectionInvalidationTimer];
  }

  return result;
}

- (void)_scheduleInvalidationOfClientConnection
{
  dispatch_assert_queue_V2(self->_accessQueue);
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_accessQueue);
  clientConnectionInvalidationTimer = self->_clientConnectionInvalidationTimer;
  self->_clientConnectionInvalidationTimer = v3;

  v5 = self->_clientConnectionInvalidationTimer;
  v6 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v7 = self->_clientConnectionInvalidationTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __77__ICRemoteRequestOperationController__scheduleInvalidationOfClientConnection__block_invoke;
  handler[3] = &unk_1E7BFA300;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(self->_clientConnectionInvalidationTimer);
}

- (void)_clientConnectionInvalidationTimerDidExpire
{
  dispatch_assert_queue_V2(self->_accessQueue);
  [(ICRemoteRequestOperationController *)self _cancelClientConnectionInvalidationTimer];

  [(ICRemoteRequestOperationController *)self _invalidateClientConnection];
}

- (id)_clientConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4464;
  v10 = __Block_byref_object_dispose__4465;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__ICRemoteRequestOperationController__clientConnection__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __55__ICRemoteRequestOperationController__clientConnection__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Creating connection to remote request execution service.", v13, 2u);
    }

    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    v5 = +[ICRemoteRequestOperationExecuting machServiceName];
    v6 = [v4 initWithMachServiceName:v5 options:0];
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = v6;

    [*(*(a1 + 32) + 24) setExportedObject:?];
    v9 = *(*(a1 + 32) + 24);
    v10 = +[ICRemoteRequestOperationExecuting clientInterface];
    [v9 setExportedInterface:v10];

    v11 = *(*(a1 + 32) + 24);
    v12 = +[ICRemoteRequestOperationExecuting serviceInterface];
    [v11 setRemoteObjectInterface:v12];

    [*(*(a1 + 32) + 24) setInterruptionHandler:&__block_literal_global_9];
    [*(*(a1 + 32) + 24) setInvalidationHandler:&__block_literal_global_12];
    [*(*(a1 + 32) + 24) resume];
    v2 = *(*(a1 + 32) + 24);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

void __55__ICRemoteRequestOperationController__clientConnection__block_invoke_10()
{
  v0 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B4491000, v0, OS_LOG_TYPE_DEFAULT, "Connection to remote request execution service invalidated.", v1, 2u);
  }
}

void __55__ICRemoteRequestOperationController__clientConnection__block_invoke_7()
{
  v0 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B4491000, v0, OS_LOG_TYPE_DEFAULT, "Connection to remote request execution service interrupted.", v1, 2u);
  }
}

- (void)_invalidateClientConnection
{
  dispatch_assert_queue_V2(self->_accessQueue);
  clientConnection = self->_clientConnection;
  if (clientConnection)
  {
    [(NSXPCConnection *)clientConnection invalidate];
    v4 = self->_clientConnection;
    self->_clientConnection = 0;

    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating connection to remote request execution service.", v6, 2u);
    }
  }
}

- (void)_didEndExecutingRemoteRequestOperation
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__ICRemoteRequestOperationController__didEndExecutingRemoteRequestOperation__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void *__76__ICRemoteRequestOperationController__didEndExecutingRemoteRequestOperation__block_invoke(uint64_t a1)
{
  --*(*(a1 + 32) + 16);
  result = *(a1 + 32);
  if (!result[2])
  {
    return [result _scheduleInvalidationOfClientConnection];
  }

  return result;
}

- (void)_cancelClientConnectionInvalidationTimer
{
  dispatch_assert_queue_V2(self->_accessQueue);
  clientConnectionInvalidationTimer = self->_clientConnectionInvalidationTimer;
  if (clientConnectionInvalidationTimer)
  {
    dispatch_source_cancel(clientConnectionInvalidationTimer);
    v4 = self->_clientConnectionInvalidationTimer;
    self->_clientConnectionInvalidationTimer = 0;
  }
}

- (void)performRemoteRequestOperationWithExecutionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  [(ICRemoteRequestOperationController *)self _willBeginExecutingRemoteRequestOperation];
  _clientConnection = [(ICRemoteRequestOperationController *)self _clientConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __106__ICRemoteRequestOperationController_performRemoteRequestOperationWithExecutionContext_completionHandler___block_invoke;
  v14[3] = &unk_1E7BFA490;
  v14[4] = self;
  v9 = handlerCopy;
  v15 = v9;
  v10 = [_clientConnection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__ICRemoteRequestOperationController_performRemoteRequestOperationWithExecutionContext_completionHandler___block_invoke_3;
  v12[3] = &unk_1E7BF41C8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 performRemoteRequestOperationWithExecutionContext:contextCopy completionHandler:v12];
}

void __106__ICRemoteRequestOperationController_performRemoteRequestOperationWithExecutionContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to obtain remote proxy to perform remote request operation. error = %{public}@.", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

void __106__ICRemoteRequestOperationController_performRemoteRequestOperationWithExecutionContext_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _didEndExecutingRemoteRequestOperation];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4, 0);
  }
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = ICRemoteRequestOperationController;
  v2 = [(ICRemoteRequestOperationController *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesCloud.ICRemoteRequestOperationController.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

+ (ICRemoteRequestOperationController)sharedRemoteRequestOperationController
{
  if (sharedRemoteRequestOperationController_sOnceToken != -1)
  {
    dispatch_once(&sharedRemoteRequestOperationController_sOnceToken, &__block_literal_global_4482);
  }

  v3 = sharedRemoteRequestOperationController_sSharedRemoteRequestOperationController;

  return v3;
}

uint64_t __76__ICRemoteRequestOperationController_sharedRemoteRequestOperationController__block_invoke()
{
  v0 = [[ICRemoteRequestOperationController alloc] _init];
  v1 = sharedRemoteRequestOperationController_sSharedRemoteRequestOperationController;
  sharedRemoteRequestOperationController_sSharedRemoteRequestOperationController = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end