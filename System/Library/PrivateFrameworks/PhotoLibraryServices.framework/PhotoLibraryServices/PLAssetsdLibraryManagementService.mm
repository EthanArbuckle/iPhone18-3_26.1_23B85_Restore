@interface PLAssetsdLibraryManagementService
- (BOOL)_validateClientPermissionsToCloseLibraryAtURL:(id)l delete:(BOOL)delete error:(id *)error;
- (PLAssetsdLibraryManagementService)initWithConnectionAuthorization:(id)authorization bundleController:(id)controller;
- (void)_closePhotoLibraryAtURL:(id)l delete:(BOOL)delete reply:(id)reply;
- (void)closeAndDeletePhotoLibraryAtURL:(id)l sandboxExtension:(id)extension reply:(id)reply;
- (void)closePhotoLibraryAtURL:(id)l reply:(id)reply;
- (void)createManagedPhotoLibraryWithOptions:(id)options sandboxExtension:(id)extension reply:(id)reply;
- (void)filesystemSizeForLibraryURL:(id)l reply:(id)reply;
- (void)findPhotoLibraryIdentifiersMatchingSearchCriteria:(id)criteria reply:(id)reply;
- (void)getPhotoLibraryIdentifierWithLibraryURL:(id)l reply:(id)reply;
- (void)getPhotoLibraryURLsWithLibraryURL:(id)l reply:(id)reply;
- (void)resetSyndicationLibraryWithReply:(id)reply;
- (void)setSystemPhotoLibraryURL:(id)l sandboxExtension:(id)extension options:(unsigned __int16)options reply:(id)reply;
@end

@implementation PLAssetsdLibraryManagementService

- (void)createManagedPhotoLibraryWithOptions:(id)options sandboxExtension:(id)extension reply:(id)reply
{
  v44 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  extensionCopy = extension;
  replyCopy = reply;
  v36 = 0u;
  *sel = 0u;
  v35 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v35) = enabled;
  if (enabled)
  {
    v12 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: createManagedPhotoLibraryWithOptions:sandboxExtension:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v35 + 1);
    *(&v35 + 1) = v12;

    os_activity_scope_enter(v12, (&v36 + 8));
  }

  v14 = [optionsCopy objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsBundleURLKey"];
  if (!v14)
  {
    v15 = [optionsCopy objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsTestOptionsKey"];
    v14 = [v15 objectForKey:*MEMORY[0x1E69BFED0]];
  }

  if (extensionCopy && v14)
  {
    mEMORY[0x1E69BF278] = [MEMORY[0x1E69BF278] sharedBookmarkManager];
    v34 = 0;
    v17 = [mEMORY[0x1E69BF278] URLFromClientLibraryURL:v14 sandboxExtension:extensionCopy error:&v34];
    v18 = v34;

    if (v17 || !v18)
    {
    }

    else
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696AA08];
      v40 = *MEMORY[0x1E696AA08];
      v41 = v18;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v22 = *MEMORY[0x1E69BFF48];
      v17 = [v19 errorWithDomain:*MEMORY[0x1E69BFF48] code:41027 userInfo:v21];

      if (v17)
      {
        v23 = MEMORY[0x1E696ABC0];
        v38[0] = *MEMORY[0x1E696A998];
        v38[1] = v20;
        v39[0] = 0;
        v39[1] = v17;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
        v25 = [v23 errorWithDomain:v22 code:46018 userInfo:v24];

        replyCopy[2](replyCopy, 0, v25);
        goto LABEL_17;
      }
    }
  }

  else
  {
    v17 = v14;
  }

  v25 = [[PLLibraryOpenerCreationOptions alloc] initWithOptionsDictionary:optionsCopy connectionAuthorization:self->_connectionAuthorization];
  if (v25)
  {
    v33 = 0;
    v26 = [PLPhotoLibraryOpener createManagedPhotoLibraryOnFilesystemWithOptions:v25 error:&v33];
    v27 = v33;
    libraryURL = [v26 libraryURL];
    (replyCopy)[2](replyCopy, libraryURL, v27);
  }

  else
  {
    v27 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46018 userInfo:0];
    replyCopy[2](replyCopy, 0, v27);
  }

