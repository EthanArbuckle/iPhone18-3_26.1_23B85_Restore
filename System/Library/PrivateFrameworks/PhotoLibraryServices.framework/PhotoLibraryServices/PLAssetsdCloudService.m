@interface PLAssetsdCloudService
- (PLAssetsdCloudService)initWithLibraryServicesManager:(id)a3 lazyResourceDownloader:(id)a4;
- (void)asynchronousStartPreheatingCPLDownloadForAssets:(id)a3 doneTokens:(id)a4 format:(unint64_t)a5 reply:(id)a6;
- (void)asynchronousStopPreheatingCPLDownloadForAssetsWithTaskIdentifiers:(id)a3 reply:(id)a4;
- (void)cancelCPLDownloadTaskWithIdentifier:(id)a3 reply:(id)a4;
- (void)computeStableHashesOfAssetWithObjectURI:(id)a3 synchronously:(BOOL)a4 reply:(id)a5;
- (void)downloadCloudPhotoLibraryAssetWithObjectURI:(id)a3 taskIdentifier:(id)a4 resourceType:(unint64_t)a5 HighPriority:(BOOL)a6 trackCPLDownload:(BOOL)a7 downloadIsTransient:(BOOL)a8 reply:(id)a9;
- (void)requestVideoPlaybackURLForCloudSharedAsset:(id)a3 mediaAssetType:(unint64_t)a4 reply:(id)a5;
@end

@implementation PLAssetsdCloudService

