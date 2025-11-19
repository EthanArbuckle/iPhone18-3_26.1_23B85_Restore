@interface PLImageWriter
+ (BOOL)_hasPrimaryAssetAndAdjustmentsFilesWithType:(signed __int16)a3 inIncomingFilenames:(id)a4 forAssetUUID:(id)a5;
+ (BOOL)_requiresIndicatorFileForJobType:(id)a3;
+ (BOOL)isDeferredPhotoPreviewURL:(id)a3;
+ (BOOL)isSpatialOverCaptureURL:(id)a3;
+ (BOOL)setAdjustmentsForNewPhoto:(id)a3 mainFileMetadata:(id)a4 cameraAdjustmentData:(id)a5 adjustmentDataPath:(id)a6 filteredImagePath:(id)a7 cameraMetadata:(id)a8 finalAssetSize:(CGSize)a9 isSubstandardRender:(BOOL)a10;
+ (id)_assetAdjustmentsFromCameraAdjustmentData:(id)a3 cameraMetadata:(id)a4 exportProperties:(id)a5 assetType:(signed __int16)a6 applySemanticEnhance:(BOOL)a7 sourceURL:(id)a8;
+ (id)_assetAdjustmentsFromCameraAdjustments:(id)a3 cameraMetadata:(id)a4 exportProperties:(id)a5 assetType:(signed __int16)a6 applySemanticEnhance:(BOOL)a7 sourceURL:(id)a8;
+ (id)_assetUUIDFromIncomingFilename:(id)a3;
+ (id)_fetchPhotoAssetForUUID:(id)a3 moc:(id)a4;
+ (id)_pathsByAssetUUIDFromIncomingCrashRecoveryPaths:(id)a3;
+ (id)assetAdjustmentsFromCameraAdjustmentsFileAtPath:(id)a3 exportProperties:(id)a4 cameraMetadata:(id)a5;
+ (id)assetAdjustmentsFromCameraFilters:(id)a3 portraitMetadata:(id)a4 exportProperties:(id)a5 cameraMetadata:(id)a6;
+ (id)assetAdjustmentsFromCompositionController:(id)a3 exportProperties:(id)a4;
+ (id)cameraMetadataURLForPrimaryAssetURL:(id)a3 photoLibrary:(id)a4;
+ (id)finalizedAssetURLForDeferredPhotoPreviewURL:(id)a3 extension:(id)a4;
+ (id)semanticEnhancePreviewDestinationURLForPrimaryAssetURL:(id)a3;
+ (void)_signalBackgroundProcessingNeededForAsset:(id)a3 reason:(id)a4;
+ (void)photoIrisPairingDidSucceed:(BOOL)a3 fileIndicatorPath:(id)a4 photoAsset:(id)a5 photoLibrary:(id)a6;
+ (void)setAdjustmentsForNewVideo:(id)a3 mainFileMetadata:(id)a4 withAdjustmentsDictionary:(id)a5 cameraAdjustments:(id)a6 renderedContentPath:(id)a7 renderedPosterFramePreviewPath:(id)a8 finalAssetSize:(CGSize)a9;
- (BOOL)_hasNonCrashRecoveryJobsEnqueued;
- (BOOL)_isHighPriorityJob:(id)a3;
- (BOOL)_retryPairedVideoJob:(id)a3 pairingType:(id)a4 pairingIdentifier:(id)a5 retryMax:(unint64_t)a6;
- (BOOL)_transferVideoFromIncomingPath:(id)a3 toDestinationPath:(id)a4 shouldRemoveIncoming:(BOOL *)a5 error:(id *)a6;
- (BOOL)_writeOutCameraMetadata:(id)a3 destinationURL:(id)a4 error:(id *)a5;
- (BOOL)enqueueJob:(id)a3;
- (BOOL)imageWriterJob:(id)a3 hasValidPathsWithConnection:(id)a4;
- (PLImageWriter)init;
- (PLImageWriter)initWithLibraryServicesManager:(id)a3;
- (id)_newShortLivedLibraryWithName:(const char *)a3;
- (id)_pathForNewAssetWithPath:(id)a3 withExtension:(id)a4;
- (id)_processLimitedLibraryAdditionIfNeededWithAssetUUID:(id)a3 clientBundleIdentifier:(id)a4 clientAuthorization:(id)a5 library:(id)a6;
- (id)cameraAssetPathForNewAssetWithExtension:(id)a3 assetUUID:(id)a4;
- (id)iTunesSyncedAssetsDCIMDirectory;
- (id)indicatorFileCoordinator;
- (id)pathForNewAssetPathAtAlbumDirectoryPath:(id)a3 assetType:(unsigned int)a4 extension:(id)a5;
- (id)pathForNewAssetWithDirectoryPath:(id)a3 fileName:(id)a4 extension:(id)a5;
- (id)writeFilteredPreviewWithImageData:(id)a3 orImage:(id)a4 toPathWithBaseName:(id)a5;
- (void)_copyJobContentsToHoldingDirectoryWithUUID:(id)a3 incomingPath:(id)a4 job:(id)a5;
- (void)_decrementJobCount:(id)a3;
- (void)_enablePhotoStreamJob:(id)a3 completion:(id)a4;
- (void)_handleAvalancheCrashRecovery:(id)a3;
- (void)_handleCameraAdjustments:(id)a3 fullsizeRenders:(id)a4 largeThumbnails:(id)a5;
- (void)_handleCameraMetadataCrashRecovery:(id)a3;
- (void)_handlePhotoIrisCrashRecoveryForPhotoIndicatorFiles:(id)a3;
- (void)_handlePhotoIrisCrashRecoveryForVideos:(id)a3;
- (void)_incrementJobCount:(id)a3;
- (void)_linkDiagnosticFileWithSourcePath:(id)a3 forPhotoDestinationURL:(id)a4;
- (void)_processAutodeleteEmptyAlbumJob:(id)a3 completion:(id)a4;
- (void)_processAvalancheJob:(id)a3 completion:(id)a4;
- (void)_processAvalanchesValidationJob:(id)a3 completion:(id)a4;
- (void)_processBatchImageJob:(id)a3 inLibrary:(id)a4 completion:(id)a5;
- (void)_processCrashRecoveryJob:(id)a3 completion:(id)a4;
- (void)_processDaemonJob:(id)a3 completion:(id)a4;
- (void)_processDeletePhotoStreamDataJob:(id)a3 withReason:(id)a4 completion:(id)a5;
- (void)_processImageJob:(id)a3 inLibrary:(id)a4 completion:(id)a5;
- (void)_processJob:(id)a3;
- (void)_processSyncClientSaveJobsJob:(id)a3 completion:(id)a4;
- (void)_processSyncedVideoSaveJob:(id)a3 completion:(id)a4;
- (void)_processVideoJob:(id)a3 completion:(id)a4;
- (void)_processVideoSaveJob:(id)a3 completion:(id)a4;
- (void)_processXPCDaemonJob:(id)a3 completion:(id)a4;
- (void)_removeInProgressExtendedAttributesForFileAtURL:(id)a3;
- (void)_removeTransientKeys:(id)a3;
- (void)_resetSyncedAssetsDCIMDirectory;
- (void)cleanupFilesInLibrary:(id)a3 afteriTunesSyncBeforeDate:(id)a4;
- (void)delayJob:(id)a3 delay:(int64_t)a4;
- (void)enqueueAutoDeleteEmptyAlbumJobWithAlbumID:(id)a3;
- (void)processSyncSaveJob:(id)a3 library:(id)a4 albumMap:(id)a5;
- (void)saveAssetJob:(id)a3 imageSurface:(id)a4 previewImageSurface:(id)a5 completionHandler:(id)a6;
@end

@implementation PLImageWriter

- (void)_copyJobContentsToHoldingDirectoryWithUUID:(id)a3 incomingPath:(id)a4 job:(id)a5
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v51 = v8;
  v11 = [v8 stringByDeletingLastPathComponent];
  v58 = 0;
  v12 = [v10 contentsOfDirectoryAtPath:v11 error:&v58];
  v13 = v58;

  v14 = NSTemporaryDirectory();
  v15 = [objc_opt_class() pathComponentForIncomingHoldingDirectory];
  v16 = [v14 stringByAppendingPathComponent:v15];
  v17 = [v16 stringByAppendingPathComponent:v7];

  if (v12)
  {
    v57 = 0;
    v18 = [v10 createDirectoryIfNeededAtPath:v17 error:&v57];
    v19 = v57;
    v20 = v19;
    if (v18)
    {
      v45 = v19;
      v46 = v12;
      v47 = v13;
      v48 = v10;
      v49 = v9;
      v50 = v7;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v21 = v12;
      v22 = [v21 countByEnumeratingWithState:&v53 objects:v66 count:16];
      if (!v22)
      {
        goto LABEL_21;
      }

      v23 = v22;
      v24 = *v54;
      while (1)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v54 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v53 + 1) + 8 * i);
          v27 = [v26 pathExtension];
          if ([v27 isEqualToString:@"irs"])
          {
            goto LABEL_18;
          }

          v28 = [v26 pathExtension];
          v29 = [v28 isEqualToString:@"avalanche"];

          if (v29)
          {
            continue;
          }

          v30 = [v26 lastPathComponent];
          v31 = [v17 stringByAppendingPathComponent:v30];

          v32 = [v51 stringByDeletingLastPathComponent];
          v33 = [v32 stringByAppendingPathComponent:v26];

          if (!v33)
          {
            v27 = 0;
LABEL_14:
            v35 = PLAssetImportGetLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v61 = v33;
              v62 = 2112;
              v63 = v31;
              v64 = 2112;
              v65 = v27;
              _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Error copying item from %@ to %@: %@", buf, 0x20u);
            }

            goto LABEL_17;
          }

          v52 = 0;
          v34 = [MEMORY[0x1E69BF238] cloneFileAtPath:v33 toPath:v31 error:&v52];
          v27 = v52;
          if ((v34 & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_17:

LABEL_18:
        }

        v23 = [v21 countByEnumeratingWithState:&v53 objects:v66 count:16];
        if (!v23)
        {
LABEL_21:

          v9 = v49;
          v7 = v50;
          v13 = v47;
          v10 = v48;
          v20 = v45;
          v12 = v46;
          goto LABEL_27;
        }
      }
    }

    v36 = PLAssetImportGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v61 = v17;
      v62 = 2112;
      v63 = v20;
      _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Error creating holding file path at %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v20 = PLAssetImportGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = v13;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Error getting contents of incoming directory: %@", buf, 0xCu);
    }
  }

LABEL_27:

  if (v9)
  {
    v37 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
    v38 = [v17 stringByAppendingPathComponent:v37];
    v39 = [v38 stringByAppendingPathExtension:@"plist"];

    v40 = [v9 mutableCopy];
    v41 = *MEMORY[0x1E69C0548];
    v59[0] = @"completionBlock";
    v59[1] = v41;
    v42 = *MEMORY[0x1E69C0588];
    v59[2] = *MEMORY[0x1E69C04C8];
    v59[3] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
    [v40 removeObjectsForKeys:v43];

    [v40 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kPLImageWriterReplayedCameraJob"];
    if (([v40 writeToFile:v39 atomically:1] & 1) == 0)
    {
      v44 = PLAssetImportGetLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v61 = v39;
        v62 = 2112;
        v63 = 0;
        _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "Error writing job dict to %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v37 = PLAssetImportGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Unable to write out job dictionary as it is nil", buf, 2u);
    }
  }
}

- (void)enqueueAutoDeleteEmptyAlbumJobWithAlbumID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = *MEMORY[0x1E69C0418];
  [v6 setObject:*MEMORY[0x1E69C0418] forKey:*MEMORY[0x1E69C0410]];
  [v6 setObject:v5 forKey:@"EmptyAlbumToDelete"];
  v8 = PLAssetImportGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "[%@] enqueing job %@ with albumID %@", &v10, 0x20u);
  }

  [(PLImageWriter *)self enqueueJob:v6];
}

- (void)saveAssetJob:(id)a3 imageSurface:(id)a4 previewImageSurface:(id)a5 completionHandler:(id)a6
{
  v80[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = *MEMORY[0x1E69C0550];
  v15 = [v10 objectForKey:*MEMORY[0x1E69C0550]];

  if (v15 && ([v10 objectForKey:v14], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "BOOLValue"), v16, !v17) || -[PLImageWriter canEnqueueJob:](self, "canEnqueueJob:", v10))
  {
    v18 = *MEMORY[0x1E69C0390];
    v19 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
    if (!v19)
    {
      v19 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C03B8]];
    }

    v20 = [v10 objectForKey:*MEMORY[0x1E69C0410]];
    if (!v19)
    {
      if ([objc_opt_class() _requiresAssetUUIDForJobType:v20])
      {
        v21 = [MEMORY[0x1E696AFB0] UUID];
        v19 = [v21 UUIDString];

        [v10 setObject:v19 forKeyedSubscript:v18];
        v22 = PLAssetImportGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v70 = v20;
          v71 = 2114;
          v72 = v19;
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_INFO, "Job %{public}@ missing required assetUUID, assigning %{public}@ ", buf, 0x16u);
        }
      }

      else
      {
        v19 = 0;
      }
    }

    v29 = [v10 objectForKey:*MEMORY[0x1E69C03D0]];
    v60 = v29;
    v55 = v19;
    if ([v20 isEqualToString:*MEMORY[0x1E69C0458]])
    {
      v30 = *MEMORY[0x1E69C04C8];
      v31 = [v10 objectForKey:*MEMORY[0x1E69C04C8]];
      if (![v31 length])
      {
        if (![v29 length])
        {
          v35 = [MEMORY[0x1E69BF178] defaultFileExtensionForAssetType:0];
          v36 = v29;
          v37 = v35;

          v60 = v37;
        }

        v38 = [v10 objectForKey:*MEMORY[0x1E69C0388]];

        if (!v38)
        {
          v39 = [(PLImageWriter *)self cameraAssetPathForNewAssetWithExtension:v60 assetUUID:v19];

          v31 = v39;
        }

        if (v31)
        {
          [v10 setObject:v31 forKey:v30];
        }

        v32 = @"generated image";
        if (!v11)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      }

      goto LABEL_18;
    }

    v33 = *MEMORY[0x1E69C0478];
    if (([v20 isEqualToString:*MEMORY[0x1E69C0478]] & 1) == 0 && (objc_msgSend(v20, "isEqualToString:", *MEMORY[0x1E69C0470]) & 1) == 0 && !objc_msgSend(v20, "isEqualToString:", *MEMORY[0x1E69C0488]))
    {
      if ([v20 isEqualToString:*MEMORY[0x1E69C0480]])
      {
        v31 = [(PLImageWriter *)self cameraAssetPathForNewAssetWithExtension:@"MOV" assetUUID:v19];
        [v10 setObject:v31 forKey:*MEMORY[0x1E69C0588]];
      }

      else
      {
        v31 = 0;
      }

LABEL_18:
      v32 = @"provided image";
      if (!v11)
      {
LABEL_51:
        if (v12)
        {
          if ([v20 isEqualToString:*MEMORY[0x1E69C0480]])
          {
            v44 = PLCreateCGImageFromIOSurface();
            if (v44)
            {
              v45 = v44;
              [v10 setObject:v44 forKey:*MEMORY[0x1E69C0598]];
              CFRelease(v45);
            }
          }

          v46 = PLCreateImageFromPreviewImageSurface();
          if (v46)
          {
            v47 = v46;
            [v10 setObject:v46 forKey:*MEMORY[0x1E69C0548]];
            CFRelease(v47);
          }
        }

        v58 = v11;
        v59 = v12;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __81__PLImageWriter_saveAssetJob_imageSurface_previewImageSurface_completionHandler___block_invoke;
        aBlock[3] = &unk_1E7565D08;
        v68 = a2;
        v48 = v20;
        v63 = v48;
        v28 = v55;
        v64 = v28;
        v65 = v32;
        v49 = v31;
        v66 = v49;
        v67 = v13;
        v50 = _Block_copy(aBlock);
        v51 = PLAssetImportGetLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = NSStringFromSelector(a2);
          *buf = 138544386;
          v70 = v52;
          v71 = 2114;
          v72 = v48;
          v73 = 2114;
          v74 = v28;
          v75 = 2114;
          v76 = v32;
          v77 = 2112;
          v78 = v49;
          _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueing job %{public}@ assetUUID %{public}@ with %{public}@ destination path %@", buf, 0x34u);
        }

        v53 = [v50 copy];
        v54 = _Block_copy(v53);
        [v10 setObject:v54 forKey:@"completionBlock"];

        [(PLImageWriter *)self enqueueJob:v10];
        v11 = v58;
        v12 = v59;
        goto LABEL_60;
      }

LABEL_48:
      v42 = [v10 objectForKey:*MEMORY[0x1E69C02D0]];
      if (v42)
      {
        v43 = [objc_alloc(MEMORY[0x1E69BF250]) initWithIOSurface:v11 length:{objc_msgSend(v42, "unsignedIntegerValue")}];
        [v10 setObject:v43 forKey:*MEMORY[0x1E69C03F8]];
      }

      goto LABEL_51;
    }

    v34 = *MEMORY[0x1E69C0588];
    v31 = [v10 objectForKey:*MEMORY[0x1E69C0588]];
    if ([v31 length])
    {
      v32 = @"provided video";
      if (!v11)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

    if (![v60 length])
    {
      v56 = [MEMORY[0x1E69BF178] defaultFileExtensionForAssetType:2];

      v60 = v56;
    }

    if (([v20 isEqualToString:v33] & 1) != 0 || objc_msgSend(v20, "isEqualToString:", *MEMORY[0x1E69C0470]))
    {
      v40 = [v10 objectForKey:*MEMORY[0x1E69C05A0]];
      [v10 setObject:v40 forKey:*MEMORY[0x1E69C0590]];

      v41 = [v10 objectForKey:*MEMORY[0x1E69C04E0]];
      if (v41)
      {
        [v10 removeObjectForKey:v34];
        v57 = 0;
      }

      else
      {
        v57 = [(PLImageWriter *)self cameraAssetPathForNewAssetWithExtension:@"MOV" assetUUID:v19];
      }
    }

    else
    {
      if (![v20 isEqualToString:*MEMORY[0x1E69C0488]])
      {
LABEL_45:
        if (v31)
        {
          [v10 setObject:v31 forKey:v34];
        }

        v32 = @"generated video";
        if (!v11)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      }

      v57 = [(PLImageWriter *)self cameraAssetPathForNewAssetWithExtension:v60 assetUUID:v19];

      v41 = [MEMORY[0x1E69BF178] uniqueIncomingPathForAssetWithUUID:v19 andExtension:v60 isPhotoStream:0];
      [v10 setObject:v41 forKey:*MEMORY[0x1E69C0590]];
    }

    v31 = v57;
    goto LABEL_45;
  }

  v23 = PLAssetImportGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = NSStringFromSelector(a2);
    *buf = 138543618;
    v70 = v24;
    v71 = 2112;
    v72 = v10;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "[%{public}@] job queue full, failed to enqueue job %@", buf, 0x16u);
  }

  v25 = MEMORY[0x1E696ABC0];
  v26 = *MEMORY[0x1E69BFF48];
  v79 = *MEMORY[0x1E696A578];
  v80[0] = @"Failed to enqueue imagewriter job; job queue is full";
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
  v28 = [v25 errorWithDomain:v26 code:41001 userInfo:v27];

  if (v13)
  {
    (*(v13 + 2))(v13, 0, 0, 1, v28);
  }

LABEL_60:
}

void __81__PLImageWriter_saveAssetJob_imageSurface_previewImageSurface_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 removeObjectForKey:@"completionBlock"];
  v4 = PLAssetImportGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 72));
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v11 = 138544386;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] completed job %{public}@ assetUUID %{public}@ with %{public}@ destination path %@", &v11, 0x34u);
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    (*(v10 + 16))(v10, 1, v3, 0, 0);
  }
}

- (BOOL)imageWriterJob:(id)a3 hasValidPathsWithConnection:(id)a4
{
  v49[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v39 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v8 = [WeakRetained pathManager];
  v9 = 1;
  v10 = [v8 photoDirectoryWithType:1];

  v11 = NSHomeDirectory();
  v38 = [v11 stringByAppendingPathComponent:@"Library/ReplayKit"];

  v12 = NSHomeDirectory();
  v13 = [v12 stringByAppendingPathComponent:@"Library/SMS/Attachments"];

  v48 = *MEMORY[0x1E69C04C8];
  v14 = &v48;
  v49[0] = *MEMORY[0x1E69C0588];
  while (1)
  {
    v15 = v9;
    v16 = [v6 objectForKey:*v14];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([MEMORY[0x1E69BF238] filePath:v16 hasPrefix:v10] & 1) == 0)
    {
      break;
    }

    v9 = 0;
    v14 = v49;
    if ((v15 & 1) == 0)
    {
      v17 = 1;
      v18 = v38;
      goto LABEL_9;
    }
  }

  v19 = v13;
  v20 = PLAssetImportGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *&buf[4] = v16;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "DestinationPath %@ is not under supported resourcesPath %@", buf, 0x16u);
  }

  v17 = 0;
  v18 = v38;
  v13 = v19;
LABEL_9:
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v21 = PLImageWriterSourcePathKeys();
  v22 = [v21 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v22)
  {
    v23 = v22;
    v36 = v17;
    v24 = *v41;
    v37 = v13;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [v6 objectForKey:{*(*(&v40 + 1) + 8 * i), v35}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([MEMORY[0x1E69BF238] filePath:v26 hasPrefix:v10] & 1) == 0 && (objc_msgSend(MEMORY[0x1E69BF238], "filePath:hasPrefix:", v26, v18) & 1) == 0 && (objc_msgSend(MEMORY[0x1E69BF238], "filePath:hasPrefix:", v26, v13) & 1) == 0)
        {
          v27 = v10;
          v28 = v39;
          v29 = [MEMORY[0x1E69BF238] realPathForPath:v26 error:0];
          if (!v29)
          {

            v18 = v38;
LABEL_27:
            v32 = PLAssetImportGetLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 138413058;
              *&buf[4] = v26;
              *&buf[12] = 2112;
              *&buf[14] = v10;
              *&buf[22] = 2112;
              *&buf[24] = v18;
              v45 = 2112;
              v46 = v37;
              _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Source file: %@ is not in %@ nor %@ nor %@ and the client does not have access", buf, 0x2Au);
            }

            v17 = 0;
            v13 = v37;
            goto LABEL_30;
          }

          v30 = v29;
          if (v39)
          {
            [v28 auditToken];
          }

          else
          {
            memset(buf, 0, sizeof(buf));
          }

          v35 = [v30 fileSystemRepresentation];
          v31 = sandbox_check_by_audit_token();

          v10 = v27;
          v13 = v37;
          v18 = v38;
          if (v31)
          {
            goto LABEL_27;
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v40 objects:v47 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }

    v17 = v36;
  }

LABEL_30:

  for (j = 1; j != -1; --j)
  {
  }

  return v17;
}

- (void)_processJob:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 objectForKey:*MEMORY[0x1E69C0410]];
  v8 = PLImageWriterGetLog();
  v9 = os_signpost_id_generate(v8);
  aBlock = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __29__PLImageWriter__processJob___block_invoke;
  v21 = &unk_1E7573520;
  v10 = v5;
  v22 = v10;
  v23 = self;
  v11 = v8;
  v24 = v11;
  v26 = v9;
  v12 = v7;
  v25 = v12;
  v13 = _Block_copy(&aBlock);
  v14 = v11;
  v15 = v14;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 138543362;
    v28 = v12;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ProcessImageWriterJob", "jobType: %{public}@", buf, 0xCu);
  }

  v16 = PLAssetImportGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v28 = v12;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "Processing job with type %@", buf, 0xCu);
  }

  if ([v12 isEqualToString:*MEMORY[0x1E69C0458]])
  {
    v17 = [(PLImageWriter *)self _newShortLivedLibraryWithName:"[PLImageWriter _processJob:]"];
    [(PLImageWriter *)self _processImageJob:v10 inLibrary:v17 completion:v13];
  }

  else if ([v12 isEqualToString:*MEMORY[0x1E69C0430]])
  {
    v17 = [(PLImageWriter *)self _newShortLivedLibraryWithName:"[PLImageWriter _processJob:] (BatchImage)"];
    [(PLImageWriter *)self _processBatchImageJob:v10 inLibrary:v17 completion:v13];
  }

  else
  {
    if ([v12 isEqualToString:*MEMORY[0x1E69C0420]])
    {
      [(PLImageWriter *)self _processAvalancheJob:v10 completion:v13];
      goto LABEL_11;
    }

    if ([v12 isEqualToString:*MEMORY[0x1E69C0428]])
    {
      [(PLImageWriter *)self _processAvalanchesValidationJob:v10 completion:v13];
      goto LABEL_11;
    }

    if (([v12 isEqualToString:*MEMORY[0x1E69C0478]] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x1E69C0490]) & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x1E69C0470]) & 1) != 0 || objc_msgSend(v12, "isEqualToString:", *MEMORY[0x1E69C0480]))
    {
      [(PLImageWriter *)self _processVideoJob:v10 completion:v13];
      goto LABEL_11;
    }

    if ([v12 isEqualToString:*MEMORY[0x1E69C0488]])
    {
      [(PLImageWriter *)self _processVideoSaveJob:v10 completion:v13];
      goto LABEL_11;
    }

    if ([v12 isEqualToString:*MEMORY[0x1E69C0468]])
    {
      [(PLImageWriter *)self _processSyncedVideoSaveJob:v10 completion:v13];
      goto LABEL_11;
    }

    if ([v12 isEqualToString:*MEMORY[0x1E69C0448]])
    {
      v17 = [PLAssetTransactionReason transactionReason:@"[_processJob][_processDeletePhotoStreamDataJob]Deleting PhotoStream data."];
      [(PLImageWriter *)self _processDeletePhotoStreamDataJob:v10 withReason:v17 completion:v13];
    }

    else
    {
      if ([v12 isEqualToString:*MEMORY[0x1E69C0450]])
      {
        [(PLImageWriter *)self _enablePhotoStreamJob:v10 completion:v13];
        goto LABEL_11;
      }

      if ([v12 isEqualToString:*MEMORY[0x1E69C0460]])
      {
        [(PLImageWriter *)self _processSyncClientSaveJobsJob:v10 completion:v13];
        goto LABEL_11;
      }

      if ([v12 isEqualToString:*MEMORY[0x1E69C0418]])
      {
        [(PLImageWriter *)self _processAutodeleteEmptyAlbumJob:v10 completion:v13];
        goto LABEL_11;
      }

      if ([v12 isEqualToString:*MEMORY[0x1E69C0438]])
      {
        [(PLImageWriter *)self _processCrashRecoveryJob:v10 completion:v13];
        goto LABEL_11;
      }

      if ([v12 isEqualToString:*MEMORY[0x1E69C0440]])
      {
        [(PLImageWriter *)self _processDaemonJob:v10 completion:v13];
        goto LABEL_11;
      }

      if ([v12 isEqualToString:*MEMORY[0x1E69C0498]])
      {
        [(PLImageWriter *)self _processXPCDaemonJob:v10 completion:v13];
        goto LABEL_11;
      }

      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"PLImageWriter.m" lineNumber:3993 description:{@"JobType unknown %@", v12, aBlock, v19, v20, v21, v22, v23, v24}];
    }
  }

LABEL_11:
  objc_autoreleasePoolPop(v6);
}

void __29__PLImageWriter__processJob___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKey:@"completionBlock"];
  if (v2)
  {
    [*(a1 + 40) _incrementJobCount:*(a1 + 32)];
    v3 = *(*(a1 + 40) + 16);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __29__PLImageWriter__processJob___block_invoke_2;
    v13[3] = &unk_1E75714B8;
    v4 = *(a1 + 32);
    v16 = v2;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v17 = *(a1 + 64);
    *&v7 = v6;
    *(&v7 + 1) = *(a1 + 40);
    *&v8 = v4;
    *(&v8 + 1) = v5;
    v14 = v8;
    v15 = v7;
    dispatch_async(v3, v13);

    v9 = v14;
  }

  else
  {
    v10 = *(a1 + 48);
    v9 = v10;
    v11 = *(a1 + 64);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v12 = *(a1 + 56);
      *buf = 138543362;
      v19 = v12;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v9, OS_SIGNPOST_INTERVAL_END, v11, "ProcessImageWriterJob", "jobType: %{public}@", buf, 0xCu);
    }
  }
}

uint64_t __29__PLImageWriter__processJob___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"kPLImageWriterVideoJobWillRetryKey"];
  v3 = [v2 BOOLValue];

  if ((v3 & 1) == 0)
  {
    (*(*(a1 + 64) + 16))();
  }

  v4 = *(a1 + 40);
  v5 = v4;
  v6 = *(a1 + 72);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 48);
    v9 = 138543362;
    v10 = v7;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v5, OS_SIGNPOST_INTERVAL_END, v6, "ProcessImageWriterJob", "jobType: %{public}@", &v9, 0xCu);
  }

  return [*(a1 + 56) _decrementJobCount:*(a1 + 32)];
}

- (void)_processSyncedVideoSaveJob:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v9 = [WeakRetained pathManager];
  v11 = [v9 iTunesSyncedAssetsDirectory];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:0];

  [(PLImageWriter *)self _processVideoSaveJob:v7 completion:v6];
}

- (void)_processVideoSaveJob:(id)a3 completion:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKey:@"callStack"];
  if (v9)
  {
    v10 = PLAssetImportGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = NSStringFromSelector(a2);
      *buf = 138412546;
      v46 = v11;
      v47 = 2112;
      v48 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "##### %@ %@", buf, 0x16u);
    }

    v12 = [MEMORY[0x1E695DFD8] setWithObject:@"callStack"];
    PLJobLogDictionary();
  }

  v36 = *MEMORY[0x1E69C05A0];
  v13 = [v7 objectForKey:?];
  v14 = [v7 objectForKey:*MEMORY[0x1E69C0590]];
  v15 = [v7 objectForKey:*MEMORY[0x1E69C0580]];
  v16 = [v15 BOOLValue];

  v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:0];
  v18 = [v17 path];
  LODWORD(v15) = [PLPhotoLibrary canSaveVideoToLibrary:v18];

  if (!v15)
  {
    v27 = [v7 objectForKey:@"Error"];

    if (v27)
    {
      v21 = 0;
LABEL_23:
      v8[2](v8);
      goto LABEL_24;
    }

    v20 = PLServicesLocalizedFrameworkString();
    SetErrorForJob(v7, 0xDu, v20);
    v21 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v34 = self;
  v35 = v9;
  v19 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = v19;
  if (v16)
  {
    v40 = 0;
    v33 = [v19 copyItemAtPath:v13 toPath:v14 error:&v40];
    v21 = v40;
    v43 = *MEMORY[0x1E696A3A0];
    v44 = *MEMORY[0x1E696A388];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v39 = 0;
    v23 = [v20 setAttributes:v22 ofItemAtPath:v14 error:&v39];
    v24 = v39;

    if ((v23 & 1) == 0)
    {
      v25 = PLAssetImportGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v46 = v14;
        v47 = 2112;
        v48 = v24;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Unable to assign data protection to %@: %@", buf, 0x16u);
      }
    }

    if ((v33 & 1) == 0)
    {
LABEL_12:
      v26 = PLServicesLocalizedFrameworkString();
      SetErrorForJob(v7, 0xFu, v26);

      v9 = v35;
      goto LABEL_22;
    }
  }

  else
  {
    v41 = *MEMORY[0x1E696A3A0];
    v42 = *MEMORY[0x1E696A388];
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v38 = 0;
    v29 = [v20 setAttributes:v28 ofItemAtPath:v13 error:&v38];
    v30 = v38;

    if ((v29 & 1) == 0)
    {
      v31 = PLAssetImportGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v46 = v13;
        v47 = 2112;
        v48 = v30;
        _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Unable to assign data protection to %@: %@", buf, 0x16u);
      }
    }

    v37 = 0;
    v32 = [v20 moveItemAtPath:v13 toPath:v14 error:&v37];
    v21 = v37;

    if (!v32)
    {
      goto LABEL_12;
    }
  }

  [v7 setObject:v14 forKey:v36];
  [(PLImageWriter *)v34 _processVideoJob:v7 completion:v8];

  v9 = v35;
LABEL_24:
}