LABEL_17:
  if (v35 == 1)
  {
    os_activity_scope_leave((&v36 + 8));
  }

  if (v36)
  {
    v29 = PLRequestGetLog();
    v30 = v29;
    v31 = v36;
    if ((v36 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v43 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v30, OS_SIGNPOST_INTERVAL_END, v31, "Cleared purgeable flags for %@", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)findPhotoLibraryIdentifiersMatchingSearchCriteria:(id)criteria reply:(id)reply
{
  v22 = *MEMORY[0x1E69E9840];
  criteriaCopy = criteria;
  replyCopy = reply;
  v18 = 0u;
  *sel = 0u;
  v17 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v17) = enabled;
  if (enabled)
  {
    v8 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: findPhotoLibraryIdentifiersMatchingSearchCriteria:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v17 + 1);
    *(&v17 + 1) = v8;

    os_activity_scope_enter(v8, (&v18 + 8));
  }

  v16 = 0;
  v10 = [PLPhotoLibraryOpener findPhotoLibraryIdentifiersMatchingSearchCriteria:criteriaCopy error:&v16];
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
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_END, v14, "Cleared purgeable flags for %@", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getPhotoLibraryIdentifierWithLibraryURL:(id)l reply:(id)reply
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
    v8 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getPhotoLibraryIdentifierWithLibraryURL:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v17 + 1);
    *(&v17 + 1) = v8;

    os_activity_scope_enter(v8, (&v18 + 8));
  }

  v16 = 0;
  v10 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:lCopy createIfMissing:1 error:&v16];
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
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_END, v14, "Cleared purgeable flags for %@", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)filesystemSizeForLibraryURL:(id)l reply:(id)reply
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  replyCopy = reply;
  v20 = 0u;
  *sel = 0u;
  v19 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v19) = enabled;
  if (enabled)
  {
    v8 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: filesystemSizeForLibraryURL:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v19 + 1);
    *(&v19 + 1) = v8;

    os_activity_scope_enter(v8, (&v20 + 8));
  }

  v10 = +[PLPhotoLibraryBundleController sharedBundleController];
  v11 = [v10 lookupOrCreateBundleForLibraryURL:lCopy];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__PLAssetsdLibraryManagementService_filesystemSizeForLibraryURL_reply___block_invoke;
  v17[3] = &unk_1E7576D48;
  v12 = replyCopy;
  v18 = v12;
  [v11 calculateTotalSizeWithResult:v17];

  if (v19 == 1)
  {
    os_activity_scope_leave((&v20 + 8));
  }

  if (v20)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v20;
    if ((v20 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v23 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_END, v15, "Cleared purgeable flags for %@", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)_closePhotoLibraryAtURL:(id)l delete:(BOOL)delete reply:(id)reply
{
  selfCopy = delete;
  v64[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  replyCopy = reply;
  v54 = 0;
  v10 = [(PLAssetsdLibraryManagementService *)self _validateClientPermissionsToCloseLibraryAtURL:lCopy delete:selfCopy error:&v54];
  v11 = v54;
  v12 = v11;
  if (!v10)
  {
    replyCopy[2](replyCopy, 0, v11);
    goto LABEL_37;
  }

  v50 = v11;
  v51 = +[PLPhotoLibraryBundleController sharedBundleController];
  v13 = [v51 openBundleAtLibraryURL:lCopy];
  v14 = v13;
  if (v13)
  {
    libraryServicesManager = [v13 libraryServicesManager];
    v16 = libraryServicesManager;
    if (selfCopy && libraryServicesManager)
    {
      v53 = 0;
      v17 = [libraryServicesManager disableiCPLForLibraryDeletionWithError:&v53];
      v18 = v53;
      v19 = v18;
      if (!v17)
      {
        v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v29 setObject:lCopy forKeyedSubscript:*MEMORY[0x1E696A998]];
        [v29 setObject:@"Couldn't open library" forKeyedSubscript:*MEMORY[0x1E696A278]];
        [v29 setObject:v19 forKeyedSubscript:*MEMORY[0x1E696AA08]];
        v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v29];
        v28 = 0;
        goto LABEL_18;
      }
    }

    if (selfCopy)
    {
      v20 = 41025;
    }

    else
    {
      v20 = 41029;
    }

    v21 = MEMORY[0x1E696ABC0];
    v22 = replyCopy;
    v23 = v16;
    v24 = selfCopy;
    selfCopy = self;
    v25 = v14;
    v26 = *MEMORY[0x1E69BFF48];
    v63 = *MEMORY[0x1E696A998];
    v64[0] = lCopy;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
    v27 = v26;
    v14 = v25;
    self = selfCopy;
    LODWORD(selfCopy) = v24;
    v16 = v23;
    replyCopy = v22;
    v28 = 1;
    v29 = [v21 errorWithDomain:v27 code:v20 userInfo:v19];
    [v51 shutdownBundle:v14 reason:v29];
    v30 = 0;
LABEL_18:

    if (!v28)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  v31 = PLBackendGetLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = lCopy;
    _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "_closePhotoLibraryAtURL: No bundle found for libraryURL %@", buf, 0xCu);
  }

  if ((selfCopy & 1) == 0)
  {
    v49 = 0;
    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v32 setObject:lCopy forKeyedSubscript:*MEMORY[0x1E696A998]];
    [v32 setObject:@"No bundle found for libraryURL" forKeyedSubscript:*MEMORY[0x1E696A278]];
    v33 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41004 userInfo:v32];
    v28 = 0;
