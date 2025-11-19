@interface PLAssetsdResourceService
- (BOOL)_allowSandboxExtensionForAsset:(id)a3;
- (BOOL)_allowSandboxExtensionForSessionIdentifier:(id)a3 captureSessionState:(id)a4;
- (BOOL)_consolidateResource:(id)a3 assetUUID:(id)a4 bundleScope:(unsigned __int16)a5 error:(id *)a6;
- (PLAssetsdResourceService)initWithLibraryServicesManager:(id)a3 connectionAuthorization:(id)a4 resourceDownloader:(id)a5;
- (id)_typeFromPathConstrainedToImageOrMovie:(id)a3;
- (id)consolidateAssets:(id)a3 reply:(id)a4;
- (void)addAssetGroupWithName:(id)a3 reply:(id)a4;
- (void)addAssetWithURL:(id)a3 toAlbum:(id)a4 reply:(id)a5;
- (void)asynchronousAdjustmentDataForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 reply:(id)a5;
- (void)downloadCloudSharedAsset:(id)a3 wantedPlaceholderkind:(signed __int16)a4 shouldPrioritize:(BOOL)a5 shouldExtendTimer:(BOOL)a6 reply:(id)a7;
- (void)estimatedFileLengthOfVideo:(id)a3 fallbackFilePath:(id)a4 exportPreset:(id)a5 exportProperties:(id)a6 reply:(id)a7;
- (void)fileDescriptorForPersistentURL:(id)a3 withAdjustments:(BOOL)a4 reply:(id)a5;
- (void)filePathForPersistentURL:(id)a3 withAdjustments:(BOOL)a4 reply:(id)a5;
- (void)getSandboxExtensionForFileSystemBookmark:(id)a3 reply:(id)a4;
- (void)getSandboxExtensionsForAssetWithUUID:(id)a3 reply:(id)a4;
- (void)imageDataForAssetWithObjectURI:(id)a3 formatID:(unsigned __int16)a4 allowPlaceholder:(BOOL)a5 wantURLOnly:(BOOL)a6 networkAccessAllowed:(BOOL)a7 trackCPLDownload:(BOOL)a8 reply:(id)a9;
- (void)projectExtensionDataForProjectUuid:(id)a3 reply:(id)a4;
- (void)sandboxExtensionURLForPersistentURL:(id)a3 withAdjustments:(BOOL)a4 reply:(id)a5;
- (void)saveAssetWithDataAndPorts:(id)a3 imageSurface:(id)a4 previewImageSurface:(id)a5 reply:(id)a6;
- (void)translatePersistentURL:(id)a3 withAdjustments:(BOOL)a4 handler:(id)a5;
- (void)updateInternalResourcePath:(id)a3 objectURI:(id)a4 sandboxExtension:(id)a5 reply:(id)a6;
@end

@implementation PLAssetsdResourceService

- (void)projectExtensionDataForProjectUuid:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdResourceService projectExtensionDataForProjectUuid:reply:]"];
  v9 = v8;
  if (v8)
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__62036;
    v24[4] = __Block_byref_object_dispose__62037;
    v25 = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__62036;
    v22[4] = __Block_byref_object_dispose__62037;
    v23 = 0;
    v10 = [v8 managedObjectContext];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__PLAssetsdResourceService_projectExtensionDataForProjectUuid_reply___block_invoke;
    v17[3] = &unk_1E7578898;
    v18 = v6;
    v11 = v10;
    v19 = v11;
    v20 = v24;
    v21 = v22;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__PLAssetsdResourceService_projectExtensionDataForProjectUuid_reply___block_invoke_2;
    v13[3] = &unk_1E7575F50;
    v14 = v7;
    v15 = v24;
    v16 = v22;
    [v9 performBlock:v17 completionHandler:v13];

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(v24, 8);
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41012 userInfo:0];
    (*(v7 + 2))(v7, 0, v12);
  }
}

void __69__PLAssetsdResourceService_projectExtensionDataForProjectUuid_reply___block_invoke(void *a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLProjectAlbum entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"uuid", a1[4]];
  [v4 setPredicate:v5];

  [v4 setFetchLimit:1];
  v18[0] = @"projectData";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v4 setPropertiesToFetch:v6];

  [v4 setResultType:2];
  v7 = a1[5];
  v17 = 0;
  v8 = [v7 executeFetchRequest:v4 error:&v17];
  v9 = v17;
  v10 = v9;
  if (v8)
  {
    v11 = [v8 firstObject];
    v12 = [v11 objectForKeyedSubscript:@"projectData"];
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    v15 = *(a1[7] + 8);
    v16 = v9;
    v11 = *(v15 + 40);
    *(v15 + 40) = v16;
  }
}

- (void)updateInternalResourcePath:(id)a3 objectURI:(id)a4 sandboxExtension:(id)a5 reply:(id)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v38 = 0u;
  *sel = 0u;
  v37 = 0u;
  v14 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v37) = v14;
  if (v14)
  {
    v15 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: updateInternalResourcePath:objectURI:sandboxExtension:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v16 = *(&v37 + 1);
    *(&v37 + 1) = v15;

    os_activity_scope_enter(v15, (&v38 + 8));
  }

  v17 = v12;
  [v12 bytes];
  v18 = sandbox_extension_consume();
  if (v18 == -1)
  {
    v22 = *__error();
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = v23;
    if (v10)
    {
      [v23 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696A368]];
    }

    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v22 userInfo:v20];
    v24 = PLBackendGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = v21;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "sandbox_extension_consume failed with error %@", buf, 0xCu);
    }

    v13[2](v13, 0, v21);
  }

  else
  {
    v19 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    v20 = [v19 databaseContext];

    if (v20)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __88__PLAssetsdResourceService_updateInternalResourcePath_objectURI_sandboxExtension_reply___block_invoke;
      v32[3] = &unk_1E756EE08;
      v33 = v11;
      v34 = v10;
      v36 = v18;
      v35 = v13;
      [v20 perform:v32 withName:"-[PLAssetsdResourceService updateInternalResourcePath:objectURI:sandboxExtension:reply:]"];

      v21 = v33;
    }

    else
    {
      sandbox_extension_release();
      v25 = MEMORY[0x1E696ABC0];
      v40 = *MEMORY[0x1E696A578];
      v41 = @"No database context";
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v21 = [v25 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v26];

      v27 = PLBackendGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v21;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Error updating internal resource: %@", buf, 0xCu);
      }

      v13[2](v13, 0, v21);
      v20 = 0;
    }
  }

  if (v37 == 1)
  {
    os_activity_scope_leave((&v38 + 8));
  }

  if (v38)
  {
    v28 = PLRequestGetLog();
    v29 = v28;
    v30 = v38;
    if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v43 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v29, OS_SIGNPOST_INTERVAL_END, v30, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __88__PLAssetsdResourceService_updateInternalResourcePath_objectURI_sandboxExtension_reply___block_invoke(uint64_t a1, void *a2)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 managedObjectContext];
  v4 = [v3 persistentStoreCoordinator];
  v5 = [v4 managedObjectIDForURIRepresentation:*(a1 + 32)];
  v40 = 0;
  v6 = [v3 existingObjectWithID:v5 error:&v40];
  v7 = v40;
  if (!v6)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot find internal resource with URI %@", *(a1 + 32)];
    [v9 setObject:v19 forKeyedSubscript:*MEMORY[0x1E696A588]];

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41004 userInfo:v9];
    goto LABEL_20;
  }

  v8 = [v6 dataLength];
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(a1 + 40)];
  v39 = 0;
  v10 = *MEMORY[0x1E695DB50];
  v38 = 0;
  v11 = [v9 getResourceValue:&v39 forKey:v10 error:&v38];
  v12 = v39;
  v37 = v38;
  if (!v11)
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v42 = v9;
      v43 = 2112;
      v44 = v37;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Get file size for %@ failed with error %@", buf, 0x16u);
    }

    v18 = v37;
    if (v18)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  if (v8 == [v12 longLongValue] || (v35 = MEMORY[0x1E696ABC0], v13 = *MEMORY[0x1E69BFF48], v45 = *MEMORY[0x1E696A278], v46[0] = @"Reconnect attempt failed because file size does not match", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v46, &v45, 1), v14 = v5, v15 = v12, v16 = v7, v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "errorWithDomain:code:userInfo:", v13, 47013, v17), v18 = objc_claimAutoreleasedReturnValue(), v17, v7 = v16, v12 = v15, v5 = v14, !v18))
  {
LABEL_10:
    v34 = v7;
    v36 = v4;
    v21 = [PLFileSystemBookmark fileSystemBookmarkFromURL:v9 context:v3];
    v22 = [PLFileSystemVolume volumeForURL:v9 context:v3];
    v23 = v22;
    if (v21 && v22)
    {
      [v6 setFileSystemVolume:v22];
      v24 = [v6 fileSystemBookmark];
      [v6 setFileSystemBookmark:v21];
      v25 = [*(a1 + 40) stringByDeletingLastPathComponent];
      [v6 asset];
      v26 = v33 = v12;
      [v26 setDirectory:v25];

      v27 = -[PLPrimaryResourceDataStoreReferenceFileKey initWithResourceType:]([PLPrimaryResourceDataStoreReferenceFileKey alloc], "initWithResourceType:", [v6 resourceType]);
      v28 = [(PLPrimaryResourceDataStoreReferenceFileKey *)v27 keyData];
      [v6 setDataStoreKeyData:v28];

      v29 = [v24 managedObjectContext];
      [v29 deleteObject:v24];

      v12 = v33;
      v18 = 0;
    }

    else
    {
      v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v24 = v30;
      v31 = *(a1 + 40);
      if (v31)
      {
        [v30 setObject:v31 forKeyedSubscript:*MEMORY[0x1E696A368]];
      }

      if (v9)
      {
        [v24 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A998]];
      }

      [v24 setObject:@"Unable to create bookmark and volume" forKeyedSubscript:*MEMORY[0x1E696A588]];
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41014 userInfo:v24];
    }

    v7 = v34;
    v4 = v36;
  }

