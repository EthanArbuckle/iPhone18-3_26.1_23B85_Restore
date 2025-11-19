@interface PLAssetsSaver
+ (id)createWriteImageCompletionBlockWithImage:(id)a3 target:(id)a4 selector:(SEL)a5 contextInfo:(void *)a6;
+ (id)createWriteVideoCompletionBlockWithVideoPath:(id)a3 target:(id)a4 selector:(SEL)a5 contextInfo:(void *)a6;
+ (id)publicAssetsLibraryErrorFromPrivateDomain:(id)a3 withPrivateCode:(int64_t)a4;
+ (id)publicAssetsLibraryErrorFromPrivateError:(id)a3;
+ (id)sharedAssetsSaver;
- (PLAssetsSaver)init;
- (id)_assetsdClientForJobDictionary:(id)a3;
- (id)_saveIsolationQueue;
- (id)requestSynchronousImageForAssetOID:(id)a3 withFormat:(int)a4 allowPlaceholder:(BOOL)a5 wantURLOnly:(BOOL)a6 networkAccessAllowed:(BOOL)a7 trackCPLDownload:(BOOL)a8 outImageDataInfo:(id *)a9 outCPLDownloadContext:(id *)a10;
- (id)saveCameraImage:(id)a3 metadata:(id)a4 additionalProperties:(id)a5 diagnostics:(id)a6 previouslyPendingAsset:(id)a7 requestEnqueuedBlock:(id)a8;
- (id)validateAvalanches:(id)a3 inLibraryWithURL:(id)a4;
- (void)_queueJobDictionary:(id)a3 asset:(id)a4 requestEnqueuedBlock:(id)a5 completionBlock:(id)a6 imageSurface:(__IOSurface *)a7;
- (void)_saveImage:(id)a3 imageData:(id)a4 properties:(id)a5 completionBlock:(id)a6;
- (void)_saveVideoAtPath:(id)a3 properties:(id)a4 completionBlock:(id)a5;
- (void)dealloc;
- (void)deletePhotoStreamData;
- (void)queuePhotoStreamJobDictionary:(id)a3;
- (void)requestAsynchronousImageForAssetOID:(id)a3 withFormat:(int)a4 allowPlaceholder:(BOOL)a5 wantURLOnly:(BOOL)a6 networkAccessAllowed:(BOOL)a7 trackCPLDownload:(BOOL)a8 completionBlock:(id)a9;
- (void)saveImageRef:(CGImage *)a3 orientation:(int64_t)a4 imageData:(id)a5 properties:(id)a6 completionBlock:(id)a7;
- (void)saveSyncedAssets:(id)a3 completionBlock:(id)a4;
@end

@implementation PLAssetsSaver

- (void)saveSyncedAssets:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  [v8 setObject:*MEMORY[0x1E69C0460] forKey:*MEMORY[0x1E69C0410]];
  if (v6)
  {
    [v8 setObject:v6 forKey:@"SyncClientJobsData"];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__PLAssetsSaver_saveSyncedAssets_completionBlock___block_invoke;
  v10[3] = &unk_1E7565F40;
  v11 = v7;
  v9 = v7;
  [(PLAssetsSaver *)self _queueJobDictionary:v8 completionBlock:v10];
}

- (id)validateAvalanches:(id)a3 inLibraryWithURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5896;
  v18 = __Block_byref_object_dispose__5897;
  v19 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = dispatch_get_global_queue(0, 0);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  pl_dispatch_async();

  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __53__PLAssetsSaver_validateAvalanches_inLibraryWithURL___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  [v2 setObject:*MEMORY[0x1E69C0428] forKey:*MEMORY[0x1E69C0410]];
  [v2 setObject:*(a1 + 32) forKey:*MEMORY[0x1E69C0340]];
  [v2 setObject:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E69C0550]];
  v3 = *(a1 + 40);
  if (v3)
  {
    [v2 setObject:v3 forKey:*MEMORY[0x1E69C0568]];
  }

  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PLAssetsSaver_validateAvalanches_inLibraryWithURL___block_invoke_2;
  v7[3] = &unk_1E7565F10;
  v6 = *(a1 + 56);
  v5 = v6;
  v8 = v6;
  [v4 _queueJobDictionary:v2 completionBlock:v7];
}

void __53__PLAssetsSaver_validateAvalanches_inLibraryWithURL___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && ([v7 objectForKeyedSubscript:@"avalancheStackAssetMap"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
  {
    v12 = PLCameraConnectionKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412802;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "job: %@, URL: %@, error: %@", &v17, 0x20u);
    }

    v13 = [v7 objectForKeyedSubscript:@"avalancheStackAssetMap"];
    v14 = [v13 allValues];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    v13 = PLCameraConnectionKitGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Error validating bursts: %@", &v17, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)deletePhotoStreamData
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:*MEMORY[0x1E69C0448] forKey:*MEMORY[0x1E69C0410]];
  [(PLAssetsSaver *)self queuePhotoStreamJobDictionary:v3];
}

