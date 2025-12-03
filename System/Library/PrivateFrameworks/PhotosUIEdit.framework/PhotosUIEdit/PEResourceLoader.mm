@interface PEResourceLoader
+ (void)_processResult:(id)result forRequest:(id)request resultHandler:(id)handler;
- (BOOL)_adjustmentDataIsSupported:(id)supported;
- (BOOL)cancelAllRequests;
- (PEResourceLoader)initWithAsset:(id)asset loadingQueue:(id)queue;
- (int64_t)workImageVersionForContentEditingInput:(id)input;
- (void)_dequeueRequestIfNeeded;
- (void)_downloadSignpostEvent:(const char *)event;
- (void)_handleSuccess:(BOOL)success withResult:(id)result forRequest:(id)request error:(id)error;
- (void)_initiateRequest:(id)request;
- (void)_processContentEditingInputRequestCompletion:(id)completion info:(id)info forRequest:(id)request;
- (void)_processLoadedContentEditingInput:(id)input info:(id)info forRequest:(id)request;
- (void)_requestContentEditingInputForRequest:(id)request networkAccessAllowed:(BOOL)allowed;
- (void)_setResourcesAvailability:(int64_t)availability;
- (void)enqueueRequest:(id)request;
- (void)setCurrentRequest:(id)request;
@end

@implementation PEResourceLoader

- (void)_downloadSignpostEvent:(const char *)event
{
  v11 = *MEMORY[0x277D85DE8];
  currentRequest = [(PEResourceLoader *)self currentRequest];
  if (currentRequest)
  {
    v5 = PLPhotoEditGetLog();
    v6 = os_signpost_id_make_with_pointer(v5, currentRequest);

    v7 = PLPhotoEditGetLog();
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = 136315138;
      eventCopy = event;
      _os_signpost_emit_with_name_impl(&dword_25E6E9000, v8, OS_SIGNPOST_EVENT, v6, "EnterEditResourceRequest", "%s", &v9, 0xCu);
    }
  }
}

- (void)_dequeueRequestIfNeeded
{
  _enqueuedRequests = [(PEResourceLoader *)self _enqueuedRequests];
  if ([_enqueuedRequests count])
  {
    v3 = [_enqueuedRequests objectAtIndexedSubscript:0];
    [_enqueuedRequests removeObject:v3];
    [(PEResourceLoader *)self _initiateRequest:v3];
  }
}

- (void)_handleSuccess:(BOOL)success withResult:(id)result forRequest:(id)request error:(id)error
{
  successCopy = success;
  v22[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  requestCopy = request;
  errorCopy = error;
  delegate = [requestCopy delegate];
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

    successCopy = 0;
    errorCopy = v16;
  }

  v17 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    if (successCopy)
    {
      v18 = @"YES";
    }

    v19 = 138412290;
    v20 = v18;
    _os_log_impl(&dword_25E6E9000, v17, OS_LOG_TYPE_DEFAULT, "Resource loading success: %@", &v19, 0xCu);
  }

  if (successCopy)
  {
    [resultCopy _setRetrievedVersion:{objc_msgSend(requestCopy, "_resolvedVersion")}];
    [delegate resourceLoader:self request:requestCopy didCompleteWithResult:resultCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegate resourceLoader:self request:requestCopy mediaLoadDidFailWithError:errorCopy];
  }

  [(PEResourceLoader *)self setCurrentRequest:0];
  self->__contentEditingRequestID = 0;
  [(PEResourceLoader *)self _dequeueRequestIfNeeded];
}