LABEL_19:

LABEL_20:
  if (v18)
  {
    v32 = PLBackendGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v18;
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Unable to update internal resource. Error: %@", buf, 0xCu);
    }
  }

  else
  {
    v18 = MOCSaveAndReturnError(v3);
  }

  sandbox_extension_release();
  (*(*(a1 + 48) + 16))(*(a1 + 48), v18 == 0, v18);
}

- (id)consolidateAssets:(id)a3 reply:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v41 = 0u;
  *sel = 0u;
  v40 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v40) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: consolidateAssets:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v40 + 1);
    *(&v40 + 1) = v9;

    os_activity_scope_enter(v9, (&v41 + 8));
  }

  v11 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(v6, "count")}];
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdResourceService consolidateAssets:reply:]"];
  if (v13)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __52__PLAssetsdResourceService_consolidateAssets_reply___block_invoke;
    v29[3] = &unk_1E75738F8;
    v30 = v6;
    v31 = v13;
    v14 = v11;
    v32 = v14;
    v33 = self;
    v34 = v12;
    v35 = v7;
    [v31 performBlock:v29];
    v15 = v14;

    v16 = v30;
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41012 userInfo:0];
    v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v28 = v7;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = v6;
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v19)
    {
      v20 = *v37;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [v17 setObject:v16 forKeyedSubscript:*(*(&v36 + 1) + 8 * i)];
          [v11 setCompletedUnitCount:{objc_msgSend(v11, "completedUnitCount") + 1}];
        }

        v19 = [v18 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v19);
    }

    v7 = v28;
    v28[2](v28, v17);
    v22 = v11;
  }

  if (v40 == 1)
  {
    os_activity_scope_leave((&v41 + 8));
  }

  if (v41)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    v25 = v41;
    if ((v41 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v45 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v11;
}

void __52__PLAssetsdResourceService_consolidateAssets_reply___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  [PLManagedAsset assetsWithUUIDs:*(a1 + 32) options:0 inLibrary:*(a1 + 40)];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v60 = 0u;
  v2 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v58;
    v45 = *MEMORY[0x1E69BFF48];
    v42 = *MEMORY[0x1E696A578];
    *&v3 = 138543362;
    v41 = v3;
    v46 = *v58;
    do
    {
      v6 = 0;
      v43 = v4;
      do
      {
        if (*v58 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v57 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v51 = v7;
        if ([*(a1 + 48) isCancelled])
        {
          v9 = MEMORY[0x1E696ABC0];
          v63 = v42;
          v64 = @"Consolidate operation cancelled";
          v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          v11 = [v9 errorWithDomain:v45 code:41001 userInfo:v10];
          v12 = 0;
        }

        else
        {
          v47 = v8;
          v48 = v6;
          v13 = [v7 modernResources];
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v10 = v13;
          v14 = [v10 countByEnumeratingWithState:&v53 objects:v65 count:16];
          if (v14)
          {
            v15 = v14;
            v11 = 0;
            v49 = v10;
            v50 = 0;
            v16 = *v54;
            while (2)
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v54 != v16)
                {
                  objc_enumerationMutation(v49);
                }

                v18 = *(*(&v53 + 1) + 8 * i);
                v19 = objc_autoreleasePoolPush();
                v20 = [v18 fileSystemBookmark];

                if (v20)
                {
                  v21 = a1;
                  v22 = *(a1 + 56);
                  v23 = [v51 uuid];
                  v24 = [v51 bundleScope];
                  v52 = v11;
                  v25 = [v22 _consolidateResource:v18 assetUUID:v23 bundleScope:v24 error:&v52];
                  v26 = v52;

                  if (!v25)
                  {
                    objc_autoreleasePoolPop(v19);
                    v11 = v26;
                    a1 = v21;
                    v10 = v49;
                    goto LABEL_24;
                  }

                  if ([v18 cplType] == 1)
                  {
                    v27 = v18;

                    v11 = v26;
                    v50 = v27;
                  }

                  else
                  {
                    v11 = v26;
                  }

                  a1 = v21;
                }

                objc_autoreleasePoolPop(v19);
              }

              v10 = v49;
              v15 = [v49 countByEnumeratingWithState:&v53 objects:v65 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v11 = 0;
            v50 = 0;
          }

LABEL_24:

          [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "completedUnitCount") + 1}];
          v5 = v46;
          v8 = v47;
          v4 = v43;
          v6 = v48;
          v12 = v50;
          v7 = v51;
        }

        if (v11)
        {
          goto LABEL_35;
        }

        v28 = [v12 fileURL];
        if (v28)
        {
          v29 = v28;
          v30 = [*(a1 + 40) pathManager];
          v31 = [v29 path];
          v32 = [v31 stringByDeletingLastPathComponent];
          v33 = [v30 assetAbbreviatedMetadataDirectoryForDirectory:v32 type:32 bundleScope:{objc_msgSend(v51, "bundleScope")}];

          v34 = [v29 lastPathComponent];
          [v51 setDirectory:v33];
          [v51 setFilename:v34];
          [v51 setSavedAssetType:{objc_msgSend(MEMORY[0x1E69BF328], "defaultSavedAssetTypeForConsolidatedAssets")}];
          [v51 recalculateImageRequestHints];
          [v51 persistMetadataToFilesystem];

          v5 = v46;
        }

        else
        {
          v36 = PLBackendGetLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = [v51 uuid];
            *buf = v41;
            v62 = v37;
            _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "No mainFileURL for asset %{public}@", buf, 0xCu);
          }

          v38 = [MEMORY[0x1E696ABC0] errorWithDomain:v45 code:41004 userInfo:0];
          if (v38)
          {
            v11 = v38;
LABEL_34:
            v7 = v51;
LABEL_35:
            v39 = *(a1 + 64);
            v40 = [v7 uuid];
            [v39 setObject:v11 forKeyedSubscript:v40];

            goto LABEL_36;
          }
        }

        v35 = [*(a1 + 40) managedObjectContext];
        v11 = MOCSaveAndReturnError(v35);

        if (v11)
        {
          goto LABEL_34;
        }

LABEL_36:

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 72) + 16))();
}

- (BOOL)_consolidateResource:(id)a3 assetUUID:(id)a4 bundleScope:(unsigned __int16)a5 error:(id *)a6
{
  v29 = a5;
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v31 = a4;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__62036;
  v43 = __Block_byref_object_dispose__62037;
  v44 = 0;
  v9 = [v8 fileSystemBookmark];
  v10 = [v9 fileSystemURL];

  if (v10)
  {
    v11 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    v28 = [v11 pathManager];

    v12 = objc_alloc(MEMORY[0x1E69BF298]);
    v13 = [v8 uniformTypeIdentifier];
    v14 = [v13 identifier];
    v15 = [v8 version];
    v16 = [v8 resourceType];
    v17 = [v8 recipeID];
    v18 = [v10 lastPathComponent];
    v19 = [v8 customSuffix];
    v20 = [v12 initWithAssetUuid:v31 bundleScope:v29 uti:v14 resourceVersion:v15 resourceType:v16 recipeID:v17 originalFilename:v18 customSuffix:v19];

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __77__PLAssetsdResourceService__consolidateResource_assetUUID_bundleScope_error___block_invoke;
    v32[3] = &unk_1E756EDE0;
    v33 = v10;
    v34 = v8;
    v38 = v29;
    v21 = v28;
    v35 = v21;
    v37 = &v39;
    v36 = v31;
    [v21 obtainAccessAndWaitWithFileWithIdentifier:v20 mode:2 toURLWithHandler:v32];
  }

  else
  {
    v22 = PLBackendGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v8 objectID];
      *buf = 138543618;
      v46 = v23;
      v47 = 2114;
      v48 = v31;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "No source URL for internal resource %{public}@ for asset uuid %{public}@", buf, 0x16u);
    }

    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41004 userInfo:MEMORY[0x1E695E0F8]];
    v21 = v40[5];
    v40[5] = v24;
  }

  v25 = v40[5];
  if (a6 && v25)
  {
    v25 = v25;
    *a6 = v25;
  }

  v26 = v25 == 0;

  _Block_object_dispose(&v39, 8);
  return v26;
}

void __77__PLAssetsdResourceService__consolidateResource_assetUUID_bundleScope_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (copyfile([*(a1 + 32) fileSystemRepresentation], objc_msgSend(v5, "fileSystemRepresentation"), 0, 0x1000000u))
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
      v8 = *(*(a1 + 64) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    else
    {
      v13 = [*(a1 + 40) fileSystemBookmark];
      v14 = [v13 managedObjectContext];
      [v14 deleteObject:v13];

      [*(a1 + 40) setFileSystemBookmark:0];
      [*(a1 + 40) setFileSystemVolume:0];
      v15 = [PLPrimaryResourceDataStoreUniformFileKey alloc];
      v16 = [v5 path];
      v17 = -[PLPrimaryResourceDataStoreUniformFileKey initWithFilePath:resourceVersion:resourceType:recipeID:bundleScope:pathManager:](v15, "initWithFilePath:resourceVersion:resourceType:recipeID:bundleScope:pathManager:", v16, [*(a1 + 40) version], objc_msgSend(*(a1 + 40), "resourceType"), objc_msgSend(*(a1 + 40), "recipeID"), *(a1 + 72), *(a1 + 48));

      v18 = [(PLPrimaryResourceDataStoreUniformFileKey *)v17 keyData];
      [*(a1 + 40) setDataStoreKeyData:v18];
    }
  }

  else
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 40) objectID];
      v12 = *(a1 + 56);
      v19 = 138543618;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Error obtaining write URL for internal resource %{public}@ for asset UUID %@", &v19, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }
}