- (void)saveImageRef:(CGImage *)a3 orientation:(int64_t)a4 imageData:(id)a5 properties:(id)a6 completionBlock:(id)a7
{
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v13 = DCIM_newPLImageWithCGImage();
  [(PLAssetsSaver *)self _saveImage:v13 imageData:v12 properties:v11 completionBlock:v10];
}

- (void)_saveVideoAtPath:(id)a3 properties:(id)a4 completionBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLAssetsSaver.m" lineNumber:662 description:{@"Invalid parameter not satisfying: %@", @"videoPath"}];
  }

  v12 = [v11 copy];
  v13 = [MEMORY[0x1E69BF2B0] sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__PLAssetsSaver__saveVideoAtPath_properties_completionBlock___block_invoke;
  v18[3] = &unk_1E7565EE8;
  v19 = v10;
  v20 = v9;
  v21 = self;
  v22 = v12;
  v14 = v12;
  v15 = v9;
  v16 = v10;
  [v13 checkPhotosAccessAllowedWithScope:1 handler:v18];
}

void __61__PLAssetsSaver__saveVideoAtPath_properties_completionBlock___block_invoke(uint64_t a1)
{
  if (PLPhotosAccessAllowed())
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v3 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0608]];
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x1E695E110];
    }

    v35 = v4;
    [v2 setObject:? forKey:?];
    [v2 setObject:*MEMORY[0x1E69C0488] forKey:*MEMORY[0x1E69C0410]];
    v5 = *(a1 + 40);
    if (!v5)
    {
      goto LABEL_13;
    }

    [v2 setObject:v5 forKey:*MEMORY[0x1E69C05A0]];
    v6 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C02A0]];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [*(a1 + 40) pathExtension];
      if (!v8)
      {
LABEL_12:

LABEL_13:
        v11 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [v2 setObject:v11 forKey:*MEMORY[0x1E69C02F8]];

        v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [v2 setObject:v12 forKey:*MEMORY[0x1E69C0580]];

        v13 = objc_alloc(MEMORY[0x1E69C0718]);
        v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(a1 + 40)];
        v15 = [*(a1 + 48) _photoLibrary];
        v16 = [v15 libraryBundle];
        v17 = [v16 timeZoneLookup];
        v18 = [v13 initWithAVURL:v14 options:12 timeZoneLookup:v17];

        v34 = v18;
        v19 = [v18 utcCreationDate];
        if (!v19)
        {
          v19 = [MEMORY[0x1E695DF00] date];
        }

        [v2 setObject:v19 forKey:*MEMORY[0x1E69C0398]];
        v20 = [MEMORY[0x1E696AD98] numberWithBool:0];
        [v2 setObject:v20 forKey:*MEMORY[0x1E69C0550]];

        v21 = *MEMORY[0x1E69C0320];
        v22 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0320]];
        if (v22)
        {
          [v2 setObject:v22 forKey:v21];
        }

        v23 = *MEMORY[0x1E69C0318];
        v24 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0318]];
        if (v24)
        {
          [v2 setObject:v24 forKey:v23];
        }

        v25 = [*(a1 + 32) objectForKey:@"ImportedBy"];
        if (v25)
        {
          [v2 setObject:v25 forKey:@"ImportedBy"];
        }

        v26 = *MEMORY[0x1E69C03B8];
        v27 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C03B8]];
        if (v27)
        {
          [v2 setObject:v27 forKey:v26];
        }

        v28 = *MEMORY[0x1E69C04B0];
        v29 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C04B0]];
        if (v29)
        {
          [v2 setObject:v29 forKey:v28];
        }

        v30 = *MEMORY[0x1E69C0390];
        v31 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0390]];
        if (v31)
        {
          [v2 setObject:v31 forKey:v30];
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __61__PLAssetsSaver__saveVideoAtPath_properties_completionBlock___block_invoke_2;
        aBlock[3] = &unk_1E7565E98;
        v32 = *(a1 + 56);
        aBlock[4] = *(a1 + 48);
        v38 = v32;
        v33 = _Block_copy(aBlock);
        [*(a1 + 48) _queueJobDictionary:v2 completionBlock:v33];

        v10 = v35;
        goto LABEL_28;
      }
    }

    [v2 setObject:v8 forKey:*MEMORY[0x1E69C03D0]];

    goto LABEL_12;
  }

  v2 = [objc_opt_class() publicAssetsLibraryErrorFromPrivateDomain:*MEMORY[0x1E69BFF48] withPrivateCode:-3001];
  v9 = *(a1 + 56);
  if (v9)
  {
    v36 = v9;
    v2 = v2;
    pl_dispatch_async();

    v10 = v36;
LABEL_28:
  }
}

void __61__PLAssetsSaver__saveVideoAtPath_properties_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [objc_opt_class() publicAssetsLibraryErrorFromPrivateError:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v7, v9);
  }
}

- (void)_saveImage:(id)a3 imageData:(id)a4 properties:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a6 copy];
  v14 = [MEMORY[0x1E69BF2B0] sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__PLAssetsSaver__saveImage_imageData_properties_completionBlock___block_invoke;
  v19[3] = &unk_1E7565EC0;
  v20 = v12;
  v21 = v11;
  v22 = v10;
  v23 = self;
  v24 = v13;
  v15 = v13;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  [v14 checkPhotosAccessAllowedWithScope:1 handler:v19];
}

