@interface PLPrimitiveAssetsdClient
- (PLPrimitiveAssetsdClient)init;
- (PLPrimitiveAssetsdClient)initWithPhotoLibraryURL:(id)l clientState:(id)state;
- (id)_setupClientClass:(Class)class proxyGetter:(SEL)getter options:(int64_t)options;
- (id)cloudClient;
- (id)cloudInternalClient;
- (id)debugClient;
- (id)demoClient;
- (id)diagnosticsClient;
- (id)libraryClient;
- (id)libraryInternalClient;
- (id)libraryManagementClient;
- (id)migrationClient;
- (id)nonBindingDebugClient;
- (id)nonBindingPhotoKitAddClient;
- (id)nonBindingPhotoKitClient;
- (id)notificationClient;
- (id)photoKitAddClient;
- (id)photoKitClient;
- (id)privacySupportClient;
- (id)resourceAvailabilityClient;
- (id)resourceClient;
- (id)resourceInternalClient;
- (id)resourceWriteOnlyClient;
- (id)syncClient;
- (id)systemLibraryURLReadOnlyClient;
- (void)_updateLibraryStateConnectionInterrupted:(id)interrupted;
- (void)addPhotoLibraryUnavailabilityHandler:(id)handler;
- (void)dealloc;
- (void)sendDaemonJob:(id)job shouldRunSerially:(BOOL)serially replyHandler:(id)handler;
- (void)waitUntilConnectionSendsAllMessages;
@end

@implementation PLPrimitiveAssetsdClient

- (id)libraryClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__PLPrimitiveAssetsdClient_libraryClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__PLPrimitiveAssetsdClient_libraryClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 72));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getLibraryServiceWithReply_ options:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    *(v3 + 72) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (void)waitUntilConnectionSendsAllMessages
{
  if (objc_opt_respondsToSelector())
  {
    v3 = _os_activity_create(&dword_1AA9BD000, "Submitting barrier block to NSXPC send queue", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v5.opaque[0] = 0;
    v5.opaque[1] = 0;
    os_activity_scope_enter(v3, &v5);
    v4 = dispatch_block_create(0, &__block_literal_global_93_6353);
    [(PLAssetsdClientXPCConnection *)self->_connection addBarrierBlock:v4];
    dispatch_block_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

    os_activity_scope_leave(&v5);
  }

  else
  {
    v3 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v5.opaque[0]) = 0;
      _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Proxy factory object does not respond to addBarrierBlock:", &v5, 2u);
    }
  }
}

void __63__PLPrimitiveAssetsdClient_waitUntilConnectionSendsAllMessages__block_invoke()
{
  v0 = _os_activity_create(&dword_1AA9BD000, "NSXPC barrier block", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v1.opaque[0] = 0;
  v1.opaque[1] = 0;
  os_activity_scope_enter(v0, &v1);
  os_activity_scope_leave(&v1);
}

- (void)sendDaemonJob:(id)job shouldRunSerially:(BOOL)serially replyHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  jobCopy = job;
  handlerCopy = handler;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v11 = +[PLXPCMessageLogger enabled];
  LOBYTE(v31) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: sendDaemonJob:shouldRunSerially:replyHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v31 + 1);
    *(&v31 + 1) = v12;

    os_activity_scope_enter(v12, (&v32 + 8));
  }

  v14 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = jobCopy;
    _os_log_impl(&dword_1AA9BD000, v14, OS_LOG_TYPE_DEFAULT, "Sending sendDaemonJob:shouldRunSerially:replyHandler: with job %@", buf, 0xCu);
  }

  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3254779904;
  block[2] = __73__PLPrimitiveAssetsdClient_sendDaemonJob_shouldRunSerially_replyHandler___block_invoke;
  block[3] = &unk_1F1F72618;
  v16 = handlerCopy;
  v24 = v16;
  block[4] = self;
  v25 = v31;
  v26 = *(&v31 + 1);
  v27 = v32;
  v28 = v33;
  v29 = a2;
  v17 = jobCopy;
  v23 = v17;
  seriallyCopy = serially;
  dispatch_async(isolationQueue, block);

  if (v31 == 1)
  {
    os_activity_scope_leave((&v32 + 8));
  }

  if (v32)
  {
    v18 = PLRequestGetLog();
    v19 = v18;
    v20 = v32;
    if ((v32 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      Name = sel_getName(*(&v33 + 1));
      *buf = 136446210;
      v35 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __73__PLPrimitiveAssetsdClient_sendDaemonJob_shouldRunSerially_replyHandler___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 40);
  if (v2)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__PLPrimitiveAssetsdClient_sendDaemonJob_shouldRunSerially_replyHandler___block_invoke_2;
    v20[3] = &unk_1E7932DA8;
    v21 = v2;
    v4 = [v3 remoteObjectProxyWithErrorHandler:v20];
    if (*(a1 + 56) == 1)
    {
      v5 = PLRequestGetLog();
      v6 = os_signpost_id_generate(v5);
      v26 = @"SignpostId";
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
      v27[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      [v4 set_userInfo:v8];

      v9 = v5;
      v10 = v9;
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        v11 = NSStringFromSelector(*(a1 + 104));
        *buf = 138543362;
        v25 = v11;
        _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PLXPC Async", "%{public}@", buf, 0xCu);
      }
    }

    [v4 runDaemonJob:*(a1 + 40) isSerial:*(a1 + 112) withReply:*(a1 + 48)];

    v12 = v21;
  }

  else
  {
    v12 = [*(*(a1 + 32) + 40) remoteObjectProxyWithErrorHandler:&__block_literal_global_6370];
    if (*(a1 + 56) == 1)
    {
      v13 = PLRequestGetLog();
      v14 = os_signpost_id_generate(v13);
      v22 = @"SignpostId";
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14];
      v23 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      [v12 set_userInfo:v16];

      v17 = v13;
      v18 = v17;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        v19 = NSStringFromSelector(*(a1 + 104));
        *buf = 138543362;
        v25 = v19;
        _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PLXPC Async", "%{public}@", buf, 0xCu);
      }
    }

    [v12 runDaemonJob:*(a1 + 40) isSerial:*(a1 + 112)];
  }
}