- (void)translatePersistentURL:(id)a3 withAdjustments:(BOOL)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!v8)
  {
    (*(v9 + 2))(v9, 0);
  }

  v11 = [v8 scheme];
  if (([v11 isEqualToString:@"ipod-library"] & 1) == 0)
  {

    goto LABEL_8;
  }

  v12 = [getMPMediaLibraryClass() defaultMediaLibrary];
  v13 = [v12 isValidAssetURL:v8];

  if (!v13)
  {
LABEL_8:
    v17 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    v18 = [v17 databaseContext];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__PLAssetsdResourceService_translatePersistentURL_withAdjustments_handler___block_invoke;
    v19[3] = &unk_1E756EDB8;
    v22 = a4;
    v20 = v8;
    v21 = v10;
    [v18 perform:v19 withName:"-[PLAssetsdResourceService translatePersistentURL:withAdjustments:handler:]"];

    goto LABEL_11;
  }

  v14 = [getMPMediaLibraryClass() defaultMediaLibrary];
  v15 = [v14 pathForAssetURL:v8];

  if (v15)
  {
    v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v15 isDirectory:0];
  }

  else
  {
    v16 = 0;
  }

  (v10)[2](v10, v16);

LABEL_11:
}

void __75__PLAssetsdResourceService_translatePersistentURL_withAdjustments_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_10;
  }

  v4 = [PLManagedAsset photoFromAssetURL:*(a1 + 32) photoLibrary:v3];
  if ([v4 isPhoto])
  {
    v9 = 0;
    v5 = [PLResourceChooser fileReservationForLargeDisplayableImageFileForAsset:v4 format:0 allowMetadataSnapshot:0 forceLarge:1 outFilePath:&v9 outImageType:0];
    v6 = v9;
  }

  else
  {
    if (![v4 isVideo])
    {
LABEL_9:

LABEL_10:
      v8 = [PLManagedAsset fileURLFromAssetURL:*(a1 + 32) photoLibrary:v3];
      goto LABEL_11;
    }

    v6 = [v4 pathForVideoFile];
  }

  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:0];

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_11:
  (*(*(a1 + 40) + 16))();
}

- (id)_typeFromPathConstrainedToImageOrMovie:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 pathExtension];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = *MEMORY[0x1E6982EE8];
    v19[0] = *MEMORY[0x1E6982E30];
    v19[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:{2, 0}];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v5 conformingToType:*(*(&v15 + 1) + 8 * v11)];
        v13 = v12;
        if (v12)
        {
          if (![v12 isDynamic])
          {
            break;
          }
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)downloadCloudSharedAsset:(id)a3 wantedPlaceholderkind:(signed __int16)a4 shouldPrioritize:(BOOL)a5 shouldExtendTimer:(BOOL)a6 reply:(id)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a7;
  v40 = 0u;
  *sel = 0u;
  v39 = 0u;
  v14 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v39) = v14;
  if (v14)
  {
    v15 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: downloadCloudSharedAsset:wantedPlaceholderkind:shouldPrioritize:shouldExtendTimer:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v16 = *(&v39 + 1);
    *(&v39 + 1) = v15;

    os_activity_scope_enter(v15, (&v40 + 8));
  }

  v17 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v18 = [v17 persistentStoreCoordinator];

  v19 = [v18 managedObjectIDForURIRepresentation:v12];
  v20 = v19;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v45 = 0x2020000000;
  v46 = 0;
  if (v19 && ([v19 isTemporaryID] & 1) == 0)
  {
    v21 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    v22 = [v21 databaseContext];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __116__PLAssetsdResourceService_downloadCloudSharedAsset_wantedPlaceholderkind_shouldPrioritize_shouldExtendTimer_reply___block_invoke;
    v31[3] = &unk_1E756ED90;
    v32 = v20;
    p_buf = &buf;
    v36 = a4;
    v33 = self;
    v34 = v13;
    v37 = a5;
    v38 = a6;
    [v22 performSync:v31 withName:"-[PLAssetsdResourceService downloadCloudSharedAsset:wantedPlaceholderkind:shouldPrioritize:shouldExtendTimer:reply:]"];
  }

  if ((*(*(&buf + 1) + 24) & 1) == 0)
  {
    v23 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid cloud shared asset for download"];
    v43 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v26 = [v23 errorWithDomain:*MEMORY[0x1E69BFF48] code:41008 userInfo:v25];

    (*(v13 + 2))(v13, 0, 0, v26);
  }

  _Block_object_dispose(&buf, 8);

  if (v39 == 1)
  {
    os_activity_scope_leave((&v40 + 8));
  }

  if (v40)
  {
    v27 = PLRequestGetLog();
    v28 = v27;
    v29 = v40;
    if ((v40 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v28, OS_SIGNPOST_INTERVAL_END, v29, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }
}

void __116__PLAssetsdResourceService_downloadCloudSharedAsset_wantedPlaceholderkind_shouldPrioritize_shouldExtendTimer_reply___block_invoke(uint64_t a1, void *a2)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [PLManagedAsset assetWithObjectID:*(a1 + 32) inLibrary:v3];
  v5 = v4;
  if (v4 && ([v4 isDeleted] & 1) == 0 && objc_msgSend(v5, "isCloudSharedAsset"))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v6 = *(a1 + 64);
    v7 = v6;
    if (v6 <= 0xA && ((1 << v6) & 0x7B8) != 0)
    {
      v8 = [v5 cloudSharedAssetPathForPlaceholderKind:v7];
      if (v8)
      {
        v9 = [MEMORY[0x1E696AC08] defaultManager];
        v10 = [v9 fileExistsAtPath:v8];

        if (v10)
        {
          v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:0];
          (*(*(a1 + 48) + 16))();

LABEL_11:
          goto LABEL_12;
        }
      }
    }

    else
    {
      v12 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A578];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid placeholderKind %d to request cloud shared asset download", v7];
      v33[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v15 = [v12 errorWithDomain:*MEMORY[0x1E69BFF48] code:41008 userInfo:v14];

      (*(*(a1 + 48) + 16))();
      v8 = 0;
    }

    pl_dispatch_once();
    v16 = [v5 uuid];
    v17 = [PLPhotoSharingHelper downloadNotificationForAssetwithUUID:v16 cloudPlaceholderKind:*(a1 + 64)];

    v31 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__62036;
    v29 = __Block_byref_object_dispose__62037;
    v30 = dispatch_group_create();
    dispatch_group_enter(v26[5]);
    v18 = v26[5];
    v19 = NavdRecentLocationsEntitlment_block_invoke_mediaStreamDownloadQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __116__PLAssetsdResourceService_downloadCloudSharedAsset_wantedPlaceholderkind_shouldPrioritize_shouldExtendTimer_reply___block_invoke_3;
    block[3] = &unk_1E7577C08;
    v8 = v8;
    v23 = v8;
    v24 = *(a1 + 48);
    dispatch_group_notify(v18, v19, block);
    v20 = v17;
    [v17 UTF8String];
    v21 = v17;
    pl_notify_register_dispatch();
    dispatch_time(0, 300000000000);
    pl_dispatch_after();
    [PLPhotoSharingHelper downloadAsset:v5 cloudPlaceholderKind:*(a1 + 64) shouldPrioritize:*(a1 + 66) shouldExtendTimer:*(a1 + 67)];

    _Block_object_dispose(&v25, 8);
    goto LABEL_11;
  }

LABEL_12:
}

void __116__PLAssetsdResourceService_downloadCloudSharedAsset_wantedPlaceholderkind_shouldPrioritize_shouldExtendTimer_reply___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32) && ([MEMORY[0x1E696AC08] defaultManager], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "fileExistsAtPath:", *(a1 + 32)), v2, v3))
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(a1 + 32) isDirectory:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(*(a1 + 40) + 16))();
}

uint64_t __116__PLAssetsdResourceService_downloadCloudSharedAsset_wantedPlaceholderkind_shouldPrioritize_shouldExtendTimer_reply___block_invoke_4(void *a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "%@: Notified from assetsd for shared asset download notification %@", &v11, 0x16u);
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  if (v8)
  {
    dispatch_group_leave(v8);
    v7 = *(a1[6] + 8);
    v9 = *(v7 + 40);
  }

  else
  {
    v9 = 0;
  }

  *(v7 + 40) = 0;

  return notify_cancel(a2);
}

uint64_t __116__PLAssetsdResourceService_downloadCloudSharedAsset_wantedPlaceholderkind_shouldPrioritize_shouldExtendTimer_reply___block_invoke_127(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v2 = *(*(a1 + 32) + 8);
    v4 = *(v2 + 40);
  }

  else
  {
    v4 = 0;
  }

  *(v2 + 40) = 0;

  v5 = *(a1 + 40);

  return notify_cancel(v5);
}