void __65__PLAssetsSaver__saveImage_imageData_properties_completionBlock___block_invoke(uint64_t a1)
{
  if (PLPhotosAccessAllowed())
  {
    v2 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C02B0]];
    v3 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C02A0]];
    v47 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C02A8]];
    v38 = *MEMORY[0x1E69C0320];
    v4 = [*(a1 + 32) objectForKey:?];
    v39 = *MEMORY[0x1E69C0318];
    v44 = [*(a1 + 32) objectForKey:?];
    v5 = *MEMORY[0x1E69C03B8];
    v46 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C03B8]];
    v36 = *MEMORY[0x1E69C04B0];
    v43 = [*(a1 + 32) objectForKey:?];
    v37 = *MEMORY[0x1E69C0380];
    v42 = [*(a1 + 32) objectForKey:?];
    v6 = *MEMORY[0x1E69C0390];
    v45 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0390]];
    v35 = *MEMORY[0x1E69C0398];
    v41 = [*(a1 + 32) objectForKey:?];
    v7 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0608]];
    v8 = [*(a1 + 32) objectForKey:@"ImportedBy"];
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = v9;
    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = MEMORY[0x1E695E110];
    }

    v12 = v4;
    v40 = v11;
    [v9 setObject:? forKey:?];
    if (!v8)
    {
LABEL_15:
      [v10 setObject:*MEMORY[0x1E69C0458] forKey:*MEMORY[0x1E69C0410]];
      v17 = *(a1 + 40);
      if (v17)
      {
        [v10 setObject:v17 forKey:*MEMORY[0x1E69C03F8]];
        v18 = v47;
      }

      else
      {
        v19 = v46;
        v18 = v47;
        if (!*(a1 + 48))
        {
LABEL_25:
          if (v2)
          {
            [v10 setObject:v2 forKey:*MEMORY[0x1E69C0570]];
          }

          if (v3)
          {
            [v10 setObject:v3 forKey:*MEMORY[0x1E69C03D0]];
          }

          if (v18)
          {
            [v10 setObject:v18 forKey:*MEMORY[0x1E69C03C8]];
          }

          if (v19)
          {
            [v10 setObject:v19 forKey:v5];
          }

          if (v45)
          {
            [v10 setObject:v45 forKey:v6];
          }

          v25 = [MEMORY[0x1E696AD98] numberWithBool:0];
          [v10 setObject:v25 forKey:*MEMORY[0x1E69C0550]];

          v26 = *MEMORY[0x1E69C0558];
          v27 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0558]];

          if (v27)
          {
            [v10 addEntriesFromDictionary:*(a1 + 32)];
          }

          else
          {
            v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E69BF328], "defaultSavedAssetTypeForPLAssetsSaver")}];
            [v10 setObject:v28 forKey:v26];
          }

          v29 = [MEMORY[0x1E696AD98] numberWithBool:1];
          [v10 setObject:v29 forKey:*MEMORY[0x1E69C02F8]];

          if (v12)
          {
            [v10 setObject:v12 forKey:v38];
          }

          if (v44)
          {
            [v10 setObject:v44 forKey:v39];
          }

          v14 = v2;
          if (v43)
          {
            [v10 setObject:v43 forKey:v36];
          }

          v30 = v12;
          if (v42)
          {
            [v10 setObject:v42 forKey:v37];
          }

          v16 = v3;
          if (v41)
          {
            [v10 setObject:v41 forKey:v35];
          }

          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __65__PLAssetsSaver__saveImage_imageData_properties_completionBlock___block_invoke_98;
          aBlock[3] = &unk_1E7565E98;
          v31 = *(a1 + 64);
          aBlock[4] = *(a1 + 56);
          v50 = v31;
          v32 = _Block_copy(aBlock);
          [*(a1 + 56) _queueJobDictionary:v10 completionBlock:v32];

          goto LABEL_49;
        }

        v34 = DCIM_CGImageRefFromPLImage();
        MEMORY[0x19EAED900](*(a1 + 48));
        v33 = PLExifOrientationFromImageOrientation();
        v20 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C0300]];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 intValue] == 10;
        }

        else
        {
          v22 = 0;
        }

        v23 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v2];
        v24 = imageDataFromImageRef(v34, v23, v33, v22);
        if (v24)
        {
          [v10 setObject:v24 forKey:*MEMORY[0x1E69C03F8]];
        }

        v18 = v47;
        v12 = v4;
      }

      v19 = v46;
      goto LABEL_25;
    }

    if ([v4 hasPrefix:@"com.apple."])
    {
      if ([v8 intValue] == 3)
      {
        v13 = &unk_1F0FBAD68;
LABEL_13:

        v8 = v13;
        goto LABEL_14;
      }

      if ([v8 intValue] == 6)
      {
        v13 = &unk_1F0FBAD80;
        goto LABEL_13;
      }
    }

