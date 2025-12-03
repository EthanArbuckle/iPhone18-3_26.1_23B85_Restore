@interface PLAssetsdLibraryClient
- (BOOL)_consumeSandboxExtensions:(id)extensions;
- (BOOL)isLibraryReadyForImportWithError:(id *)error;
- (BOOL)isOpen;
- (BOOL)openApplicationOwnedFoldersWithError:(id *)error;
- (BOOL)openPhotoLibraryDatabaseWithPostOpenProgress:(id *)progress options:(id)options error:(id *)error;
- (BOOL)openPhotoLibraryDatabaseWithoutProgressIfNeededWithOptions:(id)options error:(id *)error;
- (BOOL)synchronouslyImportFileSystemAssetsForce:(BOOL)force withError:(id *)error;
- (BOOL)synchronouslyRepairSingletonObjectsWithError:(id *)error;
- (BOOL)synchronouslyUpdateThumbnailsForPhotos:(id)photos assignNewIndex:(BOOL)index forceRefresh:(BOOL)refresh error:(id *)error;
- (BOOL)validateOrRebuildPhotoLibraryDatabaseWithError:(id *)error;
- (id)_assetURIStringsForPhotos:(id)photos;
- (id)getPhotoLibraryStoreXPCListenerEndpoint;
- (id)importFileSystemAssetsForce:(BOOL)force withCompletionHandler:(id)handler;
- (id)proxyLockFileWithDatabasePath:(id)path error:(id *)error;
- (id)resetPersonsWithCompletionHandler:(id)handler;
- (id)resetSocialGroupsWithCompletionHandler:(id)handler;
- (id)transferAssetsWithUuids:(id)uuids fromLibraryURL:(id)l transferOptions:(id)options completionHandler:(id)handler;
- (id)transferPersonsWithUuids:(id)uuids fromLibraryURL:(id)l transferOptions:(id)options completionHandler:(id)handler;
- (id)upgradePhotoLibraryDatabaseWithOptions:(id)options completion:(id)completion;
- (int64_t)getCurrentModelVersion;
- (void)automaticallyDeleteEmptyAlbumWithObjectID:(id)d completionHandler:(id)handler;
- (void)launchAssetsd;
- (void)publishRemoteChangeEvent:(id)event delayedSaveActionsDetail:(id)detail completionHandler:(id)handler;
- (void)recoverFromCrashIfNeeded;
- (void)searchDonationProgressForTaskIDs:(id)ds completionHandler:(id)handler;
- (void)updateThumbnailsForPhotos:(id)photos assignNewIndex:(BOOL)index forceRefresh:(BOOL)refresh completionHandler:(id)handler;
@end

@implementation PLAssetsdLibraryClient

- (BOOL)_consumeSandboxExtensions:(id)extensions
{
  extensionsCopy = extensions;
  clientState = [(PLAssetsdBaseClient *)self clientState];
  v6 = [clientState consumeSandboxExtensions:extensionsCopy];

  return v6;
}

