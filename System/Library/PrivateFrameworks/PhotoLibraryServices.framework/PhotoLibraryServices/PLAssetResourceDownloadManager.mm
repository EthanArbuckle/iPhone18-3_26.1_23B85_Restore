@interface PLAssetResourceDownloadManager
+ (id)defaultManager;
- (PLAssetResourceDownloadManager)init;
- (id)_requestWithID:(int)d;
- (int)requestCloudResourceType:(unint64_t)type assetObjectID:(id)d library:(id)library progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_setRequest:(id)request forRequestID:(int)d;
- (void)cancelRequest:(int)request;
@end

@implementation PLAssetResourceDownloadManager

- (void)cancelRequest:(int)request
{
  v3 = [(PLAssetResourceDownloadManager *)self _requestWithID:*&request];
  [v3 cancel];
}

- (int)requestCloudResourceType:(unint64_t)type assetObjectID:(id)d library:(id)library progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  libraryCopy = library;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetResourceDownloadManager.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  add = atomic_fetch_add(&self->_currentRequestId, 1u);
  v18 = PLBackendGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [MEMORY[0x1E6994B90] descriptionForResourceType:type];
    *buf = 138412546;
    v29 = dCopy;
    v30 = 2112;
    v31 = v19;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Creating asset resource request for object id: %@ cloudResourceType: %@", buf, 0x16u);
  }

  v20 = [[PLAssetResourceDownloadRequest alloc] initWithRequestID:add + 1 library:libraryCopy queue:self->_requestIsolationQueue cloudResourceType:type managedObjectID:dCopy progressHandler:handlerCopy];
  [(PLAssetResourceDownloadManager *)self _setRequest:v20 forRequestID:add + 1];
  objc_initWeak(buf, v20);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __115__PLAssetResourceDownloadManager_requestCloudResourceType_assetObjectID_library_progressHandler_completionHandler___block_invoke;
  v24[3] = &unk_1E7568258;
  v24[4] = self;
  v27 = add + 1;
  v21 = completionHandlerCopy;
  v25 = v21;
  objc_copyWeak(&v26, buf);
  [(PLAssetResourceDownloadRequest *)v20 setCompletionBlock:v24];
  [(NSOperationQueue *)self->_operationQueue addOperation:v20];
  objc_destroyWeak(&v26);

  objc_destroyWeak(buf);
  return add + 1;
}

void __115__PLAssetResourceDownloadManager_requestCloudResourceType_assetObjectID_library_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setRequest:0 forRequestID:*(a1 + 56)];
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v2 = [WeakRetained error];
    v3 = *(a1 + 40);
    v4 = objc_loadWeakRetained((a1 + 48));
    (*(v3 + 16))(v3, [v4 requestID], v2);
  }
}

- (void)_setRequest:(id)request forRequestID:(int)d
{
  v4 = *&d;
  requestCopy = request;
  os_unfair_lock_lock(&self->_lock);
  requestById = self->_requestById;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  [(NSMutableDictionary *)requestById setObject:requestCopy forKeyedSubscript:v8];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_requestWithID:(int)d
{
  v3 = *&d;
  os_unfair_lock_lock(&self->_lock);
  requestById = self->_requestById;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v7 = [(NSMutableDictionary *)requestById objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (PLAssetResourceDownloadManager)init
{
  v11.receiver = self;
  v11.super_class = PLAssetResourceDownloadManager;
  v2 = [(PLAssetResourceDownloadManager *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setQualityOfService:9];
    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_operationQueue setName:@"com.apple.mobileslideshow.plassetresourcedownloadmanager"];
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("PLAssetResourceDownloadRequest isolation queue", v5);
    requestIsolationQueue = v2->_requestIsolationQueue;
    v2->_requestIsolationQueue = v6;

    v2->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestById = v2->_requestById;
    v2->_requestById = v8;
  }

  return v2;
}

+ (id)defaultManager
{
  if (defaultManager_onceToken_16899 != -1)
  {
    dispatch_once(&defaultManager_onceToken_16899, &__block_literal_global_16900);
  }

  v3 = defaultManager_manager_16901;

  return v3;
}

void __48__PLAssetResourceDownloadManager_defaultManager__block_invoke()
{
  v0 = objc_alloc_init(PLAssetResourceDownloadManager);
  v1 = defaultManager_manager_16901;
  defaultManager_manager_16901 = v0;
}

@end