- (void)_processVideoJob:(id)a3 completion:(id)a4
{
  v112 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKey:@"callStack"];
  if (v9)
  {
    v10 = PLAssetImportGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "##### %@ %@", buf, 0x16u);
    }

    v12 = [MEMORY[0x1E695DFD8] setWithObject:@"callStack"];
    PLJobLogDictionary();
  }

  v44 = [(PLImageWriter *)self _newShortLivedLibraryWithName:"[PLImageWriter _processVideoJob:completion:]"];
  v46 = [v7 objectForKey:*MEMORY[0x1E69C0590]];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v109 = __Block_byref_object_copy__5211;
  v110 = __Block_byref_object_dispose__5212;
  v13 = *MEMORY[0x1E69C0588];
  v111 = [v7 objectForKey:*MEMORY[0x1E69C0588]];
  v43 = [v7 objectForKey:*MEMORY[0x1E69C04D8]];
  v14 = [v7 objectForKeyedSubscript:@"_kPLImageWriterDidTransferVideoToDestinationPath"];
  v15 = [v14 BOOLValue];

  v45 = [v7 objectForKey:*MEMORY[0x1E69C0378]];
  if (v45)
  {
    v16 = [[PLIngestJobCameraMetadata alloc] initWithCameraMetadataPath:v45];
    [(PLIngestJobCameraMetadata *)v16 deserializeCameraMetadata];
  }

  else
  {
    v16 = 0;
  }

  v42 = v16;
  v17 = [v7 objectForKey:*MEMORY[0x1E69C0410]];
  v18 = [v17 isEqualToString:*MEMORY[0x1E69C0470]];
  v47 = v17;
  v19 = MEMORY[0x1E69C0390];
  if (v18)
  {
    v20 = [v7 objectForKey:*MEMORY[0x1E69C0390]];
    if ([v20 length])
    {
      v102 = 0;
      v103 = &v102;
      v104 = 0x3032000000;
      v105 = __Block_byref_object_copy__5211;
      v106 = __Block_byref_object_dispose__5212;
      v107 = 0;
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __45__PLImageWriter__processVideoJob_completion___block_invoke;
      v98[3] = &unk_1E7578820;
      v99 = v20;
      v100 = v44;
      v101 = &v102;
      [v100 performBlockAndWait:v98];
      v21 = v103[5];
      if (!((v21 == 0) | v15 & 1))
      {
        objc_storeStrong((*&buf[8] + 40), v21);
        [v7 setObject:*(*&buf[8] + 40) forKey:v13];
      }

      _Block_object_dispose(&v102, 8);
    }
  }

  v41 = 0;
  v96[0] = 0;
  v96[1] = v96;
  v96[2] = 0x2020000000;
  v97[0] = 0;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = v15;
  if ((v15 & 1) != 0 || (v22 = *(*&buf[8] + 40), v91 = 0, v23 = [(PLImageWriter *)self _transferVideoFromIncomingPath:v46 toDestinationPath:v22 shouldRemoveIncoming:v97 error:&v91], v24 = v91, *(v93 + 24) = v23, v41 = v24, v23))
  {
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_kPLImageWriterDidTransferVideoToDestinationPath"];
  }

  else
  {
    if (v24)
    {
      [(PLImageWriter *)self _removeTransientKeys:v7];
      v8[2](v8);
      goto LABEL_27;
    }

    v41 = 0;
  }

  v89[0] = 0;
  v89[1] = v89;
  v89[2] = 0x2020000000;
  v90 = 0;
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy__5211;
  v106 = __Block_byref_object_dispose__5212;
  v107 = 0;
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x3032000000;
  v87[3] = __Block_byref_object_copy__5211;
  v87[4] = __Block_byref_object_dispose__5212;
  v88 = 0;
  v38 = [v7 objectForKey:*MEMORY[0x1E69C03C8]];
  v25 = [v38 objectForKey:*MEMORY[0x1E69C0370]];
  v26 = [v7 objectForKey:*MEMORY[0x1E69C0320]];
  v39 = [v7 objectForKey:*MEMORY[0x1E69C0318]];
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = __Block_byref_object_copy__5211;
  v85 = __Block_byref_object_dispose__5212;
  v86 = [v7 objectForKey:*v19];
  v27 = [v47 isEqualToString:*MEMORY[0x1E69C0480]];
  v28 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];
  if ([v28 BOOLForKey:@"PLImageWriterStashCameraJob"])
  {
    v29 = [v7 objectForKeyedSubscript:@"kPLImageWriterReplayedCameraJob"];
    v30 = v29 == 0;

    if (v30)
    {
      v31 = *MEMORY[0x1E69C04E0];
      v32 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69C04E0]];

      if (v32)
      {
        v33 = [v7 objectForKeyedSubscript:v31];
      }

      else
      {
        v33 = v82[5];
      }

      v34 = v33;
      [(PLImageWriter *)self _copyJobContentsToHoldingDirectoryWithUUID:v33 incomingPath:v46 job:v7];
    }
  }

  [(PLImageWriter *)self _incrementJobCount:v7];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __45__PLImageWriter__processVideoJob_completion___block_invoke_2;
  v61[3] = &unk_1E7565CB8;
  v62 = v7;
  v80 = v27;
  v36 = v26;
  v63 = v36;
  v73 = &v81;
  v64 = v44;
  v65 = v47;
  v66 = self;
  v74 = buf;
  v67 = v46;
  v37 = v28;
  v68 = v37;
  v75 = &v92;
  v76 = v96;
  v77 = v89;
  v69 = v43;
  v40 = v39;
  v70 = v40;
  v35 = v25;
  v71 = v35;
  v72 = v42;
  v78 = v87;
  v79 = &v102;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __45__PLImageWriter__processVideoJob_completion___block_invoke_422;
  v48[3] = &unk_1E7565CE0;
  v56 = v96;
  v49 = v67;
  v50 = v9;
  v51 = self;
  v57 = buf;
  v58 = &v102;
  v59 = v87;
  v52 = v45;
  v60 = v89;
  v53 = v62;
  v54 = v69;
  v55 = v8;
  [v64 performTransaction:v61 completionHandler:v48 withPriority:1];

  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(v87, 8);

  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(v89, 8);
LABEL_27:
  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(v96, 8);

  _Block_object_dispose(buf, 8);
}

void __45__PLImageWriter__processVideoJob_completion___block_invoke(void *a1)
{
  v6 = [PLManagedAsset assetWithUUID:a1[4] inLibrary:a1[5]];
  v2 = [v6 pathForVideoFile];
  v3 = [v2 copy];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __45__PLImageWriter__processVideoJob_completion___block_invoke_2(uint64_t a1)
{
  v203[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C03B8]];
  v3 = *MEMORY[0x1E69C04B0];
  v4 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C04B0]];
  v5 = [*(a1 + 32) objectForKey:@"ImportedBy"];
  if (([v5 intValue] == 6 || objc_msgSend(v5, "intValue") == 9) && objc_msgSend(*(a1 + 40), "length"))
  {
    v6 = *(a1 + 40);
    v202 = *MEMORY[0x1E69BF4B8];
    v203[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v203 forKeys:&v202 count:1];
    PLSendCoreAnalyticEvent();
  }

  if (*(a1 + 176) == 1)
  {
    if ([*(*(*(a1 + 120) + 8) + 40) length])
    {
      v8 = [PLManagedAsset assetWithUUID:*(*(*(a1 + 120) + 8) + 40) inLibrary:*(a1 + 48)];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  if (![*(a1 + 56) isEqualToString:*MEMORY[0x1E69C0470]])
  {
LABEL_16:
    v14 = *MEMORY[0x1E69C0490];
    if ([*(a1 + 56) isEqualToString:*MEMORY[0x1E69C0490]])
    {
      v15 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0310]];
      v184 = [*(a1 + 48) photoFromAssetURL:v15];
      v16 = [v184 pathForVideoFile];
      v17 = *(*(a1 + 128) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    else
    {
      v184 = 0;
    }

    v19 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0500]];
    v188 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C04E0]];
    v183 = v4;
    v185 = v19;
    if (*(*(*(a1 + 128) + 8) + 40) || ![*(a1 + 56) isEqualToString:*MEMORY[0x1E69C0478]])
    {
      v173 = 0;
      v182 = 0;
      v171 = 0;
      v20 = 0;
      goto LABEL_29;
    }

    if (v188)
    {
      v20 = [PLManagedAsset assetWithUUID:v188 inLibrary:*(a1 + 48)];
      v21 = PLAssetImportGetLog();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        if (v22)
        {
          v23 = *(a1 + 72);
          v24 = [v20 objectID];
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v23;
          LOWORD(buf.flags) = 2114;
          *(&buf.flags + 2) = v24;
          HIWORD(buf.epoch) = 2114;
          v199 = v188;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "photoIris video job %{public}@ found asset %{public}@ with uuid %{public}@", &buf, 0x20u);
        }

        v25 = [v20 mediaGroupUUID];
        v182 = v25;
        if (v19 && v25)
        {
          v173 = 0;
          v171 = [(__CFString *)v19 isEqualToString:v25]^ 1;
        }

        else
        {
          v171 = 0;
          v173 = v25 == 0;
        }

LABEL_192:
        v149 = [*(a1 + 80) BOOLForKey:@"PLFrameDropRecoveryEnableOnOlderDevices"];
        if (v149)
        {
          v150 = PLAssetImportGetLog();
          if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.value) = 0;
            _os_log_impl(&dword_19BF1F000, v150, OS_LOG_TYPE_DEFAULT, "[FDR] Sending live photo down frame drop recovery path because PLFrameDropRecoveryEnableOnOlderDevicesUserDefaultsKey default is set", &buf, 2u);
          }
        }

        if (([v20 hasAdjustments]& 1) != 0 || (v149 | PLPlatformIsFrameDropRecoverySupported()) != 1)
        {
          v156 = [v20 pathForVideoComplementFile];
          v157 = *(*(a1 + 128) + 8);
          v154 = *(v157 + 40);
          *(v157 + 40) = v156;
        }

        else
        {
          v151 = [v20 pathForDeferredVideoComplementFile];
          v152 = *(*(a1 + 128) + 8);
          v153 = *(v152 + 40);
          *(v152 + 40) = v151;

          [v20 setVideoDeferredProcessingNeeded:1];
          [PLImageWriter _signalBackgroundProcessingNeededForAsset:v20 reason:@"frame drop recovery"];
          v154 = PLAssetImportGetLog();
          if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
          {
            v155 = *(*(*(a1 + 128) + 8) + 40);
            LODWORD(buf.value) = 138412290;
            *(&buf.value + 4) = v155;
            _os_log_impl(&dword_19BF1F000, v154, OS_LOG_TYPE_DEFAULT, "[FDR] Marking video complement for frame drop recovery, assigning path %@", &buf, 0xCu);
          }
        }

        if (*(*(*(a1 + 128) + 8) + 40))
        {
          v158 = PLAssetImportGetLog();
          if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
          {
            v159 = *(a1 + 72);
            v160 = *(*(*(a1 + 128) + 8) + 40);
            LODWORD(buf.value) = 138543618;
            *(&buf.value + 4) = v159;
            LOWORD(buf.flags) = 2114;
            *(&buf.flags + 2) = v160;
            _os_log_impl(&dword_19BF1F000, v158, OS_LOG_TYPE_DEFAULT, "photoIris video job %{public}@ -> destination %{public}@", &buf, 0x16u);
          }
        }

        else
        {
          v161 = [*(a1 + 64) cameraAssetPathForNewAssetWithExtension:@"MOV" assetUUID:*(*(*(a1 + 120) + 8) + 40)];
          v162 = *(*(a1 + 128) + 8);
          v163 = *(v162 + 40);
          *(v162 + 40) = v161;

          v164 = PLAssetImportGetLog();
          if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
          {
            v165 = *(a1 + 72);
            v166 = *(*(*(a1 + 128) + 8) + 40);
            LODWORD(buf.value) = 138543618;
            *(&buf.value + 4) = v165;
            LOWORD(buf.flags) = 2114;
            *(&buf.flags + 2) = v166;
            _os_log_impl(&dword_19BF1F000, v164, OS_LOG_TYPE_DEFAULT, "photoIris video job %{public}@ aborting, will import video at %{public}@", &buf, 0x16u);
          }

          v158 = v20;
          v20 = 0;
        }

        [*(a1 + 32) setObject:*(*(*(a1 + 128) + 8) + 40) forKeyedSubscript:*MEMORY[0x1E69C0588]];
        [*(a1 + 32) setObject:0 forKeyedSubscript:@"kPLImageWriterVideoJobWillRetryKey"];
LABEL_29:
        if ((*(*(*(a1 + 136) + 8) + 24) & 1) == 0)
        {
          v37 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0590]];
          v38 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0588]];
          v39 = *(a1 + 64);
          v40 = *(*(a1 + 144) + 8);
          v197 = 0;
          v41 = [v39 _transferVideoFromIncomingPath:v37 toDestinationPath:v38 shouldRemoveIncoming:v40 + 24 error:&v197];
          v42 = v197;
          *(*(*(a1 + 136) + 8) + 24) = v41;
          v43 = *(*(*(a1 + 136) + 8) + 24);

          if ((v43 & 1) == 0)
          {
            if (v42)
            {
              v9 = 0;
              v4 = v183;
              v19 = v185;
LABEL_183:
              v147 = v182;
LABEL_184:

              goto LABEL_185;
            }
          }
        }

        v26 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C03D8]];
        v27 = v26;
        if (v20 && v26)
        {
          v28 = [v20 pathForFullsizeRenderVideoFile];
          v29 = *(a1 + 64);
          v30 = *(*(a1 + 152) + 8);
          v196 = 0;
          v31 = [v29 _transferVideoFromIncomingPath:v27 toDestinationPath:v28 shouldRemoveIncoming:v30 + 24 error:&v196];
          v32 = v196;
          if (v31)
          {
            [v20 setVideoCpVisibilityState:[v20 videoCpVisibilityState]| 8];
          }
        }

        v181 = v5;
        v187 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(*(a1 + 128) + 8) + 40) isDirectory:0];
        if ((*(a1 + 176) & 1) == 0)
        {
          [MEMORY[0x1E69870D8] consolidateMovieFragmentsInFile:v187 error:0];
        }

        v178 = v27;
        v33 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0398]];
        v34 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C04A0]];
        if ([*(a1 + 32) objectForKey:*MEMORY[0x1E69C0598]])
        {
          v35 = DCIM_newPLImageWithCGImage();
          v19 = v185;
          if (v35)
          {
            v180 = v35;
            v36 = PLCreateImageWithFormatFromImage();
LABEL_40:
            v179 = v36;
            goto LABEL_46;
          }
        }

        else
        {
          v19 = v185;
          if (!v20)
          {
            if (*(a1 + 88))
            {
              v180 = DCIM_newPLImageWithContentsOfFile();
              v36 = DCIM_newPLImageWithContentsOfFile();
            }

            else
            {
              v117 = *(*(*(a1 + 128) + 8) + 40);
              v194 = 0;
              v195 = 0;
              PLPreviewImageAndDurationForVideoAtPathWithPreferredTime(0, v117, &v195, &v194, 0);
              v180 = v195;
              v36 = v194;
            }

            goto LABEL_40;
          }
        }

        v179 = 0;
        v180 = 0;
LABEL_46:
        v177 = v33;
        if (v33)
        {
          if (!v34)
          {
            v34 = v33;
          }

          if ((*(a1 + 176) & 1) == 0)
          {
            v44 = v14;
            v45 = v3;
            v46 = v2;
            v47 = objc_alloc(MEMORY[0x1E695DF20]);
            v48 = v34;
            v49 = [v47 initWithObjectsAndKeys:{v33, *MEMORY[0x1E696A308], v34, *MEMORY[0x1E696A350], 0}];
            v50 = [MEMORY[0x1E696AC08] defaultManager];
            v51 = *(*(*(a1 + 128) + 8) + 40);
            v193 = 0;
            v52 = [v50 setAttributes:v49 ofItemAtPath:v51 error:&v193];
            v53 = v193;

            if ((v52 & 1) == 0)
            {
              v54 = PLAssetImportGetLog();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v55 = *(*(*(a1 + 128) + 8) + 40);
                LODWORD(buf.value) = 138543874;
                *(&buf.value + 4) = v49;
                LOWORD(buf.flags) = 2112;
                *(&buf.flags + 2) = v55;
                HIWORD(buf.epoch) = 2112;
                v199 = v53;
                _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_ERROR, "Failed to write file attributes %{public}@ on %@: %@", &buf, 0x20u);
              }
            }

            v19 = v185;
            v34 = v48;
            v2 = v46;
            v3 = v45;
            v14 = v44;
          }
        }

        v176 = v34;
        v56 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0558]];
        v175 = v56;
        if (v56)
        {
          v57 = [v56 integerValue];
          if (v20)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v57 = [MEMORY[0x1E69BF328] defaultSavedAssetTypeForUnspecifiedImageWriterJobs];
          if (v20)
          {
LABEL_57:
            v58 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0508]];
            v59 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0510]];
            memset(&v192, 0, sizeof(v192));
            if (v58)
            {
              CMTimeMakeFromDictionary(&v192, v58);
            }

            else
            {
              v192 = **&MEMORY[0x1E6960C70];
            }

            v5 = v181;
            memset(&v191, 0, sizeof(v191));
            if (v59)
            {
              CMTimeMakeFromDictionary(&v191, v59);
            }

            else
            {
              v191 = **&MEMORY[0x1E6960C70];
            }

            buf = v191;
            v190 = v192;
            v63 = [v20 becomePhotoIrisWithMediaGroupUUID:v19 mainFileMetadata:0 videoURL:v187 videoDuration:&buf stillDisplayTime:&v190 options:0];
            if (v63)
            {
              v64 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C04E8]];
              v65 = [v64 BOOLValue];

              if (v65)
              {
                v66 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C04F8]];
                [v20 updatePhotoIrisVisibilityStateWithVitalityScore:v66];
              }

              v67 = v192.flags & 0x1D;
              v68 = v191.flags & 0x1D;
              v70 = v67 != 1 || v68 != 1;
              v71 = v171;
              if ((v70 | v171 | v173))
              {
                v72 = PLAssetImportGetLog();
                if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                {
                  v169 = v2;
                  if (v67 == 1)
                  {
                    v73 = @"N";
                  }

                  else
                  {
                    v73 = @"Y";
                  }

                  if (v68 == 1)
                  {
                    v74 = @"N";
                  }

                  else
                  {
                    v74 = @"Y";
                  }

                  if (v171)
                  {
                    v75 = v74;
                    v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Y (existing %@, incoming %@)", v182, v19];
                    v74 = v75;
                    v77 = v76;
                  }

                  else
                  {
                    v77 = @"N";
                  }

                  if (v173)
                  {
                    v118 = @"Y";
                  }

                  else
                  {
                    v118 = @"N";
                  }

                  LODWORD(buf.value) = 138413058;
                  *(&buf.value + 4) = v73;
                  LOWORD(buf.flags) = 2112;
                  *(&buf.flags + 2) = v74;
                  HIWORD(buf.epoch) = 2112;
                  v199 = v77;
                  v200 = 2112;
                  v201 = v118;
                  _os_log_impl(&dword_19BF1F000, v72, OS_LOG_TYPE_ERROR, "Invalid live photo metadata, non-numeric still display time: %@, video duration: %@, pairing identifier mismatch: %@, pairing identifier potentially missing in image: %@", &buf, 0x2Au);
                  v71 = v171;
                  if (v171)
                  {
                  }

                  v2 = v169;
                  v5 = v181;
                }

                if (MEMORY[0x19EAEE230]())
                {
                  v119 = [MEMORY[0x1E696AD60] stringWithFormat:@"Captured live photo with invalid video metadata:"];
                  v120 = v119;
                  if (v67 != 1)
                  {
                    [v119 appendString:@"\n  Still display time is non-numeric"];
                  }

                  if (v68 != 1)
                  {
                    [v120 appendString:@"\n  Video duration is non-numeric"];
                  }

                  if (v71)
                  {
                    [v120 appendFormat:@"\n  Pairing identifier does not match, existing identifier %@ does not match incoming identifier %@", v182, v19];
                  }

                  if (v173)
                  {
                    [v120 appendFormat:@"\n  No pairing identifier found for existing asset, image metadata is potentially missing pairing identifier (incoming pairing identifier: %@)", v19];
                  }

                  [PLDiagnostics fileRadarUserNotificationWithHeader:@"Photos Live Photo Capture Issue Detected!" message:@"Please file a Radar for critical live photo capture issue." radarTitle:@"TTR Photos: captured live photo with invalid video metadata" radarDescription:v120];
                }

                [PLAutoBugCapture captureImageWriterInvalidLivePhotoMetadataWithStillDisplayTimeNotNumeric:v67 != 1 videoDurationIsNotNumeric:v68 != 1 photoIrisMediaGroupUUIDDoesNotMatch:v71 existingPhotoIrisMediaGroupUUIDIsMissing:v173 completion:&__block_literal_global_418];
              }

              if ([v20 hasAdjustments])
              {
                if (![v20 deferredProcessingNeeded])
                {
                  [v20 setDeferredProcessingNeeded:2];
                  [PLImageWriter _signalBackgroundProcessingNeededForAsset:v20 reason:@"pairing succeeded and asset has adjustments"];
                }

                if (([v20 videoCpVisibilityState]& 1) == 0)
                {
                  [v20 setVideoCpVisibilityState:[v20 videoCpVisibilityState]| 8];
                }

                v121 = [v20 pathForFullsizeRenderImageFile];
                v122 = [PLResourceInstaller onDemand_installAdjustedFullSizeRenderResourceAtFilePath:v121 forAsset:v20];

                v123 = [PLResourceInstaller onDemand_installAdjustedDeferredFullSizeVideoComplementResourceForAsset:v20];
              }
            }

            if (!v188)
            {
              goto LABEL_164;
            }

            v124 = [*(a1 + 72) stringByDeletingLastPathComponent];
            v125 = _photoIrisIndicatorFilePathForPhoto(v124, v188);
            v126 = PLAssetImportGetLog();
            v127 = os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT);
            if (v63)
            {
              if (v127)
              {
                v128 = [v187 path];
                v129 = [v20 mainFileURL];
                [v129 path];
                v131 = v130 = v2;
                LODWORD(buf.value) = 138543618;
                *(&buf.value + 4) = v128;
                LOWORD(buf.flags) = 2114;
                *(&buf.flags + 2) = v131;
                v132 = "photoIris video job successfully paired %{public}@ with %{public}@";
LABEL_162:
                _os_log_impl(&dword_19BF1F000, v126, OS_LOG_TYPE_DEFAULT, v132, &buf, 0x16u);

                v2 = v130;
                v19 = v185;
              }
            }

            else if (v127)
            {
              v128 = [v187 path];
              v129 = [v20 mainFileURL];
              [v129 path];
              v131 = v130 = v2;
              LODWORD(buf.value) = 138543618;
              *(&buf.value + 4) = v128;
              LOWORD(buf.flags) = 2114;
              *(&buf.flags + 2) = v131;
              v132 = "photoIris video job failed to pair %{public}@ with %{public}@";
              goto LABEL_162;
            }

            [PLImageWriter photoIrisPairingDidSucceed:v63 fileIndicatorPath:v125 photoAsset:v20 photoLibrary:*(a1 + 48)];
            v5 = v181;
LABEL_164:
            v9 = 0;
LABEL_165:
            if (([v9 isInserted] & 1) == 0 && objc_msgSend(v9, "isUpdated"))
            {
              [v9 setNeedsMomentUpdate:1];
            }

            v133 = [*(a1 + 48) assetURLForPhoto:v9];
            if (v133)
            {
              [*(a1 + 32) setObject:v133 forKey:*MEMORY[0x1E69C0310]];
            }

            if (v9)
            {
              [*(a1 + 32) setObject:v9 forKey:@"PLImageWriterTransientAsset"];
              v134 = *(a1 + 112);
              if (v134)
              {
                [v134 applyCameraMetadataToAsset:v9];
              }
            }

            else
            {
              v135 = v63 ^ 1;
              if (!v20)
              {
                v135 = 1;
              }

              if ((v135 & 1) == 0)
              {
                [*(a1 + 32) setObject:v20 forKey:@"PLImageWriterTransientAsset"];
              }
            }

            v136 = [*(a1 + 32) objectForKey:@"job.private.ClientInLimitedLibraryMode"];
            v137 = [v136 BOOLValue];

            v138 = [*(a1 + 32) objectForKey:@"job.private.LimitedLibraryClientFetchFilterIdentifier"];
            v139 = *(*(a1 + 160) + 8);
            v140 = *(v139 + 40);
            *(v139 + 40) = v138;

            if (v137 && [*(*(*(a1 + 160) + 8) + 40) length] && (objc_msgSend(v5, "intValue") == 6 || objc_msgSend(v5, "intValue") == 9))
            {
              v141 = [*(a1 + 32) objectForKey:@"job.private.LimitedLibraryClientAuthorization"];
              v142 = *(a1 + 64);
              v143 = [v9 uuid];
              v144 = [v142 _processLimitedLibraryAdditionIfNeededWithAssetUUID:v143 clientBundleIdentifier:*(a1 + 40) clientAuthorization:v141 library:*(a1 + 48)];
              v145 = *(*(a1 + 168) + 8);
              v146 = *(v145 + 40);
              *(v145 + 40) = v144;
            }

            v4 = v183;
            goto LABEL_183;
          }
        }

        if ([*(a1 + 56) isEqualToString:v14])
        {
          v60 = MEMORY[0x1E695DFF8];
          v61 = [v184 pathForVideoFile];
          v62 = [v60 fileURLWithPath:v61 isDirectory:0];

          [v184 setVideoInfoFromFileAtURL:v62 mainFileMetadata:0 fullSizeRenderURL:0 overwriteOriginalProperties:0];
          [v184 generateAndUpdateThumbnailsWithPreviewImage:v180 thumbnailImage:v179 fromImageSource:0 imageData:0 forceSRGBConversion:0];
          v9 = v184;

          LOBYTE(v63) = 0;
        }

        else
        {
          v78 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v79 = v78;
          v80 = *(a1 + 40);
          if (v80)
          {
            [v78 setObject:v80 forKey:*MEMORY[0x1E69C0320]];
          }

          v81 = *(a1 + 96);
          if (v81)
          {
            [v79 setObject:v81 forKey:*MEMORY[0x1E69C0318]];
          }

          if (v183)
          {
            [v79 setObject:v183 forKey:v3];
          }

          v82 = *(a1 + 104);
          if (v82)
          {
            [v79 setObject:v82 forKey:*MEMORY[0x1E69C0370]];
          }

          v83 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(*(a1 + 128) + 8) + 40) isDirectory:0];
          v84 = objc_alloc(MEMORY[0x1E69C0718]);
          v85 = [*(a1 + 48) libraryBundle];
          v86 = [v85 timeZoneLookup];
          v87 = [v84 initWithAVURL:v83 options:12 timeZoneLookup:v86];

          LOBYTE(v168) = 0;
          LOBYTE(v167) = *(a1 + 176);
          v172 = v83;
          v186 = v87;
          v88 = [*(a1 + 48) addDCIMEntryAtFileURL:v83 mainFileMetadata:v87 previewImage:v180 thumbnailImage:v179 savedAssetType:v57 replacementUUID:v2 publicGlobalUUID:0 extendedInfo:v79 withUUID:*(*(*(a1 + 120) + 8) + 40) isPlaceholder:v167 placeholderFileURL:0 forFinalCameraImage:v168];
          v9 = v88;
          if (v177)
          {
            v89 = [v88 dateCreated];
            IsApproximatelyEqual = PLDateIsApproximatelyEqual(v177, v89, 0.001);

            if (!IsApproximatelyEqual)
            {
              [v9 didSetCustomDateCreated];
              [v9 setDateCreated:v177];
            }
          }

          if (*(a1 + 176) == 1)
          {
            v91 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69C0538]];
            v92 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69C0530]];
            v93 = v92;
            if (v91 && v92)
            {
              [v9 setWidth:{objc_msgSend(v91, "longLongValue")}];
              [v9 setHeight:{objc_msgSend(v93, "longLongValue")}];
            }
          }

          if (v19)
          {
            [v9 setMediaGroupUUID:v19];
          }

          v174 = v79;
          v94 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0308]];
          v63 = v94;
          if (v94)
          {
            [v9 updateAssetKindAndPlaybackStyleIfNeededWithKind:{objc_msgSend(v94, "intValue")}];
          }

          v170 = v2;
          v95 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0300]];
          v96 = v95;
          if (v95)
          {
            [v9 setKindSubtype:{objc_msgSend(v95, "intValue")}];
          }

          v97 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0578]];
          v98 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0350]];
          v99 = *MEMORY[0x1E695F060];
          v100 = *(MEMORY[0x1E695F060] + 8);
          if (v98)
          {
            v101 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69C03F0]];
            v102 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69C03E0]];
            v103 = v102;
            if (v101 && v102)
            {
              [v101 floatValue];
              v99 = v104;
              [v103 floatValue];
              v100 = v105;
            }
          }

          [objc_opt_class() setAdjustmentsForNewVideo:v9 mainFileMetadata:v186 withAdjustmentsDictionary:v97 cameraAdjustments:v98 renderedContentPath:v178 renderedPosterFramePreviewPath:*(a1 + 88) finalAssetSize:{v99, v100}];
          if (v9)
          {
            v189 = 0;
            v106 = [PLResourceInstaller installInternalResourcesForExistingAsset:v9 assumeNoExistingResources:0 referencedResourceURLs:0 error:&v189];
            v107 = v189;
            if (!v106)
            {
              v108 = PLAssetImportGetLog();
              if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf.value) = 138412546;
                *(&buf.value + 4) = v9;
                LOWORD(buf.flags) = 2114;
                *(&buf.flags + 2) = v107;
                _os_log_impl(&dword_19BF1F000, v108, OS_LOG_TYPE_ERROR, "Failed to install resources for asset: %@, reason: %{public}@", &buf, 0x16u);
              }
            }
          }

          LOBYTE(v63) = 0;
          v2 = v170;
        }

        v5 = v181;
        goto LABEL_165;
      }

      if (v22)
      {
        v109 = *(a1 + 72);
        LODWORD(buf.value) = 138543618;
        *(&buf.value + 4) = v109;
        LOWORD(buf.flags) = 2114;
        *(&buf.flags + 2) = v188;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "photoIris video job %{public}@ did not find asset with uuid %{public}@", &buf, 0x16u);
      }
    }

    if (v19)
    {
      v110 = [*(a1 + 48) managedObjectContext];
      v111 = [PLManagedAsset imageAssetsForMediaGroupUUID:v19 moc:v110];
      v20 = [v111 firstObject];

      v112 = PLAssetImportGetLog();
      v113 = os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        if (v113)
        {
          v114 = *(a1 + 72);
          v115 = [v20 objectID];
          v116 = [v20 uuid];
          LODWORD(buf.value) = 138544130;
          *(&buf.value + 4) = v114;
          LOWORD(buf.flags) = 2114;
          *(&buf.flags + 2) = v115;
          HIWORD(buf.epoch) = 2114;
          v199 = v116;
          v200 = 2114;
          v201 = v185;
          _os_log_impl(&dword_19BF1F000, v112, OS_LOG_TYPE_DEFAULT, "photoIris video job %{public}@ found asset %{public}@/%{public}@ with media group UUID %{public}@", &buf, 0x2Au);
        }

        v173 = 0;
        v182 = 0;
        v171 = 0;
        goto LABEL_192;
      }

      if (v113)
      {
        v148 = *(a1 + 72);
        LODWORD(buf.value) = 138543618;
        *(&buf.value + 4) = v148;
        LOWORD(buf.flags) = 2114;
        *(&buf.flags + 2) = v19;
        _os_log_impl(&dword_19BF1F000, v112, OS_LOG_TYPE_DEFAULT, "photoIris video job %{public}@ did not find asset with media group UUID %{public}@", &buf, 0x16u);
      }
    }

    v20 = 0;
    if ([*(a1 + 64) _retryPairedVideoJob:*(a1 + 32) pairingType:@"live-photo" pairingIdentifier:v188 retryMax:22])
    {
      v147 = 0;
      v9 = 0;
      goto LABEL_184;
    }

    v173 = 0;
    v171 = 0;
    v182 = 0;
    goto LABEL_192;
  }

  if (![*(*(*(a1 + 120) + 8) + 40) length])
  {
LABEL_15:
    [*(a1 + 32) setObject:0 forKeyedSubscript:@"kPLImageWriterVideoJobWillRetryKey"];
    goto LABEL_16;
  }

  v10 = [PLManagedAsset assetWithUUID:*(*(*(a1 + 120) + 8) + 40) inLibrary:*(a1 + 48)];
  if (v10)
  {
    v11 = *(*(*(a1 + 120) + 8) + 40);

    v12 = *(*(a1 + 120) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    v2 = v11;
LABEL_14:

    goto LABEL_15;
  }

  if (([*(a1 + 64) _retryPairedVideoJob:*(a1 + 32) pairingType:@"timelapse" pairingIdentifier:*(*(*(a1 + 120) + 8) + 40) retryMax:8] & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v9 = 0;
LABEL_185:
}

void __45__PLImageWriter__processVideoJob_completion___block_invoke_422(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = v2;
  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v4 = *(a1 + 32);
    v48 = 0;
    v5 = [v2 removeItemAtPath:v4 error:&v48];
    v6 = v48;
    if (v5)
    {
      if (!*(a1 + 40))
      {
LABEL_10:
        v14 = *(a1 + 48);
        v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(*(a1 + 96) + 8) + 40) isDirectory:0];
        [v14 _removeInProgressExtendedAttributesForFileAtURL:v15];

        goto LABEL_11;
      }

      v7 = PLAssetImportGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 32);
        *buf = 138412290;
        v52 = v8;
        v9 = "#### deleted %@";
        v10 = v7;
        v11 = OS_LOG_TYPE_DEBUG;
        v12 = 12;
LABEL_8:
        _os_log_impl(&dword_19BF1F000, v10, v11, v9, buf, v12);
      }
    }

    else
    {
      v7 = PLAssetImportGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        *buf = 138412546;
        v52 = v13;
        v53 = 2112;
        v54 = v6;
        v9 = "Failed to delete incoming video %@ : %@";
        v10 = v7;
        v11 = OS_LOG_TYPE_ERROR;
        v12 = 22;
        goto LABEL_8;
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  if (*(*(*(a1 + 104) + 8) + 40))
  {
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = *(*(*(a1 + 104) + 8) + 40);
    v18 = *(*(*(a1 + 112) + 8) + 40);
    v49 = @"PLLimitedLibraryFetchFiltersUpdatedNotificationApplicationIdentifier";
    v50 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    [v16 postNotificationName:@"PLLimitedLibraryFetchFiltersUpdatedNotification" object:v17 userInfo:v19];
  }

  v20 = *(a1 + 56);
  if (v20)
  {
    v47 = 0;
    v21 = [v3 removeItemAtPath:v20 error:&v47];
    v22 = v47;
    if ((v21 & 1) == 0)
    {
      v23 = PLAssetImportGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 56);
        *buf = 138412546;
        v52 = v24;
        v53 = 2112;
        v54 = v22;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to delete incoming camera metadata %@ : %@", buf, 0x16u);
      }
    }
  }

  if (*(*(*(a1 + 120) + 8) + 24) == 1)
  {
    v25 = [*(a1 + 64) objectForKey:*MEMORY[0x1E69C03D8]];
    v46 = 0;
    v26 = [v3 removeItemAtPath:v25 error:&v46];
    v27 = v46;
    v28 = PLAssetImportGetLog();
    v29 = v28;
    if (v26)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v52 = v25;
        v30 = "#### deleted %@";
        v31 = v29;
        v32 = OS_LOG_TYPE_DEBUG;
        v33 = 12;
LABEL_25:
        _os_log_impl(&dword_19BF1F000, v31, v32, v30, buf, v33);
      }
    }

    else if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v52 = v25;
      v53 = 2112;
      v54 = v27;
      v30 = "Failed to delete incoming filtered video %@ : %@";
      v31 = v29;
      v32 = OS_LOG_TYPE_ERROR;
      v33 = 22;
      goto LABEL_25;
    }
  }

  if (*(a1 + 72) && [v3 fileExistsAtPath:?])
  {
    v34 = *(a1 + 72);
    v45 = 0;
    v35 = [v3 removeItemAtPath:v34 error:&v45];
    v36 = v45;
    v37 = PLAssetImportGetLog();
    v38 = v37;
    if (v35)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v39 = *(a1 + 72);
        *buf = 138412290;
        v52 = v39;
        v40 = "#### deleted %@";
        v41 = v38;
        v42 = OS_LOG_TYPE_DEBUG;
        v43 = 12;
LABEL_34:
        _os_log_impl(&dword_19BF1F000, v41, v42, v40, buf, v43);
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v44 = *(a1 + 72);
      *buf = 138412546;
      v52 = v44;
      v53 = 2112;
      v54 = v36;
      v40 = "Failed to delete incoming filtered video preview %@ : %@";
      v41 = v38;
      v42 = OS_LOG_TYPE_ERROR;
      v43 = 22;
      goto LABEL_34;
    }
  }

  [*(a1 + 48) _removeTransientKeys:*(a1 + 64)];
  (*(*(a1 + 80) + 16))();
  [*(a1 + 48) _decrementJobCount:*(a1 + 64)];
}