LABEL_33:

    v30 = v33;
    v14 = v49;
    goto LABEL_34;
  }

  v30 = 0;
  v28 = 1;
LABEL_19:
  if (selfCopy)
  {
    v34 = PLBackendGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      clientProcessIdentifier = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization clientProcessIdentifier];
      [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
      v37 = v36 = v14;
      *buf = 138412802;
      v56 = lCopy;
      v57 = 1024;
      *v58 = clientProcessIdentifier;
      *&v58[4] = 2114;
      *&v58[6] = v37;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Deleting photo library from file system at %@, requested by [%d] %{public}@", buf, 0x1Cu);

      v14 = v36;
    }

    photosLibrariesDataVaultPath = [MEMORY[0x1E69BF2A0] photosLibrariesDataVaultPath];
    path = [photosLibrariesDataVaultPath path];

    v40 = MEMORY[0x1E69BF238];
    path2 = [lCopy path];
    v49 = v14;
    if ([v40 filePath:path2 hasPrefix:path])
    {
      path3 = [lCopy path];
      v43 = [path3 containsString:@"/Application/"];
    }

    else
    {
      v43 = 0;
    }

    v52 = 0;
    v28 = [PLPhotoLibraryOpener deleteLibraryFromFilesystemAtURL:lCopy shouldWriteTombstone:v43 error:&v52];
    v32 = v52;
    mEMORY[0x1E69BF278] = [MEMORY[0x1E69BF278] sharedBookmarkManager];
    [mEMORY[0x1E69BF278] removeSSBForLibraryURL:lCopy];

    v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v46 = v45;
    if (lCopy)
    {
      [v45 setObject:lCopy forKeyedSubscript:*MEMORY[0x1E696A998]];
    }

    if (v32)
    {
      [v46 setObject:v32 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    if (v28)
    {
      v33 = 0;
    }

    else
    {
      v33 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41026 userInfo:v46];
    }

    goto LABEL_33;
  }

LABEL_34:
  v47 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    v48 = objc_opt_class();
    *buf = 138413314;
    v56 = v48;
    v57 = 2048;
    *v58 = self;
    *&v58[8] = 2112;
    *&v58[10] = lCopy;
    v59 = 1024;
    v60 = selfCopy;
    v61 = 2112;
    v62 = v30;
    _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_DEBUG, "%@ %p _closePhotoLibraryURL:%@ delete:%d error:%@", buf, 0x30u);
  }

  replyCopy[2](replyCopy, v28, v30);
  v12 = v50;
LABEL_37:
}

