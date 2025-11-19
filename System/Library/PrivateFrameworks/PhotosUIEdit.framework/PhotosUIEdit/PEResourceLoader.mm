@interface PEResourceLoader
+ (void)_processResult:(id)a3 forRequest:(id)a4 resultHandler:(id)a5;
- (BOOL)_adjustmentDataIsSupported:(id)a3;
- (BOOL)cancelAllRequests;
- (PEResourceLoader)initWithAsset:(id)a3 loadingQueue:(id)a4;
- (int64_t)workImageVersionForContentEditingInput:(id)a3;
- (void)_dequeueRequestIfNeeded;
- (void)_downloadSignpostEvent:(const char *)a3;
- (void)_handleSuccess:(BOOL)a3 withResult:(id)a4 forRequest:(id)a5 error:(id)a6;
- (void)_initiateRequest:(id)a3;
- (void)_processContentEditingInputRequestCompletion:(id)a3 info:(id)a4 forRequest:(id)a5;
- (void)_processLoadedContentEditingInput:(id)a3 info:(id)a4 forRequest:(id)a5;
- (void)_requestContentEditingInputForRequest:(id)a3 networkAccessAllowed:(BOOL)a4;
- (void)_setResourcesAvailability:(int64_t)a3;
- (void)enqueueRequest:(id)a3;
- (void)setCurrentRequest:(id)a3;
@end

@implementation PEResourceLoader

- (void)_downloadSignpostEvent:(const char *)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(PEResourceLoader *)self currentRequest];
  if (v4)
  {
    v5 = PLPhotoEditGetLog();
    v6 = os_signpost_id_make_with_pointer(v5, v4);

    v7 = PLPhotoEditGetLog();
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = 136315138;
      v10 = a3;
      _os_signpost_emit_with_name_impl(&dword_25E6E9000, v8, OS_SIGNPOST_EVENT, v6, "EnterEditResourceRequest", "%s", &v9, 0xCu);
    }
  }
}

- (void)_dequeueRequestIfNeeded
{
  v4 = [(PEResourceLoader *)self _enqueuedRequests];
  if ([v4 count])
  {
    v3 = [v4 objectAtIndexedSubscript:0];
    [v4 removeObject:v3];
    [(PEResourceLoader *)self _initiateRequest:v3];
  }
}

- (void)_handleSuccess:(BOOL)a3 withResult:(id)a4 forRequest:(id)a5 error:(id)a6
{
  v8 = a3;
  v22[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v11 delegate];
  if ([(PEResourceLoader *)self simulateEditEntryError])
  {
    v14 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_25E6E9000, v14, OS_LOG_TYPE_DEFAULT, "PEResourceLoader: Simulating edit entry error", &v19, 2u);
    }

    v21 = *MEMORY[0x277CCA068];
    v22[0] = @"Simulated error, because PEProtoSettings.simulateEditEntryError is YES.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PEProtoSettingsErrorDomain" code:0 userInfo:v15];

    v8 = 0;
    v12 = v16;
  }

  v17 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    if (v8)
    {
      v18 = @"YES";
    }

    v19 = 138412290;
    v20 = v18;
    _os_log_impl(&dword_25E6E9000, v17, OS_LOG_TYPE_DEFAULT, "Resource loading success: %@", &v19, 0xCu);
  }

  if (v8)
  {
    [v10 _setRetrievedVersion:{objc_msgSend(v11, "_resolvedVersion")}];
    [v13 resourceLoader:self request:v11 didCompleteWithResult:v10];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v13 resourceLoader:self request:v11 mediaLoadDidFailWithError:v12];
  }

  [(PEResourceLoader *)self setCurrentRequest:0];
  self->__contentEditingRequestID = 0;
  [(PEResourceLoader *)self _dequeueRequestIfNeeded];
}