- (void)searchDonationProgressForTaskIDs:(id)ds completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  handlerCopy = handler;
  v28 = 0u;
  *sel = 0u;
  v27 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v27) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: searchDonationProgressForTaskIDs:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v27 + 1);
    *(&v27 + 1) = v9;

    os_activity_scope_enter(v9, (&v28 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __77__PLAssetsdLibraryClient_searchDonationProgressForTaskIDs_completionHandler___block_invoke;
  v26[3] = &unk_1E7932770;
  v26[4] = &buf;
  v12 = [proxyFactory remoteObjectProxyWithErrorHandler:v26];

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __77__PLAssetsdLibraryClient_searchDonationProgressForTaskIDs_completionHandler___block_invoke_2;
  v24 = &unk_1E792F878;
  v13 = handlerCopy;
  v25 = v13;
  [v12 searchDonationProgressForTaskIDs:dsCopy reply:&v21];
  if (v13 && !v12)
  {
    v14 = *(*(&buf + 1) + 40);
    if (!v14)
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.error" code:46502 userInfo:{v21, v22, v23, v24}];
      v16 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v15;

      v14 = *(*(&buf + 1) + 40);
    }

    (*(v13 + 2))(v13, 0, 0, 0, v14);
  }

  _Block_object_dispose(&buf, 8);
  if (v27 == 1)
  {
    os_activity_scope_leave((&v28 + 8));
  }

  if (v28)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v28;
    if ((v28 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }
}

uint64_t __77__PLAssetsdLibraryClient_searchDonationProgressForTaskIDs_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)proxyLockFileWithDatabasePath:(id)path error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v29 = 0u;
  *sel = 0u;
  v28 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v28) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: proxyLockFileWithDatabasePath:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v28 + 1);
    *(&v28 + 1) = v8;

    os_activity_scope_enter(v8, (&v29 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62__PLAssetsdLibraryClient_proxyLockFileWithDatabasePath_error___block_invoke;
  v21[3] = &unk_1E7932770;
  v21[4] = &v22;
  v11 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62__PLAssetsdLibraryClient_proxyLockFileWithDatabasePath_error___block_invoke_56;
  v20[3] = &unk_1E7931EB0;
  v20[4] = &buf;
  [v11 proxyLockFileWithDatabasePath:pathCopy reply:v20];

  v12 = *(*(&buf + 1) + 40);
  v13 = v23[5];
  if (!v12 && error)
  {
    v13 = v13;
    *error = v13;
  }

  v14 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&buf, 8);
  if (v28 == 1)
  {
    os_activity_scope_leave((&v29 + 8));
  }

  if (v29)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v29;
    if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __62__PLAssetsdLibraryClient_proxyLockFileWithDatabasePath_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdLibraryClient proxyLockFileWithDatabasePath:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)transferPersonsWithUuids:(id)uuids fromLibraryURL:(id)l transferOptions:(id)options completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  uuidsCopy = uuids;
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  v30 = 0u;
  *sel = 0u;
  v29 = 0u;
  v14 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v14;
  if (v14)
  {
    v15 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: transferPersonsWithUuids:fromLibraryURL:transferOptions:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v16 = *(&v29 + 1);
    *(&v29 + 1) = v15;

    os_activity_scope_enter(v15, (&v30 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __100__PLAssetsdLibraryClient_transferPersonsWithUuids_fromLibraryURL_transferOptions_completionHandler___block_invoke;
  v27[3] = &unk_1E7932DA8;
  v18 = handlerCopy;
  v28 = v18;
  v19 = [proxyFactory remoteObjectProxyWithErrorHandler:v27];

  v20 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:lCopy];
  v21 = [v19 transferPersonsWithUuids:uuidsCopy fromLibraryURL:v20 transferOptions:optionsCopy reply:v18];

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
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v21;
}

- (id)transferAssetsWithUuids:(id)uuids fromLibraryURL:(id)l transferOptions:(id)options completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  uuidsCopy = uuids;
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  v30 = 0u;
  *sel = 0u;
  v29 = 0u;
  v14 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v14;
  if (v14)
  {
    v15 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: transferAssetsWithUuids:fromLibraryURL:transferOptions:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v16 = *(&v29 + 1);
    *(&v29 + 1) = v15;

    os_activity_scope_enter(v15, (&v30 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __99__PLAssetsdLibraryClient_transferAssetsWithUuids_fromLibraryURL_transferOptions_completionHandler___block_invoke;
  v27[3] = &unk_1E7932DA8;
  v18 = handlerCopy;
  v28 = v18;
  v19 = [proxyFactory remoteObjectProxyWithErrorHandler:v27];

  v20 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:lCopy];
  v21 = [v19 transferAssetsWithUuids:uuidsCopy fromLibraryURL:v20 transferOptions:optionsCopy reply:v18];

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
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v21;
}

- (void)publishRemoteChangeEvent:(id)event delayedSaveActionsDetail:(id)detail completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  detailCopy = detail;
  handlerCopy = handler;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v12 = +[PLXPCMessageLogger enabled];
  LOBYTE(v34) = v12;
  if (v12)
  {
    v13 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: publishRemoteChangeEvent:delayedSaveActionsDetail:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v34 + 1);
    *(&v34 + 1) = v13;

    os_activity_scope_enter(v13, (&v35 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __94__PLAssetsdLibraryClient_publishRemoteChangeEvent_delayedSaveActionsDetail_completionHandler___block_invoke;
  v32[3] = &unk_1E7932DA8;
  v33 = handlerCopy;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3254779904;
  v23[2] = __94__PLAssetsdLibraryClient_publishRemoteChangeEvent_delayedSaveActionsDetail_completionHandler___block_invoke_2;
  v23[3] = &unk_1F1F72730;
  v27 = v34;
  v28 = *(&v34 + 1);
  v29 = v35;
  v30 = v36;
  v31 = a2;
  v16 = eventCopy;
  v24 = v16;
  v17 = detailCopy;
  v25 = v17;
  v18 = v33;
  v26 = v18;
  [proxyFactory remoteObjectProxyWithErrorHandler:v32 handler:v23];

  if (v34 == 1)
  {
    os_activity_scope_leave((&v35 + 8));
  }

  if (v35)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v35;
    if ((v35 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(*(&v36 + 1));
      *buf = 136446210;
      v38 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __94__PLAssetsdLibraryClient_publishRemoteChangeEvent_delayedSaveActionsDetail_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 56) == 1)
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
      v10 = NSStringFromSelector(*(a1 + 104));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 publishRemoteChangeEvent:*(a1 + 32) delayedSaveActionsDetail:*(a1 + 40) reply:*(a1 + 48)];
}

- (void)automaticallyDeleteEmptyAlbumWithObjectID:(id)d completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: automaticallyDeleteEmptyAlbumWithObjectID:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v29 + 1);
    *(&v29 + 1) = v10;

    os_activity_scope_enter(v10, (&v30 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __86__PLAssetsdLibraryClient_automaticallyDeleteEmptyAlbumWithObjectID_completionHandler___block_invoke;
  v27[3] = &unk_1E7932DA8;
  v28 = handlerCopy;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3254779904;
  v19[2] = __86__PLAssetsdLibraryClient_automaticallyDeleteEmptyAlbumWithObjectID_completionHandler___block_invoke_2;
  v19[3] = &unk_1F1F72B90;
  v22 = v29;
  v23 = *(&v29 + 1);
  v24 = v30;
  v25 = v31;
  v26 = a2;
  v13 = dCopy;
  v20 = v13;
  v14 = v28;
  v21 = v14;
  [proxyFactory remoteObjectProxyWithErrorHandler:v27 handler:v19];

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v31 + 1));
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __86__PLAssetsdLibraryClient_automaticallyDeleteEmptyAlbumWithObjectID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
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

  v11 = [*(a1 + 32) URIRepresentation];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__PLAssetsdLibraryClient_automaticallyDeleteEmptyAlbumWithObjectID_completionHandler___block_invoke_50;
  v12[3] = &unk_1E7932DD0;
  v13 = *(a1 + 40);
  [v3 automaticallyDeleteEmptyAlbumWithObjectURI:v11 reply:v12];
}

