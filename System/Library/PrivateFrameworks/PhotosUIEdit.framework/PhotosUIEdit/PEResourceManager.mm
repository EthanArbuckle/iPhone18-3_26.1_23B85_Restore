@interface PEResourceManager
- (PEResourceManager)init;
- (id)compositionControllerWithoutSource:(id)source originalComposition:(BOOL)composition editorBundleID:(id *)d;
- (id)originalCompositionControllerWithoutSource:(id)source reconstructIfMissing:(BOOL)missing;
- (void)_removeFromSet:(id)set;
- (void)_resourceLoader:(id)loader loadedResult:(id)result error:(id)error;
- (void)cancelAllRequests;
- (void)loadResourceForAsset:(id)asset requireLocalResources:(BOOL)resources forceRunAsUnadjustedAsset:(BOOL)unadjustedAsset progressHandler:(id)handler resultHandler:(id)resultHandler;
- (void)resourceLoader:(id)loader request:(id)request didCompleteWithResult:(id)result;
- (void)resourceLoader:(id)loader request:(id)request downloadProgress:(double)progress;
- (void)resourceLoader:(id)loader request:(id)request mediaLoadDidFailWithError:(id)error;
@end

@implementation PEResourceManager

- (void)_removeFromSet:(id)set
{
  setCopy = set;
  resourceQueue = self->_resourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__PEResourceManager__removeFromSet___block_invoke;
  v7[3] = &unk_279A31000;
  v7[4] = self;
  v8 = setCopy;
  v6 = setCopy;
  dispatch_async(resourceQueue, v7);
}

- (void)_resourceLoader:(id)loader loadedResult:(id)result error:(id)error
{
  loaderCopy = loader;
  resultCopy = result;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = loaderCopy;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  resultHandler = [v11 resultHandler];

  if (resultHandler)
  {
    resultHandler2 = [v11 resultHandler];
    (resultHandler2)[2](resultHandler2, resultCopy, errorCopy);
  }

  [(PEResourceManager *)self _removeFromSet:loaderCopy];
}

- (void)resourceLoader:(id)loader request:(id)request downloadProgress:(double)progress
{
  loaderCopy = loader;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = loaderCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  progressHandler = [v7 progressHandler];

  if (progressHandler)
  {
    progressHandler2 = [v7 progressHandler];
    progressHandler2[2](progress);
  }
}

- (void)resourceLoader:(id)loader request:(id)request mediaLoadDidFailWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  loaderCopy = loader;
  errorCopy = error;
  if (errorCopy)
  {
    v9 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = errorCopy;
      _os_log_impl(&dword_25E6E9000, v9, OS_LOG_TYPE_ERROR, "Error fetching the resource: %@", &v10, 0xCu);
    }
  }

  [(PEResourceManager *)self _resourceLoader:loaderCopy loadedResult:0 error:errorCopy];
}

- (void)resourceLoader:(id)loader request:(id)request didCompleteWithResult:(id)result
{
  resultCopy = result;
  loaderCopy = loader;
  v9 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25E6E9000, v9, OS_LOG_TYPE_DEFAULT, "PEResourceManager completed resource fetch.", v10, 2u);
  }

  [(PEResourceManager *)self _resourceLoader:loaderCopy loadedResult:resultCopy error:0];
}

- (void)cancelAllRequests
{
  resourceQueue = self->_resourceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PEResourceManager_cancelAllRequests__block_invoke;
  block[3] = &unk_279A30D28;
  block[4] = self;
  dispatch_async(resourceQueue, block);
}