void __73__PLPrimitiveAssetsdClient_sendDaemonJob_shouldRunSerially_replyHandler___block_invoke_89(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting assetsd remote object proxy (%@)", &v4, 0xCu);
  }
}

- (void)_updateLibraryStateConnectionInterrupted:(id)interrupted
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PLPrimitiveAssetsdClient__updateLibraryStateConnectionInterrupted___block_invoke;
  block[3] = &unk_1E79329F0;
  block[4] = self;
  dispatch_async(isolationQueue, block);
}

void __69__PLPrimitiveAssetsdClient__updateLibraryStateConnectionInterrupted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 88);
  *(v6 + 88) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 96);
  *(v8 + 96) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 104);
  *(v10 + 104) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 112);
  *(v12 + 112) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 120);
  *(v14 + 120) = 0;

  v16 = *(a1 + 32);
  v17 = *(v16 + 128);
  *(v16 + 128) = 0;

  v18 = *(a1 + 32);
  v19 = *(v18 + 136);
  *(v18 + 136) = 0;

  v20 = *(a1 + 32);
  v21 = *(v20 + 144);
  *(v20 + 144) = 0;

  v22 = *(a1 + 32);
  v23 = *(v22 + 152);
  *(v22 + 152) = 0;

  v24 = *(a1 + 32);
  v25 = *(v24 + 160);
  *(v24 + 160) = 0;

  v26 = *(a1 + 32);
  v27 = *(v26 + 168);
  *(v26 + 168) = 0;

  v28 = *(a1 + 32);
  v29 = *(v28 + 176);
  *(v28 + 176) = 0;

  v30 = *(a1 + 32);
  v31 = *(v30 + 184);
  *(v30 + 184) = 0;

  v32 = *(a1 + 32);
  v33 = *(v32 + 192);
  *(v32 + 192) = 0;

  v34 = *(a1 + 32);
  v35 = *(v34 + 200);
  *(v34 + 200) = 0;

  v36 = *(a1 + 32);
  v37 = *(v36 + 208);
  *(v36 + 208) = 0;

  v38 = *(a1 + 32);
  v39 = *(v38 + 216);
  *(v38 + 216) = 0;

  v40 = *(a1 + 32);
  v41 = *(v40 + 224);
  *(v40 + 224) = 0;

  v42 = *(a1 + 32);
  v43 = *(v42 + 56);
  *(v42 + 56) = 0;

  v44 = *(a1 + 32);
  v45 = *(v44 + 64);
  *(v44 + 64) = 0;
}

- (id)nonBindingPhotoKitAddClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PLPrimitiveAssetsdClient_nonBindingPhotoKitAddClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __55__PLPrimitiveAssetsdClient_nonBindingPhotoKitAddClient__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (!v2)
  {
    v3 = [[PLNonBindingAssetsdPhotoKitAddClient alloc] initWithQueue:*(*(a1 + 32) + 24) proxyCreating:*(*(a1 + 32) + 32) libraryURL:*(*(a1 + 32) + 8)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = v3;

    v2 = *(*(a1 + 32) + 64);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (id)nonBindingPhotoKitClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PLPrimitiveAssetsdClient_nonBindingPhotoKitClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__PLPrimitiveAssetsdClient_nonBindingPhotoKitClient__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (!v2)
  {
    v3 = [[PLNonBindingAssetsdPhotoKitClient alloc] initWithQueue:*(*(a1 + 32) + 24) proxyCreating:*(*(a1 + 32) + 32) libraryURL:*(*(a1 + 32) + 8)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v2 = *(*(a1 + 32) + 56);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (id)nonBindingDebugClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PLPrimitiveAssetsdClient_nonBindingDebugClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __49__PLPrimitiveAssetsdClient_nonBindingDebugClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 224));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getNonBindingDebugServiceWithReply_ options:0];
    v3 = *(a1 + 32);
    v4 = *(v3 + 224);
    *(v3 + 224) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)privacySupportClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__PLPrimitiveAssetsdClient_privacySupportClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __48__PLPrimitiveAssetsdClient_privacySupportClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 216));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getPrivacySupportServiceWithReply_ options:0];
    v3 = *(a1 + 32);
    v4 = *(v3 + 216);
    *(v3 + 216) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)debugClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__PLPrimitiveAssetsdClient_debugClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__PLPrimitiveAssetsdClient_debugClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 208));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getDebugServiceWithReply_ options:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 208);
    *(v3 + 208) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)diagnosticsClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PLPrimitiveAssetsdClient_diagnosticsClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__PLPrimitiveAssetsdClient_diagnosticsClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 200));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getDiagnosticsServiceWithReply_ options:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 200);
    *(v3 + 200) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)demoClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__PLPrimitiveAssetsdClient_demoClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__PLPrimitiveAssetsdClient_demoClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 192));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getDemoServiceWithReply_ options:0];
    v3 = *(a1 + 32);
    v4 = *(v3 + 192);
    *(v3 + 192) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)notificationClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PLPrimitiveAssetsdClient_notificationClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__PLPrimitiveAssetsdClient_notificationClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 184));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getNotificationServiceWithReply_ options:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 184);
    *(v3 + 184) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)syncClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__PLPrimitiveAssetsdClient_syncClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__PLPrimitiveAssetsdClient_syncClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 176));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getSyncServiceWithReply_ options:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 176);
    *(v3 + 176) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)migrationClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__PLPrimitiveAssetsdClient_migrationClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__PLPrimitiveAssetsdClient_migrationClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 168));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getMigrationServiceWithReply_ options:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 168);
    *(v3 + 168) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)cloudInternalClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PLPrimitiveAssetsdClient_cloudInternalClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __47__PLPrimitiveAssetsdClient_cloudInternalClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 160));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getCloudInternalServiceWithReply_ options:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 160);
    *(v3 + 160) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)cloudClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__PLPrimitiveAssetsdClient_cloudClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__PLPrimitiveAssetsdClient_cloudClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 152));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getCloudServiceWithReply_ options:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 152);
    *(v3 + 152) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)resourceInternalClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__PLPrimitiveAssetsdClient_resourceInternalClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __50__PLPrimitiveAssetsdClient_resourceInternalClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 144));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getResourceInternalServiceWithReply_ options:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 144);
    *(v3 + 144) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)resourceWriteOnlyClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__PLPrimitiveAssetsdClient_resourceWriteOnlyClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__PLPrimitiveAssetsdClient_resourceWriteOnlyClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 136));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getResourceWriteOnlyServiceWithReply_ options:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 136);
    *(v3 + 136) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)resourceClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PLPrimitiveAssetsdClient_resourceClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__PLPrimitiveAssetsdClient_resourceClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 128));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getResourceServiceWithReply_ options:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 128);
    *(v3 + 128) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)photoKitAddClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PLPrimitiveAssetsdClient_photoKitAddClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__PLPrimitiveAssetsdClient_photoKitAddClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 120));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getPhotoKitAddServiceWithReply_ options:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 120);
    *(v3 + 120) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)resourceAvailabilityClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PLPrimitiveAssetsdClient_resourceAvailabilityClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__PLPrimitiveAssetsdClient_resourceAvailabilityClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 112));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getResourceAvailabilityServiceWithReply_ options:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 112);
    *(v3 + 112) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)photoKitClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PLPrimitiveAssetsdClient_photoKitClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__PLPrimitiveAssetsdClient_photoKitClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 104));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getPhotoKitServiceWithReply_ options:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 104);
    *(v3 + 104) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)libraryManagementClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__PLPrimitiveAssetsdClient_libraryManagementClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__PLPrimitiveAssetsdClient_libraryManagementClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 96));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getLibraryManagementServiceWithReply_ options:0];
    v3 = *(a1 + 32);
    v4 = *(v3 + 96);
    *(v3 + 96) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)systemLibraryURLReadOnlyClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__PLPrimitiveAssetsdClient_systemLibraryURLReadOnlyClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__PLPrimitiveAssetsdClient_systemLibraryURLReadOnlyClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 88));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getSystemLibraryURLReadOnlyServiceWithReply_ options:0];
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    *(v3 + 88) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)libraryInternalClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6375;
  v10 = __Block_byref_object_dispose__6376;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PLPrimitiveAssetsdClient_libraryInternalClient__block_invoke;
  v5[3] = &unk_1E7932A58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __49__PLPrimitiveAssetsdClient_libraryInternalClient__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 80));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) _setupClientClass:objc_opt_class() proxyGetter:sel_getLibraryInternalServiceWithReply_ options:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 80);
    *(v3 + 80) = v2;

    v5 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v5, v2);
  }
}