void __116__PLAssetsdResourceService_downloadCloudSharedAsset_wantedPlaceholderkind_shouldPrioritize_shouldExtendTimer_reply___block_invoke_2()
{
  v0 = dispatch_queue_create("com.apple.assetsd.mediastreamdownloadqueue", 0);
  v1 = NavdRecentLocationsEntitlment_block_invoke_mediaStreamDownloadQueue;
  NavdRecentLocationsEntitlment_block_invoke_mediaStreamDownloadQueue = v0;
}

- (void)estimatedFileLengthOfVideo:(id)a3 fallbackFilePath:(id)a4 exportPreset:(id)a5 exportProperties:(id)a6 reply:(id)a7
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26 = 0u;
  *sel = 0u;
  v24 = 0u;
  v17 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v24) = v17;
  if (v17)
  {
    *(&v24 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: estimatedFileLengthOfVideo:fallbackFilePath:exportPreset:exportProperties:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v24 + 1), (&v26 + 8));
  }

  v18 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v19 = [v18 databaseContext];
  v20 = [v19 newShortLivedLibraryWithName:"-[PLAssetsdResourceService estimatedFileLengthOfVideo:fallbackFilePath:exportPreset:exportProperties:reply:]"];

  v16[2](v16, [PLAssetSharingUtilities estimatedOutputFileLengthForVideoURL:v12 library:v20 fallbackFilePath:v13 exportPreset:v14 exportProperties:v15]);
  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, v26, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)asynchronousAdjustmentDataForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 reply:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v27 = 0u;
  *sel = 0u;
  v26 = 0u;
  v10 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v26) = v10;
  if (v10)
  {
    v11 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: asynchronousAdjustmentDataForAsset:networkAccessAllowed:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v26 + 1);
    *(&v26 + 1) = v11;

    os_activity_scope_enter(v11, (&v27 + 8));
  }

  v13 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v14 = [v13 databaseContext];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __90__PLAssetsdResourceService_asynchronousAdjustmentDataForAsset_networkAccessAllowed_reply___block_invoke;
  v21[3] = &unk_1E756ED18;
  v15 = v8;
  v25 = a4;
  v22 = v15;
  v23 = self;
  v16 = v9;
  v24 = v16;
  [v14 perform:v21 withName:"-[PLAssetsdResourceService asynchronousAdjustmentDataForAsset:networkAccessAllowed:reply:]"];

  if (v26 == 1)
  {
    os_activity_scope_leave((&v27 + 8));
  }

  if (v27)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v27;
    if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v30 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __90__PLAssetsdResourceService_asynchronousAdjustmentDataForAsset_networkAccessAllowed_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 managedObjectContext];
  v6 = [v5 persistentStoreCoordinator];

  v7 = [v6 managedObjectIDForURIRepresentation:*(a1 + 32)];
  v8 = [v3 libraryServicesManager];
  v9 = [v8 cloudPhotoLibraryManager];

  v10 = 0;
  if (*(a1 + 56) == 1 && v9)
  {
    v11 = [*(a1 + 40) libraryServicesManager];
    v10 = [v11 isCloudPhotoLibraryEnabled];
  }

  v12 = [PLManagedAsset assetWithObjectID:v7 inLibrary:v3];
  v13 = [v12 uuid];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__PLAssetsdResourceService_asynchronousAdjustmentDataForAsset_networkAccessAllowed_reply___block_invoke_2;
  v19[3] = &unk_1E756ECF0;
  v14 = *(a1 + 48);
  v20 = v13;
  v21 = v9;
  v15 = *(a1 + 40);
  v22 = v12;
  v23 = v15;
  v24 = v14;
  v25 = v10;
  v16 = v12;
  v17 = v9;
  v18 = v13;
  [v16 synchronouslyFetchAdjustmentDataWithCompletionHandler:v19];

  objc_autoreleasePoolPop(v4);
}

void __90__PLAssetsdResourceService_asynchronousAdjustmentDataForAsset_networkAccessAllowed_reply___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  v141 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v77 = a6;
  v75 = a8;
  v76 = a9;
  v133 = 0;
  v134 = &v133;
  v135 = 0x2020000000;
  v136 = 0;
  v131[0] = 0;
  v131[1] = v131;
  v131[2] = 0x3032000000;
  v131[3] = __Block_byref_object_copy__62036;
  v131[4] = __Block_byref_object_dispose__62037;
  v17 = v14;
  v132 = v17;
  v129[0] = 0;
  v129[1] = v129;
  v129[2] = 0x3032000000;
  v129[3] = __Block_byref_object_copy__62036;
  v129[4] = __Block_byref_object_dispose__62037;
  v18 = v15;
  v130 = v18;
  v127[0] = 0;
  v127[1] = v127;
  v127[2] = 0x3032000000;
  v127[3] = __Block_byref_object_copy__62036;
  v127[4] = __Block_byref_object_dispose__62037;
  v19 = v16;
  v128 = v19;
  v121 = 0;
  v122 = &v121;
  v123 = 0x3032000000;
  v124 = __Block_byref_object_copy__62036;
  v125 = __Block_byref_object_dispose__62037;
  v126 = 0;
  v115 = 0;
  v116 = &v115;
  v117 = 0x3032000000;
  v118 = __Block_byref_object_copy__62036;
  v119 = __Block_byref_object_dispose__62037;
  v120 = 0;
  v113[0] = 0;
  v113[1] = v113;
  v113[2] = 0x3032000000;
  v113[3] = __Block_byref_object_copy__62036;
  v113[4] = __Block_byref_object_dispose__62037;
  v114 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__PLAssetsdResourceService_asynchronousAdjustmentDataForAsset_networkAccessAllowed_reply___block_invoke_3;
  aBlock[3] = &unk_1E756EC30;
  v104 = *(a1 + 64);
  v105 = v131;
  v106 = v129;
  v107 = v127;
  v111 = v113;
  v112 = a5;
  v108 = &v133;
  v109 = &v121;
  v20 = v18;
  v110 = &v115;
  v21 = v19;
  v22 = _Block_copy(aBlock);
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = 0;
  if ([v77 length])
  {
    v23 = v77;
    v24 = open([v77 fileSystemRepresentation], 0);
    if ((v24 & 0x80000000) == 0)
    {
      v25 = objc_alloc(MEMORY[0x1E69BF340]);
      v26 = xpc_fd_create(v24);
      v27 = [v25 initWithXPCObject:v26];
      v28 = v122[5];
      v122[5] = v27;

      close(v24);
      *(v100 + 24) = 1;
      goto LABEL_38;
    }

    context = objc_autoreleasePoolPush();
    v29 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 32);
      *buf = 138543362;
      v138 = v30;
      _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Couldn't open adjustment file for asset %{public}@", buf, 0xCu);
    }

    if (!*(a1 + 40) || ([*(a1 + 48) photoLibrary], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isCloudPhotoLibraryEnabled"), v31, !v32))
    {
LABEL_21:
      if ((v100[3] & 1) == 0)
      {
        if ([*(a1 + 48) isVideo])
        {
          if (([*(a1 + 48) migrateLegacyVideoAdjustments] & 1) == 0)
          {
            v48 = PLGatekeeperXPCGetLog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = *(a1 + 32);
              *buf = 138543618;
              v138 = v49;
              v139 = 2112;
              v140 = @"NO";
              _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_DEFAULT, "Set default adjustments for asset %{public}@: %@", buf, 0x16u);
            }

            if (![*(a1 + 48) setDefaultAdjustmentsIfNecessaryWithMainFileMetadata:0])
            {
              goto LABEL_37;
            }
          }

          v50 = PLGatekeeperXPCGetLog();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = *(a1 + 32);
            *buf = 138543362;
            v138 = v51;
            _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_DEFAULT, "Recovered adjustment for %{public}@", buf, 0xCu);
          }

          v52 = v77;
          v53 = open([v77 fileSystemRepresentation], 0);
          if ((v53 & 0x80000000) == 0)
          {
            v54 = objc_alloc(MEMORY[0x1E69BF340]);
            v55 = xpc_fd_create(v53);
            v56 = [v54 initWithXPCObject:v55];
            v57 = v122[5];
            v122[5] = v56;

            close(v53);
            *(v100 + 24) = 1;
            goto LABEL_37;
          }

          v58 = PLGatekeeperXPCGetLog();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_ERROR, "Couldn't open adjustment file from recovered adjustment", buf, 2u);
          }
        }

        else
        {
          v58 = PLGatekeeperXPCGetLog();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            v59 = *(a1 + 32);
            *buf = 138543362;
            v138 = v59;
            _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_ERROR, "Unsupported asset %{public}@ to recover adjustment", buf, 0xCu);
          }
        }
      }

LABEL_37:
      objc_autoreleasePoolPop(context);
      goto LABEL_38;
    }

    v33 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 32);
      *buf = 138543362;
      v138 = v34;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Trying to recover adjustment from CPL for for asset %{public}@", buf, 0xCu);
    }

    v35 = dispatch_semaphore_create(0);
    v37 = *(a1 + 40);
    v36 = *(a1 + 48);
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __90__PLAssetsdResourceService_asynchronousAdjustmentDataForAsset_networkAccessAllowed_reply___block_invoke_108;
    v87[3] = &unk_1E756EC58;
    v88 = v17;
    v93 = v131;
    v89 = v20;
    v94 = v129;
    v90 = v21;
    v95 = v127;
    v98 = a5;
    v91 = v77;
    v96 = &v121;
    v97 = &v99;
    v38 = v35;
    v92 = v38;
    [v37 fetchAdjustmentDataForAsset:v36 completionHandler:v87];
    v39 = dispatch_time(0, 10000000000);
    v40 = dispatch_semaphore_wait(v38, v39);
    if (*(v100 + 24) == 1)
    {
      v41 = PLGatekeeperXPCGetLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(a1 + 32);
        *buf = 138543362;
        v138 = v42;
        v43 = "Recovered adjustment from CPL for for asset %{public}@";
        v44 = v41;
        v45 = OS_LOG_TYPE_DEFAULT;
LABEL_19:
        _os_log_impl(&dword_19BF1F000, v44, v45, v43, buf, 0xCu);
      }

