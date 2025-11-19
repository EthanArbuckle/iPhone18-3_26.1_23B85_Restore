@interface PLAutoBindingProxyFactory
+ (unint64_t)maxBindAttemptCount;
- (BOOL)_bindToPhotoLibraryIfNecessaryWithErrorHandler:(id)a3;
- (BOOL)_isResultAnInterruptionError:(id)a3;
- (PLAutoBindingProxyFactory)initWithProxyFactory:(id)a3 photoLibraryURL:(id)a4;
- (id)_attemptBindToPhotoLibrary;
- (id)_bindToPhotoLibrary;
- (id)_bindToPhotoLibraryAndCacheResult;
- (id)_bindToPhotoLibraryIfNecessary;
- (id)_blackholeProxyForProxy:(id)a3;
- (id)_cachedBindResult;
- (id)_lazilyBindToPhotoLibrary;
- (id)_unboostingRemoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)_connectionInterrupted:(id)a3;
- (void)_updateCachedBindResult:(id)a3;
@end

@implementation PLAutoBindingProxyFactory

- (void)_connectionInterrupted:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__PLAutoBindingProxyFactory__connectionInterrupted___block_invoke;
  v3[3] = &unk_1E79329F0;
  v3[4] = self;
  PLSafeRunWithUnfairLock(&self->_bindLock, v3);
}

void __52__PLAutoBindingProxyFactory__connectionInterrupted___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    v5 = *(v3 + 24);
    *buf = 138412546;
    v17 = v4;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1AA9BD000, v2, OS_LOG_TYPE_DEFAULT, "Client connection interrupted for URL %@, resetting bind state (previous result: %@)", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = 0;

  v8 = *(a1 + 32);
  v9 = objc_initWeak(buf, v8);

  v10 = [PLLazyObject alloc];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__PLAutoBindingProxyFactory__connectionInterrupted___block_invoke_14;
  v14[3] = &unk_1E7932568;
  objc_copyWeak(&v15, buf);
  v11 = [(PLLazyObject *)v10 initWithBlock:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  *(v12 + 16) = v11;
}

id __52__PLAutoBindingProxyFactory__connectionInterrupted___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _bindToPhotoLibrary];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_isResultAnInterruptionError:(id)a3
{
  v3 = a3;
  if ([v3 isFailure])
  {
    v4 = [v3 error];
    v5 = PLIsErrorEqualToCode(v4, *MEMORY[0x1E696A250], 4097);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_attemptBindToPhotoLibrary
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v4;
  if (v4)
  {
    v5 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: _attemptBindToPhotoLibrary", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v25 + 1);
    *(&v25 + 1) = v5;

    os_activity_scope_enter(v5, (&v26 + 8));
  }

  v7 = PLRequestGetLog();
  sel[1] = a2;
  v8 = os_signpost_id_generate(v7);
  *&v26 = v8;
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__11570;
  v31 = __Block_byref_object_dispose__11571;
  v32 = 0;
  v12 = +[PLXPCLibraryToken clientOptions];
  proxyFactory = self->_proxyFactory;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __55__PLAutoBindingProxyFactory__attemptBindToPhotoLibrary__block_invoke;
  v24[3] = &unk_1E7932608;
  v24[4] = self;
  v24[5] = &buf;
  v14 = [(PLXPCProxyCreating *)proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v24];
  photoLibraryURL = self->_photoLibraryURL;
  v16 = [PLXPCLibraryToken clientToServiceSandboxExtensionForURL:photoLibraryURL];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __55__PLAutoBindingProxyFactory__attemptBindToPhotoLibrary__block_invoke_12;
  v23[3] = &unk_1E7932608;
  v23[4] = self;
  v23[5] = &buf;
  [v14 bindToPhotoLibraryURL:photoLibraryURL sandboxExtension:v16 clientOptions:v12 withReply:v23];

  v17 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v18 = PLRequestGetLog();
    v19 = v18;
    v20 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      v21 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v21;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v17;
}

void __55__PLAutoBindingProxyFactory__attemptBindToPhotoLibrary__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(*(a1 + 32) + 40);
    v9 = 136315650;
    v10 = "[PLAutoBindingProxyFactory _attemptBindToPhotoLibrary]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy to open photo library with URL %s: %@ %@", &v9, 0x20u);
  }

  v6 = [PLResult failureWithError:v3];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __55__PLAutoBindingProxyFactory__attemptBindToPhotoLibrary__block_invoke_12(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(a1 + 32) + 40);
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "Failed to bind to photo library %@, %@", &v15, 0x16u);
    }

    v7 = [PLResult failureWithError:v3];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(*(a1 + 32) + 32);
      v11 = *(*(a1 + 32) + 40);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEBUG, "Successfully bound to photo library: %@, %@", &v15, 0x16u);
    }

    v9 = [MEMORY[0x1E695DFB0] null];
    v12 = [PLResult successWithResult:v9];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (id)_bindToPhotoLibrary
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() maxBindAttemptCount];
  v4 = 0;
  v5 = -1;
  do
  {
    v6 = v4;
    v4 = [(PLAutoBindingProxyFactory *)self _attemptBindToPhotoLibrary];

    v7 = [(PLAutoBindingProxyFactory *)self _isResultAnInterruptionError:v4];
    v8 = v5 + 2;
    ++v5;
  }

  while (v7 && v8 < v3);
  if (v5)
  {
    v9 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = v8;
      _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_DEFAULT, "Repeated bind for %lu attempts", &v12, 0xCu);
    }
  }

  if (v7)
  {
    v10 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 134217984;
      v13 = v8;
      _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_ERROR, "Failed bind after %lu attempts", &v12, 0xCu);
    }
  }

  return v4;
}

