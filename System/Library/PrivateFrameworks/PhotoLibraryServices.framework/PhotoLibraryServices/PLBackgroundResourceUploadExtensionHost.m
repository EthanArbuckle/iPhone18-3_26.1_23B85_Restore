@interface PLBackgroundResourceUploadExtensionHost
- (BOOL)_isCancelled;
- (BOOL)_lock_setupProxyIfNeededWithError:(id *)a3;
- (PLBackgroundResourceUploadExtensionHost)initWithClientBundleIdentifier:(id)a3;
- (id)_connection;
- (id)_proxy;
- (id)_timer;
- (void)_cancelWithResult:(unint64_t)a3 force:(BOOL)a4;
- (void)_disableTimer:(id)a3;
- (void)_performTaskOnWorkBlock:(id)a3;
- (void)_setupWithContinuationHandler:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)processWithContinuationHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation PLBackgroundResourceUploadExtensionHost

- (void)_disableTimer:(id)a3
{
  if (a3)
  {
    dispatch_source_cancel(a3);
  }
}

- (id)_timer
{
  if (self->_isTimerDisabled)
  {
    v2 = PLBackendGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_INFO, "UploadExtensionHost: Timer disabled", buf, 2u);
    }

    v3 = 0;
  }

  else
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_timerQueue);
    v5 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v7 = v4;
    pl_dispatch_source_set_event_handler();
    dispatch_activate(v7);
    v2 = v7;

    v3 = v2;
  }

  return v3;
}

uint64_t __49__PLBackgroundResourceUploadExtensionHost__timer__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) clientBundleIdentifier];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_INFO, "UploadExtensionHost: Extension timer limit reached. Cancelling extension for identifier: %@", &v5, 0xCu);
  }

  [*(a1 + 32) _cancelWithResult:2 force:0];
  return [*(a1 + 32) _disableTimer:*(a1 + 40)];
}

- (id)_proxy
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__29272;
  v8 = __Block_byref_object_dispose__29273;
  v9 = 0;
  PLRunWithUnfairLock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (id)_connection
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__29272;
  v8 = __Block_byref_object_dispose__29273;
  v9 = 0;
  PLRunWithUnfairLock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (void)_cancelWithResult:(unint64_t)a3 force:(BOOL)a4
{
  if (a4 || ![(PLBackgroundResourceUploadExtensionHost *)self _isCancelled])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [(PLBackgroundResourceUploadExtensionHost *)self _connection];
    [v7 invalidate];

    objc_autoreleasePoolPop(v6);
    v10 = MEMORY[0x1E69E9820];
    PLRunWithUnfairLock();
    v8 = [(PLBackgroundResourceUploadExtensionHost *)self completionHandler:v10];

    if (v8)
    {
      v9 = [(PLBackgroundResourceUploadExtensionHost *)self completionHandler];
      v9[2](v9, a3);
    }

    [(PLXPCTransaction *)self->_transaction stillAlive];
  }
}

void __67__PLBackgroundResourceUploadExtensionHost__cancelWithResult_force___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;

  if (*(a1 + 40) == 2)
  {
    [*(*(a1 + 32) + 8) invalidate];
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;
}

