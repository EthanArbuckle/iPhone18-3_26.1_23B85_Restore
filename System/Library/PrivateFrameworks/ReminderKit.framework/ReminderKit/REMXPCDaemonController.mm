@interface REMXPCDaemonController
+ (id)userInteractiveDaemonController;
+ (id)weakSharedInstance;
- (NSString)description;
- (REMXPCDaemonController)initWithStoreContainerToken:(id)token userInteractive:(BOOL)interactive;
- (REMXPCDaemonControllerAutoCategorizationActivityObserver)autoCategorizationActivityObserver;
- (REMXPCDaemonControllerCloudKitNetworkActivityDelegate)cloudKitNetworkActivityDelegate;
- (id)_resolveAndCachePerformerWithResolver:(id)resolver reason:(id)reason errorHandler:(id)handler;
- (id)_resolvePerformerWithResolver:(id)resolver reason:(id)reason errorHandler:(id)handler;
- (id)_syncPerformerWithResolver:(id)resolver reason:(id)reason errorHandler:(id)handler;
- (id)_xpcConnectionReconnectingIfNecessary;
- (id)syncChangeTrackingPerformerWithReason:(id)reason errorHandler:(id)handler;
- (id)syncDebugPerformerWithReason:(id)reason errorHandler:(id)handler;
- (id)syncIndexingPerformerWithReason:(id)reason errorHandler:(id)handler;
- (id)syncStorePerformerWithReason:(id)reason errorHandler:(id)handler;
- (id)syncSyncInterfacePerformerWithReason:(id)reason errorHandler:(id)handler;
- (void)_asyncPerformerWithResolver:(id)resolver reason:(id)reason loadHandler:(id)handler errorHandler:(id)errorHandler;
- (void)_asyncResolveAndCachePerformerWithResolver:(id)resolver reason:(id)reason completion:(id)completion;
- (void)_asyncResolvePerformerWithResolver:(id)resolver reason:(id)reason completion:(id)completion;
- (void)_xpcConnectionDidInvalidate;
- (void)asyncDebugPerformerWithReason:(id)reason loadHandler:(id)handler errorHandler:(id)errorHandler;
- (void)asyncIndexingPerformerWithReason:(id)reason loadHandler:(id)handler errorHandler:(id)errorHandler;
- (void)asyncStorePerformerWithReason:(id)reason loadHandler:(id)handler errorHandler:(id)errorHandler;
- (void)asyncSyncInterfacePerformerWithReason:(id)reason loadHandler:(id)handler errorHandler:(id)errorHandler;
- (void)dealloc;
- (void)invalidate;
- (void)setAutoCategorizationActivityObserver:(id)observer;
- (void)setCloudKitNetworkActivityDelegate:(id)delegate;
@end

@implementation REMXPCDaemonController

+ (id)userInteractiveDaemonController
{
  v2 = [[self alloc] initWithStoreContainerToken:0 userInteractive:1];

  return v2;
}

+ (id)weakSharedInstance
{
  os_unfair_lock_lock(&weakSharedInstance_sLock);
  WeakRetained = objc_loadWeakRetained(&weakSharedInstance__sDaemonController);

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(&weakSharedInstance__sDaemonController);
    v4 = v3;
  }

  else
  {
    v3 = objc_alloc_init(REMXPCDaemonController);
    v5 = v3;
    objc_storeWeak(&weakSharedInstance__sDaemonController, v3);
  }

  os_unfair_lock_unlock(&weakSharedInstance_sLock);

  return v3;
}

