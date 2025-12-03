@interface PXPhotosExportUtilities
+ (id)_exportAssetUsingExportRequest:(id)request configuration:(id)configuration completion:(id)completion;
+ (id)_exportRequestForAsset:(id)asset analyticsActivityType:(id)type error:(id *)error;
+ (id)_optionsForExportRequest:(id)request configuration:(id)configuration;
+ (void)_downscaleAssetAtURLIfNeeded:(id)needed configuration:(id)configuration completion:(id)completion;
+ (void)_downscaleImageAtURL:(id)l targetDimension:(id)dimension completion:(id)completion;
+ (void)_exportAssets:(id)assets toURL:(id)l configuration:(id)configuration progress:(id)progress;
+ (void)_exportCollectionList:(id)list configuration:(id)configuration progress:(id)progress completion:(id)completion;
+ (void)_markURLAsPurgable:(id)purgable completionHandler:(id)handler;
+ (void)_replaceAssetAtURL:(id)l withItemAtURL:(id)rL completionHandler:(id)handler;
+ (void)exportAsset:(id)asset configuration:(id)configuration progress:(id)progress completion:(id)completion;
+ (void)exportAssets:(id)assets configuration:(id)configuration progress:(id)progress completion:(id)completion;
+ (void)exportAssetsInContainer:(id)container configuration:(id)configuration progress:(id)progress completion:(id)completion;
@end

@implementation PXPhotosExportUtilities

+ (void)_replaceAssetAtURL:(id)l withItemAtURL:(id)rL completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  v10 = MEMORY[0x1E696AC08];
  handlerCopy = handler;
  defaultManager = [v10 defaultManager];
  v15 = 0;
  v13 = [defaultManager replaceItemAtURL:lCopy withItemAtURL:rLCopy backupItemName:0 options:0 resultingItemURL:0 error:&v15];
  v14 = v15;

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = lCopy;
      v18 = 2112;
      v19 = rLCopy;
      _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Replaced existing file at URL (%@) with URL (%@).", buf, 0x16u);
    }

    [self _markURLAsPurgable:lCopy completionHandler:handlerCopy];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v17 = lCopy;
      v18 = 2112;
      v19 = rLCopy;
      v20 = 2112;
      v21 = v14;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to replace file at URL (%@) with URL (%@) with error: %@", buf, 0x20u);
    }

    handlerCopy[2](handlerCopy, 0, v14);
  }
}

+ (void)_markURLAsPurgable:(id)purgable completionHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  purgableCopy = purgable;
  v6 = MEMORY[0x1E69BE2D8];
  handlerCopy = handler;
  if ([v6 markPurgeableForFileAtURL:purgableCopy withUrgency:0 outInode:0])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = purgableCopy;
      _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Marked file provider URL (%@) as purgeable.", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = purgableCopy;
    _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to mark file provider URL (%@) as purgeable.", &v8, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = purgableCopy;
    _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Successfully provided file at URL: %@", &v8, 0xCu);
  }

  handlerCopy[2](handlerCopy, purgableCopy, 0);
}

+ (id)_exportAssetUsingExportRequest:(id)request configuration:(id)configuration completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  configurationCopy = configuration;
  completionCopy = completion;
  if (requestCopy)
  {
    if (configurationCopy)
    {
      goto LABEL_3;
    }

LABEL_15:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosExportUtilities.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosExportUtilities.m" lineNumber:313 description:{@"Invalid parameter not satisfying: %@", @"exportRequest"}];

  if (!configurationCopy)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_16:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPhotosExportUtilities.m" lineNumber:315 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  v12 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v13 = [self _optionsForExportRequest:requestCopy configuration:configurationCopy];
  if (v13)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __83__PXPhotosExportUtilities__exportAssetUsingExportRequest_configuration_completion___block_invoke;
    v26[3] = &unk_1E7746320;
    v27 = configurationCopy;
    v14 = requestCopy;
    v28 = v14;
    v15 = v12;
    v29 = v15;
    v30 = completionCopy;
    [v14 exportWithOptions:v13 completionHandler:v26];
    progress = [v14 progress];
    [v15 addChild:progress withPendingUnitCount:1];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v15 localizedDescription];
      *buf = 138412546;
      v34 = v13;
      v35 = 2112;
      v36 = localizedDescription;
      _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Exporting asset with options: %@ (export progress: %@)", buf, 0x16u);
    }

    v18 = v27;
  }

  else
  {
    v31 = *MEMORY[0x1E696A278];
    v32 = @"Failed to find a variant.";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PFPAssetRequestErrorDomain" code:0 userInfo:v18];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      variants = [requestCopy variants];
      localizedDescription2 = [v12 localizedDescription];
      *buf = 138412546;
      v34 = variants;
      v35 = 2112;
      v36 = localizedDescription2;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to find a supported variant in: %@ (export progress: %@)", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0, v19);
  }

  return v12;
}