LABEL_20:

      goto LABEL_21;
    }

    if (v40)
    {
      v41 = PLGatekeeperXPCGetLog();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v46 = *(a1 + 32);
      *buf = 138543362;
      v138 = v46;
      v43 = "Timed out waiting for CPL to recover adjustment data for asset %{public}@";
    }

    else
    {
      v41 = PLGatekeeperXPCGetLog();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v47 = *(a1 + 32);
      *buf = 138543362;
      v138 = v47;
      v43 = "Couldn't open adjustment file fetched from CPL for asset %{public}@";
    }

    v44 = v41;
    v45 = OS_LOG_TYPE_ERROR;
    goto LABEL_19;
  }

LABEL_38:
  if ([v77 length])
  {
    v60 = [*(a1 + 48) assetResourceForCPLType:13];
    if (!v60 || ([*(a1 + 56) libraryServicesManager], v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v61, "isCloudPhotoLibraryEnabled"), v61, !v62))
    {
      v22[2](v22);
LABEL_52:

      goto LABEL_53;
    }

    *(v134 + 24) = 1;
    v63 = [*(a1 + 48) pathForAdjustmentDataFile];
    v64 = v63;
    if (v63)
    {
      v65 = v63;
      v66 = open([v64 fileSystemRepresentation], 0);
      if (v66 < 0)
      {
        if (*(a1 + 72) == 1)
        {
          v72 = *(a1 + 48);
          contexta = *(a1 + 40);
          v84[0] = MEMORY[0x1E69E9820];
          v84[1] = 3221225472;
          v84[2] = __90__PLAssetsdResourceService_asynchronousAdjustmentDataForAsset_networkAccessAllowed_reply___block_invoke_111;
          v84[3] = &unk_1E756EC80;
          v86 = v113;
          v85 = v22;
          v79[0] = MEMORY[0x1E69E9820];
          v79[1] = 3221225472;
          v79[2] = __90__PLAssetsdResourceService_asynchronousAdjustmentDataForAsset_networkAccessAllowed_reply___block_invoke_3_115;
          v79[3] = &unk_1E756ECC8;
          v82 = v113;
          v80 = v64;
          v83 = &v115;
          v81 = v85;
          [contexta downloadAsset:v72 resourceType:13 masterResourceOnly:0 highPriority:1 clientBundleID:0 proposedTaskIdentifier:0 taskDidBeginHandler:v84 progressBlock:&__block_literal_global_62138 completionHandler:v79];

LABEL_51:
          goto LABEL_52;
        }

        v71 = v122[5];
        v122[5] = 0;
      }

      else
      {
        v67 = objc_alloc(MEMORY[0x1E69BF340]);
        v68 = xpc_fd_create(v66);
        v69 = [v67 initWithXPCObject:v68];
        v70 = v116[5];
        v116[5] = v69;

        close(v66);
      }
    }

    v22[2](v22);
    goto LABEL_51;
  }

  v22[2](v22);
LABEL_53:
  _Block_object_dispose(&v99, 8);

  _Block_object_dispose(v113, 8);
  _Block_object_dispose(&v115, 8);

  _Block_object_dispose(&v121, 8);
  _Block_object_dispose(v127, 8);

  _Block_object_dispose(v129, 8);
  _Block_object_dispose(v131, 8);

  _Block_object_dispose(&v133, 8);
}

void __90__PLAssetsdResourceService_asynchronousAdjustmentDataForAsset_networkAccessAllowed_reply___block_invoke_108(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v26 = a3;
  v6 = PLGatekeeperXPCGetLog();
  v7 = v6;
  if (!v5 || v26)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v26;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Couldn't fetch adjustment from CPL: %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 adjustmentSimpleDescription];
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Recovered adjustments %@ from CPL.", buf, 0xCu);
    }

    v7 = [MEMORY[0x1E695DF90] dictionary];
    obj = [v5 adjustmentType];
    if (([*(a1 + 32) isEqualToString:?] & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), obj);
    }

    [v7 setObject:obj forKey:*MEMORY[0x1E69BF380]];
    v9 = [v5 adjustmentCompoundVersion];
    if (([*(a1 + 40) isEqualToString:v9] & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), v9);
    }

    [v7 setObject:v9 forKey:*MEMORY[0x1E69BF388]];
    v10 = [v5 adjustmentCreatorCode];
    if (([v10 isEqualToString:*(a1 + 48)] & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 88) + 8) + 40), v10);
    }

    if (v10)
    {
      [v7 setObject:v10 forKey:*MEMORY[0x1E69BF378]];
    }

    v11 = [v5 adjustmentTimestamp];
    if (v11)
    {
      [v7 setObject:v11 forKey:*MEMORY[0x1E69BF398]];
    }

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 112)];
    [v7 setObject:v12 forKey:*MEMORY[0x1E69BF368]];

    v13 = [v5 simpleAdjustmentData];
    if (v13)
    {
      [v7 setObject:v13 forKey:*MEMORY[0x1E69BF370]];
    }

    v24 = v13;
    v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:100 options:0 error:0];
    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = [*(a1 + 56) stringByDeletingLastPathComponent];
    [v15 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:0];

    if (v14)
    {
      [v14 writeToFile:*(a1 + 56) options:1073741825 error:0];
    }

    v17 = open([*(a1 + 56) fileSystemRepresentation], 0);
    if ((v17 & 0x80000000) == 0)
    {
      v18 = v17;
      v19 = objc_alloc(MEMORY[0x1E69BF340]);
      v20 = xpc_fd_create(v18);
      v21 = [v19 initWithXPCObject:v20];
      v22 = *(*(a1 + 96) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      close(v18);
      *(*(*(a1 + 104) + 8) + 24) = 1;
    }
  }

  dispatch_semaphore_signal(*(a1 + 64));
}

void __90__PLAssetsdResourceService_asynchronousAdjustmentDataForAsset_networkAccessAllowed_reply___block_invoke_111(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
    (*(*(a1 + 32) + 16))();
    v6 = v7;
  }
}

void __90__PLAssetsdResourceService_asynchronousAdjustmentDataForAsset_networkAccessAllowed_reply___block_invoke_3_115(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = a5;
  if (v14)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  }

  else
  {
    v7 = open([*(a1 + 32) fileSystemRepresentation], 0);
    if ((v7 & 0x80000000) == 0)
    {
      v8 = v7;
      v9 = objc_alloc(MEMORY[0x1E69BF340]);
      v10 = xpc_fd_create(v8);
      v11 = [v9 initWithXPCObject:v10];
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      close(v8);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getSandboxExtensionForFileSystemBookmark:(id)a3 reply:(id)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__62036;
  v40 = __Block_byref_object_dispose__62037;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__62036;
  v34 = __Block_byref_object_dispose__62037;
  v35 = 0;
  v8 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v9 = [v8 databaseContext];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __75__PLAssetsdResourceService_getSandboxExtensionForFileSystemBookmark_reply___block_invoke;
  v26[3] = &unk_1E756EC08;
  v10 = v6;
  v27 = v10;
  v28 = &v30;
  v29 = &v36;
  [v9 performSync:v26 withName:"-[PLAssetsdResourceService getSandboxExtensionForFileSystemBookmark:reply:]"];

  v11 = v31[5];
  if (!v11)
  {
    if (!v37[5])
    {
      v16 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v43 = @"Unable to resolve bookmark URL";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v18 = [v16 errorWithDomain:*MEMORY[0x1E69BFF48] code:41014 userInfo:v17];
      v19 = v37[5];
      v37[5] = v18;
    }

    goto LABEL_9;
  }

  v12 = [v11 path];
  v13 = v12;
  [v12 fileSystemRepresentation];
  v14 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
  v15 = v14;
  if (v14)
  {
    [v14 clientAuditToken];
  }

  v20 = sandbox_extension_issue_file_to_process();

  if (!v20)
  {
    v22 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A578];
    v45[0] = @"Unable to extend sandbox for bookmark URL";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x1E69BFF48] code:41010 userInfo:v23];
    v25 = v37[5];
    v37[5] = v24;

LABEL_9:
    v21 = 0;
    goto LABEL_10;
  }

  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v20];
  free(v20);
LABEL_10:
  v7[2](v7, v21 != 0, v31[5], v21, v37[5]);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
}

void __75__PLAssetsdResourceService_getSandboxExtensionForFileSystemBookmark_reply___block_invoke(void *a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 managedObjectContext];
  v5 = [v4 persistentStoreCoordinator];

  v6 = [v5 managedObjectIDForURIRepresentation:a1[4]];
  if (v6)
  {
    v7 = [v3 managedObjectContext];
    v8 = [v7 objectWithID:v6];

    v9 = [v8 fileSystemURL];
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E69BFF48];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"objectID is null for FileSystemBookmark objectURI %@", a1[4], *MEMORY[0x1E696A578]];
    v20[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v16 = [v12 errorWithDomain:v13 code:41014 userInfo:v15];
    v17 = *(a1[6] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }
}