- (id)_setupClientClass:(Class)class proxyGetter:(SEL)getter options:(int64_t)options
{
  v8 = 40;
  if ((options & 1) == 0)
  {
    v8 = 32;
  }

  v9 = *(&self->super.isa + v8);
  v10 = [[class alloc] initWithQueue:self->_isolationQueue proxyCreating:v9 proxyGetter:getter clientState:self->_clientState];

  return v10;
}

- (void)addPhotoLibraryUnavailabilityHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  v8 = handlerCopy;
  if (!connection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdClient.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"_connection != nil"}];

    handlerCopy = v8;
    connection = self->_connection;
  }

  [(PLAssetsdClientXPCConnection *)connection addPhotoLibraryUnavailabilityHandler:handlerCopy];
}

- (void)dealloc
{
  [(PLAssetsdClientXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = PLPrimitiveAssetsdClient;
  [(PLPrimitiveAssetsdClient *)&v3 dealloc];
}

- (PLPrimitiveAssetsdClient)initWithPhotoLibraryURL:(id)l clientState:(id)state
{
  lCopy = l;
  stateCopy = state;
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if ((PLIsReallyAssetsd_isAssetsd & 1) != 0 || __PLIsAssetsdProxyService)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdClient.m" lineNumber:123 description:@"PLAssetsdClient must not be used by assetsd"];
  }

  v23.receiver = self;
  v23.super_class = PLPrimitiveAssetsdClient;
  v9 = [(PLPrimitiveAssetsdClient *)&v23 init];
  if (v9)
  {
    v10 = [lCopy copy];
    libraryURL = v9->_libraryURL;
    v9->_libraryURL = v10;

    objc_storeStrong(&v9->_clientState, state);
    v12 = objc_alloc_init(PLAssetsdClientSandboxExtensions);
    sandboxExtensions = v9->_sandboxExtensions;
    v9->_sandboxExtensions = v12;

    v14 = objc_alloc_init(PLAssetsdClientXPCConnection);
    connection = v9->_connection;
    v9->_connection = v14;

    v16 = [[PLAutoBindingProxyFactory alloc] initWithProxyFactory:v9->_connection photoLibraryURL:lCopy];
    autoBindingProxyFactory = v9->_autoBindingProxyFactory;
    v9->_autoBindingProxyFactory = v16;

    v18 = dispatch_queue_create("PLAssetsdClient isolation queue", 0);
    isolationQueue = v9->_isolationQueue;
    v9->_isolationQueue = v18;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__updateLibraryStateConnectionInterrupted_ name:@"PLAssetsdClientXPCConnectionInterruptedInternalNotificationName" object:v9->_connection];
  }

  return v9;
}

- (PLPrimitiveAssetsdClient)init
{
  v2 = _PFThrowMethodNotImplemented();
  [(PLAssetsdClient *)v2 .cxx_destruct];
  return result;
}

@end