void __83__PXPhotosExportUtilities__exportAssetUsingExportRequest_configuration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) itemType];
  switch(v7)
  {
    case 1:
      v10 = [*(a1 + 40) asset];
      v11 = [v10 isLoopingVideo];
      v12 = MEMORY[0x1E6978BA0];
      if (!v11)
      {
        v12 = MEMORY[0x1E6978B98];
      }

      goto LABEL_15;
    case 3:
      v8 = MEMORY[0x1E6978BA0];
      goto LABEL_6;
    case 2:
      v8 = MEMORY[0x1E6978B88];
LABEL_6:
      v9 = [v5 objectForKeyedSubscript:*v8];
      goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 32);
    v20 = 138412290;
    v21 = v19;
    _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Trying to export unsupported media type: %@", &v20, 0xCu);
  }

  v13 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6978B98]];
  v10 = v13;
  if (!v13)
  {
    v12 = MEMORY[0x1E6978BA0];
LABEL_15:
    v14 = [v5 objectForKeyedSubscript:*v12];
    goto LABEL_16;
  }

  v14 = v13;
LABEL_16:
  v9 = v14;

LABEL_17:
  if ([*(a1 + 48) isCancelled])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 48) localizedDescription];
      v20 = 138412802;
      v21 = v9;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v15;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "Exporting asset (%@) cancelled with error: %@ (export progress: %@)";
      v18 = 32;
LABEL_25:
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, v17, &v20, v18);
      goto LABEL_26;
    }
  }

  else if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 48) localizedDescription];
      v20 = 138412802;
      v21 = v9;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v15;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exporting asset (%@) failed with error: %@ (export progress: %@)", &v20, 0x20u);
LABEL_26:
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 48) localizedDescription];
    v20 = 138412546;
    v21 = v9;
    v22 = 2112;
    v23 = v15;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "Finished exporting asset: %@ (export progress: %@)";
    v18 = 22;
    goto LABEL_25;
  }

  (*(*(a1 + 56) + 16))();
}

+ (id)_optionsForExportRequest:(id)request configuration:(id)configuration
{
  requestCopy = request;
  configurationCopy = configuration;
  v9 = configurationCopy;
  if (requestCopy)
  {
    if (configurationCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosExportUtilities.m" lineNumber:285 description:{@"Invalid parameter not satisfying: %@", @"exportRequest"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosExportUtilities.m" lineNumber:286 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];

LABEL_3:
  v10 = objc_alloc_init(MEMORY[0x1E69786B0]);
  variants = [requestCopy variants];
  asset = [requestCopy asset];
  v13 = [v9 variantToRequest:variants asset:asset];

  if ([v9 itemType] == 2)
  {
    [v10 setTreatLivePhotoAsStill:0];
    if ([v9 encodingPolicy] == 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    [v10 setVariant:v14];
    [v10 setShouldBundleComplexAssetResources:1];
  }

  else if (v13)
  {
    [v10 setTreatLivePhotoAsStill:1];
    [v10 setVariant:{objc_msgSend(v13, "PHAssetExportRequestVariantValue")}];
  }

  [v10 setFlattenSlomoVideos:1];
  [v10 setShouldStripLocation:{objc_msgSend(v9, "shouldIncludeLocation") ^ 1}];
  [v10 setShouldStripCaption:{objc_msgSend(v9, "shouldIncludeCaption") ^ 1}];
  if ([v9 shouldExportForMail])
  {
    [v10 setVideoExportPreset:*MEMORY[0x1E6987320]];
  }

  return v10;
}

+ (void)_exportAssets:(id)assets toURL:(id)l configuration:(id)configuration progress:(id)progress
{
  v46 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  lCopy = l;
  configurationCopy = configuration;
  progressCopy = progress;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = assetsCopy;
  v12 = [assetsCopy countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v38;
    *&v13 = 138412546;
    v27 = v13;
    do
    {
      v16 = 0;
      do
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v37 + 1) + 8 * v16);
        activityTypeForAssetExportAnalytics = [configurationCopy activityTypeForAssetExportAnalytics];
        v36 = 0;
        v19 = [self _exportRequestForAsset:v17 analyticsActivityType:activityTypeForAssetExportAnalytics error:&v36];
        v20 = v36;

        if (v19)
        {
          v21 = dispatch_semaphore_create(0);
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __70__PXPhotosExportUtilities__exportAssets_toURL_configuration_progress___block_invoke;
          v31[3] = &unk_1E77462F8;
          selfCopy = self;
          v22 = configurationCopy;
          v32 = v22;
          v33 = lCopy;
          v34 = v21;
          v23 = v21;
          v24 = [self _exportAssetUsingExportRequest:v19 configuration:v22 completion:v31];
          [progressCopy addChild:v24 withPendingUnitCount:90];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            localizedDescription = [progressCopy localizedDescription];
            *buf = v27;
            v42 = v19;
            v43 = 2112;
            v44 = localizedDescription;
            _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Finished creating export request: %@ (progress: %@)", buf, 0x16u);
          }

          dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          localizedDescription2 = [progressCopy localizedDescription];
          *buf = v27;
          v42 = v20;
          v43 = 2112;
          v44 = localizedDescription2;
          _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Creating export request failed with error: %@ (progress: %@)", buf, 0x16u);
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v14);
  }
}

