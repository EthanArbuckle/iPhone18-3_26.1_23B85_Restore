@interface PLAssetsdSyncClient
- (void)finalizeOTARestoreRecreatingAlbums:(BOOL)albums;
- (void)updateRestoredAssetWithUUID:(id)d paths:(id)paths fixAddedDate:(BOOL)date;
@end

@implementation PLAssetsdSyncClient

- (void)updateRestoredAssetWithUUID:(id)d paths:(id)paths fixAddedDate:(BOOL)date
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  pathsCopy = paths;
  v31 = 0u;
  *sel = 0u;
  v30 = 0u;
  v11 = +[PLXPCMessageLogger enabled];
  LOBYTE(v30) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: updateRestoredAssetWithUUID:paths:fixAddedDate:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v30 + 1);
    *(&v30 + 1) = v12;

    os_activity_scope_enter(v12, (&v31 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3254779904;
  v21[2] = __70__PLAssetsdSyncClient_updateRestoredAssetWithUUID_paths_fixAddedDate___block_invoke_7;
  v21[3] = &unk_1F1F72928;
  v24 = v30;
  v25 = *(&v30 + 1);
  v26 = v31;
  v27 = *sel;
  v28 = a2;
  v15 = dCopy;
  v22 = v15;
  v16 = pathsCopy;
  v23 = v16;
  dateCopy = date;
  [proxyFactory remoteObjectProxyWithErrorHandler:&__block_literal_global_6_1078 handler:v21];

  if (v30 == 1)
  {
    os_activity_scope_leave((&v31 + 8));
  }

  if (v31)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v31;
    if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v34 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __70__PLAssetsdSyncClient_updateRestoredAssetWithUUID_paths_fixAddedDate___block_invoke_7(uint64_t a1, void *a2)
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

  [v3 updateRestoredAssetWithUUID:*(a1 + 32) paths:*(a1 + 40) fixAddedDate:*(a1 + 104)];
}

void __70__PLAssetsdSyncClient_updateRestoredAssetWithUUID_paths_fixAddedDate___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdSyncClient updateRestoredAssetWithUUID:paths:fixAddedDate:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)finalizeOTARestoreRecreatingAlbums:(BOOL)albums
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v21) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: finalizeOTARestoreRecreatingAlbums:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v21 + 1);
    *(&v21 + 1) = v7;

    os_activity_scope_enter(v7, (&v22 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3254779904;
  v14[2] = __58__PLAssetsdSyncClient_finalizeOTARestoreRecreatingAlbums___block_invoke_1;
  v14[3] = &__block_descriptor_89_e8_32n18_8_8_t0w1_s8_t16w32_e40_v16__0___PLAssetsdSyncServiceProtocol__8l;
  v15 = v21;
  v16 = *(&v21 + 1);
  v17 = v22;
  v18 = *sel;
  v19 = a2;
  albumsCopy = albums;
  [proxyFactory remoteObjectProxyWithErrorHandler:&__block_literal_global_1091 handler:v14];

  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v10 = PLRequestGetLog();
    v11 = v10;
    v12 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v25 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v11, OS_SIGNPOST_INTERVAL_END, v12, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __58__PLAssetsdSyncClient_finalizeOTARestoreRecreatingAlbums___block_invoke_1(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 32) == 1)
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
      v10 = NSStringFromSelector(*(a1 + 80));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 finalizeOTARestoreRecreatingAlbums:*(a1 + 88)];
}

void __58__PLAssetsdSyncClient_finalizeOTARestoreRecreatingAlbums___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdSyncClient finalizeOTARestoreRecreatingAlbums:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

@end