- (void)computeStableHashesOfAssetWithObjectURI:(id)a3 synchronously:(BOOL)a4 reply:(id)a5
{
  v6 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v32 = 0u;
  *sel = 0u;
  v31 = 0u;
  v10 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v31) = v10;
  if (v10)
  {
    v11 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: computeStableHashesOfAssetWithObjectURI:synchronously:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v31 + 1);
    *(&v31 + 1) = v11;

    os_activity_scope_enter(v11, (&v32 + 8));
  }

  v13 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v14 = [v13 databaseContext];
  v15 = [v14 newShortLivedLibraryWithName:"-[PLAssetsdCloudService computeStableHashesOfAssetWithObjectURI:synchronously:reply:]"];

  v16 = [v15 managedObjectContext];
  v17 = [v16 persistentStoreCoordinator];
  v18 = [v17 managedObjectIDForURIRepresentation:v8];

  if (v18)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__PLAssetsdCloudService_computeStableHashesOfAssetWithObjectURI_synchronously_reply___block_invoke;
    aBlock[3] = &unk_1E7576F38;
    v28 = v16;
    v29 = v18;
    v30 = v9;
    v19 = _Block_copy(aBlock);
    if (v6)
    {
      [v15 performBlockAndWait:v19];
    }

    else
    {
      [v15 performBlock:v19];
    }

    v22 = v28;
  }

  else
  {
    v20 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v35 = @"Invalid objectID value";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x1E69BFF48] code:41008 userInfo:v21];

    (*(v9 + 2))(v9, 0, 0, v22);
  }

  if (v31 == 1)
  {
    os_activity_scope_leave((&v32 + 8));
  }

  if (v32)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    v25 = v32;
    if ((v32 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v37 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __85__PLAssetsdCloudService_computeStableHashesOfAssetWithObjectURI_synchronously_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectWithID:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v7 = 0;
    v8 = 0;
    v4 = [v2 originalStableHashCacheIfNecessaryAndAdjustedStableHash:&v8 error:&v7];
    v5 = v8;
    v6 = v7;
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41001 userInfo:0];
    v4 = 0;
    v5 = 0;
  }

  if (!(v4 | v6))
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41001 userInfo:0];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)asynchronousStopPreheatingCPLDownloadForAssetsWithTaskIdentifiers:(id)a3 reply:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  *sel = 0u;
  v13 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v13) = v8;
  if (v8)
  {
    *(&v13 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: asynchronousStopPreheatingCPLDownloadForAssetsWithTaskIdentifiers:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v13 + 1), (&v15 + 8));
  }

  v9 = [(PLAssetsdCloudService *)self resourceDownloader];
  [v9 cancelCPLDownloadTasks:v6 completionHandler:v7];

  if (v14 == 1)
  {
    os_activity_scope_leave((&v15 + 8));
  }

  if (v15)
  {
    v10 = PLRequestGetLog();
    v11 = v10;
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v18 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)asynchronousStartPreheatingCPLDownloadForAssets:(id)a3 doneTokens:(id)a4 format:(unint64_t)a5 reply:(id)a6
{
  v7 = a5;
  v49 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v43 = 0u;
  *sel = 0u;
  v42 = 0u;
  v13 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v42) = v13;
  if (v13)
  {
    v14 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: asynchronousStartPreheatingCPLDownloadForAssets:doneTokens:format:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v15 = *(&v42 + 1);
    *(&v42 + 1) = v14;

    os_activity_scope_enter(v14, (&v43 + 8));
  }

  v16 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v17 = [v16 isCloudPhotoLibraryEnabled];

  v18 = [v10 count];
  if (v18 == [v11 count])
  {
    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:v18];
    if (v18)
    {
      v20 = v18;
      do
      {
        [v19 addObject:&stru_1F0F06D80];
        --v20;
      }

      while (v20);
    }

    if ((v17 & 1) == 0)
    {
      v12[2](v12, 1, v19, 0);
    }

    v21 = [MEMORY[0x1E69BF260] formatWithID:v7];
    v22 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudService asynchronousStartPreheatingCPLDownloadForAssets:doneTokens:format:reply:]"];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __97__PLAssetsdCloudService_asynchronousStartPreheatingCPLDownloadForAssets_doneTokens_format_reply___block_invoke;
    v33[3] = &unk_1E756AD38;
    v41 = v18;
    v34 = v10;
    v35 = v11;
    v23 = v22;
    v36 = v23;
    v24 = v21;
    v37 = v24;
    v38 = self;
    v25 = v19;
    v39 = v25;
    v40 = v12;
    [v23 performBlock:v33 withPriority:1];
  }

  else
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mismatch between the number of asset uuids and tokens, assetUUIDs count: %tu, doneTokens count: %tu", v18, objc_msgSend(v11, "count")];
    v26 = PLImageManagerGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v48 = v25;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v27 = MEMORY[0x1E696ABC0];
    v45 = *MEMORY[0x1E696A578];
    v46 = v25;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v24 = [v27 errorWithDomain:*MEMORY[0x1E69BFF48] code:41008 userInfo:v28];

    (v12)[2](v12, 0, 0, v24);
  }

  if (v42 == 1)
  {
    os_activity_scope_leave((&v43 + 8));
  }

  if (v43)
  {
    v29 = PLRequestGetLog();
    v30 = v29;
    v31 = v43;
    if ((v43 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v48 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v30, OS_SIGNPOST_INTERVAL_END, v31, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

uint64_t __97__PLAssetsdCloudService_asynchronousStartPreheatingCPLDownloadForAssets_doneTokens_format_reply___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 88))
  {
    v2 = 0;
    v3 = off_1E7560000;
    while (1)
    {
      v4 = [*(a1 + 32) objectAtIndexedSubscript:v2];
      v5 = [*(a1 + 40) objectAtIndexedSubscript:v2];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v6 = PLImageManagerGetLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          *buf = 138412546;
          v25 = v16;
          v26 = 2112;
          v27 = v18;
          _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Received Non-NSString element over xpc, assetuuid: %@, doneToken: %@", buf, 0x16u);
        }

        goto LABEL_19;
      }

      v6 = [(__objc2_class *)v3[53] assetWithUUID:v4 inLibrary:*(a1 + 48)];
      if (([v6 isCloudSharedAsset]& 1) == 0)
      {
        break;
      }

LABEL_19:

      if (++v2 >= *(a1 + 88))
      {
        return (*(*(a1 + 80) + 16))();
      }
    }

    v7 = *(a1 + 56);
    v23 = 0;
    v8 = [PLResourceChooser cloudResourceTypeForAsset:v6 format:v7 filePath:&v23 imageType:0];
    v22 = v23;
    v9 = PLImageManagerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 56) shortDescription];
      v10 = v21 = v8;
      v11 = [PLCloudPhotoLibraryManager descriptionForResourceType:v21];
      v12 = [MEMORY[0x1E696AD98] numberWithInt:v22 != 0];
      *buf = 138413058;
      v25 = v4;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Preheated an asset (uuid: %@) for format (%@), resulting cloud resource type: %@, image is on disk: %@", buf, 0x2Au);

      v3 = off_1E7560000;
      v8 = v21;
    }

    if (v8)
    {
      if (v22)
      {
LABEL_18:

        goto LABEL_19;
      }

      v13 = [*(a1 + 64) resourceDownloader];
      LOBYTE(v20) = 0;
      v14 = [v13 startCPLDownloadForAsset:v6 resourceType:v8 masterResourceOnly:0 highPriority:1 track:1 notify:0 transient:v20 proposedTaskIdentifier:0 doneToken:v5 error:0];

      if (v14)
      {
        [*(a1 + 72) replaceObjectAtIndex:v2 withObject:v14];
      }
    }

    else
    {
      v14 = PLImageManagerGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v4;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "During preheating, expected to find cloud resource for asset (uuid: %@) but found nothing", buf, 0xCu);
      }
    }

    goto LABEL_18;
  }

  return (*(*(a1 + 80) + 16))();
}

