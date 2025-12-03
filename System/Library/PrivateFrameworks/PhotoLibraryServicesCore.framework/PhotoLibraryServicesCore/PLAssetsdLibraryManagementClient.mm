@interface PLAssetsdLibraryManagementClient
- (BOOL)closeAndDeletePhotoLibraryAtURL:(id)l error:(id *)error;
- (BOOL)closePhotoLibraryAtURL:(id)l error:(id *)error;
- (BOOL)overrideSystemPhotoLibraryURL:(id)l error:(id *)error;
- (BOOL)removePhotoLibraryURL:(id)l error:(id *)error;
- (BOOL)resetSyndicationLibrary:(id *)library;
- (BOOL)setSystemPhotoLibraryURL:(id)l error:(id *)error;
- (id)createManagedPhotoLibraryWithOptions:(id)options error:(id *)error;
- (id)findPhotoLibraryIdentifiersMatchingSearchCriteria:(id)criteria error:(id *)error;
- (id)photoLibraryIdentifierForPhotoLibraryURL:(id)l error:(id *)error;
- (void)filesystemSizeForLibraryURL:(id)l result:(id)result;
- (void)getPhotoLibraryURLsWithLibraryURL:(id)l reply:(id)reply;
@end

@implementation PLAssetsdLibraryManagementClient