- (id)_xpcConnectionReconnectingIfNecessary
{
  os_unfair_lock_lock(&self->_ivarLock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__REMXPCDaemonController__xpcConnectionReconnectingIfNecessary__block_invoke;
  v13[3] = &unk_1E7508028;
  v13[4] = self;
  __63__REMXPCDaemonController__xpcConnectionReconnectingIfNecessary__block_invoke(v13);
  os_unfair_lock_unlock(&self->_ivarLock);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  xpcConnection = [(REMXPCDaemonController *)self xpcConnection];
  v4 = v8[5];
  v8[5] = xpcConnection;

  os_unfair_lock_unlock(&self->_ivarLock);
  v5 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v5;
}

void __63__REMXPCDaemonController__xpcConnectionReconnectingIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];

  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v4 = [*(a1 + 32) serviceName];
    v5 = [v3 initWithMachServiceName:v4 options:0];

    v6 = +[REMXPCDaemonInterface interface];
    [v5 setRemoteObjectInterface:v6];

    v7 = objc_alloc_init(REMXPCDaemonControllerExportedObject);
    v8 = [*(a1 + 32) cloudKitNetworkActivityDelegate];
    [(REMXPCDaemonControllerExportedObject *)v7 setCloudKitNetworkActivityDelegate:v8];

    v9 = [*(a1 + 32) autoCategorizationActivityObserver];
    [(REMXPCDaemonControllerExportedObject *)v7 setAutoCategorizationActivityObserver:v9];

    [v5 setExportedObject:v7];
    v10 = +[REMXPCClientInterface interface];
    [v5 setExportedInterface:v10];

    objc_initWeak(&location, *(a1 + 32));
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__REMXPCDaemonController__xpcConnectionReconnectingIfNecessary__block_invoke_2;
    v13[3] = &unk_1E7508D60;
    objc_copyWeak(&v14, &location);
    [v5 setInterruptionHandler:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__REMXPCDaemonController__xpcConnectionReconnectingIfNecessary__block_invoke_2_28;
    v11[3] = &unk_1E7508D60;
    objc_copyWeak(&v12, &location);
    [v5 setInvalidationHandler:v11];
    [v5 resume];
    [*(a1 + 32) setXpcConnection:v5];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  serviceName = [(REMXPCDaemonController *)self serviceName];
  v6 = [v3 stringWithFormat:@"<%@: %p serviceName:%@>", v4, self, serviceName];

  return v6;
}

- (REMXPCDaemonControllerCloudKitNetworkActivityDelegate)cloudKitNetworkActivityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitNetworkActivityDelegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(REMXPCDaemonController *)self invalidate];
  v3.receiver = self;
  v3.super_class = REMXPCDaemonController;
  [(REMXPCDaemonController *)&v3 dealloc];
}

- (void)invalidate
{
  v3 = +[REMLog xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_DEFAULT, "REMXPCDaemonController invalidate", v5, 2u);
  }

  xpcConnection = [(REMXPCDaemonController *)self xpcConnection];
  [xpcConnection invalidate];
}

void __63__REMXPCDaemonController__xpcConnectionReconnectingIfNecessary__block_invoke_2_28(uint64_t a1)
{
  v2 = +[REMLog xpc];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __63__REMXPCDaemonController__xpcConnectionReconnectingIfNecessary__block_invoke_2_28_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [(os_unfair_lock_s *)WeakRetained _xpcConnectionDidInvalidate];
    os_unfair_lock_lock(v4 + 2);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__REMXPCDaemonController__xpcConnectionReconnectingIfNecessary__block_invoke_29;
    v5[3] = &unk_1E7508028;
    v5[4] = v4;
    __63__REMXPCDaemonController__xpcConnectionReconnectingIfNecessary__block_invoke_29(v5);
    os_unfair_lock_unlock(v4 + 2);
  }
}

- (REMXPCDaemonController)initWithStoreContainerToken:(id)token userInteractive:(BOOL)interactive
{
  interactiveCopy = interactive;
  v22 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v19.receiver = self;
  v19.super_class = REMXPCDaemonController;
  v8 = [(REMXPCDaemonController *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_storeContainerToken, token);
    v9->_ivarLock._os_unfair_lock_opaque = 0;
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    l_performersByName = v9->_l_performersByName;
    v9->_l_performersByName = v10;

    v12 = REMDaemonMachServiceName_userInteractive;
    if (!interactiveCopy)
    {
      v12 = REMDaemonMachServiceName;
    }

    v13 = *v12;
    v14 = *v12;
    objc_storeStrong(&v9->_serviceName, v13);
    _xpcConnectionReconnectingIfNecessary = [(REMXPCDaemonController *)v9 _xpcConnectionReconnectingIfNecessary];
  }

  v16 = +[REMLog xpc];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v9;
    _os_log_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_DEFAULT, "Created new REMXPCDaemonController {self: %{public}@}", buf, 0xCu);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)setCloudKitNetworkActivityDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_ivarLock);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__REMXPCDaemonController_setCloudKitNetworkActivityDelegate___block_invoke;
  v6[3] = &unk_1E7508448;
  v6[4] = self;
  v7 = delegateCopy;
  v5 = delegateCopy;
  __61__REMXPCDaemonController_setCloudKitNetworkActivityDelegate___block_invoke(v6);
  os_unfair_lock_unlock(&self->_ivarLock);
}