- (void)downloadCloudPhotoLibraryAssetWithObjectURI:(id)a3 taskIdentifier:(id)a4 resourceType:(unint64_t)a5 HighPriority:(BOOL)a6 trackCPLDownload:(BOOL)a7 downloadIsTransient:(BOOL)a8 reply:(id)a9
{
  v51 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v32 = a4;
  v16 = a9;
  v45 = 0u;
  *sel = 0u;
  v44 = 0u;
  v17 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v44) = v17;
  if (v17)
  {
    v18 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: downloadCloudPhotoLibraryAssetWithObjectURI:taskIdentifier:resourceType:HighPriority:trackCPLDownload:downloadIsTransient:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v19 = *(&v44 + 1);
    *(&v44 + 1) = v18;

    os_activity_scope_enter(v18, (&v45 + 8));
  }

  v20 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v21 = [v20 persistentStoreCoordinator];

  v22 = [v21 managedObjectIDForURIRepresentation:v15];
  v23 = v22;
  if (v22 && ([v22 isTemporaryID] & 1) == 0)
  {
    v27 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudService downloadCloudPhotoLibraryAssetWithObjectURI:taskIdentifier:resourceType:HighPriority:trackCPLDownload:downloadIsTransient:reply:]"];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __153__PLAssetsdCloudService_downloadCloudPhotoLibraryAssetWithObjectURI_taskIdentifier_resourceType_HighPriority_trackCPLDownload_downloadIsTransient_reply___block_invoke;
    v34[3] = &unk_1E756AD10;
    v35 = v23;
    v26 = v27;
    v36 = v26;
    v37 = self;
    v40 = a5;
    v41 = a6;
    v42 = a7;
    v43 = a8;
    v38 = v33;
    v39 = v16;
    [v26 performBlock:v34 withPriority:1];
  }

  else
  {
    v24 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v48 = @"Invalid object URI";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x1E69BFF48] code:41008 userInfo:v25];

    (*(v16 + 2))(v16, 0, 0, 0, v26);
  }

  if (v44 == 1)
  {
    os_activity_scope_leave((&v45 + 8));
  }

  if (v45)
  {
    v28 = PLRequestGetLog();
    v29 = v28;
    v30 = v45;
    if ((v45 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v50 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v29, OS_SIGNPOST_INTERVAL_END, v30, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __153__PLAssetsdCloudService_downloadCloudPhotoLibraryAssetWithObjectURI_taskIdentifier_resourceType_HighPriority_trackCPLDownload_downloadIsTransient_reply___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithObjectID:*(a1 + 32) inLibrary:*(a1 + 40)];
  v3 = v2;
  if (v2 && ([v2 isDeleted] & 1) == 0)
  {
    v8 = [*(a1 + 48) resourceDownloader];
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    v11 = *(a1 + 81);
    v12 = *(a1 + 82);
    v13 = *(a1 + 56);
    v17 = 0;
    LOBYTE(v16) = v12;
    v14 = [v8 startCPLDownloadForAsset:v3 resourceType:v9 masterResourceOnly:0 highPriority:v10 track:v11 notify:v11 transient:v16 proposedTaskIdentifier:v13 doneToken:0 error:&v17];
    v7 = v17;

    if (*(a1 + 81) == 1)
    {
      v15 = [PLCloudPhotoLibraryManager descriptionForResourceType:*(a1 + 72)];
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = *MEMORY[0x1E69BFF48];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"Asset is invalid.";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v7 = [v4 errorWithDomain:v5 code:41008 userInfo:v6];

    (*(*(a1 + 64) + 16))();
  }
}

- (void)cancelCPLDownloadTaskWithIdentifier:(id)a3 reply:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  *sel = 0u;
  v13 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v13) = v8;
  if (v8)
  {
    *(&v13 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: cancelCPLDownloadTaskWithIdentifier:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v13 + 1), (&v15 + 8));
  }

  v9 = [(PLAssetsdCloudService *)self resourceDownloader];
  [v9 cancelCPLDownloadTaskWithIdentifier:v6 completionHandler:v7];

  if (v14 == 1)
  {
    os_activity_scope_leave((&v15 + 8));
  }

  if (v15)
  {
    v10 = PLRequestGetLog();
    v11 = v10;
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v18 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)requestVideoPlaybackURLForCloudSharedAsset:(id)a3 mediaAssetType:(unint64_t)a4 reply:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v33 = 0u;
  *sel = 0u;
  v32 = 0u;
  v11 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v32) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: requestVideoPlaybackURLForCloudSharedAsset:mediaAssetType:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v32 + 1);
    *(&v32 + 1) = v12;

    os_activity_scope_enter(v12, (&v33 + 8));
  }

  if (!v9)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PLAssetsdCloudService.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"objectURI"}];
  }

  v14 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v15 = [v14 persistentStoreCoordinator];

  v16 = [v15 managedObjectIDForURIRepresentation:v9];
  v17 = v16;
  if (v16 && ([v16 isTemporaryID] & 1) == 0)
  {
    v21 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdCloudService requestVideoPlaybackURLForCloudSharedAsset:mediaAssetType:reply:]"];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __89__PLAssetsdCloudService_requestVideoPlaybackURLForCloudSharedAsset_mediaAssetType_reply___block_invoke;
    v27[3] = &unk_1E7576078;
    v28 = v17;
    v20 = v21;
    v29 = v20;
    v31 = a4;
    v30 = v10;
    [v20 performBlockAndWait:v27];
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v36 = @"Invalid object URI";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v20 = [v18 errorWithDomain:*MEMORY[0x1E69BFF48] code:41008 userInfo:v19];

    (*(v10 + 2))(v10, 0, 0, v20);
  }

  if (v32 == 1)
  {
    os_activity_scope_leave((&v33 + 8));
  }

  if (v33)
  {
    v22 = PLRequestGetLog();
    v23 = v22;
    v24 = v33;
    if ((v33 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v38 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __89__PLAssetsdCloudService_requestVideoPlaybackURLForCloudSharedAsset_mediaAssetType_reply___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithObjectID:*(a1 + 32) inLibrary:*(a1 + 40)];
  v3 = v2;
  if (v2 && ([v2 isDeleted] & 1) == 0 && objc_msgSend(v3, "isCloudSharedAsset"))
  {
    v4 = *(a1 + 56);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __89__PLAssetsdCloudService_requestVideoPlaybackURLForCloudSharedAsset_mediaAssetType_reply___block_invoke_2;
    v9[3] = &unk_1E7577C08;
    v10 = v3;
    v11 = *(a1 + 48);
    [PLPhotoSharingHelper requestVideoPlaybackURLForAsset:v10 videoType:v4 completion:v9];

    v5 = v10;
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E69BFF48];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = @"Invalid asset to request streaming video URL";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v5 = [v6 errorWithDomain:v7 code:41003 userInfo:v8];

    (*(*(a1 + 48) + 16))();
  }
}

void __89__PLAssetsdCloudService_requestVideoPlaybackURLForCloudSharedAsset_mediaAssetType_reply___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) cachedNonPersistedVideoPlaybackURL];
  v2 = [*(a1 + 32) cachedNonPersistedVideoPlaybackURLError];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v2 == 0, v3, v2);
}

- (PLAssetsdCloudService)initWithLibraryServicesManager:(id)a3 lazyResourceDownloader:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PLAssetsdCloudService;
  v8 = [(PLAbstractLibraryServicesManagerService *)&v11 initWithLibraryServicesManager:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lazyResourceDownloader, a4);
  }

  return v9;
}

@end