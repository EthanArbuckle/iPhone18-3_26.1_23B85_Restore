@interface PLAssetsdNonBindingDebugClient
- (BOOL)getPhotosXPCEndpoint:(id *)a3 error:(id *)a4;
- (id)activePhotoLibraries:(id *)a3;
- (id)allKnownLibraryPaths:(id *)a3;
- (id)boundServicesForLibrary:(id)a3 error:(id *)a4;
- (id)existingPhotoLibraryIdentifierForPhotoLibraryURL:(id)a3 error:(id *)a4;
- (id)getStatus;
- (void)libraryServicesStateByBundlePathWithCompletion:(id)a3;
- (void)testAddressSanitizer;
- (void)testThreadSanitizer;
@end

@implementation PLAssetsdNonBindingDebugClient

- (void)testThreadSanitizer
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v15) = v4;
  if (v4)
  {
    *(&v15 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: testThreadSanitizer", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v15 + 1), (&v16 + 8));
  }

  v5 = PLRequestGetLog();
  sel[1] = a2;
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v19 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v10 = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_26];
  [v11 testThreadSanitizer];

  if (v15 == 1)
  {
    os_activity_scope_leave((&v16 + 8));
  }

  if (v6)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v14 = sel_getName(sel[1]);
      *buf = 136446210;
      v19 = v14;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_END, v6, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __53__PLAssetsdNonBindingDebugClient_testThreadSanitizer__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdNonBindingDebugClient testThreadSanitizer]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)testAddressSanitizer
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v15) = v4;
  if (v4)
  {
    *(&v15 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: testAddressSanitizer", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v15 + 1), (&v16 + 8));
  }

  v5 = PLRequestGetLog();
  sel[1] = a2;
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v19 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v10 = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_24_8932];
  [v11 testAddressSanitizer];

  if (v15 == 1)
  {
    os_activity_scope_leave((&v16 + 8));
  }

  if (v6)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v14 = sel_getName(sel[1]);
      *buf = 136446210;
      v19 = v14;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_END, v6, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __54__PLAssetsdNonBindingDebugClient_testAddressSanitizer__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdNonBindingDebugClient testAddressSanitizer]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)libraryServicesStateByBundlePathWithCompletion:(id)a3
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
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: libraryServicesStateByBundlePathWithCompletion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v25 + 1);
    *(&v25 + 1) = v7;

    os_activity_scope_enter(v7, (&v26 + 8));
  }

  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PLAssetsdNonBindingDebugClient.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v9 = [(PLAssetsdBaseClient *)self proxyFactory];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __81__PLAssetsdNonBindingDebugClient_libraryServicesStateByBundlePathWithCompletion___block_invoke;
  v23[3] = &unk_1E7932DA8;
  v24 = v5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3254779904;
  v16[2] = __81__PLAssetsdNonBindingDebugClient_libraryServicesStateByBundlePathWithCompletion___block_invoke_17;
  v16[3] = &unk_1F1F74A70;
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

void __81__PLAssetsdNonBindingDebugClient_libraryServicesStateByBundlePathWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdNonBindingDebugClient libraryServicesStateByBundlePathWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __81__PLAssetsdNonBindingDebugClient_libraryServicesStateByBundlePathWithCompletion___block_invoke_17(uint64_t a1, void *a2)
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
  v11[2] = __81__PLAssetsdNonBindingDebugClient_libraryServicesStateByBundlePathWithCompletion___block_invoke_20;
  v11[3] = &unk_1E7932958;
  v12 = *(a1 + 32);
  [v3 getLibraryServicesStateByLibraryBundleWithReply:v11];
}