void __70__PXPhotosExportUtilities__exportAssets_toURL_configuration_progress___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 56);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__PXPhotosExportUtilities__exportAssets_toURL_configuration_progress___block_invoke_2;
    v9[3] = &unk_1E77462D0;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    [v7 _downscaleAssetAtURLIfNeeded:v5 configuration:v8 completion:v9];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to export photo library asset with error: %@", buf, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 48));
  }
}

void __70__PXPhotosExportUtilities__exportAssets_toURL_configuration_progress___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 lastPathComponent];
    v8 = [*(a1 + 32) URLByAppendingPathComponent:v7];
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = 0;
    v10 = [v9 moveItemAtURL:v5 toURL:v8 error:&v12];
    v11 = v12;

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v14 = v5;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Moved %@ to %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v11;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed move file: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to downscale photo library asset with error: %@", buf, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (void)_downscaleImageAtURL:(id)l targetDimension:(id)dimension completion:(id)completion
{
  v56[6] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dimensionCopy = dimension;
  completionCopy = completion;
  if (_downscaleImageAtURL_targetDimension_completion__onceToken != -1)
  {
    dispatch_once(&_downscaleImageAtURL_targetDimension_completion__onceToken, &__block_literal_global_216513);
  }

  v10 = MEMORY[0x1E6982C40];
  lastPathComponent = [lCopy lastPathComponent];
  pathExtension = [lastPathComponent pathExtension];
  v13 = [v10 typeWithFilenameExtension:pathExtension];
  identifier = [v13 identifier];

  v48 = identifier;
  v15 = PXPhotosFileProviderTypeIdentifierForDownscalingAssetWithTypeIdentifier(identifier);
  v55[0] = *MEMORY[0x1E69AE968];
  standardPolicy = [MEMORY[0x1E69C06D0] standardPolicy];
  v56[0] = standardPolicy;
  v55[1] = *MEMORY[0x1E69AE980];
  dimensionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"PUPhotosFileProviderItemProvider downscaling image to target length: %@", dimensionCopy];
  v18 = *MEMORY[0x1E69AE920];
  v56[1] = dimensionCopy;
  v56[2] = MEMORY[0x1E695E118];
  v19 = *MEMORY[0x1E69AE958];
  v55[2] = v18;
  v55[3] = v19;
  v20 = *MEMORY[0x1E69AE950];
  v56[3] = dimensionCopy;
  v56[4] = &unk_1F190D9F0;
  v21 = *MEMORY[0x1E69AE978];
  v55[4] = v20;
  v55[5] = v21;
  v47 = v15;
  v56[5] = v15;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:6];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v26 = [temporaryDirectory URLByAppendingPathComponent:uUIDString isDirectory:1];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v54 = 0;
  LODWORD(temporaryDirectory) = [defaultManager2 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:&v54];
  v28 = v54;

  if (temporaryDirectory)
  {
    uUID2 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString2 = [uUID2 UUIDString];
    v31 = [v26 URLByAppendingPathComponent:uUIDString2];

    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    v53 = 0;
    v45 = lCopy;
    LODWORD(uUIDString2) = [defaultManager3 moveItemAtURL:lCopy toURL:v31 error:&v53];
    v33 = v53;

    if (uUIDString2)
    {
      uUID3 = [MEMORY[0x1E696AFB0] UUID];
      uUIDString3 = [uUID3 UUIDString];
      v36 = [v26 URLByAppendingPathComponent:uUIDString3];

      v37 = [MEMORY[0x1E69AE880] collectionWithMainResourceURL:v31];
      v38 = [MEMORY[0x1E69AE880] collectionWithMainResourceURL:v36];
      v39 = _downscaleImageAtURL_targetDimension_completion__client;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __75__PXPhotosExportUtilities__downscaleImageAtURL_targetDimension_completion___block_invoke_115;
      v49[3] = &unk_1E77462A8;
      v52 = completionCopy;
      v50 = v36;
      v51 = v26;
      v40 = v36;
      v41 = v39;
      v42 = v37;
      v43 = v37;
      v44 = v46;
      [v41 convertImageAtSourceURLCollection:v43 toDestinationURLCollection:v38 options:v46 completionHandler:v49];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, v33);
      v44 = v46;
    }

    lCopy = v45;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v28);
    v44 = v46;
  }
}