- (void)_requestContentEditingInputForRequest:(id)a3 networkAccessAllowed:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PEResourceLoader *)self asset];
  objc_initWeak(&location, self);
  v8 = [MEMORY[0x277CBEAA8] now];
  if ([(PEResourceLoader *)self resourcesAvailability]== 1)
  {
    v9 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v9, OS_LOG_TYPE_DEFAULT, "[PEResourceLoader _requestContentEditingInputForRequest:]: requesting PHContentEditingInput (without download)", buf, 2u);
    }

    v10 = "Requesting PHContentEditingInput (without download)";
  }

  else
  {
    if ([(PEResourceLoader *)self resourcesAvailability]!= 2)
    {
      goto LABEL_10;
    }

    v9 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v9, OS_LOG_TYPE_DEFAULT, "[PEResourceLoader _requestContentEditingInputForRequest:]: requesting PHContentEditingInput and downloading original", buf, 2u);
    }

    v10 = "Requesting PHContentEditingInput and downloading original";
  }

  [(PEResourceLoader *)self _downloadSignpostEvent:v10];
LABEL_10:
  v11 = objc_alloc_init(MEMORY[0x277CD9850]);
  [v11 setForceReturnFullLivePhoto:1];
  [v6 targetSize];
  [v11 setTargetSize:?];
  [v11 setContentMode:0];
  v12 = [v6 version] == 1 || -[PEResourceLoader forceRunAsUnadjustedAsset](self, "forceRunAsUnadjustedAsset");
  [v11 setForceRunAsUnadjustedAsset:v12];
  [v11 setSkipDisplaySizeImage:{-[PEResourceLoader skipDisplaySizeImage](self, "skipDisplaySizeImage")}];
  [v11 setSkipLivePhotoImageAndAVAsset:{objc_msgSend(v6, "skipLivePhotoImageAndAVAsset")}];
  v13 = [(PEResourceLoader *)self loadingQueue];
  [v11 setResultHandlerQueue:v13];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __79__PEResourceLoader__requestContentEditingInputForRequest_networkAccessAllowed___block_invoke;
  v35[3] = &unk_279A31258;
  v14 = v6;
  v36 = v14;
  [v11 setCanHandleRAW:v35];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __79__PEResourceLoader__requestContentEditingInputForRequest_networkAccessAllowed___block_invoke_2;
  v33[3] = &unk_279A31280;
  objc_copyWeak(&v34, &location);
  [v11 setCanHandleAdjustmentData:v33];
  [v11 setRequireOriginalsDownloaded:{objc_msgSend(v14, "requireOriginalsDownloaded")}];
  if (v4)
  {
    v15 = [v14 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v15 photoEditResourceLoadRequestWillBeginDownload:v14];
    }

    if (objc_opt_respondsToSelector())
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __79__PEResourceLoader__requestContentEditingInputForRequest_networkAccessAllowed___block_invoke_3;
      v29[3] = &unk_279A312D0;
      v30 = v15;
      v31 = self;
      v32 = v14;
      [v11 setProgressHandler:v29];
    }

    [v11 setNetworkAccessAllowed:1];
    [(PEResourceLoader *)self _downloadSignpostEvent:"Network access allowed"];
  }

  else
  {
    if ([(PEResourceLoader *)self resourcesAvailability]== 1)
    {
      v16 = "Network access NOT allowed for resource locality check";
    }

    else
    {
      v16 = "Network access NOT allowed";
    }

    [(PEResourceLoader *)self _downloadSignpostEvent:v16];
  }

  *buf = 0;
  v26 = buf;
  v27 = 0x2020000000;
  v28 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__PEResourceLoader__requestContentEditingInputForRequest_networkAccessAllowed___block_invoke_5;
  v19[3] = &unk_279A312F8;
  v22 = buf;
  v17 = v8;
  v20 = v17;
  v24 = v4;
  objc_copyWeak(&v23, &location);
  v18 = v14;
  v21 = v18;
  self->__contentEditingRequestID = [v7 requestContentEditingInputWithOptions:v11 completionHandler:v19];

  objc_destroyWeak(&v23);
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&v34);

  objc_destroyWeak(&location);
}