- (void)_requestContentEditingInputForRequest:(id)request networkAccessAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  requestCopy = request;
  asset = [(PEResourceLoader *)self asset];
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
  [requestCopy targetSize];
  [v11 setTargetSize:?];
  [v11 setContentMode:0];
  v12 = [requestCopy version] == 1 || -[PEResourceLoader forceRunAsUnadjustedAsset](self, "forceRunAsUnadjustedAsset");
  [v11 setForceRunAsUnadjustedAsset:v12];
  [v11 setSkipDisplaySizeImage:{-[PEResourceLoader skipDisplaySizeImage](self, "skipDisplaySizeImage")}];
  [v11 setSkipLivePhotoImageAndAVAsset:{objc_msgSend(requestCopy, "skipLivePhotoImageAndAVAsset")}];
  loadingQueue = [(PEResourceLoader *)self loadingQueue];
  [v11 setResultHandlerQueue:loadingQueue];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __79__PEResourceLoader__requestContentEditingInputForRequest_networkAccessAllowed___block_invoke;
  v35[3] = &unk_279A31258;
  v14 = requestCopy;
  v36 = v14;
  [v11 setCanHandleRAW:v35];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __79__PEResourceLoader__requestContentEditingInputForRequest_networkAccessAllowed___block_invoke_2;
  v33[3] = &unk_279A31280;
  objc_copyWeak(&v34, &location);
  [v11 setCanHandleAdjustmentData:v33];
  [v11 setRequireOriginalsDownloaded:{objc_msgSend(v14, "requireOriginalsDownloaded")}];
  if (allowedCopy)
  {
    delegate = [v14 delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate photoEditResourceLoadRequestWillBeginDownload:v14];
    }

    if (objc_opt_respondsToSelector())
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __79__PEResourceLoader__requestContentEditingInputForRequest_networkAccessAllowed___block_invoke_3;
      v29[3] = &unk_279A312D0;
      v30 = delegate;
      selfCopy = self;
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
  v24 = allowedCopy;
  objc_copyWeak(&v23, &location);
  v18 = v14;
  v21 = v18;
  self->__contentEditingRequestID = [asset requestContentEditingInputWithOptions:v11 completionHandler:v19];

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

- (BOOL)_adjustmentDataIsSupported:(id)supported
{
  v25 = *MEMORY[0x277D85DE8];
  supportedCopy = supported;
  v4 = objc_alloc_init(MEMORY[0x277D3AD18]);
  data = [supportedCopy data];
  formatIdentifier = [supportedCopy formatIdentifier];
  formatVersion = [supportedCopy formatVersion];
  v18 = 0;
  v8 = [v4 loadCompositionFrom:data formatIdentifier:formatIdentifier formatVersion:formatVersion sidecarData:0 error:&v18];
  v9 = v18;

  v10 = PLPhotoEditGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      formatIdentifier2 = [supportedCopy formatIdentifier];
      formatVersion2 = [supportedCopy formatVersion];
      *buf = 138412546;
      v20 = formatIdentifier2;
      v21 = 2112;
      v22 = formatVersion2;
      v14 = "PEResourceLoader: Loaded previous adjustments from data with a supported format: %@/%@";
      v15 = v10;
      v16 = 22;
LABEL_6:
      _os_log_impl(&dword_25E6E9000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }
  }

  else if (v11)
  {
    formatIdentifier2 = [supportedCopy formatIdentifier];
    formatVersion2 = [supportedCopy formatVersion];
    *buf = 138412802;
    v20 = formatIdentifier2;
    v21 = 2112;
    v22 = formatVersion2;
    v23 = 2112;
    v24 = v9;
    v14 = "PEResourceLoader: Previous adjustments data has an unsupported format (%@/%@) or unsupported adjustments. Starting from current render, treating previous adjustments as opaque. Error: %@";
    v15 = v10;
    v16 = 32;
    goto LABEL_6;
  }

  return v8 != 0;
}