void __75__PXPhotosExportUtilities__downscaleImageAtURL_targetDimension_completion___block_invoke_115(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1[6];
  if (a2 == 1)
  {
    (*(v3 + 16))(v3, a1[4], 0);
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = a1[5];
    v11 = 0;
    v6 = [v4 removeItemAtURL:v5 error:&v11];
    v7 = v11;

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[5];
        *buf = 138412290;
        v13 = v8;
        _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Deleted downscaling temp file at URL: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = a1[5];
      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v7;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to delete downscaling temp file at URL: %@ error: %@", buf, 0x16u);
    }
  }

  else
  {
    v9 = *(v3 + 16);

    v9();
  }
}

void __75__PXPhotosExportUtilities__downscaleImageAtURL_targetDimension_completion___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69AE870]);
  v1 = _downscaleImageAtURL_targetDimension_completion__client;
  _downscaleImageAtURL_targetDimension_completion__client = v0;
}

+ (void)_downscaleAssetAtURLIfNeeded:(id)needed configuration:(id)configuration completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  configurationCopy = configuration;
  completionCopy = completion;
  downscalingTargetDimension = [configurationCopy downscalingTargetDimension];
  if (downscalingTargetDimension && (v12 = downscalingTargetDimension, v13 = [configurationCopy itemType], v12, v13 == 1))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      downscalingTargetDimension2 = [configurationCopy downscalingTargetDimension];
      *buf = 138412546;
      v19 = neededCopy;
      v20 = 2112;
      v21 = downscalingTargetDimension2;
      _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Downscaling asset (%@) to target dimension: %@", buf, 0x16u);
    }

    downscalingTargetDimension3 = [configurationCopy downscalingTargetDimension];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __81__PXPhotosExportUtilities__downscaleAssetAtURLIfNeeded_configuration_completion___block_invoke;
    v16[3] = &unk_1E77473C0;
    v17 = completionCopy;
    [self _downscaleImageAtURL:neededCopy targetDimension:downscalingTargetDimension3 completion:v16];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = neededCopy;
      _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Don't need to downscale asset: %@", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, neededCopy, 0);
  }
}

+ (id)_exportRequestForAsset:(id)asset analyticsActivityType:(id)type error:(id *)error
{
  typeCopy = type;
  v8 = [MEMORY[0x1E69786A8] exportRequestForAsset:asset error:error];
  v9 = v8;
  if (v8)
  {
    [v8 setAnalyticsActivityType:typeCopy];
    [v9 setShouldSendTimingIntervalsToAnalytics:1];
  }

  return v9;
}

+ (void)_exportCollectionList:(id)list configuration:(id)configuration progress:(id)progress completion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  listCopy = list;
  configurationCopy = configuration;
  progressCopy = progress;
  completionCopy = completion;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [MEMORY[0x1E695DF00] now];
  [v11 timeIntervalSinceReferenceDate];
  v13 = [v10 stringWithFormat:@"CollectionList-%lf", v12];

  v14 = MEMORY[0x1E695DFF8];
  v15 = NSTemporaryDirectory();
  v31 = v13;
  v16 = [v15 stringByAppendingPathComponent:v13];
  v17 = [v14 fileURLWithPath:v16 isDirectory:1];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v30 = v17;
  obj = [PXExportContainer containersForRootCollection:listCopy destinationURL:v17];
  v18 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v39;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        v23 = v20;
        if (*v39 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v38 + 1) + 8 * i);
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v26 = [v24 url];
        v37 = v20;
        v27 = [defaultManager createDirectoryAtURL:v26 withIntermediateDirectories:0 attributes:0 error:&v37];
        v20 = v37;

        if (v27)
        {
          assets = [v24 assets];
          v29 = [v24 url];
          [self _exportAssets:assets toURL:v29 configuration:configurationCopy progress:progressCopy];
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v20;
          _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to create export directory: %@", buf, 0xCu);
        }
      }

      v19 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  completionCopy[2](completionCopy, v30, v20);
}

