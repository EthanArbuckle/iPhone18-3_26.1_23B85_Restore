@interface PRUISExternallyHostedPosterEditingServer
- (PRUISExternallyHostedPosterEditingServer)init;
- (PRUISExternallyHostedPosterEditingServerDelegate)delegate;
- (void)_queue_addConnection:(id)connection;
- (void)_queue_associateConnection:(id)connection toEditingRequest:(id)request;
- (void)_queue_disassociateConnection:(id)connection fromEditingRequest:(id)request;
- (void)_queue_removeConnection:(id)connection;
- (void)activate;
- (void)beginEditingWithEntryPointWrapper:(id)wrapper completion:(id)completion;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)sendRequestDismissalActionWithEntryPointWrapper:(id)wrapper;
- (void)sessionWithEditingRequest:(id)request didEndEditingWithResponse:(id)response;
- (void)sessionWithEditingRequest:(id)request willEndEditingWithResponse:(id)response;
@end

@implementation PRUISExternallyHostedPosterEditingServer

- (PRUISExternallyHostedPosterEditingServer)init
{
  v16.receiver = self;
  v16.super_class = PRUISExternallyHostedPosterEditingServer;
  v2 = [(PRUISExternallyHostedPosterEditingServer *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.posterboardui.externalEditing.Server.queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = MEMORY[0x1E698F4B8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__PRUISExternallyHostedPosterEditingServer_init__block_invoke;
    v14[3] = &unk_1E83A8E00;
    v6 = v2;
    v15 = v6;
    v7 = [v5 listenerWithConfigurator:v14];
    connectionListener = v6->_connectionListener;
    v6->_connectionListener = v7;

    array = [MEMORY[0x1E695DF70] array];
    connections = v6->_connections;
    v6->_connections = array;

    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    connectionsByEditingRequest = v6->_connectionsByEditingRequest;
    v6->_connectionsByEditingRequest = weakToWeakObjectsMapTable;
  }

  return v2;
}

void __48__PRUISExternallyHostedPosterEditingServer_init__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setDomain:@"com.apple.posterboardui"];
  v3 = PRUISExternallyHostedPosterEditingServiceInterface();
  v4 = [v3 identifier];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 32)];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
  deviceClass = [mEMORY[0x1E698E730] deviceClass];

  if (deviceClass != 2)
  {
    v14 = PRUISLogRemoteEditing();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PRUISExternallyHostedPosterEditingServer listener:connectionCopy didReceiveConnection:v14 withContext:?];
    }

    goto LABEL_10;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __86__PRUISExternallyHostedPosterEditingServer_listener_didReceiveConnection_withContext___block_invoke;
  v17[3] = &unk_1E83A8E50;
  v17[4] = self;
  [connectionCopy configureConnection:v17];
  remoteProcess = [connectionCopy remoteProcess];
  v10 = [remoteProcess hasEntitlement:@"com.apple.posterboardui.externalEditing"];

  if (!v10)
  {
    v14 = PRUISLogRemoteEditing();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = connectionCopy;
      _os_log_impl(&dword_1CAE63000, v14, OS_LOG_TYPE_DEFAULT, "PRUISExternallyHostedPosterEditingServer rejected connection: %{public}@", buf, 0xCu);
    }

LABEL_10:

    [connectionCopy invalidate];
    goto LABEL_11;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PRUISExternallyHostedPosterEditingServer_listener_didReceiveConnection_withContext___block_invoke_7;
  block[3] = &unk_1E83A7100;
  block[4] = self;
  v12 = connectionCopy;
  v16 = v12;
  dispatch_async(queue, block);
  v13 = PRUISLogRemoteEditing();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v12;
    _os_log_impl(&dword_1CAE63000, v13, OS_LOG_TYPE_DEFAULT, "PRUISExternallyHostedPosterEditingServer received connection: %{public}@", buf, 0xCu);
  }

  [v12 activate];
LABEL_11:
}

void __86__PRUISExternallyHostedPosterEditingServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRUISDefaultServiceQuality();
  [v3 setServiceQuality:v4];

  v5 = PRUISExternallyHostedPosterEditingServiceInterface();
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__PRUISExternallyHostedPosterEditingServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v6[3] = &unk_1E83A8E28;
  v6[4] = *(a1 + 32);
  [v3 setInvalidationHandler:v6];
  [v3 setTargetQueue:*(*(a1 + 32) + 8)];
}

void __86__PRUISExternallyHostedPosterEditingServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRUISLogRemoteEditing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "PRUISExternallyHostedPosterEditingServer received connection invalidation: %{public}@", &v5, 0xCu);
  }

  [*(a1 + 32) _queue_removeConnection:v3];
}

- (void)_queue_addConnection:(id)connection
{
  v8 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v5 = PRUISLogRemoteEditing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = connectionCopy;
    _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "Adding Connection: %{public}@", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_connections addObject:connectionCopy];
}

- (void)_queue_removeConnection:(id)connection
{
  v8 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v5 = PRUISLogRemoteEditing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = connectionCopy;
    _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "Removing Connection: %{public}@", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_connections removeObject:connectionCopy];
}

- (void)_queue_associateConnection:(id)connection toEditingRequest:(id)request
{
  queue = self->_queue;
  requestCopy = request;
  connectionCopy = connection;
  dispatch_assert_queue_V2(queue);
  [(NSMapTable *)self->_connectionsByEditingRequest setObject:connectionCopy forKey:requestCopy];
}

