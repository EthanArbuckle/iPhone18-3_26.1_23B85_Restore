@interface PLAssetsdClientXPCConnection
- (PLAssetsdClientXPCConnection)connectionWithErrorHandler:(id)a3;
- (PLAssetsdClientXPCConnection)init;
- (id)_primitiveSynchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)_unboostingRemoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (void)_makeNewResumedConnection;
- (void)_postInterruptedNotification;
- (void)addBarrierBlock:(id)a3;
- (void)handleInterruption;
- (void)handleInvalidation;
- (void)invalidate;
@end

@implementation PLAssetsdClientXPCConnection

- (PLAssetsdClientXPCConnection)init
{
  v10.receiver = self;
  v10.super_class = PLAssetsdClientXPCConnection;
  v2 = [(PLAssetsdClientXPCConnection *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("XPC client-side state isolation queue", 0);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v3;

    v5 = dispatch_queue_create("XPC client-side XPC notification queue", 0);
    externalNotificationQueue = v2->_externalNotificationQueue;
    v2->_externalNotificationQueue = v5;

    v7 = objc_alloc_init(PLAssetsdClientService);
    assetsdClientService = v2->_assetsdClientService;
    v2->_assetsdClientService = v7;
  }

  return v2;
}

- (id)_unboostingRemoteObjectProxy
{
  v2 = [(PLAssetsdClientXPCConnection *)self connectionWithErrorHandler:&__block_literal_global_12086];
  v3 = [v2 _unboostingRemoteObjectProxy];

  return v3;
}

void __60__PLAssetsdClientXPCConnection__unboostingRemoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Unable to create XPC connection with error: %@", &v4, 0xCu);
  }
}

- (id)_primitiveSynchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(PLAssetsdClientXPCConnection *)self connectionWithErrorHandler:v4];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(PLAssetsdClientXPCConnection *)self connectionWithErrorHandler:v4];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)addBarrierBlock:(id)a3
{
  v4 = a3;
  isolationQueue = self->_isolationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PLAssetsdClientXPCConnection_addBarrierBlock___block_invoke;
  v7[3] = &unk_1E7932AB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(isolationQueue, v7);
}

uint64_t __48__PLAssetsdClientXPCConnection_addBarrierBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v3 = *(a1 + 40);

    return [v2 addBarrierBlock:v3];
  }

  else
  {
    v5 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "Calling addBarrierBlock: when NSXPCConnection has not been created", v6, 2u);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

- (void)_makeNewResumedConnection
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_connection)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLAssetsdClientXPCConnection.m" lineNumber:128 description:@"_connection is already set"];
  }

  if (self->_connectionLogger)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLAssetsdClientXPCConnection.m" lineNumber:129 description:@"_connectionLogger is already set"];
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.photos.service" options:0];
  v5 = +[PLAssetsdInterface assetsdInterface];
  [v4 setRemoteObjectInterface:v5];

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1F9A8A8];
  [v4 setExportedInterface:v6];

  [v4 setExportedObject:self->_assetsdClientService];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__PLAssetsdClientXPCConnection__makeNewResumedConnection__block_invoke;
  v13[3] = &unk_1E7932A90;
  objc_copyWeak(&v14, &location);
  [v4 setInterruptionHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__PLAssetsdClientXPCConnection__makeNewResumedConnection__block_invoke_2;
  v11[3] = &unk_1E7932A90;
  objc_copyWeak(&v12, &location);
  [v4 setInvalidationHandler:v11];
  if (+[PLXPCMessageLogger enabled])
  {
    v7 = objc_alloc_init(PLXPCMessageLogger);
    connectionLogger = self->_connectionLogger;
    self->_connectionLogger = v7;

    [v4 setDelegate:self->_connectionLogger];
  }

  objc_storeStrong(&self->_connection, v4);
  [v4 resume];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __57__PLAssetsdClientXPCConnection__makeNewResumedConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleInterruption];
}

void __57__PLAssetsdClientXPCConnection__makeNewResumedConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleInvalidation];
}

- (PLAssetsdClientXPCConnection)connectionWithErrorHandler:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__12105;
  v17 = __Block_byref_object_dispose__12106;
  v18 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PLAssetsdClientXPCConnection_connectionWithErrorHandler___block_invoke;
  block[3] = &unk_1E7932A58;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(isolationQueue, block);
  v6 = v14[5];
  if (!v6)
  {
    v7 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = @"PLAssetsdClientXPCConnection is unable to create an NSXPCConnection";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.photos.error" code:41003 userInfo:v8];

    v4[2](v4, v9);
    v6 = v14[5];
  }

  v10 = v6;
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __59__PLAssetsdClientXPCConnection_connectionWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (!v3)
  {
    [v2 _makeNewResumedConnection];
    v3 = *(*(a1 + 32) + 24);
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

- (void)handleInvalidation
{
  isShuttingDown = self->_isShuttingDown;
  v4 = PLGatekeeperXPCGetLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isShuttingDown)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v6 = "Connection to assetsd was invalidated from client side. Setting connection object to nil.";
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v6 = "Connection to assetsd was invalidated - connection cannot be formed, or remote endpoint/listener was invalidated. Setting connection object to nil.";
  }

  _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
LABEL_7:

  if (!self->_isShuttingDown)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"PLAssetsdClientXPCConnectionInvalidatedNotificationName" object:self];
  }

  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PLAssetsdClientXPCConnection_handleInvalidation__block_invoke;
  block[3] = &unk_1E79329F0;
  block[4] = self;
  dispatch_async(isolationQueue, block);
}

void __50__PLAssetsdClientXPCConnection_handleInvalidation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 32))
  {
    [*(v1 + 24) setDelegate:0];
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;

    v1 = *(a1 + 32);
  }

  v5 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (void)_postInterruptedNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"PLAssetsdClientXPCConnectionInterruptedInternalNotificationName" object:self];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__PLAssetsdClientXPCConnection__postInterruptedNotification__block_invoke;
  v6[3] = &unk_1E7932A28;
  v7 = v3;
  v8 = self;
  v4 = v3;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v6);
  dispatch_async(self->_externalNotificationQueue, v5);
}

- (void)handleInterruption
{
  isShuttingDown = self->_isShuttingDown;
  v4 = PLGatekeeperXPCGetLog();
  v5 = v4;
  if (isShuttingDown)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v6 = "Connection to assetsd was interrupted (shutting down)";
      v7 = &v11;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_1AA9BD000, v8, v9, v6, v7, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 0;
    v6 = "Connection to assetsd was interrupted - assetsd exited, died, or closed the photo library";
    v7 = &v10;
    v8 = v5;
    v9 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  [(PLAssetsdClientXPCConnection *)self _postInterruptedNotification];
}

- (void)invalidate
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PLAssetsdClientXPCConnection_invalidate__block_invoke;
  block[3] = &unk_1E79329F0;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

@end