@interface PLAssetsdNonBindingDebugService
- (PLAssetsdNonBindingDebugService)initWithConnectionAuthorization:(id)a3 bundleController:(id)a4;
- (void)getActivePhotoLibrariesWithReply:(id)a3;
- (void)getAllKnownLibraryPathsWithReply:(id)a3;
- (void)getBoundServicesForLibrary:(id)a3 reply:(id)a4;
- (void)getExistingPhotoLibraryIdentifierWithLibraryURL:(id)a3 reply:(id)a4;
- (void)getLibraryServicesStateByLibraryBundleWithReply:(id)a3;
- (void)getPhotosXPCEndpointWithReply:(id)a3;
- (void)statusWithReply:(id)a3;
@end

@implementation PLAssetsdNonBindingDebugService

- (void)getLibraryServicesStateByLibraryBundleWithReply:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v29 = 0u;
  *sel = 0u;
  v28 = 0u;
  v4 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v28) = v4;
  if (v4)
  {
    v5 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getLibraryServicesStateByLibraryBundleWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v28 + 1);
    *(&v28 + 1) = v5;

    os_activity_scope_enter(v5, (&v29 + 8));
  }

  v7 = [(PLPhotoLibraryBundleController *)self->_bundleController currentLibraryServicesManagers];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v7;
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
        v14 = [v13 libraryURL];
        v15 = [v14 path];

        v16 = [v13 state];
        if (v15)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
          [v8 setObject:v17 forKeyedSubscript:v15];
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

  v23[2](v23, v8);
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

- (void)statusWithReply:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = 0u;
  *sel = 0u;
  v24 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v24) = v5;
  if (v5)
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
  v10 = [(PLPhotoLibraryBundleController *)self->_bundleController currentLibraryServicesManagers];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v27 count:16];
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
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v20 + 1) + 8 * v13) statusDescription];
        [v9 appendString:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v8, v9];
  v4[2](v4, v15);

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

- (void)getPhotosXPCEndpointWithReply:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  *sel = 0u;
  v10 = 0u;
  v4 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v10) = v4;
  if (v4)
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

  v3[2](v3, 1, v5, 0);

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

- (void)getExistingPhotoLibraryIdentifierWithLibraryURL:(id)a3 reply:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v18 = 0u;
  *sel = 0u;
  v17 = 0u;
  v7 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v17) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getExistingPhotoLibraryIdentifierWithLibraryURL:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v17 + 1);
    *(&v17 + 1) = v8;

    os_activity_scope_enter(v8, (&v18 + 8));
  }

  v16 = 0;
  v10 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:v5 createIfMissing:0 error:&v16];
  v11 = v16;
  v6[2](v6, v10, v11);

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

- (void)getBoundServicesForLibrary:(id)a3 reply:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25 = 0u;
  *sel = 0u;
  v24 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v24) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getBoundServicesForLibrary:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v24 + 1);
    *(&v24 + 1) = v9;

    os_activity_scope_enter(v9, (&v25 + 8));
  }

  v11 = [(PLPhotoLibraryBundleController *)self->_bundleController bundleForLibraryURL:v6];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = [v11 boundAssetsdServices];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__PLAssetsdNonBindingDebugService_getBoundServicesForLibrary_reply___block_invoke;
    v22[3] = &unk_1E756C4F8;
    v14 = v12;
    v23 = v14;
    [v13 enumerateObjectsUsingBlock:v22];

    v15 = 0;
    v16 = v23;
  }

  else
  {
    v17 = *MEMORY[0x1E696A278];
    v27[0] = *MEMORY[0x1E696A998];
    v27[1] = v17;
    v28[0] = v6;
    v28[1] = @"No bundle found for libraryURL";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41004 userInfo:v16];
    v14 = 0;
  }

  v7[2](v7, v14, v15);
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

- (void)getAllKnownLibraryPathsWithReply:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  *sel = 0u;
  v11 = 0u;
  v4 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v11) = v4;
  if (v4)
  {
    *(&v11 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getAllKnownLibraryPathsWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v13 + 8));
  }

  v5 = [MEMORY[0x1E69BF278] sharedBookmarkManager];
  v6 = [v5 allKnownLibraryURLs];
  v7 = [v6 _pl_map:&__block_literal_global_43125];
  v3[2](v3, v7, 0);

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

- (void)getActivePhotoLibrariesWithReply:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  *sel = 0u;
  v10 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v10) = v5;
  if (v5)
  {
    *(&v10 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getActivePhotoLibrariesWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v10 + 1), (&v12 + 8));
  }

  v6 = [(PLPhotoLibraryBundleController *)self->_bundleController libraryBundlePaths];
  v4[2](v4, v6, 0);

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

- (PLAssetsdNonBindingDebugService)initWithConnectionAuthorization:(id)a3 bundleController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PLAssetsdNonBindingDebugService;
  v9 = [(PLAssetsdNonBindingDebugService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connectionAuthorization, a3);
    objc_storeStrong(&v10->_bundleController, a4);
  }

  return v10;
}

@end