- (BOOL)_validateClientPermissionsToCloseLibraryAtURL:(id)l delete:(BOOL)delete error:(id *)error
{
  deleteCopy = delete;
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (([MEMORY[0x1E69BF2A0] isSystemPhotoLibraryURL:lCopy] & 1) != 0 || objc_msgSend(MEMORY[0x1E69BF2A0], "wellKnownPhotoLibraryIdentifierForURL:", lCopy))
  {
    v9 = 41005;
  }

  else
  {
    if ([(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization isClientEntitledForPhotoKitOrPrivatePhotosTCC])
    {
      v13 = 1;
      goto LABEL_7;
    }

    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      if (deleteCopy)
      {
        v16 = @"close and delete";
      }

      else
      {
        v16 = @"close";
      }

      trustedCallerBundleID = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = trustedCallerBundleID;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Cannot %{public}@ library, client %@ is missing required entitlements", &v18, 0x16u);
    }

    v9 = 41009;
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:v9 userInfo:0];
  v11 = v10;
  if (error)
  {
    v12 = v10;
    *error = v11;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (void)resetSyndicationLibraryWithReply:(id)reply
{
  v28[2] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v21) = enabled;
  if (enabled)
  {
    v5 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: resetSyndicationLibraryWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v21 + 1);
    *(&v21 + 1) = v5;

    os_activity_scope_enter(v5, (&v22 + 8));
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__110208;
  v27 = __Block_byref_object_dispose__110209;
  v28[0] = 0;
  obj = 0;
  v7 = PLCreateShortLivedWellKnownPhotoLibrary(3, "[PLAssetsdLibraryManagementService resetSyndicationLibraryWithReply:]", &obj);
  objc_storeStrong(v28, obj);
  if (v7)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__PLAssetsdLibraryManagementService_resetSyndicationLibraryWithReply___block_invoke;
    v12[3] = &unk_1E7578870;
    v14 = &v17;
    v13 = v7;
    p_buf = &buf;
    [v13 performBlockAndWait:v12];
  }

  (*(replyCopy + 2))(replyCopy, *(v18 + 24), *(*(&buf + 1) + 40));

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v17, 8);
  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v8 = PLRequestGetLog();
    v9 = v8;
    v10 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v9, OS_SIGNPOST_INTERVAL_END, v10, "Cleared purgeable flags for %@", "%{public}s", &buf, 0xCu);
    }
  }
}

void __70__PLAssetsdLibraryManagementService_resetSyndicationLibraryWithReply___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 32) pathManager];
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = PLResetSyndicationLibraryWithManagedObjectContext(v2, v3, &obj);
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v5;

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v21 = 0;
    v6 = [PLLibraryServicesManager runningLibraryServicesManagerForWellKnownPhotoLibraryIdentifier:1 error:&v21];
    v7 = v21;
    v8 = v21;
    if (v6)
    {
      v9 = [v6 databaseContext];
      v10 = [v9 newShortLivedLibraryWithName:"-[PLAssetsdLibraryManagementService resetSyndicationLibraryWithReply:]_block_invoke"];

      v11 = [v10 managedObjectContext];
      v12 = [v10 pathManager];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLAssetsdLibraryManagementService resetSyndicationLibraryWithReply:]_block_invoke"];
      v14 = *(*(a1 + 48) + 8);
      v20 = *(v14 + 40);
      v15 = PLDeleteGuestAssetsInLibraryWithManagedObjectContext(v11, v12, v13, 0, &v20);
      objc_storeStrong((v14 + 40), v20);
      *(*(*(a1 + 40) + 8) + 24) = v15;

      v16 = [v6 backgroundJobService];
      v17 = [v6 libraryBundle];
      [v16 signalBackgroundProcessingNeededOnBundle:v17];
    }

    else
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
      v10 = PLSyndicationGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412290;
        v24 = v19;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "resetSyndicationLibrary: failed to open system photo library %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = PLSyndicationGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v24 = v18;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "resetSyndicationLibrary: failed with error %@", buf, 0xCu);
    }
  }
}

- (void)closeAndDeletePhotoLibraryAtURL:(id)l sandboxExtension:(id)extension reply:(id)reply
{
  v32 = *MEMORY[0x1E69E9840];
  lCopy = l;
  extensionCopy = extension;
  replyCopy = reply;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v25) = enabled;
  if (enabled)
  {
    v12 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: closeAndDeletePhotoLibraryAtURL:sandboxExtension:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v25 + 1);
    *(&v25 + 1) = v12;

    os_activity_scope_enter(v12, (&v26 + 8));
  }

  if (!extensionCopy)
  {
    v15 = lCopy;
    goto LABEL_7;
  }

  mEMORY[0x1E69BF278] = [MEMORY[0x1E69BF278] sharedBookmarkManager];
  v24 = 0;
  v15 = [mEMORY[0x1E69BF278] URLFromClientLibraryURL:lCopy sandboxExtension:extensionCopy error:&v24];
  v16 = v24;

  if (v15)
  {

LABEL_7:
    [(PLAssetsdLibraryManagementService *)self _closePhotoLibraryAtURL:v15 delete:1 reply:replyCopy];
    goto LABEL_14;
  }

  v17 = MEMORY[0x1E696ABC0];
  if (v16)
  {
    v28 = *MEMORY[0x1E696AA08];
    v29 = v16;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v17 errorWithDomain:*MEMORY[0x1E69BFF48] code:41027 userInfo:v18];
  if (v16)
  {
  }

  replyCopy[2](replyCopy, 0, v19);

  v15 = 0;
