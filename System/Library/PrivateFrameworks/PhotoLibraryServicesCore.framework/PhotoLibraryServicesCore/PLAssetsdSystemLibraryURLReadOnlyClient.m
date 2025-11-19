@interface PLAssetsdSystemLibraryURLReadOnlyClient
- (id)systemPhotoLibraryURLWithError:(id *)a3;
@end

@implementation PLAssetsdSystemLibraryURLReadOnlyClient

- (id)systemPhotoLibraryURLWithError:(id *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v31) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: systemPhotoLibraryURLWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
  v36 = __Block_byref_object_copy__11779;
  v37 = __Block_byref_object_dispose__11780;
  v38 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__11779;
  v29 = __Block_byref_object_dispose__11780;
  v30 = 0;
  v14 = [(PLAssetsdBaseClient *)self proxyFactory];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __74__PLAssetsdSystemLibraryURLReadOnlyClient_systemPhotoLibraryURLWithError___block_invoke;
  v24[3] = &unk_1E7932770;
  v24[4] = &v25;
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v24];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __74__PLAssetsdSystemLibraryURLReadOnlyClient_systemPhotoLibraryURLWithError___block_invoke_2;
  v23[3] = &unk_1E7932680;
  v23[4] = &buf;
  v23[5] = &v25;
  [v15 systemPhotoLibraryURL:v23];

  if (a3)
  {
    v16 = v26[5];
    if (v16)
    {
      *a3 = v16;
    }
  }

  v17 = *(*(&buf + 1) + 40);
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

void __74__PLAssetsdSystemLibraryURLReadOnlyClient_systemPhotoLibraryURLWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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