@interface PXFlexMusicMediaProvider
+ (PXAudioAssetMediaProvider)sharedInstance;
- (PXFlexMusicMediaProvider)initWithQOSClass:(unsigned int)a3;
- (int64_t)requestMediaForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (void)_deliverResultForAsset:(id)a3 preferredDuration:(id *)a4 error:(id)a5 toHandler:(id)a6;
- (void)_handleDownloaderFinishedForAsset:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)_queue_cancelRequest:(int64_t)a3;
- (void)_queue_handleDownloaderFinishedForAsset:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)_queue_startDownloadIfNeededForRequest:(id)a3;
- (void)cancelRequest:(int64_t)a3;
@end

@implementation PXFlexMusicMediaProvider

- (void)_deliverResultForAsset:(id)a3 preferredDuration:(id *)a4 error:(id)a5 toHandler:(id)a6
{
  v29[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v22 = 0.0;
  v23 = 0.0;
  v11 = a6;
  v12 = +[PXFlexMusicLibrary sharedLibrary];
  v21 = 0;
  buf = *a4;
  v13 = [v12 playableAssetForAsset:v9 preferredDuration:&buf audioMix:&v21 peakValue:&v23 loudness:&v22];
  v14 = v21;

  v28[0] = @"PeakdBFS";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
  v29[0] = v15;
  v28[1] = @"ProgramLoudnessLKFS";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
  v29[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

  if (v10)
  {
    v18 = [v17 mutableCopy];
    [v18 setObject:v10 forKeyedSubscript:@"Error"];
    v19 = [v18 copy];

    v17 = v19;
  }

  v20 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.var0) = 138413058;
    *(&buf.var0 + 4) = v9;
    LOWORD(buf.var2) = 2112;
    *(&buf.var2 + 2) = v13;
    HIWORD(buf.var3) = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEBUG, "Delivering download result for asset %@; Result: (%@; %@; %@)", &buf, 0x2Au);
  }

  v11[2](v11, v13, v14, v17);
}

- (void)_queue_handleDownloaderFinishedForAsset:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_queue_requestIDsByAsset objectForKeyedSubscript:v7];
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
        v16 = [v15 options];
        v17 = v16;
        if (v16)
        {
          [v16 preferredDuration];
        }

        else
        {
          memset(v19, 0, sizeof(v19));
        }

        v18 = [v15 resultHandler];
        [(PXFlexMusicMediaProvider *)self _deliverResultForAsset:v7 preferredDuration:v19 error:v8 toHandler:v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  [v9 removeAllObjects];
  [(NSMutableDictionary *)self->_queue_downloaderByAsset setObject:0 forKeyedSubscript:v7];
}

- (void)_handleDownloaderFinishedForAsset:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PXFlexMusicMediaProvider__handleDownloaderFinishedForAsset_success_error___block_invoke;
  block[3] = &unk_1E773FB40;
  objc_copyWeak(&v16, &location);
  v17 = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __76__PXFlexMusicMediaProvider__handleDownloaderFinishedForAsset_success_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _queue_handleDownloaderFinishedForAsset:*(a1 + 32) success:*(a1 + 56) error:*(a1 + 40)];
}

- (void)_queue_startDownloadIfNeededForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 asset];
  v6 = [v4 requestID];
  v7 = [(NSMutableDictionary *)self->_queue_downloaderByAsset objectForKeyedSubscript:v5];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [[PXFlexMusicDownloader alloc] initWithAsset:v5 resource:2];
    [(NSMutableDictionary *)self->_queue_downloaderByAsset setObject:v8 forKeyedSubscript:v5];
  }

  queue_requestByID = self->_queue_requestByID;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  [(NSMutableDictionary *)queue_requestByID setObject:v4 forKeyedSubscript:v10];

  v11 = [(NSMutableDictionary *)self->_queue_requestIDsByAsset objectForKeyedSubscript:v5];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(NSMutableDictionary *)self->_queue_requestIDsByAsset setObject:v11 forKeyedSubscript:v5];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  [v11 addObject:v12];

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__PXFlexMusicMediaProvider__queue_startDownloadIfNeededForRequest___block_invoke;
  v14[3] = &unk_1E774B2A0;
  objc_copyWeak(&v16, &location);
  v13 = v5;
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

- (void)_queue_cancelRequest:(int64_t)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  queue_requestByID = self->_queue_requestByID;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)queue_requestByID objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_queue_requestByID;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:v9];

    v10 = [v7 asset];
    v11 = [(NSMutableDictionary *)self->_queue_requestIDsByAsset objectForKeyedSubscript:v10];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v11 removeObject:v12];

    if (![v11 count])
    {
      v13 = [(NSMutableDictionary *)self->_queue_downloaderByAsset objectForKeyedSubscript:v10];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 progress];
        [v15 cancel];
      }

      [(NSMutableDictionary *)self->_queue_downloaderByAsset setObject:0 forKeyedSubscript:v10];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      v19 = @"Error";
      v20[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v18 = [v7 resultHandler];
      (v18)[2](v18, 0, 0, v17);
    }
  }
}

- (void)cancelRequest:(int64_t)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PXFlexMusicMediaProvider_cancelRequest___block_invoke;
  block[3] = &unk_1E7749808;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __42__PXFlexMusicMediaProvider_cancelRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_cancelRequest:*(a1 + 40)];
}

- (int64_t)requestMediaForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v10 = objc_alloc_init(PXAudioRequestOptions);
  }

  v12 = [(PXFlexMusicMediaProvider *)self _nextRequestID];
  v13 = v9;
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [v13 px_descriptionForAssertionMessage];
      [v20 handleFailureInMethod:a2 object:self file:@"PXFlexMusicMediaProvider.m" lineNumber:71 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"asset", v22, v23}];
    }
  }

  v14 = [[_PXFlexMusicMediaProviderRequest alloc] initWithAsset:v13 options:v10 requestID:v12 resultHandler:v11];
  if (v10)
  {
    [(PXAudioRequestOptions *)v10 maximumDuration];
    if ((BYTE4(v32) & 0x1D) == 1)
    {
      v15 = PLAudioPlaybackGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "PXAudioRequestOptions.maximumDuration is not currently supported by PXFlexMusicMediaProvider", buf, 2u);
      }
    }

    [(PXAudioRequestOptions *)v10 fadeOutDuration];
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

  return v12;
}

void __71__PXFlexMusicMediaProvider_requestMediaForAsset_options_resultHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_startDownloadIfNeededForRequest:*(a1 + 32)];
}

- (PXFlexMusicMediaProvider)initWithQOSClass:(unsigned int)a3
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