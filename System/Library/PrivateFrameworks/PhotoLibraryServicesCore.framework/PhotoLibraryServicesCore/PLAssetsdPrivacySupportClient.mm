@interface PLAssetsdPrivacySupportClient
- (void)presentLimitedLibraryPickerRepromptWithCompletionHandler:(id)handler;
- (void)setClientPrivacyOptions:(id)options;
@end

@implementation PLAssetsdPrivacySupportClient

- (void)setClientPrivacyOptions:(id)options
{
  v17 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v13 = 0u;
  *sel = 0u;
  v11 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v11) = v5;
  if (v5)
  {
    *(&v11 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: setClientPrivacyOptions:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v13 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v7 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_11370];
  [v7 setClientPrivacyOptions:optionsCopy reply:&__block_literal_global_9_11371];

  if (v12 == 1)
  {
    os_activity_scope_leave((&v13 + 8));
  }

  if (v13)
  {
    v8 = PLRequestGetLog();
    v9 = v8;
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v16 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __57__PLAssetsdPrivacySupportClient_setClientPrivacyOptions___block_invoke_7(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error setting client privacy options (%@)", &v4, 0xCu);
  }
}

void __57__PLAssetsdPrivacySupportClient_setClientPrivacyOptions___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy (%@)", &v4, 0xCu);
  }
}

- (void)presentLimitedLibraryPickerRepromptWithCompletionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v24) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: presentLimitedLibraryPickerRepromptWithCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v24 + 1);
    *(&v24 + 1) = v7;

    os_activity_scope_enter(v7, (&v25 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __90__PLAssetsdPrivacySupportClient_presentLimitedLibraryPickerRepromptWithCompletionHandler___block_invoke;
  v22[3] = &unk_1E7932DA8;
  v23 = handlerCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3254779904;
  v15[2] = __90__PLAssetsdPrivacySupportClient_presentLimitedLibraryPickerRepromptWithCompletionHandler___block_invoke_1;
  v15[3] = &unk_1F1F72250;
  v17 = v24;
  v18 = *(&v24 + 1);
  v19 = v25;
  v20 = v26;
  v21 = a2;
  v10 = v23;
  v16 = v10;
  [proxyFactory remoteObjectProxyWithErrorHandler:v22 handler:v15];

  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(*(&v26 + 1));
      *buf = 136446210;
      v28 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __90__PLAssetsdPrivacySupportClient_presentLimitedLibraryPickerRepromptWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy (%@)", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void __90__PLAssetsdPrivacySupportClient_presentLimitedLibraryPickerRepromptWithCompletionHandler___block_invoke_1(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v15 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v16[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      *buf = 138543362;
      v14 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__PLAssetsdPrivacySupportClient_presentLimitedLibraryPickerRepromptWithCompletionHandler___block_invoke_4;
  v11[3] = &unk_1E7932478;
  v12 = *(a1 + 32);
  [v3 presentLimitedLibraryPickerReprompt:v11];
}

@end