void __45__PLImageWriter__processVideoJob_completion___block_invoke_415(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLAssetImportGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Auto bug capture for invalid live photo metadata completed with result: %@", &v4, 0xCu);
  }
}

- (BOOL)_retryPairedVideoJob:(id)a3 pairingType:(id)a4 pairingIdentifier:(id)a5 retryMax:(unint64_t)a6
{
  *(&v37[1] + 6) = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 objectForKey:*MEMORY[0x1E69C0590]];
  v14 = PLAssetImportGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
    v16 = [MEMORY[0x1E69BF220] descriptionWithPath:v13];
    *buf = 138544130;
    *v34 = v11;
    *&v34[8] = 2114;
    *v35 = v15;
    *&v35[8] = 2112;
    *v36 = v16;
    *&v36[8] = 2114;
    v37[0] = v12;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ paired video job %{public}@: %@ did not find asset with uuid %{public}@", buf, 0x2Au);
  }

  v17 = [v10 objectForKeyedSubscript:@"kPLImageWriterPairedVideoJobRetryKey"];
  v18 = [v17 integerValue];

  if (v18 >= a6)
  {
    v24 = PLAssetImportGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
      v26 = v25 = v12;
      v27 = [MEMORY[0x1E69BF220] descriptionWithPath:v13];
      *buf = 67110146;
      *v34 = v18;
      *&v34[4] = 1024;
      *&v34[6] = a6;
      *v35 = 2114;
      *&v35[2] = v11;
      *v36 = 2114;
      *&v36[2] = v26;
      LOWORD(v37[0]) = 2112;
      *(v37 + 2) = v27;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Too many retries (%d/%d) for %{public}@ paired video job %{public}@: %@ will save as standalone video asset", buf, 0x2Cu);

      v12 = v25;
    }
  }

  else
  {
    v29 = v12;
    v19 = _kPLImageWriterPairedVideoJobRetryDelays[v18];
    v20 = PLAssetImportGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
      v22 = [MEMORY[0x1E69BF220] descriptionWithPath:v13];
      *buf = 138544386;
      *v34 = v11;
      *&v34[8] = 2114;
      *v35 = v21;
      *&v35[8] = 2112;
      *v36 = v22;
      *&v36[8] = 1024;
      LODWORD(v37[0]) = v18 + 1;
      WORD2(v37[0]) = 1024;
      *(v37 + 6) = a6;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ paired video job %{public}@: %@ will retry (%d/%d)", buf, 0x2Cu);
    }

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18 + 1];
    [v10 setObject:v23 forKeyedSubscript:@"kPLImageWriterPairedVideoJobRetryKey"];

    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kPLImageWriterVideoJobWillRetryKey"];
    [(PLImageWriter *)self _incrementJobCount:v10];
    dispatch_time(0, (v19 * 1000000000.0));
    v30 = v11;
    v31 = v10;
    v32 = v29;
    v12 = v29;
    pl_dispatch_after();

    v24 = v30;
  }

  return v18 < a6;
}

uint64_t __77__PLImageWriter__retryPairedVideoJob_pairingType_pairingIdentifier_retryMax___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = PLAssetImportGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 64));
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
    v6 = *(a1 + 48);
    v8 = 138544130;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] re-enqueing %{public}@ recovery job %{public}@ with pairing identifier (uuid) %{public}@", &v8, 0x2Au);
  }

  [*(a1 + 56) enqueueJob:*(a1 + 40)];
  return [*(a1 + 56) _decrementJobCount:*(a1 + 40)];
}

- (BOOL)_transferVideoFromIncomingPath:(id)a3 toDestinationPath:(id)a4 shouldRemoveIncoming:(BOOL *)a5 error:(id *)a6
{
  v49[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (!v9 || !v10)
  {
LABEL_5:
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (([v9 isEqualToString:v10]& 1) != 0)
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
    goto LABEL_5;
  }

  v17 = MEMORY[0x1E69BF230];
  v18 = *MEMORY[0x1E69BFDB0];
  v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
  [v17 persistString:v11 forKey:v18 fileURL:v19];

  v20 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = [v11 stringByDeletingLastPathComponent];
  v41 = 0;
  LODWORD(v19) = [v20 createDirectoryIfNeededAtPath:v21 error:&v41];
  v22 = v41;
  if (v19)
  {
    v48 = *MEMORY[0x1E696A3A0];
    v49[0] = *MEMORY[0x1E696A388];
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v40 = 0;
    v24 = [v20 setAttributes:v23 ofItemAtPath:v9 error:&v40];
    v25 = v40;

    if ((v24 & 1) == 0)
    {
      v26 = PLAssetImportGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v43 = v9;
        v44 = 2112;
        v45 = v25;
        _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Unable to assign data protection to %@: %@", buf, 0x16u);
      }
    }

    v37 = v21;
    v38 = v20;
    v27 = PLAssetImportGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v43 = v11;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEBUG, "#### added destination EA %@", buf, 0xCu);
    }

    v28 = MEMORY[0x1E69BF238];
    v29 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
    v30 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:0];
    v39 = v22;
    v14 = [v28 copyItemAtURL:v29 toURL:v30 error:&v39];
    v12 = v39;

    v31 = PLAssetImportGetLog();
    v32 = v31;
    if (v14)
    {
      v21 = v37;
      v20 = v38;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v11;
        v33 = "#### linked videoIncomingPath to %@";
        v34 = v32;
        v35 = OS_LOG_TYPE_DEBUG;
        v36 = 12;
LABEL_25:
        _os_log_impl(&dword_19BF1F000, v34, v35, v33, buf, v36);
      }
    }

    else
    {
      v21 = v37;
      v20 = v38;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v43 = v9;
        v44 = 2112;
        v45 = v11;
        v46 = 2112;
        v47 = v12;
        v33 = "Failed to copy %@ to %@: %@";
        v34 = v32;
        v35 = OS_LOG_TYPE_ERROR;
        v36 = 32;
        goto LABEL_25;
      }
    }

    goto LABEL_27;
  }

  v25 = PLAssetImportGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v43 = v21;
    v44 = 2112;
    v45 = v22;
    _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Failed to create directory at %@: %@", buf, 0x16u);
  }

  v14 = 0;
  v12 = v22;
LABEL_27:

  v13 = 1;
  if (a5)
  {
LABEL_6:
    *a5 = v13;
  }

LABEL_7:
  if (a6)
  {
    v15 = v12;
    *a6 = v12;
  }

  return v14;
}

- (void)_processXPCDaemonJob:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKey:@"kPLImageWriterDaemonJobEventKey"];
  [v6 runDaemonSide];
  v5[2](v5);
}

- (void)_processDaemonJob:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"kPLImageWriterDaemonJobEventKey"];
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
    [PLDaemonJob runDaemonSideWithXPCEvent:v8 libraryServicesManager:WeakRetained];
  }

  else
  {
    v10 = [v6 objectForKey:@"kPLImageWriterDaemonJobRecoveredEventsKey"];
    v11 = v10;
    if (v10)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v20 = v11;
        v21 = v7;
        v22 = v6;
        v15 = *v24;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            v18 = objc_autoreleasePoolPush();
            v19 = objc_loadWeakRetained(&self->_libraryServicesManager);
            [PLDaemonJob runDaemonSideWithXPCEvent:v17 libraryServicesManager:v19];

            objc_autoreleasePoolPop(v18);
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v14);
        v7 = v21;
        v6 = v22;
        v11 = v20;
      }
    }

    else
    {
      v12 = PLAssetImportGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v6;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "##### missing event(s) for PLDaemonJob %@", buf, 0xCu);
      }
    }
  }

  v7[2](v7);
}

- (void)_processCrashRecoveryJob:(id)a3 completion:(id)a4
{
  v183 = *MEMORY[0x1E69E9840];
  v124 = a3;
  v121 = a4;
  v134 = self;
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v122 = [WeakRetained crashRecoverySupport];

  v8 = +[PLPhotoLibrary areOpportunisticTasksDisabled];
  v9 = [v122 isSafeToRecoverAfterCrash];
  v10 = [(PLImageWriter *)self _hasNonCrashRecoveryJobsEnqueued];
  v11 = +[PLAssetsdCrashRecoverySupport trackingPerformChangesRequestInProgressCount];
  v12 = v9 & ~v8 & ~v10 & (v11 < 1);
  if (v12 != 1 || ![(PLImageWriter *)v134 _enterAtomicCrashRecoveryJobProcessing])
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v16 = v15;
    if (v8)
    {
      [v15 addObject:@"opportunistic tasks are disabled"];
      if (v9)
      {
LABEL_9:
        if ((v10 & 1) == 0)
        {
LABEL_11:
          if (v11 >= 1)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d changes request in progress", v11];
            [v16 addObject:v17];
          }

          if (v12)
          {
            [v16 addObject:@"crash recovery job in progress"];
          }

          v18 = PLAssetImportGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v124 objectForKeyedSubscript:*MEMORY[0x1E69C0408]];
            v20 = [v16 componentsJoinedByString:{@", "}];
            *buf = 138543618;
            v176 = v19;
            v177 = 2114;
            v178 = v20;
            _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "##### RECOVER: delaying crash recovery job (%{public}@) because: %{public}@", buf, 0x16u);
          }

          v21 = [v124 mutableCopy];
          dispatch_time(0, 3000000000);
          v166 = MEMORY[0x1E69E9820];
          v167 = 3221225472;
          v168 = __53__PLImageWriter__processCrashRecoveryJob_completion___block_invoke;
          v169 = &unk_1E75782F8;
          v172 = a2;
          v170 = v21;
          v171 = v134;
          v22 = v21;
          pl_dispatch_after();
          v121[2]();

          goto LABEL_132;
        }

LABEL_10:
        [v16 addObject:@"other jobs are in progress"];
        goto LABEL_11;
      }
    }

    else if (v9)
    {
      goto LABEL_9;
    }

    [v16 addObject:@"open camera transaction"];
    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = PLAssetImportGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "##### RECOVER: entered crash recovery job processing", buf, 2u);
  }

  v138 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = [v124 objectForKey:@"CrashRecoveryFilenamesKey"];
  if (v14)
  {
    v137 = [MEMORY[0x1E69BF178] incomingDirectoryPath];
  }

  else
  {
    v137 = 0;
  }

  v23 = PLAssetImportGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v124 objectForKeyedSubscript:*MEMORY[0x1E69C0408]];
    v25 = [v124 objectForKeyedSubscript:@"CrashRecoveryJobCreationDateKey"];
    *buf = 138544130;
    v176 = v24;
    v177 = 2114;
    v178 = v25;
    v179 = 2114;
    v180 = v137;
    v181 = 2114;
    v182 = v14;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "##### RECOVER: Initiating recovery job (#%{public}@) of incoming files (requested at %{public}@) from %{public}@: %{public}@", buf, 0x2Au);
  }

  v26 = objc_loadWeakRetained(&v134->_libraryServicesManager);
  v114 = [v26 pathManager];

  v116 = [MEMORY[0x1E695DF70] array];
  v113 = [MEMORY[0x1E695DF90] dictionary];
  v111 = [MEMORY[0x1E695DF90] dictionary];
  v126 = [MEMORY[0x1E695DF70] array];
  v112 = [MEMORY[0x1E695DF70] array];
  v119 = [MEMORY[0x1E695DF70] array];
  v131 = [MEMORY[0x1E695DF70] array];
  v130 = [MEMORY[0x1E695DF70] array];
  v123 = [MEMORY[0x1E695DF70] array];
  v129 = [MEMORY[0x1E695DF70] array];
  v117 = [MEMORY[0x1E695DF70] array];
  v128 = [MEMORY[0x1E695DF70] array];
  v103 = [v114 privateDirectoryWithSubType:8 createIfNeeded:1 error:0];
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  obj = v14;
  v27 = [obj countByEnumeratingWithState:&v162 objects:v174 count:16];
  if (v27)
  {
    v136 = *v163;
    v132 = *MEMORY[0x1E69C00D0];
    v127 = *MEMORY[0x1E69C00E0];
    v125 = *MEMORY[0x1E69C00C8];
    v120 = *MEMORY[0x1E69C00B8];
    v118 = *MEMORY[0x1E69C00B0];
    v115 = *MEMORY[0x1E69C00C0];
    v93 = *MEMORY[0x1E69BFE68];
    v92 = *MEMORY[0x1E69BFDB0];
    v91 = *MEMORY[0x1E69BFDC8];
    do
    {
      v28 = 0;
      do
      {
        if (*v163 != v136)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v162 + 1) + 8 * v28);
        v30 = objc_autoreleasePoolPush();
        v31 = [v137 stringByAppendingPathComponent:v29];
        v32 = [v29 pathExtension];
        v161 = 0;
        if ([v138 fileExistsAtPath:v31 isDirectory:&v161] && (v161 & 1) == 0)
        {
          if ([PLPhotoLibrary isVideoFileExtension:v32])
          {
            v33 = PFVideoComplementMetadataForVideoAtPath();
            v34 = [v33 pairingIdentifier];
          }

          else
          {
            v34 = 0;
          }

          v35 = [v29 stringByDeletingPathExtension];
          v36 = [v35 pathExtension];

          v37 = [v36 isEqualToString:v132];
          if (v37)
          {
            v38 = [objc_opt_class() _assetUUIDFromIncomingFilename:v29];
            if ([objc_opt_class() _hasPrimaryAssetAndAdjustmentsFilesWithType:0 inIncomingFilenames:obj forAssetUUID:v38])
            {
              [v129 addObject:v31];
              goto LABEL_39;
            }
          }

          v39 = v131;
          if (v34 || (v40 = [v32 isEqualToString:@"irs"], v39 = v130, (v40 & 1) != 0) || (v41 = objc_msgSend(v32, "isEqualToString:", v127), v39 = v128, (v41 & 1) != 0) || (v42 = objc_msgSend(v32, "isEqualToString:", v125), v39 = v126, (v42 & 1) != 0) || (v43 = objc_msgSend(v32, "isEqualToString:", v120), v39 = v123, (v43 & 1) != 0) || (v44 = objc_msgSend(v32, "isEqualToString:", v118), v39 = v119, (v44 & 1) != 0) || (v45 = objc_msgSend(v32, "isEqualToString:", v115), v39 = v117, v45))
          {
            [v39 addObject:v31];
            goto LABEL_49;
          }

          if ([v32 isEqualToString:@"plist"])
          {
            goto LABEL_49;
          }

          v38 = [objc_opt_class() _assetUUIDFromIncomingFilename:v29];
          if (v38)
          {
            v104 = [MEMORY[0x1E695DFF8] fileURLWithPath:v31 isDirectory:0];
            v105 = [PLManagedAsset uniformTypeIdentifierFromPathExtension:v32 assetType:3];
            v100 = [PLManagedAsset assetTypeFromUniformTypeIdentifier:v105];

            if (v100 == 1)
            {
              [MEMORY[0x1E69870D8] consolidateMovieFragmentsInFile:v104 error:0];
            }

            v94 = [MEMORY[0x1E69BF230] persistedAttributesForFileAtURL:v104];
            v101 = [v94 UUIDStringForKey:v93];
            if (v101)
            {
              v98 = 0;
            }

            else
            {
              if (v37)
              {
                v46 = [MEMORY[0x1E696AFB0] UUID];
                v102 = [v46 UUIDString];

                v47 = v102;
              }

              else
              {
                v47 = v38;
              }

              v101 = v47;
              v98 = v47 != 0;
            }

            v48 = PLAssetImportGetLog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v176 = v101;
              v177 = 2114;
              v178 = v29;
              _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_DEFAULT, "##### RECOVER: assetUUID %{public}@ (%{public}@)", buf, 0x16u);
            }

            v106 = [v94 stringForKey:v92];
            v49 = PLAssetImportGetLog();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v176 = v106;
              _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_DEFAULT, "##### RECOVER: destinationPath EA %{public}@", buf, 0xCu);
            }

            if (v106)
            {
              [v111 setObject:v106 forKeyedSubscript:v38];
              v50 = v106;
              goto LABEL_85;
            }

            v51 = [(PLImageWriter *)v134 cameraAssetPathForNewAssetWithExtension:v32 assetUUID:v101];
            [v111 setObject:v51 forKeyedSubscript:v38];
            if ([PLPhotoLibrary isImageFileExtension:v32])
            {
              v89 = v51;
              v95 = objc_alloc(MEMORY[0x1E69C0718]);
              v107 = objc_loadWeakRetained(&v134->_libraryServicesManager);
              v86 = [v107 libraryBundle];
              v52 = [v86 timeZoneLookup];
              v96 = [v95 initWithImageURL:v104 contentType:0 timeZoneLookup:v52];

              if ([v96 isDeferredPhotoProxy] && (objc_msgSend(v96, "deferredPhotoProcessingIdentifier"), (v87 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v108 = [MEMORY[0x1E695DFF8] fileURLWithPath:v89 isDirectory:0];
                v53 = [PLPhotoLibrary deferredPhotoPreviewDestinationURLForPrimaryAssetURL:v108];
                v83 = [v53 path];

                v54 = PLAssetImportGetLog();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v176 = v83;
                  _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_DEFAULT, "##### RECOVER: assigning deferred path %{public}@", buf, 0xCu);
                }

                v55 = 0;
                v89 = v83;
              }

              else
              {
                v87 = 0;
                v55 = 1;
              }

              v160 = -1;
              [v94 getInt32:&v160 forKey:v91];
              if ((v55 & [objc_opt_class() semanticEnhanceSceneIsValid:v160]) == 1)
              {
                v84 = [MEMORY[0x1E695DFF8] fileURLWithPath:v89 isDirectory:0];
                v56 = [PLImageWriter semanticEnhancePreviewDestinationURLForPrimaryAssetURL:v84];
                v109 = [v56 path];

                v57 = PLAssetImportGetLog();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v176 = v109;
                  _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_DEFAULT, "##### RECOVER: assigning SemDev deferred path %{public}@", buf, 0xCu);
                }
              }

              else
              {
                v109 = v89;
              }

              v51 = v109;
            }

            if (v51)
            {
              [MEMORY[0x1E69BF230] persistString:v51 forKey:v92 fileURL:v104];
              v50 = v51;
LABEL_85:
              if (v98)
              {
                [MEMORY[0x1E69BF230] persistUUIDString:v101 forKey:v93 fileURL:v104];
              }

              v99 = [MEMORY[0x1E695DFF8] fileURLWithPath:v50 isDirectory:0];
              v58 = PLAssetImportGetLog();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v176 = v31;
                v177 = 2114;
                v178 = v50;
                _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_DEFAULT, "##### RECOVER: source %{public}@ -> destination %{public}@", buf, 0x16u);
              }

              v110 = v50;

              if ([v138 fileExistsAtPath:v50])
              {
LABEL_94:
                v61 = [v31 stringByDeletingPathExtension];
                v97 = [v61 stringByAppendingPathExtension:v125];

                if ([v138 fileExistsAtPath:v97])
                {
                  v90 = [v31 lastPathComponent];
                  v62 = [v103 stringByAppendingPathComponent:v90];
                  if (v97 && v62)
                  {
                    v88 = v62;
                    v63 = MEMORY[0x1E69BF238];
                    v85 = [MEMORY[0x1E695DFF8] fileURLWithPath:v97 isDirectory:0];
                    v64 = [MEMORY[0x1E695DFF8] fileURLWithPath:v88 isDirectory:0];
                    v158 = 0;
                    LOBYTE(v63) = [v63 copyItemAtURL:v85 toURL:v64 error:&v158];
                    v82 = v158;

                    if ((v63 & 1) == 0 && ([v138 fileExistsAtPath:v88] & 1) == 0)
                    {
                      v65 = PLAssetImportGetLog();
                      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                      {
                        v66 = [v82 localizedDescription];
                        *buf = 138543874;
                        v176 = v97;
                        v177 = 2114;
                        v178 = v88;
                        v179 = 2114;
                        v180 = v66;
                        _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_ERROR, "Failed to copy %{public}@ to %{public}@: %{public}@", buf, 0x20u);
                      }
                    }

                    v62 = v88;
                  }
                }

                [v113 setObject:v104 forKey:v99];
                [v116 addObject:v99];
              }

              else
              {
                v159 = 0;
                v59 = [MEMORY[0x1E69BF238] copyItemAtURL:v104 toURL:v99 error:&v159];
                v97 = v159;
                if (v59)
                {
                  v60 = PLAssetImportGetLog();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543618;
                    v176 = v31;
                    v177 = 2114;
                    v178 = v50;
                    _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_DEBUG, "##### RECOVER: copied %{public}@ to %{public}@", buf, 0x16u);
                  }

                  goto LABEL_94;
                }

                v67 = PLAssetImportGetLog();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  v176 = v31;
                  v177 = 2114;
                  v178 = v50;
                  v179 = 2114;
                  v180 = v97;
                  _os_log_impl(&dword_19BF1F000, v67, OS_LOG_TYPE_ERROR, "Failed to copy %{public}@ to %{public}@: %{public}@", buf, 0x20u);
                }
              }

              v68 = v110;
            }

            else
            {
              v68 = PLAssetImportGetLog();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v176 = v29;
                _os_log_impl(&dword_19BF1F000, v68, OS_LOG_TYPE_DEFAULT, "##### RECOVER: skipping %{public}@, missing destinationPath", buf, 0xCu);
              }
            }
          }

          else
          {
            v38 = PLAssetImportGetLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v176 = v31;
              _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "##### RECOVER: Ignoring malformed incoming filename with path %{public}@", buf, 0xCu);
            }
          }

LABEL_39:

LABEL_49:
          goto LABEL_50;
        }

        v34 = PLAssetImportGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v176 = v31;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "##### RECOVER: Skipping missing file %{public}@", buf, 0xCu);
        }

LABEL_50:

        objc_autoreleasePoolPop(v30);
        ++v28;
      }

      while (v27 != v28);
      v69 = [obj countByEnumeratingWithState:&v162 objects:v174 count:16];
      v27 = v69;
    }

    while (v69);
  }

  v133 = [v116 count];
  if (v133)
  {
    [(PLImageWriter *)v134 _incrementJobCount:v124];
    v70 = objc_loadWeakRetained(&v134->_libraryServicesManager);
    v71 = [v70 modelMigrator];
    v144[0] = MEMORY[0x1E69E9820];
    v144[1] = 3221225472;
    v144[2] = __53__PLImageWriter__processCrashRecoveryJob_completion___block_invoke_362;
    v144[3] = &unk_1E7565C70;
    v145 = v113;
    v146 = v138;
    v147 = v134;
    v148 = v112;
    v149 = v119;
    v150 = v130;
    v151 = v131;
    v152 = v123;
    v153 = v129;
    v154 = v128;
    v155 = v117;
    v157 = v121;
    v156 = v124;
    [v71 importAfterCrash:v116 completionBlock:v144];
  }

  else
  {
    [(PLImageWriter *)v134 _handleAvalancheCrashRecovery:v119];
    [(PLImageWriter *)v134 _handlePhotoIrisCrashRecoveryForPhotoIndicatorFiles:v130];
    [(PLImageWriter *)v134 _handlePhotoIrisCrashRecoveryForVideos:v131];
    [(PLImageWriter *)v134 _handleCameraAdjustments:v123 fullsizeRenders:v129 largeThumbnails:v128];
    [(PLImageWriter *)v134 _handleCameraMetadataCrashRecovery:v117];
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v72 = v126;
  v73 = [v72 countByEnumeratingWithState:&v140 objects:v173 count:16];
  if (v73)
  {
    v74 = *v141;
    do
    {
      for (i = 0; i != v73; ++i)
      {
        if (*v141 != v74)
        {
          objc_enumerationMutation(v72);
        }

        v76 = *(*(&v140 + 1) + 8 * i);
        v139 = 0;
        v77 = [v138 removeItemAtPath:v76 error:&v139];
        v78 = v139;
        if ((v77 & 1) == 0)
        {
          v79 = PLAssetImportGetLog();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            v80 = [v78 localizedDescription];
            *buf = 138543618;
            v176 = v76;
            v177 = 2114;
            v178 = v80;
            _os_log_impl(&dword_19BF1F000, v79, OS_LOG_TYPE_ERROR, "Failed to unlink file at path %{public}@: %{public}@", buf, 0x16u);
          }
        }
      }

      v73 = [v72 countByEnumeratingWithState:&v140 objects:v173 count:16];
    }

    while (v73);
  }

  if (!v133)
  {
    v121[2]();
  }

  [(PLImageWriter *)v134 _exitAtomicCrashRecoveryJobProcessing];
  v81 = PLAssetImportGetLog();
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v81, OS_LOG_TYPE_DEFAULT, "##### RECOVER: exited crash recovery job processing", buf, 2u);
  }

LABEL_132:
}

uint64_t __53__PLImageWriter__processCrashRecoveryJob_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PLAssetImportGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
    v5 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69C0408]];
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] re-enqueing crash recovery job %{public}@ (#%{public}@)", &v7, 0x20u);
  }

  return [*(a1 + 40) enqueueJob:*(a1 + 32)];
}

void __53__PLImageWriter__processCrashRecoveryJob_completion___block_invoke_362(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLAssetImportGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v53 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "##### RECOVER: Deleting %{public}@", buf, 0xCu);
  }

  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v47 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v6)
  {
    v8 = v6;
    v38 = *v48;
    *&v7 = 138543618;
    v36 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        v11 = [v10 mainFileURL];
        v12 = [*(a1 + 32) objectForKey:v11];
        v13 = *(a1 + 40);
        v46 = 0;
        v14 = [v13 removeItemAtURL:v12 error:&v46];
        v15 = v46;
        if ((v14 & 1) == 0)
        {
          v16 = PLAssetImportGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = [v12 path];
            *buf = v36;
            v53 = v17;
            v54 = 2112;
            v55 = v15;
            _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "##### RECOVER: Failed to remove asset source URL:%{public}@ %@", buf, 0x16u);
          }
        }

        v18 = *(a1 + 40);
        v19 = [v12 URLByDeletingPathExtension];
        v20 = [v19 URLByAppendingPathExtension:@"plist"];
        [v18 removeItemAtURL:v20 error:0];

        [*(a1 + 48) _removeInProgressExtendedAttributesForFileAtURL:v11];
        if ([v10 hasDeferredProcessingPreviewFile])
        {
          v21 = MEMORY[0x1E695DFF8];
          v22 = [v10 pathForDeferredProcessingPreviewFile];
          v23 = [v21 fileURLWithPath:v22];

          [*(a1 + 48) _removeInProgressExtendedAttributesForFileAtURL:v23];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v8);
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __53__PLImageWriter__processCrashRecoveryJob_completion___block_invoke_363;
  v44[3] = &unk_1E7565C48;
  v24 = *(a1 + 32);
  v45 = *(a1 + 40);
  [v24 enumerateKeysAndObjectsUsingBlock:v44];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = *(a1 + 56);
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v40 + 1) + 8 * j);
        if ([*(a1 + 40) fileExistsAtPath:v30])
        {
          v31 = *(a1 + 40);
          v39 = 0;
          v32 = [v31 removeItemAtPath:v30 error:&v39];
          v33 = v39;
          if ((v32 & 1) == 0)
          {
            v34 = PLAssetImportGetLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v35 = [v33 localizedDescription];
              *buf = 138543618;
              v53 = v30;
              v54 = 2114;
              v55 = v35;
              _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to unlink file at path %{public}@: %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v27);
  }

  [*(a1 + 48) _handleAvalancheCrashRecovery:*(a1 + 64)];
  [*(a1 + 48) _handlePhotoIrisCrashRecoveryForPhotoIndicatorFiles:*(a1 + 72)];
  [*(a1 + 48) _handlePhotoIrisCrashRecoveryForVideos:*(a1 + 80)];
  [*(a1 + 48) _handleCameraAdjustments:*(a1 + 88) fullsizeRenders:*(a1 + 96) largeThumbnails:*(a1 + 104)];
  [*(a1 + 48) _handleCameraMetadataCrashRecovery:*(a1 + 112)];
  (*(*(a1 + 128) + 16))();
  [*(a1 + 48) _decrementJobCount:*(a1 + 120)];
}

