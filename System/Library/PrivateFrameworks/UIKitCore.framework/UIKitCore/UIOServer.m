@interface UIOServer
+ (UIOServer)sharedInstance;
+ (id)_identifierForSceneType:(int64_t)a3 spaceIdentifier:(id)a4;
+ (id)displayDelegateIdentifierForScene:(id)a3;
- (UIOServer)init;
- (id)displayDelegateForAction:(id)a3 sceneType:(int64_t)a4;
- (id)displayDelegateForIdentifier:(id)a3;
- (void)_fulfillAwaitingDisplayDelegate:(id)a3 forIdentifier:(id)a4;
- (void)activate;
- (void)awaitDisplayDelegateForAction:(id)a3 sceneType:(int64_t)a4 timeout:(double)a5 completion:(id)a6;
- (void)invalidate;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)registerDisplayDelegate:(id)a3 forIdentifier:(id)a4;
- (void)unregisterDisplayDelegateForIdentifier:(id)a3;
@end

@implementation UIOServer

+ (UIOServer)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__UIOServer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_1282 != -1)
  {
    dispatch_once(&_MergedGlobals_1282, block);
  }

  v2 = qword_1ED4A0950;

  return v2;
}

void __27__UIOServer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1ED4A0950;
  qword_1ED4A0950 = v0;
}

+ (id)_identifierForSceneType:(int64_t)a3 spaceIdentifier:(id)a4
{
  v4 = @"Unknown";
  if (a3 == 1)
  {
    v4 = @"Overlay";
  }

  if (a3 == 2)
  {
    v4 = @"Subterranean";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v4, a4];
}

+ (id)displayDelegateIdentifierForScene:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 systemShellHostingEnvironment];
  v6 = [v5 systemShellHostingSpaceIdentifier];

  if (!v6)
  {
    v7 = UIOLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v12 = 138543618;
      v13 = v9;
      v14 = 2050;
      v15 = v4;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Could not find a systemShellHostingSpaceIdentifier for scene: <%{public}@: %{public}p>", &v12, 0x16u);
    }

    v6 = @"Unspecified";
  }

  v10 = [a1 _identifierForSceneType:objc_msgSend(objc_opt_class() spaceIdentifier:{"_UIO_sceneType"), v6}];

  return v10;
}

- (UIOServer)init
{
  v22.receiver = self;
  v22.super_class = UIOServer;
  v3 = [(UIOServer *)&v22 init];
  if (v3)
  {
    if ((_UIApplicationProcessIsOverlayUI() & 1) == 0)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:v3 file:@"UIOServer.m" lineNumber:87 description:@"Fatal error: a UIOServer instance was initialized outside of OverlayUI"];
    }

    v4 = dispatch_queue_create("com.apple.UIKit.OverlayUI.service_queue", 0);
    serviceQueue = v3->_serviceQueue;
    v3->_serviceQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    connections = v3->_connections;
    v3->_connections = v6;

    v8 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    displayDelegateTable = v3->_displayDelegateTable;
    v3->_displayDelegateTable = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    awaitingDisplayDelegateRequests = v3->_awaitingDisplayDelegateRequests;
    v3->_awaitingDisplayDelegateRequests = v10;

    v12 = UIOLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "Starting uioverlayd service connection listener…", buf, 2u);
    }

    v13 = MEMORY[0x1E698F4B8];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __17__UIOServer_init__block_invoke;
    v19[3] = &unk_1E711FFF0;
    v14 = v3;
    v20 = v14;
    v15 = [v13 listenerWithConfigurator:v19];
    connectionListener = v14->_connectionListener;
    v14->_connectionListener = v15;
  }

  return v3;
}

void __17__UIOServer_init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:0x1EFB7D350];
  v3 = +[_UIOverlayServiceInterfaceSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v6 = a4;
  serviceQueue = self->_serviceQueue;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __55__UIOServer_listener_didReceiveConnection_withContext___block_invoke;
  v12 = &unk_1E70F35B8;
  v13 = v6;
  v14 = self;
  v8 = v6;
  dispatch_sync(serviceQueue, &v9);
  [v8 activate];
}

void __55__UIOServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1)
{
  v2 = [_UIOServiceConnection connectionWithBSServiceConnection:*(a1 + 32) toServer:*(a1 + 40)];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __55__UIOServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v9 = &unk_1E7120040;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = v2;
  v11 = v3;
  v5 = v2;
  [v4 configureConnection:&v6];
  [*(*(a1 + 40) + 32) addObject:{v5, v6, v7, v8, v9}];
}

void __55__UIOServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTargetQueue:MEMORY[0x1E69E96A0]];
  v4 = +[_UIOverlayServiceInterfaceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[_UIOverlayServiceInterfaceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__UIOServer_listener_didReceiveConnection_withContext___block_invoke_3;
  v8[3] = &unk_1E7120018;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = v6;
  v10 = v7;
  [v3 setInvalidationHandler:v8];
}

void __55__UIOServer_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__UIOServer_listener_didReceiveConnection_withContext___block_invoke_4;
  block[3] = &unk_1E70F3590;
  v8 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__UIOServer_listener_didReceiveConnection_withContext___block_invoke_5;
  v5[3] = &unk_1E70F35B8;
  v5[4] = v3;
  v6 = v2;
  dispatch_async(v4, v5);
}

