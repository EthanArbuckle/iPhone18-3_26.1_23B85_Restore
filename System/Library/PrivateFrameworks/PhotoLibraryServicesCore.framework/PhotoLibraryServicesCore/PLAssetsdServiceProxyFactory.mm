@interface PLAssetsdServiceProxyFactory
- (PLAssetsdServiceProxyFactory)initWithQueue:(id)queue proxyCreating:(id)creating proxyGetter:(SEL)getter;
- (id)_inq_createServiceProxyWithCallStackSymbols:(id)symbols errorHandler:(id)handler;
- (id)_unboostingRemoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)serviceProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)_logReplyError:(id)error withCallStackSymbols:(id)symbols;
- (void)addBarrierBlock:(id)block;
- (void)remoteObjectProxyWithErrorHandler:(id)handler handler:(id)a4;
@end

@implementation PLAssetsdServiceProxyFactory

- (void)addBarrierBlock:(id)block
{
  blockCopy = block;
  if (objc_opt_respondsToSelector())
  {
    [(PLXPCProxyCreating *)self->_proxyCreating addBarrierBlock:blockCopy];
  }

  else
  {
    v5 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "Underlying proxy creating object does not respond to addBarrierBlock:", v6, 2u);
    }
  }
}

- (id)_unboostingRemoteObjectProxy
{
  v2 = [(PLAssetsdServiceProxyFactory *)self serviceProxyWithErrorHandler:&__block_literal_global_5751];
  _unboostingRemoteObjectProxy = [v2 _unboostingRemoteObjectProxy];

  return _unboostingRemoteObjectProxy;
}

void __60__PLAssetsdServiceProxyFactory__unboostingRemoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Unable to get the service proxy with error: %@", &v4, 0xCu);
  }
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(PLAssetsdServiceProxyFactory *)self serviceProxyWithErrorHandler:handlerCopy];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(PLAssetsdServiceProxyFactory *)self serviceProxyWithErrorHandler:handlerCopy];
  v6 = [v5 remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (void)remoteObjectProxyWithErrorHandler:(id)handler handler:(id)a4
{
  handlerCopy = handler;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PLAssetsdServiceProxyFactory_remoteObjectProxyWithErrorHandler_handler___block_invoke;
  block[3] = &unk_1E7930A20;
  block[4] = self;
  v12 = handlerCopy;
  v13 = v7;
  v9 = v7;
  v10 = handlerCopy;
  dispatch_sync(queue, block);
}

void __74__PLAssetsdServiceProxyFactory_remoteObjectProxyWithErrorHandler_handler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 remoteObjectProxyWithErrorHandler:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v5 = [MEMORY[0x1E696AF00] callStackSymbols];
    }

    else
    {
      v5 = 0;
    }

    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__PLAssetsdServiceProxyFactory_remoteObjectProxyWithErrorHandler_handler___block_invoke_2;
    v10[3] = &unk_1E79309F8;
    v10[4] = v7;
    v11 = v5;
    v12 = v6;
    v13 = *(a1 + 48);
    v9 = v5;
    dispatch_async(v8, v10);
  }
}

void __74__PLAssetsdServiceProxyFactory_remoteObjectProxyWithErrorHandler_handler___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2 || ([*(a1 + 32) _inq_createServiceProxyWithCallStackSymbols:*(a1 + 40) errorHandler:*(a1 + 48)], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v2;
    v3 = [v2 remoteObjectProxyWithErrorHandler:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }
}

- (id)serviceProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5757;
  v16 = __Block_byref_object_dispose__5758;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PLAssetsdServiceProxyFactory_serviceProxyWithErrorHandler___block_invoke;
  block[3] = &unk_1E79309D0;
  v10 = handlerCopy;
  v11 = &v12;
  block[4] = self;
  v6 = handlerCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __61__PLAssetsdServiceProxyFactory_serviceProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 16));
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _inq_createServiceProxyWithErrorHandler:*(a1 + 40)];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)_logReplyError:(id)error withCallStackSymbols:(id)symbols
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  symbolsCopy = symbols;
  v8 = PLGatekeeperXPCGetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
  if (symbolsCopy)
  {
    if (v9)
    {
      if (self->_proxyGetterSelector)
      {
        proxyGetterSelector = self->_proxyGetterSelector;
      }

      else
      {
        proxyGetterSelector = 0;
      }

      v12 = NSStringFromSelector(proxyGetterSelector);
      v13 = [symbolsCopy componentsJoinedByString:@"\n"];
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = errorCopy;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_FAULT, "Unable to get XPC service from assetsd %{public}@: %@, callstack:\n%@", &v14, 0x20u);

LABEL_12:
    }
  }

  else if (v9)
  {
    if (self->_proxyGetterSelector)
    {
      v11 = self->_proxyGetterSelector;
    }

    else
    {
      v11 = 0;
    }

    v12 = NSStringFromSelector(v11);
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_FAULT, "Unable to get XPC service from assetsd %{public}@: %@@", &v14, 0x16u);
    goto LABEL_12;
  }
}