LABEL_14:
  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v31 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v21, OS_SIGNPOST_INTERVAL_END, v22, "Cleared purgeable flags for %@", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)closePhotoLibraryAtURL:(id)l reply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  lCopy = l;
  replyCopy = reply;
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = enabled;
  if (enabled)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: closePhotoLibraryAtURL:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  [(PLAssetsdLibraryManagementService *)self _closePhotoLibraryAtURL:lCopy delete:0 reply:replyCopy, v12];
  if (v13 == 1)
  {
    os_activity_scope_leave((&v14 + 8));
  }

  if (v14)
  {
    v9 = PLRequestGetLog();
    v10 = v9;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v17 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v14, "Cleared purgeable flags for %@", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getPhotoLibraryURLsWithLibraryURL:(id)l reply:(id)reply
{
  v45 = *MEMORY[0x1E69E9840];
  lCopy = l;
  replyCopy = reply;
  v38 = 0u;
  *sel = 0u;
  v37 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v37) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getPhotoLibraryURLsWithLibraryURL:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v37 + 1);
    *(&v37 + 1) = v9;

    os_activity_scope_enter(v9, (&v38 + 8));
  }

  systemLibraryURL = [MEMORY[0x1E69BF2A8] systemLibraryURL];
  v12 = systemLibraryURL;
  p_buf = &buf;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__110208;
  v43 = __Block_byref_object_dispose__110209;
  v44 = 0;
  if (systemLibraryURL)
  {
    if ([systemLibraryURL isEqual:lCopy])
    {
      libraryBundles = [(PLPhotoLibraryBundleController *)self->_bundleController libraryBundles];
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __77__PLAssetsdLibraryManagementService_getPhotoLibraryURLsWithLibraryURL_reply___block_invoke;
      v34 = &unk_1E7576D20;
      v35 = v12;
      v36 = &buf;
      [libraryBundles enumerateObjectsUsingBlock:&v31];

      v15 = v35;
      goto LABEL_8;
    }

    p_buf = *(&buf + 1);
  }

  v16 = lCopy;
  v15 = *(p_buf + 5);
  *(p_buf + 5) = v16;
LABEL_8:

  if ([(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization isClientAuthorizedForSandboxExtensions])
  {
    mEMORY[0x1E69BF278] = [MEMORY[0x1E69BF278] sharedBookmarkManager];
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v12)
    {
      connectionAuthorization = self->_connectionAuthorization;
      if (connectionAuthorization)
      {
        [(PLAssetsdConnectionAuthorization *)connectionAuthorization clientAuditToken];
      }

      else
      {
        v29 = 0u;
        v30 = 0u;
      }

      path = [v12 path];
      v21 = [mEMORY[0x1E69BF278] newSandboxExtensionDataForClient:&v29 path:path writable:0];

      if (v21)
      {
        [v18 addObject:v21];
      }
    }

    v22 = *(*(&buf + 1) + 40);
    if (v22)
    {
      if (self->_connectionAuthorization)
      {
        [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization clientAuditToken];
        v22 = *(*(&buf + 1) + 40);
      }

      else
      {
        v29 = 0u;
        v30 = 0u;
      }

      path2 = [v22 path];
      v24 = [mEMORY[0x1E69BF278] newSandboxExtensionDataForClient:&v29 path:path2 writable:0];

      if (v24)
      {
        [v18 addObject:v24];
      }
    }
  }

  else
  {
    v18 = 0;
  }

  (*(replyCopy + 2))(replyCopy, v12, *(*(&buf + 1) + 40), v18, 0);

  _Block_object_dispose(&buf, 8);
  if (v37 == 1)
  {
    os_activity_scope_leave((&v38 + 8));
  }

  if (v38)
  {
    v25 = PLRequestGetLog();
    v26 = v25;
    v27 = v38;
    if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_END, v27, "Cleared purgeable flags for %@", "%{public}s", &buf, 0xCu);
    }
  }
}