- (void)_processContentEditingInputRequestCompletion:(id)completion info:(id)info forRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  infoCopy = info;
  requestCopy = request;
  asset = [(PEResourceLoader *)self asset];
  v12 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CD9BA8]];
  v13 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CD9BB0]];
  bOOLValue = [v13 BOOLValue];

  if ([(PEResourceLoader *)self resourcesAvailability]== 2)
  {
    [(PEResourceLoader *)self _downloadSignpostEvent:"Download completed"];
    v15 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v27) = completionCopy != 0;
      _os_log_impl(&dword_25E6E9000, v15, OS_LOG_TYPE_DEFAULT, "download completed - success: %d", buf, 8u);
    }

    delegate = [requestCopy delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate photoEditResourceLoadRequestDidCompleteDownload:requestCopy];
    }
  }

  if (completionCopy)
  {
    [(PEResourceLoader *)self _processLoadedContentEditingInput:completionCopy info:infoCopy forRequest:requestCopy];
  }

  else if (bOOLValue && [(PEResourceLoader *)self resourcesAvailability]== 1)
  {
    v17 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = asset;
      _os_log_impl(&dword_25E6E9000, v17, OS_LOG_TYPE_DEFAULT, "download is required for asset: %@", buf, 0xCu);
    }

    [(PEResourceLoader *)self _downloadSignpostEvent:"Download is required"];
    [(PEResourceLoader *)self _setResourcesAvailability:2];
    [(PEResourceLoader *)self _requestContentEditingInputForRequest:requestCopy networkAccessAllowed:1];
  }

  else
  {
    v18 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CD9BA0]];
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
    delegate2 = [requestCopy delegate];
    if (objc_opt_respondsToSelector())
    {
      callbackQueue = [delegate2 callbackQueue];
    }

    else
    {
      callbackQueue = MEMORY[0x277D85CD0];
      v22 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__PEResourceLoader__processContentEditingInputRequestCompletion_info_forRequest___block_invoke;
    block[3] = &unk_279A31230;
    block[4] = self;
    v24 = requestCopy;
    v12 = v12;
    v25 = v12;
    dispatch_async(callbackQueue, block);
  }
}