LABEL_14:
    [v10 setObject:v8 forKey:@"ImportedBy"];

    goto LABEL_15;
  }

  v14 = [objc_opt_class() publicAssetsLibraryErrorFromPrivateDomain:*MEMORY[0x1E69BFF48] withPrivateCode:-3001];
  v15 = *(a1 + 64);
  if (v15)
  {
    v48 = v15;
    v14 = v14;
    pl_dispatch_async();

    v16 = v48;
LABEL_49:
  }
}

void __65__PLAssetsSaver__saveImage_imageData_properties_completionBlock___block_invoke_98(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [objc_opt_class() publicAssetsLibraryErrorFromPrivateError:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v7, v9);
  }
}

- (id)saveCameraImage:(id)a3 metadata:(id)a4 additionalProperties:(id)a5 diagnostics:(id)a6 previouslyPendingAsset:(id)a7 requestEnqueuedBlock:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v44 = a8;
  v46 = v18;
  if (v18)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"PLAssetsSaver.m" lineNumber:348 description:{@"diagnostics will always be nil, no clients pass in non-nil params currently, enforce until adopters drop call"}];
  }

  v42 = a2;
  v43 = self;
  context = objc_autoreleasePoolPush();
  v47 = [v15 objectForKey:*MEMORY[0x1E69C02B8]];
  v20 = [v15 objectForKey:*MEMORY[0x1E69C02C0]];
  v21 = [v16 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  v22 = [v21 objectForKey:*MEMORY[0x1E69867B0]];
  if (v22)
  {
    v23 = [v19 managedObjectContext];

    if (v23)
    {
      [v19 setAvalancheUUID:v22];
      [v19 setAvalanchePickType:1];
      if (+[PLAvalanche shouldOnlyShowAvalanchePicks])
      {
        [v19 setVisibilityState:2];
      }
    }
  }

  v45 = v19;
  v24 = [MEMORY[0x1E695DF90] dictionary];
  v25 = [MEMORY[0x1E696AD98] numberWithInt:0];
  [v24 setObject:v25 forKey:*MEMORY[0x1E69C0388]];

  [v24 setObject:*MEMORY[0x1E69C0458] forKey:*MEMORY[0x1E69C0410]];
  if (v16)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:PLImageOrientationFromImageProperties()];
    [v24 setObject:v26 forKey:*MEMORY[0x1E69C0400]];

    [v24 setObject:v16 forKey:*MEMORY[0x1E69C03C8]];
  }

  v27 = [MEMORY[0x1E695DF00] date];
  [v24 setObject:v27 forKey:*MEMORY[0x1E69C03A8]];

  if (v17)
  {
    [v24 addEntriesFromDictionary:v17];
  }

  v28 = v17;
  v29 = [MEMORY[0x1E696AD98] numberWithBool:0];
  [v24 setObject:v29 forKey:*MEMORY[0x1E69C0550]];

  v30 = *MEMORY[0x1E69C0558];
  v31 = [v24 objectForKey:*MEMORY[0x1E69C0558]];

  if (!v31)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E69BF328], "defaultSavedAssetTypeForPLAssetsSaver")}];
    [v24 setObject:v32 forKey:v30];
  }

  v33 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v24 setObject:v33 forKey:*MEMORY[0x1E69C02F8]];

  v34 = [v15 objectForKey:*MEMORY[0x1E69C02C8]];
  v35 = *MEMORY[0x1E69C02D0];
  v36 = [v15 objectForKey:*MEMORY[0x1E69C02D0]];
  if (v36)
  {
    [v24 setObject:v36 forKey:v35];
  }

  v37 = DCIM_CGImageRefFromPLImage();
  if (v37)
  {
    [v24 setObject:v37 forKey:*MEMORY[0x1E69C0548]];
  }

  if ([v20 length])
  {
    [v24 setObject:v20 forKey:*MEMORY[0x1E69C0540]];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __119__PLAssetsSaver_saveCameraImage_metadata_additionalProperties_diagnostics_previouslyPendingAsset_requestEnqueuedBlock___block_invoke;
  aBlock[3] = &__block_descriptor_40_e44_v32__0__NSDictionary_8__NSURL_16__NSError_24l;
  aBlock[4] = v42;
  v38 = _Block_copy(aBlock);
  [(PLAssetsSaver *)v43 _queueJobDictionary:v24 asset:0 requestEnqueuedBlock:v44 completionBlock:v38 imageSurface:v34];

  objc_autoreleasePoolPop(context);
  return 0;
}

void __119__PLAssetsSaver_saveCameraImage_metadata_additionalProperties_diagnostics_previouslyPendingAsset_requestEnqueuedBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || v9)
  {
    v15 = PLCameraGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(*(a1 + 32));
      v17 = 138543618;
      v18 = v16;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "%{public}@ failed: missing assetURL from reply (%{public}@)", &v17, 0x16u);
    }

    goto LABEL_7;
  }

  v11 = [v7 objectForKey:*MEMORY[0x1E69C03C0]];
  v12 = [v11 BOOLValue];

  if ((v12 & 1) == 0)
  {
    v13 = [v7 objectForKey:*MEMORY[0x1E69C0370]];
    v14 = [v13 BOOLValue];

    v15 = +[PLLocationController sharedInstance];
    [v15 addLocationToMediaWithAssetURLWhenAvailable:v8 deviceOrientation:1 cameraWasRearFacing:v14];
LABEL_7:
  }
}