void __77__PLAssetsdLibraryManagementService_getPhotoLibraryURLsWithLibraryURL_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 boundAssetsdServices];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__PLAssetsdLibraryManagementService_getPhotoLibraryURLsWithLibraryURL_reply___block_invoke_2;
  v9[3] = &unk_1E7576CF8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  v12 = a4;
  [v6 enumerateObjectsUsingBlock:v9];
}

void __77__PLAssetsdLibraryManagementService_getPhotoLibraryURLsWithLibraryURL_reply___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 isPhotosClient];
  v7 = v10;
  if (v6)
  {
    v8 = [v10 libraryURL];
    v9 = *(a1 + 32);
    if (!v9 || ([v9 isEqual:v8] & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
    }

    *a4 = 1;
    **(a1 + 48) = 1;

    v7 = v10;
  }
}

- (void)setSystemPhotoLibraryURL:(id)l sandboxExtension:(id)extension options:(unsigned __int16)options reply:(id)reply
{
  optionsCopy = options;
  v77[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  extensionCopy = extension;
  replyCopy = reply;
  v64 = 0u;
  *sel = 0u;
  v63 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v63) = enabled;
  if (enabled)
  {
    v12 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: setSystemPhotoLibraryURL:sandboxExtension:options:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v63 + 1);
    *(&v63 + 1) = v12;

    os_activity_scope_enter(v12, (&v64 + 8));
  }

  systemLibraryURL = [MEMORY[0x1E69BF2A8] systemLibraryURL];
  if ((optionsCopy & 3) == 2)
  {
    if (!lCopy)
    {
      systemLibraryURL2 = [MEMORY[0x1E69BF2A8] systemLibraryURL];
      v21 = 0;
      v15 = 0;
      v56 = 1;
      if (!systemLibraryURL)
      {
        goto LABEL_32;
      }

LABEL_24:
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [systemLibraryURL path];
      v28 = [defaultManager fileExistsAtPath:path];

      if (v28)
      {
        if ([PLCacheDeleteSupport clearPurgeableFlagsForAllResourcesInPhotoLibraryURL:systemLibraryURL])
        {
          v29 = PLBackendGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v67 = systemLibraryURL;
            v30 = "Cleared purgeable flags for %@";
            v31 = v29;
            v32 = OS_LOG_TYPE_DEFAULT;
LABEL_30:
            _os_log_impl(&dword_19BF1F000, v31, v32, v30, buf, 0xCu);
          }
        }

        else
        {
          v29 = PLBackendGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v67 = systemLibraryURL;
            v30 = "Failed to clear purgeable flags for %@";
            v31 = v29;
            v32 = OS_LOG_TYPE_ERROR;
            goto LABEL_30;
          }
        }
      }