void __53__PLImageWriter__processCrashRecoveryJob_completion___block_invoke_363(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v16 = 0;
  v8 = [v7 removeItemAtURL:v6 error:&v16];
  v9 = v16;
  if ((v8 & 1) == 0)
  {
    v10 = PLAssetImportGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 path];
      v12 = [v5 path];
      *buf = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "##### RECOVER: Failed to remove URL %{public}@, registered to unlink by recovery URL:%{public}@ %@", buf, 0x20u);
    }
  }

  v13 = *(a1 + 32);
  v14 = [v6 URLByDeletingPathExtension];
  v15 = [v14 URLByAppendingPathExtension:@"plist"];
  [v13 removeItemAtURL:v15 error:0];
}

- (void)_handlePhotoIrisCrashRecoveryForPhotoIndicatorFiles:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PLImageWriter *)self _newShortLivedLibraryWithName:"[PLImageWriter _handlePhotoIrisCrashRecoveryForPhotoIndicatorFiles:]"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__PLImageWriter__handlePhotoIrisCrashRecoveryForPhotoIndicatorFiles___block_invoke;
    v7[3] = &unk_1E7578848;
    v8 = v4;
    v9 = v5;
    v6 = v5;
    [v6 performTransactionAndWait:v7];
  }
}

void __69__PLImageWriter__handlePhotoIrisCrashRecoveryForPhotoIndicatorFiles___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [PLImageWriter photoIrisPairingDidSucceed:0 fileIndicatorPath:*(*(&v7 + 1) + 8 * v6++) photoAsset:0 photoLibrary:*(a1 + 40), v7];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)_writeOutCameraMetadata:(id)a3 destinationURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = MEMORY[0x1E696ACC8];
  v9 = [a3 cameraMetadata];
  v16 = 0;
  v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v16];
  v11 = v16;

  v15 = v11;
  LOBYTE(v9) = [v10 writeToURL:v7 options:1 error:&v15];
  v12 = v15;

  if ((v9 & 1) == 0)
  {

    v7 = 0;
  }

  if (a5 && v12)
  {
    v13 = v12;
    *a5 = v12;
  }

  return v12 == 0;
}

- (void)_handleCameraAdjustments:(id)a3 fullsizeRenders:(id)a4 largeThumbnails:(id)a5
{
  v74 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_opt_class() _pathsByAssetUUIDFromIncomingCrashRecoveryPaths:v8];
  v45 = v9;
  v12 = [objc_opt_class() _pathsByAssetUUIDFromIncomingCrashRecoveryPaths:v9];
  v13 = [objc_opt_class() _pathsByAssetUUIDFromIncomingCrashRecoveryPaths:v10];
  v46 = v8;
  v14 = [MEMORY[0x1E695DFA8] setWithArray:v8];
  v44 = v10;
  v15 = [MEMORY[0x1E695DFA8] setWithArray:v10];
  v16 = [(PLImageWriter *)self _newShortLivedLibraryWithName:"[PLImageWriter _handleCameraAdjustments:fullsizeRenders:largeThumbnails:]"];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __74__PLImageWriter__handleCameraAdjustments_fullsizeRenders_largeThumbnails___block_invoke;
  v58[3] = &unk_1E7571070;
  v43 = v11;
  v59 = v43;
  v42 = v12;
  v60 = v42;
  v41 = v13;
  v61 = v41;
  v39 = v15;
  v62 = v39;
  v17 = v14;
  v63 = v17;
  v64 = v16;
  v65 = self;
  v40 = v64;
  [v64 performTransactionAndWait:v58];
  v18 = [MEMORY[0x1E696AC08] defaultManager];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v17;
  v19 = [obj countByEnumeratingWithState:&v54 objects:v73 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v55;
    do
    {
      v23 = 0;
      v24 = v21;
      do
      {
        if (*v55 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v54 + 1) + 8 * v23);
        v26 = PLAssetImportGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v68 = "[PLImageWriter _handleCameraAdjustments:fullsizeRenders:largeThumbnails:]";
          v69 = 2114;
          v70 = v25;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s Removing orphaned adjustment file %{public}@", buf, 0x16u);
        }

        v53 = v24;
        v27 = [v18 removeItemAtPath:v25 error:{&v53, v39}];
        v21 = v53;

        if ((v27 & 1) == 0)
        {
          v28 = PLAssetImportGetLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v68 = "[PLImageWriter _handleCameraAdjustments:fullsizeRenders:largeThumbnails:]";
            v69 = 2114;
            v70 = v25;
            v71 = 2114;
            v72 = v21;
            _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "%{public}s Error removing orphaned adjustment file %{public}@: %{public}@", buf, 0x20u);
          }
        }

        ++v23;
        v24 = v21;
      }

      while (v20 != v23);
      v20 = [obj countByEnumeratingWithState:&v54 objects:v73 count:16];
    }

    while (v20);
  }

  else
  {
    v21 = 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v29 = v39;
  v30 = [v29 countByEnumeratingWithState:&v49 objects:v66 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v50;
    do
    {
      v33 = 0;
      v34 = v21;
      do
      {
        if (*v50 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v49 + 1) + 8 * v33);
        v36 = PLAssetImportGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v68 = "[PLImageWriter _handleCameraAdjustments:fullsizeRenders:largeThumbnails:]";
          v69 = 2114;
          v70 = v35;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s Removing orphaned large thumbnail file %{public}@", buf, 0x16u);
        }

        v48 = v34;
        v37 = [v18 removeItemAtPath:v35 error:&v48];
        v21 = v48;

        if ((v37 & 1) == 0)
        {
          v38 = PLAssetImportGetLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v68 = "[PLImageWriter _handleCameraAdjustments:fullsizeRenders:largeThumbnails:]";
            v69 = 2114;
            v70 = v35;
            v71 = 2114;
            v72 = v21;
            _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "%{public}s Error removing orphaned large thumbnail file file %{public}@: %{public}@", buf, 0x20u);
          }
        }

        ++v33;
        v34 = v21;
      }

      while (v31 != v33);
      v31 = [v29 countByEnumeratingWithState:&v49 objects:v66 count:16];
    }

    while (v31);
  }
}

void __74__PLImageWriter__handleCameraAdjustments_fullsizeRenders_largeThumbnails___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [*(a1 + 32) allKeys];
  v2 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v2)
  {
    v3 = v2;
    v20 = *v23;
    v4 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
        v9 = [*(a1 + 40) objectForKeyedSubscript:v7];
        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = [*(a1 + 48) objectForKeyedSubscript:v7];
          if (!v10)
          {
            goto LABEL_10;
          }
        }

        [*(a1 + 56) removeObject:v10];
LABEL_10:
        [*(a1 + 64) removeObject:v8];
        v11 = [PLManagedAsset assetWithUUID:v7 inLibrary:*(a1 + 72)];
        v12 = PLAssetImportGetLog();
        v13 = v12;
        if (v11)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446978;
            v27 = "[PLImageWriter _handleCameraAdjustments:fullsizeRenders:largeThumbnails:]_block_invoke";
            v28 = 2114;
            v29 = v7;
            v30 = 2114;
            v31 = v10;
            v32 = 2114;
            v33 = v8;
            _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Applying render & adjustment to asset %{public}@ (%{public}@, %{public}@)", buf, 0x2Au);
          }

          LOBYTE(v18) = 1;
          if (([objc_opt_class() setAdjustmentsForNewPhoto:v11 mainFileMetadata:0 cameraAdjustmentData:0 adjustmentDataPath:v8 filteredImagePath:v10 cameraMetadata:0 finalAssetSize:v4 isSubstandardRender:{v5, v18}] & 1) == 0)
          {
            v14 = PLAssetImportGetLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v27 = "[PLImageWriter _handleCameraAdjustments:fullsizeRenders:largeThumbnails:]_block_invoke";
              v28 = 2114;
              v29 = v7;
              _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "%{public}s Failed to apply adjustment to asset %{public}@", buf, 0x16u);
            }
          }

          v15 = [MEMORY[0x1E696AC08] defaultManager];
          v21 = 0;
          v16 = [v15 removeItemAtPath:v8 error:&v21];
          v13 = v21;

          if ((v16 & 1) == 0)
          {
            v17 = PLAssetImportGetLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v27 = "[PLImageWriter _handleCameraAdjustments:fullsizeRenders:largeThumbnails:]_block_invoke";
              v28 = 2114;
              v29 = v8;
              v30 = 2114;
              v31 = v7;
              _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "%{public}s Failed to remove adjustment path %{public}@ for asset %{public}@", buf, 0x20u);
            }
          }
        }

        else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v27 = "[PLImageWriter _handleCameraAdjustments:fullsizeRenders:largeThumbnails:]_block_invoke";
          v28 = 2114;
          v29 = v7;
          v30 = 2114;
          v31 = v10;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "%{public}s Failed to find required, preflighted asset with UUID %{public}@, deferring orphaned render ingestion for %{public}@", buf, 0x20u);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v3);
  }
}

- (void)_handlePhotoIrisCrashRecoveryForVideos:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [(PLImageWriter *)self _newShortLivedLibraryWithName:"[PLImageWriter _handlePhotoIrisCrashRecoveryForVideos:]"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__PLImageWriter__handlePhotoIrisCrashRecoveryForVideos___block_invoke;
    v14[3] = &unk_1E7573520;
    v15 = v5;
    v8 = v7;
    v16 = v8;
    v17 = self;
    v19 = a2;
    v9 = v6;
    v18 = v9;
    [v8 performBlockAndWait:v14];
    if ([v9 count])
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __56__PLImageWriter__handlePhotoIrisCrashRecoveryForVideos___block_invoke_318;
      v10[3] = &unk_1E75782F8;
      v12 = self;
      v13 = a2;
      v11 = v9;
      [v8 performBlockAndWait:v10];
    }
  }
}

void __56__PLImageWriter__handlePhotoIrisCrashRecoveryForVideos___block_invoke(uint64_t a1)
{
  v1 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = *(a1 + 32);
  v35 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v35)
  {
    v34 = *v41;
    v2 = *MEMORY[0x1E695E480];
    v33 = *MEMORY[0x1E69C0478];
    v30 = *MEMORY[0x1E69C0410];
    v29 = *MEMORY[0x1E69C0590];
    v28 = *MEMORY[0x1E69C04E0];
    v27 = *MEMORY[0x1E69C0500];
    v26 = *MEMORY[0x1E69C0510];
    v25 = *MEMORY[0x1E69C0508];
    v31 = *MEMORY[0x1E695E480];
    v32 = v1;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v40 + 1) + 8 * i);
        v5 = PFVideoComplementMetadataForVideoAtPath();
        v6 = [v5 pairingIdentifier];
        v39 = v5;
        if (v5)
        {
          [v5 videoDuration];
          v7 = CMTimeCopyAsDictionary(&time, v2);
          [v5 imageDisplayTime];
        }

        else
        {
          memset(&time, 0, sizeof(time));
          v7 = CMTimeCopyAsDictionary(&time, v2);
          memset(&time, 0, sizeof(time));
        }

        v8 = CMTimeCopyAsDictionary(&time, v2);
        v9 = [*(v1 + 40) managedObjectContext];
        v10 = [PLManagedAsset imageAssetsForMediaGroupUUID:v6 moc:v9];
        v11 = [v10 firstObject];

        v12 = v11;
        if (v11)
        {
          v36 = v11;
          [v11 uuid];
          v14 = v13 = v7;
          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v15 setObject:v33 forKeyedSubscript:v30];
          [v15 setObject:v4 forKeyedSubscript:v29];
          [v15 setObject:v14 forKeyedSubscript:v28];
          [v15 setObject:v6 forKeyedSubscript:v27];
          v38 = v13;
          [v15 setObject:v13 forKeyedSubscript:v26];
          v37 = v8;
          [v15 setObject:v8 forKeyedSubscript:v25];
          v16 = objc_opt_class();
          v17 = [v4 lastPathComponent];
          v18 = [v16 _assetUUIDFromIncomingFilename:v17];

          if (!v18)
          {
            v19 = PLAssetImportGetLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(time.value) = 138543362;
              *(&time.value + 4) = v4;
              _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "##### RECOVER: Encountered malformed incoming photo iris filename with path %{public}@, ignoring", &time, 0xCu);
            }
          }

          v20 = PLAssetImportGetLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(time.value) = 138543874;
            *(&time.value + 4) = v4;
            LOWORD(time.flags) = 2114;
            *(&time.flags + 2) = v6;
            HIWORD(time.epoch) = 2114;
            v45 = v14;
            _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "##### RECOVER: enqueue job for photoIris video %{public}@, mediaGroupUUID %{public}@, assetUUID %{public}@", &time, 0x20u);
          }

          v21 = PLAssetImportGetLog();
          v1 = v32;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = NSStringFromSelector(*(v32 + 64));
            LODWORD(time.value) = 138543874;
            *(&time.value + 4) = v22;
            LOWORD(time.flags) = 2114;
            *(&time.flags + 2) = v33;
            HIWORD(time.epoch) = 2114;
            v45 = v14;
            _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueing recovery job %{public}@ with assetUUID %{public}@", &time, 0x20u);
          }

          [*(v32 + 48) enqueueJob:v15];
          v2 = v31;
          v8 = v37;
          v7 = v38;
          v12 = v36;
        }

        else
        {
          v23 = PLAssetImportGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(time.value) = 138543362;
            *(&time.value + 4) = v4;
            _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "##### RECOVER: Found orphaned incoming photo iris video: %{public}@", &time, 0xCu);
          }

          [*(v1 + 56) addObject:v4];
        }
      }

      v35 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v35);
  }
}

void __56__PLImageWriter__handlePhotoIrisCrashRecoveryForVideos___block_invoke_318(uint64_t a1)
{
  v1 = a1;
  v31 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    v19 = *MEMORY[0x1E69C0478];
    v5 = *MEMORY[0x1E69C0410];
    v6 = *MEMORY[0x1E69C0590];
    v7 = 0x1E695D000uLL;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = objc_alloc_init(*(v7 + 3984));
        [v10 setObject:v19 forKeyedSubscript:v5];
        [v10 setObject:v9 forKeyedSubscript:v6];
        v11 = PLAssetImportGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          NSStringFromSelector(*(v1 + 48));
          v12 = v1;
          v13 = v3;
          v14 = v6;
          v15 = v5;
          v17 = v16 = v4;
          *buf = 138543874;
          v25 = v17;
          v26 = 2114;
          v27 = v19;
          v28 = 2114;
          v29 = v9;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueing recovery job %{public}@ with orphaned iris video %{public}@", buf, 0x20u);

          v4 = v16;
          v5 = v15;
          v6 = v14;
          v3 = v13;
          v1 = v12;
          v7 = 0x1E695D000;
        }

        [*(v1 + 40) enqueueJob:v10];
      }

      v3 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v3);
  }
}

- (void)_handleCameraMetadataCrashRecovery:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PLImageWriter *)self _newShortLivedLibraryWithName:"[PLImageWriter _handleCameraMetadataCrashRecovery:]"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__PLImageWriter__handleCameraMetadataCrashRecovery___block_invoke;
    v7[3] = &unk_1E75761B8;
    v8 = v4;
    v9 = self;
    v10 = v5;
    v6 = v5;
    [v6 performTransactionAndWait:v7];
  }
}

void __52__PLImageWriter__handleCameraMetadataCrashRecovery___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 32);
  v30 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v30)
  {
    v29 = *v33;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v32 + 1) + 8 * i);
        v4 = objc_autoreleasePoolPush();
        v5 = [v3 lastPathComponent];
        v6 = [objc_opt_class() _assetUUIDFromIncomingFilename:v5];
        if ([v6 length])
        {
          v7 = [PLManagedAsset assetWithUUID:v6 inLibrary:*(a1 + 48)];
          if (v7 && ([MEMORY[0x1E696AC08] defaultManager], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "fileExistsAtPath:", v3), v8, v9))
          {
            v10 = PLAssetImportGetLog();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v37 = v3;
              v38 = 2112;
              v39 = v6;
              _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "##### RECOVER: Handling camera metadata %@ -> %@", buf, 0x16u);
            }

            v11 = [[PLIngestJobCameraMetadata alloc] initWithCameraMetadataPath:v3];
            [(PLIngestJobCameraMetadata *)v11 applyCameraMetadataToAsset:v7];
            v12 = [v7 additionalAttributes];
            v13 = [v12 deferredProcessingCandidateOptions];

            if ((v13 & 8) != 0)
            {
              v14 = MEMORY[0x1E69C0868];
              v15 = [(PLIngestJobCameraMetadata *)v11 cameraMetadata];
              v16 = [v14 semanticEnhanceSceneForCameraMetadata:v15];
              v18 = v17;

              v19 = [(PLIngestJobCameraMetadata *)v11 cameraMetadata];
              [v19 setSemanticEnhanceScene:v16];

              v20 = [(PLIngestJobCameraMetadata *)v11 cameraMetadata];
              [v20 setSemanticEnhanceSceneConfidence:v18];

              v21 = MEMORY[0x1E695DFF8];
              v22 = [v7 pathForCameraMetadataFile];
              v23 = [v21 fileURLWithPath:v22];

              v24 = *(a1 + 40);
              v31 = 0;
              v27 = v23;
              LOBYTE(v22) = [v24 _writeOutCameraMetadata:v11 destinationURL:v23 error:&v31];
              v25 = v31;
              if ((v22 & 1) == 0)
              {
                v26 = PLAssetImportGetLog();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v37 = v25;
                  _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "##### RECOVER: Error writing out camera metadata: %@", buf, 0xCu);
                }
              }
            }
          }

          else
          {
            v11 = PLAssetImportGetLog();
            if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v37 = v3;
              _os_log_impl(&dword_19BF1F000, &v11->super, OS_LOG_TYPE_DEFAULT, "##### RECOVER: MDATA file no longer found: %@", buf, 0xCu);
            }
          }
        }

        unlink([v3 fileSystemRepresentation]);

        objc_autoreleasePoolPop(v4);
      }

      v30 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v30);
  }
}

- (void)_handleAvalancheCrashRecovery:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PLImageWriter *)self _newShortLivedLibraryWithName:"[PLImageWriter _handleAvalancheCrashRecovery:]"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__PLImageWriter__handleAvalancheCrashRecovery___block_invoke;
    v7[3] = &unk_1E7578848;
    v8 = v4;
    v9 = v5;
    v6 = v5;
    [v6 performTransactionAndWait:v7];
  }
}

void __47__PLImageWriter__handleAvalancheCrashRecovery___block_invoke(uint64_t a1)
{
  v1 = a1;
  v29 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    v5 = 0x1E755F000uLL;
    do
    {
      v6 = 0;
      v18 = v3;
      do
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 lastPathComponent];
        v10 = [v9 stringByDeletingPathExtension];

        if ([v10 length])
        {
          v11 = [objc_alloc(*(v5 + 1800)) initWithUUID:v10 sourceType:1 photoLibrary:*(v1 + 40)];
          v12 = PLAssetImportGetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            [v11 assets];
            v13 = v4;
            v14 = v1;
            v16 = v15 = v5;
            v17 = [v16 count];
            *buf = 138412546;
            v25 = v10;
            v26 = 2048;
            v27 = v17;
            _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "##### RECOVER: Handling avalanche %@ -> %lu", buf, 0x16u);

            v5 = v15;
            v1 = v14;
            v4 = v13;
            v3 = v18;
          }

          [v11 applyChangesAndDeleteNonPicks:0 currentContainer:0 completionHandler:0];
        }

        unlink([v7 fileSystemRepresentation]);

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v3);
  }
}

- (void)_processSyncClientSaveJobsJob:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695DFF8];
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v10 = [WeakRetained pathManager];
  v11 = [v10 iTunesSyncedAssetsDirectory];
  v12 = [v8 fileURLWithPath:v11 isDirectory:1];

  v34 = 0;
  LOBYTE(v10) = [v12 getResourceValue:&v34 forKey:*MEMORY[0x1E695DB20] error:0];
  v13 = v34;
  if ((v10 & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AC08] defaultManager];
    v33 = 0;
    v15 = [v14 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v33];
    v16 = v33;

    if ((v15 & 1) == 0)
    {
      v17 = PLSyncGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v36 = v16;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Unable to create dir: %{public}@", buf, 0xCu);
      }
    }
  }

  v18 = [v6 objectForKey:@"SyncClientJobsData"];
  v19 = PLSyncGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v18 count];
    *buf = 67109120;
    LODWORD(v36) = v20;
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Processing %d sync save jobs", buf, 8u);
  }

  v21 = [(PLImageWriter *)self _newShortLivedLibraryWithName:"[PLImageWriter _processSyncClientSaveJobsJob:completion:]"];
  [(PLImageWriter *)self _incrementJobCount:v6];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __58__PLImageWriter__processSyncClientSaveJobsJob_completion___block_invoke;
  v29[3] = &unk_1E75761B8;
  v30 = v18;
  v31 = self;
  v32 = v21;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __58__PLImageWriter__processSyncClientSaveJobsJob_completion___block_invoke_2;
  v26[3] = &unk_1E7576F38;
  v27 = v6;
  v28 = v7;
  v26[4] = self;
  v22 = v6;
  v23 = v7;
  v24 = v21;
  v25 = v18;
  [v24 performTransaction:v29 completionHandler:v26];
}

void __58__PLImageWriter__processSyncClientSaveJobsJob_completion___block_invoke(id *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[PLSyncSaveJob alloc] initFromSerializedData:*(*(&v20 + 1) + 8 * v7)];
        [a1[5] processSyncSaveJob:v8 library:a1[6] albumMap:v2];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v2 allValues];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15 = [a1[6] pathManager];
        [v14 persistMetadataToFileSystemWithPathManager:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }
}

uint64_t __58__PLImageWriter__processSyncClientSaveJobsJob_completion___block_invoke_2(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 _decrementJobCount:v3];
}

- (void)cleanupFilesInLibrary:(id)a3 afteriTunesSyncBeforeDate:(id)a4
{
  v115 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v76 = a4;
  v71 = v5;
  v6 = [v5 globalValues];
  LODWORD(v5) = [v6 didImportFileSystemAssets];

  if (v5)
  {
    v7 = MEMORY[0x1E695D5E0];
    v8 = +[PLManagedAsset entityName];
    v9 = [v7 fetchRequestWithEntityName:v8];

    v10 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForFinderSyncedAsset"), 1}];
    [v9 setPredicate:v10];

    [v9 setFetchLimit:1];
    v101 = 0;
    v102 = &v101;
    v103 = 0x2020000000;
    v104 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = [v71 managedObjectContext];
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __65__PLImageWriter_cleanupFilesInLibrary_afteriTunesSyncBeforeDate___block_invoke;
    v97[3] = &unk_1E7578820;
    v100 = &v101;
    v98 = v11;
    v68 = v9;
    v69 = v98;
    v99 = v68;
    [v98 performBlockAndWait:v97];
    v12 = PLSyncGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v109 = v76;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Cleaning up iTunes sync thumb files (before date %{public}@)", buf, 0xCu);
    }

    v77 = objc_alloc_init(MEMORY[0x1E696AC08]);
    WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
    v14 = [WeakRetained pathManager];
    v15 = [v14 iTunesPhotosDirectory];
    v75 = [v15 stringByAppendingPathComponent:@"Thumbs"];

    [v77 contentsOfDirectoryAtPath:v75 error:0];
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    obj = v94 = 0u;
    v16 = [obj countByEnumeratingWithState:&v93 objects:v114 count:16];
    if (v16)
    {
      v73 = *v94;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v94 != v73)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v93 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = [v75 stringByAppendingPathComponent:v18];
          v21 = v20;
          if (!v76)
          {
            v24 = 0;
            goto LABEL_25;
          }

          v22 = [v20 stringByAppendingString:@".test"];
          v92 = 0;
          v23 = [v77 moveItemAtPath:v21 toPath:v22 error:&v92];
          v24 = v92;
          if (!v23)
          {
            v32 = PLSyncGetLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v109 = v21;
              v110 = 2112;
              v111 = v22;
              v112 = 2112;
              v113 = v24;
              _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Error moving file at path: %@ to %@, %@", buf, 0x20u);
            }

            goto LABEL_32;
          }

          v25 = [v77 attributesOfItemAtPath:v22 error:0];
          v26 = v25;
          if (v25)
          {
            v27 = [v25 fileModificationDate];
            v28 = [v27 earlierDate:v76];
            v29 = v28 == v27;

            if (v29)
            {
              v33 = PLSyncGetLog();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v109 = v21;
                v110 = 2112;
                v111 = v27;
                v112 = 2112;
                v113 = v76;
                _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEBUG, "File: %@ date: %@ was earlier than date: %@", buf, 0x20u);
              }
            }

            else
            {
              v91 = v24;
              v30 = [v77 moveItemAtPath:v22 toPath:v21 error:&v91];
              v31 = v91;

              if (v30)
              {

LABEL_31:
                v24 = v31;
                goto LABEL_32;
              }

              v33 = PLSyncGetLog();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v109 = v22;
                v110 = 2112;
                v111 = v21;
                v112 = 2112;
                v113 = v31;
                _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Error moving back test file at path: %@ to %@, %@", buf, 0x20u);
              }

              v24 = v31;
            }

            v21 = v22;
LABEL_25:
            v34 = PLSyncGetLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v109 = v21;
              _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEBUG, "Removing sync file at path: %@", buf, 0xCu);
            }

            v90 = v24;
            v35 = [v77 removeItemAtPath:v21 error:&v90];
            v31 = v90;

            if (v35)
            {
              v24 = v31;
              goto LABEL_33;
            }

            v22 = PLSyncGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v109 = v21;
              v110 = 2112;
              v111 = v31;
              _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Error removing file at path: %@, %@", buf, 0x16u);
            }

            goto LABEL_31;
          }

LABEL_32:

LABEL_33:
          objc_autoreleasePoolPop(v19);
        }

        v16 = [obj countByEnumeratingWithState:&v93 objects:v114 count:16];
      }

      while (v16);
    }

    if (!v76 && !v102[3])
    {
      v36 = objc_loadWeakRetained(&self->_libraryServicesManager);
      v37 = [v36 pathManager];

      v38 = PLSyncGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "There are no sync'd assets left; cleaning up filesystem", buf, 2u);
      }

      v39 = [v37 iTunesSyncedAssetsDirectory];
      v40 = [v77 contentsOfDirectoryAtPath:v39 error:0];

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v74 = v40;
      v41 = [v74 countByEnumeratingWithState:&v86 objects:v107 count:16];
      if (v41)
      {
        v42 = *v87;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v87 != v42)
            {
              objc_enumerationMutation(v74);
            }

            v44 = *(*(&v86 + 1) + 8 * j);
            v45 = [v37 iTunesSyncedAssetsDirectory];
            v46 = [v45 stringByAppendingPathComponent:v44];
            [v77 removeItemAtPath:v46 error:0];
          }

          v41 = [v74 countByEnumeratingWithState:&v86 objects:v107 count:16];
        }

        while (v41);
      }

      v47 = [v37 iTunesSyncedAssetMetadataThumbnailsDirectory];
      v48 = [v77 contentsOfDirectoryAtPath:v47 error:0];

      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v49 = v48;
      v50 = [v49 countByEnumeratingWithState:&v82 objects:v106 count:16];
      if (v50)
      {
        v51 = *v83;
        do
        {
          for (k = 0; k != v50; ++k)
          {
            if (*v83 != v51)
            {
              objc_enumerationMutation(v49);
            }

            v53 = *(*(&v82 + 1) + 8 * k);
            v54 = [v37 iTunesSyncedAssetMetadataThumbnailsDirectory];
            v55 = [v54 stringByAppendingPathComponent:v53];
            [v77 removeItemAtPath:v55 error:0];
          }

          v50 = [v49 countByEnumeratingWithState:&v82 objects:v106 count:16];
        }

        while (v50);
      }

      v56 = [v37 iTunesSyncedAssetSmallThumbnailsDirectory];
      v57 = [v77 contentsOfDirectoryAtPath:v56 error:0];

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v58 = v57;
      v59 = [v58 countByEnumeratingWithState:&v78 objects:v105 count:16];
      if (v59)
      {
        v60 = *v79;
        do
        {
          for (m = 0; m != v59; ++m)
          {
            if (*v79 != v60)
            {
              objc_enumerationMutation(v58);
            }

            v62 = *(*(&v78 + 1) + 8 * m);
            v63 = [v37 iTunesSyncedAssetSmallThumbnailsDirectory];
            v64 = [v63 stringByAppendingPathComponent:v62];
            NSLog(&stru_1F0F0DEC0.isa, v64);

            v65 = [v37 iTunesSyncedAssetSmallThumbnailsDirectory];
            v66 = [v65 stringByAppendingPathComponent:v62];
            [v77 removeItemAtPath:v66 error:0];
          }

          v59 = [v58 countByEnumeratingWithState:&v78 objects:v105 count:16];
        }

        while (v59);
      }

      [(PLImageWriter *)self _resetSyncedAssetsDCIMDirectory];
    }

    v67 = PLSyncGetLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v67, OS_LOG_TYPE_DEFAULT, "Cleaning up thumb files - finished", buf, 2u);
    }

    _Block_object_dispose(&v101, 8);
  }
}

uint64_t __65__PLImageWriter_cleanupFilesInLibrary_afteriTunesSyncBeforeDate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) countForFetchRequest:*(a1 + 40) error:0];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)processSyncSaveJob:(id)a3 library:(id)a4 albumMap:(id)a5
{
  v274[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    goto LABEL_28;
  }

  v11 = PLSyncGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v8;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Process sync save job %{public}@", buf, 0xCu);
  }

  +[PLDelayedFiledSystemDeletions waitForAllDelayedDeletionsToFinish];
  if ([v8 cleanupSyncState])
  {
    v12 = PLSyncGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Process sync cleanup", buf, 2u);
    }

    v13 = objc_autoreleasePoolPush();
    v14 = [v8 cleanupBeforeDate];
    [(PLImageWriter *)self cleanupFilesInLibrary:v9 afteriTunesSyncBeforeDate:v14];

    objc_autoreleasePoolPop(v13);
    goto LABEL_28;
  }

  if ([v8 isSyncComplete])
  {
    v15 = PLSyncGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Process sync completion", buf, 2u);
    }

    v16 = [v8 originalAssetURL];
    v17 = [v16 path];

    v18 = [MEMORY[0x1E696AC08] defaultManager];
    v19 = [v18 fileExistsAtPath:v17];

    if (v17 && v19)
    {
      v20 = v10;
      v21 = [v17 stringByAppendingPathExtension:@"lastsynced"];
      v22 = [MEMORY[0x1E696AC08] defaultManager];
      v273 = *MEMORY[0x1E696A3A0];
      v274[0] = *MEMORY[0x1E696A388];
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v274 forKeys:&v273 count:1];
      v261 = 0;
      v24 = [v22 setAttributes:v23 ofItemAtPath:v17 error:&v261];
      v25 = v261;

      if ((v24 & 1) == 0)
      {
        v26 = PLSyncGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v17;
          *&buf[12] = 2112;
          *&buf[14] = v25;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Unable to assign data protection to sync metadata %@: %@", buf, 0x16u);
        }
      }

      [v22 removeItemAtPath:v21 error:0];
      v260 = v25;
      v27 = [v22 moveItemAtPath:v17 toPath:v21 error:&v260];
      v28 = v260;

      if ((v27 & 1) == 0)
      {
        v29 = PLSyncGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v21;
          *&buf[12] = 2112;
          *&buf[14] = v28;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to move the sync metadata to %@! Error: %@", buf, 0x16u);
        }
      }

      v10 = v20;
    }

    +[PLManagedAlbum clearAssetOrderByAlbumUUIDs];
    v30 = [v9 managedObjectContext];
    _PLPhotoLibraryAggregateSyncedContent(v30, 0, @"com.apple.mobileslideshow.syncedPhotoCount");
    _PLPhotoLibraryAggregateSyncedContent(v30, 1, @"com.apple.mobileslideshow.syncedVideoCount");

    goto LABEL_28;
  }

  v31 = [v8 uuid];
  v32 = [PLManagedAsset assetWithUUID:v31 inLibrary:v9];

  v223 = v10;
  if (v32)
  {
    v33 = PLSyncGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      v34 = [v32 uuid];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_FAULT, "Attempting to sync an asset that is already in the library (UUID: %{public}@)", buf, 0xCu);
    }

    v35 = 0;