+ (void)exportAssets:(id)assets configuration:(id)configuration progress:(id)progress completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  configurationCopy = configuration;
  progressCopy = progress;
  v13 = MEMORY[0x1E696AEC0];
  v14 = MEMORY[0x1E695DF00];
  completionCopy = completion;
  v16 = [v14 now];
  [v16 timeIntervalSinceReferenceDate];
  v18 = [v13 stringWithFormat:@"AssetFetchResult-%lf", v17];

  v19 = MEMORY[0x1E695DFF8];
  v20 = NSTemporaryDirectory();
  v21 = [v20 stringByAppendingPathComponent:v18];
  v22 = [v19 fileURLWithPath:v21 isDirectory:1];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v26 = 0;
  v24 = [defaultManager createDirectoryAtURL:v22 withIntermediateDirectories:0 attributes:0 error:&v26];
  v25 = v26;

  if (v24)
  {
    [self _exportAssets:assetsCopy toURL:v22 configuration:configurationCopy progress:progressCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v25;
    _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to create export directory: %@", buf, 0xCu);
  }

  completionCopy[2](completionCopy, v22, v25);
}

+ (void)exportAssetsInContainer:(id)container configuration:(id)configuration progress:(id)progress completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  configurationCopy = configuration;
  progressCopy = progress;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self _exportCollectionList:containerCopy configuration:configurationCopy progress:progressCopy completion:completionCopy];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [MEMORY[0x1E6978630] fetchAssetsForPerson:containerCopy options:0];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [MEMORY[0x1E6978630] fetchExclusiveAssetsForSocialGroup:containerCopy options:0];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:containerCopy options:0];
LABEL_9:
    v15 = v14;
    if (v14)
    {
      [self exportAssets:v14 configuration:configurationCopy progress:progressCopy completion:completionCopy];

      goto LABEL_13;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = 138412290;
    v17 = containerCopy;
    _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to determine assets contained in %@", &v16, 0xCu);
  }

LABEL_13:
}

+ (void)exportAsset:(id)asset configuration:(id)configuration progress:(id)progress completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  progressCopy = progress;
  completionCopy = completion;
  assetCopy = asset;
  activityTypeForAssetExportAnalytics = [configurationCopy activityTypeForAssetExportAnalytics];
  v27 = 0;
  v15 = [self _exportRequestForAsset:assetCopy analyticsActivityType:activityTypeForAssetExportAnalytics error:&v27];

  v16 = v27;
  if (v15)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __73__PXPhotosExportUtilities_exportAsset_configuration_progress_completion___block_invoke;
    v23 = &unk_1E7746280;
    selfCopy = self;
    v24 = configurationCopy;
    v25 = completionCopy;
    v17 = [self _exportAssetUsingExportRequest:v15 configuration:v24 completion:&v20];
    [progressCopy addChild:v17 withPendingUnitCount:{90, v20, v21, v22, v23}];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [progressCopy localizedDescription];
      *buf = 138412546;
      v29 = v15;
      v30 = 2112;
      v31 = localizedDescription;
      _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Finished creating export request: %@ (progress: %@)", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localizedDescription2 = [progressCopy localizedDescription];
      *buf = 138412546;
      v29 = v16;
      v30 = 2112;
      v31 = localizedDescription2;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Creating export request failed with error: %@ (progress: %@)", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0, v16);
  }
}

void __73__PXPhotosExportUtilities_exportAsset_configuration_progress_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__PXPhotosExportUtilities_exportAsset_configuration_progress_completion___block_invoke_2;
    v9[3] = &unk_1E77473C0;
    v8 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v8 _downscaleAssetAtURLIfNeeded:v5 configuration:v7 completion:v9];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to export photo library asset with error: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __73__PXPhotosExportUtilities_exportAsset_configuration_progress_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to downscale photo library asset with error: %@", &v8, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

@end