uint64_t __79__PEResourceLoader__requestContentEditingInputForRequest_networkAccessAllowed___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAssetLoadingAsRaw:{objc_msgSend(MEMORY[0x277D3B450], "canLoadAssetAsRawForInteractiveEditingWithImageProperties:", a2)}];
  v3 = *(a1 + 32);

  return [v3 assetLoadingAsRaw];
}

uint64_t __79__PEResourceLoader__requestContentEditingInputForRequest_networkAccessAllowed___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 formatVersion];
  v6 = [v4 formatIdentifier];
  v7 = v6;
  if (v5)
  {
    v2 = [v4 formatVersion];
    v8 = [v7 stringByAppendingFormat:@" / %@", v2];
  }

  else
  {
    v8 = v6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAdjustmentIdentifierAndVersion:v8];

  if (v5)
  {
  }

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 _adjustmentDataIsSupported:v4];

  return v11;
}

void __79__PEResourceLoader__requestContentEditingInputForRequest_networkAccessAllowed___block_invoke_3(uint64_t a1, double a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__PEResourceLoader__requestContentEditingInputForRequest_networkAccessAllowed___block_invoke_4;
  v7[3] = &unk_279A312A8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __79__PEResourceLoader__requestContentEditingInputForRequest_networkAccessAllowed___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 8);
  if (!*(v7 + 24) || (_PFAssertContinueHandler(), v7 = *(*(a1 + 48) + 8), (*(v7 + 24) & 1) == 0))
  {
    *(v7 + 24) = 1;
    [*(a1 + 32) timeIntervalSinceNow];
    if (v5)
    {
      v9 = v8;
      v10 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = @"no";
        if (*(a1 + 64))
        {
          v11 = @"yes";
        }

        v16 = 134218242;
        v17 = -v9;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_25E6E9000, v10, OS_LOG_TYPE_DEFAULT, "PEResourceLoader - PERF - done requesting PHContentEditingInput with duration: %fs  did download? %@", &v16, 0x16u);
      }

      v12 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        [v5 mediaType];
        PHAssetMediaTypeDebugDescription();
        v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [v5 mediaSubtypes];
        v14 = PHAssetMediaSubtypesDebugDescription();
        v16 = 138412546;
        v17 = v13;
        v18 = 2112;
        v19 = v14;
        _os_log_impl(&dword_25E6E9000, v12, OS_LOG_TYPE_DEFAULT, "PEResourceLoader - PERF - media type: %@ / media subtypes: %@", &v16, 0x16u);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _processContentEditingInputRequestCompletion:v5 info:v6 forRequest:*(a1 + 40)];
  }
}

- (BOOL)_adjustmentDataIsSupported:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D3AD18]);
  v5 = [v3 data];
  v6 = [v3 formatIdentifier];
  v7 = [v3 formatVersion];
  v18 = 0;
  v8 = [v4 loadCompositionFrom:v5 formatIdentifier:v6 formatVersion:v7 sidecarData:0 error:&v18];
  v9 = v18;

  v10 = PLPhotoEditGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      v12 = [v3 formatIdentifier];
      v13 = [v3 formatVersion];
      *buf = 138412546;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v14 = "PEResourceLoader: Loaded previous adjustments from data with a supported format: %@/%@";
      v15 = v10;
      v16 = 22;
LABEL_6:
      _os_log_impl(&dword_25E6E9000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }
  }

  else if (v11)
  {
    v12 = [v3 formatIdentifier];
    v13 = [v3 formatVersion];
    *buf = 138412802;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v9;
    v14 = "PEResourceLoader: Previous adjustments data has an unsupported format (%@/%@) or unsupported adjustments. Starting from current render, treating previous adjustments as opaque. Error: %@";
    v15 = v10;
    v16 = 32;
    goto LABEL_6;
  }

  return v8 != 0;
}