- (void)_queue_disassociateConnection:(id)connection fromEditingRequest:(id)request
{
  queue = self->_queue;
  requestCopy = request;
  dispatch_assert_queue_V2(queue);
  [(NSMapTable *)self->_connectionsByEditingRequest removeObjectForKey:requestCopy];
}

- (void)activate
{
  v11 = *MEMORY[0x1E69E9840];
  [(BSServiceConnectionListener *)self->_connectionListener activate];
  v4 = PRUISLogRemoteEditing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    connectionListener = self->_connectionListener;
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = connectionListener;
    _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - listener: %{public}@", &v7, 0x16u);
  }
}

- (void)beginEditingWithEntryPointWrapper:(id)wrapper completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  wrapperCopy = wrapper;
  completionCopy = completion;
  v9 = wrapperCopy;
  v10 = PRUISLogRemoteEditing();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    requestUUID = [v9 requestUUID];
    entryPoint = [v9 entryPoint];
    *buf = 138543874;
    v23 = v11;
    v24 = 2114;
    v25 = requestUUID;
    v26 = 2114;
    v27 = entryPoint;
    _os_log_impl(&dword_1CAE63000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ (%{public}@): %{public}@", buf, 0x20u);
  }

  v14 = [(NSMapTable *)self->_connectionsByEditingRequest objectForKey:v9];

  if (!v14)
  {
    currentContext = [MEMORY[0x1E698F490] currentContext];
    [(PRUISExternallyHostedPosterEditingServer *)self _queue_associateConnection:currentContext toEditingRequest:v9];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v20 = v9;
  v21 = completionCopy;
  v16 = WeakRetained;
  v17 = v9;
  v18 = completionCopy;
  BSDispatchMain();
}

void __89__PRUISExternallyHostedPosterEditingServer_beginEditingWithEntryPointWrapper_completion___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __89__PRUISExternallyHostedPosterEditingServer_beginEditingWithEntryPointWrapper_completion___block_invoke_2;
  v4[3] = &unk_1E83A7890;
  v3 = a1[7];
  v4[4] = a1[6];
  v5 = v3;
  [v1 beginExternalPosterEditingSessionWithEditingRequest:v2 completion:v4];
}

void __89__PRUISExternallyHostedPosterEditingServer_beginEditingWithEntryPointWrapper_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PRUISExternallyHostedPosterEditingServer_beginEditingWithEntryPointWrapper_completion___block_invoke_3;
  block[3] = &unk_1E83A7428;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)sendRequestDismissalActionWithEntryPointWrapper:(id)wrapper
{
  v22 = *MEMORY[0x1E69E9840];
  wrapperCopy = wrapper;
  v6 = PRUISLogRemoteEditing();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    requestUUID = [wrapperCopy requestUUID];
    entryPoint = [wrapperCopy entryPoint];
    *buf = 138543874;
    v17 = v7;
    v18 = 2114;
    v19 = requestUUID;
    v20 = 2114;
    v21 = entryPoint;
    _os_log_impl(&dword_1CAE63000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ (%{public}@): %{public}@", buf, 0x20u);
  }

  v10 = [(NSMapTable *)self->_connectionsByEditingRequest objectForKey:wrapperCopy];

  if (!v10)
  {
    currentContext = [MEMORY[0x1E698F490] currentContext];
    [(PRUISExternallyHostedPosterEditingServer *)self _queue_associateConnection:currentContext toEditingRequest:wrapperCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = wrapperCopy;
  v12 = WeakRetained;
  v13 = wrapperCopy;
  BSDispatchMain();
}

- (void)sessionWithEditingRequest:(id)request willEndEditingWithResponse:(id)response
{
  v20 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  responseCopy = response;
  v9 = PRUISLogRemoteEditing();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    requestUUID = [requestCopy requestUUID];
    v14 = 138543874;
    v15 = v10;
    v16 = 2114;
    v17 = requestUUID;
    v18 = 2114;
    v19 = responseCopy;
    _os_log_impl(&dword_1CAE63000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ (%{public}@) response: %{public}@", &v14, 0x20u);
  }

  v12 = [(NSMapTable *)self->_connectionsByEditingRequest objectForKey:requestCopy];
  remoteTarget = [v12 remoteTarget];
  [remoteTarget willEndEditingWithResponse:responseCopy];
}

- (void)sessionWithEditingRequest:(id)request didEndEditingWithResponse:(id)response
{
  v20 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  responseCopy = response;
  v9 = PRUISLogRemoteEditing();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    requestUUID = [requestCopy requestUUID];
    v14 = 138543874;
    v15 = v10;
    v16 = 2114;
    v17 = requestUUID;
    v18 = 2114;
    v19 = responseCopy;
    _os_log_impl(&dword_1CAE63000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ (%{public}@) response: %{public}@", &v14, 0x20u);
  }

  v12 = [(NSMapTable *)self->_connectionsByEditingRequest objectForKey:requestCopy];
  remoteTarget = [v12 remoteTarget];
  [remoteTarget didEndEditingWithResponse:responseCopy];
}

- (PRUISExternallyHostedPosterEditingServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(NSObject *)a2 withContext:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1CAE63000, a2, OS_LOG_TYPE_DEBUG, "PRUISExternallyHostedPosterEditingServer rejecting connections on non-iPads: %{public}@", &v2, 0xCu);
}

@end