- (id)_assetsdClientForJobDictionary:(id)a3
{
  v3 = [a3 objectForKey:*MEMORY[0x1E69C0568]];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69BF198]) initWithPhotoLibraryURL:v3];
  }

  else
  {
    v5 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
    v4 = [PLPhotoLibraryBundleController sharedAssetsdClientForPhotoLibraryURL:v5];
  }

  return v4;
}

- (void)_queueJobDictionary:(id)a3 asset:(id)a4 requestEnqueuedBlock:(id)a5 completionBlock:(id)a6 imageSurface:(__IOSurface *)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v31 = a5;
  v13 = a6;
  if (PLIsAssetsd())
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Calling PLAssetsSaver from assetsd directly with job dictionary: %@", v12];
    PLSimulateCrash();
  }

  v15 = [v12 objectForKey:@"callStack"];
  if (v15)
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 138412546;
      v36 = v17;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "##### %@ %@", buf, 0x16u);
    }

    v18 = [MEMORY[0x1E695DFD8] setWithObject:@"callStack"];
    PLJobLogDictionary();
  }

  v19 = PLBackendGetLog();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  v21 = MEMORY[0x1E69C0410];
  if (v20)
  {
    v22 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
    *buf = 138543362;
    v36 = v22;
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Sending assets saver job: %{public}@", buf, 0xCu);
  }

  if ((PLIsAssetsd() & 1) == 0)
  {
    PLIssueSandboxExtensionsForJobDictionary(v12);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__PLAssetsSaver__queueJobDictionary_asset_requestEnqueuedBlock_completionBlock_imageSurface___block_invoke;
  aBlock[3] = &unk_1E7565DD0;
  aBlock[4] = self;
  v34 = v13;
  v23 = v13;
  v24 = _Block_copy(aBlock);
  if (a7)
  {
    CFRetain(a7);
    v25 = [v12 objectForKey:*v21];
    v26 = [v25 isEqualToString:*MEMORY[0x1E69C0458]];

    if (v26)
    {
      [(PLAssetsSaver *)self _setIsTakingPhoto:1];
    }
  }

  v27 = [(PLAssetsSaver *)self _saveIsolationQueue];
  v32 = v12;
  v28 = v31;
  v29 = v24;
  v30 = v12;
  pl_dispatch_async();
}

void __93__PLAssetsSaver__queueJobDictionary_asset_requestEnqueuedBlock_completionBlock_imageSurface___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (*(a1 + 40))
  {
    if (a2)
    {
      v9 = [v7 objectForKey:*MEMORY[0x1E69C0310]];
      v10 = [v7 objectForKey:@"Error"];
    }

    else
    {
      v10 = [objc_opt_class() publicAssetsLibraryErrorFromPrivateError:v8];
      v9 = 0;
    }

    v13 = *(a1 + 40);
    v12 = v7;
    v8 = v10;
    v11 = v9;
    pl_dispatch_async();
  }
}

void __93__PLAssetsSaver__queueJobDictionary_asset_requestEnqueuedBlock_completionBlock_imageSurface___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C02D0]];
    if (v2)
    {
      v3 = [objc_alloc(MEMORY[0x1E69BF250]) initWithIOSurface:*(a1 + 64) length:{objc_msgSend(v2, "unsignedIntegerValue")}];
      v4 = *MEMORY[0x1E69C03F8];
      [*(a1 + 32) setObject:v3 forKey:*MEMORY[0x1E69C03F8]];
    }

    else
    {
      v4 = *MEMORY[0x1E69C03F8];
    }

    v6 = [MEMORY[0x1E69BF178] sharedDCIMWriter];
    v5 = [v6 saveImageJobToDisk:*(a1 + 32)];

    [*(a1 + 32) removeObjectForKey:v4];
    [*(a1 + 32) removeObjectForKey:*MEMORY[0x1E69C0548]];
  }

  else
  {
    v5 = 1;
  }

  v7 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69C03C8]];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  v9 = [v8 objectForKey:*MEMORY[0x1E69867B0]];
  if (v9 && ([*(a1 + 32) objectForKey:*MEMORY[0x1E69C0550]], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLValue"), v10, (v11 & 1) == 0))
  {
    v22 = [*(a1 + 40) _pendingSaveAssetJobs];
    [v22 addObject:*(a1 + 32)];
  }

  else
  {
    v12 = PLIsAssetsd();
    v13 = *(a1 + 40);
    if (v12)
    {
      v14 = [v13 _photoLibrary];
      v15 = [v14 libraryServicesManager];
      v16 = [v15 imageWriter];

      if (!v16)
      {
        v27 = [MEMORY[0x1E696AAA8] currentHandler];
        [v27 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"PLAssetsSaver.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"imageWriter"}];
      }

      v17 = *(a1 + 32);
      if (v5)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(a1 + 64);
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __93__PLAssetsSaver__queueJobDictionary_asset_requestEnqueuedBlock_completionBlock_imageSurface___block_invoke_4;
      v29[3] = &unk_1E7574880;
      v30 = *(a1 + 48);
      [v16 saveAssetJob:v17 imageSurface:v18 previewImageSurface:0 completionHandler:v29];
    }

    else
    {
      v16 = [v13 _assetsdClientForJobDictionary:*(a1 + 32)];
      v19 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69C0608]];
      v20 = [v19 BOOLValue];

      if (v20)
      {
        [v16 resourceWriteOnlyClient];
      }

      else
      {
        [v16 resourceClient];
      }
      v21 = ;
      v23 = v21;
      if (v5)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(a1 + 64);
      }

      [v21 saveAssetWithJobDictionary:*(a1 + 32) imageSurface:v24 previewImageSurface:0 completionHandler:*(a1 + 48)];
    }
  }

  v25 = *(a1 + 64);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(a1 + 56);
  if (v26)
  {
    v28 = v26;
    pl_dispatch_async();
  }

  if (*(a1 + 80) == 1)
  {
    [*(a1 + 40) _setIsTakingPhoto:0];
  }
}