void __61__REMXPCDaemonController_setCloudKitNetworkActivityDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v3 = [v2 exportedObject];

  if (v3)
  {
    [v3 setCloudKitNetworkActivityDelegate:*(a1 + 40)];
  }

  objc_storeWeak((*(a1 + 32) + 16), *(a1 + 40));
}

- (void)setAutoCategorizationActivityObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_ivarLock);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__REMXPCDaemonController_setAutoCategorizationActivityObserver___block_invoke;
  v6[3] = &unk_1E7508448;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  __64__REMXPCDaemonController_setAutoCategorizationActivityObserver___block_invoke(v6);
  os_unfair_lock_unlock(&self->_ivarLock);
}

void __64__REMXPCDaemonController_setAutoCategorizationActivityObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v3 = [v2 exportedObject];

  if (v3)
  {
    [v3 setAutoCategorizationActivityObserver:*(a1 + 40)];
  }

  objc_storeWeak((*(a1 + 32) + 24), *(a1 + 40));
}

- (id)syncChangeTrackingPerformerWithReason:(id)reason errorHandler:(id)handler
{
  handlerCopy = handler;
  reasonCopy = reason;
  v8 = [REMXPCDaemonControllerPerformerResolver_changeTracking alloc];
  storeContainerToken = [(REMXPCDaemonController *)self storeContainerToken];
  v10 = [(REMXPCDaemonControllerPerformerResolver_changeTracking *)v8 initWithStoreContainerToken:storeContainerToken];
  v11 = [(REMXPCDaemonController *)self _syncPerformerWithResolver:v10 reason:reasonCopy errorHandler:handlerCopy];

  return v11;
}

- (void)asyncDebugPerformerWithReason:(id)reason loadHandler:(id)handler errorHandler:(id)errorHandler
{
  errorHandlerCopy = errorHandler;
  handlerCopy = handler;
  reasonCopy = reason;
  v11 = [REMXPCDaemonControllerPerformerResolver_debug alloc];
  storeContainerToken = [(REMXPCDaemonController *)self storeContainerToken];
  v12 = [(REMXPCDaemonControllerPerformerResolver_debug *)v11 initWithStoreContainerToken:storeContainerToken];
  [(REMXPCDaemonController *)self _asyncPerformerWithResolver:v12 reason:reasonCopy loadHandler:handlerCopy errorHandler:errorHandlerCopy];
}

- (id)syncDebugPerformerWithReason:(id)reason errorHandler:(id)handler
{
  handlerCopy = handler;
  reasonCopy = reason;
  v8 = [REMXPCDaemonControllerPerformerResolver_debug alloc];
  storeContainerToken = [(REMXPCDaemonController *)self storeContainerToken];
  v10 = [(REMXPCDaemonControllerPerformerResolver_debug *)v8 initWithStoreContainerToken:storeContainerToken];
  v11 = [(REMXPCDaemonController *)self _syncPerformerWithResolver:v10 reason:reasonCopy errorHandler:handlerCopy];

  return v11;
}

- (id)syncStorePerformerWithReason:(id)reason errorHandler:(id)handler
{
  handlerCopy = handler;
  reasonCopy = reason;
  v8 = [REMXPCDaemonControllerPerformerResolver_store alloc];
  storeContainerToken = [(REMXPCDaemonController *)self storeContainerToken];
  v10 = [(REMXPCDaemonControllerPerformerResolver_store *)v8 initWithStoreContainerToken:storeContainerToken];
  v11 = [(REMXPCDaemonController *)self _syncPerformerWithResolver:v10 reason:reasonCopy errorHandler:handlerCopy];

  return v11;
}