- (id)createManagedPhotoLibraryWithOptions:(id)options error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v39) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: createManagedPhotoLibraryWithOptions:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v39 + 1);
    *(&v39 + 1) = v9;

    os_activity_scope_enter(v9, (&v40 + 8));
  }

  v11 = PLRequestGetLog();
  *(&v41 + 1) = a2;
  v12 = os_signpost_id_generate(v11);
  *&v40 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(*(&v41 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__5492;
  v45 = __Block_byref_object_dispose__5493;
  v46 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__5492;
  v37 = __Block_byref_object_dispose__5493;
  v38 = 0;
  v16 = [optionsCopy objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsBundleURLKey"];
  v17 = [optionsCopy objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsTestOptionsKey"];
  v18 = [v17 objectForKey:@"PLInternalTestOptionsPhotoLibraryDomainRootURLKey"];

  v19 = v16;
  if (v16 || (v19 = v18) != 0)
  {
    v20 = [PLXPCLibraryToken clientToServiceSandboxExtensionForURL:v19];
  }

  else
  {
    v20 = 0;
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __79__PLAssetsdLibraryManagementClient_createManagedPhotoLibraryWithOptions_error___block_invoke;
  v32[3] = &unk_1E7932770;
  v32[4] = &buf;
  v22 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v32];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __79__PLAssetsdLibraryManagementClient_createManagedPhotoLibraryWithOptions_error___block_invoke_20;
  v31[3] = &unk_1E7932680;
  v31[4] = &v33;
  v31[5] = &buf;
  [v22 createManagedPhotoLibraryWithOptions:optionsCopy sandboxExtension:v20 reply:v31];

  v23 = v34[5];
  v24 = *(*(&buf + 1) + 40);
  if (!v23 && error)
  {
    v24 = v24;
    *error = v24;
  }

  v25 = v34[5];
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&buf, 8);
  if (v39 == 1)
  {
    os_activity_scope_leave((&v40 + 8));
  }

  if (v40)
  {
    v26 = PLRequestGetLog();
    v27 = v26;
    v28 = v40;
    if ((v40 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      v29 = sel_getName(*(&v41 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v29;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v27, OS_SIGNPOST_INTERVAL_END, v28, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v25;
}

void __79__PLAssetsdLibraryManagementClient_createManagedPhotoLibraryWithOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdLibraryManagementClient createManagedPhotoLibraryWithOptions:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __79__PLAssetsdLibraryManagementClient_createManagedPhotoLibraryWithOptions_error___block_invoke_20(uint64_t a1, void *a2, void *a3)
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

- (id)findPhotoLibraryIdentifiersMatchingSearchCriteria:(id)criteria error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  criteriaCopy = criteria;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v34) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: findPhotoLibraryIdentifiersMatchingSearchCriteria:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v34 + 1);
    *(&v34 + 1) = v9;

    os_activity_scope_enter(v9, (&v35 + 8));
  }

  v11 = PLRequestGetLog();
  *(&v36 + 1) = a2;
  v12 = os_signpost_id_generate(v11);
  *&v35 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(*(&v36 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__5492;
  v40 = __Block_byref_object_dispose__5493;
  v41 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__5492;
  v32 = __Block_byref_object_dispose__5493;
  v33 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __92__PLAssetsdLibraryManagementClient_findPhotoLibraryIdentifiersMatchingSearchCriteria_error___block_invoke;
  v27[3] = &unk_1E7932770;
  v27[4] = &buf;
  v17 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v27];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __92__PLAssetsdLibraryManagementClient_findPhotoLibraryIdentifiersMatchingSearchCriteria_error___block_invoke_18;
  v26[3] = &unk_1E7931E38;
  v26[4] = &v28;
  v26[5] = &buf;
  [v17 findPhotoLibraryIdentifiersMatchingSearchCriteria:criteriaCopy reply:v26];

  v18 = v29[5];
  v19 = *(*(&buf + 1) + 40);
  if (!v18 && error)
  {
    v19 = v19;
    *error = v19;
  }

  v20 = v29[5];
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&buf, 8);
  if (v34 == 1)
  {
    os_activity_scope_leave((&v35 + 8));
  }

  if (v35)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v35;
    if ((v35 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v24 = sel_getName(*(&v36 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v24;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v20;
}

void __92__PLAssetsdLibraryManagementClient_findPhotoLibraryIdentifiersMatchingSearchCriteria_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdLibraryManagementClient findPhotoLibraryIdentifiersMatchingSearchCriteria:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __92__PLAssetsdLibraryManagementClient_findPhotoLibraryIdentifiersMatchingSearchCriteria_error___block_invoke_18(uint64_t a1, void *a2, void *a3)
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

- (id)photoLibraryIdentifierForPhotoLibraryURL:(id)l error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v39 = 0u;
  *sel = 0u;
  v38 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v38) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: photoLibraryIdentifierForPhotoLibraryURL:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
  v43 = __Block_byref_object_copy__5492;
  v44 = __Block_byref_object_dispose__5493;
  v45 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__5492;
  v36 = __Block_byref_object_dispose__5493;
  v37 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __83__PLAssetsdLibraryManagementClient_photoLibraryIdentifierForPhotoLibraryURL_error___block_invoke;
  v31[3] = &unk_1E7932770;
  v31[4] = &v32;
  v17 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v31];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __83__PLAssetsdLibraryManagementClient_photoLibraryIdentifierForPhotoLibraryURL_error___block_invoke_16;
  v27[3] = &unk_1E7931E60;
  p_buf = &buf;
  v18 = lCopy;
  v28 = v18;
  v30 = &v32;
  [v17 getPhotoLibraryIdentifierWithLibraryURL:v18 reply:v27];

  v19 = *(*(&buf + 1) + 40);
  v20 = v33[5];
  if (!v19 && error)
  {
    v20 = v20;
    *error = v20;
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

void __83__PLAssetsdLibraryManagementClient_photoLibraryIdentifierForPhotoLibraryURL_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdLibraryManagementClient photoLibraryIdentifierForPhotoLibraryURL:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __83__PLAssetsdLibraryManagementClient_photoLibraryIdentifierForPhotoLibraryURL_error___block_invoke_16(void *a1, void *a2, void *a3)
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

- (void)filesystemSizeForLibraryURL:(id)l result:(id)result
{
  v52 = *MEMORY[0x1E69E9840];
  lCopy = l;
  resultCopy = result;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v44) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: filesystemSizeForLibraryURL:result:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v44 + 1);
    *(&v44 + 1) = v10;

    os_activity_scope_enter(v10, (&v45 + 8));
  }

  v12 = PLRequestGetLog();
  *(&v46 + 1) = a2;
  v13 = os_signpost_id_generate(v12);
  *&v45 = v13;
  v14 = v12;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    Name = sel_getName(*(&v46 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__5492;
  v50 = __Block_byref_object_dispose__5493;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __71__PLAssetsdLibraryManagementClient_filesystemSizeForLibraryURL_result___block_invoke;
  v25[3] = &unk_1E7932608;
  v18 = lCopy;
  v26 = v18;
  p_buf = &buf;
  v19 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v25];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __71__PLAssetsdLibraryManagementClient_filesystemSizeForLibraryURL_result___block_invoke_14;
  v24[3] = &unk_1E7930770;
  v24[4] = &buf;
  v24[5] = &v40;
  v24[6] = &v36;
  v24[7] = &v32;
  v24[8] = &v28;
  [v19 filesystemSizeForLibraryURL:v18 reply:v24];

  resultCopy[2](resultCopy, v41[3], v37[3], v33[3], v29[3], *(*(&buf + 1) + 40));
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&buf, 8);

  if (v44 == 1)
  {
    os_activity_scope_leave((&v45 + 8));
  }

  if (v45)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v45;
    if ((v45 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v23 = sel_getName(*(&v46 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v23;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }
}

void __71__PLAssetsdLibraryManagementClient_filesystemSizeForLibraryURL_result___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting filesystem size for libraryURL %@", &v8, 0xCu);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __71__PLAssetsdLibraryManagementClient_filesystemSizeForLibraryURL_result___block_invoke_14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = a6;
  if (v12)
  {
    v13 = v12;
    objc_storeStrong((*(a1[4] + 8) + 40), a6);
    v12 = v13;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a2;
    *(*(a1[6] + 8) + 24) = a3;
    *(*(a1[7] + 8) + 24) = a4;
    *(*(a1[8] + 8) + 24) = a5;
  }
}

- (BOOL)resetSyndicationLibrary:(id *)library
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: resetSyndicationLibrary:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v25 + 1);
    *(&v25 + 1) = v7;

    os_activity_scope_enter(v7, (&v26 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  *&v26 = v10;
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5492;
  v31 = __Block_byref_object_dispose__5493;
  v32 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __60__PLAssetsdLibraryManagementClient_resetSyndicationLibrary___block_invoke;
  v24[3] = &unk_1E7932770;
  v24[4] = &buf;
  v15 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v24];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __60__PLAssetsdLibraryManagementClient_resetSyndicationLibrary___block_invoke_2;
  v23[3] = &unk_1E7932980;
  v23[4] = &buf;
  [v15 resetSyndicationLibraryWithReply:v23];

  v16 = *(*(&buf + 1) + 40);
  if (v16 && library)
  {
    v17 = v16;
    *library = v16;
  }

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

  return v16 == 0;
}

void __60__PLAssetsdLibraryManagementClient_resetSyndicationLibrary___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

- (void)getPhotoLibraryURLsWithLibraryURL:(id)l reply:(id)reply
{
  v39 = *MEMORY[0x1E69E9840];
  lCopy = l;
  replyCopy = reply;
  v35 = 0u;
  *sel = 0u;
  v34 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v34) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getPhotoLibraryURLsWithLibraryURL:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v34 + 1);
    *(&v34 + 1) = v10;

    os_activity_scope_enter(v10, (&v35 + 8));
  }

  v12 = PLRequestGetLog();
  sel[1] = a2;
  v13 = os_signpost_id_generate(v12);
  *&v35 = v13;
  v14 = v12;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v38 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __76__PLAssetsdLibraryManagementClient_getPhotoLibraryURLsWithLibraryURL_reply___block_invoke;
  v32[3] = &unk_1E7932DA8;
  v33 = replyCopy;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3254779904;
  v24[2] = __76__PLAssetsdLibraryManagementClient_getPhotoLibraryURLsWithLibraryURL_reply___block_invoke_10;
  v24[3] = &unk_1F1F72A40;
  v27 = v34;
  v28 = *(&v34 + 1);
  v29 = v35;
  v30 = *sel;
  v31 = a2;
  v18 = lCopy;
  v25 = v18;
  v19 = v33;
  v26 = v19;
  [proxyFactory remoteObjectProxyWithErrorHandler:v32 handler:v24];

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
      *buf = 136446210;
      v38 = v23;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __76__PLAssetsdLibraryManagementClient_getPhotoLibraryURLsWithLibraryURL_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdLibraryManagementClient getPhotoLibraryURLsWithLibraryURL:reply:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __76__PLAssetsdLibraryManagementClient_getPhotoLibraryURLsWithLibraryURL_reply___block_invoke_10(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 getPhotoLibraryURLsWithLibraryURL:*(a1 + 32) reply:*(a1 + 40)];
}

- (BOOL)overrideSystemPhotoLibraryURL:(id)l error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v30 = 0u;
  *sel = 0u;
  v29 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: overrideSystemPhotoLibraryURL:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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

  if (lCopy)
  {
    v16 = 1;
  }

  else
  {
    v16 = 3;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__5492;
  v35 = __Block_byref_object_dispose__5493;
  v36 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __72__PLAssetsdLibraryManagementClient_overrideSystemPhotoLibraryURL_error___block_invoke;
  v28[3] = &unk_1E7932770;
  v28[4] = &buf;
  v18 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v28];
  v19 = [PLXPCLibraryToken clientToServiceSandboxExtensionForURL:lCopy];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __72__PLAssetsdLibraryManagementClient_overrideSystemPhotoLibraryURL_error___block_invoke_2;
  v27[3] = &unk_1E7932770;
  v27[4] = &buf;
  [v18 setSystemPhotoLibraryURL:lCopy sandboxExtension:v19 options:v16 reply:v27];

  v20 = *(*(&buf + 1) + 40);
  if (error && v20)
  {
    v21 = v20;
    *error = v20;
    v20 = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&buf, 8);

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v22 = PLRequestGetLog();
    v23 = v22;
    v24 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v25 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v25;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v20 == 0;
}