void __93__PLAssetsSaver__queueJobDictionary_asset_requestEnqueuedBlock_completionBlock_imageSurface___block_invoke_4(uint64_t a1, int a2, void *a3, int a4, void *a5)
{
  v12 = a3;
  v9 = a5;
  v10 = *(a1 + 32);
  if (a2)
  {
    (*(v10 + 16))(v10, 1, v12, 0);
  }

  else if (a4)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:42002 userInfo:0];
    (*(v10 + 16))(v10, 0, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, 0, 0, v9);
  }
}

- (void)queuePhotoStreamJobDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKey:@"callStack"];
  if (v6)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      *buf = 138412546;
      v22 = v8;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "##### %@ %@", buf, 0x16u);
    }

    v9 = [MEMORY[0x1E695DFD8] setWithObject:@"callStack"];
    PLJobLogDictionary();
  }

  v10 = PLBackendGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
    *buf = 138543362;
    v22 = v11;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Sending assets saver photo stream job: %{public}@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PLAssetsSaver_queuePhotoStreamJobDictionary___block_invoke;
  aBlock[3] = &unk_1E7565DA0;
  v12 = v5;
  v20 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [(PLAssetsSaver *)self _saveIsolationQueue];
  v17 = v12;
  v18 = v13;
  v15 = v13;
  v16 = v12;
  pl_dispatch_async();
}

void __47__PLAssetsSaver_queuePhotoStreamJobDictionary___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ((a2 & 1) == 0)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Error processing assets saver photo stream job: %{public}@ -- %{public}@", &v9, 0x16u);
    }
  }
}

void __47__PLAssetsSaver_queuePhotoStreamJobDictionary___block_invoke_56(uint64_t a1)
{
  v2 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v4 = [PLPhotoLibraryBundleController sharedAssetsdClientForPhotoLibraryURL:v2];

  v3 = [v4 resourceClient];
  [v3 saveAssetWithJobDictionary:*(a1 + 32) imageSurface:0 previewImageSurface:0 completionHandler:*(a1 + 40)];
}

- (id)_saveIsolationQueue
{
  pl_dispatch_once();
  v2 = _saveIsolationQueue_saveIsolation;

  return v2;
}

void __36__PLAssetsSaver__saveIsolationQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.PLAssetsSaver.saveImageJobIsolation", 0);
  v1 = _saveIsolationQueue_saveIsolation;
  _saveIsolationQueue_saveIsolation = v0;
}

void __35__PLAssetsSaver__setIsTakingPhoto___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = _setIsTakingPhoto__takingPhotoCount;
  if (v1 == 1)
  {
    ++_setIsTakingPhoto__takingPhotoCount;
    if (v2)
    {
      return;
    }
  }

  else
  {
    --_setIsTakingPhoto__takingPhotoCount;
    if (v2 != 1)
    {
      return;
    }
  }

  v3 = [*(a1 + 32) _photoLibrary];
  v4 = [v3 libraryBundle];
  v5 = [v4 indicatorFileCoordinator];

  [v5 setTakingPhotoIsBusy:v1];
}

void __35__PLAssetsSaver__setIsTakingPhoto___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.PLAssetsSaver.takingPhotoIndicatorIsolation", 0);
  v1 = _setIsTakingPhoto__takingPhotoIndicatorIsolation;
  _setIsTakingPhoto__takingPhotoIndicatorIsolation = v0;
}

- (void)requestAsynchronousImageForAssetOID:(id)a3 withFormat:(int)a4 allowPlaceholder:(BOOL)a5 wantURLOnly:(BOOL)a6 networkAccessAllowed:(BOOL)a7 trackCPLDownload:(BOOL)a8 completionBlock:(id)a9
{
  v9 = a8;
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v13 = *&a4;
  v16 = a9;
  v17 = a3;
  v18 = [(PLAssetsSaver *)self _photoLibrary];
  v19 = [v18 assetsdClient];
  v20 = [v19 resourceClient];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __147__PLAssetsSaver_requestAsynchronousImageForAssetOID_withFormat_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_completionBlock___block_invoke;
  v22[3] = &unk_1E7565D78;
  v23 = v16;
  v21 = v16;
  [v20 imageDataForAsset:v17 format:v13 allowPlaceholder:v12 wantURLOnly:v11 networkAccessAllowed:v10 trackCPLDownload:v9 completionHandler:v22];
}