LABEL_27:

    v10 = v223;
    goto LABEL_28;
  }

  v222 = v8;
  v228 = v9;
  if ([v8 isVideo])
  {
    v36 = [v8 originalAssetURL];
    v37 = [v36 pathExtension];

    v38 = [(PLImageWriter *)self iTunesSyncedAssetsDCIMDirectory];
    v39 = v37;
    v40 = [v38 nextAvailableFileURLWithExtension:v37];

    v41 = [MEMORY[0x1E696AC08] defaultManager];
    v271 = *MEMORY[0x1E696A3A0];
    v272 = *MEMORY[0x1E696A388];
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v272 forKeys:&v271 count:1];
    v43 = [v8 originalAssetURL];
    v44 = [v43 path];
    v259 = 0;
    obj = v41;
    LOBYTE(v41) = [v41 setAttributes:v42 ofItemAtPath:v44 error:&v259];
    v45 = v259;

    if ((v41 & 1) == 0)
    {
      v46 = PLSyncGetLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = [v8 originalAssetURL];
        v48 = [v47 path];
        *buf = 138412546;
        *&buf[4] = v48;
        *&buf[12] = 2112;
        *&buf[14] = v45;
        _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_ERROR, "Unable to assign data protection to video %@: %@", buf, 0x16u);
      }
    }

    v49 = [v8 originalAssetURL];
    v50 = [v49 path];

    v51 = PLSyncGetLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [v8 uuid];
      v53 = [v40 path];
      *buf = 138543874;
      *&buf[4] = v52;
      *&buf[12] = 2112;
      *&buf[14] = v50;
      *&buf[22] = 2112;
      v270 = v53;
      _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_DEFAULT, "Importing iTunes sync video asset %{public}@ %@ -> %@", buf, 0x20u);
    }

    v54 = [v8 originalAssetURL];
    v258 = v45;
    v55 = [obj moveItemAtURL:v54 toURL:v40 error:&v258];
    v56 = v258;

    v226 = v50;
    if (v55)
    {
      v224 = v56;
      v57 = [MEMORY[0x1E69BF328] savedAssetTypeForFinderSyncedAsset];
      v58 = [v8 uuid];
      v35 = [PLManagedAsset insertAssetIntoPhotoLibrary:v228 mainFileURL:v40 savedAssetType:v57 bundleScope:0 uuid:v58 replacementUUID:0 imageSource:0 imageData:0];

      if (v35)
      {
        v59 = [v40 path];
        v256 = 0;
        v257 = 0;
        PLPreviewImageAndDurationForVideoAtPathWithPreferredTime(0, v59, &v257, &v256, 0);
        v60 = v257;
        v61 = v256;

        [v35 generateAndUpdateThumbnailsWithPreviewImage:v60 thumbnailImage:v61 fromImageSource:0 imageData:0 forceSRGBConversion:0];
        v255 = 0;
        v62 = [PLResourceInstaller installInternalResourcesForExistingAsset:v35 assumeNoExistingResources:0 referencedResourceURLs:0 error:&v255];
        v63 = v255;
        if (!v62)
        {
          v64 = PLSyncGetLog();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = v35;
            *&buf[12] = 2112;
            *&buf[14] = v63;
            _os_log_impl(&dword_19BF1F000, v64, OS_LOG_TYPE_ERROR, "Failed to install resources for asset: %@, reason: %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v60 = PLSyncGetLog();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v142 = [v222 uuid];
          v143 = [v40 path];
          *buf = 138543618;
          *&buf[4] = v142;
          *&buf[12] = 2114;
          *&buf[14] = v143;
          _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_ERROR, "Failed to import iTunes sync video %{public}@, unable to insert asset %{public}@", buf, 0x16u);
        }

        v35 = 0;
      }

      v9 = v228;
      v56 = v224;
    }

    else
    {
      v128 = PLSyncGetLog();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        [v40 path];
        v130 = v129 = v56;
        *buf = 138412802;
        *&buf[4] = v50;
        *&buf[12] = 2112;
        *&buf[14] = v130;
        *&buf[22] = 2112;
        v270 = v129;
        _os_log_impl(&dword_19BF1F000, v128, OS_LOG_TYPE_ERROR, "Unable to move sync video %@ to %@: %@", buf, 0x20u);

        v56 = v129;
      }

      v60 = PLSyncGetLog();
      v9 = v228;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v131 = [v222 uuid];
        *buf = 138543362;
        *&buf[4] = v131;
        _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_ERROR, "Sync save job failed for video %{public}@", buf, 0xCu);
      }

      v35 = 0;
    }

    v8 = v222;
    if (v55)
    {
      goto LABEL_153;
    }

    goto LABEL_27;
  }

  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v66 = [WeakRetained pathManager];
  v67 = [v66 iTunesSyncedAssetsDirectory];

  obja = [MEMORY[0x1E696AC08] defaultManager];
  v227 = v67;
  [obja createDirectoryAtPath:v67 withIntermediateDirectories:1 attributes:0 error:0];
  v68 = [v8 originalAssetURL];
  v69 = [v68 path];

  v70 = PLSyncGetLog();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    v71 = [v8 uuid];
    *buf = 138543618;
    *&buf[4] = v71;
    *&buf[12] = 2112;
    *&buf[14] = v69;
    _os_log_impl(&dword_19BF1F000, v70, OS_LOG_TYPE_DEFAULT, "Processing iTunes sync asset %{public}@ %@", buf, 0x16u);
  }

  v225 = v69;
  if (v69)
  {
    v72 = MEMORY[0x1E6982C40];
    v73 = [v69 pathExtension];
    v74 = [v72 typeWithFilenameExtension:v73];
    v75 = [v74 conformsToType:*MEMORY[0x1E6983138]];

    v254 = 0;
    if (v75)
    {
      v76 = v69;
      v218 = 1;
      goto LABEL_76;
    }
  }

  v77 = SyncedAssetCreateWithFileAtPath([v69 fileSystemRepresentation]);
  v254 = v77;
  if (!v77)
  {
    v134 = PLSyncGetLog();
    if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v69;
      _os_log_impl(&dword_19BF1F000, v134, OS_LOG_TYPE_ERROR, "Failed to create SyncedAsset from path: %@", buf, 0xCu);
    }

    v135 = PLSyncGetLog();
    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
    {
      v136 = [v8 uuid];
      *buf = 138543362;
      *&buf[4] = v136;
      _os_log_impl(&dword_19BF1F000, v135, OS_LOG_TYPE_ERROR, "Sync save job failed for asset %{public}@", buf, 0xCu);
    }

    v76 = 0;
    goto LABEL_111;
  }

  v78 = v77;
  v79 = [v227 cStringUsingEncoding:1];
  if (*v79)
  {
    *(v78 + 7) = v79;
  }

  v80 = v254;
  if (v254)
  {
    *(v254 + 52) = v254[52] & 0xFC | 1;
    *(v80 + 48) = *(v80 + 40) - 1;
  }

  NextPart = SyncedAssetExtractNextPart(v80);
  if (!NextPart)
  {
LABEL_98:
    v132 = PLSyncGetLog();
    if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
    {
      v133 = [v222 uuid];
      *buf = 138543618;
      *&buf[4] = v133;
      *&buf[12] = 2112;
      *&buf[14] = v222;
      _os_log_impl(&dword_19BF1F000, v132, OS_LOG_TYPE_ERROR, "Failed to import iTunes sync photo asset %{public}@, unable to resolve path from job %@", buf, 0x16u);
    }

    v35 = 0;
    v76 = 0;
LABEL_147:
    if (v254 && (v254[52] & 1) != 0)
    {
      *(v254 + 52) = v254[52] & 0xFC | 2;
    }

    SyncedAssetDestroy(&v254);
LABEL_151:
    v141 = 1;
    goto LABEL_152;
  }

  v82 = NextPart;
  v76 = 0;
  do
  {
    v83 = *(v82 + 4);
    if (v83 == 2)
    {
      v87 = *v82;
      ThumbnailData = SyncedPartGetThumbnailData(v82, v254);
      v89 = *(v82 + 24);
      v90 = *(v82 + 32);
      v85 = v90;
      if (v87 != 901 || ThumbnailData == 0 || v89 == 0 || v90 == 0)
      {
        v9 = v228;
      }

      else
      {
        v94 = objc_loadWeakRetained(&self->_libraryServicesManager);
        v95 = [v94 pathManager];
        v86 = [v95 iTunesSyncedFaceAlbumThumbnailsDirectory];

        [obja createDirectoryAtPath:v86 withIntermediateDirectories:1 attributes:0 error:0];
        v96 = [v86 stringByAppendingPathComponent:v85];
        v97 = [v96 stringByAppendingPathExtension:@"JPG"];

        PLWriteThumbnailDataToPath(ThumbnailData, v89, 901, v97);
        v9 = v228;
LABEL_71:
      }

      goto LABEL_73;
    }

    if (!v83)
    {
      FilePath = SyncedPartGetFilePath(v82, v254);
      if (FilePath)
      {
        v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:FilePath];
        [v227 stringByAppendingPathComponent:v85];
        v76 = v86 = v76;
        goto LABEL_71;
      }
    }

LABEL_73:
    v82 = SyncedAssetExtractNextPart(v254);
  }

  while (v82);
  if (!v76)
  {
    goto LABEL_98;
  }

  v218 = 0;
LABEL_76:
  v98 = [MEMORY[0x1E695DFF8] fileURLWithPath:v76 isDirectory:0];
  v99 = [(PLImageWriter *)self iTunesSyncedAssetsDCIMDirectory];
  v100 = [v76 pathExtension];
  v220 = [v99 nextAvailableFileURLWithExtension:v100];

  v101 = *MEMORY[0x1E696A3A0];
  v267 = *MEMORY[0x1E696A3A0];
  v102 = *MEMORY[0x1E696A388];
  v268 = *MEMORY[0x1E696A388];
  v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v268 forKeys:&v267 count:1];
  v253 = 0;
  LOBYTE(v100) = [obja setAttributes:v103 ofItemAtPath:v76 error:&v253];
  v104 = v253;

  if ((v100 & 1) == 0)
  {
    v105 = PLSyncGetLog();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v76;
      *&buf[12] = 2112;
      *&buf[14] = v104;
      _os_log_impl(&dword_19BF1F000, v105, OS_LOG_TYPE_ERROR, "Unable to assign data protection to %@: %@", buf, 0x16u);
    }
  }

  v106 = PLSyncGetLog();
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
    v107 = [v222 uuid];
    [v220 path];
    v109 = v108 = v98;
    *buf = 138543874;
    *&buf[4] = v107;
    *&buf[12] = 2112;
    *&buf[14] = v76;
    *&buf[22] = 2112;
    v270 = v109;
    _os_log_impl(&dword_19BF1F000, v106, OS_LOG_TYPE_DEFAULT, "Importing iTunes sync photo asset %{public}@ %@ -> %@", buf, 0x20u);

    v98 = v108;
  }

  v252 = v104;
  v110 = v220;
  v111 = [obja moveItemAtURL:v98 toURL:v220 error:&v252];
  v112 = v252;

  if (v111)
  {
    v214 = v98;
    v215 = v112;
    v251 = 0;
    v113 = [MEMORY[0x1E69BF328] savedAssetTypeForFinderSyncedAsset];
    v114 = [v222 uuid];
    v250 = 0;
    v35 = [PLManagedAsset insertAssetIntoPhotoLibrary:v228 mainFileURL:v220 savedAssetType:v113 bundleScope:0 uuid:v114 replacementUUID:0 imageSource:&v251 imageData:&v250];
    v213 = v250;

    if (v35)
    {
      if ([v222 hasVideoComplement])
      {
        v115 = v101;
        v116 = [v222 videoComplementURL];
        v117 = [v116 path];

        v118 = v214;
        if (v117 && [obja fileExistsAtPath:v117])
        {
          v265 = v115;
          v266 = v102;
          v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v266 forKeys:&v265 count:1];
          v249 = v112;
          v120 = [obja setAttributes:v119 ofItemAtPath:v117 error:&v249];
          v211 = v249;

          v9 = v228;
          v121 = v213;
          if ((v120 & 1) == 0)
          {
            v122 = PLSyncGetLog();
            if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v117;
              *&buf[12] = 2112;
              *&buf[14] = v211;
              _os_log_impl(&dword_19BF1F000, v122, OS_LOG_TYPE_ERROR, "Unable to assign data protection to %@: %@", buf, 0x16u);
            }
          }

          v123 = objc_alloc(MEMORY[0x1E69C0918]);
          v124 = [v220 path];
          v125 = [v123 initWithPathToVideo:v117 pathToImage:v124];

          v126 = v125;
          v127 = [v125 pairingIdentifier];
          memset(buf, 0, sizeof(buf));
          if (v126)
          {
            [v126 imageDisplayTime];
            v247 = 0uLL;
            v248 = 0;
            [v126 originalVideoDuration];
          }

          else
          {
            v247 = 0uLL;
            v248 = 0;
          }

          v216 = v127;
          v212 = v126;
          if (v127 && (BYTE12(v247) & 1) != 0)
          {
            v150 = [v222 videoComplementURL];
            *v264 = v247;
            *&v264[16] = v248;
            v245 = *buf;
            v246 = *&buf[16];
            [v35 becomePhotoIrisWithMediaGroupUUID:v216 mainFileMetadata:0 videoURL:v150 videoDuration:v264 stillDisplayTime:&v245 options:0];
          }

          else
          {
            v150 = PLSyncGetLog();
            if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
            {
              *v264 = 138412290;
              *&v264[4] = v117;
              _os_log_impl(&dword_19BF1F000, v150, OS_LOG_TYPE_ERROR, "Failed to extract Iris properties from %@", v264, 0xCu);
            }
          }

          v151 = [v35 pathForVideoComplementFile];
          v152 = [v117 isEqualToString:v151];

          if ((v152 & 1) == 0)
          {
            v153 = PLSyncGetLog();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
            {
              *v264 = 138412290;
              *&v264[4] = v117;
              _os_log_impl(&dword_19BF1F000, v153, OS_LOG_TYPE_DEBUG, "Removing sync file at path: %@", v264, 0xCu);
            }

            v244 = 0;
            v154 = [obja removeItemAtPath:v117 error:&v244];
            v155 = v244;
            if ((v154 & 1) == 0)
            {
              v156 = PLSyncGetLog();
              if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
              {
                *v264 = 138412546;
                *&v264[4] = v117;
                *&v264[12] = 2112;
                *&v264[14] = v155;
                _os_log_impl(&dword_19BF1F000, v156, OS_LOG_TYPE_DEFAULT, "Error removing file at path: %@, %@", v264, 0x16u);
              }
            }
          }

          v147 = v220;
          v149 = v211;
        }

        else
        {
          v148 = PLSyncGetLog();
          v149 = v112;
          v212 = v148;
          if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v117;
            _os_log_impl(&dword_19BF1F000, v148, OS_LOG_TYPE_ERROR, "Missing video complement file at %@", buf, 0xCu);
          }

          v9 = v228;
          v147 = v220;
          v121 = v213;
        }

        v215 = v149;
      }

      else
      {
        v9 = v228;
        v121 = v213;
        v118 = v214;
        v147 = v220;
      }

      [v35 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:v251 imageData:v121 forceSRGBConversion:0];
      v243 = 0;
      v157 = [PLResourceInstaller installInternalResourcesForExistingAsset:v35 assumeNoExistingResources:0 referencedResourceURLs:0 error:&v243];
      v144 = v243;
      if (!v157)
      {
        v158 = PLSyncGetLog();
        if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v35;
          *&buf[12] = 2112;
          *&buf[14] = v144;
          _os_log_impl(&dword_19BF1F000, v158, OS_LOG_TYPE_ERROR, "Failed to install resources for asset: %@, reason: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v144 = PLSyncGetLog();
      if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
      {
        v145 = [v222 uuid];
        v146 = [v220 path];
        *buf = 138543618;
        *&buf[4] = v145;
        *&buf[12] = 2114;
        *&buf[14] = v146;
        _os_log_impl(&dword_19BF1F000, v144, OS_LOG_TYPE_ERROR, "Failed to import iTunes sync photo %{public}@, unable to insert asset %{public}@", buf, 0x16u);

        v147 = v220;
        v9 = v228;
        v118 = v214;
      }

      else
      {
        v9 = v228;
        v118 = v214;
        v147 = v220;
      }

      v121 = v213;
    }

    if ((v218 & 1) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_151;
  }

  v137 = PLSyncGetLog();
  if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
  {
    v138 = [v220 path];
    *buf = 138412802;
    *&buf[4] = v76;
    *&buf[12] = 2112;
    *&buf[14] = v138;
    *&buf[22] = 2112;
    v270 = v112;
    _os_log_impl(&dword_19BF1F000, v137, OS_LOG_TYPE_ERROR, "Unable to move sync photo %@ to %@: %@", buf, 0x20u);

    v110 = v220;
  }

  v139 = PLSyncGetLog();
  v9 = v228;
  if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
  {
    v140 = [v222 uuid];
    *buf = 138543362;
    *&buf[4] = v140;
    _os_log_impl(&dword_19BF1F000, v139, OS_LOG_TYPE_ERROR, "Sync save job failed for photo %{public}@", buf, 0xCu);

    v110 = v220;
  }

LABEL_111:
  v35 = 0;
  v141 = 0;
LABEL_152:

  v8 = v222;
  if ((v141 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_153:
  v10 = v223;
  if (v35)
  {
    v159 = [v8 uuid];

    if (v159)
    {
      v160 = [v8 uuid];
      [v35 setUuid:v160];
    }

    v161 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    v162 = [v8 creationDate];

    if (v162)
    {
      v163 = [v8 creationDate];
      [v35 setDateCreated:v163];

      v164 = [v8 creationDate];
      [v161 setObject:v164 forKey:*MEMORY[0x1E695DAA8]];
    }

    v165 = [v8 modificationDate];

    if (v165)
    {
      v166 = [v8 modificationDate];
      [v35 setModificationDate:v166];

      v167 = [v8 modificationDate];
      [v161 setObject:v167 forKey:*MEMORY[0x1E695DA98]];
    }

    if ([v161 count])
    {
      v168 = [v35 mainFileURL];
      [v168 setResourceValues:v161 error:0];
    }

    v169 = [v8 location];
    [v169 coordinate];
    v171 = v170;
    [v35 longitude];
    if (v171 != v172 || ([v169 coordinate], v174 = v173, objc_msgSend(v35, "latitude"), v174 != v175))
    {
      [v35 setLocation:v169];
    }

    v219 = v169;
    v176 = [v8 sortToken];
    v217 = v176;
    if (v176)
    {
      [v176 doubleValue];
      [v35 setSortToken:?];
    }

    else
    {
      v177 = [v35 dateCreated];
      [v177 timeIntervalSinceReferenceDate];
      [v35 setSortToken:?];
    }

    v221 = v161;
    v178 = [v8 originalFileName];

    if (v178)
    {
      v179 = [v8 originalFileName];
      [v35 setOriginalFilename:v179];
    }

    v241 = 0u;
    v242 = 0u;
    v240 = 0u;
    v239 = 0u;
    v180 = [v35 legacyFaces];
    v181 = [v180 countByEnumeratingWithState:&v239 objects:v263 count:16];
    if (v181)
    {
      v182 = v181;
      v183 = *v240;
      do
      {
        for (i = 0; i != v182; ++i)
        {
          if (*v240 != v183)
          {
            objc_enumerationMutation(v180);
          }

          [*(*(&v239 + 1) + 8 * i) delete];
        }

        v182 = [v180 countByEnumeratingWithState:&v239 objects:v263 count:16];
      }

      while (v182);
    }

    v237[0] = MEMORY[0x1E69E9820];
    v237[1] = 3221225472;
    v237[2] = __53__PLImageWriter_processSyncSaveJob_library_albumMap___block_invoke;
    v237[3] = &unk_1E7565C20;
    v185 = v35;
    v238 = v185;
    [v8 processFacesWithBlock:v237];
    v186 = [v8 facesInfo];
    v187 = [v186 count];

    if (v187)
    {
      v188 = objc_loadWeakRetained(&self->_libraryServicesManager);
      v189 = [v188 pathManager];
      v190 = [v189 iTunesSyncedFaceDataDirectory];

      v191 = [MEMORY[0x1E696AC08] defaultManager];
      [v191 createDirectoryAtPath:v190 withIntermediateDirectories:1 attributes:0 error:0];

      v192 = [v185 uuid];
      v193 = [v190 stringByAppendingPathComponent:v192];
      v194 = [v193 stringByAppendingPathExtension:@"plist"];

      v195 = MEMORY[0x1E696AE40];
      v196 = [v8 facesInfo];
      v197 = [v195 dataWithPropertyList:v196 format:100 options:0 error:0];

      [v197 writeToFile:v194 options:1073741825 error:0];
    }

    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    objb = [v8 albumURIs];
    v198 = [objb countByEnumeratingWithState:&v233 objects:v262 count:16];
    if (!v198)
    {
LABEL_197:

      v210 = [v228 syncProgressAlbum];
      [v210 reducePendingItemsCountBy:1];

      [v185 persistMetadataToFilesystem];
      v9 = v228;
      v8 = v222;
      goto LABEL_28;
    }

    v199 = v198;
    v200 = *v234;
    while (2)
    {
      v201 = 0;
LABEL_182:
      if (*v234 != v200)
      {
        objc_enumerationMutation(objb);
      }

      v202 = *(*(&v233 + 1) + 8 * v201);
      v203 = [v10 objectForKey:v202];
      if (!v203)
      {
        v204 = v10;
        v205 = [v228 managedObjectContext];
        v206 = [v205 persistentStoreCoordinator];
        v207 = [v206 managedObjectIDForURIRepresentation:v202];

        if (v207)
        {
          v232 = 0;
          v203 = [v205 existingObjectWithID:v207 error:&v232];
          v208 = v232;
          if (v203)
          {
            [v204 setObject:v203 forKey:v202];
            goto LABEL_194;
          }

          v209 = PLSyncGetLog();
          if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = v202;
            *&buf[12] = 2112;
            *&buf[14] = v208;
            _os_log_impl(&dword_19BF1F000, v209, OS_LOG_TYPE_ERROR, "Unable to fetch album %@: %@", buf, 0x16u);
          }
        }

        else
        {
          v208 = PLSyncGetLog();
          if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v202;
            _os_log_impl(&dword_19BF1F000, v208, OS_LOG_TYPE_ERROR, "Unable to create NSManagedObjectID from %@", buf, 0xCu);
          }
        }

        v203 = 0;
LABEL_194:

        v10 = v204;
      }

      [v203 addAssetUsingiTunesAlbumOrder:v185];
      [v203 reducePendingItemsCountBy:1];

      if (v199 == ++v201)
      {
        v199 = [objb countByEnumeratingWithState:&v233 objects:v262 count:16];
        if (!v199)
        {
          goto LABEL_197;
        }

        continue;
      }

      goto LABEL_182;
    }
  }

LABEL_28:
}

void __53__PLImageWriter_processSyncSaveJob_library_albumMap___block_invoke(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = PLSyncGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 32) uuid];
    v16 = *(a1 + 32);
    v23 = 138412546;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "[face processing] asset %@ before: %@", &v23, 0x16u);
  }

  v17 = [*(a1 + 32) addLegacyFaceWithRelativeRect:a2 identifier:v13 albumUUID:{a4, a5, a6, a7}];
  v18 = PLSyncGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 32) uuid];
    v20 = *(a1 + 32);
    v23 = 138412546;
    v24 = v19;
    v25 = 2112;
    v26 = v20;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "[face processing] asset %@ after: %@", &v23, 0x16u);
  }

  v21 = PLSyncGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*(a1 + 32) legacyFaces];
    v23 = 138412290;
    v24 = v22;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "[face processing] legacyFaces: %@", &v23, 0xCu);
  }
}

- (void)_resetSyncedAssetsDCIMDirectory
{
  v2 = [(PLImageWriter *)self iTunesSyncedAssetsDCIMDirectory];
  [v2 reset];
}

- (id)iTunesSyncedAssetsDCIMDirectory
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_iTunesSyncedAssetsDCIMDirectory)
  {
    WeakRetained = objc_loadWeakRetained(&v2->_libraryServicesManager);
    v4 = [WeakRetained pathManager];
    v5 = [v4 iTunesSyncedAssetsDirectory];

    v13 = 0;
    LOBYTE(v4) = [MEMORY[0x1E69BF238] createDirectoryAtPath:v5 error:&v13];
    v6 = v13;
    if ((v4 & 1) == 0)
    {
      v7 = PLSyncGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = v5;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Unable to create directory %@: %@", buf, 0x16u);
      }
    }

    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
    v9 = [objc_alloc(MEMORY[0x1E69BF2F8]) initWithDirectoryURL:v8 subDirectorySuffix:@"SYNCD" perDirectoryLimit:2000 userInfoPath:0];
    iTunesSyncedAssetsDCIMDirectory = v2->_iTunesSyncedAssetsDCIMDirectory;
    v2->_iTunesSyncedAssetsDCIMDirectory = v9;
  }

  objc_sync_exit(v2);

  v11 = v2->_iTunesSyncedAssetsDCIMDirectory;

  return v11;
}

- (void)_enablePhotoStreamJob:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLMyPhotoStreamGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "_enablePhotoStreamJob %@", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E695DF90] dictionary];
  [v9 setObject:*MEMORY[0x1E69C0448] forKey:*MEMORY[0x1E69C0410]];
  v10 = [PLAssetTransactionReason transactionReason:@"[_enablePhotoStreamJob]Enabling PhotoStream so we make sure that previous assets are deleted."];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__PLImageWriter__enablePhotoStreamJob_completion___block_invoke;
  v12[3] = &unk_1E7576AA0;
  v13 = v7;
  v11 = v7;
  [(PLImageWriter *)self _processDeletePhotoStreamDataJob:v9 withReason:v10 completion:v12];
}

uint64_t __50__PLImageWriter__enablePhotoStreamJob_completion___block_invoke(uint64_t a1)
{
  v2 = PLMyPhotoStreamGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "ignoring request to enable Photo Stream since no stream ID was found", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_processDeletePhotoStreamDataJob:(id)a3 withReason:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  [(PLImageWriter *)self _incrementJobCount:v8];
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PLImageWriter__processDeletePhotoStreamDataJob_withReason_completion___block_invoke;
  v14[3] = &unk_1E7576F38;
  v15 = v8;
  v16 = v9;
  v14[4] = self;
  v12 = v8;
  v13 = v9;
  [PLPhotoStreamsHelper deletePhotoStreamAssetsWithLibraryServiceManager:WeakRetained withReason:v10 completion:v14];
}

uint64_t __72__PLImageWriter__processDeletePhotoStreamDataJob_withReason_completion___block_invoke(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 _decrementJobCount:v3];
}

- (void)_processAutodeleteEmptyAlbumJob:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [v6 objectForKey:@"EmptyAlbumToDelete"];
  if (v9)
  {
    v10 = [(PLImageWriter *)self _newShortLivedLibraryWithName:"[PLImageWriter _processAutodeleteEmptyAlbumJob:completion:]"];
    [(PLImageWriter *)self _incrementJobCount:v6];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__PLImageWriter__processAutodeleteEmptyAlbumJob_completion___block_invoke;
    v15[3] = &unk_1E7578848;
    v16 = v10;
    v17 = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PLImageWriter__processAutodeleteEmptyAlbumJob_completion___block_invoke_2;
    v12[3] = &unk_1E7576F38;
    v14 = v7;
    v12[4] = self;
    v13 = v6;
    v11 = v10;
    [v11 performTransaction:v15 completionHandler:v12];
  }

  else
  {
    v7[2](v7);
  }

  objc_autoreleasePoolPop(v8);
}

void __60__PLImageWriter__processAutodeleteEmptyAlbumJob_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v8 = [v2 existingObjectWithID:*(a1 + 40) error:0];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v8;
  if (isKindOfClass)
  {
    v5 = v8;
    if (([v5 isDeleted] & 1) == 0)
    {
      v6 = [v5 assets];
      v7 = [v6 count];

      if (!v7)
      {
        [*(a1 + 32) resetCachedImportAlbumsIfNeededForAlbum:v5];
        [v5 delete];
      }
    }

    v4 = v8;
  }
}

uint64_t __60__PLImageWriter__processAutodeleteEmptyAlbumJob_completion___block_invoke_2(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 _decrementJobCount:v3];
}

- (void)_processAvalanchesValidationJob:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [v6 objectForKey:*MEMORY[0x1E69C0340]];
  v10 = [(PLImageWriter *)self _newShortLivedLibraryWithName:"[PLImageWriter _processAvalanchesValidationJob:completion:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__PLImageWriter__processAvalanchesValidationJob_completion___block_invoke;
  v14[3] = &unk_1E75761B8;
  v15 = v9;
  v11 = v6;
  v16 = v11;
  v17 = v10;
  v12 = v10;
  v13 = v9;
  [v12 performBlockAndWait:v14];
  v7[2](v7);

  objc_autoreleasePoolPop(v8);
}

void __60__PLImageWriter__processAvalanchesValidationJob_completion___block_invoke(id *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1[4], "count")}];
  [a1[5] setObject:v2 forKeyedSubscript:@"avalancheStackAssetMap"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [a1[6] managedObjectContext];
        v10 = [PLAvalanche assetsWithAvalancheUUID:v8 sourceType:1 inManagedObjectContext:v9];

        if ([v10 count] >= 2 && !+[PLAvalanche isValidBurstWithAssets:](PLAvalanche, "isValidBurstWithAssets:", v10))
        {
          v11 = [PLAvalanche revalidateAvalancheAssets:v10 inLibrary:a1[6] deleteNonPicks:0 allowDissolve:1];
          [v2 setObject:v11 forKeyedSubscript:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_processAvalancheJob:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [v6 objectForKey:*MEMORY[0x1E69C03B8]];
  if ([v9 length])
  {
    v10 = [v6 objectForKey:*MEMORY[0x1E69C0328]];
    v11 = [v6 objectForKey:*MEMORY[0x1E69C0330]];
    v12 = [v6 objectForKey:*MEMORY[0x1E69C0338]];
    v13 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];
    if ([v13 BOOLForKey:@"PLImageWriterStashCameraJob"])
    {
      v14 = [v6 objectForKeyedSubscript:@"kPLImageWriterReplayedCameraJob"];

      if (!v14)
      {
        [(PLImageWriter *)self _copyJobContentsToHoldingDirectoryWithUUID:v9 incomingPath:0 job:v6];
      }
    }

    if ([v10 count] && objc_msgSend(v11, "count") && v12)
    {
      [(PLImageWriter *)self _incrementJobCount:v6];
      v15 = [(PLImageWriter *)self _newShortLivedLibraryWithName:"[PLImageWriter _processAvalancheJob:completion:]"];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __49__PLImageWriter__processAvalancheJob_completion___block_invoke;
      v17[3] = &unk_1E75730F8;
      v18 = v10;
      v19 = v9;
      v20 = v15;
      v21 = v11;
      v22 = v12;
      v16 = v15;
      [v16 performTransactionAndWait:v17];
      v7[2](v7);
      [(PLImageWriter *)self _decrementJobCount:v6];
    }
  }

  objc_autoreleasePoolPop(v8);
}

void __49__PLImageWriter__processAvalancheJob_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count] >= 2)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 48) managedObjectContext];
    v16 = [PLAvalanche assetsWithAvalancheUUID:v2 sourceType:1 inManagedObjectContext:v3];

    v4 = [PLManagedAsset assetsWithUUIDs:*(a1 + 56) options:3 inLibrary:*(a1 + 48)];
    v5 = [PLManagedAsset assetWithUUID:*(a1 + 64) inLibrary:*(a1 + 48)];
    v6 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v16];
    v7 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v4];
    LOBYTE(v15) = 1;
    v8 = [PLAvalanche updatePropertiesForAssets:v6 autoPicks:v7 stackAsset:v5 userFavorites:0 deleteNonPicks:0 setFirstPick:1 allowDissolve:v15];

    v9 = [[PLAvalanche alloc] initWithUUID:*(a1 + 40) sourceType:1 photoLibrary:*(a1 + 48)];
    v10 = [(PLAvalanche *)v9 stackAsset];
    [v10 generateLargeThumbnailFileIfNecessary];

    v11 = [(PLAvalanche *)v9 assets];
    v12 = [(PLAvalanche *)v9 autoPicks];
    v13 = [(PLAvalanche *)v9 stackAsset];
    v14 = [(PLAvalanche *)v9 userFavorites];
    [PLAvalanche updateMembershipForAssets:v11 autoPicks:v12 stackAsset:v13 userFavorites:v14 deleteNonPicks:0 allowDissolve:1 inLibrary:*(a1 + 48)];
  }
}