- (void)_processContentEditingInputRequestCompletion:(id)a3 info:(id)a4 forRequest:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PEResourceLoader *)self asset];
  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277CD9BA8]];
  v13 = [v9 objectForKeyedSubscript:*MEMORY[0x277CD9BB0]];
  v14 = [v13 BOOLValue];

  if ([(PEResourceLoader *)self resourcesAvailability]== 2)
  {
    [(PEResourceLoader *)self _downloadSignpostEvent:"Download completed"];
    v15 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v27) = v8 != 0;
      _os_log_impl(&dword_25E6E9000, v15, OS_LOG_TYPE_DEFAULT, "download completed - success: %d", buf, 8u);
    }

    v16 = [v10 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v16 photoEditResourceLoadRequestDidCompleteDownload:v10];
    }
  }

  if (v8)
  {
    [(PEResourceLoader *)self _processLoadedContentEditingInput:v8 info:v9 forRequest:v10];
  }

  else if (v14 && [(PEResourceLoader *)self resourcesAvailability]== 1)
  {
    v17 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v11;
      _os_log_impl(&dword_25E6E9000, v17, OS_LOG_TYPE_DEFAULT, "download is required for asset: %@", buf, 0xCu);
    }

    [(PEResourceLoader *)self _downloadSignpostEvent:"Download is required"];
    [(PEResourceLoader *)self _setResourcesAvailability:2];
    [(PEResourceLoader *)self _requestContentEditingInputForRequest:v10 networkAccessAllowed:1];
  }

  else
  {
    v18 = [v9 objectForKeyedSubscript:*MEMORY[0x277CD9BA0]];
    if ([v18 BOOLValue])
    {
      [(PEResourceLoader *)self _downloadSignpostEvent:"Canceled download"];
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD9CA8] code:3072 userInfo:0];

      v12 = v19;
    }

    else
    {
      [(PEResourceLoader *)self _downloadSignpostEvent:"Unable to download"];
    }

    [(PEResourceLoader *)self _setResourcesAvailability:4];
    v20 = [v10 delegate];
    if (objc_opt_respondsToSelector())
    {
      v21 = [v20 callbackQueue];
    }

    else
    {
      v21 = MEMORY[0x277D85CD0];
      v22 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__PEResourceLoader__processContentEditingInputRequestCompletion_info_forRequest___block_invoke;
    block[3] = &unk_279A31230;
    block[4] = self;
    v24 = v10;
    v12 = v12;
    v25 = v12;
    dispatch_async(v21, block);
  }
}

- (void)_processLoadedContentEditingInput:(id)a3 info:(id)a4 forRequest:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [(PEResourceLoader *)self asset];
  v10 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v10, OS_LOG_TYPE_DEFAULT, "PEResourceLoader: ContentEditingInput has loaded; now processing", buf, 2u);
  }

  if ([(PEResourceLoader *)self resourcesAvailability]== 1)
  {
    v11 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v9;
      _os_log_impl(&dword_25E6E9000, v11, OS_LOG_TYPE_DEFAULT, "nothing to download, can continue loading stuff right away for asset: %@", buf, 0xCu);
    }

    [(PEResourceLoader *)self _downloadSignpostEvent:"Nothing to download"];
  }

  [(PEResourceLoader *)self _setResourcesAvailability:3];
  [v8 _resolveVersionIfNeededWithWorkVersion:{-[PEResourceLoader workImageVersionForContentEditingInput:](self, "workImageVersionForContentEditingInput:", v7)}];
  v12 = [v7 uniformTypeIdentifier];
  if (v12)
  {
    v13 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v12];
    v14 = [v13 conformsToType:*MEMORY[0x277CE1E48]];
  }

  else
  {
    v14 = 0;
  }

  v15 = +[PEResourceLoadResult _resultWithContentEditingInput:asset:assetLoadingAsRaw:](PEResourceLoadResult, "_resultWithContentEditingInput:asset:assetLoadingAsRaw:", v7, v9, [v8 assetLoadingAsRaw] & v14);
  [v15 _setRetrievedVersion:{objc_msgSend(v8, "_resolvedVersion")}];
  v16 = [(PEResourceLoader *)self adjustmentIdentifierAndVersion];
  [v15 _setAdjustmentIdentifierAndVersion:v16];

  v17 = [v8 delegate];
  if (objc_opt_respondsToSelector())
  {
    v18 = [v17 callbackQueue];
  }

  else
  {
    v18 = MEMORY[0x277D85CD0];
    v19 = MEMORY[0x277D85CD0];
  }

  v20 = [(PEResourceLoader *)self processingQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __70__PEResourceLoader__processLoadedContentEditingInput_info_forRequest___block_invoke;
  v24[3] = &unk_279A31208;
  v25 = v15;
  v26 = v8;
  v27 = v18;
  v28 = self;
  v21 = v18;
  v22 = v8;
  v23 = v15;
  dispatch_async(v20, v24);
}

