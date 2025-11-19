@interface PXMediaTypeInfoManager
+ (PXMediaTypeInfoManager)sharedManager;
- (PXMediaTypeInfoManager)init;
- (id)_init;
- (void)_handleAssetDownloadProgressWithAsset:(id)a3 error:(id)a4;
- (void)_handleAssetQueryCallbackWithAsset:(id)a3 error:(id)a4 userInitiated:(BOOL)a5;
- (void)_handleInstallMobileAssetCallbackWithAsset:(id)a3 UTI:(id)a4 codecName:(id)a5 completionHandler:(id)a6;
- (void)_installMobileAssetAsUserInitiated:(BOOL)a3 timeout:(double)a4 completionHandler:(id)a5;
- (void)_prepareInformationForLookups;
- (void)_processPendingCallbacksWithAsset:(id)a3;
- (void)mediaTypeInfoURLForUTI:(id)a3 codecName:(id)a4 timeout:(double)a5 completionHandler:(id)a6;
- (void)prepareInformationForLookups;
@end

@implementation PXMediaTypeInfoManager

- (void)mediaTypeInfoURLForUTI:(id)a3 codecName:(id)a4 timeout:(double)a5 completionHandler:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!v13)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXMediaTypeInfoManager.m" lineNumber:310 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  if (v11 | v12)
  {
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v11;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "PXMediaTypeInfoManager - Look up URL for UTI: %@, codec: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v15 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__PXMediaTypeInfoManager_mediaTypeInfoURLForUTI_codecName_timeout_completionHandler___block_invoke_342;
    block[3] = &unk_1E773D548;
    objc_copyWeak(v26, buf);
    v26[1] = *&a5;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v16 = v13;
    dispatch_async(v15, block);

    objc_destroyWeak(v26);
    objc_destroyWeak(buf);
  }

  else
  {
    v17 = +[PXMediaTypeInfoManager knowledgeBaseFallbackURL];
    v18 = PLUIGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v17;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "PXMediaTypeInfoManager - !UTI && !codecName - Returning fallback URL: %@", buf, 0xCu);
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __85__PXMediaTypeInfoManager_mediaTypeInfoURLForUTI_codecName_timeout_completionHandler___block_invoke;
    v27[3] = &unk_1E774C2F0;
    v28 = v17;
    v29 = v13;
    v19 = v17;
    v20 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], v27);
  }
}

void __85__PXMediaTypeInfoManager_mediaTypeInfoURLForUTI_codecName_timeout_completionHandler___block_invoke_342(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 64);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __85__PXMediaTypeInfoManager_mediaTypeInfoURLForUTI_codecName_timeout_completionHandler___block_invoke_2;
  v4[3] = &unk_1E773D520;
  objc_copyWeak(&v8, (a1 + 56));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [WeakRetained _installMobileAssetAsUserInitiated:1 timeout:v4 completionHandler:v3];

  objc_destroyWeak(&v8);
}

void __85__PXMediaTypeInfoManager_mediaTypeInfoURLForUTI_codecName_timeout_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleInstallMobileAssetCallbackWithAsset:v3 UTI:*(a1 + 32) codecName:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)_handleInstallMobileAssetCallbackWithAsset:(id)a3 UTI:(id)a4 codecName:(id)a5 completionHandler:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if ([v11 state] != 1)
    {
      v44 = [MEMORY[0x1E696AAA8] currentHandler];
      [v44 handleFailureInMethod:a2 object:self file:@"PXMediaTypeInfoManager.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"!asset || ([asset state] == ASAssetStateInstalled)"}];
    }

    v48 = v13;
    v15 = [v11 localURL];
    v16 = [v15 URLByAppendingPathComponent:@"mediaSupport"];
    v17 = [v16 URLByAppendingPathExtension:@"plist"];

    v53 = 0;
    v18 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v17 options:2 error:&v53];
    v19 = v53;
    v47 = v12;
    if (!v18)
    {
      v20 = PLUIGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v55 = v19;
        _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "PXMediaTypeInfoManager - Error: failed to load plist data with error: %@", buf, 0xCu);
      }

      v32 = 0;
      v21 = v19;