LABEL_32:
      v33 = MEMORY[0x1E696ABC0];
      v72 = *MEMORY[0x1E696A588];
      v73 = @"User is changing the system photo library";
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      v22 = [v33 errorWithDomain:*MEMORY[0x1E69BFF48] code:41019 userInfo:v34];

      v54 = os_transaction_create();
      if (systemLibraryURL)
      {
        v35 = [(PLPhotoLibraryBundleController *)self->_bundleController openBundleAtLibraryURL:systemLibraryURL, v54];
        [v35 invalidateClientConnectionsWithReason:v22];
        libraryServicesManager = [v35 libraryServicesManager];
        v61 = 0;
        v37 = [libraryServicesManager willBecomeNonSyncablePhotoLibrary:&v61];
        v38 = v61;

        if ((v37 & 1) == 0)
        {
          v39 = PLBackendGetLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v67 = systemLibraryURL;
            v68 = 2112;
            v69 = v38;
            _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "SPL Change: failed to prepare previous SPL %@ to become non-SPL: %@", buf, 0x16u);
          }

          [v35 clearInvalidateClientsReason];
          v35 = 0;
        }
      }

      else
      {
        v35 = 0;
      }

      if (v56)
      {
        goto LABEL_49;
      }

      v40 = [(PLPhotoLibraryBundleController *)self->_bundleController bundleForLibraryURL:v21];
      if (v40)
      {
        v41 = PLBackendGetLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v67 = v21;
          _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_DEFAULT, "SPL Change: Shutting down library for restart as new SPL at %@", buf, 0xCu);
        }

        [(PLPhotoLibraryBundleController *)self->_bundleController shutdownBundle:v40 reason:v22];
      }

      if (v15 || (v60 = 0, v42 = [MEMORY[0x1E69BF2A8] setSystemLibraryURL:v21 options:optionsCopy error:&v60], v15 = v60, !v42))
      {
LABEL_49:
        libraryServicesManager2 = [v35 libraryServicesManager];
        [libraryServicesManager2 didRemainSyncablePhotoLibrary];
        v47 = 0;
      }

      else
      {
        v43 = PLBackendGetLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v67 = v21;
          v68 = 2112;
          v69 = systemLibraryURL;
          _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "SPL Changed to: %@ from: %@", buf, 0x16u);
        }

        v44 = MEMORY[0x1E69BF2A8];
        path2 = [systemLibraryURL path];
        [v44 recordPrevSystemLibraryPath:path2];

        libraryServicesManager2 = [v35 libraryServicesManager];
        [libraryServicesManager2 didBecomeNonSyncablePhotoLibrary];
        v47 = 1;
      }

      if (systemLibraryURL2)
      {
        mEMORY[0x1E69BF278] = [MEMORY[0x1E69BF278] sharedBookmarkManager];
        [mEMORY[0x1E69BF278] removeSSBForLibraryURL:systemLibraryURL2];
      }

      if ((v47 & 1) == 0)
      {
        v49 = PLBackendGetLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v67 = v15;
          v68 = 2112;
          v69 = v21;
          v70 = 2112;
          v71 = systemLibraryURL;
          _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_ERROR, "Unable to set the System Photo Library URL (error = %@) to %@ from %@", buf, 0x20u);
        }
      }

      [v35 clearInvalidateClientsReason];
      replyCopy[2](replyCopy, v15);

      lCopy = v21;
      goto LABEL_57;
    }

    lCopy = lCopy;
    v15 = 0;
    systemLibraryURL2 = lCopy;
  }

  else
  {
    if ([MEMORY[0x1E69BF238] fileURL:lCopy isEqualToFileURL:systemLibraryURL])
    {
      replyCopy[2](replyCopy, 0);
      v15 = 0;
      goto LABEL_58;
    }

    v15 = 0;
    if (lCopy && extensionCopy)
    {
      mEMORY[0x1E69BF278]2 = [MEMORY[0x1E69BF278] sharedBookmarkManager];
      v62 = 0;
      v17 = [mEMORY[0x1E69BF278]2 URLFromClientLibraryURL:lCopy sandboxExtension:extensionCopy error:&v62];
      v18 = v62;

      v15 = 0;
      if (!v17 && v18)
      {
        v19 = MEMORY[0x1E696ABC0];
        v76 = *MEMORY[0x1E696AA08];
        v77[0] = v18;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
        v15 = [v19 errorWithDomain:*MEMORY[0x1E69BFF48] code:41027 userInfo:v20];
      }
    }

    else
    {
      v17 = lCopy;
    }

    v21 = 0;
    if (!v17)
    {
      v56 = 1;
      systemLibraryURL2 = 0;
      if (!systemLibraryURL)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    lCopy = v17;
    systemLibraryURL2 = 0;
  }

  v22 = [objc_alloc(MEMORY[0x1E69BF2A0]) initWithLibraryURL:lCopy];
  if (![v22 isAppLibraryPathManager])
  {

    v56 = 0;
    v21 = lCopy;
    if (!systemLibraryURL)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  v23 = MEMORY[0x1E696ABC0];
  v74 = *MEMORY[0x1E696A278];
  v75 = @"Cannot set an app library as the SPL";
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
  v25 = [v23 errorWithDomain:*MEMORY[0x1E69BFF48] code:41019 userInfo:v24];

  replyCopy[2](replyCopy, v25);
  v15 = v25;
LABEL_57:

LABEL_58:
  if (v63 == 1)
  {
    os_activity_scope_leave((&v64 + 8));
  }

  if (v64)
  {
    v50 = PLRequestGetLog();
    v51 = v50;
    v52 = v64;
    if ((v64 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v67 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v51, OS_SIGNPOST_INTERVAL_END, v52, "Cleared purgeable flags for %@", "%{public}s", buf, 0xCu);
    }
  }
}

- (PLAssetsdLibraryManagementService)initWithConnectionAuthorization:(id)authorization bundleController:(id)controller
{
  authorizationCopy = authorization;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = PLAssetsdLibraryManagementService;
  v9 = [(PLAssetsdLibraryManagementService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connectionAuthorization, authorization);
    objc_storeStrong(&v10->_bundleController, controller);
  }

  return v10;
}

@end