- (id)_lazilyBindToPhotoLibrary
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PLAutoBindingProxyFactory__lazilyBindToPhotoLibrary__block_invoke;
  v5[3] = &unk_1E79325E0;
  v5[4] = self;
  v2 = PLResultWithUnfairLock(&self->_bindLock, v5);
  v3 = [v2 objectValue];

  return v3;
}

- (void)_updateCachedBindResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PLAutoBindingProxyFactory__updateCachedBindResult___block_invoke;
  v6[3] = &unk_1E7932A28;
  v7 = v4;
  v8 = self;
  v5 = v4;
  PLRunWithUnfairLock(&self->_bindLock, v6);
}

void __53__PLAutoBindingProxyFactory__updateCachedBindResult___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isFailure])
  {
    v2 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      v5 = *(v3 + 40);
      v6 = *(v3 + 24);
      *buf = 138412802;
      v19 = v5;
      v20 = 2112;
      v21 = v4;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_1AA9BD000, v2, OS_LOG_TYPE_ERROR, "Got a bind failure for URL %@, resetting bind state: %@ (previous result: %@)", buf, 0x20u);
    }

    v7 = *(a1 + 40);
    v8 = *(v7 + 24);
    *(v7 + 24) = 0;

    v9 = *(a1 + 40);
    v10 = objc_initWeak(buf, v9);

    v11 = [PLLazyObject alloc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53__PLAutoBindingProxyFactory__updateCachedBindResult___block_invoke_7;
    v16[3] = &unk_1E7932568;
    objc_copyWeak(&v17, buf);
    v12 = [(PLLazyObject *)v11 initWithBlock:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
    v13 = *(a1 + 40);
    v14 = *(v13 + 16);
    *(v13 + 16) = v12;
  }

  else
  {
    objc_storeStrong((*(a1 + 40) + 24), *(a1 + 32));
    v14 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(*(a1 + 40) + 24);
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&dword_1AA9BD000, v14, OS_LOG_TYPE_DEBUG, "Setting bind result to: %@", buf, 0xCu);
    }
  }
}

id __53__PLAutoBindingProxyFactory__updateCachedBindResult___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _bindToPhotoLibrary];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_cachedBindResult
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__PLAutoBindingProxyFactory__cachedBindResult__block_invoke;
  v4[3] = &unk_1E79325B8;
  v4[4] = self;
  v2 = PLResultWithUnfairLock(&self->_bindLock, v4);

  return v2;
}

- (id)_bindToPhotoLibraryAndCacheResult
{
  v3 = [(PLAutoBindingProxyFactory *)self _lazilyBindToPhotoLibrary];
  [(PLAutoBindingProxyFactory *)self _updateCachedBindResult:v3];

  return v3;
}

- (id)_bindToPhotoLibraryIfNecessary
{
  v3 = [(PLAutoBindingProxyFactory *)self _cachedBindResult];
  if (!v3)
  {
    v3 = [(PLAutoBindingProxyFactory *)self _bindToPhotoLibraryAndCacheResult];
  }

  return v3;
}

- (BOOL)_bindToPhotoLibraryIfNecessaryWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(PLAutoBindingProxyFactory *)self _bindToPhotoLibraryIfNecessary];
  v6 = [v5 isSuccess];
  if ((v6 & 1) == 0)
  {
    v7 = [v5 error];
    v4[2](v4, v7);
  }

  return v6;
}

