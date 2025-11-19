@interface PLAssetsdDiagnosticsClient
- (BOOL)incompleteRestoreProcesses:(id *)a3 error:(id *)a4;
- (void)setPhotosXPCEndpoint:(id)a3 completionHandler:(id)a4;
@end

@implementation PLAssetsdDiagnosticsClient

- (void)setPhotosXPCEndpoint:(id)a3 completionHandler:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v37 = 0u;
  *sel = 0u;
  v36 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v36) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: setPhotosXPCEndpoint:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v36 + 1);
    *(&v36 + 1) = v10;

    os_activity_scope_enter(v10, (&v37 + 8));
  }

  v12 = PLRequestGetLog();
  sel[1] = a2;
  v13 = os_signpost_id_generate(v12);
  *&v37 = v13;
  v14 = v12;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v40 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  if (!v7)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PLAssetsdDiagnosticsClient.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"endpoint"}];
  }

  v17 = objc_alloc_init(MEMORY[0x1E696B0E0]);
  [v17 _setEndpoint:v7];
  v18 = [(PLAssetsdBaseClient *)self proxyFactory];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __69__PLAssetsdDiagnosticsClient_setPhotosXPCEndpoint_completionHandler___block_invoke;
  v34[3] = &unk_1E7932DA8;
  v35 = v8;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3254779904;
  v26[2] = __69__PLAssetsdDiagnosticsClient_setPhotosXPCEndpoint_completionHandler___block_invoke_15;
  v26[3] = &unk_1F1F72B20;
  v29 = v36;
  v30 = *(&v36 + 1);
  v31 = v37;
  v32 = *sel;
  v33 = a2;
  v19 = v17;
  v27 = v19;
  v20 = v35;
  v28 = v20;
  [v18 remoteObjectProxyWithErrorHandler:v34 handler:v26];

  if (v36 == 1)
  {
    os_activity_scope_leave((&v37 + 8));
  }

  if (v37)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v37;
    if ((v37 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v24 = sel_getName(sel[1]);
      *buf = 136446210;
      v40 = v24;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __69__PLAssetsdDiagnosticsClient_setPhotosXPCEndpoint_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[PLAssetsdDiagnosticsClient setPhotosXPCEndpoint:completionHandler:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __69__PLAssetsdDiagnosticsClient_setPhotosXPCEndpoint_completionHandler___block_invoke_15(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v16 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v17[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v15 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PLAssetsdDiagnosticsClient_setPhotosXPCEndpoint_completionHandler___block_invoke_18;
  v12[3] = &unk_1E7932DD0;
  v11 = *(a1 + 32);
  v13 = *(a1 + 40);
  [v3 setPhotosXPCEndpoint:v11 withReply:v12];
}

void __69__PLAssetsdDiagnosticsClient_setPhotosXPCEndpoint_completionHandler___block_invoke_18(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Error setting photos XPC endpoint: %@", &v8, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (BOOL)incompleteRestoreProcesses:(id *)a3 error:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  *sel = 0u;
  v34 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v34) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: incompleteRestoreProcesses:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v34 + 1);
    *(&v34 + 1) = v9;

    os_activity_scope_enter(v9, (&v35 + 8));
  }

  v11 = PLRequestGetLog();
  sel[1] = a2;
  v12 = os_signpost_id_generate(v11);
  *&v35 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  if (!a3)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PLAssetsdDiagnosticsClient.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"processes"}];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__11826;
  v40 = __Block_byref_object_dispose__11827;
  v41 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__11826;
  v32 = __Block_byref_object_dispose__11827;
  v33 = 0;
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __63__PLAssetsdDiagnosticsClient_incompleteRestoreProcesses_error___block_invoke;
  v27[3] = &unk_1E7932770;
  v27[4] = &buf;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v27];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __63__PLAssetsdDiagnosticsClient_incompleteRestoreProcesses_error___block_invoke_9;
  v26[3] = &unk_1E79326A8;
  v26[4] = &v28;
  [v17 incompleteRestoreProcessesWithReply:v26];

  v18 = v29[5];
  if (v18 || a4 && (v18 = *(*(&buf + 1) + 40), a3 = a4, v18))
  {
    *a3 = v18;
  }

  v19 = v29[5];
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&buf, 8);
  if (v34 == 1)
  {
    os_activity_scope_leave((&v35 + 8));
  }

  if (v35)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v35;
    if ((v35 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v23 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v23;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v19 != 0;
}

void __63__PLAssetsdDiagnosticsClient_incompleteRestoreProcesses_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDiagnosticsClient incompleteRestoreProcesses:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

@end