- (void)_processBatchImageJob:(id)a3 inLibrary:(id)a4 completion:(id)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x1E69C0348];
  v12 = [v8 objectForKey:*MEMORY[0x1E69C0348]];
  v13 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];
  if ([v13 BOOLForKey:@"PLImageWriterStashCameraJob"])
  {
    v14 = [v8 objectForKeyedSubscript:@"kPLImageWriterReplayedCameraJob"];

    if (!v14)
    {
      v42 = v11;
      v44 = v9;
      v45 = self;
      v46 = v10;
      v47 = v8;
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v16 = [v12 count];
      if (v16)
      {
        v17 = v16;
        for (i = 0; i != v17; ++i)
        {
          v19 = [v12 objectAtIndex:{i, v42}];
          v20 = [v19 mutableCopy];
          [v15 setObject:v20 atIndexedSubscript:i];
        }
      }

      v43 = v12;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      v56 = 0u;
      v21 = v15;
      v22 = [v21 countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v57;
        v25 = *MEMORY[0x1E69C0548];
        v26 = *MEMORY[0x1E69C04C8];
        v27 = *MEMORY[0x1E69C0588];
        do
        {
          v28 = v21;
          for (j = 0; j != v23; ++j)
          {
            if (*v57 != v24)
            {
              objc_enumerationMutation(v28);
            }

            v30 = *(*(&v56 + 1) + 8 * j);
            v60[0] = @"completionBlock";
            v60[1] = v25;
            v60[2] = v26;
            v60[3] = v27;
            v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:{4, v42}];
            [v30 removeObjectsForKeys:v31];
          }

          v21 = v28;
          v23 = [v28 countByEnumeratingWithState:&v56 objects:v61 count:16];
        }

        while (v23);
      }

      v32 = [v21 firstObject];

      if (v32)
      {
        v33 = [v21 firstObject];
        v34 = [v33 objectForKey:*MEMORY[0x1E69C0360]];

        v35 = [v21 firstObject];
        v36 = [v35 objectForKey:*MEMORY[0x1E69C0518]];

        v8 = v47;
        v37 = [v47 mutableCopy];
        [v37 setObject:v21 forKeyedSubscript:v42];
        self = v45;
        [(PLImageWriter *)v45 _copyJobContentsToHoldingDirectoryWithUUID:v34 incomingPath:v36 job:v37];

        v10 = v46;
      }

      else
      {
        v34 = PLAssetImportGetLog();
        v10 = v46;
        v8 = v47;
        self = v45;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "No job dictionaries found in batch image job, skipping stashing of camera job", buf, 2u);
        }
      }

      v12 = v43;
      v9 = v44;
    }
  }

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __60__PLImageWriter__processBatchImageJob_inLibrary_completion___block_invoke;
  v51[3] = &unk_1E75761B8;
  v38 = v12;
  v52 = v38;
  v53 = self;
  v39 = v9;
  v54 = v39;
  [v39 performTransactionAndWait:v51];
  [(PLImageWriter *)self _incrementJobCount:v8];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __60__PLImageWriter__processBatchImageJob_inLibrary_completion___block_invoke_3;
  v48[3] = &unk_1E7578848;
  v49 = v39;
  v50 = v38;
  v40 = v38;
  v41 = v39;
  [v41 performTransactionAndWait:v48];
  v10[2](v10);
  [(PLImageWriter *)self _decrementJobCount:v8];
}

void __60__PLImageWriter__processBatchImageJob_inLibrary_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = MEMORY[0x1E695E118];
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        [v8 setObject:v6 forKey:{@"imagejob_transient_save_transaction", v10}];
        [*(a1 + 40) _processImageJob:v8 inLibrary:*(a1 + 48) completion:&__block_literal_global_275];
        [v8 removeObjectForKey:@"imagejob_transient_save_transaction"];
        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __60__PLImageWriter__processBatchImageJob_inLibrary_completion___block_invoke_3(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 userInfo];

  [v3 setObject:MEMORY[0x1E695E118] forKey:@"imagejob_transient_batch_transaction_key"];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 objectForKey:@"imagejob_transient_transaction_block"];
        v12 = v11;
        if (v11)
        {
          (*(v11 + 16))(v11);
        }

        [v9 removeObjectForKey:@"imagejob_transient_transaction_block"];

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  [v3 removeObjectForKey:@"imagejob_transient_batch_transaction_key"];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = *(a1 + 40);
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        v20 = [v18 objectForKey:{@"imagejob_transient_transaction_completion_block", v22}];
        v21 = v20;
        if (v20)
        {
          (*(v20 + 16))(v20);
        }

        [v18 removeObjectForKey:@"imagejob_transient_transaction_completion_block"];

        objc_autoreleasePoolPop(v19);
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }
}

- (id)_processLimitedLibraryAdditionIfNeededWithAssetUUID:(id)a3 clientBundleIdentifier:(id)a4 clientAuthorization:(id)a5 library:(id)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 length] && objc_msgSend(v10, "length"))
  {
    if (v11)
    {
      [v11 clientAuditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v15 = [v12 managedObjectContext];
    v13 = [PLLimitedLibraryFetchFilter fetchOrCreateLimitedLibraryFetchFilterWithApplicationIdentifier:v10 auditToken:buf inManagedObjectContext:v15];

    v16 = PLAssetImportGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Adding image writer asset %{public}@ to limited library fetch filter for %@", buf, 0x16u);
    }

    v19 = v9;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    [v13 addAssetsWithUUIDs:v17];

    v14 = [v13 objectID];
  }

  else
  {
    v13 = PLAssetImportGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Error adding asset to limited library due to nil uuid %{public}@ or clientBundleIdentifier %@", buf, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)_removeInProgressExtendedAttributesForFileAtURL:(id)a3
{
  v3 = [MEMORY[0x1E69BF230] filesystemPersistenceBatchItemForFileAtURL:a3];
  if (v3)
  {
    v4 = v3;
    [v3 setData:0 forKey:*MEMORY[0x1E69BFDC0]];
    [v4 setData:0 forKey:*MEMORY[0x1E69BFDB0]];
    [v4 setData:0 forKey:*MEMORY[0x1E69BFDA8]];
    [v4 setData:0 forKey:*MEMORY[0x1E69BFDB8]];
    [v4 persist];
    v3 = v4;
  }
}

- (void)_processImageJob:(id)a3 inLibrary:(id)a4 completion:(id)a5
{
  v238 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v143 = a4;
  v138 = a5;
  v150 = [v9 objectForKey:@"callStack"];
  if (v150)
  {
    v10 = PLAssetImportGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v150;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "##### %@ %@", buf, 0x16u);
    }

    v12 = [MEMORY[0x1E695DFD8] setWithObject:@"callStack"];
    PLJobLogDictionary();
  }

  v13 = *MEMORY[0x1E69C0518];
  v14 = [v9 objectForKey:*MEMORY[0x1E69C0518]];
  v149 = [MEMORY[0x1E696AC08] defaultManager];
  if (v14 && ([v149 fileExistsAtPath:v14] & 1) != 0)
  {
    v15 = v14;
LABEL_10:
    v145 = v15;
    v153 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
    goto LABEL_13;
  }

  v16 = [MEMORY[0x1E69BF178] sharedDCIMWriter];
  [v16 saveImageJobToDisk:v9];

  v17 = [v9 objectForKey:v13];

  if ([v149 fileExistsAtPath:v17])
  {
    v15 = v17;
    if (v17)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v145 = 0;
  v153 = 0;
LABEL_13:
  v142 = [v9 objectForKey:*MEMORY[0x1E69C03B8]];
  v140 = [v145 pathExtension];
  v18 = [v9 objectForKey:*MEMORY[0x1E69C0388]];
  v19 = v18 == 0;

  if (!v19)
  {
    v20 = [(PLImageWriter *)self cameraAssetPathForNewAssetWithExtension:v140 assetUUID:v142];
    if (v20)
    {
      v21 = [MEMORY[0x1E695DFF8] fileURLWithPath:v20 isDirectory:0];
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v20 = [v9 objectForKey:*MEMORY[0x1E69C04C8]];
  if (!v20)
  {
LABEL_20:
    v21 = 0;
    goto LABEL_21;
  }

  v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v20 isDirectory:0];
  v21 = v22;
  if (v140)
  {
    v23 = [v22 pathExtension];
    v24 = [v23 isEqualToString:v140];

    if ((v24 & 1) == 0)
    {
      v25 = [v21 URLByDeletingPathExtension];
      v26 = [v25 URLByAppendingPathExtension:v140];

      v21 = v26;
    }
  }

LABEL_21:

  v144 = [v9 objectForKey:*MEMORY[0x1E69C03B0]];
  v146 = [v9 objectForKey:*MEMORY[0x1E69C0378]];
  if (v146)
  {
    v152 = [[PLIngestJobCameraMetadata alloc] initWithCameraMetadataPath:v146];
    [(PLIngestJobCameraMetadata *)v152 deserializeCameraMetadata];
  }

  else
  {
    v152 = 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v235 = __Block_byref_object_copy__5211;
  v236 = __Block_byref_object_dispose__5212;
  v237 = [v9 objectForKey:*MEMORY[0x1E69C0350]];
  v27 = [v9 objectForKey:*MEMORY[0x1E69C04D0]];
  [(PLImageWriter *)self _linkDiagnosticFileWithSourcePath:v27 forPhotoDestinationURL:v21];
  v137 = v27;
  v151 = v21;
  v28 = MEMORY[0x1E69C0868];
  v29 = [(PLIngestJobCameraMetadata *)v152 cameraMetadata];
  v30 = [v28 semanticEnhanceSceneForCameraMetadata:v29];
  v134 = v31;
  v32 = v30;

  v33 = [v151 pathExtension];
  v139 = [PLManagedAsset uniformTypeIdentifierFromPathExtension:v33 assetType:0];

  v34 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v139];
  v35 = [v34 conformsToType:*MEMORY[0x1E6982F88]];

  if (v35)
  {
    v36 = -1;
  }

  else
  {
    v36 = v32;
  }

  v147 = v36;
  v37 = *(*&buf[8] + 40);
  if (v37)
  {
    v225 = 0;
    v38 = [MEMORY[0x1E69C0670] deserializedAdjustmentsFromData:v37 error:&v225];
    v39 = v225;
    if (v38)
    {
      v40 = [v38 portraitMetadata];

      v41 = v147;
      if (v40)
      {
        v41 = -1;
      }

      v147 = v41;
    }

    else
    {
      v42 = PLBackendGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *v228 = 138412290;
        *&v228[4] = v39;
        _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "[SemDev] Error deserializing camera adjustment data: %@", v228, 0xCu);
      }
    }
  }

  if ([objc_opt_class() semanticEnhanceSceneIsValid:v147])
  {
    v43 = PLAssetImportGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      if ((v147 + 1) > 4)
      {
        v44 = @"unknown";
      }

      else
      {
        v44 = off_1E7565D28[v147 + 1];
      }

      *v228 = 138412290;
      *&v228[4] = v44;
      _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "[SemDev] Classifying image as semantic enhance scene: %@", v228, 0xCu);
    }

    v47 = [(PLIngestJobCameraMetadata *)v152 cameraMetadata];
    [v47 setSemanticEnhanceScene:v147];

    v48 = [(PLIngestJobCameraMetadata *)v152 cameraMetadata];
    [v48 setSemanticEnhanceSceneConfidence:v134];

    v49 = [PLImageWriter cameraMetadataURLForPrimaryAssetURL:v151 photoLibrary:v143];
    v224 = 0;
    v50 = [(PLImageWriter *)self _writeOutCameraMetadata:v152 destinationURL:v49 error:&v224];
    v51 = v224;
    if (v50)
    {
      if (v144)
      {
        v45 = 0;
        v52 = v151;
LABEL_51:

        v46 = v52;
        goto LABEL_52;
      }

      [PLImageWriter semanticEnhancePreviewDestinationURLForPrimaryAssetURL:v151];
      v52 = v45 = v50;
      v53 = v151;
    }

    else
    {
      v53 = PLBackendGetLog();
      v45 = v50;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *v228 = 138412290;
        *&v228[4] = v51;
        _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "[SemDev] Error writing out MDATA file, skipping SemDev: %@", v228, 0xCu);
      }

      v147 = -1;
      v52 = v151;
    }

    goto LABEL_51;
  }

  v45 = 0;
  v46 = v151;
LABEL_52:
  v141 = 0;
  if (v144 && v46)
  {
    v54 = [PLPhotoLibrary deferredPhotoPreviewDestinationURLForPrimaryAssetURL:v46];

    v136 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69C03F0]];
    v141 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69C03E0]];
    v45 = 1;
    v46 = v54;
  }

  else
  {
    v136 = 0;
  }

  if (v153 && v46)
  {
    v55 = MEMORY[0x1E69BF230];
    v56 = [v46 path];
    [v55 persistString:v56 forKey:*MEMORY[0x1E69BFDB0] fileURL:v153];
    v57 = v46;

    if (v150)
    {
      v58 = PLAssetImportGetLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        *v228 = 138412290;
        *&v228[4] = v46;
        _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_DEBUG, "#### added destination EA %@", v228, 0xCu);
      }
    }

    v232 = *MEMORY[0x1E696A3A0];
    v233 = *MEMORY[0x1E696A388];
    v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v233 forKeys:&v232 count:1];
    v60 = [v153 path];
    v223 = 0;
    v61 = [v149 setAttributes:v59 ofItemAtPath:v60 error:&v223];
    v62 = v223;

    if ((v61 & 1) == 0)
    {
      v63 = PLAssetImportGetLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = [v153 path];
        *v228 = 138412546;
        *&v228[4] = v64;
        *&v228[12] = 2112;
        *&v228[14] = v62;
        _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_ERROR, "Unable to assign data protection to %@: %@", v228, 0x16u);
      }
    }

    v222 = 0;
    v65 = [MEMORY[0x1E69BF238] copyItemAtURL:v153 toURL:v57 error:&v222];
    v66 = v222;
    if (v65)
    {
      if (!v150)
      {
LABEL_74:

        v46 = v57;
        goto LABEL_75;
      }

      v67 = PLAssetImportGetLog();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        *v228 = 138412290;
        *&v228[4] = v57;
        _os_log_impl(&dword_19BF1F000, v67, OS_LOG_TYPE_DEBUG, "#### linked photoSourcePath to %@", v228, 0xCu);
      }
    }

    else
    {
      v68 = PLAssetImportGetLog();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *v228 = 138412802;
        *&v228[4] = v153;
        *&v228[12] = 2112;
        *&v228[14] = v57;
        *&v228[22] = 2112;
        v229 = v66;
        _os_log_impl(&dword_19BF1F000, v68, OS_LOG_TYPE_ERROR, "Failed to copy %@ to %@: %@", v228, 0x20u);
      }

      v67 = v57;
      v57 = 0;
    }

    goto LABEL_74;
  }

LABEL_75:
  v135 = v46;
  if (!v153 || !v46)
  {
    v219[0] = MEMORY[0x1E69E9820];
    v219[1] = 3221225472;
    v219[2] = __55__PLImageWriter__processImageJob_inLibrary_completion___block_invoke;
    v219[3] = &unk_1E7578848;
    v220 = v143;
    v221 = v142;
    v216[0] = MEMORY[0x1E69E9820];
    v216[1] = 3221225472;
    v216[2] = __55__PLImageWriter__processImageJob_inLibrary_completion___block_invoke_2;
    v216[3] = &unk_1E7576F38;
    v216[4] = self;
    v217 = v9;
    v218 = v138;
    [v220 performTransaction:v219 completionHandler:v216];

    v82 = v220;
    goto LABEL_111;
  }

  v126 = [v9 objectForKey:*MEMORY[0x1E69C0390]];
  v122 = [v9 objectForKey:*MEMORY[0x1E69C0360]];
  v121 = v45;
  v112 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];
  if ([v112 BOOLForKey:@"PLImageWriterStashCameraJob"])
  {
    v69 = [v9 objectForKeyedSubscript:@"kPLImageWriterReplayedCameraJob"];
    v70 = (v69 | v122) == 0;

    if (v70)
    {
      [(PLImageWriter *)self _copyJobContentsToHoldingDirectoryWithUUID:v126 incomingPath:v145 job:v9];
    }
  }

  v71 = [v9 objectForKey:*MEMORY[0x1E69C04F0]];
  v130 = [v71 BOOLValue];

  if (v130)
  {
    v72 = [v145 stringByDeletingLastPathComponent];
    v73 = _photoIrisIndicatorFilePathForPhoto(v72, v126);
    if (v73)
    {
      PLMakeIndicatorFileExistAtPath();
      v74 = [MEMORY[0x1E69BF360] transaction:"-[PLImageWriter _processImageJob:inLibrary:completion:]"];
      v75 = dispatch_time(0, 8000000000);
      jobQueue = self->_jobQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__PLImageWriter__processImageJob_inLibrary_completion___block_invoke_3;
      block[3] = &unk_1E75761B8;
      v213 = v143;
      v214 = v73;
      v77 = v74;
      v215 = v77;
      dispatch_after(v75, jobQueue, block);
    }
  }

  v129 = [v9 objectForKey:*MEMORY[0x1E69C02B0]];
  v132 = [v9 objectForKey:*MEMORY[0x1E69C0320]];
  v119 = [v9 objectForKey:*MEMORY[0x1E69C0318]];
  v117 = [v9 objectForKey:*MEMORY[0x1E69C04B0]];
  v78 = [v9 objectForKey:*MEMORY[0x1E69C0380]];
  if (v78)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v78 = 0;
    }
  }

  v116 = [v9 objectForKey:*MEMORY[0x1E69C0398]];
  v114 = [v9 objectForKey:*MEMORY[0x1E69C0370]];
  v79 = [v9 objectForKey:@"ImportedBy"];
  v124 = [v9 objectForKey:*MEMORY[0x1E69C03C8]];
  v128 = [v9 objectForKey:*MEMORY[0x1E69C0400]];
  if (!v128)
  {
    v80 = [v124 objectForKey:*MEMORY[0x1E696DE78]];
    v81 = v80 == 0;

    if (v81)
    {
      v128 = 0;
    }

    else
    {
      v128 = [MEMORY[0x1E696AD98] numberWithInteger:PLImageOrientationFromImageProperties()];
    }
  }

  v83 = [v9 objectForKey:*MEMORY[0x1E69C0540]];
  if ([v83 length])
  {
    v84 = DCIM_newPLImageWithStoredJPEGData();
  }

  else
  {
    v85 = 0;
    if (![v9 objectForKey:*MEMORY[0x1E69C0548]] || !v128)
    {
      goto LABEL_98;
    }

    [v128 intValue];
    v84 = DCIM_newPLImageWithCGImage();
  }

  v85 = v84;
LABEL_98:
  *v228 = 0;
  *&v228[8] = v228;
  *&v228[16] = 0x3032000000;
  v229 = __Block_byref_object_copy__5211;
  v230 = __Block_byref_object_dispose__5212;
  v231 = [v9 objectForKey:*MEMORY[0x1E69C04D8]];
  v113 = [v9 objectForKey:*MEMORY[0x1E69C04C0]];
  v86 = [v9 objectForKey:*MEMORY[0x1E69C04B8]];
  v210[0] = 0;
  v210[1] = v210;
  v210[2] = 0x2020000000;
  v211 = 0;
  v87 = [MEMORY[0x1E69BF328] defaultSavedAssetTypeForUnspecifiedImageWriterJobs];
  v88 = *MEMORY[0x1E69C0558];
  v89 = [v9 objectForKey:*MEMORY[0x1E69C0558]];

  if (v89)
  {
    v90 = [v9 objectForKey:v88];
    v87 = [v90 integerValue];
  }

  if (([v79 intValue] == 6 || objc_msgSend(v79, "intValue") == 9) && objc_msgSend(v132, "length"))
  {
    v91 = *MEMORY[0x1E69BF4B8];
    v227[0] = v132;
    v92 = *MEMORY[0x1E69BF4C0];
    v226[0] = v91;
    v226[1] = v92;
    v93 = v129;
    if (!v129)
    {
      v93 = [MEMORY[0x1E695DFB0] null];
    }

    v227[1] = v93;
    v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v227 forKeys:v226 count:2];
    PLSendCoreAnalyticEvent();

    if (!v129)
    {
    }
  }

  v208[0] = 0;
  v208[1] = v208;
  v208[2] = 0x3032000000;
  v208[3] = __Block_byref_object_copy__5211;
  v208[4] = __Block_byref_object_dispose__5212;
  v209 = 0;
  v206[0] = 0;
  v206[1] = v206;
  v206[2] = 0x3032000000;
  v206[3] = __Block_byref_object_copy__5211;
  v206[4] = __Block_byref_object_dispose__5212;
  v207 = 0;
  [(PLImageWriter *)self _incrementJobCount:v9];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PLImageWriter__processImageJob_inLibrary_completion___block_invoke_5;
  aBlock[3] = &unk_1E7565B10;
  v108 = v132;
  v171 = v108;
  v109 = v119;
  v172 = v109;
  v110 = v117;
  v173 = v110;
  v115 = v114;
  v174 = v115;
  v118 = v79;
  v175 = v118;
  v120 = v124;
  v176 = v120;
  v111 = v78;
  v177 = v111;
  v106 = v143;
  v178 = v106;
  v95 = v135;
  v179 = v95;
  v180 = v151;
  v125 = v85;
  v181 = v125;
  v203 = v87;
  v182 = v142;
  v107 = v126;
  v183 = v107;
  v204 = v121;
  v127 = v116;
  v184 = v127;
  v205 = v130;
  v185 = v136;
  v186 = v141;
  v196 = buf;
  v197 = v228;
  v96 = v149;
  v187 = v96;
  v133 = v113;
  v188 = v133;
  v189 = self;
  v131 = v83;
  v190 = v131;
  v198 = v210;
  v97 = v86;
  v191 = v97;
  v98 = v9;
  v192 = v98;
  v193 = v152;
  v123 = v122;
  v194 = v123;
  v202 = v134;
  v195 = v144;
  v199 = v206;
  v201 = v147;
  v200 = v208;
  v99 = _Block_copy(aBlock);
  v154[0] = MEMORY[0x1E69E9820];
  v154[1] = 3221225472;
  v154[2] = __55__PLImageWriter__processImageJob_inLibrary_completion___block_invoke_220;
  v154[3] = &unk_1E7565B38;
  v100 = v98;
  v155 = v100;
  v156 = v153;
  v157 = v95;
  v158 = v96;
  v159 = v145;
  v160 = v150;
  v161 = self;
  v162 = v137;
  v148 = v97;
  v163 = v148;
  v164 = v146;
  v166 = v210;
  v167 = v228;
  v168 = v208;
  v169 = v206;
  v101 = v138;
  v165 = v101;
  v102 = _Block_copy(v154);
  v103 = [v100 objectForKey:@"imagejob_transient_save_transaction"];
  LODWORD(v97) = [v103 BOOLValue];

  if (v97)
  {
    v104 = [v99 copy];
    [v100 setObject:v104 forKey:@"imagejob_transient_transaction_block"];

    v105 = [v102 copy];
    [v100 setObject:v105 forKey:@"imagejob_transient_transaction_completion_block"];

    v101[2](v101);
  }

  else
  {
    [v106 performTransaction:v99 completionHandler:v102 withPriority:1];
  }

  _Block_object_dispose(v206, 8);
  _Block_object_dispose(v208, 8);

  _Block_object_dispose(v210, 8);
  _Block_object_dispose(v228, 8);

  v82 = v107;
LABEL_111:

  _Block_object_dispose(buf, 8);
}

void __55__PLImageWriter__processImageJob_inLibrary_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetWithUUID:*(a1 + 40)];
  v1 = [PLAssetTransactionReason transactionReason:@"[ProcessImageJob]We failed to create the finalized image data, so now we remove the in-flight asset."];
  [v2 deleteWithReason:v1];
}

uint64_t __55__PLImageWriter__processImageJob_inLibrary_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _removeTransientKeys:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __55__PLImageWriter__processImageJob_inLibrary_completion___block_invoke_3(id *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__PLImageWriter__processImageJob_inLibrary_completion___block_invoke_4;
  v3[3] = &unk_1E75761B8;
  v2 = a1[4];
  v4 = a1[5];
  v5 = a1[4];
  v6 = a1[6];
  [v2 performTransaction:v3];
}

void __55__PLImageWriter__processImageJob_inLibrary_completion___block_invoke_5(uint64_t a1)
{
  v109 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKey:*MEMORY[0x1E69C0320]];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [v3 setObject:v5 forKey:*MEMORY[0x1E69C0318]];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    [v3 setObject:v6 forKey:*MEMORY[0x1E69C04B0]];
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    [v3 setObject:v7 forKey:*MEMORY[0x1E69C0370]];
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    [v3 setObject:v8 forKey:@"ImportedBy"];
  }

  v9 = [*(a1 + 72) objectForKey:*MEMORY[0x1E696D9B0]];
  v10 = [v9 objectForKey:*MEMORY[0x1E696D988]];
  v11 = v10;
  v12 = &unk_1F0FBAD50;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  [v3 setObject:v13 forKey:*MEMORY[0x1E69C03A0]];
  if (*(a1 + 80))
  {
    v14 = [*(a1 + 88) assetWithUUID:?];
    v15 = v14;
    if (v14 && [v14 isPhotoStreamPhoto] && objc_msgSend(v15, "visibilityState") != 2)
    {
      [v15 setVisibilityState:2];
      v102 = [v15 publicGlobalUUID];
    }

    else
    {
      v102 = 0;
    }
  }

  else
  {
    v102 = 0;
  }

  v16 = objc_alloc(MEMORY[0x1E69C0718]);
  v17 = *(a1 + 96);
  v18 = [*(a1 + 88) libraryBundle];
  v19 = [v18 timeZoneLookup];
  v20 = [v16 initWithImageURL:v17 contentType:0 options:12 timeZoneLookup:v19 cacheImageSource:1 cacheImageData:1];

  v21 = 0;
  if (*(a1 + 290) == 1)
  {
    v21 = *(a1 + 96);
  }

  LOBYTE(v100) = 0;
  LOBYTE(v99) = *(a1 + 290);
  v22 = [*(a1 + 88) addDCIMEntryAtFileURL:*(a1 + 104) mainFileMetadata:v20 previewImage:*(a1 + 112) thumbnailImage:0 savedAssetType:*(a1 + 288) replacementUUID:*(a1 + 120) publicGlobalUUID:v102 extendedInfo:v3 withUUID:*(a1 + 128) isPlaceholder:v99 placeholderFileURL:v21 forFinalCameraImage:v100];
  v23 = v22;
  v24 = *(a1 + 136);
  if (v24)
  {
    v25 = [v22 dateCreated];
    IsApproximatelyEqual = PLDateIsApproximatelyEqual(v24, v25, 0.001);

    if (!IsApproximatelyEqual)
    {
      [v23 didSetCustomDateCreated];
      [v23 setDateCreated:*(a1 + 136)];
    }

    [*(a1 + 136) timeIntervalSinceReferenceDate];
    [v23 setSortToken:?];
  }

  if (*(a1 + 291) == 1)
  {
    [v23 setKindSubtype:2];
  }

  v27 = *(a1 + 144);
  if (v27 && *(a1 + 152))
  {
    [v23 setWidth:{objc_msgSend(v27, "longLongValue")}];
    [v23 setHeight:{objc_msgSend(*(a1 + 152), "longLongValue")}];
  }

  if (*(*(*(a1 + 232) + 8) + 40))
  {
    v28 = *(*(*(a1 + 240) + 8) + 40) ? [*(a1 + 160) fileExistsAtPath:?] : 0;
    v29 = *(a1 + 168) ? [*(a1 + 160) fileExistsAtPath:?] : 0;
    if (((v28 | v29) & 1) == 0)
    {
      v30 = *(a1 + 176);
      v31 = *(a1 + 184);
      v32 = *(a1 + 112);
      v33 = [*(a1 + 96) path];
      v34 = [v33 lastPathComponent];
      v35 = [v30 writeFilteredPreviewWithImageData:v31 orImage:v32 toPathWithBaseName:v34];

      if (v35)
      {
        objc_storeStrong((*(*(a1 + 240) + 8) + 40), v35);
        *(*(*(a1 + 248) + 8) + 24) = 1;
      }
    }
  }

  if (*(*(*(a1 + 232) + 8) + 40) || (v54 = *(a1 + 192)) != 0 && [*(a1 + 160) fileExistsAtPath:v54 isDirectory:0])
  {
    v37 = (a1 + 168);
    v36 = *(a1 + 168);
    if (v36 && ([*(a1 + 160) fileExistsAtPath:v36 isDirectory:0] & 1) != 0)
    {
      v38 = 0;
    }

    else
    {
      v37 = (*(*(a1 + 240) + 8) + 40);
      v38 = 1;
    }

    v39 = *v37;
    v40 = *MEMORY[0x1E695F060];
    v41 = *(MEMORY[0x1E695F060] + 8);
    if (*(*(*(a1 + 232) + 8) + 40))
    {
      v42 = [*(a1 + 200) objectForKeyedSubscript:*MEMORY[0x1E69C03F0]];
      v43 = [*(a1 + 200) objectForKeyedSubscript:*MEMORY[0x1E69C03E0]];
      v44 = v43;
      if (v42 && v43)
      {
        [v42 floatValue];
        v40 = v45;
        [v44 floatValue];
        v41 = v46;
      }
    }

    v47 = objc_opt_class();
    v48 = *(*(*(a1 + 232) + 8) + 40);
    v49 = *(a1 + 192);
    v50 = [*(a1 + 208) cameraMetadata];
    LOBYTE(v98) = v38;
    [v47 setAdjustmentsForNewPhoto:v23 mainFileMetadata:v20 cameraAdjustmentData:v48 adjustmentDataPath:v49 filteredImagePath:v39 cameraMetadata:v50 finalAssetSize:v40 isSubstandardRender:{v41, v98}];
  }

  if (*(a1 + 216))
  {
    [v23 setAvalancheUUID:?];
    v51 = [*(a1 + 200) objectForKey:*MEMORY[0x1E69C0358]];
    v52 = v51;
    if (v51)
    {
      v53 = [v51 intValue];
    }

    else
    {
      v53 = 2;
    }

    [v23 setAvalanchePickType:v53];
    if (+[PLAvalanche shouldOnlyShowAvalanchePicks])
    {
      v55 = [*(a1 + 200) objectForKey:*MEMORY[0x1E69C0368]];
      v56 = v55;
      if (v55)
      {
        v57 = [v55 intValue];
      }

      else
      {
        v57 = 2;
      }

      [v23 setVisibilityState:v57];
    }
  }

  v58 = [v23 avalancheUUID];

  if (v58)
  {
    v59 = [v23 avalancheUUID];
    v60 = [*(a1 + 88) managedObjectContext];
    v61 = [PLAvalanche assetsWithAvalancheUUID:v59 sourceType:1 inManagedObjectContext:v60];

    v62 = [PLAvalanche revalidateAvalancheAssets:v61 inLibrary:*(a1 + 88) deleteNonPicks:0 allowDissolve:1];
  }

  v63 = [*(a1 + 200) objectForKey:*MEMORY[0x1E69C0308]];
  v64 = v63;
  if (v63)
  {
    [v23 updateAssetKindAndPlaybackStyleIfNeededWithKind:{objc_msgSend(v63, "intValue")}];
  }

  v65 = [*(a1 + 200) objectForKey:*MEMORY[0x1E69C0300]];
  v66 = v65;
  if (v65)
  {
    [v23 setKindSubtype:{objc_msgSend(v65, "intValue")}];
  }

  v67 = *(a1 + 208);
  if (v67)
  {
    [v67 applyCameraMetadataToAsset:v23];
  }

  v68 = *(a1 + 224);
  if (v68)
  {
    v69 = [v23 additionalAttributes];
    [v69 setDeferredPhotoIdentifier:*(a1 + 224)];

    if ([v20 isDeferredPhotoProxyExpectingDepth])
    {
      [v23 setDepthType:1];
      [v23 setEditableDepthBadgeAttribute:1];
    }

    v70 = [*(a1 + 88) constraintsDirector];
    [v70 informPhotoCapturedThatNeedsDeferredProcessing];
  }

  else
  {
    v70 = [*(a1 + 88) constraintsDirector];
    [v70 informPhotoCapturedThatNeedsQuickFace];
  }

  if ([objc_opt_class() semanticEnhanceSceneIsValid:*(a1 + 272)])
  {
    if (!*(a1 + 224))
    {
      [v23 setDeferredProcessingNeeded:10];
    }

    v71 = [v23 additionalAttributes];
    [v71 setDeferredProcessingCandidateOptions:{objc_msgSend(v71, "deferredProcessingCandidateOptions") | 8}];
  }

  else if (!v68)
  {
    goto LABEL_97;
  }

  if (*(a1 + 224))
  {
    [v23 setDeferredProcessingNeeded:1];
  }

  v72 = *(*(*(a1 + 232) + 8) + 40);
  if (v72)
  {
    v104 = 0;
    v73 = [MEMORY[0x1E69C0670] deserializedAdjustmentsFromData:v72 error:&v104];
    v74 = v104;
    if (v73)
    {
      if (![v73 canBeRenderedByCapturePipelineWithVideoComplement:objc_msgSend(v23 deferredIdentifier:{"kindSubtype") == 2, *(a1 + 224)}])
      {
LABEL_95:

        goto LABEL_96;
      }

      v101 = v3;
      v75 = v20;
      v76 = PLAssetImportGetLog();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = [v23 uuid];
        *buf = 138543362;
        v106 = v77;
        _os_log_impl(&dword_19BF1F000, v76, OS_LOG_TYPE_DEFAULT, "Deferred capture will have render delivered by deferredmediad for asset: %{public}@", buf, 0xCu);
      }

      v78 = [v23 additionalAttributes];
      [v78 setDeferredProcessingCandidateOptions:16];
    }

    else
    {
      v101 = v3;
      v75 = v20;
      v78 = PLAssetImportGetLog();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        v79 = [v23 uuid];
        *buf = 138543618;
        v106 = v79;
        v107 = 2112;
        v108 = v74;
        _os_log_impl(&dword_19BF1F000, v78, OS_LOG_TYPE_ERROR, "Failed to deserialize adjustment data for asset: %{public}@ error: %@", buf, 0x16u);
      }
    }

    v20 = v75;
    v3 = v101;
    goto LABEL_95;
  }