- (BOOL)_allowSandboxExtensionForSessionIdentifier:(id)a3 captureSessionState:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 type];
  v8 = 1;
  if (v7 > 1)
  {
    if (v7 == 3)
    {
      goto LABEL_19;
    }

    if (v7 != 2)
    {
      goto LABEL_15;
    }

    v9 = objc_opt_class();
    v10 = v6;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      if (v12)
      {
        goto LABEL_14;
      }

      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable _PLAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nullable __strong)"}];
      [v13 handleFailureInFunction:v14 file:@"PLHelperExtension.h" lineNumber:78 description:{@"Expected class of %@ but was %@", v9, objc_opt_class()}];
    }

    v12 = 0;
LABEL_14:

    v15 = [v12 sessionIdentifier];
    v8 = [v15 isEqual:v5];

    goto LABEL_19;
  }

  if (!v7)
  {
LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  if (v7 != 1)
  {
LABEL_15:
    v16 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v6;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Capture Session: Unexpected state for sandbox extensions: %{public}@", buf, 0xCu);
    }

    goto LABEL_18;
  }

LABEL_19:

  return v8;
}

- (BOOL)_allowSandboxExtensionForAsset:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
    v6 = [v5 captureSessionState];

    if (v6)
    {
      v7 = [v4 captureSessionIdentifier];
      v8 = [(PLAssetsdResourceService *)self _allowSandboxExtensionForSessionIdentifier:v7 captureSessionState:v6];
    }

    else
    {
      v9 = PLGatekeeperXPCGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Capture Session: State is unexpectedly nil, disallowing sandbox extensions for resources", v11, 2u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)getSandboxExtensionsForAssetWithUUID:(id)a3 reply:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v35 = a4;
  v60 = 0u;
  *sel = 0u;
  v59 = 0u;
  v7 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v59) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getSandboxExtensionsForAssetWithUUID:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v59 + 1);
    *(&v59 + 1) = v8;

    os_activity_scope_enter(v8, (&v60 + 8));
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  *&v67 = 0;
  *(&v67 + 1) = &v67;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__62036;
  v70 = __Block_byref_object_dispose__62037;
  v71 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__62036;
  v53 = __Block_byref_object_dispose__62037;
  v54 = [MEMORY[0x1E695DF70] array];
  v10 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
  v11 = [v10 fetchFilterIdentifier];

  v12 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
  LOBYTE(v10) = [v12 isClientInFullLibraryMode];

  v13 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v14 = [v13 databaseContext];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __71__PLAssetsdResourceService_getSandboxExtensionsForAssetWithUUID_reply___block_invoke;
  v41[3] = &unk_1E756EBE0;
  v48 = v10;
  v34 = v11;
  v42 = v34;
  v33 = v6;
  v43 = v33;
  v44 = self;
  v45 = &v67;
  v46 = &v49;
  v47 = &v55;
  [v14 performSync:v41 withName:"-[PLAssetsdResourceService getSandboxExtensionsForAssetWithUUID:reply:]"];

  if (*(v56 + 24) == 1)
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v50[5];
    v16 = [obj countByEnumeratingWithState:&v37 objects:v66 count:16];
    if (v16)
    {
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          v20 = [v19 path];
          v21 = PLGetSandboxExtensionToken();

          if (v21)
          {
            v22 = [v19 path];
            [v15 setObject:v21 forKey:v22];
          }

          else
          {
            v23 = [MEMORY[0x1E696AC08] defaultManager];
            v24 = [v19 path];
            v25 = [v23 fileExistsAtPath:v24];

            v22 = PLGatekeeperXPCGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v26 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v19];
              v27 = v26;
              *buf = 138543618;
              v28 = @"NO";
              if (v25)
              {
                v28 = @"YES";
              }

              v63 = v28;
              v64 = 2112;
              v65 = v26;
              _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "No sandbox extension (fileExists=%{public}@) for %@", buf, 0x16u);
            }
          }
        }

        v16 = [obj countByEnumeratingWithState:&v37 objects:v66 count:16];
      }

      while (v16);
    }

    v35[2](v35, 1, v15, 0);
  }

  else
  {
    v35[2](v35, 0, 0, *(*(&v67 + 1) + 40));
  }

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v55, 8);
  if (v59 == 1)
  {
    os_activity_scope_leave((&v60 + 8));
  }

  if (v60)
  {
    v29 = PLRequestGetLog();
    v30 = v29;
    v31 = v60;
    if ((v60 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      Name = sel_getName(sel[1]);
      LODWORD(v67) = 136446210;
      *(&v67 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v30, OS_SIGNPOST_INTERVAL_END, v31, "PLXPC Sync", "%{public}s", &v67, 0xCu);
    }
  }
}