- (void)asyncStorePerformerWithReason:(id)reason loadHandler:(id)handler errorHandler:(id)errorHandler
{
  errorHandlerCopy = errorHandler;
  handlerCopy = handler;
  reasonCopy = reason;
  v11 = [REMXPCDaemonControllerPerformerResolver_store alloc];
  storeContainerToken = [(REMXPCDaemonController *)self storeContainerToken];
  v12 = [(REMXPCDaemonControllerPerformerResolver_store *)v11 initWithStoreContainerToken:storeContainerToken];
  [(REMXPCDaemonController *)self _asyncPerformerWithResolver:v12 reason:reasonCopy loadHandler:handlerCopy errorHandler:errorHandlerCopy];
}

- (id)syncSyncInterfacePerformerWithReason:(id)reason errorHandler:(id)handler
{
  handlerCopy = handler;
  reasonCopy = reason;
  v8 = objc_alloc_init(REMXPCDaemonControllerPerformerResolver_sync);
  v9 = [(REMXPCDaemonController *)self _syncPerformerWithResolver:v8 reason:reasonCopy errorHandler:handlerCopy];

  return v9;
}

- (void)asyncSyncInterfacePerformerWithReason:(id)reason loadHandler:(id)handler errorHandler:(id)errorHandler
{
  errorHandlerCopy = errorHandler;
  handlerCopy = handler;
  reasonCopy = reason;
  v11 = objc_alloc_init(REMXPCDaemonControllerPerformerResolver_sync);
  [(REMXPCDaemonController *)self _asyncPerformerWithResolver:v11 reason:reasonCopy loadHandler:handlerCopy errorHandler:errorHandlerCopy];
}

- (id)syncIndexingPerformerWithReason:(id)reason errorHandler:(id)handler
{
  handlerCopy = handler;
  reasonCopy = reason;
  v8 = objc_alloc_init(REMXPCDaemonControllerPerformerResolver_indexing);
  v9 = [(REMXPCDaemonController *)self _syncPerformerWithResolver:v8 reason:reasonCopy errorHandler:handlerCopy];

  return v9;
}

- (void)asyncIndexingPerformerWithReason:(id)reason loadHandler:(id)handler errorHandler:(id)errorHandler
{
  errorHandlerCopy = errorHandler;
  handlerCopy = handler;
  reasonCopy = reason;
  v11 = objc_alloc_init(REMXPCDaemonControllerPerformerResolver_indexing);
  [(REMXPCDaemonController *)self _asyncPerformerWithResolver:v11 reason:reasonCopy loadHandler:handlerCopy errorHandler:errorHandlerCopy];
}

- (id)_syncPerformerWithResolver:(id)resolver reason:(id)reason errorHandler:(id)handler
{
  handlerCopy = handler;
  reasonCopy = reason;
  resolverCopy = resolver;
  name = [resolverCopy name];
  v12 = [(REMXPCDaemonController *)self _resolveAndCachePerformerWithResolver:resolverCopy reason:reasonCopy errorHandler:handlerCopy];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__REMXPCDaemonController__syncPerformerWithResolver_reason_errorHandler___block_invoke;
  v17[3] = &unk_1E7507EE8;
  v18 = name;
  selfCopy = self;
  v20 = handlerCopy;
  v13 = handlerCopy;
  v14 = name;
  v15 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v17];

  return v15;
}

void __73__REMXPCDaemonController__syncPerformerWithResolver_reason_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__REMXPCDaemonController__syncPerformerWithResolver_reason_errorHandler___block_invoke_cold_1(a1);
  }

  os_unfair_lock_lock((*(a1 + 40) + 8));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__REMXPCDaemonController__syncPerformerWithResolver_reason_errorHandler___block_invoke_14;
  v7[3] = &unk_1E7508448;
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  __73__REMXPCDaemonController__syncPerformerWithResolver_reason_errorHandler___block_invoke_14(v7);
  os_unfair_lock_unlock((*(a1 + 40) + 8));

  (*(*(a1 + 48) + 16))();
}