void __70__PEResourceLoader__processLoadedContentEditingInput_info_forRequest___block_invoke(id *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__PEResourceLoader__processLoadedContentEditingInput_info_forRequest___block_invoke_2;
  v10[3] = &unk_279A311E0;
  v4 = a1 + 7;
  *&v5 = a1[6];
  *(&v5 + 1) = *v4;
  v9 = v5;
  v6 = a1[4];
  v7 = a1[5];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [PEResourceLoader _processResult:v2 forRequest:v3 resultHandler:v10];
}

void __70__PEResourceLoader__processLoadedContentEditingInput_info_forRequest___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v6, OS_LOG_TYPE_DEFAULT, "Resource loader has processed results", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__PEResourceLoader__processLoadedContentEditingInput_info_forRequest___block_invoke_359;
  block[3] = &unk_279A311B8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v14 = a2;
  v11 = v8;
  v12 = *(a1 + 56);
  v13 = v5;
  v9 = v5;
  dispatch_async(v7, block);
}

- (int64_t)workImageVersionForContentEditingInput:(id)a3
{
  v3 = [a3 baseVersion];
  v4 = 2;
  if (v3 != 1)
  {
    v4 = 3;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

- (void)_initiateRequest:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PEResourceLoader *)self setCurrentRequest:v4];
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PEResourceLoader *)self asset];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_25E6E9000, v5, OS_LOG_TYPE_DEFAULT, "[PEResourceLoader _initiateRequest:]: initiating request for: %@", &v7, 0xCu);
  }

  [(PEResourceLoader *)self _setResourcesAvailability:1];
  [(PEResourceLoader *)self _requestContentEditingInputForRequest:v4 networkAccessAllowed:0];
}

- (void)setCurrentRequest:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  currentRequest = self->_currentRequest;
  p_currentRequest = &self->_currentRequest;
  v6 = currentRequest;
  if (currentRequest != v5)
  {
    if (v6)
    {
      v9 = PLPhotoEditGetLog();
      v10 = os_signpost_id_make_with_pointer(v9, *p_currentRequest);

      v11 = PLPhotoEditGetLog();
      v12 = v11;
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        LOWORD(v23[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_25E6E9000, v12, OS_SIGNPOST_INTERVAL_END, v10, "EnterEditResourceRequest", "", v23, 2u);
      }
    }

    if (v5)
    {
      v13 = PLPhotoEditGetLog();
      v14 = os_signpost_id_make_with_pointer(v13, v5);

      v15 = PLPhotoEditGetLog();
      v16 = v15;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        v17 = [(PEResourceLoadRequest *)*p_currentRequest version];
        v18 = [(PEResourceLoadRequest *)*p_currentRequest requireLocalResources];
        v19 = [(PEResourceLoadRequest *)*p_currentRequest requireAdjustments];
        [(PEResourceLoadRequest *)*p_currentRequest targetSize];
        *&v20 = v20;
        v21 = *&v20;
        [(PEResourceLoadRequest *)*p_currentRequest targetSize];
        *&v22 = v22;
        v23[0] = 67110144;
        v23[1] = v17;
        v24 = 1024;
        v25 = v18;
        v26 = 1024;
        v27 = v19;
        v28 = 2048;
        v29 = v21;
        v30 = 2048;
        v31 = *&v22;
        _os_signpost_emit_with_name_impl(&dword_25E6E9000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "EnterEditResourceRequest", "Version=%d, requireLocalResources=%d, requireAdjustments=%d, targetSize={%.4f,%.4f}", v23, 0x28u);
      }
    }

    objc_storeStrong(p_currentRequest, a3);
  }
}