- (BOOL)_isCancelled
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  PLRunWithUnfairLock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (BOOL)_lock_setupProxyIfNeededWithError:(id *)a3
{
  v42[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_proxy)
  {
    return 1;
  }

  v6 = [objc_alloc(MEMORY[0x1E6966CE0]) initWithExtensionPointIdentifier:@"com.apple.photos.background-upload"];
  v7 = [MEMORY[0x1E6966CF8] executeQuery:v6];
  v8 = MEMORY[0x1E696AE18];
  v9 = [(PLBackgroundResourceUploadExtensionHost *)self clientBundleIdentifier];
  v10 = [v8 predicateWithFormat:@"bundleIdentifier BEGINSWITH[c] %@", v9];

  v11 = [v7 filteredArrayUsingPredicate:v10];
  v12 = [v11 firstObject];

  if (v12)
  {
    objc_initWeak(&location, self);
    v13 = [objc_alloc(MEMORY[0x1E6966CC8]) initWithExtensionIdentity:v12];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __77__PLBackgroundResourceUploadExtensionHost__lock_setupProxyIfNeededWithError___block_invoke;
    v38[3] = &unk_1E75788C0;
    objc_copyWeak(&v39, &location);
    [v13 setInterruptionHandler:v38];
    v37 = 0;
    v14 = [MEMORY[0x1E6966CC0] extensionProcessWithConfiguration:v13 error:&v37];
    v15 = v37;
    lock_process = self->_lock_process;
    self->_lock_process = v14;

    v17 = self->_lock_process;
    if (v17)
    {
      v36 = v15;
      v18 = [(_EXExtensionProcess *)v17 makeXPCConnectionWithError:&v36];
      v19 = v36;

      lock_xpcConnection = self->_lock_xpcConnection;
      self->_lock_xpcConnection = v18;

      if (self->_lock_xpcConnection)
      {
        v21 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F109F128];
        [(NSXPCConnection *)self->_lock_xpcConnection setRemoteObjectInterface:v21];

        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __77__PLBackgroundResourceUploadExtensionHost__lock_setupProxyIfNeededWithError___block_invoke_89;
        v34[3] = &unk_1E75788C0;
        objc_copyWeak(&v35, &location);
        [(NSXPCConnection *)self->_lock_xpcConnection setInterruptionHandler:v34];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __77__PLBackgroundResourceUploadExtensionHost__lock_setupProxyIfNeededWithError___block_invoke_90;
        v32[3] = &unk_1E75788C0;
        objc_copyWeak(&v33, &location);
        [(NSXPCConnection *)self->_lock_xpcConnection setInvalidationHandler:v32];
        [(NSXPCConnection *)self->_lock_xpcConnection activate];
        v22 = self->_lock_xpcConnection;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __77__PLBackgroundResourceUploadExtensionHost__lock_setupProxyIfNeededWithError___block_invoke_91;
        v31[3] = &unk_1E7575FA8;
        v31[4] = self;
        v23 = [(NSXPCConnection *)v22 synchronousRemoteObjectProxyWithErrorHandler:v31];
        lock_proxy = self->_lock_proxy;
        self->_lock_proxy = v23;

        objc_destroyWeak(&v33);
        objc_destroyWeak(&v35);
        v5 = 1;
      }

      else if (a3)
      {
        v29 = v19;
        v5 = 0;
        *a3 = v19;
      }

      else
      {
        v5 = 0;
      }

      v15 = v19;
    }

    else if (a3)
    {
      v28 = v15;
      v5 = 0;
      *a3 = v15;
    }

    else
    {
      v5 = 0;
    }

    objc_destroyWeak(&v39);

    objc_destroyWeak(&location);
  }

  else
  {
    v25 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v42[0] = @"UploadExtensionHost: Failed to find extensionIdentity";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v15 = [v25 errorWithDomain:*MEMORY[0x1E69BFF48] code:45700 userInfo:v26];

    if (a3)
    {
      v27 = v15;
      v5 = 0;
      *a3 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void __77__PLBackgroundResourceUploadExtensionHost__lock_setupProxyIfNeededWithError___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained clientBundleIdentifier];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_INFO, "UploadExtensionHost: Configuration Interruption Handler called for identifier: %@", &v6, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 cancel];
}

void __77__PLBackgroundResourceUploadExtensionHost__lock_setupProxyIfNeededWithError___block_invoke_89(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained clientBundleIdentifier];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_INFO, "UploadExtensionHost: Connection Interruption Handler called for identifier: %@", &v6, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 cancel];
}

void __77__PLBackgroundResourceUploadExtensionHost__lock_setupProxyIfNeededWithError___block_invoke_90(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained clientBundleIdentifier];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_INFO, "UploadExtensionHost: Connection Invalidation Handler called for identifier: %@", &v6, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 cancel];
}

void __77__PLBackgroundResourceUploadExtensionHost__lock_setupProxyIfNeededWithError___block_invoke_91(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) clientBundleIdentifier];
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "UploadExtensionHost: Remote proxy failed for identifier: %@. Error: %@", &v6, 0x16u);
  }
}