LABEL_31:

      v12 = v47;
      v13 = v48;
      if (v32)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    v52 = 0;
    v20 = [MEMORY[0x1E696AE40] propertyListWithData:v18 options:0 format:0 error:&v52];
    v21 = v52;

    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v20;
        v23 = v47;
        v46 = v48;
        v24 = [v22 objectForKeyedSubscript:@"uniformTypeIdentifierURLs-Photos"];
        v25 = [v24 objectForKeyedSubscript:v23];

        if (v25 || (-[NSObject objectForKeyedSubscript:](v22, "objectForKeyedSubscript:", @"uniformTypeIdentifierURLs"), v26 = objc_claimAutoreleasedReturnValue(), [v26 objectForKeyedSubscript:v23], v25 = objc_claimAutoreleasedReturnValue(), v26, v25) || (-[NSObject objectForKeyedSubscript:](v22, "objectForKeyedSubscript:", @"codecURLs-Photos"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "objectForKeyedSubscript:", v46), v25 = objc_claimAutoreleasedReturnValue(), v27, v25) || (-[NSObject objectForKeyedSubscript:](v22, "objectForKeyedSubscript:", @"codecURLs"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "objectForKeyedSubscript:", v46), v25 = objc_claimAutoreleasedReturnValue(), v28, v25))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v29 = v22;
            v30 = PLUIGetLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = objc_opt_class();
              *buf = 138412290;
              v55 = v31;
              v45 = v31;
              _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_ERROR, "PXMediaTypeInfoManager - Error: value should be string but is: %@", buf, 0xCu);
            }

            v25 = 0;
            v22 = v29;
          }
        }

        if (v25)
        {
          v32 = [MEMORY[0x1E695DFF8] URLWithString:v25];
          v33 = PLUIGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v55 = v32;
            _os_log_impl(&dword_1A3C1C000, v33, OS_LOG_TYPE_DEFAULT, "PXMediaTypeInfoManager - Returning URL: %@", buf, 0xCu);
          }

          goto LABEL_30;
        }
      }

      else
      {
        v25 = PLUIGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v35 = objc_opt_class();
          *buf = 138412290;
          v55 = v35;
          v36 = v35;
          _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_ERROR, "PXMediaTypeInfoManager - Error: plist must be a dictionary but is: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v25 = PLUIGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v55 = v21;
        _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_ERROR, "PXMediaTypeInfoManager - Error: failed to deserialize plist data with error: %@", buf, 0xCu);
      }
    }

    v32 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v34 = PLUIGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_DEFAULT, "PXMediaTypeInfoManager - No asset available for lookup.", buf, 2u);
  }

LABEL_32:
  v32 = +[PXMediaTypeInfoManager knowledgeBaseFallbackURL];
LABEL_33:
  v37 = [MEMORY[0x1E695E000] standardUserDefaults];
  v38 = [v37 stringForKey:@"PXMediaTypeInfoManagerMoreInfoURLString"];

  if (v38)
  {
    v39 = [MEMORY[0x1E695DFF8] URLWithString:v38];
    v40 = PLUIGetLog();
    v41 = v40;
    if (v39)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = v39;
        _os_log_impl(&dword_1A3C1C000, v41, OS_LOG_TYPE_DEFAULT, "PXMediaTypeInfoManager - Using debug URL: %@", buf, 0xCu);
      }

      [MEMORY[0x1E695DFF8] URLWithString:v38];
      v32 = v41 = v32;
    }

    else if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v55 = v38;
      _os_log_impl(&dword_1A3C1C000, v41, OS_LOG_TYPE_ERROR, "PXMediaTypeInfoManager - Failed to create debug URL from the provided string: %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__PXMediaTypeInfoManager__handleInstallMobileAssetCallbackWithAsset_UTI_codecName_completionHandler___block_invoke;
  block[3] = &unk_1E774C2F0;
  v50 = v32;
  v51 = v14;
  v42 = v32;
  v43 = v14;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)prepareInformationForLookups
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__PXMediaTypeInfoManager_prepareInformationForLookups__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  v2 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_DETACHED, QOS_CLASS_BACKGROUND, 0, v4);
  v3 = dispatch_get_global_queue(9, 0);
  dispatch_async(v3, v2);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __54__PXMediaTypeInfoManager_prepareInformationForLookups__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _prepareInformationForLookups];
}

- (void)_prepareInformationForLookups
{
  if ([MEMORY[0x1E69B18C0] nonUserInitiatedDownloadsAllowed])
  {
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "PXMediaTypeInfoManager - Kick off speculative asset download.", v4, 2u);
    }

    [(PXMediaTypeInfoManager *)self _installMobileAssetAsUserInitiated:0 timeout:0 completionHandler:-1.0];
  }
}