void __73__REMXPCDaemonController__syncPerformerWithResolver_reason_errorHandler___block_invoke_14(uint64_t a1)
{
  v2 = [*(a1 + 32) l_performersByName];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

- (void)_asyncPerformerWithResolver:(id)resolver reason:(id)reason loadHandler:(id)handler errorHandler:(id)errorHandler
{
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  reasonCopy = reason;
  resolverCopy = resolver;
  name = [resolverCopy name];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__REMXPCDaemonController__asyncPerformerWithResolver_reason_loadHandler_errorHandler___block_invoke;
  v18[3] = &unk_1E7509150;
  v19 = name;
  selfCopy = self;
  v21 = errorHandlerCopy;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = errorHandlerCopy;
  v17 = name;
  [(REMXPCDaemonController *)self _asyncResolveAndCachePerformerWithResolver:resolverCopy reason:reasonCopy completion:v18];
}

void __86__REMXPCDaemonController__asyncPerformerWithResolver_reason_loadHandler_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__REMXPCDaemonController__asyncPerformerWithResolver_reason_loadHandler_errorHandler___block_invoke_2;
    v8[3] = &unk_1E7507EE8;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v9 = v4;
    v10 = v5;
    v11 = v6;
    v7 = [v3 remoteObjectProxyWithErrorHandler:v8];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __86__REMXPCDaemonController__asyncPerformerWithResolver_reason_loadHandler_errorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__REMXPCDaemonController__syncPerformerWithResolver_reason_errorHandler___block_invoke_cold_1(a1);
  }

  os_unfair_lock_lock((*(a1 + 40) + 8));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__REMXPCDaemonController__asyncPerformerWithResolver_reason_loadHandler_errorHandler___block_invoke_16;
  v7[3] = &unk_1E7508448;
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  __86__REMXPCDaemonController__asyncPerformerWithResolver_reason_loadHandler_errorHandler___block_invoke_16(v7);
  os_unfair_lock_unlock((*(a1 + 40) + 8));

  (*(*(a1 + 48) + 16))();
}

void __86__REMXPCDaemonController__asyncPerformerWithResolver_reason_loadHandler_errorHandler___block_invoke_16(uint64_t a1)
{
  v2 = [*(a1 + 32) l_performersByName];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

- (id)_resolveAndCachePerformerWithResolver:(id)resolver reason:(id)reason errorHandler:(id)handler
{
  resolverCopy = resolver;
  reasonCopy = reason;
  handlerCopy = handler;
  name = [resolverCopy name];
  v28 = 0;
  v29[0] = &v28;
  v29[1] = 0x3032000000;
  v29[2] = __Block_byref_object_copy__8;
  v29[3] = __Block_byref_object_dispose__8;
  v30 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __84__REMXPCDaemonController__resolveAndCachePerformerWithResolver_reason_errorHandler___block_invoke;
  v25[3] = &unk_1E7509178;
  v27 = &v28;
  v25[4] = self;
  v12 = name;
  v26 = v12;
  __84__REMXPCDaemonController__resolveAndCachePerformerWithResolver_reason_errorHandler___block_invoke(v25);
  os_unfair_lock_unlock(&self->_ivarLock);

  if (*(v29[0] + 40))
  {
    v13 = +[REMLog xpc];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [REMXPCDaemonController _resolveAndCachePerformerWithResolver:v12 reason:v29 errorHandler:v13];
    }

    v14 = *(v29[0] + 40);
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __84__REMXPCDaemonController__resolveAndCachePerformerWithResolver_reason_errorHandler___block_invoke_18;
    v21[3] = &unk_1E7507EE8;
    v15 = v12;
    v22 = v15;
    selfCopy = self;
    v24 = handlerCopy;
    v14 = [(REMXPCDaemonController *)self _resolvePerformerWithResolver:resolverCopy reason:reasonCopy errorHandler:v21];
    if (v14)
    {
      os_unfair_lock_lock(&self->_ivarLock);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __84__REMXPCDaemonController__resolveAndCachePerformerWithResolver_reason_errorHandler___block_invoke_2;
      v18[3] = &unk_1E75091A0;
      v18[4] = self;
      v19 = v15;
      v20 = v14;
      __84__REMXPCDaemonController__resolveAndCachePerformerWithResolver_reason_errorHandler___block_invoke_2(v18);
      os_unfair_lock_unlock(&self->_ivarLock);
    }
  }

  v16 = v14;
  _Block_object_dispose(&v28, 8);

  return v16;
}

