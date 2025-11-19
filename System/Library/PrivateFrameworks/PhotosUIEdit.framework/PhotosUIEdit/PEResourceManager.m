@interface PEResourceManager
- (PEResourceManager)init;
- (id)compositionControllerWithoutSource:(id)a3 originalComposition:(BOOL)a4 editorBundleID:(id *)a5;
- (id)originalCompositionControllerWithoutSource:(id)a3 reconstructIfMissing:(BOOL)a4;
- (void)_removeFromSet:(id)a3;
- (void)_resourceLoader:(id)a3 loadedResult:(id)a4 error:(id)a5;
- (void)cancelAllRequests;
- (void)loadResourceForAsset:(id)a3 requireLocalResources:(BOOL)a4 forceRunAsUnadjustedAsset:(BOOL)a5 progressHandler:(id)a6 resultHandler:(id)a7;
- (void)resourceLoader:(id)a3 request:(id)a4 didCompleteWithResult:(id)a5;
- (void)resourceLoader:(id)a3 request:(id)a4 downloadProgress:(double)a5;
- (void)resourceLoader:(id)a3 request:(id)a4 mediaLoadDidFailWithError:(id)a5;
@end

@implementation PEResourceManager

- (void)_removeFromSet:(id)a3
{
  v4 = a3;
  resourceQueue = self->_resourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__PEResourceManager__removeFromSet___block_invoke;
  v7[3] = &unk_279A31000;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(resourceQueue, v7);
}

- (void)_resourceLoader:(id)a3 loadedResult:(id)a4 error:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v14;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 resultHandler];

  if (v12)
  {
    v13 = [v11 resultHandler];
    (v13)[2](v13, v8, v9);
  }

  [(PEResourceManager *)self _removeFromSet:v14];
}

- (void)resourceLoader:(id)a3 request:(id)a4 downloadProgress:(double)a5
{
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 progressHandler];

  if (v8)
  {
    v9 = [v7 progressHandler];
    v9[2](a5);
  }
}

- (void)resourceLoader:(id)a3 request:(id)a4 mediaLoadDidFailWithError:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (v8)
  {
    v9 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_25E6E9000, v9, OS_LOG_TYPE_ERROR, "Error fetching the resource: %@", &v10, 0xCu);
    }
  }

  [(PEResourceManager *)self _resourceLoader:v7 loadedResult:0 error:v8];
}

- (void)resourceLoader:(id)a3 request:(id)a4 didCompleteWithResult:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25E6E9000, v9, OS_LOG_TYPE_DEFAULT, "PEResourceManager completed resource fetch.", v10, 2u);
  }

  [(PEResourceManager *)self _resourceLoader:v8 loadedResult:v7 error:0];
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

- (void)loadResourceForAsset:(id)a3 requireLocalResources:(BOOL)a4 forceRunAsUnadjustedAsset:(BOOL)a5 progressHandler:(id)a6 resultHandler:(id)a7
{
  v8 = a5;
  v9 = a4;
  v12 = a7;
  v13 = a6;
  v14 = a3;
  v15 = [_PEResourceHandler alloc];
  v16 = [(PEResourceManager *)self loadingQueue];
  v17 = [(PEResourceLoader *)v15 initWithAsset:v14 loadingQueue:v16];

  [(_PEResourceHandler *)v17 setProgressHandler:v13];
  [(_PEResourceHandler *)v17 setResultHandler:v12];

  [(PEResourceLoader *)v17 setForceRunAsUnadjustedAsset:v8];
  [(PEResourceLoader *)v17 setSkipDisplaySizeImage:1];
  v18 = objc_alloc_init(PEResourceLoadRequest);
  [(PEResourceLoadRequest *)v18 setDelegate:self];
  [(PEResourceLoadRequest *)v18 setRequireAdjustments:1];
  [(PEResourceLoadRequest *)v18 setRequireLocalResources:v9];
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

- (id)originalCompositionControllerWithoutSource:(id)a3 reconstructIfMissing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(PEResourceManager *)self compositionControllerWithoutSource:v6 originalComposition:1 editorBundleID:0];
    if (!v7 && v4)
    {
      v8 = objc_alloc(MEMORY[0x277D3A870]);
      v9 = [MEMORY[0x277D3A938] newComposition];
      v10 = [v8 initWithComposition:v9];

      v11 = [(PEResourceManager *)self compositionControllerWithoutSource:v6 originalComposition:0 editorBundleID:0];
      v7 = +[PESupport repairedAsShotCompositionController:forCurrentCompositionController:isLivePhoto:metadata:](PESupport, "repairedAsShotCompositionController:forCurrentCompositionController:isLivePhoto:metadata:", v10, v11, [v6 isLivePhoto], 0);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)compositionControllerWithoutSource:(id)a3 originalComposition:(BOOL)a4 editorBundleID:(id *)a5
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v12 = 0;
    v9 = [PEAdjustmentDataCache synchronousCompositionControllerForAsset:v8 networkAccessAllowed:0 disposition:&v12 originalComposition:v6];
    if (a5)
    {
      v10 = [PEAdjustmentDataCache synchronousEditorBundleIDForAsset:v8];
      if (v10)
      {
        v10 = v10;
        *a5 = v10;
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