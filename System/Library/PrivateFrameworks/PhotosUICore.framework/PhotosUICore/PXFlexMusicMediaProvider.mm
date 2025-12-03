@interface PXFlexMusicMediaProvider
+ (PXAudioAssetMediaProvider)sharedInstance;
- (PXFlexMusicMediaProvider)initWithQOSClass:(unsigned int)class;
- (int64_t)requestMediaForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (void)_deliverResultForAsset:(id)asset preferredDuration:(id *)duration error:(id)error toHandler:(id)handler;
- (void)_handleDownloaderFinishedForAsset:(id)asset success:(BOOL)success error:(id)error;
- (void)_queue_cancelRequest:(int64_t)request;
- (void)_queue_handleDownloaderFinishedForAsset:(id)asset success:(BOOL)success error:(id)error;
- (void)_queue_startDownloadIfNeededForRequest:(id)request;
- (void)cancelRequest:(int64_t)request;
@end

@implementation PXFlexMusicMediaProvider

- (void)_deliverResultForAsset:(id)asset preferredDuration:(id *)duration error:(id)error toHandler:(id)handler
{
  v29[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  errorCopy = error;
  v22 = 0.0;
  v23 = 0.0;
  handlerCopy = handler;
  v12 = +[PXFlexMusicLibrary sharedLibrary];
  v21 = 0;
  buf = *duration;
  v13 = [v12 playableAssetForAsset:assetCopy preferredDuration:&buf audioMix:&v21 peakValue:&v23 loudness:&v22];
  v14 = v21;

  v28[0] = @"PeakdBFS";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
  v29[0] = v15;
  v28[1] = @"ProgramLoudnessLKFS";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
  v29[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

  if (errorCopy)
  {
    v18 = [v17 mutableCopy];
    [v18 setObject:errorCopy forKeyedSubscript:@"Error"];
    v19 = [v18 copy];

    v17 = v19;
  }

  v20 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.var0) = 138413058;
    *(&buf.var0 + 4) = assetCopy;
    LOWORD(buf.var2) = 2112;
    *(&buf.var2 + 2) = v13;
    HIWORD(buf.var3) = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEBUG, "Delivering download result for asset %@; Result: (%@; %@; %@)", &buf, 0x2Au);
  }

  handlerCopy[2](handlerCopy, v13, v14, v17);
}

- (void)_queue_handleDownloaderFinishedForAsset:(id)asset success:(BOOL)success error:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  errorCopy = error;
  v9 = [(NSMutableDictionary *)self->_queue_requestIDsByAsset objectForKeyedSubscript:assetCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_queue_requestByID objectForKeyedSubscript:v14];
        [(NSMutableDictionary *)self->_queue_requestByID setObject:0 forKeyedSubscript:v14];
        options = [v15 options];
        v17 = options;
        if (options)
        {
          [options preferredDuration];
        }

        else
        {
          memset(v19, 0, sizeof(v19));
        }

        resultHandler = [v15 resultHandler];
        [(PXFlexMusicMediaProvider *)self _deliverResultForAsset:assetCopy preferredDuration:v19 error:errorCopy toHandler:resultHandler];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  [v9 removeAllObjects];
  [(NSMutableDictionary *)self->_queue_downloaderByAsset setObject:0 forKeyedSubscript:assetCopy];
}

- (void)_handleDownloaderFinishedForAsset:(id)asset success:(BOOL)success error:(id)error
{
  assetCopy = asset;
  errorCopy = error;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PXFlexMusicMediaProvider__handleDownloaderFinishedForAsset_success_error___block_invoke;
  block[3] = &unk_1E773FB40;
  objc_copyWeak(&v16, &location);
  successCopy = success;
  v14 = assetCopy;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = assetCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __76__PXFlexMusicMediaProvider__handleDownloaderFinishedForAsset_success_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _queue_handleDownloaderFinishedForAsset:*(a1 + 32) success:*(a1 + 56) error:*(a1 + 40)];
}