void __84__REMXPCDaemonController__resolveAndCachePerformerWithResolver_reason_errorHandler___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) l_performersByName];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __84__REMXPCDaemonController__resolveAndCachePerformerWithResolver_reason_errorHandler___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__REMXPCDaemonController__resolveAndCachePerformerWithResolver_reason_errorHandler___block_invoke_18_cold_1(a1);
  }

  os_unfair_lock_lock((*(a1 + 40) + 8));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__REMXPCDaemonController__resolveAndCachePerformerWithResolver_reason_errorHandler___block_invoke_19;
  v7[3] = &unk_1E7508448;
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  __84__REMXPCDaemonController__resolveAndCachePerformerWithResolver_reason_errorHandler___block_invoke_19(v7);
  os_unfair_lock_unlock((*(a1 + 40) + 8));

  (*(*(a1 + 48) + 16))();
}

void __84__REMXPCDaemonController__resolveAndCachePerformerWithResolver_reason_errorHandler___block_invoke_19(uint64_t a1)
{
  v2 = [*(a1 + 32) l_performersByName];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void __84__REMXPCDaemonController__resolveAndCachePerformerWithResolver_reason_errorHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) l_performersByName];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (void)_asyncResolveAndCachePerformerWithResolver:(id)resolver reason:(id)reason completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  resolverCopy = resolver;
  reasonCopy = reason;
  completionCopy = completion;
  name = [resolverCopy name];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__8;
  v26 = __Block_byref_object_dispose__8;
  v27 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87__REMXPCDaemonController__asyncResolveAndCachePerformerWithResolver_reason_completion___block_invoke;
  v19[3] = &unk_1E7509178;
  v21 = &v22;
  v19[4] = self;
  v12 = name;
  v20 = v12;
  __87__REMXPCDaemonController__asyncResolveAndCachePerformerWithResolver_reason_completion___block_invoke(v19);
  os_unfair_lock_unlock(&self->_ivarLock);

  if (v23[5])
  {
    v13 = +[REMLog xpc];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = v23[5];
      *buf = 138543874;
      v29 = v12;
      v30 = 2114;
      v31 = reasonCopy;
      v32 = 2112;
      v33 = v15;
      _os_log_debug_impl(&dword_19A0DB000, v13, OS_LOG_TYPE_DEBUG, "Returning existing performer {name: %{public}@, reason: %{public}@, performer: %@}", buf, 0x20u);
    }

    completionCopy[2](completionCopy, v23[5], 0);
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__REMXPCDaemonController__asyncResolveAndCachePerformerWithResolver_reason_completion___block_invoke_20;
    v16[3] = &unk_1E75091C8;
    v16[4] = self;
    v17 = v12;
    v18 = completionCopy;
    [(REMXPCDaemonController *)self _asyncResolvePerformerWithResolver:resolverCopy reason:reasonCopy completion:v16];
  }

  _Block_object_dispose(&v22, 8);

  v14 = *MEMORY[0x1E69E9840];
}

void __87__REMXPCDaemonController__asyncResolveAndCachePerformerWithResolver_reason_completion___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) l_performersByName];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __87__REMXPCDaemonController__asyncResolveAndCachePerformerWithResolver_reason_completion___block_invoke_20(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock((a1[4] + 8));
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__REMXPCDaemonController__asyncResolveAndCachePerformerWithResolver_reason_completion___block_invoke_2;
    v11[3] = &unk_1E75091A0;
    v7 = a1[5];
    v11[4] = a1[4];
    v12 = v7;
    v13 = v5;
    __87__REMXPCDaemonController__asyncResolveAndCachePerformerWithResolver_reason_completion___block_invoke_2(v11);
    os_unfair_lock_unlock((a1[4] + 8));
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __87__REMXPCDaemonController__asyncResolveAndCachePerformerWithResolver_reason_completion___block_invoke_3;
    v9[3] = &unk_1E7508448;
    v8 = a1[5];
    v9[4] = a1[4];
    v10 = v8;
    __87__REMXPCDaemonController__asyncResolveAndCachePerformerWithResolver_reason_completion___block_invoke_3(v9);
    os_unfair_lock_unlock((a1[4] + 8));
  }

  (*(a1[6] + 16))();
}