void __71__PLAssetsdResourceService_getSandboxExtensionsForAssetWithUUID_reply___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 80))
  {
    v5 = 0;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [v3 managedObjectContext];
    v5 = [PLLimitedLibraryFetchFilter fetchLimitedLibraryFetchFilterWithApplicationIdentifier:v6 inManagedObjectContext:v7];

    if ((*(a1 + 80) & 1) == 0 && ![v5 containsAssetWithUUID:*(a1 + 40)])
    {
      v27 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E69BFF48];
      v36 = *MEMORY[0x1E696A578];
      v37 = @"Invalid asset uuid for client";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v29 = [v27 errorWithDomain:v28 code:41008 userInfo:v8];
      v30 = *(*(a1 + 56) + 8);
      v13 = *(v30 + 40);
      *(v30 + 40) = v29;
      goto LABEL_19;
    }
  }

  v8 = [PLManagedAsset assetWithUUID:*(a1 + 40) inLibrary:v4];
  if ([*(a1 + 48) _allowSandboxExtensionForAsset:v8])
  {
    v9 = [v8 objectID];
    v10 = [v4 managedObjectContext];
    v11 = *(*(a1 + 56) + 8);
    obj = *(v11 + 40);
    v12 = [PLManagedAsset fetchResourcesForAssetWithObjectID:v9 inContext:v10 versions:0 includeVirtualResources:1 allowDerivatives:1 excludeDynamicCPLResources:0 additionalPredicate:0 relationshipKeyPathsForPrefetching:0 error:&obj];
    objc_storeStrong((v11 + 40), obj);

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          if ([v18 localAvailability] >= 1)
          {
            v19 = [v18 fileURL];

            if (v19)
            {
              v20 = *(*(*(a1 + 64) + 8) + 40);
              v21 = [v18 fileURL];
              [v20 addObject:v21];
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v15);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else
  {
    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E69BFF48];
    v38 = *MEMORY[0x1E696A578];
    v39 = @"Invalid asset uuid";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v24 = [v22 errorWithDomain:v23 code:41008 userInfo:v13];
    v25 = *(*(a1 + 56) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

LABEL_19:
}

- (void)imageDataForAssetWithObjectURI:(id)a3 formatID:(unsigned __int16)a4 allowPlaceholder:(BOOL)a5 wantURLOnly:(BOOL)a6 networkAccessAllowed:(BOOL)a7 trackCPLDownload:(BOOL)a8 reply:(id)a9
{
  v35 = a4;
  v52 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v14 = a9;
  v48 = 0u;
  *sel = 0u;
  v47 = 0u;
  v15 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v47) = v15;
  if (v15)
  {
    v16 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: imageDataForAssetWithObjectURI:formatID:allowPlaceholder:wantURLOnly:networkAccessAllowed:trackCPLDownload:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v17 = *(&v47 + 1);
    *(&v47 + 1) = v16;

    os_activity_scope_enter(v16, (&v48 + 8));
  }

  v18 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v34 = [v18 persistentStoreCoordinator];

  v32 = v14;
  v19 = [v34 managedObjectIDForURIRepresentation:v33];
  v20 = a8;
  v21 = [MEMORY[0x1E69BF260] formatWithID:v35];
  v22 = [v21 isThumbnail];
  v23 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v24 = [v23 databaseContext];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __141__PLAssetsdResourceService_imageDataForAssetWithObjectURI_formatID_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_reply___block_invoke;
  v36[3] = &unk_1E756EBB8;
  v25 = v19;
  v41 = v35;
  v37 = v25;
  v38 = self;
  v26 = v21;
  v39 = v26;
  v42 = v22;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v46 = v20;
  v27 = v32;
  v40 = v27;
  [v24 perform:v36 withName:"-[PLAssetsdResourceService imageDataForAssetWithObjectURI:formatID:allowPlaceholder:wantURLOnly:networkAccessAllowed:trackCPLDownload:reply:]"];

  if (v47 == 1)
  {
    os_activity_scope_leave((&v48 + 8));
  }

  if (v48)
  {
    v28 = PLRequestGetLog();
    v29 = v28;
    v30 = v48;
    if ((v48 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v51 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v29, OS_SIGNPOST_INTERVAL_END, v30, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __141__PLAssetsdResourceService_imageDataForAssetWithObjectURI_formatID_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_reply___block_invoke(uint64_t a1, void *a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v61 = a2;
  v3 = [PLManagedAsset assetWithObjectID:*(a1 + 32) inLibrary:?];
  v64 = [v3 isCloudSharedAsset];
  v60 = *(a1 + 64);
  if ([v3 isVideo] && objc_msgSend(v3, "isCloudSharedAsset"))
  {
    v4 = *(a1 + 40);
    v5 = [v3 pathForOriginalFile];
    v6 = [v4 _typeFromPathConstrainedToImageOrMovie:v5];

    if ([v6 conformsToType:*MEMORY[0x1E6982EE8]])
    {
      v7 = [v3 originalAsset];

      if (v7)
      {
        v8 = PLImageManagerGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = [v3 uuid];
          v10 = [v3 originalAsset];
          v11 = [v10 uuid];
          *buf = 138412546;
          *&buf[4] = v9;
          *&buf[12] = 2112;
          *&buf[14] = v11;
          _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "A cloud shared video (uuid: %@) does not have an image file, redirecting to original asset (uuid: %@)", buf, 0x16u);
        }

        v12 = [v3 originalAsset];

        v3 = v12;
      }
    }
  }

  v80 = 0;
  if (v64 & 1 | (([v61 isCloudPhotoLibraryEnabled] & 1) == 0))
  {
    LOBYTE(v63) = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_30;
  }

  v15 = *(a1 + 48);
  v79 = 0;
  v13 = [PLResourceChooser cloudResourceTypeForAsset:v3 format:v15 filePath:&v79 imageType:&v80];
  v16 = v79;
  v14 = v16;
  if (!v13)
  {
    v18 = PLImageManagerGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v3 uuid];
      v20 = *(a1 + 48);
      *buf = 138412546;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Cloud photos is enabled, but unable to find a cloud resource type for asset (uuid: %@) format %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v17 = v13;
  if (v13 == 5 && !v16)
  {
    if (![v3 hasMasterThumb])
    {
      v14 = 0;
      goto LABEL_20;
    }

    v18 = [v61 thumbnailManager];
    v14 = [v18 thumbnailJPEGPathForPhoto:v3];
LABEL_18:

LABEL_20:
    v17 = v13;
  }

  if (v17)
  {
    v21 = v14 == 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  v63 = v22;
  v23 = PLImageManagerGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = [*(a1 + 48) shortDescription];
    v25 = [v3 uuid];
    v26 = [PLCloudPhotoLibraryManager descriptionForResourceType:v13];
    v27 = [MEMORY[0x1E696AD98] numberWithInt:v63 ^ 1u];
    *buf = 138413058;
    *&buf[4] = v24;
    *&buf[12] = 2112;
    *&buf[14] = v25;
    *&buf[22] = 2112;
    v83 = v26;
    LOWORD(v84) = 2112;
    *(&v84 + 2) = v27;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "Async image data for format: %@, asset: %@ Found cloud resource type: %@, is locally available: %@", buf, 0x2Au);
  }

LABEL_30:
  v59 = v13;
  if (((v14 == 0) & v64) == 1)
  {
    if ((*(a1 + 66) & 1) == 0)
    {
      if ([v3 isVideo])
      {
        v28 = 7;
      }

      else
      {
        v28 = 4;
      }

      v14 = [v3 cloudSharedAssetPathForPlaceholderKind:v28];
      if (v14)
      {
        goto LABEL_43;
      }

      goto LABEL_34;
    }

    v14 = 0;
  }

  if (v14)
  {
    goto LABEL_43;
  }

LABEL_34:
  if (!v13)
  {
    if (*(a1 + 66))
    {
      v14 = 0;
    }

    else
    {
      v29 = *(a1 + 48);
      v78 = 0;
      v30 = [PLResourceChooser fileReservationForImageFileForAsset:v3 format:v29 outFilePath:&v78 outImageType:&v80];
      v14 = v78;
    }
  }

LABEL_43:
  v31 = v80;
  if (v80 == 1)
  {
    if ([v3 isVideo] && (objc_msgSend(v3, "isCloudSharedAsset") & 1) == 0)
    {
      v36 = PLImageManagerGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = [v3 uuid];
        *buf = 138412290;
        *&buf[4] = v37;
        _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Resource chooser selected original resource for a video, which is invalid, for asset (uuid: %@)", buf, 0xCu);
      }

      v14 = 0;
      v80 = 0;
LABEL_63:
      v34 = 1;
      if (!v14)
      {
        goto LABEL_56;
      }

      goto LABEL_64;
    }

    v31 = v80;
    if (v80 == 1)
    {
      v32 = [*(a1 + 48) refersToLatestVersion];
      v31 = v80;
      if (v32)
      {
        v60 = 9999;
        goto LABEL_54;
      }
    }
  }

  switch(v31)
  {
    case 7:
      v33 = 9988;
      goto LABEL_59;
    case 9:
      v33 = 3039;
LABEL_59:
      v60 = v33;
      goto LABEL_63;
    case 8:
      if (*(a1 + 64) != 9998)
      {
        goto LABEL_63;
      }

      v33 = 4007;
      goto LABEL_59;
  }

LABEL_54:
  if (v31 != 1)
  {
    goto LABEL_63;
  }

  [v3 originalImageOrientation];
  v34 = PLExifOrientationFromImageOrientation();
  if (!v14)
  {
LABEL_56:
    v35 = 0;
    goto LABEL_65;
  }

LABEL_64:
  v35 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0];
LABEL_65:
  v38 = *(a1 + 40);
  v39 = [v35 path];
  v40 = [v38 _typeFromPathConstrainedToImageOrMovie:v39];
  v41 = [v40 identifier];

  v42 = 0;
  if (v80)
  {
    v43 = *(a1 + 67);
  }

  else
  {
    v43 = 1;
  }

  v44 = v43 & v63;
  if (!v35 && (v43 & v63 & 1) == 0)
  {
    v42 = [PLImageLoadingUtilities newSynchronousImageForAsset:"newSynchronousImageForAsset:withFormat:allowPlaceholder:outImageProperties:outDeliveredPlaceholder:" withFormat:v3 allowPlaceholder:*(a1 + 64) outImageProperties:? outDeliveredPlaceholder:?];
  }

  v58 = v14;
  v45 = *(*(a1 + 40) + 24);
  v46 = *(a1 + 68);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __141__PLAssetsdResourceService_imageDataForAssetWithObjectURI_formatID_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_reply___block_invoke_78;
  v66[3] = &unk_1E756EB90;
  v74 = v64;
  v75 = v46;
  v62 = v61;
  v67 = v62;
  v47 = v3;
  v76 = v63;
  v77 = *(a1 + 69);
  v73 = *(a1 + 64);
  v48 = *(a1 + 40);
  v65 = v47;
  v68 = v47;
  v69 = v48;
  v72 = v59;
  v71 = *(a1 + 56);
  v49 = v41;
  v70 = v49;
  v50 = v45;
  v51 = v35;
  v52 = v42;
  v53 = v66;
  v54 = _os_activity_create(&dword_19BF1F000, "asyncImageDataFromAsset", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v54, &state);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __asyncImageDataFromAsset_block_invoke;
  v83 = &unk_1E756F938;
  v55 = v51;
  *&v84 = v55;
  v56 = v53;
  v87 = v60;
  v85 = v56;
  v86 = v34;
  v88 = v46;
  v89 = v44;
  v57 = v52;
  *(&v84 + 1) = v57;
  pl_dispatch_async();

  os_activity_scope_leave(&state);
}

void __141__PLAssetsdResourceService_imageDataForAssetWithObjectURI_formatID_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_reply___block_invoke_78(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if ([v11 isFileURL])
  {
    v12 = [v11 path];
    v13 = PLGetSandboxExtensionToken();
  }

  else
  {
    v13 = 0;
  }

  if (*(a1 + 82) == 1 && (v9 || v11 && (*(a1 + 83) & 1) != 0))
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __141__PLAssetsdResourceService_imageDataForAssetWithObjectURI_formatID_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_reply___block_invoke_2;
    v27[3] = &unk_1E75781E8;
    v14 = *(a1 + 32);
    v28 = *(a1 + 40);
    [v14 performBlock:v27];
  }

  if (*(a1 + 84) == 1 && *(a1 + 85) == 1)
  {
    v15 = *(a1 + 80) - 9999 < 2;
    v16 = *(a1 + 40);
    v17 = *(*(a1 + 48) + 32);
    v18 = *(a1 + 72);
    v19 = *(a1 + 86);
    v26 = 0;
    LOBYTE(v25) = 0;
    v20 = [v17 startCPLDownloadForAsset:v16 resourceType:v18 masterResourceOnly:v15 highPriority:1 track:v19 notify:v19 transient:v25 proposedTaskIdentifier:0 doneToken:0 error:&v26];
    v21 = v26;
    v22 = 0;
    v23 = 0;
    if (*(a1 + 86) == 1)
    {
      v22 = v20;
      v23 = [PLCloudPhotoLibraryManager descriptionForResourceType:*(a1 + 72)];
    }

    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_16:
    v24 = [objc_alloc(MEMORY[0x1E69BF348]) initWithXPCObject:v9];
    goto LABEL_17;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (v9)
  {
    goto LABEL_16;
  }

LABEL_14:
  v24 = 0;
LABEL_17:
  (*(*(a1 + 64) + 16))(*(a1 + 64), v24, v10, a5);
}

- (void)fileDescriptorForPersistentURL:(id)a3 withAdjustments:(BOOL)a4 reply:(id)a5
{
  v6 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v21 = 0u;
  *sel = 0u;
  v20 = 0u;
  v10 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v20) = v10;
  if (v10)
  {
    v11 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: fileDescriptorForPersistentURL:withAdjustments:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v20 + 1);
    *(&v20 + 1) = v11;

    os_activity_scope_enter(v11, (&v21 + 8));
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__PLAssetsdResourceService_fileDescriptorForPersistentURL_withAdjustments_reply___block_invoke;
  v18[3] = &unk_1E756EB40;
  v13 = v9;
  v19 = v13;
  [(PLAssetsdResourceService *)self translatePersistentURL:v8 withAdjustments:v6 handler:v18];

  if (v20 == 1)
  {
    os_activity_scope_leave((&v21 + 8));
  }

  if (v21)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    v16 = v21;
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v24 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __81__PLAssetsdResourceService_fileDescriptorForPersistentURL_withAdjustments_reply___block_invoke(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E69BFF48];
    v20 = *MEMORY[0x1E696A578];
    v21 = @"Couldn't translate asset URL";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v11 = [v12 errorWithDomain:v13 code:41003 userInfo:v14];

    v15 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v11;