- (void)_queue_startDownloadIfNeededForRequest:(id)request
{
  requestCopy = request;
  asset = [requestCopy asset];
  requestID = [requestCopy requestID];
  v7 = [(NSMutableDictionary *)self->_queue_downloaderByAsset objectForKeyedSubscript:asset];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [[PXFlexMusicDownloader alloc] initWithAsset:asset resource:2];
    [(NSMutableDictionary *)self->_queue_downloaderByAsset setObject:v8 forKeyedSubscript:asset];
  }

  queue_requestByID = self->_queue_requestByID;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:requestID];
  [(NSMutableDictionary *)queue_requestByID setObject:requestCopy forKeyedSubscript:v10];

  v11 = [(NSMutableDictionary *)self->_queue_requestIDsByAsset objectForKeyedSubscript:asset];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(NSMutableDictionary *)self->_queue_requestIDsByAsset setObject:v11 forKeyedSubscript:asset];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:requestID];
  [v11 addObject:v12];

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__PXFlexMusicMediaProvider__queue_startDownloadIfNeededForRequest___block_invoke;
  v14[3] = &unk_1E774B2A0;
  objc_copyWeak(&v16, &location);
  v13 = asset;
  v15 = v13;
  [(PXFlexMusicDownloader *)v8 startWithCompletion:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __67__PXFlexMusicMediaProvider__queue_startDownloadIfNeededForRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleDownloaderFinishedForAsset:*(a1 + 32) success:a2 error:v5];
}

- (void)_queue_cancelRequest:(int64_t)request
{
  v20[1] = *MEMORY[0x1E69E9840];
  queue_requestByID = self->_queue_requestByID;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)queue_requestByID objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_queue_requestByID;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:request];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:v9];

    asset = [v7 asset];
    v11 = [(NSMutableDictionary *)self->_queue_requestIDsByAsset objectForKeyedSubscript:asset];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:request];
    [v11 removeObject:v12];

    if (![v11 count])
    {
      v13 = [(NSMutableDictionary *)self->_queue_downloaderByAsset objectForKeyedSubscript:asset];
      v14 = v13;
      if (v13)
      {
        progress = [v13 progress];
        [progress cancel];
      }

      [(NSMutableDictionary *)self->_queue_downloaderByAsset setObject:0 forKeyedSubscript:asset];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      v19 = @"Error";
      v20[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      resultHandler = [v7 resultHandler];
      (resultHandler)[2](resultHandler, 0, 0, v17);
    }
  }
}

- (void)cancelRequest:(int64_t)request
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PXFlexMusicMediaProvider_cancelRequest___block_invoke;
  block[3] = &unk_1E7749808;
  objc_copyWeak(v7, &location);
  v7[1] = request;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __42__PXFlexMusicMediaProvider_cancelRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_cancelRequest:*(a1 + 40)];
}

- (int64_t)requestMediaForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  if (!optionsCopy)
  {
    optionsCopy = objc_alloc_init(PXAudioRequestOptions);
  }

  _nextRequestID = [(PXFlexMusicMediaProvider *)self _nextRequestID];
  v13 = assetCopy;
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      px_descriptionForAssertionMessage = [v13 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicMediaProvider.m" lineNumber:71 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"asset", v22, px_descriptionForAssertionMessage}];
    }
  }

  v14 = [[_PXFlexMusicMediaProviderRequest alloc] initWithAsset:v13 options:optionsCopy requestID:_nextRequestID resultHandler:handlerCopy];
  if (optionsCopy)
  {
    [(PXAudioRequestOptions *)optionsCopy maximumDuration];
    if ((BYTE4(v32) & 0x1D) == 1)
    {
      v15 = PLAudioPlaybackGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "PXAudioRequestOptions.maximumDuration is not currently supported by PXFlexMusicMediaProvider", buf, 2u);
      }
    }

    [(PXAudioRequestOptions *)optionsCopy fadeOutDuration];
    if ((BYTE4(v29) & 0x1D) == 1)
    {
      v16 = PLAudioPlaybackGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "PXAudioRequestOptions.fadeOutDuration is not currently supported by PXFlexMusicMediaProvider", buf, 2u);
      }
    }
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PXFlexMusicMediaProvider_requestMediaForAsset_options_resultHandler___block_invoke;
  block[3] = &unk_1E774B248;
  objc_copyWeak(&v26, buf);
  v25 = v14;
  v18 = v14;
  dispatch_async(queue, block);

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);

  return _nextRequestID;
}

void __71__PXFlexMusicMediaProvider_requestMediaForAsset_options_resultHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_startDownloadIfNeededForRequest:*(a1 + 32)];
}

- (PXFlexMusicMediaProvider)initWithQOSClass:(unsigned int)class
{
  v4.receiver = self;
  v4.super_class = PXFlexMusicMediaProvider;
  if ([(PXFlexMusicMediaProvider *)&v4 init])
  {
    px_dispatch_queue_create_serial();
  }

  return 0;
}

+ (PXAudioAssetMediaProvider)sharedInstance
{
  if (sharedInstance_onceToken_171982 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_171982, &__block_literal_global_171983);
  }

  v3 = sharedInstance_sharedProvider_171984;

  return v3;
}

void __42__PXFlexMusicMediaProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PXFlexMusicMediaProvider);
  v1 = sharedInstance_sharedProvider_171984;
  sharedInstance_sharedProvider_171984 = v0;
}

@end