- (id)_unboostingRemoteObjectProxy
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PLAutoBindingProxyFactory__unboostingRemoteObjectProxy__block_invoke;
  v5[3] = &unk_1E7932590;
  v5[4] = self;
  if ([(PLAutoBindingProxyFactory *)self _bindToPhotoLibraryIfNecessaryWithErrorHandler:v5])
  {
    v3 = [(PLXPCProxyCreating *)self->_proxyFactory _unboostingRemoteObjectProxy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __57__PLAutoBindingProxyFactory__unboostingRemoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(*(a1 + 32) + 40);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Unable to bind to photo library URL %@: %@", &v6, 0x16u);
  }
}

- (id)_blackholeProxyForProxy:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLGatekeeperXPCGetLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      proxyFactory = self->_proxyFactory;
      photoLibraryURL = self->_photoLibraryURL;
      v13 = 138412802;
      v14 = v4;
      v15 = 2112;
      v16 = proxyFactory;
      v17 = 2112;
      v18 = photoLibraryURL;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "Creating blackhole proxy for %@ from proxy factory %@ for library URL: %@", &v13, 0x20u);
    }

    v9 = [[PLAutoBindingBlackholeProxy alloc] initWithTargetObject:v4];
  }

  else
  {
    if (v6)
    {
      v10 = self->_proxyFactory;
      v11 = self->_photoLibraryURL;
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "Got a nil proxy from proxy factory %@ for library URL: %@", &v13, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(PLAutoBindingProxyFactory *)self _bindToPhotoLibraryIfNecessaryWithErrorHandler:v4];
  v6 = [(PLXPCProxyCreating *)self->_proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v4];

  if (!v5)
  {
    v7 = [(PLAutoBindingProxyFactory *)self _blackholeProxyForProxy:v6];

    v6 = v7;
  }

  return v6;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(PLAutoBindingProxyFactory *)self _bindToPhotoLibraryIfNecessaryWithErrorHandler:v4];
  v6 = [(PLXPCProxyCreating *)self->_proxyFactory remoteObjectProxyWithErrorHandler:v4];

  if (!v5)
  {
    v7 = [(PLAutoBindingProxyFactory *)self _blackholeProxyForProxy:v6];

    v6 = v7;
  }

  return v6;
}

- (PLAutoBindingProxyFactory)initWithProxyFactory:(id)a3 photoLibraryURL:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = PLAutoBindingProxyFactory;
  v9 = [(PLAutoBindingProxyFactory *)&v22 init];
  if (v9)
  {
    if (!v7)
    {
      v10 = PLGatekeeperXPCGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        photoLibraryURL = v9->_photoLibraryURL;
        *buf = 138412290;
        v24 = photoLibraryURL;
        _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_ERROR, "Creating an autobinding proxy factory from a nil proxy factor for library URL: %@", buf, 0xCu);
      }
    }

    objc_storeStrong(&v9->_proxyFactory, a3);
    v12 = [v8 copy];
    v13 = v9->_photoLibraryURL;
    v9->_photoLibraryURL = v12;

    v9->_bindLock._os_unfair_lock_opaque = 0;
    v14 = objc_initWeak(buf, v9);

    v15 = [PLLazyObject alloc];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__PLAutoBindingProxyFactory_initWithProxyFactory_photoLibraryURL___block_invoke;
    v20[3] = &unk_1E7932568;
    objc_copyWeak(&v21, buf);
    v16 = [(PLLazyObject *)v15 initWithBlock:v20];
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
    lazyBindToPhotoLibrary = v9->_lazyBindToPhotoLibrary;
    v9->_lazyBindToPhotoLibrary = v16;

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v9 selector:sel__connectionInterrupted_ name:@"PLAssetsdClientXPCConnectionInterruptedInternalNotificationName" object:v9->_proxyFactory];
  }

  return v9;
}

id __66__PLAutoBindingProxyFactory_initWithProxyFactory_photoLibraryURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _bindToPhotoLibrary];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (unint64_t)maxBindAttemptCount
{
  if (!PFOSVariantHasInternalDiagnostics())
  {
    return 50;
  }

  if (PFProcessIsLaunchedToExecuteTests())
  {
    return 2;
  }

  if (PLMobileSlideShowPhotoLibraryTestingMode_onceToken != -1)
  {
    dispatch_once(&PLMobileSlideShowPhotoLibraryTestingMode_onceToken, &__block_literal_global_3937);
  }

  if (PLMobileSlideShowPhotoLibraryTestingMode_sMobileSlideShowPhotoLibraryTestingMode)
  {
    return 2;
  }

  else
  {
    return -1;
  }
}

@end