- (BOOL)synchronouslyUpdateThumbnailsForPhotos:(id)photos assignNewIndex:(BOOL)index forceRefresh:(BOOL)refresh error:(id *)error
{
  refreshCopy = refresh;
  indexCopy = index;
  v40 = *MEMORY[0x1E69E9840];
  photosCopy = photos;
  v33 = 0u;
  *sel = 0u;
  v32 = 0u;
  v12 = +[PLXPCMessageLogger enabled];
  LOBYTE(v32) = v12;
  if (v12)
  {
    v13 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: synchronouslyUpdateThumbnailsForPhotos:assignNewIndex:forceRefresh:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v32 + 1);
    *(&v32 + 1) = v13;

    os_activity_scope_enter(v13, (&v33 + 8));
  }

  v15 = PLRequestGetLog();
  sel[1] = a2;
  v16 = os_signpost_id_generate(v15);
  *&v33 = v16;
  v17 = v15;
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  v20 = [(PLAssetsdLibraryClient *)self _assetURIStringsForPhotos:photosCopy];
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __99__PLAssetsdLibraryClient_synchronouslyUpdateThumbnailsForPhotos_assignNewIndex_forceRefresh_error___block_invoke;
  v31[3] = &unk_1E7932770;
  v31[4] = &buf;
  v22 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v31];
  [v22 updateThumbnailsForPhotos:v20 assignNewIndex:indexCopy forceRefresh:refreshCopy reply:&__block_literal_global_49];

  v23 = *(&buf + 1);
  if (error)
  {
    v24 = *(*(&buf + 1) + 40);
    if (v24)
    {
      *error = v24;
      v23 = *(&buf + 1);
    }
  }

  v25 = *(v23 + 40);

  _Block_object_dispose(&buf, 8);
  if (v32 == 1)
  {
    os_activity_scope_leave((&v33 + 8));
  }

  if (v33)
  {
    v26 = PLRequestGetLog();
    v27 = v26;
    v28 = v33;
    if ((v33 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      v29 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v29;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v27, OS_SIGNPOST_INTERVAL_END, v28, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v25 == 0;
}

- (void)updateThumbnailsForPhotos:(id)photos assignNewIndex:(BOOL)index forceRefresh:(BOOL)refresh completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  photosCopy = photos;
  handlerCopy = handler;
  if ([photosCopy count])
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v13 = +[PLXPCMessageLogger enabled];
    LOBYTE(v35) = v13;
    if (v13)
    {
      v14 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: updateThumbnailsForPhotos:assignNewIndex:forceRefresh:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      v15 = *(&v35 + 1);
      *(&v35 + 1) = v14;

      os_activity_scope_enter(v14, (&v36 + 8));
    }

    v16 = [(PLAssetsdLibraryClient *)self _assetURIStringsForPhotos:photosCopy];
    proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __98__PLAssetsdLibraryClient_updateThumbnailsForPhotos_assignNewIndex_forceRefresh_completionHandler___block_invoke;
    v33[3] = &unk_1E7932DA8;
    v34 = handlerCopy;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3254779904;
    v23[2] = __98__PLAssetsdLibraryClient_updateThumbnailsForPhotos_assignNewIndex_forceRefresh_completionHandler___block_invoke_2;
    v23[3] = &unk_1F1F728F0;
    v26 = v35;
    v27 = *(&v35 + 1);
    v28 = v36;
    v29 = v37;
    v30 = a2;
    v18 = v16;
    v24 = v18;
    indexCopy = index;
    refreshCopy = refresh;
    v25 = v34;
    [proxyFactory remoteObjectProxyWithErrorHandler:v33 handler:v23];

    if (v35 == 1)
    {
      os_activity_scope_leave((&v36 + 8));
    }

    if (v36)
    {
      v19 = PLRequestGetLog();
      v20 = v19;
      v21 = v36;
      if ((v36 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        Name = sel_getName(*(&v37 + 1));
        *buf = 136446210;
        v39 = Name;
        _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
      }
    }
  }
}

uint64_t __98__PLAssetsdLibraryClient_updateThumbnailsForPhotos_assignNewIndex_forceRefresh_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __98__PLAssetsdLibraryClient_updateThumbnailsForPhotos_assignNewIndex_forceRefresh_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v18 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v19[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v17 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 104);
  v12 = *(a1 + 105);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__PLAssetsdLibraryClient_updateThumbnailsForPhotos_assignNewIndex_forceRefresh_completionHandler___block_invoke_46;
  v14[3] = &unk_1E79324A0;
  v13 = *(a1 + 32);
  v15 = *(a1 + 40);
  [v3 updateThumbnailsForPhotos:v13 assignNewIndex:v11 forceRefresh:v12 reply:v14];
}