void __87__REMXPCDaemonController__asyncResolveAndCachePerformerWithResolver_reason_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) l_performersByName];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

void __87__REMXPCDaemonController__asyncResolveAndCachePerformerWithResolver_reason_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) l_performersByName];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

- (void)_asyncResolvePerformerWithResolver:(id)resolver reason:(id)reason completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  completionCopy = completion;
  resolverCopy = resolver;
  name = [resolverCopy name];
  v12 = +[REMLog xpc];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v27 = name;
    v28 = 2114;
    v29 = reasonCopy;
    _os_log_impl(&dword_19A0DB000, v12, OS_LOG_TYPE_DEFAULT, "Cache-miss getting performer. Resolving async {name: %{public}@, reason: %{public}@}", buf, 0x16u);
  }

  _xpcConnectionReconnectingIfNecessary = [(REMXPCDaemonController *)self _xpcConnectionReconnectingIfNecessary];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __79__REMXPCDaemonController__asyncResolvePerformerWithResolver_reason_completion___block_invoke;
  v23[3] = &unk_1E7507D30;
  v14 = name;
  v24 = v14;
  v15 = completionCopy;
  v25 = v15;
  v16 = [_xpcConnectionReconnectingIfNecessary remoteObjectProxyWithErrorHandler:v23];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__REMXPCDaemonController__asyncResolvePerformerWithResolver_reason_completion___block_invoke_21;
  v20[3] = &unk_1E75091F0;
  v21 = v14;
  v22 = v15;
  v17 = v15;
  v18 = v14;
  [resolverCopy resolveWithDaemon:v16 reason:reasonCopy completion:v20];

  v19 = *MEMORY[0x1E69E9840];
}

void __79__REMXPCDaemonController__asyncResolvePerformerWithResolver_reason_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__REMXPCDaemonController__asyncResolvePerformerWithResolver_reason_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void __79__REMXPCDaemonController__asyncResolvePerformerWithResolver_reason_completion___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[REMLog xpc];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __79__REMXPCDaemonController__asyncResolvePerformerWithResolver_reason_completion___block_invoke_21_cold_1(a1);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_DEFAULT, "Resolve performer {name: %{public}@, performer: %@}", &v12, 0x16u);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  v9();

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_resolvePerformerWithResolver:(id)resolver reason:(id)reason errorHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  resolverCopy = resolver;
  reasonCopy = reason;
  handlerCopy = handler;
  name = [resolverCopy name];
  v12 = +[REMLog xpc];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = name;
    *&buf[12] = 2114;
    *&buf[14] = reasonCopy;
    _os_log_impl(&dword_19A0DB000, v12, OS_LOG_TYPE_DEFAULT, "Cache-miss getting performer. Resolving sync {name: %{public}@, reason: %{public}@}", buf, 0x16u);
  }

  _xpcConnectionReconnectingIfNecessary = [(REMXPCDaemonController *)self _xpcConnectionReconnectingIfNecessary];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __76__REMXPCDaemonController__resolvePerformerWithResolver_reason_errorHandler___block_invoke;
  v26[3] = &unk_1E7507D30;
  v14 = name;
  v27 = v14;
  v15 = handlerCopy;
  v28 = v15;
  v16 = [_xpcConnectionReconnectingIfNecessary synchronousRemoteObjectProxyWithErrorHandler:v26];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy__8;
  v31 = __Block_byref_object_dispose__8;
  v32 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __76__REMXPCDaemonController__resolvePerformerWithResolver_reason_errorHandler___block_invoke_22;
  v22[3] = &unk_1E7509218;
  v17 = v14;
  v23 = v17;
  v25 = buf;
  v18 = v15;
  v24 = v18;
  [resolverCopy resolveWithDaemon:v16 reason:reasonCopy completion:v22];
  v19 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void __76__REMXPCDaemonController__resolvePerformerWithResolver_reason_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__REMXPCDaemonController__asyncResolvePerformerWithResolver_reason_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void __76__REMXPCDaemonController__resolvePerformerWithResolver_reason_errorHandler___block_invoke_22(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = +[REMLog xpc];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __79__REMXPCDaemonController__asyncResolvePerformerWithResolver_reason_completion___block_invoke_21_cold_1(a1);
    }

    (*(a1[5] + 16))();
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_19A0DB000, v9, OS_LOG_TYPE_DEFAULT, "Resolved performer {name: %{public}@, performer: %@}", &v12, 0x16u);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __63__REMXPCDaemonController__xpcConnectionReconnectingIfNecessary__block_invoke_2(uint64_t a1)
{
  v2 = +[REMLog xpc];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __63__REMXPCDaemonController__xpcConnectionReconnectingIfNecessary__block_invoke_2_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [(os_unfair_lock_s *)WeakRetained _xpcConnectionDidInterrupt];
    os_unfair_lock_lock(v4 + 2);
    v5 = [(os_unfair_lock_s *)v4 l_performersByName];
    [v5 removeAllObjects];

    os_unfair_lock_unlock(v4 + 2);
  }
}