- (id)_inq_createServiceProxyWithCallStackSymbols:(id)symbols errorHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  symbolsCopy = symbols;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v47 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v45) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: _inq_createServiceProxyWithCallStackSymbols:errorHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v45 + 1);
    *(&v45 + 1) = v9;

    os_activity_scope_enter(v9, (&v46 + 8));
  }

  *&v54 = 0;
  *(&v54 + 1) = &v54;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__5757;
  v57 = __Block_byref_object_dispose__5758;
  v58 = 0;
  proxyCreating = self->_proxyCreating;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __89__PLAssetsdServiceProxyFactory__inq_createServiceProxyWithCallStackSymbols_errorHandler___block_invoke;
  v44[3] = &unk_1E7932608;
  v44[4] = self;
  v44[5] = &v54;
  v12 = [(PLXPCProxyCreating *)proxyCreating synchronousRemoteObjectProxyWithErrorHandler:v44];
  if (v12)
  {
    if (v45 == 1)
    {
      v13 = PLRequestGetLog();
      v14 = os_signpost_id_generate(v13);
      v52 = @"SignpostId";
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14];
      v53 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      [v12 set_userInfo:v16];

      v17 = v13;
      v18 = v17;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        if (self->_proxyGetterSelector)
        {
          proxyGetterSelector = self->_proxyGetterSelector;
        }

        else
        {
          proxyGetterSelector = 0;
        }

        v20 = NSStringFromSelector(proxyGetterSelector);
        *buf = 138543362;
        v51 = v20;
        _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PLXPC Async", "%{public}@", buf, 0xCu);
      }
    }

    if (self->_proxyGetterSelector)
    {
      v21 = self->_proxyGetterSelector;
    }

    else
    {
      v21 = 0;
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __89__PLAssetsdServiceProxyFactory__inq_createServiceProxyWithCallStackSymbols_errorHandler___block_invoke_3;
    v41[3] = &unk_1E79309A8;
    v41[4] = self;
    v43 = &v54;
    v42 = symbolsCopy;
    v22 = MEMORY[0x1AC5925C0](v41);
    [v12 performSelector:v21 withObject:v22];
  }

  v23 = *(*(&v54 + 1) + 40);
  if (v23)
  {
    domain = [v23 domain];
    v25 = [domain isEqualToString:@"com.apple.photos.error"];

    if (v25)
    {
      v26 = *(*(&v54 + 1) + 40);
    }

    else
    {
      v28 = MEMORY[0x1E696AEC0];
      if (self->_proxyGetterSelector)
      {
        v29 = self->_proxyGetterSelector;
      }

      else
      {
        v29 = 0;
      }

      v30 = NSStringFromSelector(v29);
      v31 = [v28 stringWithFormat:@"Unable to obtain %@ XPC proxy for %@. %@ could have crashed", @"assetsd", v30, @"assetsd"];

      v32 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696AA08];
      v48[0] = *MEMORY[0x1E696A578];
      v48[1] = v33;
      v34 = *(*(&v54 + 1) + 40);
      v49[0] = v31;
      v49[1] = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
      v26 = [v32 errorWithDomain:@"com.apple.photos.error" code:41002 userInfo:v35];
    }

    handlerCopy[2](handlerCopy, v26);

    v27 = 0;
  }

  else
  {
    v27 = self->_serviceProxy;
  }

  _Block_object_dispose(&v54, 8);
  if (v45 == 1)
  {
    os_activity_scope_leave((&v46 + 8));
  }

  if (v46)
  {
    v36 = PLRequestGetLog();
    v37 = v36;
    v38 = v46;
    if ((v46 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      Name = sel_getName(*(&v47 + 1));
      LODWORD(v54) = 136446210;
      *(&v54 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v37, OS_SIGNPOST_INTERVAL_END, v38, "PLXPC Sync", "%{public}s", &v54, 0xCu);
    }
  }

  return v27;
}

void __89__PLAssetsdServiceProxyFactory__inq_createServiceProxyWithCallStackSymbols_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    if (*(*(a1 + 32) + 8))
    {
      v5 = *(*(a1 + 32) + 8);
    }

    else
    {
      v5 = 0;
    }

    v6 = NSStringFromSelector(v5);
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_FAULT, "XPC connection error to assetsd %@ : %@", &v9, 0x16u);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
}

void __89__PLAssetsdServiceProxyFactory__inq_createServiceProxyWithCallStackSymbols_errorHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (v7)
  {
    objc_storeStrong((*(a1 + 32) + 16), a2);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    [*(a1 + 32) _logReplyError:v6 withCallStackSymbols:*(a1 + 40)];
  }
}

- (PLAssetsdServiceProxyFactory)initWithQueue:(id)queue proxyCreating:(id)creating proxyGetter:(SEL)getter
{
  queueCopy = queue;
  creatingCopy = creating;
  v15.receiver = self;
  v15.super_class = PLAssetsdServiceProxyFactory;
  v11 = [(PLAssetsdServiceProxyFactory *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, queue);
    if (getter)
    {
      getterCopy = getter;
    }

    else
    {
      getterCopy = 0;
    }

    v12->_proxyGetterSelector = getterCopy;
    objc_storeStrong(&v12->_proxyCreating, creating);
  }

  return v12;
}

@end