- (id)_assetURIStringsForPhotos:(id)photos
{
  v3 = [photos valueForKey:@"objectID"];
  v4 = [v3 valueForKey:@"URIRepresentation"];
  v5 = [v4 valueForKey:@"absoluteString"];

  return v5;
}

- (BOOL)synchronouslyRepairSingletonObjectsWithError:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  *sel = 0u;
  v26 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v26) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: synchronouslyRepairSingletonObjectsWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v26 + 1);
    *(&v26 + 1) = v7;

    os_activity_scope_enter(v7, (&v27 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  *&v27 = v10;
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
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __71__PLAssetsdLibraryClient_synchronouslyRepairSingletonObjectsWithError___block_invoke;
  v25[3] = &unk_1E7932770;
  v25[4] = &buf;
  v15 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v25];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __71__PLAssetsdLibraryClient_synchronouslyRepairSingletonObjectsWithError___block_invoke_2;
  v24[3] = &unk_1E7932980;
  v24[4] = &buf;
  [v15 repairSingletonObjectsWithReply:v24];

  v16 = *(&buf + 1);
  if (error)
  {
    v17 = *(*(&buf + 1) + 40);
    if (v17)
    {
      *error = v17;
      v16 = *(&buf + 1);
    }
  }

  v18 = *(v16 + 40);
  _Block_object_dispose(&buf, 8);

  if (v26 == 1)
  {
    os_activity_scope_leave((&v27 + 8));
  }

  if (v27)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v27;
    if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v22 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v22;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v18 == 0;
}

void __71__PLAssetsdLibraryClient_synchronouslyRepairSingletonObjectsWithError___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