void __63__REMXPCDaemonController__xpcConnectionReconnectingIfNecessary__block_invoke_27(uint64_t a1)
{
  v1 = [*(a1 + 32) l_performersByName];
  [v1 removeAllObjects];
}

uint64_t __63__REMXPCDaemonController__xpcConnectionReconnectingIfNecessary__block_invoke_29(uint64_t a1)
{
  v2 = [*(a1 + 32) l_performersByName];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 setXpcConnection:0];
}

uint64_t __63__REMXPCDaemonController__xpcConnectionReconnectingIfNecessary__block_invoke_2_30(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)_xpcConnectionDidInvalidate
{
  cloudKitNetworkActivityDelegate = [(REMXPCDaemonController *)self cloudKitNetworkActivityDelegate];
  [cloudKitNetworkActivityDelegate cloudKitNetworkActivityDidChange:&unk_1F0D99AD8];

  v5 = objc_alloc_init(REMAutoCategorizationActivity);
  autoCategorizationActivityObserver = [(REMXPCDaemonController *)self autoCategorizationActivityObserver];
  [autoCategorizationActivityObserver autoCategorizationActivityDidChange:v5];
}

- (REMXPCDaemonControllerAutoCategorizationActivityObserver)autoCategorizationActivityObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_autoCategorizationActivityObserver);

  return WeakRetained;
}

void __73__REMXPCDaemonController__syncPerformerWithResolver_reason_errorHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_6(&dword_19A0DB000, v1, v2, "Clearing cached performer due to proxy xpc error {name: %{public}@, error: %{public}@}");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_resolveAndCachePerformerWithResolver:(uint64_t)a1 reason:(uint64_t)a2 errorHandler:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*a2 + 40);
  v5 = 138543618;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_19A0DB000, log, OS_LOG_TYPE_DEBUG, "Returning existing performer {name: %{public}@, performer: %@}", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __84__REMXPCDaemonController__resolveAndCachePerformerWithResolver_reason_errorHandler___block_invoke_18_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_6(&dword_19A0DB000, v1, v2, "Clearing cached performer due to resolve xpc error {name: %{public}@, error: %{public}@}");
  v3 = *MEMORY[0x1E69E9840];
}

void __79__REMXPCDaemonController__asyncResolvePerformerWithResolver_reason_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_6(&dword_19A0DB000, v1, v2, "xpc connection error getting resolver {name: %{public}@, error: %{public}@}");
  v3 = *MEMORY[0x1E69E9840];
}

void __79__REMXPCDaemonController__asyncResolvePerformerWithResolver_reason_completion___block_invoke_21_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_6(&dword_19A0DB000, v1, v2, "Error resolving performer {name: %{public}@, error: %{public}@}");
  v3 = *MEMORY[0x1E69E9840];
}

@end