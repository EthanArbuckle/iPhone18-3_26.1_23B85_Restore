@interface PLNonBindingAssetsdPhotoKitAddClient
- (BOOL)sendChangesRequest:(id)request error:(id *)error;
- (PLNonBindingAssetsdPhotoKitAddClient)initWithQueue:(id)queue proxyCreating:(id)creating libraryURL:(id)l;
- (void)sendChangesRequest:(id)request reply:(id)reply;
@end

@implementation PLNonBindingAssetsdPhotoKitAddClient

- (BOOL)sendChangesRequest:(id)request error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: sendChangesRequest:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v25 + 1);
    *(&v25 + 1) = v8;

    os_activity_scope_enter(v8, (&v26 + 8));
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__12793;
  v31 = __Block_byref_object_dispose__12794;
  v32 = 0;
  proxyFactory = self->_proxyFactory;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __65__PLNonBindingAssetsdPhotoKitAddClient_sendChangesRequest_error___block_invoke;
  v20[3] = &unk_1E7932E20;
  v20[4] = self;
  v20[5] = &v21;
  v20[6] = &buf;
  v11 = [(PLXPCProxyCreating *)proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v20];
  [PLAssetsdPhotoKitClient setInTransactionProxy:1 queue:self->_queue];
  libraryToken = self->_libraryToken;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__PLNonBindingAssetsdPhotoKitAddClient_sendChangesRequest_error___block_invoke_9;
  v19[3] = &unk_1E7932E48;
  v19[4] = &v21;
  v19[5] = &buf;
  [v11 PhotoKitAddService_applyChangesRequest:requestCopy libraryToken:libraryToken reply:v19];
  [PLAssetsdPhotoKitClient setInTransactionProxy:0 queue:self->_queue];
  if (v22[3])
  {
    v13 = 1;
  }

  else if (error)
  {
    *error = *(*(&buf + 1) + 40);
    v13 = *(v22 + 24);
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v21, 8);
  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    v16 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(*(&v27 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v13 & 1;
}

void __65__PLNonBindingAssetsdPhotoKitAddClient_sendChangesRequest_error___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1[4] + 16);
    v6 = NSStringFromSelector(sel_sendChangesRequest_usingProxyFactory_error_);
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error received from proxy factory %{public}@ in %{public}@: %@", &v9, 0x20u);
  }

  *(*(a1[5] + 8) + 24) = 0;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
}

- (void)sendChangesRequest:(id)request reply:(id)reply
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  replyCopy = reply;
  v30 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v28) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: sendChangesRequest:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v28 + 1);
    *(&v28 + 1) = v9;

    os_activity_scope_enter(v9, (&v29 + 8));
  }

  proxyFactory = self->_proxyFactory;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __65__PLNonBindingAssetsdPhotoKitAddClient_sendChangesRequest_reply___block_invoke;
  v26[3] = &unk_1E7932DA8;
  v12 = replyCopy;
  v27 = v12;
  v13 = [(PLXPCProxyCreating *)proxyFactory remoteObjectProxyWithErrorHandler:v26];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PLNonBindingAssetsdPhotoKitAddClient_sendChangesRequest_reply___block_invoke_3;
  block[3] = &unk_1E7932DF8;
  block[4] = self;
  v23 = v13;
  v15 = requestCopy;
  v24 = v15;
  v16 = v12;
  v25 = v16;
  v17 = v13;
  dispatch_sync(queue, block);

  if (v28 == 1)
  {
    os_activity_scope_leave((&v29 + 8));
  }

  if (v29)
  {
    v18 = PLRequestGetLog();
    v19 = v18;
    v20 = v29;
    if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      Name = sel_getName(*(&v30 + 1));
      *buf = 136446210;
      v32 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __65__PLNonBindingAssetsdPhotoKitAddClient_sendChangesRequest_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446466;
    v6 = "[PLNonBindingAssetsdPhotoKitAddClient sendChangesRequest:reply:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %{public}s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __65__PLNonBindingAssetsdPhotoKitAddClient_sendChangesRequest_reply___block_invoke_3(uint64_t a1)
{
  [PLAssetsdPhotoKitClient setInTransactionProxy:1 queue:*(*(a1 + 32) + 8)];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(*(a1 + 32) + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__PLNonBindingAssetsdPhotoKitAddClient_sendChangesRequest_reply___block_invoke_2;
  v5[3] = &unk_1E7932DD0;
  v6 = *(a1 + 56);
  [v3 PhotoKitAddService_applyChangesRequest:v2 libraryToken:v4 reply:v5];
  [PLAssetsdPhotoKitClient setInTransactionProxy:0 queue:*(*(a1 + 32) + 8)];
}

- (PLNonBindingAssetsdPhotoKitAddClient)initWithQueue:(id)queue proxyCreating:(id)creating libraryURL:(id)l
{
  queueCopy = queue;
  creatingCopy = creating;
  lCopy = l;
  v20.receiver = self;
  v20.super_class = PLNonBindingAssetsdPhotoKitAddClient;
  v12 = [(PLNonBindingAssetsdPhotoKitAddClient *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_proxyFactory, creating);
    v14 = [lCopy copy];
    libraryURL = v13->_libraryURL;
    v13->_libraryURL = v14;

    v16 = [[PLXPCLibraryToken alloc] initWithURL:lCopy];
    libraryToken = v13->_libraryToken;
    v13->_libraryToken = v16;

    v18 = v13;
  }

  return v13;
}

@end