LABEL_96:
  [PLImageWriter _signalBackgroundProcessingNeededForAsset:v23 reason:@"needs capture scheduling"];
LABEL_97:
  if (*(a1 + 290) == 1)
  {
    v80 = [*(a1 + 200) objectForKeyedSubscript:*MEMORY[0x1E69C03F0]];
    v81 = [*(a1 + 200) objectForKeyedSubscript:*MEMORY[0x1E69C03E0]];
    v82 = v81;
    if (v80 && v81)
    {
      [v23 setWidth:{objc_msgSend(v80, "longLongValue")}];
      [v23 setHeight:{objc_msgSend(v82, "longLongValue")}];
    }
  }

  if (([v23 isInserted] & 1) == 0 && objc_msgSend(v23, "isUpdated") && objc_msgSend(v23, "avalanchePickType") != 1)
  {
    [v23 setNeedsMomentUpdate:1];
  }

  if (v23)
  {
    v103 = 0;
    v83 = [PLResourceInstaller installInternalResourcesForExistingAsset:v23 assumeNoExistingResources:0 referencedResourceURLs:0 error:&v103];
    v84 = v103;
    if (v83)
    {
      v85 = [v23 expectedDeferredProcessingNeededOnAssetCreation];
      if (v85)
      {
        [v23 setDeferredProcessingNeeded:v85];
        [PLImageWriter _signalBackgroundProcessingNeededForAsset:v23 reason:@"expected deferred processing on asset creation"];
      }
    }

    else
    {
      v86 = PLMyPhotoStreamGetLog();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v106 = v23;
        v107 = 2112;
        v108 = v84;
        _os_log_impl(&dword_19BF1F000, v86, OS_LOG_TYPE_ERROR, "Failed to install resources for asset: %@, reason: %@", buf, 0x16u);
      }
    }

    v87 = [*(a1 + 200) objectForKey:@"job.private.ClientInLimitedLibraryMode"];
    v88 = [v87 BOOLValue];

    v89 = [*(a1 + 200) objectForKey:@"job.private.LimitedLibraryClientFetchFilterIdentifier"];
    v90 = *(*(a1 + 256) + 8);
    v91 = *(v90 + 40);
    *(v90 + 40) = v89;

    if (v88 && [*(*(*(a1 + 256) + 8) + 40) length] && (objc_msgSend(*(a1 + 64), "intValue") == 6 || objc_msgSend(*(a1 + 64), "intValue") == 9))
    {
      v92 = [*(a1 + 200) objectForKey:@"job.private.LimitedLibraryClientAuthorization"];
      v93 = *(a1 + 176);
      v94 = [v23 uuid];
      v95 = [v93 _processLimitedLibraryAdditionIfNeededWithAssetUUID:v94 clientBundleIdentifier:*(*(*(a1 + 256) + 8) + 40) clientAuthorization:v92 library:*(a1 + 88)];
      v96 = *(*(a1 + 264) + 8);
      v97 = *(v96 + 40);
      *(v96 + 40) = v95;
    }

    [*(a1 + 200) setObject:v23 forKey:@"PLImageWriterTransientAsset"];
  }
}

void __55__PLImageWriter__processImageJob_inLibrary_completion___block_invoke_220(uint64_t a1)
{
  v89[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKey:@"PLImageWriterTransientAsset"];
  v3 = *(a1 + 32);
  v89[0] = @"PLImageWriterTransientAsset";
  v89[1] = @"imagejob_transient_publicGlobalUUID";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
  [v3 removeObjectsForKeys:v4];

  v5 = [v2 assetURL];
  if (!*(a1 + 40) || !*(a1 + 48))
  {
    v16 = 0;
    if (*(*(*(a1 + 120) + 8) + 24) != 1)
    {
      goto LABEL_62;
    }

    goto LABEL_50;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v80 = 0;
  v8 = [v6 removeItemAtPath:v7 error:&v80];
  v9 = v80;
  if ((v8 & 1) == 0)
  {
    v10 = PLAssetImportGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 64);
      *buf = 138412546;
      v84 = v17;
      v85 = 2112;
      v86 = v9;
      v12 = "Failed to delete incoming photo %@ : %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (*(a1 + 72))
  {
    v10 = PLAssetImportGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 64);
      *buf = 138412290;
      v84 = v11;
      v12 = "#### deleted %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_DEBUG;
      v15 = 12;
LABEL_11:
      _os_log_impl(&dword_19BF1F000, v13, v14, v12, buf, v15);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_13:
  v18 = [*(a1 + 64) stringByDeletingPathExtension];
  v19 = [v18 stringByAppendingPathExtension:@"plist"];

  v20 = *(a1 + 56);
  v79 = v9;
  LODWORD(v18) = [v20 removeItemAtPath:v19 error:&v79];
  v21 = v79;

  if (v18 && *(a1 + 72))
  {
    v22 = PLAssetImportGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v84 = v19;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEBUG, "#### deleted %@", buf, 0xCu);
    }
  }

  [*(a1 + 80) _removeInProgressExtendedAttributesForFileAtURL:*(a1 + 48)];
  v23 = *(a1 + 88);
  if (v23)
  {
    v24 = *(a1 + 56);
    v78 = v21;
    v25 = [v24 removeItemAtPath:v23 error:&v78];
    v26 = v78;

    if ((v25 & 1) == 0)
    {
      v27 = PLAssetImportGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v33 = *(a1 + 88);
        *buf = 138412546;
        v84 = v33;
        v85 = 2112;
        v86 = v26;
        v29 = "Failed to delete incoming diagnostic %@ : %@";
        v30 = v27;
        v31 = OS_LOG_TYPE_ERROR;
        v32 = 22;
        goto LABEL_26;
      }

LABEL_27:

      goto LABEL_28;
    }

    if (*(a1 + 72))
    {
      v27 = PLAssetImportGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = *(a1 + 88);
        *buf = 138412290;
        v84 = v28;
        v29 = "#### deleted %@";
        v30 = v27;
        v31 = OS_LOG_TYPE_DEBUG;
        v32 = 12;
LABEL_26:
        _os_log_impl(&dword_19BF1F000, v30, v31, v29, buf, v32);
        goto LABEL_27;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v26 = v21;
  }

LABEL_28:
  v34 = *(a1 + 96);
  if (v34)
  {
    v35 = *(a1 + 56);
    v77 = v26;
    v36 = [v35 removeItemAtPath:v34 error:&v77];
    v37 = v77;

    if ((v36 & 1) == 0)
    {
      v38 = PLAssetImportGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 96);
        *buf = 138412546;
        v84 = v39;
        v85 = 2112;
        v86 = v37;
        _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "Failed to delete incoming adjustment data %@ : %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v37 = v26;
  }

  if (MEMORY[0x19EAEE230]())
  {
    v40 = PLAssetImportGetLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "Stashing incoming mdata files if present because internal install", buf, 2u);
    }

    if (*(a1 + 104))
    {
      v41 = [v2 photoLibrary];
      v42 = [v2 filename];
      v43 = [PLManagedAsset diagnosticFilePathForLibrary:v41 mainFilename:v42 createIfNeeded:1];

      v44 = [v43 stringByDeletingPathExtension];
      v45 = [v44 stringByAppendingPathExtension:*MEMORY[0x1E69C00C0]];

      v46 = *(a1 + 56);
      v47 = *(a1 + 104);
      v76 = 0;
      LOBYTE(v42) = [v46 copyItemAtPath:v47 toPath:v45 error:&v76];
      v48 = v76;
      if ((v42 & 1) == 0)
      {
        v49 = PLAssetImportGetLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = *(a1 + 104);
          *buf = 138412802;
          v84 = v50;
          v85 = 2112;
          v86 = v45;
          v87 = 2112;
          v88 = v48;
          _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_ERROR, "Failed to copy incoming camera metadata %@ to %@ : %@", buf, 0x20u);
        }
      }
    }
  }

  v51 = *(a1 + 104);
  if (v51)
  {
    v52 = *(a1 + 56);
    v75 = v37;
    v53 = [v52 removeItemAtPath:v51 error:&v75];
    v54 = v75;

    if ((v53 & 1) == 0)
    {
      v55 = PLAssetImportGetLog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = *(a1 + 104);
        *buf = 138412546;
        v84 = v56;
        v85 = 2112;
        v86 = v54;
        _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_ERROR, "Failed to delete incoming camera metadata %@ : %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v54 = v37;
  }

  v16 = 1;
LABEL_50:
  v57 = *(*(*(a1 + 128) + 8) + 40);
  if (v57 && [*(a1 + 56) fileExistsAtPath:v57 isDirectory:0])
  {
    v58 = *(a1 + 56);
    v59 = *(*(*(a1 + 128) + 8) + 40);
    v74 = 0;
    v60 = [v58 removeItemAtPath:v59 error:&v74];
    v61 = v74;
    if (v60)
    {
      if (!*(a1 + 72) || (*(*(*(a1 + 120) + 8) + 24) & 1) != 0)
      {
        goto LABEL_61;
      }

      v62 = PLAssetImportGetLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        v63 = *(*(*(a1 + 128) + 8) + 40);
        *buf = 138412290;
        v84 = v63;
        v64 = "#### deleted %@";
        v65 = v62;
        v66 = OS_LOG_TYPE_DEBUG;
        v67 = 12;
LABEL_59:
        _os_log_impl(&dword_19BF1F000, v65, v66, v64, buf, v67);
      }
    }

    else
    {
      v62 = PLAssetImportGetLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v68 = *(*(*(a1 + 128) + 8) + 40);
        *buf = 138412546;
        v84 = v68;
        v85 = 2112;
        v86 = v61;
        v64 = "Failed to delete incoming filtered preview %@ : %@";
        v65 = v62;
        v66 = OS_LOG_TYPE_ERROR;
        v67 = 22;
        goto LABEL_59;
      }
    }

LABEL_61:
  }

LABEL_62:
  if (*(*(*(a1 + 136) + 8) + 40))
  {
    v69 = [MEMORY[0x1E696AD88] defaultCenter];
    v70 = *(*(*(a1 + 136) + 8) + 40);
    v71 = *(*(*(a1 + 144) + 8) + 40);
    v81 = @"PLLimitedLibraryFetchFiltersUpdatedNotificationApplicationIdentifier";
    v82 = v71;
    v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    [v69 postNotificationName:@"PLLimitedLibraryFetchFiltersUpdatedNotification" object:v70 userInfo:v72];
  }

  [*(a1 + 80) _removeTransientKeys:*(a1 + 32)];
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKey:*MEMORY[0x1E69C0310]];
  }

  if (v16)
  {
    v73 = [*(a1 + 48) path];
    [*(a1 + 32) setObject:v73 forKeyedSubscript:*MEMORY[0x1E69C03E8]];
  }

  (*(*(a1 + 112) + 16))();
  [*(a1 + 80) _decrementJobCount:*(a1 + 32)];
}

uint64_t __55__PLImageWriter__processImageJob_inLibrary_completion___block_invoke_4(void *a1)
{
  [PLImageWriter photoIrisPairingDidSucceed:0 fileIndicatorPath:a1[4] photoAsset:0 photoLibrary:a1[5]];
  v2 = a1[6];

  return [v2 stillAlive];
}

- (void)_linkDiagnosticFileWithSourcePath:(id)a3 forPhotoDestinationURL:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = v8;
  if (v6 && [v8 fileExistsAtPath:v6 isDirectory:0])
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:0];
    v11 = [(PLImageWriter *)self _newShortLivedLibraryWithName:"[PLImageWriter _linkDiagnosticFileWithSourcePath:forPhotoDestinationURL:]"];
    v12 = [v7 lastPathComponent];
    v13 = [PLManagedAsset diagnosticFilePathForLibrary:v11 mainFilename:v12 createIfNeeded:1];
    if (v13)
    {
      v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:0];
      v15 = v14;
      if (!v10 || !v14)
      {
        goto LABEL_17;
      }

      v20 = 0;
      v16 = [MEMORY[0x1E69BF238] copyItemAtURL:v10 toURL:v14 error:&v20];
      v17 = v20;
      if ((v16 & 1) == 0)
      {
        v18 = PLAssetImportGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v22 = v10;
          v23 = 2112;
          v24 = v15;
          v25 = 2112;
          v26 = v17;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to copy %@ to %@: %@", buf, 0x20u);
        }

        v10 = 0;
      }

      v19 = PLAssetImportGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v15;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "Linked diagnosticPath to %@", buf, 0xCu);
      }
    }

    else
    {
      v17 = PLAssetImportGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v22 = v11;
        v23 = 2048;
        v24 = v12;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to get a diagnostic file URL (library: %p, mainFilename: %p)", buf, 0x16u);
      }

      v15 = 0;
    }

LABEL_17:
  }
}

- (id)writeFilteredPreviewWithImageData:(id)a3 orImage:(id)a4 toPathWithBaseName:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = v7;
LABEL_3:
    v11 = [v9 stringByAppendingPathExtension:@"tempFilteredPreview.JPG"];
    v12 = NSTemporaryDirectory();
    v13 = [v12 stringByAppendingPathComponent:v11];

    v14 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = [v14 fileExistsAtPath:v13 isDirectory:0];

    if (v15)
    {
      v16 = [MEMORY[0x1E696AC08] defaultManager];
      v25 = 0;
      v17 = [v16 removeItemAtPath:v13 error:&v25];
      v18 = v25;

      if ((v17 & 1) == 0)
      {
        v19 = PLAssetImportGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v27 = v13;
          v28 = 2112;
          v29 = v18;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Failed to remove existing temporary filtered preview file before writing %@, %@", buf, 0x16u);
        }
      }
    }

    v24 = 0;
    v20 = [v10 writeToFile:v13 options:1073741825 error:&v24];
    v21 = v24;
    if ((v20 & 1) == 0)
    {
      v22 = PLAssetImportGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v27 = v13;
        v28 = 2112;
        v29 = v21;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Failed to write filtered preview thumbnail to temporary file: %@, %@", buf, 0x16u);
      }

      v13 = 0;
    }

    goto LABEL_19;
  }

  if (v8)
  {
    v10 = DCIM_newJPEGRepresentationWithPLImage();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v11 = PLAssetImportGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to get jpeg data for filtered preview thumbnail", buf, 2u);
  }

  v10 = 0;
  v13 = 0;
LABEL_19:

  return v13;
}

- (void)_removeTransientKeys:(id)a3
{
  v3 = *MEMORY[0x1E69C03F8];
  v4 = a3;
  [v4 removeObjectForKey:v3];
  [v4 removeObjectForKey:*MEMORY[0x1E69C0548]];
  [v4 removeObjectForKey:*MEMORY[0x1E69C0540]];
  [v4 removeObjectForKey:*MEMORY[0x1E69C0598]];
  [v4 removeObjectForKey:@"PLImageWriterTransientAsset"];
}

- (id)pathForNewAssetPathAtAlbumDirectoryPath:(id)a3 assetType:(unsigned int)a4 extension:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = NSStringFromSelector(a2);
    [v31 handleFailureInMethod:a2 object:self file:@"PLImageWriter.m" lineNumber:586 description:{@"%@ can only be called from assetsd", v32}];
  }

  v11 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v11 fileExistsAtPath:v9])
  {
    v12 = 0;
  }

  else
  {
    v34 = 0;
    v19 = [v11 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v34];
    v20 = v34;
    if ((v19 & 1) == 0)
    {
      v21 = PLAssetImportGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = v9;
        v37 = 2112;
        v38 = v20;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Error creating album subdirectory %@ : %@", buf, 0x16u);
      }

      v18 = 0;
      v12 = v20;
      goto LABEL_29;
    }

    v21 = [v9 stringByAppendingPathComponent:@".MISC"];
    v33 = v20;
    v22 = [v11 createDirectoryAtPath:v21 withIntermediateDirectories:1 attributes:0 error:&v33];
    v12 = v33;

    if ((v22 & 1) == 0)
    {
      v27 = PLAssetImportGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = v21;
        v37 = 2112;
        v38 = v12;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Error creating album misc subdirectory %@ : %@", buf, 0x16u);
      }

      v18 = 0;
      goto LABEL_29;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v14 = [WeakRetained pathManager];
  v15 = [v14 isUBF];

  if (!v15)
  {
    v16 = [__albumDCIMDirectoriesByPath objectForKey:v9];
    if (!v16)
    {
      if (!__albumDCIMDirectoriesByPath)
      {
        v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v24 = __albumDCIMDirectoriesByPath;
        __albumDCIMDirectoriesByPath = v23;
      }

      v16 = [objc_alloc(MEMORY[0x1E69BF290]) initWithDCIMPath:v9];
      [__albumDCIMDirectoriesByPath setObject:v16 forKey:v9];
    }

    [v16 lockDirectory];
    v17 = [v16 nextAvailableDirectory];
    v25 = [v17 nextAvailableFileGroup];
    [v17 ensureDirectoryExists];
    [v16 unlockDirectory];
    if (a4 == 1)
    {
      v26 = [v25 pathForVideoFile];
    }

    else
    {
      if (a4)
      {
        v18 = 0;
        goto LABEL_26;
      }

      v26 = [v25 pathForFullSizeImage];
    }

    v18 = v26;
LABEL_26:

    goto LABEL_27;
  }

  v16 = [MEMORY[0x1E696AFB0] UUID];
  v17 = [v16 UUIDString];
  v18 = [v9 stringByAppendingPathComponent:v17];
LABEL_27:

  if (![v10 length])
  {
    goto LABEL_30;
  }

  v21 = [v18 stringByDeletingPathExtension];
  v28 = [v10 uppercaseString];
  v29 = [v21 stringByAppendingPathExtension:v28];

  v18 = v29;
LABEL_29:

LABEL_30:

  return v18;
}

- (id)_pathForNewAssetWithPath:(id)a3 withExtension:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = NSStringFromSelector(a2);
    [v22 handleFailureInMethod:a2 object:self file:@"PLImageWriter.m" lineNumber:559 description:{@"%@ can only be called from assetsd", v23}];
  }

  v9 = objc_autoreleasePoolPush();
  v10 = v7;
  v11 = v10;
  if ([v8 length])
  {
    v12 = [v10 pathExtension];
    v13 = [v12 isEqualToString:v8];

    v11 = v10;
    if ((v13 & 1) == 0)
    {
      v14 = [v10 stringByDeletingPathExtension];
      v15 = [v8 uppercaseString];
      v11 = [v14 stringByAppendingPathExtension:v15];
    }
  }

  v16 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [v11 stringByDeletingLastPathComponent];
  v24 = 0;
  v18 = [v16 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v24];
  v19 = v24;

  if ((v18 & 1) == 0)
  {
    v20 = PLAssetImportGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v26 = v11;
      v27 = 2114;
      v28 = v8;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to create directory at path: %@, extension: %{public}@ (Error: %@)", buf, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v9);

  return v11;
}

- (id)pathForNewAssetWithDirectoryPath:(id)a3 fileName:(id)a4 extension:(id)a5
{
  v8 = a5;
  v9 = [a3 stringByAppendingPathComponent:a4];
  v10 = [(PLImageWriter *)self _pathForNewAssetWithPath:v9 withExtension:v8];

  return v10;
}

- (id)cameraAssetPathForNewAssetWithExtension:(id)a3 assetUUID:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__5211;
  v32 = __Block_byref_object_dispose__5212;
  v33 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v10 = [WeakRetained pathManager];
  v11 = [v10 isUBF];

  if (v11)
  {
    if (!v8)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PLImageWriter.m" lineNumber:530 description:{@"Invalid parameter not satisfying: %@", @"assetUUID"}];
      goto LABEL_16;
    }

    if (v7)
    {
      v12 = [MEMORY[0x1E69C08F0] typeForFilenameExtensionOrLastPathComponent:v7];
      v13 = [v12 identifier];
    }

    else
    {
      v13 = 0;
    }

    v17 = [objc_alloc(MEMORY[0x1E69BF298]) initWithAssetUuid:v8 bundleScope:0 uti:v13 resourceVersion:0 resourceType:31];
    v18 = objc_loadWeakRetained(&self->_libraryServicesManager);
    v20 = [v18 pathManager];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __67__PLImageWriter_cameraAssetPathForNewAssetWithExtension_assetUUID___block_invoke;
    v27[3] = &unk_1E7565AE8;
    v27[4] = &v28;
    [v20 obtainAccessAndWaitWithFileWithIdentifier:v17 mode:2 toURLWithHandler:v27];
  }

  else
  {
    v14 = objc_loadWeakRetained(&self->_libraryServicesManager);
    v15 = [v14 pathManager];
    v13 = [v15 simpleDCIMDirectory];

    if (v13)
    {
      v16 = [v13 nextAvailableFileURLWithExtension:v7];
      v17 = v16;
      if (!v16)
      {
        v26 = PLAssetImportGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v35 = v7;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_FAULT, "Failed to get next available URL under DCIM folder for extension: %@", buf, 0xCu);
        }

        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected nil value for DCIM directory for extension: %@", v7];
        [PLDiagnostics fileRadarUserNotificationWithHeader:@"Unexpected Photo Library state" message:@"Please file a Radar against Photos" radarTitle:@"TTR: [PLImageWriter cameraAssetPathForNewAssetWithExtension:assetUUID:] Unexpected nil value for DCIM directory" radarDescription:v18];
        v17 = 0;
        goto LABEL_15;
      }

      v18 = [v16 path];
      v19 = [(PLImageWriter *)self _pathForNewAssetWithPath:v18 withExtension:v7];
      v20 = v29[5];
      v29[5] = v19;
    }

    else
    {
      v21 = PLAssetImportGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v35 = v7;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_FAULT, "Failed to get the DCIM directory for extension: %@", buf, 0xCu);
      }

      v22 = MEMORY[0x1E696AEC0];
      v18 = objc_loadWeakRetained(&self->_libraryServicesManager);
      v20 = [v18 pathManager];
      v23 = [v22 stringWithFormat:@"Unexpected nil value for DCIM directory for\nextension: %@\nLSM: %@\nlibrary: %@", v7, v18, v20];
      [PLDiagnostics fileRadarUserNotificationWithHeader:@"Unexpected Photo Library state" message:@"Please file a Radar against Photos" radarTitle:@"TTR: [PLImageWriter cameraAssetPathForNewAssetWithExtension:assetUUID:] Unexpected nil value for DCIM directory" radarDescription:v23];

      v13 = 0;
      v17 = v18;
    }
  }

LABEL_15:
LABEL_16:

  v24 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v24;
}

void __67__PLImageWriter_cameraAssetPathForNewAssetWithExtension_assetUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)delayJob:(id)a3 delay:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E69BF360] transaction:"-[PLImageWriter delayJob:delay:]"];
  v8 = dispatch_time(0, 1000000000 * a4);
  jobQueue = self->_jobQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__PLImageWriter_delayJob_delay___block_invoke;
  block[3] = &unk_1E75761B8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_after(v8, jobQueue, block);
}

uint64_t __32__PLImageWriter_delayJob_delay___block_invoke(uint64_t a1)
{
  v2 = PLAssetImportGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Delay elapsed, processing job", v4, 2u);
  }

  [*(a1 + 32) _processJob:*(a1 + 40)];
  [*(a1 + 32) _decrementJobCount:*(a1 + 40)];
  return [*(a1 + 48) stillAlive];
}

- (BOOL)enqueueJob:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E69C0408];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0408]];

  if (!v6)
  {
    ++enqueueJob__s_jobIndex;
    v7 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v4 setObject:v7 forKeyedSubscript:v5];
  }

  [(PLImageWriter *)self _incrementJobCount:v4];
  v8 = *MEMORY[0x1E69C0410];
  v9 = [v4 objectForKey:*MEMORY[0x1E69C0410]];
  v10 = PLAssetImportGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v9;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Started queueing jobType: %{public}@", buf, 0xCu);
  }

  if (enqueueJob__onceToken != -1)
  {
    dispatch_once(&enqueueJob__onceToken, &__block_literal_global_5498);
  }

  if (enqueueJob__debugVideoJobDelay && ([v4 objectForKeyedSubscript:v8], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", *MEMORY[0x1E69C0478]), v11, v12))
  {
    v13 = PLAssetImportGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = enqueueJob__debugVideoJobDelay;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Delaying video job for %ld seconds", buf, 0xCu);
    }

    v14 = enqueueJob__debugVideoJobDelay;
  }

  else
  {
    if (!enqueueJob__debugImageJobDelay || ([v4 objectForKeyedSubscript:v8], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", *MEMORY[0x1E69C0458]), v15, !v16))
    {
      jobQueue = self->_jobQueue;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __28__PLImageWriter_enqueueJob___block_invoke_129;
      v20[3] = &unk_1E7578848;
      v20[4] = self;
      v21 = v4;
      dispatch_async(jobQueue, v20);

      goto LABEL_19;
    }

    v17 = PLAssetImportGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = enqueueJob__debugImageJobDelay;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Delaying image job for %ld seconds", buf, 0xCu);
    }

    v14 = enqueueJob__debugImageJobDelay;
  }

  [(PLImageWriter *)self delayJob:v4 delay:v14];
LABEL_19:

  return 1;
}

uint64_t __28__PLImageWriter_enqueueJob___block_invoke_129(uint64_t a1)
{
  [*(a1 + 32) _processJob:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _decrementJobCount:v3];
}

void __28__PLImageWriter_enqueueJob___block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 integerForKey:@"PLImageWriterVideoJobDebugDelayOverride"];
  if (v1 >= 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = -v1;
  }

  enqueueJob__debugVideoJobDelay = v2;

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v5 integerForKey:@"PLImageWriterImageJobDebugDelayOverride"];
  if (v3 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = -v3;
  }

  enqueueJob__debugImageJobDelay = v4;
}

- (BOOL)_hasNonCrashRecoveryJobsEnqueued
{
  os_unfair_lock_lock(&self->_transactionLock);
  v3 = self->_transactionCounter > self->_crashRecoveryCounter;
  os_unfair_lock_unlock(&self->_transactionLock);
  return v3;
}

- (void)_decrementJobCount:(id)a3
{
  v18 = a3;
  v5 = objc_opt_class();
  v6 = *MEMORY[0x1E69C0410];
  v7 = [v18 objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
  LODWORD(v5) = [v5 _requiresIndicatorFileForJobType:v7];

  if (v5)
  {
    os_unfair_recursive_lock_lock_with_options();
    v8 = self->_unfinishedJobsRequiringIndicatorCount - 1;
    self->_unfinishedJobsRequiringIndicatorCount = v8;
    if (!v8)
    {
      v9 = [(PLImageWriter *)self indicatorFileCoordinator];
      WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
      v11 = [WeakRetained crashRecoverySupport];
      [v9 setImageWriter:self isBusy:0 crashRecoverySupport:v11];
    }

    os_unfair_recursive_lock_unlock();
  }

  os_unfair_lock_lock(&self->_transactionLock);
  if (!self->_transactionCounter)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PLImageWriter.m" lineNumber:448 description:{@"Invalid parameter not satisfying: %@", @"_transactionCounter > 0"}];
  }

  if (!self->_transaction)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLImageWriter.m" lineNumber:449 description:{@"Invalid parameter not satisfying: %@", @"_transaction"}];
  }

  v12 = self->_transactionCounter - 1;
  self->_transactionCounter = v12;
  if (!v12)
  {
    transaction = self->_transaction;
    self->_transaction = 0;
  }

  v14 = objc_opt_class();
  v15 = [v18 objectForKeyedSubscript:v6];
  LODWORD(v14) = [v14 _requiresCrashRecoveryForJobType:v15];

  if (v14)
  {
    --self->_crashRecoveryCounter;
  }

  os_unfair_lock_unlock(&self->_transactionLock);
}

- (void)_incrementJobCount:(id)a3
{
  v20 = a3;
  os_unfair_lock_lock(&self->_transactionLock);
  transactionCounter = self->_transactionCounter;
  self->_transactionCounter = transactionCounter + 1;
  transaction = self->_transaction;
  if (transactionCounter)
  {
    if (!transaction)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"PLImageWriter.m" lineNumber:419 description:{@"Invalid parameter not satisfying: %@", @"_transaction"}];
    }

    os_transaction_needs_more_time();
  }

  else
  {
    if (transaction)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"PLImageWriter.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"!_transaction"}];
    }

    v7 = os_transaction_create();
    v8 = self->_transaction;
    self->_transaction = v7;
  }

  v9 = objc_opt_class();
  v10 = *MEMORY[0x1E69C0410];
  v11 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
  LODWORD(v9) = [v9 _requiresCrashRecoveryForJobType:v11];

  if (v9)
  {
    ++self->_crashRecoveryCounter;
  }

  os_unfair_lock_unlock(&self->_transactionLock);
  v12 = objc_opt_class();
  v13 = [v20 objectForKeyedSubscript:v10];
  LODWORD(v12) = [v12 _requiresIndicatorFileForJobType:v13];

  if (v12)
  {
    os_unfair_recursive_lock_lock_with_options();
    unfinishedJobsRequiringIndicatorCount = self->_unfinishedJobsRequiringIndicatorCount;
    self->_unfinishedJobsRequiringIndicatorCount = unfinishedJobsRequiringIndicatorCount + 1;
    if (!unfinishedJobsRequiringIndicatorCount)
    {
      v15 = [(PLImageWriter *)self indicatorFileCoordinator];
      WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
      v17 = [WeakRetained crashRecoverySupport];
      [v15 setImageWriter:self isBusy:1 crashRecoverySupport:v17];
    }

    os_unfair_recursive_lock_unlock();
  }
}

- (id)indicatorFileCoordinator
{
  indicatorFileCoordinator = self->_indicatorFileCoordinator;
  if (!indicatorFileCoordinator)
  {
    WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
    v5 = [WeakRetained libraryBundle];
    v6 = [v5 indicatorFileCoordinator];
    v7 = self->_indicatorFileCoordinator;
    self->_indicatorFileCoordinator = v6;

    indicatorFileCoordinator = self->_indicatorFileCoordinator;
  }

  return indicatorFileCoordinator;
}