- (void)recoverFromCrashIfNeeded
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  *sel = 0u;
  v18 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v18) = v4;
  if (v4)
  {
    v5 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: recoverFromCrashIfNeeded", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v18 + 1);
    *(&v18 + 1) = v5;

    os_activity_scope_enter(v5, (&v19 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3254779904;
  v12[2] = __50__PLAssetsdLibraryClient_recoverFromCrashIfNeeded__block_invoke_2;
  v12[3] = &__block_descriptor_88_e8_32n18_8_8_t0w1_s8_t16w32_e43_v16__0___PLAssetsdLibraryServiceProtocol__8l;
  v13 = v18;
  v14 = *(&v18 + 1);
  v15 = v19;
  v16 = *sel;
  v17 = a2;
  [proxyFactory remoteObjectProxyWithErrorHandler:&__block_literal_global_34 handler:v12];

  if (v18 == 1)
  {
    os_activity_scope_leave((&v19 + 8));
  }

  if (v19)
  {
    v8 = PLRequestGetLog();
    v9 = v8;
    v10 = v19;
    if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v22 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_END, v10, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __50__PLAssetsdLibraryClient_recoverFromCrashIfNeeded__block_invoke_2(uint64_t a1, void *a2)
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

  [v3 recoverFromCrashIfNeeded];
}

- (id)importFileSystemAssetsForce:(BOOL)force withCompletionHandler:(id)handler
{
  forceCopy = force;
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v25 = 0u;
  *sel = 0u;
  v24 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v24) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: importFileSystemAssetsForce:withCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v24 + 1);
    *(&v24 + 1) = v8;

    os_activity_scope_enter(v8, (&v25 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __76__PLAssetsdLibraryClient_importFileSystemAssetsForce_withCompletionHandler___block_invoke;
  v22[3] = &unk_1E7932DA8;
  v11 = handlerCopy;
  v23 = v11;
  v12 = [proxyFactory remoteObjectProxyWithErrorHandler:v22];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__PLAssetsdLibraryClient_importFileSystemAssetsForce_withCompletionHandler___block_invoke_2;
  v20[3] = &unk_1E79324A0;
  v13 = v11;
  v21 = v13;
  v14 = [v12 importFileSystemAssetsWithReason:@"import file system assets handler (async force:from client)" reply:?], forceCopy, v20);

  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v28 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v14;
}

uint64_t __76__PLAssetsdLibraryClient_importFileSystemAssetsForce_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __76__PLAssetsdLibraryClient_importFileSystemAssetsForce_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (BOOL)synchronouslyImportFileSystemAssetsForce:(BOOL)force withError:(id *)error
{
  forceCopy = force;
  v36 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  *sel = 0u;
  v28 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v28) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: synchronouslyImportFileSystemAssetsForce:withError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __77__PLAssetsdLibraryClient_synchronouslyImportFileSystemAssetsForce_withError___block_invoke;
  v27[3] = &unk_1E7932770;
  v27[4] = &buf;
  v17 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v27];
  v18 = [v17 importFileSystemAssetsWithReason:@"import file sytem assets handler (from client)" force:forceCopy reply:&__block_literal_global_29];

  v19 = *(&buf + 1);
  if (error)
  {
    v20 = *(*(&buf + 1) + 40);
    if (v20)
    {
      *error = v20;
      v19 = *(&buf + 1);
    }
  }

  v21 = *(v19 + 40);
  _Block_object_dispose(&buf, 8);

  if (v28 == 1)
  {
    os_activity_scope_leave((&v29 + 8));
  }

  if (v29)
  {
    v22 = PLRequestGetLog();
    v23 = v22;
    v24 = v29;
    if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v25 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v25;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v21 == 0;
}

- (id)getPhotoLibraryStoreXPCListenerEndpoint
{
  v32 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v21) = v4;
  if (v4)
  {
    v5 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getPhotoLibraryStoreXPCListenerEndpoint", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v21 + 1);
    *(&v21 + 1) = v5;

    os_activity_scope_enter(*(&v21 + 1), (&v22 + 8));
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
    *buf = 136446210;
    v31 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __65__PLAssetsdLibraryClient_getPhotoLibraryStoreXPCListenerEndpoint__block_invoke_2;
  v20[3] = &unk_1E792F850;
  v20[4] = &v24;
  [v13 getPhotoLibraryStoreXPCListenerEndpointWithReply:v20];

  v14 = v25[5];
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
      *buf = 136446210;
      v31 = v18;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __65__PLAssetsdLibraryClient_getPhotoLibraryStoreXPCListenerEndpoint__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_DEFAULT, "Received XPC store endpoint %p", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)resetSocialGroupsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PLAssetsdLibraryClient_resetSocialGroupsWithCompletionHandler___block_invoke;
  v13[3] = &unk_1E7932DA8;
  v6 = handlerCopy;
  v14 = v6;
  v7 = [proxyFactory remoteObjectProxyWithErrorHandler:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__PLAssetsdLibraryClient_resetSocialGroupsWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E7932DD0;
  v12 = v6;
  v8 = v6;
  v9 = [v7 resetSocialGroupsWithReply:v11];

  return v9;
}

uint64_t __65__PLAssetsdLibraryClient_resetSocialGroupsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, a2);
  }

  return result;
}