- (void)_processLoadedContentEditingInput:(id)input info:(id)info forRequest:(id)request
{
  v31 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  requestCopy = request;
  asset = [(PEResourceLoader *)self asset];
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
      v30 = asset;
      _os_log_impl(&dword_25E6E9000, v11, OS_LOG_TYPE_DEFAULT, "nothing to download, can continue loading stuff right away for asset: %@", buf, 0xCu);
    }

    [(PEResourceLoader *)self _downloadSignpostEvent:"Nothing to download"];
  }

  [(PEResourceLoader *)self _setResourcesAvailability:3];
  [requestCopy _resolveVersionIfNeededWithWorkVersion:{-[PEResourceLoader workImageVersionForContentEditingInput:](self, "workImageVersionForContentEditingInput:", inputCopy)}];
  uniformTypeIdentifier = [inputCopy uniformTypeIdentifier];
  if (uniformTypeIdentifier)
  {
    v13 = [MEMORY[0x277CE1CB8] typeWithIdentifier:uniformTypeIdentifier];
    v14 = [v13 conformsToType:*MEMORY[0x277CE1E48]];
  }

  else
  {
    v14 = 0;
  }

  v15 = +[PEResourceLoadResult _resultWithContentEditingInput:asset:assetLoadingAsRaw:](PEResourceLoadResult, "_resultWithContentEditingInput:asset:assetLoadingAsRaw:", inputCopy, asset, [requestCopy assetLoadingAsRaw] & v14);
  [v15 _setRetrievedVersion:{objc_msgSend(requestCopy, "_resolvedVersion")}];
  adjustmentIdentifierAndVersion = [(PEResourceLoader *)self adjustmentIdentifierAndVersion];
  [v15 _setAdjustmentIdentifierAndVersion:adjustmentIdentifierAndVersion];

  delegate = [requestCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    callbackQueue = [delegate callbackQueue];
  }

  else
  {
    callbackQueue = MEMORY[0x277D85CD0];
    v19 = MEMORY[0x277D85CD0];
  }

  processingQueue = [(PEResourceLoader *)self processingQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __70__PEResourceLoader__processLoadedContentEditingInput_info_forRequest___block_invoke;
  v24[3] = &unk_279A31208;
  v25 = v15;
  v26 = requestCopy;
  v27 = callbackQueue;
  selfCopy = self;
  v21 = callbackQueue;
  v22 = requestCopy;
  v23 = v15;
  dispatch_async(processingQueue, v24);
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

- (int64_t)workImageVersionForContentEditingInput:(id)input
{
  baseVersion = [input baseVersion];
  v4 = 2;
  if (baseVersion != 1)
  {
    v4 = 3;
  }

  if (baseVersion)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

- (void)_initiateRequest:(id)request
{
  v9 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  [(PEResourceLoader *)self setCurrentRequest:requestCopy];
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    asset = [(PEResourceLoader *)self asset];
    v7 = 138412290;
    v8 = asset;
    _os_log_impl(&dword_25E6E9000, v5, OS_LOG_TYPE_DEFAULT, "[PEResourceLoader _initiateRequest:]: initiating request for: %@", &v7, 0xCu);
  }

  [(PEResourceLoader *)self _setResourcesAvailability:1];
  [(PEResourceLoader *)self _requestContentEditingInputForRequest:requestCopy networkAccessAllowed:0];
}

- (void)setCurrentRequest:(id)request
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  currentRequest = self->_currentRequest;
  p_currentRequest = &self->_currentRequest;
  v6 = currentRequest;
  if (currentRequest != requestCopy)
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

    if (requestCopy)
    {
      v13 = PLPhotoEditGetLog();
      v14 = os_signpost_id_make_with_pointer(v13, requestCopy);

      v15 = PLPhotoEditGetLog();
      v16 = v15;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        version = [(PEResourceLoadRequest *)*p_currentRequest version];
        requireLocalResources = [(PEResourceLoadRequest *)*p_currentRequest requireLocalResources];
        requireAdjustments = [(PEResourceLoadRequest *)*p_currentRequest requireAdjustments];
        [(PEResourceLoadRequest *)*p_currentRequest targetSize];
        *&v20 = v20;
        v21 = *&v20;
        [(PEResourceLoadRequest *)*p_currentRequest targetSize];
        *&v22 = v22;
        v23[0] = 67110144;
        v23[1] = version;
        v24 = 1024;
        v25 = requireLocalResources;
        v26 = 1024;
        v27 = requireAdjustments;
        v28 = 2048;
        v29 = v21;
        v30 = 2048;
        v31 = *&v22;
        _os_signpost_emit_with_name_impl(&dword_25E6E9000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "EnterEditResourceRequest", "Version=%d, requireLocalResources=%d, requireAdjustments=%d, targetSize={%.4f,%.4f}", v23, 0x28u);
      }
    }

    objc_storeStrong(p_currentRequest, request);
  }
}