- (void)_setResourcesAvailability:(int64_t)a3
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_resourcesAvailability == a3)
  {
    return;
  }

  v5 = [(PEResourceLoader *)self currentRequest];
  v6 = [v5 delegate];

  v7 = objc_opt_respondsToSelector();
  v8 = PLPhotoEditGetLog();
  v9 = PLPhotoEditGetLog();
  v10 = os_signpost_id_make_with_pointer(v9, self);

  resourcesAvailability = self->_resourcesAvailability;
  v12 = a3 - 1;
  if (a3 != 1 || resourcesAvailability == 1)
  {
    if (a3 != 1 && resourcesAvailability == 1)
    {
      v19 = v8;
      v20 = v19;
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        LOWORD(v26) = 0;
        _os_signpost_emit_with_name_impl(&dword_25E6E9000, v20, OS_SIGNPOST_INTERVAL_END, v10, "EnterEditResourceRequestChecking", " enableTelemetry=YES ", &v26, 2u);
      }

      resourcesAvailability = self->_resourcesAvailability;
    }

    if (a3 == 2 && resourcesAvailability != 2)
    {
      v21 = v8;
      if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_25;
      }

      v22 = v21;
      if (!os_signpost_enabled(v21))
      {
        goto LABEL_25;
      }

      LOWORD(v26) = 0;
      v17 = v22;
      v18 = OS_SIGNPOST_INTERVAL_BEGIN;
      goto LABEL_24;
    }
  }

  else
  {
    v13 = v8;
    v14 = v13;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v26) = 0;
      _os_signpost_emit_with_name_impl(&dword_25E6E9000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "EnterEditResourceRequestChecking", " enableTelemetry=YES ", &v26, 2u);
    }

    resourcesAvailability = self->_resourcesAvailability;
  }

  if (a3 == 2 || resourcesAvailability != 2)
  {
    goto LABEL_26;
  }

  v15 = v8;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v15))
    {
      LOWORD(v26) = 0;
      v17 = v16;
      v18 = OS_SIGNPOST_INTERVAL_END;
LABEL_24:
      _os_signpost_emit_with_name_impl(&dword_25E6E9000, v17, v18, v10, "EnterEditResourceRequestDownloading", " enableTelemetry=YES ", &v26, 2u);
    }
  }

LABEL_25:

  resourcesAvailability = self->_resourcesAvailability;
LABEL_26:
  self->_resourcesAvailability = a3;
  if (v7)
  {
    v23 = [(PEResourceLoader *)self currentRequest];
    [v6 photoEditResourceLoadRequestResourcesAvailabilityChanged:v23 previousAvailability:resourcesAvailability currentAvailability:a3];
  }

  v24 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (v12 > 3)
    {
      v25 = @"Unknown";
    }

    else
    {
      v25 = off_279A31318[v12];
    }

    v26 = 138543362;
    v27 = v25;
    _os_log_impl(&dword_25E6E9000, v24, OS_LOG_TYPE_DEFAULT, "[PEResourceLoader _setResourcesAvailability:]: availablility updated to: %{public}@", &v26, 0xCu);
  }
}

- (BOOL)cancelAllRequests
{
  v3 = [(PEResourceLoader *)self _enqueuedRequests];
  [v3 removeAllObjects];

  contentEditingRequestID = self->__contentEditingRequestID;
  if (contentEditingRequestID)
  {
    v5 = [(PEResourceLoader *)self asset];
    [v5 cancelContentEditingInputRequest:self->__contentEditingRequestID];
  }

  self->__contentEditingRequestID = 0;
  [(PEResourceLoader *)self setCurrentRequest:0];
  return contentEditingRequestID != 0;
}