uint64_t __65__PLAssetsdLibraryClient_resetSocialGroupsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)resetPersonsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PLAssetsdLibraryClient_resetPersonsWithCompletionHandler___block_invoke;
  v13[3] = &unk_1E7932DA8;
  v6 = handlerCopy;
  v14 = v6;
  v7 = [proxyFactory remoteObjectProxyWithErrorHandler:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__PLAssetsdLibraryClient_resetPersonsWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E7932DD0;
  v12 = v6;
  v8 = v6;
  v9 = [v7 resetPersonsWithReply:v11];

  return v9;
}

uint64_t __60__PLAssetsdLibraryClient_resetPersonsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, a2);
  }

  return result;
}

uint64_t __60__PLAssetsdLibraryClient_resetPersonsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)upgradePhotoLibraryDatabaseWithOptions:(id)options completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  completionCopy = completion;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: upgradePhotoLibraryDatabaseWithOptions:completion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v25 + 1);
    *(&v25 + 1) = v9;

    os_activity_scope_enter(v9, (&v26 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __76__PLAssetsdLibraryClient_upgradePhotoLibraryDatabaseWithOptions_completion___block_invoke;
  v23[3] = &unk_1E7932DA8;
  v12 = completionCopy;
  v24 = v12;
  v13 = [proxyFactory remoteObjectProxyWithErrorHandler:v23];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__PLAssetsdLibraryClient_upgradePhotoLibraryDatabaseWithOptions_completion___block_invoke_2;
  v21[3] = &unk_1E792F828;
  v21[4] = self;
  v14 = v12;
  v22 = v14;
  v15 = [v13 upgradePhotoLibraryDatabaseWithOptions:optionsCopy reply:v21];

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v15;
}

void __76__PLAssetsdLibraryClient_upgradePhotoLibraryDatabaseWithOptions_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    if ([*(a1 + 32) _consumeSandboxExtensions:v5])
    {
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.error" code:44003 userInfo:0];
    }
  }

  v8 = [v7 domain];
  if ([v8 isEqualToString:@"com.apple.photos.error"])
  {
    v9 = [v7 code];

    if (v9 != 43002)
    {
      goto LABEL_13;
    }

    v10 = [v7 userInfo];
    v11 = *MEMORY[0x1E696AA08];
    v8 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v12 = [v8 domain];
    if ([v12 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v13 = [v8 code];

      if (v13 == 4097)
      {
        v14 = MEMORY[0x1E696ABC0];
        v20[0] = *MEMORY[0x1E696A278];
        v20[1] = v11;
        v21[0] = @"migration interrupted";
        v21[1] = v8;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
        v16 = [v14 errorWithDomain:@"com.apple.photos.error" code:46008 userInfo:v15];

        v7 = v16;
      }
    }

    else
    {
    }
  }

LABEL_13:
  if (v7)
  {
    v17 = 0;
  }

  else
  {
    v18 = [*(a1 + 32) proxyFactory];
    v19 = [v18 remoteObjectProxyWithErrorHandler:&__block_literal_global_18];
    v17 = [v19 postOpenProgressWithReply:&__block_literal_global_20];
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)openPhotoLibraryDatabaseWithoutProgressIfNeededWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  clientState = [(PLAssetsdBaseClient *)self clientState];
  isOpen = [clientState isOpen];

  if (isOpen)
  {
    v9 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = 0;
      _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_DEBUG, "openPhotoLibraryDatabase: Photo library is already open", &v14, 2u);
    }

    v10 = 1;
  }

  else
  {
    v15 = 0;
    v10 = [(PLAssetsdLibraryClient *)self openPhotoLibraryDatabaseWithPostOpenProgress:0 options:optionsCopy error:&v15];
    v11 = v15;
    v9 = v11;
    if (error && !v10)
    {
      v12 = v11;
      v10 = 0;
      *error = v9;
    }
  }

  return v10;
}