- (BOOL)closePhotoLibraryAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5492;
  v17 = __Block_byref_object_dispose__5493;
  v18 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PLAssetsdLibraryManagementClient_closePhotoLibraryAtURL_error___block_invoke;
  v12[3] = &unk_1E7932360;
  v12[4] = &v19;
  v12[5] = &v13;
  v8 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__PLAssetsdLibraryManagementClient_closePhotoLibraryAtURL_error___block_invoke_2;
  v11[3] = &unk_1E7932E48;
  v11[4] = &v19;
  v11[5] = &v13;
  [v8 closePhotoLibraryAtURL:lCopy reply:v11];

  v9 = *(v20 + 24);
  if (error && (v20[3] & 1) == 0)
  {
    *error = v14[5];
    v9 = *(v20 + 24);
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v9 & 1;
}

void __65__PLAssetsdLibraryManagementClient_closePhotoLibraryAtURL_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 code] == 4099 && (objc_msgSend(v6, "domain"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E696A250]), v4, v5))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __65__PLAssetsdLibraryManagementClient_closePhotoLibraryAtURL_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    goto LABEL_2;
  }

  if ([v5 code] == 41026)
  {
    v8 = [v6 domain];
    v9 = [v8 isEqualToString:@"com.apple.photos.error"];

    if (v9)
    {
      NSLog(@"Ignoring filesystem deletion error (probably files still in use by photoanalysisd): %@", v6);

      v6 = 0;
LABEL_2:
      v7 = 1;
      goto LABEL_7;
    }
  }

  v7 = 0;