- (void)_setResourcesAvailability:(int64_t)availability
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_resourcesAvailability == availability)
  {
    return;
  }

  currentRequest = [(PEResourceLoader *)self currentRequest];
  delegate = [currentRequest delegate];

  v7 = objc_opt_respondsToSelector();
  v8 = PLPhotoEditGetLog();
  v9 = PLPhotoEditGetLog();
  v10 = os_signpost_id_make_with_pointer(v9, self);

  resourcesAvailability = self->_resourcesAvailability;
  v12 = availability - 1;
  if (availability != 1 || resourcesAvailability == 1)
  {
    if (availability != 1 && resourcesAvailability == 1)
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

    if (availability == 2 && resourcesAvailability != 2)
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

  if (availability == 2 || resourcesAvailability != 2)
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
  self->_resourcesAvailability = availability;
  if (v7)
  {
    currentRequest2 = [(PEResourceLoader *)self currentRequest];
    [delegate photoEditResourceLoadRequestResourcesAvailabilityChanged:currentRequest2 previousAvailability:resourcesAvailability currentAvailability:availability];
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
  _enqueuedRequests = [(PEResourceLoader *)self _enqueuedRequests];
  [_enqueuedRequests removeAllObjects];

  contentEditingRequestID = self->__contentEditingRequestID;
  if (contentEditingRequestID)
  {
    asset = [(PEResourceLoader *)self asset];
    [asset cancelContentEditingInputRequest:self->__contentEditingRequestID];
  }

  self->__contentEditingRequestID = 0;
  [(PEResourceLoader *)self setCurrentRequest:0];
  return contentEditingRequestID != 0;
}

- (void)enqueueRequest:(id)request
{
  v6 = [request copy];
  currentRequest = [(PEResourceLoader *)self currentRequest];

  if (currentRequest)
  {
    _enqueuedRequests = [(PEResourceLoader *)self _enqueuedRequests];
    if (!_enqueuedRequests)
    {
      _enqueuedRequests = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(PEResourceLoader *)self _setEnqueuedRequests:_enqueuedRequests];
    }

    [_enqueuedRequests addObject:v6];
  }

  else
  {
    [(PEResourceLoader *)self _initiateRequest:v6];
  }
}

- (PEResourceLoader)initWithAsset:(id)asset loadingQueue:(id)queue
{
  assetCopy = asset;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = PEResourceLoader;
  v10 = [(PEResourceLoader *)&v16 init];
  if (v10)
  {
    if (!assetCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PEResourceLoader.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
    }

    objc_storeStrong(&v10->_asset, asset);
    objc_storeStrong(&v10->_loadingQueue, queue);
    if (([assetCopy isResourceDownloadPossible] & 1) == 0)
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

+ (void)_processResult:(id)result forRequest:(id)request resultHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  handlerCopy = handler;
  editSource = [resultCopy editSource];
  contentEditingInput = [resultCopy contentEditingInput];
  v35 = 0;
  v10 = [PESerializationUtility compositionControllerForContentEditingInput:contentEditingInput asShot:0 source:editSource error:&v35];
  v11 = v35;
  if (v10)
  {
    v34 = 0;
    v12 = [PESerializationUtility compositionControllerForContentEditingInput:contentEditingInput asShot:1 source:editSource error:&v34];
    v30 = v34;
    composition = [v12 composition];

    [resultCopy _setCompositionController:v10];
    [resultCopy _setOriginalComposition:composition];
    v14 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v14, OS_LOG_TYPE_DEFAULT, "Compositions rehydrated", buf, 2u);
    }

    if ([editSource mediaType] != 3 && objc_msgSend(editSource, "mediaType") != 2)
    {
      v20 = 0;
LABEL_22:
      handlerCopy[2](handlerCopy, 1, v20);

      goto LABEL_23;
    }

    v28 = composition;
    v29 = v11;
    v15 = MEMORY[0x277D3A938];
    compositionController = [resultCopy compositionController];
    composition2 = [compositionController composition];
    v18 = [v15 videoPropertiesRequestWithComposition:composition2];

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
        videoEditSource = [editSource videoEditSource];
        videoURL = [videoEditSource videoURL];
        path = [videoURL path];
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
        [resultCopy setVideoComplementOriginalStillImageTime:buf];

        goto LABEL_21;
      }

      *buf = *MEMORY[0x277CC08F0];
      v37 = *(MEMORY[0x277CC08F0] + 16);
      [resultCopy setVideoComplementOriginalStillImageTime:buf];
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

    composition = v28;
    goto LABEL_22;
  }

  v24 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v11;
    _os_log_impl(&dword_25E6E9000, v24, OS_LOG_TYPE_ERROR, "Unable to load image properties: %@", buf, 0xCu);
  }

  handlerCopy[2](handlerCopy, 0, v11);
  v20 = 0;
LABEL_23:
}

@end