- (void)enqueueRequest:(id)a3
{
  v6 = [a3 copy];
  v4 = [(PEResourceLoader *)self currentRequest];

  if (v4)
  {
    v5 = [(PEResourceLoader *)self _enqueuedRequests];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(PEResourceLoader *)self _setEnqueuedRequests:v5];
    }

    [v5 addObject:v6];
  }

  else
  {
    [(PEResourceLoader *)self _initiateRequest:v6];
  }
}

- (PEResourceLoader)initWithAsset:(id)a3 loadingQueue:(id)a4
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = PEResourceLoader;
  v10 = [(PEResourceLoader *)&v16 init];
  if (v10)
  {
    if (!v8)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:a2 object:v10 file:@"PEResourceLoader.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
    }

    objc_storeStrong(&v10->_asset, a3);
    objc_storeStrong(&v10->_loadingQueue, a4);
    if (([v8 isResourceDownloadPossible] & 1) == 0)
    {
      v10->_resourcesAvailability = 3;
    }

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("PUPhotoEditResourceLoader", v11);
    processingQueue = v10->_processingQueue;
    v10->_processingQueue = v12;
  }

  return v10;
}

+ (void)_processResult:(id)a3 forRequest:(id)a4 resultHandler:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  v8 = [v6 editSource];
  v9 = [v6 contentEditingInput];
  v35 = 0;
  v10 = [PESerializationUtility compositionControllerForContentEditingInput:v9 asShot:0 source:v8 error:&v35];
  v11 = v35;
  if (v10)
  {
    v34 = 0;
    v12 = [PESerializationUtility compositionControllerForContentEditingInput:v9 asShot:1 source:v8 error:&v34];
    v30 = v34;
    v13 = [v12 composition];

    [v6 _setCompositionController:v10];
    [v6 _setOriginalComposition:v13];
    v14 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v14, OS_LOG_TYPE_DEFAULT, "Compositions rehydrated", buf, 2u);
    }

    if ([v8 mediaType] != 3 && objc_msgSend(v8, "mediaType") != 2)
    {
      v20 = 0;
LABEL_22:
      v7[2](v7, 1, v20);

      goto LABEL_23;
    }

    v28 = v13;
    v29 = v11;
    v15 = MEMORY[0x277D3A938];
    v16 = [v6 compositionController];
    v17 = [v16 composition];
    v18 = [v15 videoPropertiesRequestWithComposition:v17];

    [v18 setName:@"PEResourceLoader-videoProperties"];
    v33 = 0;
    v19 = [v18 submitSynchronous:&v33];
    v20 = v33;
    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v19;
        v21 = [v8 videoEditSource];
        v22 = [v21 videoURL];
        v23 = [v22 path];
        v26 = PFVideoComplementMetadataForVideoAtPath();

        if (v26)
        {
          [v26 imageDisplayTime];
        }

        else
        {
          v31 = 0uLL;
          v32 = 0;
        }

        v11 = v29;
        v19 = v27;
        *buf = v31;
        v37 = v32;
        [v6 setVideoComplementOriginalStillImageTime:buf];

        goto LABEL_21;
      }

      *buf = *MEMORY[0x277CC08F0];
      v37 = *(MEMORY[0x277CC08F0] + 16);
      [v6 setVideoComplementOriginalStillImageTime:buf];
    }

    else
    {
      v25 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v20;
        _os_log_impl(&dword_25E6E9000, v25, OS_LOG_TYPE_ERROR, "Unable to load video properties: %@", buf, 0xCu);
      }
    }

    v11 = v29;
LABEL_21:

    v13 = v28;
    goto LABEL_22;
  }

  v24 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v11;
    _os_log_impl(&dword_25E6E9000, v24, OS_LOG_TYPE_ERROR, "Unable to load image properties: %@", buf, 0xCu);
  }

  v7[2](v7, 0, v11);
  v20 = 0;
LABEL_23:
}

@end