- (void)_installMobileAssetAsUserInitiated:(BOOL)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v11 = _Block_copy(v9);
    if (a4 > 0.0)
    {
      if (!a3)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        [v18 handleFailureInMethod:a2 object:self file:@"PXMediaTypeInfoManager.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"userInitiated"}];
      }

      location[0] = 0;
      location[1] = location;
      location[2] = 0x2020000000;
      v31 = 1;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __87__PXMediaTypeInfoManager__installMobileAssetAsUserInitiated_timeout_completionHandler___block_invoke;
      aBlock[3] = &unk_1E773D4D0;
      v29 = location;
      v28 = v10;
      v12 = _Block_copy(aBlock);

      v13 = dispatch_time(0, (a4 * 1000000000.0));
      v14 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __87__PXMediaTypeInfoManager__installMobileAssetAsUserInitiated_timeout_completionHandler___block_invoke_2;
      block[3] = &unk_1E77463F8;
      v26 = location;
      v11 = v12;
      v25 = v11;
      dispatch_after(v13, v14, block);

      _Block_object_dispose(location, 8);
    }

    serialQueue = self->_serialQueue;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __87__PXMediaTypeInfoManager__installMobileAssetAsUserInitiated_timeout_completionHandler___block_invoke_325;
    v22[3] = &unk_1E774C2F0;
    v22[4] = self;
    v23 = v11;
    v16 = v11;
    dispatch_sync(serialQueue, v22);
  }

  v17 = [objc_alloc(MEMORY[0x1E69B18D0]) initWithAssetType:@"com.apple.MobileAsset.MediaSupport"];
  objc_initWeak(location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87__PXMediaTypeInfoManager__installMobileAssetAsUserInitiated_timeout_completionHandler___block_invoke_2_327;
  v19[3] = &unk_1E773D4F8;
  objc_copyWeak(&v20, location);
  v21 = a3;
  [v17 startQuery:v19];
  objc_destroyWeak(&v20);
  objc_destroyWeak(location);
}

uint64_t __87__PXMediaTypeInfoManager__installMobileAssetAsUserInitiated_timeout_completionHandler___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if (*(v1 + 24) == 1)
  {
    *(v1 + 24) = 0;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __87__PXMediaTypeInfoManager__installMobileAssetAsUserInitiated_timeout_completionHandler___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "PXMediaTypeInfoManager - Lookup timed out.", v5, 2u);
    }

    return (*(*(v3 + 32) + 16))();
  }

  return result;
}

void __87__PXMediaTypeInfoManager__installMobileAssetAsUserInitiated_timeout_completionHandler___block_invoke_325(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = _Block_copy(*(a1 + 40));
  [v1 addObject:v2];
}

void __87__PXMediaTypeInfoManager__installMobileAssetAsUserInitiated_timeout_completionHandler___block_invoke_2_327(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = [a2 firstObject];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAssetQueryCallbackWithAsset:v7 error:v5 userInitiated:*(a1 + 40)];
}