- (BOOL)openPhotoLibraryDatabaseWithPostOpenProgress:(id *)progress options:(id)options error:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v42 = 0u;
  *sel = 0u;
  v41 = 0u;
  v10 = +[PLXPCMessageLogger enabled];
  LOBYTE(v41) = v10;
  if (v10)
  {
    v11 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: openPhotoLibraryDatabaseWithPostOpenProgress:options:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v41 + 1);
    *(&v41 + 1) = v11;

    os_activity_scope_enter(v11, (&v42 + 8));
  }

  v13 = PLRequestGetLog();
  sel[1] = a2;
  v14 = os_signpost_id_generate(v13);
  *&v42 = v14;
  v15 = v13;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  v50 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __85__PLAssetsdLibraryClient_openPhotoLibraryDatabaseWithPostOpenProgress_options_error___block_invoke;
  v40[3] = &unk_1E7932770;
  v40[4] = &buf;
  v19 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v40];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __85__PLAssetsdLibraryClient_openPhotoLibraryDatabaseWithPostOpenProgress_options_error___block_invoke_2;
  v39[3] = &unk_1E792F800;
  v39[4] = self;
  v39[5] = &buf;
  [v19 openPhotoLibraryDatabaseWithOptions:optionsCopy reply:v39];

  v20 = *(*(&buf + 1) + 40);
  if (error && v20)
  {
    v21 = v20;
    *error = v20;
    v20 = *(*(&buf + 1) + 40);
  }

  if (progress && !v20)
  {
    proxyFactory2 = [(PLAssetsdBaseClient *)self proxyFactory];
    v23 = [proxyFactory2 remoteObjectProxyWithErrorHandler:&__block_literal_global_12];
    v24 = [v23 postOpenProgressWithReply:&__block_literal_global_14];

    if (v24)
    {
      v25 = v24;
      *progress = v24;
    }

    v20 = *(*(&buf + 1) + 40);
  }

  v26 = PLGatekeeperXPCGetLog();
  v27 = v26;
  if (v20)
  {
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v28 = *(*(&buf + 1) + 40);
    *v44 = 138412290;
    v45 = v28;
    v29 = "openPhotoLibraryDatabase failed with error %@";
    v30 = v27;
    v31 = OS_LOG_TYPE_ERROR;
    v32 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *v44 = 0;
    v29 = "openPhotoLibraryDatabase succeeded";
    v30 = v27;
    v31 = OS_LOG_TYPE_DEFAULT;
    v32 = 2;
  }

  _os_log_impl(&dword_1AA9BD000, v30, v31, v29, v44, v32);