- (void)activate
{
  if (!self->_activated)
  {
    self->_activated = 1;
    [(BSServiceConnectionListener *)self->_connectionListener activate];
  }
}

- (void)invalidate
{
  if (self->_activated)
  {
    [(BSServiceConnectionListener *)self->_connectionListener invalidate];
    self->_activated = 0;
  }
}

- (void)registerDisplayDelegate:(id)a3 forIdentifier:(id)a4
{
  v7 = a4;
  v9 = a3;
  if (pthread_main_np() != 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIOServer.m" lineNumber:151 description:@"Call must be made on main thread"];
  }

  [(NSMapTable *)self->_displayDelegateTable setObject:v9 forKey:v7];
  [(UIOServer *)self _fulfillAwaitingDisplayDelegate:v9 forIdentifier:v7];
}

- (void)unregisterDisplayDelegateForIdentifier:(id)a3
{
  v6 = a3;
  if (pthread_main_np() != 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"UIOServer.m" lineNumber:158 description:@"Call must be made on main thread"];
  }

  [(NSMapTable *)self->_displayDelegateTable removeObjectForKey:v6];
}

- (id)displayDelegateForIdentifier:(id)a3
{
  v5 = a3;
  if (pthread_main_np() != 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIOServer.m" lineNumber:164 description:@"Call must be made on main thread"];
  }

  v6 = [(NSMapTable *)self->_displayDelegateTable objectForKey:v5];

  return v6;
}

- (id)displayDelegateForAction:(id)a3 sceneType:(int64_t)a4
{
  v6 = [a3 originContext];
  v7 = [v6 spaceIdentifier];

  v8 = [objc_opt_class() _identifierForSceneType:a4 spaceIdentifier:v7];
  v9 = [(UIOServer *)self displayDelegateForIdentifier:v8];

  return v9;
}

- (void)awaitDisplayDelegateForAction:(id)a3 sceneType:(int64_t)a4 timeout:(double)a5 completion:(id)a6
{
  location[3] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  if (pthread_main_np() != 1)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"UIOServer.m" lineNumber:182 description:@"Call must be made on main thread"];
  }

  v13 = [(UIOServer *)self displayDelegateForAction:v11 sceneType:a4];
  if (v13)
  {
    v14 = UIOLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(location[0]) = 0;
      _os_log_debug_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEBUG, "awaitDisplayDelegateForAction: returning existing display delegate", location, 2u);
    }

    v12[2](v12, v13);
  }

  else
  {
    v15 = [v12 copy];
    v16 = [v11 originContext];
    v17 = [v16 spaceIdentifier];

    v18 = [objc_opt_class() _identifierForSceneType:a4 spaceIdentifier:v17];
    v19 = UIOLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v18;
      _os_log_debug_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEBUG, "awaitDisplayDelegateForAction: waiting for display delegate to become available for identifier %{public}@", location, 0xCu);
    }

    v20 = [(NSMutableDictionary *)self->_awaitingDisplayDelegateRequests objectForKey:v18];
    if (v20)
    {
      v21 = _Block_copy(v15);
      [v20 addObject:v21];
    }

    else
    {
      v22 = MEMORY[0x1E695DF70];
      v23 = _Block_copy(v15);
      v20 = [v22 arrayWithObject:v23];

      [(NSMutableDictionary *)self->_awaitingDisplayDelegateRequests setObject:v20 forKey:v18];
    }

    objc_initWeak(location, self);
    v24 = MEMORY[0x1E695DFF0];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __72__UIOServer_awaitDisplayDelegateForAction_sceneType_timeout_completion___block_invoke;
    v29[3] = &unk_1E7120068;
    objc_copyWeak(&v32, location);
    v25 = v18;
    v30 = v25;
    v26 = v15;
    v31 = v26;
    v27 = [v24 scheduledTimerWithTimeInterval:0 repeats:v29 block:a5];

    objc_destroyWeak(&v32);
    objc_destroyWeak(location);
  }
}

void __72__UIOServer_awaitDisplayDelegateForAction_sceneType_timeout_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[6] objectForKey:*(a1 + 32)];
    v5 = _Block_copy(*(a1 + 40));
    v6 = [v4 containsObject:v5];

    if (v6)
    {
      v7 = UIOLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9[0] = 0;
        _os_log_debug_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEBUG, "awaitDisplayDelegateForAction: timed out waiting for display delegate", v9, 2u);
      }

      v8 = _Block_copy(*(a1 + 40));
      [v4 removeObject:v8];

      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)_fulfillAwaitingDisplayDelegate:(id)a3 forIdentifier:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UIOLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v20 = v7;
    _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "Fulfilling awaiting display delegates for identifier %{public}@", buf, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_awaitingDisplayDelegateRequests objectForKey:v7];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v14 + 1) + 8 * v13++) + 16))();
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  [v9 removeAllObjects];
}

@end