- (BOOL)_isHighPriorityJob:(id)a3
{
  v3 = [a3 objectForKey:*MEMORY[0x1E69C0410]];
  v4 = ([v3 isEqualToString:*MEMORY[0x1E69C0458]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C0430]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C0420]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C0428]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C0478]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C0490]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C0488]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C0480]) & 1) != 0 || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C0470]);

  return v4;
}

- (id)_newShortLivedLibraryWithName:(const char *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);
  v5 = [WeakRetained databaseContext];
  v6 = [v5 newShortLivedLibraryWithName:a3 libraryRole:2];

  return v6;
}

- (PLImageWriter)initWithLibraryServicesManager:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PLImageWriter;
  v5 = [(PLImageWriter *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_libraryServicesManager, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.photos.backend.imageWriterQueue", v7);
    jobQueue = v6->_jobQueue;
    v6->_jobQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.photos.backend.imageWriterCompletionQueue", v10);
    jobCompletionQueue = v6->_jobCompletionQueue;
    v6->_jobCompletionQueue = v11;

    v6->_jobCountLock = 0;
    *(&v6->_transactionCounter + 4) = 0;
    *&v6->_transactionLock._os_unfair_lock_opaque = 0;
    HIDWORD(v6->_crashRecoveryCounter) = 0;
  }

  return v6;
}

- (PLImageWriter)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"You just got singlestacked" reason:@"Must use an initializer that takes a library services manager" userInfo:0];
  objc_exception_throw(v2);
}

+ (void)setAdjustmentsForNewVideo:(id)a3 mainFileMetadata:(id)a4 withAdjustmentsDictionary:(id)a5 cameraAdjustments:(id)a6 renderedContentPath:(id)a7 renderedPosterFramePreviewPath:(id)a8 finalAssetSize:(CGSize)a9
{
  height = a9.height;
  width = a9.width;
  v40 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_31;
    }

    v25 = *(MEMORY[0x1E695F060] + 8);
    if (*MEMORY[0x1E695F060] == width && v25 == height)
    {
      height = 0.0;
      width = 0.0;
      if ([v16 originalWidth] >= 1)
      {
        width = [v16 originalWidth];
      }

      if ([v16 originalHeight] >= 1)
      {
        height = [v16 originalHeight];
      }
    }

    v23 = [PLPhotoEditExportProperties exportPropertiesWithImageWidth:width imageHeight:height exifOrientation:0 duration:0.0, v25];
    v27 = [PLImageWriter _assetAdjustmentsFromCameraAdjustmentData:v19 cameraMetadata:0 exportProperties:v23 assetType:1 applySemanticEnhance:0 sourceURL:0];
    if (!v27)
    {

      goto LABEL_31;
    }

    v24 = v27;
    v28 = [v16 dateCreated];
    [v24 setAdjustmentTimestamp:v28];

    if (v20)
    {
      v29 = [MEMORY[0x1E696AC08] defaultManager];
      v30 = [v29 fileExistsAtPath:v20];

      if ((v30 & 1) == 0)
      {
        v31 = PLAssetImportGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 138412290;
          v39 = v20;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "setting adjustments but rendered image does not exist at %@", &v38, 0xCu);
        }
      }

      v32 = [MEMORY[0x1E695DFF8] fileURLWithPath:v20 isDirectory:0];
      if (!v21)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v37 = PLAssetImportGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v38) = 0;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "setting adjustments with no filteredImagePath provided", &v38, 2u);
      }

      v32 = 0;
      if (!v21)
      {
        goto LABEL_23;
      }
    }

    v33 = [MEMORY[0x1E695DFF8] fileURLWithPath:v21 isDirectory:0];

    v32 = v33;
LABEL_23:
    v34 = [PLAssetAdjustmentOptions assetAdjustmentOptionsForImageWriterWithEditedRenderURL:v32 async:1 fullSizeRenderSize:v17 mainFileMetadata:width, height];
    [v16 setAdjustments:v24 options:v34];

    if (([v16 setCurrentAdjustmentAsOriginalAdjustment] & 1) == 0)
    {
      v35 = PLAssetImportGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v38) = 0;
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "setting original adjustment for asset failed", &v38, 2u);
      }
    }

    goto LABEL_29;
  }

  v22 = [objc_alloc(MEMORY[0x1E69C0660]) initWithPropertyListDictionary:v18];
  if (!v22)
  {
LABEL_31:
    [v16 setDefaultAdjustmentsIfNecessaryWithMainFileMetadata:v17];
    goto LABEL_32;
  }

  v23 = v22;
  if (v20)
  {
    v24 = [MEMORY[0x1E695DFF8] fileURLWithPath:v20 isDirectory:0];
  }

  else
  {
    v24 = 0;
  }

  v36 = [PLAssetAdjustmentOptions assetAdjustmentOptionsForImageWriterWithEditedRenderURL:v24 async:0 fullSizeRenderSize:v17 mainFileMetadata:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [v16 setAdjustments:v23 options:v36];

  v32 = [v16 dateCreated];
  [v16 setModificationDate:v32];
LABEL_29:

LABEL_32:
}

+ (BOOL)_hasPrimaryAssetAndAdjustmentsFilesWithType:(signed __int16)a3 inIncomingFilenames:(id)a4 forAssetUUID:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if (!v8)
  {
    v23 = 0;
    goto LABEL_29;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v9)
  {
    v23 = 0;
    goto LABEL_28;
  }

  v10 = v9;
  v25 = v7;
  v11 = 0;
  v12 = 0;
  v13 = *v29;
  v26 = *MEMORY[0x1E69C00B8];
LABEL_4:
  v14 = 0;
  while (1)
  {
    if (*v29 != v13)
    {
      objc_enumerationMutation(obj);
    }

    v15 = *(*(&v28 + 1) + 8 * v14);
    v16 = [a1 _assetUUIDFromIncomingFilename:v15];
    v17 = [v16 isEqualToString:v8];

    if (v17)
    {
      break;
    }

LABEL_13:
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_15:
    if (v10 == ++v14)
    {
      v22 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      v10 = v22;
      if (!v22)
      {
        v23 = 0;
        goto LABEL_25;
      }

      goto LABEL_4;
    }
  }

  if (v11)
  {
    v18 = 0;
  }

  else
  {
    v19 = [v15 pathExtension];
    v18 = [v19 isEqualToString:v26];
  }

  if ((v12 | v18))
  {
    v11 |= v18;
    goto LABEL_13;
  }

  v20 = [v15 pathExtension];
  v21 = [v15 stringByDeletingPathExtension];
  if ([v21 hasSuffix:v8])
  {
    v12 = [PLPhotoLibrary isImageFileExtension:v20];
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_14:
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  v23 = 1;
LABEL_25:
  v7 = v25;
LABEL_28:

LABEL_29:
  return v23;
}

+ (id)_assetUUIDFromIncomingFilename:(id)a3
{
  v3 = [a3 componentsSeparatedByString:*MEMORY[0x1E69C00D8]];
  if ([v3 count] == 2)
  {
    v4 = [v3 objectAtIndex:1];
    v5 = [v4 componentsSeparatedByString:@"."];
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)photoIrisPairingDidSucceed:(BOOL)a3 fileIndicatorPath:(id)a4 photoAsset:(id)a5 photoLibrary:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PLImageWriter.m" lineNumber:2684 description:@"expect photo indicator file"];
  }

  if (PLDoesIndicatorFileExistAtPath())
  {
    if (v11 && !v12)
    {
      v14 = _uuidFromPhotoIrisIndicatorFilePath(v11);
      if (v14)
      {
        v15 = [v13 managedObjectContext];
        v12 = [PLImageWriter _fetchPhotoAssetForUUID:v14 moc:v15];
      }

      else
      {
        v12 = 0;
      }
    }

    if (v12)
    {
      if (!a3 && [v12 kindSubtype] == 2)
      {
        v17 = PLAssetImportGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v12 uuid];
          v21 = 138412290;
          v22 = v18;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "photo asset %@ got no video, demoting subtype", &v21, 0xCu);
        }

        [v12 setKindSubtype:0];
        if ([v12 hasAdjustments] && !objc_msgSend(v12, "deferredProcessingNeeded"))
        {
          [v12 setDeferredProcessingNeeded:2];
          [PLImageWriter _signalBackgroundProcessingNeededForAsset:v12 reason:@"live photo demote"];
        }
      }
    }

    else
    {
      v19 = PLAssetImportGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v11;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "unable to locate photo asset from indicator file %@", &v21, 0xCu);
      }
    }

    PLMakeIndicatorFileExistAtPath();
  }

  else
  {
    v16 = PLAssetImportGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v21 = 138412290;
      v22 = v11;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "ignoring pairing operation for indicator file %@", &v21, 0xCu);
    }
  }
}

+ (id)_pathsByAssetUUIDFromIncomingCrashRecoveryPaths:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = objc_opt_class();
        v11 = [v9 lastPathComponent];
        v12 = [v10 _assetUUIDFromIncomingFilename:v11];

        v13 = PLAssetImportGetLog();
        v14 = v13;
        if (!v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v29 = "+[PLImageWriter _pathsByAssetUUIDFromIncomingCrashRecoveryPaths:]";
            v30 = 2114;
            v31 = v9;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s Malformed path, ignoring %{public}@", buf, 0x16u);
          }

          goto LABEL_18;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v29 = "+[PLImageWriter _pathsByAssetUUIDFromIncomingCrashRecoveryPaths:]";
          v30 = 2114;
          v31 = v12;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "%{public}s: assetUUID %{public}@", buf, 0x16u);
        }

        v15 = [v4 objectForKeyedSubscript:v12];

        if (v15)
        {
          v16 = PLAssetImportGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v4 objectForKeyedSubscript:v12];
            *buf = 136446978;
            v29 = "+[PLImageWriter _pathsByAssetUUIDFromIncomingCrashRecoveryPaths:]";
            v30 = 2114;
            v31 = v12;
            v32 = 2114;
            v33 = v17;
            v34 = 2114;
            v35 = v9;
            _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s Redundant render/adjustment file associated with asset %{public}@: previously found %{public}@, removing %{public}@", buf, 0x2Au);
          }

          v18 = [MEMORY[0x1E696AC08] defaultManager];
          v23 = 0;
          v19 = [v18 removeItemAtPath:v9 error:&v23];
          v14 = v23;

          if ((v19 & 1) == 0)
          {
            v20 = PLAssetImportGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v29 = v12;
              v30 = 2112;
              v31 = v14;
              _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to remove asset crash recovery resource path for asset:%{public}@ %@", buf, 0x16u);
            }
          }

LABEL_18:

          goto LABEL_20;
        }

        [v4 setObject:v9 forKeyedSubscript:v12];
LABEL_20:
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)_fetchPhotoAssetForUUID:(id)a3 moc:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695D5E0];
  v7 = a4;
  v8 = +[PLManagedAsset entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid = %@ AND noindex:(kind) = %d", v5, 0];
  [v9 setPredicate:v10];

  [v9 setFetchLimit:1];
  v16 = 0;
  v11 = [v7 executeFetchRequest:v9 error:&v16];

  v12 = v16;
  if (!v11)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = v5;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to fetchPhotoAssetForUUID:%{public}@ %@", buf, 0x16u);
    }
  }

  v14 = [v11 firstObject];

  return v14;
}

+ (BOOL)setAdjustmentsForNewPhoto:(id)a3 mainFileMetadata:(id)a4 cameraAdjustmentData:(id)a5 adjustmentDataPath:(id)a6 filteredImagePath:(id)a7 cameraMetadata:(id)a8 finalAssetSize:(CGSize)a9 isSubstandardRender:(BOOL)a10
{
  height = a9.height;
  width = a9.width;
  v48 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  if (!(v20 | v21))
  {
    v29 = 0;
    goto LABEL_38;
  }

  v24 = objc_autoreleasePoolPush();
  v25 = *MEMORY[0x1E695F060];
  v26 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] == width && v26 == height)
  {
    height = 0.0;
    width = 0.0;
    if ([v18 originalWidth] >= 1)
    {
      width = [v18 originalWidth];
    }

    if ([v18 originalHeight] >= 1)
    {
      height = [v18 originalHeight];
    }
  }

  v28 = [v18 orientation];
  if (v18)
  {
    [v18 photoIrisVideoDuration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v30 = [PLPhotoEditExportProperties exportPropertiesWithImageWidth:width imageHeight:height exifOrientation:v28 duration:CMTimeGetSeconds(&time)];
  if (v20)
  {
    v31 = [a1 _assetAdjustmentsFromCameraAdjustmentData:v20 cameraMetadata:v23 exportProperties:v30 assetType:0 applySemanticEnhance:0 sourceURL:0];
    if (!v21)
    {
      goto LABEL_21;
    }

LABEL_19:
    if (!v31)
    {
      v31 = [a1 assetAdjustmentsFromCameraAdjustmentsFileAtPath:v21 exportProperties:v30 cameraMetadata:v23];
    }

    goto LABEL_21;
  }

  v31 = 0;
  if (v21)
  {
    goto LABEL_19;
  }

LABEL_21:
  v29 = v31 != 0;
  if (v31)
  {
    v44 = v30;
    v45 = v24;
    v32 = [v18 dateCreated];
    [v31 setAdjustmentTimestamp:v32];

    v46 = v23;
    if (v22)
    {
      v33 = v19;
      v34 = [MEMORY[0x1E696AC08] defaultManager];
      v35 = [v34 fileExistsAtPath:v22];

      if ((v35 & 1) == 0)
      {
        v36 = PLAssetImportGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(time.value) = 138412290;
          *(&time.value + 4) = v22;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "setting adjustments but rendered image does not exist at %@", &time, 0xCu);
        }
      }

      v37 = [MEMORY[0x1E695DFF8] fileURLWithPath:v22 isDirectory:0];
      v19 = v33;
    }

    else
    {
      v38 = PLAssetImportGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(time.value) = 0;
        _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "setting adjustments with no filteredImagePath provided", &time, 2u);
      }

      v37 = 0;
    }

    v39 = v19;
    v40 = [PLAssetAdjustmentOptions assetAdjustmentOptionsForImageWriterWithEditedRenderURL:v37 async:a10 fullSizeRenderSize:v19 mainFileMetadata:width, height];
    [v18 setAdjustments:v31 options:v40];

    if (a10 && ([v18 setCurrentAdjustmentAsOriginalAdjustment] & 1) == 0)
    {
      v41 = PLAssetImportGetLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(time.value) = 0;
        _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_DEFAULT, "setting original adjustment for asset failed", &time, 2u);
      }
    }

    v42 = [v18 dateCreated];
    [v18 setModificationDate:v42];

    v19 = v39;
    v24 = v45;
    v23 = v46;
    v30 = v44;
  }

  objc_autoreleasePoolPop(v24);
LABEL_38:

  return v29;
}

+ (id)_assetAdjustmentsFromCameraAdjustmentData:(id)a3 cameraMetadata:(id)a4 exportProperties:(id)a5 assetType:(signed __int16)a6 applySemanticEnhance:(BOOL)a7 sourceURL:(id)a8
{
  v9 = a7;
  v10 = a6;
  v34 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  if (v14)
  {
    v29 = 0;
    v18 = [MEMORY[0x1E69C0670] deserializedAdjustmentsFromData:v14 error:&v29];
    v19 = v29;
    v20 = v19;
    if (v18)
    {
      v21 = 1;
    }

    else
    {
      v21 = v19 == 0;
    }

    v22 = v21;
    if (!v21)
    {
      v28 = v10;
      v23 = PLAssetImportGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v14 length];
        *buf = 134218242;
        v31 = v24;
        v32 = 2112;
        v33 = v20;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "Error deserializing camera adjustments data (length=%lu): %@", buf, 0x16u);
      }

      v10 = v28;
    }

    if (v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = 0;
    v22 = 1;
    if (v9)
    {
LABEL_13:
      v25 = [PLCompositionHelper wantsSemanticEnhanceForCameraMetadata:v15];
      goto LABEL_16;
    }
  }

  v25 = 0;
LABEL_16:
  if ((v22 & (v18 != 0 || v25)) == 1)
  {
    v26 = [a1 _assetAdjustmentsFromCameraAdjustments:v18 cameraMetadata:v15 exportProperties:v16 assetType:v10 applySemanticEnhance:v9 sourceURL:v17];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (id)_assetAdjustmentsFromCameraAdjustments:(id)a3 cameraMetadata:(id)a4 exportProperties:(id)a5 assetType:(signed __int16)a6 applySemanticEnhance:(BOOL)a7 sourceURL:(id)a8
{
  v9 = a7;
  v10 = a6;
  v66 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  if (v9)
  {
    v9 = [PLCompositionHelper wantsSemanticEnhanceForCameraMetadata:v15];
  }

  if (!v14 && !v9)
  {
    v18 = 0;
    goto LABEL_45;
  }

  v53 = a1;
  v52 = [v14 effectFilterName];
  v19 = [v14 portraitEffectFilterName];
  v20 = [v14 portraitMetadata];
  v21 = [v14 isDepthEnabled];
  v22 = +[PLCompositionHelper newIdentityCompositionController];
  v23 = v22;
  if (v10 == 1)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  [v22 setMediaType:v24];
  v25 = [v23 adjustmentConstants];
  v26 = v20;
  v27 = v25;
  v54 = v19;
  if (v19)
  {
    v28 = 1;
  }

  else
  {
    v28 = v21;
  }

  v51 = v26;
  if (v28 == 1 && v26)
  {
    [PLPhotoEditRenderer updateCompositionController:v23 fromPortraitMetadata:?];
    if (v21)
    {
      v29 = [v23 depthAdjustmentController];
      v30 = [v29 depthInfo];
      v31 = [v30 count];

      if (v31)
      {
        v32 = [v27 PIDepthAdjustmentKey];
        [v23 modifyAdjustmentWithKey:v32 modificationBlock:&__block_literal_global_257];
      }
    }

    if (!v54)
    {
      goto LABEL_31;
    }

    v33 = [v23 portraitAdjustmentController];
    v34 = [v33 portraitInfo];
    v35 = [v34 count];

    if (!v35)
    {
      goto LABEL_31;
    }

    v36 = [PLPhotoEffect effectWithCIFilterName:v54];
    if (v36)
    {
      v37 = [v27 PIPortraitAdjustmentKey];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __129__PLImageWriter__assetAdjustmentsFromCameraAdjustments_cameraMetadata_exportProperties_assetType_applySemanticEnhance_sourceURL___block_invoke_2;
      v62[3] = &unk_1E756AA40;
      v63 = v36;
      [v23 modifyAdjustmentWithKey:v37 modificationBlock:v62];

      v38 = v63;
    }

    else
    {
      v38 = PLAssetImportGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v65 = v54;
        _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "Failed to create photo effect for %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v39 = v21 ^ 1;
    if (v10 != 1)
    {
      v39 = 1;
    }

    if (v39)
    {
      goto LABEL_31;
    }

    v40 = [v25 PIPortraitVideoAdjustmentKey];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __129__PLImageWriter__assetAdjustmentsFromCameraAdjustments_cameraMetadata_exportProperties_assetType_applySemanticEnhance_sourceURL___block_invoke_260;
    v60[3] = &unk_1E7565B88;
    v41 = v14;
    v61 = v41;
    [v23 modifyAdjustmentWithKey:v40 modificationBlock:v60];

    if ([v41 isEligibleForCinematicAudioEffectProcessing])
    {
      v42 = [v27 PICinematicAudioAdjustmentKey];
      [v23 modifyAdjustmentWithKey:v42 modificationBlock:&__block_literal_global_265];
    }

    v36 = v61;
  }

LABEL_31:
  if (v52)
  {
    v43 = [PLPhotoEffect effectWithCIFilterName:v52];
    v44 = v43;
    if (v43)
    {
      +[PLCompositionHelper compositionController:setEffectFilterName:version:](PLCompositionHelper, "compositionController:setEffectFilterName:version:", v23, v52, [v43 latestVersion]);
    }

    else
    {
      v45 = PLAssetImportGetLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v65 = v52;
        _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, "Failed to create photo effect for %@", buf, 0xCu);
      }
    }
  }

  if ([v14 hasCrop])
  {
    v46 = [v27 PICropAdjustmentKey];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __129__PLImageWriter__assetAdjustmentsFromCameraAdjustments_cameraMetadata_exportProperties_assetType_applySemanticEnhance_sourceURL___block_invoke_266;
    v57[3] = &unk_1E7565BD0;
    v58 = v14;
    v59 = v16;
    [v23 modifyAdjustmentWithKey:v46 modificationBlock:v57];
  }

  if (v9)
  {
    [PLCompositionHelper compositionController:v23 updateSemanticEnhanceFromCameraMetadata:v15 exportProperties:v16];
  }

  if ([v14 isSloMoEnabled])
  {
    v47 = [MEMORY[0x1E6987E28] assetWithURL:v17];
    v48 = [v27 PISlomoAdjustmentKey];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __129__PLImageWriter__assetAdjustmentsFromCameraAdjustments_cameraMetadata_exportProperties_assetType_applySemanticEnhance_sourceURL___block_invoke_2_268;
    v55[3] = &unk_1E7565BF8;
    v56 = v47;
    v49 = v47;
    [v23 modifyAdjustmentWithKey:v48 modificationBlock:v55];
  }

  v18 = [v53 assetAdjustmentsFromCompositionController:v23 exportProperties:v16];

LABEL_45:

  return v18;
}

void __129__PLImageWriter__assetAdjustmentsFromCameraAdjustments_cameraMetadata_exportProperties_assetType_applySemanticEnhance_sourceURL___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setEnabled:1];
  v3 = [*(a1 + 32) filterIdentifier];
  [v4 setKind:v3];

  [v4 setVersion:{objc_msgSend(*(a1 + 32), "latestVersion")}];
}

void __129__PLImageWriter__assetAdjustmentsFromCameraAdjustments_cameraMetadata_exportProperties_assetType_applySemanticEnhance_sourceURL___block_invoke_260(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEnabled:1];
  [v3 setRenderingVersionAtCapture:{objc_msgSend(*(a1 + 32), "cinematicVideoRenderingVersion")}];
}

void __129__PLImageWriter__assetAdjustmentsFromCameraAdjustments_cameraMetadata_exportProperties_assetType_applySemanticEnhance_sourceURL___block_invoke_266(uint64_t a1, void *a2)
{
  v9 = a2;
  [*(a1 + 32) cropRect];
  [v9 setCropRect:?];
  [v9 setEnabled:1];
  v3 = [*(a1 + 40) imageHeight];
  v4 = [*(a1 + 40) imageWidth];
  v5 = 9;
  if (v4 <= v3)
  {
    v6 = 9;
  }

  else
  {
    v6 = 16;
  }

  if (v4 <= v3)
  {
    v5 = 16;
  }

  if (v3 == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v3 == v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  [v9 setConstraintWidth:v7];
  [v9 setConstraintHeight:v8];
}

void __129__PLImageWriter__assetAdjustmentsFromCameraAdjustments_cameraMetadata_exportProperties_assetType_applySemanticEnhance_sourceURL___block_invoke_2_268(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C0910];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 defaultSlowMotionAdjustmentsForAsset:v3];
  v6 = v5;
  memset(&v10, 0, sizeof(v10));
  if (v5)
  {
    [v5 slowMotionTimeRange];
  }

  *&v8.start.value = *&v10.start.value;
  v8.start.epoch = v10.start.epoch;
  [v4 setStartTime:&v8];
  v8 = v10;
  CMTimeRangeGetEnd(&v9, &v8);
  v8.start = v9;
  [v4 setEndTime:&v8];
  [v6 slowMotionRate];
  [v4 setRate:v7];
}

void __129__PLImageWriter__assetAdjustmentsFromCameraAdjustments_cameraMetadata_exportProperties_assetType_applySemanticEnhance_sourceURL___block_invoke_2_262(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setRenderingStyleToDefaultForPortraitVideo];
  [v2 setEnabled:1];
}

+ (id)assetAdjustmentsFromCameraAdjustmentsFileAtPath:(id)a3 exportProperties:(id)a4 cameraMetadata:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v8];
  v27 = 0;
  v12 = [MEMORY[0x1E69C0670] deserializedAdjustmentsFromData:v11 error:&v27];
  v13 = v27;
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v8];
    if (v14)
    {
      v22 = v9;
      v23 = v10;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      v15 = [MEMORY[0x1E69C0670] deserializeDictionary:v14 toFilters:&v26 portraitMetadata:&v25 error:&v24];
      v16 = v26;
      v17 = v25;
      v18 = v24;
      if (v15)
      {
        v9 = v22;
        v19 = [a1 assetAdjustmentsFromCameraFilters:v16 portraitMetadata:v17 exportProperties:v22 cameraMetadata:v23];
      }

      else
      {
        v20 = PLAssetImportGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v29 = v8;
          v30 = 2112;
          v31 = v18;
          _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Error deserializing camera adjustments dictionary at path %@: %@", buf, 0x16u);
        }

        v19 = 0;
        v9 = v22;
      }

      v10 = v23;
    }

    else
    {
      v16 = PLAssetImportGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v8;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Could not read camera adjustments dictionary from path %@", buf, 0xCu);
      }

      v19 = 0;
    }
  }

  else
  {
    v19 = [a1 assetAdjustmentsFromCameraAdjustments:v12 cameraMetadata:v10 exportProperties:v9];
  }

  return v19;
}

+ (id)assetAdjustmentsFromCameraFilters:(id)a3 portraitMetadata:(id)a4 exportProperties:(id)a5 cameraMetadata:(id)a6
{
  v10 = MEMORY[0x1E69C0730];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(v10);
  [v15 setPortraitMetadata:v13];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__PLImageWriter_assetAdjustmentsFromCameraFilters_portraitMetadata_exportProperties_cameraMetadata___block_invoke;
  v19[3] = &unk_1E7565B60;
  v20 = v15;
  v16 = v15;
  [v14 enumerateObjectsUsingBlock:v19];

  v17 = [a1 assetAdjustmentsFromCameraAdjustments:v16 cameraMetadata:v11 exportProperties:v12];

  return v17;
}

void __100__PLImageWriter_assetAdjustmentsFromCameraFilters_portraitMetadata_exportProperties_cameraMetadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  if ([v3 isEqualToString:@"CIDepthEffect"])
  {
    [*(a1 + 32) setDepthEnabled:1];
  }

  else if ([v3 hasPrefix:@"CIPhotoEffect"])
  {
    [*(a1 + 32) setEffectFilterName:v3];
  }

  else if ([v3 hasPrefix:@"CIPortraitEffect"])
  {
    [*(a1 + 32) setPortraitEffectFilterName:v3];
  }
}

+ (id)assetAdjustmentsFromCompositionController:(id)a3 exportProperties:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PLPhotoEditPersistenceManager);
  v17 = 0;
  v18 = 0;
  v8 = [(PLPhotoEditPersistenceManager *)v7 dataFromCompositionController:v6 outFormatIdentifier:&v18 outFormatVersion:&v17 exportProperties:v5];

  v9 = v18;
  v10 = v17;
  v11 = [v6 adjustmentConstants];
  v12 = [v11 PISemanticEnhanceAdjustmentKey];
  v13 = [v6 adjustmentControllerForKey:v12];

  if (v13)
  {
    v14 = 24640;
  }

  else
  {
    v14 = 24576;
  }

  v15 = [objc_alloc(MEMORY[0x1E69C0660]) initWithFormatIdentifier:v9 formatVersion:v10 data:v8 baseVersion:0 editorBundleID:@"com.apple.camera" renderTypes:v14];

  return v15;
}

+ (id)cameraMetadataURLForPrimaryAssetURL:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = [a4 pathManager];
  v7 = [v6 privateDirectoryWithSubType:9 createIfNeeded:1 error:0];

  v8 = [v5 path];

  v9 = [v8 lastPathComponent];
  v10 = [v9 stringByDeletingPathExtension];
  v11 = [v10 stringByAppendingPathExtension:*MEMORY[0x1E69C00C0]];

  v12 = MEMORY[0x1E695DFF8];
  v13 = [v7 stringByAppendingPathComponent:v11];
  v14 = [v12 fileURLWithPath:v13];

  return v14;
}

+ (id)semanticEnhancePreviewDestinationURLForPrimaryAssetURL:(id)a3
{
  v3 = a3;
  v4 = [v3 pathExtension];
  v5 = [v3 path];

  v6 = [v5 stringByDeletingPathExtension];
  v7 = [v6 stringByAppendingString:*MEMORY[0x1E69BFF98]];
  v8 = [v7 stringByAppendingPathExtension:v4];

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:0];

  return v9;
}

+ (id)finalizedAssetURLForDeferredPhotoPreviewURL:(id)a3 extension:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 isDeferredPhotoPreviewURL:v6])
  {
    v8 = [v6 lastPathComponent];
    v9 = [v8 stringByDeletingPathExtension];
    v10 = [v9 length];
    v11 = [v9 substringToIndex:{v10 - objc_msgSend(*MEMORY[0x1E69BFCF0], "length")}];
    v12 = v11;
    if (v7)
    {
      v13 = [v11 stringByAppendingPathExtension:v7];
    }

    else
    {
      v15 = [v8 pathExtension];
      v13 = [v12 stringByAppendingPathExtension:v15];
    }

    v16 = [v6 URLByDeletingLastPathComponent];
    v14 = [v16 URLByAppendingPathComponent:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)isDeferredPhotoPreviewURL:(id)a3
{
  v3 = [a3 lastPathComponent];
  v4 = [v3 stringByDeletingPathExtension];
  if ([v4 hasPrefix:@"IMG_"])
  {
    if ([v4 hasSuffix:*MEMORY[0x1E69BFCF0]])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 hasSuffix:*MEMORY[0x1E69BFF98]];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isSpatialOverCaptureURL:(id)a3
{
  v3 = a3;
  v4 = [v3 lastPathComponent];
  v5 = [v4 stringByDeletingPathExtension];
  if ([v5 hasPrefix:@"IMG_"])
  {
    v6 = [v5 hasSuffix:*MEMORY[0x1E69BFFB0]];
  }

  else
  {
    v7 = [MEMORY[0x1E69BF298] uuidFromURL:v3];
    if (v7)
    {
      v6 = [v5 hasSuffix:*MEMORY[0x1E69BFFB0]];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (void)_signalBackgroundProcessingNeededForAsset:(id)a3 reason:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 photoLibrary];
  v8 = [(__CFString *)v7 libraryServicesManager];
  v9 = [v8 backgroundJobService];
  v10 = PLAssetImportGetLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 deferredProcessingNeeded];
      if (v12 > 0xA)
      {
        v13 = 0;
      }

      else
      {
        v13 = off_1E7567B18[v12];
      }

      v15 = v13;
      v16 = [v5 uuidDescription];
      v17 = 138543874;
      v18 = v15;
      v19 = 2114;
      v20 = v16;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "ImageWriter signaling %{public}@ background processing needed for %{public}@, due to %{public}@", &v17, 0x20u);
    }

    [v9 startWatchdogTimerIfNeededWithSourceDescription:@"ImageWriter"];
    v11 = [v5 photoLibrary];
    v14 = +[PLBackgroundJobWorkerTypes typesMaskForDeferredProcessingNeeded:videoDeferredProcessingNeeded:](PLBackgroundJobWorkerTypes, "typesMaskForDeferredProcessingNeeded:videoDeferredProcessingNeeded:", [v5 deferredProcessingNeeded], objc_msgSend(v5, "videoDeferredProcessingNeeded"));
    [v9 signalBackgroundProcessingNeededOnLibrary:v11 workerTypes:v14];
    goto LABEL_10;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v14 = [v5 uuidDescription];
    v17 = 138544386;
    v18 = v6;
    v19 = 2114;
    v20 = v14;
    v21 = 2048;
    v22 = v7;
    v23 = 2048;
    v24 = v8;
    v25 = 2048;
    v26 = 0;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_FAULT, "ImageWriter is unable to signal background processing for %{public}@: asset: %{public}@, photoLibrary: %p, libraryServicesManager: %p, backgroundJobService: %p", &v17, 0x34u);
LABEL_10:
  }
}

+ (BOOL)_requiresIndicatorFileForJobType:(id)a3
{
  v3 = a3;
  v4 = ([v3 isEqualToString:*MEMORY[0x1E69C0440]] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C0498]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C0450]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C0418]) & 1) == 0 && !objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C0448]);

  return v4;
}

@end