- (void)_handleAssetQueryCallbackWithAsset:(id)a3 error:(id)a4 userInitiated:(BOOL)a5
{
  v5 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [v8 state];
    if (v10 == 1)
    {
      v18 = PLUIGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "PXMediaTypeInfoManager - Asset installed.", &buf, 2u);
      }

      [(PXMediaTypeInfoManager *)self _processPendingCallbacksWithAsset:v8];
    }

    else if (!v10)
    {
      v11 = [MEMORY[0x1E69B18C0] nonUserInitiatedDownloadsAllowed];
      v12 = PLUIGetLog();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "PXMediaTypeInfoManager - Asset not present, will download.", &buf, 2u);
        }

        [v8 setUserInitiatedDownload:v5];
        objc_initWeak(&location, self);
        objc_initWeak(&from, v8);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __81__PXMediaTypeInfoManager__handleAssetQueryCallbackWithAsset_error_userInitiated___block_invoke;
        v21[3] = &unk_1E773D4A8;
        objc_copyWeak(&v22, &location);
        objc_copyWeak(&v23, &from);
        [v8 setProgressHandler:v21];
        if (v5)
        {
          v14 = *MEMORY[0x1E69B1880];
          v26 = *MEMORY[0x1E69B1878];
          v27 = v14;
          *&buf = MEMORY[0x1E695E118];
          *(&buf + 1) = MEMORY[0x1E695E118];
          v15 = *MEMORY[0x1E69B1898];
          v28 = *MEMORY[0x1E69B1888];
          v29 = v15;
          v32 = MEMORY[0x1E695E118];
          v33 = MEMORY[0x1E695E118];
          v30 = *MEMORY[0x1E69B18A0];
          v34 = *MEMORY[0x1E69B18B8];
          v16 = 5;
        }

        else
        {
          v19 = *MEMORY[0x1E69B1888];
          v26 = *MEMORY[0x1E69B1880];
          v27 = v19;
          *&buf = MEMORY[0x1E695E118];
          *(&buf + 1) = MEMORY[0x1E695E118];
          v28 = *MEMORY[0x1E69B1898];
          v32 = MEMORY[0x1E695E118];
          v16 = 3;
        }

        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v26 count:v16];
        [v8 beginDownloadWithOptions:v20];

        objc_destroyWeak(&v23);
        objc_destroyWeak(&v22);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
      }

      else
      {
        if (v13)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "PXMediaTypeInfoManager - Asset not present, not allowed to download.", &buf, 2u);
        }

        [(PXMediaTypeInfoManager *)self _processPendingCallbacksWithAsset:0];
      }
    }
  }

  else
  {
    v17 = PLUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "PXMediaTypeInfoManager - Query returned no asset! Error: %@", &buf, 0xCu);
    }

    [(PXMediaTypeInfoManager *)self _processPendingCallbacksWithAsset:0];
  }
}

void __81__PXMediaTypeInfoManager__handleAssetQueryCallbackWithAsset_error_userInitiated___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAssetDownloadProgressWithAsset:v5 error:v4];
}

- (void)_handleAssetDownloadProgressWithAsset:(id)a3 error:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PXMediaTypeInfoManager - Download returned error: %@", &v12, 0xCu);
    }

    v9 = self;
    v10 = 0;
LABEL_5:
    [(PXMediaTypeInfoManager *)v9 _processPendingCallbacksWithAsset:v10];
    goto LABEL_6;
  }

  if (v6 && [v6 state] == 1)
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "PXMediaTypeInfoManager - Did download asset.", &v12, 2u);
    }

    v9 = self;
    v10 = v6;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_processPendingCallbacksWithAsset:(id)a3
{
  v4 = a3;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__145425;
  v12[4] = __Block_byref_object_dispose__145426;
  v13 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PXMediaTypeInfoManager__processPendingCallbacksWithAsset___block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = v12;
  dispatch_sync(serialQueue, block);
  v6 = dispatch_get_global_queue(25, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__PXMediaTypeInfoManager__processPendingCallbacksWithAsset___block_invoke_2;
  v8[3] = &unk_1E7749A28;
  v9 = v4;
  v10 = v12;
  v7 = v4;
  dispatch_async(v6, v8);

  _Block_object_dispose(v12, 8);
}

uint64_t __60__PXMediaTypeInfoManager__processPendingCallbacksWithAsset___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 16);

  return [v5 removeAllObjects];
}

void __60__PXMediaTypeInfoManager__processPendingCallbacksWithAsset___block_invoke_2(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60__PXMediaTypeInfoManager__processPendingCallbacksWithAsset___block_invoke_3;
  v2[3] = &unk_1E773D480;
  v3 = *(a1 + 32);
  [v1 enumerateObjectsUsingBlock:v2];
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = PXMediaTypeInfoManager;
  v2 = [(PXMediaTypeInfoManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("PXMediaTypeInfoManagerSerialQueue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingCompletionHandlers = v2->_pendingCompletionHandlers;
    v2->_pendingCompletionHandlers = v5;
  }

  return v2;
}

- (PXMediaTypeInfoManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXMediaTypeInfoManager.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXMediaTypeInfoManager init]"}];

  abort();
}

+ (PXMediaTypeInfoManager)sharedManager
{
  if (sharedManager_predicate != -1)
  {
    dispatch_once(&sharedManager_predicate, &__block_literal_global_145445);
  }

  v3 = sharedManager__sharedManager;

  return v3;
}

void __39__PXMediaTypeInfoManager_sharedManager__block_invoke()
{
  v0 = [[PXMediaTypeInfoManager alloc] _init];
  v1 = sharedManager__sharedManager;
  sharedManager__sharedManager = v0;
}

@end