LABEL_20:

  v33 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v41 == 1)
  {
    os_activity_scope_leave((&v42 + 8));
  }

  if (v42)
  {
    v34 = PLRequestGetLog();
    v35 = v34;
    v36 = v42;
    if ((v42 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      v37 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v37;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v35, OS_SIGNPOST_INTERVAL_END, v36, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v33 == 0;
}

void __85__PLAssetsdLibraryClient_openPhotoLibraryDatabaseWithPostOpenProgress_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = v5;
  if (v12)
  {
    if ([*(a1 + 32) _consumeSandboxExtensions:?])
    {
      goto LABEL_6;
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.error" code:44003 userInfo:0];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = *(*(a1 + 40) + 8);
    v11 = v5;
    v9 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

LABEL_6:
}

- (BOOL)openApplicationOwnedFoldersWithError:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  *sel = 0u;
  v33 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v33) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: openApplicationOwnedFoldersWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v33 + 1);
    *(&v33 + 1) = v7;

    os_activity_scope_enter(v7, (&v34 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  *&v34 = v10;
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
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __63__PLAssetsdLibraryClient_openApplicationOwnedFoldersWithError___block_invoke;
  v32[3] = &unk_1E7932770;
  v32[4] = &buf;
  v15 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v32];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __63__PLAssetsdLibraryClient_openApplicationOwnedFoldersWithError___block_invoke_2;
  v31[3] = &unk_1E792F800;
  v31[4] = self;
  v31[5] = &buf;
  [v15 openApplicationOwnedFoldersWithReply:v31];

  v16 = *(*(&buf + 1) + 40);
  if (error && v16)
  {
    v17 = v16;
    *error = v16;
    v16 = *(*(&buf + 1) + 40);
  }

  v18 = PLGatekeeperXPCGetLog();
  v19 = v18;
  if (v16)
  {
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v20 = *(*(&buf + 1) + 40);
    *v36 = 138412290;
    v37 = v20;
    v21 = "openApplicationOwnedFoldersWithError failed with error %@";
    v22 = v19;
    v23 = OS_LOG_TYPE_ERROR;
    v24 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *v36 = 0;
    v21 = "openApplicationOwnedFoldersWithError succeeded";
    v22 = v19;
    v23 = OS_LOG_TYPE_DEFAULT;
    v24 = 2;
  }

  _os_log_impl(&dword_1AA9BD000, v22, v23, v21, v36, v24);
LABEL_15:

  v25 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v33 == 1)
  {
    os_activity_scope_leave((&v34 + 8));
  }

  if (v34)
  {
    v26 = PLRequestGetLog();
    v27 = v26;
    v28 = v34;
    if ((v34 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      v29 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v29;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v27, OS_SIGNPOST_INTERVAL_END, v28, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v25 == 0;
}

void __63__PLAssetsdLibraryClient_openApplicationOwnedFoldersWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = v5;
  if (v12)
  {
    if ([*(a1 + 32) _consumeSandboxExtensions:?])
    {
      goto LABEL_6;
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.error" code:44003 userInfo:0];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = *(*(a1 + 40) + 8);
    v11 = v5;
    v9 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

LABEL_6:
}

- (BOOL)validateOrRebuildPhotoLibraryDatabaseWithError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: validateOrRebuildPhotoLibraryDatabaseWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __73__PLAssetsdLibraryClient_validateOrRebuildPhotoLibraryDatabaseWithError___block_invoke;
  v24[3] = &unk_1E7932770;
  v24[4] = &buf;
  v15 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v24];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73__PLAssetsdLibraryClient_validateOrRebuildPhotoLibraryDatabaseWithError___block_invoke_2;
  v23[3] = &unk_1E7932980;
  v23[4] = &buf;
  [v15 validateOrRebuildPhotoLibraryDatabaseWithReply:v23];

  v16 = *(*(&buf + 1) + 40);
  if (error && v16)
  {
    v17 = v16;
    *error = v16;
    v16 = *(*(&buf + 1) + 40);
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

void __73__PLAssetsdLibraryClient_validateOrRebuildPhotoLibraryDatabaseWithError___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

- (BOOL)isLibraryReadyForImportWithError:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  *sel = 0u;
  v27 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v27) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: isLibraryReadyForImportWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v27 + 1);
    *(&v27 + 1) = v7;

    os_activity_scope_enter(v7, (&v28 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  *&v28 = v10;
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v15 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_6];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __59__PLAssetsdLibraryClient_isLibraryReadyForImportWithError___block_invoke_7;
  v22[3] = &unk_1E7932E48;
  v22[4] = &v23;
  v22[5] = &buf;
  [v15 isLibraryReadyForImportWithReply:v22];

  if (error)
  {
    *error = *(*(&buf + 1) + 40);
  }

  v16 = *(v24 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v23, 8);
  if (v27 == 1)
  {
    os_activity_scope_leave((&v28 + 8));
  }

  if (v28)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v28;
    if ((v28 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v20;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v16;
}

void __59__PLAssetsdLibraryClient_isLibraryReadyForImportWithError___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136446466;
    v5 = "[PLAssetsdLibraryClient isLibraryReadyForImportWithError:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %{public}s: %@", &v4, 0x16u);
  }
}

- (int64_t)getCurrentModelVersion
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v21) = v4;
  if (v4)
  {
    v5 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getCurrentModelVersion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
  v25 = 0x2020000000;
  v26 = -1;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_2];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __48__PLAssetsdLibraryClient_getCurrentModelVersion__block_invoke_3;
  v20[3] = &unk_1E7930CA0;
  v20[4] = &buf;
  [v13 getCurrentModelVersionWithReply:v20];

  v14 = *(*(&buf + 1) + 24);
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

void __48__PLAssetsdLibraryClient_getCurrentModelVersion__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136446466;
    v5 = "[PLAssetsdLibraryClient getCurrentModelVersion]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %{public}s: %@", &v4, 0x16u);
  }
}

- (void)launchAssetsd
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v15) = v4;
  if (v4)
  {
    *(&v15 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: launchAssetsd", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_399];
  [v11 launchAssetsd];

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

void __39__PLAssetsdLibraryClient_launchAssetsd__block_invoke(uint64_t a1, void *a2)
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

- (BOOL)isOpen
{
  clientState = [(PLAssetsdBaseClient *)self clientState];
  isOpen = [clientState isOpen];

  return isOpen;
}

@end