LABEL_7:
  *(*(*(a1 + 32) + 8) + 24) = v7;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (BOOL)closeAndDeletePhotoLibraryAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5492;
  v18 = __Block_byref_object_dispose__5493;
  v19 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PLAssetsdLibraryManagementClient_closeAndDeletePhotoLibraryAtURL_error___block_invoke;
  v13[3] = &unk_1E7932360;
  v13[4] = &v20;
  v13[5] = &v14;
  v8 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v13];
  v9 = [PLXPCLibraryToken clientToServiceSandboxExtensionForURL:lCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__PLAssetsdLibraryManagementClient_closeAndDeletePhotoLibraryAtURL_error___block_invoke_2;
  v12[3] = &unk_1E7932E48;
  v12[4] = &v20;
  v12[5] = &v14;
  [v8 closeAndDeletePhotoLibraryAtURL:lCopy sandboxExtension:v9 reply:v12];

  v10 = *(v21 + 24);
  if (error && (v21[3] & 1) == 0)
  {
    *error = v15[5];
    v10 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10 & 1;
}

void __74__PLAssetsdLibraryManagementClient_closeAndDeletePhotoLibraryAtURL_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 code] == 4099 && (objc_msgSend(v6, "domain"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E696A250]), v4, v5))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (BOOL)removePhotoLibraryURL:(id)l error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v29 = 0u;
  *sel = 0u;
  v28 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v28) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: removePhotoLibraryURL:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v28 + 1);
    *(&v28 + 1) = v9;

    os_activity_scope_enter(v9, (&v29 + 8));
  }

  v11 = PLRequestGetLog();
  sel[1] = a2;
  v12 = os_signpost_id_generate(v11);
  *&v29 = v12;
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
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__5492;
  v34 = __Block_byref_object_dispose__5493;
  v35 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __64__PLAssetsdLibraryManagementClient_removePhotoLibraryURL_error___block_invoke;
  v27[3] = &unk_1E7932770;
  v27[4] = &buf;
  v17 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v27];
  v18 = [PLXPCLibraryToken clientToServiceSandboxExtensionForURL:lCopy];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __64__PLAssetsdLibraryManagementClient_removePhotoLibraryURL_error___block_invoke_2;
  v26[3] = &unk_1E7932770;
  v26[4] = &buf;
  [v17 setSystemPhotoLibraryURL:lCopy sandboxExtension:v18 options:2 reply:v26];

  v19 = *(*(&buf + 1) + 40);
  if (error && v19)
  {
    v20 = v19;
    *error = v19;
    v19 = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&buf, 8);

  if (v28 == 1)
  {
    os_activity_scope_leave((&v29 + 8));
  }

  if (v29)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v29;
    if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v24 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v24;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v19 == 0;
}