void __38__PEResourceManager_cancelAllRequests__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(a1 + 32) + 8);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) cancelAllRequests];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)loadResourceForAsset:(id)asset requireLocalResources:(BOOL)resources forceRunAsUnadjustedAsset:(BOOL)unadjustedAsset progressHandler:(id)handler resultHandler:(id)resultHandler
{
  unadjustedAssetCopy = unadjustedAsset;
  resourcesCopy = resources;
  resultHandlerCopy = resultHandler;
  handlerCopy = handler;
  assetCopy = asset;
  v15 = [_PEResourceHandler alloc];
  loadingQueue = [(PEResourceManager *)self loadingQueue];
  v17 = [(PEResourceLoader *)v15 initWithAsset:assetCopy loadingQueue:loadingQueue];

  [(_PEResourceHandler *)v17 setProgressHandler:handlerCopy];
  [(_PEResourceHandler *)v17 setResultHandler:resultHandlerCopy];

  [(PEResourceLoader *)v17 setForceRunAsUnadjustedAsset:unadjustedAssetCopy];
  [(PEResourceLoader *)v17 setSkipDisplaySizeImage:1];
  v18 = objc_alloc_init(PEResourceLoadRequest);
  [(PEResourceLoadRequest *)v18 setDelegate:self];
  [(PEResourceLoadRequest *)v18 setRequireAdjustments:1];
  [(PEResourceLoadRequest *)v18 setRequireLocalResources:resourcesCopy];
  [(PEResourceLoader *)v17 enqueueRequest:v18];
  resourceQueue = self->_resourceQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __120__PEResourceManager_loadResourceForAsset_requireLocalResources_forceRunAsUnadjustedAsset_progressHandler_resultHandler___block_invoke;
  v21[3] = &unk_279A31000;
  v21[4] = self;
  v22 = v17;
  v20 = v17;
  dispatch_async(resourceQueue, v21);
}

- (id)originalCompositionControllerWithoutSource:(id)source reconstructIfMissing:(BOOL)missing
{
  missingCopy = missing;
  sourceCopy = source;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(PEResourceManager *)self compositionControllerWithoutSource:sourceCopy originalComposition:1 editorBundleID:0];
    if (!v7 && missingCopy)
    {
      v8 = objc_alloc(MEMORY[0x277D3A870]);
      newComposition = [MEMORY[0x277D3A938] newComposition];
      v10 = [v8 initWithComposition:newComposition];

      v11 = [(PEResourceManager *)self compositionControllerWithoutSource:sourceCopy originalComposition:0 editorBundleID:0];
      v7 = +[PESupport repairedAsShotCompositionController:forCurrentCompositionController:isLivePhoto:metadata:](PESupport, "repairedAsShotCompositionController:forCurrentCompositionController:isLivePhoto:metadata:", v10, v11, [sourceCopy isLivePhoto], 0);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)compositionControllerWithoutSource:(id)source originalComposition:(BOOL)composition editorBundleID:(id *)d
{
  compositionCopy = composition;
  sourceCopy = source;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = sourceCopy;
    v12 = 0;
    v9 = [PEAdjustmentDataCache synchronousCompositionControllerForAsset:v8 networkAccessAllowed:0 disposition:&v12 originalComposition:compositionCopy];
    if (d)
    {
      v10 = [PEAdjustmentDataCache synchronousEditorBundleIDForAsset:v8];
      if (v10)
      {
        v10 = v10;
        *d = v10;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PEResourceManager)init
{
  v12.receiver = self;
  v12.super_class = PEResourceManager;
  v2 = [(PEResourceManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    resourceSet = v2->_resourceSet;
    v2->_resourceSet = v3;

    v5 = dispatch_queue_create("PEResourceManager", 0);
    resourceQueue = v2->_resourceQueue;
    v2->_resourceQueue = v5;

    v7 = dispatch_queue_create("PEResourceLoader", 0);
    loadingQueue = v2->_loadingQueue;
    v2->_loadingQueue = v7;

    v9 = dispatch_queue_create("PEResourceLoader_CallbackQueue", 0);
    loaderCallbackQueue = v2->_loaderCallbackQueue;
    v2->_loaderCallbackQueue = v9;
  }

  return v2;
}

@end