- (id)getStatus
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v21) = v4;
  if (v4)
  {
    v5 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getStatus", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v21 + 1);
    *(&v21 + 1) = v5;

    os_activity_scope_enter(v5, (&v22 + 8));
  }

  v7 = PLRequestGetLog();
  sel[1] = a2;
  v8 = os_signpost_id_generate(v7);
  *&v22 = v8;
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
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__8959;
  v27 = __Block_byref_object_dispose__8960;
  v28 = 0;
  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_8961];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __43__PLAssetsdNonBindingDebugClient_getStatus__block_invoke_7;
  v20[3] = &unk_1E7931EB0;
  v20[4] = &buf;
  [v13 statusWithReply:v20];

  v14 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v18 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v18;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __43__PLAssetsdNonBindingDebugClient_getStatus__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdNonBindingDebugClient getStatus]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)getPhotosXPCEndpoint:(id *)a3 error:(id *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  *sel = 0u;
  v37 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v37) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getPhotosXPCEndpoint:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v37 + 1);
    *(&v37 + 1) = v9;

    os_activity_scope_enter(v9, (&v38 + 8));
  }

  v11 = PLRequestGetLog();
  sel[1] = a2;
  v12 = os_signpost_id_generate(v11);
  *&v38 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__8959;
  v43 = __Block_byref_object_dispose__8960;
  v44 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__8959;
  v31 = __Block_byref_object_dispose__8960;
  v32 = 0;
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __61__PLAssetsdNonBindingDebugClient_getPhotosXPCEndpoint_error___block_invoke;
  v26[3] = &unk_1E7932770;
  v26[4] = &buf;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __61__PLAssetsdNonBindingDebugClient_getPhotosXPCEndpoint_error___block_invoke_5;
  v25[3] = &unk_1E7931E88;
  v25[4] = &v33;
  v25[5] = &v27;
  v25[6] = &buf;
  [v17 getPhotosXPCEndpointWithReply:v25];

  if (!a4 || (v18 = *(*(&buf + 1) + 40)) == 0)
  {
    v18 = v28[5];
    a4 = a3;
  }

  *a4 = v18;
  v19 = *(v34 + 24);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v33, 8);
  if (v37 == 1)
  {
    os_activity_scope_leave((&v38 + 8));
  }

  if (v38)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v38;
    if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v23 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v23;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v19;
}

void __61__PLAssetsdNonBindingDebugClient_getPhotosXPCEndpoint_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdNonBindingDebugClient getPhotosXPCEndpoint:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __61__PLAssetsdNonBindingDebugClient_getPhotosXPCEndpoint_error___block_invoke_5(void *a1, int a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (a2)
  {
    *(*(a1[4] + 8) + 24) = 1;
    v9 = [a3 _endpoint];
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1AA9BD000, v12, OS_LOG_TYPE_ERROR, "Error getting photos XPC endpoint: %@", &v13, 0xCu);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a4);
  }
}

- (id)existingPhotoLibraryIdentifierForPhotoLibraryURL:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v39 = 0u;
  *sel = 0u;
  v38 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v38) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: existingPhotoLibraryIdentifierForPhotoLibraryURL:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v38 + 1);
    *(&v38 + 1) = v9;

    os_activity_scope_enter(v9, (&v39 + 8));
  }

  v11 = PLRequestGetLog();
  sel[1] = a2;
  v12 = os_signpost_id_generate(v11);
  *&v39 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__8959;
  v44 = __Block_byref_object_dispose__8960;
  v45 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__8959;
  v36 = __Block_byref_object_dispose__8960;
  v37 = 0;
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __89__PLAssetsdNonBindingDebugClient_existingPhotoLibraryIdentifierForPhotoLibraryURL_error___block_invoke;
  v31[3] = &unk_1E7932770;
  v31[4] = &v32;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v31];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __89__PLAssetsdNonBindingDebugClient_existingPhotoLibraryIdentifierForPhotoLibraryURL_error___block_invoke_3;
  v27[3] = &unk_1E7931E60;
  p_buf = &buf;
  v18 = v7;
  v28 = v18;
  v30 = &v32;
  [v17 getExistingPhotoLibraryIdentifierWithLibraryURL:v18 reply:v27];

  v19 = *(*(&buf + 1) + 40);
  v20 = v33[5];
  if (!v19 && a4)
  {
    v20 = v20;
    *a4 = v20;
  }

  v21 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&buf, 8);
  if (v38 == 1)
  {
    os_activity_scope_leave((&v39 + 8));
  }

  if (v39)
  {
    v22 = PLRequestGetLog();
    v23 = v22;
    v24 = v39;
    if ((v39 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v25 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v25;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v21;
}

void __89__PLAssetsdNonBindingDebugClient_existingPhotoLibraryIdentifierForPhotoLibraryURL_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdNonBindingDebugClient existingPhotoLibraryIdentifierForPhotoLibraryURL:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __89__PLAssetsdNonBindingDebugClient_existingPhotoLibraryIdentifierForPhotoLibraryURL_error___block_invoke_3(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  if (!*(*(a1[5] + 8) + 40))
  {
    v8 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_ERROR, "Error getting photo library identifier for url %@: %@", &v10, 0x16u);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a3);
  }
}