- (BOOL)setSystemPhotoLibraryURL:(id)l error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v29 = 0u;
  *sel = 0u;
  v28 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v28) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: setSystemPhotoLibraryURL:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v28 + 1);
    *(&v28 + 1) = v9;

    os_activity_scope_enter(v9, (&v29 + 8));
  }

  v11 = PLRequestGetLog();
  sel[1] = a2;
  v12 = os_signpost_id_generate(v11);
  *&v29 = v12;
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
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__5492;
  v34 = __Block_byref_object_dispose__5493;
  v35 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__PLAssetsdLibraryManagementClient_setSystemPhotoLibraryURL_error___block_invoke;
  v27[3] = &unk_1E7932770;
  v27[4] = &buf;
  v17 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v27];
  v18 = [PLXPCLibraryToken clientToServiceSandboxExtensionForURL:lCopy];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __67__PLAssetsdLibraryManagementClient_setSystemPhotoLibraryURL_error___block_invoke_2;
  v26[3] = &unk_1E7932770;
  v26[4] = &buf;
  [v17 setSystemPhotoLibraryURL:lCopy sandboxExtension:v18 options:2 * (lCopy == 0) reply:v26];

  v19 = *(*(&buf + 1) + 40);
  if (error && v19)
  {
    v20 = v19;
    *error = v19;
    v19 = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&buf, 8);

  if (v28 == 1)
  {
    os_activity_scope_leave((&v29 + 8));
  }

  if (v29)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v29;
    if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v24 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v24;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v19 == 0;
}

@end