LABEL_8:
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
    }

LABEL_9:

    v10 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  v5 = [v3 path];
  v6 = open([v5 fileSystemRepresentation], 0);

  if (v6 < 0)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E69BFF48];
    v24 = *MEMORY[0x1E696A578];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't open file at url: %@", v4];
    v25[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v11 = [v16 errorWithDomain:v17 code:41006 userInfo:v19];

    v15 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v11;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v7 = objc_alloc(MEMORY[0x1E69BF340]);
  v8 = xpc_fd_create(v6);
  v9 = [v7 initWithXPCObject:v8];

  close(v6);
  v10 = [v4 pathExtension];
  v11 = 0;
LABEL_10:
  (*(*(a1 + 32) + 16))();
}

- (void)sandboxExtensionURLForPersistentURL:(id)a3 withAdjustments:(BOOL)a4 reply:(id)a5
{
  v6 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v21 = 0u;
  *sel = 0u;
  v20 = 0u;
  v10 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v20) = v10;
  if (v10)
  {
    v11 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: sandboxExtensionURLForPersistentURL:withAdjustments:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v20 + 1);
    *(&v20 + 1) = v11;

    os_activity_scope_enter(v11, (&v21 + 8));
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__PLAssetsdResourceService_sandboxExtensionURLForPersistentURL_withAdjustments_reply___block_invoke;
  v18[3] = &unk_1E756EB68;
  v18[4] = self;
  v13 = v9;
  v19 = v13;
  [(PLAssetsdResourceService *)self translatePersistentURL:v8 withAdjustments:v6 handler:v18];

  if (v20 == 1)
  {
    os_activity_scope_leave((&v21 + 8));
  }

  if (v21)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    v16 = v21;
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v24 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __86__PLAssetsdResourceService_sandboxExtensionURLForPersistentURL_withAdjustments_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 path];
  v5 = [*(a1 + 32) connectionAuthorization];
  v6 = v5;
  if (v5)
  {
    [v5 clientAuditToken];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v7 = PLGetSandboxExtensionTokenForProcess();
  v8 = PLSandboxExtensionTokenAsData();

  if (v8)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), 1, v3, v8);
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v9 setObject:@"Sandbox extension create failed" forKeyedSubscript:*MEMORY[0x1E696A278]];
    if (v3)
    {
      [v9 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696A998]];
    }

    v10 = *(a1 + 40);
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41028 userInfo:{v9, v12, v13}];
    (*(v10 + 16))(v10, 0, 0, 0, v11);
  }
}

- (void)filePathForPersistentURL:(id)a3 withAdjustments:(BOOL)a4 reply:(id)a5
{
  v6 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v21 = 0u;
  *sel = 0u;
  v20 = 0u;
  v10 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v20) = v10;
  if (v10)
  {
    v11 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: filePathForPersistentURL:withAdjustments:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v20 + 1);
    *(&v20 + 1) = v11;

    os_activity_scope_enter(v11, (&v21 + 8));
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__PLAssetsdResourceService_filePathForPersistentURL_withAdjustments_reply___block_invoke;
  v18[3] = &unk_1E756EB40;
  v13 = v9;
  v19 = v13;
  [(PLAssetsdResourceService *)self translatePersistentURL:v8 withAdjustments:v6 handler:v18];

  if (v20 == 1)
  {
    os_activity_scope_leave((&v21 + 8));
  }

  if (v21)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    v16 = v21;
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v24 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)addAssetWithURL:(id)a3 toAlbum:(id)a4 reply:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v38 = 0u;
  *sel = 0u;
  v37 = 0u;
  v11 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v37) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: addAssetWithURL:toAlbum:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v37 + 1);
    *(&v37 + 1) = v12;

    os_activity_scope_enter(v12, (&v38 + 8));
  }

  v14 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
  v15 = [v14 isClientInLimitedLibraryMode];

  if (v15)
  {
    v10[2](v10, 1, 0);
  }

  else
  {
    v16 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdResourceService addAssetWithURL:toAlbum:reply:]"];
    v17 = v16;
    if (v8 && v9)
    {
      v35[0] = 0;
      v35[1] = v35;
      v35[2] = 0x2020000000;
      v36 = 0;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v43 = 0x3032000000;
      v44 = __Block_byref_object_copy__62036;
      v45 = __Block_byref_object_dispose__62037;
      v46 = 0;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __58__PLAssetsdResourceService_addAssetWithURL_toAlbum_reply___block_invoke;
      v29[3] = &unk_1E75787D0;
      v30 = v16;
      v31 = v9;
      v32 = v8;
      v33 = v35;
      p_buf = &buf;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __58__PLAssetsdResourceService_addAssetWithURL_toAlbum_reply___block_invoke_2;
      v25[3] = &unk_1E7575F50;
      v26 = v10;
      v27 = v35;
      v28 = &buf;
      [v30 performTransaction:v29 completionHandler:v25];

      _Block_object_dispose(&buf, 8);
      _Block_object_dispose(v35, 8);
    }

    else
    {
      v18 = MEMORY[0x1E696ABC0];
      v40 = *MEMORY[0x1E696A578];
      v41 = @"Invalid assetURL or album UUID";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v20 = [v18 errorWithDomain:*MEMORY[0x1E69BFF48] code:41008 userInfo:v19];

      (v10)[2](v10, 0, v20);
    }
  }

  if (v37 == 1)
  {
    os_activity_scope_leave((&v38 + 8));
  }

  if (v38)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v38;
    if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }
}

void __58__PLAssetsdResourceService_addAssetWithURL_toAlbum_reply___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) albumWithUuid:*(a1 + 40)];
  v3 = [*(a1 + 32) photoFromAssetURL:*(a1 + 48)];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E69BFF48];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"Error fetching album or asset";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v6 errorWithDomain:v7 code:41008 userInfo:v8];
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = [v2 mutableAssets];
    [v12 addObject:v4];

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (void)addAssetGroupWithName:(id)a3 reply:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v28 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v26) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: addAssetGroupWithName:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v26 + 1);
    *(&v26 + 1) = v9;

    os_activity_scope_enter(v9, (&v27 + 8));
  }

  v11 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
  v12 = [v11 isClientInLimitedLibraryMode];

  if (v12)
  {
    v7[2](v7, 1, 0);
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__62036;
    v32 = __Block_byref_object_dispose__62037;
    v33 = 0;
    v13 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdResourceService addAssetGroupWithName:reply:]"];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__PLAssetsdResourceService_addAssetGroupWithName_reply___block_invoke;
    v22[3] = &unk_1E7578820;
    v23 = v6;
    v14 = v13;
    v24 = v14;
    p_buf = &buf;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __56__PLAssetsdResourceService_addAssetGroupWithName_reply___block_invoke_2;
    v19[3] = &unk_1E7573998;
    v21 = &buf;
    v20 = v7;
    [v14 performTransaction:v22 completionHandler:v19];

    _Block_object_dispose(&buf, 8);
  }

  if (v26 == 1)
  {
    os_activity_scope_leave((&v27 + 8));
  }

  if (v27)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v27;
    if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v28 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }
}

void __56__PLAssetsdResourceService_addAssetGroupWithName_reply___block_invoke(void *a1)
{
  v2 = [PLGenericAlbum albumWithName:a1[4] inLibrary:a1[5]];

  if (!v2)
  {
    v3 = [PLGenericAlbum insertNewAlbumWithTitle:a1[4] intoLibrary:a1[5]];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void __56__PLAssetsdResourceService_addAssetGroupWithName_reply___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 40) && ([*(v2 + 40) isInserted] & 1) == 0)
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) groupURL];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(*(a1 + 32) + 16))();
}

- (void)saveAssetWithDataAndPorts:(id)a3 imageSurface:(id)a4 previewImageSurface:(id)a5 reply:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21 = 0u;
  *sel = 0u;
  v19 = 0u;
  v14 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v19) = v14;
  if (v14)
  {
    *(&v19 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: saveAssetWithDataAndPorts:imageSurface:previewImageSurface:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v19 + 1), (&v21 + 8));
  }

  v15 = [MEMORY[0x1E696B0B8] currentConnection];
  [(PLAssetsdResourceWriteOnlyService *)self saveAssetWithDataAndPorts:v10 clientConnection:v15 imageSurface:v11 previewImageSurface:v12 reply:v13];

  if (v20 == 1)
  {
    os_activity_scope_leave((&v21 + 8));
  }

  if (v21)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v24 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (PLAssetsdResourceService)initWithLibraryServicesManager:(id)a3 connectionAuthorization:(id)a4 resourceDownloader:(id)a5
{
  v9 = a5;
  v16.receiver = self;
  v16.super_class = PLAssetsdResourceService;
  v10 = [(PLAssetsdResourceWriteOnlyService *)&v16 initWithLibraryServicesManager:a3 connectionAuthorization:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_resourceDownloader, a5);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.photos.backend.resourceService.imageDataQueue", v12);
    asyncImageDataQueue = v11->_asyncImageDataQueue;
    v11->_asyncImageDataQueue = v13;
  }

  return v11;
}

@end