- (id)boundServicesForLibrary:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v33) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: boundServicesForLibrary:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v33 + 1);
    *(&v33 + 1) = v9;

    os_activity_scope_enter(v9, (&v34 + 8));
  }

  v11 = PLRequestGetLog();
  *(&v35 + 1) = a2;
  v12 = os_signpost_id_generate(v11);
  *&v34 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(*(&v35 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__8959;
  v39 = __Block_byref_object_dispose__8960;
  v40 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__8959;
  v31 = __Block_byref_object_dispose__8960;
  v32 = 0;
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __64__PLAssetsdNonBindingDebugClient_boundServicesForLibrary_error___block_invoke;
  v26[3] = &unk_1E7932770;
  v26[4] = &buf;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __64__PLAssetsdNonBindingDebugClient_boundServicesForLibrary_error___block_invoke_2;
  v25[3] = &unk_1E7931E38;
  v25[4] = &v27;
  v25[5] = &buf;
  [v17 getBoundServicesForLibrary:v7 reply:v25];

  if (a4)
  {
    v18 = *(*(&buf + 1) + 40);
    if (v18)
    {
      *a4 = v18;
    }
  }

  v19 = v28[5];
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&buf, 8);
  if (v33 == 1)
  {
    os_activity_scope_leave((&v34 + 8));
  }

  if (v34)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v34;
    if ((v34 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v23 = sel_getName(*(&v35 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v23;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v19;
}

void __64__PLAssetsdNonBindingDebugClient_boundServicesForLibrary_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)allKnownLibraryPaths:(id *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v31) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: allKnownLibraryPaths:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v31 + 1);
    *(&v31 + 1) = v7;

    os_activity_scope_enter(v7, (&v32 + 8));
  }

  v9 = PLRequestGetLog();
  *(&v33 + 1) = a2;
  v10 = os_signpost_id_generate(v9);
  *&v32 = v10;
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    Name = sel_getName(*(&v33 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__8959;
  v37 = __Block_byref_object_dispose__8960;
  v38 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__8959;
  v29 = __Block_byref_object_dispose__8960;
  v30 = 0;
  v14 = [(PLAssetsdBaseClient *)self proxyFactory];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __55__PLAssetsdNonBindingDebugClient_allKnownLibraryPaths___block_invoke;
  v24[3] = &unk_1E7932770;
  v24[4] = &buf;
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v24];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __55__PLAssetsdNonBindingDebugClient_allKnownLibraryPaths___block_invoke_2;
  v23[3] = &unk_1E7931E10;
  v23[4] = &v25;
  v23[5] = &buf;
  [v15 getAllKnownLibraryPathsWithReply:v23];

  if (a3)
  {
    v16 = *(*(&buf + 1) + 40);
    if (v16)
    {
      *a3 = v16;
    }
  }

  v17 = v26[5];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&buf, 8);
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
      v21 = sel_getName(*(&v33 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v21;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v17;
}

void __55__PLAssetsdNonBindingDebugClient_allKnownLibraryPaths___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)activePhotoLibraries:(id *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v31) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: activePhotoLibraries:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v31 + 1);
    *(&v31 + 1) = v7;

    os_activity_scope_enter(v7, (&v32 + 8));
  }

  v9 = PLRequestGetLog();
  *(&v33 + 1) = a2;
  v10 = os_signpost_id_generate(v9);
  *&v32 = v10;
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    Name = sel_getName(*(&v33 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__8959;
  v37 = __Block_byref_object_dispose__8960;
  v38 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__8959;
  v29 = __Block_byref_object_dispose__8960;
  v30 = 0;
  v14 = [(PLAssetsdBaseClient *)self proxyFactory];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __55__PLAssetsdNonBindingDebugClient_activePhotoLibraries___block_invoke;
  v24[3] = &unk_1E7932770;
  v24[4] = &buf;
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v24];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __55__PLAssetsdNonBindingDebugClient_activePhotoLibraries___block_invoke_2;
  v23[3] = &unk_1E7931E10;
  v23[4] = &v25;
  v23[5] = &buf;
  [v15 getActivePhotoLibrariesWithReply:v23];

  if (a3)
  {
    v16 = *(*(&buf + 1) + 40);
    if (v16)
    {
      *a3 = v16;
    }
  }

  v17 = v26[5];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&buf, 8);
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
      v21 = sel_getName(*(&v33 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v21;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v17;
}

void __55__PLAssetsdNonBindingDebugClient_activePhotoLibraries___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

@end