- (id)requestSynchronousImageForAssetOID:(id)a3 withFormat:(int)a4 allowPlaceholder:(BOOL)a5 wantURLOnly:(BOOL)a6 networkAccessAllowed:(BOOL)a7 trackCPLDownload:(BOOL)a8 outImageDataInfo:(id *)a9 outCPLDownloadContext:(id *)a10
{
  v32 = a8;
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v13 = *&a4;
  v40 = *MEMORY[0x1E69E9840];
  v15 = a3;
  context = objc_autoreleasePoolPush();
  v16 = [(PLAssetsSaver *)self _photoLibrary];
  v17 = [v16 assetsdClient];
  v18 = [v17 resourceClient];

  v37 = 0;
  v19 = &v36;
  if (a9)
  {
    v36 = 0;
  }

  else
  {
    v19 = 0;
  }

  v20 = &v35;
  if (a10)
  {
    v35 = 0;
  }

  else
  {
    v20 = 0;
  }

  v34 = 0;
  v21 = v15;
  v22 = [v18 imageDataForAsset:v15 format:v13 allowPlaceholder:v12 wantURLOnly:v11 networkAccessAllowed:v10 trackCPLDownload:v32 outImageData:&v37 outImageDataInfo:v19 outCPLDownloadContext:v20 error:&v34];
  v23 = v37;
  if (a9)
  {
    v24 = v36;
    if (a10)
    {
LABEL_9:
      v25 = v35;
      goto LABEL_12;
    }
  }

  else
  {
    v24 = 0;
    if (a10)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
LABEL_12:
  v26 = v34;
  if ((v22 & 1) == 0)
  {
    v27 = PLBackendGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v26;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Error requesting image data for asset: %@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(context);
  if (a9)
  {
    v28 = v24;
    *a9 = v24;
  }

  if (a10)
  {
    v29 = v25;
    *a10 = v25;
  }

  v30 = v23;

  return v23;
}

- (void)dealloc
{
  if (__SharedAssetsSaver == self)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PLAssetsSaver.m" lineNumber:100 description:@"sharedAssetsSaver should never be dealloc'd"];
  }

  v5.receiver = self;
  v5.super_class = PLAssetsSaver;
  [(PLAssetsSaver *)&v5 dealloc];
}

- (PLAssetsSaver)init
{
  v8.receiver = self;
  v8.super_class = PLAssetsSaver;
  v2 = [(PLAssetsSaver *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pendingSaveAssetJobs = v2->__pendingSaveAssetJobs;
    v2->__pendingSaveAssetJobs = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    inProgressAvalancheFds = v2->_inProgressAvalancheFds;
    v2->_inProgressAvalancheFds = v5;
  }

  return v2;
}

+ (id)publicAssetsLibraryErrorFromPrivateError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v3 code];
  if ([v4 isEqualToString:*MEMORY[0x1E69BFF48]])
  {
    if (v5 <= 12)
    {
      if (v5 != -3001)
      {
        if (v5 == 12)
        {
LABEL_5:
          v6 = PLServicesLocalizedFrameworkString();
          v7 = 0;
          v8 = 0;
          v5 = -3304;
          goto LABEL_31;
        }

        goto LABEL_15;
      }

      goto LABEL_23;
    }

    if (v5 != 13)
    {
      if (v5 != 14)
      {
        goto LABEL_15;
      }

LABEL_22:
      v6 = PLServicesLocalizedFrameworkString();
      v7 = 0;
      v8 = 0;
      v5 = -3305;
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (![v4 isEqualToString:@"ALAssetsLibraryErrorDomain"])
  {
    goto LABEL_15;
  }

  v7 = 0;
  if (v5 <= -3305)
  {
    if (v5 > -3311)
    {
      if (v5 == -3310)
      {
LABEL_23:
        v6 = PLServicesLocalizedFrameworkString();
        v8 = PLServicesLocalizedFrameworkString();
        v7 = 0;
        v5 = -3310;
        goto LABEL_31;
      }

      v6 = 0;
      v8 = 0;
      if (v5 != -3305)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (v5 == -3315)
    {
      v6 = PLServicesLocalizedFrameworkString();
      v7 = 0;
LABEL_30:
      v8 = 0;
      goto LABEL_31;
    }

    v6 = 0;
    v8 = 0;
    if (v5 != -3311)
    {
      goto LABEL_31;
    }

LABEL_29:
    v6 = PLServicesLocalizedFrameworkString();
    v7 = PLServicesLocalizedFrameworkString();
    goto LABEL_30;
  }

  if (v5 > -3302)
  {
    if (v5 == -3301)
    {
      v6 = PLServicesLocalizedFrameworkString();
      v7 = PLServicesLocalizedFrameworkString();
      v8 = PLServicesLocalizedFrameworkString();
      v5 = -3301;
      goto LABEL_31;
    }

    if (v5 != -3300)
    {
      v6 = 0;
      v8 = 0;
      if (v5 != -1)
      {
        goto LABEL_31;
      }

LABEL_15:
      v6 = PLServicesLocalizedFrameworkString();
      v7 = 0;
      v8 = 0;
      v5 = -1;
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v5 == -3304)
  {
    goto LABEL_5;
  }

  v6 = 0;
  v8 = 0;
  if (v5 == -3302)
  {
LABEL_26:
    v6 = PLServicesLocalizedFrameworkString();
    v7 = PLServicesLocalizedFrameworkString();
    v8 = PLServicesLocalizedFrameworkString();
    v5 = -3302;
  }

LABEL_31:
  v9 = [MEMORY[0x1E695DF90] dictionary];
  if ([v6 length])
  {
    [v9 setObject:v6 forKey:*MEMORY[0x1E696A578]];
  }

  if ([v7 length])
  {
    [v9 setObject:v7 forKey:*MEMORY[0x1E696A588]];
  }

  if ([v8 length])
  {
    [v9 setObject:v8 forKey:*MEMORY[0x1E696A598]];
  }

  if (v3)
  {
    [v9 setObject:v3 forKey:*MEMORY[0x1E696AA08]];
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ALAssetsLibraryErrorDomain" code:v5 userInfo:v9];

  return v10;
}

+ (id)publicAssetsLibraryErrorFromPrivateDomain:(id)a3 withPrivateCode:(int64_t)a4
{
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:a3 code:a4 userInfo:0];
  v6 = [a1 publicAssetsLibraryErrorFromPrivateError:v5];

  return v6;
}

+ (id)createWriteVideoCompletionBlockWithVideoPath:(id)a3 target:(id)a4 selector:(SEL)a5 contextInfo:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = 0;
  if (v11 && a5)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D940];
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = NSStringFromSelector(a5);
      v20 = [v17 stringWithFormat:@"%@<%p> does not respond to selector %@", v18, v11, v19];
      v21 = [v15 exceptionWithName:v16 reason:v20 userInfo:0];
      v22 = v21;

      objc_exception_throw(v21);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__PLAssetsSaver_createWriteVideoCompletionBlockWithVideoPath_target_selector_contextInfo___block_invoke;
    aBlock[3] = &unk_1E7565E68;
    v25 = a1;
    v24 = v11;
    v26 = a5;
    v27 = a6;
    v13 = _Block_copy(aBlock);
    v12 = [v13 copy];
  }

  return v12;
}

void __90__PLAssetsSaver_createWriteVideoCompletionBlockWithVideoPath_target_selector_contextInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = a3;
    a3 = [objc_opt_class() publicAssetsLibraryErrorFromPrivateError:v6];
  }

  v7 = MEMORY[0x1E695DF50];
  v8 = [*(a1 + 32) methodSignatureForSelector:{*(a1 + 48), a3, v5}];
  v9 = [v7 invocationWithMethodSignature:v8];

  [v9 setSelector:*(a1 + 48)];
  [v9 setTarget:*(a1 + 32)];
  [v9 setArgument:&v11 atIndex:2];
  [v9 setArgument:&v10 atIndex:3];
  [v9 setArgument:a1 + 56 atIndex:4];
  [v9 invoke];
}