- (void)_performTaskOnWorkBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLBackgroundResourceUploadExtensionHost.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"workBlock"}];
  }

  v6 = [MEMORY[0x1E69BF360] transaction:"-[PLBackgroundResourceUploadExtensionHost _performTaskOnWorkBlock:]"];
  transaction = self->_transaction;
  self->_transaction = v6;

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PLBackgroundResourceUploadExtensionHost__performTaskOnWorkBlock___block_invoke;
  block[3] = &unk_1E7577C08;
  block[4] = self;
  v12 = v5;
  v9 = v5;
  dispatch_async(queue, block);
}

void __67__PLBackgroundResourceUploadExtensionHost__performTaskOnWorkBlock___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__29272;
  v22 = __Block_byref_object_dispose__29273;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  PLRunWithUnfairLock();
  v2 = *(v15 + 24);
  if ((v2 & 1) == 0)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) clientBundleIdentifier];
      v11 = v19[5];
      *buf = 138412546;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "BackgroundResourceUploadExtensionHost: Failed to access app extension for identifier: %@. Error: %@", buf, 0x16u);
    }

    v12 = 1;
    goto LABEL_10;
  }

  v3 = [*(a1 + 32) continuationHandler];
  v4 = v3[2]();

  if ((v4 & 1) == 0)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) clientBundleIdentifier];
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "BackgroundResourceUploadExtensionHost: Caller has cancelled the pre-request, suspending: %@", buf, 0xCu);
    }

    v12 = 3;
LABEL_10:

    [*(a1 + 32) _cancelWithResult:v12 force:v2 ^ 1u];
    goto LABEL_11;
  }

  v5 = [*(a1 + 32) _timer];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) _proxy];
  v8 = (*(v6 + 16))(v6, v7);

  [*(a1 + 32) _disableTimer:v5];
  [*(a1 + 32) _cancelWithResult:v8 force:0];

LABEL_11:
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

void __67__PLBackgroundResourceUploadExtensionHost__performTaskOnWorkBlock___block_invoke_29(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _lock_setupProxyIfNeededWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (void)processWithContinuationHandler:(id)a3 completionHandler:(id)a4
{
  [(PLBackgroundResourceUploadExtensionHost *)self _setupWithContinuationHandler:a3 completionHandler:a4];

  [(PLBackgroundResourceUploadExtensionHost *)self _performTaskOnWorkBlock:&__block_literal_global_29308];
}

uint64_t __92__PLBackgroundResourceUploadExtensionHost_processWithContinuationHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__PLBackgroundResourceUploadExtensionHost_processWithContinuationHandler_completionHandler___block_invoke_2;
  v5[3] = &unk_1E756A830;
  v5[4] = &v6;
  [v2 process:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setupWithContinuationHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  [(PLBackgroundResourceUploadExtensionHost *)self setContinuationHandler:a3];
  [(PLBackgroundResourceUploadExtensionHost *)self setCompletionHandler:v6];
}

- (void)dealloc
{
  [(PLBackgroundResourceUploadExtensionHost *)self cancel];
  v3.receiver = self;
  v3.super_class = PLBackgroundResourceUploadExtensionHost;
  [(PLBackgroundResourceUploadExtensionHost *)&v3 dealloc];
}

- (PLBackgroundResourceUploadExtensionHost)initWithClientBundleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PLBackgroundResourceUploadExtensionHost.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"clientBundleIdentifier"}];
  }

  v21.receiver = self;
  v21.super_class = PLBackgroundResourceUploadExtensionHost;
  v6 = [(PLBackgroundResourceUploadExtensionHost *)&v21 init];
  v7 = v6;
  if (v6)
  {
    [(PLBackgroundResourceUploadExtensionHost *)v6 setClientBundleIdentifier:v5];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.photolibraryd.extensionhost.%@", v5];
    [v8 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = pl_dispatch_queue_create_with_fallback_qos();
    queue = v7->_queue;
    v7->_queue = v10;

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.photolibraryd.extensionhost.timer.%@", v5];
    v13 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    timerQueue = v7->_timerQueue;
    v7->_timerQueue = v15;

    v7->_lock._os_unfair_lock_opaque = 0;
    transaction = v7->_transaction;
    v7->_transaction = 0;

    if (MEMORY[0x19EAEE230]())
    {
      v18 = [MEMORY[0x1E695E000] standardUserDefaults];
      v7->_isTimerDisabled = [v18 BOOLForKey:@"DisableBackgroundUploadHostTimer"];
    }
  }

  return v7;
}

@end