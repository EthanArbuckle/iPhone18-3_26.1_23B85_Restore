@interface PLAssetsdNonBindingDebugService
- (PLAssetsdNonBindingDebugService)initWithConnectionAuthorization:(id)authorization bundleController:(id)controller;
- (void)getActivePhotoLibrariesWithReply:(id)reply;
- (void)getAllKnownLibraryPathsWithReply:(id)reply;
- (void)getBoundServicesForLibrary:(id)library reply:(id)reply;
- (void)getExistingPhotoLibraryIdentifierWithLibraryURL:(id)l reply:(id)reply;
- (void)getLibraryServicesStateByLibraryBundleWithReply:(id)reply;
- (void)getPhotosXPCEndpointWithReply:(id)reply;
- (void)statusWithReply:(id)reply;
@end

@implementation PLAssetsdNonBindingDebugService

- (void)getLibraryServicesStateByLibraryBundleWithReply:(id)reply
{
  v34 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v29 = 0u;
  *sel = 0u;
  v28 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v28) = enabled;
  if (enabled)
  {
    v5 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getLibraryServicesStateByLibraryBundleWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v28 + 1);
    *(&v28 + 1) = v5;

    os_activity_scope_enter(v5, (&v29 + 8));
  }

  currentLibraryServicesManagers = [(PLPhotoLibraryBundleController *)self->_bundleController currentLibraryServicesManagers];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = currentLibraryServicesManagers;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        libraryURL = [v13 libraryURL];
        path = [libraryURL path];

        state = [v13 state];
        if (path)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithInteger:state];
          [dictionary setObject:v17 forKeyedSubscript:path];
        }

        else
        {
          v17 = PLBackendGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = [v13 debugDescription];
            *buf = 138412290;
            v33 = v18;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to find path for library services manager %@", buf, 0xCu);
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v10);
  }

  replyCopy[2](replyCopy, dictionary);
  if (v28 == 1)
  {
    os_activity_scope_leave((&v29 + 8));
  }

  if (v29)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v29;
    if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)statusWithReply:(id)reply
{
  v30 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v25 = 0u;
  *sel = 0u;
  v24 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v24) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: statusWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v24 + 1);
    *(&v24 + 1) = v6;

    os_activity_scope_enter(v6, (&v25 + 8));
  }

  v8 = +[PLPhotoLibrary queueStatusDescription];
  v9 = [MEMORY[0x1E696AD60] stringWithString:@"Library Services:\n"];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  currentLibraryServicesManagers = [(PLPhotoLibraryBundleController *)self->_bundleController currentLibraryServicesManagers];
  v11 = [currentLibraryServicesManagers countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(currentLibraryServicesManagers);
        }

        statusDescription = [*(*(&v20 + 1) + 8 * v13) statusDescription];
        [v9 appendString:statusDescription];

        ++v13;
      }

      while (v11 != v13);
      v11 = [currentLibraryServicesManagers countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v8, v9];
  replyCopy[2](replyCopy, v15);

  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getPhotosXPCEndpointWithReply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v11 = 0u;
  *sel = 0u;
  v10 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v10) = enabled;
  if (enabled)
  {
    *(&v10 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getPhotosXPCEndpointWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v10 + 1), (&v11 + 8));
  }

  if (PLPhotosXPCEndpoint)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696B0E0]);
    [v5 _setEndpoint:PLPhotosXPCEndpoint];
  }

  else
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to get photos XPC endpoint when it's not set", buf, 2u);
    }

    v5 = 0;
  }

  replyCopy[2](replyCopy, 1, v5, 0);

  if (v10 == 1)
  {
    os_activity_scope_leave((&v11 + 8));
  }

  if (v11)
  {
    v7 = PLRequestGetLog();
    v8 = v7;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v14 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v8, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getExistingPhotoLibraryIdentifierWithLibraryURL:(id)l reply:(id)reply
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  replyCopy = reply;
  v18 = 0u;
  *sel = 0u;
  v17 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v17) = enabled;
  if (enabled)
  {
    v8 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getExistingPhotoLibraryIdentifierWithLibraryURL:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v17 + 1);
    *(&v17 + 1) = v8;

    os_activity_scope_enter(v8, (&v18 + 8));
  }

  v16 = 0;
  v10 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:lCopy createIfMissing:0 error:&v16];
  v11 = v16;
  replyCopy[2](replyCopy, v10, v11);

  if (v17 == 1)
  {
    os_activity_scope_leave((&v18 + 8));
  }

  if (v18)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    v14 = v18;
    if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v21 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getBoundServicesForLibrary:(id)library reply:(id)reply
{
  v31 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  replyCopy = reply;
  v25 = 0u;
  *sel = 0u;
  v24 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v24) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getBoundServicesForLibrary:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v24 + 1);
    *(&v24 + 1) = v9;

    os_activity_scope_enter(v9, (&v25 + 8));
  }

  v11 = [(PLPhotoLibraryBundleController *)self->_bundleController bundleForLibraryURL:libraryCopy];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    boundAssetsdServices = [v11 boundAssetsdServices];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__PLAssetsdNonBindingDebugService_getBoundServicesForLibrary_reply___block_invoke;
    v22[3] = &unk_1E756C4F8;
    v14 = v12;
    v23 = v14;
    [boundAssetsdServices enumerateObjectsUsingBlock:v22];

    v15 = 0;
    v16 = v23;
  }

  else
  {
    v17 = *MEMORY[0x1E696A278];
    v27[0] = *MEMORY[0x1E696A998];
    v27[1] = v17;
    v28[0] = libraryCopy;
    v28[1] = @"No bundle found for libraryURL";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41004 userInfo:v16];
    v14 = 0;
  }

  replyCopy[2](replyCopy, v14, v15);
  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v18 = PLRequestGetLog();
    v19 = v18;
    v20 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v30 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __68__PLAssetsdNonBindingDebugService_getBoundServicesForLibrary_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 connectionDescription];
  [v2 addObject:v3];
}