+ (id)createWriteImageCompletionBlockWithImage:(id)a3 target:(id)a4 selector:(SEL)a5 contextInfo:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = 0;
  if (v11 && a5)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D940];
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = NSStringFromSelector(a5);
      v20 = [v17 stringWithFormat:@"%@<%p> does not respond to selector %@", v18, v11, v19];
      v21 = [v15 exceptionWithName:v16 reason:v20 userInfo:0];
      v22 = v21;

      objc_exception_throw(v21);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__PLAssetsSaver_createWriteImageCompletionBlockWithImage_target_selector_contextInfo___block_invoke;
    aBlock[3] = &unk_1E7565E40;
    v26 = a1;
    v24 = v10;
    v25 = v11;
    v27 = a5;
    v28 = a6;
    v13 = _Block_copy(aBlock);
    v12 = [v13 copy];
  }

  return v12;
}

void __86__PLAssetsSaver_createWriteImageCompletionBlockWithImage_target_selector_contextInfo___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [*(a1 + 48) publicAssetsLibraryErrorFromPrivateError:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x1E695DF50];
  v6 = [*(a1 + 40) methodSignatureForSelector:{*(a1 + 56), v4, *(a1 + 32)}];
  v7 = [v5 invocationWithMethodSignature:v6];

  [v7 setSelector:*(a1 + 56)];
  [v7 setTarget:*(a1 + 40)];
  [v7 setArgument:&v9 atIndex:2];
  [v7 setArgument:&v8 atIndex:3];
  [v7 setArgument:a1 + 64 atIndex:4];
  [v7 invoke];
}

+ (id)sharedAssetsSaver
{
  pl_dispatch_once();
  v2 = __SharedAssetsSaver;

  return v2;
}

void __34__PLAssetsSaver_sharedAssetsSaver__block_invoke()
{
  v0 = objc_alloc_init(PLAssetsSaver);
  v1 = __SharedAssetsSaver;
  __SharedAssetsSaver = v0;
}

@end