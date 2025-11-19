@interface PLAssetsdDemoClient
- (BOOL)cleanupForStoreDemoMode:(id *)a3;
- (BOOL)hasCompletedMomentAnalysis:(BOOL *)a3 error:(id *)a4;
- (BOOL)hasCompletedRestorePostProcessing:(BOOL *)a3 error:(id *)a4;
- (void)cleanupForStoreDemoModeWithCompletion:(id)a3;
@end

@implementation PLAssetsdDemoClient

- (BOOL)hasCompletedMomentAnalysis:(BOOL *)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  *sel = 0u;
  v29 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: hasCompletedMomentAnalysis:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v29 + 1);
    *(&v29 + 1) = v9;

    os_activity_scope_enter(v9, (&v30 + 8));
  }

  v11 = PLRequestGetLog();
  sel[1] = a2;
  v12 = os_signpost_id_generate(v11);
  *&v30 = v12;
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
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PLAssetsdDemoClient.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"result"}];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1659;
  v35 = __Block_byref_object_dispose__1660;
  v36 = 0;
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __56__PLAssetsdDemoClient_hasCompletedMomentAnalysis_error___block_invoke;
  v28[3] = &unk_1E7932770;
  v28[4] = &buf;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v28];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __56__PLAssetsdDemoClient_hasCompletedMomentAnalysis_error___block_invoke_22;
  v27[3] = &__block_descriptor_40_e8_v12__0B8l;
  v27[4] = a3;
  [v17 hasCompletedMomentAnalysisWithReply:v27];

  v18 = *(&buf + 1);
  if (a4)
  {
    v19 = *(*(&buf + 1) + 40);
    if (v19)
    {
      *a4 = v19;
      v18 = *(&buf + 1);
    }
  }

  v20 = *(v18 + 40);
  _Block_object_dispose(&buf, 8);

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v24 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v24;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v20 == 0;
}

void __56__PLAssetsdDemoClient_hasCompletedMomentAnalysis_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDemoClient hasCompletedMomentAnalysis:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)hasCompletedRestorePostProcessing:(BOOL *)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  *sel = 0u;
  v29 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: hasCompletedRestorePostProcessing:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v29 + 1);
    *(&v29 + 1) = v9;

    os_activity_scope_enter(v9, (&v30 + 8));
  }

  v11 = PLRequestGetLog();
  sel[1] = a2;
  v12 = os_signpost_id_generate(v11);
  *&v30 = v12;
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
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PLAssetsdDemoClient.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"result"}];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1659;
  v35 = __Block_byref_object_dispose__1660;
  v36 = 0;
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __63__PLAssetsdDemoClient_hasCompletedRestorePostProcessing_error___block_invoke;
  v28[3] = &unk_1E7932770;
  v28[4] = &buf;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v28];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __63__PLAssetsdDemoClient_hasCompletedRestorePostProcessing_error___block_invoke_19;
  v27[3] = &__block_descriptor_40_e8_v12__0B8l;
  v27[4] = a3;
  [v17 hasCompletedRestorePostProcessingWithReply:v27];

  v18 = *(&buf + 1);
  if (a4)
  {
    v19 = *(*(&buf + 1) + 40);
    if (v19)
    {
      *a4 = v19;
      v18 = *(&buf + 1);
    }
  }

  v20 = *(v18 + 40);
  _Block_object_dispose(&buf, 8);

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v24 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v24;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v20 == 0;
}

void __63__PLAssetsdDemoClient_hasCompletedRestorePostProcessing_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDemoClient hasCompletedRestorePostProcessing:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)cleanupForStoreDemoMode:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v22) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: cleanupForStoreDemoMode:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v22 + 1);
    *(&v22 + 1) = v6;

    os_activity_scope_enter(v6, (&v23 + 8));
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1659;
  v28 = __Block_byref_object_dispose__1660;
  v29 = 0;
  v8 = [(PLAssetsdBaseClient *)self proxyFactory];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47__PLAssetsdDemoClient_cleanupForStoreDemoMode___block_invoke;
  v17[3] = &unk_1E7932360;
  v17[4] = &v18;
  v17[5] = &buf;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47__PLAssetsdDemoClient_cleanupForStoreDemoMode___block_invoke_15;
  v16[3] = &unk_1E7932E48;
  v16[4] = &v18;
  v16[5] = &buf;
  [v9 cleanupForStoreDemoModeByStagingTemplateOrResettingLibrary:v16];

  v10 = *(v19 + 24);
  if (a3 && (v19[3] & 1) == 0)
  {
    *a3 = *(*(&buf + 1) + 40);
    v10 = *(v19 + 24);
  }

  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v18, 8);
  if (v22 == 1)
  {
    os_activity_scope_leave((&v23 + 8));
  }

  if (v23)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v23;
    if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v10 & 1;
}

void __47__PLAssetsdDemoClient_cleanupForStoreDemoMode___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDemoClient cleanupForStoreDemoMode:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __47__PLAssetsdDemoClient_cleanupForStoreDemoMode___block_invoke_15(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

- (void)cleanupForStoreDemoModeWithCompletion:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: cleanupForStoreDemoModeWithCompletion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v25 + 1);
    *(&v25 + 1) = v7;

    os_activity_scope_enter(v7, (&v26 + 8));
  }

  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PLAssetsdDemoClient.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v9 = [(PLAssetsdBaseClient *)self proxyFactory];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __61__PLAssetsdDemoClient_cleanupForStoreDemoModeWithCompletion___block_invoke;
  v23[3] = &unk_1E7932DA8;
  v24 = v5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3254779904;
  v16[2] = __61__PLAssetsdDemoClient_cleanupForStoreDemoModeWithCompletion___block_invoke_9;
  v16[3] = &unk_1F1F722F8;
  v18 = v25;
  v19 = *(&v25 + 1);
  v20 = v26;
  v21 = v27;
  v22 = a2;
  v10 = v24;
  v17 = v10;
  [v9 remoteObjectProxyWithErrorHandler:v23 handler:v16];

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(*(&v27 + 1));
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __61__PLAssetsdDemoClient_cleanupForStoreDemoModeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdDemoClient cleanupForStoreDemoModeWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __61__PLAssetsdDemoClient_cleanupForStoreDemoModeWithCompletion___block_invoke_9(uint64_t a1, void *a2)
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
  v11[2] = __61__PLAssetsdDemoClient_cleanupForStoreDemoModeWithCompletion___block_invoke_12;
  v11[3] = &unk_1E7932DD0;
  v12 = *(a1 + 32);
  [v3 cleanupForStoreDemoModeByStagingTemplateOrResettingLibrary:v11];
}

@end