- (void)getAllKnownLibraryPathsWithReply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v13 = 0u;
  *sel = 0u;
  v11 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v11) = enabled;
  if (enabled)
  {
    *(&v11 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getAllKnownLibraryPathsWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v13 + 8));
  }

  mEMORY[0x1E69BF278] = [MEMORY[0x1E69BF278] sharedBookmarkManager];
  allKnownLibraryURLs = [mEMORY[0x1E69BF278] allKnownLibraryURLs];
  v7 = [allKnownLibraryURLs _pl_map:&__block_literal_global_43125];
  replyCopy[2](replyCopy, v7, 0);

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
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v9, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getActivePhotoLibrariesWithReply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v12 = 0u;
  *sel = 0u;
  v10 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v10) = enabled;
  if (enabled)
  {
    *(&v10 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getActivePhotoLibrariesWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v10 + 1), (&v12 + 8));
  }

  libraryBundlePaths = [(PLPhotoLibraryBundleController *)self->_bundleController libraryBundlePaths];
  replyCopy[2](replyCopy, libraryBundlePaths, 0);

  if (v11 == 1)
  {
    os_activity_scope_leave((&v12 + 8));
  }

  if (v12)
  {
    v7 = PLRequestGetLog();
    v8 = v7;
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v15 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v8, OS_SIGNPOST_INTERVAL_END, v12, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (PLAssetsdNonBindingDebugService)initWithConnectionAuthorization:(id)authorization bundleController:(id)controller
{
  authorizationCopy = authorization;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = PLAssetsdNonBindingDebugService;
  v9 = [(PLAssetsdNonBindingDebugService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connectionAuthorization, authorization);
    objc_storeStrong(&v10->_bundleController, controller);
  }

  return v10;
}

@end